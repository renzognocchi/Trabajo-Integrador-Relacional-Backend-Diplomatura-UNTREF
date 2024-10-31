-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trailerflix
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
-- Table structure for table `contenido_genero`
--

DROP TABLE IF EXISTS `contenido_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido_genero` (
  `id` int NOT NULL,
  `gene_id` int NOT NULL DEFAULT '0',
  KEY `contenido_genero_FK0_idx` (`id`),
  KEY `contenido_genero_fk1_idx` (`gene_id`),
  CONSTRAINT `contenido_genero_fk0` FOREIGN KEY (`id`) REFERENCES `contenido` (`peli_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `contenido_genero_fk1` FOREIGN KEY (`gene_id`) REFERENCES `genero` (`gen_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido_genero`
--

LOCK TABLES `contenido_genero` WRITE;
/*!40000 ALTER TABLE `contenido_genero` DISABLE KEYS */;
INSERT INTO `contenido_genero` VALUES (1,8),(2,4),(3,20),(4,20),(5,4),(6,4),(7,10),(8,20),(9,2),(10,20),(11,12),(12,12),(13,13),(14,20),(15,8),(16,20),(17,4),(18,3),(19,20),(20,20),(21,2),(22,10),(23,17),(24,20),(25,8),(26,10),(27,17),(28,4),(29,3),(30,20),(31,20),(32,11),(33,17),(34,8),(35,20),(36,8),(37,8),(38,8),(39,3),(40,20),(41,3),(42,12),(43,3),(44,10),(45,10),(46,8),(47,17),(48,17),(49,17),(50,12),(51,13),(52,8),(53,8),(54,8),(55,8),(56,20),(57,10),(58,8),(59,20),(60,20),(61,10),(62,8),(63,12),(64,20),(65,3),(66,4),(67,8),(68,20),(69,4),(70,20),(71,3),(72,3),(73,2),(74,2),(75,11),(76,8),(78,11),(79,8),(80,12),(81,20),(82,11),(83,11),(84,13),(85,13),(86,13),(87,17),(88,17),(89,11),(90,12),(91,4),(92,12),(93,13),(94,12),(95,12),(96,10),(97,8),(98,13);
/*!40000 ALTER TABLE `contenido_genero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-31 19:18:48
