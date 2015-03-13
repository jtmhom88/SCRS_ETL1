#!/usr/bin/python

dropbox = {
    "shortcode" : {
        "url" : "dropbox.cingular.com",
        "user" : "shortcodeadmin",
        "anshbng" : "sep72010!",
        "port" : "21"
    },
    "cdr" : {
        "url" : "70.151.41.144",
        "user" : "ftpuser",
        "anshbng" : "123",
        "port" : "21"
    },
    "gateway" : {
        "url" : "gateway.cingular.net",
        "user" : "M61429",
        "anshbng" : "xrx-8Imp",
        "port" : "10021"
    },
    "apigee" : {
        "url" : "dropbox.cingular.com",
        "user" : "apigee",
        "anshbng" : "Api!@Att",
        "port" : "21"
    }
}

datasources = {
    "apigee" : { 
            "dropbox" : "apigee",
            "ftpdir" : "/devconnect-ftp/cc_f4/",
            "downloadeddir" : "/devconnect-ftp/cc_f4/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/apigee/Raw/"            
    },
    "cdr" : { 
            "dropbox" : "cdr",
            "ftpdir" : "/nonm2m/",
            "downloadeddir" : "/nonm2m/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/cdr/Raw/"
    },
    "csca" : { 
            "dropbox" : "shortcode",
            "ftpdir" : "/neustar/",
            "downloadeddir" : "/neustar/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/CSCA/"
    },
    "cms_incr" : {
            "dropbox" : "shortcode",
            "ftpdir" : "/attcm/reports/incremental/",
            "downloadeddir" : "/attcm/reports/incremental/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/CMS_Incremental/"
    },
    "cms" : { 
            "dropbox" : "shortcode",   
            "ftpdir" : "/attcm/reports",
            "downloadeddir" : "/attcm/reports/downloaded/",
            "localdir" : "./"
    },
    "eag" : {
            "dropbox" : "shortcode",   
            "ftpdir" : "/EAG/",
            "downloadeddir" : "/EAG/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/EAG/"
    },
    "ngeag" : {
            "dropbox" : "shortcode",   
            "ftpdir" : "/NGEAG/",
            "downloadeddir" : "/NGEAG/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/DROP_ZONE/NGEAG/"
    },
    "omg" : {
            "dropbox" : "shortcode",    
            "ftpdir" : "/OMG/",
            "downloadeddir" : "/OMG/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/omg/Raw/"
    },
    "tlg" : {
            "dropbox" : "shortcode",    
            "ftpdir" : "/TLG/",
            "downloadeddir" : "/TLG/downloaded/",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/tlg/Raw/"
    },
    "fte" : {
            "dropbox" : "gateway",    
            "ftpdir" : "/M61429/",
            "downloadeddir" : ".",
            "localdir" : "/opt/app/workload/FILES/LANDING_ZONE/fte/Raw/"
    }
}
