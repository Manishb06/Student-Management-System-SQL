-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: studentmanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) DEFAULT NULL,
  `credits` int DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Database Management Systems',4),(2,'Operating Systems',4),(3,'Computer Networks',3),(4,'Java Programming',4),(5,'Data Structures',4),(6,'Database Management Systems',4),(7,'Operating Systems',4),(8,'Computer Networks',3),(9,'Java Programming',4),(10,'Data Structures',4),(11,'Database Management Systems',4),(12,'Operating Systems',4),(13,'Computer Networks',3),(14,'Java Programming',4),(15,'Data Structures',4),(16,'Database Management Systems',4),(17,'Operating Systems',4),(18,'Computer Networks',3),(19,'Java Programming',4),(20,'Data Structures',4),(21,'Database Management Systems',4),(22,'Operating Systems',4),(23,'Computer Networks',3),(24,'Java Programming',4),(25,'Data Structures',4),(26,'Database Management Systems',4),(27,'Operating Systems',4),(28,'Computer Networks',3),(29,'Java Programming',4),(30,'Data Structures',4),(31,'Database Management Systems',4),(32,'Operating Systems',4),(33,'Computer Networks',3),(34,'Java Programming',4),(35,'Data Structures',4),(36,'Database Management Systems',4),(37,'Operating Systems',4),(38,'Computer Networks',3),(39,'Java Programming',4),(40,'Data Structures',4),(41,'Database Management Systems',4),(42,'Operating Systems',4),(43,'Computer Networks',3),(44,'Java Programming',4),(45,'Data Structures',4),(46,'Database Management Systems',4),(47,'Operating Systems',4),(48,'Computer Networks',3),(49,'Java Programming',4),(50,'Data Structures',4),(51,'Database Management Systems',4),(52,'Operating Systems',4),(53,'Computer Networks',3),(54,'Java Programming',4),(55,'Data Structures',4);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `faculty_id` int DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `marks` int DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,1,1,'Semester 4',89),(2,2,2,2,'Semester 4',76),(3,3,3,1,'Semester 4',92),(4,4,4,3,'Semester 4',81),(5,5,5,1,'Semester 4',68),(6,1,5,1,'Semester 5',95),(8,1,1,1,'Semester 4',89),(9,2,2,2,'Semester 4',76),(10,3,3,1,'Semester 4',92),(11,4,4,3,'Semester 4',81),(12,5,5,1,'Semester 4',68),(13,1,5,1,'Semester 5',95),(14,3,4,3,'Semester 5',88),(15,1,1,1,'Semester 4',89),(16,2,2,2,'Semester 4',76),(17,3,3,1,'Semester 4',92),(18,4,4,3,'Semester 4',81),(19,5,5,1,'Semester 4',68),(20,1,5,1,'Semester 5',95),(21,3,4,3,'Semester 5',88),(22,1,1,1,'Semester 4',89),(23,2,2,2,'Semester 4',76),(24,3,3,1,'Semester 4',92),(25,4,4,3,'Semester 4',81),(26,5,5,1,'Semester 4',68),(27,1,5,1,'Semester 5',95),(28,3,4,3,'Semester 5',88),(29,1,1,1,'Semester 4',89),(30,2,2,2,'Semester 4',76),(31,3,3,1,'Semester 4',92),(32,4,4,3,'Semester 4',81),(33,5,5,1,'Semester 4',68),(34,1,5,1,'Semester 5',95),(35,3,4,3,'Semester 5',88),(36,1,1,1,'Semester 4',89),(37,2,2,2,'Semester 4',76),(38,3,3,1,'Semester 4',92),(39,4,4,3,'Semester 4',81),(40,5,5,1,'Semester 4',68),(41,1,5,1,'Semester 5',95),(42,3,4,3,'Semester 5',88),(43,1,1,1,'Semester 4',89),(44,2,2,2,'Semester 4',76),(45,3,3,1,'Semester 4',92),(46,4,4,3,'Semester 4',81),(47,5,5,1,'Semester 4',68),(48,1,5,1,'Semester 5',95),(49,3,4,3,'Semester 5',88),(50,1,1,1,'Semester 4',89),(51,2,2,2,'Semester 4',76),(52,3,3,1,'Semester 4',92),(53,4,4,3,'Semester 4',81),(54,5,5,1,'Semester 4',68),(55,1,5,1,'Semester 5',95),(56,3,4,3,'Semester 5',88),(57,1,1,1,'Semester 4',89),(58,2,2,2,'Semester 4',76),(59,3,3,1,'Semester 4',92),(60,4,4,3,'Semester 4',81),(61,5,5,1,'Semester 4',68),(62,1,5,1,'Semester 5',95),(63,3,4,3,'Semester 5',88),(64,1,1,1,'Semester 4',89),(65,2,2,2,'Semester 4',76),(66,3,3,1,'Semester 4',92),(67,4,4,3,'Semester 4',81),(68,5,5,1,'Semester 4',68),(69,1,5,1,'Semester 5',95),(70,3,4,3,'Semester 5',88);
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(100) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Dr. Rao','CSE'),(2,'Dr. Mehta','ECE'),(3,'Dr. Singh','IT'),(4,'Dr. Rao','CSE'),(5,'Dr. Mehta','ECE'),(6,'Dr. Singh','IT'),(7,'Dr. Rao','CSE'),(8,'Dr. Mehta','ECE'),(9,'Dr. Singh','IT'),(10,'Dr. Rao','CSE'),(11,'Dr. Mehta','ECE'),(12,'Dr. Singh','IT'),(13,'Dr. Rao','CSE'),(14,'Dr. Mehta','ECE'),(15,'Dr. Singh','IT'),(16,'Dr. Rao','CSE'),(17,'Dr. Mehta','ECE'),(18,'Dr. Singh','IT'),(19,'Dr. Rao','CSE'),(20,'Dr. Mehta','ECE'),(21,'Dr. Singh','IT'),(22,'Dr. Rao','CSE'),(23,'Dr. Mehta','ECE'),(24,'Dr. Singh','IT'),(25,'Dr. Rao','CSE'),(26,'Dr. Mehta','ECE'),(27,'Dr. Singh','IT'),(28,'Dr. Rao','CSE'),(29,'Dr. Mehta','ECE'),(30,'Dr. Singh','IT');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentreport`
--

DROP TABLE IF EXISTS `studentreport`;
/*!50001 DROP VIEW IF EXISTS `studentreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studentreport` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `course_name`,
 1 AS `marks`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_student_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Rahul','Sharma','Male',20,'rahul@gmail.com','9999999999','CSE'),(2,'Priya','Reddy','Female',21,'priya@gmail.com','9876543211','ECE'),(3,'Arjun','Kumar','Male',22,'arjun@gmail.com','9876543212','CSE'),(4,'Sneha','Patel','Female',20,'sneha@gmail.com','9876543213','IT'),(5,'Aman','Verma','Male',21,'aman@gmail.com','9876543214','EEE');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `studentreport`
--

/*!50001 DROP VIEW IF EXISTS `studentreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentreport` AS select `s`.`first_name` AS `first_name`,`s`.`last_name` AS `last_name`,`c`.`course_name` AS `course_name`,`e`.`marks` AS `marks` from ((`students` `s` join `enrollments` `e` on((`s`.`student_id` = `e`.`student_id`))) join `courses` `c` on((`e`.`course_id` = `c`.`course_id`))) */;
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

-- Dump completed on 2026-07-31 18:59:30
