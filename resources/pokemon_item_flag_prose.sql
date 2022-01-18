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
-- Table structure for table `item_flag_prose`
--

DROP TABLE IF EXISTS `item_flag_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_flag_prose` (
  `item_flag_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`item_flag_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_item_flag_prose_name` (`name`),
  CONSTRAINT `item_flag_prose_ibfk_1` FOREIGN KEY (`item_flag_id`) REFERENCES `item_flags` (`id`),
  CONSTRAINT `item_flag_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_flag_prose`
--

LOCK TABLES `item_flag_prose` WRITE;
/*!40000 ALTER TABLE `item_flag_prose` DISABLE KEYS */;
INSERT INTO `item_flag_prose` VALUES (1,9,'Countable','Has a count in the bag'),(1,10,'Počítatelný',NULL),(2,9,'Consumable','Consumed when used'),(2,10,'Spotřebující se','Spotřebuje se po použití'),(3,9,'Usable_overworld','Usable outside battle'),(3,10,NULL,'Použitelný mimo souboj'),(4,9,'Usable_in_battle','Usable in battle'),(4,10,NULL,'Použitelný v souboji'),(5,9,'Holdable','Can be held by a Pokémon'),(5,10,'Držitelný','Může být držen pokémonem'),(6,9,'Holdable_passive','Works passively when held'),(6,10,NULL,'Funguje pasivně při držení'),(7,9,'Holdable_active','Usable by a Pokémon when held'),(7,10,NULL,'Použitelný pokémonem při držení'),(8,9,'Underground','Appears in Sinnoh Underground'),(8,10,'Podzemí','Nachází se v Sinnohském podzemí');
/*!40000 ALTER TABLE `item_flag_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:24
