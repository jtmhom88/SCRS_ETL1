#!/bin/bash
set -x #echo on
date
echo "Doing File Transfer of LANDING_ZONE"
date
source ~/.bashrc
# 
pushd /opt/app/workload/FILES/LANDING_ZONE/
#
#if false; then
#fi
echo "Doing Apigee"
pushd ./apigee/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/apigee/Raw
popd
echo "Doing CDR"
pushd ./cdr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cdr/Raw
popd
echo "Doing cms_agg"
pushd ./cms_agg/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_agg/Raw
popd
echo "Doing cms_agg_incr"
pushd ./cms_agg_incr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_agg_incr/Raw
popd
echo "Doing cms_cp"
pushd ./cms_cp/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_cp/Raw
popd
#
echo "Doing cms_cp_incr"
pushd ./cms_cp_incr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_cp_incr/Raw
popd
echo "Doing cms_history_req"
pushd ./cms_history_req/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_history_req/Raw
popd
echo "Doing cms_history_req_incr"
pushd ./cms_history_req_incr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_history_req_incr/Raw
popd
#
echo "Doing cms_history_sc"
pushd ./cms_history_sc/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_history_sc/Raw
popd
echo "Doing cms_history_sc_incr"
pushd ./cms_history_sc_incr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_history_sc_incr/Raw
popd
echo "Doing cms_req"
pushd ./cms_req/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_req/Raw
popd
echo "Doing cms_req_incr"
pushd ./cms_req_incr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_req_incr/Raw
popd
echo "Doing cms_sc"
pushd ./cms_sc/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_sc/Raw
popd
echo "Doing cms_sc_incr"
pushd ./cms_sc_incr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_sc_incr/Raw
popd
echo "Doing cms_sc_price"
pushd ./cms_sc_price/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_sc_price/Raw
popd
echo "Doing cms_sc_price_incr"
pushd ./cms_sc_price_incr/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/cms_sc_price_incr/Raw
popd
echo "Doing csca_approved"
pushd ./csca_approved/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/csca_approved/Raw
popd
echo "Doing csca_pending"
pushd ./csca_pending/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/csca_pending/Raw
popd
echo "Doing eag_mms"
pushd ./eag_mms/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/eag_mms/Raw
popd
echo "Doing eag_sms"
pushd ./eag_sms/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/eag_sms/Raw
popd
echo "Doing fte"
pushd ./fte/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/fte/Raw
popd
echo "Doing omg"
pushd ./omg/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/omg/Raw
popd
echo "Doing tlg"
pushd ./tlg/Raw
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/tlg/Raw
popd
echo "Doing CMS_Incremental"
pushd ./DROP_ZONE/CMS_Incremental/
scp * $P1://opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/CMS_Incremental/
popd
#
date
echo "Done."
exit 1
