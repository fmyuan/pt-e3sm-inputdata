"""
Example of using meshing_ats.py to generate a column mesh with layers and variable resolution.

"""

import sys,os
import numpy as np
from copy import deepcopy

# This is the standard path for ATS's source directory    
try:
    import meshing_ats
except ImportError:
    #sys.path.append(os.path.join(os.environ['ATS_SRC_DIR'],'tools','meshing', 'meshing_ats'))
    sys.path.append(os.path.join('/Users/f9y/mygithub/ATS_REPOS/amanzi/src/physics/ats', \
                                 'tools','meshing', 'meshing_ats'))
    import meshing_ats

# set up the surface mesh, which is a single unit cell
# TODO - read-in latixy/longxy/topo from 'surfdata.nc' and do some lat/lon<->x/y conversion
x = np.array([0.0, 1.0],'d')
elv = np.array([0.0, 0.0], 'd')

# using from_Transect extrudes the x,elv line in the y-direction to
# create 1 cell in y.  This results in a single cell.
m2 = meshing_ats.Mesh2D.from_Transect(x,elv)

# layer extrusion
# -- data structures needed for extrusion
layer_types = []
layer_data = []
layer_ncells = []
layer_mat_ids = []
z = 0.0

# -- standard soil layers from ELM's 15-layer column--
#  variable layer thickness
#  15 layers
#  mat-id for each top 10 layer and 1 for rest 5 layers (called bedrock in ELM)

ncells = 15
jidx = np.array(range(ncells))+1 
zsoi = 0.025*(np.exp(0.5*(jidx-0.5))-1.0)       #ELM soil layer node depths - somewhere inside a layer but not centroid
dzsoi= np.zeros_like(zsoi)
dzsoi[0] = 0.5*(zsoi[0]+zsoi[1])                #thickness b/n two vertical interfaces (vertices)
for j in range(1,ncells-1):
    dzsoi[j]= 0.5*(zsoi[j+1]-zsoi[j-1])
dzsoi[ncells-1] = zsoi[ncells-1]-zsoi[ncells-2]

nlevsoi = 10
for j in range(ncells):
    i=ncells-j-1
    z = z+dzsoi[i]
    print('z, dz, z_centroid, z_node_elm: ', i, z, dzsoi[i], z-dzsoi[i]/2.0, zsoi[i])
    layer_types.append("snapped")
    layer_data.append(z)
    layer_ncells.append(1)
    if i<nlevsoi:
        layer_mat_ids.append(1001+i)
    else:
        layer_mat_ids.append(1001+nlevsoi)


# -- print out a summary --
#meshing_ats.summarize_extrusion(layer_types, layer_data, layer_ncells, layer_mat_ids)
dz = deepcopy(layer_data)
dz.insert(0,0.0)
dz = np.diff(dz)
meshing_ats.summarize_extrusion(layer_types, dz, layer_ncells, layer_mat_ids)   # here 'layer_data' shall be 'dz'

# Extrude the 3D model with this structure and write to file
m3 = meshing_ats.Mesh3D.extruded_Mesh2D(m2, layer_types, 
                                        layer_data,                               # here 'layer_data' shall be 'z', depth of vertical vertices 
                                        layer_ncells, 
                                        layer_mat_ids)
if os.path.exists('soilcolumn_elm4ats.exo'):
    os.remove('soilcolumn_elm4ats.exo')
m3.write_exodus("soilcolumn_elm4ats.exo")
