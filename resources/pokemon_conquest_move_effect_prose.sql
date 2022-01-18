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
-- Table structure for table `conquest_move_effect_prose`
--

DROP TABLE IF EXISTS `conquest_move_effect_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_move_effect_prose` (
  `conquest_move_effect_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `short_effect` text,
  `effect` text,
  PRIMARY KEY (`conquest_move_effect_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `conquest_move_effect_prose_ibfk_1` FOREIGN KEY (`conquest_move_effect_id`) REFERENCES `conquest_move_effects` (`id`),
  CONSTRAINT `conquest_move_effect_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_move_effect_prose`
--

LOCK TABLES `conquest_move_effect_prose` WRITE;
/*!40000 ALTER TABLE `conquest_move_effect_prose` DISABLE KEYS */;
INSERT INTO `conquest_move_effect_prose` VALUES (1,9,'Inflicts exactly 40 HP in damage.','Inflicts exactly 40 HP in damage, unaffected by stats or types.'),(2,9,'Has double power if $target has a major status ailment.','Inflicts regular damage.  Has double power if $target has a major status ailment.'),(3,9,'Doubles in power with each consecutive successful use.','Inflicts regular damage.  Every time this move succeeds, its power doubles; if it fails or is not used for a turn, it resets.'),(4,9,'Ignores $target\'s stat modifiers.','Inflicts damage, ignoring $target\'s stat modifiers.'),(5,9,'Power rises the faster the user is compared to $target.','Inflicts regular damage.  The greater the user\'s Speed compared to $target\'s, the more power this move has.'),(6,9,'Power rises the slower the user is compared to $target.','Inflicts regular damage.  The lower the user\'s Speed compared to $target\'s, the more power this move has.'),(7,9,'Has double power if $target has already taken damage this turn.','Inflicts regular damage.  Has double power if $target has already taken damage this turn.'),(8,9,'Inflicts damage based on $target\'s Attack stat instead of the user\'s.','Inflicts regular damage.  Damage is calculated using $target\'s Attack stat rather than the user\'s.'),(9,9,'Has an increased chance for a critical hit.','Inflicts regular damage.  This move\'s critical hit rate is higher than usual.'),(14,9,'Hits 2 to 5 times in one turn.','Inflicts regular damage.  Hits two to five times in one turn, with damage calculated separately each time.'),(15,9,'Hits 4 to 5 times in one turn.','Inflicts regular damage.  Hits four to five times in one turn, with damage calculated separately each time.'),(16,9,'Digs underground and hits at the beginning of the next turn.','Inflicts regular damage.  The user digs underground, dodging all moves until it attacks.  At the beginning of the next turn, the user hits $target, even if $target has moved, and cannot move again that turn.'),(17,9,'Lifts $target into the sky and hits at the beginning of the next turn.','Inflicts regular damage.  The user carries $target into the sky.  No moves can hit either Pokémon in this state.  At the beginning of the next turn, the user slams $target to the ground, inflicting regular damage.  The user cannot move again that turn.'),(18,9,'Hits $target at the beginning of the turn after next.','Inflicts regular damage.  Hits $target at the beginning of the user\'s turn two turns after this one, even if the target has moved.\n\nIn the turn in-between, the user can use this move again, but it will miss any target that already has a Future Sight pending.'),(19,9,'User moves back one tile, switching places with any Pokémon already there.','Inflicts regular damage.'),(20,9,'Switches $target with the Pokémon behind it.','Inflicts regular damage.'),(21,9,'Heals the user by half the damage dealt.','Inflicts regular damage.  The user heals for half as many HP as it dealt in damage.'),(22,9,'Teleports randomly.','The user teleports randomly to another tile.'),(23,9,'Cannot be used the turn after hitting.','Inflicts regular damage.  If the move succeeds, it cannot be used again on the next turn.'),(25,9,'Lowers the user\'s range and Defense until its next turn.','Inflicts regular damage.  The user\'s Defense is lowered and its range is lowered to one tile until the beginning of its next turn.'),(26,9,'Damages the user if it misses.','Inflicts regular damage.  If this move misses, the user takes some damage.'),(28,9,'Has a $effect_chance% chance to raise the user\'s Attack.','Inflicts regular damage.  Has a $effect_chance% chance to raise the user\'s Attack afterward.'),(29,9,'Lowers the user\'s Attack.','Inflicts regular damage.  Lowers the user\'s Attack afterward.'),(30,9,'Has a $effect_chance% chance to lower $target\'s Defense.','Inflicts regular damage.  Has a $effect_chance% chance to lower $target\'s Defense afterward.'),(33,9,'Has a $effect_chance% chance to lower $target\'s Speed.','Inflicts regular damage.  Has a $effect_chance% chance to lower $target\'s Speed afterward.'),(36,9,'Has a $effect_chance% chance to lower $target\'s accuracy.','Inflicts regular damage.  Has a $effect_chance% chance to lower $target\'s accuracy.'),(37,9,'Has a $effect_chance% chance to paralyze $target.','Inflicts regular damage.  Has a $effect_chance% chance to paralyze $target.'),(38,9,'Puts $target to sleep.','Puts $target to sleep.'),(39,9,'Has a $effect_chance% chance to poison $target.','Inflicts regular damage.  Has a $effect_chance% chance to poison $target.'),(40,9,'Has a $effect_chance% chance to badly poison $target.','Inflicts regular damage.  Has a $effect_chance% chance to badly poison $target.'),(41,9,'Has a $effect_chance% chance to burn $target.','Inflicts regular damage.  Has a $effect_chance% chance to burn $target.'),(42,9,'Has a $effect_chance% chance to freeze $target.','Inflicts regular damage.  Has a $effect_chance% chance to freeze $target.'),(43,9,'Has a $effect_chance% chance to confuse $target.','Inflicts regular damage.  Has a $effect_chance% chance to confuse $target.'),(44,9,'Has a $effect_chance% chance to make $target flinch.','Inflicts regular damage.  Has a $effect_chance% chance to make $target flinch.'),(47,9,'Permanently destroys $target\'s item if it is consumable.','Inflicts regular damage.  Permanently destroys $target\'s item if the item can be consumed in battle.'),(48,9,'Has double power against Pokémon with less than half their max HP remaining.','Inflicts regular damage.  Has double power when calculating damage against a target with less than half its max HP remaining, on a target-by-target basis.'),(49,9,'Has double power against poisoned Pokémon.','Inflicts regular damage.  Has double power when calculating damage against a poisoned target, on a target-by-target basis.'),(51,9,'Uses $target\'s item if it is consumable.','Inflicts regular damage.  The user steals $target\'s item, if the item can be consumed in battle, and uses it on itself, or destroys it if it would have no effect.'),(52,9,'Never misses.','Inflicts regular damage.  Always has 100% accuracy.\n\nThis move still misses Pokémon under the effects of []{move:dig} or []{move:sky-drop} and can still be dodged by abilities such as []{ability:instinct}.'),(58,9,'Has a $effect_chance% chance to lower $target\'s range by one tile.','Inflicts regular damage.  Has a $effect_chance% chance to lower $target\'s range by one tile.'),(59,9,'Lowers the user\'s Attack and Defense.','Inflicts regular damage.  Lowers the user\'s Attack and Defense afterward.'),(60,9,'Inflicts regular damage with no additional effect.','Inflicts regular damage.'),(61,9,'Has a $effect_chance% chance each to burn $target or make it flinch.','Inflicts regular damage.  Has a $effect_chance% chance to burn $target, and a $effect_chance% chance, separately rolled, to make $target flinch.'),(62,9,'Has a $effect_chance% chance to burn $target.  Thaws the user out if frozen.','Inflicts regular damage.  Has a $effect_chance% chance to burn $target.  Can be used if the user is frozen, in which case it thaws out.'),(63,9,'Lowers the user\'s range and Defense until its next turn.  Has a $effect_chance% chance to paralyze $target.','Inflicts regular damage.  The user\'s Defense is lowered and its range is lowered to one tile until the beginning of its next turn.  Has a $effect_chance% chance to paralyze $target.'),(64,9,'Hits 2 to 3 times in one turn.  User has 0 range on its next turn.','Inflicts regular damage.  Hits two to three times in one turn, with damage calculated separately for each hit.  The user\'s range is lowered to 0 on its next turn.'),(65,9,'Has double power and wakes $target up if it is asleep.','Inflicts regular damage.  If $target is asleep, this move has double power and wakes $target up.'),(66,9,'Has a $effect_chance% chance to poison $target and an increased chance for a critical hit.','Inflicts damage.  Has a $effect_chance% chance to poison $target.  This move\'s critical hit rate is higher than usual.'),(67,9,'Heals the user by half the damage inflicted.  Only works if $target is asleep.','Inflicts damage if $target is asleep, and fails otherwise.  Heals the user for half as many HP as it dealt in damage.'),(68,9,'Hits twice in one turn.  Has a $effect_chance% chance to poison $target with each hit.','Inflicts regular damage.  Hits twice in one turn.  Has a $effect_chance% chance to poison $target with each hit.'),(69,9,'Does nothing.','Does nothing.');
/*!40000 ALTER TABLE `conquest_move_effect_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:23
