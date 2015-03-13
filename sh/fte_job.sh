#!/bin/bash
set -x
echo "Start fte etl1..."
date
pushd /opt/app/workload/SCRS/python/VER/
perl RUN_ALL.pl fte >> run.log 
echo "Finished"
date
exit 1
