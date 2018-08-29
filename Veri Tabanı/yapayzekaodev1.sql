CREATE DATABASE  IF NOT EXISTS `yapayzekaodev1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `yapayzekaodev1`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: yapayzekaodev1
-- ------------------------------------------------------
-- Server version	5.1.30-community

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
-- Table structure for table `veriler`
--

DROP TABLE IF EXISTS `veriler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veriler` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ates` varchar(45) NOT NULL,
  `oksuruk` varchar(45) NOT NULL,
  `agri` varchar(45) NOT NULL,
  `halsizlik` varchar(45) NOT NULL,
  `hasta` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veriler`
--

LOCK TABLES `veriler` WRITE;
/*!40000 ALTER TABLE `veriler` DISABLE KEYS */;
INSERT INTO `veriler` VALUES (84,'33 - 35    Dusuk','Hayir','Turp gibiyim','iyiyim','Hayir, Degilim'),(85,'33 - 35    Dusuk','Evet','Eh iste','iyiyim','Hayir, Degilim'),(86,'35 - 37    Normal','Hayir','Turp gibiyim','Geberiyom','Evet, Hastayim'),(87,'37 - 40    Yuksek','Hayir','Agri dagin eteginde....','Geberiyom','Evet, Hastayim'),(88,'37 - 40    Yuksek','Evet','Eh iste','iyiyim','Evet, Hastayim'),(89,'35 - 37    Normal','Evet','Agri dagin eteginde....','Geberiyom','Evet, Hastayim'),(90,'35 - 37    Normal','Hayir','Eh iste','iyiyim','Evet, Hastayim'),(91,'35 - 37    Normal','Evet','Eh iste','Geberiyom','Hayir, Degilim'),(92,'33 - 35    Dusuk','Hayir','Agri dagin eteginde....','iyiyim','Hayir, Degilim'),(93,'33 - 35    Dusuk','Hayir','Turp gibiyim','Geberiyom','Hayir, Degilim'),(94,'37 - 40    Yuksek','Hayir','Agri dagin eteginde....','Geberiyom','Evet, Hastayim'),(95,'37 - 40    Yuksek','Evet','Eh iste','iyiyim','Evet, Hastayim'),(96,'33 - 35    Dusuk','Evet','Eh iste','iyiyim','Hayir, Degilim'),(97,'35 - 37    Normal','Evet','Turp gibiyim','iyiyim','Hayir, Degilim'),(98,'37 - 40    Yuksek','Evet','Agri dagin eteginde....','Geberiyom','Hayir, Degilim');
/*!40000 ALTER TABLE `veriler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-26  0:22:11
