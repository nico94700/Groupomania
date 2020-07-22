-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: database_groupomania
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'admin@hotmail.fr','groupomania','$2b$10$8Xc23uFr916.ciwG3hfJDem2sDObr355SPHg.djr4jKIzqDDZ2rxS',0,'2020-07-14 15:06:56','2020-07-14 15:06:56'),(11,'nicojulie490@gmail.com','nicolas94700','$2b$10$oBhnjG4BzCyvp10iNOYukO1r4mKWPBuOmP5fopOD3I2XaroE70LIi',0,'2020-07-14 15:22:18','2020-07-14 15:22:18'),(12,'johndoe@hotmail.com','compta','$2b$10$vbdpVpg61EIbnmILDTMn2OMZnUA88hD33gGdBVdCUgrgCT7nwO0Ku',0,'2020-07-15 18:38:23','2020-07-15 18:38:23'),(13,'administrateur@hotmail.fr','grou','$2b$10$jT92MIbBgUCOl9..L44OTuNhouSIPvfaTasuGnJdOoE4tNd.lZWoK',0,'2020-07-16 12:00:55','2020-07-16 12:00:55'),(14,'admin.groupomania@hotmail.com','admin','$2b$10$QhZHgX3ao6hkaJZMMjtjWu6NYFvOfYcbFWgajC.FGIz3lYB8VEOoG',0,'2020-07-17 12:55:00','2020-07-17 12:55:00'),(15,'nm@hotmail.fr','Moi94','$2b$10$L.4FYiO6Cz8ItUV5L6Pmce4GLlGd84NmVqwH33muRMu2o7jNGVbbO',0,'2020-07-17 18:53:45','2020-07-17 18:53:45'),(16,'nini@hotmail.fr','nini94700','$2b$10$Dxc2Z6mOq47DJGOHoUb93e03DSM4cfKETyeSvY6P0/BQatyb2nIuG',0,'2020-07-18 13:58:52','2020-07-18 13:58:52');
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

-- Dump completed on 2020-07-22 13:49:17
