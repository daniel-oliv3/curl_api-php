-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: base_dados_clk
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'PROCESSADOR: Intel Core i5-9400F Hexa-Core 2.9GHz (4.1GHz Turbo)'),(2,'PLACA MÃE: ASUS TUF H310M-PLUS Gaming BR'),(3,'MEMORIA: Corsair Vengeance RGB PRO 16GB (2x8) DDR4 2666MHz'),(4,'PLACA DE VÍDEO: GALAX Geforce RTX 3070 TI 8GB'),(5,'WATER COOLER: Aigo Darkflash DT-240'),(6,'HARD-DISC: SSD KingDian 1TB'),(7,'MONITOR: MSI Optix AG32c'),(8,'FONTE: EVGA ATX 500W'),(9,'TECLADO: Redragon Kali K577R RGB'),(10,'MOUSE: Redragon Legend Chroma M990-RGB, 24000 Dpi com 24 botões'),(11,'MOUSE PAD: Redragon Orion P009 RGB'),(12,'HEADSET: Redragon Zeus X H510 RGB'),(13,'SUPORTE HEADSET: Redragon Scepter Pro HA300 RGB'),(14,'SPEAKER: Redragon Orphues GS550'),(15,'GABINETE: Redragon Wheeljack RGB'),(16,'MONITOR LIGHT: Redragon Beryl GML-113'),(17,'Notebook Gamer - ASUS Nitro 5'),(18,'PROCESSADOR: Intel Core i5-9300H'),(19,'PLACA MÃE: Intel Coffee Lake V1.33'),(20,'MEMORIA: 16GB (2x8) DDR4 2666MHz'),(21,'PLACA DE VÍDEO: NVIDIA Geforce GTX 1650'),(22,'HARD-DISC: SSD KingDian 500GB'),(23,'TECLADO: Redragon Kumara K552 RGB'),(24,'MOUSE: Redragon Cobra M711 Chroma RGB 10000 dpi 9 botões'),(25,'MOUSE PAD: Redragon Orion P009'),(26,'HEADSET: Redragon Hylas RGB'),(27,'SUPORT HEADSET: Redragon Scepter Elite HA311 RGB'),(28,'SPEAKER: Alexas Echo Dot 4'),(29,'MONITOR LIGHT: Redragon Beryl GML-113');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01  9:13:31
