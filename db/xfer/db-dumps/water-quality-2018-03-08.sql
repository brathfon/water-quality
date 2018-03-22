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
INSERT INTO `sample_workers` VALUES (87,2);
INSERT INTO `sample_workers` VALUES (88,2);
INSERT INTO `sample_workers` VALUES (89,2);
INSERT INTO `sample_workers` VALUES (90,2);
INSERT INTO `sample_workers` VALUES (91,2);
INSERT INTO `sample_workers` VALUES (92,2);
INSERT INTO `sample_workers` VALUES (111,2);
INSERT INTO `sample_workers` VALUES (112,2);
INSERT INTO `sample_workers` VALUES (113,2);
INSERT INTO `sample_workers` VALUES (114,2);
INSERT INTO `sample_workers` VALUES (115,2);
INSERT INTO `sample_workers` VALUES (116,2);
INSERT INTO `sample_workers` VALUES (135,2);
INSERT INTO `sample_workers` VALUES (136,2);
INSERT INTO `sample_workers` VALUES (137,2);
INSERT INTO `sample_workers` VALUES (138,2);
INSERT INTO `sample_workers` VALUES (139,2);
INSERT INTO `sample_workers` VALUES (140,2);
INSERT INTO `sample_workers` VALUES (159,2);
INSERT INTO `sample_workers` VALUES (160,2);
INSERT INTO `sample_workers` VALUES (161,2);
INSERT INTO `sample_workers` VALUES (162,2);
INSERT INTO `sample_workers` VALUES (163,2);
INSERT INTO `sample_workers` VALUES (164,2);
INSERT INTO `sample_workers` VALUES (183,2);
INSERT INTO `sample_workers` VALUES (184,2);
INSERT INTO `sample_workers` VALUES (185,2);
INSERT INTO `sample_workers` VALUES (186,2);
INSERT INTO `sample_workers` VALUES (187,2);
INSERT INTO `sample_workers` VALUES (188,2);
INSERT INTO `sample_workers` VALUES (207,2);
INSERT INTO `sample_workers` VALUES (208,2);
INSERT INTO `sample_workers` VALUES (209,2);
INSERT INTO `sample_workers` VALUES (210,2);
INSERT INTO `sample_workers` VALUES (211,2);
INSERT INTO `sample_workers` VALUES (212,2);
INSERT INTO `sample_workers` VALUES (87,3);
INSERT INTO `sample_workers` VALUES (88,3);
INSERT INTO `sample_workers` VALUES (89,3);
INSERT INTO `sample_workers` VALUES (90,3);
INSERT INTO `sample_workers` VALUES (91,3);
INSERT INTO `sample_workers` VALUES (92,3);
INSERT INTO `sample_workers` VALUES (135,3);
INSERT INTO `sample_workers` VALUES (136,3);
INSERT INTO `sample_workers` VALUES (137,3);
INSERT INTO `sample_workers` VALUES (138,3);
INSERT INTO `sample_workers` VALUES (139,3);
INSERT INTO `sample_workers` VALUES (140,3);
INSERT INTO `sample_workers` VALUES (207,3);
INSERT INTO `sample_workers` VALUES (208,3);
INSERT INTO `sample_workers` VALUES (209,3);
INSERT INTO `sample_workers` VALUES (210,3);
INSERT INTO `sample_workers` VALUES (211,3);
INSERT INTO `sample_workers` VALUES (212,3);
INSERT INTO `sample_workers` VALUES (87,4);
INSERT INTO `sample_workers` VALUES (88,4);
INSERT INTO `sample_workers` VALUES (89,4);
INSERT INTO `sample_workers` VALUES (90,4);
INSERT INTO `sample_workers` VALUES (91,4);
INSERT INTO `sample_workers` VALUES (92,4);
INSERT INTO `sample_workers` VALUES (75,5);
INSERT INTO `sample_workers` VALUES (76,5);
INSERT INTO `sample_workers` VALUES (77,5);
INSERT INTO `sample_workers` VALUES (78,5);
INSERT INTO `sample_workers` VALUES (79,5);
INSERT INTO `sample_workers` VALUES (80,5);
INSERT INTO `sample_workers` VALUES (99,5);
INSERT INTO `sample_workers` VALUES (100,5);
INSERT INTO `sample_workers` VALUES (101,5);
INSERT INTO `sample_workers` VALUES (102,5);
INSERT INTO `sample_workers` VALUES (103,5);
INSERT INTO `sample_workers` VALUES (104,5);
INSERT INTO `sample_workers` VALUES (147,5);
INSERT INTO `sample_workers` VALUES (148,5);
INSERT INTO `sample_workers` VALUES (149,5);
INSERT INTO `sample_workers` VALUES (150,5);
INSERT INTO `sample_workers` VALUES (151,5);
INSERT INTO `sample_workers` VALUES (152,5);
INSERT INTO `sample_workers` VALUES (171,5);
INSERT INTO `sample_workers` VALUES (172,5);
INSERT INTO `sample_workers` VALUES (173,5);
INSERT INTO `sample_workers` VALUES (174,5);
INSERT INTO `sample_workers` VALUES (175,5);
INSERT INTO `sample_workers` VALUES (176,5);
INSERT INTO `sample_workers` VALUES (195,5);
INSERT INTO `sample_workers` VALUES (196,5);
INSERT INTO `sample_workers` VALUES (197,5);
INSERT INTO `sample_workers` VALUES (198,5);
INSERT INTO `sample_workers` VALUES (199,5);
INSERT INTO `sample_workers` VALUES (200,5);
INSERT INTO `sample_workers` VALUES (111,6);
INSERT INTO `sample_workers` VALUES (112,6);
INSERT INTO `sample_workers` VALUES (113,6);
INSERT INTO `sample_workers` VALUES (114,6);
INSERT INTO `sample_workers` VALUES (115,6);
INSERT INTO `sample_workers` VALUES (116,6);
INSERT INTO `sample_workers` VALUES (75,7);
INSERT INTO `sample_workers` VALUES (76,7);
INSERT INTO `sample_workers` VALUES (77,7);
INSERT INTO `sample_workers` VALUES (78,7);
INSERT INTO `sample_workers` VALUES (79,7);
INSERT INTO `sample_workers` VALUES (80,7);
INSERT INTO `sample_workers` VALUES (99,7);
INSERT INTO `sample_workers` VALUES (100,7);
INSERT INTO `sample_workers` VALUES (101,7);
INSERT INTO `sample_workers` VALUES (102,7);
INSERT INTO `sample_workers` VALUES (103,7);
INSERT INTO `sample_workers` VALUES (104,7);
INSERT INTO `sample_workers` VALUES (123,7);
INSERT INTO `sample_workers` VALUES (124,7);
INSERT INTO `sample_workers` VALUES (125,7);
INSERT INTO `sample_workers` VALUES (126,7);
INSERT INTO `sample_workers` VALUES (127,7);
INSERT INTO `sample_workers` VALUES (128,7);
INSERT INTO `sample_workers` VALUES (147,7);
INSERT INTO `sample_workers` VALUES (148,7);
INSERT INTO `sample_workers` VALUES (149,7);
INSERT INTO `sample_workers` VALUES (150,7);
INSERT INTO `sample_workers` VALUES (151,7);
INSERT INTO `sample_workers` VALUES (152,7);
INSERT INTO `sample_workers` VALUES (159,9);
INSERT INTO `sample_workers` VALUES (160,9);
INSERT INTO `sample_workers` VALUES (161,9);
INSERT INTO `sample_workers` VALUES (162,9);
INSERT INTO `sample_workers` VALUES (163,9);
INSERT INTO `sample_workers` VALUES (164,9);
INSERT INTO `sample_workers` VALUES (165,9);
INSERT INTO `sample_workers` VALUES (166,9);
INSERT INTO `sample_workers` VALUES (167,9);
INSERT INTO `sample_workers` VALUES (168,9);
INSERT INTO `sample_workers` VALUES (169,9);
INSERT INTO `sample_workers` VALUES (170,9);
INSERT INTO `sample_workers` VALUES (171,9);
INSERT INTO `sample_workers` VALUES (172,9);
INSERT INTO `sample_workers` VALUES (173,9);
INSERT INTO `sample_workers` VALUES (174,9);
INSERT INTO `sample_workers` VALUES (175,9);
INSERT INTO `sample_workers` VALUES (176,9);
INSERT INTO `sample_workers` VALUES (177,9);
INSERT INTO `sample_workers` VALUES (178,9);
INSERT INTO `sample_workers` VALUES (179,9);
INSERT INTO `sample_workers` VALUES (180,9);
INSERT INTO `sample_workers` VALUES (181,9);
INSERT INTO `sample_workers` VALUES (182,9);
INSERT INTO `sample_workers` VALUES (183,9);
INSERT INTO `sample_workers` VALUES (184,9);
INSERT INTO `sample_workers` VALUES (185,9);
INSERT INTO `sample_workers` VALUES (186,9);
INSERT INTO `sample_workers` VALUES (187,9);
INSERT INTO `sample_workers` VALUES (188,9);
INSERT INTO `sample_workers` VALUES (81,10);
INSERT INTO `sample_workers` VALUES (82,10);
INSERT INTO `sample_workers` VALUES (83,10);
INSERT INTO `sample_workers` VALUES (84,10);
INSERT INTO `sample_workers` VALUES (85,10);
INSERT INTO `sample_workers` VALUES (86,10);
INSERT INTO `sample_workers` VALUES (105,10);
INSERT INTO `sample_workers` VALUES (106,10);
INSERT INTO `sample_workers` VALUES (107,10);
INSERT INTO `sample_workers` VALUES (108,10);
INSERT INTO `sample_workers` VALUES (109,10);
INSERT INTO `sample_workers` VALUES (110,10);
INSERT INTO `sample_workers` VALUES (129,10);
INSERT INTO `sample_workers` VALUES (130,10);
INSERT INTO `sample_workers` VALUES (131,10);
INSERT INTO `sample_workers` VALUES (132,10);
INSERT INTO `sample_workers` VALUES (133,10);
INSERT INTO `sample_workers` VALUES (134,10);
INSERT INTO `sample_workers` VALUES (153,10);
INSERT INTO `sample_workers` VALUES (154,10);
INSERT INTO `sample_workers` VALUES (155,10);
INSERT INTO `sample_workers` VALUES (156,10);
INSERT INTO `sample_workers` VALUES (157,10);
INSERT INTO `sample_workers` VALUES (158,10);
INSERT INTO `sample_workers` VALUES (201,10);
INSERT INTO `sample_workers` VALUES (202,10);
INSERT INTO `sample_workers` VALUES (203,10);
INSERT INTO `sample_workers` VALUES (204,10);
INSERT INTO `sample_workers` VALUES (205,10);
INSERT INTO `sample_workers` VALUES (206,10);
INSERT INTO `sample_workers` VALUES (63,11);
INSERT INTO `sample_workers` VALUES (64,11);
INSERT INTO `sample_workers` VALUES (65,11);
INSERT INTO `sample_workers` VALUES (66,11);
INSERT INTO `sample_workers` VALUES (67,11);
INSERT INTO `sample_workers` VALUES (68,11);
INSERT INTO `sample_workers` VALUES (93,11);
INSERT INTO `sample_workers` VALUES (94,11);
INSERT INTO `sample_workers` VALUES (95,11);
INSERT INTO `sample_workers` VALUES (96,11);
INSERT INTO `sample_workers` VALUES (97,11);
INSERT INTO `sample_workers` VALUES (98,11);
INSERT INTO `sample_workers` VALUES (117,11);
INSERT INTO `sample_workers` VALUES (118,11);
INSERT INTO `sample_workers` VALUES (119,11);
INSERT INTO `sample_workers` VALUES (120,11);
INSERT INTO `sample_workers` VALUES (121,11);
INSERT INTO `sample_workers` VALUES (122,11);
INSERT INTO `sample_workers` VALUES (123,11);
INSERT INTO `sample_workers` VALUES (124,11);
INSERT INTO `sample_workers` VALUES (125,11);
INSERT INTO `sample_workers` VALUES (126,11);
INSERT INTO `sample_workers` VALUES (127,11);
INSERT INTO `sample_workers` VALUES (128,11);
INSERT INTO `sample_workers` VALUES (141,11);
INSERT INTO `sample_workers` VALUES (142,11);
INSERT INTO `sample_workers` VALUES (143,11);
INSERT INTO `sample_workers` VALUES (144,11);
INSERT INTO `sample_workers` VALUES (145,11);
INSERT INTO `sample_workers` VALUES (146,11);
INSERT INTO `sample_workers` VALUES (81,12);
INSERT INTO `sample_workers` VALUES (82,12);
INSERT INTO `sample_workers` VALUES (83,12);
INSERT INTO `sample_workers` VALUES (84,12);
INSERT INTO `sample_workers` VALUES (85,12);
INSERT INTO `sample_workers` VALUES (86,12);
INSERT INTO `sample_workers` VALUES (105,12);
INSERT INTO `sample_workers` VALUES (106,12);
INSERT INTO `sample_workers` VALUES (107,12);
INSERT INTO `sample_workers` VALUES (108,12);
INSERT INTO `sample_workers` VALUES (109,12);
INSERT INTO `sample_workers` VALUES (110,12);
INSERT INTO `sample_workers` VALUES (129,12);
INSERT INTO `sample_workers` VALUES (130,12);
INSERT INTO `sample_workers` VALUES (131,12);
INSERT INTO `sample_workers` VALUES (132,12);
INSERT INTO `sample_workers` VALUES (133,12);
INSERT INTO `sample_workers` VALUES (134,12);
INSERT INTO `sample_workers` VALUES (153,12);
INSERT INTO `sample_workers` VALUES (154,12);
INSERT INTO `sample_workers` VALUES (155,12);
INSERT INTO `sample_workers` VALUES (156,12);
INSERT INTO `sample_workers` VALUES (157,12);
INSERT INTO `sample_workers` VALUES (158,12);
INSERT INTO `sample_workers` VALUES (177,12);
INSERT INTO `sample_workers` VALUES (178,12);
INSERT INTO `sample_workers` VALUES (179,12);
INSERT INTO `sample_workers` VALUES (180,12);
INSERT INTO `sample_workers` VALUES (181,12);
INSERT INTO `sample_workers` VALUES (182,12);
INSERT INTO `sample_workers` VALUES (201,12);
INSERT INTO `sample_workers` VALUES (202,12);
INSERT INTO `sample_workers` VALUES (203,12);
INSERT INTO `sample_workers` VALUES (204,12);
INSERT INTO `sample_workers` VALUES (205,12);
INSERT INTO `sample_workers` VALUES (206,12);
INSERT INTO `sample_workers` VALUES (69,13);
INSERT INTO `sample_workers` VALUES (70,13);
INSERT INTO `sample_workers` VALUES (71,13);
INSERT INTO `sample_workers` VALUES (72,13);
INSERT INTO `sample_workers` VALUES (73,13);
INSERT INTO `sample_workers` VALUES (74,13);
INSERT INTO `sample_workers` VALUES (117,13);
INSERT INTO `sample_workers` VALUES (118,13);
INSERT INTO `sample_workers` VALUES (119,13);
INSERT INTO `sample_workers` VALUES (120,13);
INSERT INTO `sample_workers` VALUES (121,13);
INSERT INTO `sample_workers` VALUES (122,13);
INSERT INTO `sample_workers` VALUES (189,13);
INSERT INTO `sample_workers` VALUES (190,13);
INSERT INTO `sample_workers` VALUES (191,13);
INSERT INTO `sample_workers` VALUES (192,13);
INSERT INTO `sample_workers` VALUES (193,13);
INSERT INTO `sample_workers` VALUES (194,13);
INSERT INTO `sample_workers` VALUES (69,14);
INSERT INTO `sample_workers` VALUES (70,14);
INSERT INTO `sample_workers` VALUES (71,14);
INSERT INTO `sample_workers` VALUES (72,14);
INSERT INTO `sample_workers` VALUES (73,14);
INSERT INTO `sample_workers` VALUES (74,14);
INSERT INTO `sample_workers` VALUES (93,14);
INSERT INTO `sample_workers` VALUES (94,14);
INSERT INTO `sample_workers` VALUES (95,14);
INSERT INTO `sample_workers` VALUES (96,14);
INSERT INTO `sample_workers` VALUES (97,14);
INSERT INTO `sample_workers` VALUES (98,14);
INSERT INTO `sample_workers` VALUES (117,14);
INSERT INTO `sample_workers` VALUES (118,14);
INSERT INTO `sample_workers` VALUES (119,14);
INSERT INTO `sample_workers` VALUES (120,14);
INSERT INTO `sample_workers` VALUES (121,14);
INSERT INTO `sample_workers` VALUES (122,14);
INSERT INTO `sample_workers` VALUES (141,14);
INSERT INTO `sample_workers` VALUES (142,14);
INSERT INTO `sample_workers` VALUES (143,14);
INSERT INTO `sample_workers` VALUES (144,14);
INSERT INTO `sample_workers` VALUES (145,14);
INSERT INTO `sample_workers` VALUES (146,14);
INSERT INTO `sample_workers` VALUES (189,14);
INSERT INTO `sample_workers` VALUES (190,14);
INSERT INTO `sample_workers` VALUES (191,14);
INSERT INTO `sample_workers` VALUES (192,14);
INSERT INTO `sample_workers` VALUES (193,14);
INSERT INTO `sample_workers` VALUES (194,14);
INSERT INTO `sample_workers` VALUES (69,15);
INSERT INTO `sample_workers` VALUES (70,15);
INSERT INTO `sample_workers` VALUES (71,15);
INSERT INTO `sample_workers` VALUES (72,15);
INSERT INTO `sample_workers` VALUES (73,15);
INSERT INTO `sample_workers` VALUES (74,15);
INSERT INTO `sample_workers` VALUES (141,15);
INSERT INTO `sample_workers` VALUES (142,15);
INSERT INTO `sample_workers` VALUES (143,15);
INSERT INTO `sample_workers` VALUES (144,15);
INSERT INTO `sample_workers` VALUES (145,15);
INSERT INTO `sample_workers` VALUES (146,15);
INSERT INTO `sample_workers` VALUES (165,15);
INSERT INTO `sample_workers` VALUES (166,15);
INSERT INTO `sample_workers` VALUES (167,15);
INSERT INTO `sample_workers` VALUES (168,15);
INSERT INTO `sample_workers` VALUES (169,15);
INSERT INTO `sample_workers` VALUES (170,15);
INSERT INTO `sample_workers` VALUES (189,15);
INSERT INTO `sample_workers` VALUES (190,15);
INSERT INTO `sample_workers` VALUES (191,15);
INSERT INTO `sample_workers` VALUES (192,15);
INSERT INTO `sample_workers` VALUES (193,15);
INSERT INTO `sample_workers` VALUES (194,15);
INSERT INTO `sample_workers` VALUES (81,17);
INSERT INTO `sample_workers` VALUES (82,17);
INSERT INTO `sample_workers` VALUES (83,17);
INSERT INTO `sample_workers` VALUES (84,17);
INSERT INTO `sample_workers` VALUES (85,17);
INSERT INTO `sample_workers` VALUES (86,17);
INSERT INTO `sample_workers` VALUES (105,17);
INSERT INTO `sample_workers` VALUES (106,17);
INSERT INTO `sample_workers` VALUES (107,17);
INSERT INTO `sample_workers` VALUES (108,17);
INSERT INTO `sample_workers` VALUES (109,17);
INSERT INTO `sample_workers` VALUES (110,17);
INSERT INTO `sample_workers` VALUES (129,17);
INSERT INTO `sample_workers` VALUES (130,17);
INSERT INTO `sample_workers` VALUES (131,17);
INSERT INTO `sample_workers` VALUES (132,17);
INSERT INTO `sample_workers` VALUES (133,17);
INSERT INTO `sample_workers` VALUES (134,17);
INSERT INTO `sample_workers` VALUES (153,17);
INSERT INTO `sample_workers` VALUES (154,17);
INSERT INTO `sample_workers` VALUES (155,17);
INSERT INTO `sample_workers` VALUES (156,17);
INSERT INTO `sample_workers` VALUES (157,17);
INSERT INTO `sample_workers` VALUES (158,17);
INSERT INTO `sample_workers` VALUES (177,17);
INSERT INTO `sample_workers` VALUES (178,17);
INSERT INTO `sample_workers` VALUES (179,17);
INSERT INTO `sample_workers` VALUES (180,17);
INSERT INTO `sample_workers` VALUES (181,17);
INSERT INTO `sample_workers` VALUES (182,17);
INSERT INTO `sample_workers` VALUES (201,17);
INSERT INTO `sample_workers` VALUES (202,17);
INSERT INTO `sample_workers` VALUES (203,17);
INSERT INTO `sample_workers` VALUES (204,17);
INSERT INTO `sample_workers` VALUES (205,17);
INSERT INTO `sample_workers` VALUES (206,17);
INSERT INTO `sample_workers` VALUES (1,18);
INSERT INTO `sample_workers` VALUES (2,18);
INSERT INTO `sample_workers` VALUES (3,18);
INSERT INTO `sample_workers` VALUES (4,18);
INSERT INTO `sample_workers` VALUES (5,18);
INSERT INTO `sample_workers` VALUES (6,18);
INSERT INTO `sample_workers` VALUES (11,18);
INSERT INTO `sample_workers` VALUES (12,18);
INSERT INTO `sample_workers` VALUES (13,18);
INSERT INTO `sample_workers` VALUES (14,18);
INSERT INTO `sample_workers` VALUES (15,18);
INSERT INTO `sample_workers` VALUES (16,18);
INSERT INTO `sample_workers` VALUES (45,18);
INSERT INTO `sample_workers` VALUES (46,18);
INSERT INTO `sample_workers` VALUES (47,18);
INSERT INTO `sample_workers` VALUES (48,18);
INSERT INTO `sample_workers` VALUES (49,18);
INSERT INTO `sample_workers` VALUES (50,18);
INSERT INTO `sample_workers` VALUES (75,18);
INSERT INTO `sample_workers` VALUES (76,18);
INSERT INTO `sample_workers` VALUES (77,18);
INSERT INTO `sample_workers` VALUES (78,18);
INSERT INTO `sample_workers` VALUES (79,18);
INSERT INTO `sample_workers` VALUES (80,18);
INSERT INTO `sample_workers` VALUES (99,18);
INSERT INTO `sample_workers` VALUES (100,18);
INSERT INTO `sample_workers` VALUES (101,18);
INSERT INTO `sample_workers` VALUES (102,18);
INSERT INTO `sample_workers` VALUES (103,18);
INSERT INTO `sample_workers` VALUES (104,18);
INSERT INTO `sample_workers` VALUES (195,18);
INSERT INTO `sample_workers` VALUES (196,18);
INSERT INTO `sample_workers` VALUES (197,18);
INSERT INTO `sample_workers` VALUES (198,18);
INSERT INTO `sample_workers` VALUES (199,18);
INSERT INTO `sample_workers` VALUES (200,18);
INSERT INTO `sample_workers` VALUES (1,19);
INSERT INTO `sample_workers` VALUES (2,19);
INSERT INTO `sample_workers` VALUES (3,19);
INSERT INTO `sample_workers` VALUES (4,19);
INSERT INTO `sample_workers` VALUES (5,19);
INSERT INTO `sample_workers` VALUES (6,19);
INSERT INTO `sample_workers` VALUES (33,19);
INSERT INTO `sample_workers` VALUES (34,19);
INSERT INTO `sample_workers` VALUES (35,19);
INSERT INTO `sample_workers` VALUES (36,19);
INSERT INTO `sample_workers` VALUES (37,19);
INSERT INTO `sample_workers` VALUES (38,19);
INSERT INTO `sample_workers` VALUES (45,19);
INSERT INTO `sample_workers` VALUES (46,19);
INSERT INTO `sample_workers` VALUES (47,19);
INSERT INTO `sample_workers` VALUES (48,19);
INSERT INTO `sample_workers` VALUES (49,19);
INSERT INTO `sample_workers` VALUES (50,19);
INSERT INTO `sample_workers` VALUES (1,20);
INSERT INTO `sample_workers` VALUES (2,20);
INSERT INTO `sample_workers` VALUES (3,20);
INSERT INTO `sample_workers` VALUES (4,20);
INSERT INTO `sample_workers` VALUES (5,20);
INSERT INTO `sample_workers` VALUES (6,20);
INSERT INTO `sample_workers` VALUES (23,20);
INSERT INTO `sample_workers` VALUES (24,20);
INSERT INTO `sample_workers` VALUES (25,20);
INSERT INTO `sample_workers` VALUES (26,20);
INSERT INTO `sample_workers` VALUES (27,20);
INSERT INTO `sample_workers` VALUES (28,20);
INSERT INTO `sample_workers` VALUES (33,20);
INSERT INTO `sample_workers` VALUES (34,20);
INSERT INTO `sample_workers` VALUES (35,20);
INSERT INTO `sample_workers` VALUES (36,20);
INSERT INTO `sample_workers` VALUES (37,20);
INSERT INTO `sample_workers` VALUES (38,20);
INSERT INTO `sample_workers` VALUES (57,20);
INSERT INTO `sample_workers` VALUES (58,20);
INSERT INTO `sample_workers` VALUES (59,20);
INSERT INTO `sample_workers` VALUES (60,20);
INSERT INTO `sample_workers` VALUES (61,20);
INSERT INTO `sample_workers` VALUES (62,20);
INSERT INTO `sample_workers` VALUES (11,21);
INSERT INTO `sample_workers` VALUES (12,21);
INSERT INTO `sample_workers` VALUES (13,21);
INSERT INTO `sample_workers` VALUES (14,21);
INSERT INTO `sample_workers` VALUES (15,21);
INSERT INTO `sample_workers` VALUES (16,21);
INSERT INTO `sample_workers` VALUES (23,21);
INSERT INTO `sample_workers` VALUES (24,21);
INSERT INTO `sample_workers` VALUES (25,21);
INSERT INTO `sample_workers` VALUES (26,21);
INSERT INTO `sample_workers` VALUES (27,21);
INSERT INTO `sample_workers` VALUES (28,21);
INSERT INTO `sample_workers` VALUES (33,21);
INSERT INTO `sample_workers` VALUES (34,21);
INSERT INTO `sample_workers` VALUES (35,21);
INSERT INTO `sample_workers` VALUES (36,21);
INSERT INTO `sample_workers` VALUES (37,21);
INSERT INTO `sample_workers` VALUES (38,21);
INSERT INTO `sample_workers` VALUES (57,21);
INSERT INTO `sample_workers` VALUES (58,21);
INSERT INTO `sample_workers` VALUES (59,21);
INSERT INTO `sample_workers` VALUES (60,21);
INSERT INTO `sample_workers` VALUES (61,21);
INSERT INTO `sample_workers` VALUES (62,21);
INSERT INTO `sample_workers` VALUES (11,22);
INSERT INTO `sample_workers` VALUES (12,22);
INSERT INTO `sample_workers` VALUES (13,22);
INSERT INTO `sample_workers` VALUES (14,22);
INSERT INTO `sample_workers` VALUES (15,22);
INSERT INTO `sample_workers` VALUES (16,22);
INSERT INTO `sample_workers` VALUES (23,22);
INSERT INTO `sample_workers` VALUES (24,22);
INSERT INTO `sample_workers` VALUES (25,22);
INSERT INTO `sample_workers` VALUES (26,22);
INSERT INTO `sample_workers` VALUES (27,22);
INSERT INTO `sample_workers` VALUES (28,22);
INSERT INTO `sample_workers` VALUES (45,22);
INSERT INTO `sample_workers` VALUES (46,22);
INSERT INTO `sample_workers` VALUES (47,22);
INSERT INTO `sample_workers` VALUES (48,22);
INSERT INTO `sample_workers` VALUES (49,22);
INSERT INTO `sample_workers` VALUES (50,22);
INSERT INTO `sample_workers` VALUES (57,22);
INSERT INTO `sample_workers` VALUES (58,22);
INSERT INTO `sample_workers` VALUES (59,22);
INSERT INTO `sample_workers` VALUES (60,22);
INSERT INTO `sample_workers` VALUES (61,22);
INSERT INTO `sample_workers` VALUES (62,22);
INSERT INTO `sample_workers` VALUES (7,23);
INSERT INTO `sample_workers` VALUES (8,23);
INSERT INTO `sample_workers` VALUES (9,23);
INSERT INTO `sample_workers` VALUES (10,23);
INSERT INTO `sample_workers` VALUES (29,23);
INSERT INTO `sample_workers` VALUES (30,23);
INSERT INTO `sample_workers` VALUES (31,23);
INSERT INTO `sample_workers` VALUES (32,23);
INSERT INTO `sample_workers` VALUES (51,23);
INSERT INTO `sample_workers` VALUES (52,23);
INSERT INTO `sample_workers` VALUES (53,23);
INSERT INTO `sample_workers` VALUES (54,23);
INSERT INTO `sample_workers` VALUES (55,23);
INSERT INTO `sample_workers` VALUES (56,23);
INSERT INTO `sample_workers` VALUES (63,23);
INSERT INTO `sample_workers` VALUES (64,23);
INSERT INTO `sample_workers` VALUES (65,23);
INSERT INTO `sample_workers` VALUES (66,23);
INSERT INTO `sample_workers` VALUES (67,23);
INSERT INTO `sample_workers` VALUES (68,23);
INSERT INTO `sample_workers` VALUES (7,24);
INSERT INTO `sample_workers` VALUES (8,24);
INSERT INTO `sample_workers` VALUES (9,24);
INSERT INTO `sample_workers` VALUES (10,24);
INSERT INTO `sample_workers` VALUES (17,24);
INSERT INTO `sample_workers` VALUES (18,24);
INSERT INTO `sample_workers` VALUES (19,24);
INSERT INTO `sample_workers` VALUES (20,24);
INSERT INTO `sample_workers` VALUES (21,24);
INSERT INTO `sample_workers` VALUES (22,24);
INSERT INTO `sample_workers` VALUES (29,24);
INSERT INTO `sample_workers` VALUES (30,24);
INSERT INTO `sample_workers` VALUES (31,24);
INSERT INTO `sample_workers` VALUES (32,24);
INSERT INTO `sample_workers` VALUES (39,24);
INSERT INTO `sample_workers` VALUES (40,24);
INSERT INTO `sample_workers` VALUES (41,24);
INSERT INTO `sample_workers` VALUES (42,24);
INSERT INTO `sample_workers` VALUES (43,24);
INSERT INTO `sample_workers` VALUES (44,24);
INSERT INTO `sample_workers` VALUES (7,25);
INSERT INTO `sample_workers` VALUES (8,25);
INSERT INTO `sample_workers` VALUES (9,25);
INSERT INTO `sample_workers` VALUES (10,25);
INSERT INTO `sample_workers` VALUES (17,25);
INSERT INTO `sample_workers` VALUES (18,25);
INSERT INTO `sample_workers` VALUES (19,25);
INSERT INTO `sample_workers` VALUES (20,25);
INSERT INTO `sample_workers` VALUES (21,25);
INSERT INTO `sample_workers` VALUES (22,25);
INSERT INTO `sample_workers` VALUES (29,25);
INSERT INTO `sample_workers` VALUES (30,25);
INSERT INTO `sample_workers` VALUES (31,25);
INSERT INTO `sample_workers` VALUES (32,25);
INSERT INTO `sample_workers` VALUES (39,25);
INSERT INTO `sample_workers` VALUES (40,25);
INSERT INTO `sample_workers` VALUES (41,25);
INSERT INTO `sample_workers` VALUES (42,25);
INSERT INTO `sample_workers` VALUES (43,25);
INSERT INTO `sample_workers` VALUES (44,25);
INSERT INTO `sample_workers` VALUES (51,25);
INSERT INTO `sample_workers` VALUES (52,25);
INSERT INTO `sample_workers` VALUES (53,25);
INSERT INTO `sample_workers` VALUES (54,25);
INSERT INTO `sample_workers` VALUES (55,25);
INSERT INTO `sample_workers` VALUES (56,25);
INSERT INTO `sample_workers` VALUES (17,26);
INSERT INTO `sample_workers` VALUES (18,26);
INSERT INTO `sample_workers` VALUES (19,26);
INSERT INTO `sample_workers` VALUES (20,26);
INSERT INTO `sample_workers` VALUES (21,26);
INSERT INTO `sample_workers` VALUES (22,26);
INSERT INTO `sample_workers` VALUES (39,26);
INSERT INTO `sample_workers` VALUES (40,26);
INSERT INTO `sample_workers` VALUES (41,26);
INSERT INTO `sample_workers` VALUES (42,26);
INSERT INTO `sample_workers` VALUES (43,26);
INSERT INTO `sample_workers` VALUES (44,26);
INSERT INTO `sample_workers` VALUES (51,26);
INSERT INTO `sample_workers` VALUES (52,26);
INSERT INTO `sample_workers` VALUES (53,26);
INSERT INTO `sample_workers` VALUES (54,26);
INSERT INTO `sample_workers` VALUES (55,26);
INSERT INTO `sample_workers` VALUES (56,26);
INSERT INTO `sample_workers` VALUES (63,26);
INSERT INTO `sample_workers` VALUES (64,26);
INSERT INTO `sample_workers` VALUES (65,26);
INSERT INTO `sample_workers` VALUES (66,26);
INSERT INTO `sample_workers` VALUES (67,26);
INSERT INTO `sample_workers` VALUES (68,26);
INSERT INTO `sample_workers` VALUES (123,27);
INSERT INTO `sample_workers` VALUES (124,27);
INSERT INTO `sample_workers` VALUES (125,27);
INSERT INTO `sample_workers` VALUES (126,27);
INSERT INTO `sample_workers` VALUES (127,27);
INSERT INTO `sample_workers` VALUES (128,27);
INSERT INTO `sample_workers` VALUES (147,27);
INSERT INTO `sample_workers` VALUES (148,27);
INSERT INTO `sample_workers` VALUES (149,27);
INSERT INTO `sample_workers` VALUES (150,27);
INSERT INTO `sample_workers` VALUES (151,27);
INSERT INTO `sample_workers` VALUES (152,27);
INSERT INTO `sample_workers` VALUES (171,27);
INSERT INTO `sample_workers` VALUES (172,27);
INSERT INTO `sample_workers` VALUES (173,27);
INSERT INTO `sample_workers` VALUES (174,27);
INSERT INTO `sample_workers` VALUES (175,27);
INSERT INTO `sample_workers` VALUES (176,27);
INSERT INTO `sample_workers` VALUES (195,27);
INSERT INTO `sample_workers` VALUES (196,27);
INSERT INTO `sample_workers` VALUES (197,27);
INSERT INTO `sample_workers` VALUES (198,27);
INSERT INTO `sample_workers` VALUES (199,27);
INSERT INTO `sample_workers` VALUES (200,27);
INSERT INTO `sample_workers` VALUES (135,28);
INSERT INTO `sample_workers` VALUES (136,28);
INSERT INTO `sample_workers` VALUES (137,28);
INSERT INTO `sample_workers` VALUES (138,28);
INSERT INTO `sample_workers` VALUES (139,28);
INSERT INTO `sample_workers` VALUES (140,28);
INSERT INTO `sample_workers` VALUES (159,28);
INSERT INTO `sample_workers` VALUES (160,28);
INSERT INTO `sample_workers` VALUES (161,28);
INSERT INTO `sample_workers` VALUES (162,28);
INSERT INTO `sample_workers` VALUES (163,28);
INSERT INTO `sample_workers` VALUES (164,28);
INSERT INTO `sample_workers` VALUES (207,28);
INSERT INTO `sample_workers` VALUES (208,28);
INSERT INTO `sample_workers` VALUES (209,28);
INSERT INTO `sample_workers` VALUES (210,28);
INSERT INTO `sample_workers` VALUES (211,28);
INSERT INTO `sample_workers` VALUES (212,28);
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
  `temperature` float DEFAULT NULL COMMENT 'Units: degrees C',
  `salinity` float DEFAULT NULL COMMENT 'Units: ppt (parts per thousand)',
  `dissolved_oxygen` float DEFAULT NULL COMMENT 'Units: mg/L (milligrams per liter)',
  `dissolved_oxygen_pct` float DEFAULT NULL COMMENT 'This is the dissolved oxygen percent saturation. Units: %',
  `ph` float DEFAULT NULL,
  `turbidity_1` float DEFAULT NULL COMMENT 'Units: NTU (Nephelometric Turbidity Unit)',
  `turbidity_2` float DEFAULT NULL,
  `turbidity_3` float DEFAULT NULL,
  `total_nitrogen` float DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `total_phosphorus` float DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `phosphate` float DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `nitrates` float DEFAULT NULL COMMENT 'Units: micrograms per liter',
  `ammonia` float DEFAULT NULL COMMENT 'Units: micrograms per liter',
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samples`
--

LOCK TABLES `samples` WRITE;
/*!40000 ALTER TABLE `samples` DISABLE KEYS */;
INSERT INTO `samples` VALUES (1,25,'2017-11-07 08:20:00',19,162,1,26.1,33.7,5.47,81.5,8.19,8.31,7.7,8.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (2,26,'2017-11-07 09:05:00',19,162,1,26.8,34.7,5.97,90.5,8.22,5.14,5.12,5.25,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (3,27,'2017-11-07 09:27:00',19,162,1,27,34.8,6.26,95.2,8.22,8.88,8.32,8.21,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (4,28,'2017-11-07 09:55:00',19,162,1,26.9,34.3,6.24,94.5,8.24,1.31,0.98,1.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (5,29,'2017-11-07 10:23:00',19,162,1,27.7,35,6.44,98.7,8.27,0.97,0.91,1.11,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (6,30,'2017-11-07 10:50:00',19,162,1,28,35.6,6.36,98.9,8.26,1.1,1.43,1.22,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (7,31,'2017-11-08 08:30:00',20,162,1,26.7,35.2,6.45,97.8,8.26,1.41,1.48,1.44,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (8,32,'2017-11-08 08:52:00',20,162,1,26.9,35.4,6.43,98.1,8.28,0.6,0.61,0.64,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (9,33,'2017-11-08 09:27:00',20,162,1,26.8,35.5,6.07,92.5,8.19,1.13,1.11,1.22,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (10,34,'2017-11-08 09:57:00',20,162,1,26.7,35.4,6.55,99.5,8.26,0.71,0.71,0.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (11,25,'2017-11-21 08:05:00',5,162,2,23.6,33.6,5.97,85.4,8.13,11.1,11.3,11.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (12,26,'2017-11-21 08:34:00',5,162,2,24.4,34.9,6.27,91.6,8.24,3.11,3.65,3.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (13,27,'2017-11-21 09:00:00',5,162,2,23.7,34.8,6.56,94.8,8.2,3.5,3.33,3.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (14,28,'2017-11-21 09:20:00',5,162,2,25.3,34.2,6.41,94.7,8.17,1.12,0.85,0.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (15,29,'2017-11-21 09:34:00',5,162,2,25.7,35.6,6.58,98.4,8.22,0.69,0.79,0.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (16,30,'2017-11-21 10:04:00',5,162,2,25.7,36.1,6.5,97.7,8.21,0.45,0.55,0.49,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (17,31,'2017-11-22 08:05:00',6,162,2,25.5,36.1,6.47,96.7,8.24,0.56,0.58,0.54,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (18,32,'2017-11-22 08:40:00',6,162,2,25.4,36.2,6.58,98.3,8.24,0.52,0.53,0.49,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (19,33,'2017-11-22 09:10:00',6,162,2,25.6,36.1,6.78,101.5,8.25,1.95,2.01,2.04,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (20,34,'2017-11-22 09:30:00',6,162,2,26.1,35.9,6.59,99.3,8.25,0.44,0.43,0.44,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (21,35,'2017-11-22 10:15:00',6,162,2,25.7,36.1,7.17,107.5,8.28,0.6,0.69,0.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (22,36,'2017-11-22 10:40:00',6,162,2,25.5,35.6,6.85,102.3,8.27,0.84,1.09,0.84,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (23,25,'2017-12-05 08:05:00',18,162,3,23.2,33.2,6.48,91.5,8.13,7.91,7.71,7.79,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (24,26,'2017-12-05 08:40:00',18,162,3,23.7,33.7,6.33,90.7,8.15,5.95,5.53,5.81,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (25,27,'2017-12-05 09:00:00',18,162,3,23.2,34.5,6.46,91.8,8.16,5.79,6.95,6.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (26,28,'2017-12-05 09:20:00',18,162,3,24.2,33.3,6.33,91,8.13,1.88,1.98,2.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (27,29,'2017-12-05 09:40:00',18,162,3,24.3,35.2,8.14,97,8.19,2.09,2.07,2.02,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (28,30,'2017-12-05 10:00:00',18,162,3,24.7,35.6,6.67,98.1,8.19,0.62,0.55,0.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (29,31,'2017-12-06 08:05:00',19,162,3,23.9,35.4,6.62,95.4,8.18,0.56,0.51,0.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (30,32,'2017-12-06 08:30:00',19,162,3,24.2,35.6,6.6,96,8.2,0.7,0.64,0.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (31,35,'2017-12-06 09:05:00',19,162,3,24.2,35.5,6.88,100.1,8.12,1.19,1.34,1.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (32,36,'2017-12-06 09:35:00',19,162,3,24.8,35.8,6.73,99,8.2,0.7,0.75,0.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (33,25,'2017-12-19 08:13:00',3,162,4,24.5,34.4,6.47,94.4,8.08,20.1,20.7,19.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (34,26,'2017-12-19 08:35:00',3,162,4,25.1,34,6.04,88.9,8.12,7.32,7.37,7.28,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (35,27,'2017-12-19 08:50:00',3,162,4,25,34.4,6.44,94.8,8.14,4.99,5.53,5.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (36,28,'2017-12-19 09:05:00',3,162,4,25.2,32.3,6.22,90.7,8.12,3.37,4.06,3.74,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (37,29,'2017-12-19 09:29:00',3,162,4,25.2,34.9,6.64,98.4,8.2,1.72,1.2,1.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (38,30,'2017-12-19 09:45:00',3,162,4,25.4,35.1,6.58,98,8.18,0.69,0.65,0.92,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (39,31,'2017-12-20 08:05:00',3,162,4,24.5,35.4,6.71,98.6,8.31,1.11,1.46,1.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (40,32,'2017-12-20 08:30:00',3,162,4,24.4,35.3,6.75,99,8.3,0.84,0.92,1.05,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (41,33,'2017-12-20 08:55:00',3,162,4,24.5,35.3,6.74,98.9,8.28,1.67,2,1.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (42,34,'2017-12-20 09:17:00',3,162,4,24.7,35.4,6.68,98.3,8.31,0.55,0.59,0.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (43,35,'2017-12-20 09:36:00',3,162,4,24.4,35.2,6.37,93.4,8.17,0.72,0.76,0.87,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (44,36,'2017-12-20 09:56:00',3,162,4,24.4,34.3,6.56,95.5,8.16,0.88,0.93,0.97,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (45,25,'2018-01-09 08:07:00',23,162,5,22.4,33.4,6.71,93.3,8.12,21.1,22.1,20.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (46,26,'2018-01-09 08:35:00',23,162,5,23.2,33.8,6.61,93.9,8.12,7.95,9,8.17,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (47,27,'2018-01-09 08:50:00',23,162,5,23.8,34.9,6.71,96.9,8.15,20.1,21.3,19.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (48,28,'2018-01-09 09:20:00',23,162,5,24.5,31.4,6.57,94,8.12,4.9,3.76,4.39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (49,29,'2018-01-09 09:35:00',23,162,5,25.2,35.1,8.72,99.2,8.18,2.05,1.8,1.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (50,30,'2018-01-09 09:51:00',23,162,5,25,35.1,6.7,98.9,8.18,1,0.95,0.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (51,31,'2018-01-10 07:59:00',24,162,5,23.8,34.5,6.63,95,8.17,1.93,2.08,1.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (52,32,'2018-01-10 08:25:00',24,162,5,23.9,34.8,6.87,99,8.16,1.39,1.99,1.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (53,33,'2018-01-10 08:52:00',24,162,5,24.3,34.9,6.81,98.7,8.13,2.39,2.13,2.16,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (54,34,'2018-01-10 09:15:00',24,162,5,24.6,35.3,6.72,98.2,8.2,0.44,0.46,0.44,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (55,35,'2018-01-10 09:45:00',24,162,5,24.7,35.1,7.11,104.1,8.1,0.86,0.8,0.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (56,36,'2018-01-10 10:10:00',24,162,5,24.5,35.2,6.67,97.3,8.1,0.57,0.56,0.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (57,25,'2018-01-23 07:55:00',8,162,6,23.3,35.2,6.53,93.4,8.08,23.5,25.2,25.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (58,26,'2018-01-23 08:21:00',8,162,6,23.4,33.8,6.26,89.1,8.13,10.1,11.3,10.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (59,27,'2018-01-23 08:35:00',8,162,6,23.9,35.2,6.76,97.7,8.15,11.1,11.3,10.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (60,28,'2018-01-23 09:00:00',8,162,6,24.4,34,6.7,97.1,8.13,7.83,8.08,7.91,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (61,29,'2018-01-23 09:15:00',8,162,6,24.9,35.5,6.69,98.7,8.18,2.98,2.88,3.04,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (62,30,'2018-01-23 09:30:00',8,162,6,24.6,35.7,6.67,98.3,8.17,1.29,1.13,1.25,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (63,31,'2018-01-24 08:00:00',9,162,6,24.4,35.4,6.67,99.6,8.17,1.18,1.23,1.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (64,32,'2018-01-24 08:31:00',9,162,6,24.5,35.7,6.84,100.7,8.19,1.03,1.14,1.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (65,33,'2018-01-24 08:58:00',9,162,6,24.4,35.6,6.79,99.5,8.13,3.54,3.34,3.63,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (66,34,'2018-01-24 09:22:00',9,162,6,24.8,35.8,6.72,99.2,8.19,0.52,0.58,0.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (67,35,'2018-01-24 09:50:00',9,162,6,24.9,35.5,7.21,106.6,8.14,0.68,0.61,0.78,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (68,36,'2018-01-24 09:55:00',9,162,6,24.8,35.3,6.68,98.5,8.13,0.97,0.83,0.96,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (69,13,'2017-10-05 07:10:00',15,162,7,26,34.7,5.8,87,8.1,3.05,2.57,2.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (70,14,'2017-10-05 07:35:00',15,162,7,26,34.6,6.19,92.6,8.07,6.71,6.81,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (71,15,'2017-10-05 07:52:00',15,162,7,25.7,34.5,5.99,89.1,8.02,7.95,7.79,7.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (72,16,'2017-10-05 08:13:00',15,162,7,25.7,34.6,6.61,98.4,8.12,10.5,10.6,10.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (73,17,'2017-10-05 08:25:00',15,162,7,25.9,34.6,6.85,102.2,8.15,7.56,8.04,8.11,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (74,18,'2017-10-05 08:38:00',15,162,7,26.3,34.2,6.71,100.6,8.13,3.64,3.48,3.13,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (75,7,'2017-10-04 08:20:00',14,162,7,27.6,34,5.54,84.9,8.04,10.1,10.3,10.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (76,8,'2017-10-04 08:40:00',14,162,7,27.8,33.8,5.64,86.7,8.03,4.04,4.14,4.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (77,9,'2017-10-04 09:00:00',14,162,7,29.3,33.7,5.67,87.7,8.05,3.29,4.3,4.79,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (78,10,'2017-10-04 09:25:00',14,162,7,28.1,34.5,6.46,100.1,8.18,2.24,2.65,2.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (79,11,'2017-10-04 09:42:00',14,162,7,28.4,34.6,6.52,101.4,8.14,1.51,1.94,1.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (80,12,'2017-10-04 10:10:00',14,162,7,27.9,34.6,6.81,105.3,8.15,1.02,1.43,1.23,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (81,19,'2017-10-06 07:56:00',17,162,7,25.3,33.7,6.32,93.2,8.1,37.2,37.9,40.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (82,20,'2017-10-06 08:40:00',17,162,7,26.4,34.1,6.64,99.9,8.16,2.65,1.82,2.26,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (83,21,'2017-10-06 09:15:00',17,162,7,27,34.6,6.6,100.9,8.19,0.65,0.65,0.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (84,22,'2017-10-06 09:35:00',17,162,7,26.9,33.4,6.81,103,8.16,3.36,2.7,3.04,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (85,23,'2017-10-06 09:55:00',17,162,7,26.4,33.7,6.62,99.5,8.11,14,13.6,12.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (86,24,'2017-10-06 10:15:00',17,162,7,27.9,34.7,7.24,112.1,8.33,3.94,4.63,4.45,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (87,1,'2017-10-03 08:14:00',14,162,7,27,33.7,6.59,101,8.14,2.33,2.48,2.51,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (88,2,'2017-10-03 08:40:00',14,162,7,26.8,32.4,6.29,94.6,8.15,3.15,3.46,5.79,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (89,3,'2017-10-03 08:58:00',14,162,7,27.1,34.2,6.41,97.8,8.11,3.05,3.22,3.39,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (90,4,'2017-10-03 09:16:00',14,162,7,27.9,34,6.49,100,8.19,0.5,0.79,0.67,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (91,5,'2017-10-03 09:36:00',14,162,7,28,33.3,6.59,101.3,8.19,0.5,6.58,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (92,6,'2017-10-03 09:52:00',14,162,7,27.6,33.4,6.52,99.8,8.2,0.5,0.5,0.49,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (93,13,'2017-10-26 07:01:00',6,162,8,26,34.7,5.78,86.6,7.96,6.06,6.52,6.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (94,14,'2017-10-26 07:31:00',6,162,8,26.7,34.5,6.25,94.7,8.01,4.72,4.81,4.73,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (95,15,'2017-10-26 07:51:00',6,162,8,26.8,34.5,5.45,82.7,7.96,5.43,5.34,4.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (96,16,'2017-10-26 08:14:00',6,162,8,26.8,34.8,6.37,96.9,8.06,10.5,9.99,10.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (97,17,'2017-10-26 08:40:00',6,162,8,26.9,34.7,6.47,98.5,8.05,20,21.6,21.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (98,18,'2017-10-26 09:05:00',6,162,8,27,34.8,6.67,101.8,8.07,4.89,4.96,5.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (99,7,'2017-10-25 08:22:00',5,162,8,26.7,34.7,6.58,99.6,8.06,6.63,7.11,8.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (100,8,'2017-10-25 08:47:00',5,162,8,26.7,34.1,6.5,98.2,8.07,19.2,19.1,19.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (101,9,'2017-10-25 09:10:00',5,162,8,26.8,34.2,6.39,96.7,8.07,15,15.9,15.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (102,10,'2017-10-25 09:35:00',5,162,8,27.2,34.7,6.65,101.6,8.14,13,13.8,13.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (103,11,'2017-10-25 09:55:00',5,162,8,27.9,34.4,6.6,100.5,8.09,11.7,11.1,11.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (104,12,'2017-10-25 10:15:00',5,162,8,27.1,34.6,6.59,100.5,8.1,1.47,1.63,1.82,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (105,19,'2017-10-27 08:05:00',8,162,8,25.4,33,6.58,96.9,8.11,156,164,158,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (106,20,'2017-10-27 08:45:00',8,162,8,26.4,34.8,6.83,103.3,8.17,3.72,3.28,3.43,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (107,21,'2017-10-27 09:20:00',8,162,8,27,35,6.79,104.1,8.18,1.22,1.28,1.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (108,22,'2017-10-27 09:53:00',8,162,8,26.7,34.8,6.99,106.6,8.21,2.91,2.6,2.37,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (109,23,'2017-10-27 10:23:00',8,162,8,25.9,34.3,6.84,102.6,8.13,26.6,27,26.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (110,24,'2017-10-27 10:46:00',8,162,8,27.4,35,6.83,105.1,8.23,11.6,10.8,11.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (111,1,'2017-10-24 08:24:00',5,162,8,26.3,33.5,6.31,94.8,8.1,17.5,16.2,16.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (112,2,'2017-10-24 08:50:00',5,162,8,26.5,33.3,6.34,96.3,8.15,14.5,15.6,15.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (113,3,'2017-10-24 09:13:00',5,162,8,26.7,33.2,6.6,99.5,8.16,5.48,5.43,5.47,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (114,4,'2017-10-24 09:35:00',5,162,8,27,33.6,6.57,99.8,8.18,1.81,1.78,1.66,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (115,5,'2017-10-24 09:57:00',5,162,8,26.9,33.2,6.68,101.1,8.17,9.88,9.97,9.81,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (116,6,'2017-10-24 10:20:00',5,162,8,26.9,33.1,6.67,100.9,8.19,6.2,5.87,7.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (117,13,'2017-11-16 07:11:00',28,162,9,23.8,34.8,5.99,86.6,8.1,3.64,3.22,3.61,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (118,14,'2017-11-16 07:35:00',28,162,9,23.8,35.1,6.33,91.5,8.12,2.15,2.24,2.28,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (119,15,'2017-11-16 07:50:00',28,162,9,24,35,5.83,84.5,8.07,3.02,2.29,2.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (120,16,'2017-11-16 08:10:00',28,162,9,23.5,35,6.73,96.9,8.15,5.61,5.61,5.71,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (121,17,'2017-11-16 08:27:00',28,162,9,24.2,34.9,7.03,102.2,8.17,5.63,5.55,5.81,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (122,18,'2017-11-16 08:45:00',28,162,9,25,34.7,6.75,99.4,8.14,1.53,1.52,1.86,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (123,7,'2017-11-15 08:10:00',27,162,9,25.9,35.2,6.46,96.7,8.11,4.31,4.89,4.68,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (124,8,'2017-11-15 08:35:00',27,162,9,26,34.5,6.37,95.2,8.11,3.16,3.65,3.84,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (125,9,'2017-11-15 08:55:00',27,162,9,26.2,34.6,6.3,94.6,8.11,2.39,2.61,2.47,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (126,10,'2017-11-15 09:15:00',27,162,9,26.7,34.7,6.71,101.6,8.19,1.27,1.66,1.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (127,11,'2017-11-15 09:40:00',27,162,9,26.5,35,6.74,102,8.15,2.41,2.04,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (128,12,'2017-11-15 10:05:00',27,162,9,25.5,35,6.62,98.4,8.09,1.34,1.32,1.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (129,19,'2017-11-17 07:58:00',29,162,9,24.3,30.6,6.39,90.9,8.15,20.9,21.1,21.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (130,20,'2017-11-17 08:40:00',29,162,9,25.7,34.4,6.71,99.7,8.15,1.35,1.73,1.67,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (131,21,'2017-11-17 09:15:00',29,162,9,26,35,6.66,100.2,8.19,0.65,0.65,0.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (132,22,'2017-11-17 09:50:00',29,162,9,26.3,34.1,6.86,103.1,8.16,2.77,2.66,2.27,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (133,23,'2017-11-17 10:15:00',29,162,9,25.3,34,6.81,100.5,8.16,17.3,16.7,17.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (134,24,'2017-11-17 10:38:00',29,162,9,26.4,35,7.09,107.2,8.28,7.27,6.83,6.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (135,1,'2017-11-14 08:16:00',26,162,9,26,34.9,6.71,100.8,8.16,1.15,1.08,1.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (136,2,'2017-11-14 08:45:00',26,162,9,25.9,32.2,6.77,99.7,8.17,8.73,8.62,9.81,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (137,3,'2017-11-14 09:10:00',26,162,9,26.1,34.8,6.73,101,8.18,2.84,2.7,2.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (138,4,'2017-11-14 09:29:00',26,162,9,26.5,34.5,6.61,99.7,8.17,2.87,2.68,2.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (139,5,'2017-11-14 09:49:00',26,162,9,27.1,34.1,6.44,98,8.18,4.21,3.5,3.36,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (140,6,'2017-11-14 10:04:00',26,162,9,27.2,34.5,6.5,99.2,8.2,1.27,1.2,1.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (141,13,'2017-12-07 07:08:00',20,162,10,23.3,34.8,6.27,89.5,8.09,6.48,6.56,6.95,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (142,14,'2017-12-07 07:30:00',20,162,10,23.7,34.9,6.38,91.6,8.13,3.59,3.59,3.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (143,15,'2017-12-07 07:47:00',20,162,10,24.2,35,6.07,87.9,8.11,3.25,3.39,3.32,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (144,16,'2017-12-07 08:04:00',20,162,10,24.6,34.9,6.55,95.5,8.14,5.75,5.63,5.97,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (145,17,'2017-12-07 08:20:00',20,162,10,24.6,35,6.67,97.2,8.18,4.39,4.58,4.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (146,18,'2017-12-07 08:33:00',20,162,10,24.3,34.8,6.8,98.8,8.18,2.02,2.12,1.99,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (147,7,'2017-12-06 08:15:00',19,162,10,24.5,35,6.72,97.8,8.17,3.48,3.54,3.67,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (148,8,'2017-12-06 08:35:00',19,162,10,23.8,34.6,6.67,95.7,8.15,11.9,12,12.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (149,9,'2017-12-06 08:55:00',19,162,10,23.6,34.3,6.59,94.2,8.13,15.9,16.9,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (150,10,'2017-12-06 09:20:00',19,162,10,24.6,34.6,6.98,101.5,8.21,1.78,2.26,2.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (151,11,'2017-12-06 09:45:00',19,162,10,24.7,34.9,6.95,101.6,8.19,1.86,1.69,1.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (152,12,'2017-12-06 10:08:00',19,162,10,24.6,34.8,6.96,101.4,8.16,1.39,1.41,1.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (153,19,'2017-12-08 07:50:00',21,162,10,23.2,34.5,6.78,96.2,8.14,23.9,28.5,25.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (154,20,'2017-12-08 08:40:00',21,162,10,24.7,35.1,6.95,101.6,8.18,1.41,1.71,1.54,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (155,21,'2017-12-08 09:15:00',21,162,10,25.1,35.1,6.91,101.8,8.18,0.59,0.69,0.64,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (156,22,'2017-12-08 09:45:00',21,162,10,25.4,35.1,7.03,104,8.19,1.17,1.6,1.45,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (157,23,'2017-12-08 10:10:00',21,162,10,24.7,34.6,6.99,102,8.19,14.6,15.8,15.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (158,24,'2017-12-08 10:35:00',21,162,10,25.5,34.8,6.96,102.9,8.22,21.5,20.6,21.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (159,1,'2017-12-05 08:06:00',18,162,10,24.2,35.2,6.89,100,8.17,1.04,1.14,1.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (160,2,'2017-12-05 08:31:00',18,162,10,23.5,34.5,6.96,99.3,8.17,31.1,31.8,32.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (161,3,'2017-12-05 08:52:00',18,162,10,23.5,34,7.01,99.8,8.17,10.1,9.83,10.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (162,4,'2017-12-05 09:13:00',18,162,10,24.5,34.5,6.82,99,8.18,6.41,6.78,6.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (163,5,'2017-12-05 09:33:00',18,162,10,25.5,34.4,6.84,101,8.2,2.13,2.1,2.27,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (164,6,'2017-12-05 09:51:00',18,162,10,25.1,33.8,6.83,100,8.23,1.55,1.57,1.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (165,13,'2017-12-21 08:21:00',4,162,11,23.5,34.7,6.46,92.8,8.03,9.07,10.4,10.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (166,14,'2017-12-21 08:45:00',4,162,11,24.1,34.8,5.91,85.9,8.02,2.35,2.23,2.65,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (167,15,'2017-12-21 09:04:00',4,162,11,24.2,34.6,5.87,85.4,8,4.36,4.27,4.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (168,16,'2017-12-21 09:24:00',4,162,11,24.2,34.6,6.63,96.5,8.11,3.66,3.56,3.52,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (169,17,'2017-12-21 09:43:00',4,162,11,24.7,34.6,6.63,97.4,8.09,50,50.4,49.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (170,18,'2017-12-21 09:58:00',4,162,11,25,35.1,6.24,92.3,8.11,13.3,13.1,13.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (171,7,'2017-12-20 08:20:00',3,162,11,24,35.4,6.68,97.2,8.15,5.42,5.43,5.33,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (172,8,'2017-12-20 08:41:00',3,162,11,24.1,34.9,6.59,96,8.14,7.31,6.83,6.69,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (173,9,'2017-12-20 09:05:00',3,162,11,23.9,34.5,6.61,95.5,8.13,10.3,10,9.88,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (174,10,'2017-12-20 09:35:00',3,162,11,24.4,34.9,6.85,100.2,8.17,5.09,5.19,5.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (175,11,'2017-12-20 09:55:00',3,162,11,24.6,35,6.77,99.5,8.13,4.96,4.59,4.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (176,12,'2017-12-20 10:15:00',3,162,11,24.6,35,6.35,93.2,8.08,2.48,2.89,2.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (177,19,'2017-12-22 07:59:00',6,162,11,22.6,28.5,7.04,96.1,8.17,21.2,21.3,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (178,20,'2017-12-22 08:42:00',6,162,11,23.4,33.9,6.98,99.5,8.17,7.26,7.37,7.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (179,21,'2017-12-22 09:17:00',6,162,11,24,35.1,6.93,100.7,8.19,4.55,4.11,4.26,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (180,22,'2017-12-22 09:50:00',6,162,11,24.5,34.7,6.95,101.8,8.18,3.12,3.49,3.53,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (181,23,'2017-12-22 10:18:00',6,162,11,23.4,33.9,6.93,99.1,8.14,36.4,35.9,36.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (182,24,'2017-12-22 10:43:00',6,162,11,24.3,33.7,7.18,103.9,8.19,16.5,17,16.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (183,1,'2017-12-19 08:21:00',3,162,11,24.8,35.2,6.72,98.9,8.16,1.15,1.28,1.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (184,2,'2017-12-19 08:55:00',3,162,11,24.8,34,6.74,98.7,8.16,24.5,23.5,22.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (185,3,'2017-12-19 09:21:00',3,162,11,24.9,34.9,6.68,98.4,8.18,26.2,25.5,24.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (186,4,'2017-12-19 09:46:00',3,162,11,25.1,34.8,6.46,95.4,8.18,5.57,5,4.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (187,5,'2017-12-19 10:10:00',3,162,11,25.2,34.2,6.64,97.9,8.2,2.03,1.96,2.13,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (188,6,'2017-12-19 10:30:00',3,162,11,24.9,33.1,6.74,98.5,8.21,1.35,1.15,1.14,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (189,13,'2018-01-11 07:14:00',25,162,12,23.1,34.3,5.88,83.4,8.06,2.66,2.53,2.48,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (190,14,'2018-01-11 07:34:00',25,162,12,24.1,34.6,6.47,93.4,8.1,1.1,0.9,0.83,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (191,15,'2018-01-11 07:46:00',25,162,12,23.9,34.4,6.29,90.3,8.09,1.14,1.09,1.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (192,16,'2018-01-11 08:00:00',25,162,12,24.2,34.6,6.65,96,8.14,2.09,2.16,2.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (193,17,'2018-01-11 08:12:00',25,162,12,24.2,34.8,6.85,99.3,8.14,4.19,5.02,3.85,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (194,18,'2018-01-11 08:30:00',25,162,12,24.4,34.6,6.82,99,8.13,1.53,1.67,1.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (195,7,'2018-01-10 08:27:00',24,162,12,23.9,34.7,5.85,84.1,8.07,1.46,1.68,1.59,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (196,8,'2018-01-10 08:45:00',24,162,12,24,34.1,6.1,87.7,8.07,2.38,3,2.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (197,9,'2018-01-10 09:07:00',24,162,12,24,34.2,6.03,86.6,8.06,2.57,2.34,2.49,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (198,10,'2018-01-10 09:33:00',24,162,12,24.3,34.2,7.03,101.5,8.14,1.24,1.41,1.31,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (199,11,'2018-01-10 09:52:00',24,162,12,25,34.5,7.11,104,8.15,1.02,1.03,1.18,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (200,12,'2018-01-10 10:19:00',24,162,12,24.5,34.5,7.38,107.2,8.13,2.92,2.37,2.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (201,19,'2018-01-12 07:55:00',26,162,12,22.8,33.1,6.82,95.4,8.07,59.6,65.3,68.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (202,20,'2018-01-12 08:45:00',26,162,12,24,34.3,7.04,101.3,8.16,3.27,4.44,3.68,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (203,21,'2018-01-12 09:15:00',26,162,12,24.5,34.7,7.02,102.4,8.17,1.04,1,1.17,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (204,22,'2018-01-12 09:40:00',26,162,12,24.8,33.9,7.04,102.6,8.16,2.83,2.41,2.57,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (205,23,'2018-01-12 10:10:00',26,162,12,24.4,33.8,6.99,101.1,8.15,16.8,17.7,18.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (206,24,'2018-01-12 10:30:00',26,162,12,25.4,34.5,7.2,106.3,8.23,7.79,9.47,8.58,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (207,1,'2018-01-09 08:15:00',23,162,12,23.6,34,6.95,99.3,8.1,0.6,0.55,0.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (208,2,'2018-01-09 08:47:00',23,162,12,24.1,33.9,6.8,97.6,8.16,2.32,2.6,2.42,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (209,3,'2018-01-09 09:09:00',23,162,12,23.7,34.5,6.97,99.8,8.15,11.9,12.7,12.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (210,4,'2018-01-09 09:26:00',23,162,12,24.8,34.2,6.64,96.8,8.17,1.38,1.32,1.56,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (211,5,'2018-01-09 09:46:00',23,162,12,25,34.4,6.74,98.7,8.18,7.32,8.02,7.62,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samples` VALUES (212,6,'2018-01-09 10:03:00',23,162,12,24.9,33.5,6.99,101.6,8.2,1.98,2.06,2.02,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,2,1,'2017-11-07');
INSERT INTO `sessions` VALUES (2,2,2,'2017-11-21');
INSERT INTO `sessions` VALUES (3,2,3,'2017-12-05');
INSERT INTO `sessions` VALUES (4,2,4,'2017-12-19');
INSERT INTO `sessions` VALUES (5,2,5,'2018-01-09');
INSERT INTO `sessions` VALUES (6,2,6,'2018-01-23');
INSERT INTO `sessions` VALUES (7,1,28,'2017-10-03');
INSERT INTO `sessions` VALUES (8,1,29,'2017-10-24');
INSERT INTO `sessions` VALUES (9,1,30,'2017-11-14');
INSERT INTO `sessions` VALUES (10,1,31,'2017-12-05');
INSERT INTO `sessions` VALUES (11,1,32,'2017-12-19');
INSERT INTO `sessions` VALUES (12,1,33,'2018-01-09');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

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
  `lat` float NOT NULL,
  `lon` float NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,2006,'RNS','000723','Napili',1,1,2,1,20.9942,-156.667,1,NULL);
INSERT INTO `sites` VALUES (2,2010,'RPO','000724','Pohaku',1,1,2,2,20.9671,-156.681,1,NULL);
INSERT INTO `sites` VALUES (3,2071,'RKS',NULL,'Kaanapali Shores',1,1,2,3,20.9493,-156.691,1,NULL);
INSERT INTO `sites` VALUES (4,2017,'RAB','000695','Airport Beach',1,1,2,4,20.9367,-156.693,1,NULL);
INSERT INTO `sites` VALUES (5,2020,'RCB','000693','Canoe Beach',1,1,2,5,20.9103,-156.689,1,NULL);
INSERT INTO `sites` VALUES (6,2021,'RWA','000678','Wahikuli',1,1,2,6,20.9045,-156.686,1,NULL);
INSERT INTO `sites` VALUES (7,2022,'PFF',NULL,'505 Front Street',1,2,3,7,20.8673,-156.676,1,NULL);
INSERT INTO `sites` VALUES (8,2023,'PLH',NULL,'Lindsey Hale',1,2,3,8,20.8648,-156.674,1,NULL);
INSERT INTO `sites` VALUES (9,2024,'PLT','000726','Lahaina Town',1,2,3,9,20.8636,-156.673,1,NULL);
INSERT INTO `sites` VALUES (10,2025,'PPU',NULL,'Makila Point',1,2,3,10,20.8592,-156.669,1,NULL);
INSERT INTO `sites` VALUES (11,2072,'OLP',NULL,'Launiupoko',1,2,3,11,20.8424,-156.653,1,NULL);
INSERT INTO `sites` VALUES (12,2027,'OSF','000663','Olowalu Shore Front',1,2,3,12,20.8092,-156.623,1,NULL);
INSERT INTO `sites` VALUES (13,2073,'OPM',NULL,'Peter Martin Hale',1,3,4,13,20.8084,-156.62,1,NULL);
INSERT INTO `sites` VALUES (14,2028,'OCO',NULL,'Camp Olowalu',1,3,4,14,20.8099,-156.614,1,NULL);
INSERT INTO `sites` VALUES (15,2029,'OMM',NULL,'Mile Marker 14',1,3,4,15,20.8092,-156.607,1,NULL);
INSERT INTO `sites` VALUES (16,2032,'OUB','000698','Ukumehame Beach',1,3,4,16,20.7945,-156.581,1,NULL);
INSERT INTO `sites` VALUES (17,2033,'OPB','000728','Papalaua',1,3,4,17,20.7938,-156.575,1,NULL);
INSERT INTO `sites` VALUES (18,2034,'OPP',NULL,'Papalaua Pali',1,3,4,18,20.7927,-156.567,1,NULL);
INSERT INTO `sites` VALUES (19,2001,'RHL','000707','Honolua',1,4,5,19,21.0131,-156.638,1,NULL);
INSERT INTO `sites` VALUES (20,2002,'RMO','000721','Mokuleia',1,4,5,19,21.0114,-156.642,0,NULL);
INSERT INTO `sites` VALUES (21,2003,'RFN','000674','DT Beach (Fleming N)',1,4,5,20,21.005,-156.651,1,NULL);
INSERT INTO `sites` VALUES (22,2004,'RON','000722','Oneloa',1,4,5,21,21.0041,-156.659,1,NULL);
INSERT INTO `sites` VALUES (23,2005,'RFS','000650','Kapalua Bay (Fleming S)',1,4,5,22,20.9989,-156.667,1,NULL);
INSERT INTO `sites` VALUES (24,2008,'RKO','000692','Ka\'opala',1,4,5,23,20.9821,-156.673,1,NULL);
INSERT INTO `sites` VALUES (25,2074,'RKV',NULL,'Kahana Village',1,4,5,24,20.9766,-156.678,1,NULL);
INSERT INTO `sites` VALUES (26,9000,'KWP',NULL,'Waipuilani Park',2,5,1,1,1,1,1,NULL);
INSERT INTO `sites` VALUES (27,9001,'KKS',NULL,'Kihei South',2,5,1,2,1,1,1,NULL);
INSERT INTO `sites` VALUES (28,9002,'KKP',NULL,'Kalama Park',2,5,1,3,1,1,1,NULL);
INSERT INTO `sites` VALUES (29,9003,'KCP',NULL,'Cove Park',2,5,1,4,1,1,1,NULL);
INSERT INTO `sites` VALUES (30,9004,'KKO',NULL,'Kamaole Beach I',2,5,1,5,1,1,1,NULL);
INSERT INTO `sites` VALUES (31,9005,'KKT',NULL,'Kamaole Beach III',2,5,1,6,1,1,1,NULL);
INSERT INTO `sites` VALUES (32,9006,'MML',NULL,'Makena Landing',2,6,2,7,1,1,1,NULL);
INSERT INTO `sites` VALUES (33,9007,'MMB',NULL,'Maluaka Beach',2,6,2,8,1,1,1,NULL);
INSERT INTO `sites` VALUES (34,9008,'MON',NULL,'Oneuli',2,6,2,9,1,1,1,NULL);
INSERT INTO `sites` VALUES (35,9009,'MBS',NULL,'Makena Beach Shoreline',2,6,2,10,1,1,1,NULL);
INSERT INTO `sites` VALUES (36,9010,'MAN',NULL,'Ahihi North',2,6,2,11,1,1,1,NULL);
INSERT INTO `sites` VALUES (37,9011,'MAS',NULL,'Ahihi South',2,6,2,12,1,1,1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
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
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08  7:46:54
