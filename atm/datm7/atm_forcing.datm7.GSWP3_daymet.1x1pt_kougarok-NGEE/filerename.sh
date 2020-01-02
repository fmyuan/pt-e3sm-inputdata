#!/bin/bash -f

source ~/.bashrc

for IY in {1980..2010}
do
  for IM in {1..12}
  do
    if [ "$IM" -lt "10" ]; then
      export MM=0$IM
    else
      export MM=$IM
    fi

    export FILEHEADER=clmforc.GSWP3
    export SITE=51x63pt_kougarok-NGEE
    export SITE1=1x1pt_kougarok-NGEE
 
    echo "processing file: ${FILEHEADER}_daymet.$SITE.$IY-$MM.nc ......"

    export FILEHEADER=TPHWL3Hrly/clmforc.GSWP3
#    mv ${FILEHEADER}_refined.${SITE}.TPQWL.$IY-$MM.nc ${FILEHEADER}_daymet.${SITE}.TPQWL.$IY-$MM.nc
    ncks --no_abc -O -d lon,1 -d lat,4 ${FILEHEADER}_daymet.${SITE}.TPQWL.$IY-$MM.nc ${FILEHEADER}_daymet.${SITE1}.TPQWL.$IY-$MM.nc

    export FILEHEADER=Precip3Hrly/clmforc.GSWP3
#    mv ${FILEHEADER}_refined.${SITE}.Prec.$IY-$MM.nc ${FILEHEADER}_daymet.${SITE}.Prec.$IY-$MM.nc
    ncks --no_abc -O -d lon,1 -d lat,4 ${FILEHEADER}_daymet.${SITE}.Prec.$IY-$MM.nc ${FILEHEADER}_daymet.${SITE1}.Prec.$IY-$MM.nc

    export FILEHEADER=Solar3Hrly/clmforc.GSWP3
#    mv ${FILEHEADER}_refined.${SITE}.Solr.$IY-$MM.nc ${FILEHEADER}_daymet.${SITE}.Solr.$IY-$MM.nc
    ncks --no_abc -O -d lon,1 -d lat,4 ${FILEHEADER}_daymet.${SITE}.Solr.$IY-$MM.nc ${FILEHEADER}_daymet.${SITE1}.Solr.$IY-$MM.nc
    
  done
done

