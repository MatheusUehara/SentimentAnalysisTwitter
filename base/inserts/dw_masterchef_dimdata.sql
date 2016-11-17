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
-- Table structure for table `dimdata`
--

DROP TABLE IF EXISTS `dimdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimdata` (
  `iddim_data` int(11) NOT NULL,
  `data_id` datetime NOT NULL,
  `dia_ehdiautil` int(11) DEFAULT NULL,
  `dia_numeronasemana` int(11) DEFAULT NULL,
  `dia_numeronomes` int(11) DEFAULT NULL,
  `dia_numeronoano` int(11) DEFAULT NULL,
  `semana_id` int(11) DEFAULT NULL,
  `semana_nome` varchar(255) DEFAULT NULL,
  `semana_texto` varchar(255) DEFAULT NULL,
  `semana_numeronoano` int(11) DEFAULT NULL,
  `mes_id` int(11) DEFAULT NULL,
  `mes_nome` varchar(255) DEFAULT NULL,
  `mes_texto` varchar(255) DEFAULT NULL,
  `mes_numeronoano` varchar(255) DEFAULT NULL,
  `trimestre_id` int(11) DEFAULT NULL,
  `trimestre_nome` varchar(255) DEFAULT NULL,
  `trimestre_texto` varchar(255) DEFAULT NULL,
  `trimestre_numeronoano` int(11) DEFAULT NULL,
  `semestre_id` int(11) DEFAULT NULL,
  `semestre_nome` varchar(255) DEFAULT NULL,
  `semestre_texto` varchar(255) DEFAULT NULL,
  `semestre_numeronoano` int(11) DEFAULT NULL,
  `ano_id` int(11) DEFAULT NULL,
  `ano_nome` varchar(255) DEFAULT NULL,
  `ano_texto` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  PRIMARY KEY (`iddim_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdata`
--

LOCK TABLES `dimdata` WRITE;
/*!40000 ALTER TABLE `dimdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimdata` ENABLE KEYS */;
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
