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
-- Table structure for table `item_pocket_names`
--

DROP TABLE IF EXISTS `item_pocket_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pocket_names` (
  `item_pocket_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`item_pocket_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_item_pocket_names_name` (`name`),
  CONSTRAINT `item_pocket_names_ibfk_1` FOREIGN KEY (`item_pocket_id`) REFERENCES `item_pockets` (`id`),
  CONSTRAINT `item_pocket_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pocket_names`
--

LOCK TABLES `item_pocket_names` WRITE;
/*!40000 ALTER TABLE `item_pocket_names` DISABLE KEYS */;
INSERT INTO `item_pocket_names` VALUES (5,5,'Baies'),(3,5,'Balls'),(7,9,'Battle Items'),(5,7,'Bayas'),(5,9,'Berries'),(5,10,'Bobule'),(3,7,'Bolas'),(6,7,'Correo'),(4,5,'CT & CS'),(6,10,'Dopisy'),(1,9,'Items'),(8,9,'Key Items'),(6,5,'Lettres'),(6,9,'Mail'),(2,5,'Médicaments'),(2,10,'Medicína'),(2,7,'Medicinas'),(2,9,'Medicine'),(4,7,'MT y MO'),(8,5,'Object rares'),(1,7,'Objetos'),(8,7,'Objetos clave'),(7,7,'Objetos de combate'),(1,5,'Objets'),(7,5,'Objets de combat'),(3,9,'Poké Balls'),(3,10,'Poké Bally'),(1,10,'Předměty'),(4,10,'TMka a HMka'),(4,9,'TMs and HMs');
/*!40000 ALTER TABLE `item_pocket_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:11
