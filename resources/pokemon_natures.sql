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
-- Table structure for table `natures`
--

DROP TABLE IF EXISTS `natures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `natures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(79) NOT NULL,
  `decreased_stat_id` int NOT NULL,
  `increased_stat_id` int NOT NULL,
  `hates_flavor_id` int NOT NULL,
  `likes_flavor_id` int NOT NULL,
  `game_index` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_index` (`game_index`),
  KEY `decreased_stat_id` (`decreased_stat_id`),
  KEY `increased_stat_id` (`increased_stat_id`),
  KEY `hates_flavor_id` (`hates_flavor_id`),
  KEY `likes_flavor_id` (`likes_flavor_id`),
  CONSTRAINT `natures_ibfk_1` FOREIGN KEY (`decreased_stat_id`) REFERENCES `stats` (`id`),
  CONSTRAINT `natures_ibfk_2` FOREIGN KEY (`increased_stat_id`) REFERENCES `stats` (`id`),
  CONSTRAINT `natures_ibfk_3` FOREIGN KEY (`hates_flavor_id`) REFERENCES `contest_types` (`id`),
  CONSTRAINT `natures_ibfk_4` FOREIGN KEY (`likes_flavor_id`) REFERENCES `contest_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `natures`
--

LOCK TABLES `natures` WRITE;
/*!40000 ALTER TABLE `natures` DISABLE KEYS */;
INSERT INTO `natures` VALUES (1,'hardy',2,2,1,1,0),(2,'bold',2,3,1,5,5),(3,'modest',2,4,1,2,15),(4,'calm',2,5,1,4,20),(5,'timid',2,6,1,3,10),(6,'lonely',3,2,5,1,1),(7,'docile',3,3,5,5,6),(8,'mild',3,4,5,2,16),(9,'gentle',3,5,5,4,21),(10,'hasty',3,6,5,3,11),(11,'adamant',4,2,2,1,3),(12,'impish',4,3,2,5,8),(13,'bashful',4,4,2,2,18),(14,'careful',4,5,2,4,23),(15,'rash',5,4,4,2,19),(16,'jolly',4,6,2,3,13),(17,'naughty',5,2,4,1,4),(18,'lax',5,3,4,5,9),(19,'quirky',5,5,4,4,24),(20,'naive',5,6,4,3,14),(21,'brave',6,2,3,1,2),(22,'relaxed',6,3,3,5,7),(23,'quiet',6,4,3,2,17),(24,'sassy',6,5,3,4,22),(25,'serious',6,6,3,3,12);
/*!40000 ALTER TABLE `natures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:13
