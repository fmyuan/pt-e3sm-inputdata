"""Generate ATS ExodusII mesh that is identical to an ELM column"""

import sys,os
import numpy as np
import netCDF4 as nc4
from copy import deepcopy

# This is the standard path for ATS's source directory    
try:
    from rosetta import rosetta, SoilData
except ImportError:
    os.system('pip install rosetta-soil')
    from rosetta import rosetta, SoilData

def wrm_vG_parameters_rosetta(data):
    #
    #data = [
    #    [30,30,40,1.5,0.3,0.1],
    #    [20,60,20],
    #    [55,25,20,1.1]
    #]

    mean, stdev, codes = rosetta(3, SoilData.from_array(data))



# surface data of ELM
surf_ncfile = '../surfdata_map/surfdata_1x1pt_Oakharbor-GRID_simyr1850_c360x720_c20220201.nc'
surfdata = nc4.Dataset(surf_ncfile)


# set up the surface mesh, which is a single unit cell
# TODO - read-in latixy/longxy/topo from 'surfdata.nc' and do some lat/lon<->x/y conversion
#    - ETC: this can be done with WW straightforwardly
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
    z = z - dzsoi[j]
    print('j, z, dz, z_centroid, z_node_elm: ', j, z, dzsoi[j], z+dzsoi[j]/2.0, -zsoi[j])
    layer_types.append("constant")
    layer_data.append(dzsoi[j])
    layer_ncells.append(1)
    if j<nlevsoi:
        layer_mat_ids.append(1001+j)
    else:
        layer_mat_ids.append(1001+nlevsoi)


