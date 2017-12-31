-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: extracurricular
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `student_event`
--

DROP TABLE IF EXISTS `student_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_event` (
  `Univ_ID` mediumint(8) unsigned NOT NULL,
  `Event_ID` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `student_event_combo` (`Univ_ID`,`Event_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `student_event_ibfk_1` FOREIGN KEY (`Univ_ID`) REFERENCES `students` (`Univ_ID`) ON UPDATE CASCADE,
  CONSTRAINT `student_event_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`Event_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_event`
--

LOCK TABLES `student_event` WRITE;
/*!40000 ALTER TABLE `student_event` DISABLE KEYS */;
INSERT INTO `student_event` VALUES (9001001,1001),(9001002,1001),(9001020,1001),(9001020,1002),(9001003,1003),(9001020,1003),(9001004,1004),(9001020,1004),(9001005,1005),(9001020,1005),(9001020,1006),(9001020,1008),(9001020,1009),(9001005,1010),(9001020,1010),(9001020,1011),(9001020,1012),(9001020,1013),(9001020,1014),(9001020,1015),(9001021,1015),(9001022,1015),(9001005,1016),(9001020,1016),(9001021,1016),(9001022,1016);
/*!40000 ALTER TABLE `student_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-28 16:16:02