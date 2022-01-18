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
-- Table structure for table `move_meta_stat_changes`
--

DROP TABLE IF EXISTS `move_meta_stat_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_meta_stat_changes` (
  `move_id` int NOT NULL,
  `stat_id` int NOT NULL,
  `change` int NOT NULL,
  PRIMARY KEY (`move_id`,`stat_id`),
  KEY `stat_id` (`stat_id`),
  KEY `ix_move_meta_stat_changes_change` (`change`),
  CONSTRAINT `move_meta_stat_changes_ibfk_1` FOREIGN KEY (`move_id`) REFERENCES `moves` (`id`),
  CONSTRAINT `move_meta_stat_changes_ibfk_2` FOREIGN KEY (`stat_id`) REFERENCES `stats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_meta_stat_changes`
--

LOCK TABLES `move_meta_stat_changes` WRITE;
/*!40000 ALTER TABLE `move_meta_stat_changes` DISABLE KEYS */;
INSERT INTO `move_meta_stat_changes` VALUES (81,6,-2),(103,3,-2),(178,6,-2),(184,6,-2),(204,2,-2),(230,8,-2),(297,2,-2),(313,5,-2),(315,4,-2),(319,5,-2),(354,4,-2),(434,4,-2),(437,4,-2),(445,4,-2),(465,5,-2),(491,5,-2),(598,4,-2),(705,4,-2),(28,7,-1),(39,3,-1),(43,3,-1),(45,2,-1),(51,5,-1),(61,6,-1),(62,2,-1),(94,5,-1),(108,7,-1),(132,6,-1),(134,7,-1),(145,6,-1),(148,7,-1),(189,7,-1),(190,7,-1),(196,6,-1),(231,3,-1),(242,3,-1),(247,5,-1),(249,3,-1),(276,2,-1),(276,3,-1),(295,5,-1),(296,4,-1),(306,3,-1),(317,6,-1),(321,2,-1),(321,3,-1),(330,7,-1),(341,6,-1),(359,6,-1),(370,3,-1),(370,5,-1),(405,5,-1),(411,5,-1),(412,5,-1),(414,5,-1),(426,7,-1),(429,7,-1),(430,5,-1),(490,6,-1),(522,4,-1),(523,6,-1),(527,6,-1),(534,3,-1),(536,7,-1),(539,7,-1),(549,6,-1),(555,4,-1),(557,3,-1),(557,5,-1),(557,6,-1),(568,2,-1),(568,4,-1),(575,2,-1),(575,4,-1),(583,2,-1),(585,4,-1),(589,2,-1),(590,4,-1),(595,4,-1),(599,2,-1),(599,4,-1),(599,6,-1),(608,2,-1),(620,3,-1),(620,5,-1),(621,3,-1),(665,6,-1),(668,2,-1),(672,6,-1),(679,2,-1),(680,3,-1),(688,2,-1),(691,3,-1),(708,3,-1),(710,3,-1),(715,2,-1),(715,4,-1),(749,6,-1),(778,6,-1),(784,2,-1),(787,5,-1),(788,3,-1),(789,4,-1),(806,4,-1),(823,3,-1),(74,2,1),(74,4,1),(96,2,1),(104,8,1),(106,3,1),(110,3,1),(111,3,1),(159,2,1),(211,3,1),(229,6,1),(232,2,1),(246,2,1),(246,3,1),(246,4,1),(246,5,1),(246,6,1),(260,4,1),(268,5,1),(309,2,1),(318,2,1),(318,3,1),(318,4,1),(318,5,1),(318,6,1),(322,3,1),(322,5,1),(336,2,1),(339,2,1),(339,3,1),(347,4,1),(347,5,1),(349,2,1),(349,6,1),(451,4,1),(455,3,1),(455,5,1),(466,2,1),(466,3,1),(466,4,1),(466,5,1),(466,6,1),(468,2,1),(468,7,1),(483,4,1),(483,5,1),(483,6,1),(488,6,1),(489,2,1),(489,3,1),(489,7,1),(508,2,1),(526,2,1),(526,4,1),(552,4,1),(563,2,1),(563,4,1),(579,3,1),(597,5,1),(602,3,1),(602,5,1),(612,2,1),(674,2,1),(674,4,1),(728,2,1),(728,3,1),(728,4,1),(728,5,1),(728,6,1),(729,8,1),(748,2,1),(748,3,1),(748,4,1),(748,5,1),(748,6,1),(775,2,1),(775,3,1),(775,4,1),(775,5,1),(775,6,1),(783,6,1),(811,2,1),(811,3,1),(14,2,2),(97,6,2),(107,8,2),(112,3,2),(133,5,2),(151,3,2),(207,2,2),(334,3,2),(397,6,2),(417,4,2),(475,6,2),(508,6,2),(591,3,2),(601,4,2),(601,5,2),(601,6,2),(702,2,2),(702,3,2),(702,4,2),(702,5,2),(702,6,2),(747,3,2),(777,2,2),(777,4,2),(294,4,3),(538,3,3);
/*!40000 ALTER TABLE `move_meta_stat_changes` ENABLE KEYS */;
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
