-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clasebd
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
  UNIQUE KEY `Correo_D` (`Correo_D`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'Carlos','Ramirez','carlos.ramirez1@ucentral.edu.co'),(2,'Maria','Lopez','maria.lopez2@ucentral.edu.co'),(3,'Juan','Martinez','juan.martinez3@ucentral.edu.co'),(4,'Ana','Gomez','ana.gomez4@ucentral.edu.co'),(5,'Luis','Torres','luis.torres5@ucentral.edu.co'),(6,'Laura','Diaz','laura.diaz6@ucentral.edu.co'),(7,'Pedro','Fernandez','pedro.fernandez7@ucentral.edu.co'),(8,'Sofia','Moreno','sofia.moreno8@ucentral.edu.co'),(9,'Andres','Gutierrez','andres.gutierrez9@ucentral.edu.co'),(10,'Camila','Castro','camila.castro10@ucentral.edu.co'),(11,'Diego','Jimenez','diego.jimenez11@ucentral.edu.co'),(12,'Paula','Mendoza','paula.mendoza12@ucentral.edu.co'),(13,'Felipe','Hernandez','felipe.hernandez13@ucentral.edu.co'),(14,'Isabella','Vargas','isabella.vargas14@ucentral.edu.co');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `id_Estudiante` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Correo_E` varchar(40) NOT NULL,
  `Carrera` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Estudiante`),
  UNIQUE KEY `Correo_E` (`Correo_E`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Juan','Pérez','juan.perez1@ucentral.edu.co','Ingeniería'),(2,'María','López','maria.lopez2@ucentral.edu.co','Derecho'),(3,'Carlos','Martínez','carlos.martinez3@ucentral.edu.co','Medicina'),(4,'Ana','Gómez','ana.gomez4@ucentral.edu.co','Psicología'),(5,'Luis','Rodríguez','luis.rodriguez5@ucentral.edu.co','Arquitectura'),(6,'Sofía','Hernández','sofia.hernandez6@ucentral.edu.co','Ingeniería'),(7,'Pedro','Díaz','pedro.diaz7@ucentral.edu.co','Economía'),(8,'Camila','Torres','camila.torres8@ucentral.edu.co','Administración'),(9,'Andrés','Ramírez','andres.ramirez9@ucentral.edu.co','Contaduría'),(10,'Valentina','Castro','valentina.castro10@ucentral.edu.co','Ingeniería'),(11,'Diego','Gutiérrez','diego.gutierrez11@ucentral.edu.co','Biología'),(12,'Laura','Jiménez','laura.jimenez12@ucentral.edu.co','Medicina'),(13,'Mateo','Vargas','mateo.vargas13@ucentral.edu.co','Derecho'),(14,'Isabella','Morales','isabella.morales14@ucentral.edu.co','Ingeniería'),(15,'Julián','Ortiz','julian.ortiz15@ucentral.edu.co','Psicología'),(16,'Daniela','Rojas','daniela.rojas16@ucentral.edu.co','Administración'),(17,'Felipe','Guerrero','felipe.guerrero17@ucentral.edu.co','Economía'),(18,'Gabriela','Mendoza','gabriela.mendoza18@ucentral.edu.co','Medicina'),(19,'Samuel','Cortés','samuel.cortes19@ucentral.edu.co','Ingeniería'),(20,'Paula','Silva','paula.silva20@ucentral.edu.co','Arquitectura'),(21,'Martín','Reyes','martin.reyes21@ucentral.edu.co','Derecho'),(22,'Lucía','Ruiz','lucia.ruiz22@ucentral.edu.co','Psicología'),(23,'Sebastián','Pardo','sebastian.pardo23@ucentral.edu.co','Ingeniería'),(24,'Manuela','Peña','manuela.pena24@ucentral.edu.co','Economía'),(25,'Tomás','Salazar','tomas.salazar25@ucentral.edu.co','Medicina'),(26,'Fernanda','Suárez','fernanda.suarez26@ucentral.edu.co','Contaduría'),(27,'Santiago','Cárdenas','santiago.cardenas27@ucentral.edu.co','Ingeniería'),(28,'Natalia','Moreno','natalia.moreno28@ucentral.edu.co','Administración'),(29,'Alejandro','Vega','alejandro.vega29@ucentral.edu.co','Psicología'),(30,'Carolina','Delgado','carolina.delgado30@ucentral.edu.co','Derecho'),(31,'Daniel','Ramón','daniel.ramon31@ucentral.edu.co','Medicina'),(32,'Juliana','Quintero','juliana.quintero32@ucentral.edu.co','Ingeniería'),(33,'Óscar','Navarro','oscar.navarro33@ucentral.edu.co','Economía'),(34,'Vanessa','Álvarez','vanessa.alvarez34@ucentral.edu.co','Arquitectura'),(35,'David','Parra','david.parra35@ucentral.edu.co','Contaduría'),(36,'Adriana','Forero','adriana.forero36@ucentral.edu.co','Ingeniería'),(37,'Cristian','Bermúdez','cristian.bermudez37@ucentral.edu.co','Medicina'),(38,'Fabián','León','fabian.leon38@ucentral.edu.co','Administración'),(39,'Angie','Romero','angie.romero39@ucentral.edu.co','Psicología'),(40,'Hernán','Cruz','hernan.cruz40@ucentral.edu.co','Derecho'),(41,'Laura','Rincón','laura.rincon41@ucentral.edu.co','Biología'),(42,'Ricardo','Ospina','ricardo.ospina42@ucentral.edu.co','Ingeniería'),(43,'Nataly','Avila','nataly.avila43@ucentral.edu.co','Medicina'),(44,'Camilo','Zapata','camilo.zapata44@ucentral.edu.co','Economía'),(45,'Mónica','Serrano','monica.serrano45@ucentral.edu.co','Administración'),(46,'Esteban','Mejía','esteban.mejia46@ucentral.edu.co','Derecho'),(47,'Marcela','Sandoval','marcela.sandoval47@ucentral.edu.co','Ingeniería'),(48,'Iván','Valencia','ivan.valencia48@ucentral.edu.co','Psicología'),(49,'Tatiana','Gil','tatiana.gil49@ucentral.edu.co','Contaduría'),(50,'Jorge','Patiño','jorge.patino50@ucentral.edu.co','Ingeniería'),(51,'Andrea','Caicedo','andrea.caicedo51@ucentral.edu.co','Derecho'),(52,'Cristina','Beltrán','cristina.beltran52@ucentral.edu.co','Medicina'),(53,'Mauricio','Aristizábal','mauricio.aristizabal53@ucentral.edu.co','Psicología'),(54,'Gloria','Santos','gloria.santos54@ucentral.edu.co','Arquitectura'),(55,'Nicolás','Pérez','nicolas.perez55@ucentral.edu.co','Ingeniería'),(56,'Tatiana','Chaparro','tatiana.chaparro56@ucentral.edu.co','Economía'),(57,'Diego','Montoya','diego.montoya57@ucentral.edu.co','Contaduría'),(58,'Liliana','Reina','liliana.reina58@ucentral.edu.co','Administración'),(59,'Felipe','Granados','felipe.granados59@ucentral.edu.co','Ingeniería'),(60,'Sandra','Ortega','sandra.ortega60@ucentral.edu.co','Psicología'),(61,'Oscar','Camacho','oscar.camacho61@ucentral.edu.co','Derecho'),(62,'Luisa','Figueroa','luisa.figueroa62@ucentral.edu.co','Ingeniería'),(63,'Julián','Cifuentes','julian.cifuentes63@ucentral.edu.co','Medicina'),(64,'Verónica','Martínez','veronica.martinez64@ucentral.edu.co','Administración'),(65,'Sergio','Blanco','sergio.blanco65@ucentral.edu.co','Economía'),(66,'Catalina','Arango','catalina.arango66@ucentral.edu.co','Psicología'),(67,'Rodrigo','Salinas','rodrigo.salinas67@ucentral.edu.co','Ingeniería'),(68,'Marcela','Hernández','marcela.hernandez68@ucentral.edu.co','Derecho'),(69,'Javier','Suárez','javier.suarez69@ucentral.edu.co','Medicina'),(70,'Paola','Navas','paola.navas70@ucentral.edu.co','Arquitectura'),(71,'Cristian','Martínez','cristian.martinez71@ucentral.edu.co','Economía'),(72,'Sara','Camelo','sara.camelo72@ucentral.edu.co','Psicología'),(73,'Álvaro','Bustos','alvaro.bustos73@ucentral.edu.co','Ingeniería'),(74,'Carla','Giraldo','carla.giraldo74@ucentral.edu.co','Derecho'),(75,'Wilson','Moreno','wilson.moreno75@ucentral.edu.co','Contaduría'),(76,'Claudia','Vásquez','claudia.vasquez76@ucentral.edu.co','Ingeniería'),(77,'Marcos','Cardona','marcos.cardona77@ucentral.edu.co','Medicina'),(78,'Silvia','Zamora','silvia.zamora78@ucentral.edu.co','Administración'),(79,'Hugo','Barrera','hugo.barrera79@ucentral.edu.co','Psicología'),(80,'Yesica','Nieto','yesica.nieto80@ucentral.edu.co','Derecho'),(81,'Felipe','Sierra','felipe.sierra81@ucentral.edu.co','Ingeniería'),(82,'Lorena','Prieto','lorena.prieto82@ucentral.edu.co','Economía'),(83,'Mario','Escobar','mario.escobar83@ucentral.edu.co','Contaduría'),(84,'Viviana','Aguilar','viviana.aguilar84@ucentral.edu.co','Ingeniería'),(85,'Raúl','Fonseca','raul.fonseca85@ucentral.edu.co','Derecho'),(86,'Martha','García','martha.garcia86@ucentral.edu.co','Administración'),(87,'Cristian','Mora','cristian.mora87@ucentral.edu.co','Psicología'),(88,'Beatriz','Alarcón','beatriz.alarcon88@ucentral.edu.co','Medicina'),(89,'Andrés','Cuéllar','andres.cuellar89@ucentral.edu.co','Ingeniería'),(90,'Jessica','Cárdenas','jessica.cardenas90@ucentral.edu.co','Arquitectura'),(91,'Fernando','Sánchez','fernando.sanchez91@ucentral.edu.co','Contaduría'),(92,'Tatiana','Villalba','tatiana.villalba92@ucentral.edu.co','Economía'),(93,'Juan','Durán','juan.duran93@ucentral.edu.co','Ingeniería'),(94,'Daniela','Lozano','daniela.lozano94@ucentral.edu.co','Psicología'),(95,'Pablo','Rebollo','pablo.rebollo95@ucentral.edu.co','Derecho'),(96,'Cecilia','Rivera','cecilia.rivera96@ucentral.edu.co','Medicina'),(97,'Esteban','Téllez','esteban.tellez97@ucentral.edu.co','Ingeniería'),(98,'Margarita','Holguín','margarita.holguin98@ucentral.edu.co','Administración'),(99,'Héctor','Ponce','hector.ponce99@ucentral.edu.co','Contaduría'),(100,'Alejandra','Villamil','alejandra.villamil100@ucentral.edu.co','Psicología');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripciones` (
  `id_Estudiante` int NOT NULL,
  `id_Materia` int NOT NULL,
  `Fecha_Inscripcion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Nota` float DEFAULT NULL,
  PRIMARY KEY (`id_Estudiante`,`id_Materia`),
  KEY `id_Materia` (`id_Materia`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_Estudiante`) REFERENCES `estudiantes` (`id_Estudiante`),
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`id_Materia`) REFERENCES `materias` (`id_Materia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `id_Materia` int NOT NULL AUTO_INCREMENT,
  `id_Docente` int NOT NULL,
  `Creditos_Materia` int NOT NULL,
  PRIMARY KEY (`id_Materia`),
  KEY `id_Docente` (`id_Docente`),
  CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_Docente`) REFERENCES `docentes` (`id_Docente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,1,3),(2,2,4),(3,3,2),(4,4,3),(5,5,4),(6,6,2),(7,7,3),(8,8,2),(9,9,3),(10,10,4),(11,1,2),(12,2,3),(13,3,2),(14,4,4),(15,5,3),(16,6,2),(17,7,4),(18,8,3),(19,9,2),(20,10,4),(21,1,3),(22,2,2),(23,3,4),(24,4,3),(25,5,2),(26,6,3),(27,7,2),(28,8,4),(29,9,3),(30,10,2);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_tutorías`
--

DROP TABLE IF EXISTS `registro_tutorías`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_tutorías` (
  `id_Docente` int NOT NULL,
  `id_Tutorías` int NOT NULL,
  `Comentario` varchar(255) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  PRIMARY KEY (`id_Docente`,`id_Tutorías`),
  KEY `id_Tutorías` (`id_Tutorías`),
  CONSTRAINT `registro_tutorías_ibfk_1` FOREIGN KEY (`id_Docente`) REFERENCES `docentes` (`id_Docente`),
  CONSTRAINT `registro_tutorías_ibfk_2` FOREIGN KEY (`id_Tutorías`) REFERENCES `tutorías` (`id_Tutorías`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_tutorías`
--

LOCK TABLES `registro_tutorías` WRITE;
/*!40000 ALTER TABLE `registro_tutorías` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_tutorías` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorías`
--

DROP TABLE IF EXISTS `tutorías`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorías` (
  `id_Tutorías` int NOT NULL AUTO_INCREMENT,
  `id_Estudiante` int NOT NULL,
  `Tema` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  PRIMARY KEY (`id_Tutorías`),
  KEY `id_Estudiante` (`id_Estudiante`),
  CONSTRAINT `tutorías_ibfk_1` FOREIGN KEY (`id_Estudiante`) REFERENCES `estudiantes` (`id_Estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorías`
--

LOCK TABLES `tutorías` WRITE;
/*!40000 ALTER TABLE `tutorías` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorías` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 21:27:51
