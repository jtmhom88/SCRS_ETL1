#!/bin/bash
set -x
echo "Start apigee etl1..."
date
pushd /opt/app/workload/SCRS/python/VER/
perl RUN_ALL.pl apigee >> run.log 
echo "Finished"
date
exit 1
