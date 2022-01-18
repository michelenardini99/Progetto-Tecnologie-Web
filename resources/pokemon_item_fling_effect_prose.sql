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
-- Table structure for table `item_fling_effect_prose`
--

DROP TABLE IF EXISTS `item_fling_effect_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_fling_effect_prose` (
  `item_fling_effect_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `effect` text NOT NULL,
  PRIMARY KEY (`item_fling_effect_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `item_fling_effect_prose_ibfk_1` FOREIGN KEY (`item_fling_effect_id`) REFERENCES `item_fling_effects` (`id`),
  CONSTRAINT `item_fling_effect_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_fling_effect_prose`
--

LOCK TABLES `item_fling_effect_prose` WRITE;
/*!40000 ALTER TABLE `item_fling_effect_prose` DISABLE KEYS */;
INSERT INTO `item_fling_effect_prose` VALUES (1,9,'Badly poisons the target.'),(1,10,'Těžce otráví protivníka.'),(2,9,'Burns the target.'),(3,9,'Immediately activates the berry\'s effect on the target.'),(4,9,'Immediately activates the herb\'s effect on the target.'),(5,9,'Paralyzes the target.'),(6,9,'Poisons the target.'),(7,9,'Target will flinch if it has not yet gone this turn.');
/*!40000 ALTER TABLE `item_fling_effect_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:21
