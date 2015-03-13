/*
SQLyog Community v11.1 (32 bit)
MySQL - 5.6.13 : Database - DEV_scrs_omd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`DEV_scrs_omd` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `DEV_scrs_omd`;

/*Table structure for table `ds_column_set` */

DROP TABLE IF EXISTS `ds_column_set`;

CREATE TABLE `ds_column_set` (
  `column_set_name` varchar(64) NOT NULL,
  `ds_name_temp` varchar(64) NOT NULL,
  `column_name` varchar(64) NOT NULL,
  `ordinal` smallint(5) unsigned NOT NULL,
  `source_column_name` varchar(128) NOT NULL DEFAULT '',
  `date_format_str` varchar(64) NOT NULL DEFAULT '',
  `valid_raw_regex` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`column_set_name`,`ordinal`),
  UNIQUE KEY `column_set_name` (`column_set_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ds_column_set` */

insert  into `ds_column_set`(`column_set_name`,`ds_name_temp`,`column_name`,`ordinal`,`source_column_name`,`date_format_str`,`valid_raw_regex`,`description`) values ('cdr_v1','cdr','short_code',1,'Addr','','',NULL),('cdr_v1','cdr','is_billable',2,'IsBillable','','',NULL),('cdr_v1','cdr','d01_mo',3,'DAY01_MO','','',NULL),('cdr_v1','cdr','d01_mt',4,'DAY01_MT','','',NULL),('cdr_v1','cdr','d02_mo',5,'DAY02_MO','','',NULL),('cdr_v1','cdr','d02_mt',6,'DAY02_MT','','',NULL),('cdr_v1','cdr','d03_mo',7,'DAY03_MO','','',NULL),('cdr_v1','cdr','d03_mt',8,'DAY03_MT','','',NULL),('cdr_v1','cdr','d04_mo',9,'DAY04_MO','','',NULL),('cdr_v1','cdr','d04_mt',10,'DAY04_MT','','',NULL),('cdr_v1','cdr','d05_mo',11,'DAY05_MO','','',NULL),('cdr_v1','cdr','d05_mt',12,'DAY05_MT','','',NULL),('cdr_v1','cdr','d06_mo',13,'DAY06_MO','','',NULL),('cdr_v1','cdr','d06_mt',14,'DAY06_MT','','',NULL),('cdr_v1','cdr','d07_mo',15,'DAY07_MO','','',NULL),('cdr_v1','cdr','d07_mt',16,'DAY07_MT','','',NULL),('cdr_v1','cdr','d08_mo',17,'DAY08_MO','','',NULL),('cdr_v1','cdr','d08_mt',18,'DAY08_MT','','',NULL),('cdr_v1','cdr','d09_mo',19,'DAY09_MO','','',NULL),('cdr_v1','cdr','d09_mt',20,'DAY09_MT','','',NULL),('cdr_v1','cdr','d10_mo',21,'DAY10_MO','','',NULL),('cdr_v1','cdr','d10_mt',22,'DAY10_MT','','',NULL),('cdr_v1','cdr','d11_mo',23,'DAY11_MO','','',NULL),('cdr_v1','cdr','d11_mt',24,'DAY11_MT','','',NULL),('cdr_v1','cdr','d12_mo',25,'DAY12_MO','','',NULL),('cdr_v1','cdr','d12_mt',26,'DAY12_MT','','',NULL),('cdr_v1','cdr','d13_mo',27,'DAY13_MO','','',NULL),('cdr_v1','cdr','d13_mt',28,'DAY13_MT','','',NULL),('cdr_v1','cdr','d14_mo',29,'DAY14_MO','','',NULL),('cdr_v1','cdr','d14_mt',30,'DAY14_MT','','',NULL),('cdr_v1','cdr','d15_mo',31,'DAY15_MO','','',NULL),('cdr_v1','cdr','d15_mt',32,'DAY15_MT','','',NULL),('cdr_v1','cdr','d16_mo',33,'DAY16_MO','','',NULL),('cdr_v1','cdr','d16_mt',34,'DAY16_MT','','',NULL),('cdr_v1','cdr','d17_mo',35,'DAY17_MO','','',NULL),('cdr_v1','cdr','d17_mt',36,'DAY17_MT','','',NULL),('cdr_v1','cdr','d18_mo',37,'DAY18_MO','','',NULL),('cdr_v1','cdr','d18_mt',38,'DAY18_MT','','',NULL),('cdr_v1','cdr','d19_mo',39,'DAY19_MO','','',NULL),('cdr_v1','cdr','d19_mt',40,'DAY19_MT','','',NULL),('cdr_v1','cdr','d20_mo',41,'DAY20_MO','','',NULL),('cdr_v1','cdr','d20_mt',42,'DAY20_MT','','',NULL),('cdr_v1','cdr','d21_mo',43,'DAY21_MO','','',NULL),('cdr_v1','cdr','d21_mt',44,'DAY21_MT','','',NULL),('cdr_v1','cdr','d22_mo',45,'DAY22_MO','','',NULL),('cdr_v1','cdr','d22_mt',46,'DAY22_MT','','',NULL),('cdr_v1','cdr','d23_mo',47,'DAY23_MO','','',NULL),('cdr_v1','cdr','d23_mt',48,'DAY23_MT','','',NULL),('cdr_v1','cdr','d24_mo',49,'DAY24_MO','','',NULL),('cdr_v1','cdr','d24_mt',50,'DAY24_MT','','',NULL),('cdr_v1','cdr','d25_mo',51,'DAY25_MO','','',NULL),('cdr_v1','cdr','d25_mt',52,'DAY25_MT','','',NULL),('cdr_v1','cdr','d26_mo',53,'DAY26_MO','','',NULL),('cdr_v1','cdr','d26_mt',54,'DAY26_MT','','',NULL),('cdr_v1','cdr','d27_mo',55,'DAY27_MO','','',NULL),('cdr_v1','cdr','d27_mt',56,'DAY27_MT','','',NULL),('cdr_v1','cdr','d28_mo',57,'DAY28_MO','','',NULL),('cdr_v1','cdr','d28_mt',58,'DAY28_MT','','',NULL),('cdr_v1','cdr','d29_mo',59,'DAY29_MO','','',NULL),('cdr_v1','cdr','d29_mt',60,'DAY29_MT','','',NULL),('cdr_v1','cdr','d30_mo',61,'DAY30_MO','','',NULL),('cdr_v1','cdr','d30_mt',62,'DAY30_MT','','',NULL),('cdr_v1','cdr','d31_mo',63,'DAY31_MO','','',NULL),('cdr_v1','cdr','d31_mt',64,'DAY31_MT','','',NULL),('cms_agg_v1','cms_agg','agg_id',1,'AGGREGATORID','','',NULL),('cms_agg_v1','cms_agg','agg_name',2,'NAME','','',NULL),('cms_agg_v1','cms_agg','created_by',3,'CREATEDBY','','',NULL),('cms_agg_v1','cms_agg','created_datetime',4,'CREATEDDATE','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_agg_v1','cms_agg','modified_by',5,'MODIFIEDBY','','',NULL),('cms_agg_v1','cms_agg','modified_datetime',6,'MODIFIEDDATE','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_cp_v1','cms_cp','cp_id',1,'CONTENTPROVIDERID','','',NULL),('cms_cp_v1','cms_cp','cp_name',2,'NAME','','',NULL),('cms_cp_v1','cms_cp','created_by',3,'CREATEDBY','','',NULL),('cms_cp_v1','cms_cp','created_datetime',4,'CREATEDDATE','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_dcm_report_v1','cms_dcm_report','created_datetime',1,'createddt','%Y-%m-%d %H:%i:%s','',NULL),('cms_dcm_report_v1','cms_dcm_report','created_by',2,'createdby','','',NULL),('cms_dcm_report_v1','cms_dcm_report','dcm_datetime',3,'dcmdate','%Y-%m-%d %H:%i:%s','',NULL),('cms_dcm_report_v1','cms_dcm_report','short_code',4,'shortcode','','',NULL),('cms_dcm_report_v1','cms_dcm_report','req_id',5,'campaignid','','',NULL),('cms_dcm_report_v1','cms_dcm_report','net_status',6,'netstatus','','',NULL),('cms_dcm_report_v1','cms_dcm_report','override_status',7,'overridestatus','','',NULL),('cms_dcm_report_v1','cms_dcm_report','updated_datetime',8,'updateddt','%Y-%m-%d %H:%i:%s','',NULL),('cms_dcm_report_v1','cms_dcm_report','updated_by',9,'updatedby','','',NULL),('cms_dcm_report_v1','cms_dcm_report','queue_status',10,'queuestatus','','',NULL),('cms_dcm_report_v1','cms_dcm_report','response_message',11,'responsemessage','','',NULL),('cms_dcm_report_v1','cms_dcm_report','retry_count',12,'retrycount','','',NULL),('cms_dcm_report_v1','cms_dcm_report','note_text',13,'notetext','','',NULL),('cms_history_req_v1','cms_history_req','req_id',1,'campaignid','','',NULL),('cms_history_req_v1','cms_history_req','req_status_history_id',2,'campaignstatushistoryid','','',NULL),('cms_history_req_v1','cms_history_req','transaction_datetime',3,'transaction_date','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_history_req_v1','cms_history_req','old_req_status',4,'old_status','','',NULL),('cms_history_req_v1','cms_history_req','new_req_status',5,'new_status','','',NULL),('cms_history_req_v1','cms_history_req','modified_by',6,'modifiedby','','',NULL),('cms_history_req_v1','cms_history_req','modified_datetime',7,'modifieddate','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_history_sc_v1','cms_history_sc','sc_id',1,'shortcodeid','','',NULL),('cms_history_sc_v1','cms_history_sc','begin_sc',2,'begin_sc','','',NULL),('cms_history_sc_v1','cms_history_sc','end_sc',3,'end_sc','','',NULL),('cms_history_sc_v1','cms_history_sc','transaction_datetime',4,'transaction_date','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_history_sc_v1','cms_history_sc','old_sc_status',5,'old_sc_status','','',NULL),('cms_history_sc_v1','cms_history_sc','new_sc_status',6,'new_sc_status','','',NULL),('cms_history_sc_v1','cms_history_sc','modified_by',7,'modifiedby','','',NULL),('cms_history_sc_v1','cms_history_sc','modified_datetime',8,'modifieddate','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_qpass_v1','cms_qpass','req_id',1,'CAMPAIGNID','','',NULL),('cms_qpass_v1','cms_qpass','sc_id',2,'SHORTCODEID','','',NULL),('cms_qpass_v1','cms_qpass','start_datetime',3,'STARTDT','','',NULL),('cms_qpass_v1','cms_qpass','end_datetime',4,'ENDDT','','',NULL),('cms_qpass_v1','cms_qpass','salesforce_ticket_number',5,'SALESFORCETICKETNUMBER','','',NULL),('cms_req_v1','cms_req','req_id',1,'campaignid','','',NULL),('cms_req_v1','cms_req','program_name',2,'programname','','',NULL),('cms_req_v1','cms_req','program_descr',3,'programdescription','','',NULL),('cms_req_v1','cms_req','req_status',4,'overallstatus','','',NULL),('cms_req_v1','cms_req','agg_id',5,'aggregatorid','','',NULL),('cms_req_v1','cms_req','cp_id',6,'contentproviderid','','',NULL),('cms_req_v1','cms_req','business_type',7,'businesstype','','',NULL),('cms_req_v1','cms_req','modified_by',8,'modifiedby','','',NULL),('cms_req_v1','cms_req','modified_datetime',9,'modifieddate','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_bind_v1','cms_sc_bind','sc_id',1,'shortcodeid','','',NULL),('cms_sc_bind_v1','cms_sc_bind','bind_id',2,'bindid','','',NULL),('cms_sc_bind_v1','cms_sc_bind','created_by',3,'createdby','','',NULL),('cms_sc_bind_v1','cms_sc_bind','created_datetime',4,'createddt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_bind_v1','cms_sc_bind','deleted',5,'deleted','','',NULL),('cms_sc_bind_v1','cms_sc_bind','updated_by',6,'updatedby','','',NULL),('cms_sc_bind_v1','cms_sc_bind','updated_datetime',7,'updateddt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','bind_id',1,'bindid','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','bind_alias',2,'bind_alias','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','bind_created_by',3,'bind_created_by','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','bind_created_datetime',4,'bind_created_dt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','bind_enabled',5,'bindenabled','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','network_type',6,'networktype','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','service_type',7,'servicetype','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','bind_updated_by',8,'bind_updated_by','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','bind_updated_datetime',9,'bind_updated_dt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','agg_id',10,'aggregatorid','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','agg_name',11,'aggregator_companyname','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','client_app_id',12,'clientappid','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','client_app_type',13,'clientapptype','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','endpoint',14,'endpoint','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','ent_oper_id',15,'entoperid','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','interface_name',16,'interfacename','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','key_word',17,'keyword','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','protocol_version',18,'protocolversion','','',NULL),('cms_sc_isg_mms_v1','cms_sc_isg_mms','registration_id',19,'registrationid','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','bind_id',1,'bindid','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','bind_alias',2,'bind_alias','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','bind_created_by',3,'bind_created_by','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','bind_created_datetime',4,'bind_created_dt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','bind_enabled',5,'bindenabled','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','network_type',6,'networktype','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','service_type',7,'servicetype','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','bind_updated_by',8,'bind_updated_by','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','bind_updated_datetime',9,'bind_updated_dt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','agg_id',10,'aggregatorid','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','agg_name',11,'aggregator_companyname','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','client_app_type',12,'clientapptype','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','client_id',13,'clientid','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','endpoint',14,'endpoint','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','ent_id',15,'entid','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','interface_name',16,'interfacename','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','key_word',17,'keyword','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','registration_id',18,'registrationid','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','system_id',19,'systemid','','',NULL),('cms_sc_isg_sms_v1','cms_sc_isg_sms','system_type',20,'systemtype','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_id',1,'bindid','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_alias',2,'bind_alias','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_created_by',3,'bind_created_by','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_created_datetime',4,'bind_created_dt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_enabled',5,'bindenabled','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','network_type',6,'networktype','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','service_type',7,'servicetype','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_updated_by',8,'bind_updated_by','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_updated_datetime',9,'bind_updated_dt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','agg_id',10,'aggregatorid','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','agg_name',11,'aggregator_companyname','','',NULL),('cms_sc_omg_sms_v1','cms_sc_omg_sms','bind_name',12,'bindname','','',NULL),('cms_sc_price_v1','cms_sc_price','req_id',1,'campaignid','','',NULL),('cms_sc_price_v1','cms_sc_price','sc_id',2,'shortcodeid','','',NULL),('cms_sc_price_v1','cms_sc_price','activity',3,'activity','','',NULL),('cms_sc_price_v1','cms_sc_price','req_sc_created_by',4,'cpgn_sc_createdby','','',NULL),('cms_sc_price_v1','cms_sc_price','req_sc_created_datetime',5,'cpgn_sc_createddt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_price_v1','cms_sc_price','deleted',6,'deleted','','',NULL),('cms_sc_price_v1','cms_sc_price','migration_case',7,'migrationcase','','',NULL),('cms_sc_price_v1','cms_sc_price','price_point_created_by',8,'pricepoint_createdby','','',NULL),('cms_sc_price_v1','cms_sc_price','price_point_created_datetime',9,'pricepoint_createddt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_price_v1','cms_sc_price','price_point',10,'pricepoint','','',NULL),('cms_sc_price_v1','cms_sc_price','frequency',11,'frequency','','',NULL),('cms_sc_v1','cms_sc','sc_id',1,'shortcodeid','','',NULL),('cms_sc_v1','cms_sc','billable',2,'billable','','',NULL),('cms_sc_v1','cms_sc','class_of_service',3,'classofservice','','',NULL),('cms_sc_v1','cms_sc','short_code',4,'code','','',NULL),('cms_sc_v1','cms_sc','created_by',5,'createdby','','',NULL),('cms_sc_v1','cms_sc','created_datetime',6,'createddt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_v1','cms_sc','deleted',7,'deleted','','',NULL),('cms_sc_v1','cms_sc','end_datetime',8,'enddate','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_v1','cms_sc','is_csc',9,'iscsc','','',NULL),('cms_sc_v1','cms_sc','migration_auth_doc_id',10,'migrationauthdocid','','',NULL),('cms_sc_v1','cms_sc','requested_provisioning_datetime',11,'requestedprovisioningdate','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_v1','cms_sc','sc_service_type',12,'shortcodeservicetype','','',NULL),('cms_sc_v1','cms_sc','sc_status',13,'status','','',NULL),('cms_sc_v1','cms_sc','updated_by',14,'updatedby','','',NULL),('cms_sc_v1','cms_sc','updated_datetime',15,'updateddt','%d-%b-%y %h.%i.%s.%f %p','',NULL),('cms_sc_v1','cms_sc','agg_id',16,'aggregatorid','','',NULL),('fte_v1','fte','financial_event_id',1,'FINANCIAL_EVENT_ID','','',NULL),('fte_v1','fte','post_datetime',2,'POST_DATE','%m/%d/%Y %T','',NULL),('fte_v1','fte','activity_id',3,'ACTIVITY_ID','','',NULL),('fte_v1','fte','activity_datetime',4,'ACTIVITY_DATE','%m/%d/%Y %T','',NULL),('fte_v1','fte','activity_type',5,'ACTIVITY_TYPE','','',NULL),('fte_v1','fte','parent_financial_event_id',6,'PARENT_FINANCIAL_EVENT_ID','','',NULL),('fte_v1','fte','parent_activity_id',7,'PARENT_ACTIVITY_ID','','',NULL),('fte_v1','fte','parent_activity_datetime',8,'PARENT_ACTIVITY_DATE','%m/%d/%Y %T','',NULL),('fte_v1','fte','content_provider_id',9,'CONTENT_PROVIDER_ID','','',NULL),('fte_v1','fte','content_provider_name',10,'CONTENT_PROVIDER_NAME','','',NULL),('fte_v1','fte','network_operator_id',11,'NETWORK_OPERATOR_ID','','',NULL),('fte_v1','fte','product_id',12,'PRODUCT_ID','','',NULL),('fte_v1','fte','product_name',13,'PRODUCT_NAME','','',NULL),('fte_v1','fte','cp_product_id',14,'CP_PRODUCT_ID','','',NULL),('fte_v1','fte','price',15,'PRICE','','',NULL),('fte_v1','fte','product_unit_count',16,'PRODUCT_UNIT_COUNT','','',NULL),('fte_v1','fte','discount',17,'DISCOUNT','','',NULL),('fte_v1','fte','tax_amount',18,'TAX_AMOUNT','','',NULL),('fte_v1','fte','gross_amount',19,'GROSS_AMOUNT','','',NULL),('fte_v1','fte','registration_datetime',20,'REGISTRATION_TIME','%m/%d/%Y %T','',NULL),('fte_v1','fte','account_id',21,'ACCOUNT_ID','','',NULL),('fte_v1','fte','no_id_for_account',22,'NO_ID_FOR_ACCOUNT','','',NULL),('fte_v1','fte','phone_num',23,'PHONE_NUM','','',NULL),('fte_v1','fte','city',24,'CITY','','',NULL),('fte_v1','fte','county',25,'COUNTY','','',NULL),('fte_v1','fte','state',26,'STATE','','',NULL),('fte_v1','fte','country',27,'COUNTRY','','',NULL),('fte_v1','fte','zip_code',28,'ZIP_CODE','','',NULL),('fte_v1','fte','first_name',29,'FIRST_NAME','','',NULL),('fte_v1','fte','middle_name',30,'MIDDLE_NAME','','',NULL),('fte_v1','fte','last_name',31,'LAST_NAME','','',NULL),('fte_v1','fte','product_category',32,'PRODUCT_CATEGORY','','',NULL),('fte_v1','fte','refund_dispute_status',33,'REFUND_DISPUTE_STATUS','','',NULL),('fte_v1','fte','refund_request_reason',34,'REFUND_REQUEST_REASON','','',NULL),('fte_v1','fte','refund_status_comment',35,'REFUND_STATUS_COMMENT','','',NULL),('fte_v1','fte','periodicity',36,'PERIODICITY','','',NULL),('fte_v1','fte','start_delay',37,'START_DELAY','','',NULL),('fte_v1','fte','anticipated_settlement_date',38,'ANTICIPATED_SETTLEMENT_DATE','%m/%d/%Y %T','',NULL),('fte_v1','fte','instance_id',39,'INSTANCE_ID','','',NULL),('fte_v1','fte','product_description',40,'PRODUCT_DESCRIPTION','','',NULL),('fte_v1','fte','tax_preference',41,'TAX_PREFERENCE','','',NULL),('fte_v1','fte','query_string',42,'QUERY_STRING','','',NULL),('fte_v1','fte','purchase_external_identifier',43,'PURCHASE_EXTERNAL_IDENTIFIER','','',NULL),('fte_v1','fte','tax_location_type',44,'TAX_LOCATION_TYPE','','',NULL),('fte_v1','fte','tax_li_1_ordinal',45,'TAX_LI_1_ORDINAL','','',NULL),('fte_v1','fte','tax_li_1_city_name',46,'TAX_LI_1_CITY_NAME','','',NULL),('fte_v1','fte','tax_li_1_city_tax',47,'TAX_LI_1_CITY_TAX','','',NULL),('fte_v1','fte','tax_li_1_city_tax_rate',48,'TAX_LI_1_CITY_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_1_city_tax_type',49,'TAX_LI_1_CITY_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_1_county_code',50,'TAX_LI_1_COUNTY_CODE','','',NULL),('fte_v1','fte','tax_li_1_county_name',51,'TAX_LI_1_COUNTY_NAME','','',NULL),('fte_v1','fte','tax_li_1_county_tax',52,'TAX_LI_1_COUNTY_TAX','','',NULL),('fte_v1','fte','tax_li_1_county_tax_rate',53,'TAX_LI_1_COUNTY_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_1_county_tax_type',54,'TAX_LI_1_COUNTY_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_1_state_name',55,'TAX_LI_1_STATE_NAME','','',NULL),('fte_v1','fte','tax_li_1_state_tax',56,'TAX_LI_1_STATE_TAX','','',NULL),('fte_v1','fte','tax_li_1_state_tax_rate',57,'TAX_LI_1_STATE_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_1_state_tax_type',58,'TAX_LI_1_STATE_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_1_country_tax',59,'TAX_LI_1_COUNTRY_TAX','','',NULL),('fte_v1','fte','tax_li_1_country_tax_rate',60,'TAX_LI_1_COUNTRY_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_1_country_tax_type',61,'TAX_LI_1_COUNTRY_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_1_external_tax_category',62,'TAX_LI_1_EXTERNAL_TAX_CATEGORY','','',NULL),('fte_v1','fte','tax_li_1_tax_category',63,'TAX_LI_1_TAX_CATEGORY','','',NULL),('fte_v1','fte','tax_li_1_zip',64,'TAX_LI_1_ZIP','','',NULL),('fte_v1','fte','tax_li_1_zip_extension',65,'TAX_LI_1_ZIP_EXTENSION','','',NULL),('fte_v1','fte','tax_li_2_ordinal',66,'TAX_LI_2_ORDINAL','','',NULL),('fte_v1','fte','tax_li_2_city_name',67,'TAX_LI_2_CITY_NAME','','',NULL),('fte_v1','fte','tax_li_2_city_tax',68,'TAX_LI_2_CITY_TAX','','',NULL),('fte_v1','fte','tax_li_2_city_tax_rate',69,'TAX_LI_2_CITY_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_2_city_tax_type',70,'TAX_LI_2_CITY_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_2_county_code',71,'TAX_LI_2_COUNTY_CODE','','',NULL),('fte_v1','fte','tax_li_2_county_name',72,'TAX_LI_2_COUNTY_NAME','','',NULL),('fte_v1','fte','tax_li_2_county_tax',73,'TAX_LI_2_COUNTY_TAX','','',NULL),('fte_v1','fte','tax_li_2_county_tax_rate',74,'TAX_LI_2_COUNTY_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_2_county_tax_type',75,'TAX_LI_2_COUNTY_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_2_state_name',76,'TAX_LI_2_STATE_NAME','','',NULL),('fte_v1','fte','tax_li_2_state_tax',77,'TAX_LI_2_STATE_TAX','','',NULL),('fte_v1','fte','tax_li_2_state_tax_rate',78,'TAX_LI_2_STATE_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_2_state_tax_type',79,'TAX_LI_2_STATE_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_2_country_tax',80,'TAX_LI_2_COUNTRY_TAX','','',NULL),('fte_v1','fte','tax_li_2_country_tax_rate',81,'TAX_LI_2_COUNTRY_TAX_RATE','','',NULL),('fte_v1','fte','tax_li_2_country_tax_type',82,'TAX_LI_2_COUNTRY_TAX_TYPE','','',NULL),('fte_v1','fte','tax_li_2_external_tax_category',83,'TAX_LI_2_EXTERNAL_TAX_CATEGORY','','',NULL),('fte_v1','fte','tax_li_2_tax_category',84,'TAX_LI_2_TAX_CATEGORY','','',NULL),('fte_v1','fte','tax_li_2_zip',85,'TAX_LI_2_ZIP','','',NULL),('fte_v1','fte','tax_li_2_zip_extension',86,'TAX_LI_2_ZIP_EXTENSION','','',NULL),('fte_v1','fte','merchant_name',87,'MERCHANT_NAME','','',NULL),('fte_v1','fte','short_code',88,'SHORT_CODE','','',NULL),('fte_v1','fte','campaign_id',89,'CAMPAIGN_ID','','',NULL),('fte_v1','fte','license_expire_datetime',90,'LICENSE_EXPIRE_DATE','%d/%m/%Y %r','',NULL),('fte_v1','fte','offer_recurrence_flag',91,'OFFER_RECURRENCE_FLAG','','',NULL),('fte_v1','fte','merchant_type',92,'MERCHANT_TYPE','','',NULL),('fte_v1','fte','device_make',93,'DEVICE_MAKE','','',NULL),('fte_v1','fte','device_model',94,'DEVICE_MODEL','','',NULL),('fte_v1','fte','referral_code',95,'REFERRAL_CODE','','',NULL),('fte_v1','fte','catalog_category',96,'CATALOG_CATEGORY','','',NULL),('fte_v1','fte','portal_type',97,'PORTAL_TYPE','','',NULL),('fte_v1','fte','content_type',98,'CONTENT_TYPE','','',NULL),('fte_v1','fte','credit_amount',99,'CREDIT_AMOUNT','','',NULL),('fte_v1','fte','credit_currency',100,'CREDIT_CURRENCY','','',NULL),('fte_v1','fte','extended_payment_type',101,'EXTENDED_PAYMENT_TYPE','','',NULL),('fte_v1','fte','external_account_id',102,'EXTERNAL_ACCOUNT_ID','','',NULL),('fte_v1','fte','refund_type',103,'REFUND_TYPE','','',NULL),('fte_v1','fte','refund_requestor',104,'REFUND_REQUESTOR','','',NULL),('fte_v1','fte','refund_requestor_org',105,'REFUND_REQUESTOR_ORG','','',NULL),('fte_v1','fte','refund_approver',106,'REFUND_APPROVER','','',NULL),('fte_v1','fte','refund_approver_org',107,'REFUND_APPROVER_ORG','','',NULL),('fte_v1','fte','refund_request_method',108,'REFUND_REQUEST_METHOD','','',NULL),('fte_v1','fte','refund_vendor_bulk_identifier',109,'REFUND_VENDOR_BULK_IDENTIFIER','','',NULL),('fte_v1','fte','payment_type',110,'PAYMENT_TYPE','','',NULL);

/*Table structure for table `ds_delimiter_set` */

DROP TABLE IF EXISTS `ds_delimiter_set`;

CREATE TABLE `ds_delimiter_set` (
  `delimiter_set_name` varchar(64) NOT NULL DEFAULT 'csv',
  `fields_terminated_by` varchar(16) NOT NULL DEFAULT ',',
  `optionally_flag` bit(1) NOT NULL DEFAULT b'1',
  `enclosed_by` varchar(16) NOT NULL DEFAULT '"',
  `escaped_by` varchar(16) NOT NULL DEFAULT '',
  `lines_terminated_by` varchar(16) NOT NULL DEFAULT '\\n',
  PRIMARY KEY (`delimiter_set_name`),
  UNIQUE KEY `delimiter_spec_name` (`delimiter_set_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ds_delimiter_set` */

insert  into `ds_delimiter_set`(`delimiter_set_name`,`fields_terminated_by`,`optionally_flag`,`enclosed_by`,`escaped_by`,`lines_terminated_by`) values ('apigee','|','','\"','','\\n'),('csca_unix','|^','','\"','','\\n'),('csca_windows','|^','','\"','','\\r\\n'),('csv',',','','\"','','\\n'),('csv_windows',',','','\"','','\\r\\n'),('eag_unix',';','\0','','','\\n'),('fte_unix',',','','\"','\\','\\n'),('fte_windows',',','','\"','\\','\\r\\n'),('neustar_v1','~','','\"','','\\n');

/*Table structure for table `ds_version` */

DROP TABLE IF EXISTS `ds_version`;

CREATE TABLE `ds_version` (
  `ds_version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_name` varchar(64) NOT NULL,
  `start_date` date NOT NULL,
  `orig_file_name` varchar(128) NOT NULL DEFAULT '',
  `load_file_name` varchar(128) NOT NULL DEFAULT '',
  `delimiter_set_name` varchar(64) NOT NULL DEFAULT '',
  `ignore_lines` int(10) unsigned NOT NULL DEFAULT '0',
  `column_set_name` varchar(64) NOT NULL DEFAULT '',
  `prepare_load_file_function` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`ds_version_id`),
  UNIQUE KEY `ds_name` (`ds_name`,`start_date`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `ds_version` */

insert  into `ds_version`(`ds_version_id`,`ds_name`,`start_date`,`orig_file_name`,`load_file_name`,`delimiter_set_name`,`ignore_lines`,`column_set_name`,`prepare_load_file_function`) values (1,'fte','2011-11-01','%(year)s%(month)s%(day)s.csv','fte_%(year)s%(month)s%(day)s_fixed.csv','fte_windows',1,'fte_v1','fix_fte_jason'),(2,'fte','2013-05-01','att-NOFinancialTransaction-%(year)s%(month)s%(day)s*.csv','fte_%(year)s%(month)s%(day)s_fixed.csv','fte_unix',1,'fte_v1','fix_fte'),(3,'cms_agg','2011-10-01','aggregators_%(year)s%(month)s%(day)s.csv','cms_agg_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_agg_v1','fix_cms'),(4,'cms_agg_incr','2011-10-01','aggregators_%(year)s%(month)s%(day)s*.csv','cms_agg_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_agg_v1','fix_cms'),(5,'cms_cp','2011-10-01','contentproviders_%(year)s%(month)s%(day)s.csv','cms_cp_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_cp_v1','fix_cms'),(6,'cms_cp_incr','2011-10-01','contentproviders_%(year)s%(month)s%(day)s*.csv','cms_cp_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_cp_v1','fix_cms'),(7,'cms_dcm_report','2011-10-01','dcm_report_%(year)s%(month)s%(day)s.csv','cms_dcm_report_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_dcm_report_v1','fix_cms'),(8,'cms_dcm_report_incr','2011-10-01','dcm_report_%(year)s%(month)s%(day)s*.csv','cms_dcm_report_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_dcm_report_v1','fix_cms'),(9,'cms_history_req','2011-10-01','history_campaign_%(year)s%(month)s%(day)s.csv','cms_history_req_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_history_req_v1','fix_cms'),(10,'cms_history_req_incr','2011-10-01','history_campaign_%(year)s%(month)s%(day)s*.csv','cms_history_req_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_history_req_v1','fix_cms'),(11,'cms_history_sc','2011-10-01','history_sc_%(year)s%(month)s%(day)s.csv','cms_history_sc_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_history_sc_v1','fix_cms'),(12,'cms_history_sc_incr','2011-10-01','history_sc_%(year)s%(month)s%(day)s*.csv','cms_history_sc_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_history_sc_v1','fix_cms'),(13,'cms_qpass','2011-10-01','cms_qpass_%(year)s%(month)s%(day)s*.csv','cms_qpass_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_qpass_v1','fix_cms'),(14,'cms_req','2011-10-01','cms_req_%(year)s%(month)s%(day)s.csv','cms_req_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_req_v1','fix_cms'),(15,'cms_req_incr','2011-10-01','cms_req_%(year)s%(month)s%(day)s*.csv','cms_req_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_req_v1','fix_cms'),(16,'cms_sc','2011-10-01','cms_sc_%(year)s%(month)s%(day)s.csv','cms_sc_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_v1','fix_cms'),(17,'cms_sc_bind','2011-10-01','sc_bind_%(year)s%(month)s%(day)s.csv','cms_sc_bind_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_bind_v1','fix_cms'),(18,'cms_sc_bind_incr','2011-10-01','sc_bind_%(year)s%(month)s%(day)s*.csv','cms_sc_bind_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_bind_v1','fix_cms'),(19,'cms_sc_incr','2011-10-01','cms_sc_%(year)s%(month)s%(day)s*.csv','cms_sc_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_v1','fix_cms'),(20,'cms_sc_isg_mms','2011-10-01','cms_sc_isg_%(month)ss_%(year)s%(month)s%(day)s.csv','cms_sc_isg_mms_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_isg_mms_v1','fix_cms'),(21,'cms_sc_isg_mms_incr','2011-10-01','cms_sc_isg_%(month)ss_%(year)s%(month)s%(day)s*.csv','cms_sc_isg_mms_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_isg_mms_v1','fix_cms'),(22,'cms_sc_isg_sms','2011-10-01','cms_sc_isg_sms_%(year)s%(month)s%(day)s.csv','cms_sc_isg_sms_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_isg_sms_v1','fix_cms'),(23,'cms_sc_isg_sms_incr','2011-10-01','cms_sc_isg_sms_%(year)s%(month)s%(day)s*.csv','cms_sc_isg_sms_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_isg_sms_v1','fix_cms'),(24,'cms_sc_omg_sms','2011-10-01','cms_sc_omg_sms_%(year)s%(month)s%(day)s.csv','cms_sc_omg_sms_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_omg_sms_v1','fix_cms'),(25,'cms_sc_omg_sms_incr','2011-10-01','cms_sc_omg_sms_%(year)s%(month)s%(day)s*.csv','cms_sc_omg_sms_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_omg_sms_v1','fix_cms'),(26,'cms_sc_price','2011-10-01','cms_sc_price_%(year)s%(month)s%(day)s.csv','cms_sc_price_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_price_v1','fix_cms'),(27,'cms_sc_price_incr','2011-10-01','cms_sc_price_%(year)s%(month)s%(day)s*.csv','cms_sc_price_incr_%(year)s%(month)s%(day)s_fixed.csv','neustar_v1',1,'cms_sc_price_v1','fix_cms'),(28,'cdr','0000-00-00','NonM2M_%(year)s%(month)s.csv','cdr_%(year)s%(month)s_fixed.csv','csv_windows',1,'cdr_v1','do_nothing'),(29,'tlg','0000-00-00','tlg_%(yy)s%(month)s%(day)s.csv','tlg_%(year)s%(month)s%(day)s_fixed.csv','csv',1,'tlg_v1','do_nothing'),(30,'omg','0000-00-00','atl_%(year)s%(month)s%(day)s.txt','omg_%(year)s%(month)s%(day)s_fixed.csv','csv',1,'omg_v1','do_nothing'),(31,'eag_mms','0000-00-00','eag_%(year)s%(month)s%(day)s.csv','eag_mms_%(year)s%(month)s%(day)s_fixed.csv','eag_unix',0,'eag_mms_v1','do_nothing'),(32,'eag_sms','0000-00-00','eag_%(year)s%(month)s%(day)s.csv','eag_sms_%(year)s%(month)s%(day)s_fixed.csv','eag_unix',0,'eag_sms_v1','do_nothing'),(33,'csca_approved','0000-00-00','approved_%(yy)s%(month)s%(day)s.csv','csca_approved_%(year)s%(month)s%(day)s_fixed.csv','csca_windows',1,'csca_approved_v1','do_nothing'),(34,'csca_pending','0000-00-00','pending_%(yy)s%(month)s%(day)s.csv','csca_pending_%(year)s%(month)s%(day)s_fixed.csv','csca_windows',1,'csca_pending_v1','do_nothing'),(35,'apigee','0000-00-00','upload_%(yy)s%(month)s%(day)s.csv','apigee_%(year)s%(month)s%(day)s_fixed.csv','apigee',1,'apigee_v1','do_nothing'),(36,'pnr','0000-00-00','att-SMSResponseExtract-%(year)s%(month)s%(day)s*.csv','pnr_%(year)s%(month)s%(day)s_fixed.csv','fte_windows',1,'pnr_v1','do_nothing');

/*Table structure for table `etl_raw_ds_params` */

DROP TABLE IF EXISTS `etl_raw_ds_params`;

CREATE TABLE `etl_raw_ds_params` (
  `ds_name` varchar(64) NOT NULL DEFAULT '',
  `ds_group` varchar(30) DEFAULT NULL,
  `raw_path_prefix` varchar(100) DEFAULT NULL,
  `path_prefix` varchar(100) DEFAULT NULL,
  `source_system` varchar(64) NOT NULL DEFAULT '',
  `sub_type` varchar(64) NOT NULL DEFAULT '',
  `ds_folder` varchar(64) NOT NULL DEFAULT '',
  `ds_version_id` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `orig_file_name` varchar(128) NOT NULL DEFAULT '',
  `load_file_name` varchar(128) NOT NULL DEFAULT '',
  `prepare_load_file_function` varchar(64) NOT NULL DEFAULT '',
  `fs_name` varchar(64) NOT NULL,
  `orig_folder` varchar(1000) NOT NULL DEFAULT '',
  `load_folder` varchar(1000) NOT NULL DEFAULT '',
  `raw_load_table` varchar(64) NOT NULL DEFAULT '',
  `typed_table` varchar(64) NOT NULL DEFAULT '',
  `ods_table` varchar(64) NOT NULL,
  `ignore_lines` int(10) unsigned NOT NULL DEFAULT '0',
  `delimiter_str` varchar(198) NOT NULL DEFAULT '',
  `load_columns` mediumtext,
  `identfier` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`identfier`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `etl_raw_ds_params` */

insert  into `etl_raw_ds_params`(`ds_name`,`ds_group`,`raw_path_prefix`,`path_prefix`,`source_system`,`sub_type`,`ds_folder`,`ds_version_id`,`start_date`,`orig_file_name`,`load_file_name`,`prepare_load_file_function`,`fs_name`,`orig_folder`,`load_folder`,`raw_load_table`,`typed_table`,`ods_table`,`ignore_lines`,`delimiter_str`,`load_columns`,`identfier`) values ('cdr','CDR',NULL,NULL,'CDR','','CDR',28,'0000-00-00','NonM2M_%(year)s%(month)s.csv','cdr_%(year)s%(month)s_fixed.csv','do_nothing','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cdr_load_raw','cdr_typed','cdr',1,'FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\r\\n\'','short_code, is_billable, d01_mo, d01_mt, d02_mo, d02_mt, d03_mo, d03_mt, d04_mo, d04_mt, d05_mo, d05_mt, d06_mo, d06_mt, d07_mo, d07_mt, d08_mo, d08_mt, d09_mo, d09_mt, d10_mo, d10_mt, d11_mo, d11_mt, d12_mo, d12_mt, d13_mo, d13_mt, d14_mo, d14_mt, d15_mo, d15_mt, d16_mo, d16_mt, d17_mo, d17_mt, d18_mo, d18_mt, d19_mo, d19_mt, d20_mo, d20_mt, d21_mo, d21_mt, d22_mo, d22_mt, d23_mo, d23_mt, d24_mo, d24_mt, d25_mo, d25_mt, d26_mo, d26_mt, d27_mo, d27_mt, d28_mo, d28_mt, d29_mo, d29_mt, d30_mo, d30_mt, d31_mo, d31_mt',1),('cms_agg','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_agg',3,'2011-10-01','aggregators_%(year)s%(month)s%(day)s.csv','cms_agg_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_agg_load_raw','cms_agg_typed','cms_agg',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','agg_id, agg_name, created_by, created_datetime, modified_by, modified_datetime',2),('cms_cp','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_cp',5,'2011-10-01','contentproviders_%(year)s%(month)s%(day)s.csv','cms_cp_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_cp_load_raw','cms_cp_typed','cms_cp',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','cp_id, cp_name, created_by, created_datetime',3),('cms_dcm_report','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_dcm_report',7,'2011-10-01','dcm_report_%(year)s%(month)s%(day)s.csv','cms_dcm_report_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_dcm_report_load_raw','cms_dcm_report_typed','cms_dcm_report',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','created_datetime, created_by, dcm_datetime, short_code, req_id, net_status, override_status, updated_datetime, updated_by, queue_status, response_message, retry_count, note_text',4),('cms_history_req','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_history_req',9,'2011-10-01','history_campaign_%(year)s%(month)s%(day)s.csv','cms_history_req_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_history_req_load_raw','cms_history_req_typed','cms_history_req',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','req_id, req_status_history_id, transaction_datetime, old_req_status, new_req_status, modified_by, modified_datetime',5),('cms_history_sc','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_history_sc',11,'2011-10-01','history_sc_%(year)s%(month)s%(day)s.csv','cms_history_sc_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_history_sc_load_raw','cms_history_sc_typed','cms_history_sc',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','sc_id, begin_sc, end_sc, transaction_datetime, old_sc_status, new_sc_status, modified_by, modified_datetime',6),('cms_qpass','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_qpass\\','CMS','full_extract','CMS/full_extract/cms_qpass',13,'2011-10-01','cms_qpass_%(year)s%(month)s%(day)s*.csv','cms_qpass_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_qpass_load_raw','cms_qpass_typed','cms_qpass',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','req_id, sc_id, start_datetime, end_datetime, salesforce_ticket_number',7),('cms_req','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_req',14,'2011-10-01','cms_req_%(year)s%(month)s%(day)s.csv','cms_req_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_req_load_raw','cms_req_typed','cms_req',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','req_id, program_name, program_descr, req_status, agg_id, cp_id, business_type, modified_by, modified_datetime',8),('cms_sc','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_sc',16,'2011-10-01','cms_sc_%(year)s%(month)s%(day)s.csv','cms_sc_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_load_raw','cms_sc_typed','cms_sc',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','sc_id, billable, class_of_service, short_code, created_by, created_datetime, deleted, end_datetime, is_csc, migration_auth_doc_id, requested_provisioning_datetime, sc_service_type, sc_status, updated_by, updated_datetime, agg_id',9),('cms_sc_bind','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_sc_bind',17,'2011-10-01','sc_bind_%(year)s%(month)s%(day)s.csv','cms_sc_bind_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_bind_load_raw','cms_sc_bind_typed','cms_sc_bind',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','sc_id, bind_id, created_by, created_datetime, deleted, updated_by, updated_datetime',10),('cms_sc_isg_mms','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_sc_isg_mms',20,'2011-10-01','cms_sc_isg_%(month)ss_%(year)s%(month)s%(day)s.csv','cms_sc_isg_mms_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_isg_mms_load_raw','cms_sc_isg_mms_typed','cms_sc_isg_mms',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','bind_id, bind_alias, bind_created_by, bind_created_datetime, bind_enabled, network_type, service_type, bind_updated_by, bind_updated_datetime, agg_id, agg_name, client_app_id, client_app_type, endpoint, ent_oper_id, interface_name, key_word, protocol_version, registration_id',11),('cms_sc_isg_sms','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_sc_isg_sms',22,'2011-10-01','cms_sc_isg_sms_%(year)s%(month)s%(day)s.csv','cms_sc_isg_sms_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_isg_sms_load_raw','cms_sc_isg_sms_typed','cms_sc_isg_sms',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','bind_id, bind_alias, bind_created_by, bind_created_datetime, bind_enabled, network_type, service_type, bind_updated_by, bind_updated_datetime, agg_id, agg_name, client_app_type, client_id, endpoint, ent_id, interface_name, key_word, registration_id, system_id, system_type',12),('cms_sc_omg_sms','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_sc_omg_sms',24,'2011-10-01','cms_sc_omg_sms_%(year)s%(month)s%(day)s.csv','cms_sc_omg_sms_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_omg_sms_load_raw','cms_sc_omg_sms_typed','cms_sc_omg_sms',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','bind_id, bind_alias, bind_created_by, bind_created_datetime, bind_enabled, network_type, service_type, bind_updated_by, bind_updated_datetime, agg_id, agg_name, bind_name',13),('cms_sc_price','CMS_Full',NULL,NULL,'CMS','full_extract','CMS/full_extract/cms_sc_price',26,'2011-10-01','cms_sc_price_%(year)s%(month)s%(day)s.csv','cms_sc_price_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_price_load_raw','cms_sc_price_typed','cms_sc_price',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','req_id, sc_id, activity, req_sc_created_by, req_sc_created_datetime, deleted, migration_case, price_point_created_by, price_point_created_datetime, price_point, frequency',14),('cms_agg_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\aggregators\\','CMS','incremental','CMS/incremental/cms_agg_incr',4,'2011-10-01','aggregators_%(year)s%(month)s%(day)s*.csv','cms_agg_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_agg_load_raw','cms_agg_typed','cms_agg_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','agg_id, agg_name, created_by, created_datetime, modified_by, modified_datetime',15),('cms_cp_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\contentproviders_incr\\','CMS','incremental','CMS/incremental/cms_cp_incr',6,'2011-10-01','contentproviders_%(year)s%(month)s%(day)s*.csv','cms_cp_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_cp_load_raw','cms_cp_typed','cms_cp_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','cp_id, cp_name, created_by, created_datetime',16),('cms_dcm_report_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_dcm_report_incr\\','CMS','incremental','CMS/incremental/cms_dcm_report_incr',8,'2011-10-01','dcm_report_%(year)s%(month)s%(day)s*.csv','cms_dcm_report_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_dcm_report_load_raw','cms_dcm_report_typed','cms_dcm_report_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','created_datetime, created_by, dcm_datetime, short_code, req_id, net_status, override_status, updated_datetime, updated_by, queue_status, response_message, retry_count, note_text',17),('cms_history_req_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\history_campaign_incr\\','CMS','incremental','CMS/incremental/cms_history_req_incr',10,'2011-10-01','history_campaign_%(year)s%(month)s%(day)s*.csv','cms_history_req_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_history_req_load_raw','cms_history_req_typed','cms_history_req_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','req_id, req_status_history_id, transaction_datetime, old_req_status, new_req_status, modified_by, modified_datetime',18),('cms_history_sc_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\history_sc_incr\\','CMS','incremental','CMS/incremental/cms_history_sc_incr',12,'2011-10-01','history_sc_%(year)s%(month)s%(day)s*.csv','cms_history_sc_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_history_sc_load_raw','cms_history_sc_typed','cms_history_sc_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','sc_id, begin_sc, end_sc, transaction_datetime, old_sc_status, new_sc_status, modified_by, modified_datetime',19),('cms_req_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_req_incr\\','CMS','incremental','CMS/incremental/cms_req_incr',15,'2011-10-01','cms_req_%(year)s%(month)s%(day)s*.csv','cms_req_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_req_load_raw','cms_req_typed','cms_req_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','req_id, program_name, program_descr, req_status, agg_id, cp_id, business_type, modified_by, modified_datetime',20),('cms_sc_bind_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\sc_bind_incr\\','CMS','incremental','CMS/incremental/cms_sc_bind_incr',18,'2011-10-01','sc_bind_%(year)s%(month)s%(day)s*.csv','cms_sc_bind_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_bind_load_raw','cms_sc_bind_typed','cms_sc_bind_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','sc_id, bind_id, created_by, created_datetime, deleted, updated_by, updated_datetime',21),('cms_sc_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_incr\\','CMS','incremental','CMS/incremental/cms_sc_incr',19,'2011-10-01','cms_sc_%(year)s%(month)s%(day)s*.csv','cms_sc_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_load_raw','cms_sc_typed','cms_sc_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','sc_id, billable, class_of_service, short_code, created_by, created_datetime, deleted, end_datetime, is_csc, migration_auth_doc_id, requested_provisioning_datetime, sc_service_type, sc_status, updated_by, updated_datetime, agg_id',22),('cms_sc_isg_mms_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_isg_mms_incr\\','CMS','incremental','CMS/incremental/cms_sc_isg_mms_incr',21,'2011-10-01','cms_sc_isg_%(month)ss_%(year)s%(month)s%(day)s*.csv','cms_sc_isg_mms_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_isg_mms_load_raw','cms_sc_isg_mms_typed','cms_sc_isg_mms_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','bind_id, bind_alias, bind_created_by, bind_created_datetime, bind_enabled, network_type, service_type, bind_updated_by, bind_updated_datetime, agg_id, agg_name, client_app_id, client_app_type, endpoint, ent_oper_id, interface_name, key_word, protocol_version, registration_id',23),('cms_sc_isg_sms_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_isg_sms_incr\\','CMS','incremental','CMS/incremental/cms_sc_isg_sms_incr',23,'2011-10-01','cms_sc_isg_sms_%(year)s%(month)s%(day)s*.csv','cms_sc_isg_sms_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_isg_sms_load_raw','cms_sc_isg_sms_typed','cms_sc_isg_sms_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','bind_id, bind_alias, bind_created_by, bind_created_datetime, bind_enabled, network_type, service_type, bind_updated_by, bind_updated_datetime, agg_id, agg_name, client_app_type, client_id, endpoint, ent_id, interface_name, key_word, registration_id, system_id, system_type',24),('cms_sc_omg_sms_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_omg_sms_incr\\','CMS','incremental','CMS/incremental/cms_sc_omg_sms_incr',25,'2011-10-01','cms_sc_omg_sms_%(year)s%(month)s%(day)s*.csv','cms_sc_omg_sms_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_omg_sms_load_raw','cms_sc_omg_sms_typed','cms_sc_omg_sms_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','bind_id, bind_alias, bind_created_by, bind_created_datetime, bind_enabled, network_type, service_type, bind_updated_by, bind_updated_datetime, agg_id, agg_name, bind_name',25),('cms_sc_price_incr','CMS',NULL,'E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_price_incr\\','CMS','incremental','CMS/incremental/cms_sc_price_incr',27,'2011-10-01','cms_sc_price_%(year)s%(month)s%(day)s*.csv','cms_sc_price_incr_%(year)s%(month)s%(day)s_fixed.csv','fix_cms','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','cms_sc_price_load_raw','cms_sc_price_typed','cms_sc_price_incr',1,'FIELDS TERMINATED BY \'~\' OPTIONALLY ENCLOSED BY \'\"\' LINES TERMINATED BY \'\\n\'','req_id, sc_id, activity, req_sc_created_by, req_sc_created_datetime, deleted, migration_case, price_point_created_by, price_point_created_datetime, price_point, frequency',26),('fte','FTE','E:\\LANDING_ZONE\\FTE\\fte_raw\\','E:\\LANDING_ZONE\\FTE\\fte_fixed\\','QPASS','','FTE',1,'2011-11-01','%(year)s%(month)s%(day)s.csv','%(year)s%(month)s%(day)s_fixed.csv','fix_fte_jason','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','fte_load_raw','fte_typed','fte',1,'FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'\"\' ESCAPED BY \'\\\\\' LINES TERMINATED BY \'\\r\\n\'','financial_event_id, post_datetime, activity_id, activity_datetime, activity_type, parent_financial_event_id, parent_activity_id, parent_activity_datetime, content_provider_id, content_provider_name, network_operator_id, product_id, product_name, cp_product_id, price, product_unit_count, discount, tax_amount, gross_amount, registration_datetime, account_id, no_id_for_account, phone_num, city, county, state, country, zip_code, first_name, middle_name, last_name, product_category, refund_dispute_status, refund_request_reason, refund_status_comment, periodicity, start_delay, anticipated_settlement_date, instance_id, product_description, tax_preference, query_string, purchase_external_identifier, tax_location_type, tax_li_1_ordinal, tax_li_1_city_name, tax_li_1_city_tax, tax_li_1_city_tax_rate, tax_li_1_city_tax_type, tax_li_1_county_code, tax_li_1_county_name, tax_li_1_county_tax, tax_li_1_county_tax_rate, tax_li_1_county_tax_type, tax_li_1_state_name, tax_li_1_state_tax, tax_li_1_state_tax_rate, tax_li_1_state_tax_type, tax_li_1_country_tax, tax_li_1_country_tax_rate, tax_li_1_country_tax_type, tax_li_1_external_tax_category, tax_li_1_tax_category, tax_li_1_zip, tax_li_1_zip_extension, tax_li_2_ordinal, tax_li_2_city_name, tax_li_2_city_tax, tax_li_2_city_tax_rate, tax_li_2_city_tax_type, tax_li_2_county_code, tax_li_2_county_name, tax_li_2_county_tax, tax_li_2_county_tax_rate, tax_li_2_county_tax_type, tax_li_2_state_name, tax_li_2_state_tax, tax_li_2_state_tax_rate, tax_li_2_state_tax_type, tax_li_2_country_tax, tax_li_2_country_tax_rate, tax_li_2_country_tax_type, tax_li_2_external_tax_category, tax_li_2_tax_category, tax_li_2_zip, tax_li_2_zip_extension, merchant_name, short_code, campaign_id, license_expire_datetime, offer_recurrence_flag, merchant_type, device_make, device_model, referral_code, catalog_category, portal_type, content_type, credit_amount, credit_currency, extended_payment_type, external_account_id, refund_type, refund_requestor, refund_requestor_org, refund_approver, refund_approver_org, refund_request_method, refund_vendor_bulk_identifier, payment_type',27),('fte','FTE','E:\\LANDING_ZONE\\FTE\\fte_raw\\','E:\\LANDING_ZONE\\FTE\\fte_fixed\\','QPASS','','FTE',2,'2013-05-01','att-NOFinancialTransaction-%(year)s%(month)s%(day)s.csv','%(year)s%(month)s%(day)s_fixed.csv','fix_fte','stage_year_ds_folder','%(root_dir)s/Original/%(year)s','%(root_dir)s/Fixed/%(year)s','fte_load_raw','fte_typed','fte',1,'FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'\"\' ESCAPED BY \'\\\\\' LINES TERMINATED BY \'\\r\\n\'','financial_event_id, post_datetime, activity_id, activity_datetime, activity_type, parent_financial_event_id, parent_activity_id, parent_activity_datetime, content_provider_id, content_provider_name, network_operator_id, product_id, product_name, cp_product_id, price, product_unit_count, discount, tax_amount, gross_amount, registration_datetime, account_id, no_id_for_account, phone_num, city, county, state, country, zip_code, first_name, middle_name, last_name, product_category, refund_dispute_status, refund_request_reason, refund_status_comment, periodicity, start_delay, anticipated_settlement_date, instance_id, product_description, tax_preference, query_string, purchase_external_identifier, tax_location_type, tax_li_1_ordinal, tax_li_1_city_name, tax_li_1_city_tax, tax_li_1_city_tax_rate, tax_li_1_city_tax_type, tax_li_1_county_code, tax_li_1_county_name, tax_li_1_county_tax, tax_li_1_county_tax_rate, tax_li_1_county_tax_type, tax_li_1_state_name, tax_li_1_state_tax, tax_li_1_state_tax_rate, tax_li_1_state_tax_type, tax_li_1_country_tax, tax_li_1_country_tax_rate, tax_li_1_country_tax_type, tax_li_1_external_tax_category, tax_li_1_tax_category, tax_li_1_zip, tax_li_1_zip_extension, tax_li_2_ordinal, tax_li_2_city_name, tax_li_2_city_tax, tax_li_2_city_tax_rate, tax_li_2_city_tax_type, tax_li_2_county_code, tax_li_2_county_name, tax_li_2_county_tax, tax_li_2_county_tax_rate, tax_li_2_county_tax_type, tax_li_2_state_name, tax_li_2_state_tax, tax_li_2_state_tax_rate, tax_li_2_state_tax_type, tax_li_2_country_tax, tax_li_2_country_tax_rate, tax_li_2_country_tax_type, tax_li_2_external_tax_category, tax_li_2_tax_category, tax_li_2_zip, tax_li_2_zip_extension, merchant_name, short_code, campaign_id, license_expire_datetime, offer_recurrence_flag, merchant_type, device_make, device_model, referral_code, catalog_category, portal_type, content_type, credit_amount, credit_currency, extended_payment_type, external_account_id, refund_type, refund_requestor, refund_requestor_org, refund_approver, refund_approver_org, refund_request_method, refund_vendor_bulk_identifier, payment_type',28);

/*Table structure for table `etl_raw_params` */

DROP TABLE IF EXISTS `etl_raw_params`;

CREATE TABLE `etl_raw_params` (
  `ft_id` int(11) NOT NULL DEFAULT '0',
  `ft_name` varchar(64) CHARACTER SET ascii NOT NULL,
  `ds_name` varchar(64) CHARACTER SET ascii NOT NULL,
  `ft_subfolder` varchar(128) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `etl_raw_params` */

insert  into `etl_raw_params`(`ft_id`,`ft_name`,`ds_name`,`ft_subfolder`) values (1,'fte','fte','FTE'),(2,'cms_agg','cms_agg','CMS_Full_Extract'),(3,'cms_cp','cms_cp','CMS_Full_Extract'),(4,'cms_dcm_report','cms_dcm_report','CMS_Full_Extract'),(5,'cms_history_req','cms_history_req','CMS_Full_Extract'),(6,'cms_history_sc','cms_history_sc','CMS_Full_Extract'),(7,'cms_qpass','cms_qpass','CMS_Incremental'),(8,'cms_req','cms_req','CMS_Full_Extract'),(9,'cms_sc','cms_sc','CMS_Full_Extract'),(10,'cms_sc_bind','cms_sc_bind','CMS_Full_Extract'),(11,'cms_sc_isg_mms','cms_sc_isg_mms','CMS_Full_Extract'),(12,'cms_sc_isg_sms','cms_sc_isg_sms','CMS_Full_Extract'),(13,'cms_sc_omg_sms','cms_sc_omg_sms','CMS_Full_Extract'),(14,'cms_sc_price','cms_sc_price','CMS_Full_Extract'),(15,'cms_agg_incr','cms_agg','CMS_Incremental'),(16,'cms_cp_incr','cms_cp','CMS_Incremental'),(17,'cms_dcm_report_incr','cms_dcm_report','CMS_Incremental'),(18,'cms_history_req_incr','cms_history_req','CMS_Incremental'),(19,'cms_history_sc_incr','cms_history_sc','CMS_Incremental'),(20,'cms_req_incr','cms_req','CMS_Incremental'),(21,'cms_sc_bind_incr','cms_sc_bind','CMS_Incremental'),(22,'cms_sc_incr','cms_sc','CMS_Incremental'),(23,'cms_sc_isg_mms_incr','cms_sc_isg_mms','CMS_Incremental'),(24,'cms_sc_isg_sms_incr','cms_sc_isg_sms','CMS_Incremental'),(25,'cms_sc_omg_sms_incr','cms_sc_omg_sms','CMS_Incremental'),(26,'cms_sc_price_incr','cms_sc_price','CMS_Incremental'),(27,'apigee','apigee','Apigee'),(28,'cdr','cdr','CDR'),(29,'csca_approved','csca','CSCA'),(30,'csca_pending','csca','CSCA'),(31,'eag_mms','eag_mms','EAG'),(32,'eag_sms','eag_sms','EAG'),(33,'omg','omg','OMG'),(34,'pnr','pnr','PNR'),(35,'tlg','tlg','TLG');

/*Table structure for table `raw_to_typed_qa_screens_big_step_num` */

DROP TABLE IF EXISTS `raw_to_typed_qa_screens_big_step_num`;

CREATE TABLE `raw_to_typed_qa_screens_big_step_num` (
  `big_step_num` int(11) NOT NULL DEFAULT '0',
  `screen_id` char(5) NOT NULL,
  `step_num` tinyint(3) unsigned NOT NULL,
  `step_name` varchar(64) NOT NULL,
  `cmd` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `raw_to_typed_qa_screens_big_step_num` */

insert  into `raw_to_typed_qa_screens_big_step_num`(`big_step_num`,`screen_id`,`step_num`,`step_name`,`cmd`) values (1,'qa_01',1,'set_flag','\nUPDATE scrs_ods_stg.fte_clean SET qa_01 = 1 \nWHERE (NOT financial_event_id <=> TRIM(financial_event_id))\n  OR  (NOT post_datetime <=> TRIM(post_datetime))\n  OR  (NOT activity_id <=> TRIM(activity_id))\n  OR  (NOT activity_datetime <=> TRIM(activity_datetime))\n  OR  (NOT activity_type <=> TRIM(activity_type))\n  OR  (NOT parent_financial_event_id <=> TRIM(parent_financial_event_id))\n  OR  (NOT parent_activity_id <=> TRIM(parent_activity_id))\n  OR  (NOT parent_activity_datetime <=> TRIM(parent_activity_datetime))\n  OR  (NOT content_provider_id <=> TRIM(content_provider_id))\n  OR  (NOT content_provider_name <=> TRIM(content_provider_name))\n  OR  (NOT network_operator_id <=> TRIM(network_operator_id))\n  OR  (NOT product_id <=> TRIM(product_id))\n  OR  (NOT product_name <=> TRIM(product_name))\n  OR  (NOT cp_product_id <=> TRIM(cp_product_id))\n  OR  (NOT price <=> TRIM(price))\n  OR  (NOT product_unit_count <=> TRIM(product_unit_count))\n  OR  (NOT discount <=> TRIM(discount))\n  OR  (NOT tax_amount <=> TRIM(tax_amount))\n  OR  (NOT gross_amount <=> TRIM(gross_amount))\n  OR  (NOT registration_datetime <=> TRIM(registration_datetime))\n  OR  (NOT account_id <=> TRIM(account_id))\n  OR  (NOT no_id_for_account <=> TRIM(no_id_for_account))\n  OR  (NOT phone_num <=> TRIM(phone_num))\n  OR  (NOT city <=> TRIM(city))\n  OR  (NOT county <=> TRIM(county))\n  OR  (NOT state <=> TRIM(state))\n  OR  (NOT country <=> TRIM(country))\n  OR  (NOT zip_code <=> TRIM(zip_code))\n  OR  (NOT first_name <=> TRIM(first_name))\n  OR  (NOT middle_name <=> TRIM(middle_name))\n  OR  (NOT last_name <=> TRIM(last_name))\n  OR  (NOT product_category <=> TRIM(product_category))\n  OR  (NOT refund_dispute_status <=> TRIM(refund_dispute_status))\n  OR  (NOT refund_request_reason <=> TRIM(refund_request_reason))\n  OR  (NOT refund_status_comment <=> TRIM(refund_status_comment))\n  OR  (NOT periodicity <=> TRIM(periodicity))\n  OR  (NOT start_delay <=> TRIM(start_delay))\n  OR  (NOT anticipated_settlement_date <=> TRIM(anticipated_settlement_date))\n  OR  (NOT instance_id <=> TRIM(instance_id))\n  OR  (NOT product_description <=> TRIM(product_description))\n  OR  (NOT tax_preference <=> TRIM(tax_preference))\n  OR  (NOT query_string <=> TRIM(query_string))\n  OR  (NOT purchase_external_identifier <=> TRIM(purchase_external_identifier))\n  OR  (NOT tax_location_type <=> TRIM(tax_location_type))\n  OR  (NOT tax_li_1_ordinal <=> TRIM(tax_li_1_ordinal))\n  OR  (NOT tax_li_1_city_name <=> TRIM(tax_li_1_city_name))\n  OR  (NOT tax_li_1_city_tax <=> TRIM(tax_li_1_city_tax))\n  OR  (NOT tax_li_1_city_tax_rate <=> TRIM(tax_li_1_city_tax_rate))\n  OR  (NOT tax_li_1_city_tax_type <=> TRIM(tax_li_1_city_tax_type))\n  OR  (NOT tax_li_1_county_code <=> TRIM(tax_li_1_county_code))\n  OR  (NOT tax_li_1_county_name <=> TRIM(tax_li_1_county_name))\n  OR  (NOT tax_li_1_county_tax <=> TRIM(tax_li_1_county_tax))\n  OR  (NOT tax_li_1_county_tax_rate <=> TRIM(tax_li_1_county_tax_rate))\n  OR  (NOT tax_li_1_county_tax_type <=> TRIM(tax_li_1_county_tax_type))\n  OR  (NOT tax_li_1_state_name <=> TRIM(tax_li_1_state_name))\n  OR  (NOT tax_li_1_state_tax <=> TRIM(tax_li_1_state_tax))\n  OR  (NOT tax_li_1_state_tax_rate <=> TRIM(tax_li_1_state_tax_rate))\n  OR  (NOT tax_li_1_state_tax_type <=> TRIM(tax_li_1_state_tax_type))\n  OR  (NOT tax_li_1_country_tax <=> TRIM(tax_li_1_country_tax))\n  OR  (NOT tax_li_1_country_tax_rate <=> TRIM(tax_li_1_country_tax_rate))\n  OR  (NOT tax_li_1_country_tax_type <=> TRIM(tax_li_1_country_tax_type))\n  OR  (NOT tax_li_1_external_tax_category <=> TRIM(tax_li_1_external_tax_category))\n  OR  (NOT tax_li_1_tax_category <=> TRIM(tax_li_1_tax_category))\n  OR  (NOT tax_li_1_zip <=> TRIM(tax_li_1_zip))\n  OR  (NOT tax_li_1_zip_extension <=> TRIM(tax_li_1_zip_extension))\n  OR  (NOT tax_li_2_ordinal <=> TRIM(tax_li_2_ordinal))\n  OR  (NOT tax_li_2_city_name <=> TRIM(tax_li_2_city_name))\n  OR  (NOT tax_li_2_city_tax <=> TRIM(tax_li_2_city_tax))\n  OR  (NOT tax_li_2_city_tax_rate <=> TRIM(tax_li_2_city_tax_rate))\n  OR  (NOT tax_li_2_city_tax_type <=> TRIM(tax_li_2_city_tax_type))\n  OR  (NOT tax_li_2_county_code <=> TRIM(tax_li_2_county_code))\n  OR  (NOT tax_li_2_county_name <=> TRIM(tax_li_2_county_name))\n  OR  (NOT tax_li_2_county_tax <=> TRIM(tax_li_2_county_tax))\n  OR  (NOT tax_li_2_county_tax_rate <=> TRIM(tax_li_2_county_tax_rate))\n  OR  (NOT tax_li_2_county_tax_type <=> TRIM(tax_li_2_county_tax_type))\n  OR  (NOT tax_li_2_state_name <=> TRIM(tax_li_2_state_name))\n  OR  (NOT tax_li_2_state_tax <=> TRIM(tax_li_2_state_tax))\n  OR  (NOT tax_li_2_state_tax_rate <=> TRIM(tax_li_2_state_tax_rate))\n  OR  (NOT tax_li_2_state_tax_type <=> TRIM(tax_li_2_state_tax_type))\n  OR  (NOT tax_li_2_country_tax <=> TRIM(tax_li_2_country_tax))\n  OR  (NOT tax_li_2_country_tax_rate <=> TRIM(tax_li_2_country_tax_rate))\n  OR  (NOT tax_li_2_country_tax_type <=> TRIM(tax_li_2_country_tax_type))\n  OR  (NOT tax_li_2_external_tax_category <=> TRIM(tax_li_2_external_tax_category))\n  OR  (NOT tax_li_2_tax_category <=> TRIM(tax_li_2_tax_category))\n  OR  (NOT tax_li_2_zip <=> TRIM(tax_li_2_zip))\n  OR  (NOT tax_li_2_zip_extension <=> TRIM(tax_li_2_zip_extension))\n  OR  (NOT merchant_name <=> TRIM(merchant_name))\n  OR  (NOT short_code <=> TRIM(short_code))\n  OR  (NOT campaign_id <=> TRIM(campaign_id))\n  OR  (NOT license_expire_datetime <=> TRIM(license_expire_datetime))\n  OR  (NOT offer_recurrence_flag <=> TRIM(offer_recurrence_flag))\n  OR  (NOT merchant_type <=> TRIM(merchant_type))\n  OR  (NOT device_make <=> TRIM(device_make))\n  OR  (NOT device_model <=> TRIM(device_model))\n  OR  (NOT referral_code <=> TRIM(referral_code))\n  OR  (NOT catalog_category <=> TRIM(catalog_category))\n  OR  (NOT portal_type <=> TRIM(portal_type))\n  OR  (NOT content_type <=> TRIM(content_type))\n  OR  (NOT credit_amount <=> TRIM(credit_amount))\n  OR  (NOT credit_currency <=> TRIM(credit_currency))\n  OR  (NOT extended_payment_type <=> TRIM(extended_payment_type))\n  OR  (NOT external_account_id <=> TRIM(external_account_id))\n  OR  (NOT refund_type <=> TRIM(refund_type))\n  OR  (NOT refund_requestor <=> TRIM(refund_requestor))\n  OR  (NOT refund_requestor_org <=> TRIM(refund_requestor_org))\n  OR  (NOT refund_approver <=> TRIM(refund_approver))\n  OR  (NOT refund_approver_org <=> TRIM(refund_approver_org))\n  OR  (NOT refund_request_method <=> TRIM(refund_request_method))\n  OR  (NOT refund_vendor_bulk_identifier <=> TRIM(refund_vendor_bulk_identifier))\n  OR  (NOT payment_type <=> TRIM(payment_type));\n\n'),(2,'qa_01',2,'write_log','\nINSERT INTO scrs_omd.raw_to_typed_change_log (file_id, file_row_id, etl_run_id, column_name, qa_screen, `pre`, `post`) \nSELECT file_id, file_row_id, etl_run_id, \'financial_event_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(financial_event_id) - CHAR_LENGTH(LTRIM(financial_event_id)) `pre`, CHAR_LENGTH(financial_event_id) - CHAR_LENGTH(RTRIM(financial_event_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT financial_event_id <=> TRIM(financial_event_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'post_datetime\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(post_datetime) - CHAR_LENGTH(LTRIM(post_datetime)) `pre`, CHAR_LENGTH(post_datetime) - CHAR_LENGTH(RTRIM(post_datetime)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT post_datetime <=> TRIM(post_datetime)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'activity_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(activity_id) - CHAR_LENGTH(LTRIM(activity_id)) `pre`, CHAR_LENGTH(activity_id) - CHAR_LENGTH(RTRIM(activity_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT activity_id <=> TRIM(activity_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'activity_datetime\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(activity_datetime) - CHAR_LENGTH(LTRIM(activity_datetime)) `pre`, CHAR_LENGTH(activity_datetime) - CHAR_LENGTH(RTRIM(activity_datetime)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT activity_datetime <=> TRIM(activity_datetime)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'activity_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(activity_type) - CHAR_LENGTH(LTRIM(activity_type)) `pre`, CHAR_LENGTH(activity_type) - CHAR_LENGTH(RTRIM(activity_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT activity_type <=> TRIM(activity_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'parent_financial_event_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(parent_financial_event_id) - CHAR_LENGTH(LTRIM(parent_financial_event_id)) `pre`, CHAR_LENGTH(parent_financial_event_id) - CHAR_LENGTH(RTRIM(parent_financial_event_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT parent_financial_event_id <=> TRIM(parent_financial_event_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'parent_activity_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(parent_activity_id) - CHAR_LENGTH(LTRIM(parent_activity_id)) `pre`, CHAR_LENGTH(parent_activity_id) - CHAR_LENGTH(RTRIM(parent_activity_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT parent_activity_id <=> TRIM(parent_activity_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'parent_activity_datetime\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(parent_activity_datetime) - CHAR_LENGTH(LTRIM(parent_activity_datetime)) `pre`, CHAR_LENGTH(parent_activity_datetime) - CHAR_LENGTH(RTRIM(parent_activity_datetime)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT parent_activity_datetime <=> TRIM(parent_activity_datetime)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'content_provider_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(content_provider_id) - CHAR_LENGTH(LTRIM(content_provider_id)) `pre`, CHAR_LENGTH(content_provider_id) - CHAR_LENGTH(RTRIM(content_provider_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT content_provider_id <=> TRIM(content_provider_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'content_provider_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(content_provider_name) - CHAR_LENGTH(LTRIM(content_provider_name)) `pre`, CHAR_LENGTH(content_provider_name) - CHAR_LENGTH(RTRIM(content_provider_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT content_provider_name <=> TRIM(content_provider_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'network_operator_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(network_operator_id) - CHAR_LENGTH(LTRIM(network_operator_id)) `pre`, CHAR_LENGTH(network_operator_id) - CHAR_LENGTH(RTRIM(network_operator_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT network_operator_id <=> TRIM(network_operator_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'product_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(product_id) - CHAR_LENGTH(LTRIM(product_id)) `pre`, CHAR_LENGTH(product_id) - CHAR_LENGTH(RTRIM(product_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT product_id <=> TRIM(product_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'product_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(product_name) - CHAR_LENGTH(LTRIM(product_name)) `pre`, CHAR_LENGTH(product_name) - CHAR_LENGTH(RTRIM(product_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT product_name <=> TRIM(product_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'cp_product_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(cp_product_id) - CHAR_LENGTH(LTRIM(cp_product_id)) `pre`, CHAR_LENGTH(cp_product_id) - CHAR_LENGTH(RTRIM(cp_product_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT cp_product_id <=> TRIM(cp_product_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'price\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(price) - CHAR_LENGTH(LTRIM(price)) `pre`, CHAR_LENGTH(price) - CHAR_LENGTH(RTRIM(price)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT price <=> TRIM(price)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'product_unit_count\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(product_unit_count) - CHAR_LENGTH(LTRIM(product_unit_count)) `pre`, CHAR_LENGTH(product_unit_count) - CHAR_LENGTH(RTRIM(product_unit_count)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT product_unit_count <=> TRIM(product_unit_count)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'discount\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(discount) - CHAR_LENGTH(LTRIM(discount)) `pre`, CHAR_LENGTH(discount) - CHAR_LENGTH(RTRIM(discount)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT discount <=> TRIM(discount)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_amount\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_amount) - CHAR_LENGTH(LTRIM(tax_amount)) `pre`, CHAR_LENGTH(tax_amount) - CHAR_LENGTH(RTRIM(tax_amount)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_amount <=> TRIM(tax_amount)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'gross_amount\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(gross_amount) - CHAR_LENGTH(LTRIM(gross_amount)) `pre`, CHAR_LENGTH(gross_amount) - CHAR_LENGTH(RTRIM(gross_amount)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT gross_amount <=> TRIM(gross_amount)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'registration_datetime\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(registration_datetime) - CHAR_LENGTH(LTRIM(registration_datetime)) `pre`, CHAR_LENGTH(registration_datetime) - CHAR_LENGTH(RTRIM(registration_datetime)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT registration_datetime <=> TRIM(registration_datetime)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'account_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(account_id) - CHAR_LENGTH(LTRIM(account_id)) `pre`, CHAR_LENGTH(account_id) - CHAR_LENGTH(RTRIM(account_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT account_id <=> TRIM(account_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'no_id_for_account\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(no_id_for_account) - CHAR_LENGTH(LTRIM(no_id_for_account)) `pre`, CHAR_LENGTH(no_id_for_account) - CHAR_LENGTH(RTRIM(no_id_for_account)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT no_id_for_account <=> TRIM(no_id_for_account)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'phone_num\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(phone_num) - CHAR_LENGTH(LTRIM(phone_num)) `pre`, CHAR_LENGTH(phone_num) - CHAR_LENGTH(RTRIM(phone_num)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT phone_num <=> TRIM(phone_num)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'city\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(city) - CHAR_LENGTH(LTRIM(city)) `pre`, CHAR_LENGTH(city) - CHAR_LENGTH(RTRIM(city)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT city <=> TRIM(city)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'county\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(county) - CHAR_LENGTH(LTRIM(county)) `pre`, CHAR_LENGTH(county) - CHAR_LENGTH(RTRIM(county)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT county <=> TRIM(county)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'state\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(state) - CHAR_LENGTH(LTRIM(state)) `pre`, CHAR_LENGTH(state) - CHAR_LENGTH(RTRIM(state)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT state <=> TRIM(state)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'country\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(country) - CHAR_LENGTH(LTRIM(country)) `pre`, CHAR_LENGTH(country) - CHAR_LENGTH(RTRIM(country)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT country <=> TRIM(country)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'zip_code\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(zip_code) - CHAR_LENGTH(LTRIM(zip_code)) `pre`, CHAR_LENGTH(zip_code) - CHAR_LENGTH(RTRIM(zip_code)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT zip_code <=> TRIM(zip_code)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'first_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(first_name) - CHAR_LENGTH(LTRIM(first_name)) `pre`, CHAR_LENGTH(first_name) - CHAR_LENGTH(RTRIM(first_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT first_name <=> TRIM(first_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'middle_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(middle_name) - CHAR_LENGTH(LTRIM(middle_name)) `pre`, CHAR_LENGTH(middle_name) - CHAR_LENGTH(RTRIM(middle_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT middle_name <=> TRIM(middle_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'last_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(last_name) - CHAR_LENGTH(LTRIM(last_name)) `pre`, CHAR_LENGTH(last_name) - CHAR_LENGTH(RTRIM(last_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT last_name <=> TRIM(last_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'product_category\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(product_category) - CHAR_LENGTH(LTRIM(product_category)) `pre`, CHAR_LENGTH(product_category) - CHAR_LENGTH(RTRIM(product_category)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT product_category <=> TRIM(product_category)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_dispute_status\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_dispute_status) - CHAR_LENGTH(LTRIM(refund_dispute_status)) `pre`, CHAR_LENGTH(refund_dispute_status) - CHAR_LENGTH(RTRIM(refund_dispute_status)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_dispute_status <=> TRIM(refund_dispute_status)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_request_reason\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_request_reason) - CHAR_LENGTH(LTRIM(refund_request_reason)) `pre`, CHAR_LENGTH(refund_request_reason) - CHAR_LENGTH(RTRIM(refund_request_reason)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_request_reason <=> TRIM(refund_request_reason)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_status_comment\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_status_comment) - CHAR_LENGTH(LTRIM(refund_status_comment)) `pre`, CHAR_LENGTH(refund_status_comment) - CHAR_LENGTH(RTRIM(refund_status_comment)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_status_comment <=> TRIM(refund_status_comment)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'periodicity\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(periodicity) - CHAR_LENGTH(LTRIM(periodicity)) `pre`, CHAR_LENGTH(periodicity) - CHAR_LENGTH(RTRIM(periodicity)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT periodicity <=> TRIM(periodicity)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'start_delay\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(start_delay) - CHAR_LENGTH(LTRIM(start_delay)) `pre`, CHAR_LENGTH(start_delay) - CHAR_LENGTH(RTRIM(start_delay)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT start_delay <=> TRIM(start_delay)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'anticipated_settlement_date\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(anticipated_settlement_date) - CHAR_LENGTH(LTRIM(anticipated_settlement_date)) `pre`, CHAR_LENGTH(anticipated_settlement_date) - CHAR_LENGTH(RTRIM(anticipated_settlement_date)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT anticipated_settlement_date <=> TRIM(anticipated_settlement_date)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'instance_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(instance_id) - CHAR_LENGTH(LTRIM(instance_id)) `pre`, CHAR_LENGTH(instance_id) - CHAR_LENGTH(RTRIM(instance_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT instance_id <=> TRIM(instance_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'product_description\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(product_description) - CHAR_LENGTH(LTRIM(product_description)) `pre`, CHAR_LENGTH(product_description) - CHAR_LENGTH(RTRIM(product_description)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT product_description <=> TRIM(product_description)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_preference\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_preference) - CHAR_LENGTH(LTRIM(tax_preference)) `pre`, CHAR_LENGTH(tax_preference) - CHAR_LENGTH(RTRIM(tax_preference)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_preference <=> TRIM(tax_preference)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'query_string\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(query_string) - CHAR_LENGTH(LTRIM(query_string)) `pre`, CHAR_LENGTH(query_string) - CHAR_LENGTH(RTRIM(query_string)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT query_string <=> TRIM(query_string)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'purchase_external_identifier\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(purchase_external_identifier) - CHAR_LENGTH(LTRIM(purchase_external_identifier)) `pre`, CHAR_LENGTH(purchase_external_identifier) - CHAR_LENGTH(RTRIM(purchase_external_identifier)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT purchase_external_identifier <=> TRIM(purchase_external_identifier)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_location_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_location_type) - CHAR_LENGTH(LTRIM(tax_location_type)) `pre`, CHAR_LENGTH(tax_location_type) - CHAR_LENGTH(RTRIM(tax_location_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_location_type <=> TRIM(tax_location_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_ordinal\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_ordinal) - CHAR_LENGTH(LTRIM(tax_li_1_ordinal)) `pre`, CHAR_LENGTH(tax_li_1_ordinal) - CHAR_LENGTH(RTRIM(tax_li_1_ordinal)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_ordinal <=> TRIM(tax_li_1_ordinal)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_city_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_city_name) - CHAR_LENGTH(LTRIM(tax_li_1_city_name)) `pre`, CHAR_LENGTH(tax_li_1_city_name) - CHAR_LENGTH(RTRIM(tax_li_1_city_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_city_name <=> TRIM(tax_li_1_city_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_city_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_city_tax) - CHAR_LENGTH(LTRIM(tax_li_1_city_tax)) `pre`, CHAR_LENGTH(tax_li_1_city_tax) - CHAR_LENGTH(RTRIM(tax_li_1_city_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_city_tax <=> TRIM(tax_li_1_city_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_city_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_city_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_1_city_tax_rate)) `pre`, CHAR_LENGTH(tax_li_1_city_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_1_city_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_city_tax_rate <=> TRIM(tax_li_1_city_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_city_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_city_tax_type) - CHAR_LENGTH(LTRIM(tax_li_1_city_tax_type)) `pre`, CHAR_LENGTH(tax_li_1_city_tax_type) - CHAR_LENGTH(RTRIM(tax_li_1_city_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_city_tax_type <=> TRIM(tax_li_1_city_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_county_code\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_county_code) - CHAR_LENGTH(LTRIM(tax_li_1_county_code)) `pre`, CHAR_LENGTH(tax_li_1_county_code) - CHAR_LENGTH(RTRIM(tax_li_1_county_code)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_county_code <=> TRIM(tax_li_1_county_code)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_county_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_county_name) - CHAR_LENGTH(LTRIM(tax_li_1_county_name)) `pre`, CHAR_LENGTH(tax_li_1_county_name) - CHAR_LENGTH(RTRIM(tax_li_1_county_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_county_name <=> TRIM(tax_li_1_county_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_county_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_county_tax) - CHAR_LENGTH(LTRIM(tax_li_1_county_tax)) `pre`, CHAR_LENGTH(tax_li_1_county_tax) - CHAR_LENGTH(RTRIM(tax_li_1_county_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_county_tax <=> TRIM(tax_li_1_county_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_county_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_county_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_1_county_tax_rate)) `pre`, CHAR_LENGTH(tax_li_1_county_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_1_county_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_county_tax_rate <=> TRIM(tax_li_1_county_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_county_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_county_tax_type) - CHAR_LENGTH(LTRIM(tax_li_1_county_tax_type)) `pre`, CHAR_LENGTH(tax_li_1_county_tax_type) - CHAR_LENGTH(RTRIM(tax_li_1_county_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_county_tax_type <=> TRIM(tax_li_1_county_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_state_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_state_name) - CHAR_LENGTH(LTRIM(tax_li_1_state_name)) `pre`, CHAR_LENGTH(tax_li_1_state_name) - CHAR_LENGTH(RTRIM(tax_li_1_state_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_state_name <=> TRIM(tax_li_1_state_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_state_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_state_tax) - CHAR_LENGTH(LTRIM(tax_li_1_state_tax)) `pre`, CHAR_LENGTH(tax_li_1_state_tax) - CHAR_LENGTH(RTRIM(tax_li_1_state_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_state_tax <=> TRIM(tax_li_1_state_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_state_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_state_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_1_state_tax_rate)) `pre`, CHAR_LENGTH(tax_li_1_state_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_1_state_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_state_tax_rate <=> TRIM(tax_li_1_state_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_state_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_state_tax_type) - CHAR_LENGTH(LTRIM(tax_li_1_state_tax_type)) `pre`, CHAR_LENGTH(tax_li_1_state_tax_type) - CHAR_LENGTH(RTRIM(tax_li_1_state_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_state_tax_type <=> TRIM(tax_li_1_state_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_country_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_country_tax) - CHAR_LENGTH(LTRIM(tax_li_1_country_tax)) `pre`, CHAR_LENGTH(tax_li_1_country_tax) - CHAR_LENGTH(RTRIM(tax_li_1_country_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_country_tax <=> TRIM(tax_li_1_country_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_country_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_country_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_1_country_tax_rate)) `pre`, CHAR_LENGTH(tax_li_1_country_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_1_country_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_country_tax_rate <=> TRIM(tax_li_1_country_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_country_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_country_tax_type) - CHAR_LENGTH(LTRIM(tax_li_1_country_tax_type)) `pre`, CHAR_LENGTH(tax_li_1_country_tax_type) - CHAR_LENGTH(RTRIM(tax_li_1_country_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_country_tax_type <=> TRIM(tax_li_1_country_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_external_tax_category\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_external_tax_category) - CHAR_LENGTH(LTRIM(tax_li_1_external_tax_category)) `pre`, CHAR_LENGTH(tax_li_1_external_tax_category) - CHAR_LENGTH(RTRIM(tax_li_1_external_tax_category)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_external_tax_category <=> TRIM(tax_li_1_external_tax_category)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_tax_category\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_tax_category) - CHAR_LENGTH(LTRIM(tax_li_1_tax_category)) `pre`, CHAR_LENGTH(tax_li_1_tax_category) - CHAR_LENGTH(RTRIM(tax_li_1_tax_category)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_tax_category <=> TRIM(tax_li_1_tax_category)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_zip\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_zip) - CHAR_LENGTH(LTRIM(tax_li_1_zip)) `pre`, CHAR_LENGTH(tax_li_1_zip) - CHAR_LENGTH(RTRIM(tax_li_1_zip)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_zip <=> TRIM(tax_li_1_zip)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_1_zip_extension\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_1_zip_extension) - CHAR_LENGTH(LTRIM(tax_li_1_zip_extension)) `pre`, CHAR_LENGTH(tax_li_1_zip_extension) - CHAR_LENGTH(RTRIM(tax_li_1_zip_extension)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_1_zip_extension <=> TRIM(tax_li_1_zip_extension)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_ordinal\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_ordinal) - CHAR_LENGTH(LTRIM(tax_li_2_ordinal)) `pre`, CHAR_LENGTH(tax_li_2_ordinal) - CHAR_LENGTH(RTRIM(tax_li_2_ordinal)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_ordinal <=> TRIM(tax_li_2_ordinal)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_city_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_city_name) - CHAR_LENGTH(LTRIM(tax_li_2_city_name)) `pre`, CHAR_LENGTH(tax_li_2_city_name) - CHAR_LENGTH(RTRIM(tax_li_2_city_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_city_name <=> TRIM(tax_li_2_city_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_city_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_city_tax) - CHAR_LENGTH(LTRIM(tax_li_2_city_tax)) `pre`, CHAR_LENGTH(tax_li_2_city_tax) - CHAR_LENGTH(RTRIM(tax_li_2_city_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_city_tax <=> TRIM(tax_li_2_city_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_city_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_city_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_2_city_tax_rate)) `pre`, CHAR_LENGTH(tax_li_2_city_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_2_city_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_city_tax_rate <=> TRIM(tax_li_2_city_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_city_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_city_tax_type) - CHAR_LENGTH(LTRIM(tax_li_2_city_tax_type)) `pre`, CHAR_LENGTH(tax_li_2_city_tax_type) - CHAR_LENGTH(RTRIM(tax_li_2_city_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_city_tax_type <=> TRIM(tax_li_2_city_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_county_code\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_county_code) - CHAR_LENGTH(LTRIM(tax_li_2_county_code)) `pre`, CHAR_LENGTH(tax_li_2_county_code) - CHAR_LENGTH(RTRIM(tax_li_2_county_code)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_county_code <=> TRIM(tax_li_2_county_code)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_county_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_county_name) - CHAR_LENGTH(LTRIM(tax_li_2_county_name)) `pre`, CHAR_LENGTH(tax_li_2_county_name) - CHAR_LENGTH(RTRIM(tax_li_2_county_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_county_name <=> TRIM(tax_li_2_county_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_county_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_county_tax) - CHAR_LENGTH(LTRIM(tax_li_2_county_tax)) `pre`, CHAR_LENGTH(tax_li_2_county_tax) - CHAR_LENGTH(RTRIM(tax_li_2_county_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_county_tax <=> TRIM(tax_li_2_county_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_county_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_county_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_2_county_tax_rate)) `pre`, CHAR_LENGTH(tax_li_2_county_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_2_county_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_county_tax_rate <=> TRIM(tax_li_2_county_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_county_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_county_tax_type) - CHAR_LENGTH(LTRIM(tax_li_2_county_tax_type)) `pre`, CHAR_LENGTH(tax_li_2_county_tax_type) - CHAR_LENGTH(RTRIM(tax_li_2_county_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_county_tax_type <=> TRIM(tax_li_2_county_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_state_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_state_name) - CHAR_LENGTH(LTRIM(tax_li_2_state_name)) `pre`, CHAR_LENGTH(tax_li_2_state_name) - CHAR_LENGTH(RTRIM(tax_li_2_state_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_state_name <=> TRIM(tax_li_2_state_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_state_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_state_tax) - CHAR_LENGTH(LTRIM(tax_li_2_state_tax)) `pre`, CHAR_LENGTH(tax_li_2_state_tax) - CHAR_LENGTH(RTRIM(tax_li_2_state_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_state_tax <=> TRIM(tax_li_2_state_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_state_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_state_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_2_state_tax_rate)) `pre`, CHAR_LENGTH(tax_li_2_state_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_2_state_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_state_tax_rate <=> TRIM(tax_li_2_state_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_state_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_state_tax_type) - CHAR_LENGTH(LTRIM(tax_li_2_state_tax_type)) `pre`, CHAR_LENGTH(tax_li_2_state_tax_type) - CHAR_LENGTH(RTRIM(tax_li_2_state_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_state_tax_type <=> TRIM(tax_li_2_state_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_country_tax\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_country_tax) - CHAR_LENGTH(LTRIM(tax_li_2_country_tax)) `pre`, CHAR_LENGTH(tax_li_2_country_tax) - CHAR_LENGTH(RTRIM(tax_li_2_country_tax)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_country_tax <=> TRIM(tax_li_2_country_tax)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_country_tax_rate\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_country_tax_rate) - CHAR_LENGTH(LTRIM(tax_li_2_country_tax_rate)) `pre`, CHAR_LENGTH(tax_li_2_country_tax_rate) - CHAR_LENGTH(RTRIM(tax_li_2_country_tax_rate)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_country_tax_rate <=> TRIM(tax_li_2_country_tax_rate)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_country_tax_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_country_tax_type) - CHAR_LENGTH(LTRIM(tax_li_2_country_tax_type)) `pre`, CHAR_LENGTH(tax_li_2_country_tax_type) - CHAR_LENGTH(RTRIM(tax_li_2_country_tax_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_country_tax_type <=> TRIM(tax_li_2_country_tax_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_external_tax_category\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_external_tax_category) - CHAR_LENGTH(LTRIM(tax_li_2_external_tax_category)) `pre`, CHAR_LENGTH(tax_li_2_external_tax_category) - CHAR_LENGTH(RTRIM(tax_li_2_external_tax_category)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_external_tax_category <=> TRIM(tax_li_2_external_tax_category)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_tax_category\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_tax_category) - CHAR_LENGTH(LTRIM(tax_li_2_tax_category)) `pre`, CHAR_LENGTH(tax_li_2_tax_category) - CHAR_LENGTH(RTRIM(tax_li_2_tax_category)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_tax_category <=> TRIM(tax_li_2_tax_category)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_zip\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_zip) - CHAR_LENGTH(LTRIM(tax_li_2_zip)) `pre`, CHAR_LENGTH(tax_li_2_zip) - CHAR_LENGTH(RTRIM(tax_li_2_zip)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_zip <=> TRIM(tax_li_2_zip)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_li_2_zip_extension\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(tax_li_2_zip_extension) - CHAR_LENGTH(LTRIM(tax_li_2_zip_extension)) `pre`, CHAR_LENGTH(tax_li_2_zip_extension) - CHAR_LENGTH(RTRIM(tax_li_2_zip_extension)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT tax_li_2_zip_extension <=> TRIM(tax_li_2_zip_extension)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'merchant_name\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(merchant_name) - CHAR_LENGTH(LTRIM(merchant_name)) `pre`, CHAR_LENGTH(merchant_name) - CHAR_LENGTH(RTRIM(merchant_name)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT merchant_name <=> TRIM(merchant_name)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'short_code\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(short_code) - CHAR_LENGTH(LTRIM(short_code)) `pre`, CHAR_LENGTH(short_code) - CHAR_LENGTH(RTRIM(short_code)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT short_code <=> TRIM(short_code)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'campaign_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(campaign_id) - CHAR_LENGTH(LTRIM(campaign_id)) `pre`, CHAR_LENGTH(campaign_id) - CHAR_LENGTH(RTRIM(campaign_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT campaign_id <=> TRIM(campaign_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'license_expire_datetime\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(license_expire_datetime) - CHAR_LENGTH(LTRIM(license_expire_datetime)) `pre`, CHAR_LENGTH(license_expire_datetime) - CHAR_LENGTH(RTRIM(license_expire_datetime)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT license_expire_datetime <=> TRIM(license_expire_datetime)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'offer_recurrence_flag\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(offer_recurrence_flag) - CHAR_LENGTH(LTRIM(offer_recurrence_flag)) `pre`, CHAR_LENGTH(offer_recurrence_flag) - CHAR_LENGTH(RTRIM(offer_recurrence_flag)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT offer_recurrence_flag <=> TRIM(offer_recurrence_flag)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'merchant_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(merchant_type) - CHAR_LENGTH(LTRIM(merchant_type)) `pre`, CHAR_LENGTH(merchant_type) - CHAR_LENGTH(RTRIM(merchant_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT merchant_type <=> TRIM(merchant_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'device_make\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(device_make) - CHAR_LENGTH(LTRIM(device_make)) `pre`, CHAR_LENGTH(device_make) - CHAR_LENGTH(RTRIM(device_make)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT device_make <=> TRIM(device_make)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'device_model\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(device_model) - CHAR_LENGTH(LTRIM(device_model)) `pre`, CHAR_LENGTH(device_model) - CHAR_LENGTH(RTRIM(device_model)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT device_model <=> TRIM(device_model)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'referral_code\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(referral_code) - CHAR_LENGTH(LTRIM(referral_code)) `pre`, CHAR_LENGTH(referral_code) - CHAR_LENGTH(RTRIM(referral_code)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT referral_code <=> TRIM(referral_code)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'catalog_category\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(catalog_category) - CHAR_LENGTH(LTRIM(catalog_category)) `pre`, CHAR_LENGTH(catalog_category) - CHAR_LENGTH(RTRIM(catalog_category)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT catalog_category <=> TRIM(catalog_category)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'portal_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(portal_type) - CHAR_LENGTH(LTRIM(portal_type)) `pre`, CHAR_LENGTH(portal_type) - CHAR_LENGTH(RTRIM(portal_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT portal_type <=> TRIM(portal_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'content_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(content_type) - CHAR_LENGTH(LTRIM(content_type)) `pre`, CHAR_LENGTH(content_type) - CHAR_LENGTH(RTRIM(content_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT content_type <=> TRIM(content_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'credit_amount\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(credit_amount) - CHAR_LENGTH(LTRIM(credit_amount)) `pre`, CHAR_LENGTH(credit_amount) - CHAR_LENGTH(RTRIM(credit_amount)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT credit_amount <=> TRIM(credit_amount)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'credit_currency\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(credit_currency) - CHAR_LENGTH(LTRIM(credit_currency)) `pre`, CHAR_LENGTH(credit_currency) - CHAR_LENGTH(RTRIM(credit_currency)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT credit_currency <=> TRIM(credit_currency)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'extended_payment_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(extended_payment_type) - CHAR_LENGTH(LTRIM(extended_payment_type)) `pre`, CHAR_LENGTH(extended_payment_type) - CHAR_LENGTH(RTRIM(extended_payment_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT extended_payment_type <=> TRIM(extended_payment_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'external_account_id\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(external_account_id) - CHAR_LENGTH(LTRIM(external_account_id)) `pre`, CHAR_LENGTH(external_account_id) - CHAR_LENGTH(RTRIM(external_account_id)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT external_account_id <=> TRIM(external_account_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_type) - CHAR_LENGTH(LTRIM(refund_type)) `pre`, CHAR_LENGTH(refund_type) - CHAR_LENGTH(RTRIM(refund_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_type <=> TRIM(refund_type)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_requestor\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_requestor) - CHAR_LENGTH(LTRIM(refund_requestor)) `pre`, CHAR_LENGTH(refund_requestor) - CHAR_LENGTH(RTRIM(refund_requestor)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_requestor <=> TRIM(refund_requestor)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_requestor_org\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_requestor_org) - CHAR_LENGTH(LTRIM(refund_requestor_org)) `pre`, CHAR_LENGTH(refund_requestor_org) - CHAR_LENGTH(RTRIM(refund_requestor_org)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_requestor_org <=> TRIM(refund_requestor_org)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_approver\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_approver) - CHAR_LENGTH(LTRIM(refund_approver)) `pre`, CHAR_LENGTH(refund_approver) - CHAR_LENGTH(RTRIM(refund_approver)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_approver <=> TRIM(refund_approver)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_approver_org\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_approver_org) - CHAR_LENGTH(LTRIM(refund_approver_org)) `pre`, CHAR_LENGTH(refund_approver_org) - CHAR_LENGTH(RTRIM(refund_approver_org)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_approver_org <=> TRIM(refund_approver_org)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_request_method\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_request_method) - CHAR_LENGTH(LTRIM(refund_request_method)) `pre`, CHAR_LENGTH(refund_request_method) - CHAR_LENGTH(RTRIM(refund_request_method)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_request_method <=> TRIM(refund_request_method)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'refund_vendor_bulk_identifier\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(refund_vendor_bulk_identifier) - CHAR_LENGTH(LTRIM(refund_vendor_bulk_identifier)) `pre`, CHAR_LENGTH(refund_vendor_bulk_identifier) - CHAR_LENGTH(RTRIM(refund_vendor_bulk_identifier)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT refund_vendor_bulk_identifier <=> TRIM(refund_vendor_bulk_identifier)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'payment_type\' column_name, \'qa_01\' qa_screen, CHAR_LENGTH(payment_type) - CHAR_LENGTH(LTRIM(payment_type)) `pre`, CHAR_LENGTH(payment_type) - CHAR_LENGTH(RTRIM(payment_type)) `post` FROM scrs_ods_stg.fte_clean WHERE qa_01 AND (NOT payment_type <=> TRIM(payment_type));\n\n'),(3,'qa_01',3,'update_table','\nUPDATE scrs_ods_stg.fte_clean SET \nfinancial_event_id = TRIM(financial_event_id),\npost_datetime = TRIM(post_datetime),\nactivity_id = TRIM(activity_id),\nactivity_datetime = TRIM(activity_datetime),\nactivity_type = TRIM(activity_type),\nparent_financial_event_id = TRIM(parent_financial_event_id),\nparent_activity_id = TRIM(parent_activity_id),\nparent_activity_datetime = TRIM(parent_activity_datetime),\ncontent_provider_id = TRIM(content_provider_id),\ncontent_provider_name = TRIM(content_provider_name),\nnetwork_operator_id = TRIM(network_operator_id),\nproduct_id = TRIM(product_id),\nproduct_name = TRIM(product_name),\ncp_product_id = TRIM(cp_product_id),\nprice = TRIM(price),\nproduct_unit_count = TRIM(product_unit_count),\ndiscount = TRIM(discount),\ntax_amount = TRIM(tax_amount),\ngross_amount = TRIM(gross_amount),\nregistration_datetime = TRIM(registration_datetime),\naccount_id = TRIM(account_id),\nno_id_for_account = TRIM(no_id_for_account),\nphone_num = TRIM(phone_num),\ncity = TRIM(city),\ncounty = TRIM(county),\nstate = TRIM(state),\ncountry = TRIM(country),\nzip_code = TRIM(zip_code),\nfirst_name = TRIM(first_name),\nmiddle_name = TRIM(middle_name),\nlast_name = TRIM(last_name),\nproduct_category = TRIM(product_category),\nrefund_dispute_status = TRIM(refund_dispute_status),\nrefund_request_reason = TRIM(refund_request_reason),\nrefund_status_comment = TRIM(refund_status_comment),\nperiodicity = TRIM(periodicity),\nstart_delay = TRIM(start_delay),\nanticipated_settlement_date = TRIM(anticipated_settlement_date),\ninstance_id = TRIM(instance_id),\nproduct_description = TRIM(product_description),\ntax_preference = TRIM(tax_preference),\nquery_string = TRIM(query_string),\npurchase_external_identifier = TRIM(purchase_external_identifier),\ntax_location_type = TRIM(tax_location_type),\ntax_li_1_ordinal = TRIM(tax_li_1_ordinal),\ntax_li_1_city_name = TRIM(tax_li_1_city_name),\ntax_li_1_city_tax = TRIM(tax_li_1_city_tax),\ntax_li_1_city_tax_rate = TRIM(tax_li_1_city_tax_rate),\ntax_li_1_city_tax_type = TRIM(tax_li_1_city_tax_type),\ntax_li_1_county_code = TRIM(tax_li_1_county_code),\ntax_li_1_county_name = TRIM(tax_li_1_county_name),\ntax_li_1_county_tax = TRIM(tax_li_1_county_tax),\ntax_li_1_county_tax_rate = TRIM(tax_li_1_county_tax_rate),\ntax_li_1_county_tax_type = TRIM(tax_li_1_county_tax_type),\ntax_li_1_state_name = TRIM(tax_li_1_state_name),\ntax_li_1_state_tax = TRIM(tax_li_1_state_tax),\ntax_li_1_state_tax_rate = TRIM(tax_li_1_state_tax_rate),\ntax_li_1_state_tax_type = TRIM(tax_li_1_state_tax_type),\ntax_li_1_country_tax = TRIM(tax_li_1_country_tax),\ntax_li_1_country_tax_rate = TRIM(tax_li_1_country_tax_rate),\ntax_li_1_country_tax_type = TRIM(tax_li_1_country_tax_type),\ntax_li_1_external_tax_category = TRIM(tax_li_1_external_tax_category),\ntax_li_1_tax_category = TRIM(tax_li_1_tax_category),\ntax_li_1_zip = TRIM(tax_li_1_zip),\ntax_li_1_zip_extension = TRIM(tax_li_1_zip_extension),\ntax_li_2_ordinal = TRIM(tax_li_2_ordinal),\ntax_li_2_city_name = TRIM(tax_li_2_city_name),\ntax_li_2_city_tax = TRIM(tax_li_2_city_tax),\ntax_li_2_city_tax_rate = TRIM(tax_li_2_city_tax_rate),\ntax_li_2_city_tax_type = TRIM(tax_li_2_city_tax_type),\ntax_li_2_county_code = TRIM(tax_li_2_county_code),\ntax_li_2_county_name = TRIM(tax_li_2_county_name),\ntax_li_2_county_tax = TRIM(tax_li_2_county_tax),\ntax_li_2_county_tax_rate = TRIM(tax_li_2_county_tax_rate),\ntax_li_2_county_tax_type = TRIM(tax_li_2_county_tax_type),\ntax_li_2_state_name = TRIM(tax_li_2_state_name),\ntax_li_2_state_tax = TRIM(tax_li_2_state_tax),\ntax_li_2_state_tax_rate = TRIM(tax_li_2_state_tax_rate),\ntax_li_2_state_tax_type = TRIM(tax_li_2_state_tax_type),\ntax_li_2_country_tax = TRIM(tax_li_2_country_tax),\ntax_li_2_country_tax_rate = TRIM(tax_li_2_country_tax_rate),\ntax_li_2_country_tax_type = TRIM(tax_li_2_country_tax_type),\ntax_li_2_external_tax_category = TRIM(tax_li_2_external_tax_category),\ntax_li_2_tax_category = TRIM(tax_li_2_tax_category),\ntax_li_2_zip = TRIM(tax_li_2_zip),\ntax_li_2_zip_extension = TRIM(tax_li_2_zip_extension),\nmerchant_name = TRIM(merchant_name),\nshort_code = TRIM(short_code),\ncampaign_id = TRIM(campaign_id),\nlicense_expire_datetime = TRIM(license_expire_datetime),\noffer_recurrence_flag = TRIM(offer_recurrence_flag),\nmerchant_type = TRIM(merchant_type),\ndevice_make = TRIM(device_make),\ndevice_model = TRIM(device_model),\nreferral_code = TRIM(referral_code),\ncatalog_category = TRIM(catalog_category),\nportal_type = TRIM(portal_type),\ncontent_type = TRIM(content_type),\ncredit_amount = TRIM(credit_amount),\ncredit_currency = TRIM(credit_currency),\nextended_payment_type = TRIM(extended_payment_type),\nexternal_account_id = TRIM(external_account_id),\nrefund_type = TRIM(refund_type),\nrefund_requestor = TRIM(refund_requestor),\nrefund_requestor_org = TRIM(refund_requestor_org),\nrefund_approver = TRIM(refund_approver),\nrefund_approver_org = TRIM(refund_approver_org),\nrefund_request_method = TRIM(refund_request_method),\nrefund_vendor_bulk_identifier = TRIM(refund_vendor_bulk_identifier),\npayment_type = TRIM(payment_type) \nWHERE qa_01;\n\n'),(4,'qa_02',1,'set_flag','\nUPDATE scrs_ods_stg.fte_clean SET qa_02 = 1 \nWHERE (financial_event_id <=> \'\')\n  OR  (post_datetime <=> \'\')\n  OR  (activity_datetime <=> \'\')\n  OR  (parent_financial_event_id <=> \'\')\n  OR  (parent_activity_datetime <=> \'\')\n  OR  (price <=> \'\')\n  OR  (product_unit_count <=> \'\')\n  OR  (discount <=> \'\')\n  OR  (tax_amount <=> \'\')\n  OR  (gross_amount <=> \'\')\n  OR  (registration_datetime <=> \'\')\n  OR  (start_delay <=> \'\')\n  OR  (anticipated_settlement_date <=> \'\')\n  OR  (short_code <=> \'\')\n  OR  (campaign_id <=> \'\')\n  OR  (license_expire_datetime <=> \'\');\n\n'),(5,'qa_02',2,'write_log','\nINSERT INTO scrs_omd.raw_to_typed_change_log (file_id, file_row_id, etl_run_id, column_name, qa_screen, `pre`, `post`) \nSELECT file_id, file_row_id, etl_run_id, \'financial_event_id\' column_name, \'qa_02\' qa_screen, financial_event_id `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (financial_event_id <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'post_datetime\' column_name, \'qa_02\' qa_screen, post_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (post_datetime <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'activity_datetime\' column_name, \'qa_02\' qa_screen, activity_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (activity_datetime <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'parent_financial_event_id\' column_name, \'qa_02\' qa_screen, parent_financial_event_id `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (parent_financial_event_id <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'parent_activity_datetime\' column_name, \'qa_02\' qa_screen, parent_activity_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (parent_activity_datetime <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'price\' column_name, \'qa_02\' qa_screen, price `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (price <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'product_unit_count\' column_name, \'qa_02\' qa_screen, product_unit_count `pre`, \'0\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (product_unit_count <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'discount\' column_name, \'qa_02\' qa_screen, discount `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (discount <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_amount\' column_name, \'qa_02\' qa_screen, tax_amount `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (tax_amount <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'gross_amount\' column_name, \'qa_02\' qa_screen, gross_amount `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (gross_amount <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'registration_datetime\' column_name, \'qa_02\' qa_screen, registration_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (registration_datetime <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'start_delay\' column_name, \'qa_02\' qa_screen, start_delay `pre`, \'0\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (start_delay <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'anticipated_settlement_date\' column_name, \'qa_02\' qa_screen, anticipated_settlement_date `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (anticipated_settlement_date <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'short_code\' column_name, \'qa_02\' qa_screen, short_code `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (short_code <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'campaign_id\' column_name, \'qa_02\' qa_screen, campaign_id `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (campaign_id <=> \'\') UNION \nSELECT file_id, file_row_id, etl_run_id, \'license_expire_datetime\' column_name, \'qa_02\' qa_screen, license_expire_datetime `pre`, \'03/03/1885 12:00:00 AM\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_02 AND (license_expire_datetime <=> \'\');\n\n'),(6,'qa_02',3,'update_table','\nUPDATE scrs_ods_stg.fte_clean SET \nfinancial_event_id = CASE WHEN (financial_event_id <=> \'\') THEN \'-1\' ELSE financial_event_id END,\npost_datetime = CASE WHEN (post_datetime <=> \'\') THEN \'03/03/1885 00:00:00\' ELSE post_datetime END,\nactivity_datetime = CASE WHEN (activity_datetime <=> \'\') THEN \'03/03/1885 00:00:00\' ELSE activity_datetime END,\nparent_financial_event_id = CASE WHEN (parent_financial_event_id <=> \'\') THEN \'-1\' ELSE parent_financial_event_id END,\nparent_activity_datetime = CASE WHEN (parent_activity_datetime <=> \'\') THEN \'03/03/1885 00:00:00\' ELSE parent_activity_datetime END,\nprice = CASE WHEN (price <=> \'\') THEN \'0.00\' ELSE price END,\nproduct_unit_count = CASE WHEN (product_unit_count <=> \'\') THEN \'0\' ELSE product_unit_count END,\ndiscount = CASE WHEN (discount <=> \'\') THEN \'0.00\' ELSE discount END,\ntax_amount = CASE WHEN (tax_amount <=> \'\') THEN \'0.00\' ELSE tax_amount END,\ngross_amount = CASE WHEN (gross_amount <=> \'\') THEN \'0.00\' ELSE gross_amount END,\nregistration_datetime = CASE WHEN (registration_datetime <=> \'\') THEN \'03/03/1885 00:00:00\' ELSE registration_datetime END,\nstart_delay = CASE WHEN (start_delay <=> \'\') THEN \'0\' ELSE start_delay END,\nanticipated_settlement_date = CASE WHEN (anticipated_settlement_date <=> \'\') THEN \'03/03/1885 00:00:00\' ELSE anticipated_settlement_date END,\nshort_code = CASE WHEN (short_code <=> \'\') THEN \'-1\' ELSE short_code END,\ncampaign_id = CASE WHEN (campaign_id <=> \'\') THEN \'-1\' ELSE campaign_id END,\nlicense_expire_datetime = CASE WHEN (license_expire_datetime <=> \'\') THEN \'03/03/1885 12:00:00 AM\' ELSE license_expire_datetime END \nWHERE qa_02;\n\n'),(7,'qa_03',1,'set_flag','\nUPDATE scrs_ods_stg.fte_clean SET qa_03 = 1 \nWHERE (NOT (file_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(file_id AS DECIMAL(10,0)) <=> file_id))\n  OR  (NOT (etl_run_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(etl_run_id AS DECIMAL(10,0)) <=> etl_run_id))\n  OR  (NOT (file_row_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(file_row_id AS DECIMAL(10,0)) <=> file_row_id))\n  OR  (NOT (financial_event_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(financial_event_id AS DECIMAL(19,0)) <=> financial_event_id))\n  OR  (NOT (parent_financial_event_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(parent_financial_event_id AS DECIMAL(19,0)) <=> parent_financial_event_id))\n  OR  (NOT (price REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(price AS DECIMAL(11,2)) <=> price))\n  OR  (NOT (product_unit_count REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(product_unit_count AS DECIMAL(10,0)) <=> product_unit_count))\n  OR  (NOT (discount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(discount AS DECIMAL(11,2)) <=> discount))\n  OR  (NOT (tax_amount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(tax_amount AS DECIMAL(11,2)) <=> tax_amount))\n  OR  (NOT (gross_amount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(gross_amount AS DECIMAL(11,2)) <=> gross_amount))\n  OR  (NOT (start_delay REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(start_delay AS DECIMAL(10,0)) <=> start_delay))\n  OR  (NOT (short_code REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(short_code AS DECIMAL(20,0)) <=> short_code))\n  OR  (NOT (campaign_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(campaign_id AS DECIMAL(20,0)) <=> campaign_id));\n\n'),(8,'qa_03',2,'write_log','\nINSERT INTO scrs_omd.raw_to_typed_change_log (file_id, file_row_id, etl_run_id, column_name, qa_screen, `pre`, `post`) \nSELECT file_id, file_row_id, etl_run_id, \'file_id\' column_name, \'qa_03\' qa_screen, file_id `pre`, NULL `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (file_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(file_id AS DECIMAL(10,0)) <=> file_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'etl_run_id\' column_name, \'qa_03\' qa_screen, etl_run_id `pre`, NULL `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (etl_run_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(etl_run_id AS DECIMAL(10,0)) <=> etl_run_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'file_row_id\' column_name, \'qa_03\' qa_screen, file_row_id `pre`, NULL `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (file_row_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(file_row_id AS DECIMAL(10,0)) <=> file_row_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'financial_event_id\' column_name, \'qa_03\' qa_screen, financial_event_id `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (financial_event_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(financial_event_id AS DECIMAL(19,0)) <=> financial_event_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'parent_financial_event_id\' column_name, \'qa_03\' qa_screen, parent_financial_event_id `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (parent_financial_event_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(parent_financial_event_id AS DECIMAL(19,0)) <=> parent_financial_event_id)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'price\' column_name, \'qa_03\' qa_screen, price `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (price REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(price AS DECIMAL(11,2)) <=> price)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'product_unit_count\' column_name, \'qa_03\' qa_screen, product_unit_count `pre`, \'0\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (product_unit_count REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(product_unit_count AS DECIMAL(10,0)) <=> product_unit_count)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'discount\' column_name, \'qa_03\' qa_screen, discount `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (discount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(discount AS DECIMAL(11,2)) <=> discount)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'tax_amount\' column_name, \'qa_03\' qa_screen, tax_amount `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (tax_amount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(tax_amount AS DECIMAL(11,2)) <=> tax_amount)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'gross_amount\' column_name, \'qa_03\' qa_screen, gross_amount `pre`, \'0.00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (gross_amount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(gross_amount AS DECIMAL(11,2)) <=> gross_amount)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'start_delay\' column_name, \'qa_03\' qa_screen, start_delay `pre`, \'0\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (start_delay REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(start_delay AS DECIMAL(10,0)) <=> start_delay)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'short_code\' column_name, \'qa_03\' qa_screen, short_code `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (short_code REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(short_code AS DECIMAL(20,0)) <=> short_code)) UNION \nSELECT file_id, file_row_id, etl_run_id, \'campaign_id\' column_name, \'qa_03\' qa_screen, campaign_id `pre`, \'-1\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_03 AND (NOT (campaign_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(campaign_id AS DECIMAL(20,0)) <=> campaign_id));\n\n'),(9,'qa_03',3,'update_table','\nUPDATE scrs_ods_stg.fte_clean SET \nfile_id = CASE WHEN (NOT (file_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(file_id AS DECIMAL(10,0)) <=> file_id)) THEN NULL ELSE file_id END,\netl_run_id = CASE WHEN (NOT (etl_run_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(etl_run_id AS DECIMAL(10,0)) <=> etl_run_id)) THEN NULL ELSE etl_run_id END,\nfile_row_id = CASE WHEN (NOT (file_row_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(file_row_id AS DECIMAL(10,0)) <=> file_row_id)) THEN NULL ELSE file_row_id END,\nfinancial_event_id = CASE WHEN (NOT (financial_event_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(financial_event_id AS DECIMAL(19,0)) <=> financial_event_id)) THEN \'-1\' ELSE financial_event_id END,\nparent_financial_event_id = CASE WHEN (NOT (parent_financial_event_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(parent_financial_event_id AS DECIMAL(19,0)) <=> parent_financial_event_id)) THEN \'-1\' ELSE parent_financial_event_id END,\nprice = CASE WHEN (NOT (price REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(price AS DECIMAL(11,2)) <=> price)) THEN \'0.00\' ELSE price END,\nproduct_unit_count = CASE WHEN (NOT (product_unit_count REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(product_unit_count AS DECIMAL(10,0)) <=> product_unit_count)) THEN \'0\' ELSE product_unit_count END,\ndiscount = CASE WHEN (NOT (discount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(discount AS DECIMAL(11,2)) <=> discount)) THEN \'0.00\' ELSE discount END,\ntax_amount = CASE WHEN (NOT (tax_amount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(tax_amount AS DECIMAL(11,2)) <=> tax_amount)) THEN \'0.00\' ELSE tax_amount END,\ngross_amount = CASE WHEN (NOT (gross_amount REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(gross_amount AS DECIMAL(11,2)) <=> gross_amount)) THEN \'0.00\' ELSE gross_amount END,\nstart_delay = CASE WHEN (NOT (start_delay REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(start_delay AS DECIMAL(10,0)) <=> start_delay)) THEN \'0\' ELSE start_delay END,\nshort_code = CASE WHEN (NOT (short_code REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(short_code AS DECIMAL(20,0)) <=> short_code)) THEN \'-1\' ELSE short_code END,\ncampaign_id = CASE WHEN (NOT (campaign_id REGEXP \'^(([+-]?[0-9]*.?[0-9]*e?[+-]?[0-9]+)|(0x[0-9A-F]+))$\' AND CAST(campaign_id AS DECIMAL(20,0)) <=> campaign_id)) THEN \'-1\' ELSE campaign_id END \nWHERE qa_03;\n\n'),(10,'qa_04',1,'set_flag','\nUPDATE scrs_ods_stg.fte_clean SET qa_04 = 1 \nWHERE (post_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(post_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\'))\n  OR  (activity_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(activity_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\'))\n  OR  (parent_activity_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(parent_activity_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\'))\n  OR  (registration_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(registration_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\'))\n  OR  (anticipated_settlement_date != IFNULL(DATE_FORMAT(DATE(STR_TO_DATE(anticipated_settlement_date,\'%m/%d/%Y %T\')),\'%m/%d/%Y %T\'),\'0\'))\n  OR  (license_expire_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(license_expire_datetime,\'%d/%m/%Y %r\'),\'%d/%m/%Y %r\'),\'0\'));\n\n'),(11,'qa_04',2,'write_log','\nINSERT INTO scrs_omd.raw_to_typed_change_log (file_id, file_row_id, etl_run_id, column_name, qa_screen, `pre`, `post`) \nSELECT file_id, file_row_id, etl_run_id, \'post_datetime\' column_name, \'qa_04\' qa_screen, post_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_04 AND (post_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(post_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) UNION \nSELECT file_id, file_row_id, etl_run_id, \'activity_datetime\' column_name, \'qa_04\' qa_screen, activity_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_04 AND (activity_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(activity_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) UNION \nSELECT file_id, file_row_id, etl_run_id, \'parent_activity_datetime\' column_name, \'qa_04\' qa_screen, parent_activity_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_04 AND (parent_activity_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(parent_activity_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) UNION \nSELECT file_id, file_row_id, etl_run_id, \'registration_datetime\' column_name, \'qa_04\' qa_screen, registration_datetime `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_04 AND (registration_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(registration_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) UNION \nSELECT file_id, file_row_id, etl_run_id, \'anticipated_settlement_date\' column_name, \'qa_04\' qa_screen, anticipated_settlement_date `pre`, \'03/03/1885 00:00:00\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_04 AND (anticipated_settlement_date != IFNULL(DATE_FORMAT(DATE(STR_TO_DATE(anticipated_settlement_date,\'%m/%d/%Y %T\')),\'%m/%d/%Y %T\'),\'0\')) UNION \nSELECT file_id, file_row_id, etl_run_id, \'license_expire_datetime\' column_name, \'qa_04\' qa_screen, license_expire_datetime `pre`, \'03/03/1885 12:00:00 AM\' `post` FROM scrs_ods_stg.fte_clean WHERE qa_04 AND (license_expire_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(license_expire_datetime,\'%d/%m/%Y %r\'),\'%d/%m/%Y %r\'),\'0\'));\n\n'),(12,'qa_04',3,'update_table','\nUPDATE scrs_ods_stg.fte_clean SET \npost_datetime = CASE WHEN (post_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(post_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) THEN \'03/03/1885 00:00:00\' ELSE post_datetime END,\nactivity_datetime = CASE WHEN (activity_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(activity_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) THEN \'03/03/1885 00:00:00\' ELSE activity_datetime END,\nparent_activity_datetime = CASE WHEN (parent_activity_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(parent_activity_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) THEN \'03/03/1885 00:00:00\' ELSE parent_activity_datetime END,\nregistration_datetime = CASE WHEN (registration_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(registration_datetime,\'%m/%d/%Y %T\'),\'%m/%d/%Y %T\'),\'0\')) THEN \'03/03/1885 00:00:00\' ELSE registration_datetime END,\nanticipated_settlement_date = CASE WHEN (anticipated_settlement_date != IFNULL(DATE_FORMAT(DATE(STR_TO_DATE(anticipated_settlement_date,\'%m/%d/%Y %T\')),\'%m/%d/%Y %T\'),\'0\')) THEN \'03/03/1885 00:00:00\' ELSE anticipated_settlement_date END,\nlicense_expire_datetime = CASE WHEN (license_expire_datetime != IFNULL(DATE_FORMAT(STR_TO_DATE(license_expire_datetime,\'%d/%m/%Y %r\'),\'%d/%m/%Y %r\'),\'0\')) THEN \'03/03/1885 12:00:00 AM\' ELSE license_expire_datetime END \nWHERE qa_04;\n\n');

/*Table structure for table `sys_data_source` */

DROP TABLE IF EXISTS `sys_data_source`;

CREATE TABLE `sys_data_source` (
  `ds_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_name` varchar(64) NOT NULL DEFAULT '',
  `ds_group` varchar(30) DEFAULT NULL,
  `source_system` varchar(64) NOT NULL DEFAULT '',
  `sub_type` varchar(64) NOT NULL DEFAULT '',
  `ds_folder` varchar(64) NOT NULL DEFAULT '',
  `path_prefix` varchar(100) DEFAULT NULL,
  `raw_load_table` varchar(64) NOT NULL DEFAULT '',
  `clean_table` varchar(64) NOT NULL DEFAULT '',
  `typed_table` varchar(64) NOT NULL DEFAULT '',
  `ods_table` varchar(64) NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`ds_id`),
  UNIQUE KEY `ds_name` (`ds_name`),
  KEY `typed_table` (`typed_table`),
  KEY `raw_load_table` (`raw_load_table`),
  KEY `source_system` (`source_system`),
  CONSTRAINT `sys_data_source_ibfk_1` FOREIGN KEY (`source_system`) REFERENCES `source_system` (`source_system`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `sys_data_source` */

insert  into `sys_data_source`(`ds_id`,`ds_name`,`ds_group`,`source_system`,`sub_type`,`ds_folder`,`path_prefix`,`raw_load_table`,`clean_table`,`typed_table`,`ods_table`,`end_date`) values (1,'fte','FTE','QPASS','','FTE','E:\\LANDING_ZONE\\FTE\\fte_fixed\\','fte_load_raw','fte_clean','fte_typed','fte','9999-12-31'),(2,'cms_agg','CMS_Full','CMS','full_extract','CMS/full_extract/cms_agg',NULL,'cms_agg_load_raw','cms_agg_clean','cms_agg_typed','cms_agg','9999-12-31'),(3,'cms_cp','CMS_Full','CMS','full_extract','CMS/full_extract/cms_cp',NULL,'cms_cp_load_raw','cms_cp_clean','cms_cp_typed','cms_cp','9999-12-31'),(4,'cms_dcm_report','CMS_Full','CMS','full_extract','CMS/full_extract/cms_dcm_report',NULL,'cms_dcm_report_load_raw','cms_dcm_report_clean','cms_dcm_report_typed','cms_dcm_report','9999-12-31'),(5,'cms_history_req','CMS_Full','CMS','full_extract','CMS/full_extract/cms_history_req',NULL,'cms_history_req_load_raw','cms_history_req_clean','cms_history_req_typed','cms_history_req','9999-12-31'),(6,'cms_history_sc','CMS_Full','CMS','full_extract','CMS/full_extract/cms_history_sc',NULL,'cms_history_sc_load_raw','cms_history_sc_clean','cms_history_sc_typed','cms_history_sc','9999-12-31'),(7,'cms_qpass','CMS','CMS','full_extract','CMS/full_extract/cms_qpass','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_qpass\\','cms_qpass_load_raw','cms_qpass_clean','cms_qpass_typed','cms_qpass','9999-12-31'),(8,'cms_req','CMS_Full','CMS','full_extract','CMS/full_extract/cms_req',NULL,'cms_req_load_raw','cms_req_clean','cms_req_typed','cms_req','9999-12-31'),(9,'cms_sc','CMS_Full','CMS','full_extract','CMS/full_extract/cms_sc',NULL,'cms_sc_load_raw','cms_sc_clean','cms_sc_typed','cms_sc','9999-12-31'),(10,'cms_sc_bind','CMS_Full','CMS','full_extract','CMS/full_extract/cms_sc_bind',NULL,'cms_sc_bind_load_raw','cms_sc_bind_clean','cms_sc_bind_typed','cms_sc_bind','9999-12-31'),(11,'cms_sc_isg_mms','CMS_Full','CMS','full_extract','CMS/full_extract/cms_sc_isg_mms',NULL,'cms_sc_isg_mms_load_raw','cms_sc_isg_mms_clean','cms_sc_isg_mms_typed','cms_sc_isg_mms','9999-12-31'),(12,'cms_sc_isg_sms','CMS_Full','CMS','full_extract','CMS/full_extract/cms_sc_isg_sms',NULL,'cms_sc_isg_sms_load_raw','cms_sc_isg_sms_clean','cms_sc_isg_sms_typed','cms_sc_isg_sms','9999-12-31'),(13,'cms_sc_omg_sms','CMS_Full','CMS','full_extract','CMS/full_extract/cms_sc_omg_sms',NULL,'cms_sc_omg_sms_load_raw','cms_sc_omg_sms_clean','cms_sc_omg_sms_typed','cms_sc_omg_sms','9999-12-31'),(14,'cms_sc_price','CMS_Full','CMS','full_extract','CMS/full_extract/cms_sc_price',NULL,'cms_sc_price_load_raw','cms_sc_price_clean','cms_sc_price_typed','cms_sc_price','9999-12-31'),(17,'cms_agg_incr','CMS','CMS','incremental','CMS/incremental/cms_agg_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\aggregators\\','cms_agg_load_raw','cms_agg_clean','cms_agg_typed','cms_agg_incr','9999-12-31'),(18,'cms_cp_incr','CMS','CMS','incremental','CMS/incremental/cms_cp_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\contentproviders_incr\\','cms_cp_load_raw','cms_cp_clean','cms_cp_typed','cms_cp_incr','9999-12-31'),(19,'cms_dcm_report_incr','CMS','CMS','incremental','CMS/incremental/cms_dcm_report_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_dcm_report_incr\\','cms_dcm_report_load_raw','cms_dcm_report_clean','cms_dcm_report_typed','cms_dcm_report_incr','9999-12-31'),(20,'cms_history_req_incr','CMS','CMS','incremental','CMS/incremental/cms_history_req_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\history_campaign_incr\\','cms_history_req_load_raw','cms_history_req_clean','cms_history_req_typed','cms_history_req_incr','9999-12-31'),(21,'cms_history_sc_incr','CMS','CMS','incremental','CMS/incremental/cms_history_sc_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\history_sc_incr\\','cms_history_sc_load_raw','cms_history_sc_clean','cms_history_sc_typed','cms_history_sc_incr','9999-12-31'),(22,'cms_req_incr','CMS','CMS','incremental','CMS/incremental/cms_req_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_req_incr\\','cms_req_load_raw','cms_req_clean','cms_req_typed','cms_req_incr','9999-12-31'),(23,'cms_sc_bind_incr','CMS','CMS','incremental','CMS/incremental/cms_sc_bind_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\sc_bind_incr\\','cms_sc_bind_load_raw','cms_sc_bind_clean','cms_sc_bind_typed','cms_sc_bind_incr','9999-12-31'),(24,'cms_sc_incr','CMS','CMS','incremental','CMS/incremental/cms_sc_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_incr\\','cms_sc_load_raw','cms_sc_clean','cms_sc_typed','cms_sc_incr','9999-12-31'),(25,'cms_sc_isg_mms_incr','CMS','CMS','incremental','CMS/incremental/cms_sc_isg_mms_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_isg_mms_incr\\','cms_sc_isg_mms_load_raw','cms_sc_isg_mms_clean','cms_sc_isg_mms_typed','cms_sc_isg_mms_incr','9999-12-31'),(26,'cms_sc_isg_sms_incr','CMS','CMS','incremental','CMS/incremental/cms_sc_isg_sms_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_isg_sms_incr\\','cms_sc_isg_sms_load_raw','cms_sc_isg_sms_clean','cms_sc_isg_sms_typed','cms_sc_isg_sms_incr','9999-12-31'),(27,'cms_sc_omg_sms_incr','CMS','CMS','incremental','CMS/incremental/cms_sc_omg_sms_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_omg_sms_incr\\','cms_sc_omg_sms_load_raw','cms_sc_omg_sms_clean','cms_sc_omg_sms_typed','cms_sc_omg_sms_incr','9999-12-31'),(28,'cms_sc_price_incr','CMS','CMS','incremental','CMS/incremental/cms_sc_price_incr','E:\\LANDING_ZONE\\CMS\\CMS_FIXED\\cms_sc_price_incr\\','cms_sc_price_load_raw','cms_sc_price_clean','cms_sc_price_typed','cms_sc_price_incr','9999-12-31'),(32,'apigee','Apigee','Apigee','','Apigee',NULL,'apigee_load_raw','apigee_clean','apigee_typed','apigee','9999-12-31'),(33,'cdr','CDR','CDR','','CDR',NULL,'cdr_load_raw','cdr_clean','cdr_typed','cdr','9999-12-31'),(34,'csca_approved','CSCA','CSCA','approved','CSCA/approved',NULL,'csca_approved_load_raw','csca_approved_clean','csca_approved_typed','csca_approved','9999-12-31'),(35,'csca_pending','CSCA','CSCA','pending','CSCA/pending',NULL,'csca_pending_load_raw','csca_pending_clean','csca_pending_typed','csca_pending','9999-12-31'),(36,'eag_mms','EAG','EAG','','EAG/eag_mms',NULL,'eag_mms_load_raw','eag_mms_clean','eag_mms_typed','eag_mms','9999-12-31'),(37,'eag_sms','EAG','EAG','','EAG/eag_sms',NULL,'eag_sms_load_raw','eag_sms_clean','eag_sms_typed','eag_sms','9999-12-31'),(38,'omg','OMG','OMG','','OMG',NULL,'omg_load_raw','omg_clean','omg_typed','omg','9999-12-31'),(39,'pnr','QPASS','QPASS','','PNR',NULL,'pnr_load_raw','pnr_clean','pnr_typed','pnr','9999-12-31'),(40,'tlg','TLG','TLG','','TLG',NULL,'tlg_load_raw','tlg_clean','tlg_typed','tlg','9999-12-31');

/*Table structure for table `sys_etl_control_log` */

DROP TABLE IF EXISTS `sys_etl_control_log`;

CREATE TABLE `sys_etl_control_log` (
  `etl_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL DEFAULT '-1',
  `calling_program` varchar(64) NOT NULL DEFAULT '"unknown"',
  `ft_id` int(64) NOT NULL DEFAULT '-1',
  `ft_subfolder` varchar(16) NOT NULL DEFAULT '"unknown"',
  `extract_date` date DEFAULT NULL,
  `etl_ods_status` tinyint(4) NOT NULL DEFAULT '0',
  `etl_ods_status_desc` varchar(50) NOT NULL DEFAULT '"unknown"',
  `etl_ods_rows` int(11) NOT NULL DEFAULT '0',
  `datetime_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`etl_run_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sys_etl_control_log` */

insert  into `sys_etl_control_log`(`etl_run_id`,`file_id`,`calling_program`,`ft_id`,`ft_subfolder`,`extract_date`,`etl_ods_status`,`etl_ods_status_desc`,`etl_ods_rows`,`datetime_stamp`) values (1,110112900,'etl1_e2e.py',1,'fte','2010-11-29',1,'etl1_e2e.py completed ODS insert with 9 rows',9,'2013-09-27 10:37:55'),(2,110113000,'etl1_e2e.py',1,'fte','2010-11-30',1,'etl1_e2e.py completed ODS insert with 4 rows',4,'2013-09-27 10:38:03');

/*Table structure for table `sys_file_control` */

DROP TABLE IF EXISTS `sys_file_control`;

CREATE TABLE `sys_file_control` (
  `file_id` bigint(11) NOT NULL DEFAULT '-1',
  `ft_id` int(50) NOT NULL DEFAULT '-1',
  `ft_subfolder` varchar(16) NOT NULL DEFAULT '"unknown"',
  `extract_date` date DEFAULT NULL,
  `raw_file_path` varchar(100) NOT NULL DEFAULT '"none"',
  `raw_file_name` varchar(100) NOT NULL DEFAULT '"none"',
  `fixed_file_path` varchar(100) NOT NULL DEFAULT '"none"',
  `fixed_file_name` varchar(100) NOT NULL DEFAULT '"none"',
  `etl_run_id` int(11) NOT NULL DEFAULT '-1',
  `raw_file_rows` bigint(20) NOT NULL DEFAULT '0',
  `raw_table_rows` bigint(20) NOT NULL DEFAULT '0',
  `ods_table_rows` bigint(20) NOT NULL DEFAULT '0',
  `fix_done` tinyint(1) NOT NULL DEFAULT '0',
  `load_done` tinyint(1) NOT NULL DEFAULT '0',
  `qa_done` tinyint(1) NOT NULL DEFAULT '0',
  `clean_done` tinyint(1) NOT NULL DEFAULT '0',
  `type_done` tinyint(1) NOT NULL DEFAULT '0',
  `ods_done` tinyint(1) NOT NULL DEFAULT '0',
  `edw_done` tinyint(1) NOT NULL DEFAULT '0',
  `datetime_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`file_id`),
  KEY `ETL_RUN_ID` (`etl_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_file_control` */

insert  into `sys_file_control`(`file_id`,`ft_id`,`ft_subfolder`,`extract_date`,`raw_file_path`,`raw_file_name`,`fixed_file_path`,`fixed_file_name`,`etl_run_id`,`raw_file_rows`,`raw_table_rows`,`ods_table_rows`,`fix_done`,`load_done`,`qa_done`,`clean_done`,`type_done`,`ods_done`,`edw_done`,`datetime_stamp`) values (110112900,1,'fte','2010-11-29','/opt/app/workload/FILES/LANDING_ZONE/fte/Raw','att-NOFinancialTransaction-20101129-20101130.csv','/opt/app/workload/FILES/LANDING_ZONE/fte/Fixed','fte_20101129_fixed.csv',1,9,9,9,1,1,1,1,1,1,0,'2013-09-27 10:37:52'),(110113000,1,'fte','2010-11-30','/opt/app/workload/FILES/LANDING_ZONE/fte/Raw','att-NOFinancialTransaction-20101130-20101201.csv','/opt/app/workload/FILES/LANDING_ZONE/fte/Fixed','fte_20101130_fixed.csv',2,4,4,4,1,1,1,1,1,1,0,'2013-09-27 10:38:02');

/* Function  structure for function  `fte_nondcbo_flag` */

/*!50003 DROP FUNCTION IF EXISTS `fte_nondcbo_flag` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `fte_nondcbo_flag`(short_code decimal(20,0), product_description varchar(330)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
		return (short_code = -1 AND product_description REGEXP ':[0-9][0-9]*#[0-9]*$');
    END */$$
DELIMITER ;

/* Function  structure for function  `fte_op_flag` */

/*!50003 DROP FUNCTION IF EXISTS `fte_op_flag` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `fte_op_flag`(short_code decimal(20,0), product_description varchar(330)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
		return (short_code > 0 OR product_description REGEXP ':[0-9][0-9]*#[0-9]*$');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `file_doesnt_exist` */

/*!50003 DROP PROCEDURE IF EXISTS  `file_doesnt_exist` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `file_doesnt_exist`(IN filename VARCHAR(100), OUT ct INT)
BEGIN
	SET @fn = TRIM(filename);
	SET ct = (SELECT COUNT(*) FROM sys_file_control WHERE `raw_file_name` LIKE CONCAT('%', @fn, '%'));
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_fte_clean_to_typed` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_fte_clean_to_typed` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `insert_fte_clean_to_typed`(IN in_file_id INT)
BEGIN
	SELECT COUNT(*) n INTO @test FROM DEV_scrs_ods_stg.fte_typed WHERE file_id IN (SELECT DISTINCT file_id FROM DEV_scrs_ods_stg.fte_clean);
	IF @test > 0 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Error inserting data into Typed: duplicate file_id.';
	ELSE
		INSERT INTO DEV_scrs_ods_stg.fte_typed (
		  file_id,
		  etl_run_id,
		  file_row_id,
		  extract_date,
		  financial_event_id,
		  post_datetime,
		  activity_id,
		  activity_datetime,
		  activity_type,
		  parent_financial_event_id,
		  parent_activity_id,
		  parent_activity_datetime,
		  content_provider_id,
		  content_provider_name,
		  network_operator_id,
		  product_id,
		  product_name,
		  cp_product_id,
		  price,
		  product_unit_count,
		  discount,
		  tax_amount,
		  gross_amount,
		  registration_datetime,
		  account_id,
		  no_id_for_account,
		  phone_num,
		  city,
		  county,
		  state,
		  country,
		  zip_code,
		  first_name,
		  middle_name,
		  last_name,
		  product_category,
		  refund_dispute_status,
		  refund_request_reason,
		  refund_status_comment,
		  periodicity,
		  start_delay,
		  anticipated_settlement_date,
		  instance_id,
		  product_description,
		  tax_preference,
		  query_string,
		  purchase_external_identifier,
		  tax_location_type,
		  tax_li_1_ordinal,
		  tax_li_1_city_name,
		  tax_li_1_city_tax,
		  tax_li_1_city_tax_rate,
		  tax_li_1_city_tax_type,
		  tax_li_1_county_code,
		  tax_li_1_county_name,
		  tax_li_1_county_tax,
		  tax_li_1_county_tax_rate,
		  tax_li_1_county_tax_type,
		  tax_li_1_state_name,
		  tax_li_1_state_tax,
		  tax_li_1_state_tax_rate,
		  tax_li_1_state_tax_type,
		  tax_li_1_country_tax,
		  tax_li_1_country_tax_rate,
		  tax_li_1_country_tax_type,
		  tax_li_1_external_tax_category,
		  tax_li_1_tax_category,
		  tax_li_1_zip,
		  tax_li_1_zip_extension,
		  tax_li_2_ordinal,
		  tax_li_2_city_name,
		  tax_li_2_city_tax,
		  tax_li_2_city_tax_rate,
		  tax_li_2_city_tax_type,
		  tax_li_2_county_code,
		  tax_li_2_county_name,
		  tax_li_2_county_tax,
		  tax_li_2_county_tax_rate,
		  tax_li_2_county_tax_type,
		  tax_li_2_state_name,
		  tax_li_2_state_tax,
		  tax_li_2_state_tax_rate,
		  tax_li_2_state_tax_type,
		  tax_li_2_country_tax,
		  tax_li_2_country_tax_rate,
		  tax_li_2_country_tax_type,
		  tax_li_2_external_tax_category,
		  tax_li_2_tax_category,
		  tax_li_2_zip,
		  tax_li_2_zip_extension,
		  merchant_name,
		  short_code,
		  campaign_id,
		  license_expire_datetime,
		  offer_recurrence_flag,
		  merchant_type,
		  device_make,
		  device_model,
		  referral_code,
		  catalog_category,
		  portal_type,
		  content_type,
		  credit_amount,
		  credit_currency,
		  extended_payment_type,
		  external_account_id,
		  refund_type,
		  refund_requestor,
		  refund_requestor_org,
		  refund_approver,
		  refund_approver_org,
		  refund_request_method,
		  refund_vendor_bulk_identifier,
		  payment_type,
		  qa_01,
		  qa_02,
		  qa_03,
		  qa_04,
		  qa_05,
		  qa_06
		)
		SELECT
		  file_id,
		  etl_run_id,
		  file_row_id,
		  extract_date,
		  financial_event_id,
		  STR_TO_DATE(post_datetime,'%m/%d/%Y %T'),
		  activity_id,
		  STR_TO_DATE(activity_datetime,'%m/%d/%Y %T'),
		  activity_type,
		  parent_financial_event_id,
		  parent_activity_id,
		  STR_TO_DATE(parent_activity_datetime,'%m/%d/%Y %T'),
		  content_provider_id,
		  content_provider_name,
		  network_operator_id,
		  product_id,
		  product_name,
		  cp_product_id,
		  price,
		  product_unit_count,
		  discount,
		  tax_amount,
		  gross_amount,
		  STR_TO_DATE(registration_datetime,'%m/%d/%Y %T'),
		  account_id,
		  no_id_for_account,
		  phone_num,
		  city,
		  county,
		  state,
		  country,
		  zip_code,
		  first_name,
		  middle_name,
		  last_name,
		  product_category,
		  refund_dispute_status,
		  refund_request_reason,
		  refund_status_comment,
		  periodicity,
		  start_delay,
		  DATE(STR_TO_DATE(anticipated_settlement_date,'%m/%d/%Y %T')),
		  instance_id,
		  product_description,
		  tax_preference,
		  query_string,
		  purchase_external_identifier,
		  tax_location_type,
		  tax_li_1_ordinal,
		  tax_li_1_city_name,
		  tax_li_1_city_tax,
		  tax_li_1_city_tax_rate,
		  tax_li_1_city_tax_type,
		  tax_li_1_county_code,
		  tax_li_1_county_name,
		  tax_li_1_county_tax,
		  tax_li_1_county_tax_rate,
		  tax_li_1_county_tax_type,
		  tax_li_1_state_name,
		  tax_li_1_state_tax,
		  tax_li_1_state_tax_rate,
		  tax_li_1_state_tax_type,
		  tax_li_1_country_tax,
		  tax_li_1_country_tax_rate,
		  tax_li_1_country_tax_type,
		  tax_li_1_external_tax_category,
		  tax_li_1_tax_category,
		  tax_li_1_zip,
		  tax_li_1_zip_extension,
		  tax_li_2_ordinal,
		  tax_li_2_city_name,
		  tax_li_2_city_tax,
		  tax_li_2_city_tax_rate,
		  tax_li_2_city_tax_type,
		  tax_li_2_county_code,
		  tax_li_2_county_name,
		  tax_li_2_county_tax,
		  tax_li_2_county_tax_rate,
		  tax_li_2_county_tax_type,
		  tax_li_2_state_name,
		  tax_li_2_state_tax,
		  tax_li_2_state_tax_rate,
		  tax_li_2_state_tax_type,
		  tax_li_2_country_tax,
		  tax_li_2_country_tax_rate,
		  tax_li_2_country_tax_type,
		  tax_li_2_external_tax_category,
		  tax_li_2_tax_category,
		  tax_li_2_zip,
		  tax_li_2_zip_extension,
		  merchant_name,
		  short_code,
		  campaign_id,
		  STR_TO_DATE(license_expire_datetime,'%d/%m/%Y %r'),
		  offer_recurrence_flag,
		  merchant_type,
		  device_make,
		  device_model,
		  referral_code,
		  catalog_category,
		  portal_type,
		  content_type,
		  credit_amount,
		  credit_currency,
		  extended_payment_type,
		  external_account_id,
		  refund_type,
		  refund_requestor,
		  refund_requestor_org,
		  refund_approver,
		  refund_approver_org,
		  refund_request_method,
		  refund_vendor_bulk_identifier,
		  payment_type,
		  qa_01,
		  qa_02,
		  qa_03,
		  qa_04,
		  qa_05,
		  qa_06
		FROM DEV_scrs_ods_stg.fte_clean
		;
	END IF;
UPDATE sys_file_control SET type_done=1 WHERE file_id = in_file_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_fte_raw_to_clean` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_fte_raw_to_clean` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `insert_fte_raw_to_clean`(IN in_file_id INT)
BEGIN
SELECT COUNT(*) n INTO @test FROM DEV_scrs_ods_stg.fte_clean ;
	IF @test > 0 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Error inserting data into clean: clean is not empty.';
	ELSE
		#TRUNCATE TABLE scrs_ods_stg.fte_clean;
		INSERT INTO DEV_scrs_ods_stg.fte_clean
		SELECT * FROM DEV_scrs_ods_stg.fte_load_raw
		WHERE file_id = in_file_id ;
	END IF;
UPDATE sys_file_control SET clean_done=1 WHERE file_id = in_file_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_fte_raw_to_ods_wrapper_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_fte_raw_to_ods_wrapper_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `insert_fte_raw_to_ods_wrapper_proc`(IN in_file_id INT, OUT rows_inserted INT)
BEGIN
TRUNCATE DEV_scrs_ods_stg.fte_clean;
CALL insert_fte_raw_to_clean(in_file_id);
CALL run_all_fte_qa_screen(in_file_id);
CALL insert_fte_clean_to_typed(in_file_id);
CALL insert_fte_typed_to_ods(in_file_id);
SELECT ods_table_rows INTO rows_inserted FROM sys_file_control WHERE ods_done=1 AND file_id = in_file_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_fte_typed_to_ods` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_fte_typed_to_ods` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `insert_fte_typed_to_ods`(IN in_file_id INT)
BEGIN
	SELECT COUNT(*) n INTO @test FROM DEV_scrs_ods.fte WHERE file_id IN (SELECT DISTINCT file_id FROM DEV_scrs_ods_stg.fte_typed );
	IF @test > 0 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Error inserting data into ODS: duplicate file_id.';
	ELSE
		INSERT INTO DEV_scrs_ods.fte (
			row_id,meta_op_flag,meta_nondcbo_flag,meta_has_parent_flag,meta_is_refund_flag,meta_is_recurring_flag,
			file_id,etl_run_id,file_row_id,extract_date,financial_event_id,post_datetime,activity_id,activity_datetime,activity_type,parent_financial_event_id,parent_activity_id,parent_activity_datetime,content_provider_id,content_provider_name,network_operator_id,product_id,product_name,cp_product_id,price,product_unit_count,discount,tax_amount,gross_amount,registration_datetime,account_id,no_id_for_account,phone_num,city,county,state,country,zip_code,first_name,middle_name,last_name,product_category,refund_dispute_status,refund_request_reason,refund_status_comment,periodicity,start_delay,anticipated_settlement_date,instance_id,product_description,tax_preference,query_string,purchase_external_identifier,tax_location_type,tax_li_1_ordinal,tax_li_1_city_name,tax_li_1_city_tax,tax_li_1_city_tax_rate,tax_li_1_city_tax_type,tax_li_1_county_code,tax_li_1_county_name,tax_li_1_county_tax,tax_li_1_county_tax_rate,tax_li_1_county_tax_type,tax_li_1_state_name,tax_li_1_state_tax,tax_li_1_state_tax_rate,tax_li_1_state_tax_type,tax_li_1_country_tax,tax_li_1_country_tax_rate,tax_li_1_country_tax_type,tax_li_1_external_tax_category,tax_li_1_tax_category,tax_li_1_zip,tax_li_1_zip_extension,tax_li_2_ordinal,tax_li_2_city_name,tax_li_2_city_tax,tax_li_2_city_tax_rate,tax_li_2_city_tax_type,tax_li_2_county_code,tax_li_2_county_name,tax_li_2_county_tax,tax_li_2_county_tax_rate,tax_li_2_county_tax_type,tax_li_2_state_name,tax_li_2_state_tax,tax_li_2_state_tax_rate,tax_li_2_state_tax_type,tax_li_2_country_tax,tax_li_2_country_tax_rate,tax_li_2_country_tax_type,tax_li_2_external_tax_category,tax_li_2_tax_category,tax_li_2_zip,tax_li_2_zip_extension,merchant_name,short_code,campaign_id,license_expire_datetime,offer_recurrence_flag,merchant_type,device_make,device_model,referral_code,catalog_category,portal_type,content_type,credit_amount,credit_currency,extended_payment_type,external_account_id,refund_type,refund_requestor,refund_requestor_org,refund_approver,refund_approver_org,refund_request_method,refund_vendor_bulk_identifier,payment_type,qa_01,qa_02,qa_03,qa_04,qa_05,qa_06
			)
		SELECT 
			-(file_id * 100000000 + file_row_id) row_id,
			#(short_code > 0 OR product_description REGEXP ':[0-9][0-9]*#[0-9][0-9]*$') meta_op_flag,
			#(short_code = -1 AND product_description REGEXP ':[0-9][0-9]*#[0-9][0-9]*$') meta_nondcbo_flag,
			fte_op_flag(short_code,product_description) meta_op_flag,
			fte_nondcbo_flag(short_code,product_description) meta_nondcbo_flag,
			(parent_activity_id != '') meta_has_parent_flag,
			(activity_type = 'Refund' OR activity_type = 'Reversal') meta_is_refund_flag,
			(offer_recurrence_flag = 'Y') meta_is_recurring_flag,
			file_id,etl_run_id,file_row_id,extract_date,financial_event_id,post_datetime,activity_id,activity_datetime,activity_type,parent_financial_event_id,parent_activity_id,parent_activity_datetime,content_provider_id,content_provider_name,network_operator_id,product_id,product_name,cp_product_id,price,product_unit_count,discount,tax_amount,gross_amount,registration_datetime,account_id,no_id_for_account,phone_num,city,county,state,country,zip_code,first_name,middle_name,last_name,product_category,refund_dispute_status,refund_request_reason,refund_status_comment,periodicity,start_delay,anticipated_settlement_date,instance_id,product_description,tax_preference,query_string,purchase_external_identifier,tax_location_type,tax_li_1_ordinal,tax_li_1_city_name,tax_li_1_city_tax,tax_li_1_city_tax_rate,tax_li_1_city_tax_type,tax_li_1_county_code,tax_li_1_county_name,tax_li_1_county_tax,tax_li_1_county_tax_rate,tax_li_1_county_tax_type,tax_li_1_state_name,tax_li_1_state_tax,tax_li_1_state_tax_rate,tax_li_1_state_tax_type,tax_li_1_country_tax,tax_li_1_country_tax_rate,tax_li_1_country_tax_type,tax_li_1_external_tax_category,tax_li_1_tax_category,tax_li_1_zip,tax_li_1_zip_extension,tax_li_2_ordinal,tax_li_2_city_name,tax_li_2_city_tax,tax_li_2_city_tax_rate,tax_li_2_city_tax_type,tax_li_2_county_code,tax_li_2_county_name,tax_li_2_county_tax,tax_li_2_county_tax_rate,tax_li_2_county_tax_type,tax_li_2_state_name,tax_li_2_state_tax,tax_li_2_state_tax_rate,tax_li_2_state_tax_type,tax_li_2_country_tax,tax_li_2_country_tax_rate,tax_li_2_country_tax_type,tax_li_2_external_tax_category,tax_li_2_tax_category,tax_li_2_zip,tax_li_2_zip_extension,merchant_name,short_code,campaign_id,license_expire_datetime,offer_recurrence_flag,merchant_type,device_make,device_model,referral_code,catalog_category,portal_type,content_type,credit_amount,credit_currency,extended_payment_type,external_account_id,refund_type,refund_requestor,refund_requestor_org,refund_approver,refund_approver_org,refund_request_method,refund_vendor_bulk_identifier,payment_type,qa_01,qa_02,qa_03,qa_04,qa_05,qa_06
		FROM DEV_scrs_ods_stg.fte_typed
		;
		
		SELECT COUNT(*) n INTO @typed_count FROM DEV_scrs_ods_stg.fte_typed ;
		SELECT COUNT(*) n INTO @ods_count FROM DEV_scrs_ods.fte WHERE file_id IN (SELECT file_id FROM DEV_scrs_ods_stg.fte_typed) ;
		IF @typed_count = @ods_count THEN
			TRUNCATE TABLE DEV_scrs_ods_stg.fte_typed ;
			TRUNCATE TABLE DEV_scrs_ods_stg.fte_clean ;
		ELSE
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Error inserting data into ODS: row count mismatch.';
		END IF;
	END IF;
UPDATE sys_file_control SET ods_done=1, ods_table_rows=@ods_count WHERE file_id = in_file_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_sys_control_log` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_sys_control_log` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `insert_sys_control_log`(IN fid INT, IN callingprog VARCHAR(50),IN dsname VARCHAR(16),IN edate DATE, IN startdate DATETIME)
BEGIN
INSERT INTO scrs_omd.sys_control_log
(file_id, calling_program, ds_name, extract_date, start_datetime)
VALUES
(fid, callingprog, dsname, edate, NOW())
;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_sys_etl_control_log` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_sys_etl_control_log` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `insert_sys_etl_control_log`(IN fid INT, IN ftid INT, IN callingprog VARCHAR(50),IN ftsub VARCHAR(16),IN edate DATE, OUT etlid INT)
BEGIN
INSERT INTO sys_etl_control_log
(file_id, ft_id, calling_program, ft_subfolder, extract_date)
VALUES
(fid, ftid, callingprog, ftsub, edate)
;
SELECT MAX(etl_run_id) INTO etlid FROM sys_etl_control_log WHERE file_id = fid;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_sys_file` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_sys_file` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_sys_file`(IN fileid INT, IN ftid INT, IN ftsub VARCHAR(50), IN extractdate DATE,IN etlrunid INT, IN rawfilepath VARCHAR(50), IN rawfilename VARCHAR(50), IN fixedfilepath VARCHAR(50), IN fixedfilename VARCHAR(50), OUT rowsinserted INT)
BEGIN
	SET @ct = (SELECT COUNT(*) FROM sys_file_control);
	SET @now = NOW();
	INSERT INTO sys_file_control
         (
          file_id,
          ft_id,
          ft_subfolder,
          extract_date,
          raw_file_path,
          raw_file_name,
          fixed_file_path,
          fixed_file_name,
          etl_run_id
         )
	VALUES 
         (
           fileid,
           ftid,
           ftsub,
           extractdate,
           rawfilepath,
           rawfilename,
           fixedfilepath,
           fixedfilename,
           etlrunid
         );
         SELECT COUNT(*) INTO rowsinserted FROM sys_file_control;
         IF @ct = rowsinserted THEN
		SELECT -1 INTO rowsinserted ;
	 END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `run_all_fte_qa_screen` */

/*!50003 DROP PROCEDURE IF EXISTS  `run_all_fte_qa_screen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `run_all_fte_qa_screen`(IN in_file_id INT)
BEGIN
	DECLARE var_looper INT DEFAULT 0;
	DECLARE var_step_report VARCHAR(512) DEFAULT '';
	SET var_looper = 0;
	SET var_step_report = '';
	read_loop:LOOP
		SET var_looper = var_looper + 1;
		IF var_looper != 2 THEN
			SET @run_all_fte_qa_screen_stmt = NULL;			
			SELECT cmd INTO @run_all_fte_qa_screen_stmt FROM DEV_scrs_omd.raw_to_typed_qa_screens_big_step_num WHERE big_step_num = var_looper;
			IF @run_all_fte_qa_screen_stmt IS NOT NULL THEN
				PREPARE run_all_fte_qa_screen_stmt FROM @run_all_fte_qa_screen_stmt ;
				EXECUTE run_all_fte_qa_screen_stmt;
				DEALLOCATE PREPARE run_all_fte_qa_screen_stmt;
				SET var_step_report = CONCAT(var_step_report, ' ', var_looper);
			END IF;
			SET @run_all_fte_qa_screen_stmt = NULL;
		END IF;
		IF var_looper >= 12 THEN
			LEAVE read_loop;
		END IF;
	END LOOP;
UPDATE sys_file_control SET qa_done=1 WHERE file_id = in_file_id;
END */$$
DELIMITER ;

/*Table structure for table `load_raw_ds_params` */

DROP TABLE IF EXISTS `load_raw_ds_params`;

/*!50001 DROP VIEW IF EXISTS `load_raw_ds_params` */;
/*!50001 DROP TABLE IF EXISTS `load_raw_ds_params` */;

/*!50001 CREATE TABLE  `load_raw_ds_params`(
 `ds_name` varchar(64) ,
 `start_date` date ,
 `ds_version_id` int(10) unsigned ,
 `raw_load_table` varchar(64) ,
 `orig_file_name` varchar(128) ,
 `load_file_name` varchar(128) ,
 `prepare_load_file_function` varchar(64) ,
 `delimiter_set_str` varchar(198) ,
 `ignore_lines` int(10) unsigned ,
 `load_columns` mediumtext 
)*/;

/*Table structure for table `schema_data_source` */

DROP TABLE IF EXISTS `schema_data_source`;

/*!50001 DROP VIEW IF EXISTS `schema_data_source` */;
/*!50001 DROP TABLE IF EXISTS `schema_data_source` */;

/*!50001 CREATE TABLE  `schema_data_source`(
 `ds_id` int(10) unsigned ,
 `ds_name` varchar(64) ,
 `raw_load_table` varchar(64) ,
 `clean_table` varchar(64) ,
 `typed_table` varchar(64) ,
 `ods_table` varchar(64) ,
 `end_date` date 
)*/;

/*Table structure for table `schema_ds_column_set` */

DROP TABLE IF EXISTS `schema_ds_column_set`;

/*!50001 DROP VIEW IF EXISTS `schema_ds_column_set` */;
/*!50001 DROP TABLE IF EXISTS `schema_ds_column_set` */;

/*!50001 CREATE TABLE  `schema_ds_column_set`(
 `column_set_name` varchar(64) ,
 `column_name` varchar(64) ,
 `ordinal` smallint(5) unsigned ,
 `source_column_name` varchar(128) ,
 `date_format_str` varchar(64) ,
 `valid_raw_regex` varchar(128) ,
 `description` varchar(512) 
)*/;

/*Table structure for table `schema_ds_delimiter_set` */

DROP TABLE IF EXISTS `schema_ds_delimiter_set`;

/*!50001 DROP VIEW IF EXISTS `schema_ds_delimiter_set` */;
/*!50001 DROP TABLE IF EXISTS `schema_ds_delimiter_set` */;

/*!50001 CREATE TABLE  `schema_ds_delimiter_set`(
 `delimiter_set_name` varchar(64) ,
 `fields_terminated_by` varchar(16) ,
 `optionally_flag` bit(1) ,
 `enclosed_by` varchar(16) ,
 `escaped_by` varchar(16) ,
 `lines_terminated_by` varchar(16) ,
 `delimiter_set_str` varchar(198) 
)*/;

/*Table structure for table `schema_ds_version` */

DROP TABLE IF EXISTS `schema_ds_version`;

/*!50001 DROP VIEW IF EXISTS `schema_ds_version` */;
/*!50001 DROP TABLE IF EXISTS `schema_ds_version` */;

/*!50001 CREATE TABLE  `schema_ds_version`(
 `ds_name` varchar(64) ,
 `start_date` date ,
 `ds_version_id` int(10) unsigned ,
 `orig_file_name` varchar(128) ,
 `load_file_name` varchar(128) ,
 `delimiter_set_name` varchar(64) ,
 `ignore_lines` int(10) unsigned ,
 `column_set_name` varchar(64) ,
 `prepare_load_file_function` varchar(64) 
)*/;

/*Table structure for table `schema_load_columns_by_column_set` */

DROP TABLE IF EXISTS `schema_load_columns_by_column_set`;

/*!50001 DROP VIEW IF EXISTS `schema_load_columns_by_column_set` */;
/*!50001 DROP TABLE IF EXISTS `schema_load_columns_by_column_set` */;

/*!50001 CREATE TABLE  `schema_load_columns_by_column_set`(
 `column_set_name` varchar(64) ,
 `load_columns` mediumtext 
)*/;

/*View structure for view load_raw_ds_params */

/*!50001 DROP TABLE IF EXISTS `load_raw_ds_params` */;
/*!50001 DROP VIEW IF EXISTS `load_raw_ds_params` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `load_raw_ds_params` AS select `dsv`.`ds_name` AS `ds_name`,`dsv`.`start_date` AS `start_date`,`dsv`.`ds_version_id` AS `ds_version_id`,`ds`.`raw_load_table` AS `raw_load_table`,`dsv`.`orig_file_name` AS `orig_file_name`,`dsv`.`load_file_name` AS `load_file_name`,`dsv`.`prepare_load_file_function` AS `prepare_load_file_function`,`dsds`.`delimiter_set_str` AS `delimiter_set_str`,`dsv`.`ignore_lines` AS `ignore_lines`,`cs`.`load_columns` AS `load_columns` from (((`schema_data_source` `ds` join `schema_ds_version` `dsv` on((`ds`.`ds_name` = `dsv`.`ds_name`))) join `schema_load_columns_by_column_set` `cs` on((`dsv`.`column_set_name` = `cs`.`column_set_name`))) join `schema_ds_delimiter_set` `dsds` on((`dsv`.`delimiter_set_name` = `dsds`.`delimiter_set_name`))) order by `dsv`.`ds_name`,`dsv`.`start_date` */;

/*View structure for view schema_data_source */

/*!50001 DROP TABLE IF EXISTS `schema_data_source` */;
/*!50001 DROP VIEW IF EXISTS `schema_data_source` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `schema_data_source` AS select `ds`.`ds_id` AS `ds_id`,`ds`.`ds_name` AS `ds_name`,`ds`.`raw_load_table` AS `raw_load_table`,`ds`.`clean_table` AS `clean_table`,`ds`.`typed_table` AS `typed_table`,`ds`.`ods_table` AS `ods_table`,`ds`.`end_date` AS `end_date` from `sys_data_source` `ds` order by `ds`.`ds_name` */;

/*View structure for view schema_ds_column_set */

/*!50001 DROP TABLE IF EXISTS `schema_ds_column_set` */;
/*!50001 DROP VIEW IF EXISTS `schema_ds_column_set` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `schema_ds_column_set` AS select `cs`.`column_set_name` AS `column_set_name`,`cs`.`column_name` AS `column_name`,`cs`.`ordinal` AS `ordinal`,`cs`.`source_column_name` AS `source_column_name`,`cs`.`date_format_str` AS `date_format_str`,`cs`.`valid_raw_regex` AS `valid_raw_regex`,`cs`.`description` AS `description` from `ds_column_set` `cs` order by `cs`.`column_set_name`,`cs`.`ordinal` */;

/*View structure for view schema_ds_delimiter_set */

/*!50001 DROP TABLE IF EXISTS `schema_ds_delimiter_set` */;
/*!50001 DROP VIEW IF EXISTS `schema_ds_delimiter_set` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `schema_ds_delimiter_set` AS select `dsds`.`delimiter_set_name` AS `delimiter_set_name`,`dsds`.`fields_terminated_by` AS `fields_terminated_by`,`dsds`.`optionally_flag` AS `optionally_flag`,`dsds`.`enclosed_by` AS `enclosed_by`,`dsds`.`escaped_by` AS `escaped_by`,`dsds`.`lines_terminated_by` AS `lines_terminated_by`,concat('FIELDS TERMINATED BY ',quote(`dsds`.`fields_terminated_by`),(case when `dsds`.`optionally_flag` then ' OPTIONALLY ENCLOSED BY ' else ' ENCLOSED BY ' end),quote(`dsds`.`enclosed_by`),(case when (`dsds`.`escaped_by` <> '') then concat(' ESCAPED BY ',quote(`dsds`.`escaped_by`)) else '' end),' LINES TERMINATED BY \'',`dsds`.`lines_terminated_by`,'\'') AS `delimiter_set_str` from `ds_delimiter_set` `dsds` */;

/*View structure for view schema_ds_version */

/*!50001 DROP TABLE IF EXISTS `schema_ds_version` */;
/*!50001 DROP VIEW IF EXISTS `schema_ds_version` */;

/*!50001 CREATE ALGORITHM=MERGE DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `schema_ds_version` AS select `dsv`.`ds_name` AS `ds_name`,`dsv`.`start_date` AS `start_date`,`dsv`.`ds_version_id` AS `ds_version_id`,`dsv`.`orig_file_name` AS `orig_file_name`,`dsv`.`load_file_name` AS `load_file_name`,`dsv`.`delimiter_set_name` AS `delimiter_set_name`,`dsv`.`ignore_lines` AS `ignore_lines`,`dsv`.`column_set_name` AS `column_set_name`,`dsv`.`prepare_load_file_function` AS `prepare_load_file_function` from `ds_version` `dsv` order by `dsv`.`ds_name`,`dsv`.`start_date` */;

/*View structure for view schema_load_columns_by_column_set */

/*!50001 DROP TABLE IF EXISTS `schema_load_columns_by_column_set` */;
/*!50001 DROP VIEW IF EXISTS `schema_load_columns_by_column_set` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `schema_load_columns_by_column_set` AS select `cs`.`column_set_name` AS `column_set_name`,group_concat(`cs`.`column_name` order by `cs`.`ordinal` ASC separator ', ') AS `load_columns` from `schema_ds_column_set` `cs` group by `cs`.`column_set_name` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
