CDF       
      pft       string_length      (   levgrnd       	soilorder         allpfts             nco_openmp_thread_number            title         1Vegetation (Plant Function Type or PFT) constants      
Created_by        gbisht     Conventions       CF-1.0     
Created_on        Mon Jul 11 13:12:46 PDT 2016   NCO       _netCDF Operators version 4.7.7 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    Commit_used       (1f479fff2726e7788e5dc21a348523daef355f7e   history      @Mon Nov 19 10:10:00 2018: re-do arctic shrub PFTs
Tue Nov 13 10:31:56 2018: ncks --no_abc -O --mk_rec_dmn pft arctic_0.nc arctic_0.nc
Tue Nov 13 10:31:22 2018: ncap2 -s pft[pft]=0 arctic_0.nc -O arctic_0.nc
Tue Nov 13 10:31:02 2018: ncks --no_abc -O -d pft,0 clm_params_c180524.nc arctic_0.nc
Mon Dec 11 22:07:37 2017: ncap2 clm_params_c170808.nc -s crit_onset_gdd=crit_dayl*0+500 clm_params_c170808_test.nc
Fri Sep 15 11:19:52 2017: ncap2 -s rsub_top_globalmax = br_mr*0+10.0 clm_params_c170808.nc clm_params_c170808.nc
Fri Sep  1 16:06:16 2017: ncap2 -s br_xr=br_xr*0+1.5e-8 -s tc_stress=tc_stress*0 -s crit_dayl_stress=crit_dayl_stress*0+36000 -s nstor=nstor*0+3 -O clm_params_c170808.nc clm_params_c170808.nc
Fri Sep  1 16:05:32 2017: ncap2 -s br_xr=br_xr+1.5e-8 -s tc_stress=tc_stress*0 -s crit_dayl_stress=crit_dayl_stress*0+36000 -s nstor=nstor+3 -O clm_params_c170808.nc clm_params_c170808.nc
Fri Sep  1 16:04:45 2017: ncap2 -s br_xr=br_xr+1.5e-8 -s tc_stress=tc_stress*0 -O clm_params_c170808.nc clm_params_c170808.nc
Fri Sep  1 00:58:29 2017: ncap2 -O -s cumprec_onset=crit_dayl*0.0+20.0 clm_params.nc clm_params.nc
Fri Sep  1 00:56:19 2017: ncap2 -O -s crit_dayl_stress=crit_dayl*1.0 clm_params.nc clm_params.nc
Fri Sep  1 00:56:14 2017: ncap2 -O -s crit_dayl_stress=crit_dayl*1.0 clm_params.nc
Fri Sep  1 00:55:48 2017: ncap2 -O -s crit_dayl_stress=crit_dayl clm_params.nc
Tue Aug  8 12:23:18 2017: ncap2 -s froot_long=leaf_long clm_params_c160711_test170303.nc.bk clm_params_c160711_test170303.nc.bk
Tue Aug  8 12:22:46 2017: ncap2 -s br_xr=nstor clm_params_c160711_test170303.nc.bk clm_params_c160711_test170303.nc.bk
Tue Aug  8 12:21:52 2017: ncap2 -s br_xr=br_mr*0.0 clm_params_c160711_test170303.nc.bk clm_params_c160711_test170303.nc.bk
Fri Mar  3 23:35:51 2017: ncks -3 clm_params_c160711_test170303.nc clm_params_c160711_test170303_2.nc     1   pft                      0  �   pftname                    units         unitless   	long_name         Description of plant type        �  �   mergetoelmpft                   flag_meanings         2PFT index to be merged into by user-defined PFT(s)     	long_name         PFT index to be merged into    units         integer index starting from 0      coordinates       pftname       0  �   decompmicc_patch_vr                    
_FillValue        �         	long_name         .pft specific soil microbial decomposer density     unit      gC/m3      coordinates       pftname      �  ��   	roota_par                   
_FillValue        �         units         1/m    	long_name         "CLM rooting distribution parameter     coordinates       pftname       `  �`   cpha                
_FillValue        �         units                	long_name                coordinates       pftname       `  ��   pftpar28                
_FillValue        @Ç�3333   units         degrees_Celsius    	long_name         (Minimum coldest monthly mean temperature   coordinates       pftname       `  �    kcha                
_FillValue        �         units                	long_name                coordinates       pftname       `  �   woody                   
_FillValue        �         flag_meanings         NON_woody woody shrubby    valid_range               ?�      @          	long_name         integer woody lifeform flag    flag_values               ?�      @          units         logical flag   coordinates       pftname       `  ��   nonvascular                 
_FillValue        �         flag_meanings         nonvascular moss lichen    valid_range               ?�      @          	long_name         !integer nonvascular lifeform flag      flag_values               ?�      @          units         logical flag   coordinates       pftname       `  �@   
needleleaf                  
_FillValue        �         flag_meanings         broadleaf needleleaf   valid_range               ?�         	long_name         leaf-form flag     flag_values               ?�         units         logical flag   coordinates       pftname       `  �   nfixer                  
_FillValue        �         flag_meanings         non-nfixationer Nfixation-er   valid_range               ?�         	long_name         N fixation flag    flag_values               ?�         units         logical flag   coordinates       pftname       `  �    pftpar30                
_FillValue        �         units         degree_C_days      	long_name         1Minimum growing degree days (>= 5 degree Celsius)      coordinates       pftname       `  �`   pftpar31                
_FillValue        @�@        units         degrees_Celsius    	long_name         7Upper limit of temperature of the warmest month (twmax)    coordinates       pftname       `  ��   cc_other                
_FillValue        ��?��R   units         0 to 1     	long_name         .Combustion completeness factor for other plant     coordinates       pftname       `  �    graincp                 
_FillValue        �         units         gC/gP      	long_name         
grain C:P      coordinates       pftname       `  ��   fm_dstem                
_FillValue        ��?��R   units         0 to 1     	long_name         +Fire-related mortality factor for dead stem    coordinates       pftname       `  ��   c3psn                   
_FillValue        �         flag_meanings         C4 C3      valid_range               ?�         	long_name         Photosynthetic pathway     flag_values               ?�         units         flag   coordinates       pftname       `  �@   bfact                   
_FillValue                   units         unitless   	long_name         FExponential factor used in CNAllocation for fraction allocated to leaf     coordinates       pftname       `  ��   baset                   
_FillValue        �         units         C      	long_name         +Base Temperature, parameter used in accFlds    coordinates       pftname       `  �    fleafcn                 
_FillValue        �         units         gC/gN      	long_name         Leaf C:N during organ fill     coordinates       pftname       `  �`   pftnum                  units         unitless   	long_name         Plant Functional Type number   coordinates       pftname         ��   graincn                 
_FillValue                   units         gC/gN      	long_name         	Grain C:N      coordinates       pftname       `  ��   
croot_stem                  
_FillValue        �         units         gC/gC      	long_name         6Allocation parameter: new coarse root C per new stem C     coordinates       pftname       `  �8   presharv                
_FillValue        �         units         unitless   	long_name         *porportion of residue harvested with grain     coordinates       pftname       `  ��   smpsc                   
_FillValue        �         units         mm     	long_name         -Soil water potential at full stomatal closure      coordinates       pftname       `  ��   declfact                
_FillValue                   units         unitless   	long_name         3Decline factor for gddmaturity used in CNAllocation    coordinates       pftname       `  �X   KM_PLANT_NO3                
_FillValue        �         	long_name         !plant NO3 maximum uptake affinity      unit      gN/m3      coordinates       pftname       `  ��   cc_lstem                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Combustion completeness factor for live stem   coordinates       pftname       `  �   allconsl                
_FillValue                   units         unitless   	long_name         @Leaf Allocation coefficient parameter power used in CNAllocation   coordinates       pftname       `  �x   dsladlai                
_FillValue        �         units         m^2/gC     	long_name         /Through canopy, projected area basis: dSLA/dLAI    coordinates       pftname       `  ��   smpso                   
_FillValue        �         units         mm     	long_name         -Soil water potential at full stomatal opening      coordinates       pftname       `  �8   tpuhd                   
_FillValue        �         units                	long_name                coordinates       pftname       `  ��   frootcn_obs                 
_FillValue        �         	long_name         fine root CN ratio     unit      gC/gN      coordinates       pftname       `  ��   pftpar29                
_FillValue        @�@        units         degrees_Celsius    	long_name         (Maximum coldest monthly mean temperature   coordinates       pftname       `  �X   tpuha                   
_FillValue        �         units                	long_name                coordinates       pftname       `  ��   gddmin                  
_FillValue                   units         unitless   	long_name         /Minimim growing degree days used in CNPhenology    coordinates       pftname       `  �   convfact                
_FillValue        �         	long_name         'conversion factor from gC/m2 to bu/acre    coordinates       pftname       `  �x   pftpar20                
_FillValue        @Ç�3333   units         m2     	long_name         Tree maximum crown area    coordinates       pftname       `  ��   
froot_leaf                  
_FillValue        �         units         gC/gC      	long_name         4Allocation parameter: new fine root C per new leaf C   coordinates       pftname       `  �8   rholnir                 
_FillValue        �         units         fraction   	long_name         Leaf reflectance: near-IR      coordinates       pftname       `  ��   fyield                  
_FillValue        �         units         unitless   	long_name         ,fraction of grain that is actually harvested   coordinates       pftname       `  ��   qe                  
_FillValue        �         units                	long_name                coordinates       pftname       `  �X   KM_PLANT_NH4                
_FillValue        �         	long_name         !plant NH4 maximum uptake affinity      unit      gN/m3      coordinates       pftname       `  ��   slatop                  
_FillValue        �         units         m^2/gC     	long_name         ?Specific Leaf Area (SLA) at top of canopy, projected area basis    coordinates       pftname       `     root_dmx                
_FillValue        �         units         m      	long_name         maximum rooting depth of crops     coordinates       pftname       `  x   fsr_pft                 
_FillValue        ��?��R   units         m/s    	long_name         Fire spread rate   coordinates       pftname       `  �   	evergreen                   
_FillValue        �         units         logical flag   	long_name         $Binary flag for evergreen leaf habit   flag_values               ?�         flag_meanings         NON-evergreen evergreen    coordinates       pftname       ` 8   ztopmx                  
_FillValue                   units         m      	long_name         0Canopy top coefficient used in CNVegStructUpdate   coordinates       pftname       ` �   fstemcn                 
_FillValue        �         units         gC/gN      	long_name         Stem C:N during organ fill     coordinates       pftname       ` �   lflitcp                 
_FillValue        �         units         gC/gP      	long_name         leaf litter  C:P       coordinates       pftname       ` X   s_vc                
_FillValue        �         	long_name         "slope of vcmax~leafcn relationship     unit       umol CO2/m2/s per leaf N content   coordinates       pftname       ` �   crop                
_FillValue        �         flag_meanings         NOT_crop crop_PFT      valid_range               ?�         	long_name         Binary crop PFT flag:      flag_values               ?�         units         logical flag   coordinates       pftname       `    fr_fcel                 
_FillValue        �         units         fraction   	long_name         #Fine root litter cellulose fraction    coordinates       pftname       ` x   grnfill                 
_FillValue                   units         unitless   	long_name         (Grain fill parameter used in CNPhenology   coordinates       pftname       ` �   lflitcn                 
_FillValue        �         units         gC/gN      	long_name         Leaf litter C:N    coordinates       pftname       ` 8   bbbopt                  
_FillValue        �         units                	long_name                coordinates       pftname       ` �   arooti                  
_FillValue                   units         unitless   	long_name         :Root Allocation coefficient parameter used in CNAllocation     coordinates       pftname       ` �   nstor                   
_FillValue        �         units                	long_name                coordinates       pftname       ` X   fcur                
_FillValue        �         units         fraction   	long_name         jAllocation parameter: fraction of allocation that goes to currently displayed growth, remainder to storage     coordinates       pftname       ` �   fm_leaf                 
_FillValue        ��?��R   units         0 to 1     	long_name         &Fire-related mortality factor for leaf     coordinates       pftname       `    stress_decid                
_FillValue        �         flag_meanings         NOT stress_decidious   valid_range               ?�         	long_name         +Binary flag for stress-deciduous leaf habit    flag_values               ?�         units         logical flag   coordinates       pftname       ` x   arootf                  
_FillValue                   units         unitless   	long_name         :Root Allocation coefficient parameter used in CNAllocation     coordinates       pftname       ` �   pprod100                
_FillValue        �         units         fraction   	long_name         5Deadstem proportions to send to 100 year product pool      comment       &pconv+pprod10+pprod100 must sum to 1.0     valid_range               ?�         coordinates       pftname       ` 8   fm_droot                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Fire-related mortality factor for dead roots   coordinates       pftname       ` �   theta_cj                
_FillValue        �         units                	long_name                coordinates       pftname       ` �   aleaff                  
_FillValue        �         units         unitless   	long_name         ;Leaf Allocation coefficient parameter used in CNAllocationn    coordinates       pftname       ` X   
leafcn_obs                  
_FillValue        �         	long_name         leaf CN ratio      unit      gC/gN      coordinates       pftname       ` �   fd_pft                  
_FillValue        ��?��R   units         hr     	long_name         Fire duration      coordinates       pftname       ` 	   min_planting_temp                   
_FillValue        @�@        units         K      	long_name         ;Average 5 day daily minimum temperature needed for planting    comment       7From AGROIBIS derived from EPIC model parameterizations    coordinates       pftname       ` 	x   flivewd                 
_FillValue        �         units         fraction   	long_name         SAllocation parameter: fraction of new wood that is live (phloem and ray parenchyma)    coordinates       pftname       ` 	�   fm_lroot                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Fire-related mortality factor for live roots   coordinates       pftname       ` 
8   lmrse                   
_FillValue        �         units                	long_name                coordinates       pftname       ` 
�   grperc                  
_FillValue        �         units         unitless   	long_name         Growth respiration factor      coordinates       pftname       ` 
�   fnr                 
_FillValue        �         units                	long_name                coordinates       pftname       ` X   vcmaxhd                 
_FillValue        �         units                	long_name                coordinates       pftname       ` �   livewdcp                
_FillValue        �         units         gC/gP      	long_name         live wood C:P      coordinates       pftname       `    vcmaxha                 
_FillValue        �         units                	long_name                coordinates       pftname       ` x   livewdcn                
_FillValue        �         units         gC/gN      	long_name         )Live wood (phloem and ray parenchyma) C:N      coordinates       pftname       ` �   fm_lstem                
_FillValue        ��?��R   units         0 to 1     	long_name         +Fire-related mortality factor for live stem    coordinates       pftname       ` 8   i_vc                
_FillValue        �         	long_name         &intercept of vcmax~leafcn relationship     unit      umol CO2/m2/s      coordinates       pftname       ` �   lf_flig                 
_FillValue        �         units         fraction   	long_name         Leaf litter lignin fraction    coordinates       pftname       ` �   taulnir                 
_FillValue        �         units         fraction   	long_name         Leaf transmittance: near-IR    coordinates       pftname       ` X   xl                  
_FillValue        �         units         unitless   	long_name         Leaf/stem orientation index    valid_range       ��      ?�         coordinates       pftname       ` �   dleaf                   
_FillValue        �         units         m      	long_name         Characteristic leaf dimension      coordinates       pftname       `    livewdcn_obs                
_FillValue        �         	long_name         live wood CN ratio     unit      gC/gN      coordinates       pftname       ` x   max_NH_planting_date                
_FillValue               units         YYYYMMDD   comment       �Typical U.S. latest planting dates according to AgroIBIS: Maize May 10th; soybean Jun 20th; spring wheat mid-May; winter wheat early Nov.      	long_name         2Maximum planting date for the Northern Hemipsphere     coordinates       pftname       0 �   lf_fcel                 
_FillValue        �         units         fraction   	long_name         Leaf litter cellulose fraction     coordinates       pftname       `    
KM_PLANT_P                  
_FillValue        �         	long_name         !plant POx maximum uptake affinity      unit      gP/m3      coordinates       pftname       ` h   
froot_long                  
_FillValue        �         units         years      	long_name         Leaf longevity     coordinates       pftname       ` �   leafcn                  
_FillValue        �         units         gC/gN      	long_name         Leaf C:N   coordinates       pftname       ` (   rhosvis                 
_FillValue        �         units         fraction   	long_name         Stem reflectance: visible      coordinates       pftname       ` �   flnr                
_FillValue        �         units         fraction   	long_name         $Fraction of leaf N in Rubisco enzyme   coordinates       pftname       ` �   grpnow                  
_FillValue        �         units         unitless   	long_name         Growth respiration factor      coordinates       pftname       ` H   season_decid                
_FillValue        �         units         logical flag   	long_name         -Binary flag for seasonal-deciduous leaf habit      flag_values               ?�         flag_meanings         NOT seasonal-deciduous     coordinates       pftname       ` �   leafcp                  
_FillValue        �         units         gC/gP      	long_name         	leaf C:P       coordinates       pftname       `    tausvis                 
_FillValue        �         units         fraction   	long_name         Stem transmittance: visible    coordinates       pftname       ` h   planting_temp                   
_FillValue        @�@        units         K      	long_name         .Average 10 day temperature needed for planting     comment       7From AGROIBIS derived from EPIC model parameterizations    coordinates       pftname       ` �   br_xr                   
_FillValue        �         units         gC/gN/s    	long_name         %Base rate for maintenance respiration      coordinates       pftname       ` (   fr_flab                 
_FillValue        �         units         fraction   	long_name          Fine root litter labile fraction   coordinates       pftname       ` �   frootcp                 
_FillValue        �         units         gC/gP      	long_name         fine root C:P      coordinates       pftname       ` �   mbbopt                  
_FillValue        �         units                	long_name                coordinates       pftname       ` H   rholvis                 
_FillValue        �         units         fraction   	long_name         Leaf reflectance: visible      coordinates       pftname       ` �   z0mr                
_FillValue        �         units         unitless   	long_name         7Ratio of momentum roughness length to canopy top height    coordinates       pftname       `    frootcn                 
_FillValue        �         units         gC/gN      	long_name         Fine root C:N      coordinates       pftname       ` h   max_SH_planting_date                
_FillValue               units         YYYYMMDD   comment       6Same as max_NH_planting_date, but offset by six months     	long_name         2Maximum planting date for the Southern Hemipsphere     coordinates       pftname       0 �   fr_flig                 
_FillValue        �         units         fraction   	long_name          Fine root litter lignin fraction   coordinates       pftname       ` �   lf_flab                 
_FillValue        �         units         fraction   	long_name         Leaf litter labile fraction    coordinates       pftname       ` X   astemf                  
_FillValue                   units         unitless   	long_name         :Stem Allocation coefficient parameter used in CNAllocation     coordinates       pftname       ` �   VMAX_PLANT_P                
_FillValue        �         	long_name         !plant POx maximum uptake affinity      unit      gP/gfrootC/s   coordinates       pftname       `    livewdcp_obs                
_FillValue        �         	long_name         live wood CP ratio     unit      gC/gP      coordinates       pftname       ` x   min_SH_planting_date                
_FillValue               units         YYYYMMDD   comment       6Same as min_NH_planting_date, but offset by six months     	long_name         2Minimum planting date for the Southern Hemipsphere     coordinates       pftname       0 �   displar                 
_FillValue        �         units         unitless   	long_name         1Ratio of displacement height to canopy top height      coordinates       pftname       `    act25                   
_FillValue        �         units                	long_name                coordinates       pftname       ` h   ffrootcn                
_FillValue        �         units         gC/gN      	long_name         Fine root C:N during organ fill    coordinates       pftname       ` �   laimx                   
_FillValue                   units         unitless   	long_name         1Maximum Leaf Area Index used in CNVegStructUpdate      coordinates       pftname       ` (   mxmat                   
_FillValue               units         days   	long_name         ;Maximum number of days to maturity parameter in CNPhenology    coordinates       pftname       0 �   koha                
_FillValue        �         units                	long_name                coordinates       pftname       ` �   fm_other                
_FillValue        ��?��R   units         0 to 1     	long_name         -Fire-related mortality factor for other plant      coordinates       pftname       `    VMAX_PLANT_NH4                  
_FillValue        �         	long_name         !plant NH4 maximum uptake affinity      unit      gN/gfrootC/s   coordinates       pftname       ` x   pconv                   
_FillValue        �         units         fraction   	long_name         /Deadstem proportions to send to conversion flux    comment       &pconv+pprod10+pprod100 must sum to 1.0     valid_range               ?�         coordinates       pftname       ` �   deadwdcp_obs                
_FillValue        �         	long_name         dead wood CP ratio     unit      gC/gP      coordinates       pftname       ` 8   	rootb_par                   
_FillValue        �         units         1/m    	long_name         "CLM rooting distribution parameter     coordinates       pftname       ` �   mxtmp                   
_FillValue                   units         C      	long_name         *Max Temperature, parameter used in accFlds     coordinates       pftname       ` �   tausnir                 
_FillValue        �         units         fraction   	long_name         Stem transmittance: near-IR    coordinates       pftname       ` X   deadwdcn                
_FillValue        �         units         gC/gN      	long_name         #Dead wood (xylem and heartwood) C:N    coordinates       pftname       ` �   frootcp_obs                 
_FillValue        �         	long_name         fine root CP ratio     unit      gC/gP      coordinates       pftname       `    min_NH_planting_date                
_FillValue               units         YYYYMMDD   comment       �Typical U.S. earliest planting dates according to AgroIBIS: Maize Apr 10th; soybean May 15th; spring wheat early Apr; winter wheat Sep 1st     	long_name         2Minimum planting date for the Northern Hemipsphere     coordinates       pftname       0 x   cc_leaf                 
_FillValue        ��?��R   units         0 to 1     	long_name         'Combustion completeness factor for leaf    coordinates       pftname       ` �   rootprof_beta                   
_FillValue        �         units         unitless   	long_name         ;Rooting beta parameter, for C and N vertical discretization    coordinates       pftname       `    deadwdcn_obs                
_FillValue        �         	long_name         dead wood CN ratio     unit      gC/gN      coordinates       pftname       ` h   
leafcp_obs                  
_FillValue        �         	long_name         leaf CP ratio      unit      gC/gP      coordinates       pftname       ` �   	stem_leaf                   
_FillValue        �         units         gC/gC      	long_name         VAllocation parameter: new stem C per new leaf C (-1 means use dynamic stem allocation)     coordinates       pftname       `  (   fleafi                  
_FillValue                   units         unitless   	long_name         CLeaf Allocation coefficient parameter fraction used in CNAllocation    coordinates       pftname       `  �   	leaf_long                   
_FillValue        �         units         years      	long_name         Leaf longevity     coordinates       pftname       `  �   cc_dstem                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Combustion completeness factor for dead stem   coordinates       pftname       ` !H   pprod10                 
_FillValue        �         units         fraction   	long_name         4Deadstem proportions to send to 10 year product pool   comment       &pconv+pprod10+pprod100 must sum to 1.0     valid_range               ?�         coordinates       pftname       ` !�   	irrigated                   
_FillValue        �         flag_meanings         NOT_irrigated irrigated    valid_range               ?�         	long_name         Binary Irrigated PFT flag      flag_values               ?�         units         logical flag   coordinates       pftname       ` "   jmaxhd                  
_FillValue        �         units                	long_name                coordinates       pftname       ` "h   deadwdcp                
_FillValue        �         units         gC/gP      	long_name         dead wood C:P      coordinates       pftname       ` "�   jmaxha                  
_FillValue        �         units                	long_name                coordinates       pftname       ` #(   rhosnir                 
_FillValue        �         units         fraction   	long_name         Stem reflectance: near-IR      coordinates       pftname       ` #�   fm_root                 
_FillValue        ��?��R   units         0 to 1     	long_name         ,Fire-related mortality factor for fine roots   coordinates       pftname       ` #�   VMAX_PLANT_NO3                  
_FillValue        �         	long_name         !plant NO3 maximum uptake affinity      unit      gN/gfrootC/s   coordinates       pftname       ` $H   pprodharv10                 
_FillValue                   comment       (100 year harvest is one minus this value   valid_range               ?�         	long_name         4Deadstem proportions to send to 10 year harvest pool   units         fraction   coordinates       pftname       ` $�   lfemerg                 
_FillValue                   units         unitless   	long_name         ,Leaf emergence parameter used in CNPhenology   coordinates       pftname       ` %   hybgdd                  
_FillValue                   units         unitless   	long_name         4Growing Degree Days for maturity used in CNPhenology   coordinates       pftname       ` %h   taulvis                 
_FillValue        �         units         fraction   	long_name         Leaf transmittance: visible    coordinates       pftname       ` %�   	fertnitro                   
_FillValue        �         units         kg N/m2    	long_name         %Max fertilizer to be applied in total      coordinates       pftname       ` &(   lmrhd                   
_FillValue        �         units                	long_name                coordinates       pftname       ` &�   fcurdv                  
_FillValue        �         units         fraction   	long_name          Alternate fcur for use with CNDV   coordinates       pftname       ` &�   lmrha                   
_FillValue        �         units                	long_name                coordinates       pftname       ` 'H   fnitr                   
_FillValue        �         units         unitless   	long_name         "Foliage nitrogen limitation factor     coordinates       pftname       ` '�   allconss                
_FillValue                   units         unitless   	long_name         @Stem Allocation coefficient parameter power used in CNAllocation   coordinates       pftname       ` (   KM_MINSURF_P_vr                   
_FillValue        �         	long_name         0affinity of P adsorption of soil mineral surface   unit      gP/m3        � (h   VMAX_MINSURF_P_vr                     
_FillValue        �         	long_name         4maximum P adsorption capacit of soil mineral surface   unit      gP/m3        � /�   VMAX_PTASE_vr                     
_FillValue        �         	long_name         maximum phosphatase activity   unit      gP/m3/s       x 7h   cryoturb_diffusion_k               
_FillValue        �         units         m^2/sec    	long_name         ?The cryoturbation diffusive constant for vertical mixing of SOM        7�   oxinhib                
_FillValue        �         units         m^3/mol    	long_name         *Inhibition of methane production by oxygen         7�   pHmax                  
_FillValue        �         units         unitless   	long_name         !Maximum pH for methane production          7�   q10_hr                 
_FillValue        �         units         unitless   	long_name         !Q10 for heterotrophic respiration          7�   rob                
_FillValue        �         units         unitless   	long_name         7Ratio of root length to vertical depth (root obliquity)        8    tau_l1                 
_FillValue        �         units         year   	long_name         Turnover time of  litter 1         8   	cn_s3_bgc                  
_FillValue        �         units         gC/gN      	long_name         C:N for SOM pool 3         8   	lwtop_ann                  
_FillValue        �         units         unitless   	long_name         Live wood turnover proportion          8   organic_max                
_FillValue        �         units         kg/m3      	long_name         KOrganic matter content where soil is assumed to act like peat for diffusion        8    	k_m_unsat                  
_FillValue        �         units         mol/m3-w   	long_name         >Michaelis-Menten oxidation rate constant for CH4 concentration         8(   rf_l3s3                
_FillValue        �         units         unitless   	long_name         *Respiration fraction for litter 3 -> SOM 3         80   rf_s1s2                
_FillValue        �         units         unitless   	long_name         'Respiration fraction for SOM 1 -> SOM 2        88   KM_DECOMP_NH4                  
_FillValue        �         	long_name         (affinity of NH4 microbial immobilization   unit      gN/m3          8@   KM_DECOMP_P                
_FillValue        �         	long_name         (affinity of POx microbial immobilization   unit      gP/m3          8H   
gddfunc_p1                 
_FillValue        �         units         unitless   	long_name         8Parameter 1 to calculate GDD threshold as fn of annual T       8P   compet_decomp_nh4                  
_FillValue        �         units         unitless   	long_name         0Relative competitiveness of immobilizers for NH4       8X   q10_ch4oxid                
_FillValue        �         units         unitless   	long_name         Q10 oxidation constant         8`   
fstor2tran               
_FillValue        �             8h   vgc_max                
_FillValue        �         units         unitless   	long_name         2Ratio of saturation pressure triggering ebullition         8p   crit_onset_swi                 
_FillValue        �         units         days   	long_name         .Critical number of days > soilpsi_on for onset         8x   dnp                
_FillValue        �         units         unitless   	long_name         Denitrification proportion         8�   KM_DECOMP_NO3                  
_FillValue        �         	long_name         (affinity of NO3 microbial immobilization   unit      gN/m3          8�   k_s2               
_FillValue        �         units         1/day      	long_name         Decomposition rate for SOM 2       8�   k_s1               
_FillValue        �         units         1/day      	long_name         Decomposition rate for SOM 1       8�   pHmin                  
_FillValue        �         units         unitless   	long_name         !Minimum pH for methane production          8�   redoxlag_vertical                  
_FillValue        �         units         days   	long_name         BTime lag (days) to inhibit production for newly unsaturated layers         8�   max_altdepth_cryoturbation                 
_FillValue        �         units         m      	long_name         9Maximum active layer thickness for cryoturbation to occur          8�   KM_PTASE               
_FillValue        �         	long_name         +affinity parameter for phosphatase activity    unit      gN/gP          8�   	cn_s1_bgc                  
_FillValue        �         units         unitless   	long_name         C:N for SOM 1          8�   
k_nitr_max                 
_FillValue        �         units         1/sec      	long_name         #Maximum nitrification rate constant        8�   rf_s3s4                
_FillValue        �         units         unitless   	long_name         'Respiration fraction for SOM 3 -> SOM 4        8�   crit_offset_swi                
_FillValue        �         units         days   	long_name         7Critical number of water stress days to initiate offset        8�   q10_mr                 
_FillValue        �         units         unitless   	long_name         Q10 for maintenance respiration        8�   f_sat                  
_FillValue        �         units         unitless   	long_name         PVolumetric soil water defining top of water table or where production is allowed       8�   lamda_ptase                
_FillValue        �         	long_name         'critical value for phosphatase activity    unit      gN/gP          8�   redoxlag               
_FillValue        �         units         days   	long_name         :Number of days to lag in the calculation of finundated_lag         8�   rf_s2s1_bgc                
_FillValue        �         units         unitless   	long_name         #respiration fraction SOM 2 to SOM 1        9    rf_l2s1_bgc                
_FillValue        �         units         unitless   	long_name         &respiration fraction litter 2 to SOM 1         9   tau_s2                 
_FillValue        �         units         year   	long_name         ,Turnover time of soil organic matter (SOM) 2       9   tau_s3                 
_FillValue        �         units         year   	long_name         ,Turnover time of soil organic matter (SOM) 3       9   tau_s1                 
_FillValue        �         units         year   	long_name         ,Turnover time of soil organic matter (SOM) 1       9    k_s4               
_FillValue        �         units         1/day      	long_name         Decomposition rate for SOM 4       9(   porosmin               
_FillValue        �         units         unitless   	long_name         Minimum aerenchyma porosity        90   soilpsi_off                
_FillValue        �         units         MPa    	long_name         -Critical soil water potential for leaf offset          98   compet_denit               
_FillValue        �         units         unitless   	long_name         0Relative competitiveness of denitrifiers for NO3       9@   me_herb                
_FillValue        �         units         unitless   	long_name         7Moisture of extinction for herbaceous PFTs (proportion)        9H   cn_s2                  
_FillValue        �         units         gC/gN      	long_name         C:N for SOM pool 2         9P   cn_s3                  
_FillValue        �         units         gC/gN      	long_name         C:N for SOM pool 3         9X   cn_s1                  
_FillValue        �         units         gC/gN      	long_name         C:N for SOM pool 1         9`   cn_s4                  
_FillValue        �         units         gC/gN      	long_name         C:N for SOM pool 4         9h   cwd_flig               
_FillValue        �         units         unitless   	long_name         &Lignin fraction of coarse woody debris         9p   minfuel                
_FillValue        �         units         gC/m2      	long_name         #Dead fuel threshold to carry a fire        9x   r_mort                 
_FillValue        �         units         1/year     	long_name         Mortality rate         9�   rf_s3s1_bgc                
_FillValue        �         units         unitless   	long_name         #respiration fraction SOM 3 to SOM 1        9�   KM_NIT                 
_FillValue        �         	long_name         affinity of NH4 nitrification      unit      gN/m3          9�   KM_NFIX                
_FillValue        �         	long_name         "affinity parameter for N2 fixation     unit      gC/gN          9�   depth_runoff_Nloss                 
_FillValue        �         units         m      	long_name         BDepth over which runoff mixes with soil water for N loss to runoff         9�   
soilpsi_on                 
_FillValue        �         units         MPa    	long_name         ,Critical soil water potential for leaf onset       9�   qflxlagd               
_FillValue        �         units         days   	long_name         EDays to lag time-lagged surface runoff (qflx_surf_lag) in the tropics          9�   	cn_s2_bgc                  
_FillValue        �         units         gC/gN      	long_name         C:N for SOM pool 2         9�   rf_s2s3_bgc                
_FillValue        �         units         unitless   	long_name         'Respiration fraction for SOM 2 -> SOM 3        9�   atmch4                 
_FillValue        �         units         mol/mol    	long_name         RAtmospheric CH4 mixing ratio to prescribe if not provided by the atmospheric model         9�   smp_crit               
_FillValue        �         units         mm     	long_name         sCritical soil moisture potential to reduce oxidation (mm) due to dessication of methanotrophs above the water table        9�   k_mort                 
_FillValue        �         units         unitless   	long_name         6Coefficient of growth efficiency in mortality equation         9�   crit_offset_fdd                
_FillValue        �         units         days   	long_name         3Critical number of freezing days to initiate offset        9�   	crit_dayl                  
_FillValue        �         units         seconds    	long_name         "Critical day length for senescence         9�   compet_decomp_no3                  
_FillValue        �         units         unitless   	long_name         0Relative competitiveness of immobilizers for NO3       9�   rf_s2s3                
_FillValue        �         units         unitless   	long_name         'Respiration fraction for SOM 2 -> SOM 3        9�   cnscalefactor                  
_FillValue        �         units         unitless   	long_name         ;Scale factor on CN decomposition for assigning methane flux        :    sf_no3                 
_FillValue        �         units         unitless   	long_name         Soluble fraction of NO3        :   	VMAX_NFIX                  
_FillValue        �         	long_name         maximum N2 fixation rate   unit      gN/gC/s        :   rf_l3s2_bgc                
_FillValue        �         units         unitless   	long_name         +respiration fraction from litter 3 to SOM 2        :   compet_plant_nh4               
_FillValue        �         units         unitless   	long_name         )Relative compettiveness of plants for NH4          :    nongrassporosratio                 
_FillValue        �         units         unitless   	long_name         KRatio of root porosity in non-grass to grass, used for aerenchyma transport        :(   rc_npool               
_FillValue        �         units         unitless   	long_name         'resistance for uptake from plant n pool        :0   rij_kro_alpha                  
_FillValue        �         units         unitless   	long_name         7Simple-structure model parameter (Arah and Vinten 1995)        :8   vmax_ch4_oxid                  
_FillValue        �         units         
mol/m3-w/s     	long_name         Oxidation rate constant        :@   rf_l2s2                
_FillValue        �         units         unitless   	long_name         *Respiration fraction for litter 2 -> SOM 2         :H   capthick               
_FillValue        �         units         mm     	long_name         7Minimum thickness before assuming h2osfc is impermeable        :P   	np_s2_new                  
_FillValue        �         units         none   	long_name         NP ratio for soil 2        :X   decomp_depth_efolding                  
_FillValue        �         units         m      	long_name         [e-folding depth for reduction in decomposition. Sset to large number for depth-independance        :`   
som_diffus                 
_FillValue        �         units         m^2/sec    	long_name         MVertical soil organic matter diffusion coefficient for flat adv/diff profile           :h   satpow                 
_FillValue        �         units         unitless   	long_name         6Exponent on watsat for saturated soil solute diffusion         :p   sf_minn                
_FillValue        �         units         unitless   	long_name         Soluble fraction of mineral N          :x   	rij_kro_a                  
_FillValue        �         units         unitless   	long_name         CBest-fit parameter of simple-structure model (Arah and Vinten 1995)        :�   	tau_l2_l3                  
_FillValue        �         units         year   	long_name         'Turnover time of  litter 2 and litter 3        :�   crit_onset_fdd                 
_FillValue        �         units         days   	long_name         3Critical number of freezing days to set gdd counter        :�   dayscrecover               
_FillValue        �         units         unitless   	long_name         days to recover negative cpool         :�   rij_kro_gamma                  
_FillValue        �         units         unitless   	long_name         7Simple-structure model parameter (Arah and Vinten 1995)        :�   	minpsi_hr                  
_FillValue        �         units         MPa    	long_name         3Minimum soil water potential for heterotrophic resp        :�   rf_cwdl2_bgc               
_FillValue        �         units         unitless   	long_name         )respiration fraction from CWD to litter 2          :�   rij_kro_delta                  
_FillValue        �         units         unitless   	long_name         7Simple-structure model parameter (Arah and Vinten 1995)        :�   max_altmultiplier_cryoturb                 
_FillValue        �         units         unitless   	long_name         JRatio of the maximum extent of cryoturbation to the active layer thickness         :�   crit_onset_gdd                     :�   rf_cwdl3_bgc               
_FillValue        �         units         unitless   	long_name         )respiration fraction from CWD to litter 3          :�   rij_kro_beta               
_FillValue        �         units         unitless   	long_name         7Simple-structure model parameter (Arah and Vinten 1995)        :�   k_m                
_FillValue        �         units         mol/m3-w   	long_name         >Michaelis-Menten oxidation rate constant for CH4 concentration         :�   cumprec_onset                  
_FillValue        �         units         seconds    	long_name         "Critical day length for senescence         :�   q10lakebase                
_FillValue        �         units         K      	long_name         (Base temperature for lake CH4 production       :�   lake_decomp_fact               
_FillValue        �         units         1/s    	long_name         -Base decomposition rate (1/s) at 25oC in lake          :�   rsub_top_globalmax                 
_FillValue        �         units         gC/gN/s    	long_name         %Base rate for maintenance respiration          :�   bdnr               
_FillValue        �         units         1/day      	long_name         bulk denitrification rate          ;   	np_s4_new                  
_FillValue        �         units         none   	long_name         NP ratio for soil 4        ;   tau_cwd                
_FillValue        �         units         1/year     	long_name         )Corrected fragmentation rate constant CWD          ;   KM_DEN                 
_FillValue        �         	long_name         affinity of NO3 denitrification    unit      gN/m3          ;   rootlitfrac                
_FillValue        �         units         unitless   	long_name         5Fraction of soil organic matter associated with roots          ;$   scale_factor_gasdiff               
_FillValue        �         units         unitless   	long_name         Scale factor for gas diffusion         ;,   
compet_nit                 
_FillValue        �         units         unitless   	long_name         .Relative competitiveness of nitrifiers for NH4         ;4   	np_s3_new                  
_FillValue        �         units         none   	long_name         NP ratio for soil 3        ;<   surface_tension_water                  
_FillValue        �         units         J/m^2      	long_name         /Surface tension of water (Arah and Vinten 1995)        ;D   crit_dayl_stress               
_FillValue        �         units         seconds    	long_name         "Critical day length for senescence         ;L   wcf                
_FillValue        �         units         unitless   	long_name         Wood combustion fraction       ;T   k_l3               
_FillValue        �         units         1/day      	long_name         Decomposition rate for litter 3        ;\   br_mr                  
_FillValue        �         units         gC/gN/s    	long_name         %Base rate for maintenance respiration          ;d   ef_time                
_FillValue        �         units         years      	long_name         e-folding time constant        ;l   compet_plant_no3               
_FillValue        �         units         unitless   	long_name         )Relative compettiveness of plants for NO3          ;t   rf_l1s1_bgc                
_FillValue        �         units         unitless   	long_name         *Respiration fraction for litter 1 -> SOM 1         ;|   k_s3               
_FillValue        �         units         1/day      	long_name         Decomposition rate for SOM 3       ;�   k_m_o2                 
_FillValue        �         units         mol/m3-w   	long_name         =Michaelis-Menten oxidation rate constant for O2 concentration          ;�   q10ch4                 
_FillValue        �         units         unitless   	long_name         Q10 for methane production         ;�   k_l2               
_FillValue        �         units         1/day      	long_name         Decomposition rate for litter 2        ;�   scale_factor_aere                  
_FillValue        �         units         unitless   	long_name         9Scale factor on the aerenchyma area for sensitivity tests          ;�   k_l1               
_FillValue        �         units         1/day      	long_name         Decomposition rate for litter 1        ;�   rf_l1s1                
_FillValue        �         units         unitless   	long_name         *Respiration fraction for litter 1 -> SOM 1         ;�   	np_s1_new                  
_FillValue        �         units         none   	long_name         NP ratio for soil 1        ;�   highlatfact                
_FillValue        �         units         unitless   	long_name         'Multiple of qflxlagd for high latitudes        ;�   shape_fluxprof_param1                  
_FillValue        �         units         unitless   	long_name         .Shape parameter of advection/diffusion profile         ;�   k_frag                 
_FillValue        �         units         1/day      	long_name         Fragmentation rate for CWD         ;�   	tc_stress                  
_FillValue        �         units                	long_name                    ;�   me_woody               
_FillValue        �         units         unitless   	long_name         2Moisture of extinction for woody PFTs (proportion)         ;�   froz_q10               
_FillValue        �         units         unitless   	long_name         .Separate q10 for frozen soil respiration rates         ;�   f_ch4                  
_FillValue        �         units         unitless   	long_name         1Ratio of CH4 production to total C mineralization          ;�   
gddfunc_p2                 
_FillValue        �         units         unitless   	long_name         8Parameter 2 to calculate GDD threshold as fn of annual T       ;�   unsat_aere_ratio               
_FillValue        �         units         unitless   	long_name         XRatio to multiply upland vegetation aerenchyma porosity by compared to inundated systems       <   vmax_oxid_unsat                
_FillValue        �         units         
mol/m3-w/s     	long_name         Oxidation rate constant        <   ndays_on               
_FillValue        �         units         days   	long_name         %Number of days to complete leaf onset          <   	ndays_off                  
_FillValue        �         units         days   	long_name         &Number of days to complete leaf offset         <   scale_factor_liqdiff               
_FillValue        �         units         unitless   	long_name         3Scale factor for solute diffusion in liquid (water)        <$   cwd_fcel               
_FillValue        �         units         unitless   	long_name         Cellulose fraction for CWD         <,   mino2lim             
_FillValue        �         units         unitless   	long_name         LMinimum anaerobic decomposition rate as a fraction of potential aerobic rate       <4   
q10ch4base               
_FillValue        �         	long_name         KTemperature at which the effective f_ch4 actually equals the constant f_ch4        <<   aereoxid             
_FillValue        �         comment       �Use with the namelist switch use_aereoxid_prog.  If use_aereoxid_prog is equal to false, then read aereoxid from this parameter file.  Set to value between 0 & 1 (inclusive) for sensitivity tests.   	long_name         bFraction of methane flux entering aerenchyma rhizosphere that will be oxidized rather than emitted     units         unitless       <D   rhizome_long                
_FillValue        �         units         yr     	long_name         Nonwoody rhizome longevity     coordinates       pftname       ` <L   
lwtop_pfts                  
_FillValue        �         units         unitless   	long_name         ,Live wood turnover proportion (PFT-specific)   coordinates       pftname       ` <�   dormant_mr_temp                
_FillValue        �         units         	degrees K      	long_name         7Maximum temperature for dormant maintenance respiration        =   dormant_mr_factor                  
_FillValue        �         units         unitless   	long_name         5Dormant maintenance respiration multiplication factor          =   Nfix_NPP_c1                 
_FillValue        �         units         gN/m2/yr   	long_name         +Pre-exponential factor in NPP-Nfix equation    coordinates       pftname       ` =   Nfix_NPP_c2                 
_FillValue        �         units         gN/m2/yr   	long_name         'Exponential factor in NPP-Nfix equation    coordinates       pftname       ` =|                               	   
   not_vegetated                           arctic_lichen                           arctic_bryophyte                        arctic_evergreen_shrub_dwarf            arctic_evergreen_shrub_tall             arctic_deciduous_shrub_dwarf            arctic_deciduous_shrub_low              arctic_deciduous_shrub_tall             arctic_deciduous_shrub_alder            arctic_forb                             arctic_dry_graminoid                    arctic_wet_graminoid                                                   	   
                                                                                                                           @�6嶮r�@�Sc�9hu@�����@�H��WCB@|�埍��@p�D��(�@Z؟$��@@9��[��@Ʉ��.                                                @�6嶮r�@�Sc�9hu@�����@�H��WCB@|�埍��@p�D��(�@Z؟$��@@9��[��@Ʉ��.                                                @f��$�b�@s�hI��@qv3�<�@l`�MÑF@d1�m�@W)#�B)@B�/�1+�@!�,�� ?�y|���                                                @f��$�b�@s�hI��@qv3�<�@l`�MÑF@d1�m�@W)#�B)@B�/�1+�@!�,�� ?�y|���                                                @f��$�b�@s�hI��@qv3�<�@l`�MÑF@d1�m�@W)#�B)@B�/�1+�@!�,�� ?�y|���                                                @f��$�b�@s�hI��@qv3�<�@l`�MÑF@d1�m�@W)#�B)@B�/�1+�@!�,�� ?�y|���                                                @f��$�b�@s�hI��@qv3�<�@l`�MÑF@d1�m�@W)#�B)@B�/�1+�@!�,�� ?�y|���                                                @f��$�b�@s�hI��@qv3�<�@l`�MÑF@d1�m�@W)#�B)@B�/�1+�@!�,�� ?�y|���                                                @�6嶮r�@�Sc�9hu@�����@�H��WCB@|�埍��@p�D��(�@Z؟$��@@9��[��@Ʉ��.                                                @�6嶮r�@�Sc�9hu@�����@�H��WCB@|�埍��@p�D��(�@Z؟$��@@9��[��@Ʉ��.                                                @�6嶮r�@�Sc�9hu@�����@�H��WCB@|�埍��@p�D��(�@Z؟$��@@9��[��@Ʉ��.                                                        @y      @i      @>      @>      @*      @*      @*      @*      @&      @&      @&      @�x�    @�x�    @�x�    @�x�    @�x�    @�x�    @�x�    @�x�    @�x�    @�x�    @�x�    @�x�    @Ç�3333��@     ��@     ��@     ��@     ��@     ��@     ��@     ��@     ��@     ��@     ��@     @�d`    @�d`    @�d`    @�d`    @�d`    @�d`    @�d`    @�d`    @�d`    @�d`    @�d`    @�d`                            @       @       @       @       @       @                                       @       ?�                                                                                                                                                                                                                                              ?�                                                                      @u�     @u�     @u�     @u�                             @�@     @�@     @�@     @7      @7      @7      @7      @7      @7      @�@     @�@     @�@             ?陙����?陙����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?陙����?陙����?陙����?�      @�0     @�0     @�0     @�0     @�0     @�0     @�0     @�0     @�0     @�0     @�0             ?陙����?陙����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?陙����?陙����?陙����?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                                                                                                                                                      @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8                 	 
                                                                                                                        ?�      ?�333333?�333333?陙����?�      ?�333333                                                                                                                                ���    ���    ��    ��    ��    ��    ��    ��    ���    ���    ���                                                                                                    @ �\(�@ �\(�@ �\(�?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff@ �\(�@ �\(�@ �\(�        ?陙����?陙����?�333333?�333333?�333333?�333333?�333333?�333333?陙����?陙����?陙����                                                                                                                                                                                                        ��     ��     ��C�    ��C�    ��C�    ��C�    ��C�    ��C�    ��     ��     ��     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     @E      @I      @I      @C      @C      @C      @C      @C      @C      @I      @I      @I      @�@     �1      �1      �       �       �       �       �       �       �1      �1      �1      @�     @�     @�     @�     @�     @�     @�     @�     @�     @�     @�     @�                                                                                                     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @Ç�3333                @      @      @      @      @      @                                      ?ə�����?�������@      @       ?�      ?��\(�?�Et��7?�      ?�      @      @              ?�ffffff?�ffffff?�ffffff?�ffffff?�������?�������?�������?�������?�ffffff?�ffffff?�ffffff@�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8                                                                                                     ?��z�G�?��z�G�?��z�G�@      @      @      @      @      @      ?��z�G�?��z�G�?��z�G�        ?�n��O�;?�;dZ�?�p��"�p?��Q��?��U�Ѿ,?��rs��?�>�Ѐ6?��c^�?��Q��?�܄�=PU?�܄�=PU@�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8             ?ᙙ����?ᙙ����?�p��
=q?�p��
=q?�p��
=q?�p��
=q?�p��
=q?�p��
=q?ᙙ����?ᙙ����?ᙙ����        ?�      ?�      ?�      ?�                                              ?�      ?�                                                                                                      @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     ?�      @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@             @F��Q�@F��Q�@4�Q��@@���R@@���R@@���R@@���R@@���R@F��Q�@F��Q�@F��Q�                                                                                                        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                                                      ?�      @\�     @P�     @L      @L      @Q�     @Q�     @Q�     @Q�     @?      @H      @P@     @È     @È     @È     @È     @È     @È     @È     @È     @È     @È     @È     @È                                                                                                     @      @      @      @      @      @      @      @      @      @      @      @              ?�      ?�      ?�      ?�                                              ?�      ?�              ?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����                                                                                                                                                                                                                                                                                                        ?ə�����?ə�����?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?ə�����?ə�����?ə�����?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\                                                                                                @@�     @2      @2      @6      @6      @G�     @G�     @G�     @G�     @2      @2      @2              @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@                             ?�������?�������?�������?�������?�������?�������                                ?ə�����?ə�����?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?ə�����?ə�����?ə�����@~�     @~�     @~�     @~�     @~�     @~�     @~�     @~�     @~�     @~�     @~�     @~�     ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�@��
=p�Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     ?�      @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�     @�     @�     @�     @�     @�     @�     @�     @�     @�     @�     @�     ?�                      @I      @I      @I      @I      @I      @I      @I      @I      @I              ?陙����?陙����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?陙����?陙����?陙����                                                                                                        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�\(��?�\(��?�������?�������?�      ?�      ?�      ?�      ?�\(��?�\(��?�\(��        ��333333��333333?�      ?�      ?�      ?�      ?�      ?�      ��333333��333333��333333        ?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{@n                      @S      @S      @S      @S      @S      @S                                                                                      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?���Q�?���Q�?���Q�?���+?���+?���+?���+?���+?���+?���Q�?���Q�?���Q�        ?�      ?�      @       ?�      @       @       ?�      ?�      ?�      @	
=p��
@	
=p��
?�      @U      @K�     @F5�o?@9      @:��I�n@>�-X���@63f���@4�_�U]@=��G�U@:���d@:���d        ?��
=p��?��
=p��?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?��
=p��?��
=p��?��
=p��        ?�E����?����E�?�S����?�S����?�x���F?�x���F?�x���F?�x���F?ə�����?�
=p��
?�
=p��
?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                              ?�      ?�      ?�      ?�      ?�                      ?�      @o@     @o@     @o@     @o@     @o@     @o@     @o@     @o@     @o@     @o@     @o@             ?��Q��?��Q��?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?��Q��?��Q��?��Q��@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     >Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:>Ey��0�:        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"              ?�(�\)?�(�\)?���Q�?���Q�?�������?�������?�������?�������?�(�\)?�(�\)?�(�\)        ?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�      @E      @E      @M      @E      @M      @M      @M      @M      @M      @R�     @R�                                                             ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                                                      >���L*ޢ>���L*ޢ>���L*ޢ>L����c>L����c>L����c>L����c>L����c>L����c>���L*ޢ>���L*ޢ>���L*ޢ@�0                     @�������@�������@�������@�������@�������@�������                                                                                ?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��@������@������@������@������@������@������@������@������@������@������@������@������@�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8                                                                                                                                                     @�À    @�À    @�À    @�À    @�À    @�À    @�À    @�À    @�À    @�À    @�À    @�À            ?陙����?陙����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?ᙙ����?陙����?陙����?陙����>{���Z�>{���Z�>{���Z�>��]��R>��]��R>��]��R>��]��R>��]��R>��]��R>{���Z�>{���Z�>{���Z�        ?�      ?�      ?陙����?陙����?陙����?陙����?陙����?陙����?�      ?�      ?�      @�|                     @�������@�������@�������@�������@�������@�������                                @�      @i      @*      @*      @$      @$      @$      @$      @"      @"      @"                                                                                                              ?�      ?�      ?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?�      ?�      ?�      ?�                      @@     @@     @@     @@     @@     @@                             @w�     @~<��<�@~<��<�@t0     @t0     @t0     @t0     @t0     @t0     @~<��<�@~<��<�@~<��<�                                                        ?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����        ?�?|�hs?�?|�hs?�?|�hs?�?|�hs?�?|�hs?�?|�hs?�?|�hs?�?|�hs?�?|�hs?�?|�hs?�?|�hs@��                     @S      @S      @S      @S      @S      @S                              @��     @d@     @d@     @�(     @�(     @�(     @�(     @�(     @�(     @d@     @d@     @d@                             ?�333333?ə�����?�(�\)?�(�\)?ə�����?�      ?�������?ə�����?ə�����                                                                                                        @$      @      @      ?�      ?�      ?�      ?�      ?�      ?�      @       @               ?陙����?陙����?�333333?�333333?�333333?�333333?�333333?�333333?陙����?陙����?陙����                        ?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����                                                                                                                        Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     Aj     ?�      @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�p     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j             ?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�        ?ə�����?ə�����?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?ə�����?ə�����?ə�����>r��i�?�>r��i�?�>r��i�?�>y��;ў>y��;ў>y��;ў>y��;ў>y��;ў>y��;ў>r��i�?�>r��i�?�>r��i�?�                                                                                                                                                                                                                                                                                                        ?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������                                                                                                Ac�    Ac�    Ac�    Ac�    Ac�    Ac�    Ac�    Ac�    Ac�    Ac�    Ac�    Ac�            ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      @��    @��    @��    @��    @��    @��    @��    @��    @��    @��    @��    @��            ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                                                      @&�%T-Z�@6��g�Wx@4����@1�ڱ��@,V�E�v@#R"irHp@�²Y�?�	�D]A?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.@VD��y@e�8%�@d�o{�|@atHm)k@[�pU*c�@R�{&�m	@D*d:lwX@-Hߦ�,@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@R��Tdّ@bIK�@`�52<W�@]#`�].@W�F��S@Oew�Y��@@��0���@(ge��@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@R��Tdّ@bIK�@`�52<W�@]#`�].@W�F��S@Oew�Y��@@��0���@(ge��@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@RE�v���@bE�mߗ@`�(��f@\��)�T@V���j�a@N�Ш��O@@����G�@(G�i�I@U O��@U O��@U O��@U O��@U O��@U O��@U O��@R��Tdّ@bIK�@`�52<W�@]#`�].@W�F��S@Oew�Y��@@��0���@(ge��@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@�TP\P*@VD��y@e�8%�@d�o{�|@atHm)k@[�pU*c�@R�{&�m	@D*d:lwX@-Hߦ�,@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@	��`nƦ@BE�v���@RE�mߗ@P�(��f%@L��)�8@F���j�a@>�Ш��A@0����G�@G�i�2?�U O��?�U O��?�U O��?�U O��?�U O��?�U O��?�U O��@Nե�
@^b%��i_@[�Tr��M@X*�o�1�@S ���D�@JHZH3@;��=3��@$F$��X�@��B��L@��B��L@��B��L@��B��L@��B��L@��B��L@��B��L@Ui����@e}��@cY���ǿ@`�m�p�@Z�b*�_�@R B�#�@Ccֆ�$@,(�G�_@��\�H�@��\�H�@��\�H�@��\�H�@��\�H�@��\�H�@��\�H�@Ui����@e}��@cY���ǿ@`�m�p�@Z�b*�_�@R B�#�@Ccֆ�$@,(�G�_@��\�H�@��\�H�@��\�H�@��\�H�@��\�H�@��\�H�@��\�H�@RE�v���@bE�mߗ@`�(��f@\��)�T@V���j�a@N�Ш��O@@����G�@(G�i�I@U O��@U O��@U O��@U O��@U O��@U O��@U O��@&�%T-Z�@6��g�Wx@4����@1�ڱ��@,V�E�v@#R"irHp@�²Y�?�	�D]A?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.@&�%T-Z�@6��g�Wx@4����@1�ڱ��@,V�E�v@#R"irHp@�²Y�?�	�D]A?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.@&�%T-Z�@6��g�Wx@4����@1�ڱ��@,V�E�v@#R"irHp@�²Y�?�	�D]A?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.@&�%T-Z�@6��g�Wx@4����@1�ڱ��@,V�E�v@#R"irHp@�²Y�?�	�D]A?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.?ڪ@b��.@d���I@teq5�wG@r����@p960�4@i����1�@a�o/���@R�`qa�6@;8?x��@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@V�%T-Z�@f��g�W�@d����@a�ڱ��@\V�E�h@SR"irHp@D�²Y�@.	�D]M@
�@b��.@
�@b��.@
�@b��.@
�@b��.@
�@b��.@
�@b��.@
�@b��.@U�ພ�W@e�� t0�@c���;��@a:�J��@[F�񜷦@R���}�O@C�4��A@,�;f�@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@U�ພ�W@e�� t0�@c���;��@a:�J��@[F�񜷦@R���}�O@C�4��A@,�;f�@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@L��8�-@\!�Ak�V@Y��`�_�@V`�^ �]@Q�Aq��*@H&��ڌ@9�s^�/�@"Ű/�I@ �h=��=@ �h=��=@ �h=��=@ �h=��=@ �h=��=@ �h=��=@ �h=��=@U�ພ�W@e�� t0�@c���;��@a:�J��@[F�񜷦@R���}�O@C�4��A@,�;f�@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@	�D_2GW@V�%T-Z�@f��g�W�@d����@a�ڱ��@\V�E�h@SR"irHp@D�²Y�@.	�D]M@
�@b��.@
�@b��.@
�@b��.@
�@b��.@
�@b��.@
�@b��.@
�@b��.@BE�v���@RE�mߗ@P�(��f%@L��)�8@F���j�a@>�Ш��A@0����G�@G�i�2?�U O��?�U O��?�U O��?�U O��?�U O��?�U O��?�U O��@U �!Z+@d�x�_
@c��{�*@`�#�Hi@Z6����@Q�,���5@C!�K��@+�k(2o�@�H[|ɗ@�H[|ɗ@�H[|ɗ@�H[|ɗ@�H[|ɗ@�H[|ɗ@�H[|ɗ@c �/@r�U3�@qINv�:�@m�G�{��@g�� 1@`.c8O�3@QR\�V�@9'�Jr��@T�R�N�@T�R�N�@T�R�N�@T�R�N�@T�R�N�@T�R�N�@T�R�N�@c �/@r�U3�@qINv�:�@m�G�{��@g�� 1@`.c8O�3@QR\�V�@9'�Jr��@T�R�N�@T�R�N�@T�R�N�@T�R�N�@T�R�N�@T�R�N�@T�R�N�@b�p�,�@r�R��*Q@q(H%�B@m���CWP@g��\M*;@`yg��`@Q1E
l�@8����#@*RR7@*RR7@*RR7@*RR7@*RR7@*RR7@*RR7@d���I@teq5�wG@r����@p960�4@i����1�@a�o/���@R�`qa�6@;8?x��@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@d���I@teq5�wG@r����@p960�4@i����1�@a�o/���@R�`qa�6@;8?x��@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@d���I@teq5�wG@r����@p960�4@i����1�@a�o/���@R�`qa�6@;8?x��@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@d���I@teq5�wG@r����@p960�4@i����1�@a�o/���@R�`qa�6@;8?x��@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�@*JY�
�>/ꆣ@>>�n�T�5><��8z>8_��z�>3J�ak�3>*N/W���>(�K.��>r_�F6�=�&����                                                =�n�'I��@y      @"      ?�      @      ?�����b@&      ?�ffffff@`@     ?@bM���?ҏ\(�?���Q�?�
=p��
?ə�����@333333?�      ?�ffffff?�      ?�333333@.      ?�z�G�{?�=p��
=?����,?���0_�~@������        @       @b�     @       >�k����?ᙙ����@.      ?�      ?�ffffff@.      @>      ?ᙙ����?�      @      @k�q�j?���b1�?78���?��������       ?�      ?ə�����@(      @$      @(      @$      ?θQ��@Y      ?�z�G�{?ᙙ����?�Q��R@I      ?��������       @>      @&      ?ᙙ����>��q�hz=�L     ?�333333@.      @�0�    ?�      ?�p��
=q?�      ?�      >$��Q�(?�      ?�      ?��Q�@$      ?�(�\)>�6��C-?ᙙ����@Y      @>      ?��Q�=��u�o�@       ?�������=䝧�a�L?�X��ƀ@.      @>      ?�333333�$              ?�333333@         �        ?�333333?tz�G�{@4      @r�     =ؽ/ݨ�(?��+I�?�      @I      @
�����`?�(�\)?�      ?�      ?�      @I      ?�� ě��@�     ?ٙ�����?����,>�.en�O?�      ?�      ?ᙙ����?V�#����?�z�G�{?�G�z�H?���0_�~?�      ?�Cx���2?��\(�@>      @       B�_    ?Pdg��_��������?�333333?�      ?ə�����?���
=p�?�UUUUUa>�����h�@>      @.      ?�      ?�Q��R?ə�����@rp             @       @       @       @       @       @       @       @       @       @��ޛӆ@��ޛӆ@��ޛӆ?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff@qfffff?�������?�������?�������?�������?�������?�������?�������?�������?�������@$      @      ?�������?�������?h�t�j~�?h�t�j~�?h�t�j~�?h�t�j~�?h�t�j~�?h�t�j~�?h�t�j~�?h�t�j~�?�������?h�t�j~�?h�t�j~�?h�t�j~�