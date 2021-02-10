-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: purple
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `appoinmentDetails`
--

DROP TABLE IF EXISTS `appoinmentDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appoinmentDetails` (
  `appoinmentId` int(11) NOT NULL AUTO_INCREMENT,
  `PatientsName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `PhoneNumber` varchar(99) DEFAULT NULL,
  `gender` varchar(99) DEFAULT NULL,
  `specialization` varchar(256) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `appoinmentdate` varchar(99) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`appoinmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoinmentDetails`
--

LOCK TABLES `appoinmentDetails` WRITE;
/*!40000 ALTER TABLE `appoinmentDetails` DISABLE KEYS */;
INSERT INTO `appoinmentDetails` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 21:51:47'),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 21:53:38'),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 21:54:30'),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 21:56:24'),(5,'suresh','m.sureshmca93@gmail.com','9500313689','male','skin','m.sureshmca93@gmail.com',NULL,'2018-05-26 23:17:54'),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 07:44:08'),(7,'suresh','m.sureshmca93@gmail.com','9500313689','male','skin','m.sureshmca93@gmail.com',NULL,'2018-05-27 13:24:06'),(8,'suresh','suresh.m@sastratechnologies.in','9500313689','male',NULL,NULL,NULL,'2018-05-27 13:38:39'),(9,'suresh','suresh.m@sastratechnologies.in','9500313689','male',NULL,NULL,NULL,'2018-05-27 14:05:57'),(10,'suresh','suresh.m@sastratechnologies.in','9500313689','male',NULL,NULL,NULL,'2018-05-27 14:07:02'),(11,'suresh','suresh.m@sastratechnologies.in','9500313689','male',NULL,NULL,NULL,'2018-05-27 14:08:33');
/*!40000 ALTER TABLE `appoinmentDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'suresh','m','m.sureshmca93@gmail.com','suresh@123','2018-05-21 16:30:54','2018-05-21 16:30:54'),(2,'suresh','m','sureshmca93@gmail.com','suresh@123','2018-05-21 16:50:42','2018-05-21 16:50:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-27 17:01:31
