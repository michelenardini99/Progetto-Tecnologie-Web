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
-- Table structure for table `berry_firmness_names`
--

DROP TABLE IF EXISTS `berry_firmness_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berry_firmness_names` (
  `berry_firmness_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`berry_firmness_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_berry_firmness_names_name` (`name`),
  CONSTRAINT `berry_firmness_names_ibfk_1` FOREIGN KEY (`berry_firmness_id`) REFERENCES `berry_firmness` (`id`),
  CONSTRAINT `berry_firmness_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berry_firmness_names`
--

LOCK TABLES `berry_firmness_names` WRITE;
/*!40000 ALTER TABLE `berry_firmness_names` DISABLE KEYS */;
INSERT INTO `berry_firmness_names` VALUES (2,7,'Blanda'),(3,7,'Dura'),(3,5,'Ferme'),(3,9,'Hard'),(2,10,'Měkká'),(1,7,'Muy blanda'),(4,7,'Muy dura'),(2,9,'Soft'),(5,5,'Super ferme'),(5,9,'Super Hard'),(5,7,'Superdura'),(2,5,'Tendre'),(4,5,'Très ferme'),(1,5,'Très tendre'),(3,10,'Tvrdá'),(4,9,'Very Hard'),(1,9,'Very Soft');
/*!40000 ALTER TABLE `berry_firmness_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:22
