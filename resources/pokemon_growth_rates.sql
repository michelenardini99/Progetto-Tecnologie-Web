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
-- Table structure for table `growth_rates`
--

DROP TABLE IF EXISTS `growth_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `growth_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(79) NOT NULL,
  `formula` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `growth_rates`
--

LOCK TABLES `growth_rates` WRITE;
/*!40000 ALTER TABLE `growth_rates` DISABLE KEYS */;
INSERT INTO `growth_rates` VALUES (1,'slow','\\frac{5x^3}{4}'),(2,'medium','x^3'),(3,'fast','\\frac{4x^3}{5}'),(4,'medium-slow','\\frac{6x^3}{5} - 15x^2 + 100x - 140'),(5,'slow-then-very-fast','\\begin{cases}\n\\frac{ x^3 \\left( 100 - x \\right) }{50},    & \\text{if } x \\leq 50  \\\\\n\\frac{ x^3 \\left( 150 - x \\right) }{100},   & \\text{if } 50 < x \\leq 68  \\\\\n\\frac{ x^3 \\left( 1274 + (x \\bmod 3)^2 - 9 (x \\bmod 3) - 20 \\left\\lfloor \\frac{x}{3} \\right\\rfloor \\right) }{1000}, & \\text{if } 68 < x \\leq 98  \\\\\n\\frac{ x^3 \\left( 160 - x \\right) }{100},   & \\text{if } x > 98  \\\\\n\\end{cases}'),(6,'fast-then-very-slow','\\begin{cases}\n\\frac{ x^3 \\left( 24 + \\left\\lfloor \\frac{x+1}{3} \\right\\rfloor \\right) }{50},  & \\text{if } x \\leq 15  \\\\\n\\frac{ x^3 \\left( 14 + x \\right) }{50},     & \\text{if } 15 < x \\leq 35  \\\\\n\\frac{ x^3 \\left( 32 + \\left\\lfloor \\frac{x}{2} \\right\\rfloor \\right ) }{50},   & \\text{if } x > 35  \\\\\n\\end{cases}');
/*!40000 ALTER TABLE `growth_rates` ENABLE KEYS */;
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
