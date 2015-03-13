#!/bin/bash
set -x
echo "Cleanup logs..."
date
d=`date +%y%m%d`
echo $d
cp -f  /opt/app/workload/SCRS/python/VER/run.log  /opt/app/workload/SCRS/python/VER/run.$d.log
cp -f /opt/app/workload/SCRS/python/VER/*.log /opt/app/workload/SCRS/python/VER/LOGS
rm -f /opt/app/workload/SCRS/python/VER/*.log
cp -f /opt/app/workload/SCRS/python/AR/*.log /opt/app/workload/SCRS/python/AR/LOGS
rm -f /opt/app/workload/SCRS/python/AR/*.log
cp -f /opt/app/workload/SCRS/python/JH/*.log /opt/app/workload/SCRS/python/AR/LOGS
rm -f /opt/app/workload/SCRS/python/JH/*.log
echo "Finish Cleanup logs..."
date
exit 1
