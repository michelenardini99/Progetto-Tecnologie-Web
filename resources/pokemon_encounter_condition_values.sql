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
-- Table structure for table `encounter_condition_values`
--

DROP TABLE IF EXISTS `encounter_condition_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encounter_condition_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `encounter_condition_id` int NOT NULL,
  `identifier` varchar(79) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `encounter_condition_id` (`encounter_condition_id`),
  CONSTRAINT `encounter_condition_values_ibfk_1` FOREIGN KEY (`encounter_condition_id`) REFERENCES `encounter_conditions` (`id`),
  CONSTRAINT `encounter_condition_values_chk_1` CHECK ((`is_default` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounter_condition_values`
--

LOCK TABLES `encounter_condition_values` WRITE;
/*!40000 ALTER TABLE `encounter_condition_values` DISABLE KEYS */;
INSERT INTO `encounter_condition_values` VALUES (1,1,'swarm-yes',0),(2,1,'swarm-no',1),(3,2,'time-morning',0),(4,2,'time-day',1),(5,2,'time-night',0),(6,3,'radar-on',0),(7,3,'radar-off',1),(8,4,'slot2-none',1),(9,4,'slot2-ruby',0),(10,4,'slot2-sapphire',0),(11,4,'slot2-emerald',0),(12,4,'slot2-firered',0),(13,4,'slot2-leafgreen',0),(14,5,'radio-off',1),(15,5,'radio-hoenn',0),(16,5,'radio-sinnoh',0),(17,6,'season-spring',0),(18,6,'season-summer',0),(19,6,'season-autumn',0),(20,6,'season-winter',0);
/*!40000 ALTER TABLE `encounter_condition_values` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:22
