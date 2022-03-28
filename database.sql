CREATE DATABASE  IF NOT EXISTS `darabase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `darabase`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: localhost    Database: darabase
-- ------------------------------------------------------
-- Server version	5.6.13-log

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
-- Table structure for table `billet`
--

DROP TABLE IF EXISTS `billet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billet` (
  `NumB` int(11) NOT NULL,
  `DateEmission` varchar(45) NOT NULL,
  `DateReservation` varchar(45) NOT NULL,
  `DatePaiment` varchar(45) NOT NULL,
  PRIMARY KEY (`NumB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billet`
--

LOCK TABLES `billet` WRITE;
/*!40000 ALTER TABLE `billet` DISABLE KEYS */;
INSERT INTO `billet` VALUES (1,'2','22','2'),(2,'45','787','2454');
/*!40000 ALTER TABLE `billet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chauffeur` (
  `Matricule` int(11) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `Permis` varchar(45) NOT NULL,
  PRIMARY KEY (`Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chauffeur`
--

LOCK TABLES `chauffeur` WRITE;
/*!40000 ALTER TABLE `chauffeur` DISABLE KEYS */;
INSERT INTO `chauffeur` VALUES (57,'mi','ra','A'),(1513,'rado','ke','C'),(2354,',k,','ffdyutr','esgtesty'),(4522,'rado','RAZ','D');
/*!40000 ALTER TABLE `chauffeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cooperative`
--

DROP TABLE IF EXISTS `cooperative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cooperative` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Siege` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooperative`
--

LOCK TABLES `cooperative` WRITE;
/*!40000 ALTER TABLE `cooperative` DISABLE KEYS */;
INSERT INTO `cooperative` VALUES (45,'ke','tsididy'),(45676,'ra','ora');
/*!40000 ALTER TABLE `cooperative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voiture` (
  `Matricule` int(11) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Modele` varchar(45) NOT NULL,
  `Places` int(11) NOT NULL,
  PRIMARY KEY (`Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voiture`
--

LOCK TABLES `voiture` WRITE;
/*!40000 ALTER TABLE `voiture` DISABLE KEYS */;
INSERT INTO `voiture` VALUES (2474534,'ftd','hdff',28);
/*!40000 ALTER TABLE `voiture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voyage`
--

DROP TABLE IF EXISTS `voyage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voyage` (
  `NumVoiture` int(11) NOT NULL,
  `Depart` varchar(45) NOT NULL,
  `Arrivee` varchar(45) NOT NULL,
  `VilleDepart` varchar(45) NOT NULL,
  `VilleArrivee` varchar(45) NOT NULL,
  PRIMARY KEY (`NumVoiture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voyage`
--

LOCK TABLES `voyage` WRITE;
/*!40000 ALTER TABLE `voyage` DISABLE KEYS */;
INSERT INTO `voyage` VALUES (2,'kigy','uityiu','utu','urtfu'),(4,'tyry','sqrqz','eaqre','kmkjm'),(5,'vfdsf','vsfe','fsf','dgsg'),(20,'4h','7h','tsididy','toliara'),(56,'jgjf','y','er','ests'),(100,'5h30','10h','tama','toliara'),(1023,'samedi 22/06/2022 à 14h30','20h le même jour','toliara','tamaga'),(1513,'2h am','3h pm','janga','tana');
/*!40000 ALTER TABLE `voyage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voyageur`
--

DROP TABLE IF EXISTS `voyageur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voyageur` (
  `NumeroUnique` int(11) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `DateNaissance` varchar(45) NOT NULL,
  `Statut` varchar(45) NOT NULL,
  PRIMARY KEY (`NumeroUnique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voyageur`
--

LOCK TABLES `voyageur` WRITE;
/*!40000 ALTER TABLE `voyageur` DISABLE KEYS */;
INSERT INTO `voyageur` VALUES (102789,'jao','02/2/2008','couple');
/*!40000 ALTER TABLE `voyageur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 11:01:35
