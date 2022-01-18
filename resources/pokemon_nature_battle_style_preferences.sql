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
-- Table structure for table `nature_battle_style_preferences`
--

DROP TABLE IF EXISTS `nature_battle_style_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nature_battle_style_preferences` (
  `nature_id` int NOT NULL,
  `move_battle_style_id` int NOT NULL,
  `low_hp_preference` int NOT NULL,
  `high_hp_preference` int NOT NULL,
  PRIMARY KEY (`nature_id`,`move_battle_style_id`),
  KEY `move_battle_style_id` (`move_battle_style_id`),
  CONSTRAINT `nature_battle_style_preferences_ibfk_1` FOREIGN KEY (`nature_id`) REFERENCES `natures` (`id`),
  CONSTRAINT `nature_battle_style_preferences_ibfk_2` FOREIGN KEY (`move_battle_style_id`) REFERENCES `move_battle_styles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nature_battle_style_preferences`
--

LOCK TABLES `nature_battle_style_preferences` WRITE;
/*!40000 ALTER TABLE `nature_battle_style_preferences` DISABLE KEYS */;
INSERT INTO `nature_battle_style_preferences` VALUES (1,1,61,61),(1,2,7,7),(1,3,32,32),(2,1,32,30),(2,2,58,20),(2,3,10,50),(3,1,34,35),(3,2,60,45),(3,3,6,20),(4,1,25,40),(4,2,62,50),(4,3,13,10),(5,1,30,62),(5,2,20,10),(5,3,50,28),(6,1,84,20),(6,2,8,25),(6,3,8,55),(7,1,56,56),(7,2,22,22),(7,3,22,22),(8,1,34,44),(8,2,6,50),(8,3,60,6),(9,1,90,18),(9,2,5,70),(9,3,5,12),(10,1,88,58),(10,2,6,37),(10,3,6,5),(11,1,70,38),(11,2,15,31),(11,3,15,31),(12,1,28,69),(12,2,55,6),(12,3,17,25),(13,1,30,30),(13,2,58,58),(13,3,12,12),(14,1,42,42),(14,2,5,50),(14,3,53,8),(15,1,27,30),(15,2,6,13),(15,3,67,57),(16,1,35,35),(16,2,60,5),(16,3,5,60),(17,1,70,20),(17,2,22,70),(17,3,8,10),(18,1,29,35),(18,2,6,10),(18,3,65,55),(19,1,56,56),(19,2,22,22),(19,3,22,22),(20,1,56,56),(20,2,22,22),(20,3,22,22),(21,1,32,70),(21,2,60,15),(21,3,8,15),(22,1,75,25),(22,2,15,15),(22,3,10,60),(23,1,56,56),(23,2,22,22),(23,3,22,22),(24,1,22,88),(24,2,20,6),(24,3,58,6),(25,1,29,34),(25,2,11,11),(25,3,60,55);
/*!40000 ALTER TABLE `nature_battle_style_preferences` ENABLE KEYS */;
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
