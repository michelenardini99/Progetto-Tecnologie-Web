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
-- Table structure for table `pokemon_shape_prose`
--

DROP TABLE IF EXISTS `pokemon_shape_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_shape_prose` (
  `pokemon_shape_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `awesome_name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`pokemon_shape_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_pokemon_shape_prose_name` (`name`),
  CONSTRAINT `pokemon_shape_prose_ibfk_1` FOREIGN KEY (`pokemon_shape_id`) REFERENCES `pokemon_shapes` (`id`),
  CONSTRAINT `pokemon_shape_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_shape_prose`
--

LOCK TABLES `pokemon_shape_prose` WRITE;
/*!40000 ALTER TABLE `pokemon_shape_prose` DISABLE KEYS */;
INSERT INTO `pokemon_shape_prose` VALUES (1,5,'Balle','Pomacé','Pokémon constitués uniquement d\'une tête'),(1,9,'Ball','Pomaceous','Pokémon consisting of only a head'),(1,10,NULL,'Kulatý',NULL),(2,5,'Sinueux','Caudal','Pokémon avec un corps serpentin'),(2,9,'Squiggle','Caudal','Pokémon with serpentine bodies'),(2,10,'Hadovitý','Hadovitý',NULL),(3,5,'Poisson','Ichtyque','Pokémon disposant de nageoires'),(3,9,'Fish','Ichthyic','Pokémon with fins'),(3,10,NULL,'Rybí',NULL),(4,5,'Bras','Brachial','Pokémon constitués d\'une tête et de bras'),(4,9,'Arms','Brachial','Pokémon consisting of a head and arms'),(4,10,'Dvouruký','Dvouruký',NULL),(5,5,'Goutte','Alvin','Pokémon constitués d\'une tête et d\'un corps'),(5,9,'Blob','Alvine','Pokémon consisting of a head and a base'),(5,10,'Kaňka','Kaňka',NULL),(6,5,'Droit','Sciurine','Pokémon bipèdes disposant d\'une queue'),(6,9,'Upright','Sciurine','Pokémon with a bipedal, tailed form'),(6,10,'Vzpřímený','Vzpřímený',NULL),(7,5,'Jambes','Crural','Pokémon constitués d\'une tête et de jambes'),(7,9,'Legs','Crural','Pokémon consisting of a head and legs'),(7,10,'Dvounohý','Dvounohý',NULL),(8,5,'Quadrupède','Mensal','Pokémon quadrupèdes'),(8,9,'Quadruped','Mensal','Pokémon with a quadruped body'),(8,10,'Čtyřnohý','Čtyřnohý',NULL),(9,5,'Ailes','Alaire','Pokémon avec une seule paire d\'aile'),(9,9,'Wings','Alar','Pokémon with a single pair of wings'),(9,10,'Ptačí','Ptačí',NULL),(10,5,'Tentacules','Ciliaire','Pokémon avec des tentacules ou possédant de multiples pattes'),(10,9,'Tentacles','Cilial','Pokémon with tentacles or a multiped body'),(10,10,'Ochapadlený','Ochapadlený',NULL),(11,5,'Têtes','Polycéphale','Pokémon avec un corps multiple'),(11,9,'Heads','Polycephalic','Pokémon consisting of multiple bodies'),(11,10,'Složený','Složený',NULL),(12,5,'Humanoïde','Anthropomorphique','Pokémon bipèdes sans queue'),(12,9,'Humanoid','Anthropomorphic','Pokémon with a bipedal, tailless form'),(12,10,'Antropomorfní','Antropomorfní',NULL),(13,5,'Ailes d\'insecte','Lépidoptère','Pokémon avec deux paires d\'ailes'),(13,9,'Bug wings','Lepidopterous','Pokémon with two or more pairs of wings'),(13,10,'Motýlovitý','Motýlovitý',NULL),(14,5,'Armure','Chitineux','Pokémon avec un corps insectoïde'),(14,9,'Armor','Chitinous','Pokémon with an insectoid body'),(14,10,'Obrněný','Obrněný',NULL);
/*!40000 ALTER TABLE `pokemon_shape_prose` ENABLE KEYS */;
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
