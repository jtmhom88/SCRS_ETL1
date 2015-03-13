#!/bin/bash
set -x #echo on
date
echo "Doing File Transfer and Clean Up of LANDING_ZONE"
date
source ~/.bashrc
unalias rm
pushd /opt/app/workload/FILES/LANDING_ZONE/
echo "Doing Apigee"
read -p "pause"
pushd ./apigee/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing CDR"
read -p "pause"
pushd ./cdr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_agg"
read -p "pause"
pushd ./cms_agg/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_agg_incr"
read -p "pause"
pushd ./cms_agg_incr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_cp"
read -p "pause"
pushd ./cms_cp/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_cp_incr"
read -p "pause"
pushd ./cms_cp_incr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_history_req"
read -p "pause"
pushd ./cms_history_req/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_history_req_incr"
read -p "pause"
pushd ./cms_history_req_incr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_history_sc"
read -p "pause"
pushd ./cms_history_sc/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_history_sc_incr"
read -p "pause"
pushd ./cms_history_sc_incr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_req"
read -p "pause"
pushd ./cms_req/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_req_incr"
read -p "pause"
pushd ./cms_req_incr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_sc"
read -p "pause"
pushd ./cms_sc/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_sc_incr"
read -p "pause"
pushd ./cms_sc_incr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_sc_price"
read -p "pause"
pushd ./cms_sc_price/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing cms_sc_price_incr"
read -p "pause"
pushd ./cms_sc_price_incr/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing csca_approved"
read -p "pause"
pushd ./csca_approved/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing csca_pending"
read -p "pause"
pushd ./csca_pending/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing eag_mms"
read -p "pause"
pushd ./eag_mms/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing eag_sms"
read -p "pause"
pushd ./eag_sms/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing fte"
read -p "pause"
pushd ./fte/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing omg"
read -p "pause"
pushd ./omg/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
echo "Doing tlg"
read -p "pause"
pushd ./tld/
rm -f  ./Raw/*
rm -f  ./Fixed/*
popd
date
echo "Done."
exit 1
