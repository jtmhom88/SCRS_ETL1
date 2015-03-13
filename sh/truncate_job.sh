#!/bin/bash
set -x
echo "Start truncate jobs..."
date
pushd /opt/app/workload/SCRS/python/VER/
python truncate_scrs_ods_stg.py  >> run.log 
python truncate_scrs_edw_stg.py >> run.log 
echo "Finished"
date
exit 1
