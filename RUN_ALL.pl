#!/usr/local/bin/perl



# redirect STDERR to STDOUT
*STDERR = *STDOUT;

# Main Script to Run All Data sources for ETL1
print "ETL1 Run all data sources\n";
print "Usage: [all|cms|cms_incr|omg|tlg|eag|ngeag|csca|apigee|cdr]\n";
# NOTE: all does not include fte and cdr

$arg = $ARGV[0];
if (length $arg < 1) {
  $now_string = qx{date};
  print "Time: $now_string\n";
  die "No argument entered. Exiting\n";
} else {
  print "Argument entered $arg\n";
}

$working = "/opt/app/workload/SCRS/python/VER";

chdir($working);
$result = qx{pwd};
print "Working directory $result\n";
$loop_dir = "/opt/app/workload/SCRS/python/AR/";

$now_string = qx{date};
print "Start Time: $now_string\n";

# Get date tags
$yymmdd = qx{date +%y%m%d};
$yyyymmdd = qx{date +%Y%m%d};
$yyyymmddhhmm = qx{date +%Y%m%d%H%M};
chomp($yymmdd);
chomp($yyyymmdd);
chomp($yyyymmddhhmm);
#print "$yymmdd $yyyymmdd $yyyymmddhhmm \n";

#Truncate staging tables ODS 
#$result = qx{python truncate_scrs_ods_stg.py};
#print "Result: $result\n";

if ($arg eq "cms_incr" || $arg eq "all") {
  print "DOING cms...\n";
  # FTP
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py cms_incr >> cms_incr.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror cms_incr.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  # COPY OVER
  $result = qx{/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/CMS_Incremental/COPY_ALL.sh};
  print "Result: $result\n";
  # ETL1
  print "DOING cms_agg_incr...\n";
  $result = qx{python etl1_e2e.py cms_agg_incr warn >> cms_agg_incr.$yyyymmdd.log};
  print "Result: $result\n";
  #
  print "DOING cms_cp_incr...\n";
  $result = qx{python etl1_e2e.py cms_cp_incr warn  >> cms_cp_incr.$yyyymmdd.log};
  print "Result: $result\n";
  #
  print "DOING cms_history_req_incr...\n";
  $result = qx{python etl1_e2e.py cms_history_req_incr warn  >> cms_history_req_incr.$yyyymmdd.log};
  print "Result: $result\n";
  #
  print "DOING cms_history_sc_incr...\n";
  $result = qx{python etl1_e2e.py cms_history_sc_incr warn  >> cms_history_sc_incr.$yyyymmdd.log};
  print "Result: $result\n";
  #
  print "DOING cms_req_incr...\n";
  $result = qx{python etl1_e2e.py cms_req_incr warn  >> cms_req_incr.$yyyymmdd.log};
  print "Result: $result\n";
  #
  print "DOING cms_sc_incr...\n";
  $result = qx{python etl1_e2e.py cms_sc_incr warn >> cms_sc_incr.$yyyymmdd.log};
  print "Result: $result\n";
  #
  print "DOING cms_sc_price_incr...\n";
  $result = qx{python etl1_e2e.py cms_sc_price_incr warn >> cms_sc_price_incr.$yyyymmdd.log};
  print "Result: $result\n";
  #
  # Check for ERRORS
  $result = qx{grep rror cms*.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning cms*.$yyyymmdd.log};
  print "Result: $result\n";
  # LOOP
  $result = qx{python truncate_scrs_cms_edw_stg.py};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if ($result =~ /rror|arning/);
  #
  chdir($loop_dir);
  $result = qx{python etl2_loop.py 100 >> cms_incr.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep rror cms_incr.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep arning cms_incr.$yyyymmdd.log};
  print "Result: $result\n";
  
};
if ($arg eq "cms" )
{
  die "WARNING: cms is not implement yet!!!\n";
}
if ($arg eq "omg" || $arg eq "all") {
  print "DOING omg...\n";
  # FTP
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py omg >> omg.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror omg.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  # ETL1
  $result = qx{python etl1_e2e.py omg warn>> omg.$yyyymmdd.log};
  print "Result: $result\n";
  # Check for ERRORS
  $result = qx{grep rror omg.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning omg.$yyyymmdd.log};
  print "Result: $result\n";
  # LOOP
  chdir($loop_dir);
  $result = qx{python etl2_loop.py 100 >> omg.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep rror omg.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep arning omg.$yyyymmdd.log};
  print "Result: $result\n";
  # FINISH POST-PROCESSING OF NETWORKS & CMS
  chdir($working);
  $result = qx{python networks_cms_etl2.py >> omg.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep rror omg.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep arning omg.$yyyymmdd.log};
  print "Result: $result\n";
}; 
if ($arg eq "tlg" || $arg eq "all") {
  print "DOING tlg...\n";
  # FTP
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py tlg >> tlg.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror tlg.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  # ETL1
  $result = qx{python etl1_e2e.py tlg warn>> tlg.$yyyymmdd.log};
  print "Result: $result\n";
  # Check for ERRORS
  $result = qx{grep rror tlg.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning tlg.$yyyymmdd.log};
  print "Result: $result\n";
}; 
if ($arg eq "eag" || $arg eq "all") {
  print "DOING eag_sms...\n";
  # FTP
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py eag >> eag.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror eag*.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  # DO COPY OVER
  $eag_dir = "/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/EAG/";
  chdir($eag_dir);
  $result = qx{perl copy_v2_files.pl};
  print "Result: $result\n";
  chdir($working);
  # ETL1
  $result = qx{python etl1_e2e.py eag_sms warn>> eag_sms.$yyyymmdd.log};
  print "Result: $result\n";
  print "DOING eag_mms...\n";
  $result = qx{python etl1_e2e.py eag_mms warn>> eag_mms.$yyyymmdd.log};
  print "Result: $result\n";
  # Check for ERRORS
  $result = qx{grep rror eag*.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning eag*.$yyyymmdd.log};
  print "Result: $result\n";
};
if ($arg eq "ngeag" || $arg eq "all") {
  print "DOING ngeag_sms...\n";
  # FTP
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py ngeag >> ngeag.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror ngeag*.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  # DO COPY OVER
  $ngeag_dir = "/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/NGEAG/";
  chdir($ngeag_dir);
  $result = qx{perl copy_v2_files.pl};
  print "Result: $result\n";
  chdir($working);
  # ETL1
  $result = qx{python etl1_e2e.py ngeag_sms warn>> ngeag_sms.$yyyymmdd.log};
  print "Result: $result\n";
  #print "DOING ngeag_mms...\n";
  #$result = qx{python etl1_e2e.py ngeag_mms warn>> eag_mms.$yyyymmdd.log};
  #print "Result: $result\n";
  # Check for ERRORS
  $result = qx{grep rror ngeag*.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning ngeag*.$yyyymmdd.log};
  print "Result: $result\n";
};
if ($arg eq "apigee" || $arg eq "all") {
  print "DOING apigee...\n";
  # FTP
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py apigee >> apigee.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror apigee.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  # ETL1
  $result = qx{python etl1_e2e.py apigee warn>> apigee.$yyyymmdd.log};
  print "Result: $result\n";
  # Check for ERRORS
  $result = qx{grep rror apigee.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning apigee.$yyyymmdd.log};
  print "Result: $result\n";
};
if ($arg eq "csca" || $arg eq "all") {
  # FTP
  print "DOING csca_pending...\n";
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py csca >> csca.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror csca.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  # COPY
  $csca_dir = "/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/CSCA/";
  chdir($csca_dir);
  $pwd = qx{pwd}; 
  print "PWD $pwd\n";
  $result = system("/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/CSCA/COPY.sh");
  print "Result: $result\n";
  chdir($working);
  #ETL1
  print "DOING csca_pending...\n";
  $result = qx{python etl1_e2e.py csca_pending warn>> csca_pending.$yyyymmdd.log};
  print "Result: $result\n";
  print "DOING csca_approved...\n";
  $result = qx{python etl1_e2e.py csca_approved warn>> csca_approved.$yyyymmdd.log};
  print "Result: $result\n";
  # Check for ERRORS
  $result = qx{grep rror csca*.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning csca*.$yyyymmdd.log};
  print "Result: $result\n";
};
if ($arg eq "cdr") {
  # FTP
  print "DOING cdr...\n";
  die "Cannot ftp cdr data, ping of ftp site does NOT work. Bye.\n";

  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py cdr >> cdr.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror cdr.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;

  print "DOING cdr...\n";
  $result = qx{python etl1_e2e.py cdr  warn >> cdr.$yyyymmdd.log};
  print "Result: $result\n";
};
if ($arg eq "fte") {
  print "DOING fte...\n";
  # FTP
  print "ETL1...\n";
  $result = qx{python ftp_get_ALL.py fte >> fte.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror fte.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  #ETL1
  $result = qx{python /opt/app/workload/SCRS/python/JH/etl1_e2e.py fte  warn >> ./fte.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror fte.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning fte.$yyyymmdd.log};
  print "Result: $result\n";
  # LOOP
  # Clear the loader tables for everything else
  #$result = qx{python truncate_scrs_edw_stg.py}; # JTH this step is done is a crontab job
  #print "Result: $result\n";
  #die "RUN_ALL.pl Exiting with ERROR." if ($result =~ /rror|arning/);
  $result = qx{python truncate_scrs_fte_edw_stg.py};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if ($result =~ /rror|arning/);
  #
  chdir($loop_dir);
  $result = qx{python etl2_loop.py 100 >> run.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep rror run.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep arning run.$yyyymmdd.log};
  print "Result: $result\n";
  # Post Process FTE
  chdir($working);
  $result = qx{python fte_etl2.py >> fte.$yyyymmdd.log};
  print "Result: $result\n";
  $result = qx{grep rror fte.$yyyymmdd.log};
  print "Result: $result\n";
  die "RUN_ALL.pl Exiting with ERROR." if length($result) > 0;
  $result = qx{grep arning fte.$yyyymmdd.log};
  print "Result: $result\n";
};
$now_string = qx{date};
print "Exit Time: $now_string\n";
exit;
