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
-- Table structure for table `generation_names`
--

DROP TABLE IF EXISTS `generation_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generation_names` (
  `generation_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`generation_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_generation_names_name` (`name`),
  CONSTRAINT `generation_names_ibfk_1` FOREIGN KEY (`generation_id`) REFERENCES `generations` (`id`),
  CONSTRAINT `generation_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generation_names`
--

LOCK TABLES `generation_names` WRITE;
/*!40000 ALTER TABLE `generation_names` DISABLE KEYS */;
INSERT INTO `generation_names` VALUES (1,3,'1세대'),(2,3,'2세대'),(3,3,'3세대'),(4,3,'4세대'),(5,3,'5세대'),(6,3,'6세대'),(7,3,'7세대'),(1,7,'Generación I'),(2,7,'Generación II'),(3,7,'Generación III'),(4,7,'Generación IV'),(5,7,'Generación V'),(6,7,'Generación VI'),(7,7,'Generación VII'),(1,5,'Génération I'),(1,6,'Generation I'),(1,9,'Generation I'),(2,5,'Génération II'),(2,6,'Generation II'),(2,9,'Generation II'),(3,5,'Génération III'),(3,6,'Generation III'),(3,9,'Generation III'),(4,5,'Génération IV'),(4,6,'Generation IV'),(4,9,'Generation IV'),(5,5,'Génération V'),(5,6,'Generation V'),(5,9,'Generation V'),(6,5,'Génération VI'),(6,6,'Generation VI'),(6,9,'Generation VI'),(7,5,'Génération VII'),(7,6,'Generation VII'),(7,9,'Generation VII'),(8,9,'Generation VIII'),(1,10,'I. generace'),(2,10,'II. generace'),(3,10,'III. generace'),(4,10,'IV. generace'),(5,10,'V. generace'),(1,1,'だいいちせだい'),(5,1,'だいごせだい'),(3,1,'だいさんせだい'),(7,1,'だいななせだい'),(2,1,'だいにせだい'),(4,1,'だいよんせだい'),(6,1,'だいろくせだい'),(1,11,'第一世代'),(7,11,'第七世代'),(3,11,'第三世代'),(2,11,'第二世代'),(5,11,'第五世代'),(6,11,'第六世代'),(4,11,'第四世代');
/*!40000 ALTER TABLE `generation_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:23
