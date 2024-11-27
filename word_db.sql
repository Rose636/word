-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: word_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chinese` varchar(255) NOT NULL,
  `german_singular` varchar(255) NOT NULL,
  `german_plural` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'学习','das Lernen','/'),(2,'小组，班','die Gruppe','die Gruppen'),(3,'重要的','wichtig',''),(4,'格（层）；学科，专业','das Fach','die Fächer'),(5,'意义','der Sinn','/'),(6,'建造','bauen+A.',''),(7,'有名的；熟悉的','bekannt',''),(8,'熟悉的东西','das Bekannte','/'),(9,'记忆力','das Gedächtnis','die Gedächtnisse'),(10,'翻译','die Übersetzung','die Übersetzungen'),(11,'保存，保留；记住','behalten+A.',''),(12,'方法','die Methode','die Methoden'),(13,'学习方法','die Lernmethode','die Lernmethoden'),(14,'字母表；字母顺序','das Alphabet','die Alphabete'),(15,'每天的','täglich',''),(16,'好主意','der Tipp','die Tipps'),(17,'词组','die Wortgruppe','die Wortgruppen'),(18,'单独，一个人','allein',''),(19,'较好的，更好的','besser',''),(20,'容易的','leicht',''),(21,'聪明的，智慧的','intelligent',''),(22,'不聪明的','unintelligent',''),(23,'也许','vielleicht',''),(24,'认识','kennen+A.',''),(25,'意义','die Bedeutung','die Bedeutungen'),(26,'公共汽车票','die Busfahrkarte','die Busfahrkarten'),(27,'想到','denken(+an A.)',''),(28,'与此同时；此外','dabei',''),(29,'写下，记下','aufschreiben+A.',''),(30,'整理，归类','ordnen+A.',''),(31,'词汇，词汇量','der Wortshatz','/'),(32,'根据，按照','nach+D.',''),(33,'造成，构成','bilden+A.',''),(34,'学习卡片（索引）','die Lernkartei','die Lernkarteien'),(35,'卡片箱','der Karteikasten','die Karteikästen'),(36,'索引卡片','die Karteikarte','die Karteikarten'),(37,'需要','brauchen+A.',''),(38,'买','kaufen+A.',''),(39,'正面','die Vorderseite','die Vorderseiten'),(40,'反面，背面','die Rückseite','die Rückseiten'),(41,'没有，无，不包括','ohne+A.',''),(42,'能够，会；可以','können',''),(43,'错误','der Fehler','die Fehler'),(44,'又一次','wieder',''),(45,'插入','stecken+A.+Dir',''),(46,'插在','stecken+Sitl',''),(47,'真的，确实的','wirklich',''),(48,'极好的','prima',''),(49,'劳动，工作','die Arbeit','die Arbeiten'),(50,'女工人','die Arbeiterin','die Arbeiterinnen'),(51,'工作时间','die Arbeitszeit','die Arbeitszeiten'),(52,'中国的；中式的；汉语的','chinesisch',''),(53,'英国的；英语的','englisch',''),(54,'意大利的','italienisch',''),(55,'法国的；法语的','französisch',''),(56,'西班牙的','spanisch',''),(57,'欧洲的','europäisch',''),(58,'美国的','amerikanisch',''),(59,'打电话','telefonieren(+mit)',''),(60,'电话的，通过电话的','telefonisch',''),(61,'开始，开端','der Beginn','/'),(62,'开始上课','der Unterrichtsbeginn','/'),(63,'结束','enden(+mit)',''),(64,'吉他','die Gitarre','die Gitarren'),(65,'市场','der Markt','die Märkte'),(66,'超市','der Supermarkt','die Supermärkte'),(67,'电视机','der Fernseher','die Fernseher'),(68,'晚安','Gute Nacht!',''),(69,'听见','hören+A.',''),(70,'语言学','die Sprachwissenschaft','die Sprachwissenschafte'),(71,'实验室','das Labor','die Labors'),(72,'语言实验室','das Sprachlabor','die Sprachlabors'),(73,'白天时间','die Tageszeit','die Tageszeiten'),(74,'工作日','der Wochentag','die Wochentage'),(75,'动词','das Verb','die Verben'),(76,'准确的','genau',''),(77,'在某人处，在…地方','bei+D.',''),(78,'信息，资料；问讯处','die Information','die Informationen'),(79,'立即，马上','gleich',''),(80,'疲倦的，累的','müde',''),(81,'饥饿','der Hunger','/'),(82,'电视片','der Fernsehfilm','die Fernsehfilme'),(83,'观看，看，注视','ansehen+A.(+sich D.)','');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-27 21:05:29
