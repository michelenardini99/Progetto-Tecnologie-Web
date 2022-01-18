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
-- Table structure for table `move_target_prose`
--

DROP TABLE IF EXISTS `move_target_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_target_prose` (
  `move_target_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`move_target_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_move_target_prose_name` (`name`),
  CONSTRAINT `move_target_prose_ibfk_1` FOREIGN KEY (`move_target_id`) REFERENCES `move_targets` (`id`),
  CONSTRAINT `move_target_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_target_prose`
--

LOCK TABLES `move_target_prose` WRITE;
/*!40000 ALTER TABLE `move_target_prose` DISABLE KEYS */;
INSERT INTO `move_target_prose` VALUES (1,6,'Spezifische Fähigkeit','Eine spezifische Fähigkeit.  Wie diese Fähigkeit genutzt wird hängt von den genutzten Fähigkeiten ab.'),(1,9,'Specific move','One specific move.  How this move is chosen depends upon on the move being used.'),(2,6,'Ausgewähltes Pokémon','Ein anderes vom Trainer ausgewähltes Pokémon auf dem Feld.  Gestohlene Fähigkeiten nutzen das selbe Ziel.'),(2,9,'Selected Pokémon','One other Pokémon on the field, selected by the trainer.  Stolen moves reuse the same target.'),(2,10,'Vybraný Pokémon','Druhý Pokémon na bojišti, vybraný trenérem.\n\nUkradené útoky použijí stejný cíl.'),(3,6,'Partner','Die Partner des Anwenders (wenn vorhanden).'),(3,9,'Ally','The user\'s ally (if any).'),(3,10,'Spolubojovník','Spolubojovník uživatele (je-li nějaký).'),(4,6,'Seite des Anwenders','Die Seite des Anwenders auf dem Feld.  Betrifft den Anwender und seine Partner (wenn vorhanden).'),(4,9,'User\'s field','The user\'s side of the field.  Affects the user and its ally (if any).'),(4,10,'Strana uživatele','Uživatelova strana bojiště.\n\nPůsobí na uživatele i jeho spolubojovníky (jsou-li nějací)'),(5,6,'Anwender oder Partner','Entweder der Anwender oder seine Partner. Der Trainer kann es aussuchen.'),(5,9,'User or ally','Either the user or its ally, selected by the trainer.'),(5,10,'Uživatel nebo spolubojovník','Buď uživatel nebo jeho spolubojovník, podle trenéra.'),(6,6,'Gegnerisches Feld','Die andere Seite des Feldes.  Betrifft gegnerische Pokémon.'),(6,9,'Opponent\'s field','The opposing side of the field.  Affects opposing Pokémon.'),(6,10,'Strana protivnika','Opačná strana bojiště.\n\nPůsobí na protivníky.'),(7,6,'Anwender','Der Anwender.'),(7,9,'User','The user.'),(7,10,'Uživatel','Působí na uživatele.'),(8,6,'Zufälliger Gegner','Ein zufälliges gegnerische Pokémon.'),(8,9,'Random opponent','One opposing Pokémon, selected at random.'),(8,10,'Náhodný protivník','Jeden protivník, vybraný náhodně.'),(9,6,'Alle anderen Pokémon','Jedes andere Pokémon auf dem Feld.'),(9,9,'All other Pokémon','Every other Pokémon on the field.'),(9,10,'Všichni ostatní pokémoni','Každý pokémon na poli, kromě uživatele.'),(10,6,'Ausgewähltes Pokémon','Ein anderes Pokémon auf dem Feld, welches vom Trainer ausgewählt wird.'),(10,9,'Selected Pokémon','One other Pokémon on the field, selected by the trainer.'),(10,10,'Vybraný Pokémon','Jeden pokémon na poli kromě uživatele, vybraný trenérem. '),(11,6,'Alle Gegner','Alle gegnerischen Pokémon.'),(11,9,'All opponents','All opposing Pokémon.'),(11,10,'Všichni protivníci','Všichni protivníci.'),(12,6,'Komplette Feld','Das komplette Feld.  Betrifft alle Pokémon.'),(12,9,'Entire field','The entire field.  Affects all Pokémon.'),(13,6,'Anwender und Partner','Der Anwender und seine Partner.'),(13,9,'User and allies','The user and its allies.'),(14,6,'Jedes Pokémon','Jedes Pokémon auf dem Feld.'),(14,9,'All Pokémon','Every Pokémon on the field.');
/*!40000 ALTER TABLE `move_target_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:15
