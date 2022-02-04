import h5py
import netCDF4
import datetime
import numpy as np
from matplotlib import pyplot as plt

# note, this is in ATS_SRC_DIR/tools/utils
import plot_meteorological_data

def load_netcdf():
    # load the netCDF
    nc = dict()

    # precip [m/s]
    with netCDF4.Dataset('GSWP3_PRECTmms_1901-2014_z19.nc','r') as fN:
        nc['time [d]'] = fN.variables['DTIME'][:]
        nc['time origin [date]'] = datetime.date(1901,1,1)
        nc['time [s]'] = nc['time [d]'] * 86400

        nc['total precipitation [m s^-1]'] = fN.variables['PRECTmms'][0,:] * 1.e-3 # mm/s --> m/s

    # air temp [K]
    with netCDF4.Dataset('GSWP3_TBOT_1901-2014_z19.nc','r') as fN:
        nc['air temperature [K]'] = fN.variables['TBOT'][0,:]

    # incident shortwave [W/m^2]
    with netCDF4.Dataset('GSWP3_FSDS_1901-2014_z19.nc','r') as fN:
        nc['incoming shortwave radiation [W m^-2]'] = fN.variables['FSDS'][0,:]

    # incident longwave [W/m^2]
    with netCDF4.Dataset('GSWP3_FLDS_1901-2014_z19.nc','r') as fN:
        nc['incoming longwave radiation [W m^-2]'] = fN.variables['FLDS'][0,:]

    # wind speed [m/s]
    with netCDF4.Dataset('GSWP3_WIND_1901-2014_z19.nc','r') as fN:
        nc['wind speed [m s^-1]'] = fN.variables['WIND'][0,:]

    # FIXME -- need wind speed reference height!
    nc['wind speed reference height [m]'] = np.nan

    # surface pressure [Pa]
    with netCDF4.Dataset('GSWP3_PSRF_1901-2014_z19.nc','r') as fN:
        nc['atmospheric pressure [Pa]'] = fN.variables['PSRF'][0,:]

    # specific humidity [-]
    with netCDF4.Dataset('GSWP3_QBOT_1901-2014_z19.nc','r') as fN:
        nc['specific humidity [-]'] = fN.variables['QBOT'][0,:]

    # relative humidity
    qair = nc['specific humidity [-]'][:]
    p = nc['atmospheric pressure [Pa]']/100 #hPa
    T = nc['air temperature [K]'] - 273.15 # C
    e = qair * p / (0.378 * qair + 0.622)
    es = 6.112 * np.exp((17.67 * T) / (T + 243.5))
    rh = e / es
    rh = np.where(rh > 1, 1, np.where(rh < 0, 0, rh))
    nc['relative humidity [-]'] = rh

    # split precip
    nc['precipitation rain [m s^-1]'] = np.where(nc['air temperature [K]'] > 273.15, nc['total precipitation [m s^-1]'], 0)
    nc['precipitation snow [m SWE s^-1]'] = np.where(nc['air temperature [K]'] <= 273.15, nc['total precipitation [m s^-1]'], 0)
    return nc

def load_ats(time_origin=None):
    ats = dict()
    with h5py.File('daymet_raw_41p5000_-83p1000.h5','r') as fA:
        for k in fA:
            ats[k] = fA[k][:]

    ats_time_origin = datetime.date(1980,1,1)
    ats['time [d]'] = ats['time [s]']/86400

    if time_origin is None:
        ats['time origin [date]'] = ats_time_origin
    else:
        diff = (ats_time_origin - time_origin).days
        ats['time origin [date]'] = time_origin
        ats['time [d]'] = ats['time [d]'] + diff
        ats['time [s]'] = ats['time [s]'] + diff*86400

    return ats

def daily_avg(nc):
    dt = nc['time [s]'][1] - nc['time [s]'][0]
    n_per_day = int(np.round(86400/dt))

    new_nc = dict()
    for k, val in nc.items():
        try:
            val_reshaped = val.reshape((-1, n_per_day))
        except AttributeError:
            print(f'no reshape in {k}')
            new_nc[k] = val
        else:
            val_daily = val_reshaped.mean(axis=1)
            print(k, val_daily)
            new_nc[k] = val_daily
    return new_nc

nc = load_netcdf()
nc = daily_avg(nc)
ats = load_ats(nc['time origin [date]'])

fig, axs = plot_meteorological_data.get_axs()
axs[0][0].set_title('blue = DayMet, red = GSWP3')
plot_meteorological_data.plot_met(nc, axs, 'r')
plot_meteorological_data.plot_met(ats, axs, 'b')

for ax in axs.ravel():
    ax.set_xlim(80,81) # 1980

plt.show()
