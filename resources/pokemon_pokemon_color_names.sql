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
-- Table structure for table `pokemon_color_names`
--

DROP TABLE IF EXISTS `pokemon_color_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_color_names` (
  `pokemon_color_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `name` varchar(79) NOT NULL,
  PRIMARY KEY (`pokemon_color_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_pokemon_color_names_name` (`name`),
  CONSTRAINT `pokemon_color_names_ibfk_1` FOREIGN KEY (`pokemon_color_id`) REFERENCES `pokemon_colors` (`id`),
  CONSTRAINT `pokemon_color_names_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_color_names`
--

LOCK TABLES `pokemon_color_names` WRITE;
/*!40000 ALTER TABLE `pokemon_color_names` DISABLE KEYS */;
INSERT INTO `pokemon_color_names` VALUES (10,7,'Amarillo'),(2,7,'Azul'),(9,8,'Bianco'),(1,9,'Black'),(9,5,'Blanc'),(9,7,'Blanco'),(2,6,'Blau'),(2,5,'Bleu'),(2,8,'Blu'),(2,9,'Blue'),(3,6,'Braun'),(3,9,'Brown'),(3,5,'Brun'),(10,6,'Gelb'),(10,8,'Giallo'),(4,6,'Grau'),(4,9,'Gray'),(5,9,'Green'),(4,8,'Grigio'),(4,5,'Gris'),(4,7,'Gris'),(5,6,'Grün'),(10,5,'Jaune'),(3,7,'Marrón'),(3,8,'Marrone'),(7,7,'Morado'),(1,7,'Negro'),(1,8,'Nero'),(1,5,'Noir'),(6,9,'Pink'),(7,9,'Purple'),(8,9,'Red'),(8,7,'Rojo'),(6,6,'Rosa'),(6,7,'Rosa'),(6,8,'Rosa'),(6,5,'Rose'),(8,8,'Rosso'),(8,6,'Rot'),(8,5,'Rouge'),(1,6,'Schwarz'),(4,10,'Šedá'),(5,7,'Verde'),(5,8,'Verde'),(5,5,'Vert'),(7,8,'Viola'),(7,5,'Violet'),(7,6,'Violett'),(9,6,'Weiß'),(9,9,'White'),(10,9,'Yellow'),(3,3,'갈색'),(1,3,'검정'),(10,3,'노랑'),(6,3,'담홍'),(7,3,'보라'),(8,3,'빨강'),(5,3,'초록'),(2,3,'파랑'),(9,3,'하양'),(4,3,'회색'),(2,1,'あおいろ'),(8,1,'あかいろ'),(10,1,'きいろ'),(1,1,'くろいろ'),(9,1,'しろいろ'),(3,1,'ちゃいろ'),(4,1,'はいいろ'),(5,1,'みどりいろ'),(7,1,'むらさきいろ'),(6,1,'ももいろ'),(6,11,'桃色'),(4,4,'灰色'),(4,11,'灰色'),(4,12,'灰色'),(9,4,'白色'),(9,11,'白色'),(9,12,'白色'),(6,4,'粉紅色'),(6,12,'粉红色'),(8,4,'紅色'),(7,4,'紫色'),(7,11,'紫色'),(7,12,'紫色'),(5,4,'綠色'),(5,11,'緑色'),(8,12,'红色'),(5,12,'绿色'),(3,11,'茶色'),(2,12,'蓝色'),(2,4,'藍色'),(3,4,'褐色'),(3,12,'褐色'),(8,11,'赤色'),(2,11,'青色'),(10,4,'黃色'),(10,11,'黄色'),(10,12,'黄色'),(1,4,'黑色'),(1,12,'黑色'),(1,11,'黒色');
/*!40000 ALTER TABLE `pokemon_color_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:14
