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
-- Table structure for table `dim_participantes`
--

DROP TABLE IF EXISTS `dim_participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_participantes` (
  `iddim_candidatos` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idparticipante` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `jurado` tinyint(1) NOT NULL,
  `apresentador` tinyint(1) NOT NULL,
  `candidato` tinyint(1) NOT NULL,
  `version` int(11) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  PRIMARY KEY (`iddim_candidatos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_participantes`
--

LOCK TABLES `dim_participantes` WRITE;
/*!40000 ALTER TABLE `dim_participantes` DISABLE KEYS */;
INSERT INTO `dim_participantes` VALUES (0,'sem nome',0,'sem username',0,0,0,1,'1900-01-01 00:00:01','2100-01-01 00:00:00'),(1,'Leonardo Young',1,'MC3_Leonardo',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(2,'Bruna Chaves',2,'MC3_Bruna',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(3,'Raquel Novais',3,'MC3_Raquel',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(4,'Luriana Toledo',4,'MC3_Luriana',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(5,'Fabio Nunes',5,'MC3_Fabio',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(6,'Lee Fu Kuang',6,'MC3_Lee',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(7,'Paula Salles',7,'MC3_Paula',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(8,'Aluisio Nahime',8,'MC3_Aluisio',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(9,'Pedro Lima',9,'MC3_Pedro',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(10,'Fernando Bianchi',10,'MC3_Fernando',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(11,'Thaiana Wosniak',11,'MC3_Thaiana',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(12,'Gleice Simão',12,'MC3_Gleice',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(13,'Vanessa Vagnotti',13,'MC3_Vanessa',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(14,'Rodrigo Barros',14,'MC3_Rodrigo',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(15,'Livia Chathiard',15,'MC3_Livia',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(16,'Guilherme Joventino',16,'MC3_Guilherme',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(17,'Nuno Codeço',17,'MC3_Nuno',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(18,'Gabriella Paliankas',18,'MC3_Gabriella',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(19,'Rodrigo Domingues (Tenente)',19,'MC3_Tenente',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(20,'Victor Castelo',20,'MC3_Victor',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(21,'Hellen Cruz',21,'MC3_Hellen',0,0,1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(22,'Erick Jacquin',22,'erickjacquin',1,0,0,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(23,'Henrique Fogaça',23,'fogaca_henrique',1,0,0,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(24,'Paola Carosella',24,'PaolaCarosella',1,0,0,1,'1900-01-01 00:00:00','2200-01-01 00:00:00'),(25,'Ana Paula Padrão',25,'anapaulapadrao',0,1,0,1,'1900-01-01 00:00:00','2200-01-01 00:00:00');
/*!40000 ALTER TABLE `dim_participantes` ENABLE KEYS */;
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
