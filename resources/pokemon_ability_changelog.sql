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
-- Table structure for table `ability_changelog`
--

DROP TABLE IF EXISTS `ability_changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ability_changelog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ability_id` int NOT NULL,
  `changed_in_version_group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ability_id` (`ability_id`),
  KEY `changed_in_version_group_id` (`changed_in_version_group_id`),
  CONSTRAINT `ability_changelog_ibfk_1` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`),
  CONSTRAINT `ability_changelog_ibfk_2` FOREIGN KEY (`changed_in_version_group_id`) REFERENCES `version_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ability_changelog`
--

LOCK TABLES `ability_changelog` WRITE;
/*!40000 ALTER TABLE `ability_changelog` DISABLE KEYS */;
INSERT INTO `ability_changelog` VALUES (1,1,11),(2,5,11),(3,9,6),(4,10,8),(5,16,11),(6,18,8),(7,21,6),(8,22,6),(9,22,8),(10,23,8),(11,24,8),(12,25,11),(13,28,6),(14,28,8),(15,28,11),(16,31,6),(17,31,8),(18,31,11),(19,40,6),(20,42,6),(21,43,11),(22,46,6),(23,46,8),(24,49,6),(25,51,6),(26,52,6),(27,52,8),(28,53,11),(29,55,6),(30,56,6),(31,60,6),(32,62,8),(33,68,6),(34,68,8),(35,71,6),(36,72,6),(37,73,6),(38,90,11),(39,98,11),(40,99,9),(41,102,11),(42,103,11),(43,114,11),(44,36,11),(45,36,8),(46,57,11),(47,58,11),(48,61,11),(49,92,11),(50,101,11),(51,14,6),(52,61,8);
/*!40000 ALTER TABLE `ability_changelog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:12
