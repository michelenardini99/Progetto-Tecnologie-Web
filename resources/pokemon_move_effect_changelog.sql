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
-- Table structure for table `move_effect_changelog`
--

DROP TABLE IF EXISTS `move_effect_changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_effect_changelog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `effect_id` int NOT NULL,
  `changed_in_version_group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `effect_id` (`effect_id`,`changed_in_version_group_id`),
  KEY `changed_in_version_group_id` (`changed_in_version_group_id`),
  CONSTRAINT `move_effect_changelog_ibfk_1` FOREIGN KEY (`effect_id`) REFERENCES `move_effects` (`id`),
  CONSTRAINT `move_effect_changelog_ibfk_2` FOREIGN KEY (`changed_in_version_group_id`) REFERENCES `version_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_effect_changelog`
--

LOCK TABLES `move_effect_changelog` WRITE;
/*!40000 ALTER TABLE `move_effect_changelog` DISABLE KEYS */;
INSERT INTO `move_effect_changelog` VALUES (1,8,11),(2,18,3),(25,27,8),(3,29,3),(4,38,8),(5,46,3),(6,46,11),(7,82,3),(8,84,3),(9,109,3),(10,109,11),(11,146,3),(12,148,3),(13,150,3),(14,151,3),(15,153,3),(16,155,11),(17,156,3),(18,161,8),(19,175,8),(20,180,11),(28,187,11),(26,224,11),(21,255,3),(27,255,8),(22,257,3),(23,261,8),(24,274,11);
/*!40000 ALTER TABLE `move_effect_changelog` ENABLE KEYS */;
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
