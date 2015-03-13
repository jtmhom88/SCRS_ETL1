#!/bin/bash
set -x #echo on
date
echo "Doing FTE transfer to ITO3 scrs_edw_transfer..."
date
source ~/.bashrc
pushd /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw_stg
scp  loader*fte* $M3/scrs_edw_transfer/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

echo "Done."
date
exit 1
