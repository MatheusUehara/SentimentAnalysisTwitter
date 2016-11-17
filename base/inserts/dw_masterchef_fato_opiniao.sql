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
-- Table structure for table `fato_opiniao`
--

DROP TABLE IF EXISTS `fato_opiniao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fato_opiniao` (
  `qtd_positivo` int(11) DEFAULT NULL,
  `qtd_negativo` int(11) DEFAULT NULL,
  `percent_negativo` int(11) DEFAULT NULL,
  `qtd_neutro` int(11) DEFAULT NULL,
  `percent_positivo` int(11) DEFAULT NULL,
  `percent_neutro` int(11) DEFAULT NULL,
  `dim_local_iddim_local` int(11) NOT NULL,
  `dim_hashtag_iddim_hashtag` int(11) NOT NULL,
  `dim_candidatos_iddim_candidatos` int(11) NOT NULL,
  `dimdata_iddim_data` int(11) NOT NULL,
  PRIMARY KEY (`dim_local_iddim_local`,`dim_hashtag_iddim_hashtag`,`dim_candidatos_iddim_candidatos`,`dimdata_iddim_data`),
  KEY `fk_fato_opiniao_dim_local_idx` (`dim_local_iddim_local`),
  KEY `fk_fato_opiniao_dim_hashtag1_idx` (`dim_hashtag_iddim_hashtag`),
  KEY `fk_fato_opiniao_dim_candidatos1_idx` (`dim_candidatos_iddim_candidatos`),
  KEY `fk_fato_opiniao_dimdata1_idx` (`dimdata_iddim_data`),
  CONSTRAINT `fk_fato_opiniao_dim_candidatos1` FOREIGN KEY (`dim_candidatos_iddim_candidatos`) REFERENCES `dim_participantes` (`iddim_candidatos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_opiniao_dim_hashtag1` FOREIGN KEY (`dim_hashtag_iddim_hashtag`) REFERENCES `dim_hashtag` (`iddim_hashtag`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_opiniao_dim_local` FOREIGN KEY (`dim_local_iddim_local`) REFERENCES `dim_local` (`iddim_local`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fato_opiniao_dimdata1` FOREIGN KEY (`dimdata_iddim_data`) REFERENCES `dimdata` (`iddim_data`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_opiniao`
--

LOCK TABLES `fato_opiniao` WRITE;
/*!40000 ALTER TABLE `fato_opiniao` DISABLE KEYS */;
/*!40000 ALTER TABLE `fato_opiniao` ENABLE KEYS */;
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
