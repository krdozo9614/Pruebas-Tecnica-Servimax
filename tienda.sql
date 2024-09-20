-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
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
-- Table structure for table `clasificaciones`
--

DROP TABLE IF EXISTS `clasificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clasificaciones` (
  `id_clasificaciones` int NOT NULL AUTO_INCREMENT,
  `nombre_clasificacion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_clasificaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasificaciones`
--

LOCK TABLES `clasificaciones` WRITE;
/*!40000 ALTER TABLE `clasificaciones` DISABLE KEYS */;
INSERT INTO `clasificaciones` VALUES (1,'Electrónica'),(2,'Ropa'),(3,'Hogar');
/*!40000 ALTER TABLE `clasificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_clasificacion`
--

DROP TABLE IF EXISTS `producto_clasificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_clasificacion` (
  `id_producto` int NOT NULL,
  `id_clasificaciones` int NOT NULL,
  PRIMARY KEY (`id_producto`,`id_clasificaciones`),
  KEY `id_clasificaciones_idx` (`id_clasificaciones`),
  CONSTRAINT `id_clasificaciones` FOREIGN KEY (`id_clasificaciones`) REFERENCES `clasificaciones` (`id_clasificaciones`) ON DELETE CASCADE,
  CONSTRAINT `id_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_clasificacion`
--

LOCK TABLES `producto_clasificacion` WRITE;
/*!40000 ALTER TABLE `producto_clasificacion` DISABLE KEYS */;
INSERT INTO `producto_clasificacion` VALUES (4,1),(5,1),(1,2),(2,2),(3,2),(6,3),(7,3);
/*!40000 ALTER TABLE `producto_clasificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` decimal(10,3) DEFAULT NULL,
  `inventario` int NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Camisa','camisa de algodón ofrece una combinación perfecta de comodidad y estilo.',20.000,100),(2,'Jeans','jeans skinny están confeccionados en denim de alta calidad.',60.000,20),(3,'Saco','saco de lino combina elegancia y frescura, ideal para climas cálidos.',100.000,10),(4,'Auriculares','ofrecen sonido de alta calidad y conectividad Bluetooth.',80.000,80),(5,'Televisor','televisor inteligente cuenta con resolución 4K, ofreciendo imágenes nítidas y vibrantes.',800.000,15),(6,'Aspiradora','aspirador inteligente navega por tu hogar, limpiando pisos y alfombras de manera autónoma',200.000,50),(7,'Difusor de Aromas','difusor de aceites esenciales no solo humidifica el aire, sino que también llena tu hogar de aromas relajantes.',10.000,90);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-20 14:45:12
