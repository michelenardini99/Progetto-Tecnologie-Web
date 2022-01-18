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
-- Table structure for table `move_damage_class_prose`
--

DROP TABLE IF EXISTS `move_damage_class_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move_damage_class_prose` (
  `move_damage_class_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`move_damage_class_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_move_damage_class_prose_name` (`name`),
  CONSTRAINT `move_damage_class_prose_ibfk_1` FOREIGN KEY (`move_damage_class_id`) REFERENCES `move_damage_classes` (`id`),
  CONSTRAINT `move_damage_class_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_damage_class_prose`
--

LOCK TABLES `move_damage_class_prose` WRITE;
/*!40000 ALTER TABLE `move_damage_class_prose` DISABLE KEYS */;
INSERT INTO `move_damage_class_prose` VALUES (1,1,'へんか','ダメージない'),(1,5,'statut','Aucun dégât'),(1,6,'status','Kein Schaden'),(1,7,'estado','Sin Daño'),(1,9,'status','No damage'),(1,10,'nezraňující','Nezraňuje'),(2,1,'ぶつり','ぶつりのダメージ。こうげきとぼうぎょを行使する'),(2,5,'physique','Dégâts physique, influencés par l\'Attaque et la Défense'),(2,6,'physisch','Physischer Schaden, beeinflusst von Angriff und Verteidigung'),(2,7,'físico','Daño Físico, controlado por el Ataque y Defensa'),(2,9,'physical','Physical damage, controlled by Attack and Defense'),(2,10,'fyzické','Fyzické zranění, řídí se Útokem a Obranou'),(3,1,'とくしゅ','とくしゅのダメージ。とくこうととくぼうを行使する'),(3,5,'spéciale','Dégâts spéciaux, influencés par l\'Attaque Spéciale et la Défense Spéciale'),(3,6,'spezial','Spezieller Schaden, beeinflusst von Spezialangriff und Spezialverteidigung'),(3,7,'especial','Daño Especial, controlado por el Ataque Esecieal y Defensa Especial'),(3,9,'special','Special damage, controlled by Special Attack and Special Defense'),(3,10,'speciální',NULL);
/*!40000 ALTER TABLE `move_damage_class_prose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:20
