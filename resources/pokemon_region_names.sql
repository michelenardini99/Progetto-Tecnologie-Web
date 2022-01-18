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
-- Table structure for table `region_names`
--

DROP TABLE IF EXISTS `region_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region_names` (
  `region_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`region_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_region_names_name` (`name`),
  CONSTRAINT `region_names_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  CONSTRAINT `region_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_names`
--

LOCK TABLES `region_names` WRITE;
/*!40000 ALTER TABLE `region_names` DISABLE KEYS */;
INSERT INTO `region_names` VALUES (7,9,'Alola'),(5,6,'Einall'),(8,9,'Galar'),(3,5,'Hoenn'),(3,6,'Hoenn'),(3,8,'Hoenn'),(3,9,'Hoenn'),(2,5,'Johto'),(2,6,'Johto'),(2,8,'Johto'),(2,9,'Johto'),(6,5,'Kalos'),(6,6,'Kalos'),(6,8,'Kalos'),(6,9,'Kalos'),(1,5,'Kanto'),(1,6,'Kanto'),(1,8,'Kanto'),(1,9,'Kanto'),(4,5,'Sinnoh'),(4,6,'Sinnoh'),(4,8,'Sinnoh'),(4,9,'Sinnoh'),(5,8,'Unima'),(5,9,'Unova'),(5,10,'Unovský'),(5,5,'Unys'),(1,3,'관동지방'),(2,3,'성도지방'),(4,3,'신오지방'),(6,3,'칼로스지방'),(5,3,'하나지방'),(3,3,'호연지방'),(5,1,'イッシュ地方'),(6,1,'カロス地方'),(1,1,'カントー地方'),(2,1,'ジョウト地方'),(4,1,'シンオウ地方'),(3,1,'ホウエン地方');
/*!40000 ALTER TABLE `region_names` ENABLE KEYS */;
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
