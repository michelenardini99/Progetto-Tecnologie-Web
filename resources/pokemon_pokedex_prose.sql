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
-- Table structure for table `pokedex_prose`
--

DROP TABLE IF EXISTS `pokedex_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokedex_prose` (
  `pokedex_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`pokedex_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_pokedex_prose_name` (`name`),
  CONSTRAINT `pokedex_prose_ibfk_1` FOREIGN KEY (`pokedex_id`) REFERENCES `pokedexes` (`id`),
  CONSTRAINT `pokedex_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokedex_prose`
--

LOCK TABLES `pokedex_prose` WRITE;
/*!40000 ALTER TABLE `pokedex_prose` DISABLE KEYS */;
INSERT INTO `pokedex_prose` VALUES (1,5,'National','Pokédex National complet'),(1,6,'National','Komplette Nationale Dex'),(1,7,'Nacional','Pokédex Nacional completa'),(1,9,'National','Entire National dex'),(1,10,'Světové','Celostvětový pokédex'),(2,5,'Kanto','Pokédex régional de Kanto dans Rouge/Bleu/Jaune'),(2,6,'Kanto','Rot/Blau/Gelb Kanto Dex'),(2,7,'Kanto','Pokédex regional de Rojo/Azul/Amarillo'),(2,9,'Kanto','Red/Blue/Yellow Kanto dex'),(2,10,'Kanto','Pokédex z Kanta v Red/Blue/Yellow'),(3,5,'Johto initial','Pokédex régional de Johto dans Or/Argent/Cristal, appellé \"Nouveau\" Pokédex dans le jeu'),(3,6,'Original Johto','Gold/Silber/Kristall Johto Dex — Auch der \"Neue\" Pokédex im Spiel genannt'),(3,9,'Original Johto','Gold/Silver/Crystal Johto dex—called the \"New\" Pokédex in-game'),(3,10,'Původní Johto','Gold/Silver/Crystal Johto dex – ve hrách zvaný „New“'),(4,5,'Hoenn initial','Pokédex régional d\'Hoenn dans Rubis/Saphir/Émeraude'),(4,6,'Original Hoenn','Rubin/Saphir/Smaragd Hoenn Dex'),(4,9,'Original Hoenn','Ruby/Sapphire/Emerald Hoenn dex'),(4,10,'Hoennský','Ruby/Sapphire/Emerald Hoennský dex'),(5,5,'Sinnoh initial','Pokédex régional de Sinnoh dans Diamant/Perle'),(5,6,'Original Sinnoh','Diamant/Perl Sinnoh Dex'),(5,9,'Original Sinnoh','Diamond/Pearl Sinnoh dex'),(5,10,NULL,'Diamond/Pearl Sinnohský dex'),(6,5,'Sinnoh étendu','Pokédex régional de Sinnoh dans Platine'),(6,6,'Erweitertes Sinnoh','Platin Sinnoh Dex — eine erweiterte Version von Diamant und Perl'),(6,9,'Extended Sinnoh','Platinum Sinnoh dex—an extended version of Diamond and Pearl\'s'),(6,10,NULL,'Platinum Sinnohský dex—rozšířená verze dexu z Diamond a Pearl'),(7,5,'Johto amélioré','Pokédex régional de Johto dans Or HeartGold/Argent SoulSilver, mis à jour pour la 4ème génération'),(7,6,'Aktualisiertes Johto','HeartGold/SoulSilver Johto Dex — Dex aus Gold/Silber/Kristall um Fähigkeiten basierende Entwicklungen aus Generation IV erweitert'),(7,9,'Updated Johto','HeartGold/SoulSilver Johto dex—Gold/Silver/Crystal\'s, extended to add move-based Generation IV evolutions'),(7,10,NULL,'HeartGold/SoulSilver Johto dex – dex z Gold/Silver/Crystal rozšířený o nové vývoje'),(8,5,'Unys initial','Pokédex régional d\'Unys dans Noir/Blanc'),(8,6,'Original Einall','Schwarz/Weiß Einall Dex'),(8,9,'Original Unova','Black/White Unova dex'),(8,10,NULL,'Black/White Unovský dex'),(9,5,'Unys amélioré','Pokédex régional d\'Unys dans Noir 2/Blanc 2'),(9,6,'Aktualisiertes Einall','Schwarz 2/Weiß 2 Einall Dex'),(9,9,'Updated Unova','Black 2/White 2 Unova dex'),(11,5,'Galerie','Ordre de la Galerie dans Pokémon Conquest'),(11,6,'Gallerie','Pokémon Conquest Galerie Reihenfolge'),(11,9,'Gallery','Pokémon Conquest gallery order'),(12,5,'Kalos : Centre',NULL),(12,6,'Kalos-Zentral',NULL),(12,9,'Central Kalos',NULL),(13,5,'Kalos : Côtes',NULL),(13,6,'Kalos-Küste',NULL),(13,9,'Coastal Kalos',NULL),(14,5,'Kalos : Monts',NULL),(14,6,'Kalos-Gebirge',NULL),(14,9,'Mountain Kalos',NULL),(15,5,'Hoenn amélioré','Pokédex régional d\'Hoenn dans Rubis Oméga/Saphir Alpha, mis à jour pour les nouvelles évolutions'),(15,6,'Neue Hoenn','Omega Rubin/Alpha Saphir Hoenn Dex — Dex aus Rubin/Saphir/Smaragd um Neue Entwicklungen erweitert'),(15,9,'New Hoenn','Omega Ruby/Alpha Sapphire Hoenn Dex—Ruby/Sapphire/Emerald\'s, updated to add new evolutions'),(16,9,'Original Alola','Sun/Moon Alola dex'),(17,9,'Original Melemele','Sun/Moon Melemele dex'),(18,9,'Original Akala','Sun/Moon Akala dex'),(19,9,'Original Ula\'ula','Sun/Moon Ula\'ula dex'),(20,9,'Original Poni','Sun/Moon Poni dex'),(21,9,'Updated Alola','Ultra Sun/Ultra Moon Alola dex'),(22,9,'Updated Melemele','Ultra Sun/Ultra Moon Melemele dex'),(23,9,'Updated Akala','Ultra Sun/Ultra Moon Akala dex'),(24,9,'Updated Ula\'ula','Ultra Sun/Ultra Moon Ula\'ula dex'),(25,9,'Updated Poni','Ultra Sun/Ultra Moon Poni dex'),(26,9,'Let’s Go Kanto','Let’s Go: Pikachu/Let’s Go: Eevee Kanto dex'),(27,9,'Galar',NULL),(28,9,'Isle of Armor',NULL),(29,9,'Crown Tundra',NULL);
/*!40000 ALTER TABLE `pokedex_prose` ENABLE KEYS */;
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
