-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dw_masterchef
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_hashtag`
--

DROP TABLE IF EXISTS `dim_hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_hashtag` (
  `iddim_hashtag` int(11) NOT NULL,
  `hash` varchar(140) NOT NULL,
  `idHashtag` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  PRIMARY KEY (`iddim_hashtag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_hashtag`
--

LOCK TABLES `dim_hashtag` WRITE;
/*!40000 ALTER TABLE `dim_hashtag` DISABLE KEYS */;
INSERT INTO `dim_hashtag` VALUES (0,'Sem Hash',0,1,'1900-01-01 00:00:01','2100-01-01 00:00:00'),(1,'#FicaLeonardo',1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(2,'#FicaBruna',2,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(3,'#FicaRaquel',3,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(4,'#FicaLuriana',4,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(5,'#FicaFabio',5,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(6,'#FicaLee',6,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(7,'#FicaPaula',7,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(8,'#FicaAluisio',8,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(9,'#FicaPedro',9,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(10,'#FicaFernando',10,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(11,'#FicaThaiana',11,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(12,'#FicaGleice',12,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(13,'#FicaVanessa',13,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(14,'#FicaRodrigo',14,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(15,'#FicaLivia',15,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(16,'#FicaGuilherme',16,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(17,'#FicaNuno',17,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(18,'#FicaGabriella',18,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(19,'#FicaTenente',19,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(20,'#FicaVictor',20,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(21,'#FicaHellen',21,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(22,'#VoltaGleice',22,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(23,'#VoltaLivia',23,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(24,'#VoltaTenente',24,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(25,'#VoltaNuno',25,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(26,'#VoltaGabriella',26,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(27,'#VoltaFernando',27,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(28,'#VoltaVictor',28,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(29,'#VoltaHellen',29,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(30,'#VoltaRodrigo',30,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(31,'#equipeVermelha',31,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(32,'#equipeAzul',32,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(33,'#equipeAmarela',33,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(34,'#VemNiMim',34,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(35,'#SentaNaGraxa',35,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(36,'#PodeVirQuente',36,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(37,'#JacquinSincero',37,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(38,'#CaixaMisteriosa',38,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(39,'#PartiuGeladeira',39,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(40,'#DivinoMaravilhoso',40,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(41,'#GanhaLeonardo',41,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(42,'#GanhaBruna',42,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(43,'#MasterChefBR',43,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(44,'#ForaLeonardo',44,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(45,'#ForaBruna',45,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(46,'#ForaRaquel',46,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(47,'#ForaLuriana',47,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(48,'#ForaFabio',48,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(49,'#ForaLee',49,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(50,'#ForaPaula',50,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(51,'#ForaAluisio',51,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(52,'#ForaPedro',52,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(53,'#ForaFernando',53,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(54,'#ForaThaiana',54,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(55,'#ForaGleice',55,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(56,'#ForaVanessa',56,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(57,'#ForaRodrigo',57,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(58,'#ForaLivia',58,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(59,'#ForaGuilherme',59,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(60,'#ForaNuno',60,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(61,'#ForaGabriella',61,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(62,'#ForaTenente',62,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(63,'#ForaVictor',63,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(64,'#ForaHellen',64,1,'1900-01-01 00:00:00','2200-01-01 00:00:00');
/*!40000 ALTER TABLE `dim_hashtag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 15:56:13
