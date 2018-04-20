# pt-e3sm-inputdata
A full set of E3SM input dataset for running offline Land Model (ELM) at 1 Point.

## WHY?
The original E3SM inputdata is huge. For ELM developing and testing, it's not necessary to have the whole dataset. This dataset provides an example for running ELM (F cases) at 1 point.

## How?
### The F case for using this dataset is any supported compset, with resolution configuration of `--res CLM_USRDAT`.

### After create_newcase, editing ```env_run.xml``` with the following:
```
             --id DATM_MODE --val CLM1PT
             --id DATM_CLMNCEP_YR_START --val 1985
             --id DATM_CLMNCEP_YR_END --val 2015
             --id CLM_USRDAT_NAME --val 1x1pt_US-Brw
```

In this example, the dataset point named as ```1x1pt_US-Brw``` (for DOE NGEE-Arctic Project), with meteorological data from 1985-2015.  
