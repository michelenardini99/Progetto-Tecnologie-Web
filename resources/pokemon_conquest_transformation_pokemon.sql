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
-- Table structure for table `conquest_transformation_pokemon`
--

DROP TABLE IF EXISTS `conquest_transformation_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_transformation_pokemon` (
  `transformation_id` int NOT NULL,
  `pokemon_species_id` int NOT NULL,
  PRIMARY KEY (`transformation_id`,`pokemon_species_id`),
  KEY `pokemon_species_id` (`pokemon_species_id`),
  CONSTRAINT `conquest_transformation_pokemon_ibfk_1` FOREIGN KEY (`transformation_id`) REFERENCES `conquest_warrior_transformation` (`transformed_warrior_rank_id`),
  CONSTRAINT `conquest_transformation_pokemon_ibfk_2` FOREIGN KEY (`pokemon_species_id`) REFERENCES `pokemon_species` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_transformation_pokemon`
--

LOCK TABLES `conquest_transformation_pokemon` WRITE;
/*!40000 ALTER TABLE `conquest_transformation_pokemon` DISABLE KEYS */;
INSERT INTO `conquest_transformation_pokemon` VALUES (55,5),(55,6),(43,25),(43,26),(10,39),(10,40),(25,42),(59,64),(59,65),(51,93),(51,94),(21,131),(3,133),(6,133),(3,134),(6,134),(3,135),(6,135),(3,136),(6,136),(21,144),(31,150),(25,169),(3,196),(6,196),(3,197),(6,197),(37,200),(33,204),(33,205),(53,215),(57,253),(57,254),(41,306),(61,361),(69,376),(41,379),(27,383),(12,391),(12,392),(71,394),(71,395),(47,397),(47,398),(17,404),(17,405),(73,411),(37,429),(67,447),(67,448),(53,461),(27,464),(3,470),(6,470),(3,471),(6,471),(31,475),(61,478),(69,483),(19,496),(19,497),(15,502),(15,503),(35,525),(35,526),(23,533),(23,534),(79,552),(79,553),(63,554),(63,555),(39,570),(39,571),(49,575),(49,576),(45,608),(45,609),(77,611),(77,612),(75,624),(75,625),(29,627),(29,628),(8,635),(65,636),(65,637),(73,639),(13,643),(8,644);
/*!40000 ALTER TABLE `conquest_transformation_pokemon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:14
