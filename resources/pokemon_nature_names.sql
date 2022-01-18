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
-- Table structure for table `nature_names`
--

DROP TABLE IF EXISTS `nature_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nature_names` (
  `nature_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`nature_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_nature_names_name` (`name`),
  CONSTRAINT `nature_names_ibfk_1` FOREIGN KEY (`nature_id`) REFERENCES `natures` (`id`),
  CONSTRAINT `nature_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nature_names`
--

LOCK TABLES `nature_names` WRITE;
/*!40000 ALTER TABLE `nature_names` DISABLE KEYS */;
INSERT INTO `nature_names` VALUES (10,7,'Activa'),(11,9,'Adamant'),(8,7,'Afable'),(12,7,'Agitada'),(16,7,'Alegre'),(16,8,'Allegra'),(15,7,'Alocada'),(9,7,'Amable'),(15,8,'Ardente'),(1,8,'Ardita'),(2,5,'Assuré'),(21,8,'Audace'),(21,7,'Audaz'),(13,9,'Bashful'),(17,8,'Birbona'),(19,5,'Bizarre'),(2,9,'Bold'),(21,5,'Brave'),(21,9,'Brave'),(4,9,'Calm'),(4,8,'Calma'),(4,5,'Calme'),(14,9,'Careful'),(14,7,'Cauta'),(14,8,'Cauta'),(11,8,'Decisa'),(23,5,'Discret'),(7,7,'Dócil'),(7,5,'Docile'),(7,8,'Docile'),(7,9,'Docile'),(8,5,'Doux'),(25,6,'Ernst'),(18,8,'Fiacca'),(11,7,'Firme'),(18,7,'Floja'),(24,6,'Forsch'),(15,5,'Foufou'),(17,6,'Frech'),(16,6,'Froh'),(1,7,'Fuerte'),(19,8,'Furba'),(9,5,'Gentil'),(9,8,'Gentile'),(9,9,'Gentle'),(24,7,'Grosera'),(1,5,'Hardi'),(1,9,'Hardy'),(11,6,'Hart'),(10,6,'Hastig'),(10,9,'Hasty'),(15,6,'Hitzig'),(6,7,'Huraña'),(12,9,'Impish'),(20,7,'Ingenua'),(20,8,'Ingenua'),(16,9,'Jolly'),(16,5,'Jovial'),(19,6,'Kauzig'),(2,6,'Kühn'),(18,5,'Lâche'),(18,6,'Lasch'),(18,9,'Lax'),(10,8,'Lesta'),(22,6,'Locker'),(6,9,'Lonely'),(12,5,'Malin'),(24,5,'Malpoli'),(23,7,'Mansa'),(3,6,'Mäßig'),(17,5,'Mauvais'),(5,7,'Miedosa'),(8,6,'Mild'),(8,9,'Mild'),(8,8,'Mite'),(3,9,'Modest'),(3,7,'Modesta'),(3,8,'Modesta'),(3,5,'Modeste'),(21,6,'Mutig'),(20,5,'Naïf'),(20,6,'Naiv'),(20,9,'Naive'),(17,9,'Naughty'),(2,7,'Osada'),(12,6,'Pfiffig'),(17,7,'Pícara'),(22,7,'Plácida'),(22,8,'Placida'),(10,5,'Pressé'),(14,5,'Prudent'),(13,5,'Pudique'),(23,9,'Quiet'),(23,8,'Quieta'),(19,9,'Quirky'),(19,7,'Rara'),(15,9,'Rash'),(22,5,'Relax'),(22,9,'Relaxed'),(11,5,'Rigide'),(13,8,'Ritrosa'),(1,6,'Robust'),(23,6,'Ruhig'),(14,6,'Sacht'),(7,6,'Sanft'),(24,9,'Sassy'),(12,8,'Scaltra'),(5,6,'Scheu'),(6,8,'Schiva'),(4,7,'Serena'),(25,7,'Seria'),(25,8,'Seria'),(25,5,'Sérieux'),(25,9,'Serious'),(2,8,'Sicura'),(6,5,'Solo'),(6,6,'Solo'),(4,6,'Still'),(5,9,'Timid'),(5,8,'Timida'),(13,7,'Tímida'),(5,5,'Timide'),(24,8,'Vivace'),(13,6,'Zaghaft'),(9,6,'Zart'),(17,3,'개구쟁이'),(24,3,'건방'),(5,3,'겁쟁이'),(11,3,'고집'),(23,3,'냉정'),(1,3,'노력'),(2,3,'대담'),(15,3,'덜렁'),(16,3,'명랑'),(22,3,'무사태평'),(19,3,'변덕'),(10,3,'성급'),(25,3,'성실'),(13,3,'수줍음'),(14,3,'신중'),(9,3,'얌전'),(7,3,'온순'),(6,3,'외로움'),(21,3,'용감'),(8,3,'의젓'),(12,3,'장난꾸러기'),(3,3,'조심'),(4,3,'차분'),(20,3,'천진난만'),(18,3,'촐랑'),(11,1,'いじっぱり'),(11,11,'いじっぱり'),(15,1,'うっかりや'),(15,11,'うっかりや'),(5,1,'おくびょう'),(5,11,'おくびょう'),(4,1,'おだやか'),(4,11,'おだやか'),(8,1,'おっとり'),(8,11,'おっとり'),(9,1,'おとなしい'),(9,11,'おとなしい'),(1,1,'がんばりや'),(1,11,'がんばりや'),(19,1,'きまぐれ'),(19,11,'きまぐれ'),(6,1,'さみしがり'),(6,11,'さみしがり'),(14,1,'しんちょう'),(14,11,'しんちょう'),(7,1,'すなお'),(7,11,'すなお'),(2,1,'ずぶとい'),(2,11,'ずぶとい'),(10,1,'せっかち'),(10,11,'せっかち'),(13,1,'てれや'),(13,11,'てれや'),(24,1,'なまいき'),(24,11,'なまいき'),(18,1,'のうてんき'),(18,11,'のうてんき'),(22,1,'のんき'),(22,11,'のんき'),(3,1,'ひかえめ'),(3,11,'ひかえめ'),(25,1,'まじめ'),(25,11,'まじめ'),(20,1,'むじゃき'),(20,11,'むじゃき'),(17,1,'やんちゃ'),(17,11,'やんちゃ'),(21,1,'ゆうかん'),(21,11,'ゆうかん'),(16,1,'ようき'),(16,11,'ようき'),(23,1,'れいせい'),(23,11,'れいせい'),(12,1,'わんぱく'),(12,11,'わんぱく'),(18,12,'乐天'),(3,4,'內斂'),(3,12,'内敛'),(23,12,'冷静'),(23,4,'冷靜'),(21,4,'勇敢'),(21,12,'勇敢'),(1,12,'勤奋'),(1,4,'勤奮'),(11,4,'固執'),(11,12,'固执'),(7,4,'坦率'),(7,12,'坦率'),(2,12,'大胆'),(2,4,'大膽'),(20,4,'天真'),(20,12,'天真'),(13,4,'害羞'),(13,12,'害羞'),(6,4,'怕寂寞'),(6,12,'怕寂寞'),(10,4,'急躁'),(10,12,'急躁'),(22,4,'悠閒'),(22,12,'悠闲'),(14,4,'慎重'),(14,12,'慎重'),(8,4,'慢吞吞'),(8,12,'慢吞吞'),(18,4,'樂天'),(19,4,'浮躁'),(19,12,'浮躁'),(12,12,'淘气'),(12,4,'淘氣'),(4,12,'温和'),(9,12,'温顺'),(4,4,'溫和'),(9,4,'溫順'),(16,4,'爽朗'),(16,12,'爽朗'),(5,12,'胆小'),(5,4,'膽小'),(24,4,'自大'),(24,12,'自大'),(25,4,'認真'),(25,12,'认真'),(17,4,'頑皮'),(17,12,'顽皮'),(15,4,'馬虎'),(15,12,'马虎');
/*!40000 ALTER TABLE `nature_names` ENABLE KEYS */;
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
