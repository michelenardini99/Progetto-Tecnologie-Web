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
-- Table structure for table `conquest_episode_names`
--

DROP TABLE IF EXISTS `conquest_episode_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_episode_names` (
  `episode_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`episode_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_conquest_episode_names_name` (`name`),
  CONSTRAINT `conquest_episode_names_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `conquest_episodes` (`id`),
  CONSTRAINT `conquest_episode_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_episode_names`
--

LOCK TABLES `conquest_episode_names` WRITE;
/*!40000 ALTER TABLE `conquest_episode_names` DISABLE KEYS */;
INSERT INTO `conquest_episode_names` VALUES (16,7,'¡Tiempo para la Batalla!'),(32,9,'A Date with Destiny'),(36,9,'A Fate Born of Beauty'),(14,9,'A Ninja amongst Ninjas'),(9,9,'A Shroud of Darkness'),(22,9,'All Grown Up'),(15,9,'Archenemies'),(15,7,'Archienemigos'),(36,7,'Belleza Destino de Nacimiento'),(21,7,'Belleza Legendaria de Ransei'),(20,9,'Blowing in the Wind'),(31,7,'Dejando Abajo los Libros'),(8,7,'Determinación Trágica'),(38,7,'Dos Héroes de Ransei'),(18,7,'El Amor es un Campo de Batalla'),(5,7,'El Camino del Guerrero'),(2,7,'El Camino hacia la Conquista'),(12,7,'El Genio Renuente'),(13,7,'El Guerrero Incomparable'),(4,7,'El Peso de la Paz'),(23,7,'El Rebelde'),(37,7,'El Sendero del Espíritu Libre'),(30,7,'El Sueño del Dragón'),(11,7,'Enseñándoles una Lección'),(24,7,'Eso que el Querido Sostiene'),(33,7,'Esta va para mis Fans'),(3,7,'Felices por Siempre'),(28,9,'Grace and Beauty'),(28,7,'Gracia y Belleza'),(3,9,'Happily Ever After'),(6,7,'La Alegría de la Batalla'),(19,7,'La Apuesta Final'),(1,7,'La Leyenda de Ransei'),(27,7,'La Misión del Visionario'),(26,7,'La Rosa de Ransei'),(17,9,'Land of Love and Righteousness'),(18,9,'Love is a Battlefield'),(10,7,'No Vale la Pena Pelear por... 1'),(25,7,'No Vale la Pena Pelear por... 2'),(35,7,'No Vale la Pena Pelear por... 3'),(10,9,'Not Worth Fighting Over... 1'),(25,9,'Not Worth Fighting Over... 2'),(35,9,'Not Worth Fighting Over... 3'),(7,7,'Orgullo y Precocidad'),(29,9,'Pokémari and Me'),(29,7,'Pokémari y Yo'),(7,9,'Pride and Precociousness'),(31,9,'Putting the Books Down'),(21,9,'Ransei\'s Legendary Beauty'),(34,7,'Simplemente lo Mejor'),(34,9,'Simply the Best'),(20,7,'Soplando en el Viento'),(11,9,'Teaching Them a Lesson'),(24,9,'That Which He Holds Dear'),(4,9,'The Burden of Peace'),(30,9,'The Dragon\'s Dream'),(19,9,'The Final Gamble'),(37,9,'The Free Spirit\'s Path'),(6,9,'The Joy of Battle'),(1,9,'The Legend of Ransei'),(23,9,'The Rebel'),(12,9,'The Reluctant Genius'),(2,9,'The Road to Conquest'),(26,9,'The Rose of Ransei'),(13,9,'The Unparalleled Warrior'),(27,9,'The Visionary\'s Quest'),(5,9,'The Way of the Warrior'),(33,9,'This One Goes Out to My Fans'),(17,7,'Tierra de Amor y Honradez'),(16,9,'Time for Battle!'),(22,7,'Todo Crece'),(8,9,'Tragic Determination'),(38,9,'Two Heroes of Ransei'),(9,7,'Un Manto de Oscuridad'),(14,7,'Un Ninja entre Ninjas'),(32,7,'Una Cita con el Destino');
/*!40000 ALTER TABLE `conquest_episode_names` ENABLE KEYS */;
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
