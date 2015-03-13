#!/bin/bash
set -x # echo on
date
echo "Doing transfer of all network dims to ITO3 scrs_edw..."
source ~/.bashrc

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_tlg.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_omg.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_csca.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_eag_sms.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_eag_mms.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_sc_network_status.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_tlg_history.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_omg_history.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_eag_sms_history.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_eag_mms_history.* $M1/scrs_edw/
echo $?
if [ "$?" -eq "0" ];
then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

echo "Done."
date
exit
