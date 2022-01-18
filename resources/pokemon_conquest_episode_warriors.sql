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
-- Table structure for table `conquest_episode_warriors`
--

DROP TABLE IF EXISTS `conquest_episode_warriors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_episode_warriors` (
  `episode_id` int NOT NULL,
  `warrior_id` int NOT NULL,
  PRIMARY KEY (`episode_id`,`warrior_id`),
  KEY `warrior_id` (`warrior_id`),
  CONSTRAINT `conquest_episode_warriors_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `conquest_episodes` (`id`),
  CONSTRAINT `conquest_episode_warriors_ibfk_2` FOREIGN KEY (`warrior_id`) REFERENCES `conquest_warriors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_episode_warriors`
--

LOCK TABLES `conquest_episode_warriors` WRITE;
/*!40000 ALTER TABLE `conquest_episode_warriors` DISABLE KEYS */;
INSERT INTO `conquest_episode_warriors` VALUES (1,1),(38,1),(1,2),(38,2),(2,3),(26,4),(3,5),(23,6),(7,7),(31,8),(8,9),(19,10),(11,11),(15,12),(30,13),(6,14),(29,15),(24,16),(21,17),(9,18),(4,19),(12,20),(27,21),(20,22),(22,23),(14,24),(16,25),(5,26),(33,27),(17,28),(18,29),(34,30),(32,31),(36,32),(13,33),(28,34),(37,35),(10,36),(25,37),(35,38);
/*!40000 ALTER TABLE `conquest_episode_warriors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:18
