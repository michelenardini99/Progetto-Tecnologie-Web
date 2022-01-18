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
-- Table structure for table `conquest_episodes`
--

DROP TABLE IF EXISTS `conquest_episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_episodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(79) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_episodes`
--

LOCK TABLES `conquest_episodes` WRITE;
/*!40000 ALTER TABLE `conquest_episodes` DISABLE KEYS */;
INSERT INTO `conquest_episodes` VALUES (1,'the-legend-of-ransei'),(2,'the-road-to-conquest'),(3,'happily-ever-after'),(4,'the-burden-of-peace'),(5,'the-way-of-the-warrior'),(6,'the-joy-of-battle'),(7,'pride-and-precociousness'),(8,'tragic-determination'),(9,'a-shroud-of-darkness'),(10,'not-worth-fighting-over-1'),(11,'teaching-them-a-lesson'),(12,'the-reluctant-genius'),(13,'the-unparalleled-warrior'),(14,'a-ninja-amongst-ninjas'),(15,'archenemies'),(16,'time-for-battle'),(17,'land-of-love-and-righteousness'),(18,'love-is-a-battlefield'),(19,'the-final-gamble'),(20,'blowing-in-the-wind'),(21,'ranseis-legendary-beauty'),(22,'all-grown-up'),(23,'the-rebel'),(24,'that-which-he-holds-dear'),(25,'not-worth-fighting-over-2'),(26,'the-rose-of-ransei'),(27,'the-visionarys-quest'),(28,'grace-and-beauty'),(29,'pokemari-and-me'),(30,'the-dragons-dream'),(31,'putting-the-books-down'),(32,'a-date-with-destiny'),(33,'this-one-goes-out-to-my-fans'),(34,'simply-the-best'),(35,'not-worth-fighting-over-3'),(36,'a-fate-born-of-beauty'),(37,'the-free-spirits-path'),(38,'two-heroes-of-ransei');
/*!40000 ALTER TABLE `conquest_episodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:10
