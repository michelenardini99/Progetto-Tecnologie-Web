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
-- Table structure for table `move_meta_category_prose`
--

DROP TABLE IF EXISTS `move_meta_category_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_meta_category_prose` (
  `move_meta_category_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`move_meta_category_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `move_meta_category_prose_ibfk_1` FOREIGN KEY (`move_meta_category_id`) REFERENCES `move_meta_categories` (`id`),
  CONSTRAINT `move_meta_category_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_meta_category_prose`
--

LOCK TABLES `move_meta_category_prose` WRITE;
/*!40000 ALTER TABLE `move_meta_category_prose` DISABLE KEYS */;
INSERT INTO `move_meta_category_prose` VALUES (0,9,'Inflicts damage'),(1,9,'No damage; inflicts status ailment'),(2,9,'No damage; lowers target\'s stats or raises user\'s stats'),(3,9,'No damage; heals the user'),(4,9,'Inflicts damage; inflicts status ailment'),(5,9,'No damage; inflicts status ailment; raises target\'s stats'),(6,9,'Inflicts damage; lowers target\'s stats'),(7,9,'Inflicts damage; raises user\'s stats'),(8,9,'Inflicts damage; absorbs damage done to heal the user'),(9,9,'One-hit KO'),(10,9,'Effect on the whole field'),(11,9,'Effect on one side of the field'),(12,9,'Forces target to switch out'),(13,9,'Unique effect');
/*!40000 ALTER TABLE `move_meta_category_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:11
