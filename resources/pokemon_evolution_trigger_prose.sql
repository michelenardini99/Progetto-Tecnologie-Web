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
-- Table structure for table `evolution_trigger_prose`
--

DROP TABLE IF EXISTS `evolution_trigger_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evolution_trigger_prose` (
  `evolution_trigger_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`evolution_trigger_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_evolution_trigger_prose_name` (`name`),
  CONSTRAINT `evolution_trigger_prose_ibfk_1` FOREIGN KEY (`evolution_trigger_id`) REFERENCES `evolution_triggers` (`id`),
  CONSTRAINT `evolution_trigger_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolution_trigger_prose`
--

LOCK TABLES `evolution_trigger_prose` WRITE;
/*!40000 ALTER TABLE `evolution_trigger_prose` DISABLE KEYS */;
INSERT INTO `evolution_trigger_prose` VALUES (2,5,'Échange'),(3,6,'Gegenstand nutzen'),(9,9,'Go somewhere after taking damage'),(8,9,'Land three critical hits in a battle'),(1,9,'Level up'),(1,6,'Levelaufstieg'),(1,5,'Montée de niveau'),(4,5,'Place dans l\'équipe et une Poké Ball'),(4,6,'Platz im Team und ein Pokéball'),(4,9,'Shed'),(5,9,'Spin'),(2,6,'Tausch'),(2,9,'Trade'),(6,9,'Train in the Tower of Darkness'),(7,9,'Train in the Tower of Waters'),(3,9,'Use item'),(3,5,'Utilisation d\'un objet');
/*!40000 ALTER TABLE `evolution_trigger_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:23
