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
-- Table structure for table `type_names`
--

DROP TABLE IF EXISTS `type_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_names` (
  `type_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`type_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_type_names_name` (`name`),
  CONSTRAINT `type_names_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  CONSTRAINT `type_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_names`
--

LOCK TABLES `type_names` WRITE;
/*!40000 ALTER TABLE `type_names` DISABLE KEYS */;
INSERT INTO `type_names` VALUES (10001,1,'？？？'),(10001,3,'???'),(10001,5,'???'),(10001,6,'???'),(10001,7,'???'),(10001,8,'???'),(10001,9,'???'),(10001,10,'???'),(9,8,'Acciaio'),(9,7,'Acero'),(9,5,'Acier'),(11,8,'Acqua'),(11,7,'Agua'),(7,7,'Bicho'),(5,6,'Boden'),(2,10,'Bojovný'),(7,9,'Bug'),(17,8,'Buio'),(7,8,'Coleottero'),(2,5,'Combat'),(10002,6,'Crypto'),(17,9,'Dark'),(16,6,'Drache'),(16,10,'Dračí'),(16,8,'Drago'),(16,5,'Dragon'),(16,7,'Dragón'),(16,9,'Dragon'),(8,10,'Duší'),(11,5,'Eau'),(15,6,'Eis'),(13,9,'Electric'),(13,7,'Eléctrico'),(13,5,'Électrik'),(13,10,'Elektrický'),(13,6,'Elektro'),(13,8,'Elettro'),(12,8,'Erba'),(18,9,'Fairy'),(8,7,'Fantasma'),(18,5,'Fée'),(18,6,'Fee'),(10,5,'Feu'),(10,6,'Feuer'),(2,9,'Fighting'),(10,9,'Fire'),(3,6,'Flug'),(3,9,'Flying'),(18,8,'Folletto'),(10,7,'Fuego'),(10,8,'Fuoco'),(8,6,'Geist'),(6,6,'Gestein'),(15,8,'Ghiaccio'),(8,9,'Ghost'),(4,6,'Gift'),(15,5,'Glace'),(12,9,'Grass'),(5,9,'Ground'),(18,7,'Hada'),(15,7,'Hielo'),(7,10,'Hmyzí'),(15,9,'Ice'),(7,5,'Insecte'),(4,10,'Jedovatý'),(7,6,'Käfer'),(6,10,'Kamenný'),(2,6,'Kampf'),(15,10,'Ledový'),(3,10,'Létající'),(2,8,'Lotta'),(2,7,'Lucha'),(1,5,'Normal'),(1,6,'Normal'),(1,7,'Normal'),(1,9,'Normal'),(1,8,'Normale'),(1,10,'Normální'),(10002,5,'Obscur'),(9,10,'Ocelový'),(10,10,'Ohnivý'),(10002,8,'Ombra'),(12,6,'Pflanze'),(12,7,'Planta'),(12,5,'Plante'),(4,5,'Poison'),(4,9,'Poison'),(14,8,'Psico'),(14,7,'Psíquico'),(14,5,'Psy'),(14,9,'Psychic'),(14,10,'Psychický'),(14,6,'Psycho'),(6,7,'Roca'),(6,8,'Roccia'),(6,5,'Roche'),(6,9,'Rock'),(10002,9,'Shadow'),(17,7,'Siniestro'),(5,5,'Sol'),(8,5,'Spectre'),(8,8,'Spettro'),(9,6,'Stahl'),(9,9,'Steel'),(10002,10,'Stínový'),(17,10,'Temný'),(17,5,'Ténèbres'),(5,8,'Terra'),(5,7,'Tierra'),(12,10,'Travní'),(17,6,'Unlicht'),(4,8,'Veleno'),(4,7,'Veneno'),(11,10,'Vodní'),(3,5,'Vol'),(3,7,'Volador'),(3,8,'Volante'),(11,6,'Wasser'),(11,9,'Water'),(5,10,'Zemní'),(9,3,'강철'),(2,3,'격투'),(8,3,'고스트'),(1,3,'노말'),(10002,3,'다크'),(4,3,'독'),(16,3,'드래곤'),(5,3,'땅'),(11,3,'물'),(6,3,'바위'),(7,3,'벌레'),(10,3,'불꽃'),(3,3,'비행'),(17,3,'악'),(15,3,'얼음'),(14,3,'에스퍼'),(13,3,'전기'),(18,3,'페어리'),(12,3,'풀'),(17,1,'あく'),(17,11,'あく'),(6,1,'いわ'),(6,11,'いわ'),(14,1,'エスパー'),(14,11,'エスパー'),(2,1,'かくとう'),(2,11,'かくとう'),(12,1,'くさ'),(12,11,'くさ'),(8,1,'ゴースト'),(8,11,'ゴースト'),(15,1,'こおり'),(15,11,'こおり'),(5,1,'じめん'),(5,11,'じめん'),(10002,1,'ダーク'),(13,1,'でんき'),(13,11,'でんき'),(4,1,'どく'),(4,11,'どく'),(16,1,'ドラゴン'),(16,11,'ドラゴン'),(1,1,'ノーマル'),(1,11,'ノーマル'),(9,1,'はがね'),(9,11,'はがね'),(3,1,'ひこう'),(3,11,'ひこう'),(18,1,'フェアリー'),(18,11,'フェアリー'),(10,1,'ほのお'),(10,11,'ほのお'),(11,1,'みず'),(11,11,'みず'),(7,1,'むし'),(7,11,'むし'),(1,4,'一般'),(1,12,'一般'),(15,4,'冰'),(15,12,'冰'),(5,4,'地面'),(5,12,'地面'),(18,4,'妖精'),(18,12,'妖精'),(6,4,'岩石'),(6,12,'岩石'),(8,12,'幽灵'),(8,4,'幽靈'),(17,12,'恶'),(17,4,'惡'),(2,12,'格斗'),(2,4,'格鬥'),(4,4,'毒'),(4,12,'毒'),(11,4,'水'),(11,12,'水'),(10,4,'火'),(10,12,'火'),(13,12,'电'),(12,4,'草'),(12,12,'草'),(7,12,'虫'),(7,4,'蟲'),(14,4,'超能力'),(14,12,'超能力'),(9,4,'鋼'),(9,12,'钢'),(13,4,'電'),(3,4,'飛行'),(3,12,'飞行'),(16,4,'龍'),(16,12,'龙');
/*!40000 ALTER TABLE `type_names` ENABLE KEYS */;
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
