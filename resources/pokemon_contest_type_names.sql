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
-- Table structure for table `contest_type_names`
--

DROP TABLE IF EXISTS `contest_type_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_type_names` (
  `contest_type_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `flavor` text,
  `color` text,
  PRIMARY KEY (`contest_type_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_contest_type_names_name` (`name`),
  CONSTRAINT `contest_type_names_ibfk_1` FOREIGN KEY (`contest_type_id`) REFERENCES `contest_types` (`id`),
  CONSTRAINT `contest_type_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_type_names`
--

LOCK TABLES `contest_type_names` WRITE;
/*!40000 ALTER TABLE `contest_type_names` DISABLE KEYS */;
INSERT INTO `contest_type_names` VALUES (1,5,'Sang-froid','Épicé','Rouge'),(1,9,'Cool','Spicy','Red'),(1,10,NULL,'Ostrá',NULL),(2,5,'Beauté','Sec','Bleu'),(2,9,'Beauty','Dry','Blue'),(2,10,'Krása','Suchá',NULL),(3,5,'Grâce','Sucré','Rose'),(3,9,'Cute','Sweet','Pink'),(4,5,'Intelligence','Amère','Vert'),(4,9,'Smart','Bitter','Green'),(5,5,'Robustesse','Acide','Jaune'),(5,9,'Tough','Sour','Yellow'),(5,10,'Síla',NULL,NULL);
/*!40000 ALTER TABLE `contest_type_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:14
