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
 1 AS `lon`,
 1 AS `comments`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `comments_diff_report`
--

DROP TABLE IF EXISTS `comments_diff_report`;
/*!50001 DROP VIEW IF EXISTS `comments_diff_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `comments_diff_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `day`,
 1 AS `time`,
 1 AS `comments`*/;
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
-- Temporary view structure for view `insitu_diff_report`
--

DROP TABLE IF EXISTS `insitu_diff_report`;
/*!50001 DROP VIEW IF EXISTS `insitu_diff_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `insitu_diff_report` AS SELECT 
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
 1 AS `avg_turbidity`*/;
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
 1 AS `short_name`,
 1 AS `long_name`,
 1 AS `session_number`,
 1 AS `first_sample_day`*/;
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
  `short_name` varchar(16) NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`lab_id`),
  UNIQUE KEY `lab_code` (`lab_code`),
  UNIQUE KEY `long_name` (`long_name`),
  UNIQUE KEY `short_name_UNIQUE` (`short_name`),
  KEY `labs` (`lab_id`,`lab_code`) COMMENT 'covers the surrogate id and natural lab code'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs`
--

LOCK TABLES `labs` WRITE;
/*!40000 ALTER TABLE `labs` DISABLE KEYS */;
INSERT INTO `labs` VALUES (1,'LLHS','Lahainaluna High School','West Maui','Lahainaluna Road');
INSERT INTO `labs` VALUES (2,'NMS','National Marine Sanctuary','South Maui','South Kihei Road');
/*!40000 ALTER TABLE `labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(65) NOT NULL COMMENT 'who was logged in and using the app, but may have messages before user logs in.',
  `logging_level` varchar(16) NOT NULL COMMENT 'correspond to bootstrap values: primary, secondary, success, info, warning, danger',
  `title` varchar(64) NOT NULL,
  `json_text` varchar(512) DEFAULT NULL COMMENT 'array of strings to further describe the logged information',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'2018-11-11 22:06:34','root root','success','root root logged in successfully','[]');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
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
-- Table structure for table `measurement_precision`
--

DROP TABLE IF EXISTS `measurement_precision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement_precision` (
  `measurement_precision_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `measurement_name` varchar(64) DEFAULT NULL,
  `number_of_decimals` int(11) DEFAULT NULL,
  PRIMARY KEY (`measurement_precision_id`),
  UNIQUE KEY `name_idx` (`measurement_name`),
  KEY `measurement_precision_idx` (`measurement_precision_id`,`measurement_name`) COMMENT 'cover index'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement_precision`
--

LOCK TABLES `measurement_precision` WRITE;
/*!40000 ALTER TABLE `measurement_precision` DISABLE KEYS */;
INSERT INTO `measurement_precision` VALUES (1,'temperature',1);
INSERT INTO `measurement_precision` VALUES (2,'salinity',1);
INSERT INTO `measurement_precision` VALUES (3,'dissolved_oxygen',2);
INSERT INTO `measurement_precision` VALUES (4,'dissolved_oxygen_pct',1);
INSERT INTO `measurement_precision` VALUES (5,'ph',2);
INSERT INTO `measurement_precision` VALUES (6,'turbidity_1',2);
INSERT INTO `measurement_precision` VALUES (7,'turbidity_2',2);
INSERT INTO `measurement_precision` VALUES (8,'turbidity_3',2);
INSERT INTO `measurement_precision` VALUES (9,'total_nitrogen',2);
INSERT INTO `measurement_precision` VALUES (10,'total_phosphorus',2);
INSERT INTO `measurement_precision` VALUES (11,'phosphate',2);
INSERT INTO `measurement_precision` VALUES (12,'silicate',2);
INSERT INTO `measurement_precision` VALUES (13,'nitrates',2);
INSERT INTO `measurement_precision` VALUES (14,'ammonia',2);
/*!40000 ALTER TABLE `measurement_precision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nutrient_diff_report`
--

DROP TABLE IF EXISTS `nutrient_diff_report`;
/*!50001 DROP VIEW IF EXISTS `nutrient_diff_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nutrient_diff_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `day`,
 1 AS `time`,
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
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
INSERT INTO `qa_issue_samples` VALUES (18,514,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (19,536,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (20,794,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (21,5,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (22,34,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (23,35,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (24,41,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (25,67,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (26,70,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (27,76,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (28,77,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (29,82,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (30,90,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (31,92,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (32,94,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (33,97,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (34,99,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (35,105,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (36,150,'nitrates','NNN','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (37,178,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (38,180,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (39,181,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (40,184,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (41,185,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (42,187,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (43,189,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (44,190,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (45,191,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (46,192,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (47,197,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (48,204,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (49,209,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (50,212,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (51,231,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (52,236,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (53,238,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (54,239,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (55,241,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (56,1070,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (57,1056,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (58,1050,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (59,1052,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (60,1060,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (61,1076,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (62,1124,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (63,1132,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (64,524,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (65,529,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (66,599,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (67,601,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (68,613,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (69,639,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (70,648,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (71,658,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (72,668,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (73,670,'ammonia','NH4','below detectable limit');
/*!40000 ALTER TABLE `qa_issue_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qa_issues_base_report`
--

DROP TABLE IF EXISTS `qa_issues_base_report`;
/*!50001 DROP VIEW IF EXISTS `qa_issues_base_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `qa_issues_base_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sample_id`,
 1 AS `long_name`,
 1 AS `sampleID`,
 1 AS `session_number`,
 1 AS `day`,
 1 AS `time`,
 1 AS `sample_column_name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qa_issues_report`
--

DROP TABLE IF EXISTS `qa_issues_report`;
/*!50001 DROP VIEW IF EXISTS `qa_issues_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `qa_issues_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `session_number`,
 1 AS `long_name`,
 1 AS `day`,
 1 AS `time`,
 1 AS `sample_column_name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

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
  `nitrate_last_run_date` date DEFAULT NULL COMMENT 'Date of the last, or oldest, processing run of the nitrate testing.',
  `comments` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`sample_id`),
  UNIQUE KEY `site_id` (`site_id`,`date_and_time`),
  UNIQUE KEY `samples` (`sample_id`,`site_id`,`date_and_time`) COMMENT 'covers surrogate and natural for performance',
  KEY `qa_code` (`qa_code`),
  KEY `session` (`session_id`),
  CONSTRAINT `qa_code` FOREIGN KEY (`qa_code`) REFERENCES `qa_codes` (`qa_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `site` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1260 DEFAULT CHARSET=latin1;
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
INSERT INTO `samples` VALUES (490,28,'2017-11-07 09:27:00',19,162,28,27,34.8,6.26,95.2,8.22,8.88,8.32,8.21,96.36,11.27,7.87,279.65,28.38,4.63,NULL,'Turtles visible in the water');
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
INSERT INTO `samples` VALUES (504,32,'2017-11-22 08:05:00',6,162,29,25.5,36.1,6.47,96.7,8.24,0.56,0.58,0.54,154.6,15,6.47,101.16,3.67,4.8,NULL,'Lots of kayakers, but not within 100ft');
INSERT INTO `samples` VALUES (505,33,'2017-11-22 08:40:00',6,162,29,25.4,36.2,6.58,98.3,8.24,0.52,0.53,0.49,73.02,13.8,4.04,95.29,7.14,2.23,NULL,NULL);
INSERT INTO `samples` VALUES (506,34,'2017-11-22 09:10:00',6,162,29,25.6,36.1,6.78,101.5,8.25,1.95,2.01,2.04,70.44,13.04,3.71,75.02,4.3,2.96,NULL,NULL);
INSERT INTO `samples` VALUES (507,35,'2017-11-22 09:30:00',6,162,29,26.1,35.9,6.59,99.3,8.25,0.44,0.43,0.44,71.47,11.51,3.27,43.37,1.19,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (508,36,'2017-11-22 10:15:00',6,162,29,25.7,36.1,7.17,107.5,8.28,0.6,0.69,0.7,96.24,10.22,4.33,77.62,2.96,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (509,37,'2017-11-22 10:40:00',6,162,29,25.5,35.6,6.85,102.3,8.27,0.84,1.09,0.84,74.6,11.4,5.96,331.76,14.15,4.25,NULL,NULL);
INSERT INTO `samples` VALUES (510,26,'2017-12-05 08:05:00',18,162,30,23.2,33.2,6.48,91.5,8.13,7.91,7.71,7.79,200.83,18.51,13.3,1062.32,124.29,8.22,NULL,'Occasional sprinkle');
INSERT INTO `samples` VALUES (511,27,'2017-12-05 08:40:00',18,162,30,23.7,33.7,6.33,90.7,8.15,5.95,5.53,5.81,157.45,12.52,8.91,625.32,74.5,7.35,NULL,NULL);
INSERT INTO `samples` VALUES (512,28,'2017-12-05 09:00:00',18,162,30,23.2,34.5,6.46,91.8,8.16,5.79,6.95,6.32,154.31,10.83,9.42,546.73,90.52,9.42,NULL,'Very windy at the parking lot (4-5), not so much at the beach (3)');
INSERT INTO `samples` VALUES (513,29,'2017-12-05 09:20:00',18,162,30,24.2,33.3,6.33,91,8.13,1.88,1.98,2.2,462.15,34.41,32.32,1802.91,382.71,46.67,NULL,'Windchop water');
INSERT INTO `samples` VALUES (514,30,'2017-12-05 09:40:00',18,162,30,24.3,35.2,NULL,97,8.19,2.09,2.07,2.02,98.97,12.38,6.43,451.44,35.61,2.98,NULL,'DO value deleted');
INSERT INTO `samples` VALUES (515,31,'2017-12-05 10:00:00',18,162,30,24.7,35.6,6.67,98.1,8.19,0.62,0.55,0.57,81.27,11.45,5.08,237.67,17.77,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (516,32,'2017-12-06 08:05:00',19,162,30,23.9,35.4,6.62,95.4,8.18,0.56,0.51,0.52,110.74,11.61,5.56,157.7,14.35,4.18,NULL,NULL);
INSERT INTO `samples` VALUES (517,33,'2017-12-06 08:30:00',19,162,30,24.2,35.6,6.6,96,8.2,0.7,0.64,0.7,76.45,11.97,4.05,100.72,7.75,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (518,36,'2017-12-06 09:05:00',19,162,30,24.2,35.5,6.88,100.1,8.12,1.19,1.34,1.14,163.36,17.73,6.07,255.56,5.08,7.24,NULL,NULL);
INSERT INTO `samples` VALUES (519,37,'2017-12-06 09:35:00',19,162,30,24.8,35.8,6.73,99,8.2,0.7,0.75,0.7,88.17,10.41,4.51,184.94,11.69,3.47,NULL,NULL);
INSERT INTO `samples` VALUES (520,26,'2017-12-19 08:13:00',3,162,31,24.5,34.4,6.47,94.4,8.08,20.1,20.7,19.8,108.77,22.16,11.94,459.97,25.84,3.46,NULL,'Campfire');
INSERT INTO `samples` VALUES (521,27,'2017-12-19 08:35:00',3,162,31,25.1,34,6.04,88.9,8.12,7.32,7.37,7.28,139.36,17.9,9.56,526.78,67.18,3.11,NULL,NULL);
INSERT INTO `samples` VALUES (522,28,'2017-12-19 08:50:00',3,162,31,25,34.4,6.44,94.8,8.14,4.99,5.53,5.33,165.91,18.29,10.28,427.28,83.34,6.2,NULL,NULL);
INSERT INTO `samples` VALUES (523,29,'2017-12-19 09:05:00',3,162,31,25.2,32.3,6.22,90.7,8.12,3.37,4.06,3.74,482.92,39.02,32.36,1695.9,396.48,45.73,NULL,NULL);
INSERT INTO `samples` VALUES (524,30,'2017-12-19 09:29:00',3,162,31,25.2,34.9,6.64,98.4,8.2,1.72,1.2,1.38,114.71,16.37,6.37,266.78,37.67,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (525,31,'2017-12-19 09:45:00',3,162,31,25.4,35.1,6.58,98,8.18,0.69,0.65,0.92,104.72,15.83,6.96,252.55,32.43,1.93,NULL,NULL);
INSERT INTO `samples` VALUES (526,32,'2017-12-20 08:05:00',3,162,31,24.5,35.4,6.71,98.6,8.31,1.11,1.46,1.14,84.11,14.36,5.87,139.76,9.85,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (527,33,'2017-12-20 08:30:00',3,162,31,24.4,35.3,6.75,99,8.3,0.84,0.92,1.05,90.58,13.91,4.64,101.1,10.2,1,NULL,NULL);
INSERT INTO `samples` VALUES (528,34,'2017-12-20 08:55:00',3,162,31,24.5,35.3,6.74,98.9,8.28,1.67,2,1.85,78.25,12.81,4.75,124.09,9.37,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (529,35,'2017-12-20 09:17:00',3,162,31,24.7,35.4,6.68,98.3,8.31,0.55,0.59,0.55,81.19,12.96,4.89,63.69,6.72,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (530,36,'2017-12-20 09:36:00',3,162,31,24.4,35.2,6.37,93.4,8.17,0.72,0.76,0.87,95.27,14.43,6.59,183.88,10.48,4.06,NULL,NULL);
INSERT INTO `samples` VALUES (531,37,'2017-12-20 09:56:00',3,162,31,24.4,34.3,6.56,95.5,8.16,0.88,0.93,0.97,121.59,20,14.69,1032.62,55.08,3.48,NULL,NULL);
INSERT INTO `samples` VALUES (532,26,'2018-01-09 08:07:00',23,162,32,22.4,33.4,6.71,93.3,8.12,21.1,22.1,20.1,103.57,21.14,11.59,671.52,28.21,5.82,NULL,NULL);
INSERT INTO `samples` VALUES (533,27,'2018-01-09 08:35:00',23,162,32,23.2,33.8,6.61,93.9,8.12,7.95,9,8.17,125.28,15.69,8.96,617.53,43.47,4.55,NULL,NULL);
INSERT INTO `samples` VALUES (534,28,'2018-01-09 08:50:00',23,162,32,23.8,34.9,6.71,96.9,8.15,20.1,21.3,19.3,123.51,15.25,8.53,307.46,37.72,5.08,NULL,'2 dogs playing near collection site');
INSERT INTO `samples` VALUES (535,29,'2018-01-09 09:20:00',23,162,32,24.5,31.4,6.57,94,8.12,4.9,3.76,4.39,608.09,37.32,33.36,2149.95,506.57,12.62,NULL,NULL);
INSERT INTO `samples` VALUES (536,30,'2018-01-09 09:35:00',23,162,32,25.2,35.1,NULL,99.2,8.18,2.05,1.8,1.96,103.2,14.28,5.22,282.51,21.36,2.29,NULL,'2 boats, DO value deleted');
INSERT INTO `samples` VALUES (537,31,'2018-01-09 09:51:00',23,162,32,25,35.1,6.7,98.9,8.18,1,0.95,0.94,112.47,12.8,6.43,271.41,30.92,3.89,NULL,NULL);
INSERT INTO `samples` VALUES (538,32,'2018-01-10 07:59:00',24,162,32,23.8,34.5,6.63,95,8.17,1.93,2.08,1.85,120.59,13.19,5.75,302.73,40.94,4.25,NULL,NULL);
INSERT INTO `samples` VALUES (539,33,'2018-01-10 08:25:00',24,162,32,23.9,34.8,6.87,99,8.16,1.39,1.99,1.57,166.75,14.73,7.45,297.51,74.27,3.63,NULL,NULL);
INSERT INTO `samples` VALUES (540,34,'2018-01-10 08:52:00',24,162,32,24.3,34.9,6.81,98.7,8.13,2.39,2.13,2.16,117.47,12.56,6.88,445.45,33.64,5.82,NULL,NULL);
INSERT INTO `samples` VALUES (541,35,'2018-01-10 09:15:00',24,162,32,24.6,35.3,6.72,98.2,8.2,0.44,0.46,0.44,83.5,16.04,4.58,170.45,2.55,2.34,NULL,NULL);
INSERT INTO `samples` VALUES (542,36,'2018-01-10 09:45:00',24,162,32,24.7,35.1,7.11,104.1,8.1,0.86,0.8,0.85,94.6,15.18,5.21,246.79,5.38,5.26,NULL,NULL);
INSERT INTO `samples` VALUES (543,37,'2018-01-10 10:10:00',24,162,32,24.5,35.2,6.67,97.3,8.1,0.57,0.56,0.83,86.16,14.84,6.35,174.85,8.06,5.11,NULL,NULL);
INSERT INTO `samples` VALUES (544,26,'2018-01-23 07:55:00',8,162,33,23.3,35.2,6.53,93.4,8.08,23.5,25.2,25.5,109.28,21.26,8.21,298.82,14.81,12.01,NULL,NULL);
INSERT INTO `samples` VALUES (545,27,'2018-01-23 08:21:00',8,162,33,23.4,33.8,6.26,89.1,8.13,10.1,11.3,10.5,126.45,18.2,10.4,776.15,56.94,9.93,NULL,NULL);
INSERT INTO `samples` VALUES (546,28,'2018-01-23 08:35:00',8,162,33,23.9,35.2,6.76,97.7,8.15,11.1,11.3,10.9,124.25,14.97,9.78,317.81,46.63,8.06,NULL,'Dog surfing ;)');
INSERT INTO `samples` VALUES (547,29,'2018-01-23 09:00:00',8,162,33,24.4,34,6.7,97.1,8.13,7.83,8.08,7.91,336.09,30.08,24.77,1127,261.99,15.71,NULL,NULL);
INSERT INTO `samples` VALUES (548,30,'2018-01-23 09:15:00',8,162,33,24.9,35.5,6.69,98.7,8.18,2.98,2.88,3.04,102.86,16.03,7.5,298.72,18.15,6.43,NULL,NULL);
INSERT INTO `samples` VALUES (549,31,'2018-01-23 09:30:00',8,162,33,24.6,35.7,6.67,98.3,8.17,1.29,1.13,1.25,88.42,14.2,5.63,118.16,12.49,7.44,NULL,NULL);
INSERT INTO `samples` VALUES (550,32,'2018-01-24 08:00:00',9,162,33,24.4,35.4,6.67,99.6,8.17,1.18,1.23,1.36,120.84,13.57,6,159.27,23.85,11.67,NULL,NULL);
INSERT INTO `samples` VALUES (551,33,'2018-01-24 08:31:00',9,162,33,24.5,35.7,6.84,100.7,8.19,1.03,1.14,1.18,99.98,13.06,5.15,194.26,14.7,10.92,NULL,NULL);
INSERT INTO `samples` VALUES (552,34,'2018-01-24 08:58:00',9,162,33,24.4,35.6,6.79,99.5,8.13,3.54,3.34,3.63,92.54,16.43,4.86,129.91,6.32,12.12,NULL,NULL);
INSERT INTO `samples` VALUES (553,35,'2018-01-24 09:22:00',9,162,33,24.8,35.8,6.72,99.2,8.19,0.52,0.58,0.57,87.07,12.87,4.11,101.36,2.7,9.18,NULL,NULL);
INSERT INTO `samples` VALUES (554,36,'2018-01-24 09:50:00',9,162,33,24.9,35.5,7.21,106.6,8.14,0.68,0.61,0.78,93.09,12.53,4.82,147.36,4.15,15.74,NULL,NULL);
INSERT INTO `samples` VALUES (555,37,'2018-01-24 09:55:00',9,162,33,24.8,35.3,6.68,98.5,8.13,0.97,0.83,0.96,101.14,14.99,8.7,531.65,28.28,16.27,NULL,NULL);
INSERT INTO `samples` VALUES (556,26,'2018-02-06 07:55:00',21,162,34,23.7,34.9,6.63,95.9,8.11,35,33.1,33.7,131.1,12.05,10.45,251.16,23.5,8.53,NULL,NULL);
INSERT INTO `samples` VALUES (557,27,'2018-02-06 08:15:00',21,162,34,23.7,34.1,6.73,97,8.11,17.7,17.3,17.4,154.63,14.01,12.8,518.38,66.54,6.74,NULL,NULL);
INSERT INTO `samples` VALUES (558,28,'2018-02-06 08:33:00',21,162,34,24.2,35.2,6.66,97.5,8.11,15.4,16.5,15.7,132.12,11.57,8.5,169.19,38.07,6.79,NULL,NULL);
INSERT INTO `samples` VALUES (559,29,'2018-02-06 08:49:00',21,162,34,24.2,34.3,6.8,98.6,8.14,7.51,8.33,7.92,266.39,24.63,19.4,784.37,197.31,7.7,NULL,NULL);
INSERT INTO `samples` VALUES (560,30,'2018-02-06 09:10:00',21,162,34,24.8,35.4,6.72,99.6,8.18,5.79,6.3,6.17,120.24,11.3,7.14,167.41,19.55,5,NULL,NULL);
INSERT INTO `samples` VALUES (561,31,'2018-02-06 09:23:00',21,162,34,24.7,35.4,6.71,99.3,8.18,2.74,3.26,3.26,119.11,11.1,5.92,130.62,21.13,3.13,NULL,'Very windy');
INSERT INTO `samples` VALUES (562,32,'2018-02-07 08:00:00',22,162,34,24.4,34.4,6.72,98.1,8.16,1.13,1.22,1.15,137.82,10.85,5.61,257.12,47.45,3.63,NULL,'Signs of stream runoff on land');
INSERT INTO `samples` VALUES (563,33,'2018-02-07 08:25:00',22,162,34,24.4,35,6.82,100.1,8.16,2.39,2.05,1.77,142.74,11,7.66,222.63,54.17,3.35,NULL,NULL);
INSERT INTO `samples` VALUES (564,34,'2018-02-07 08:45:00',22,162,34,24.5,35.1,6.85,100.7,8.14,5.78,6.25,5.61,107.56,9.88,6.64,306.42,22.72,3.53,NULL,NULL);
INSERT INTO `samples` VALUES (565,35,'2018-02-07 09:05:00',22,162,34,24.9,35.4,6.74,99.8,8.2,0.39,0.45,0.42,97.84,9.42,4.75,52.96,7.05,1.38,NULL,NULL);
INSERT INTO `samples` VALUES (566,36,'2018-02-07 09:25:00',22,162,34,24.6,35.1,6.95,102.3,8.1,1.41,1.31,1.43,91.34,13.46,5.74,189.24,7.93,3.54,NULL,NULL);
INSERT INTO `samples` VALUES (567,37,'2018-02-07 09:35:00',22,162,34,25,35.1,6.68,99.1,8.13,1.41,1.44,1.57,110.56,15.63,9.68,460.3,31.14,6.57,NULL,NULL);
INSERT INTO `samples` VALUES (568,26,'2018-02-20 07:54:00',5,162,35,22.5,33.6,6.68,93.5,8.08,27.7,27.2,28.3,102.19,16.02,12.48,769.91,31.07,3.74,NULL,NULL);
INSERT INTO `samples` VALUES (569,27,'2018-02-20 08:20:00',5,162,35,24,33.9,6.5,93.6,8.14,9.26,10.4,9.94,110.65,14.56,9.06,587.36,50.16,4.42,NULL,NULL);
INSERT INTO `samples` VALUES (570,28,'2018-02-20 08:42:00',5,162,35,23.8,34.5,6.77,97.5,8.17,7.72,8,8.48,92.51,15.12,7.61,350.62,34.09,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (571,29,'2018-02-20 09:01:00',5,162,35,24.7,33.5,6.47,94,8.13,1.58,1.91,1.59,322.86,27.59,21.98,1147.55,296.94,6.73,NULL,NULL);
INSERT INTO `samples` VALUES (572,30,'2018-02-20 09:14:00',5,162,35,24.9,35.4,6.88,101.4,8.18,2.55,2.49,2.66,79.81,17.5,5.14,259.39,25.09,1.25,NULL,NULL);
INSERT INTO `samples` VALUES (573,31,'2018-02-20 09:36:00',5,162,35,24.9,35.4,6.66,98.6,8.17,0.74,1.07,1,110.05,16.96,6.3,297.45,55.76,2.54,NULL,NULL);
INSERT INTO `samples` VALUES (574,32,'2018-02-21 08:00:00',6,162,35,24.2,35.4,6.75,98.2,8.16,2.55,3.15,2.91,91.87,17.88,7.14,267.44,21.07,2.29,NULL,NULL);
INSERT INTO `samples` VALUES (575,33,'2018-02-21 08:30:00',6,162,35,24.2,35.3,6.88,100.3,8.17,1.52,1.61,1.61,121.27,17.59,6.87,299.93,68.67,1.96,NULL,NULL);
INSERT INTO `samples` VALUES (576,34,'2018-02-21 08:56:00',6,162,35,24.5,35.7,6.72,98.6,8.13,3.24,3.19,3.46,70.69,12.93,4.59,159.15,9.28,2.94,NULL,NULL);
INSERT INTO `samples` VALUES (577,35,'2018-02-21 09:15:00',6,162,35,24.7,35.8,6.79,100.1,8.18,0.53,0.46,0.45,73.8,12.24,4.28,68.74,3.31,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (578,36,'2018-02-21 10:06:00',6,162,35,24.9,35.3,7.56,111.8,8.11,0.95,1.13,1.11,77.76,13.16,6.6,405.53,9.18,3.76,NULL,NULL);
INSERT INTO `samples` VALUES (579,37,'2018-02-21 10:08:00',6,162,35,25.3,35.6,6.64,98.7,8.12,0.97,1.09,1.29,83.18,12.99,7.78,319.46,15.31,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (580,38,'2018-02-22 08:30:00',8,162,35,24.4,34.7,6.7,97.5,8.14,6.05,6.02,6.09,210.91,12.9,7.42,630.72,161.75,2.48,NULL,NULL);
INSERT INTO `samples` VALUES (581,39,'2018-02-22 09:00:00',8,162,35,24.4,35.7,6.84,100,8.18,3.55,3.63,4.06,70.18,12.01,5.86,106.96,3.1,3.62,NULL,NULL);
INSERT INTO `samples` VALUES (582,40,'2018-02-22 09:25:00',8,162,35,24.6,35.5,6.78,99.3,8.17,6.34,6.34,6.92,87.06,12.34,6.54,215.83,21.53,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (583,41,'2018-02-22 09:48:00',8,162,35,24.8,34.9,6.72,98.5,8.14,3,3.69,3.55,240.51,17.56,7.48,477.13,200.69,12.5,NULL,NULL);
INSERT INTO `samples` VALUES (584,42,'2018-02-22 10:00:00',8,162,35,24.7,34.3,6.65,97.1,8.14,4.62,4.34,5.12,197.41,30.35,8.74,1015.97,162.5,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (585,43,'2018-02-22 10:21:00',8,162,35,24.7,33.1,6.55,95.02,8.14,14.6,15.9,13.4,242.92,19.61,14.73,1369.24,163.13,7.29,NULL,NULL);
INSERT INTO `samples` VALUES (586,44,'2018-02-23 08:05:00',9,162,35,24.3,35.7,6.87,100.5,8.18,0.68,0.73,0.73,70.55,16.58,5.18,120.62,12.3,2.37,NULL,NULL);
INSERT INTO `samples` VALUES (587,45,'2018-02-23 08:42:00',9,162,35,24.6,35.6,6.87,100.9,8.16,0.87,0.96,0.98,105.06,17.88,5.9,161.48,27.42,4.47,NULL,NULL);
INSERT INTO `samples` VALUES (588,46,'2018-02-23 09:15:00',9,162,35,24.9,35.3,6.92,102.1,8.16,1.45,1.65,1.58,155.78,13.6,7.05,235.38,98.54,4.75,NULL,NULL);
INSERT INTO `samples` VALUES (589,47,'2018-02-23 09:47:00',9,162,35,24.9,35.7,6.9,101.9,8.17,1.52,1.63,1.64,131.49,14.44,8.45,251.43,26.54,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (590,48,'2018-02-23 10:19:00',9,162,35,24.7,35.7,6.91,101.5,8.17,1.85,2.22,2.29,100.16,12.46,6.39,184.41,46.45,3.02,NULL,NULL);
INSERT INTO `samples` VALUES (591,49,'2018-02-23 10:40:00',9,162,35,24.9,35.6,6.9,101.7,8.2,0.6,0.63,0.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (592,26,'2018-03-06 07:56:00',20,162,36,21.4,31.9,6.83,93.3,8.09,24.7,26.3,26.2,171.07,18.85,14.73,1271.72,104.72,1.34,NULL,NULL);
INSERT INTO `samples` VALUES (593,27,'2018-03-06 08:15:00',20,162,36,23.4,32.9,6.22,87.9,8.13,7.6,7.6,7.27,178.07,17.21,12.59,1112.03,119.55,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (594,28,'2018-03-06 08:33:00',20,162,36,23.5,34.6,6.79,97.2,8.16,9.08,10.2,10.5,138.86,16.8,10.11,444.57,78.98,0.93,NULL,NULL);
INSERT INTO `samples` VALUES (595,29,'2018-03-06 08:51:00',20,162,36,24.4,33.3,6.5,93.8,8.14,2.65,3.22,3.94,399.21,32.22,25.78,1268.5,372.38,7.78,NULL,NULL);
INSERT INTO `samples` VALUES (596,30,'2018-03-06 09:10:00',20,162,36,24.8,35,6.77,99.2,8.19,0.78,0.87,1.08,117.26,15.69,7.93,322.34,36.25,1.16,NULL,NULL);
INSERT INTO `samples` VALUES (597,31,'2018-03-06 09:30:00',20,162,36,24.7,34.9,6.76,99.1,8.18,1.05,0.42,0.77,65.47,11.54,5.7,265.66,44.26,1.12,NULL,NULL);
INSERT INTO `samples` VALUES (598,32,'2018-03-07 08:13:00',21,162,36,23.7,35.1,6.71,96.7,8.16,1.51,2.07,1.89,93.33,14.97,7.83,261.18,29.15,1.12,NULL,NULL);
INSERT INTO `samples` VALUES (599,33,'2018-03-07 08:30:00',21,162,36,23.8,34.7,6.84,98.6,8.18,0.79,1.06,0.89,137.96,13.14,6.66,315.93,77.5,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (600,34,'2018-03-07 08:58:00',21,162,36,23.9,35.6,6.81,98.7,8.14,2.12,2.15,2.06,87.83,10.76,4.95,166.22,12.04,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (601,35,'2018-03-07 09:19:00',21,162,36,24.3,35.7,6.8,99.5,8.2,0.37,0.36,0.35,75.53,9.44,4.19,49.64,4.05,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (602,36,'2018-03-07 09:50:00',21,162,36,24.6,35.4,7.55,110.8,8.16,0.74,0.72,0.73,96.16,12.27,6.74,245.48,7.39,2.32,NULL,NULL);
INSERT INTO `samples` VALUES (603,37,'2018-03-07 09:55:00',21,162,36,23.9,34.8,6.78,98.5,8.08,0.94,0.8,0.84,99.49,15.2,10.17,730.47,32.41,1.27,NULL,NULL);
INSERT INTO `samples` VALUES (604,38,'2018-03-08 08:06:00',21,162,36,22.9,34.5,6.79,96.1,8.14,5.56,5.47,5.61,185.52,15.12,8.25,500.5,130.8,1.39,NULL,NULL);
INSERT INTO `samples` VALUES (605,39,'2018-03-08 08:30:00',21,162,36,23,35.7,6.92,98.5,8.19,0.93,1.37,1.01,80.3,10.65,5.22,62.41,5.03,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (606,40,'2018-03-08 08:50:00',21,162,36,23.6,35.3,6.88,98,8.17,1.62,1.89,1.73,118.64,13.56,6.5,235.87,36.61,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (607,41,'2018-03-08 09:10:00',21,162,36,23.9,35.1,6.72,96.9,8.15,1.57,1.82,1.9,212.17,13.86,6.64,335.36,160.63,2.99,NULL,NULL);
INSERT INTO `samples` VALUES (608,42,'2018-03-08 09:27:00',21,162,36,23.3,34,6.71,95.8,8.13,3.6,4.21,3.75,261.65,14.43,9.05,1161.33,216.49,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (609,43,'2018-03-08 09:47:00',21,162,36,23.3,32.1,6.96,97.7,8.16,4.45,5.17,5.85,303.37,21.5,16.78,1942.43,267.13,1.74,NULL,NULL);
INSERT INTO `samples` VALUES (610,44,'2018-03-09 07:57:00',22,162,36,22.1,35.3,7,98,8.18,0.6,0.63,0.59,92.24,10.21,5.75,172.09,21.16,0.3,NULL,NULL);
INSERT INTO `samples` VALUES (611,45,'2018-03-09 08:20:00',22,162,36,22.3,34.8,6.94,97.2,8.17,0.98,1.57,1.01,132.21,13.5,6.05,318.69,67.06,1.3,NULL,NULL);
INSERT INTO `samples` VALUES (612,46,'2018-03-09 08:37:00',22,162,36,22.7,34.6,6.93,97.6,8.15,1,1.41,1.15,223.55,14.69,7.32,341.64,179.43,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (613,47,'2018-03-09 09:13:00',22,162,36,22.8,35.3,6.93,98.3,8.18,1.07,0.98,0.81,89.53,13.95,6.34,264.44,20.81,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (614,48,'2018-03-09 09:36:00',22,162,36,22.7,35.4,6.88,97.6,8.17,1.12,1.1,1.08,107.2,10.41,5.32,169.1,42.11,0.44,NULL,NULL);
INSERT INTO `samples` VALUES (615,49,'2018-03-09 10:00:00',22,162,36,23.6,35.2,6.91,99.4,8.2,0.31,0.33,0.37,160.97,12.12,5.58,295.35,101.67,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (616,26,'2018-03-20 07:53:00',3,162,37,22.2,32.5,6.34,87.9,8.06,8.11,9.02,9.66,138.8,14.21,10.82,751.43,55.64,3.23,NULL,NULL);
INSERT INTO `samples` VALUES (617,27,'2018-03-20 08:16:00',3,162,37,23.8,33.7,6.15,88.5,8.16,3.88,2.56,3,162.53,12,8.56,627.14,86.02,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (618,28,'2018-03-20 08:45:00',3,162,37,23.8,33.8,5.99,86.2,8.13,3.83,3.73,3.37,108.88,8.9,8.15,351.16,26.71,4.52,NULL,NULL);
INSERT INTO `samples` VALUES (619,29,'2018-03-20 08:58:00',3,162,37,24.7,32.7,6.28,91.2,8.14,1.85,1.55,1.3,434.13,27.8,26.63,1355.1,424.19,9.26,NULL,NULL);
INSERT INTO `samples` VALUES (620,30,'2018-03-20 09:17:00',3,162,37,24.8,34.3,6.61,97.3,8.19,0.99,1.15,1.22,117.39,9.61,6,314.1,38.48,0.85,NULL,NULL);
INSERT INTO `samples` VALUES (621,31,'2018-03-20 09:40:00',3,162,37,24.6,34.4,6.47,95,8.17,0.73,0.78,0.79,141.72,9.02,7.05,343.02,77.22,1.59,NULL,NULL);
INSERT INTO `samples` VALUES (622,32,'2018-03-21 08:00:00',4,162,37,24.1,34.5,6.82,98.7,8.17,2.03,1.73,2.17,124.09,11.03,7.23,235.21,28.84,2.78,NULL,NULL);
INSERT INTO `samples` VALUES (623,33,'2018-03-21 08:25:00',4,162,37,24.3,35,6.74,98.4,8.19,0.73,0.72,0.67,71.45,7.87,4.83,80.08,7.27,0.52,NULL,NULL);
INSERT INTO `samples` VALUES (624,34,'2018-03-21 08:47:00',4,162,37,24.2,34.3,6.73,97.6,8.15,1.93,2.54,2.48,69.89,6.63,5.19,127.73,7.88,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (625,35,'2018-03-21 09:09:00',4,162,37,24.3,35,6.76,98.6,8.2,0.33,0.39,0.39,70.67,9.68,5.12,45.32,2.74,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (626,36,'2018-03-21 09:40:00',4,162,37,24.4,34.8,7.28,106.3,8.17,1,1.74,1.99,91.51,9.19,7.15,248.23,12.27,3.13,NULL,NULL);
INSERT INTO `samples` VALUES (627,37,'2018-03-21 09:45:00',4,162,37,24.6,34,6.67,97.3,8.1,1.18,1.23,1.33,111.7,14.28,13.94,898.1,44.11,3.02,NULL,NULL);
INSERT INTO `samples` VALUES (628,38,'2018-03-22 08:20:00',7,162,37,23.7,34.3,6.86,98.5,8.16,5.63,6.21,5.92,171.57,20.87,8.01,406.87,106.49,1.48,NULL,NULL);
INSERT INTO `samples` VALUES (629,39,'2018-03-22 08:43:00',7,162,37,23.9,34.8,6.84,98.9,8.21,4.39,4.2,4.41,93.9,9.72,7.26,83.06,4.61,1.83,NULL,NULL);
INSERT INTO `samples` VALUES (630,40,'2018-03-22 09:10:00',7,162,37,24.6,34.7,6.83,100,8.2,2.85,3.68,3.33,88.35,10.49,7.01,176.6,15.45,2.25,NULL,NULL);
INSERT INTO `samples` VALUES (631,41,'2018-03-22 09:25:00',7,162,37,24.7,34.3,6.8,99.5,8.19,3.95,3.93,4.4,228.08,14.19,7.36,290.94,150.95,5.45,NULL,NULL);
INSERT INTO `samples` VALUES (632,42,'2018-03-22 09:45:00',7,162,37,24.6,32.9,6.85,99,8.16,2.79,3.98,3.24,335.84,13.64,11.85,1565.7,318.71,1.49,NULL,NULL);
INSERT INTO `samples` VALUES (633,43,'2018-03-22 10:00:00',7,162,37,24.3,31.4,6.95,99.2,8.2,4.26,4.79,4.31,294.43,15.43,14.31,1752.77,270.08,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (634,44,'2018-03-23 08:05:00',8,162,37,24.3,34.4,6.79,98.5,8.17,0.96,1.21,0.82,100.8,7.98,7.08,203.54,33.61,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (635,45,'2018-03-23 08:20:00',8,162,37,24.7,34.9,6.85,100.1,8.2,0.35,0.4,0.31,78.02,7.53,4.14,76.69,9.46,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (636,46,'2018-03-23 08:45:00',8,162,37,24.8,34.4,6.77,99.2,8.15,1.11,1.52,1.7,168.27,10.16,8.07,259.9,112.75,2.58,NULL,NULL);
INSERT INTO `samples` VALUES (637,47,'2018-03-23 09:10:00',8,162,37,24.9,34.6,6.78,99.5,8.2,0.51,0.83,0.51,103.8,9.62,7.38,188.7,30.35,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (638,48,'2018-03-23 09:50:00',8,162,37,25.6,34.7,6.77,100.6,8.21,0.77,0.86,0.74,113.78,7.45,6.41,162,56.14,2.03,NULL,NULL);
INSERT INTO `samples` VALUES (639,49,'2018-03-23 09:30:00',8,162,37,25.3,34.7,6.88,101.8,8.22,0.55,0.64,0.63,100.01,6.43,6.39,143.06,34.31,0.28,NULL,'We sampled WPO first, and WPL last. Therefore, lines/data in the field datasheet are inverted.');
INSERT INTO `samples` VALUES (640,26,'2018-04-03 08:00:00',18,162,38,25.2,33.9,6.4,94.6,8.08,13,13.8,13.7,92.08,11.27,9.18,443.25,13.26,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (641,27,'2018-04-03 08:24:00',18,162,38,25.2,32.6,6.35,93.1,8.1,6.79,6.18,6.46,207.85,16.07,13.49,1091.7,143.32,3.71,NULL,NULL);
INSERT INTO `samples` VALUES (642,28,'2018-04-03 08:41:00',18,162,38,25.5,34.4,6.66,99,8.16,5.53,5.75,5.87,118.76,11.39,8.38,344.4,49.27,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (643,29,'2018-04-03 09:02:00',18,162,38,25.8,31.7,6.67,98.2,8.13,2.63,2.8,2.87,687.67,43.67,36.92,2280.32,658.96,10.49,NULL,NULL);
INSERT INTO `samples` VALUES (644,30,'2018-04-03 09:23:00',18,162,38,26.3,34.3,6.62,99.3,8.18,1.07,1.47,1.48,118.86,11.41,6.87,333.38,50.83,0.57,NULL,NULL);
INSERT INTO `samples` VALUES (645,31,'2018-04-03 09:44:00',18,162,38,25.8,34.5,6.59,98.8,8.17,1.28,1.59,1.61,163.01,9.43,6.58,337.31,78.31,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (646,32,'2018-04-04 08:05:00',19,162,38,25.2,34.7,6.64,98.5,8.15,2.45,3.01,2.78,138.8,9.6,7.79,313.37,50.04,3.74,NULL,'MON was closed due to weather');
INSERT INTO `samples` VALUES (647,33,'2018-04-04 08:35:00',19,162,38,25.3,34.7,6.65,98.8,8.14,0.51,0.55,0.43,144.6,8.87,6.2,310.61,76.64,2.19,NULL,'MAN, MAS were closed due to sharks');
INSERT INTO `samples` VALUES (648,35,'2018-04-04 09:00:00',19,162,38,25,35.3,6.75,100.1,8.19,0.43,0.49,0.48,68.94,7.92,4.31,38.82,3.71,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (649,38,'2018-04-05 08:13:00',19,162,38,25.4,32.7,6.53,95.5,8.04,6.73,5.14,6.09,375.65,14.02,11.25,1182.56,333.72,5.56,NULL,NULL);
INSERT INTO `samples` VALUES (650,39,'2018-04-05 08:42:00',19,162,38,25.7,33.9,6.74,99.8,8.14,5.38,6.18,5.72,173.69,8.36,7.6,539.69,99.33,5.39,NULL,NULL);
INSERT INTO `samples` VALUES (651,40,'2018-04-05 09:00:00',19,162,38,26,34.3,6.67,99.6,8.14,5.69,5.7,5.87,169.53,10.49,8.66,566.38,104.1,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (652,41,'2018-04-05 09:22:00',19,162,38,26.3,34,6.69,100.3,8.15,5.4,5.97,5.77,218.65,13.38,9.32,718.47,158.5,1.99,NULL,NULL);
INSERT INTO `samples` VALUES (653,42,'2018-04-05 09:35:00',19,162,38,26.8,32.8,6.61,99.3,8.12,28.5,28.8,27.6,248.83,13.91,12.08,1451.92,180.88,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (654,43,'2018-04-05 09:51:00',19,162,38,27,32.5,6.32,95,8.12,34.8,32.4,32,205.07,13.98,12.65,1290.13,127.92,5.45,NULL,NULL);
INSERT INTO `samples` VALUES (655,44,'2018-04-06 07:55:00',20,162,38,25.6,35,6.75,100.3,8.18,0.8,0.65,0.78,97.92,8.26,5.33,120.84,19.57,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (656,45,'2018-04-06 08:20:00',20,162,38,25.7,35.1,6.72,100.1,8.18,0.65,0.57,0.6,95.19,7.73,5.42,144.31,24.75,0.41,NULL,NULL);
INSERT INTO `samples` VALUES (657,46,'2018-04-06 08:45:00',20,162,38,25.7,34.9,6.77,100.8,8.17,0.64,0.74,0.66,166.64,7.69,6.37,241.29,98.74,2.76,NULL,NULL);
INSERT INTO `samples` VALUES (658,47,'2018-04-06 09:08:00',20,162,38,26.1,35.2,6.7,100.6,8.19,0.47,0.5,0.54,73.04,7.45,4.8,82.83,7.21,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (659,48,'2018-04-06 09:32:00',20,162,38,26.1,35.1,6.72,100.7,8.18,1.02,1.18,1.84,101.68,8.44,6.01,129.11,32.85,1.03,NULL,NULL);
INSERT INTO `samples` VALUES (660,49,'2018-04-06 09:52:00',20,162,38,26.1,35,6.76,101.4,8.2,0.44,0.41,0.73,100.15,8.07,5.81,128.56,32.51,1.04,NULL,NULL);
INSERT INTO `samples` VALUES (661,26,'2018-04-17 08:02:00',2,162,39,24.8,33.4,6.38,92.6,8.06,11.8,11,11.6,118.41,11.17,9.68,598.66,13.82,3.84,NULL,NULL);
INSERT INTO `samples` VALUES (662,27,'2018-04-17 08:18:00',2,162,39,25.4,32.6,6.15,89.8,8.09,8.1,9.48,9.93,174.74,11.48,9.9,886.34,88.61,2.09,NULL,NULL);
INSERT INTO `samples` VALUES (663,28,'2018-04-17 08:37:00',2,162,39,25.5,34.7,6.68,98.9,8.17,8.33,10.6,8.51,103.26,10.19,5.88,207.65,24.14,0.99,NULL,NULL);
INSERT INTO `samples` VALUES (664,29,'2018-04-17 08:57:00',2,162,39,25.9,32.3,6.7,98.5,8.15,3.73,4.32,4.47,602.55,33.46,29.81,1742.07,565.72,4.8,NULL,NULL);
INSERT INTO `samples` VALUES (665,30,'2018-04-17 09:13:00',2,162,39,25.9,34.2,6.66,98.9,8.18,1.13,1.99,0.98,199.53,10.43,6.1,375.58,48.97,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (666,31,'2018-04-17 09:33:00',2,162,39,25.6,34.1,6.7,99.3,8.17,1.29,1.68,1.35,161.62,13.3,6.4,395,71.1,1.8,NULL,NULL);
INSERT INTO `samples` VALUES (667,32,'2018-04-18 08:00:00',3,162,39,25.3,34.6,6.62,97.9,8.16,1.27,1.33,1.31,112.79,10.45,5.59,270.43,35.06,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (668,33,'2018-04-18 08:26:00',3,162,39,25.6,34.4,6.68,99.2,8.18,0.63,0.66,0.83,118.82,10.03,3.84,190.01,41.59,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (669,34,'2018-04-18 08:45:00',3,162,39,25.5,33.7,6.69,98.9,8.1,1.35,1.33,1.32,170.42,12.35,9.7,977.8,100.24,1.42,NULL,NULL);
INSERT INTO `samples` VALUES (670,35,'2018-04-18 09:10:00',3,162,39,25.5,35.1,6.69,99.8,8.2,0.58,0.61,0.56,81.58,8.97,3.88,50.02,2.63,0.28,NULL,'MAN, MAS closed due to sharks');
INSERT INTO `samples` VALUES (671,38,'2018-04-19 08:10:00',4,162,39,24.8,34.6,6.76,99.2,8.14,2.26,3.04,2.68,128.36,7.29,5.87,334.67,53.19,1.71,NULL,NULL);
INSERT INTO `samples` VALUES (672,39,'2018-04-19 08:40:00',4,162,39,24.8,35,6.74,98.9,8.18,2.82,3.96,2.77,80.79,7.64,5.17,106.11,3.99,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (673,40,'2018-04-19 09:05:00',4,162,39,25.4,34.7,6.65,98.5,8.16,3.62,4.16,3.92,106.74,9.17,6.95,247.79,33.7,2.55,NULL,NULL);
INSERT INTO `samples` VALUES (674,41,'2018-04-19 09:20:00',4,162,39,25.8,34.2,6.68,99.3,8.15,2.37,3.3,2.31,250.7,10.35,7.21,417.57,183.46,1.32,NULL,NULL);
INSERT INTO `samples` VALUES (675,42,'2018-04-19 09:40:00',4,162,39,25.5,33.2,6.6,97.2,8.13,3.27,3.05,3.18,327.26,11.02,9.74,1339.02,277.08,3.16,NULL,NULL);
INSERT INTO `samples` VALUES (676,43,'2018-04-19 10:00:00',4,162,39,25.6,30.1,6.84,99.1,8.16,10.2,11.7,11.8,399.66,18.81,15.76,2329.65,351.04,4,NULL,NULL);
INSERT INTO `samples` VALUES (677,44,'2018-04-20 07:57:00',5,162,39,25.5,34.7,6.67,98.9,8.17,1.81,0.65,0.71,110.73,9.32,5.06,125.34,17.15,1.02,NULL,NULL);
INSERT INTO `samples` VALUES (678,45,'2018-04-20 08:23:00',5,162,39,25.7,35,6.69,99.6,8.19,0.79,0.98,0.83,199.01,9.15,4.7,86.4,7.42,6.94,NULL,NULL);
INSERT INTO `samples` VALUES (679,46,'2018-04-20 08:42:00',5,162,39,25.6,34.2,6.71,99.5,8.15,0.99,1.22,1.3,196.58,8.12,5.46,226.95,123.73,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (680,47,'2018-04-20 08:55:00',5,162,39,25.6,34.7,6.71,99.8,8.19,1.02,1.13,1.01,125.74,9.25,5.26,199.9,24.68,3.8,NULL,NULL);
INSERT INTO `samples` VALUES (681,48,'2018-04-20 09:30:00',5,162,39,25.7,34.7,6.68,99.6,8.18,1.04,0.95,0.92,169.78,12.67,5.1,143.73,49.15,3.96,NULL,NULL);
INSERT INTO `samples` VALUES (682,49,'2018-04-20 09:48:00',5,162,39,26.1,34.7,6.72,100.8,8.21,0.54,0.53,0.56,169.67,9.22,4.15,172.83,56.9,1.68,NULL,NULL);
INSERT INTO `samples` VALUES (683,26,'2018-05-01 07:57:00',16,162,40,23.4,32.3,6.25,88,8.07,7.23,6.72,6.83,114.91,11.27,9.72,810.92,10.14,3.21,NULL,NULL);
INSERT INTO `samples` VALUES (684,27,'2018-05-01 08:20:00',16,162,40,24.7,33.7,5.94,86.4,8.13,8.83,11.1,9.5,143.94,8.16,6.92,543.1,51.05,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (685,28,'2018-05-01 08:38:00',16,162,40,24.8,34.8,6.8,99.6,8.19,3.32,3.22,3.29,106.02,14.3,5.75,188.89,20.93,2.28,NULL,NULL);
INSERT INTO `samples` VALUES (686,29,'2018-05-01 08:54:00',16,162,40,25.1,32.9,6.82,99.4,8.17,2.52,2.41,2.05,460.56,27.92,23.51,1351.63,414.65,5.78,NULL,NULL);
INSERT INTO `samples` VALUES (687,30,'2018-05-01 09:09:00',16,162,40,25.3,34,6.74,99.1,8.2,2.52,2.98,1.64,147.85,11.51,7.12,476.56,63.92,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (688,31,'2018-05-01 09:28:00',16,162,40,25,34.1,6.76,99,8.18,0.67,0.7,0.93,131.39,10.33,7.06,372.56,54.66,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (689,32,'2018-05-02 08:15:00',17,162,40,25.1,34.8,6.64,97.8,8.18,0.97,1.03,1.2,115.78,11.68,7.29,300.59,31.54,2.68,NULL,NULL);
INSERT INTO `samples` VALUES (690,33,'2018-05-02 08:40:00',17,162,40,25.3,34.1,6.63,97.5,8.15,1.02,1.06,1.22,243.07,9.92,8.11,614.21,166.35,2.03,NULL,NULL);
INSERT INTO `samples` VALUES (691,34,'2018-05-02 08:50:00',17,162,40,25.3,34.1,6.67,98.1,8.1,1.16,1.56,1.5,151.2,13.7,12.09,881.82,87.8,2.19,NULL,NULL);
INSERT INTO `samples` VALUES (692,35,'2018-05-02 09:15:00',17,162,40,25.4,35.5,6.73,100,8.19,0.69,0.92,0.71,76.55,8.51,5.45,67.06,1.83,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (693,36,'2018-05-02 09:33:00',17,162,40,26,35,7.28,109.1,8.14,1.72,1.98,1.41,77.68,7.51,6.57,272.75,5.39,2.5,NULL,NULL);
INSERT INTO `samples` VALUES (694,37,'2018-05-02 09:40:00',17,162,40,25.8,34.4,6.5,96.7,8.08,1.63,1.55,1.78,137.08,19.77,18.06,1475,68.89,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (695,38,'2018-05-03 08:20:00',18,162,40,25.7,34.4,6.78,100.6,8.14,7.79,7.93,7.47,202.15,10.6,7.41,511.28,106,2.9,NULL,'HQ40d #1 turned off by itself twice during sampling - loose batteries?');
INSERT INTO `samples` VALUES (696,39,'2018-05-03 08:55:00',18,162,40,25.6,35.6,6.69,99.6,8.18,1.08,1.15,1.41,71.14,8.24,5.36,61.85,1.11,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (697,40,'2018-05-03 09:20:00',18,162,40,25.8,35,6.67,99.5,8.16,4.42,4.48,4.28,132.64,10.46,7.2,270.6,30.1,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (698,41,'2018-05-03 09:33:00',18,162,40,25.9,34.3,6.67,99.2,8.15,1.36,2.16,1.91,329.95,10.85,8.66,716.15,316.55,2.15,NULL,NULL);
INSERT INTO `samples` VALUES (699,42,'2018-05-03 09:55:00',18,162,40,26.2,32.3,6.72,99.3,8.11,5.48,6.65,5.87,542.27,15.47,14.31,2209.98,457.18,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (700,43,'2018-05-03 10:15:00',18,162,40,26.6,29.9,6.74,99.3,8.18,3.35,3.44,3.43,534.07,20.22,18.46,2872.71,436.64,2.71,NULL,NULL);
INSERT INTO `samples` VALUES (701,44,'2018-05-04 08:10:00',19,162,40,25.4,35.2,6.59,97.9,8.18,0.65,0.51,0.56,108.51,13.08,5.33,171.91,24.23,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (702,45,'2018-05-04 08:30:00',19,162,40,25.7,35.3,6.68,99.6,8.18,0.62,0.58,0.56,103.93,9.1,4.41,111.82,9.44,3.14,NULL,NULL);
INSERT INTO `samples` VALUES (703,46,'2018-05-04 08:38:00',19,162,40,25.9,34.8,6.47,96.7,8.15,1.59,2.09,1.2,197.99,9.88,5.8,210.91,104.29,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (704,47,'2018-05-04 09:05:00',19,162,40,26.1,35.1,6.64,99.7,8.19,0.78,0.74,0.92,115.35,10.4,6.15,180.13,24.25,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (705,48,'2018-05-04 09:30:00',19,162,40,26,35,6.68,100.1,8.2,0.77,1.16,0.93,133.6,9.1,4.44,159.49,56.66,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (706,49,'2018-05-04 09:45:00',19,162,40,26,35,6.67,99.9,8.21,0.4,0.4,0.36,105.46,8.26,4.78,135.98,38.49,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (707,26,'2018-05-15 07:45:00',1,162,41,24.3,33,5.93,85.5,8.01,5.9,5.62,5.29,139.44,13.82,8.57,533.87,22.54,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (708,27,'2018-05-15 08:07:00',1,162,41,25.5,32.3,5.63,87.5,8.08,5.57,5.56,6.2,192.06,12.37,8.65,936.06,95.76,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (709,28,'2018-05-15 08:27:00',1,162,41,25.4,34.2,6.85,101.3,8.15,5.79,5.64,6.05,140.31,14.98,7,358.41,45.89,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (710,29,'2018-05-15 08:44:00',1,162,41,26,32,7.01,103.4,8.15,2.03,1.99,2.22,346.5,31.68,25.54,1581.7,445.89,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (711,30,'2018-05-15 09:00:00',1,162,41,26.2,33.8,6.66,99.7,8.17,0.72,1.5,0.92,154.1,14.05,7.56,476.12,61.57,2.47,NULL,NULL);
INSERT INTO `samples` VALUES (712,31,'2018-05-15 09:23:00',1,162,41,25.6,34.3,6.7,99.5,8.16,0.87,1.65,1.11,139.89,12.04,8.01,370.21,57.43,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (713,32,'2018-05-16 07:50:00',2,162,41,25.2,33.9,6.82,100.2,8.15,2.3,4.84,3.92,142.93,14.58,10.55,506.37,55.93,5.61,NULL,NULL);
INSERT INTO `samples` VALUES (714,33,'2018-05-16 08:20:00',2,162,41,25.6,34.1,6.57,97.4,8.14,1.01,1.14,1.15,222.45,16.22,9.01,545.4,132.4,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (715,34,'2018-05-16 08:40:00',2,162,41,26.1,34,6.43,96,8.09,1.66,1.95,2.06,223.43,20.88,18.29,1432.59,145.27,2.64,NULL,NULL);
INSERT INTO `samples` VALUES (716,35,'2018-05-16 09:11:00',2,162,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MBS not sampled due to 4 ft shore breakers');
INSERT INTO `samples` VALUES (717,36,'2018-05-16 09:26:00',2,162,41,26,34.7,7.41,111.1,8.14,1.8,3.09,2.15,91.61,14.37,7.82,301.02,9.71,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (718,37,'2018-05-16 09:46:00',2,162,41,26.5,33.8,6.46,97.2,8.05,1.48,1.72,1.78,158.82,22.87,19.35,1233.4,64.92,7.69,NULL,NULL);
INSERT INTO `samples` VALUES (719,38,'2018-05-17 08:15:00',4,162,41,25.5,34.1,6.69,98.7,8.13,4.92,5.66,5.07,220.2,15.63,9.37,534.17,139.31,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (720,39,'2018-05-17 08:45:00',4,162,41,25.7,35.2,6.74,100,8.2,2.16,2.05,1.69,108.1,10.39,6.37,65.66,7.18,4.03,NULL,NULL);
INSERT INTO `samples` VALUES (721,40,'2018-05-17 09:03:00',4,162,41,26.1,34.7,6.75,101.1,8.17,2.97,4.88,4.13,123.83,13.06,8.2,264,23.81,3,NULL,NULL);
INSERT INTO `samples` VALUES (722,41,'2018-05-17 09:20:00',4,162,41,26.4,34,6.71,100.8,8.13,2.67,4.02,3.17,325.86,15.25,9.48,611.53,250.51,1.98,NULL,NULL);
INSERT INTO `samples` VALUES (723,42,'2018-05-17 09:35:00',4,162,41,26.7,32,6.71,100.2,8.1,3.92,4.78,5,439.92,18.44,16.3,2308.03,350.97,4.01,NULL,NULL);
INSERT INTO `samples` VALUES (724,43,'2018-05-17 09:56:00',4,162,41,26.6,29.5,6.73,98.7,8.2,4.05,4.17,4.34,522.35,20.34,19.11,2903.71,416.27,4.7,NULL,NULL);
INSERT INTO `samples` VALUES (725,44,'2018-05-18 08:10:00',5,162,41,25.7,35.1,6.6,98.4,8.15,0.84,0.59,0.43,123.42,13.54,7.1,167.47,17.42,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (726,45,'2018-05-18 08:30:00',5,162,41,25.9,35.1,6.73,100.6,8.19,0.29,0.24,0.27,95.14,14.89,5.92,72.1,9.29,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (727,46,'2018-05-18 08:55:00',5,162,41,26.3,34.3,6.76,101.3,8.14,1.2,1.13,1.13,216.42,15.01,7.7,231.61,127.43,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (728,47,'2018-05-18 09:21:00',5,162,41,26.4,34.6,6.76,101.7,8.18,0.47,0.59,0.62,121.2,11.98,6.62,216.82,33.6,2.88,NULL,'Leaf in sample bucket while taking measurements');
INSERT INTO `samples` VALUES (729,48,'2018-05-18 09:41:00',5,162,41,26.6,34.8,6.74,101.8,8.2,1.1,1.8,1.14,171.7,9.77,7.13,225,82.03,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (730,49,'2018-05-18 10:01:00',5,162,41,26.5,34.8,6.71,101.4,8.22,0.66,0.74,0.99,151.38,12.96,6.43,177.21,59.31,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (731,26,'2018-05-29 07:45:00',15,162,42,25.5,31.8,5.71,83.3,8.08,4.54,5.09,5.37,122.26,11.31,7.84,820.75,25.27,9.01,NULL,'lots of vog - all beaches');
INSERT INTO `samples` VALUES (732,27,'2018-05-29 08:00:00',15,162,42,26.5,32.5,5.73,85.3,8.08,4.49,4.7,4.85,198.08,8.93,8.66,1062.58,106.77,7.89,NULL,NULL);
INSERT INTO `samples` VALUES (733,28,'2018-05-29 08:16:00',15,162,42,26,34.8,6.27,93.6,8.12,4.31,4.06,4.8,142.2,6.45,5.24,411.02,50.98,6.01,NULL,NULL);
INSERT INTO `samples` VALUES (734,29,'2018-05-29 08:30:00',15,162,42,25.9,33,6.37,94.2,8.12,1.44,2.05,2.03,666.8,33.53,30.26,2169.3,607.28,10.91,NULL,'KCP warning sign posted for bacteria');
INSERT INTO `samples` VALUES (735,30,'2018-05-29 08:45:00',15,162,42,25.7,34.1,6.48,96.2,8.16,1.43,1.49,1.51,146.39,11.7,6.84,579.47,62.43,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (736,31,'2018-05-29 08:59:00',15,162,42,26,34.7,6.44,96.4,8.15,0.7,0.95,0.69,163.66,7.82,6.62,405.69,61.36,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (737,32,'2018-05-30 07:46:00',16,162,42,25.2,34.6,6.68,98.9,8.15,2.45,2.28,2.72,136.54,8.94,7.65,450.74,58.25,4.8,NULL,NULL);
INSERT INTO `samples` VALUES (738,33,'2018-05-30 08:20:00',16,162,42,25.8,35.2,6.5,97.6,8.15,1.19,1.61,1.45,122.35,8.77,6.45,271.62,48.68,2.2,NULL,NULL);
INSERT INTO `samples` VALUES (739,34,'2018-05-30 08:41:00',16,162,42,25.6,34.3,6.67,99.3,8.07,2.59,2.76,2.87,156.52,11.03,10.8,910.68,77.6,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (740,35,'2018-05-30 09:05:00',16,162,42,25.7,35.5,6.65,99.9,8.18,0.59,0.58,0.6,78.05,7.78,5.4,80.55,2.85,1.12,NULL,NULL);
INSERT INTO `samples` VALUES (741,36,'2018-05-30 09:27:00',16,162,42,25.8,35.3,7.06,106.1,8.12,0.94,0.87,1,81.37,9.52,8.38,319.99,8.11,4.94,NULL,NULL);
INSERT INTO `samples` VALUES (742,37,'2018-05-30 09:39:00',16,162,42,26.3,35.3,6.62,100.1,8.12,2.29,2.25,2.78,109.44,14.25,9.4,478.7,18.1,6.29,NULL,NULL);
INSERT INTO `samples` VALUES (743,38,'2018-05-31 08:20:00',17,162,42,25.1,35.2,6.73,99.3,8.15,4.91,5.55,5.51,139.82,7.43,6.94,291.67,59.27,4.63,NULL,'Took field duplicates (Turb, Sal, DO, pH and Temp)');
INSERT INTO `samples` VALUES (744,39,'2018-05-31 08:45:00',17,162,42,25.2,35.7,6.71,99.4,8.15,7.77,6.96,8.12,86.72,11.08,7.61,119.9,6.49,4.51,NULL,'Took field duplicates (Turb, Sal, DO, pH and Temp)');
INSERT INTO `samples` VALUES (745,40,'2018-05-31 09:08:00',17,162,42,26.3,35.7,6.56,99,8.14,4.74,5.75,4.82,100.02,9.95,7.66,239.26,14.91,2.79,NULL,'Took field duplicates (Turb, Sal, DO, pH and Temp)');
INSERT INTO `samples` VALUES (746,41,'2018-05-31 09:30:00',17,162,42,26.2,35,6.55,98.4,8.11,6.25,7.94,8.22,306.32,12.28,8.2,601.17,231.73,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (747,42,'2018-05-31 09:51:00',17,162,42,26.2,35.1,6.69,100.7,8.14,4.33,4.97,4.12,178.03,12.5,10.31,846.13,98.31,6.1,NULL,NULL);
INSERT INTO `samples` VALUES (748,43,'2018-05-31 10:05:00',17,162,42,26.4,32.8,6.69,99.8,8.15,13.5,14,11.9,280.96,15.33,13.32,1538.52,211.52,4.23,NULL,NULL);
INSERT INTO `samples` VALUES (749,44,'2018-06-01 08:00:00',18,162,42,25.6,35.3,6.67,99.4,8.15,0.84,1.44,1.24,114.5,9.59,5.95,202.29,35.84,3.66,NULL,'Some vog');
INSERT INTO `samples` VALUES (750,45,'2018-06-01 08:35:00',18,162,42,25.7,35.7,6.75,101.1,8.18,0.25,0.3,0.39,83.1,7.69,4.72,38.25,6.43,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (751,46,'2018-06-01 08:55:00',18,162,42,25.9,34.8,6.59,98.6,8.14,0.83,1.09,1.07,210.54,8.51,5.68,239.99,134.91,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (752,47,'2018-06-01 09:25:00',18,162,42,26.1,35.5,6.58,99.2,8.19,0.44,0.5,0.5,97.5,6.82,4.34,58.85,12.46,4.54,NULL,NULL);
INSERT INTO `samples` VALUES (753,48,'2018-06-01 09:55:00',18,162,42,26.1,35.2,6.67,100.3,8.18,0.95,1.39,1.05,145.75,9.35,6.19,185.37,73.25,3.97,NULL,NULL);
INSERT INTO `samples` VALUES (754,49,'2018-06-01 10:15:00',18,162,42,25.9,35.2,6.68,100.1,8.19,0.85,0.81,1.13,141.16,7.92,5.14,167.72,65.06,1.73,NULL,NULL);
INSERT INTO `samples` VALUES (755,43,'2018-06-19 08:01:00',7,162,43,26.1,33.6,5.78,86.2,8.14,2.39,2.14,2.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (756,26,'2018-06-19 08:22:00',7,162,43,25.2,31.7,6.3,91.6,8.1,14.7,15.5,16.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (757,27,'2018-06-19 08:40:00',7,162,43,26.4,32.8,5.83,87.1,8.16,7.27,8.07,6.95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KKS - 1 dog in the water');
INSERT INTO `samples` VALUES (758,28,'2018-06-19 08:59:00',7,162,43,26.4,34.1,6.59,99.1,8.16,8.41,8.97,8.86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (759,29,'2018-06-19 09:18:00',7,162,43,26.6,31.5,6.74,100.3,8.14,2.23,2.72,3.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (760,32,'2018-06-20 08:00:00',8,162,43,26.4,34.4,6.55,98.6,8.18,1.29,1.1,1.06,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (761,33,'2018-06-20 08:25:00',8,162,43,27,34.9,6.54,99.8,8.18,1.26,1.28,1.22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MMB - Makena Golf Resort being demolished nearby');
INSERT INTO `samples` VALUES (762,34,'2018-06-20 08:50:00',8,162,43,26.7,35.1,6.57,99.8,8.12,1.29,1.34,1.21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MON - a 4th NTU taken, 1.99 NTU reading not recorded');
INSERT INTO `samples` VALUES (763,36,'2018-06-20 09:20:00',8,162,43,26.2,34.7,6.86,103.3,8.09,0.84,0.87,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (764,37,'2018-06-20 09:25:00',8,162,43,26.1,35.2,6.27,94.5,8.13,0.45,0.55,0.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (765,38,'2018-06-21 08:12:00',8,162,43,26.3,34.7,6.72,101.2,8.15,2.69,2.54,2.23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (766,39,'2018-06-21 08:38:00',8,162,43,25.9,35.2,6.72,100.6,8.18,1.16,1.26,1.07,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (767,40,'2018-06-21 09:00:00',8,162,43,26.9,35.1,6.66,101.5,8.18,4.3,5.05,4.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (768,41,'2018-06-21 09:17:00',8,162,43,26.6,34.7,6.66,100.8,8.16,4.58,4.92,4.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (769,42,'2018-06-21 09:32:00',8,162,43,27.2,33.5,6.55,99.4,8.14,2.25,2.01,1.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (770,44,'2018-06-22 07:59:00',9,162,43,26.5,34.9,6.53,98.7,8.16,0.56,0.95,0.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (771,45,'2018-06-22 08:25:00',9,162,43,26.6,35.1,6.65,100.6,8.16,0.67,0.64,0.47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (772,46,'2018-06-22 08:55:00',9,162,43,26.7,34.5,6.61,100.6,8.14,0.98,0.9,0.88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (773,48,'2018-06-22 09:10:00',9,162,43,26.8,35,6.61,100.4,8.19,0.4,0.39,0.41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (774,49,'2018-06-22 09:30:00',9,162,43,27.3,35.1,6.64,101.8,8.2,0.34,0.34,0.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (775,43,'2018-07-10 07:50:00',27,162,44,26.6,33.2,5.71,85.5,8.16,0.86,0.81,0.89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'haze and vog');
INSERT INTO `samples` VALUES (776,26,'2018-07-10 08:15:00',27,162,44,26.2,32.3,4.88,72.3,8.07,2.04,2.67,2.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (777,27,'2018-07-10 08:35:00',27,162,44,27.2,32.9,5.29,79.9,8.13,3.15,3.53,3.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (778,28,'2018-07-10 09:00:00',27,162,44,26.9,34,6.58,99.7,8.17,5.71,5.34,5.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KKP - 1 turtle on the beach');
INSERT INTO `samples` VALUES (779,29,'2018-07-10 09:15:00',27,162,44,27.5,30.7,6.5,97.5,8.14,6.83,6.47,7.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (780,32,'2018-07-11 07:52:00',28,162,44,26.3,33.7,6.39,95.2,8.14,2.1,1.83,1.91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (781,33,'2018-07-11 08:24:00',28,162,44,26.7,34.6,6.36,96.1,8.17,0.57,0.56,0.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (782,34,'2018-07-11 08:50:00',28,162,44,26.9,34.2,6.46,97.8,8.1,2.08,2.14,2.28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (783,36,'2018-07-11 09:14:00',28,162,44,26.7,34.8,7.18,108.6,8.18,1.47,1.77,1.51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (784,37,'2018-07-11 09:35:00',28,162,44,26.7,32.2,6.56,99,8.13,1.86,1.72,1.59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (785,38,'2018-07-12 08:15:00',29,162,44,25.9,34.3,6.66,99.3,8.13,5.54,5.06,5.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6 tents - appears to be a homeless encampment');
INSERT INTO `samples` VALUES (786,39,'2018-07-12 08:40:00',29,162,44,25.8,35.4,6.52,97.4,8.2,1.23,1.25,1.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (787,40,'2018-07-12 08:55:00',29,162,44,26.4,35.1,6.52,98.4,8.19,4.97,4.04,4.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (788,41,'2018-07-12 09:15:00',29,162,44,26.8,34.3,6.47,98,8.11,5.23,5.94,4.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (789,42,'2018-07-12 09:30:00',29,162,44,26.8,32.1,6.65,99.6,8.13,2.03,2.8,2.64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (790,44,'2018-07-13 07:55:00',2,162,44,26.5,34.8,6.55,99,8.18,1.32,1.36,1.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nutrient sample bottle was dipped in the ocean water by mistake. Thoroughly rinsed before sample filtered (with tap and distilled water)');
INSERT INTO `samples` VALUES (791,45,'2018-07-13 08:18:00',2,162,44,26.5,35.1,6.48,98.2,8.19,0.57,0.57,0.54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (792,46,'2018-07-13 08:36:00',2,162,44,26.7,34.5,6.47,97.9,8.16,1.28,1.19,1.45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (793,48,'2018-07-13 09:00:00',2,162,44,26.9,34.7,6.53,99.4,8.16,1.1,1.19,1.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (794,49,'2018-07-13 09:13:00',2,162,44,26.8,35.1,NULL,99.9,8.22,0.87,0.44,0.41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (795,43,'2018-07-31 08:10:00',18,162,45,27.1,33.8,6.23,94.6,8.17,0.7,0.67,0.63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (796,26,'2018-07-31 08:25:00',18,162,45,27.6,32,4.95,75.1,8.06,5.05,5.22,5.27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (797,27,'2018-07-31 08:45:00',18,162,45,28.5,33.7,5.56,86.2,8.14,3.53,3.89,3.84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (798,28,'2018-07-31 09:06:00',18,162,45,28.3,34.4,6.29,97.8,8.14,6.38,7.59,6.78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (799,29,'2018-07-31 09:20:00',18,162,45,28.1,32.4,6.29,96.5,8.15,1.35,1.18,1.44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (800,32,'2018-08-01 08:05:00',19,162,45,27.1,34.8,6.47,98.6,8.18,1.23,1.73,1.03,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (801,33,'2018-08-01 08:35:00',19,162,45,27.6,35.2,6.45,99.6,8.18,1.34,1.4,1.35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MMB - nutrient bottle used to colllect turbidity sample. Team unaware of spare bottles in kit. Nutrient bottle was rinsed and then reused.');
INSERT INTO `samples` VALUES (802,34,'2018-08-01 08:55:00',19,162,45,27.7,35.2,6.63,102.3,8.18,4.22,4.49,4.28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (803,36,'2018-08-01 09:25:00',19,162,45,27.4,35.1,7.17,110.2,8.19,1.08,1.14,1.02,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (804,37,'2018-08-01 09:35:00',19,162,45,27.5,34.7,6.55,100.8,8.15,0.9,0.86,0.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (805,38,'2018-08-02 08:15:00',21,162,45,26.2,34.7,6.47,97.2,8.13,3.62,3.47,3.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (806,39,'2018-08-02 08:45:00',21,162,45,26.7,35.6,6.54,99.6,8.2,1.2,1.22,1.27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (807,40,'2018-08-02 09:05:00',21,162,45,27.4,35.4,6.48,99.6,8.18,3.52,3.88,3.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (808,41,'2018-08-02 09:20:00',21,162,45,27.5,35.1,6.45,99.2,8.18,3.45,3.57,3.97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (809,42,'2018-08-02 09:39:00',21,162,45,27.4,33.2,6.42,97.6,8.13,1.96,2.22,2.21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (810,44,'2018-08-03 07:53:00',22,162,45,26.6,35.3,6.58,100,8.2,1.66,1.13,1.29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (811,45,'2018-08-03 08:12:00',22,162,45,26.8,35.2,6.56,99.8,8.19,1.42,1.08,1.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (812,46,'2018-08-03 08:32:00',22,162,45,27,35.4,6.56,100.3,8.2,0.89,0.88,0.77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (813,48,'2018-08-03 08:55:00',22,162,45,27.4,35.4,6.54,100.5,8.2,1.72,1.68,1.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (814,49,'2018-08-03 09:12:00',22,162,45,27.5,35.4,6.56,101.3,8.22,0.27,0.23,0.25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (815,43,'2018-08-21 07:55:00',11,162,46,26.9,31.6,5.92,88.5,8.13,1.73,1.93,1.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (816,26,'2018-08-21 08:28:00',11,162,46,26.4,31.8,5.58,83,8.11,5.09,4.67,5.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (817,27,'2018-08-21 08:40:00',11,162,46,27.5,33.4,4.99,76,8.1,4.75,5.5,5.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (818,28,'2018-08-21 09:00:00',11,162,46,27.3,34,6.51,99.2,8.16,7.01,7.3,6.73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (819,29,'2018-08-21 09:13:00',11,162,46,28.2,32.9,6.16,94.9,8.16,1.93,1.64,1.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (820,32,'2018-08-22 07:52:00',12,162,46,27.3,26.2,6.44,94,8.17,1.16,1.36,1.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (821,33,'2018-08-22 08:25:00',12,162,46,27.7,34.7,6.23,96.2,8.18,1.22,1.62,1.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MMB - construction and demolition behind beach');
INSERT INTO `samples` VALUES (822,34,'2018-08-22 08:47:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site not sampled because beach closed');
INSERT INTO `samples` VALUES (823,36,'2018-08-22 09:04:00',12,162,46,27.5,34.8,7.17,110.1,8.15,0.95,1.09,1.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MAN - foul smell, source unknown');
INSERT INTO `samples` VALUES (824,37,'2018-08-22 09:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site not sampled because beach closed');
INSERT INTO `samples` VALUES (825,38,'2018-08-23 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (826,39,'2018-08-23 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (827,40,'2018-08-23 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (828,41,'2018-08-23 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (829,42,'2018-08-23 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (830,44,'2018-08-24 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (831,45,'2018-08-24 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (832,46,'2018-08-24 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (833,48,'2018-08-24 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (834,49,'2018-08-24 00:00:00',NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (835,43,'2018-09-11 08:00:00',3,162,47,26.8,32.9,6.35,95.7,8.14,4.13,5.68,4.37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (836,26,'2018-09-11 08:17:00',3,162,47,26.5,32.9,6.33,95,8.12,19.1,19.9,20.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'breezy at KWP');
INSERT INTO `samples` VALUES (837,27,'2018-09-11 08:37:00',3,162,47,27.2,33.3,6.04,92.1,8.14,4.88,5.43,5.65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gusty at KKS');
INSERT INTO `samples` VALUES (838,28,'2018-09-11 08:52:00',3,162,47,27,33.8,6.36,96.9,8.15,5.71,5.05,5.84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'stream was dredged, anticipating tropical storm');
INSERT INTO `samples` VALUES (839,29,'2018-09-11 09:11:00',3,162,47,27.2,31.6,6.52,98.4,8.14,3.36,3.8,4.87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (840,32,'2018-09-12 00:00:00',NULL,162,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (841,33,'2018-09-12 00:00:00',NULL,162,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (842,34,'2018-09-12 00:00:00',NULL,162,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (843,36,'2018-09-12 00:00:00',NULL,162,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (844,37,'2018-09-12 00:00:00',NULL,162,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (845,38,'2018-09-13 08:25:00',4,162,47,26.8,34.8,6.44,98,8.17,8.67,8.88,8.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (846,39,'2018-09-13 08:50:00',4,162,47,27,35.4,6.44,98.5,8.2,1.33,1.39,1.67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (847,40,'2018-09-13 09:20:00',4,162,47,28,35.3,6.44,100.4,8.19,2.61,2.03,2.49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NSB - spilled nutrient bottle, resampled with spare bottle & syringe');
INSERT INTO `samples` VALUES (848,41,'2018-09-13 09:50:00',4,162,47,28.1,34.9,6.41,99.9,8.18,2.17,2.36,2.93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (849,42,'2018-09-13 10:11:00',4,162,47,27.7,34.1,6.46,99.7,8.17,3.05,3.07,3.12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (850,44,'2018-09-14 07:52:00',5,162,47,27.2,35.6,6.41,98.8,8.2,0.72,0.77,0.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (851,45,'2018-09-14 08:18:00',5,162,47,27.6,35.2,6.48,99.9,8.15,0.65,0.8,0.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Re-used syringe from last site');
INSERT INTO `samples` VALUES (852,46,'2018-09-14 08:37:00',5,162,47,27.5,35.3,6.47,99.8,8.18,0.68,1.1,0.78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Re-used syringe from last site');
INSERT INTO `samples` VALUES (853,48,'2018-09-14 08:58:00',5,162,47,27.6,35.4,6.46,99.9,8.18,0.79,0.85,0.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'campers were turtle watch volunteers');
INSERT INTO `samples` VALUES (854,49,'2018-09-14 09:25:00',5,162,47,28.2,35.5,6.47,101.1,8.21,0.3,0.32,0.48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (855,13,'2017-10-05 07:10:00',15,162,48,26,34.7,5.8,87,8.1,3.05,2.57,2.6,62.2,11.64,5.22,135.62,3.56,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (856,14,'2017-10-05 07:35:00',15,162,48,26,34.6,6.19,92.6,8.07,6.71,6.81,7,57.02,12.77,7.14,444.21,5.2,2.71,NULL,NULL);
INSERT INTO `samples` VALUES (857,15,'2017-10-05 07:52:00',15,162,48,25.7,34.5,5.99,89.1,8.02,7.95,7.79,7.83,55.52,11.76,6.59,446.73,5.82,2.18,NULL,'sample location possibly off by 50\'');
INSERT INTO `samples` VALUES (858,16,'2017-10-05 08:13:00',15,162,48,25.7,34.6,6.61,98.4,8.12,10.5,10.6,10.1,67.18,12.94,5.57,146.18,5.93,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (859,17,'2017-10-05 08:25:00',15,162,48,25.9,34.6,6.85,102.2,8.15,7.56,8.04,8.11,61.1,11.56,4.78,197.74,5.71,3.09,NULL,NULL);
INSERT INTO `samples` VALUES (860,18,'2017-10-05 08:38:00',15,162,48,26.3,34.2,6.71,100.6,8.13,3.64,3.48,3.13,63.45,11.94,5.38,328.14,4.03,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (861,7,'2017-10-04 08:20:00',14,162,48,27.6,34,5.54,84.9,8.04,10.1,10.3,10.6,57.25,10.89,8.62,445.48,2.93,2.88,NULL,'PFF stream flowing');
INSERT INTO `samples` VALUES (862,8,'2017-10-04 08:40:00',14,162,48,27.8,33.8,5.64,86.7,8.03,4.04,4.14,4.08,126.79,11.86,10.95,332.7,7.59,11.59,NULL,'PLH stream no flow');
INSERT INTO `samples` VALUES (863,9,'2017-10-04 09:00:00',14,162,48,29.3,33.7,5.67,87.7,8.05,3.29,4.3,4.79,78.79,10.8,7.7,477.59,19.84,4.53,NULL,NULL);
INSERT INTO `samples` VALUES (864,10,'2017-10-04 09:25:00',14,162,48,28.1,34.5,6.46,100.1,8.18,2.24,2.65,2.42,94.06,10.65,5.29,214.25,1.41,5.88,NULL,NULL);
INSERT INTO `samples` VALUES (865,11,'2017-10-04 09:42:00',14,162,48,28.4,34.6,6.52,101.4,8.14,1.51,1.94,1.55,57.29,10.54,4.77,106.36,1.3,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (866,12,'2017-10-04 10:10:00',14,162,48,27.9,34.6,6.81,105.3,8.15,1.02,1.43,1.23,130.79,49.42,10.58,122.52,4.88,7.73,NULL,NULL);
INSERT INTO `samples` VALUES (867,19,'2017-10-06 07:56:00',17,162,48,25.3,33.7,6.32,93.2,8.1,37.2,37.9,40.5,62.75,13.4,10.82,506.63,4.92,5.47,NULL,'RHL no waves at collection site but waves breaking starting halfway to Lipoa Point, light rain the night before');
INSERT INTO `samples` VALUES (868,21,'2017-10-06 08:40:00',17,162,48,26.4,34.1,6.64,99.9,8.16,2.65,1.82,2.26,61.83,13.19,7.48,334.06,8.24,4.6,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (869,22,'2017-10-06 09:15:00',17,162,48,27,34.6,6.6,100.9,8.19,0.65,0.65,0.61,82.52,32.54,7.61,83.75,2.72,3.06,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (870,23,'2017-10-06 09:35:00',17,162,48,26.9,33.4,6.81,103,8.16,3.36,2.7,3.04,130.02,17.79,15.76,934.61,85.88,5.29,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (871,24,'2017-10-06 09:55:00',17,162,48,26.4,33.7,6.62,99.5,8.11,14,13.6,12.8,113.87,17.09,15.46,691.32,70.33,3.69,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (872,25,'2017-10-06 10:15:00',17,162,48,27.9,34.7,7.24,112.1,8.33,3.94,4.63,4.45,71.99,12.35,6.59,179.47,9.28,3.04,NULL,'RKV duplicate nutrient sample. 2 syringes from same bucket. N-1 with 0.7 um filter, N-2 with 0.2 um filter, light rain the night before');
INSERT INTO `samples` VALUES (873,1,'2017-10-03 08:14:00',14,162,48,27,33.7,6.59,101,8.14,2.33,2.48,2.51,117.08,13.06,10.7,608.57,37.65,7.1,NULL,'RNS erosion, drop off more evident');
INSERT INTO `samples` VALUES (874,2,'2017-10-03 08:40:00',14,162,48,26.8,32.4,6.29,94.6,8.15,3.15,3.46,5.79,240.05,33.8,17.82,1292.44,151.01,7.55,NULL,'RPO surf is up today');
INSERT INTO `samples` VALUES (875,3,'2017-10-03 08:58:00',14,162,48,27.1,34.2,6.41,97.8,8.11,3.05,3.22,3.39,65.16,9.21,6.69,160.43,5.79,2.59,NULL,'RKS beach very busy');
INSERT INTO `samples` VALUES (876,4,'2017-10-03 09:16:00',14,162,48,27.9,34,6.49,100,8.19,0.5,0.79,0.67,82.29,9.52,8.52,561.15,26.42,2.83,NULL,'RAB beach very busy');
INSERT INTO `samples` VALUES (877,5,'2017-10-03 09:36:00',14,162,48,28,33.3,6.59,101.3,8.19,5.65,6.58,6,222.01,21.54,13.88,966.95,116.77,12.57,NULL,NULL);
INSERT INTO `samples` VALUES (878,6,'2017-10-03 09:52:00',14,162,48,27.6,33.4,6.52,99.8,8.2,0.5,0.5,0.49,118.54,35.86,12.56,759.61,24.31,3.49,NULL,NULL);
INSERT INTO `samples` VALUES (879,13,'2017-10-26 07:01:00',6,162,49,26,34.7,5.78,86.6,7.96,6.06,6.52,6.32,62.2,11.44,6.41,179.14,8.25,5.33,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (880,14,'2017-10-26 07:31:00',6,162,49,26.7,34.5,6.25,94.7,8.01,4.72,4.81,4.73,57.52,10.53,6.58,389.13,7.07,5.6,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (881,15,'2017-10-26 07:51:00',6,162,49,26.8,34.5,5.45,82.7,7.96,5.43,5.34,4.99,95.68,33.36,9.81,462.27,12.06,9.19,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (882,16,'2017-10-26 08:14:00',6,162,49,26.8,34.8,6.37,96.9,8.06,10.5,9.99,10.8,57.12,10.71,5.48,92.69,2.73,4.34,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (883,17,'2017-10-26 08:40:00',6,162,49,26.9,34.7,6.47,98.5,8.05,20,21.6,21.5,81.02,9.57,6.01,156.8,16.19,6.35,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (884,18,'2017-10-26 09:05:00',6,162,49,27,34.8,6.67,101.8,8.07,4.89,4.96,5.1,54.79,8.68,5.47,170.7,6.95,4.81,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (885,7,'2017-10-25 08:22:00',5,162,49,26.7,34.7,6.58,99.6,8.06,6.63,7.11,8.14,70.75,8.84,8.44,238.57,5.71,8.87,NULL,'PFF stream flowing, drain pipe flow');
INSERT INTO `samples` VALUES (886,8,'2017-10-25 08:47:00',5,162,49,26.7,34.1,6.5,98.2,8.07,19.2,19.1,19.4,58.71,12.74,10.17,323,6.05,4.7,NULL,'PLH stream flowing, some erosion');
INSERT INTO `samples` VALUES (887,9,'2017-10-25 09:10:00',5,162,49,26.8,34.2,6.39,96.7,8.07,15,15.9,15.2,62.91,12.07,9.77,374.04,8.58,5.67,NULL,'PLT very little beach');
INSERT INTO `samples` VALUES (888,10,'2017-10-25 09:35:00',5,162,49,27.2,34.7,6.65,101.6,8.14,13,13.8,13.6,66.6,11.08,5.5,166.71,6.18,8.82,NULL,'PPU very high tide and waves');
INSERT INTO `samples` VALUES (889,11,'2017-10-25 09:55:00',5,162,49,27.9,34.4,6.6,100.5,8.09,11.7,11.1,11.3,76.52,10.37,6.89,186.47,11.5,6.68,NULL,NULL);
INSERT INTO `samples` VALUES (890,12,'2017-10-25 10:15:00',5,162,49,27.1,34.6,6.59,100.5,8.1,1.47,1.63,1.82,68.2,10.77,5.73,167.63,8.2,6.8,NULL,NULL);
INSERT INTO `samples` VALUES (891,19,'2017-10-27 08:05:00',8,162,49,25.4,33,6.58,96.9,8.11,156,164,158,77.7,11.15,9.43,566.29,11.71,5.94,NULL,'huge rain storm Mon night (10/23) with thunder, lightening, winds - power outages all over Maui, some stream flow, lots of debris in water, some of it looks like pieces of bark, stems, duplicate nutrient sample. 2 syringes from same bucket. N-1 with 0.2  um filter, N-2 with 0.7 um filter');
INSERT INTO `samples` VALUES (892,21,'2017-10-27 08:45:00',8,162,49,26.4,34.8,6.83,103.3,8.17,3.72,3.28,3.43,59.56,10.02,5.39,139.43,11.28,5.21,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, no stream flow while taking sample but was water in both stream beds and ocean waves mixed a little with stream water at mouth of stream');
INSERT INTO `samples` VALUES (893,22,'2017-10-27 09:20:00',8,162,49,27,35,6.79,104.1,8.18,1.22,1.28,1.33,56.93,10.66,4.14,65.74,5,5.39,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, lots of wood debris in water');
INSERT INTO `samples` VALUES (894,23,'2017-10-27 09:53:00',8,162,49,26.7,34.8,6.99,106.6,8.21,2.91,2.6,2.37,66.92,9.65,7.06,151.85,12.13,7.41,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui');
INSERT INTO `samples` VALUES (895,24,'2017-10-27 10:23:00',8,162,49,25.9,34.3,6.84,102.6,8.13,26.6,27,26.1,117.88,20,15.9,561.32,99.59,6.73,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, lots of wood debris in water');
INSERT INTO `samples` VALUES (896,25,'2017-10-27 10:46:00',8,162,49,27.4,35,6.83,105.1,8.23,11.6,10.8,11.7,65.88,14.04,5.5,90.95,9.04,16.17,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, was water in stream bed though no stream flow while taking sample but ocean mixed a little with stream water at mouth of stream');
INSERT INTO `samples` VALUES (897,1,'2017-10-24 08:24:00',5,162,49,26.3,33.5,6.31,94.8,8.1,17.5,16.2,16.5,78.71,13.59,12.43,205.27,21.68,8.31,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, light rain while taking sample');
INSERT INTO `samples` VALUES (898,2,'2017-10-24 08:50:00',5,162,49,26.5,33.3,6.34,96.3,8.15,14.5,15.6,15.3,96.55,15.13,13.43,225.39,31.19,10.59,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui - no rain while sampling - water brown near shore, no rain while taking sample');
INSERT INTO `samples` VALUES (899,3,'2017-10-24 09:13:00',5,162,49,26.7,33.2,6.6,99.5,8.16,5.48,5.43,5.47,75.27,13.8,11.1,271.88,20.39,12.39,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui -  while taking sample saw minor flooding in parking lot diverted to beach, while there diverted water was not going into the ocean, light rain while taking sample');
INSERT INTO `samples` VALUES (900,4,'2017-10-24 09:35:00',5,162,49,27,33.6,6.57,99.8,8.18,1.81,1.78,1.66,78.25,13.63,8.82,378.58,33.97,2.51,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, no rain while taking sample');
INSERT INTO `samples` VALUES (901,5,'2017-10-24 09:57:00',5,162,49,26.9,33.2,6.68,101.1,8.17,9.88,9.97,9.81,113.85,16.36,11.69,510.19,33.41,27.77,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, light rain while taking sample, one dog noted on beach');
INSERT INTO `samples` VALUES (902,6,'2017-10-24 10:20:00',5,162,49,26.9,33.1,6.67,100.9,8.19,6.2,5.87,7.69,82,12.9,10.54,419.96,17.75,12.76,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, no rain while taking sample (not in data sheet CM)');
INSERT INTO `samples` VALUES (903,13,'2017-11-16 07:11:00',28,162,50,23.8,34.8,5.99,86.6,8.1,3.64,3.22,3.61,69.53,13.16,5.16,163.32,3.34,3.93,NULL,'spilled all KCL at OPM');
INSERT INTO `samples` VALUES (904,14,'2017-11-16 07:35:00',28,162,50,23.8,35.1,6.33,91.5,8.12,2.15,2.24,2.28,66.06,8.29,4.02,238.64,3.77,5.06,NULL,NULL);
INSERT INTO `samples` VALUES (905,15,'2017-11-16 07:50:00',28,162,50,24,35,5.83,84.5,8.07,3.02,2.29,2.52,88.47,16.1,5.8,271.72,5,8.5,NULL,'resolved OMM exact location issue');
INSERT INTO `samples` VALUES (906,16,'2017-11-16 08:10:00',28,162,50,23.5,35,6.73,96.9,8.15,5.61,5.61,5.71,64.83,8.73,3.33,167.71,1.52,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (907,17,'2017-11-16 08:27:00',28,162,50,24.2,34.9,7.03,102.2,8.17,5.63,5.55,5.81,68.06,8.43,3.81,201.46,2.86,4.28,NULL,NULL);
INSERT INTO `samples` VALUES (908,18,'2017-11-16 08:45:00',28,162,50,25,34.7,6.75,99.4,8.14,1.53,1.52,1.86,73.9,8.24,4.06,410.79,4.66,4.3,NULL,NULL);
INSERT INTO `samples` VALUES (909,7,'2017-11-15 08:10:00',27,162,50,25.9,35.2,6.46,96.7,8.11,4.31,4.89,4.68,82.31,12.56,6.42,167.92,7.3,3.52,NULL,'PFF - moderate stream flow');
INSERT INTO `samples` VALUES (910,8,'2017-11-15 08:35:00',27,162,50,26,34.5,6.37,95.2,8.11,3.16,3.65,3.84,69.66,14.8,8.35,404.32,5.66,7.51,NULL,'PLH - no stream flow');
INSERT INTO `samples` VALUES (911,9,'2017-11-15 08:55:00',27,162,50,26.2,34.6,6.3,94.6,8.11,2.39,2.61,2.47,106.61,15.24,9.01,668.97,48.19,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (912,10,'2017-11-15 09:15:00',27,162,50,26.7,34.7,6.71,101.6,8.19,1.27,1.66,1.36,74.56,11.53,3.36,163.97,1.36,4.79,NULL,NULL);
INSERT INTO `samples` VALUES (913,11,'2017-11-15 09:40:00',27,162,50,26.5,35,6.74,102,8.15,2.41,2.04,2,66.74,10.96,2.8,116.28,1.83,4.51,NULL,NULL);
INSERT INTO `samples` VALUES (914,12,'2017-11-15 10:05:00',27,162,50,25.5,35,6.62,98.4,8.09,1.34,1.32,1.55,100.76,18.58,8.01,158.06,5.29,8.18,NULL,'pH probe not placed in KCL leaving OLP');
INSERT INTO `samples` VALUES (915,19,'2017-11-17 07:50:00',29,162,50,24.3,30.6,6.39,90.9,8.15,20.9,21.1,21.5,78.84,13.74,7.08,394.16,4.57,15.58,NULL,'Honolua sampling during heavy rain, stream flowing into ocean, double rainbox within the bay, saw bark, leaves, and large particles in otherwise clear water - may have caused the high NTU numbers');
INSERT INTO `samples` VALUES (916,21,'2017-11-17 08:40:00',29,162,50,25.7,34.4,6.71,99.7,8.15,1.35,1.73,1.67,66.51,13.88,5.59,329.25,7.75,3.88,NULL,'small flow from stream into ocean');
INSERT INTO `samples` VALUES (917,22,'2017-11-17 09:15:00',29,162,50,26,35,6.66,100.2,8.19,0.65,0.65,0.69,64.87,14.7,4.11,71.94,2.55,3.42,NULL,NULL);
INSERT INTO `samples` VALUES (918,23,'2017-11-17 09:50:00',29,162,50,26.3,34.1,6.86,103.1,8.16,2.77,2.66,2.27,121.18,16.65,12.13,758.32,66.44,4.98,NULL,NULL);
INSERT INTO `samples` VALUES (919,24,'2017-11-17 10:15:00',29,162,50,25.3,34,6.81,100.5,8.16,17.3,16.7,17.2,114.57,17.52,13.53,638.78,66.12,4.23,NULL,'RKO no water coming out of pipe');
INSERT INTO `samples` VALUES (920,25,'2017-11-17 10:38:00',29,162,50,26.4,35,7.09,107.2,8.28,7.27,6.83,6.9,68.25,9.13,5.13,109.15,2.56,4.22,NULL,'RKV waves irregular, turbulent but not that large, rocks exposed at about 1 foot underwater made for difficult footing even with reef shoes');
INSERT INTO `samples` VALUES (921,1,'2017-11-14 08:16:00',26,162,50,26,34.9,6.71,100.8,8.16,1.15,1.08,1.2,77.52,12.09,8.87,281.77,14.03,5.81,NULL,'at Napili Bay sampled 20 yards north of usual testing site because of the shore break, misty rain while sampling');
INSERT INTO `samples` VALUES (922,2,'2017-11-14 08:45:00',26,162,50,25.9,32.2,6.77,99.7,8.17,8.73,8.62,9.81,333.52,22.41,21.19,1810.78,285.64,6.65,NULL,'at Pohaku gave 4 cards to man who said he signed up on web site, may want to volunteer. will put up at Kahana, Napili, Canoe Beach - misty rain while sampling');
INSERT INTO `samples` VALUES (923,3,'2017-11-14 09:10:00',26,162,50,26.1,34.8,6.73,101,8.18,2.84,2.7,2.83,83.64,10.24,5.56,173.51,3.59,22.11,NULL,NULL);
INSERT INTO `samples` VALUES (924,4,'2017-11-14 09:29:00',26,162,50,26.5,34.5,6.61,99.7,8.17,2.87,2.68,2.36,83.32,15.46,7.75,429.83,16.46,8.98,NULL,NULL);
INSERT INTO `samples` VALUES (925,5,'2017-11-14 09:49:00',26,162,50,27.1,34.1,6.44,98,8.18,4.21,3.5,3.36,135.89,13.91,7.95,732.93,81.56,6.03,NULL,'Canoe Beach warning sign dated 11/2/17');
INSERT INTO `samples` VALUES (926,6,'2017-11-14 10:04:00',26,162,50,27.2,34.5,6.5,99.2,8.2,1.27,1.2,1.15,75.01,15.35,6.02,403.4,12.17,4.38,NULL,NULL);
INSERT INTO `samples` VALUES (927,13,'2017-12-07 07:08:00',20,162,51,23.3,34.8,6.27,89.5,8.09,6.48,6.56,6.95,74.29,10.17,5.71,129.57,5.21,5.51,NULL,NULL);
INSERT INTO `samples` VALUES (928,14,'2017-12-07 07:30:00',20,162,51,23.7,34.9,6.38,91.6,8.13,3.59,3.59,3.52,65.16,7.54,4.95,205.81,4.2,4.86,NULL,NULL);
INSERT INTO `samples` VALUES (929,15,'2017-12-07 07:47:00',20,162,51,24.2,35,6.07,87.9,8.11,3.25,3.39,3.32,69.35,14,4.99,201.13,5.2,7.13,NULL,NULL);
INSERT INTO `samples` VALUES (930,16,'2017-12-07 08:04:00',20,162,51,24.6,34.9,6.55,95.5,8.14,5.75,5.63,5.97,62.47,9.19,4.74,100.75,2.08,2.99,NULL,NULL);
INSERT INTO `samples` VALUES (931,17,'2017-12-07 08:20:00',20,162,51,24.6,35,6.67,97.2,8.18,4.39,4.58,4.15,68.46,9.35,4.51,72.39,3.85,3.57,NULL,NULL);
INSERT INTO `samples` VALUES (932,18,'2017-12-07 08:33:00',20,162,51,24.3,34.8,6.8,98.8,8.18,2.02,2.12,1.99,65.22,9.32,4.77,161.41,3.12,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (933,7,'2017-12-06 08:15:00',19,162,51,24.5,35,6.72,97.8,8.17,3.48,3.54,3.67,76.01,13.05,6.34,94.34,4,5.27,NULL,NULL);
INSERT INTO `samples` VALUES (934,8,'2017-12-06 08:35:00',19,162,51,23.8,34.6,6.67,95.7,8.15,11.9,12,12.9,92.24,14.52,9.66,385.9,10.06,6.81,NULL,NULL);
INSERT INTO `samples` VALUES (935,9,'2017-12-06 08:55:00',19,162,51,23.6,34.3,6.59,94.2,8.13,15.9,16.9,16,99.69,14.65,10.49,502.8,20.63,18.76,NULL,NULL);
INSERT INTO `samples` VALUES (936,10,'2017-12-06 09:20:00',19,162,51,24.6,34.6,6.98,101.5,8.21,1.78,2.26,2.1,67.98,10.68,4.02,180.76,1.27,5.47,NULL,NULL);
INSERT INTO `samples` VALUES (937,11,'2017-12-06 09:45:00',19,162,51,24.7,34.9,6.95,101.6,8.19,1.86,1.69,1.85,74.24,11.43,4.35,123.98,1.79,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (938,12,'2017-12-06 10:08:00',19,162,51,24.6,34.8,6.96,101.4,8.16,1.39,1.41,1.33,78.55,10.56,5.96,125.05,6,9.55,NULL,NULL);
INSERT INTO `samples` VALUES (939,19,'2017-12-08 07:50:00',21,162,51,23.2,34.5,6.78,96.2,8.14,23.9,28.5,25.2,89.42,12.22,7.25,268.46,6.53,5.13,NULL,'very high tide when sampling, surf breaking outside reef');
INSERT INTO `samples` VALUES (940,21,'2017-12-08 08:40:00',21,162,51,24.7,35.1,6.95,101.6,8.18,1.41,1.71,1.54,88.53,13.5,4.88,99.37,6.99,3,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (941,22,'2017-12-08 09:15:00',21,162,51,25.1,35.1,6.91,101.8,8.18,0.59,0.69,0.64,71.94,11.14,4.43,65.94,2.38,3,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (942,23,'2017-12-08 09:45:00',21,162,51,25.4,35.1,7.03,104,8.19,1.17,1.6,1.45,73.58,14.06,5.88,107.38,5.36,4.43,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (943,24,'2017-12-08 10:10:00',21,162,51,24.7,34.6,6.99,102,8.19,14.6,15.8,15.6,98.5,15.84,10.63,325.21,24.76,4.34,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (944,25,'2017-12-08 10:35:00',21,162,51,25.5,34.8,6.96,102.9,8.22,21.5,20.6,21.4,73.94,11.28,5.81,117,4.28,5.27,NULL,'very high tide when sampling, little bait fish school 5 feet from sample site');
INSERT INTO `samples` VALUES (945,1,'2017-12-05 08:06:00',18,162,51,24.2,35.2,6.89,100,8.17,1.04,1.14,1.08,70.39,8.81,4.74,101.58,4.46,6.96,NULL,NULL);
INSERT INTO `samples` VALUES (946,2,'2017-12-05 08:31:00',18,162,51,23.5,34.5,6.96,99.3,8.17,31.1,31.8,32.6,86.41,16.58,13.19,519.49,33.22,5.24,NULL,'brown water, lots of limu on rocks');
INSERT INTO `samples` VALUES (947,3,'2017-12-05 08:52:00',18,162,51,23.5,34,7.01,99.8,8.17,10.1,9.83,10.4,87.8,14.48,9.96,508.61,10.41,4.51,NULL,'no beach, brown water');
INSERT INTO `samples` VALUES (948,4,'2017-12-05 09:13:00',18,162,51,24.5,34.5,6.82,99,8.18,6.41,6.78,6.52,77.86,13.2,8.9,322.28,15.06,7.23,NULL,NULL);
INSERT INTO `samples` VALUES (949,5,'2017-12-05 09:33:00',18,162,51,25.5,34.4,6.84,101,8.2,2.13,2.1,2.27,107.45,14.22,8.06,558.71,48.26,5.36,NULL,NULL);
INSERT INTO `samples` VALUES (950,6,'2017-12-05 09:51:00',18,162,51,25.1,33.8,6.83,100,8.23,1.55,1.57,1.58,83.82,15.06,11.21,858,23.21,7,NULL,NULL);
INSERT INTO `samples` VALUES (951,13,'2017-12-21 08:21:00',4,162,52,23.5,34.7,6.46,92.8,8.03,9.07,10.4,10.4,80.9,13.8,7.63,211.91,12.34,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (952,14,'2017-12-21 08:45:00',4,162,52,24.1,34.8,5.91,85.9,8.02,2.35,2.23,2.65,83.41,9.99,5.71,287.76,13.39,2.36,NULL,NULL);
INSERT INTO `samples` VALUES (953,15,'2017-12-21 09:04:00',4,162,52,24.2,34.6,5.87,85.4,8,4.36,4.27,4.38,84.78,11.14,6.42,351.61,17.28,2.74,NULL,NULL);
INSERT INTO `samples` VALUES (954,16,'2017-12-21 09:24:00',4,162,52,24.2,34.6,6.63,96.5,8.11,3.66,3.56,3.52,80.05,9.77,5.4,155.42,9.76,1.87,NULL,'OUB stream flowing brown');
INSERT INTO `samples` VALUES (955,17,'2017-12-21 09:43:00',4,162,52,24.7,34.6,6.63,97.4,8.09,50,50.4,49.1,96.54,12.27,6.58,123.91,29.65,1.65,NULL,'OPB porta potty maybe leaking');
INSERT INTO `samples` VALUES (956,18,'2017-12-21 09:58:00',4,162,52,25,35.1,6.24,92.3,8.11,13.3,13.1,13.2,93.75,15.86,6.75,133.06,21.99,4.42,NULL,'OPP stream brown');
INSERT INTO `samples` VALUES (957,7,'2017-12-20 08:20:00',3,162,52,24,35.4,6.68,97.2,8.15,5.42,5.43,5.33,76.86,12.39,5.56,91.93,1.78,0.94,NULL,'PFF - normal stream flow');
INSERT INTO `samples` VALUES (958,8,'2017-12-20 08:41:00',3,162,52,24.1,34.9,6.59,96,8.14,7.31,6.83,6.69,72.14,12.9,6.72,254.46,6.51,2.85,NULL,'PLH - no entry for flow');
INSERT INTO `samples` VALUES (959,9,'2017-12-20 09:05:00',3,162,52,23.9,34.5,6.61,95.5,8.13,10.3,10,9.88,84.35,15.44,9.69,491.54,17.79,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (960,10,'2017-12-20 09:35:00',3,162,52,24.4,34.9,6.85,100.2,8.17,5.09,5.19,5.75,71.58,13.25,4.9,166.84,1.39,1.4,NULL,NULL);
INSERT INTO `samples` VALUES (961,11,'2017-12-20 09:55:00',3,162,52,24.6,35,6.77,99.5,8.13,4.96,4.59,4.94,78.67,12.07,4.16,180.75,4.11,1.44,NULL,'OLP baby pond - people surveying');
INSERT INTO `samples` VALUES (962,12,'2017-12-20 10:15:00',3,162,52,24.6,35,6.35,93.2,8.08,2.48,2.89,2.56,75.75,12.58,7.22,192.43,8.75,3.41,NULL,NULL);
INSERT INTO `samples` VALUES (963,19,'2017-12-22 07:59:00',6,162,52,22.6,28.5,7.04,96.1,8.17,21.2,21.3,20,121.96,15.57,8.67,669.46,38.75,5.41,NULL,'moderate stream flow/mud, lots of organic matter from stream - organic smell');
INSERT INTO `samples` VALUES (964,21,'2017-12-22 08:42:00',6,162,52,23.4,33.9,6.98,99.5,8.17,7.26,7.37,7.55,87.8,13.17,7.32,252.01,15.59,4.73,NULL,'both streams flowing lightly, BIG waves, strong NE wind');
INSERT INTO `samples` VALUES (965,22,'2017-12-22 09:17:00',6,162,52,24,35.1,6.93,100.7,8.19,4.55,4.11,4.26,76.47,12.11,4.86,93.73,7.3,2.58,NULL,'dirtiest Dana has ever seen in this bay, lots of detritus in the water');
INSERT INTO `samples` VALUES (966,23,'2017-12-22 09:50:00',6,162,52,24.5,34.7,6.95,101.8,8.18,3.12,3.49,3.53,113.42,19.66,11.28,526.76,49.6,3.4,NULL,'noticed detritus floating on water near shore, first turbidity reading 3.12');
INSERT INTO `samples` VALUES (967,24,'2017-12-22 10:18:00',6,162,52,23.4,33.9,6.93,99.1,8.14,36.4,35.9,36.2,148.33,23.45,16.12,456.83,83.58,6.61,NULL,'very muddy, stream does not appear to be flowing now but definitely has been flowing last 2 days');
INSERT INTO `samples` VALUES (968,25,'2017-12-22 10:43:00',6,162,52,24.3,33.7,7.18,103.9,8.19,16.5,17,16.6,387.2,23.43,12.78,392.14,35.53,22.51,NULL,'lost bucket, Bruce got cut, rocks to blame. Moved spot to southmost entry. Discharged about 10 ml of 0.2 um filter into N-2 bottle by mistake. Rest went into N-1 bottle. Discharged 55 ml 0.7 um filter into N-2 bottle. Wrote an accident report on Bruce\'s injury.');
INSERT INTO `samples` VALUES (969,1,'2017-12-19 08:21:00',3,162,52,24.8,35.2,6.72,98.9,8.16,1.15,1.28,1.08,77.6,12.71,5.65,157.84,7.31,3.04,NULL,'upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (970,2,'2017-12-19 08:55:00',3,162,52,24.8,34,6.74,98.7,8.16,24.5,23.5,22.2,159.02,24.42,17.42,998.22,102.79,1.72,NULL,'brown plume, 2 fishermen, upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (971,3,'2017-12-19 09:21:00',3,162,52,24.9,34.9,6.68,98.4,8.18,26.2,25.5,24.9,73.3,17.92,7.49,177.52,5.11,1.93,NULL,'brown close to shore, upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (972,4,'2017-12-19 09:46:00',3,162,52,25.1,34.8,6.46,95.4,8.18,5.57,5,4.46,77.67,14.71,7.87,313.77,13.07,1.25,NULL,'upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (973,5,'2017-12-19 10:10:00',3,162,52,25.2,34.2,6.64,97.9,8.2,2.03,1.96,2.13,149.95,16.91,8.86,731.06,89.09,4.05,NULL,'lots of fishermen, upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (974,6,'2017-12-19 10:30:00',3,162,52,24.9,33.1,6.74,98.5,8.21,1.35,1.15,1.14,108.05,25.16,17.32,1412.13,45.05,0.98,NULL,'upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (975,13,'2018-01-11 07:14:00',25,162,53,23.1,34.3,5.88,83.4,8.06,2.66,2.53,2.48,86.14,11.21,4.86,243.59,2.96,3.93,NULL,NULL);
INSERT INTO `samples` VALUES (976,14,'2018-01-11 07:34:00',25,162,53,24.1,34.6,6.47,93.4,8.1,1.1,0.9,0.83,79.4,8.8,3.45,161.39,7.13,4.4,NULL,NULL);
INSERT INTO `samples` VALUES (977,15,'2018-01-11 07:46:00',25,162,53,23.9,34.4,6.29,90.3,8.09,1.14,1.09,1.2,82.57,7.79,3.6,214.4,5.78,3.47,NULL,NULL);
INSERT INTO `samples` VALUES (978,16,'2018-01-11 08:00:00',25,162,53,24.2,34.6,6.65,96,8.14,2.09,2.16,2.1,91.54,15.47,4.82,126.15,4.47,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (979,17,'2018-01-11 08:12:00',25,162,53,24.2,34.8,6.85,99.3,8.14,4.19,5.02,3.85,85.21,9.31,4.23,206.08,3.04,2.87,NULL,NULL);
INSERT INTO `samples` VALUES (980,18,'2018-01-11 08:30:00',25,162,53,24.4,34.6,6.82,99,8.13,1.53,1.67,1.7,76.74,10.6,4.1,114.41,3.69,3.25,NULL,NULL);
INSERT INTO `samples` VALUES (981,7,'2018-01-10 08:27:00',24,162,53,23.9,34.7,5.85,84.1,8.07,1.46,1.68,1.59,85.32,12.4,5.05,105.28,5.89,2.63,NULL,'PFF - strong stream flow');
INSERT INTO `samples` VALUES (982,8,'2018-01-10 08:45:00',24,162,53,24,34.1,6.1,87.7,8.07,2.38,3,2.55,89.75,13.3,6.33,198.9,7.07,2.24,NULL,'2 dogs');
INSERT INTO `samples` VALUES (983,9,'2018-01-10 09:07:00',24,162,53,24,34.2,6.03,86.6,8.06,2.57,2.34,2.49,92.81,11.66,5,126.32,7.78,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (984,10,'2018-01-10 09:33:00',24,162,53,24.3,34.2,7.03,101.5,8.14,1.24,1.41,1.31,85.3,11.14,3.66,112.45,1.24,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (985,11,'2018-01-10 09:52:00',24,162,53,25,34.5,7.11,104,8.15,1.02,1.03,1.18,85.49,9.42,2.35,133.82,3.27,6.7,NULL,NULL);
INSERT INTO `samples` VALUES (986,12,'2018-01-10 10:19:00',24,162,53,24.5,34.5,7.38,107.2,8.13,2.92,2.37,2.75,100.45,12.77,5.68,175.58,4.46,5,NULL,NULL);
INSERT INTO `samples` VALUES (987,19,'2018-01-12 07:55:00',26,162,53,22.8,33.1,6.82,95.4,8.07,59.6,65.3,68.8,98.13,22.62,9.73,518.6,7.7,7.35,NULL,'stream flowing, outside surf');
INSERT INTO `samples` VALUES (988,21,'2018-01-12 08:45:00',26,162,53,24,34.3,7.04,101.3,8.16,3.27,4.44,3.68,99.22,15.95,6.08,239.35,12.3,3.05,NULL,NULL);
INSERT INTO `samples` VALUES (989,22,'2018-01-12 09:15:00',26,162,53,24.5,34.7,7.02,102.4,8.17,1.04,1,1.17,86.94,13.8,4.35,111.47,4.05,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (990,23,'2018-01-12 09:40:00',26,162,53,24.8,33.9,7.04,102.6,8.16,2.83,2.41,2.57,127.45,20,9.87,491.52,49.51,3.8,NULL,'outside surf, foam inside bay');
INSERT INTO `samples` VALUES (991,24,'2018-01-12 10:10:00',26,162,53,24.4,33.8,6.99,101.1,8.15,16.8,17.7,18.6,131.93,18.69,12.93,479.12,68.19,2.82,NULL,'outside surf');
INSERT INTO `samples` VALUES (992,25,'2018-01-12 10:30:00',26,162,53,25.4,34.5,7.2,106.3,8.23,7.79,9.47,8.58,105.47,13.24,7.25,204.77,14.79,2.56,NULL,'dogs on beach, outside surf');
INSERT INTO `samples` VALUES (993,1,'2018-01-09 08:15:00',23,162,53,23.6,34,6.95,99.3,8.1,0.6,0.55,0.5,195.48,12.02,9.69,505.15,15.9,11.95,NULL,NULL);
INSERT INTO `samples` VALUES (994,2,'2018-01-09 08:47:00',23,162,53,24.1,33.9,6.8,97.6,8.16,2.32,2.6,2.42,143.16,14.22,10.12,622.1,63.7,6.95,NULL,NULL);
INSERT INTO `samples` VALUES (995,3,'2018-01-09 09:09:00',23,162,53,23.7,34.5,6.97,99.8,8.15,11.9,12.7,12.6,80.58,15.83,5.5,130.4,5.57,3.05,NULL,'lots of beach erosion');
INSERT INTO `samples` VALUES (996,4,'2018-01-09 09:26:00',23,162,53,24.8,34.2,6.64,96.8,8.17,1.38,1.32,1.56,106.62,19.49,7.26,338.52,24.67,3.44,NULL,NULL);
INSERT INTO `samples` VALUES (997,5,'2018-01-09 09:46:00',23,162,53,25,34.4,6.74,98.7,8.18,7.32,8.02,7.62,108.03,14.97,5.09,155.02,22.6,5.91,NULL,NULL);
INSERT INTO `samples` VALUES (998,6,'2018-01-09 10:03:00',23,162,53,24.9,33.5,6.99,101.6,8.2,1.98,2.06,2.02,106.78,19.37,11.94,801.43,26.9,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (999,13,'2018-02-01 07:07:00',16,162,54,24.2,34.9,6.27,91.6,8.08,20.8,21.2,22.7,94.69,10.96,6.06,158.24,10.98,2.41,NULL,NULL);
INSERT INTO `samples` VALUES (1000,14,'2018-02-01 07:27:00',16,162,54,25.2,34.2,6.44,95.4,8.08,2.96,2.92,3.25,88.5,9.35,5.28,277.84,11.37,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (1001,15,'2018-02-01 07:44:00',16,162,54,25.1,34.5,6.26,92.5,8.07,4.57,4.34,4.23,86.1,9.83,5.18,358.08,12.66,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (1002,16,'2018-02-01 07:58:00',16,162,54,24.6,34.7,6.54,95.9,8.12,5.91,6.2,5.72,88.25,10.04,4.63,81.61,8.38,1.18,NULL,NULL);
INSERT INTO `samples` VALUES (1003,17,'2018-02-01 08:12:00',16,162,54,25,34.8,6.59,97.5,8.1,7.42,8.99,7.38,102.27,10.24,3.98,76.5,11.81,2.47,NULL,NULL);
INSERT INTO `samples` VALUES (1004,18,'2018-02-01 08:28:00',16,162,54,24.9,34.7,6.53,96.4,8.14,2.65,2.47,2.96,81.97,10.34,4.04,94.9,3.59,1.51,NULL,NULL);
INSERT INTO `samples` VALUES (1005,7,'2018-01-31 08:07:00',15,162,54,23.8,33.4,6.38,91.8,8.09,10.5,11.4,11.5,105.68,16.46,8.12,534.67,13.6,2.06,NULL,'PFF - moderate stream flow');
INSERT INTO `samples` VALUES (1006,8,'2018-01-31 08:30:00',15,162,54,23.8,33.8,6.31,91,8.09,11.8,12.2,12.9,121.67,13.92,7.23,500.69,25.23,3.62,NULL,'PLH - had been flowing but stopped');
INSERT INTO `samples` VALUES (1007,9,'2018-01-31 08:50:00',15,162,54,24,34.1,6.6,95.7,8.13,4.15,4.83,4.74,117.38,11.8,5.05,384.65,23.04,2.86,NULL,NULL);
INSERT INTO `samples` VALUES (1008,10,'2018-01-31 09:12:00',15,162,54,24.1,34.1,6.94,100.6,8.18,3.79,4.31,4.61,94.01,11.77,4,278.68,6.18,3.05,NULL,NULL);
INSERT INTO `samples` VALUES (1009,11,'2018-01-31 09:32:00',15,162,54,24.7,34.7,6.85,100.7,8.15,3.35,3.17,4.45,117.76,11.21,4.67,171.51,10.6,2.63,NULL,NULL);
INSERT INTO `samples` VALUES (1010,12,'2018-01-31 09:55:00',15,162,54,24.6,34.6,6.92,101.5,8.07,4.46,5.28,4.69,110.95,11.97,6,238.97,12.79,3.34,NULL,NULL);
INSERT INTO `samples` VALUES (1011,19,'2018-02-02 07:55:00',17,162,54,23.5,34.5,6.74,96.7,8.13,13,12.8,13.1,115.79,11.65,7.14,280.13,5.05,4.77,NULL,'rain the night before');
INSERT INTO `samples` VALUES (1012,21,'2018-02-02 08:35:00',17,162,54,24,34.8,6.91,100,8.19,6.82,7.13,6.98,93.51,10.65,5.02,144.58,7.78,1.52,NULL,'rain the night before');
INSERT INTO `samples` VALUES (1013,22,'2018-02-02 09:00:00',17,162,54,24,34.8,6.93,100.5,8.18,0.9,0.95,0.82,93.82,11.64,4.29,110.57,12,4.81,NULL,'rain the night before, light rain while there');
INSERT INTO `samples` VALUES (1014,23,'2018-02-02 09:30:00',17,162,54,24.2,34.3,6.91,100.3,8.16,1.88,1.8,1.73,126.83,14.47,8.08,479.45,45.98,3.48,NULL,'rain the night before');
INSERT INTO `samples` VALUES (1015,24,'2018-02-02 09:55:00',17,162,54,24.3,34.2,6.83,99.3,8.13,11.6,12.2,11.9,106.42,14.83,10.58,353.31,31.56,2.57,NULL,'rain the night before, clouds clearing while there');
INSERT INTO `samples` VALUES (1016,25,'2018-02-02 10:10:00',17,162,54,24.6,33.8,6.87,99.9,8.13,8.81,8.56,8.29,135.79,14.46,13.92,677.94,38.89,4.7,NULL,'rain the night before, sun coming out while there');
INSERT INTO `samples` VALUES (1017,1,'2018-01-30 08:15:00',14,162,54,23.7,34.5,6.89,99.8,8.18,2.32,1.75,1.88,255.58,14.97,6.99,186.81,15.38,15.2,NULL,'waves just outside Napili Bay 3-4 ft, only 2 ft where sample taken');
INSERT INTO `samples` VALUES (1018,2,'2018-01-30 08:48:00',14,162,54,23.8,33.3,6.97,100.2,8.17,19.7,21.3,20.3,179.98,18.76,14.42,859.56,110.71,3.01,NULL,NULL);
INSERT INTO `samples` VALUES (1019,3,'2018-01-30 09:10:00',14,162,54,23.9,34.6,6.84,99.5,8.18,6.4,6.76,6.52,117.96,13.97,6.18,159.63,11.67,2.91,NULL,'access difficult due to severe erosion, large boulders at access point, and sandbags at hotel, requested review of site access with Dana - gathered 2 buckets of seawater');
INSERT INTO `samples` VALUES (1020,4,'2018-01-30 09:39:00',14,162,54,24.1,34.4,6.83,99.3,8.19,9.22,7.24,9.87,116.81,14.94,8.46,338.21,16.56,2.85,NULL,'large particles in seawater made turbidity results more variable');
INSERT INTO `samples` VALUES (1021,5,'2018-01-30 10:03:00',14,162,54,24.1,33,6.89,99.6,8.2,1.42,1.54,1.64,233.64,15.66,11.29,1296.2,174.33,3.5,NULL,'choppy water');
INSERT INTO `samples` VALUES (1022,6,'2018-01-30 10:25:00',14,162,54,24.2,33.2,6.84,99,8.2,2.16,2.19,2.22,129.35,18.46,13.7,1132.35,42.42,3.31,NULL,'choppy water');
INSERT INTO `samples` VALUES (1023,13,'2018-02-22 07:15:00',7,162,55,24,34,5.85,84.2,8.02,6.68,6.73,6.92,64.55,10.98,5.39,171.18,3.84,2.83,NULL,'Started sprinkling at last site.');
INSERT INTO `samples` VALUES (1024,14,'2018-02-22 07:45:00',7,162,55,24.7,34.5,6.19,90.2,8.07,3.13,3.06,3.14,53.73,9.55,4.45,244.62,5.33,1.67,NULL,NULL);
INSERT INTO `samples` VALUES (1025,15,'2018-02-22 08:02:00',7,162,55,24.6,34.4,5.9,85.7,8.03,3.28,3.19,3.31,59.57,10.57,4.8,355.88,5.04,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (1026,16,'2018-02-22 08:20:00',7,162,55,24.4,34.6,6.61,96,8.1,3.87,4.09,3.97,69.64,9.08,4.58,100.79,1.62,1.6,NULL,NULL);
INSERT INTO `samples` VALUES (1027,17,'2018-02-22 08:36:00',7,162,55,24.6,34.7,6.82,99.3,8.1,10.7,10.2,10.2,55.04,13.37,4.1,93.1,1.94,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (1028,18,'2018-02-22 08:52:00',7,162,55,24.6,34.7,6.51,94.9,8.11,3.96,4.73,4.38,59.11,9.16,5.24,128.4,5.93,1.99,NULL,NULL);
INSERT INTO `samples` VALUES (1029,7,'2018-02-21 08:10:00',6,162,55,23.7,34.2,6.11,87.3,8.04,1.23,1.2,0.94,80.63,11.99,6.26,284.37,5.63,1.46,NULL,'PFF - moderate flow 40 ft north of usual location');
INSERT INTO `samples` VALUES (1030,8,'2018-02-21 08:38:00',6,162,55,23.8,34.1,6.49,93.1,8.07,3.39,4.58,3.19,78.16,9.02,7.53,402.65,12.26,2.28,NULL,'PLH small amount standing water');
INSERT INTO `samples` VALUES (1031,9,'2018-02-21 09:00:00',6,162,55,24.3,33.9,6.28,90.8,8.08,5.88,5.36,5.01,77.73,9.25,7.34,371.22,10.31,2.73,NULL,'PLT 1.5 inch of mucky silt on bottom');
INSERT INTO `samples` VALUES (1032,10,'2018-02-21 09:25:00',6,162,55,24.4,33.4,7.1,102.5,8.19,3.12,3.53,4.67,75.81,12.49,4.98,447.99,1.39,3.06,NULL,NULL);
INSERT INTO `samples` VALUES (1033,11,'2018-02-21 09:41:00',6,162,55,24.7,34.5,7.08,103.4,8.15,2.62,2.89,2.76,59.68,11.75,3.47,129.6,1.11,1.18,NULL,NULL);
INSERT INTO `samples` VALUES (1034,12,'2018-02-21 10:00:00',6,162,55,24.7,34.6,6.92,101.3,8.07,2.33,2.64,2.83,80.87,15.7,5.17,114.45,3.84,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (1035,19,'2018-02-23 07:50:00',8,162,55,23.3,33.9,6.43,91.3,8.08,24.4,28.1,24.3,90.41,13.28,9.27,407.99,11.98,10.08,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (1036,21,'2018-02-23 08:40:00',8,162,55,24,34.4,7.06,101.7,8.15,2.28,2.39,2.51,67.42,13.6,5.48,262.16,8.69,2.22,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (1037,22,'2018-02-23 09:05:00',8,162,55,24.3,34.7,7,101.7,8.16,0.52,0.55,0.58,64.19,12.35,5.47,126.47,5.47,2.04,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (1038,23,'2018-02-23 09:35:00',8,162,55,24.5,33.7,7.16,103.7,8.14,0.97,0.81,0.92,127.05,12.71,12.1,651.28,65.37,3.93,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (1039,24,'2018-02-23 10:00:00',8,162,55,24.3,33.8,6.84,98.9,8.09,9.8,9.95,10.1,135.68,15.8,12.69,592.53,77.56,3.69,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (1040,25,'2018-02-23 10:20:00',8,162,55,25.1,34,7.17,105.1,8.15,4.65,5.13,5.94,93.7,9.52,8.81,450.21,23.8,2.61,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (1041,1,'2018-02-20 08:20:00',6,162,55,23.5,34.2,7.01,100.2,8.08,1.19,1.27,1.27,94.96,16.41,6.38,354.15,22.25,2.94,NULL,'very calm day for wind and waves, very rainy until yesterday');
INSERT INTO `samples` VALUES (1042,2,'2018-02-20 08:42:00',6,162,55,24,34.1,6.65,95.8,8.13,2.45,2.74,2.81,114.19,9.68,9.83,544.2,64.31,2.28,NULL,'very calm day for wind and waves, very rainy until yesterday');
INSERT INTO `samples` VALUES (1043,3,'2018-02-20 09:05:00',6,162,55,23.3,32.8,7.09,100.2,8.15,2.9,2.97,2.95,83.7,14.01,8.97,480.97,6.39,3.49,NULL,'very calm day for wind and waves, very rainy until yesterday, visitors asked what team was doing');
INSERT INTO `samples` VALUES (1044,4,'2018-02-20 09:23:00',6,162,55,24.3,34.2,6.9,99.9,8.17,1.75,1.92,1.75,90.84,12.77,8.12,438.37,21.69,2.05,NULL,'very calm day for wind and waves, very rainy until yesterday, visitors asked what team was doing');
INSERT INTO `samples` VALUES (1045,5,'2018-02-20 09:41:00',6,162,55,24.7,34.3,6.85,99.8,8.18,1.73,1.76,1.76,105.87,9.36,8.12,497.74,53.3,3.83,NULL,'very calm day for wind and waves, very rainy until yesterday, lifeguard asked about the water quality');
INSERT INTO `samples` VALUES (1046,6,'2018-02-20 09:58:00',6,162,55,24.4,32.5,6.99,100.4,8.19,1.25,1.33,1.39,114.71,20.7,18.22,1634.22,54.79,1.66,NULL,'very calm day for wind and waves, very rainy until yesterday');
INSERT INTO `samples` VALUES (1047,13,'2018-03-15 07:15:00',28,162,56,23.9,34.1,6.19,88.9,8.05,4.21,4.23,4.32,72.61,7.35,5.83,218.74,6.07,0.61,NULL,NULL);
INSERT INTO `samples` VALUES (1048,14,'2018-03-15 07:31:00',28,162,56,24.3,34.3,6.52,94.4,8.08,8.06,8.88,8.75,85.02,8.24,6.1,383.7,8.18,0.73,NULL,NULL);
INSERT INTO `samples` VALUES (1049,15,'2018-03-15 07:45:00',28,162,56,24.3,34.2,6.34,91.8,8.01,8.42,8.47,9.2,71.7,8.6,5.75,500.72,10.69,1.51,NULL,NULL);
INSERT INTO `samples` VALUES (1050,16,'2018-03-15 08:00:00',28,162,56,24.3,34.4,6.83,99,8.08,9.15,8.53,8.27,71.17,6.57,5.11,115.36,3.59,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (1051,17,'2018-03-15 08:14:00',28,162,56,24.8,34.6,6.93,101.3,8.13,6.58,7.8,7.31,76.38,5.79,4.37,107.53,5.37,0.69,NULL,NULL);
INSERT INTO `samples` VALUES (1052,18,'2018-03-15 08:30:00',28,162,56,24.9,34.6,6.87,100.6,8.07,7.64,6.67,7.22,58.51,5.6,4.22,163.56,1.52,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (1053,7,'2018-03-14 08:15:00',27,162,56,24.1,34,5.84,84.2,8.06,3.96,4.82,4.92,82.4,10.98,10.15,975.32,9.26,0.58,NULL,'PFF - moderate flow, 2 dogs');
INSERT INTO `samples` VALUES (1054,8,'2018-03-14 08:38:00',27,162,56,24.2,33.7,5.97,86.1,8.04,6.34,5.25,7.82,101.17,9.09,7.81,509.74,26.6,0.92,NULL,'PLH - no flow, 4 dogs');
INSERT INTO `samples` VALUES (1055,9,'2018-03-14 09:00:00',27,162,56,24.5,33.3,5.91,85.6,8.03,1.86,1.91,2.07,89.53,9.25,6.12,274.46,11.77,2.69,NULL,'1 dog');
INSERT INTO `samples` VALUES (1056,10,'2018-03-14 09:36:00',27,162,56,24.4,34.1,6.97,101.2,8.18,3.19,4.28,4.48,74.79,10.11,4.4,232.21,2.63,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (1057,11,'2018-03-14 09:54:00',27,162,56,24.9,34.6,7.07,103.7,8.16,3.57,2.51,3.29,168.78,12.28,8.09,84.14,5.75,3.47,NULL,NULL);
INSERT INTO `samples` VALUES (1058,12,'2018-03-14 10:23:00',27,162,56,24.8,34.5,6.89,100.9,8.11,4.06,5.16,4.72,90.46,9.14,6.01,194.71,9.36,2.23,NULL,'Increasing amounts of a brown algae on rocks in water surrounding pier');
INSERT INTO `samples` VALUES (1059,19,'2018-03-16 07:48:00',1,162,56,23.4,33.5,6.09,86.5,8.1,10.1,10,10.5,75.12,11.23,9.61,417.58,3.1,2.89,NULL,'moderate to light stream flow');
INSERT INTO `samples` VALUES (1060,21,'2018-03-16 08:35:00',1,162,56,24.2,34.6,6.94,100.4,8.17,1.53,1.51,1.53,71.16,7.7,4.54,104.2,6.75,0.28,NULL,'no stream flow');
INSERT INTO `samples` VALUES (1061,22,'2018-03-16 09:05:00',1,162,56,24.7,34.7,7.09,103.7,8.18,0.48,0.42,0.44,80.82,6.06,4.61,93.01,5.36,0.48,NULL,'water very clear');
INSERT INTO `samples` VALUES (1062,23,'2018-03-16 09:35:00',1,162,56,25.1,32.2,7.14,103.4,8.14,1.04,1.17,1.16,230.31,19.7,19,1601.9,178.38,4.03,NULL,'lots of people within sampling vicinity');
INSERT INTO `samples` VALUES (1063,24,'2018-03-16 10:01:00',1,162,56,25.3,33.4,6.69,98.1,8.1,7.25,6.89,6.98,138.61,14.75,12.89,710.96,77.76,2.15,NULL,'started clouding over');
INSERT INTO `samples` VALUES (1064,25,'2018-03-16 10:25:00',1,162,56,25.8,33.6,6.82,100.8,8.13,4.21,4.16,4.2,120.84,13.07,11.18,740.29,34.27,11.81,NULL,'clouding over');
INSERT INTO `samples` VALUES (1065,1,'2018-03-13 08:10:00',26,162,56,22.8,34.4,7.04,99.3,8.16,1.14,1.32,1.39,101.72,9.44,6.89,215.9,14.74,1.51,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (1066,2,'2018-03-13 08:40:00',26,162,56,22.8,32.2,7.13,99.1,8.16,8.4,8.21,8.62,324.37,21.56,20.44,1662.02,292.77,2.27,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (1067,3,'2018-03-13 09:02:00',26,162,56,21.5,24,7.66,99.2,8.18,7.91,7.87,8.02,100.69,9.92,8.58,1104.59,12.22,1.42,NULL,'dark and dismal day, light rain, not sure about stream flow. parking has become tighter due to workmen shoring up beach to protect the hotel');
INSERT INTO `samples` VALUES (1068,4,'2018-03-13 09:22:00',26,162,56,23.6,33.9,6.88,98,8.16,7.63,8.9,7.62,80.46,13.2,8.69,331.58,9.23,0.73,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (1069,5,'2018-03-13 09:39:00',26,162,56,24.3,33,6.97,99.9,8.18,1.47,1.3,1.46,225.94,14.56,11.56,1269.55,177.44,2.02,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (1070,6,'2018-03-13 09:56:00',26,162,56,24.4,34.1,6.84,98.9,8.2,0.9,0.91,0.94,91.93,9.9,5.86,367.28,17.11,0.28,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (1071,13,'2018-04-05 07:10:00',20,162,57,25.1,34.4,6.14,90.5,8.11,3.25,3.93,4.04,79.33,13.35,6.14,191.97,5.19,1.43,NULL,'Rain overnight. ');
INSERT INTO `samples` VALUES (1072,14,'2018-04-05 07:30:00',20,162,57,26.6,34.2,6.22,94,8.06,4.96,5.11,5.95,65.34,11.43,4.62,241.2,4.49,0.78,NULL,NULL);
INSERT INTO `samples` VALUES (1073,15,'2018-04-05 07:42:00',20,162,57,26.4,33.7,5.52,82.7,8.03,2.5,2.67,2.38,68.04,9.37,5.4,470.8,5.26,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (1074,16,'2018-04-05 07:59:00',20,162,57,25.2,34.2,6.7,98.8,8.13,9.3,10.7,9.98,63.96,10.49,4.72,102.4,1.33,0.72,NULL,'Ukumehame stream flowing');
INSERT INTO `samples` VALUES (1075,17,'2018-04-05 08:15:00',20,162,57,25.3,34.1,6.74,99.6,8.1,22.4,23.7,22.3,72.11,8.38,5.09,122.49,6.25,0.83,NULL,NULL);
INSERT INTO `samples` VALUES (1076,18,'2018-04-05 08:30:00',20,162,57,25.7,34.3,6.5,96.8,8.08,18.9,20,19.6,63.61,7.73,5,95.06,1,0.28,NULL,'Slight drizzle as we sampled.');
INSERT INTO `samples` VALUES (1077,7,'2018-04-04 08:25:00',19,162,57,25.5,32.3,6.38,93.7,8.05,10.7,11.6,10.9,84.17,18.37,10.52,871.66,10.66,1.52,NULL,'Stream flowing');
INSERT INTO `samples` VALUES (1078,8,'2018-04-04 08:45:00',19,162,57,25.5,32.5,6.26,91.9,8.09,14.9,15.8,14.5,138.78,19.88,12.4,707.9,48.36,6.87,NULL,'Heavy rains carved sand by culvert and there was still a light flow ');
INSERT INTO `samples` VALUES (1079,9,'2018-04-04 09:05:00',19,162,57,25.9,33.1,6.41,95.2,8.1,8.3,9.3,9.41,119.55,19.24,8.98,539.28,25.01,8.14,NULL,NULL);
INSERT INTO `samples` VALUES (1080,10,'2018-04-04 09:33:00',19,162,57,25.6,33.6,6.81,100.9,8.16,16.3,14.5,15.9,84.04,13.95,5.27,335.57,6.12,0.72,NULL,NULL);
INSERT INTO `samples` VALUES (1081,11,'2018-04-04 09:55:00',19,162,57,25.7,34.2,6.8,101.1,8.12,8.09,7.86,8.97,84.29,12.8,5.26,145.55,4.62,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (1082,12,'2018-04-04 10:20:00',19,162,57,26.3,34.2,6.66,100.2,8.09,5.16,4.53,4.07,83.4,14.49,7.32,241.88,7.22,3.92,NULL,NULL);
INSERT INTO `samples` VALUES (1083,19,'2018-04-06 07:50:00',21,162,57,23.8,34.4,6.54,92.9,8.19,3.22,3.1,2.94,84.11,9.58,7.42,700.7,5.12,2.85,NULL,'rain in last 24 hours, light rain while testing, car testing area wet, stream flowing but not sure how much from data sheet');
INSERT INTO `samples` VALUES (1084,21,'2018-04-06 08:30:00',21,162,57,24.3,34,6.96,100.5,8.17,5.9,5.67,6.82,109.75,13.14,7.29,395.45,17.37,4.92,NULL,'rain in last 24 hours, light rain while testing, car testing area wet, stream not flowing, leaves in water');
INSERT INTO `samples` VALUES (1085,22,'2018-04-06 09:05:00',21,162,57,24.5,34.4,6.98,101.7,8.19,0.67,0.52,0.46,82.35,12.93,4.4,151.26,9.81,1.37,NULL,'rain in last 24 hours, light rain while testing, car testing area wet');
INSERT INTO `samples` VALUES (1086,23,'2018-04-06 09:30:00',21,162,57,25,32.1,6.76,98,8.12,0.88,0.91,0.77,285.1,24.62,22.09,1823.13,222.36,4.39,NULL,'rain in last 24 hours, mist while testing, car testing area wet');
INSERT INTO `samples` VALUES (1087,24,'2018-04-06 09:50:00',21,162,57,25.6,34.2,6.04,89.4,8.11,3.89,3.46,3.33,102.61,10.87,8.74,335.18,36.11,3.55,NULL,'rain in last 24 hours, sunny while testing, stream not flowing, amount of cloud cover unknown');
INSERT INTO `samples` VALUES (1088,25,'2018-04-06 10:10:00',21,162,57,25.7,33.8,6.75,99.8,8.13,1.13,1.31,1.33,81.22,6.3,5.57,296.43,12.58,0.98,NULL,'rain in last 24 hours, sunny while testing, amount of cloud cover unknown');
INSERT INTO `samples` VALUES (1089,1,'2018-04-03 08:20:00',18,162,57,24.8,33,6.96,102,8.15,0.96,1.02,1.34,113.59,26.77,12.27,794.55,50.3,3.13,NULL,'big storms previous night ... calm in morning.');
INSERT INTO `samples` VALUES (1090,2,'2018-04-03 08:42:00',18,162,57,24.5,32.8,6.65,96.7,8.18,2.15,2.23,2.3,168.08,24.79,11.88,835.51,107.44,2.58,NULL,'watched workers previous day moving sand at Pohaku and clearing out drain');
INSERT INTO `samples` VALUES (1091,3,'2018-04-03 09:02:00',18,162,57,24.6,33.7,6.82,99.7,8.17,8.6,8.44,8.08,116.74,20.28,8.12,240.39,13.45,8.09,NULL,'big storms previous night ... calm in morning.');
INSERT INTO `samples` VALUES (1092,4,'2018-04-03 09:20:00',18,162,57,25.2,33.7,6.85,101.2,8.22,1.72,1.76,1.76,129.94,20.71,9.58,661.3,43.46,2.38,NULL,'cloudier at airport beach with dark clouds.');
INSERT INTO `samples` VALUES (1093,5,'2018-04-03 09:39:00',18,162,57,24.9,33.8,6.82,100.3,8.21,1.95,1.99,2.14,219.23,19.54,8.91,584.36,69.31,12.42,NULL,'big storms previous night ... calm in morning.');
INSERT INTO `samples` VALUES (1094,6,'2018-04-03 09:54:00',18,162,57,24.7,33.7,6.81,99.9,8.22,0.93,0.85,0.94,105.15,19.56,7.06,381.2,20.62,3.96,NULL,'light rain at Wahikuli, windier and higher waves.');
INSERT INTO `samples` VALUES (1095,13,'2018-04-26 07:10:00',11,162,58,24.7,34,5.84,85,8.08,1.22,1.47,1.49,85.02,14.31,4.57,184.56,5.52,2.01,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (1096,14,'2018-04-26 07:30:00',11,162,58,24.6,33.8,6.52,94.6,8.1,2.5,2.74,2.95,79.61,8.14,4.45,369.24,6.52,1.84,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (1097,15,'2018-04-26 07:47:00',11,162,58,24.4,33.9,6.08,88,8.08,1.59,1.55,1.58,80.6,7.12,4.54,287.82,3.8,1.85,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (1098,16,'2018-04-26 08:03:00',11,162,58,24.6,34.2,6.83,99.2,8.12,4.97,4.87,5.31,124.62,7.59,4.97,110.02,6.17,1.8,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (1099,17,'2018-04-26 08:20:00',11,162,58,24.9,34.1,6.95,101.7,8.15,3.51,3.03,3.27,94.18,6.28,4.34,209.21,10.41,2.12,NULL,'No rain in last 24 hours, wind became light onshore');
INSERT INTO `samples` VALUES (1100,18,'2018-04-26 08:40:00',11,162,58,24.7,33.9,7,102.4,8.17,1.93,2.22,2.37,81.58,6.58,4.49,166.47,2.99,1.2,NULL,'No rain in last 24 hours, wind became light onshore');
INSERT INTO `samples` VALUES (1101,7,'2018-04-25 08:20:00',10,162,58,25,34.1,6.66,97.3,8.07,1.05,0.97,1.04,98.44,7.6,5.86,225.88,6.11,1.42,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours, stream flowing');
INSERT INTO `samples` VALUES (1102,8,'2018-04-25 08:45:00',10,162,58,25.4,33.7,6.6,96.8,8.09,2.21,2.13,2.03,96.74,8.56,5.93,319.61,5.08,1.86,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours, water flowing through tube from street forming \'pond\' on beach but not going into ocean');
INSERT INTO `samples` VALUES (1103,9,'2018-04-25 09:10:00',10,162,58,25.5,34.2,6.73,99.4,8.11,1.56,1.52,1.48,96.75,7.27,4.68,76.8,5.93,2.67,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (1104,10,'2018-04-25 09:45:00',10,162,58,25.7,33.4,6.94,102.2,8.19,1.73,1.54,1.81,91.91,11.74,4.51,233.68,1.82,1.3,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (1105,11,'2018-04-25 10:19:00',10,162,58,26.3,34.1,6.95,103.9,8.18,5.16,5.37,4.59,91.32,12.91,4.35,102.38,3.14,1.27,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (1106,12,'2018-04-25 10:50:00',10,162,58,26.3,33.6,7.3,108.3,8.2,3.09,2.99,2.96,100.42,9.31,5.56,300.27,5.3,2.59,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (1107,19,'2018-04-27 07:55:00',12,162,58,24.1,31.3,6.47,92,8.14,24.8,25.7,23.5,82.03,8.51,7.74,546.96,2.28,3.72,NULL,'rained in last 24 hours, walk to sample site was muddy, but no rain when sampling, stream flowing into ocean at RHL');
INSERT INTO `samples` VALUES (1108,21,'2018-04-27 08:30:00',12,162,58,24.7,34.1,6.89,100.5,8.16,1.19,1.35,1.23,87.75,6.39,5.58,132.25,7.7,1.44,NULL,'rained in last 24 hours, but no rain when sampling, stream not flowing into ocean at RFN');
INSERT INTO `samples` VALUES (1109,22,'2018-04-27 09:00:00',12,162,58,24.9,34.1,6.92,101.4,8.16,0.66,0.46,0.53,74.68,6.85,4.18,103.91,1.22,2.86,NULL,'rained in last 24 hours, but no rain when sampling');
INSERT INTO `samples` VALUES (1110,23,'2018-04-27 09:25:00',12,162,58,24.9,31.1,6.52,93.9,8.05,1.75,0.85,1.64,356.21,29.59,27.61,2383.19,307.82,3.41,NULL,'rained in last 24 hours, but no rain when sampling');
INSERT INTO `samples` VALUES (1111,24,'2018-04-27 09:52:00',12,162,58,25,32.4,6.55,95.1,8.1,5.4,4.98,4.84,170.2,16.27,12.88,937.2,103.15,2.32,NULL,'rained in last 24 hours, but no rain when sampling,  1 fisherman with 2 poles here at RKO');
INSERT INTO `samples` VALUES (1112,25,'2018-04-27 10:10:00',12,162,58,25.4,32.3,6.72,98,8.15,3.49,2.97,3.7,113.43,11.46,9.57,1020.34,46.68,0.87,NULL,'rained in last 24 hours, but no rain when sampling');
INSERT INTO `samples` VALUES (1113,1,'2018-04-24 08:14:00',9,162,58,24.2,33.4,6.99,100.4,8.12,1.26,1.32,1.49,122.24,13.23,11.12,649.69,38.07,2.52,NULL,'rained in last 24 hours, dark clouds/rain while testing');
INSERT INTO `samples` VALUES (1114,2,'2018-04-24 08:37:00',9,162,58,24.5,32.1,6.53,93.3,8.14,1.69,2.03,1.94,409.95,17.05,16.44,1745.71,362.21,2,NULL,'rained in last 24 hours, sprinkling light rain while testing, lots of limu floating in water');
INSERT INTO `samples` VALUES (1115,3,'2018-04-24 08:56:00',9,162,58,24.2,33.4,7.02,100.8,8.12,2.55,2.1,2.42,94.13,7.53,5.52,360.3,5.34,1.38,NULL,'rained in last 24 hours, stream flowing north of sample site');
INSERT INTO `samples` VALUES (1116,4,'2018-04-24 09:15:00',9,162,58,24.9,33.8,6.76,98.4,8.15,0.66,0.68,0.67,97.53,7.53,5.99,269.07,8.62,2.4,NULL,'rained in last 24 hours, getting windier');
INSERT INTO `samples` VALUES (1117,5,'2018-04-24 09:33:00',9,162,58,25.2,32.6,7.1,103.2,8.16,1.98,1.92,1.76,259.62,13.54,11.24,1173.56,165.15,3.31,NULL,'rained in last 24 hours, sunny with light mist while testing, several fishermen set up');
INSERT INTO `samples` VALUES (1118,6,'2018-04-24 09:48:00',9,162,58,25.5,33.3,6.83,100.3,8.17,0.67,0.65,0.7,97.94,11.48,7.6,475.93,16.61,1.33,NULL,'rained in last 24 hours, calm');
INSERT INTO `samples` VALUES (1119,13,'2018-05-17 07:16:00',4,162,59,25.7,34.3,5.7,84.6,8.06,1.81,1.99,1.88,88.71,13.81,6.21,148.3,4.29,1.94,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (1120,14,'2018-05-17 07:41:00',4,162,59,26.7,34.2,6.25,94.5,8.08,3.79,3.98,3.73,79.58,11.45,6.58,310.23,8.91,1.16,NULL,'VOG and haze, 1 fisherman north of sampling');
INSERT INTO `samples` VALUES (1121,15,'2018-05-17 08:01:00',4,162,59,27.2,34.2,5.89,89.7,8.03,2.24,2.21,2.36,81.76,12.99,6.23,349.56,8.52,1.75,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (1122,16,'2018-05-17 08:26:00',4,162,59,26.9,34.4,6.61,100.3,8.12,5.54,5.52,5.98,80.1,13.48,5.73,90.04,5.38,0.39,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (1123,17,'2018-05-17 08:44:00',4,162,59,27.5,34.5,6.96,106.2,8.2,3.42,3.49,3.28,102.43,12.99,5.05,85.77,2.54,3.83,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (1124,18,'2018-05-17 09:04:00',4,162,59,27.1,34.5,6.78,103.3,8.15,3.65,3.67,3.31,70.84,12.63,5.25,75.34,1.33,0.28,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (1125,7,'2018-05-16 08:20:00',3,162,59,25.7,34,6.52,96.6,8.12,3.32,2.75,3.15,82.5,8.17,7.14,222.96,3.03,0.88,NULL,'Moderate flow in stream');
INSERT INTO `samples` VALUES (1126,8,'2018-05-16 08:43:00',3,162,59,26.5,34.1,6.77,101.6,8.07,1.09,1.24,1.18,93.5,8.87,6.6,117.31,7.67,2.16,NULL,'storm drain not flowing. Lots of dogs on beach');
INSERT INTO `samples` VALUES (1127,9,'2018-05-16 09:03:00',3,162,59,27,34.3,7.05,106.8,8.1,1.7,2.58,2.12,85.14,8.71,5.74,135.3,8.13,2.72,NULL,'Had to walk out very far to get knee deep - 2 dogs in water');
INSERT INTO `samples` VALUES (1128,11,'2018-05-16 09:33:00',3,162,59,28.3,34.4,7.16,111,8.19,1.99,2.11,1.86,81.43,6.2,4.37,126.61,1.49,0.53,NULL,'Aldo jumped in next to sampler to take pictures');
INSERT INTO `samples` VALUES (1129,12,'2018-05-16 09:59:00',3,162,59,27.6,34.4,7.04,107.9,8.15,3.04,3.61,3.41,93.17,8.27,7.3,178.92,6.82,3.85,NULL,'Very low tide, hard to sample without kicking up sediment');
INSERT INTO `samples` VALUES (1130,19,'2018-05-18 08:05:00',4,162,59,25.3,33.6,6.22,91.2,8.13,7.08,7.2,7.49,105.05,14.33,10.03,420.64,5.82,5.26,NULL,'rained in last 24 hours, rain sprinkles while there');
INSERT INTO `samples` VALUES (1131,21,'2018-05-18 08:40:00',4,162,59,25.3,33.8,6.83,100.3,8.19,0.72,0.72,0.69,95.44,13,6.56,352,11.2,0.86,NULL,'rained in last 24 hours, streams not flowing');
INSERT INTO `samples` VALUES (1132,22,'2018-05-18 09:11:00',4,162,59,25.7,34.3,7.09,105.3,8.22,0.41,0.37,0.34,81.62,14.16,4.77,111.35,2.82,0.28,NULL,'rained in last 24 hours, 2 dogs on beach');
INSERT INTO `samples` VALUES (1133,23,'2018-05-18 09:37:00',4,162,59,26.5,31.7,6.59,97.8,8.07,1.09,1.16,1.07,320.91,23.76,23.15,1891.18,227.72,2.73,NULL,'rained in last 24 hours');
INSERT INTO `samples` VALUES (1134,24,'2018-05-18 10:04:00',4,162,59,26.4,33.6,6.72,100.6,8.17,4.7,5.02,4.68,139.68,15.27,10.77,616.01,65.11,1.41,NULL,'rained in last 24 hours, no water flowing out pipe');
INSERT INTO `samples` VALUES (1135,25,'2018-05-18 10:23:00',4,162,59,26.4,33.5,6.52,97.5,8.16,1.73,2.27,1.99,102.78,14.51,7.4,556.05,26.08,2.55,NULL,'rained in last 24 hours');
INSERT INTO `samples` VALUES (1136,1,'2018-05-15 08:13:00',1,162,59,25,33.8,6.88,100.9,8.17,1.58,1.56,1.63,157.41,12.82,12.19,601.59,37.89,4.48,NULL,NULL);
INSERT INTO `samples` VALUES (1137,2,'2018-05-15 08:35:00',1,162,59,25,31.3,6.94,100.4,8.19,2.2,2.53,2.9,340.09,21.71,20.15,1906.65,257.37,2.71,NULL,'Particularly big chunks in water contributing to variability in turbidity readings');
INSERT INTO `samples` VALUES (1138,3,'2018-05-15 08:54:00',1,162,59,23.2,13.8,7.79,98.8,8.23,9.4,9.27,9.6,173.84,16.27,13.24,2275.59,49.33,4.14,NULL,'Brown water near shore - CM checked stream to north which was running into ocean and very muddy, south swell, had trouble filtering nutrient sample and didn\'t get as large a filtered sample since first filter clogged and used a second filter to filter the last 10 ml');
INSERT INTO `samples` VALUES (1139,4,'2018-05-15 09:20:00',1,162,59,25.7,33.6,6.83,101.5,8.21,2.9,2.75,3.62,108.11,14.96,9.79,646.84,28.72,1.53,NULL,NULL);
INSERT INTO `samples` VALUES (1140,5,'2018-05-15 09:38:00',1,162,59,25.6,33,6.75,99.8,8.19,2.12,2.03,2.14,248.23,19.34,13.69,1208.84,159.8,4.5,NULL,'brown water only to about 10 feet from shore, 3 fishermen on the beach with 12 fishing poles set up in the surf, canoes going by');
INSERT INTO `samples` VALUES (1141,6,'2018-05-15 09:54:00',1,162,59,25.4,33.1,6.82,100.3,8.22,1.75,1.79,1.78,107.35,17.83,14.29,1010.01,34.04,0.59,NULL,NULL);
INSERT INTO `samples` VALUES (1142,13,'2018-06-07 07:12:00',24,162,60,24.5,34.1,5.38,78.2,8.02,0.9,0.99,0.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Peter Martin engaged in conversation about WQ. Wanted to know how cesspools affect WQ.');
INSERT INTO `samples` VALUES (1143,14,'2018-06-07 07:46:00',24,162,60,25.3,34.1,6.33,93.1,8.08,2.73,2.9,3.44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1144,15,'2018-06-07 07:57:00',24,162,60,25.3,34.1,5.7,83.9,8.03,1.99,2.11,2.26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1145,16,'2018-06-07 08:13:00',24,162,60,25,34.4,6.61,96.9,8.09,8,7.86,8.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1146,17,'2018-06-07 08:26:00',24,162,60,24.9,34.4,6.89,101,8.13,2.74,2.99,3.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1147,18,'2018-06-07 08:40:00',24,162,60,25.2,34.3,6.84,100.6,8.13,1.68,1.86,1.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1148,7,'2018-06-06 08:12:00',23,162,60,26.2,33.6,6.26,93.2,8.02,2.02,2.13,2.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light flow at PFF');
INSERT INTO `samples` VALUES (1149,8,'2018-06-06 08:45:00',23,162,60,26,34,6.08,90.4,8.06,2.45,2.78,2.81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1150,9,'2018-06-06 08:57:00',23,162,60,26.4,34.1,6.21,93.1,8.03,1.61,1.52,1.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1151,11,'2018-06-06 09:25:00',23,162,60,26.6,34.3,6.77,102.1,8.12,1.25,1.3,1.35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1152,12,'2018-06-06 09:56:00',23,162,60,26.4,34.2,7.21,108.1,8.08,2.14,2.2,2.04,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1153,19,'2018-06-08 07:51:00',25,162,60,25.1,31.8,6.37,92,8.07,15.5,14.8,15.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in last 24 hours, but sprinkles while there');
INSERT INTO `samples` VALUES (1154,21,'2018-06-08 08:30:00',25,162,60,25.6,33.8,6.8,100.2,8.1,6.07,6.69,6.11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in last 24 hours');
INSERT INTO `samples` VALUES (1155,22,'2018-06-08 09:00:00',25,162,60,25.6,34.3,6.81,100.7,8.11,0.37,0.36,0.35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in last 24 hours, but sprinkles while there, turtle came onto beach while there');
INSERT INTO `samples` VALUES (1156,23,'2018-06-08 09:35:00',25,162,60,26.1,32.5,6.78,99.9,8.03,2.05,2.01,1.63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in last 24 hours, guard reported DOH tested there the day before, turbidity tested a 4th time for value \'2.10\' ');
INSERT INTO `samples` VALUES (1157,24,'2018-06-08 09:56:00',25,162,60,26,33.1,6.61,97.5,8.04,16.1,17.7,18.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in last 24 hours, but sprinkles while there, dog on beach and in water while there');
INSERT INTO `samples` VALUES (1158,25,'2018-06-08 10:18:00',25,162,60,26.3,33.7,6.67,99.2,8.08,15,17.2,18.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in last 24 hours, large slow-settling particles in turbitiy sample, turbidity tested a 4th time for value \'17.9\' ');
INSERT INTO `samples` VALUES (1159,1,'2018-06-05 08:35:00',22,162,60,25.8,33.6,7,103.3,8.2,2.15,2.24,2.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1160,2,'2018-06-05 09:15:00',22,162,60,25.7,33.1,6.82,100,8.21,4.5,4.88,4.79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1161,3,'2018-06-05 09:48:00',22,162,60,25.6,34.2,6.91,101.9,8.18,8.1,7.48,8.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'brown water - stream flowing into ocean just north of sample site');
INSERT INTO `samples` VALUES (1162,4,'2018-06-05 10:14:00',22,162,60,26.3,33.9,6.85,102.2,8.22,2.05,1.85,1.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1163,5,'2018-06-05 10:45:00',22,162,60,26.5,33.6,6.78,101.3,8.25,7.16,7.19,7.47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dead fish on beach, surf advisory flags up, surf churned up');
INSERT INTO `samples` VALUES (1164,6,'2018-06-05 11:06:00',22,162,60,26.3,33.7,6.72,100.2,8.24,3.05,3.21,3.35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'occasional set of waves larger than \'2\' wave size');
INSERT INTO `samples` VALUES (1165,13,'2018-06-28 07:25:00',15,162,61,25.8,34.3,6,89.4,8.09,1.6,1.54,1.43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Team noted that temp on DO probe 0.2 C higher than salinity probe.  This is within tolerance.');
INSERT INTO `samples` VALUES (1166,14,'2018-06-28 07:40:00',15,162,61,26,34.3,6.39,95.6,8.07,4.86,5.51,5.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1167,16,'2018-06-28 08:01:00',15,162,61,26.5,34.6,6.71,101.4,8.17,14.6,14,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1168,17,'2018-06-28 08:18:00',15,162,61,26.3,34.6,6.93,104.4,8.19,5.71,4.9,5.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1169,18,'2018-06-28 08:38:00',15,162,61,25.9,34.6,6.91,103.5,8.18,2.99,3.44,3.64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1170,7,'2018-06-27 08:10:00',14,162,61,26,34.3,6.31,94.4,8.09,2.31,2.86,2.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1171,8,'2018-06-27 08:31:00',14,162,61,26.1,34.2,6.32,94.6,8.09,1.64,2.12,1.91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1172,9,'2018-06-27 08:59:00',14,162,61,26.4,34.6,6.63,101.1,8.1,2.19,2.27,2.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1173,12,'2018-06-27 09:30:00',14,162,61,26,34.6,6.55,98.2,8.11,4.67,4.77,5.66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1174,19,'2018-06-29 07:40:00',16,162,61,25.1,33.1,6.11,89.4,8.16,2.3,2.05,2.06,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shark warning sign posted');
INSERT INTO `samples` VALUES (1175,22,'2018-06-29 08:30:00',16,162,61,25.2,34.4,6.97,103,8.19,0.41,0.38,0.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1176,23,'2018-06-29 09:00:00',16,162,61,25.4,31.9,6.86,100.2,8.11,4.47,3.68,3.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1177,24,'2018-06-29 09:25:00',16,162,61,25.5,33.2,6.68,98.4,8.09,9.73,10.6,11.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1178,25,'2018-06-29 09:50:00',16,162,61,25.2,33.7,6.66,97.9,8.1,11.3,12.6,9.23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1179,1,'2018-06-26 08:05:00',13,162,61,25.8,33.3,6.83,100.9,8.14,2.47,2.53,2.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1180,2,'2018-06-26 08:31:00',13,162,61,25.7,32.8,6.6,97,8.19,1.89,1.59,1.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 fisherman at Pohaku with 3 rods, light sprinkles');
INSERT INTO `samples` VALUES (1181,3,'2018-06-26 08:53:00',13,162,61,25.1,30.6,6.71,96.4,8.15,4.83,4.56,4.48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1182,5,'2018-06-26 09:38:00',13,162,61,26.4,33,6.94,103.4,8.2,1.24,1.46,1.09,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'canoe practice');
INSERT INTO `samples` VALUES (1183,6,'2018-06-26 09:55:00',13,162,61,26,33.3,6.77,100.4,8.21,1.85,1.91,1.97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1184,13,'2018-07-19 07:15:00',7,162,62,25.5,34.1,5.96,88,8.1,6.51,5.49,5.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1185,14,'2018-07-19 07:33:00',7,162,62,25.9,34.2,6.51,96.9,8.12,13.6,11.6,12.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1186,16,'2018-07-19 07:49:00',7,162,62,26.3,34.3,6.62,99.1,8.19,16.9,17.1,16.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1187,17,'2018-07-19 08:02:00',7,162,62,26.1,34.3,6.75,100.7,8.2,8.82,8.92,8.48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1188,18,'2018-07-19 08:14:00',7,162,62,26.1,34.2,6.72,100.3,8.2,5.27,3.8,3.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1189,7,'2018-07-18 08:15:00',6,162,62,27,33.6,6.33,95.6,8.08,5.74,6.57,5.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1190,8,'2018-07-18 08:40:00',6,162,62,27.2,33.7,6.18,93.8,8.1,20,22.2,20.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1191,9,'2018-07-18 09:00:00',6,162,62,27.4,33.9,6.05,92.3,8.13,14.1,17.8,20.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1192,12,'2018-07-18 09:35:00',6,162,62,27.3,34.3,6.8,103.7,8.15,2.2,2.93,2.19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1193,19,'2018-07-20 07:45:00',8,162,62,25.9,33.5,5.8,86,8.17,2.02,2.91,1.73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours, stream flowing, major clearing of path to Honolua Bay');
INSERT INTO `samples` VALUES (1194,22,'2018-07-20 08:45:00',8,162,62,26.4,34.3,6.67,100.2,8.25,0.93,0.9,0.93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1195,23,'2018-07-20 09:15:00',8,162,62,26.8,33.5,6.49,97.9,8.18,2.55,2.27,2.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1196,24,'2018-07-20 00:00:00',NULL,162,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'road blocked by workers, tree-trimminig or road work, no access to sample site');
INSERT INTO `samples` VALUES (1197,25,'2018-07-20 09:50:00',8,162,62,27.1,33.8,6.6,100.1,8.16,18.6,18.6,16.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1198,1,'2018-07-17 08:15:00',5,162,62,26.2,33.5,6.7,99.9,8.08,2.13,1.67,1.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (1199,2,'2018-07-17 08:35:00',5,162,62,26.2,33,6.2,92.1,8.08,1.87,2.47,2.28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours, 2 people within 10 ft of sampler, presumably in the water though not stated in notes');
INSERT INTO `samples` VALUES (1200,3,'2018-07-17 08:58:00',5,162,62,26.1,33.7,6.77,100.7,8.12,5.51,5.51,5.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours. brown streaks out in the ocean. on right and left side of sample area brown streaks were 2-3 ft off shore and the brown streak straight out from sample area was about 50 ft off shore. a stream flows into the ocean north of the sample site and stream water was connected to the ocean. But flow direction of stream water was not easy to determine: Trades appeared to push stream surface toward ocean and ocean waves appeared to move upstream (CM). Stream water looked clear, not like the brown streaks observed in the ocean.');
INSERT INTO `samples` VALUES (1201,5,'2018-07-17 09:20:00',5,162,62,26.9,33.1,6.75,101.6,8.23,2.2,2.35,2.22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (1202,6,'2018-07-17 09:32:00',5,162,62,27,33.7,6.56,99.3,8.17,1.73,1.7,1.62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (1203,13,'2018-08-09 07:20:00',28,162,63,26.9,34.5,5.39,82.4,8.05,1.18,1.16,1.16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Another encounter with Peter Martin asking about water quality data in the Wahikuli region.  Esp nutrient data.');
INSERT INTO `samples` VALUES (1204,14,'2018-08-09 07:35:00',28,162,63,26.9,34.3,6.09,93,8.06,3.79,4.55,3.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1205,16,'2018-08-09 07:50:00',28,162,63,26.5,34.4,6.55,99.3,8.14,13.9,13.3,13.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Surfer asked questions about water quality');
INSERT INTO `samples` VALUES (1206,17,'2018-08-09 08:05:00',28,162,63,26.3,34.6,6.61,100.1,8.14,10,9.14,10.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1207,18,'2018-08-09 08:17:00',28,162,63,26.5,34.6,6.63,100.6,8.16,7.31,6.34,7.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1208,7,'2018-08-08 08:30:00',27,162,63,26.5,34,6.33,95.8,8.09,1.76,2.11,2.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1209,8,'2018-08-08 08:55:00',27,162,63,26.6,34.3,6.41,97.1,8.1,2.34,2.34,2.12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1210,9,'2018-08-08 09:19:00',27,162,63,26.9,34.6,6.56,100.2,8.12,2.15,2.31,2.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1211,12,'2018-08-08 09:55:00',27,162,63,27.2,34.6,6.92,106.3,8.14,2.14,2.04,2.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1212,19,'2018-08-10 07:59:00',28,162,63,24.9,19.2,6.97,94,8.2,18.5,18.1,19.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south');
INSERT INTO `samples` VALUES (1213,22,'2018-08-10 08:40:00',28,162,63,26.4,34.2,6.79,102.2,8.2,0.97,0.81,0.77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south');
INSERT INTO `samples` VALUES (1214,23,'2018-08-10 09:42:00',28,162,63,26.6,32.2,7.07,105.8,8.16,10.6,10.5,9.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south');
INSERT INTO `samples` VALUES (1215,24,'2018-08-10 10:13:00',28,162,63,27.1,32.8,6.65,100.5,8.11,16,17.1,18.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south, 2 fishermen on the beach reported wastewater smell at north end of beach');
INSERT INTO `samples` VALUES (1216,25,'2018-08-10 10:38:00',28,162,63,27.4,33.9,7.09,108.4,8.2,20.3,19.1,17.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south, large particles present in water');
INSERT INTO `samples` VALUES (1217,1,'2018-08-07 08:08:00',25,162,63,25.5,33.7,6.76,100.4,8.12,2.13,2,2.24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (1218,2,'2018-08-07 08:32:00',25,162,63,26.2,33.9,6.61,98.9,8.18,5.07,5.1,6.03,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (1219,3,'2018-08-07 08:53:00',25,162,63,25.6,34.3,6.57,97.7,8.14,8.02,7.68,8.07,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (1220,5,'2018-08-07 09:15:00',25,162,63,26.9,33.7,6.71,101.7,8.19,11.4,11.1,10.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours, Kukui nuts from the stream causing bad smell/water conditions. strong shore break, low tide');
INSERT INTO `samples` VALUES (1221,6,'2018-08-07 09:31:00',25,162,63,27.1,33.9,6.6,100.4,8.21,2.34,2.87,2.41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no idea about rain in last 24 hours. no waves, strong shore break');
INSERT INTO `samples` VALUES (1222,13,'2018-08-30 07:15:00',20,162,64,25.8,34.3,6.2,92.3,8.13,11.4,12.7,11.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lahaina fire 5 days previous of date. Blank pre-sample a little high.');
INSERT INTO `samples` VALUES (1223,14,'2018-08-30 07:28:00',20,162,64,26,34.3,6.21,92.8,8.11,3.62,3.31,3.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1224,16,'2018-08-30 07:50:00',20,162,64,24.8,34.5,6.77,99.2,8.16,18.6,18.1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1225,17,'2018-08-30 08:03:00',20,162,64,25,34.3,6.77,99.6,8.17,5.79,5.3,5.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Slight drizzle');
INSERT INTO `samples` VALUES (1226,18,'2018-08-30 08:15:00',20,162,64,25.6,34.1,6.47,95.8,8.15,14,13.7,12.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DO display on meter intermitant');
INSERT INTO `samples` VALUES (1227,7,'2018-08-29 08:10:00',19,162,64,27.5,32.5,6.1,92.3,8.09,4.06,3.9,4.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Seal nearby');
INSERT INTO `samples` VALUES (1228,8,'2018-08-29 08:43:00',19,162,64,27.6,33.5,5.87,89.6,8.09,9.5,9.85,11.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'First turbidity reading was low and group took 4 more readings.');
INSERT INTO `samples` VALUES (1229,9,'2018-08-29 09:10:00',19,162,64,27.8,33.6,6.05,92.9,8.11,4.03,3.81,3.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1230,12,'2018-08-29 09:45:00',19,162,64,27.9,34,6.65,102.3,8.16,3.49,3.76,3.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1231,19,'2018-08-31 07:50:00',21,162,64,25.3,33.5,6.3,92.9,8.15,2.5,2.58,2.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours, stream was flowing but no indication how much');
INSERT INTO `samples` VALUES (1232,22,'2018-08-31 08:25:00',21,162,64,25.9,34.3,6.72,100.5,8.2,0.78,0.71,0.73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (1233,23,'2018-08-31 08:50:00',21,162,64,26.6,32.5,6.47,96.9,8.13,1.28,1.53,1.43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (1234,24,'2018-08-31 09:35:00',21,162,64,26.7,33.9,6.26,94.6,8.14,6.85,7.05,7.24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (1235,25,'2018-08-31 09:50:00',21,162,64,26.8,33.8,6.21,94.1,8.13,13.5,15.2,14.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (1236,1,'2018-08-28 08:12:00',18,162,64,26.4,33.2,6.65,99.5,8.13,1.62,1.46,1.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (1237,2,'2018-08-28 08:35:00',18,162,64,26.8,31.8,6.49,96.9,8.19,2.23,3.18,2.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (1238,3,'2018-08-28 08:55:00',18,162,64,26.7,29.7,6.64,97.9,8.15,13.6,15.6,16.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours, brown water 100 yards');
INSERT INTO `samples` VALUES (1239,5,'2018-08-28 09:14:00',18,162,64,27.8,32.6,6.5,99.3,8.17,63.4,63.9,65.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours, brown red water, lots of debris/kukui nuts');
INSERT INTO `samples` VALUES (1240,6,'2018-08-28 09:32:00',18,162,64,27.5,32.6,6.62,100.6,8.24,1.32,1.57,1.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (1241,13,'2018-09-20 07:20:00',11,162,65,27,34.3,5.28,80.6,8.03,1.44,1.4,1.73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1242,14,'2018-09-20 07:33:00',11,162,65,27.3,34.4,6.02,92.4,8.11,2.15,2.2,2.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1243,16,'2018-09-20 07:55:00',11,162,65,27.3,34.6,6.39,98.1,8.12,15.2,15.4,15.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1244,17,'2018-09-20 08:10:00',11,162,65,27.6,34.6,6.57,101.5,8.14,6.9,6.49,6.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1245,18,'2018-09-20 08:21:00',11,162,65,27.6,34.4,6.45,99.4,8.14,4.78,5.37,4.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1246,7,'2018-09-19 08:11:00',10,162,65,26.9,33.7,6.02,91.2,8.05,5.73,5.08,5.12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1247,8,'2018-09-19 08:37:00',10,162,65,27.2,34.4,6.1,93.4,8.06,3.14,2.98,2.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1248,9,'2018-09-19 08:55:00',10,162,65,27.3,31.4,6.05,92.6,8.07,3.7,3.41,3.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1249,12,'2018-09-19 09:26:00',10,162,65,27.4,34.5,6.47,99.3,8.1,1.33,1.53,1.71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (1250,19,'2018-09-21 07:53:00',12,162,65,26.5,33.8,5.73,86.4,8.12,20.6,19.9,19.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (1251,22,'2018-09-21 08:41:00',12,162,65,26.9,34.5,6.58,100.5,8.2,1.05,1.06,1.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (1252,23,'2018-09-21 09:14:00',12,162,65,27.1,32.8,6.44,97.6,8.09,5.71,3.09,2.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (1253,24,'2018-09-21 09:43:00',12,162,65,27.4,33.9,5.88,90.1,8.11,29.1,30.4,29.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (1254,25,'2018-09-21 10:05:00',12,162,65,27.7,33.6,6.34,97.4,8.16,82.1,72.2,76.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure about rain in the last 24 hours, did not check stream flow, brown water way out into ocean, KV manager anecdote is that the residual brown water is from the tropical storm');
INSERT INTO `samples` VALUES (1255,1,'2018-09-18 08:11:00',9,162,65,25.7,33.4,6.3,93.1,8.09,10.1,11.1,10.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure if it rained in the last 24 hours, light sprinkles while there');
INSERT INTO `samples` VALUES (1256,2,'2018-09-18 08:39:00',9,162,65,26.5,32.6,6.41,95.8,8.19,5.02,4.91,4.43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure if it rained in the last 24 hours, sunny and no rain while there');
INSERT INTO `samples` VALUES (1257,3,'2018-09-18 08:57:00',9,162,65,25.8,34.3,6.36,94.7,8.14,7.38,7.58,7.21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure if it rained in the last 24 hours, sunny and no rain while there, water in channel but fairly clear, not much flow');
INSERT INTO `samples` VALUES (1258,5,'2018-09-18 09:18:00',9,162,65,27.6,34.3,6.38,97.9,8.19,7.81,7.85,7.59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure if it rained in the last 24 hours, sunny and no rain');
INSERT INTO `samples` VALUES (1259,6,'2018-09-18 09:34:00',9,162,65,27.7,34,6.46,99.3,8.22,0.74,0.75,0.76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sure if it rained in the last 24 hours, sunny and no rain');
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
  `first_sample_day` date NOT NULL,
  `equipment_verification_day` date DEFAULT NULL COMMENT 'Not being used until equipment is stored in DB.',
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `natural` (`lab_id`,`session_number`),
  UNIQUE KEY `session` (`session_id`,`lab_id`,`session_number`) COMMENT 'cover the surrogate key and natural key',
  UNIQUE KEY `session_date` (`lab_id`,`first_sample_day`) COMMENT 'No lab should not have two sessions that start on the same date.',
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,1,'2016-06-14',NULL);
INSERT INTO `sessions` VALUES (2,1,2,'2016-06-28',NULL);
INSERT INTO `sessions` VALUES (3,1,3,'2016-07-12',NULL);
INSERT INTO `sessions` VALUES (4,1,4,'2016-07-26',NULL);
INSERT INTO `sessions` VALUES (5,1,5,'2016-08-10',NULL);
INSERT INTO `sessions` VALUES (6,1,6,'2016-08-23',NULL);
INSERT INTO `sessions` VALUES (7,1,7,'2016-09-06',NULL);
INSERT INTO `sessions` VALUES (8,1,8,'2016-09-20',NULL);
INSERT INTO `sessions` VALUES (9,1,9,'2016-10-04',NULL);
INSERT INTO `sessions` VALUES (10,1,10,'2016-10-18',NULL);
INSERT INTO `sessions` VALUES (11,1,11,'2016-11-01',NULL);
INSERT INTO `sessions` VALUES (12,1,12,'2016-11-15',NULL);
INSERT INTO `sessions` VALUES (13,1,13,'2016-11-29',NULL);
INSERT INTO `sessions` VALUES (14,1,14,'2016-12-13',NULL);
INSERT INTO `sessions` VALUES (15,1,15,'2017-01-03',NULL);
INSERT INTO `sessions` VALUES (16,1,16,'2017-01-24',NULL);
INSERT INTO `sessions` VALUES (17,1,17,'2017-02-14',NULL);
INSERT INTO `sessions` VALUES (18,1,18,'2017-03-07',NULL);
INSERT INTO `sessions` VALUES (19,1,19,'2017-03-28',NULL);
INSERT INTO `sessions` VALUES (20,1,20,'2017-04-18',NULL);
INSERT INTO `sessions` VALUES (21,1,21,'2017-05-10',NULL);
INSERT INTO `sessions` VALUES (22,1,22,'2017-05-30',NULL);
INSERT INTO `sessions` VALUES (23,1,23,'2017-06-20',NULL);
INSERT INTO `sessions` VALUES (24,1,24,'2017-07-11',NULL);
INSERT INTO `sessions` VALUES (25,1,25,'2017-08-01',NULL);
INSERT INTO `sessions` VALUES (26,1,26,'2017-08-22',NULL);
INSERT INTO `sessions` VALUES (27,1,27,'2017-09-12',NULL);
INSERT INTO `sessions` VALUES (28,2,1,'2017-11-07',NULL);
INSERT INTO `sessions` VALUES (29,2,2,'2017-11-21',NULL);
INSERT INTO `sessions` VALUES (30,2,3,'2017-12-05',NULL);
INSERT INTO `sessions` VALUES (31,2,4,'2017-12-19',NULL);
INSERT INTO `sessions` VALUES (32,2,5,'2018-01-09',NULL);
INSERT INTO `sessions` VALUES (33,2,6,'2018-01-23',NULL);
INSERT INTO `sessions` VALUES (34,2,7,'2018-02-06',NULL);
INSERT INTO `sessions` VALUES (35,2,8,'2018-02-20',NULL);
INSERT INTO `sessions` VALUES (36,2,9,'2018-03-06',NULL);
INSERT INTO `sessions` VALUES (37,2,10,'2018-03-20',NULL);
INSERT INTO `sessions` VALUES (38,2,11,'2018-04-03',NULL);
INSERT INTO `sessions` VALUES (39,2,12,'2018-04-17',NULL);
INSERT INTO `sessions` VALUES (40,2,13,'2018-05-01',NULL);
INSERT INTO `sessions` VALUES (41,2,14,'2018-05-15',NULL);
INSERT INTO `sessions` VALUES (42,2,15,'2018-05-29',NULL);
INSERT INTO `sessions` VALUES (43,2,16,'2018-06-19',NULL);
INSERT INTO `sessions` VALUES (44,2,17,'2018-07-10',NULL);
INSERT INTO `sessions` VALUES (45,2,18,'2018-07-31',NULL);
INSERT INTO `sessions` VALUES (46,2,19,'2018-08-21',NULL);
INSERT INTO `sessions` VALUES (47,2,20,'2018-09-11',NULL);
INSERT INTO `sessions` VALUES (48,1,28,'2017-10-03',NULL);
INSERT INTO `sessions` VALUES (49,1,29,'2017-10-24',NULL);
INSERT INTO `sessions` VALUES (50,1,30,'2017-11-14',NULL);
INSERT INTO `sessions` VALUES (51,1,31,'2017-12-05',NULL);
INSERT INTO `sessions` VALUES (52,1,32,'2017-12-19',NULL);
INSERT INTO `sessions` VALUES (53,1,33,'2018-01-09',NULL);
INSERT INTO `sessions` VALUES (54,1,34,'2018-01-30',NULL);
INSERT INTO `sessions` VALUES (55,1,35,'2018-02-20',NULL);
INSERT INTO `sessions` VALUES (56,1,36,'2018-03-13',NULL);
INSERT INTO `sessions` VALUES (57,1,37,'2018-04-03',NULL);
INSERT INTO `sessions` VALUES (58,1,38,'2018-04-24',NULL);
INSERT INTO `sessions` VALUES (59,1,39,'2018-05-15',NULL);
INSERT INTO `sessions` VALUES (60,1,40,'2018-06-05',NULL);
INSERT INTO `sessions` VALUES (61,1,41,'2018-06-26',NULL);
INSERT INTO `sessions` VALUES (62,1,42,'2018-07-17',NULL);
INSERT INTO `sessions` VALUES (63,1,43,'2018-08-07',NULL);
INSERT INTO `sessions` VALUES (64,1,44,'2018-08-28',NULL);
INSERT INTO `sessions` VALUES (65,1,45,'2018-09-18',NULL);
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
  `hui_abv` char(3) NOT NULL COMMENT 'ex: RAB',
  `storet_code` char(6) DEFAULT NULL,
  `long_name` varchar(32) NOT NULL COMMENT 'ex: Airport Beach',
  `lab_id` int(10) unsigned NOT NULL,
  `default_sample_day` int(11) NOT NULL COMMENT 'Day in the session that this site is typically sampled.  1st day is calibration verification.',
  `default_session_order` int(11) NOT NULL COMMENT 'Ordinality of this site in a session.',
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Some sites are tested, then removed.',
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE KEY `hui_abv` (`hui_abv`),
  UNIQUE KEY `storet_code` (`storet_code`),
  KEY `sites_ibfk_1` (`lab_id`),
  CONSTRAINT `sites_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'RNS','000723','Napili',1,1,1,20.994222,-156.667417,1,NULL);
INSERT INTO `sites` VALUES (2,'RPO','000724','Pohaku',1,1,2,20.967083,-156.68139,1,NULL);
INSERT INTO `sites` VALUES (3,'RKS',NULL,'Kaanapali Shores',1,1,3,20.949331,-156.691124,1,NULL);
INSERT INTO `sites` VALUES (4,'RAB','000695','Airport Beach',1,1,4,20.936669,-156.69278,1,NULL);
INSERT INTO `sites` VALUES (5,'RCB','000693','Canoe Beach',1,1,5,20.910347,-156.689382,1,NULL);
INSERT INTO `sites` VALUES (6,'RWA','000678','Wahikuli',1,1,6,20.904476,-156.685931,1,NULL);
INSERT INTO `sites` VALUES (7,'PFF',NULL,'505 Front Street',1,2,7,20.86732,-156.67605,1,NULL);
INSERT INTO `sites` VALUES (8,'PLH',NULL,'Lindsey Hale',1,2,8,20.86485,-156.67374,1,NULL);
INSERT INTO `sites` VALUES (9,'PLT','000726','Lahaina Town',1,2,9,20.86356,-156.67297,1,NULL);
INSERT INTO `sites` VALUES (10,'PPU',NULL,'Makila Point',1,2,10,20.859233,-156.669442,1,NULL);
INSERT INTO `sites` VALUES (11,'OLP',NULL,'Launiupoko',1,2,11,20.84236,-156.653035,1,NULL);
INSERT INTO `sites` VALUES (12,'OSF','000663','Olowalu Shore Front',1,2,12,20.80916,-156.62289,1,NULL);
INSERT INTO `sites` VALUES (13,'OPM',NULL,'Peter Martin Hale',1,3,13,20.808444,-156.619697,1,NULL);
INSERT INTO `sites` VALUES (14,'OCO',NULL,'Camp Olowalu',1,3,14,20.80986,-156.61369,1,NULL);
INSERT INTO `sites` VALUES (15,'OMM',NULL,'Mile Marker 14',1,3,15,20.80915,-156.60661,1,NULL);
INSERT INTO `sites` VALUES (16,'OUB','000698','Ukumehame Beach',1,3,16,20.79448,-156.58142,1,NULL);
INSERT INTO `sites` VALUES (17,'OPB','000728','Papalaua',1,3,17,20.793809,-156.575211,1,NULL);
INSERT INTO `sites` VALUES (18,'OPP',NULL,'Papalaua Pali',1,3,18,20.792747,-156.567326,1,NULL);
INSERT INTO `sites` VALUES (19,'RHL','000707','Honolua',1,4,19,21.013058,-156.63834,1,NULL);
INSERT INTO `sites` VALUES (20,'RMO','000721','Mokuleia',1,4,19,21.011352,-156.64227,0,NULL);
INSERT INTO `sites` VALUES (21,'RFN','000674','DT Beach (Fleming N)',1,4,20,21.005,-156.65084,1,NULL);
INSERT INTO `sites` VALUES (22,'RON','000722','Oneloa',1,4,21,21.004056,-156.65894,1,NULL);
INSERT INTO `sites` VALUES (23,'RFS','000650','Kapalua Bay (Fleming S)',1,4,22,20.998924,-156.666746,1,NULL);
INSERT INTO `sites` VALUES (24,'RKO','000692','Ka\'opala',1,4,23,20.982074,-156.673398,1,NULL);
INSERT INTO `sites` VALUES (25,'RKV',NULL,'Kahana Village',1,4,24,20.976561,-156.678,1,NULL);
INSERT INTO `sites` VALUES (26,'KWP','000713','Waipuilani Park',2,1,1,20.755056,-156.459602,1,NULL);
INSERT INTO `sites` VALUES (27,'KKS','000676','Kihei South (Lipoa)',2,1,2,20.747334,-156.457881,1,NULL);
INSERT INTO `sites` VALUES (28,'KKP','000679','Kalama Park',2,1,3,20.730973,-156.45372,1,NULL);
INSERT INTO `sites` VALUES (29,'KCP','000703','Cove Park',2,1,4,20.727434,-156.450077,1,NULL);
INSERT INTO `sites` VALUES (30,'KKO','000681','Kamaole Beach I',2,1,5,20.721985,-156.448183,1,NULL);
INSERT INTO `sites` VALUES (31,'KKT','000683','Kamaole Beach III',2,1,6,20.712908,-156.446596,1,NULL);
INSERT INTO `sites` VALUES (32,'MML',NULL,'Makena Landing',2,2,7,20.653913,-156.441174,1,NULL);
INSERT INTO `sites` VALUES (33,'MMB',NULL,'Maluaka Beach',2,2,8,20.645598,-156.443859,1,NULL);
INSERT INTO `sites` VALUES (34,'MON',NULL,'Oneuli',2,2,9,20.639866,-156.447406,1,NULL);
INSERT INTO `sites` VALUES (35,'MBS',NULL,'Makena Beach Shoreline',2,2,10,20.63061,-156.446183,1,NULL);
INSERT INTO `sites` VALUES (36,'MAN',NULL,'Ahihi North',2,2,11,20.618366,-156.437572,1,NULL);
INSERT INTO `sites` VALUES (37,'MAS',NULL,'Ahihi South',2,2,12,20.6138,-156.436853,1,NULL);
INSERT INTO `sites` VALUES (38,'NHP','000687','Haycraft Park',2,3,13,20.796414,-156.503198,1,NULL);
INSERT INTO `sites` VALUES (39,'NKP','000711','Kealia Pond',2,3,14,20.794936,-156.485587,1,NULL);
INSERT INTO `sites` VALUES (40,'NSB',NULL,'Sugar Beach',2,3,15,20.784204,-156.466463,1,NULL);
INSERT INTO `sites` VALUES (41,'NKC','000671','Kihei Canoe Club',2,3,16,20.781403,-156.463176,1,NULL);
INSERT INTO `sites` VALUES (42,'NMP','000702','Mai Poina \'Oe Ia\'u',2,3,17,20.774894,-156.460776,1,NULL);
INSERT INTO `sites` VALUES (43,'NKN',NULL,'Kalepolepo North',2,3,18,20.765132,-156.459344,1,NULL);
INSERT INTO `sites` VALUES (44,'WKD','000704','Kilohana Dr',2,4,19,20.702214,-156.445921,1,NULL);
INSERT INTO `sites` VALUES (45,'WKB','000685','Keawekapu Beach',2,4,20,20.695939,-156.444632,1,NULL);
INSERT INTO `sites` VALUES (46,'WUL','000686','Ulua Beach',2,4,21,20.69112,-156.444201,1,NULL);
INSERT INTO `sites` VALUES (47,'WWA','000691','Wailea Beach',2,4,22,20.68156,-156.443524,1,NULL);
INSERT INTO `sites` VALUES (48,'WPL','000715','Palauea',2,4,23,20.669565,-156.442907,1,NULL);
INSERT INTO `sites` VALUES (49,'WPO','000716','Poolenalena (Chang\'s Beach)',2,4,24,20.66339,-156.441968,1,NULL);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_roles` (`user_id`,`role_id`),
  KEY `role` (`role_id`),
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1);
INSERT INTO `user_roles` VALUES (1,2);
INSERT INTO `user_roles` VALUES (2,5);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `initials` varchar(3) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(64) NOT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `salt` char(32) DEFAULT NULL COMMENT 'salt and hash are used to generate and check the password',
  `hash` char(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_idx` (`email`) COMMENT 'The email is their user id',
  UNIQUE KEY `initials_idx` (`initials`) COMMENT 'just in case first and last name match another user.'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','root','99',1,'root@root.com',NULL,'014f8f5784eaeee325fbaf29b8170871','bed6ea8f4cae38603163ef5f7fa320a85bc07382c73066de935de1b8f29cd6c5e9e8d0473a657789f3f8ad2e95b2a083d258cb436176078b09e7797751ae58e3');
INSERT INTO `users` VALUES (2,'The','Guest','G',1,'guest',NULL,'969b6a075f1b27ff7e63187f3ca93d4d','6a7f5fdfd3ae70a604b658fb0c05f9ce0449ac1ef30e264c2387b33196080111153bca4d019acc5c3089a63ca47f081006708ce4c1b68918261714f761547267');
INSERT INTO `users` VALUES (3,'Cathy','Maxwell','CM',1,'jandcmax@gmail.com','808-456-1234',NULL,NULL);
INSERT INTO `users` VALUES (4,'Dana','Reed','DR',1,'dreedyah@yahoo.com','720-567-3412',NULL,NULL);
INSERT INTO `users` VALUES (5,'George','Burnette','GB',1,'ggb7676@gmail.com',NULL,NULL,NULL);
INSERT INTO `users` VALUES (6,'Bill','Rathfon','BR',1,'brathfon@gmail.com',NULL,NULL,NULL);
INSERT INTO `users` VALUES (7,'Sofia','de laSota','SD',1,'delasota@hawaii.edu',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
/*!50001 VIEW `base_sample_report` AS select `sess`.`lab_id` AS `lab_id`,`sam`.`sample_id` AS `sample_id`,concat(`site`.`hui_abv`,convert(date_format(`sam`.`date_and_time`,'%y%m%d') using latin1)) AS `sampleID`,`site`.`long_name` AS `long_name`,`site`.`hui_abv` AS `hui_abv`,`sess`.`session_number` AS `session_number`,date_format(`sam`.`date_and_time`,'%m/%d/%y') AS `day`,date_format(`sam`.`date_and_time`,'%H:%i') AS `time`,replace(format(`sam`.`temperature`,1),' ','') AS `temperature`,replace(format(`sam`.`salinity`,1),' ','') AS `salinity`,replace(format(`sam`.`dissolved_oxygen`,2),' ','') AS `dissolved_oxygen`,replace(format(`sam`.`dissolved_oxygen_pct`,2),' ','') AS `dissolved_oxygen_pct`,replace(format(`sam`.`ph`,2),' ','') AS `ph`,replace(format(`sam`.`turbidity_1`,2),' ','') AS `turbidity_1`,replace(format(`sam`.`turbidity_2`,2),' ','') AS `turbidity_2`,replace(format(`sam`.`turbidity_3`,2),' ','') AS `turbidity_3`,replace(format(round((((`sam`.`turbidity_1` + `sam`.`turbidity_2`) + `sam`.`turbidity_3`) / 3.0),2),2),' ','') AS `avg_turbidity`,replace(format(`sam`.`total_nitrogen`,2),' ','') AS `total_nitrogen`,replace(format(`sam`.`total_phosphorus`,2),' ','') AS `total_phosphorus`,replace(format(`sam`.`phosphate`,2),' ','') AS `phosphate`,replace(format(`sam`.`silicate`,2),',','') AS `silicate`,replace(format(`sam`.`nitrates`,2),',','') AS `nitrates`,replace(format(`sam`.`ammonia`,2),' ','') AS `ammonia`,replace(format(`site`.`lat`,6),' ','') AS `lat`,replace(format(`site`.`lon`,6),' ','') AS `lon`,`sam`.`comments` AS `comments` from ((`samples` `sam` join `sites` `site`) join `sessions` `sess`) where ((`sess`.`session_id` = `sam`.`session_id`) and (`sam`.`site_id` = `site`.`site_id`)) order by `sess`.`lab_id`,`sam`.`date_and_time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comments_diff_report`
--

/*!50001 DROP VIEW IF EXISTS `comments_diff_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comments_diff_report` AS select `base_sample_report`.`lab_id` AS `lab_id`,`base_sample_report`.`sampleID` AS `sampleID`,`base_sample_report`.`long_name` AS `long_name`,`base_sample_report`.`hui_abv` AS `hui_abv`,`base_sample_report`.`session_number` AS `session_number`,`base_sample_report`.`day` AS `day`,`base_sample_report`.`time` AS `time`,`base_sample_report`.`comments` AS `comments` from `base_sample_report` where (`base_sample_report`.`comments` is not null) order by `base_sample_report`.`lab_id`,`base_sample_report`.`session_number`,`base_sample_report`.`day`,`base_sample_report`.`time` */;
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
-- Final view structure for view `insitu_diff_report`
--

/*!50001 DROP VIEW IF EXISTS `insitu_diff_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `insitu_diff_report` AS select `base_sample_report`.`lab_id` AS `lab_id`,`base_sample_report`.`sampleID` AS `sampleID`,`base_sample_report`.`long_name` AS `long_name`,`base_sample_report`.`hui_abv` AS `hui_abv`,`base_sample_report`.`session_number` AS `session_number`,`base_sample_report`.`day` AS `day`,`base_sample_report`.`time` AS `time`,`base_sample_report`.`temperature` AS `temperature`,`base_sample_report`.`salinity` AS `salinity`,`base_sample_report`.`dissolved_oxygen` AS `dissolved_oxygen`,`base_sample_report`.`dissolved_oxygen_pct` AS `dissolved_oxygen_pct`,`base_sample_report`.`ph` AS `ph`,`base_sample_report`.`turbidity_1` AS `turbidity_1`,`base_sample_report`.`turbidity_2` AS `turbidity_2`,`base_sample_report`.`turbidity_3` AS `turbidity_3`,`base_sample_report`.`avg_turbidity` AS `avg_turbidity` from `base_sample_report` order by `base_sample_report`.`lab_id`,`base_sample_report`.`session_number`,`base_sample_report`.`day`,`base_sample_report`.`time` */;
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
/*!50001 VIEW `lab_sessions_overview` AS select `l`.`lab_id` AS `lab_id`,`l`.`lab_code` AS `lab_code`,`l`.`short_name` AS `short_name`,`l`.`long_name` AS `long_name`,`s`.`session_number` AS `session_number`,`s`.`first_sample_day` AS `first_sample_day` from (`labs` `l` join `sessions` `s`) where (`l`.`lab_id` = `s`.`lab_id`) order by `l`.`lab_code`,`s`.`session_number` */;
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
-- Final view structure for view `nutrient_diff_report`
--

/*!50001 DROP VIEW IF EXISTS `nutrient_diff_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nutrient_diff_report` AS select `base_sample_report`.`lab_id` AS `lab_id`,`base_sample_report`.`sampleID` AS `sampleID`,`base_sample_report`.`long_name` AS `long_name`,`base_sample_report`.`hui_abv` AS `hui_abv`,`base_sample_report`.`session_number` AS `session_number`,`base_sample_report`.`day` AS `day`,`base_sample_report`.`time` AS `time`,`base_sample_report`.`total_nitrogen` AS `total_nitrogen`,`base_sample_report`.`total_phosphorus` AS `total_phosphorus`,`base_sample_report`.`phosphate` AS `phosphate`,`base_sample_report`.`silicate` AS `silicate`,`base_sample_report`.`nitrates` AS `nitrates`,`base_sample_report`.`ammonia` AS `ammonia`,`base_sample_report`.`lat` AS `lat`,`base_sample_report`.`lon` AS `lon` from `base_sample_report` order by `base_sample_report`.`lab_id`,`base_sample_report`.`session_number`,`base_sample_report`.`day`,`base_sample_report`.`time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qa_issues_base_report`
--

/*!50001 DROP VIEW IF EXISTS `qa_issues_base_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qa_issues_base_report` AS select `sess`.`lab_id` AS `lab_id`,`sam`.`sample_id` AS `sample_id`,`site`.`long_name` AS `long_name`,concat(`site`.`hui_abv`,convert(date_format(`sam`.`date_and_time`,'%y%m%d') using latin1)) AS `sampleID`,`sess`.`session_number` AS `session_number`,date_format(`sam`.`date_and_time`,'%m/%d/%y') AS `day`,date_format(`sam`.`date_and_time`,'%H:%i') AS `time`,`qis`.`sample_column_name` AS `sample_column_name`,`qis`.`description` AS `description` from (((`samples` `sam` join `sites` `site`) join `sessions` `sess`) join `qa_issue_samples` `qis`) where ((`sess`.`session_id` = `sam`.`session_id`) and (`sam`.`site_id` = `site`.`site_id`) and (`sam`.`sample_id` = `qis`.`sample_id`)) order by `sess`.`lab_id`,`sess`.`session_number`,`sam`.`date_and_time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qa_issues_report`
--

/*!50001 DROP VIEW IF EXISTS `qa_issues_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qa_issues_report` AS select `qa_issues_base_report`.`lab_id` AS `lab_id`,`qa_issues_base_report`.`session_number` AS `session_number`,`qa_issues_base_report`.`long_name` AS `long_name`,`qa_issues_base_report`.`day` AS `day`,`qa_issues_base_report`.`time` AS `time`,`qa_issues_base_report`.`sample_column_name` AS `sample_column_name`,`qa_issues_base_report`.`description` AS `description` from `qa_issues_base_report` */;
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

-- Dump completed on 2018-11-11 12:07:38
