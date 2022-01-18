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
-- Table structure for table `egg_group_prose`
--

DROP TABLE IF EXISTS `egg_group_prose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `egg_group_prose` (
  `egg_group_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`egg_group_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_egg_group_prose_name` (`name`),
  CONSTRAINT `egg_group_prose_ibfk_1` FOREIGN KEY (`egg_group_id`) REFERENCES `egg_groups` (`id`),
  CONSTRAINT `egg_group_prose_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egg_group_prose`
--

LOCK TABLES `egg_group_prose` WRITE;
/*!40000 ALTER TABLE `egg_group_prose` DISABLE KEYS */;
INSERT INTO `egg_group_prose` VALUES (2,8,'Acqua 1'),(12,8,'Acqua 2'),(9,8,'Acqua 3'),(4,5,'Aérien'),(2,7,'Agua 1'),(12,7,'Agua 2'),(9,7,'Agua 3'),(11,7,'Amorfo'),(11,8,'Amorfo'),(11,6,'Amorph'),(11,5,'Amorphe'),(11,9,'Amorphous'),(8,10,'antropoidní'),(2,5,'Aquatique 1'),(12,5,'Aquatique 2'),(9,5,'Aquatique 3'),(11,10,'beztvární'),(3,7,'Bicho'),(3,9,'Bug'),(5,7,'Campo'),(5,8,'Campo'),(3,8,'Coleottero'),(15,7,'Desconocido'),(13,6,'Ditto'),(13,7,'Ditto'),(13,8,'Ditto'),(13,9,'Ditto'),(13,10,'Ditto'),(14,6,'Drache'),(14,5,'Draconique'),(14,8,'Drago'),(14,7,'Dragón'),(14,9,'Dragon'),(7,8,'Erba'),(6,9,'Fairy'),(6,6,'Fee'),(6,5,'Féerique'),(5,6,'Feld'),(5,9,'Field'),(4,6,'Flug'),(4,9,'Flying'),(7,9,'Grass'),(6,7,'Hada'),(8,9,'Human-Like'),(8,5,'Humanoïde'),(8,7,'Humanoide'),(8,6,'Humanotyp'),(15,5,'Inconnu'),(3,5,'Insectoïde'),(3,6,'Käfer'),(6,8,'Magico'),(13,5,'Métamorph'),(10,5,'Minéral'),(10,6,'Mineral'),(10,7,'Mineral'),(10,9,'Mineral'),(10,8,'Minerale'),(10,10,'minerály'),(1,6,'Monster'),(1,9,'Monster'),(1,5,'Monstrueux'),(1,7,'Monstruo'),(1,8,'Mostro'),(15,10,'nekřižitelní'),(15,8,'Non ancora scoperto'),(7,6,'Pflanze'),(7,7,'Planta'),(1,10,'pozemní'),(5,5,'Terrestre'),(8,8,'Umanoide'),(15,6,'Unbekannt'),(15,9,'Undiscovered'),(7,5,'Végétal'),(4,7,'Volador'),(4,8,'Volante'),(2,6,'Wasser 1'),(12,6,'Wasser 2'),(9,6,'Wasser 3'),(2,9,'Water 1'),(12,9,'Water 2'),(9,9,'Water 3'),(10,3,'광물'),(1,3,'괴수'),(14,3,'드래곤'),(13,3,'메타몽'),(3,3,'벌레'),(11,3,'부정형'),(4,3,'비행'),(2,3,'수중 1'),(12,3,'수중 2'),(9,3,'수중 3'),(7,3,'식물'),(15,3,'알미발견'),(6,3,'요정'),(5,3,'육상'),(8,3,'인간형'),(1,1,'かいじゅう'),(10,1,'こうぶつ'),(7,1,'しょくぶつ'),(2,1,'すいちゅう１'),(12,1,'すいちゅう２'),(9,1,'すいちゅう３'),(15,1,'タマゴみはっけん'),(14,1,'ドラゴン'),(4,1,'ひこう'),(8,1,'ひとがた'),(11,1,'ふていけい'),(3,1,'むし'),(13,1,'メタモン'),(6,1,'ようせい'),(5,1,'りくじょう');
/*!40000 ALTER TABLE `egg_group_prose` ENABLE KEYS */;
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
