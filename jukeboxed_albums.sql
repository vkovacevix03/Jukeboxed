-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jukeboxed
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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album_title` varchar(150) NOT NULL,
  `genre_id` int DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `like_count` int DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `genre_id` (`genre_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `albums_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Thriller',1,1,NULL),(2,'Private Dancer',1,2,NULL),(3,'The Fame Monster',1,3,NULL),(4,'Songs in the Key of Life',1,4,NULL),(5,'Purple Rain',1,5,NULL),(6,'Nevermind',2,6,NULL),(7,'Revolver',2,7,NULL),(8,'Dark Side Of The Moon',2,8,NULL),(9,'Led Zeppelin IV',2,9,NULL),(10,'It\'s Only Rock \'n\' Roll',2,10,NULL),(11,'All Eyez On Me',3,11,NULL),(12,'The Eminem Show',3,12,NULL),(13,'Enter the Wu-Tang',3,13,NULL),(14,'The College Dropout',3,14,NULL),(15,'My Beautiful Dark Twisted Fantasy',3,14,NULL),(16,'Coat Of Many Colors',4,15,NULL),(17,'Red Headed Stranger',4,16,NULL),(18,'Honky Tonk Heroes',4,17,NULL),(19,'Will The Circle Be Unbroken',4,18,NULL),(20,'Hillbilly Deluxe',4,19,NULL),(21,'Piano Starts Here',5,20,NULL),(22,'Blue Train',5,21,NULL),(23,'Time Out',5,22,NULL),(24,'Love Supreme',5,21,NULL),(25,'Kind of Blue',5,23,NULL);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 17:58:55
