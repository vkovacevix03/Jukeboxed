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
INSERT INTO `albums` VALUES (1,'Thriller',1,1),(2,'Private Dancer',1,2),(3,'The Fame Monster',1,3),(4,'Songs in the Key of Life',1,4),(5,'Purple Rain',1,5),(6,'Nevermind',2,6),(7,'Revolver',2,7),(8,'Dark Side Of The Moon',2,8),(9,'Led Zeppelin IV',2,9),(10,'It\'s Only Rock \'n\' Roll',2,10),(11,'All Eyez On Me',3,11),(12,'The Eminem Show',3,12),(13,'Enter the Wu-Tang',3,13),(14,'The College Dropout',3,14),(15,'My Beautiful Dark Twisted Fantasy',3,14),(16,'Coat Of Many Colors',4,15),(17,'Red Headed Stranger',4,16),(18,'Honky Tonk Heroes',4,17),(19,'Will The Circle Be Unbroken',4,18),(20,'Hillbilly Deluxe',4,19),(21,'Piano Starts Here',5,20),(22,'Blue Train',5,21),(23,'Time Out',5,22),(24,'Love Supreme',5,21),(25,'Kind of Blue',5,23);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(100) NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Michael Jackson'),(2,'Tina Turner'),(3,'Lady Gaga'),(4,'Stevie Wonder'),(5,'Prince'),(6,'Nirvana'),(7,'The Beatles'),(8,'Pink Floyd'),(9,'Led Zeppelin'),(10,'The Rolling Stones'),(11,'Bob Burnham'),(12,'Eminem'),(13,'Wu-Tang Clan'),(14,'Kanye'),(15,'Dolly Parton'),(16,'Willie Nelson'),(17,'Waylon Jennings'),(18,'Nitty Gritty Dirt Band'),(19,'Brooks & Dunn'),(20,'Art Tatum'),(21,'John Coltrane'),(22,'Bob Dylan'),(23,'Miles Davis');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Pop'),(2,'Rock'),(3,'Hip Hop'),(4,'Country'),(5,'Jazz');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `song_title` varchar(150) NOT NULL,
  `album_id` int DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `mp3maybe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  KEY `album_id` (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Wanna Be Startin’ Somethin’',1,1,NULL,NULL),(2,'Baby Be Mine',1,1,NULL,NULL),(3,'The Girl is Mine',1,1,NULL,NULL),(4,'Thriller',1,1,NULL,NULL),(5,'Beat It',1,1,NULL,NULL),(6,'Billie Jean',1,1,NULL,NULL),(7,'Human Nature',1,1,NULL,NULL),(8,'P.Y.T. (Pretty Young Thing)',1,1,NULL,NULL),(9,'The Lady in My Life',1,1,NULL,NULL),(10,'I Might Have Been Queen',2,2,NULL,NULL),(11,'What’s Love Got to Do with It',2,2,NULL,NULL),(12,'Show Some Respect',2,2,NULL,NULL),(13,'Better Be Good to Me',2,2,NULL,NULL),(14,'Private Dancer',2,2,NULL,NULL),(15,'Let’s Stay Together',2,2,NULL,NULL),(16,'Bad Romance',3,3,NULL,NULL),(17,'Alejandro',3,3,NULL,NULL),(18,'Dance in the Dark',3,3,NULL,NULL),(19,'Monster',3,3,NULL,NULL),(20,'So Happy I Could Die',3,3,NULL,NULL),(21,'Speechless',3,3,NULL,NULL),(22,'Isn’t She Lovely',4,4,NULL,NULL),(23,'Joy Inside My Tears',4,4,NULL,NULL),(24,'Contusion',4,4,NULL,NULL),(25,'Sir Duke',4,4,NULL,NULL),(26,'I Wish',4,4,NULL,NULL),(27,'Knocks Me Off My Feet',4,4,NULL,NULL),(28,'Pastime Paradise',4,4,NULL,NULL),(29,'Summer Soft',4,4,NULL,NULL),(30,'Ordinary Pain',4,4,NULL,NULL),(31,'Let’s Go Crazy',5,5,NULL,NULL),(32,'When Doves Cry',5,5,NULL,NULL),(33,'I Would Die 4 U',5,5,NULL,NULL),(34,'Purple Rain',5,5,NULL,NULL),(35,'Take Me with U',5,5,NULL,NULL),(36,'Smells Like Teen Spirit',6,6,NULL,NULL),(37,'In Bloom',6,6,NULL,NULL),(38,'Come as You Are',6,6,NULL,NULL),(39,'Breed',6,6,NULL,NULL),(40,'Lithium',6,6,NULL,NULL),(41,'Taxman',7,7,NULL,NULL),(42,'Eleanor Rigby',7,7,NULL,NULL),(43,'I’m Only Sleeping',7,7,NULL,NULL),(44,'Here, There and Everywhere',7,7,NULL,NULL),(45,'She Said She Said',7,7,NULL,NULL),(46,'Speak to Me',8,8,NULL,NULL),(47,'Breathe',8,8,NULL,NULL),(48,'On the Run',8,8,NULL,NULL),(49,'Time',8,8,NULL,NULL),(50,'The Great Gig in the Sky',8,8,NULL,NULL),(51,'Black Dog',9,9,NULL,NULL),(52,'Rock and Roll',9,9,NULL,NULL),(53,'The Battle of Evermore',9,9,NULL,NULL),(54,'Stairway to Heaven',9,9,NULL,NULL),(55,'Start Me Up',10,10,NULL,NULL),(56,'Brown Sugar',10,10,NULL,NULL),(57,'Jumpin’ Jack Flash',10,10,NULL,NULL),(58,'Wild Horses',10,10,NULL,NULL),(59,'Ambitionz Az a Ridah',11,11,NULL,NULL),(60,'All About U',11,11,NULL,NULL),(61,'Skandalouz',11,11,NULL,NULL),(62,'Got My Mind Made Up',11,11,NULL,NULL),(63,'How Do U Want It',11,11,NULL,NULL),(64,'Curtains Up',12,12,NULL,NULL),(65,'White America',12,12,NULL,NULL),(66,'Business',12,12,NULL,NULL),(67,'Cleanin’ Out My Closet',12,12,NULL,NULL),(68,'Square Dance',12,12,NULL,NULL),(69,'Wu-Tang Clan Ain’t Nuthing ta F’ Wit',13,13,NULL,NULL),(70,'C.R.E.A.M.',13,13,NULL,NULL),(71,'Protect Ya Neck',13,13,NULL,NULL),(72,'Can It Be All So Simple',13,13,NULL,NULL),(73,'Through the Wire',14,14,NULL,NULL),(74,'Slow Jamz',14,14,NULL,NULL),(75,'All Falls Down',14,14,NULL,NULL),(76,'Jesus Walks',14,14,NULL,NULL),(77,'Dark Fantasy',15,14,NULL,NULL),(78,'Gorgeous',15,14,NULL,NULL),(79,'Power',15,14,NULL,NULL),(80,'All of the Lights',15,14,NULL,NULL),(81,'Coat of Many Colors',16,15,NULL,NULL),(82,'The Bargain Store',16,15,NULL,NULL),(83,'I Will Always Love You',16,15,NULL,NULL),(84,'Jolene',16,15,NULL,NULL),(85,'Light of a Clear Blue Morning',16,15,NULL,NULL),(86,'Whiskey River',17,16,NULL,NULL),(87,'Blue Eyes Crying in the Rain',17,16,NULL,NULL),(88,'Red Headed Stranger',17,16,NULL,NULL),(89,'I Can’t Help It (If I’m Still in Love with You)',17,16,NULL,NULL),(90,'Honky Tonk Heroes',18,17,NULL,NULL),(91,'Ain’t No Grave',18,17,NULL,NULL),(92,'I Got a Right to Cry',18,17,NULL,NULL),(93,'You Ask Me To',18,17,NULL,NULL),(94,'Will the Circle Be Unbroken',19,18,NULL,NULL),(95,'Keep on the Sunny Side',19,18,NULL,NULL),(96,'The Weight',19,18,NULL,NULL),(97,'The House of the Rising Sun',19,18,NULL,NULL),(98,'Boot Scootin’ Boogie',20,19,NULL,NULL),(99,'Hard Workin’ Man',20,19,NULL,NULL),(100,'My Maria',20,19,NULL,NULL),(101,'Ain’t Nothing ‘Bout You',20,19,NULL,NULL),(102,'Body and Soul',21,20,NULL,NULL),(103,'I Got Rhythm',21,20,NULL,NULL),(104,'Take the “A” Train',21,20,NULL,NULL),(105,'Blue Monk',21,20,NULL,NULL),(106,'Moment’s Notice',22,21,NULL,NULL),(107,'Blue Train',22,21,NULL,NULL),(108,'Locomotion',22,21,NULL,NULL),(109,'Lazy Bird',22,21,NULL,NULL),(110,'Subterranean Homesick Blues',23,22,NULL,NULL),(111,'Shelter from the Storm',23,22,NULL,NULL),(112,'Sad-Eyed Lady of the Lowlands',23,22,NULL,NULL),(113,'Just Like Tom Thumb’s Blues',23,22,NULL,NULL),(114,'Acknowledgment',24,23,NULL,NULL),(115,'Resolution',24,23,NULL,NULL),(116,'Pursuance',24,23,NULL,NULL),(117,'Psalm',24,23,NULL,NULL),(118,'So What',25,23,NULL,NULL),(119,'Freddie Freeloader',25,23,NULL,NULL),(120,'Blue in Green',25,23,NULL,NULL),(121,'All Blues',25,23,NULL,NULL);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 16:08:54
