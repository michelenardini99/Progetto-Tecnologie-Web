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
-- Table structure for table `pokedexes`
--

DROP TABLE IF EXISTS `pokedexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokedexes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int DEFAULT NULL,
  `identifier` varchar(79) NOT NULL,
  `is_main_series` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `pokedexes_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`),
  CONSTRAINT `pokedexes_chk_1` CHECK ((`is_main_series` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokedexes`
--

LOCK TABLES `pokedexes` WRITE;
/*!40000 ALTER TABLE `pokedexes` DISABLE KEYS */;
INSERT INTO `pokedexes` VALUES (1,NULL,'national',1),(2,1,'kanto',1),(3,2,'original-johto',1),(4,3,'hoenn',1),(5,4,'original-sinnoh',1),(6,4,'extended-sinnoh',1),(7,2,'updated-johto',1),(8,5,'original-unova',1),(9,5,'updated-unova',1),(11,NULL,'conquest-gallery',0),(12,6,'kalos-central',1),(13,6,'kalos-coastal',1),(14,6,'kalos-mountain',1),(15,3,'updated-hoenn',1),(16,7,'original-alola',1),(17,7,'original-melemele',1),(18,7,'original-akala',1),(19,7,'original-ulaula',1),(20,7,'original-poni',1),(21,7,'updated-alola',1),(22,7,'updated-melemele',1),(23,7,'updated-akala',1),(24,7,'updated-ulaula',1),(25,7,'updated-poni',1),(26,1,'letsgo-kanto',1),(27,8,'galar',1),(28,8,'isle-of-armor',1),(29,8,'crown-tundra',1);
/*!40000 ALTER TABLE `pokedexes` ENABLE KEYS */;
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
