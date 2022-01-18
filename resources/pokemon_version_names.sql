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
-- Table structure for table `version_names`
--

DROP TABLE IF EXISTS `version_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `version_names` (
  `version_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`version_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_version_names_name` (`name`),
  CONSTRAINT `version_names_ibfk_1` FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`),
  CONSTRAINT `version_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version_names`
--

LOCK TABLES `version_names` WRITE;
/*!40000 ALTER TABLE `version_names` DISABLE KEYS */;
INSERT INTO `version_names` VALUES (26,6,'Alpha Saphir'),(26,9,'Alpha Sapphire'),(3,7,'Amarillo'),(5,5,'Argent'),(16,5,'Argent SoulSilver'),(5,8,'Argento'),(16,8,'Argento SoulSilver'),(2,7,'Azul'),(18,8,'Bianca'),(22,8,'Bianca 2'),(18,10,'Bílá'),(17,9,'Black'),(21,9,'Black 2'),(18,5,'Blanc'),(22,5,'Blanc 2'),(18,7,'Blanco'),(22,7,'Blanco 2'),(11,6,'Blattgrün'),(2,6,'Blau'),(2,5,'Bleu'),(2,8,'Blu'),(2,9,'Blue'),(17,10,'Černá'),(1,10,'Červená'),(19,5,'Colosseum'),(19,6,'Colosseum'),(19,7,'Colosseum'),(19,8,'Colosseum'),(19,9,'Colosseum'),(6,5,'Cristal'),(6,7,'Cristal'),(6,8,'Cristallo'),(6,9,'Crystal'),(12,5,'Diamant'),(12,6,'Diamant'),(12,7,'Diamante'),(12,8,'Diamante'),(12,10,'Diamantová'),(12,9,'Diamond'),(9,9,'Emerald'),(9,5,'Émeraude'),(9,7,'Esmeralda'),(10,6,'Feuerrot'),(10,9,'FireRed'),(3,6,'Gelb'),(3,8,'Gialla'),(4,6,'Gold'),(4,9,'Gold'),(15,6,'HeartGold'),(15,9,'HeartGold'),(3,5,'Jaune'),(6,6,'Kristall'),(6,10,'Krystalová'),(11,9,'LeafGreen'),(32,9,'Let’s Go, Eevee!'),(31,9,'Let’s Go, Pikachu!'),(11,10,'ListoZelená'),(28,7,'Luna'),(28,8,'Luna'),(28,5,'Lune'),(2,10,'Modrá'),(28,6,'Mond'),(28,9,'Moon'),(17,7,'Negro'),(21,7,'Negro 2'),(17,8,'Nera'),(21,8,'Nera 2'),(17,5,'Noir'),(21,5,'Noir 2'),(10,10,'OhnňoČervená'),(25,6,'Omega Rubin'),(25,9,'Omega Ruby'),(4,5,'Or'),(15,5,'Or HeartGold'),(4,7,'Oro'),(4,8,'Oro'),(15,7,'Oro HeartGold'),(15,8,'Oro HeartGold'),(13,9,'Pearl'),(13,6,'Perl'),(13,7,'Perla'),(13,8,'Perla'),(13,5,'Perle'),(13,10,'Perlová'),(5,7,'Plata'),(16,7,'Plata SoulSilver'),(14,6,'Platin'),(14,5,'Platine'),(14,7,'Platino'),(14,8,'Platino'),(14,10,'Platinová'),(14,9,'Platinum'),(1,9,'Red'),(1,7,'Rojo'),(10,7,'Rojo Fuego'),(1,8,'Rossa'),(10,8,'Rosso Fuoco'),(1,6,'Rot'),(1,5,'Rouge'),(10,5,'Rouge Feu'),(7,7,'Rubí'),(25,7,'Rubí Omega'),(7,6,'Rubin'),(7,8,'Rubino'),(25,8,'Rubino Omega'),(7,10,'Rubínová'),(7,5,'Rubis'),(25,5,'Rubis Oméga'),(7,9,'Ruby'),(8,10,'Safírová'),(8,5,'Saphir'),(8,6,'Saphir'),(26,5,'Saphir Alpha'),(8,9,'Sapphire'),(17,6,'Schwarz'),(21,6,'Schwarz 2'),(34,9,'Shield'),(5,6,'Silber'),(5,9,'Silver'),(9,6,'Smaragd'),(9,10,'Smaragdová'),(9,8,'Smeraldo'),(27,7,'Sol'),(27,8,'Sole'),(27,5,'Soleil'),(27,6,'Sonne'),(16,6,'SoulSilver'),(16,9,'SoulSilver'),(15,10,'SrdcoZlatá'),(5,10,'Stříbrná'),(27,9,'Sun'),(33,9,'Sword'),(30,9,'Ultra Moon'),(29,9,'Ultra Sun'),(30,5,'Ultra-Lune'),(29,5,'Ultra-Soleil'),(30,7,'Ultraluna'),(30,8,'Ultraluna'),(30,6,'Ultramond'),(29,7,'Ultrasol'),(29,8,'Ultrasole'),(29,6,'Ultrasonne'),(11,8,'Verde Foglia'),(11,7,'Verde Hoja'),(11,5,'Vert Feuille'),(18,6,'Weiß'),(22,6,'Weiß 2'),(18,9,'White'),(22,9,'White 2'),(23,1,'X'),(23,3,'X'),(23,5,'X'),(23,6,'X'),(23,7,'X'),(23,8,'X'),(23,9,'X'),(20,1,'XD'),(20,3,'XD'),(20,5,'XD'),(20,6,'XD'),(20,7,'XD'),(20,8,'XD'),(20,9,'XD'),(24,1,'Y'),(24,3,'Y'),(24,5,'Y'),(24,6,'Y'),(24,7,'Y'),(24,8,'Y'),(24,9,'Y'),(3,9,'Yellow'),(8,8,'Zaffiro'),(26,8,'Zaffiro Alpha'),(8,7,'Zafiro'),(26,7,'Zafiro Alfa'),(4,10,'Zlatá'),(3,10,'Žlutá'),(4,3,'골드'),(14,3,'기라티나'),(12,3,'디아루가'),(1,3,'레드'),(7,3,'루비'),(11,3,'리프그린'),(28,3,'문'),(17,3,'블랙'),(21,3,'블랙 2'),(2,3,'블루'),(8,3,'사파이어'),(16,3,'소울실버'),(5,3,'실버'),(27,3,'썬'),(26,3,'알파사파이어'),(9,3,'에메랄드'),(25,3,'오메가루비'),(30,3,'울트라문'),(29,3,'울트라썬'),(19,3,'콜로세움'),(6,3,'크리스탈'),(10,3,'파이어레드'),(13,3,'펄기아'),(3,3,'피카츄'),(15,3,'하트골드'),(18,3,'화이트'),(22,3,'화이트 2'),(26,1,'アルファサファイア'),(29,1,'ウルトラサン'),(30,1,'ウルトラムーン'),(9,1,'エメラルド'),(25,1,'オメガルビー'),(6,1,'クリスタル'),(19,1,'コロシアム'),(8,1,'サファイア'),(27,1,'サン'),(16,1,'ソウルシルバー'),(12,1,'ダイヤモンド'),(15,1,'ハートゴールド'),(13,1,'パール'),(3,1,'ピカチュウ'),(10,1,'ファイアレッド'),(14,1,'プラチナ'),(17,1,'ブラック'),(21,1,'ブラック2'),(18,1,'ホワイト'),(22,1,'ホワイト2'),(28,1,'ムーン'),(11,1,'リーフグリーン'),(7,1,'ルビー'),(2,1,'緑'),(1,1,'赤'),(4,1,'金'),(5,1,'銀');
/*!40000 ALTER TABLE `version_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:17
