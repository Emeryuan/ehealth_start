-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ehealth
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `clinic assistant`
--

DROP TABLE IF EXISTS `clinic assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinic assistant` (
  `id` int(11) NOT NULL,
  `myp_name` varchar(8) DEFAULT NULL,
  `myp_date` datetime DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `myp_type` varchar(8) DEFAULT NULL,
  `myp_pill` varchar(10) DEFAULT NULL,
  `doctor_doctor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Clinic Assistant_doctor1_idx` (`doctor_doctor_id`),
  CONSTRAINT `fk_Clinic Assistant_doctor1` FOREIGN KEY (`doctor_doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic assistant`
--

LOCK TABLES `clinic assistant` WRITE;
/*!40000 ALTER TABLE `clinic assistant` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinic assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(20) DEFAULT NULL,
  `doctor_sex` varchar(2) DEFAULT NULL,
  `doctor_age` int(11) DEFAULT NULL,
  `doctor_phone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'张','女',29,'1234567890'),(2,'刘','女',20,'1234567890');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_medicine_record`
--

DROP TABLE IF EXISTS `my_medicine_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_medicine_record` (
  `mm_id` int(11) NOT NULL,
  `mm_time` datetime DEFAULT NULL,
  `mm_num` int(11) DEFAULT NULL,
  `patient_patient_id` int(11) NOT NULL,
  PRIMARY KEY (`mm_id`),
  KEY `fk_my_medicine_record_patient_idx` (`patient_patient_id`),
  CONSTRAINT `fk_my_medicine_record_patient` FOREIGN KEY (`patient_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_medicine_record`
--

LOCK TABLES `my_medicine_record` WRITE;
/*!40000 ALTER TABLE `my_medicine_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_medicine_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_parient`
--

DROP TABLE IF EXISTS `my_parient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_parient` (
  `myp_id` int(11) NOT NULL DEFAULT '0',
  `myp_name` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `myp_date` datetime DEFAULT NULL,
  `myp_group` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `myp_pill` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `doctor_doctor_id` int(11) NOT NULL,
  `myp_type` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `blood_sugar` int(11) DEFAULT NULL,
  `blood_fat` int(11) DEFAULT NULL,
  `myp_bmi` tinyint(3) DEFAULT NULL,
  `wpr` float DEFAULT NULL,
  PRIMARY KEY (`myp_id`),
  KEY `fk_my_parient_doctor1_idx` (`doctor_doctor_id`),
  CONSTRAINT `fk_my_parient_doctor1` FOREIGN KEY (`doctor_doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_parient`
--

LOCK TABLES `my_parient` WRITE;
/*!40000 ALTER TABLE `my_parient` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_parient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `patient_sex` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `patient_age` int(11) DEFAULT NULL,
  `patient_phone` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `patient_idcard` varchar(18) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_record`
--

DROP TABLE IF EXISTS `patient_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_record` (
  `re_id` int(11) NOT NULL,
  `re_date` datetime DEFAULT NULL,
  `re_height` tinyint(4) DEFAULT NULL,
  `re_weight` tinyint(4) DEFAULT NULL,
  `bloodpressure` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `gynaecology` text CHARACTER SET latin1,
  `thyroid` text CHARACTER SET latin1,
  `breast` text CHARACTER SET latin1,
  `medicine` text CHARACTER SET latin1,
  `demand` text CHARACTER SET latin1,
  `waist` tinyint(4) DEFAULT NULL,
  `hipline` tinyint(4) DEFAULT NULL,
  `my_medicine_record_mm_id` int(11) NOT NULL,
  `record_sheet_resheet_id` int(11) NOT NULL,
  PRIMARY KEY (`re_id`),
  KEY `fk_patient_record_my_medicine_record1_idx` (`my_medicine_record_mm_id`),
  KEY `fk_patient_record_record_sheet1_idx` (`record_sheet_resheet_id`),
  CONSTRAINT `fk_patient_record_my_medicine_record1` FOREIGN KEY (`my_medicine_record_mm_id`) REFERENCES `my_medicine_record` (`mm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_record_record_sheet1` FOREIGN KEY (`record_sheet_resheet_id`) REFERENCES `record_sheet` (`resheet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_record`
--

LOCK TABLES `patient_record` WRITE;
/*!40000 ALTER TABLE `patient_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_sheet`
--

DROP TABLE IF EXISTS `record_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_sheet` (
  `resheet_id` int(11) NOT NULL DEFAULT '0',
  `resheet_date` datetime DEFAULT NULL,
  `blood_sugar` int(11) DEFAULT NULL,
  `blood_fat` int(11) DEFAULT NULL,
  `my_parient_myp_id` int(11) NOT NULL,
  `myp_bmi` tinyint(3) DEFAULT NULL,
  `wpr` float DEFAULT NULL,
  `myp_pill` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`resheet_id`),
  KEY `fk_record_sheet_my_parient1_idx` (`my_parient_myp_id`),
  CONSTRAINT `fk_record_sheet_my_parient1` FOREIGN KEY (`my_parient_myp_id`) REFERENCES `my_parient` (`myp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_sheet`
--

LOCK TABLES `record_sheet` WRITE;
/*!40000 ALTER TABLE `record_sheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `record_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `d_p` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `birth` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-08 10:10:55
