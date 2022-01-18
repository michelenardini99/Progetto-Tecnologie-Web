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
-- Table structure for table `encounter_condition_value_prose`
--

DROP TABLE IF EXISTS `encounter_condition_value_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encounter_condition_value_prose` (
  `encounter_condition_value_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`encounter_condition_value_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_encounter_condition_value_prose_name` (`name`),
  CONSTRAINT `encounter_condition_value_prose_ibfk_1` FOREIGN KEY (`encounter_condition_value_id`) REFERENCES `encounter_condition_values` (`id`),
  CONSTRAINT `encounter_condition_value_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounter_condition_value_prose`
--

LOCK TABLES `encounter_condition_value_prose` WRITE;
/*!40000 ALTER TABLE `encounter_condition_value_prose` DISABLE KEYS */;
INSERT INTO `encounter_condition_value_prose` VALUES (3,6,'Am Morgen'),(4,6,'Am Tag'),(5,9,'At night'),(2,6,'Außerhalb eines Schwarms'),(1,10,'Během rojení'),(7,10,'Bez PokéRadaru'),(13,6,'Blattgrün in slot 2'),(6,6,'Durch Benutzung des Pokéradars'),(1,9,'During a swarm'),(19,9,'During Autumn'),(17,9,'During Spring'),(18,9,'During Summer'),(4,9,'During the day'),(20,9,'During Winter'),(11,9,'Emerald in slot 2'),(12,6,'Feuerrot in slot 2'),(12,9,'FireRed in slot 2'),(15,9,'Hoenn radio'),(15,6,'Hoenn-Sound im Radio'),(15,10,'Hoennské rádio'),(17,6,'Im Frühling'),(19,6,'Im Herbst'),(18,6,'Im Sommer'),(20,6,'Im Winter'),(5,6,'In der Nacht'),(3,9,'In the morning'),(8,6,'Kein Spiel in Slot 2'),(13,9,'LeafGreen in slot 2'),(2,10,'Ne během rojení'),(8,9,'No game in slot 2'),(2,9,'Not during a swarm'),(7,9,'Not using PokéRadar'),(7,6,'Ohne Benutzung des Pokéradars'),(6,10,'Pomocí PokéRadaru'),(14,6,'Radio aus'),(14,9,'Radio off'),(3,10,'Ráno'),(9,6,'Rubin in Slot 2'),(9,9,'Ruby in slot 2'),(10,6,'Saphir in Slot 2'),(10,9,'Sapphire in slot 2'),(16,9,'Sinnoh radio'),(16,6,'Sinnoh-Sound im Radio'),(16,10,'Sinnohské rádio'),(11,6,'Smaragd in Slot 2'),(6,9,'Using PokéRadar'),(5,10,'V noci'),(4,10,'Ve dne'),(14,10,'Vypnuté rádio'),(1,6,'Während eines Schwarms');
/*!40000 ALTER TABLE `encounter_condition_value_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:24
