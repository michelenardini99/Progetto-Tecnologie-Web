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
-- Table structure for table `nature_pokeathlon_stats`
--

DROP TABLE IF EXISTS `nature_pokeathlon_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nature_pokeathlon_stats` (
  `nature_id` int NOT NULL,
  `pokeathlon_stat_id` int NOT NULL,
  `max_change` int NOT NULL,
  PRIMARY KEY (`nature_id`,`pokeathlon_stat_id`),
  KEY `pokeathlon_stat_id` (`pokeathlon_stat_id`),
  CONSTRAINT `nature_pokeathlon_stats_ibfk_1` FOREIGN KEY (`nature_id`) REFERENCES `natures` (`id`),
  CONSTRAINT `nature_pokeathlon_stats_ibfk_2` FOREIGN KEY (`pokeathlon_stat_id`) REFERENCES `pokeathlon_stats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nature_pokeathlon_stats`
--

LOCK TABLES `nature_pokeathlon_stats` WRITE;
/*!40000 ALTER TABLE `nature_pokeathlon_stats` DISABLE KEYS */;
INSERT INTO `nature_pokeathlon_stats` VALUES (1,1,-1),(1,2,1),(2,1,-2),(2,3,2),(3,1,-2),(3,5,2),(4,1,-2),(4,2,2),(5,1,2),(5,2,-2),(6,1,2),(6,3,-2),(7,3,1),(7,5,-1),(8,3,-2),(8,5,2),(9,1,2),(9,3,-2),(10,1,2),(10,3,-2),(11,1,2),(11,5,-2),(12,3,2),(12,5,-2),(13,1,-1),(13,5,1),(14,2,2),(14,5,-2),(15,2,-2),(15,5,2),(16,1,2),(16,5,-2),(17,1,2),(17,2,-2),(18,1,-2),(18,3,2),(19,1,1),(19,3,-1),(20,1,2),(20,2,-2),(21,1,-2),(21,2,2),(22,1,-2),(22,3,2),(23,1,-2),(23,5,2),(24,1,-2),(24,2,2),(25,1,1),(25,2,-1);
/*!40000 ALTER TABLE `nature_pokeathlon_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:19
