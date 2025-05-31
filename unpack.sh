cd lnd/clm2/firedata
tar -zxvf clmforc.Li_2012_hdm_0.5x0.5_AVHRR_simyr1850-2010_c130401.nc.tar.gz
tar -xzf elmforc.ssp5_hdm_0.5x0.5_simyr1850-2100_c190109.tar.gz
cd ../../../atm/datm7/NASA_LIS/
tar -zxvf clmforc.Li_2012_climo1995-2011.T62.lnfm_c130327.nc.tar.gz
tar -zxvf clmforc.Li_2012_climo1995-2011.T62.lnfm_Total_c140423.nc.tar.gz
cd ../
tar -zxvf atm_forcing.datm7.Qian.T62.c080727_smallvilleIA.tar.gz
ln -sf atm_forcing.datm7.Qian.T62.c080727_smallvilleIA atm_forcing.datm7.Qian.T62.c080727
ln -sf domain.T62.050609_smallvilleIA.nc domain.T62.050609.nc
tar -zxvf atm_forcing.datm7.GSWP3.0.5d.v1.c170516_kougarok-Grid.tar.gz
ln -sf atm_forcing.datm7.GSWP3.0.5d.v1.c170516_kougarok-Grid atm_forcing.datm7.GSWP3.0.5d.v1.c170516
