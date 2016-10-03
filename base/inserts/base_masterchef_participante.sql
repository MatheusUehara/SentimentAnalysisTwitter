-- MySQL dump 10.13  Distrib 5.7.12, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: base_masterchef
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
-- Table structure for table `participante`
--

DROP TABLE IF EXISTS `participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participante` (
  `idparticipante` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `jurado` tinyint(1) NOT NULL,
  `apresentador` tinyint(1) NOT NULL,
  `candidato` tinyint(1) NOT NULL,
  PRIMARY KEY (`idparticipante`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participante`
--

LOCK TABLES `participante` WRITE;
/*!40000 ALTER TABLE `participante` DISABLE KEYS */;
INSERT INTO `participante` VALUES (1,'Leonardo Young','MC3_Leonardo',0,0,1),(2,'Bruna Chaves','MC3_Bruna',0,0,1),(3,'Raquel Novais','MC3_Raquel',0,0,1),(4,'Luriana Toledo','MC3_Luriana',0,0,1),(5,'Fabio Nunes','MC3_Fabio',0,0,1),(6,'Lee Fu Kuang','MC3_Lee',0,0,1),(7,'Paula Salles','MC3_Paula',0,0,1),(8,'Aluisio Nahime','MC3_Aluisio',0,0,1),(9,'Pedro Lima','MC3_Pedro',0,0,1),(10,'Fernando Bianchi','MC3_Fernando',0,0,1),(11,'Thaiana Wosniak','MC3_Thaiana',0,0,1),(12,'Gleice Simão','MC3_Gleice',0,0,1),(13,'Vanessa Vagnotti','MC3_Vanessa',0,0,1),(14,'Rodrigo Barros','MC3_Rodrigo',0,0,1),(15,'Livia Chathiard','MC3_Livia',0,0,1),(16,'Guilherme Joventino','MC3_Guilherme',0,0,1),(17,'Nuno Codeço','MC3_Nuno',0,0,1),(18,'Gabriella Paliankas','MC3_Gabriella',0,0,1),(19,'Rodrigo Domingues (Tenente)','MC3_Tenente',0,0,1),(20,'Victor Castelo','MC3_Victor',0,0,1),(21,'Hellen Cruz','MC3_Hellen',0,0,1),(22,'Erick Jacquin','erickjacquin',1,0,0),(23,'Henrique Fogaça','fogaca_henrique',1,0,0),(24,'Paola Carosella','PaolaCarosella',1,0,0),(25,'Ana Paula Padrão','anapaulapadrao',0,1,0);
/*!40000 ALTER TABLE `participante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-30 22:01:56
