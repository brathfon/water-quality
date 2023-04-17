-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: water_quality
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `base_sample_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sample_id`,
 1 AS `sampleID`,
 1 AS `sampling_order`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `the_date`,
 1 AS `the_time`,
 1 AS `temperature`,
 1 AS `salinity`,
 1 AS `dissolved_oxygen`,
 1 AS `dissolved_oxygen_pct`,
 1 AS `ph`,
 1 AS `turbidity_1`,
 1 AS `turbidity_2`,
 1 AS `turbidity_3`,
 1 AS `avg_turbidity`,
 1 AS `nutrient_sample_taken`,
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
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `comments_diff_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `the_date`,
 1 AS `the_time`,
 1 AS `comments`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `diff_report`
--

DROP TABLE IF EXISTS `diff_report`;
/*!50001 DROP VIEW IF EXISTS `diff_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `diff_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `the_date`,
 1 AS `the_time`,
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
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `insitu_diff_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `the_date`,
 1 AS `the_time`,
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
SET character_set_client = utf8mb4;
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
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `lab_sessions_overview` AS SELECT 
 1 AS `lab_id`,
 1 AS `lab_code`,
 1 AS `short_name`,
 1 AS `long_name`,
 1 AS `session_id`,
 1 AS `session_number`,
 1 AS `first_sample_day`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `labs`
--

DROP TABLE IF EXISTS `labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(65) NOT NULL COMMENT 'who was logged in and using the app, but may have messages before user logs in.',
  `logging_level` varchar(16) NOT NULL COMMENT 'correspond to bootstrap values: primary, secondary, success, info, warning, danger',
  `title` varchar(64) NOT NULL,
  `json_text` varchar(512) DEFAULT NULL COMMENT 'array of strings to further describe the logged information',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `max_session_numbers_for_labs`
--

DROP TABLE IF EXISTS `max_session_numbers_for_labs`;
/*!50001 DROP VIEW IF EXISTS `max_session_numbers_for_labs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `measurement_precision` (
  `measurement_precision_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `measurement_name` varchar(64) DEFAULT NULL,
  `number_of_decimals` int(11) DEFAULT NULL,
  PRIMARY KEY (`measurement_precision_id`),
  UNIQUE KEY `name_idx` (`measurement_name`),
  KEY `measurement_precision_idx` (`measurement_precision_id`,`measurement_name`) COMMENT 'cover index'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `nutrient_diff_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sampleID`,
 1 AS `long_name`,
 1 AS `hui_abv`,
 1 AS `session_number`,
 1 AS `the_date`,
 1 AS `the_time`,
 1 AS `nutrient_sample_taken`,
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_issue_samples`
--

LOCK TABLES `qa_issue_samples` WRITE;
/*!40000 ALTER TABLE `qa_issue_samples` DISABLE KEYS */;
INSERT INTO `qa_issue_samples` VALUES (1,27,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (2,27,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (3,49,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (4,49,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (5,307,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (6,307,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (7,628,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (8,629,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (9,630,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (10,631,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (11,632,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (12,633,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (13,634,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (14,635,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (15,636,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (16,637,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (17,638,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (18,639,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (19,640,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (20,641,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (21,642,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (22,643,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (23,644,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (24,645,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (25,646,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (26,647,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (27,690,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (28,690,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (29,690,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (30,696,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (31,740,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (32,996,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (33,996,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (34,1192,'turbidity_1','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (35,1192,'turbidity_2','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (36,1192,'turbidity_3','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (37,1193,'turbidity_1','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (38,1193,'turbidity_2','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (39,1193,'turbidity_3','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (40,1194,'turbidity_1','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (41,1194,'turbidity_2','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (42,1194,'turbidity_3','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (43,1253,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (44,1253,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (45,1302,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (46,1302,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (47,1613,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (48,1623,'turbidity_1','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (49,1623,'turbidity_2','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (50,1623,'turbidity_3','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (51,1658,'turbidity_1','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (52,1658,'turbidity_2','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (53,1658,'turbidity_3','Turbidity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (54,1728,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (55,1758,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (56,1758,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (57,1798,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (58,1799,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (59,1800,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (60,1801,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (61,1802,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (62,1803,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (63,1827,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (64,1827,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (65,1829,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (66,1830,'salinity','Salinity','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (67,2829,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (68,2953,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (69,2954,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (70,2955,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (71,2956,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (72,2957,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (73,3026,'ph','pH','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (74,3516,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (75,3516,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (76,3517,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (77,3517,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (78,3519,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (79,3519,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (80,3520,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (81,3520,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (82,3521,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (83,3521,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (84,3522,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (85,3522,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (86,3523,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (87,3523,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (88,3524,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (89,3524,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (90,3525,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (91,3525,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (92,3526,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (93,3526,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (94,3527,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (95,3527,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (96,3528,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (97,3528,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (98,3529,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (99,3529,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (100,3530,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (101,3530,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (102,3531,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (103,3531,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (104,3542,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (105,3542,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (106,3543,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (107,3543,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (108,3544,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (109,3544,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (110,3545,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (111,3545,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (112,3546,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (113,3546,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (114,3547,'dissolved_oxygen','DO','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (115,3547,'dissolved_oxygen_pct','DO%','QA\'ed out');
INSERT INTO `qa_issue_samples` VALUES (116,2388,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (117,2391,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (118,2601,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (119,2607,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (120,2610,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (121,2618,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (122,2656,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (123,2658,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (124,2664,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (125,2683,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (126,2805,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (127,2788,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (128,2791,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (129,2881,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (130,2869,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (131,2865,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (132,2876,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (133,2896,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (134,2898,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (135,2900,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (136,2887,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (137,2893,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (138,2895,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (139,2976,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (140,3062,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (141,3049,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (142,3053,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (143,3069,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (144,3094,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (145,3095,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (146,3097,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (147,3088,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (148,3099,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (149,3103,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (150,3108,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (151,3120,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (152,3122,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (153,3133,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (154,3136,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (155,3138,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (156,3161,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (157,3170,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (158,3173,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (159,3192,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (160,3195,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (161,3208,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (162,3200,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (163,3205,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (164,3227,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (165,3248,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (166,3312,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (167,3330,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (168,3340,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (169,3346,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (170,3381,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (171,3403,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (172,3497,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (173,3577,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (174,3568,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (175,3570,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (176,3600,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (177,3602,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (178,3632,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (179,3634,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (180,3637,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (181,3659,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (182,1585,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (183,1616,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (184,1607,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (185,1602,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (186,1639,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (187,1642,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (188,1637,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (189,1638,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (190,1665,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (191,1650,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (192,1652,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (193,1654,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (194,1677,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (195,1679,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (196,1666,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (197,1722,'nitrates','NNN','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (198,1761,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (199,1763,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (200,1753,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (201,1756,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (202,1757,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (203,1747,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (204,1749,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (205,1750,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (206,1751,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (207,1752,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (208,1780,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (209,1764,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (210,1769,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (211,1795,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (212,1814,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (213,1808,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (214,1798,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (215,1799,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (216,1801,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (217,2274,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (218,2260,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (219,2254,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (220,2256,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (221,2264,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (222,2280,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (223,2328,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (224,2336,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (225,540,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (226,547,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (227,594,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (228,601,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (229,667,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (230,704,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (231,705,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (232,706,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (233,748,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (234,758,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (235,785,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (236,799,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (237,839,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (238,1054,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (239,1080,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (240,1086,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (241,1122,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (242,1271,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (243,1499,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (244,1525,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (245,37,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (246,42,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (247,112,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (248,114,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (249,126,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (250,152,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (251,161,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (252,171,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (253,181,'ammonia','NH4','below detectable limit');
INSERT INTO `qa_issue_samples` VALUES (254,183,'ammonia','NH4','below detectable limit');
/*!40000 ALTER TABLE `qa_issue_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qa_issues_base_report`
--

DROP TABLE IF EXISTS `qa_issues_base_report`;
/*!50001 DROP VIEW IF EXISTS `qa_issues_base_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `qa_issues_base_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `sample_id`,
 1 AS `long_name`,
 1 AS `sampleID`,
 1 AS `sampling_order`,
 1 AS `session_number`,
 1 AS `the_date`,
 1 AS `the_time`,
 1 AS `sample_column_name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qa_issues_report`
--

DROP TABLE IF EXISTS `qa_issues_report`;
/*!50001 DROP VIEW IF EXISTS `qa_issues_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `qa_issues_report` AS SELECT 
 1 AS `lab_id`,
 1 AS `session_number`,
 1 AS `long_name`,
 1 AS `the_date`,
 1 AS `the_time`,
 1 AS `sample_column_name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `report_header_names`
--

DROP TABLE IF EXISTS `report_header_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `report_header_names` (
  `report_header_name_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_column_name` varchar(64) NOT NULL,
  `report_header_name` varchar(64) NOT NULL,
  PRIMARY KEY (`report_header_name_id`),
  UNIQUE KEY `sample_column_name_UNIQUE` (`sample_column_name`),
  KEY `report_header-names_idx` (`sample_column_name`,`report_header_name`) COMMENT 'cover of surrogate and natural.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abrv` varchar(4) DEFAULT NULL COMMENT 'Abbreviation like QA, DE',
  `long_name` varchar(45) DEFAULT NULL COMMENT 'ex: Quality Assurance',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `roll_name_UNIQUE` (`long_name`),
  UNIQUE KEY `abrv_UNIQUE` (`abrv`),
  UNIQUE KEY `rolls` (`role_id`,`abrv`) COMMENT 'cover the surrogate key and natural key'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `samples` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `the_date` date NOT NULL,
  `sampling_order` int(11) NOT NULL COMMENT 'This is the order of this sample at this site as planned for the day during this session',
  `the_time` time DEFAULT NULL,
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
  `nutrient_sample_taken` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Was the nutrient sample taken in the field or not',
  `total_nitrogen` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `total_phosphorus` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `phosphate` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `silicate` double DEFAULT NULL,
  `nitrates` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `ammonia` double DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `nitrate_last_run_date` date DEFAULT NULL COMMENT 'Date of the last, or oldest, processing run of the nitrate testing.',
  `comments` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`sample_id`),
  UNIQUE KEY `site_id` (`site_id`,`the_date`),
  UNIQUE KEY `samples` (`sample_id`,`site_id`,`the_date`) COMMENT 'covers surrogate and natural for performance',
  KEY `qa_code` (`qa_code`),
  KEY `session` (`session_id`),
  CONSTRAINT `qa_code` FOREIGN KEY (`qa_code`) REFERENCES `qa_codes` (`qa_code`),
  CONSTRAINT `session` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE,
  CONSTRAINT `site` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3708 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samples`
--

LOCK TABLES `samples` WRITE;
/*!40000 ALTER TABLE `samples` DISABLE KEYS */;
INSERT INTO `samples` VALUES (1,26,'2017-11-07',1,'08:20:00',19,162,1,26.1,33.7,5.47,81.5,8.19,8.31,7.7,8.58,1,132.62,17.13,12.14,700.23,42.91,6.68,NULL,NULL);
INSERT INTO `samples` VALUES (2,27,'2017-11-07',2,'09:05:00',19,162,1,26.8,34.7,5.97,90.5,8.22,5.14,5.12,5.25,1,141.3,13.44,8.81,395.31,25.26,5.24,NULL,NULL);
INSERT INTO `samples` VALUES (3,28,'2017-11-07',3,'09:27:00',19,162,1,27,34.8,6.26,95.2,8.22,8.88,8.32,8.21,1,96.36,11.27,7.87,279.65,28.38,4.63,NULL,'Turtles visible in the water');
INSERT INTO `samples` VALUES (4,29,'2017-11-07',4,'09:55:00',19,162,1,26.9,34.3,6.24,94.5,8.24,1.31,0.98,1.08,1,376.91,24.78,22.58,1017.21,224.04,31.1,NULL,NULL);
INSERT INTO `samples` VALUES (5,30,'2017-11-07',5,'10:23:00',19,162,1,27.7,35,6.44,98.7,8.27,0.97,0.91,1.11,1,146.98,11.93,7.35,397.99,24.47,4.7,NULL,NULL);
INSERT INTO `samples` VALUES (6,31,'2017-11-07',6,'10:50:00',19,162,1,28,35.6,6.36,98.9,8.26,1.1,1.43,1.22,1,154.58,11.85,7.46,193.7,7.81,7.54,NULL,NULL);
INSERT INTO `samples` VALUES (7,32,'2017-11-08',1,'08:30:00',20,162,1,26.7,35.2,6.45,97.8,8.26,1.41,1.48,1.44,1,93.6,12.5,6.71,144.56,8.18,6.98,NULL,NULL);
INSERT INTO `samples` VALUES (8,33,'2017-11-08',2,'08:52:00',20,162,1,26.9,35.4,6.43,98.1,8.28,0.6,0.61,0.64,1,84.92,9.6,4.72,81.36,4.39,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (9,34,'2017-11-08',3,'09:27:00',20,162,1,26.8,35.5,6.07,92.5,8.19,1.13,1.11,1.22,1,70.62,12.35,4.68,153.48,5.54,4.61,NULL,NULL);
INSERT INTO `samples` VALUES (10,35,'2017-11-08',4,'09:57:00',20,162,1,26.7,35.4,6.55,99.5,8.26,0.71,0.71,0.75,1,69.05,8.83,5.35,84.66,3.04,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (11,26,'2017-11-21',1,'08:05:00',5,162,2,23.6,33.6,5.97,85.4,8.13,11.1,11.3,11.3,1,137.19,16.33,12.02,1010.94,76.49,4.43,NULL,NULL);
INSERT INTO `samples` VALUES (12,27,'2017-11-21',2,'08:34:00',5,162,2,24.4,34.9,6.27,91.6,8.24,3.11,3.65,3.61,1,92.64,15.43,7.88,504.43,24.48,2.72,NULL,NULL);
INSERT INTO `samples` VALUES (13,28,'2017-11-21',3,'09:00:00',5,162,2,23.7,34.8,6.56,94.8,8.2,3.5,3.33,3.6,1,125.3,14.12,7.48,503.06,50.25,6.49,NULL,NULL);
INSERT INTO `samples` VALUES (14,29,'2017-11-21',4,'09:20:00',5,162,2,25.3,34.2,6.41,94.7,8.17,1.12,0.85,0.92,1,277.25,19.96,18.25,1041.45,221.78,14.18,NULL,NULL);
INSERT INTO `samples` VALUES (15,30,'2017-11-21',5,'09:34:00',5,162,2,25.7,35.6,6.58,98.4,8.22,0.69,0.79,0.69,1,102.61,12.02,5.77,357.11,34.4,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (16,31,'2017-11-21',6,'10:04:00',5,162,2,25.7,36.1,6.5,97.7,8.21,0.45,0.55,0.49,1,89.12,12.73,5.46,243.29,11.33,11.25,NULL,NULL);
INSERT INTO `samples` VALUES (17,32,'2017-11-22',1,'08:05:00',6,162,2,25.5,36.1,6.47,96.7,8.24,0.56,0.58,0.54,1,154.6,15,6.47,101.16,3.67,4.8,NULL,'Lots of kayakers, but not within 100ft');
INSERT INTO `samples` VALUES (18,33,'2017-11-22',2,'08:40:00',6,162,2,25.4,36.2,6.58,98.3,8.24,0.52,0.53,0.49,1,73.02,13.8,4.04,95.29,7.14,2.23,NULL,NULL);
INSERT INTO `samples` VALUES (19,34,'2017-11-22',3,'09:10:00',6,162,2,25.6,36.1,6.78,101.5,8.25,1.95,2.01,2.04,1,70.44,13.04,3.71,75.02,4.3,2.96,NULL,NULL);
INSERT INTO `samples` VALUES (20,35,'2017-11-22',4,'09:30:00',6,162,2,26.1,35.9,6.59,99.3,8.25,0.44,0.43,0.44,1,71.47,11.51,3.27,43.37,1.19,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (21,36,'2017-11-22',5,'10:15:00',6,162,2,25.7,36.1,7.17,107.5,8.28,0.6,0.69,0.7,1,96.24,10.22,4.33,77.62,2.96,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (22,37,'2017-11-22',6,'10:40:00',6,162,2,25.5,35.6,6.85,102.3,8.27,0.84,1.09,0.84,1,74.6,11.4,5.96,331.76,14.15,4.25,NULL,NULL);
INSERT INTO `samples` VALUES (23,26,'2017-12-05',1,'08:05:00',18,162,3,23.2,33.2,6.48,91.5,8.13,7.91,7.71,7.79,1,200.83,18.51,13.3,1062.32,124.29,8.22,NULL,'Occasional sprinkle');
INSERT INTO `samples` VALUES (24,27,'2017-12-05',2,'08:40:00',18,162,3,23.7,33.7,6.33,90.7,8.15,5.95,5.53,5.81,1,157.45,12.52,8.91,625.32,74.5,7.35,NULL,NULL);
INSERT INTO `samples` VALUES (25,28,'2017-12-05',3,'09:00:00',18,162,3,23.2,34.5,6.46,91.8,8.16,5.79,6.95,6.32,1,154.31,10.83,9.42,546.73,90.52,9.42,NULL,'Very windy at the parking lot (4-5), not so much at the beach (3)');
INSERT INTO `samples` VALUES (26,29,'2017-12-05',4,'09:20:00',18,162,3,24.2,33.3,6.33,91,8.13,1.88,1.98,2.2,1,462.15,34.41,32.32,1802.91,382.71,46.67,NULL,'Windchop water');
INSERT INTO `samples` VALUES (27,30,'2017-12-05',5,'09:40:00',18,162,3,24.3,35.2,NULL,NULL,8.19,2.09,2.07,2.02,1,98.97,12.38,6.43,451.44,35.61,2.98,NULL,'DO value deleted');
INSERT INTO `samples` VALUES (28,31,'2017-12-05',6,'10:00:00',18,162,3,24.7,35.6,6.67,98.1,8.19,0.62,0.55,0.57,1,81.27,11.45,5.08,237.67,17.77,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (29,32,'2017-12-06',1,'08:05:00',19,162,3,23.9,35.4,6.62,95.4,8.18,0.56,0.51,0.52,1,110.74,11.61,5.56,157.7,14.35,4.18,NULL,NULL);
INSERT INTO `samples` VALUES (30,33,'2017-12-06',2,'08:30:00',19,162,3,24.2,35.6,6.6,96,8.2,0.7,0.64,0.7,1,76.45,11.97,4.05,100.72,7.75,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (31,36,'2017-12-06',3,'09:05:00',19,162,3,24.2,35.5,6.88,100.1,8.12,1.19,1.34,1.14,1,163.36,17.73,6.07,255.56,5.08,7.24,NULL,NULL);
INSERT INTO `samples` VALUES (32,37,'2017-12-06',4,'09:35:00',19,162,3,24.8,35.8,6.73,99,8.2,0.7,0.75,0.7,1,88.17,10.41,4.51,184.94,11.69,3.47,NULL,NULL);
INSERT INTO `samples` VALUES (33,26,'2017-12-19',1,'08:13:00',3,162,4,24.5,34.4,6.47,94.4,8.08,20.1,20.7,19.8,1,108.77,22.16,11.94,459.97,25.84,3.46,NULL,'Campfire');
INSERT INTO `samples` VALUES (34,27,'2017-12-19',2,'08:35:00',3,162,4,25.1,34,6.04,88.9,8.12,7.32,7.37,7.28,1,139.36,17.9,9.56,526.78,67.18,3.11,NULL,NULL);
INSERT INTO `samples` VALUES (35,28,'2017-12-19',3,'08:50:00',3,162,4,25,34.4,6.44,94.8,8.14,4.99,5.53,5.33,1,165.91,18.29,10.28,427.28,83.34,6.2,NULL,NULL);
INSERT INTO `samples` VALUES (36,29,'2017-12-19',4,'09:05:00',3,162,4,25.2,32.3,6.22,90.7,8.12,3.37,4.06,3.74,1,482.92,39.02,32.36,1695.9,396.48,45.73,NULL,NULL);
INSERT INTO `samples` VALUES (37,30,'2017-12-19',5,'09:29:00',3,162,4,25.2,34.9,6.64,98.4,8.2,1.72,1.2,1.38,1,114.71,16.37,6.37,266.78,37.67,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (38,31,'2017-12-19',6,'09:45:00',3,162,4,25.4,35.1,6.58,98,8.18,0.69,0.65,0.92,1,104.72,15.83,6.96,252.55,32.43,1.93,NULL,NULL);
INSERT INTO `samples` VALUES (39,32,'2017-12-20',1,'08:05:00',3,162,4,24.5,35.4,6.71,98.6,8.31,1.11,1.46,1.14,1,84.11,14.36,5.87,139.76,9.85,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (40,33,'2017-12-20',2,'08:30:00',3,162,4,24.4,35.3,6.75,99,8.3,0.84,0.92,1.05,1,90.58,13.91,4.64,101.1,10.2,1,NULL,NULL);
INSERT INTO `samples` VALUES (41,34,'2017-12-20',3,'08:55:00',3,162,4,24.5,35.3,6.74,98.9,8.28,1.67,2,1.85,1,78.25,12.81,4.75,124.09,9.37,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (42,35,'2017-12-20',4,'09:17:00',3,162,4,24.7,35.4,6.68,98.3,8.31,0.55,0.59,0.55,1,81.19,12.96,4.89,63.69,6.72,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (43,36,'2017-12-20',5,'09:36:00',3,162,4,24.4,35.2,6.37,93.4,8.17,0.72,0.76,0.87,1,95.27,14.43,6.59,183.88,10.48,4.06,NULL,NULL);
INSERT INTO `samples` VALUES (44,37,'2017-12-20',6,'09:56:00',3,162,4,24.4,34.3,6.56,95.5,8.16,0.88,0.93,0.97,1,121.59,20,14.69,1032.62,55.08,3.48,NULL,NULL);
INSERT INTO `samples` VALUES (45,26,'2018-01-09',1,'08:07:00',23,162,5,22.4,33.4,6.71,93.3,8.12,21.1,22.1,20.1,1,103.57,21.14,11.59,671.52,28.21,5.82,NULL,NULL);
INSERT INTO `samples` VALUES (46,27,'2018-01-09',2,'08:35:00',23,162,5,23.2,33.8,6.61,93.9,8.12,7.95,9,8.17,1,125.28,15.69,8.96,617.53,43.47,4.55,NULL,NULL);
INSERT INTO `samples` VALUES (47,28,'2018-01-09',3,'08:50:00',23,162,5,23.8,34.9,6.71,96.9,8.15,20.1,21.3,19.3,1,123.51,15.25,8.53,307.46,37.72,5.08,NULL,'2 dogs playing near collection site');
INSERT INTO `samples` VALUES (48,29,'2018-01-09',4,'09:20:00',23,162,5,24.5,31.4,6.57,94,8.12,4.9,3.76,4.39,1,608.09,37.32,33.36,2149.95,506.57,12.62,NULL,NULL);
INSERT INTO `samples` VALUES (49,30,'2018-01-09',5,'09:35:00',23,162,5,25.2,35.1,NULL,NULL,8.18,2.05,1.8,1.96,1,103.2,14.28,5.22,282.51,21.36,2.29,NULL,'2 boats, DO value deleted');
INSERT INTO `samples` VALUES (50,31,'2018-01-09',6,'09:51:00',23,162,5,25,35.1,6.7,98.9,8.18,1,0.95,0.94,1,112.47,12.8,6.43,271.41,30.92,3.89,NULL,NULL);
INSERT INTO `samples` VALUES (51,32,'2018-01-10',1,'07:59:00',24,162,5,23.8,34.5,6.63,95,8.17,1.93,2.08,1.85,1,120.59,13.19,5.75,302.73,40.94,4.25,NULL,NULL);
INSERT INTO `samples` VALUES (52,33,'2018-01-10',2,'08:25:00',24,162,5,23.9,34.8,6.87,99,8.16,1.39,1.99,1.57,1,166.75,14.73,7.45,297.51,74.27,3.63,NULL,NULL);
INSERT INTO `samples` VALUES (53,34,'2018-01-10',3,'08:52:00',24,162,5,24.3,34.9,6.81,98.7,8.13,2.39,2.13,2.16,1,117.47,12.56,6.88,445.45,33.64,5.82,NULL,NULL);
INSERT INTO `samples` VALUES (54,35,'2018-01-10',4,'09:15:00',24,162,5,24.6,35.3,6.72,98.2,8.2,0.44,0.46,0.44,1,83.5,16.04,4.58,170.45,2.55,2.34,NULL,NULL);
INSERT INTO `samples` VALUES (55,36,'2018-01-10',5,'09:45:00',24,162,5,24.7,35.1,7.11,104.1,8.1,0.86,0.8,0.85,1,94.6,15.18,5.21,246.79,5.38,5.26,NULL,NULL);
INSERT INTO `samples` VALUES (56,37,'2018-01-10',6,'10:10:00',24,162,5,24.5,35.2,6.67,97.3,8.1,0.57,0.56,0.83,1,86.16,14.84,6.35,174.85,8.06,5.11,NULL,NULL);
INSERT INTO `samples` VALUES (57,26,'2018-01-23',1,'07:55:00',8,162,6,23.3,35.2,6.53,93.4,8.08,23.5,25.2,25.5,1,109.28,21.26,8.21,298.82,14.81,12.01,NULL,NULL);
INSERT INTO `samples` VALUES (58,27,'2018-01-23',2,'08:21:00',8,162,6,23.4,33.8,6.26,89.1,8.13,10.1,11.3,10.5,1,126.45,18.2,10.4,776.15,56.94,9.93,NULL,NULL);
INSERT INTO `samples` VALUES (59,28,'2018-01-23',3,'08:35:00',8,162,6,23.9,35.2,6.76,97.7,8.15,11.1,11.3,10.9,1,124.25,14.97,9.78,317.81,46.63,8.06,NULL,'Dog surfing ;)');
INSERT INTO `samples` VALUES (60,29,'2018-01-23',4,'09:00:00',8,162,6,24.4,34,6.7,97.1,8.13,7.83,8.08,7.91,1,336.09,30.08,24.77,1127,261.99,15.71,NULL,NULL);
INSERT INTO `samples` VALUES (61,30,'2018-01-23',5,'09:15:00',8,162,6,24.9,35.5,6.69,98.7,8.18,2.98,2.88,3.04,1,102.86,16.03,7.5,298.72,18.15,6.43,NULL,NULL);
INSERT INTO `samples` VALUES (62,31,'2018-01-23',6,'09:30:00',8,162,6,24.6,35.7,6.67,98.3,8.17,1.29,1.13,1.25,1,88.42,14.2,5.63,118.16,12.49,7.44,NULL,NULL);
INSERT INTO `samples` VALUES (63,32,'2018-01-24',1,'08:00:00',9,162,6,24.4,35.4,6.67,99.6,8.17,1.18,1.23,1.36,1,120.84,13.57,6,159.27,23.85,11.67,NULL,NULL);
INSERT INTO `samples` VALUES (64,33,'2018-01-24',2,'08:31:00',9,162,6,24.5,35.7,6.84,100.7,8.19,1.03,1.14,1.18,1,99.98,13.06,5.15,194.26,14.7,10.92,NULL,NULL);
INSERT INTO `samples` VALUES (65,34,'2018-01-24',3,'08:58:00',9,162,6,24.4,35.6,6.79,99.5,8.13,3.54,3.34,3.63,1,92.54,16.43,4.86,129.91,6.32,12.12,NULL,NULL);
INSERT INTO `samples` VALUES (66,35,'2018-01-24',4,'09:22:00',9,162,6,24.8,35.8,6.72,99.2,8.19,0.52,0.58,0.57,1,87.07,12.87,4.11,101.36,2.7,9.18,NULL,NULL);
INSERT INTO `samples` VALUES (67,36,'2018-01-24',5,'09:50:00',9,162,6,24.9,35.5,7.21,106.6,8.14,0.68,0.61,0.78,1,93.09,12.53,4.82,147.36,4.15,15.74,NULL,NULL);
INSERT INTO `samples` VALUES (68,37,'2018-01-24',6,'09:55:00',9,162,6,24.8,35.3,6.68,98.5,8.13,0.97,0.83,0.96,1,101.14,14.99,8.7,531.65,28.28,16.27,NULL,NULL);
INSERT INTO `samples` VALUES (69,26,'2018-02-06',1,'07:55:00',21,162,7,23.7,34.9,6.63,95.9,8.11,35,33.1,33.7,1,131.1,12.05,10.45,251.16,23.5,8.53,NULL,NULL);
INSERT INTO `samples` VALUES (70,27,'2018-02-06',2,'08:15:00',21,162,7,23.7,34.1,6.73,97,8.11,17.7,17.3,17.4,1,154.63,14.01,12.8,518.38,66.54,6.74,NULL,NULL);
INSERT INTO `samples` VALUES (71,28,'2018-02-06',3,'08:33:00',21,162,7,24.2,35.2,6.66,97.5,8.11,15.4,16.5,15.7,1,132.12,11.57,8.5,169.19,38.07,6.79,NULL,NULL);
INSERT INTO `samples` VALUES (72,29,'2018-02-06',4,'08:49:00',21,162,7,24.2,34.3,6.8,98.6,8.14,7.51,8.33,7.92,1,266.39,24.63,19.4,784.37,197.31,7.7,NULL,NULL);
INSERT INTO `samples` VALUES (73,30,'2018-02-06',5,'09:10:00',21,162,7,24.8,35.4,6.72,99.6,8.18,5.79,6.3,6.17,1,120.24,11.3,7.14,167.41,19.55,5,NULL,NULL);
INSERT INTO `samples` VALUES (74,31,'2018-02-06',6,'09:23:00',21,162,7,24.7,35.4,6.71,99.3,8.18,2.74,3.26,3.26,1,119.11,11.1,5.92,130.62,21.13,3.13,NULL,'Very windy');
INSERT INTO `samples` VALUES (75,32,'2018-02-07',1,'08:00:00',22,162,7,24.4,34.4,6.72,98.1,8.16,1.13,1.22,1.15,1,137.82,10.85,5.61,257.12,47.45,3.63,NULL,'Signs of stream runoff on land');
INSERT INTO `samples` VALUES (76,33,'2018-02-07',2,'08:25:00',22,162,7,24.4,35,6.82,100.1,8.16,2.39,2.05,1.77,1,142.74,11,7.66,222.63,54.17,3.35,NULL,NULL);
INSERT INTO `samples` VALUES (77,34,'2018-02-07',3,'08:45:00',22,162,7,24.5,35.1,6.85,100.7,8.14,5.78,6.25,5.61,1,107.56,9.88,6.64,306.42,22.72,3.53,NULL,NULL);
INSERT INTO `samples` VALUES (78,35,'2018-02-07',4,'09:05:00',22,162,7,24.9,35.4,6.74,99.8,8.2,0.39,0.45,0.42,1,97.84,9.42,4.75,52.96,7.05,1.38,NULL,NULL);
INSERT INTO `samples` VALUES (79,36,'2018-02-07',5,'09:25:00',22,162,7,24.6,35.1,6.95,102.3,8.1,1.41,1.31,1.43,1,91.34,13.46,5.74,189.24,7.93,3.54,NULL,NULL);
INSERT INTO `samples` VALUES (80,37,'2018-02-07',6,'09:35:00',22,162,7,25,35.1,6.68,99.1,8.13,1.41,1.44,1.57,1,110.56,15.63,9.68,460.3,31.14,6.57,NULL,NULL);
INSERT INTO `samples` VALUES (81,26,'2018-02-20',1,'07:54:00',5,162,8,22.5,33.6,6.68,93.5,8.08,27.7,27.2,28.3,1,102.19,16.02,12.48,769.91,31.07,3.74,NULL,NULL);
INSERT INTO `samples` VALUES (82,27,'2018-02-20',2,'08:20:00',5,162,8,24,33.9,6.5,93.6,8.14,9.26,10.4,9.94,1,110.65,14.56,9.06,587.36,50.16,4.42,NULL,NULL);
INSERT INTO `samples` VALUES (83,28,'2018-02-20',3,'08:42:00',5,162,8,23.8,34.5,6.77,97.5,8.17,7.72,8,8.48,1,92.51,15.12,7.61,350.62,34.09,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (84,29,'2018-02-20',4,'09:01:00',5,162,8,24.7,33.5,6.47,94,8.13,1.58,1.91,1.59,1,322.86,27.59,21.98,1147.55,296.94,6.73,NULL,NULL);
INSERT INTO `samples` VALUES (85,30,'2018-02-20',5,'09:14:00',5,162,8,24.9,35.4,6.88,101.4,8.18,2.55,2.49,2.66,1,79.81,17.5,5.14,259.39,25.09,1.25,NULL,NULL);
INSERT INTO `samples` VALUES (86,31,'2018-02-20',6,'09:36:00',5,162,8,24.9,35.4,6.66,98.6,8.17,0.74,1.07,1,1,110.05,16.96,6.3,297.45,55.76,2.54,NULL,NULL);
INSERT INTO `samples` VALUES (87,32,'2018-02-21',1,'08:00:00',6,162,8,24.2,35.4,6.75,98.2,8.16,2.55,3.15,2.91,1,91.87,17.88,7.14,267.44,21.07,2.29,NULL,NULL);
INSERT INTO `samples` VALUES (88,33,'2018-02-21',2,'08:30:00',6,162,8,24.2,35.3,6.88,100.3,8.17,1.52,1.61,1.61,1,121.27,17.59,6.87,299.93,68.67,1.96,NULL,NULL);
INSERT INTO `samples` VALUES (89,34,'2018-02-21',3,'08:56:00',6,162,8,24.5,35.7,6.72,98.6,8.13,3.24,3.19,3.46,1,70.69,12.93,4.59,159.15,9.28,2.94,NULL,NULL);
INSERT INTO `samples` VALUES (90,35,'2018-02-21',4,'09:15:00',6,162,8,24.7,35.8,6.79,100.1,8.18,0.53,0.46,0.45,1,73.8,12.24,4.28,68.74,3.31,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (91,36,'2018-02-21',5,'10:06:00',6,162,8,24.9,35.3,7.56,111.8,8.11,0.95,1.13,1.11,1,77.76,13.16,6.6,405.53,9.18,3.76,NULL,NULL);
INSERT INTO `samples` VALUES (92,37,'2018-02-21',6,'10:08:00',6,162,8,25.3,35.6,6.64,98.7,8.12,0.97,1.09,1.29,1,83.18,12.99,7.78,319.46,15.31,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (93,38,'2018-02-22',1,'08:30:00',8,162,8,24.4,34.7,6.7,97.5,8.14,6.05,6.02,6.09,1,210.91,12.9,7.42,630.72,161.75,2.48,NULL,NULL);
INSERT INTO `samples` VALUES (94,39,'2018-02-22',2,'09:00:00',8,162,8,24.4,35.7,6.84,100,8.18,3.55,3.63,4.06,1,70.18,12.01,5.86,106.96,3.1,3.62,NULL,NULL);
INSERT INTO `samples` VALUES (95,40,'2018-02-22',3,'09:25:00',8,162,8,24.6,35.5,6.78,99.3,8.17,6.34,6.34,6.92,1,87.06,12.34,6.54,215.83,21.53,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (96,41,'2018-02-22',4,'09:48:00',8,162,8,24.8,34.9,6.72,98.5,8.14,3,3.69,3.55,1,240.51,17.56,7.48,477.13,200.69,12.5,NULL,NULL);
INSERT INTO `samples` VALUES (97,42,'2018-02-22',5,'10:00:00',8,162,8,24.7,34.3,6.65,97.1,8.14,4.62,4.34,5.12,1,197.41,30.35,8.74,1015.97,162.5,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (98,43,'2018-02-22',6,'10:21:00',8,162,8,24.7,33.1,6.55,95.02,8.14,14.6,15.9,13.4,1,242.92,19.61,14.73,1369.24,163.13,7.29,NULL,NULL);
INSERT INTO `samples` VALUES (99,44,'2018-02-23',1,'08:05:00',9,162,8,24.3,35.7,6.87,100.5,8.18,0.68,0.73,0.73,1,70.55,16.58,5.18,120.62,12.3,2.37,NULL,NULL);
INSERT INTO `samples` VALUES (100,45,'2018-02-23',2,'08:42:00',9,162,8,24.6,35.6,6.87,100.9,8.16,0.87,0.96,0.98,1,105.06,17.88,5.9,161.48,27.42,4.47,NULL,NULL);
INSERT INTO `samples` VALUES (101,46,'2018-02-23',3,'09:15:00',9,162,8,24.9,35.3,6.92,102.1,8.16,1.45,1.65,1.58,1,155.78,13.6,7.05,235.38,98.54,4.75,NULL,NULL);
INSERT INTO `samples` VALUES (102,47,'2018-02-23',4,'09:47:00',9,162,8,24.9,35.7,6.9,101.9,8.17,1.52,1.63,1.64,1,131.49,14.44,8.45,251.43,26.54,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (103,48,'2018-02-23',5,'10:19:00',9,162,8,24.7,35.7,6.91,101.5,8.17,1.85,2.22,2.29,1,100.16,12.46,6.39,184.41,46.45,3.02,NULL,NULL);
INSERT INTO `samples` VALUES (104,49,'2018-02-23',6,'10:40:00',9,162,8,24.9,35.6,6.9,101.7,8.2,0.6,0.63,0.69,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sample not sent to SOEST lab');
INSERT INTO `samples` VALUES (105,26,'2018-03-06',1,'07:56:00',20,162,9,21.4,31.9,6.83,93.3,8.09,24.7,26.3,26.2,1,171.07,18.85,14.73,1271.72,104.72,1.34,NULL,NULL);
INSERT INTO `samples` VALUES (106,27,'2018-03-06',2,'08:15:00',20,162,9,23.4,32.9,6.22,87.9,8.13,7.6,7.6,7.27,1,178.07,17.21,12.59,1112.03,119.55,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (107,28,'2018-03-06',3,'08:33:00',20,162,9,23.5,34.6,6.79,97.2,8.16,9.08,10.2,10.5,1,138.86,16.8,10.11,444.57,78.98,0.93,NULL,NULL);
INSERT INTO `samples` VALUES (108,29,'2018-03-06',4,'08:51:00',20,162,9,24.4,33.3,6.5,93.8,8.14,2.65,3.22,3.94,1,399.21,32.22,25.78,1268.5,372.38,7.78,NULL,NULL);
INSERT INTO `samples` VALUES (109,30,'2018-03-06',5,'09:10:00',20,162,9,24.8,35,6.77,99.2,8.19,0.78,0.87,1.08,1,117.26,15.69,7.93,322.34,36.25,1.16,NULL,NULL);
INSERT INTO `samples` VALUES (110,31,'2018-03-06',6,'09:30:00',20,162,9,24.7,34.9,6.76,99.1,8.18,1.05,0.42,0.77,1,65.47,11.54,5.7,265.66,44.26,1.12,NULL,NULL);
INSERT INTO `samples` VALUES (111,32,'2018-03-07',1,'08:13:00',21,162,9,23.7,35.1,6.71,96.7,8.16,1.51,2.07,1.89,1,93.33,14.97,7.83,261.18,29.15,1.12,NULL,NULL);
INSERT INTO `samples` VALUES (112,33,'2018-03-07',2,'08:30:00',21,162,9,23.8,34.7,6.84,98.6,8.18,0.79,1.06,0.89,1,137.96,13.14,6.66,315.93,77.5,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (113,34,'2018-03-07',3,'08:58:00',21,162,9,23.9,35.6,6.81,98.7,8.14,2.12,2.15,2.06,1,87.83,10.76,4.95,166.22,12.04,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (114,35,'2018-03-07',4,'09:19:00',21,162,9,24.3,35.7,6.8,99.5,8.2,0.37,0.36,0.35,1,75.53,9.44,4.19,49.64,4.05,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (115,36,'2018-03-07',5,'09:50:00',21,162,9,24.6,35.4,7.55,110.8,8.16,0.74,0.72,0.73,1,96.16,12.27,6.74,245.48,7.39,2.32,NULL,NULL);
INSERT INTO `samples` VALUES (116,37,'2018-03-07',6,'09:55:00',21,162,9,23.9,34.8,6.78,98.5,8.08,0.94,0.8,0.84,1,99.49,15.2,10.17,730.47,32.41,1.27,NULL,NULL);
INSERT INTO `samples` VALUES (117,38,'2018-03-08',1,'08:06:00',21,162,9,22.9,34.5,6.79,96.1,8.14,5.56,5.47,5.61,1,185.52,15.12,8.25,500.5,130.8,1.39,NULL,NULL);
INSERT INTO `samples` VALUES (118,39,'2018-03-08',2,'08:30:00',21,162,9,23,35.7,6.92,98.5,8.19,0.93,1.37,1.01,1,80.3,10.65,5.22,62.41,5.03,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (119,40,'2018-03-08',3,'08:50:00',21,162,9,23.6,35.3,6.88,98,8.17,1.62,1.89,1.73,1,118.64,13.56,6.5,235.87,36.61,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (120,41,'2018-03-08',4,'09:10:00',21,162,9,23.9,35.1,6.72,96.9,8.15,1.57,1.82,1.9,1,212.17,13.86,6.64,335.36,160.63,2.99,NULL,NULL);
INSERT INTO `samples` VALUES (121,42,'2018-03-08',5,'09:27:00',21,162,9,23.3,34,6.71,95.8,8.13,3.6,4.21,3.75,1,261.65,14.43,9.05,1161.33,216.49,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (122,43,'2018-03-08',6,'09:47:00',21,162,9,23.3,32.1,6.96,97.7,8.16,4.45,5.17,5.85,1,303.37,21.5,16.78,1942.43,267.13,1.74,NULL,NULL);
INSERT INTO `samples` VALUES (123,44,'2018-03-09',1,'07:57:00',22,162,9,22.1,35.3,7,98,8.18,0.6,0.63,0.59,1,92.24,10.21,5.75,172.09,21.16,0.3,NULL,NULL);
INSERT INTO `samples` VALUES (124,45,'2018-03-09',2,'08:20:00',22,162,9,22.3,34.8,6.94,97.2,8.17,0.98,1.57,1.01,1,132.21,13.5,6.05,318.69,67.06,1.3,NULL,NULL);
INSERT INTO `samples` VALUES (125,46,'2018-03-09',3,'08:37:00',22,162,9,22.7,34.6,6.93,97.6,8.15,1,1.41,1.15,1,223.55,14.69,7.32,341.64,179.43,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (126,47,'2018-03-09',4,'09:13:00',22,162,9,22.8,35.3,6.93,98.3,8.18,1.07,0.98,0.81,1,89.53,13.95,6.34,264.44,20.81,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (127,48,'2018-03-09',5,'09:36:00',22,162,9,22.7,35.4,6.88,97.6,8.17,1.12,1.1,1.08,1,107.2,10.41,5.32,169.1,42.11,0.44,NULL,NULL);
INSERT INTO `samples` VALUES (128,49,'2018-03-09',6,'10:00:00',22,162,9,23.6,35.2,6.91,99.4,8.2,0.31,0.33,0.37,1,160.97,12.12,5.58,295.35,101.67,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (129,26,'2018-03-20',1,'07:53:00',3,162,10,22.2,32.5,6.34,87.9,8.06,8.11,9.02,9.66,1,138.8,14.21,10.82,751.43,55.64,3.23,NULL,NULL);
INSERT INTO `samples` VALUES (130,27,'2018-03-20',2,'08:16:00',3,162,10,23.8,33.7,6.15,88.5,8.16,3.88,2.56,3,1,162.53,12,8.56,627.14,86.02,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (131,28,'2018-03-20',3,'08:45:00',3,162,10,23.8,33.8,5.99,86.2,8.13,3.83,3.73,3.37,1,108.88,8.9,8.15,351.16,26.71,4.52,NULL,NULL);
INSERT INTO `samples` VALUES (132,29,'2018-03-20',4,'08:58:00',3,162,10,24.7,32.7,6.28,91.2,8.14,1.85,1.55,1.3,1,434.13,27.8,26.63,1355.1,424.19,9.26,NULL,NULL);
INSERT INTO `samples` VALUES (133,30,'2018-03-20',5,'09:17:00',3,162,10,24.8,34.3,6.61,97.3,8.19,0.99,1.15,1.22,1,117.39,9.61,6,314.1,38.48,0.85,NULL,NULL);
INSERT INTO `samples` VALUES (134,31,'2018-03-20',6,'09:40:00',3,162,10,24.6,34.4,6.47,95,8.17,0.73,0.78,0.79,1,141.72,9.02,7.05,343.02,77.22,1.59,NULL,NULL);
INSERT INTO `samples` VALUES (135,32,'2018-03-21',1,'08:00:00',4,162,10,24.1,34.5,6.82,98.7,8.17,2.03,1.73,2.17,1,124.09,11.03,7.23,235.21,28.84,2.78,NULL,NULL);
INSERT INTO `samples` VALUES (136,33,'2018-03-21',2,'08:25:00',4,162,10,24.3,35,6.74,98.4,8.19,0.73,0.72,0.67,1,71.45,7.87,4.83,80.08,7.27,0.52,NULL,NULL);
INSERT INTO `samples` VALUES (137,34,'2018-03-21',3,'08:47:00',4,162,10,24.2,34.3,6.73,97.6,8.15,1.93,2.54,2.48,1,69.89,6.63,5.19,127.73,7.88,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (138,35,'2018-03-21',4,'09:09:00',4,162,10,24.3,35,6.76,98.6,8.2,0.33,0.39,0.39,1,70.67,9.68,5.12,45.32,2.74,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (139,36,'2018-03-21',5,'09:40:00',4,162,10,24.4,34.8,7.28,106.3,8.17,1,1.74,1.99,1,91.51,9.19,7.15,248.23,12.27,3.13,NULL,NULL);
INSERT INTO `samples` VALUES (140,37,'2018-03-21',6,'09:45:00',4,162,10,24.6,34,6.67,97.3,8.1,1.18,1.23,1.33,1,111.7,14.28,13.94,898.1,44.11,3.02,NULL,NULL);
INSERT INTO `samples` VALUES (141,38,'2018-03-22',1,'08:20:00',7,162,10,23.7,34.3,6.86,98.5,8.16,5.63,6.21,5.92,1,171.57,20.87,8.01,406.87,106.49,1.48,NULL,NULL);
INSERT INTO `samples` VALUES (142,39,'2018-03-22',2,'08:43:00',7,162,10,23.9,34.8,6.84,98.9,8.21,4.39,4.2,4.41,1,93.9,9.72,7.26,83.06,4.61,1.83,NULL,NULL);
INSERT INTO `samples` VALUES (143,40,'2018-03-22',3,'09:10:00',7,162,10,24.6,34.7,6.83,100,8.2,2.85,3.68,3.33,1,88.35,10.49,7.01,176.6,15.45,2.25,NULL,NULL);
INSERT INTO `samples` VALUES (144,41,'2018-03-22',4,'09:25:00',7,162,10,24.7,34.3,6.8,99.5,8.19,3.95,3.93,4.4,1,228.08,14.19,7.36,290.94,150.95,5.45,NULL,NULL);
INSERT INTO `samples` VALUES (145,42,'2018-03-22',5,'09:45:00',7,162,10,24.6,32.9,6.85,99,8.16,2.79,3.98,3.24,1,335.84,13.64,11.85,1565.7,318.71,1.49,NULL,NULL);
INSERT INTO `samples` VALUES (146,43,'2018-03-22',6,'10:00:00',7,162,10,24.3,31.4,6.95,99.2,8.2,4.26,4.79,4.31,1,294.43,15.43,14.31,1752.77,270.08,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (147,44,'2018-03-23',1,'08:05:00',8,162,10,24.3,34.4,6.79,98.5,8.17,0.96,1.21,0.82,1,100.8,7.98,7.08,203.54,33.61,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (148,45,'2018-03-23',2,'08:20:00',8,162,10,24.7,34.9,6.85,100.1,8.2,0.35,0.4,0.31,1,78.02,7.53,4.14,76.69,9.46,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (149,46,'2018-03-23',3,'08:45:00',8,162,10,24.8,34.4,6.77,99.2,8.15,1.11,1.52,1.7,1,168.27,10.16,8.07,259.9,112.75,2.58,NULL,NULL);
INSERT INTO `samples` VALUES (150,47,'2018-03-23',4,'09:10:00',8,162,10,24.9,34.6,6.78,99.5,8.2,0.51,0.83,0.51,1,103.8,9.62,7.38,188.7,30.35,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (151,48,'2018-03-23',5,'09:50:00',8,162,10,25.6,34.7,6.77,100.6,8.21,0.77,0.86,0.74,1,113.78,7.45,6.41,162,56.14,2.03,NULL,NULL);
INSERT INTO `samples` VALUES (152,49,'2018-03-23',6,'09:30:00',8,162,10,25.3,34.7,6.88,101.8,8.22,0.55,0.64,0.63,1,100.01,6.43,6.39,143.06,34.31,0.28,NULL,'We sampled WPO first, and WPL last. Therefore, lines/data in the field datasheet are inverted.');
INSERT INTO `samples` VALUES (153,26,'2018-04-03',1,'08:00:00',18,162,11,25.2,33.9,6.4,94.6,8.08,13,13.8,13.7,1,92.08,11.27,9.18,443.25,13.26,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (154,27,'2018-04-03',2,'08:24:00',18,162,11,25.2,32.6,6.35,93.1,8.1,6.79,6.18,6.46,1,207.85,16.07,13.49,1091.7,143.32,3.71,NULL,NULL);
INSERT INTO `samples` VALUES (155,28,'2018-04-03',3,'08:41:00',18,162,11,25.5,34.4,6.66,99,8.16,5.53,5.75,5.87,1,118.76,11.39,8.38,344.4,49.27,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (156,29,'2018-04-03',4,'09:02:00',18,162,11,25.8,31.7,6.67,98.2,8.13,2.63,2.8,2.87,1,687.67,43.67,36.92,2280.32,658.96,10.49,NULL,NULL);
INSERT INTO `samples` VALUES (157,30,'2018-04-03',5,'09:23:00',18,162,11,26.3,34.3,6.62,99.3,8.18,1.07,1.47,1.48,1,118.86,11.41,6.87,333.38,50.83,0.57,NULL,NULL);
INSERT INTO `samples` VALUES (158,31,'2018-04-03',6,'09:44:00',18,162,11,25.8,34.5,6.59,98.8,8.17,1.28,1.59,1.61,1,163.01,9.43,6.58,337.31,78.31,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (159,32,'2018-04-04',1,'08:05:00',19,162,11,25.2,34.7,6.64,98.5,8.15,2.45,3.01,2.78,1,138.8,9.6,7.79,313.37,50.04,3.74,NULL,'MON was closed due to weather');
INSERT INTO `samples` VALUES (160,33,'2018-04-04',2,'08:35:00',19,162,11,25.3,34.7,6.65,98.8,8.14,0.51,0.55,0.43,1,144.6,8.87,6.2,310.61,76.64,2.19,NULL,'MAN, MAS were closed due to sharks');
INSERT INTO `samples` VALUES (161,35,'2018-04-04',3,'09:00:00',19,162,11,25,35.3,6.75,100.1,8.19,0.43,0.49,0.48,1,68.94,7.92,4.31,38.82,3.71,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (162,38,'2018-04-05',1,'08:13:00',19,162,11,25.4,32.7,6.53,95.5,8.04,6.73,5.14,6.09,1,375.65,14.02,11.25,1182.56,333.72,5.56,NULL,NULL);
INSERT INTO `samples` VALUES (163,39,'2018-04-05',2,'08:42:00',19,162,11,25.7,33.9,6.74,99.8,8.14,5.38,6.18,5.72,1,173.69,8.36,7.6,539.69,99.33,5.39,NULL,NULL);
INSERT INTO `samples` VALUES (164,40,'2018-04-05',3,'09:00:00',19,162,11,26,34.3,6.67,99.6,8.14,5.69,5.7,5.87,1,169.53,10.49,8.66,566.38,104.1,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (165,41,'2018-04-05',4,'09:22:00',19,162,11,26.3,34,6.69,100.3,8.15,5.4,5.97,5.77,1,218.65,13.38,9.32,718.47,158.5,1.99,NULL,NULL);
INSERT INTO `samples` VALUES (166,42,'2018-04-05',5,'09:35:00',19,162,11,26.8,32.8,6.61,99.3,8.12,28.5,28.8,27.6,1,248.83,13.91,12.08,1451.92,180.88,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (167,43,'2018-04-05',6,'09:51:00',19,162,11,27,32.5,6.32,95,8.12,34.8,32.4,32,1,205.07,13.98,12.65,1290.13,127.92,5.45,NULL,NULL);
INSERT INTO `samples` VALUES (168,44,'2018-04-06',1,'07:55:00',20,162,11,25.6,35,6.75,100.3,8.18,0.8,0.65,0.78,1,97.92,8.26,5.33,120.84,19.57,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (169,45,'2018-04-06',2,'08:20:00',20,162,11,25.7,35.1,6.72,100.1,8.18,0.65,0.57,0.6,1,95.19,7.73,5.42,144.31,24.75,0.41,NULL,NULL);
INSERT INTO `samples` VALUES (170,46,'2018-04-06',3,'08:45:00',20,162,11,25.7,34.9,6.77,100.8,8.17,0.64,0.74,0.66,1,166.64,7.69,6.37,241.29,98.74,2.76,NULL,NULL);
INSERT INTO `samples` VALUES (171,47,'2018-04-06',4,'09:08:00',20,162,11,26.1,35.2,6.7,100.6,8.19,0.47,0.5,0.54,1,73.04,7.45,4.8,82.83,7.21,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (172,48,'2018-04-06',5,'09:32:00',20,162,11,26.1,35.1,6.72,100.7,8.18,1.02,1.18,1.84,1,101.68,8.44,6.01,129.11,32.85,1.03,NULL,NULL);
INSERT INTO `samples` VALUES (173,49,'2018-04-06',6,'09:52:00',20,162,11,26.1,35,6.76,101.4,8.2,0.44,0.41,0.73,1,100.15,8.07,5.81,128.56,32.51,1.04,NULL,NULL);
INSERT INTO `samples` VALUES (174,26,'2018-04-17',1,'08:02:00',2,162,12,24.8,33.4,6.38,92.6,8.06,11.8,11,11.6,1,118.41,11.17,9.68,598.66,13.82,3.84,NULL,NULL);
INSERT INTO `samples` VALUES (175,27,'2018-04-17',2,'08:18:00',2,162,12,25.4,32.6,6.15,89.8,8.09,8.1,9.48,9.93,1,174.74,11.48,9.9,886.34,88.61,2.09,NULL,NULL);
INSERT INTO `samples` VALUES (176,28,'2018-04-17',3,'08:37:00',2,162,12,25.5,34.7,6.68,98.9,8.17,8.33,10.6,8.51,1,103.26,10.19,5.88,207.65,24.14,0.99,NULL,NULL);
INSERT INTO `samples` VALUES (177,29,'2018-04-17',4,'08:57:00',2,162,12,25.9,32.3,6.7,98.5,8.15,3.73,4.32,4.47,1,602.55,33.46,29.81,1742.07,565.72,4.8,NULL,NULL);
INSERT INTO `samples` VALUES (178,30,'2018-04-17',5,'09:13:00',2,162,12,25.9,34.2,6.66,98.9,8.18,1.13,1.99,0.98,1,199.53,10.43,6.1,375.58,48.97,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (179,31,'2018-04-17',6,'09:33:00',2,162,12,25.6,34.1,6.7,99.3,8.17,1.29,1.68,1.35,1,161.62,13.3,6.4,395,71.1,1.8,NULL,NULL);
INSERT INTO `samples` VALUES (180,32,'2018-04-18',1,'08:00:00',3,162,12,25.3,34.6,6.62,97.9,8.16,1.27,1.33,1.31,1,112.79,10.45,5.59,270.43,35.06,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (181,33,'2018-04-18',2,'08:26:00',3,162,12,25.6,34.4,6.68,99.2,8.18,0.63,0.66,0.83,1,118.82,10.03,3.84,190.01,41.59,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (182,34,'2018-04-18',3,'08:45:00',3,162,12,25.5,33.7,6.69,98.9,8.1,1.35,1.33,1.32,1,170.42,12.35,9.7,977.8,100.24,1.42,NULL,NULL);
INSERT INTO `samples` VALUES (183,35,'2018-04-18',4,'09:10:00',3,162,12,25.5,35.1,6.69,99.8,8.2,0.58,0.61,0.56,1,81.58,8.97,3.88,50.02,2.63,0.28,NULL,'MAN, MAS closed due to sharks');
INSERT INTO `samples` VALUES (184,38,'2018-04-19',1,'08:10:00',4,162,12,24.8,34.6,6.76,99.2,8.14,2.26,3.04,2.68,1,128.36,7.29,5.87,334.67,53.19,1.71,NULL,NULL);
INSERT INTO `samples` VALUES (185,39,'2018-04-19',2,'08:40:00',4,162,12,24.8,35,6.74,98.9,8.18,2.82,3.96,2.77,1,80.79,7.64,5.17,106.11,3.99,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (186,40,'2018-04-19',3,'09:05:00',4,162,12,25.4,34.7,6.65,98.5,8.16,3.62,4.16,3.92,1,106.74,9.17,6.95,247.79,33.7,2.55,NULL,NULL);
INSERT INTO `samples` VALUES (187,41,'2018-04-19',4,'09:20:00',4,162,12,25.8,34.2,6.68,99.3,8.15,2.37,3.3,2.31,1,250.7,10.35,7.21,417.57,183.46,1.32,NULL,NULL);
INSERT INTO `samples` VALUES (188,42,'2018-04-19',5,'09:40:00',4,162,12,25.5,33.2,6.6,97.2,8.13,3.27,3.05,3.18,1,327.26,11.02,9.74,1339.02,277.08,3.16,NULL,NULL);
INSERT INTO `samples` VALUES (189,43,'2018-04-19',6,'10:00:00',4,162,12,25.6,30.1,6.84,99.1,8.16,10.2,11.7,11.8,1,399.66,18.81,15.76,2329.65,351.04,4,NULL,NULL);
INSERT INTO `samples` VALUES (190,44,'2018-04-20',1,'07:57:00',5,162,12,25.5,34.7,6.67,98.9,8.17,1.81,0.65,0.71,1,110.73,9.32,5.06,125.34,17.15,1.02,NULL,NULL);
INSERT INTO `samples` VALUES (191,45,'2018-04-20',2,'08:23:00',5,162,12,25.7,35,6.69,99.6,8.19,0.79,0.98,0.83,1,199.01,9.15,4.7,86.4,7.42,6.94,NULL,NULL);
INSERT INTO `samples` VALUES (192,46,'2018-04-20',3,'08:42:00',5,162,12,25.6,34.2,6.71,99.5,8.15,0.99,1.22,1.3,1,196.58,8.12,5.46,226.95,123.73,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (193,47,'2018-04-20',4,'08:55:00',5,162,12,25.6,34.7,6.71,99.8,8.19,1.02,1.13,1.01,1,125.74,9.25,5.26,199.9,24.68,3.8,NULL,NULL);
INSERT INTO `samples` VALUES (194,48,'2018-04-20',5,'09:30:00',5,162,12,25.7,34.7,6.68,99.6,8.18,1.04,0.95,0.92,1,169.78,12.67,5.1,143.73,49.15,3.96,NULL,NULL);
INSERT INTO `samples` VALUES (195,49,'2018-04-20',6,'09:48:00',5,162,12,26.1,34.7,6.72,100.8,8.21,0.54,0.53,0.56,1,169.67,9.22,4.15,172.83,56.9,1.68,NULL,NULL);
INSERT INTO `samples` VALUES (196,26,'2018-05-01',1,'07:57:00',16,162,13,23.4,32.3,6.25,88,8.07,7.23,6.72,6.83,1,114.91,11.27,9.72,810.92,10.14,3.21,NULL,NULL);
INSERT INTO `samples` VALUES (197,27,'2018-05-01',2,'08:20:00',16,162,13,24.7,33.7,5.94,86.4,8.13,8.83,11.1,9.5,1,143.94,8.16,6.92,543.1,51.05,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (198,28,'2018-05-01',3,'08:38:00',16,162,13,24.8,34.8,6.8,99.6,8.19,3.32,3.22,3.29,1,106.02,14.3,5.75,188.89,20.93,2.28,NULL,NULL);
INSERT INTO `samples` VALUES (199,29,'2018-05-01',4,'08:54:00',16,162,13,25.1,32.9,6.82,99.4,8.17,2.52,2.41,2.05,1,460.56,27.92,23.51,1351.63,414.65,5.78,NULL,NULL);
INSERT INTO `samples` VALUES (200,30,'2018-05-01',5,'09:09:00',16,162,13,25.3,34,6.74,99.1,8.2,2.52,2.98,1.64,1,147.85,11.51,7.12,476.56,63.92,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (201,31,'2018-05-01',6,'09:28:00',16,162,13,25,34.1,6.76,99,8.18,0.67,0.7,0.93,1,131.39,10.33,7.06,372.56,54.66,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (202,32,'2018-05-02',1,'08:15:00',17,162,13,25.1,34.8,6.64,97.8,8.18,0.97,1.03,1.2,1,115.78,11.68,7.29,300.59,31.54,2.68,NULL,NULL);
INSERT INTO `samples` VALUES (203,33,'2018-05-02',2,'08:40:00',17,162,13,25.3,34.1,6.63,97.5,8.15,1.02,1.06,1.22,1,243.07,9.92,8.11,614.21,166.35,2.03,NULL,NULL);
INSERT INTO `samples` VALUES (204,34,'2018-05-02',3,'08:50:00',17,162,13,25.3,34.1,6.67,98.1,8.1,1.16,1.56,1.5,1,151.2,13.7,12.09,881.82,87.8,2.19,NULL,NULL);
INSERT INTO `samples` VALUES (205,35,'2018-05-02',4,'09:15:00',17,162,13,25.4,35.5,6.73,100,8.19,0.69,0.92,0.71,1,76.55,8.51,5.45,67.06,1.83,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (206,36,'2018-05-02',5,'09:33:00',17,162,13,26,35,7.28,109.1,8.14,1.72,1.98,1.41,1,77.68,7.51,6.57,272.75,5.39,2.5,NULL,NULL);
INSERT INTO `samples` VALUES (207,37,'2018-05-02',6,'09:40:00',17,162,13,25.8,34.4,6.5,96.7,8.08,1.63,1.55,1.78,1,137.08,19.77,18.06,1475,68.89,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (208,38,'2018-05-03',1,'08:20:00',18,162,13,25.7,34.4,6.78,100.6,8.14,7.79,7.93,7.47,1,202.15,10.6,7.41,511.28,106,2.9,NULL,'HQ40d #1 turned off by itself twice during sampling - loose batteries?');
INSERT INTO `samples` VALUES (209,39,'2018-05-03',2,'08:55:00',18,162,13,25.6,35.6,6.69,99.6,8.18,1.08,1.15,1.41,1,71.14,8.24,5.36,61.85,1.11,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (210,40,'2018-05-03',3,'09:20:00',18,162,13,25.8,35,6.67,99.5,8.16,4.42,4.48,4.28,1,132.64,10.46,7.2,270.6,30.1,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (211,41,'2018-05-03',4,'09:33:00',18,162,13,25.9,34.3,6.67,99.2,8.15,1.36,2.16,1.91,1,329.95,10.85,8.66,716.15,316.55,2.15,NULL,NULL);
INSERT INTO `samples` VALUES (212,42,'2018-05-03',5,'09:55:00',18,162,13,26.2,32.3,6.72,99.3,8.11,5.48,6.65,5.87,1,542.27,15.47,14.31,2209.98,457.18,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (213,43,'2018-05-03',6,'10:15:00',18,162,13,26.6,29.9,6.74,99.3,8.18,3.35,3.44,3.43,1,534.07,20.22,18.46,2872.71,436.64,2.71,NULL,NULL);
INSERT INTO `samples` VALUES (214,44,'2018-05-04',1,'08:10:00',19,162,13,25.4,35.2,6.59,97.9,8.18,0.65,0.51,0.56,1,108.51,13.08,5.33,171.91,24.23,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (215,45,'2018-05-04',2,'08:30:00',19,162,13,25.7,35.3,6.68,99.6,8.18,0.62,0.58,0.56,1,103.93,9.1,4.41,111.82,9.44,3.14,NULL,NULL);
INSERT INTO `samples` VALUES (216,46,'2018-05-04',3,'08:38:00',19,162,13,25.9,34.8,6.47,96.7,8.15,1.59,2.09,1.2,1,197.99,9.88,5.8,210.91,104.29,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (217,47,'2018-05-04',4,'09:05:00',19,162,13,26.1,35.1,6.64,99.7,8.19,0.78,0.74,0.92,1,115.35,10.4,6.15,180.13,24.25,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (218,48,'2018-05-04',5,'09:30:00',19,162,13,26,35,6.68,100.1,8.2,0.77,1.16,0.93,1,133.6,9.1,4.44,159.49,56.66,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (219,49,'2018-05-04',6,'09:45:00',19,162,13,26,35,6.67,99.9,8.21,0.4,0.4,0.36,1,105.46,8.26,4.78,135.98,38.49,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (220,26,'2018-05-15',1,'07:45:00',1,162,14,24.3,33,5.93,85.5,8.01,5.9,5.62,5.29,1,139.44,13.82,8.57,533.87,22.54,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (221,27,'2018-05-15',2,'08:07:00',1,162,14,25.5,32.3,5.63,87.5,8.08,5.57,5.56,6.2,1,192.06,12.37,8.65,936.06,95.76,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (222,28,'2018-05-15',3,'08:27:00',1,162,14,25.4,34.2,6.85,101.3,8.15,5.79,5.64,6.05,1,140.31,14.98,7,358.41,45.89,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (223,29,'2018-05-15',4,'08:44:00',1,162,14,26,32,7.01,103.4,8.15,2.03,1.99,2.22,1,346.5,31.68,25.54,1581.7,445.89,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (224,30,'2018-05-15',5,'09:00:00',1,162,14,26.2,33.8,6.66,99.7,8.17,0.72,1.5,0.92,1,154.1,14.05,7.56,476.12,61.57,2.47,NULL,NULL);
INSERT INTO `samples` VALUES (225,31,'2018-05-15',6,'09:23:00',1,162,14,25.6,34.3,6.7,99.5,8.16,0.87,1.65,1.11,1,139.89,12.04,8.01,370.21,57.43,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (226,32,'2018-05-16',1,'07:50:00',2,162,14,25.2,33.9,6.82,100.2,8.15,2.3,4.84,3.92,1,142.93,14.58,10.55,506.37,55.93,5.61,NULL,NULL);
INSERT INTO `samples` VALUES (227,33,'2018-05-16',2,'08:20:00',2,162,14,25.6,34.1,6.57,97.4,8.14,1.01,1.14,1.15,1,222.45,16.22,9.01,545.4,132.4,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (228,34,'2018-05-16',3,'08:40:00',2,162,14,26.1,34,6.43,96,8.09,1.66,1.95,2.06,1,223.43,20.88,18.29,1432.59,145.27,2.64,NULL,NULL);
INSERT INTO `samples` VALUES (229,35,'2018-05-16',4,'09:11:00',2,162,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MBS not sampled due to 4 ft shore breakers');
INSERT INTO `samples` VALUES (230,36,'2018-05-16',5,'09:26:00',2,162,14,26,34.7,7.41,111.1,8.14,1.8,3.09,2.15,1,91.61,14.37,7.82,301.02,9.71,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (231,37,'2018-05-16',6,'09:46:00',2,162,14,26.5,33.8,6.46,97.2,8.05,1.48,1.72,1.78,1,158.82,22.87,19.35,1233.4,64.92,7.69,NULL,NULL);
INSERT INTO `samples` VALUES (232,38,'2018-05-17',1,'08:15:00',4,162,14,25.5,34.1,6.69,98.7,8.13,4.92,5.66,5.07,1,220.2,15.63,9.37,534.17,139.31,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (233,39,'2018-05-17',2,'08:45:00',4,162,14,25.7,35.2,6.74,100,8.2,2.16,2.05,1.69,1,108.1,10.39,6.37,65.66,7.18,4.03,NULL,NULL);
INSERT INTO `samples` VALUES (234,40,'2018-05-17',3,'09:03:00',4,162,14,26.1,34.7,6.75,101.1,8.17,2.97,4.88,4.13,1,123.83,13.06,8.2,264,23.81,3,NULL,NULL);
INSERT INTO `samples` VALUES (235,41,'2018-05-17',4,'09:20:00',4,162,14,26.4,34,6.71,100.8,8.13,2.67,4.02,3.17,1,325.86,15.25,9.48,611.53,250.51,1.98,NULL,NULL);
INSERT INTO `samples` VALUES (236,42,'2018-05-17',5,'09:35:00',4,162,14,26.7,32,6.71,100.2,8.1,3.92,4.78,5,1,439.92,18.44,16.3,2308.03,350.97,4.01,NULL,NULL);
INSERT INTO `samples` VALUES (237,43,'2018-05-17',6,'09:56:00',4,162,14,26.6,29.5,6.73,98.7,8.2,4.05,4.17,4.34,1,522.35,20.34,19.11,2903.71,416.27,4.7,NULL,NULL);
INSERT INTO `samples` VALUES (238,44,'2018-05-18',1,'08:10:00',5,162,14,25.7,35.1,6.6,98.4,8.15,0.84,0.59,0.43,1,123.42,13.54,7.1,167.47,17.42,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (239,45,'2018-05-18',2,'08:30:00',5,162,14,25.9,35.1,6.73,100.6,8.19,0.29,0.24,0.27,1,95.14,14.89,5.92,72.1,9.29,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (240,46,'2018-05-18',3,'08:55:00',5,162,14,26.3,34.3,6.76,101.3,8.14,1.2,1.13,1.13,1,216.42,15.01,7.7,231.61,127.43,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (241,47,'2018-05-18',4,'09:21:00',5,162,14,26.4,34.6,6.76,101.7,8.18,0.47,0.59,0.62,1,121.2,11.98,6.62,216.82,33.6,2.88,NULL,'Leaf in sample bucket while taking measurements');
INSERT INTO `samples` VALUES (242,48,'2018-05-18',5,'09:41:00',5,162,14,26.6,34.8,6.74,101.8,8.2,1.1,1.8,1.14,1,171.7,9.77,7.13,225,82.03,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (243,49,'2018-05-18',6,'10:01:00',5,162,14,26.5,34.8,6.71,101.4,8.22,0.66,0.74,0.99,1,151.38,12.96,6.43,177.21,59.31,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (244,26,'2018-05-29',1,'07:45:00',15,162,15,25.5,31.8,5.71,83.3,8.08,4.54,5.09,5.37,1,122.26,11.31,7.84,820.75,25.27,9.01,NULL,'lots of vog - all beaches');
INSERT INTO `samples` VALUES (245,27,'2018-05-29',2,'08:00:00',15,162,15,26.5,32.5,5.73,85.3,8.08,4.49,4.7,4.85,1,198.08,8.93,8.66,1062.58,106.77,7.89,NULL,NULL);
INSERT INTO `samples` VALUES (246,28,'2018-05-29',3,'08:16:00',15,162,15,26,34.8,6.27,93.6,8.12,4.31,4.06,4.8,1,142.2,6.45,5.24,411.02,50.98,6.01,NULL,NULL);
INSERT INTO `samples` VALUES (247,29,'2018-05-29',4,'08:30:00',15,162,15,25.9,33,6.37,94.2,8.12,1.44,2.05,2.03,1,666.8,33.53,30.26,2169.3,607.28,10.91,NULL,'KCP warning sign posted for bacteria');
INSERT INTO `samples` VALUES (248,30,'2018-05-29',5,'08:45:00',15,162,15,25.7,34.1,6.48,96.2,8.16,1.43,1.49,1.51,1,146.39,11.7,6.84,579.47,62.43,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (249,31,'2018-05-29',6,'08:59:00',15,162,15,26,34.7,6.44,96.4,8.15,0.7,0.95,0.69,1,163.66,7.82,6.62,405.69,61.36,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (250,32,'2018-05-30',1,'07:46:00',16,162,15,25.2,34.6,6.68,98.9,8.15,2.45,2.28,2.72,1,136.54,8.94,7.65,450.74,58.25,4.8,NULL,NULL);
INSERT INTO `samples` VALUES (251,33,'2018-05-30',2,'08:20:00',16,162,15,25.8,35.2,6.5,97.6,8.15,1.19,1.61,1.45,1,122.35,8.77,6.45,271.62,48.68,2.2,NULL,NULL);
INSERT INTO `samples` VALUES (252,34,'2018-05-30',3,'08:41:00',16,162,15,25.6,34.3,6.67,99.3,8.07,2.59,2.76,2.87,1,156.52,11.03,10.8,910.68,77.6,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (253,35,'2018-05-30',4,'09:05:00',16,162,15,25.7,35.5,6.65,99.9,8.18,0.59,0.58,0.6,1,78.05,7.78,5.4,80.55,2.85,1.12,NULL,NULL);
INSERT INTO `samples` VALUES (254,36,'2018-05-30',5,'09:27:00',16,162,15,25.8,35.3,7.06,106.1,8.12,0.94,0.87,1,1,81.37,9.52,8.38,319.99,8.11,4.94,NULL,NULL);
INSERT INTO `samples` VALUES (255,37,'2018-05-30',6,'09:39:00',16,162,15,26.3,35.3,6.62,100.1,8.12,2.29,2.25,2.78,1,109.44,14.25,9.4,478.7,18.1,6.29,NULL,NULL);
INSERT INTO `samples` VALUES (256,38,'2018-05-31',1,'08:20:00',17,162,15,25.1,35.2,6.73,99.3,8.15,4.91,5.55,5.51,1,139.82,7.43,6.94,291.67,59.27,4.63,NULL,'Took field duplicates (Turb, Sal, DO, pH and Temp)');
INSERT INTO `samples` VALUES (257,39,'2018-05-31',2,'08:45:00',17,162,15,25.2,35.7,6.71,99.4,8.15,7.77,6.96,8.12,1,86.72,11.08,7.61,119.9,6.49,4.51,NULL,'Took field duplicates (Turb, Sal, DO, pH and Temp)');
INSERT INTO `samples` VALUES (258,40,'2018-05-31',3,'09:08:00',17,162,15,26.3,35.7,6.56,99,8.14,4.74,5.75,4.82,1,100.02,9.95,7.66,239.26,14.91,2.79,NULL,'Took field duplicates (Turb, Sal, DO, pH and Temp)');
INSERT INTO `samples` VALUES (259,41,'2018-05-31',4,'09:30:00',17,162,15,26.2,35,6.55,98.4,8.11,6.25,7.94,8.22,1,306.32,12.28,8.2,601.17,231.73,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (260,42,'2018-05-31',5,'09:51:00',17,162,15,26.2,35.1,6.69,100.7,8.14,4.33,4.97,4.12,1,178.03,12.5,10.31,846.13,98.31,6.1,NULL,NULL);
INSERT INTO `samples` VALUES (261,43,'2018-05-31',6,'10:05:00',17,162,15,26.4,32.8,6.69,99.8,8.15,13.5,14,11.9,1,280.96,15.33,13.32,1538.52,211.52,4.23,NULL,NULL);
INSERT INTO `samples` VALUES (262,44,'2018-06-01',1,'08:00:00',18,162,15,25.6,35.3,6.67,99.4,8.15,0.84,1.44,1.24,1,114.5,9.59,5.95,202.29,35.84,3.66,NULL,'Some vog');
INSERT INTO `samples` VALUES (263,45,'2018-06-01',2,'08:35:00',18,162,15,25.7,35.7,6.75,101.1,8.18,0.25,0.3,0.39,1,83.1,7.69,4.72,38.25,6.43,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (264,46,'2018-06-01',3,'08:55:00',18,162,15,25.9,34.8,6.59,98.6,8.14,0.83,1.09,1.07,1,210.54,8.51,5.68,239.99,134.91,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (265,47,'2018-06-01',4,'09:25:00',18,162,15,26.1,35.5,6.58,99.2,8.19,0.44,0.5,0.5,1,97.5,6.82,4.34,58.85,12.46,4.54,NULL,NULL);
INSERT INTO `samples` VALUES (266,48,'2018-06-01',5,'09:55:00',18,162,15,26.1,35.2,6.67,100.3,8.18,0.95,1.39,1.05,1,145.75,9.35,6.19,185.37,73.25,3.97,NULL,NULL);
INSERT INTO `samples` VALUES (267,49,'2018-06-01',6,'10:15:00',18,162,15,25.9,35.2,6.68,100.1,8.19,0.85,0.81,1.13,1,141.16,7.92,5.14,167.72,65.06,1.73,NULL,NULL);
INSERT INTO `samples` VALUES (268,43,'2018-06-19',1,'08:01:00',7,162,16,26.1,33.6,5.78,86.2,8.14,2.39,2.14,2.46,1,231.66,11.42,8.69,885.09,108.48,5.27,NULL,NULL);
INSERT INTO `samples` VALUES (269,26,'2018-06-19',2,'08:22:00',7,162,16,25.2,31.7,6.3,91.6,8.1,14.7,15.5,16.2,1,119.25,21.41,13.39,1189.07,42.58,4.98,NULL,NULL);
INSERT INTO `samples` VALUES (270,27,'2018-06-19',3,'08:40:00',7,162,16,26.4,32.8,5.83,87.1,8.16,7.27,8.07,6.95,1,137.58,13,8.29,1024.13,72.94,4.13,NULL,'KKS - 1 dog in the water');
INSERT INTO `samples` VALUES (271,28,'2018-06-19',4,'08:59:00',7,162,16,26.4,34.1,6.59,99.1,8.16,8.41,8.97,8.86,1,133.89,13.79,7.86,544.52,58.38,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (272,29,'2018-06-19',5,'09:18:00',7,162,16,26.6,31.5,6.74,100.3,8.14,2.23,2.72,3.15,1,588.54,34.5,28.18,1966.27,385.03,7.63,NULL,NULL);
INSERT INTO `samples` VALUES (273,32,'2018-06-20',1,'08:00:00',8,162,16,26.4,34.4,6.55,98.6,8.18,1.29,1.1,1.06,1,126.59,14.85,6.23,349.11,61.19,2.03,NULL,NULL);
INSERT INTO `samples` VALUES (274,33,'2018-06-20',2,'08:25:00',8,162,16,27,34.9,6.54,99.8,8.18,1.26,1.28,1.22,1,108.68,14.82,6.12,243.06,48.83,0.35,NULL,'MMB - Makena Golf Resort being demolished nearby');
INSERT INTO `samples` VALUES (275,34,'2018-06-20',3,'08:50:00',8,162,16,26.7,35.1,6.57,99.8,8.12,1.29,1.34,1.21,1,92.13,12.49,5.13,282.12,19.25,4.23,NULL,'MON - a 4th NTU taken, 1.99 NTU reading not recorded');
INSERT INTO `samples` VALUES (276,36,'2018-06-20',4,'09:20:00',8,162,16,26.2,34.7,6.86,103.3,8.09,0.84,0.87,1,1,81.96,13.14,6.08,416.47,9.52,3.77,NULL,NULL);
INSERT INTO `samples` VALUES (277,37,'2018-06-20',5,'09:25:00',8,162,16,26.1,35.2,6.27,94.5,8.13,0.45,0.55,0.5,1,71.23,16.78,6.45,93.55,13.82,8.17,NULL,NULL);
INSERT INTO `samples` VALUES (278,38,'2018-06-21',1,'08:12:00',8,162,16,26.3,34.7,6.72,101.2,8.15,2.69,2.54,2.23,1,110.5,14.07,5.53,356.06,55.87,2.52,NULL,NULL);
INSERT INTO `samples` VALUES (279,39,'2018-06-21',2,'08:38:00',8,162,16,25.9,35.2,6.72,100.6,8.18,1.16,1.26,1.07,1,67.91,13.94,7.63,61.52,9.21,0.89,NULL,NULL);
INSERT INTO `samples` VALUES (280,40,'2018-06-21',3,'09:00:00',8,162,16,26.9,35.1,6.66,101.5,8.18,4.3,5.05,4.42,1,91.78,12.75,7.33,200.98,27.48,1.1,NULL,NULL);
INSERT INTO `samples` VALUES (281,41,'2018-06-21',4,'09:17:00',8,162,16,26.6,34.7,6.66,100.8,8.16,4.58,4.92,4.75,1,184.22,9.7,6.18,424.59,143.98,2.17,NULL,NULL);
INSERT INTO `samples` VALUES (282,42,'2018-06-21',5,'09:32:00',8,162,16,27.2,33.5,6.55,99.4,8.14,2.25,2.01,1.94,1,244.23,13.48,10.51,1567.67,213.32,2.46,NULL,NULL);
INSERT INTO `samples` VALUES (283,44,'2018-06-22',1,'07:59:00',9,162,16,26.5,34.9,6.53,98.7,8.16,0.56,0.95,0.61,1,106.42,11.21,5.66,251.98,54.11,2.17,NULL,NULL);
INSERT INTO `samples` VALUES (284,45,'2018-06-22',2,'08:25:00',9,162,16,26.6,35.1,6.65,100.6,8.16,0.67,0.64,0.47,1,84.04,12.71,5.37,138.95,19.44,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (285,46,'2018-06-22',3,'08:55:00',9,162,16,26.7,34.5,6.61,100.6,8.14,0.98,0.9,0.88,1,160.57,15.81,4.65,214.36,102.77,2.23,NULL,NULL);
INSERT INTO `samples` VALUES (286,48,'2018-06-22',4,'09:10:00',9,162,16,26.8,35,6.61,100.4,8.19,0.4,0.39,0.41,1,171.28,16.6,5.09,143.53,47.12,6.63,NULL,NULL);
INSERT INTO `samples` VALUES (287,49,'2018-06-22',5,'09:30:00',9,162,16,27.3,35.1,6.64,101.8,8.2,0.34,0.34,0.31,1,96.83,13.11,4.26,127.09,33.22,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (288,43,'2018-07-10',1,'07:50:00',27,162,17,26.6,33.2,5.71,85.5,8.16,0.86,0.81,0.89,1,207.46,15.35,7.09,954.7,140.48,5.5,NULL,'haze and vog');
INSERT INTO `samples` VALUES (289,26,'2018-07-10',2,'08:15:00',27,162,17,26.2,32.3,4.88,72.3,8.07,2.04,2.67,2.2,1,105.31,13.68,6.96,944.71,32.03,4.74,NULL,NULL);
INSERT INTO `samples` VALUES (290,27,'2018-07-10',3,'08:35:00',27,162,17,27.2,32.9,5.29,79.9,8.13,3.15,3.53,3.56,1,104.46,14.15,4.93,789.34,32.33,4.12,NULL,NULL);
INSERT INTO `samples` VALUES (291,28,'2018-07-10',4,'09:00:00',27,162,17,26.9,34,6.58,99.7,8.17,5.71,5.34,5.58,1,162.33,14.19,7.65,601.27,113.56,5.02,NULL,'KKP - 1 turtle on the beach');
INSERT INTO `samples` VALUES (292,29,'2018-07-10',5,'09:15:00',27,162,17,27.5,30.7,6.5,97.5,8.14,6.83,6.47,7.18,1,631.19,37.89,27.51,2032.47,394.44,10.16,NULL,NULL);
INSERT INTO `samples` VALUES (293,32,'2018-07-11',1,'07:52:00',28,162,17,26.3,33.7,6.39,95.2,8.14,2.1,1.83,1.91,1,177.12,14.51,10.25,820.35,130.91,3.28,NULL,NULL);
INSERT INTO `samples` VALUES (294,33,'2018-07-11',2,'08:24:00',28,162,17,26.7,34.6,6.36,96.1,8.17,0.57,0.56,0.6,1,139.99,14.89,5.96,316.42,78.09,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (295,34,'2018-07-11',3,'08:50:00',28,162,17,26.9,34.2,6.46,97.8,8.1,2.08,2.14,2.28,1,140.51,15.29,12.56,1045.01,98.91,4.11,NULL,NULL);
INSERT INTO `samples` VALUES (296,36,'2018-07-11',4,'09:14:00',28,162,17,26.7,34.8,7.18,108.6,8.18,1.47,1.77,1.51,1,116.43,15.21,7.73,350.11,15.07,5.06,NULL,NULL);
INSERT INTO `samples` VALUES (297,37,'2018-07-11',5,'09:35:00',28,162,17,26.7,32.2,6.56,99,8.13,1.86,1.72,1.59,1,86.68,14.84,12.4,708.58,29.75,11.93,NULL,NULL);
INSERT INTO `samples` VALUES (298,38,'2018-07-12',1,'08:15:00',29,162,17,25.9,34.3,6.66,99.3,8.13,5.54,5.06,5.18,1,146.87,15.25,5.95,514.72,104.36,3.35,NULL,'6 tents - appears to be a homeless encampment');
INSERT INTO `samples` VALUES (299,39,'2018-07-12',2,'08:40:00',29,162,17,25.8,35.4,6.52,97.4,8.2,1.23,1.25,1.31,1,73.75,14.99,4.92,66.71,6.69,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (300,40,'2018-07-12',3,'08:55:00',29,162,17,26.4,35.1,6.52,98.4,8.19,4.97,4.04,4.7,1,74.09,15.58,5.68,200.68,10.29,3.99,NULL,NULL);
INSERT INTO `samples` VALUES (301,41,'2018-07-12',4,'09:15:00',29,162,17,26.8,34.3,6.47,98,8.11,5.23,5.94,4.85,1,343.98,15.01,8.07,811.31,292.41,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (302,42,'2018-07-12',5,'09:30:00',29,162,17,26.8,32.1,6.65,99.6,8.13,2.03,2.8,2.64,1,484.72,15.12,10.97,2119.18,408.61,3.03,NULL,NULL);
INSERT INTO `samples` VALUES (303,44,'2018-07-13',1,'07:55:00',2,162,17,26.5,34.8,6.55,99,8.18,1.32,1.36,1.2,1,106.26,13.52,6.05,240.53,34.38,1.7,NULL,'Nutrient sample bottle was dipped in the ocean water by mistake. Thoroughly rinsed before sample filtered (with tap and distilled water)');
INSERT INTO `samples` VALUES (304,45,'2018-07-13',2,'08:18:00',2,162,17,26.5,35.1,6.48,98.2,8.19,0.57,0.57,0.54,1,84.93,15.05,4.17,103.21,11.56,5.91,NULL,NULL);
INSERT INTO `samples` VALUES (305,46,'2018-07-13',3,'08:36:00',2,162,17,26.7,34.5,6.47,97.9,8.16,1.28,1.19,1.45,1,200.21,11.13,5.47,282.93,153.21,5.66,NULL,NULL);
INSERT INTO `samples` VALUES (306,48,'2018-07-13',4,'09:00:00',2,162,17,26.9,34.7,6.53,99.4,8.16,1.1,1.19,1.18,1,203.52,14.79,6.31,285.66,100.56,9.29,NULL,NULL);
INSERT INTO `samples` VALUES (307,49,'2018-07-13',5,'09:13:00',2,162,17,26.8,35.1,NULL,NULL,8.22,0.87,0.44,0.41,1,124.45,12.86,4.95,127.18,35.01,7.45,NULL,NULL);
INSERT INTO `samples` VALUES (308,43,'2018-07-31',1,'08:10:00',18,162,18,27.1,33.8,6.23,94.6,8.17,0.7,0.67,0.63,1,203.52,12.59,5.51,762.31,108.37,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (309,26,'2018-07-31',2,'08:25:00',18,162,18,27.6,32,4.95,75.1,8.06,5.05,5.22,5.27,1,198.16,15.83,10.09,1246.27,100.95,9.01,NULL,NULL);
INSERT INTO `samples` VALUES (310,27,'2018-07-31',3,'08:45:00',18,162,18,28.5,33.7,5.56,86.2,8.14,3.53,3.89,3.84,1,234.77,12.61,8.19,1017.07,140.53,7.03,NULL,NULL);
INSERT INTO `samples` VALUES (311,28,'2018-07-31',4,'09:06:00',18,162,18,28.3,34.4,6.29,97.8,8.14,6.38,7.59,6.78,1,146.52,12.3,6.88,460.4,61.81,8.29,NULL,NULL);
INSERT INTO `samples` VALUES (312,29,'2018-07-31',5,'09:20:00',18,162,18,28.1,32.4,6.29,96.5,8.15,1.35,1.18,1.44,1,550.25,33.75,24.14,1776.02,495.45,6.06,NULL,NULL);
INSERT INTO `samples` VALUES (313,32,'2018-08-01',1,'08:05:00',19,162,18,27.1,34.8,6.47,98.6,8.18,1.23,1.73,1.03,1,106.37,11.55,5.62,230.45,34.65,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (314,33,'2018-08-01',2,'08:35:00',19,162,18,27.6,35.2,6.45,99.6,8.18,1.34,1.4,1.35,1,108.7,10.72,5.55,171.63,27.62,1.61,NULL,'MMB - nutrient bottle used to colllect turbidity sample. Team unaware of spare bottles in kit. Nutrient bottle was rinsed and then reused.');
INSERT INTO `samples` VALUES (315,34,'2018-08-01',3,'08:55:00',19,162,18,27.7,35.2,6.63,102.3,8.18,4.22,4.49,4.28,1,86.62,8.82,3.84,216.79,16.69,2.96,NULL,NULL);
INSERT INTO `samples` VALUES (316,36,'2018-08-01',4,'09:25:00',19,162,18,27.4,35.1,7.17,110.2,8.19,1.08,1.14,1.02,1,96.27,9.82,4.75,124.26,9.05,4.78,NULL,NULL);
INSERT INTO `samples` VALUES (317,37,'2018-08-01',5,'09:35:00',19,162,18,27.5,34.7,6.55,100.8,8.15,0.9,0.86,0.99,1,86.01,10.22,5.61,230.05,15.45,3.9,NULL,NULL);
INSERT INTO `samples` VALUES (318,38,'2018-08-02',1,'08:15:00',21,162,18,26.2,34.7,6.47,97.2,8.13,3.62,3.47,3.56,1,143.1,11.69,6.13,470.13,75.18,3.78,NULL,NULL);
INSERT INTO `samples` VALUES (319,39,'2018-08-02',2,'08:45:00',21,162,18,26.7,35.6,6.54,99.6,8.2,1.2,1.22,1.27,1,73.69,8.87,4.55,73.18,3.75,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (320,40,'2018-08-02',3,'09:05:00',21,162,18,27.4,35.4,6.48,99.6,8.18,3.52,3.88,3.4,1,97.8,10.07,5.5,236.16,21.59,1.88,NULL,NULL);
INSERT INTO `samples` VALUES (321,41,'2018-08-02',4,'09:20:00',21,162,18,27.5,35.1,6.45,99.2,8.18,3.45,3.57,3.97,1,147.99,8.76,5.98,329,88.08,8.26,NULL,NULL);
INSERT INTO `samples` VALUES (322,42,'2018-08-02',5,'09:39:00',21,162,18,27.4,33.2,6.42,97.6,8.13,1.96,2.22,2.21,1,286.94,13.15,9.63,1663.7,234.6,3.77,NULL,NULL);
INSERT INTO `samples` VALUES (323,44,'2018-08-03',1,'07:53:00',22,162,18,26.6,35.3,6.58,100,8.2,1.66,1.13,1.29,1,80.41,12.66,4.51,127.73,12.63,4.76,NULL,NULL);
INSERT INTO `samples` VALUES (324,45,'2018-08-03',2,'08:12:00',22,162,18,26.8,35.2,6.56,99.8,8.19,1.42,1.08,1.18,1,162.46,11.86,6.31,157.36,21.03,5.41,NULL,NULL);
INSERT INTO `samples` VALUES (325,46,'2018-08-03',3,'08:32:00',22,162,18,27,35.4,6.56,100.3,8.2,0.89,0.88,0.77,1,111.68,9.38,4.34,95.19,14.78,8.15,NULL,NULL);
INSERT INTO `samples` VALUES (326,48,'2018-08-03',4,'08:55:00',22,162,18,27.4,35.4,6.54,100.5,8.2,1.72,1.68,1.58,1,89.62,9.51,4.22,106.01,14.78,3,NULL,NULL);
INSERT INTO `samples` VALUES (327,49,'2018-08-03',5,'09:12:00',22,162,18,27.5,35.4,6.56,101.3,8.22,0.27,0.23,0.25,1,91.81,8.51,3.16,74.07,11.61,3.64,NULL,NULL);
INSERT INTO `samples` VALUES (328,43,'2018-08-21',1,'07:55:00',11,162,19,26.9,31.6,5.92,88.5,8.13,1.73,1.93,1.56,1,265.09,12.61,9.79,1600.52,231.87,7.3,NULL,NULL);
INSERT INTO `samples` VALUES (329,26,'2018-08-21',2,'08:28:00',11,162,19,26.4,31.8,5.58,83,8.11,5.09,4.67,5.08,1,168.95,14.42,10.51,1250.79,82.2,7.93,NULL,NULL);
INSERT INTO `samples` VALUES (330,27,'2018-08-21',3,'08:40:00',11,162,19,27.5,33.4,4.99,76,8.1,4.75,5.5,5.32,1,109.11,7.34,4.98,761.31,39.14,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (331,28,'2018-08-21',4,'09:00:00',11,162,19,27.3,34,6.51,99.2,8.16,7.01,7.3,6.73,1,136.22,5.59,3.95,538.99,59.8,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (332,29,'2018-08-21',5,'09:13:00',11,162,19,28.2,32.9,6.16,94.9,8.16,1.93,1.64,1.94,1,450.17,27.4,13.79,1485.03,408.18,3.59,NULL,NULL);
INSERT INTO `samples` VALUES (333,32,'2018-08-22',1,'07:52:00',12,162,19,27.3,26.2,6.44,94,8.17,1.16,1.36,1.08,1,138.12,14.22,7.81,481.05,69.78,7.35,NULL,NULL);
INSERT INTO `samples` VALUES (334,33,'2018-08-22',2,'08:25:00',12,162,19,27.7,34.7,6.23,96.2,8.18,1.22,1.62,1.15,1,145.7,10.25,6.44,374.14,99.7,2.96,NULL,'MMB - construction and demolition behind beach');
INSERT INTO `samples` VALUES (335,34,'2018-08-22',3,'08:47:00',NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site not sampled because beach closed');
INSERT INTO `samples` VALUES (336,36,'2018-08-22',4,'09:04:00',12,162,19,27.5,34.8,7.17,110.1,8.15,0.95,1.09,1.31,1,133.05,14.96,11.49,468.34,21,8.53,NULL,'MAN - foul smell, source unknown');
INSERT INTO `samples` VALUES (337,37,'2018-08-22',5,'09:00:00',NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site not sampled because beach closed');
INSERT INTO `samples` VALUES (338,38,'2018-08-23',1,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (339,39,'2018-08-23',2,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (340,40,'2018-08-23',3,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (341,41,'2018-08-23',4,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (342,42,'2018-08-23',5,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (343,44,'2018-08-24',1,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (344,45,'2018-08-24',2,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (345,46,'2018-08-24',3,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (346,48,'2018-08-24',4,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (347,49,'2018-08-24',5,NULL,NULL,162,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled sampling session due to hurricane Lane');
INSERT INTO `samples` VALUES (348,43,'2018-09-11',1,'08:00:00',3,162,20,26.8,32.9,6.35,95.7,8.14,4.13,5.68,4.37,1,251.9,15.71,12.07,1246.41,151.04,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (349,26,'2018-09-11',2,'08:17:00',3,162,20,26.5,32.9,6.33,95,8.12,19.1,19.9,20.1,1,187.22,17.71,14.67,1073.42,98.02,3.92,NULL,'breezy at KWP');
INSERT INTO `samples` VALUES (350,27,'2018-09-11',3,'08:37:00',3,162,20,27.2,33.3,6.04,92.1,8.14,4.88,5.43,5.65,1,136.15,12.2,9.96,865.2,57.41,2.76,NULL,'gusty at KKS');
INSERT INTO `samples` VALUES (351,28,'2018-09-11',4,'08:52:00',3,162,20,27,33.8,6.36,96.9,8.15,5.71,5.05,5.84,1,138.36,15.97,8.02,517.32,45.62,10.46,NULL,'stream was dredged, anticipating tropical storm');
INSERT INTO `samples` VALUES (352,29,'2018-09-11',5,'09:11:00',3,162,20,27.2,31.6,6.52,98.4,8.14,3.36,3.8,4.87,1,558.27,33.18,31.2,1763.76,533.52,4.8,NULL,NULL);
INSERT INTO `samples` VALUES (353,32,'2018-09-12',1,NULL,NULL,162,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (354,33,'2018-09-12',2,NULL,NULL,162,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (355,34,'2018-09-12',3,NULL,NULL,162,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (356,36,'2018-09-12',4,NULL,NULL,162,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (357,37,'2018-09-12',5,NULL,NULL,162,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cancelled due to hurricane Olivia');
INSERT INTO `samples` VALUES (358,38,'2018-09-13',1,'08:25:00',4,162,20,26.8,34.8,6.44,98,8.17,8.67,8.88,8.69,1,129.82,12.51,7.76,336.16,67.33,5.88,NULL,NULL);
INSERT INTO `samples` VALUES (359,39,'2018-09-13',2,'08:50:00',4,162,20,27,35.4,6.44,98.5,8.2,1.33,1.39,1.67,1,65.89,9.84,5.1,45.43,2.59,1.48,NULL,NULL);
INSERT INTO `samples` VALUES (360,40,'2018-09-13',3,'09:20:00',4,162,20,28,35.3,6.44,100.4,8.19,2.61,2.03,2.49,1,104.46,11.87,7.12,233.97,27.83,1.83,NULL,'NSB - spilled nutrient bottle, resampled with spare bottle & syringe');
INSERT INTO `samples` VALUES (361,41,'2018-09-13',4,'09:50:00',4,162,20,28.1,34.9,6.41,99.9,8.18,2.17,2.36,2.93,1,189.99,12.55,8.32,481.39,142.92,1.6,NULL,NULL);
INSERT INTO `samples` VALUES (362,42,'2018-09-13',5,'10:11:00',4,162,20,27.7,34.1,6.46,99.7,8.17,3.05,3.07,3.12,1,207.52,12.8,9.23,965.8,159.65,1.66,NULL,NULL);
INSERT INTO `samples` VALUES (363,44,'2018-09-14',1,'07:52:00',5,162,20,27.2,35.6,6.41,98.8,8.2,0.72,0.77,0.75,1,77.69,10.9,5.6,106.37,10.04,1.57,NULL,NULL);
INSERT INTO `samples` VALUES (364,45,'2018-09-14',2,'08:18:00',5,162,20,27.6,35.2,6.48,99.9,8.15,0.65,0.8,0.83,1,66.09,8.77,4.58,79.47,5.86,3.16,NULL,'Re-used syringe from last site');
INSERT INTO `samples` VALUES (365,46,'2018-09-14',3,'08:37:00',5,162,20,27.5,35.3,6.47,99.8,8.18,0.68,1.1,0.78,1,79.32,9,5.02,95.5,11.03,2.17,NULL,'Re-used syringe from last site');
INSERT INTO `samples` VALUES (366,48,'2018-09-14',4,'08:58:00',5,162,20,27.6,35.4,6.46,99.9,8.18,0.79,0.85,0.96,1,74.42,9.72,5.23,83.93,11.98,2.91,NULL,'campers were turtle watch volunteers');
INSERT INTO `samples` VALUES (367,49,'2018-09-14',5,'09:25:00',5,162,20,28.2,35.5,6.47,101.1,8.21,0.3,0.32,0.48,1,78.51,10.6,5.4,98.99,8.83,2.19,NULL,NULL);
INSERT INTO `samples` VALUES (368,43,'2018-10-02',1,'08:00:00',NULL,162,21,27.8,34.5,5.8,85.3,8.1,2.09,2.03,2.57,1,138.38,9.45,5.96,484.81,56.17,3.2,NULL,NULL);
INSERT INTO `samples` VALUES (369,26,'2018-10-02',2,'08:15:00',NULL,162,21,26,33.2,6.16,91.4,8.02,21.2,22.3,23,1,125.65,11.97,10.63,735.79,33.02,4.27,NULL,NULL);
INSERT INTO `samples` VALUES (370,27,'2018-10-02',3,'08:35:00',NULL,162,21,27.4,33.7,5.92,90.2,8.11,8.79,9.39,10.1,1,112.3,8.59,7.51,616.11,39.83,6.22,NULL,NULL);
INSERT INTO `samples` VALUES (371,28,'2018-10-02',4,'08:55:00',NULL,162,21,27.3,34.1,6.61,100.6,8.14,9.91,10.4,10,1,233.02,10.82,7.78,535.29,137.78,3.44,NULL,'2 dogs');
INSERT INTO `samples` VALUES (372,29,'2018-10-02',5,'09:10:00',NULL,162,21,27.7,33.6,6.47,99,8.14,3.45,2.79,2.82,1,378,23.25,20.98,1016.06,278.6,11.93,NULL,NULL);
INSERT INTO `samples` VALUES (373,32,'2018-10-03',1,'08:01:00',NULL,162,21,27.1,26.5,6.97,102.2,8.14,3.29,3.14,2.8,1,128.12,10.47,7.77,339.33,31.49,6.79,NULL,NULL);
INSERT INTO `samples` VALUES (374,33,'2018-10-03',2,'08:36:00',NULL,162,21,27.8,35.1,6.46,99.9,8.14,0.9,0.82,0.98,1,113.48,9.08,5.53,196.64,28.52,3.13,NULL,NULL);
INSERT INTO `samples` VALUES (375,34,'2018-10-03',3,'08:52:00',NULL,162,21,27.8,35.1,6.69,103.3,8.13,3.29,2.79,2.74,1,85.06,8.62,4.16,195.18,6.34,3.51,NULL,NULL);
INSERT INTO `samples` VALUES (376,36,'2018-10-03',4,'09:15:00',NULL,162,21,27.8,35.2,6.91,106.8,8.11,2.02,2.36,2.14,1,78.28,7.69,4.34,166.9,2.8,4.06,NULL,NULL);
INSERT INTO `samples` VALUES (377,37,'2018-10-03',5,'09:28:00',NULL,162,21,28.1,35.4,6.45,104,8.12,1.71,1.88,1.8,1,84.31,9.8,5.82,106.4,6.4,4.2,NULL,NULL);
INSERT INTO `samples` VALUES (378,38,'2018-10-04',1,'08:20:00',NULL,162,21,27.4,35,6.69,103,8.15,4.33,4.76,4.32,1,121.7,8.22,5.12,218.3,27.13,4.38,NULL,NULL);
INSERT INTO `samples` VALUES (379,39,'2018-10-04',2,'08:46:00',NULL,162,21,27.5,35.3,6.74,104,8.17,3.08,3.5,2.93,1,78.7,8.68,4.87,88.41,2.95,3.22,NULL,NULL);
INSERT INTO `samples` VALUES (380,40,'2018-10-04',3,'09:10:00',NULL,162,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'beach not sampled due to high surf');
INSERT INTO `samples` VALUES (381,41,'2018-10-04',4,'09:25:00',NULL,162,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'beach not sampled due to high surf');
INSERT INTO `samples` VALUES (382,42,'2018-10-04',5,'09:37:00',NULL,162,21,28.1,35.1,6.58,102.6,8.17,4.91,4.91,5.03,1,105.27,8.89,6.17,351,30.92,2.69,NULL,NULL);
INSERT INTO `samples` VALUES (383,44,'2018-10-05',1,'09:27:00',NULL,162,21,28.1,35.4,6.6,102.8,8.16,3.37,3.72,3.6,1,129.65,10.43,6.61,99.18,12.73,8.86,NULL,NULL);
INSERT INTO `samples` VALUES (384,45,'2018-10-05',2,'09:10:00',NULL,162,21,27.9,35.3,6.62,102.8,8.18,4.71,4.75,4.57,1,98.07,10.42,6.37,97.23,10.94,2.5,NULL,NULL);
INSERT INTO `samples` VALUES (385,46,'2018-10-05',3,'08:50:00',NULL,162,21,27.8,35.1,6.66,103.1,8.17,5.81,6.36,6.49,1,153.24,10.39,7.41,168.63,47.67,6.79,NULL,NULL);
INSERT INTO `samples` VALUES (386,48,'2018-10-05',4,'08:12:00',NULL,162,21,27.5,26.6,6.98,103,8.17,5.08,4.96,5.03,1,180.21,10.69,7.83,240.19,68.15,7.17,NULL,NULL);
INSERT INTO `samples` VALUES (387,49,'2018-10-05',5,'08:30:00',NULL,162,21,27.9,27.1,6.92,103.1,8.19,3.6,3.89,4.13,1,109.14,9.66,5.22,101.55,6.63,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (388,43,'2018-10-23',1,'08:08:00',NULL,162,22,26.8,33.6,6.21,98.7,8.13,3.36,4.27,4.36,1,292.63,14.83,10.87,991.64,130.09,7.45,NULL,NULL);
INSERT INTO `samples` VALUES (389,26,'2018-10-23',2,'08:17:00',NULL,162,22,26,34.4,6.51,97.7,8.09,17.1,17.6,18.6,1,168.25,13.91,11.42,448.22,16.42,8.47,NULL,NULL);
INSERT INTO `samples` VALUES (390,27,'2018-10-23',3,'08:38:00',NULL,162,22,26.6,34.1,6.58,99.3,8.09,9.64,10.9,11.7,1,196.26,13.48,11.76,991.75,126.68,1.6,NULL,NULL);
INSERT INTO `samples` VALUES (391,28,'2018-10-23',4,'08:51:00',NULL,162,22,27.3,35.1,6.75,103.7,8.15,5.73,7.29,9.26,1,99.82,9.71,6.32,199.76,21.35,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (392,29,'2018-10-23',5,'09:08:00',NULL,162,22,27.4,34.3,6.8,104,8.14,6.97,7.45,7.8,1,238.26,16.19,13.07,625.75,165.08,6.15,NULL,NULL);
INSERT INTO `samples` VALUES (393,32,'2018-10-24',1,'08:00:00',NULL,162,22,27.2,34.7,6.66,102,8.13,5.35,4.96,6.17,1,93.51,10.3,6.74,287.47,27.93,2.2,NULL,NULL);
INSERT INTO `samples` VALUES (394,33,'2018-10-24',2,'08:22:00',NULL,162,22,27.5,35.2,6.65,102.9,8.16,2.57,2.44,3,1,88.08,60.12,9.23,272.23,19.93,0.57,NULL,NULL);
INSERT INTO `samples` VALUES (395,34,'2018-10-24',3,'08:44:00',NULL,162,22,27.5,34.7,6.7,103.2,8.1,2.62,3.09,3,1,99.96,9.57,7.7,634.53,34.29,4.88,NULL,NULL);
INSERT INTO `samples` VALUES (396,36,'2018-10-24',4,'09:09:00',NULL,162,22,27.6,35,7,108.3,8.09,1.45,1.95,1.98,1,78.61,8.8,5.75,177.8,8.8,2.54,NULL,NULL);
INSERT INTO `samples` VALUES (397,37,'2018-10-24',5,'09:33:00',NULL,162,22,27.7,34.7,6.67,103.2,8.11,1.72,1.74,1.64,1,99.62,11.55,9.76,467.34,28.19,2.28,NULL,NULL);
INSERT INTO `samples` VALUES (398,38,'2018-10-25',1,'08:16:00',NULL,162,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'not sampled due to high surf  4-6 feet');
INSERT INTO `samples` VALUES (399,39,'2018-10-25',2,'08:30:00',NULL,162,22,27.1,35.2,6.72,103,8.19,2.89,2.86,2.73,1,90.42,9.06,5.72,105.13,3.48,3.95,NULL,NULL);
INSERT INTO `samples` VALUES (400,40,'2018-10-25',3,'08:50:00',NULL,162,22,27.1,35,6.62,101.3,8.15,3.64,3.15,3.6,1,110.44,10.95,7.37,243.63,26.18,3.56,NULL,NULL);
INSERT INTO `samples` VALUES (401,41,'2018-10-25',4,'09:15:00',NULL,162,22,27.6,34.7,6.68,102.9,8.15,16.4,15.7,16.4,1,205.75,9.56,6.49,426.17,142.64,0.84,NULL,NULL);
INSERT INTO `samples` VALUES (402,42,'2018-10-25',5,'09:33:00',NULL,162,22,27.8,34.9,6.67,103.3,8.18,1.82,1.89,1.71,1,97.57,7.56,5.15,292.31,25.35,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (403,44,'2018-10-26',1,'07:55:00',NULL,162,22,26.9,35.4,6.72,103,8.17,0.9,0.9,0.9,1,83.12,10.28,6.53,95.03,7.94,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (404,45,'2018-10-26',2,'08:14:00',NULL,162,22,27.2,35.4,6.73,103.6,8.18,0.62,0.6,0.66,1,71.78,9.85,4.75,62.9,2.66,0.97,NULL,NULL);
INSERT INTO `samples` VALUES (405,46,'2018-10-26',3,'08:34:00',NULL,162,22,27.1,35.3,6.73,103.3,8.16,1.77,2.1,1.72,1,85.19,8.77,6.01,128.55,13.37,2.43,NULL,NULL);
INSERT INTO `samples` VALUES (406,48,'2018-10-26',4,'08:55:00',NULL,162,22,27.4,35.4,6.74,103.7,8.17,2.4,2.47,2.39,1,86.18,9.77,6.68,131.97,13.04,0.82,NULL,NULL);
INSERT INTO `samples` VALUES (407,49,'2018-10-26',5,'09:11:00',NULL,162,22,27.7,35.4,6.68,103.5,8.19,0.81,0.92,0.88,1,81.06,9.06,5.75,108.46,5.43,0.83,NULL,NULL);
INSERT INTO `samples` VALUES (408,43,'2018-11-13',1,'08:45:00',NULL,162,23,26.7,34.3,5.66,85.7,8.09,1.23,1.54,1.2,1,340.23,17.29,14.66,576.15,54.57,12.43,NULL,NULL);
INSERT INTO `samples` VALUES (409,26,'2018-11-13',2,'09:05:00',NULL,162,23,24,32.4,6.23,90.5,8.08,14.2,13.1,13.2,1,151.33,18.84,16.28,913.66,51.91,4.54,NULL,NULL);
INSERT INTO `samples` VALUES (410,27,'2018-11-13',3,'09:26:00',NULL,162,23,24.4,33.5,6.6,95.7,8.21,3.84,3.66,3.5,1,112.51,13.17,12.58,513.88,20.54,4.48,NULL,'1 dog');
INSERT INTO `samples` VALUES (411,28,'2018-11-13',4,'09:42:00',NULL,162,23,25.3,34.1,6.3,93.1,8.17,4.97,4.91,5.14,1,173.17,12.97,12.31,374.42,74.52,8.43,NULL,'1 dog');
INSERT INTO `samples` VALUES (412,29,'2018-11-13',5,'10:00:00',NULL,162,23,26.8,34.4,6.07,92.1,8.14,1.07,1.21,0.99,1,322.39,21.41,20.31,793.37,228.75,16.95,NULL,NULL);
INSERT INTO `samples` VALUES (413,32,'2018-11-14',1,'07:55:00',NULL,162,23,26.3,35.1,6.43,96.9,8.13,0.81,0.86,0.95,1,106.26,10.51,10.13,186.45,13.71,5.68,NULL,NULL);
INSERT INTO `samples` VALUES (414,33,'2018-11-14',2,'08:19:00',NULL,162,23,26.6,35.3,6.49,98.4,8.17,0.35,0.38,0.37,1,107.26,9.89,8.47,98.13,11.69,4.44,NULL,NULL);
INSERT INTO `samples` VALUES (415,34,'2018-11-14',3,'08:39:00',NULL,162,23,26.7,35.3,6.37,96.6,8.15,0.9,1.06,0.9,1,91.68,8.46,7.97,105.9,6.15,5.28,NULL,NULL);
INSERT INTO `samples` VALUES (416,36,'2018-11-14',4,'08:59:00',NULL,162,23,26.5,35.1,6.69,100.9,8.08,0.39,0.42,0.46,1,87.11,10.7,9.83,95.22,9.15,8.87,NULL,NULL);
INSERT INTO `samples` VALUES (417,37,'2018-11-14',5,'09:16:00',NULL,162,23,26.8,35.3,6.2,94.4,8.13,0.29,0.31,0.32,1,90.84,8.55,8.31,183.19,4.29,6.16,NULL,NULL);
INSERT INTO `samples` VALUES (418,38,'2018-11-15',1,'08:25:00',NULL,162,23,26.5,34.5,6.51,98,8.14,2.26,2.35,2.28,1,179.37,10.57,9.92,460.38,87.5,4.9,NULL,NULL);
INSERT INTO `samples` VALUES (419,39,'2018-11-15',2,'08:50:00',NULL,162,23,26.4,35.3,6.65,100.5,8.18,1.11,0.92,0.93,1,99.51,8.45,7.82,111.72,10.61,4.1,NULL,NULL);
INSERT INTO `samples` VALUES (420,40,'2018-11-15',3,'09:10:00',NULL,162,23,26.7,35.2,6.68,101.4,8.17,2.12,2.13,1.95,1,115.16,9.19,8.7,231.02,26.64,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (421,41,'2018-11-15',4,'09:25:00',NULL,162,23,27.6,34.9,6.59,101.4,8.15,1.75,1.87,1.88,1,213.11,10.15,9.24,383.14,130.41,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (422,42,'2018-11-15',5,'09:50:00',NULL,162,23,27.4,34.5,6.53,100,8.16,1.64,1.35,1.25,1,188.38,14.04,12.24,710.63,96.96,4.91,NULL,NULL);
INSERT INTO `samples` VALUES (423,44,'2018-11-16',1,'07:53:00',NULL,162,23,25.9,35.1,6.36,95.3,8.15,0.79,0.77,0.86,1,126.76,12.71,12.37,211.29,27.81,4.23,NULL,NULL);
INSERT INTO `samples` VALUES (424,45,'2018-11-16',2,'08:14:00',NULL,162,23,26.1,34.9,6.44,96.5,8.1,0.76,0.83,0.82,1,162.05,12.86,12.38,288.84,40.28,7.6,NULL,NULL);
INSERT INTO `samples` VALUES (425,46,'2018-11-16',3,'08:33:00',NULL,162,23,26.4,34.9,6.47,97.7,8.13,1.57,1.38,1.77,1,173.78,12.89,12.28,258.38,95.94,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (426,48,'2018-11-16',4,'08:56:00',NULL,162,23,26.4,35.2,6.62,100.1,8.16,1.08,1.01,0.99,1,181.44,11.82,11.1,161.6,41.61,10.8,NULL,NULL);
INSERT INTO `samples` VALUES (427,49,'2018-11-16',5,'09:10:00',NULL,162,23,26.6,35.2,6.61,100.6,8.18,0.63,0.6,0.93,1,113.18,12.26,10.76,167.17,24.13,3.67,NULL,NULL);
INSERT INTO `samples` VALUES (428,43,'2018-12-04',1,'08:02:00',NULL,162,24,25.1,32.7,6.06,88.5,8.15,0.82,1,1.3,1,260.17,9.08,8.57,1204.41,144.16,5.82,NULL,'Raul Ruiz (NMS)  tagged along as observer');
INSERT INTO `samples` VALUES (429,26,'2018-12-04',2,'08:36:00',NULL,162,24,24.4,32.5,5.94,85.6,8.12,6.36,6.58,7.29,1,180.16,11.89,12.12,973.81,68.82,10.36,NULL,'Multimeter was shutting off at 30% power @ KWP site, changed batteries and had no prob');
INSERT INTO `samples` VALUES (430,27,'2018-12-04',3,'08:54:00',NULL,162,24,25.3,34.5,5.77,85.3,8.16,4.53,3.55,3.59,1,137.49,6.58,4.91,515.94,43.93,7.01,NULL,NULL);
INSERT INTO `samples` VALUES (431,28,'2018-12-04',4,'09:15:00',NULL,162,24,24.9,34.5,6.77,99.5,8.16,6.57,7.27,5.98,1,146.29,10.65,9.58,486.34,46.73,11.1,NULL,NULL);
INSERT INTO `samples` VALUES (432,29,'2018-12-04',5,'09:30:00',NULL,162,24,26.1,33.7,5.84,87.2,8.13,1.73,1.45,1.73,1,478.28,20.3,20.08,1291.94,361.61,18.3,NULL,NULL);
INSERT INTO `samples` VALUES (433,32,'2018-12-05',1,NULL,NULL,162,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NMS lab closed due to Pres. Bush funeral');
INSERT INTO `samples` VALUES (434,33,'2018-12-05',2,NULL,NULL,162,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NMS lab closed due to Pres. Bush funeral');
INSERT INTO `samples` VALUES (435,34,'2018-12-05',3,NULL,NULL,162,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NMS lab closed due to Pres. Bush funeral');
INSERT INTO `samples` VALUES (436,36,'2018-12-05',4,NULL,NULL,162,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NMS lab closed due to Pres. Bush funeral');
INSERT INTO `samples` VALUES (437,37,'2018-12-05',5,NULL,NULL,162,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NMS lab closed due to Pres. Bush funeral');
INSERT INTO `samples` VALUES (438,38,'2018-12-06',1,'08:20:00',NULL,162,24,24.6,34.7,6.72,98.1,8.13,8.44,8.81,8.41,1,202.76,8.49,6.83,542.58,99.28,6.9,NULL,'new volunteer Bob Sousa was training');
INSERT INTO `samples` VALUES (439,39,'2018-12-06',2,'08:45:00',NULL,162,24,24.9,35.5,6.8,101.1,8.2,0.34,0.55,0.45,1,179.04,8.35,4.86,162.78,3.13,13.3,NULL,'new volunteer Bob Sousa was training');
INSERT INTO `samples` VALUES (440,40,'2018-12-06',3,'09:10:00',NULL,162,24,25,35.1,6.84,100.8,8.18,1.34,1.49,1.45,1,126.77,7.56,5.3,313.25,39.5,5.63,NULL,'new volunteer Bob Sousa was training');
INSERT INTO `samples` VALUES (441,41,'2018-12-06',4,'09:28:00',NULL,162,24,25.5,34.4,6.77,100.3,8.15,1.63,1.74,1.74,1,354.28,8.08,6.81,567.4,262.81,8.79,NULL,'new volunteer Bob Sousa was training');
INSERT INTO `samples` VALUES (442,42,'2018-12-06',5,'09:45:00',NULL,162,24,25.6,33.4,6.57,97,8.14,2.2,2.67,2.68,1,290.26,8.26,8.12,1428.69,199,5.81,NULL,'new volunteer Bob Sousa was training');
INSERT INTO `samples` VALUES (443,44,'2018-12-07',1,'07:50:00',NULL,162,24,24.9,35.4,6.8,100.2,8.18,1.08,1.36,1.17,1,85.17,7.22,5.47,172.7,3.96,3.39,NULL,NULL);
INSERT INTO `samples` VALUES (444,45,'2018-12-07',2,'08:21:00',NULL,162,24,25.3,35.4,6.75,100.1,8.15,0.6,0.6,0.78,1,86.76,4.97,3.78,135.06,5.05,5.06,NULL,NULL);
INSERT INTO `samples` VALUES (445,46,'2018-12-07',3,'08:40:00',NULL,162,24,25.6,35.3,6.75,100.7,8.15,1.03,0.98,0.92,1,118.22,6.53,4.92,220.82,21.99,5.56,NULL,NULL);
INSERT INTO `samples` VALUES (446,48,'2018-12-07',4,'09:05:00',NULL,162,24,25.8,35.4,6.81,101.8,8.17,0.71,0.86,0.79,1,99.7,5.04,3.26,166.13,16.42,3.49,NULL,NULL);
INSERT INTO `samples` VALUES (447,49,'2018-12-07',5,'09:22:00',NULL,162,24,25.9,35.3,6.84,102.3,8.2,0.43,0.43,0.39,1,85.28,6.79,4.69,183.29,9.57,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (448,43,'2018-12-18',1,'08:00:00',NULL,162,25,24.8,33.8,5.74,83.2,8.11,2.13,1.93,1.81,1,150.66,5.34,3.92,683.02,79.12,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (449,26,'2018-12-18',2,'08:14:00',NULL,162,25,22.7,31.8,6.45,89.1,8.13,11,11.6,11.7,1,114.82,9.7,8.8,921.73,48.39,3.66,NULL,NULL);
INSERT INTO `samples` VALUES (450,27,'2018-12-18',3,'08:30:00',NULL,162,25,23.6,33.4,6.05,85.9,8.15,5.36,6.22,5.86,1,128.8,5.51,4.35,517.05,43.28,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (451,28,'2018-12-18',4,'08:46:00',NULL,162,25,23.5,34,6.87,97.6,8.15,3.89,4.24,3.79,1,180.23,7.94,5.99,372.16,77.99,5.02,NULL,NULL);
INSERT INTO `samples` VALUES (452,29,'2018-12-18',5,'09:02:00',NULL,162,25,24.9,32.5,6.25,90.2,8.11,2.15,2.29,2.14,1,689.77,32.74,28.5,1686.62,542.64,18.29,NULL,NULL);
INSERT INTO `samples` VALUES (453,32,'2018-12-19',1,'08:05:00',NULL,162,25,24.4,34.5,6.54,94.8,8.1,1.9,1.73,2.2,1,126.84,8.09,5.11,388.46,49.28,3.61,NULL,NULL);
INSERT INTO `samples` VALUES (454,33,'2018-12-19',2,'08:40:00',NULL,162,25,24.2,34.9,6.8,98.6,8.14,0.75,0.89,0.95,1,85.22,5.74,3.32,247.27,26.07,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (455,34,'2018-12-19',3,'08:57:00',NULL,162,25,24.5,35.2,7,102,8.15,1.48,1.48,1.35,1,67.14,5.66,2.99,286.68,15.2,1.44,NULL,NULL);
INSERT INTO `samples` VALUES (456,36,'2018-12-19',4,'09:21:00',NULL,162,25,24.5,35,7.36,107.6,8.11,1.06,0.99,1.18,1,79.77,7.19,4.54,296.89,7.31,3.04,NULL,NULL);
INSERT INTO `samples` VALUES (457,37,'2018-12-19',5,'09:45:00',NULL,162,25,24.8,35.1,6.95,102.4,8.12,0.86,0.85,0.76,1,79.17,7.63,4.37,269.47,9.81,4.87,NULL,NULL);
INSERT INTO `samples` VALUES (458,38,'2018-12-20',1,'08:25:00',NULL,162,25,23.7,33.9,6.63,94.4,8.1,4.33,4.9,4.55,1,224.75,9,5.88,652.79,135.31,2.7,NULL,NULL);
INSERT INTO `samples` VALUES (459,39,'2018-12-20',2,'08:55:00',NULL,162,25,24.1,35.5,6.86,99.4,8.17,0.71,0.7,0.77,1,77.83,7.41,2.99,22.3,4.63,3.64,NULL,NULL);
INSERT INTO `samples` VALUES (460,40,'2018-12-20',3,'09:15:00',NULL,162,25,24,35,6.94,100.1,8.15,2.34,2.54,2.61,1,118.21,10.69,7.22,291.18,33.4,3.95,NULL,NULL);
INSERT INTO `samples` VALUES (461,41,'2018-12-20',4,'09:30:00',NULL,162,25,24.4,34.9,6.9,100,8.15,1.71,1.71,1.76,1,238.95,10.22,6.98,384.09,146.11,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (462,42,'2018-12-20',5,'09:47:00',NULL,162,25,24.7,32.5,6.85,98.7,8.12,1.38,1.69,1.69,1,315.3,8.65,7.7,1518.24,224.55,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (463,44,'2018-12-21',1,'07:54:00',NULL,162,25,24.1,35.2,6.89,99.7,8.15,0.56,0.53,0.61,1,89.2,8.65,4.39,81.14,8.86,1.35,NULL,NULL);
INSERT INTO `samples` VALUES (464,45,'2018-12-21',2,'08:17:00',NULL,162,25,24.6,35.3,6.74,98.4,8.17,0.27,0.3,0.3,1,96.04,8.55,3.42,72.36,7.69,5.03,NULL,NULL);
INSERT INTO `samples` VALUES (465,46,'2018-12-21',3,'08:37:00',NULL,162,25,24.3,35.1,6.89,100.1,8.13,0.98,0.83,0.9,1,123.39,9,5.18,274.49,43.3,3.76,NULL,NULL);
INSERT INTO `samples` VALUES (466,48,'2018-12-21',4,'08:58:00',NULL,162,25,24.9,35.3,6.79,99.5,8.19,0.35,0.5,0.32,1,85.56,7.03,3.4,78.01,17.01,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (467,49,'2018-12-21',5,'09:13:00',NULL,162,25,25.1,35.3,6.77,99.7,8.19,0.23,0.23,0.44,1,67.8,6.97,2.67,46.71,4.02,1.13,NULL,NULL);
INSERT INTO `samples` VALUES (468,43,'2019-01-15',1,'08:04:00',NULL,162,26,23.8,33.4,6.72,96,8.2,4.56,4.97,4.97,1,198.98,12.92,10.85,706.33,64.38,21.92,NULL,'West Maui equip used');
INSERT INTO `samples` VALUES (469,26,'2019-01-15',2,'08:40:00',NULL,162,26,23.4,34.1,6.29,89.6,8.1,10.8,11.8,12.1,1,95.02,10.51,7.55,243.71,8.15,16.33,NULL,'West Maui equip used');
INSERT INTO `samples` VALUES (470,27,'2019-01-15',3,'09:05:00',NULL,162,26,24.2,34.1,6.52,94.1,8.17,9.54,8.63,8.66,1,126.44,11.13,7.81,378.46,38.87,1.58,NULL,'West Maui equip used');
INSERT INTO `samples` VALUES (471,28,'2019-01-15',4,'09:30:00',NULL,162,26,24.4,34.4,6.65,96.5,8.16,8.76,8.69,9.11,1,116.19,9.89,7.18,155.57,33.97,2.68,NULL,'West Maui equip used');
INSERT INTO `samples` VALUES (472,29,'2019-01-15',5,'10:00:00',NULL,162,26,24.6,32.6,6.9,99.7,8.17,3.3,4.14,4.17,1,344.3,22.48,19.43,1064.79,245.38,6.59,NULL,'West Maui equip used');
INSERT INTO `samples` VALUES (473,32,'2019-01-16',1,'08:10:00',NULL,162,26,23.5,33.7,6.81,97.2,8.19,4.08,3.79,4.45,1,130.24,11.51,7.12,434.02,52.24,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (474,33,'2019-01-16',2,'08:37:00',NULL,162,26,23.8,34.2,6.86,98.8,8.18,2.45,2.58,2.56,1,122.87,10.63,7.67,322.04,47.34,0.58,NULL,NULL);
INSERT INTO `samples` VALUES (475,34,'2019-01-16',3,'09:02:00',NULL,162,26,23.9,34,6.89,99.3,8.15,2.63,2.9,3.01,1,182.03,12.04,9.44,524.28,34.41,8.82,NULL,NULL);
INSERT INTO `samples` VALUES (476,36,'2019-01-16',4,'09:28:00',NULL,162,26,24.2,34.5,7.06,102.5,8.15,1.05,0.9,1.08,1,111.44,8.08,5.76,214.06,7.44,3.53,NULL,NULL);
INSERT INTO `samples` VALUES (477,37,'2019-01-16',5,'09:50:00',NULL,162,26,24.6,34.4,6.78,99,8.16,1.44,1.84,1.78,1,86.78,9.44,7.16,286.79,11.33,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (478,38,'2019-01-17',1,NULL,NULL,162,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Stopped at Haycarft Park and water was too rough. Stopped at each other site and found it too rough');
INSERT INTO `samples` VALUES (479,39,'2019-01-17',2,NULL,NULL,162,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Canoes did not even go out today.  No sampling due to high surf');
INSERT INTO `samples` VALUES (480,40,'2019-01-17',3,NULL,NULL,162,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No sampling due to high surf');
INSERT INTO `samples` VALUES (481,41,'2019-01-17',4,NULL,NULL,162,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No sampling due to high surf');
INSERT INTO `samples` VALUES (482,42,'2019-01-17',5,NULL,NULL,162,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No sampling due to high surf');
INSERT INTO `samples` VALUES (483,44,'2019-01-18',1,'08:00:00',NULL,162,26,23.4,34.8,6.85,98.1,8.19,1.19,1.24,1.32,1,94.41,8.75,4.69,71.25,6.38,3.56,NULL,NULL);
INSERT INTO `samples` VALUES (484,45,'2019-01-18',2,'08:20:00',NULL,162,26,23.8,34.6,6.85,98.5,8.2,0.8,0.91,0.82,1,133.34,11.55,5.35,100.74,9.2,6.57,NULL,NULL);
INSERT INTO `samples` VALUES (485,46,'2019-01-18',3,'08:40:00',NULL,162,26,24.2,34.4,6.84,99,8.2,0.6,0.62,0.6,1,132.8,8.41,3.62,138.38,50.3,3.67,NULL,NULL);
INSERT INTO `samples` VALUES (486,48,'2019-01-18',4,'09:10:00',NULL,162,26,24.1,34.6,6.86,99,8.2,1.24,1,1.16,1,93.56,7.62,3.37,142.6,31.99,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (487,49,'2019-01-18',5,'09:35:00',NULL,162,26,24.3,34.4,6.84,99.1,8.22,0.55,0.63,0.52,1,91.91,8.31,3.32,164.88,28.84,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (488,43,'2019-02-05',1,'08:00:00',NULL,162,27,23.4,35.7,6.33,91.1,8.13,1.35,2.34,1.65,1,121.6,8.8,7.57,586.45,43.86,7.12,NULL,NULL);
INSERT INTO `samples` VALUES (489,26,'2019-02-05',2,'08:15:00',NULL,162,27,21.4,33.7,6.84,94.1,8.11,19.2,20.5,19.7,1,133.12,14.9,13.74,1003.49,49.84,5.89,NULL,NULL);
INSERT INTO `samples` VALUES (490,27,'2019-02-05',3,'08:33:00',NULL,162,27,23.1,34.7,6.24,89,8.15,6.1,6.85,7.69,1,113.46,7.91,6.97,608.93,37.35,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (491,28,'2019-02-05',4,'08:52:00',NULL,162,27,22.5,35.3,6.85,96.9,8.18,5.57,5.02,5.73,1,121.48,8.45,6.78,394.67,41.6,3.92,NULL,'took 4th reading at KKP');
INSERT INTO `samples` VALUES (492,29,'2019-02-05',5,'09:07:00',NULL,162,27,23.1,35.1,6.71,96.2,8.14,4.48,4.54,4.81,1,361.15,21.79,20.47,1041.19,233.73,8.82,NULL,NULL);
INSERT INTO `samples` VALUES (493,32,'2019-02-06',1,'08:00:00',NULL,162,27,23.5,36.7,6.82,98.9,8.15,1.64,2.13,2.55,1,86.16,9.66,6.19,143.32,8.64,2.8,NULL,NULL);
INSERT INTO `samples` VALUES (494,33,'2019-02-06',2,'08:22:00',NULL,162,27,23.8,36.8,6.89,100.9,8.14,0.93,0.96,1.11,1,80.86,7.85,5.82,111.68,8.65,2.46,NULL,NULL);
INSERT INTO `samples` VALUES (495,34,'2019-02-06',3,'08:50:00',NULL,162,27,23.8,36.8,6.89,100.7,8.14,6.28,5.74,6.02,1,76.28,7.3,5.66,176.44,8.99,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (496,36,'2019-02-06',4,'09:13:00',NULL,162,27,24,36.8,6.88,100.9,8.11,0.68,0.9,0.82,1,78.85,8.05,5.62,119.49,5.08,3,NULL,NULL);
INSERT INTO `samples` VALUES (497,37,'2019-02-06',5,'09:35:00',NULL,162,27,24,36.5,6.74,98.8,8.09,1.26,1.15,1.15,1,69.59,7.39,6.12,208.47,8.57,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (498,38,'2019-02-07',1,'08:16:00',NULL,162,27,23.4,34.5,6.91,99,8.08,7.46,9.12,7.57,1,181.71,10.26,8.6,579.45,84.11,4.96,NULL,NULL);
INSERT INTO `samples` VALUES (499,39,'2019-02-07',2,'08:50:00',NULL,162,27,23.6,30.1,7.16,100.3,8.16,16.9,19.6,20,1,202.9,21.12,19.74,1158.77,26.33,6.31,NULL,NULL);
INSERT INTO `samples` VALUES (500,40,'2019-02-07',3,'09:09:00',NULL,162,27,23.9,35.6,6.89,100.2,8.15,3.31,3.86,4.26,1,202.11,9.96,8.88,759.64,107.5,3.48,NULL,NULL);
INSERT INTO `samples` VALUES (501,41,'2019-02-07',4,'09:29:00',NULL,162,27,24.3,35,6.86,100.1,8.12,13.6,14.2,9.88,1,416.79,11.13,9.45,842.27,269.38,4.14,NULL,'took a 4th reading on Turbidity');
INSERT INTO `samples` VALUES (502,42,'2019-02-07',5,'09:50:00',NULL,162,27,24.3,34.6,6.86,99.9,8.13,4.09,5.71,6.04,1,188.96,10.58,9.94,1091.29,106.03,5.21,NULL,NULL);
INSERT INTO `samples` VALUES (503,44,'2019-02-08',1,'08:00:00',NULL,162,27,23.3,36.9,6.87,99.4,8.15,0.8,0.66,0.68,1,76.04,8.09,4.88,81.79,5.57,1.98,NULL,NULL);
INSERT INTO `samples` VALUES (504,45,'2019-02-08',2,'08:25:00',NULL,162,27,23.5,36.9,6.92,100.6,8.16,0.95,0.74,0.77,1,77.29,8.55,4.29,82.69,5,4.95,NULL,NULL);
INSERT INTO `samples` VALUES (505,46,'2019-02-08',3,'08:46:00',NULL,162,27,24,36.8,6.92,101.3,8.15,0.64,0.62,0.65,1,73.69,7.8,4.33,89.42,8.09,4.1,NULL,NULL);
INSERT INTO `samples` VALUES (506,48,'2019-02-08',4,'09:12:00',NULL,162,27,23.8,36.9,6.96,101.5,8.17,0.89,0.89,0.92,1,75.03,8.65,4.73,85.79,6.28,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (507,49,'2019-02-08',5,'09:31:00',NULL,162,27,23.9,36.9,6.97,101.8,8.18,0.64,0.71,0.55,1,90.39,12.05,5.44,119.34,9.65,9.82,NULL,NULL);
INSERT INTO `samples` VALUES (508,43,'2019-02-26',1,'08:00:00',NULL,162,28,24.1,33.5,6.08,87.5,8.11,0.52,0.68,0.74,1,135.69,9.94,6.73,684.91,51.01,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (509,26,'2019-02-26',2,'08:30:00',NULL,162,28,23.4,31.9,6.11,86,8.1,6.16,7.09,6.88,1,120.52,9.53,7.99,857.09,40.53,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (510,27,'2019-02-26',3,'08:55:00',NULL,162,28,24.1,33,6.35,91.1,8.19,4.44,4.77,4.71,1,110.65,6.66,5.18,577.07,35.39,4.73,NULL,NULL);
INSERT INTO `samples` VALUES (511,28,'2019-02-26',4,'09:15:00',NULL,162,28,23.6,34.5,6.72,96.4,8.18,7.81,8.34,8.79,1,83.99,7.93,5.31,256.95,14.02,4.25,NULL,'2 in the water were dogs');
INSERT INTO `samples` VALUES (512,29,'2019-02-26',5,'09:40:00',NULL,162,28,24.6,31.1,6.64,95,8.13,1.15,1.2,1.38,1,1187.17,26.55,21.65,1779.46,749.38,15.63,NULL,NULL);
INSERT INTO `samples` VALUES (513,32,'2019-02-27',1,'07:55:00',NULL,162,28,23.4,34.2,6.7,95.6,8.14,1.85,1.79,1.63,1,102.25,8.57,5,319.08,30.33,10.39,NULL,NULL);
INSERT INTO `samples` VALUES (514,33,'2019-02-27',2,'08:28:00',NULL,162,28,23,34.5,7.06,100.5,8.17,0.58,0.63,0.62,1,102.13,9.84,6.15,262.72,23.62,0.98,NULL,NULL);
INSERT INTO `samples` VALUES (515,34,'2019-02-27',3,'08:42:00',NULL,162,28,22.9,34.6,7.21,100.1,8.17,0.72,0.71,0.73,1,83.59,8.76,4.58,215.65,10.63,2.12,NULL,NULL);
INSERT INTO `samples` VALUES (516,36,'2019-02-27',4,'09:04:00',NULL,162,28,23.4,34.6,7.42,105.8,8.11,0.69,1.05,0.69,1,89.47,9.21,6.32,284.19,7.26,3.49,NULL,NULL);
INSERT INTO `samples` VALUES (517,37,'2019-02-27',5,'09:25:00',NULL,162,28,23.4,34.3,6.98,99.6,8.11,0.72,0.73,0.89,1,88.45,10.74,8.39,582.25,18.03,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (518,38,'2019-02-28',1,'08:10:00',NULL,162,28,22,33.3,6.43,88.9,8.06,2.23,2.13,1.75,1,221.53,7.9,6.04,672.93,142.62,3.33,NULL,'saw drops on outside of vial, blotted off, took 3 new readings');
INSERT INTO `samples` VALUES (519,39,'2019-02-28',2,'08:40:00',NULL,162,28,22.7,35,7.05,99.3,8.2,0.47,0.49,0.48,1,78.64,9.06,4.66,57.73,2.85,1.36,NULL,NULL);
INSERT INTO `samples` VALUES (520,40,'2019-02-28',3,'09:00:00',NULL,162,28,22.6,34.7,6.98,98.1,8.19,1.85,2.16,1.75,1,67.94,7.3,4.64,138.06,10.19,2.47,NULL,NULL);
INSERT INTO `samples` VALUES (521,41,'2019-02-28',4,'09:20:00',NULL,162,28,23.3,34.1,6.85,97.5,8.16,3.61,4.49,6.59,1,269.09,7.8,5.09,389.98,209.87,0.89,NULL,NULL);
INSERT INTO `samples` VALUES (522,42,'2019-02-28',5,'09:40:00',NULL,162,28,23.6,33.1,6.83,97.3,8.15,3.25,2.23,2.46,1,239,10,8.73,1261.69,158.15,2.58,NULL,NULL);
INSERT INTO `samples` VALUES (523,44,'2019-03-01',1,'07:50:00',NULL,162,28,22.1,34.7,7.18,100.2,8.17,0.88,0.72,0.74,1,66.07,9.18,5.6,160.16,11.68,0.59,NULL,NULL);
INSERT INTO `samples` VALUES (524,45,'2019-03-01',2,'08:11:00',NULL,162,28,22.3,34.8,7.06,99,8.16,0.69,0.72,0.61,1,55.05,5.95,3.79,156.18,4.54,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (525,46,'2019-03-01',3,'08:37:00',NULL,162,28,23,33.9,6.89,97.2,8.14,0.88,0.77,0.75,1,199.08,7.35,5.62,334.5,129.56,1.97,NULL,'re-took 1st & 3rd reading due to odd values');
INSERT INTO `samples` VALUES (526,48,'2019-03-01',4,'08:53:00',NULL,162,28,22.8,34.7,7.11,100.4,8.19,1.21,1.13,1.12,1,91.91,8.21,5.4,192.09,25.03,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (527,49,'2019-03-01',5,'09:08:00',NULL,162,28,23.4,34.5,7.11,101.3,8.2,1.11,1.18,1.18,1,98.14,8.37,5.7,212.65,37.37,0.75,NULL,NULL);
INSERT INTO `samples` VALUES (528,43,'2019-03-19',1,'08:05:00',NULL,162,29,22.9,32.9,6.58,92.2,8.11,1.29,1.66,1.87,1,318.68,14.19,12.17,1174.38,134.13,4.88,NULL,NULL);
INSERT INTO `samples` VALUES (529,26,'2019-03-19',2,'08:30:00',NULL,162,29,22.8,33.7,6.53,91.7,8.07,6.19,7.43,7.57,1,114.21,11.5,7.56,495.76,14.21,4.03,NULL,NULL);
INSERT INTO `samples` VALUES (530,27,'2019-03-19',3,'08:50:00',NULL,162,29,23.1,32.6,6.62,93,8.13,7.99,6.13,8.73,1,136.5,12.94,10.63,830.46,57.79,4.54,NULL,NULL);
INSERT INTO `samples` VALUES (531,28,'2019-03-19',4,'09:13:00',NULL,162,29,23.3,34.4,7.35,104.5,8.17,3.2,3.85,4.43,1,125.81,10.85,6.86,271.29,27.6,3.4,NULL,NULL);
INSERT INTO `samples` VALUES (532,29,'2019-03-19',5,'09:31:00',NULL,162,29,23.6,32.5,7.25,102.6,8.13,3.52,5.28,5.14,1,540.84,27.21,25.04,1348.73,430.18,14.24,NULL,'50 swimmers were surfers');
INSERT INTO `samples` VALUES (533,32,'2019-03-20',1,'08:00:00',NULL,162,29,24.2,34.7,6.78,98.2,8.14,1.7,2.82,2.84,1,136.65,11.04,7.18,400.3,44.5,2.52,NULL,'took second  MML turbidity readings because of abnormal high initial reading');
INSERT INTO `samples` VALUES (534,33,'2019-03-20',2,'08:40:00',NULL,162,29,23.9,34.9,6.89,99.9,8.15,0.77,0.85,0.81,1,125.81,11.1,6.73,360.33,45.46,0.35,NULL,NULL);
INSERT INTO `samples` VALUES (535,34,'2019-03-20',3,'09:10:00',NULL,162,29,24.1,34.3,6.97,100.9,8.09,3.65,4,3.81,1,137.29,14.18,11.77,945.28,60.58,1.11,NULL,NULL);
INSERT INTO `samples` VALUES (536,36,'2019-03-20',4,'09:31:00',NULL,162,29,24,34.6,7.1,102.7,8.08,1.5,2.05,2.69,1,107.4,12.16,8.54,519.33,16.27,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (537,37,'2019-03-20',5,'10:00:00',NULL,162,29,24.2,33.9,6.49,93.9,8.01,1.35,1.64,1.51,1,148.02,16.62,14.51,806.84,34.81,3.91,NULL,NULL);
INSERT INTO `samples` VALUES (538,38,'2019-03-21',1,'08:15:00',NULL,162,29,23.6,33.8,6.7,95.8,8.11,2.97,3.52,3.44,1,254.85,12.78,8.96,602.7,150.3,2.53,NULL,NULL);
INSERT INTO `samples` VALUES (539,39,'2019-03-21',2,'08:45:00',NULL,162,29,23.7,35.2,6.99,100.9,8.19,0.83,0.88,0.78,1,82.15,9.16,4.26,64.08,0.71,1,NULL,NULL);
INSERT INTO `samples` VALUES (540,40,'2019-03-21',3,'09:00:00',NULL,162,29,23.6,34.8,6.9,99.1,8.16,1.49,1.5,1.87,1,106.77,9.86,6.09,253.15,26.48,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (541,41,'2019-03-21',4,'09:20:00',NULL,162,29,24.6,33.5,6.88,99.9,8.08,5.08,5.97,5.09,1,616.16,13.86,10.19,916.72,505.69,0.37,NULL,NULL);
INSERT INTO `samples` VALUES (542,42,'2019-03-21',5,'09:35:00',NULL,162,29,24.3,32.5,6.75,97.1,8.09,4.03,3.67,3.27,1,362.34,12.98,11.01,1800.47,265.18,4.05,NULL,NULL);
INSERT INTO `samples` VALUES (543,44,'2019-03-22',1,'07:54:00',NULL,162,29,23.4,35,7.08,101,8.13,1.07,1.16,1.11,1,98.15,11.35,5.93,187.3,14.26,0.86,NULL,NULL);
INSERT INTO `samples` VALUES (544,45,'2019-03-22',2,'08:15:00',NULL,162,29,23.9,35.1,6.95,100.2,8.13,0.69,0.75,0.47,1,84.2,9.27,5.14,85.56,4.95,2.55,NULL,NULL);
INSERT INTO `samples` VALUES (545,46,'2019-03-22',3,'08:39:00',NULL,162,29,23.8,34.5,6.84,98.1,8.11,1.19,1.53,1.46,1,234.13,11.04,6.89,307.56,156.1,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (546,48,'2019-03-22',4,'09:01:00',NULL,162,29,24.3,34.9,6.97,100.9,8.16,0.53,0.91,0.54,1,112.54,9.33,4.36,178.91,34.65,1.73,NULL,NULL);
INSERT INTO `samples` VALUES (547,49,'2019-03-22',5,'09:19:00',NULL,162,29,24.3,35.1,6.99,101.2,8.16,0.94,0.85,0.87,1,109.78,11.26,5.87,189.72,30.56,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (548,43,'2019-04-09',1,'07:56:00',NULL,162,30,24.7,33.9,6.72,97.6,8.13,1.43,1.46,1.6,1,173.95,14.65,9.26,782.02,58.88,5.9,NULL,NULL);
INSERT INTO `samples` VALUES (549,26,'2019-04-09',2,'08:24:00',NULL,162,30,24.2,32.3,6.45,92.2,8.05,12,12.3,12.9,1,122.84,14.16,12.05,1127.14,23.11,3.54,NULL,NULL);
INSERT INTO `samples` VALUES (550,27,'2019-04-09',3,'08:40:00',NULL,162,30,26.3,32.3,6.23,90.8,8.1,6.76,6.41,6.68,1,184.13,12.47,10.44,1324.4,104.06,2.29,NULL,NULL);
INSERT INTO `samples` VALUES (551,28,'2019-04-09',4,'09:01:00',NULL,162,30,25.3,34.8,6.74,99.5,8.15,7.49,6.97,7.38,1,116.47,11.71,6.33,317.59,21.58,2.29,NULL,NULL);
INSERT INTO `samples` VALUES (552,29,'2019-04-09',5,'09:20:00',NULL,162,30,25.7,31.3,7.09,103.2,8.14,2.86,3.04,3.15,1,1188.46,51.55,46.97,3446.91,1057.92,7.64,NULL,NULL);
INSERT INTO `samples` VALUES (553,32,'2019-04-10',1,'07:58:00',NULL,162,30,24.8,34.8,6.81,99.7,8.12,1.81,2.6,2.29,1,117.59,11.98,6.2,298.24,23.03,4.37,NULL,NULL);
INSERT INTO `samples` VALUES (554,33,'2019-04-10',2,'08:23:00',NULL,162,30,25.2,35,6.71,99.2,8.15,0.52,0.56,0.75,1,84.87,8.85,4.62,170.91,10.24,1.05,NULL,NULL);
INSERT INTO `samples` VALUES (555,34,'2019-04-10',3,'08:42:00',NULL,162,30,25.3,35,6.67,98.5,8.11,0.93,1,1.54,1,105.92,12.33,6.6,299.39,16.87,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (556,36,'2019-04-10',4,'09:01:00',NULL,162,30,25.4,34.9,7.42,109.8,8.11,1.03,1.06,1.19,1,77.38,8.47,5.14,208.49,5.92,1.69,NULL,NULL);
INSERT INTO `samples` VALUES (557,37,'2019-04-10',5,'09:24:00',NULL,162,30,25.5,33.8,6.81,100.4,8.03,0.88,0.88,0.86,1,95.82,11.68,6.8,328.37,13.93,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (558,38,'2019-04-11',1,'08:30:00',NULL,162,30,24.4,34.2,6.83,99.2,8.12,2.82,2.72,3.23,1,195.91,10.03,6.67,519.1,110.11,1.85,NULL,NULL);
INSERT INTO `samples` VALUES (559,39,'2019-04-11',2,'08:52:00',NULL,162,30,24.8,35.4,6.91,101.4,8.18,1.06,0.95,1.05,1,93.62,9.8,4.09,96.76,4.57,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (560,40,'2019-04-11',3,'09:18:00',NULL,162,30,25.2,34.9,6.88,101.5,8.15,2.52,3.69,3.93,1,156.6,11.84,7.16,396.74,75.6,1.29,NULL,NULL);
INSERT INTO `samples` VALUES (561,41,'2019-04-11',4,'09:40:00',NULL,162,30,26.1,34.4,6.76,101.2,8.12,1.2,1.32,1.62,1,318.04,11.91,7.86,617.36,230.72,1.35,NULL,NULL);
INSERT INTO `samples` VALUES (562,42,'2019-04-11',5,'09:55:00',NULL,162,30,25.9,32.8,6.81,100.8,8.11,2.6,2.52,2.48,1,314.3,12.92,10.83,1779.41,225.51,5.27,NULL,NULL);
INSERT INTO `samples` VALUES (563,44,'2019-04-12',1,'08:03:00',NULL,162,30,25.1,35,6.75,99.5,8.15,0.54,0.76,0.6,1,123.25,11.22,6.26,188.6,24.59,1.47,NULL,NULL);
INSERT INTO `samples` VALUES (564,45,'2019-04-12',2,'08:26:00',NULL,162,30,25.3,34.8,6.87,101.3,8.12,0.86,1.29,1.33,1,118.53,11.27,6.64,293.91,41.94,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (565,46,'2019-04-12',3,'08:50:00',NULL,162,30,25.4,34.5,6.58,97.3,8.11,1.15,1.31,1.42,1,246.59,11.9,5.9,337.52,148.59,5.84,NULL,NULL);
INSERT INTO `samples` VALUES (566,48,'2019-04-12',4,'09:15:00',NULL,162,30,25.9,34.8,6.85,102.4,8.18,0.78,1.04,0.94,1,104.33,10.38,4.36,176.95,29.47,1.77,NULL,NULL);
INSERT INTO `samples` VALUES (567,49,'2019-04-12',5,'09:32:00',NULL,162,30,25.9,34.9,6.87,102.8,8.19,1.34,1.25,1.2,1,109.82,12.01,6.29,235.38,43.31,0.4,NULL,NULL);
INSERT INTO `samples` VALUES (568,43,'2019-04-30',1,'08:00:00',NULL,162,31,24.9,30.1,6.7,95.6,8.11,4.89,6.8,6.2,1,361.89,13.21,12.92,2440.05,254.48,2.07,NULL,NULL);
INSERT INTO `samples` VALUES (569,26,'2019-04-30',2,'08:24:00',NULL,162,31,24.2,30.3,6.16,87,8.04,10.3,10,10,1,157.93,9.99,7.08,1657.07,62.84,0.84,NULL,'took 4th reading of NTU');
INSERT INTO `samples` VALUES (570,27,'2019-04-30',3,'08:47:00',NULL,162,31,25.5,32.9,6.2,90.9,8.1,3.93,4.45,4.25,1,123.5,7.28,3.91,873.21,36.13,1.05,NULL,NULL);
INSERT INTO `samples` VALUES (571,28,'2019-04-30',4,'09:10:00',NULL,162,31,25.8,34.2,6.87,102,8.13,10.8,11.6,12.4,1,148.11,9.78,6.23,453.4,49.21,1.48,NULL,'4 in the water were surfers');
INSERT INTO `samples` VALUES (572,29,'2019-04-30',5,'09:35:00',NULL,162,31,26,31.5,7.12,104.6,8.12,10.4,9.32,7.77,1,734.81,28.87,27.3,2290.06,461.02,4.7,NULL,'took 4th reading of NTU');
INSERT INTO `samples` VALUES (573,32,'2019-05-01',1,'07:53:00',NULL,162,31,24.9,33.8,6.67,97.1,8.12,0.89,1.06,1.17,1,172.2,11.82,7.09,476.13,69,4.52,NULL,NULL);
INSERT INTO `samples` VALUES (574,33,'2019-05-01',2,'08:15:00',NULL,162,31,25.2,34,6.76,95.5,8.11,1.33,1.61,1.45,1,211.63,11.29,8.25,437.01,113.26,1.83,NULL,NULL);
INSERT INTO `samples` VALUES (575,34,'2019-05-01',3,'08:44:00',NULL,162,31,25,34.1,6.79,99.8,8.08,2.11,2.31,2.13,1,174.6,12.39,10.76,970,82.96,2.67,NULL,NULL);
INSERT INTO `samples` VALUES (576,36,'2019-05-01',4,'09:04:00',NULL,162,31,25.2,34.8,7.36,108.9,8.1,1.66,1.6,1.35,1,98.92,9.59,6.16,316.48,9.56,2.15,NULL,NULL);
INSERT INTO `samples` VALUES (577,37,'2019-05-01',5,'09:44:00',NULL,162,31,26.2,33.9,6.73,100.6,8.04,1.5,1.35,1.35,1,98.36,10.62,7.65,326.98,12.35,9.05,NULL,NULL);
INSERT INTO `samples` VALUES (578,38,'2019-05-02',1,'08:20:00',NULL,162,31,24.9,34.4,6.96,102,8.09,2.54,3.38,4.17,1,163.12,10.83,6.29,384.77,61.82,3.83,NULL,'NHP - 4th turbidity reading 5.87 NTU');
INSERT INTO `samples` VALUES (579,39,'2019-05-02',2,'08:52:00',NULL,162,31,25,35.1,6.78,100,8.15,0.89,0.91,1.03,1,93.18,10.68,5.8,65.59,3.54,2.48,NULL,'NKC - 4th turbidity reading 14.2 NTU - The sample cell cap was leaking into the machine. We dried it and redid the test and it came out 7.78 NTU. The 5th and 6th readings were 12.6 and 12.9 NTU.');
INSERT INTO `samples` VALUES (580,40,'2019-05-02',3,'09:20:00',NULL,162,31,25.6,34.6,6.75,100.5,8.12,5.18,5.07,5.1,1,133.03,13.23,8.22,412.73,37.04,2.78,NULL,'NKC - there is an unidentified leak (300 gal/hr) at the canoe club according to a club member on the beach.');
INSERT INTO `samples` VALUES (581,41,'2019-05-02',4,'09:40:00',NULL,162,31,25.9,34,6.73,100.3,8.09,7.79,12.8,12.5,1,423.76,11.43,8.23,849.97,305.65,8.54,NULL,'First time out as trained for new volunteers Deborah and Michael.');
INSERT INTO `samples` VALUES (582,42,'2019-05-02',5,'10:01:00',NULL,162,31,25.6,32.2,6.59,96.9,8.07,5.54,6.05,6.42,1,385.36,12.09,11.81,2208.2,267.26,5.96,NULL,'James Strickland also went out with team.');
INSERT INTO `samples` VALUES (583,44,'2019-05-03',1,'08:09:00',NULL,162,31,25.4,34.4,6.8,100.7,8.12,1.58,1.29,1.26,1,117.81,11.72,6.71,389.55,38.22,1.91,NULL,'First time out as being trained for new volunteers Jody and Taylor.');
INSERT INTO `samples` VALUES (584,45,'2019-05-03',2,'08:32:00',NULL,162,31,25.8,35,6.73,100.9,8.14,0.5,0.49,0.45,1,106.13,9.99,4.63,192.21,14.06,4.32,NULL,NULL);
INSERT INTO `samples` VALUES (585,46,'2019-05-03',3,'08:57:00',NULL,162,31,26.3,34.3,6.68,100.8,8.1,1.51,1.46,1.45,1,315.39,11.14,7.69,532.01,168.64,5.89,NULL,NULL);
INSERT INTO `samples` VALUES (586,48,'2019-05-03',4,'09:28:00',NULL,162,31,26.6,34.4,6.87,104.4,8.17,1.07,1.62,1.84,1,205.39,9.64,5.67,441.47,104.62,8.22,NULL,NULL);
INSERT INTO `samples` VALUES (587,49,'2019-05-03',5,'09:48:00',NULL,162,31,26.4,34.6,6.78,102.4,8.17,0.84,0.83,0.84,1,146.56,11.56,7.02,334.12,57.84,2.02,NULL,NULL);
INSERT INTO `samples` VALUES (588,43,'2019-05-21',1,'08:05:00',NULL,162,32,26.7,32.6,5.71,85.4,8.05,2.43,3.46,3.87,1,190.72,8.18,7.83,1157.53,126.97,2.24,NULL,NULL);
INSERT INTO `samples` VALUES (589,26,'2019-05-21',2,'08:40:00',NULL,162,32,26.8,33.1,6.05,91.1,8.01,11,11.5,11.4,1,180.31,10.24,8.5,559.32,15.98,8.02,NULL,NULL);
INSERT INTO `samples` VALUES (590,27,'2019-05-21',3,'08:55:00',NULL,162,32,27.5,31.3,6.2,93.4,8.07,4.9,5.88,5.99,1,214.15,9.42,8.52,1219.08,110.05,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (591,28,'2019-05-21',4,'09:15:00',NULL,162,32,27.5,34.2,7.01,107.2,8.17,5.58,6.03,6.22,1,152.39,8.5,4.52,407.08,38.53,3.31,NULL,NULL);
INSERT INTO `samples` VALUES (592,29,'2019-05-21',5,'09:35:00',NULL,162,32,28,31,6.94,105.3,8.13,3.86,5.21,5.92,1,773.82,26.78,25.69,1924.96,599.31,5.48,NULL,'took 4th reading of NTU');
INSERT INTO `samples` VALUES (593,32,'2019-05-22',1,'07:50:00',NULL,162,32,26.6,25.1,6.96,100,8.12,5.43,5.75,5.72,1,132.52,9.53,5.21,371.24,46.79,1.88,NULL,NULL);
INSERT INTO `samples` VALUES (594,33,'2019-05-22',2,'08:25:00',NULL,162,32,27.2,33.7,6.59,100.1,8.1,2.36,2.97,2.56,1,214.38,10.91,7.9,598.98,135.48,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (595,34,'2019-05-22',3,'08:45:00',NULL,162,32,27.3,34.2,6.73,102.4,8.1,4.03,4.03,3.67,1,124.71,8.74,6.79,696.73,36.51,1.07,NULL,NULL);
INSERT INTO `samples` VALUES (596,36,'2019-05-22',4,'09:00:00',NULL,162,32,26.7,34.7,7.08,107,8.07,2,2.06,2.44,1,100.15,6.57,3.26,231.85,6.42,0.56,NULL,NULL);
INSERT INTO `samples` VALUES (597,37,'2019-05-22',5,NULL,NULL,162,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site closed due to sharks');
INSERT INTO `samples` VALUES (598,38,'2019-05-23',1,'08:20:00',NULL,162,32,26.9,34.6,6.71,102,8.14,4.9,5.07,5.34,1,116.9,8.24,3.57,234.44,32.47,1.18,NULL,NULL);
INSERT INTO `samples` VALUES (599,39,'2019-05-23',2,'08:50:00',NULL,162,32,27.2,35,6.58,100.7,8.15,1.81,1.83,1.57,1,93.48,7.87,3.64,55.16,2.63,0.48,NULL,'2 dogs');
INSERT INTO `samples` VALUES (600,40,'2019-05-23',3,'09:15:00',NULL,162,32,27.4,34.5,6.62,101.4,8.12,4.95,5.23,4.91,1,118.61,10.24,5.95,254.47,11.55,1.8,NULL,'NKC - there was a water leak for 2 weeks that has been fixed b=now at the Kihei Canoe Club');
INSERT INTO `samples` VALUES (601,41,'2019-05-23',4,'09:40:00',NULL,162,32,28.1,34.4,6.58,102.2,8.11,6.39,7.91,7.49,1,223.85,8.87,5.9,488.9,154.73,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (602,42,'2019-05-23',5,'09:58:00',NULL,162,32,27.7,34.1,6.68,103,8.15,1.67,2.17,2.19,1,154.28,9.16,5.85,622.9,62.28,0.79,NULL,NULL);
INSERT INTO `samples` VALUES (603,44,'2019-05-24',1,'08:01:00',NULL,162,32,26.9,34.3,6.7,101.4,8.1,1.81,1.63,1.88,1,150.03,8,4.7,280.5,37.78,1.2,NULL,NULL);
INSERT INTO `samples` VALUES (604,45,'2019-05-24',2,'08:20:00',NULL,162,32,27.1,34.8,6.66,101.5,8.14,0.73,0.71,0.78,1,140.09,6.66,3.22,105.13,2.22,2.79,NULL,NULL);
INSERT INTO `samples` VALUES (605,46,'2019-05-24',3,'08:40:00',NULL,162,32,27.1,34.4,6.66,101.3,8.11,1.28,1.39,1.41,1,174.16,7.92,5.7,319.31,83.83,1.24,NULL,NULL);
INSERT INTO `samples` VALUES (606,48,'2019-05-24',4,'09:00:00',NULL,162,32,27.3,34.5,6.67,101.8,8.17,2.37,2.38,2.27,1,160.91,8.18,4.14,336.65,49.36,4.76,NULL,NULL);
INSERT INTO `samples` VALUES (607,49,'2019-05-24',5,'09:15:00',NULL,162,32,27.6,34.7,6.61,101.8,8.17,0.73,0.69,0.59,1,141.51,8.4,3.82,142.51,21.43,0.98,NULL,NULL);
INSERT INTO `samples` VALUES (608,43,'2019-06-11',1,'07:55:00',NULL,162,33,26.5,32.8,5.76,85.8,8.09,2.35,3.25,2.61,1,258.72,13.99,10.55,1268.28,151.9,2.97,NULL,NULL);
INSERT INTO `samples` VALUES (609,26,'2019-06-11',2,'08:22:00',NULL,162,33,25.6,30.3,5.26,76.3,8,4.41,4.84,5.4,1,149.19,10.07,9.01,1295.77,39.48,6.22,NULL,NULL);
INSERT INTO `samples` VALUES (610,27,'2019-06-11',3,'08:40:00',NULL,162,33,26.7,31.9,6.28,93.6,8.1,3.74,4.37,3.56,1,175.02,8.55,8,1329.66,86.91,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (611,28,'2019-06-11',4,'09:00:00',NULL,162,33,27.4,33.8,6.56,100,8.13,9.96,11.7,11.3,1,167.88,9.17,6.27,466.27,67.63,3.35,NULL,NULL);
INSERT INTO `samples` VALUES (612,29,'2019-06-11',5,'09:19:00',NULL,162,33,27.7,31.1,6.7,101.1,8.12,3.92,3.92,3.05,1,1113.37,35.6,33.41,3980.26,892,11.05,NULL,'Took 4th reading, 20 in water were surfers');
INSERT INTO `samples` VALUES (613,32,'2019-06-12',1,'08:02:00',NULL,162,33,26.6,34,6.38,96,8.14,1.05,1.08,1.11,1,139.4,10.79,5.69,452.54,58.76,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (614,33,'2019-06-12',2,'08:33:00',NULL,162,33,27.3,33.9,6.29,95.8,8.11,0.55,0.54,0.69,1,270.84,10.33,6.42,559.93,171.91,0.77,NULL,NULL);
INSERT INTO `samples` VALUES (615,34,'2019-06-12',3,'09:00:00',NULL,162,33,27.2,34.5,6.05,92.3,8.06,0.73,0.85,0.79,1,117.6,9.24,5.97,616.61,38.54,1.44,NULL,NULL);
INSERT INTO `samples` VALUES (616,36,'2019-06-12',4,'09:26:00',NULL,162,33,27.1,34.6,7.45,113.3,8.13,1.47,1.03,1.15,1,112.15,10.05,5.32,390.23,6.57,1.99,NULL,NULL);
INSERT INTO `samples` VALUES (617,37,'2019-06-12',5,'09:51:00',NULL,162,33,27.3,35,6.27,96.1,8.11,0.53,0.53,0.58,1,105.11,13.6,6.81,142.08,9.46,9.71,NULL,NULL);
INSERT INTO `samples` VALUES (618,38,'2019-06-13',1,'08:15:00',NULL,162,33,26.2,33.9,6.71,100.2,8.09,4.18,4.44,4.04,1,186.59,12.41,6.92,525.19,77.54,4.43,NULL,'low tide; we didnt hold the probes up so we did it again (referring to temp, salinity, & DO)');
INSERT INTO `samples` VALUES (619,39,'2019-06-13',2,'08:45:00',NULL,162,33,26.6,35.1,6.56,99.3,8.17,1.08,1.12,1.01,1,105.99,10.57,5.31,57.82,4.43,2.16,NULL,'we did salinity 2x, both 35.1 (above normal range)');
INSERT INTO `samples` VALUES (620,40,'2019-06-13',3,'09:06:00',NULL,162,33,26.8,34.9,6.16,100.7,8.13,2.12,2.37,2.36,1,130.03,11.15,4.95,215.12,16.71,2.53,NULL,'dog present');
INSERT INTO `samples` VALUES (621,41,'2019-06-13',4,'09:25:00',NULL,162,33,27,34.2,6.53,99.5,8.12,2.73,2.85,3.18,1,296.08,10.29,5.16,550.86,198.45,3.84,NULL,'~50 kids by canoe club building, not near water yet; turbidity checked 3.18 2x and same');
INSERT INTO `samples` VALUES (622,42,'2019-06-13',5,'09:40:00',NULL,162,33,27.5,32.1,6.4,97,8.02,4.83,4.8,4.98,1,309.66,14.08,13.33,3695.58,235.48,2.19,NULL,'1 dog; could smell the sunblock');
INSERT INTO `samples` VALUES (623,44,'2019-06-14',1,'07:55:00',NULL,162,33,26.5,34.5,6.62,99.8,8.11,1.61,1.64,1.66,1,105.17,9.08,4.63,195.97,20.07,0.83,NULL,NULL);
INSERT INTO `samples` VALUES (624,45,'2019-06-14',2,'08:20:00',NULL,162,33,27.1,34.9,6.58,100.3,8.14,1.23,1.37,1.46,1,102.31,8.99,4.13,126.92,8.51,2.32,NULL,NULL);
INSERT INTO `samples` VALUES (625,46,'2019-06-14',3,'08:42:00',NULL,162,33,26.9,34.4,6.61,100.4,8.12,1.99,2.99,2.33,1,195.81,10.92,5.33,317.83,98.61,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (626,48,'2019-06-14',4,'09:06:00',NULL,162,33,27.6,34.5,6.59,101.2,8.14,3.9,3.75,3.46,1,149.89,8.85,4.42,352.96,71.42,1.61,NULL,NULL);
INSERT INTO `samples` VALUES (627,49,'2019-06-14',5,'09:25:00',NULL,162,33,27.5,34.8,6.58,101.2,8.18,1.08,1.29,1.16,1,127.08,10.74,4.53,161.65,33.04,0.66,NULL,'high surf (5\')');
INSERT INTO `samples` VALUES (628,43,'2019-07-02',1,'08:02:00',NULL,162,34,27.3,32.4,6.18,93.5,NULL,7.36,8.38,9.71,1,250.56,13.71,12.29,1502.66,166.06,3.16,NULL,'Took 4th reading,');
INSERT INTO `samples` VALUES (629,26,'2019-07-02',2,'08:20:00',NULL,162,34,27.4,34,5.87,89.7,NULL,9.03,10.2,10.5,1,122.47,11.39,7.59,400.48,11.44,6.55,NULL,NULL);
INSERT INTO `samples` VALUES (630,27,'2019-07-02',3,'08:36:00',NULL,162,34,27.8,33.1,6.21,95,NULL,6.84,7.63,8.44,1,124.08,8.76,6.07,581.48,37.68,0.83,NULL,'plus 1 dog on beach');
INSERT INTO `samples` VALUES (631,28,'2019-07-02',4,'08:55:00',NULL,162,34,28,35,6.69,103.9,NULL,11.4,10.7,11,1,166.66,10.04,6.12,293.52,35.85,6.13,NULL,NULL);
INSERT INTO `samples` VALUES (632,29,'2019-07-02',5,'09:10:00',NULL,162,34,28.2,33.4,7,108.1,NULL,5.37,5.61,5.69,1,404.86,19.18,15.49,1043.27,328.32,5.24,NULL,'Took 4th reading,');
INSERT INTO `samples` VALUES (633,32,'2019-07-03',1,'08:05:00',NULL,162,34,27.4,34.7,6.59,101.1,NULL,2.71,3.28,3.77,1,117.94,9.78,5.05,348.78,39.17,0.69,NULL,NULL);
INSERT INTO `samples` VALUES (634,33,'2019-07-03',2,'08:27:00',NULL,162,34,27.5,33.6,6.58,100.6,NULL,1.9,1.79,1.99,1,293.69,13.21,9.61,893.52,217.07,1.11,NULL,NULL);
INSERT INTO `samples` VALUES (635,34,'2019-07-03',3,'08:45:00',NULL,162,34,28,34.3,6.64,102.6,NULL,2.23,2.96,2.45,1,118.05,11.29,10.99,1176.73,53.44,4.15,NULL,NULL);
INSERT INTO `samples` VALUES (636,36,'2019-07-03',4,'09:05:00',NULL,162,34,27.5,35.2,6.9,106.3,NULL,2.09,2.47,2.88,1,92.37,11.13,5.76,231.33,7.06,4.09,NULL,NULL);
INSERT INTO `samples` VALUES (637,37,'2019-07-03',5,'09:25:00',NULL,162,34,27.5,35.1,6.63,102.2,NULL,3.31,3.69,3.35,1,86.87,9.03,7.31,339.92,17.47,2.68,NULL,NULL);
INSERT INTO `samples` VALUES (638,38,'2019-07-03',6,'08:39:00',NULL,162,34,27.6,34.4,6.55,100.7,NULL,5.2,6.22,6.2,1,192.58,11.16,7.85,525.41,106.6,5.75,NULL,NULL);
INSERT INTO `samples` VALUES (639,39,'2019-07-03',7,'09:19:00',NULL,162,34,27.8,35.1,6.45,100,NULL,2.19,2.53,2.57,1,89.25,7.91,4.81,80.77,4.76,3.29,NULL,'Big south swell all sites');
INSERT INTO `samples` VALUES (640,40,'2019-07-03',8,'09:46:00',NULL,162,34,28.3,34.9,6.43,100.6,NULL,2.24,3.12,3.63,1,116.42,9.62,6.19,257.03,24.51,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (641,41,'2019-07-03',9,'10:08:00',NULL,162,34,28.4,34.3,6.48,101.1,NULL,11.2,11.3,11,1,281.99,12.01,9.16,741.45,201.63,2.09,NULL,NULL);
INSERT INTO `samples` VALUES (642,42,'2019-07-03',10,'10:29:00',NULL,162,34,29,34.2,6.38,100.4,NULL,1.56,2.58,2.44,1,150.6,9.03,7.19,650.16,74.2,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (643,44,'2019-07-05',1,'07:54:00',NULL,162,34,27.7,35.1,6.59,101.9,NULL,1.25,1.44,1.42,1,91.91,8.9,5.69,229.47,22.58,1.08,NULL,'Re: Pre-sampling Lost turbidity: I called Alfred and he said blank cell was poured out before reading it - J.S.');
INSERT INTO `samples` VALUES (644,45,'2019-07-05',2,'08:20:00',NULL,162,34,28,35.4,6.54,101.8,NULL,1.22,1.05,0.96,1,77.85,6.7,4.16,128.55,4.25,1.97,NULL,NULL);
INSERT INTO `samples` VALUES (645,46,'2019-07-05',3,'08:42:00',NULL,162,34,28.1,35.2,6.63,103.7,NULL,1.02,1.29,0.99,1,111.4,7.92,4.53,184.95,41.96,2.87,NULL,NULL);
INSERT INTO `samples` VALUES (646,48,'2019-07-05',4,'09:05:00',NULL,162,34,28.1,35,6.57,102.2,NULL,2.78,3.3,3.18,1,130.14,9.15,6.17,280.3,46.63,4.19,NULL,NULL);
INSERT INTO `samples` VALUES (647,49,'2019-07-05',5,'09:25:00',NULL,162,34,28.5,35.1,6.54,103.6,NULL,0.8,0.77,0.8,1,108.15,8.98,4.61,186.15,31.99,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (648,43,'2019-07-23',1,'08:00:00',NULL,162,35,27.5,33.7,5.5,83.9,8.07,1.76,2.03,1.78,1,187.9,9.07,8.25,999.67,95.59,4.66,NULL,NULL);
INSERT INTO `samples` VALUES (649,26,'2019-07-23',2,'08:20:00',NULL,162,35,26.9,32.9,6.16,93,8.05,10.3,10.8,11.5,1,163.89,12.27,10.34,876.24,17.89,21.95,NULL,NULL);
INSERT INTO `samples` VALUES (650,27,'2019-07-23',3,'08:42:00',NULL,162,35,27.9,33.5,5.74,88.4,8.09,5.96,7.6,6.53,1,82.04,8.09,6.2,734.32,22.88,1.31,NULL,NULL);
INSERT INTO `samples` VALUES (651,28,'2019-07-23',4,'09:03:00',NULL,162,35,28.3,34.6,6.65,103.5,8.17,9.12,9.73,10.2,1,165.89,8.72,5.14,381.8,63.79,1.64,NULL,NULL);
INSERT INTO `samples` VALUES (652,29,'2019-07-23',5,'09:25:00',NULL,162,35,28.5,32.8,6.53,101,8.12,2.69,3.44,3.23,1,697.25,26.4,25.52,2250.5,478.47,142.88,NULL,NULL);
INSERT INTO `samples` VALUES (653,32,'2019-07-24',1,'08:00:00',NULL,162,35,28,35,6.47,100.3,8.12,4.94,3.69,4.1,1,129.7,9.26,5.82,277.92,22.39,3.82,NULL,NULL);
INSERT INTO `samples` VALUES (654,33,'2019-07-24',2,'08:17:00',NULL,162,35,28.2,35,6.48,101,8.16,1.06,1.11,1.14,1,180.34,9.15,6.41,311.98,65.55,3.49,NULL,'took 4th reading');
INSERT INTO `samples` VALUES (655,34,'2019-07-24',3,'08:35:00',NULL,162,35,28.2,35.1,5.99,93.4,8.1,1.99,1.82,1.66,1,110.43,7.01,4.32,185,7.42,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (656,36,'2019-07-24',4,'08:56:00',NULL,162,35,27.7,35.2,7.05,108.7,8.17,0.79,0.73,0.85,1,109.76,6.92,3.19,110.29,4.24,1.2,NULL,NULL);
INSERT INTO `samples` VALUES (657,37,'2019-07-24',5,'09:15:00',NULL,162,35,28,35.6,6.68,104,8.2,0.33,0.28,0.27,1,108.24,6.83,3.29,53.58,4.8,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (658,38,'2019-07-25',1,'08:30:00',NULL,162,35,27.5,34.9,6.66,102.4,8.14,5.65,7.19,6.42,1,132.22,7.93,4.76,252.76,24.7,2.81,NULL,'1 dog');
INSERT INTO `samples` VALUES (659,39,'2019-07-25',2,'08:50:00',NULL,162,35,27.4,35.3,6.63,102.1,8.19,0.67,0.76,0.86,1,103.18,7.76,3.34,60.99,1.88,0.82,NULL,'2 dogs; did salinity 2x because 1st reading was above the normal range - 2nd reading was 35.3');
INSERT INTO `samples` VALUES (660,40,'2019-07-25',3,'09:20:00',NULL,162,35,28,35.1,6.54,103.2,8.18,2.42,2.08,2.18,1,126.19,8.38,4.81,215.6,15.35,0.71,NULL,NULL);
INSERT INTO `samples` VALUES (661,41,'2019-07-25',4,'09:40:00',NULL,162,35,28.5,35,6.65,104.3,8.17,4.03,5.86,6.79,1,176.2,8.68,5.59,381.44,90.16,3,NULL,'1 dog; Turbidity had abnormal readings (2nd reading = 7.33, 3rd = 3.60, 4th = 5.60)- believe it was due to heavy wind and leaning on the car. Normally we do not read it this much, but the jump from 4.03 to 7.33 to 3.60 was so great we werent sure what was happenning until we noticed the car moving.');
INSERT INTO `samples` VALUES (662,42,'2019-07-25',5,'10:06:00',NULL,162,35,28.5,33.1,6.62,102.8,8.12,7.41,7.9,7.81,1,271.24,10.62,9.92,1582.21,181.87,1.17,NULL,'Did salinity and DO 2x because probes were resting on the bottom of the bucket during 1st reading.');
INSERT INTO `samples` VALUES (663,44,'2019-07-26',1,'08:00:00',NULL,162,35,27.7,35,6.49,100.2,8.13,1.35,0.82,0.76,1,135.1,8.96,5.01,248.57,32.51,0.28,NULL,'Other: Judy J. not available after 8/9 for TBD; nutrient bottle holder needs glue (James has since said we have a new nutrient syringe holder)');
INSERT INTO `samples` VALUES (664,45,'2019-07-26',2,'08:21:00',NULL,162,35,27.9,35.2,6.61,102.6,8.15,1.54,0.71,0.71,1,107.29,7.15,3.46,106.54,4.31,2.46,NULL,'double checked high salinity above normal range, 2nd value was same');
INSERT INTO `samples` VALUES (665,46,'2019-07-26',3,'08:44:00',NULL,162,35,27.8,35,6.66,103.1,8.15,1.06,1.38,1.68,1,186.3,9.78,5.37,216.19,57.74,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (666,48,'2019-07-26',4,'09:09:00',NULL,162,35,28.3,34.9,6.56,102.3,8.17,1.79,1.42,1.48,1,141.67,10.83,7.13,189.14,27.62,3.04,NULL,'Boogie boarders in front of samplers');
INSERT INTO `samples` VALUES (667,49,'2019-07-26',5,'09:25:00',NULL,162,35,28.6,35.3,6.64,104.2,8.19,1.19,1.27,0.72,1,116.7,7.76,5.07,155.33,18.13,0.28,NULL,'double checked high salinity above normal range, 2nd value was same');
INSERT INTO `samples` VALUES (668,43,'2019-08-13',1,'08:00:00',NULL,162,36,27.4,31.9,6.37,96.2,8.09,6.09,6.44,6.94,1,312.98,14.52,13.78,1882.69,191.82,4.86,NULL,'took 4th reading 6.44');
INSERT INTO `samples` VALUES (669,26,'2019-08-13',2,'08:30:00',NULL,162,36,27.3,34.1,5.95,91,8.03,8.53,10.1,10.3,1,130.94,11.04,6.65,417.62,6.76,4.94,NULL,NULL);
INSERT INTO `samples` VALUES (670,27,'2019-08-13',3,'08:50:00',NULL,162,36,28,34,6.44,99.3,8.05,8.17,12.9,12.4,1,142.66,8.6,5.39,504.43,23.06,5.63,NULL,'took 4th reading 15.8');
INSERT INTO `samples` VALUES (671,28,'2019-08-13',4,'09:10:00',NULL,162,36,28.4,35.1,6.68,104.5,8.13,7.13,8.79,6.57,1,134.76,8.85,3.9,227.7,25.77,4.03,NULL,NULL);
INSERT INTO `samples` VALUES (672,29,'2019-08-13',5,'09:30:00',NULL,162,36,28.3,34.2,6.68,102.7,8.12,6.59,5.35,6.27,1,492.93,24.41,21.84,1075.78,74.75,29.66,NULL,NULL);
INSERT INTO `samples` VALUES (673,42,'2019-08-13',6,'09:55:00',NULL,162,36,29,33.6,6.54,102.7,8.08,2.94,3.39,2.68,1,255.99,26.02,14.11,1193.62,157.23,4.44,NULL,NULL);
INSERT INTO `samples` VALUES (674,32,'2019-08-14',1,'08:05:00',NULL,162,36,27.9,34.3,6.65,102.8,8.12,4.45,4.15,4.22,1,162.8,14.73,8.63,483.93,54.69,4.91,NULL,NULL);
INSERT INTO `samples` VALUES (675,33,'2019-08-14',2,'08:35:00',NULL,162,36,28,34.4,6.63,102.9,8.1,1.66,1.6,1.65,1,196.17,11.96,7.88,520.52,97.84,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (676,34,'2019-08-14',3,'08:58:00',NULL,162,36,28,34.5,6.71,104.1,8.09,3.51,3.86,3.75,1,129.43,11.18,8.06,725.24,32.46,3.48,NULL,NULL);
INSERT INTO `samples` VALUES (677,36,'2019-08-14',4,'09:16:00',NULL,162,36,27.7,35.1,6.9,106.6,8.11,1.91,1.32,1.73,1,115.91,9.66,5.3,282.25,6.38,2.53,NULL,NULL);
INSERT INTO `samples` VALUES (678,37,'2019-08-14',5,'09:35:00',NULL,162,36,27.7,35,6.46,101.5,8.14,2.61,2.66,2.67,1,121.27,11.2,7.08,285.83,11.99,7.78,NULL,NULL);
INSERT INTO `samples` VALUES (679,50,'2019-08-15',1,'08:10:00',NULL,162,36,27.4,34.9,6.25,96.1,8.11,1.51,1.67,2.04,1,308.26,13.65,9.27,474.55,59.18,14.29,NULL,NULL);
INSERT INTO `samples` VALUES (680,51,'2019-08-15',2,'08:40:00',NULL,162,36,28.1,33.6,7.59,116.9,8.18,0.79,1.15,0.78,1,266.6,12.04,8.18,832.05,175.39,11.81,NULL,'water running over rocks-possibly explain high O2 level');
INSERT INTO `samples` VALUES (681,38,'2019-08-15',3,'09:00:00',NULL,162,36,28.3,34.4,6.73,104.6,8.13,3.62,3.69,3.83,1,166.46,10.96,6.72,539.87,68.04,2.38,NULL,NULL);
INSERT INTO `samples` VALUES (682,39,'2019-08-15',4,'09:25:00',NULL,162,36,28.4,35.3,6.58,103.1,8.13,1.55,1.81,1.7,1,107.66,11.13,4.78,124.77,4.56,2.71,NULL,NULL);
INSERT INTO `samples` VALUES (683,40,'2019-08-15',5,'09:43:00',NULL,162,36,28.7,35,6.66,104.6,8.14,2.74,2.69,3.08,1,136.28,11,7.09,370.84,21.72,2.6,NULL,NULL);
INSERT INTO `samples` VALUES (684,41,'2019-08-15',6,'09:55:00',NULL,162,36,29,34.6,6.57,103.7,8.11,5.24,5.32,7.32,1,232.62,12.13,8.59,617.45,130.26,1.66,NULL,'4th turbidity reading for NTU was 7.36 - we dried everything several times');
INSERT INTO `samples` VALUES (685,44,'2019-08-16',1,'07:54:00',NULL,162,36,28.1,35,6.63,102.9,8.12,1.17,1.68,1.34,1,119.58,10.39,7.1,172.71,18.32,5.13,NULL,NULL);
INSERT INTO `samples` VALUES (686,45,'2019-08-16',2,'08:20:00',NULL,162,36,28.4,35.2,6.62,103.3,8.13,0.79,0.52,0.54,1,103.92,9.3,4.49,86.53,2.59,0.55,NULL,NULL);
INSERT INTO `samples` VALUES (687,46,'2019-08-16',3,'08:41:00',NULL,162,36,28.6,35.1,6.71,105,8.15,0.58,1.3,0.82,1,159.3,13.43,6.38,160.2,40.41,5.34,NULL,'3 scuba divers near entry');
INSERT INTO `samples` VALUES (688,48,'2019-08-16',4,'09:03:00',NULL,162,36,28.8,34.7,6.61,103.4,8.14,1.87,2.34,2.15,1,134.24,12.43,4.86,225.18,39.52,1.27,NULL,'vehicle was not parked in the shade- none available');
INSERT INTO `samples` VALUES (689,49,'2019-08-16',5,'09:19:00',NULL,162,36,28.8,35,6.61,104,8.16,0.46,0.72,0.58,1,125.92,9.65,4.94,188.32,32.38,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (690,43,'2019-09-03',1,'08:07:00',NULL,162,37,28.3,NULL,NULL,NULL,8.12,1.29,1.47,1.36,1,132.64,7.73,5.68,560.71,38.42,2.63,NULL,NULL);
INSERT INTO `samples` VALUES (691,26,'2019-09-03',2,'08:28:00',NULL,162,37,26.3,32.4,5.65,84.3,8.05,12.6,13.8,13.5,1,172.86,9.28,8.67,1016.59,50.52,9.41,NULL,NULL);
INSERT INTO `samples` VALUES (692,27,'2019-09-03',3,'08:50:00',NULL,162,37,27.8,33,6.05,92.6,8.11,4.65,4.94,4.85,1,156.62,9.29,8.8,983.59,54.3,3.86,NULL,NULL);
INSERT INTO `samples` VALUES (693,28,'2019-09-03',4,'09:10:00',NULL,162,37,28,33.6,5.71,88,8.11,10.3,11.1,10.9,1,127.22,7.3,6.03,550.21,33.1,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (694,29,'2019-09-03',5,'09:30:00',NULL,162,37,28.8,33.4,6.16,95.9,8.13,2.51,3.22,3.5,1,441.46,19.74,19.39,1145.26,357.76,11.45,NULL,NULL);
INSERT INTO `samples` VALUES (695,42,'2019-09-03',6,'10:04:00',NULL,162,37,29.2,34,6.1,96.2,8.11,3.9,3.62,4.33,1,217.4,9.37,8.95,1148.49,132.18,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (696,32,'2019-09-04',1,'07:50:00',NULL,162,37,28.4,NULL,6.49,96.8,8.14,1.57,1.65,1.58,1,85.65,9.92,5.29,133.83,7.37,2.7,NULL,NULL);
INSERT INTO `samples` VALUES (697,33,'2019-09-04',2,'08:20:00',NULL,162,37,28.8,35.3,6.22,98.2,8.16,0.51,0.47,0.48,1,90.8,7.31,3.69,67.06,6.34,0.36,NULL,NULL);
INSERT INTO `samples` VALUES (698,34,'2019-09-04',3,'08:39:00',NULL,162,37,28.7,35.3,5.59,87.8,8.06,1.47,1.71,1.6,1,79.97,5.52,3.3,144.32,5.42,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (699,36,'2019-09-04',4,'08:59:00',NULL,162,37,28.5,35,6.59,103,8.12,0.68,0.92,0.71,1,91.38,9.73,5.71,170.07,5.48,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (700,37,'2019-09-04',5,'09:16:00',NULL,162,37,28.7,35.2,6.55,103,8.19,0.69,0.88,1.02,1,92.31,7.71,4.95,56.44,5.15,7.85,NULL,NULL);
INSERT INTO `samples` VALUES (701,50,'2019-09-05',1,'07:42:00',NULL,162,37,27.5,34.5,6.32,92.5,8.12,2.68,2.45,2.47,1,292.48,9.97,8.44,471.63,69.85,14.04,NULL,'windy, ocean water splashing over the wall');
INSERT INTO `samples` VALUES (702,51,'2019-09-05',2,'08:09:00',NULL,162,37,27.6,34.3,6.55,100.5,8.08,2.29,2.49,2.47,1,176.51,8.4,6.86,453.9,95.06,4.45,NULL,NULL);
INSERT INTO `samples` VALUES (703,38,'2019-09-05',3,'08:25:00',NULL,162,37,27.9,35,6.5,100.7,8.15,3.24,3.72,3.73,1,108.66,6.35,3.93,189.39,15.39,0.74,NULL,NULL);
INSERT INTO `samples` VALUES (704,39,'2019-09-05',4,'08:55:00',NULL,162,37,28.1,35.3,6.46,100.6,8.18,2.38,3.2,2.89,1,88.1,6.37,3.78,53.58,3.53,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (705,40,'2019-09-05',5,'09:15:00',NULL,162,37,28.7,35.2,6.39,100.5,8.14,2.58,2.64,2.72,1,92.89,8.5,5.6,193.2,11.22,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (706,41,'2019-09-05',6,'09:30:00',NULL,162,37,29,35.1,6.36,100.4,8.17,1.66,1.79,1.57,1,130.77,6.94,4.68,264.99,52.56,0.28,NULL,'2 vans of homeless parking');
INSERT INTO `samples` VALUES (707,44,'2019-09-06',1,'07:59:00',NULL,162,37,28.3,26.5,7.85,100.7,8.14,2.1,2.4,2.34,1,101.97,6.55,4.73,164.53,17.91,0.92,NULL,NULL);
INSERT INTO `samples` VALUES (708,45,'2019-09-06',2,'08:22:00',NULL,162,37,28.7,35.2,6.44,101.2,8.15,1.77,1.86,2.08,1,99.16,5.94,3.68,71.93,3.75,2.55,NULL,NULL);
INSERT INTO `samples` VALUES (709,46,'2019-09-06',3,'08:43:00',NULL,162,37,28.7,35.2,6.44,101.1,8.18,1.91,2.28,2.46,1,99.78,7.7,3.89,102.47,6.55,1.83,NULL,NULL);
INSERT INTO `samples` VALUES (710,48,'2019-09-06',4,'09:07:00',NULL,162,37,28.7,35.1,6.55,102.5,8.18,2.67,2.84,2.79,1,120.95,7.01,4.46,132.75,17.05,4.07,NULL,NULL);
INSERT INTO `samples` VALUES (711,49,'2019-09-06',5,'09:27:00',NULL,162,37,28.9,35.1,6.45,101.5,8.19,1.07,1.27,1.21,1,82.69,5.53,3.96,108.54,8.2,0.67,NULL,NULL);
INSERT INTO `samples` VALUES (712,43,'2019-09-24',1,'08:10:00',NULL,162,38,28.1,33.5,6.24,96.3,8.13,2.53,3.49,3.03,1,206.3,10.22,9.36,945.71,94.68,4.4,NULL,NULL);
INSERT INTO `samples` VALUES (713,26,'2019-09-24',2,'08:42:00',NULL,162,38,27.4,33.8,5.82,89.3,8,10.8,12.9,12.9,1,103.45,8.31,6.46,501.69,9.29,4.22,NULL,NULL);
INSERT INTO `samples` VALUES (714,27,'2019-09-24',3,'09:05:00',NULL,162,38,28.3,34,6.14,95.5,8.07,13.7,14.5,13.9,1,120.89,7.21,6.81,632.98,34.25,2.76,NULL,NULL);
INSERT INTO `samples` VALUES (715,28,'2019-09-24',4,'09:26:00',NULL,162,38,28.8,35,6.44,101.4,8.15,6.21,6.79,7.52,1,121.91,8.61,5.2,185,20.67,2.32,NULL,NULL);
INSERT INTO `samples` VALUES (716,29,'2019-09-24',5,'09:45:00',NULL,162,38,28.8,32.4,6.7,104,8.14,2.71,3.38,3.9,1,630.91,27.65,26.92,1507.53,448.45,20.27,NULL,NULL);
INSERT INTO `samples` VALUES (717,42,'2019-09-24',6,'10:13:00',NULL,162,38,28.9,34.1,6.48,101.8,8.11,3.34,3.21,3.44,1,193.37,9.81,8.37,1011.46,111.44,3.67,NULL,NULL);
INSERT INTO `samples` VALUES (718,32,'2019-09-25',1,'08:15:00',NULL,162,38,28.2,34.8,6.47,100.6,8.14,4.13,3.2,3.57,1,127.32,8.78,6.66,354.97,34.13,9.39,NULL,NULL);
INSERT INTO `samples` VALUES (719,33,'2019-09-25',2,'08:40:00',NULL,162,38,28.6,34.2,6.42,100.5,8.12,2.62,1.97,2.3,1,210.3,8.89,6.79,525.71,118.58,2.16,NULL,'4th turbidty reading taken');
INSERT INTO `samples` VALUES (720,34,'2019-09-25',3,'09:05:00',NULL,162,38,28.5,34.3,6.7,104.6,8.13,2.36,2.58,2.37,1,105.26,10.8,9.01,860.71,30.47,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (721,36,'2019-09-25',4,'09:25:00',NULL,162,38,28.5,35.3,6.96,109.5,8.17,1.37,2.1,2.65,1,94.31,6.33,4.46,171.81,5.55,1.01,NULL,'disconnected DO probe and retook reading  ~same resultant reading');
INSERT INTO `samples` VALUES (722,37,'2019-09-25',5,'09:50:00',NULL,162,38,28.7,35.2,6.63,104.4,8.16,2.46,3.47,2.65,1,99.1,8.35,6.21,197.22,7.94,4.68,NULL,NULL);
INSERT INTO `samples` VALUES (723,50,'2019-09-26',1,'07:20:00',NULL,162,38,28.1,34.8,6.03,93.7,8.14,3.1,2.98,2.96,1,277.7,13.9,11.46,476.01,71.53,11.49,NULL,'Difficult to collect water with Entero bag in bucket without bringing the bag up and out of the water- was able to get water but only a little bit.');
INSERT INTO `samples` VALUES (724,51,'2019-09-26',2,'07:55:00',NULL,162,38,28,33.8,6.8,104.8,8.14,1.21,1.35,1.31,1,311.08,10.74,8.9,809.78,217.47,6.33,NULL,NULL);
INSERT INTO `samples` VALUES (725,38,'2019-09-26',3,'08:15:00',NULL,162,38,28,34.6,6.6,102.4,8.13,3.98,4.22,3.98,1,181.83,9.81,6.79,503.21,84.44,2.76,NULL,'Big shore break');
INSERT INTO `samples` VALUES (726,39,'2019-09-26',4,'08:40:00',NULL,162,38,28.2,35.2,6.58,102.7,8.15,2.43,2.68,3.01,1,91.32,8.05,4.68,168.71,5.89,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (727,40,'2019-09-26',5,'09:00:00',NULL,162,38,28.5,35.2,6.44,101.1,8.15,2.22,1.69,1.83,1,91.54,8.08,4.67,168.19,10.87,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (728,41,'2019-09-26',6,'09:20:00',NULL,162,38,28.9,34.9,6.52,103,8.13,3.27,4.27,3.94,1,174.04,9.72,7.3,487.66,88.81,2.07,NULL,'Pygmy false killer whales in water, close to shore');
INSERT INTO `samples` VALUES (729,44,'2019-09-27',1,'08:07:00',NULL,162,38,28.2,35.3,6.52,102.2,8.14,2.65,1.91,2.52,1,124.96,8.4,5.15,162.9,15.74,2.55,NULL,NULL);
INSERT INTO `samples` VALUES (730,45,'2019-09-27',2,'08:30:00',NULL,162,38,28.5,35.4,6.54,102.7,8.16,0.98,0.96,1.31,1,89.94,7.46,3.9,91.64,5.66,0.97,NULL,'3rd turbidity reading: \'3x due to rapid turnover\'');
INSERT INTO `samples` VALUES (731,46,'2019-09-27',3,'08:50:00',NULL,162,38,28.6,35.3,6.69,105.4,8.17,1.39,2.25,2.68,1,124.95,7.76,4.6,203.02,35.14,2.1,NULL,NULL);
INSERT INTO `samples` VALUES (732,48,'2019-09-27',4,'09:15:00',NULL,162,38,28.5,35.3,6.54,102.7,8.17,6.23,8.53,7.28,1,110.29,7.99,5.03,170.27,19.53,1.85,NULL,NULL);
INSERT INTO `samples` VALUES (733,49,'2019-09-27',5,'09:29:00',NULL,162,38,28.6,35.2,6.55,103,8.19,0.83,0.81,0.82,1,93.69,7.59,3.91,136.94,16.49,1.98,NULL,NULL);
INSERT INTO `samples` VALUES (734,43,'2019-10-15',1,'07:50:00',NULL,162,39,27.3,33.4,6.2,94.1,8.12,6.28,6.41,6.5,1,168.92,13.68,12.34,982.93,84.61,3.31,NULL,'heavy trades at all sites');
INSERT INTO `samples` VALUES (735,26,'2019-10-15',2,'08:15:00',NULL,162,39,26.6,32.8,6.14,92,8.12,21.6,22.8,22.1,1,141.07,16.89,15.76,1049.32,60.32,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (736,27,'2019-10-15',3,'08:32:00',NULL,162,39,27.3,33.8,6.09,93,8.13,9.33,11,11.2,1,130.35,9.96,8.84,616.26,56.85,1.99,NULL,NULL);
INSERT INTO `samples` VALUES (737,28,'2019-10-15',4,'08:53:00',NULL,162,39,27.7,34.6,6.33,97.6,8.12,12.5,12.9,13.4,1,128.78,8.87,6.19,282.3,37.95,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (738,29,'2019-10-15',5,'09:08:00',NULL,162,39,28,32.6,6.01,92,8.1,6.71,7.93,9.07,1,526.76,28.18,26.86,1615.76,448.17,19.9,NULL,NULL);
INSERT INTO `samples` VALUES (739,42,'2019-10-15',6,'09:33:00',NULL,162,39,28.2,33.4,6.24,96.3,8.12,4.15,8.34,5.98,1,246.81,10.14,9.84,1124.35,188.84,3.01,NULL,'took 4th reading-9.46');
INSERT INTO `samples` VALUES (740,32,'2019-10-16',1,'07:51:00',NULL,162,39,27.7,NULL,6.55,96.2,8.14,1.61,1.51,1.53,1,113.15,9.13,5.11,142.22,9.9,2.58,NULL,NULL);
INSERT INTO `samples` VALUES (741,33,'2019-10-16',2,'08:20:00',NULL,162,39,27.5,35.2,6.27,96.5,8.15,0.67,0.88,0.69,1,100.75,8.46,3.94,60.22,6.86,1.15,NULL,NULL);
INSERT INTO `samples` VALUES (742,34,'2019-10-16',3,'08:43:00',NULL,162,39,27.6,35.2,6.04,92.9,8.09,2.38,2.07,2.49,1,109.33,6.33,4.26,123.84,7.47,2.2,NULL,NULL);
INSERT INTO `samples` VALUES (743,36,'2019-10-16',4,'09:04:00',NULL,162,39,27.7,35.1,6.32,97.3,8.06,0.73,0.86,0.55,1,112.4,6.86,4.42,96.4,6.12,2.04,NULL,NULL);
INSERT INTO `samples` VALUES (744,37,'2019-10-16',5,'09:23:00',NULL,162,39,28.5,34.8,6.27,97.9,8.12,0.39,0.41,0.38,1,100.52,6.98,5.2,198.37,13.74,0.93,NULL,NULL);
INSERT INTO `samples` VALUES (745,50,'2019-10-17',1,'07:15:00',NULL,162,39,26.6,34.6,5.85,88.3,8.11,1.08,1.04,1.13,1,210.93,8.75,6.2,306.61,66.59,8.68,NULL,'Very rocky and slippery! COuld we take samples from the sliff shore with the bucket?');
INSERT INTO `samples` VALUES (746,51,'2019-10-17',2,'07:45:00',NULL,162,39,26.9,34.4,6.32,95.7,8.05,3.34,3.35,3.66,1,171.93,9.33,6.24,271.88,77.89,4.89,NULL,'We need more distilled water.The base of the pusher needs glue.');
INSERT INTO `samples` VALUES (747,38,'2019-10-17',3,'08:00:00',NULL,162,39,27.2,34.6,6.09,92.9,8.12,1.7,1.74,1.64,1,128,8.19,5.13,323.02,53.6,1.33,NULL,NULL);
INSERT INTO `samples` VALUES (748,39,'2019-10-17',4,'08:30:00',NULL,162,39,27.5,35.1,6.49,99.8,8.16,0.74,0.6,0.64,1,97.03,7.63,3.47,29.61,4.08,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (749,40,'2019-10-17',5,'08:50:00',NULL,162,39,27.9,35,6.42,99.2,8.17,1.75,1.86,1.93,1,119.59,8.65,5.43,166.37,21.45,4.3,NULL,NULL);
INSERT INTO `samples` VALUES (750,41,'2019-10-17',6,'09:10:00',NULL,162,39,29.3,34.3,6.27,98.6,8.17,1.17,1.7,1.47,1,175.89,9,6.3,272.91,88.37,2.5,NULL,'Has two car campers.');
INSERT INTO `samples` VALUES (751,44,'2019-10-18',1,'07:59:00',NULL,162,39,27.4,35,6.71,97.8,8.15,1.07,0.99,0.96,1,134.44,9.76,6.5,116.13,13.79,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (752,45,'2019-10-18',2,'08:18:00',NULL,162,39,27.6,35.1,6.39,98.2,8.13,0.75,0.86,0.79,1,147.91,9.66,6.46,70.34,8.87,6.28,NULL,NULL);
INSERT INTO `samples` VALUES (753,46,'2019-10-18',3,'08:36:00',NULL,162,39,27.7,35,6.43,99.1,8.15,1.17,1.21,1.01,1,74.96,6.15,2.93,61.99,9.94,1.57,NULL,NULL);
INSERT INTO `samples` VALUES (754,48,'2019-10-18',4,'08:56:00',NULL,162,39,28,35.1,6.24,96.5,8.15,1.02,1.12,1.11,1,75.53,6.25,3.3,69.07,15.59,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (755,49,'2019-10-18',5,'09:09:00',NULL,162,39,28.4,35.1,6.42,100.1,8.19,0.64,0.61,0.59,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (756,43,'2019-11-05',1,'07:53:00',NULL,162,40,27.9,34.4,5.49,85,8.09,3.63,4.09,5.05,1,157.19,10.05,8.18,691.22,67.37,3.36,NULL,NULL);
INSERT INTO `samples` VALUES (757,26,'2019-11-05',2,'08:23:00',NULL,162,40,26,33.5,6.48,96.8,8.06,44.6,47.2,47.6,1,129.2,15.96,14.5,631.24,16.56,7.26,NULL,NULL);
INSERT INTO `samples` VALUES (758,27,'2019-11-05',3,'08:40:00',NULL,162,40,27.6,33.5,6.29,96.2,8.1,9.82,11.2,10.9,1,161.44,8.13,6.28,694.64,68.24,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (759,28,'2019-11-05',4,'08:56:00',NULL,162,40,27.5,34.3,6.39,97.9,8.08,15.6,15.7,14.8,1,163.34,8.66,5.34,386.72,70.58,3.12,NULL,NULL);
INSERT INTO `samples` VALUES (760,29,'2019-11-05',5,'09:10:00',NULL,162,40,27.9,33,6.32,96.8,8.13,2.5,2.7,2.31,1,587.76,27.7,21.48,2153.76,406.53,10.64,NULL,NULL);
INSERT INTO `samples` VALUES (761,42,'2019-11-05',6,'09:32:00',NULL,162,40,28.2,34.3,6.44,100.1,8.12,1.9,1.74,2.05,1,202.32,9.73,7.28,844.86,102.4,3.13,NULL,'took 4th reading-2.05 replaced 2.63');
INSERT INTO `samples` VALUES (762,32,'2019-11-06',1,'07:55:00',NULL,162,40,27.3,34.8,6.64,101.7,8.14,2.39,2.4,1.99,1,131.84,9.28,5.01,225.69,29.5,4.16,NULL,'took 4th reading replaced 2.93 with 2.39');
INSERT INTO `samples` VALUES (763,33,'2019-11-06',2,'08:27:00',NULL,162,40,27.4,35.1,6.73,103.6,8.15,2.1,1.16,2,1,160.75,8.85,4.78,234.09,62.97,3.13,NULL,NULL);
INSERT INTO `samples` VALUES (764,34,'2019-11-06',3,'08:48:00',NULL,162,40,27.5,35.4,6.59,101.7,8.12,1.87,1.85,1.87,1,97.59,6.48,3.5,143.15,7.92,1.71,NULL,'took 4th reading replaced 2.74 with 1.87');
INSERT INTO `samples` VALUES (765,36,'2019-11-06',4,'09:10:00',NULL,162,40,27.3,34.9,6.72,103.1,8.02,1.13,1.28,1.2,1,109.18,6.93,4.74,385.67,6.33,4.99,NULL,NULL);
INSERT INTO `samples` VALUES (766,37,'2019-11-06',5,'09:33:00',NULL,162,40,27.7,35.4,6.35,98.4,8.1,0.56,0.68,0.78,1,109.13,8.22,4.13,89.63,10.25,3.12,NULL,NULL);
INSERT INTO `samples` VALUES (767,50,'2019-11-07',1,'07:20:00',NULL,162,40,26.3,34.5,6.39,96.2,8.11,0.73,0.79,0.79,1,197.1,11.36,8.63,498,77.56,9.78,NULL,NULL);
INSERT INTO `samples` VALUES (768,51,'2019-11-07',2,'07:45:00',NULL,162,40,26.7,33.4,6.8,102.3,8.05,0.8,0.7,0.67,1,320.72,9.76,6.25,548.76,219.85,4.07,NULL,NULL);
INSERT INTO `samples` VALUES (769,38,'2019-11-07',3,'08:10:00',NULL,162,40,27,34.5,6.37,97.1,8.12,2.47,2.98,2.75,1,177.12,9.94,5.84,362.02,72.6,4.17,NULL,NULL);
INSERT INTO `samples` VALUES (770,39,'2019-11-07',4,'08:35:00',NULL,162,40,26.8,35.4,6.7,102.3,8.19,1.11,1.09,1.28,1,136.24,7.67,3.1,49.89,5.97,3.07,NULL,'very different first 3 turbidity readings so cleaned with black cloth and oil; 4th-6th readings: 1.11, 1.09, 1.28');
INSERT INTO `samples` VALUES (771,40,'2019-11-07',5,'09:00:00',NULL,162,40,27.4,35.3,6.65,102.4,8.17,1,1.23,1.09,1,122.44,7.78,4.2,183,28.34,4.02,NULL,'1 dog');
INSERT INTO `samples` VALUES (772,41,'2019-11-07',6,'09:25:00',NULL,162,40,28.2,34.9,6.57,102.6,8.15,1.05,0.92,1.03,1,217.86,7.47,3.44,262.47,135.43,1.43,NULL,'man living in van said he got staph from water and his friend got a rare bacterial infection from a \'water source\' - insinuated drinking water-friend in hospital; windy');
INSERT INTO `samples` VALUES (773,44,'2019-11-08',1,'08:05:00',NULL,162,40,26.8,35.2,6.38,97.6,8.13,0.83,0.88,0.86,1,117.78,7.53,4.32,152.26,20.97,3.09,NULL,NULL);
INSERT INTO `samples` VALUES (774,45,'2019-11-08',2,'08:25:00',NULL,162,40,27.1,35.3,6.5,99,8.1,0.74,0.6,0.69,1,123.77,6.85,3.58,135.31,18.63,4.74,NULL,'2 people walked right in front of water collectors');
INSERT INTO `samples` VALUES (775,46,'2019-11-08',3,'08:45:00',NULL,162,40,27.5,35,6.47,100,8.14,0.51,0.43,0.39,1,191.93,7.92,4.72,184.89,92.21,3.08,NULL,'lady in water right in front of water sampling; salinity -gave first incorrectly');
INSERT INTO `samples` VALUES (776,48,'2019-11-08',4,'09:10:00',NULL,162,40,27.7,35.1,6.48,100.4,8.13,0.76,0.65,0.79,1,121.98,7.32,3.59,180.91,36.44,4.37,NULL,'car bumped on 3rd turbidity reading');
INSERT INTO `samples` VALUES (777,49,'2019-11-08',5,'09:30:00',NULL,162,40,27.9,35.3,6.64,103.6,8.19,0.27,0.39,0.31,1,110.12,6.42,2.73,103.36,24.42,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (778,43,'2019-11-19',1,'08:10:00',NULL,162,41,27.2,34.2,5.55,84.8,8.08,1.31,1.09,1.38,1,137.35,12.63,7.53,633.17,61.21,4.81,NULL,NULL);
INSERT INTO `samples` VALUES (779,26,'2019-11-19',2,'08:35:00',NULL,162,41,25.8,33.5,6.12,90.9,8.07,25.2,23.7,23.2,1,163.25,15.51,13.87,782.69,63.57,9.05,NULL,NULL);
INSERT INTO `samples` VALUES (780,27,'2019-11-19',3,'08:57:00',NULL,162,41,26,33.5,6.38,95.4,8.09,10.5,12.7,12.3,1,149.53,10.04,8.14,686.22,72.45,5.15,NULL,'1 dog in the water');
INSERT INTO `samples` VALUES (781,28,'2019-11-19',4,'09:20:00',NULL,162,41,25.1,33.8,6.29,94.1,8.09,10.4,10.4,10.5,1,226.79,11.04,8.64,678.11,119.8,11.87,NULL,'surfers and SUP peeps in water');
INSERT INTO `samples` VALUES (782,29,'2019-11-19',5,'09:40:00',NULL,162,41,27.5,34.4,5.86,90,8.1,3.96,4.14,3.31,1,270.5,17.55,13.92,532.41,123.14,49.97,NULL,NULL);
INSERT INTO `samples` VALUES (783,42,'2019-11-19',6,'10:05:00',NULL,162,41,27.7,34.2,6.42,99.1,8.11,6.07,5.41,6.99,1,179.99,10.05,8.23,886.96,97.44,1.53,NULL,'took 4th reading and used');
INSERT INTO `samples` VALUES (784,32,'2019-11-20',1,'07:50:00',NULL,162,41,27.3,34.7,6.31,96.3,8.09,1.8,1.96,2.56,1,101.13,8.68,4.85,220.47,17.57,3.3,NULL,NULL);
INSERT INTO `samples` VALUES (785,33,'2019-11-20',2,'08:30:00',NULL,162,41,27.2,34.7,6.42,98.3,8.13,1.59,1.92,1.52,1,124.43,10.45,6.07,255.15,41.5,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (786,34,'2019-11-20',3,'08:58:00',NULL,162,41,27.3,35,6.31,96.8,8.11,2.28,2.08,2.17,1,89.24,7.68,4.24,148.66,9.22,1.66,NULL,NULL);
INSERT INTO `samples` VALUES (787,36,'2019-11-20',4,'09:16:00',NULL,162,41,27.3,34.9,6.77,103.7,8.1,0.71,0.79,1.56,1,90.46,7.81,4.03,161.41,5.59,4.9,NULL,NULL);
INSERT INTO `samples` VALUES (788,37,'2019-11-20',5,'09:39:00',NULL,162,41,27.4,35.2,6.6,101.3,8.17,0.87,0.85,0.84,1,86.75,9.22,4.17,67.18,5.66,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (789,50,'2019-11-21',1,'07:25:00',NULL,162,41,25.8,34.1,6.08,90.2,8.08,1.5,1.64,1.77,1,543.98,19.18,13.67,569.64,92.38,12.73,NULL,'super windy; boat loading within 100 yards (Calypso)');
INSERT INTO `samples` VALUES (790,51,'2019-11-21',2,'07:56:00',NULL,162,41,25.9,32.8,6.63,98,8.02,1.4,1.51,1.59,1,349.9,9.79,6.78,830.9,266.86,4.03,NULL,NULL);
INSERT INTO `samples` VALUES (791,38,'2019-11-21',3,'08:12:00',NULL,162,41,26.2,34.5,6.38,96.1,8.1,2.46,2.9,2.68,1,149.84,9.68,6.06,469.54,71.92,1.69,NULL,NULL);
INSERT INTO `samples` VALUES (792,39,'2019-11-21',4,'08:40:00',NULL,162,41,26.5,35.2,6.55,99.1,8.16,1.18,1.38,1.35,1,87.66,7.44,3.55,101.54,6.75,0.9,NULL,'super windy; runners on beach; accidentally wrote turbdity in pH box');
INSERT INTO `samples` VALUES (793,40,'2019-11-21',5,'09:08:00',NULL,162,41,27.1,34.8,6.49,99.1,8.15,2.41,2.59,2.61,1,115.35,9.05,5.36,283.32,37.39,1.09,NULL,'lots of swimmers; kids in water; babies; dog; boogie boarder & SUP & kayakers');
INSERT INTO `samples` VALUES (794,41,'2019-11-21',6,'09:25:00',NULL,162,41,27.8,34.6,7.79,99.1,8.14,2.97,2.69,4.5,1,211.42,9.49,4.82,417.79,128.14,0.93,NULL,'high particulates - visbile in H2O');
INSERT INTO `samples` VALUES (795,44,'2019-11-22',1,'07:55:00',NULL,162,41,27.3,35,6.49,99.5,8.13,0.74,0.93,0.87,1,79.21,9.54,4.01,109.16,9.42,0.94,NULL,'rained early AM');
INSERT INTO `samples` VALUES (796,45,'2019-11-22',2,'08:30:00',NULL,162,41,27.2,34.8,6.5,99.4,8.13,1.94,2.12,1.46,1,120.1,11.85,4.67,229.63,36.97,2.07,NULL,'divers nearby; particulate matter present - turbidity');
INSERT INTO `samples` VALUES (797,46,'2019-11-22',3,'09:00:00',NULL,162,41,27.5,34.9,6.63,102.1,8.17,1.47,0.96,1.22,1,129.53,8.93,3.04,181.81,39.78,3.89,NULL,'scuba and snorkelers in front of testing area');
INSERT INTO `samples` VALUES (798,48,'2019-11-22',4,'09:27:00',NULL,162,41,27.5,34.9,6.5,100.1,8.14,5.39,5.12,5.59,1,141.91,10.29,4.75,187.78,30.59,4.18,NULL,NULL);
INSERT INTO `samples` VALUES (799,49,'2019-11-22',5,'09:50:00',NULL,162,41,27.8,35,6.47,100.3,8.17,0.6,0.5,0.51,1,95.39,7.93,3.04,118.88,16.41,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (800,43,'2019-12-10',1,'08:07:00',NULL,162,42,26.1,33.5,6.3,94.1,8.14,2.36,1.59,1.13,1,166.87,12.21,9.37,939.55,81.46,6.74,NULL,NULL);
INSERT INTO `samples` VALUES (801,26,'2019-12-10',2,'08:30:00',NULL,162,42,25,33.5,6.34,92.9,8.08,13.7,12.5,18,1,100.8,13.32,12.1,628.24,10.16,5.65,NULL,'took 4th reading16.1??');
INSERT INTO `samples` VALUES (802,27,'2019-12-10',3,'08:55:00',NULL,162,42,26,33.6,6.26,93,8.16,5.25,4.8,4.71,1,120.34,8.84,7.11,546.15,45.64,2.2,NULL,NULL);
INSERT INTO `samples` VALUES (803,28,'2019-12-10',4,'09:15:00',NULL,162,42,25.9,34.3,6.82,101.6,8.17,6.53,7.45,6.95,1,130.31,7.61,5.54,344.54,45.98,3.03,NULL,NULL);
INSERT INTO `samples` VALUES (804,29,'2019-12-10',5,'09:30:00',NULL,162,42,26.3,32.3,6.32,93.6,8.1,3.2,5.17,4.63,1,854.9,44.36,39.28,3225.51,656.55,60.04,NULL,NULL);
INSERT INTO `samples` VALUES (805,42,'2019-12-10',6,'09:50:00',NULL,162,42,25.9,33.2,6.51,98,8.13,2,3.1,2.17,1,239.67,10.03,7.44,1158.47,161.81,4.51,NULL,'took 4th reading and used');
INSERT INTO `samples` VALUES (806,32,'2019-12-11',1,'08:04:00',NULL,162,42,25.6,35.1,6.72,100.1,8.13,1.45,1.99,2.57,1,109.52,9.7,6.46,320.96,21.69,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (807,33,'2019-12-11',2,'08:37:00',NULL,162,42,26.4,35.3,6.84,103.3,8.13,1.2,1.13,1.08,1,93.3,8.77,5.64,181.11,16.89,0.67,NULL,NULL);
INSERT INTO `samples` VALUES (808,34,'2019-12-11',3,'08:56:00',NULL,162,42,26.4,35.4,6.83,103.4,8.13,1.48,1.18,1.17,1,85.05,8.56,5.06,167.04,9.88,0.89,NULL,'took 4th turbidity reading used 1.48');
INSERT INTO `samples` VALUES (809,36,'2019-12-11',4,'09:22:00',NULL,162,42,26.1,35.1,7.14,107.3,8.11,1.62,1.97,1.66,1,158.03,12.05,9.74,325.64,14.92,3.89,NULL,NULL);
INSERT INTO `samples` VALUES (810,37,'2019-12-11',5,'09:44:00',NULL,162,42,26.3,34.8,6.81,102.3,8.12,2.93,3.35,2.97,1,105.38,12.23,8.51,579.96,21.55,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (811,50,'2019-12-12',1,'07:30:00',NULL,162,42,26.2,35.1,6.3,94.6,8.14,0.56,0.62,0.5,1,274.74,10.98,6.81,243.8,35.55,10.49,NULL,'started late (miscommunication); extremely calm (no wind)');
INSERT INTO `samples` VALUES (812,51,'2019-12-12',2,'07:55:00',NULL,162,42,26.2,34.4,6.14,91.9,8.05,1.58,1.65,1.76,1,198.16,13.65,8.53,462.76,94.97,6.98,NULL,'extremely calm (no wind); redid probes because 1st reading sitting on bottom');
INSERT INTO `samples` VALUES (813,38,'2019-12-12',3,'08:20:00',NULL,162,42,26.4,34.8,6.6,99.4,8.15,1.4,1.55,1.65,1,151.43,9.8,5.75,434.85,67.68,1.64,NULL,NULL);
INSERT INTO `samples` VALUES (814,39,'2019-12-12',4,'08:40:00',NULL,162,42,26.6,35.4,6.81,103.2,8.18,0.78,0.71,0.72,1,88.08,7.89,3.88,76.72,4.77,0.75,NULL,NULL);
INSERT INTO `samples` VALUES (815,40,'2019-12-12',5,'09:10:00',NULL,162,42,26.6,35.1,6.76,102.2,8.17,1.4,1.3,1.47,1,109.77,8.97,5.76,285.03,19.97,1.22,NULL,NULL);
INSERT INTO `samples` VALUES (816,41,'2019-12-12',6,'09:23:00',NULL,162,42,27.3,34.3,6.68,101.8,8.14,1.31,1.5,1.54,1,257.27,7.53,4.3,388.75,204.51,0.79,NULL,'turbidity reading 1.43 after second; high readings (350 etc.)');
INSERT INTO `samples` VALUES (817,44,'2019-12-13',1,'08:18:00',NULL,162,42,26.4,35.4,6.81,103.1,8.17,0.94,0.93,0.83,1,101.83,8.78,5.11,107.4,6.37,1.54,NULL,'rain last night');
INSERT INTO `samples` VALUES (818,45,'2019-12-13',2,'08:38:00',NULL,162,42,26.8,35.4,6.71,102,8.16,0.47,0.51,0.57,1,74.8,7.78,4.9,102.74,4.71,0.91,NULL,NULL);
INSERT INTO `samples` VALUES (819,46,'2019-12-13',3,'08:58:00',NULL,162,42,27.2,35.3,6.76,103.6,8.15,0.63,0.79,0.73,1,100.49,9.55,4.78,116.01,10.46,4.29,NULL,'scuba dovers near collection');
INSERT INTO `samples` VALUES (820,48,'2019-12-13',4,'09:16:00',NULL,162,42,26.9,35.2,6.76,103.1,8.15,0.91,0.89,1.1,1,89.63,7.69,4.17,106.75,14.19,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (821,49,'2019-12-13',5,'09:30:00',NULL,162,42,27.1,35.3,6.87,105,8.18,0.39,0.41,0.39,1,100.21,7.92,4.11,131.45,8.82,1.05,NULL,'fishing line in water');
INSERT INTO `samples` VALUES (822,43,'2020-01-14',1,'07:57:00',NULL,162,43,24.8,33.8,6.67,97.5,8.16,8.62,8.67,8.32,1,112.05,14.58,9.48,847.47,47.62,1.3,NULL,NULL);
INSERT INTO `samples` VALUES (823,26,'2020-01-14',2,'08:16:00',NULL,162,43,24.2,32.2,6.7,95.8,8.13,27.8,26.9,27.6,1,232.75,19.49,16.51,1425.11,156.27,6.56,NULL,NULL);
INSERT INTO `samples` VALUES (824,27,'2020-01-14',3,'08:36:00',NULL,162,43,24,31.5,6.64,94.7,8.13,6.96,7.93,7.79,1,201.11,14.17,11.08,1024.94,119.63,2.94,NULL,NULL);
INSERT INTO `samples` VALUES (825,28,'2020-01-14',4,'08:59:00',NULL,162,43,24.5,33.5,6.29,91.1,8.13,4.03,3.99,4.5,1,187.18,14.21,9,535.39,103.13,5.24,NULL,NULL);
INSERT INTO `samples` VALUES (826,29,'2020-01-14',5,'09:08:00',NULL,162,43,25,34.1,6.2,91.2,8.15,1.87,1.7,2.06,1,279.74,42.87,26.71,757.19,133.22,36.65,NULL,NULL);
INSERT INTO `samples` VALUES (827,42,'2020-01-14',6,'09:29:00',NULL,162,43,24.2,33.7,6.35,93.3,8.13,5.01,7.19,8.5,1,185.77,13.9,8.98,929.11,108.34,1.78,NULL,'took 4th.5th.6th,7th reading..did not use');
INSERT INTO `samples` VALUES (828,32,'2020-01-15',1,'07:58:00',NULL,162,43,25.3,34.5,6.57,97.3,8.14,0.92,1.08,0.96,1,87.09,14.16,4.71,90.35,4.81,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (829,33,'2020-01-15',2,'08:20:00',NULL,162,43,25.2,34.7,6.61,97.8,8.18,1.57,1.92,1.74,1,82.57,11.28,5.2,95.1,8.01,1.73,NULL,NULL);
INSERT INTO `samples` VALUES (830,34,'2020-01-15',3,'08:43:00',NULL,162,43,25.3,34.7,6.41,95.1,8.14,3.32,3.17,3.29,1,70.04,10.04,4.4,108.01,4.38,1.4,NULL,NULL);
INSERT INTO `samples` VALUES (831,36,'2020-01-15',4,'09:05:00',NULL,162,43,25.1,34.4,6.46,95.2,8.05,0.99,1,1.09,1,94.98,12.81,6.13,195.35,3.94,6.94,NULL,NULL);
INSERT INTO `samples` VALUES (832,37,'2020-01-15',5,'09:24:00',NULL,162,43,25.3,34.7,6.49,96.2,8.16,2.26,2.18,2.15,1,89.39,12.66,6.18,199.24,10.18,1.97,NULL,NULL);
INSERT INTO `samples` VALUES (833,50,'2020-01-16',1,'07:35:00',NULL,162,43,24.6,34.1,6.21,90.8,8.14,1.14,1.04,0.93,1,141,14.56,8.99,485.22,64.48,6.14,NULL,'dropped and broke turbidity sample bottle; gathered a second sample in spare bottle');
INSERT INTO `samples` VALUES (834,51,'2020-01-16',2,'07:59:00',NULL,162,43,24.7,33.5,5.95,86.8,8.06,7.74,8.07,8.16,1,210.04,13.39,8.92,705.5,143.78,4.72,NULL,NULL);
INSERT INTO `samples` VALUES (835,38,'2020-01-16',3,'08:27:00',NULL,162,43,25.1,34.3,6.38,94,8.17,4.4,5.83,4.84,1,133.7,12.75,6.57,307.11,54.92,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (836,39,'2020-01-16',4,'08:53:00',NULL,162,43,25,34.7,6.7,98.9,8.2,0.93,0.91,0.91,1,81.68,12.09,4.22,59.53,4.18,1.52,NULL,NULL);
INSERT INTO `samples` VALUES (837,40,'2020-01-16',5,'09:12:00',NULL,162,43,24.7,34.3,6.65,97.5,8.18,2.03,1.92,2.08,1,91.58,11.61,5.54,236.88,18.37,2.06,NULL,NULL);
INSERT INTO `samples` VALUES (838,41,'2020-01-16',6,'09:30:00',NULL,162,43,25.6,34.2,6.58,98.2,8.16,1.31,1.53,1.55,1,196.21,13.3,5.84,359.28,126.16,1.58,NULL,NULL);
INSERT INTO `samples` VALUES (839,44,'2020-01-17',1,'08:12:00',NULL,162,43,24.8,34.6,6.67,97.8,8.15,1.02,0.86,0.92,1,80.26,12,4.65,108.78,6.9,0.28,NULL,'rained for a couple hours before starting: slight drizzle at first site but stopped');
INSERT INTO `samples` VALUES (840,45,'2020-01-17',2,'08:33:00',NULL,162,43,24.7,34.7,6.64,97.3,8.16,0.93,0.82,0.78,1,97.9,12.13,4.58,96.86,7.95,3.78,NULL,'3 dogs');
INSERT INTO `samples` VALUES (841,46,'2020-01-17',3,'09:03:00',NULL,162,43,25,34.5,6.39,94,8.15,0.63,1.08,1.07,1,125.04,11.51,4.07,151.16,43.35,2.31,NULL,'2 scuba divers near collection');
INSERT INTO `samples` VALUES (842,48,'2020-01-17',4,'09:28:00',NULL,162,43,24.8,34.5,6.66,97.6,8.18,2.86,2.99,3.16,1,96.79,10.83,4.43,219.56,22.77,0.5,NULL,NULL);
INSERT INTO `samples` VALUES (843,49,'2020-01-17',5,'09:43:00',NULL,162,43,25.5,34.7,6.64,98.7,8.2,0.47,0.62,0.64,1,111.5,11.46,3.95,100.75,18.82,3.81,NULL,NULL);
INSERT INTO `samples` VALUES (844,43,'2020-02-04',1,'07:59:00',NULL,162,44,24.9,32.8,6.4,93.2,8.18,1.18,1.82,1.33,1,190.47,11.25,9.1,1003.86,103.04,3.68,NULL,NULL);
INSERT INTO `samples` VALUES (845,26,'2020-02-04',2,'08:18:00',NULL,162,44,24.6,32.7,6.32,91.3,8.2,9.21,9.84,9.05,1,126.89,12.85,11.05,814.77,31.62,4.58,NULL,NULL);
INSERT INTO `samples` VALUES (846,27,'2020-02-04',3,'08:34:00',NULL,162,44,25.3,34.3,5.93,87.6,8.16,3.35,3.21,4.12,1,102.46,6.97,5.48,261.14,15.93,3.32,NULL,'took 4th reading and used 4.12');
INSERT INTO `samples` VALUES (847,28,'2020-02-04',4,'09:00:00',NULL,162,44,25.2,34.7,6.38,94.2,8.15,4.9,4.29,5.04,1,125.35,10.13,7.99,218.54,17.39,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (848,29,'2020-02-04',5,'09:07:00',NULL,162,44,25.4,33.2,6.1,89.9,8.15,2.25,2.29,2.53,1,334.78,17.48,13.76,789.32,225.1,31.7,NULL,NULL);
INSERT INTO `samples` VALUES (849,42,'2020-02-04',6,'09:32:00',NULL,162,44,25.6,33.1,6.41,94.4,8.12,2.26,2.59,2.42,1,291.39,10.97,9.25,1420.2,206.04,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (850,32,'2020-02-05',1,'07:58:00',NULL,162,44,24.5,34.4,6.76,98.4,8.16,1.03,1.01,0.87,1,133.9,10.04,8.26,452.37,48.89,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (851,33,'2020-02-05',2,'08:26:00',NULL,162,44,24.9,34.5,6.89,101.1,8.15,1.13,1.1,1.45,1,152.35,9.65,8.21,571.46,70.22,0.35,NULL,NULL);
INSERT INTO `samples` VALUES (852,34,'2020-02-05',3,'08:50:00',NULL,162,44,25,34.9,6.32,93.2,8.09,0.81,0.86,0.88,1,104.44,8.78,7.16,335.21,14.91,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (853,36,'2020-02-05',4,'09:12:00',NULL,162,44,25.1,34.3,7.4,108.7,8.08,1.07,1.09,1.5,1,99.13,10.82,9.18,621.62,13.94,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (854,37,'2020-02-05',5,'09:35:00',NULL,162,44,25.1,34.4,6.7,98.8,8.11,1.19,1.18,1.16,1,188.55,12.94,9.28,364.6,18.3,9.6,NULL,NULL);
INSERT INTO `samples` VALUES (855,50,'2020-02-06',1,'07:30:00',NULL,162,44,24.6,34.4,6.48,95.1,8.14,0.9,1.03,1.16,1,152.46,11.79,8.29,340.94,55.31,5.39,NULL,'Rainy-light; rained previous night');
INSERT INTO `samples` VALUES (856,51,'2020-02-06',2,'07:55:00',NULL,162,44,24.6,33.5,6.04,88.2,8.01,2.31,1.97,1.99,1,253.36,8.12,5.69,610.15,158.01,6.09,NULL,'Rainy-light; rained previous night');
INSERT INTO `samples` VALUES (857,38,'2020-02-06',3,'08:10:00',NULL,162,44,24.8,34.1,6.63,97.3,8.13,2.13,2.15,2.47,1,226.63,9.95,7.9,499.79,126.07,3.34,NULL,'rained previous night');
INSERT INTO `samples` VALUES (858,39,'2020-02-06',4,'08:27:00',NULL,162,44,25.1,35.1,6.81,101,8.19,0.78,0.77,0.8,1,90.18,8.82,4.69,85.77,6.65,4.03,NULL,'rained previous night');
INSERT INTO `samples` VALUES (859,40,'2020-02-06',5,'08:53:00',NULL,162,44,24.9,34.6,6.93,102.3,8.15,2.87,3.64,3.06,1,117.26,10.32,7.14,324.33,29.73,7.36,NULL,'rained previous night');
INSERT INTO `samples` VALUES (860,41,'2020-02-06',6,'09:05:00',NULL,162,44,25.3,33.6,6.87,101.5,8.13,2.36,3.41,2.7,1,467.63,12.08,8.97,578.98,374.2,2.57,NULL,'outrigger canoe unloading; rained previous night');
INSERT INTO `samples` VALUES (861,44,'2020-02-07',1,'07:54:00',NULL,162,44,24.1,35.1,6.93,101.2,8.16,0.76,0.76,0.67,1,94.69,9.08,5.67,95.86,12.15,1.68,NULL,'2.1 in of rain on 24 hours');
INSERT INTO `samples` VALUES (862,45,'2020-02-07',2,'08:12:00',NULL,162,44,24.3,35.1,7.07,103.4,8.16,1.15,1.73,1.46,1,93.95,9.03,4.95,91.15,8.06,2.66,NULL,'2.1 in of rain on 24 hours');
INSERT INTO `samples` VALUES (863,46,'2020-02-07',3,'08:33:00',NULL,162,44,23.8,34.7,7.09,102.7,8.15,1.7,1.17,1.33,1,145.26,8.89,6.29,251.28,61.09,1.68,NULL,'2.1 in of rain on 24 hours');
INSERT INTO `samples` VALUES (864,48,'2020-02-07',4,'08:54:00',NULL,162,44,24.3,34.9,7.06,103.3,8.17,2.42,2.38,2.2,1,108.44,8.12,4.68,160.86,25.94,1.4,NULL,'2.1 in of rain on 24 hours');
INSERT INTO `samples` VALUES (865,49,'2020-02-07',5,'09:09:00',NULL,162,44,24.3,34.9,7.07,103.5,8.19,0.97,0.76,0.79,1,106.11,8.87,5.65,235.35,25.96,1.2,NULL,'2.1 in of rain on 24 hours');
INSERT INTO `samples` VALUES (866,43,'2020-02-25',1,'08:01:00',NULL,162,45,24.3,33.4,6.43,92.4,8.19,1.83,1.91,2.06,1,169.97,11.32,8.15,857.36,75.13,3.32,NULL,NULL);
INSERT INTO `samples` VALUES (867,26,'2020-02-25',2,'08:23:00',NULL,162,45,22.8,32,6.55,90.9,8.1,22.6,24.6,25.1,1,111.38,14.89,13.18,1128.2,16.34,2.9,NULL,NULL);
INSERT INTO `samples` VALUES (868,27,'2020-02-25',3,'08:40:00',NULL,162,45,24.6,33.2,5.75,82.9,8.15,7.89,7.34,7.84,1,132.21,10.62,8.21,823.78,37.67,3.01,NULL,NULL);
INSERT INTO `samples` VALUES (869,28,'2020-02-25',4,'08:58:00',NULL,162,45,24.2,34.1,6.65,95.7,8.15,5.56,5.39,5.75,1,149.34,10.56,7.81,366.48,63.73,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (870,29,'2020-02-25',5,'09:12:00',NULL,162,45,24.9,31.2,6.24,89.2,8.11,5.99,4.91,5.76,1,728.26,38.86,36.76,3064.55,645.36,19.83,NULL,'dog on a surfboard & in water');
INSERT INTO `samples` VALUES (871,42,'2020-02-25',6,'09:35:00',NULL,162,45,24.9,33.1,6.31,91.4,8.13,3.84,2.85,2.38,1,262.21,9.58,8.03,1283.6,178.53,5.1,NULL,NULL);
INSERT INTO `samples` VALUES (872,32,'2020-02-26',1,'08:00:00',NULL,162,45,24.2,34.7,6.74,97.3,8.16,1.38,1.21,1.18,1,97.54,9.07,6.06,171.41,10.92,1.71,NULL,NULL);
INSERT INTO `samples` VALUES (873,33,'2020-02-26',2,'08:23:00',NULL,162,45,24.6,34.9,6.61,96.2,8.17,1.19,1.22,1.27,1,96.01,10,6.01,140.71,12.56,1.67,NULL,NULL);
INSERT INTO `samples` VALUES (874,34,'2020-02-26',3,'08:42:00',NULL,162,45,24.6,34.9,6.6,96,8.15,0.93,1.01,0.99,1,95,8.05,4.36,91.62,7.28,2.11,NULL,NULL);
INSERT INTO `samples` VALUES (875,36,'2020-02-26',4,'09:03:00',NULL,162,45,24.4,34.7,7.01,101.4,8.08,1.11,1.14,1.04,1,119.22,14.19,12.96,818.57,36.42,4.65,NULL,NULL);
INSERT INTO `samples` VALUES (876,37,'2020-02-26',5,'09:23:00',NULL,162,45,24.9,34.1,6.5,94.7,8.08,1.13,1.1,1.02,1,105.03,9.09,6.41,319.28,11.25,2.44,NULL,NULL);
INSERT INTO `samples` VALUES (877,50,'2020-02-27',1,'07:20:00',NULL,162,45,22.3,34.1,6.42,89.8,8.14,1,1.11,1.29,1,188.26,16.53,10.5,620.14,96.64,7.91,NULL,'broke turbidity bottle and used spare');
INSERT INTO `samples` VALUES (878,51,'2020-02-27',2,'07:50:00',NULL,162,45,22.3,33.2,6.72,93.4,8.09,1.56,1.67,1.46,1,227.24,8.83,5.4,610.83,142.13,4.4,NULL,'every site was windy');
INSERT INTO `samples` VALUES (879,38,'2020-02-27',3,'08:10:00',NULL,162,45,22.7,34.1,6.5,91.6,8.14,1.37,1.68,1.61,1,172.89,10.45,6.13,488.13,94.12,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (880,39,'2020-02-27',4,'08:35:00',NULL,162,45,22.8,34.7,6.81,96.4,8.18,0.75,0.81,0.79,1,88.47,9.54,5.21,53.57,5.71,2.01,NULL,'Replaced batteries at Kealia meter for probes...1/2 full');
INSERT INTO `samples` VALUES (881,40,'2020-02-27',5,'09:10:00',NULL,162,45,22.8,34.5,6.79,95.9,8.19,1.4,2.09,1.78,1,111.21,9.33,6.03,237.34,22.85,3.28,NULL,NULL);
INSERT INTO `samples` VALUES (882,41,'2020-02-27',6,'09:25:00',NULL,162,45,24.1,34,6.71,96.6,8.12,0.77,0.91,1.01,1,297.09,10.77,6.98,449.69,227.84,0.96,NULL,NULL);
INSERT INTO `samples` VALUES (883,44,'2020-02-28',1,'08:03:00',NULL,162,45,23,34.6,6.86,97.7,8.22,1.24,1.08,1.08,1,84.39,10.34,6.06,142.36,12.96,1.33,NULL,NULL);
INSERT INTO `samples` VALUES (884,45,'2020-02-28',2,'08:30:00',NULL,162,45,23.3,34.6,6.81,97.4,8.2,1,1.48,1.6,1,92.72,9.82,5.44,118.54,10.33,2.43,NULL,'did 4th turbidity (1.35)');
INSERT INTO `samples` VALUES (885,46,'2020-02-28',3,'08:55:00',NULL,162,45,23.4,34.2,6.79,97,8.18,1.52,1.91,1.78,1,203.41,9.26,6.21,277.85,125.66,2.6,NULL,'battery low on Hach 40D');
INSERT INTO `samples` VALUES (886,48,'2020-02-28',4,'09:26:00',NULL,162,45,24.4,34.5,6.72,97.4,8.21,0.98,1.05,0.79,1,116.2,9.22,5.17,131.78,27.71,3.74,NULL,NULL);
INSERT INTO `samples` VALUES (887,49,'2020-02-28',5,'09:50:00',NULL,162,45,24.4,34.7,6.73,98.1,8.22,0.55,0.55,0.57,1,113.32,9.57,5.9,175.26,27.8,1.21,NULL,NULL);
INSERT INTO `samples` VALUES (888,43,'2020-05-05',1,'08:08:00',NULL,162,46,24.4,31.4,6.51,92.8,8.15,10.6,9.83,10.7,1,291.2,13.98,9.92,1783.45,192.05,3.05,NULL,'nice and calm everywhere, flat, no wind');
INSERT INTO `samples` VALUES (889,26,'2020-05-05',2,'08:35:00',NULL,162,46,24.9,31.1,6.31,90.6,8.07,7.02,7.43,7.04,1,117.3,12.37,8.79,1039.16,17.84,3.83,NULL,NULL);
INSERT INTO `samples` VALUES (890,27,'2020-05-05',3,'08:58:00',NULL,162,46,25.9,29.4,6.49,94.3,8.08,2.76,2.77,2.83,1,268.31,27.98,18.07,3974.97,167.95,22.77,NULL,NULL);
INSERT INTO `samples` VALUES (891,28,'2020-05-05',4,'09:22:00',NULL,162,46,26.3,34,6.95,104.4,8.15,9.57,10.2,9.3,1,132.7,10.34,5.74,430.01,50.46,3.78,NULL,NULL);
INSERT INTO `samples` VALUES (892,29,'2020-05-05',5,'09:42:00',NULL,162,46,26.7,29.2,6.87,101.1,8.1,6.79,7.51,6.39,1,989.35,35.01,33.95,3835.57,540.18,13.84,NULL,NULL);
INSERT INTO `samples` VALUES (893,42,'2020-05-05',6,'10:08:00',NULL,162,46,26,32,6.81,100.5,8.09,10.4,9.24,9.67,1,338.12,14.48,11.37,3273.2,247.76,3.32,NULL,NULL);
INSERT INTO `samples` VALUES (894,32,'2020-05-06',1,'08:05:00',NULL,162,46,25.1,33.2,6.69,97.7,8.14,1.34,1.13,1.35,1,163.26,10.46,5.8,434.02,55.03,3.33,NULL,'MML: 2 canoes in water near sample site, flat and clear');
INSERT INTO `samples` VALUES (895,33,'2020-05-06',2,'08:30:00',NULL,162,46,25.4,33.5,6.71,98.7,8.14,0.57,0.48,0.52,1,255.49,10.47,5.25,493.04,132.71,4.02,NULL,'MMB: clear, flat, no wind');
INSERT INTO `samples` VALUES (896,34,'2020-05-06',3,NULL,NULL,162,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MON: not able to sample due to gate closure');
INSERT INTO `samples` VALUES (897,36,'2020-05-06',4,'09:05:00',NULL,162,46,25.3,34.2,7.22,106.4,8.13,3.16,2.57,2.46,1,106.2,10.94,6.51,423.74,13.29,2.09,NULL,'MAN: small waves, did salinity and D.O 2x and numbers were the same');
INSERT INTO `samples` VALUES (898,37,'2020-05-06',5,'09:30:00',NULL,162,46,25.2,34.3,6.76,99.5,8.13,4.9,5.43,6.23,1,113.21,14.01,11.35,617.69,23.7,5.94,NULL,NULL);
INSERT INTO `samples` VALUES (899,50,'2020-05-07',1,'08:02:00',NULL,162,46,24.7,34,6.72,97.8,8.14,3.52,3.98,3.59,1,150.59,11.72,7.84,584.39,66.49,7.03,NULL,'20\' zodiac passing by ~30\' away; windy');
INSERT INTO `samples` VALUES (900,51,'2020-05-07',2,'08:16:00',NULL,162,46,24.7,32.5,7.47,107.8,8.17,9.62,7.48,8.21,1,404.7,10.08,6.64,1174.44,288.09,5.24,NULL,'Did DO/salinity 2x, same reading; low tide; surf');
INSERT INTO `samples` VALUES (901,38,'2020-05-07',3,'08:35:00',NULL,162,46,24.7,33.9,7.03,102.1,8.15,6.89,7.61,8.05,1,171.36,10.88,6.38,485.78,77.3,6.3,NULL,'water looked dirty; windy');
INSERT INTO `samples` VALUES (902,39,'2020-05-07',4,'09:02:00',NULL,162,46,24.8,34.8,6.98,102.2,8.17,1.88,1.95,1.93,1,96.76,9.94,4.65,132.66,5.18,4.59,NULL,NULL);
INSERT INTO `samples` VALUES (903,40,'2020-05-07',5,'09:20:00',NULL,162,46,25.2,34.4,6.82,103,8.13,2.7,3.27,3.65,1,114.24,12.41,6.6,244.81,23.31,5.13,NULL,NULL);
INSERT INTO `samples` VALUES (904,41,'2020-05-07',6,'09:41:00',NULL,162,46,25.9,33.7,6.9,102.5,8.11,7.28,8.8,7.91,1,370.93,13.2,8.93,690.8,261.58,1.95,NULL,NULL);
INSERT INTO `samples` VALUES (905,44,'2020-05-08',1,'08:00:00',NULL,162,46,24.9,34.5,6.92,101.4,8.14,1.58,1.23,1.9,1,111.79,9.92,4.99,172.4,19.03,0.67,NULL,'rained in Wailuku night before; smelt of poop (really bad) by water and car/street');
INSERT INTO `samples` VALUES (906,45,'2020-05-08',2,'08:22:00',NULL,162,46,25,34.6,6.92,101.8,8.15,1.06,1.02,1.7,1,108.08,9.88,4.66,152.35,18.31,8.3,NULL,'no stinky smell');
INSERT INTO `samples` VALUES (907,46,'2020-05-08',3,'08:54:00',NULL,162,46,25.1,33.9,6.8,100,8.12,1.41,1.77,2.65,1,264.34,9.86,5.49,308.03,161.49,3.77,NULL,'parked at shops of Wailea and walked; turbidity (noticed suspended matter)');
INSERT INTO `samples` VALUES (908,48,'2020-05-08',4,'09:30:00',NULL,162,46,25.4,34.4,6.82,100.7,8.17,2.34,2.47,2.81,1,159.72,11.55,4.77,242.8,73.77,4.8,NULL,NULL);
INSERT INTO `samples` VALUES (909,49,'2020-05-08',5,'09:42:00',NULL,162,46,25.6,33.9,6.92,102.5,8.18,0.58,0.5,0.48,1,208.1,9.95,5.39,391.79,106.6,4.11,NULL,NULL);
INSERT INTO `samples` VALUES (910,43,'2020-06-09',1,'08:05:00',NULL,162,47,26.4,33.4,5.94,88.6,8.1,2.87,2.59,2.89,1,209.57,10.91,8.09,792.89,103.21,6.84,NULL,'KKP - Beach fisherman reeling in fish.  Noticed blood trail from fish after sample taken');
INSERT INTO `samples` VALUES (911,26,'2020-06-09',2,'08:45:00',NULL,162,47,26.7,31.6,5.97,88.7,8.02,20.2,21.2,21.1,1,188.7,16.72,13.94,1343.42,73,14.26,NULL,'NMP - Construction - Hotel being built about 100\' south of sample site');
INSERT INTO `samples` VALUES (912,27,'2020-06-09',3,'09:10:00',NULL,162,47,27.9,32.9,6.12,93.5,8.08,11,11.9,11.4,1,190.43,15.78,10.23,1055.37,75.82,5.27,NULL,NULL);
INSERT INTO `samples` VALUES (913,28,'2020-06-09',4,'09:35:00',NULL,162,47,27.5,34.2,6.47,99,8.11,8.44,8.85,8.53,1,184.1,11.39,8.17,524.07,75.18,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (914,29,'2020-06-09',5,'09:55:00',NULL,162,47,27.6,30,6.86,102.6,8.09,20.4,19,23.2,1,1150.61,34.46,32.19,3458.46,762.06,9.72,NULL,NULL);
INSERT INTO `samples` VALUES (915,42,'2020-06-09',6,'10:25:00',NULL,162,47,28.1,32.9,6.58,100.9,8.1,16.4,16,17.9,1,301.89,13.09,11.82,1743.55,200.1,2.6,NULL,NULL);
INSERT INTO `samples` VALUES (916,32,'2020-06-10',1,'08:10:00',NULL,162,47,26.1,34.5,6.67,99.8,8.11,2.56,2.42,2.84,1,185.08,12.79,7.01,310.97,31.99,23.05,NULL,'very clear and little wind at all sites');
INSERT INTO `samples` VALUES (917,33,'2020-06-10',2,'08:50:00',NULL,162,47,26.9,34.6,6.61,100.4,8.12,0.97,1.39,1.24,1,137.95,9.71,6.02,267.92,52.16,0.7,NULL,'MON - Gate was closed.  Sign saying prk closed.  Talked to ranger at Ahihi and he said we do have permission to sample at this site.  Sample was taken after MAS sire.');
INSERT INTO `samples` VALUES (918,34,'2020-06-10',3,'10:45:00',NULL,162,47,27.9,34.3,7.09,100.4,8.18,1.74,1.95,2.2,1,147.91,9.73,7.3,573.41,35.73,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (919,36,'2020-06-10',4,'09:35:00',NULL,162,47,26.4,34.8,7.13,107.4,8.13,0.93,1.16,1.02,1,121.94,9.9,5.71,221.22,6.61,13.15,NULL,NULL);
INSERT INTO `samples` VALUES (920,37,'2020-06-10',5,'10:08:00',NULL,162,47,26.4,34.8,6.83,103,8.19,1.31,1.29,1.31,1,117.62,11.52,6.08,340.76,9.19,3.67,NULL,NULL);
INSERT INTO `samples` VALUES (921,50,'2020-06-11',1,'08:00:00',NULL,162,47,25.2,34.3,6.34,93.3,8.09,2.4,2.03,2.83,1,665.94,20.23,16.65,503.33,69.42,22.07,NULL,'super windy at all sites');
INSERT INTO `samples` VALUES (922,51,'2020-06-11',2,'08:30:00',NULL,162,47,25.6,33.2,7.1,104.7,8.08,4.09,4.16,4.47,1,244.84,7.79,5.61,806.81,137.05,5.27,NULL,'somewhat windy; sunny');
INSERT INTO `samples` VALUES (923,38,'2020-06-11',3,'08:52:00',NULL,162,47,25.4,34.7,6.81,100.9,8.14,4.36,5.11,4.85,1,123.54,9.06,4.74,175.81,17.72,3.35,NULL,'windy; people fishing; some trash on beach');
INSERT INTO `samples` VALUES (924,39,'2020-06-11',4,'09:15:00',NULL,162,47,26.1,35,6.68,100.3,8.15,2.03,1.74,2.26,1,112.57,7.85,4.23,58.05,5.13,1.32,NULL,'2 kids; 1 dog; super windy');
INSERT INTO `samples` VALUES (925,40,'2020-06-11',5,'09:45:00',NULL,162,47,27.1,34.8,6.58,100.3,8.13,3.61,3.53,3.23,1,142.61,12,7.62,319.29,40.72,5.31,NULL,NULL);
INSERT INTO `samples` VALUES (926,41,'2020-06-11',6,'10:02:00',NULL,162,47,26.9,34.6,6.64,100.8,8.13,3.11,3.79,3.75,1,189.26,10.95,6.99,370.02,95.29,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (927,44,'2020-06-12',1,'08:05:00',NULL,162,47,26,34.7,6.7,99.9,8.15,1.45,1.19,1.31,1,123.02,9.17,5.91,146.36,20.1,0.87,NULL,NULL);
INSERT INTO `samples` VALUES (928,45,'2020-06-12',2,'08:30:00',NULL,162,47,26.4,34.4,6.71,101,8.16,0.86,0.6,0.88,1,122.87,8.04,4.6,79.85,6.25,3.7,NULL,'4 people in 1 tent; 4 poles by campers');
INSERT INTO `samples` VALUES (929,46,'2020-06-12',3,'08:55:00',NULL,162,47,26.4,34.6,6.74,101.3,8.16,0.76,0.78,0.69,1,146.68,8.64,4.66,122.05,36.83,3.38,NULL,'dog in water; scuba divers; babies in water');
INSERT INTO `samples` VALUES (930,48,'2020-06-12',4,'09:15:00',NULL,162,47,26.9,34.7,6.69,101.4,8.17,1.42,1.85,1.7,1,111.58,8.27,2.01,79.69,8.56,1.11,NULL,NULL);
INSERT INTO `samples` VALUES (931,49,'2020-06-12',5,'09:35:00',NULL,162,47,27.1,34.9,6.64,101.2,8.17,1.05,1.02,1.13,1,119.14,9.46,3.06,126.38,14.34,1.94,NULL,'9 tents; 5 fishing poles near sample site');
INSERT INTO `samples` VALUES (932,43,'2020-06-30',1,'08:20:00',NULL,162,48,26.5,31.9,6.18,91.9,8.1,5.83,5.72,5.73,1,273.91,18.29,14.22,1649.32,178.84,2.76,NULL,'KKS - Water much clearer 20\' from shore');
INSERT INTO `samples` VALUES (933,26,'2020-06-30',2,'08:45:00',NULL,162,48,26.7,33.8,6.45,97.3,8.06,20.3,21,20.4,1,107.11,14.38,11.55,616.44,10.51,1.58,NULL,'KKP - 2 surfers coming to shore next to sampling');
INSERT INTO `samples` VALUES (934,27,'2020-06-30',3,'09:25:00',NULL,162,48,27.5,34.1,6.49,99.5,8.1,13.4,14.1,13.7,1,136.16,10.92,8.22,676.12,49.77,0.95,NULL,'All sites - no wind.');
INSERT INTO `samples` VALUES (935,28,'2020-06-30',4,'09:45:00',NULL,162,48,27.5,34.2,6.76,103.6,8.17,9.37,11.3,10.6,1,178.63,10.48,6.86,490.48,89.14,2.12,NULL,NULL);
INSERT INTO `samples` VALUES (936,29,'2020-06-30',5,'10:10:00',NULL,162,48,28,32.5,6.91,105.7,8.14,9.82,10.1,9.95,1,543.93,23.7,16.38,2121.5,409.27,8.69,NULL,NULL);
INSERT INTO `samples` VALUES (937,42,'2020-06-30',6,'10:40:00',NULL,162,48,27.6,33.9,6.68,102.6,8.27,10.4,9.8,9.84,1,186.8,10.86,8.15,1067.38,100.75,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (938,32,'2020-07-01',1,'08:20:00',NULL,162,48,26.2,34.3,6.7,100.5,8.14,8.07,6.2,7.47,1,153.18,11.16,7.87,625.02,69.78,2.9,NULL,NULL);
INSERT INTO `samples` VALUES (939,33,'2020-07-01',2,'08:55:00',NULL,162,48,27.2,33.9,6.69,101.8,8.12,1.36,1.24,1.34,1,194.54,9.8,6.39,600.28,115.11,0.9,NULL,NULL);
INSERT INTO `samples` VALUES (940,34,'2020-07-01',3,'09:25:00',NULL,162,48,27.5,34.1,6.99,107.3,8.15,1.34,1.73,1.66,1,132.28,9.81,7.5,685.42,27.62,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (941,36,'2020-07-01',4,'09:55:00',NULL,162,48,26.9,35,7.18,109.6,8.15,1.67,1.47,1.75,1,98.66,8.05,5.06,175.85,7.71,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (942,37,'2020-07-01',5,'10:30:00',NULL,162,48,27.5,35.1,6.69,103.3,8.14,1.13,1.21,1.01,1,94.94,9.06,6.57,152.72,9.93,6.14,NULL,NULL);
INSERT INTO `samples` VALUES (943,50,'2020-07-02',1,'08:10:00',NULL,162,48,25.5,34.2,6.33,93.8,8.12,2.58,2.52,3.05,1,181.71,12.96,10.45,617.48,92.37,9.25,NULL,NULL);
INSERT INTO `samples` VALUES (944,51,'2020-07-02',2,'08:25:00',NULL,162,48,25.8,33.1,7.68,113.5,8.15,2.92,1.79,1.79,1,372.47,13.04,10.15,1097.99,257.05,9.04,NULL,'stuff visible floating in sample cell. Conversation with manager :\'usually ~80 units full, now only ~15 units are full. Have also seen moi and ulua coming in close\'. Low tide and rocky (could explain super high DO).');
INSERT INTO `samples` VALUES (945,38,'2020-07-02',3,'08:49:00',NULL,162,48,26.1,35,6.82,102.6,8.16,4.51,4.23,4.9,1,114.53,10.14,4.68,160.29,25.38,2.5,NULL,'9 tents');
INSERT INTO `samples` VALUES (946,39,'2020-07-02',4,'09:05:00',NULL,162,48,26.2,35.2,6.72,101.4,8.17,1.79,1.53,1.54,1,103.4,9.41,4.56,82.44,6.11,8.33,NULL,'4 tents');
INSERT INTO `samples` VALUES (947,40,'2020-07-02',5,'09:25:00',NULL,162,48,26.7,34.9,6.71,101.8,8.1,3.23,3.56,3.98,1,99.46,9.11,6.83,219.62,17.26,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (948,41,'2020-07-02',6,'09:45:00',NULL,162,48,26.7,34.7,6.69,101.6,8.15,14.6,14.7,13.9,1,205.3,10.89,7.03,440.12,115.95,4.82,NULL,'murky water');
INSERT INTO `samples` VALUES (949,44,'2020-07-03',1,'08:10:00',NULL,162,48,26.5,34.9,6.71,101.4,8.14,1.98,1.79,1.62,1,99.63,7.54,5.21,213.01,22.7,1.23,NULL,'dog on beach');
INSERT INTO `samples` VALUES (950,45,'2020-07-03',2,'08:30:00',NULL,162,48,27,34.9,6.7,102.2,8.14,0.68,0.67,0.63,1,97.98,7.18,3.84,144.99,12.75,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (951,46,'2020-07-03',3,'08:55:00',NULL,162,48,27.1,34.6,6.63,101.4,8.1,2.5,2.49,2.07,1,219.02,9.07,6.49,308.08,129.39,1.46,NULL,NULL);
INSERT INTO `samples` VALUES (952,48,'2020-07-03',4,'09:20:00',NULL,162,48,27.2,34.7,6.76,103.4,8.17,2.08,2.49,2.93,1,114.39,9.38,5.26,185.5,33.59,0.73,NULL,'5 tents/10 fishing poles');
INSERT INTO `samples` VALUES (953,49,'2020-07-03',5,'09:41:00',NULL,162,48,27.4,34.9,6.68,102.7,8.17,1,1.36,1.15,1,146.33,8.16,4.77,312.8,54.6,3.27,NULL,'15 tents/14 fishing poles');
INSERT INTO `samples` VALUES (954,43,'2020-07-21',1,'08:05:00',NULL,162,49,26.6,32,5.81,86.5,8.09,1.75,1.96,1.94,1,268.12,11.17,10.09,1586.37,177.95,2.24,NULL,NULL);
INSERT INTO `samples` VALUES (955,26,'2020-07-21',2,'08:30:00',NULL,162,49,25.8,32.1,6.07,89.3,8.07,15.4,15.8,17,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (956,27,'2020-07-21',3,'08:48:00',NULL,162,49,26.6,32.5,5.81,87,8.09,5.93,7.11,6.25,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (957,28,'2020-07-21',4,'09:09:00',NULL,162,49,26.7,34.3,6.28,95,8.1,6.67,7.31,6.89,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (958,29,'2020-07-21',5,'09:25:00',NULL,162,49,27,31,6.37,95.2,8.09,5.23,6.52,6.96,1,1115.1,37.14,29.85,4240.24,1003.19,5.49,NULL,'lots of fishing rods in the water but did not see any fisherpersons');
INSERT INTO `samples` VALUES (959,42,'2020-07-21',6,'09:54:00',NULL,162,49,27.6,31.7,6.52,98.8,8.08,6.13,7.04,6.74,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2 peeps in water were snorkeling');
INSERT INTO `samples` VALUES (960,32,'2020-07-22',1,'08:05:00',NULL,162,49,26.6,33.8,6.27,94.2,8.11,7.49,7.46,7.15,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'took 4th turbidity reading');
INSERT INTO `samples` VALUES (961,33,'2020-07-22',2,'08:29:00',NULL,162,49,27,34.6,6.18,94.1,8.13,0.92,0.94,0.9,1,169.81,10.74,6.81,368.54,75.98,9.5,NULL,NULL);
INSERT INTO `samples` VALUES (962,34,'2020-07-22',3,'08:50:00',NULL,162,49,27.3,34.6,6.05,92.4,8.09,1.16,0.9,0.92,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (963,36,'2020-07-22',4,'09:12:00',NULL,162,49,27,34.8,6.79,103.3,8.11,0.89,0.91,0.95,1,91.3,9.18,6.18,295.01,6.73,1.39,NULL,NULL);
INSERT INTO `samples` VALUES (964,37,'2020-07-22',5,'09:37:00',NULL,162,49,26.9,34.3,6.41,97.2,8.11,1.08,0.91,0.96,1,125.7,14.65,12.79,716.4,26.71,8.72,NULL,NULL);
INSERT INTO `samples` VALUES (965,50,'2020-07-23',1,'07:50:00',NULL,162,49,26.1,34.4,6.03,90.1,8.11,0.95,0.93,0.84,1,159.67,11.57,9.46,502.99,67.69,7.08,NULL,'windy, some waves');
INSERT INTO `samples` VALUES (966,51,'2020-07-23',2,'08:15:00',NULL,162,49,26.2,32.6,6.68,99.2,8.02,2.17,2.31,2.31,1,345.38,10.35,8.9,1110.22,251.94,7.04,NULL,NULL);
INSERT INTO `samples` VALUES (967,38,'2020-07-23',3,'08:35:00',NULL,162,49,26.4,34.4,6.41,96.5,8.1,2.01,1.8,2.01,1,128.76,8.84,5.52,316.5,41.46,2.42,NULL,'2 sleeping tents, 2 pop-up tents, 5 fishing poles');
INSERT INTO `samples` VALUES (968,39,'2020-07-23',4,'09:00:00',NULL,162,49,27,35.3,6.43,98.1,8.15,0.89,0.82,0.83,1,93.88,7.6,4.28,60.01,5.91,0.9,NULL,'1 dog on beach');
INSERT INTO `samples` VALUES (969,40,'2020-07-23',5,'09:15:00',NULL,162,49,27.5,34.6,6.39,97.9,8.14,2.56,2.58,2.64,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 dog on beach; did not collect for nutrients; teperature rising since the morning');
INSERT INTO `samples` VALUES (970,41,'2020-07-23',6,'09:30:00',NULL,162,49,28.2,34.4,6.32,98,8.1,3.53,3.58,3.36,1,239.95,10.02,7.3,573.12,146.72,4.85,NULL,'2 dogs on beach; water looks brown');
INSERT INTO `samples` VALUES (971,44,'2020-07-24',1,'08:06:00',NULL,162,49,27.2,34.9,6.3,96.2,8.14,0.79,0.76,0.77,1,101.68,8.81,5.44,173.38,17.6,0.92,NULL,'1 dog on beach');
INSERT INTO `samples` VALUES (972,45,'2020-07-24',2,'08:25:00',NULL,162,49,27.2,35,6.33,96.8,8.14,0.77,0.87,0.87,1,132.01,7.91,4.8,96.27,10.19,4.97,NULL,'1 dog on beach; there was \'XXXX\' across turbidity screen');
INSERT INTO `samples` VALUES (973,46,'2020-07-24',3,'08:45:00',NULL,162,49,27.2,34.7,6.37,97.1,8.12,1.09,1.23,1.28,1,170.83,9.47,5.39,174.65,78.63,3.46,NULL,'SUP (x2); scuba divers nearby');
INSERT INTO `samples` VALUES (974,48,'2020-07-24',4,'09:01:00',NULL,162,49,27.6,34.9,6.39,98,8.15,0.7,0.73,0.84,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'temp difference between salinity and DO probe = 0.3 C');
INSERT INTO `samples` VALUES (975,49,'2020-07-24',5,'09:15:00',NULL,162,49,27.9,34.9,6.41,99,8.18,0.53,0.57,0.52,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4 tents; boogie boarders nearby; 3 fishing poles out');
INSERT INTO `samples` VALUES (976,43,'2020-08-11',1,'08:04:00',NULL,162,50,26.5,33.3,5.65,84.6,8.1,1.55,1.82,2.03,1,198.7,9.13,6.6,952.43,105.61,3.94,NULL,NULL);
INSERT INTO `samples` VALUES (977,26,'2020-08-11',2,'08:27:00',NULL,162,50,25.7,32.1,6.4,94,8.04,17.9,17.7,17.2,1,149.48,10.01,8.82,1041.32,51.57,5.27,NULL,'Sup entering water');
INSERT INTO `samples` VALUES (978,27,'2020-08-11',3,'08:47:00',NULL,162,50,26.7,32.6,6.26,93.7,8.1,10.1,9.58,9.29,1,188.87,10.11,8.23,1040.57,90.85,4.99,NULL,NULL);
INSERT INTO `samples` VALUES (979,28,'2020-08-11',4,'09:07:00',NULL,162,50,27.2,34.1,6.15,93.9,8.1,3.68,4.08,4.43,1,127.29,6.69,4.21,354.63,30.73,3.63,NULL,NULL);
INSERT INTO `samples` VALUES (980,29,'2020-08-11',5,'09:23:00',NULL,162,50,27.7,33,6.34,96.9,8.1,5.49,4.94,6.44,1,461.03,24.13,23.52,1192.33,342.97,28.17,NULL,'lots of fishing rods in the water but did not see any fisherpersons but only 1 fisherman');
INSERT INTO `samples` VALUES (981,44,'2020-08-12',1,'08:05:00',NULL,162,50,27,34.9,6.48,99.1,8.13,0.45,0.62,0.49,1,99.81,7.34,4.19,142.38,19.98,1.46,NULL,'took 2nd NTU reading and used it');
INSERT INTO `samples` VALUES (982,45,'2020-08-12',2,'08:18:00',NULL,162,50,27.1,35,6.57,100.5,8.13,0.42,0.4,0.39,1,96.42,7,3.44,119.88,10.31,3.04,NULL,NULL);
INSERT INTO `samples` VALUES (983,46,'2020-08-12',3,'08:35:00',NULL,162,50,27,34.7,6.59,100.6,8.11,1.35,1.47,1.29,1,146.1,7.96,4.73,203.62,60.72,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (984,33,'2020-08-12',4,'09:01:00',NULL,162,50,27.6,34.9,6.5,100.3,8.15,0.5,0.52,0.53,1,117.67,8.14,4,121.24,19.67,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (985,36,'2020-08-12',5,'09:21:00',NULL,162,50,26.7,34.5,6.82,103.5,8.08,0.53,0.77,0.73,1,95.69,7.51,4.36,253.99,7.34,3.28,NULL,NULL);
INSERT INTO `samples` VALUES (986,37,'2020-08-12',6,'09:37:00',NULL,162,50,26.6,34.9,6.34,96.4,8.09,0.55,0.68,0.66,1,101.21,8.96,6.24,90.89,13.27,5.21,NULL,NULL);
INSERT INTO `samples` VALUES (987,50,'2020-08-13',1,'07:55:00',NULL,162,50,25.8,33.7,6.38,94.7,8.13,1.04,0.9,1.05,1,177.65,12.08,9.93,746.92,95.27,13.16,NULL,'DI water high NTU (bc minerals?)');
INSERT INTO `samples` VALUES (988,51,'2020-08-13',2,'08:05:00',NULL,162,50,26.4,33.1,6.53,98,8.02,4.08,4.87,4.86,1,352.45,10.65,7.96,1067.09,258.39,7.49,NULL,'high tide? windy');
INSERT INTO `samples` VALUES (989,38,'2020-08-13',3,'08:30:00',NULL,162,50,26.4,34.3,6.7,101.1,8.11,12.7,13.3,13.4,1,157.54,9.41,6.27,401.92,65.67,3.87,NULL,'1 SUP with dog in water; muddy/brown water');
INSERT INTO `samples` VALUES (990,39,'2020-08-13',4,'08:50:00',NULL,162,50,26,35,6.81,102.4,8.17,0.87,1.16,0.98,1,94.8,8.43,3.83,57.12,7.37,3.24,NULL,'Need tape and rope in bag and magnet');
INSERT INTO `samples` VALUES (991,41,'2020-08-13',5,'09:10:00',NULL,162,50,27.2,34.6,6.67,102,8.13,1.25,2.24,2,1,198.29,8.97,6.3,386.51,118.48,3.16,NULL,'9 canoe paddlers; water looks brown');
INSERT INTO `samples` VALUES (992,43,'2020-09-01',1,'07:54:00',NULL,162,51,26.7,33.4,5.39,81.4,8.05,1.05,1.14,1.02,1,186.17,8.16,6.58,889.84,101.22,4.03,NULL,NULL);
INSERT INTO `samples` VALUES (993,26,'2020-09-01',2,'08:20:00',NULL,162,51,26.8,32.6,5.59,84.2,8.03,5.11,5.19,5.93,1,144.03,10.33,9,1026.14,27.99,7.46,NULL,NULL);
INSERT INTO `samples` VALUES (994,27,'2020-09-01',3,'08:33:00',NULL,162,51,27.3,33.7,5.52,84.2,8.01,4.02,4.47,4.94,1,127.97,7.32,5.95,663.54,43.6,2.72,NULL,'tide was very high during sampling. (note about original comment: low tide was at 9:03 AM that day.  Could this comment have been referring to surf being high?)');
INSERT INTO `samples` VALUES (995,28,'2020-09-01',4,'08:50:00',NULL,162,51,27.1,33.9,6.42,97.8,8.08,8.39,8.42,8,1,202.71,10.21,6.64,404.4,57.01,8.37,NULL,NULL);
INSERT INTO `samples` VALUES (996,29,'2020-09-01',5,'09:04:00',NULL,162,51,27.3,31.2,NULL,NULL,7.97,12.2,14.8,12.5,1,779.38,54.14,52.24,3154.06,560.86,171.68,NULL,'took 4th reading of 12.2: 2nd DO reading was the same');
INSERT INTO `samples` VALUES (997,44,'2020-09-02',1,'07:55:00',NULL,162,51,26.6,34.9,6.31,95.7,8.08,0.75,0.82,0.7,1,132.03,8.65,4.81,182.15,31.67,3.26,NULL,NULL);
INSERT INTO `samples` VALUES (998,45,'2020-09-02',2,'08:13:00',NULL,162,51,26.4,35.1,6.42,97.4,8.09,0.48,0.5,0.46,1,132.1,9.6,4.01,129.35,14.31,26.29,NULL,NULL);
INSERT INTO `samples` VALUES (999,46,'2020-09-02',3,'08:29:00',NULL,162,51,26.4,34.3,6.38,96.4,8.06,0.64,0.81,0.63,1,230.5,7.49,4.69,269.76,154.04,3.39,NULL,'took 4th turb reading and used .81');
INSERT INTO `samples` VALUES (1000,33,'2020-09-02',4,'08:55:00',NULL,162,51,26.5,34.6,6.31,95.9,8.09,0.53,0.53,0.64,1,151.24,6.77,4.66,339.62,67.41,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (1001,36,'2020-09-02',5,'09:17:00',NULL,162,51,26.5,34.2,7.56,114.2,8.05,1.87,2.69,2.22,1,99.89,9.64,8.82,663.95,18,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (1002,37,'2020-09-02',6,'09:37:00',NULL,162,51,26.8,34.5,6.69,101.6,8.11,0.55,0.49,0.75,1,108.37,12.04,9.17,485.92,18.89,3.75,NULL,'took 4th turb reading and used .75');
INSERT INTO `samples` VALUES (1003,50,'2020-09-03',1,'07:55:00',NULL,162,51,25.6,34.4,6.21,92.4,8.07,1.02,1.05,1.01,1,167.25,11.27,7.93,538.52,58.17,8.45,NULL,NULL);
INSERT INTO `samples` VALUES (1004,51,'2020-09-03',2,'08:15:00',NULL,162,51,26.1,33.3,6.89,102.6,8.04,1.17,1.34,1.35,1,223.51,9.27,6.32,802.18,157.77,7.35,NULL,NULL);
INSERT INTO `samples` VALUES (1005,38,'2020-09-03',3,'08:33:00',NULL,162,51,26.4,34.3,6.42,96.8,8.01,3.5,3.31,3.43,1,135.72,9.56,6.75,543.4,73.32,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (1006,39,'2020-09-03',4,'08:54:00',NULL,162,51,26.5,35.1,6.49,98.4,8.09,0.76,0.87,0.94,1,71.08,7.8,4.21,74.65,2.38,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (1007,41,'2020-09-03',5,'09:10:00',NULL,162,51,26.7,34.5,6.36,96.8,8.08,0.56,0.83,1.15,1,199.63,10.29,5.61,386.83,131.47,3.88,NULL,'read button on turbidity meter #2 needs replaced');
INSERT INTO `samples` VALUES (1008,43,'2020-09-22',1,'07:56:00',NULL,162,52,26.8,34.6,6.01,91.2,8.1,3.91,3.26,2.9,1,131.79,7.75,5.09,446.41,29.8,4.65,NULL,NULL);
INSERT INTO `samples` VALUES (1009,26,'2020-09-22',2,'08:13:00',NULL,162,52,25.4,33.5,6.2,92.8,8,21.1,22.9,22.5,1,142.64,10.07,7.76,840.22,14.8,15.27,NULL,NULL);
INSERT INTO `samples` VALUES (1010,27,'2020-09-22',3,'08:30:00',NULL,162,52,26.5,33.6,6.61,99.2,8.11,9.54,9.24,10.1,1,156.36,8.43,7.08,721.56,46.44,4.82,NULL,NULL);
INSERT INTO `samples` VALUES (1011,28,'2020-09-22',4,'08:49:00',NULL,162,52,26.7,34.3,6.79,102.9,8.12,18.5,17.2,17.2,1,149.62,8.8,4.91,395.36,57.35,6.67,NULL,NULL);
INSERT INTO `samples` VALUES (1012,29,'2020-09-22',5,'09:04:00',NULL,162,52,27.5,34.4,6.38,97.5,8.1,3.51,4.11,3.49,1,230.7,16.76,12.82,650.85,120.54,26.75,NULL,'bait bucket floating 10\' from shore');
INSERT INTO `samples` VALUES (1013,44,'2020-09-23',1,'07:56:00',NULL,162,52,27,35.2,6.71,102.1,8.13,1.38,1.61,1.52,1,105.96,6.19,2.91,81.64,11.44,3.4,NULL,'volunteers forgot to record pre-sampling blank value');
INSERT INTO `samples` VALUES (1014,45,'2020-09-23',2,'08:12:00',NULL,162,52,27.3,35.2,6.61,101.2,8.12,0.8,0.92,0.89,1,96.02,6.59,3.17,54.41,8.49,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (1015,46,'2020-09-23',3,'08:17:00',NULL,162,52,27.2,35,6.72,102.5,8.11,1.54,1.55,1.33,1,120.08,6.66,3.8,120.62,25.89,6.25,NULL,NULL);
INSERT INTO `samples` VALUES (1016,33,'2020-09-23',4,'08:47:00',NULL,162,52,27.4,35,6.7,102.8,8.15,0.85,0.92,1.03,1,97.73,7.19,3.73,142.3,12.78,1.72,NULL,NULL);
INSERT INTO `samples` VALUES (1017,36,'2020-09-23',5,'09:06:00',NULL,162,52,27.2,34.9,7.06,107.7,8.07,0.57,0.74,0.69,1,102.96,7.16,4.73,337.78,7.79,6.08,NULL,NULL);
INSERT INTO `samples` VALUES (1018,37,'2020-09-23',6,'09:23:00',NULL,162,52,27.5,35.1,6.59,101.4,8.08,1.26,1.36,1.39,1,106.05,9.37,6.45,94.75,12.86,10.86,NULL,NULL);
INSERT INTO `samples` VALUES (1019,50,'2020-09-24',1,'07:45:00',NULL,162,52,26,34.2,6.41,95.5,8.05,1.59,1.43,1.31,1,169.62,12.93,9.16,616.18,82.52,12.29,NULL,'Wailuku and Kihei rain night before; windy');
INSERT INTO `samples` VALUES (1020,51,'2020-09-24',2,'08:10:00',NULL,162,52,26.3,33.5,6.87,102.5,8.03,3.46,3.18,3.24,1,240.67,10.63,6.93,667.97,161.22,8.32,NULL,'Tina Windberger observe/refresher training; windy');
INSERT INTO `samples` VALUES (1021,38,'2020-09-24',3,'08:27:00',NULL,162,52,26.7,34.7,6.71,101.4,8.1,2.8,2.99,2.8,1,114.62,9.38,5.08,312.01,39.09,2.34,NULL,'windy');
INSERT INTO `samples` VALUES (1022,39,'2020-09-24',4,'08:48:00',NULL,162,52,26.8,35.2,6.81,103.3,8.14,1.42,1.26,1.37,1,103.2,8.61,4.21,42.53,5.76,2.34,NULL,'SCUBA diver in water nearby');
INSERT INTO `samples` VALUES (1023,41,'2020-09-24',5,'09:10:00',NULL,162,52,27.8,34.9,6.72,103.5,8.11,4.1,3.12,5.45,1,139.87,8.74,4.27,238.46,61.73,4.59,NULL,'susoended material in sample');
INSERT INTO `samples` VALUES (1024,43,'2020-10-13',1,'07:50:00',NULL,162,53,27.2,33.4,5.82,88.5,8.1,2.36,2.69,3.01,1,190.47,8.48,6.62,972.82,103.32,4.24,NULL,NULL);
INSERT INTO `samples` VALUES (1025,26,'2020-10-13',2,'08:07:00',NULL,162,53,25.9,31.9,6.18,91.2,8.05,14.4,15.7,15.7,1,112.61,12.8,11.69,1112.05,38.56,3.52,NULL,NULL);
INSERT INTO `samples` VALUES (1026,27,'2020-10-13',3,'08:25:00',NULL,162,53,27.2,34,5.33,81.3,8.07,4.43,4.51,5.1,1,141,7.38,5.31,569.66,48.73,7.06,NULL,NULL);
INSERT INTO `samples` VALUES (1027,28,'2020-10-13',4,'08:45:00',NULL,162,53,26.9,34.1,6.29,95.5,8.1,7.13,7.43,8.14,1,126.98,7.78,5.97,449.35,51.4,4.36,NULL,NULL);
INSERT INTO `samples` VALUES (1028,29,'2020-10-13',5,'09:02:00',NULL,162,53,27.8,32,6.18,94,8.08,4.38,5.59,5.98,1,590.93,28.33,25.84,2697.28,520.1,3.99,NULL,'dog in water');
INSERT INTO `samples` VALUES (1029,44,'2020-10-14',1,'08:00:00',NULL,162,53,27,35,6.65,101.8,8.12,1.41,1.47,1.42,1,135.61,9.09,5.24,220.21,33.63,5.04,NULL,'second reading');
INSERT INTO `samples` VALUES (1030,45,'2020-10-14',2,'08:21:00',NULL,162,53,27.5,35.2,6.68,103,8.13,0.52,0.82,0.54,1,95.97,7.44,3.86,117.07,11.5,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (1031,46,'2020-10-14',3,'08:37:00',NULL,162,53,27.4,34.6,6.55,100.5,8.09,1.54,1.92,1.65,1,146.77,8.59,4.77,223.38,91.44,3.44,NULL,NULL);
INSERT INTO `samples` VALUES (1032,33,'2020-10-14',4,'08:59:00',NULL,162,53,27.6,34.3,6.49,99.7,8.11,0.78,0.84,0.9,1,154.49,8.69,4.25,361.32,111.19,6.36,NULL,'second reading');
INSERT INTO `samples` VALUES (1033,36,'2020-10-14',5,'09:18:00',NULL,162,53,27.6,34.8,7.58,116.9,8.14,1.07,1.06,1.18,1,87.81,10.2,6.3,356.31,10.6,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (1034,37,'2020-10-14',6,'09:38:00',NULL,162,53,27.6,34.6,6.81,105.4,8.11,1.26,1.28,1.29,1,82.2,10.81,7.58,457.34,15.6,5.21,NULL,NULL);
INSERT INTO `samples` VALUES (1035,50,'2020-10-15',1,'07:50:00',NULL,162,53,26.9,34.4,6.3,95.9,8.11,1.82,1.8,1.88,1,119.36,12.94,7.83,482.09,57.92,7.98,NULL,'Tested blank 4 times; wiped with cloth, ~0.12 lowest reading');
INSERT INTO `samples` VALUES (1036,51,'2020-10-15',2,'08:10:00',NULL,162,53,27.1,33.1,7,106.1,8.05,1.63,1.78,1.52,1,245.91,12.96,9.09,818.62,207.72,5.56,NULL,'low tide - rocky entry - consider safer entry 30 ft to the left');
INSERT INTO `samples` VALUES (1037,38,'2020-10-15',3,'08:28:00',NULL,162,53,27,34.4,6.85,104.7,8.1,4.31,4.31,4.2,1,105.43,11.13,5.4,328.04,38.84,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (1038,39,'2020-10-15',4,'08:52:00',NULL,162,53,27.5,34.9,6.74,104,8.14,1.35,1.1,1.22,1,68.84,8.16,3.45,114.62,3.92,1.28,NULL,'weather: sunny, dry, calm, surf 1\'');
INSERT INTO `samples` VALUES (1039,41,'2020-10-15',5,'09:12:00',NULL,162,53,28,34.4,6.54,101.3,8.09,2.06,3.08,2.6,1,221.22,11.5,6.7,565.16,176.45,1,NULL,'3.08 2nd reading discarded');
INSERT INTO `samples` VALUES (1040,43,'2020-11-03',1,'07:47:00',NULL,162,54,27,34.9,5.82,88.7,8.11,1.88,2.63,2.34,1,131.05,10.06,6.78,384.98,23.9,2.47,NULL,NULL);
INSERT INTO `samples` VALUES (1041,26,'2020-11-03',2,'08:07:00',NULL,162,54,26.4,33.1,5.96,89.1,8.04,21.6,24.2,21.1,1,122.61,11.8,10.75,1492.11,37.06,0.93,NULL,NULL);
INSERT INTO `samples` VALUES (1042,27,'2020-11-03',3,'08:18:00',NULL,162,54,27.4,34.3,5.19,90.2,8.12,3.6,3.32,3.46,1,126.41,9.91,6.47,511.77,31.18,2.38,NULL,NULL);
INSERT INTO `samples` VALUES (1043,28,'2020-11-03',4,'08:36:00',NULL,162,54,27.5,34.4,5.98,91.6,8.08,2.85,3.29,3.4,1,135.71,8.74,5.38,331.32,17.29,4.54,NULL,NULL);
INSERT INTO `samples` VALUES (1044,29,'2020-11-03',5,'08:52:00',NULL,162,54,27.2,34,5.79,88.1,8.09,2.76,2.79,3.99,1,307.28,18.16,16.22,1196.01,189.8,41.91,NULL,NULL);
INSERT INTO `samples` VALUES (1045,44,'2020-11-04',1,'07:54:00',NULL,162,54,27.1,35.1,6.54,99.9,8.12,0.74,0.92,0.92,1,100.77,8.4,5.12,128.43,8.89,0.49,NULL,'HD40D(2) having trouble turning on. Turned on, checked batteries and then it worked.');
INSERT INTO `samples` VALUES (1046,45,'2020-11-04',2,'08:14:00',NULL,162,54,27.3,35.2,6.45,98.9,8.11,0.65,0.6,0.79,1,123.86,9.11,4.16,78.77,8.29,6.82,NULL,NULL);
INSERT INTO `samples` VALUES (1047,46,'2020-11-04',3,'08:28:00',NULL,162,54,27.2,35.1,6.53,99.9,8.13,0.93,0.92,0.9,1,98.28,8.15,4.24,110.35,11.55,0.61,NULL,NULL);
INSERT INTO `samples` VALUES (1048,33,'2020-11-04',4,'08:50:00',NULL,162,54,27.2,35.2,6.33,96.9,8.13,0.49,0.52,0.4,1,103.48,9.07,4.77,80.83,8.22,1.35,NULL,NULL);
INSERT INTO `samples` VALUES (1049,36,'2020-11-04',5,'09:12:00',NULL,162,54,26.9,35,6.74,102.4,8.03,1.17,1.05,1.19,1,102.69,7.54,5.05,147.23,7.37,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (1050,37,'2020-11-04',6,'09:30:00',NULL,162,54,27.2,34.8,6.37,97.5,8.06,1.51,1.46,1.7,1,96.1,9.35,7.38,249.4,17.36,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (1051,50,'2020-11-05',1,'07:51:00',NULL,162,54,26.7,34.7,6.02,91.1,8.11,1.01,1.15,1.07,1,138.11,12.03,7.81,398.46,51.46,5.64,NULL,'sunny, clear, no wind');
INSERT INTO `samples` VALUES (1052,51,'2020-11-05',2,'08:09:00',NULL,162,54,26.8,34.6,6.53,99.1,8.05,9.06,8.55,9.27,1,150.18,9.41,6.93,298.94,62.48,4.45,NULL,'high tide (1.5\' S. swell); new entry site ~25 yards east of steps, near tallest palm tree');
INSERT INTO `samples` VALUES (1053,38,'2020-11-05',3,'08:26:00',NULL,162,54,27,34.7,6.48,98.7,8.1,12.1,11.4,12.1,1,159.85,10.27,7.36,401.77,59.71,4.08,NULL,'crazy flies; smaller swell');
INSERT INTO `samples` VALUES (1054,39,'2020-11-05',4,'08:46:00',NULL,162,54,27.1,35.1,6.55,100.1,8.14,1.86,1.51,1.38,1,92.56,8.46,3.52,164.02,1.8,0.28,NULL,'flat');
INSERT INTO `samples` VALUES (1055,41,'2020-11-05',5,'09:00:00',NULL,162,54,27.7,35,6.39,98.7,8.13,2.9,3.98,3.41,1,139.5,8.65,4.5,245.12,46.87,2.64,NULL,'small swell; 4.50 (4th turbidity reading) - some suspended material in the bottle');
INSERT INTO `samples` VALUES (1056,43,'2020-11-17',1,'07:58:00',NULL,162,55,25.7,35.4,6.22,92.8,8.11,1.79,2.2,2.13,1,125.42,10.23,6.69,430.5,37.09,3.81,NULL,NULL);
INSERT INTO `samples` VALUES (1057,26,'2020-11-17',2,'08:12:00',NULL,162,55,24.6,33.1,6.49,94.1,8.02,23,23.8,23.7,1,135.26,14.71,12.73,1513.96,47.35,2.95,NULL,'nasty water lots of debris');
INSERT INTO `samples` VALUES (1058,27,'2020-11-17',3,'08:33:00',NULL,162,55,25.6,34.4,6.38,94.6,8.1,2.99,2.92,2.94,1,129.25,10.17,7.72,608.28,37.98,2.69,NULL,NULL);
INSERT INTO `samples` VALUES (1059,28,'2020-11-17',4,'08:48:00',NULL,162,55,26.3,35,6.56,98.8,8.13,4.04,4.32,4.72,1,125.67,9.37,5.94,278.38,42.96,3.23,NULL,'4 spearfisherman stirring up water');
INSERT INTO `samples` VALUES (1060,29,'2020-11-17',5,'09:07:00',NULL,162,55,26.5,34.4,6.26,94.2,8.11,2.34,3.16,3.03,1,279.28,18.79,15.86,1185.49,162.62,21.31,NULL,NULL);
INSERT INTO `samples` VALUES (1061,44,'2020-11-18',1,'07:55:00',NULL,162,55,26,35.5,6.63,99.7,8.11,0.89,0.92,0.96,1,101.59,8.12,3.95,119.96,11.89,0.51,NULL,'volunteers forgot to do presampling turbidity');
INSERT INTO `samples` VALUES (1062,45,'2020-11-18',2,'08:14:00',NULL,162,55,26.2,35.5,6.51,98.2,8.12,0.51,0.58,0.56,1,106.28,9.06,4.1,108.79,10.03,3.6,NULL,NULL);
INSERT INTO `samples` VALUES (1063,46,'2020-11-18',3,'08:43:00',NULL,162,55,26.3,35.5,6.54,98.9,8.13,0.78,0.84,0.87,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'in other bottle marked with green tape (to clarify, volunteers used turbidity bottle for butrients, we discarded and saved money)');
INSERT INTO `samples` VALUES (1064,33,'2020-11-18',4,'09:17:00',NULL,162,55,26.2,35.4,6.43,97.2,8.13,0.58,0.65,0.59,1,120.51,10.28,4.84,120.67,15.61,1.88,NULL,'one tour boat leaving shore; mist');
INSERT INTO `samples` VALUES (1065,36,'2020-11-18',5,'09:27:00',NULL,162,55,26.1,35.2,6.12,92.2,8,0.81,0.89,0.86,1,103.8,11.51,7.29,203.24,6.85,5.45,NULL,NULL);
INSERT INTO `samples` VALUES (1066,37,'2020-11-18',6,'09:50:00',NULL,162,55,26.3,35.3,6.5,98.3,8.1,1.37,1.43,1.6,1,107.69,12.57,7.7,187.47,17.09,6.56,NULL,NULL);
INSERT INTO `samples` VALUES (1067,50,'2020-11-19',1,'07:45:00',NULL,162,55,25.1,34.7,6.14,90.5,8.1,0.7,0.73,0.81,1,187.31,13.79,9.79,572.47,86.91,14.86,NULL,'pH probe - no KCl in bottle after 1st beach');
INSERT INTO `samples` VALUES (1068,51,'2020-11-19',2,'08:05:00',NULL,162,55,24.9,34.8,6.67,98.3,8.07,7.55,8,7.72,1,147.21,8.47,4.5,259.59,61.06,2.63,NULL,'unusually high tide');
INSERT INTO `samples` VALUES (1069,38,'2020-11-19',3,'08:30:00',NULL,162,55,25.4,34.9,6.33,94.2,8.11,1.9,2.12,2.16,1,134.82,8.72,5.35,336.18,54.57,3.58,NULL,'HQ40d meter - shut off numerous times when pressing read button');
INSERT INTO `samples` VALUES (1070,39,'2020-11-19',4,'08:56:00',NULL,162,55,25.6,35.5,6.64,99.4,8.11,0.89,0.87,0.8,1,88.11,7.81,3.48,92.27,7.62,0.85,NULL,NULL);
INSERT INTO `samples` VALUES (1071,41,'2020-11-19',5,'09:17:00',NULL,162,55,26.6,35.2,6.55,99.5,8.11,0.49,0.63,0.53,1,143.35,8.38,3.6,253.01,63.82,3.15,NULL,NULL);
INSERT INTO `samples` VALUES (1072,43,'2020-12-08',1,'07:50:00',NULL,162,56,25.5,34.3,5.76,85.9,8.11,1.13,1.16,1.31,1,162.39,9.45,6.75,611.1,64.5,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (1073,26,'2020-12-08',2,'08:15:00',NULL,162,56,24.3,32.3,5.95,88.1,8.08,18.4,17.6,18.2,1,250.41,12.24,11.86,1785.49,111.12,12.9,NULL,NULL);
INSERT INTO `samples` VALUES (1074,27,'2020-12-08',3,'08:36:00',NULL,162,56,25.5,34.4,5.98,88.6,8.1,5.5,5.19,5.84,1,152.04,9.72,7.23,499.24,43.6,6.02,NULL,NULL);
INSERT INTO `samples` VALUES (1075,28,'2020-12-08',4,'08:54:00',NULL,162,56,25.5,34.5,6.3,93.2,8.09,5.47,5.33,5.88,1,160.04,9.6,7.05,433.09,58.43,4.27,NULL,NULL);
INSERT INTO `samples` VALUES (1076,29,'2020-12-08',5,'09:10:00',NULL,162,56,26.2,34.5,5.94,89.3,8.12,3.61,3.28,3.18,1,247.28,16.01,14.36,887.44,139.31,32.92,NULL,NULL);
INSERT INTO `samples` VALUES (1077,44,'2020-12-09',1,'07:57:00',NULL,162,56,25.4,35.2,6.72,99.9,8.15,2.12,1.37,0.99,1,110.18,9.41,5.48,193.87,32.18,1.05,NULL,'Retested pre-sample after cleaning vial');
INSERT INTO `samples` VALUES (1078,45,'2020-12-09',2,'08:20:00',NULL,162,56,25.9,35.4,6.62,99.1,8.14,0.55,0.73,0.58,1,97.82,6.96,3.42,73.2,10.88,1.68,NULL,'Note: batteries failed in HD40-replaced batteries');
INSERT INTO `samples` VALUES (1079,46,'2020-12-09',3,'08:37:00',NULL,162,56,25.8,35.3,6.71,99.9,8.12,1.63,1.63,1.11,1,167.31,7.92,4.88,224.22,87.2,1.58,NULL,NULL);
INSERT INTO `samples` VALUES (1080,33,'2020-12-09',4,'09:02:00',NULL,162,56,25.7,35.2,6.55,97.8,8.15,1.22,0.82,1.02,1,120.21,9.15,5.9,187.39,40.09,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (1081,36,'2020-12-09',5,'09:23:00',NULL,162,56,25.9,35.2,7.12,106.5,8.14,1.53,1.87,1.71,1,108.2,7.73,4.64,128.63,4.37,2.15,NULL,NULL);
INSERT INTO `samples` VALUES (1082,37,'2020-12-09',6,'09:41:00',NULL,162,56,26.1,35.2,6.61,99.4,8.14,1.21,1.06,0.94,1,94.11,8.99,6.87,111.11,10.69,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (1083,50,'2020-12-10',1,'08:00:00',NULL,162,56,25.5,35.1,5.93,88,8.12,0.97,0.98,0.98,1,119.23,11.12,7.21,354.42,44.17,5.63,NULL,'HQ40d meter worked well today - pushing lightly on the read button is possibly helpful');
INSERT INTO `samples` VALUES (1084,51,'2020-12-10',2,'08:15:00',NULL,162,56,25.4,33.8,6.52,96,8.03,4.79,4.24,4.38,1,298.07,11.78,8.3,475.64,205.46,4.29,NULL,NULL);
INSERT INTO `samples` VALUES (1085,38,'2020-12-10',3,'08:30:00',NULL,162,56,25.7,34.4,6.4,95,8.11,8.72,7.78,7.5,1,370.29,10.62,7.5,542.34,124.76,9.4,NULL,NULL);
INSERT INTO `samples` VALUES (1086,39,'2020-12-10',4,'08:51:00',NULL,162,56,25.8,35.4,6.68,99.9,8.16,0.67,0.61,0.55,1,84.48,7.59,3.32,106.68,3.75,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (1087,41,'2020-12-10',5,'09:12:00',NULL,162,56,26.6,34.8,6.37,96.4,8.12,1.52,1.5,1.67,1,223.8,7.75,4.88,357.59,148.98,13.07,NULL,NULL);
INSERT INTO `samples` VALUES (1088,43,'2021-01-05',1,'07:58:00',NULL,162,57,25.5,34.9,5.57,82.3,8.08,0.63,0.71,0.81,1,135.66,10.29,6.92,431.96,41.02,2.47,NULL,NULL);
INSERT INTO `samples` VALUES (1089,26,'2021-01-05',2,'08:12:00',NULL,162,57,24.1,32.9,6.3,89.7,8.12,12.2,12.7,12.8,1,136.7,11,9.58,1434.01,34.7,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (1090,27,'2021-01-05',3,'08:30:00',NULL,162,57,24.8,34.3,6.22,90.3,8.1,3.2,3.37,3.18,1,119.32,13.04,8.45,352.47,27.45,2.68,NULL,NULL);
INSERT INTO `samples` VALUES (1091,28,'2021-01-05',4,'08:45:00',NULL,162,57,25,34.8,6.42,94,8.14,6.81,6.94,6.63,1,148.22,9.22,6.97,317.57,44.5,5.93,NULL,NULL);
INSERT INTO `samples` VALUES (1092,29,'2021-01-05',5,'08:57:00',NULL,162,57,25.8,34.6,6.01,89,8.11,0.94,0.69,0.93,1,291.15,19.14,16.26,1223.34,147.27,46.9,NULL,NULL);
INSERT INTO `samples` VALUES (1093,44,'2021-01-06',1,'08:03:00',NULL,162,57,24.8,35.5,6.7,98.1,8.1,0.81,0.87,0.99,1,122.24,7.84,5.03,121.26,16.02,1.94,NULL,NULL);
INSERT INTO `samples` VALUES (1094,45,'2021-01-06',2,'08:23:00',NULL,162,57,25.1,35.5,6.64,97.7,8.11,1.49,1.32,1.32,1,116.54,11.64,7.51,207.01,26.87,0.68,NULL,NULL);
INSERT INTO `samples` VALUES (1095,46,'2021-01-06',3,'08:39:00',NULL,162,57,25.5,35.5,6.69,99.2,8.12,1.08,0.86,0.97,1,116.14,9.25,5.79,115.47,25.6,4.19,NULL,NULL);
INSERT INTO `samples` VALUES (1096,33,'2021-01-06',4,'09:05:00',NULL,162,57,25.3,35.4,6.8,100.5,8.15,1.42,1.41,1.35,1,112.83,8.52,5.74,160.42,19.98,1.01,NULL,NULL);
INSERT INTO `samples` VALUES (1097,36,'2021-01-06',5,'09:27:00',NULL,162,57,25.2,35.4,6.9,101.7,8.05,0.69,0.65,0.72,1,103.07,9.95,6.75,147.11,15.33,4.22,NULL,NULL);
INSERT INTO `samples` VALUES (1098,37,'2021-01-06',6,'09:50:00',NULL,162,57,25.3,35.6,6.35,94,8.09,1.19,1.14,1.09,1,100.06,8.92,6.08,214.24,8.9,4.75,NULL,NULL);
INSERT INTO `samples` VALUES (1099,50,'2021-01-07',1,'07:55:00',NULL,162,57,24.2,34.9,6.19,89.6,8.11,1.27,1.09,1.37,1,133.03,10,6.91,394.68,52.85,6.93,NULL,'HQ40d meter cotinues to shut off when read button pushed too hard');
INSERT INTO `samples` VALUES (1100,51,'2021-01-07',2,'08:20:00',NULL,162,57,24.1,33.6,6.75,96.8,8.03,1.76,1.85,1.88,1,298.22,7.7,5.6,612.74,197.31,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (1101,38,'2021-01-07',3,'08:40:00',NULL,162,57,24.6,34.6,6.5,94.7,8.11,2.59,2.29,2.46,1,179.23,8.94,5.96,456.74,92.26,3.32,NULL,NULL);
INSERT INTO `samples` VALUES (1102,39,'2021-01-07',4,'09:05:00',NULL,162,57,24.7,35.6,6.8,99.9,8.18,0.47,0.44,0.44,1,78.21,7.5,3.58,46.77,1.7,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (1103,41,'2021-01-07',5,'09:20:00',NULL,162,57,25.6,34.8,6.66,98.7,8.14,0.64,0.64,0.67,1,234.04,7.53,4.21,311.09,154.29,0.91,NULL,NULL);
INSERT INTO `samples` VALUES (1104,43,'2021-01-26',1,'07:57:00',NULL,162,58,24.5,33.7,6.74,97.8,8.16,6.3,6.2,6.51,1,217.78,13.69,11.5,1132.05,105.17,3.33,NULL,NULL);
INSERT INTO `samples` VALUES (1105,26,'2021-01-26',2,'08:19:00',NULL,162,58,24.3,33.5,6.45,92.9,8.06,12,11.5,12.5,1,134.24,11.16,9.11,763.98,45.43,3.36,NULL,'brown water out to ~1/2 mi');
INSERT INTO `samples` VALUES (1106,27,'2021-01-26',3,'08:36:00',NULL,162,58,24.5,34.1,6.09,88.5,8.06,6.56,6.62,6.76,1,145.37,9.82,6.94,500.35,64.08,3.35,NULL,NULL);
INSERT INTO `samples` VALUES (1107,28,'2021-01-26',4,'08:55:00',NULL,162,58,24.7,34.9,6.61,96.8,8.1,6.82,6.14,5.7,1,141.84,11.21,8.64,312.73,51.61,5.1,NULL,NULL);
INSERT INTO `samples` VALUES (1108,29,'2021-01-27',1,'08:31:00',NULL,162,58,25.1,33.3,6.41,93.6,8.09,3.3,3.48,2.78,1,477.58,30.98,29.58,2123.45,335.82,23.88,NULL,'KCP #4 turbidity reading 3.30');
INSERT INTO `samples` VALUES (1109,33,'2021-01-27',2,'09:07:00',NULL,162,58,25.2,35.3,6.66,98.6,8.16,1.25,0.8,0.91,1,113.47,10.81,4.94,163.68,11.86,2.25,NULL,'All sites calm, no wind');
INSERT INTO `samples` VALUES (1110,36,'2021-01-27',3,'09:31:00',NULL,162,58,25.1,35.3,7.24,106.6,8.12,2.14,1.27,1.11,1,115.26,9.71,7.16,420.1,19.6,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (1111,37,'2021-01-27',4,'09:55:00',NULL,162,58,25.2,34.6,6.65,98.2,8.1,2.09,2,1.89,1,110.34,9.05,5.4,258.26,10.92,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (1112,50,'2021-01-28',1,'07:50:00',NULL,162,58,23.3,34.8,6.38,99.1,8.13,2.28,2.31,2.24,1,174.88,11.36,8.06,471.89,74.81,6.92,NULL,'Very windy; HQ40d #2 would not turn on unless batteries removed and reset');
INSERT INTO `samples` VALUES (1113,51,'2021-01-28',2,'08:10:00',NULL,162,58,23,34.4,6.94,98.3,8.08,7.76,8.51,7.95,1,184.7,9.74,6.46,564.8,99.54,3.32,NULL,'Stream flowing (culvert connecting to Kanaio Stream had water in it and water pooled on beach)');
INSERT INTO `samples` VALUES (1114,38,'2021-01-28',3,'08:30:00',NULL,162,58,23.3,35,6.86,98.4,8.13,4.44,5.63,5.8,1,122.32,8.38,5.56,297.8,41.08,1.69,NULL,'TIara Stark observing/refreshing');
INSERT INTO `samples` VALUES (1115,39,'2021-01-28',4,'08:50:00',NULL,162,58,23.9,35.4,6.89,99.6,8.18,0.99,1.19,1.02,1,96.51,8.43,4.44,105,3.64,1.62,NULL,'Man peeing in ocean');
INSERT INTO `samples` VALUES (1116,41,'2021-01-28',5,'09:10:00',NULL,162,58,25.3,34.8,6.55,96.6,8.15,1.36,1.84,1.84,1,211.96,7.74,4.82,337.08,137.12,0.92,NULL,NULL);
INSERT INTO `samples` VALUES (1117,43,'2021-02-16',1,'07:55:00',NULL,162,59,24.9,35.2,6.48,95.5,8.09,4.25,4.2,4.68,1,114.41,9.79,7.85,333.83,28.61,1.21,NULL,'high surf today');
INSERT INTO `samples` VALUES (1118,26,'2021-02-16',2,'08:20:00',NULL,162,59,25.3,35.4,6.5,96.3,8.09,15.4,16.2,16.9,1,119.72,9.46,7.19,150.28,11.14,2.46,NULL,'\'');
INSERT INTO `samples` VALUES (1119,27,'2021-02-16',3,'08:39:00',NULL,162,59,25.2,34.9,6.5,96.2,8.09,5.85,5.97,6.17,1,156.66,10.96,8.21,412.46,64.28,1.28,NULL,'\'');
INSERT INTO `samples` VALUES (1120,28,'2021-02-16',4,'09:07:00',NULL,162,59,25.3,35.5,6.62,98.4,8.12,11.4,11.3,11.5,1,108.28,9.02,6.71,122.96,13.52,2.7,NULL,'\'');
INSERT INTO `samples` VALUES (1121,29,'2021-02-17',1,'08:41:00',NULL,162,59,24.5,34.1,6.78,98,8.1,3.98,3.54,4.11,1,252.37,17.86,16.33,700.61,156.51,2.89,NULL,'50+ people in the water');
INSERT INTO `samples` VALUES (1122,33,'2021-02-17',2,'09:21:00',NULL,162,59,24.9,35.3,6.82,100.2,8.15,2.33,2.05,2.5,1,120.27,10.87,7.12,189.82,33.18,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (1123,36,'2021-02-17',3,'09:47:00',NULL,162,59,24.9,35.3,6.91,101.2,8.08,1,1.01,1.1,1,99.79,7.78,4.9,147.95,7.44,0.72,NULL,NULL);
INSERT INTO `samples` VALUES (1124,37,'2021-02-17',4,'10:06:00',NULL,162,59,25,35,6.67,98,8.09,2.12,2.88,2.64,1,109.8,12.3,11.08,601.87,29.69,3.79,NULL,NULL);
INSERT INTO `samples` VALUES (1125,50,'2021-02-18',1,'07:50:00',NULL,162,59,24.2,34.9,6.37,92.3,8.13,2.15,2.07,2.08,1,155.75,12.01,8.89,421.42,51.85,6.4,NULL,'HQ40d meter would not operate unless apply pressure to the battery case with one hand while pressing read button with the other hand. Otherwise if just pressing read button, it would shut off whih it did about 10 times.');
INSERT INTO `samples` VALUES (1126,51,'2021-02-18',2,'08:10:00',NULL,162,59,24.4,34.4,6.89,99.9,8.07,4.82,4.94,5.1,1,259.99,9.45,6.64,606.49,156.24,4.11,NULL,NULL);
INSERT INTO `samples` VALUES (1127,38,'2021-02-18',3,'08:30:00',NULL,162,59,24.6,34.5,6.62,96.4,8.1,5.92,5.89,5.77,1,218.2,9.28,7.25,575.98,122.84,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (1128,39,'2021-02-18',4,'08:50:00',NULL,162,59,24.1,35.5,6.88,100.4,8.16,1.53,1.6,1.51,1,103.71,8.16,4.9,84.32,3.19,1.28,NULL,NULL);
INSERT INTO `samples` VALUES (1129,41,'2021-02-18',5,'09:10:00',NULL,162,59,25.1,35,6.75,99.3,8.15,1.49,1.56,1.56,1,253.9,9.61,6,330.59,178.05,0.34,NULL,NULL);
INSERT INTO `samples` VALUES (1130,43,'2021-03-09',1,'08:02:00',NULL,162,60,24,33.5,6.33,90.7,8.16,1.06,1.33,1.38,1,196.4,9.98,7.87,902.99,107.94,8.76,NULL,NULL);
INSERT INTO `samples` VALUES (1131,26,'2021-03-09',2,'08:23:00',NULL,162,60,23.7,32.3,5.93,83.9,8.08,12.3,10.7,9.12,1,93.84,9.81,8.98,845.03,12.37,2.17,NULL,NULL);
INSERT INTO `samples` VALUES (1132,27,'2021-03-09',3,'08:40:00',NULL,162,60,24.4,33.8,5.83,84.2,8.13,6.1,5.81,4.87,1,111.88,7.96,5.12,401.05,26.21,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (1133,28,'2021-03-09',4,'08:57:00',NULL,162,60,24.5,34.4,6.47,94.1,8.13,7.03,6.12,6.53,1,112.25,9.62,6.82,344.34,25.95,3.44,NULL,NULL);
INSERT INTO `samples` VALUES (1134,29,'2021-03-10',1,'08:40:00',NULL,162,60,25,31.9,6.06,87.3,8.06,2,1.78,1.72,1,629.49,40.76,39.83,2591.43,536.07,35.7,NULL,'Dog in water; deficated on beach');
INSERT INTO `samples` VALUES (1135,33,'2021-03-10',2,'09:10:00',NULL,162,60,24.3,35.3,6.67,97.4,8.16,0.53,0.55,0.52,1,117.33,9.28,6.12,247.26,28.79,0.63,NULL,'could not get post-sampling blank below 0.21 NTU. tried cleaning with oil, etc. - Tiara');
INSERT INTO `samples` VALUES (1136,36,'2021-03-10',3,'09:30:00',NULL,162,60,25,34.9,7.62,111.6,8.17,1.41,1.48,1.2,1,127.84,11.08,9.24,541.28,18.12,12.24,NULL,'#2 % reading:111.4% O2');
INSERT INTO `samples` VALUES (1137,37,'2021-03-10',4,'09:48:00',NULL,162,60,25.4,35,6.75,99.6,8.14,1.2,1.52,1.43,1,122.34,13.27,10.89,392.86,21.55,10.52,NULL,'low tide');
INSERT INTO `samples` VALUES (1138,50,'2021-03-11',1,'07:45:00',NULL,162,60,24.4,34.9,6.25,90.9,8.14,0.54,0.5,0.45,1,146.2,11.37,8.62,450.4,52.36,18.15,NULL,'*can\'t get blank below 0.22. About 20 attempts to pre-sample the blank, wiped with silicon cloth numerous times.');
INSERT INTO `samples` VALUES (1139,51,'2021-03-11',2,'08:05:00',NULL,162,60,24.5,33.8,6.84,98.8,8.07,2.19,2.56,2.77,1,222.99,10.8,6.09,580.68,119.33,4.43,NULL,'HQ40d #2 meter twice didn\'t take readings until pushing read button a second time.');
INSERT INTO `samples` VALUES (1140,38,'2021-03-11',3,'08:20:00',NULL,162,60,24.7,34.4,6.64,96.7,8.2,3.15,3.39,3.14,1,206.76,11.68,7.99,495.06,120.72,4.76,NULL,'Handed out one of the information cards.');
INSERT INTO `samples` VALUES (1141,39,'2021-03-11',4,'08:40:00',NULL,162,60,24.7,35.5,6.82,99.8,8.17,0.61,0.54,0.59,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1142,41,'2021-03-11',5,'09:00:00',NULL,162,60,25.3,34.7,6.67,98.2,8.14,0.67,0.67,0.62,1,252.28,9.41,5.54,369.01,184.38,0.64,NULL,NULL);
INSERT INTO `samples` VALUES (1143,43,'2021-03-30',1,'07:57:00',NULL,162,61,24.7,33.5,6.6,95.9,8.12,10.5,11.4,11,1,269.54,18.99,15.39,1596.09,97.23,2.28,NULL,'took 4th reading on turbidity');
INSERT INTO `samples` VALUES (1144,26,'2021-03-30',2,'08:15:00',NULL,162,61,24.7,34.4,6.58,96.3,8.07,19.7,19.5,19.3,1,93.52,16.68,12.95,376.04,11.05,3.15,NULL,NULL);
INSERT INTO `samples` VALUES (1145,27,'2021-03-30',3,'08:32:00',NULL,162,61,25.3,33.8,6.29,94.1,8.07,19,22.6,23.7,1,134.8,16.13,12.19,629.97,53.01,4.87,NULL,NULL);
INSERT INTO `samples` VALUES (1146,28,'2021-03-30',4,'08:50:00',NULL,162,61,25.1,35.2,6.67,98.7,8.14,4.63,4.41,4.6,1,90.25,9.77,6.91,124.85,12.07,3.98,NULL,NULL);
INSERT INTO `samples` VALUES (1147,29,'2021-03-31',1,'08:37:00',NULL,162,61,25.4,32.4,6.72,98.3,8.1,5.26,4.23,4.28,1,503.51,32.71,30.18,2222.47,396,7.95,NULL,NULL);
INSERT INTO `samples` VALUES (1148,33,'2021-03-31',2,'09:08:00',NULL,162,61,25.4,34.3,6.86,101.1,8.13,2.78,2.78,2.68,1,209.92,12.66,8.69,442.29,130.05,3.49,NULL,'3.4 ft waves at Maluaka Beach');
INSERT INTO `samples` VALUES (1149,36,'2021-03-31',3,'09:33:00',NULL,162,61,25.1,35.3,7.24,106.8,8.13,1.56,1.44,1.36,1,83.05,8.47,4.98,185.54,8.1,3.53,NULL,'3 ft waves at Ahihi Cove');
INSERT INTO `samples` VALUES (1150,37,'2021-03-31',4,'09:52:00',NULL,162,61,25.4,34.5,6.84,101.3,8.11,2.14,2.18,1.99,1,120.17,18.38,14.84,918.94,42.05,3.52,NULL,'Jeep informed Tiara they noticed high oxygen reading but it was too late to re-take it.');
INSERT INTO `samples` VALUES (1151,50,'2021-04-01',1,'07:45:00',NULL,162,61,24.1,34.7,6.43,93.1,8.13,1.66,1.73,1.62,1,136.69,9.73,8.56,506.85,59.4,7.64,NULL,'High waves all week.');
INSERT INTO `samples` VALUES (1152,51,'2021-04-01',2,'08:00:00',NULL,162,61,24.2,34.1,7.15,103.4,8.09,2.12,2.26,2.53,1,195.66,14.67,9.49,648.87,120.29,4.36,NULL,'Per team lead instruction, taking a 4th turbidity reading only if a 50% difference exists. Not sure if this is the standard we want or not.');
INSERT INTO `samples` VALUES (1153,38,'2021-04-01',3,'08:20:00',NULL,162,61,24.4,35,6.89,100.7,8.13,5.17,6.66,6.35,1,101.91,9.53,6.4,262.35,33.61,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (1154,39,'2021-04-01',4,'08:40:00',NULL,162,61,24.5,35.1,6.87,100.5,8.17,1.74,1.77,1.97,1,69.4,9.56,4.48,83.55,0.91,2.48,NULL,NULL);
INSERT INTO `samples` VALUES (1155,41,'2021-04-01',5,'09:00:00',NULL,162,61,25.2,34.6,6.84,101.1,8.14,9.11,11.1,10.9,1,202.98,10.04,7.42,446.51,135.43,1.31,NULL,NULL);
INSERT INTO `samples` VALUES (1156,43,'2021-04-20',1,'07:55:00',NULL,162,62,25.5,33.7,5.8,85.7,8.11,2.36,2.53,2.48,1,206.36,8.96,8.36,1135.39,109.79,3.39,NULL,'took 4th reading on turbidity');
INSERT INTO `samples` VALUES (1157,26,'2021-04-20',2,'08:15:00',NULL,162,62,26,32.8,5.64,83.6,8.11,7.89,6.81,7.42,1,132.6,9.26,8.58,842.91,15.41,4.02,NULL,NULL);
INSERT INTO `samples` VALUES (1158,27,'2021-04-20',3,'08:35:00',NULL,162,62,26.2,31.8,6.12,90.6,8.12,4.49,4.71,4.31,1,428.03,14.49,13.76,2667.78,296.7,5.55,NULL,NULL);
INSERT INTO `samples` VALUES (1159,28,'2021-04-20',4,'08:50:00',NULL,162,62,26.2,34.8,6.25,93.9,8.13,5.23,5.96,5.65,1,136.58,9.08,7.41,402.96,20.27,6.51,NULL,'plus 1 dog in the water');
INSERT INTO `samples` VALUES (1160,29,'2021-04-21',1,'08:35:00',NULL,162,62,25.8,31.2,6.23,91,8.07,2.14,2.17,2.09,1,840.48,39.48,34.62,4457.02,703.49,24.51,NULL,NULL);
INSERT INTO `samples` VALUES (1161,33,'2021-04-21',2,'09:19:00',NULL,162,62,25.4,35,6.34,94,8.13,0.51,0.53,0.62,1,284.81,7.58,6.27,539.19,175.37,7.21,NULL,NULL);
INSERT INTO `samples` VALUES (1162,36,'2021-04-21',3,'09:38:00',NULL,162,62,25.1,34.7,6.88,101.1,8.08,1.24,0.82,0.87,1,116.14,9.91,7.34,548.68,12.25,1.09,NULL,NULL);
INSERT INTO `samples` VALUES (1163,37,'2021-04-21',4,'10:00:00',NULL,162,62,25.1,34.6,6.48,95.3,8.1,0.67,0.8,0.69,1,120.32,10.51,8.81,343.56,17.99,8.29,NULL,NULL);
INSERT INTO `samples` VALUES (1164,50,'2021-04-22',1,'07:45:00',NULL,162,62,24.8,35.1,6.25,91.7,8.14,1.17,0.99,1.1,1,141.83,15.87,8.42,451.36,50.05,7.88,NULL,'Wooden box missing from kit (for nutrient extraction)');
INSERT INTO `samples` VALUES (1165,51,'2021-04-22',2,'08:05:00',NULL,162,62,25.1,31.8,7.76,112.2,8.08,3.04,3.02,2.55,1,448.91,10.94,9.6,1635.86,311.32,9.01,NULL,'Nutrient bottle mislabeled as MMC; DO% reading out of normal range, took 2 readings with same results, same correct for DO reading.');
INSERT INTO `samples` VALUES (1166,38,'2021-04-22',3,'08:20:00',NULL,162,62,25.1,34.2,6.7,98.4,8.11,7.58,7.59,7.5,1,227.92,9.87,8.93,825.6,135.98,3.1,NULL,NULL);
INSERT INTO `samples` VALUES (1167,39,'2021-04-22',4,'08:45:00',NULL,162,62,25.1,35.7,6.7,99.1,8.16,0.75,0.69,0.66,1,106.26,11.78,5.8,60.62,5.23,3.7,NULL,NULL);
INSERT INTO `samples` VALUES (1168,41,'2021-04-22',5,'09:05:00',NULL,162,62,25.9,34.3,6.6,98.2,8.12,3.04,2.81,3.64,1,363.63,12.65,7.27,523.07,276.2,0.93,NULL,NULL);
INSERT INTO `samples` VALUES (1169,43,'2021-05-11',1,'08:01:00',NULL,162,63,25.3,33.1,6.07,88.9,8.09,1.79,2.49,2.12,1,221.39,9.84,5.47,1188.1,127.02,2.97,NULL,NULL);
INSERT INTO `samples` VALUES (1170,26,'2021-05-11',2,'08:13:00',NULL,162,63,25.1,31.1,6.2,89.6,8.06,8.69,9.31,9.33,1,128.42,13.16,10.22,1295.1,25.16,4.13,NULL,NULL);
INSERT INTO `samples` VALUES (1171,27,'2021-05-11',3,'08:30:00',NULL,162,63,25.9,32.9,5.97,88.1,8.09,4.24,3.95,4.41,1,220.2,11.41,6.98,851.68,99.79,13.06,NULL,NULL);
INSERT INTO `samples` VALUES (1172,28,'2021-05-11',4,'08:47:00',NULL,162,63,25.9,34.9,6.61,98.8,8.11,6.52,6.16,6.68,1,129.07,11.17,5.08,319.63,22.93,5.01,NULL,NULL);
INSERT INTO `samples` VALUES (1173,29,'2021-05-12',1,'08:37:00',NULL,162,63,25.9,32.1,6.62,98,8.08,2.55,2.49,2.46,1,520.6,23.45,21.12,2229.12,399.01,5.68,NULL,'1 dog in water');
INSERT INTO `samples` VALUES (1174,33,'2021-05-12',2,'09:10:00',NULL,162,63,25.8,34.2,6.64,98.7,8.09,1.24,1.17,1.16,1,263.73,9.7,4.44,470.4,173.42,0.94,NULL,NULL);
INSERT INTO `samples` VALUES (1175,36,'2021-05-12',3,'09:34:00',NULL,162,63,25.5,35.1,7.51,111.6,8.12,1.36,1.55,1.28,1,105.39,8.42,5.26,333.22,11.95,4.35,NULL,NULL);
INSERT INTO `samples` VALUES (1176,37,'2021-05-12',4,'09:49:00',NULL,162,63,25.2,34.8,6.7,99,8.05,1.53,1.44,1.7,1,130.36,13.92,10.99,704.07,30.46,7.51,NULL,NULL);
INSERT INTO `samples` VALUES (1177,50,'2021-05-13',1,'07:45:00',NULL,162,63,24.1,34.7,6.37,99.2,8.08,2.83,2.81,3.19,1,158.36,15.15,8.45,514.14,64.08,8.2,NULL,NULL);
INSERT INTO `samples` VALUES (1178,51,'2021-05-13',2,'08:05:00',NULL,162,63,24.3,32.6,7.95,113.9,8.1,4.46,4.63,4.41,1,338.37,9.83,5.15,1271.81,235.99,7.85,NULL,'DO and DO% out of normal range. Took 2 readings with the same result. We had similar DO readings last sampling session.');
INSERT INTO `samples` VALUES (1179,38,'2021-05-13',3,'08:20:00',NULL,162,63,24.4,34.5,7,101.7,8.1,2.47,2.31,2.29,1,162.94,10.04,4.56,485.06,81.17,3.95,NULL,NULL);
INSERT INTO `samples` VALUES (1180,39,'2021-05-13',4,'08:45:00',NULL,162,63,24.6,35.5,6.93,101.5,8.15,0.78,0.79,0.94,1,92.98,10.76,2.8,57.87,1.9,5.03,NULL,NULL);
INSERT INTO `samples` VALUES (1181,41,'2021-05-13',5,'09:05:00',NULL,162,63,25.4,34.7,6.73,99.7,8.11,0.85,0.93,1.21,1,301.08,11.97,5.04,571.32,221.99,2.65,NULL,NULL);
INSERT INTO `samples` VALUES (1182,43,'2021-06-01',1,'08:01:00',NULL,162,64,26.2,33.4,5.99,89.1,8.09,3.74,3.54,4.1,1,208.84,12.09,11.38,1300.2,124.5,4.36,NULL,'Turbidity verification- low post 3rd read 6.51 cleaned with kimwipe after black cloth (Mitch verified- tried 3 times)');
INSERT INTO `samples` VALUES (1183,26,'2021-06-01',2,'08:21:00',NULL,162,64,27,33.2,5.41,81.5,8.03,6.64,6.25,6.69,1,96.66,9.26,7.72,860.94,15.9,3.26,NULL,NULL);
INSERT INTO `samples` VALUES (1184,27,'2021-06-01',3,'08:34:00',NULL,162,64,27.5,32.2,5.97,90.1,8.08,3.57,4.07,3.69,1,358.46,14.8,13.38,1622.39,262,7.63,NULL,NULL);
INSERT INTO `samples` VALUES (1185,28,'2021-06-01',4,'09:02:00',NULL,162,64,26.8,34.8,6.62,100.4,8.16,3.46,4.25,4.22,1,132.89,11.57,7.45,402.31,55.84,2.19,NULL,NULL);
INSERT INTO `samples` VALUES (1186,29,'2021-06-02',1,'08:36:00',NULL,162,64,27.2,32.4,6.55,98.6,8.06,2.29,2.18,2.64,1,530.05,37.62,31.11,2759.89,430.7,14.81,NULL,'Dog in water; retested blank 2x (0.22 NTU, 0.24 NTU); 2 men and 2 dogs live at Cove Park on South end');
INSERT INTO `samples` VALUES (1187,33,'2021-06-02',2,'09:22:00',NULL,162,64,26.4,35.6,6.53,98.5,8.14,0.92,0.93,0.89,1,109.08,8.9,5.49,164.19,23.82,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (1188,36,'2021-06-02',3,'09:47:00',NULL,162,64,26.2,35.6,7.09,106.7,8.12,0.8,1.04,1.02,1,88.12,8.38,4.14,130.8,6.9,2.94,NULL,NULL);
INSERT INTO `samples` VALUES (1189,37,'2021-06-02',4,'10:06:00',NULL,162,64,26.5,35.3,6.62,100.2,8.08,0.9,0.84,0.68,1,94.26,11.4,7.34,180.67,12.1,10.87,NULL,'second salinity tested - 35.2');
INSERT INTO `samples` VALUES (1190,50,'2021-06-03',1,'07:45:00',NULL,162,64,25.2,34.7,6.25,92.4,8.14,3.09,3.67,3.74,1,120.12,10.97,7.15,506.31,45.72,7.67,NULL,NULL);
INSERT INTO `samples` VALUES (1191,51,'2021-06-03',2,'08:05:00',NULL,162,64,25.1,33.8,7.29,107.1,8.13,1.81,1.31,1.85,1,238.07,11.2,7.91,874.61,175.3,4.97,NULL,NULL);
INSERT INTO `samples` VALUES (1192,38,'2021-06-03',3,'08:20:00',NULL,162,64,25.6,35.5,6.66,99.6,8.16,NULL,NULL,NULL,1,93.1,10.22,5.03,159.24,23.68,1.78,NULL,'Turbidity meter not functioning; At NHP turbidity meter turned on and then froze. Would not read, would not turn off. Opened battery case and jostled the batteries, removed batteries and replaced them. Meter would not turn back on. Put new batteries in the meter. Meter would still not turn on. Noticed corrosion on a couple of the battry contact points.');
INSERT INTO `samples` VALUES (1193,39,'2021-06-03',4,'08:45:00',NULL,162,64,25.6,35.6,6.65,99.4,8.16,NULL,NULL,NULL,1,81.98,9.37,4,83.51,5.26,2.5,NULL,NULL);
INSERT INTO `samples` VALUES (1194,41,'2021-06-03',5,'09:05:00',NULL,162,64,26.4,34.9,6.56,98.7,8.12,NULL,NULL,NULL,1,202.74,12.27,6.97,410.87,125.94,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (1195,43,'2021-06-22',1,'08:01:00',NULL,162,65,26.1,33,5.87,87,8.11,2.04,3.19,2.41,1,232.83,10.82,8.35,1309.01,145.31,4.88,NULL,'Blank high but tried all procedures. 8:07-NKN 8:09.');
INSERT INTO `samples` VALUES (1196,26,'2021-06-22',2,'08:20:00',NULL,162,65,25.4,31.9,5.63,82.2,8.02,2.73,2.98,3.25,1,137.49,7.91,7.13,1026.67,15.25,5.19,NULL,'8:28-8:30 KWP');
INSERT INTO `samples` VALUES (1197,27,'2021-06-22',3,'08:36:00',NULL,162,65,26.3,31.9,6.19,91.5,8.08,2.96,3.36,2.99,1,237.85,8.65,6.98,1059.15,105.67,6.47,NULL,'8:44-8:47 - KKS');
INSERT INTO `samples` VALUES (1198,28,'2021-06-22',4,'08:57:00',NULL,162,65,26.4,34.9,6.81,102.5,8.14,4.57,5.62,4.9,1,141.09,8.08,5.41,364.96,45.99,4.21,NULL,'9:03  9:06 - KKP');
INSERT INTO `samples` VALUES (1199,29,'2021-06-23',1,'08:48:00',NULL,162,65,27.2,31.9,6.91,104.1,8.09,4.3,4.59,3.39,1,701.09,22.95,22.79,2815.39,554.98,8.52,NULL,'Dog near sampling area; 1 camper is man who lives here; 2 dogs total. Took 5th reading and was 3.94.');
INSERT INTO `samples` VALUES (1200,33,'2021-06-23',2,'09:31:00',NULL,162,65,27,34.8,6.51,99.2,8.12,1.17,1.14,1.28,1,237.56,10.11,6.69,417.95,135.91,7.03,NULL,'Swimmers nearby.');
INSERT INTO `samples` VALUES (1201,36,'2021-06-23',3,'10:00:00',NULL,162,65,26.5,35.4,7.39,111.9,8.13,1.86,1.65,1.52,1,111.61,10.03,6.54,325.19,11.29,3.24,NULL,'Snorkelers getting out near sampling site; small waves.');
INSERT INTO `samples` VALUES (1202,37,'2021-06-23',4,'10:21:00',NULL,162,65,27.4,35.2,6.62,101.8,8.1,2.37,2.32,2.19,1,130.41,12.88,10.3,441.92,22.64,10.5,NULL,'Some swell (per usual); low tide.');
INSERT INTO `samples` VALUES (1203,50,'2021-06-24',1,'07:57:00',NULL,162,65,25.6,35.3,6.21,92.5,8.1,1.8,1.51,1.56,1,154.98,16.26,8.57,450.73,61.61,9.07,NULL,'Tourist boat nearby sampling area (very close).');
INSERT INTO `samples` VALUES (1204,51,'2021-06-24',2,'08:18:00',NULL,162,65,25.6,32.4,7.5,109.9,8.16,5.19,5.37,5.57,1,457.22,12.14,9.67,1509.4,321.87,9.21,NULL,'Some stagnant water in channelized ditch. Super low tide (King tides); churning water near sample area with rocks - may account for high O2.');
INSERT INTO `samples` VALUES (1205,38,'2021-06-24',3,'08:37:00',NULL,162,65,25.8,34.8,6.85,102.3,8.11,9.1,9.71,9.01,1,201.09,9.68,6.43,545.13,101.81,6.16,NULL,'Waves and body boarders and low tide. Higher NTU than normal. Red mud under sand may be getting stirred up.');
INSERT INTO `samples` VALUES (1206,39,'2021-06-24',4,'09:00:00',NULL,162,65,25.9,35.6,6.74,101.2,8.15,1.24,1.17,1.28,1,111.62,10.09,3.84,53.44,5.33,4.1,NULL,'Low tide, waves, 11 fishing poles.');
INSERT INTO `samples` VALUES (1207,41,'2021-06-24',5,'09:16:00',NULL,162,65,26.8,34.8,6.7,101.6,8.06,12.7,14.5,11.8,1,266.14,9.82,6.86,583.92,172.94,1.62,NULL,'Waves, brown water.');
INSERT INTO `samples` VALUES (1208,43,'2021-07-13',1,'07:55:00',NULL,162,66,26.7,33.7,5.99,84.3,8.09,0.94,0.9,0.91,1,177.4,9.78,8.37,1066.43,107.97,4.37,NULL,NULL);
INSERT INTO `samples` VALUES (1209,26,'2021-07-13',2,'08:13:00',NULL,162,66,26.6,32.7,5.77,84.9,8.07,6.94,8.06,8.44,1,114.06,13,10.99,1083.74,18.78,7.33,NULL,NULL);
INSERT INTO `samples` VALUES (1210,27,'2021-07-13',3,'08:32:00',NULL,162,66,26.6,34.6,5.2,78.5,8.09,5.21,6.65,6.5,1,109.33,7.33,5.47,501.8,27.82,5.07,NULL,NULL);
INSERT INTO `samples` VALUES (1211,28,'2021-07-13',4,'08:50:00',NULL,162,66,27,35.2,6.67,100.9,8.15,4.93,5.13,5.37,1,99.36,8.67,4.89,272.49,25.69,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (1212,29,'2021-07-14',1,'09:00:00',NULL,162,66,27.1,33.3,6.18,93.5,8.1,3.65,4.18,4.64,1,584.67,29.79,25.5,2550.6,433.86,8.68,NULL,'Volunteers forgot to read the blank vial. They dumped it on accident before reading it.');
INSERT INTO `samples` VALUES (1213,33,'2021-07-14',2,'09:34:00',NULL,162,66,27.2,35.3,6.38,98,8.13,0.47,0.72,0.68,1,155.8,11.38,6.68,340.25,79.09,2.71,NULL,NULL);
INSERT INTO `samples` VALUES (1214,36,'2021-07-14',3,'09:46:00',NULL,162,66,26.8,34.9,7.4,112.3,8.1,0.79,0.91,0.83,1,117.42,15.56,10.53,359.39,11.55,6.21,NULL,NULL);
INSERT INTO `samples` VALUES (1215,37,'2021-07-14',4,'10:15:00',NULL,162,66,26.5,35,6.34,96,8.1,1.21,1.11,1.26,1,135.18,14.87,14.02,621.13,34.34,18.59,NULL,NULL);
INSERT INTO `samples` VALUES (1216,50,'2021-07-15',1,'07:46:00',NULL,162,66,25.7,35,5.98,89.3,8.1,1.62,2.14,1.8,1,153.29,13.54,11.09,537.14,69.37,14.71,NULL,'HQ40d #2 meter very troubling today; had to reset almost for every reading; shuts off when read button presses; also doesnt always turn back on easily - reset batteries.');
INSERT INTO `samples` VALUES (1217,51,'2021-07-15',2,'08:05:00',NULL,162,66,25.7,33,6.96,103,8.03,1.78,1.82,1.53,1,252.13,11.43,7.87,867.72,172.13,9.2,NULL,'KCl found empty **I (Tiara) know for sure there was KCl solution because I cleaned the KCl bottle out and refilled it. Someone must have spilled it at NMH. - Tiara');
INSERT INTO `samples` VALUES (1218,38,'2021-07-15',3,'08:25:00',NULL,162,66,26.1,35.2,6.61,99.4,8.13,5.36,5.64,5.71,1,105.47,10.06,6.36,339.43,33.96,4.88,NULL,'Salinity a bit high; no rain here in a long time');
INSERT INTO `samples` VALUES (1219,39,'2021-07-15',4,'08:50:00',NULL,162,66,26.3,35.6,6.56,99.2,8.16,0.59,0.83,0.61,1,79.24,9.58,4.5,59.21,5.95,3.97,NULL,'Salinity a bit high; no rain here in a long time');
INSERT INTO `samples` VALUES (1220,41,'2021-07-15',5,'09:10:00',NULL,162,66,26.7,35.3,6.45,98.1,8.14,3.35,4.08,3.69,1,166.61,12.38,6.87,286.86,72.94,5.11,NULL,'Salinity a bit high; no rain here in a long time; Canoe races');
INSERT INTO `samples` VALUES (1221,43,'2021-08-03',1,'08:00:00',NULL,162,67,26.5,33.1,6.79,83.7,8.09,1.82,3.05,2.67,1,228.85,9.57,7.51,1248.8,122.4,2.65,NULL,'1 8:05 - 8:08');
INSERT INTO `samples` VALUES (1222,26,'2021-08-03',2,'08:24:00',NULL,162,67,25.9,32.8,5.61,83,8.06,4.4,5.41,5.49,1,123.89,10.64,9.28,974.13,12.46,5.54,NULL,'2 8:28 - 8:35');
INSERT INTO `samples` VALUES (1223,27,'2021-08-03',3,'08:44:00',NULL,162,67,26.9,34,5.54,83.8,8.1,3.75,3.95,4.23,1,173.91,9.15,5.99,764,59.94,4.41,NULL,'3 8:49 - 8:52');
INSERT INTO `samples` VALUES (1224,28,'2021-08-03',4,'09:02:00',NULL,162,67,26.7,34.8,6.41,97.2,8.12,5.5,5.97,6.47,1,155.53,10.83,6.29,413.38,46.02,6.13,NULL,'4 9:06 - 9:10');
INSERT INTO `samples` VALUES (1225,29,'2021-08-04',1,'08:45:00',NULL,162,67,26.5,32.7,6.19,92.3,8.07,4.17,4.18,4.08,1,705.22,33.07,27.36,2923.06,534.06,9.47,NULL,'campers with 2 dogs live at beach; surf school people off in distance 30+');
INSERT INTO `samples` VALUES (1226,33,'2021-08-04',2,'09:20:00',NULL,162,67,27.1,35.4,6.38,97.7,8.14,0.94,0.94,1,1,126.43,10.18,5.1,265.81,37.6,1.55,NULL,'Nancy Sharpe accidentally signed in the \'team lead\' box');
INSERT INTO `samples` VALUES (1227,36,'2021-08-04',3,'09:35:00',NULL,162,67,26.7,35.4,7.52,114.5,8.17,1.24,1.68,2.03,1,136.21,10.11,7.1,230.85,9.28,5.1,NULL,NULL);
INSERT INTO `samples` VALUES (1228,37,'2021-08-04',4,'09:45:00',NULL,162,67,26.7,35.5,6.61,100.7,8.14,0.71,0.71,0.71,1,101.61,11.4,7.88,169.38,9.37,7.86,NULL,NULL);
INSERT INTO `samples` VALUES (1229,50,'2021-08-05',1,'07:45:00',NULL,162,67,25.1,34.5,5.98,88.1,8.08,1.17,1.11,1.14,1,189.5,15.63,9.66,655.55,85.45,12.87,NULL,'All beaches - much less windy today compared to recent weeks, waves generally smaller.');
INSERT INTO `samples` VALUES (1230,51,'2021-08-05',2,'08:05:00',NULL,162,67,24.8,32,7.74,112,8.1,3.09,2.62,2.96,1,416.6,8.77,5.26,1284.67,299.8,6,NULL,'DO and DO% high?');
INSERT INTO `samples` VALUES (1231,38,'2021-08-05',3,'08:20:00',NULL,162,67,25.3,34.2,6.65,98.1,8.08,8.86,8.94,8.88,1,213.29,11.15,7.75,658.96,120.54,5.65,NULL,'green-rimmed nutrient filter used - water pushed through filter much easier. Is that okay?');
INSERT INTO `samples` VALUES (1232,39,'2021-08-05',4,'08:45:00',NULL,162,67,26.4,35.6,6.6,99.7,8.15,0.76,0.92,0.99,1,77.4,11.96,6.55,65.91,2.54,2.51,NULL,NULL);
INSERT INTO `samples` VALUES (1233,41,'2021-08-05',5,'09:05:00',NULL,162,67,27.2,34.7,6.46,98.6,8.11,1.21,1.46,1.41,1,233.42,9.98,5.54,578.51,150.13,2.08,NULL,'2 eagle rays near shore');
INSERT INTO `samples` VALUES (1234,43,'2021-08-24',1,'07:52:00',NULL,162,68,26.2,33.1,6.11,91.1,8.12,4.48,4.44,4.37,1,227.3,13.95,10.44,1460.51,138.22,4.04,NULL,'7:56 - 7:58   time the probes were in');
INSERT INTO `samples` VALUES (1235,26,'2021-08-24',2,'08:08:00',NULL,162,68,26,33.6,6.18,92,8.05,19.5,21.9,21.9,1,140.06,12.42,9.08,727.79,23.37,4.78,NULL,'8:13 - 8:17         \'');
INSERT INTO `samples` VALUES (1236,27,'2021-08-24',3,'08:25:00',NULL,162,68,26.8,33.8,5.62,84.9,8.04,13.2,12.9,13.6,1,161.3,12.2,5.48,568.89,75.36,3.98,NULL,'8:31 - 8:39         \'');
INSERT INTO `samples` VALUES (1237,28,'2021-08-24',4,'08:42:00',NULL,162,68,26.5,34.8,6.26,94.7,8.1,7.43,7.22,7.27,1,171.44,10.93,6.1,430.45,72.3,4.14,NULL,'8:47 - 8:49          \'');
INSERT INTO `samples` VALUES (1238,29,'2021-08-25',1,'08:35:00',NULL,162,68,26.9,34.2,6.03,91.4,8.12,0.84,0.87,0.95,1,433.7,18.73,14.61,1806.48,231.46,14.43,NULL,'homeless encampment at shoreline looks permanent');
INSERT INTO `samples` VALUES (1239,33,'2021-08-25',2,'09:12:00',NULL,162,68,27.2,35.5,6.3,96.8,8.15,1.42,1.51,1.47,1,116.33,9.33,4.84,150.23,36.72,0.91,NULL,'Beach wedding group');
INSERT INTO `samples` VALUES (1240,36,'2021-08-25',3,'09:28:00',NULL,162,68,26.8,35.6,6.67,101.8,8.1,1.11,1.08,1.27,1,112.27,9.77,3.42,157.13,4.67,3.36,NULL,NULL);
INSERT INTO `samples` VALUES (1241,37,'2021-08-25',4,'09:45:00',NULL,162,68,26.8,35.2,6.56,100,8.12,1.1,1.38,1.24,1,104.22,12.45,8.62,572.88,27.04,5.13,NULL,NULL);
INSERT INTO `samples` VALUES (1242,50,'2021-08-26',1,'07:45:00',NULL,162,68,25.1,34.9,5.81,86,8.1,0.83,0.84,0.83,1,134.16,11.09,8.18,545.96,72.75,9.86,NULL,'KCL - Accidentlly dumped out KCL at first beach.');
INSERT INTO `samples` VALUES (1243,51,'2021-08-26',2,'08:05:00',NULL,162,68,25.3,34.4,6.88,101.7,8.09,1.98,2.07,2.01,1,159.12,28.66,17.39,586.54,88.78,6.04,NULL,'HQ40d2 meter shuts off frequently when pressing read button.');
INSERT INTO `samples` VALUES (1244,38,'2021-08-26',3,'08:25:00',NULL,162,68,25.6,34.9,6.4,95.5,8.11,2.38,2.32,2.44,1,138.45,9.32,4.72,454.82,62.93,4.42,NULL,NULL);
INSERT INTO `samples` VALUES (1245,39,'2021-08-26',4,'08:45:00',NULL,162,68,25.8,35.7,6.46,97.1,8.17,0.61,0.64,0.66,1,87.79,8.7,3.22,87.55,1.47,3.85,NULL,'Almost unable to extract nutrient sampling at NKP. Suspected something wrong with green filter. Tried a spare green filter, no help. Took maybe 10 minutes to extract - something wrong.');
INSERT INTO `samples` VALUES (1246,41,'2021-08-26',5,'09:10:00',NULL,162,68,26.9,35.2,6.42,98.1,8.13,1.86,2.14,1.79,1,153.87,9.38,4.83,374.21,93.27,1.55,NULL,'Although there was recent rain - no stream flow.');
INSERT INTO `samples` VALUES (1247,43,'2021-09-14',1,'08:01:00',NULL,162,69,25.4,33.5,6.23,91.9,8.12,2.36,2.49,2.72,1,221.02,27.8,14.77,2096.42,121.74,3.87,NULL,NULL);
INSERT INTO `samples` VALUES (1248,26,'2021-09-14',2,'08:18:00',NULL,162,69,24.7,33,5.86,85.2,8.05,17.7,18.2,18.6,1,136.98,14.02,8.96,1126.64,42.79,2.41,NULL,'broke a syringe tip');
INSERT INTO `samples` VALUES (1249,27,'2021-09-14',3,'08:37:00',NULL,162,69,25.4,34,5.99,88.8,8.07,16.9,18,18,1,160.13,12.67,9.07,880.4,66.51,3.28,NULL,'triplicate sampling at KKS');
INSERT INTO `samples` VALUES (1250,28,'2021-09-14',4,'09:06:00',NULL,162,69,26.1,35.3,6.33,95.6,8.11,8.38,8.77,9.51,1,108.09,12.4,6.86,279.89,20.38,4.11,NULL,NULL);
INSERT INTO `samples` VALUES (1251,29,'2021-09-15',1,'08:50:00',NULL,162,69,26,32.9,6.37,94.6,8.1,6.56,7.41,8.79,1,488.05,26.29,23.94,2405.42,355,14.77,NULL,'Triplicate sampling at the Cove for UH Maui Lab and SOEST Lab comparison.');
INSERT INTO `samples` VALUES (1252,33,'2021-09-15',2,'09:47:00',NULL,162,69,27.3,35.4,6.29,97.1,8.15,0.91,1.27,0.86,1,113.45,10.27,4.88,306.51,31.28,0.72,NULL,NULL);
INSERT INTO `samples` VALUES (1253,36,'2021-09-15',3,'10:05:00',NULL,162,69,26.8,35.5,NULL,NULL,8.16,1.17,1.24,1.21,1,92.25,9.82,4.66,158.09,2.63,2.68,NULL,NULL);
INSERT INTO `samples` VALUES (1254,37,'2021-09-15',4,'10:25:00',NULL,162,69,26.7,35.6,6.65,101.6,8.15,0.9,0.87,0.95,1,88.27,7.98,4.67,125.11,5.14,5.9,NULL,NULL);
INSERT INTO `samples` VALUES (1255,50,'2021-09-16',1,'07:50:00',NULL,162,69,26.1,35.1,6.01,90.6,8.13,1.6,1.77,1.4,1,138.63,14.34,7.32,519.3,59.16,9.83,NULL,'Water somewhat muddy at NMH Harbor where pipe enters the harbor. Water clear at the mouth of NMH Harbor.');
INSERT INTO `samples` VALUES (1256,51,'2021-09-16',2,'08:10:00',NULL,162,69,26,34.4,6.87,102.9,8.12,3.12,3.24,2.94,1,221.75,12.56,7.56,815.43,147.02,3.63,NULL,NULL);
INSERT INTO `samples` VALUES (1257,38,'2021-09-16',3,'08:25:00',NULL,162,69,26.3,34.8,6.57,99.1,8.09,9.03,8.94,8.79,1,171.59,10.56,6.74,607.27,102.44,2.51,NULL,NULL);
INSERT INTO `samples` VALUES (1258,39,'2021-09-16',4,'08:55:00',NULL,162,69,26.5,35.7,6.59,100.3,8.18,1.03,1.24,1.07,1,79.6,9.23,3.98,71.11,1.48,2.58,NULL,'4 nutrient samples taken at NKP per instruction.');
INSERT INTO `samples` VALUES (1259,41,'2021-09-16',5,'09:35:00',NULL,162,69,27.1,35.2,6.54,100.3,8.15,1.86,1.88,2.1,1,163.67,11.99,5.48,443.94,95.02,0.92,NULL,'All beaches had 1-2\' surf occasionall higher. 2 syringes difficult to push water through - saved one of them.');
INSERT INTO `samples` VALUES (1260,43,'2021-10-05',1,'07:48:00',NULL,162,70,25.5,34.1,5.71,84.5,8.05,1.82,1.92,1.89,1,178.49,11.63,6.13,1446.9,90.37,0.66,NULL,'2 swimmers w/in 15\' of sampling; took 2nd DO 84.2%');
INSERT INTO `samples` VALUES (1261,26,'2021-10-05',2,'08:08:00',NULL,162,70,25,34.3,5.71,83.9,8.05,5.91,4.88,5.7,1,100.16,27.21,12.94,582.88,7.93,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (1262,27,'2021-10-05',3,'08:25:00',NULL,162,70,25.9,33.9,5.22,77.8,8.09,4.87,4.4,4.58,1,125.89,8.8,5.19,886.44,41.31,0.72,NULL,'took 2nd,3rd DO both 78.0%');
INSERT INTO `samples` VALUES (1263,28,'2021-10-05',4,'08:45:00',NULL,162,70,26.2,35.4,6.38,96.3,8.13,7.19,6.76,6.99,1,117.48,8.71,5.49,287.13,23.66,9.66,NULL,NULL);
INSERT INTO `samples` VALUES (1264,29,'2021-10-06',1,'08:55:00',NULL,162,70,26.3,33.2,6.39,95.2,8.09,12.1,12.8,9.63,1,871.74,37.29,36.38,4031.07,678.32,6.76,NULL,'Dog in H2O at collection area. Beach side campsite.');
INSERT INTO `samples` VALUES (1265,33,'2021-10-06',2,'09:30:00',NULL,162,70,26.5,35.6,6.29,95.7,8.14,1.93,2.2,2.96,1,168.59,8.73,4.75,336.66,63.7,2.01,NULL,'short break 3\'');
INSERT INTO `samples` VALUES (1266,36,'2021-10-06',3,'09:50:00',NULL,162,70,26.2,35.7,6.83,103.2,8.12,1.03,1.99,1.63,1,106.48,9.43,5.15,301.07,6.09,5.09,NULL,'Wanted to calibrate Turb. #2 on 10/6/21 because 16 NTU difference between high standard but calibration standards at WM lab.');
INSERT INTO `samples` VALUES (1267,37,'2021-10-06',4,'10:05:00',NULL,162,70,26,35.5,6.51,98.3,8.14,2.27,2.18,1.99,1,119.85,11.99,7.7,497.56,18.34,3.52,NULL,NULL);
INSERT INTO `samples` VALUES (1268,50,'2021-10-07',1,'07:55:00',NULL,162,70,24.6,35.4,6.09,89.3,8.1,1.07,1.2,1.03,1,153.6,11.99,6.46,448.21,62,7.48,NULL,'Re-did medium pre-sampling but same. Boat (~50 peop) sitting right by sampling area. Very windy.');
INSERT INTO `samples` VALUES (1269,51,'2021-10-07',2,'08:15:00',NULL,162,70,24.9,34.7,7.38,108.3,8.13,3.86,3.63,3.44,1,176.09,10.53,5.08,538.94,76.75,3.93,NULL,NULL);
INSERT INTO `samples` VALUES (1270,38,'2021-10-07',3,'08:45:00',NULL,162,70,24.9,35.3,6.73,99.1,8.12,4.37,4.2,3.72,1,153.34,10.45,4.17,396.57,57.17,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (1271,39,'2021-10-07',4,'09:10:00',NULL,162,70,25,35.9,6.72,99.5,8.18,1.43,0.96,1.18,1,86.87,6.57,2.08,63.11,0.86,0.28,NULL,'2 scuba dive flags - assume divers present. Windy! Took 4th turb. reading, was 0.89 NTU.');
INSERT INTO `samples` VALUES (1272,41,'2021-10-07',5,'09:34:00',NULL,162,70,27.3,35.4,6.63,101.9,8.14,3.59,3.05,3.06,1,186.36,8.67,3.68,446.04,105.17,0.64,NULL,NULL);
INSERT INTO `samples` VALUES (1273,43,'2021-10-26',1,'07:52:00',NULL,162,71,25.7,35.4,5.62,84,8.14,1.1,1.19,1.12,1,152.37,8.28,4.71,348.99,29.34,5.07,NULL,'Using pH # 4 because #3 calibration was off. Very calm conditions. 07:58 probes in water 08:05 read.');
INSERT INTO `samples` VALUES (1274,26,'2021-10-26',2,'08:11:00',NULL,162,71,23.9,34.1,5.91,85.2,8.04,12.1,12.4,12.5,1,145.48,10.38,7.17,600.92,17.02,4.47,NULL,'08:17 probes in water 08:21 read.');
INSERT INTO `samples` VALUES (1275,27,'2021-10-26',3,'08:26:00',NULL,162,71,25,34,5.4,79.3,8.11,5.88,6.67,6.88,1,119.25,8.21,4.9,718.17,29.77,2.03,NULL,'08:30 probes in water 08:34 read.');
INSERT INTO `samples` VALUES (1276,28,'2021-10-26',4,'08:42:00',NULL,162,71,24.7,34.5,6.09,89.3,8.16,4.55,4.77,4.48,1,126.32,12.48,6.49,372.87,30.43,3.35,NULL,'08:45 probes in water 08:49 read. Turbidity meter turns off when I press READ button during pre-sampling. Volnuteers said it worked fine in the field. It completely stopped working. Tried changing batteries, checked for corrosion, etc. - no luck.');
INSERT INTO `samples` VALUES (1277,29,'2021-10-27',1,'08:30:00',NULL,162,71,26.3,34.9,6.01,90.4,8.15,2.86,2.34,3.01,1,261.67,16.57,15.56,775.64,147.02,12.1,NULL,'2 dogs swimming.');
INSERT INTO `samples` VALUES (1278,33,'2021-10-27',2,'08:55:00',NULL,162,71,26.7,35.8,6.37,97,8.19,0.68,0.56,0.56,1,104.57,8.71,5.32,585.59,9.57,2.3,NULL,'Calm and clear water at all sites.');
INSERT INTO `samples` VALUES (1279,36,'2021-10-27',3,'09:20:00',NULL,162,71,26.5,35.8,6.71,102,8.17,0.63,0.66,0.71,1,106.87,8.95,3.96,126.88,2.82,3.36,NULL,'Nancy accidentally signed in my \'Team Lead\' place.');
INSERT INTO `samples` VALUES (1280,37,'2021-10-27',4,'09:40:00',NULL,162,71,26.5,35.8,6.38,96.9,8.18,0.78,0.55,0.5,1,108.63,8.32,3.19,58.41,4.22,2.53,NULL,NULL);
INSERT INTO `samples` VALUES (1281,50,'2021-10-28',1,'07:45:00',NULL,162,71,25.4,35.1,5.95,88.2,8.14,0.97,0.88,0.83,1,164.37,12.74,8.94,506.3,68.75,12.33,NULL,NULL);
INSERT INTO `samples` VALUES (1282,51,'2021-10-28',2,'08:10:00',NULL,162,71,25.4,34.4,6.75,100.1,8.06,1.94,2.01,2.07,1,264.75,9.68,7.45,637.12,165.57,5.92,NULL,NULL);
INSERT INTO `samples` VALUES (1283,38,'2021-10-28',3,'08:25:00',NULL,162,71,26,35.7,6.54,98.5,8.16,15,14.3,15.3,1,111.35,9.98,4.85,162.76,17.94,7.06,NULL,'Water churned up and brown due to higher than normal surf.');
INSERT INTO `samples` VALUES (1284,39,'2021-10-28',4,'08:50:00',NULL,162,71,26.2,36,6.52,98.9,8.2,0.68,0.67,0.55,1,92.38,7.57,3.68,51.01,2.01,1.13,NULL,'Sure like those new nutrient filters (green) and the new filter box - much easier to drain the syringe.');
INSERT INTO `samples` VALUES (1285,41,'2021-10-28',5,'09:10:00',NULL,162,71,26.5,35.4,6.48,98.3,8.17,2.24,2.27,2.15,1,154.87,12.44,6.58,338.27,64.54,1.68,NULL,'Water also churned up here, brown mostly due to sand.');
INSERT INTO `samples` VALUES (1286,43,'2021-11-16',1,'08:00:00',NULL,162,72,25.9,33.7,5.88,87.2,8.11,1.72,1.8,2.31,1,165.33,12.21,8.92,1138.55,87.39,4.58,NULL,'4 Kihei Canoe boats up on shore, ~30 people at fishpond standing on sand beach within 100 ft, boats and people. 8:06 probes in H2O, 8:09 start reading.');
INSERT INTO `samples` VALUES (1287,26,'2021-11-16',2,'08:18:00',NULL,162,72,25.4,32.7,5.99,88.1,8.05,12.7,12.2,12.7,1,148.94,11.87,9.26,1005.58,35.65,17.91,NULL,'8:25 in - 8:29 start reading probes');
INSERT INTO `samples` VALUES (1288,27,'2021-11-16',3,'08:39:00',NULL,162,72,26.3,33.5,5.77,86.1,8.06,5,5.15,4.42,1,154.41,11.63,7.72,653.42,59.51,6.53,NULL,'8:41 in - 8:43 read');
INSERT INTO `samples` VALUES (1289,28,'2021-11-16',4,'08:55:00',NULL,162,72,26,34.6,6.49,97.4,8.12,5.3,4.72,4.47,1,137.18,12.22,6.85,352.85,52.22,6.38,NULL,'9:00 in - 9:03 read');
INSERT INTO `samples` VALUES (1290,29,'2021-11-17',1,'08:30:00',NULL,162,72,26.5,32.3,5.99,89.2,8.08,3.19,2.84,2.97,1,561.19,28.74,27.29,2660.38,403.75,19.59,NULL,'2 dogs in H2O. Fish campers at shore = permanent site. 4th reading: 3.19');
INSERT INTO `samples` VALUES (1291,33,'2021-11-17',2,'09:10:00',NULL,162,72,26.7,35.2,6.51,99,8.16,0.63,0.58,0.68,1,210.88,31.58,21.49,289.49,16.18,81.74,NULL,NULL);
INSERT INTO `samples` VALUES (1292,36,'2021-11-17',3,'09:20:00',NULL,162,72,26.8,34.6,7.62,115.6,8.12,2.44,2.86,2.24,1,107.32,11.62,8.54,673.37,16.33,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (1293,37,'2021-11-17',4,'09:42:00',NULL,162,72,26.9,34.4,6.54,99.4,8.09,0.84,0.88,0.81,1,102.86,13.79,11,1596.17,23.21,8.29,NULL,NULL);
INSERT INTO `samples` VALUES (1294,50,'2021-11-18',1,'07:50:00',NULL,162,72,26.2,34.9,6.04,90.8,8.12,0.71,0.73,0.71,1,125.62,10.61,5.63,365.61,41.11,13.2,NULL,'calm winds and very low surf today');
INSERT INTO `samples` VALUES (1295,51,'2021-11-18',2,'08:10:00',NULL,162,72,26.3,34.3,6.77,101.7,8.07,0.92,1.07,0.87,1,190.17,11.41,6.31,507.53,106.05,6.16,NULL,'both meters worked well today');
INSERT INTO `samples` VALUES (1296,38,'2021-11-18',3,'08:30:00',NULL,162,72,26.5,34.6,6.42,97,8.12,3.73,3.62,3.88,1,234.69,14.23,5.9,516.5,92.96,23.61,NULL,NULL);
INSERT INTO `samples` VALUES (1297,39,'2021-11-18',4,'08:50:00',NULL,162,72,26.1,35.4,6.63,99.9,8.17,0.58,0.64,0.65,1,99.88,9.44,4.36,1058.47,2.32,7.78,NULL,'salinity at NKP above 35 which is normal');
INSERT INTO `samples` VALUES (1298,41,'2021-11-18',5,'09:10:00',NULL,162,72,26.7,34.7,6.56,99.5,8.14,1.53,1.55,1.57,1,207.88,11.22,4.36,474.06,145.53,2,NULL,'double canoe just pulled from beach at NKC');
INSERT INTO `samples` VALUES (1299,43,'2021-12-14',1,'08:03:00',NULL,162,73,24.6,32.2,6.26,89.9,8.11,47.7,44.6,45.7,1,272.51,17.01,11.3,1415.44,145.15,16.2,NULL,'low tide; 8:10 probe in - 8:12 probe read');
INSERT INTO `samples` VALUES (1300,26,'2021-12-14',2,'08:22:00',NULL,162,73,24.4,33.3,5.92,85.4,8.03,40.3,41.5,43.6,1,273.08,15.92,14.12,1076.34,114.42,35.19,NULL,'8:24 probe in - 8:27 probe read');
INSERT INTO `samples` VALUES (1301,27,'2021-12-14',3,'08:38:00',NULL,162,73,24.9,30.1,5.67,81,8,6.39,6.7,6.66,1,377.79,30.44,28.02,2581.99,247.03,26.2,NULL,'8:40 probe in - 8:43 probe read');
INSERT INTO `samples` VALUES (1302,28,'2021-12-14',4,'08:51:00',NULL,162,73,24.9,35,NULL,NULL,8.14,4.69,4.79,4.86,1,147.35,11.16,8.84,433.37,59.77,8.07,NULL,'8:50 probe in - 8:54 probe read');
INSERT INTO `samples` VALUES (1303,29,'2021-12-15',1,'08:45:00',NULL,162,73,25.2,33.6,5.58,81.8,8.1,3.94,3.09,4.19,1,397.09,22.37,20.19,1974.8,271.31,16.99,NULL,'When do gel standards expire?');
INSERT INTO `samples` VALUES (1304,33,'2021-12-15',2,'09:19:00',NULL,162,73,24.9,35,6.55,96.3,8.14,1.49,1.85,2.39,1,264.41,9.25,7.82,574.21,162.66,9.22,NULL,NULL);
INSERT INTO `samples` VALUES (1305,36,'2021-12-15',3,'09:40:00',NULL,162,73,25.1,35,7.59,111.9,8.12,1.86,2,1.94,1,118.68,9.32,7.11,499.49,18.55,7.69,NULL,NULL);
INSERT INTO `samples` VALUES (1306,37,'2021-12-15',4,'10:03:00',NULL,162,73,25.6,35,6.5,96.8,8.09,1,1.18,1.18,1,110.35,8.76,5.95,297.35,20.57,6.04,NULL,NULL);
INSERT INTO `samples` VALUES (1307,50,'2021-12-16',1,'07:55:00',NULL,162,73,24.6,35.5,6.12,89.7,8.13,1.32,1.18,1.36,1,128.41,8.05,4.76,335.5,45.3,8.45,NULL,'NMH - salinity a bit high');
INSERT INTO `samples` VALUES (1308,51,'2021-12-16',2,'08:20:00',NULL,162,73,24.3,33.9,6.9,99.7,8.04,4.88,4.79,4.28,1,304.73,8.53,8.32,891.08,214.77,5.01,NULL,'no extra KCl in HQ40d #1 box');
INSERT INTO `samples` VALUES (1309,38,'2021-12-16',3,'08:35:00',NULL,162,73,24.7,35,6.61,97,8.13,4.94,5.09,4.93,1,164.13,8.89,6.64,492.14,84.32,3.54,NULL,'HQ40d #1 meter shut off first 2 times when read was pressed, worked fine after that');
INSERT INTO `samples` VALUES (1310,39,'2021-12-16',4,'08:55:00',NULL,162,73,24.8,36,6.76,99.9,8.21,0.98,0.81,0.9,1,89.12,7.11,1.21,55.48,1.61,2.41,NULL,'NKP - salinity reading high - read twice with same result');
INSERT INTO `samples` VALUES (1311,41,'2021-12-16',5,'09:20:00',NULL,162,73,25.6,34.6,6.55,97.3,8.12,13.6,13,13,1,351.84,10.38,7.59,814.44,251.79,3.47,NULL,'NKC - brown water from beach out to about 50 feet from beach');
INSERT INTO `samples` VALUES (1312,43,'2022-01-04',1,'07:55:00',NULL,162,74,25,35.3,6.51,96.6,8.1,20,22.2,20.6,1,111.52,11.12,8.83,370.49,17.36,6.06,NULL,'Sand embankment too high (erosion?); Daryl (groundskeeper) mentioned cesspool was exposed after storm (sinkhole?). can smell sewage. Park is closed due to this. Curious about nutrient results.');
INSERT INTO `samples` VALUES (1313,26,'2022-01-04',2,'08:20:00',NULL,162,74,24.6,35.2,6.68,98.2,8.08,42.6,41.3,37.5,1,126.21,12.66,10.66,215.77,32.01,4.83,NULL,'Evidence of water runoff on path through trees to sample area; turbidity: particles floating in sample, salinity 35.2 on 2nd reading.');
INSERT INTO `samples` VALUES (1314,27,'2022-01-04',3,'08:40:00',NULL,162,74,24.5,34.7,6.53,95.6,8.08,21.3,21.9,19.9,1,154.17,13.1,12.42,496.23,64.51,5.58,NULL,'Less people than usual at all sites. Brown water everywhere.');
INSERT INTO `samples` VALUES (1315,28,'2022-01-04',4,'08:55:00',NULL,162,74,24.6,34.7,6.73,98.7,8.12,10.5,9.13,10.3,1,182.53,12.18,11.77,464.02,79.32,5.55,NULL,NULL);
INSERT INTO `samples` VALUES (1316,29,'2022-01-05',1,'08:13:00',NULL,162,74,24.6,34.7,6.15,95.1,8.11,4.24,4.83,5.48,1,198.5,18.44,17.75,943.58,87.31,14.6,NULL,'Used new store bought distilled water for post-sampling blank. Had a hard time getting it below 0.10 NTU.');
INSERT INTO `samples` VALUES (1317,33,'2022-01-05',2,'08:49:00',NULL,162,74,24.9,35.4,6.7,98.8,8.17,1.37,1.72,1.65,1,100.66,6.96,3.77,122.38,8.9,0.98,NULL,NULL);
INSERT INTO `samples` VALUES (1318,36,'2022-01-05',3,'09:13:00',NULL,162,74,24.8,35.3,7.07,103.9,8.08,1.34,1.49,1.99,1,92.89,5.98,2.72,144.44,3.38,3.1,NULL,NULL);
INSERT INTO `samples` VALUES (1319,37,'2022-01-05',4,'09:34:00',NULL,162,74,24.9,35.3,6.51,96,8.1,1.52,1.6,2.16,1,102.59,7.12,4.36,193.65,9.3,3.07,NULL,NULL);
INSERT INTO `samples` VALUES (1320,50,'2022-01-06',1,'07:45:00',NULL,162,74,24.8,35.3,6.04,88.9,8.08,1.47,1.73,1.61,1,119.78,8.31,5.23,310.37,34.79,7.73,NULL,'salinity outside high range at NMH, NHP, NKP, NKC');
INSERT INTO `samples` VALUES (1321,51,'2022-01-06',2,'08:05:00',NULL,162,74,24.7,34.9,6.33,92.9,8.02,6.89,7.25,7.39,1,163.39,9.81,6.49,364.55,67.67,9.49,NULL,'stronger south swell made it more challenging to grab samples today');
INSERT INTO `samples` VALUES (1322,38,'2022-01-06',3,'08:20:00',NULL,162,74,24.7,35.1,6.61,97.3,8.11,9.56,9.11,10.2,1,127.84,8.21,5.64,400.7,47.47,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (1323,39,'2022-01-06',4,'08:40:00',NULL,162,74,24.7,35.4,6.86,100.8,8.13,4.27,4.25,4.09,1,76.88,7.56,2.76,122.59,2.75,3.37,NULL,'some waves 3 feet at NKP');
INSERT INTO `samples` VALUES (1324,41,'2022-01-06',5,'09:00:00',NULL,162,74,25,35.2,6.48,95.9,8.12,22.1,22.4,22.2,1,133.29,7.85,5.69,283.92,54.02,4.87,NULL,'very brown water with some debris in it at NKC');
INSERT INTO `samples` VALUES (1325,43,'2022-01-25',1,'07:55:00',NULL,162,75,23.4,33.9,6.58,94,8.14,4.18,4.18,4,1,190.31,12.7,8.88,1176.17,98.4,6.29,NULL,'8:03 probes in; equipment performed well');
INSERT INTO `samples` VALUES (1326,26,'2022-01-25',2,'08:07:00',NULL,162,75,22.5,34.1,6.79,95.5,8.07,22.4,22.7,22.2,1,119.07,13.62,9.1,755.58,32.62,3.54,NULL,'8:13 - 8:15 probes in');
INSERT INTO `samples` VALUES (1327,27,'2022-01-25',3,'08:29:00',NULL,162,75,23.3,34.4,6.51,93,8.11,16.4,16.2,16.4,1,199.11,13.45,9.4,737.17,87.87,4.08,NULL,'8:33-8:35 probes in');
INSERT INTO `samples` VALUES (1328,28,'2022-01-25',4,'08:45:00',NULL,162,75,23.4,35.3,6.8,97.9,8.12,16.1,16.9,16.5,1,108.21,9.68,6.4,128,16.78,2.16,NULL,'8:49-8:51 probes in');
INSERT INTO `samples` VALUES (1329,29,'2022-01-26',1,'08:30:00',NULL,162,75,24.1,33.5,6.55,94.3,8.1,2.96,3.44,2.85,1,598.4,24.33,22.26,1745.85,394.37,9.74,NULL,NULL);
INSERT INTO `samples` VALUES (1330,33,'2022-01-26',2,'09:05:00',NULL,162,75,24.3,35.9,6.81,100.1,8.15,0.76,0.84,0.79,1,99.08,8.37,3.31,104.42,12.64,1.07,NULL,NULL);
INSERT INTO `samples` VALUES (1331,36,'2022-01-26',3,'09:29:00',NULL,162,75,24.5,35.9,7.21,105.8,8.16,0.79,0.8,0.77,1,108.75,8.79,4.93,329.86,5.12,3.8,NULL,NULL);
INSERT INTO `samples` VALUES (1332,37,'2022-01-26',4,'09:50:00',NULL,162,75,24.8,35.8,6.19,102.1,8.17,1.76,2.07,2.11,1,100.77,8.78,5.11,193.89,9.26,3.08,NULL,'Large wave, rough surf');
INSERT INTO `samples` VALUES (1333,50,'2022-01-27',1,'07:45:00',NULL,162,75,23.5,35.5,6.3,90.6,8.14,0.74,0.89,0.79,1,124.88,9.63,5.23,309.57,38.44,9.02,NULL,'NMH,NKP,NKC salinity out of range');
INSERT INTO `samples` VALUES (1334,51,'2022-01-27',2,'08:10:00',NULL,162,75,23.2,33.8,6.87,97.5,8.1,3.99,6.33,5.2,1,266.46,6.7,2.58,305.17,165.04,5.05,NULL,'NMC temp a bit low possibly, no second reading');
INSERT INTO `samples` VALUES (1335,38,'2022-01-27',3,'08:35:00',NULL,162,75,23.9,34.7,6.44,92.8,8.11,2.66,2.79,3.1,1,221.3,6.9,3.58,594.03,136.98,3.72,NULL,'NMC turbidity readings inconsistent');
INSERT INTO `samples` VALUES (1336,39,'2022-01-27',4,'09:00:00',NULL,162,75,24.1,36.1,6.82,99.5,8.18,1.25,1.14,1.34,1,82.9,8.71,3.19,59.51,2.53,1.75,NULL,'NKC high turbidity readings likely due to brown water still present from');
INSERT INTO `samples` VALUES (1337,41,'2022-01-27',5,'09:20:00',NULL,162,75,24.8,35.2,6.72,98.9,8.14,5.25,5.21,5.28,1,245.99,10.03,5.36,377.57,159.03,3.1,NULL,'rain event some weeks ago');
INSERT INTO `samples` VALUES (1338,43,'2022-02-15',1,'08:05:00',NULL,162,76,23.2,34.5,6.56,93.2,8.16,5.82,7.18,6.19,1,183.86,14.07,11.42,899.81,62.31,13.02,NULL,'We had to walk along the shoreline to access site. Bank eroded. Probes in water for 3 minutes.');
INSERT INTO `samples` VALUES (1339,26,'2022-02-15',2,'08:30:00',NULL,162,76,22.5,34.4,6.58,92.5,8.1,12.8,12.9,12.4,1,114.85,11.26,9.32,429.17,11.22,6.71,NULL,'Paddle boarder close to sampling site. Probes in at 8:37 am, out at 8:42 am.');
INSERT INTO `samples` VALUES (1340,27,'2022-02-15',3,'08:54:00',NULL,162,76,23.4,33.8,6.35,90.3,8.19,8.37,9.78,8.7,1,156.31,10.01,7.34,590.28,51.03,9.64,NULL,'Small waves, kind of busy far away.');
INSERT INTO `samples` VALUES (1341,28,'2022-02-15',4,'09:15:00',NULL,162,76,23.5,35.3,6.9,99.2,8.16,6.72,7.01,7.41,1,148.6,10.06,6.45,265.88,34.2,10.36,NULL,'Strong waves. Field group trining with Daniella (MNMRC intern). Quarterly observation for S. Graves and H. Hecht.');
INSERT INTO `samples` VALUES (1342,29,'2022-02-16',1,'08:28:00',NULL,162,76,24.1,35.3,6.84,99.7,8.11,7.82,7.32,7.35,1,185.78,12.74,11.86,401.94,82.27,11.56,NULL,'Large waves');
INSERT INTO `samples` VALUES (1343,33,'2022-02-16',2,'09:06:00',NULL,162,76,24.4,35.7,6.92,101.4,8.15,2.81,2.89,2.8,1,104.29,9.2,6.34,295.49,11.26,3.62,NULL,'Large shore breaking waves');
INSERT INTO `samples` VALUES (1344,36,'2022-02-16',3,'09:32:00',NULL,162,76,24.3,35.7,7.33,107,8.15,1.41,1.61,1.67,1,105.3,7.84,4.65,165.35,3.87,7.14,NULL,'Repeat O2% - 106.8');
INSERT INTO `samples` VALUES (1345,37,'2022-02-16',4,'09:48:00',NULL,162,76,24.6,35.7,6.9,101.3,8.15,3.1,3.1,2.82,1,102.73,8.91,5.61,252.43,9.63,3.62,NULL,'Relinquished to \'GBG\' - George Burnette Garage');
INSERT INTO `samples` VALUES (1346,50,'2022-02-17',1,'07:50:00',NULL,162,76,23.8,35.7,6.41,92.7,8.16,0.65,0.75,0.81,1,128.74,8.97,6.49,274.61,33.49,22.4,NULL,'calm winds and very little surf today - all beaches');
INSERT INTO `samples` VALUES (1347,51,'2022-02-17',2,'08:10:00',NULL,162,76,23.4,34.8,6.88,98.6,8.06,8.57,8.64,8.48,1,205.37,11.52,9.15,431.4,99.9,14.13,NULL,'4 of 5 beaches had D/O greater than 35 - mostly normal I think');
INSERT INTO `samples` VALUES (1348,38,'2022-02-17',3,'08:25:00',NULL,162,76,23.7,35.7,6.67,96.5,8.14,5.03,5.59,5.21,1,127.13,8.16,5.38,230.46,36.28,11.65,NULL,NULL);
INSERT INTO `samples` VALUES (1349,39,'2022-02-17',4,'08:50:00',NULL,162,76,23.7,35.8,6.9,100.1,8.19,0.98,0.92,0.91,1,87.17,8.41,6.47,1234.55,1.11,5.58,NULL,'NKC - multiple canoes landing and beach crowded with padders');
INSERT INTO `samples` VALUES (1350,41,'2022-02-17',5,'09:10:00',NULL,162,76,24.4,35.4,6.79,99.2,8.14,6.42,6.27,5.72,1,213.2,9.7,6.54,352.93,127.35,3.84,NULL,'NKC - water was clearer today - first time since heavy rain event many weeks ago');
INSERT INTO `samples` VALUES (1351,43,'2022-03-08',1,'08:00:00',NULL,162,77,24.3,33.4,6.37,91.9,8.13,3.48,3.46,3.61,1,210.69,12.38,9.73,1216.46,114.75,6.12,NULL,'Calm, no shore break, some people walking by.');
INSERT INTO `samples` VALUES (1352,26,'2022-03-08',2,'08:21:00',NULL,162,77,24.1,33.6,5.96,85.8,8.09,11.9,11.9,11.8,1,144.02,11.13,7.98,798.09,29.86,5.13,NULL,'Calm, light wind, little to no surf.');
INSERT INTO `samples` VALUES (1353,27,'2022-03-08',3,'08:38:00',NULL,162,77,25,34.8,6.08,89.4,8.14,4.27,4.34,4.31,1,157.37,8.34,5.7,427.86,32.72,6.73,NULL,'0-2ft surf, light wind.');
INSERT INTO `samples` VALUES (1354,28,'2022-03-08',4,'08:57:00',NULL,162,77,24.2,35.1,6.61,96.1,8.12,6.97,7.43,7.61,1,163.97,10.2,7.59,397.69,59.96,5.66,NULL,'Dogs playing in water and beach near sample site.');
INSERT INTO `samples` VALUES (1355,29,'2022-03-09',1,'08:19:00',NULL,162,77,25,31.4,6.08,88,8.04,5.57,5.78,5.44,1,1011.39,45.91,42.94,4576.14,888.55,11.05,NULL,NULL);
INSERT INTO `samples` VALUES (1356,33,'2022-03-09',2,'08:59:00',NULL,162,77,24.6,35.2,6.77,99.4,8.14,0.58,0.86,0.76,1,166.9,9.49,5.83,284.55,72.87,4.51,NULL,NULL);
INSERT INTO `samples` VALUES (1357,36,'2022-03-09',3,'09:24:00',NULL,162,77,24.9,34.9,7.71,113.4,8.07,1.9,1.58,1.75,1,114.29,9.43,6.54,602.07,8.42,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (1358,37,'2022-03-09',4,'09:45:00',NULL,162,77,25.2,34.2,6.74,99.4,8.03,0.8,0.8,0.8,1,144.23,15.8,15.5,1490.07,60.03,4.73,NULL,NULL);
INSERT INTO `samples` VALUES (1359,50,'2022-03-10',1,'07:50:00',NULL,162,77,24.8,35.5,6.36,93.7,8.13,0.85,0.92,0.91,1,121.28,10.2,6.88,360.77,38.06,8.21,NULL,NULL);
INSERT INTO `samples` VALUES (1360,51,'2022-03-10',2,'08:10:00',NULL,162,77,24.9,33.7,7.01,102.5,8.03,5.22,5.23,4.95,1,320.69,8.97,5.87,972.23,220.34,7.33,NULL,'Sample location gettign very rocky hard to get in and out.');
INSERT INTO `samples` VALUES (1361,38,'2022-03-10',3,'08:30:00',NULL,162,77,24.8,35,6.74,99.3,8.09,2.43,2.22,2.34,1,183.8,8.16,5.79,592.61,97.87,3.48,NULL,NULL);
INSERT INTO `samples` VALUES (1362,39,'2022-03-10',4,'08:50:00',NULL,162,77,25,35.8,6.71,99.4,8.15,0.49,0.43,0.45,1,87.73,8.09,4.28,122.34,7.13,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1363,41,'2022-03-10',5,'09:10:00',NULL,162,77,25.5,34.9,6.68,99.6,8.12,1.37,1.62,1.46,1,280.75,11.52,7.93,566.7,195.86,3.64,NULL,'Lots of people fishing canoeing. First time since storm that turbidity is low. Very calm winds and waves.');
INSERT INTO `samples` VALUES (1364,43,'2022-03-29',1,'07:57:00',NULL,162,78,24.8,34.1,6.36,92.6,8.16,2.41,2.36,2.23,1,184.14,11.29,6.9,785.47,73.42,6.33,NULL,'Calm waters, very light wind, paddlers in the water coming in');
INSERT INTO `samples` VALUES (1365,26,'2022-03-29',2,'08:15:00',NULL,162,78,24.5,32.4,6.11,87.7,8.1,9.06,8.39,9.19,1,173.27,11.94,10.89,1030.53,40.77,5.81,NULL,'Very light winds, calm waters');
INSERT INTO `samples` VALUES (1366,27,'2022-03-29',3,'08:32:00',NULL,162,78,25.6,33.9,5.73,84.6,8.13,6.09,5.62,7.41,1,153.82,8.31,5.27,574.45,40.09,5.07,NULL,'Reader acting up, restarting often');
INSERT INTO `samples` VALUES (1367,28,'2022-03-29',4,'08:50:00',NULL,162,78,25.2,34.6,6.45,95.2,8.14,6.31,7.86,7.03,1,136.18,8.61,5.92,444.15,25.35,3.94,NULL,NULL);
INSERT INTO `samples` VALUES (1368,29,'2022-03-30',1,'08:20:00',NULL,162,78,25.1,33.1,6.45,94.1,8.12,2.06,2.23,2.44,1,936.21,36.7,32.26,3680.26,742.42,18.74,NULL,'2 dogs on beach');
INSERT INTO `samples` VALUES (1369,33,'2022-03-30',2,'09:02:00',NULL,162,78,24.9,35,6.62,97.3,8.14,1.03,0.76,1.1,1,178.1,9.88,6.28,421.1,64.92,6.22,NULL,NULL);
INSERT INTO `samples` VALUES (1370,36,'2022-03-30',3,'09:25:00',NULL,162,78,24.8,35.1,6.73,98.6,8.07,0.92,0.92,0.95,1,114.99,8.25,5.51,390.71,9.21,3.69,NULL,NULL);
INSERT INTO `samples` VALUES (1371,37,'2022-03-30',4,'09:43:00',NULL,162,78,24.8,33.8,6.43,93.6,8,0.73,0.69,0.82,1,116.69,10.34,7.72,415.21,16.85,7.08,NULL,NULL);
INSERT INTO `samples` VALUES (1372,50,'2022-03-31',1,'07:48:00',NULL,162,78,24.2,35.1,6.23,90.6,8.15,1.46,1.39,1.52,1,129.65,15.86,8.46,307.42,34.16,8.09,NULL,NULL);
INSERT INTO `samples` VALUES (1373,51,'2022-03-31',2,'08:15:00',NULL,162,78,24.3,33.3,7.27,104.8,8.12,5.05,6.48,5.95,1,327.03,8.95,7.11,1012.11,195.77,7.66,NULL,NULL);
INSERT INTO `samples` VALUES (1374,38,'2022-03-31',3,'08:25:00',NULL,162,78,24.6,34.5,6.73,98,8.11,5.29,6.06,5.67,1,169.59,7.61,5.57,369.94,68.46,4.95,NULL,NULL);
INSERT INTO `samples` VALUES (1375,39,'2022-03-31',4,'08:45:00',NULL,162,78,24.6,35.4,6.69,98.3,8.18,1.16,1.1,1,1,100.5,9.05,3.5,52.33,3.04,2.7,NULL,NULL);
INSERT INTO `samples` VALUES (1376,41,'2022-03-31',5,'09:10:00',NULL,162,78,25.7,34.5,6.5,96.4,8.13,5.5,6.95,7.58,1,276.06,10.19,8.08,516.44,176.17,3.01,NULL,NULL);
INSERT INTO `samples` VALUES (1377,43,'2022-04-19',1,'07:53:00',NULL,162,79,23.9,33.6,6.29,90.1,8.13,2.91,2.45,2.46,1,225.1,10.61,9.02,1243.74,135.72,6.6,NULL,'Changed batteries on turbidity meter');
INSERT INTO `samples` VALUES (1378,26,'2022-04-19',2,'08:21:00',NULL,162,79,23,32.7,6.22,87.3,8.06,9.81,8.98,8.6,1,194.44,13.41,11.4,1118.71,59.24,9.49,NULL,NULL);
INSERT INTO `samples` VALUES (1379,27,'2022-04-19',3,'08:35:00',NULL,162,79,24.4,32.8,6.1,87.9,8.09,10.9,11.1,10.5,1,280.15,11.41,9.7,1376.35,172.95,8.9,NULL,'Turbitidty meter brokedown not turn on');
INSERT INTO `samples` VALUES (1380,28,'2022-04-19',4,'09:00:00',NULL,162,79,24.7,35.1,6.72,98.4,8.15,8.81,7.73,8.56,1,158.34,9.63,8.18,398.01,60.47,6.57,NULL,'Kept vial sample from KKS and KKP meter fixed and reading retaken');
INSERT INTO `samples` VALUES (1381,29,'2022-04-20',1,'08:30:00',NULL,162,79,24.8,32.2,6.51,93.8,8.09,13.8,17.6,17.6,1,801.17,29.66,25.21,3000.68,638.5,7.31,NULL,'read 0.19 empty of turb. bottle water (1st prereading sample)');
INSERT INTO `samples` VALUES (1382,33,'2022-04-20',2,'09:14:00',NULL,162,79,25.2,35.3,6.57,97.2,8.15,1.23,1.38,1.09,1,187.81,14.95,12.7,323.05,101.42,2.28,NULL,NULL);
INSERT INTO `samples` VALUES (1383,36,'2022-04-20',3,'09:30:00',NULL,162,79,24.7,35.7,6.95,102.3,8.12,1.39,1.94,1.88,1,102.57,9.51,8.08,371.92,7.3,4.92,NULL,NULL);
INSERT INTO `samples` VALUES (1384,37,'2022-04-20',4,'09:40:00',NULL,162,79,24.9,35.1,6.47,95.2,8.08,1.95,2,2.08,1,118.99,13.36,11.35,810.58,33.64,5.48,NULL,NULL);
INSERT INTO `samples` VALUES (1385,50,'2022-04-21',1,'08:00:00',NULL,162,79,24,35.3,6.32,91.7,8.14,1.96,2.03,1.88,1,148.84,10.66,9.06,456.2,56.22,7.44,NULL,'Windy');
INSERT INTO `samples` VALUES (1386,51,'2022-04-21',2,'08:15:00',NULL,162,79,23.9,33,7.45,105.6,8.09,5.77,7.51,7.37,1,364.2,10.23,8.7,1262.07,257.71,8.54,NULL,'gluch is wet (likely from irrigation) not from rain or runoff. 4th reading 9.58- can see debris floating in sample');
INSERT INTO `samples` VALUES (1387,38,'2022-04-21',3,'08:30:00',NULL,162,79,24.2,35.6,6.85,99.9,8.17,3.72,3.5,3.49,1,135.61,9.47,8.05,223.98,29.5,6,NULL,'water looks more clear than usual. flat');
INSERT INTO `samples` VALUES (1388,39,'2022-04-21',4,'08:50:00',NULL,162,79,24.6,36.1,6.71,98.8,8.19,0.96,0.94,0.94,1,76.88,6.51,5.53,58.79,1.82,2.56,NULL,'dive flag near sampling site');
INSERT INTO `samples` VALUES (1389,41,'2022-04-21',5,'09:10:00',NULL,162,79,25,35.3,6.64,97.9,8.15,20.4,20.1,21.7,1,200.68,10.59,9,430.83,120.99,2.14,NULL,'water looks very brown');
INSERT INTO `samples` VALUES (1390,43,'2022-05-10',1,'07:58:00',NULL,162,80,25,31.6,6.31,91,8.15,15.1,16.3,14.8,1,337.16,14.49,14.15,2736.35,226.61,8.82,NULL,'Canoes on beach water entrance, people walking by the shoreline, mild wind. Did a 4th reading 11.1 and a 5th reading 15.1 NTU');
INSERT INTO `samples` VALUES (1391,26,'2022-05-10',2,'08:18:00',NULL,162,80,25.1,31,6.15,88.8,8.11,6.34,7.02,6.82,1,259.66,13.09,12.5,2952.24,110.81,5.71,NULL,'A couple people walking, quiet, mild wind');
INSERT INTO `samples` VALUES (1392,27,'2022-05-10',3,'08:35:00',NULL,162,80,26,32.1,5.81,85.7,8.13,10.2,9.89,10.3,1,320.43,13.7,12.47,2068.39,195.14,9.04,NULL,'Paddle boarder in distance, calm breeze, people sitting on beach, 4th turbitity 10.3, HD40d meter turning off, turbidity meter turing off.');
INSERT INTO `samples` VALUES (1393,28,'2022-05-10',4,'08:53:00',NULL,162,80,26,34.5,6.46,96.5,8.16,10.3,11.4,10.4,1,143.42,11.34,7.71,440.83,41.21,4.35,NULL,'Calm small waves mild wind');
INSERT INTO `samples` VALUES (1394,29,'2022-05-11',1,'08:11:00',NULL,162,80,25.3,31.3,6.28,91.1,8.08,3.35,3.67,3.76,1,1247.11,48.55,47.53,5334.62,1148.57,19.25,NULL,'1 dog in water');
INSERT INTO `samples` VALUES (1395,33,'2022-05-11',2,'08:53:00',NULL,162,80,25.8,34.4,6.43,95.8,8.14,0.83,0.78,0.79,1,289.26,10.6,7.59,943.49,208.66,4.52,NULL,NULL);
INSERT INTO `samples` VALUES (1396,36,'2022-05-11',3,'09:26:00',NULL,162,80,25,34.6,7.34,107.8,8.1,0.89,1.14,1.47,1,133.18,11.21,7.42,569.58,7.48,8.19,NULL,'did 2nd reading for DO- 107.8');
INSERT INTO `samples` VALUES (1397,37,'2022-05-11',4,'09:51:00',NULL,162,80,25.7,35.2,6.47,96.8,8.11,1.01,1.1,1.12,1,117.01,11.99,9.07,422.52,16.18,7.37,NULL,NULL);
INSERT INTO `samples` VALUES (1398,50,'2022-05-12',1,'07:50:00',NULL,162,80,24,35,6.24,90.5,8.14,1.44,1.43,1.43,1,133.86,12.78,9.2,544.7,52.03,9.26,NULL,'Windy at harbor, lots of activity on boats, people loading onto boats');
INSERT INTO `samples` VALUES (1399,51,'2022-05-12',2,'08:12:00',NULL,162,80,24.2,32.1,7.68,110,8.14,8.54,8.86,9.15,1,380.93,9.24,7.13,1979.23,263.17,9.16,NULL,'light wind,water calm, rocky entry, clear sunny sky, DO reading high 2nd reading 109.9');
INSERT INTO `samples` VALUES (1400,38,'2022-05-12',3,'08:30:00',NULL,162,80,24.6,34.5,6.79,99.2,8.13,7.73,7.61,7.99,1,201.24,13.35,8.08,725.48,115.06,3.82,NULL,NULL);
INSERT INTO `samples` VALUES (1401,39,'2022-05-12',4,'08:49:00',NULL,162,80,24.9,35.8,6.67,98.7,8.17,0.76,0.67,1.08,1,96.16,8.79,3.78,72.68,1.94,5,NULL,'2 people running/walking by, small waves, calm light winds');
INSERT INTO `samples` VALUES (1402,41,'2022-05-12',5,'09:05:00',NULL,162,80,25.8,34.7,6.53,97.5,8.13,12.8,18.6,17.9,1,248.03,10.54,6.91,577.51,143.16,11.17,NULL,'Water looks brown, one person walking by, calm conditions. Turbitiy 4th reading 12.3 5th reading 14.9');
INSERT INTO `samples` VALUES (1403,43,'2022-06-03',1,'08:10:00',NULL,162,81,24.9,31.4,6.55,94.6,8.1,12,11,11.6,1,285.44,15.05,13.73,1870.24,192.99,8.29,NULL,'2 canoe teams went out 1-2 min before sample, windy, brown water');
INSERT INTO `samples` VALUES (1404,26,'2022-06-03',2,'08:40:00',NULL,162,81,24.7,32.3,6.51,94.1,8.06,12.5,12.7,12.9,1,147.5,14.45,11.33,1200.1,55.35,5.36,NULL,'windy');
INSERT INTO `samples` VALUES (1405,27,'2022-06-03',3,'09:00:00',NULL,162,81,25.7,32.5,6.41,94.5,8.07,19.5,19.8,19.8,1,192.11,14.26,10.66,1394.97,127.69,4.25,NULL,'not sure if person is camping (no tent but lots of other items. update she is staying on beach *2nd temperature reading 25.7');
INSERT INTO `samples` VALUES (1406,28,'2022-06-03',4,'09:25:00',NULL,162,81,25.7,34.6,6.89,99.7,8.15,10.1,10.5,10.1,1,110.35,11.03,6.7,391.23,47.37,6.38,NULL,'1 dog on beach, very brown water, windy near sampe area, 4th NTU reading');
INSERT INTO `samples` VALUES (1407,29,'2022-06-01',1,'08:18:00',NULL,162,81,26.7,32.1,6.58,98.5,8.07,7.55,7.6,8.3,1,660.58,25.47,24.88,2161.44,500.61,21.67,NULL,'4th reading for KCP 9.59');
INSERT INTO `samples` VALUES (1408,33,'2022-06-01',2,'09:04:00',NULL,162,81,25.8,34.9,6.56,98.4,8.12,2.07,2.35,2.21,1,104.4,15.52,11.35,347.26,45.85,2.39,NULL,'high surf advisory this week - s. swell');
INSERT INTO `samples` VALUES (1409,36,'2022-06-01',3,'09:30:00',NULL,162,81,25.5,35.4,6.8,101.4,8.14,2.04,2.07,2.26,1,70.65,8.94,5.69,215.46,5.37,2.79,NULL,'water was up on road early in am');
INSERT INTO `samples` VALUES (1410,37,'2022-06-01',4,'09:46:00',NULL,162,81,25.6,35,6.63,99.1,8.14,2.99,4.33,3.15,1,78.91,7.62,6.18,272.7,10.48,3.46,NULL,'4th reading turb 3.75; high water mark to fence');
INSERT INTO `samples` VALUES (1411,50,'2022-06-02',1,'07:57:00',NULL,162,81,25.3,34.8,6.28,92.9,8.11,3.26,3.38,3.28,1,99.52,10.49,5.61,444.44,34.04,6.34,NULL,'Clear blue skies, sunny, south swell, parking lot wet due to swell, boat with people getting on near site.');
INSERT INTO `samples` VALUES (1412,51,'2022-06-02',2,'08:19:00',NULL,162,81,25.3,34,7.01,103.5,8.2,2.65,2.43,2.4,1,172.3,10.97,7.14,683.19,116.51,5.73,NULL,'south swell, very rocky entry, low tide, water looks brown green');
INSERT INTO `samples` VALUES (1413,38,'2022-06-02',3,'08:44:00',NULL,162,81,25.2,35,6.69,99.2,8.16,11.9,11.8,11.5,1,88.49,8.97,4.99,190.27,22.55,4.17,NULL,'Big waves crashing, rocks rolling, surfers in water more than 100ft from site, families playing on beach, light wind, water looks brown green');
INSERT INTO `samples` VALUES (1414,39,'2022-06-02',4,'09:09:00',NULL,162,81,25.5,35.2,6.66,99.3,8.15,1.99,2.06,2.26,1,69.53,10.2,4.77,84.68,1.38,3.38,NULL,'water is calmer than the other two sites, one person walking by');
INSERT INTO `samples` VALUES (1415,41,'2022-06-02',5,'09:25:00',NULL,162,81,26.2,34.7,6.64,99.9,8.09,33.5,36.7,36.2,1,203.1,13.38,8.14,482.59,107.68,4.42,NULL,'water is brown, mild swell, canoe club meeting on grass (large group) took 5th NTU reading 32.1');
INSERT INTO `samples` VALUES (1416,43,'2022-06-24',1,'08:00:00',NULL,162,82,25.5,33.5,5.75,84.8,8.14,3.21,3.25,3.7,1,210.8,8.7,6.39,1141.89,115.69,5.41,NULL,'Canoes near sample site onshore, low tide');
INSERT INTO `samples` VALUES (1417,26,'2022-06-24',2,'08:20:00',NULL,162,82,24.4,32.4,5.17,74.4,8.03,3.08,2.47,2.77,1,121.88,7.33,5.27,968.08,20.92,5.49,NULL,'calm waters looks clearer than usual, 2 fishing poles 4th reading 3.16 double checked oxygen and was same, possible low reading due to  low tide?');
INSERT INTO `samples` VALUES (1418,27,'2022-06-24',3,'08:40:00',NULL,162,82,25.9,33.5,5.82,86.4,8.13,4.55,4.61,4.39,1,165.81,7.97,5.26,888.05,63.41,7.65,NULL,NULL);
INSERT INTO `samples` VALUES (1419,28,'2022-06-24',4,'08:57:00',NULL,162,82,26,34.6,6.58,98.7,8.15,8.71,8.29,8.88,1,179.07,7.99,5.52,471.95,82.74,4.66,NULL,'lots of surfers beyond 100ft, 2 paddle boarders coming to shore about 20 ft away. small waves. dog present');
INSERT INTO `samples` VALUES (1420,29,'2022-06-22',1,'08:38:00',NULL,162,82,26.6,32.9,6.36,95,8.12,9.23,10.1,8.22,1,531.8,25.44,23.37,2109.23,400.84,39.27,NULL,'4th 10.5 & 5th 9.23 turb readings');
INSERT INTO `samples` VALUES (1421,33,'2022-06-22',2,'09:20:00',NULL,162,82,26.7,35.2,6.39,96.9,8.16,3.67,3.73,4.13,1,152.09,10.58,5.89,340.38,56.94,2.92,NULL,'shore brake/south swell');
INSERT INTO `samples` VALUES (1422,36,'2022-06-22',3,'09:38:00',NULL,162,82,26.1,35.5,6.9,103.9,8.17,1.53,1.65,1.79,1,98.44,8.63,3.55,167.7,2.15,3.32,NULL,'shore brake/south swell');
INSERT INTO `samples` VALUES (1423,37,'2022-06-22',4,'09:58:00',NULL,162,82,26.6,35.6,6.62,100.6,8.18,1.48,1.38,1.41,1,95.89,8.58,4.74,133.08,5.32,4.05,NULL,'shore brake/south swell');
INSERT INTO `samples` VALUES (1424,50,'2022-06-23',1,'07:55:00',NULL,162,82,25,35,6.13,90.6,8.17,2.31,2.45,2.18,1,139.08,11.96,6.89,489.14,56.19,7.54,NULL,'Lots of tour boats, windy');
INSERT INTO `samples` VALUES (1425,51,'2022-06-23',2,'08:25:00',NULL,162,82,25,33.4,6.81,99.7,8.19,3.22,3.26,3.12,1,288.73,10,5.88,976.36,192.81,7.12,NULL,'rough, windy higher surf than usual, Brown water past the shoreline');
INSERT INTO `samples` VALUES (1426,38,'2022-06-23',3,'08:39:00',NULL,162,82,25.6,35.2,6.58,98.1,8.19,14.6,14.5,14.4,1,90.61,8.84,3.15,74.74,1.85,2.73,NULL,'Diver flag near ssample site, Sandy shorebreak');
INSERT INTO `samples` VALUES (1427,39,'2022-06-23',4,'08:58:00',NULL,162,82,25.4,35.7,6.46,96.4,8.2,2.41,2.08,2.23,1,137.5,10.58,5.09,287.47,48.31,3.62,NULL,NULL);
INSERT INTO `samples` VALUES (1428,41,'2022-06-23',5,'09:13:00',NULL,162,82,26,35.1,6.49,97.7,8.16,63.2,69.6,71.9,1,199.81,11.79,6.05,452.93,113.6,1.36,NULL,'Water looks brown, canoe club meeting on grassy area, particles in turbitity sample');
INSERT INTO `samples` VALUES (1429,43,'2022-07-12',1,'07:57:00',NULL,162,83,25.3,32.7,6.23,91.3,8.13,4.47,4.68,5.1,1,230.55,13.3,12.09,2106.1,142.93,7.85,NULL,'King tides predicted for the next few days. did an extra reading for the pre-sample standards. Low tide, light winds, 12 people coming in from ocean, small swell');
INSERT INTO `samples` VALUES (1430,26,'2022-07-12',2,'08:17:00',NULL,162,83,24.9,32.1,5.95,86.2,8.05,3.6,3.14,3.42,1,82.8,9.91,8.71,725.7,12.77,4.91,NULL,'Did an extra NTU reading 3.42');
INSERT INTO `samples` VALUES (1431,27,'2022-07-12',3,'08:33:00',NULL,162,83,26,33.1,5.78,85.7,8.07,3.54,3.81,3.66,1,254.55,13.76,11.97,2338.56,190.26,4.56,NULL,NULL);
INSERT INTO `samples` VALUES (1432,28,'2022-07-12',4,'08:52:00',NULL,162,83,26.3,34.7,6.51,99.5,8.15,8.44,9.79,9.54,1,152.91,8.62,7.26,389.75,74.79,9.82,NULL,'Lots of surfers, family on beach.');
INSERT INTO `samples` VALUES (1433,29,'2022-07-13',1,'08:25:00',NULL,162,83,26.4,32.7,6.63,98.8,8.11,4.51,5.17,4.18,1,585.4,24.76,20.33,1859.68,390.76,27.68,NULL,'Dog in water; Camper/fisherman on shore; extreme low tide; King Tide Moon; 4th turbidity reading taken; Sample water looks cloudy.');
INSERT INTO `samples` VALUES (1434,33,'2022-07-13',2,'09:01:00',NULL,162,83,26.7,34.8,6.43,97.7,9.13,2.58,2.82,2.13,1,156.52,10.32,6.06,404.87,72.95,3.36,NULL,'Low tide; Kyack off shore; sandy shore break; 4th turbidity reading.');
INSERT INTO `samples` VALUES (1435,36,'2022-07-13',3,'09:30:00',NULL,162,83,26.1,35,6.68,100.4,8.13,3.65,3.83,4.15,1,81.3,8.5,5.5,232.88,5.61,3.03,NULL,'Low tide; off shore break; overcast; 4th turbididty reading');
INSERT INTO `samples` VALUES (1436,37,'2022-07-13',4,'10:00:00',NULL,162,83,26.2,34.9,6.59,99.2,8.17,6.46,6.45,5.76,1,79.39,10.72,7.36,325.51,12.15,4.4,NULL,'Extreme low tide; south swell; overcast; 4th turbidity reading.');
INSERT INTO `samples` VALUES (1437,50,'2022-07-14',1,'07:55:00',NULL,162,83,25.3,34.7,6.15,91.1,8.13,5.09,5.55,5.41,1,152.14,17.15,12.68,517.39,59.65,9.21,NULL,'south swell, windy, snorkel boat loading~10 m away from sample site');
INSERT INTO `samples` VALUES (1438,51,'2022-07-14',2,'08:16:00',NULL,162,83,25.7,34.3,7.01,104.4,8.2,6.58,5.93,6.9,1,228.73,11.88,7.87,1068.55,130.12,8.54,NULL,'High surf, High winds, stream flowing but not reaching the sand or ocean, very light flow, Stream may have connected night before');
INSERT INTO `samples` VALUES (1439,38,'2022-07-14',3,'08:33:00',NULL,162,83,25.6,34.9,6.71,100,8.16,12.6,12.1,10.8,1,130.09,9.87,6.14,342.75,60.53,6.67,NULL,'South swell with 3\' shorebreak, water slightly brown, surfers out, difficult to collect sample.');
INSERT INTO `samples` VALUES (1440,39,'2022-07-14',4,'09:00:00',NULL,162,83,26,35.4,6.55,98.4,8.17,3.43,3.51,4.02,1,68.75,7.96,4.51,79.63,2.79,2.79,NULL,'much smaller shore break did a 4th reading 4.21');
INSERT INTO `samples` VALUES (1441,41,'2022-07-14',5,'09:18:00',NULL,162,83,26.6,34.7,6.59,99.6,8.11,28.5,33.1,31.7,1,204.16,11.27,9.41,997.98,128.57,6.78,NULL,'Very brown water ~4m out into the ocean. Shorebreak. Youth canoe club on beach. 4th NTU reading 37.3');
INSERT INTO `samples` VALUES (1442,43,'2022-08-02',1,'07:56:00',NULL,162,84,25.7,34.8,6.01,89.6,8.14,3.72,3.57,4.01,1,135.46,9.65,8.31,925.45,55.35,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (1443,26,'2022-08-02',2,'08:17:00',NULL,162,84,25.2,34.6,6.29,92.7,8.09,22.6,22.6,22.9,1,122.95,10.48,8.58,567.85,6.27,4.91,NULL,'High tide, sediment in surf');
INSERT INTO `samples` VALUES (1444,27,'2022-08-02',3,'08:31:00',NULL,162,84,26,33.7,6.25,93.1,8.12,9.21,9.33,9.22,1,149.43,9.58,9.37,962.39,58.88,1.88,NULL,NULL);
INSERT INTO `samples` VALUES (1445,28,'2022-08-02',4,'08:50:00',NULL,162,84,26.5,35.4,6.29,95.4,8.15,4.23,4.1,4.22,1,130.5,9.57,6.22,315.88,34.73,4.36,NULL,'4th reading turbidity 4.22');
INSERT INTO `samples` VALUES (1446,29,'2022-08-03',1,'08:12:00',NULL,162,84,26.2,33.7,6,89.9,8.08,10,13.2,18.6,1,680.1,28.19,27.53,2362.31,434.99,32.05,NULL,'Moderate swell, mid-tide, clear sky');
INSERT INTO `samples` VALUES (1447,33,'2022-08-03',2,'08:54:00',NULL,162,84,26.9,35.8,6.31,97.1,8.18,0.67,0.88,0.82,1,91.13,8.61,5.1,207.85,14.92,0.97,NULL,'4th reading of turbidity 0.88');
INSERT INTO `samples` VALUES (1448,36,'2022-08-03',3,'09:28:00',NULL,162,84,26.8,35.7,7.18,109.8,8.16,0.85,0.94,0.92,1,111.75,9.34,5.65,180.54,3.57,6.43,NULL,'active with snorklers @ shoreline');
INSERT INTO `samples` VALUES (1449,37,'2022-08-03',4,'09:50:00',NULL,162,84,26.9,35.6,6.36,97.7,8.14,0.89,0.91,1.05,1,91.24,11.5,7.88,278.92,15.98,9.06,NULL,'Low tide, rocks exposed, moderate swell');
INSERT INTO `samples` VALUES (1450,50,'2022-08-04',1,'07:38:00',NULL,162,84,25.6,35.1,5.9,88.3,8.15,1.13,1.16,0.98,1,163.84,10.57,8.63,547.54,64.13,15.81,NULL,'Tour boat departing during collection');
INSERT INTO `samples` VALUES (1451,51,'2022-08-04',2,'08:12:00',NULL,162,84,26,34.5,6.38,95.7,8.08,2.23,2.39,2.23,1,275.29,8.73,6.85,931.68,108.51,6.82,NULL,NULL);
INSERT INTO `samples` VALUES (1452,38,'2022-08-04',3,'08:30:00',NULL,162,84,25.9,35.3,6.38,96,8.14,11.1,11.4,11.3,1,127.68,7.77,5.78,401.39,41.08,2.27,NULL,'Calm ocean, brownish water');
INSERT INTO `samples` VALUES (1453,39,'2022-08-04',4,'08:47:00',NULL,162,84,26,35.9,6.42,97.2,8.18,1.42,1.46,1.57,1,80.3,8,4.34,101.18,4.87,1.88,NULL,'Water looks clear, waves 1.5 feet');
INSERT INTO `samples` VALUES (1454,41,'2022-08-04',5,'09:03:00',NULL,162,84,26.8,35.5,6.37,97.4,8.17,12.2,14,15,1,137.35,7.98,5.86,318.96,43.36,2.56,NULL,'Shorebreak waves 2-3 feet, brown shore break, 4th turbidity reading');
INSERT INTO `samples` VALUES (1455,43,'2022-08-23',1,'07:52:00',NULL,162,85,26.3,33,6.29,94.1,8.11,12.9,12.9,13.8,1,222.92,14.6,12.57,1274.24,123.5,3.52,NULL,'Cloudy, Rained this morning, Low tide was at 0713 and is rising, water is calm with very small waves took 4th reading 14.3 and 5th 14.0');
INSERT INTO `samples` VALUES (1456,26,'2022-08-23',2,'08:14:00',NULL,162,85,26.7,33.7,6.09,91.9,8.03,9.68,9.22,9.52,1,96.99,10.79,9.96,680.58,11.57,4.81,NULL,'Paddle boarder in water, water looks green, tow dogs on beach, hot ans sunny. 4th turbitity reading 9.68. HQ40d turned off twice after pushing read button.');
INSERT INTO `samples` VALUES (1457,27,'2022-08-23',3,'08:32:00',NULL,162,85,26.9,33.5,6.03,91.3,8.06,10.8,11.2,11,1,162.63,10.34,9.02,896.81,73.92,3.67,NULL,'Water is clamer, particles in turbitity sample');
INSERT INTO `samples` VALUES (1458,28,'2022-08-23',4,'08:51:00',NULL,162,85,26.9,35.2,6.37,97.6,8.11,9.19,9.26,8.55,1,120.84,9.98,6.71,193.03,24.1,6.24,NULL,'one person went into the water during sampling, lots of people around area but not near 100 ft of site, 3-4 ft waves off in the distance, 4th reading 9.94, 5th 8.59. Did a second salinity reading it was the same 35.2');
INSERT INTO `samples` VALUES (1459,29,'2022-08-24',1,'08:26:00',NULL,162,85,26.9,33.1,6.35,95.8,8.1,4.18,4.37,4.48,1,406.12,17.51,16.79,1653.28,292.58,16.55,NULL,'KCP: Low tide @ \'fish camp\' minus people, one dog sitting in water, shower run-off flows toward beach missing entry into water - secondary turb series after very high reading series.');
INSERT INTO `samples` VALUES (1460,33,'2022-08-24',2,'09:00:00',NULL,162,85,27.8,34.3,6.33,97.9,8.12,2.16,1.83,1.98,1,224.99,11.68,8.55,577.41,138.77,3.51,NULL,'MMB: Lots people in water & on beach');
INSERT INTO `samples` VALUES (1461,36,'2022-08-24',3,'09:30:00',NULL,162,85,27.6,35.5,7.18,111.1,8.17,1.17,2.08,1.56,1,99.35,9.12,6.23,562.18,7.02,2.96,NULL,'MAN: mid tide with outside bay wave action');
INSERT INTO `samples` VALUES (1462,37,'2022-08-24',4,'09:55:00',NULL,162,85,27.3,35.3,6.33,97.6,8.1,1.45,1.67,1.89,1,95.33,9.69,7.79,247.22,14.3,5.25,NULL,'MAS: mid tide, lots of snorkelers, small shore break');
INSERT INTO `samples` VALUES (1463,50,'2022-08-25',1,'07:47:00',NULL,162,85,26.3,35.1,6,90.8,8.12,1.41,1.22,1.02,1,130.66,11.59,8.06,424.48,42.91,9.81,NULL,'Nice day');
INSERT INTO `samples` VALUES (1464,51,'2022-08-25',2,'08:05:00',NULL,162,85,26.7,34.3,6.8,103,8.14,1.25,1.1,1.19,1,221.96,10.5,8.18,707.82,137.28,7.43,NULL,'water slightly brown');
INSERT INTO `samples` VALUES (1465,38,'2022-08-25',3,'08:25:00',NULL,162,85,26.6,34.7,6.51,98.8,8.11,12,11.9,11.6,1,150.62,11.69,5.93,392.41,58.12,2.82,NULL,'*Standards were not written from the day before, were wrote down after end of sample day.');
INSERT INTO `samples` VALUES (1466,39,'2022-08-25',4,'08:45:00',NULL,162,85,26.8,35.5,6.5,99.2,8.17,1.58,1.69,1.83,1,85.8,10.59,5.43,78.33,2.91,0.69,NULL,NULL);
INSERT INTO `samples` VALUES (1467,41,'2022-08-25',5,'09:04:00',NULL,162,85,27.8,34.8,6.42,99.5,8.12,7.76,7.4,7.6,1,214.14,12.84,8.69,530.72,131.86,1.17,NULL,NULL);
INSERT INTO `samples` VALUES (1468,43,'2022-09-13',1,'07:52:00',NULL,162,86,26.1,34.2,6.44,96.2,8.13,10.2,9.89,10.8,1,185.87,13.57,12.4,1298.31,83.45,3.18,NULL,'high tide, swell, overcast, recent rain yet no active run-off');
INSERT INTO `samples` VALUES (1469,26,'2022-09-13',2,'08:10:00',NULL,162,86,26.6,35.4,6.23,94.5,8.1,24.5,25.2,24.9,1,140.44,12.08,8.31,384.26,22.91,5.93,NULL,'high tide, sunny, brown water with tree debris, recent storm -plant debris in NTU sample vial');
INSERT INTO `samples` VALUES (1470,27,'2022-09-13',3,'08:27:00',NULL,162,86,26.8,34.2,6.19,93.6,8.06,22,21.7,21.9,1,183.38,14.39,13.53,931.54,71.02,7.8,NULL,'high tide, small waves, water looks brown, recent storm');
INSERT INTO `samples` VALUES (1471,28,'2022-09-13',4,'08:43:00',NULL,162,86,27.2,35.5,6.29,96.4,8.13,13.2,13.9,14.4,1,157.68,12.55,9.38,221.52,22.27,8.49,NULL,'recent heavy rain & flooded area, no active flow in stream');
INSERT INTO `samples` VALUES (1472,29,'2022-09-14',1,'08:22:00',NULL,162,86,26.5,34.1,5.19,78,8.02,17.3,18,16.4,1,694.81,60.73,58.41,2175.12,367.84,162.35,NULL,'no active flow yet wet from previous heavy rain 2 days ago-5 turb readings remain high');
INSERT INTO `samples` VALUES (1473,33,'2022-09-14',2,'09:03:00',NULL,162,86,27.3,35.8,6.23,96,8.16,1.26,1.27,1.27,1,98.71,10.02,4.73,127.98,9.71,0.5,NULL,NULL);
INSERT INTO `samples` VALUES (1474,36,'2022-09-14',3,'09:21:00',NULL,162,86,27.1,35.8,7.04,108.3,8.16,1.13,1.28,1.87,1,121.56,8.59,2.83,103.37,4.52,3.55,NULL,'high tide, calm water');
INSERT INTO `samples` VALUES (1475,37,'2022-09-14',4,'09:40:00',NULL,162,86,27,35.8,6.24,95.7,8.15,0.82,1,0.88,1,102.19,8.29,4.83,125.54,9.46,4.73,NULL,'high tide, calm with shore break');
INSERT INTO `samples` VALUES (1476,50,'2022-09-15',1,'08:02:00',NULL,162,86,26.5,35.5,5.92,90.1,8.14,1.19,1.18,1.21,1,121.69,9.08,5.86,341.25,39.27,7.19,NULL,'high tide, tour boat leaves dock right before collection at site');
INSERT INTO `samples` VALUES (1477,51,'2022-09-15',2,'08:10:00',NULL,162,86,26.7,35.2,6.33,96.4,8.1,4.89,4.81,4.78,1,188.91,13.53,8.29,404.66,59.86,8.31,NULL,'high tide, browish waves, small amount fresh water in ditch from rain two days ago');
INSERT INTO `samples` VALUES (1478,38,'2022-09-15',3,'08:30:00',NULL,162,86,26.6,35.4,6.3,96,8.13,12.5,11.7,11.5,1,125.04,9.7,5.83,320.33,40.88,3.03,NULL,'high tide, gentle shore break & brownish waves');
INSERT INTO `samples` VALUES (1479,39,'2022-09-15',4,'09:00:00',NULL,162,86,26.9,36.1,6.4,98.2,8.18,2.77,2.85,2.86,1,97.66,7.69,3.46,57.92,1.42,0.68,NULL,'high tide, calm shore break with sediment in waves');
INSERT INTO `samples` VALUES (1480,41,'2022-09-15',5,'09:20:00',NULL,162,86,27.3,35.6,6.32,97.4,8.16,20.5,20.9,22.8,1,124.67,7.1,2.67,208.19,23.91,0.99,NULL,'high tide, shore erosion visible with sand inwaves - 5 turb readings all high - canoe club members on beach');
INSERT INTO `samples` VALUES (1481,43,'2022-10-04',1,'07:53:00',NULL,162,87,25.3,31.4,6.67,97.3,8.11,11.1,10.8,11,1,346.61,15.26,7.09,3862.71,231.77,3.51,NULL,'Brown water recent rain, tide is rising, some small swell and light wind. particles in NTU sample. 4th-12.8, 5th11.1');
INSERT INTO `samples` VALUES (1482,26,'2022-10-04',2,'08:15:00',NULL,162,87,24.9,32.4,6.44,93.4,8.11,19.7,19.6,20.1,1,254.18,19.46,11.63,2400.15,131.7,3.48,NULL,'water looks green/brown, suspended particles in NTU 4th20.0');
INSERT INTO `samples` VALUES (1483,27,'2022-10-04',3,'08:30:00',NULL,162,87,25.6,33.5,6.16,91,8.07,12.8,15.2,15.4,1,166.53,12.86,9.96,996.44,42.51,2.11,NULL,'water is brownish green small white caps 4th 16.5, 5th-16.2');
INSERT INTO `samples` VALUES (1484,28,'2022-10-04',4,'08:48:00',NULL,162,87,25.7,34.2,6.5,97.1,8.12,7.65,8.07,7.79,1,151.66,11.54,8.15,550.12,32.97,2.5,NULL,'Waves 1-2 ft water brown green. there was one paddle boarder coming out as we were coming in to sample. 4th- 7.65');
INSERT INTO `samples` VALUES (1485,29,'2022-10-05',1,'08:05:00',NULL,162,87,26,32.1,6.24,92.1,8.05,9.56,9.89,9.84,1,893.75,37.8,36.36,3660.34,699.49,11.29,NULL,'low tide incoming');
INSERT INTO `samples` VALUES (1486,33,'2022-10-05',2,'08:45:00',NULL,162,87,26.8,35.2,6.31,96.3,8.11,1.65,1.31,1.51,1,175.02,10.2,5.29,269.58,61.26,1.88,NULL,'syringe filter system issue/placed in cooler & sample taken in lab');
INSERT INTO `samples` VALUES (1487,36,'2022-10-05',3,'09:05:00',NULL,162,87,26.8,35.3,7.02,107,8.1,1.61,1.4,1.74,1,121.54,8.98,4.66,223.79,5.88,3.51,NULL,'high tide at shoreline, gentle shore break');
INSERT INTO `samples` VALUES (1488,37,'2022-10-05',4,'09:25:00',NULL,162,87,26.7,35.4,6.3,96.1,8.07,1.54,1.49,1.64,1,117.38,9.9,7.58,237.12,14.22,5.69,NULL,'snorkle tourists enter on coral reef/unsafe entrance');
INSERT INTO `samples` VALUES (1489,50,'2022-10-06',1,'07:50:00',NULL,162,87,25.5,35,6.11,91.1,8.15,2.85,2.18,2.03,1,138.81,12.03,7.9,404.34,39.53,8,NULL,'no clear bottles for turbidity samples. Used water from bucket swirled and rised sample vile');
INSERT INTO `samples` VALUES (1490,51,'2022-10-06',2,'08:40:00',NULL,162,87,26.4,34.5,6.94,104.9,8.17,1.56,1.78,1.6,1,225.37,8.94,6.47,612.52,101.36,5.26,NULL,'Clear bottles were delivered');
INSERT INTO `samples` VALUES (1491,38,'2022-10-06',3,'08:50:00',NULL,162,87,26.3,35.1,6.73,102.1,8.16,5.48,5.56,5.68,1,185.28,7.82,4.3,335.75,40.18,6.36,NULL,NULL);
INSERT INTO `samples` VALUES (1492,39,'2022-10-06',4,'09:10:00',NULL,162,87,26.6,35.7,6.49,99.2,8.19,0.69,0.8,0.73,1,105.34,8,3.49,56.53,1.95,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (1493,41,'2022-10-06',5,'09:23:00',NULL,162,87,27,35.1,6.41,98.4,8.15,11,11.2,10.6,1,209.51,9.83,6.36,401.21,103.16,1.8,NULL,NULL);
INSERT INTO `samples` VALUES (1494,43,'2022-10-25',1,'07:55:00',NULL,162,88,26.9,34.5,5.73,86.7,8.1,2.45,1.98,2.43,1,177.63,10.26,7.01,606.69,60.85,3.93,NULL,'Canoes on beach, lots of people on beach, calm sea, no waves or wind');
INSERT INTO `samples` VALUES (1495,26,'2022-10-25',2,'08:20:00',NULL,162,88,25.8,33.2,5.68,83.9,8.02,10.1,9.57,10.4,1,133.61,13.78,11.93,1189.4,36.22,1.11,NULL,'calm small waves, slight ripples in the water, some sediment/ twigs in the water, minimal wind');
INSERT INTO `samples` VALUES (1496,27,'2022-10-25',3,'08:35:00',NULL,162,88,27.1,33.7,5.53,84.6,8.08,4.15,5.45,4.84,1,153.61,10.46,6.76,620.17,52.04,2.55,NULL,'Calm, small waves 4th turbitidy 4.84');
INSERT INTO `samples` VALUES (1497,28,'2022-10-25',4,'08:52:00',NULL,162,88,27.2,35,6.02,92,8.06,9.39,9.8,9.4,1,125.27,10.33,7.26,341.12,19.2,6.73,NULL,'light wind, small waves');
INSERT INTO `samples` VALUES (1498,29,'2022-10-26',1,'08:05:00',NULL,162,88,27.4,34.8,5.62,86.2,8.05,2.17,1.83,2.91,1,356.11,19.38,16.06,1261.14,200.53,14.99,NULL,'High tide super calm waters');
INSERT INTO `samples` VALUES (1499,33,'2022-10-26',2,'08:35:00',NULL,162,88,27.5,35.6,6.24,96.3,8.11,0.76,0.68,0.75,1,91.23,8.58,3.37,81.69,3.18,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (1500,36,'2022-10-26',3,'09:00:00',NULL,162,88,27,35.2,6.28,96,7.98,0.91,0.97,1.08,1,107.24,8.83,4.35,221.71,6.36,3.61,NULL,NULL);
INSERT INTO `samples` VALUES (1501,37,'2022-10-26',4,'09:30:00',NULL,162,88,27.1,35.3,5.77,88.3,8.03,0.65,0.58,0.57,1,120.77,10.01,6.4,391.66,20.08,2.51,NULL,NULL);
INSERT INTO `samples` VALUES (1502,50,'2022-10-27',1,'07:42:00',NULL,162,88,25.9,35.1,5.65,84.9,8.06,0.82,0.75,0.78,1,206.12,12.76,8.44,459.18,53.93,14.24,NULL,'windy, cool, high tide was at 0544, people loading in boats');
INSERT INTO `samples` VALUES (1503,51,'2022-10-27',2,'08:03:00',NULL,162,88,25.9,35,6.46,96.9,8.02,3.82,3.39,3.49,1,140.26,9.46,4.88,297.43,39.6,5.56,NULL,'calmer winds');
INSERT INTO `samples` VALUES (1504,38,'2022-10-27',3,'08:19:00',NULL,162,88,26.3,35.1,6.17,93.1,8.06,9.89,9.77,10.4,1,137.76,8.52,4.89,327.34,36.51,2.46,NULL,'people walking by as sample was being taken');
INSERT INTO `samples` VALUES (1505,39,'2022-10-27',4,'08:39:00',NULL,162,88,26.5,35.6,6.34,96.4,8.11,0.83,0.72,0.74,1,98.33,8.46,3.42,61.96,2.25,1.63,NULL,'dive flag in water assuming one diver may be near by');
INSERT INTO `samples` VALUES (1506,41,'2022-10-27',5,'08:53:00',NULL,162,88,27.2,35.2,6.19,94.9,8.08,1.33,1.29,1.3,1,171.61,9.03,4.42,267,66.02,4.12,NULL,'calm waves light winds');
INSERT INTO `samples` VALUES (1507,43,'2022-11-15',1,'07:52:00',NULL,162,89,24.8,34.1,6.27,91.7,8.15,3.25,3.51,3.99,1,177.31,11.13,6.71,916.37,83.08,2.27,NULL,'High tide, windy, tiny waves, 2 canoes just got out of water and are on the beach');
INSERT INTO `samples` VALUES (1508,26,'2022-11-15',2,'08:13:00',NULL,162,89,24,33.3,6.18,89,8.12,8.58,8.57,8.39,1,157.31,12.17,7.98,950.9,72.94,2.48,NULL,'High tide, Some small waves, wind');
INSERT INTO `samples` VALUES (1509,27,'2022-11-15',3,'08:30:00',NULL,162,89,23.9,33.7,6.09,87.5,8.13,5.84,6.1,5.13,1,134.73,8.62,5.97,687.95,51.66,1.88,NULL,'small waves, windy, few people swimming');
INSERT INTO `samples` VALUES (1510,28,'2022-11-15',4,'08:48:00',NULL,162,89,25.2,34.7,6.26,92.8,8.14,13.3,13,12.8,1,164.28,10.67,6.79,372.3,86.31,2.97,NULL,'2 people on beach moved to water.');
INSERT INTO `samples` VALUES (1511,29,'2022-11-16',1,'08:01:00',NULL,162,89,25.7,34.3,5.93,88.1,8.12,5.19,5.59,5.74,1,411.34,20.95,17.74,1436.61,257.44,15.23,NULL,NULL);
INSERT INTO `samples` VALUES (1512,33,'2022-11-16',2,'08:33:00',NULL,162,89,25.8,35.4,6.48,97.1,8.17,0.79,0.75,0.75,1,100.31,7.05,3.27,171.46,26.2,1.03,NULL,NULL);
INSERT INTO `samples` VALUES (1513,36,'2022-11-16',3,'08:56:00',NULL,162,89,25.8,35.2,6.62,99,8.08,0.56,0.9,0.74,1,85.54,7.54,4.32,181.72,5.36,2.58,NULL,NULL);
INSERT INTO `samples` VALUES (1514,37,'2022-11-16',4,'09:12:00',NULL,162,89,25.9,35.4,6.12,91.8,8.12,0.59,0.6,0.67,1,88.4,8.69,4.69,156.85,10.73,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (1515,50,'2022-11-17',1,'07:45:00',NULL,162,89,25.4,34.8,5.85,86.7,8.12,1.74,1.84,1.66,1,129.33,9.67,6.79,467.48,51.23,8.36,NULL,'Did Turbidity verification twice on the low sample with exact results. Issue with Turbidity blank, team forgot to read blank, redid first turbidity points at Harbor, blank would not reacd below 0.17, did all troubleshooting.');
INSERT INTO `samples` VALUES (1516,51,'2022-11-17',2,'08:19:00',NULL,162,89,25.5,34,6.6,97.5,8.03,3.11,3.05,2.96,1,213.68,8.91,5.01,501.3,115.32,5.59,NULL,'Churned up with shorebreak Algae in bucket');
INSERT INTO `samples` VALUES (1517,38,'2022-11-17',3,'08:33:00',NULL,162,89,25.8,35,6.42,95.9,8.13,5.22,5.62,5.34,1,117.73,8.86,3.95,338.2,37.11,3.26,NULL,NULL);
INSERT INTO `samples` VALUES (1518,39,'2022-11-17',4,'08:55:00',NULL,162,89,26.3,35.5,6.54,98.7,8.18,1.33,1.21,1.26,1,74.58,7.87,3.35,52.04,2.44,0.87,NULL,NULL);
INSERT INTO `samples` VALUES (1519,41,'2022-11-17',5,'09:14:00',NULL,162,89,26.2,35.1,6.49,97.9,8.17,4.15,3.83,4.15,1,137.3,8.81,3.6,330.29,61.99,0.45,NULL,NULL);
INSERT INTO `samples` VALUES (1520,43,'2022-12-06',1,'07:56:00',NULL,162,90,25.4,34.4,6.23,92.3,8.15,2.26,2.82,2.43,1,161.5,9.24,6.3,765.28,66.39,3.37,NULL,'water calm, no wind, 12 peo paddling out in water');
INSERT INTO `samples` VALUES (1521,26,'2022-12-06',2,'08:17:00',NULL,162,90,25.3,34.2,6.04,89.1,8.12,10.2,9.94,10.5,1,150.71,11.16,7.77,530.21,31.72,3.73,NULL,'tide receding, calm water, 4 peo paddling nearby, peo walking by');
INSERT INTO `samples` VALUES (1522,27,'2022-12-06',3,'08:36:00',NULL,162,90,25.6,34.3,5.94,88.2,8.09,5.2,5.14,5.1,1,176.71,8.25,5.96,452.6,42.25,4.18,NULL,'light swell, 2 fishermen on beach, peo walking by');
INSERT INTO `samples` VALUES (1523,28,'2022-12-06',4,'08:52:00',NULL,162,90,25.8,35.8,6.38,95.9,8.13,6.96,6.14,5.98,1,155.37,10.51,8.51,278.47,39.94,9.48,NULL,'2 paddlers going out before sample, one canoe coming in-approx 50\'');
INSERT INTO `samples` VALUES (1524,29,'2022-12-07',1,'08:10:00',NULL,162,90,25.6,34,6.15,91,8.08,3.86,3.25,3.36,1,376.59,21.17,20.2,1364.39,235.93,7.59,NULL,'calm water, high at shoreline, 4 turb readings cloudy sky, 4 turb readings');
INSERT INTO `samples` VALUES (1525,33,'2022-12-07',2,'08:53:00',NULL,162,90,25.7,35.7,6.4,96,8.13,0.67,0.58,0.57,1,92.55,7.85,3.59,110.08,6.22,0.28,NULL,'calm water, receding tide, cloudy sky, 4 turb readings');
INSERT INTO `samples` VALUES (1526,36,'2022-12-07',3,'09:17:00',NULL,162,90,25.6,35.3,7.01,104.5,8.06,1.45,1.84,1.69,1,99.97,9.75,4.47,266.37,5.99,3.8,NULL,'calm water, cloudy sky, receding tide, no people');
INSERT INTO `samples` VALUES (1527,37,'2022-12-07',4,'09:35:00',NULL,162,90,25.6,35.4,6.57,98,8.09,1.35,1.26,1.27,1,110.49,10.45,6.96,510.79,23.59,2.99,NULL,'calm water, cloudy sky, receding tide');
INSERT INTO `samples` VALUES (1528,50,'2022-12-08',1,'07:45:00',NULL,162,90,24.8,35.3,6.23,91.3,8.08,3.97,4.34,3.81,1,133.89,9.9,6.98,329.8,46.17,5.83,NULL,'very windy, 5 turb readings');
INSERT INTO `samples` VALUES (1529,51,'2022-12-08',2,'08:03:00',NULL,162,90,24.2,34.9,6.59,95.4,8.03,9.43,8.5,9.84,1,181.59,7.73,5.05,260.94,71.99,5.54,NULL,'windy, calm water, cool air temp, tide receding, 5 turb readings');
INSERT INTO `samples` VALUES (1530,38,'2022-12-08',3,'08:23:00',NULL,162,90,24.6,35,6.49,94.9,8.1,59.7,60,59.7,1,183.31,9.87,7.89,400.07,81.24,5.48,NULL,'peo walking by on beach, calm water, sample looks brown w/particles, 5 turb readings');
INSERT INTO `samples` VALUES (1531,39,'2022-12-08',4,'08:44:00',NULL,162,90,24.8,35.7,6.69,98.6,8.14,1.47,1.46,1.86,1,128.26,7.52,3.6,84.93,3.22,3.74,NULL,'windy, small swell, water looks brownish/green, swamp smell, peo walking by, 4 turb readings');
INSERT INTO `samples` VALUES (1532,41,'2022-12-08',5,'09:04:00',NULL,162,90,26.2,35.1,6.45,96.7,8.11,10.5,9.42,11.1,1,179.19,8.06,5.24,434.32,105.1,1.13,NULL,'calm wind, water appears flat & cleaner, sand in turb sample, 5 turb readings, peo walking by');
INSERT INTO `samples` VALUES (1533,43,'2023-01-06',1,'08:08:00',NULL,162,91,24.6,34.5,6.23,90.4,8.09,6.52,6.87,6.91,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Medium tide, 4th turbidity reading');
INSERT INTO `samples` VALUES (1534,26,'2023-01-06',2,'08:36:00',NULL,162,91,23.9,32.6,6.63,94.1,8.05,24.4,23.4,23.4,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Calm wind, no waves, silt');
INSERT INTO `samples` VALUES (1535,27,'2023-01-06',3,'08:57:00',NULL,162,91,25.5,34.1,5.56,87.9,8.12,6.95,7.46,6.54,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Calm wind, no waves, silt in water');
INSERT INTO `samples` VALUES (1536,28,'2023-01-06',4,'09:15:00',NULL,162,91,25.1,34.6,6.31,92.7,8.11,2.84,3.11,3.19,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No wind, small waves, clear water, 4th turbidity reading');
INSERT INTO `samples` VALUES (1537,29,'2023-01-04',1,'07:55:00',NULL,162,91,24.1,32.5,6.62,94.4,8.08,3.31,3.2,3.11,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'water sitting in creek - absorbed into soil - no flow to ocean');
INSERT INTO `samples` VALUES (1538,33,'2023-01-04',2,'08:40:00',NULL,162,91,24.9,35.2,6.82,100.6,8.15,2.31,2.37,2.26,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'low tide - shore break - moderate surf');
INSERT INTO `samples` VALUES (1539,36,'2023-01-04',3,'09:04:00',NULL,162,91,25,34.9,7.14,105,8.09,1.02,1.39,1.27,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'low tide - 5th read of turb needed - not taken');
INSERT INTO `samples` VALUES (1540,37,'2023-01-04',4,'09:20:00',NULL,162,91,24.8,34.1,6.64,97,8.04,1.97,1.9,2.03,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'low tide - moderate surf - wind N');
INSERT INTO `samples` VALUES (1541,50,'2023-01-05',1,'07:54:00',NULL,162,91,24.6,34.9,6.4,93.7,8.15,0.93,0.92,0.91,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Calm harbor, no wind.');
INSERT INTO `samples` VALUES (1542,51,'2023-01-05',2,'08:13:00',NULL,162,91,24.6,34.2,6.58,96.4,8.06,4.24,4.3,4.23,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Calm water, tide receding. Particles in sample water.');
INSERT INTO `samples` VALUES (1543,38,'2023-01-05',3,'08:35:00',NULL,162,91,24.8,34.8,6.73,98.7,8.14,7.61,7.74,7.6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 person walking by; water calm, light wind.');
INSERT INTO `samples` VALUES (1544,39,'2023-01-05',4,'08:59:00',NULL,162,91,24.7,35.3,6.86,100.8,8.19,0.68,0.77,0.82,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Swell is small, no wind.');
INSERT INTO `samples` VALUES (1545,41,'2023-01-05',5,'09:17:00',NULL,162,91,25.4,34.2,6.57,97.2,8.11,35.4,36.2,34.2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Water is brown, calm water. Sample water brown.');
INSERT INTO `samples` VALUES (1546,43,'2023-01-24',1,'08:00:00',NULL,162,92,24.5,34.9,6.25,91.3,8.08,11.5,13.2,11.6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Extreme high tide, turbid, lots wave action, large swell, 4th turb 12.6');
INSERT INTO `samples` VALUES (1547,26,'2023-01-24',2,'08:25:00',NULL,162,92,25,35.2,6.62,97.8,8.1,49.9,45.2,46.7,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Very high tide, shore break, large swell');
INSERT INTO `samples` VALUES (1548,27,'2023-01-24',3,'08:43:00',NULL,162,92,25.1,34.9,6.58,97.1,8.09,9.61,10.4,10.7,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'High tide, shore break,large swell, debris on beach, no wind');
INSERT INTO `samples` VALUES (1549,28,'2023-01-24',4,'09:01:00',NULL,162,92,25.1,35.2,6.67,98.6,8.09,7.02,8.56,8.25,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shore break, large swell, sand in water, turbidity, no wind, sunny');
INSERT INTO `samples` VALUES (1550,29,'2023-01-25',1,'08:00:00',NULL,162,92,24.9,34.7,6.61,97.2,8.13,4.68,5.67,5.15,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rain previous evening, stream running N. of collection site, large swell');
INSERT INTO `samples` VALUES (1551,33,'2023-01-25',2,'08:50:00',NULL,162,92,25,35.5,6.81,100.8,8.19,8.68,9.1,9.43,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'High tide, large swell, narrow strip of beach, shore break');
INSERT INTO `samples` VALUES (1552,36,'2023-01-25',3,'09:16:00',NULL,162,92,25.2,35.3,6.96,103.2,8.11,1.16,1.21,1.21,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'High tide, large swell, calm in bay, high oxygen score');
INSERT INTO `samples` VALUES (1553,37,'2023-01-25',4,'09:45:00',NULL,162,92,25.4,35.2,6.56,97.7,8.11,1.9,2.02,1.87,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'High tide, large swell');
INSERT INTO `samples` VALUES (1554,50,'2023-01-26',1,'07:50:00',NULL,162,92,24.1,24,6.67,90.5,8.17,1.7,1.44,1.43,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Raining at collection site, 4th turb reading 1.44');
INSERT INTO `samples` VALUES (1555,51,'2023-01-26',2,'08:15:00',NULL,162,92,24,29.7,6.32,89,8.07,4.36,4.6,4.35,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Light rain at site, 2nd reading salinity');
INSERT INTO `samples` VALUES (1556,38,'2023-01-26',3,'08:41:00',NULL,162,92,24.3,30,6.6,93.4,8.14,14.4,13.3,13.8,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Heavy rain at collection site');
INSERT INTO `samples` VALUES (1557,39,'2023-01-26',4,'09:06:00',NULL,162,92,24.4,30.9,7,99.9,8.19,2.87,2.79,2.58,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1558,41,'2023-01-26',5,'09:25:00',NULL,162,92,25.4,30.2,6.7,96.5,8.12,52.1,57.9,59.9,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (1559,43,'2023-02-14',1,'08:05:00',NULL,162,93,22.8,32.1,7.99,92.1,8.12,15.3,15.2,15.8,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'high tide, sediment on shoreline, wind chop, windy day');
INSERT INTO `samples` VALUES (1560,26,'2023-02-14',2,'08:31:00',NULL,162,93,22.3,33,8.09,92.7,8.12,18.6,17.4,18,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'high tide, wind 10mph, brown water @ shoreline, light rain early am');
INSERT INTO `samples` VALUES (1561,27,'2023-02-14',3,'08:47:00',NULL,162,93,22.6,33,7.61,87.7,8.13,12.7,13.3,14,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'brown water');
INSERT INTO `samples` VALUES (1562,28,'2023-02-14',4,'09:10:00',NULL,162,93,23.1,33.9,7.75,90,8.13,3.01,3.28,3.06,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'greenish water, very windy, fifth turb read 3.28');
INSERT INTO `samples` VALUES (1563,29,'2023-02-15',1,'08:12:00',NULL,162,93,23.4,32.5,7.49,87.7,8.05,2.92,2.82,2.41,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'previous rainfall water in tunnel - did not r  reach shoreline');
INSERT INTO `samples` VALUES (1564,33,'2023-02-15',2,'08:49:00',NULL,162,93,23.6,35,8.41,98.8,8.16,1.36,1.52,1.36,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'low tide, clear sky, calm sea & wind');
INSERT INTO `samples` VALUES (1565,36,'2023-02-15',3,'09:09:00',NULL,162,93,23.8,34.2,8.75,103.2,8.08,1.38,1.34,1.09,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calm water and small waves  - potential for 4th turb reading');
INSERT INTO `samples` VALUES (1566,37,'2023-02-15',4,'09:30:00',NULL,162,93,24.1,35.1,8.25,98,8.14,1.8,2.12,1.85,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calm water and small waves');
INSERT INTO `samples` VALUES (1567,50,'2023-02-16',1,'07:48:00',NULL,162,93,23.9,34.7,7.91,93.3,8.14,1.04,1.02,0.94,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calm waters, overcast sky, no wind');
INSERT INTO `samples` VALUES (1568,51,'2023-02-16',2,'08:13:00',NULL,162,93,23.8,33.2,7.8,92,8,0.66,0.69,0.75,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calm waters, light rain early am, sewage smell near site');
INSERT INTO `samples` VALUES (1569,38,'2023-02-16',3,'08:33:00',NULL,162,93,24.2,34,8.15,96.5,8.15,9.24,9.62,9.34,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calm water, overcast sky, no wind');
INSERT INTO `samples` VALUES (1570,39,'2023-02-16',4,'09:00:00',NULL,162,93,24.2,35.2,8.36,99.2,8.17,1.56,2.12,1.84,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calm ocean, overcast sky, no wind');
INSERT INTO `samples` VALUES (1571,41,'2023-02-16',5,'09:23:00',NULL,162,93,24.7,34.3,8.02,96.1,8.12,23.1,24.6,21.2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calm ocean, overcast sky, no wind - 4th turb reading');
INSERT INTO `samples` VALUES (1572,14,'2016-06-16',1,'07:45:00',NULL,162,94,25.3,29.3,6.86,101.2,7.96,23.3,23.3,23.3,1,78.22,10.8,7.56,330.61,5.91,2.74,NULL,NULL);
INSERT INTO `samples` VALUES (1573,15,'2016-06-16',2,'08:20:00',NULL,162,94,25.4,27.7,6.61,97.8,7.91,5.48,5.48,5.48,1,107.57,15.37,7.28,451.55,7.11,8.69,NULL,NULL);
INSERT INTO `samples` VALUES (1574,16,'2016-06-16',3,'09:17:00',NULL,162,94,25.2,28.1,7,103.1,8.06,16.87,16.87,16.87,1,63.47,16.77,6.34,112.01,2.64,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (1575,17,'2016-06-16',4,'09:40:00',NULL,162,94,25.6,28,7.1,105.2,8.08,10.71,10.71,10.71,1,66.16,20.47,5.71,137.9,2.84,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (1576,18,'2016-06-16',5,'10:00:00',NULL,162,94,26,36,7.01,104.6,8.07,5.37,5.37,5.37,1,122.85,20.4,6.52,145.4,3.26,4.45,NULL,NULL);
INSERT INTO `samples` VALUES (1577,7,'2016-06-15',1,'07:37:00',NULL,162,94,26.7,27.8,6.27,94.7,8.05,2.89,2.89,2.89,1,65.9,17.64,7.82,461.59,2.7,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (1578,8,'2016-06-15',2,'08:28:00',NULL,162,94,26.8,28.1,6.57,99.6,7.99,2.8,2.8,2.8,1,90.04,14.32,6.22,169.92,2.79,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (1579,9,'2016-06-15',3,'08:59:00',NULL,162,94,27.2,28.2,6.72,102.4,8.09,2.91,2.91,2.91,1,72.13,11,5.58,125.36,4.24,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (1580,12,'2016-06-15',4,'10:42:00',NULL,162,94,27.4,29.6,6.94,106.1,8.11,1.19,1.19,1.19,1,71.07,14.41,4.85,72.9,4.07,2.8,NULL,NULL);
INSERT INTO `samples` VALUES (1581,2,'2016-06-14',1,'08:03:00',NULL,162,94,25.7,33.3,6.86,102.1,8.11,13.9,13.9,13.9,1,311.07,26.26,18.72,1697.47,233.11,2.81,NULL,NULL);
INSERT INTO `samples` VALUES (1582,3,'2016-06-14',2,'08:37:00',NULL,162,94,24.9,23.8,6.86,100.6,8.07,16.8,16.8,16.8,1,75.08,18.8,9.06,1720.37,5.65,4.15,NULL,NULL);
INSERT INTO `samples` VALUES (1583,4,'2016-06-14',3,'09:15:00',NULL,162,94,26.8,35,6.72,101.6,8.06,2.62,2.62,2.62,1,91.26,10.73,8.46,604.37,24.72,1.88,NULL,NULL);
INSERT INTO `samples` VALUES (1584,5,'2016-06-14',4,'09:50:00',NULL,162,94,27.2,34.7,6.78,103.5,8.06,5.86,5.86,5.86,1,117.22,16.68,9.4,576.28,49.04,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (1585,6,'2016-06-14',5,'10:24:00',NULL,162,94,27.3,34.6,6.66,101.8,8.15,3.47,3.47,3.47,1,84.6,24.07,12.38,822.08,21.35,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1586,14,'2016-06-30',1,'07:33:00',NULL,162,95,27.7,30.3,6.43,98.9,8.01,7.4,7.4,7.4,1,84.09,14.15,5.29,354.48,1.74,4,NULL,NULL);
INSERT INTO `samples` VALUES (1587,15,'2016-06-30',2,'08:00:00',NULL,162,95,27.1,29.1,6.08,92.7,8.01,2.61,2.61,2.61,1,62.48,15.76,5.35,396.39,2.73,3.12,NULL,NULL);
INSERT INTO `samples` VALUES (1588,16,'2016-06-30',3,'08:31:00',NULL,162,95,26.9,29.7,6.81,103.4,8.05,10.6,10.6,10.6,1,76.47,12.3,4.05,113.15,0.12,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (1589,17,'2016-06-30',4,'08:50:00',NULL,162,95,27.4,29.3,6.88,105.2,8.1,3.37,3.37,3.37,1,75.58,12.24,3.99,138.61,3.41,3.93,NULL,NULL);
INSERT INTO `samples` VALUES (1590,18,'2016-06-30',5,'09:15:00',NULL,162,95,27.7,29.5,6.7,103.1,8.07,4.54,4.54,4.54,1,60.96,12.42,4.49,72.63,0.41,3.48,NULL,NULL);
INSERT INTO `samples` VALUES (1591,7,'2016-06-29',1,'07:43:00',NULL,162,95,27,30.1,6.34,96.5,7.98,1.65,1.65,1.65,1,63.47,15.83,6.8,317.31,2.06,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (1592,8,'2016-06-29',2,'08:24:00',NULL,162,95,27.2,29.1,6.29,96,8.04,3.43,3.43,3.43,1,65.05,15.92,7.83,245.7,5.67,2.24,NULL,NULL);
INSERT INTO `samples` VALUES (1593,9,'2016-06-29',3,'08:50:00',NULL,162,95,27.3,28.9,6.21,95,8.02,1.98,1.98,1.98,1,72.79,15.9,6.78,217.71,6.28,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (1594,11,'2016-06-29',4,'10:04:00',NULL,162,95,28.5,29.9,6.6,102.1,8.07,4.53,4.53,4.53,1,97.7,14.02,6.11,201.84,8.61,11.26,NULL,NULL);
INSERT INTO `samples` VALUES (1595,12,'2016-06-29',5,'10:39:00',NULL,162,95,28,29.3,7.17,111.1,8.1,1.07,1.07,1.07,1,87.44,13.94,4.5,84.66,3.88,6.2,NULL,NULL);
INSERT INTO `samples` VALUES (1596,2,'2016-06-28',1,'07:25:00',NULL,162,95,25.7,26.4,6.71,100,8.09,11.73,11.73,11.73,1,332.98,24.8,18.29,1621.15,259.15,5.43,NULL,NULL);
INSERT INTO `samples` VALUES (1597,3,'2016-06-28',2,'07:54:00',NULL,162,95,24.2,22.2,6.9,100.3,8.13,9.79,9.79,9.79,1,75.12,14.77,8.49,1435.92,6.13,3.59,NULL,NULL);
INSERT INTO `samples` VALUES (1598,4,'2016-06-28',3,'08:22:00',NULL,162,95,26.4,27.6,6.59,99.3,8.1,1.77,1.77,1.77,1,90.93,16.97,8.28,510.71,26.44,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (1599,5,'2016-06-28',4,'08:46:00',NULL,162,95,26.6,28.2,6.81,103,8.09,3.43,3.43,3.43,1,121.25,18.89,9.13,649.57,57.28,3.2,NULL,NULL);
INSERT INTO `samples` VALUES (1600,6,'2016-06-28',5,'09:06:00',NULL,162,95,26.9,27.9,6.77,103,8.13,3.13,3.13,3.13,1,83.6,20.43,10.91,633.71,15.03,3.34,NULL,NULL);
INSERT INTO `samples` VALUES (1601,13,'2016-07-14',1,'07:38:00',NULL,162,96,27,36.9,5.55,85.7,7.99,1.07,1.07,1.07,1,79.94,13.63,4.67,136.12,2.54,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (1602,14,'2016-07-14',2,'08:12:00',NULL,162,96,28.2,37.4,6.22,98.1,8.02,22.8,22.8,22.8,1,67.22,14.86,7.36,595.45,1.49,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1603,15,'2016-07-14',3,'08:37:00',NULL,162,96,27.6,36.9,5.92,92.1,7.96,4.21,4.21,4.21,1,65.68,15.9,6.58,452.22,3.83,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (1604,16,'2016-07-14',4,'09:00:00',NULL,162,96,27.8,37.2,6.65,103.9,8.09,4.15,4.15,4.15,1,77.7,11.77,4.37,74.21,1.87,2.19,NULL,NULL);
INSERT INTO `samples` VALUES (1605,17,'2016-07-14',5,'09:25:00',NULL,162,96,28.1,37.8,6.74,106.3,8.12,3.96,3.96,3.96,1,64.97,11.63,3.26,111.92,3.02,2.43,NULL,NULL);
INSERT INTO `samples` VALUES (1606,18,'2016-07-14',6,'09:48:00',NULL,162,96,28.4,37.5,6.69,106.7,8.05,2.41,2.41,2.41,1,59.68,12.45,4.42,149.82,1.3,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (1607,7,'2016-07-13',1,'07:35:00',NULL,162,96,26.9,36.2,5.9,90.6,8.04,2.64,2.64,2.64,1,69.41,17.38,8.43,405.4,3.1,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1608,8,'2016-07-13',2,'08:07:00',NULL,162,96,27,36,5.49,84.5,8.01,2.01,2.01,2.01,1,81.9,17.35,8.05,279.73,8.05,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (1609,9,'2016-07-13',3,'08:29:00',NULL,162,96,27.4,36,5.39,83.3,8,4.96,4.96,4.96,1,97.03,18.16,8.69,550.84,22.19,6.61,NULL,NULL);
INSERT INTO `samples` VALUES (1610,11,'2016-07-13',4,'09:20:00',NULL,162,96,28.1,37.8,6.56,103.6,8.1,2.57,2.57,2.57,1,98.89,13.9,6.06,87.57,1.38,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (1611,12,'2016-07-13',5,'09:48:00',NULL,162,96,28,37.4,6.98,109.8,8.04,1.86,1.86,1.86,1,75.5,13.92,5.1,120.86,5.1,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (1612,2,'2016-07-12',1,'07:19:00',NULL,162,96,26.6,33.1,6.49,97.4,8.09,5.14,5.14,5.14,1,308.74,24.52,16.42,1360.25,250.73,2.25,NULL,NULL);
INSERT INTO `samples` VALUES (1613,3,'2016-07-12',2,'07:49:00',NULL,162,96,26,NULL,6.53,100.1,8.07,3.9,3.9,3.9,1,73.05,14.52,6.85,680.64,2.96,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (1614,4,'2016-07-12',3,'08:16:00',NULL,162,96,27,36.3,6.46,99.5,8.09,0.94,0.94,0.94,1,79.38,16.45,7.04,331.03,15.44,1.58,NULL,NULL);
INSERT INTO `samples` VALUES (1615,5,'2016-07-12',4,'08:38:00',NULL,162,96,27.2,35,6.79,104,8.12,2.43,2.43,2.43,1,122.69,18.54,8.49,620.86,55.72,2.02,NULL,NULL);
INSERT INTO `samples` VALUES (1616,6,'2016-07-12',5,'09:02:00',NULL,162,96,27.4,35.7,6.66,102.7,8.16,3.41,3.41,3.41,1,83.07,19.36,10.4,617.54,15.74,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1617,13,'2016-07-28',1,'07:25:00',NULL,162,97,26.3,35.3,5.77,86.9,8.03,0.93,0.93,0.93,1,90.37,10.08,4.59,294.07,3.19,11.32,NULL,NULL);
INSERT INTO `samples` VALUES (1618,14,'2016-07-28',2,'07:55:00',NULL,162,97,26.6,35.5,6.47,98.1,8.05,12.43,12.43,12.43,1,64.44,9.97,6.95,560,1.65,42.04,NULL,NULL);
INSERT INTO `samples` VALUES (1619,15,'2016-07-28',3,'08:15:00',NULL,162,97,26.8,35.4,5.83,88.6,7.99,3.18,3.18,3.18,1,70.46,10.01,6.42,261.28,3.33,6.3,NULL,NULL);
INSERT INTO `samples` VALUES (1620,16,'2016-07-28',4,'08:40:00',NULL,162,97,27,35.6,6.81,104,8.11,7.46,7.46,7.46,1,73.55,10.71,4.75,76.83,1.09,9.69,NULL,NULL);
INSERT INTO `samples` VALUES (1621,17,'2016-07-28',5,'09:10:00',NULL,162,97,26.2,35.6,6.99,105.2,8.13,3.74,3.74,3.74,1,72.91,9.33,2.85,55.37,1.02,4.39,NULL,NULL);
INSERT INTO `samples` VALUES (1622,18,'2016-07-28',6,'09:30:00',NULL,162,97,26.8,35.3,6.86,104.2,8.11,1.66,1.66,1.66,1,71.58,11.41,2.85,156.17,1.97,7.43,NULL,NULL);
INSERT INTO `samples` VALUES (1623,7,'2016-07-27',1,'07:28:00',NULL,162,97,27.4,34.7,5.9,90.2,8.04,NULL,NULL,NULL,1,71.18,13.84,9.21,483.78,3.08,9.48,NULL,NULL);
INSERT INTO `samples` VALUES (1624,8,'2016-07-27',2,'08:05:00',NULL,162,97,27.4,35,5.9,90.5,8.02,8.05,8.05,8.05,1,85.14,13.66,10.11,408.47,7.68,6.57,NULL,NULL);
INSERT INTO `samples` VALUES (1625,9,'2016-07-27',3,'08:28:00',NULL,162,97,27.6,35.2,5.65,87,8,3.7,3.7,3.7,1,75.74,11.26,7.09,217.97,7.19,5.11,NULL,NULL);
INSERT INTO `samples` VALUES (1626,11,'2016-07-27',4,'09:09:00',NULL,162,97,28.1,35.6,6.52,101.4,8.13,0.88,0.88,0.88,1,71.08,10.63,4.47,29.59,1.24,3.97,NULL,NULL);
INSERT INTO `samples` VALUES (1627,12,'2016-07-27',5,'09:39:00',NULL,162,97,27.8,35.5,6.89,106.6,8.12,0.98,0.98,0.98,1,88.96,10.52,4.72,44.64,3.82,5.97,NULL,NULL);
INSERT INTO `samples` VALUES (1628,2,'2016-07-26',1,'07:21:00',NULL,162,97,26.8,34.1,6.28,94.9,8.12,9.22,9.22,9.22,1,282.81,23.89,17.06,1116.96,200.67,6.69,NULL,NULL);
INSERT INTO `samples` VALUES (1629,3,'2016-07-26',2,'07:50:00',NULL,162,97,26.8,35.3,6.48,98.4,8.07,6.16,6.16,6.16,1,96.67,13,6.41,60.27,3.75,6.35,NULL,NULL);
INSERT INTO `samples` VALUES (1630,4,'2016-07-26',3,'08:12:00',NULL,162,97,27.2,35.3,6.48,99.1,8.14,1.5,1.5,1.5,1,87.42,13.39,6.82,267.63,16.56,6.02,NULL,NULL);
INSERT INTO `samples` VALUES (1631,5,'2016-07-26',4,'08:36:00',NULL,162,97,27.2,34.6,6.57,100.1,8.12,4.39,4.39,4.39,1,111.92,14.07,9.14,449.68,40.03,4.68,NULL,NULL);
INSERT INTO `samples` VALUES (1632,6,'2016-07-26',5,'08:59:00',NULL,162,97,27.4,34.8,6.51,99.8,8.15,3.22,3.22,3.22,1,87.81,15.67,9.77,467.63,13.19,4.55,NULL,NULL);
INSERT INTO `samples` VALUES (1633,13,'2016-08-11',1,'07:35:00',NULL,162,98,26.6,35.2,5.41,81.9,7.96,1.65,1.65,1.65,1,64.31,12.65,4.43,187.55,4.51,1.77,NULL,NULL);
INSERT INTO `samples` VALUES (1634,14,'2016-08-11',2,'08:00:00',NULL,162,98,27.2,35.6,6.18,94.7,8.06,3.28,3.28,3.28,1,48.57,13.29,3.89,256.82,2.44,1.55,NULL,NULL);
INSERT INTO `samples` VALUES (1635,15,'2016-08-11',3,'08:30:00',NULL,162,98,26.6,35.4,6.12,92.7,8.04,5.87,5.87,5.87,1,74.31,12.79,5.42,302.71,3.5,3.26,NULL,NULL);
INSERT INTO `samples` VALUES (1636,16,'2016-08-11',4,'08:50:00',NULL,162,98,27.2,35.5,6.66,102,8.08,10.63,10.63,10.63,1,54.1,13.2,3.98,66.18,3.16,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (1637,17,'2016-08-11',5,'09:15:00',NULL,162,98,27.4,35.7,6.89,106,8.14,3.81,3.81,3.81,1,51.97,9.41,2.49,61.77,2.73,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1638,18,'2016-08-11',6,'09:40:00',NULL,162,98,27.3,35.3,7.17,109.9,8.14,2.33,2.33,2.33,1,50.55,8.52,4.06,180.81,3.06,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1639,7,'2016-08-10',1,'07:26:00',NULL,162,98,27,34.6,5.87,89,8.06,0.96,0.96,0.96,1,50.94,13.33,6.11,258.54,4.44,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1640,8,'2016-08-10',2,'07:52:00',NULL,162,98,27.3,35,5.53,84.5,8.02,5.5,5.5,5.5,1,61.9,11.79,9.56,447.2,8.71,11.9,NULL,NULL);
INSERT INTO `samples` VALUES (1641,9,'2016-08-10',3,'08:15:00',NULL,162,98,27.5,35.1,5.74,88.1,8.04,4.34,4.34,4.34,1,72.34,14.43,5.83,349.5,13.55,5.49,NULL,NULL);
INSERT INTO `samples` VALUES (1642,11,'2016-08-10',4,'08:56:00',NULL,162,98,28.2,35.8,6.57,102.2,8.1,4.02,4.02,4.02,1,55.04,11.77,4.62,116.02,3.03,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1643,12,'2016-08-10',5,'09:19:00',NULL,162,98,27.9,35.8,6.78,105.1,8.07,1.45,1.45,1.45,1,54.7,11.68,4.27,76.48,4.77,3.61,NULL,NULL);
INSERT INTO `samples` VALUES (1644,2,'2016-08-09',1,'07:20:00',NULL,162,98,26.5,34.4,6.23,93.8,8.09,4.59,4.59,4.59,1,156.99,18.41,9.96,592.29,110.4,4.87,NULL,NULL);
INSERT INTO `samples` VALUES (1645,3,'2016-08-09',2,'07:45:00',NULL,162,98,25.8,34.9,6.38,95.1,8.03,5.81,5.81,5.81,1,76.01,14.15,7.25,373.12,10.63,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (1646,4,'2016-08-09',3,'08:11:00',NULL,162,98,27.1,35.4,6.27,96.7,8.12,0.42,0.42,0.42,1,70.02,14.87,6.66,322.69,22.6,2.38,NULL,NULL);
INSERT INTO `samples` VALUES (1647,5,'2016-08-09',4,'08:33:00',NULL,162,98,27.3,35.1,6.57,100.5,8.14,2.3,2.3,2.3,1,102.63,16.01,8.63,509.76,55.5,5.4,NULL,NULL);
INSERT INTO `samples` VALUES (1648,6,'2016-08-09',5,'08:52:00',NULL,162,98,27.2,35.3,6.58,100.6,8.16,0.73,0.73,0.73,1,63.27,14.74,6.01,268.63,7.89,4.72,NULL,NULL);
INSERT INTO `samples` VALUES (1649,13,'2016-08-25',1,'07:20:00',NULL,162,99,27.3,36.2,5.25,80.9,7.95,1.6,1.6,1.6,1,72.15,14.75,4.99,169.91,6.19,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (1650,14,'2016-08-25',2,'07:45:00',NULL,162,99,28.2,36.5,5.49,85.7,7.99,2.68,2.68,2.68,1,66.51,13.81,4.95,238.92,5.16,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1651,15,'2016-08-25',3,'08:00:00',NULL,162,99,27.4,36,5.6,86.2,7.94,3.63,3.63,3.63,1,62.23,12.75,5.12,280.11,5.63,1.66,NULL,NULL);
INSERT INTO `samples` VALUES (1652,16,'2016-08-25',4,'08:10:00',NULL,162,99,27.8,36.2,6.3,97.6,7.99,15.23,15.23,15.23,1,67.52,14.74,3.78,90.14,4.4,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1653,17,'2016-08-25',5,'08:25:00',NULL,162,99,27.7,35.9,6.6,102.1,8.03,5.75,5.75,5.75,1,83.51,16.05,4.17,243.97,5.83,4,NULL,NULL);
INSERT INTO `samples` VALUES (1654,18,'2016-08-25',6,'08:35:00',NULL,162,99,27.9,36,6.57,101.9,8.05,2.97,2.97,2.97,1,59.46,12.41,4.08,164.99,4.22,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1655,7,'2016-08-24',1,'07:32:00',NULL,162,99,27.9,35,6.12,94.6,8.05,4.43,4.43,4.43,1,69.42,21.92,13.31,547.85,4.31,5.09,NULL,NULL);
INSERT INTO `samples` VALUES (1656,8,'2016-08-24',2,'08:20:00',NULL,162,99,28.4,35.2,5.44,85,8.01,25.4,25.4,25.4,1,91.13,19.38,10.92,699.52,28.62,5.08,NULL,NULL);
INSERT INTO `samples` VALUES (1657,9,'2016-08-24',3,'08:42:00',NULL,162,99,28.3,35.7,5.84,91.3,8.03,6.57,6.57,6.57,1,82.15,16.98,8.93,344.26,11.7,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (1658,10,'2016-08-24',4,'09:13:00',NULL,162,99,28.4,35.5,6.44,100.7,8.09,NULL,NULL,NULL,1,75.09,13.6,3.7,267.73,6.64,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (1659,11,'2016-08-24',5,'09:38:00',NULL,162,99,28.6,36.1,6.39,100.6,8.13,3.77,3.77,3.77,1,74.93,15.49,4.26,103.05,2.59,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (1660,12,'2016-08-24',6,'10:00:00',NULL,162,99,29,36,6.85,108.5,8.1,1.3,1.3,1.3,1,79.93,13.9,4.6,113.47,4.55,3.72,NULL,NULL);
INSERT INTO `samples` VALUES (1661,2,'2016-08-23',1,'07:15:00',NULL,162,99,27.1,34.5,5.9,90.2,7.86,3.98,3.98,3.98,1,180.79,18.64,14.45,710.64,126.76,5.05,NULL,NULL);
INSERT INTO `samples` VALUES (1662,3,'2016-08-23',2,'07:39:00',NULL,162,99,26.6,26.7,6.36,92.5,8.04,10.63,10.63,10.63,1,90.19,15.02,8.59,496.44,15.22,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (1663,4,'2016-08-23',3,'08:08:00',NULL,162,99,27.8,35.3,5.84,90.7,8,0.46,0.46,0.46,1,87.24,13.12,7.32,350.09,25.95,1.89,NULL,NULL);
INSERT INTO `samples` VALUES (1664,5,'2016-08-23',4,'08:28:00',NULL,162,99,27.9,35.3,6.36,99,8.06,0.71,0.71,0.71,1,94.47,14.38,7.2,352.84,34.43,2.08,NULL,NULL);
INSERT INTO `samples` VALUES (1665,6,'2016-08-23',5,'08:47:00',NULL,162,99,28,35.7,6.23,97.4,8.06,0.63,0.63,0.63,1,71.25,14.83,6.2,224.59,10.41,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1666,13,'2016-09-08',1,'07:10:00',NULL,162,100,26.7,36.1,6.03,91.9,8.15,3.03,3.03,3.03,1,63.84,13.04,4.22,150.76,4.74,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1667,14,'2016-09-08',2,'07:35:00',NULL,162,100,25.8,36,6.53,98,8.12,34.6,34.6,34.6,1,92.16,12.98,5.25,259.77,4.71,4.29,NULL,NULL);
INSERT INTO `samples` VALUES (1668,15,'2016-09-08',3,'08:00:00',NULL,162,100,26.6,35.9,6.31,96,8.09,9.39,9.39,9.39,1,59.11,11.34,5.15,189.13,4.15,2.1,NULL,NULL);
INSERT INTO `samples` VALUES (1669,17,'2016-09-08',4,'08:28:00',NULL,162,100,26.2,35.9,6.65,100.4,8.18,7.54,7.54,7.54,1,64.37,10.55,3.44,74.29,3.42,1.97,NULL,NULL);
INSERT INTO `samples` VALUES (1670,7,'2016-09-07',1,'07:48:00',NULL,162,100,27.1,34.5,6.18,94.1,8,6.47,6.47,6.47,1,61.97,20.83,12.84,903.66,6.45,2.04,NULL,NULL);
INSERT INTO `samples` VALUES (1671,9,'2016-09-07',2,'08:19:00',NULL,162,100,27.5,36.6,6.06,94,8.01,4.33,4.33,4.33,1,87.18,11.37,7.85,164.84,5.45,5.25,NULL,NULL);
INSERT INTO `samples` VALUES (1672,8,'2016-09-07',3,'08:46:00',NULL,162,100,27.5,36.5,6.07,94.2,7.96,6.77,6.77,6.77,1,71.64,10.36,5.46,99.94,5.97,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (1673,11,'2016-09-07',4,'09:10:00',NULL,162,100,27.8,36.7,6.26,97.8,7.97,2.31,2.31,2.31,1,73.69,11.47,4.37,70.91,3.11,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (1674,12,'2016-09-07',5,'09:39:00',NULL,162,100,28.4,37,6.55,103.3,8.06,1.12,1.12,1.12,1,82.56,13.03,4.24,63.23,4.7,4.48,NULL,NULL);
INSERT INTO `samples` VALUES (1675,2,'2016-09-06',1,'07:21:00',NULL,162,100,26.7,34.9,6.31,95.4,8.11,10.9,10.9,10.9,1,137.96,18.44,12.09,626.96,83.69,4.98,NULL,NULL);
INSERT INTO `samples` VALUES (1676,3,'2016-09-06',2,'07:50:00',NULL,162,100,26.1,35.5,6.42,96.7,8.15,6.16,6.16,6.16,1,66.51,16.19,6.75,144.16,4.15,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (1677,4,'2016-09-06',3,'08:10:00',NULL,162,100,27.3,35.3,6.41,98.2,8.21,1.45,1.45,1.45,1,81.25,15.44,7.41,368.38,26.83,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1678,5,'2016-09-06',4,'08:31:00',NULL,162,100,27.7,35.2,6.45,99.6,8.23,2.17,2.17,2.17,1,94.08,19.79,8.41,405.02,34.91,2.48,NULL,NULL);
INSERT INTO `samples` VALUES (1679,6,'2016-09-06',5,'08:54:00',NULL,162,100,27.8,35.4,6.42,99.3,8.23,3.24,3.24,3.24,1,68.4,21.59,9.15,355.63,9.97,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1680,13,'2016-09-22',1,'07:15:00',NULL,162,101,27.1,36.6,6.26,96.5,7.93,11.13,11.13,11.13,1,71.8,14.8,5.33,145.77,3.94,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (1681,14,'2016-09-22',2,'07:52:00',NULL,162,101,26.6,36.7,6.44,98.6,7.86,26.07,26.07,26.07,1,62.81,14.25,7.22,915.02,4.44,4.86,NULL,NULL);
INSERT INTO `samples` VALUES (1682,15,'2016-09-22',3,'08:21:00',NULL,162,101,27,36.1,6.4,98,7.93,13.8,13.8,13.8,1,74.95,13.51,6.54,270.22,6.28,13.77,NULL,NULL);
INSERT INTO `samples` VALUES (1683,16,'2016-09-22',4,'08:50:00',NULL,162,101,27.7,37.1,6.43,100.3,8.03,14.63,14.63,14.63,1,68.23,13.63,4.85,59.54,4.86,10.52,NULL,NULL);
INSERT INTO `samples` VALUES (1684,17,'2016-09-22',5,'09:07:00',NULL,162,101,27.5,36.1,6.58,101.8,8.09,14.4,14.4,14.4,1,67.81,13.53,4.31,56.18,4.01,8.8,NULL,NULL);
INSERT INTO `samples` VALUES (1685,18,'2016-09-22',6,'09:25:00',NULL,162,101,27.6,36.1,6.5,100.6,8.03,13.03,13.03,13.03,1,69.16,11.45,5.68,303.01,8.82,11.87,NULL,NULL);
INSERT INTO `samples` VALUES (1686,7,'2016-09-21',1,'07:22:00',NULL,162,101,27,33.1,6.31,94.9,8.04,12.37,12.37,12.37,1,79.95,24.54,15.91,1564.76,14.28,6.9,NULL,NULL);
INSERT INTO `samples` VALUES (1687,8,'2016-09-21',2,'07:52:00',NULL,162,101,27.1,34.4,6.08,92.3,8.03,40.1,40.1,40.1,1,108.6,29.24,14.43,571.44,24.79,16.65,NULL,NULL);
INSERT INTO `samples` VALUES (1688,9,'2016-09-21',3,'08:20:00',NULL,162,101,26.9,34.3,6,90.8,7.98,45.33,45.33,45.33,1,111.62,22.22,13.5,660.22,27.32,7.55,NULL,NULL);
INSERT INTO `samples` VALUES (1689,11,'2016-09-21',4,'09:05:00',NULL,162,101,27.7,34.9,6.36,97.8,8.11,10.26,10.26,10.26,1,71.98,11.69,5.61,209.47,6.33,7.47,NULL,NULL);
INSERT INTO `samples` VALUES (1690,12,'2016-09-21',5,'09:36:00',NULL,162,101,27.6,34.8,6.58,101.2,8.17,2.35,2.35,2.35,1,69.95,12.28,4.4,59.63,4.63,3.42,NULL,NULL);
INSERT INTO `samples` VALUES (1691,2,'2016-09-20',1,'07:15:00',NULL,162,101,26.4,35.7,6.22,94.4,7.98,8.26,8.26,8.26,1,112.75,16.85,11.33,374.1,44.09,4.91,NULL,NULL);
INSERT INTO `samples` VALUES (1692,3,'2016-09-20',2,'07:30:00',NULL,162,101,25.9,32.4,6.52,96.2,8,12.07,12.07,12.07,1,162.42,16.77,9.1,854.64,12.6,10.28,NULL,NULL);
INSERT INTO `samples` VALUES (1693,4,'2016-09-20',3,'07:50:00',NULL,162,101,27.1,35.6,6.31,96.6,8.03,1.27,1.27,1.27,1,193.38,18.32,7.53,364.08,18,9.23,NULL,NULL);
INSERT INTO `samples` VALUES (1694,5,'2016-09-20',4,'08:10:00',NULL,162,101,27.4,36.1,6.34,97.7,8.02,3.09,3.09,3.09,1,131.44,19.71,7.27,318.73,24.77,10.46,NULL,NULL);
INSERT INTO `samples` VALUES (1695,6,'2016-09-20',5,'08:30:00',NULL,162,101,27.4,36.7,6.33,98,8.05,3.19,3.19,3.19,1,149.8,17.62,7.24,385.18,10.43,7.07,NULL,NULL);
INSERT INTO `samples` VALUES (1696,13,'2016-10-06',1,'07:30:00',NULL,162,102,26.7,34.9,5.94,89.9,8,7.28,7.28,7.28,1,66.13,11.01,5.36,184.5,4.33,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (1697,14,'2016-10-06',2,'07:55:00',NULL,162,102,26.8,34.9,6.23,94.5,8.06,9.11,9.11,9.11,1,61.49,12.19,5.14,330.13,3.23,3.27,NULL,NULL);
INSERT INTO `samples` VALUES (1698,15,'2016-10-06',3,'08:15:00',NULL,162,102,26.7,35,6.08,92.1,8.02,6.72,6.72,6.72,1,59.98,13.14,5.31,250.59,5.07,2.87,NULL,NULL);
INSERT INTO `samples` VALUES (1699,16,'2016-10-06',4,'08:35:00',NULL,162,102,27.2,34.8,6.41,97.7,8.09,13.27,13.27,13.27,1,61.32,12.66,4.81,84.83,2.93,2.65,NULL,NULL);
INSERT INTO `samples` VALUES (1700,17,'2016-10-06',5,'09:02:00',NULL,162,102,27.7,35,6.59,101.3,8.11,7.3,7.3,7.3,1,57.25,10.65,3.85,105.42,3.46,3.13,NULL,NULL);
INSERT INTO `samples` VALUES (1701,18,'2016-10-06',6,'09:22:00',NULL,162,102,28.1,34.9,6.47,100.2,8.1,4.07,4.07,4.07,1,55.67,12.38,4.64,110.7,2.53,7.04,NULL,NULL);
INSERT INTO `samples` VALUES (1702,7,'2016-10-05',1,'08:16:00',NULL,162,102,27.6,35.5,5.9,91.3,7.79,3.32,3.32,3.32,1,78.97,12.6,8.91,459.1,4.15,3.09,NULL,NULL);
INSERT INTO `samples` VALUES (1703,8,'2016-10-05',2,'08:48:00',NULL,162,102,27.8,35.4,5.44,84.3,7.89,14.73,14.73,14.73,1,72.92,12.45,8.85,614.34,9.88,12.31,NULL,NULL);
INSERT INTO `samples` VALUES (1704,9,'2016-10-05',3,'09:10:00',NULL,162,102,28.2,36,5.53,86.4,7.87,20.37,20.37,20.37,1,82.07,12.27,8.79,506.44,16.64,13.89,NULL,NULL);
INSERT INTO `samples` VALUES (1705,10,'2016-10-05',4,'09:35:00',NULL,162,102,28.3,36.5,6.42,100.6,8.11,2.61,2.61,2.61,1,75.6,8.21,3.74,148.48,1.88,11.91,NULL,NULL);
INSERT INTO `samples` VALUES (1706,11,'2016-10-05',5,'10:00:00',NULL,162,102,28.8,37.3,6.45,102.4,7.97,3.36,3.36,3.36,1,64.15,7.69,3.65,130.16,2.02,11.8,NULL,NULL);
INSERT INTO `samples` VALUES (1707,12,'2016-10-05',6,'10:23:00',NULL,162,102,28.8,37.2,6.73,106.9,7.99,2.07,2.07,2.07,1,64.41,8.94,4.53,95.75,4.8,4.55,NULL,NULL);
INSERT INTO `samples` VALUES (1708,2,'2016-10-04',1,'07:37:00',NULL,162,102,26.9,34.4,6.03,91.4,8.09,5.38,5.38,5.38,1,109.8,21.4,11.98,496.53,52.67,7.02,NULL,NULL);
INSERT INTO `samples` VALUES (1709,3,'2016-10-04',2,'07:58:00',NULL,162,102,26.9,34.4,6.2,94.1,8.08,7.76,7.76,7.76,1,69.4,16.92,6.58,211.98,10.53,6.14,NULL,NULL);
INSERT INTO `samples` VALUES (1710,4,'2016-10-04',3,'08:17:00',NULL,162,102,27.8,34.3,6.19,95.2,8.12,0.52,0.52,0.52,1,85.59,17.23,5.65,317.64,24.89,4.84,NULL,NULL);
INSERT INTO `samples` VALUES (1711,5,'2016-10-04',4,'08:35:00',NULL,162,102,27.9,34,6.42,98.8,8.15,1.99,1.99,1.99,1,118.93,13.51,8.2,583.21,64.14,7.29,NULL,NULL);
INSERT INTO `samples` VALUES (1712,6,'2016-10-04',5,'08:53:00',NULL,162,102,27.8,34.6,6.35,97.9,8.17,1.84,1.84,1.84,1,67.41,13.09,6.05,319.78,10.07,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (1713,13,'2016-10-20',1,'07:05:00',NULL,162,103,25.7,36.6,6.01,90.4,7.93,8.81,8.81,8.81,1,92.69,18.44,6,127.8,3.2,5.69,NULL,NULL);
INSERT INTO `samples` VALUES (1714,14,'2016-10-20',2,'07:40:00',NULL,162,103,25.7,36.6,5.95,89.7,8.01,2.54,2.54,2.54,1,61.12,13.01,5.03,191.78,1.5,3.31,NULL,NULL);
INSERT INTO `samples` VALUES (1715,15,'2016-10-20',3,'08:00:00',NULL,162,103,25.4,36.6,5.86,87.8,8.01,5.47,5.47,5.47,1,83.49,12,6.11,291.78,4.95,7.48,NULL,NULL);
INSERT INTO `samples` VALUES (1716,16,'2016-10-20',4,'08:23:00',NULL,162,103,24.8,36.3,6.47,96,8.08,14.97,14.97,14.97,1,63.97,8.44,5.02,76.62,0.69,6.85,NULL,NULL);
INSERT INTO `samples` VALUES (1717,17,'2016-10-20',5,'08:57:00',NULL,162,103,25.7,37,6.59,99.4,8.07,9.5,9.5,9.5,1,68.11,11.95,6.34,67.79,4.8,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1718,18,'2016-10-20',6,'09:10:00',NULL,162,103,26,35.9,6.6,98.9,8.09,4.38,4.38,4.38,1,64.65,9.36,5.4,185.87,2.37,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1719,7,'2016-10-19',1,'08:21:00',NULL,162,103,27.1,33.5,6.26,94.5,8.09,8.22,8.22,8.22,1,66.81,27.85,12.49,768.82,3.6,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1720,8,'2016-10-19',2,'08:51:00',NULL,162,103,27.2,34,6.12,92.9,8.03,40.7,40.7,40.7,1,81.4,27.18,12.2,694.78,9.23,11.23,NULL,NULL);
INSERT INTO `samples` VALUES (1721,9,'2016-10-19',3,'09:13:00',NULL,162,103,27.5,33.9,6,91.5,7.98,43.67,43.67,43.67,1,77.93,24.92,11.63,632.91,9.33,9.78,NULL,NULL);
INSERT INTO `samples` VALUES (1722,10,'2016-10-19',4,'09:40:00',NULL,162,103,27.7,34.6,6.49,99.7,8.15,6.04,6.04,6.04,1,95.61,15.79,5.08,153.7,0.1,3.31,NULL,NULL);
INSERT INTO `samples` VALUES (1723,11,'2016-10-19',5,'10:01:00',NULL,162,103,27.7,35,6.28,96.7,8.06,4.35,4.35,4.35,1,67.89,9.54,5.57,95.06,1.65,25.59,NULL,NULL);
INSERT INTO `samples` VALUES (1724,12,'2016-10-19',6,'10:37:00',NULL,162,103,27.4,34.9,6.65,102,8.12,2.94,2.94,2.94,1,72.84,18.92,7.01,65.37,3.17,12.06,NULL,NULL);
INSERT INTO `samples` VALUES (1725,2,'2016-10-18',1,'07:39:00',NULL,162,103,26.6,36,6.23,95,7.95,8.45,8.45,8.45,1,105.57,12.87,11.67,399.05,38.62,10.94,NULL,NULL);
INSERT INTO `samples` VALUES (1726,3,'2016-10-18',2,'08:02:00',NULL,162,103,26.1,35.6,6.31,95.2,7.96,5.78,5.78,5.78,1,73.6,10.5,8.13,368.37,8.21,4.35,NULL,NULL);
INSERT INTO `samples` VALUES (1727,4,'2016-10-18',3,'08:22:00',NULL,162,103,26.9,36.7,6.28,96.3,7.99,0.7,0.7,0.7,1,87.06,9.44,7.1,343.83,24.67,3.49,NULL,NULL);
INSERT INTO `samples` VALUES (1728,5,'2016-10-18',4,'08:40:00',NULL,162,103,27.2,NULL,6.22,96.3,8.01,0.93,0.93,0.93,1,84.95,23.4,6.5,270.97,15.75,12.04,NULL,NULL);
INSERT INTO `samples` VALUES (1729,6,'2016-10-18',5,'08:57:00',NULL,162,103,27.3,36.6,6.2,95.9,8.09,0.9,0.9,0.9,1,78.88,20.54,9.62,489.05,12.57,11.06,NULL,NULL);
INSERT INTO `samples` VALUES (1730,13,'2016-11-03',1,'07:15:00',NULL,162,104,24.9,34.8,6.07,88.9,8.04,5.68,5.68,5.68,1,62.91,9.99,5.82,125.93,3.09,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (1731,14,'2016-11-03',2,'07:37:00',NULL,162,104,25.1,34.9,6.08,89.4,8.11,1.28,1.28,1.28,1,58.51,16.2,4.77,113.51,3.92,3.1,NULL,NULL);
INSERT INTO `samples` VALUES (1732,15,'2016-11-03',3,'08:00:00',NULL,162,104,24.9,34.8,6,87.9,8.08,3.25,3.25,3.25,1,57.79,14.48,5.13,216.37,3.16,3.08,NULL,NULL);
INSERT INTO `samples` VALUES (1733,16,'2016-11-03',4,'08:20:00',NULL,162,104,25.4,34.9,6.61,97.7,8.15,12.6,12.6,12.6,1,64.27,11.71,4.53,58.71,2.46,3.21,NULL,NULL);
INSERT INTO `samples` VALUES (1734,17,'2016-11-03',5,'08:45:00',NULL,162,104,25.4,34.9,6.68,98.8,8.16,3.72,3.72,3.72,1,62.94,14.86,4.43,53.15,2.58,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1735,18,'2016-11-03',6,'09:02:00',NULL,162,104,25.7,34.7,6.87,101.9,8.17,3.56,3.56,3.56,1,58.91,16.34,4.94,164.01,2.31,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1736,7,'2016-11-02',1,'08:20:00',NULL,162,104,25.6,32.8,5.88,86,7.99,5.64,5.64,5.64,1,73.98,25.03,14.66,1383.13,4.85,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1737,8,'2016-11-02',2,'08:56:00',NULL,162,104,26.2,34,5.52,82.2,8.02,12.7,12.7,12.7,1,90.53,16.7,10.75,568.93,8.8,19.57,NULL,NULL);
INSERT INTO `samples` VALUES (1738,9,'2016-11-02',3,'09:17:00',NULL,162,104,26.8,33.7,5.38,80.9,7.98,4.18,4.18,4.18,1,76.59,19.14,8.08,400.73,6.79,7.68,NULL,NULL);
INSERT INTO `samples` VALUES (1739,10,'2016-11-02',4,'09:52:00',NULL,162,104,26.7,34.5,6.83,103,8.17,1.86,1.86,1.86,1,78.02,12.23,5.6,152.39,1.51,4.77,NULL,NULL);
INSERT INTO `samples` VALUES (1740,11,'2016-11-02',5,'10:17:00',NULL,162,104,26.5,34.5,6.9,103.8,8.13,1.62,1.62,1.62,1,89.32,6.68,4.19,156.12,0.49,8.45,NULL,NULL);
INSERT INTO `samples` VALUES (1741,12,'2016-11-02',6,'10:46:00',NULL,162,104,26.3,34.8,6.83,102.6,8.07,1.75,1.75,1.75,1,69.27,9.3,5.07,63.82,4.07,7.16,NULL,NULL);
INSERT INTO `samples` VALUES (1742,2,'2016-11-01',1,'07:44:00',NULL,162,104,24.8,34.3,6.34,92.1,8.07,7.83,7.83,7.83,1,154.28,18.7,15.28,800.68,83.68,7.16,NULL,NULL);
INSERT INTO `samples` VALUES (1743,3,'2016-11-01',2,'08:01:00',NULL,162,104,24.7,33.5,6.68,96.7,8.08,3.08,3.08,3.08,1,110.8,31.54,9.17,500.48,4.13,10.95,NULL,NULL);
INSERT INTO `samples` VALUES (1744,4,'2016-11-01',3,'08:18:00',NULL,162,104,25.5,34.4,6.43,94.7,8.1,1.4,1.4,1.4,1,84.64,20.7,8.34,421.29,15.51,7.16,NULL,NULL);
INSERT INTO `samples` VALUES (1745,5,'2016-11-01',4,'08:36:00',NULL,162,104,26,34,6.38,95.8,8.12,1.38,1.38,1.38,1,96.42,21.82,6.94,381.22,28.69,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1746,6,'2016-11-01',5,'08:55:00',NULL,162,104,26.4,34.4,6.38,95.4,8.15,0.91,0.91,0.91,1,79.04,21.1,7.87,448.87,14.07,3.14,NULL,NULL);
INSERT INTO `samples` VALUES (1747,13,'2016-11-17',1,'07:45:00',NULL,162,105,24.7,34.8,5.78,84.4,8.07,5.15,5.15,5.15,1,62.87,5.05,4.16,140.57,6.77,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1748,14,'2016-11-17',2,'08:05:00',NULL,162,105,25,34.8,6.02,88.4,8.05,0.69,0.69,0.69,1,62.82,5.14,3.48,107.68,6.76,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (1749,15,'2016-11-17',3,'08:25:00',NULL,162,105,24.5,34.4,6,87.1,8.04,4.28,4.28,4.28,1,58.76,4.58,3.62,365.31,7.98,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1750,16,'2016-11-17',4,'08:50:00',NULL,162,105,24.7,34.6,6.58,96.2,8.05,2.92,2.92,2.92,1,58.01,4.1,3.36,110.15,5.78,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1751,17,'2016-11-17',5,'09:15:00',NULL,162,105,25.8,34.7,6.82,101.6,8.11,2.97,2.97,2.97,1,60.45,7.25,3.44,81.36,8.09,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1752,18,'2016-11-17',6,'09:25:00',NULL,162,105,25.7,34.6,6.56,97.4,8.06,2.33,2.33,2.33,1,59.46,3.95,3.35,165.43,6.71,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1753,7,'2016-11-16',1,'08:16:00',NULL,162,105,26.1,33.7,6.2,92.1,8.05,7.39,7.39,7.39,1,70.63,9.91,8.01,732.59,7.16,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1754,8,'2016-11-16',2,'08:45:00',NULL,162,105,26.4,34.1,5.53,82.9,7.98,14.03,14.03,14.03,1,122.65,11.75,10.66,469.53,12.19,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (1755,9,'2016-11-16',3,'09:06:00',NULL,162,105,26.5,34.3,5.6,84,8.03,10.87,10.87,10.87,1,81.31,7.35,5.36,345.45,9.71,2.29,NULL,NULL);
INSERT INTO `samples` VALUES (1756,10,'2016-11-16',4,'09:30:00',NULL,162,105,26.6,34.4,6.73,101.2,8.16,2.04,2.04,2.04,1,64.32,3.53,3.54,191.28,4.45,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1757,11,'2016-11-16',5,'09:52:00',NULL,162,105,26.7,34.7,6.67,100.7,8.11,3.33,3.33,3.33,1,58.7,3.95,3.06,165.01,1.89,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1758,12,'2016-11-16',6,'10:15:00',NULL,162,105,26.8,34.7,NULL,NULL,8.11,4.37,4.37,4.37,1,72.19,7.07,4.33,140.77,6.01,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (1759,2,'2016-11-15',1,'07:41:00',NULL,162,105,24.7,34.2,6.52,94.9,8.08,4.23,4.23,4.23,1,134,11.82,10.33,521.05,41.57,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (1760,3,'2016-11-15',2,'08:06:00',NULL,162,105,25.5,34.3,7.96,96.7,8.15,5.67,5.67,5.67,1,80.63,7.94,4.97,232.94,4.91,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (1761,4,'2016-11-15',3,'08:29:00',NULL,162,105,25.8,34.4,6.49,96.2,8.14,1.46,1.46,1.46,1,67.22,8.36,5.88,349.27,15.11,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1762,5,'2016-11-15',4,'08:49:00',NULL,162,105,26.5,34.2,6.38,95.8,8.14,1.66,1.66,1.66,1,79.76,8.32,5.29,430.52,31.95,2.9,NULL,NULL);
INSERT INTO `samples` VALUES (1763,6,'2016-11-15',5,'09:05:00',NULL,162,105,26.4,33.3,6.45,96.2,8.12,1.42,1.42,1.42,1,88.51,16.74,15.59,1415,43.33,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1764,13,'2016-12-01',1,'07:15:00',NULL,162,106,22.9,34.9,6.65,94.2,8.02,9.65,9.65,9.65,1,65.59,8.15,2.42,226.3,4.35,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1765,14,'2016-12-01',2,'07:40:00',NULL,162,106,23.5,34.7,6.53,93.5,8.06,3.67,3.67,3.67,1,61.55,6.5,3.16,291.07,5.08,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (1766,15,'2016-12-01',3,'08:00:00',NULL,162,106,23.4,34.6,6.12,87.4,8.07,4.52,4.52,4.52,1,75,7.87,3.97,272.05,6.58,4.13,NULL,NULL);
INSERT INTO `samples` VALUES (1767,16,'2016-12-01',4,'08:20:00',NULL,162,106,23.3,34.7,6.8,96.9,8.13,7.42,7.42,7.42,1,60.43,6.43,2.67,148.15,1.68,1.58,NULL,NULL);
INSERT INTO `samples` VALUES (1768,17,'2016-12-01',5,'08:40:00',NULL,162,106,23.7,34.7,6.79,97.5,8.12,8.65,8.65,8.65,1,63.46,5.93,3.97,219.11,7.36,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (1769,18,'2016-12-01',6,'09:05:00',NULL,162,106,24.2,34.7,6.71,97,8.11,5.37,5.37,5.37,1,57.89,3.82,2.51,171.2,2.6,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1770,7,'2016-11-30',1,'08:24:00',NULL,162,106,25,34,6.35,92.8,8.07,9.3,9.3,9.3,1,70.03,9.69,8.11,663.05,5.74,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (1771,8,'2016-11-30',2,'08:51:00',NULL,162,106,25,33.9,6.24,91.2,8.01,9.44,9.44,9.44,1,93.3,9.04,5.8,469.52,18.08,4.76,NULL,NULL);
INSERT INTO `samples` VALUES (1772,9,'2016-11-30',3,'09:12:00',NULL,162,106,25,34,6.2,90.5,7.95,12.5,12.5,12.5,1,103.45,9.58,5.64,542.06,33.68,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (1773,10,'2016-11-30',4,'09:40:00',NULL,162,106,25.4,33.9,6.84,100.6,8.1,2.02,2.02,2.02,1,69.41,5.64,2.39,332,3.67,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (1774,11,'2016-11-30',5,'10:01:00',NULL,162,106,24.5,34.5,7.13,103.6,8.04,1.51,1.51,1.51,1,68.25,6.79,1.87,175.7,2.67,2.76,NULL,NULL);
INSERT INTO `samples` VALUES (1775,12,'2016-11-30',6,'10:25:00',NULL,162,106,24.7,34.8,7.37,108,8.13,2.42,2.42,2.42,1,78.82,8,3.87,214.64,5.82,3.81,NULL,NULL);
INSERT INTO `samples` VALUES (1776,2,'2016-11-29',1,'07:41:00',NULL,162,106,24.4,34.2,6.36,92,8.05,5.69,5.69,5.69,1,134.74,15.76,10.78,675.12,67.99,2.79,NULL,NULL);
INSERT INTO `samples` VALUES (1777,3,'2016-11-29',2,'08:03:00',NULL,162,106,24,33.9,6.68,95.7,8.07,6.36,6.36,6.36,1,87.03,9.48,4.61,308.06,4.9,3.03,NULL,NULL);
INSERT INTO `samples` VALUES (1778,4,'2016-11-29',3,'08:22:00',NULL,162,106,25.1,34.3,6.52,95.2,8.14,1.56,1.56,1.56,1,83.38,5.77,4.06,386.57,21.25,1.64,NULL,NULL);
INSERT INTO `samples` VALUES (1779,5,'2016-11-29',4,'08:42:00',NULL,162,106,25.4,33.8,6.53,95.4,8.04,1.46,1.46,1.46,1,137.85,9.45,7.1,848.06,77.66,3.07,NULL,NULL);
INSERT INTO `samples` VALUES (1780,6,'2016-11-29',5,'08:59:00',NULL,162,106,25.4,33.6,6.49,95,8.13,1.49,1.49,1.49,1,94.79,10.29,8.92,908.64,37.28,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1781,13,'2016-12-15',1,'08:05:00',NULL,162,107,23.4,33.8,6.46,92.2,7.82,6.87,6.87,6.87,1,78.97,8.29,5,322.04,30.48,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (1782,14,'2016-12-15',2,'08:25:00',NULL,162,107,24.8,34.4,6.08,89.2,7.85,1.52,1.52,1.52,1,60.62,7.91,3.8,217.09,14.94,3.16,NULL,NULL);
INSERT INTO `samples` VALUES (1783,15,'2016-12-15',3,'08:45:00',NULL,162,107,25.1,34.3,5.96,87.9,7.97,1.75,1.75,1.75,1,62.18,9.84,3.87,320.26,12.41,4.04,NULL,NULL);
INSERT INTO `samples` VALUES (1784,16,'2016-12-15',4,'09:05:00',NULL,162,107,25,34.8,6.65,98.2,7.89,3.15,3.15,3.15,1,53.71,9.19,2.63,80.26,7.38,1.6,NULL,NULL);
INSERT INTO `samples` VALUES (1785,17,'2016-12-15',5,'09:18:00',NULL,162,107,25.1,35,6.94,102.7,8.07,4.05,4.05,4.05,1,62.85,9.89,4.3,129.31,18.82,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (1786,18,'2016-12-15',6,'09:30:00',NULL,162,107,25.3,34.9,6.77,100.5,7.97,5.17,5.17,5.17,1,59.82,10.64,5.05,171.01,16.61,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (1787,7,'2016-12-14',1,'08:16:00',NULL,162,107,24.2,34.8,6.56,95.1,8.03,4.31,4.31,4.31,1,53.94,10.64,4.74,147.19,5.6,1.7,NULL,NULL);
INSERT INTO `samples` VALUES (1788,8,'2016-12-14',2,'08:45:00',NULL,162,107,23.7,33.1,6.65,94.7,7.96,14.27,14.27,14.27,1,97.74,19.06,11.79,601.12,21.63,6.23,NULL,NULL);
INSERT INTO `samples` VALUES (1789,9,'2016-12-14',3,'09:18:00',NULL,162,107,24,33.8,5.93,85.3,7.94,7.5,7.5,7.5,1,90.52,13.58,8.28,669.23,45.98,5.2,NULL,NULL);
INSERT INTO `samples` VALUES (1790,10,'2016-12-14',4,'09:35:00',NULL,162,107,24.9,34.4,6.95,101.8,8.08,2.72,2.72,2.72,1,53.38,9.14,2.94,261.28,1.56,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (1791,11,'2016-12-14',5,'09:54:00',NULL,162,107,24.9,34.6,7.02,103,8.13,1.99,1.99,1.99,1,50.61,7.15,2.45,152.4,3.37,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (1792,12,'2016-12-14',6,'10:16:00',NULL,162,107,24.7,34.8,6.68,97.7,8.08,4.1,4.1,4.1,1,75.56,8.27,4.71,139.35,24.19,4.19,NULL,NULL);
INSERT INTO `samples` VALUES (1793,2,'2016-12-13',1,'07:36:00',NULL,162,107,24.7,34.1,6.56,95.5,7.95,8.48,8.48,8.48,1,119.4,18.53,13.82,867.63,81.84,3.22,NULL,NULL);
INSERT INTO `samples` VALUES (1794,3,'2016-12-13',2,'08:03:00',NULL,162,107,24.3,32.7,6.65,95.6,8.07,5.8,5.8,5.8,1,71.93,10.87,6.41,654.79,12.31,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (1795,4,'2016-12-13',3,'08:24:00',NULL,162,107,25.3,34.7,6.6,97.4,8.02,1.21,1.21,1.21,1,62.36,13.42,4.78,343.8,18.57,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1796,5,'2016-12-13',4,'08:46:00',NULL,162,107,25.3,34.5,6.57,97.1,8.09,3.32,3.32,3.32,1,79,13.91,6.44,437.3,34.54,4.26,NULL,NULL);
INSERT INTO `samples` VALUES (1797,6,'2016-12-13',5,'09:03:00',NULL,162,107,25.3,34.1,6.59,97.2,8.11,0.97,0.97,0.97,1,74.45,14.71,8.36,760.93,28.97,2.36,NULL,NULL);
INSERT INTO `samples` VALUES (1798,13,'2017-01-05',1,'07:00:00',NULL,162,108,22.8,34.8,6.34,93.5,NULL,4.83,4.83,4.83,1,100.48,9.99,5.66,208.26,20.1,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1799,14,'2017-01-05',2,'07:15:00',NULL,162,108,23.3,34.9,6.63,94.5,NULL,7.99,7.99,7.99,1,77.67,9.54,5.63,360.48,12.58,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1800,15,'2017-01-05',3,'07:30:00',NULL,162,108,23.6,35.2,6.16,88.6,NULL,5.83,5.83,5.83,1,75.42,9.68,5.21,273.05,9.83,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (1801,16,'2017-01-05',4,'07:40:00',NULL,162,108,22.9,35.4,6.96,98.9,NULL,12.23,12.23,12.23,1,75.23,12.42,5.28,88.84,7.87,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1802,17,'2017-01-05',5,'08:00:00',NULL,162,108,23.7,35.4,6.79,97.8,NULL,10.1,10.1,10.1,1,76.14,12.57,4.28,113.68,6.13,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (1803,18,'2017-01-05',6,'08:15:00',NULL,162,108,24.3,35.3,8.12,96.7,NULL,8.69,8.69,8.69,1,72.55,14.42,5.17,103.37,9.07,1.61,NULL,NULL);
INSERT INTO `samples` VALUES (1804,7,'2017-01-04',1,'08:15:00',NULL,162,108,23.4,34.1,6.72,95.6,8.08,5.57,5.57,5.57,1,89.72,17,12.86,920.8,8.49,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (1805,8,'2017-01-04',2,'08:42:00',NULL,162,108,23.3,34.7,6.77,96.4,8.07,8.92,8.92,8.92,1,135.13,18.19,13.14,400.39,10.19,2.98,NULL,NULL);
INSERT INTO `samples` VALUES (1806,9,'2017-01-04',3,'09:03:00',NULL,162,108,23.7,34.6,6.22,89.4,8.05,35.3,35.3,35.3,1,93.72,14.89,10.45,554.29,23,3.64,NULL,NULL);
INSERT INTO `samples` VALUES (1807,10,'2017-01-04',4,'09:32:00',NULL,162,108,24.1,34.9,6.85,99.2,8.11,2.7,2.7,2.7,1,87.56,10.94,4.16,136.98,2.47,1.55,NULL,NULL);
INSERT INTO `samples` VALUES (1808,11,'2017-01-04',5,'09:58:00',NULL,162,108,24.3,35.1,6.92,100.6,8.12,5.01,5.01,5.01,1,76.98,8.58,3.25,117.3,2.59,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1809,12,'2017-01-04',6,'10:24:00',NULL,162,108,24.3,35,7.46,108.5,8.13,2.18,2.18,2.18,1,80.46,10,4.76,120.3,5.16,3.72,NULL,NULL);
INSERT INTO `samples` VALUES (1810,2,'2017-01-03',1,'08:45:00',NULL,162,108,24.1,34.7,6.45,93.3,8.16,5.01,5.01,5.01,1,121.24,19.77,11.33,448.82,56.24,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (1811,3,'2017-01-03',2,'09:10:00',NULL,162,108,23,29.5,7.07,97.5,8.21,3.78,3.78,3.78,1,85.83,13.88,7.78,1253.58,11.97,3.57,NULL,NULL);
INSERT INTO `samples` VALUES (1812,4,'2017-01-03',3,'09:30:00',NULL,162,108,24.4,34.6,6.57,95.5,8.18,2.49,2.49,2.49,1,82.42,12.88,7.56,314.68,15.25,1.63,NULL,NULL);
INSERT INTO `samples` VALUES (1813,5,'2017-01-03',4,'09:55:00',NULL,162,108,24.9,34.5,6.66,97.6,8.21,1.42,1.42,1.42,1,121.24,14.48,7.73,430.02,47.01,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (1814,6,'2017-01-03',5,'10:15:00',NULL,162,108,24.8,34.9,6.49,95.3,8.2,0.93,0.93,0.93,1,85.84,11.24,5.84,223.38,10.13,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (1815,13,'2017-01-26',1,'07:20:00',NULL,162,109,22.5,35,6.16,86.5,7.9,3.6,3.6,3.6,1,87.41,14.86,8.54,146.89,6.87,4.85,NULL,NULL);
INSERT INTO `samples` VALUES (1816,14,'2017-01-26',2,'07:50:00',NULL,162,109,22.6,35.1,6.56,92.3,8.02,2.44,2.44,2.44,1,76.55,10.03,6.31,264.47,6.34,6.8,NULL,NULL);
INSERT INTO `samples` VALUES (1817,15,'2017-01-26',3,'08:12:00',NULL,162,109,22.6,35,6.27,88.2,8.05,2.85,2.85,2.85,1,73.14,15.07,7.64,201.91,7.83,7.38,NULL,NULL);
INSERT INTO `samples` VALUES (1818,16,'2017-01-26',4,'08:35:00',NULL,162,109,23.5,35.3,6.85,98,8.06,6.62,6.62,6.62,1,79.41,15.49,6.83,110.39,8.47,5.32,NULL,NULL);
INSERT INTO `samples` VALUES (1819,17,'2017-01-26',5,'08:55:00',NULL,162,109,23.2,35.4,6.97,99.3,8.07,4.54,4.54,4.54,1,75.92,19.2,6.36,74.87,7.03,4.68,NULL,NULL);
INSERT INTO `samples` VALUES (1820,18,'2017-01-26',6,'09:10:00',NULL,162,109,23.5,35.2,7.02,100.3,8.08,3.88,3.88,3.88,1,72.52,15.62,5.5,84.73,2.24,5.64,NULL,NULL);
INSERT INTO `samples` VALUES (1821,7,'2017-01-25',1,'08:22:00',NULL,162,109,23.8,35.2,6.16,88.5,7.87,6.31,6.31,6.31,1,80.46,17.65,15.38,206.96,6.16,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (1822,8,'2017-01-25',2,'08:50:00',NULL,162,109,23.8,34.8,6.22,89.5,7.96,3.53,3.53,3.53,1,84.69,15.8,14.91,195.95,5.22,6.01,NULL,NULL);
INSERT INTO `samples` VALUES (1823,9,'2017-01-25',3,'09:16:00',NULL,162,109,24.3,34.9,6.47,93.7,8,1.7,1.7,1.7,1,76.35,15.03,12.77,181.82,4.76,7.59,NULL,NULL);
INSERT INTO `samples` VALUES (1824,10,'2017-01-25',4,'09:45:00',NULL,162,109,24.8,34.9,6.79,99.1,8.06,1.92,1.92,1.92,1,77.98,12.72,8.61,118.55,1.01,4.72,NULL,NULL);
INSERT INTO `samples` VALUES (1825,11,'2017-01-25',5,'10:07:00',NULL,162,109,24.6,35.1,6.79,98.9,8.04,2.06,2.06,2.06,1,363.96,32.04,17.99,123.12,2.63,31.67,NULL,NULL);
INSERT INTO `samples` VALUES (1826,12,'2017-01-25',6,'10:30:00',NULL,162,109,24.7,35.2,6.46,94.3,7.9,1.21,1.21,1.21,1,77.5,15.25,8.71,94.53,4.94,6.54,NULL,NULL);
INSERT INTO `samples` VALUES (1827,2,'2017-01-24',1,'07:38:00',NULL,162,109,23.5,34.3,NULL,NULL,8.14,12.07,12.07,12.07,1,367.08,40.74,36.7,1085.08,327.13,5.14,NULL,NULL);
INSERT INTO `samples` VALUES (1828,3,'2017-01-24',2,'08:07:00',NULL,162,109,23.1,30.8,7.01,97.3,8.17,6.31,6.31,6.31,1,87.7,20.24,19.3,662.68,9.48,6.54,NULL,NULL);
INSERT INTO `samples` VALUES (1829,4,'2017-01-24',3,'08:29:00',NULL,162,109,24.1,NULL,6.46,94.5,8.16,4.08,4.08,4.08,1,79.75,23.24,18.9,237.48,13.92,4.49,NULL,NULL);
INSERT INTO `samples` VALUES (1830,5,'2017-01-24',4,'08:50:00',NULL,162,109,24.5,NULL,6.57,96.3,8.18,0.8,0.8,0.8,1,113.22,19.74,16.74,327.23,46.28,7.68,NULL,NULL);
INSERT INTO `samples` VALUES (1831,6,'2017-01-24',5,'09:07:00',NULL,162,109,24.5,34.7,6.69,97.3,8.2,1.15,1.15,1.15,1,117.23,34.7,30.64,953.96,56.58,4.25,NULL,NULL);
INSERT INTO `samples` VALUES (1832,13,'2017-02-17',1,'07:12:00',NULL,162,110,24.8,35.1,5.9,86.3,8.02,2.94,2.94,2.94,1,78.99,10.76,5.87,115.55,6.22,5.64,NULL,NULL);
INSERT INTO `samples` VALUES (1833,14,'2017-02-17',2,'07:40:00',NULL,162,110,25.6,35.1,6.18,91.6,8.08,2.63,2.63,2.63,1,99.69,11.06,5.98,161.36,7.09,8.75,NULL,NULL);
INSERT INTO `samples` VALUES (1834,15,'2017-02-17',3,'08:00:00',NULL,162,110,25.6,35.1,5.63,83.3,8.05,2.14,2.14,2.14,1,88.27,10.18,5.93,168.59,9.16,8.67,NULL,NULL);
INSERT INTO `samples` VALUES (1835,16,'2017-02-17',4,'08:25:00',NULL,162,110,25.3,35.2,6.46,95.3,8.11,2.77,2.77,2.77,1,95.54,9.67,5.16,65.93,4.3,8.73,NULL,NULL);
INSERT INTO `samples` VALUES (1836,17,'2017-02-17',5,'08:50:00',NULL,162,110,25.6,35.3,6.83,101.5,8.13,14.17,14.17,14.17,1,74.08,9.2,6.11,91.12,8.47,7.29,NULL,NULL);
INSERT INTO `samples` VALUES (1837,18,'2017-02-17',6,'09:14:00',NULL,162,110,25.5,35.1,6.73,99.6,8.15,3.7,3.7,3.7,1,76.73,9.13,6.25,127.75,10.41,8.03,NULL,NULL);
INSERT INTO `samples` VALUES (1838,7,'2017-02-15',1,'08:33:00',NULL,162,110,24.9,33.8,6.38,93.1,8.1,4.18,4.18,4.18,1,80.69,13.7,11.52,486.27,5.23,7.38,NULL,NULL);
INSERT INTO `samples` VALUES (1839,8,'2017-02-15',2,'08:45:00',NULL,162,110,24.9,34.1,6.2,90.5,8.07,10.7,10.7,10.7,1,94.63,13.86,10.03,386.33,26.13,7.81,NULL,NULL);
INSERT INTO `samples` VALUES (1840,9,'2017-02-15',3,'09:03:00',NULL,162,110,24.9,34.4,5.93,86.7,8.07,8.65,8.65,8.65,1,107.67,13.21,8.5,321.19,26.27,7.93,NULL,NULL);
INSERT INTO `samples` VALUES (1841,10,'2017-02-15',4,'09:30:00',NULL,162,110,25.1,34.9,6.86,100.8,8.19,3.12,3.12,3.12,1,101.2,10.97,5.45,130.64,2.72,6.83,NULL,NULL);
INSERT INTO `samples` VALUES (1842,11,'2017-02-15',5,'09:47:00',NULL,162,110,25.2,34.9,6.79,100,8.13,5.91,5.91,5.91,1,93.72,11.03,6.24,174.42,6,6.51,NULL,NULL);
INSERT INTO `samples` VALUES (1843,12,'2017-02-15',6,'10:11:00',NULL,162,110,25.1,34.9,6.59,96.8,8.1,4.16,4.16,4.16,1,83.21,11.44,6.52,150.71,5.57,7.22,NULL,NULL);
INSERT INTO `samples` VALUES (1844,1,'2017-02-14',1,'07:52:00',NULL,162,110,24.2,34.9,6.8,98.7,8.15,0.84,0.84,0.84,1,80.51,11.1,6.75,205.37,12.88,6.65,NULL,NULL);
INSERT INTO `samples` VALUES (1845,2,'2017-02-14',2,'08:25:00',NULL,162,110,24,34.5,6.71,97,8.15,3.81,3.81,3.81,1,103.87,14.35,10,316.93,36.3,6.51,NULL,NULL);
INSERT INTO `samples` VALUES (1846,3,'2017-02-14',3,'08:45:00',NULL,162,110,24.1,34.7,6.77,98,8.14,6.6,6.6,6.6,1,78.01,11.84,7.75,178.1,5.37,6.19,NULL,NULL);
INSERT INTO `samples` VALUES (1847,4,'2017-02-14',4,'09:13:00',NULL,162,110,24.5,34.6,6.81,99.1,8.19,5.25,5.25,5.25,1,95.15,14.98,10.48,381.69,23.45,6.22,NULL,NULL);
INSERT INTO `samples` VALUES (1848,5,'2017-02-14',5,'09:38:00',NULL,162,110,24.7,34.3,6.75,98.6,8.19,1.47,1.47,1.47,1,136.07,16.87,10.08,457.43,71,6.74,NULL,NULL);
INSERT INTO `samples` VALUES (1849,6,'2017-02-14',6,'10:00:00',NULL,162,110,24.7,33.9,6.78,98.7,8.2,1.04,1.04,1.04,1,95.6,15.08,10.84,490.89,29.92,5.61,NULL,NULL);
INSERT INTO `samples` VALUES (1850,13,'2017-03-09',1,'07:30:00',NULL,162,111,24.5,34.3,5.97,86.5,8.05,2.23,2.23,2.23,1,72.61,8.51,5.12,133.01,8.53,5.43,NULL,NULL);
INSERT INTO `samples` VALUES (1851,14,'2017-03-09',2,'07:50:00',NULL,162,111,25.4,34.5,6.26,92.1,8.09,4.6,4.6,4.6,1,89.82,10.3,6.08,153.49,8.37,7.69,NULL,NULL);
INSERT INTO `samples` VALUES (1852,15,'2017-03-09',3,'08:05:00',NULL,162,111,25.4,34.4,5.83,85.8,8.06,2.38,2.38,2.38,1,69.96,7.9,5.19,189.55,8.49,7.27,NULL,NULL);
INSERT INTO `samples` VALUES (1853,16,'2017-03-09',4,'08:15:00',NULL,162,111,24.7,34.5,6.76,98.6,8.11,15.43,15.43,15.43,1,75.57,10.2,5.87,99.46,11.69,5.92,NULL,NULL);
INSERT INTO `samples` VALUES (1854,17,'2017-03-09',5,'08:30:00',NULL,162,111,25.2,34.9,6.91,101.2,8.15,9.09,9.09,9.09,1,65.5,8.75,4.74,59.62,5.76,6.13,NULL,NULL);
INSERT INTO `samples` VALUES (1855,18,'2017-03-09',6,'08:45:00',NULL,162,111,25.4,34.5,6.78,100.5,8.14,6.89,6.89,6.89,1,65.09,6.8,4.9,64.4,6.27,5.77,NULL,NULL);
INSERT INTO `samples` VALUES (1856,7,'2017-03-08',1,'08:30:00',NULL,162,111,24.5,34,6.33,91.8,8.1,1.81,1.81,1.81,1,96.43,10.88,9.02,396.1,2.53,7.35,NULL,NULL);
INSERT INTO `samples` VALUES (1857,8,'2017-03-08',2,'08:59:00',NULL,162,111,24.6,33.9,6.13,88.8,8.1,7.56,7.56,7.56,1,76.94,10.36,8.9,290.11,13.06,6.65,NULL,NULL);
INSERT INTO `samples` VALUES (1858,9,'2017-03-08',3,'09:24:00',NULL,162,111,24.6,34.2,6.42,93.4,8.11,3.03,3.03,3.03,1,71.71,9.87,7.07,175.61,6.94,7.32,NULL,NULL);
INSERT INTO `samples` VALUES (1859,10,'2017-03-08',4,'09:54:00',NULL,162,111,25.2,34.5,6.93,102.1,8.2,2.18,2.18,2.18,1,79.27,9.09,4.78,101.65,2.55,6.55,NULL,NULL);
INSERT INTO `samples` VALUES (1860,11,'2017-03-08',5,'10:24:00',NULL,162,111,25.7,34.5,7.07,104.9,8.21,1.68,1.68,1.68,1,70.08,6.69,3.79,74.47,2.15,6.08,NULL,NULL);
INSERT INTO `samples` VALUES (1861,12,'2017-03-08',6,'11:00:00',NULL,162,111,26,34.5,7.35,109.4,8.13,1.67,1.67,1.67,1,80.98,7.28,5.5,100.44,6.17,8.93,NULL,NULL);
INSERT INTO `samples` VALUES (1862,1,'2017-03-07',1,'07:40:00',NULL,162,111,24.2,34.5,6.75,97.9,8.16,1.8,1.8,1.8,1,224.47,15.19,9.21,171.59,16.23,15.98,NULL,NULL);
INSERT INTO `samples` VALUES (1863,2,'2017-03-07',2,'08:03:00',NULL,162,111,24.2,32.8,6.81,97.7,8.14,9.51,9.51,9.51,1,277.55,19.5,17.47,1038.69,231.41,7.05,NULL,NULL);
INSERT INTO `samples` VALUES (1864,3,'2017-03-07',3,'08:25:00',NULL,162,111,24.3,34.6,6.82,99.1,8.15,8.4,8.4,8.4,1,71.1,9.51,6.58,102.52,5.4,5.96,NULL,NULL);
INSERT INTO `samples` VALUES (1865,4,'2017-03-07',4,'08:45:00',NULL,162,111,24.5,34.2,6.7,97.5,8.15,7.2,7.2,7.2,1,74.76,13.16,10.3,263.05,11.25,6.23,NULL,NULL);
INSERT INTO `samples` VALUES (1866,5,'2017-03-07',5,'09:04:00',NULL,162,111,24.9,33.7,6.69,97.6,8.17,3.84,3.84,3.84,1,122.36,10.73,8.64,398.69,63.58,7.36,NULL,NULL);
INSERT INTO `samples` VALUES (1867,6,'2017-03-07',6,'09:25:00',NULL,162,111,24.9,32.9,6.79,98.6,8.19,2.11,2.11,2.11,1,99.98,18.3,14.53,742.36,37.2,5.24,NULL,NULL);
INSERT INTO `samples` VALUES (1868,13,'2017-03-30',1,'07:20:00',NULL,162,112,25,34,6,87.7,8.02,5.6,5.6,5.6,1,72.36,10.68,5.4,165.19,5.52,6.67,NULL,NULL);
INSERT INTO `samples` VALUES (1869,14,'2017-03-30',2,'07:42:00',NULL,162,112,26,34.5,6.41,95.3,8.08,7.74,7.74,7.74,1,62.05,8.5,4.77,179.25,3.86,8.65,NULL,NULL);
INSERT INTO `samples` VALUES (1870,15,'2017-03-30',3,'08:05:00',NULL,162,112,25.9,34.2,6.27,92.9,8.03,6.34,6.34,6.34,1,64.89,7.35,5.64,256.49,6.94,5.75,NULL,NULL);
INSERT INTO `samples` VALUES (1871,16,'2017-03-30',4,'08:30:00',NULL,162,112,25.7,34.3,6.73,99.6,8.11,7.85,7.85,7.85,1,69.22,9.61,5.77,59.4,3.2,8.89,NULL,NULL);
INSERT INTO `samples` VALUES (1872,17,'2017-03-30',5,'09:00:00',NULL,162,112,26.2,34.3,6.92,103.2,8.14,5.91,5.91,5.91,1,71.06,7.38,3.19,69.76,3.03,8.29,NULL,NULL);
INSERT INTO `samples` VALUES (1873,18,'2017-03-30',6,'09:20:00',NULL,162,112,26.5,34.4,6.79,101.9,8.13,3.96,3.96,3.96,1,63.57,9.18,5.45,65.9,1.9,6.91,NULL,NULL);
INSERT INTO `samples` VALUES (1874,7,'2017-03-29',1,'08:21:00',NULL,162,112,25.4,33.1,6.23,90.8,8.07,11.33,11.33,11.33,1,73.7,21.64,14.61,701.31,6.16,10.74,NULL,NULL);
INSERT INTO `samples` VALUES (1875,8,'2017-03-29',2,'08:50:00',NULL,162,112,26,33.4,5.72,84.5,8.06,7.19,7.19,7.19,1,82.42,13.31,8.35,321.29,12.09,11.43,NULL,NULL);
INSERT INTO `samples` VALUES (1876,9,'2017-03-29',3,'09:10:00',NULL,162,112,26.3,33.1,5.93,87.9,8.07,7.53,7.53,7.53,1,123.15,20.92,9.56,497.53,47.97,20.31,NULL,NULL);
INSERT INTO `samples` VALUES (1877,10,'2017-03-29',4,'09:36:00',NULL,162,112,26.2,33.9,6.78,100.8,8.18,2.5,2.5,2.5,1,80.2,13.09,5.51,150.16,2.14,16.26,NULL,NULL);
INSERT INTO `samples` VALUES (1878,11,'2017-03-29',5,'10:10:00',NULL,162,112,27.3,34.3,6.7,101.8,8.16,3.99,3.99,3.99,1,77.78,9.64,4.22,67.99,2.19,13.34,NULL,NULL);
INSERT INTO `samples` VALUES (1879,12,'2017-03-29',6,'10:36:00',NULL,162,112,26.8,34,6.95,104.5,8.13,2.18,2.18,2.18,1,77.95,12.43,6.28,147.2,5.68,14.6,NULL,NULL);
INSERT INTO `samples` VALUES (1880,1,'2017-03-28',1,'07:41:00',NULL,162,112,24.4,34.4,6.75,97.6,8.11,0.84,0.84,0.84,1,109.54,14.07,8.81,326.9,26.32,9,NULL,NULL);
INSERT INTO `samples` VALUES (1881,2,'2017-03-28',2,'08:06:00',NULL,162,112,24.4,33.4,6.62,95.1,8.12,3.33,3.33,3.33,1,159.83,21.04,12.74,669.95,94.09,7.49,NULL,NULL);
INSERT INTO `samples` VALUES (1882,3,'2017-03-28',3,'08:28:00',NULL,162,112,24.6,34.4,6.62,96.3,8.11,5.24,5.24,5.24,1,87.28,12.22,7.59,154.02,9.23,7.96,NULL,NULL);
INSERT INTO `samples` VALUES (1883,4,'2017-03-28',4,'08:43:00',NULL,162,112,25.4,34,6.71,98.4,8.18,1.88,1.88,1.88,1,86.99,14.49,8.87,303.09,19.08,6.92,NULL,NULL);
INSERT INTO `samples` VALUES (1884,5,'2017-03-28',5,'09:02:00',NULL,162,112,25.6,33.3,6.76,99.1,8.18,2.17,2.17,2.17,1,143.94,16.31,9.49,591.67,81.12,7.49,NULL,NULL);
INSERT INTO `samples` VALUES (1885,6,'2017-03-28',6,'09:21:00',NULL,162,112,25.4,32.9,6.77,98.8,8.19,0.63,0.63,0.63,1,102.96,19.47,14.15,768.9,37.51,6.85,NULL,NULL);
INSERT INTO `samples` VALUES (1886,13,'2017-04-20',1,'07:15:00',NULL,162,113,25.7,33.9,5.82,86.1,8.04,1.61,1.61,1.61,1,95.44,9.63,6.18,162.82,3.58,4.19,NULL,NULL);
INSERT INTO `samples` VALUES (1887,14,'2017-04-20',2,'07:30:00',NULL,162,113,27.1,34.3,6.16,93.6,8.09,13.33,13.33,13.33,1,92.19,8.65,6.75,492.01,4.96,4.66,NULL,NULL);
INSERT INTO `samples` VALUES (1888,15,'2017-04-20',3,'07:50:00',NULL,162,113,26.3,33.9,6.19,92.5,8.02,12.6,12.6,12.6,1,88.28,9.53,7.38,527.84,7.43,5.56,NULL,NULL);
INSERT INTO `samples` VALUES (1889,16,'2017-04-20',4,'08:05:00',NULL,162,113,25.9,34.3,6.54,97.3,8.1,7,7,7,1,83.28,10.3,5.44,72.89,3.09,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (1890,17,'2017-04-20',5,'08:20:00',NULL,162,113,26,34.2,6.6,98.1,8.09,4.08,4.08,4.08,1,85.81,6.78,4.25,109.36,3.48,3.28,NULL,NULL);
INSERT INTO `samples` VALUES (1891,18,'2017-04-20',6,'08:40:00',NULL,162,113,26.7,34.6,6.5,98.2,8.11,5.31,5.31,5.31,1,81.48,6.06,4.22,90.27,3.16,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (1892,7,'2017-04-19',1,'08:18:00',NULL,162,113,25.8,32.7,6.44,94.7,8.12,2.18,2.18,2.18,1,90.59,14.16,10.6,690.76,3.47,3.86,NULL,NULL);
INSERT INTO `samples` VALUES (1893,8,'2017-04-19',2,'08:45:00',NULL,162,113,25.9,33.7,6.43,95.3,8.11,9.15,9.15,9.15,1,91.68,11.62,8.36,261.11,3.39,2.74,NULL,NULL);
INSERT INTO `samples` VALUES (1894,9,'2017-04-19',3,'09:06:00',NULL,162,113,26.2,33,6.24,92.6,8.1,11.37,11.37,11.37,1,109.01,14.12,11.45,562.02,23.82,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (1895,10,'2017-04-19',4,'09:30:00',NULL,162,113,26.1,34.1,6.63,99,8.18,1.64,1.64,1.64,1,90.76,8.46,4.84,97.38,1.25,3.55,NULL,NULL);
INSERT INTO `samples` VALUES (1896,11,'2017-04-19',5,'10:00:00',NULL,162,113,26.7,34.4,6.74,101.8,8.18,2.53,2.53,2.53,1,84.75,8.23,4.45,74.79,0.59,2.37,NULL,NULL);
INSERT INTO `samples` VALUES (1897,12,'2017-04-19',6,'10:25:00',NULL,162,113,27,34.3,6.97,105.7,8.15,1.5,1.5,1.5,1,118.54,9.25,6.57,158.8,3.77,7.88,NULL,NULL);
INSERT INTO `samples` VALUES (1898,1,'2017-04-18',1,'07:48:00',NULL,162,113,24.8,34,6.84,99.5,8.15,1,1,1,1,161.44,13.29,9.28,437.66,20.27,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (1899,2,'2017-04-18',2,'08:12:00',NULL,162,113,24.8,31.8,6.59,94.6,8.17,3.24,3.24,3.24,1,230.16,15.66,13.43,1122.88,146.51,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (1900,3,'2017-04-18',3,'08:34:00',NULL,162,113,24.1,24.4,7.26,98.6,8.22,2.59,2.59,2.59,1,146.46,11.19,7.94,1203.24,16.14,7.74,NULL,NULL);
INSERT INTO `samples` VALUES (1901,4,'2017-04-18',4,'08:53:00',NULL,162,113,26.1,33.5,6.53,96.9,8.16,0.96,0.96,0.96,1,128.53,13.35,9.08,619.74,35,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (1902,5,'2017-04-18',5,'09:10:00',NULL,162,113,26.1,33.1,6.6,97.7,8.16,1.02,1.02,1.02,1,168.36,13.71,10.41,850.37,79.71,4.93,NULL,NULL);
INSERT INTO `samples` VALUES (1903,6,'2017-04-18',6,'09:26:00',NULL,162,113,25.9,33,6.57,96.8,8.18,0.92,0.92,0.92,1,131.32,18.46,15.75,1191.85,40.97,2.46,NULL,NULL);
INSERT INTO `samples` VALUES (1904,13,'2017-05-11',1,'07:21:00',NULL,162,114,24.6,34.2,6.07,88.2,8.06,2.44,2.44,2.44,1,76.91,14.57,5.25,220.95,4.15,3.16,NULL,NULL);
INSERT INTO `samples` VALUES (1905,14,'2017-05-11',2,'07:44:00',NULL,162,114,25.1,34.3,6.46,94.8,8.11,1.85,1.85,1.85,1,64.66,9.25,4.86,286.27,5.27,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (1906,15,'2017-05-11',3,'08:05:00',NULL,162,114,24.9,33.9,6.47,94.7,8.1,2.22,2.22,2.22,1,60.93,8.69,5.35,355.94,3.89,2.6,NULL,NULL);
INSERT INTO `samples` VALUES (1907,16,'2017-05-11',4,'08:24:00',NULL,162,114,25.2,34.6,6.88,101.5,8.16,5.36,5.36,5.36,1,67.65,11.57,4.98,102.26,6.23,2,NULL,NULL);
INSERT INTO `samples` VALUES (1908,17,'2017-05-11',5,'08:42:00',NULL,162,114,25.3,34.3,7.21,106.3,8.2,5.85,5.85,5.85,1,71.81,9.22,4.74,155.91,1.82,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (1909,18,'2017-05-11',6,'09:06:00',NULL,162,114,25.1,34.4,6.98,102.7,8.2,3.51,3.51,3.51,1,67.97,9.75,5.05,79.39,1.63,2.58,NULL,NULL);
INSERT INTO `samples` VALUES (1910,7,'2017-05-10',1,'08:17:00',NULL,162,114,25.5,34.2,6.46,95.6,8.14,2.24,2.24,2.24,1,64.53,8.41,6.17,296.93,3.01,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (1911,8,'2017-05-10',2,'08:40:00',NULL,162,114,25.8,33.9,6.24,92.7,8.14,2,2,2,1,67.52,8.33,6.28,203.96,7.82,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (1912,9,'2017-05-10',3,'08:59:00',NULL,162,114,25.9,34.7,6.33,94.4,8.14,1.57,1.57,1.57,1,69.5,17.55,5.04,61.3,4.65,4.9,NULL,NULL);
INSERT INTO `samples` VALUES (1913,10,'2017-05-10',4,'09:31:00',NULL,162,114,26.1,34.3,6.91,103.2,8.23,1.67,1.67,1.67,1,69.5,9.38,4.86,222.52,1.68,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (1914,11,'2017-05-10',5,'09:53:00',NULL,162,114,26.8,34.6,6.94,105,8.18,2.19,2.19,2.19,1,68.73,8.82,4.45,103.51,1.64,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (1915,12,'2017-05-10',6,'10:19:00',NULL,162,114,26.8,34.4,7.23,109.7,8.18,1.74,1.74,1.74,1,73.02,8.63,5.93,94.43,4.35,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (1916,1,'2017-05-09',1,'07:35:00',NULL,162,114,25.3,33.2,7.2,102.6,8.12,0.75,0.75,0.75,1,137.54,17.93,13.54,1088.85,56.57,5.1,NULL,NULL);
INSERT INTO `samples` VALUES (1917,2,'2017-05-09',2,'08:00:00',NULL,162,114,25.4,32.3,6.78,98.9,8.16,2.06,2.06,2.06,1,256.83,17.07,15.82,1412.92,171.36,4.94,NULL,NULL);
INSERT INTO `samples` VALUES (1918,3,'2017-05-09',3,'08:22:00',NULL,162,114,25.5,34,6.88,101.6,8.14,2.59,2.59,2.59,1,117.85,10.05,7.06,300.1,9.84,7.68,NULL,NULL);
INSERT INTO `samples` VALUES (1919,4,'2017-05-09',4,'08:45:00',NULL,162,114,26.1,33.6,6.96,103.7,8.2,1.48,1.48,1.48,1,116.75,12.28,8.49,562.57,25.13,5.99,NULL,NULL);
INSERT INTO `samples` VALUES (1920,5,'2017-05-09',5,'09:02:00',NULL,162,114,26.2,32.3,6.92,102.2,8.19,2.5,2.5,2.5,1,230.57,15.6,13.62,1488.58,156.2,5.01,NULL,NULL);
INSERT INTO `samples` VALUES (1921,6,'2017-05-09',6,'09:20:00',NULL,162,114,26,33,6.86,101.5,8.21,0.78,0.78,0.78,1,113.94,14.22,12.1,983.76,35.72,4.87,NULL,NULL);
INSERT INTO `samples` VALUES (1922,13,'2017-06-01',1,'07:20:00',NULL,162,115,25,34.5,5.8,85.1,8,1.87,1.87,1.87,1,81.28,7.25,4.42,211.99,11.56,2.81,NULL,NULL);
INSERT INTO `samples` VALUES (1923,14,'2017-06-01',2,'07:45:00',NULL,162,115,25.8,34.6,6.45,96.1,8.09,5.85,5.85,5.85,1,62.1,7.93,5.01,360.92,8.71,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (1924,15,'2017-06-01',3,'08:05:00',NULL,162,115,26,34.7,5.87,87.7,8.06,4.07,4.07,4.07,1,62.55,6.53,4.96,233.74,4.74,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (1925,16,'2017-06-01',4,'08:30:00',NULL,162,115,25.8,34.9,6.84,101.8,8.09,7.14,7.14,7.14,1,63.06,7.8,3.56,83.75,1.84,1.26,NULL,NULL);
INSERT INTO `samples` VALUES (1926,17,'2017-06-01',5,'08:50:00',NULL,162,115,25.9,34.8,7.01,104.5,8.15,4.42,4.42,4.42,1,64.32,7.26,2.81,61.83,2.19,1.72,NULL,NULL);
INSERT INTO `samples` VALUES (1927,18,'2017-06-01',6,'09:10:00',NULL,162,115,25.8,34.7,6.96,103.6,8.16,2.82,2.82,2.82,1,65.6,9.21,3.65,71.59,2.54,1.59,NULL,NULL);
INSERT INTO `samples` VALUES (1928,7,'2017-05-31',1,'08:12:00',NULL,162,115,26.4,34,6.21,92.8,8.07,3.94,3.94,3.94,1,70.51,12.12,11.89,1061.01,7.05,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (1929,8,'2017-05-31',2,'08:41:00',NULL,162,115,26.5,34.4,6.32,94.9,8.06,5.14,5.14,5.14,1,70.11,11.37,9.18,331.09,9.63,5.91,NULL,NULL);
INSERT INTO `samples` VALUES (1930,9,'2017-05-31',3,'09:02:00',NULL,162,115,26.8,33.7,6.01,90.3,8.05,13.23,13.23,13.23,1,112.14,13.81,9.87,530.06,27.14,5.73,NULL,NULL);
INSERT INTO `samples` VALUES (1931,10,'2017-05-31',4,'09:25:00',NULL,162,115,26.9,34.6,6.73,101.8,8.15,3.1,3.1,3.1,1,63.06,10.43,4.14,132.33,4.13,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (1932,11,'2017-05-31',5,'09:48:00',NULL,162,115,26.9,34.8,6.8,103.2,8.12,2.59,2.59,2.59,1,98.09,8.48,4.65,69.65,6.98,7.24,NULL,NULL);
INSERT INTO `samples` VALUES (1933,12,'2017-05-31',6,'10:10:00',NULL,162,115,27.1,34.7,7.27,110.5,8.1,2.31,2.31,2.31,1,66.91,6.41,4.23,70.33,8.73,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (1934,1,'2017-05-30',1,'07:40:00',NULL,162,115,25.7,33.9,6.92,102.2,8.09,1.07,1.07,1.07,1,102.75,11.34,8.89,692.06,36.12,4.31,NULL,NULL);
INSERT INTO `samples` VALUES (1935,2,'2017-05-30',2,'08:06:00',NULL,162,115,26.1,33.1,6.82,100.9,8.13,4.2,4.2,4.2,1,221.5,14.04,12.27,1133.73,151.18,6.19,NULL,NULL);
INSERT INTO `samples` VALUES (1936,3,'2017-05-30',3,'08:23:00',NULL,162,115,26,34.5,6.83,101.8,8.09,2.8,2.8,2.8,1,72.95,8.76,5.7,146.13,7.64,3.39,NULL,NULL);
INSERT INTO `samples` VALUES (1937,4,'2017-05-30',4,'08:47:00',NULL,162,115,26.5,34.3,6.83,102.3,8.16,1.25,1.25,1.25,1,86.47,10.51,6.24,427.43,24.06,2.82,NULL,NULL);
INSERT INTO `samples` VALUES (1938,5,'2017-05-30',5,'09:04:00',NULL,162,115,26.4,33.9,6.87,102.9,8.16,5.07,5.07,5.07,1,144.84,13.37,8.19,657.55,63.53,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (1939,6,'2017-05-30',6,'09:20:00',NULL,162,115,26.4,33.8,6.78,101.4,8.16,3.1,3.1,3.1,1,91.95,15.19,12.6,1009.81,34.86,2.93,NULL,NULL);
INSERT INTO `samples` VALUES (1940,13,'2017-06-22',1,'07:20:00',NULL,162,116,26.1,34.6,5.82,87.3,8.4,1.43,1.43,1.43,1,84.85,10.52,5.98,199.61,5.57,2.01,NULL,NULL);
INSERT INTO `samples` VALUES (1941,14,'2017-06-22',2,'07:45:00',NULL,162,116,26,34.3,6.38,95.5,8.2,15,15,15,1,75.23,8.78,8.08,659.6,8.11,3.37,NULL,NULL);
INSERT INTO `samples` VALUES (1942,15,'2017-06-22',3,'08:10:00',NULL,162,116,25.7,33.9,6.2,92.1,8.01,5.01,5.01,5.01,1,72.34,10.18,8.02,514.52,8.14,3.99,NULL,NULL);
INSERT INTO `samples` VALUES (1943,16,'2017-06-22',4,'08:30:00',NULL,162,116,26.4,34.6,6.54,98.7,8.12,4.13,4.13,4.13,1,77.41,7.94,5.39,89.06,4.35,1.11,NULL,NULL);
INSERT INTO `samples` VALUES (1944,17,'2017-06-22',5,'08:50:00',NULL,162,116,26.1,34.6,6.88,103.2,8.16,2.93,2.93,2.93,1,75.37,9.07,4.85,112.91,8.83,1.33,NULL,NULL);
INSERT INTO `samples` VALUES (1945,18,'2017-06-22',6,'09:10:00',NULL,162,116,26.1,34.7,6.75,101.4,8.13,3.83,3.83,3.83,1,67.44,7.26,5.14,48.61,4.01,1.45,NULL,NULL);
INSERT INTO `samples` VALUES (1946,7,'2017-06-21',1,'08:15:00',NULL,162,116,26.9,33.4,6.47,97.6,8.08,4.88,4.88,4.88,1,68.12,13.03,6.59,159.65,3.04,2.52,NULL,NULL);
INSERT INTO `samples` VALUES (1947,8,'2017-06-21',2,'08:43:00',NULL,162,116,26.7,33.9,6.32,95.2,8.08,2.45,2.45,2.45,1,75,10.63,7.3,196.89,7.6,3.98,NULL,NULL);
INSERT INTO `samples` VALUES (1948,9,'2017-06-21',3,'09:03:00',NULL,162,116,27.3,34.5,6.85,104.6,8.1,2.24,2.24,2.24,1,69.92,9.86,6.9,120.3,6.34,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (1949,10,'2017-06-21',4,'09:30:00',NULL,162,116,27.3,34.5,6.69,102.2,8.17,3.96,3.96,3.96,1,77.16,9.92,5.4,109.23,2.58,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (1950,11,'2017-06-21',5,'09:50:00',NULL,162,116,27.4,34.5,6.86,104.9,8.2,1.8,1.8,1.8,1,76.83,10.82,5.28,50.02,2.35,1.15,NULL,NULL);
INSERT INTO `samples` VALUES (1951,12,'2017-06-21',6,'10:12:00',NULL,162,116,27.6,34.6,6.94,106.5,8.16,3.59,3.59,3.59,1,70.71,10.58,5.97,76.78,3.88,2.3,NULL,NULL);
INSERT INTO `samples` VALUES (1952,19,'2017-06-23',1,'07:25:00',NULL,162,116,25.5,33.3,5.8,85.6,8.08,0.93,0.93,0.93,1,86.71,12.03,7.81,502.8,4.82,5.38,NULL,NULL);
INSERT INTO `samples` VALUES (1953,20,'2017-06-23',2,'08:05:00',NULL,162,116,26,32.3,6.56,97.2,8.18,2.18,2.18,2.18,1,123.88,10.98,8.94,1032.64,59,1.45,NULL,NULL);
INSERT INTO `samples` VALUES (1954,21,'2017-06-23',3,'08:40:00',NULL,162,116,26.4,33.8,6.44,96.8,8.13,1.4,1.4,1.4,1,79.37,11.05,6.5,367.12,11.34,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (1955,22,'2017-06-23',4,'09:14:00',NULL,162,116,26.7,34.2,6.72,102,8.2,0.43,0.43,0.43,1,73.24,13.26,4.71,84.03,4.31,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (1956,23,'2017-06-23',5,'09:50:00',NULL,162,116,26.3,31.7,6.5,96.4,8.08,1.22,1.22,1.22,1,282.06,27.92,25.09,2095.31,208.36,5.44,NULL,NULL);
INSERT INTO `samples` VALUES (1957,24,'2017-06-23',6,'10:20:00',NULL,162,116,26.7,33.1,6.59,99.2,8.1,8.26,8.26,8.26,1,159.63,16.32,12.27,948.8,92.61,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (1958,1,'2017-06-20',1,'07:41:00',NULL,162,116,26.2,33.6,6.9,102.9,8.1,1.94,1.94,1.94,1,121.24,21.68,11.42,749.69,43.88,3.03,NULL,NULL);
INSERT INTO `samples` VALUES (1959,2,'2017-06-20',2,'08:07:00',NULL,162,116,25.7,30.5,6.96,101.1,8.16,7.1,7.1,7.1,1,422.69,32.02,27.18,2784.71,373.53,2.68,NULL,NULL);
INSERT INTO `samples` VALUES (1960,3,'2017-06-20',3,'08:28:00',NULL,162,116,26.3,34.4,6.7,100.4,8.12,5.17,5.17,5.17,1,78.43,14.6,7.15,151.58,4.29,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (1961,4,'2017-06-20',4,'08:46:00',NULL,162,116,26.7,34.2,6.64,100.2,8.17,2.09,2.09,2.09,1,82.85,15.32,8.42,366.12,19.49,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (1962,5,'2017-06-20',5,'09:04:00',NULL,162,116,27,34,6.75,102.1,8.16,6.09,6.09,6.09,1,150.7,16.49,11.52,847.93,84.24,3.01,NULL,NULL);
INSERT INTO `samples` VALUES (1963,6,'2017-06-20',6,'09:22:00',NULL,162,116,26.9,33.9,6.76,102.2,8.17,4.98,4.98,4.98,1,81.95,20.6,14.97,689.49,19.33,0.43,NULL,NULL);
INSERT INTO `samples` VALUES (1964,13,'2017-07-13',1,'07:18:00',NULL,162,117,26.6,34.6,5.22,78.8,8,1.5,1.5,1.5,1,94.73,10.78,5.26,144.13,9.77,2.56,NULL,NULL);
INSERT INTO `samples` VALUES (1965,14,'2017-07-13',2,'07:39:00',NULL,162,117,26.9,34.5,6.13,93.1,8.08,2.53,2.53,2.53,1,71.99,7.78,4.71,219.15,7.67,3.19,NULL,NULL);
INSERT INTO `samples` VALUES (1966,15,'2017-07-13',3,'07:55:00',NULL,162,117,26.9,34.4,5.77,87.6,8.04,3.77,3.77,3.77,1,58.96,7.98,4.99,256.8,7.65,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (1967,16,'2017-07-13',4,'08:14:00',NULL,162,117,27.1,34.4,6.19,94.3,8.09,2.38,2.38,2.38,1,71.01,8.84,3.87,52.08,7.09,1.25,NULL,NULL);
INSERT INTO `samples` VALUES (1968,17,'2017-07-13',5,'08:31:00',NULL,162,117,27.3,34.5,6.91,105.5,8.12,5.88,5.88,5.88,1,62.99,9.49,3.48,142.38,8.58,1.85,NULL,NULL);
INSERT INTO `samples` VALUES (1969,18,'2017-07-13',6,'08:48:00',NULL,162,117,26.7,34.2,6.63,100.2,8.13,2.26,2.26,2.26,1,63.94,10.06,5.8,136.98,7.27,1.55,NULL,NULL);
INSERT INTO `samples` VALUES (1970,7,'2017-07-12',1,'08:15:00',NULL,162,117,27.1,34.5,5.66,86.1,8.06,2.14,2.14,2.14,1,71.27,11.81,6.37,265.14,7.73,1.62,NULL,NULL);
INSERT INTO `samples` VALUES (1971,8,'2017-07-12',2,'08:35:00',NULL,162,117,27.1,34.1,5.47,82.9,8.06,4.57,4.57,4.57,1,69.26,10.39,6.82,278.27,12.3,3.23,NULL,NULL);
INSERT INTO `samples` VALUES (1972,9,'2017-07-12',3,'08:55:00',NULL,162,117,28.2,33.7,5.26,81.1,8.04,6.11,6.11,6.11,1,77.07,12.2,6.52,512.47,21.68,5.08,NULL,NULL);
INSERT INTO `samples` VALUES (1973,10,'2017-07-12',4,'09:20:00',NULL,162,117,27.6,34.3,6.5,99.5,8.16,1.14,1.14,1.14,1,72.58,8.97,3.47,177.75,7.89,2.16,NULL,NULL);
INSERT INTO `samples` VALUES (1974,11,'2017-07-12',5,'09:40:00',NULL,162,117,27.8,34.5,6.53,100.5,8.11,2.12,2.12,2.12,1,73.6,10.64,3.77,103.36,7.47,2.08,NULL,NULL);
INSERT INTO `samples` VALUES (1975,12,'2017-07-12',6,'10:00:00',NULL,162,117,27.8,34.4,6.24,95.9,8.07,1.65,1.65,1.65,1,65.01,11.9,4.88,125.82,9.24,2.78,NULL,NULL);
INSERT INTO `samples` VALUES (1976,19,'2017-07-14',1,'08:00:00',NULL,162,117,26.4,33.8,6.4,96.2,8.13,0.63,0.63,0.63,1,94.26,10.24,4.7,176.09,7.23,3.36,NULL,NULL);
INSERT INTO `samples` VALUES (1977,21,'2017-07-14',2,'08:41:00',NULL,162,117,26.5,34.3,6.74,101.3,8.15,1.54,1.54,1.54,1,70.67,9.91,5.5,311.63,11.99,3.15,NULL,NULL);
INSERT INTO `samples` VALUES (1978,22,'2017-07-14',3,'09:10:00',NULL,162,117,26.4,34.6,6.73,101.5,8.16,0.89,0.89,0.89,1,66.79,12.74,4.31,88.08,8.95,1.24,NULL,NULL);
INSERT INTO `samples` VALUES (1979,23,'2017-07-14',4,'09:32:00',NULL,162,117,27.4,31.4,6.51,97.9,8.08,0.6,0.6,0.6,1,357.03,44.35,30.05,2740.61,326.81,5.23,NULL,NULL);
INSERT INTO `samples` VALUES (1980,24,'2017-07-14',5,'09:59:00',NULL,162,117,27.3,34.3,5.85,89.4,8.09,1.7,1.7,1.7,1,99.54,13.42,6.54,315.72,39.02,3.14,NULL,NULL);
INSERT INTO `samples` VALUES (1981,25,'2017-07-14',6,'10:25:00',NULL,162,117,27.7,33.9,5.31,81.3,8.05,1.83,1.83,1.83,1,101.08,15.19,6.3,280.71,20.23,13.06,NULL,NULL);
INSERT INTO `samples` VALUES (1982,1,'2017-07-11',1,'07:55:00',NULL,162,117,26.6,32.8,6.6,98.6,8.08,0.83,0.83,0.83,1,142.77,17.73,13.49,1216.76,83.53,7.87,NULL,NULL);
INSERT INTO `samples` VALUES (1983,2,'2017-07-11',2,'08:21:00',NULL,162,117,26.6,32.1,6.18,91.9,8.14,1.15,1.15,1.15,1,272.94,18.08,15.14,1651.57,252.84,6.35,NULL,NULL);
INSERT INTO `samples` VALUES (1984,3,'2017-07-11',3,'08:43:00',NULL,162,117,26.6,34.1,5.82,86.7,8.07,1.99,1.99,1.99,1,76.71,12.28,6.33,263.19,16.23,5.59,NULL,NULL);
INSERT INTO `samples` VALUES (1985,4,'2017-07-11',4,'09:05:00',NULL,162,117,27.4,33.4,6.23,94.6,8.16,0.34,0.34,0.34,1,108.2,13.94,7.62,673.69,47.01,2.81,NULL,NULL);
INSERT INTO `samples` VALUES (1986,5,'2017-07-11',5,'09:25:00',NULL,162,117,27.3,33,6.56,99.3,8.17,0.92,0.92,0.92,1,182.63,15.07,10.81,1282.27,146.96,3.22,NULL,NULL);
INSERT INTO `samples` VALUES (1987,6,'2017-07-11',6,'09:44:00',NULL,162,117,27.3,34.1,6.33,96.3,8.18,0.67,0.67,0.67,1,78.21,12.88,7.07,528.03,22.21,0.86,NULL,NULL);
INSERT INTO `samples` VALUES (1988,13,'2017-08-03',1,'07:07:00',NULL,162,118,27,34.8,5.22,79.3,7.94,2.29,2.29,2.29,1,116.3,7.28,4.41,234.95,6.8,7.34,NULL,NULL);
INSERT INTO `samples` VALUES (1989,14,'2017-08-03',2,'07:38:00',NULL,162,118,27.8,34.4,6.22,95.7,8.04,6.29,6.29,6.29,1,70.15,7.41,5.38,404.69,5.5,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (1990,15,'2017-08-03',3,'07:58:00',NULL,162,118,27.8,34.4,5.56,85.6,8.01,3.56,3.56,3.56,1,76.61,7.74,5.55,284.54,4.9,2.44,NULL,NULL);
INSERT INTO `samples` VALUES (1991,16,'2017-08-03',4,'08:18:00',NULL,162,118,28.1,34.5,6.4,99.1,8.09,6.97,6.97,6.97,1,74.01,11.18,5.19,65.7,4.77,1.23,NULL,NULL);
INSERT INTO `samples` VALUES (1992,17,'2017-08-03',5,'08:40:00',NULL,162,118,28,34.7,6.79,105,8.12,7.58,7.58,7.58,1,68.99,7.55,4.2,109.59,6.79,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (1993,18,'2017-08-03',6,'08:57:00',NULL,162,118,28.1,34.2,6.47,99.9,8.1,2.05,2.05,2.05,1,62.15,7.99,5.3,170.62,3.91,1.47,NULL,NULL);
INSERT INTO `samples` VALUES (1994,7,'2017-08-02',1,'08:17:00',NULL,162,118,27.5,34.3,6.09,93.2,8.03,1.24,1.24,1.24,1,80.2,15.48,11.25,771.08,3.88,4.66,NULL,NULL);
INSERT INTO `samples` VALUES (1995,8,'2017-08-02',2,'08:40:00',NULL,162,118,27.4,34.3,6.28,96,8.06,6.2,6.2,6.2,1,71.38,11.01,8.62,273.52,7.15,1.94,NULL,NULL);
INSERT INTO `samples` VALUES (1996,9,'2017-08-02',3,'09:02:00',NULL,162,118,27.8,33.9,5.99,91.9,8.06,6.45,6.45,6.45,1,85.56,12.35,8.66,352.9,17.83,4.64,NULL,NULL);
INSERT INTO `samples` VALUES (1997,10,'2017-08-02',4,'09:26:00',NULL,162,118,28,34.3,6.7,103.6,8.18,1.29,1.29,1.29,1,67.79,9.37,5.14,39.53,2.95,1.17,NULL,NULL);
INSERT INTO `samples` VALUES (1998,11,'2017-08-02',5,'09:47:00',NULL,162,118,28.4,34.4,6.75,104.9,8.14,1.76,1.76,1.76,1,83.46,10.06,5.61,43.09,3.54,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (1999,12,'2017-08-02',6,'10:10:00',NULL,162,118,28.3,34.6,6.65,103.3,8.03,1.34,1.34,1.34,1,79.03,9.74,6.26,48.27,5.34,7.04,NULL,NULL);
INSERT INTO `samples` VALUES (2000,19,'2017-08-04',1,'08:05:00',NULL,162,118,26.7,33.5,5.68,85.2,8.09,1.25,1.25,1.25,1,85.1,11.47,6.82,395,3.63,6.93,NULL,NULL);
INSERT INTO `samples` VALUES (2001,21,'2017-08-04',2,'08:49:00',NULL,162,118,27.3,34.3,6.7,102,8.17,2.89,2.89,2.89,1,78.32,11.07,6.47,202.35,9.54,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (2002,22,'2017-08-04',3,'09:22:00',NULL,162,118,27.2,34.4,6.75,102.7,8.16,0.66,0.66,0.66,1,73.51,10.25,4.96,104.47,7.89,1.85,NULL,NULL);
INSERT INTO `samples` VALUES (2003,23,'2017-08-04',4,'09:50:00',NULL,162,118,27.8,33.4,6.49,99.1,8.09,1.03,1.03,1.03,1,210.65,20.1,14.61,926.01,109.84,5.05,NULL,NULL);
INSERT INTO `samples` VALUES (2004,24,'2017-08-04',5,'10:25:00',NULL,162,118,27.7,34,6.33,96.8,8.12,4.6,4.6,4.6,1,94.66,11.26,7.48,346.36,32.88,2.11,NULL,NULL);
INSERT INTO `samples` VALUES (2005,25,'2017-08-04',6,'10:48:00',NULL,162,118,28.2,34.1,7.08,109.3,8.15,7.57,7.57,7.57,1,92.12,9.78,5.96,235.17,11.82,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (2006,1,'2017-08-01',1,'08:00:00',NULL,162,118,26.9,32.9,6.75,101.4,8.09,0.74,0.74,0.74,1,161.7,23.25,14.27,907.91,64.75,5.73,NULL,NULL);
INSERT INTO `samples` VALUES (2007,2,'2017-08-01',2,'08:28:00',NULL,162,118,26.9,32.6,6.54,98.2,8.16,2.34,2.34,2.34,1,270.99,20.2,14.48,1066.38,205.32,3.66,NULL,NULL);
INSERT INTO `samples` VALUES (2008,3,'2017-08-01',3,'08:52:00',NULL,162,118,26.9,34.1,5.88,88.9,8.07,3.17,3.17,3.17,1,82.81,12.82,6.74,171.65,8,3.62,NULL,NULL);
INSERT INTO `samples` VALUES (2009,4,'2017-08-01',4,'09:14:00',NULL,162,118,27.5,34,6.41,98,8.15,0.35,0.35,0.35,1,96.29,12.71,7.96,326.92,25.42,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (2010,5,'2017-08-01',5,'09:36:00',NULL,162,118,27.6,33.9,6.67,102,8.18,4.7,4.7,4.7,1,111.86,13.26,8.37,311.91,32.34,3.69,NULL,NULL);
INSERT INTO `samples` VALUES (2011,6,'2017-08-01',6,'09:58:00',NULL,162,118,27.6,34.2,6.63,101.5,8.18,0.56,0.56,0.56,1,82.82,14.5,9.15,315.35,11.79,3.31,NULL,NULL);
INSERT INTO `samples` VALUES (2012,13,'2017-08-24',1,'07:11:00',NULL,162,119,25.3,35.2,5.95,88.4,8.03,12.23,12.23,12.23,1,78.47,9.82,6.49,143.87,4.65,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (2013,14,'2017-08-24',2,'07:50:00',NULL,162,119,25.8,35.3,6.49,97.2,8.07,3.53,3.53,3.53,1,94.78,8.03,5.58,258.22,3.68,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (2014,15,'2017-08-24',3,'08:11:00',NULL,162,119,25.9,35.2,6.05,90.7,8.04,4.13,4.13,4.13,1,70.69,7.68,5.74,255.03,4.29,2.34,NULL,NULL);
INSERT INTO `samples` VALUES (2015,16,'2017-08-24',4,'08:33:00',NULL,162,119,25.2,35.3,6.33,93.9,8.11,7.12,7.12,7.12,1,82.77,8.19,4.49,33.99,2.26,1.98,NULL,NULL);
INSERT INTO `samples` VALUES (2016,17,'2017-08-24',5,'08:55:00',NULL,162,119,25.8,35.2,6.78,101.5,8.13,8.85,8.85,8.85,1,77.22,7.37,5.32,169.88,12.97,1.77,NULL,NULL);
INSERT INTO `samples` VALUES (2017,18,'2017-08-24',6,'09:15:00',NULL,162,119,26.1,35,6.58,98.8,8.11,1.59,1.59,1.59,1,66.48,8.63,5.57,169.55,2.45,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (2018,7,'2017-08-23',1,'08:17:00',NULL,162,119,27.1,34.9,6.37,97.3,8.05,2.15,2.15,2.15,1,70.28,13.41,7.55,201.13,3.51,1.53,NULL,NULL);
INSERT INTO `samples` VALUES (2019,8,'2017-08-23',2,'08:47:00',NULL,162,119,27.2,34.3,6.43,97.9,8.08,7.56,7.56,7.56,1,73.93,13.68,10.47,290.58,7.75,3.95,NULL,NULL);
INSERT INTO `samples` VALUES (2020,9,'2017-08-23',3,'09:10:00',NULL,162,119,27.6,34.2,6.37,97.7,8.07,3.74,3.74,3.74,1,88.2,12.04,6.76,348.8,14.35,2.99,NULL,NULL);
INSERT INTO `samples` VALUES (2021,10,'2017-08-23',4,'09:38:00',NULL,162,119,27.4,34.5,6.64,101.6,8.17,5.13,5.13,5.13,1,71.43,15.47,7.14,176.57,1.94,1.61,NULL,NULL);
INSERT INTO `samples` VALUES (2022,11,'2017-08-23',5,'10:01:00',NULL,162,119,28.1,35.1,6.63,103.3,8.17,3.78,3.78,3.78,1,70.96,9.17,5.4,51.48,1.86,1.22,NULL,NULL);
INSERT INTO `samples` VALUES (2023,12,'2017-08-23',6,'10:25:00',NULL,162,119,27.8,35,7.06,109.2,8.09,1.62,1.62,1.62,1,69.15,8.68,5.23,61.94,1.82,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (2024,19,'2017-08-25',1,'07:53:00',NULL,162,119,25.6,34.6,6.31,93.9,8.12,1.29,1.29,1.29,1,74.98,10.74,6.43,217.96,0.66,3.43,NULL,NULL);
INSERT INTO `samples` VALUES (2025,21,'2017-08-25',2,'08:34:00',NULL,162,119,26.3,34.9,6.6,99.5,8.12,1.18,1.18,1.18,1,79.39,13.17,5.92,226.64,9.21,2.14,NULL,NULL);
INSERT INTO `samples` VALUES (2026,22,'2017-08-25',3,'09:15:00',NULL,162,119,26.5,35.2,6.72,102.1,8.17,1.26,1.26,1.26,1,74.42,11.49,5.26,70.62,7.66,1.52,NULL,NULL);
INSERT INTO `samples` VALUES (2027,23,'2017-08-25',4,'09:38:00',NULL,162,119,27,33.6,6.56,99.4,8.09,1.28,1.28,1.28,1,160.84,15.21,12.62,840.54,86.83,4.96,NULL,NULL);
INSERT INTO `samples` VALUES (2028,24,'2017-08-25',5,'10:10:00',NULL,162,119,26.9,34.9,6.09,92.8,8.09,3.29,3.29,3.29,1,93.28,11.96,8.16,296.65,34.18,1.81,NULL,NULL);
INSERT INTO `samples` VALUES (2029,25,'2017-08-25',6,'10:30:00',NULL,162,119,26.8,34.5,6.29,95.4,8.07,6.98,6.98,6.98,1,91.31,11.47,7.98,459.59,22.79,4.22,NULL,NULL);
INSERT INTO `samples` VALUES (2030,1,'2017-08-22',1,'07:55:00',NULL,162,119,26.4,33.6,6.61,99,8.04,1.52,1.52,1.52,1,149.64,16.31,12.25,784.04,48.67,5.9,NULL,NULL);
INSERT INTO `samples` VALUES (2031,2,'2017-08-22',2,'08:21:00',NULL,162,119,26.6,33.6,6.2,93.1,8.11,1.07,1.07,1.07,1,224.41,18.41,12.96,998.95,139.27,5.76,NULL,NULL);
INSERT INTO `samples` VALUES (2032,3,'2017-08-22',3,'08:43:00',NULL,162,119,26.5,31.1,6.42,94.9,8.11,2.93,2.93,2.93,1,156.05,13.09,8.39,669.41,19.86,10.88,NULL,NULL);
INSERT INTO `samples` VALUES (2033,4,'2017-08-22',4,'09:03:00',NULL,162,119,27,34.5,6.57,100,8.17,0.41,0.41,0.41,1,127.71,15.49,9.34,562.27,38.24,3.75,NULL,NULL);
INSERT INTO `samples` VALUES (2034,5,'2017-08-22',5,'09:22:00',NULL,162,119,27,33.1,6.92,104.4,8.18,5.89,5.89,5.89,1,274.47,23.04,13.59,1297.67,161.27,9.27,NULL,NULL);
INSERT INTO `samples` VALUES (2035,6,'2017-08-22',6,'09:46:00',NULL,162,119,27.1,34,6.63,100.6,8.17,1.57,1.57,1.57,1,91.59,17.83,10.73,677.18,25.46,2.48,NULL,NULL);
INSERT INTO `samples` VALUES (2036,13,'2017-09-14',1,'07:15:00',NULL,162,120,27.6,34.7,5.16,79.4,7.97,1.3,1.3,1.3,1,51.52,16.05,4.95,227.34,5.12,5.22,NULL,NULL);
INSERT INTO `samples` VALUES (2037,14,'2017-09-14',2,'07:37:00',NULL,162,120,28.5,34.7,6.13,95.7,8.02,4.6,4.6,4.6,1,46.81,13.24,5.22,523.58,4.48,3.57,NULL,NULL);
INSERT INTO `samples` VALUES (2038,15,'2017-09-14',3,'07:52:00',NULL,162,120,28.5,34.8,5.63,88,7.98,3.94,3.94,3.94,1,46.44,15.63,5.6,350.75,3.82,3.82,NULL,NULL);
INSERT INTO `samples` VALUES (2039,16,'2017-09-14',4,'08:07:00',NULL,162,120,28.3,34.9,6.35,98.9,8.08,8.39,8.39,8.39,1,43.73,12.89,4.45,131.29,1.91,3.29,NULL,NULL);
INSERT INTO `samples` VALUES (2040,17,'2017-09-14',5,'08:25:00',NULL,162,120,28.4,35,6.61,103.2,8.09,4.9,4.9,4.9,1,49.22,14.92,3.44,144.43,2.26,3.3,NULL,NULL);
INSERT INTO `samples` VALUES (2041,18,'2017-09-14',6,'08:40:00',NULL,162,120,28.5,34.3,6.58,102.6,8.07,2.7,2.7,2.7,1,39.98,15.44,3.93,179.2,1.7,2.63,NULL,NULL);
INSERT INTO `samples` VALUES (2042,7,'2017-09-13',1,'08:11:00',NULL,162,120,28,34.9,6.38,99,8.08,4.2,4.2,4.2,1,49.31,12.79,6.36,143.46,2.67,2.6,NULL,NULL);
INSERT INTO `samples` VALUES (2043,8,'2017-09-13',2,'08:43:00',NULL,162,120,27.9,34.5,6.36,99.3,8.11,8.29,8.29,8.29,1,54.94,19.21,10.67,371.38,3.71,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (2044,9,'2017-09-13',3,'10:14:00',NULL,162,120,27.7,33.8,6.51,99.9,8.08,19.2,19.2,19.2,1,52.62,15.98,11.6,571.52,10.3,4.99,NULL,NULL);
INSERT INTO `samples` VALUES (2045,11,'2017-09-13',4,'09:15:00',NULL,162,120,28,34.9,6.4,99.1,8.11,2.43,2.43,2.43,1,53.95,12.68,4.67,117.02,2.39,4.01,NULL,NULL);
INSERT INTO `samples` VALUES (2046,12,'2017-09-13',5,'09:33:00',NULL,162,120,28.3,34.9,6.15,95.9,8.04,1.15,1.15,1.15,1,62.1,16.4,5.56,121.09,9.26,5.32,NULL,NULL);
INSERT INTO `samples` VALUES (2047,19,'2017-09-15',1,'08:00:00',NULL,162,120,26.9,34.1,5.5,83.4,8.07,6.46,6.46,6.46,1,62.92,16.49,7.38,401.49,3.04,5.77,NULL,NULL);
INSERT INTO `samples` VALUES (2048,21,'2017-09-15',2,'08:45:00',NULL,162,120,27.5,34.7,6.61,101.4,8.16,0.96,0.96,0.96,1,50.74,16.09,6.24,210.76,6.63,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (2049,22,'2017-09-15',3,'09:20:00',NULL,162,120,27.6,34.8,6.69,103,8.17,0.5,0.5,0.5,1,60.84,17.61,5.65,138.85,4.29,5.73,NULL,NULL);
INSERT INTO `samples` VALUES (2050,23,'2017-09-15',4,'09:55:00',NULL,162,120,28.5,34.4,6.73,104.9,8.15,1.49,1.49,1.49,1,87.99,18.6,11.79,510.07,43.29,6.68,NULL,NULL);
INSERT INTO `samples` VALUES (2051,24,'2017-09-15',5,'10:27:00',NULL,162,120,28.4,34.5,6.66,103.6,8.14,6.68,6.68,6.68,1,137.72,17.53,10.39,448.89,41.16,9.72,NULL,NULL);
INSERT INTO `samples` VALUES (2052,25,'2017-09-15',6,'10:57:00',NULL,162,120,28.3,34.4,6.97,108.3,8.13,10.18,10.18,10.18,1,59.38,17.23,7.12,460.06,6.29,3.96,NULL,NULL);
INSERT INTO `samples` VALUES (2053,1,'2017-09-12',1,'07:56:00',NULL,162,120,27.1,34.4,6.31,96.5,8.08,1.2,1.2,1.2,1,73.31,16.52,7.37,407.56,17.93,8.81,NULL,NULL);
INSERT INTO `samples` VALUES (2054,2,'2017-09-12',2,'08:22:00',NULL,162,120,27.5,34.3,6.32,96.9,8.13,6.88,6.88,6.88,1,84.72,17.19,10.41,476.03,45.57,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (2055,3,'2017-09-12',3,'08:42:00',NULL,162,120,27.4,34.5,6.07,93,8.08,6.49,6.49,6.49,1,64.28,16.03,8.61,235.46,6.3,5.84,NULL,NULL);
INSERT INTO `samples` VALUES (2056,4,'2017-09-12',4,'09:02:00',NULL,162,120,28.1,34.5,6.38,98.8,8.15,0.53,0.53,0.53,1,66.07,17.7,7.56,342.22,18.39,4.18,NULL,NULL);
INSERT INTO `samples` VALUES (2057,5,'2017-09-12',5,'09:22:00',NULL,162,120,28,34.7,6.6,102.3,8.18,1.7,1.7,1.7,1,72.51,17.8,7.3,362.09,21.76,6.57,NULL,NULL);
INSERT INTO `samples` VALUES (2058,6,'2017-09-12',6,'09:38:00',NULL,162,120,28,34.6,6.51,100.8,8.17,1.25,1.25,1.25,1,56.85,18.21,7.08,317.64,5.87,3.25,NULL,NULL);
INSERT INTO `samples` VALUES (2059,13,'2017-10-05',1,'07:10:00',15,162,121,26,34.7,5.8,87,8.1,3.05,2.57,2.6,1,62.2,11.64,5.22,135.62,3.56,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (2060,14,'2017-10-05',2,'07:35:00',15,162,121,26,34.6,6.19,92.6,8.07,6.71,6.81,7,1,57.02,12.77,7.14,444.21,5.2,2.71,NULL,NULL);
INSERT INTO `samples` VALUES (2061,15,'2017-10-05',3,'07:52:00',15,162,121,25.7,34.5,5.99,89.1,8.02,7.95,7.79,7.83,1,55.52,11.76,6.59,446.73,5.82,2.18,NULL,'sample location possibly off by 50\'');
INSERT INTO `samples` VALUES (2062,16,'2017-10-05',4,'08:13:00',15,162,121,25.7,34.6,6.61,98.4,8.12,10.5,10.6,10.1,1,67.18,12.94,5.57,146.18,5.93,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (2063,17,'2017-10-05',5,'08:25:00',15,162,121,25.9,34.6,6.85,102.2,8.15,7.56,8.04,8.11,1,61.1,11.56,4.78,197.74,5.71,3.09,NULL,NULL);
INSERT INTO `samples` VALUES (2064,18,'2017-10-05',6,'08:38:00',15,162,121,26.3,34.2,6.71,100.6,8.13,3.64,3.48,3.13,1,63.45,11.94,5.38,328.14,4.03,3.5,NULL,NULL);
INSERT INTO `samples` VALUES (2065,7,'2017-10-04',1,'08:20:00',14,162,121,27.6,34,5.54,84.9,8.04,10.1,10.3,10.6,1,57.25,10.89,8.62,445.48,2.93,2.88,NULL,'PFF stream flowing');
INSERT INTO `samples` VALUES (2066,8,'2017-10-04',2,'08:40:00',14,162,121,27.8,33.8,5.64,86.7,8.03,4.04,4.14,4.08,1,126.79,11.86,10.95,332.7,7.59,11.59,NULL,'PLH stream no flow');
INSERT INTO `samples` VALUES (2067,9,'2017-10-04',3,'09:00:00',14,162,121,29.3,33.7,5.67,87.7,8.05,3.29,4.3,4.79,1,78.79,10.8,7.7,477.59,19.84,4.53,NULL,NULL);
INSERT INTO `samples` VALUES (2068,10,'2017-10-04',4,'09:25:00',14,162,121,28.1,34.5,6.46,100.1,8.18,2.24,2.65,2.42,1,94.06,10.65,5.29,214.25,1.41,5.88,NULL,NULL);
INSERT INTO `samples` VALUES (2069,11,'2017-10-04',5,'09:42:00',14,162,121,28.4,34.6,6.52,101.4,8.14,1.51,1.94,1.55,1,57.29,10.54,4.77,106.36,1.3,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (2070,12,'2017-10-04',6,'10:10:00',14,162,121,27.9,34.6,6.81,105.3,8.15,1.02,1.43,1.23,1,130.79,49.42,10.58,122.52,4.88,7.73,NULL,NULL);
INSERT INTO `samples` VALUES (2071,19,'2017-10-06',1,'07:56:00',17,162,121,25.3,33.7,6.32,93.2,8.1,37.2,37.9,40.5,1,62.75,13.4,10.82,506.63,4.92,5.47,NULL,'RHL no waves at collection site but waves breaking starting halfway to Lipoa Point, light rain the night before');
INSERT INTO `samples` VALUES (2072,21,'2017-10-06',2,'08:40:00',17,162,121,26.4,34.1,6.64,99.9,8.16,2.65,1.82,2.26,1,61.83,13.19,7.48,334.06,8.24,4.6,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (2073,22,'2017-10-06',3,'09:15:00',17,162,121,27,34.6,6.6,100.9,8.19,0.65,0.65,0.61,1,82.52,32.54,7.61,83.75,2.72,3.06,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (2074,23,'2017-10-06',4,'09:35:00',17,162,121,26.9,33.4,6.81,103,8.16,3.36,2.7,3.04,1,130.02,17.79,15.76,934.61,85.88,5.29,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (2075,24,'2017-10-06',5,'09:55:00',17,162,121,26.4,33.7,6.62,99.5,8.11,14,13.6,12.8,1,113.87,17.09,15.46,691.32,70.33,3.69,NULL,'light rain the night before');
INSERT INTO `samples` VALUES (2076,25,'2017-10-06',6,'10:15:00',17,162,121,27.9,34.7,7.24,112.1,8.33,3.94,4.63,4.45,1,71.99,12.35,6.59,179.47,9.28,3.04,NULL,'RKV duplicate nutrient sample. 2 syringes from same bucket. N-1 with 0.7 um filter, N-2 with 0.2 um filter, light rain the night before');
INSERT INTO `samples` VALUES (2077,1,'2017-10-03',1,'08:14:00',14,162,121,27,33.7,6.59,101,8.14,2.33,2.48,2.51,1,117.08,13.06,10.7,608.57,37.65,7.1,NULL,'RNS erosion, drop off more evident');
INSERT INTO `samples` VALUES (2078,2,'2017-10-03',2,'08:40:00',14,162,121,26.8,32.4,6.29,94.6,8.15,3.15,3.46,5.79,1,240.05,33.8,17.82,1292.44,151.01,7.55,NULL,'RPO surf is up today');
INSERT INTO `samples` VALUES (2079,3,'2017-10-03',3,'08:58:00',14,162,121,27.1,34.2,6.41,97.8,8.11,3.05,3.22,3.39,1,65.16,9.21,6.69,160.43,5.79,2.59,NULL,'RKS beach very busy');
INSERT INTO `samples` VALUES (2080,4,'2017-10-03',4,'09:16:00',14,162,121,27.9,34,6.49,100,8.19,0.5,0.79,0.67,1,82.29,9.52,8.52,561.15,26.42,2.83,NULL,'RAB beach very busy');
INSERT INTO `samples` VALUES (2081,5,'2017-10-03',5,'09:36:00',14,162,121,28,33.3,6.59,101.3,8.19,5.65,6.58,6,1,222.01,21.54,13.88,966.95,116.77,12.57,NULL,NULL);
INSERT INTO `samples` VALUES (2082,6,'2017-10-03',6,'09:52:00',14,162,121,27.6,33.4,6.52,99.8,8.2,0.5,0.5,0.49,1,118.54,35.86,12.56,759.61,24.31,3.49,NULL,NULL);
INSERT INTO `samples` VALUES (2083,13,'2017-10-26',1,'07:01:00',6,162,122,26,34.7,5.78,86.6,7.96,6.06,6.52,6.32,1,62.2,11.44,6.41,179.14,8.25,5.33,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (2084,14,'2017-10-26',2,'07:31:00',6,162,122,26.7,34.5,6.25,94.7,8.01,4.72,4.81,4.73,1,57.52,10.53,6.58,389.13,7.07,5.6,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (2085,15,'2017-10-26',3,'07:51:00',6,162,122,26.8,34.5,5.45,82.7,7.96,5.43,5.34,4.99,1,95.68,33.36,9.81,462.27,12.06,9.19,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (2086,16,'2017-10-26',4,'08:14:00',6,162,122,26.8,34.8,6.37,96.9,8.06,10.5,9.99,10.8,1,57.12,10.71,5.48,92.69,2.73,4.34,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (2087,17,'2017-10-26',5,'08:40:00',6,162,122,26.9,34.7,6.47,98.5,8.05,20,21.6,21.5,1,81.02,9.57,6.01,156.8,16.19,6.35,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (2088,18,'2017-10-26',6,'09:05:00',6,162,122,27,34.8,6.67,101.8,8.07,4.89,4.96,5.1,1,54.79,8.68,5.47,170.7,6.95,4.81,NULL,'heavy rain 3-4 days ago');
INSERT INTO `samples` VALUES (2089,7,'2017-10-25',1,'08:22:00',5,162,122,26.7,34.7,6.58,99.6,8.06,6.63,7.11,8.14,1,70.75,8.84,8.44,238.57,5.71,8.87,NULL,'PFF stream flowing, drain pipe flow');
INSERT INTO `samples` VALUES (2090,8,'2017-10-25',2,'08:47:00',5,162,122,26.7,34.1,6.5,98.2,8.07,19.2,19.1,19.4,1,58.71,12.74,10.17,323,6.05,4.7,NULL,'PLH stream flowing, some erosion');
INSERT INTO `samples` VALUES (2091,9,'2017-10-25',3,'09:10:00',5,162,122,26.8,34.2,6.39,96.7,8.07,15,15.9,15.2,1,62.91,12.07,9.77,374.04,8.58,5.67,NULL,'PLT very little beach');
INSERT INTO `samples` VALUES (2092,10,'2017-10-25',4,'09:35:00',5,162,122,27.2,34.7,6.65,101.6,8.14,13,13.8,13.6,1,66.6,11.08,5.5,166.71,6.18,8.82,NULL,'PPU very high tide and waves');
INSERT INTO `samples` VALUES (2093,11,'2017-10-25',5,'09:55:00',5,162,122,27.9,34.4,6.6,100.5,8.09,11.7,11.1,11.3,1,76.52,10.37,6.89,186.47,11.5,6.68,NULL,NULL);
INSERT INTO `samples` VALUES (2094,12,'2017-10-25',6,'10:15:00',5,162,122,27.1,34.6,6.59,100.5,8.1,1.47,1.63,1.82,1,68.2,10.77,5.73,167.63,8.2,6.8,NULL,NULL);
INSERT INTO `samples` VALUES (2095,19,'2017-10-27',1,'08:05:00',8,162,122,25.4,33,6.58,96.9,8.11,156,164,158,1,77.7,11.15,9.43,566.29,11.71,5.94,NULL,'huge rain storm Mon night (10/23) with thunder, lightening, winds - power outages all over Maui, some stream flow, lots of debris in water, some of it looks like pieces of bark, stems, duplicate nutrient sample. 2 syringes from same bucket. N-1 with 0.2 um filter, N-2 with 0.7 um filter');
INSERT INTO `samples` VALUES (2096,21,'2017-10-27',2,'08:45:00',8,162,122,26.4,34.8,6.83,103.3,8.17,3.72,3.28,3.43,1,59.56,10.02,5.39,139.43,11.28,5.21,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, no stream flow while taking sample but was water in both stream beds and ocean waves mixed a little with stream water at mouth of stream');
INSERT INTO `samples` VALUES (2097,22,'2017-10-27',3,'09:20:00',8,162,122,27,35,6.79,104.1,8.18,1.22,1.28,1.33,1,56.93,10.66,4.14,65.74,5,5.39,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, lots of wood debris in water');
INSERT INTO `samples` VALUES (2098,23,'2017-10-27',4,'09:53:00',8,162,122,26.7,34.8,6.99,106.6,8.21,2.91,2.6,2.37,1,66.92,9.65,7.06,151.85,12.13,7.41,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui');
INSERT INTO `samples` VALUES (2099,24,'2017-10-27',5,'10:23:00',8,162,122,25.9,34.3,6.84,102.6,8.13,26.6,27,26.1,1,117.88,20,15.9,561.32,99.59,6.73,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, lots of wood debris in water');
INSERT INTO `samples` VALUES (2100,25,'2017-10-27',6,'10:46:00',8,162,122,27.4,35,6.83,105.1,8.23,11.6,10.8,11.7,1,65.88,14.04,5.5,90.95,9.04,16.17,NULL,'huge rain storm Mon night (10/23) with thunder, ligtning, winds - power outages all over Maui, was water in stream bed though no stream flow while taking sample but ocean mixed a little with stream water at mouth of stream');
INSERT INTO `samples` VALUES (2101,1,'2017-10-24',1,'08:24:00',5,162,122,26.3,33.5,6.31,94.8,8.1,17.5,16.2,16.5,1,78.71,13.59,12.43,205.27,21.68,8.31,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, light rain while taking sample');
INSERT INTO `samples` VALUES (2102,2,'2017-10-24',2,'08:50:00',5,162,122,26.5,33.3,6.34,96.3,8.15,14.5,15.6,15.3,1,96.55,15.13,13.43,225.39,31.19,10.59,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui - no rain while sampling - water brown near shore, no rain while taking sample');
INSERT INTO `samples` VALUES (2103,3,'2017-10-24',3,'09:13:00',5,162,122,26.7,33.2,6.6,99.5,8.16,5.48,5.43,5.47,1,75.27,13.8,11.1,271.88,20.39,12.39,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui -  while taking sample saw minor flooding in parking lot diverted to beach, while there diverted water was not going into the ocean, light rain while taking sample');
INSERT INTO `samples` VALUES (2104,4,'2017-10-24',4,'09:35:00',5,162,122,27,33.6,6.57,99.8,8.18,1.81,1.78,1.66,1,78.25,13.63,8.82,378.58,33.97,2.51,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, no rain while taking sample');
INSERT INTO `samples` VALUES (2105,5,'2017-10-24',5,'09:57:00',5,162,122,26.9,33.2,6.68,101.1,8.17,9.88,9.97,9.81,1,113.85,16.36,11.69,510.19,33.41,27.77,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, light rain while taking sample, one dog noted on beach');
INSERT INTO `samples` VALUES (2106,6,'2017-10-24',6,'10:20:00',5,162,122,26.9,33.1,6.67,100.9,8.19,6.2,5.87,7.69,1,82,12.9,10.54,419.96,17.75,12.76,NULL,'huge rain storm last night with thunder, ligtning, winds - power outages all over Maui, no rain while taking sample (not in data sheet CM)');
INSERT INTO `samples` VALUES (2107,13,'2017-11-16',1,'07:11:00',28,162,123,23.8,34.8,5.99,86.6,8.1,3.64,3.22,3.61,1,69.53,13.16,5.16,163.32,3.34,3.93,NULL,'spilled all KCL at OPM');
INSERT INTO `samples` VALUES (2108,14,'2017-11-16',2,'07:35:00',28,162,123,23.8,35.1,6.33,91.5,8.12,2.15,2.24,2.28,1,66.06,8.29,4.02,238.64,3.77,5.06,NULL,NULL);
INSERT INTO `samples` VALUES (2109,15,'2017-11-16',3,'07:50:00',28,162,123,24,35,5.83,84.5,8.07,3.02,2.29,2.52,1,88.47,16.1,5.8,271.72,5,8.5,NULL,'resolved OMM exact location issue');
INSERT INTO `samples` VALUES (2110,16,'2017-11-16',4,'08:10:00',28,162,123,23.5,35,6.73,96.9,8.15,5.61,5.61,5.71,1,64.83,8.73,3.33,167.71,1.52,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (2111,17,'2017-11-16',5,'08:27:00',28,162,123,24.2,34.9,7.03,102.2,8.17,5.63,5.55,5.81,1,68.06,8.43,3.81,201.46,2.86,4.28,NULL,NULL);
INSERT INTO `samples` VALUES (2112,18,'2017-11-16',6,'08:45:00',28,162,123,25,34.7,6.75,99.4,8.14,1.53,1.52,1.86,1,73.9,8.24,4.06,410.79,4.66,4.3,NULL,NULL);
INSERT INTO `samples` VALUES (2113,7,'2017-11-15',1,'08:10:00',27,162,123,25.9,35.2,6.46,96.7,8.11,4.31,4.89,4.68,1,82.31,12.56,6.42,167.92,7.3,3.52,NULL,'PFF - moderate stream flow');
INSERT INTO `samples` VALUES (2114,8,'2017-11-15',2,'08:35:00',27,162,123,26,34.5,6.37,95.2,8.11,3.16,3.65,3.84,1,69.66,14.8,8.35,404.32,5.66,7.51,NULL,'PLH - no stream flow');
INSERT INTO `samples` VALUES (2115,9,'2017-11-15',3,'08:55:00',27,162,123,26.2,34.6,6.3,94.6,8.11,2.39,2.61,2.47,1,106.61,15.24,9.01,668.97,48.19,5.18,NULL,NULL);
INSERT INTO `samples` VALUES (2116,10,'2017-11-15',4,'09:15:00',27,162,123,26.7,34.7,6.71,101.6,8.19,1.27,1.66,1.36,1,74.56,11.53,3.36,163.97,1.36,4.79,NULL,NULL);
INSERT INTO `samples` VALUES (2117,11,'2017-11-15',5,'09:40:00',27,162,123,26.5,35,6.74,102,8.15,2.41,2.04,2,1,66.74,10.96,2.8,116.28,1.83,4.51,NULL,NULL);
INSERT INTO `samples` VALUES (2118,12,'2017-11-15',6,'10:05:00',27,162,123,25.5,35,6.62,98.4,8.09,1.34,1.32,1.55,1,100.76,18.58,8.01,158.06,5.29,8.18,NULL,'pH probe not placed in KCL leaving OLP');
INSERT INTO `samples` VALUES (2119,19,'2017-11-17',1,'07:50:00',29,162,123,24.3,30.6,6.39,90.9,8.15,20.9,21.1,21.5,1,78.84,13.74,7.08,394.16,4.57,15.58,NULL,'Honolua sampling during heavy rain, stream flowing into ocean, double rainbox within the bay, saw bark, leaves, and large particles in otherwise clear water - may have caused the high NTU numbers');
INSERT INTO `samples` VALUES (2120,21,'2017-11-17',2,'08:40:00',29,162,123,25.7,34.4,6.71,99.7,8.15,1.35,1.73,1.67,1,66.51,13.88,5.59,329.25,7.75,3.88,NULL,'small flow from stream into ocean');
INSERT INTO `samples` VALUES (2121,22,'2017-11-17',3,'09:15:00',29,162,123,26,35,6.66,100.2,8.19,0.65,0.65,0.69,1,64.87,14.7,4.11,71.94,2.55,3.42,NULL,NULL);
INSERT INTO `samples` VALUES (2122,23,'2017-11-17',4,'09:50:00',29,162,123,26.3,34.1,6.86,103.1,8.16,2.77,2.66,2.27,1,121.18,16.65,12.13,758.32,66.44,4.98,NULL,NULL);
INSERT INTO `samples` VALUES (2123,24,'2017-11-17',5,'10:15:00',29,162,123,25.3,34,6.81,100.5,8.16,17.3,16.7,17.2,1,114.57,17.52,13.53,638.78,66.12,4.23,NULL,'RKO no water coming out of pipe');
INSERT INTO `samples` VALUES (2124,25,'2017-11-17',6,'10:38:00',29,162,123,26.4,35,7.09,107.2,8.28,7.27,6.83,6.9,1,68.25,9.13,5.13,109.15,2.56,4.22,NULL,'RKV waves irregular, turbulent but not that large, rocks exposed at about 1 foot underwater made for difficult footing even with reef shoes');
INSERT INTO `samples` VALUES (2125,1,'2017-11-14',1,'08:16:00',26,162,123,26,34.9,6.71,100.8,8.16,1.15,1.08,1.2,1,77.52,12.09,8.87,281.77,14.03,5.81,NULL,'at Napili Bay sampled 20 yards north of usual testing site because of the shore break, misty rain while sampling');
INSERT INTO `samples` VALUES (2126,2,'2017-11-14',2,'08:45:00',26,162,123,25.9,32.2,6.77,99.7,8.17,8.73,8.62,9.81,1,333.52,22.41,21.19,1810.78,285.64,6.65,NULL,'at Pohaku gave 4 cards to man who said he signed up on web site, may want to volunteer. will put up at Kahana, Napili, Canoe Beach - misty rain while sampling');
INSERT INTO `samples` VALUES (2127,3,'2017-11-14',3,'09:10:00',26,162,123,26.1,34.8,6.73,101,8.18,2.84,2.7,2.83,1,83.64,10.24,5.56,173.51,3.59,22.11,NULL,NULL);
INSERT INTO `samples` VALUES (2128,4,'2017-11-14',4,'09:29:00',26,162,123,26.5,34.5,6.61,99.7,8.17,2.87,2.68,2.36,1,83.32,15.46,7.75,429.83,16.46,8.98,NULL,NULL);
INSERT INTO `samples` VALUES (2129,5,'2017-11-14',5,'09:49:00',26,162,123,27.1,34.1,6.44,98,8.18,4.21,3.5,3.36,1,135.89,13.91,7.95,732.93,81.56,6.03,NULL,'Canoe Beach warning sign dated 11/2/17');
INSERT INTO `samples` VALUES (2130,6,'2017-11-14',6,'10:04:00',26,162,123,27.2,34.5,6.5,99.2,8.2,1.27,1.2,1.15,1,75.01,15.35,6.02,403.4,12.17,4.38,NULL,NULL);
INSERT INTO `samples` VALUES (2131,13,'2017-12-07',1,'07:08:00',20,162,124,23.3,34.8,6.27,89.5,8.09,6.48,6.56,6.95,1,74.29,10.17,5.71,129.57,5.21,5.51,NULL,NULL);
INSERT INTO `samples` VALUES (2132,14,'2017-12-07',2,'07:30:00',20,162,124,23.7,34.9,6.38,91.6,8.13,3.59,3.59,3.52,1,65.16,7.54,4.95,205.81,4.2,4.86,NULL,NULL);
INSERT INTO `samples` VALUES (2133,15,'2017-12-07',3,'07:47:00',20,162,124,24.2,35,6.07,87.9,8.11,3.25,3.39,3.32,1,69.35,14,4.99,201.13,5.2,7.13,NULL,NULL);
INSERT INTO `samples` VALUES (2134,16,'2017-12-07',4,'08:04:00',20,162,124,24.6,34.9,6.55,95.5,8.14,5.75,5.63,5.97,1,62.47,9.19,4.74,100.75,2.08,2.99,NULL,NULL);
INSERT INTO `samples` VALUES (2135,17,'2017-12-07',5,'08:20:00',20,162,124,24.6,35,6.67,97.2,8.18,4.39,4.58,4.15,1,68.46,9.35,4.51,72.39,3.85,3.57,NULL,NULL);
INSERT INTO `samples` VALUES (2136,18,'2017-12-07',6,'08:33:00',20,162,124,24.3,34.8,6.8,98.8,8.18,2.02,2.12,1.99,1,65.22,9.32,4.77,161.41,3.12,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (2137,7,'2017-12-06',1,'08:15:00',19,162,124,24.5,35,6.72,97.8,8.17,3.48,3.54,3.67,1,76.01,13.05,6.34,94.34,4,5.27,NULL,NULL);
INSERT INTO `samples` VALUES (2138,8,'2017-12-06',2,'08:35:00',19,162,124,23.8,34.6,6.67,95.7,8.15,11.9,12,12.9,1,92.24,14.52,9.66,385.9,10.06,6.81,NULL,NULL);
INSERT INTO `samples` VALUES (2139,9,'2017-12-06',3,'08:55:00',19,162,124,23.6,34.3,6.59,94.2,8.13,15.9,16.9,16,1,99.69,14.65,10.49,502.8,20.63,18.76,NULL,NULL);
INSERT INTO `samples` VALUES (2140,10,'2017-12-06',4,'09:20:00',19,162,124,24.6,34.6,6.98,101.5,8.21,1.78,2.26,2.1,1,67.98,10.68,4.02,180.76,1.27,5.47,NULL,NULL);
INSERT INTO `samples` VALUES (2141,11,'2017-12-06',5,'09:45:00',19,162,124,24.7,34.9,6.95,101.6,8.19,1.86,1.69,1.85,1,74.24,11.43,4.35,123.98,1.79,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (2142,12,'2017-12-06',6,'10:08:00',19,162,124,24.6,34.8,6.96,101.4,8.16,1.39,1.41,1.33,1,78.55,10.56,5.96,125.05,6,9.55,NULL,NULL);
INSERT INTO `samples` VALUES (2143,19,'2017-12-08',1,'07:50:00',21,162,124,23.2,34.5,6.78,96.2,8.14,23.9,28.5,25.2,1,89.42,12.22,7.25,268.46,6.53,5.13,NULL,'very high tide when sampling, surf breaking outside reef');
INSERT INTO `samples` VALUES (2144,21,'2017-12-08',2,'08:40:00',21,162,124,24.7,35.1,6.95,101.6,8.18,1.41,1.71,1.54,1,88.53,13.5,4.88,99.37,6.99,3,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (2145,22,'2017-12-08',3,'09:15:00',21,162,124,25.1,35.1,6.91,101.8,8.18,0.59,0.69,0.64,1,71.94,11.14,4.43,65.94,2.38,3,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (2146,23,'2017-12-08',4,'09:45:00',21,162,124,25.4,35.1,7.03,104,8.19,1.17,1.6,1.45,1,73.58,14.06,5.88,107.38,5.36,4.43,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (2147,24,'2017-12-08',5,'10:10:00',21,162,124,24.7,34.6,6.99,102,8.19,14.6,15.8,15.6,1,98.5,15.84,10.63,325.21,24.76,4.34,NULL,'very high tide when sampling');
INSERT INTO `samples` VALUES (2148,25,'2017-12-08',6,'10:35:00',21,162,124,25.5,34.8,6.96,102.9,8.22,21.5,20.6,21.4,1,73.94,11.28,5.81,117,4.28,5.27,NULL,'very high tide when sampling, little bait fish school 5 feet from sample site');
INSERT INTO `samples` VALUES (2149,1,'2017-12-05',1,'08:06:00',18,162,124,24.2,35.2,6.89,100,8.17,1.04,1.14,1.08,1,70.39,8.81,4.74,101.58,4.46,6.96,NULL,NULL);
INSERT INTO `samples` VALUES (2150,2,'2017-12-05',2,'08:31:00',18,162,124,23.5,34.5,6.96,99.3,8.17,31.1,31.8,32.6,1,86.41,16.58,13.19,519.49,33.22,5.24,NULL,'brown water, lots of limu on rocks');
INSERT INTO `samples` VALUES (2151,3,'2017-12-05',3,'08:52:00',18,162,124,23.5,34,7.01,99.8,8.17,10.1,9.83,10.4,1,87.8,14.48,9.96,508.61,10.41,4.51,NULL,'no beach, brown water');
INSERT INTO `samples` VALUES (2152,4,'2017-12-05',4,'09:13:00',18,162,124,24.5,34.5,6.82,99,8.18,6.41,6.78,6.52,1,77.86,13.2,8.9,322.28,15.06,7.23,NULL,NULL);
INSERT INTO `samples` VALUES (2153,5,'2017-12-05',5,'09:33:00',18,162,124,25.5,34.4,6.84,101,8.2,2.13,2.1,2.27,1,107.45,14.22,8.06,558.71,48.26,5.36,NULL,NULL);
INSERT INTO `samples` VALUES (2154,6,'2017-12-05',6,'09:51:00',18,162,124,25.1,33.8,6.83,100,8.23,1.55,1.57,1.58,1,83.82,15.06,11.21,858,23.21,7,NULL,NULL);
INSERT INTO `samples` VALUES (2155,13,'2017-12-21',1,'08:21:00',4,162,125,23.5,34.7,6.46,92.8,8.03,9.07,10.4,10.4,1,80.9,13.8,7.63,211.91,12.34,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (2156,14,'2017-12-21',2,'08:45:00',4,162,125,24.1,34.8,5.91,85.9,8.02,2.35,2.23,2.65,1,83.41,9.99,5.71,287.76,13.39,2.36,NULL,NULL);
INSERT INTO `samples` VALUES (2157,15,'2017-12-21',3,'09:04:00',4,162,125,24.2,34.6,5.87,85.4,8,4.36,4.27,4.38,1,84.78,11.14,6.42,351.61,17.28,2.74,NULL,NULL);
INSERT INTO `samples` VALUES (2158,16,'2017-12-21',4,'09:24:00',4,162,125,24.2,34.6,6.63,96.5,8.11,3.66,3.56,3.52,1,80.05,9.77,5.4,155.42,9.76,1.87,NULL,'OUB stream flowing brown');
INSERT INTO `samples` VALUES (2159,17,'2017-12-21',5,'09:43:00',4,162,125,24.7,34.6,6.63,97.4,8.09,50,50.4,49.1,1,96.54,12.27,6.58,123.91,29.65,1.65,NULL,'OPB porta potty maybe leaking');
INSERT INTO `samples` VALUES (2160,18,'2017-12-21',6,'09:58:00',4,162,125,25,35.1,6.24,92.3,8.11,13.3,13.1,13.2,1,93.75,15.86,6.75,133.06,21.99,4.42,NULL,'OPP stream brown');
INSERT INTO `samples` VALUES (2161,7,'2017-12-20',1,'08:20:00',3,162,125,24,35.4,6.68,97.2,8.15,5.42,5.43,5.33,1,76.86,12.39,5.56,91.93,1.78,0.94,NULL,'PFF - normal stream flow');
INSERT INTO `samples` VALUES (2162,8,'2017-12-20',2,'08:41:00',3,162,125,24.1,34.9,6.59,96,8.14,7.31,6.83,6.69,1,72.14,12.9,6.72,254.46,6.51,2.85,NULL,'PLH - no entry for flow');
INSERT INTO `samples` VALUES (2163,9,'2017-12-20',3,'09:05:00',3,162,125,23.9,34.5,6.61,95.5,8.13,10.3,10,9.88,1,84.35,15.44,9.69,491.54,17.79,3.45,NULL,NULL);
INSERT INTO `samples` VALUES (2164,10,'2017-12-20',4,'09:35:00',3,162,125,24.4,34.9,6.85,100.2,8.17,5.09,5.19,5.75,1,71.58,13.25,4.9,166.84,1.39,1.4,NULL,NULL);
INSERT INTO `samples` VALUES (2165,11,'2017-12-20',5,'09:55:00',3,162,125,24.6,35,6.77,99.5,8.13,4.96,4.59,4.94,1,78.67,12.07,4.16,180.75,4.11,1.44,NULL,'OLP baby pond - people surveying');
INSERT INTO `samples` VALUES (2166,12,'2017-12-20',6,'10:15:00',3,162,125,24.6,35,6.35,93.2,8.08,2.48,2.89,2.56,1,75.75,12.58,7.22,192.43,8.75,3.41,NULL,NULL);
INSERT INTO `samples` VALUES (2167,19,'2017-12-22',1,'07:59:00',6,162,125,22.6,28.5,7.04,96.1,8.17,21.2,21.3,20,1,121.96,15.57,8.67,669.46,38.75,5.41,NULL,'moderate stream flow/mud, lots of organic matter from stream - organic smell');
INSERT INTO `samples` VALUES (2168,21,'2017-12-22',2,'08:42:00',6,162,125,23.4,33.9,6.98,99.5,8.17,7.26,7.37,7.55,1,87.8,13.17,7.32,252.01,15.59,4.73,NULL,'both streams flowing lightly, BIG waves, strong NE wind');
INSERT INTO `samples` VALUES (2169,22,'2017-12-22',3,'09:17:00',6,162,125,24,35.1,6.93,100.7,8.19,4.55,4.11,4.26,1,76.47,12.11,4.86,93.73,7.3,2.58,NULL,'dirtiest Dana has ever seen in this bay, lots of detritus in the water');
INSERT INTO `samples` VALUES (2170,23,'2017-12-22',4,'09:50:00',6,162,125,24.5,34.7,6.95,101.8,8.18,3.12,3.49,3.53,1,113.42,19.66,11.28,526.76,49.6,3.4,NULL,'noticed detritus floating on water near shore, first turbidity reading 3.12');
INSERT INTO `samples` VALUES (2171,24,'2017-12-22',5,'10:18:00',6,162,125,23.4,33.9,6.93,99.1,8.14,36.4,35.9,36.2,1,148.33,23.45,16.12,456.83,83.58,6.61,NULL,'very muddy, stream does not appear to be flowing now but definitely has been flowing last 2 days');
INSERT INTO `samples` VALUES (2172,25,'2017-12-22',6,'10:43:00',6,162,125,24.3,33.7,7.18,103.9,8.19,16.5,17,16.6,1,387.2,23.43,12.78,392.14,35.53,22.51,NULL,'lost bucket, Bruce got cut, rocks to blame. Moved spot to southmost entry. Discharged about 10 ml of 0.2 um filter into N-2 bottle by mistake. Rest went into N-1 bottle. Discharged 55 ml 0.7 um filter into N-2 bottle. Wrote an accident report on Bruce\'s injury.');
INSERT INTO `samples` VALUES (2173,1,'2017-12-19',1,'08:21:00',3,162,125,24.8,35.2,6.72,98.9,8.16,1.15,1.28,1.08,1,77.6,12.71,5.65,157.84,7.31,3.04,NULL,'upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (2174,2,'2017-12-19',2,'08:55:00',3,162,125,24.8,34,6.74,98.7,8.16,24.5,23.5,22.2,1,159.02,24.42,17.42,998.22,102.79,1.72,NULL,'brown plume, 2 fishermen, upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (2175,3,'2017-12-19',3,'09:21:00',3,162,125,24.9,34.9,6.68,98.4,8.18,26.2,25.5,24.9,1,73.3,17.92,7.49,177.52,5.11,1.93,NULL,'brown close to shore, upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (2176,4,'2017-12-19',4,'09:46:00',3,162,125,25.1,34.8,6.46,95.4,8.18,5.57,5,4.46,1,77.67,14.71,7.87,313.77,13.07,1.25,NULL,'upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (2177,5,'2017-12-19',5,'10:10:00',3,162,125,25.2,34.2,6.64,97.9,8.2,2.03,1.96,2.13,1,149.95,16.91,8.86,731.06,89.09,4.05,NULL,'lots of fishermen, upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (2178,6,'2017-12-19',6,'10:30:00',3,162,125,24.9,33.1,6.74,98.5,8.21,1.35,1.15,1.14,1,108.05,25.16,17.32,1412.13,45.05,0.98,NULL,'upon return to lab replaced batteries in HQ40D meter');
INSERT INTO `samples` VALUES (2179,13,'2018-01-11',1,'07:14:00',25,162,126,23.1,34.3,5.88,83.4,8.06,2.66,2.53,2.48,1,86.14,11.21,4.86,243.59,2.96,3.93,NULL,NULL);
INSERT INTO `samples` VALUES (2180,14,'2018-01-11',2,'07:34:00',25,162,126,24.1,34.6,6.47,93.4,8.1,1.1,0.9,0.83,1,79.4,8.8,3.45,161.39,7.13,4.4,NULL,NULL);
INSERT INTO `samples` VALUES (2181,15,'2018-01-11',3,'07:46:00',25,162,126,23.9,34.4,6.29,90.3,8.09,1.14,1.09,1.2,1,82.57,7.79,3.6,214.4,5.78,3.47,NULL,NULL);
INSERT INTO `samples` VALUES (2182,16,'2018-01-11',4,'08:00:00',25,162,126,24.2,34.6,6.65,96,8.14,2.09,2.16,2.1,1,91.54,15.47,4.82,126.15,4.47,2.83,NULL,NULL);
INSERT INTO `samples` VALUES (2183,17,'2018-01-11',5,'08:12:00',25,162,126,24.2,34.8,6.85,99.3,8.14,4.19,5.02,3.85,1,85.21,9.31,4.23,206.08,3.04,2.87,NULL,NULL);
INSERT INTO `samples` VALUES (2184,18,'2018-01-11',6,'08:30:00',25,162,126,24.4,34.6,6.82,99,8.13,1.53,1.67,1.7,1,76.74,10.6,4.1,114.41,3.69,3.25,NULL,NULL);
INSERT INTO `samples` VALUES (2185,7,'2018-01-10',1,'08:27:00',24,162,126,23.9,34.7,5.85,84.1,8.07,1.46,1.68,1.59,1,85.32,12.4,5.05,105.28,5.89,2.63,NULL,'PFF - strong stream flow');
INSERT INTO `samples` VALUES (2186,8,'2018-01-10',2,'08:45:00',24,162,126,24,34.1,6.1,87.7,8.07,2.38,3,2.55,1,89.75,13.3,6.33,198.9,7.07,2.24,NULL,'2 dogs');
INSERT INTO `samples` VALUES (2187,9,'2018-01-10',3,'09:07:00',24,162,126,24,34.2,6.03,86.6,8.06,2.57,2.34,2.49,1,92.81,11.66,5,126.32,7.78,2.61,NULL,NULL);
INSERT INTO `samples` VALUES (2188,10,'2018-01-10',4,'09:33:00',24,162,126,24.3,34.2,7.03,101.5,8.14,1.24,1.41,1.31,1,85.3,11.14,3.66,112.45,1.24,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (2189,11,'2018-01-10',5,'09:52:00',24,162,126,25,34.5,7.11,104,8.15,1.02,1.03,1.18,1,85.49,9.42,2.35,133.82,3.27,6.7,NULL,NULL);
INSERT INTO `samples` VALUES (2190,12,'2018-01-10',6,'10:19:00',24,162,126,24.5,34.5,7.38,107.2,8.13,2.92,2.37,2.75,1,100.45,12.77,5.68,175.58,4.46,5,NULL,NULL);
INSERT INTO `samples` VALUES (2191,19,'2018-01-12',1,'07:55:00',26,162,126,22.8,33.1,6.82,95.4,8.07,59.6,65.3,68.8,1,98.13,22.62,9.73,518.6,7.7,7.35,NULL,'stream flowing, outside surf');
INSERT INTO `samples` VALUES (2192,21,'2018-01-12',2,'08:45:00',26,162,126,24,34.3,7.04,101.3,8.16,3.27,4.44,3.68,1,99.22,15.95,6.08,239.35,12.3,3.05,NULL,NULL);
INSERT INTO `samples` VALUES (2193,22,'2018-01-12',3,'09:15:00',26,162,126,24.5,34.7,7.02,102.4,8.17,1.04,1,1.17,1,86.94,13.8,4.35,111.47,4.05,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (2194,23,'2018-01-12',4,'09:40:00',26,162,126,24.8,33.9,7.04,102.6,8.16,2.83,2.41,2.57,1,127.45,20,9.87,491.52,49.51,3.8,NULL,'outside surf, foam inside bay');
INSERT INTO `samples` VALUES (2195,24,'2018-01-12',5,'10:10:00',26,162,126,24.4,33.8,6.99,101.1,8.15,16.8,17.7,18.6,1,131.93,18.69,12.93,479.12,68.19,2.82,NULL,'outside surf');
INSERT INTO `samples` VALUES (2196,25,'2018-01-12',6,'10:30:00',26,162,126,25.4,34.5,7.2,106.3,8.23,7.79,9.47,8.58,1,105.47,13.24,7.25,204.77,14.79,2.56,NULL,'dogs on beach, outside surf');
INSERT INTO `samples` VALUES (2197,1,'2018-01-09',1,'08:15:00',23,162,126,23.6,34,6.95,99.3,8.1,0.6,0.55,0.5,1,195.48,12.02,9.69,505.15,15.9,11.95,NULL,NULL);
INSERT INTO `samples` VALUES (2198,2,'2018-01-09',2,'08:47:00',23,162,126,24.1,33.9,6.8,97.6,8.16,2.32,2.6,2.42,1,143.16,14.22,10.12,622.1,63.7,6.95,NULL,NULL);
INSERT INTO `samples` VALUES (2199,3,'2018-01-09',3,'09:09:00',23,162,126,23.7,34.5,6.97,99.8,8.15,11.9,12.7,12.6,1,80.58,15.83,5.5,130.4,5.57,3.05,NULL,'lots of beach erosion');
INSERT INTO `samples` VALUES (2200,4,'2018-01-09',4,'09:26:00',23,162,126,24.8,34.2,6.64,96.8,8.17,1.38,1.32,1.56,1,106.62,19.49,7.26,338.52,24.67,3.44,NULL,NULL);
INSERT INTO `samples` VALUES (2201,5,'2018-01-09',5,'09:46:00',23,162,126,25,34.4,6.74,98.7,8.18,7.32,8.02,7.62,1,108.03,14.97,5.09,155.02,22.6,5.91,NULL,NULL);
INSERT INTO `samples` VALUES (2202,6,'2018-01-09',6,'10:03:00',23,162,126,24.9,33.5,6.99,101.6,8.2,1.98,2.06,2.02,1,106.78,19.37,11.94,801.43,26.9,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (2203,13,'2018-02-01',1,'07:07:00',16,162,127,24.2,34.9,6.27,91.6,8.08,20.8,21.2,22.7,1,94.69,10.96,6.06,158.24,10.98,2.41,NULL,NULL);
INSERT INTO `samples` VALUES (2204,14,'2018-02-01',2,'07:27:00',16,162,127,25.2,34.2,6.44,95.4,8.08,2.96,2.92,3.25,1,88.5,9.35,5.28,277.84,11.37,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (2205,15,'2018-02-01',3,'07:44:00',16,162,127,25.1,34.5,6.26,92.5,8.07,4.57,4.34,4.23,1,86.1,9.83,5.18,358.08,12.66,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (2206,16,'2018-02-01',4,'07:58:00',16,162,127,24.6,34.7,6.54,95.9,8.12,5.91,6.2,5.72,1,88.25,10.04,4.63,81.61,8.38,1.18,NULL,NULL);
INSERT INTO `samples` VALUES (2207,17,'2018-02-01',5,'08:12:00',16,162,127,25,34.8,6.59,97.5,8.1,7.42,8.99,7.38,1,102.27,10.24,3.98,76.5,11.81,2.47,NULL,NULL);
INSERT INTO `samples` VALUES (2208,18,'2018-02-01',6,'08:28:00',16,162,127,24.9,34.7,6.53,96.4,8.14,2.65,2.47,2.96,1,81.97,10.34,4.04,94.9,3.59,1.51,NULL,NULL);
INSERT INTO `samples` VALUES (2209,7,'2018-01-31',1,'08:07:00',15,162,127,23.8,33.4,6.38,91.8,8.09,10.5,11.4,11.5,1,105.68,16.46,8.12,534.67,13.6,2.06,NULL,'PFF - moderate stream flow');
INSERT INTO `samples` VALUES (2210,8,'2018-01-31',2,'08:30:00',15,162,127,23.8,33.8,6.31,91,8.09,11.8,12.2,12.9,1,121.67,13.92,7.23,500.69,25.23,3.62,NULL,'PLH - had been flowing but stopped');
INSERT INTO `samples` VALUES (2211,9,'2018-01-31',3,'08:50:00',15,162,127,24,34.1,6.6,95.7,8.13,4.15,4.83,4.74,1,117.38,11.8,5.05,384.65,23.04,2.86,NULL,NULL);
INSERT INTO `samples` VALUES (2212,10,'2018-01-31',4,'09:12:00',15,162,127,24.1,34.1,6.94,100.6,8.18,3.79,4.31,4.61,1,94.01,11.77,4,278.68,6.18,3.05,NULL,NULL);
INSERT INTO `samples` VALUES (2213,11,'2018-01-31',5,'09:32:00',15,162,127,24.7,34.7,6.85,100.7,8.15,3.35,3.17,4.45,1,117.76,11.21,4.67,171.51,10.6,2.63,NULL,NULL);
INSERT INTO `samples` VALUES (2214,12,'2018-01-31',6,'09:55:00',15,162,127,24.6,34.6,6.92,101.5,8.07,4.46,5.28,4.69,1,110.95,11.97,6,238.97,12.79,3.34,NULL,NULL);
INSERT INTO `samples` VALUES (2215,19,'2018-02-02',1,'07:55:00',17,162,127,23.5,34.5,6.74,96.7,8.13,13,12.8,13.1,1,115.79,11.65,7.14,280.13,5.05,4.77,NULL,'rain the night before');
INSERT INTO `samples` VALUES (2216,21,'2018-02-02',2,'08:35:00',17,162,127,24,34.8,6.91,100,8.19,6.82,7.13,6.98,1,93.51,10.65,5.02,144.58,7.78,1.52,NULL,'rain the night before');
INSERT INTO `samples` VALUES (2217,22,'2018-02-02',3,'09:00:00',17,162,127,24,34.8,6.93,100.5,8.18,0.9,0.95,0.82,1,93.82,11.64,4.29,110.57,12,4.81,NULL,'rain the night before, light rain while there');
INSERT INTO `samples` VALUES (2218,23,'2018-02-02',4,'09:30:00',17,162,127,24.2,34.3,6.91,100.3,8.16,1.88,1.8,1.73,1,126.83,14.47,8.08,479.45,45.98,3.48,NULL,'rain the night before');
INSERT INTO `samples` VALUES (2219,24,'2018-02-02',5,'09:55:00',17,162,127,24.3,34.2,6.83,99.3,8.13,11.6,12.2,11.9,1,106.42,14.83,10.58,353.31,31.56,2.57,NULL,'rain the night before, clouds clearing while there');
INSERT INTO `samples` VALUES (2220,25,'2018-02-02',6,'10:10:00',17,162,127,24.6,33.8,6.87,99.9,8.13,8.81,8.56,8.29,1,135.79,14.46,13.92,677.94,38.89,4.7,NULL,'rain the night before, sun coming out while there');
INSERT INTO `samples` VALUES (2221,1,'2018-01-30',1,'08:15:00',14,162,127,23.7,34.5,6.89,99.8,8.18,2.32,1.75,1.88,1,255.58,14.97,6.99,186.81,15.38,15.2,NULL,'waves just outside Napili Bay 3-4 ft, only 2 ft where sample taken');
INSERT INTO `samples` VALUES (2222,2,'2018-01-30',2,'08:48:00',14,162,127,23.8,33.3,6.97,100.2,8.17,19.7,21.3,20.3,1,179.98,18.76,14.42,859.56,110.71,3.01,NULL,NULL);
INSERT INTO `samples` VALUES (2223,3,'2018-01-30',3,'09:10:00',14,162,127,23.9,34.6,6.84,99.5,8.18,6.4,6.76,6.52,1,117.96,13.97,6.18,159.63,11.67,2.91,NULL,'access difficult due to severe erosion, large boulders at access point, and sandbags at hotel, requested review of site access with Dana - gathered 2 buckets of seawater');
INSERT INTO `samples` VALUES (2224,4,'2018-01-30',4,'09:39:00',14,162,127,24.1,34.4,6.83,99.3,8.19,9.22,7.24,9.87,1,116.81,14.94,8.46,338.21,16.56,2.85,NULL,'large particles in seawater made turbidity results more variable');
INSERT INTO `samples` VALUES (2225,5,'2018-01-30',5,'10:03:00',14,162,127,24.1,33,6.89,99.6,8.2,1.42,1.54,1.64,1,233.64,15.66,11.29,1296.2,174.33,3.5,NULL,'choppy water');
INSERT INTO `samples` VALUES (2226,6,'2018-01-30',6,'10:25:00',14,162,127,24.2,33.2,6.84,99,8.2,2.16,2.19,2.22,1,129.35,18.46,13.7,1132.35,42.42,3.31,NULL,'choppy water');
INSERT INTO `samples` VALUES (2227,13,'2018-02-22',1,'07:15:00',7,162,128,24,34,5.85,84.2,8.02,6.68,6.73,6.92,1,64.55,10.98,5.39,171.18,3.84,2.83,NULL,'Started sprinkling at last site.');
INSERT INTO `samples` VALUES (2228,14,'2018-02-22',2,'07:45:00',7,162,128,24.7,34.5,6.19,90.2,8.07,3.13,3.06,3.14,1,53.73,9.55,4.45,244.62,5.33,1.67,NULL,NULL);
INSERT INTO `samples` VALUES (2229,15,'2018-02-22',3,'08:02:00',7,162,128,24.6,34.4,5.9,85.7,8.03,3.28,3.19,3.31,1,59.57,10.57,4.8,355.88,5.04,2.18,NULL,NULL);
INSERT INTO `samples` VALUES (2230,16,'2018-02-22',4,'08:20:00',7,162,128,24.4,34.6,6.61,96,8.1,3.87,4.09,3.97,1,69.64,9.08,4.58,100.79,1.62,1.6,NULL,NULL);
INSERT INTO `samples` VALUES (2231,17,'2018-02-22',5,'08:36:00',7,162,128,24.6,34.7,6.82,99.3,8.1,10.7,10.2,10.2,1,55.04,13.37,4.1,93.1,1.94,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (2232,18,'2018-02-22',6,'08:52:00',7,162,128,24.6,34.7,6.51,94.9,8.11,3.96,4.73,4.38,1,59.11,9.16,5.24,128.4,5.93,1.99,NULL,NULL);
INSERT INTO `samples` VALUES (2233,7,'2018-02-21',1,'08:10:00',6,162,128,23.7,34.2,6.11,87.3,8.04,1.23,1.2,0.94,1,80.63,11.99,6.26,284.37,5.63,1.46,NULL,'PFF - moderate flow 40 ft north of usual location');
INSERT INTO `samples` VALUES (2234,8,'2018-02-21',2,'08:38:00',6,162,128,23.8,34.1,6.49,93.1,8.07,3.39,4.58,3.19,1,78.16,9.02,7.53,402.65,12.26,2.28,NULL,'PLH small amount standing water');
INSERT INTO `samples` VALUES (2235,9,'2018-02-21',3,'09:00:00',6,162,128,24.3,33.9,6.28,90.8,8.08,5.88,5.36,5.01,1,77.73,9.25,7.34,371.22,10.31,2.73,NULL,'PLT 1.5 inch of mucky silt on bottom');
INSERT INTO `samples` VALUES (2236,10,'2018-02-21',4,'09:25:00',6,162,128,24.4,33.4,7.1,102.5,8.19,3.12,3.53,4.67,1,75.81,12.49,4.98,447.99,1.39,3.06,NULL,NULL);
INSERT INTO `samples` VALUES (2237,11,'2018-02-21',5,'09:41:00',6,162,128,24.7,34.5,7.08,103.4,8.15,2.62,2.89,2.76,1,59.68,11.75,3.47,129.6,1.11,1.18,NULL,NULL);
INSERT INTO `samples` VALUES (2238,12,'2018-02-21',6,'10:00:00',6,162,128,24.7,34.6,6.92,101.3,8.07,2.33,2.64,2.83,1,80.87,15.7,5.17,114.45,3.84,2.66,NULL,NULL);
INSERT INTO `samples` VALUES (2239,19,'2018-02-23',1,'07:50:00',8,162,128,23.3,33.9,6.43,91.3,8.08,24.4,28.1,24.3,1,90.41,13.28,9.27,407.99,11.98,10.08,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (2240,21,'2018-02-23',2,'08:40:00',8,162,128,24,34.4,7.06,101.7,8.15,2.28,2.39,2.51,1,67.42,13.6,5.48,262.16,8.69,2.22,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (2241,22,'2018-02-23',3,'09:05:00',8,162,128,24.3,34.7,7,101.7,8.16,0.52,0.55,0.58,1,64.19,12.35,5.47,126.47,5.47,2.04,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (2242,23,'2018-02-23',4,'09:35:00',8,162,128,24.5,33.7,7.16,103.7,8.14,0.97,0.81,0.92,1,127.05,12.71,12.1,651.28,65.37,3.93,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (2243,24,'2018-02-23',5,'10:00:00',8,162,128,24.3,33.8,6.84,98.9,8.09,9.8,9.95,10.1,1,135.68,15.8,12.69,592.53,77.56,3.69,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (2244,25,'2018-02-23',6,'10:20:00',8,162,128,25.1,34,7.17,105.1,8.15,4.65,5.13,5.94,1,93.7,9.52,8.81,450.21,23.8,2.61,NULL,'rained the night before but not the day of testing');
INSERT INTO `samples` VALUES (2245,1,'2018-02-20',1,'08:20:00',6,162,128,23.5,34.2,7.01,100.2,8.08,1.19,1.27,1.27,1,94.96,16.41,6.38,354.15,22.25,2.94,NULL,'very calm day for wind and waves, very rainy until yesterday');
INSERT INTO `samples` VALUES (2246,2,'2018-02-20',2,'08:42:00',6,162,128,24,34.1,6.65,95.8,8.13,2.45,2.74,2.81,1,114.19,9.68,9.83,544.2,64.31,2.28,NULL,'very calm day for wind and waves, very rainy until yesterday');
INSERT INTO `samples` VALUES (2247,3,'2018-02-20',3,'09:05:00',6,162,128,23.3,32.8,7.09,100.2,8.15,2.9,2.97,2.95,1,83.7,14.01,8.97,480.97,6.39,3.49,NULL,'very calm day for wind and waves, very rainy until yesterday, visitors asked what team was doing');
INSERT INTO `samples` VALUES (2248,4,'2018-02-20',4,'09:23:00',6,162,128,24.3,34.2,6.9,99.9,8.17,1.75,1.92,1.75,1,90.84,12.77,8.12,438.37,21.69,2.05,NULL,'very calm day for wind and waves, very rainy until yesterday, visitors asked what team was doing');
INSERT INTO `samples` VALUES (2249,5,'2018-02-20',5,'09:41:00',6,162,128,24.7,34.3,6.85,99.8,8.18,1.73,1.76,1.76,1,105.87,9.36,8.12,497.74,53.3,3.83,NULL,'very calm day for wind and waves, very rainy until yesterday, lifeguard asked about the water quality');
INSERT INTO `samples` VALUES (2250,6,'2018-02-20',6,'09:58:00',6,162,128,24.4,32.5,6.99,100.4,8.19,1.25,1.33,1.39,1,114.71,20.7,18.22,1634.22,54.79,1.66,NULL,'very calm day for wind and waves, very rainy until yesterday');
INSERT INTO `samples` VALUES (2251,13,'2018-03-15',1,'07:15:00',28,162,129,23.9,34.1,6.19,88.9,8.05,4.21,4.23,4.32,1,72.61,7.35,5.83,218.74,6.07,0.61,NULL,NULL);
INSERT INTO `samples` VALUES (2252,14,'2018-03-15',2,'07:31:00',28,162,129,24.3,34.3,6.52,94.4,8.08,8.06,8.88,8.75,1,85.02,8.24,6.1,383.7,8.18,0.73,NULL,NULL);
INSERT INTO `samples` VALUES (2253,15,'2018-03-15',3,'07:45:00',28,162,129,24.3,34.2,6.34,91.8,8.01,8.42,8.47,9.2,1,71.7,8.6,5.75,500.72,10.69,1.51,NULL,NULL);
INSERT INTO `samples` VALUES (2254,16,'2018-03-15',4,'08:00:00',28,162,129,24.3,34.4,6.83,99,8.08,9.15,8.53,8.27,1,71.17,6.57,5.11,115.36,3.59,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2255,17,'2018-03-15',5,'08:14:00',28,162,129,24.8,34.6,6.93,101.3,8.13,6.58,7.8,7.31,1,76.38,5.79,4.37,107.53,5.37,0.69,NULL,NULL);
INSERT INTO `samples` VALUES (2256,18,'2018-03-15',6,'08:30:00',28,162,129,24.9,34.6,6.87,100.6,8.07,7.64,6.67,7.22,1,58.51,5.6,4.22,163.56,1.52,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2257,7,'2018-03-14',1,'08:15:00',27,162,129,24.1,34,5.84,84.2,8.06,3.96,4.82,4.92,1,82.4,10.98,10.15,975.32,9.26,0.58,NULL,'PFF - moderate flow, 2 dogs');
INSERT INTO `samples` VALUES (2258,8,'2018-03-14',2,'08:38:00',27,162,129,24.2,33.7,5.97,86.1,8.04,6.34,5.25,7.82,1,101.17,9.09,7.81,509.74,26.6,0.92,NULL,'PLH - no flow, 4 dogs');
INSERT INTO `samples` VALUES (2259,9,'2018-03-14',3,'09:00:00',27,162,129,24.5,33.3,5.91,85.6,8.03,1.86,1.91,2.07,1,89.53,9.25,6.12,274.46,11.77,2.69,NULL,'1 dog');
INSERT INTO `samples` VALUES (2260,10,'2018-03-14',4,'09:36:00',27,162,129,24.4,34.1,6.97,101.2,8.18,3.19,4.28,4.48,1,74.79,10.11,4.4,232.21,2.63,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2261,11,'2018-03-14',5,'09:54:00',27,162,129,24.9,34.6,7.07,103.7,8.16,3.57,2.51,3.29,1,168.78,12.28,8.09,84.14,5.75,3.47,NULL,NULL);
INSERT INTO `samples` VALUES (2262,12,'2018-03-14',6,'10:23:00',27,162,129,24.8,34.5,6.89,100.9,8.11,4.06,5.16,4.72,1,90.46,9.14,6.01,194.71,9.36,2.23,NULL,'Increasing amounts of a brown algae on rocks in water surrounding pier');
INSERT INTO `samples` VALUES (2263,19,'2018-03-16',1,'07:48:00',1,162,129,23.4,33.5,6.09,86.5,8.1,10.1,10,10.5,1,75.12,11.23,9.61,417.58,3.1,2.89,NULL,'moderate to light stream flow');
INSERT INTO `samples` VALUES (2264,21,'2018-03-16',2,'08:35:00',1,162,129,24.2,34.6,6.94,100.4,8.17,1.53,1.51,1.53,1,71.16,7.7,4.54,104.2,6.75,0.28,NULL,'no stream flow');
INSERT INTO `samples` VALUES (2265,22,'2018-03-16',3,'09:05:00',1,162,129,24.7,34.7,7.09,103.7,8.18,0.48,0.42,0.44,1,80.82,6.06,4.61,93.01,5.36,0.48,NULL,'water very clear');
INSERT INTO `samples` VALUES (2266,23,'2018-03-16',4,'09:35:00',1,162,129,25.1,32.2,7.14,103.4,8.14,1.04,1.17,1.16,1,230.31,19.7,19,1601.9,178.38,4.03,NULL,'lots of people within sampling vicinity');
INSERT INTO `samples` VALUES (2267,24,'2018-03-16',5,'10:01:00',1,162,129,25.3,33.4,6.69,98.1,8.1,7.25,6.89,6.98,1,138.61,14.75,12.89,710.96,77.76,2.15,NULL,'started clouding over');
INSERT INTO `samples` VALUES (2268,25,'2018-03-16',6,'10:25:00',1,162,129,25.8,33.6,6.82,100.8,8.13,4.21,4.16,4.2,1,120.84,13.07,11.18,740.29,34.27,11.81,NULL,'clouding over');
INSERT INTO `samples` VALUES (2269,1,'2018-03-13',1,'08:10:00',26,162,129,22.8,34.4,7.04,99.3,8.16,1.14,1.32,1.39,1,101.72,9.44,6.89,215.9,14.74,1.51,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (2270,2,'2018-03-13',2,'08:40:00',26,162,129,22.8,32.2,7.13,99.1,8.16,8.4,8.21,8.62,1,324.37,21.56,20.44,1662.02,292.77,2.27,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (2271,3,'2018-03-13',3,'09:02:00',26,162,129,21.5,24,7.66,99.2,8.18,7.91,7.87,8.02,1,100.69,9.92,8.58,1104.59,12.22,1.42,NULL,'dark and dismal day, light rain, not sure about stream flow. parking has become tighter due to workmen shoring up beach to protect the hotel');
INSERT INTO `samples` VALUES (2272,4,'2018-03-13',4,'09:22:00',26,162,129,23.6,33.9,6.88,98,8.16,7.63,8.9,7.62,1,80.46,13.2,8.69,331.58,9.23,0.73,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (2273,5,'2018-03-13',5,'09:39:00',26,162,129,24.3,33,6.97,99.9,8.18,1.47,1.3,1.46,1,225.94,14.56,11.56,1269.55,177.44,2.02,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (2274,6,'2018-03-13',6,'09:56:00',26,162,129,24.4,34.1,6.84,98.9,8.2,0.9,0.91,0.94,1,91.93,9.9,5.86,367.28,17.11,0.28,NULL,'dark and dismal day, light rain, not sure about stream flow');
INSERT INTO `samples` VALUES (2275,13,'2018-04-05',1,'07:10:00',20,162,130,25.1,34.4,6.14,90.5,8.11,3.25,3.93,4.04,1,79.33,13.35,6.14,191.97,5.19,1.43,NULL,'Rain overnight.');
INSERT INTO `samples` VALUES (2276,14,'2018-04-05',2,'07:30:00',20,162,130,26.6,34.2,6.22,94,8.06,4.96,5.11,5.95,1,65.34,11.43,4.62,241.2,4.49,0.78,NULL,NULL);
INSERT INTO `samples` VALUES (2277,15,'2018-04-05',3,'07:42:00',20,162,130,26.4,33.7,5.52,82.7,8.03,2.5,2.67,2.38,1,68.04,9.37,5.4,470.8,5.26,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (2278,16,'2018-04-05',4,'07:59:00',20,162,130,25.2,34.2,6.7,98.8,8.13,9.3,10.7,9.98,1,63.96,10.49,4.72,102.4,1.33,0.72,NULL,'Ukumehame stream flowing');
INSERT INTO `samples` VALUES (2279,17,'2018-04-05',5,'08:15:00',20,162,130,25.3,34.1,6.74,99.6,8.1,22.4,23.7,22.3,1,72.11,8.38,5.09,122.49,6.25,0.83,NULL,NULL);
INSERT INTO `samples` VALUES (2280,18,'2018-04-05',6,'08:30:00',20,162,130,25.7,34.3,6.5,96.8,8.08,18.9,20,19.6,1,63.61,7.73,5,95.06,1,0.28,NULL,'Slight drizzle as we sampled.');
INSERT INTO `samples` VALUES (2281,7,'2018-04-04',1,'08:25:00',19,162,130,25.5,32.3,6.38,93.7,8.05,10.7,11.6,10.9,1,84.17,18.37,10.52,871.66,10.66,1.52,NULL,'Stream flowing');
INSERT INTO `samples` VALUES (2282,8,'2018-04-04',2,'08:45:00',19,162,130,25.5,32.5,6.26,91.9,8.09,14.9,15.8,14.5,1,138.78,19.88,12.4,707.9,48.36,6.87,NULL,'Heavy rains carved sand by culvert and there was still a light flow');
INSERT INTO `samples` VALUES (2283,9,'2018-04-04',3,'09:05:00',19,162,130,25.9,33.1,6.41,95.2,8.1,8.3,9.3,9.41,1,119.55,19.24,8.98,539.28,25.01,8.14,NULL,NULL);
INSERT INTO `samples` VALUES (2284,10,'2018-04-04',4,'09:33:00',19,162,130,25.6,33.6,6.81,100.9,8.16,16.3,14.5,15.9,1,84.04,13.95,5.27,335.57,6.12,0.72,NULL,NULL);
INSERT INTO `samples` VALUES (2285,11,'2018-04-04',5,'09:55:00',19,162,130,25.7,34.2,6.8,101.1,8.12,8.09,7.86,8.97,1,84.29,12.8,5.26,145.55,4.62,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (2286,12,'2018-04-04',6,'10:20:00',19,162,130,26.3,34.2,6.66,100.2,8.09,5.16,4.53,4.07,1,83.4,14.49,7.32,241.88,7.22,3.92,NULL,NULL);
INSERT INTO `samples` VALUES (2287,19,'2018-04-06',1,'07:50:00',21,162,130,23.8,34.4,6.54,92.9,8.19,3.22,3.1,2.94,1,84.11,9.58,7.42,700.7,5.12,2.85,NULL,'rain in last 24 hours, light rain while testing, car testing area wet, stream flowing but not sure how much from data sheet');
INSERT INTO `samples` VALUES (2288,21,'2018-04-06',2,'08:30:00',21,162,130,24.3,34,6.96,100.5,8.17,5.9,5.67,6.82,1,109.75,13.14,7.29,395.45,17.37,4.92,NULL,'rain in last 24 hours, light rain while testing, car testing area wet, stream not flowing, leaves in water');
INSERT INTO `samples` VALUES (2289,22,'2018-04-06',3,'09:05:00',21,162,130,24.5,34.4,6.98,101.7,8.19,0.67,0.52,0.46,1,82.35,12.93,4.4,151.26,9.81,1.37,NULL,'rain in last 24 hours, light rain while testing, car testing area wet');
INSERT INTO `samples` VALUES (2290,23,'2018-04-06',4,'09:30:00',21,162,130,25,32.1,6.76,98,8.12,0.88,0.91,0.77,1,285.1,24.62,22.09,1823.13,222.36,4.39,NULL,'rain in last 24 hours, mist while testing, car testing area wet');
INSERT INTO `samples` VALUES (2291,24,'2018-04-06',5,'09:50:00',21,162,130,25.6,34.2,6.04,89.4,8.11,3.89,3.46,3.33,1,102.61,10.87,8.74,335.18,36.11,3.55,NULL,'rain in last 24 hours, sunny while testing, stream not flowing, amount of cloud cover unknown');
INSERT INTO `samples` VALUES (2292,25,'2018-04-06',6,'10:10:00',21,162,130,25.7,33.8,6.75,99.8,8.13,1.13,1.31,1.33,1,81.22,6.3,5.57,296.43,12.58,0.98,NULL,'rain in last 24 hours, sunny while testing, amount of cloud cover unknown');
INSERT INTO `samples` VALUES (2293,1,'2018-04-03',1,'08:20:00',18,162,130,24.8,33,6.96,102,8.15,0.96,1.02,1.34,1,113.59,26.77,12.27,794.55,50.3,3.13,NULL,'big storms previous night ... calm in morning.');
INSERT INTO `samples` VALUES (2294,2,'2018-04-03',2,'08:42:00',18,162,130,24.5,32.8,6.65,96.7,8.18,2.15,2.23,2.3,1,168.08,24.79,11.88,835.51,107.44,2.58,NULL,'watched workers previous day moving sand at Pohaku and clearing out drain');
INSERT INTO `samples` VALUES (2295,3,'2018-04-03',3,'09:02:00',18,162,130,24.6,33.7,6.82,99.7,8.17,8.6,8.44,8.08,1,116.74,20.28,8.12,240.39,13.45,8.09,NULL,'big storms previous night ... calm in morning.');
INSERT INTO `samples` VALUES (2296,4,'2018-04-03',4,'09:20:00',18,162,130,25.2,33.7,6.85,101.2,8.22,1.72,1.76,1.76,1,129.94,20.71,9.58,661.3,43.46,2.38,NULL,'cloudier at airport beach with dark clouds.');
INSERT INTO `samples` VALUES (2297,5,'2018-04-03',5,'09:39:00',18,162,130,24.9,33.8,6.82,100.3,8.21,1.95,1.99,2.14,1,219.23,19.54,8.91,584.36,69.31,12.42,NULL,'big storms previous night ... calm in morning.');
INSERT INTO `samples` VALUES (2298,6,'2018-04-03',6,'09:54:00',18,162,130,24.7,33.7,6.81,99.9,8.22,0.93,0.85,0.94,1,105.15,19.56,7.06,381.2,20.62,3.96,NULL,'light rain at Wahikuli, windier and higher waves.');
INSERT INTO `samples` VALUES (2299,13,'2018-04-26',1,'07:10:00',11,162,131,24.7,34,5.84,85,8.08,1.22,1.47,1.49,1,85.02,14.31,4.57,184.56,5.52,2.01,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (2300,14,'2018-04-26',2,'07:30:00',11,162,131,24.6,33.8,6.52,94.6,8.1,2.5,2.74,2.95,1,79.61,8.14,4.45,369.24,6.52,1.84,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (2301,15,'2018-04-26',3,'07:47:00',11,162,131,24.4,33.9,6.08,88,8.08,1.59,1.55,1.58,1,80.6,7.12,4.54,287.82,3.8,1.85,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (2302,16,'2018-04-26',4,'08:03:00',11,162,131,24.6,34.2,6.83,99.2,8.12,4.97,4.87,5.31,1,124.62,7.59,4.97,110.02,6.17,1.8,NULL,'No rain in last 24 hours');
INSERT INTO `samples` VALUES (2303,17,'2018-04-26',5,'08:20:00',11,162,131,24.9,34.1,6.95,101.7,8.15,3.51,3.03,3.27,1,94.18,6.28,4.34,209.21,10.41,2.12,NULL,'No rain in last 24 hours, wind became light onshore');
INSERT INTO `samples` VALUES (2304,18,'2018-04-26',6,'08:40:00',11,162,131,24.7,33.9,7,102.4,8.17,1.93,2.22,2.37,1,81.58,6.58,4.49,166.47,2.99,1.2,NULL,'No rain in last 24 hours, wind became light onshore');
INSERT INTO `samples` VALUES (2305,7,'2018-04-25',1,'08:20:00',10,162,131,25,34.1,6.66,97.3,8.07,1.05,0.97,1.04,1,98.44,7.6,5.86,225.88,6.11,1.42,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours, stream flowing');
INSERT INTO `samples` VALUES (2306,8,'2018-04-25',2,'08:45:00',10,162,131,25.4,33.7,6.6,96.8,8.09,2.21,2.13,2.03,1,96.74,8.56,5.93,319.61,5.08,1.86,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours, water flowing through tube from street forming \'pond\' on beach but not going into ocean');
INSERT INTO `samples` VALUES (2307,9,'2018-04-25',3,'09:10:00',10,162,131,25.5,34.2,6.73,99.4,8.11,1.56,1.52,1.48,1,96.75,7.27,4.68,76.8,5.93,2.67,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (2308,10,'2018-04-25',4,'09:45:00',10,162,131,25.7,33.4,6.94,102.2,8.19,1.73,1.54,1.81,1,91.91,11.74,4.51,233.68,1.82,1.3,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (2309,11,'2018-04-25',5,'10:19:00',10,162,131,26.3,34.1,6.95,103.9,8.18,5.16,5.37,4.59,1,91.32,12.91,4.35,102.38,3.14,1.27,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (2310,12,'2018-04-25',6,'10:50:00',10,162,131,26.3,33.6,7.3,108.3,8.2,3.09,2.99,2.96,1,100.42,9.31,5.56,300.27,5.3,2.59,NULL,'MB sampled all 6 sites, CM sampled only OLP and OSF, No rain in last 24 hours');
INSERT INTO `samples` VALUES (2311,19,'2018-04-27',1,'07:55:00',12,162,131,24.1,31.3,6.47,92,8.14,24.8,25.7,23.5,1,82.03,8.51,7.74,546.96,2.28,3.72,NULL,'rained in last 24 hours, walk to sample site was muddy, but no rain when sampling, stream flowing into ocean at RHL');
INSERT INTO `samples` VALUES (2312,21,'2018-04-27',2,'08:30:00',12,162,131,24.7,34.1,6.89,100.5,8.16,1.19,1.35,1.23,1,87.75,6.39,5.58,132.25,7.7,1.44,NULL,'rained in last 24 hours, but no rain when sampling, stream not flowing into ocean at RFN');
INSERT INTO `samples` VALUES (2313,22,'2018-04-27',3,'09:00:00',12,162,131,24.9,34.1,6.92,101.4,8.16,0.66,0.46,0.53,1,74.68,6.85,4.18,103.91,1.22,2.86,NULL,'rained in last 24 hours, but no rain when sampling');
INSERT INTO `samples` VALUES (2314,23,'2018-04-27',4,'09:25:00',12,162,131,24.9,31.1,6.52,93.9,8.05,1.75,0.85,1.64,1,356.21,29.59,27.61,2383.19,307.82,3.41,NULL,'rained in last 24 hours, but no rain when sampling');
INSERT INTO `samples` VALUES (2315,24,'2018-04-27',5,'09:52:00',12,162,131,25,32.4,6.55,95.1,8.1,5.4,4.98,4.84,1,170.2,16.27,12.88,937.2,103.15,2.32,NULL,'rained in last 24 hours, but no rain when sampling,  1 fisherman with 2 poles here at RKO');
INSERT INTO `samples` VALUES (2316,25,'2018-04-27',6,'10:10:00',12,162,131,25.4,32.3,6.72,98,8.15,3.49,2.97,3.7,1,113.43,11.46,9.57,1020.34,46.68,0.87,NULL,'rained in last 24 hours, but no rain when sampling');
INSERT INTO `samples` VALUES (2317,1,'2018-04-24',1,'08:14:00',9,162,131,24.2,33.4,6.99,100.4,8.12,1.26,1.32,1.49,1,122.24,13.23,11.12,649.69,38.07,2.52,NULL,'rained in last 24 hours, dark clouds/rain while testing');
INSERT INTO `samples` VALUES (2318,2,'2018-04-24',2,'08:37:00',9,162,131,24.5,32.1,6.53,93.3,8.14,1.69,2.03,1.94,1,409.95,17.05,16.44,1745.71,362.21,2,NULL,'rained in last 24 hours, sprinkling light rain while testing, lots of limu floating in water');
INSERT INTO `samples` VALUES (2319,3,'2018-04-24',3,'08:56:00',9,162,131,24.2,33.4,7.02,100.8,8.12,2.55,2.1,2.42,1,94.13,7.53,5.52,360.3,5.34,1.38,NULL,'rained in last 24 hours, stream flowing north of sample site');
INSERT INTO `samples` VALUES (2320,4,'2018-04-24',4,'09:15:00',9,162,131,24.9,33.8,6.76,98.4,8.15,0.66,0.68,0.67,1,97.53,7.53,5.99,269.07,8.62,2.4,NULL,'rained in last 24 hours, getting windier');
INSERT INTO `samples` VALUES (2321,5,'2018-04-24',5,'09:33:00',9,162,131,25.2,32.6,7.1,103.2,8.16,1.98,1.92,1.76,1,259.62,13.54,11.24,1173.56,165.15,3.31,NULL,'rained in last 24 hours, sunny with light mist while testing, several fishermen set up');
INSERT INTO `samples` VALUES (2322,6,'2018-04-24',6,'09:48:00',9,162,131,25.5,33.3,6.83,100.3,8.17,0.67,0.65,0.7,1,97.94,11.48,7.6,475.93,16.61,1.33,NULL,'rained in last 24 hours, calm');
INSERT INTO `samples` VALUES (2323,13,'2018-05-17',1,'07:16:00',4,162,132,25.7,34.3,5.7,84.6,8.06,1.81,1.99,1.88,1,88.71,13.81,6.21,148.3,4.29,1.94,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (2324,14,'2018-05-17',2,'07:41:00',4,162,132,26.7,34.2,6.25,94.5,8.08,3.79,3.98,3.73,1,79.58,11.45,6.58,310.23,8.91,1.16,NULL,'VOG and haze, 1 fisherman north of sampling');
INSERT INTO `samples` VALUES (2325,15,'2018-05-17',3,'08:01:00',4,162,132,27.2,34.2,5.89,89.7,8.03,2.24,2.21,2.36,1,81.76,12.99,6.23,349.56,8.52,1.75,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (2326,16,'2018-05-17',4,'08:26:00',4,162,132,26.9,34.4,6.61,100.3,8.12,5.54,5.52,5.98,1,80.1,13.48,5.73,90.04,5.38,0.39,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (2327,17,'2018-05-17',5,'08:44:00',4,162,132,27.5,34.5,6.96,106.2,8.2,3.42,3.49,3.28,1,102.43,12.99,5.05,85.77,2.54,3.83,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (2328,18,'2018-05-17',6,'09:04:00',4,162,132,27.1,34.5,6.78,103.3,8.15,3.65,3.67,3.31,1,70.84,12.63,5.25,75.34,1.33,0.28,NULL,'VOG and haze');
INSERT INTO `samples` VALUES (2329,7,'2018-05-16',1,'08:20:00',3,162,132,25.7,34,6.52,96.6,8.12,3.32,2.75,3.15,1,82.5,8.17,7.14,222.96,3.03,0.88,NULL,'Moderate flow in stream');
INSERT INTO `samples` VALUES (2330,8,'2018-05-16',2,'08:43:00',3,162,132,26.5,34.1,6.77,101.6,8.07,1.09,1.24,1.18,1,93.5,8.87,6.6,117.31,7.67,2.16,NULL,'storm drain not flowing. Lots of dogs on beach');
INSERT INTO `samples` VALUES (2331,9,'2018-05-16',3,'09:03:00',3,162,132,27,34.3,7.05,106.8,8.1,1.7,2.58,2.12,1,85.14,8.71,5.74,135.3,8.13,2.72,NULL,'Had to walk out very far to get knee deep - 2 dogs in water');
INSERT INTO `samples` VALUES (2332,11,'2018-05-16',4,'09:33:00',3,162,132,28.3,34.4,7.16,111,8.19,1.99,2.11,1.86,1,81.43,6.2,4.37,126.61,1.49,0.53,NULL,'Aldo jumped in next to sampler to take pictures');
INSERT INTO `samples` VALUES (2333,12,'2018-05-16',5,'09:59:00',3,162,132,27.6,34.4,7.04,107.9,8.15,3.04,3.61,3.41,1,93.17,8.27,7.3,178.92,6.82,3.85,NULL,'Very low tide, hard to sample without kicking up sediment');
INSERT INTO `samples` VALUES (2334,19,'2018-05-18',1,'08:05:00',4,162,132,25.3,33.6,6.22,91.2,8.13,7.08,7.2,7.49,1,105.05,14.33,10.03,420.64,5.82,5.26,NULL,'rained in last 24 hours, rain sprinkles while there');
INSERT INTO `samples` VALUES (2335,21,'2018-05-18',2,'08:40:00',4,162,132,25.3,33.8,6.83,100.3,8.19,0.72,0.72,0.69,1,95.44,13,6.56,352,11.2,0.86,NULL,'rained in last 24 hours, streams not flowing');
INSERT INTO `samples` VALUES (2336,22,'2018-05-18',3,'09:11:00',4,162,132,25.7,34.3,7.09,105.3,8.22,0.41,0.37,0.34,1,81.62,14.16,4.77,111.35,2.82,0.28,NULL,'rained in last 24 hours, 2 dogs on beach');
INSERT INTO `samples` VALUES (2337,23,'2018-05-18',4,'09:37:00',4,162,132,26.5,31.7,6.59,97.8,8.07,1.09,1.16,1.07,1,320.91,23.76,23.15,1891.18,227.72,2.73,NULL,'rained in last 24 hours');
INSERT INTO `samples` VALUES (2338,24,'2018-05-18',5,'10:04:00',4,162,132,26.4,33.6,6.72,100.6,8.17,4.7,5.02,4.68,1,139.68,15.27,10.77,616.01,65.11,1.41,NULL,'rained in last 24 hours, no water flowing out pipe');
INSERT INTO `samples` VALUES (2339,25,'2018-05-18',6,'10:23:00',4,162,132,26.4,33.5,6.52,97.5,8.16,1.73,2.27,1.99,1,102.78,14.51,7.4,556.05,26.08,2.55,NULL,'rained in last 24 hours');
INSERT INTO `samples` VALUES (2340,1,'2018-05-15',1,'08:13:00',1,162,132,25,33.8,6.88,100.9,8.17,1.58,1.56,1.63,1,157.41,12.82,12.19,601.59,37.89,4.48,NULL,NULL);
INSERT INTO `samples` VALUES (2341,2,'2018-05-15',2,'08:35:00',1,162,132,25,31.3,6.94,100.4,8.19,2.2,2.53,2.9,1,340.09,21.71,20.15,1906.65,257.37,2.71,NULL,'Particularly big chunks in water contributing to variability in turbidity readings');
INSERT INTO `samples` VALUES (2342,3,'2018-05-15',3,'08:54:00',1,162,132,23.2,13.8,7.79,98.8,8.23,9.4,9.27,9.6,1,173.84,16.27,13.24,2275.59,49.33,4.14,NULL,'Brown water near shore - CM checked stream to north which was running into ocean and very muddy, south swell, had trouble filtering nutrient sample and didn\'t get as large a filtered sample since first filter clogged and used a second filter to filter the last 10 ml');
INSERT INTO `samples` VALUES (2343,4,'2018-05-15',4,'09:20:00',1,162,132,25.7,33.6,6.83,101.5,8.21,2.9,2.75,3.62,1,108.11,14.96,9.79,646.84,28.72,1.53,NULL,NULL);
INSERT INTO `samples` VALUES (2344,5,'2018-05-15',5,'09:38:00',1,162,132,25.6,33,6.75,99.8,8.19,2.12,2.03,2.14,1,248.23,19.34,13.69,1208.84,159.8,4.5,NULL,'brown water only to about 10 feet from shore, 3 fishermen on the beach with 12 fishing poles set up in the surf, canoes going by');
INSERT INTO `samples` VALUES (2345,6,'2018-05-15',6,'09:54:00',1,162,132,25.4,33.1,6.82,100.3,8.22,1.75,1.79,1.78,1,107.35,17.83,14.29,1010.01,34.04,0.59,NULL,NULL);
INSERT INTO `samples` VALUES (2346,13,'2018-06-07',1,'07:12:00',24,162,133,24.5,34.1,5.38,78.2,8.02,0.9,0.99,0.92,1,64.91,7.11,4.88,146.32,3.44,1.27,NULL,'Peter Martin engaged in conversation about WQ. Wanted to know how cesspools affect WQ.');
INSERT INTO `samples` VALUES (2347,14,'2018-06-07',2,'07:46:00',24,162,133,25.3,34.1,6.33,93.1,8.08,2.73,2.9,3.44,1,59.56,6.45,5.58,283.2,3.25,2.46,NULL,NULL);
INSERT INTO `samples` VALUES (2348,15,'2018-06-07',3,'07:57:00',24,162,133,25.3,34.1,5.7,83.9,8.03,1.99,2.11,2.26,1,63.88,6.81,5.63,248.72,4.74,2.28,NULL,NULL);
INSERT INTO `samples` VALUES (2349,16,'2018-06-07',4,'08:13:00',24,162,133,25,34.4,6.61,96.9,8.09,8,7.86,8.33,1,57.53,6.38,3.85,92.61,2.67,0.81,NULL,NULL);
INSERT INTO `samples` VALUES (2350,17,'2018-06-07',5,'08:26:00',24,162,133,24.9,34.4,6.89,101,8.13,2.74,2.99,3.18,1,61.05,5.43,3.28,84.42,2.71,1.24,NULL,NULL);
INSERT INTO `samples` VALUES (2351,18,'2018-06-07',6,'08:40:00',24,162,133,25.2,34.3,6.84,100.6,8.13,1.68,1.86,1.83,1,53.23,7.18,4.07,91.09,2.5,0.81,NULL,NULL);
INSERT INTO `samples` VALUES (2352,7,'2018-06-06',1,'08:12:00',23,162,133,26.2,33.6,6.26,93.2,8.02,2.02,2.13,2.42,1,67.82,6.16,5.45,204.93,6.52,0.81,NULL,'light flow at PFF');
INSERT INTO `samples` VALUES (2353,8,'2018-06-06',2,'08:45:00',23,162,133,26,34,6.08,90.4,8.06,2.45,2.78,2.81,1,74.44,7.28,6.06,171.46,11.98,1.2,NULL,NULL);
INSERT INTO `samples` VALUES (2354,9,'2018-06-06',3,'08:57:00',23,162,133,26.4,34.1,6.21,93.1,8.03,1.61,1.52,1.56,1,73.73,6.6,5.63,102.72,9.47,2.32,NULL,NULL);
INSERT INTO `samples` VALUES (2355,11,'2018-06-06',4,'09:25:00',23,162,133,26.6,34.3,6.77,102.1,8.12,1.25,1.3,1.35,1,171.93,12.36,10.09,60.98,4.96,8.23,NULL,NULL);
INSERT INTO `samples` VALUES (2356,12,'2018-06-06',5,'09:56:00',23,162,133,26.4,34.2,7.21,108.1,8.08,2.14,2.2,2.04,1,81.46,7.81,5.08,115.78,7.02,3.58,NULL,NULL);
INSERT INTO `samples` VALUES (2357,19,'2018-06-08',1,'07:51:00',25,162,133,25.1,31.8,6.37,92,8.07,15.5,14.8,15.2,1,86.5,16.76,10.3,562.08,5.14,4.92,NULL,'not sure about rain in last 24 hours, but sprinkles while there');
INSERT INTO `samples` VALUES (2358,21,'2018-06-08',2,'08:30:00',25,162,133,25.6,33.8,6.8,100.2,8.1,6.07,6.69,6.11,1,71.82,10.67,6.62,330.42,15.89,0.89,NULL,'not sure about rain in last 24 hours');
INSERT INTO `samples` VALUES (2359,22,'2018-06-08',3,'09:00:00',25,162,133,25.6,34.3,6.81,100.7,8.11,0.37,0.36,0.35,1,82.35,10.11,4.5,73.51,5.11,1.6,NULL,'not sure about rain in last 24 hours, but sprinkles while there, turtle came onto beach while there');
INSERT INTO `samples` VALUES (2360,23,'2018-06-08',4,'09:35:00',25,162,133,26.1,32.5,6.78,99.9,8.03,2.05,2.01,1.63,1,225.53,24.22,20.53,1284.66,138.44,5.59,NULL,'not sure about rain in last 24 hours, guard reported DOH tested there the day before, turbidity tested a 4th time for value \'2.10\'');
INSERT INTO `samples` VALUES (2361,24,'2018-06-08',5,'09:56:00',25,162,133,26,33.1,6.61,97.5,8.04,16.1,17.7,18.5,1,124.63,13.93,11.56,686.05,72.95,1.95,NULL,'not sure about rain in last 24 hours, but sprinkles while there, dog on beach and in water while there');
INSERT INTO `samples` VALUES (2362,25,'2018-06-08',6,'10:18:00',25,162,133,26.3,33.7,6.67,99.2,8.08,15,17.2,18.6,1,74.24,9.21,5.97,319.33,14.95,1.63,NULL,'not sure about rain in last 24 hours, large slow-settling particles in turbitiy sample, turbidity tested a 4th time for value \'17.9\'');
INSERT INTO `samples` VALUES (2363,1,'2018-06-05',1,'08:35:00',22,162,133,25.8,33.6,7,103.3,8.2,2.15,2.24,2.15,1,84.62,13.2,8.6,483.89,27.07,3.64,NULL,NULL);
INSERT INTO `samples` VALUES (2364,2,'2018-06-05',2,'09:15:00',22,162,133,25.7,33.1,6.82,100,8.21,4.5,4.88,4.79,1,142.41,15.06,12.21,852.47,100.28,2.08,NULL,NULL);
INSERT INTO `samples` VALUES (2365,3,'2018-06-05',3,'09:48:00',22,162,133,25.6,34.2,6.91,101.9,8.18,8.1,7.48,8.33,1,107.5,17.08,6.7,143.87,3.51,9.18,NULL,'brown water - stream flowing into ocean just north of sample site');
INSERT INTO `samples` VALUES (2366,4,'2018-06-05',4,'10:14:00',22,162,133,26.3,33.9,6.85,102.2,8.22,2.05,1.85,1.83,1,89.58,12.38,8.03,442.19,23.48,2.85,NULL,NULL);
INSERT INTO `samples` VALUES (2367,5,'2018-06-05',5,'10:45:00',22,162,133,26.5,33.6,6.78,101.3,8.25,7.16,7.19,7.47,1,132.44,11.05,8.43,626.79,73.78,2.51,NULL,'dead fish on beach, surf advisory flags up, surf churned up');
INSERT INTO `samples` VALUES (2368,6,'2018-06-05',6,'11:06:00',22,162,133,26.3,33.7,6.72,100.2,8.24,3.05,3.21,3.35,1,84.42,11.83,9.88,517.97,17.85,0.81,NULL,'occasional set of waves larger than \'2\' wave size');
INSERT INTO `samples` VALUES (2369,13,'2018-06-28',1,'07:25:00',15,162,134,25.8,34.3,6,89.4,8.09,1.6,1.54,1.43,1,80.86,14.46,5.08,165.41,6.57,2.57,NULL,'Team noted that temp on DO probe 0.2 C higher than salinity probe.  This is within tolerance.');
INSERT INTO `samples` VALUES (2370,14,'2018-06-28',2,'07:40:00',15,162,134,26,34.3,6.39,95.6,8.07,4.86,5.51,5.42,1,89.22,14.28,6.66,457.65,11.69,3.87,NULL,NULL);
INSERT INTO `samples` VALUES (2371,16,'2018-06-28',3,'08:01:00',15,162,134,26.5,34.6,6.71,101.4,8.17,14.6,14,14,1,83.77,13.23,4.95,77.4,7.26,3.22,NULL,NULL);
INSERT INTO `samples` VALUES (2372,17,'2018-06-28',4,'08:18:00',15,162,134,26.3,34.6,6.93,104.4,8.19,5.71,4.9,5.31,1,82.1,13.66,4.52,85.1,6.86,2.44,NULL,NULL);
INSERT INTO `samples` VALUES (2373,18,'2018-06-28',5,'08:38:00',15,162,134,25.9,34.6,6.91,103.5,8.18,2.99,3.44,3.64,1,80.02,12.77,4,59.34,5.51,2.2,NULL,NULL);
INSERT INTO `samples` VALUES (2374,7,'2018-06-27',1,'08:10:00',14,162,134,26,34.3,6.31,94.4,8.09,2.31,2.86,2.85,1,92.86,17.23,7.07,377.52,12.75,2.65,NULL,NULL);
INSERT INTO `samples` VALUES (2375,8,'2018-06-27',2,'08:31:00',14,162,134,26.1,34.2,6.32,94.6,8.09,1.64,2.12,1.91,1,79.74,14.12,4.97,84.56,10.68,3.47,NULL,NULL);
INSERT INTO `samples` VALUES (2376,9,'2018-06-27',3,'08:59:00',14,162,134,26.4,34.6,6.63,101.1,8.1,2.19,2.27,2.31,1,87.6,15.51,4.71,66.83,10.95,4.53,NULL,NULL);
INSERT INTO `samples` VALUES (2377,12,'2018-06-27',4,'09:30:00',14,162,134,26,34.6,6.55,98.2,8.11,4.67,4.77,5.66,1,85.46,14.06,6.36,112.44,9.21,4.45,NULL,NULL);
INSERT INTO `samples` VALUES (2378,19,'2018-06-29',1,'07:40:00',16,162,134,25.1,33.1,6.11,89.4,8.16,2.3,2.05,2.06,1,94.74,12.91,8.2,434.02,10.47,6.19,NULL,'Shark warning sign posted');
INSERT INTO `samples` VALUES (2379,22,'2018-06-29',2,'08:30:00',16,162,134,25.2,34.4,6.97,103,8.19,0.41,0.38,0.4,1,84.79,12.36,4.9,149.52,11.45,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (2380,23,'2018-06-29',3,'09:00:00',16,162,134,25.4,31.9,6.86,100.2,8.11,4.47,3.68,3.32,1,260.2,49.14,25.91,1952.78,196.37,3.72,NULL,NULL);
INSERT INTO `samples` VALUES (2381,24,'2018-06-29',4,'09:25:00',16,162,134,25.5,33.2,6.68,98.4,8.09,9.73,10.6,11.2,1,181.07,19.96,14.25,938.02,115.72,3.2,NULL,NULL);
INSERT INTO `samples` VALUES (2382,25,'2018-06-29',5,'09:50:00',16,162,134,25.2,33.7,6.66,97.9,8.1,11.3,12.6,9.23,1,102.54,13.7,8.32,654.19,30.9,3.54,NULL,NULL);
INSERT INTO `samples` VALUES (2383,1,'2018-06-26',1,'08:05:00',13,162,134,25.8,33.3,6.83,100.9,8.14,2.47,2.53,2.33,1,126.55,15.14,11.3,786.06,62.37,3.1,NULL,NULL);
INSERT INTO `samples` VALUES (2384,2,'2018-06-26',2,'08:31:00',13,162,134,25.7,32.8,6.6,97,8.19,1.89,1.59,1.18,1,225.27,14.97,12.34,1250.65,167.26,2.76,NULL,'1 fisherman at Pohaku with 3 rods, light sprinkles');
INSERT INTO `samples` VALUES (2385,3,'2018-06-26',3,'08:53:00',13,162,134,25.1,30.6,6.71,96.4,8.15,4.83,4.56,4.48,1,205.87,13.53,11.85,773.64,83.29,16.29,NULL,NULL);
INSERT INTO `samples` VALUES (2386,5,'2018-06-26',4,'09:38:00',13,162,134,26.4,33,6.94,103.4,8.2,1.24,1.46,1.09,1,214.03,17.51,11.41,1151.07,148.53,3.38,NULL,'canoe practice');
INSERT INTO `samples` VALUES (2387,6,'2018-06-26',5,'09:55:00',13,162,134,26,33.3,6.77,100.4,8.21,1.85,1.91,1.97,1,105.84,16.68,12.23,870.13,37.98,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (2388,13,'2018-07-19',1,'07:15:00',7,162,135,25.5,34.1,5.96,88,8.1,6.51,5.49,5.1,1,70.78,15.24,4.59,174.95,2.11,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2389,14,'2018-07-19',2,'07:33:00',7,162,135,25.9,34.2,6.51,96.9,8.12,13.6,11.6,12.4,1,92.34,14.72,6.02,440.48,4.4,2.19,NULL,NULL);
INSERT INTO `samples` VALUES (2390,16,'2018-07-19',3,'07:49:00',7,162,135,26.3,34.3,6.62,99.1,8.19,16.9,17.1,16.5,1,77.12,15.7,4.53,63.76,0.87,0.91,NULL,NULL);
INSERT INTO `samples` VALUES (2391,17,'2018-07-19',4,'08:02:00',7,162,135,26.1,34.3,6.75,100.7,8.2,8.82,8.92,8.48,1,74.93,14.03,3.77,72.02,2.36,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2392,18,'2018-07-19',5,'08:14:00',7,162,135,26.1,34.2,6.72,100.3,8.2,5.27,3.8,3.75,1,81.54,15.31,4.7,94.19,1.46,0.54,NULL,NULL);
INSERT INTO `samples` VALUES (2393,7,'2018-07-18',1,'08:15:00',6,162,135,27,33.6,6.33,95.6,8.08,5.74,6.57,5.96,1,100.98,16.97,14.89,1457.86,10.04,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (2394,8,'2018-07-18',2,'08:40:00',6,162,135,27.2,33.7,6.18,93.8,8.1,20,22.2,20.3,1,97.99,15.04,10.28,443.55,14.02,2.5,NULL,NULL);
INSERT INTO `samples` VALUES (2395,9,'2018-07-18',3,'09:00:00',6,162,135,27.4,33.9,6.05,92.3,8.13,14.1,17.8,20.3,1,123.38,16.43,7.25,323.82,13.71,4.75,NULL,NULL);
INSERT INTO `samples` VALUES (2396,12,'2018-07-18',4,'09:35:00',6,162,135,27.3,34.3,6.8,103.7,8.15,2.2,2.93,2.19,1,117.34,16.96,6.13,95.1,6.14,4.05,NULL,NULL);
INSERT INTO `samples` VALUES (2397,19,'2018-07-20',1,'07:45:00',8,162,135,25.9,33.5,5.8,86,8.17,2.02,2.91,1.73,1,96.49,14.51,7.59,350.95,4.9,5.2,NULL,'no rain in last 24 hours, stream flowing, major clearing of path to Honolua Bay');
INSERT INTO `samples` VALUES (2398,22,'2018-07-20',2,'08:45:00',8,162,135,26.4,34.3,6.67,100.2,8.25,0.93,0.9,0.93,1,76.46,11.62,4.15,80.47,4.23,1.76,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2399,23,'2018-07-20',3,'09:15:00',8,162,135,26.8,33.5,6.49,97.9,8.18,2.55,2.27,2.2,1,145.39,15.84,13.48,686.03,67.08,2.23,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2400,24,'2018-07-20',4,NULL,NULL,162,135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'road blocked by workers, tree-trimminig or road work, no access to sample site');
INSERT INTO `samples` VALUES (2401,25,'2018-07-20',5,'09:50:00',8,162,135,27.1,33.8,6.6,100.1,8.16,18.6,18.6,16.6,1,85.23,11.24,5.8,371.79,8.26,0.97,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2402,1,'2018-07-17',1,'08:15:00',5,162,135,26.2,33.5,6.7,99.9,8.08,2.13,1.67,1.4,1,106.93,15.31,8.26,526.79,26.46,3.63,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (2403,2,'2018-07-17',2,'08:35:00',5,162,135,26.2,33,6.2,92.1,8.08,1.87,2.47,2.28,1,203.26,15.61,10.05,844.11,134.97,2.22,NULL,'no idea about rain in last 24 hours, 2 people within 10 ft of sampler, presumably in the water though not stated in notes');
INSERT INTO `samples` VALUES (2404,3,'2018-07-17',3,'08:58:00',5,162,135,26.1,33.7,6.77,100.7,8.12,5.51,5.51,5.57,1,80.21,13.36,5.61,342.23,4.05,0.31,NULL,'no idea about rain in last 24 hours. brown streaks out in the ocean. on right and left side of sample area brown streaks were 2-3 ft off shore and the brown streak straight out from sample area was about 50 ft off shore. a stream flows into the ocean north of the sample site and stream water was connected to the ocean. But flow direction of stream water was not easy to determine: Trades appeared to push stream surface toward ocean and ocean waves appeared to move upstream (CM). Stream water looked clear, not like the brown streaks observed in the ocean.');
INSERT INTO `samples` VALUES (2405,5,'2018-07-17',4,'09:20:00',5,162,135,26.9,33.1,6.75,101.6,8.23,2.2,2.35,2.22,1,163.68,14.38,8.45,786.07,95.71,1.38,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (2406,6,'2018-07-17',5,'09:32:00',5,162,135,27,33.7,6.56,99.3,8.17,1.73,1.7,1.62,1,86.09,13.99,7.12,453.29,14.45,0.31,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (2407,13,'2018-08-09',1,'07:20:00',28,162,136,26.9,34.5,5.39,82.4,8.05,1.18,1.16,1.16,1,80.28,10.13,4.68,155.97,3.85,1.45,NULL,'Another encounter with Peter Martin asking about water quality data in the Wahikuli region.  Esp nutrient data.');
INSERT INTO `samples` VALUES (2408,14,'2018-08-09',2,'07:35:00',28,162,136,26.9,34.3,6.09,93,8.06,3.79,4.55,3.85,1,71.36,7.07,5.89,383.04,6.48,1.96,NULL,NULL);
INSERT INTO `samples` VALUES (2409,16,'2018-08-09',3,'07:50:00',28,162,136,26.5,34.4,6.55,99.3,8.14,13.9,13.3,13.7,1,77.75,8.11,3.93,126.62,2.34,1.21,NULL,'Surfer asked questions about water quality');
INSERT INTO `samples` VALUES (2410,17,'2018-08-09',4,'08:05:00',28,162,136,26.3,34.6,6.61,100.1,8.14,10,9.14,10.3,1,99.26,8.39,3.6,69.41,2.39,6.53,NULL,NULL);
INSERT INTO `samples` VALUES (2411,18,'2018-08-09',5,'08:17:00',28,162,136,26.5,34.6,6.63,100.6,8.16,7.31,6.34,7.2,1,76.25,7.6,3.84,67.82,2.59,1.05,NULL,NULL);
INSERT INTO `samples` VALUES (2412,7,'2018-08-08',1,'08:30:00',27,162,136,26.5,34,6.33,95.8,8.09,1.76,2.11,2.3,1,111.19,11.1,8.18,680.13,5.62,3.46,NULL,NULL);
INSERT INTO `samples` VALUES (2413,8,'2018-08-08',2,'08:55:00',27,162,136,26.6,34.3,6.41,97.1,8.1,2.34,2.34,2.12,1,90.74,8.82,5.87,168.97,4.74,1,NULL,NULL);
INSERT INTO `samples` VALUES (2414,9,'2018-08-08',3,'09:19:00',27,162,136,26.9,34.6,6.56,100.2,8.12,2.15,2.31,2.2,1,92.73,7.8,3.7,101.29,6.16,1.2,NULL,NULL);
INSERT INTO `samples` VALUES (2415,12,'2018-08-08',4,'09:55:00',27,162,136,27.2,34.6,6.92,106.3,8.14,2.14,2.04,2.15,1,105.93,7.37,4.49,103.63,7.54,2.87,NULL,NULL);
INSERT INTO `samples` VALUES (2416,19,'2018-08-10',1,'07:59:00',28,162,136,24.9,19.2,6.97,94,8.2,18.5,18.1,19.5,1,110.56,13.14,10.08,1034.51,19.11,5.87,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south');
INSERT INTO `samples` VALUES (2417,22,'2018-08-10',2,'08:40:00',28,162,136,26.4,34.2,6.79,102.2,8.2,0.97,0.81,0.77,1,82.35,8.02,4.47,183.03,8.48,1.34,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south');
INSERT INTO `samples` VALUES (2418,23,'2018-08-10',3,'09:42:00',28,162,136,26.6,32.2,7.07,105.8,8.16,10.6,10.5,9.94,1,238.53,24.77,20.33,1542.13,152.98,5.16,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south');
INSERT INTO `samples` VALUES (2419,24,'2018-08-10',4,'10:13:00',28,162,136,27.1,32.8,6.65,100.5,8.11,16,17.1,18.1,1,196.9,19.35,16.03,944.77,133.76,8.03,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south, 2 fishermen on the beach reported wastewater smell at north end of beach');
INSERT INTO `samples` VALUES (2420,25,'2018-08-10',5,'10:38:00',28,162,136,27.4,33.9,7.09,108.4,8.2,20.3,19.1,17.5,1,115.52,10.98,7.63,403.89,26.5,3.59,NULL,'heavy rains the last 2 days from Hurricane Hector passing ~150 miles south, large particles present in water');
INSERT INTO `samples` VALUES (2421,1,'2018-08-07',1,'08:08:00',25,162,136,25.5,33.7,6.76,100.4,8.12,2.13,2,2.24,1,135.54,14.4,10.24,715.25,41.68,9.68,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (2422,2,'2018-08-07',2,'08:32:00',25,162,136,26.2,33.9,6.61,98.9,8.18,5.07,5.1,6.03,1,132.65,13.45,9.82,629.83,63.61,2.2,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (2423,3,'2018-08-07',3,'08:53:00',25,162,136,25.6,34.3,6.57,97.7,8.14,8.02,7.68,8.07,1,86.54,9.18,4.6,161.88,3.33,2.1,NULL,'no idea about rain in last 24 hours');
INSERT INTO `samples` VALUES (2424,5,'2018-08-07',4,'09:15:00',25,162,136,26.9,33.7,6.71,101.7,8.19,11.4,11.1,10.8,1,165.01,12.06,8.69,714.54,78.09,4.85,NULL,'no idea about rain in last 24 hours, Kukui nuts from the stream causing bad smell/water conditions. strong shore break, low tide');
INSERT INTO `samples` VALUES (2425,6,'2018-08-07',5,'09:31:00',25,162,136,27.1,33.9,6.6,100.4,8.21,2.34,2.87,2.41,1,94.34,15.3,10.79,615.83,15.36,1.79,NULL,'no idea about rain in last 24 hours. no waves, strong shore break');
INSERT INTO `samples` VALUES (2426,13,'2018-08-30',1,'07:15:00',20,162,137,25.8,34.3,6.2,92.3,8.13,11.4,12.7,11.2,1,80.61,8.01,6.36,144.29,2.7,1.45,NULL,'Lahaina fire 5 days previous of date. Blank pre-sample a little high.');
INSERT INTO `samples` VALUES (2427,14,'2018-08-30',2,'07:28:00',20,162,137,26,34.3,6.21,92.8,8.11,3.62,3.31,3.42,1,76.99,5.23,4.8,265.78,4.01,1.48,NULL,NULL);
INSERT INTO `samples` VALUES (2428,16,'2018-08-30',3,'07:50:00',20,162,137,24.8,34.5,6.77,99.2,8.16,18.6,18.1,20,1,82.77,37.09,30.06,104.66,1.48,6.9,NULL,NULL);
INSERT INTO `samples` VALUES (2429,17,'2018-08-30',4,'08:03:00',20,162,137,25,34.3,6.77,99.6,8.17,5.79,5.3,5.2,1,96.84,8.35,5.86,146.36,0.82,30.18,NULL,'Slight drizzle');
INSERT INTO `samples` VALUES (2430,18,'2018-08-30',5,'08:15:00',20,162,137,25.6,34.1,6.47,95.8,8.15,14,13.7,12.6,1,73.23,6.05,4.55,196.89,1.85,1.14,NULL,'DO display on meter intermitant');
INSERT INTO `samples` VALUES (2431,7,'2018-08-29',1,'08:10:00',19,162,137,27.5,32.5,6.1,92.3,8.09,4.06,3.9,4.38,1,74.73,12.82,11.85,882.22,4.15,3.29,NULL,'Seal nearby');
INSERT INTO `samples` VALUES (2432,8,'2018-08-29',2,'08:43:00',19,162,137,27.6,33.5,5.87,89.6,8.09,9.5,9.85,11.1,1,85.35,12.17,10.86,473.31,7.97,6.75,NULL,'First turbidity reading was low and group took 4 more readings.');
INSERT INTO `samples` VALUES (2433,9,'2018-08-29',3,'09:10:00',19,162,137,27.8,33.6,6.05,92.9,8.11,4.03,3.81,3.9,1,112.18,10.05,8.56,438.7,24.6,8.49,NULL,NULL);
INSERT INTO `samples` VALUES (2434,12,'2018-08-29',4,'09:45:00',19,162,137,27.9,34,6.65,102.3,8.16,3.49,3.76,3.31,1,98.52,10.4,7.29,316.02,6.32,10.3,NULL,NULL);
INSERT INTO `samples` VALUES (2435,19,'2018-08-31',1,'07:50:00',21,162,137,25.3,33.5,6.3,92.9,8.15,2.5,2.58,2.61,1,85.61,10.07,7.01,369.58,2.4,3.74,NULL,'it rained in the last 24 hours, stream was flowing but no indication how much');
INSERT INTO `samples` VALUES (2436,22,'2018-08-31',2,'08:25:00',21,162,137,25.9,34.3,6.72,100.5,8.2,0.78,0.71,0.73,1,118.38,10.64,5.11,98.7,5.45,3.35,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (2437,23,'2018-08-31',3,'08:50:00',21,162,137,26.6,32.5,6.47,96.9,8.13,1.28,1.53,1.43,1,227.2,25.52,22.57,1350.3,140.55,4.24,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (2438,24,'2018-08-31',4,'09:35:00',21,162,137,26.7,33.9,6.26,94.6,8.14,6.85,7.05,7.24,1,90.1,9.31,7.71,331.89,22.9,2.27,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (2439,25,'2018-08-31',5,'09:50:00',21,162,137,26.8,33.8,6.21,94.1,8.13,13.5,15.2,14.4,1,107.29,10.24,8.6,344.02,21.66,5.26,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (2440,1,'2018-08-28',1,'08:12:00',18,162,137,26.4,33.2,6.65,99.5,8.13,1.62,1.46,1.69,1,134.8,20.94,15.04,747.22,49.85,5.3,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (2441,2,'2018-08-28',2,'08:35:00',18,162,137,26.8,31.8,6.49,96.9,8.19,2.23,3.18,2.58,1,192.82,15.41,13.22,925.35,120.14,5.64,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (2442,3,'2018-08-28',3,'08:55:00',18,162,137,26.7,29.7,6.64,97.9,8.15,13.6,15.6,16.6,1,128.06,13.2,9.69,731.9,22.82,11,NULL,'it rained in the last 24 hours, brown water 100 yards');
INSERT INTO `samples` VALUES (2443,5,'2018-08-28',4,'09:14:00',18,162,137,27.8,32.6,6.5,99.3,8.17,63.4,63.9,65.1,1,258.23,18.01,15.49,1178.62,170.42,12.23,NULL,'it rained in the last 24 hours, brown red water, lots of debris/kukui nuts');
INSERT INTO `samples` VALUES (2444,6,'2018-08-28',5,'09:32:00',18,162,137,27.5,32.6,6.62,100.6,8.24,1.32,1.57,1.46,1,116.79,13.69,11.16,1025.63,40.81,2.18,NULL,'it rained in the last 24 hours');
INSERT INTO `samples` VALUES (2445,13,'2018-09-20',1,'07:20:00',11,162,138,27,34.3,5.28,80.6,8.03,1.44,1.4,1.73,1,59.84,9.19,5.31,195.94,4.43,2.46,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2446,14,'2018-09-20',2,'07:33:00',11,162,138,27.3,34.4,6.02,92.4,8.11,2.15,2.2,2.15,1,59.9,8.54,5.22,293.4,7.31,0.29,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2447,16,'2018-09-20',3,'07:55:00',11,162,138,27.3,34.6,6.39,98.1,8.12,15.2,15.4,15.5,1,57.73,7.74,4.63,93.2,4.49,0.31,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2448,17,'2018-09-20',4,'08:10:00',11,162,138,27.6,34.6,6.57,101.5,8.14,6.9,6.49,6.55,1,61.13,7.83,3.45,70.6,4.08,0.62,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2449,18,'2018-09-20',5,'08:21:00',11,162,138,27.6,34.4,6.45,99.4,8.14,4.78,5.37,4.83,1,52.84,8.3,4.87,133.11,3.45,1.25,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2450,7,'2018-09-19',1,'08:11:00',10,162,138,26.9,33.7,6.02,91.2,8.05,5.73,5.08,5.12,1,70.29,14.04,10.05,535.58,4.29,3.52,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2451,8,'2018-09-19',2,'08:37:00',10,162,138,27.2,34.4,6.1,93.4,8.06,3.14,2.98,2.8,1,49.52,11.07,7.24,182.73,4.8,4.23,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2452,9,'2018-09-19',3,'08:55:00',10,162,138,27.3,31.4,6.05,92.6,8.07,3.7,3.41,3.32,1,109.3,13.65,9.35,218.8,10.28,5,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2453,12,'2018-09-19',4,'09:26:00',10,162,138,27.4,34.5,6.47,99.3,8.1,1.33,1.53,1.71,1,80.67,9.9,5.45,109.86,7.29,2.07,NULL,'no rain in last 24 hours');
INSERT INTO `samples` VALUES (2454,19,'2018-09-21',1,'07:53:00',12,162,138,26.5,33.8,5.73,86.4,8.12,20.6,19.9,19.9,1,90.03,11.97,7.25,316.16,8.44,15.21,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (2455,22,'2018-09-21',2,'08:41:00',12,162,138,26.9,34.5,6.58,100.5,8.2,1.05,1.06,1.14,1,62.65,9.66,4.52,112.4,6.27,0.88,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (2456,23,'2018-09-21',3,'09:14:00',12,162,138,27.1,32.8,6.44,97.6,8.09,5.71,3.09,2.94,1,226.69,25.88,22.96,1454.57,175.73,3.95,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (2457,24,'2018-09-21',4,'09:43:00',12,162,138,27.4,33.9,5.88,90.1,8.11,29.1,30.4,29.7,1,162.27,18.58,15.29,557.22,108.8,14.7,NULL,'not sure about rain in the last 24 hours');
INSERT INTO `samples` VALUES (2458,25,'2018-09-21',5,'10:05:00',12,162,138,27.7,33.6,6.34,97.4,8.16,82.1,72.2,76.1,1,121.08,14.19,10.25,679.78,71.41,1.55,NULL,'not sure about rain in the last 24 hours, did not check stream flow, brown water way out into ocean, KV manager anecdote is that the residual brown water is from the tropical storm');
INSERT INTO `samples` VALUES (2459,1,'2018-09-18',1,'08:11:00',9,162,138,25.7,33.4,6.3,93.1,8.09,10.1,11.1,10.8,1,159.5,23.92,19.37,875.42,87.04,23.45,NULL,'not sure if it rained in the last 24 hours, light sprinkles while there');
INSERT INTO `samples` VALUES (2460,2,'2018-09-18',2,'08:39:00',9,162,138,26.5,32.6,6.41,95.8,8.19,5.02,4.91,4.43,1,253.89,19.69,17.55,1388.11,220.66,2.47,NULL,'not sure if it rained in the last 24 hours, sunny and no rain while there');
INSERT INTO `samples` VALUES (2461,3,'2018-09-18',3,'08:57:00',9,162,138,25.8,34.3,6.36,94.7,8.14,7.38,7.58,7.21,1,81.53,10.1,6.6,154.04,10.88,3.23,NULL,'not sure if it rained in the last 24 hours, sunny and no rain while there, water in channel but fairly clear, not much flow');
INSERT INTO `samples` VALUES (2462,5,'2018-09-18',4,'09:18:00',9,162,138,27.6,34.3,6.38,97.9,8.19,7.81,7.85,7.59,1,101.42,13.37,8.36,324,34.04,4.11,NULL,'not sure if it rained in the last 24 hours, sunny and no rain');
INSERT INTO `samples` VALUES (2463,6,'2018-09-18',5,'09:34:00',9,162,138,27.7,34,6.46,99.3,8.22,0.74,0.75,0.76,1,91.15,14.9,8.06,421.96,16.45,3.51,NULL,'not sure if it rained in the last 24 hours, sunny and no rain');
INSERT INTO `samples` VALUES (2464,13,'2018-10-11',1,'07:14:00',NULL,162,139,27,34.6,6.28,95.7,8.11,17,18.1,18.1,1,82.59,9.5,6.41,141.48,3.51,0.78,NULL,'Pre-sampling tubidity blank > 0.1');
INSERT INTO `samples` VALUES (2465,14,'2018-10-11',2,'07:34:00',NULL,162,139,27.7,34.6,6.41,98.7,8.12,24.2,23.8,23.3,1,76.99,8.96,6.86,250.43,1.93,3.69,NULL,NULL);
INSERT INTO `samples` VALUES (2466,16,'2018-10-11',3,'07:50:00',NULL,162,139,27.5,34.6,6.49,99.8,8.17,6.54,6.82,6.41,1,80.95,9.35,6.02,72.31,4.62,2.96,NULL,'The swimmers were all serfers');
INSERT INTO `samples` VALUES (2467,17,'2018-10-11',4,'08:00:00',NULL,162,139,27.4,34.5,6.61,101.4,8.16,6.79,7.11,6.86,1,80.57,8.08,6.21,77.01,3.98,2.23,NULL,NULL);
INSERT INTO `samples` VALUES (2468,18,'2018-10-11',5,'08:12:00',NULL,162,139,27.5,34.5,6.57,101,8.14,5.43,6.09,5.88,1,80.58,8.3,6.95,76.66,4.54,3.66,NULL,NULL);
INSERT INTO `samples` VALUES (2469,7,'2018-10-10',1,'08:18:00',NULL,162,139,27.1,32.9,6.48,97.7,8.11,14.9,15.5,15,1,85.11,15.6,12.33,598.78,5.17,2.53,NULL,'Seal nearby; Stream stonger than usual');
INSERT INTO `samples` VALUES (2470,8,'2018-10-10',2,'08:47:00',NULL,162,139,27.5,33.8,6.11,93.3,8.11,16.2,18.6,19.5,1,107.64,16,11.88,470.28,6.72,10.11,NULL,NULL);
INSERT INTO `samples` VALUES (2471,9,'2018-10-10',3,'09:09:00',NULL,162,139,27.5,34,6.04,92.4,8.1,5.82,7.49,7.19,1,99.53,12.75,9.55,311.94,8.1,6.52,NULL,NULL);
INSERT INTO `samples` VALUES (2472,12,'2018-10-10',4,'09:44:00',NULL,162,139,28.2,34.5,6.76,104.8,8.19,3.94,4.29,4.29,1,84.1,10.39,6.53,123.83,3.36,3.39,NULL,'Water not clear');
INSERT INTO `samples` VALUES (2473,19,'2018-10-12',1,'07:50:00',NULL,162,139,26.5,32.1,6.44,96,8.21,3.58,3.18,3.5,1,88.4,12.94,7.65,421.56,3.76,4.17,NULL,'stream was flowing');
INSERT INTO `samples` VALUES (2474,22,'2018-10-12',2,'08:30:00',NULL,162,139,27.2,34.4,6.63,101.6,8.21,0.94,0.78,0.83,1,76.75,10.87,6.6,89.63,4.13,1.9,NULL,'no stream flow');
INSERT INTO `samples` VALUES (2475,23,'2018-10-12',3,'09:00:00',NULL,162,139,27.8,33.7,6.6,101.6,8.14,2.01,2.47,2.35,1,127.83,19.9,15.69,676.34,54.48,4.11,NULL,'no stream flow');
INSERT INTO `samples` VALUES (2476,24,'2018-10-12',4,'09:30:00',NULL,162,139,27.3,33.8,6.47,98.8,8.14,17.3,17.6,18.2,1,113.32,15.6,13.06,430.66,45.25,3.48,NULL,'no stream flow');
INSERT INTO `samples` VALUES (2477,25,'2018-10-12',5,'09:55:00',NULL,162,139,27.8,33.6,6.46,99.3,8.15,41.5,48.6,50.9,1,125.65,15.84,12.35,676.68,52.49,4.74,NULL,'no stream flow, brown water');
INSERT INTO `samples` VALUES (2478,1,'2018-10-09',1,'08:20:00',NULL,162,139,26.9,33.5,6.65,100.5,8.14,11,12,12.5,1,150.44,19.27,15.55,753.79,53.24,5.13,NULL,'2 inches stagnant water in nearby stream bed, no stream flow');
INSERT INTO `samples` VALUES (2479,2,'2018-10-09',2,'08:44:00',NULL,162,139,26.7,32.5,6.49,97.3,8.17,4.07,4.13,4.3,1,203.23,19.32,16.93,1178.43,137.05,3.64,NULL,'batteries were replaced in turbidity meter, no stream flow');
INSERT INTO `samples` VALUES (2480,3,'2018-10-09',3,'09:05:00',NULL,162,139,26.9,34,6.6,99.9,8.2,2.97,3.48,3.15,1,102.06,10.29,7.68,261.83,20.74,2.78,NULL,'no stream flow into ocean, KS stream ocean water flowing into canal - greenish/brown water 1-2 feet high in canal');
INSERT INTO `samples` VALUES (2481,5,'2018-10-09',4,'09:25:00',NULL,162,139,27.9,33.6,6.59,101.2,8.21,9.39,9.45,10.2,1,170.18,14.24,10.7,762.31,97.55,3.77,NULL,NULL);
INSERT INTO `samples` VALUES (2482,6,'2018-10-09',5,'09:42:00',NULL,162,139,27.7,32.7,6.62,100.9,8.24,3.14,3.45,3.29,1,121.81,21.7,17.68,1380.83,43.14,1.78,NULL,NULL);
INSERT INTO `samples` VALUES (2483,13,'2018-11-01',1,'07:13:00',NULL,162,140,26.8,34.5,5.51,83.7,8.03,1.36,2.36,2.47,1,85.24,8.85,5.55,184.32,5.28,6.47,NULL,NULL);
INSERT INTO `samples` VALUES (2484,14,'2018-11-01',2,'07:24:00',NULL,162,140,27.5,34.4,5.8,89.1,8.08,3.76,3.72,3.49,1,84.35,6.31,6.34,407.53,8.89,2.93,NULL,NULL);
INSERT INTO `samples` VALUES (2485,16,'2018-11-01',3,'07:40:00',NULL,162,140,27.2,34.5,6.43,98.3,8.13,23.3,24.5,23.6,1,70.9,7.26,5.11,124.74,2.3,2.67,NULL,NULL);
INSERT INTO `samples` VALUES (2486,17,'2018-11-01',4,'07:54:00',NULL,162,140,27,34.4,6.6,100.5,8.11,7.67,8.44,7.29,1,80.3,5.82,3.63,124.95,4.19,1.8,NULL,NULL);
INSERT INTO `samples` VALUES (2487,18,'2018-11-01',5,'08:02:00',NULL,162,140,27.3,34.4,6.45,98.6,8.13,8.06,8.45,8.45,1,75.29,8.46,5.28,207.87,3.17,6.16,NULL,NULL);
INSERT INTO `samples` VALUES (2488,7,'2018-10-31',1,'08:11:00',NULL,162,140,26.8,32.6,6.39,96,8.1,4.42,4.82,3.74,1,84.92,13.43,12.12,816.64,4.68,6.12,NULL,'Drainage by PLH was more than 3/4 filled with large sticks and derbies.  (see photos - James has photos)');
INSERT INTO `samples` VALUES (2489,8,'2018-10-31',2,'08:35:00',NULL,162,140,26.7,34,6.24,94.5,8.14,6.29,5.76,6.24,1,79.91,10.21,8.63,253.78,4.07,8.27,NULL,NULL);
INSERT INTO `samples` VALUES (2490,9,'2018-10-31',3,'08:52:00',NULL,162,140,26.7,33.1,6.2,93.2,8.13,39.1,37.7,39.7,1,98.13,15.06,12.01,574.89,18.1,9.8,NULL,NULL);
INSERT INTO `samples` VALUES (2491,12,'2018-10-31',4,'09:23:00',NULL,162,140,27,34.3,6.36,96.9,8.11,3.3,2.74,3.06,1,78.49,9.15,5.47,116.04,4,1.85,NULL,NULL);
INSERT INTO `samples` VALUES (2492,19,'2018-11-02',1,'07:50:00',NULL,162,140,26.1,33.5,5.79,86.1,8.12,32.6,32.1,33.8,1,97.19,16.5,10.9,492.4,6.6,16.94,NULL,'brown water, debris, stream was flowing');
INSERT INTO `samples` VALUES (2493,22,'2018-11-02',2,'08:30:00',NULL,162,140,26.5,34.4,6.71,101.3,8.21,0.55,0.49,0.53,1,73.86,10.28,4.2,137.81,6.11,1.12,NULL,'no stream flow');
INSERT INTO `samples` VALUES (2494,23,'2018-11-02',3,'09:00:00',NULL,162,140,27.5,34,6.16,94.1,8.16,0.83,0.9,0.92,1,142.83,19.18,12.09,594.96,68.08,4.56,NULL,'super calm, no waves');
INSERT INTO `samples` VALUES (2495,24,'2018-11-02',4,'09:25:00',NULL,162,140,27,33.7,6.47,97.8,8.18,14.6,14.7,14.1,1,121.39,14.87,10.63,463.12,59.51,1.55,NULL,'no stream flow, after filtering first sample, took second sample to filter as first sample was spilled');
INSERT INTO `samples` VALUES (2496,25,'2018-11-02',5,'09:50:00',NULL,162,140,27.2,33.9,6.36,96.9,8.15,25.2,21.9,24.8,1,95.28,14.86,9.62,375.31,27.14,6.27,NULL,NULL);
INSERT INTO `samples` VALUES (2497,1,'2018-10-30',1,'08:13:00',NULL,162,140,27.4,34.2,6.38,97.6,8.13,1.45,1.67,1.46,1,118.82,10.43,7.84,260.66,12.83,5.28,NULL,NULL);
INSERT INTO `samples` VALUES (2498,2,'2018-10-30',2,'08:38:00',NULL,162,140,27.6,34.2,6.37,97.8,8.18,7.4,7.68,7.65,1,110.81,10.77,8.88,366.54,28.37,7.46,NULL,'3 canoes in water about 100 feet out');
INSERT INTO `samples` VALUES (2499,3,'2018-10-30',3,'08:59:00',NULL,162,140,27.4,34.4,6.41,98.3,8.14,3.83,3.83,4.02,1,85.12,7.27,5.57,123.67,7.25,2.68,NULL,'light sprinkles of rain while sampling');
INSERT INTO `samples` VALUES (2500,5,'2018-10-30',4,'09:20:00',NULL,162,140,27.6,34.6,6.56,100.8,8.21,2.71,2.51,2.74,1,90.17,8.06,5.87,206.95,10.39,6.69,NULL,NULL);
INSERT INTO `samples` VALUES (2501,6,'2018-10-30',5,'09:36:00',NULL,162,140,27.4,34.4,6.58,100.7,8.23,3.76,3.81,3.52,1,82.35,15.55,8.56,224.39,4.54,1.8,NULL,'strong steady winds (14-20 knots), 3-5 foot waves, and a high tide');
INSERT INTO `samples` VALUES (2502,13,'2018-11-29',1,'07:15:00',NULL,162,141,24.4,34.7,5.42,78.8,8.07,1.6,1.93,2.02,1,112.15,7.88,3.77,154.23,6.74,3.12,NULL,NULL);
INSERT INTO `samples` VALUES (2503,14,'2018-11-29',2,'07:32:00',NULL,162,141,24.9,34.9,6.47,95,8.15,1.22,1.03,1.1,1,89.33,3.31,2.68,242.24,5.09,4.12,NULL,NULL);
INSERT INTO `samples` VALUES (2504,16,'2018-11-29',3,'07:48:00',NULL,162,141,24.9,34.8,6.28,92.2,8.17,7.4,7.65,7.46,1,88.82,6.09,2.38,112.54,2.02,3.3,NULL,NULL);
INSERT INTO `samples` VALUES (2505,17,'2018-11-29',4,'08:00:00',NULL,162,141,25.3,35,6.45,95.4,8.18,3.85,3.88,3.64,1,99.18,6.41,2.94,59.09,2.75,1.48,NULL,NULL);
INSERT INTO `samples` VALUES (2506,18,'2018-11-29',5,'08:13:00',NULL,162,141,25.7,34.8,6.59,98.2,8.21,6.51,6.37,6.94,1,90.3,6.71,3.08,185.44,4.23,2.44,NULL,NULL);
INSERT INTO `samples` VALUES (2507,7,'2018-11-28',1,'08:12:00',NULL,162,141,25.6,33.8,6.24,92,8.13,5.38,5.42,5.48,1,92.43,10.14,8.2,443.05,3.41,3.31,NULL,'PFF stream flowing steadily');
INSERT INTO `samples` VALUES (2508,8,'2018-11-28',2,'08:35:00',NULL,162,141,25.3,34.5,6.49,95.6,8.14,7.16,7.32,7.72,1,84.91,13.75,9.84,339.19,4.96,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (2509,9,'2018-11-28',3,'08:55:00',NULL,162,141,25.5,34.5,5.89,87,8.11,20.8,19.5,20.1,1,117.73,12.33,10.45,393.21,10.06,6.79,NULL,NULL);
INSERT INTO `samples` VALUES (2510,12,'2018-11-28',4,'09:25:00',NULL,162,141,25,34.8,6.8,99.8,8.16,2.77,2.57,2.49,1,116.09,8.55,4.02,97.8,4.36,14.84,NULL,NULL);
INSERT INTO `samples` VALUES (2511,19,'2018-11-30',1,'07:50:00',NULL,162,141,23.8,34.2,5.96,85.6,8.15,2.45,2.19,2.34,1,104.36,9.16,4.88,365.58,4.26,13.43,NULL,NULL);
INSERT INTO `samples` VALUES (2512,22,'2018-11-30',2,'08:40:00',NULL,162,141,25.6,34.9,6.7,99.9,8.2,0.79,0.71,0.71,1,89.11,8.38,3.72,96.36,6.2,4.58,NULL,NULL);
INSERT INTO `samples` VALUES (2513,23,'2018-11-30',3,'09:05:00',NULL,162,141,26,34.6,6.37,95.4,8.17,0.84,0.88,0.9,1,149.36,9.83,7,244.5,24.97,6.56,NULL,NULL);
INSERT INTO `samples` VALUES (2514,24,'2018-11-30',4,'09:30:00',NULL,162,141,25.6,34.1,5.95,88.6,8.14,4.2,4.25,4.18,1,140.46,9.95,8.01,371.73,42.5,7.97,NULL,NULL);
INSERT INTO `samples` VALUES (2515,25,'2018-11-30',5,'09:50:00',NULL,162,141,26.2,34.3,6.47,96.8,8.16,10.4,9.51,10.3,1,107.22,9.08,6.02,317.69,15.74,5.3,NULL,NULL);
INSERT INTO `samples` VALUES (2516,1,'2018-11-27',1,'08:16:00',NULL,162,141,25.8,35,6.76,100.6,8.2,1.14,1.1,0.96,1,92.95,7.34,4.01,77.03,4.77,3.3,NULL,'RNS - strong waves breaking at shore, high tides, clear, sunny, light winds, low-lying clouds - used new BD syringes and usual disposable 0.2 micron filters');
INSERT INTO `samples` VALUES (2517,2,'2018-11-27',2,'08:43:00',NULL,162,141,25.2,34.4,6.79,99.8,8.17,47.5,48.3,48.2,1,128.47,12.83,11.6,480.94,50.74,2.85,NULL,'RPO - high surf almost to highway, brown water close to shore. clear, no wind, clouds over Molokini - used new BD syringes and usual disposable 0.2 micron filters');
INSERT INTO `samples` VALUES (2518,3,'2018-11-27',3,'09:03:00',NULL,162,141,26.2,34.9,6.7,100.3,8.23,2.72,3.04,3.09,1,88.91,7.6,3.94,103.02,5.82,1.93,NULL,'RKS - a little brownish water - used old Medint syringes and usual disposable 0.2 micron filters');
INSERT INTO `samples` VALUES (2519,5,'2018-11-27',4,'09:27:00',NULL,162,141,26.4,34.9,6.64,99.8,8.22,4.88,4.76,4.81,1,195.05,13.69,10.53,154.85,10.05,4.79,NULL,'RCB - used old Medint syringes and usual disposable 0.2 micron filters');
INSERT INTO `samples` VALUES (2520,6,'2018-11-27',5,'09:44:00',NULL,162,141,26.3,34.9,6.71,100.7,8.24,2.32,2.22,2.43,1,93.13,10.33,7.25,287.22,4.96,2.21,NULL,'RWA - water flat, no wind - used old Medint syringes and usual disposable 0.2 micron filters');
INSERT INTO `samples` VALUES (2521,13,'2018-12-13',1,'07:22:00',NULL,162,142,22.9,34.7,6.24,88.2,8.06,3.34,3.59,3.86,1,100.37,6.33,3.01,166.35,3.58,4.68,NULL,NULL);
INSERT INTO `samples` VALUES (2522,14,'2018-12-13',2,'07:41:00',NULL,162,142,22.8,34.7,6.37,90,8.1,1.11,1.18,1.11,1,96.64,4.52,2.04,168.01,6.04,7.1,NULL,NULL);
INSERT INTO `samples` VALUES (2523,16,'2018-12-13',3,'07:56:00',NULL,162,142,22.3,34.9,6.86,96.1,8.13,7.41,7.26,6.99,1,96.96,6.77,3.18,132.33,5.16,7.44,NULL,NULL);
INSERT INTO `samples` VALUES (2524,17,'2018-12-13',4,'08:15:00',NULL,162,142,23.3,34.8,6.84,97.4,8.17,9.63,10.5,9.96,1,90.33,7.06,3.54,166.23,5.34,6.46,NULL,NULL);
INSERT INTO `samples` VALUES (2525,18,'2018-12-13',5,'08:26:00',NULL,162,142,23.9,34.4,6.45,92.4,8.11,5.36,5.3,5.19,1,89.6,6.11,3.73,336.18,8.84,3.76,NULL,NULL);
INSERT INTO `samples` VALUES (2526,7,'2018-12-12',1,'08:15:00',NULL,162,142,25,34.7,5.64,82.7,8.1,2.32,1.77,2.25,1,91.78,8.18,4.86,355.47,3.01,5.81,NULL,NULL);
INSERT INTO `samples` VALUES (2527,8,'2018-12-12',2,'08:33:00',NULL,162,142,24.6,34.2,6,86.9,8.09,8.25,7.78,8.01,1,97.11,9.63,7.45,449.8,8.13,5.96,NULL,NULL);
INSERT INTO `samples` VALUES (2528,9,'2018-12-12',3,'08:50:00',NULL,162,142,25.3,34.3,5.82,85.5,8.06,7.99,7.65,7.93,1,91.35,11.64,7.13,288.57,10.57,10.49,NULL,NULL);
INSERT INTO `samples` VALUES (2529,12,'2018-12-12',4,'09:20:00',NULL,162,142,24.1,34.9,6.52,94.2,8.14,1.21,1.47,1.27,1,90.86,7.05,3.18,97.65,4.14,4.94,NULL,NULL);
INSERT INTO `samples` VALUES (2530,19,'2018-12-14',1,'07:50:00',NULL,162,142,23.6,33.8,6.49,92.5,8.12,62.4,68.3,72.4,1,113.86,9.56,7.37,412.34,9.94,5.75,NULL,'RHL - note: CM also went out and saw stream flow and rated here');
INSERT INTO `samples` VALUES (2531,22,'2018-12-14',2,'08:40:00',NULL,162,142,23.9,34.7,6.89,99.4,8.19,0.75,0.72,0.77,1,92.12,6.09,2.51,102.5,5.49,4.5,NULL,NULL);
INSERT INTO `samples` VALUES (2532,23,'2018-12-14',3,'09:05:00',NULL,162,142,24.3,34.2,6.88,99.5,8.16,1.46,1.33,1.25,1,126.16,11.66,10.22,437.1,35.93,6.94,NULL,NULL);
INSERT INTO `samples` VALUES (2533,24,'2018-12-14',4,'09:35:00',NULL,162,142,23.7,34.1,6.78,96.9,8.14,6.17,6.53,6.25,1,122.69,10.4,9.2,405.24,43.77,6,NULL,NULL);
INSERT INTO `samples` VALUES (2534,25,'2018-12-14',5,'09:57:00',NULL,162,142,23.6,33.9,6.99,99.6,8.15,16.9,16.6,17,1,90.06,10.08,8.92,428.57,18.38,3.65,NULL,NULL);
INSERT INTO `samples` VALUES (2535,1,'2018-12-11',1,'08:18:00',NULL,162,142,24.5,34.6,6.83,98.7,8.17,0.91,0.76,0.74,1,101.57,7.68,4.08,140.92,8.74,5.23,NULL,'RNS - steady rain, 0 visibility of Molokai, waves shore break 3-5 feet');
INSERT INTO `samples` VALUES (2536,2,'2018-12-11',2,'08:44:00',NULL,162,142,24.1,34.5,6.8,97.7,8.15,12.6,14,13.9,1,118.22,12.63,10.11,332.51,27.68,10.48,NULL,'RPO - cloudy and rainbow, no rain, waves calm/flat');
INSERT INTO `samples` VALUES (2537,3,'2018-12-11',3,'09:04:00',NULL,162,142,23.9,27.1,7.21,98.9,8.23,9.18,8.18,8.77,1,130.59,7.74,6.29,1181.57,36.65,3.91,NULL,'RKS - rainbow with sprinkles, low cloud over Lanai, no rain, waves 1-2 feet, windy, sunny, frequent swells');
INSERT INTO `samples` VALUES (2538,5,'2018-12-11',4,'09:24:00',NULL,162,142,25.5,34.5,6.49,95.5,8.2,0.59,0.54,0.6,1,141.45,9.79,5.29,436.97,51.37,6.84,NULL,NULL);
INSERT INTO `samples` VALUES (2539,6,'2018-12-11',5,'09:44:00',NULL,162,142,25.7,34,6.72,99,8.22,1.95,1.93,1.85,1,115.03,12.91,10.57,774.52,23.48,6.52,NULL,NULL);
INSERT INTO `samples` VALUES (2540,13,'2019-01-10',1,'07:18:00',NULL,162,143,23.9,34.6,6.05,87,8.04,6.16,6.47,6.47,1,79.65,7.84,5.74,154.63,4.56,4.43,NULL,NULL);
INSERT INTO `samples` VALUES (2541,14,'2019-01-10',2,'07:32:00',NULL,162,143,24.4,34.4,6.58,95.3,8.1,3.54,3.6,3.77,1,79.62,6.96,6.04,382.61,5.82,1.81,NULL,'Kayak tour group at site - 4 kayaks in the water and 5 on land about to launch');
INSERT INTO `samples` VALUES (2542,16,'2019-01-10',3,'07:50:00',NULL,162,143,24.3,34.7,6.55,94.8,8.12,13.9,14.5,14.1,1,81.66,6.65,3.52,51.12,5.87,2.77,NULL,NULL);
INSERT INTO `samples` VALUES (2543,17,'2019-01-10',4,'08:00:00',NULL,162,143,24.5,34.7,6.4,93,8.13,2.62,2.95,2.6,1,55.36,3.89,2.9,34.17,2.28,0.45,NULL,NULL);
INSERT INTO `samples` VALUES (2544,18,'2019-01-10',5,'08:13:00',NULL,162,143,24.5,34.4,6.75,97.8,8.18,4.31,3.78,4.01,1,72.87,7.01,3.24,102.82,2.4,5.01,NULL,NULL);
INSERT INTO `samples` VALUES (2545,7,'2019-01-09',1,'08:13:00',NULL,162,143,24.5,34.6,6.74,97.6,8.19,3.38,3.38,3.47,1,92.69,8,4.8,52.29,3.57,0.8,NULL,NULL);
INSERT INTO `samples` VALUES (2546,8,'2019-01-09',2,'08:35:00',NULL,162,143,24.2,34.1,6.74,97,8.16,10.6,10.6,10.6,1,83.74,9.96,7.08,366.5,7.22,2.12,NULL,NULL);
INSERT INTO `samples` VALUES (2547,9,'2019-01-09',3,'08:52:00',NULL,162,143,23.8,33.7,6.34,90.4,8.08,14.3,14.6,13.7,1,91.52,12.05,10.69,567.16,14.83,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (2548,12,'2019-01-09',4,'09:20:00',NULL,162,143,23.9,34.4,6.28,90,8.08,3.48,3.46,3.56,1,81.49,5.74,3.48,133.28,6.62,1.53,NULL,NULL);
INSERT INTO `samples` VALUES (2549,19,'2019-01-11',1,'07:45:00',NULL,162,143,22.5,33,6.7,93.2,8.11,100,101,99.7,1,102.81,14.02,11.4,531.03,6.89,2.98,NULL,'RHL - surf breaking outside');
INSERT INTO `samples` VALUES (2550,22,'2019-01-11',2,'08:35:00',NULL,162,143,24,34.8,6.93,99.9,8.18,1.46,1.58,1.57,1,73.04,6.95,3.2,38.26,7.27,1.57,NULL,'RON - big  surf');
INSERT INTO `samples` VALUES (2551,23,'2019-01-11',3,'09:05:00',NULL,162,143,24.4,34.6,6.87,99.9,8.16,3.45,3.97,3.27,1,102.83,13.52,11.63,249.46,21.59,4.86,NULL,NULL);
INSERT INTO `samples` VALUES (2552,24,'2019-01-11',4,'09:30:00',NULL,162,143,24,34.3,6.95,99.8,8.14,15,15.6,15.4,1,125.73,13.53,10.17,274.41,37.72,4.99,NULL,NULL);
INSERT INTO `samples` VALUES (2553,25,'2019-01-11',5,'09:55:00',NULL,162,143,24.6,34.6,6.93,100.9,8.21,9.57,9.95,10.01,1,73.79,6.44,4.62,119.66,8.69,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (2554,1,'2019-01-08',1,'08:07:00',NULL,162,143,23.8,34.6,6.88,98.5,8.17,1.11,0.86,0.87,1,77.3,6.71,4.86,115.34,11.45,1.85,NULL,'RNS - 1 ft waves, no wind, sunny');
INSERT INTO `samples` VALUES (2555,2,'2019-01-08',2,'08:31:00',NULL,162,143,23.8,34.3,6.81,97.3,8.16,9.3,8.57,9.03,1,92.42,9.39,7.32,330.76,27.14,2.59,NULL,'RPO - 2-3 ft waves, no wind, sunny');
INSERT INTO `samples` VALUES (2556,3,'2019-01-08',3,'08:52:00',NULL,162,143,23.6,34.4,6.92,98.8,8.15,3.88,3.26,2.9,1,73.33,6.54,3.67,111.35,5.85,1.32,NULL,NULL);
INSERT INTO `samples` VALUES (2557,5,'2019-01-08',4,'09:11:00',NULL,162,143,25,33.6,6.88,100.1,8.21,1.27,1.17,1.18,1,169.83,9.96,8.84,769.69,80.72,2.04,NULL,'RCB - 1/2 ft waves');
INSERT INTO `samples` VALUES (2558,6,'2019-01-08',5,'09:28:00',NULL,162,143,24.8,34.1,6.67,97.1,8.23,1.76,1.85,1.88,1,82.74,9.39,7.54,467.93,14.88,0.72,NULL,'RWA - 1/4 ft waves, nearly flat');
INSERT INTO `samples` VALUES (2559,13,'2019-01-31',1,'07:10:00',NULL,162,144,23,34.3,5.8,82.5,8.08,2.22,2.21,2.04,1,84.53,7.37,5.04,273.45,4.54,8.34,NULL,'Light drizzle encountered, lid for bucket used');
INSERT INTO `samples` VALUES (2560,14,'2019-01-31',2,'07:27:00',NULL,162,144,23.6,34.7,6.46,93.1,8.16,1.5,1.42,1.7,1,71.52,5.24,3.84,223.83,4.22,4.88,NULL,NULL);
INSERT INTO `samples` VALUES (2561,16,'2019-01-31',3,'07:43:00',NULL,162,144,22.9,34.5,6.72,95.6,8.18,2.02,2.23,2.2,1,66.83,4.84,4.2,82.54,5.04,2.5,NULL,NULL);
INSERT INTO `samples` VALUES (2562,17,'2019-01-31',4,'07:55:00',NULL,162,144,23.1,34.4,6.69,95.4,8.17,3.05,3.82,3.65,1,66.59,5.27,3.63,102.17,2.66,4.4,NULL,NULL);
INSERT INTO `samples` VALUES (2563,18,'2019-01-31',5,'08:10:00',NULL,162,144,23.4,34.6,6.6,94.9,8.17,1.5,1.51,1.78,1,72.63,6.55,4.31,105.85,2.78,4.26,NULL,NULL);
INSERT INTO `samples` VALUES (2564,7,'2019-01-30',1,'08:10:00',NULL,162,144,22.6,34.2,6.61,93.3,8.13,1.92,1.67,1.58,1,80.07,10.77,10.43,868.85,6.66,5.43,NULL,NULL);
INSERT INTO `samples` VALUES (2565,8,'2019-01-30',2,'08:30:00',NULL,162,144,22.4,34,6.47,90.9,8.14,4.13,4.28,3.89,1,71.85,9.13,7.4,334.35,3.46,1.91,NULL,NULL);
INSERT INTO `samples` VALUES (2566,9,'2019-01-30',3,'08:50:00',NULL,162,144,22.2,33.8,6.5,90.9,8.16,3.78,3.68,3.03,1,75.45,8.82,7.19,345.14,9.13,2.9,NULL,NULL);
INSERT INTO `samples` VALUES (2567,12,'2019-01-30',4,'09:17:00',NULL,162,144,23.6,34.5,6.32,90.9,8.12,1.6,1.66,1.72,1,75.75,7.98,4.61,140.55,3.17,3.89,NULL,NULL);
INSERT INTO `samples` VALUES (2568,19,'2019-02-01',1,'07:50:00',NULL,162,144,22.1,25.3,7.22,95.8,8.18,110,104,107,1,114.85,11.36,10.13,802.06,16.81,4.33,NULL,'RHL - Bruce needed to remove filter to remove mostly leaves during process of filtering');
INSERT INTO `samples` VALUES (2569,22,'2019-02-01',2,'08:40:00',NULL,162,144,23.5,34.8,7,100.9,8.21,1.59,1.74,1.45,1,79.3,8.29,4.91,82.46,6.53,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (2570,23,'2019-02-01',3,'09:15:00',NULL,162,144,24.1,34.2,7.16,103.7,8.21,5.05,5.55,5.25,1,122.73,12.49,11.11,602.23,38.06,4.42,NULL,NULL);
INSERT INTO `samples` VALUES (2571,24,'2019-02-01',4,'09:40:00',NULL,162,144,23.3,33.1,7.06,100.2,8.17,24.6,24.9,24.5,1,115.86,14.13,13.31,516.13,46.89,4.34,NULL,NULL);
INSERT INTO `samples` VALUES (2572,25,'2019-02-01',5,'10:05:00',NULL,162,144,23.7,33.7,7.07,101.3,8.21,18.8,19.2,20.1,1,87.98,9.88,9.06,388.36,13.89,2.36,NULL,NULL);
INSERT INTO `samples` VALUES (2573,1,'2019-01-29',1,'08:02:00',NULL,162,144,22.6,34.7,7.03,99.2,8.2,1.23,1.18,1.24,1,74.1,8.85,5.54,150.6,6.19,4.21,NULL,'RNS - 50% clouds, very windy, large swell 3-4 ft on shore');
INSERT INTO `samples` VALUES (2574,2,'2019-01-29',2,'08:26:00',NULL,162,144,21.7,33.5,7.15,98.8,8.17,10.6,12.4,11.5,1,187.14,12.29,10.85,814.55,96.2,3.65,NULL,'RPO - 90% clouds, waves 3 ft');
INSERT INTO `samples` VALUES (2575,3,'2019-01-29',3,'08:50:00',NULL,162,144,21.8,34.6,7.1,98.9,8.18,5.49,5.41,5.43,1,69.32,9.14,6.41,229.82,4.43,2.23,NULL,'RKS - >60% cloudy, frequent 3 ft swells, very windy, small area of sand next to sand bags, 0 people in water, a few sprinkles of rain');
INSERT INTO `samples` VALUES (2576,5,'2019-01-29',4,'09:13:00',NULL,162,144,23.6,34.5,6.77,97.3,8.23,1.45,1.98,1.55,1,102.17,8.56,5.47,318.86,30.6,4.41,NULL,'RCB - light rain and sun, 80% clouds, no waves, no canoes out in the water');
INSERT INTO `samples` VALUES (2577,6,'2019-01-29',5,'09:33:00',NULL,162,144,23.5,33.4,6.9,98.4,8.24,0.92,1,0.92,1,93.09,13.2,11.81,921.64,23.42,2.26,NULL,'RWA - water totally flat, rainy');
INSERT INTO `samples` VALUES (2578,13,'2019-02-21',1,'07:07:00',NULL,162,145,23.2,34.5,6.6,94.1,8.12,13.1,13.7,12.7,1,82.15,9.12,7.35,193.22,5.54,8.25,NULL,NULL);
INSERT INTO `samples` VALUES (2579,14,'2019-02-21',2,'07:22:00',NULL,162,145,24.1,34.5,6.2,89.7,8.12,1.31,1.44,1.45,1,64.94,7.55,5.48,169.78,4.08,3.18,NULL,NULL);
INSERT INTO `samples` VALUES (2580,16,'2019-02-21',3,'07:36:00',NULL,162,145,23.9,34.5,6.52,93.9,8.15,2.65,2.69,2.83,1,59.96,6.55,5.23,139.05,1.89,2.25,NULL,NULL);
INSERT INTO `samples` VALUES (2581,17,'2019-02-21',4,'07:51:00',NULL,162,145,24.1,34.5,6.79,98.3,8.15,10.4,10.7,10.9,1,63.12,7.63,5.87,92.19,3.44,2.08,NULL,NULL);
INSERT INTO `samples` VALUES (2582,18,'2019-02-21',5,'08:01:00',NULL,162,145,23.8,34.7,6.69,96.4,8.19,4.56,4.67,4.54,1,68.72,7.17,5.77,85.93,3.14,1.86,NULL,NULL);
INSERT INTO `samples` VALUES (2583,7,'2019-02-20',1,'08:07:00',NULL,162,145,23.1,33.9,6.31,89.3,8.14,6.18,5.36,4.76,1,73.53,12.37,10.35,738.52,4.82,4.49,NULL,'The san in teh water is unusually loose which allowed Rich to sink 6 or so inches at PLH and PLT.');
INSERT INTO `samples` VALUES (2584,8,'2019-02-20',2,'08:30:00',NULL,162,145,23,33.7,5.98,84.5,8.12,26.3,25,26.1,1,76.61,12.04,10.41,463.4,15.68,4.73,NULL,'HQ4D-2 - 50% battery');
INSERT INTO `samples` VALUES (2585,9,'2019-02-20',3,'08:42:00',NULL,162,145,23.4,33.2,5.93,84.1,8.11,16,14.9,16,1,94.75,10.48,9.49,487.22,22.02,8.93,NULL,NULL);
INSERT INTO `samples` VALUES (2586,12,'2019-02-20',4,'09:30:00',NULL,162,145,24.2,34.2,6.74,97.4,8.15,6.68,7.22,6.31,1,69.79,9.6,7.39,184.02,8.35,6.22,NULL,NULL);
INSERT INTO `samples` VALUES (2587,19,'2019-02-22',1,'07:55:00',NULL,162,145,22.4,33.6,6.59,92.1,8.16,14.4,13.1,12.4,1,103.8,11.38,9.04,425.57,8.06,1.91,NULL,NULL);
INSERT INTO `samples` VALUES (2588,22,'2019-02-22',2,'08:40:00',NULL,162,145,23.5,34.8,7.03,101.1,8.21,0.82,0.82,0.81,1,87.33,7.83,4.86,93.52,5.64,3.95,NULL,NULL);
INSERT INTO `samples` VALUES (2589,23,'2019-02-22',3,'09:05:00',NULL,162,145,23.9,33,6.96,99.5,8.16,0.68,0.64,0.83,1,222.19,17.78,16.68,1384.11,114.49,1.93,NULL,NULL);
INSERT INTO `samples` VALUES (2590,24,'2019-02-22',4,'09:37:00',NULL,162,145,23.8,34.2,6.57,94.5,8.16,5.42,5.22,5.52,1,118.76,13.93,11.52,453.37,35.22,1.08,NULL,NULL);
INSERT INTO `samples` VALUES (2591,25,'2019-02-22',5,'10:00:00',NULL,162,145,24.3,33.6,6.43,92.9,8.16,2.75,3.15,3.3,1,98.57,11.34,9.69,757.11,21.29,4.47,NULL,NULL);
INSERT INTO `samples` VALUES (2592,1,'2019-02-20',1,'08:18:00',NULL,162,145,23.4,34.5,7.04,101,8.19,1.85,1.97,2.19,1,78.58,10.6,7.85,244.88,12.33,4.1,NULL,'RNS -sampling on Wed not Tues (the usual day), 2/19/19 heavy rains throughout Maui (and whole state)');
INSERT INTO `samples` VALUES (2593,2,'2019-02-20',2,'08:39:00',NULL,162,145,23,32.9,7.1,100.1,8.18,10.4,10.2,10.2,1,213.77,18.62,16.9,1279.01,117.97,4.94,NULL,'RPO -sampling on Wed not Tues (the usual day), 2/19/19 heavy rains throughout Maui (and whole state)');
INSERT INTO `samples` VALUES (2594,3,'2019-02-20',3,'09:05:00',NULL,162,145,22.9,31.3,7.23,100.7,8.22,5,5.03,5.02,1,96.28,10.22,7.58,546.95,8.48,6.01,NULL,'RKS -sampling on Wed not Tues (the usual day), 2/19/19 heavy rains throughout Maui (and whole state)');
INSERT INTO `samples` VALUES (2595,5,'2019-02-20',4,'09:26:00',NULL,162,145,23.7,34.4,6.8,97.9,8.21,6.02,6.59,6.2,1,100.03,11.07,7.59,282.2,22.2,6.12,NULL,'RCB -sampling on Wed not Tues (the usual day), 2/19/19 heavy rains throughout Maui (and whole state)');
INSERT INTO `samples` VALUES (2596,6,'2019-02-20',5,'09:42:00',NULL,162,145,23.6,32.9,7.2,102.6,8.25,0.78,0.8,0.93,1,91.52,18.02,15.99,1260.41,22.24,1.81,NULL,'RWA -sampling on Wed not Tues (the usual day), 2/19/19 heavy rains throughout Maui (and whole state); sample site large boulders and rocks exposed where it\'s usually all sand');
INSERT INTO `samples` VALUES (2597,13,'2019-03-14',1,'07:10:00',NULL,162,146,22.6,33.5,6.03,85.4,8.04,9.52,10.6,10.2,1,110.56,10.61,5.53,201.18,3.03,2.73,NULL,'Salinity at OPM was above 35.0 on second test');
INSERT INTO `samples` VALUES (2598,14,'2019-03-14',2,'07:33:00',NULL,162,146,23.7,35.4,6.56,94.7,8.09,2.4,2.53,2.68,1,86.22,7.71,5.21,364.67,8.31,0.59,NULL,NULL);
INSERT INTO `samples` VALUES (2599,16,'2019-03-14',3,'07:55:00',NULL,162,146,23.1,35.5,6.77,96.7,8.13,5.77,5.9,5.96,1,76.1,8.79,4.1,154.79,3.56,0.94,NULL,'Took 4th turbidity reading at OPM since 3rd was greater over 20% difference with the first two readings.');
INSERT INTO `samples` VALUES (2600,17,'2019-03-14',4,'08:16:00',NULL,162,146,23,35.8,6.98,99.9,8.17,6.85,6.8,7.71,1,87.51,7.38,3.2,104.6,3,0.73,NULL,NULL);
INSERT INTO `samples` VALUES (2601,18,'2019-03-14',5,'08:37:00',NULL,162,146,23.4,35.4,6.97,100,8.17,2.49,2.09,2.11,1,87.18,9.13,5.38,222.33,4.14,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2602,7,'2019-03-13',1,'08:14:00',NULL,162,146,23.4,35.1,6.26,89.7,8.11,1.85,2.53,2.63,1,76.81,10.92,8.9,522.67,2.78,1.34,NULL,'18 on beach for PFF is approx number.');
INSERT INTO `samples` VALUES (2603,8,'2019-03-13',2,'08:32:00',NULL,162,146,23.5,35.1,6.02,86.5,8.1,3.58,4.72,3.78,1,92.68,9.65,6.62,285.33,9.64,1.09,NULL,'PFF stream path is about 30ft north of the normal path');
INSERT INTO `samples` VALUES (2604,9,'2019-03-13',3,'08:49:00',NULL,162,146,24.2,35,6.02,87.4,8.09,7.21,7.11,7.09,1,112.21,12.33,8.03,380.61,17.46,12.55,NULL,'PLT - 2 monk seals were frolicking approx. 40ft to the right of our sample path.  Rich had to walk about 90ft from shore and 30ft beyond the seals.');
INSERT INTO `samples` VALUES (2605,12,'2019-03-13',4,'09:19:00',NULL,162,146,23.8,35.6,6.61,95.6,8.11,7.15,6.91,6.2,1,89.54,9.27,5.71,161.9,5.89,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (2606,19,'2019-03-15',1,'07:50:00',NULL,162,146,22.8,31.1,6.71,92.9,8.15,20.9,16.1,25.5,1,89.66,11.65,7.8,724.54,4.97,1.64,NULL,'RHL - stream was flowing, plant debris in the water, turbidity settled in 1 min to 8.31, no Sonde measurement');
INSERT INTO `samples` VALUES (2607,22,'2019-03-15',2,'08:50:00',NULL,162,146,23.7,35.7,6.99,101.2,8.17,0.48,0.42,0.47,1,92.86,9.39,5.6,114.97,5.25,0.28,NULL,'Sonde measusrements taken by Mark Deakos/Jim Maxwell');
INSERT INTO `samples` VALUES (2608,23,'2019-03-15',3,'09:26:00',NULL,162,146,24.4,33.8,6.84,99.1,8.12,1.85,1.51,1.63,1,279.44,22.34,21.28,1630.95,191.93,2.23,NULL,'Sonde measusrements taken by Mark Deakos/Jim Maxwell');
INSERT INTO `samples` VALUES (2609,24,'2019-03-15',4,'09:50:00',NULL,162,146,24.1,34.8,6.8,98.7,8.16,5.57,5.57,5.45,1,128.86,12.74,9.72,544.05,51.89,1.44,NULL,'Sonde measusrements taken by Mark Deakos/Jim Maxwell');
INSERT INTO `samples` VALUES (2610,25,'2019-03-15',5,'10:15:00',NULL,162,146,24.5,34.5,7.06,102.9,8.19,8.65,8.71,8.67,1,103.67,10.74,6.54,507.88,28.98,0.28,NULL,'Sonde measusrements taken by Mark Deakos/Jim Maxwell');
INSERT INTO `samples` VALUES (2611,1,'2019-03-12',1,'08:01:00',NULL,162,146,22.8,35.9,6.94,98.8,8.16,1,0.93,1.21,1,98,11.72,6.49,336.88,18.33,1.2,NULL,'RNS - signs it had rained recently, slight sprinkles while running tests');
INSERT INTO `samples` VALUES (2612,2,'2019-03-12',2,'08:30:00',NULL,162,146,22.8,33.8,6.72,94.5,8.17,5.06,6.09,5.14,1,223.94,15.63,13.41,1041.45,152.73,0.85,NULL,'RPO - slight sprinkles of rain');
INSERT INTO `samples` VALUES (2613,3,'2019-03-12',3,'09:05:00',NULL,162,146,22.9,34.9,6.99,99.1,8.17,5.16,6.05,4.83,1,85.17,9.83,5.65,368.53,3.24,1.92,NULL,NULL);
INSERT INTO `samples` VALUES (2614,5,'2019-03-12',4,'09:20:00',NULL,162,146,24.4,34.8,6.72,97.7,8.2,2.55,2.6,2.62,1,176.71,13.32,9.94,685.55,97.56,1.6,NULL,NULL);
INSERT INTO `samples` VALUES (2615,6,'2019-03-12',5,'09:40:00',NULL,162,146,24,34.2,7.02,101.2,8.25,0.75,0.86,0.7,1,101.63,15.63,11.99,1104.11,25.99,0.31,NULL,NULL);
INSERT INTO `samples` VALUES (2616,13,'2019-04-04',1,'07:12:00',NULL,162,147,22.9,35.8,6.09,86.7,8.11,2.59,2.26,2.43,1,84.85,8.25,4.6,162.71,1.9,0.48,NULL,NULL);
INSERT INTO `samples` VALUES (2617,14,'2019-04-04',2,'07:24:00',NULL,162,147,23.9,35.8,6.25,90.6,8.12,1.72,1.7,1.78,1,72.93,7.57,3.66,207.97,1.8,1.36,NULL,NULL);
INSERT INTO `samples` VALUES (2618,16,'2019-04-04',3,'07:39:00',NULL,162,147,24.7,35.9,6.46,94.6,8.15,3.17,2.95,3.1,1,88.3,8.57,4.57,98.64,5.57,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2619,17,'2019-04-04',4,'07:50:00',NULL,162,147,24.3,36,6.8,99.3,8.15,4.36,4.17,4.12,1,75.68,7.83,2.77,73.4,1.24,0.47,NULL,NULL);
INSERT INTO `samples` VALUES (2620,18,'2019-04-04',5,'08:02:00',NULL,162,147,24,35.7,6.71,97.3,8.17,3.21,3.17,3.42,1,63.48,6.86,3.02,128.99,1,0.63,NULL,NULL);
INSERT INTO `samples` VALUES (2621,7,'2019-04-03',1,'08:09:00',NULL,162,147,24.3,35.8,6.51,94.9,8.09,1.78,1.69,1.37,1,88.33,9.43,3.54,149.06,1.19,0.67,NULL,NULL);
INSERT INTO `samples` VALUES (2622,8,'2019-04-03',2,'08:30:00',NULL,162,147,24.5,35.2,6.2,90.4,8.1,3.94,3.83,4.52,1,78.51,10.02,6.15,337.15,3.98,6.19,NULL,NULL);
INSERT INTO `samples` VALUES (2623,9,'2019-04-03',3,'08:47:00',NULL,162,147,24.9,35.7,6.34,93.3,8.13,1.54,1.26,1.37,1,74.18,9.15,4.07,122.61,3.55,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (2624,12,'2019-04-03',4,'09:24:00',NULL,162,147,25.1,35.7,6.75,99.8,8.14,5.37,6.27,4.91,1,67.3,7.74,3.8,133.48,3.29,1.31,NULL,NULL);
INSERT INTO `samples` VALUES (2625,19,'2019-04-05',1,'07:45:00',NULL,162,147,23,34,6.57,92.9,8.13,13.9,17,15.7,1,85.11,14.42,9.8,711.37,3.23,3.23,NULL,NULL);
INSERT INTO `samples` VALUES (2626,22,'2019-04-05',2,'08:30:00',NULL,162,147,24.4,35.9,6.86,100.5,8.22,0.25,0.23,0.23,1,90.36,10.42,4.1,72.07,3.34,0.43,NULL,NULL);
INSERT INTO `samples` VALUES (2627,23,'2019-04-05',3,'09:00:00',NULL,162,147,24.4,32.9,6.68,96.2,8.11,0.93,1.08,1.01,1,281.84,24.37,20.39,1558.83,187.65,3.38,NULL,NULL);
INSERT INTO `samples` VALUES (2628,24,'2019-04-05',4,'09:30:00',NULL,162,147,24.2,34.7,6.69,97.1,8.15,4.26,4.41,4.14,1,108.31,11.63,8.91,1003.74,33.68,0.43,NULL,NULL);
INSERT INTO `samples` VALUES (2629,25,'2019-04-05',5,'09:50:00',NULL,162,147,25,34.2,7.14,104.5,8.2,3.28,3.65,4.41,1,147.25,13.46,11.74,774.29,77.89,1.8,NULL,NULL);
INSERT INTO `samples` VALUES (2630,1,'2019-04-02',1,'08:05:00',NULL,162,147,24.5,34.9,7,101.5,8.15,0.98,0.85,1,1,110.07,12.94,8.98,723.99,35.44,1.67,NULL,'camera/videos (AKAKU) and Ann Rillero tagging along');
INSERT INTO `samples` VALUES (2631,2,'2019-04-02',2,'08:51:00',NULL,162,147,24.3,32.5,7.24,103.2,8.21,3.59,3.81,4.1,1,401.68,21.93,18.46,2106.23,356.87,2.58,NULL,'camera/videos (AKAKU) and Ann Rillero tagging along');
INSERT INTO `samples` VALUES (2632,3,'2019-04-02',3,'09:09:00',NULL,162,147,24.4,35.3,6.82,99.2,8.19,2.95,2.92,3.08,1,102.69,9.89,5.72,315.94,4.77,4.48,NULL,NULL);
INSERT INTO `samples` VALUES (2633,5,'2019-04-02',4,'09:37:00',NULL,162,147,25,35.1,6.73,98.7,8.22,2.37,2.24,2.37,1,149.7,13.69,7.83,557.13,72.8,2.09,NULL,'camera/videos (AKAKU) and Ann Rillero tagging along, water a little brown where samples were taken and out about 10 feet, mostly sand');
INSERT INTO `samples` VALUES (2634,6,'2019-04-02',5,'10:07:00',NULL,162,147,24.8,33.1,6.91,100,8.23,1.45,1.39,1.57,1,126.82,19.13,16.43,1665.84,53.54,1.46,NULL,NULL);
INSERT INTO `samples` VALUES (2635,13,'2019-04-25',1,'07:10:00',NULL,162,148,23.7,35.6,5.57,80.4,8.05,1.62,1.68,1.74,1,109.2,9.61,5.16,188.82,2.21,4.43,NULL,'OCO - Did 2nd reading of salinity - value was the same');
INSERT INTO `samples` VALUES (2636,14,'2019-04-25',2,'07:30:00',NULL,162,148,24.4,35.7,6.3,92.2,8.08,3.76,3.88,4.04,1,101.44,7.8,4.11,336.45,5.89,2.42,NULL,'OUB - Did 2nd reading of salinity - value was 35.9');
INSERT INTO `samples` VALUES (2637,16,'2019-04-25',3,'07:45:00',NULL,162,148,24.5,36,6.7,98.3,8.15,23.7,24.8,25.5,1,101.98,8.74,4.19,96.9,3.29,1.9,NULL,'Had trouble getting D.O probe reading to pop up a few times but eventually it worked');
INSERT INTO `samples` VALUES (2638,17,'2019-04-25',4,'08:05:00',NULL,162,148,24.3,36,6.62,96.8,8.16,6.27,5.88,6.41,1,86.38,6.97,2.09,83.9,0.83,0.38,NULL,NULL);
INSERT INTO `samples` VALUES (2639,18,'2019-04-25',5,'08:15:00',NULL,162,148,24.5,35.6,6.83,100.1,8.17,3.18,3.1,3.83,1,86.43,8.55,4.59,190.44,0.73,0.58,NULL,NULL);
INSERT INTO `samples` VALUES (2640,7,'2019-04-24',1,'08:20:00',NULL,162,148,24.9,35.3,6.39,93.9,8.13,2.8,2.7,3.3,1,128.22,11.4,7.07,262.6,3.88,2.76,NULL,'PFF - Stream flowing straight down');
INSERT INTO `samples` VALUES (2641,8,'2019-04-24',2,'08:37:00',NULL,162,148,25.1,35.8,6.46,95.6,8.11,1.68,1.24,1.41,1,88.06,10.87,5.55,189.92,3.29,2.9,NULL,NULL);
INSERT INTO `samples` VALUES (2642,9,'2019-04-24',3,'08:55:00',NULL,162,148,25.6,34.8,5.94,88.1,8.11,4.64,4.52,4.45,1,97.34,9.82,5.97,278.18,16.5,3.83,NULL,NULL);
INSERT INTO `samples` VALUES (2643,12,'2019-04-24',4,'09:29:00',NULL,162,148,26.2,35.9,6.86,103.4,8.18,3.18,3.38,3.34,1,94.98,9.69,5.83,114.26,3.24,3.36,NULL,NULL);
INSERT INTO `samples` VALUES (2644,19,'2019-04-26',1,'08:00:00',NULL,162,148,23.9,31.1,6.34,89.6,8.14,2.69,2.85,3.01,1,141.06,17.08,10.55,906.3,13.98,13.88,NULL,'RHL - Heavy flowing stream');
INSERT INTO `samples` VALUES (2645,22,'2019-04-26',2,'08:35:00',NULL,162,148,25,35.9,6.81,101,8.19,0.71,0.62,0.67,1,102.25,10.17,4.26,100.56,4.61,1.7,NULL,'RHL - Large boat 400\' out');
INSERT INTO `samples` VALUES (2646,23,'2019-04-26',3,'09:10:00',NULL,162,148,25.9,34.2,7.04,104.9,8.19,1.53,1.64,1.39,1,236.67,27.1,23.76,1625.82,149.21,3.45,NULL,'RKO - No stream flow');
INSERT INTO `samples` VALUES (2647,24,'2019-04-26',4,'09:31:00',NULL,162,148,25,34.7,6.66,98,8.14,8.46,8.96,8.68,1,157.71,14.56,11.32,711.84,67.79,2.21,NULL,NULL);
INSERT INTO `samples` VALUES (2648,25,'2019-04-26',5,'09:53:00',NULL,162,148,25.4,34.9,7.13,105.7,8.21,9.45,8.83,8.31,1,124.17,10.24,5.76,447.17,20.54,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (2649,1,'2019-04-23',1,'08:12:00',NULL,162,148,24.2,35,6.89,99.9,8.18,0.79,1,0.83,1,140.61,14.7,10.5,692.46,48.73,4.25,NULL,'RNS - Partial overcast, small waves, light breaze');
INSERT INTO `samples` VALUES (2650,2,'2019-04-23',2,'08:32:00',NULL,162,148,24.2,34.3,6.67,96.1,8.18,2.95,2.92,2.72,1,224.94,16.87,13.04,1109.94,141.87,3.74,NULL,NULL);
INSERT INTO `samples` VALUES (2651,3,'2019-04-23',3,'08:51:00',NULL,162,148,23.8,34.9,6.64,95.3,8.14,2.86,2.79,2.93,1,105.75,10.22,6.01,335.76,7.92,4.41,NULL,NULL);
INSERT INTO `samples` VALUES (2652,5,'2019-04-23',4,'09:12:00',NULL,162,148,25.1,34.9,6.75,99.3,8.22,5.39,5.58,5.2,1,193.89,14.72,10.3,857.98,108.01,3.44,NULL,NULL);
INSERT INTO `samples` VALUES (2653,6,'2019-04-23',5,'09:32:00',NULL,162,148,24.9,33.8,6.82,99.3,8.23,1.69,1.83,1.96,1,128.88,20.08,16.9,1435.96,45.8,1.01,NULL,NULL);
INSERT INTO `samples` VALUES (2654,13,'2019-05-16',1,'07:20:00',NULL,162,149,25.8,35.9,5.85,87.8,8.08,1.36,1.24,1.36,1,142.45,7.33,3.63,146.55,3.55,2.61,NULL,'OPM - Very low tide');
INSERT INTO `samples` VALUES (2655,14,'2019-05-16',2,'07:40:00',NULL,162,149,26.2,35.5,6.54,98.6,8.07,10.6,12.2,10.7,1,90.4,7.72,4.41,461.09,3.84,2.3,NULL,NULL);
INSERT INTO `samples` VALUES (2656,16,'2019-05-16',3,'07:55:00',NULL,162,149,26.1,35.9,6.72,101.5,8.15,5.87,5.94,6.06,1,90.88,6.11,3.11,122.4,3.73,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2657,17,'2019-05-16',4,'08:20:00',NULL,162,149,26.1,36,7.07,106.7,8.2,3.09,3.24,3.31,1,96.08,5.78,1.96,124.84,1.8,0.52,NULL,NULL);
INSERT INTO `samples` VALUES (2658,18,'2019-05-16',5,'08:40:00',NULL,162,149,26.2,35.9,6.94,104.9,8.2,1.61,1.91,2,1,92.77,5.74,2.48,58.94,4.13,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2659,7,'2019-05-15',1,'08:14:00',NULL,162,149,25.7,35.6,6.22,93.1,8.09,2.02,2,1.89,1,90.4,6.07,5.85,406.32,3,2.01,NULL,'Low tide');
INSERT INTO `samples` VALUES (2660,8,'2019-05-15',2,'08:35:00',NULL,162,149,26,35.3,6,90,8.08,1.8,1.51,1.41,1,97.5,6.6,4.48,208.18,8.46,5.97,NULL,NULL);
INSERT INTO `samples` VALUES (2661,9,'2019-05-15',3,'08:53:00',NULL,162,149,26.2,35.1,6.5,97.8,8.14,2.02,1.8,2.17,1,95.13,7.05,3.69,135.43,7.22,1.65,NULL,NULL);
INSERT INTO `samples` VALUES (2662,12,'2019-05-15',4,'09:24:00',NULL,162,149,26.4,35.9,6.71,101.6,8.13,3.86,4.75,4.87,1,99.87,6.93,3.93,102.82,5.51,0.9,NULL,NULL);
INSERT INTO `samples` VALUES (2663,19,'2019-05-17',1,'07:53:00',NULL,162,149,23.9,23,7.14,96.3,8.19,4.24,4.96,4.86,1,213.44,10.93,8.05,961.64,32.44,9.14,NULL,'RHL - Light rain, heavy stream flow');
INSERT INTO `samples` VALUES (2664,22,'2019-05-17',2,'08:39:00',NULL,162,149,25.4,35.5,6.92,102.8,8.22,0.33,0.36,0.32,1,105.07,8.85,3.96,188.94,10.14,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2665,23,'2019-05-17',3,'09:08:00',NULL,162,149,25.2,33.1,6.99,102.3,8.13,1.75,2.16,1.77,1,331.74,22.6,22.16,1689.35,216.67,9.23,NULL,NULL);
INSERT INTO `samples` VALUES (2666,24,'2019-05-17',4,'09:30:00',NULL,162,149,25.3,34.4,6.8,102,8.16,6.75,6.56,6.68,1,182.2,12.79,10.6,914.34,89.97,2.1,NULL,NULL);
INSERT INTO `samples` VALUES (2667,25,'2019-05-17',5,'10:08:00',NULL,162,149,26.1,34.4,6.46,96.6,8.16,5.45,5.5,6.15,1,152.39,10.09,8.17,954.63,50,4.81,NULL,NULL);
INSERT INTO `samples` VALUES (2668,1,'2019-05-14',1,'08:15:00',NULL,162,149,26.1,34.9,6.82,101.8,8.18,2.21,2.46,2.49,1,137.72,10.59,9.75,642.37,44.2,2.26,NULL,'Windy, with chopy surf');
INSERT INTO `samples` VALUES (2669,2,'2019-05-14',2,'08:45:00',NULL,162,149,25.7,34,6.9,102.3,8.2,6.78,7.18,7.48,1,239.46,14.25,13.56,1236.41,137.23,0.62,NULL,'RNS - Sprinkling');
INSERT INTO `samples` VALUES (2670,3,'2019-05-14',3,'09:02:00',NULL,162,149,26.4,35.7,6.79,102.5,8.17,5.16,5.28,5.11,1,125.89,6.93,4.01,145.8,6.62,1.13,NULL,'RWA- Strong waves');
INSERT INTO `samples` VALUES (2671,5,'2019-05-14',4,'09:22:00',NULL,162,149,26.1,34.7,6.83,102.1,8.19,6.51,7.47,7.35,1,215.8,12.14,11.34,1036.34,119.7,1.09,NULL,NULL);
INSERT INTO `samples` VALUES (2672,6,'2019-05-14',5,'09:42:00',NULL,162,149,26.5,34.6,6.82,102.5,8.22,17.4,17.4,16.9,1,132.99,12.19,11.5,944.49,24.47,0.64,NULL,NULL);
INSERT INTO `samples` VALUES (2673,13,'2019-06-06',1,'07:14:00',NULL,162,150,27.1,36.1,5.02,76.9,8.03,1.39,1.71,1.81,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'All presampling tested a little high, Salinity testing higher than normal range');
INSERT INTO `samples` VALUES (2674,14,'2019-06-06',2,'07:30:00',NULL,162,150,27.4,36.1,5.96,91.6,8.13,1.51,1.58,1.67,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2675,16,'2019-06-06',3,'07:45:00',NULL,162,150,27.1,36.1,6.25,95.6,8.13,3.37,3.43,3.19,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2676,17,'2019-06-06',4,'08:00:00',NULL,162,150,27.3,36.2,6.01,92.3,8.1,3.31,2.72,2.79,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2677,18,'2019-06-06',5,'08:13:00',NULL,162,150,27.3,36,6.16,94.5,8.15,2.69,3.03,3.17,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rain started at end of sampling');
INSERT INTO `samples` VALUES (2678,7,'2019-06-05',1,'08:10:00',NULL,162,150,27.1,35.4,5.79,88.3,8.14,1.72,1.7,1.75,1,88.7,8.94,4.13,305.86,1.94,0.87,NULL,'Extreme Low Tide');
INSERT INTO `samples` VALUES (2679,8,'2019-06-05',2,'08:32:00',NULL,162,150,27.5,35.6,5.12,78.6,8.09,2.27,2.25,2.52,1,104.49,7.28,3.64,256.73,6.95,2.62,NULL,NULL);
INSERT INTO `samples` VALUES (2680,9,'2019-06-05',3,'08:48:00',NULL,162,150,27.5,35.8,6.14,94.5,8.14,2.35,2.05,2.65,1,91.51,8.01,3.9,239.28,8.89,0.64,NULL,NULL);
INSERT INTO `samples` VALUES (2681,12,'2019-06-05',4,'09:25:00',NULL,162,150,28,36,6.14,95.6,8.14,6.95,5.46,5.42,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2682,19,'2019-06-07',1,'07:50:00',NULL,162,150,25.7,35.3,6.05,90.2,8.18,1.68,1.42,1.63,1,107.73,10.93,5.55,318.1,3.04,5.21,NULL,NULL);
INSERT INTO `samples` VALUES (2683,22,'2019-06-07',2,'08:40:00',NULL,162,150,26.1,36.1,6.88,104,8.26,0.46,0.32,0.32,1,80.78,7.93,2.76,107.48,4.31,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2684,23,'2019-06-07',3,'09:10:00',NULL,162,150,26.4,32,6.61,98.1,8.15,1.05,0.91,0.92,1,337.84,22.96,21.14,1894.94,247.22,5.5,NULL,NULL);
INSERT INTO `samples` VALUES (2685,24,'2019-06-07',4,'09:45:00',NULL,162,150,26.9,35.5,6.11,93.2,8.17,3.27,2.86,3.09,1,145.5,11.82,7.1,458.83,45.16,5.59,NULL,NULL);
INSERT INTO `samples` VALUES (2686,25,'2019-06-07',5,NULL,NULL,162,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site Closed - No sampling performed');
INSERT INTO `samples` VALUES (2687,1,'2019-06-04',1,'08:21:00',NULL,162,150,25.5,33.4,6.76,99.5,8.16,1.49,2.36,1.41,1,185.23,16.23,10.81,930.25,91.26,3.27,NULL,'Very light rain & cloudy.  No Waves');
INSERT INTO `samples` VALUES (2688,2,'2019-06-04',2,'09:01:00',NULL,162,150,25.9,33.1,6.55,96.9,8.23,0.84,0.95,1.3,1,297.23,17.56,12.05,1584.16,222.62,1.77,NULL,'No Waves, no rain');
INSERT INTO `samples` VALUES (2689,3,'2019-06-04',3,'09:23:00',NULL,162,150,26,35.4,6.99,105,8.21,1.34,1.19,1.33,1,123.29,9.92,4.62,373.51,10.65,2.92,NULL,'No Waves');
INSERT INTO `samples` VALUES (2690,5,'2019-06-04',4,'09:50:00',NULL,162,150,27.7,34,7.05,108,8.29,2.59,3.25,2.65,1,198.06,11.64,6.73,1018.83,123.19,2.49,NULL,'2 of 3 people on beach fishermen.  pH Probe - initial #s due to being in air for 30 sec.  Let stabilize again in solution & reread after 1 min back in seawater');
INSERT INTO `samples` VALUES (2691,6,'2019-06-04',5,'10:09:00',NULL,162,150,27.5,35,6.66,102.3,8.26,1.6,0.47,0.67,1,121.99,12.8,7.35,700.74,23.87,1.33,NULL,'A few large particles in turbidity sample');
INSERT INTO `samples` VALUES (2692,13,'2019-06-27',1,'07:13:00',NULL,162,151,27.5,36.2,5.41,83.7,7.98,0.91,1.09,1.16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2693,14,'2019-06-27',2,'07:33:00',NULL,162,151,27.5,35.9,6.16,95.6,8.07,1.78,2.08,2.14,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2694,16,'2019-06-27',3,'07:49:00',NULL,162,151,27.6,36.2,6.51,101.3,8.1,7.55,7.63,7.18,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2695,17,'2019-06-27',4,'08:07:00',NULL,162,151,27.4,36.1,6.72,104.3,8.11,5.58,5.03,5.34,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2696,18,'2019-06-27',5,'08:24:00',NULL,162,151,27.7,35.9,6.61,102.9,8.12,7.38,6.75,7.77,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2697,7,'2019-06-26',1,'08:16:00',NULL,162,151,26.5,32.2,6.07,92.4,8.03,6.54,6.84,7.38,1,68.4,9.47,8.29,535.31,8.95,0.8,NULL,NULL);
INSERT INTO `samples` VALUES (2698,8,'2019-06-26',2,'08:39:00',NULL,162,151,26.7,34.7,5.98,91.1,8.06,13.5,11.6,9.95,1,79.86,9.28,7.29,417.89,22.56,6.14,NULL,NULL);
INSERT INTO `samples` VALUES (2699,9,'2019-06-26',3,'08:59:00',NULL,162,151,26.5,34.5,5.98,90.8,8.1,5.27,6.5,5.67,1,79.06,7.07,5.43,471.21,21.12,2.39,NULL,NULL);
INSERT INTO `samples` VALUES (2700,12,'2019-06-26',4,'09:32:00',NULL,162,151,27.2,35.9,7.06,109,8.07,5.56,5.53,5.73,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2701,19,'2019-06-28',1,'07:50:00',NULL,162,151,26.4,35,6.01,91,8.13,2.04,1.9,1.96,1,75.71,8.78,6.15,381.07,2.49,4.54,NULL,'RKV - Recent dune restoration project');
INSERT INTO `samples` VALUES (2702,22,'2019-06-28',2,'08:37:00',NULL,162,151,26.8,36.1,6.81,104.4,8.2,1.09,1.06,1.08,1,68.93,6.85,3.21,94.23,6.51,1.19,NULL,'RKV - High DO confirmed');
INSERT INTO `samples` VALUES (2703,23,'2019-06-28',3,'09:15:00',NULL,162,151,28,34.6,6.31,98,8.09,1.41,2.67,1.47,1,173.41,14.52,14.23,1071.31,128.09,4.56,NULL,NULL);
INSERT INTO `samples` VALUES (2704,24,'2019-06-28',4,'09:35:00',NULL,162,151,28.2,35.5,6.46,101.1,8.16,7.53,7.27,7.33,1,101.06,10.2,7.74,507.9,52.5,2.1,NULL,NULL);
INSERT INTO `samples` VALUES (2705,25,'2019-06-28',5,'10:00:00',NULL,162,151,28.6,35.5,7.58,119.3,8.26,2.8,2.88,2.7,1,68.97,7.15,3.97,416.17,14.99,1.81,NULL,NULL);
INSERT INTO `samples` VALUES (2706,1,'2019-06-25',1,'08:12:00',NULL,162,151,27.8,34.6,6.58,102.1,8.1,3.98,4.52,3.92,1,103.14,13.02,10.06,670.63,61.35,3.35,NULL,'RNS - Very calm;  Kona winds');
INSERT INTO `samples` VALUES (2707,2,'2019-06-25',2,'08:32:00',NULL,162,151,27.5,34.9,6.61,101.9,8.17,2.84,2.73,3.33,1,224.84,14.08,11.65,1038.07,183.32,3.38,NULL,'RCB - windy Kona; lifegaurd training in progress');
INSERT INTO `samples` VALUES (2708,3,'2019-06-25',3,'08:54:00',NULL,162,151,27.7,35.9,6.35,99,8.17,7.95,7.75,7.72,1,56.87,8.72,4.48,165.4,7.53,1.69,NULL,NULL);
INSERT INTO `samples` VALUES (2709,5,'2019-06-25',4,'09:18:00',NULL,162,151,27.6,34.4,6.86,105.8,8.2,3.42,3.62,3.53,1,166.88,11.63,8.95,1026.77,135.06,3.39,NULL,NULL);
INSERT INTO `samples` VALUES (2710,6,'2019-06-25',5,'09:34:00',NULL,162,151,27.7,34.4,6.73,103.9,8.21,1.88,1.82,2.25,1,75.51,13.48,11.65,1047.55,32.09,0.8,NULL,NULL);
INSERT INTO `samples` VALUES (2711,13,'2019-07-18',1,'07:25:00',NULL,162,152,26.4,36.2,5.81,88.3,8.07,1.45,1.57,1.67,1,78.79,7.93,4.03,162.13,4.07,4.61,NULL,NULL);
INSERT INTO `samples` VALUES (2712,14,'2019-07-18',2,'07:50:00',NULL,162,152,26.8,36.3,6.15,94.1,8.13,2.8,2.79,2.85,1,81.66,6.15,4.07,212.2,1.8,6.25,NULL,NULL);
INSERT INTO `samples` VALUES (2713,16,'2019-07-18',3,'08:21:00',NULL,162,152,25.7,36.4,6.71,100.9,8.15,5.96,6.19,6.24,1,64.14,6.19,3.19,85.39,1.76,3.53,NULL,'Very Windy, white caps, stinging sand');
INSERT INTO `samples` VALUES (2714,17,'2019-07-18',4,'08:30:00',NULL,162,152,25.9,36.3,6.9,104.1,8.2,7.43,7.14,7.58,1,66.85,6.12,4.07,128.88,3.39,2.3,NULL,NULL);
INSERT INTO `samples` VALUES (2715,18,'2019-07-18',5,'08:40:00',NULL,162,152,26.3,35.7,6.82,103.2,8.16,2.23,2.37,2.39,1,75.16,7.38,4.34,393.42,3.02,2.95,NULL,NULL);
INSERT INTO `samples` VALUES (2716,7,'2019-07-17',1,'08:09:00',NULL,162,152,27.8,35.8,6.19,96.3,8.09,3.14,4.01,3.04,1,72.22,8.38,5.83,315.99,4.99,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (2717,8,'2019-07-17',2,'08:38:00',NULL,162,152,27.9,35.3,5.78,89.7,8.1,2.34,2.31,2.35,1,82.49,9.55,7.16,364.33,11.99,6.33,NULL,NULL);
INSERT INTO `samples` VALUES (2718,9,'2019-07-17',3,'08:58:00',NULL,162,152,28.1,36.1,6.09,95.3,8.09,1.02,1.47,1.43,1,85.88,7.54,4.53,140.08,5.18,8.25,NULL,NULL);
INSERT INTO `samples` VALUES (2719,12,'2019-07-17',4,'09:32:00',NULL,162,152,28.4,36.2,6.32,99.4,8.11,3.26,3.18,3.43,1,93.65,9.59,5.57,176.7,8.52,8.61,NULL,NULL);
INSERT INTO `samples` VALUES (2720,19,'2019-07-19',1,'07:53:00',NULL,162,152,26.7,35.2,6.09,92.5,8.16,2.35,2.05,1.67,1,103.01,17.19,13.84,360.2,5.19,11.6,NULL,NULL);
INSERT INTO `samples` VALUES (2721,22,'2019-07-19',2,'08:35:00',NULL,162,152,27.1,36.1,6.56,101,8.18,1.75,1.6,1.56,1,77.87,8.52,3.69,136.99,6.61,2.49,NULL,NULL);
INSERT INTO `samples` VALUES (2722,23,'2019-07-19',3,'09:02:00',NULL,162,152,27.7,34.9,6.27,96.9,8.12,1,0.86,0.94,1,197.42,15.12,14.1,1050.91,131.12,6.02,NULL,NULL);
INSERT INTO `samples` VALUES (2723,24,'2019-07-19',4,'09:25:00',NULL,162,152,27.4,35.5,6.13,94.5,8.13,3.36,3.37,3.15,1,118.61,9.76,7.93,515.35,61.98,8.72,NULL,NULL);
INSERT INTO `samples` VALUES (2724,25,'2019-07-19',5,'09:45:00',NULL,162,152,27.2,35.7,5.91,91,8.16,5.46,5.16,4.6,1,83.96,9.11,6.8,526.01,23.29,4.84,NULL,NULL);
INSERT INTO `samples` VALUES (2725,1,'2019-07-16',1,'08:18:00',NULL,162,152,26.9,34.1,6.77,102.7,8.17,79.5,84.3,80.6,1,192.28,18.33,17.3,1148.2,110.93,7.89,NULL,NULL);
INSERT INTO `samples` VALUES (2726,2,'2019-07-16',2,'08:45:00',NULL,162,152,26.7,33.6,6.84,103,8.2,5.73,6.33,6.36,1,267.87,15.83,15.8,1597.5,213.21,9.04,NULL,NULL);
INSERT INTO `samples` VALUES (2727,3,'2019-07-16',3,'09:04:00',NULL,162,152,27.4,36,6.52,100.7,8.17,3.66,3.72,3.76,1,85.81,9.08,5.42,209.32,9.7,5.23,NULL,NULL);
INSERT INTO `samples` VALUES (2728,5,'2019-07-16',4,'09:22:00',NULL,162,152,27.9,35.6,6.55,101.6,8.21,5.97,6.47,6.03,1,127.99,10.44,7.35,477.32,60.91,5.8,NULL,NULL);
INSERT INTO `samples` VALUES (2729,6,'2019-07-16',5,'09:38:00',NULL,162,152,27.5,34.9,6.63,101.9,8.23,6.15,6.08,5.81,1,99.95,13.01,11.34,943.35,25.13,5.74,NULL,NULL);
INSERT INTO `samples` VALUES (2730,13,'2019-08-08',1,'07:19:00',NULL,162,153,27.5,36.2,5.62,86.9,8.03,1.81,1.97,2.24,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2100Q struggled to turn on during pre-sample. We replaced the batteries.');
INSERT INTO `samples` VALUES (2731,14,'2019-08-08',2,'07:42:00',NULL,162,153,28.8,36,6.04,95.2,8.08,6.4,5.74,5.15,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'First 2 sites - read temperature from \'DO\' probe. Later noted \'DO\' temperature (at later sites) ran 0.2 degrees higher than salinity probe.');
INSERT INTO `samples` VALUES (2732,16,'2019-08-08',3,'07:55:00',NULL,162,153,28,36.2,6.54,102.2,8.13,21.5,23,20,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2733,17,'2019-08-08',4,'08:10:00',NULL,162,153,28.1,36.2,6.68,104.6,8.13,4.05,4.61,4.67,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2734,18,'2019-08-08',5,'08:20:00',NULL,162,153,28.1,36,6.66,104.1,8.15,4.51,4.23,4.66,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2735,7,'2019-08-07',1,'08:15:00',NULL,162,153,28.1,35.7,6.42,100.2,8.1,2.21,2.43,1.83,1,108.51,8.08,5.46,192.87,4.73,1.81,NULL,NULL);
INSERT INTO `samples` VALUES (2736,8,'2019-08-07',2,'08:50:00',NULL,162,153,28.2,35.9,6.42,100.5,8.07,9.71,9.46,9.23,1,97.56,9.92,8.34,347.36,5.82,0.94,NULL,NULL);
INSERT INTO `samples` VALUES (2737,9,'2019-08-07',3,'09:07:00',NULL,162,153,28.2,35.5,6.16,96.1,8.08,28.1,27.5,26.2,1,110.37,10.64,9.17,546.92,12.1,13.11,NULL,NULL);
INSERT INTO `samples` VALUES (2738,12,'2019-08-07',4,NULL,NULL,162,153,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Olowalu Pier not sampled at all due to miscommunication');
INSERT INTO `samples` VALUES (2739,19,'2019-08-09',1,'07:49:00',NULL,162,153,26.4,35.3,5.21,78.9,8.09,0.9,1.03,1.56,1,139.31,9.99,7.25,312.65,2.71,49.91,NULL,'some floppy particles in sample, sample area in shade from trees');
INSERT INTO `samples` VALUES (2740,22,'2019-08-09',2,'08:26:00',NULL,162,153,27.2,35.9,6.86,105.8,8.15,0.71,0.64,0.66,1,96.3,5.87,3.16,129.33,6.16,2.84,NULL,NULL);
INSERT INTO `samples` VALUES (2741,23,'2019-08-09',3,'08:50:00',NULL,162,153,27.6,35.2,6.39,98.7,8.13,1.72,1.47,1.92,1,133.04,11.73,10.45,645.26,69.58,5.08,NULL,NULL);
INSERT INTO `samples` VALUES (2742,24,'2019-08-09',4,'09:15:00',NULL,162,153,27.9,35.1,6,93.1,8.12,7.39,7.63,7.44,1,143.41,9.53,8.62,640.96,69.92,2.81,NULL,NULL);
INSERT INTO `samples` VALUES (2743,25,'2019-08-09',5,'09:34:00',NULL,162,153,27.8,35.9,5.55,86.4,8.12,6.51,6.92,6.4,1,93.33,6.54,4.75,233.45,7.08,3,NULL,NULL);
INSERT INTO `samples` VALUES (2744,1,'2019-08-06',1,'08:15:00',NULL,162,153,27.4,35.6,6.6,102,8.13,5.47,4.96,5.67,1,194.43,13,10.53,763.29,116.31,4.58,NULL,NULL);
INSERT INTO `samples` VALUES (2745,2,'2019-08-06',2,'08:35:00',NULL,162,153,27.2,35.1,6.58,101.1,8.17,5.13,5.51,4.39,1,97.13,7.69,5.76,192.55,6.73,13.28,NULL,'breezy');
INSERT INTO `samples` VALUES (2746,3,'2019-08-06',3,'08:55:00',NULL,162,153,27,35.8,6.53,100.4,8.11,5.73,5.91,5.94,1,127.91,10.14,8.36,424.22,35.46,6.16,NULL,'calm, cloudy');
INSERT INTO `samples` VALUES (2747,5,'2019-08-06',4,'09:15:00',NULL,162,153,27.4,35.4,6.69,103.2,8.2,1.94,2.01,1.99,1,139.68,10,8.33,618.35,60.72,4.46,NULL,NULL);
INSERT INTO `samples` VALUES (2748,6,'2019-08-06',5,'09:35:00',NULL,162,153,27.4,35.5,6.57,101.4,8.2,2,1.99,2.06,1,97.86,9.85,7.47,540.56,15.88,1.51,NULL,NULL);
INSERT INTO `samples` VALUES (2749,13,'2019-08-29',1,'07:19:00',NULL,162,154,28.1,36.5,5.68,89,8.08,1.28,1.28,1.28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OPM - Followed net \'tip\' procedure repeatedly - for Blank - still read out of range - best reading recorded');
INSERT INTO `samples` VALUES (2750,14,'2019-08-29',2,'07:37:00',NULL,162,154,28.2,36.3,6.03,94.4,8.08,6.29,7.65,7.14,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OCO190829 - 4th reading 6.89 turbidity, testing done on side of road with traffic going by, may have caused vibration of car. Also, I may not have had arrow on jar lined up.');
INSERT INTO `samples` VALUES (2751,16,'2019-08-29',3,'07:54:00',NULL,162,154,28.3,36.5,6.34,99.8,8.12,23.2,24.3,21.3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2752,17,'2019-08-29',4,'08:10:00',NULL,162,154,28.7,36.5,6.41,101.4,8.16,3.66,5.16,5.43,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Papalaua Beach 5.12 4th reading, turbidity.');
INSERT INTO `samples` VALUES (2753,18,'2019-08-29',5,'08:26:00',NULL,162,154,28.9,36.5,6.39,101.4,8.14,3.39,4.7,4.47,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2754,7,'2019-08-28',1,'08:10:00',NULL,162,154,28.7,35.7,5.25,82.7,8.06,1.52,1.63,1.76,1,91.91,10.58,6.82,626.42,4.99,1.74,NULL,'PFF - light stream flow');
INSERT INTO `samples` VALUES (2755,8,'2019-08-28',2,'08:40:00',NULL,162,154,28.9,36,5.39,85.3,8.06,2.76,2.7,2.59,1,77.01,6.91,2.85,170.51,4.39,2.37,NULL,NULL);
INSERT INTO `samples` VALUES (2756,9,'2019-08-28',3,'09:05:00',NULL,162,154,29.2,35.6,5.57,88.5,8.09,2.13,2.27,2.32,1,104.56,6.13,3.34,566.45,31.97,3.15,NULL,NULL);
INSERT INTO `samples` VALUES (2757,12,'2019-08-28',4,'09:25:00',NULL,162,154,29.6,36.3,6.36,102.1,8.15,1.73,2.22,2.19,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OSF - low DO reading - rechecked meter log');
INSERT INTO `samples` VALUES (2758,19,'2019-08-30',1,'07:45:00',NULL,162,154,27.5,35,5.63,86.5,8.11,4.4,4.41,5.6,1,88.8,10.05,5.89,452.68,3.89,7.11,NULL,'RHL - 4 boats');
INSERT INTO `samples` VALUES (2759,22,'2019-08-30',2,'08:30:00',NULL,162,154,27.8,36,6.64,103.3,8.2,0.62,0.83,0.63,1,83.24,6.49,1.97,142.23,6.94,1.74,NULL,NULL);
INSERT INTO `samples` VALUES (2760,23,'2019-08-30',3,'08:55:00',NULL,162,154,27.8,32.3,6.16,93.7,8.08,1.69,1.99,1.14,1,333.06,22.98,22.59,2319.25,269.37,2.84,NULL,NULL);
INSERT INTO `samples` VALUES (2761,24,'2019-08-30',4,'09:20:00',NULL,162,154,28.2,35.3,6.13,95.6,8.14,6.23,6.38,6.45,1,138.18,9.85,7.89,720.21,71.94,2.11,NULL,NULL);
INSERT INTO `samples` VALUES (2762,25,'2019-08-30',5,'09:45:00',NULL,162,154,28.2,35.4,5.74,89.3,8.16,11.5,9.72,11.1,1,129.55,9.8,5.62,654.6,43.46,5.33,NULL,'RKV - Runoff at nearby Kahana Reef where sea wall repair work ongoing (red - flowing into ocean) - picture sent to Dana');
INSERT INTO `samples` VALUES (2763,1,'2019-08-27',1,'08:14:00',NULL,162,154,28,34.3,6.41,99.2,8.15,3.51,3.48,3.62,1,155.04,11.67,8.09,966.68,76.08,4.06,NULL,'RNS - blank is high, when first turned on turbidity meter had to reset time/date info before operation');
INSERT INTO `samples` VALUES (2764,2,'2019-08-27',2,'08:38:00',NULL,162,154,28.3,34.2,6.44,100,8.22,0.84,1.12,1.16,1,249.56,12.02,8.67,1179.33,197.79,3.03,NULL,NULL);
INSERT INTO `samples` VALUES (2765,3,'2019-08-27',3,'08:58:00',NULL,162,154,28.3,36,5.84,91.5,8.13,1.87,2.16,1.95,1,87.55,7.08,3.85,211.56,5.58,3.24,NULL,NULL);
INSERT INTO `samples` VALUES (2766,5,'2019-08-27',4,'09:17:00',NULL,162,154,28.7,35.2,6.46,101.7,8.22,2.3,1.93,1.86,1,161.76,9.56,6.54,773.86,91.44,1.97,NULL,NULL);
INSERT INTO `samples` VALUES (2767,6,'2019-08-27',5,'09:38:00',NULL,162,154,28.6,34.8,6.41,100.3,8.25,2.31,2.14,2.04,1,117.57,10.94,8.63,1056.3,28.6,0.37,NULL,'RWA - one dog');
INSERT INTO `samples` VALUES (2768,13,'2019-09-19',1,'07:16:00',NULL,162,155,27.5,36.3,6.11,94.3,8.07,10.4,10.4,11.3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2769,14,'2019-09-19',2,'07:35:00',NULL,162,155,28.6,36.3,6.29,99.6,8.09,9.51,9.6,10.1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2770,16,'2019-09-19',3,'07:52:00',NULL,162,155,27.7,36.3,6.55,102.1,8.12,22.4,24,22.8,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2771,17,'2019-09-19',4,'08:08:00',NULL,162,155,28.1,36.3,6.48,101.7,8.11,4.55,5.09,5.09,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OPB - HQ40d sensors took a little time to connect properly at this site, and it also turned off in the middle of a read');
INSERT INTO `samples` VALUES (2772,18,'2019-09-19',5,'08:22:00',NULL,162,155,28.3,36.2,6.54,102.8,8.1,8.6,8.69,8.83,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OPP - Took 4th reading of Turbidity at this site after big truck passed during read.');
INSERT INTO `samples` VALUES (2773,7,'2019-09-18',1,'08:15:00',NULL,162,155,28.2,35.5,6.46,101,8.08,4.5,4.54,4.91,1,139.86,20.59,13.06,1154.28,4.47,25.35,NULL,'PFF - steady flow of stream at 505 Front St (regular)');
INSERT INTO `samples` VALUES (2774,8,'2019-09-18',2,'08:45:00',NULL,162,155,27.8,35.8,6.4,99.7,8.11,24.5,25.4,24.9,1,65.05,12.6,11.67,484.04,4.59,0.86,NULL,'PLH - culvert blocked by sand, 5% cloud cover, no wind');
INSERT INTO `samples` VALUES (2775,9,'2019-09-18',3,'09:05:00',NULL,162,155,28.1,35.5,5.9,92.2,8.07,11.5,11.5,11.8,1,77.82,9.32,6.27,453.37,14.06,3.97,NULL,NULL);
INSERT INTO `samples` VALUES (2776,12,'2019-09-18',4,'09:37:00',NULL,162,155,28.4,36.4,7.17,113.1,8.18,1.27,1.57,1.4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OSF - waves (0.5\') passing over reef because of high tide');
INSERT INTO `samples` VALUES (2777,19,'2019-09-20',1,'07:50:00',NULL,162,155,26.8,36,6.03,92.5,8.14,0.81,0.89,1,1,139.33,11.39,8.76,256.43,4.75,9.36,NULL,'RHL - took second salinity reading - 35.9 ppt, Landscape crew in parking lot, mowing and blowing');
INSERT INTO `samples` VALUES (2778,22,'2019-09-20',2,'08:30:00',NULL,162,155,26.9,36.3,6.69,103.1,8.18,0.63,0.64,0.65,1,72.19,7.19,3.92,98.19,6.11,2.72,NULL,'RON - took second salinity reading - 36.3 ppt, breezy, choppy');
INSERT INTO `samples` VALUES (2779,23,'2019-09-20',3,'08:55:00',NULL,162,155,27.2,36,6.52,107,8.13,3.16,2.33,2.6,1,77.77,11.45,8.89,301.5,18.55,4.14,NULL,'RFS - took second salinity reading - 36.0, breezy and choppy');
INSERT INTO `samples` VALUES (2780,24,'2019-09-20',4,'09:20:00',NULL,162,155,27.1,35.4,6.4,98.4,8.09,14.2,13.9,14,1,96.17,9.69,7.84,488.99,37.47,2.91,NULL,NULL);
INSERT INTO `samples` VALUES (2781,25,'2019-09-20',5,'09:40:00',NULL,162,155,27.2,35.9,6.46,99.6,8.09,31.2,29,30.1,1,58.49,8.33,5.34,224.81,8.2,0.69,NULL,'RKV - wood debris in ocean, took second salinity reading 35.4 ppt, ongoing seawall construction south of site, breezy, choppy');
INSERT INTO `samples` VALUES (2782,1,'2019-09-17',1,'08:15:00',NULL,162,155,27.2,35.3,6.62,102.1,8.11,3.25,3.07,3.26,1,92.01,10.78,9.1,577.29,32.01,2.21,NULL,'RNS - calm small/zero waves');
INSERT INTO `samples` VALUES (2783,2,'2019-09-17',2,'08:35:00',NULL,162,155,27.6,35.5,6.54,101.5,8.14,8.48,8.65,8.8,1,118.14,11.28,9.99,615.81,67.03,2.37,NULL,'RPO - small shore break');
INSERT INTO `samples` VALUES (2784,3,'2019-09-17',3,'08:55:00',NULL,162,155,28,36,6.5,101.7,8.15,2.05,2.45,2.69,1,55.2,6.96,5.1,195.67,5.43,0.35,NULL,'RKS - more sand on beach than usual - 30 ft');
INSERT INTO `samples` VALUES (2785,5,'2019-09-17',4,'09:15:00',NULL,162,155,28.2,35.6,6.57,103.1,8.2,1.46,1.65,1.54,1,104.79,9.24,6.89,509.24,54.51,1.51,NULL,NULL);
INSERT INTO `samples` VALUES (2786,6,'2019-09-17',5,'09:35:00',NULL,162,155,28.2,35.3,6.58,103.1,8.21,1.56,1.62,1.63,1,70.9,9.99,7.93,607.35,16.7,0.29,NULL,NULL);
INSERT INTO `samples` VALUES (2787,13,'2019-10-10',1,'07:09:00',NULL,162,156,27.6,36.3,5.35,83.2,7.98,2.36,2.39,2.38,1,79.6,6.89,4.24,261.71,3.64,1.73,NULL,'OPM - 1 shark in water (black tip)');
INSERT INTO `samples` VALUES (2788,14,'2019-10-10',2,'07:28:00',NULL,162,156,28.4,36.4,6,94.6,8.05,5.47,5.22,5.28,1,63.02,4.58,4.44,379.76,4.16,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2789,16,'2019-10-10',3,'07:44:00',NULL,162,156,28.7,36.6,6.08,96.5,8.09,16.5,16.9,16.5,1,72.46,5.12,3.27,121.2,3.07,0.53,NULL,'OUB - near shore wave break');
INSERT INTO `samples` VALUES (2790,17,'2019-10-10',4,'07:59:00',NULL,162,156,28.6,36.5,6.27,99.3,8.1,7.18,6.67,6.75,1,57.78,3.41,2.18,106.53,1.66,2.37,NULL,NULL);
INSERT INTO `samples` VALUES (2791,18,'2019-10-10',5,'08:13:00',NULL,162,156,28.6,36.3,6.28,99.5,8.13,3.01,3.42,3.57,1,58.02,3.87,2.22,92.04,0.85,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2792,7,'2019-10-09',1,'08:10:00',NULL,162,156,27.6,33.4,5.75,88,8.03,5.31,5.71,5.74,1,83.52,6.24,5.03,235.82,1.92,1.63,NULL,'PFF - stream flowing');
INSERT INTO `samples` VALUES (2793,8,'2019-10-09',2,'08:34:00',NULL,162,156,27.7,35.8,5.7,88.6,8.05,6.08,6.04,5.88,1,80.2,6.27,5.43,322.53,5.3,1.12,NULL,'PLH - drainage is still totally covered,  outrigger in water w/5 people');
INSERT INTO `samples` VALUES (2794,9,'2019-10-09',3,'08:53:00',NULL,162,156,28.1,36.2,5.92,92.7,8.07,1.92,1.71,1.5,1,70.12,4.13,3.23,125.48,2.96,0.43,NULL,'PLT - 4th tubidity reading 1.82,  1 possibly 2 monk seals in water, high cirrus clouds, steady Kona wind');
INSERT INTO `samples` VALUES (2795,12,'2019-10-09',4,'09:21:00',NULL,162,156,28.3,36.3,6.07,95.5,8.07,0.93,1.04,0.99,1,67.68,4.32,3.43,168.98,2.83,1.09,NULL,NULL);
INSERT INTO `samples` VALUES (2796,19,'2019-10-11',1,'07:50:00',NULL,162,156,27.6,35,5.59,85.9,8.12,3.38,3.31,3.14,1,119.94,8.8,6.72,630.22,5.98,10.26,NULL,NULL);
INSERT INTO `samples` VALUES (2797,22,'2019-10-11',2,'08:30:00',NULL,162,156,28.2,36.3,6.39,100,8.16,1.39,1.21,1.43,1,87.76,5.86,3.1,88.3,4.26,2.79,NULL,NULL);
INSERT INTO `samples` VALUES (2798,23,'2019-10-11',3,'08:50:00',NULL,162,156,28.4,34.3,6.23,96.6,8.07,2.23,2.5,2.19,1,194.4,15.32,15.09,1299.12,125.8,2.78,NULL,NULL);
INSERT INTO `samples` VALUES (2799,24,'2019-10-11',4,'09:15:00',NULL,162,156,28.3,34.9,5.99,93.2,8.09,5.22,5.65,5.59,1,185.46,11.34,10.86,832.54,116.67,3.52,NULL,'RKO - 4th turbidity reading 5.22');
INSERT INTO `samples` VALUES (2800,25,'2019-10-11',5,'09:35:00',NULL,162,156,28.6,35.4,5.62,88,8.08,6.61,6.6,6.35,1,114.32,8.15,8,723.59,39.82,4.74,NULL,NULL);
INSERT INTO `samples` VALUES (2801,1,'2019-10-08',1,'08:12:00',NULL,162,156,27.5,36.2,6.38,98.9,8.19,1.7,1.92,2.53,1,94.02,7.08,3.93,144.22,10.5,1.78,NULL,'2100Q Turbidity Machine gave values much higher than \'the Blank\' in pre-sampling. (Note: CM in field, did all the usual things to decrease blank turbidity and as a last resort) tried to re-fill vial w/distilled H2O (from field squirt bottle). Could NOT get the Blank value lower in the field (believe water was old and contaminated so later in day got new DI water to use for this purpose for the rest of the week. Note no further problems all week). RNS - clear, low clouds over Moloka\'i, high surf (2-3 ft), high tide, tape on nutrient bottle loose, temperature corrected by review of instrument');
INSERT INTO `samples` VALUES (2802,2,'2019-10-08',2,'08:39:00',NULL,162,156,27.1,34.6,6.45,98.5,8.15,21.6,21.3,21,1,245.89,12.9,11.58,1069.5,177.24,4.42,NULL,'RPO - sandy near shore due to large shore break ~3 ft swell.');
INSERT INTO `samples` VALUES (2803,3,'2019-10-08',3,'09:21:00',NULL,162,156,27.7,36.2,6.44,100.2,8.18,5.08,5.28,6.81,1,84.82,7.56,4.2,159.79,6.11,0.83,NULL,'RKS - 5.40  4th reading after better mixing');
INSERT INTO `samples` VALUES (2804,5,'2019-10-08',4,'09:48:00',NULL,162,156,28.7,35.6,6.41,101,8.23,2.59,2.46,2.48,1,120.65,6.9,4.98,440.22,44.03,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (2805,6,'2019-10-08',5,'10:08:00',NULL,162,156,28.5,36.1,6.28,98.9,8.23,1.83,1.87,1.8,1,74.55,7.63,5.16,269.71,6.05,0.28,NULL,'RWA - flat water - no waves');
INSERT INTO `samples` VALUES (2806,13,'2019-10-31',1,'07:10:00',NULL,162,157,26.8,36.1,5.95,91.6,8.04,8.92,10.3,9.91,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'new turbidity sample cell in use, first turbidity sample bottle was scratched, we used backup glass bottle. scratched cell discarded.');
INSERT INTO `samples` VALUES (2807,14,'2019-10-31',2,'07:30:00',NULL,162,157,27.4,36,6.09,94.6,8.09,3.45,3.85,3.92,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2808,16,'2019-10-31',3,'07:45:00',NULL,162,157,27.6,36.2,6.25,97.4,8.09,21.7,22,22.2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2809,17,'2019-10-31',4,'07:56:00',NULL,162,157,27.6,36.2,6.31,98.4,8.11,4.74,4.89,4.99,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2810,18,'2019-10-31',5,'08:08:00',NULL,162,157,27.7,36.1,6.4,99.7,8.11,11.1,11.3,11.2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2811,7,'2019-10-30',1,'08:15:00',NULL,162,157,27.2,35.9,6.26,96.8,8.05,3.88,4.28,4.11,1,89.43,7.93,6.89,310.95,1.24,0.4,NULL,NULL);
INSERT INTO `samples` VALUES (2812,8,'2019-10-30',2,'08:41:00',NULL,162,157,27.2,35.7,5.99,92.5,8.06,14.5,14.8,15.2,1,96.77,10.63,8.79,415.58,6.87,1.67,NULL,NULL);
INSERT INTO `samples` VALUES (2813,9,'2019-10-30',3,'08:59:00',NULL,162,157,27.7,35.6,5.68,88.4,8.04,11.4,10.8,10.8,1,89.4,9.1,7.65,350.06,9.84,1.72,NULL,'PLT - HD40D-1 instrument turned off without prompt for a second time at this site, requiring turning back on and reset of date/time.  It also happened at an unspecified earlier site this session as well.');
INSERT INTO `samples` VALUES (2814,12,'2019-10-30',4,'09:31:00',NULL,162,157,27.8,36.1,6.68,104.5,8.1,1.12,1.28,1.15,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2815,19,'2019-11-01',1,'07:50:00',NULL,162,157,26,35.9,6.25,94.7,8.14,3.61,3.93,3.68,1,106.2,9.62,6.87,2.72,7.11,8.67,NULL,'RHL - eel and fish at collection site');
INSERT INTO `samples` VALUES (2816,22,'2019-11-01',2,'08:35:00',NULL,162,157,27,36,6.71,103.6,8.15,1.03,0.99,1.1,1,76,6.79,3.82,72.03,4.35,0.42,NULL,NULL);
INSERT INTO `samples` VALUES (2817,23,'2019-11-01',3,'08:55:00',NULL,162,157,27.5,35.9,6.47,100.2,8.12,1.47,1.39,1.31,1,101.18,9.6,7.29,153.53,11.7,3.61,NULL,NULL);
INSERT INTO `samples` VALUES (2818,24,'2019-11-01',4,'09:20:00',NULL,162,157,27.2,35.7,6.24,96.4,8.1,4.41,4.48,4,1,97.61,9.7,8.43,253.6,27.36,2.27,NULL,NULL);
INSERT INTO `samples` VALUES (2819,25,'2019-11-01',5,'09:45:00',NULL,162,157,27.5,35.7,6.48,100.5,8.11,10.5,10.7,10.8,1,84.69,9.52,7.7,316.65,14.34,0.94,NULL,'RKV - Kahana Reef Seawall Construction');
INSERT INTO `samples` VALUES (2820,1,'2019-10-29',1,'08:24:00',NULL,162,157,26.8,36,6.72,103.2,8.13,1.44,1.54,1.71,1,94.93,7.38,5.4,203.66,12.51,4.54,NULL,NULL);
INSERT INTO `samples` VALUES (2821,2,'2019-10-29',2,'08:55:00',NULL,162,157,26.2,34.3,6.8,102.4,8.11,11.5,11.1,11,1,222.82,18.53,16.18,1152.02,150.72,3.88,NULL,NULL);
INSERT INTO `samples` VALUES (2822,3,'2019-10-29',3,'09:22:00',NULL,162,157,27.5,36.1,6.6,102.6,8.16,3.74,3.4,3.17,1,87.5,7.35,5.51,97.83,9.87,2.51,NULL,NULL);
INSERT INTO `samples` VALUES (2823,5,'2019-10-29',4,'09:46:00',NULL,162,157,27.7,34.6,6.83,105.6,8.2,1.41,1.18,1.24,1,179.55,11.05,9.99,836.56,109.66,2.71,NULL,'RCB - 4 people straight out - close proximity to sample site in water');
INSERT INTO `samples` VALUES (2824,6,'2019-10-29',5,'10:09:00',NULL,162,157,27.7,35.3,6.59,102.3,8.18,3.2,3.77,3.21,1,95.1,11.95,11.14,762.45,21.65,0.38,NULL,'RWA - 4th turbidity sample 3.08');
INSERT INTO `samples` VALUES (2825,13,'2019-11-21',1,'07:10:00',NULL,162,158,26.3,36.3,5.4,81.9,8.04,1.67,1.8,1.72,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th Turbidity reading 1.38NTU');
INSERT INTO `samples` VALUES (2826,14,'2019-11-21',2,'07:33:00',NULL,162,158,26.5,36.3,6.03,91.7,8.1,1.94,2.01,1.88,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2827,16,'2019-11-21',3,'07:48:00',NULL,162,158,26,36.4,6.23,94.1,8.11,11.7,11.6,12.8,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Heavy winds shaking car.  Turbidity reading verified.');
INSERT INTO `samples` VALUES (2828,17,'2019-11-21',4,'08:05:00',NULL,162,158,26.1,36.4,6.53,98.7,8.15,4.39,4.22,4.66,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2829,18,'2019-11-21',5,'08:16:00',NULL,162,158,26.5,35.9,6.4,97.2,NULL,6.69,6.79,6.11,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No pH reading taken.  4th Turbidity reading 6.31 NTU');
INSERT INTO `samples` VALUES (2830,7,'2019-11-20',1,'08:25:00',NULL,162,158,27.4,34.3,6.12,93.5,8.11,2.25,3.12,2.92,1,106.29,10.62,7.47,657.75,2.75,3.19,NULL,'Ground still wet from recent rain.  Hmeless person camping on site');
INSERT INTO `samples` VALUES (2831,8,'2019-11-20',2,'08:50:00',NULL,162,158,27.2,36.1,6.01,92.3,8.13,6.57,6.12,6.26,1,88.6,9.61,6.12,283.64,6.2,1.11,NULL,NULL);
INSERT INTO `samples` VALUES (2832,9,'2019-11-20',3,'09:09:00',NULL,162,158,27.3,35.8,5.96,91.7,8.12,13.1,15.3,11,1,96.6,10.13,6.7,364.81,12.2,1.34,NULL,'4th turbidity reading 15.9 NTU');
INSERT INTO `samples` VALUES (2833,12,'2019-11-20',4,'09:40:00',NULL,162,158,27.4,36.4,6.26,96.7,8.09,1.43,1.6,1.43,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'High tide up to pier');
INSERT INTO `samples` VALUES (2834,19,'2019-11-22',1,'07:50:00',NULL,162,158,25.5,34.8,6.28,93.3,8.13,43.4,41.6,43.8,1,84.86,10.38,7.48,652.2,7.3,3.17,NULL,'Rain night before.  Outside surf break');
INSERT INTO `samples` VALUES (2835,22,'2019-11-22',2,'08:25:00',NULL,162,158,23.6,36.2,6.5,98.6,8.19,1.35,1.21,1.23,1,76.9,7.81,2.9,143.67,4.56,0.56,NULL,'Large surf, high winds.  Rain at end of sampling');
INSERT INTO `samples` VALUES (2836,23,'2019-11-22',3,'08:45:00',NULL,162,158,26.2,35.3,6.25,94.2,8.14,1.22,1.2,1.23,1,131.6,11.44,8.95,612.35,60.23,2.33,NULL,'4th turbidity reading listed.  Discarded 1st reading 1.75 NTU.');
INSERT INTO `samples` VALUES (2837,24,'2019-11-22',4,'09:10:00',NULL,162,158,26,35.3,6.44,96.7,8.13,6.4,7.85,7.27,1,135.19,10.58,8.26,520.3,59.19,1.3,NULL,'4th Turbidity reading 6.16NTU');
INSERT INTO `samples` VALUES (2838,25,'2019-11-22',5,'09:25:00',NULL,162,158,25.8,35.4,6.69,100.3,8.14,8.82,8.16,8.8,1,99.29,9.83,6.8,549.93,17.58,2.96,NULL,'4th turbidity reading listed.  Discarded 1st reading 9.41 NTU.');
INSERT INTO `samples` VALUES (2839,1,'2019-11-19',1,'08:20:00',NULL,162,158,26.9,36,6.38,97.8,8.15,1.33,1.4,1.39,1,96.73,8,3.89,236.24,11.13,1.93,NULL,'3-5ft waves, shore break');
INSERT INTO `samples` VALUES (2840,2,'2019-11-19',2,'08:42:00',NULL,162,158,27.1,35.6,6.27,96.1,8.18,10.3,10,9.7,1,140.58,11.95,8.93,532.31,57.34,1.55,NULL,'Monk Seal on beach');
INSERT INTO `samples` VALUES (2841,3,'2019-11-19',3,'09:18:00',NULL,162,158,26.9,36,6.46,99,8.17,3.56,3.39,3.33,1,82.93,9.3,4.11,180.41,5.68,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (2842,5,'2019-11-19',4,'09:33:00',NULL,162,158,27.8,36,6.45,100.4,8.22,1.26,1.27,1.39,1,103.61,9.19,4.94,346.39,17.95,1.54,NULL,'RCB - 4 people straight out - close proximity to sample site in water');
INSERT INTO `samples` VALUES (2843,6,'2019-11-19',5,'09:51:00',NULL,162,158,27.7,36.2,6.33,98.5,8.24,7.7,7.21,7.23,1,89.01,8.37,4.22,227.55,6.7,0.44,NULL,'RWA - 4th turbidity sample 3.08');
INSERT INTO `samples` VALUES (2844,13,'2019-12-05',1,'07:14:00',NULL,162,159,24.9,35.9,5.63,83.4,7.98,1.74,1.85,1.75,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Fairly windy weather today - heavy cloud cover');
INSERT INTO `samples` VALUES (2845,14,'2019-12-05',2,'07:33:00',NULL,162,159,24.9,35.9,6.25,92.6,8.1,2.17,1.99,2.03,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2846,16,'2019-12-05',3,'07:48:00',NULL,162,159,25.4,36.1,6.43,96.2,8.12,5.31,5.05,4.94,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2847,17,'2019-12-05',4,'08:03:00',NULL,162,159,25,36.1,6.64,98.6,8.12,4.77,4.51,4.7,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2848,18,'2019-12-05',5,'08:15:00',NULL,162,159,25.5,35.5,6.41,95.8,8.1,5.88,6.14,6.45,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2849,7,'2019-12-04',1,'08:22:00',NULL,162,159,26.6,34.6,6.39,96.6,8.09,2.77,2.87,2.59,1,78.78,10.11,9.4,851.56,2.63,3.95,NULL,'PFF - stream flowing light');
INSERT INTO `samples` VALUES (2850,8,'2019-12-04',2,'08:51:00',NULL,162,159,26.2,35.5,6.36,96.1,8.1,6.09,6.51,6.43,1,76.87,8.29,7.43,375.83,6.16,2.92,NULL,NULL);
INSERT INTO `samples` VALUES (2851,9,'2019-12-04',3,'09:12:00',NULL,162,159,26.3,35.1,6.17,93.2,8.11,31.2,30.6,29.5,1,113.25,11.01,9.46,624.74,25.15,3.15,NULL,NULL);
INSERT INTO `samples` VALUES (2852,12,'2019-12-04',4,'09:46:00',NULL,162,159,26.8,35.9,6.74,103.1,8.09,0.8,1.03,1.01,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OSF - 4th turbidity reading taken (1.01)');
INSERT INTO `samples` VALUES (2853,19,'2019-12-06',1,'08:00:00',NULL,162,159,25,34.8,6.34,93.6,8.14,30.9,31.3,27.9,1,82.12,11.11,7.78,480.37,3.39,4.07,NULL,'RHL - raining, small amount of stream flow, not sure flowing into ocean - large wave at Keiki bowls but not close to shore');
INSERT INTO `samples` VALUES (2854,22,'2019-12-06',2,'08:40:00',NULL,162,159,25.9,35.9,6.8,102.7,8.19,0.98,1.09,1.01,1,73.32,7.39,3.25,78.46,2,1.27,NULL,'RON - raining a little, heavier here, large waves on shore, waves peak at about 50 feet off shore about 5 feet, wrote turbidity in pH and crossed out (LH)');
INSERT INTO `samples` VALUES (2855,23,'2019-12-06',3,'09:05:00',NULL,162,159,26,35.3,6.78,102,8.17,3.07,2.92,2.87,1,130.02,12.18,8.23,495.4,43.87,3.56,NULL,NULL);
INSERT INTO `samples` VALUES (2856,24,'2019-12-06',4,'09:26:00',NULL,162,159,25.3,34.9,6.82,101,8.12,19.7,19.6,18.9,1,151.09,15.11,12.38,591.33,81.33,2.05,NULL,'RKO - not much rain, waves breaking far outside, shore is surgey, some small leaves in water, no rain');
INSERT INTO `samples` VALUES (2857,25,'2019-12-06',5,'09:48:00',NULL,162,159,25.5,35.4,6.87,102.6,8.16,10.7,11.4,10.8,1,81.41,9.48,5.36,250.63,11.86,2.57,NULL,NULL);
INSERT INTO `samples` VALUES (2858,1,'2019-12-03',1,'08:10:00',NULL,162,159,25.9,36.1,6.71,100.9,8.18,1.4,1.4,1.46,1,79.68,9.31,3.82,89.81,3.86,1.77,NULL,'RNS - Rainy and high surf; DO and salinity probes not reading properly in 1st test at this site/worked 2nd time');
INSERT INTO `samples` VALUES (2859,2,'2019-12-03',2,'08:50:00',NULL,162,159,25.5,35.8,6.78,101.1,8.15,29.4,31.9,30.8,1,217.49,15.91,11.41,366,42.35,7.33,NULL,'RPO - large waves, surfers way out, murky pretty far out, to the surfers');
INSERT INTO `samples` VALUES (2860,3,'2019-12-03',3,'09:18:00',NULL,162,159,26.1,35.7,6.83,103,8.17,2.98,3.27,3.33,1,94.08,11.02,5.98,227.71,13.49,1.81,NULL,'RKS - a lot of water movement, 1-2 ft swells');
INSERT INTO `samples` VALUES (2861,5,'2019-12-03',4,'09:47:00',NULL,162,159,27.1,35.7,6.67,102.2,8.21,1.41,1.58,1.59,1,105.64,9.26,4.96,293.63,26.67,1.58,NULL,'RCB - calm, clear skies');
INSERT INTO `samples` VALUES (2862,6,'2019-12-03',5,'10:13:00',NULL,162,159,27.1,35.4,6.69,102.5,8.22,7.21,6.73,6.97,1,105.73,10.9,5.98,466.27,13.64,1.24,NULL,'RWA - calm; DO and salinity probes not reading properly in first test (repeat problem from RNS), worked the 2nd time (CM note: the problem both times this happened was that when hitting the read button, it appeared to make the measurement and then \'lock\', then one or both measurements would disappear from the screen. This was not seen/reproduced in the lab during pre and post verification for this session and was not seen subsequently on preverification on 12/12/19 as prepared for the all day testing planned for Canoe Beach on 12/15/19, using the same instrument and probes.');
INSERT INTO `samples` VALUES (2863,13,'2020-01-09',1,'07:15:00',NULL,162,160,23.1,35.7,5.91,84.8,8.16,6.94,6.86,7.33,1,91.36,11.46,5.2,203.67,4.41,0.37,NULL,'Very Windy Day.  Showers OFF & ON');
INSERT INTO `samples` VALUES (2864,14,'2020-01-09',2,'07:32:00',NULL,162,160,23,35.8,6.35,90.8,8.21,0.76,0.85,0.7,1,73.31,8.66,3.66,173.54,3.71,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (2865,16,'2020-01-09',3,'07:47:00',NULL,162,160,23.2,35.9,6.54,93.9,8.19,13.4,14.3,14.7,1,76.68,11.18,4.69,163.35,3.85,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2866,17,'2020-01-09',4,'08:06:00',NULL,162,160,23.6,35.8,6.65,95.9,8.19,13.8,14.1,14.6,1,84.68,11.25,6.17,224.47,9.42,0.57,NULL,NULL);
INSERT INTO `samples` VALUES (2867,18,'2020-01-09',5,'08:21:00',NULL,162,160,23.8,35.7,6.59,95.3,8.16,16.2,16.3,16.5,1,90.52,11.62,7.12,429.34,11.87,2.17,NULL,NULL);
INSERT INTO `samples` VALUES (2868,7,'2020-01-08',1,'08:20:00',NULL,162,160,24.8,34,5.69,82.8,8.09,3.19,3.59,3,1,92.23,25.49,23.09,4883.03,7.89,9.41,NULL,'Used 4th. turbidity reading.  3rd reading - 2.76 NTU');
INSERT INTO `samples` VALUES (2869,8,'2020-01-08',2,'08:47:00',NULL,162,160,24.6,35,6.03,88.1,8.14,12.7,14,12.9,1,74.94,12.15,7.91,562.9,9.33,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2870,9,'2020-01-08',3,'09:09:00',NULL,162,160,24.9,34.3,6.13,89.7,8.14,8.92,10.8,10.8,1,93.25,13.37,9.22,647.78,21.1,2.01,NULL,'Campers indicated night time weather was cold and a little rainy.');
INSERT INTO `samples` VALUES (2871,12,'2020-01-08',4,'09:47:00',NULL,162,160,23.7,35.4,6.8,98,8.17,1.38,1.46,1.7,1,83.44,11.19,4.95,216.96,5.26,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (2872,19,'2020-01-10',1,'08:00:00',NULL,162,160,23.3,31.4,6.66,93.7,8.15,6.32,5.95,5.76,1,125.23,11.07,6.46,612.61,20.48,1.9,NULL,'Raining hard.  Took samples to RON to perform testing.');
INSERT INTO `samples` VALUES (2873,22,'2020-01-10',2,'08:29:00',NULL,162,160,24.2,35.7,6.64,97.1,8.22,0.85,0.81,0.8,1,78.65,10.79,4.6,99.38,4.12,1.21,NULL,NULL);
INSERT INTO `samples` VALUES (2874,23,'2020-01-10',3,'08:55:00',NULL,162,160,23.9,34.9,6.45,93.3,8.13,1.46,1.45,1.35,1,128.1,15.84,11.59,738.28,61.33,0.8,NULL,'4th turbidity reading listed.  Discarded 3rd. reading 1.92 NTU.');
INSERT INTO `samples` VALUES (2875,24,'2020-01-10',4,'09:25:00',NULL,162,160,24.2,35,6.41,93.1,8.14,8.54,8.29,8.89,1,119.74,14.43,10.44,459.41,40.25,0.71,NULL,NULL);
INSERT INTO `samples` VALUES (2876,25,'2020-01-10',5,'09:45:00',NULL,162,160,23.6,33.2,6.77,96.5,8.16,11.1,13.4,10.2,1,105.95,11.02,7.38,627.9,32.72,0.28,NULL,'4th turbidity reading listed.  Discarded 3rd. reading 14.9 NTU.');
INSERT INTO `samples` VALUES (2877,1,'2020-01-07',1,'08:11:00',NULL,162,160,23.9,35.4,6.64,95.7,8.17,3.38,3.26,3.33,1,99.26,12.41,7.31,424.05,23.88,1.43,NULL,NULL);
INSERT INTO `samples` VALUES (2878,2,'2020-01-07',2,'08:40:00',NULL,162,160,24.3,32.6,6.53,93.1,8.2,3.57,4.33,4.49,1,347.78,17.39,15.28,1736.61,274.45,3.48,NULL,'Raining during sample collection.  Utilized lid on bucket.');
INSERT INTO `samples` VALUES (2879,3,'2020-01-07',3,'09:00:00',NULL,162,160,24.3,35.2,6.77,98.1,8.19,3.18,3.01,2.84,1,91.29,11.55,5.58,282.65,8.28,1.05,NULL,NULL);
INSERT INTO `samples` VALUES (2880,5,'2020-01-07',4,'09:20:00',NULL,162,160,25.3,35.6,6.34,93.5,8.22,1.7,1.49,1.51,1,136.64,20.54,7.25,462.89,52.43,3.85,NULL,NULL);
INSERT INTO `samples` VALUES (2881,6,'2020-01-07',5,'09:39:00',NULL,162,160,25.2,34.3,6.53,95.5,8.24,0.71,0.76,0.86,1,109.6,15.83,10.97,1262.14,34.93,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2882,13,'2020-01-30',1,'07:15:00',NULL,162,161,23.8,35.7,6.09,88.1,8.05,5.37,5.29,5.17,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2883,14,'2020-01-30',2,'07:35:00',NULL,162,161,24.7,35.8,6.55,96.4,8.08,3.27,3.4,3.44,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Large group of kayakers');
INSERT INTO `samples` VALUES (2884,16,'2020-01-30',3,'07:49:00',NULL,162,161,24.6,35.8,6.46,94.9,8.12,14.6,15.5,15.4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2885,17,'2020-01-30',4,'08:01:00',NULL,162,161,24.8,35.9,6.73,99.2,8.14,6.51,5.8,6.23,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2886,18,'2020-01-30',5,'08:10:00',NULL,162,161,25,35.8,6.68,98.8,8.12,11.9,13,12.7,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2887,7,'2020-01-29',1,'08:12:00',NULL,162,161,24.2,35.5,6.3,91.7,8.1,5.59,5.4,5.51,1,89.52,7.08,5.78,220,1.5,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2888,8,'2020-01-29',2,'08:34:00',NULL,162,161,24.1,35.4,6.4,92.8,8.09,9.94,9.82,9.8,1,87.39,8.79,8.25,366.99,7.18,0.87,NULL,NULL);
INSERT INTO `samples` VALUES (2889,9,'2020-01-29',3,'08:53:00',NULL,162,161,24.5,35.1,6.11,89.1,8.07,10.1,9.36,9.01,1,93.41,8.06,7.45,355.96,18.18,1.35,NULL,NULL);
INSERT INTO `samples` VALUES (2890,12,'2020-01-29',4,'09:30:00',NULL,162,161,24.6,35.8,6.7,98.3,8.07,2.38,2.39,2.4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2891,19,'2020-01-31',1,'08:05:00',NULL,162,161,23.3,34.9,6.58,94,8.12,7.35,7.9,8.68,1,99.41,9.96,7.57,450.73,6.66,0.39,NULL,'4th. Turbidty reading - 8.98');
INSERT INTO `samples` VALUES (2892,22,'2020-01-31',2,'08:48:00',NULL,162,161,24.7,35.9,6.94,102.3,8.15,0.67,0.73,0.69,1,99.67,7.25,4.68,113.02,3.81,0.76,NULL,'Dog');
INSERT INTO `samples` VALUES (2893,23,'2020-01-31',3,'09:14:00',NULL,162,161,24.9,35.2,6.87,101.3,8.14,3.42,3.24,3.23,1,151.15,14.36,12.74,659.17,66.74,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2894,24,'2020-01-31',4,'09:38:00',NULL,162,161,24.5,35,6.87,100.3,8.12,12,13,12.6,1,135.89,11.24,10.58,451.86,57.52,0.76,NULL,NULL);
INSERT INTO `samples` VALUES (2895,25,'2020-01-31',5,'10:08:00',NULL,162,161,25,35.4,7.12,106.1,8.17,4.9,5.19,5.02,1,96.95,7.57,6.45,342.44,17.26,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (2896,1,'2020-01-28',1,'08:16:00',NULL,162,161,24.6,35.8,6.89,100.8,8.15,0.57,0.6,0.62,1,97.1,8.77,5.36,152.63,6.2,0.28,NULL,'Ocean Calm, 1/2 ft. waves');
INSERT INTO `samples` VALUES (2897,2,'2020-01-28',2,'08:44:00',NULL,162,161,24.7,35.1,6.89,100.7,8.13,8.91,8.72,9,1,134.94,12.21,10.81,505.86,37.99,1.32,NULL,NULL);
INSERT INTO `samples` VALUES (2898,3,'2020-01-28',3,'09:10:00',NULL,162,161,24.7,35.8,6.83,100.4,8.15,3.26,3.33,3.49,1,97.97,8.43,6.13,136.89,7.83,0.28,NULL,'Ocean Calm');
INSERT INTO `samples` VALUES (2899,5,'2020-01-28',4,'09:43:00',NULL,162,161,25.4,35.3,6.84,101.4,8.19,2.36,2.05,2.31,1,131.71,10.1,8.17,534.46,54.03,0.41,NULL,'4th. Turbidty Reading - 2.36 NTU.  High bacteria level posted by DOH - Jan 22, 2020');
INSERT INTO `samples` VALUES (2900,6,'2020-01-28',5,'10:01:00',NULL,162,161,25.2,34.9,6.87,101.4,8.2,3.35,3.86,3.66,1,112.52,12.62,11.53,896.89,24.94,0.28,NULL,'1-2 ft waves.  Lots of sand near shore');
INSERT INTO `samples` VALUES (2901,13,'2020-02-20',1,'07:12:00',NULL,162,162,22.1,35.8,6.18,86.4,8.14,2.05,2.05,2.18,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Very windy sampling day!');
INSERT INTO `samples` VALUES (2902,14,'2020-02-20',2,'07:32:00',NULL,162,162,22.8,35.9,6.34,89.8,8.16,1.81,1.63,1.65,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2903,16,'2020-02-20',3,'07:45:00',NULL,162,162,21.9,35.9,6.8,94.8,8.19,16.3,18.4,16.5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2904,17,'2020-02-20',4,'08:00:00',NULL,162,162,21.9,35.8,6.83,95.3,8.2,13.5,13.8,13.4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2905,18,'2020-02-20',5,'08:12:00',NULL,162,162,22.4,35.1,6.83,95.8,8.17,14.8,15.2,16.2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2906,7,'2020-02-19',1,'08:21:00',NULL,162,162,24.1,34.8,6.16,88.2,8.1,7.29,8.52,8.76,1,91.29,11.01,9.61,718.02,6.36,2.93,NULL,'PFF stream path is ~20 feet north of typical flow path');
INSERT INTO `samples` VALUES (2907,8,'2020-02-19',2,'08:51:00',NULL,162,162,24.3,35.5,6.18,89.9,8.12,1.14,1.05,1.03,1,129.55,10.17,8.14,617.19,46.63,4.72,NULL,NULL);
INSERT INTO `samples` VALUES (2908,9,'2020-02-19',3,'09:17:00',NULL,162,162,24.8,34.8,6.15,89.8,8.13,2.83,2.75,2.84,1,97.82,9.59,6.29,192.6,8.49,1.73,NULL,NULL);
INSERT INTO `samples` VALUES (2909,12,'2020-02-19',4,'09:54:00',NULL,162,162,24.1,35.8,6.82,98.9,8.19,2.73,3.37,3.56,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2910,19,'2020-02-21',1,'07:55:00',NULL,162,162,22.7,34.9,6.43,90.6,8.17,6.08,6.85,6.86,1,105.2,12.84,8.94,379.39,4.84,5.6,NULL,NULL);
INSERT INTO `samples` VALUES (2911,22,'2020-02-21',2,'08:40:00',NULL,162,162,23.3,35.7,6.74,96.4,8.21,0.62,0.66,0.61,1,82.99,8.98,4.64,120.63,6.3,0.37,NULL,NULL);
INSERT INTO `samples` VALUES (2912,23,'2020-02-21',3,'09:05:00',NULL,162,162,24,33.6,6.72,96,8.14,1.37,1.38,1.4,1,241.14,21.17,18.91,1505.51,153.68,2.82,NULL,NULL);
INSERT INTO `samples` VALUES (2913,24,'2020-02-21',4,'09:35:00',NULL,162,162,23.6,34.7,6.57,93.8,8.17,4.83,5.04,4.89,1,148.58,13.08,11.31,630,64.13,3.32,NULL,NULL);
INSERT INTO `samples` VALUES (2914,25,'2020-02-21',5,'10:00:00',NULL,162,162,23.7,34.8,6.96,99.7,8.21,2.96,3.54,3.64,1,120.76,9.74,8.01,627.57,42.54,0.62,NULL,'RKV - 4th turbidity reading - 2.65');
INSERT INTO `samples` VALUES (2915,1,'2020-02-19',1,'08:20:00',NULL,162,162,23.6,35.3,7.08,101.4,8.15,1.59,1.98,1.78,1,105.66,13.2,8.84,446.3,19.52,1.45,NULL,'very clear and calm at all sites');
INSERT INTO `samples` VALUES (2916,2,'2020-02-19',2,'08:55:00',NULL,162,162,23.4,33.3,7.02,99.3,8.16,8.19,7.74,8.37,1,316.61,16.94,16.51,1625.58,236.81,3.21,NULL,'very clear and calm at all sites');
INSERT INTO `samples` VALUES (2917,3,'2020-02-19',3,'09:21:00',NULL,162,162,23.4,35.5,7.08,101.3,8.16,1.88,1.74,2.02,1,99.34,9.93,6.4,301.23,10.63,2.97,NULL,'very clear and calm at all sites');
INSERT INTO `samples` VALUES (2918,5,'2020-02-19',4,'09:51:00',NULL,162,162,24.7,35.2,6.93,101.4,8.2,0.88,0.96,0.99,1,156.18,11.87,8.44,669,74.81,1.54,NULL,'very clear and calm at all sites');
INSERT INTO `samples` VALUES (2919,6,'2020-02-19',5,'10:17:00',NULL,162,162,24.6,34.7,6.96,101.5,8.2,1.04,1.26,1.11,1,111.48,14.22,10.51,820.27,24.06,0.42,NULL,'very clear and calm at all sites');
INSERT INTO `samples` VALUES (2920,13,'2020-03-12',1,'07:15:00',NULL,162,163,23.7,35.7,6.26,90.6,8.08,7.95,7.3,7.51,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pretty rainy morning - misty all around');
INSERT INTO `samples` VALUES (2921,14,'2020-03-12',2,'07:35:00',NULL,162,163,24.2,35.6,6.58,96.1,8.11,2.71,2.97,2.73,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pretty rainy morning - misty all around');
INSERT INTO `samples` VALUES (2922,16,'2020-03-12',3,'07:52:00',NULL,162,163,24.3,35.7,6.75,98.9,8.14,12.7,12.5,13.1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pretty rainy morning - misty all around');
INSERT INTO `samples` VALUES (2923,17,'2020-03-12',4,'08:09:00',NULL,162,163,24.5,35.9,6.71,98.8,8.14,6.93,6.76,6.15,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pretty rainy morning - misty all around');
INSERT INTO `samples` VALUES (2924,18,'2020-03-12',5,'08:21:00',NULL,162,163,24.5,35.8,6.66,98,8.14,6.42,5.76,6.68,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pretty rainy morning - misty all around');
INSERT INTO `samples` VALUES (2925,7,'2020-03-11',1,'08:15:00',NULL,162,163,24.5,35.6,5.52,81,8.06,3.05,2.68,2.27,1,74.95,5.75,3.8,203.62,2.63,1.35,NULL,'PFF - stream still flowing~30 feet to north straight to ocean');
INSERT INTO `samples` VALUES (2926,8,'2020-03-11',2,'08:45:00',NULL,162,163,24.3,35,6.02,87.9,8.08,5.98,5.55,6.08,1,96.46,7.36,5.81,412.91,14.52,3.3,NULL,NULL);
INSERT INTO `samples` VALUES (2927,9,'2020-03-11',3,'09:04:00',NULL,162,163,24.8,34.7,6.1,89.6,8.08,6.99,6.19,6.39,1,97.91,7.25,4.81,554.96,20.66,2.78,NULL,NULL);
INSERT INTO `samples` VALUES (2928,12,'2020-03-11',4,'09:35:00',NULL,162,163,25,35.5,6.36,94,8.07,2.59,2.19,2.14,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2929,19,'2020-03-13',1,'07:50:00',NULL,162,163,23.5,34.5,6.87,98.7,8.11,97.3,92.7,96.9,1,106.95,12.95,8.97,532.55,7.65,6.23,NULL,'HNL - 3rd turbidity test was 101, 4th turbidity test was 96.9 LB (changed to 4th value), rough water');
INSERT INTO `samples` VALUES (2930,22,'2020-03-13',2,'08:25:00',NULL,162,163,24.3,35.8,6.96,102.1,8.18,0.8,0.96,0.88,1,87.73,7.58,3.28,77.43,1.97,1.54,NULL,NULL);
INSERT INTO `samples` VALUES (2931,23,'2020-03-13',3,'08:50:00',NULL,162,163,24.4,35.1,6.93,101.4,8.16,3.26,2.8,3.03,1,148.68,12.59,9.93,671.29,60.69,4.16,NULL,'RFS - 4th turbidity test 2.57 (did NOT change to 4th value)');
INSERT INTO `samples` VALUES (2932,24,'2020-03-13',4,'09:10:00',NULL,162,163,24.4,34.9,6.83,99.9,8.12,13.6,14,14.3,1,126.46,11.66,8.5,532.43,49.91,3.02,NULL,NULL);
INSERT INTO `samples` VALUES (2933,25,'2020-03-13',5,'09:25:00',NULL,162,163,24.6,35,7.03,103.1,8.16,9.76,9.2,9.69,1,104.46,9.82,5.89,524.21,27.29,5.54,NULL,NULL);
INSERT INTO `samples` VALUES (2934,1,'2020-03-10',1,'08:19:00',NULL,162,163,24.2,35.7,6.96,101.2,8.18,1.34,1.51,1.27,1,112.88,9.76,5.68,202.91,14.81,6.01,NULL,'RNS - warm, clear, few clouds, sunny; water clear, small waves at shore');
INSERT INTO `samples` VALUES (2935,2,'2020-03-10',2,'08:53:00',NULL,162,163,23.5,34,7.13,101.6,8.15,7.64,8.38,7.42,1,271.1,13.83,13.35,1328.92,183.75,3.8,NULL,'RPO - warm, clear, surfers 60-70 yards out; water clear, calm at shore');
INSERT INTO `samples` VALUES (2936,3,'2020-03-10',3,'09:15:00',NULL,162,163,24.1,35.3,6.97,101.1,8.18,3.15,2.7,2.41,1,87.32,8.65,4.36,205.02,7.39,3.19,NULL,'RKS - 2 surfers 50 ft out, 2 paddle boarders 60-70 yards out...sunny, clear; water clear, calm');
INSERT INTO `samples` VALUES (2937,5,'2020-03-10',4,'09:42:00',NULL,162,163,25.2,34.5,6.73,99.3,8.19,0.96,0.95,0.9,1,182.19,12.26,8.21,814.2,96.97,3.25,NULL,'RCB - no waves, clear, sunny, light breeze; water flat');
INSERT INTO `samples` VALUES (2938,6,'2020-03-10',5,'10:06:00',NULL,162,163,24.8,34.1,6.87,100.2,8.22,1.15,1.14,1.2,1,112.05,13.46,10.92,1148.68,35.37,1.6,NULL,'RWA - calm, clear, sunny; water flat');
INSERT INTO `samples` VALUES (2939,13,'2020-05-14',1,'07:10:00',NULL,162,164,25.6,34.6,5.26,78,8.02,1.59,1.62,1.62,1,141.79,7.69,4.13,209.79,6.58,30.45,NULL,'Meters and probes used were from the southside lab');
INSERT INTO `samples` VALUES (2940,14,'2020-05-14',2,'07:30:00',NULL,162,164,26.8,34.4,6.18,93.6,8.09,2.98,3.27,3.31,1,100.28,5.8,4.15,344.67,6.89,2.08,NULL,'OPM: calm, like mirror lake - did DO/ salinity 2 times (2nd reading: 5.27 mg/L, 78.2%)');
INSERT INTO `samples` VALUES (2941,16,'2020-05-14',3,'07:48:00',NULL,162,164,26.5,34.6,6.4,96.4,8.12,14.2,14,13.2,1,95.51,6.96,3.41,95.71,5.54,3.43,NULL,'OUB: surfers - no one within 100 yards');
INSERT INTO `samples` VALUES (2942,17,'2020-05-14',4,'08:08:00',NULL,162,164,26.8,35.1,6.52,99.1,8.14,6.65,5.63,6.05,1,99.59,16.69,15.21,127.56,6.16,6.7,NULL,NULL);
INSERT INTO `samples` VALUES (2943,18,'2020-05-14',5,'08:20:00',NULL,162,164,26.8,34.9,6.57,99.8,8.13,4.8,4.96,4.95,1,87.05,5.69,4.05,90.19,4.35,1.83,NULL,NULL);
INSERT INTO `samples` VALUES (2944,7,'2020-05-13',1,'08:25:00',NULL,162,164,26.1,34.7,6.17,92.4,8.11,1.5,1.33,1.26,1,96.04,8.62,5.62,199.31,9.27,1.32,NULL,'Meters and probes used were from the southside lab');
INSERT INTO `samples` VALUES (2945,8,'2020-05-13',2,'08:40:00',NULL,162,164,26.4,33.4,5.79,86.7,8.1,5.26,5.17,5.21,1,108.24,9.62,7.9,500.17,13.25,5.77,NULL,'PFF: pH3 meter read 8.19; pH4 meter reach 8.11; switched to pH4 meter for rest of sampling');
INSERT INTO `samples` VALUES (2946,9,'2020-05-13',3,'09:10:00',NULL,162,164,26.4,34.5,6.27,94.4,8.12,3.49,2.92,3.08,1,93.41,10.14,5.91,307.74,3.67,0.62,NULL,'PLT: stream flowing about 150\' N of sampling site; PLH; pH3 read 8.19');
INSERT INTO `samples` VALUES (2947,12,'2020-05-13',4,'09:45:00',NULL,162,164,27.2,34.5,6.7,102.3,8.13,2,2.07,1.94,1,116.8,6.59,4.14,156.96,6.22,5.08,NULL,'PLH time is 8:40; PLT time is 9:10 (may not be clear on field data sheet)');
INSERT INTO `samples` VALUES (2948,19,'2020-05-15',1,'08:15:00',NULL,162,164,25.3,33.5,6.23,91.4,8.13,2.13,1.99,1.63,1,97.07,11.26,7.67,475.9,4.41,6.5,NULL,'RHL: large catamaran w/ engine running 30 ft from sampling site');
INSERT INTO `samples` VALUES (2949,22,'2020-05-15',2,'08:50:00',NULL,162,164,26.2,34.9,6.63,99.7,8.15,0.33,0.35,0.5,1,92.59,6.87,4.51,107.79,7.21,2.33,NULL,'RON; fisherman nearby');
INSERT INTO `samples` VALUES (2950,23,'2020-05-15',3,'09:15:00',NULL,162,164,26.9,33.5,6.44,97.4,8.13,1.84,2.02,2.31,1,174.32,13.92,13.2,946.72,86.06,4.43,NULL,'RKV: construction nearby');
INSERT INTO `samples` VALUES (2951,24,'2020-05-15',4,'09:35:00',NULL,162,164,26.4,33.6,6.36,95.2,8.13,11.2,11,10.9,1,192.38,13.36,11.59,831.13,99.91,4.01,NULL,NULL);
INSERT INTO `samples` VALUES (2952,25,'2020-05-15',5,'09:55:00',NULL,162,164,26.4,34.1,6.45,96.8,8.13,11,11.2,12.4,1,116.12,8.72,8.01,625.32,28.28,4.33,NULL,NULL);
INSERT INTO `samples` VALUES (2953,1,'2020-05-12',1,'08:10:00',NULL,162,164,25,34.4,6.68,97.8,NULL,1.8,1.51,1.78,1,108.93,10.46,7.55,372.83,19.04,2.2,NULL,'Meters and Probes used were from the southside lab.');
INSERT INTO `samples` VALUES (2954,2,'2020-05-12',2,'08:34:00',NULL,162,164,25,30.6,6.88,98.6,NULL,6.88,7.43,7.86,1,525.71,19.49,17.91,2397.48,406.76,3.51,NULL,'RNS: drizzled while sampling; RPD: suspended particles visible in turbidity bottle');
INSERT INTO `samples` VALUES (2955,3,'2020-05-12',3,'09:00:00',NULL,162,164,25.1,34.7,6.74,99.1,NULL,1.53,1.47,1.6,1,106.38,7.94,4.87,141.08,6.96,1.54,NULL,'RKS: fisherman on beach; RCB: lifeguards saving water way more clear');
INSERT INTO `samples` VALUES (2956,5,'2020-05-12',4,'09:20:00',NULL,162,164,26.3,33.7,6.77,101.1,NULL,0.57,0.72,0.77,1,191.91,10.88,7.87,767.93,94.7,1.99,NULL,'RWA: noticed high pH numbers - tried other pH probe #4 and got 8.21');
INSERT INTO `samples` VALUES (2957,6,'2020-05-12',5,'09:38:00',NULL,162,164,25.9,33.2,6.67,98.8,NULL,0.53,0.44,0.49,1,112.45,13.72,9.86,960.38,25.35,2.57,NULL,'Samplers noted high pH numbers and reported them and they will be QA\'d out.');
INSERT INTO `samples` VALUES (2958,13,'2020-06-16',1,'07:06:00',NULL,162,165,25.3,36.4,5.64,84.2,8,1.61,1.84,1.64,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OCO - very fishy odor');
INSERT INTO `samples` VALUES (2959,14,'2020-06-16',2,'07:29:00',NULL,162,165,25.8,36.5,6.25,94.1,8.07,3.97,3.54,3.69,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2960,16,'2020-06-16',3,'07:48:00',NULL,162,165,26.3,36.7,6.59,100.3,8.09,10.8,11.6,12.6,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2961,17,'2020-06-16',4,'08:04:00',NULL,162,165,26.2,36.7,6.8,103.6,8.12,4.17,4.01,4.66,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2962,18,'2020-06-16',5,'08:26:00',NULL,162,165,26,36.4,6.76,102.3,8.13,5.55,4.91,5.5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2963,7,'2020-06-17',1,'08:12:00',NULL,162,165,26.5,36.2,6.35,96.7,8.04,5.85,5.49,5.28,1,103.89,8.72,7.2,311.27,3.35,1.71,NULL,NULL);
INSERT INTO `samples` VALUES (2964,8,'2020-06-17',2,'08:35:00',NULL,162,165,26.4,36.2,6.53,99.3,8.05,2.18,2.28,2.37,1,114.21,8.52,6.29,167.04,10.58,3.04,NULL,NULL);
INSERT INTO `samples` VALUES (2965,9,'2020-06-17',3,'08:55:00',NULL,162,165,26.8,36,6.12,93.6,8.03,6.96,6.38,6.84,1,133.07,10.41,7.52,479.37,20.16,4,NULL,NULL);
INSERT INTO `samples` VALUES (2966,12,'2020-06-17',4,'09:27:00',NULL,162,165,26.9,36.5,6.82,104.6,8.13,2.77,2.85,3.17,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OSF - no nutrients this session');
INSERT INTO `samples` VALUES (2967,19,'2020-06-19',1,'08:20:00',NULL,162,165,25.3,35.3,5.88,87.4,8.08,2.15,1.69,1.86,1,143.9,15.34,11.58,408.37,3.15,4.89,NULL,'RHL - Decay smell; vegetation');
INSERT INTO `samples` VALUES (2968,22,'2020-06-19',2,'08:45:00',NULL,162,165,25.6,36.5,6.89,103.6,8.15,0.42,0.45,0.43,1,117.1,8.82,3.73,97.92,6.11,0.81,NULL,'RON - One dog on beach');
INSERT INTO `samples` VALUES (2969,23,'2020-06-19',3,'09:12:00',NULL,162,165,25.8,34.7,6.72,100.4,8.05,1.48,1.72,1.72,1,256.72,19.79,19.32,1668.25,162.87,1.87,NULL,NULL);
INSERT INTO `samples` VALUES (2970,24,'2020-06-19',4,'09:45:00',NULL,162,165,25.9,35.3,6.51,97.5,8.09,6.62,6.22,6.14,1,167.37,10.53,8.44,631.44,66.41,2.41,NULL,NULL);
INSERT INTO `samples` VALUES (2971,25,'2020-06-19',5,'10:05:00',NULL,162,165,26,35.5,6.21,93.4,8.09,4.8,5.09,4.78,1,127.71,8.88,7.31,658.86,35.93,1.24,NULL,NULL);
INSERT INTO `samples` VALUES (2972,1,'2020-06-18',1,'08:25:00',NULL,162,165,26,34.7,7.03,105.2,8.12,5.7,5.54,5.37,1,182.13,16.74,13.91,1115.03,64.56,2.04,NULL,'All sites: Weather calm, sunny, and not very windy.');
INSERT INTO `samples` VALUES (2973,2,'2020-06-18',2,'08:52:00',NULL,162,165,25.3,34,6.84,100.8,8.12,3.1,3.1,2.58,1,341.22,14.79,13.07,1520.24,229.99,2.54,NULL,NULL);
INSERT INTO `samples` VALUES (2974,3,'2020-06-18',3,'09:16:00',NULL,162,165,26.4,36.3,6.65,101,8.06,4.12,4.15,4.69,1,114.25,9.09,5.05,228.37,6.93,2.69,NULL,NULL);
INSERT INTO `samples` VALUES (2975,5,'2020-06-18',4,'09:50:00',NULL,162,165,26.6,35.4,6.86,104.1,8.16,12.2,12.7,13.1,1,200.65,12.64,10.63,919.78,100.38,3.46,NULL,NULL);
INSERT INTO `samples` VALUES (2976,6,'2020-06-18',5,'10:08:00',NULL,162,165,26.5,35.5,6.85,103.8,8.16,1.64,1.62,1.65,1,121.62,12.82,9.9,739.63,23.8,0.28,NULL,'RWA - Fisherman set up with pole in water.');
INSERT INTO `samples` VALUES (2977,13,'2020-07-09',1,'07:09:00',NULL,162,166,25.8,36.7,5.95,90.1,8.01,6.18,6,6.67,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2978,14,'2020-07-09',2,'07:35:00',NULL,162,166,25.7,36.8,6.27,94.5,8.07,2.87,2.85,2.97,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OCO- 5 Tents on beach');
INSERT INTO `samples` VALUES (2979,16,'2020-07-09',3,'07:53:00',NULL,162,166,25.6,36.7,6.61,99.5,8.08,29.7,29.9,29.3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OUB - Full parking lot - surfers');
INSERT INTO `samples` VALUES (2980,17,'2020-07-09',4,'08:15:00',NULL,162,166,25.4,36.8,6.8,102.1,8.08,4.45,4.19,4.13,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2981,18,'2020-07-09',5,'08:29:00',NULL,162,166,25.9,36.6,6.72,101.5,8.13,11.3,11.7,10.5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OPP- Surf camp');
INSERT INTO `samples` VALUES (2982,7,'2020-07-08',1,'08:15:00',NULL,162,166,26.2,36,6.26,94.8,8.05,2.96,3.05,3.35,1,123.43,13.35,11.69,880.09,9.46,7.29,NULL,NULL);
INSERT INTO `samples` VALUES (2983,8,'2020-07-08',2,'08:42:00',NULL,162,166,26.4,35.5,6.13,92.9,8.07,8.7,10.9,9.75,1,102.76,13.51,10.99,534.45,14.93,16.26,NULL,NULL);
INSERT INTO `samples` VALUES (2984,9,'2020-07-08',3,'09:05:00',NULL,162,166,27,35.8,5.8,88.9,8.05,5.34,5.35,5.23,1,113.34,9.55,6.97,526.69,19.16,8.06,NULL,NULL);
INSERT INTO `samples` VALUES (2985,12,'2020-07-08',4,'09:40:00',NULL,162,166,26.6,36.6,6.78,103.6,8.05,2.39,3.35,3.28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OSF - no nutrients this session');
INSERT INTO `samples` VALUES (2986,19,'2020-07-10',1,'08:10:00',NULL,162,166,25.9,35.7,6.54,98.5,8.13,1.32,1.03,1.32,1,105.42,9.7,6.23,276.91,5.46,4.85,NULL,'RHL - stream bed completely dry');
INSERT INTO `samples` VALUES (2987,22,'2020-07-10',2,NULL,NULL,162,166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RON - Not able to access. Road into Kapalua backed up for about a mile in both directions due to The Ritz giving away food baskets.');
INSERT INTO `samples` VALUES (2988,23,'2020-07-10',3,NULL,NULL,162,166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RFS - Not able to access. Lower Rd. closed for construction at Napili Shores.');
INSERT INTO `samples` VALUES (2989,24,'2020-07-10',4,'09:10:00',NULL,162,166,25.9,35.9,6.42,96.7,8.08,7.47,8.05,7.81,1,141.43,11.16,9.86,578.09,65.66,2.06,NULL,NULL);
INSERT INTO `samples` VALUES (2990,25,'2020-07-10',5,'09:27:00',NULL,162,166,26.1,35.9,5.99,90.5,8.06,7.93,8.25,8.26,1,109.62,8.19,6.51,550.7,31.05,1.69,NULL,NULL);
INSERT INTO `samples` VALUES (2991,1,'2020-07-07',1,'08:05:00',NULL,162,166,26.3,35.6,6.58,99.5,8.08,3.9,3.91,3.76,1,139.1,13.39,10.62,782.42,58.58,4.62,NULL,NULL);
INSERT INTO `samples` VALUES (2992,2,'2020-07-07',2,'08:39:00',NULL,162,166,26.1,31.5,6.74,99.4,8.14,1.8,1.39,1.71,1,612.73,18.77,17.57,2509.46,507.78,4.04,NULL,NULL);
INSERT INTO `samples` VALUES (2993,3,'2020-07-07',3,'09:10:00',NULL,162,166,26,36.6,6.37,96.4,8.11,2.03,2.22,2,1,100.42,8.12,4.68,237.79,14.55,2.07,NULL,NULL);
INSERT INTO `samples` VALUES (2994,5,'2020-07-07',4,'09:40:00',NULL,162,166,26.8,34.9,6.8,103.3,8.17,6.76,6.96,6.66,1,192.1,11.22,9.18,957.46,113.15,3.15,NULL,NULL);
INSERT INTO `samples` VALUES (2995,6,'2020-07-07',5,'09:58:00',NULL,162,166,26.5,34.9,6.76,102.1,8.18,1.84,1.55,1.56,1,116.28,13.32,11.41,1088.64,35.6,4.5,NULL,NULL);
INSERT INTO `samples` VALUES (2996,13,'2020-07-30',1,'07:12:00',NULL,162,167,24.9,36.6,5.62,83.5,8.01,1.54,1.65,1.78,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Changing blank turb vial tomorrow (7/31)');
INSERT INTO `samples` VALUES (2997,14,'2020-07-30',2,'07:31:00',NULL,162,167,25.6,36.7,5.93,89.3,8.06,1.09,1.15,1.28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2998,16,'2020-07-30',3,'07:48:00',NULL,162,167,24.7,36.8,6.44,95.6,8.07,6.37,6.72,6.53,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2999,17,'2020-07-30',4,'08:00:00',NULL,162,167,25,36.7,6.72,100.3,8.12,6.42,6.59,6.91,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3000,18,'2020-07-30',5,'08:15:00',NULL,162,167,25.7,36.4,6.51,98.1,8.11,3.75,3.94,3.74,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3001,7,'2020-07-29',1,'08:27:00',NULL,162,167,27.1,36.2,5.5,84.7,8.02,2.48,2.42,2.76,1,112.99,8.55,6.03,524.33,5.98,2.12,NULL,'Blank turb reading high, scratch on vial');
INSERT INTO `samples` VALUES (3002,8,'2020-07-29',2,'08:51:00',NULL,162,167,27.1,35.4,6.07,93.1,8.06,9.82,10.7,10.4,1,119.13,11.6,9.4,672.01,16.66,2.97,NULL,NULL);
INSERT INTO `samples` VALUES (3003,9,'2020-07-29',3,'09:09:00',NULL,162,167,27.7,35.7,5.78,89.8,8.04,4.52,4.8,4.3,1,110.63,9.69,6.82,522.83,21.67,3.58,NULL,NULL);
INSERT INTO `samples` VALUES (3004,12,'2020-07-29',4,'09:40:00',NULL,162,167,26.7,36.6,6.34,97.2,8.04,1.6,1.6,1.7,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OSF - no nutrients this session');
INSERT INTO `samples` VALUES (3005,19,'2020-07-31',1,'08:00:00',NULL,162,167,25.4,35.7,5.91,88.3,8.1,2.07,1.97,2.43,1,130.33,10.33,6.96,359.13,7.03,5.92,NULL,'RHL - 5th turbidity reading = 2.67');
INSERT INTO `samples` VALUES (3006,22,'2020-07-31',2,'08:35:00',NULL,162,167,25.8,36.5,6.69,101.1,8.16,0.82,0.79,0.82,1,90.41,7.95,4.68,143.45,7.36,0.55,NULL,'RON - Windy, clear sky');
INSERT INTO `samples` VALUES (3007,23,'2020-07-31',3,'08:58:00',NULL,162,167,26.2,35.9,6.34,96.1,8.11,1.22,1.33,1.3,1,137.04,10.23,7.06,457.52,47.01,2.81,NULL,'RFS - Clear sky, high water clarity');
INSERT INTO `samples` VALUES (3008,24,'2020-07-31',4,'09:28:00',NULL,162,167,26.2,35.9,6.27,95.2,8.1,9.65,10.8,10,1,153.84,10.83,8.59,571.59,64.82,1.35,NULL,NULL);
INSERT INTO `samples` VALUES (3009,25,'2020-07-31',5,'09:45:00',NULL,162,167,26.9,36,6.55,100.6,8.09,11.4,11.8,11.9,1,114.63,8.53,6.26,498.11,22.74,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (3010,1,'2020-07-28',1,'08:05:00',NULL,162,167,25.6,35.8,6.58,98.7,8.07,1.39,1.5,1.52,1,127.26,12.92,9.68,611.17,34.98,2.32,NULL,'Napili - Temproary stop in mist, calm/no wave action');
INSERT INTO `samples` VALUES (3011,2,'2020-07-28',2,'08:31:00',NULL,162,167,26,34.6,6.55,98,8.15,2.9,2.61,2.6,1,318.45,14.49,11.95,915.38,202.44,5.13,NULL,'RPO- Overcast, calm/no wave action');
INSERT INTO `samples` VALUES (3012,3,'2020-07-28',3,'08:51:00',NULL,162,167,25,35.9,6.53,96.8,8.04,2.42,2.35,2.76,1,137.72,8.59,6.08,241.29,11.1,11.09,NULL,'RKS - Raining/ sprinkling');
INSERT INTO `samples` VALUES (3013,52,'2020-07-28',4,'09:19:00',NULL,162,167,25.9,36.7,6.54,98.7,8.15,0.74,0.74,0.76,1,94.21,7.9,5.22,143.69,7.76,2.36,NULL,'RKT - Sprinkling when sampling, sewage smell');
INSERT INTO `samples` VALUES (3014,5,'2020-07-28',5,'09:43:00',NULL,162,167,26.4,36.6,6.57,99.9,8.16,0.86,0.78,0.84,1,154.25,9.71,6.72,491.37,54.59,3.28,NULL,'RCB - sewage smell, 2 people fishing');
INSERT INTO `samples` VALUES (3015,6,'2020-07-28',6,'10:00:00',NULL,162,167,26.6,36.4,6.58,100.4,8.17,0.63,0.63,0.67,1,96.57,9.37,5.38,288.73,12.22,0.7,NULL,'RWA - fisherman & misting.');
INSERT INTO `samples` VALUES (3016,7,'2020-08-19',1,'08:22:00',NULL,162,168,26.7,34.8,5.65,85.3,8.04,3.09,2.9,3.17,1,90.06,9.09,5.97,408.12,5.45,3.27,NULL,NULL);
INSERT INTO `samples` VALUES (3017,8,'2020-08-19',2,'08:42:00',NULL,162,168,26.9,34.5,5.53,83.8,8.04,3.93,4.01,3.93,1,93.66,8.44,5.95,329.65,10.41,5.7,NULL,'PLH - Culvert completely covered w/ sand');
INSERT INTO `samples` VALUES (3018,9,'2020-08-19',3,'08:59:00',NULL,162,168,26.9,34.8,5.79,88.1,8.05,1.73,1.85,1.61,1,93.3,6.57,4.23,169.7,9.09,7.5,NULL,NULL);
INSERT INTO `samples` VALUES (3019,14,'2020-08-19',4,'09:34:00',NULL,162,168,26.6,34.6,6.37,96.1,8.09,4.55,4.91,4.63,1,111.92,8.01,6.34,543.12,8.14,4.85,NULL,NULL);
INSERT INTO `samples` VALUES (3020,18,'2020-08-19',5,'09:50:00',NULL,162,168,26.2,34.8,6.66,99.9,8.18,2.68,2.66,2.42,1,89.64,7.6,3.91,158.79,4.01,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (3021,19,'2020-08-20',1,'07:54:00',NULL,162,168,25.7,33.9,5.86,86.8,8.11,2.28,2.47,2.34,1,101.79,11.43,7.83,403.11,6.13,6.93,NULL,'RHL - smells like sulfur');
INSERT INTO `samples` VALUES (3022,22,'2020-08-20',2,'08:29:00',NULL,162,168,26.1,34.9,6.46,96.8,8.14,0.78,0.81,0.8,1,94.99,8.11,4.36,152.09,9.54,2.98,NULL,NULL);
INSERT INTO `samples` VALUES (3023,23,'2020-08-20',3,'08:49:00',NULL,162,168,25.9,31.1,6.56,96,8.07,3.09,3.74,2.93,1,269.72,26.27,25.05,3064.14,192.24,3.25,NULL,'RFS - 4th turbidity reading = 4.52');
INSERT INTO `samples` VALUES (3024,24,'2020-08-20',4,'09:20:00',NULL,162,168,26.1,34,6.24,93,8.08,9.16,9.19,9.79,1,150.04,12.26,9.71,714.06,80.06,3.06,NULL,NULL);
INSERT INTO `samples` VALUES (3025,25,'2020-08-20',5,'09:36:00',NULL,162,168,26.1,33.7,5.42,80.7,8.05,5.03,5.65,5.06,1,122.47,9.69,6.43,684.91,43.23,2.89,NULL,NULL);
INSERT INTO `samples` VALUES (3026,1,'2020-08-18',1,'08:10:00',NULL,162,168,26.2,33.2,6.2,92.3,NULL,2.51,2.72,2.34,1,209.69,15.11,13.97,1337.97,86.02,3.81,NULL,'*Turbidity value not reading <0.10, brand new distilled water');
INSERT INTO `samples` VALUES (3027,2,'2020-08-18',2,'08:35:00',NULL,162,168,26.2,31.8,6.2,91.7,8.16,0.89,0.75,0.94,1,1140.67,44.02,41.58,2262.99,258.94,92.42,NULL,'RPO- Very clear & calm');
INSERT INTO `samples` VALUES (3028,3,'2020-08-18',3,'09:02:00',NULL,162,168,26.7,34.7,6.32,95.5,8.14,1.28,1.52,1.19,1,92.51,8.51,4.75,172.39,14.5,5.4,NULL,NULL);
INSERT INTO `samples` VALUES (3029,52,'2020-08-18',4,'09:30:00',NULL,162,168,26.5,34.6,6.4,96.6,8.14,1.25,1.71,1.21,1,85.17,8.2,4.97,213.71,3.62,5.55,NULL,NULL);
INSERT INTO `samples` VALUES (3030,5,'2020-08-18',5,'09:55:00',NULL,162,168,27.4,34.2,6.49,99.2,8.18,5.92,5.59,5.87,1,176.71,11.07,7.68,742.12,78.12,5.42,NULL,NULL);
INSERT INTO `samples` VALUES (3031,6,'2020-08-18',6,'10:15:00',NULL,162,168,26.9,33.2,6.45,97.2,8.18,1.25,1.2,1.25,1,117.73,14.81,12.24,1253.7,40.22,2.08,NULL,NULL);
INSERT INTO `samples` VALUES (3032,7,'2020-09-10',1,'08:20:00',NULL,162,169,27,33.8,6.29,95.3,8.03,5.99,6.09,5.84,1,96.15,9.75,7.96,906.2,6.64,2.05,NULL,NULL);
INSERT INTO `samples` VALUES (3033,8,'2020-09-10',2,'08:46:00',NULL,162,169,27.3,34.8,6.28,96.2,8.03,15.2,16,15.8,1,104.62,8.8,7.35,482.88,8.19,1.34,NULL,NULL);
INSERT INTO `samples` VALUES (3034,9,'2020-09-10',3,'09:02:00',NULL,162,169,27.4,34.3,5.89,90.1,8.03,34.4,34.7,35.9,1,117.41,8.06,4.89,510.95,15.41,3.88,NULL,'Collection near shore vs. farther out to buoy (high tide)');
INSERT INTO `samples` VALUES (3035,14,'2020-09-10',4,'09:30:00',NULL,162,169,26.5,35.2,6.43,97.5,8.06,5.8,5.63,5.58,1,87.75,5,3.1,290.75,5.91,1.12,NULL,NULL);
INSERT INTO `samples` VALUES (3036,18,'2020-09-10',5,'09:47:00',NULL,162,169,26.5,35.1,6.64,100.5,8.14,7.53,7.39,7.67,1,93.71,6.66,3.07,141.19,6.09,1.54,NULL,'*Post sampling scratch on vial, new one used on 9/11');
INSERT INTO `samples` VALUES (3037,19,'2020-09-11',1,'08:02:00',NULL,162,169,26,34.7,6.18,92.6,8.11,0.84,0.69,0.73,1,102.85,7.85,4.08,269,6.27,2.56,NULL,'RHL - Sailboat in bay, 4th turbidity reading - 1.10');
INSERT INTO `samples` VALUES (3038,22,'2020-09-11',2,'08:35:00',NULL,162,169,26.2,35,6.72,101.2,8.14,0.7,0.85,0.69,1,107.51,6.94,2.82,128.31,5.69,3.16,NULL,NULL);
INSERT INTO `samples` VALUES (3039,23,'2020-09-11',3,'08:55:00',NULL,162,169,26.7,34.4,6.66,100.8,8.1,3.57,3.25,3.32,1,145.67,12.2,9.73,621.08,41.14,2.51,NULL,NULL);
INSERT INTO `samples` VALUES (3040,24,'2020-09-11',4,'09:26:00',NULL,162,169,26.6,34.1,6.37,95.7,8.05,13.2,13.2,12.9,1,140.37,11.69,8.19,610.25,54.58,2.03,NULL,NULL);
INSERT INTO `samples` VALUES (3041,25,'2020-09-11',5,'09:42:00',NULL,162,169,26.8,34.8,6.65,100.9,8.09,29.3,29.3,29.3,1,107.44,9.02,5.62,325.53,12.22,0.41,NULL,'Can\'t tell is first reading is 24.3 or 29.3');
INSERT INTO `samples` VALUES (3042,1,'2020-09-09',1,'08:25:00',NULL,162,169,26.1,34.4,6.38,95.7,8.1,2.75,2.44,2.78,1,132.44,10.03,5.99,393.17,18.84,3.15,NULL,'Changed HQ40d1 batteries');
INSERT INTO `samples` VALUES (3043,2,'2020-09-09',2,'08:53:00',NULL,162,169,26.5,34.2,6.45,97.2,8.14,3.61,3.48,3.57,1,183.57,11.56,9.23,649.02,86.65,2.69,NULL,'Two turtles in water');
INSERT INTO `samples` VALUES (3044,3,'2020-09-09',3,'09:15:00',NULL,162,169,26.1,34.8,6.05,91,8.03,2.88,2.78,2.74,1,108.39,7.42,3.86,174.38,6.47,0.92,NULL,NULL);
INSERT INTO `samples` VALUES (3045,52,'2020-09-09',4,'09:38:00',NULL,162,169,26.6,34.9,6.66,101,8.18,0.61,0.54,0.59,1,108.13,7.03,3.09,86.71,3.57,0.56,NULL,NULL);
INSERT INTO `samples` VALUES (3046,5,'2020-09-09',5,'10:02:00',NULL,162,169,27.2,34.6,6.92,105.9,8.19,5.34,5.69,5.62,1,151.27,9.68,6.1,416.36,43.52,4.64,NULL,NULL);
INSERT INTO `samples` VALUES (3047,6,'2020-09-09',6,'10:18:00',NULL,162,169,27.5,34.8,6.57,101.1,8.17,1.01,0.98,1.02,1,113.8,8.98,4.39,271.57,9.76,0.35,NULL,'TMO: lab name (Tara Millers Ohana).');
INSERT INTO `samples` VALUES (3048,7,'2020-09-30',1,'08:23:00',NULL,162,170,27.3,33.2,6.07,92,8.05,3.31,3.31,3.42,1,103.92,8.92,5.09,370.36,7.37,3.16,NULL,'1/2 ft waves. 6 surfers by harbor');
INSERT INTO `samples` VALUES (3049,8,'2020-09-30',2,'08:44:00',NULL,162,170,27.6,34.4,5.61,86.1,8.07,13.5,12.5,13.2,1,96.17,8.48,5.4,312.98,9.31,0.28,NULL,'flat & turbid water');
INSERT INTO `samples` VALUES (3050,9,'2020-09-30',3,'08:59:00',NULL,162,170,27.6,34.6,6.63,102,8.12,1.72,1.64,1.34,1,111.09,6.53,2.62,315.94,17.54,2.37,NULL,'flat & turbid water');
INSERT INTO `samples` VALUES (3051,12,'2020-09-30',4,'09:29:00',NULL,162,170,28.1,35.1,6.42,99.8,8.02,4.19,3.84,4.93,1,96.87,7.8,4.19,162.75,6.77,0.62,NULL,'flat, 5 people, 1 dog in the water');
INSERT INTO `samples` VALUES (3052,14,'2020-09-30',5,'09:44:00',NULL,162,170,28.6,35,6.17,96.5,8.06,3.24,3.23,3.43,1,103.94,6.08,3.5,322.97,8.05,4.92,NULL,'flat');
INSERT INTO `samples` VALUES (3053,18,'2020-09-30',6,'10:00:00',NULL,162,170,28.6,35.1,6.57,103,8.14,4.84,5.39,5.05,1,102.16,6.81,3.19,99.25,5,0.28,NULL,'1/2 ft waves. Campers & cars');
INSERT INTO `samples` VALUES (3054,19,'2020-10-01',1,'08:00:00',NULL,162,170,26.3,33.6,6.55,98.1,8.11,56.9,64,60.7,1,121.58,15.2,12.52,717.24,13.81,4.96,NULL,'Fourth turbidity reading: 53.1');
INSERT INTO `samples` VALUES (3055,22,'2020-10-01',2,'08:38:00',NULL,162,170,27.3,35.1,6.58,101,8.16,1.46,1.57,1.49,1,103.36,9.26,4.24,85.57,6.28,0.98,NULL,'*West Maui Fire by Kapalua airport yesterday');
INSERT INTO `samples` VALUES (3056,23,'2020-10-01',3,'08:55:00',NULL,162,170,27.4,34.4,6.73,103.2,8.16,4.71,4.7,4.9,1,111.82,11.4,7.71,466.67,29.89,0.87,NULL,NULL);
INSERT INTO `samples` VALUES (3057,24,'2020-10-01',4,'09:20:00',NULL,162,170,26.8,34.2,6.55,99.2,8.08,9.33,9.15,9.2,1,156.8,13.17,10.02,601.61,65.62,1.82,NULL,NULL);
INSERT INTO `samples` VALUES (3058,25,'2020-10-01',5,'09:40:00',NULL,162,170,27.9,34.9,6.96,107.7,8.21,6.56,6.49,6.74,1,117.04,8.84,5.4,261.18,15.59,1.52,NULL,NULL);
INSERT INTO `samples` VALUES (3059,1,'2020-09-29',1,'08:13:00',NULL,162,170,26.7,33.5,6.71,101.1,8.1,3.52,3.29,3.58,1,130.95,13.84,11.09,948.24,44.25,0.91,NULL,'Recently rained, 1/2 ft waves.');
INSERT INTO `samples` VALUES (3060,2,'2020-09-29',2,'08:44:00',NULL,162,170,26.9,33.2,6.56,99,8.15,5.36,5.41,5.58,1,264.41,13.75,12.48,1238.35,181.59,1.41,NULL,'1/2 - 1 ft. waves');
INSERT INTO `samples` VALUES (3061,3,'2020-09-29',3,'09:07:00',NULL,162,170,26.9,34.8,6.48,98.5,8.12,3.03,3.13,2.9,1,110.62,9.13,4.63,180.6,10.14,0.98,NULL,'flat, slightly brown water');
INSERT INTO `samples` VALUES (3062,52,'2020-09-29',4,'09:29:00',NULL,162,170,27.4,34.9,6.66,102.3,8.18,1.41,1.47,1.32,1,101.5,8.56,4.23,142.28,5.92,0.28,NULL,'flat, no waves');
INSERT INTO `samples` VALUES (3063,5,'2020-09-29',5,'09:57:00',NULL,162,170,27.6,33.9,6.72,102.9,8.21,6.11,5.78,5.72,1,185.21,10.97,6.57,781.22,94.58,1.01,NULL,'flat, no waves');
INSERT INTO `samples` VALUES (3064,6,'2020-09-29',6,'10:15:00',NULL,162,170,27.6,34.1,6.56,100.7,8.19,3.32,3.36,3.19,1,127.77,13.31,9.59,771.02,23.36,0.29,NULL,'shore break');
INSERT INTO `samples` VALUES (3065,7,'2020-10-21',1,'08:15:00',NULL,162,171,27,33.8,6.31,95.7,8.08,4.29,4.44,4.95,1,89.14,12.07,10.79,1056.15,6.53,3.54,NULL,'Stream flowing steadily, super high tide (undermining shore vines)');
INSERT INTO `samples` VALUES (3066,8,'2020-10-21',2,'08:36:00',NULL,162,171,26.9,34.9,6.3,96.2,8.08,11.9,11.9,11.2,1,75.86,8.77,6.58,270.5,7.96,1.59,NULL,NULL);
INSERT INTO `samples` VALUES (3067,9,'2020-10-21',3,'08:55:00',NULL,162,171,26.8,34.4,6.11,92.8,8.05,15.4,15.4,14.8,1,88.31,8.75,6.57,419.92,15,3.84,NULL,NULL);
INSERT INTO `samples` VALUES (3068,14,'2020-10-21',4,'09:24:00',NULL,162,171,27.7,35,6.05,93.6,8.05,2.97,2.81,2.91,1,76.17,6.09,3.71,316.12,5.21,1.1,NULL,NULL);
INSERT INTO `samples` VALUES (3069,18,'2020-10-21',5,'09:39:00',NULL,162,171,27.9,35,6.24,96.7,8.09,4.43,4.66,4.46,1,69.44,5.83,3.49,132.75,5.53,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3070,19,'2020-10-22',1,'08:00:00',NULL,162,171,25.4,34.9,6.21,92.3,8.13,0.42,0.46,0.43,1,88.5,8.61,3.51,123.47,4.68,2.2,NULL,'water very clear, little wave action');
INSERT INTO `samples` VALUES (3071,22,'2020-10-22',2,'08:35:00',NULL,162,171,26.5,35,6.52,98.9,8.13,0.75,0.76,0.74,1,76.25,7.37,3.29,125.7,6.19,0.59,NULL,'clear skies, shore break waves');
INSERT INTO `samples` VALUES (3072,23,'2020-10-22',3,'08:55:00',NULL,162,171,27,35,6.41,98.1,8.1,1.62,1.62,1.56,1,85.56,9.94,4.98,158.98,8.09,5.63,NULL,'water is very clear, small 1 in fish in sampling area');
INSERT INTO `samples` VALUES (3073,24,'2020-10-22',4,'09:15:00',NULL,162,171,26.9,34.7,5.91,89.9,8.04,8.47,8.58,8.4,1,83.3,9.94,6.84,239.32,22.26,1.45,NULL,'road construction');
INSERT INTO `samples` VALUES (3074,25,'2020-10-22',5,'09:30:00',NULL,162,171,27.3,34.5,6.14,93.9,8.03,9.29,9.85,9.07,1,76.11,10.3,6.62,345.06,9.57,0.44,NULL,'soapy-looking foam on surface (picture taken); fourth turbidity reading is 10.01');
INSERT INTO `samples` VALUES (3075,1,'2020-10-20',1,'08:10:00',NULL,162,171,27,35.1,6.3,96.5,8.08,1.41,1.46,1.51,1,157.2,11.63,7.66,190.39,10.03,8.92,NULL,'calm, 1 honu, 1 snorkeler, clear');
INSERT INTO `samples` VALUES (3076,2,'2020-10-20',2,'08:51:00',NULL,162,171,27.3,35,6.25,96.1,8.11,4.79,4.82,4.99,1,84.73,9.26,6.48,232.29,12.63,2.64,NULL,'No people, small wave action, sunny');
INSERT INTO `samples` VALUES (3077,3,'2020-10-20',3,'09:21:00',NULL,162,171,26.9,34.9,6.34,96.7,8.05,4.08,4.07,3.99,1,138.77,8.41,5.2,158.93,7.91,7.35,NULL,'2 fishing poles');
INSERT INTO `samples` VALUES (3078,52,'2020-10-20',4,'09:55:00',NULL,162,171,27.7,34.8,6.35,98.1,8.13,1.71,1.83,1.51,1,103.26,10.04,7.43,335.5,10.38,6.93,NULL,'ebbing tide/surge, calm');
INSERT INTO `samples` VALUES (3079,5,'2020-10-20',5,'10:15:00',NULL,162,171,27.7,35,6.59,101.9,8.17,1.53,1.61,1.49,1,83.36,8.38,4.3,263.1,15.08,2.66,NULL,'rolling waves, clear, kicked up sand');
INSERT INTO `samples` VALUES (3080,6,'2020-10-20',6,'10:40:00',NULL,162,171,27.9,34.9,6.41,99.5,8.17,3.62,3.59,3.78,1,90.67,10.48,6.5,372.61,8,2.75,NULL,NULL);
INSERT INTO `samples` VALUES (3081,7,'2020-11-11',1,'08:11:00',NULL,162,172,26,32.6,5.66,83.6,7.98,1.18,1.58,1.35,1,106.18,10.22,9.09,990.66,2.79,2.18,NULL,'DO Temp: 26.2, pH Temp: 26.1, small waves, calm water, small breeze, partly cloudy');
INSERT INTO `samples` VALUES (3082,8,'2020-11-11',2,'08:30:00',NULL,162,172,26.1,34.2,5.83,86.9,8.03,3.68,3.92,3.96,1,119.89,9.74,5.55,466.83,15.2,3.51,NULL,'DO Temp: 26.3, pH Temp: 26.2, partly cloudy');
INSERT INTO `samples` VALUES (3083,9,'2020-11-11',3,'08:48:00',NULL,162,172,26.1,34.2,5.95,88.7,8.05,6.68,6.77,7.23,1,104.58,7.73,4.44,406.89,15.04,5.51,NULL,'DO Temp: 26.3, pH Temp: 26.2, calm water');
INSERT INTO `samples` VALUES (3084,12,'2020-11-11',4,'09:15:00',NULL,162,172,26,35,6.53,97.6,8.06,1.32,1.35,1.42,1,106.78,7.35,3.6,104.34,7.01,1.97,NULL,'DO Temp: 26.2, pH Temp: 26.1, very sunny, small waves, but bigger than normal');
INSERT INTO `samples` VALUES (3085,14,'2020-11-11',5,'09:32:00',NULL,162,172,25.7,35,6.22,92.6,8.07,1.04,1.02,1.12,1,101.11,6.28,2.94,189.46,5.13,0.68,NULL,'DO Temp: 25.9, pH Temp: 25.8, partly cloudy/little no waves, 4 divers');
INSERT INTO `samples` VALUES (3086,18,'2020-11-11',6,'09:46:00',NULL,162,172,25.8,34.5,6.62,98.5,8.1,13.5,13.9,13.9,1,107.67,9.62,5.9,632.84,13.87,0.41,NULL,'DO Temp: 26.0, pH Temp: 25.9, very windy!');
INSERT INTO `samples` VALUES (3087,19,'2020-11-12',1,'07:55:00',NULL,162,172,24.9,33.8,6.34,92.3,8.11,0.88,0.99,0.91,1,119.73,8.32,5.45,453.28,7.62,1.79,NULL,'DO Temp: 25.1, pH Temp 25.0, smells like sulfur');
INSERT INTO `samples` VALUES (3088,22,'2020-11-12',2,'08:25:00',NULL,162,172,25.3,34.7,6.72,99.2,8.14,0.91,0.86,0.81,1,93.75,8.68,4.98,180.76,10.07,0.28,NULL,'DO Temp: 25.5, pH Temp 25.4, dog on beach & medium surf');
INSERT INTO `samples` VALUES (3089,23,'2020-11-12',3,'08:46:00',NULL,162,172,25.3,33.6,6.59,96.6,8.07,1.2,1.2,1.17,1,174.6,14.76,13.42,936.98,92.23,1.11,NULL,'DO Temp: 25.5, pH Temp: 25.5, calm');
INSERT INTO `samples` VALUES (3090,24,'2020-11-12',4,'09:06:00',NULL,162,172,25.3,34.2,6.48,95.1,8.08,6.23,6.12,6.3,1,142.75,12.11,10.72,512.18,63.56,1.14,NULL,'DO Temp: 25.5, pH Temp: 25.4');
INSERT INTO `samples` VALUES (3091,25,'2020-11-12',5,'09:24:00',NULL,162,172,24.8,34.2,6.55,95.4,8.04,6.96,8.38,6.91,1,100.9,10.05,8.84,539.95,19.51,0.4,NULL,'DO Temp: 25.0, pH Temp: 24.9, calm, 4th turbidity reading: 8.17');
INSERT INTO `samples` VALUES (3092,1,'2020-11-10',1,'08:16:00',NULL,162,172,25.3,34.1,6.56,96.5,8.06,2.28,1.98,2.15,1,115.99,11.02,9.05,621.15,27.52,3.47,NULL,'DO Temp: 25.5, pH Temp: 24.6');
INSERT INTO `samples` VALUES (3093,2,'2020-11-10',2,'08:44:00',NULL,162,172,25.9,33,6.55,96.7,8.15,3.69,3.87,3.29,1,354.82,14.15,13.99,1316.7,265.51,2.4,NULL,'DO Temp: 26.0, pH Temp: 26.0');
INSERT INTO `samples` VALUES (3094,3,'2020-11-10',3,'09:10:00',NULL,162,172,25.7,34.6,6.74,100,8.12,1.67,1.89,1.88,1,91.07,6.94,4.77,167.82,5.76,0.28,NULL,'DO Temp: 25.9, pH Temp: 25.8');
INSERT INTO `samples` VALUES (3095,52,'2020-11-10',4,'09:37:00',NULL,162,172,26.7,35,6.71,101.5,8.12,1.44,1.45,1.53,1,95.84,8.25,4.67,107.08,5.57,0.28,NULL,'DO Temp: 26.8, pH Temp: 26.8');
INSERT INTO `samples` VALUES (3096,5,'2020-11-10',5,'10:00:00',NULL,162,172,26.9,34.5,6.77,102.4,8.18,0.82,0.92,0.91,1,140.59,9.45,6,485.18,53.02,2.51,NULL,'DO Temp: 27.0, pH Temp: 27.1, 1 SUP, 2 ppl paddling, 1 honu');
INSERT INTO `samples` VALUES (3097,6,'2020-11-10',6,'10:17:00',NULL,162,172,27.2,34.5,6.43,97.8,8.16,1.91,1.84,1.86,1,105.51,9.75,6.29,415.39,14.28,0.28,NULL,'DO Temp: 27.3, pH Temp: 27.3');
INSERT INTO `samples` VALUES (3098,7,'2020-12-02',1,'08:21:00',NULL,162,173,25.2,34.7,6.68,98.4,8.13,2.89,3.52,2.99,1,513.86,29.41,25.17,99.45,9.67,11.85,NULL,'4th turbidity: 2.82; dog present');
INSERT INTO `samples` VALUES (3099,8,'2020-12-02',2,'08:45:00',NULL,162,173,24.9,34.8,6.69,98,8.13,14.6,14.4,14,1,94.75,11.55,8.2,420.84,4.77,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3100,9,'2020-12-02',3,'09:02:00',NULL,162,173,25,34.6,6.07,89,8.08,15,15.8,15.3,1,109.42,11.6,8.69,529.4,16.32,2.41,NULL,NULL);
INSERT INTO `samples` VALUES (3101,12,'2020-12-02',4,'09:31:00',NULL,162,173,25.3,35.1,6.49,96.1,8.09,1.75,1.66,1.85,1,101.6,8.1,5.68,148.07,8.85,0.97,NULL,'dog present');
INSERT INTO `samples` VALUES (3102,14,'2020-12-02',5,'09:47:00',NULL,162,173,25.8,35,6.38,95.1,8.1,1.07,1.15,1.06,1,111.02,9.23,4.16,278.56,7.92,0.49,NULL,NULL);
INSERT INTO `samples` VALUES (3103,18,'2020-12-02',6,'10:02:00',NULL,162,173,26.4,35.2,6.81,102.5,8.16,8.98,8.52,8.61,1,96.09,7.53,3.83,116.71,4.95,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3104,19,'2020-12-03',1,'07:56:00',NULL,162,173,24.5,35.2,6.67,97.2,8.1,41.9,42.3,43.5,1,105.27,11.72,9.27,272.67,10.01,2.75,NULL,'the area where the stream meets the ocean is cleared of rocks (sign of heavy stream flow to the ocean?)');
INSERT INTO `samples` VALUES (3105,22,'2020-12-03',2,'08:30:00',NULL,162,173,25.5,35.4,6.8,101,8.15,1.7,1.74,1.72,1,97.25,8.17,4.43,68.96,8.07,0.84,NULL,NULL);
INSERT INTO `samples` VALUES (3106,23,'2020-12-03',3,'08:48:00',NULL,162,173,25.8,35.2,6.86,102.2,8.15,3.51,3.72,3.85,1,103.08,10.99,8.76,203.08,13.93,1.18,NULL,'very sunny and larger waves than normal');
INSERT INTO `samples` VALUES (3107,24,'2020-12-03',4,'09:11:00',NULL,162,173,25,34.9,6.66,97.6,8.08,15.7,16.2,15.6,1,122.44,13.44,12.35,379.16,42.98,2.49,NULL,'4th turbidity: 16.13');
INSERT INTO `samples` VALUES (3108,25,'2020-12-03',5,'09:25:00',NULL,162,173,25.6,35.1,6.9,102.3,8.13,6.65,5.62,6.19,1,96.83,8.86,5.8,173.14,9.42,0.28,NULL,'debris on beach, construction on street');
INSERT INTO `samples` VALUES (3109,1,'2020-12-01',1,'08:17:00',NULL,162,173,24.9,35.2,6.82,100.1,8.13,1.02,1.04,1.06,1,110.91,8.73,5.78,221.96,15.19,1.54,NULL,'calm and clear day (all sites)');
INSERT INTO `samples` VALUES (3110,2,'2020-12-01',2,'08:50:00',NULL,162,173,25.3,34.4,6.76,99.3,8.11,11.7,11.1,12.3,1,155.48,14.07,13.05,769.08,74.08,1.04,NULL,'\'');
INSERT INTO `samples` VALUES (3111,3,'2020-12-01',3,'09:14:00',NULL,162,173,25.4,35,6.8,100.7,8.15,3.37,3.17,3.18,1,98.52,8.81,5,116.65,9.26,0.38,NULL,'1 girl doing yoga, 1 man walking; \'');
INSERT INTO `samples` VALUES (3112,52,'2020-12-01',4,'09:38:00',NULL,162,173,25.9,35.1,6.61,98.6,8.16,1.75,2,1.82,1,106.9,10.83,5.72,143.95,8.55,0.75,NULL,'\'');
INSERT INTO `samples` VALUES (3113,5,'2020-12-01',5,'10:15:00',NULL,162,173,26.3,33.3,6.93,103,8.18,1.58,1.01,1.27,1,250.37,12.54,10.44,1296.25,159.97,3.32,NULL,'\'');
INSERT INTO `samples` VALUES (3114,6,'2020-12-01',6,'10:21:00',NULL,162,173,26.3,34.3,6.61,98.9,8.18,1.42,1.36,1.55,1,111.01,11.62,7.08,556.98,22.12,0.59,NULL,'\'');
INSERT INTO `samples` VALUES (3115,7,'2020-12-16',1,'08:18:00',NULL,162,174,25.4,34.1,6.13,90.8,8.04,9.67,9.82,9.46,1,104.07,11.92,10.51,770.89,6.95,1.68,NULL,NULL);
INSERT INTO `samples` VALUES (3116,8,'2020-12-16',2,'08:38:00',NULL,162,174,25.5,34.6,5.99,88.9,8.03,12.3,12.5,12.5,1,97.85,9.41,7.47,368.14,10.23,3.27,NULL,NULL);
INSERT INTO `samples` VALUES (3117,9,'2020-12-16',3,'08:53:00',NULL,162,174,25.9,34.7,5.6,83.6,8.02,9.76,9.16,9.82,1,102.79,8.08,5.2,259.69,10.35,1.43,NULL,NULL);
INSERT INTO `samples` VALUES (3118,12,'2020-12-16',4,'09:25:00',NULL,162,174,25.7,35,5.97,88.9,8,2.46,2.51,2.81,1,120.06,9.69,6.74,149.9,13.71,2.54,NULL,'Filming in progress, 2 jet skies in water. 3 guys in boat or on shore.');
INSERT INTO `samples` VALUES (3119,14,'2020-12-16',5,'09:36:00',NULL,162,174,25.7,35,6.06,90.6,8.06,1.16,1.31,1.16,1,87.62,5.74,4.09,231.86,4.83,0.87,NULL,NULL);
INSERT INTO `samples` VALUES (3120,18,'2020-12-16',6,'09:58:00',NULL,162,174,26.6,35,6.67,101,8.11,11.6,11.3,11.7,1,92.32,7.59,4.84,229.06,6.26,0.28,NULL,'Site moved 80ft to right of previous site. Large rocks in water. Water was tossing rocks & hurting volunteers.');
INSERT INTO `samples` VALUES (3121,19,'2020-12-17',1,'08:05:00',NULL,162,174,24.9,34.8,6.41,94.4,8.12,8.58,8.82,8.57,1,99.65,9.63,5.84,169.54,5.74,1.61,NULL,NULL);
INSERT INTO `samples` VALUES (3122,22,'2020-12-17',2,'08:45:00',NULL,162,174,25.3,35.1,6.71,99.6,8.14,1.51,1.24,1.2,1,94.31,8.08,3.88,105.82,7.9,0.28,NULL,'4th turbidity reading: 1.08');
INSERT INTO `samples` VALUES (3123,23,'2020-12-17',3,'09:05:00',NULL,162,174,25.4,35,6.7,99.5,8.11,2.32,2.2,2.85,1,103.06,10.16,6.48,218.65,14.1,1.5,NULL,NULL);
INSERT INTO `samples` VALUES (3124,24,'2020-12-17',4,'09:24:00',NULL,162,174,25.3,34.7,6.51,96.4,8.08,8.6,9.96,8.47,1,109.21,10.77,9.27,292.45,23.99,1.06,NULL,'Water is pretty brown/murky 4th turbidity reading 7.90,9.02,8.48?');
INSERT INTO `samples` VALUES (3125,25,'2020-12-17',5,'09:40:00',NULL,162,174,25.5,34.7,6.73,100,8.12,6.99,7.39,6.7,1,101.05,8.24,5.64,205.08,11.26,1.17,NULL,NULL);
INSERT INTO `samples` VALUES (3126,1,'2020-12-15',1,'08:16:00',NULL,162,174,25.3,35.1,6.65,98.7,8.08,1.06,1.61,1.4,1,109.84,8,5.42,141.57,10.72,2.69,NULL,'Small waves near shore, sunny, pavement wet (rained recently)');
INSERT INTO `samples` VALUES (3127,2,'2020-12-15',2,'08:43:00',NULL,162,174,25.2,34.6,6.59,97.2,8.1,5.5,5.28,5.24,1,142.63,11.3,10.1,554.85,48.6,2.96,NULL,'Waves breaking 100\' out, overcast');
INSERT INTO `samples` VALUES (3128,3,'2020-12-15',3,'09:03:00',NULL,162,174,25.4,35,6.58,97.7,8.1,2.95,2.9,2.63,1,113.46,9.22,6.97,112.75,12.1,1.1,NULL,'Overcast, small waves, families on beach');
INSERT INTO `samples` VALUES (3129,52,'2020-12-15',4,'09:25:00',NULL,162,174,25.9,34.4,6.57,98,8.11,2.25,2.5,2.77,1,107.15,13.57,11.29,486.28,14.61,0.74,NULL,'Overcast, relatively flat ocean, people walking back & forth');
INSERT INTO `samples` VALUES (3130,5,'2020-12-15',5,'09:50:00',NULL,162,174,25.9,34.4,6.7,100.1,8.13,1.6,1.72,1.66,1,147.84,11.32,8.64,623.66,54.24,1.43,NULL,'Sunny, 1-1.5 ft waves, road maintenance next to beach');
INSERT INTO `samples` VALUES (3131,6,'2020-12-15',6,'10:10:00',NULL,162,174,26.1,34,6.61,98.9,8.13,3.26,3.96,3.15,1,111.04,14.54,11.89,977.05,24.99,0.74,NULL,'Smells like trash, shore break waves');
INSERT INTO `samples` VALUES (3132,7,'2021-01-13',1,'08:09:00',NULL,162,175,25.1,35.4,6.57,96.7,8.15,2.98,2.96,3.08,1,102.34,9.3,5.25,152,8.27,0.31,NULL,'*Rained earlier today at all sites, wet roads');
INSERT INTO `samples` VALUES (3133,8,'2021-01-13',2,'08:33:00',NULL,162,175,25,34.8,6.49,95.3,8.13,9.67,10.5,10.1,1,94.52,10.53,7.51,397.6,10.65,0.28,NULL,'*Fire on south side of Laniapoko yesterday (1/12/21)');
INSERT INTO `samples` VALUES (3134,9,'2021-01-13',3,'08:55:00',NULL,162,175,25.3,34.6,6.21,91.4,8.1,14.2,14.3,14.6,1,95.64,11.55,8.9,567.56,12.83,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (3135,14,'2021-01-13',4,'09:27:00',NULL,162,175,26,35,6.39,95.3,8.08,4.19,4.61,4.57,1,94.47,6.62,4.43,430.85,10.48,0.95,NULL,NULL);
INSERT INTO `samples` VALUES (3136,18,'2021-01-13',5,'09:43:00',NULL,162,175,25.8,35.3,6.79,101.3,8.13,7.26,6.8,7,1,90.27,6.03,3.48,82.93,3.79,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3137,19,'2021-01-14',1,'08:05:00',NULL,162,175,24.5,35.2,6.9,100.6,8.16,86.2,88.1,88.1,1,101.12,12.1,8.67,265.76,6.35,0.33,NULL,'Large waves & shorebreak (2-3ft), sunny');
INSERT INTO `samples` VALUES (3138,22,'2021-01-14',2,'08:40:00',NULL,162,175,25.3,35.4,6.92,102.4,8.18,2,2.37,2.58,1,91.59,7.77,3.35,65.21,4.73,0.28,NULL,'4-5 ft waves, sunny');
INSERT INTO `samples` VALUES (3139,23,'2021-01-14',3,'09:02:00',NULL,162,175,25.4,35.4,6.88,102,8.18,12.2,11.8,11.3,1,113.76,9.75,6.47,288.99,18.99,1.09,NULL,'Erosion of steps (blocked off)');
INSERT INTO `samples` VALUES (3140,24,'2021-01-14',4,'09:26:00',NULL,162,175,25,34.8,6.92,101.5,8.14,40.1,39.7,41.1,1,123.08,15.22,13.03,387.98,42.27,1.18,NULL,'3 ft waves');
INSERT INTO `samples` VALUES (3141,25,'2021-01-14',5,'09:40:00',NULL,162,175,25.6,35.3,7.11,105.8,8.22,9.63,10.1,9.3,1,93.97,9.44,4.5,151.73,9.41,0.49,NULL,NULL);
INSERT INTO `samples` VALUES (3142,1,'2021-01-12',1,'08:18:00',NULL,162,175,24.9,35.3,6.85,100.7,8.14,2.84,2.85,2.69,1,95.5,9.64,5.31,172.46,11.39,1.65,NULL,'1 paddleboarder, 1 turtle');
INSERT INTO `samples` VALUES (3143,2,'2021-01-12',2,'08:45:00',NULL,162,175,24.8,34.6,6.88,100.5,8.14,10.3,10.5,9.67,1,174.2,15.34,11.78,703.25,86.27,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (3144,3,'2021-01-12',3,'09:15:00',NULL,162,175,25.6,35.4,6.84,101.6,8.19,3.01,3,2.9,1,95.34,8.38,4.14,63.68,6.97,0.95,NULL,'2 canoes (6 man)');
INSERT INTO `samples` VALUES (3145,52,'2021-01-12',4,'09:40:00',NULL,162,175,25.3,35.3,6.7,99,8.17,4.78,4.95,5.16,1,111.63,9.51,5.73,116.45,8.89,1.33,NULL,NULL);
INSERT INTO `samples` VALUES (3146,5,'2021-01-12',5,'10:10:00',NULL,162,175,25.8,33.6,6.87,101.4,8.18,1.41,2,1.76,1,246,12.08,8.86,1257.62,156.05,3.91,NULL,NULL);
INSERT INTO `samples` VALUES (3147,6,'2021-01-12',6,'10:25:00',NULL,162,175,25.5,31.7,6.95,101.1,8.18,0.7,0.79,0.71,1,141.74,20.95,18.47,2830.19,61,0.54,NULL,NULL);
INSERT INTO `samples` VALUES (3148,7,'2021-02-04',1,'08:19:00',NULL,162,176,23.2,34.8,6.75,96.5,8.1,4.29,4.26,4.39,1,97.72,10.13,7.28,124.29,11.2,1.69,NULL,'Sunny, rained last night, puddles in parking lot');
INSERT INTO `samples` VALUES (3149,8,'2021-02-04',2,'08:44:00',NULL,162,176,23.4,34.4,6.78,97.3,8.1,20.2,19.2,19.9,1,98.36,11.96,9.33,308.06,11.96,2.06,NULL,'very eroded sand area from culvert to beach (2-3ft deep). Picture taken. 4th turbidity - 20.9 NTU');
INSERT INTO `samples` VALUES (3150,9,'2021-02-04',3,'09:03:00',NULL,162,176,22.7,33.9,6.79,95.9,8.1,17.9,18.6,17.7,1,130.41,13.2,11.84,460.1,19.11,7.37,NULL,NULL);
INSERT INTO `samples` VALUES (3151,14,'2021-02-04',4,'09:35:00',NULL,162,176,23.6,34.6,6.43,92.6,8.05,2.23,2.43,2.31,1,86.57,8.52,6.46,358.33,9.98,2.1,NULL,'cloudy, no waves/small waves');
INSERT INTO `samples` VALUES (3152,18,'2021-02-04',5,'10:01:00',NULL,162,176,23.9,34.9,6.78,98.1,8.1,18.1,17.8,17.2,1,93.98,10,8.05,150.54,10.68,3.44,NULL,NULL);
INSERT INTO `samples` VALUES (3153,19,'2021-02-03',1,'10:39:00',NULL,162,176,23.6,33.4,6.64,95.3,8.17,2.5,2.89,3.05,1,107.45,9.75,6,273.55,5.69,1.91,NULL,'Stream not flowing into ocean but is flowing inland. Debris near ocean from prevous rain. Raining and 5th turbidity reading = 3.57 with dark floating particles');
INSERT INTO `samples` VALUES (3154,22,'2021-02-03',2,'11:19:00',NULL,162,176,24.6,35.2,6.74,99.5,8.17,0.44,0.4,0.45,1,98.49,8.79,4.83,94.32,4.98,0.74,NULL,'Not raining, 2nd salinity = 35 ppt');
INSERT INTO `samples` VALUES (3155,23,'2021-02-03',3,'11:42:00',NULL,162,176,24.2,34.9,6.68,97.9,8.15,1.75,1.72,1.83,1,112.6,8.75,6.41,156.67,12.28,3.38,NULL,'Not raining, 1.5\' waves, rained earlier today');
INSERT INTO `samples` VALUES (3156,24,'2021-02-03',4,'12:26:00',NULL,162,176,24.4,34,6.8,99.2,8.2,7.11,7.71,6.81,1,127.08,10.2,9.33,486.54,50.1,0.98,NULL,'Cloudy, not raining, pH 2nd & 3rd reading - 8.20');
INSERT INTO `samples` VALUES (3157,25,'2021-02-03',5,'12:43:00',NULL,162,176,24.3,34,6.83,99.5,8.19,13.4,12.5,12.3,1,143.79,12.4,10.61,717.45,70.62,1.88,NULL,NULL);
INSERT INTO `samples` VALUES (3158,1,'2021-02-03',6,'12:04:00',NULL,162,176,24.5,34.2,7.11,104.1,8.24,0.58,0.58,0.45,1,106.36,9.17,8.06,489.44,21.63,2.05,NULL,'1 honu, green leaves on shoreline. 2nd pH = 8.24, wave action');
INSERT INTO `samples` VALUES (3159,2,'2021-02-03',7,'13:03:00',NULL,162,176,24.3,30.6,6.96,99.5,8.22,5.25,4.9,4.95,1,433.43,21.7,21.34,3644.02,357,2.46,NULL,'signs of bank erosion/downcutting, fallen branch & signs of storms (rained last night)');
INSERT INTO `samples` VALUES (3160,3,'2021-02-03',8,'13:20:00',NULL,162,176,24.8,34.7,6.72,99.2,8.2,2.66,2.84,2.65,1,94.81,10.48,6.98,214.58,7.84,0.8,NULL,'Cloudy, no rain');
INSERT INTO `samples` VALUES (3161,52,'2021-02-03',9,'13:39:00',NULL,162,176,24.4,34.6,6.73,98.6,8.19,2.26,2.3,2.25,1,91.32,9.55,7.58,227.36,9.94,0.28,NULL,'Cloudy and very windy');
INSERT INTO `samples` VALUES (3162,5,'2021-02-03',10,'14:05:00',NULL,162,176,24.3,33.4,6.76,98,8.16,5.13,5.71,5.62,1,172.3,13.97,12.51,905.11,92.15,2.21,NULL,'Raining');
INSERT INTO `samples` VALUES (3163,6,'2021-02-03',11,'14:25:00',NULL,162,176,24.5,33.4,6.78,98.7,8.18,4.86,4.38,4.43,1,129.01,13.68,11.68,872.13,33.06,1.47,NULL,'Rainings, waves close to shore');
INSERT INTO `samples` VALUES (3164,7,'2021-02-24',1,'08:13:00',NULL,162,177,24.4,33.9,6.06,87.9,8.09,6.23,6.04,6.16,1,128.17,10.82,8.84,617.03,8.76,1.46,NULL,NULL);
INSERT INTO `samples` VALUES (3165,8,'2021-02-24',2,'08:37:00',NULL,162,177,24.4,33.4,5.86,84.8,8.08,5.13,5.4,5.19,1,126.71,10.15,7.89,583.91,27.76,1.3,NULL,'Stream carved out by surf - normally buried by sand, no flow today');
INSERT INTO `samples` VALUES (3166,9,'2021-02-24',3,'08:57:00',NULL,162,177,24.6,33.4,5.84,85,8.07,7.79,7.4,7.95,1,159.76,10.23,7.69,708.13,47.3,4.42,NULL,'Kayak & SUP class in progress, 4th turbidity reading = 7.22');
INSERT INTO `samples` VALUES (3167,14,'2021-02-24',4,'09:26:00',NULL,162,177,24.1,34.7,6.49,94.1,8.1,1.66,1.57,1.52,1,89.48,6.17,4.83,284.93,8.59,0.87,NULL,NULL);
INSERT INTO `samples` VALUES (3168,18,'2021-02-24',5,'09:45:00',NULL,162,177,24.8,34.8,6.84,100.4,8.16,6.05,6.18,6.27,1,130.67,7.94,4.49,192.34,7.1,2.03,NULL,NULL);
INSERT INTO `samples` VALUES (3169,19,'2021-02-25',1,'08:00:00',NULL,162,177,23.3,34.6,6.38,91.2,8.13,2.41,2.02,2,1,112.98,12.32,6.45,255.15,5.77,4.5,NULL,NULL);
INSERT INTO `samples` VALUES (3170,22,'2021-02-25',2,'08:35:00',NULL,162,177,24.1,34.9,6.8,98.9,8.16,1.22,1.22,1.32,1,96.1,8.6,5.18,101.26,4.49,0.28,NULL,'Waves 2-3\', surfers in water, windy');
INSERT INTO `samples` VALUES (3171,23,'2021-02-25',3,'08:55:00',NULL,162,177,23.9,34.3,6.64,95.9,8.11,1.87,1.8,1.84,1,122.98,11.47,10.02,539.98,40.42,1.62,NULL,'Few people snorkeling, sunny & calm');
INSERT INTO `samples` VALUES (3172,24,'2021-02-25',4,'09:20:00',NULL,162,177,23.8,34.2,6.6,95,8.1,6.41,6.3,6.36,1,139.2,12.7,11.44,501.03,44.08,1.2,NULL,'No people, high tide, no visible stream water, except sand bags to the south that look new');
INSERT INTO `samples` VALUES (3173,25,'2021-02-25',5,'09:35:00',NULL,162,177,24,33.9,6.94,99.9,8.16,6.69,8.47,7.07,1,116.41,10.96,8.22,548.86,26.97,0.28,NULL,'Organic matter in turb, 4th reading =8.59');
INSERT INTO `samples` VALUES (3174,1,'2021-02-23',1,'08:20:00',NULL,162,177,24.2,34.1,6.6,95.4,8.07,1.42,1.34,1.43,1,114.89,11.14,8.73,560.91,24.39,2.02,NULL,'*Pre-sampling turbidity not <0.10, DI water replaces & outside cleaned. Waves breaking at shore (1-2ft)');
INSERT INTO `samples` VALUES (3175,2,'2021-02-23',2,'08:44:00',NULL,162,177,24.2,33.7,6.42,92.6,8.11,2.85,2.61,2.5,1,259.61,14.43,13.17,1072.85,173.28,2.35,NULL,'4th turbidity reading = 2.81');
INSERT INTO `samples` VALUES (3176,3,'2021-02-23',3,'09:05:00',NULL,162,177,23.5,34.5,6.72,96.3,8.1,1.48,1.83,1.49,1,97.28,7.71,5.93,253.45,7.2,0.57,NULL,'Water is a bit choppy, windy, 4th turbidity reading = 1.89');
INSERT INTO `samples` VALUES (3177,52,'2021-02-23',4,'09:21:00',NULL,162,177,24.2,34.9,6.71,97.5,8.17,0.98,1.02,1,1,103.4,8.2,4.38,75.77,7.37,1.55,NULL,'Two people fishing, little wave action');
INSERT INTO `samples` VALUES (3178,5,'2021-02-23',5,'09:43:00',NULL,162,177,25,32.8,6.9,100.4,8.18,1.13,1.04,1.17,1,264.63,13.38,12.96,1430.45,183.37,1.27,NULL,'Sunny, waves are <1 ft');
INSERT INTO `samples` VALUES (3179,6,'2021-02-23',6,'10:01:00',NULL,162,177,25.1,33.6,6.68,97.9,8.16,1.51,1.51,1.41,1,135.5,14.24,12.84,1117.09,35.72,0.98,NULL,'Small waves & sunny');
INSERT INTO `samples` VALUES (3180,7,'2021-03-17',1,'08:13:00',NULL,162,178,23.9,34.1,6.33,90.8,8.06,4.32,4.3,4.19,1,94.48,8.33,7.01,393.19,7.9,0.32,NULL,'*Pre sampling blank would not go below 0.10. Large puddle at 505 parking lot, rained last night. Sunny, small waves, running stream');
INSERT INTO `samples` VALUES (3181,8,'2021-03-17',2,'08:39:00',NULL,162,178,24.4,33.9,6.09,87.7,8.07,8,7.39,8.51,1,99.87,15.79,10.39,454.22,18.54,3.43,NULL,'3-4\' of downcutting at \'stream\' picture taken by Grace. 4th turbidity reading: 6.93');
INSERT INTO `samples` VALUES (3182,9,'2021-03-17',3,'08:55:00',NULL,162,178,24.8,33.9,6.04,87.9,8.08,15.5,14.3,14.4,1,114.08,9.71,7.34,435.03,33.74,3.89,NULL,'guy in water w/ kayaks, SUP further offshore');
INSERT INTO `samples` VALUES (3183,14,'2021-03-17',4,'09:20:00',NULL,162,178,25,34.6,6.31,92.5,8.07,1.76,1.8,1.79,1,86.91,6.59,4.47,240.15,7.43,0.71,NULL,'slightly drizzling, calm water');
INSERT INTO `samples` VALUES (3184,18,'2021-03-17',5,'09:39:00',NULL,162,178,24.2,34.1,6.87,99,8.11,21.2,21.7,21.6,1,98.64,15.02,8.22,433.85,17.63,1.19,NULL,'very brown/dark water, medium waves, high wind. Evidence of flow from mountains (small channels going towards ocean)');
INSERT INTO `samples` VALUES (3185,19,'2021-03-18',1,'08:00:00',NULL,162,178,22.5,28.2,6.98,94.3,8.11,197,189,191,1,122.27,13.97,9.4,756.75,17.24,0.81,NULL,'*Raining');
INSERT INTO `samples` VALUES (3186,22,'2021-03-18',2,'08:40:00',NULL,162,178,23.6,34.9,7.03,100.7,8.17,1.98,1.89,1.83,1,92.83,11.02,4.49,96.99,6.73,0.48,NULL,'*Raining');
INSERT INTO `samples` VALUES (3187,23,'2021-03-18',3,'09:00:00',NULL,162,178,23.7,34.5,6.99,100,8.15,2.2,1.87,2.6,1,127.84,9.8,6.23,207.2,18.4,2.21,NULL,'Pouring!');
INSERT INTO `samples` VALUES (3188,24,'2021-03-18',4,'09:30:00',NULL,162,178,23.6,33.4,7.15,101.3,8.14,16.1,16.6,16,1,160.08,14.94,13.44,710.75,86.14,1.83,NULL,'Rainbow');
INSERT INTO `samples` VALUES (3189,25,'2021-03-18',5,'09:45:00',NULL,162,178,24.3,33.7,7.57,108.8,8.24,15.3,16.6,16.4,1,98.06,10.56,6.93,363.09,9.64,4.37,NULL,'Oxygen 108.2 for second reading');
INSERT INTO `samples` VALUES (3190,1,'2021-03-16',1,'08:14:00',NULL,162,178,24.6,34.8,6.9,100.4,8.19,2.19,2.11,2.09,1,94.56,8.78,4.98,139.06,11.03,0.45,NULL,'*Rained in Kahana last night, high surf');
INSERT INTO `samples` VALUES (3191,2,'2021-03-16',2,'08:40:00',NULL,162,178,24.4,32.9,6.98,100.3,8.14,17.2,16.8,17,1,271.99,16.25,15.64,1137.89,186.54,1.34,NULL,'high surf, sunny');
INSERT INTO `samples` VALUES (3192,3,'2021-03-16',3,'09:02:00',NULL,162,178,24.5,34.5,6.95,100.9,8.18,3.76,3.73,3.81,1,89.15,9.53,5.91,169.72,7.49,0.28,NULL,'higher tide than normal, 2 fisherman above beach *not on sand)');
INSERT INTO `samples` VALUES (3193,52,'2021-03-16',4,'09:18:00',NULL,162,178,24.8,34.8,6.87,100.5,8.16,4.06,3.93,3.89,1,93.67,9.52,5.99,98.84,7.46,2.57,NULL,'sunny, big waves crashing near shore');
INSERT INTO `samples` VALUES (3194,5,'2021-03-16',5,'09:41:00',NULL,162,178,24.6,33,6.97,100.5,8.18,2.26,2.15,2.11,1,259.2,16.5,13.81,1405.28,170.51,1.45,NULL,'lots of debris on shore (kukui nuts, driftwood), strating to drizzle towards end of sampling');
INSERT INTO `samples` VALUES (3195,6,'2021-03-16',6,'10:00:00',NULL,162,178,24.5,33.3,6.94,100,8.2,1.75,1.9,1.93,1,113.91,13.3,12.41,1091.44,35.41,0.28,NULL,'1 SUP');
INSERT INTO `samples` VALUES (3196,7,'2021-04-07',1,'08:18:00',NULL,162,179,24.2,34,6.32,91.3,8.09,1.47,1.52,1.44,1,67.73,16.31,10.18,514.87,9.16,0.79,NULL,'stream channel shifted about 30\' north');
INSERT INTO `samples` VALUES (3197,8,'2021-04-07',2,'08:43:00',NULL,162,179,24,34.4,6.27,90.5,8.13,3.2,2.93,4.31,1,75.21,10.47,6.98,338.67,4.12,5.61,NULL,'3.48 was the 4th turbidity reading');
INSERT INTO `samples` VALUES (3198,9,'2021-04-07',3,'09:02:00',NULL,162,179,23.9,34.1,6.36,91.7,8.12,4.07,4.33,4.65,1,71.56,20.22,11.42,469.29,8.98,0.65,NULL,'*couldn\'t get the blank below 0.12, medium vial was dropped on ground');
INSERT INTO `samples` VALUES (3199,14,'2021-04-07',4,'09:33:00',NULL,162,179,23.5,34.8,6.6,94.7,8.12,1.1,1.14,1.07,1,67.05,10.53,6.19,368.55,5.81,1.14,NULL,NULL);
INSERT INTO `samples` VALUES (3200,18,'2021-04-07',5,'09:52:00',NULL,162,179,24.2,34.7,6.95,100.8,8.2,2.38,2.36,2.68,1,65.31,9.19,5.12,189.54,3.11,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3201,19,'2021-04-08',1,'08:00:00',NULL,162,179,22.7,29.7,6.81,93.3,8.12,38.7,58.2,46,1,378.5,20.62,13.53,791.91,12.05,22.47,NULL,'4th turbidity: 42.2, 5th: 53.2, sample had particulates/OM');
INSERT INTO `samples` VALUES (3202,22,'2021-04-08',2,'08:35:00',NULL,162,179,23.6,35,6.89,99,8.16,0.99,0.89,0.93,1,76.9,8.61,5.23,72.4,1.7,1.07,NULL,'large surf, lots of whitewater');
INSERT INTO `samples` VALUES (3203,23,'2021-04-08',3,'08:55:00',NULL,162,179,23.9,34.2,6.84,98.5,8.14,2.82,3.25,3.21,1,103.39,12.01,11.21,605.46,35.36,2.86,NULL,NULL);
INSERT INTO `samples` VALUES (3204,24,'2021-04-08',4,'09:15:00',NULL,162,179,23.5,33.7,6.96,98.9,8.11,15.6,15.2,14.7,1,129.25,12.68,11.65,698.14,67.61,1.63,NULL,'People fishing at sample spot, sampled slightly left of normal site, 4th turbidity: 17.9');
INSERT INTO `samples` VALUES (3205,25,'2021-04-08',5,'09:35:00',NULL,162,179,24.1,34.2,7.19,103.3,8.21,4.81,5.54,5.08,1,75.17,10.07,7.37,406.82,15.99,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3206,1,'2021-04-06',1,'08:20:00',NULL,162,179,23.5,34.8,6.96,99.3,8.11,1.57,1.43,1.6,1,91.65,11.38,8.16,229.46,11.68,0.5,NULL,'Sunny, 1-2ft waves');
INSERT INTO `samples` VALUES (3207,2,'2021-04-06',2,'08:44:00',NULL,162,179,23,32.9,7.03,98.5,8.09,10.8,10,9.99,1,265.12,15.05,13.08,1342.19,198.96,1.4,NULL,'windy, sunny, waves breaking 100-200\' from shore, erosion to the right of the site');
INSERT INTO `samples` VALUES (3208,3,'2021-04-06',3,'09:03:00',NULL,162,179,22.9,32.4,7.05,98.4,8.16,5.52,5.12,4.57,1,69.57,8.93,7.15,472.08,9.35,0.28,NULL,'offshore wind, waves 2-4\', breaking & surging');
INSERT INTO `samples` VALUES (3209,52,'2021-04-06',4,'09:25:00',NULL,162,179,23.5,34.4,6.9,98.4,8.16,6.76,6.54,6.68,1,79.85,8.51,6.72,224.51,8.02,2.32,NULL,'offshore, 7-8 kites, 2-3\' waves breaking, churned up/murky');
INSERT INTO `samples` VALUES (3210,5,'2021-04-06',5,'09:54:00',NULL,162,179,24.6,33.5,6.81,98.7,8.17,1.03,1.3,1.19,1,185.82,21.23,13.69,1107.41,119.65,0.62,NULL,NULL);
INSERT INTO `samples` VALUES (3211,6,'2021-04-06',6,'10:14:00',NULL,162,179,24.9,34.1,6.68,97.7,8.18,0.57,0.6,0.61,1,93.62,14.27,10.56,735.78,21.09,0.29,NULL,'1 dog on beach, very calm water');
INSERT INTO `samples` VALUES (3212,7,'2021-04-28',1,'08:15:00',NULL,162,180,24.8,34.5,6.21,90.8,8.05,2.31,2.24,2.26,1,127.62,16.84,16.51,3432.9,9.9,5.47,NULL,NULL);
INSERT INTO `samples` VALUES (3213,8,'2021-04-28',2,'08:38:00',NULL,162,180,25.2,34.6,5.64,83,8.03,3.56,3.08,3.41,1,99.55,7.9,6.62,319.8,9.62,1.68,NULL,NULL);
INSERT INTO `samples` VALUES (3214,9,'2021-04-28',3,'08:56:00',NULL,162,180,25.5,34.6,5.84,86.6,8.02,7.77,7.55,7.46,1,140.52,8.83,7.29,589.18,26.69,3.78,NULL,'water calm & clear, very low tide & rocks exposed');
INSERT INTO `samples` VALUES (3215,14,'2021-04-28',4,'09:23:00',NULL,162,180,26.4,34.5,6.52,98.1,8.04,3.75,3.78,4.05,1,135.81,7.77,6.9,675.75,11.7,5.44,NULL,NULL);
INSERT INTO `samples` VALUES (3216,18,'2021-04-28',5,'09:41:00',NULL,162,180,26.1,35.2,6.76,101.4,8.12,3.51,2.93,3.39,1,98.84,7.06,4.75,86.39,4.78,1.94,NULL,NULL);
INSERT INTO `samples` VALUES (3217,19,'2021-04-29',1,'07:58:00',NULL,162,180,24.3,33.4,6.5,93.5,8.04,18.1,17.2,18.7,1,110.03,13.36,11.05,590.95,5.63,2.56,NULL,'very murky, 4th turbidity: 15.4');
INSERT INTO `samples` VALUES (3218,22,'2021-04-29',2,'08:35:00',NULL,162,180,24.8,35,6.91,101.2,8.13,2.21,2.1,2.05,1,110.24,6.85,4.28,123.96,6.65,1.03,NULL,NULL);
INSERT INTO `samples` VALUES (3219,23,'2021-04-29',3,'09:05:00',NULL,162,180,25,33.6,6.71,97.9,8.05,2.94,2.75,3.01,1,186.66,13.57,13.07,947.9,93.94,1.22,NULL,NULL);
INSERT INTO `samples` VALUES (3220,24,'2021-04-29',4,'09:28:00',NULL,162,180,25.3,34.2,6.52,95.8,8.04,8.45,8.73,8.81,1,145.19,11.33,10.87,569.33,59.12,8.09,NULL,NULL);
INSERT INTO `samples` VALUES (3221,25,'2021-04-29',5,'09:45:00',NULL,162,180,25.7,34.2,6.67,98.8,8.03,5.33,5.53,5.08,1,117.7,7,5.65,400.44,20.41,2.43,NULL,NULL);
INSERT INTO `samples` VALUES (3222,1,'2021-04-27',1,'08:15:00',NULL,162,180,25,33.7,6.91,101,8.08,0.9,0.99,0.95,1,138.66,17.02,12.99,963.28,42.51,2.8,NULL,'flat water, sunny');
INSERT INTO `samples` VALUES (3223,2,'2021-04-27',2,'08:40:00',NULL,162,180,25,32.1,6.79,98.3,8.1,0.83,1.04,1.27,1,428.15,14.97,14.69,2794.83,316.01,4.16,NULL,'low tide, calm, sunny, clear');
INSERT INTO `samples` VALUES (3224,3,'2021-04-27',3,'09:03:00',NULL,162,180,25.2,34.4,6.82,100.5,8.08,1.46,1.34,1.32,1,127.03,7.7,4.82,256.02,14.44,2.56,NULL,'very clear, low tide');
INSERT INTO `samples` VALUES (3225,52,'2021-04-27',4,'09:21:00',NULL,162,180,25.7,34.4,6.69,99.3,8.11,2.07,2.02,2,1,94.09,12.7,9.19,350.87,7.08,2.13,NULL,NULL);
INSERT INTO `samples` VALUES (3226,5,'2021-04-27',5,'09:52:00',NULL,162,180,25.6,32.5,6.89,101.1,8.12,2.3,2.07,2,1,297.4,14.15,13.31,1711.1,200.28,1.71,NULL,'same as above, light wind');
INSERT INTO `samples` VALUES (3227,6,'2021-04-27',6,'10:12:00',NULL,162,180,25.7,33.3,6.76,99.8,8.12,1.32,1.32,1.14,1,122.03,14.54,13.47,1196.54,36.49,0.28,NULL,'same as above, light wind');
INSERT INTO `samples` VALUES (3228,7,'2021-05-19',1,'08:12:00',NULL,162,181,24.4,33.5,6.06,87.6,8.03,2.18,1.82,1.88,1,89.43,8.83,3.65,303.53,9.66,1.73,NULL,'garage water outflow flowing in S shape (most likely shaped by humans)');
INSERT INTO `samples` VALUES (3229,8,'2021-05-19',2,'08:37:00',NULL,162,181,24.6,34.4,5.71,83.1,8.05,4.08,3.96,3.98,1,94.53,9.36,3.29,297.49,10.41,0.99,NULL,'little to no waves');
INSERT INTO `samples` VALUES (3230,9,'2021-05-19',3,'08:56:00',NULL,162,181,24.8,34.1,5.62,82.1,8.05,2.35,2.38,2.29,1,126.61,9.34,3.55,340.25,17.74,3,NULL,'kayakers further offshore (2 kayaks, ~6 people)');
INSERT INTO `samples` VALUES (3231,14,'2021-05-19',4,'09:26:00',NULL,162,181,25.4,34.9,6.35,94.3,8.08,1.82,1.86,1.88,1,84.25,6.74,2.12,269.44,5.91,1.03,NULL,'Water very still');
INSERT INTO `samples` VALUES (3232,18,'2021-05-19',5,'09:47:00',NULL,162,181,24.8,34.5,6.66,97.6,8.1,3.32,3.31,3.16,1,85.8,8.41,2.54,307.84,6.65,0.33,NULL,NULL);
INSERT INTO `samples` VALUES (3233,19,'2021-05-20',1,'08:01:00',NULL,162,181,23.8,33.7,6.36,91.1,8.11,1.4,1.47,2.01,1,123.12,10.91,4.92,372.37,5.55,2.97,NULL,'Raining; 4th turbidity: 1.43');
INSERT INTO `samples` VALUES (3234,22,'2021-05-20',2,'08:36:00',NULL,162,181,24.6,34.8,6.8,99.5,8.15,0.51,0.56,0.56,1,88.37,6.72,2.31,85.85,3.01,0.99,NULL,'Raining');
INSERT INTO `samples` VALUES (3235,23,'2021-05-20',3,'09:00:00',NULL,162,181,24.1,34.2,6.44,94.5,8.01,1,0.91,1,1,212.93,12.43,7.14,500.98,46.02,5.8,NULL,'Construction in parking lot, dune restoration at steps');
INSERT INTO `samples` VALUES (3236,24,'2021-05-20',4,'09:22:00',NULL,162,181,25.1,34.2,6.24,91.7,8.07,5.04,5.25,5.13,1,162.13,12.2,8.79,385.4,47.79,28.65,NULL,NULL);
INSERT INTO `samples` VALUES (3237,25,'2021-05-20',5,'09:40:00',NULL,162,181,25.1,34.1,6.24,91.5,8.07,8.95,12.1,16.2,1,105.23,8.79,3.14,380.82,22.1,2.85,NULL,'4th turbidity: 10.4; 5th turbidity: 12.3; water in \'stream\' under bridge on Lower Rd but not flowing into ocean');
INSERT INTO `samples` VALUES (3238,1,'2021-05-18',1,'08:17:00',NULL,162,181,24.3,34.4,6.79,98.6,8.14,1.72,1.58,1.58,1,115.53,10,5.31,354.31,18.94,2.98,NULL,NULL);
INSERT INTO `samples` VALUES (3239,2,'2021-05-18',2,'08:42:00',NULL,162,181,24.7,31.6,6.62,95.3,8.15,1.52,1.62,1.56,1,474.95,16.43,13.51,2644.61,345.95,6.05,NULL,NULL);
INSERT INTO `samples` VALUES (3240,3,'2021-05-18',3,'09:05:00',NULL,162,181,24.3,34.5,6.8,98.8,8.13,2.04,2.28,2.09,1,95.83,7.54,2.29,176.08,8.7,0.58,NULL,'very clear');
INSERT INTO `samples` VALUES (3241,52,'2021-05-18',4,'09:28:00',NULL,162,181,24.8,34.8,6.59,96.8,8.14,2.24,2.08,2.09,1,97.48,8.64,3.05,102.38,8.9,0.39,NULL,NULL);
INSERT INTO `samples` VALUES (3242,5,'2021-05-18',5,'10:03:00',NULL,162,181,25.4,33.2,6.98,102.8,8.18,0.61,0.72,0.72,1,237.19,14,9.18,1294.31,137.66,2.65,NULL,'still construction going on in parking lot area');
INSERT INTO `samples` VALUES (3243,6,'2021-05-18',6,'10:25:00',NULL,162,181,25.9,32.7,6.58,97.5,8.15,1.03,1.04,1.02,1,139.37,15.34,12.24,1508.99,47.12,2.99,NULL,'onshore 8-10 kts, 0.5-1 ft shorebreak, high tide, clear water');
INSERT INTO `samples` VALUES (3244,7,'2021-06-09',1,'08:16:00',NULL,162,182,25.9,34.6,5.71,84.9,8.02,2.1,2.08,1.85,1,96.19,7.24,4.71,217.05,5.11,1,NULL,'flat water, calm, low tide, no people in water');
INSERT INTO `samples` VALUES (3245,8,'2021-06-09',2,'08:38:00',NULL,162,182,26.5,34.7,5.1,76.7,8.03,1.29,1.25,1.49,1,86.44,8.5,4.41,243.53,10,3.8,NULL,'calm, flat water, low tide, no people');
INSERT INTO `samples` VALUES (3246,9,'2021-06-09',3,'09:00:00',NULL,162,182,27,34.1,5.37,81.1,8.02,6.35,5.55,5.91,1,92.18,8.31,5.48,537.31,25.66,3.42,NULL,'low tide, 2 dogs playing in water, 2 snorkelers, no wind');
INSERT INTO `samples` VALUES (3247,14,'2021-06-09',4,'09:29:00',NULL,162,182,26.1,35,6.24,93.2,8.03,1.33,1.3,1.23,1,80.86,7.02,5.5,403.4,6.77,3.49,NULL,'calm waters, low tide');
INSERT INTO `samples` VALUES (3248,18,'2021-06-09',5,'09:49:00',NULL,162,182,25.7,34.7,6.78,100.5,8.1,3.66,3.58,3.69,1,75.86,7.95,3.61,311.32,5.4,0.28,NULL,'small swell, light wind');
INSERT INTO `samples` VALUES (3249,19,'2021-06-10',1,'08:00:00',NULL,162,182,24.8,33.8,6.16,89.3,8.1,2.3,3.06,3.73,1,92.4,11.11,8.2,524.98,2.84,4.86,NULL,'lots of particles in turbidity sample bottle; 4th turbidity: 5.44 NTU For all: sprinling in Kahana last night; ground is wet; calm day');
INSERT INTO `samples` VALUES (3250,22,'2021-06-10',2,'08:40:00',NULL,162,182,25.2,34.8,6.82,100.2,8.17,0.87,0.78,0.84,1,77.3,6.12,4.06,214.77,10.76,0.47,NULL,'small waves, wind');
INSERT INTO `samples` VALUES (3251,23,'2021-06-10',3,'09:00:00',NULL,162,182,25.5,34.4,6.04,89,8.05,1.02,1.09,0.92,1,125.94,10.88,8.16,515.14,56.32,2.34,NULL,NULL);
INSERT INTO `samples` VALUES (3252,24,'2021-06-10',4,'09:30:00',NULL,162,182,26,34.3,5.92,87.8,8.05,4.46,4.68,4.82,1,182.43,15.29,13.01,583.36,73.76,46.73,NULL,NULL);
INSERT INTO `samples` VALUES (3253,25,'2021-06-10',5,'09:50:00',NULL,162,182,26,34,5.77,85.5,8.05,4.83,4.86,5.16,1,108.59,8.76,5.81,568.62,27.02,5.42,NULL,NULL);
INSERT INTO `samples` VALUES (3254,1,'2021-06-08',1,'08:14:00',NULL,162,182,25.4,34,6.48,95.2,8.04,0.99,1.1,1.03,1,107.47,10.56,9.97,705.64,36.41,3.38,NULL,'SUPs out further; pretty calm');
INSERT INTO `samples` VALUES (3255,2,'2021-06-08',2,'08:42:00',NULL,162,182,25.5,33.8,6.35,93.4,8.12,0.85,0.85,0.82,1,274.84,11.95,10.2,1557.34,153.61,5.06,NULL,NULL);
INSERT INTO `samples` VALUES (3256,3,'2021-06-08',3,'09:01:00',NULL,162,182,25.5,34.8,6.62,98,8.06,1.3,1.34,1.37,1,99.76,6.23,3.38,200.53,11.82,3.9,NULL,NULL);
INSERT INTO `samples` VALUES (3257,52,'2021-06-08',4,'09:23:00',NULL,162,182,25.9,35,6.49,96.7,8.11,0.96,0.98,1.03,1,79.36,8.13,4.92,126.71,5.58,1,NULL,'2 six-man outriggers; DO Probe switched out for probe #1 due to connection problems');
INSERT INTO `samples` VALUES (3258,5,'2021-06-08',5,'09:51:00',NULL,162,182,26.9,34.5,6.53,98.9,8.13,8.28,7.69,7.72,1,124.66,8.83,6.59,545.02,48.59,2.93,NULL,'still some construction; jet skis have started up');
INSERT INTO `samples` VALUES (3259,6,'2021-06-08',6,'10:12:00',NULL,162,182,26.7,34.1,6.5,97.9,8.13,2.08,2.08,2.14,1,110.75,11.9,8.66,650.04,21.98,2.53,NULL,'very churned near the shore (shore break); mid-tide');
INSERT INTO `samples` VALUES (3260,7,'2021-06-30',1,'08:14:00',NULL,162,183,26.2,33.5,5.92,88.4,8.03,5.47,5.92,5.83,1,73.66,13.46,12.94,919.66,7.54,6.43,NULL,NULL);
INSERT INTO `samples` VALUES (3261,8,'2021-06-30',2,'08:40:00',NULL,162,183,26.8,35.1,6.21,94.4,8.07,6.04,6.08,5.86,1,64.5,13.44,9.14,227.39,5.74,4.6,NULL,NULL);
INSERT INTO `samples` VALUES (3262,9,'2021-06-30',3,'08:57:00',NULL,162,183,27.2,34.5,5.67,86.5,8.06,30.3,31.5,27.9,1,96.28,137.23,31.44,436.58,19.63,8.59,NULL,'very silty inshore, high surf past reef');
INSERT INTO `samples` VALUES (3263,14,'2021-06-30',4,'09:30:00',NULL,162,183,27.7,35.2,6.25,96.5,8.06,4.86,5.1,4.91,1,64.17,7.97,5.97,304.17,6.96,1.57,NULL,NULL);
INSERT INTO `samples` VALUES (3264,18,'2021-06-30',5,'09:48:00',NULL,162,183,28.3,35.4,6.34,99.1,8.1,5.59,5.7,6.21,1,66.75,13.69,6.42,110.52,5.5,2.04,NULL,NULL);
INSERT INTO `samples` VALUES (3265,19,'2021-07-01',1,'07:54:00',NULL,162,183,25.2,34.7,5.93,87.7,8.1,0.92,1.09,1.93,1,89.07,12.29,6.39,290.77,2.23,6.45,NULL,'2 snorkel boats & 21 further out');
INSERT INTO `samples` VALUES (3266,22,'2021-07-01',2,'08:36:00',NULL,162,183,25.4,35.3,6.6,98.2,8.14,1.43,1.47,1.43,1,63.86,10.47,4.8,94.49,5.08,1.31,NULL,'started drizzling');
INSERT INTO `samples` VALUES (3267,23,'2021-07-01',3,'08:46:00',NULL,162,183,25.3,34.5,6.32,93.6,8.06,2.83,2.63,2.73,1,111.59,19.95,12.38,597.59,50.67,4.26,NULL,NULL);
INSERT INTO `samples` VALUES (3268,24,'2021-07-01',4,'09:15:00',NULL,162,183,25.8,34.2,6.27,93.3,8.06,14.6,14.5,14.1,1,120.83,14.4,13.06,716.62,67.58,3.67,NULL,NULL);
INSERT INTO `samples` VALUES (3269,25,'2021-07-01',5,'09:29:00',NULL,162,183,25.5,34.7,6.13,91,7.99,13.6,13.6,12.5,1,82.41,9.72,7.27,391.6,15.05,2.23,NULL,NULL);
INSERT INTO `samples` VALUES (3270,1,'2021-06-29',1,'08:01:00',NULL,162,183,25.4,34.1,6.78,100.3,8.09,1.22,1.17,1.27,1,168.34,44.26,19.11,766.38,41.02,7.84,NULL,'small waves, calm surf');
INSERT INTO `samples` VALUES (3271,2,'2021-06-29',2,'08:25:00',NULL,162,183,25.9,34.4,6.36,95,8.12,1.49,1.5,1.31,1,252.53,14.69,11.8,780.43,122.93,3.27,NULL,'small waves, calm surf');
INSERT INTO `samples` VALUES (3272,3,'2021-06-29',3,'08:45:00',NULL,162,183,26,35,6.27,94.4,8.04,7.41,7.42,7.12,1,78.91,21.43,9.15,166.33,12.11,2.1,NULL,'lots of people close to sample');
INSERT INTO `samples` VALUES (3273,52,'2021-06-29',4,'09:08:00',NULL,162,183,26.4,34.8,6.52,98.5,8.11,1.66,1.84,1.54,1,75.65,12.89,9.56,320.95,6.96,2.15,NULL,NULL);
INSERT INTO `samples` VALUES (3274,5,'2021-06-29',5,'09:40:00',NULL,162,183,26.9,34.3,6.58,100,8.16,1.88,1.94,1.66,1,141.55,19.81,12.57,806.61,81.98,3.01,NULL,NULL);
INSERT INTO `samples` VALUES (3275,6,'2021-06-29',6,'10:02:00',NULL,162,183,26.8,34.3,6.43,97.6,8.15,2.43,2.49,2.53,1,88.17,47.51,18.66,800.32,25.09,1.11,NULL,NULL);
INSERT INTO `samples` VALUES (3276,7,'2021-07-21',1,'08:17:00',NULL,162,184,26.7,34.9,5.44,82.3,8.05,1.03,1.06,1.11,1,123.53,7.42,5.43,256.97,4.86,4.78,NULL,'6 kayaks, 3 paddleboards ** switched to DO probe #1');
INSERT INTO `samples` VALUES (3277,8,'2021-07-21',2,'08:44:00',NULL,162,184,26.9,35,5.8,88,8.04,1.34,1.56,1.48,1,120.96,8.51,6.02,266.31,9.17,6.51,NULL,NULL);
INSERT INTO `samples` VALUES (3278,9,'2021-07-21',3,'09:06:00',NULL,162,184,27,35.2,5.99,91.2,8.03,1.14,1.07,1.12,1,96.4,7.2,4.7,123.1,6.04,4.81,NULL,NULL);
INSERT INTO `samples` VALUES (3279,14,'2021-07-21',4,'09:35:00',NULL,162,184,26.6,34.9,6.19,93.4,8.09,2.4,2.24,2.39,1,71.93,5.96,5.66,380.4,3.37,3.98,NULL,NULL);
INSERT INTO `samples` VALUES (3280,18,'2021-07-21',5,'09:57:00',NULL,162,184,26.5,35,6.53,98.5,8.19,5.48,5.86,5.68,1,89.38,7.06,5.19,384.55,4,2.1,NULL,NULL);
INSERT INTO `samples` VALUES (3281,19,'2021-07-22',1,'07:50:00',NULL,162,184,25.5,34.3,5.8,85.6,8.12,10.3,11.2,10.4,1,110.06,12.91,11.15,559.93,6.54,6.25,NULL,NULL);
INSERT INTO `samples` VALUES (3282,22,'2021-07-22',2,'08:35:00',NULL,162,184,25.9,35.1,6.84,102.2,8.22,1.21,1.12,1.02,1,208.82,14.45,8.81,181.19,14.07,5.21,NULL,NULL);
INSERT INTO `samples` VALUES (3283,23,'2021-07-22',3,'09:00:00',NULL,162,184,26.3,35.5,6.21,93.6,8.09,1.87,1.74,1.85,1,164.2,12.6,9.98,500.29,48.26,8.19,NULL,NULL);
INSERT INTO `samples` VALUES (3284,24,'2021-07-22',4,'09:25:00',NULL,162,184,26.2,34.2,6.4,95.5,8.12,6.72,6.77,6.9,1,145.91,11.18,10.75,740.7,71.56,3.84,NULL,NULL);
INSERT INTO `samples` VALUES (3285,25,'2021-07-22',5,'09:42:00',NULL,162,184,26.1,35.1,6.39,95.7,8.12,5.98,6.28,6.7,1,94.12,7.11,4.27,271.94,11.97,3.64,NULL,NULL);
INSERT INTO `samples` VALUES (3286,1,'2021-07-20',1,'08:15:00',NULL,162,184,25.6,34,6.82,100.7,8.15,2.37,2.5,2.82,1,122.78,13.31,12.76,918.34,42.55,4.52,NULL,'cloudy, drizzling, some swell **sprinkled in kahana last 2 days');
INSERT INTO `samples` VALUES (3287,2,'2021-07-20',2,'08:45:00',NULL,162,184,25.7,34.2,6.48,95.9,8.2,2.7,2.52,2.43,1,184.82,9.4,8.57,637.77,112.65,2.67,NULL,'light rain, clear water, cloudy, people swimming');
INSERT INTO `samples` VALUES (3288,3,'2021-07-20',3,'09:12:00',NULL,162,184,25.3,35,6.72,99.1,8.15,3.14,3.42,3.41,1,76.59,6.59,3.78,165.43,4.03,2.5,NULL,'small waves, light rain, cloudy');
INSERT INTO `samples` VALUES (3289,52,'2021-07-20',4,'09:36:00',NULL,162,184,25.7,35.1,6.86,102,8.25,0.93,1.04,1.05,1,87.42,7.2,2.03,73.69,5.15,3.01,NULL,'small shore break, lots of rocks exposed along the shoreline, sampled ~25ft to the right of normal spot');
INSERT INTO `samples` VALUES (3290,5,'2021-07-20',5,'10:00:00',NULL,162,184,26.6,34.2,6.99,105,8.21,1.05,1.33,1.44,1,169.36,10.25,8.11,853.1,76.18,4.68,NULL,'nice, pretty calm');
INSERT INTO `samples` VALUES (3291,6,'2021-07-20',6,'10:22:00',NULL,162,184,27.1,34.8,6.56,99.7,8.2,2.07,2.13,2.12,1,104.15,11.11,8,531.3,16.24,2.07,NULL,'calm, slightly windy');
INSERT INTO `samples` VALUES (3292,7,'2021-08-11',1,'08:15:00',NULL,162,185,26.7,35.4,6.22,94.5,8.06,3.51,3.64,3.55,1,93.71,13.37,6.31,369.22,3.87,2.68,NULL,'stream flowing straight  **volunteers used meter probe set #2 accidentally, but didn\'t seem to have an issue with pH probe #5. They also used the new DO probe that was verified but not callibrated. Probe was callibrated post-lab on 8/12/21');
INSERT INTO `samples` VALUES (3293,8,'2021-08-11',2,'08:40:00',NULL,162,185,27,35.3,6.3,96.4,8.06,7.02,7.08,7.29,1,73.27,8.31,4.79,266.01,3.88,1.79,NULL,NULL);
INSERT INTO `samples` VALUES (3294,9,'2021-08-11',3,'08:58:00',NULL,162,185,27.1,35.5,6.38,98.1,8.07,2.92,3.05,3.13,1,76.19,9.8,5.35,168.93,3.17,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (3295,14,'2021-08-11',4,'09:27:00',NULL,162,185,27.9,35.7,6.2,96.4,8.02,5.18,4.84,4.28,1,63.98,6.13,4.16,252.53,2.9,1.96,NULL,NULL);
INSERT INTO `samples` VALUES (3296,18,'2021-08-11',5,'09:47:00',NULL,162,185,27.6,35.5,6.42,99.4,8.1,6.26,6.49,6.42,1,83.69,11.05,4.7,97.34,2.86,1.25,NULL,NULL);
INSERT INTO `samples` VALUES (3297,19,'2021-08-12',1,'07:59:00',NULL,162,185,25,34.6,6.08,89.4,8.13,1.11,1.21,1.18,1,124.4,10.71,5.87,294.76,2.9,6.29,NULL,'local said stream was flowing yesterday');
INSERT INTO `samples` VALUES (3298,22,'2021-08-12',2,'08:31:00',NULL,162,185,25.7,35.3,6.56,98.2,8.15,0.67,0.64,0.64,1,83.94,7.69,3.48,225.62,2.63,1.88,NULL,NULL);
INSERT INTO `samples` VALUES (3299,23,'2021-08-12',3,'08:53:00',NULL,162,185,26.1,35.1,6.33,95.6,8.01,3.13,2.92,2.98,1,119.23,12.3,7.8,336.79,25.36,3.65,NULL,'triple checked pH...got 8.01 all three times');
INSERT INTO `samples` VALUES (3300,24,'2021-08-12',4,'09:20:00',NULL,162,185,25.7,34.8,6.22,93,8.07,5.98,5.79,5.82,1,129.05,11.65,7.64,434.35,43.75,3.43,NULL,'very calm, lower tide, slightly murky');
INSERT INTO `samples` VALUES (3301,25,'2021-08-12',5,'09:40:00',NULL,162,185,26.2,34.2,5.72,85.7,8.06,8.91,8.51,8.9,1,130.86,17.05,8.07,615.39,41.21,3.48,NULL,'little fish near sampling area, double checked D.O.');
INSERT INTO `samples` VALUES (3302,1,'2021-08-10',1,'08:14:00',NULL,162,185,25.5,34,6.77,100.1,8.05,1.21,1.61,1.7,1,157.92,22.35,13.96,997.74,48.7,5.08,NULL,'calm ** pH sensor slow to stabilize');
INSERT INTO `samples` VALUES (3303,2,'2021-08-10',2,'08:40:00',NULL,162,185,25.6,33.9,6.31,93.3,8.1,4.95,4.25,4.14,1,221.88,22.41,11.68,971.84,128.16,3.41,NULL,'small swell');
INSERT INTO `samples` VALUES (3304,3,'2021-08-10',3,'08:59:00',NULL,162,185,25.6,35,6.46,96.2,8.06,3.56,4.09,3.41,1,100.28,11.63,4.87,263.04,12.15,2.41,NULL,'calm, low tide');
INSERT INTO `samples` VALUES (3305,52,'2021-08-10',4,'09:20:00',NULL,162,185,26.2,35.1,6.38,96,8.08,1.77,1.64,1.61,1,109.67,13.49,5.89,188.65,3.98,5.76,NULL,NULL);
INSERT INTO `samples` VALUES (3306,5,'2021-08-10',5,'09:40:00',NULL,162,185,26.4,34.4,6.54,98.4,8.12,3.75,4.02,4.3,1,181.56,16.03,10.07,952.69,92.91,4.19,NULL,'lifeguard training');
INSERT INTO `samples` VALUES (3307,6,'2021-08-10',6,'09:55:00',NULL,162,185,26.3,34.7,6.49,97.7,8.13,2.13,2.44,2.15,1,100.4,18.41,10.21,641.26,16.19,4.19,NULL,'**took multiple pH readings-started at 8.09 crept up to 8.13 after about 8 readings');
INSERT INTO `samples` VALUES (3308,7,'2021-09-01',1,'08:18:00',NULL,162,186,26.8,34.7,5.96,90.7,8.04,1.62,1.97,1.74,1,107.3,13.65,7.7,1083,4.57,2.62,NULL,'stream clear. unusual erosion pattern see picture from kristy **no film on pH probe');
INSERT INTO `samples` VALUES (3309,8,'2021-09-01',2,'08:41:00',NULL,162,186,26.8,35.4,5.96,91.1,8.07,4.1,4.38,3.72,1,172.16,9.78,3.15,297.1,3.98,2.33,NULL,NULL);
INSERT INTO `samples` VALUES (3310,9,'2021-09-01',3,'08:59:00',NULL,162,186,27.1,35.2,5.9,90.5,8.06,3.11,3.09,2.88,1,110.53,9.57,2.58,300.92,6.31,1,NULL,NULL);
INSERT INTO `samples` VALUES (3311,14,'2021-09-01',4,'09:27:00',NULL,162,186,28.6,35.7,6.33,99.8,8.07,1.97,1.88,1.84,1,79.89,7.27,2.18,379.97,1.25,0.59,NULL,NULL);
INSERT INTO `samples` VALUES (3312,18,'2021-09-01',5,'09:48:00',NULL,162,186,27.9,35.6,6.63,103.4,8.13,10.2,10.5,11.1,1,74.31,6.98,1.22,166.71,1.06,0.28,NULL,'shore break was right at sampling location');
INSERT INTO `samples` VALUES (3313,19,'2021-09-02',1,'07:50:00',NULL,162,186,25.8,35.2,5.9,89.7,8.15,2.31,1.93,2,1,121.74,15.81,4.42,327.91,2.42,4.22,NULL,'flat, calm water');
INSERT INTO `samples` VALUES (3314,22,'2021-09-02',2,'08:23:00',NULL,162,186,26.2,35.5,6.7,101.4,8.18,1.41,1.57,1.45,1,92.33,9.39,1.37,184.87,4.08,1.38,NULL,'shore break');
INSERT INTO `samples` VALUES (3315,23,'2021-09-02',3,'08:47:00',NULL,162,186,26.7,35.5,6.37,97.4,8.1,2.78,2.86,3.15,1,94.79,21.3,4.41,219.72,13.01,1.84,NULL,'lots of snorkelers further out, calm, slight swell');
INSERT INTO `samples` VALUES (3316,24,'2021-09-02',4,'09:12:00',NULL,162,186,26.7,34.9,5.79,88.3,8.09,8.14,8.01,8.5,1,120.1,11.92,6.15,607.45,46.89,4.24,NULL,'flat, calm, slight swell rolling in, debris floating, seemed cloudy');
INSERT INTO `samples` VALUES (3317,25,'2021-09-02',5,'09:29:00',NULL,162,186,26.8,35.1,5.46,83.4,8.02,8.19,7.6,7.46,1,117.68,15.72,3.01,445.44,11.73,1.7,NULL,'mostly calm, small shore break, cloudy water, 1 SUP in water, 2 resting on beach');
INSERT INTO `samples` VALUES (3318,1,'2021-08-31',1,'08:10:00',NULL,162,186,26.5,34.3,6.77,102.1,8.11,1.78,1.93,1.94,1,111.46,14.72,8.66,949.26,32.12,4.53,NULL,NULL);
INSERT INTO `samples` VALUES (3319,2,'2021-08-31',2,'08:42:00',NULL,162,186,26.5,35.4,6.45,98.1,8.18,2.83,2.89,2.75,1,126.48,13.07,4.31,359.02,46.79,1.73,NULL,'2 SUPs out further (4ppl), calm');
INSERT INTO `samples` VALUES (3320,3,'2021-08-31',3,'09:00:00',NULL,162,186,26.4,35.6,5.68,86.5,8.1,1.65,1.66,1.51,1,75.58,13.81,4.14,155,5.45,1.55,NULL,'very calm and clear, break in the sand dune, water not flowing out to sea, but seawater is flowing inland into the canal');
INSERT INTO `samples` VALUES (3321,52,'2021-08-31',4,'09:15:00',NULL,162,186,26.6,35.8,6.71,102.7,8.19,0.84,0.98,0.83,1,85.35,10.85,1.87,87.1,1.9,0.34,NULL,'sample from 100ft to the right from regular site due to exposed rock and big wave. break on shore');
INSERT INTO `samples` VALUES (3322,5,'2021-08-31',5,'09:44:00',NULL,162,186,27.1,35.4,6.62,101.7,8.22,1.72,1.89,1.93,1,116.31,15.93,5.7,389.53,25.37,3.57,NULL,'ocean kayaker ~50 yards out, large shore break, very sandy water in sampling area');
INSERT INTO `samples` VALUES (3323,6,'2021-08-31',6,'10:09:00',NULL,162,186,27.3,35.4,6.59,101.5,8.2,4.31,4.42,4.24,1,94.44,16.03,6.5,442.21,7.03,1.43,NULL,'black sand (new) in sampling area');
INSERT INTO `samples` VALUES (3324,7,'2021-09-22',1,'08:10:00',NULL,162,187,25.6,35.1,6.08,90.6,8.11,13.7,13.1,13.7,1,98.67,14.19,8.03,559.19,5.45,2.46,NULL,'murky, stream trickling ** had to use spare turbidity vial.');
INSERT INTO `samples` VALUES (3325,8,'2021-09-22',2,'08:32:00',NULL,162,187,25.9,34.7,5.99,89.7,8.12,14.3,14.5,15.6,1,125.57,11.78,6.04,948.84,10.63,2.44,NULL,NULL);
INSERT INTO `samples` VALUES (3326,9,'2021-09-22',3,'08:52:00',NULL,162,187,26.2,34.9,6.23,93.9,8.11,5.9,5.19,5.05,1,107.35,10.2,5.02,459.88,17.54,2.26,NULL,NULL);
INSERT INTO `samples` VALUES (3327,14,'2021-09-22',4,'09:21:00',NULL,162,187,25,35.6,6.25,92.5,8.11,2.51,2.93,2.53,1,70.23,8.02,3.2,272.94,2.01,0.39,NULL,NULL);
INSERT INTO `samples` VALUES (3328,18,'2021-09-22',5,'09:41:00',NULL,162,187,25.6,35.5,6.62,99,8.21,4.7,4.44,4.61,1,75.77,7.41,2.89,135.15,1.86,0.72,NULL,'dad + son fishing. slow floating matter in turbidity sample');
INSERT INTO `samples` VALUES (3329,19,'2021-09-23',1,'07:55:00',NULL,162,187,24.8,34.8,6.21,91.3,8.17,7.18,8.6,7.07,1,99.28,14.79,7.39,432.96,3.33,4.28,NULL,'tour catamaran in bay, light drizzle, ground wet (maybe rained over night or early morning), overcast');
INSERT INTO `samples` VALUES (3330,22,'2021-09-23',2,'08:35:00',NULL,162,187,25.4,35.6,6.55,97.7,8.21,1.28,1.08,0.99,1,74.18,8.58,3.32,108.03,3.39,0.28,NULL,'breezy, wave action, 1 surfer further out in wave break');
INSERT INTO `samples` VALUES (3331,23,'2021-09-23',3,'09:00:00',NULL,162,187,25.6,35.1,6.38,95.2,8.14,2.53,2.43,2.3,1,128.84,20.17,12.61,687.84,44.27,1.61,NULL,'light breeze, clearer sky, no waves, slight influx of water');
INSERT INTO `samples` VALUES (3332,24,'2021-09-23',4,'09:27:00',NULL,162,187,25.5,34.6,6.22,92.6,8.11,8.1,7.63,8.23,1,125.87,11.97,9.93,679.09,50.44,2.07,NULL,'clear sky, light breeze, pretty calm, small waves rolling in, slightly bigger break further out');
INSERT INTO `samples` VALUES (3333,25,'2021-09-23',5,'09:45:00',NULL,162,187,25.8,34.6,6.07,90.7,8.09,14.7,15.8,16,1,112.57,11.71,7.59,604.82,27.68,0.66,NULL,'2 people further down beach, 1 snorkeler in water, low tide, calm, small wave break on reef further out');
INSERT INTO `samples` VALUES (3334,1,'2021-09-21',1,'08:03:00',NULL,162,187,25,34.7,6.49,95.6,8.13,2.77,2.73,2.45,1,111.83,22.32,11.57,668.39,28.38,2.47,NULL,'started pouring on way back to car');
INSERT INTO `samples` VALUES (3335,2,'2021-09-21',2,'08:32:00',NULL,162,187,25,33.6,6.38,92.9,8.16,2.34,2.62,2.3,1,246.55,20.53,12.98,1257.78,169.84,4.23,NULL,'low tide');
INSERT INTO `samples` VALUES (3336,3,'2021-09-21',3,'08:50:00',NULL,162,187,25.1,35.2,6.47,95.5,8.14,3.18,3.46,2.9,1,94.75,11.88,3.91,231.55,11.95,0.32,NULL,'water in stream, but not flowing into ocean, blocked by sand dune');
INSERT INTO `samples` VALUES (3337,52,'2021-09-21',4,'09:11:00',NULL,162,187,25.6,35.4,6.59,98.3,8.2,1.57,1.45,1.6,1,75.74,9.94,3.8,225.88,1.83,1.26,NULL,'walked to rthe right ~50 yards because of rocks (low tide)');
INSERT INTO `samples` VALUES (3338,5,'2021-09-21',5,'09:35:00',NULL,162,187,26.4,33.8,6.81,102.2,8.24,4.23,4.61,4.36,1,195.07,15.22,9.77,1258.96,112.62,2.24,NULL,NULL);
INSERT INTO `samples` VALUES (3339,6,'2021-09-21',6,'09:48:00',NULL,162,187,26.6,34.4,6.46,97.6,8.21,2.07,2.25,2.1,1,135.39,22.52,6.24,809.07,21.91,1.38,NULL,NULL);
INSERT INTO `samples` VALUES (3340,7,'2021-10-13',1,'08:15:00',NULL,162,188,26.9,35.5,6.11,94,8.11,4.99,5.01,4.79,1,88.72,9.07,3.88,185.13,0.61,0.28,NULL,'stream light flow, hbigh tide, 3 people playing on beach');
INSERT INTO `samples` VALUES (3341,8,'2021-10-13',2,'08:45:00',NULL,162,188,27.2,35.5,6.24,96.8,8.11,9.83,9.91,9.73,1,100.3,12.02,5.41,294.35,2.86,1.5,NULL,'very high tide, swell');
INSERT INTO `samples` VALUES (3342,9,'2021-10-13',3,'09:00:00',NULL,162,188,27.2,35,5.71,88.2,8.08,19.4,20.2,21.7,1,125.38,13.91,7.74,476.86,17.35,4.95,NULL,'very high tide, swell');
INSERT INTO `samples` VALUES (3343,14,'2021-10-13',4,'09:33:00',NULL,162,188,26.1,35.6,6.42,97.6,8.14,3.67,3.79,3.77,1,77.08,14.63,6.12,248.45,2.95,0.56,NULL,'2 in water- snorkelers further out, strong shore break');
INSERT INTO `samples` VALUES (3344,18,'2021-10-13',5,'09:47:00',NULL,162,188,26.6,35.8,6.66,102.2,8.22,3.01,2.87,2.8,1,83.91,10.56,3.79,461.39,1.76,0.32,NULL,'crashing shore waves with 6 sec between & very windy');
INSERT INTO `samples` VALUES (3345,19,'2021-10-14',1,'07:50:00',NULL,162,188,25.5,34.8,6.02,90.1,8.18,0.69,0.85,0.79,1,92.55,16.05,5.85,259.13,1.63,2.59,NULL,'calm, flat, no wind');
INSERT INTO `samples` VALUES (3346,22,'2021-10-14',2,'08:25:00',NULL,162,188,25.8,35.5,6.72,101.8,8.22,1.2,1.29,1.17,1,78.44,7.78,2.93,125.11,2.08,0.28,NULL,'windy, rough shore break, 1 dog running around in and out of water');
INSERT INTO `samples` VALUES (3347,23,'2021-10-14',3,'08:49:00',NULL,162,188,25.8,34.5,6.52,98.1,8.13,1.94,1.89,2.01,1,156.92,17.38,13.35,856.31,68.83,2.14,NULL,'calmer, little wind');
INSERT INTO `samples` VALUES (3348,24,'2021-10-14',4,'09:17:00',NULL,162,188,26,35.1,6.28,95,8.14,9.04,9.09,9.44,1,122.99,13.19,8.8,463.3,43.95,2.25,NULL,'calm, turbid');
INSERT INTO `samples` VALUES (3349,25,'2021-10-14',5,'09:35:00',NULL,162,188,25.4,34.8,6.88,102.9,8.13,12,12.6,11.7,1,101.72,10.23,6.7,472.48,7.31,1.18,NULL,'calm, turbid');
INSERT INTO `samples` VALUES (3350,1,'2021-10-12',1,'08:03:00',NULL,162,188,25.7,34.9,6.58,99.1,8.14,1.68,1.75,1.73,1,226.52,13.21,5.63,375.38,8.33,9.36,NULL,'raining upon arrival, windy, sun came out when doing analysis, rough water inshore');
INSERT INTO `samples` VALUES (3351,2,'2021-10-12',2,'08:40:00',NULL,162,188,26.3,35.1,6.32,96.4,8.15,8.6,7.87,7.96,1,176.86,13.3,5.25,458.5,37.5,4.91,NULL,'slight breeze, rough break on shore');
INSERT INTO `samples` VALUES (3352,3,'2021-10-12',3,'09:04:00',NULL,162,188,26.1,35.3,6.61,100.6,8.16,3.77,4.01,4.74,1,98.14,10,2.94,174.44,2.25,0.3,NULL,NULL);
INSERT INTO `samples` VALUES (3353,52,'2021-10-12',4,'09:28:00',NULL,162,188,26.9,35.4,6.49,100,8.21,1.05,1.06,1.26,1,100.94,13.84,4.54,171.8,3.4,1.18,NULL,'not as rough, sand dune broken-may allow stream to flow later if heavy rain continues');
INSERT INTO `samples` VALUES (3354,5,'2021-10-12',5,'09:50:00',NULL,162,188,27.3,35,6.63,102.6,8.22,8.04,7.96,8.14,1,102.34,12.58,4.66,206.74,7.58,2.82,NULL,'much calmer, still have a shore break, sunny, little breeze bigger surf further north, rocky on south end');
INSERT INTO `samples` VALUES (3355,6,'2021-10-12',6,'10:17:00',NULL,162,188,27.5,35.6,6.51,101.4,8.22,2.53,2.66,2.65,1,117.58,10.62,3.33,177.04,1.27,0.44,NULL,'calm, little break on shore, little to no wind, sunny');
INSERT INTO `samples` VALUES (3356,7,'2021-11-03',1,'08:15:00',NULL,162,189,26.2,34.4,6.18,93.4,8.07,0.85,0.84,0.82,1,138.52,9.2,6.29,420.38,2.45,2.76,NULL,'Kit put pH probe in by mistake on 1st read; took 4th reading on turbidity (see data sheet); no tape on KCl; KCl tipped as some point so they added some');
INSERT INTO `samples` VALUES (3357,8,'2021-11-03',2,'08:42:00',NULL,162,189,26.4,35,6.02,91.7,8.12,3.56,3.1,2.9,1,117.9,12.72,6.42,307,6.26,5.42,NULL,NULL);
INSERT INTO `samples` VALUES (3358,9,'2021-11-03',3,'09:01:00',NULL,162,189,26.5,35.1,6.17,94.1,8.13,2.23,2.51,2.84,1,91.4,12.29,6.05,230.36,4.26,2.17,NULL,'2 monk seals south of 1st reef');
INSERT INTO `samples` VALUES (3359,14,'2021-11-03',4,'09:36:00',NULL,162,189,28.8,35.3,6.23,97.2,8.1,0.98,0.96,0.98,1,104.07,7.55,2.87,250.81,2.61,2.13,NULL,NULL);
INSERT INTO `samples` VALUES (3360,18,'2021-11-03',5,'09:54:00',NULL,162,189,27.6,35.4,6.59,102.5,8.16,2.96,3.15,3.06,1,82.9,7.77,2.27,89.23,1.41,0.75,NULL,NULL);
INSERT INTO `samples` VALUES (3361,19,'2021-11-04',1,'08:00:00',NULL,162,189,24.9,34.7,6.59,98,8.16,17.2,15.8,16.9,1,104.63,21.99,10.86,373.04,6.04,7,NULL,'rain sprinkles and high surf on outer break; salinity 2nd reading: 36.2; pH 2nd reading: 8.16');
INSERT INTO `samples` VALUES (3362,22,'2021-11-04',2,'08:40:00',NULL,162,189,26.1,35.4,6.69,102.1,8.2,1.23,1.63,1.29,1,85.32,15.07,4.76,70.58,2.6,0.99,NULL,'2nd salinity reading: 36.9');
INSERT INTO `samples` VALUES (3363,23,'2021-11-04',3,'09:05:00',NULL,162,189,26.3,35,6.71,102.7,8.17,3.43,3.26,4.01,1,108.13,17.16,10.28,453.06,30.5,2.95,NULL,'salinity 2nd reading: 36.5');
INSERT INTO `samples` VALUES (3364,24,'2021-11-04',4,'09:35:00',NULL,162,189,25.7,34.8,6.7,101.3,8.14,17.4,17,16.8,1,130.2,16.86,11.2,489.96,46.61,2.96,NULL,'2nd salinity reading: 36.2');
INSERT INTO `samples` VALUES (3365,25,'2021-11-04',5,'09:55:00',NULL,162,189,26.3,35.3,7.16,109.5,8.26,4.01,3.97,4.25,1,82.64,15.97,7.48,300.13,8.06,1.34,NULL,'2nd DO%: 109.4; water in stream, but not flowing to ocean; Rained last night in Kahana and drizzled throughout the sampling morning all over');
INSERT INTO `samples` VALUES (3366,1,'2021-11-02',1,'08:10:00',NULL,162,189,26.2,35.3,6.65,101.5,8.22,1.33,1.54,1.4,1,107.24,9.83,4.33,204.88,8.86,8.98,NULL,'large shore break; got 8.22 for pH 3x');
INSERT INTO `samples` VALUES (3367,2,'2021-11-02',2,'08:44:00',NULL,162,189,26,33.3,6.72,101.1,8.2,7.44,7.64,7.99,1,306.78,27.56,14.77,1733.76,212.52,3.29,NULL,'dog on beach; lots of surfers; big swell; sand has filled in the beach - at a higher level than last sampling session; got 8.20 for pH 3x');
INSERT INTO `samples` VALUES (3368,3,'2021-11-02',3,'09:08:00',NULL,162,189,26.8,35.5,6.64,102.3,8.21,3.25,3.98,3.22,1,88.66,18.84,4.64,79.91,3.43,3.29,NULL,'medium wave action; freshwater blocked by sand dune, but relatively clear (can see fish inside; 2nd salinity reading: 36.9; got 8.20 for pH 2x');
INSERT INTO `samples` VALUES (3369,52,'2021-11-02',4,'09:34:00',NULL,162,189,26.5,35.3,6.65,102.1,8.2,7.92,7.81,7.15,1,94.87,8.65,4.66,121.11,2.76,2.78,NULL,'continuing to sample off to the right due to rock exposure; got 8.20 for pH 3x; forgot to put Jamie Kranberg\'s name on the data sheet (she shows up around the 3rd site)');
INSERT INTO `samples` VALUES (3370,5,'2021-11-02',5,'10:00:00',NULL,162,189,26.5,34.7,6.68,101.9,8.21,2.67,2.69,3.19,1,130.18,12.28,6.3,504.5,37.71,5.1,NULL,'calmer conditions; got 8.21 pH 2x');
INSERT INTO `samples` VALUES (3371,6,'2021-11-02',6,'10:22:00',NULL,162,189,26.7,34.3,6.51,100.4,8.19,2.67,2.72,2.6,1,95.91,13.82,9.26,684.54,15.77,2.9,NULL,'calm; got 8.20 pH 2x');
INSERT INTO `samples` VALUES (3372,7,'2021-12-01',1,'08:11:00',NULL,162,190,25.7,35.3,5.84,87.6,8.06,2.97,2.33,2.66,1,85.04,10.84,6.7,505.9,3.32,2.75,NULL,'stream flowing straight down (heavier than normal), Nalei took picture');
INSERT INTO `samples` VALUES (3373,8,'2021-12-01',2,'08:39:00',NULL,162,190,25.6,34.8,5.41,80.8,8.06,13.1,15.3,14.4,1,113.23,11.12,5.57,408.82,13.25,4.18,NULL,'area around drain pipe looks like it was dug out recently, 4th turbidity 14.4');
INSERT INTO `samples` VALUES (3374,9,'2021-12-01',3,'09:00:00',NULL,162,190,25.8,35,5.49,82.4,8.07,6.71,5.65,5.29,1,98.88,14.95,8.21,477.27,12.72,5.91,NULL,'1 dog, lots of limu at water line, sand is back. very calm');
INSERT INTO `samples` VALUES (3375,14,'2021-12-01',4,'09:27:00',NULL,162,190,25.8,35.5,6.35,95.5,8.1,1.44,1.23,1.46,1,97.48,7.7,2.32,271.68,3.09,1.93,NULL,'very calm, slight breeze');
INSERT INTO `samples` VALUES (3376,18,'2021-12-01',5,'09:45:00',NULL,162,190,25.9,35.8,7.06,106.6,8.2,6.45,6.06,5.79,1,87.07,16.87,7.6,110.09,1.18,1.38,NULL,'slight shorebreak, looks mirky,  4th turbidity 5.56');
INSERT INTO `samples` VALUES (3377,19,'2021-12-02',1,'07:55:00',NULL,162,190,24.2,34.2,6.59,95.5,8.19,6.02,5.93,6.65,1,102.3,18.2,7.27,358.01,3.94,2.86,NULL,'rained last night, river flowing');
INSERT INTO `samples` VALUES (3378,22,'2021-12-02',2,'08:32:00',NULL,162,190,25.6,35.6,6.74,101.1,8.2,0.77,0.67,0.65,1,114.98,31.76,14.54,68.37,2.55,4.1,NULL,'4 dogs on beach, rougher conditions');
INSERT INTO `samples` VALUES (3379,23,'2021-12-02',3,'09:00:00',NULL,162,190,25.6,35.1,6.67,99.6,8.12,3.32,3.09,3.11,1,141.72,19.02,14.68,862.66,65.68,1.56,NULL,'smells like sunscreen, pretty calm conditions');
INSERT INTO `samples` VALUES (3380,24,'2021-12-02',4,'09:28:00',NULL,162,190,25.1,34.7,6.41,94.7,8.1,5.45,5.16,5.06,1,138.43,13.54,10.79,673.48,53.12,2.78,NULL,'pretty calm, small waves, looked a little clearer today. bad smell going down the steps, but beach smelled fine.');
INSERT INTO `samples` VALUES (3381,25,'2021-12-02',5,'09:46:00',NULL,162,190,25.6,34.9,6.87,102.2,8.14,5.39,5.75,4.38,1,98.62,12.9,8.76,575.92,20.84,0.28,NULL,'calm conditions, small waves');
INSERT INTO `samples` VALUES (3382,1,'2021-11-30',1,'08:10:00',NULL,162,190,24.9,35.1,6.74,99.5,8.15,1.76,1.75,1.79,1,101.14,10.81,6.4,363.12,16.82,2.17,NULL,'*raining on and off last few days* sand is wet');
INSERT INTO `samples` VALUES (3383,2,'2021-11-30',2,'08:42:00',NULL,162,190,24.9,33.3,6.7,98.1,8.15,6.26,6.48,5.3,1,335.69,14.99,14.65,2190.62,256.69,2.21,NULL,'1 SUP, 1 foiler out on the wave,sand has filled in against the rocks on shore, 1 fisherman on the other side of the beach');
INSERT INTO `samples` VALUES (3384,3,'2021-11-30',3,'09:05:00',NULL,162,190,24.8,35.1,6.94,102.9,8.13,1.68,1.7,1.94,1,97.48,10.69,5.13,345.37,3.92,0.99,NULL,NULL);
INSERT INTO `samples` VALUES (3385,52,'2021-11-30',4,'09:36:00',NULL,162,190,25.5,35.6,6.75,101.1,8.18,2.24,2.25,2.07,1,94.28,9.47,3.95,118.72,5.29,0.75,NULL,'sand has covered rocky area, but we still walked to the right to sample for consistency, 35.5 ppt 2nd reading');
INSERT INTO `samples` VALUES (3386,5,'2021-11-30',5,'10:04:00',NULL,162,190,26.5,35.3,6.67,101.4,8.17,2.16,2.23,2.13,1,106.53,11.85,5.15,374.98,24.57,2.96,NULL,'4th turbidity 2.23, 2nd salinity same 35.3ppt');
INSERT INTO `samples` VALUES (3387,6,'2021-11-30',6,'10:29:00',NULL,162,190,26.3,35.1,6.69,101.6,8.19,1.26,1.35,1.6,1,99.06,11.93,4.9,515.5,11.73,0.51,NULL,NULL);
INSERT INTO `samples` VALUES (3388,7,'2021-12-29',1,'08:10:00',NULL,162,191,23.9,33.2,6.5,93.8,7.97,2.79,2.71,2.41,1,104.64,16.82,15.3,1563.22,6.53,8.1,NULL,'several surf/kayakers, walkers (Kristy submitting streamflow photos for PFF and PLH)');
INSERT INTO `samples` VALUES (3389,8,'2021-12-29',2,'08:34:00',NULL,162,191,23.8,35.1,6.42,93.5,8.02,4.07,4.59,4.06,1,80.69,7.29,5.23,197.91,3.89,1.76,NULL,'not too many people, lots of tree debris');
INSERT INTO `samples` VALUES (3390,9,'2021-12-29',3,'08:55:00',NULL,162,191,23.9,35.2,6.38,93.1,8.03,4.13,4.54,4.63,1,99.5,8.93,4.28,184.83,4.32,5.33,NULL,'2 surfers in water left of site, 5 people on beach, lots of tree debree, 4th turbidity reading 4.63');
INSERT INTO `samples` VALUES (3391,14,'2021-12-29',4,'09:25:00',NULL,162,191,23.6,35.3,6.53,94.7,8.05,2.98,2.76,2.83,1,82.74,6.91,5.25,306.01,5.12,2.28,NULL,'8 beach goers, 4 snorkelers, 4th turbidity 2.83');
INSERT INTO `samples` VALUES (3392,18,'2021-12-29',5,'09:46:00',NULL,162,191,24,35.3,6.83,99.7,8.07,7.2,7.16,7.02,1,91.19,11.9,7.18,303.75,9.16,2.38,NULL,'2 people, 1 dog, strong waves. *Tabetha was data recording and didnt realize she was was supposed to put the #s in the right columns,  Meredith filled in what she could');
INSERT INTO `samples` VALUES (3393,19,'2021-12-30',1,'07:58:00',NULL,162,191,22.9,24.3,7.18,96.6,8.13,4.2,4.02,4.22,1,108.25,9.78,8.5,1047.03,15.24,2.52,NULL,'calm, debris still on beach and in water, 4th turbidity 4.20. Did not notice the low salinity until after we left the site.');
INSERT INTO `samples` VALUES (3394,22,'2021-12-30',2,'08:35:00',NULL,162,191,24,35.5,6.96,102,8.13,0.75,0.66,0.65,1,72.67,7.46,3.46,84.54,2.51,0.47,NULL,'started lightly raining on way back to car,  rough shore break, surfers further. out');
INSERT INTO `samples` VALUES (3395,23,'2021-12-30',3,'09:00:00',NULL,162,191,24,34.4,6.87,100.3,8.07,2.72,2.25,2.43,1,122.81,13.49,11.97,595.9,47.31,1.53,NULL,'sun trying to come. out');
INSERT INTO `samples` VALUES (3396,24,'2021-12-30',4,'09:25:00',NULL,162,191,24,34.5,6.85,99.8,8.09,10.7,10.3,9.72,1,125.55,13.35,11.93,596.38,54.55,2.92,NULL,'little swell');
INSERT INTO `samples` VALUES (3397,25,'2021-12-30',5,'09:45:00',NULL,162,191,24.2,34.9,7.18,105.2,8.14,6.82,6.99,6.36,1,91.83,11.91,9.37,361.48,11.18,2.66,NULL,'slight swell rolling in, river is very brown');
INSERT INTO `samples` VALUES (3398,1,'2021-12-28',1,'08:25:00',NULL,162,191,23.1,35.1,6.93,99.4,8.06,1.07,1.02,1.06,1,81.73,9.96,6.38,384.43,10.81,1.83,NULL,'high shore breaks. DO probe is taking a long time to stabilize. Replaced batteries in meter (never affected SAL probe)');
INSERT INTO `samples` VALUES (3399,2,'2021-12-28',2,'09:22:00',NULL,162,191,23.7,33.7,7.05,101.3,8.13,6.68,7.53,6.93,1,234.62,16.5,16,1914.53,157.28,2.99,NULL,'surfers out a way. high swell.  wind picking up.');
INSERT INTO `samples` VALUES (3400,3,'2021-12-28',3,'09:47:00',NULL,162,191,23.9,35.2,6.96,101.4,8.13,3.64,3.79,3.99,1,78.64,22.49,12.67,186.48,2.56,1.09,NULL,'2 guys fishing nearby. decent break on the waves. river not flowing into ocean, but high swells seep into river. river water looks clear.');
INSERT INTO `samples` VALUES (3401,52,'2021-12-28',4,'10:17:00',NULL,162,191,24.5,35.4,6.99,103,8.14,2.54,2.32,2.17,1,79.33,9.1,4.56,119.81,3.69,1.01,NULL,'sand is back so we go straight out at normal spot');
INSERT INTO `samples` VALUES (3402,5,'2021-12-28',5,'10:37:00',NULL,162,191,25.1,34.7,6.95,103.3,8.15,1.51,1.44,1.49,1,138.1,9.51,7.21,698.16,62.8,2.35,NULL,NULL);
INSERT INTO `samples` VALUES (3403,6,'2021-12-28',6,'10:55:00',NULL,162,191,25.2,34.8,6.82,101.5,8.15,4.89,5.82,5.56,1,87.11,19.21,13.75,641.74,13.99,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3404,7,'2022-01-19',1,'08:13:00',NULL,162,192,24.1,34.9,5.76,83.6,8.09,4.27,4.16,4.19,1,79.95,9.58,7.08,452.56,2.54,2.48,NULL,'steady moderate flow *pre sampling: blank 0.11 on 1st read, 0.13 on 2nd read, cleanded with oil and cloth');
INSERT INTO `samples` VALUES (3405,8,'2022-01-19',2,'08:38:00',NULL,162,192,24.4,35.2,5.56,81.2,8.08,8.62,8.3,8.54,1,128.77,11.33,8.27,451.59,8.7,3.41,NULL,'*kristy is submitting photos');
INSERT INTO `samples` VALUES (3406,9,'2022-01-19',3,'08:54:00',NULL,162,192,24.8,35,5.37,79.1,8.07,7.54,6.88,6.98,1,93.59,9.2,5.72,475.43,7.74,2.46,NULL,NULL);
INSERT INTO `samples` VALUES (3407,14,'2022-01-19',4,'09:21:00',NULL,162,192,25.7,35.7,6.32,94.6,8.17,1.34,1.3,1.47,1,92.87,5.07,2.17,177.23,4,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (3408,18,'2022-01-19',5,'09:40:00',NULL,162,192,25.6,35.8,6.79,101.6,8.17,5.87,5.81,5.41,1,73.96,5.03,2.21,76.52,2.48,0.32,NULL,NULL);
INSERT INTO `samples` VALUES (3409,19,'2022-01-20',1,'07:55:00',NULL,162,192,23.2,35.5,6.67,95.9,8.16,5.88,4.61,6.39,1,107.63,11.95,8.04,197.71,3.39,2.7,NULL,'read salinity twice at 35.5, replaced turbidity with 4th reading');
INSERT INTO `samples` VALUES (3410,22,'2022-01-20',2,'08:40:00',NULL,162,192,24.5,35.9,6.93,102.2,8.21,0.56,0.6,0.69,1,75.78,6.51,3.35,73.11,1.75,2.86,NULL,NULL);
INSERT INTO `samples` VALUES (3411,23,'2022-01-20',3,'09:05:00',NULL,162,192,24.6,35.4,6.78,99.9,8.13,2.27,2,2.21,1,114.41,11.01,9.03,407.63,24.22,2.7,NULL,NULL);
INSERT INTO `samples` VALUES (3412,24,'2022-01-20',4,'09:27:00',NULL,162,192,24.3,35.3,6.74,98.6,8.13,11.4,11.1,11.3,1,114.86,10.61,9.34,328.89,19.79,1.76,NULL,NULL);
INSERT INTO `samples` VALUES (3413,25,'2022-01-20',5,'09:42:00',NULL,162,192,24.7,35.1,6.72,98.8,8.15,5.58,5.95,6.13,1,111.67,8.3,7.14,478.35,20.16,1.15,NULL,'replaced turbidity with 4th reading');
INSERT INTO `samples` VALUES (3414,1,'2022-01-18',1,'08:13:00',NULL,162,192,23.9,35.7,6.94,100.9,8.15,1.09,1.05,1.18,1,100.5,11.5,6.28,251.52,11.59,1.9,NULL,NULL);
INSERT INTO `samples` VALUES (3415,2,'2022-01-18',2,'08:40:00',NULL,162,192,24.4,35.1,6.87,100.4,8.14,3.96,3.94,4.25,1,141.56,11.88,8.82,556.55,46.9,2.92,NULL,'fisherman about 50 yards south of beach');
INSERT INTO `samples` VALUES (3416,3,'2022-01-18',3,'09:05:00',NULL,162,192,24.4,35.4,6.91,101.2,8.15,1.3,1.49,1.45,1,82.33,5.44,4.75,99.12,2.43,0.5,NULL,'red flag posted on beach, stream not really flowing-small amount of water going back and forth with the tide, replaced salinity value');
INSERT INTO `samples` VALUES (3417,52,'2022-01-18',4,'09:30:00',NULL,162,192,24.6,35.5,6.84,100.9,8.18,2.27,2.02,2.03,1,95.71,8.15,6.42,253.21,9.16,2.51,NULL,'went 25 ft to the left becasue of rocks sticking out');
INSERT INTO `samples` VALUES (3418,5,'2022-01-18',5,'09:52:00',NULL,162,192,25.3,35.4,6.66,99.1,8.19,3.87,3.63,3.79,1,105.06,7.79,5.3,331.16,23.59,4,NULL,'1 fisherman on beach, replaced salinity value');
INSERT INTO `samples` VALUES (3419,6,'2022-01-18',6,'10:16:00',NULL,162,192,25.1,33.9,6.85,100.9,8.19,0.89,1.13,1.04,1,100.65,13.96,12.11,991.8,23.56,0.6,NULL,'sand churning where samples were taken, wave activity too');
INSERT INTO `samples` VALUES (3420,7,'2022-02-09',1,'08:17:00',NULL,162,193,24,35.3,5.99,86.8,8.07,2.97,3.13,2.76,1,96.76,8.81,7,414.6,2.13,3.24,NULL,'*using NBBF since #1 is having problems');
INSERT INTO `samples` VALUES (3421,8,'2022-02-09',2,'08:44:00',NULL,162,193,24.1,35.2,5.86,85.1,8.09,6,6.55,5.39,1,87.29,7.89,5.43,238.18,6.82,2.72,NULL,'very unusual turbidity');
INSERT INTO `samples` VALUES (3422,9,'2022-02-09',3,'09:07:00',NULL,162,193,24.4,35.3,5.91,86.4,8.07,3.89,3.92,3.77,1,92.3,7.19,5.2,231.55,9.64,2.95,NULL,'a diver walked across our site so we waited 5+ minutes before taking samples');
INSERT INTO `samples` VALUES (3423,14,'2022-02-09',4,NULL,NULL,162,193,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'*had to stop sampling after PLT-accident on. the apli and traffic backed up to Launiupoko');
INSERT INTO `samples` VALUES (3424,18,'2022-02-09',5,NULL,NULL,162,193,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3425,19,'2022-02-10',1,'07:50:00',NULL,162,193,22.2,34.6,6.53,91.5,8.13,1.57,1.31,1.22,1,86.18,8.09,5.28,373.39,2.02,1.96,NULL,'very calm conditions, clear, no debris, no surf *a resident stopped us (Vic Yannco) to say he noties really big runoff at alaeloa especially after mauka events and rain. He said specifically when Napili Market repaved the parking lot and then it rained, and all that debris came down the storm drain into alaeloa. Interested to see if that would be somewhere to sample.');
INSERT INTO `samples` VALUES (3426,22,'2022-02-10',2,'08:30:00',NULL,162,193,23.7,35.5,7.01,101.4,8.17,0.55,0.6,0.58,1,95.89,6.66,3.36,173.1,2.08,2.97,NULL,'2ft waves breaking on shore, turtle resting on the beach');
INSERT INTO `samples` VALUES (3427,23,'2022-02-10',3,'08:55:00',NULL,162,193,24.2,34.9,6.51,94.7,8.12,1.36,1.05,1.17,1,151.78,15.91,13.32,821.74,67.81,2.87,NULL,'calm water, lots of people');
INSERT INTO `samples` VALUES (3428,24,'2022-02-10',4,'09:25:00',NULL,162,193,23.7,34.6,6.6,94.9,8.11,4.84,5.18,5,1,127.29,10.64,9.42,572.55,38.56,4.71,NULL,'calm, slightly murky, not so much debris floating like usual, pH reading was from DO probe, 2nd reading correct');
INSERT INTO `samples` VALUES (3429,25,'2022-02-10',5,'09:41:00',NULL,162,193,24.1,34.5,6.77,97.9,8.09,2.89,2.49,2.63,1,116.57,7.61,6.4,615,22.51,1.2,NULL,'calm, small waves, family at south end of beach, walked passed by at the end of sampling');
INSERT INTO `samples` VALUES (3430,1,'2022-02-08',1,'07:40:00',NULL,162,193,23.4,34.9,6.83,97.8,8.08,1.12,1.16,1.15,1,111.07,10.95,8.06,477.24,17.57,3.63,NULL,'*swapped batteries on Hach2100Q, used spare pre-sample blank; hach. having issues');
INSERT INTO `samples` VALUES (3431,2,'2022-02-08',2,'08:15:00',NULL,162,193,23.9,34.8,6.57,94.7,8.14,2.61,2.92,2.91,1,164.72,10.36,9.32,564.67,73.93,6.78,NULL,NULL);
INSERT INTO `samples` VALUES (3432,3,'2022-02-08',3,'08:40:00',NULL,162,193,23.1,35.2,6.95,99.1,8.12,1.71,1.91,1.88,1,90.62,7.28,4.5,264.73,3.75,1.23,NULL,NULL);
INSERT INTO `samples` VALUES (3433,52,'2022-02-08',4,'09:01:00',NULL,162,193,24,35.5,6.75,97.8,8.16,0.95,1.02,1.21,1,104.51,7.58,4.85,105.18,3.41,2.38,NULL,'moved south 60 ft due to rocks');
INSERT INTO `samples` VALUES (3434,5,'2022-02-08',5,'10:30:00',NULL,162,193,25.5,34.9,6.71,99.8,8.17,4,4.03,4.15,1,149.22,10.04,7.87,621.51,52.79,4.49,NULL,'time delay because of 100th sampling event; #s different than ceremonial values');
INSERT INTO `samples` VALUES (3435,6,'2022-02-08',6,'10:50:00',NULL,162,193,25.3,34.1,6.86,101.1,8.19,1.45,1.45,1.58,1,125.96,16.31,13.68,1142.8,27.02,23.08,NULL,'*post. sampling: turbiditymeter reading low, read 5.46 NTU after a few. tries w/ low values. took a few tries to get the medium in range as well.');
INSERT INTO `samples` VALUES (3436,7,'2022-03-02',1,'08:13:00',NULL,162,194,24.5,35.6,6.04,88.6,8.13,3.46,2.76,3.35,1,103.66,7.69,4.9,351.54,2.68,3.02,NULL,NULL);
INSERT INTO `samples` VALUES (3437,8,'2022-03-02',2,'08:39:00',NULL,162,194,24.5,35.7,5.83,85.7,8.13,9.51,10.1,8.31,1,104.01,8.43,5.55,326.18,7.82,2.59,NULL,NULL);
INSERT INTO `samples` VALUES (3438,9,'2022-03-02',3,'08:58:00',NULL,162,194,24.8,35,5.88,86.6,8.1,12.4,11.9,12.1,1,107.05,8.95,6.55,553.39,11.46,5.06,NULL,NULL);
INSERT INTO `samples` VALUES (3439,14,'2022-03-02',4,'09:26:00',NULL,162,194,26.3,35.7,6.41,97,8.12,3.14,3.12,3.35,1,98.62,5.28,3.31,296.97,6.54,3.62,NULL,NULL);
INSERT INTO `samples` VALUES (3440,18,'2022-03-02',5,'09:47:00',NULL,162,194,26,36,6.9,104.2,8.17,10.7,10.7,9.68,1,88.28,5.4,3.73,103.97,2.28,3.57,NULL,'strong shore break');
INSERT INTO `samples` VALUES (3441,19,'2022-03-03',1,'08:05:00',NULL,162,194,23.2,35.3,6.55,94,8.2,2.73,1.86,2.53,1,117.23,9.68,5.69,223.15,1.7,4.21,NULL,'calm conditions; took 5 turbidity readings (unused readings: 1.78 and 2.41 NTU)');
INSERT INTO `samples` VALUES (3442,22,'2022-03-03',2,'08:45:00',NULL,162,194,24.6,35.8,6.84,101,8.19,0.57,0.62,0.71,1,99.92,11.41,5.83,84.96,2.73,4.64,NULL,'calm wind; surf small');
INSERT INTO `samples` VALUES (3443,23,'2022-03-03',3,'09:15:00',NULL,162,194,24.7,34.4,6.71,98.5,8.11,2.53,2.25,2.11,1,117.77,16.61,12.79,525.59,33.96,3.77,NULL,NULL);
INSERT INTO `samples` VALUES (3444,24,'2022-03-03',4,'09:35:00',NULL,162,194,24.7,35.2,6.4,94.3,8.1,6.58,6.53,6.56,1,128.95,11.07,9.57,495.39,38.28,12.04,NULL,NULL);
INSERT INTO `samples` VALUES (3445,25,'2022-03-03',5,'09:53:00',NULL,162,194,25.3,35,6.7,99.5,8.13,4.73,4.89,4.55,1,121.76,8.79,7.58,762.47,38.18,3.61,NULL,'unused turbidity reading: 3.51 NTU; redid nutrient sample since the 1st sample was only ~50 mL (used new syringe and filter bottle)');
INSERT INTO `samples` VALUES (3446,1,'2022-03-01',1,'08:05:00',NULL,162,194,24.3,35.7,6.86,100.3,8.18,1.37,1.36,1.35,1,104.04,10.64,7.24,271.36,11.66,2.46,NULL,'Surf');
INSERT INTO `samples` VALUES (3447,2,'2022-03-01',2,'08:30:00',NULL,162,194,24.6,34.6,6.82,99.7,8.16,4.31,3.84,3.07,1,198.57,12.4,10.96,997.06,115.51,3.76,NULL,'Surfs up');
INSERT INTO `samples` VALUES (3448,3,'2022-03-01',3,'08:55:00',NULL,162,194,24.5,35.6,6.77,99.4,8.16,1.5,1.75,1.73,1,92.42,7.22,3.95,125.32,7.21,1.84,NULL,'surf');
INSERT INTO `samples` VALUES (3449,52,'2022-03-01',4,'09:15:00',NULL,162,194,24.7,35.3,6.66,98.1,8.18,3.68,3.23,3.15,1,87.71,9.57,6.19,199.99,3.97,1.84,NULL,'Went 100 ft left due to rocks');
INSERT INTO `samples` VALUES (3450,5,'2022-03-01',5,'09:40:00',NULL,162,194,25.2,35.3,6.64,98.5,8.19,3.84,3.85,4.24,1,110.13,12.76,8.22,415.04,30.13,3.75,NULL,'Calm');
INSERT INTO `samples` VALUES (3451,6,'2022-03-01',6,'09:55:00',NULL,162,194,24.8,33.8,6.83,99.9,8.2,1.47,1.82,1.77,1,146.14,20.31,19.57,1634.54,41.6,2.43,NULL,NULL);
INSERT INTO `samples` VALUES (3452,7,'2022-03-23',1,'08:15:00',NULL,162,195,25,33.8,6.19,90.5,8.01,9.59,9.62,9.28,1,72.7,8.43,6.99,993.3,4.98,3.54,NULL,'big rain event in Lahaina on 3/21; also, the shore dropped off as a result of a shore break');
INSERT INTO `samples` VALUES (3453,8,'2022-03-23',2,'08:47:00',NULL,162,195,25.4,35.4,5.83,86.7,8.05,7.35,6.28,6.85,1,103.09,7.38,5.32,466.89,11.27,12.26,NULL,NULL);
INSERT INTO `samples` VALUES (3454,9,'2022-03-23',3,'09:16:00',NULL,162,195,26.1,35.3,6.53,95.5,8.09,10.4,10.9,11.3,1,79.67,6.39,3.98,345.41,13.67,4.61,NULL,'very silty right at water edge, kayak group further out at channel marker, some people snorkeling');
INSERT INTO `samples` VALUES (3455,14,'2022-03-23',4,'09:47:00',NULL,162,195,25.4,35.6,6.5,96.9,8.09,4.24,5.16,4.89,1,61.89,6.67,4.38,651.51,3.71,2.02,NULL,NULL);
INSERT INTO `samples` VALUES (3456,18,'2022-03-23',5,'10:11:00',NULL,162,195,25,35.6,6.98,103.3,8.16,14.1,12.4,12.5,1,59.25,6.03,2.56,204.47,2.28,2.08,NULL,'windy, shallow sample for safety');
INSERT INTO `samples` VALUES (3457,19,'2022-03-24',1,'07:50:00',NULL,162,195,23.4,33.2,6.87,97.3,8.11,74.9,66.8,79.6,1,83.53,9.95,7.39,645.32,21.09,3.71,NULL,'river running heavy; brown water, debris');
INSERT INTO `samples` VALUES (3458,22,'2022-03-24',2,'08:26:00',NULL,162,195,24.2,35.8,6.93,101.3,8.16,1.02,0.97,0.99,1,59.5,8.75,3.5,86.63,3.3,1.41,NULL,'high surf, but relatively clear');
INSERT INTO `samples` VALUES (3459,23,'2022-03-24',3,'08:50:00',NULL,162,195,24.4,34.3,6.93,100.6,8.12,3.11,3.72,3.73,1,138.89,18.45,15.59,1225.75,88.01,3.57,NULL,'clearer, pretty calm, lots of people on beach');
INSERT INTO `samples` VALUES (3460,24,'2022-03-24',4,'09:14:00',NULL,162,195,23.8,34.7,6.88,99,8.08,12.4,11.3,12.1,1,110.78,14.28,11.73,727.02,63.3,3.57,NULL,'murky, mostly calm,  small swell');
INSERT INTO `samples` VALUES (3461,25,'2022-03-24',5,'09:31:00',NULL,162,195,24.4,34.8,7.08,103.1,8.17,9.53,9.6,8.49,1,86.17,12.42,8.72,602.49,33.72,1.21,NULL,'murky, lots of algae debris floating');
INSERT INTO `samples` VALUES (3462,1,'2022-03-22',1,'08:13:00',NULL,162,195,24.8,35.5,6.87,101.3,8.14,1.09,1.07,1.05,1,81.34,9.17,5.65,342.27,16.27,3.49,NULL,'choppy waves');
INSERT INTO `samples` VALUES (3463,2,'2022-03-22',2,'08:36:00',NULL,162,195,25,33.1,6.71,97.7,8.14,6.66,6.54,5.54,1,381.46,12.49,11.36,2550.9,281.41,3.63,NULL,'choppy waves');
INSERT INTO `samples` VALUES (3464,3,'2022-03-22',3,'08:56:00',NULL,162,195,24.7,35.4,6.76,99.3,8.14,1.99,1.63,1.84,1,66.41,6.5,3.5,144.45,9.45,1.8,NULL,NULL);
INSERT INTO `samples` VALUES (3465,52,'2022-03-22',4,'09:17:00',NULL,162,195,25.1,35.3,6.67,98.6,8.16,1.48,1.41,1.48,1,76.53,7.31,4.46,277.12,8.54,1.85,NULL,'moved sample spot 100ft to the left due to rocks');
INSERT INTO `samples` VALUES (3466,5,'2022-03-22',5,'09:38:00',NULL,162,195,25.5,35.1,6.65,98.8,8.17,2.93,2.88,2.89,1,113.08,10.04,5.03,565.16,42.76,5.62,NULL,'jet ski launched before sample');
INSERT INTO `samples` VALUES (3467,6,'2022-03-22',6,'09:52:00',NULL,162,195,25.3,34.5,6.74,99.6,8.19,0.69,0.7,0.72,1,84.96,11.09,7.63,895.1,24.05,1.56,NULL,NULL);
INSERT INTO `samples` VALUES (3468,7,'2022-04-13',1,'08:09:00',NULL,162,196,25.5,34.8,6.25,92.9,8.04,6.93,6.58,6.8,1,85.84,10.12,8.96,821.36,5.51,3.73,NULL,NULL);
INSERT INTO `samples` VALUES (3469,8,'2022-04-13',2,'08:32:00',NULL,162,196,25.6,35.4,6.27,93.5,8.04,1.96,2.07,2.08,1,98.03,9.38,5.75,212.5,10.91,3.76,NULL,'**perfect day!');
INSERT INTO `samples` VALUES (3470,9,'2022-04-13',3,'08:49:00',NULL,162,196,25.8,35.9,6.56,98.7,8.06,1.71,1.55,1.57,1,87.47,7.27,3.43,148.06,4.61,4.9,NULL,'4th turbidty taken');
INSERT INTO `samples` VALUES (3471,14,'2022-04-13',4,'09:19:00',NULL,162,196,26.2,35.7,6.37,96.3,8.05,2.43,3.07,2.67,1,76.07,7.03,5.84,561.23,4.87,3.04,NULL,NULL);
INSERT INTO `samples` VALUES (3472,18,'2022-04-13',5,'09:42:00',NULL,162,196,26.4,36,6.81,103.4,8.11,6.66,6.39,6.3,1,81.82,5.91,3.69,187.43,2.32,3.02,NULL,NULL);
INSERT INTO `samples` VALUES (3473,19,'2022-04-14',1,'08:00:00',NULL,162,196,24.1,34.6,6.3,91.9,8.14,2.01,2.44,2.29,1,181.49,10.19,6.82,509.26,2.04,7.88,NULL,'presample blank second reading 0.10');
INSERT INTO `samples` VALUES (3474,22,'2022-04-14',2,'08:40:00',NULL,162,196,24.4,36,6.78,99.8,8.17,0.72,0.71,0.69,1,88.38,5.62,2.42,122.77,4.86,1.55,NULL,'calm conditions');
INSERT INTO `samples` VALUES (3475,23,'2022-04-14',3,'09:00:00',NULL,162,196,25.2,35.9,6.18,91.8,8.1,0.87,0.97,1.1,1,129.58,9.27,5.13,209.93,13.63,4.09,NULL,'windy, small waves');
INSERT INTO `samples` VALUES (3476,24,'2022-04-14',4,'09:30:00',NULL,162,196,25.2,35.2,6.37,94.2,8.1,3.6,3.68,3.82,1,97.59,6.77,4.9,572.19,12.95,2.28,NULL,'calm ocean, crowded beach');
INSERT INTO `samples` VALUES (3477,25,'2022-04-14',5,'09:50:00',NULL,162,196,25.4,35.1,6.82,101.2,8.15,2.18,1.9,1.96,1,137.5,11.07,8.28,479.59,42.75,8.59,NULL,NULL);
INSERT INTO `samples` VALUES (3478,1,'2022-04-12',1,'08:08:00',NULL,162,196,25,34.9,6.85,101,8.1,1.01,1.09,1.14,1,109.85,13.68,10.47,650.89,23.13,2.98,NULL,'blank took many tries.  **reminded volunteers that the people count should be numbers not \'NA\', and crossed it out so they remember');
INSERT INTO `samples` VALUES (3479,2,'2022-04-12',2,'08:28:00',NULL,162,196,24.9,33.3,6.74,98.3,8.14,3.34,3.31,3.89,1,295.84,13.31,11.44,2039.1,169.17,2.08,NULL,'syringe broke, did 2nd sample');
INSERT INTO `samples` VALUES (3480,3,'2022-04-12',3,'08:50:00',NULL,162,196,25.4,35.7,6.66,99.3,8.09,2.38,2.68,2.4,1,92.97,6.77,4.2,195.36,4.41,3.77,NULL,'paddle boarders');
INSERT INTO `samples` VALUES (3481,52,'2022-04-12',4,'09:10:00',NULL,162,196,25.9,35.9,6.68,100.6,8.14,2.33,3,2.65,1,81.23,7.51,3.6,275.83,2.52,1.77,NULL,'rocks- sampled 100 yards to the right');
INSERT INTO `samples` VALUES (3482,5,'2022-04-12',5,'09:33:00',NULL,162,196,25.9,35.1,6.63,99.7,8.16,10.5,10.5,10.3,1,138.98,10.99,7.46,625.13,53.04,4.08,NULL,'lots of large sand particles');
INSERT INTO `samples` VALUES (3483,6,'2022-04-12',6,'09:50:00',NULL,162,196,26,35.2,6.7,100.7,8.16,2.64,2.63,2.55,1,90.97,12.98,10.06,961.94,17.53,1.89,NULL,'lots of small sand');
INSERT INTO `samples` VALUES (3484,7,'2022-05-04',1,'08:16:00',NULL,162,197,24.7,35.3,6.67,97.8,8.1,9.28,8.66,9.13,1,91.37,9.92,6.82,219.96,3.51,2.09,NULL,'monk seal swam by just prior to sampling!  ** please continue to include extra filters');
INSERT INTO `samples` VALUES (3485,8,'2022-05-04',2,'08:41:00',NULL,162,197,24.9,35.2,6.52,95.7,8.1,3.78,3.99,3.94,1,78.42,8.25,4.97,150.32,4.73,3.72,NULL,'4th turbidity read taken');
INSERT INTO `samples` VALUES (3486,9,'2022-05-04',3,'09:01:00',NULL,162,197,25,35.1,6.47,95.2,8.1,2.57,2.37,2.55,1,79.74,10.77,8.5,246.73,11.4,3.91,NULL,'5 surfers walked out along our sample area, 2-3 minutes prior to sampling');
INSERT INTO `samples` VALUES (3487,14,'2022-05-04',4,'09:31:00',NULL,162,197,24.2,35.2,6.83,99.3,8.05,13.4,14.1,13.3,1,68.88,7.84,5.72,527.01,4.71,1.01,NULL,'syringe filter was blocked. swapped filter out and finished plunging');
INSERT INTO `samples` VALUES (3488,18,'2022-05-04',5,'09:54:00',NULL,162,197,25.7,35.6,6.99,104.2,8.17,5.31,6.25,5.65,1,67.94,7.41,3.44,77.5,1.72,0.99,NULL,'acid was bottle tipped over in sand prior to sample plunging in (bottle was empty). wiped outside and then plunged sample. 4th turbidity taken');
INSERT INTO `samples` VALUES (3489,19,'2022-05-05',1,'08:01:00',NULL,162,197,23.5,30.9,6.85,92.1,8.06,167,149,170,1,100.9,10.13,8.54,747.72,7.19,1.96,NULL,'stream running, raining, lots of large debris floating in water');
INSERT INTO `samples` VALUES (3490,22,'2022-05-05',2,'08:36:00',NULL,162,197,24.2,35.5,6.92,100.8,8.15,0.88,0.95,0.94,1,94.14,8.91,4.34,133.05,3.27,2.18,NULL,'rain');
INSERT INTO `samples` VALUES (3491,23,'2022-05-05',3,'09:02:00',NULL,162,197,24.3,34.1,6.93,100.2,8.12,5.13,4.37,4.71,1,150.27,18.53,17.96,1318.57,98.73,2.51,NULL,'4th turbidity taken, rain');
INSERT INTO `samples` VALUES (3492,24,'2022-05-05',4,'09:26:00',NULL,162,197,24.5,34.1,6.99,101.3,8.12,17.3,16.6,15.9,1,135.02,13.68,13.13,928.17,82.34,2.35,NULL,'rain');
INSERT INTO `samples` VALUES (3493,25,'2022-05-05',5,'09:43:00',NULL,162,197,25,34.4,7.48,109.6,8.18,6.55,6.28,6.16,1,84.57,9.54,6.43,560.12,20.47,0.58,NULL,'2 backhoes taking out the naupaka, dune restoration will be planting pohuehue and \'aki\'aki grass instead of naupaka. Vares Contracting. A tenant said strong stream runoff few days prior-lots of debris and brown water');
INSERT INTO `samples` VALUES (3494,1,'2022-05-03',1,'08:07:00',NULL,162,197,24.1,35.2,6.9,99.8,8.15,2.39,2.61,2.63,1,88.3,11.25,7.51,412.1,20.45,0.76,NULL,'larger swells, light drizzle **volunteers fogot about NA in people count, reminded them again.');
INSERT INTO `samples` VALUES (3495,2,'2022-05-03',2,'08:30:00',NULL,162,197,24,34.1,6.97,100.1,8.14,7.7,8.51,7.99,1,179.97,13.26,11.16,1018.25,117.95,1.88,NULL,'slight drizzle, ~2ft surf, slight trades, cloudy');
INSERT INTO `samples` VALUES (3496,3,'2022-05-03',3,'08:50:00',NULL,162,197,24,34.8,6.86,99.1,8.15,1.81,1.83,1.77,1,77.8,7.41,4.25,187.74,12.57,3.32,NULL,'light drizzle, refer to photos on stream');
INSERT INTO `samples` VALUES (3497,52,'2022-05-03',4,'09:11:00',NULL,162,197,23.9,35.3,6.89,99.6,8.15,3.24,4.81,5.39,1,66.84,9.46,5.34,177.13,3.19,0.28,NULL,'outgoing tide, wind chop, shorebreak 1-2\'');
INSERT INTO `samples` VALUES (3498,5,'2022-05-03',5,'09:33:00',NULL,162,197,24.7,34.6,6.87,100.1,8.15,14.5,14.1,14.7,1,129.81,12.27,9.2,780.4,67.97,1.51,NULL,'brown water, large waves');
INSERT INTO `samples` VALUES (3499,6,'2022-05-03',6,'09:48:00',NULL,162,197,24.7,34.4,6.91,100.7,8.17,4.47,4.16,4.53,1,81.68,16.54,13.74,886.29,20.67,3.59,NULL,'couple raindrops, surging shorebreak, light side shore wind NW, lowtide.');
INSERT INTO `samples` VALUES (3500,7,'2022-05-25',1,'08:16:00',NULL,162,198,25.3,35.1,5.74,85,8.08,2.87,2.58,2.81,1,65.77,9.53,7.17,519.72,2.09,2.32,NULL,NULL);
INSERT INTO `samples` VALUES (3501,8,'2022-05-25',2,'08:46:00',NULL,162,198,25.5,34.9,5.66,84.3,8.05,2.18,2.25,2.48,1,73.13,7.86,5.35,297.04,10.56,2.45,NULL,NULL);
INSERT INTO `samples` VALUES (3502,9,'2022-05-25',3,'09:05:00',NULL,162,198,26.1,35.4,6.12,92.5,8.06,1.48,1.44,1.42,1,73.8,6.48,3.49,192.51,5.01,3.39,NULL,NULL);
INSERT INTO `samples` VALUES (3503,14,'2022-05-25',4,'09:44:00',NULL,162,198,25.8,35.4,6.58,99,8.08,5.96,5.65,5.37,1,55.05,7.01,5.07,391.93,2.27,0.91,NULL,'HQ40d-2 having connection issues; battery a little over half');
INSERT INTO `samples` VALUES (3504,18,'2022-05-25',5,'10:10:00',NULL,162,198,26.6,35.7,6.69,102.1,8.18,9.85,8.39,8.95,1,63.6,6.4,2.43,271.77,1.76,6.86,NULL,NULL);
INSERT INTO `samples` VALUES (3505,19,'2022-05-26',1,'07:55:00',NULL,162,198,23.8,33.3,6.12,87.8,8.13,9.07,9.62,9.01,1,82.5,12.81,7.72,581.75,2.16,4.33,NULL,'calm conditions, no waves, lost of rocks at shoreline low turbidity standard was really low in post lab, but we cleaned it and got it up to 5.97 NTU (was reading ~ 5.45 NTU)');
INSERT INTO `samples` VALUES (3506,22,'2022-05-26',2,'08:35:00',NULL,162,198,24.3,35.7,6.83,100.2,8.22,0.69,0.62,0.6,1,65.28,9.25,3.68,85.13,1.84,1.3,NULL,'small waves');
INSERT INTO `samples` VALUES (3507,23,'2022-05-26',3,'09:00:00',NULL,162,198,24.6,35.5,6.33,93.2,8.15,1.76,2.04,2.2,1,82.99,13.12,5.89,218.93,16.33,3.47,NULL,'4th turbidity: 1.88; small shore break; swimmers near test site; HQ40d issues; turbidity meter \'READ\' button getting hard to press');
INSERT INTO `samples` VALUES (3508,24,'2022-05-26',4,'09:30:00',NULL,162,198,24.8,34.6,6.48,95.3,8.15,8.08,8.18,8.82,1,113.23,11.21,8.57,639.66,52.43,13.35,NULL,NULL);
INSERT INTO `samples` VALUES (3509,25,'2022-05-26',5,'09:45:00',NULL,162,198,24.4,34.9,5.78,84.7,8.08,6.22,5.46,5.26,1,78.9,7.4,3.94,391.77,17.93,2.06,NULL,'4th turbidity: 4.78; 5th: 4.89; cannot read last note about taking 2 readings');
INSERT INTO `samples` VALUES (3510,1,'2022-05-24',1,'08:09:00',NULL,162,198,24,32.4,6.85,97.7,8.14,1.87,2.41,2.16,1,134.03,16.77,15.89,1217.21,75.3,3.07,NULL,'raining; flat water');
INSERT INTO `samples` VALUES (3511,2,'2022-05-24',2,'08:31:00',NULL,162,198,24.8,31.9,6.68,96.2,8.21,1.68,1.81,1.83,1,560.38,18.31,17.67,2500.18,488.35,3.96,NULL,'can\'t read 1st part; no rain; flat water');
INSERT INTO `samples` VALUES (3512,3,'2022-05-24',3,'08:52:00',NULL,162,198,24.7,35.2,6.62,97.2,8.13,1.88,1.82,2.01,1,77.18,7.82,3.65,287.87,10.47,3.17,NULL,NULL);
INSERT INTO `samples` VALUES (3513,52,'2022-05-24',4,'09:15:00',NULL,162,198,25.6,35.4,6.94,103.8,8.19,0.73,0.62,0.62,1,68.17,9.18,3.85,101.87,1.96,0.84,NULL,'sample at main spot; flat water');
INSERT INTO `samples` VALUES (3514,5,'2022-05-24',5,'09:30:00',NULL,162,198,26.1,34.3,6.85,100.5,8.22,7.91,8.18,7.57,1,113.08,11.59,8.25,653.05,51.45,3.62,NULL,'2 SUP');
INSERT INTO `samples` VALUES (3515,6,'2022-05-24',6,'09:56:00',NULL,162,198,26.3,34.5,6.64,99.8,8.19,2.18,2.13,2.36,1,85.59,12.66,9.96,766.03,20.62,1.78,NULL,NULL);
INSERT INTO `samples` VALUES (3516,7,'2022-06-15',1,'08:24:00',NULL,162,199,24.7,34.8,NULL,NULL,8.01,1.83,1.63,1.88,1,90.63,5.85,3.3,379.15,5.36,3.04,NULL,'4 dogs in and out of water close to samplers; very low tide- King Tide yesterday; calm, no waves; Re-read DO % (1st read was 80.0%); King Tide June 14-15');
INSERT INTO `samples` VALUES (3517,8,'2022-06-15',2,'08:55:00',NULL,162,199,27.1,34.7,NULL,NULL,8.07,1.19,1.15,1.25,1,106.57,6.51,3.46,355.33,19.51,3.95,NULL,'Photo of low tide (Meredith); Turbidity meter wouldn\'t turn on - adjusted batteries and it worked; Low DO 2nd read = 77.5%; King Tide June 14-15');
INSERT INTO `samples` VALUES (3518,9,'2022-06-15',3,'09:20:00',NULL,162,199,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sample is QA\'d out due to sampling in too shallow of water');
INSERT INTO `samples` VALUES (3519,14,'2022-06-15',4,'09:54:00',NULL,162,199,26.4,35.4,NULL,NULL,8.13,1.24,1.22,1.12,1,83.43,5.42,2.29,324.9,1.22,1.33,NULL,'4 people in the water initiallt but 2 exited to the beach before sample was taken; 4th Turbidity = 1.39; Confirmed Salinity with 2nd read; King Tide June 14-15');
INSERT INTO `samples` VALUES (3520,18,'2022-06-15',5,'10:25:00',NULL,162,199,26.7,35.6,NULL,NULL,8.23,2.22,2.48,2.52,1,104.33,13.23,10.16,124.53,3.76,0.79,NULL,'4th Turbidity read = 1.77; 5th Turbidity read = 2.52 (replaced 3rd read which was 3.00); 2nd consistent read for Salinity (35.5) and DO% (113.7); King Tide June 14-15');
INSERT INTO `samples` VALUES (3521,19,'2022-06-16',1,'08:12:00',NULL,162,199,24.9,34.4,NULL,NULL,8.07,19.8,20.1,22.1,1,129.7,10.58,6.68,475.38,2.72,11.04,NULL,'calm, lots of fish near sampling; King Tide earlier this week June 14-15');
INSERT INTO `samples` VALUES (3522,22,'2022-06-16',2,'08:47:00',NULL,162,199,25.6,35.3,NULL,NULL,8.19,0.53,0.49,0.42,1,90.55,8.24,3.38,173.5,3.87,3.23,NULL,'Rain in the early morning; super low tide; King Tide earlier this week June 14-15');
INSERT INTO `samples` VALUES (3523,23,'2022-06-16',3,'09:12:00',NULL,162,199,25.9,35.4,NULL,NULL,8.08,1.04,1.06,1.3,1,137.19,9.88,4.96,218.98,21.69,4.27,NULL,'3 SUPs further out; Checked ppt a 2nd time - also 35.4 ppt; King Tide earlier this week June 14-15');
INSERT INTO `samples` VALUES (3524,24,'2022-06-16',4,'09:39:00',NULL,162,199,26.1,34.9,NULL,NULL,8.09,1.45,1.71,1.7,1,124.79,9.87,6.12,524.42,47.19,4.63,NULL,'King Tide earlier this week June 14-15');
INSERT INTO `samples` VALUES (3525,25,'2022-06-16',5,'09:57:00',NULL,162,199,25.9,35,NULL,NULL,8.17,1.65,1.69,1.85,1,105.11,8.51,3.54,510.02,18.98,3.68,NULL,'Stream has been blocked due to dredging; King Tide earlier this week June 14-15');
INSERT INTO `samples` VALUES (3526,1,'2022-06-14',1,'08:22:00',NULL,162,199,24.8,34.6,NULL,NULL,8.09,1.07,1.15,1.13,1,139.44,11.26,8.46,716.66,59.64,2,NULL,'DO mg/L reading high- perhaps new meter issue; light rain; 4th turbidity reading (1.13 NTU) replaced 1.61 NTU; using spare turbidity vial for samples becuase a scratch was found during pre-sampling verifiaction on vial sent out; King Tide June 14-15');
INSERT INTO `samples` VALUES (3527,2,'2022-06-14',2,'08:54:00',NULL,162,199,24.9,32.8,NULL,NULL,8.12,0.59,0.73,0.66,1,339.07,16.41,13.56,2710.13,287.21,4.06,NULL,'4th turbidity reading (0.59 NTU) replaced 1.13 NTU; King Tide June 14-15');
INSERT INTO `samples` VALUES (3528,3,'2022-06-14',3,'09:16:00',NULL,162,199,25.4,35.4,NULL,NULL,8.18,0.8,0.84,0.76,1,88.16,6.06,2.34,204.86,4.59,2.53,NULL,'light rain; 4th turbidity reading (0.76 NTU) replaced 1.05 NTU; King Tide June 14-15');
INSERT INTO `samples` VALUES (3529,52,'2022-06-14',4,'09:45:00',NULL,162,199,26.4,35.4,NULL,NULL,8.15,0.93,0.87,0.94,1,94.86,7.84,4.51,160.39,8.15,2.09,NULL,NULL);
INSERT INTO `samples` VALUES (3530,5,'2022-06-14',5,'10:15:00',NULL,162,199,26.9,35.2,NULL,NULL,8.18,4.73,4.86,4.5,1,98.1,7.49,4.63,268.69,12.22,2.87,NULL,NULL);
INSERT INTO `samples` VALUES (3531,6,'2022-06-14',6,'10:32:00',NULL,162,199,26.2,33.4,NULL,NULL,8.18,0.66,0.66,0.68,1,114.39,13.83,10.94,1353.33,31.98,1.01,NULL,NULL);
INSERT INTO `samples` VALUES (3532,7,'2022-07-06',1,'08:20:00',NULL,162,200,26.7,35.1,5.74,86.7,8.05,1.92,2.04,2.04,1,74.33,7.54,5.32,241.84,2.38,2.06,NULL,'Calm, sunny, clear skies, canoe setting up to go out as sample was taken; Photo taken of freshwater (Kristie), resembles last session; took a 4th turbidity reading');
INSERT INTO `samples` VALUES (3533,8,'2022-07-06',2,'08:55:00',NULL,162,200,27.1,34.9,4.58,69.7,8.01,5.3,4.92,5.64,1,141.71,7.91,6.98,394.35,6.83,9.71,NULL,'Canoe just paddled past sample sit minutes before sample taken and stirred up sand & sediments; Most of the shore looks murky; Took a 4th turbidity reading; 2nd D0 reading = 4.65 mg/L and 70.7% (temp & salinity consistent)');
INSERT INTO `samples` VALUES (3534,9,'2022-07-06',3,'09:14:00',NULL,162,200,26.9,34.8,5.28,79.9,8.05,7.05,6.3,6.97,1,106.04,8.27,6.01,489.59,27.62,6.29,NULL,'4 kayaks floated by before sample; Less murky than PLHl Very shallow; 4th & 5th turbidty taken');
INSERT INTO `samples` VALUES (3535,14,'2022-07-06',4,'09:48:00',NULL,162,200,26.5,35.7,6.12,92.5,8.1,1.39,1.25,1.32,1,82.82,6.24,3.43,234.82,2.31,8.1,NULL,'Calm, sunny, more clear than last 2 sites; 4th turbidity reading');
INSERT INTO `samples` VALUES (3536,18,'2022-07-06',5,'10:12:00',NULL,162,200,26,35.4,6.77,101.4,8.17,11.7,11,11.3,1,84.04,9.28,6.19,188.5,1.8,8.16,NULL,'small shore break; strong drop off & undertow; At lab: Post-sampl Blank 1st read = 0.58 NTU (clean & oiled); 2nd read= 0.34 NTU (repeat); 3rd = 0.76... replaced blank with spare cell for the field tomorrow');
INSERT INTO `samples` VALUES (3537,19,'2022-07-07',1,'08:15:00',NULL,162,200,25.7,34.5,5.7,84.7,8.08,2.11,2.39,2.29,1,106.57,12.36,9.22,342.02,3.36,7.24,NULL,'Did multiple Turbidity pre-sample verificaiton reads and both the sample cell and the spare read high despite multiple reading and troubleshooting. RHL - calm, looked clear; 3 DO Saturation readings consistent at 84.7');
INSERT INTO `samples` VALUES (3538,22,'2022-07-07',2,'09:05:00',NULL,162,200,26.5,35.7,6.62,100.6,8.17,1.12,1.3,1.18,1,74.04,7.54,3.99,76.95,1.89,2.11,NULL,'Small swell, sunny, light wind');
INSERT INTO `samples` VALUES (3539,23,'2022-07-07',3,'09:35:00',NULL,162,200,27,34.5,6.48,98.4,8.07,1.81,1.75,2.06,1,156.6,18.07,17.2,978.74,103.29,5.05,NULL,'calm, clear, sunny');
INSERT INTO `samples` VALUES (3540,24,'2022-07-07',4,'10:05:00',NULL,162,200,27,35.3,6.08,92.7,8.07,5.61,6.36,6.19,1,87.19,10.35,6.77,334.83,21.72,3,NULL,'calm');
INSERT INTO `samples` VALUES (3541,25,'2022-07-07',5,'10:35:00',NULL,162,200,26.9,35.2,6.43,98,8.06,9.75,12.7,10.5,1,80.22,11.59,5.55,271.85,7.77,1.59,NULL,'light wind; some showers earlier this week');
INSERT INTO `samples` VALUES (3542,1,'2022-07-05',1,'08:36:00',NULL,162,200,25.9,34.9,NULL,NULL,8.16,1.55,1.57,1.77,1,112.5,11.39,8.37,537.17,21.66,3.87,NULL,'Hight tide; Took a second DO reading = 8.31 mg/L');
INSERT INTO `samples` VALUES (3543,2,'2022-07-05',2,'09:03:00',NULL,162,200,25.8,33.1,NULL,NULL,8.2,2.1,2.77,2.76,1,484.38,16.05,12.25,1887.04,242.1,4.77,NULL,'breezy, calm water, lots of people');
INSERT INTO `samples` VALUES (3544,3,'2022-07-05',3,'09:20:00',NULL,162,200,25.7,35.2,NULL,NULL,8.08,1.63,1.86,1.88,1,86.23,6.18,3.14,175.61,7.41,2.91,NULL,'photo taken of the stream flow (Liz), almost reaching the ocean; volunteers said it rained the night before');
INSERT INTO `samples` VALUES (3545,52,'2022-07-05',4,'09:40:00',NULL,162,200,26.7,35.4,NULL,NULL,8.23,1.4,1.49,1.6,1,87.55,7.49,3.05,144.21,2.42,1.58,NULL,'Sea turtle rescue team on the beach and going into the water as we took our samples; 6\'\' swells; DO saturation = 100.8%');
INSERT INTO `samples` VALUES (3546,5,'2022-07-05',5,'10:11:00',NULL,162,200,27.3,34.4,NULL,NULL,8.19,2.32,1.91,1.91,1,147.14,19.6,12.2,789.31,72.05,6.11,NULL,'DO meters out of acceptable range');
INSERT INTO `samples` VALUES (3547,6,'2022-07-05',6,'10:23:00',NULL,162,200,27.3,33.9,NULL,NULL,8.19,1.62,1.64,1.63,1,103.12,14.71,11.72,1023.08,28.55,3.82,NULL,'1st post-sampling low turbidity reading = 5.91 NTU; wiped it and then got 6.21 NTU 3x; wiped again 6.05 & again 6.11 NTU; 1st post-sampling high turbidity reading = 588 NTU');
INSERT INTO `samples` VALUES (3548,7,'2022-07-27',1,'08:16:00',NULL,162,201,26,35.3,6.25,93.8,8.1,2.12,2.36,2.25,1,81.41,9.52,5.75,314.64,3.12,6.05,NULL,'Beach-goer/ local said sediment cleared up through channel after last swell. Site seemed clearer. Canoe paddled through site ~5 min before sample was taken. SUP Yoga class with 4 people ~30 ft from sample site. Calm waters. Monk seal resting ~200 feet out.');
INSERT INTO `samples` VALUES (3549,8,'2022-07-27',2,'08:53:00',NULL,162,201,26.2,35.1,5.84,87.9,8.12,1.02,1.18,1.16,1,103.92,7.68,5.38,306.57,10.52,4.19,NULL,NULL);
INSERT INTO `samples` VALUES (3550,9,'2022-07-27',3,'09:23:00',NULL,162,201,26.6,35.7,6.34,96.6,8.09,0.86,0.76,0.79,1,82.22,8.4,3.94,125.4,6.06,2.54,NULL,NULL);
INSERT INTO `samples` VALUES (3551,14,'2022-07-27',4,NULL,NULL,162,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No samples taken because of traffic preventing access to site.');
INSERT INTO `samples` VALUES (3552,18,'2022-07-27',5,NULL,NULL,162,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No samples taken because of traffic preventing access to site.');
INSERT INTO `samples` VALUES (3553,19,'2022-07-28',1,'08:05:00',NULL,162,201,25.1,34.8,5.69,84,8.08,3.78,3.82,4.17,1,103.71,11.08,7.4,456.42,3.29,7.04,NULL,'4th turbidity read taken; 2nd read for DO was consistent; calm waters');
INSERT INTO `samples` VALUES (3554,22,'2022-07-28',2,'08:47:00',NULL,162,201,25.9,35.4,6.82,102.7,8.18,0.73,0.93,0.81,1,81.09,11.27,3.9,172.15,9.85,0.83,NULL,'some small shorebreak; sunny');
INSERT INTO `samples` VALUES (3555,23,'2022-07-28',3,'09:16:00',NULL,162,201,26.4,32.2,6.56,97.7,8.08,1.9,1.91,1.7,1,269.53,32.02,29.89,2664.89,195.1,4.14,NULL,'4th turbidity read taken');
INSERT INTO `samples` VALUES (3556,24,'2022-07-28',4,'10:05:00',NULL,162,201,25.9,34.4,6.75,100.9,8.18,7.82,7.64,8.26,1,127.48,14,9.17,891.81,53.66,5.78,NULL,'water appeared brown at the wave break out on the reef');
INSERT INTO `samples` VALUES (3557,25,'2022-07-28',5,'10:30:00',NULL,162,201,26,34.7,6.49,97.2,8.07,4.45,4.42,4.83,1,115.06,10.27,6.44,662.9,22.22,2.08,NULL,'4th turbidity read taken');
INSERT INTO `samples` VALUES (3558,1,'2022-07-26',1,'08:06:00',NULL,162,201,25.7,33.6,6.98,103.6,8.1,3.74,3.82,3.59,1,104.24,16.5,11.2,849.09,36.66,0.61,NULL,'0-1\' swells');
INSERT INTO `samples` VALUES (3559,2,'2022-07-26',2,'08:35:00',NULL,162,201,25.3,33.2,6.87,100.9,8.23,3.1,3.19,2.93,1,316.17,17.95,17.14,2536.81,246.95,3.83,NULL,'4th turbidity reading taken. Was not crossed out on data sheet');
INSERT INTO `samples` VALUES (3560,3,'2022-07-26',3,'09:03:00',NULL,162,201,25.4,35.7,6.84,102,8.18,2.06,2.22,1.87,1,76.65,6.09,2.82,87.19,2.63,3.94,NULL,'Beach restoration & construction going on in front of sampling area');
INSERT INTO `samples` VALUES (3561,52,'2022-07-26',4,'09:30:00',NULL,162,201,26.4,35.6,6.67,101,8.23,2.48,2.36,2.45,1,76.36,8.6,3.73,121.8,2.76,0.4,NULL,'4th turbidity reading taken. Was not corssed out on data sheet');
INSERT INTO `samples` VALUES (3562,5,'2022-07-26',5,'09:57:00',NULL,162,201,27.1,35.5,6.49,99.4,8.22,4.13,4.29,4.55,1,78.63,10.8,6.46,318.53,10.53,2.56,NULL,'3\' surf, lots of whitewater');
INSERT INTO `samples` VALUES (3563,6,'2022-07-26',6,'10:12:00',NULL,162,201,26.5,34.9,6.62,100.1,8.22,8.42,8.73,8.46,1,77.91,12.68,9.71,735.92,15.01,0.98,NULL,'4\' surf, large shorebreak. 4th turbididty reading taken. Was not corssed out on data sheet');
INSERT INTO `samples` VALUES (3564,7,'2022-08-17',1,'08:13:00',NULL,162,202,26.8,35.4,5.84,88.8,8.1,1.46,1.35,1.35,1,86.57,7.84,5.81,323.71,2.42,0.49,NULL,'Strong shore break; departing canoe with 3 people.');
INSERT INTO `samples` VALUES (3565,8,'2022-08-17',2,'08:34:00',NULL,162,202,26.8,35.4,6.26,95.2,8.09,18.9,19.4,18.5,1,117.92,11.05,9.34,603.41,5.5,5.36,NULL,'Switched filter mid-plunge on syringe; Very silty/sandy water nearshore.');
INSERT INTO `samples` VALUES (3566,9,'2022-08-17',3,'08:54:00',NULL,162,202,27.4,34.8,5.56,85,8.06,14.6,13.7,14.2,1,118.3,9.93,9.26,715.96,26.09,3.69,NULL,'2 SUPs walking out in water just prior to sampling. Filter gets more difficult 1/2 way through.');
INSERT INTO `samples` VALUES (3567,14,'2022-08-17',4,'09:35:00',NULL,162,202,28.2,35.8,6.15,95.9,8.06,4.05,4.03,4.14,1,95.51,5.55,3.19,242.26,2.28,0.94,NULL,NULL);
INSERT INTO `samples` VALUES (3568,18,'2022-08-17',5,'09:48:00',NULL,162,202,28.1,35.8,6.31,98.3,8.1,5.5,6.11,5.15,1,80.12,6.37,3.67,197.54,1.72,0.28,NULL,'4th turbidity taken. Couldn\'t get post-sample turbidity verification low standard to read higher than 5.63 NTU.');
INSERT INTO `samples` VALUES (3569,19,'2022-08-18',1,'08:00:00',NULL,162,202,26.3,35.3,6.06,91.3,8.14,1.09,1.2,1.26,1,116.79,9.52,5.34,260.88,4.89,5.09,NULL,'4th turbidity reading 1.51; glass vial wet after it was taken out of hatch.');
INSERT INTO `samples` VALUES (3570,22,'2022-08-18',2,'08:34:00',NULL,162,202,26.7,35.7,6.74,102.6,8.14,1.75,1.78,1.84,1,81.84,7.39,3.8,139.25,2.65,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3571,23,'2022-08-18',3,'08:58:00',NULL,162,202,27.4,35.6,6.38,98.2,8.1,1.44,1.57,1.71,1,125.51,9.42,6.72,268.33,16.66,0.64,NULL,NULL);
INSERT INTO `samples` VALUES (3572,24,'2022-08-18',4,'09:24:00',NULL,162,202,27.2,35.6,6.25,95.9,8.1,6.6,6.07,6.15,1,115.8,10.57,6.52,311.17,28.2,1.5,NULL,'4th turbidity reading taken.');
INSERT INTO `samples` VALUES (3573,25,'2022-08-18',5,'09:50:00',NULL,162,202,27.6,35.6,6.1,94.1,8.08,7.67,6.95,7.13,1,104.1,9.07,3.92,250.08,10.72,1.27,NULL,'Difficult to see potential freshwater because of road construction nut locals say no recent rain. POST-SAMPLE: 1st low post-sample turbidity read = 5.59 NTU and 2nd = 5.71 NTU. 1st post-sample turbidity blank = 0.13 NTU. and 2nd = 0.09 NTU.');
INSERT INTO `samples` VALUES (3574,1,'2022-08-16',1,'08:10:00',NULL,162,202,26.8,35.2,6.57,100,8.15,1.82,2.01,2.14,1,108.72,9.75,6.84,352.99,15.93,3.61,NULL,'Mid-tide, small rolling shorebreak; 4th turbidity reading taken');
INSERT INTO `samples` VALUES (3575,2,'2022-08-16',2,'08:30:00',NULL,162,202,26.9,34.8,6.15,93.4,8.14,1.68,1.6,1.53,1,196.15,10.45,8.03,648.25,97.42,3.76,NULL,'Clear, small rolling shorebreak; 4th turbidity reading');
INSERT INTO `samples` VALUES (3576,3,'2022-08-16',3,'08:51:00',NULL,162,202,26.9,35.3,6.23,94.8,8.07,2.28,2.61,2.31,1,97.87,7.51,4.52,205.51,8.48,2.94,NULL,'Clear, calm, no wind/clouds');
INSERT INTO `samples` VALUES (3577,52,'2022-08-16',4,'09:12:00',NULL,162,202,27.6,35.6,6.83,105.2,8.18,0.67,0.75,0.76,1,103.1,8.8,4.21,213.26,8.47,0.28,NULL,'Calm, minimal swells; hot & sunny; Noticed DO was high, confirmed wth 2nd DO read= consistent.');
INSERT INTO `samples` VALUES (3578,5,'2022-08-16',5,'09:38:00',NULL,162,202,27.9,35.2,6.55,101.2,8.17,5.97,6.61,6.15,1,120.97,9.45,6.6,413.3,24.74,1.82,NULL,'Slightly larger shorebreak than previous sites ~2-3\'; stagnant smell in parking lot/beach.');
INSERT INTO `samples` VALUES (3579,6,'2022-08-16',6,'09:52:00',NULL,162,202,27.7,35,6.52,100.6,8.17,1.88,1.78,1.84,1,99.36,9.77,7.25,517.83,12.41,0.72,NULL,'Turbidimeter spontaneously shut off but is working now.');
INSERT INTO `samples` VALUES (3580,7,'2022-09-07',1,'08:09:00',NULL,162,203,27.3,35.8,5.29,81.4,8.02,2.18,2.07,2,1,109.48,6.97,2.79,163.28,2.67,0.61,NULL,'Turbidity Low pre-sample readings: 5.61 and 5.63 NTU. 5 turbidity readings. Forgot to invert for first reading.');
INSERT INTO `samples` VALUES (3581,8,'2022-09-07',2,'08:40:00',NULL,162,203,27.4,35.2,5.59,85.9,8.05,4.95,4.93,4.56,1,146.05,8.19,4.53,323.9,7.79,6.66,NULL,NULL);
INSERT INTO `samples` VALUES (3582,9,'2022-09-07',3,'09:01:00',NULL,162,203,27.9,35.3,5.56,86.1,8.03,2.83,3.44,3.19,1,160.34,8.49,5.48,353.8,18.31,12.19,NULL,NULL);
INSERT INTO `samples` VALUES (3583,14,'2022-09-07',4,'09:32:00',NULL,162,203,27.4,36,6.19,95.5,8.07,3.25,3.62,3.44,1,100.06,5.69,3.76,368.37,2.98,3.96,NULL,'Large campsite but no people in sight (probably those on the beach)');
INSERT INTO `samples` VALUES (3584,18,'2022-09-07',5,'09:55:00',NULL,162,203,27.2,35.9,6.59,101.6,8.19,8.23,8.33,8.18,1,92.52,5.9,2.97,221.17,1.85,0.44,NULL,'Turbidity sample caught on incoming wave - shorebreak is close to knee-level grab spot. 4th turbidity reading. * Low turbidity standard read lower after being cleaned.');
INSERT INTO `samples` VALUES (3585,19,'2022-09-08',1,'08:05:00',NULL,162,203,25.2,34.4,6.02,89,8.1,1.31,1.32,1.47,1,132.09,12.37,7.35,610.45,5.88,10.02,NULL,'Calm conditions, then rain. 4th turbidity = 1.87 NTU (did not replace). *Turbidity pre-sample blank = 0.15 and 0.17 (wiped with cloth); Spare = 0.24 and 0.27 NTU');
INSERT INTO `samples` VALUES (3586,22,'2022-09-08',2,'08:40:00',NULL,162,203,26.4,35.9,6.59,100.3,8.16,0.92,0.88,0.78,1,109.63,7.94,3.17,143.39,8.28,0.86,NULL,'Small waves');
INSERT INTO `samples` VALUES (3587,23,'2022-09-08',3,'09:05:00',NULL,162,203,27.3,35.7,5.82,89.5,8.07,1.47,1.64,1.58,1,121.18,8.86,7.08,389.7,26.86,3.74,NULL,'\'Covid breach. Visitor invaded space while collecting samples while rinsing self.\'');
INSERT INTO `samples` VALUES (3588,24,'2022-09-08',4,'09:29:00',NULL,162,203,27.2,35.1,6.33,97.2,8.11,7.07,7.25,7.06,1,131.82,10.18,8.56,653.23,49.79,2.53,NULL,'No stream flow');
INSERT INTO `samples` VALUES (3589,25,'2022-09-08',5,'09:54:00',NULL,162,203,27.5,35.3,6.07,93.7,8.13,6,7.14,6.7,1,123.66,8.46,6.3,593.39,37.02,3.04,NULL,'Bridge/road still closed so can\'t tell is there\'s water in stream. 4th turbidity taken.');
INSERT INTO `samples` VALUES (3590,1,'2022-09-06',1,'08:10:00',NULL,162,203,26.3,34.4,6.94,104.3,8.11,1.14,1.31,1.35,1,137.88,13.12,10.42,998.57,30.54,4.79,NULL,'High tide. Small swell.');
INSERT INTO `samples` VALUES (3591,2,'2022-09-06',2,'08:40:00',NULL,162,203,26.7,34.1,6.24,94.4,8.13,4.71,4.61,4.23,1,285.25,12.71,11.42,1936.64,184.57,4.31,NULL,'4th turbidity reading. Larger swells.');
INSERT INTO `samples` VALUES (3592,3,'2022-09-06',3,'09:07:00',NULL,162,203,26.6,35.8,6.16,93.9,8.06,2.48,2.19,2.51,1,109.11,7.42,4.28,157.54,3.83,7.57,NULL,'Minimal swells.');
INSERT INTO `samples` VALUES (3593,52,'2022-09-06',4,'09:30:00',NULL,162,203,27.5,36,6.54,101.1,8.17,1.44,1.71,1.51,1,95.75,6.63,3.49,94.13,3.05,2.18,NULL,'Small swells.');
INSERT INTO `samples` VALUES (3594,5,'2022-09-06',5,'09:55:00',NULL,162,203,27.8,35.4,6.55,101.5,8.17,2.85,3.01,2.95,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1-2\' shore pounders. Forgot to use filter tip on syringe. Got new water but used the same syrince & nutrient bottle.');
INSERT INTO `samples` VALUES (3595,6,'2022-09-06',6,'10:12:00',NULL,162,203,28.2,35.4,6.39,99.6,8.23,3.05,3,3,1,101.87,9.18,6.33,559.92,10.95,2.28,NULL,'Small swells; large honu on beach. *Post-sampling turbidity low standard read 5.62, 5.82, & 5.58 NTU.');
INSERT INTO `samples` VALUES (3596,7,'2022-09-28',1,'08:09:00',NULL,162,204,26.7,35.9,6.33,96.3,8.15,3.52,4.04,3.46,1,100.04,7.88,4.99,305.87,2.93,0.84,NULL,'Photo taken & emailed of fresh water flow.');
INSERT INTO `samples` VALUES (3597,8,'2022-09-28',2,'08:35:00',NULL,162,204,26.7,35.7,6.4,97,8.15,13.8,13.9,14.6,1,86.95,9.28,8.3,426.81,5.73,0.3,NULL,'Sites overall: not much wave or water action; several sites seem more turbid; wave patterns causing lingering turbidity.');
INSERT INTO `samples` VALUES (3598,9,'2022-09-28',3,'08:59:00',NULL,162,204,27.1,35.7,6.22,95.2,8.15,9.85,10.5,10.6,1,100.11,7.39,4.84,274.72,5.48,0.55,NULL,'2 dogs in the water');
INSERT INTO `samples` VALUES (3599,14,'2022-09-28',4,'09:29:00',NULL,162,204,27.4,35.9,6.51,99.9,8.15,3.4,3.43,3.48,1,85.83,4.4,1.98,276.64,2.56,0.67,NULL,NULL);
INSERT INTO `samples` VALUES (3600,18,'2022-09-28',5,'09:54:00',NULL,162,204,27.4,35.9,6.79,104.5,8.21,10.8,10.9,10.8,1,77.24,5.26,2.43,205.19,1.82,0.28,NULL,NULL);
INSERT INTO `samples` VALUES (3601,19,'2022-09-29',1,'07:55:00',NULL,162,204,25.9,34.8,6.32,94.1,8.21,1.35,1.62,1.53,1,116.41,7.32,4,194.82,2.84,6.03,NULL,'Pre-sampling turbidity blank reading 0.33 NTU after cleaning. Switched to Spare (0.08 NTU) for the field. Raining. 4th turbidity read taken.');
INSERT INTO `samples` VALUES (3602,22,'2022-09-29',2,'08:30:00',NULL,162,204,26.1,35.7,6.74,101.5,8.23,1.05,1.28,1.18,1,86.65,5.69,2.57,105.99,2.3,0.28,NULL,'Raining, very windy while sampling, waves');
INSERT INTO `samples` VALUES (3603,23,'2022-09-29',3,'08:55:00',NULL,162,204,26.8,35.7,6.48,98.4,8.16,2.93,2.15,2.19,1,97.2,6.91,4.9,157.86,9.13,1.18,NULL,NULL);
INSERT INTO `samples` VALUES (3604,24,'2022-09-29',4,'09:25:00',NULL,162,204,26.8,35.6,6.19,94,8.13,5.18,4.89,4.89,1,107.72,9.69,7.47,311.86,22.03,1.36,NULL,NULL);
INSERT INTO `samples` VALUES (3605,25,'2022-09-29',5,'09:52:00',NULL,162,204,26.9,35.1,6.21,94.2,8.13,31.1,36.7,33.6,1,114.78,7.32,6.75,443.87,24.01,0.9,NULL,'Raining, calm water, 4th turbidity read taken. Lisa checked the stream and sand bags are set up to prevent stream flow while nearby road work is being done.');
INSERT INTO `samples` VALUES (3606,1,'2022-09-27',1,'08:10:00',NULL,162,204,26.3,35,6.43,96.5,8.12,2.99,3.12,3.03,1,122.38,9.12,8.62,567.21,28.13,2.11,NULL,'Small swells. High tide. Took 4th turbidity sample. *Couldn\'t get Turbidity standard or pre-sampling blank to read <0.10 NTU.');
INSERT INTO `samples` VALUES (3607,2,'2022-09-27',2,'08:40:00',NULL,162,204,26.7,34.9,6.27,94.6,8.13,1.57,1.51,1.62,1,183.38,8.19,6.96,815.87,100.47,3.44,NULL,NULL);
INSERT INTO `samples` VALUES (3608,3,'2022-09-27',3,'09:02:00',NULL,162,204,26.1,35.3,6.18,92.6,8.09,1.02,0.95,1.09,1,102.9,6.58,4.22,269.4,5.18,7.34,NULL,'Took 4th turbidity read.');
INSERT INTO `samples` VALUES (3609,52,'2022-09-27',4,'09:22:00',NULL,162,204,27.1,35.6,6.82,104,8.18,0.92,0.9,0.92,1,88.47,5.73,3.17,161.6,3.65,1.12,NULL,'DO much higher than others.');
INSERT INTO `samples` VALUES (3610,5,'2022-09-27',5,'09:43:00',NULL,162,204,27.5,35.5,6.58,101.1,8.17,3.67,3.54,3.91,1,109.37,8.12,5.56,387.24,25.33,1.68,NULL,'1-2\' swells.');
INSERT INTO `samples` VALUES (3611,6,'2022-09-27',6,'10:00:00',NULL,162,204,27.4,33.8,6.66,101.3,8.18,6.99,7.1,6.5,1,116.81,13.09,12.72,1400.02,35.64,1.21,NULL,'0-1\' swells.');
INSERT INTO `samples` VALUES (3612,7,'2022-10-19',1,'08:10:00',NULL,162,205,26.6,34.4,6.23,94.2,8.08,2.11,2.2,2.42,1,95.7,14.47,12.92,1361.16,3.25,5.52,NULL,'Took a 4th turbidity read = 2.14 NTU. Photo taken.');
INSERT INTO `samples` VALUES (3613,8,'2022-10-19',2,'08:38:00',NULL,162,205,26.3,35.8,6.15,93.3,8.07,11.2,10.7,10.8,1,95.37,9.7,6.82,369.96,4.21,5.86,NULL,'Culvert dug out. Photo taken.');
INSERT INTO `samples` VALUES (3614,9,'2022-10-19',3,'08:56:00',NULL,162,205,26.8,36,6.12,93.7,8.07,7.93,7.82,7.94,1,116.05,11.1,6.36,408.5,6.75,4.69,NULL,NULL);
INSERT INTO `samples` VALUES (3615,14,'2022-10-19',4,'09:28:00',NULL,162,205,27.8,36.3,5.98,93.2,8.07,3.86,3.79,3.7,1,94.03,6.91,2.98,251.67,1.44,0.95,NULL,'New paddle, double hull boat causing minimal parking.');
INSERT INTO `samples` VALUES (3616,18,'2022-10-19',5,'09:47:00',NULL,162,205,27.5,36.2,6.44,99.9,8.11,5.82,6.17,6.52,1,84.09,6.08,3.49,187.1,1.37,1.84,NULL,NULL);
INSERT INTO `samples` VALUES (3617,19,'2022-10-20',1,'07:50:00',NULL,162,205,25.3,34.7,6.53,97,8.1,54.8,56.6,54.4,1,139.85,12.36,7.75,662.8,3.21,2.32,NULL,'Shorebreak made it dangerous to go in at normal depth. Sample came from shore without much depth. Water was brown and murky.  4th turbidity sample taken.');
INSERT INTO `samples` VALUES (3618,22,'2022-10-20',2,'08:35:00',NULL,162,205,26.7,36.3,6.56,100.6,8.16,0.83,0.85,0.82,1,95.03,8.1,3.63,143.84,1.94,1.53,NULL,'4th turbidity sample taken.');
INSERT INTO `samples` VALUES (3619,23,'2022-10-20',3,'09:00:00',NULL,162,205,26.8,35.8,6.55,100.2,8.13,5.53,5.41,5.72,1,137.12,12.3,8.77,437.64,25.55,8.59,NULL,NULL);
INSERT INTO `samples` VALUES (3620,24,'2022-10-20',4,'09:20:00',NULL,162,205,26.7,35.4,6.49,98.8,8.1,17.6,19.2,18.5,1,140.12,13.27,10.11,583.32,44.98,1.44,NULL,'4th turbidity sample taken.');
INSERT INTO `samples` VALUES (3621,25,'2022-10-20',5,'09:45:00',NULL,162,205,27.2,36.2,6.61,102,8.18,10.5,10.6,11.7,1,131.67,10.31,4.62,161.39,3.34,1.95,NULL,'Swell & current at all locations.');
INSERT INTO `samples` VALUES (3622,1,'2022-10-18',1,'08:17:00',NULL,162,205,26.6,36,6.49,98.8,8.12,0.8,0.93,0.91,1,96.77,8.7,5.38,230.74,6.74,5.71,NULL,'1-2\' swells');
INSERT INTO `samples` VALUES (3623,2,'2022-10-18',2,'08:41:00',NULL,162,205,26.7,35.2,6.31,95.8,8.13,6.07,6.83,6.56,1,187.48,13.22,10.72,1182.72,94.13,5.56,NULL,'minimal swells');
INSERT INTO `samples` VALUES (3624,3,'2022-10-18',3,'09:00:00',NULL,162,205,26.6,36.3,6.37,97,8.1,1.29,1.25,1.41,1,109.48,8.66,4.04,80.51,2.83,2.34,NULL,'1\' swells');
INSERT INTO `samples` VALUES (3625,52,'2022-10-18',4,'09:25:00',NULL,162,205,27.3,36.2,6.31,97.3,8.15,1.05,1.15,1.13,1,93.21,8.27,4.18,103.02,3.37,4.69,NULL,'almost no swell');
INSERT INTO `samples` VALUES (3626,5,'2022-10-18',5,'09:46:00',NULL,162,205,27.4,36.1,6.38,98.5,8.16,1.36,1.38,1.45,1,102.8,8.94,3.74,169.7,6.56,5.66,NULL,'almost no swell');
INSERT INTO `samples` VALUES (3627,6,'2022-10-18',6,'10:03:00',NULL,162,205,27.4,35.8,6.78,104.6,8.21,2.14,2.18,2.1,1,95.2,10.54,5.63,346.94,4.51,1.5,NULL,'1-2\' swells. Overall calmer swells at all beaches.');
INSERT INTO `samples` VALUES (3628,7,'2022-11-09',1,'08:10:00',NULL,162,206,26,35.9,6.11,91.6,8.07,2.74,3.23,3.17,1,75.25,7.21,4.09,167.4,4.46,1.86,NULL,'Fire in Kaua\'ula Valley started 11/8/22. 850+ acres burned so far and not yet fully controlled. (People in water included 5 kayaks or 20 people)');
INSERT INTO `samples` VALUES (3629,8,'2022-11-09',2,'08:38:00',NULL,162,206,25.7,35.2,6.55,97.3,8.07,24.6,25.3,25.6,1,74.09,8.55,7.52,539.42,6.55,0.62,NULL,'Shallow, calm water and sediment very visible; silty; 4th turbidity reading = 24.6. (Photo of water flow at entrance)');
INSERT INTO `samples` VALUES (3630,9,'2022-11-09',3,'09:07:00',NULL,162,206,26.3,35.1,5.75,86.2,8.04,16.6,17.2,15.9,1,90.59,8.66,7.83,656.36,23.35,3.75,NULL,'Neighbor reports pool with chlorine drained into storm drain - approximately monthly - flowing toward reef; 4th turbidity reading 16.6; distance from shoreline increased for knee-level collection (farther than usual collection zone)');
INSERT INTO `samples` VALUES (3631,14,'2022-11-09',4,'09:46:00',NULL,162,206,26,36,6.68,100.1,8.1,2.19,2.02,2.03,1,88.47,6.32,5.19,275.41,2.02,1.64,NULL,'Noticed pipe extedning from shore, exposed by erosion? Photo taken.');
INSERT INTO `samples` VALUES (3632,18,'2022-11-09',5,'10:10:00',NULL,162,206,25.9,35.6,7.12,106.2,8.15,5.69,5.24,5.58,1,71.62,8.82,4.65,425.33,1.59,0.28,NULL,'4th turbidity taken; 2nd DO taken & confirmed; some algae on rocks near sample site.');
INSERT INTO `samples` VALUES (3633,19,'2022-11-10',1,'08:03:00',NULL,162,206,24.9,35.6,6.43,94.3,8.19,1.69,1.3,1.9,1,74.35,8.47,4.28,163.26,1.48,1.77,NULL,'Fire still going. Spread north a bit, but not all the way to Ka\'anapali/Kahana. Second salinity read = 35.5');
INSERT INTO `samples` VALUES (3634,22,'2022-11-10',2,'08:40:00',NULL,162,206,25.6,36,6.85,102.2,8.2,0.44,0.53,0.6,1,75.16,6.42,2.38,77.24,2.38,0.28,NULL,'Second salinity read = 35.9');
INSERT INTO `samples` VALUES (3635,23,'2022-11-10',3,'09:08:00',NULL,162,206,25.8,36,6.71,100.6,8.14,1.79,1.74,2.01,1,92.99,10.41,7.5,458.66,12.81,2.41,NULL,NULL);
INSERT INTO `samples` VALUES (3636,24,'2022-11-10',4,'09:38:00',NULL,162,206,25.3,35.3,6.55,97,8.07,9.84,8.98,9.36,1,86.84,10.64,8.84,411.51,19.2,1.06,NULL,'Low tide');
INSERT INTO `samples` VALUES (3637,25,'2022-11-10',5,'10:04:00',NULL,162,206,25.9,35.5,6.99,104.3,8.18,4.54,5.34,4.32,1,79.39,8.25,6.02,347.75,17.59,0.28,NULL,'Re-read and confirmed salinity. Second DO = 6.98 mg/L and 104.2%.');
INSERT INTO `samples` VALUES (3638,1,'2022-11-08',1,'08:10:00',NULL,162,206,25.7,35.6,6.68,99.1,8.15,1.14,0.93,0.89,1,97.19,12.66,5.47,359.6,14.46,1.79,NULL,'~1/2 ft surf, shady, outgoing tide, slight trades; Turbidity readings varied a lot - took 5 readings; 2100Q felt \'tighter\' - possibly something inside the machine?');
INSERT INTO `samples` VALUES (3639,2,'2022-11-08',2,'08:38:00',NULL,162,206,25.7,34.3,6.57,96.7,8.14,5.69,4.67,5.19,1,275.61,11.95,9.96,1678.03,118.16,2.95,NULL,'small swells');
INSERT INTO `samples` VALUES (3640,3,'2022-11-08',3,'09:00:00',NULL,162,206,25.7,35.7,6.58,97.9,8.16,1.75,1.69,1.89,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3641,52,'2022-11-08',4,'09:22:00',NULL,162,206,26.1,36,6.55,98.3,8.17,1.81,1.57,1.55,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Offshore winds; ~2 ft rolling swells/shorebreak');
INSERT INTO `samples` VALUES (3642,5,'2022-11-08',5,'09:47:00',NULL,162,206,27,35.3,6.7,101.6,8.19,29.8,30.4,29.9,1,95.16,9.38,4.56,476.25,21.4,1.47,NULL,'1-2 ft swells; very churned up by shorebreak');
INSERT INTO `samples` VALUES (3643,6,'2022-11-08',6,'10:05:00',NULL,162,206,26.9,35.1,6.51,98.5,8.18,1.46,1.62,1.29,1,80.36,8.17,5.72,569.23,16.66,0.66,NULL,'Sunny, rolling shorebreak');
INSERT INTO `samples` VALUES (3644,7,'2022-11-30',1,'08:09:00',NULL,162,207,25.8,35.7,6.35,95.3,8.13,1.25,1.5,1.44,1,118.56,7.17,6.06,168.93,4.06,3.1,NULL,'Took two reads on pre-sample turbidity blank.');
INSERT INTO `samples` VALUES (3645,8,'2022-11-30',2,'08:33:00',NULL,162,207,25.8,35.5,6.48,97,8.16,16.1,16,15.5,1,98.71,8.26,6.06,263.92,5.08,1.33,NULL,'Lots of debris washed up (coral & logs). Samples taken in/near shorebreak.');
INSERT INTO `samples` VALUES (3646,9,'2022-11-30',3,'08:49:00',NULL,162,207,25.8,34.9,6.46,96.5,8.13,19.3,19.1,18.2,1,122.13,12.54,9.24,555.98,12.67,7.82,NULL,'Visibly silty.');
INSERT INTO `samples` VALUES (3647,14,'2022-11-30',4,'09:18:00',NULL,162,207,26.1,35.6,6.13,92.1,8.04,11.2,12,12.1,1,120.61,7.05,3.87,373.55,3.9,4.09,NULL,'Resident campers in the trees on the beach. Three vehicles. 4th turbidity was 11.2 NTU.');
INSERT INTO `samples` VALUES (3648,18,'2022-11-30',5,'09:38:00',NULL,162,207,26.6,35.8,6.67,101.4,8.11,6.46,7.24,6.88,1,76.06,5.4,4.8,159.62,5.97,0.58,NULL,'High tide. Camper in shade tent.');
INSERT INTO `samples` VALUES (3649,19,'2022-12-01',1,'07:55:00',NULL,162,207,24.7,35.1,6.43,94.6,8.13,3.79,3.49,3.48,1,103.55,8.6,6.34,377.17,4.46,7.06,NULL,'Calm conditions. Second Salinity read = 35.1 ppt');
INSERT INTO `samples` VALUES (3650,22,'2022-12-01',2,'08:30:00',NULL,162,207,25.5,35.9,6.83,102.1,8.2,0.64,0.58,0.57,1,106.49,8.46,3.18,132.25,4.38,0.81,NULL,'Second Salinity read = 35.8 ppt');
INSERT INTO `samples` VALUES (3651,23,'2022-12-01',3,'08:55:00',NULL,162,207,25.4,35.6,6.4,95.2,8.14,1.43,1.39,1.76,1,147.28,12.71,9.85,397.51,37.42,3.11,NULL,'Second Salinity read = 35.5 ppt. Fouth turbidity read = 1.43 NTU.');
INSERT INTO `samples` VALUES (3652,24,'2022-12-01',4,'09:20:00',NULL,162,207,25.7,35.4,6.1,91.2,8.1,5.04,5.54,5.13,1,116.45,12.45,9.84,383.24,43.14,3.35,NULL,'Second Salinity read  = 35.4 ppt');
INSERT INTO `samples` VALUES (3653,25,'2022-12-01',5,'09:40:00',NULL,162,207,25.6,35.4,6.64,98.8,8.09,5.95,6.54,5.97,1,89,9.15,6.89,365.68,12.73,1.06,NULL,'Second Salinity read = 35.4 ppt');
INSERT INTO `samples` VALUES (3654,1,'2022-11-29',1,'08:10:00',NULL,162,207,25.3,35.7,6.73,99.7,8.14,2.1,1.99,2.08,1,99.38,8.71,7.28,212.24,14.67,4.73,NULL,'Intermittant 1-2\' swell, no wind, overcast, rising tide. 4th turbidity read taken.');
INSERT INTO `samples` VALUES (3655,2,'2022-11-29',2,'08:34:00',NULL,162,207,25.3,35.1,6.64,98.2,8.12,20.4,18.9,19.8,1,170.73,15.07,12.71,899.97,78.4,7.29,NULL,'Small swells, riding tide, nearby honu');
INSERT INTO `samples` VALUES (3656,3,'2022-11-29',3,'08:55:00',NULL,162,207,25.8,35.7,6.77,101.3,8.17,2.86,3.76,2.94,1,96.73,7.13,4.4,143.67,10.14,2.64,NULL,'Aquaduct completely full and flowing into the ocean. Small but active swells.');
INSERT INTO `samples` VALUES (3657,52,'2022-11-29',4,'09:16:00',NULL,162,207,26,35.7,6.58,98.8,8.18,2.62,2.97,2.91,1,91.29,7.81,4.78,108,8.97,7.44,NULL,'Hight tide. 1/2\' shorebreak, slight onshore wind. 4th trubidity read taken.');
INSERT INTO `samples` VALUES (3658,5,'2022-11-29',5,'09:43:00',NULL,162,207,26.3,35.7,6.59,99.4,8.19,2.5,3.14,3.11,1,116.92,8.24,4.98,229.12,13.28,3.79,NULL,'Small swells.');
INSERT INTO `samples` VALUES (3659,6,'2022-11-29',6,'09:57:00',NULL,162,207,26.4,35.8,6.66,100.7,8.2,8.35,8.88,7.93,1,94.07,7.5,3.75,189.5,2.69,0.28,NULL,'Small swells. Honu nearby :)');
INSERT INTO `samples` VALUES (3660,7,'2022-12-21',1,'08:15:00',NULL,162,208,24.4,35.6,6.36,93.4,8.15,4.04,4.34,4.26,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Big rain and flooding 12/18 - 12/19. Second reading of Turbidity LOW = 5.66');
INSERT INTO `samples` VALUES (3661,8,'2022-12-21',2,'08:40:00',NULL,162,208,24.6,35.9,6.31,93.1,8.15,6.69,6.03,6.26,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Streamflow outlet completely exposed; 4th turbidity = 5.57');
INSERT INTO `samples` VALUES (3662,9,'2022-12-21',3,'09:02:00',NULL,162,208,24.7,35.9,6.33,93.6,8.15,5.23,4.66,5.03,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6 kayaks, 1 SUP in ocean near sample site. Lots of leaves in & near shore water. Dead pufferfish outside 100 ft area.');
INSERT INTO `samples` VALUES (3663,14,'2022-12-21',4,'09:34:00',NULL,162,208,25.3,35.6,6.38,95,8.14,16.9,14.7,17.6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbididty = 20.2; Full parking on beach. Car camping in the last one.');
INSERT INTO `samples` VALUES (3664,18,'2022-12-21',5,'09:54:00',NULL,162,208,24.3,36.1,6.73,98.9,8.14,34.9,33.4,33.3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Heavy debris in water and samples. Filtered out larger pieces before testing. Post- sample Turbidity LOW : 1st read = 5.52, 2nd read = 5.56, 3rd read = 5.54');
INSERT INTO `samples` VALUES (3665,19,'2022-12-22',1,'08:00:00',NULL,162,208,22.3,35.2,6.54,92.4,8.12,38.5,40.4,42.6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Big rain and flooding 12/18 - 12/19. Pre-sampling Turbidity LOW : 1st read = 5.42, 2nd read = 5.47, 3rd read = 5.49, 4th red = 5.50. Organic debris in water; brown water.');
INSERT INTO `samples` VALUES (3666,22,'2022-12-22',2,'08:50:00',NULL,162,208,24.9,36.3,6.71,99.7,8.17,1.05,1.04,1.07,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'High tide with 2-3\' shore break; water looked clear; 2nd salinity reading confirmed  = 36.3 ppt.');
INSERT INTO `samples` VALUES (3667,23,'2022-12-22',3,'09:50:00',NULL,162,208,24.8,35.8,6.85,100.6,8.15,3.73,4.05,3.6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbidity read = 3.60 NTU; crowded beach; unusual waves.');
INSERT INTO `samples` VALUES (3668,24,'2022-12-22',4,'10:10:00',NULL,162,208,24.4,35.2,6.72,98.3,8.09,15.5,16.7,15.5,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Storm debris in ocean; waves more than normal.');
INSERT INTO `samples` VALUES (3669,25,'2022-12-22',5,'10:45:00',NULL,162,208,25.3,36.1,6.98,104.1,8.22,3.32,3.79,3.46,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbidity read = 3.46 NTU; Site normal. Post-Sampling Turbididty LOW: 1st read = 5.54, 2nd read = 5.52,3rd read = 5.51; Turbidity LOW reading low and out of range all week; Turbidity meter #1 last calibrated on 10/17/22.');
INSERT INTO `samples` VALUES (3670,1,'2022-12-23',1,'08:18:00',NULL,162,208,24.5,36.4,6.72,99.3,8.16,1.02,0.98,1.01,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Big rain and flooding 12/18 - 12/19.Mostly cloudy; 2-3\' shorebreak.');
INSERT INTO `samples` VALUES (3671,2,'2022-12-23',2,'08:44:00',NULL,162,208,24.5,35.5,6.73,98.7,8.14,5.99,6.32,6.03,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbidity reading taken; ~2\' shorebreak.');
INSERT INTO `samples` VALUES (3672,3,'2022-12-23',3,'09:07:00',NULL,162,208,24.8,36.2,6.74,99.7,8.17,2.03,1.89,2.01,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Freshwater narrows by bridge due to sand backup; ~2-3\' wide flow going into ocean; very steady flow. 1\' swells.');
INSERT INTO `samples` VALUES (3673,52,'2022-12-23',4,'09:45:00',NULL,162,208,25,36,6.62,98.3,8.18,3.01,3.2,3.11,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lots of beach erosion; tree roots exposed on the beach.');
INSERT INTO `samples` VALUES (3674,5,'2022-12-23',5,'10:05:00',NULL,162,208,25,35.7,6.7,99.2,8.2,3.2,2.94,3.16,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Shorebreak ~3\'. Coastal water looks brown and murky. 4th & 5th turbidity readings taken.');
INSERT INTO `samples` VALUES (3675,6,'2022-12-23',6,'10:34:00',NULL,162,208,25.1,35.5,6.69,99.1,8.21,0.81,0.72,0.71,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'High tide; lots od beach erosion in parts of beach with rocks exposed and other parts of the beach had sand piling high up onto the steps (steps were burried/covered in sand).');
INSERT INTO `samples` VALUES (3676,7,'2023-01-18',1,'08:12:00',NULL,162,209,24.8,35.5,6.13,89.9,8.07,0.67,0.9,0.8,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Extra turbidity reading taken: peaceful & calm water');
INSERT INTO `samples` VALUES (3677,8,'2023-01-18',2,'08:36:00',NULL,162,209,24.5,35.4,5.75,83.8,8.08,4.7,4.8,5.1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'peaceful & calm water');
INSERT INTO `samples` VALUES (3678,9,'2023-01-18',3,'08:55:00',NULL,162,209,24.5,35.5,5.87,85.7,8.09,2.42,2.58,2.37,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'peaceful & calm water');
INSERT INTO `samples` VALUES (3679,14,'2023-01-18',4,'09:25:00',NULL,162,209,25.9,35.7,6.35,94.9,8.07,1.29,1.6,1.23,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbuduty taken that confirmed 1.62; peaceful & calm water');
INSERT INTO `samples` VALUES (3680,18,'2023-01-18',5,'09:45:00',NULL,162,209,25.8,35.9,6.96,104.3,8.13,8.74,8.88,8.83,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'medium/small waves');
INSERT INTO `samples` VALUES (3681,19,'2023-01-19',1,'07:57:00',NULL,162,209,23.1,35.3,6.72,95.9,8.17,13.4,13.2,13.2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3682,22,'2023-01-19',2,'08:49:00',NULL,162,209,25,36,6.93,102.6,8.21,0.61,0.69,0.72,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3683,23,'2023-01-19',3,'09:25:00',NULL,162,209,24.9,35.3,6.82,103,8.17,1.57,1.68,1.43,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3684,24,'2023-01-19',4,'09:43:00',NULL,162,209,25,35.3,6.68,98.4,8.12,9.53,9.95,8.11,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbidity taken. 9.95 replaced 7.74');
INSERT INTO `samples` VALUES (3685,25,'2023-01-19',5,'10:15:00',NULL,162,209,24.9,35.7,6.87,101.2,8.15,3.01,3.2,3.69,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Roadwork still going on nearby bridge');
INSERT INTO `samples` VALUES (3686,1,'2023-01-17',1,'08:10:00',NULL,162,209,24.5,35.4,6.92,100.8,8.18,1.07,0.96,0.94,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2 ft swll, possibly smell of sewage');
INSERT INTO `samples` VALUES (3687,2,'2023-01-17',2,'08:45:00',NULL,162,209,24.8,33.9,6.87,99.7,8.18,4.38,4.19,4.47,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1ft swell');
INSERT INTO `samples` VALUES (3688,3,'2023-01-17',3,'09:10:00',NULL,162,209,25.1,35.8,6.76,99.7,8.17,2.29,2.37,2.27,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'No freshwater flow; 1 ft swell; Took 4th turbidity; Sample testign int he sun');
INSERT INTO `samples` VALUES (3689,52,'2023-01-17',4,'09:45:00',NULL,162,209,25.3,35.7,6.77,100.1,8.19,4.88,5.09,4.92,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2-3 ft shore break');
INSERT INTO `samples` VALUES (3690,5,'2023-01-17',5,'10:10:00',NULL,162,209,25.6,35.3,6.65,98.8,8.18,3.39,3.45,3.5,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Calm conditions, 4th turbidity reading');
INSERT INTO `samples` VALUES (3691,6,'2023-01-17',6,'10:30:00',NULL,162,209,25.6,34.3,6.87,101.4,8.22,1.73,1.93,1.78,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 ft shore break, murky close to shore due to resuspension of sediment/sand');
INSERT INTO `samples` VALUES (3692,7,'2023-02-08',1,'08:18:00',NULL,162,210,24,35.3,5.66,82,8.1,3.89,4.33,3.45,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbidity taken');
INSERT INTO `samples` VALUES (3693,8,'2023-02-08',2,'08:45:00',NULL,162,210,24.5,35.2,5.23,76.3,8.05,7.79,9.01,8.83,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2nd DO% taken to verify, same reading. Brown and silty water at the shore; calm waters');
INSERT INTO `samples` VALUES (3694,9,'2023-02-08',3,'09:05:00',NULL,162,210,24.8,35.5,5.54,81.3,8.08,9.25,9.31,9.98,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Brown and silty water at the shore; calm waters');
INSERT INTO `samples` VALUES (3695,14,'2023-02-08',4,'09:42:00',NULL,162,210,24.3,35.8,6.81,99.2,8.15,2.98,3.11,3.55,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Wind picking up, sunny');
INSERT INTO `samples` VALUES (3696,18,'2023-02-08',5,'10:04:00',NULL,162,210,24,35.5,7.04,102.2,8.16,2.31,2.79,2.6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Windy & wave action; 3-4 ft shorebreak');
INSERT INTO `samples` VALUES (3697,19,'2023-02-09',1,NULL,NULL,162,210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rainy and windy, team decided to skip this site');
INSERT INTO `samples` VALUES (3698,22,'2023-02-09',2,'08:15:00',NULL,162,210,23.4,36.2,6.91,99.8,8.21,0.53,0.65,0.65,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Extremely windy and gusty');
INSERT INTO `samples` VALUES (3699,23,'2023-02-09',3,'08:50:00',NULL,162,210,23.6,36.1,6.76,97.7,8.19,0.9,0.89,0.81,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4th turbidity taken');
INSERT INTO `samples` VALUES (3700,24,'2023-02-09',4,'09:25:00',NULL,162,210,23.5,35.4,6.74,96.7,8.17,4.93,5.03,5.07,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3701,25,'2023-02-09',5,'09:55:00',NULL,162,210,23.5,35,6.77,96.9,8.16,5.99,6.01,6.49,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Very windy; Bridge still under repair');
INSERT INTO `samples` VALUES (3702,1,'2023-02-07',1,'08:15:00',NULL,162,210,24.2,36.1,6.8,98.8,8.15,0.82,0.79,0.86,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pre-sample Turbidity note: Medium & Low - took 2 readings; 1-2 ft swells, light rain');
INSERT INTO `samples` VALUES (3703,2,'2023-02-07',2,'08:42:00',NULL,162,210,24.6,35.3,6.57,95.7,8.14,2.69,2.96,2.69,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Calm, light rain. Took all new turbidity readings due to rain on vials; Confirmed DO reading');
INSERT INTO `samples` VALUES (3704,3,'2023-02-07',3,'09:05:00',NULL,162,210,24.3,35.4,6.8,98.7,8.19,1.27,1.54,1.33,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3 ft water flow from freshwater stream; light rain, calm swells, 4th turbidity reading 1.54');
INSERT INTO `samples` VALUES (3705,52,'2023-02-07',4,'09:35:00',NULL,162,210,24.1,35.7,6.76,98.1,8.16,3.19,3.13,3.07,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3706,5,'2023-02-07',5,'10:00:00',NULL,162,210,25.1,35.8,6.69,99,8.19,2.6,2.44,2.62,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Calm swells');
INSERT INTO `samples` VALUES (3707,6,'2023-02-07',6,'10:19:00',NULL,162,210,25.3,34.5,6.75,99.5,8.2,1.56,1.65,1.63,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,2,1,'2017-11-07',NULL);
INSERT INTO `sessions` VALUES (2,2,2,'2017-11-21',NULL);
INSERT INTO `sessions` VALUES (3,2,3,'2017-12-05',NULL);
INSERT INTO `sessions` VALUES (4,2,4,'2017-12-19',NULL);
INSERT INTO `sessions` VALUES (5,2,5,'2018-01-09',NULL);
INSERT INTO `sessions` VALUES (6,2,6,'2018-01-23',NULL);
INSERT INTO `sessions` VALUES (7,2,7,'2018-02-06',NULL);
INSERT INTO `sessions` VALUES (8,2,8,'2018-02-20',NULL);
INSERT INTO `sessions` VALUES (9,2,9,'2018-03-06',NULL);
INSERT INTO `sessions` VALUES (10,2,10,'2018-03-20',NULL);
INSERT INTO `sessions` VALUES (11,2,11,'2018-04-03',NULL);
INSERT INTO `sessions` VALUES (12,2,12,'2018-04-17',NULL);
INSERT INTO `sessions` VALUES (13,2,13,'2018-05-01',NULL);
INSERT INTO `sessions` VALUES (14,2,14,'2018-05-15',NULL);
INSERT INTO `sessions` VALUES (15,2,15,'2018-05-29',NULL);
INSERT INTO `sessions` VALUES (16,2,16,'2018-06-19',NULL);
INSERT INTO `sessions` VALUES (17,2,17,'2018-07-10',NULL);
INSERT INTO `sessions` VALUES (18,2,18,'2018-07-31',NULL);
INSERT INTO `sessions` VALUES (19,2,19,'2018-08-21',NULL);
INSERT INTO `sessions` VALUES (20,2,20,'2018-09-11',NULL);
INSERT INTO `sessions` VALUES (21,2,21,'2018-10-02',NULL);
INSERT INTO `sessions` VALUES (22,2,22,'2018-10-23',NULL);
INSERT INTO `sessions` VALUES (23,2,23,'2018-11-13',NULL);
INSERT INTO `sessions` VALUES (24,2,24,'2018-12-04',NULL);
INSERT INTO `sessions` VALUES (25,2,25,'2018-12-18',NULL);
INSERT INTO `sessions` VALUES (26,2,26,'2019-01-15',NULL);
INSERT INTO `sessions` VALUES (27,2,27,'2019-02-05',NULL);
INSERT INTO `sessions` VALUES (28,2,28,'2019-02-26',NULL);
INSERT INTO `sessions` VALUES (29,2,29,'2019-03-19',NULL);
INSERT INTO `sessions` VALUES (30,2,30,'2019-04-09',NULL);
INSERT INTO `sessions` VALUES (31,2,31,'2019-04-30',NULL);
INSERT INTO `sessions` VALUES (32,2,32,'2019-05-21',NULL);
INSERT INTO `sessions` VALUES (33,2,33,'2019-06-11',NULL);
INSERT INTO `sessions` VALUES (34,2,34,'2019-07-02',NULL);
INSERT INTO `sessions` VALUES (35,2,35,'2019-07-23',NULL);
INSERT INTO `sessions` VALUES (36,2,36,'2019-08-13',NULL);
INSERT INTO `sessions` VALUES (37,2,37,'2019-09-03',NULL);
INSERT INTO `sessions` VALUES (38,2,38,'2019-09-24',NULL);
INSERT INTO `sessions` VALUES (39,2,39,'2019-10-15',NULL);
INSERT INTO `sessions` VALUES (40,2,40,'2019-11-05',NULL);
INSERT INTO `sessions` VALUES (41,2,41,'2019-11-19',NULL);
INSERT INTO `sessions` VALUES (42,2,42,'2019-12-10',NULL);
INSERT INTO `sessions` VALUES (43,2,43,'2020-01-14',NULL);
INSERT INTO `sessions` VALUES (44,2,44,'2020-02-04',NULL);
INSERT INTO `sessions` VALUES (45,2,45,'2020-02-25',NULL);
INSERT INTO `sessions` VALUES (46,2,46,'2020-05-05',NULL);
INSERT INTO `sessions` VALUES (47,2,47,'2020-06-09',NULL);
INSERT INTO `sessions` VALUES (48,2,48,'2020-06-30',NULL);
INSERT INTO `sessions` VALUES (49,2,49,'2020-07-21',NULL);
INSERT INTO `sessions` VALUES (50,2,50,'2020-08-11',NULL);
INSERT INTO `sessions` VALUES (51,2,51,'2020-09-01',NULL);
INSERT INTO `sessions` VALUES (52,2,52,'2020-09-22',NULL);
INSERT INTO `sessions` VALUES (53,2,53,'2020-10-13',NULL);
INSERT INTO `sessions` VALUES (54,2,54,'2020-11-03',NULL);
INSERT INTO `sessions` VALUES (55,2,55,'2020-11-17',NULL);
INSERT INTO `sessions` VALUES (56,2,56,'2020-12-08',NULL);
INSERT INTO `sessions` VALUES (57,2,57,'2021-01-05',NULL);
INSERT INTO `sessions` VALUES (58,2,58,'2021-01-26',NULL);
INSERT INTO `sessions` VALUES (59,2,59,'2021-02-16',NULL);
INSERT INTO `sessions` VALUES (60,2,60,'2021-03-09',NULL);
INSERT INTO `sessions` VALUES (61,2,61,'2021-03-30',NULL);
INSERT INTO `sessions` VALUES (62,2,62,'2021-04-20',NULL);
INSERT INTO `sessions` VALUES (63,2,63,'2021-05-11',NULL);
INSERT INTO `sessions` VALUES (64,2,64,'2021-06-01',NULL);
INSERT INTO `sessions` VALUES (65,2,65,'2021-06-22',NULL);
INSERT INTO `sessions` VALUES (66,2,66,'2021-07-13',NULL);
INSERT INTO `sessions` VALUES (67,2,67,'2021-08-03',NULL);
INSERT INTO `sessions` VALUES (68,2,68,'2021-08-24',NULL);
INSERT INTO `sessions` VALUES (69,2,69,'2021-09-14',NULL);
INSERT INTO `sessions` VALUES (70,2,70,'2021-10-05',NULL);
INSERT INTO `sessions` VALUES (71,2,71,'2021-10-26',NULL);
INSERT INTO `sessions` VALUES (72,2,72,'2021-11-16',NULL);
INSERT INTO `sessions` VALUES (73,2,73,'2021-12-14',NULL);
INSERT INTO `sessions` VALUES (74,2,74,'2022-01-04',NULL);
INSERT INTO `sessions` VALUES (75,2,75,'2022-01-25',NULL);
INSERT INTO `sessions` VALUES (76,2,76,'2022-02-15',NULL);
INSERT INTO `sessions` VALUES (77,2,77,'2022-03-08',NULL);
INSERT INTO `sessions` VALUES (78,2,78,'2022-03-29',NULL);
INSERT INTO `sessions` VALUES (79,2,79,'2022-04-19',NULL);
INSERT INTO `sessions` VALUES (80,2,80,'2022-05-10',NULL);
INSERT INTO `sessions` VALUES (81,2,81,'2022-06-01',NULL);
INSERT INTO `sessions` VALUES (82,2,82,'2022-06-22',NULL);
INSERT INTO `sessions` VALUES (83,2,83,'2022-07-12',NULL);
INSERT INTO `sessions` VALUES (84,2,84,'2022-08-02',NULL);
INSERT INTO `sessions` VALUES (85,2,85,'2022-08-23',NULL);
INSERT INTO `sessions` VALUES (86,2,86,'2022-09-13',NULL);
INSERT INTO `sessions` VALUES (87,2,87,'2022-10-04',NULL);
INSERT INTO `sessions` VALUES (88,2,88,'2022-10-25',NULL);
INSERT INTO `sessions` VALUES (89,2,89,'2022-11-15',NULL);
INSERT INTO `sessions` VALUES (90,2,90,'2022-12-06',NULL);
INSERT INTO `sessions` VALUES (91,2,91,'2023-01-04',NULL);
INSERT INTO `sessions` VALUES (92,2,92,'2023-01-24',NULL);
INSERT INTO `sessions` VALUES (93,2,93,'2023-02-14',NULL);
INSERT INTO `sessions` VALUES (94,1,1,'2016-06-14',NULL);
INSERT INTO `sessions` VALUES (95,1,2,'2016-06-28',NULL);
INSERT INTO `sessions` VALUES (96,1,3,'2016-07-12',NULL);
INSERT INTO `sessions` VALUES (97,1,4,'2016-07-26',NULL);
INSERT INTO `sessions` VALUES (98,1,5,'2016-08-09',NULL);
INSERT INTO `sessions` VALUES (99,1,6,'2016-08-23',NULL);
INSERT INTO `sessions` VALUES (100,1,7,'2016-09-06',NULL);
INSERT INTO `sessions` VALUES (101,1,8,'2016-09-20',NULL);
INSERT INTO `sessions` VALUES (102,1,9,'2016-10-04',NULL);
INSERT INTO `sessions` VALUES (103,1,10,'2016-10-18',NULL);
INSERT INTO `sessions` VALUES (104,1,11,'2016-11-01',NULL);
INSERT INTO `sessions` VALUES (105,1,12,'2016-11-15',NULL);
INSERT INTO `sessions` VALUES (106,1,13,'2016-11-29',NULL);
INSERT INTO `sessions` VALUES (107,1,14,'2016-12-13',NULL);
INSERT INTO `sessions` VALUES (108,1,15,'2017-01-03',NULL);
INSERT INTO `sessions` VALUES (109,1,16,'2017-01-24',NULL);
INSERT INTO `sessions` VALUES (110,1,17,'2017-02-14',NULL);
INSERT INTO `sessions` VALUES (111,1,18,'2017-03-07',NULL);
INSERT INTO `sessions` VALUES (112,1,19,'2017-03-28',NULL);
INSERT INTO `sessions` VALUES (113,1,20,'2017-04-18',NULL);
INSERT INTO `sessions` VALUES (114,1,21,'2017-05-09',NULL);
INSERT INTO `sessions` VALUES (115,1,22,'2017-05-30',NULL);
INSERT INTO `sessions` VALUES (116,1,23,'2017-06-20',NULL);
INSERT INTO `sessions` VALUES (117,1,24,'2017-07-11',NULL);
INSERT INTO `sessions` VALUES (118,1,25,'2017-08-01',NULL);
INSERT INTO `sessions` VALUES (119,1,26,'2017-08-22',NULL);
INSERT INTO `sessions` VALUES (120,1,27,'2017-09-12',NULL);
INSERT INTO `sessions` VALUES (121,1,28,'2017-10-03',NULL);
INSERT INTO `sessions` VALUES (122,1,29,'2017-10-24',NULL);
INSERT INTO `sessions` VALUES (123,1,30,'2017-11-14',NULL);
INSERT INTO `sessions` VALUES (124,1,31,'2017-12-05',NULL);
INSERT INTO `sessions` VALUES (125,1,32,'2017-12-19',NULL);
INSERT INTO `sessions` VALUES (126,1,33,'2018-01-09',NULL);
INSERT INTO `sessions` VALUES (127,1,34,'2018-01-30',NULL);
INSERT INTO `sessions` VALUES (128,1,35,'2018-02-20',NULL);
INSERT INTO `sessions` VALUES (129,1,36,'2018-03-13',NULL);
INSERT INTO `sessions` VALUES (130,1,37,'2018-04-03',NULL);
INSERT INTO `sessions` VALUES (131,1,38,'2018-04-24',NULL);
INSERT INTO `sessions` VALUES (132,1,39,'2018-05-15',NULL);
INSERT INTO `sessions` VALUES (133,1,40,'2018-06-05',NULL);
INSERT INTO `sessions` VALUES (134,1,41,'2018-06-26',NULL);
INSERT INTO `sessions` VALUES (135,1,42,'2018-07-17',NULL);
INSERT INTO `sessions` VALUES (136,1,43,'2018-08-07',NULL);
INSERT INTO `sessions` VALUES (137,1,44,'2018-08-28',NULL);
INSERT INTO `sessions` VALUES (138,1,45,'2018-09-18',NULL);
INSERT INTO `sessions` VALUES (139,1,46,'2018-10-09',NULL);
INSERT INTO `sessions` VALUES (140,1,47,'2018-10-30',NULL);
INSERT INTO `sessions` VALUES (141,1,48,'2018-11-27',NULL);
INSERT INTO `sessions` VALUES (142,1,49,'2018-12-11',NULL);
INSERT INTO `sessions` VALUES (143,1,50,'2019-01-08',NULL);
INSERT INTO `sessions` VALUES (144,1,51,'2019-01-29',NULL);
INSERT INTO `sessions` VALUES (145,1,52,'2019-02-20',NULL);
INSERT INTO `sessions` VALUES (146,1,53,'2019-03-12',NULL);
INSERT INTO `sessions` VALUES (147,1,54,'2019-04-02',NULL);
INSERT INTO `sessions` VALUES (148,1,55,'2019-04-23',NULL);
INSERT INTO `sessions` VALUES (149,1,56,'2019-05-14',NULL);
INSERT INTO `sessions` VALUES (150,1,57,'2019-06-04',NULL);
INSERT INTO `sessions` VALUES (151,1,58,'2019-06-25',NULL);
INSERT INTO `sessions` VALUES (152,1,59,'2019-07-16',NULL);
INSERT INTO `sessions` VALUES (153,1,60,'2019-08-06',NULL);
INSERT INTO `sessions` VALUES (154,1,61,'2019-08-27',NULL);
INSERT INTO `sessions` VALUES (155,1,62,'2019-09-17',NULL);
INSERT INTO `sessions` VALUES (156,1,63,'2019-10-08',NULL);
INSERT INTO `sessions` VALUES (157,1,64,'2019-10-29',NULL);
INSERT INTO `sessions` VALUES (158,1,65,'2019-11-19',NULL);
INSERT INTO `sessions` VALUES (159,1,66,'2019-12-03',NULL);
INSERT INTO `sessions` VALUES (160,1,67,'2020-01-07',NULL);
INSERT INTO `sessions` VALUES (161,1,68,'2020-01-28',NULL);
INSERT INTO `sessions` VALUES (162,1,69,'2020-02-19',NULL);
INSERT INTO `sessions` VALUES (163,1,70,'2020-03-10',NULL);
INSERT INTO `sessions` VALUES (164,1,71,'2020-05-12',NULL);
INSERT INTO `sessions` VALUES (165,1,72,'2020-06-16',NULL);
INSERT INTO `sessions` VALUES (166,1,73,'2020-07-07',NULL);
INSERT INTO `sessions` VALUES (167,1,74,'2020-07-28',NULL);
INSERT INTO `sessions` VALUES (168,1,75,'2020-08-18',NULL);
INSERT INTO `sessions` VALUES (169,1,76,'2020-09-09',NULL);
INSERT INTO `sessions` VALUES (170,1,77,'2020-09-29',NULL);
INSERT INTO `sessions` VALUES (171,1,78,'2020-10-20',NULL);
INSERT INTO `sessions` VALUES (172,1,79,'2020-11-10',NULL);
INSERT INTO `sessions` VALUES (173,1,80,'2020-12-01',NULL);
INSERT INTO `sessions` VALUES (174,1,81,'2020-12-15',NULL);
INSERT INTO `sessions` VALUES (175,1,82,'2021-01-12',NULL);
INSERT INTO `sessions` VALUES (176,1,83,'2021-02-03',NULL);
INSERT INTO `sessions` VALUES (177,1,84,'2021-02-23',NULL);
INSERT INTO `sessions` VALUES (178,1,85,'2021-03-16',NULL);
INSERT INTO `sessions` VALUES (179,1,86,'2021-04-06',NULL);
INSERT INTO `sessions` VALUES (180,1,87,'2021-04-27',NULL);
INSERT INTO `sessions` VALUES (181,1,88,'2021-05-18',NULL);
INSERT INTO `sessions` VALUES (182,1,89,'2021-06-08',NULL);
INSERT INTO `sessions` VALUES (183,1,90,'2021-06-29',NULL);
INSERT INTO `sessions` VALUES (184,1,91,'2021-07-20',NULL);
INSERT INTO `sessions` VALUES (185,1,92,'2021-08-10',NULL);
INSERT INTO `sessions` VALUES (186,1,93,'2021-08-31',NULL);
INSERT INTO `sessions` VALUES (187,1,94,'2021-09-21',NULL);
INSERT INTO `sessions` VALUES (188,1,95,'2021-10-12',NULL);
INSERT INTO `sessions` VALUES (189,1,96,'2021-11-02',NULL);
INSERT INTO `sessions` VALUES (190,1,97,'2021-11-30',NULL);
INSERT INTO `sessions` VALUES (191,1,98,'2021-12-28',NULL);
INSERT INTO `sessions` VALUES (192,1,99,'2022-01-18',NULL);
INSERT INTO `sessions` VALUES (193,1,100,'2022-02-08',NULL);
INSERT INTO `sessions` VALUES (194,1,101,'2022-03-01',NULL);
INSERT INTO `sessions` VALUES (195,1,102,'2022-03-22',NULL);
INSERT INTO `sessions` VALUES (196,1,103,'2022-04-12',NULL);
INSERT INTO `sessions` VALUES (197,1,104,'2022-05-03',NULL);
INSERT INTO `sessions` VALUES (198,1,105,'2022-05-24',NULL);
INSERT INTO `sessions` VALUES (199,1,106,'2022-06-14',NULL);
INSERT INTO `sessions` VALUES (200,1,107,'2022-07-05',NULL);
INSERT INTO `sessions` VALUES (201,1,108,'2022-07-26',NULL);
INSERT INTO `sessions` VALUES (202,1,109,'2022-08-16',NULL);
INSERT INTO `sessions` VALUES (203,1,110,'2022-09-06',NULL);
INSERT INTO `sessions` VALUES (204,1,111,'2022-09-27',NULL);
INSERT INTO `sessions` VALUES (205,1,112,'2022-10-18',NULL);
INSERT INTO `sessions` VALUES (206,1,113,'2022-11-08',NULL);
INSERT INTO `sessions` VALUES (207,1,114,'2022-11-29',NULL);
INSERT INTO `sessions` VALUES (208,1,115,'2022-12-21',NULL);
INSERT INTO `sessions` VALUES (209,1,116,'2023-01-17',NULL);
INSERT INTO `sessions` VALUES (210,1,117,'2023-02-07',NULL);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `site_and_date_to_sample_id_lookup`
--

DROP TABLE IF EXISTS `site_and_date_to_sample_id_lookup`;
/*!50001 DROP VIEW IF EXISTS `site_and_date_to_sample_id_lookup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `site_and_date_to_sample_id_lookup` AS SELECT 
 1 AS `site_and_date`,
 1 AS `sample_id`,
 1 AS `hui_abv`,
 1 AS `the_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sites` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'surrogate',
  `hui_abv` char(3) NOT NULL COMMENT 'ex: RAB',
  `storet_code` char(6) DEFAULT NULL,
  `long_name` varchar(32) NOT NULL COMMENT 'ex: Airport Beach',
  `lab_id` int(10) unsigned NOT NULL,
  `default_sample_day` int(11) NOT NULL COMMENT 'Day in the session that this site is typically sampled.  1st day is first day of sampling.',
  `default_sampling_order` int(11) DEFAULT NULL COMMENT 'Ordinality of this site on the day of sampling.',
  `geo_order` int(11) DEFAULT NULL COMMENT 'an order for each lab that allows for easy graphing of data down a coastline.',
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Some sites are tested, then removed.',
  `description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE KEY `hui_abv` (`hui_abv`),
  UNIQUE KEY `long_name` (`long_name`),
  UNIQUE KEY `storet_code` (`storet_code`),
  KEY `sites_ibfk_1` (`lab_id`),
  CONSTRAINT `sites_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'RNS','000723','Napili',1,1,1,NULL,20.994222,-156.667417,1,NULL);
INSERT INTO `sites` VALUES (2,'RPO','000724','Pohaku',1,1,2,NULL,20.967083,-156.68139,1,NULL);
INSERT INTO `sites` VALUES (3,'RKS',NULL,'Kaanapali Shores',1,1,3,NULL,20.949331,-156.691124,1,NULL);
INSERT INTO `sites` VALUES (4,'RAB','000695','Airport Beach',1,1,NULL,NULL,20.936669,-156.69278,0,NULL);
INSERT INTO `sites` VALUES (5,'RCB','000693','Canoe Beach',1,1,5,NULL,20.910347,-156.689382,1,NULL);
INSERT INTO `sites` VALUES (6,'RWA','000678','Wahikuli',1,1,6,NULL,20.904476,-156.685931,1,NULL);
INSERT INTO `sites` VALUES (7,'PFF',NULL,'505 Front Street',1,2,1,NULL,20.86732,-156.67605,1,NULL);
INSERT INTO `sites` VALUES (8,'PLH',NULL,'Lindsey Hale',1,2,2,NULL,20.86485,-156.67374,1,NULL);
INSERT INTO `sites` VALUES (9,'PLT','000726','Lahaina Town',1,2,3,NULL,20.86356,-156.67297,1,NULL);
INSERT INTO `sites` VALUES (10,'PPU',NULL,'Makila Point',1,2,NULL,NULL,20.859233,-156.669442,0,NULL);
INSERT INTO `sites` VALUES (11,'OLP',NULL,'Launiupoko',1,2,NULL,NULL,20.84236,-156.653035,0,NULL);
INSERT INTO `sites` VALUES (12,'OSF','000663','Olowalu Shore Front',1,2,NULL,NULL,20.80916,-156.62289,0,NULL);
INSERT INTO `sites` VALUES (13,'OPM',NULL,'Peter Martin Hale',1,3,NULL,NULL,20.808444,-156.619697,0,NULL);
INSERT INTO `sites` VALUES (14,'OCO',NULL,'Camp Olowalu',1,2,4,NULL,20.80986,-156.61369,1,NULL);
INSERT INTO `sites` VALUES (15,'OMM',NULL,'Mile Marker 14',1,3,NULL,NULL,20.80915,-156.60661,0,NULL);
INSERT INTO `sites` VALUES (16,'OUB','000698','Ukumehame Beach',1,3,NULL,NULL,20.79448,-156.58142,0,NULL);
INSERT INTO `sites` VALUES (17,'OPB','000728','Papalaua',1,3,NULL,NULL,20.793809,-156.575211,0,NULL);
INSERT INTO `sites` VALUES (18,'OPP',NULL,'Papalaua Pali',1,2,5,NULL,20.792747,-156.567326,1,NULL);
INSERT INTO `sites` VALUES (19,'RHL','000707','Honolua',1,3,1,NULL,21.013058,-156.63834,1,NULL);
INSERT INTO `sites` VALUES (20,'RMO','000721','Mokuleia',1,4,NULL,NULL,21.011352,-156.64227,0,NULL);
INSERT INTO `sites` VALUES (21,'RFN','000674','DT Beach (Fleming N)',1,4,NULL,NULL,21.005,-156.65084,0,NULL);
INSERT INTO `sites` VALUES (22,'RON','000722','Oneloa',1,3,2,NULL,21.004056,-156.65894,1,NULL);
INSERT INTO `sites` VALUES (23,'RFS','000650','Kapalua Bay (Fleming S)',1,3,3,NULL,20.998924,-156.666746,1,NULL);
INSERT INTO `sites` VALUES (24,'RKO','000692','Ka\'opala',1,3,4,NULL,20.982074,-156.673398,1,NULL);
INSERT INTO `sites` VALUES (25,'RKV',NULL,'Kahana Village',1,3,5,NULL,20.976561,-156.678,1,NULL);
INSERT INTO `sites` VALUES (26,'KWP','000713','Waipuilani Park',2,1,2,NULL,20.755056,-156.459602,1,NULL);
INSERT INTO `sites` VALUES (27,'KKS','000676','Kihei South (Lipoa)',2,1,3,NULL,20.747334,-156.457881,1,NULL);
INSERT INTO `sites` VALUES (28,'KKP','000679','Kalama Park',2,1,4,NULL,20.730973,-156.45372,1,NULL);
INSERT INTO `sites` VALUES (29,'KCP','000703','Cove Park',2,1,5,NULL,20.727434,-156.450077,1,NULL);
INSERT INTO `sites` VALUES (30,'KKO','000681','Kamaole Beach I',2,1,NULL,NULL,20.721985,-156.448183,0,NULL);
INSERT INTO `sites` VALUES (31,'KKT','000683','Kamaole Beach III',2,1,NULL,NULL,20.712908,-156.446596,0,NULL);
INSERT INTO `sites` VALUES (32,'MML',NULL,'Makena Landing',2,2,NULL,NULL,20.653913,-156.441174,0,NULL);
INSERT INTO `sites` VALUES (33,'MMB',NULL,'Maluaka Beach',2,2,4,NULL,20.645598,-156.443859,1,NULL);
INSERT INTO `sites` VALUES (34,'MON',NULL,'Oneuli',2,2,NULL,NULL,20.639866,-156.447406,0,NULL);
INSERT INTO `sites` VALUES (35,'MBS',NULL,'Makena Beach Shoreline',2,2,NULL,NULL,20.63061,-156.446183,0,NULL);
INSERT INTO `sites` VALUES (36,'MAN',NULL,'Ahihi North',2,2,5,NULL,20.618366,-156.437572,1,NULL);
INSERT INTO `sites` VALUES (37,'MAS',NULL,'Ahihi South',2,2,6,NULL,20.6138,-156.436853,1,NULL);
INSERT INTO `sites` VALUES (38,'NHP','000687','Haycraft Park',2,3,3,NULL,20.796414,-156.503198,1,NULL);
INSERT INTO `sites` VALUES (39,'NKP','000711','Kealia Pond',2,3,4,NULL,20.794936,-156.485587,1,NULL);
INSERT INTO `sites` VALUES (40,'NSB',NULL,'Sugar Beach',2,3,NULL,NULL,20.784204,-156.466463,0,NULL);
INSERT INTO `sites` VALUES (41,'NKC','000671','Kihei Canoe Club',2,3,5,NULL,20.781403,-156.463176,1,NULL);
INSERT INTO `sites` VALUES (42,'NMP','000702','Mai Poina \'Oe Ia\'u',2,1,NULL,NULL,20.774894,-156.460776,0,NULL);
INSERT INTO `sites` VALUES (43,'NKN',NULL,'Kalepolepo North',2,1,1,NULL,20.765132,-156.459344,1,NULL);
INSERT INTO `sites` VALUES (44,'WKD','000704','Kilohana Dr',2,2,1,NULL,20.702214,-156.445921,1,NULL);
INSERT INTO `sites` VALUES (45,'WKB','000685','Keawekapu Beach',2,2,2,NULL,20.695939,-156.444632,1,NULL);
INSERT INTO `sites` VALUES (46,'WUL','000686','Ulua Beach',2,2,3,NULL,20.69112,-156.444201,1,NULL);
INSERT INTO `sites` VALUES (47,'WWA','000691','Wailea Beach',2,4,NULL,NULL,20.68156,-156.443524,0,NULL);
INSERT INTO `sites` VALUES (48,'WPL','000715','Palauea',2,4,NULL,NULL,20.669565,-156.442907,0,NULL);
INSERT INTO `sites` VALUES (49,'WPO','000716','Poolenalena (Chang\'s Beach)',2,4,NULL,NULL,20.66339,-156.441968,0,NULL);
INSERT INTO `sites` VALUES (50,'NMH',NULL,'Maalaea Harbor',2,3,1,NULL,20.790305,-156.510825,1,NULL);
INSERT INTO `sites` VALUES (51,'NMC',NULL,'Maalaea Condos',2,3,2,NULL,20.794917,-156.506735,1,NULL);
INSERT INTO `sites` VALUES (52,'RKT','000733','Kahekili Two',1,1,4,NULL,20.941269,-156.692439,1,NULL);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_roles` (`user_id`,`role_id`),
  KEY `role` (`role_id`),
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `users` VALUES (1,'root','root','99',1,'root',NULL,'014f8f5784eaeee325fbaf29b8170871','bed6ea8f4cae38603163ef5f7fa320a85bc07382c73066de935de1b8f29cd6c5e9e8d0473a657789f3f8ad2e95b2a083d258cb436176078b09e7797751ae58e3');
INSERT INTO `users` VALUES (2,'The','Guest','G',1,'guest',NULL,'c7a2626abc7a1d37dd8d9634545df480','2ebad3ac4f62132691f97be50f20f443e33e30747506f7d27b81b8b55b3e99d2d10f32d27c8f76fca2cd184c5427993103e3b12f66fabe252bb76407b518ac52');
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `base_sample_report` AS select `sess`.`lab_id` AS `lab_id`,`sam`.`sample_id` AS `sample_id`,concat(`site`.`hui_abv`,convert(date_format(`sam`.`the_date`,'%y%m%d') using latin1)) AS `sampleID`,`sam`.`sampling_order` AS `sampling_order`,`site`.`long_name` AS `long_name`,`site`.`hui_abv` AS `hui_abv`,`sess`.`session_number` AS `session_number`,date_format(`sam`.`the_date`,'%m/%d/%y') AS `the_date`,date_format(`sam`.`the_time`,'%H:%i') AS `the_time`,replace(format(`sam`.`temperature`,1),',','') AS `temperature`,replace(format(`sam`.`salinity`,1),',','') AS `salinity`,replace(format(`sam`.`dissolved_oxygen`,2),',','') AS `dissolved_oxygen`,replace(format(`sam`.`dissolved_oxygen_pct`,1),',','') AS `dissolved_oxygen_pct`,replace(format(`sam`.`ph`,2),' ','') AS `ph`,replace(format(`sam`.`turbidity_1`,2),',','') AS `turbidity_1`,replace(format(`sam`.`turbidity_2`,2),',','') AS `turbidity_2`,replace(format(`sam`.`turbidity_3`,2),',','') AS `turbidity_3`,replace(format(round((((`sam`.`turbidity_1` + `sam`.`turbidity_2`) + `sam`.`turbidity_3`) / 3.0),2),2),',','') AS `avg_turbidity`,`sam`.`nutrient_sample_taken` AS `nutrient_sample_taken`,replace(format(`sam`.`total_nitrogen`,2),',','') AS `total_nitrogen`,replace(format(`sam`.`total_phosphorus`,2),',','') AS `total_phosphorus`,replace(format(`sam`.`phosphate`,2),',','') AS `phosphate`,replace(format(`sam`.`silicate`,2),',','') AS `silicate`,replace(format(`sam`.`nitrates`,2),',','') AS `nitrates`,replace(format(`sam`.`ammonia`,2),',','') AS `ammonia`,replace(format(`site`.`lat`,6),',','') AS `lat`,replace(format(`site`.`lon`,6),',','') AS `lon`,`sam`.`comments` AS `comments` from ((`samples` `sam` join `sites` `site`) join `sessions` `sess`) where ((`sess`.`session_id` = `sam`.`session_id`) and (`sam`.`site_id` = `site`.`site_id`)) order by `sess`.`lab_id`,`sam`.`the_date`,`sam`.`sampling_order`,`sam`.`the_time` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comments_diff_report` AS select `bsr`.`lab_id` AS `lab_id`,`bsr`.`sampleID` AS `sampleID`,`bsr`.`long_name` AS `long_name`,`bsr`.`hui_abv` AS `hui_abv`,`bsr`.`session_number` AS `session_number`,`bsr`.`the_date` AS `the_date`,`bsr`.`the_time` AS `the_time`,`bsr`.`comments` AS `comments` from `base_sample_report` `bsr` where (`bsr`.`comments` is not null) order by `bsr`.`lab_id`,`bsr`.`session_number`,`bsr`.`the_date`,`bsr`.`sampling_order`,`bsr`.`the_time` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `diff_report` AS select `bsr`.`lab_id` AS `lab_id`,`bsr`.`sampleID` AS `sampleID`,`bsr`.`long_name` AS `long_name`,`bsr`.`hui_abv` AS `hui_abv`,`bsr`.`session_number` AS `session_number`,`bsr`.`the_date` AS `the_date`,`bsr`.`the_time` AS `the_time`,`bsr`.`temperature` AS `temperature`,`bsr`.`salinity` AS `salinity`,`bsr`.`dissolved_oxygen` AS `dissolved_oxygen`,`bsr`.`dissolved_oxygen_pct` AS `dissolved_oxygen_pct`,`bsr`.`ph` AS `ph`,`bsr`.`turbidity_1` AS `turbidity_1`,`bsr`.`turbidity_2` AS `turbidity_2`,`bsr`.`turbidity_3` AS `turbidity_3`,`bsr`.`avg_turbidity` AS `avg_turbidity`,`bsr`.`total_nitrogen` AS `total_nitrogen`,`bsr`.`total_phosphorus` AS `total_phosphorus`,`bsr`.`phosphate` AS `phosphate`,`bsr`.`silicate` AS `silicate`,`bsr`.`nitrates` AS `nitrates`,`bsr`.`ammonia` AS `ammonia`,`bsr`.`lat` AS `lat`,`bsr`.`lon` AS `lon` from `base_sample_report` `bsr` order by `bsr`.`lab_id`,`bsr`.`session_number`,`bsr`.`the_date`,`bsr`.`sampling_order`,`bsr`.`the_time` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `insitu_diff_report` AS select `bsr`.`lab_id` AS `lab_id`,`bsr`.`sampleID` AS `sampleID`,`bsr`.`long_name` AS `long_name`,`bsr`.`hui_abv` AS `hui_abv`,`bsr`.`session_number` AS `session_number`,`bsr`.`the_date` AS `the_date`,`bsr`.`the_time` AS `the_time`,`bsr`.`temperature` AS `temperature`,`bsr`.`salinity` AS `salinity`,`bsr`.`dissolved_oxygen` AS `dissolved_oxygen`,`bsr`.`dissolved_oxygen_pct` AS `dissolved_oxygen_pct`,`bsr`.`ph` AS `ph`,`bsr`.`turbidity_1` AS `turbidity_1`,`bsr`.`turbidity_2` AS `turbidity_2`,`bsr`.`turbidity_3` AS `turbidity_3`,`bsr`.`avg_turbidity` AS `avg_turbidity` from `base_sample_report` `bsr` order by `bsr`.`lab_id`,`bsr`.`session_number`,`bsr`.`the_date`,`bsr`.`sampling_order`,`bsr`.`the_time` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lab_sessions_overview` AS select `l`.`lab_id` AS `lab_id`,`l`.`lab_code` AS `lab_code`,`l`.`short_name` AS `short_name`,`l`.`long_name` AS `long_name`,`s`.`session_id` AS `session_id`,`s`.`session_number` AS `session_number`,`s`.`first_sample_day` AS `first_sample_day` from (`labs` `l` join `sessions` `s`) where (`l`.`lab_id` = `s`.`lab_id`) order by `l`.`lab_code`,`s`.`session_number` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nutrient_diff_report` AS select `bsr`.`lab_id` AS `lab_id`,`bsr`.`sampleID` AS `sampleID`,`bsr`.`long_name` AS `long_name`,`bsr`.`hui_abv` AS `hui_abv`,`bsr`.`session_number` AS `session_number`,`bsr`.`the_date` AS `the_date`,`bsr`.`the_time` AS `the_time`,`bsr`.`nutrient_sample_taken` AS `nutrient_sample_taken`,`bsr`.`total_nitrogen` AS `total_nitrogen`,`bsr`.`total_phosphorus` AS `total_phosphorus`,`bsr`.`phosphate` AS `phosphate`,`bsr`.`silicate` AS `silicate`,`bsr`.`nitrates` AS `nitrates`,`bsr`.`ammonia` AS `ammonia`,`bsr`.`lat` AS `lat`,`bsr`.`lon` AS `lon` from `base_sample_report` `bsr` order by `bsr`.`lab_id`,`bsr`.`session_number`,`bsr`.`the_date`,`bsr`.`sampling_order`,`bsr`.`the_time` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qa_issues_base_report` AS select `sess`.`lab_id` AS `lab_id`,`sam`.`sample_id` AS `sample_id`,`site`.`long_name` AS `long_name`,concat(`site`.`hui_abv`,convert(date_format(`sam`.`the_date`,'%y%m%d') using latin1)) AS `sampleID`,`sam`.`sampling_order` AS `sampling_order`,`sess`.`session_number` AS `session_number`,date_format(`sam`.`the_date`,'%m/%d/%y') AS `the_date`,date_format(`sam`.`the_time`,'%H:%i') AS `the_time`,`qis`.`sample_column_name` AS `sample_column_name`,`qis`.`description` AS `description` from (((`samples` `sam` join `sites` `site`) join `sessions` `sess`) join `qa_issue_samples` `qis`) where ((`sess`.`session_id` = `sam`.`session_id`) and (`sam`.`site_id` = `site`.`site_id`) and (`sam`.`sample_id` = `qis`.`sample_id`)) order by `sess`.`lab_id`,`sess`.`session_number`,`sam`.`the_date`,`sam`.`sampling_order`,`sam`.`the_time` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qa_issues_report` AS select `qa_issues_base_report`.`lab_id` AS `lab_id`,`qa_issues_base_report`.`session_number` AS `session_number`,`qa_issues_base_report`.`long_name` AS `long_name`,`qa_issues_base_report`.`the_date` AS `the_date`,`qa_issues_base_report`.`the_time` AS `the_time`,`qa_issues_base_report`.`sample_column_name` AS `sample_column_name`,`qa_issues_base_report`.`description` AS `description` from `qa_issues_base_report` */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wq_dba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `site_and_date_to_sample_id_lookup` AS select concat(`site`.`hui_abv`,convert(date_format(`sam`.`the_date`,'%y%m%d') using latin1)) AS `site_and_date`,`sam`.`sample_id` AS `sample_id`,`site`.`hui_abv` AS `hui_abv`,date_format(`sam`.`the_date`,'%c/%e/%y') AS `the_date` from (`samples` `sam` join `sites` `site`) where (`sam`.`site_id` = `site`.`site_id`) order by `site`.`hui_abv`,`sam`.`the_date`,`sam`.`the_time` */;
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

-- Dump completed on 2023-04-02 14:35:24
