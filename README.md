# pt-e3sm-inputdata
A full set of E3SM input dataset for running offline Land Model (ELM) at 1 Point.

## WHY?
The original E3SM inputdata is huge. For ELM developing and testing, it's not necessary to have the whole dataset. This dataset provides an example for running ELM (I cases) at 1 point.

## How?
### (1) The I case for using this dataset is any supported compset, with resolution configuration of `--res ELM_USRDAT`.

### After create_newcase, editing ```env_run.xml``` with the following:
```
             --id DATM_MODE --val CLM1PT
             --id DATM_CLMNCEP_YR_START --val 1985
             --id DATM_CLMNCEP_YR_END --val 2015
             --id ELM_USRDAT_NAME --val 1x1pt_US-Brw
```

In this example, the dataset point named as ```1x1pt_US-Brw``` (for DOE NGEE-Arctic Project), with meteorological data from 1985-2015. 


### (2) The ICB case for run NGEE-Arctic Intensive Site,e.g. Kougarok, using half-degree datasets:

### After create_newcase, editing ```env_run.xml``` with the following:

```
             --id ELM_USRDAT_NAME --val 1x1pt_kougarok-GRID
```

### (3) The ICB case for run NGEE-Arctic Intensive Sites, using high-resolution (1kmx1km) GSWP3v2-daymet4 datasets:

### After create_newcase, editing ```env_run.xml``` with the following, i.e. pointing to new domain file:

For NGEE-Arctic ```Kougarok``` site: 

```
             --id LND_DOMAIN_FILE --val domain.nc
             --id LND_DOMAIN_PATH --val $DIN_LOC_ROOT/atm/datm7/GSWP3_daymet/TILE13868/cpl_bypass_full_KM64
             
```

AND, editing ``` user_nl_elm ```, by adding the following ('YOUR_INPUTDATA_ROOT' must be editted as actual path):

```
 fsurdat = 'YOUR_INPUTDATA_ROOT/atm/datm7/GSWP3_daymet/TILE13868/cpl_bypass_full_KM64/surfdata.nc'
 nyears_ad_carbon_only = 25
 spinup_mortality_factor = 10
 metdata_type = 'gswp3_daymet4'
 metdata_bypass = 'YOUR_INPUTDATA_ROOT/atm/datm7/GSWP3_daymet/TILE13868/cpl_bypass_full_KM64'
 aero_file = 'YOUR_INPUTDATA_ROOT/atm/cam/chem/trop_mozart_aero/aero/aerosoldep_monthly_1850_mean_1.9x2.5_c090421.nc'
 CO2_file = 'YOUR_INPUTDATA_ROOT/atm/datm7/CO2/fco2_datm_1765-2007_c100614.nc'

```

For NGEE-Arctic ```Teller``` site: 
```
TILE13868/cpl_bypass_full_KM64 --> TILE13868/cpl_bypass_full_Teller
```

For NGEE-Arctic ```Council``` site: 
```
TILE13868/cpl_bypass_full_KM64 --> TILE13869/cpl_bypass_full_Council
```

For NGEE-Arctic ```BEO``` site: 
```
TILE13868/cpl_bypass_full_KM64 --> TILE14412/cpl_bypass_full_beo
```



