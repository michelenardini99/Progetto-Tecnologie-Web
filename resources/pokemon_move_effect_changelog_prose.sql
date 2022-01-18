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
-- Table structure for table `move_effect_changelog_prose`
--

DROP TABLE IF EXISTS `move_effect_changelog_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_effect_changelog_prose` (
  `move_effect_changelog_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `effect` text NOT NULL,
  PRIMARY KEY (`move_effect_changelog_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `move_effect_changelog_prose_ibfk_1` FOREIGN KEY (`move_effect_changelog_id`) REFERENCES `move_effect_changelog` (`id`),
  CONSTRAINT `move_effect_changelog_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_effect_changelog_prose`
--

LOCK TABLES `move_effect_changelog_prose` WRITE;
/*!40000 ALTER TABLE `move_effect_changelog_prose` DISABLE KEYS */;
INSERT INTO `move_effect_changelog_prose` VALUES (1,9,'Halves the target\'s [Defense]{mechanic:defense} for damage calculation, which is similar to doubling the attack\'s [power]{mechanic:power}.'),(2,9,'Hits Pokémon under the effects of []{move:dig} and []{move:fly}.'),(3,9,'Does nothing in trainer battles.'),(4,9,'Works while asleep through []{move:sleep-talk} if not at full health.'),(5,9,'If this move misses, the user takes 1 point of damage in recoil.'),(6,9,'If this move misses, the user takes half of the damage it would have inflicted in recoil.'),(7,9,'Locks the user into this move.  Due to a bug, if this move misses, its [accuracy]{mechanic:accuracy} drops to 1/256 as long as the user is still locked in.'),(8,9,'Can call any move except for []{move:struggle} and itself.'),(9,9,'Does not interact with []{move:stomp}.'),(10,9,'Raises [evasion]{mechanic:evasion} by one stage.'),(11,9,'Does not raise [Defense]{mechanic:defense}.'),(12,9,'Does not hit Pokémon under the effects of []{move:dig}.'),(13,9,'Does not hit Pokémon under the effects of []{move:fly}.'),(14,9,'Does not interact with []{move:minimize}.'),(15,9,'Does not hit Pokémon under the effects of []{move:fly}.'),(16,9,'Determines damage using each participant\'s base [Attack]{mechanic:attack} and the opponent\'s base [Defense]{mechanic:defense} in place of calculated stats.'),(17,9,'[]{move:swift} can hit the user while in the air, and no other moves can.  Due to a bug, if the user fails to carry out the move\'s second turn, e.g. due to [paralysis]{mechanic:paralysis}, it remains in the air until it switches out or uses Fly again successfully.  It can act as if it were on the ground in the meantime, but moves still miss it.'),(18,9,'Does not raise [Defense]{mechanic:defense} or [Special Defense]{mechanic:special-defense}.'),(19,9,'Does not raise the user\'s [Special Defense]{mechanic:special-defense}.'),(20,9,'Heals replacement Pokémon by half of their max HP.'),(21,9,'Inflicts []{type:normal}-type damage.'),(22,9,'[]{move:swift} can hit the user while underground, and no other moves can.  Due to a bug, if the user fails to carry out the move\'s second turn, e.g. due to [paralysis]{mechanic:paralysis}, it remains underground until it switches out or uses Dig again successfully.  It can act as if it were aboveground in the meantime, but moves still miss it.'),(23,9,'Does not interact with []{move:hail}.'),(24,9,'Ignores []{ability:wonder-guard}.'),(25,9,'Lasts either two or three turns.'),(26,9,'If the target is not under the effect of []{move:detect} or []{move:protect}, this move will fail.'),(27,9,'The user receieves 1/2 of the damage dealt in recoil.'),(28,9,'The barriers are destroyed even if this move has [no effect]{mechanic:no-effect}.');
/*!40000 ALTER TABLE `move_effect_changelog_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:07
