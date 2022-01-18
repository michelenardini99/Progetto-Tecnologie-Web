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
-- Table structure for table `conquest_warrior_transformation`
--

DROP TABLE IF EXISTS `conquest_warrior_transformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_warrior_transformation` (
  `transformed_warrior_rank_id` int NOT NULL,
  `is_automatic` tinyint(1) NOT NULL,
  `required_link` int DEFAULT NULL,
  `completed_episode_id` int DEFAULT NULL,
  `current_episode_id` int DEFAULT NULL,
  `distant_warrior_id` int DEFAULT NULL,
  `female_warlord_count` int DEFAULT NULL,
  `pokemon_count` int DEFAULT NULL,
  `collection_type_id` int DEFAULT NULL,
  `warrior_count` int DEFAULT NULL,
  PRIMARY KEY (`transformed_warrior_rank_id`),
  KEY `completed_episode_id` (`completed_episode_id`),
  KEY `current_episode_id` (`current_episode_id`),
  KEY `distant_warrior_id` (`distant_warrior_id`),
  KEY `collection_type_id` (`collection_type_id`),
  CONSTRAINT `conquest_warrior_transformation_ibfk_1` FOREIGN KEY (`transformed_warrior_rank_id`) REFERENCES `conquest_warrior_ranks` (`id`),
  CONSTRAINT `conquest_warrior_transformation_ibfk_2` FOREIGN KEY (`completed_episode_id`) REFERENCES `conquest_episodes` (`id`),
  CONSTRAINT `conquest_warrior_transformation_ibfk_3` FOREIGN KEY (`current_episode_id`) REFERENCES `conquest_episodes` (`id`),
  CONSTRAINT `conquest_warrior_transformation_ibfk_4` FOREIGN KEY (`distant_warrior_id`) REFERENCES `conquest_warriors` (`id`),
  CONSTRAINT `conquest_warrior_transformation_ibfk_5` FOREIGN KEY (`collection_type_id`) REFERENCES `types` (`id`),
  CONSTRAINT `conquest_warrior_transformation_chk_1` CHECK ((`is_automatic` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_warrior_transformation`
--

LOCK TABLES `conquest_warrior_transformation` WRITE;
/*!40000 ALTER TABLE `conquest_warrior_transformation` DISABLE KEYS */;
INSERT INTO `conquest_warrior_transformation` VALUES (2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,0,80,NULL,38,NULL,NULL,NULL,NULL,NULL),(5,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,0,80,NULL,38,NULL,NULL,NULL,NULL,NULL),(8,0,80,NULL,2,NULL,NULL,NULL,NULL,NULL),(10,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,0,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,0,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,0,60,NULL,NULL,22,NULL,NULL,NULL,NULL),(19,0,60,NULL,NULL,NULL,NULL,100,NULL,NULL),(21,0,70,8,NULL,NULL,NULL,NULL,NULL,NULL),(23,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,0,60,NULL,NULL,NULL,NULL,NULL,4,NULL),(27,0,75,6,NULL,NULL,NULL,NULL,NULL,NULL),(29,0,60,NULL,30,NULL,NULL,NULL,NULL,NULL),(31,0,75,15,NULL,NULL,NULL,NULL,NULL,NULL),(33,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,0,60,NULL,NULL,NULL,NULL,NULL,8,NULL),(39,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,0,70,NULL,NULL,NULL,NULL,NULL,NULL,50),(43,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,0,60,NULL,NULL,7,NULL,NULL,NULL,NULL),(49,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,0,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,0,60,NULL,NULL,NULL,3,NULL,NULL,NULL),(59,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,0,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,0,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,0,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,0,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,0,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,0,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `conquest_warrior_transformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:22
