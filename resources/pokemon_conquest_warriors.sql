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
-- Table structure for table `conquest_warriors`
--

DROP TABLE IF EXISTS `conquest_warriors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquest_warriors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(79) NOT NULL,
  `gender_id` int NOT NULL,
  `archetype_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gender_id` (`gender_id`),
  KEY `archetype_id` (`archetype_id`),
  CONSTRAINT `conquest_warriors_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  CONSTRAINT `conquest_warriors_ibfk_2` FOREIGN KEY (`archetype_id`) REFERENCES `conquest_warrior_archetypes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_warriors`
--

LOCK TABLES `conquest_warriors` WRITE;
/*!40000 ALTER TABLE `conquest_warriors` DISABLE KEYS */;
INSERT INTO `conquest_warriors` VALUES (1,'player-m',2,NULL),(2,'player-f',1,NULL),(3,'nobunaga',2,NULL),(4,'oichi',1,NULL),(5,'hideyoshi',2,NULL),(6,'motochika',2,NULL),(7,'ginchiyo',1,NULL),(8,'motonari',2,NULL),(9,'mitsuhide',2,NULL),(10,'yoshihiro',2,NULL),(11,'nene',1,NULL),(12,'shingen',2,NULL),(13,'masamune',2,NULL),(14,'kenshin',2,NULL),(15,'yoshimoto',2,NULL),(16,'ujiyasu',2,NULL),(17,'no',1,NULL),(18,'kotaro',2,NULL),(19,'ieyasu',2,NULL),(20,'hanbei',2,NULL),(21,'kanbei',2,NULL),(22,'muneshige',2,NULL),(23,'gracia',1,NULL),(24,'hanzo',2,NULL),(25,'kunoichi',1,NULL),(26,'yukimura',2,NULL),(27,'magoichi',2,NULL),(28,'kanetsugu',2,NULL),(29,'aya',1,NULL),(30,'kai',1,NULL),(31,'okuni',1,NULL),(32,'ranmaru',2,NULL),(33,'tadakatsu',2,NULL),(34,'ina',1,NULL),(35,'keiji',2,NULL),(36,'mitsunari',2,NULL),(37,'kiyomasa',2,NULL),(38,'masanori',2,NULL),(39,'tsunehisa',2,13),(40,'naoie',2,9),(41,'harutaka',2,4),(42,'takanobu',2,3),(43,'naoshige',2,2),(44,'ujisato',2,19),(45,'chacha',1,15),(46,'go',1,14),(47,'hatsu',1,15),(48,'kazumasu',2,23),(49,'nagahide',2,2),(50,'yoshitaka',2,17),(51,'urakusai',2,19),(52,'narimasa',2,3),(53,'tomonori',2,30),(54,'murashige',2,19),(55,'masahide',2,9),(56,'nagayoshi',2,6),(57,'kitsuno',1,14),(58,'gotoku',1,14),(59,'hidenaga',2,5),(60,'koroku',2,18),(61,'takatora',2,11),(62,'yoshitsugu',2,9),(63,'yukinaga',2,20),(64,'rikyu',2,19),(65,'hideyori',2,6),(66,'asahi',1,15),(67,'kazutoyo',2,11),(68,'nagayasu',2,7),(69,'harunaga',2,10),(70,'hideaki',2,12),(71,'naka',1,29),(72,'tatsuko',1,14),(73,'maa',1,15),(74,'chiyo',1,14),(75,'hatsume',1,27),(76,'nobuchika',2,11),(77,'chikayasu',2,4),(78,'morichika',2,6),(79,'chikamasa',2,7),(80,'norishige',2,4),(81,'takayori',2,11),(82,'tadasumi',2,12),(83,'dosetsu',2,1),(84,'shoun',2,3),(85,'sorin',2,9),(86,'sekiso',2,22),(87,'akizane',2,19),(88,'takatane',2,12),(89,'kiyo',1,15),(90,'motoharu',2,5),(91,'takakage',2,8),(92,'terumoto',2,5),(93,'takeyoshi',2,17),(94,'ekei',2,22),(95,'takamoto',2,12),(96,'sadatoshi',2,10),(97,'hidemitsu',2,5),(98,'toshimitsu',2,2),(99,'shigemoto',2,4),(100,'mitsutada',2,7),(101,'yukimasa',2,10),(102,'tadaoki',2,6),(103,'fujitaka',2,30),(104,'hiroko',1,15),(105,'tadamoto',2,2),(106,'tadatsune',2,7),(107,'takahisa',2,1),(108,'hisaaki',2,8),(109,'masatoshi',2,7),(110,'kanemori',2,8),(111,'tokitaka',2,13),(112,'sandayu',2,23),(113,'morikiyo',2,23),(114,'kashinkoji',2,13),(115,'yasunaga',2,24),(116,'seikuro',2,25),(117,'katsuyori',2,5),(118,'haruyuki',2,9),(119,'masakage',2,3),(120,'masatoyo',2,1),(121,'nobufusa',2,4),(122,'masayuki',2,2),(123,'yukitaka',2,1),(124,'ume',1,15),(125,'chiyome',1,26),(126,'kei',1,14),(127,'kagetsuna',2,9),(128,'shigezane',2,3),(129,'tsunamoto',2,1),(130,'tsunenaga',2,17),(131,'munetoki',2,7),(132,'munezane',2,8),(133,'yoshi',1,26),(134,'iroha',1,14),(135,'kagekatsu',2,3),(136,'yoshikiyo',2,2),(137,'tomonobu',2,5),(138,'kageie',2,3),(139,'takahiro',2,6),(140,'sadamitsu',2,13),(141,'yataro',2,7),(142,'saneyori',2,13),(143,'hana',1,14),(144,'sen',1,15),(145,'ujichika',2,30),(146,'ujizane',2,30),(147,'sessai',2,22),(148,'masatsuna',2,4),(149,'yasutomo',2,5),(150,'ujihiro',2,10),(151,'motozane',2,10),(152,'sena',1,26),(153,'soun',2,1),(154,'tsunashige',2,2),(155,'genan',2,22),(156,'ujimasa',2,4),(157,'ujiteru',2,6),(158,'ujikuni',2,5),(159,'ujinao',2,8),(160,'shizuka',1,14),(161,'madoka',1,14),(162,'dosan',2,20),(163,'yoshitatsu',2,3),(164,'ittetsu',2,5),(165,'bokuzen',2,8),(166,'morinari',2,12),(167,'omi',1,15),(168,'asa',1,15),(169,'shimoyama',2,25),(170,'genba',2,24),(171,'danzo',2,25),(172,'yazaemon',2,24),(173,'isuke',2,24),(174,'tadatsugu',2,1),(175,'naomasa',2,3),(176,'yasumasa',2,3),(177,'masanobu',2,9),(178,'hidetada',2,6),(179,'kazumasa',2,9),(180,'choan',2,20),(181,'tenkai',2,22),(182,'munenori',2,4),(183,'kame',1,27),(184,'toku',1,15),(185,'saizo',2,23),(186,'sasuke',2,25),(187,'katsu',1,27),(188,'juzo',2,24),(189,'tsuru',1,14),(190,'ise',1,27),(191,'jinpachi',2,17),(192,'kamanosuke',2,18),(193,'seikai',2,18),(194,'isa',2,18),(195,'yoshiteru',2,30),(196,'yoshiaki',2,30),(197,'hisahide',2,2),(198,'jubei',2,4),(199,'nobutsuna',2,2),(200,'bokuden',2,2),(201,'otsu',1,27);
/*!40000 ALTER TABLE `conquest_warriors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17  1:24:10
