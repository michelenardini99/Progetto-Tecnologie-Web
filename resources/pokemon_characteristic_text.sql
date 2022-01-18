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
-- Table structure for table `characteristic_text`
--

DROP TABLE IF EXISTS `characteristic_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characteristic_text` (
  `characteristic_id` int NOT NULL,
  `local_language_id` int NOT NULL,
  `message` varchar(79) NOT NULL,
  PRIMARY KEY (`characteristic_id`,`local_language_id`),
  KEY `local_language_id` (`local_language_id`),
  KEY `ix_characteristic_text_message` (`message`),
  CONSTRAINT `characteristic_text_ibfk_1` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristics` (`id`),
  CONSTRAINT `characteristic_text_ibfk_2` FOREIGN KEY (`local_language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characteristic_text`
--

LOCK TABLES `characteristic_text` WRITE;
/*!40000 ALTER TABLE `characteristic_text` DISABLE KEYS */;
INSERT INTO `characteristic_text` VALUES (14,9,'A little quick tempered'),(22,7,'A menudo está en Babia'),(7,7,'A menudo se duerme'),(14,7,'A veces se enfada'),(12,6,'Achtet auf Geräusche'),(6,8,'Adora andare veloce'),(8,8,'Adora dimenarsi'),(20,8,'Adora lottare'),(1,8,'Adora mangiare'),(25,8,'Adora rilassarsi'),(12,9,'Alert to sounds'),(5,6,'Besitzt einen starken Willen'),(14,6,'Besitzt Temperament'),(9,9,'Capable of taking hits'),(13,8,'Dorme a lungo'),(13,7,'Duerme mucho'),(11,8,'È abbastanza superficiale'),(10,8,'È alquanto vivace'),(16,8,'È estremamente sagace'),(26,8,'È facilmente irritabile'),(9,8,'È forte in attacco'),(18,8,'È irruente e semplice'),(28,8,'È molto esigente'),(17,8,'È molto insolente'),(15,8,'È molto ostinato'),(21,8,'È molto paziente'),(27,8,'È molto tenace'),(4,8,'È un grande ficcanaso'),(29,8,'È un po’ testardo'),(24,8,'È una specie di buffone'),(9,7,'Encaja bien los ataques'),(18,7,'Es de carácter simple e impetuoso'),(17,7,'Es muy insolente'),(27,7,'Es muy perseverante'),(15,7,'Es muy persistente'),(16,7,'Es muy sagaz'),(28,7,'Es muy tiquismiquis'),(29,7,'Es un poco cabezota'),(11,7,'Es un poco petulante'),(12,8,'Fa attenzione ai suoni'),(30,6,'Flüchtet schnell'),(21,9,'Good endurance'),(27,9,'Good perseverance'),(3,8,'Ha un corpo robusto'),(23,6,'Hasst Niederlagen'),(21,6,'Hat eine gute Ausdauer'),(3,6,'Hat einen robusten Körper'),(23,9,'Hates to lose'),(4,9,'Highly curious'),(15,9,'Highly persistent'),(30,7,'Huye rápido'),(23,5,'Il a horreur de perdre'),(17,5,'Il a l’esprit rebelle'),(3,5,'Il a un corps robuste'),(21,5,'Il a une bonne endurance'),(1,5,'Il adore manger'),(20,5,'Il aime combattre'),(24,5,'Il aime faire le pitre'),(6,5,'Il aime la vitesse'),(8,5,'Il aime se démener'),(25,5,'Il aime se détendre'),(13,5,'Il dort beaucoup'),(19,5,'Il éparpille souvent les choses'),(29,5,'Il est assez entêté'),(12,5,'Il est attentif aux sons'),(18,5,'Il est bête et impulsif'),(10,5,'Il est coquin'),(4,5,'Il est extrêmement curieux'),(2,5,'Il est fier de sa puissance'),(27,5,'Il est persévérant'),(22,5,'Il est souvent dans la lune'),(16,5,'Il est très astucieux'),(15,5,'Il est très obstiné'),(28,5,'Il est très particulier'),(5,5,'Il est très volontaire'),(14,5,'Il est un peu coléreux'),(11,5,'Il est un peu vaniteux'),(30,5,'Il fuit rapidement'),(7,5,'Il s’assoupit souvent'),(26,5,'Il s’emporte facilement'),(9,5,'Il sait encaisser les coups'),(18,9,'Impetuous and silly'),(16,6,'Ist äußerst gerissen'),(15,6,'Ist äußerst zäh'),(27,6,'Ist beharrlich'),(29,6,'Ist dickköpfig'),(24,6,'Ist ein bisschen albern'),(11,6,'Ist etwas eitel'),(6,6,'Ist gerne schnell unterwegs'),(10,6,'Ist hinterhältig'),(26,6,'Ist impulsiv'),(22,6,'Ist oft in Gedanken'),(17,6,'Ist sehr aufsässig'),(4,6,'Ist sehr neugierig'),(28,6,'Ist sehr pedantisch'),(2,6,'Ist stolz auf seine Stärke'),(18,6,'Ist ungestüm und einfältig'),(9,6,'Kann Treffer gut verkraften'),(2,8,'La forza è il suo vanto'),(19,8,'Lascia cose in giro'),(1,7,'Le encanta comer'),(24,7,'Le encanta hacer payasadas'),(10,7,'Le gusta hacer travesuras'),(6,7,'Le gusta ir muy rápido'),(20,7,'Le gusta luchar'),(25,7,'Le gusta relajarse'),(8,7,'Le gusta revolverse'),(1,6,'Liebt es zu essen'),(20,6,'Liebt Kämpfe'),(20,9,'Likes to fight'),(25,9,'Likes to relax'),(6,9,'Likes to run'),(8,9,'Likes to thrash about'),(1,9,'Loves to eat'),(19,6,'Macht oft Unordnung'),(25,6,'Mag es, sich zu entspannen'),(10,9,'Mischievous'),(7,6,'Nickt oft ein'),(13,9,'Nods off a lot'),(23,8,'Non sopporta perdere'),(23,7,'Odia perder'),(22,9,'Often lost in thought'),(2,9,'Proud of its power'),(8,6,'Prügelt sich gern'),(26,9,'Quick tempered'),(30,9,'Quick to flee'),(30,8,'Sa fuggire velocemente'),(5,8,'Sa il fatto suo'),(19,9,'Scatters things often'),(13,6,'Schläft gern'),(21,7,'Se caracteriza por ser muy resistente'),(3,7,'Se caracteriza por su cuerpo resistente'),(5,7,'Se distingue por su gran fuerza de voluntad'),(2,7,'Se enorgullece de su fuerza'),(7,8,'Si addormenta spesso'),(14,8,'Si arrabbia facilmente'),(22,8,'Si perde nel suo mondo'),(12,7,'Siempre tiene el oído alerta'),(4,7,'Siente mucha curiosidad por todo'),(24,9,'Somewhat of a clown'),(29,9,'Somewhat stubborn'),(11,9,'Somewhat vain'),(5,9,'Strong willed'),(17,9,'Strongly defiant'),(3,9,'Sturdy body'),(19,7,'Suele desordenar cosas'),(7,9,'Takes plenty of siestas'),(16,9,'Thoroughly cunning'),(26,7,'Tiene mal genio'),(28,9,'Very finicky'),(22,3,'걱정거리가 많음'),(5,3,'기가 센 성격임'),(15,3,'끈질김'),(8,3,'난동부리기를 좋아함'),(7,3,'낮잠을 잘 잠'),(6,3,'달리기를 좋아함'),(30,3,'도망에는 선수임'),(13,3,'말뚝잠이 많음'),(28,3,'매우 꼼꼼함'),(9,3,'맷집이 강함'),(1,3,'먹는 것을 제일 좋아함'),(3,3,'몸이 튼튼함'),(19,3,'물건을 잘 어지름'),(16,3,'빈틈이 없음'),(20,3,'싸움을 좋아함'),(24,3,'약간 우쭐쟁이임'),(14,3,'약간 화를 잘 내는 성미임'),(17,3,'오기가 센 성격임'),(25,3,'유유자적함을 좋아함'),(21,3,'인내심이 강함'),(27,3,'잘 참음'),(10,3,'장난을 좋아함'),(11,3,'조금 겉치레를 좋아함'),(29,3,'조금 고집통이임'),(12,3,'주위 소리에 민감함'),(23,3,'지기 싫어함'),(18,3,'촐랑대는 성격임'),(26,3,'혈기가 왕성함'),(4,3,'호기심이 강함'),(2,3,'힘자랑이 특기임'),(8,1,'あばれることが　すき'),(10,1,'イタズラが　すき'),(10,11,'イタズラが　好き'),(13,1,'いねむりが　おおい'),(9,1,'うたれ　づよい'),(18,1,'おっちょこちょい'),(18,11,'おっちょこちょい'),(6,1,'かけっこが　すき'),(27,1,'がまん　づよい'),(3,1,'からだが　じょうぶ'),(22,1,'かんがえごとが　おおい'),(5,1,'きが　つよい'),(20,1,'ケンカを　するのが　すき'),(20,11,'ケンカを　するのが　好き'),(4,1,'こうきしんが　つよい'),(21,1,'しんぼう　づよい'),(24,1,'すこし　おちょうしもの'),(24,11,'すこし　お調子者'),(1,1,'たべるのが　だいすき'),(2,1,'ちからが　じまん'),(26,1,'ちのけが　おおい'),(14,1,'ちょっと　おこりっぽい'),(14,11,'ちょっと　怒りっぽい'),(29,1,'ちょっぴり　ごうじょう'),(11,1,'ちょっぴり　みえっぱり'),(11,11,'ちょっぴり　みえっぱり'),(29,11,'ちょっぴり　強情'),(28,1,'とても　きちょうめん'),(28,11,'とても　きちょうめん'),(30,1,'にげるのが　はやい'),(16,1,'ぬけめが　ない'),(15,1,'ねばり　づよい'),(25,1,'のんびりするのが　すき'),(25,11,'のんびりするのが　好き'),(7,1,'ひるねを　よくする'),(23,1,'まけずぎらい'),(17,1,'まけんきが　つよい'),(12,1,'ものおとに　びんかん'),(19,1,'ものを　よく　ちらかす'),(19,11,'ものを　よく　散らかす'),(28,12,'一丝不苟'),(28,4,'一絲不苟'),(23,4,'不服輸'),(23,12,'不服输'),(17,12,'争强好胜'),(2,12,'以力气大为傲'),(2,4,'以力氣大為傲'),(3,11,'体が　丈夫'),(16,12,'做事万无一失'),(16,4,'做事萬無一失'),(18,4,'冒冒失失'),(18,12,'冒冒失失'),(2,11,'力が　自慢'),(27,12,'善于忍耐'),(27,4,'善於忍耐'),(10,12,'喜欢恶作剧'),(25,12,'喜欢悠然自在'),(20,12,'喜欢打架'),(6,12,'喜欢比谁跑得快'),(8,12,'喜欢胡闹'),(25,4,'喜歡悠然自在'),(10,4,'喜歡惡作劇'),(20,4,'喜歡打架'),(6,4,'喜歡比誰跑得快'),(8,4,'喜歡胡鬧'),(4,11,'好奇心が　強い'),(4,4,'好奇心強'),(4,12,'好奇心强'),(12,12,'对声音敏感'),(12,4,'對聲音敏感'),(13,11,'居眠りが　多い'),(13,4,'常常打瞌睡'),(13,12,'常常打瞌睡'),(5,4,'性格強勢'),(5,12,'性格强势'),(27,11,'我慢強い'),(9,11,'打たれ強い'),(9,4,'抗打能力強'),(9,12,'抗打能力强'),(16,11,'抜け目が　ない'),(7,11,'昼寝を　よくする'),(8,11,'暴れることが　好き'),(29,12,'有一点点固执'),(11,12,'有一点点爱慕虚荣'),(29,4,'有一點點固執'),(11,4,'有一點點愛慕虛榮'),(24,12,'有点容易得意忘形'),(14,12,'有点容易生气'),(24,4,'有點容易得意忘形'),(14,4,'有點容易生氣'),(5,11,'気が　強い'),(17,4,'爭強好勝'),(12,11,'物音に　敏感'),(15,11,'粘り強い'),(19,4,'經常亂扔東西'),(22,4,'經常思考'),(7,4,'經常睡午覺'),(19,12,'经常乱扔东西'),(22,12,'经常思考'),(7,12,'经常睡午觉'),(22,11,'考え事が　多い'),(21,12,'能吃苦耐劳'),(21,4,'能吃苦耐勞'),(26,11,'血の気が　多い'),(26,12,'血气方刚'),(26,4,'血氣方剛'),(23,11,'負けず嫌い'),(17,11,'負けん気が　強い'),(3,12,'身体强壮'),(3,4,'身體強壯'),(21,11,'辛抱強い'),(30,11,'逃げるのが　はやい'),(30,4,'逃得快'),(30,12,'逃得快'),(1,12,'非常喜欢吃东西'),(1,4,'非常喜歡吃東西'),(15,4,'頑強不屈'),(15,12,'顽强不屈'),(1,11,'食べるのが　大好き'),(6,11,'駆けっこが　好き');
/*!40000 ALTER TABLE `characteristic_text` ENABLE KEYS */;
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
