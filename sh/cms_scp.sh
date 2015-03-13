#!/bin/bash
set -x #echo on
date
pushd  /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/
echo "Doing cms transfer to ITO3 scrs_edw..."
source ~/.bashrc

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_agg.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_cp.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_history_req.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_history_sc.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_req.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_sc.* $M3/scrs_edw/ 
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_sc_price.* $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_sc_id_sc_req_union.*   $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_sc_req_union.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_cms_req_complete.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_cms_history_sc.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_cms_history_req.*  $M3/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_master_sc_req_id_report.*  $M3/scrs_edw/
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
