###############################################################################
# IMPORTS
#------------------------------------------------------------------------------
# External Modules
import datetime
#import numpy as np
#import matplotlib.pyplot as plt
#------------------------------------------------------------------------------
# Local Modules



PROJ_SOURCE_DENMARK = 4326 #NOTE
TARGET_PROJECTION = 3857
Z_NAN_NORWAY = -999.0
Z_NAN_DENMARK = +9.96921e+36

#first_date =

d_startTime  = datetime.datetime(2021,11,21,0,0,0)
n_start_time = datetime.datetime(2021,11,21)

# Denmark - Wave
# First date: 2021-11-21 00:00:00
# Final date: 2021-11-22 23:00:00
# Denmark - Current
# First date: 2021-11-21 01:00:00
# Final date: 2021-11-23 00:00:00

weather_files = {
    'Denmark':[
        "data/Denmark_fcoo/FCOO_WAVE.nc",
        "data/Denmark_fcoo/FCOO_CURRENT.nc"
    ],
    'Norway':[
        "data/Norway/mywavewam800shf_mywavewam800_skagerak.an.2021112018.nc",
        "data/Norway/mywavewam800shf_mywavewam800_skagerak.an.2021112118.nc",
        "data/Norway/mywavewam800shf_mywavewam800_skagerak.an.2021112218.nc"
    ]}
boundaries_files = {
    'Norway':'data/pickle_files/Norway_polygons.p',
    'Denmark':'data/pickle_files/Denmark_polygons.p'}

d_startTime = datetime.datetime(
    year=2021, month=11, day=21, hour=0, minute=0, second=0)

def main():
    pass

if __name__ == '__main__':
    main()
