-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `mid` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `seatno` varchar(45) DEFAULT NULL,
  `stime` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'2','Tony Stark','1','Doctor Strange in the Multiverse of Madness','4','01:00 PM','800'),(15,'3','swetha','2','Thallumaala','2','09:00 PM','400'),(16,'3','swetha','2','Thallumaala','1','01:00 PM','200');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) DEFAULT NULL,
  `mid` varchar(45) DEFAULT NULL,
  `movie` varchar(45) DEFAULT NULL,
  `fback` varchar(100) DEFAULT NULL,
  `star` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Tony Stark','1','Doctor Strange in the Multiverse of Madness','Awesome movie!! Waiting for the next part.','5'),(2,'swetha','1','Doctor Strange in the Multiverse of Madness','So exicted to see the concept of multiverse','3'),(3,'Tony Stark','2','Thallumaala','Edivett movie !!!','3'),(8,'Tony Stark','1','Doctor Strange in the Multiverse of Madness','dsdsd','3');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_details`
--

DROP TABLE IF EXISTS `movie_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_details` (
  `movie_id` int NOT NULL,
  `movie_name` varchar(45) DEFAULT NULL,
  `movie_desc` varchar(600) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `now_r` varchar(45) DEFAULT NULL,
  `show_time_1` varchar(45) DEFAULT NULL,
  `show_time_2` varchar(45) DEFAULT NULL,
  `show_time_3` varchar(45) DEFAULT NULL,
  `show_time_4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_details`
--

LOCK TABLES `movie_details` WRITE;
/*!40000 ALTER TABLE `movie_details` DISABLE KEYS */;
INSERT INTO `movie_details` VALUES (1,'Doctor Strange in the Multiverse of Madness','Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse.','Action/Adventure','images\\ds.jpg','C:\\Users\\surya\\Documents\\NetBeansProjects\\MovieTicket\\build\\web\\\\images\\ds.jpg','2022-08-22','True','09:00 AM','01:00 PM','05:00 PM','09:00 PM'),(2,'Thallumaala','Thallumaala is a 2022 Indian Malayalam-language action comedy film directed by Khalid Rahman and produced by Ashiq Usman. The film was written by Muhsin Parari and Ashraf Hamza, which stars Tovino Thomas, Kalyani Priyadarshan and Shine Tom Chacko in the lead roles','Action/Comedy','images\\tm.jpg','C:\\Users\\surya\\Documents\\NetBeansProjects\\MovieTicket\\build\\web\\\\images\\tm.jpg','2022-08-23','true','05:00 PM','09:00 AM','09:00 PM','01:00 PM');
/*!40000 ALTER TABLE `movie_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `now_running`
--

DROP TABLE IF EXISTS `now_running`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `now_running` (
  `movie_id` int NOT NULL,
  `movie_name` varchar(45) DEFAULT NULL,
  `movie_desc` varchar(600) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `now_running`
--

LOCK TABLES `now_running` WRITE;
/*!40000 ALTER TABLE `now_running` DISABLE KEYS */;
INSERT INTO `now_running` VALUES (1,'Doctor Strange in the Multiverse of Madness','Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse.','Action/Adventure','images\\ds.jpg','C:\\Users\\surya\\Documents\\NetBeansProjects\\MovieTicket\\build\\web\\\\images\\ds.jpg'),(2,'Thallumaala','Thallumaala is a 2022 Indian Malayalam-language action comedy film directed by Khalid Rahman and produced by Ashiq Usman. The film was written by Muhsin Parari and Ashraf Hamza, which stars Tovino Thomas, Kalyani Priyadarshan and Shine Tom Chacko in the lead roles','Action/Comedy','images\\tm.jpg','C:\\Users\\surya\\Documents\\NetBeansProjects\\MovieTicket\\build\\web\\\\images\\tm.jpg');
/*!40000 ALTER TABLE `now_running` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mid` int NOT NULL,
  `seat1` varchar(45) DEFAULT NULL,
  `seat2` varchar(45) DEFAULT NULL,
  `seat3` varchar(45) DEFAULT NULL,
  `seat4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,1,'250','246','250','250'),(2,2,'250','249','250','248');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) DEFAULT NULL,
  `upwd` varchar(45) DEFAULT NULL,
  `uemail` varchar(45) DEFAULT NULL,
  `umobile` varchar(45) DEFAULT NULL,
  `utype` varchar(45) DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Surya','123','surya@gmail.com','9443244324','admin'),(2,'Tony Stark','123','tony@gmail.com','2323244324','user'),(3,'swetha','123','swetha@yahooo','674653','user'),(4,'Vineetha','123','v@g.in','987654321','user'),(5,'Yedu','asdfghjkl;\'','Yedu@g.com','9876543210','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-25  0:44:52
