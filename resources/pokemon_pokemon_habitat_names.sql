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
-- Table structure for table `pokemon_habitat_names`
--

DROP TABLE IF EXISTS `pokemon_habitat_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_habitat_names` (
  `pokemon_habitat_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`pokemon_habitat_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_pokemon_habitat_names_name` (`name`),
  CONSTRAINT `pokemon_habitat_names_ibfk_1` FOREIGN KEY (`pokemon_habitat_id`) REFERENCES `pokemon_habitats` (`id`),
  CONSTRAINT `pokemon_habitat_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_habitat_names`
--

LOCK TABLES `pokemon_habitat_names` WRITE;
/*!40000 ALTER TABLE `pokemon_habitat_names` DISABLE KEYS */;
INSERT INTO `pokemon_habitat_names` VALUES (9,7,'agua salada'),(2,7,'bosque'),(9,10,'břehy'),(6,7,'campo'),(1,9,'cave'),(1,7,'caverna'),(3,5,'champs'),(8,7,'ciudad'),(2,9,'forest'),(2,5,'forêts'),(3,9,'grassland'),(1,5,'grottes'),(4,10,'hory'),(1,10,'jeskyně'),(2,10,'lesy'),(3,10,'lučiny'),(7,7,'mar'),(9,5,'marécages'),(7,5,'mers'),(8,10,'města'),(6,5,'milieux hostiles'),(4,5,'montagnes'),(4,7,'montaña'),(7,10,'moře'),(4,9,'mountain'),(3,7,'pradera'),(5,9,'rare'),(5,5,'rares'),(5,7,'raro'),(6,9,'rough terrain'),(7,9,'sea'),(8,5,'urbains'),(8,9,'urban'),(6,10,'vysočiny'),(5,10,'vzácní'),(9,9,'water\'s edge');
/*!40000 ALTER TABLE `pokemon_habitat_names` ENABLE KEYS */;
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
