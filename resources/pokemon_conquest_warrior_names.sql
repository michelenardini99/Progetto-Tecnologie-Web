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
-- Table structure for table `conquest_warrior_names`
--

DROP TABLE IF EXISTS `conquest_warrior_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_warrior_names` (
  `warrior_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`warrior_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_conquest_warrior_names_name` (`name`),
  CONSTRAINT `conquest_warrior_names_ibfk_1` FOREIGN KEY (`warrior_id`) REFERENCES `conquest_warriors` (`id`),
  CONSTRAINT `conquest_warrior_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_warrior_names`
--

LOCK TABLES `conquest_warrior_names` WRITE;
/*!40000 ALTER TABLE `conquest_warrior_names` DISABLE KEYS */;
INSERT INTO `conquest_warrior_names` VALUES (87,9,'Akizane'),(168,9,'Asa'),(66,9,'Asahi'),(29,9,'Aya'),(200,9,'Bokuden'),(165,9,'Bokuzen'),(45,9,'Chacha'),(79,9,'Chikamasa'),(77,9,'Chikayasu'),(74,9,'Chiyo'),(125,9,'Chiyome'),(180,9,'Chōan'),(171,9,'Danzō'),(162,9,'Dōsan'),(83,9,'Dōsetsu'),(94,9,'Ekei'),(103,9,'Fujitaka'),(155,9,'Gen\'an'),(170,9,'Genba'),(7,9,'Ginchiyo'),(46,9,'Gō'),(58,9,'Gotoku'),(23,9,'Gracia'),(143,9,'Hana'),(20,9,'Hanbei'),(24,9,'Hanzō'),(69,9,'Harunaga'),(41,9,'Harutaka'),(118,9,'Haruyuki'),(47,9,'Hatsu'),(75,9,'Hatsume'),(70,9,'Hideaki'),(97,9,'Hidemitsu'),(59,9,'Hidenaga'),(178,9,'Hidetada'),(65,9,'Hideyori'),(5,9,'Hideyoshi'),(104,9,'Hiroko'),(108,9,'Hisaaki'),(197,9,'Hisahide'),(19,9,'Ieyasu'),(34,9,'Ina'),(134,9,'Iroha'),(194,9,'Isa'),(190,9,'Ise'),(173,9,'Isuke'),(164,9,'Ittetsu'),(191,9,'Jinpachi'),(198,9,'Jūbei'),(188,9,'Jūzō'),(138,9,'Kageie'),(135,9,'Kagekatsu'),(127,9,'Kagetsuna'),(30,9,'Kai'),(192,9,'Kamanosuke'),(183,9,'Kame'),(21,9,'Kanbei'),(110,9,'Kanemori'),(28,9,'Kanetsugu'),(114,9,'Kashinkoji'),(187,9,'Katsu'),(117,9,'Katsuyori'),(179,9,'Kazumasa'),(48,9,'Kazumasu'),(67,9,'Kazutoyo'),(126,9,'Kei'),(35,9,'Keiji'),(14,9,'Kenshin'),(57,9,'Kitsuno'),(89,9,'Kiyo'),(37,9,'Kiyomasa'),(60,9,'Koroku'),(18,9,'Kotarō'),(25,9,'Kunoichi'),(73,9,'Maa'),(161,9,'Madoka'),(27,9,'Magoichi'),(55,9,'Masahide'),(119,9,'Masakage'),(13,9,'Masamune'),(177,9,'Masanobu'),(38,9,'Masanori'),(109,9,'Masatoshi'),(120,9,'Masatoyo'),(148,9,'Masatsuna'),(122,9,'Masayuki'),(9,9,'Mitsuhide'),(36,9,'Mitsunari'),(100,9,'Mitsutada'),(78,9,'Morichika'),(113,9,'Morikiyo'),(166,9,'Morinari'),(6,9,'Motochika'),(90,9,'Motoharu'),(8,9,'Motonari'),(151,9,'Motozane'),(182,9,'Munenori'),(22,9,'Muneshige'),(131,9,'Munetoki'),(132,9,'Munezane'),(54,9,'Murashige'),(49,9,'Nagahide'),(68,9,'Nagayasu'),(56,9,'Nagayoshi'),(71,9,'Naka'),(40,9,'Naoie'),(175,9,'Naomasa'),(43,9,'Naoshige'),(52,9,'Narimasa'),(11,9,'Nene'),(17,9,'Nō'),(76,9,'Nobuchika'),(121,9,'Nobufusa'),(3,9,'Nobunaga'),(199,9,'Nobutsuna'),(80,9,'Norishige'),(4,9,'Oichi'),(31,9,'Okuni'),(167,9,'Omi'),(201,9,'Otsū'),(2,9,'Player ♀'),(1,9,'Player ♂'),(32,9,'Ranmaru'),(64,9,'Rikyū'),(140,9,'Sadamitsu'),(96,9,'Sadatoshi'),(185,9,'Saizō'),(112,9,'Sandayū'),(142,9,'Saneyori'),(186,9,'Sasuke'),(193,9,'Seikai'),(116,9,'Seikurō'),(86,9,'Sekisō'),(144,9,'Sen'),(152,9,'Sena'),(147,9,'Sessai'),(99,9,'Shigemoto'),(128,9,'Shigezane'),(169,9,'Shimoyama'),(12,9,'Shingen'),(160,9,'Shizuka'),(84,9,'Shōun'),(85,9,'Sōrin'),(153,9,'Sōun'),(33,9,'Tadakatsu'),(105,9,'Tadamoto'),(102,9,'Tadaoki'),(82,9,'Tadasumi'),(174,9,'Tadatsugu'),(106,9,'Tadatsune'),(139,9,'Takahiro'),(107,9,'Takahisa'),(91,9,'Takakage'),(95,9,'Takamoto'),(42,9,'Takanobu'),(88,9,'Takatane'),(61,9,'Takatora'),(81,9,'Takayori'),(93,9,'Takeyoshi'),(72,9,'Tatsuko'),(181,9,'Tenkai'),(92,9,'Terumoto'),(111,9,'Tokitaka'),(184,9,'Toku'),(137,9,'Tomonobu'),(53,9,'Tomonori'),(98,9,'Toshimitsu'),(129,9,'Tsunamoto'),(154,9,'Tsunashige'),(39,9,'Tsunehisa'),(130,9,'Tsunenaga'),(189,9,'Tsuru'),(145,9,'Ujichika'),(150,9,'Ujihiro'),(158,9,'Ujikuni'),(156,9,'Ujimasa'),(159,9,'Ujinao'),(44,9,'Ujisato'),(157,9,'Ujiteru'),(16,9,'Ujiyasu'),(146,9,'Ujizane'),(124,9,'Ume'),(51,9,'Urakusai'),(176,9,'Yasumasa'),(115,9,'Yasunaga'),(149,9,'Yasutomo'),(141,9,'Yatarō'),(172,9,'Yazaemon'),(133,9,'Yoshi'),(196,9,'Yoshiaki'),(10,9,'Yoshihiro'),(136,9,'Yoshikiyo'),(15,9,'Yoshimoto'),(50,9,'Yoshitaka'),(163,9,'Yoshitatsu'),(195,9,'Yoshiteru'),(62,9,'Yoshitsugu'),(101,9,'Yukimasa'),(26,9,'Yukimura'),(63,9,'Yukinaga'),(123,9,'Yukitaka');
/*!40000 ALTER TABLE `conquest_warrior_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:21
