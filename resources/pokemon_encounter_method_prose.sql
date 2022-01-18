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
-- Table structure for table `encounter_method_prose`
--

DROP TABLE IF EXISTS `encounter_method_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encounter_method_prose` (
  `encounter_method_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`encounter_method_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_encounter_method_prose_name` (`name`),
  CONSTRAINT `encounter_method_prose_ibfk_1` FOREIGN KEY (`encounter_method_id`) REFERENCES `encounter_methods` (`id`),
  CONSTRAINT `encounter_method_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounter_method_prose`
--

LOCK TABLES `encounter_method_prose` WRITE;
/*!40000 ALTER TABLE `encounter_method_prose` DISABLE KEYS */;
INSERT INTO `encounter_method_prose` VALUES (12,6,'An dunklen stellen angeln'),(13,6,'An dunklen stellen surfen'),(17,6,'Auf unwegsamen Gelände laufen'),(7,6,'Bäumen Kopfnüsse geben'),(12,9,'Fishing in dark spots'),(3,9,'Fishing with a Good Rod'),(4,9,'Fishing with a Super Rod'),(2,9,'Fishing with an Old Rod'),(7,9,'Headbutting trees'),(8,6,'Im dunklen Gras laufen'),(1,6,'Im hohen Gras oder in einer Höhle laufen'),(9,6,'Im raschelndem Gras laufen'),(11,6,'Im Schatten einer Brücke laufen'),(14,6,'In gelben Blumenfeldern laufen'),(16,6,'In roten Blumenfeldern laufen'),(10,6,'In Staubwolken laufen'),(15,6,'In violetten Blumenfeldern laufen'),(2,6,'Mit einer normalen Angel angeln'),(3,6,'Mit einer Profiangel angeln'),(4,6,'Mit einer Superangel angeln'),(18,9,'Receive as a gift'),(19,9,'Receive egg as a gift'),(6,9,'Smashing rocks'),(6,6,'Steine zertrümmern'),(5,6,'Surfen'),(5,9,'Surfing'),(13,9,'Surfing in dark spots'),(11,9,'Walking in bridge shadows'),(8,9,'Walking in dark grass'),(10,9,'Walking in dust clouds'),(15,9,'Walking in purple flowers'),(16,9,'Walking in red flowers'),(9,9,'Walking in rustling grass'),(1,9,'Walking in tall grass or a cave'),(14,9,'Walking in yellow flowers'),(17,9,'Walking on rough terrain');
/*!40000 ALTER TABLE `encounter_method_prose` ENABLE KEYS */;
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
