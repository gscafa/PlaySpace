CREATE DATABASE  IF NOT EXISTS `playspace` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `playspace`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: playspace
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `composto`
--

DROP TABLE IF EXISTS `composto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composto` (
  `ordine` int NOT NULL,
  `prodotto` int NOT NULL,
  KEY `FFF_idx` (`ordine`),
  KEY `rrr_idx` (`prodotto`),
  CONSTRAINT `FFF` FOREIGN KEY (`ordine`) REFERENCES `ordine` (`idordine`),
  CONSTRAINT `rrr` FOREIGN KEY (`prodotto`) REFERENCES `prodotto_ordine` (`idprodotto_ordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composto`
--

LOCK TABLES `composto` WRITE;
/*!40000 ALTER TABLE `composto` DISABLE KEYS */;
INSERT INTO `composto` VALUES (1,1),(2,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10),(9,11);
/*!40000 ALTER TABLE `composto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `effettuazione`
--

DROP TABLE IF EXISTS `effettuazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `effettuazione` (
  `utente` varchar(45) NOT NULL,
  `ordine` int NOT NULL,
  KEY `f_idx` (`utente`),
  KEY `f1_idx` (`ordine`),
  CONSTRAINT `f` FOREIGN KEY (`utente`) REFERENCES `utente` (`username`),
  CONSTRAINT `f1` FOREIGN KEY (`ordine`) REFERENCES `ordine` (`idordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `effettuazione`
--

LOCK TABLES `effettuazione` WRITE;
/*!40000 ALTER TABLE `effettuazione` DISABLE KEYS */;
INSERT INTO `effettuazione` VALUES ('seppe00',1),('craxi',2),('seppe00',3),('craxi',4),('craxi',5),('craxi',6),('redmario',7),('redmario',8),('seppe00',9);
/*!40000 ALTER TABLE `effettuazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `idordine` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `iva` int NOT NULL,
  `totale` decimal(5,2) NOT NULL,
  PRIMARY KEY (`idordine`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (1,'2021-07-09',22,70.00),(2,'2021-07-09',22,89.80),(3,'2021-07-10',22,120.00),(4,'2021-07-10',22,39.90),(5,'2021-07-10',22,19.90),(6,'2021-07-10',22,80.00),(7,'2021-07-11',22,399.00),(8,'2021-07-11',22,498.00),(9,'2021-07-11',22,439.00);
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto` (
  `idprodotto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descrizione` varchar(45) DEFAULT NULL,
  `piattaforma` varchar(45) NOT NULL,
  `prezzo` decimal(5,2) NOT NULL,
  `votomedio` decimal(2,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`idprodotto`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

LOCK TABLES `prodotto` WRITE;
/*!40000 ALTER TABLE `prodotto` DISABLE KEYS */;
INSERT INTO `prodotto` VALUES (1,'Halo 5','Sparatutto','Stupendo','XBOX ONE',40.00,0.0),(2,'Battlefield 5','Sparatutto','Bello','PS4',70.00,0.0),(3,'Battlefield 5','Sparatutto',NULL,'XBOX ONE',70.00,0.0),(4,'DOOM','Sparatutto',NULL,'XBOX ONE',60.00,0.0),(5,'DOOM','Sparatutto',NULL,'PS4',60.00,0.0),(6,'DOOM','Sparatutto',NULL,'Nintendo Switch',50.00,0.0),(7,'Titanfall 2','Sparatutto',NULL,'XBOX ONE',70.00,0.0),(8,'Titanfall 2','Sparatutto',NULL,'PS4',69.90,0.0),(9,'Battlefield 1','Sparatutto',NULL,'XBOX ONE',39.90,0.0),(10,'Battlefield 1','Sparatutto',NULL,'PS4',39.90,0.0),(11,'Wolfenstein','Avventura',NULL,'XBOX ONE',39.90,0.0),(12,'Wolfenstein','Avventura',NULL,'PS4',39.90,0.0),(13,'Wolfenstein II','Avventura',NULL,'XBOX ONE',45.90,0.0),(14,'Wolfenstein II','Avventura',NULL,'PS4',45.90,0.0),(15,'Borderlands 2','Avventura',NULL,'XBOX 360',19.90,0.0),(16,'Borderlands 2','Avventura',NULL,'PS3',19.90,0.0),(17,'Destiny','Sparatutto',NULL,'XBOX ONE',39.90,0.0),(18,'Destiny','Sparatutto',NULL,'PS4',39.90,0.0),(19,'RAGE 2','Avventura',NULL,'XBOX ONE',19.90,0.0),(20,'RAGE 2','Avventura',NULL,'PS4',19.90,0.0),(21,'Far Cry 5','Avventura',NULL,'XBOX ONE',69.90,0.0),(22,'Far Cry 5','Avventura',NULL,'PS4',69.90,0.0),(23,'Final Fantasy XV','Avventura',NULL,'XBOX ONE',69.90,0.0),(24,'Final Fantasy XV','Avventura',NULL,'PS4',69.90,0.0),(25,'Nier: Automata','RPG',NULL,'PS4',39.90,3.7),(26,'Fallout: New Vegas','RPG',NULL,'XBOX 360',19.90,0.0),(27,'Fallout: New Vegas','RPG',NULL,'PS3',19.90,0.0),(28,'Bloodborne','RPG',NULL,'PS4',69.90,0.0),(29,'Dark Souls','RPG',NULL,'XBOX 360',19.90,0.0),(30,'Dark Souls','RPG',NULL,'PS3',19.90,0.0),(31,'Dark Souls II','RPG',NULL,'XBOX ONE',39.90,0.0),(32,'Dark Souls II','RPG',NULL,'PS4',39.90,0.0),(33,'Dark Souls Remastered','RPG',NULL,'Nintendo Switch',39.90,0.0),(34,'FIFA 19','Sport',NULL,'XBOX ONE',69.90,0.0),(35,'FIFA 19','Sport',NULL,'PS4',69.90,0.0),(36,'FIFA 19','Sport',NULL,'Nintendo Switch',69.90,0.0),(37,'NBA 2K19','Sport',NULL,'XBOX ONE',69.90,0.0),(38,'NBA 2K19','Sport',NULL,'PS4',69.90,0.0),(39,'NBA 2K18','Sport',NULL,'XBOX ONE',39.90,0.0),(40,'NBA 2K18','Sport',NULL,'PS4',39.90,0.0),(41,'F1 2018','Sport',NULL,'XBOX ONE',69.90,0.0),(42,'F1 2018','Sport',NULL,'PS4',69.90,0.0),(43,'F1 2017','Sport',NULL,'XBOX ONE',19.90,0.0),(44,'F1 2017','Sport',NULL,'PS4',19.90,0.0),(45,'Playstation 5','Console','Potente','PS5',299.00,3.0),(46,'XBOX Series X','Console','Entusiasmante','XBOX Series X',399.00,0.0),(47,'Nintendo Switch','Console','Piccola ma Potente','Nintendo Switch',249.00,0.0);
/*!40000 ALTER TABLE `prodotto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotto_ordine`
--

DROP TABLE IF EXISTS `prodotto_ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto_ordine` (
  `idprodotto_ordine` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `piattaforma` varchar(45) NOT NULL,
  `prezzo` decimal(5,2) NOT NULL,
  `quantita` int NOT NULL,
  `pathimmagine` varchar(45) NOT NULL,
  PRIMARY KEY (`idprodotto_ordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto_ordine`
--

LOCK TABLES `prodotto_ordine` WRITE;
/*!40000 ALTER TABLE `prodotto_ordine` DISABLE KEYS */;
INSERT INTO `prodotto_ordine` VALUES (1,'Battlefield 5','PS4',70.00,1,'assets/img/prodotti/2.jpg'),(2,'FIFA 19','PS4',69.90,1,'assets/img/prodotti/35.jpg'),(3,'Borderlands 2','XBOX 360',19.90,1,'assets/img/prodotti/15.jpg'),(4,'DOOM','XBOX ONE',60.00,2,'assets/img/prodotti/4.jpg'),(5,'Destiny','XBOX ONE',39.90,1,'assets/img/prodotti/17.jpg'),(6,'Fallout: New Vegas','XBOX 360',19.90,1,'assets/img/prodotti/26.jpg'),(7,'Halo 5','XBOX ONE',40.00,2,'assets/img/prodotti/1.jpg'),(8,'XBOX Series X','XBOX Series X',399.00,1,'assets/img/prodotti/46.jpg'),(9,'Nintendo Switch','Nintendo Switch',249.00,2,'assets/img/prodotti/47.jpg'),(10,'Battlefield 5','PS4',70.00,2,'assets/img/prodotti/2.jpg'),(11,'Playstation 5','PS5',299.00,1,'assets/img/prodotti/45.jpg');
/*!40000 ALTER TABLE `prodotto_ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(16) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `indirizzo` varchar(45) NOT NULL,
  `citta` varchar(45) NOT NULL,
  `dataNascita` date NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES ('craxi','craxino@gmail.com','Papete!21','Jack','Zucchino','Via delle Rose, 22','Napoli','2000-12-18',0),('redmario','mario@gmail.com','RossiMario!20','Mario','Rossi','Via delle Pere, 21','Roma','1992-08-17',0),('seppe00','g.scafa@libero.it','ktsm','Giuseppe','Scafa','Via Giardino, 45','San Gregorio Magno','2000-12-18',1);
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valutazione`
--

DROP TABLE IF EXISTS `valutazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valutazione` (
  `utente` varchar(45) NOT NULL,
  `prodotto` int NOT NULL,
  `voto` decimal(2,1) NOT NULL,
  KEY `f3_idx` (`utente`),
  KEY `f4_idx` (`prodotto`),
  CONSTRAINT `f3` FOREIGN KEY (`utente`) REFERENCES `utente` (`username`),
  CONSTRAINT `f4` FOREIGN KEY (`prodotto`) REFERENCES `prodotto` (`idprodotto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valutazione`
--

LOCK TABLES `valutazione` WRITE;
/*!40000 ALTER TABLE `valutazione` DISABLE KEYS */;
INSERT INTO `valutazione` VALUES ('seppe00',25,5.0),('seppe00',25,1.0),('seppe00',25,5.0),('seppe00',45,5.0),('seppe00',45,1.0);
/*!40000 ALTER TABLE `valutazione` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-11 12:39:27
