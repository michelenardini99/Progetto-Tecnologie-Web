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
-- Table structure for table `move_flag_prose`
--

DROP TABLE IF EXISTS `move_flag_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_flag_prose` (
  `move_flag_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`move_flag_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_move_flag_prose_name` (`name`),
  CONSTRAINT `move_flag_prose_ibfk_1` FOREIGN KEY (`move_flag_id`) REFERENCES `move_flags` (`id`),
  CONSTRAINT `move_flag_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_flag_prose`
--

LOCK TABLES `move_flag_prose` WRITE;
/*!40000 ALTER TABLE `move_flag_prose` DISABLE KEYS */;
INSERT INTO `move_flag_prose` VALUES (1,6,'Kontakt','Der Anwender berührt das Ziel.  Dies löst mahcne Fähigkeiten aus (z.B. []{ability:static}) und Gegenstände (z.B. []{item:sticky-barb}).'),(1,9,'Makes contact','User touches the target.  This triggers some abilities (e.g., []{ability:static}) and items (e.g., []{item:sticky-barb}).'),(1,10,'Způsobí dotek','Uživatel se dotkne cíle.  Toto zaktivuje některé schopnosti (např. []{ability:static}) a věci (např. []{item:sticky-barb}).'),(2,6,'Hat eine Aufladerunde','Diese Fähigkeit hat eine Aufladerunde, welche mit einer []{item:power-herb} übersprungen werden kann.'),(2,9,'Has a charging turn','This move has a charging turn that can be skipped with a []{item:power-herb}.'),(2,10,'Má nabíjecí kolo','Tento útok má nabíjecí kolo, které lze přeskočit pomocí []{item:power-herb}.'),(3,6,'Muss aufladen','Die Runde nach dieser Fähigkeit wird benötigt, damit das Pokémon sich aufladen kann.'),(3,9,'Must recharge','The turn after this move is used, the Pokémon\'s action is skipped so it can recharge.'),(3,10,'Má dobíjecí kolo','Kolo po použití tohoto útoku přeskočí Pokémon svůj tah, aby se mohl dobít.'),(4,6,'Blockiert von Scanner and Schutzschild','Diese Fähigkeit funktioniert nicht, wenn das Ziel []{move:detect} oder []{move:protect} diese Runde genutzt hat.'),(4,9,'Blocked by Detect and Protect','This move will not work if the target has used []{move:detect} or []{move:protect} this turn.'),(4,10,'Blokované Detectem a Protectem','Tento útok nebude fungovat, použil-li cíl toto kolo []{move:detect} či [protect]{move:protect}.'),(5,6,'Reflektierbar','Diese Fähigkeit könnte reflektiert mit []{move:magic-coat} oder []{ability:magic-bounce} reflektiert werden.'),(5,9,'Reflectable','This move may be reflected back at the user with []{move:magic-coat} or []{ability:magic-bounce}.'),(5,10,'Odrazitelný',NULL),(6,6,'Übernehmbar','Diese Fähigkeit kann übernommen werden, wenn ein anderes Pokémon []{move:snatch} diese Runde nutzt.'),(6,9,'Snatchable','This move will be stolen if another Pokémon has used []{move:snatch} this turn.'),(6,10,'Ukradnutelný','Tento útok bude ukraden, pokud jiný Pokémon toto kolo použil []{move:snatch}'),(7,6,'Kopierbar von Spiegeltrick','Ein von dieser Fähigkeit getroffenes Pokémon kann []{move:mirror-move} nutzen um diese Fähigkeit zu kopieren.'),(7,9,'Copied by Mirror Move','A Pokémon targeted by this move can use []{move:mirror-move} to copy it.'),(7,10,'Kopírovatelný Mirror Movem','Pokémon co je cílem tohoto útoku ho může zkopírovat pomocí []{move:mirror-move}'),(8,6,'Hieb basierend','Diese Fähigkeit hat die 1.2× Kraft, wenn es von einem Pokémon mit []{ability:iron-fist} genutzt wird.'),(8,9,'Punch-based','This move has 1.2× its usual power when used by a Pokémon with []{ability:iron-fist}.'),(8,10,'Úderový',NULL),(9,6,'Sound basierend','Pokémon mit []{ability:soundproof} sind immun gegen diese Fähigkeit.'),(9,9,'Sound-based','Pokémon with []{ability:soundproof} are immune to this move.'),(9,10,'Zvukový','Pokémoni s []{ability:soundproof} jsou proti tomuto útoku odolní.'),(10,6,'Nicht nutzbar bei hoher Erdanziehung','Diese Fähigkeit kann nicht bei hoher []{move:gravity} genutzt werden.'),(10,9,'Unusable during Gravity','This move cannot be used in high []{move:gravity}.'),(10,10,'Nepoužitelný s Gravitací','Tento útok nelze použít při [zvýšené gravitaci]{move:gravity} '),(11,6,'Enteist bei benutzung','Diese Fähigkeit kann genutzt werden, wenn das Pokémon vereist ist um es zu enteisen.'),(11,9,'Defrosts when used','This move can be used while frozen to force the Pokémon to defrost.'),(11,10,'Rozmrazí při použití','Tento útok může zmražený pokémon použít k rozmrznutí.'),(12,6,'Trifft gegenüber liegende Seite in 3er Kämpfen','In 3er Kämpfen trifft diese Fähigkeit den entferntesten Gegner.'),(12,9,'Targets opposite side in triples','In triple battles, this move can be used on either side to target the farthest away opposing Pokémon.'),(13,6,'Heilt','Diese Fähigkeit wird von []{move:heal-block} blockiert.'),(13,9,'Heals','This move is blocked by []{move:heal-block}.'),(13,10,'Léčí','Tento útok bude blokován pomocí []{move:heal-block}.'),(14,6,'Ignoriert Delegator','Diese Fähigkeit ignoriert den []{move:substitute} des Ziels.'),(14,9,'Ignores Substitute','This move ignores the target\'s []{move:substitute}.'),(15,6,'Pulver basierend','Pokémon mit []{ability:overcoat} und []{type:grass}-Pokémon sind immun gegen diese Fähigkeit.'),(15,9,'Powder-based','Pokémon with []{ability:overcoat} and []{type:grass}-type Pokémon are immune to this move.'),(16,6,'Kiefer basierend','Diese Fähigkeit hat die 1.5× Kraft, wenn sie von einem Pokémon mit []{ability:strong-jaw} genutzt wird.'),(16,9,'Jaw-based','This move has 1.5× its usual power when used by a Pokémon with []{ability:strong-jaw}.'),(17,6,'Megawumme basierend','Diese Fähigkeit hat die 1.5× Kraft, wenn sie von einem Pokémon mit []{ability:mega-launcher} genutzt wird.'),(17,9,'Pulse-based','This move has 1.5× its usual power when used by a Pokémon with []{ability:mega-launcher}.'),(18,6,'Ballistik basierend','Diese Fähigkeit wird von []{ability:bulletproof} blockiert.'),(18,9,'Ballistics-based','This move is blocked by []{ability:bulletproof}.'),(19,6,'Psychische Effekte','Diese Fähigkeit wird durch []{ability:aroma-veil} blockiert und wird durch []{item:mental-herb} geheilt.'),(19,9,'Mental effects','This move is blocked by []{ability:aroma-veil} and cured by []{item:mental-herb}.'),(20,6,'Nicht Nutzbar in Himmelskämpfen','Diese Fähigkeit ist in Himmelskämpfen nicht nutzbar.'),(20,9,'Unusable during Sky Battles','This move is unusable during Sky Battles.'),(21,9,'Dance','This move triggers []{ability:dancer}.');
/*!40000 ALTER TABLE `move_flag_prose` ENABLE KEYS */;
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
