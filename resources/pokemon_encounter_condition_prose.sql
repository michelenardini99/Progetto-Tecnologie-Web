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
-- Table structure for table `encounter_condition_prose`
--

DROP TABLE IF EXISTS `encounter_condition_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encounter_condition_prose` (
  `encounter_condition_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`encounter_condition_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_encounter_condition_prose_name` (`name`),
  CONSTRAINT `encounter_condition_prose_ibfk_1` FOREIGN KEY (`encounter_condition_id`) REFERENCES `encounter_conditions` (`id`),
  CONSTRAINT `encounter_condition_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounter_condition_prose`
--

LOCK TABLES `encounter_condition_prose` WRITE;
/*!40000 ALTER TABLE `encounter_condition_prose` DISABLE KEYS */;
INSERT INTO `encounter_condition_prose` VALUES (2,10,'Denní doba'),(1,5,'Essaim'),(4,9,'Gen 3 game in slot 2'),(6,6,'Jahreszeit'),(4,5,'Jeu GBA dans le Slot 2'),(2,5,'Période horaire'),(3,5,'Poké Radar'),(3,6,'PokeRadar'),(3,9,'PokeRadar'),(3,10,'PokéRadar'),(5,5,'Radio'),(5,6,'Radio'),(5,9,'Radio'),(5,10,'Rádio'),(1,10,'Rojení'),(6,5,'Saison'),(1,6,'Schwarm'),(6,9,'Season'),(4,6,'Spiel der 3. Generation in Slot 2'),(1,9,'Swarm'),(2,6,'Tageszeit'),(2,9,'Time of day');
/*!40000 ALTER TABLE `encounter_condition_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:09
