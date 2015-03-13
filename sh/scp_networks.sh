#!/bin/bash

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_tlg.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_omg.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_csca.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_eag_sms.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/dim_eag_mms.* $M3/scrs_edw/

scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_sc_network_status.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_tlg_history.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_omg_history.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_eag_sms_history.* $M3/scrs_edw/
scp /opt/app/workload/lib/mysql/mysql_data/data/scrs_edw/fact_eag_mms_history.* $M3/scrs_edw/
