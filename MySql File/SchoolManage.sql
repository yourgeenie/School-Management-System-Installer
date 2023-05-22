-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolms
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Temporary view structure for view `[professor's subject]`
--

DROP TABLE IF EXISTS `[professor's subject]`;
/*!50001 DROP VIEW IF EXISTS `[professor's subject]`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `[professor's subject]` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `subCode`,
 1 AS `subName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `[schedule view]`
--

DROP TABLE IF EXISTS `[schedule view]`;
/*!50001 DROP VIEW IF EXISTS `[schedule view]`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `[schedule view]` AS SELECT 
 1 AS `schedID`,
 1 AS `courseName`,
 1 AS `profFirstName`,
 1 AS `profLastName`,
 1 AS `subCode`,
 1 AS `subName`,
 1 AS `studName`,
 1 AS `schedDay`,
 1 AS `timeStart`,
 1 AS `timeEnd`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `[transaction view]`
--

DROP TABLE IF EXISTS `[transaction view]`;
/*!50001 DROP VIEW IF EXISTS `[transaction view]`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `[transaction view]` AS SELECT 
 1 AS `transID`,
 1 AS `transName`,
 1 AS `studID`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `amount`,
 1 AS `transDate`,
 1 AS `transMethod`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courseID` int NOT NULL AUTO_INCREMENT,
  `courseCategory` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`courseID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Computer Courses','Bachelor of Science in Computer Science (BS CS)'),(2,'Computer Courses','Bachelor of Science in Information Technology (BS IT)'),(3,'Engineering Courses','Bachelor of Science in Industrial Engineering (BS IE)'),(4,'Engineering Courses','Bachelor of Science in Civil Engineering (BS CE)'),(5,'Computer Courses','Bachelor of Science in Information Science (BS IS)'),(6,'Engineering Courses','Bachelor of Science in Mechanical Engineering (BS ME)'),(7,'Engineering Courses','Bachelor of Science in Chemical Engineering (BS CE)'),(8,'Teaching Courses','Bachelor of Secondary Education (BS ED)'),(9,'Architecture Courses','Bachelors of Science in Architecture (BSA)'),(10,'Science Courses','Bachelor of Science in Biology (BS Bio)');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `profID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contactNumber` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`profID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (1,'Noli','Lucila','M','nolilucila@bumail.com','09123456789'),(2,'Rodel','Naz','M','rodelnaz@bumail.com','09234567891'),(3,'Ron','Mendonez','M','ronmendonez@bumail.com','09345678912'),(4,'Mike','Brogada','M','mikebrogada@bumail.com','09456789123'),(5,'Jennifer','Llovido','F','jenniferllovido@bumail.com','09567891234'),(6,'Gerimel','Bulawan','M','gerimelbulawan@bumail.com','09678912345'),(7,'Carolina','Boyon','F','carolinaboyon@bumail.com','09789123456'),(8,'Franklin','Miranda','M','franklinmiranda@bumail.com','09891234567'),(9,'Laarni','Pancho','F','laarnipancho@bumail.com','09912345678'),(10,'Jayvee','Vibar','M','jayveevibar@bumail.com','09102345466');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `schedID` int NOT NULL AUTO_INCREMENT,
  `courseID` int DEFAULT NULL,
  `profID` int DEFAULT NULL,
  `subID` int DEFAULT NULL,
  `studID` int DEFAULT NULL,
  `schedDay` varchar(10) DEFAULT NULL,
  `timeStart` time DEFAULT NULL,
  `timeEnd` time DEFAULT NULL,
  PRIMARY KEY (`schedID`),
  KEY `courseID` (`courseID`),
  KEY `profID` (`profID`),
  KEY `subID` (`subID`),
  KEY `studID` (`studID`),
  CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `courses` (`courseID`),
  CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`profID`) REFERENCES `professors` (`profID`),
  CONSTRAINT `schedules_ibfk_3` FOREIGN KEY (`subID`) REFERENCES `subjects` (`subID`),
  CONSTRAINT `schedules_ibfk_4` FOREIGN KEY (`studID`) REFERENCES `students` (`studID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,2,1,1,1,'Monday','08:00:00','10:00:00'),(2,2,2,2,2,'Tuesday','09:00:00','11:00:00'),(3,2,3,3,3,'Thursay','10:00:00','12:00:00'),(4,2,4,4,4,'Wednesday','11:00:00','13:00:00'),(5,2,5,5,5,'Friday','12:00:00','14:00:00'),(6,2,6,6,6,'Saturday','13:00:00','15:00:00'),(7,2,1,1,1,'Monday','08:00:00','10:00:00'),(8,2,2,2,2,'Monday','10:00:00','12:00:00'),(9,2,3,3,3,'Tuesday','08:00:00','10:00:00'),(10,2,4,4,4,'Tuesday','10:00:00','12:00:00'),(11,2,5,5,5,'Wednesday','08:00:00','10:00:00'),(12,2,6,6,6,'Wednesday','10:00:00','12:00:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contactAdd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`studID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Mary Grace','Ala','F','marygraceala@bumail.com','Bulacan'),(2,'Beverly Grace','Borbe','F','beverlygraceborbe@bumail.com','Quezon City'),(3,'Joyce Ann','Loterte','F','joyceannloterte@bumail.com','Makati'),(4,'Claude Allen','Belgado','M','claudeallenbelgado@bumail.com','San Juan'),(5,'Reuben','Bien','M','reubenbien@bumail.com','Parañaque'),(6,'Jeff Hubert','Orbeta','M','jeffhubertorbeta@bumail.com','Mandaluyong'),(7,'Barbhea','Acosta','F','barbheaacosta@bumail.com','Antipolo'),(8,'Menchie','Bela','F','menchiebela@bumail.com','Muntinlupa'),(9,'Eugene','Banzagales','M','eugenebanzagales@bumail.com','Muntinlupa'),(10,'Jaali Zhen','Esma','F','jaalizhenesma@bumail.com','Pasig'),(11,'Maria','Josefa','F','josefa@email.com','Tiwi Albay'),(12,'Nikki','Abogadie','F','nikki@gmail.com','Guinobatan Albay'),(13,'Nina','Boral','F','nina@email.com','Tabaco Albay'),(14,'Lambert','Irani','M','lambert@email.com','Tiwi Albay'),(16,'Mina','Mahal','F','minamahalkita@gmail.com','Sa Puso Mo'),(17,'Junel','Bariso','M','junelbariso@gmail.com','Brgy.4 Bacacay, Albay'),(18,'Elivince','Timbas','It','elivince@gmail.com','Manila, Quezon City'),(19,'Robert Carlyle','Bitara','Unknown','robert@fukimon.com','Chamba'),(20,'Jericka ','Esparas','Shemale','jericka@shit.com','Gubat, Sorsogon');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subID` int NOT NULL AUTO_INCREMENT,
  `subCode` varchar(255) DEFAULT NULL,
  `subName` varchar(255) DEFAULT NULL,
  `courseID` int DEFAULT NULL,
  PRIMARY KEY (`subID`),
  KEY `courseID` (`courseID`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `courses` (`courseID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'IT 102','Computer Programming 1',2),(2,'IT 101','Introduction to Computing',2),(3,'IT 109','Discrete Mathematics',2),(4,'IT 120','Event Driven Programming',2),(5,'IT 105','Information Management',2),(6,'IT 106','Application Development',2),(7,'IT 117','Quantitative Methods',2),(8,'IT 114','Networking',2),(9,'IT 104','Data Structures and Algorithm',2),(10,'IT 107','Digital System Design',2);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transID` int NOT NULL AUTO_INCREMENT,
  `transName` varchar(255) DEFAULT NULL,
  `studID` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transDate` date NOT NULL,
  `transMethod` varchar(50) NOT NULL,
  PRIMARY KEY (`transID`),
  KEY `studID` (`studID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`studID`) REFERENCES `students` (`studID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'Tuition Fee',1,5000.00,'2023-04-01','Cash'),(2,'Book Purchase',2,250.00,'2023-04-02','Cash'),(3,'Transportation Fee',3,100.00,'2023-04-03','Online Transfer'),(4,'School Uniform',1,1000.00,'2023-04-04','Cash'),(5,'Exam Fee',4,500.00,'2023-04-05','Online Transfer'),(6,'Lab Equipment',2,500.00,'2023-04-06','Cash'),(7,'Activity Fee',3,150.00,'2023-04-07','Cash'),(8,'School Uniform',1,50.00,'2023-04-08','Online Transfer'),(9,'Sports Uniform',4,750.00,'2023-04-09','Cash'),(10,'Music Lessons',2,200.00,'2023-04-10','Cash');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` longtext,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','58acb7acccce58ffa8b953b12b5a7702bd42dae441c1ad85057fa70b'),('guest','5cf371cef0648f2656ddc13b773aa642251267dbd150597506e96c3a');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'schoolms'
--

--
-- Dumping routines for database 'schoolms'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetStudentTransactions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStudentTransactions`(IN studentID INT)
BEGIN
    SELECT transactions.transID, transactions.transName, transactions.amount, transactions.transDate, transactions.transMethod
    FROM transactions
    INNER JOIN students
    ON transactions.studID = students.studID
    WHERE students.studID = studentID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `[professor's subject]`
--

/*!50001 DROP VIEW IF EXISTS `[professor's subject]`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `[professor's subject]` AS select `professors`.`firstName` AS `firstName`,`professors`.`lastName` AS `lastName`,`subjects`.`subCode` AS `subCode`,`subjects`.`subName` AS `subName` from (`professors` join `subjects` on((`professors`.`profID` = `subjects`.`subID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `[schedule view]`
--

/*!50001 DROP VIEW IF EXISTS `[schedule view]`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `[schedule view]` AS select `s`.`schedID` AS `schedID`,`c`.`courseName` AS `courseName`,`p`.`firstName` AS `profFirstName`,`p`.`lastName` AS `profLastName`,`su`.`subCode` AS `subCode`,`su`.`subName` AS `subName`,concat(`st`.`firstName`,' ',`st`.`lastName`) AS `studName`,`s`.`schedDay` AS `schedDay`,`s`.`timeStart` AS `timeStart`,`s`.`timeEnd` AS `timeEnd` from ((((`schedules` `s` join `courses` `c` on((`s`.`courseID` = `c`.`courseID`))) join `professors` `p` on((`s`.`profID` = `p`.`profID`))) join `subjects` `su` on((`s`.`subID` = `su`.`subID`))) join `students` `st` on((`s`.`studID` = `st`.`studID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `[transaction view]`
--

/*!50001 DROP VIEW IF EXISTS `[transaction view]`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `[transaction view]` AS select `t`.`transID` AS `transID`,`t`.`transName` AS `transName`,`t`.`studID` AS `studID`,`s`.`firstName` AS `firstName`,`s`.`lastName` AS `lastName`,`t`.`amount` AS `amount`,`t`.`transDate` AS `transDate`,`t`.`transMethod` AS `transMethod` from (`transactions` `t` join `students` `s` on((`t`.`studID` = `s`.`studID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-23  0:11:00
