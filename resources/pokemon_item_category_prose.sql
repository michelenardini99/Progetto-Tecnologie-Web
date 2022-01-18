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
-- Table structure for table `item_category_prose`
--

DROP TABLE IF EXISTS `item_category_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_category_prose` (
  `item_category_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`item_category_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_item_category_prose_name` (`name`),
  CONSTRAINT `item_category_prose_ibfk_1` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`),
  CONSTRAINT `item_category_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_category_prose`
--

LOCK TABLES `item_category_prose` WRITE;
/*!40000 ALTER TABLE `item_category_prose` DISABLE KEYS */;
INSERT INTO `item_category_prose` VALUES (37,9,'All machines'),(25,9,'All mail'),(39,9,'Apricorn balls'),(40,9,'Apricorn Box'),(15,9,'Bad held items'),(8,9,'Baking only'),(48,9,'Catching bonus'),(13,9,'Choice'),(9,9,'Collectibles'),(51,9,'Curry ingredients'),(41,9,'Data Cards'),(17,10,'Desky'),(35,9,'Dex completion'),(11,10,'Do jeskyní'),(42,10,'Drahokamy'),(18,10,'Druhové'),(49,9,'Dynamax crystals'),(2,9,'Effort drop'),(14,9,'Effort training'),(20,9,'Event items'),(20,10,'Eventové'),(10,9,'Evolution'),(38,9,'Flutes'),(21,9,'Gameplay'),(27,9,'Healing'),(12,9,'Held items'),(21,10,'Herní'),(32,10,'Hnojivo'),(5,9,'In a pinch'),(8,10,'Jen k pečení'),(42,9,'Jewels'),(24,10,'Kořist'),(27,10,'Léčící'),(28,10,'Léčící PP'),(24,9,'Loot'),(3,9,'Medicine'),(44,9,'Mega Stones'),(45,9,'Memories'),(43,9,'Miracle Shooter'),(32,9,'Mulch'),(50,9,'Nature mints'),(23,10,'Nepoužité'),(4,9,'Other'),(29,10,'Oživující'),(6,9,'Picky healing'),(17,9,'Plates'),(22,9,'Plot advancement'),(28,9,'PP recovery'),(22,10,'Příběhové'),(29,9,'Revival'),(36,9,'Scarves'),(33,9,'Special balls'),(47,9,'Species candies'),(18,9,'Species-specific'),(11,9,'Spelunking'),(34,9,'Standard balls'),(1,9,'Stat boosts'),(30,9,'Status cures'),(16,9,'Training'),(16,10,'Trénink'),(19,9,'Type enhancement'),(7,9,'Type protection'),(7,10,'Typová protekce'),(23,9,'Unused'),(5,10,'V nouzi'),(26,9,'Vitamins'),(26,10,'Vitamíny'),(46,9,'Z-Crystals'),(9,10,'Zběratelské'),(4,10,'Zbytek');
/*!40000 ALTER TABLE `item_category_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:21
