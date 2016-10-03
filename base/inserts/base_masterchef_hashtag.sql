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
-- Table structure for table `hashtag`
--

DROP TABLE IF EXISTS `hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashtag` (
  `idHashtag` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(140) NOT NULL,
  PRIMARY KEY (`idHashtag`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag`
--

LOCK TABLES `hashtag` WRITE;
/*!40000 ALTER TABLE `hashtag` DISABLE KEYS */;
INSERT INTO `hashtag` VALUES (1,'#FicaLeonardo'),(2,'#FicaBruna'),(3,'#FicaRaquel'),(4,'#FicaLuriana'),(5,'#FicaFabio'),(6,'#FicaLee'),(7,'#FicaPaula'),(8,'#FicaAluisio'),(9,'#FicaPedro'),(10,'#FicaFernando'),(11,'#FicaThaiana'),(12,'#FicaGleice'),(13,'#FicaVanessa'),(14,'#FicaRodrigo'),(15,'#FicaLivia'),(16,'#FicaGuilherme'),(17,'#FicaNuno'),(18,'#FicaGabriella'),(19,'#FicaTenente'),(20,'#FicaVictor'),(21,'#FicaHellen'),(22,'#VoltaGleice'),(23,'#VoltaLivia'),(24,'#VoltaTenente'),(25,'#VoltaNuno'),(26,'#VoltaGabriella'),(27,'#VoltaFernando'),(28,'#VoltaVictor'),(29,'#VoltaHellen'),(30,'#VoltaRodrigo'),(31,'#equipeVermelha'),(32,'#equipeAzul'),(33,'#equipeAmarela'),(34,'#VemNiMim'),(35,'#SentaNaGraxa'),(36,'#PodeVirQuente'),(37,'#JacquinSincero'),(38,'#CaixaMisteriosa'),(39,'#PartiuGeladeira'),(40,'#DivinoMaravilhoso'),(41,'#GanhaLeonardo'),(42,'#GanhaBruna'),(43,'#MasterChefBR');
/*!40000 ALTER TABLE `hashtag` ENABLE KEYS */;
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
