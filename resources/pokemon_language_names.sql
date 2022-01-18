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
-- Table structure for table `language_names`
--

DROP TABLE IF EXISTS `language_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_names` (
  `language_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`language_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_language_names_name` (`name`),
  CONSTRAINT `language_names_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `language_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_names`
--

LOCK TABLES `language_names` WRITE;
/*!40000 ALTER TABLE `language_names` DISABLE KEYS */;
INSERT INTO `language_names` VALUES (6,7,'Alemán'),(6,5,'Allemand'),(9,5,'Anglais'),(9,10,'Angličtina'),(10,7,'Checo'),(4,9,'Chinese'),(4,6,'Chinesisch'),(4,7,'Chino'),(4,5,'Chinois'),(4,10,'Čínština'),(3,7,'Coreano'),(3,5,'Coréen'),(10,9,'Czech'),(6,6,'Deutsch'),(9,6,'Englisch'),(9,9,'English'),(7,5,'Espagnol'),(7,7,'Español'),(5,5,'Français'),(5,7,'Francés'),(5,10,'Francouzština'),(5,6,'Französisch'),(5,9,'French'),(6,9,'German'),(9,7,'Inglés'),(8,9,'Italian'),(8,7,'Italiano'),(8,5,'Italien'),(8,6,'Italienisch'),(8,10,'Italština'),(1,9,'Japanese'),(1,6,'Japanisch'),(1,5,'Japonais'),(1,7,'Japonés'),(1,10,'Japonština'),(3,9,'Korean'),(3,6,'Koreanisch'),(3,10,'Korejština'),(6,10,'Němčina'),(2,9,'Official roomaji'),(2,5,'Romaji'),(2,6,'Rōmaji'),(7,10,'Španělština'),(7,6,'Spanisch'),(7,9,'Spanish'),(10,5,'Tchèque'),(10,6,'Tschechisch'),(6,3,'도이치어'),(7,3,'스페인어'),(9,3,'영어'),(8,3,'이탈리아어'),(1,3,'일본어'),(2,3,'정식 로마자'),(4,3,'중국어'),(10,3,'체코어'),(5,3,'프랑스어'),(3,3,'한국어'),(10,1,'チェコ語'),(6,1,'ドイツ語'),(5,1,'フランス語'),(4,1,'中国語'),(8,1,'伊語'),(1,1,'日本語'),(2,1,'正式ローマジ'),(9,1,'英語'),(7,1,'西語'),(3,1,'韓国語');
/*!40000 ALTER TABLE `language_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:09
