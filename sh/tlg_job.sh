#!/bin/bash
set -x
echo "Start Job..."
date
pushd /opt/app/workload/SCRS/python/VER/
perl RUN_ALL.pl tlg >> run.log
echo "Finish Job."
date
exit 1
