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
-- Table structure for table `conquest_move_displacement_prose`
--

DROP TABLE IF EXISTS `conquest_move_displacement_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_move_displacement_prose` (
  `move_displacement_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `short_effect` text,
  `effect` text,
  PRIMARY KEY (`move_displacement_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  CONSTRAINT `conquest_move_displacement_prose_ibfk_1` FOREIGN KEY (`move_displacement_id`) REFERENCES `conquest_move_displacements` (`id`),
  CONSTRAINT `conquest_move_displacement_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_move_displacement_prose`
--

LOCK TABLES `conquest_move_displacement_prose` WRITE;
/*!40000 ALTER TABLE `conquest_move_displacement_prose` DISABLE KEYS */;
INSERT INTO `conquest_move_displacement_prose` VALUES (1,9,'Advance one tile','User advances one tile.','The user moves to the tile directly in front of it.  If the user cannot move to that tile or another Pokémon is already occupying that tile, the move cannot be used.'),(2,9,'Advance two tiles','User jumps ahead two tiles.','The user jumps ahead two tiles without crossing the tile in-between.  If the user cannot move to that tile or another Pokémon is already occupying that tile, the move cannot be used.'),(3,9,'Switch back','User retreats one tile, switching places with any Pokémon already there.','The user moves to the tile behind it, if it can move to that tile.  If another Pokémon is already occupying that tile, the user switches places with it.'),(4,9,'Knockback','Deals knockback.','$Target is knocked one tile backward in the direction the user is facing, if that tile is one it can move to and if no other Pokémon is already occupying that tile.'),(5,9,'Knockback & switch','Deals knockback, switching $target with the Pokémon behind it if applicable.','$Target is knocked one tile backward in the direction the user is facing, if that tile is one it can move to.  If another Pokémon is already occupying that tile, the Pokémon switch places.');
/*!40000 ALTER TABLE `conquest_move_displacement_prose` ENABLE KEYS */;
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
