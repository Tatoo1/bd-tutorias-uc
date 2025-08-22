-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: bda
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes` (
  `id_Docente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Correo_D` varchar(100) NOT NULL,
  PRIMARY KEY (`id_Docente`),
  UNIQUE KEY `Correo_D` (`Correo_D`),
  UNIQUE KEY `Correo_D_2` (`Correo_D`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'Carlos','Ramirez','carlos.ramirez1@ucentral.edu.co'),(2,'Maria','Lopez','maria.lopez2@ucentral.edu.co'),(3,'Juan','Martinez','juan.martinez3@ucentral.edu.co'),(4,'Ana','Gomez','ana.gomez4@ucentral.edu.co'),(5,'Luis','Torres','luis.torres5@ucentral.edu.co'),(6,'Laura','Diaz','laura.diaz6@ucentral.edu.co'),(7,'Pedro','Fernandez','pedro.fernandez7@ucentral.edu.co'),(8,'Sofia','Moreno','sofia.moreno8@ucentral.edu.co'),(9,'Andres','Gutierrez','andres.gutierrez9@ucentral.edu.co'),(10,'Camila','Castro','camila.castro10@ucentral.edu.co'),(11,'Diego','Jimenez','diego.jimenez11@ucentral.edu.co'),(12,'Paula','Mendoza','paula.mendoza12@ucentral.edu.co'),(13,'Felipe','Hernandez','felipe.hernandez13@ucentral.edu.co'),(14,'Isabella','Vargas','isabella.vargas14@ucentral.edu.co'),(15,'Mateo','Suarez','mateo.suarez15@ucentral.edu.co'),(16,'Valentina','Rojas','valentina.rojas16@ucentral.edu.co'),(17,'Esteban','Reyes','esteban.reyes17@ucentral.edu.co'),(18,'Daniela','Ortiz','daniela.ortiz18@ucentral.edu.co'),(19,'Santiago','Cruz','santiago.cruz19@ucentral.edu.co'),(20,'Natalia','Morales','natalia.morales20@ucentral.edu.co');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21 21:37:16
