-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopmax
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int DEFAULT NULL,
  `product_name` text,
  `category` text,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Political','Sports',52.18),(2,'Water','Books',123.37),(3,'Identify','Electronics',224.1),(4,'Go','Sports',267.56),(5,'Financial','Electronics',137.58),(6,'Power','Books',48.75),(7,'Talk','Sports',24.9),(8,'Chair','Electronics',242.33),(9,'Model','Home',470.82),(10,'Rest','Books',39.23),(11,'There','Home',315.81),(12,'Level','Home',451.18),(13,'Speech','Sports',427.18),(14,'Senior','Sports',58.29),(15,'Ability','Books',60.09),(16,'Store','Sports',14.26),(17,'Whether','Electronics',324.88),(18,'Participant','Home',321.49),(19,'Trial','Home',467.15),(20,'Government','Home',342.44),(21,'Though','Books',430.79),(22,'Somebody','Clothing',22.75),(23,'Mention','Home',352.08),(24,'More','Home',78.64),(25,'Leg','Clothing',40.62),(26,'Major','Books',357.52),(27,'Example','Home',62.37),(28,'Traditional','Books',312.03),(29,'Range','Books',443.15),(30,'Purpose','Sports',214.14),(31,'According','Electronics',294.22),(32,'Share','Clothing',367.13),(33,'More','Books',170.21),(34,'Number','Electronics',43.77),(35,'Look','Sports',391.44),(36,'None','Sports',45.47),(37,'Stage','Home',174.62),(38,'Wrong','Clothing',239.44),(39,'Green','Electronics',273.15),(40,'None','Books',258.03),(41,'Base','Electronics',247.14),(42,'Probably','Books',378.52),(43,'Us','Sports',75.76),(44,'List','Books',145.78),(45,'National','Home',69.95),(46,'Economy','Clothing',318.32),(47,'Change','Sports',263.46),(48,'Without','Clothing',348.17),(49,'Beyond','Clothing',59.65),(50,'Me','Home',6.77),(51,'Smile','Home',225.94),(52,'Indicate','Books',313.86),(53,'Everyone','Electronics',263.04),(54,'Process','Clothing',323.5),(55,'Ago','Sports',38.31),(56,'South','Electronics',212.13),(57,'Sea','Clothing',477.85),(58,'Western','Electronics',345.14),(59,'Song','Electronics',281.31),(60,'Security','Books',198.83),(61,'Factor','Clothing',40.76),(62,'Turn','Books',410.59),(63,'List','Books',117.11),(64,'Thus','Home',300.3),(65,'Contain','Electronics',379.14),(66,'Picture','Books',123.03),(67,'Myself','Electronics',53.27),(68,'Year','Sports',109.9),(69,'Eight','Sports',497.91),(70,'Receive','Home',326.36),(71,'Treatment','Clothing',61.07),(72,'Of','Home',7.95),(73,'Job','Clothing',354.21),(74,'He','Clothing',272.11),(75,'Professor','Electronics',64.12),(76,'Star','Sports',499.65),(77,'Grow','Sports',214.94),(78,'Value','Books',364.19),(79,'Want','Sports',216.15),(80,'Only','Sports',167.93),(81,'First','Clothing',400.99),(82,'Some','Books',117.28),(83,'Free','Sports',407.98),(84,'Less','Electronics',477.92),(85,'I','Electronics',272.86),(86,'Every','Sports',204.63),(87,'Conference','Electronics',350.93),(88,'Civil','Clothing',86.56),(89,'Six','Sports',92.37),(90,'By','Sports',48.23),(91,'First','Sports',142.42),(92,'Office','Clothing',8.87),(93,'Alone','Books',94.59),(94,'Tonight','Home',280.97),(95,'Media','Sports',11.32),(96,'Fly','Clothing',385.71),(97,'Newspaper','Electronics',336.07),(98,'Necessary','Home',309.14),(99,'Behavior','Books',372.25),(100,'Capital','Sports',376.53),(101,'Organization','Sports',499.89),(102,'Political','Electronics',496.15),(103,'Quickly','Books',192.46),(104,'Seat','Electronics',199.66),(105,'Student','Books',433.91),(106,'Market','Sports',236.92),(107,'Who','Clothing',270.45),(108,'Behavior','Clothing',465.04),(109,'Certainly','Books',132.74),(110,'Set','Electronics',16.75),(111,'Central','Home',144.64),(112,'Produce','Books',241.73),(113,'Seem','Sports',411.45),(114,'Suddenly','Sports',416.31),(115,'Need','Sports',327.18),(116,'From','Books',305.44),(117,'Property','Electronics',432.98),(118,'Yes','Sports',440.29),(119,'Class','Electronics',371.84),(120,'Account','Clothing',288.52),(121,'Let','Electronics',343.12),(122,'Pick','Electronics',294.52),(123,'Purpose','Books',151.02),(124,'Stuff','Clothing',410.92),(125,'Yourself','Electronics',268.15),(126,'Friend','Home',263.29),(127,'As','Clothing',91.57),(128,'Everyone','Clothing',272.33),(129,'Sea','Home',66.91),(130,'Condition','Home',382.64),(131,'Improve','Sports',350),(132,'Four','Clothing',318.49),(133,'Common','Sports',195.4),(134,'Wind','Clothing',325.98),(135,'Someone','Home',66.16),(136,'Part','Sports',495.38),(137,'Phone','Books',255.47),(138,'Indicate','Clothing',421.4),(139,'Region','Sports',394.55),(140,'Put','Home',273.77),(141,'Than','Sports',381.23),(142,'Cost','Clothing',305.82),(143,'Reality','Home',33.66),(144,'On','Home',199.65),(145,'Throw','Books',121.47),(146,'Reveal','Books',216.43),(147,'Special','Sports',13.23),(148,'Use','Home',52.06),(149,'Raise','Books',209.94),(150,'Price','Clothing',172.96),(151,'Create','Home',311.23),(152,'Officer','Sports',409.08),(153,'Maybe','Clothing',189.9),(154,'Sell','Books',204.39),(155,'Bring','Clothing',146.8),(156,'Whether','Clothing',352.93),(157,'Without','Clothing',201.47),(158,'Paper','Electronics',388.91),(159,'Stage','Clothing',127.19),(160,'Run','Sports',319.85),(161,'Speech','Home',420.93),(162,'Identify','Books',431.4),(163,'Only','Clothing',216.08),(164,'Suggest','Books',141.61),(165,'Size','Books',478.01),(166,'Culture','Home',361),(167,'Service','Books',159.13),(168,'Former','Sports',313.92),(169,'Son','Clothing',61.35),(170,'Remain','Sports',144.09),(171,'Wide','Books',61.34),(172,'Recently','Books',493.99),(173,'Walk','Sports',498.23),(174,'Around','Sports',99.96),(175,'Exactly','Clothing',141.34),(176,'Especially','Sports',412.24),(177,'Thing','Books',449.8),(178,'Available','Books',254.83),(179,'Second','Home',165.26),(180,'Need','Electronics',204.31),(181,'Affect','Home',111.68),(182,'Form','Electronics',135.81),(183,'Already','Home',220.62),(184,'Single','Clothing',451.87),(185,'Gun','Sports',164.58),(186,'Part','Electronics',125.9),(187,'Truth','Clothing',247.19),(188,'Chair','Sports',454.32),(189,'Because','Sports',386.46),(190,'Attention','Clothing',411.86),(191,'Avoid','Electronics',452.66),(192,'Newspaper','Electronics',122.52),(193,'Example','Electronics',317.69),(194,'Civil','Books',241.95),(195,'Outside','Electronics',38.91),(196,'Half','Clothing',63.14),(197,'Open','Home',80.57),(198,'School','Home',237.8),(199,'Myself','Electronics',189.73),(200,'Start','Electronics',462.52);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-26 19:15:14
