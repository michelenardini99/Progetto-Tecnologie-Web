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
-- Table structure for table `pokemon_move_method_prose`
--

DROP TABLE IF EXISTS `pokemon_move_method_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_move_method_prose` (
  `pokemon_move_method_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`pokemon_move_method_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_pokemon_move_method_prose_name` (`name`),
  CONSTRAINT `pokemon_move_method_prose_ibfk_1` FOREIGN KEY (`pokemon_move_method_id`) REFERENCES `pokemon_move_methods` (`id`),
  CONSTRAINT `pokemon_move_method_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_move_method_prose`
--

LOCK TABLES `pokemon_move_method_prose` WRITE;
/*!40000 ALTER TABLE `pokemon_move_method_prose` DISABLE KEYS */;
INSERT INTO `pokemon_move_method_prose` VALUES (1,6,'Level up','Wird gelernt, wenn ein Pokémon ein bestimmtes Level erreicht.'),(1,7,'Nivel','Se aprende cuando un pokemon alcanza un cierto nivel.'),(1,9,'Level up','Learned when a Pokémon reaches a certain level.'),(1,10,'Úrovní','Učení dosažením určité úrovně.'),(2,6,'Ei','Erscheint bei einem frisch geschlüpften Pokémon, wenn der Vater die selbe Fähigkeit hatte.'),(2,7,'Huevo','Aparece en un Pokémon recién nacido, si el padre tuvo el mismo movimiento.'),(2,9,'Egg','Appears on a newly-hatched Pokémon, if the father had the same move.'),(2,10,'Vajíčkový','Dědí se od otce.'),(3,6,'Tutor','Kann jederzeit von einem NPC erlernt werden.'),(3,7,'Tutor',' Puede ser enseñado en cualquier momento por un NPC.'),(3,9,'Tutor','Can be taught at any time by an NPC.'),(3,10,'Od učitele','Učené nějakou postavou ve hře.'),(4,6,'Maschine','Kann jederzeit durch das benutzen eines TM oder VM erlernt werden.'),(4,7,'Máquina','Se puede enseñar en cualquier momento usando una MT o MO.'),(4,9,'Machine','Can be taught at any time by using a TM or HM.'),(4,10,'Přístrojem','Učené použitím TM nebo HM'),(5,6,'Stadium: Surfendes Pikachu','Wird gelernt, wenn ein Pikachu dabei hilft den Premium-Cup in der Kategorie Meisterball ohne unterbrechung zu besiegen.  Es muss in jedem Kampf teilnehmen.'),(5,9,'Stadium: Surfing Pikachu','Learned when a non-rental Pikachu helps beat Prime Cup Master Ball R-2.  It must participate in every battle, and you must win with no continues.'),(5,10,'Stadium: Surfující Pikachu',NULL),(6,6,'Volttackle Pichu','Erscheint bei einem Pichu dessen Mutter einen Kugelblitz trug.  Der Vater darf nicht Ditto sein.'),(6,9,'Volt Tackle Pichu','Appears on a Pichu whose mother was holding a Light Ball.  The father cannot be Ditto.'),(6,10,'Light Ball','Objeví se u Pichu, jehož matka držela Light Ball. Otec nesmí být Ditto.'),(7,9,'Colosseum: Purification','Appears on a Shadow Pokémon as it becomes increasingly purified.'),(7,10,'Colosseum: Purifikace','Objeví se u „Shadow“ pokémona, jak se mu otevírá srdce.'),(8,9,'XD: Shadow','Appears on a Snatched Shadow Pokémon.'),(8,10,'XD: Stínový útok','U ukradených „Shadow“ pokémonů'),(9,9,'XD: Purification','Appears on a Shadow Pokémon as it becomes increasingly purified.'),(9,10,'XD: Purifikace','Objeví se u „Shadow“ pokémona, jak se mu otevírá srdce.'),(10,6,'Rotom Formen','Erscheint, wenn Rotom seine Form wechselt.  Verschwindet wenn Rotom eine andere Form an nimmt. Diese Fähigkeit kann nur durch wechseln der Form erlernt werden.'),(10,9,'Form Change','Appears when Rotom or Cosplay Pikachu changes form.  Disappears if the Pokémon becomes another form and this move can only be learned by form change.'),(10,10,'Forma Rotoma','Objeví se u Rotoma, když se změní do určité formy.  Zmizí, když se Rotom změní do jiné formy, pokud se tento útok dá naučit jen změnou formy.'),(11,9,'Zygarde Cube','Can be taught using the Zygarde Cube.  Must find the corresponding Zygarde Core first in Sun/Moon.  All moves are available immediately in Ultra Sun/Ultra Moon.');
/*!40000 ALTER TABLE `pokemon_move_method_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:16
