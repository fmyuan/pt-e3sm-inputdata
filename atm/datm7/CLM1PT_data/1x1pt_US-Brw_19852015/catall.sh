#!/bin/bash

# previous-month: 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
d=( 31 31 28 31 30 31 30 31 31 30 31 30 )

ymd=0
for y in {1985..2013}
do
  for m in {1..12}
  do

     if [ $m -lt 10 ]; then
       echo "File: $y-0$m.nc"
       ncks -O -h --mk_rec_dim time $y-0$m.nc -o tmp.nc
     else
       echo "File: $y-$m.nc"
       ncks -O -h --mk_rec_dim time $y-$m.nc -o tmp.nc
     fi

     if [ $y -eq 1985 ] && [ $m -eq 1 ]; then
       cp -f tmp.nc all_hourly.nc     
     else
       
       let ymd=ymd+${d[$m-1]}

       ncap -O -h -s "time=time+$ymd" tmp.nc -o tmp.nc
   
       ncrcat -O -h all_hourly.nc tmp.nc -o all_hourly.nc

     fi

     echo "--------------"


  done
done

rm -f tmp.nc
ncrename -O -d time,DTIME all_hourly.nc -o all_hourly.nc
ncrename -O -v time,DTIME all_hourly.nc -o all_hourly.nc


