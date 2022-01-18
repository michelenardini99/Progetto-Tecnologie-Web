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
-- Table structure for table `move_meta_ailment_names`
--

DROP TABLE IF EXISTS `move_meta_ailment_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_meta_ailment_names` (
  `move_meta_ailment_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`move_meta_ailment_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_move_meta_ailment_names_name` (`name`),
  CONSTRAINT `move_meta_ailment_names_ibfk_1` FOREIGN KEY (`move_meta_ailment_id`) REFERENCES `move_meta_ailments` (`id`),
  CONSTRAINT `move_meta_ailment_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_meta_ailment_names`
--

LOCK TABLES `move_meta_ailment_names` WRITE;
/*!40000 ALTER TABLE `move_meta_ailment_names` DISABLE KEYS */;
INSERT INTO `move_meta_ailment_names` VALUES (-1,5,'????'),(-1,9,'????'),(15,5,'Anti-Soin'),(15,7,'Anticura'),(13,7,'Anulación'),(21,7,'Arraigo'),(8,7,'Atrapado'),(7,5,'Attraction'),(0,5,'Aucun'),(17,5,'Aucune immunité aux types'),(14,5,'Bâillement'),(14,7,'Bostezo'),(4,5,'Brûlure'),(4,9,'Burn'),(20,7,'Canto mortal'),(9,5,'Cauchemar'),(6,7,'Confundir'),(6,5,'Confusion'),(6,9,'Confusion'),(3,7,'Congelar'),(13,9,'Disable'),(2,7,'Dormir'),(18,7,'Drenadoras'),(19,5,'Embargo'),(19,7,'Embargo'),(19,9,'Embargo'),(5,5,'Empoisonnement'),(7,7,'Enamorar'),(13,5,'Entrave'),(5,7,'Envenenar'),(3,9,'Freeze'),(3,5,'Gel'),(15,9,'Heal Block'),(7,9,'Infatuation'),(21,9,'Ingrain'),(18,9,'Leech Seed'),(9,7,'Maldito'),(9,9,'Nightmare'),(0,7,'ninguno'),(17,9,'No type immunity'),(0,9,'none'),(1,7,'Parálisis'),(1,5,'Paralysie'),(1,9,'Paralysis'),(1,10,'Paralýza'),(20,9,'Perish Song'),(8,5,'Piège'),(5,9,'Poison'),(4,7,'Quemar'),(21,5,'Racines'),(20,5,'Requiem'),(24,9,'Silence'),(24,7,'Silenciado'),(2,9,'Sleep'),(2,5,'Sommeil'),(2,10,'Spánek'),(42,9,'Tar shot'),(12,9,'Torment'),(12,7,'Tormento'),(12,5,'Tourmente'),(8,9,'Trap'),(18,5,'Vampigraine'),(14,9,'Yawn'),(6,10,'Zmatení');
/*!40000 ALTER TABLE `move_meta_ailment_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:20
