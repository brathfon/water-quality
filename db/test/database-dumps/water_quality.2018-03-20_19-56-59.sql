-- MySQL dump 10.13  Distrib 5.7.11, for osx10.9 (x86_64)
--
-- Host: localhost    Database: water_quality
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `base_sample_report`
--

DROP TABLE IF EXISTS `base_sample_report`;
/*!50001 DROP VIEW IF EXISTS `base_sample_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `base_sample_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sample_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `day`,
 1 AS `time`,
 1 AS `temperature`,
 1 AS `salinity`,
 1 AS `dissolved_oxygen`,
 1 AS `dissolved_oxygen_pct`,
 1 AS `ph`,
 1 AS `turbidity_1`,
 1 AS `turbidity_2`,
 1 AS `turbidity_3`,
 1 AS `avg_turbidity`,
 1 AS `total_nitrogen`,
 1 AS `total_phosphorus`,
 1 AS `phosphate`,
 1 AS `silicate`,
 1 AS `nitrates`,
 1 AS `ammonia`,
 1 AS `lat`,
 1 AS `lon`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `diff_report`
--

DROP TABLE IF EXISTS `diff_report`;
/*!50001 DROP VIEW IF EXISTS `diff_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `diff_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `day`,
 1 AS `time`,
 1 AS `temperature`,
 1 AS `salinity`,
 1 AS `dissolved_oxygen`,
 1 AS `dissolved_oxygen_pct`,
 1 AS `ph`,
 1 AS `turbidity_1`,
 1 AS `turbidity_2`,
 1 AS `turbidity_3`,
 1 AS `avg_turbidity`,
 1 AS `total_nitrogen`,
 1 AS `total_phosphorus`,
 1 AS `phosphate`,
 1 AS `silicate`,
 1 AS `nitrates`,
 1 AS `ammonia`,
 1 AS `lat`,
 1 AS `lon`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `known_sites`
--

DROP TABLE IF EXISTS `known_sites`;
/*!50001 DROP VIEW IF EXISTS `known_sites`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `known_sites` AS SELECT 
 1 AS `hui_abv`,
 1 AS `long_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lab_sessions_overview`
--

DROP TABLE IF EXISTS `lab_sessions_overview`;
/*!50001 DROP VIEW IF EXISTS `lab_sessions_overview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `lab_sessions_overview` AS SELECT 
 1 AS `lab_id`,
 1 AS `lab_code`,
 1 AS `long_name`,
 1 AS `session_number`,
 1 AS `start_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `labs`
--

DROP TABLE IF EXISTS `labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labs` (
  `lab_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lab_code` varchar(16) NOT NULL,
  `long_name` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`lab_id`),
  UNIQUE KEY `lab_code` (`lab_code`),
  UNIQUE KEY `long_name` (`long_name`),
  KEY `labs` (`lab_id`,`lab_code`) COMMENT 'covers the surrogate id and natural lab code'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs`
--

LOCK TABLES `labs` WRITE;
/*!40000 ALTER TABLE `labs` DISABLE KEYS */;
INSERT INTO `labs` VALUES (1,'LLHS','Lahainaluna High School','Lahainaluna Road');
INSERT INTO `labs` VALUES (2,'NMS','National Marine Sanctuary','South Kihei Road');
/*!40000 ALTER TABLE `labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `max_session_numbers_for_labs`
--

DROP TABLE IF EXISTS `max_session_numbers_for_labs`;
/*!50001 DROP VIEW IF EXISTS `max_session_numbers_for_labs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `max_session_numbers_for_labs` AS SELECT 
 1 AS `lab_id`,
 1 AS `lab_code`,
 1 AS `long_name`,
 1 AS `max_session_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `qa_codes`
--

DROP TABLE IF EXISTS `qa_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_codes` (
  `qa_code` int(10) unsigned NOT NULL,
  `category` varchar(32) NOT NULL,
  `description` varchar(128) NOT NULL,
  `action` varchar(16) NOT NULL,
  PRIMARY KEY (`qa_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_codes`
--

LOCK TABLES `qa_codes` WRITE;
/*!40000 ALTER TABLE `qa_codes` DISABLE KEYS */;
INSERT INTO `qa_codes` VALUES (1,'Sampler','Unknown Sampler','discard');
INSERT INTO `qa_codes` VALUES (2,'Sampler','Sampler not trained or re-trained','discard');
INSERT INTO `qa_codes` VALUES (10,'Sampling','Incorrect sampling method','discard');
INSERT INTO `qa_codes` VALUES (11,'Sampling','Known sample contamination','discard');
INSERT INTO `qa_codes` VALUES (20,'Time','Sample date not within 10 days of today.','flag');
INSERT INTO `qa_codes` VALUES (21,'Time','Time not between 5 am and 3 pm.','flag');
INSERT INTO `qa_codes` VALUES (30,'Verification','Pre-verification not within 1 week of sampling','flag');
INSERT INTO `qa_codes` VALUES (31,'Verification','Post-verification not within 1 week of sampling','flag');
INSERT INTO `qa_codes` VALUES (40,'Temp','Temp not between 20 and 30.','flag');
INSERT INTO `qa_codes` VALUES (50,'DO','DO% not between 80 and 120.','flag');
INSERT INTO `qa_codes` VALUES (51,'DO','DO not between 4 and 9.','flag');
INSERT INTO `qa_codes` VALUES (52,'DO','Calibration not within 1 year','discard');
INSERT INTO `qa_codes` VALUES (53,'DO','Data shows evidence of drift','investigate');
INSERT INTO `qa_codes` VALUES (54,'DO','Probe does not stabilize after 5 minutes during post-verification','discard');
INSERT INTO `qa_codes` VALUES (55,'DO','DO concentration differs signficantly from percent saturation','flag');
INSERT INTO `qa_codes` VALUES (56,'DO','Post verification DO not within 3% of standard (outside range)','flag');
INSERT INTO `qa_codes` VALUES (60,'Salinity','Sal not between 0 and 35 ppt','flag');
INSERT INTO `qa_codes` VALUES (61,'Salinity','Calibration not within 3 months','discard');
INSERT INTO `qa_codes` VALUES (62,'Salinity','Post verification salinity not within 3% of standard (outside range)','flag');
INSERT INTO `qa_codes` VALUES (63,'Salinity','Probe does not stabilize after 5 minutes during post-verification','discard');
INSERT INTO `qa_codes` VALUES (70,'pH','Estimated value of pH not between 7.3 and 8.2.','flag');
INSERT INTO `qa_codes` VALUES (71,'pH','Calibration not within 3 weeks','discard');
INSERT INTO `qa_codes` VALUES (72,'pH','Verification pH not within 3% of standard (outside range)','flag');
INSERT INTO `qa_codes` VALUES (73,'pH','Probe shows evidence of value drift','investigate');
INSERT INTO `qa_codes` VALUES (74,'pH','Probe does not stabilize after 5 minutes during post-verification','discard');
INSERT INTO `qa_codes` VALUES (80,'Turbidity','Post Verification turbidity not within 3% of standard (outside range)','flag');
INSERT INTO `qa_codes` VALUES (81,'Turbidity','Calibration not within 3 months','discard');
INSERT INTO `qa_codes` VALUES (82,'Turbidity','Verification zero (blank) check not within range','flag');
INSERT INTO `qa_codes` VALUES (83,'Turbidity','Probe does not stabilize after 5 minutes during post-verification','discard');
INSERT INTO `qa_codes` VALUES (84,'Turbidity','CV of three values more than 0.15','flag');
INSERT INTO `qa_codes` VALUES (90,'Missing data','Missing data: Nutrients','investigate');
INSERT INTO `qa_codes` VALUES (91,'Missing data','Missing data: Sediments','investigate');
INSERT INTO `qa_codes` VALUES (92,'Missing data','Missing data: Bacteria','investigate');
INSERT INTO `qa_codes` VALUES (100,'Chain of Custody','No signature from field technicians','flag');
INSERT INTO `qa_codes` VALUES (101,'Chain of Custody','No signature from receiving lab','flag');
INSERT INTO `qa_codes` VALUES (102,'Chain of Custody','Temperature: Nutrient samples not frozen on arrival','flag');
INSERT INTO `qa_codes` VALUES (103,'Chain of Custody','Temperature: Sediment samples not stored in refridgerator','flag');
INSERT INTO `qa_codes` VALUES (104,'Chain of Custody','Temperature: Nutrient samples not stored at 0C','flag');
INSERT INTO `qa_codes` VALUES (105,'Chain of Custody','Temperature: Bacteria samples not stored at 0C during tranport','flag');
INSERT INTO `qa_codes` VALUES (110,'Hold Times','Ammonia hold times more than 28 days','flag');
INSERT INTO `qa_codes` VALUES (111,'Hold Times','Inorganic nutrient hold times more than 28 days','flag');
INSERT INTO `qa_codes` VALUES (112,'Hold Times','Organic nutrient hold times more than the limit','flag');
INSERT INTO `qa_codes` VALUES (113,'Hold Times','TSS hold times more than the limit','flag');
INSERT INTO `qa_codes` VALUES (114,'Hold Times','Enterococcus hold times more than the limit','flag');
INSERT INTO `qa_codes` VALUES (120,'Nutrient Lab QA','Nutrient lab indicate QA/QC problems','discard');
INSERT INTO `qa_codes` VALUES (121,'Sediment Lab QA','Sediment lab indicate QA/QC problems','discard');
INSERT INTO `qa_codes` VALUES (122,'Bacteria Lab QA','Bacteria lab indicate QA/QC problems','discard');
INSERT INTO `qa_codes` VALUES (130,'Duplicates','Ammonia duplicates RSD more than acceptable limit','discard');
INSERT INTO `qa_codes` VALUES (131,'Duplicates','NN duplicates RSD more than acceptable limit','discard');
INSERT INTO `qa_codes` VALUES (132,'Duplicates','TN duplicates RSD more than acceptable limit','discard');
INSERT INTO `qa_codes` VALUES (133,'Duplicates','TP duplicates RSD more than acceptable limit','discard');
INSERT INTO `qa_codes` VALUES (134,'Duplicates','TSS duplicates RSD more than acceptable limit','discard');
INSERT INTO `qa_codes` VALUES (140,'Data entry','Values differ between data entry','investigate');
INSERT INTO `qa_codes` VALUES (141,'Data entry','Recording error','discard');
INSERT INTO `qa_codes` VALUES (150,'General','General not sure about this one','discard');
INSERT INTO `qa_codes` VALUES (151,'General','Method/analysis discrepancies','investigate');
INSERT INTO `qa_codes` VALUES (152,'General','Sampling location change','investigate');
INSERT INTO `qa_codes` VALUES (160,'Site Sample','Approved','none');
INSERT INTO `qa_codes` VALUES (161,'Site Sample','Awaiting approval','flag');
INSERT INTO `qa_codes` VALUES (162,'Site Sample','Awaiting Review','flag');
/*!40000 ALTER TABLE `qa_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_issue_samples`
--

DROP TABLE IF EXISTS `qa_issue_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_issue_samples` (
  `qa_issue_sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_id` int(10) unsigned NOT NULL COMMENT 'id of sample that has been called out by QA',
  `sample_column_name` varchar(64) NOT NULL COMMENT 'Name of the column of the samples table that this applies to.',
  `report_attribute_name` varchar(64) NOT NULL COMMENT 'User friendly column/attribute/measuredment name.',
  `description` varchar(256) NOT NULL COMMENT 'Description of why the column/attribute was QAed',
  PRIMARY KEY (`qa_issue_sample_id`),
  UNIQUE KEY `qa_issue_samples` (`qa_issue_sample_id`,`sample_id`,`sample_column_name`) COMMENT 'Covers both the surrogate and natural.',
  UNIQUE KEY `sample_id_column_name` (`sample_id`,`sample_column_name`) COMMENT 'Natural key.  Each column of each sample should only have entry.',
  CONSTRAINT `sample_id` FOREIGN KEY (`sample_id`) REFERENCES `samples` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_issue_samples`
--

LOCK TABLES `qa_issue_samples` WRITE;
/*!40000 ALTER TABLE `qa_issue_samples` DISABLE KEYS */;
INSERT INTO `qa_issue_samples` VALUES (1,51,'turbidity_1','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (2,51,'turbidity_2','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (3,51,'turbidity_3','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (4,86,'turbidity_1','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (5,86,'turbidity_2','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (6,86,'turbidity_3','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (7,145,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (8,186,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (9,238,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (10,239,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (11,240,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (12,241,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (13,242,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (14,243,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (15,244,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (16,246,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (17,247,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (18,5,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (19,34,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (20,35,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (21,41,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (22,67,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (23,70,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (24,76,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (25,77,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (26,82,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (27,90,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (28,92,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (29,94,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (30,97,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (31,99,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (32,105,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (33,150,'nitrates','NNN','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (34,178,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (35,180,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (36,181,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (37,184,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (38,185,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (39,187,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (40,189,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (41,190,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (42,191,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (43,192,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (44,197,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (45,204,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (46,209,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (47,212,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (48,231,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (49,236,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (50,238,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (51,239,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (52,241,'ammonia','NH4','below detectable limit');
/*!40000 ALTER TABLE `qa_issue_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_header_names`
--

DROP TABLE IF EXISTS `report_header_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_header_names` (
  `report_header_name_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_column_name` varchar(64) NOT NULL,
  `report_header_name` varchar(64) NOT NULL,
  PRIMARY KEY (`report_header_name_id`),
  UNIQUE KEY `sample_column_name_UNIQUE` (`sample_column_name`),
  KEY `report_header-names_idx` (`sample_column_name`,`report_header_name`) COMMENT 'cover of surrogate and natural.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_header_names`
--

LOCK TABLES `report_header_names` WRITE;
/*!40000 ALTER TABLE `report_header_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_header_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abrv` varchar(4) DEFAULT NULL COMMENT 'Abbreviation like QA, DE',
  `long_name` varchar(45) DEFAULT NULL COMMENT 'ex: Quality Assurance',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `roll_name_UNIQUE` (`long_name`),
  UNIQUE KEY `abrv_UNIQUE` (`abrv`),
  UNIQUE KEY `rolls` (`role_id`,`abrv`) COMMENT 'cover the surrogate key and natural key'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADM','Administration');
INSERT INTO `roles` VALUES (2,'DE','Data Entry');
INSERT INTO `roles` VALUES (3,'DV','Data Verification');
INSERT INTO `roles` VALUES (4,'QA','Quality Assurance');
INSERT INTO `roles` VALUES (5,'RO','Read Only');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_workers`
--

DROP TABLE IF EXISTS `sample_workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_workers` (
  `sample_id` int(10) unsigned NOT NULL,
  `worker_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sample_id`,`worker_id`),
  KEY `worker_fk` (`worker_id`),
  CONSTRAINT `sample_fk` FOREIGN KEY (`sample_id`) REFERENCES `samples` (`sample_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `worker_fk` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`worker_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_workers`
--

LOCK TABLES `sample_workers` WRITE;
/*!40000 ALTER TABLE `sample_workers` DISABLE KEYS */;
INSERT INTO `sample_workers` VALUES (610,2);
INSERT INTO `sample_workers` VALUES (611,2);
INSERT INTO `sample_workers` VALUES (612,2);
INSERT INTO `sample_workers` VALUES (613,2);
INSERT INTO `sample_workers` VALUES (614,2);
INSERT INTO `sample_workers` VALUES (615,2);
INSERT INTO `sample_workers` VALUES (634,2);
INSERT INTO `sample_workers` VALUES (635,2);
INSERT INTO `sample_workers` VALUES (636,2);
INSERT INTO `sample_workers` VALUES (637,2);
INSERT INTO `sample_workers` VALUES (638,2);
INSERT INTO `sample_workers` VALUES (639,2);
INSERT INTO `sample_workers` VALUES (658,2);
INSERT INTO `sample_workers` VALUES (659,2);
INSERT INTO `sample_workers` VALUES (660,2);
INSERT INTO `sample_workers` VALUES (661,2);
INSERT INTO `sample_workers` VALUES (662,2);
INSERT INTO `sample_workers` VALUES (663,2);
INSERT INTO `sample_workers` VALUES (682,2);
INSERT INTO `sample_workers` VALUES (683,2);
INSERT INTO `sample_workers` VALUES (684,2);
INSERT INTO `sample_workers` VALUES (685,2);
INSERT INTO `sample_workers` VALUES (686,2);
INSERT INTO `sample_workers` VALUES (687,2);
INSERT INTO `sample_workers` VALUES (706,2);
INSERT INTO `sample_workers` VALUES (707,2);
INSERT INTO `sample_workers` VALUES (708,2);
INSERT INTO `sample_workers` VALUES (709,2);
INSERT INTO `sample_workers` VALUES (710,2);
INSERT INTO `sample_workers` VALUES (711,2);
INSERT INTO `sample_workers` VALUES (730,2);
INSERT INTO `sample_workers` VALUES (731,2);
INSERT INTO `sample_workers` VALUES (732,2);
INSERT INTO `sample_workers` VALUES (733,2);
INSERT INTO `sample_workers` VALUES (734,2);
INSERT INTO `sample_workers` VALUES (735,2);
INSERT INTO `sample_workers` VALUES (778,2);
INSERT INTO `sample_workers` VALUES (779,2);
INSERT INTO `sample_workers` VALUES (780,2);
INSERT INTO `sample_workers` VALUES (781,2);
INSERT INTO `sample_workers` VALUES (782,2);
INSERT INTO `sample_workers` VALUES (783,2);
INSERT INTO `sample_workers` VALUES (610,3);
INSERT INTO `sample_workers` VALUES (611,3);
INSERT INTO `sample_workers` VALUES (612,3);
INSERT INTO `sample_workers` VALUES (613,3);
INSERT INTO `sample_workers` VALUES (614,3);
INSERT INTO `sample_workers` VALUES (615,3);
INSERT INTO `sample_workers` VALUES (658,3);
INSERT INTO `sample_workers` VALUES (659,3);
INSERT INTO `sample_workers` VALUES (660,3);
INSERT INTO `sample_workers` VALUES (661,3);
INSERT INTO `sample_workers` VALUES (662,3);
INSERT INTO `sample_workers` VALUES (663,3);
INSERT INTO `sample_workers` VALUES (730,3);
INSERT INTO `sample_workers` VALUES (731,3);
INSERT INTO `sample_workers` VALUES (732,3);
INSERT INTO `sample_workers` VALUES (733,3);
INSERT INTO `sample_workers` VALUES (734,3);
INSERT INTO `sample_workers` VALUES (735,3);
INSERT INTO `sample_workers` VALUES (778,3);
INSERT INTO `sample_workers` VALUES (779,3);
INSERT INTO `sample_workers` VALUES (780,3);
INSERT INTO `sample_workers` VALUES (781,3);
INSERT INTO `sample_workers` VALUES (782,3);
INSERT INTO `sample_workers` VALUES (783,3);
INSERT INTO `sample_workers` VALUES (610,4);
INSERT INTO `sample_workers` VALUES (611,4);
INSERT INTO `sample_workers` VALUES (612,4);
INSERT INTO `sample_workers` VALUES (613,4);
INSERT INTO `sample_workers` VALUES (614,4);
INSERT INTO `sample_workers` VALUES (615,4);
INSERT INTO `sample_workers` VALUES (754,4);
INSERT INTO `sample_workers` VALUES (755,4);
INSERT INTO `sample_workers` VALUES (756,4);
INSERT INTO `sample_workers` VALUES (757,4);
INSERT INTO `sample_workers` VALUES (758,4);
INSERT INTO `sample_workers` VALUES (759,4);
INSERT INTO `sample_workers` VALUES (778,4);
INSERT INTO `sample_workers` VALUES (779,4);
INSERT INTO `sample_workers` VALUES (780,4);
INSERT INTO `sample_workers` VALUES (781,4);
INSERT INTO `sample_workers` VALUES (782,4);
INSERT INTO `sample_workers` VALUES (783,4);
INSERT INTO `sample_workers` VALUES (598,5);
INSERT INTO `sample_workers` VALUES (599,5);
INSERT INTO `sample_workers` VALUES (600,5);
INSERT INTO `sample_workers` VALUES (601,5);
INSERT INTO `sample_workers` VALUES (602,5);
INSERT INTO `sample_workers` VALUES (603,5);
INSERT INTO `sample_workers` VALUES (622,5);
INSERT INTO `sample_workers` VALUES (623,5);
INSERT INTO `sample_workers` VALUES (624,5);
INSERT INTO `sample_workers` VALUES (625,5);
INSERT INTO `sample_workers` VALUES (626,5);
INSERT INTO `sample_workers` VALUES (627,5);
INSERT INTO `sample_workers` VALUES (670,5);
INSERT INTO `sample_workers` VALUES (671,5);
INSERT INTO `sample_workers` VALUES (672,5);
INSERT INTO `sample_workers` VALUES (673,5);
INSERT INTO `sample_workers` VALUES (674,5);
INSERT INTO `sample_workers` VALUES (675,5);
INSERT INTO `sample_workers` VALUES (694,5);
INSERT INTO `sample_workers` VALUES (695,5);
INSERT INTO `sample_workers` VALUES (696,5);
INSERT INTO `sample_workers` VALUES (697,5);
INSERT INTO `sample_workers` VALUES (698,5);
INSERT INTO `sample_workers` VALUES (699,5);
INSERT INTO `sample_workers` VALUES (718,5);
INSERT INTO `sample_workers` VALUES (719,5);
INSERT INTO `sample_workers` VALUES (720,5);
INSERT INTO `sample_workers` VALUES (721,5);
INSERT INTO `sample_workers` VALUES (722,5);
INSERT INTO `sample_workers` VALUES (723,5);
INSERT INTO `sample_workers` VALUES (742,5);
INSERT INTO `sample_workers` VALUES (743,5);
INSERT INTO `sample_workers` VALUES (744,5);
INSERT INTO `sample_workers` VALUES (745,5);
INSERT INTO `sample_workers` VALUES (746,5);
INSERT INTO `sample_workers` VALUES (747,5);
INSERT INTO `sample_workers` VALUES (766,5);
INSERT INTO `sample_workers` VALUES (767,5);
INSERT INTO `sample_workers` VALUES (768,5);
INSERT INTO `sample_workers` VALUES (769,5);
INSERT INTO `sample_workers` VALUES (770,5);
INSERT INTO `sample_workers` VALUES (771,5);
INSERT INTO `sample_workers` VALUES (634,6);
INSERT INTO `sample_workers` VALUES (635,6);
INSERT INTO `sample_workers` VALUES (636,6);
INSERT INTO `sample_workers` VALUES (637,6);
INSERT INTO `sample_workers` VALUES (638,6);
INSERT INTO `sample_workers` VALUES (639,6);
INSERT INTO `sample_workers` VALUES (754,6);
INSERT INTO `sample_workers` VALUES (755,6);
INSERT INTO `sample_workers` VALUES (756,6);
INSERT INTO `sample_workers` VALUES (757,6);
INSERT INTO `sample_workers` VALUES (758,6);
INSERT INTO `sample_workers` VALUES (759,6);
INSERT INTO `sample_workers` VALUES (772,6);
INSERT INTO `sample_workers` VALUES (773,6);
INSERT INTO `sample_workers` VALUES (774,6);
INSERT INTO `sample_workers` VALUES (775,6);
INSERT INTO `sample_workers` VALUES (776,6);
INSERT INTO `sample_workers` VALUES (777,6);
INSERT INTO `sample_workers` VALUES (598,7);
INSERT INTO `sample_workers` VALUES (599,7);
INSERT INTO `sample_workers` VALUES (600,7);
INSERT INTO `sample_workers` VALUES (601,7);
INSERT INTO `sample_workers` VALUES (602,7);
INSERT INTO `sample_workers` VALUES (603,7);
INSERT INTO `sample_workers` VALUES (622,7);
INSERT INTO `sample_workers` VALUES (623,7);
INSERT INTO `sample_workers` VALUES (624,7);
INSERT INTO `sample_workers` VALUES (625,7);
INSERT INTO `sample_workers` VALUES (626,7);
INSERT INTO `sample_workers` VALUES (627,7);
INSERT INTO `sample_workers` VALUES (646,7);
INSERT INTO `sample_workers` VALUES (647,7);
INSERT INTO `sample_workers` VALUES (648,7);
INSERT INTO `sample_workers` VALUES (649,7);
INSERT INTO `sample_workers` VALUES (650,7);
INSERT INTO `sample_workers` VALUES (651,7);
INSERT INTO `sample_workers` VALUES (670,7);
INSERT INTO `sample_workers` VALUES (671,7);
INSERT INTO `sample_workers` VALUES (672,7);
INSERT INTO `sample_workers` VALUES (673,7);
INSERT INTO `sample_workers` VALUES (674,7);
INSERT INTO `sample_workers` VALUES (675,7);
INSERT INTO `sample_workers` VALUES (742,7);
INSERT INTO `sample_workers` VALUES (743,7);
INSERT INTO `sample_workers` VALUES (744,7);
INSERT INTO `sample_workers` VALUES (745,7);
INSERT INTO `sample_workers` VALUES (746,7);
INSERT INTO `sample_workers` VALUES (747,7);
INSERT INTO `sample_workers` VALUES (766,7);
INSERT INTO `sample_workers` VALUES (767,7);
INSERT INTO `sample_workers` VALUES (768,7);
INSERT INTO `sample_workers` VALUES (769,7);
INSERT INTO `sample_workers` VALUES (770,7);
INSERT INTO `sample_workers` VALUES (771,7);
INSERT INTO `sample_workers` VALUES (682,9);
INSERT INTO `sample_workers` VALUES (683,9);
INSERT INTO `sample_workers` VALUES (684,9);
INSERT INTO `sample_workers` VALUES (685,9);
INSERT INTO `sample_workers` VALUES (686,9);
INSERT INTO `sample_workers` VALUES (687,9);
INSERT INTO `sample_workers` VALUES (688,9);
INSERT INTO `sample_workers` VALUES (689,9);
INSERT INTO `sample_workers` VALUES (690,9);
INSERT INTO `sample_workers` VALUES (691,9);
INSERT INTO `sample_workers` VALUES (692,9);
INSERT INTO `sample_workers` VALUES (693,9);
INSERT INTO `sample_workers` VALUES (694,9);
INSERT INTO `sample_workers` VALUES (695,9);
INSERT INTO `sample_workers` VALUES (696,9);
INSERT INTO `sample_workers` VALUES (697,9);
INSERT INTO `sample_workers` VALUES (698,9);
INSERT INTO `sample_workers` VALUES (699,9);
INSERT INTO `sample_workers` VALUES (700,9);
INSERT INTO `sample_workers` VALUES (701,9);
INSERT INTO `sample_workers` VALUES (702,9);
INSERT INTO `sample_workers` VALUES (703,9);
INSERT INTO `sample_workers` VALUES (704,9);
INSERT INTO `sample_workers` VALUES (705,9);
INSERT INTO `sample_workers` VALUES (706,9);
INSERT INTO `sample_workers` VALUES (707,9);
INSERT INTO `sample_workers` VALUES (708,9);
INSERT INTO `sample_workers` VALUES (709,9);
INSERT INTO `sample_workers` VALUES (710,9);
INSERT INTO `sample_workers` VALUES (711,9);
INSERT INTO `sample_workers` VALUES (760,9);
INSERT INTO `sample_workers` VALUES (761,9);
INSERT INTO `sample_workers` VALUES (762,9);
INSERT INTO `sample_workers` VALUES (763,9);
INSERT INTO `sample_workers` VALUES (764,9);
INSERT INTO `sample_workers` VALUES (765,9);
INSERT INTO `sample_workers` VALUES (604,10);
INSERT INTO `sample_workers` VALUES (605,10);
INSERT INTO `sample_workers` VALUES (606,10);
INSERT INTO `sample_workers` VALUES (607,10);
INSERT INTO `sample_workers` VALUES (608,10);
INSERT INTO `sample_workers` VALUES (609,10);
INSERT INTO `sample_workers` VALUES (628,10);
INSERT INTO `sample_workers` VALUES (629,10);
INSERT INTO `sample_workers` VALUES (630,10);
INSERT INTO `sample_workers` VALUES (631,10);
INSERT INTO `sample_workers` VALUES (632,10);
INSERT INTO `sample_workers` VALUES (633,10);
INSERT INTO `sample_workers` VALUES (652,10);
INSERT INTO `sample_workers` VALUES (653,10);
INSERT INTO `sample_workers` VALUES (654,10);
INSERT INTO `sample_workers` VALUES (655,10);
INSERT INTO `sample_workers` VALUES (656,10);
INSERT INTO `sample_workers` VALUES (657,10);
INSERT INTO `sample_workers` VALUES (676,10);
INSERT INTO `sample_workers` VALUES (677,10);
INSERT INTO `sample_workers` VALUES (678,10);
INSERT INTO `sample_workers` VALUES (679,10);
INSERT INTO `sample_workers` VALUES (680,10);
INSERT INTO `sample_workers` VALUES (681,10);
INSERT INTO `sample_workers` VALUES (724,10);
INSERT INTO `sample_workers` VALUES (725,10);
INSERT INTO `sample_workers` VALUES (726,10);
INSERT INTO `sample_workers` VALUES (727,10);
INSERT INTO `sample_workers` VALUES (728,10);
INSERT INTO `sample_workers` VALUES (729,10);
INSERT INTO `sample_workers` VALUES (748,10);
INSERT INTO `sample_workers` VALUES (749,10);
INSERT INTO `sample_workers` VALUES (750,10);
INSERT INTO `sample_workers` VALUES (751,10);
INSERT INTO `sample_workers` VALUES (752,10);
INSERT INTO `sample_workers` VALUES (753,10);
INSERT INTO `sample_workers` VALUES (550,11);
INSERT INTO `sample_workers` VALUES (551,11);
INSERT INTO `sample_workers` VALUES (552,11);
INSERT INTO `sample_workers` VALUES (553,11);
INSERT INTO `sample_workers` VALUES (554,11);
INSERT INTO `sample_workers` VALUES (555,11);
INSERT INTO `sample_workers` VALUES (616,11);
INSERT INTO `sample_workers` VALUES (617,11);
INSERT INTO `sample_workers` VALUES (618,11);
INSERT INTO `sample_workers` VALUES (619,11);
INSERT INTO `sample_workers` VALUES (620,11);
INSERT INTO `sample_workers` VALUES (621,11);
INSERT INTO `sample_workers` VALUES (640,11);
INSERT INTO `sample_workers` VALUES (641,11);
INSERT INTO `sample_workers` VALUES (642,11);
INSERT INTO `sample_workers` VALUES (643,11);
INSERT INTO `sample_workers` VALUES (644,11);
INSERT INTO `sample_workers` VALUES (645,11);
INSERT INTO `sample_workers` VALUES (646,11);
INSERT INTO `sample_workers` VALUES (647,11);
INSERT INTO `sample_workers` VALUES (648,11);
INSERT INTO `sample_workers` VALUES (649,11);
INSERT INTO `sample_workers` VALUES (650,11);
INSERT INTO `sample_workers` VALUES (651,11);
INSERT INTO `sample_workers` VALUES (664,11);
INSERT INTO `sample_workers` VALUES (665,11);
INSERT INTO `sample_workers` VALUES (666,11);
INSERT INTO `sample_workers` VALUES (667,11);
INSERT INTO `sample_workers` VALUES (668,11);
INSERT INTO `sample_workers` VALUES (669,11);
INSERT INTO `sample_workers` VALUES (736,11);
INSERT INTO `sample_workers` VALUES (737,11);
INSERT INTO `sample_workers` VALUES (738,11);
INSERT INTO `sample_workers` VALUES (739,11);
INSERT INTO `sample_workers` VALUES (740,11);
INSERT INTO `sample_workers` VALUES (741,11);
INSERT INTO `sample_workers` VALUES (604,12);
INSERT INTO `sample_workers` VALUES (605,12);
INSERT INTO `sample_workers` VALUES (606,12);
INSERT INTO `sample_workers` VALUES (607,12);
INSERT INTO `sample_workers` VALUES (608,12);
INSERT INTO `sample_workers` VALUES (609,12);
INSERT INTO `sample_workers` VALUES (628,12);
INSERT INTO `sample_workers` VALUES (629,12);
INSERT INTO `sample_workers` VALUES (630,12);
INSERT INTO `sample_workers` VALUES (631,12);
INSERT INTO `sample_workers` VALUES (632,12);
INSERT INTO `sample_workers` VALUES (633,12);
INSERT INTO `sample_workers` VALUES (652,12);
INSERT INTO `sample_workers` VALUES (653,12);
INSERT INTO `sample_workers` VALUES (654,12);
INSERT INTO `sample_workers` VALUES (655,12);
INSERT INTO `sample_workers` VALUES (656,12);
INSERT INTO `sample_workers` VALUES (657,12);
INSERT INTO `sample_workers` VALUES (676,12);
INSERT INTO `sample_workers` VALUES (677,12);
INSERT INTO `sample_workers` VALUES (678,12);
INSERT INTO `sample_workers` VALUES (679,12);
INSERT INTO `sample_workers` VALUES (680,12);
INSERT INTO `sample_workers` VALUES (681,12);
INSERT INTO `sample_workers` VALUES (700,12);
INSERT INTO `sample_workers` VALUES (701,12);
INSERT INTO `sample_workers` VALUES (702,12);
INSERT INTO `sample_workers` VALUES (703,12);
INSERT INTO `sample_workers` VALUES (704,12);
INSERT INTO `sample_workers` VALUES (705,12);
INSERT INTO `sample_workers` VALUES (724,12);
INSERT INTO `sample_workers` VALUES (725,12);
INSERT INTO `sample_workers` VALUES (726,12);
INSERT INTO `sample_workers` VALUES (727,12);
INSERT INTO `sample_workers` VALUES (728,12);
INSERT INTO `sample_workers` VALUES (729,12);
INSERT INTO `sample_workers` VALUES (748,12);
INSERT INTO `sample_workers` VALUES (749,12);
INSERT INTO `sample_workers` VALUES (750,12);
INSERT INTO `sample_workers` VALUES (751,12);
INSERT INTO `sample_workers` VALUES (752,12);
INSERT INTO `sample_workers` VALUES (753,12);
INSERT INTO `sample_workers` VALUES (592,13);
INSERT INTO `sample_workers` VALUES (593,13);
INSERT INTO `sample_workers` VALUES (594,13);
INSERT INTO `sample_workers` VALUES (595,13);
INSERT INTO `sample_workers` VALUES (596,13);
INSERT INTO `sample_workers` VALUES (597,13);
INSERT INTO `sample_workers` VALUES (640,13);
INSERT INTO `sample_workers` VALUES (641,13);
INSERT INTO `sample_workers` VALUES (642,13);
INSERT INTO `sample_workers` VALUES (643,13);
INSERT INTO `sample_workers` VALUES (644,13);
INSERT INTO `sample_workers` VALUES (645,13);
INSERT INTO `sample_workers` VALUES (712,13);
INSERT INTO `sample_workers` VALUES (713,13);
INSERT INTO `sample_workers` VALUES (714,13);
INSERT INTO `sample_workers` VALUES (715,13);
INSERT INTO `sample_workers` VALUES (716,13);
INSERT INTO `sample_workers` VALUES (717,13);
INSERT INTO `sample_workers` VALUES (592,14);
INSERT INTO `sample_workers` VALUES (593,14);
INSERT INTO `sample_workers` VALUES (594,14);
INSERT INTO `sample_workers` VALUES (595,14);
INSERT INTO `sample_workers` VALUES (596,14);
INSERT INTO `sample_workers` VALUES (597,14);
INSERT INTO `sample_workers` VALUES (616,14);
INSERT INTO `sample_workers` VALUES (617,14);
INSERT INTO `sample_workers` VALUES (618,14);
INSERT INTO `sample_workers` VALUES (619,14);
INSERT INTO `sample_workers` VALUES (620,14);
INSERT INTO `sample_workers` VALUES (621,14);
INSERT INTO `sample_workers` VALUES (640,14);
INSERT INTO `sample_workers` VALUES (641,14);
INSERT INTO `sample_workers` VALUES (642,14);
INSERT INTO `sample_workers` VALUES (643,14);
INSERT INTO `sample_workers` VALUES (644,14);
INSERT INTO `sample_workers` VALUES (645,14);
INSERT INTO `sample_workers` VALUES (664,14);
INSERT INTO `sample_workers` VALUES (665,14);
INSERT INTO `sample_workers` VALUES (666,14);
INSERT INTO `sample_workers` VALUES (667,14);
INSERT INTO `sample_workers` VALUES (668,14);
INSERT INTO `sample_workers` VALUES (669,14);
INSERT INTO `sample_workers` VALUES (712,14);
INSERT INTO `sample_workers` VALUES (713,14);
INSERT INTO `sample_workers` VALUES (714,14);
INSERT INTO `sample_workers` VALUES (715,14);
INSERT INTO `sample_workers` VALUES (716,14);
INSERT INTO `sample_workers` VALUES (717,14);
INSERT INTO `sample_workers` VALUES (736,14);
INSERT INTO `sample_workers` VALUES (737,14);
INSERT INTO `sample_workers` VALUES (738,14);
INSERT INTO `sample_workers` VALUES (739,14);
INSERT INTO `sample_workers` VALUES (740,14);
INSERT INTO `sample_workers` VALUES (741,14);
INSERT INTO `sample_workers` VALUES (760,14);
INSERT INTO `sample_workers` VALUES (761,14);
INSERT INTO `sample_workers` VALUES (762,14);
INSERT INTO `sample_workers` VALUES (763,14);
INSERT INTO `sample_workers` VALUES (764,14);
INSERT INTO `sample_workers` VALUES (765,14);
INSERT INTO `sample_workers` VALUES (592,15);
INSERT INTO `sample_workers` VALUES (593,15);
INSERT INTO `sample_workers` VALUES (594,15);
INSERT INTO `sample_workers` VALUES (595,15);
INSERT INTO `sample_workers` VALUES (596,15);
INSERT INTO `sample_workers` VALUES (597,15);
INSERT INTO `sample_workers` VALUES (664,15);
INSERT INTO `sample_workers` VALUES (665,15);
INSERT INTO `sample_workers` VALUES (666,15);
INSERT INTO `sample_workers` VALUES (667,15);
INSERT INTO `sample_workers` VALUES (668,15);
INSERT INTO `sample_workers` VALUES (669,15);
INSERT INTO `sample_workers` VALUES (688,15);
INSERT INTO `sample_workers` VALUES (689,15);
INSERT INTO `sample_workers` VALUES (690,15);
INSERT INTO `sample_workers` VALUES (691,15);
INSERT INTO `sample_workers` VALUES (692,15);
INSERT INTO `sample_workers` VALUES (693,15);
INSERT INTO `sample_workers` VALUES (712,15);
INSERT INTO `sample_workers` VALUES (713,15);
INSERT INTO `sample_workers` VALUES (714,15);
INSERT INTO `sample_workers` VALUES (715,15);
INSERT INTO `sample_workers` VALUES (716,15);
INSERT INTO `sample_workers` VALUES (717,15);
INSERT INTO `sample_workers` VALUES (736,15);
INSERT INTO `sample_workers` VALUES (737,15);
INSERT INTO `sample_workers` VALUES (738,15);
INSERT INTO `sample_workers` VALUES (739,15);
INSERT INTO `sample_workers` VALUES (740,15);
INSERT INTO `sample_workers` VALUES (741,15);
INSERT INTO `sample_workers` VALUES (760,15);
INSERT INTO `sample_workers` VALUES (761,15);
INSERT INTO `sample_workers` VALUES (762,15);
INSERT INTO `sample_workers` VALUES (763,15);
INSERT INTO `sample_workers` VALUES (764,15);
INSERT INTO `sample_workers` VALUES (765,15);
INSERT INTO `sample_workers` VALUES (604,17);
INSERT INTO `sample_workers` VALUES (605,17);
INSERT INTO `sample_workers` VALUES (606,17);
INSERT INTO `sample_workers` VALUES (607,17);
INSERT INTO `sample_workers` VALUES (608,17);
INSERT INTO `sample_workers` VALUES (609,17);
INSERT INTO `sample_workers` VALUES (628,17);
INSERT INTO `sample_workers` VALUES (629,17);
INSERT INTO `sample_workers` VALUES (630,17);
INSERT INTO `sample_workers` VALUES (631,17);
INSERT INTO `sample_workers` VALUES (632,17);
INSERT INTO `sample_workers` VALUES (633,17);
INSERT INTO `sample_workers` VALUES (652,17);
INSERT INTO `sample_workers` VALUES (653,17);
INSERT INTO `sample_workers` VALUES (654,17);
INSERT INTO `sample_workers` VALUES (655,17);
INSERT INTO `sample_workers` VALUES (656,17);
INSERT INTO `sample_workers` VALUES (657,17);
INSERT INTO `sample_workers` VALUES (676,17);
INSERT INTO `sample_workers` VALUES (677,17);
INSERT INTO `sample_workers` VALUES (678,17);
INSERT INTO `sample_workers` VALUES (679,17);
INSERT INTO `sample_workers` VALUES (680,17);
INSERT INTO `sample_workers` VALUES (681,17);
INSERT INTO `sample_workers` VALUES (700,17);
INSERT INTO `sample_workers` VALUES (701,17);
INSERT INTO `sample_workers` VALUES (702,17);
INSERT INTO `sample_workers` VALUES (703,17);
INSERT INTO `sample_workers` VALUES (704,17);
INSERT INTO `sample_workers` VALUES (705,17);
INSERT INTO `sample_workers` VALUES (724,17);
INSERT INTO `sample_workers` VALUES (725,17);
INSERT INTO `sample_workers` VALUES (726,17);
INSERT INTO `sample_workers` VALUES (727,17);
INSERT INTO `sample_workers` VALUES (728,17);
INSERT INTO `sample_workers` VALUES (729,17);
INSERT INTO `sample_workers` VALUES (748,17);
INSERT INTO `sample_workers` VALUES (749,17);
INSERT INTO `sample_workers` VALUES (750,17);
INSERT INTO `sample_workers` VALUES (751,17);
INSERT INTO `sample_workers` VALUES (752,17);
INSERT INTO `sample_workers` VALUES (753,17);
INSERT INTO `sample_workers` VALUES (772,17);
INSERT INTO `sample_workers` VALUES (773,17);
INSERT INTO `sample_workers` VALUES (774,17);
INSERT INTO `sample_workers` VALUES (775,17);
INSERT INTO `sample_workers` VALUES (776,17);
INSERT INTO `sample_workers` VALUES (777,17);
INSERT INTO `sample_workers` VALUES (488,18);
INSERT INTO `sample_workers` VALUES (489,18);
INSERT INTO `sample_workers` VALUES (490,18);
INSERT INTO `sample_workers` VALUES (491,18);
INSERT INTO `sample_workers` VALUES (492,18);
INSERT INTO `sample_workers` VALUES (493,18);
INSERT INTO `sample_workers` VALUES (498,18);
INSERT INTO `sample_workers` VALUES (499,18);
INSERT INTO `sample_workers` VALUES (500,18);
INSERT INTO `sample_workers` VALUES (501,18);
INSERT INTO `sample_workers` VALUES (502,18);
INSERT INTO `sample_workers` VALUES (503,18);
INSERT INTO `sample_workers` VALUES (532,18);
INSERT INTO `sample_workers` VALUES (533,18);
INSERT INTO `sample_workers` VALUES (534,18);
INSERT INTO `sample_workers` VALUES (535,18);
INSERT INTO `sample_workers` VALUES (536,18);
INSERT INTO `sample_workers` VALUES (537,18);
INSERT INTO `sample_workers` VALUES (598,18);
INSERT INTO `sample_workers` VALUES (599,18);
INSERT INTO `sample_workers` VALUES (600,18);
INSERT INTO `sample_workers` VALUES (601,18);
INSERT INTO `sample_workers` VALUES (602,18);
INSERT INTO `sample_workers` VALUES (603,18);
INSERT INTO `sample_workers` VALUES (622,18);
INSERT INTO `sample_workers` VALUES (623,18);
INSERT INTO `sample_workers` VALUES (624,18);
INSERT INTO `sample_workers` VALUES (625,18);
INSERT INTO `sample_workers` VALUES (626,18);
INSERT INTO `sample_workers` VALUES (627,18);
INSERT INTO `sample_workers` VALUES (718,18);
INSERT INTO `sample_workers` VALUES (719,18);
INSERT INTO `sample_workers` VALUES (720,18);
INSERT INTO `sample_workers` VALUES (721,18);
INSERT INTO `sample_workers` VALUES (722,18);
INSERT INTO `sample_workers` VALUES (723,18);
INSERT INTO `sample_workers` VALUES (766,18);
INSERT INTO `sample_workers` VALUES (767,18);
INSERT INTO `sample_workers` VALUES (768,18);
INSERT INTO `sample_workers` VALUES (769,18);
INSERT INTO `sample_workers` VALUES (770,18);
INSERT INTO `sample_workers` VALUES (771,18);
INSERT INTO `sample_workers` VALUES (488,19);
INSERT INTO `sample_workers` VALUES (489,19);
INSERT INTO `sample_workers` VALUES (490,19);
INSERT INTO `sample_workers` VALUES (491,19);
INSERT INTO `sample_workers` VALUES (492,19);
INSERT INTO `sample_workers` VALUES (493,19);
INSERT INTO `sample_workers` VALUES (520,19);
INSERT INTO `sample_workers` VALUES (521,19);
INSERT INTO `sample_workers` VALUES (522,19);
INSERT INTO `sample_workers` VALUES (523,19);
INSERT INTO `sample_workers` VALUES (524,19);
INSERT INTO `sample_workers` VALUES (525,19);
INSERT INTO `sample_workers` VALUES (532,19);
INSERT INTO `sample_workers` VALUES (533,19);
INSERT INTO `sample_workers` VALUES (534,19);
INSERT INTO `sample_workers` VALUES (535,19);
INSERT INTO `sample_workers` VALUES (536,19);
INSERT INTO `sample_workers` VALUES (537,19);
INSERT INTO `sample_workers` VALUES (556,19);
INSERT INTO `sample_workers` VALUES (557,19);
INSERT INTO `sample_workers` VALUES (558,19);
INSERT INTO `sample_workers` VALUES (559,19);
INSERT INTO `sample_workers` VALUES (560,19);
INSERT INTO `sample_workers` VALUES (561,19);
INSERT INTO `sample_workers` VALUES (568,19);
INSERT INTO `sample_workers` VALUES (569,19);
INSERT INTO `sample_workers` VALUES (570,19);
INSERT INTO `sample_workers` VALUES (571,19);
INSERT INTO `sample_workers` VALUES (572,19);
INSERT INTO `sample_workers` VALUES (573,19);
INSERT INTO `sample_workers` VALUES (488,20);
INSERT INTO `sample_workers` VALUES (489,20);
INSERT INTO `sample_workers` VALUES (490,20);
INSERT INTO `sample_workers` VALUES (491,20);
INSERT INTO `sample_workers` VALUES (492,20);
INSERT INTO `sample_workers` VALUES (493,20);
INSERT INTO `sample_workers` VALUES (510,20);
INSERT INTO `sample_workers` VALUES (511,20);
INSERT INTO `sample_workers` VALUES (512,20);
INSERT INTO `sample_workers` VALUES (513,20);
INSERT INTO `sample_workers` VALUES (514,20);
INSERT INTO `sample_workers` VALUES (515,20);
INSERT INTO `sample_workers` VALUES (520,20);
INSERT INTO `sample_workers` VALUES (521,20);
INSERT INTO `sample_workers` VALUES (522,20);
INSERT INTO `sample_workers` VALUES (523,20);
INSERT INTO `sample_workers` VALUES (524,20);
INSERT INTO `sample_workers` VALUES (525,20);
INSERT INTO `sample_workers` VALUES (544,20);
INSERT INTO `sample_workers` VALUES (545,20);
INSERT INTO `sample_workers` VALUES (546,20);
INSERT INTO `sample_workers` VALUES (547,20);
INSERT INTO `sample_workers` VALUES (548,20);
INSERT INTO `sample_workers` VALUES (549,20);
INSERT INTO `sample_workers` VALUES (556,20);
INSERT INTO `sample_workers` VALUES (557,20);
INSERT INTO `sample_workers` VALUES (558,20);
INSERT INTO `sample_workers` VALUES (559,20);
INSERT INTO `sample_workers` VALUES (560,20);
INSERT INTO `sample_workers` VALUES (561,20);
INSERT INTO `sample_workers` VALUES (568,20);
INSERT INTO `sample_workers` VALUES (569,20);
INSERT INTO `sample_workers` VALUES (570,20);
INSERT INTO `sample_workers` VALUES (571,20);
INSERT INTO `sample_workers` VALUES (572,20);
INSERT INTO `sample_workers` VALUES (573,20);
INSERT INTO `sample_workers` VALUES (498,21);
INSERT INTO `sample_workers` VALUES (499,21);
INSERT INTO `sample_workers` VALUES (500,21);
INSERT INTO `sample_workers` VALUES (501,21);
INSERT INTO `sample_workers` VALUES (502,21);
INSERT INTO `sample_workers` VALUES (503,21);
INSERT INTO `sample_workers` VALUES (510,21);
INSERT INTO `sample_workers` VALUES (511,21);
INSERT INTO `sample_workers` VALUES (512,21);
INSERT INTO `sample_workers` VALUES (513,21);
INSERT INTO `sample_workers` VALUES (514,21);
INSERT INTO `sample_workers` VALUES (515,21);
INSERT INTO `sample_workers` VALUES (520,21);
INSERT INTO `sample_workers` VALUES (521,21);
INSERT INTO `sample_workers` VALUES (522,21);
INSERT INTO `sample_workers` VALUES (523,21);
INSERT INTO `sample_workers` VALUES (524,21);
INSERT INTO `sample_workers` VALUES (525,21);
INSERT INTO `sample_workers` VALUES (544,21);
INSERT INTO `sample_workers` VALUES (545,21);
INSERT INTO `sample_workers` VALUES (546,21);
INSERT INTO `sample_workers` VALUES (547,21);
INSERT INTO `sample_workers` VALUES (548,21);
INSERT INTO `sample_workers` VALUES (549,21);
INSERT INTO `sample_workers` VALUES (556,21);
INSERT INTO `sample_workers` VALUES (557,21);
INSERT INTO `sample_workers` VALUES (558,21);
INSERT INTO `sample_workers` VALUES (559,21);
INSERT INTO `sample_workers` VALUES (560,21);
INSERT INTO `sample_workers` VALUES (561,21);
INSERT INTO `sample_workers` VALUES (568,21);
INSERT INTO `sample_workers` VALUES (569,21);
INSERT INTO `sample_workers` VALUES (570,21);
INSERT INTO `sample_workers` VALUES (571,21);
INSERT INTO `sample_workers` VALUES (572,21);
INSERT INTO `sample_workers` VALUES (573,21);
INSERT INTO `sample_workers` VALUES (498,22);
INSERT INTO `sample_workers` VALUES (499,22);
INSERT INTO `sample_workers` VALUES (500,22);
INSERT INTO `sample_workers` VALUES (501,22);
INSERT INTO `sample_workers` VALUES (502,22);
INSERT INTO `sample_workers` VALUES (503,22);
INSERT INTO `sample_workers` VALUES (510,22);
INSERT INTO `sample_workers` VALUES (511,22);
INSERT INTO `sample_workers` VALUES (512,22);
INSERT INTO `sample_workers` VALUES (513,22);
INSERT INTO `sample_workers` VALUES (514,22);
INSERT INTO `sample_workers` VALUES (515,22);
INSERT INTO `sample_workers` VALUES (532,22);
INSERT INTO `sample_workers` VALUES (533,22);
INSERT INTO `sample_workers` VALUES (534,22);
INSERT INTO `sample_workers` VALUES (535,22);
INSERT INTO `sample_workers` VALUES (536,22);
INSERT INTO `sample_workers` VALUES (537,22);
INSERT INTO `sample_workers` VALUES (544,22);
INSERT INTO `sample_workers` VALUES (545,22);
INSERT INTO `sample_workers` VALUES (546,22);
INSERT INTO `sample_workers` VALUES (547,22);
INSERT INTO `sample_workers` VALUES (548,22);
INSERT INTO `sample_workers` VALUES (549,22);
INSERT INTO `sample_workers` VALUES (494,23);
INSERT INTO `sample_workers` VALUES (495,23);
INSERT INTO `sample_workers` VALUES (496,23);
INSERT INTO `sample_workers` VALUES (497,23);
INSERT INTO `sample_workers` VALUES (516,23);
INSERT INTO `sample_workers` VALUES (517,23);
INSERT INTO `sample_workers` VALUES (518,23);
INSERT INTO `sample_workers` VALUES (519,23);
INSERT INTO `sample_workers` VALUES (538,23);
INSERT INTO `sample_workers` VALUES (539,23);
INSERT INTO `sample_workers` VALUES (540,23);
INSERT INTO `sample_workers` VALUES (541,23);
INSERT INTO `sample_workers` VALUES (542,23);
INSERT INTO `sample_workers` VALUES (543,23);
INSERT INTO `sample_workers` VALUES (550,23);
INSERT INTO `sample_workers` VALUES (551,23);
INSERT INTO `sample_workers` VALUES (552,23);
INSERT INTO `sample_workers` VALUES (553,23);
INSERT INTO `sample_workers` VALUES (554,23);
INSERT INTO `sample_workers` VALUES (555,23);
INSERT INTO `sample_workers` VALUES (562,23);
INSERT INTO `sample_workers` VALUES (563,23);
INSERT INTO `sample_workers` VALUES (564,23);
INSERT INTO `sample_workers` VALUES (565,23);
INSERT INTO `sample_workers` VALUES (566,23);
INSERT INTO `sample_workers` VALUES (567,23);
INSERT INTO `sample_workers` VALUES (574,23);
INSERT INTO `sample_workers` VALUES (575,23);
INSERT INTO `sample_workers` VALUES (576,23);
INSERT INTO `sample_workers` VALUES (577,23);
INSERT INTO `sample_workers` VALUES (578,23);
INSERT INTO `sample_workers` VALUES (579,23);
INSERT INTO `sample_workers` VALUES (494,24);
INSERT INTO `sample_workers` VALUES (495,24);
INSERT INTO `sample_workers` VALUES (496,24);
INSERT INTO `sample_workers` VALUES (497,24);
INSERT INTO `sample_workers` VALUES (504,24);
INSERT INTO `sample_workers` VALUES (505,24);
INSERT INTO `sample_workers` VALUES (506,24);
INSERT INTO `sample_workers` VALUES (507,24);
INSERT INTO `sample_workers` VALUES (508,24);
INSERT INTO `sample_workers` VALUES (509,24);
INSERT INTO `sample_workers` VALUES (516,24);
INSERT INTO `sample_workers` VALUES (517,24);
INSERT INTO `sample_workers` VALUES (518,24);
INSERT INTO `sample_workers` VALUES (519,24);
INSERT INTO `sample_workers` VALUES (526,24);
INSERT INTO `sample_workers` VALUES (527,24);
INSERT INTO `sample_workers` VALUES (528,24);
INSERT INTO `sample_workers` VALUES (529,24);
INSERT INTO `sample_workers` VALUES (530,24);
INSERT INTO `sample_workers` VALUES (531,24);
INSERT INTO `sample_workers` VALUES (574,24);
INSERT INTO `sample_workers` VALUES (575,24);
INSERT INTO `sample_workers` VALUES (576,24);
INSERT INTO `sample_workers` VALUES (577,24);
INSERT INTO `sample_workers` VALUES (578,24);
INSERT INTO `sample_workers` VALUES (579,24);
INSERT INTO `sample_workers` VALUES (494,25);
INSERT INTO `sample_workers` VALUES (495,25);
INSERT INTO `sample_workers` VALUES (496,25);
INSERT INTO `sample_workers` VALUES (497,25);
INSERT INTO `sample_workers` VALUES (504,25);
INSERT INTO `sample_workers` VALUES (505,25);
INSERT INTO `sample_workers` VALUES (506,25);
INSERT INTO `sample_workers` VALUES (507,25);
INSERT INTO `sample_workers` VALUES (508,25);
INSERT INTO `sample_workers` VALUES (509,25);
INSERT INTO `sample_workers` VALUES (516,25);
INSERT INTO `sample_workers` VALUES (517,25);
INSERT INTO `sample_workers` VALUES (518,25);
INSERT INTO `sample_workers` VALUES (519,25);
INSERT INTO `sample_workers` VALUES (526,25);
INSERT INTO `sample_workers` VALUES (527,25);
INSERT INTO `sample_workers` VALUES (528,25);
INSERT INTO `sample_workers` VALUES (529,25);
INSERT INTO `sample_workers` VALUES (530,25);
INSERT INTO `sample_workers` VALUES (531,25);
INSERT INTO `sample_workers` VALUES (538,25);
INSERT INTO `sample_workers` VALUES (539,25);
INSERT INTO `sample_workers` VALUES (540,25);
INSERT INTO `sample_workers` VALUES (541,25);
INSERT INTO `sample_workers` VALUES (542,25);
INSERT INTO `sample_workers` VALUES (543,25);
INSERT INTO `sample_workers` VALUES (562,25);
INSERT INTO `sample_workers` VALUES (563,25);
INSERT INTO `sample_workers` VALUES (564,25);
INSERT INTO `sample_workers` VALUES (565,25);
INSERT INTO `sample_workers` VALUES (566,25);
INSERT INTO `sample_workers` VALUES (567,25);
INSERT INTO `sample_workers` VALUES (504,26);
INSERT INTO `sample_workers` VALUES (505,26);
INSERT INTO `sample_workers` VALUES (506,26);
INSERT INTO `sample_workers` VALUES (507,26);
INSERT INTO `sample_workers` VALUES (508,26);
INSERT INTO `sample_workers` VALUES (509,26);
INSERT INTO `sample_workers` VALUES (526,26);
INSERT INTO `sample_workers` VALUES (527,26);
INSERT INTO `sample_workers` VALUES (528,26);
INSERT INTO `sample_workers` VALUES (529,26);
INSERT INTO `sample_workers` VALUES (530,26);
INSERT INTO `sample_workers` VALUES (531,26);
INSERT INTO `sample_workers` VALUES (538,26);
INSERT INTO `sample_workers` VALUES (539,26);
INSERT INTO `sample_workers` VALUES (540,26);
INSERT INTO `sample_workers` VALUES (541,26);
INSERT INTO `sample_workers` VALUES (542,26);
INSERT INTO `sample_workers` VALUES (543,26);
INSERT INTO `sample_workers` VALUES (550,26);
INSERT INTO `sample_workers` VALUES (551,26);
INSERT INTO `sample_workers` VALUES (552,26);
INSERT INTO `sample_workers` VALUES (553,26);
INSERT INTO `sample_workers` VALUES (554,26);
INSERT INTO `sample_workers` VALUES (555,26);
INSERT INTO `sample_workers` VALUES (646,27);
INSERT INTO `sample_workers` VALUES (647,27);
INSERT INTO `sample_workers` VALUES (648,27);
INSERT INTO `sample_workers` VALUES (649,27);
INSERT INTO `sample_workers` VALUES (650,27);
INSERT INTO `sample_workers` VALUES (651,27);
INSERT INTO `sample_workers` VALUES (670,27);
INSERT INTO `sample_workers` VALUES (671,27);
INSERT INTO `sample_workers` VALUES (672,27);
INSERT INTO `sample_workers` VALUES (673,27);
INSERT INTO `sample_workers` VALUES (674,27);
INSERT INTO `sample_workers` VALUES (675,27);
INSERT INTO `sample_workers` VALUES (694,27);
INSERT INTO `sample_workers` VALUES (695,27);
INSERT INTO `sample_workers` VALUES (696,27);
INSERT INTO `sample_workers` VALUES (697,27);
INSERT INTO `sample_workers` VALUES (698,27);
INSERT INTO `sample_workers` VALUES (699,27);
INSERT INTO `sample_workers` VALUES (718,27);
INSERT INTO `sample_workers` VALUES (719,27);
INSERT INTO `sample_workers` VALUES (720,27);
INSERT INTO `sample_workers` VALUES (721,27);
INSERT INTO `sample_workers` VALUES (722,27);
INSERT INTO `sample_workers` VALUES (723,27);
INSERT INTO `sample_workers` VALUES (742,27);
INSERT INTO `sample_workers` VALUES (743,27);
INSERT INTO `sample_workers` VALUES (744,27);
INSERT INTO `sample_workers` VALUES (745,27);
INSERT INTO `sample_workers` VALUES (746,27);
INSERT INTO `sample_workers` VALUES (747,27);
INSERT INTO `sample_workers` VALUES (658,28);
INSERT INTO `sample_workers` VALUES (659,28);
INSERT INTO `sample_workers` VALUES (660,28);
INSERT INTO `sample_workers` VALUES (661,28);
INSERT INTO `sample_workers` VALUES (662,28);
INSERT INTO `sample_workers` VALUES (663,28);
INSERT INTO `sample_workers` VALUES (682,28);
INSERT INTO `sample_workers` VALUES (683,28);
INSERT INTO `sample_workers` VALUES (684,28);
INSERT INTO `sample_workers` VALUES (685,28);
INSERT INTO `sample_workers` VALUES (686,28);
INSERT INTO `sample_workers` VALUES (687,28);
INSERT INTO `sample_workers` VALUES (730,28);
INSERT INTO `sample_workers` VALUES (731,28);
INSERT INTO `sample_workers` VALUES (732,28);
INSERT INTO `sample_workers` VALUES (733,28);
INSERT INTO `sample_workers` VALUES (734,28);
INSERT INTO `sample_workers` VALUES (735,28);
INSERT INTO `sample_workers` VALUES (754,28);
INSERT INTO `sample_workers` VALUES (755,28);
INSERT INTO `sample_workers` VALUES (756,28);
INSERT INTO `sample_workers` VALUES (757,28);
INSERT INTO `sample_workers` VALUES (758,28);
INSERT INTO `sample_workers` VALUES (759,28);
INSERT INTO `sample_workers` VALUES (580,29);
INSERT INTO `sample_workers` VALUES (581,29);
INSERT INTO `sample_workers` VALUES (582,29);
INSERT INTO `sample_workers` VALUES (583,29);
INSERT INTO `sample_workers` VALUES (584,29);
INSERT INTO `sample_workers` VALUES (585,29);
INSERT INTO `sample_workers` VALUES (580,30);
INSERT INTO `sample_workers` VALUES (581,30);
INSERT INTO `sample_workers` VALUES (582,30);
INSERT INTO `sample_workers` VALUES (583,30);
INSERT INTO `sample_workers` VALUES (584,30);
INSERT INTO `sample_workers` VALUES (585,30);
INSERT INTO `sample_workers` VALUES (580,31);
INSERT INTO `sample_workers` VALUES (581,31);
INSERT INTO `sample_workers` VALUES (582,31);
INSERT INTO `sample_workers` VALUES (583,31);
INSERT INTO `sample_workers` VALUES (584,31);
INSERT INTO `sample_workers` VALUES (585,31);
INSERT INTO `sample_workers` VALUES (586,32);
INSERT INTO `sample_workers` VALUES (587,32);
INSERT INTO `sample_workers` VALUES (588,32);
INSERT INTO `sample_workers` VALUES (589,32);
INSERT INTO `sample_workers` VALUES (590,32);
INSERT INTO `sample_workers` VALUES (591,32);
INSERT INTO `sample_workers` VALUES (586,33);
INSERT INTO `sample_workers` VALUES (587,33);
INSERT INTO `sample_workers` VALUES (588,33);
INSERT INTO `sample_workers` VALUES (589,33);
INSERT INTO `sample_workers` VALUES (590,33);
INSERT INTO `sample_workers` VALUES (591,33);
INSERT INTO `sample_workers` VALUES (586,34);
INSERT INTO `sample_workers` VALUES (587,34);
INSERT INTO `sample_workers` VALUES (588,34);
INSERT INTO `sample_workers` VALUES (589,34);
INSERT INTO `sample_workers` VALUES (590,34);
INSERT INTO `sample_workers` VALUES (591,34);
INSERT INTO `sample_workers` VALUES (562,35);
INSERT INTO `sample_workers` VALUES (563,35);
INSERT INTO `sample_workers` VALUES (564,35);
INSERT INTO `sample_workers` VALUES (565,35);
INSERT INTO `sample_workers` VALUES (566,35);
INSERT INTO `sample_workers` VALUES (567,35);
INSERT INTO `sample_workers` VALUES (574,36);
INSERT INTO `sample_workers` VALUES (575,36);
INSERT INTO `sample_workers` VALUES (576,36);
INSERT INTO `sample_workers` VALUES (577,36);
INSERT INTO `sample_workers` VALUES (578,36);
INSERT INTO `sample_workers` VALUES (579,36);
INSERT INTO `sample_workers` VALUES (772,37);
INSERT INTO `sample_workers` VALUES (773,37);
INSERT INTO `sample_workers` VALUES (774,37);
INSERT INTO `sample_workers` VALUES (775,37);
INSERT INTO `sample_workers` VALUES (776,37);
INSERT INTO `sample_workers` VALUES (777,37);
/*!40000 ALTER TABLE `sample_workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samples`
--

DROP TABLE IF EXISTS `samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samples` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `date_and_time` datetime NOT NULL,
  `moon` int(11) DEFAULT NULL,
  `qa_code` int(10) unsigned NOT NULL DEFAULT '162' COMMENT '162 is awaiting review',
  `session_id` int(10) unsigned NOT NULL,
  `temperature` double DEFAULT NULL COMMENT 'Units: degrees C',
  `salinity` double DEFAULT NULL COMMENT 'Units: ppt (parts per thousand)',
  `dissolved_oxygen` double DEFAULT NULL COMMENT 'Units: mg/L (milligrams per liter)',
  `dissolved_oxygen_pct` double DEFAULT NULL COMMENT 'This is the dissolved oxygen percent saturation. Units: %',
  `ph` double DEFAULT NULL,
  `turbidity_1` double DEFAULT NULL COMMENT 'Units: NTU (Nephelometric Turbidity Unit)',
  `turbidity_2` double DEFAULT NULL,
  `turbidity_3` double DEFAULT NULL,
  `total_nitrogen` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `total_phosphorus` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `phosphate` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `silicate` double DEFAULT NULL,
  `nitrates` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `ammonia` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `nitrate_last_run_date` date DEFAULT NULL,
  `comments` varchar(256) DEFAULT NULL COMMENT 'Date of the last, or oldest, processing run of the nitrate testing.',
  PRIMARY KEY (`sample_id`),
  UNIQUE KEY `site_id` (`site_id`,`date_and_time`),
  UNIQUE KEY `samples` (`sample_id`,`site_id`,`date_and_time`) COMMENT 'covers surrogate and natural for performance',
  KEY `qa_code` (`qa_code`),
  KEY `session` (`session_id`),
  CONSTRAINT `qa_code` FOREIGN KEY (`qa_code`) REFERENCES `qa_codes` (`qa_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `site` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samples`
--

LOCK TABLES `samples` WRITE;
/*!40000 ALTER TABLE `samples` DISABLE KEYS */;
INSERT INTO `samples` VALUES (1,2,'2016-06-14 08:03:00',NULL,162,1,25.7,33.3,6.86,102.1,8.11,13.9,13.9,13.9,311.07,26.26,18.72,1697.47,233.11,2.81,NULL,NULL);
INSERT INTO `samples` VALUES (2,3,'2016-06-14 08:37:00',NULL,162,1,24.9,23.8,6.86,100.6,8.07,16.8,16.8,16.8,75.08,18.8,9.06,1720.37,5.65,4.15,NULL,NULL);
INSERT INTO `samples` VALUES (3,4,'2016-06-14 09:15:00',NULL,162,1,26.8,35,6.72,101.6,8.06,2.62,2.62,2.62,91.26,10.73,8.46,604.37,24.72,1.88,NULL,NULL);
INSERT INTO `samples` VALUES (4,5,'2016-06-14 09:50:00',NULL,162,1,27.2,34.7,6.78,103.5,8.06,5.86,5.86,5.86,117.22,16.68,9.4,576.28,49.04,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (5,6,'2016-06-14 10:24:00',NULL,162,1,27.3,34.6,6.66,101.8,8.15,3.47,3.47,3.47,84.6,24.07,12.38,822.08,21.35,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (6,7,'2016-06-15 07:37:00',NULL,162,1,26.7,27.8,6.27,94.7,8.05,2.89,2.89,2.89,65.9,17.64,7.82,461.59,2.7,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (7,8,'2016-06-15 08:28:00',NULL,162,1,26.8,28.1,6.57,99.6,7.99,2.8,2.8,2.8,90.04,14.32,6.22,169.92,2.79,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (8,9,'2016-06-15 08:59:00',NULL,162,1,27.2,28.2,6.72,102.4,8.09,2.91,2.91,2.91,72.13,11,5.58,125.36,4.24,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (9,12,'2016-06-15 10:42:00',NULL,162,1,27.4,29.6,6.94,106.1,8.11,1.19,1.19,1.19,71.07,14.41,4.85,72.9,4.07,2.8,NULL,NULL);
INSERT INTO `samples` VALUES (10,14,'2016-06-16 07:45:00',NULL,162,1,25.3,29.3,6.86,101.2,7.96,23.3,23.3,23.3,78.22,10.8,7.56,330.61,5.91,2.74,NULL,NULL);
INSERT INTO `samples` VALUES (11,15,'2016-06-16 08:20:00',NULL,162,1,25.4,27.7,6.61,97.8,7.91,5.48,5.48,5.48,107.57,15.37,7.28,451.55,7.11,8.69,NULL,NULL);
INSERT INTO `samples` VALUES (12,16,'2016-06-16 09:17:00',NULL,162,1,25.2,28.1,7,103.1,8.06,16.87,16.87,16.87,63.47,16.77,6.34,112.01,2.64,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (13,17,'2016-06-16 09:40:00',NULL,162,1,25.6,28,7.1,105.2,8.08,10.71,10.71,10.71,66.16,20.47,5.71,137.9,2.84,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (14,18,'2016-06-16 10:00:00',NULL,162,1,26,36,7.01,104.6,8.07,5.37,5.37,5.37,122.85,20.4,6.52,145.4,3.26,4.45,NULL,NULL);
INSERT INTO `samples` VALUES (15,2,'2016-06-28 07:25:00',NULL,162,2,25.7,26.4,6.71,100,8.09,11.73,11.73,11.73,332.98,24.8,18.29,1621.15,259.15,5.43,NULL,NULL);
INSERT INTO `samples` VALUES (16,3,'2016-06-28 07:54:00',NULL,162,2,24.2,22.2,6.9,100.3,8.13,9.79,9.79,9.79,75.12,14.77,8.49,1435.92,6.13,3.59,NULL,NULL);
INSERT INTO `samples` VALUES (17,4,'2016-06-28 08:22:00',NULL,162,2,26.4,27.6,6.59,99.3,8.1,1.77,1.77,1.77,90.93,16.97,8.28,510.71,26.44,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (18,5,'2016-06-28 08:46:00',NULL,162,2,26.6,28.2,6.81,103,8.09,3.43,3.43,3.43,121.25,18.89,9.13,649.57,57.28,3.2,NULL,NULL);
INSERT INTO `samples` VALUES (19,6,'2016-06-28 09:06:00',NULL,162,2,26.9,27.9,6.77,103,8.13,3.13,3.13,3.13,83.6,20.43,10.91,633.71,15.03,3.34,NULL,NULL);
INSERT INTO `samples` VALUES (20,7,'2016-06-29 07:43:00',NULL,162,2,27,30.1,6.34,96.5,7.98,1.65,1.65,1.65,63.47,15.83,6.8,317.31,2.06,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (21,8,'2016-06-29 08:24:00',NULL,162,2,27.2,29.1,6.29,96,8.04,3.43,3.43,3.43,65.05,15.92,7.83,245.7,5.67,2.24,NULL,NULL);
INSERT INTO `samples` VALUES (22,9,'2016-06-29 08:50:00',NULL,162,2,27.3,28.9,6.21,95,8.02,1.98,1.98,1.98,72.79,15.9,6.78,217.71,6.28,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (23,11,'2016-06-29 10:04:00',NULL,162,2,28.5,29.9,6.6,102.1,8.07,4.53,4.53,4.53,97.7,14.02,6.11,201.84,8.61,11.26,NULL,NULL);
INSERT INTO `samples` VALUES (24,12,'2016-06-29 10:39:00',NULL,162,2,28,29.3,7.17,111.1,8.1,1.07,1.07,1.07,87.44,13.94,4.5,84.66,3.88,6.2,NULL,NULL);
INSERT INTO `samples` VALUES (25,14,'2016-06-30 07:33:00',NULL,162,2,27.7,30.3,6.43,98.9,8.01,7.4,7.4,7.4,84.09,14.15,5.29,354.48,1.74,4,NULL,NULL);
INSERT INTO `samples` VALUES (26,15,'2016-06-30 08:00:00',NULL,162,2,27.1,29.1,6.08,92.7,8.01,2.61,2.61,2.61,62.48,15.76,5.35,396.39,2.73,3.12,NULL,NULL);
INSERT INTO `samples` VALUES (27,16,'2016-06-30 08:31:00',NULL,162,2,26.9,29.7,6.81,103.4,8.05,10.6,10.6,10.6,76.47,12.3,4.05,113.15,0.12,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (28,17,'2016-06-30 08:50:00',NULL,162,2,27.4,29.3,6.88,105.2,8.1,3.37,3.37,3.37,75.58,12.24,3.99,138.61,3.41,3.93,NULL,NULL);
INSERT INTO `samples` VALUES (29,18,'2016-06-30 09:15:00',NULL,162,2,27.7,29.5,6.7,103.1,8.07,4.54,4.54,4.54,60.96,12.42,4.49,72.63,0.41,3.48,NULL,NULL);
INSERT INTO `samples` VALUES (30,2,'2016-07-12 07:19:00',NULL,162,3,26.6,33.1,6.49,97.4,8.09,5.14,5.14,5.14,308.74,24.52,16.42,1360.25,250.73,2.25,NULL,NULL);
INSERT INTO `samples` VALUES (31,3,'2016-07-12 07:49:00',NULL,162,3,26,39.1,6.53,100.1,8.07,3.9,3.9,3.9,73.05,14.52,6.85,680.64,2.96,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (32,4,'2016-07-12 08:16:00',NULL,162,3,27,36.3,6.46,99.5,8.09,0.94,0.94,0.94,79.38,16.45,7.04,331.03,15.44,1.58,NULL,NULL);
INSERT INTO `samples` VALUES (33,5,'2016-07-12 08:38:00',NULL,162,3,27.2,35,6.79,104,8.12,2.43,2.43,2.43,122.69,18.54,8.49,620.86,55.72,2.02,NULL,NULL);
INSERT INTO `samples` VALUES (34,6,'2016-07-12 09:02:00',NULL,162,3,27.4,35.7,6.66,102.7,8.16,3.41,3.41,3.41,83.07,19.36,10.4,617.54,15.74,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (35,7,'2016-07-13 07:35:00',NULL,162,3,26.9,36.2,5.9,90.6,8.04,2.64,2.64,2.64,69.41,17.38,8.43,405.4,3.1,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (36,8,'2016-07-13 08:07:00',NULL,162,3,27,36,5.49,84.5,8.01,2.01,2.01,2.01,81.9,17.35,8.05,279.73,8.05,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (37,9,'2016-07-13 08:29:00',NULL,162,3,27.4,36,5.39,83.3,8,4.96,4.96,4.96,97.03,18.16,8.69,550.84,22.19,6.61,NULL,NULL);
INSERT INTO `samples` VALUES (38,11,'2016-07-13 09:20:00',NULL,162,3,28.1,37.8,6.56,103.6,8.1,2.57,2.57,2.57,98.89,13.9,6.06,87.57,1.38,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (39,12,'2016-07-13 09:48:00',NULL,162,3,28,37.4,6.98,109.8,8.04,1.86,1.86,1.86,75.5,13.92,5.1,120.86,5.1,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (40,13,'2016-07-14 07:38:00',NULL,162,3,27,36.9,5.55,85.7,7.99,1.07,1.07,1.07,79.94,13.63,4.67,136.12,2.54,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (41,14,'2016-07-14 08:12:00',NULL,162,3,28.2,37.4,6.22,98.1,8.02,22.8,22.8,22.8,67.22,14.86,7.36,595.45,1.49,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (42,15,'2016-07-14 08:37:00',NULL,162,3,27.6,36.9,5.92,92.1,7.96,4.21,4.21,4.21,65.68,15.9,6.58,452.22,3.83,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (43,16,'2016-07-14 09:00:00',NULL,162,3,27.8,37.2,6.65,103.9,8.09,4.15,4.15,4.15,77.7,11.77,4.37,74.21,1.87,2.19,NULL,NULL);
INSERT INTO `samples` VALUES (44,17,'2016-07-14 09:25:00',NULL,162,3,28.1,37.8,6.74,106.3,8.12,3.96,3.96,3.96,64.97,11.63,3.26,111.92,3.02,2.43,NULL,NULL);
INSERT INTO `samples` VALUES (45,18,'2016-07-14 09:48:00',NULL,162,3,28.4,37.5,6.69,106.7,8.05,2.41,2.41,2.41,59.68,12.45,4.42,149.82,1.3,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (46,2,'2016-07-26 07:21:00',NULL,162,4,26.8,34.1,6.28,94.9,8.12,9.22,9.22,9.22,282.81,23.89,17.06,1116.96,200.67,6.69,NULL,NULL);
INSERT INTO `samples` VALUES (47,3,'2016-07-26 07:50:00',NULL,162,4,26.8,35.3,6.48,98.4,8.07,6.16,6.16,6.16,96.67,13,6.41,60.27,3.75,6.35,NULL,NULL);
INSERT INTO `samples` VALUES (48,4,'2016-07-26 08:12:00',NULL,162,4,27.2,35.3,6.48,99.1,8.14,1.5,1.5,1.5,87.42,13.39,6.82,267.63,16.56,6.02,NULL,NULL);
INSERT INTO `samples` VALUES (49,5,'2016-07-26 08:36:00',NULL,162,4,27.2,34.6,6.57,100.1,8.12,4.39,4.39,4.39,111.92,14.07,9.14,449.68,40.03,4.68,NULL,NULL);
INSERT INTO `samples` VALUES (50,6,'2016-07-26 08:59:00',NULL,162,4,27.4,34.8,6.51,99.8,8.15,3.22,3.22,3.22,87.81,15.67,9.77,467.63,13.19,4.55,NULL,NULL);
INSERT INTO `samples` VALUES (51,7,'2016-07-27 07:28:00',NULL,162,4,27.4,34.7,5.9,90.2,8.04,NULL,NULL,NULL,71.18,13.84,9.21,483.78,3.08,9.48,NULL,NULL);
INSERT INTO `samples` VALUES (52,8,'2016-07-27 08:05:00',NULL,162,4,27.4,35,5.9,90.5,8.02,8.05,8.05,8.05,85.14,13.66,10.11,408.47,7.68,6.57,NULL,NULL);
INSERT INTO `samples` VALUES (53,9,'2016-07-27 08:28:00',NULL,162,4,27.6,35.2,5.65,87,8,3.7,3.7,3.7,75.74,11.26,7.09,217.97,7.19,5.11,NULL,NULL);
INSERT INTO `samples` VALUES (54,11,'2016-07-27 09:09:00',NULL,162,4,28.1,35.6,6.52,101.4,8.13,0.88,0.88,0.88,71.08,10.63,4.47,29.59,1.24,3.97,NULL,NULL);
INSERT INTO `samples` VALUES (55,12,'2016-07-27 09:39:00',NULL,162,4,27.8,35.5,6.89,106.6,8.12,0.98,0.98,0.98,88.96,10.52,4.72,44.64,3.82,5.97,NULL,NULL);
INSERT INTO `samples` VALUES (56,13,'2016-07-28 07:25:00',NULL,162,4,26.3,35.3,5.77,86.9,8.03,0.93,0.93,0.93,90.37,10.08,4.59,294.07,3.19,11.32,NULL,NULL);
INSERT INTO `samples` VALUES (57,14,'2016-07-28 07:55:00',NULL,162,4,26.6,35.5,6.47,98.1,8.05,12.43,12.43,12.43,64.44,9.97,6.95,560,1.65,42.04,NULL,NULL);
INSERT INTO `samples` VALUES (58,15,'2016-07-28 08:15:00',NULL,162,4,26.8,35.4,5.83,88.6,7.99,3.18,3.18,3.18,70.46,10.01,6.42,261.28,3.33,6.3,NULL,NULL);
INSERT INTO `samples` VALUES (59,16,'2016-07-28 08:40:00',NULL,162,4,27,35.6,6.81,104,8.11,7.46,7.46,7.46,73.55,10.71,4.75,76.83,1.09,9.69,NULL,NULL);
INSERT INTO `samples` VALUES (60,17,'2016-07-28 09:10:00',NULL,162,4,26.2,35.6,6.99,105.2,8.13,3.74,3.74,3.74,72.91,9.33,2.85,55.37,1.02,4.39,NULL,NULL);
INSERT INTO `samples` VALUES (61,18,'2016-07-28 09:30:00',NULL,162,4,26.8,35.3,6.86,104.2,8.11,1.66,1.66,1.66,71.58,11.41,2.85,156.17,1.97,7.43,NULL,NULL);
INSERT INTO `samples` VALUES (62,2,'2016-08-09 07:20:00',NULL,162,5,26.5,34.4,6.23,93.8,8.09,4.59,4.59,4.59,156.99,18.41,9.96,592.29,110.4,4.87,NULL,NULL);
INSERT INTO `samples` VALUES (63,3,'2016-08-09 07:45:00',NULL,162,5,25.8,34.9,6.38,95.1,8.03,5.81,5.81,5.81,76.01,14.15,7.25,373.12,10.63,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (64,4,'2016-08-09 08:11:00',NULL,162,5,27.1,35.4,6.27,96.7,8.12,0.42,0.42,0.42,70.02,14.87,6.66,322.69,22.6,2.38,NULL,NULL);
INSERT INTO `samples` VALUES (65,5,'2016-08-09 08:33:00',NULL,162,5,27.3,35.1,6.57,100.5,8.14,2.3,2.3,2.3,102.63,16.01,8.63,509.76,55.5,5.4,NULL,NULL);
INSERT INTO `samples` VALUES (66,6,'2016-08-09 08:52:00',NULL,162,5,27.2,35.3,6.58,100.6,8.16,0.73,0.73,0.73,63.27,14.74,6.01,268.63,7.89,4.72,NULL,NULL);
INSERT INTO `samples` VALUES (67,7,'2016-08-10 07:26:00',NULL,162,5,27,34.6,5.87,89,8.06,0.96,0.96,0.96,50.94,13.33,6.11,258.54,4.44,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (68,8,'2016-08-10 07:52:00',NULL,162,5,27.3,35,5.53,84.5,8.02,5.5,5.5,5.5,61.9,11.79,9.56,447.2,8.71,11.9,NULL,NULL);
INSERT INTO `samples` VALUES (69,9,'2016-08-10 08:15:00',NULL,162,5,27.5,35.1,5.74,88.1,8.04,4.34,4.34,4.34,72.34,14.43,5.83,349.5,13.55,5.49,NULL,NULL);
INSERT INTO `samples` VALUES (70,11,'2016-08-10 08:56:00',NULL,162,5,28.2,35.8,6.57,102.2,8.1,4.02,4.02,4.02,55.04,11.77,4.62,116.02,3.03,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (71,12,'2016-08-10 09:19:00',NULL,162,5,27.9,35.8,6.78,105.1,8.07,1.45,1.45,1.45,54.7,11.68,4.27,76.48,4.77,3.61,NULL,NULL);
INSERT INTO `samples` VALUES (72,13,'2016-08-11 07:35:00',NULL,162,5,26.6,35.2,5.41,81.9,7.96,1.65,1.65,1.65,64.31,12.65,4.43,187.55,4.51,1.77,NULL,NULL);
INSERT INTO `samples` VALUES (73,14,'2016-08-11 08:00:00',NULL,162,5,27.2,35.6,6.18,94.7,8.06,3.28,3.28,3.28,48.57,13.29,3.89,256.82,2.44,1.55,NULL,NULL);
INSERT INTO `samples` VALUES (74,15,'2016-08-11 08:30:00',NULL,162,5,26.6,35.4,6.12,92.7,8.04,5.87,5.87,5.87,74.31,12.79,5.42,302.71,3.5,3.26,NULL,NULL);
INSERT INTO `samples` VALUES (75,16,'2016-08-11 08:50:00',NULL,162,5,27.2,35.5,6.66,102,8.08,10.63,10.63,10.63,54.1,13.2,3.98,66.18,3.16,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (76,17,'2016-08-11 09:15:00',NULL,162,5,27.4,35.7,6.89,106,8.14,3.81,3.81,3.81,51.97,9.41,2.49,61.77,2.73,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (77,18,'2016-08-11 09:40:00',NULL,162,5,27.3,35.3,7.17,109.9,8.14,2.33,2.33,2.33,50.55,8.52,4.06,180.81,3.06,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (78,2,'2016-08-23 07:15:00',NULL,162,6,27.1,34.5,5.9,90.2,7.86,3.98,3.98,3.98,180.79,18.64,14.45,710.64,126.76,5.05,NULL,NULL);
INSERT INTO `samples` VALUES (79,3,'2016-08-23 07:39:00',NULL,162,6,26.6,26.7,6.36,92.5,8.04,10.63,10.63,10.63,90.19,15.02,8.59,496.44,15.22,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (80,4,'2016-08-23 08:08:00',NULL,162,6,27.8,35.3,5.84,90.7,8,0.46,0.46,0.46,87.24,13.12,7.32,350.09,25.95,1.89,NULL,NULL);
INSERT INTO `samples` VALUES (81,5,'2016-08-23 08:28:00',NULL,162,6,27.9,35.3,6.36,99,8.06,0.71,0.71,0.71,94.47,14.38,7.2,352.84,34.43,2.08,NULL,NULL);
INSERT INTO `samples` VALUES (82,6,'2016-08-23 08:47:00',NULL,162,6,28,35.7,6.23,97.4,8.06,0.63,0.63,0.63,71.25,14.83,6.2,224.59,10.41,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (83,7,'2016-08-24 07:32:00',NULL,162,6,27.9,35,6.12,94.6,8.05,4.43,4.43,4.43,69.42,21.92,13.31,547.85,4.31,5.09,NULL,NULL);
INSERT INTO `samples` VALUES (84,8,'2016-08-24 08:20:00',NULL,162,6,28.4,35.2,5.44,85,8.01,25.4,25.4,25.4,91.13,19.38,10.92,699.52,28.62,5.08,NULL,NULL);
INSERT INTO `samples` VALUES (85,9,'2016-08-24 08:42:00',NULL,162,6,28.3,35.7,5.84,91.3,8.03,6.57,6.57,6.57,82.15,16.98,8.93,344.26,11.7,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (86,10,'2016-08-24 09:13:00',NULL,162,6,28.4,35.5,6.44,100.7,8.09,NULL,NULL,NULL,75.09,13.6,3.7,267.73,6.64,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (87,11,'2016-08-24 09:38:00',NULL,162,6,28.6,36.1,6.39,100.6,8.13,3.77,3.77,3.77,74.93,15.49,4.26,103.05,2.59,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (88,12,'2016-08-24 10:00:00',NULL,162,6,29,36,6.85,108.5,8.1,1.3,1.3,1.3,79.93,13.9,4.6,113.47,4.55,3.72,NULL,NULL);
INSERT INTO `samples` VALUES (89,13,'2016-08-25 07:20:00',NULL,162,6,27.3,36.2,5.25,80.9,7.95,1.6,1.6,1.6,72.15,14.75,4.99,169.91,6.19,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (90,14,'2016-08-25 07:45:00',NULL,162,6,28.2,36.5,5.49,85.7,7.99,2.68,2.68,2.68,66.51,13.81,4.95,238.92,5.16,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (91,15,'2016-08-25 08:00:00',NULL,162,6,27.4,36,5.6,86.2,7.94,3.63,3.63,3.63,62.23,12.75,5.12,280.11,5.63,1.66,NULL,NULL);
INSERT INTO `samples` VALUES (92,16,'2016-08-25 08:10:00',NULL,162,6,27.8,36.2,6.3,97.6,7.99,15.23,15.23,15.23,67.52,14.74,3.78,90.14,4.4,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (93,17,'2016-08-25 08:25:00',NULL,162,6,27.7,35.9,6.6,102.1,8.03,5.75,5.75,5.75,83.51,16.05,4.17,243.97,5.83,4,NULL,NULL);
INSERT INTO `samples` VALUES (94,18,'2016-08-25 08:35:00',NULL,162,6,27.9,36,6.57,101.9,8.05,2.97,2.97,2.97,59.46,12.41,4.08,164.99,4.22,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (95,2,'2016-09-06 07:21:00',NULL,162,7,26.7,34.9,6.31,95.4,8.11,10.9,10.9,10.9,137.96,18.44,12.09,626.96,83.69,4.98,NULL,NULL);
INSERT INTO `samples` VALUES (96,3,'2016-09-06 07:50:00',NULL,162,7,26.1,35.5,6.42,96.7,8.15,6.16,6.16,6.16,66.51,16.19,6.75,144.16,4.15,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (97,4,'2016-09-06 08:10:00',NULL,162,7,27.3,35.3,6.41,98.2,8.21,1.45,1.45,1.45,81.25,15.44,7.41,368.38,26.83,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (98,5,'2016-09-06 08:31:00',NULL,162,7,27.7,35.2,6.45,99.6,8.23,2.17,2.17,2.17,94.08,19.79,8.41,405.02,34.91,2.48,NULL,NULL);
INSERT INTO `samples` VALUES (99,6,'2016-09-06 08:54:00',NULL,162,7,27.8,35.4,6.42,99.3,8.23,3.24,3.24,3.24,68.4,21.59,9.15,355.63,9.97,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (100,7,'2016-09-07 07:48:00',NULL,162,7,27.1,34.5,6.18,94.1,8,6.47,6.47,6.47,61.97,20.83,12.84,903.66,6.45,2.04,NULL,NULL);
INSERT INTO `samples` VALUES (101,9,'2016-09-07 08:19:00',NULL,162,7,27.5,36.6,6.06,94,8.01,4.33,4.33,4.33,87.18,11.37,7.85,164.84,5.45,5.25,NULL,NULL);
INSERT INTO `samples` VALUES (102,8,'2016-09-07 08:46:00',NULL,162,7,27.5,36.5,6.07,94.2,7.96,6.77,6.77,6.77,71.64,10.36,5.46,99.94,5.97,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (103,11,'2016-09-07 09:10:00',NULL,162,7,27.8,36.7,6.26,97.8,7.97,2.31,2.31,2.31,73.69,11.47,4.37,70.91,3.11,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (104,12,'2016-09-07 09:39:00',NULL,162,7,28.4,37,6.55,103.3,8.06,1.12,1.12,1.12,82.56,13.03,4.24,63.23,4.7,4.48,NULL,NULL);
INSERT INTO `samples` VALUES (105,13,'2016-09-08 07:10:00',NULL,162,7,26.7,36.1,6.03,91.9,8.15,3.03,3.03,3.03,63.84,13.04,4.22,150.76,4.74,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (106,14,'2016-09-08 07:35:00',NULL,162,7,25.8,36,6.53,98,8.12,34.6,34.6,34.6,92.16,12.98,5.25,259.77,4.71,4.29,NULL,NULL);
INSERT INTO `samples` VALUES (107,15,'2016-09-08 08:00:00',NULL,162,7,26.6,35.9,6.31,96,8.09,9.39,9.39,9.39,59.11,11.34,5.15,189.13,4.15,2.1,NULL,NULL);
INSERT INTO `samples` VALUES (108,17,'2016-09-08 08:28:00',NULL,162,7,26.2,35.9,6.65,100.4,8.18,7.54,7.54,7.54,64.37,10.55,3.44,74.29,3.42,1.97,NULL,NULL);
INSERT INTO `samples` VALUES (109,2,'2016-09-20 07:15:00',NULL,162,8,26.4,35.7,6.22,94.4,7.98,8.26,8.26,8.26,112.75,16.85,11.33,374.1,44.09,4.91,NULL,NULL);
INSERT INTO `samples` VALUES (110,3,'2016-09-20 07:30:00',NULL,162,8,25.9,32.4,6.52,96.2,8,12.07,12.07,12.07,162.42,16.77,9.1,854.64,12.6,10.28,NULL,NULL);
INSERT INTO `samples` VALUES (111,4,'2016-09-20 07:50:00',NULL,162,8,27.1,35.6,6.31,96.6,8.03,1.27,1.27,1.27,193.38,18.32,7.53,364.08,18,9.23,NULL,NULL);
INSERT INTO `samples` VALUES (112,5,'2016-09-20 08:10:00',NULL,162,8,27.4,36.1,6.34,97.7,8.02,3.09,3.09,3.09,131.44,19.71,7.27,318.73,24.77,10.46,NULL,NULL);
INSERT INTO `samples` VALUES (113,6,'2016-09-20 08:30:00',NULL,162,8,27.4,36.7,6.33,98,8.05,3.19,3.19,3.19,149.8,17.62,7.24,385.18,10.43,7.07,NULL,NULL);
INSERT INTO `samples` VALUES (114,7,'2016-09-21 07:22:00',NULL,162,8,27,33.1,6.31,94.9,8.04,12.37,12.37,12.37,79.95,24.54,15.91,1564.76,14.28,6.9,NULL,NULL);
INSERT INTO `samples` VALUES (115,8,'2016-09-21 07:52:00',NULL,162,8,27.1,34.4,6.08,92.3,8.03,40.1,40.1,40.1,108.6,29.24,14.43,571.44,24.79,16.65,NULL,NULL);
INSERT INTO `samples` VALUES (116,9,'2016-09-21 08:20:00',NULL,162,8,26.9,34.3,6,90.8,7.98,45.33,45.33,45.33,111.62,22.22,13.5,660.22,27.32,7.55,NULL,NULL);
INSERT INTO `samples` VALUES (117,11,'2016-09-21 09:05:00',NULL,162,8,27.7,34.9,6.36,97.8,8.11,10.26,10.26,10.26,71.98,11.69,5.61,209.47,6.33,7.47,NULL,NULL);
INSERT INTO `samples` VALUES (118,12,'2016-09-21 09:36:00',NULL,162,8,27.6,34.8,6.58,101.2,8.17,2.35,2.35,2.35,69.95,12.28,4.4,59.63,4.63,3.42,NULL,NULL);
INSERT INTO `samples` VALUES (119,13,'2016-09-22 07:15:00',NULL,162,8,27.1,36.6,6.26,96.5,7.93,11.13,11.13,11.13,71.8,14.8,5.33,145.77,3.94,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (120,14,'2016-09-22 07:52:00',NULL,162,8,26.6,36.7,6.44,98.6,7.86,26.07,26.07,26.07,62.81,14.25,7.22,915.02,4.44,4.86,NULL,NULL);
INSERT INTO `samples` VALUES (121,15,'2016-09-22 08:21:00',NULL,162,8,27,36.1,6.4,98,7.93,13.8,13.8,13.8,74.95,13.51,6.54,270.22,6.28,13.77,NULL,NULL);
INSERT INTO `samples` VALUES (122,16,'2016-09-22 08:50:00',NULL,162,8,27.7,37.1,6.43,100.3,8.03,14.63,14.63,14.63,68.23,13.63,4.85,59.54,4.86,10.52,NULL,NULL);
INSERT INTO `samples` VALUES (123,17,'2016-09-22 09:07:00',NULL,162,8,27.5,36.1,6.58,101.8,8.09,14.4,14.4,14.4,67.81,13.53,4.31,56.18,4.01,8.8,NULL,NULL);
INSERT INTO `samples` VALUES (124,18,'2016-09-22 09:25:00',NULL,162,8,27.6,36.1,6.5,100.6,8.03,13.03,13.03,13.03,69.16,11.45,5.68,303.01,8.82,11.87,NULL,NULL);
INSERT INTO `samples` VALUES (125,2,'2016-10-04 07:37:00',NULL,162,9,26.9,34.4,6.03,91.4,8.09,5.38,5.38,5.38,109.8,21.4,11.98,496.53,52.67,7.02,NULL,NULL);
INSERT INTO `samples` VALUES (126,3,'2016-10-04 07:58:00',NULL,162,9,26.9,34.4,6.2,94.1,8.08,7.76,7.76,7.76,69.4,16.92,6.58,211.98,10.53,6.14,NULL,NULL);
INSERT INTO `samples` VALUES (127,4,'2016-10-04 08:17:00',NULL,162,9,27.8,34.3,6.19,95.2,8.12,0.52,0.52,0.52,85.59,17.23,5.65,317.64,24.89,4.84,NULL,NULL);
INSERT INTO `samples` VALUES (128,5,'2016-10-04 08:35:00',NULL,162,9,27.9,34,6.42,98.8,8.15,1.99,1.99,1.99,118.93,13.51,8.2,583.21,64.14,7.29,NULL,NULL);
INSERT INTO `samples` VALUES (129,6,'2016-10-04 08:53:00',NULL,162,9,27.8,34.6,6.35,97.9,8.17,1.84,1.84,1.84,67.41,13.09,6.05,319.78,10.07,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (130,7,'2016-10-05 08:16:00',NULL,162,9,27.6,35.5,5.9,91.3,7.79,3.32,3.32,3.32,78.97,12.6,8.91,459.1,4.15,3.09,NULL,NULL);
INSERT INTO `samples` VALUES (131,8,'2016-10-05 08:48:00',NULL,162,9,27.8,35.4,5.44,84.3,7.89,14.73,14.73,14.73,72.92,12.45,8.85,614.34,9.88,12.31,NULL,NULL);
INSERT INTO `samples` VALUES (132,9,'2016-10-05 09:10:00',NULL,162,9,28.2,36,5.53,86.4,7.87,20.37,20.37,20.37,82.07,12.27,8.79,506.44,16.64,13.89,NULL,NULL);
INSERT INTO `samples` VALUES (133,10,'2016-10-05 09:35:00',NULL,162,9,28.3,36.5,6.42,100.6,8.11,2.61,2.61,2.61,75.6,8.21,3.74,148.48,1.88,11.91,NULL,NULL);
INSERT INTO `samples` VALUES (134,11,'2016-10-05 10:00:00',NULL,162,9,28.8,37.3,6.45,102.4,7.97,3.36,3.36,3.36,64.15,7.69,3.65,130.16,2.02,11.8,NULL,NULL);
INSERT INTO `samples` VALUES (135,12,'2016-10-05 10:23:00',NULL,162,9,28.8,37.2,6.73,106.9,7.99,2.07,2.07,2.07,64.41,8.94,4.53,95.75,4.8,4.55,NULL,NULL);
INSERT INTO `samples` VALUES (136,13,'2016-10-06 07:30:00',NULL,162,9,26.7,34.9,5.94,89.9,8,7.28,7.28,7.28,66.13,11.01,5.36,184.5,4.33,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (137,14,'2016-10-06 07:55:00',NULL,162,9,26.8,34.9,6.23,94.5,8.06,9.11,9.11,9.11,61.49,12.19,5.14,330.13,3.23,3.27,NULL,NULL);
INSERT INTO `samples` VALUES (138,15,'2016-10-06 08:15:00',NULL,162,9,26.7,35,6.08,92.1,8.02,6.72,6.72,6.72,59.98,13.14,5.31,250.59,5.07,2.87,NULL,NULL);
INSERT INTO `samples` VALUES (139,16,'2016-10-06 08:35:00',NULL,162,9,27.2,34.8,6.41,97.7,8.09,13.27,13.27,13.27,61.32,12.66,4.81,84.83,2.93,2.65,NULL,NULL);
INSERT INTO `samples` VALUES (140,17,'2016-10-06 09:02:00',NULL,162,9,27.7,35,6.59,101.3,8.11,7.3,7.3,7.3,57.25,10.65,3.85,105.42,3.46,3.13,NULL,NULL);
INSERT INTO `samples` VALUES (141,18,'2016-10-06 09:22:00',NULL,162,9,28.1,34.9,6.47,100.2,8.1,4.07,4.07,4.07,55.67,12.38,4.64,110.7,2.53,7.04,NULL,NULL);
INSERT INTO `samples` VALUES (142,2,'2016-10-18 07:39:00',NULL,162,10,26.6,36,6.23,95,7.95,8.45,8.45,8.45,105.57,12.87,11.67,399.05,38.62,10.94,NULL,NULL);
INSERT INTO `samples` VALUES (143,3,'2016-10-18 08:02:00',NULL,162,10,26.1,35.6,6.31,95.2,7.96,5.78,5.78,5.78,73.6,10.5,8.13,368.37,8.21,4.35,NULL,NULL);
INSERT INTO `samples` VALUES (144,4,'2016-10-18 08:22:00',NULL,162,10,26.9,36.7,6.28,96.3,7.99,0.7,0.7,0.7,87.06,9.44,7.1,343.83,24.67,3.49,NULL,NULL);
INSERT INTO `samples` VALUES (145,5,'2016-10-18 08:40:00',NULL,162,10,27.2,NULL,6.22,96.3,8.01,0.93,0.93,0.93,84.95,23.4,6.5,270.97,15.75,12.04,NULL,NULL);
INSERT INTO `samples` VALUES (146,6,'2016-10-18 08:57:00',NULL,162,10,27.3,36.6,6.2,95.9,8.09,0.9,0.9,0.9,78.88,20.54,9.62,489.05,12.57,11.06,NULL,NULL);
INSERT INTO `samples` VALUES (147,7,'2016-10-19 08:21:00',NULL,162,10,27.1,33.5,6.26,94.5,8.09,8.22,8.22,8.22,66.81,27.85,12.49,768.82,3.6,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (148,8,'2016-10-19 08:51:00',NULL,162,10,27.2,34,6.12,92.9,8.03,40.7,40.7,40.7,81.4,27.18,12.2,694.78,9.23,11.23,NULL,NULL);
INSERT INTO `samples` VALUES (149,9,'2016-10-19 09:13:00',NULL,162,10,27.5,33.9,6,91.5,7.98,43.67,43.67,43.67,77.93,24.92,11.63,632.91,9.33,9.78,NULL,NULL);
INSERT INTO `samples` VALUES (150,10,'2016-10-19 09:40:00',NULL,162,10,27.7,34.6,6.49,99.7,8.15,6.04,6.04,6.04,95.61,15.79,5.08,153.7,0.1,3.31,NULL,NULL);
INSERT INTO `samples` VALUES (151,11,'2016-10-19 10:01:00',NULL,162,10,27.7,35,6.28,96.7,8.06,4.35,4.35,4.35,67.89,9.54,5.57,95.06,1.65,25.59,NULL,NULL);
INSERT INTO `samples` VALUES (152,12,'2016-10-19 10:37:00',NULL,162,10,27.4,34.9,6.65,102,8.12,2.94,2.94,2.94,72.84,18.92,7.01,65.37,3.17,12.06,NULL,NULL);
INSERT INTO `samples` VALUES (153,13,'2016-10-20 07:05:00',NULL,162,10,25.7,36.6,6.01,90.4,7.93,8.81,8.81,8.81,92.69,18.44,6,127.8,3.2,5.69,NULL,NULL);
INSERT INTO `samples` VALUES (154,14,'2016-10-20 07:40:00',NULL,162,10,25.7,36.6,5.95,89.7,8.01,2.54,2.54,2.54,61.12,13.01,5.03,191.78,1.5,3.31,NULL,NULL);
INSERT INTO `samples` VALUES (155,15,'2016-10-20 08:00:00',NULL,162,10,25.4,36.6,5.86,87.8,8.01,5.47,5.47,5.47,83.49,12,6.11,291.78,4.95,7.48,NULL,NULL);
INSERT INTO `samples` VALUES (156,16,'2016-10-20 08:23:00',NULL,162,10,24.8,36.3,6.47,96,8.08,14.97,14.97,14.97,63.97,8.44,5.02,76.62,0.69,6.85,NULL,NULL);
INSERT INTO `samples` VALUES (157,17,'2016-10-20 08:57:00',NULL,162,10,25.7,37,6.59,99.4,8.07,9.5,9.5,9.5,68.11,11.95,6.34,67.79,4.8,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (158,18,'2016-10-20 09:10:00',NULL,162,10,26,35.9,6.6,98.9,8.09,4.38,4.38,4.38,64.65,9.36,5.4,185.87,2.37,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (159,2,'2016-11-01 07:44:00',NULL,162,11,24.8,34.3,6.34,92.1,8.07,7.83,7.83,7.83,154.28,18.7,15.28,800.68,83.68,7.16,NULL,NULL);
INSERT INTO `samples` VALUES (160,3,'2016-11-01 08:01:00',NULL,162,11,24.7,33.5,6.68,96.7,8.08,3.08,3.08,3.08,110.8,31.54,9.17,500.48,4.13,10.95,NULL,NULL);
INSERT INTO `samples` VALUES (161,4,'2016-11-01 08:18:00',NULL,162,11,25.5,34.4,6.43,94.7,8.1,1.4,1.4,1.4,84.64,20.7,8.34,421.29,15.51,7.16,NULL,NULL);
INSERT INTO `samples` VALUES (162,5,'2016-11-01 08:36:00',NULL,162,11,26,34,6.38,95.8,8.12,1.38,1.38,1.38,96.42,21.82,6.94,381.22,28.69,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (163,6,'2016-11-01 08:55:00',NULL,162,11,26.4,34.4,6.38,95.4,8.15,0.91,0.91,0.91,79.04,21.1,7.87,448.87,14.07,3.14,NULL,NULL);
INSERT INTO `samples` VALUES (164,7,'2016-11-02 08:20:00',NULL,162,11,25.6,32.8,5.88,86,7.99,5.64,5.64,5.64,73.98,25.03,14.66,1383.13,4.85,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (165,8,'2016-11-02 08:56:00',NULL,162,11,26.2,34,5.52,82.2,8.02,12.7,12.7,12.7,90.53,16.7,10.75,568.93,8.8,19.57,NULL,NULL);
INSERT INTO `samples` VALUES (166,9,'2016-11-02 09:17:00',NULL,162,11,26.8,33.7,5.38,80.9,7.98,4.18,4.18,4.18,76.59,19.14,8.08,400.73,6.79,7.68,NULL,NULL);
INSERT INTO `samples` VALUES (167,10,'2016-11-02 09:52:00',NULL,162,11,26.7,34.5,6.83,103,8.17,1.86,1.86,1.86,78.02,12.23,5.6,152.39,1.51,4.77,NULL,NULL);
INSERT INTO `samples` VALUES (168,11,'2016-11-02 10:17:00',NULL,162,11,26.5,34.5,6.9,103.8,8.13,1.62,1.62,1.62,89.32,6.68,4.19,156.12,0.49,8.45,NULL,NULL);
INSERT INTO `samples` VALUES (169,12,'2016-11-02 10:46:00',NULL,162,11,26.3,34.8,6.83,102.6,8.07,1.75,1.75,1.75,69.27,9.3,5.07,63.82,4.07,7.16,NULL,NULL);
INSERT INTO `samples` VALUES (170,13,'2016-11-03 07:15:00',NULL,162,11,24.9,34.8,6.07,88.9,8.04,5.68,5.68,5.68,62.91,9.99,5.82,125.93,3.09,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (171,14,'2016-11-03 07:37:00',NULL,162,11,25.1,34.9,6.08,89.4,8.11,1.28,1.28,1.28,58.51,16.2,4.77,113.51,3.92,3.1,NULL,NULL);
INSERT INTO `samples` VALUES (172,15,'2016-11-03 08:00:00',NULL,162,11,24.9,34.8,6,87.9,8.08,3.25,3.25,3.25,57.79,14.48,5.13,216.37,3.16,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (173,16,'2016-11-03 08:20:00',NULL,162,11,25.4,34.9,6.61,97.7,8.15,12.6,12.6,12.6,64.27,11.71,4.53,58.71,2.46,3.21,NULL,NULL);
INSERT INTO `samples` VALUES (174,17,'2016-11-03 08:45:00',NULL,162,11,25.4,34.9,6.68,98.8,8.16,3.72,3.72,3.72,62.94,14.86,4.43,53.15,2.58,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (175,18,'2016-11-03 09:02:00',NULL,162,11,25.7,34.7,6.87,101.9,8.17,3.56,3.56,3.56,58.91,16.34,4.94,164.01,2.31,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (176,2,'2016-11-15 07:41:00',NULL,162,12,24.7,34.2,6.52,94.9,8.08,4.23,4.23,4.23,134,11.82,10.33,521.05,41.57,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (177,3,'2016-11-15 08:06:00',NULL,162,12,25.5,34.3,7.96,96.7,8.15,5.67,5.67,5.67,80.63,7.94,4.97,232.94,4.91,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (178,4,'2016-11-15 08:29:00',NULL,162,12,25.8,34.4,6.49,96.2,8.14,1.46,1.46,1.46,67.22,8.36,5.88,349.27,15.11,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (179,5,'2016-11-15 08:49:00',NULL,162,12,26.5,34.2,6.38,95.8,8.14,1.66,1.66,1.66,79.76,8.32,5.29,430.52,31.95,2.9,NULL,NULL);
INSERT INTO `samples` VALUES (180,6,'2016-11-15 09:05:00',NULL,162,12,26.4,33.3,6.45,96.2,8.12,1.42,1.42,1.42,88.51,16.74,15.59,1415,43.33,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (181,7,'2016-11-16 08:16:00',NULL,162,12,26.1,33.7,6.2,92.1,8.05,7.39,7.39,7.39,70.63,9.91,8.01,732.59,7.16,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (182,8,'2016-11-16 08:45:00',NULL,162,12,26.4,34.1,5.53,82.9,7.98,14.03,14.03,14.03,122.65,11.75,10.66,469.53,12.19,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (183,9,'2016-11-16 09:06:00',NULL,162,12,26.5,34.3,5.6,84,8.03,10.87,10.87,10.87,81.31,7.35,5.36,345.45,9.71,2.29,NULL,NULL);
INSERT INTO `samples` VALUES (184,10,'2016-11-16 09:30:00',NULL,162,12,26.6,34.4,6.73,101.2,8.16,2.04,2.04,2.04,64.32,3.53,3.54,191.28,4.45,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (185,11,'2016-11-16 09:52:00',NULL,162,12,26.7,34.7,6.67,100.7,8.11,3.33,3.33,3.33,58.7,3.95,3.06,165.01,1.89,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (186,12,'2016-11-16 10:15:00',NULL,162,12,26.8,34.7,NULL,106.9,8.11,4.37,4.37,4.37,72.19,7.07,4.33,140.77,6.01,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (187,13,'2016-11-17 07:45:00',NULL,162,12,24.7,34.8,5.78,84.4,8.07,5.15,5.15,5.15,62.87,5.05,4.16,140.57,6.77,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (188,14,'2016-11-17 08:05:00',NULL,162,12,25,34.8,6.02,88.4,8.05,0.69,0.69,0.69,62.82,5.14,3.48,107.68,6.76,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (189,15,'2016-11-17 08:25:00',NULL,162,12,24.5,34.4,6,87.1,8.04,4.28,4.28,4.28,58.76,4.58,3.62,365.31,7.98,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (190,16,'2016-11-17 08:50:00',NULL,162,12,24.7,34.6,6.58,96.2,8.05,2.92,2.92,2.92,58.01,4.1,3.36,110.15,5.78,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (191,17,'2016-11-17 09:15:00',NULL,162,12,25.8,34.7,6.82,101.6,8.11,2.97,2.97,2.97,60.45,7.25,3.44,81.36,8.09,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (192,18,'2016-11-17 09:25:00',NULL,162,12,25.7,34.6,6.56,97.4,8.06,2.33,2.33,2.33,59.46,3.95,3.35,165.43,6.71,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (193,2,'2016-11-29 07:41:00',NULL,162,13,24.4,34.2,6.36,92,8.05,5.69,5.69,5.69,134.74,15.76,10.78,675.12,67.99,2.79,NULL,NULL);
INSERT INTO `samples` VALUES (194,3,'2016-11-29 08:03:00',NULL,162,13,24,33.9,6.68,95.7,8.07,6.36,6.36,6.36,87.03,9.48,4.61,308.06,4.9,3.03,NULL,NULL);
INSERT INTO `samples` VALUES (195,4,'2016-11-29 08:22:00',NULL,162,13,25.1,34.3,6.52,95.2,8.14,1.56,1.56,1.56,83.38,5.77,4.06,386.57,21.25,1.64,NULL,NULL);
INSERT INTO `samples` VALUES (196,5,'2016-11-29 08:42:00',NULL,162,13,25.4,33.8,6.53,95.4,8.04,1.46,1.46,1.46,137.85,9.45,7.1,848.06,77.66,3.07,NULL,NULL);
INSERT INTO `samples` VALUES (197,6,'2016-11-29 08:59:00',NULL,162,13,25.4,33.6,6.49,95,8.13,1.49,1.49,1.49,94.79,10.29,8.92,908.64,37.28,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (198,7,'2016-11-30 08:24:00',NULL,162,13,25,34,6.35,92.8,8.07,9.3,9.3,9.3,70.03,9.69,8.11,663.05,5.74,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (199,8,'2016-11-30 08:51:00',NULL,162,13,25,33.9,6.24,91.2,8.01,9.44,9.44,9.44,93.3,9.04,5.8,469.52,18.08,4.76,NULL,NULL);
INSERT INTO `samples` VALUES (200,9,'2016-11-30 09:12:00',NULL,162,13,25,34,6.2,90.5,7.95,12.5,12.5,12.5,103.45,9.58,5.64,542.06,33.68,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (201,10,'2016-11-30 09:40:00',NULL,162,13,25.4,33.9,6.84,100.6,8.1,2.02,2.02,2.02,69.41,5.64,2.39,332,3.67,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (202,11,'2016-11-30 10:01:00',NULL,162,13,24.5,34.5,7.13,103.6,8.04,1.51,1.51,1.51,68.25,6.79,1.87,175.7,2.67,2.76,NULL,NULL);
INSERT INTO `samples` VALUES (203,12,'2016-11-30 10:25:00',NULL,162,13,24.7,34.8,7.37,108,8.13,2.42,2.42,2.42,78.82,8,3.87,214.64,5.82,3.81,NULL,NULL);
INSERT INTO `samples` VALUES (204,13,'2016-12-01 07:15:00',NULL,162,13,22.9,34.9,6.65,94.2,8.02,9.65,9.65,9.65,65.59,8.15,2.42,226.3,4.35,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (205,14,'2016-12-01 07:40:00',NULL,162,13,23.5,34.7,6.53,93.5,8.06,3.67,3.67,3.67,61.55,6.5,3.16,291.07,5.08,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (206,15,'2016-12-01 08:00:00',NULL,162,13,23.4,34.6,6.12,87.4,8.07,4.52,4.52,4.52,75,7.87,3.97,272.05,6.58,4.13,NULL,NULL);
INSERT INTO `samples` VALUES (207,16,'2016-12-01 08:20:00',NULL,162,13,23.3,34.7,6.8,96.9,8.13,7.42,7.42,7.42,60.43,6.43,2.67,148.15,1.68,1.58,NULL,NULL);
INSERT INTO `samples` VALUES (208,17,'2016-12-01 08:40:00',NULL,162,13,23.7,34.7,6.79,97.5,8.12,8.65,8.65,8.65,63.46,5.93,3.97,219.11,7.36,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (209,18,'2016-12-01 09:05:00',NULL,162,13,24.2,34.7,6.71,97,8.11,5.37,5.37,5.37,57.89,3.82,2.51,171.2,2.6,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (210,2,'2016-12-13 07:36:00',NULL,162,14,24.7,34.1,6.56,95.5,7.95,8.48,8.48,8.48,119.4,18.53,13.82,867.63,81.84,3.22,NULL,NULL);
INSERT INTO `samples` VALUES (211,3,'2016-12-13 08:03:00',NULL,162,14,24.3,32.7,6.65,95.6,8.07,5.8,5.8,5.8,71.93,10.87,6.41,654.79,12.31,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (212,4,'2016-12-13 08:24:00',NULL,162,14,25.3,34.7,6.6,97.4,8.02,1.21,1.21,1.21,62.36,13.42,4.78,343.8,18.57,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (213,5,'2016-12-13 08:46:00',NULL,162,14,25.3,34.5,6.57,97.1,8.09,3.32,3.32,3.32,79,13.91,6.44,437.3,34.54,4.26,NULL,NULL);
INSERT INTO `samples` VALUES (214,6,'2016-12-13 09:03:00',NULL,162,14,25.3,34.1,6.59,97.2,8.11,0.97,0.97,0.97,74.45,14.71,8.36,760.93,28.97,2.36,NULL,NULL);
INSERT INTO `samples` VALUES (215,7,'2016-12-14 08:16:00',NULL,162,14,24.2,34.8,6.56,95.1,8.03,4.31,4.31,4.31,53.94,10.64,4.74,147.19,5.6,1.7,NULL,NULL);
INSERT INTO `samples` VALUES (216,8,'2016-12-14 08:45:00',NULL,162,14,23.7,33.1,6.65,94.7,7.96,14.27,14.27,14.27,97.74,19.06,11.79,601.12,21.63,6.23,NULL,NULL);
INSERT INTO `samples` VALUES (217,9,'2016-12-14 09:18:00',NULL,162,14,24,33.8,5.93,85.3,7.94,7.5,7.5,7.5,90.52,13.58,8.28,669.23,45.98,5.2,NULL,NULL);
INSERT INTO `samples` VALUES (218,10,'2016-12-14 09:35:00',NULL,162,14,24.9,34.4,6.95,101.8,8.08,2.72,2.72,2.72,53.38,9.14,2.94,261.28,1.56,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (219,11,'2016-12-14 09:54:00',NULL,162,14,24.9,34.6,7.02,103,8.13,1.99,1.99,1.99,50.61,7.15,2.45,152.4,3.37,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (220,12,'2016-12-14 10:16:00',NULL,162,14,24.7,34.8,6.68,97.7,8.08,4.1,4.1,4.1,75.56,8.27,4.71,139.35,24.19,4.19,NULL,NULL);
INSERT INTO `samples` VALUES (221,13,'2016-12-15 08:05:00',NULL,162,14,23.4,33.8,6.46,92.2,7.82,6.87,6.87,6.87,78.97,8.29,5,322.04,30.48,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (222,14,'2016-12-15 08:25:00',NULL,162,14,24.8,34.4,6.08,89.2,7.85,1.52,1.52,1.52,60.62,7.91,3.8,217.09,14.94,3.16,NULL,NULL);
INSERT INTO `samples` VALUES (223,15,'2016-12-15 08:45:00',NULL,162,14,25.1,34.3,5.96,87.9,7.97,1.75,1.75,1.75,62.18,9.84,3.87,320.26,12.41,4.04,NULL,NULL);
INSERT INTO `samples` VALUES (224,16,'2016-12-15 09:05:00',NULL,162,14,25,34.8,6.65,98.2,7.89,3.15,3.15,3.15,53.71,9.19,2.63,80.26,7.38,1.6,NULL,NULL);
INSERT INTO `samples` VALUES (225,17,'2016-12-15 09:18:00',NULL,162,14,25.1,35,6.94,102.7,8.07,4.05,4.05,4.05,62.85,9.89,4.3,129.31,18.82,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (226,18,'2016-12-15 09:30:00',NULL,162,14,25.3,34.9,6.77,100.5,7.97,5.17,5.17,5.17,59.82,10.64,5.05,171.01,16.61,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (227,2,'2017-01-03 08:45:00',NULL,162,15,24.1,34.7,6.45,93.3,8.16,5.01,5.01,5.01,121.24,19.77,11.33,448.82,56.24,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (228,3,'2017-01-03 09:10:00',NULL,162,15,23,29.5,7.07,97.5,8.21,3.78,3.78,3.78,85.83,13.88,7.78,1253.58,11.97,3.57,NULL,NULL);
INSERT INTO `samples` VALUES (229,4,'2017-01-03 09:30:00',NULL,162,15,24.4,34.6,6.57,95.5,8.18,2.49,2.49,2.49,82.42,12.88,7.56,314.68,15.25,1.63,NULL,NULL);
INSERT INTO `samples` VALUES (230,5,'2017-01-03 09:55:00',NULL,162,15,24.9,34.5,6.66,97.6,8.21,1.42,1.42,1.42,121.24,14.48,7.73,430.02,47.01,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (231,6,'2017-01-03 10:15:00',NULL,162,15,24.8,34.9,6.49,95.3,8.2,0.93,0.93,0.93,85.84,11.24,5.84,223.38,10.13,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (232,7,'2017-01-04 08:15:00',NULL,162,15,23.4,34.1,6.72,95.6,8.08,5.57,5.57,5.57,89.72,17,12.86,920.8,8.49,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (233,8,'2017-01-04 08:42:00',NULL,162,15,23.3,34.7,6.77,96.4,8.07,8.92,8.92,8.92,135.13,18.19,13.14,400.39,10.19,2.98,NULL,NULL);
INSERT INTO `samples` VALUES (234,9,'2017-01-04 09:03:00',NULL,162,15,23.7,34.6,6.22,89.4,8.05,35.3,35.3,35.3,93.72,14.89,10.45,554.29,23,3.64,NULL,NULL);
INSERT INTO `samples` VALUES (235,10,'2017-01-04 09:32:00',NULL,162,15,24.1,34.9,6.85,99.2,8.11,2.7,2.7,2.7,87.56,10.94,4.16,136.98,2.47,1.55,NULL,NULL);
INSERT INTO `samples` VALUES (236,11,'2017-01-04 09:58:00',NULL,162,15,24.3,35.1,6.92,100.6,8.12,5.01,5.01,5.01,76.98,8.58,3.25,117.3,2.59,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (237,12,'2017-01-04 10:24:00',NULL,162,15,24.3,35,7.46,108.5,8.13,2.18,2.18,2.18,80.46,10,4.76,120.3,5.16,3.72,NULL,NULL);
INSERT INTO `samples` VALUES (238,13,'2017-01-05 07:00:00',NULL,162,15,22.8,34.8,6.34,93.5,NULL,4.83,4.83,4.83,100.48,9.99,5.66,208.26,20.1,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (239,14,'2017-01-05 07:15:00',NULL,162,15,23.3,34.9,6.63,94.5,NULL,7.99,7.99,7.99,77.67,9.54,5.63,360.48,12.58,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (240,15,'2017-01-05 07:30:00',NULL,162,15,23.6,35.2,6.16,88.6,NULL,5.83,5.83,5.83,75.42,9.68,5.21,273.05,9.83,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (241,16,'2017-01-05 07:40:00',NULL,162,15,22.9,35.4,6.96,98.9,NULL,12.23,12.23,12.23,75.23,12.42,5.28,88.84,7.87,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (242,17,'2017-01-05 08:00:00',NULL,162,15,23.7,35.4,6.79,97.8,NULL,10.1,10.1,10.1,76.14,12.57,4.28,113.68,6.13,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (243,18,'2017-01-05 08:15:00',NULL,162,15,24.3,35.3,8.12,96.7,NULL,8.69,8.69,8.69,72.55,14.42,5.17,103.37,9.07,1.61,NULL,NULL);
INSERT INTO `samples` VALUES (244,2,'2017-01-24 07:38:00',NULL,162,16,23.5,34.3,NULL,96.4,8.14,12.07,12.07,12.07,367.08,40.74,36.7,1085.08,327.13,5.14,NULL,NULL);
INSERT INTO `samples` VALUES (245,3,'2017-01-24 08:07:00',NULL,162,16,23.1,30.8,7.01,97.3,8.17,6.31,6.31,6.31,87.7,20.24,19.3,662.68,9.48,6.54,NULL,NULL);
INSERT INTO `samples` VALUES (246,4,'2017-01-24 08:29:00',NULL,162,16,24.1,NULL,6.46,94.5,8.16,4.08,4.08,4.08,79.75,23.24,18.9,237.48,13.92,4.49,NULL,NULL);
INSERT INTO `samples` VALUES (247,5,'2017-01-24 08:50:00',NULL,162,16,24.5,NULL,6.57,96.3,8.18,0.8,0.8,0.8,113.22,19.74,16.74,327.23,46.28,7.68,NULL,NULL);
INSERT INTO `samples` VALUES (248,6,'2017-01-24 09:07:00',NULL,162,16,24.5,34.7,6.69,97.3,8.2,1.15,1.15,1.15,117.23,34.7,30.64,953.96,56.58,4.25,NULL,NULL);
INSERT INTO `samples` VALUES (249,7,'2017-01-25 08:22:00',NULL,162,16,23.8,35.2,6.16,88.5,7.87,6.31,6.31,6.31,80.46,17.65,15.38,206.96,6.16,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (250,8,'2017-01-25 08:50:00',NULL,162,16,23.8,34.8,6.22,89.5,7.96,3.53,3.53,3.53,84.69,15.8,14.91,195.95,5.22,6.01,NULL,NULL);
INSERT INTO `samples` VALUES (251,9,'2017-01-25 09:16:00',NULL,162,16,24.3,34.9,6.47,93.7,8,1.7,1.7,1.7,76.35,15.03,12.77,181.82,4.76,7.59,NULL,NULL);
INSERT INTO `samples` VALUES (252,10,'2017-01-25 09:45:00',NULL,162,16,24.8,34.9,6.79,99.1,8.06,1.92,1.92,1.92,77.98,12.72,8.61,118.55,1.01,4.72,NULL,NULL);
INSERT INTO `samples` VALUES (253,11,'2017-01-25 10:07:00',NULL,162,16,24.6,35.1,6.79,98.9,8.04,2.06,2.06,2.06,363.96,32.04,17.99,123.12,2.63,31.67,NULL,NULL);
INSERT INTO `samples` VALUES (254,12,'2017-01-25 10:30:00',NULL,162,16,24.7,35.2,6.46,94.3,7.9,1.21,1.21,1.21,77.5,15.25,8.71,94.53,4.94,6.54,NULL,NULL);
INSERT INTO `samples` VALUES (255,13,'2017-01-26 07:20:00',NULL,162,16,22.5,35,6.16,86.5,7.9,3.6,3.6,3.6,87.41,14.86,8.54,146.89,6.87,4.85,NULL,NULL);
INSERT INTO `samples` VALUES (256,14,'2017-01-26 07:50:00',NULL,162,16,22.6,35.1,6.56,92.3,8.02,2.44,2.44,2.44,76.55,10.03,6.31,264.47,6.34,6.8,NULL,NULL);
INSERT INTO `samples` VALUES (257,15,'2017-01-26 08:12:00',NULL,162,16,22.6,35,6.27,88.2,8.05,2.85,2.85,2.85,73.14,15.07,7.64,201.91,7.83,7.38,NULL,NULL);
INSERT INTO `samples` VALUES (258,16,'2017-01-26 08:35:00',NULL,162,16,23.5,35.3,6.85,98,8.06,6.62,6.62,6.62,79.41,15.49,6.83,110.39,8.47,5.32,NULL,NULL);
INSERT INTO `samples` VALUES (259,17,'2017-01-26 08:55:00',NULL,162,16,23.2,35.4,6.97,99.3,8.07,4.54,4.54,4.54,75.92,19.2,6.36,74.87,7.03,4.68,NULL,NULL);
INSERT INTO `samples` VALUES (260,18,'2017-01-26 09:10:00',NULL,162,16,23.5,35.2,7.02,100.3,8.08,3.88,3.88,3.88,72.52,15.62,5.5,84.73,2.24,5.64,NULL,NULL);
INSERT INTO `samples` VALUES (261,1,'2017-02-14 07:52:00',NULL,162,17,24.2,34.9,6.8,98.7,8.15,0.84,0.84,0.84,80.51,11.1,6.75,205.37,12.88,6.65,NULL,NULL);
INSERT INTO `samples` VALUES (262,2,'2017-02-14 08:25:00',NULL,162,17,24,34.5,6.71,97,8.15,3.81,3.81,3.81,103.87,14.35,10,316.93,36.3,6.51,NULL,NULL);
INSERT INTO `samples` VALUES (263,3,'2017-02-14 08:45:00',NULL,162,17,24.1,34.7,6.77,98,8.14,6.6,6.6,6.6,78.01,11.84,7.75,178.1,5.37,6.19,NULL,NULL);
INSERT INTO `samples` VALUES (264,4,'2017-02-14 09:13:00',NULL,162,17,24.5,34.6,6.81,99.1,8.19,5.25,5.25,5.25,95.15,14.98,10.48,381.69,23.45,6.22,NULL,NULL);
INSERT INTO `samples` VALUES (265,5,'2017-02-14 09:38:00',NULL,162,17,24.7,34.3,6.75,98.6,8.19,1.47,1.47,1.47,136.07,16.87,10.08,457.43,71,6.74,NULL,NULL);
INSERT INTO `samples` VALUES (266,6,'2017-02-14 10:00:00',NULL,162,17,24.7,33.9,6.78,98.7,8.2,1.04,1.04,1.04,95.6,15.08,10.84,490.89,29.92,5.61,NULL,NULL);
INSERT INTO `samples` VALUES (267,7,'2017-02-15 08:33:00',NULL,162,17,24.9,33.8,6.38,93.1,8.1,4.18,4.18,4.18,80.69,13.7,11.52,486.27,5.23,7.38,NULL,NULL);
INSERT INTO `samples` VALUES (268,8,'2017-02-15 08:45:00',NULL,162,17,24.9,34.1,6.2,90.5,8.07,10.7,10.7,10.7,94.63,13.86,10.03,386.33,26.13,7.81,NULL,NULL);
INSERT INTO `samples` VALUES (269,9,'2017-02-15 09:03:00',NULL,162,17,24.9,34.4,5.93,86.7,8.07,8.65,8.65,8.65,107.67,13.21,8.5,321.19,26.27,7.93,NULL,NULL);
INSERT INTO `samples` VALUES (270,10,'2017-02-15 09:30:00',NULL,162,17,25.1,34.9,6.86,100.8,8.19,3.12,3.12,3.12,101.2,10.97,5.45,130.64,2.72,6.83,NULL,NULL);
INSERT INTO `samples` VALUES (271,11,'2017-02-15 09:47:00',NULL,162,17,25.2,34.9,6.79,100,8.13,5.91,5.91,5.91,93.72,11.03,6.24,174.42,6,6.51,NULL,NULL);
INSERT INTO `samples` VALUES (272,12,'2017-02-15 10:11:00',NULL,162,17,25.1,34.9,6.59,96.8,8.1,4.16,4.16,4.16,83.21,11.44,6.52,150.71,5.57,7.22,NULL,NULL);
INSERT INTO `samples` VALUES (273,13,'2017-02-17 07:12:00',NULL,162,17,24.8,35.1,5.9,86.3,8.02,2.94,2.94,2.94,78.99,10.76,5.87,115.55,6.22,5.64,NULL,NULL);
INSERT INTO `samples` VALUES (274,14,'2017-02-17 07:40:00',NULL,162,17,25.6,35.1,6.18,91.6,8.08,2.63,2.63,2.63,99.69,11.06,5.98,161.36,7.09,8.75,NULL,NULL);
INSERT INTO `samples` VALUES (275,15,'2017-02-17 08:00:00',NULL,162,17,25.6,35.1,5.63,83.3,8.05,2.14,2.14,2.14,88.27,10.18,5.93,168.59,9.16,8.67,NULL,NULL);
INSERT INTO `samples` VALUES (276,16,'2017-02-17 08:25:00',NULL,162,17,25.3,35.2,6.46,95.3,8.11,2.77,2.77,2.77,95.54,9.67,5.16,65.93,4.3,8.73,NULL,NULL);
INSERT INTO `samples` VALUES (277,17,'2017-02-17 08:50:00',NULL,162,17,25.6,35.3,6.83,101.5,8.13,14.17,14.17,14.17,74.08,9.2,6.11,91.12,8.47,7.29,NULL,NULL);
INSERT INTO `samples` VALUES (278,18,'2017-02-17 09:14:00',NULL,162,17,25.5,35.1,6.73,99.6,8.15,3.7,3.7,3.7,76.73,9.13,6.25,127.75,10.41,8.03,NULL,NULL);
INSERT INTO `samples` VALUES (279,1,'2017-03-07 07:40:00',NULL,162,18,24.2,34.5,6.75,97.9,8.16,1.8,1.8,1.8,224.47,15.19,9.21,171.59,16.23,15.98,NULL,NULL);
INSERT INTO `samples` VALUES (280,2,'2017-03-07 08:03:00',NULL,162,18,24.2,32.8,6.81,97.7,8.14,9.51,9.51,9.51,277.55,19.5,17.47,1038.69,231.41,7.05,NULL,NULL);
INSERT INTO `samples` VALUES (281,3,'2017-03-07 08:25:00',NULL,162,18,24.3,34.6,6.82,99.1,8.15,8.4,8.4,8.4,71.1,9.51,6.58,102.52,5.4,5.96,NULL,NULL);
INSERT INTO `samples` VALUES (282,4,'2017-03-07 08:45:00',NULL,162,18,24.5,34.2,6.7,97.5,8.15,7.2,7.2,7.2,74.76,13.16,10.3,263.05,11.25,6.23,NULL,NULL);
INSERT INTO `samples` VALUES (283,5,'2017-03-07 09:04:00',NULL,162,18,24.9,33.7,6.69,97.6,8.17,3.84,3.84,3.84,122.36,10.73,8.64,398.69,63.58,7.36,NULL,NULL);
INSERT INTO `samples` VALUES (284,6,'2017-03-07 09:25:00',NULL,162,18,24.9,32.9,6.79,98.6,8.19,2.11,2.11,2.11,99.98,18.3,14.53,742.36,37.2,5.24,NULL,NULL);
INSERT INTO `samples` VALUES (285,7,'2017-03-08 08:30:00',NULL,162,18,24.5,34,6.33,91.8,8.1,1.81,1.81,1.81,96.43,10.88,9.02,396.1,2.53,7.35,NULL,NULL);
INSERT INTO `samples` VALUES (286,8,'2017-03-08 08:59:00',NULL,162,18,24.6,33.9,6.13,88.8,8.1,7.56,7.56,7.56,76.94,10.36,8.9,290.11,13.06,6.65,NULL,NULL);
INSERT INTO `samples` VALUES (287,9,'2017-03-08 09:24:00',NULL,162,18,24.6,34.2,6.42,93.4,8.11,3.03,3.03,3.03,71.71,9.87,7.07,175.61,6.94,7.32,NULL,NULL);
INSERT INTO `samples` VALUES (288,10,'2017-03-08 09:54:00',NULL,162,18,25.2,34.5,6.93,102.1,8.2,2.18,2.18,2.18,79.27,9.09,4.78,101.65,2.55,6.55,NULL,NULL);
INSERT INTO `samples` VALUES (289,11,'2017-03-08 10:24:00',NULL,162,18,25.7,34.5,7.07,104.9,8.21,1.68,1.68,1.68,70.08,6.69,3.79,74.47,2.15,6.08,NULL,NULL);
INSERT INTO `samples` VALUES (290,12,'2017-03-08 11:00:00',NULL,162,18,26,34.5,7.35,109.4,8.13,1.67,1.67,1.67,80.98,7.28,5.5,100.44,6.17,8.93,NULL,NULL);
INSERT INTO `samples` VALUES (291,13,'2017-03-09 07:30:00',NULL,162,18,24.5,34.3,5.97,86.5,8.05,2.23,2.23,2.23,72.61,8.51,5.12,133.01,8.53,5.43,NULL,NULL);
INSERT INTO `samples` VALUES (292,14,'2017-03-09 07:50:00',NULL,162,18,25.4,34.5,6.26,92.1,8.09,4.6,4.6,4.6,89.82,10.3,6.08,153.49,8.37,7.69,NULL,NULL);
INSERT INTO `samples` VALUES (293,15,'2017-03-09 08:05:00',NULL,162,18,25.4,34.4,5.83,85.8,8.06,2.38,2.38,2.38,69.96,7.9,5.19,189.55,8.49,7.27,NULL,NULL);
INSERT INTO `samples` VALUES (294,16,'2017-03-09 08:15:00',NULL,162,18,24.7,34.5,6.76,98.6,8.11,15.43,15.43,15.43,75.57,10.2,5.87,99.46,11.69,5.92,NULL,NULL);
INSERT INTO `samples` VALUES (295,17,'2017-03-09 08:30:00',NULL,162,18,25.2,34.9,6.91,101.2,8.15,9.09,9.09,9.09,65.5,8.75,4.74,59.62,5.76,6.13,NULL,NULL);
INSERT INTO `samples` VALUES (296,18,'2017-03-09 08:45:00',NULL,162,18,25.4,34.5,6.78,100.5,8.14,6.89,6.89,6.89,65.09,6.8,4.9,64.4,6.27,5.77,NULL,NULL);
INSERT INTO `samples` VALUES (297,1,'2017-03-28 07:41:00',NULL,162,19,24.4,34.4,6.75,97.6,8.11,0.84,0.84,0.84,109.54,14.07,8.81,326.9,26.32,9,NULL,NULL);
INSERT INTO `samples` VALUES (298,2,'2017-03-28 08:06:00',NULL,162,19,24.4,33.4,6.62,95.1,8.12,3.33,3.33,3.33,159.83,21.04,12.74,669.95,94.09,7.49,NULL,NULL);
INSERT INTO `samples` VALUES (299,3,'2017-03-28 08:28:00',NULL,162,19,24.6,34.4,6.62,96.3,8.11,5.24,5.24,5.24,87.28,12.22,7.59,154.02,9.23,7.96,NULL,NULL);
INSERT INTO `samples` VALUES (300,4,'2017-03-28 08:43:00',NULL,162,19,25.4,34,6.71,98.4,8.18,1.88,1.88,1.88,86.99,14.49,8.87,303.09,19.08,6.92,NULL,NULL);
INSERT INTO `samples` VALUES (301,5,'2017-03-28 09:02:00',NULL,162,19,25.6,33.3,6.76,99.1,8.18,2.17,2.17,2.17,143.94,16.31,9.49,591.67,81.12,7.49,NULL,NULL);
INSERT INTO `samples` VALUES (302,6,'2017-03-28 09:21:00',NULL,162,19,25.4,32.9,6.77,98.8,8.19,0.63,0.63,0.63,102.96,19.47,14.15,768.9,37.51,6.85,NULL,NULL);
INSERT INTO `samples` VALUES (303,7,'2017-03-29 08:21:00',NULL,162,19,25.4,33.1,6.23,90.8,8.07,11.33,11.33,11.33,73.7,21.64,14.61,701.31,6.16,10.74,NULL,NULL);
INSERT INTO `samples` VALUES (304,8,'2017-03-29 08:50:00',NULL,162,19,26,33.4,5.72,84.5,8.06,7.19,7.19,7.19,82.42,13.31,8.35,321.29,12.09,11.43,NULL,NULL);
INSERT INTO `samples` VALUES (305,9,'2017-03-29 09:10:00',NULL,162,19,26.3,33.1,5.93,87.9,8.07,7.53,7.53,7.53,123.15,20.92,9.56,497.53,47.97,20.31,NULL,NULL);
INSERT INTO `samples` VALUES (306,10,'2017-03-29 09:36:00',NULL,162,19,26.2,33.9,6.78,100.8,8.18,2.5,2.5,2.5,80.2,13.09,5.51,150.16,2.14,16.26,NULL,NULL);
INSERT INTO `samples` VALUES (307,11,'2017-03-29 10:10:00',NULL,162,19,27.3,34.3,6.7,101.8,8.16,3.99,3.99,3.99,77.78,9.64,4.22,67.99,2.19,13.34,NULL,NULL);
INSERT INTO `samples` VALUES (308,12,'2017-03-29 10:36:00',NULL,162,19,26.8,34,6.95,104.5,8.13,2.18,2.18,2.18,77.95,12.43,6.28,147.2,5.68,14.6,NULL,NULL);
INSERT INTO `samples` VALUES (309,13,'2017-03-30 07:20:00',NULL,162,19,25,34,6,87.7,8.02,5.6,5.6,5.6,72.36,10.68,5.4,165.19,5.52,6.67,NULL,NULL);
INSERT INTO `samples` VALUES (310,14,'2017-03-30 07:42:00',NULL,162,19,26,34.5,6.41,95.3,8.08,7.74,7.74,7.74,62.05,8.5,4.77,179.25,3.86,8.65,NULL,NULL);
INSERT INTO `samples` VALUES (311,15,'2017-03-30 08:05:00',NULL,162,19,25.9,34.2,6.27,92.9,8.03,6.34,6.34,6.34,64.89,7.35,5.64,256.49,6.94,5.75,NULL,NULL);
INSERT INTO `samples` VALUES (312,16,'2017-03-30 08:30:00',NULL,162,19,25.7,34.3,6.73,99.6,8.11,7.85,7.85,7.85,69.22,9.61,5.77,59.4,3.2,8.89,NULL,NULL);
INSERT INTO `samples` VALUES (313,17,'2017-03-30 09:00:00',NULL,162,19,26.2,34.3,6.92,103.2,8.14,5.91,5.91,5.91,71.06,7.38,3.19,69.76,3.03,8.29,NULL,NULL);
INSERT INTO `samples` VALUES (314,18,'2017-03-30 09:20:00',NULL,162,19,26.5,34.4,6.79,101.9,8.13,3.96,3.96,3.96,63.57,9.18,5.45,65.9,1.9,6.91,NULL,NULL);
INSERT INTO `samples` VALUES (315,1,'2017-04-18 07:48:00',NULL,162,20,24.8,34,6.84,99.5,8.15,1,1,1,161.44,13.29,9.28,437.66,20.27,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (316,2,'2017-04-18 08:12:00',NULL,162,20,24.8,31.8,6.59,94.6,8.17,3.24,3.24,3.24,230.16,15.66,13.43,1122.88,146.51,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (317,3,'2017-04-18 08:34:00',NULL,162,20,24.1,24.4,7.26,98.6,8.22,2.59,2.59,2.59,146.46,11.19,7.94,1203.24,16.14,7.74,NULL,NULL);
INSERT INTO `samples` VALUES (318,4,'2017-04-18 08:53:00',NULL,162,20,26.1,33.5,6.53,96.9,8.16,0.96,0.96,0.96,128.53,13.35,9.08,619.74,35,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (319,5,'2017-04-18 09:10:00',NULL,162,20,26.1,33.1,6.6,97.7,8.16,1.02,1.02,1.02,168.36,13.71,10.41,850.37,79.71,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (320,6,'2017-04-18 09:26:00',NULL,162,20,25.9,33,6.57,96.8,8.18,0.92,0.92,0.92,131.32,18.46,15.75,1191.85,40.97,2.46,NULL,NULL);
INSERT INTO `samples` VALUES (321,7,'2017-04-19 08:18:00',NULL,162,20,25.8,32.7,6.44,94.7,8.12,2.18,2.18,2.18,90.59,14.16,10.6,690.76,3.47,3.86,NULL,NULL);
INSERT INTO `samples` VALUES (322,8,'2017-04-19 08:45:00',NULL,162,20,25.9,33.7,6.43,95.3,8.11,9.15,9.15,9.15,91.68,11.62,8.36,261.11,3.39,2.74,NULL,NULL);
INSERT INTO `samples` VALUES (323,9,'2017-04-19 09:06:00',NULL,162,20,26.2,33,6.24,92.6,8.1,11.37,11.37,11.37,109.01,14.12,11.45,562.02,23.82,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (324,10,'2017-04-19 09:30:00',NULL,162,20,26.1,34.1,6.63,99,8.18,1.64,1.64,1.64,90.76,8.46,4.84,97.38,1.25,3.55,NULL,NULL);
INSERT INTO `samples` VALUES (325,11,'2017-04-19 10:00:00',NULL,162,20,26.7,34.4,6.74,101.8,8.18,2.53,2.53,2.53,84.75,8.23,4.45,74.79,0.59,2.37,NULL,NULL);
INSERT INTO `samples` VALUES (326,12,'2017-04-19 10:25:00',NULL,162,20,27,34.3,6.97,105.7,8.15,1.5,1.5,1.5,118.54,9.25,6.57,158.8,3.77,7.88,NULL,NULL);
INSERT INTO `samples` VALUES (327,13,'2017-04-20 07:15:00',NULL,162,20,25.7,33.9,5.82,86.1,8.04,1.61,1.61,1.61,95.44,9.63,6.18,162.82,3.58,4.19,NULL,NULL);
INSERT INTO `samples` VALUES (328,14,'2017-04-20 07:30:00',NULL,162,20,27.1,34.3,6.16,93.6,8.09,13.33,13.33,13.33,92.19,8.65,6.75,492.01,4.96,4.66,NULL,NULL);
INSERT INTO `samples` VALUES (329,15,'2017-04-20 07:50:00',NULL,162,20,26.3,33.9,6.19,92.5,8.02,12.6,12.6,12.6,88.28,9.53,7.38,527.84,7.43,5.56,NULL,NULL);
INSERT INTO `samples` VALUES (330,16,'2017-04-20 08:05:00',NULL,162,20,25.9,34.3,6.54,97.3,8.1,7,7,7,83.28,10.3,5.44,72.89,3.09,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (331,17,'2017-04-20 08:20:00',NULL,162,20,26,34.2,6.6,98.1,8.09,4.08,4.08,4.08,85.81,6.78,4.25,109.36,3.48,3.28,NULL,NULL);
INSERT INTO `samples` VALUES (332,18,'2017-04-20 08:40:00',NULL,162,20,26.7,34.6,6.5,98.2,8.11,5.31,5.31,5.31,81.48,6.06,4.22,90.27,3.16,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (333,1,'2017-05-09 07:35:00',NULL,162,21,25.3,33.2,7.2,102.6,8.12,0.75,0.75,0.75,137.54,17.93,13.54,1088.85,56.57,5.1,NULL,NULL);
INSERT INTO `samples` VALUES (334,2,'2017-05-09 08:00:00',NULL,162,21,25.4,32.3,6.78,98.9,8.16,2.06,2.06,2.06,256.83,17.07,15.82,1412.92,171.36,4.94,NULL,NULL);
INSERT INTO `samples` VALUES (335,3,'2017-05-09 08:22:00',NULL,162,21,25.5,34,6.88,101.6,8.14,2.59,2.59,2.59,117.85,10.05,7.06,300.1,9.84,7.68,NULL,NULL);
INSERT INTO `samples` VALUES (336,4,'2017-05-09 08:45:00',NULL,162,21,26.1,33.6,6.96,103.7,8.2,1.48,1.48,1.48,116.75,12.28,8.49,562.57,25.13,5.99,NULL,NULL);
INSERT INTO `samples` VALUES (337,5,'2017-05-09 09:02:00',NULL,162,21,26.2,32.3,6.92,102.2,8.19,2.5,2.5,2.5,230.57,15.6,13.62,1488.58,156.2,5.01,NULL,NULL);
INSERT INTO `samples` VALUES (338,6,'2017-05-09 09:20:00',NULL,162,21,26,33,6.86,101.5,8.21,0.78,0.78,0.78,113.94,14.22,12.1,983.76,35.72,4.87,NULL,NULL);
INSERT INTO `samples` VALUES (339,7,'2017-05-10 08:17:00',NULL,162,21,25.5,34.2,6.46,95.6,8.14,2.24,2.24,2.24,64.53,8.41,6.17,296.93,3.01,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (340,8,'2017-05-10 08:40:00',NULL,162,21,25.8,33.9,6.24,92.7,8.14,2,2,2,67.52,8.33,6.28,203.96,7.82,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (341,9,'2017-05-10 08:59:00',NULL,162,21,25.9,34.7,6.33,94.4,8.14,1.57,1.57,1.57,69.5,17.55,5.04,61.3,4.65,4.9,NULL,NULL);
INSERT INTO `samples` VALUES (342,10,'2017-05-10 09:31:00',NULL,162,21,26.1,34.3,6.91,103.2,8.23,1.67,1.67,1.67,69.5,9.38,4.86,222.52,1.68,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (343,11,'2017-05-10 09:53:00',NULL,162,21,26.8,34.6,6.94,105,8.18,2.19,2.19,2.19,68.73,8.82,4.45,103.51,1.64,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (344,12,'2017-05-10 10:19:00',NULL,162,21,26.8,34.4,7.23,109.7,8.18,1.74,1.74,1.74,73.02,8.63,5.93,94.43,4.35,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (345,13,'2017-05-11 07:21:00',NULL,162,21,24.6,34.2,6.07,88.2,8.06,2.44,2.44,2.44,76.91,14.57,5.25,220.95,4.15,3.16,NULL,NULL);
INSERT INTO `samples` VALUES (346,14,'2017-05-11 07:44:00',NULL,162,21,25.1,34.3,6.46,94.8,8.11,1.85,1.85,1.85,64.66,9.25,4.86,286.27,5.27,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (347,15,'2017-05-11 08:05:00',NULL,162,21,24.9,33.9,6.47,94.7,8.1,2.22,2.22,2.22,60.93,8.69,5.35,355.94,3.89,2.6,NULL,NULL);
INSERT INTO `samples` VALUES (348,16,'2017-05-11 08:24:00',NULL,162,21,25.2,34.6,6.88,101.5,8.16,5.36,5.36,5.36,67.65,11.57,4.98,102.26,6.23,2,NULL,NULL);
INSERT INTO `samples` VALUES (349,17,'2017-05-11 08:42:00',NULL,162,21,25.3,34.3,7.21,106.3,8.2,5.85,5.85,5.85,71.81,9.22,4.74,155.91,1.82,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (350,18,'2017-05-11 09:06:00',NULL,162,21,25.1,34.4,6.98,102.7,8.2,3.51,3.51,3.51,67.97,9.75,5.05,79.39,1.63,2.58,NULL,NULL);
INSERT INTO `samples` VALUES (351,1,'2017-05-30 07:40:00',NULL,162,22,25.7,33.9,6.92,102.2,8.09,1.07,1.07,1.07,102.75,11.34,8.89,692.06,36.12,4.31,NULL,NULL);
INSERT INTO `samples` VALUES (352,2,'2017-05-30 08:06:00',NULL,162,22,26.1,33.1,6.82,100.9,8.13,4.2,4.2,4.2,221.5,14.04,12.27,1133.73,151.18,6.19,NULL,NULL);
INSERT INTO `samples` VALUES (353,3,'2017-05-30 08:23:00',NULL,162,22,26,34.5,6.83,101.8,8.09,2.8,2.8,2.8,72.95,8.76,5.7,146.13,7.64,3.39,NULL,NULL);
INSERT INTO `samples` VALUES (354,4,'2017-05-30 08:47:00',NULL,162,22,26.5,34.3,6.83,102.3,8.16,1.25,1.25,1.25,86.47,10.51,6.24,427.43,24.06,2.82,NULL,NULL);
INSERT INTO `samples` VALUES (355,5,'2017-05-30 09:04:00',NULL,162,22,26.4,33.9,6.87,102.9,8.16,5.07,5.07,5.07,144.84,13.37,8.19,657.55,63.53,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (356,6,'2017-05-30 09:20:00',NULL,162,22,26.4,33.8,6.78,101.4,8.16,3.1,3.1,3.1,91.95,15.19,12.6,1009.81,34.86,2.93,NULL,NULL);
INSERT INTO `samples` VALUES (357,7,'2017-05-31 08:12:00',NULL,162,22,26.4,34,6.21,92.8,8.07,3.94,3.94,3.94,70.51,12.12,11.89,1061.01,7.05,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (358,8,'2017-05-31 08:41:00',NULL,162,22,26.5,34.4,6.32,94.9,8.06,5.14,5.14,5.14,70.11,11.37,9.18,331.09,9.63,5.91,NULL,NULL);
INSERT INTO `samples` VALUES (359,9,'2017-05-31 09:02:00',NULL,162,22,26.8,33.7,6.01,90.3,8.05,13.23,13.23,13.23,112.14,13.81,9.87,530.06,27.14,5.73,NULL,NULL);
INSERT INTO `samples` VALUES (360,10,'2017-05-31 09:25:00',NULL,162,22,26.9,34.6,6.73,101.8,8.15,3.1,3.1,3.1,63.06,10.43,4.14,132.33,4.13,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (361,11,'2017-05-31 09:48:00',NULL,162,22,26.9,34.8,6.8,103.2,8.12,2.59,2.59,2.59,98.09,8.48,4.65,69.65,6.98,7.24,NULL,NULL);
INSERT INTO `samples` VALUES (362,12,'2017-05-31 10:10:00',NULL,162,22,27.1,34.7,7.27,110.5,8.1,2.31,2.31,2.31,66.91,6.41,4.23,70.33,8.73,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (363,13,'2017-06-01 07:20:00',NULL,162,22,25,34.5,5.8,85.1,8,1.87,1.87,1.87,81.28,7.25,4.42,211.99,11.56,2.81,NULL,NULL);
INSERT INTO `samples` VALUES (364,14,'2017-06-01 07:45:00',NULL,162,22,25.8,34.6,6.45,96.1,8.09,5.85,5.85,5.85,62.1,7.93,5.01,360.92,8.71,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (365,15,'2017-06-01 08:05:00',NULL,162,22,26,34.7,5.87,87.7,8.06,4.07,4.07,4.07,62.55,6.53,4.96,233.74,4.74,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (366,16,'2017-06-01 08:30:00',NULL,162,22,25.8,34.9,6.84,101.8,8.09,7.14,7.14,7.14,63.06,7.8,3.56,83.75,1.84,1.26,NULL,NULL);
INSERT INTO `samples` VALUES (367,17,'2017-06-01 08:50:00',NULL,162,22,25.9,34.8,7.01,104.5,8.15,4.42,4.42,4.42,64.32,7.26,2.81,61.83,2.19,1.72,NULL,NULL);
INSERT INTO `samples` VALUES (368,18,'2017-06-01 09:10:00',NULL,162,22,25.8,34.7,6.96,103.6,8.16,2.82,2.82,2.82,65.6,9.21,3.65,71.59,2.54,1.59,NULL,NULL);
INSERT INTO `samples` VALUES (369,1,'2017-06-20 07:41:00',NULL,162,23,26.2,33.6,6.9,102.9,8.1,1.94,1.94,1.94,121.24,21.68,11.42,749.69,43.88,3.03,NULL,NULL);
INSERT INTO `samples` VALUES (370,2,'2017-06-20 08:07:00',NULL,162,23,25.7,30.5,6.96,101.1,8.16,7.1,7.1,7.1,422.69,32.02,27.18,2784.71,373.53,2.68,NULL,NULL);
INSERT INTO `samples` VALUES (371,3,'2017-06-20 08:28:00',NULL,162,23,26.3,34.4,6.7,100.4,8.12,5.17,5.17,5.17,78.43,14.6,7.15,151.58,4.29,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (372,4,'2017-06-20 08:46:00',NULL,162,23,26.7,34.2,6.64,100.2,8.17,2.09,2.09,2.09,82.85,15.32,8.42,366.12,19.49,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (373,5,'2017-06-20 09:04:00',NULL,162,23,27,34,6.75,102.1,8.16,6.09,6.09,6.09,150.7,16.49,11.52,847.93,84.24,3.01,NULL,NULL);
INSERT INTO `samples` VALUES (374,6,'2017-06-20 09:22:00',NULL,162,23,26.9,33.9,6.76,102.2,8.17,4.98,4.98,4.98,81.95,20.6,14.97,689.49,19.33,0.43,NULL,NULL);
INSERT INTO `samples` VALUES (375,7,'2017-06-21 08:15:00',NULL,162,23,26.9,33.4,6.47,97.6,8.08,4.88,4.88,4.88,68.12,13.03,6.59,159.65,3.04,2.52,NULL,NULL);
INSERT INTO `samples` VALUES (376,8,'2017-06-21 08:43:00',NULL,162,23,26.7,33.9,6.32,95.2,8.08,2.45,2.45,2.45,75,10.63,7.3,196.89,7.6,3.98,NULL,NULL);
INSERT INTO `samples` VALUES (377,9,'2017-06-21 09:03:00',NULL,162,23,27.3,34.5,6.85,104.6,8.1,2.24,2.24,2.24,69.92,9.86,6.9,120.3,6.34,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (378,10,'2017-06-21 09:30:00',NULL,162,23,27.3,34.5,6.69,102.2,8.17,3.96,3.96,3.96,77.16,9.92,5.4,109.23,2.58,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (379,11,'2017-06-21 09:50:00',NULL,162,23,27.4,34.5,6.86,104.9,8.2,1.8,1.8,1.8,76.83,10.82,5.28,50.02,2.35,1.15,NULL,NULL);
INSERT INTO `samples` VALUES (380,12,'2017-06-21 10:12:00',NULL,162,23,27.6,34.6,6.94,106.5,8.16,3.59,3.59,3.59,70.71,10.58,5.97,76.78,3.88,2.3,NULL,NULL);
INSERT INTO `samples` VALUES (381,13,'2017-06-22 07:20:00',NULL,162,23,26.1,34.6,5.82,87.3,8.4,1.43,1.43,1.43,84.85,10.52,5.98,199.61,5.57,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (382,14,'2017-06-22 07:45:00',NULL,162,23,26,34.3,6.38,95.5,8.2,15,15,15,75.23,8.78,8.08,659.6,8.11,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (383,15,'2017-06-22 08:10:00',NULL,162,23,25.7,33.9,6.2,92.1,8.01,5.01,5.01,5.01,72.34,10.18,8.02,514.52,8.14,3.99,NULL,NULL);
INSERT INTO `samples` VALUES (384,16,'2017-06-22 08:30:00',NULL,162,23,26.4,34.6,6.54,98.7,8.12,4.13,4.13,4.13,77.41,7.94,5.39,89.06,4.35,1.11,NULL,NULL);
INSERT INTO `samples` VALUES (385,17,'2017-06-22 08:50:00',NULL,162,23,26.1,34.6,6.88,103.2,8.16,2.93,2.93,2.93,75.37,9.07,4.85,112.91,8.83,1.33,NULL,NULL);
INSERT INTO `samples` VALUES (386,18,'2017-06-22 09:10:00',NULL,162,23,26.1,34.7,6.75,101.4,8.13,3.83,3.83,3.83,67.44,7.26,5.14,48.61,4.01,1.45,NULL,NULL);
INSERT INTO `samples` VALUES (387,19,'2017-06-23 07:25:00',NULL,162,23,25.5,33.3,5.8,85.6,8.08,0.93,0.93,0.93,86.71,12.03,7.81,502.8,4.82,5.38,NULL,NULL);
INSERT INTO `samples` VALUES (388,20,'2017-06-23 08:05:00',NULL,162,23,26,32.3,6.56,97.2,8.18,2.18,2.18,2.18,123.88,10.98,8.94,1032.64,59,1.45,NULL,NULL);
INSERT INTO `samples` VALUES (389,21,'2017-06-23 08:40:00',NULL,162,23,26.4,33.8,6.44,96.8,8.13,1.4,1.4,1.4,79.37,11.05,6.5,367.12,11.34,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (390,22,'2017-06-23 09:14:00',NULL,162,23,26.7,34.2,6.72,102,8.2,0.43,0.43,0.43,73.24,13.26,4.71,84.03,4.31,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (391,23,'2017-06-23 09:50:00',NULL,162,23,26.3,31.7,6.5,96.4,8.08,1.22,1.22,1.22,282.06,27.92,25.09,2095.31,208.36,5.44,NULL,NULL);
INSERT INTO `samples` VALUES (392,24,'2017-06-23 10:20:00',NULL,162,23,26.7,33.1,6.59,99.2,8.1,8.26,8.26,8.26,159.63,16.32,12.27,948.8,92.61,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (393,1,'2017-07-11 07:55:00',NULL,162,24,26.6,32.8,6.6,98.6,8.08,0.83,0.83,0.83,142.77,17.73,13.49,1216.76,83.53,7.87,NULL,NULL);
INSERT INTO `samples` VALUES (394,2,'2017-07-11 08:21:00',NULL,162,24,26.6,32.1,6.18,91.9,8.14,1.15,1.15,1.15,272.94,18.08,15.14,1651.57,252.84,6.35,NULL,NULL);
INSERT INTO `samples` VALUES (395,3,'2017-07-11 08:43:00',NULL,162,24,26.6,34.1,5.82,86.7,8.07,1.99,1.99,1.99,76.71,12.28,6.33,263.19,16.23,5.59,NULL,NULL);
INSERT INTO `samples` VALUES (396,4,'2017-07-11 09:05:00',NULL,162,24,27.4,33.4,6.23,94.6,8.16,0.34,0.34,0.34,108.2,13.94,7.62,673.69,47.01,2.81,NULL,NULL);
INSERT INTO `samples` VALUES (397,5,'2017-07-11 09:25:00',NULL,162,24,27.3,33,6.56,99.3,8.17,0.92,0.92,0.92,182.63,15.07,10.81,1282.27,146.96,3.22,NULL,NULL);
INSERT INTO `samples` VALUES (398,6,'2017-07-11 09:44:00',NULL,162,24,27.3,34.1,6.33,96.3,8.18,0.67,0.67,0.67,78.21,12.88,7.07,528.03,22.21,0.86,NULL,NULL);
INSERT INTO `samples` VALUES (399,7,'2017-07-12 08:15:00',NULL,162,24,27.1,34.5,5.66,86.1,8.06,2.14,2.14,2.14,71.27,11.81,6.37,265.14,7.73,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (400,8,'2017-07-12 08:35:00',NULL,162,24,27.1,34.1,5.47,82.9,8.06,4.57,4.57,4.57,69.26,10.39,6.82,278.27,12.3,3.23,NULL,NULL);
INSERT INTO `samples` VALUES (401,9,'2017-07-12 08:55:00',NULL,162,24,28.2,33.7,5.26,81.1,8.04,6.11,6.11,6.11,77.07,12.2,6.52,512.47,21.68,5.08,NULL,NULL);
INSERT INTO `samples` VALUES (402,10,'2017-07-12 09:20:00',NULL,162,24,27.6,34.3,6.5,99.5,8.16,1.14,1.14,1.14,72.58,8.97,3.47,177.75,7.89,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (403,11,'2017-07-12 09:40:00',NULL,162,24,27.8,34.5,6.53,100.5,8.11,2.12,2.12,2.12,73.6,10.64,3.77,103.36,7.47,2.08,NULL,NULL);
INSERT INTO `samples` VALUES (404,12,'2017-07-12 10:00:00',NULL,162,24,27.8,34.4,6.24,95.9,8.07,1.65,1.65,1.65,65.01,11.9,4.88,125.82,9.24,2.78,NULL,NULL);
INSERT INTO `samples` VALUES (405,13,'2017-07-13 07:18:00',NULL,162,24,26.6,34.6,5.22,78.8,8,1.5,1.5,1.5,94.73,10.78,5.26,144.13,9.77,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (406,14,'2017-07-13 07:39:00',NULL,162,24,26.9,34.5,6.13,93.1,8.08,2.53,2.53,2.53,71.99,7.78,4.71,219.15,7.67,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (407,15,'2017-07-13 07:55:00',NULL,162,24,26.9,34.4,5.77,87.6,8.04,3.77,3.77,3.77,58.96,7.98,4.99,256.8,7.65,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (408,16,'2017-07-13 08:14:00',NULL,162,24,27.1,34.4,6.19,94.3,8.09,2.38,2.38,2.38,71.01,8.84,3.87,52.08,7.09,1.25,NULL,NULL);
INSERT INTO `samples` VALUES (409,17,'2017-07-13 08:31:00',NULL,162,24,27.3,34.5,6.91,105.5,8.12,5.88,5.88,5.88,62.99,9.49,3.48,142.38,8.58,1.85,NULL,NULL);
INSERT INTO `samples` VALUES (410,18,'2017-07-13 08:48:00',NULL,162,24,26.7,34.2,6.63,100.2,8.13,2.26,2.26,2.26,63.94,10.06,5.8,136.98,7.27,1.55,NULL,NULL);
INSERT INTO `samples` VALUES (411,19,'2017-07-14 08:00:00',NULL,162,24,26.4,33.8,6.4,96.2,8.13,0.63,0.63,0.63,94.26,10.24,4.7,176.09,7.23,3.36,NULL,NULL);
INSERT INTO `samples` VALUES (412,21,'2017-07-14 08:41:00',NULL,162,24,26.5,34.3,6.74,101.3,8.15,1.54,1.54,1.54,70.67,9.91,5.5,311.63,11.99,3.15,NULL,NULL);
INSERT INTO `samples` VALUES (413,22,'2017-07-14 09:10:00',NULL,162,24,26.4,34.6,6.73,101.5,8.16,0.89,0.89,0.89,66.79,12.74,4.31,88.08,8.95,1.24,NULL,NULL);
INSERT INTO `samples` VALUES (414,23,'2017-07-14 09:32:00',NULL,162,24,27.4,31.4,6.51,97.9,8.08,0.6,0.6,0.6,357.03,44.35,30.05,2740.61,326.81,5.23,NULL,NULL);
INSERT INTO `samples` VALUES (415,24,'2017-07-14 09:59:00',NULL,162,24,27.3,34.3,5.85,89.4,8.09,1.7,1.7,1.7,99.54,13.42,6.54,315.72,39.02,3.14,NULL,NULL);
INSERT INTO `samples` VALUES (416,25,'2017-07-14 10:25:00',NULL,162,24,27.7,33.9,5.31,81.3,8.05,1.83,1.83,1.83,101.08,15.19,6.3,280.71,20.23,13.06,NULL,NULL);
INSERT INTO `samples` VALUES (417,1,'2017-08-01 08:00:00',NULL,162,25,26.9,32.9,6.75,101.4,8.09,0.74,0.74,0.74,161.7,23.25,14.27,907.91,64.75,5.73,NULL,NULL);
INSERT INTO `samples` VALUES (418,2,'2017-08-01 08:28:00',NULL,162,25,26.9,32.6,6.54,98.2,8.16,2.34,2.34,2.34,270.99,20.2,14.48,1066.38,205.32,3.66,NULL,NULL);
INSERT INTO `samples` VALUES (419,3,'2017-08-01 08:52:00',NULL,162,25,26.9,34.1,5.88,88.9,8.07,3.17,3.17,3.17,82.81,12.82,6.74,171.65,8,3.62,NULL,NULL);
INSERT INTO `samples` VALUES (420,4,'2017-08-01 09:14:00',NULL,162,25,27.5,34,6.41,98,8.15,0.35,0.35,0.35,96.29,12.71,7.96,326.92,25.42,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (421,5,'2017-08-01 09:36:00',NULL,162,25,27.6,33.9,6.67,102,8.18,4.7,4.7,4.7,111.86,13.26,8.37,311.91,32.34,3.69,NULL,NULL);
INSERT INTO `samples` VALUES (422,6,'2017-08-01 09:58:00',NULL,162,25,27.6,34.2,6.63,101.5,8.18,0.56,0.56,0.56,82.82,14.5,9.15,315.35,11.79,3.31,NULL,NULL);
INSERT INTO `samples` VALUES (423,7,'2017-08-02 08:17:00',NULL,162,25,27.5,34.3,6.09,93.2,8.03,1.24,1.24,1.24,80.2,15.48,11.25,771.08,3.88,4.66,NULL,NULL);
INSERT INTO `samples` VALUES (424,8,'2017-08-02 08:40:00',NULL,162,25,27.4,34.3,6.28,96,8.06,6.2,6.2,6.2,71.38,11.01,8.62,273.52,7.15,1.94,NULL,NULL);
INSERT INTO `samples` VALUES (425,9,'2017-08-02 09:02:00',NULL,162,25,27.8,33.9,5.99,91.9,8.06,6.45,6.45,6.45,85.56,12.35,8.66,352.9,17.83,4.64,NULL,NULL);
INSERT INTO `samples` VALUES (426,10,'2017-08-02 09:26:00',NULL,162,25,28,34.3,6.7,103.6,8.18,1.29,1.29,1.29,67.79,9.37,5.14,39.53,2.95,1.17,NULL,NULL);
INSERT INTO `samples` VALUES (427,11,'2017-08-02 09:47:00',NULL,162,25,28.4,34.4,6.75,104.9,8.14,1.76,1.76,1.76,83.46,10.06,5.61,43.09,3.54,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (428,12,'2017-08-02 10:10:00',NULL,162,25,28.3,34.6,6.65,103.3,8.03,1.34,1.34,1.34,79.03,9.74,6.26,48.27,5.34,7.04,NULL,NULL);
INSERT INTO `samples` VALUES (429,13,'2017-08-03 07:07:00',NULL,162,25,27,34.8,5.22,79.3,7.94,2.29,2.29,2.29,116.3,7.28,4.41,234.95,6.8,7.34,NULL,NULL);
INSERT INTO `samples` VALUES (430,14,'2017-08-03 07:38:00',NULL,162,25,27.8,34.4,6.22,95.7,8.04,6.29,6.29,6.29,70.15,7.41,5.38,404.69,5.5,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (431,15,'2017-08-03 07:58:00',NULL,162,25,27.8,34.4,5.56,85.6,8.01,3.56,3.56,3.56,76.61,7.74,5.55,284.54,4.9,2.44,NULL,NULL);
INSERT INTO `samples` VALUES (432,16,'2017-08-03 08:18:00',NULL,162,25,28.1,34.5,6.4,99.1,8.09,6.97,6.97,6.97,74.01,11.18,5.19,65.7,4.77,1.23,NULL,NULL);
INSERT INTO `samples` VALUES (433,17,'2017-08-03 08:40:00',NULL,162,25,28,34.7,6.79,105,8.12,7.58,7.58,7.58,68.99,7.55,4.2,109.59,6.79,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (434,18,'2017-08-03 08:57:00',NULL,162,25,28.1,34.2,6.47,99.9,8.1,2.05,2.05,2.05,62.15,7.99,5.3,170.62,3.91,1.47,NULL,NULL);
INSERT INTO `samples` VALUES (435,19,'2017-08-04 08:05:00',NULL,162,25,26.7,33.5,5.68,85.2,8.09,1.25,1.25,1.25,85.1,11.47,6.82,395,3.63,6.93,NULL,NULL);
INSERT INTO `samples` VALUES (436,21,'2017-08-04 08:49:00',NULL,162,25,27.3,34.3,6.7,102,8.17,2.89,2.89,2.89,78.32,11.07,6.47,202.35,9.54,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (437,22,'2017-08-04 09:22:00',NULL,162,25,27.2,34.4,6.75,102.7,8.16,0.66,0.66,0.66,73.51,10.25,4.96,104.47,7.89,1.85,NULL,NULL);
INSERT INTO `samples` VALUES (438,23,'2017-08-04 09:50:00',NULL,162,25,27.8,33.4,6.49,99.1,8.09,1.03,1.03,1.03,210.65,20.1,14.61,926.01,109.84,5.05,NULL,NULL);
INSERT INTO `samples` VALUES (439,24,'2017-08-04 10:25:00',NULL,162,25,27.7,34,6.33,96.8,8.12,4.6,4.6,4.6,94.66,11.26,7.48,346.36,32.88,2.11,NULL,NULL);
INSERT INTO `samples` VALUES (440,25,'2017-08-04 10:48:00',NULL,162,25,28.2,34.1,7.08,109.3,8.15,7.57,7.57,7.57,92.12,9.78,5.96,235.17,11.82,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (441,1,'2017-08-22 07:55:00',NULL,162,26,26.4,33.6,6.61,99,8.04,1.52,1.52,1.52,149.64,16.31,12.25,784.04,48.67,5.9,NULL,NULL);
INSERT INTO `samples` VALUES (442,2,'2017-08-22 08:21:00',NULL,162,26,26.6,33.6,6.2,93.1,8.11,1.07,1.07,1.07,224.41,18.41,12.96,998.95,139.27,5.76,NULL,NULL);
INSERT INTO `samples` VALUES (443,3,'2017-08-22 08:43:00',NULL,162,26,26.5,31.1,6.42,94.9,8.11,2.93,2.93,2.93,156.05,13.09,8.39,669.41,19.86,10.88,NULL,NULL);
INSERT INTO `samples` VALUES (444,4,'2017-08-22 09:03:00',NULL,162,26,27,34.5,6.57,100,8.17,0.41,0.41,0.41,127.71,15.49,9.34,562.27,38.24,3.75,NULL,NULL);
INSERT INTO `samples` VALUES (445,5,'2017-08-22 09:22:00',NULL,162,26,27,33.1,6.92,104.4,8.18,5.89,5.89,5.89,274.47,23.04,13.59,1297.67,161.27,9.27,NULL,NULL);
INSERT INTO `samples` VALUES (446,6,'2017-08-22 09:46:00',NULL,162,26,27.1,34,6.63,100.6,8.17,1.57,1.57,1.57,91.59,17.83,10.73,677.18,25.46,2.48,NULL,NULL);
INSERT INTO `samples` VALUES (447,7,'2017-08-23 08:17:00',NULL,162,26,27.1,34.9,6.37,97.3,8.05,2.15,2.15,2.15,70.28,13.41,7.55,201.13,3.51,1.53,NULL,NULL);
INSERT INTO `samples` VALUES (448,8,'2017-08-23 08:47:00',NULL,162,26,27.2,34.3,6.43,97.9,8.08,7.56,7.56,7.56,73.93,13.68,10.47,290.58,7.75,3.95,NULL,NULL);
INSERT INTO `samples` VALUES (449,9,'2017-08-23 09:10:00',NULL,162,26,27.6,34.2,6.37,97.7,8.07,3.74,3.74,3.74,88.2,12.04,6.76,348.8,14.35,2.99,NULL,NULL);
INSERT INTO `samples` VALUES (450,10,'2017-08-23 09:38:00',NULL,162,26,27.4,34.5,6.64,101.6,8.17,5.13,5.13,5.13,71.43,15.47,7.14,176.57,1.94,1.61,NULL,NULL);
INSERT INTO `samples` VALUES (451,11,'2017-08-23 10:01:00',NULL,162,26,28.1,35.1,6.63,103.3,8.17,3.78,3.78,3.78,70.96,9.17,5.4,51.48,1.86,1.22,NULL,NULL);
INSERT INTO `samples` VALUES (452,12,'2017-08-23 10:25:00',NULL,162,26,27.8,35,7.06,109.2,8.09,1.62,1.62,1.62,69.15,8.68,5.23,61.94,1.82,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (453,13,'2017-08-24 07:11:00',NULL,162,26,25.3,35.2,5.95,88.4,8.03,12.23,12.23,12.23,78.47,9.82,6.49,143.87,4.65,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (454,14,'2017-08-24 07:50:00',NULL,162,26,25.8,35.3,6.49,97.2,8.07,3.53,3.53,3.53,94.78,8.03,5.58,258.22,3.68,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (455,15,'2017-08-24 08:11:00',NULL,162,26,25.9,35.2,6.05,90.7,8.04,4.13,4.13,4.13,70.69,7.68,5.74,255.03,4.29,2.34,NULL,NULL);
INSERT INTO `samples` VALUES (456,16,'2017-08-24 08:33:00',NULL,162,26,25.2,35.3,6.33,93.9,8.11,7.12,7.12,7.12,82.77,8.19,4.49,33.99,2.26,1.98,NULL,NULL);
INSERT INTO `samples` VALUES (457,17,'2017-08-24 08:55:00',NULL,162,26,25.8,35.2,6.78,101.5,8.13,8.85,8.85,8.85,77.22,7.37,5.32,169.88,12.97,1.77,NULL,NULL);
INSERT INTO `samples` VALUES (458,18,'2017-08-24 09:15:00',NULL,162,26,26.1,35,6.58,98.8,8.11,1.59,1.59,1.59,66.48,8.63,5.57,169.55,2.45,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (459,19,'2017-08-25 07:53:00',NULL,162,26,25.6,34.6,6.31,93.9,8.12,1.29,1.29,1.29,74.98,10.74,6.43,217.96,0.66,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (460,21,'2017-08-25 08:34:00',NULL,162,26,26.3,34.9,6.6,99.5,8.12,1.18,1.18,1.18,79.39,13.17,5.92,226.64,9.21,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (461,22,'2017-08-25 09:15:00',NULL,162,26,26.5,35.2,6.72,102.1,8.17,1.26,1.26,1.26,74.42,11.49,5.26,70.62,7.66,1.52,NULL,NULL);
INSERT INTO `samples` VALUES (462,23,'2017-08-25 09:38:00',NULL,162,26,27,33.6,6.56,99.4,8.09,1.28,1.28,1.28,160.84,15.21,12.62,840.54,86.83,4.96,NULL,NULL);
INSERT INTO `samples` VALUES (463,24,'2017-08-25 10:10:00',NULL,162,26,26.9,34.9,6.09,92.8,8.09,3.29,3.29,3.29,93.28,11.96,8.16,296.65,34.18,1.81,NULL,NULL);
INSERT INTO `samples` VALUES (464,25,'2017-08-25 10:30:00',NULL,162,26,26.8,34.5,6.29,95.4,8.07,6.98,6.98,6.98,91.31,11.47,7.98,459.59,22.79,4.22,NULL,NULL);
INSERT INTO `samples` VALUES (465,1,'2017-09-12 07:56:00',NULL,162,27,27.1,34.4,6.31,96.5,8.08,1.2,1.2,1.2,73.31,16.52,7.37,407.56,17.93,8.81,NULL,NULL);
INSERT INTO `samples` VALUES (466,2,'2017-09-12 08:22:00',NULL,162,27,27.5,34.3,6.32,96.9,8.13,6.88,6.88,6.88,84.72,17.19,10.41,476.03,45.57,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (467,3,'2017-09-12 08:42:00',NULL,162,27,27.4,34.5,6.07,93,8.08,6.49,6.49,6.49,64.28,16.03,8.61,235.46,6.3,5.84,NULL,NULL);
INSERT INTO `samples` VALUES (468,4,'2017-09-12 09:02:00',NULL,162,27,28.1,34.5,6.38,98.8,8.15,0.53,0.53,0.53,66.07,17.7,7.56,342.22,18.39,4.18,NULL,NULL);
INSERT INTO `samples` VALUES (469,5,'2017-09-12 09:22:00',NULL,162,27,28,34.7,6.6,102.3,8.18,1.7,1.7,1.7,72.51,17.8,7.3,362.09,21.76,6.57,NULL,NULL);
INSERT INTO `samples` VALUES (470,6,'2017-09-12 09:38:00',NULL,162,27,28,34.6,6.51,100.8,8.17,1.25,1.25,1.25,56.85,18.21,7.08,317.64,5.87,3.25,NULL,NULL);
INSERT INTO `samples` VALUES (471,7,'2017-09-13 08:11:00',NULL,162,27,28,34.9,6.38,99,8.08,4.2,4.2,4.2,49.31,12.79,6.36,143.46,2.67,2.6,NULL,NULL);
INSERT INTO `samples` VALUES (472,8,'2017-09-13 08:43:00',NULL,162,27,27.9,34.5,6.36,99.3,8.11,8.29,8.29,8.29,54.94,19.21,10.67,371.38,3.71,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (473,9,'2017-09-13 10:14:00',NULL,162,27,27.7,33.8,6.51,99.9,8.08,19.2,19.2,19.2,52.62,15.98,11.6,571.52,10.3,4.99,NULL,NULL);
INSERT INTO `samples` VALUES (474,11,'2017-09-13 09:15:00',NULL,162,27,28,34.9,6.4,99.1,8.11,2.43,2.43,2.43,53.95,12.68,4.67,117.02,2.39,4.01,NULL,NULL);
INSERT INTO `samples` VALUES (475,12,'2017-09-13 09:33:00',NULL,162,27,28.3,34.9,6.15,95.9,8.04,1.15,1.15,1.15,62.1,16.4,5.56,121.09,9.26,5.32,NULL,NULL);
INSERT INTO `samples` VALUES (476,13,'2017-09-14 07:15:00',NULL,162,27,27.6,34.7,5.16,79.4,7.97,1.3,1.3,1.3,51.52,16.05,4.95,227.34,5.12,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (477,14,'2017-09-14 07:37:00',NULL,162,27,28.5,34.7,6.13,95.7,8.02,4.6,4.6,4.6,46.81,13.24,5.22,523.58,4.48,3.57,NULL,NULL);
INSERT INTO `samples` VALUES (478,15,'2017-09-14 07:52:00',NULL,162,27,28.5,34.8,5.63,88,7.98,3.94,3.94,3.94,46.44,15.63,5.6,350.75,3.82,3.82,NULL,NULL);
INSERT INTO `samples` VALUES (479,16,'2017-09-14 08:07:00',NULL,162,27,28.3,34.9,6.35,98.9,8.08,8.39,8.39,8.39,43.73,12.89,4.45,131.29,1.91,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (480,17,'2017-09-14 08:25:00',NULL,162,27,28.4,35,6.61,103.2,8.09,4.9,4.9,4.9,49.22,14.92,3.44,144.43,2.26,3.3,NULL,NULL);
INSERT INTO `samples` VALUES (481,18,'2017-09-14 08:40:00',NULL,162,27,28.5,34.3,6.58,102.6,8.07,2.7,2.7,2.7,39.98,15.44,3.93,179.2,1.7,2.63,NULL,NULL);
INSERT INTO `samples` VALUES (482,19,'2017-09-15 08:00:00',NULL,162,27,26.9,34.1,5.5,83.4,8.07,6.46,6.46,6.46,62.92,16.49,7.38,401.49,3.04,5.77,NULL,NULL);
INSERT INTO `samples` VALUES (483,21,'2017-09-15 08:45:00',NULL,162,27,27.5,34.7,6.61,101.4,8.16,0.96,0.96,0.96,50.74,16.09,6.24,210.76,6.63,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (484,22,'2017-09-15 09:20:00',NULL,162,27,27.6,34.8,6.69,103,8.17,0.5,0.5,0.5,60.84,17.61,5.65,138.85,4.29,5.73,NULL,NULL);
INSERT INTO `samples` VALUES (485,23,'2017-09-15 09:55:00',NULL,162,27,28.5,34.4,6.73,104.9,8.15,1.49,1.49,1.49,87.99,18.6,11.79,510.07,43.29,6.68,NULL,NULL);
INSERT INTO `samples` VALUES (486,24,'2017-09-15 10:27:00',NULL,162,27,28.4,34.5,6.66,103.6,8.14,6.68,6.68,6.68,137.72,17.53,10.39,448.89,41.16,9.72,NULL,NULL);
INSERT INTO `samples` VALUES (487,25,'2017-09-15 10:57:00',NULL,162,27,28.3,34.4,6.97,108.3,8.13,10.18,10.18,10.18,59.38,17.23,7.12,460.06,6.29,3.96,NULL,NULL);
INSERT INTO `samples` VALUES (488,26,'2017-11-07 08:20:00',19,162,28,26.1,33.7,5.47,81.5,8.19,8.31,7.7,8.58,132.62,17.13,12.14,700.23,42.91,6.68,NULL,NULL);
INSERT INTO `samples` VALUES (489,27,'2017-11-07 09:05:00',19,162,28,26.8,34.7,5.97,90.5,8.22,5.14,5.12,5.25,141.3,13.44,8.81,395.31,25.26,5.24,NULL,NULL);
INSERT INTO `samples` VALUES (490,28,'2017-11-07 09:27:00',19,162,28,27,34.8,6.26,95.2,8.22,8.88,8.32,8.21,96.36,11.27,7.87,279.65,28.38,4.63,NULL,NULL);
INSERT INTO `samples` VALUES (491,29,'2017-11-07 09:55:00',19,162,28,26.9,34.3,6.24,94.5,8.24,1.31,0.98,1.08,376.91,24.78,22.58,1017.21,224.04,31.1,NULL,NULL);
INSERT INTO `samples` VALUES (492,30,'2017-11-07 10:23:00',19,162,28,27.7,35,6.44,98.7,8.27,0.97,0.91,1.11,146.98,11.93,7.35,397.99,24.47,4.7,NULL,NULL);
INSERT INTO `samples` VALUES (493,31,'2017-11-07 10:50:00',19,162,28,28,35.6,6.36,98.9,8.26,1.1,1.43,1.22,154.58,11.85,7.46,193.7,7.81,7.54,NULL,NULL);
INSERT INTO `samples` VALUES (494,32,'2017-11-08 08:30:00',20,162,28,26.7,35.2,6.45,97.8,8.26,1.41,1.48,1.44,93.6,12.5,6.71,144.56,8.18,6.98,NULL,NULL);
INSERT INTO `samples` VALUES (495,33,'2017-11-08 08:52:00',20,162,28,26.9,35.4,6.43,98.1,8.28,0.6,0.61,0.64,84.92,9.6,4.72,81.36,4.39,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (496,34,'2017-11-08 09:27:00',20,162,28,26.8,35.5,6.07,92.5,8.19,1.13,1.11,1.22,70.62,12.35,4.68,153.48,5.54,4.61,NULL,NULL);
INSERT INTO `samples` VALUES (497,35,'2017-11-08 09:57:00',20,162,28,26.7,35.4,6.55,99.5,8.26,0.71,0.71,0.75,69.05,8.83,5.35,84.66,3.04,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (498,26,'2017-11-21 08:05:00',5,162,29,23.6,33.6,5.97,85.4,8.13,11.1,11.3,11.3,137.19,16.33,12.02,1010.94,76.49,4.43,NULL,NULL);
INSERT INTO `samples` VALUES (499,27,'2017-11-21 08:34:00',5,162,29,24.4,34.9,6.27,91.6,8.24,3.11,3.65,3.61,92.64,15.43,7.88,504.43,24.48,2.72,NULL,NULL);
INSERT INTO `samples` VALUES (500,28,'2017-11-21 09:00:00',5,162,29,23.7,34.8,6.56,94.8,8.2,3.5,3.33,3.6,125.3,14.12,7.48,503.06,50.25,6.49,NULL,NULL);
INSERT INTO `samples` VALUES (501,29,'2017-11-21 09:20:00',5,162,29,25.3,34.2,6.41,94.7,8.17,1.12,0.85,0.92,277.25,19.96,18.25,1041.45,221.78,14.18,NULL,NULL);
INSERT INTO `samples` VALUES (502,30,'2017-11-21 09:34:00',5,162,29,25.7,35.6,6.58,98.4,8.22,0.69,0.79,0.69,102.61,12.02,5.77,357.11,34.4,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (503,31,'2017-11-21 10:04:00',5,162,29,25.7,36.1,6.5,97.7,8.21,0.45,0.55,0.49,89.12,12.73,5.46,243.29,11.33,11.25,NULL,NULL);
INSERT INTO `samples` VALUES (504,32,'2017-11-22 08:05:00',6,162,29,25.5,36.1,6.47,96.7,8.24,0.56,0.58,0.54,154.6,15,6.47,101.16,3.67,4.8,NULL,NULL);
INSERT INTO `samples` VALUES (505,33,'2017-11-22 08:40:00',6,162,29,25.4,36.2,6.58,98.3,8.24,0.52,0.53,0.49,73.02,13.8,4.04,95.29,7.14,2.23,NULL,NULL);
INSERT INTO `samples` VALUES (506,34,'2017-11-22 09:10:00',6,162,29,25.6,36.1,6.78,101.5,8.25,1.95,2.01,2.04,70.44,13.04,3.71,75.02,4.3,2.96,NULL,NULL);
INSERT INTO `samples` VALUES (507,35,'2017-11-22 09:30:00',6,162,29,26.1,35.9,6.59,99.3,8.25,0.44,0.43,0.44,71.47,11.51,3.27,43.37,1.19,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (508,36,'2017-11-22 10:15:00',6,162,29,25.7,36.1,7.17,107.5,8.28,0.6,0.69,0.7,96.24,10.22,4.33,77.62,2.96,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (509,37,'2017-11-22 10:40:00',6,162,29,25.5,35.6,6.85,102.3,8.27,0.84,1.09,0.84,74.6,11.4,5.96,331.76,14.15,4.25,NULL,NULL);
INSERT INTO `samples` VALUES (510,26,'2017-12-05 08:05:00',18,162,30,23.2,33.2,6.48,91.5,8.13,7.91,7.71,7.79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (511,27,'2017-12-05 08:40:00',18,162,30,23.7,33.7,6.33,90.7,8.15,5.95,5.53,5.81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (512,28,'2017-12-05 09:00:00',18,162,30,23.2,34.5,6.46,91.8,8.16,5.79,6.95,6.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (513,29,'2017-12-05 09:20:00',18,162,30,24.2,33.3,6.33,91,8.13,1.88,1.98,2.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (514,30,'2017-12-05 09:40:00',18,162,30,24.3,35.2,8.14,97,8.19,2.09,2.07,2.02,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (515,31,'2017-12-05 10:00:00',18,162,30,24.7,35.6,6.67,98.1,8.19,0.62,0.55,0.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (516,32,'2017-12-06 08:05:00',19,162,30,23.9,35.4,6.62,95.4,8.18,0.56,0.51,0.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (517,33,'2017-12-06 08:30:00',19,162,30,24.2,35.6,6.6,96,8.2,0.7,0.64,0.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (518,36,'2017-12-06 09:05:00',19,162,30,24.2,35.5,6.88,100.1,8.12,1.19,1.34,1.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (519,37,'2017-12-06 09:35:00',19,162,30,24.8,35.8,6.73,99,8.2,0.7,0.75,0.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (520,26,'2017-12-19 08:13:00',3,162,31,24.5,34.4,6.47,94.4,8.08,20.1,20.7,19.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (521,27,'2017-12-19 08:35:00',3,162,31,25.1,34,6.04,88.9,8.12,7.32,7.37,7.28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (522,28,'2017-12-19 08:50:00',3,162,31,25,34.4,6.44,94.8,8.14,4.99,5.53,5.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (523,29,'2017-12-19 09:05:00',3,162,31,25.2,32.3,6.22,90.7,8.12,3.37,4.06,3.74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (524,30,'2017-12-19 09:29:00',3,162,31,25.2,34.9,6.64,98.4,8.2,1.72,1.2,1.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (525,31,'2017-12-19 09:45:00',3,162,31,25.4,35.1,6.58,98,8.18,0.69,0.65,0.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (526,32,'2017-12-20 08:05:00',3,162,31,24.5,35.4,6.71,98.6,8.31,1.11,1.46,1.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (527,33,'2017-12-20 08:30:00',3,162,31,24.4,35.3,6.75,99,8.3,0.84,0.92,1.05,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (528,34,'2017-12-20 08:55:00',3,162,31,24.5,35.3,6.74,98.9,8.28,1.67,2,1.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (529,35,'2017-12-20 09:17:00',3,162,31,24.7,35.4,6.68,98.3,8.31,0.55,0.59,0.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (530,36,'2017-12-20 09:36:00',3,162,31,24.4,35.2,6.37,93.4,8.17,0.72,0.76,0.87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (531,37,'2017-12-20 09:56:00',3,162,31,24.4,34.3,6.56,95.5,8.16,0.88,0.93,0.97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (532,26,'2018-01-09 08:07:00',23,162,32,22.4,33.4,6.71,93.3,8.12,21.1,22.1,20.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (533,27,'2018-01-09 08:35:00',23,162,32,23.2,33.8,6.61,93.9,8.12,7.95,9,8.17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (534,28,'2018-01-09 08:50:00',23,162,32,23.8,34.9,6.71,96.9,8.15,20.1,21.3,19.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (535,29,'2018-01-09 09:20:00',23,162,32,24.5,31.4,6.57,94,8.12,4.9,3.76,4.39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (536,30,'2018-01-09 09:35:00',23,162,32,25.2,35.1,8.72,99.2,8.18,2.05,1.8,1.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (537,31,'2018-01-09 09:51:00',23,162,32,25,35.1,6.7,98.9,8.18,1,0.95,0.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (538,32,'2018-01-10 07:59:00',24,162,32,23.8,34.5,6.63,95,8.17,1.93,2.08,1.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (539,33,'2018-01-10 08:25:00',24,162,32,23.9,34.8,6.87,99,8.16,1.39,1.99,1.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (540,34,'2018-01-10 08:52:00',24,162,32,24.3,34.9,6.81,98.7,8.13,2.39,2.13,2.16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (541,35,'2018-01-10 09:15:00',24,162,32,24.6,35.3,6.72,98.2,8.2,0.44,0.46,0.44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (542,36,'2018-01-10 09:45:00',24,162,32,24.7,35.1,7.11,104.1,8.1,0.86,0.8,0.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (543,37,'2018-01-10 10:10:00',24,162,32,24.5,35.2,6.67,97.3,8.1,0.57,0.56,0.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (544,26,'2018-01-23 07:55:00',8,162,33,23.3,35.2,6.53,93.4,8.08,23.5,25.2,25.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (545,27,'2018-01-23 08:21:00',8,162,33,23.4,33.8,6.26,89.1,8.13,10.1,11.3,10.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (546,28,'2018-01-23 08:35:00',8,162,33,23.9,35.2,6.76,97.7,8.15,11.1,11.3,10.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (547,29,'2018-01-23 09:00:00',8,162,33,24.4,34,6.7,97.1,8.13,7.83,8.08,7.91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (548,30,'2018-01-23 09:15:00',8,162,33,24.9,35.5,6.69,98.7,8.18,2.98,2.88,3.04,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (549,31,'2018-01-23 09:30:00',8,162,33,24.6,35.7,6.67,98.3,8.17,1.29,1.13,1.25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (550,32,'2018-01-24 08:00:00',9,162,33,24.4,35.4,6.67,99.6,8.17,1.18,1.23,1.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (551,33,'2018-01-24 08:31:00',9,162,33,24.5,35.7,6.84,100.7,8.19,1.03,1.14,1.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (552,34,'2018-01-24 08:58:00',9,162,33,24.4,35.6,6.79,99.5,8.13,3.54,3.34,3.63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (553,35,'2018-01-24 09:22:00',9,162,33,24.8,35.8,6.72,99.2,8.19,0.52,0.58,0.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (554,36,'2018-01-24 09:50:00',9,162,33,24.9,35.5,7.21,106.6,8.14,0.68,0.61,0.78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (555,37,'2018-01-24 09:55:00',9,162,33,24.8,35.3,6.68,98.5,8.13,0.97,0.83,0.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (556,26,'2018-02-06 07:55:00',21,162,34,23.7,34.9,6.63,95.9,8.11,35,33.1,33.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (557,27,'2018-02-06 08:15:00',21,162,34,23.7,34.1,6.73,97,8.11,17.7,17.3,17.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (558,28,'2018-02-06 08:33:00',21,162,34,24.2,35.2,6.66,97.5,8.11,15.4,16.5,15.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (559,29,'2018-02-06 08:49:00',21,162,34,24.2,34.3,6.8,98.6,8.14,7.51,8.33,7.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (560,30,'2018-02-06 09:10:00',21,162,34,24.8,35.4,6.72,99.6,8.18,5.79,6.3,6.17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (561,31,'2018-02-06 09:23:00',21,162,34,24.7,35.4,6.71,99.3,8.18,2.74,3.26,3.26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (562,32,'2018-02-07 08:00:00',22,162,34,24.4,34.4,6.72,98.1,8.16,1.13,1.22,1.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (563,33,'2018-02-07 08:25:00',22,162,34,24.4,35,6.82,100.1,8.16,2.39,2.05,1.77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (564,34,'2018-02-07 08:45:00',22,162,34,24.5,35.1,6.85,100.7,8.14,5.78,6.25,5.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (565,35,'2018-02-07 09:05:00',22,162,34,24.9,35.4,6.74,99.8,8.2,0.39,0.45,0.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (566,36,'2018-02-07 09:25:00',22,162,34,24.6,35.1,6.95,102.3,8.1,1.41,1.31,1.43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (567,37,'2018-02-07 09:35:00',22,162,34,25,35.1,6.68,99.1,8.13,1.41,1.44,1.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (568,26,'2018-02-20 07:54:00',5,162,35,22.5,33.6,6.68,93.5,8.08,27.7,27.2,28.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (569,27,'2018-02-20 08:20:00',5,162,35,24,33.9,6.5,93.6,8.14,9.26,10.4,9.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (570,28,'2018-02-20 08:42:00',5,162,35,23.8,34.5,6.77,97.5,8.17,7.72,8,8.48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (571,29,'2018-02-20 09:01:00',5,162,35,24.7,33.5,6.47,94,8.13,1.58,1.91,1.59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (572,30,'2018-02-20 09:14:00',5,162,35,24.9,35.4,6.88,101.4,8.18,2.55,2.49,2.66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (573,31,'2018-02-20 09:36:00',5,162,35,24.9,35.4,6.66,98.6,8.17,0.74,1.07,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (574,32,'2018-02-21 08:00:00',6,162,35,24.2,35.4,6.75,98.2,8.16,2.55,3.15,2.91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (575,33,'2018-02-21 08:30:00',6,162,35,24.2,35.3,6.88,100.3,8.17,1.52,1.61,1.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (576,34,'2018-02-21 08:56:00',6,162,35,24.5,35.7,6.72,98.6,8.13,3.24,3.19,3.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (577,35,'2018-02-21 09:15:00',6,162,35,24.7,35.8,6.79,100.1,8.18,0.53,0.46,0.45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (578,36,'2018-02-21 10:06:00',6,162,35,24.9,35.3,7.56,111.8,8.11,0.95,1.13,1.11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (579,37,'2018-02-21 10:08:00',6,162,35,25.3,35.6,6.64,98.7,8.12,0.97,1.09,1.29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (580,38,'2018-02-22 08:30:00',8,162,35,24.4,34.7,6.7,97.5,8.14,6.05,6.02,6.09,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (581,39,'2018-02-22 09:00:00',8,162,35,24.4,35.7,6.84,100,8.18,3.55,3.63,4.06,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (582,40,'2018-02-22 09:25:00',8,162,35,24.6,35.5,6.78,99.3,8.17,6.34,6.34,6.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (583,41,'2018-02-22 09:48:00',8,162,35,24.8,34.9,6.72,98.5,8.14,3,3.69,3.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (584,42,'2018-02-22 10:00:00',8,162,35,24.7,34.3,6.65,97.1,8.14,4.62,4.34,5.12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (585,43,'2018-02-22 10:21:00',8,162,35,24.7,33.1,6.55,95.02,8.14,14.6,15.9,13.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (586,44,'2018-02-23 08:05:00',9,162,35,24.3,35.7,6.87,100.5,8.18,0.68,0.73,0.73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (587,45,'2018-02-23 08:42:00',9,162,35,24.6,35.6,6.87,100.9,8.16,0.87,0.96,0.98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (588,46,'2018-02-23 09:15:00',9,162,35,24.9,35.3,6.92,102.1,8.16,1.45,1.65,1.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (589,47,'2018-02-23 09:47:00',9,162,35,24.9,35.7,6.9,101.9,8.17,1.52,1.63,1.64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (590,48,'2018-02-23 10:19:00',9,162,35,24.7,35.7,6.91,101.5,8.17,1.85,2.22,2.29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (591,49,'2018-02-23 10:40:00',9,162,35,24.9,35.6,6.9,101.7,8.2,0.6,0.63,0.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (592,13,'2017-10-05 07:10:00',15,162,36,26,34.7,5.8,87,8.1,3.05,2.57,2.6,62.2,11.64,5.22,135.62,3.56,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (593,14,'2017-10-05 07:35:00',15,162,36,26,34.6,6.19,92.6,8.07,6.71,6.81,7,57.02,12.77,7.14,444.21,5.2,2.71,NULL,NULL);
INSERT INTO `samples` VALUES (594,15,'2017-10-05 07:52:00',15,162,36,25.7,34.5,5.99,89.1,8.02,7.95,7.79,7.83,55.52,11.76,6.59,446.73,5.82,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (595,16,'2017-10-05 08:13:00',15,162,36,25.7,34.6,6.61,98.4,8.12,10.5,10.6,10.1,67.18,12.94,5.57,146.18,5.93,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (596,17,'2017-10-05 08:25:00',15,162,36,25.9,34.6,6.85,102.2,8.15,7.56,8.04,8.11,61.1,11.56,4.78,197.74,5.71,3.09,NULL,NULL);
INSERT INTO `samples` VALUES (597,18,'2017-10-05 08:38:00',15,162,36,26.3,34.2,6.71,100.6,8.13,3.64,3.48,3.13,63.45,11.94,5.38,328.14,4.03,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (598,7,'2017-10-04 08:20:00',14,162,36,27.6,34,5.54,84.9,8.04,10.1,10.3,10.6,57.25,10.89,8.62,445.48,2.93,2.88,NULL,NULL);
INSERT INTO `samples` VALUES (599,8,'2017-10-04 08:40:00',14,162,36,27.8,33.8,5.64,86.7,8.03,4.04,4.14,4.08,126.79,11.86,10.95,332.7,7.59,11.59,NULL,NULL);
INSERT INTO `samples` VALUES (600,9,'2017-10-04 09:00:00',14,162,36,29.3,33.7,5.67,87.7,8.05,3.29,4.3,4.79,78.79,10.8,7.7,477.59,19.84,4.53,NULL,NULL);
INSERT INTO `samples` VALUES (601,10,'2017-10-04 09:25:00',14,162,36,28.1,34.5,6.46,100.1,8.18,2.24,2.65,2.42,94.06,10.65,5.29,214.25,1.41,5.88,NULL,NULL);
INSERT INTO `samples` VALUES (602,11,'2017-10-04 09:42:00',14,162,36,28.4,34.6,6.52,101.4,8.14,1.51,1.94,1.55,57.29,10.54,4.77,106.36,1.3,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (603,12,'2017-10-04 10:10:00',14,162,36,27.9,34.6,6.81,105.3,8.15,1.02,1.43,1.23,130.79,49.42,10.58,122.52,4.88,7.73,NULL,NULL);
INSERT INTO `samples` VALUES (604,19,'2017-10-06 07:56:00',17,162,36,25.3,33.7,6.32,93.2,8.1,37.2,37.9,40.5,62.75,13.4,10.82,506.63,4.92,5.47,NULL,NULL);
INSERT INTO `samples` VALUES (605,21,'2017-10-06 08:40:00',17,162,36,26.4,34.1,6.64,99.9,8.16,2.65,1.82,2.26,61.83,13.19,7.48,334.06,8.24,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (606,22,'2017-10-06 09:15:00',17,162,36,27,34.6,6.6,100.9,8.19,0.65,0.65,0.61,82.52,32.54,7.61,83.75,2.72,3.06,NULL,NULL);
INSERT INTO `samples` VALUES (607,23,'2017-10-06 09:35:00',17,162,36,26.9,33.4,6.81,103,8.16,3.36,2.7,3.04,130.02,17.79,15.76,934.61,85.88,5.29,NULL,NULL);
INSERT INTO `samples` VALUES (608,24,'2017-10-06 09:55:00',17,162,36,26.4,33.7,6.62,99.5,8.11,14,13.6,12.8,113.87,17.09,15.46,691.32,70.33,3.69,NULL,NULL);
INSERT INTO `samples` VALUES (609,25,'2017-10-06 10:15:00',17,162,36,27.9,34.7,7.24,112.1,8.33,3.94,4.63,4.45,71.99,12.35,6.59,179.47,9.28,3.04,NULL,NULL);
INSERT INTO `samples` VALUES (610,1,'2017-10-03 08:14:00',14,162,36,27,33.7,6.59,101,8.14,2.33,2.48,2.51,117.08,13.06,10.7,608.57,37.65,7.1,NULL,NULL);
INSERT INTO `samples` VALUES (611,2,'2017-10-03 08:40:00',14,162,36,26.8,32.4,6.29,94.6,8.15,3.15,3.46,5.79,240.05,33.8,17.82,1292.44,151.01,7.55,NULL,NULL);
INSERT INTO `samples` VALUES (612,3,'2017-10-03 08:58:00',14,162,36,27.1,34.2,6.41,97.8,8.11,3.05,3.22,3.39,65.16,9.21,6.69,160.43,5.79,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (613,4,'2017-10-03 09:16:00',14,162,36,27.9,34,6.49,100,8.19,0.5,0.79,0.67,82.29,9.52,8.52,561.15,26.42,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (614,5,'2017-10-03 09:36:00',14,162,36,28,33.3,6.59,101.3,8.19,5.65,6.58,6,222.01,21.54,13.88,966.95,116.77,12.57,NULL,NULL);
INSERT INTO `samples` VALUES (615,6,'2017-10-03 09:52:00',14,162,36,27.6,33.4,6.52,99.8,8.2,0.5,0.5,0.49,118.54,35.86,12.56,759.61,24.31,3.49,NULL,NULL);
INSERT INTO `samples` VALUES (616,13,'2017-10-26 07:01:00',6,162,37,26,34.7,5.78,86.6,7.96,6.06,6.52,6.32,62.2,11.44,6.41,179.14,8.25,5.33,NULL,NULL);
INSERT INTO `samples` VALUES (617,14,'2017-10-26 07:31:00',6,162,37,26.7,34.5,6.25,94.7,8.01,4.72,4.81,4.73,57.52,10.53,6.58,389.13,7.07,5.6,NULL,NULL);
INSERT INTO `samples` VALUES (618,15,'2017-10-26 07:51:00',6,162,37,26.8,34.5,5.45,82.7,7.96,5.43,5.34,4.99,95.68,33.36,9.81,462.27,12.06,9.19,NULL,NULL);
INSERT INTO `samples` VALUES (619,16,'2017-10-26 08:14:00',6,162,37,26.8,34.8,6.37,96.9,8.06,10.5,9.99,10.8,57.12,10.71,5.48,92.69,2.73,4.34,NULL,NULL);
INSERT INTO `samples` VALUES (620,17,'2017-10-26 08:40:00',6,162,37,26.9,34.7,6.47,98.5,8.05,20,21.6,21.5,81.02,9.57,6.01,156.8,16.19,6.35,NULL,NULL);
INSERT INTO `samples` VALUES (621,18,'2017-10-26 09:05:00',6,162,37,27,34.8,6.67,101.8,8.07,4.89,4.96,5.1,54.79,8.68,5.47,170.7,6.95,4.81,NULL,NULL);
INSERT INTO `samples` VALUES (622,7,'2017-10-25 08:22:00',5,162,37,26.7,34.7,6.58,99.6,8.06,6.63,7.11,8.14,70.75,8.84,8.44,238.57,5.71,8.87,NULL,NULL);
INSERT INTO `samples` VALUES (623,8,'2017-10-25 08:47:00',5,162,37,26.7,34.1,6.5,98.2,8.07,19.2,19.1,19.4,58.71,12.74,10.17,323,6.05,4.7,NULL,NULL);
INSERT INTO `samples` VALUES (624,9,'2017-10-25 09:10:00',5,162,37,26.8,34.2,6.39,96.7,8.07,15,15.9,15.2,62.91,12.07,9.77,374.04,8.58,5.67,NULL,NULL);
INSERT INTO `samples` VALUES (625,10,'2017-10-25 09:35:00',5,162,37,27.2,34.7,6.65,101.6,8.14,13,13.8,13.6,66.6,11.08,5.5,166.71,6.18,8.82,NULL,NULL);
INSERT INTO `samples` VALUES (626,11,'2017-10-25 09:55:00',5,162,37,27.9,34.4,6.6,100.5,8.09,11.7,11.1,11.3,76.52,10.37,6.89,186.47,11.5,6.68,NULL,NULL);
INSERT INTO `samples` VALUES (627,12,'2017-10-25 10:15:00',5,162,37,27.1,34.6,6.59,100.5,8.1,1.47,1.63,1.82,68.2,10.77,5.73,167.63,8.2,6.8,NULL,NULL);
INSERT INTO `samples` VALUES (628,19,'2017-10-27 08:05:00',8,162,37,25.4,33,6.58,96.9,8.11,156,164,158,77.7,11.15,9.43,566.29,11.71,5.94,NULL,NULL);
INSERT INTO `samples` VALUES (629,21,'2017-10-27 08:45:00',8,162,37,26.4,34.8,6.83,103.3,8.17,3.72,3.28,3.43,59.56,10.02,5.39,139.43,11.28,5.21,NULL,NULL);
INSERT INTO `samples` VALUES (630,22,'2017-10-27 09:20:00',8,162,37,27,35,6.79,104.1,8.18,1.22,1.28,1.33,56.93,10.66,4.14,65.74,5,5.39,NULL,NULL);
INSERT INTO `samples` VALUES (631,23,'2017-10-27 09:53:00',8,162,37,26.7,34.8,6.99,106.6,8.21,2.91,2.6,2.37,66.92,9.65,7.06,151.85,12.13,7.41,NULL,NULL);
INSERT INTO `samples` VALUES (632,24,'2017-10-27 10:23:00',8,162,37,25.9,34.3,6.84,102.6,8.13,26.6,27,26.1,117.88,20,15.9,561.32,99.59,6.73,NULL,NULL);
INSERT INTO `samples` VALUES (633,25,'2017-10-27 10:46:00',8,162,37,27.4,35,6.83,105.1,8.23,11.6,10.8,11.7,65.88,14.04,5.5,90.95,9.04,16.17,NULL,NULL);
INSERT INTO `samples` VALUES (634,1,'2017-10-24 08:24:00',5,162,37,26.3,33.5,6.31,94.8,8.1,17.5,16.2,16.5,78.71,13.59,12.43,205.27,21.68,8.31,NULL,NULL);
INSERT INTO `samples` VALUES (635,2,'2017-10-24 08:50:00',5,162,37,26.5,33.3,6.34,96.3,8.15,14.5,15.6,15.3,96.55,15.13,13.43,225.39,31.19,10.59,NULL,NULL);
INSERT INTO `samples` VALUES (636,3,'2017-10-24 09:13:00',5,162,37,26.7,33.2,6.6,99.5,8.16,5.48,5.43,5.47,75.27,13.8,11.1,271.88,20.39,12.39,NULL,NULL);
INSERT INTO `samples` VALUES (637,4,'2017-10-24 09:35:00',5,162,37,27,33.6,6.57,99.8,8.18,1.81,1.78,1.66,78.25,13.63,8.82,378.58,33.97,2.51,NULL,NULL);
INSERT INTO `samples` VALUES (638,5,'2017-10-24 09:57:00',5,162,37,26.9,33.2,6.68,101.1,8.17,9.88,9.97,9.81,113.85,16.36,11.69,510.19,33.41,27.77,NULL,NULL);
INSERT INTO `samples` VALUES (639,6,'2017-10-24 10:20:00',5,162,37,26.9,33.1,6.67,100.9,8.19,6.2,5.87,7.69,82,12.9,10.54,419.96,17.75,12.76,NULL,NULL);
INSERT INTO `samples` VALUES (640,13,'2017-11-16 07:11:00',28,162,38,23.8,34.8,5.99,86.6,8.1,3.64,3.22,3.61,69.53,13.16,5.16,163.32,3.34,3.93,NULL,NULL);
INSERT INTO `samples` VALUES (641,14,'2017-11-16 07:35:00',28,162,38,23.8,35.1,6.33,91.5,8.12,2.15,2.24,2.28,66.06,8.29,4.02,238.64,3.77,5.06,NULL,NULL);
INSERT INTO `samples` VALUES (642,15,'2017-11-16 07:50:00',28,162,38,24,35,5.83,84.5,8.07,3.02,2.29,2.52,88.47,16.1,5.8,271.72,5,8.5,NULL,NULL);
INSERT INTO `samples` VALUES (643,16,'2017-11-16 08:10:00',28,162,38,23.5,35,6.73,96.9,8.15,5.61,5.61,5.71,64.83,8.73,3.33,167.71,1.52,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (644,17,'2017-11-16 08:27:00',28,162,38,24.2,34.9,7.03,102.2,8.17,5.63,5.55,5.81,68.06,8.43,3.81,201.46,2.86,4.28,NULL,NULL);
INSERT INTO `samples` VALUES (645,18,'2017-11-16 08:45:00',28,162,38,25,34.7,6.75,99.4,8.14,1.53,1.52,1.86,73.9,8.24,4.06,410.79,4.66,4.3,NULL,NULL);
INSERT INTO `samples` VALUES (646,7,'2017-11-15 08:10:00',27,162,38,25.9,35.2,6.46,96.7,8.11,4.31,4.89,4.68,82.31,12.56,6.42,167.92,7.3,3.52,NULL,NULL);
INSERT INTO `samples` VALUES (647,8,'2017-11-15 08:35:00',27,162,38,26,34.5,6.37,95.2,8.11,3.16,3.65,3.84,69.66,14.8,8.35,404.32,5.66,7.51,NULL,NULL);
INSERT INTO `samples` VALUES (648,9,'2017-11-15 08:55:00',27,162,38,26.2,34.6,6.3,94.6,8.11,2.39,2.61,2.47,106.61,15.24,9.01,668.97,48.19,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (649,10,'2017-11-15 09:15:00',27,162,38,26.7,34.7,6.71,101.6,8.19,1.27,1.66,1.36,74.56,11.53,3.36,163.97,1.36,4.79,NULL,NULL);
INSERT INTO `samples` VALUES (650,11,'2017-11-15 09:40:00',27,162,38,26.5,35,6.74,102,8.15,2.41,2.04,2,66.74,10.96,2.8,116.28,1.83,4.51,NULL,NULL);
INSERT INTO `samples` VALUES (651,12,'2017-11-15 10:05:00',27,162,38,25.5,35,6.62,98.4,8.09,1.34,1.32,1.55,100.76,18.58,8.01,158.06,5.29,8.18,NULL,NULL);
INSERT INTO `samples` VALUES (652,19,'2017-11-17 07:58:00',29,162,38,24.3,30.6,6.39,90.9,8.15,20.9,21.1,21.5,78.84,13.74,7.08,394.16,4.57,15.58,NULL,NULL);
INSERT INTO `samples` VALUES (653,21,'2017-11-17 08:40:00',29,162,38,25.7,34.4,6.71,99.7,8.15,1.35,1.73,1.67,66.51,13.88,5.59,329.25,7.75,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (654,22,'2017-11-17 09:15:00',29,162,38,26,35,6.66,100.2,8.19,0.65,0.65,0.69,64.87,14.7,4.11,71.94,2.55,3.42,NULL,NULL);
INSERT INTO `samples` VALUES (655,23,'2017-11-17 09:50:00',29,162,38,26.3,34.1,6.86,103.1,8.16,2.77,2.66,2.27,121.18,16.65,12.13,758.32,66.44,4.98,NULL,NULL);
INSERT INTO `samples` VALUES (656,24,'2017-11-17 10:15:00',29,162,38,25.3,34,6.81,100.5,8.16,17.3,16.7,17.2,114.57,17.52,13.53,638.78,66.12,4.23,NULL,NULL);
INSERT INTO `samples` VALUES (657,25,'2017-11-17 10:38:00',29,162,38,26.4,35,7.09,107.2,8.28,7.27,6.83,6.9,68.25,9.13,5.13,109.15,2.56,4.22,NULL,NULL);
INSERT INTO `samples` VALUES (658,1,'2017-11-14 08:16:00',26,162,38,26,34.9,6.71,100.8,8.16,1.15,1.08,1.2,77.52,12.09,8.87,281.77,14.03,5.81,NULL,NULL);
INSERT INTO `samples` VALUES (659,2,'2017-11-14 08:45:00',26,162,38,25.9,32.2,6.77,99.7,8.17,8.73,8.62,9.81,333.52,22.41,21.19,1810.78,285.64,6.65,NULL,NULL);
INSERT INTO `samples` VALUES (660,3,'2017-11-14 09:10:00',26,162,38,26.1,34.8,6.73,101,8.18,2.84,2.7,2.83,83.64,10.24,5.56,173.51,3.59,22.11,NULL,NULL);
INSERT INTO `samples` VALUES (661,4,'2017-11-14 09:29:00',26,162,38,26.5,34.5,6.61,99.7,8.17,2.87,2.68,2.36,83.32,15.46,7.75,429.83,16.46,8.98,NULL,NULL);
INSERT INTO `samples` VALUES (662,5,'2017-11-14 09:49:00',26,162,38,27.1,34.1,6.44,98,8.18,4.21,3.5,3.36,135.89,13.91,7.95,732.93,81.56,6.03,NULL,NULL);
INSERT INTO `samples` VALUES (663,6,'2017-11-14 10:04:00',26,162,38,27.2,34.5,6.5,99.2,8.2,1.27,1.2,1.15,75.01,15.35,6.02,403.4,12.17,4.38,NULL,NULL);
INSERT INTO `samples` VALUES (664,13,'2017-12-07 07:08:00',20,162,39,23.3,34.8,6.27,89.5,8.09,6.48,6.56,6.95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (665,14,'2017-12-07 07:30:00',20,162,39,23.7,34.9,6.38,91.6,8.13,3.59,3.59,3.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (666,15,'2017-12-07 07:47:00',20,162,39,24.2,35,6.07,87.9,8.11,3.25,3.39,3.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (667,16,'2017-12-07 08:04:00',20,162,39,24.6,34.9,6.55,95.5,8.14,5.75,5.63,5.97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (668,17,'2017-12-07 08:20:00',20,162,39,24.6,35,6.67,97.2,8.18,4.39,4.58,4.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (669,18,'2017-12-07 08:33:00',20,162,39,24.3,34.8,6.8,98.8,8.18,2.02,2.12,1.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (670,7,'2017-12-06 08:15:00',19,162,39,24.5,35,6.72,97.8,8.17,3.48,3.54,3.67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (671,8,'2017-12-06 08:35:00',19,162,39,23.8,34.6,6.67,95.7,8.15,11.9,12,12.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (672,9,'2017-12-06 08:55:00',19,162,39,23.6,34.3,6.59,94.2,8.13,15.9,16.9,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (673,10,'2017-12-06 09:20:00',19,162,39,24.6,34.6,6.98,101.5,8.21,1.78,2.26,2.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (674,11,'2017-12-06 09:45:00',19,162,39,24.7,34.9,6.95,101.6,8.19,1.86,1.69,1.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (675,12,'2017-12-06 10:08:00',19,162,39,24.6,34.8,6.96,101.4,8.16,1.39,1.41,1.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (676,19,'2017-12-08 07:50:00',21,162,39,23.2,34.5,6.78,96.2,8.14,23.9,28.5,25.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (677,21,'2017-12-08 08:40:00',21,162,39,24.7,35.1,6.95,101.6,8.18,1.41,1.71,1.54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (678,22,'2017-12-08 09:15:00',21,162,39,25.1,35.1,6.91,101.8,8.18,0.59,0.69,0.64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (679,23,'2017-12-08 09:45:00',21,162,39,25.4,35.1,7.03,104,8.19,1.17,1.6,1.45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (680,24,'2017-12-08 10:10:00',21,162,39,24.7,34.6,6.99,102,8.19,14.6,15.8,15.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (681,25,'2017-12-08 10:35:00',21,162,39,25.5,34.8,6.96,102.9,8.22,21.5,20.6,21.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (682,1,'2017-12-05 08:06:00',18,162,39,24.2,35.2,6.89,100,8.17,1.04,1.14,1.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (683,2,'2017-12-05 08:31:00',18,162,39,23.5,34.5,6.96,99.3,8.17,31.1,31.8,32.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (684,3,'2017-12-05 08:52:00',18,162,39,23.5,34,7.01,99.8,8.17,10.1,9.83,10.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (685,4,'2017-12-05 09:13:00',18,162,39,24.5,34.5,6.82,99,8.18,6.41,6.78,6.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (686,5,'2017-12-05 09:33:00',18,162,39,25.5,34.4,6.84,101,8.2,2.13,2.1,2.27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (687,6,'2017-12-05 09:51:00',18,162,39,25.1,33.8,6.83,100,8.23,1.55,1.57,1.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (688,13,'2017-12-21 08:21:00',4,162,40,23.5,34.7,6.46,92.8,8.03,9.07,10.4,10.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (689,14,'2017-12-21 08:45:00',4,162,40,24.1,34.8,5.91,85.9,8.02,2.35,2.23,2.65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (690,15,'2017-12-21 09:04:00',4,162,40,24.2,34.6,5.87,85.4,8,4.36,4.27,4.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (691,16,'2017-12-21 09:24:00',4,162,40,24.2,34.6,6.63,96.5,8.11,3.66,3.56,3.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (692,17,'2017-12-21 09:43:00',4,162,40,24.7,34.6,6.63,97.4,8.09,50,50.4,49.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (693,18,'2017-12-21 09:58:00',4,162,40,25,35.1,6.24,92.3,8.11,13.3,13.1,13.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (694,7,'2017-12-20 08:20:00',3,162,40,24,35.4,6.68,97.2,8.15,5.42,5.43,5.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (695,8,'2017-12-20 08:41:00',3,162,40,24.1,34.9,6.59,96,8.14,7.31,6.83,6.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (696,9,'2017-12-20 09:05:00',3,162,40,23.9,34.5,6.61,95.5,8.13,10.3,10,9.88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (697,10,'2017-12-20 09:35:00',3,162,40,24.4,34.9,6.85,100.2,8.17,5.09,5.19,5.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (698,11,'2017-12-20 09:55:00',3,162,40,24.6,35,6.77,99.5,8.13,4.96,4.59,4.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (699,12,'2017-12-20 10:15:00',3,162,40,24.6,35,6.35,93.2,8.08,2.48,2.89,2.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (700,19,'2017-12-22 07:59:00',6,162,40,22.6,28.5,7.04,96.1,8.17,21.2,21.3,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (701,21,'2017-12-22 08:42:00',6,162,40,23.4,33.9,6.98,99.5,8.17,7.26,7.37,7.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (702,22,'2017-12-22 09:17:00',6,162,40,24,35.1,6.93,100.7,8.19,4.55,4.11,4.26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (703,23,'2017-12-22 09:50:00',6,162,40,24.5,34.7,6.95,101.8,8.18,3.12,3.49,3.53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (704,24,'2017-12-22 10:18:00',6,162,40,23.4,33.9,6.93,99.1,8.14,36.4,35.9,36.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (705,25,'2017-12-22 10:43:00',6,162,40,24.3,33.7,7.18,103.9,8.19,16.5,17,16.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (706,1,'2017-12-19 08:21:00',3,162,40,24.8,35.2,6.72,98.9,8.16,1.15,1.28,1.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (707,2,'2017-12-19 08:55:00',3,162,40,24.8,34,6.74,98.7,8.16,24.5,23.5,22.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (708,3,'2017-12-19 09:21:00',3,162,40,24.9,34.9,6.68,98.4,8.18,26.2,25.5,24.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (709,4,'2017-12-19 09:46:00',3,162,40,25.1,34.8,6.46,95.4,8.18,5.57,5,4.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (710,5,'2017-12-19 10:10:00',3,162,40,25.2,34.2,6.64,97.9,8.2,2.03,1.96,2.13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (711,6,'2017-12-19 10:30:00',3,162,40,24.9,33.1,6.74,98.5,8.21,1.35,1.15,1.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (712,13,'2018-01-11 07:14:00',25,162,41,23.1,34.3,5.88,83.4,8.06,2.66,2.53,2.48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (713,14,'2018-01-11 07:34:00',25,162,41,24.1,34.6,6.47,93.4,8.1,1.1,0.9,0.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (714,15,'2018-01-11 07:46:00',25,162,41,23.9,34.4,6.29,90.3,8.09,1.14,1.09,1.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (715,16,'2018-01-11 08:00:00',25,162,41,24.2,34.6,6.65,96,8.14,2.09,2.16,2.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (716,17,'2018-01-11 08:12:00',25,162,41,24.2,34.8,6.85,99.3,8.14,4.19,5.02,3.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (717,18,'2018-01-11 08:30:00',25,162,41,24.4,34.6,6.82,99,8.13,1.53,1.67,1.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (718,7,'2018-01-10 08:27:00',24,162,41,23.9,34.7,5.85,84.1,8.07,1.46,1.68,1.59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (719,8,'2018-01-10 08:45:00',24,162,41,24,34.1,6.1,87.7,8.07,2.38,3,2.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (720,9,'2018-01-10 09:07:00',24,162,41,24,34.2,6.03,86.6,8.06,2.57,2.34,2.49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (721,10,'2018-01-10 09:33:00',24,162,41,24.3,34.2,7.03,101.5,8.14,1.24,1.41,1.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (722,11,'2018-01-10 09:52:00',24,162,41,25,34.5,7.11,104,8.15,1.02,1.03,1.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (723,12,'2018-01-10 10:19:00',24,162,41,24.5,34.5,7.38,107.2,8.13,2.92,2.37,2.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (724,19,'2018-01-12 07:55:00',26,162,41,22.8,33.1,6.82,95.4,8.07,59.6,65.3,68.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (725,21,'2018-01-12 08:45:00',26,162,41,24,34.3,7.04,101.3,8.16,3.27,4.44,3.68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (726,22,'2018-01-12 09:15:00',26,162,41,24.5,34.7,7.02,102.4,8.17,1.04,1,1.17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (727,23,'2018-01-12 09:40:00',26,162,41,24.8,33.9,7.04,102.6,8.16,2.83,2.41,2.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (728,24,'2018-01-12 10:10:00',26,162,41,24.4,33.8,6.99,101.1,8.15,16.8,17.7,18.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (729,25,'2018-01-12 10:30:00',26,162,41,25.4,34.5,7.2,106.3,8.23,7.79,9.47,8.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (730,1,'2018-01-09 08:15:00',23,162,41,23.6,34,6.95,99.3,8.1,0.6,0.55,0.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (731,2,'2018-01-09 08:47:00',23,162,41,24.1,33.9,6.8,97.6,8.16,2.32,2.6,2.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (732,3,'2018-01-09 09:09:00',23,162,41,23.7,34.5,6.97,99.8,8.15,11.9,12.7,12.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (733,4,'2018-01-09 09:26:00',23,162,41,24.8,34.2,6.64,96.8,8.17,1.38,1.32,1.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (734,5,'2018-01-09 09:46:00',23,162,41,25,34.4,6.74,98.7,8.18,7.32,8.02,7.62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (735,6,'2018-01-09 10:03:00',23,162,41,24.9,33.5,6.99,101.6,8.2,1.98,2.06,2.02,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (736,13,'2018-02-01 07:07:00',16,162,42,24.2,34.9,6.27,91.6,8.08,20.8,21.2,22.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (737,14,'2018-02-01 07:27:00',16,162,42,25.2,34.2,6.44,95.4,8.08,2.96,2.92,3.25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (738,15,'2018-02-01 07:44:00',16,162,42,25.1,34.5,6.26,92.5,8.07,4.57,4.34,4.23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (739,16,'2018-02-01 07:58:00',16,162,42,24.6,34.7,6.54,95.9,8.12,5.91,6.2,5.72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (740,17,'2018-02-01 08:12:00',16,162,42,25,34.8,6.59,97.5,8.1,7.42,8.99,7.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (741,18,'2018-02-01 08:28:00',16,162,42,24.9,34.7,6.53,96.4,8.14,2.65,2.47,2.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (742,7,'2018-01-31 08:07:00',15,162,42,23.8,33.4,6.38,91.8,8.09,10.5,11.4,11.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (743,8,'2018-01-31 08:30:00',15,162,42,23.8,33.8,6.31,91,8.09,11.8,12.2,12.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (744,9,'2018-01-31 08:50:00',15,162,42,24,34.1,6.6,95.7,8.13,4.15,4.83,4.74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (745,10,'2018-01-31 09:12:00',15,162,42,24.1,34.1,6.94,100.6,8.18,3.79,4.31,4.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (746,11,'2018-01-31 09:32:00',15,162,42,24.7,34.7,6.85,100.7,8.15,3.35,3.17,4.45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (747,12,'2018-01-31 09:55:00',15,162,42,24.6,34.6,6.92,101.5,8.07,4.46,5.28,4.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (748,19,'2018-02-02 07:55:00',17,162,42,23.5,34.5,6.74,96.7,8.13,13,12.8,13.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (749,21,'2018-02-02 08:35:00',17,162,42,24,34.8,6.91,100,8.19,6.82,7.13,6.98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (750,22,'2018-02-02 09:00:00',17,162,42,24,34.8,6.93,100.5,8.18,0.9,0.95,0.82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (751,23,'2018-02-02 09:30:00',17,162,42,24.2,34.3,6.91,100.3,8.16,1.88,1.8,1.73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (752,24,'2018-02-02 09:55:00',17,162,42,24.3,34.2,6.83,99.3,8.13,11.6,12.2,11.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (753,25,'2018-02-02 10:10:00',17,162,42,24.6,33.8,6.87,99.9,8.13,8.81,8.56,8.29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (754,1,'2018-01-30 08:15:00',14,162,42,23.7,34.5,6.89,99.8,8.18,2.32,1.75,1.88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (755,2,'2018-01-30 08:48:00',14,162,42,23.8,33.3,6.97,100.2,8.17,19.7,21.3,20.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (756,3,'2018-01-30 09:10:00',14,162,42,23.9,34.6,6.84,99.5,8.18,6.4,6.76,6.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (757,4,'2018-01-30 09:39:00',14,162,42,24.1,34.4,6.83,99.3,8.19,9.22,7.24,9.87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (758,5,'2018-01-30 10:03:00',14,162,42,24.1,33,6.89,99.6,8.2,1.42,1.54,1.64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (759,6,'2018-01-30 10:25:00',14,162,42,24.2,33.2,6.84,99,8.2,2.16,2.19,2.22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (760,13,'2018-02-22 07:15:00',7,162,43,24,34,5.85,84.2,8.02,6.68,6.73,6.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (761,14,'2018-02-22 07:45:00',7,162,43,24.7,34.5,6.19,90.2,8.07,3.13,3.06,3.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (762,15,'2018-02-22 08:02:00',7,162,43,24.6,34.4,5.9,85.7,8.03,3.28,3.19,3.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (763,16,'2018-02-22 08:20:00',7,162,43,24.4,34.6,6.61,96,8.1,3.87,4.09,3.97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (764,17,'2018-02-22 08:36:00',7,162,43,24.6,34.7,6.82,99.3,8.1,10.7,10.2,10.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (765,18,'2018-02-22 08:52:00',7,162,43,24.6,34.7,6.51,94.9,8.11,3.96,4.73,4.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (766,7,'2018-02-21 08:10:00',6,162,43,23.7,34.2,6.11,87.3,8.04,1.23,1.2,0.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (767,8,'2018-02-21 08:38:00',6,162,43,23.8,34.1,6.49,93.1,8.07,3.39,4.58,3.19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (768,9,'2018-02-21 09:00:00',6,162,43,24.3,33.9,6.28,90.8,8.08,5.88,5.36,5.01,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (769,10,'2018-02-21 09:25:00',6,162,43,24.4,33.4,7.1,102.5,8.19,3.12,3.53,4.67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (770,11,'2018-02-21 09:41:00',6,162,43,24.7,34.5,7.08,103.4,8.15,2.62,2.89,2.76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (771,12,'2018-02-21 10:00:00',6,162,43,24.7,34.6,6.92,101.3,8.07,2.33,2.64,2.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (772,19,'2018-02-23 07:50:00',8,162,43,23.3,33.9,6.43,91.3,8.08,24.4,28.1,24.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (773,21,'2018-02-23 08:40:00',8,162,43,24,34.4,7.06,101.7,8.15,2.28,2.39,2.51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (774,22,'2018-02-23 09:05:00',8,162,43,24.3,34.7,7,101.7,8.16,0.52,0.55,0.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (775,23,'2018-02-23 09:35:00',8,162,43,24.5,33.7,7.16,103.7,8.14,0.97,0.81,0.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (776,24,'2018-02-23 10:00:00',8,162,43,24.3,33.8,6.84,98.9,8.09,9.8,9.95,10.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (777,25,'2018-02-23 10:20:00',8,162,43,25.1,34,7.17,105.1,8.15,4.65,5.13,5.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (778,1,'2018-02-20 08:20:00',6,162,43,23.5,34.2,7.01,100.2,8.08,1.19,1.27,1.27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (779,2,'2018-02-20 08:42:00',6,162,43,24,34.1,6.65,95.8,8.13,2.45,2.74,2.81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (780,3,'2018-02-20 09:05:00',6,162,43,23.3,32.8,7.09,100.2,8.15,2.9,2.97,2.95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (781,4,'2018-02-20 09:23:00',6,162,43,24.3,34.2,6.9,99.9,8.17,1.75,1.92,1.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (782,5,'2018-02-20 09:41:00',6,162,43,24.7,34.3,6.85,99.8,8.18,1.73,1.76,1.76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (783,6,'2018-02-20 09:58:00',6,162,43,24.4,32.5,6.99,100.4,8.19,1.25,1.33,1.39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lab_id` int(10) unsigned NOT NULL,
  `session_number` int(11) NOT NULL,
  `start_date` date NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `natural` (`lab_id`,`session_number`),
  UNIQUE KEY `session` (`session_id`,`lab_id`,`session_number`) COMMENT 'cover the surrogate key and natural key',
  UNIQUE KEY `session_date` (`lab_id`,`start_date`) COMMENT 'No lab should not have two sessions that start on the same date.',
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,1,'2016-06-14');
INSERT INTO `sessions` VALUES (2,1,2,'2016-06-28');
INSERT INTO `sessions` VALUES (3,1,3,'2016-07-12');
INSERT INTO `sessions` VALUES (4,1,4,'2016-07-26');
INSERT INTO `sessions` VALUES (5,1,5,'2016-08-10');
INSERT INTO `sessions` VALUES (6,1,6,'2016-08-23');
INSERT INTO `sessions` VALUES (7,1,7,'2016-09-06');
INSERT INTO `sessions` VALUES (8,1,8,'2016-09-20');
INSERT INTO `sessions` VALUES (9,1,9,'2016-10-04');
INSERT INTO `sessions` VALUES (10,1,10,'2016-10-18');
INSERT INTO `sessions` VALUES (11,1,11,'2016-11-01');
INSERT INTO `sessions` VALUES (12,1,12,'2016-11-15');
INSERT INTO `sessions` VALUES (13,1,13,'2016-11-29');
INSERT INTO `sessions` VALUES (14,1,14,'2016-12-13');
INSERT INTO `sessions` VALUES (15,1,15,'2017-01-03');
INSERT INTO `sessions` VALUES (16,1,16,'2017-01-24');
INSERT INTO `sessions` VALUES (17,1,17,'2017-02-14');
INSERT INTO `sessions` VALUES (18,1,18,'2017-03-07');
INSERT INTO `sessions` VALUES (19,1,19,'2017-03-28');
INSERT INTO `sessions` VALUES (20,1,20,'2017-04-18');
INSERT INTO `sessions` VALUES (21,1,21,'2017-05-10');
INSERT INTO `sessions` VALUES (22,1,22,'2017-05-30');
INSERT INTO `sessions` VALUES (23,1,23,'2017-06-20');
INSERT INTO `sessions` VALUES (24,1,24,'2017-07-11');
INSERT INTO `sessions` VALUES (25,1,25,'2017-08-01');
INSERT INTO `sessions` VALUES (26,1,26,'2017-08-22');
INSERT INTO `sessions` VALUES (27,1,27,'2017-09-12');
INSERT INTO `sessions` VALUES (28,2,1,'2017-11-07');
INSERT INTO `sessions` VALUES (29,2,2,'2017-11-21');
INSERT INTO `sessions` VALUES (30,2,3,'2017-12-05');
INSERT INTO `sessions` VALUES (31,2,4,'2017-12-19');
INSERT INTO `sessions` VALUES (32,2,5,'2018-01-09');
INSERT INTO `sessions` VALUES (33,2,6,'2018-01-23');
INSERT INTO `sessions` VALUES (34,2,7,'2018-02-06');
INSERT INTO `sessions` VALUES (35,2,8,'2018-02-20');
INSERT INTO `sessions` VALUES (36,1,28,'2017-10-03');
INSERT INTO `sessions` VALUES (37,1,29,'2017-10-24');
INSERT INTO `sessions` VALUES (38,1,30,'2017-11-14');
INSERT INTO `sessions` VALUES (39,1,31,'2017-12-05');
INSERT INTO `sessions` VALUES (40,1,32,'2017-12-19');
INSERT INTO `sessions` VALUES (41,1,33,'2018-01-09');
INSERT INTO `sessions` VALUES (42,1,34,'2018-01-30');
INSERT INTO `sessions` VALUES (43,1,35,'2018-02-20');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `site_and_date_to_sample_id_lookup`
--

DROP TABLE IF EXISTS `site_and_date_to_sample_id_lookup`;
/*!50001 DROP VIEW IF EXISTS `site_and_date_to_sample_id_lookup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `site_and_date_to_sample_id_lookup` AS SELECT 
 1 AS `site_and_date`,
 1 AS `sample_id`,
 1 AS `hui_abv`,
 1 AS `day`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'surrogate',
  `hui_code` int(11) NOT NULL,
  `hui_abv` char(3) NOT NULL COMMENT 'ex: RAB',
  `storet_code` char(6) DEFAULT NULL,
  `long_name` varchar(32) NOT NULL COMMENT 'ex: Airport Beach',
  `lab_id` int(10) unsigned NOT NULL,
  `team_id` int(10) unsigned NOT NULL,
  `default_sample_day` int(11) NOT NULL COMMENT 'Day in the session that this site is typically sampled.  1st day is calibration verification.',
  `default_session_order` int(11) NOT NULL COMMENT 'Ordinality of this site in a session.',
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Some sites are tested, then removed.',
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE KEY `hui_code` (`hui_code`),
  UNIQUE KEY `hui_abv` (`hui_abv`),
  UNIQUE KEY `storet_code` (`storet_code`),
  KEY `sites_ibfk_1` (`lab_id`),
  KEY `sites_ibfk_2` (`team_id`),
  CONSTRAINT `sites_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`) ON UPDATE CASCADE,
  CONSTRAINT `sites_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,2006,'RNS','000723','Napili',1,1,2,1,20.994222,-156.667417,1,NULL);
INSERT INTO `sites` VALUES (2,2010,'RPO','000724','Pohaku',1,1,2,2,20.967083,-156.68139,1,NULL);
INSERT INTO `sites` VALUES (3,2071,'RKS',NULL,'Kaanapali Shores',1,1,2,3,20.949331,-156.691124,1,NULL);
INSERT INTO `sites` VALUES (4,2017,'RAB','000695','Airport Beach',1,1,2,4,20.936669,-156.69278,1,NULL);
INSERT INTO `sites` VALUES (5,2020,'RCB','000693','Canoe Beach',1,1,2,5,20.910347,-156.689382,1,NULL);
INSERT INTO `sites` VALUES (6,2021,'RWA','000678','Wahikuli',1,1,2,6,20.904476,-156.685931,1,NULL);
INSERT INTO `sites` VALUES (7,2022,'PFF',NULL,'505 Front Street',1,2,3,7,20.86732,-156.67605,1,NULL);
INSERT INTO `sites` VALUES (8,2023,'PLH',NULL,'Lindsey Hale',1,2,3,8,20.86485,-156.67374,1,NULL);
INSERT INTO `sites` VALUES (9,2024,'PLT','000726','Lahaina Town',1,2,3,9,20.86356,-156.67297,1,NULL);
INSERT INTO `sites` VALUES (10,2025,'PPU',NULL,'Makila Point',1,2,3,10,20.859233,-156.669442,1,NULL);
INSERT INTO `sites` VALUES (11,2072,'OLP',NULL,'Launiupoko',1,2,3,11,20.84236,-156.653035,1,NULL);
INSERT INTO `sites` VALUES (12,2027,'OSF','000663','Olowalu Shore Front',1,2,3,12,20.80916,-156.62289,1,NULL);
INSERT INTO `sites` VALUES (13,2073,'OPM',NULL,'Peter Martin Hale',1,3,4,13,20.808444,-156.619697,1,NULL);
INSERT INTO `sites` VALUES (14,2028,'OCO',NULL,'Camp Olowalu',1,3,4,14,20.80986,-156.61369,1,NULL);
INSERT INTO `sites` VALUES (15,2029,'OMM',NULL,'Mile Marker 14',1,3,4,15,20.80915,-156.60661,1,NULL);
INSERT INTO `sites` VALUES (16,2032,'OUB','000698','Ukumehame Beach',1,3,4,16,20.79448,-156.58142,1,NULL);
INSERT INTO `sites` VALUES (17,2033,'OPB','000728','Papalaua',1,3,4,17,20.793809,-156.575211,1,NULL);
INSERT INTO `sites` VALUES (18,2034,'OPP',NULL,'Papalaua Pali',1,3,4,18,20.792747,-156.567326,1,NULL);
INSERT INTO `sites` VALUES (19,2001,'RHL','000707','Honolua',1,4,5,19,21.013058,-156.63834,1,NULL);
INSERT INTO `sites` VALUES (20,2002,'RMO','000721','Mokuleia',1,4,5,19,21.011352,-156.64227,0,NULL);
INSERT INTO `sites` VALUES (21,2003,'RFN','000674','DT Beach (Fleming N)',1,4,5,20,21.005,-156.65084,1,NULL);
INSERT INTO `sites` VALUES (22,2004,'RON','000722','Oneloa',1,4,5,21,21.004056,-156.65894,1,NULL);
INSERT INTO `sites` VALUES (23,2005,'RFS','000650','Kapalua Bay (Fleming S)',1,4,5,22,20.998924,-156.666746,1,NULL);
INSERT INTO `sites` VALUES (24,2008,'RKO','000692','Ka\'opala',1,4,5,23,20.982074,-156.673398,1,NULL);
INSERT INTO `sites` VALUES (25,2074,'RKV',NULL,'Kahana Village',1,4,5,24,20.976561,-156.678,1,NULL);
INSERT INTO `sites` VALUES (26,9000,'KWP','000713','Waipuilani Park',2,5,1,1,20.755056,-156.459602,1,NULL);
INSERT INTO `sites` VALUES (27,9001,'KKS','000676','Kihei South (Lipoa)',2,5,1,2,20.747334,-156.457881,1,NULL);
INSERT INTO `sites` VALUES (28,9002,'KKP','000679','Kalama Park',2,5,1,3,20.730973,-156.45372,1,NULL);
INSERT INTO `sites` VALUES (29,9003,'KCP','000703','Cove Park',2,5,1,4,20.727434,-156.450077,1,NULL);
INSERT INTO `sites` VALUES (30,9004,'KKO','000681','Kamaole Beach I',2,5,1,5,20.721985,-156.448183,1,NULL);
INSERT INTO `sites` VALUES (31,9005,'KKT','000683','Kamaole Beach III',2,5,1,6,20.712908,-156.446596,1,NULL);
INSERT INTO `sites` VALUES (32,9006,'MML',NULL,'Makena Landing',2,6,2,7,20.653913,-156.441174,1,NULL);
INSERT INTO `sites` VALUES (33,9007,'MMB',NULL,'Maluaka Beach',2,6,2,8,20.645598,-156.443859,1,NULL);
INSERT INTO `sites` VALUES (34,9008,'MON',NULL,'Oneuli',2,6,2,9,20.639866,-156.447406,1,NULL);
INSERT INTO `sites` VALUES (35,9009,'MBS',NULL,'Makena Beach Shoreline',2,6,2,10,20.63061,-156.446183,1,NULL);
INSERT INTO `sites` VALUES (36,9010,'MAN',NULL,'Ahihi North',2,6,2,11,20.618366,-156.437572,1,NULL);
INSERT INTO `sites` VALUES (37,9011,'MAS',NULL,'Ahihi South',2,6,2,12,20.765132,-156.459344,1,NULL);
INSERT INTO `sites` VALUES (38,9012,'NHP','000687','Haycraft Park',2,7,3,13,20.796414,-156.503198,1,NULL);
INSERT INTO `sites` VALUES (39,9013,'NKP','000711','Kealia Pond',2,7,3,14,20.794936,-156.485587,1,NULL);
INSERT INTO `sites` VALUES (40,9014,'NSB',NULL,'Sugar Beach',2,7,3,15,20.784204,-156.466463,1,NULL);
INSERT INTO `sites` VALUES (41,9015,'NKC','000671','Kihei Canoe Club',2,7,3,16,20.781403,-156.463176,1,NULL);
INSERT INTO `sites` VALUES (42,9016,'NMP','000702','Mai Poina \'Oe Ia\'u',2,7,3,17,20.774894,-156.460776,1,NULL);
INSERT INTO `sites` VALUES (43,9017,'NKN',NULL,'Kalepolepo North',2,7,3,18,20.765132,-156.459344,1,NULL);
INSERT INTO `sites` VALUES (44,9018,'WKD','000704','Kilohana Dr',2,8,4,19,20.702214,-156.445921,1,NULL);
INSERT INTO `sites` VALUES (45,9019,'WKB','000685','Keawekapu Beach',2,8,4,20,20.695939,-156.444632,1,NULL);
INSERT INTO `sites` VALUES (46,9020,'WUL','000686','Ulua Beach',2,8,4,21,20.69112,-156.444201,1,NULL);
INSERT INTO `sites` VALUES (47,9021,'WWA','000691','Wailea Beach',2,8,4,22,20.68156,-156.443524,1,NULL);
INSERT INTO `sites` VALUES (48,9022,'WPL','000715','Palauea',2,8,4,23,20.669565,-156.442907,1,NULL);
INSERT INTO `sites` VALUES (49,9023,'WPO','000716','Poolenalena (Chang\'s Beach)',2,8,4,24,20.66339,-156.441968,1,NULL);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_members` (
  `team_id` int(10) unsigned NOT NULL,
  `worker_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`team_id`,`worker_id`),
  KEY `team_members_ibfk_2` (`worker_id`),
  CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE,
  CONSTRAINT `team_members_ibfk_2` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`worker_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,2);
INSERT INTO `team_members` VALUES (1,3);
INSERT INTO `team_members` VALUES (2,4);
INSERT INTO `team_members` VALUES (1,5);
INSERT INTO `team_members` VALUES (4,5);
INSERT INTO `team_members` VALUES (3,6);
INSERT INTO `team_members` VALUES (4,7);
INSERT INTO `team_members` VALUES (4,8);
INSERT INTO `team_members` VALUES (2,9);
INSERT INTO `team_members` VALUES (3,9);
INSERT INTO `team_members` VALUES (5,18);
INSERT INTO `team_members` VALUES (5,19);
INSERT INTO `team_members` VALUES (5,20);
INSERT INTO `team_members` VALUES (5,21);
INSERT INTO `team_members` VALUES (5,22);
INSERT INTO `team_members` VALUES (6,23);
INSERT INTO `team_members` VALUES (6,24);
INSERT INTO `team_members` VALUES (6,25);
INSERT INTO `team_members` VALUES (6,26);
INSERT INTO `team_members` VALUES (2,27);
INSERT INTO `team_members` VALUES (1,28);
INSERT INTO `team_members` VALUES (7,29);
INSERT INTO `team_members` VALUES (7,30);
INSERT INTO `team_members` VALUES (7,31);
INSERT INTO `team_members` VALUES (8,32);
INSERT INTO `team_members` VALUES (8,33);
INSERT INTO `team_members` VALUES (8,34);
INSERT INTO `team_members` VALUES (6,35);
INSERT INTO `team_members` VALUES (6,36);
INSERT INTO `team_members` VALUES (4,37);
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_code` varchar(16) NOT NULL,
  `long_name` varchar(32) NOT NULL,
  `lab_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_code` (`team_code`),
  KEY `teams_ibfk_1` (`lab_id`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'R2RS','Ridge-to-Reef South',1);
INSERT INTO `teams` VALUES (2,'Polanui','Polanui',1);
INSERT INTO `teams` VALUES (3,'Olowalu','Olowalu',1);
INSERT INTO `teams` VALUES (4,'NR2R','North Ridge-to-Reef',1);
INSERT INTO `teams` VALUES (5,'Kamaole','Kamaole',2);
INSERT INTO `teams` VALUES (6,'Makena','Makena',2);
INSERT INTO `teams` VALUES (7,'North Keihi','North Keihi',2);
INSERT INTO `teams` VALUES (8,'Wailea','Wailea',2);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker_roles`
--

DROP TABLE IF EXISTS `worker_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker_roles` (
  `worker_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `worker_roles` (`worker_id`,`role_id`),
  KEY `role` (`role_id`),
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `worker` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`worker_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker_roles`
--

LOCK TABLES `worker_roles` WRITE;
/*!40000 ALTER TABLE `worker_roles` DISABLE KEYS */;
INSERT INTO `worker_roles` VALUES (1,1);
INSERT INTO `worker_roles` VALUES (1,2);
/*!40000 ALTER TABLE `worker_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `worker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `initials` varchar(3) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(64) DEFAULT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `salt` char(32) DEFAULT NULL COMMENT 'salt and hash are used to generate and check the password',
  `hash` char(128) DEFAULT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'root','root','99',1,'root@root.com',NULL,'1cde9aa1d680a208887e359a300f0205','d58ef56cba0559ee822b2b385458eb51dabd372b16822dc15a5a9a00df3a940a7fdbaa176563bf55c837a280d78041bfd9d06c376962244de325a8bde33915bf');
INSERT INTO `workers` VALUES (2,'Ty','Freiberg','TF',1,'tf@gmail.com','808-523-4567',NULL,NULL);
INSERT INTO `workers` VALUES (3,'Marie','Shroeder','MS',1,'ms@yahoo.com','808-345-6789',NULL,NULL);
INSERT INTO `workers` VALUES (4,'Terry','Shroeder','TS',1,'ms@yahoo.com','808-345-6789',NULL,NULL);
INSERT INTO `workers` VALUES (5,'Rich','Bailey','RB',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (6,'Cathy','Maxwell','CM',1,'cathy@ubermax.com','808-456-1234',NULL,NULL);
INSERT INTO `workers` VALUES (7,'Jim','Maxwell','JM',1,'jim@ubermax.com','808-456-1234',NULL,NULL);
INSERT INTO `workers` VALUES (8,'Nell','Woods','NW',1,NULL,'808-567-3452',NULL,NULL);
INSERT INTO `workers` VALUES (9,'Dana','Reed','DR',1,'dreedyah@yahoo.com','720-567-3412',NULL,NULL);
INSERT INTO `workers` VALUES (10,'Ananda','Stone','AS',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (11,'George','Burnette','GB',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (12,'Bruce','Banker','BB',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (13,'Michelle','Griffoul','MG',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (14,'Richard','Noponen','RN',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (15,'Layne','Otomo','LO',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (16,'Mitch','Brown','MB',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (17,'Lyn','Hutchings','LH',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (18,'Mitch','Brown','MB',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (19,'Audrey','Quinn','AQ',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (20,'Donna','Howard','DH',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (21,'Scott','Graves','SG',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (22,'Steve','Paselk','SP',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (23,'Sheryl','Fries','SF',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (24,'Alfred','Wolf','AW',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (25,'Tina','Wildberger','TW',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (26,'Lory','Lowder','LL',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (27,'Kit','Harris','KH',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (28,'Brenda','Jarmakani','BJ',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (29,'Kathy','Thunholm','KT',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (30,'Bill','Chase','BC',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (31,'Nathanial','Green','NG',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (32,'Harry','Hecht','HH',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (33,'Deborah','Mader','DM',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (34,'Judy','Jarvey','JJ',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (35,'Sofia','de laSota','SD',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (36,'Jeep','Dunning','JD',1,NULL,NULL,NULL,NULL);
INSERT INTO `workers` VALUES (37,'CiCi','Hehemann','CH',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `base_sample_report`
--

/*!50001 DROP VIEW IF EXISTS `base_sample_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `base_sample_report` AS select `sess`.`lab_id` AS `lab_id`,`sam`.`sample_id` AS `sample_id`,concat(`site`.`hui_abv`,convert(date_format(`sam`.`date_and_time`,'%y%m%d') using latin1)) AS `sampleID`,`site`.`long_name` AS `long_name`,`site`.`hui_abv` AS `hui_abv`,`sess`.`session_number` AS `session_number`,date_format(`sam`.`date_and_time`,'%c/%e/%y') AS `day`,date_format(`sam`.`date_and_time`,'%H:%i') AS `time`,replace(format(`sam`.`temperature`,1),' ','') AS `temperature`,replace(format(`sam`.`salinity`,1),' ','') AS `salinity`,replace(format(`sam`.`dissolved_oxygen`,2),' ','') AS `dissolved_oxygen`,replace(format(`sam`.`dissolved_oxygen_pct`,2),' ','') AS `dissolved_oxygen_pct`,replace(format(`sam`.`ph`,2),' ','') AS `ph`,replace(format(`sam`.`turbidity_1`,2),' ','') AS `turbidity_1`,replace(format(`sam`.`turbidity_2`,2),' ','') AS `turbidity_2`,replace(format(`sam`.`turbidity_3`,2),' ','') AS `turbidity_3`,replace(format(round((((`sam`.`turbidity_1` + `sam`.`turbidity_2`) + `sam`.`turbidity_3`) / 3.0),2),2),' ','') AS `avg_turbidity`,replace(format(`sam`.`total_nitrogen`,2),' ','') AS `total_nitrogen`,replace(format(`sam`.`total_phosphorus`,2),' ','') AS `total_phosphorus`,replace(format(`sam`.`phosphate`,2),' ','') AS `phosphate`,replace(format(`sam`.`silicate`,2),',','') AS `silicate`,replace(format(`sam`.`nitrates`,2),',','') AS `nitrates`,replace(format(`sam`.`ammonia`,2),' ','') AS `ammonia`,replace(format(`site`.`lat`,6),' ','') AS `lat`,replace(format(`site`.`lon`,6),' ','') AS `lon` from ((`samples` `sam` join `sites` `site`) join `sessions` `sess`) where ((`sess`.`session_id` = `sam`.`session_id`) and (`sam`.`site_id` = `site`.`site_id`)) order by `sess`.`lab_id`,`sam`.`date_and_time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `diff_report`
--

/*!50001 DROP VIEW IF EXISTS `diff_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `diff_report` AS select `base_sample_report`.`lab_id` AS `lab_id`,`base_sample_report`.`sampleID` AS `sampleID`,`base_sample_report`.`long_name` AS `long_name`,`base_sample_report`.`hui_abv` AS `hui_abv`,`base_sample_report`.`session_number` AS `session_number`,`base_sample_report`.`day` AS `day`,`base_sample_report`.`time` AS `time`,`base_sample_report`.`temperature` AS `temperature`,`base_sample_report`.`salinity` AS `salinity`,`base_sample_report`.`dissolved_oxygen` AS `dissolved_oxygen`,`base_sample_report`.`dissolved_oxygen_pct` AS `dissolved_oxygen_pct`,`base_sample_report`.`ph` AS `ph`,`base_sample_report`.`turbidity_1` AS `turbidity_1`,`base_sample_report`.`turbidity_2` AS `turbidity_2`,`base_sample_report`.`turbidity_3` AS `turbidity_3`,`base_sample_report`.`avg_turbidity` AS `avg_turbidity`,`base_sample_report`.`total_nitrogen` AS `total_nitrogen`,`base_sample_report`.`total_phosphorus` AS `total_phosphorus`,`base_sample_report`.`phosphate` AS `phosphate`,`base_sample_report`.`silicate` AS `silicate`,`base_sample_report`.`nitrates` AS `nitrates`,`base_sample_report`.`ammonia` AS `ammonia`,`base_sample_report`.`lat` AS `lat`,`base_sample_report`.`lon` AS `lon` from `base_sample_report` order by `base_sample_report`.`lab_id`,`base_sample_report`.`session_number`,`base_sample_report`.`day`,`base_sample_report`.`time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `known_sites`
--

/*!50001 DROP VIEW IF EXISTS `known_sites`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `known_sites` AS select `site`.`hui_abv` AS `hui_abv`,`site`.`long_name` AS `long_name` from `sites` `site` order by `site`.`hui_abv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lab_sessions_overview`
--

/*!50001 DROP VIEW IF EXISTS `lab_sessions_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lab_sessions_overview` AS select `l`.`lab_id` AS `lab_id`,`l`.`lab_code` AS `lab_code`,`l`.`long_name` AS `long_name`,`s`.`session_number` AS `session_number`,`s`.`start_date` AS `start_date` from (`labs` `l` join `sessions` `s`) where (`l`.`lab_id` = `s`.`lab_id`) order by `l`.`lab_code`,`s`.`session_number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `max_session_numbers_for_labs`
--

/*!50001 DROP VIEW IF EXISTS `max_session_numbers_for_labs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `max_session_numbers_for_labs` AS select `s`.`lab_id` AS `lab_id`,`l`.`lab_code` AS `lab_code`,`l`.`long_name` AS `long_name`,max(`s`.`session_number`) AS `max_session_number` from (`sessions` `s` join `labs` `l`) where (`s`.`lab_id` = `l`.`lab_id`) group by `s`.`lab_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `site_and_date_to_sample_id_lookup`
--

/*!50001 DROP VIEW IF EXISTS `site_and_date_to_sample_id_lookup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `site_and_date_to_sample_id_lookup` AS select concat(`site`.`hui_abv`,convert(date_format(`sam`.`date_and_time`,'%y%m%d') using latin1)) AS `site_and_date`,`sam`.`sample_id` AS `sample_id`,`site`.`hui_abv` AS `hui_abv`,date_format(`sam`.`date_and_time`,'%c/%e/%y') AS `day` from (`samples` `sam` join `sites` `site`) where (`sam`.`site_id` = `site`.`site_id`) order by `site`.`hui_abv`,`sam`.`date_and_time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20 19:56:59
