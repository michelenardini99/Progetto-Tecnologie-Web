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
-- Table structure for table `version_groups`
--

DROP TABLE IF EXISTS `version_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `version_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(79) NOT NULL,
  `generation_id` int NOT NULL,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier` (`identifier`),
  KEY `generation_id` (`generation_id`),
  CONSTRAINT `version_groups_ibfk_1` FOREIGN KEY (`generation_id`) REFERENCES `generations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version_groups`
--

LOCK TABLES `version_groups` WRITE;
/*!40000 ALTER TABLE `version_groups` DISABLE KEYS */;
INSERT INTO `version_groups` VALUES (1,'red-blue',1,1),(2,'yellow',1,2),(3,'gold-silver',2,3),(4,'crystal',2,4),(5,'ruby-sapphire',3,5),(6,'emerald',3,6),(7,'firered-leafgreen',3,9),(8,'diamond-pearl',4,10),(9,'platinum',4,11),(10,'heartgold-soulsilver',4,12),(11,'black-white',5,13),(12,'colosseum',3,7),(13,'xd',3,8),(14,'black-2-white-2',5,14),(15,'x-y',6,15),(16,'omega-ruby-alpha-sapphire',6,16),(17,'sun-moon',7,17),(18,'ultra-sun-ultra-moon',7,18),(19,'lets-go-pikachu-lets-go-eevee',7,19),(20,'sword-shield',8,20);
/*!40000 ALTER TABLE `version_groups` ENABLE KEYS */;
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
