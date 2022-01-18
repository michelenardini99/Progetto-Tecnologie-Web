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
-- Table structure for table `conquest_move_range_prose`
--

DROP TABLE IF EXISTS `conquest_move_range_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_move_range_prose` (
  `conquest_move_range_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`conquest_move_range_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `conquest_move_range_prose_ibfk_1` FOREIGN KEY (`conquest_move_range_id`) REFERENCES `conquest_move_ranges` (`id`),
  CONSTRAINT `conquest_move_range_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_move_range_prose`
--

LOCK TABLES `conquest_move_range_prose` WRITE;
/*!40000 ALTER TABLE `conquest_move_range_prose` DISABLE KEYS */;
INSERT INTO `conquest_move_range_prose` VALUES (1,9,'User','The user.'),(2,9,'Single tile','A single tile directly in front of the user.'),(3,9,'Two-tile column','Two tiles in a column in front of the user.'),(4,9,'Three-tile column','Three tiles in a column in front of the user.'),(5,9,'Adjacent diamond','The four tiles adjacent to the user.'),(6,9,'Adjacent ring','Eight tiles in a ring around the user.'),(7,9,'Row','Three tiles in a line centered directly in front of the user.'),(8,9,'Chevron','Three tiles in the shape of a chevron (^), with the apex two tiles in front of the user.'),(9,9,'Plus','Five tiles in a plus shape centered two tiles in front of the user.'),(10,9,'X-shape','Five tiles in an X shape centered directly in front of the user.'),(11,9,'Two ahead','A single tile two tiles in front of the user.'),(12,9,'Three ahead','A single tile three tiles in front of the user.'),(13,9,'Diamond two ahead','Four tiles in a diamond centered two tiles in front of the user.'),(14,9,'Ring in front','Eight tiles in a ring centered two tiles in front of the user.'),(15,9,'Row two ahead','Three tiles in a line centered two tiles in front of the user.'),(16,9,'Two rows two ahead','Six tiles in two rows of three, one centered two tiles in front of the user and the other three tiles.'),(17,9,'Column two ahead','A column of two tiles starting two tiles in front of the user.'),(18,9,'X-shape two ahead','Five tiles in an X shape centered two tiles in front of the user.'),(19,9,'Dai','Seven tiles in the shape of the kanji 大 (dai), consisting of five squares in a plus shape in front of the user and one square on either side of the user.'),(20,9,'T-shape','Four tiles in the shape of a T, consisting of the tile directly in front of the user and a row of three tiles centered two tiles in front of the user.'),(21,9,'Two rows','Six tiles in two rows of three, one centered directly in front of the user and the other two tiles in front of the user.');
/*!40000 ALTER TABLE `conquest_move_range_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:20
