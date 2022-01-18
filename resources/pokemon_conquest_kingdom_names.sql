-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: pokemon
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `conquest_kingdom_names`
--

DROP TABLE IF EXISTS `conquest_kingdom_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_kingdom_names` (
  `kingdom_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`kingdom_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_conquest_kingdom_names_name` (`name`),
  CONSTRAINT `conquest_kingdom_names_ibfk_1` FOREIGN KEY (`kingdom_id`) REFERENCES `conquest_kingdoms` (`id`),
  CONSTRAINT `conquest_kingdom_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_kingdom_names`
--

LOCK TABLES `conquest_kingdom_names` WRITE;
/*!40000 ALTER TABLE `conquest_kingdom_names` DISABLE KEYS */;
INSERT INTO `conquest_kingdom_names` VALUES (1,9,'Aurora'),(10,9,'Avia'),(12,9,'Chrysalia'),(13,9,'Cragspur'),(15,9,'Dragnor'),(3,9,'Fontaine'),(5,9,'Greenleaf'),(2,9,'Ignis'),(11,9,'Illusio'),(6,9,'Nixtorm'),(7,9,'Pugilis'),(14,9,'Spectra'),(9,9,'Terrera'),(17,9,'Valora'),(4,9,'Violight'),(8,9,'Viperia'),(16,9,'Yaksha');
/*!40000 ALTER TABLE `conquest_kingdom_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:13
