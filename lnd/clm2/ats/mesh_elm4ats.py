"""Generate ATS ExodusII mesh that is identical to an ELM column"""

import sys,os
import numpy as np
from copy import deepcopy

# This is the standard path for ATS's source directory    
try:
    import meshing_ats
except ImportError:
    try:
        sys.path.append(os.path.join(os.environ['ATS_SRC_DIR'],'tools','meshing', 'meshing_ats'))
        import meshing_ats
    except ImportError:
        sys.path.append(os.path.join('/Users/f9y/mygithub/ATS_REPOS/amanzi/src/physics/ats', \
                                     'tools','meshing', 'meshing_ats'))
        import meshing_ats

#single column of 1km
x = np.array([0.0, 1000.0],'d')
elv = np.array([5.5, 4.0], 'd')

# set up the surface mesh, which is 5 single column of surface area of 10 m x10 m
# TODO - read-in latixy/longxy/topo from 'surfdata.nc' and do some lat/lon<->x/y conversion
#    - ETC: this can be done with WW straightforwardly
"""
x = np.array([0.0, 10.0, 20.0, 30.0, 40.0, 50.0],'d')
elv = np.array([5.5, 4.0, 3.25, 3.0, 2.0, 1.0], 'd')
"""

# FME TEMPEST 2d transect mesh, which is 110 single column of surface area of 5mx5m
# it could be done by read-in a .csv file.
"""
x = np.array([0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100, \
              105,110,115,120,125,130,135,140,145,150,155,160,165,170,175,180,185,190,195,200, \
              205,210,215,220,225,230,235,240,245,250,255,260,265,270,275,280,285,290,295,300, \
              305,310,315,320,325,330,335,340,345,350,355,360,365,370,375,380,385,390,395,400, \
              405,410,415,420,425,430,435,440,445,450,455,460,465,470,475,480,485,490,495,500, \
              505,510,515,520,525,530,535,540,545,550], 'd')
elv = np.array([5.928725719,7.684549809,7.684549809,10.44994926,10.44994926, \
                10.44994926,10.28713322,10.28713322,9.041090965,9.041090965, \
                9.041090965,7.968013287,7.968013287,7.968013287,7.949603558, \
                7.949603558,7.369748116,7.369748116,7.369748116,6.619918346, \
                6.619918346,6.40005064,6.140310287,6.140310287,5.439850807, \
                5.439850807,5.439850807,4.42961216,4.42961216,3.979708195, \
                4.158915997,4.158915997,3.319620132,3.319620132,2.504986286, \
                2.349324703,2.349324703,1.934007287,1.260437131,0.899600208, \
                0.500280082,0.500280082,0.518239498,0.444148928,0.444148928, \
                0.310068965,0.120093837,0.03994659,0.149989188,0.149989188, \
                0.130099535,0.266325474,0.17209363,0.17209363,0.430608124, \
                0.450624019,0.280581057,0.561076939,0.561076939,0.227149785, \
                0.37964052,0.37964052,0.344920576,0.349661797,0.409951836, \
                0.440762758,0.440762758,0.547970831,0.140034392,0.140034392, \
                0.067026392,0.067026392,0.066911057,0.255801648,0.255801648, \
                0.036286131,0.14028585,0.14028585,0.240036875,0.240036875, \
                0.317082435,0.850632846,0.850632846,0.386627734,0.386627734, \
                0.386627734,0.429962695,0.429962695,0.449939907,0.449939907, \
                0.449939907,0.480018884,0.480018884,0.480018884,0.537275672, \
                0.537275672,0.409960508,0.409960508,0.409960508,0.390062124, \
                0.390062124,0.51285255,0.477470964,0.477470964,0.010256663, \
                0.010256663,0.01,0.01,0.01,0.01,0.01], 'd')
# submerged (ocean): 0, low-marsh: 1, high-marsh: 2, upland: 3
topo_class = np.array([3,3,3,3,3,3,3,3,3,3, \
                 3,3,3,3,3,3,3,3,3,3, \
                 3,3,3,3,3,3,3,3,3,3, \
                 3,3,3,3,3,3,3,3,3,3, \
                 2,2,1,1,1,1,1,2,2,1, \
                 2,2,2,2,2,1,1,2,2,2, \
                 2,2,2,2,1,1,2,1,1,1, \
                 1,1,1,1,1,1,1,2,2,2, \
                 2,2,2,2,2,2,2,2,2,2, \
                 2,2,2,2,2,2,2,2,2,2, \
                 2,1,1,0,0,0,0,0,0,0], 'i')
"""

ng = x.size-1

# using from_Transect extrudes the x,elv line in the y-direction to
# create 1 cell in y.  This results in a single cell.
m2 = meshing_ats.Mesh2D.from_Transect(x,elv, width=5.0)

# layer extrusion
# -- data structures needed for extrusion
layer_types = []
layer_data = []
layer_ncells = []
layer_mat_ids = []

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
z = 0.0
for j in range(ncells):
    z = z - dzsoi[j]
    print('j, z, z_centroid: ', j, z, z+dzsoi[j]/2.0)
    layer_types.append("constant")
    layer_data.append(dzsoi[j])
    layer_ncells.append(1)
    if j<nlevsoi:
        layer_mat_ids.append(1001+j)
    else:
        layer_mat_ids.append(1001+nlevsoi)


# -- print out a summary --
meshing_ats.summarize_extrusion(layer_types, layer_data, layer_ncells, layer_mat_ids)

# Extrude the 3D model with this structure and write to file
m3 = meshing_ats.Mesh3D.extruded_Mesh2D(m2, layer_types, 
                                        layer_data,                               # here 'layer_data' shall be 'z', depth of vertical vertices 
                                        layer_ncells, 
                                        layer_mat_ids)

if ng==1:
    if os.path.exists('soilcolumn_elm4ats.exo'):
        os.remove('soilcolumn_elm4ats.exo')
    m3.write_exodus("soilcolumn_elm4ats.exo")
elif ng>1:
    if os.path.exists('hillslope_elm4ats_tempest2d.exo'):
        os.remove('hillslope_elm4ats_tempest2d.exo')
    m3.write_exodus("hillslope_elm4ats_tempest2d.exo")
    
