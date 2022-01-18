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
-- Table structure for table `type_game_indices`
--

DROP TABLE IF EXISTS `type_game_indices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_game_indices` (
  `type_id` int NOT NULL,
  `generation_id` int NOT NULL,
  `game_index` int NOT NULL,
  PRIMARY KEY (`type_id`,`generation_id`),
  KEY `generation_id` (`generation_id`),
  CONSTRAINT `type_game_indices_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  CONSTRAINT `type_game_indices_ibfk_2` FOREIGN KEY (`generation_id`) REFERENCES `generations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_game_indices`
--

LOCK TABLES `type_game_indices` WRITE;
/*!40000 ALTER TABLE `type_game_indices` DISABLE KEYS */;
INSERT INTO `type_game_indices` VALUES (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,5,0),(1,6,0),(2,1,1),(2,2,1),(2,3,1),(2,4,1),(2,5,1),(2,6,1),(3,1,2),(3,2,2),(3,3,2),(3,4,2),(3,5,2),(3,6,2),(4,1,3),(4,2,3),(4,3,3),(4,4,3),(4,5,3),(4,6,3),(5,1,4),(5,2,4),(5,3,4),(5,4,4),(5,5,4),(5,6,4),(6,1,5),(6,2,5),(6,3,5),(6,4,5),(6,5,5),(6,6,5),(7,1,7),(7,2,7),(7,3,6),(7,4,6),(7,5,6),(7,6,6),(8,1,8),(8,2,8),(8,3,7),(8,4,7),(8,5,7),(8,6,7),(9,2,9),(9,3,8),(9,4,8),(9,5,8),(9,6,8),(10,1,20),(10,2,20),(10,3,10),(10,4,10),(10,5,9),(10,6,9),(11,1,21),(11,2,21),(11,3,11),(11,4,11),(11,5,10),(11,6,10),(12,1,22),(12,2,22),(12,3,12),(12,4,12),(12,5,11),(12,6,11),(13,1,23),(13,2,23),(13,3,13),(13,4,13),(13,5,12),(13,6,12),(14,1,24),(14,2,24),(14,3,14),(14,4,14),(14,5,13),(14,6,13),(15,1,25),(15,2,25),(15,3,15),(15,4,15),(15,5,14),(15,6,14),(16,1,26),(16,2,26),(16,3,16),(16,4,16),(16,5,15),(16,6,15),(17,2,27),(17,3,17),(17,4,17),(17,5,16),(17,6,16),(18,6,17),(10001,2,19),(10001,3,9),(10001,4,9);
/*!40000 ALTER TABLE `type_game_indices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:07
