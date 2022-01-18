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
-- Table structure for table `growth_rate_prose`
--

DROP TABLE IF EXISTS `growth_rate_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `growth_rate_prose` (
  `growth_rate_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`growth_rate_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_growth_rate_prose_name` (`name`),
  CONSTRAINT `growth_rate_prose_ibfk_1` FOREIGN KEY (`growth_rate_id`) REFERENCES `growth_rates` (`id`),
  CONSTRAINT `growth_rate_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `growth_rate_prose`
--

LOCK TABLES `growth_rate_prose` WRITE;
/*!40000 ALTER TABLE `growth_rate_prose` DISABLE KEYS */;
INSERT INTO `growth_rate_prose` VALUES (4,10,'celkem pomalá'),(5,5,'erratique'),(3,9,'fast'),(6,9,'fast then very slow'),(6,5,'fluctuante'),(1,6,'langsam'),(5,6,'langsam, dann sehr schnell'),(1,5,'lente'),(2,9,'medium'),(4,9,'medium slow'),(2,6,'mittel'),(4,6,'mittel langsam'),(2,5,'moyenne'),(4,5,'parabolique'),(1,10,'pomalá'),(2,10,'průměrná'),(3,5,'rapide'),(3,10,'rychlá'),(3,6,'schnell'),(6,6,'schnell, dann sehr langsam'),(1,9,'slow'),(5,9,'slow then very fast');
/*!40000 ALTER TABLE `growth_rate_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:08
