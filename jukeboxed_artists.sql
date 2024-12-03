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
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(100) NOT NULL,
  `like_count` int DEFAULT NULL,
  `wikipediapage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Michael Jackson',NULL,'https://en.wikipedia.org/wiki/Michael_Jackson'),(2,'Tina Turner',NULL,'https://en.wikipedia.org/wiki/Tina_Turner'),(3,'Lady Gaga',NULL,'https://en.wikipedia.org/wiki/Lady_Gaga'),(4,'Stevie Wonder',NULL,'https://en.wikipedia.org/wiki/Stevie_Wonder'),(5,'Prince',NULL,'https://en.wikipedia.org/wiki/Prince_(musician)'),(6,'Nirvana',NULL,'https://en.wikipedia.org/wiki/Nirvana_(band)'),(7,'The Beatles',NULL,'https://en.wikipedia.org/wiki/The_Beatles'),(8,'Pink Floyd',NULL,'https://en.wikipedia.org/wiki/Pink_Floyd'),(9,'Led Zeppelin',NULL,'https://en.wikipedia.org/wiki/Led_Zeppelin'),(10,'The Rolling Stones',NULL,'https://en.wikipedia.org/wiki/The_Rolling_Stones'),(11,'Bob Burnham',NULL,'https://en.wikipedia.org/wiki/Bo_Burnham'),(12,'Eminem',NULL,'https://en.wikipedia.org/wiki/Eminem'),(13,'Wu-Tang Clan',NULL,'https://en.wikipedia.org/wiki/Wu-Tang_Clan'),(14,'Kanye',NULL,'https://en.wikipedia.org/wiki/Kanye_West'),(15,'Dolly Parton',NULL,'https://en.wikipedia.org/wiki/Dolly_Parton'),(16,'Willie Nelson',NULL,'https://en.wikipedia.org/wiki/Willie_Nelson'),(17,'Waylon Jennings',NULL,'https://en.wikipedia.org/wiki/Waylon_Jennings'),(18,'Nitty Gritty Dirt Band',NULL,'https://en.wikipedia.org/wiki/Nitty_Gritty_Dirt_Band'),(19,'Brooks & Dunn',NULL,'https://en.wikipedia.org/wiki/Brooks_%26_Dunn'),(20,'Art Tatum',NULL,'https://en.wikipedia.org/wiki/Art_Tatum'),(21,'John Coltrane',NULL,'https://en.wikipedia.org/wiki/John_Coltrane'),(22,'Bob Dylan',NULL,'https://en.wikipedia.org/wiki/Bob_Dylan'),(23,'Miles Davis',NULL,'https://en.wikipedia.org/wiki/Miles_Davis');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
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
