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
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pocket_id` int NOT NULL,
  `identifier` varchar(79) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pocket_id` (`pocket_id`),
  CONSTRAINT `item_categories_ibfk_1` FOREIGN KEY (`pocket_id`) REFERENCES `item_pockets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_categories`
--

LOCK TABLES `item_categories` WRITE;
/*!40000 ALTER TABLE `item_categories` DISABLE KEYS */;
INSERT INTO `item_categories` VALUES (1,7,'stat-boosts'),(2,5,'effort-drop'),(3,5,'medicine'),(4,5,'other'),(5,5,'in-a-pinch'),(6,5,'picky-healing'),(7,5,'type-protection'),(8,5,'baking-only'),(9,1,'collectibles'),(10,1,'evolution'),(11,1,'spelunking'),(12,1,'held-items'),(13,1,'choice'),(14,1,'effort-training'),(15,1,'bad-held-items'),(16,1,'training'),(17,1,'plates'),(18,1,'species-specific'),(19,1,'type-enhancement'),(20,8,'event-items'),(21,8,'gameplay'),(22,8,'plot-advancement'),(23,8,'unused'),(24,1,'loot'),(25,6,'all-mail'),(26,2,'vitamins'),(27,2,'healing'),(28,2,'pp-recovery'),(29,2,'revival'),(30,2,'status-cures'),(32,1,'mulch'),(33,3,'special-balls'),(34,3,'standard-balls'),(35,1,'dex-completion'),(36,1,'scarves'),(37,4,'all-machines'),(38,7,'flutes'),(39,3,'apricorn-balls'),(40,8,'apricorn-box'),(41,8,'data-cards'),(42,1,'jewels'),(43,7,'miracle-shooter'),(44,1,'mega-stones'),(45,1,'memories'),(46,8,'z-crystals'),(47,1,'species-candies'),(48,5,'catching-bonus'),(49,1,'dynamax-crystals'),(50,2,'nature-mints'),(51,1,'curry-ingredients');
/*!40000 ALTER TABLE `item_categories` ENABLE KEYS */;
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
