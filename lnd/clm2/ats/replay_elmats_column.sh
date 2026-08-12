#!/bin/bash

set -e

# Created 2026-05-11 09:36:37

CASEDIR="/Users/f9y/project_e3sm/cases/elmats_column-ICB1850CNRDCTCBC"

/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/E3SM/cime/scripts/create_newcase -case "${CASEDIR}" -mach mymac -compiler gnu -mpilib mpich -res ELM_USRDAT -compset ICB1850CNRDCTCBC

cd "${CASEDIR}"

./xmlchange DIN_LOC_ROOT=/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata

./xmlchange --append --id ELM_BLDNML_OPTS --val "-bgc_spinup on"

./xmlchange ATM_DOMAIN_PATH=/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/share/domains/domain.clm

./xmlchange LND_DOMAIN_PATH=/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/share/domains/domain.clm

./xmlchange ATM_DOMAIN_FILE=domain.lnd.oakharbor_column.nc

./xmlchange LND_DOMAIN_FILE=domain.lnd.oakharbor_column.nc

./xmlchange NTASKS=1

./xmlchange STOP_N=200

./xmlchange STOP_OPTION=nyears

./xmlchange ATM_NCPL=8

echo "
&elm_inparm
 fsurdat = '/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/lnd/clm2/surfdata_map/surfdata_oakharbor_column.nc'
 flanduse_timeseries = ' '
 
 metdata_type = 'gswp3'
 metdata_bypass = '/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/atm/datm7/atm_forcing.datm7.GSWP3.0.5d.v2.c180716_Oakharbor-Grid/cpl_bypass_full'
 aero_file = '/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/atm/cam/chem/trop_mozart_aero/aero/aerosoldep_monthly_1850_mean_1.9x2.5_c090421.nc'
 CO2_file = '/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/atm/datm7/CO2/fco2_datm_ssp585_simyr_1765-2501_CMIP6_c200324.nc'
 stream_fldfilename_popdens = '/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/lnd/clm2/firedata/clmforc.Li_2012_hdm_0.5x0.5_AVHRR_simyr1850-2010_c130401.nc'
 stream_fldfilename_ndep = '/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/lnd/clm2/ndepdata/fndep_elm_cbgc_exp_simyr1849-2101_1.9x2.5_c190103.nc'

 nyears_ad_carbon_only = 25
 spinup_mortality_factor = 10
 finidat = ''

 const_climate_hist=.true.

 domain_decomp_type = 'ats'
 use_ats = .true.
 use_ats_IC = .true.
 ats_inputdir = '/Users/f9y/mygithub/ATS_REPOS/COMPASS-ELM-ATS/inputdata/lnd/clm2/ats'
 
 ats_inputfile = 'column_elm4ats_oakharbor.xml'

 hist_empty_htapes = .true.
 hist_nhtfrq = -24, 1
 hist_mfilt = 365, 2920
 hist_fincl1 = 'TLAI', 'TOTSOMC', 'ZWT', 'TSOI', 'SOILLIQ', 'SOILICE'
 hist_fincl2 = 'TBOT', 'PBOT','RH','RAIN','SNOW','EFF_POROSITY','H2OSOI','SOILICE','SOILPSI','SMP','BTRAN','FPSN'

">>user_nl_elm

./case.setup

./case.build --clean-all

echo 'string(APPEND CPPDEFS " -DCPL_BYPASS")'>>cmake_macros/universal.cmake

./case.build

./case.submit


