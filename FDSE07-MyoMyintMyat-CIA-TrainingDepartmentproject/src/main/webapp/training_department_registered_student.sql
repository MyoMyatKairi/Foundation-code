-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: training_department
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `registered_student`
--

DROP TABLE IF EXISTS `registered_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered_student` (
  `s_ID` int NOT NULL AUTO_INCREMENT,
  `s_name` varchar(45) DEFAULT NULL,
  `s_email` varchar(45) DEFAULT NULL,
  `registered_course` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`s_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered_student`
--

LOCK TABLES `registered_student` WRITE;
/*!40000 ALTER TABLE `registered_student` DISABLE KEYS */;
INSERT INTO `registered_student` VALUES (90,'ymk','yemyintkyaw241220@gmail.com','Graphic Design Foundation','3pm to 5pm',1500),(91,'ymk','yemyintkyaw241220@gmail.com','Graphic Design Foundation','3pm to 5pm',1500),(92,'ymk','yemyintkyaw241220@gmail.com','Graphic Design Foundation','3pm to 5pm',1500),(94,'Aki','11eikyw@gmail.com','Frontend Development','3pm to 5pm',3000),(95,'Nay','naychilynn614@gmail.com','Graphic Design Foundation','3pm to 5pm',1500),(96,'Jayaprakash','subbjayam@gmail.com','Computer Basic','3pm to 5pm',1000),(97,'ymk','yemyintkyaw241220@gmail.com','Programming Foundation','9:00 am to 11am',1500),(98,'ymk','yemyintkyaw241220@gmail.com','Programming Foundation','9:00 am to 11am',1500),(99,'ymk','yemyintkyaw241220@gmail.com','Programming Foundation','9:00 am to 11am',1500),(101,'ymk','yemyintkyaw241220@gmail.com','Programming Foundation','9:00 am to 11am',1500),(102,'ymk','yemyintkyaw241220@gmail.com','Programming Foundation','9:00 am to 11am',1500),(103,'ymk','yemyintkyaw241220@gmail.com','Programming Foundation','3pm to 5pm',1500),(104,'ymk','yemyintkyaw241220@gmail.com','Programming Foundation','9:00 am to 11am',1500),(108,'Willian','fdse0422-038@learning.educlaas.com','Backend Development','3pm to 5pm',3000),(109,'Willian','fdse0422-038@learning.educlaas.com','Graphic Design Foundation','9:00 am to 11am',1500),(110,'Willian','fdse0422-038@learning.educlaas.com','Backend Development','3pm to 5pm',3000),(111,'Willian','fdse0422-038@learning.educlaas.com','Backend Development','3pm to 5pm',3000),(112,'Willian','fdse0422-038@learning.educlaas.com','Programming Foundation','9:00 am to 11am',1500);
/*!40000 ALTER TABLE `registered_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 13:16:56
