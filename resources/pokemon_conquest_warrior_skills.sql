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
-- Table structure for table `conquest_warrior_skills`
--

DROP TABLE IF EXISTS `conquest_warrior_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_warrior_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(79) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_warrior_skills`
--

LOCK TABLES `conquest_warrior_skills` WRITE;
/*!40000 ALTER TABLE `conquest_warrior_skills` DISABLE KEYS */;
INSERT INTO `conquest_warrior_skills` VALUES (1,'adrenaline'),(2,'fortify'),(3,'top-speed'),(4,'rally'),(5,'bustle'),(6,'sweet-song'),(7,'mighty-blow'),(8,'brotherhood'),(9,'eagle-eye'),(10,'crack-shot'),(11,'marksman'),(12,'high-jump'),(13,'added-bonus'),(14,'impact'),(15,'quick-strike'),(16,'empathy'),(17,'deep-breath'),(18,'convalesce'),(19,'salve'),(20,'detox'),(21,'shout'),(22,'temperate'),(23,'greed'),(24,'courage'),(25,'motivate'),(26,'desire'),(27,'ambition'),(28,'soft-light'),(29,'grand-dream'),(30,'great-uniter'),(31,'rebellion'),(32,'thunderclap'),(33,'strategist'),(34,'cold-eyes'),(35,'chesto'),(36,'nene-ninpo'),(37,'furin-kazan'),(38,'one-eyed-dragon'),(39,'inspiration'),(40,'grace'),(41,'father-figure'),(42,'vipers-bite'),(43,'mayhem'),(44,'resolution'),(45,'lazybones'),(46,'extinguish'),(47,'typhoon'),(48,'bewilder'),(49,'ninjutsu'),(50,'trickster'),(51,'willpower'),(52,'cupid'),(53,'love-and-honor'),(54,'compassion'),(55,'warrior-woman'),(56,'kabuki-dance'),(57,'faith'),(58,'unrivaled'),(59,'elegance'),(60,'carefree'),(61,'cunning'),(62,'belief'),(63,'sacrifice');
/*!40000 ALTER TABLE `conquest_warrior_skills` ENABLE KEYS */;
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
