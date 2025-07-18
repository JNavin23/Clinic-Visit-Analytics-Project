CREATE DATABASE  IF NOT EXISTS `clinic_visits_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinic_visits_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinic_visits_db
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `clinics`
--

DROP TABLE IF EXISTS `clinics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinics` (
  `Clinic_ID` text,
  `Clinic_Name` text,
  `Location` text,
  `No_of_Doctors` int DEFAULT NULL,
  `Available_Beds` int DEFAULT NULL,
  `Speciality` text,
  `Area_Type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinics`
--

LOCK TABLES `clinics` WRITE;
/*!40000 ALTER TABLE `clinics` DISABLE KEYS */;
INSERT INTO `clinics` VALUES ('C001','Harris Clinic','Shawnbury',8,16,'General','Rural'),('C002','Valdez Clinic','East Lorifort',5,7,'General','Urban'),('C003','Wilson Clinic','Kristenberg',5,11,'General','Rural'),('C004','Hebert Clinic','East Christophermouth',6,8,'Pediatrics','Rural'),('C005','Brooks Clinic','Williamtown',9,19,'Pediatrics','Rural'),('C006','Jimenez Clinic','West Susan',5,15,'Dermatology','Rural'),('C007','Alvarado Clinic','Jenniferstad',7,11,'Dermatology','Urban'),('C008','King Clinic','South Brandon',5,19,'Dermatology','Rural'),('C009','Day Clinic','New Crystal',4,16,'Dermatology','Urban'),('C010','Phillips Clinic','Lake Marissa',8,16,'Pediatrics','Rural'),('C011','Robinson Clinic','Lake Timothy',7,6,'Pediatrics','Rural'),('C012','Chavez Clinic','Lake Craigmouth',3,5,'General','Urban'),('C013','Martinez Clinic','Port Michellefort',5,19,'Dermatology','Urban'),('C014','Jackson Clinic','Franciscoside',6,14,'Pediatrics','Rural'),('C015','Clark Clinic','East Dianaton',5,9,'Pediatrics','Rural'),('C016','Rivera Clinic','Lake Elizabethland',8,14,'General','Rural'),('C017','Lee Clinic','Lake Erinview',7,12,'Pediatrics','Rural'),('C018','Bray Clinic','Jessicastad',9,9,'Cardiology','Rural'),('C019','Davidson Clinic','Port Caitlinland',3,7,'Pediatrics','Rural'),('C020','Fowler Clinic','Pereztown',8,9,'Dermatology','Rural'),('C021','Harrell Clinic','Lake Scott',4,8,'Pediatrics','Urban'),('C022','Quinn Clinic','Brownberg',9,18,'Dermatology','Rural'),('C023','Rodriguez Clinic','Williamsport',8,9,'General','Rural'),('C024','Stewart Clinic','Erikafort',8,8,'General','Urban'),('C025','Williams Clinic','East Rachael',5,6,'General','Urban');
/*!40000 ALTER TABLE `clinics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-17 14:58:47
