-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veterinaria
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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `idCitas` int NOT NULL,
  `Fecha_Hora` varchar(20) NOT NULL,
  `Nombre_de_la_Mascota` varchar(25) NOT NULL,
  `Persona_Responsable` varchar(45) NOT NULL,
  `Descripcion` varchar(55) NOT NULL,
  `Correlativo` varchar(10) DEFAULT NULL,
  `Asistencia` varchar(10) NOT NULL,
  `Fecha_Cita_Siguiente` varchar(20) NOT NULL,
  PRIMARY KEY (`idCitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registros de las Citas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,'26/03/2023 8:30 AM','Neron','Jose perez','Amputacion De la Cola','1','Si','26/04/2023 8:00 AM'),(2,'26/03/2023 9:00 AM','Rocky','Jose Perez','Amputacion De la Cola','2','si','26/04/2023 8:30 AM'),(3,'26/03/2023 9:45 AM','Canelo','Jose Perez','Amputacion De la Cola','3','Si','26/04/2023 9:00 AM'),(5,'26/03/2023 11:00 AM','Simba','Kimberly Caceres','Chequeo General','5','Si','26/04/2023 10:30 AM'),(6,'26/03/2023 12:00 PM','Sarabí','Alejandro Juarez','Rebicion de Salud','6','Si','No tiene mas citas'),(8,'27/03/2023 10:00 AM','Osito','German Martinez','Castracion','8','Si','27/04/2023 10:00 AM'),(9,'13/04/2023 9:00 AM','Bobies','Alejandro Juarez','Tratamiento contra las Pulgas','9','Si','13/05/2023 9:00 AM'),(10,'13/04/2023 10:00 AM','Tobby','kimberly Caceres','Fractura de la mano derecha','10','Si','13/05/2023 10:00 AM'),(11,'25/04/2023 9:00 AM','Keisy','German Martinez','Control De Vacunas','11','Si','25/05/2023 9:00 AM'),(12,'26/04/2023 8:00 AM','Neron','Jose perez','Control De la Amputacion de cola','12','Si','27/05/2023 8:00 AM'),(13,'26/04/2023 8:30 AM','Rocky','Jose Perez','Control De la Amputacion de cola','13','si','27/05/2023 8:30 AM'),(14,'26/04/2023 9:00 AM','Canelo','Jose Perez','Control De la Amputacion de cola','14','Si','27/05/2023 9:00 AM'),(15,'26/04/2023 9:30 AM','Osa','Javier Lucas','Control de Gestacion','15','Si','27/05/2023 9:30 AM'),(16,'26/04/2023 10:30 AM','Simba','Kimberly Caceres','Vacunacion','16','Si','No tiene mas citas'),(19,'13/05/2023 9:00 AM','Bobies','Alejandro Juarez','Rebicion de la operacion','19','Si','No tiene Mas citas'),(20,'13/05/2023 10:00 AM','Tobby','kimberly Caceres','chequeo de la Fractura','20','Si','no tiene mas Citas'),(21,'25/05/2023 9:00 AM','Keisy','German Martinez','Le toca la siguiente vacuna','21','No','26/06/2023 9:00 AM'),(22,'27/05/2023 8:00 AM','Neron','Jose perez','Ultimo chequeo','22','si','No tiene mas citas'),(23,'27/05/2023 8:30 AM','Rocky','Jose Perez','Ultimo chequeo','23','Si','No tiene mas citas'),(28,'26/06/2023 9:00 AM','Keisy','German Martinez','Le toca la siguiente vacuna','0028','Si','No tiene mas citas'),(29,'27/06/2023 9:00 AM','Osa','Javier Lucas','Control De los cachorros','29','Si','30/06/2023 11:00 AM'),(30,'28/06/2023 10:00 AM','Britani','Carmen Santay','Rebicion y Puesta De Vitaminas','30','No','Ya no lo citaremos'),(31,'30/06/2023 11:00 AM','Osa','Javier Lucas','Ultimo control y Puesta de vitamina','31','Si','No tiene mas citas');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Id_Clientes` int NOT NULL,
  `Nit` varchar(25) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_Clientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registro de Clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (101,'24301585-3','Jose Perez','7 AV 26-33','45283368'),(102,'22452366-1','Kimberly Caceres','3 Av 10-21','24301254'),(103,'8823743-9','Javier Lucas','zona 0 CA 22','20037756'),(104,'20453144-0','Alejandro Juarez','Avenida Petapa','27852103'),(105,'24352846-8','Carmen Santay','Aldea la Palmita','11020342'),(106,'44218248-5','German Martinez','avenida la Reforma','24568912');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascotas` (
  `Id_Mascota` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Fecha_de_Nacimiento` varchar(20) NOT NULL,
  `Fecha_de_Registro` varchar(20) NOT NULL,
  `Tipo_de_Animal` varchar(20) NOT NULL,
  `Name_Responsable` varchar(45) NOT NULL,
  PRIMARY KEY (`Id_Mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registro De Mascotas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,'Neron','08/12/2022','10/01/2023','Perro','Jose Perez'),(2,'Rocki','08/12/2022','10/01/2023','Perro','Jose Perez'),(3,'Canelo','08/12/2022','10/01/2023','perro','Jose Perez'),(4,'Osa','22/08/2022','10/01/2023','Gato','Javier Lucas'),(5,'Simba','03/01/2022','10/01/2023','Perro','Kimberly Caceres'),(6,'Sarabi','06/03/2022','10/01/2023','Loro','Alejandro Juarez'),(7,'Britani','10/05/2022','11/01/2023','Perro','Carmen Santay'),(8,'Osito','15/04/2022','11/01/2023','Perro','German Martinez'),(9,'Bobies','17/11/2021','13/02/2023','Perro','Alejandro Juarez'),(10,'Tobby','22/03/2022','13/02/2023','Gato','Kimberly Caceres'),(11,'Keisy','30/06/2022','25/02/2023','Gato','German Martinez'),(12,'Saki','16/07/2022','26//02/2023','Perro','Kimberly Caceres'),(101,'Neron','08/12/2022','10/01/2023','Perro','Jose Perez'),(102,'Rocki','08/12/2022','10/01/2023','Perro','Jose Perez'),(103,'Canelo','08/12/2022','10/01/2023','perro','Jose Perez'),(104,'Osa','22/08/2022','10/01/2023','Gato','Javier Lucas'),(105,'Simba','03/01/2022','10/01/2023','Perro','Kimberly Caceres'),(106,'Sarabi','06/03/2022','10/01/2023','Loro','Alejandro Juarez'),(107,'Britani','10/05/2022','11/01/2023','Perro','Carmen Santay'),(108,'Osito','15/04/2022','11/01/2023','Perro','German Martinez'),(109,'Bobies','17/11/2021','13/02/2023','Perro','Alejandro Juarez'),(110,'Tobby','22/03/2022','13/02/2023','Gato','Kimberly Caceres'),(111,'Keisy','30/06/2022','25/02/2023','Gato','German Martinez'),(112,'Saki','16/07/2022','26//02/2023','Perro','Kimberly Caceres');
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamientos`
--

DROP TABLE IF EXISTS `tratamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamientos` (
  `idTratamientos` int NOT NULL,
  `Cita_asociada` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Costo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idTratamientos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registro de tratamientos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamientos`
--

LOCK TABLES `tratamientos` WRITE;
/*!40000 ALTER TABLE `tratamientos` DISABLE KEYS */;
INSERT INTO `tratamientos` VALUES (4,'4','Vitaminas','Q 75.00'),(5,'5','jarabe para la tos','Q 100.00'),(6,'6','Antibioticos','Q 50.00'),(7,'7','Sammpoo','Q 65.00'),(8,'8','Ferula','Q 200.00'),(9,'9','Vacuna cotra La rabia','Q 120.00'),(10,'10','Spray secante','Q 90.00'),(11,'11','Spray secante','Q 90.00'),(12,'12','Spray secante','Q 90.00'),(13,'13','Vitaminas','Q 88.00'),(14,'14','Vitamina B12','Q 40.00'),(15,'15','Vitaminas','Q 75.00'),(16,'16','Vitaminas','Q 75.00'),(17,'19','Vacuna Secante','Q 63.00'),(18,'20','Vitaminas','Q 75.00'),(19,'21','No','Q 0.00'),(20,'22','Vitaminas','Q 75.00'),(21,'23','Vitaminas','Q 75.00'),(22,'24','Vitaminas','Q 75.00'),(24,'29','Vitaminas B12','Q 40.00'),(25,'30','No','Q 0.00'),(26,'31','Vitaminas','Q 75.00');
/*!40000 ALTER TABLE `tratamientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-05 16:13:00
