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
-- Table structure for table `stat_names`
--

DROP TABLE IF EXISTS `stat_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stat_names` (
  `stat_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`stat_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_stat_names_name` (`name`),
  CONSTRAINT `stat_names_ibfk_1` FOREIGN KEY (`stat_id`) REFERENCES `stats` (`id`),
  CONSTRAINT `stat_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat_names`
--

LOCK TABLES `stat_names` WRITE;
/*!40000 ALTER TABLE `stat_names` DISABLE KEYS */;
INSERT INTO `stat_names` VALUES (7,9,'accuracy'),(2,6,'Angriff'),(2,7,'Ataque'),(4,7,'Ataque Especial'),(2,8,'Attacco'),(4,8,'Attacco Speciale'),(2,9,'Attack'),(2,5,'Attaque'),(4,5,'Attaque Spéciale'),(3,7,'Defensa'),(5,7,'Defensa Especial'),(3,5,'Défense'),(3,9,'Defense'),(5,5,'Défense Spéciale'),(3,8,'Difesa'),(5,8,'Difesa Speciale'),(8,8,'elusione'),(8,5,'Esquive'),(8,7,'Evasión'),(8,9,'evasion'),(8,6,'Fluchtwert'),(7,6,'Genauigkeit'),(1,1,'HP'),(1,3,'HP'),(1,9,'HP'),(1,10,'HP'),(6,6,'Initiative'),(1,6,'KP'),(3,10,'Obranný'),(7,5,'Précision'),(7,7,'Precisión'),(7,8,'precisione'),(1,7,'PS'),(1,8,'PS'),(1,5,'PV'),(6,10,'Rychlost'),(4,9,'Special Attack'),(5,9,'Special Defense'),(6,9,'Speed'),(4,6,'Spezialangriff'),(5,6,'Spezialverteidigung'),(2,10,'Útočný'),(6,7,'Velocidad'),(6,8,'Velocità'),(3,6,'Verteidigung'),(6,5,'Vitesse'),(2,3,'공격'),(7,3,'명중률'),(3,3,'방어'),(6,3,'스피드'),(4,3,'특수공격'),(5,3,'특수방어'),(8,3,'회피율'),(8,1,'かいひ'),(2,1,'こうげき'),(6,1,'すばやさ'),(4,1,'とくこう'),(5,1,'とくぼう'),(3,1,'ぼうぎょ'),(7,1,'めいちゅう');
/*!40000 ALTER TABLE `stat_names` ENABLE KEYS */;
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
