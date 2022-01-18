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
-- Table structure for table `super_contest_effect_prose`
--

DROP TABLE IF EXISTS `super_contest_effect_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_contest_effect_prose` (
  `super_contest_effect_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `flavor_text` text NOT NULL,
  PRIMARY KEY (`super_contest_effect_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `super_contest_effect_prose_ibfk_1` FOREIGN KEY (`super_contest_effect_id`) REFERENCES `super_contest_effects` (`id`),
  CONSTRAINT `super_contest_effect_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_contest_effect_prose`
--

LOCK TABLES `super_contest_effect_prose` WRITE;
/*!40000 ALTER TABLE `super_contest_effect_prose` DISABLE KEYS */;
INSERT INTO `super_contest_effect_prose` VALUES (1,9,'Enables the user to perform first in the next turn.'),(2,9,'Enables the user to perform last in the next turn.'),(4,9,'Earn +2 if the Judge\'s Voltage goes up.'),(5,9,'A basic performance using a move known by the Pokémon.'),(6,9,'Earn +3 if no other Pokémon has chosen the same Judge.'),(7,9,'Allows performance of the same move twice in a row.'),(8,9,'Increased Voltage is added to the performance score.'),(9,9,'Earn +15 if all the Pokémon choose the same Judge.'),(10,9,'Lowers the Voltage of all Judges by one each.'),(11,9,'Earn double the score in the next turn.'),(12,9,'Steals the Voltage of the Pokémon that just went.'),(13,9,'Prevents the Voltage from going up in the same turn.'),(14,9,'Makes the order of contestants random in the next turn.'),(15,9,'Earns double the score on the final performance.'),(16,9,'Raises the score if the Voltage is low.'),(17,9,'Earn +2 if the Pokémon performs first in the turn.'),(18,9,'Earn +2 if the Pokémon performs last in the turn.'),(19,9,'Prevents the Voltage from going down in the same turn.'),(20,9,'Earn +3 if two Pokémon raise the Voltage in a row.'),(21,9,'Earn a higher score the later the Pokémon performs.'),(22,9,'Earn +3 if the Pokémon that just went hit max Voltage.'),(23,9,'Earn +3 if the Pokémon gets the lowest score.');
/*!40000 ALTER TABLE `super_contest_effect_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:17
