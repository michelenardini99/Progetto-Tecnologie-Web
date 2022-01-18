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
-- Table structure for table `conquest_warrior_skill_names`
--

DROP TABLE IF EXISTS `conquest_warrior_skill_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_warrior_skill_names` (
  `skill_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`skill_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_conquest_warrior_skill_names_name` (`name`),
  CONSTRAINT `conquest_warrior_skill_names_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `conquest_warrior_skills` (`id`),
  CONSTRAINT `conquest_warrior_skill_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_warrior_skill_names`
--

LOCK TABLES `conquest_warrior_skill_names` WRITE;
/*!40000 ALTER TABLE `conquest_warrior_skill_names` DISABLE KEYS */;
INSERT INTO `conquest_warrior_skill_names` VALUES (13,9,'Added Bonus'),(1,9,'Adrenaline'),(27,9,'Ambition'),(62,9,'Belief'),(48,9,'Bewilder'),(8,9,'Brotherhood'),(5,9,'Bustle'),(60,9,'Carefree'),(35,9,'Chesto!'),(34,9,'Cold Eyes'),(54,9,'Compassion'),(18,9,'Convalesce'),(24,9,'Courage'),(10,9,'Crack Shot'),(61,9,'Cunning'),(52,9,'Cupid'),(17,9,'Deep Breath'),(26,9,'Desire'),(20,9,'Detox'),(9,9,'Eagle Eye'),(59,9,'Elegance'),(16,9,'Empathy'),(46,9,'Extinguish'),(57,9,'Faith'),(41,9,'Father Figure'),(2,9,'Fortify'),(37,9,'Fūrin Kazan'),(40,9,'Grace'),(29,9,'Grand Dream'),(30,9,'Great Uniter'),(23,9,'Greed'),(12,9,'High Jump'),(14,9,'Impact'),(39,9,'Inspiration'),(56,9,'Kabuki Dance'),(45,9,'Lazybones'),(53,9,'Love & Honor'),(11,9,'Marksman'),(43,9,'Mayhem'),(7,9,'Mighty Blow'),(25,9,'Motivate'),(36,9,'Nene Ninpō'),(49,9,'Ninjutsu'),(38,9,'One-Eyed Dragon'),(15,9,'Quick Strike'),(4,9,'Rally'),(31,9,'Rebellion'),(44,9,'Resolution'),(63,9,'Sacrifice'),(19,9,'Salve'),(21,9,'Shout'),(28,9,'Soft Light'),(33,9,'Strategist'),(6,9,'Sweet Song'),(22,9,'Temperate'),(32,9,'Thunderclap'),(3,9,'Top Speed'),(50,9,'Trickster'),(47,9,'Typhoon'),(58,9,'Unrivaled'),(42,9,'Viper\'s Bite'),(55,9,'Warrior Woman'),(51,9,'Willpower');
/*!40000 ALTER TABLE `conquest_warrior_skill_names` ENABLE KEYS */;
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
