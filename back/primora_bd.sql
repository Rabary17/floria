-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: primora
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `uuid` char(36) NOT NULL,
  `categorie` char(36) NOT NULL,
  `date_insertion` datetime NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text,
  `prix_cash` float NOT NULL,
  `mensualite` int(11) DEFAULT NULL,
  `currency` char(5) NOT NULL,
  `location_geo` json DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `fiche` json DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `categorie_id` (`categorie`),
  KEY `articles_currencies_FK` (`currency`),
  CONSTRAINT `articles_currencies_FK` FOREIGN KEY (`currency`) REFERENCES `currencies` (`code`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`),
  CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`categorie`) REFERENCES `categories` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES ('280f6da1-9a26-11e8-a0ed-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-07 12:42:11','SEAT','......',12590,194,'MGA',NULL,'Tana','Adresse',NULL,'{\"annee\": \"2015\", \"porte\": \"5\", \"marque\": \"Toyota\", \"modele\": \"Aygo\", \"places\": \"4\", \"couleur\": \"Gris\", \"version\": \"1.0 VVT-i 69ch x-play 5p\", \"vitesse\": \"5 rapports\", \"carburant\": \"Essence\", \"reference\": \"24560418\", \"carrosserie\": \"Berline\", \"kilometrage\": \"37 789 km\", \"emission_co2\": \"95 g/km\", \"transmission\": \"Manuelle\", \"premiere_main\": \"Oui\", \"puissance_reel\": \"69\", \"puissance_fiscal\": \"4\", \"mise_en_circulation\": \"18/06/2015\"}'),('a39f5b1c-9a26-11e8-a0ed-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-07 12:45:38','SEAT','......',12590,194,'MGA',NULL,'Tana','Adresse',NULL,'{\"annee\": \"2015\", \"porte\": \"5\", \"marque\": \"Toyota\", \"modele\": \"Aygo\", \"places\": \"4\", \"couleur\": \"Gris\", \"version\": \"1.0 VVT-i 69ch x-play 5p\", \"vitesse\": \"5 rapports\", \"carburant\": \"Essence\", \"reference\": \"24560418\", \"carrosserie\": \"Berline\", \"kilometrage\": \"37 789 km\", \"emission_co2\": \"95 g/km\", \"transmission\": \"Manuelle\", \"premiere_main\": \"Oui\", \"puissance_reel\": \"69\", \"puissance_fiscal\": \"4\", \"mise_en_circulation\": \"18/06/2015\"}'),('d4943e4e-9a26-11e8-a0ed-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-07 12:47:00','SEAT','......',12590,194,'MGA',NULL,'Tana','Adresse',NULL,'{\"annee\": \"2015\", \"porte\": \"5\", \"marque\": \"Toyota\", \"modele\": \"Aygo\", \"places\": \"4\", \"couleur\": \"Gris\", \"version\": \"1.0 VVT-i 69ch x-play 5p\", \"vitesse\": \"5 rapports\", \"carburant\": \"Essence\", \"reference\": \"24560418\", \"carrosserie\": \"Berline\", \"kilometrage\": \"37 789 km\", \"emission_co2\": \"95 g/km\", \"transmission\": \"Manuelle\", \"premiere_main\": \"Oui\", \"puissance_reel\": \"69\", \"puissance_fiscal\": \"4\", \"mise_en_circulation\": \"18/06/2015\"}'),('decd2eb3-9a26-11e8-a0ed-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-07 12:47:17','SEAT','......',12590,194,'MGA',NULL,'Tana','Adresse',NULL,'{\"annee\": \"2015\", \"porte\": \"5\", \"marque\": \"Toyota\", \"modele\": \"Aygo\", \"places\": \"4\", \"couleur\": \"Gris\", \"version\": \"1.0 VVT-i 69ch x-play 5p\", \"vitesse\": \"5 rapports\", \"carburant\": \"Essence\", \"reference\": \"24560418\", \"carrosserie\": \"Berline\", \"kilometrage\": \"37 789 km\", \"emission_co2\": \"95 g/km\", \"transmission\": \"Manuelle\", \"premiere_main\": \"Oui\", \"puissance_reel\": \"69\", \"puissance_fiscal\": \"4\", \"mise_en_circulation\": \"18/06/2015\"}'),('e87df9b7-9a26-11e8-a0ed-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-07 12:47:33','SEAT','......',12590,194,'MGA',NULL,'Tana','Adresse',NULL,'{\"annee\": \"2015\", \"porte\": \"5\", \"marque\": \"Toyota\", \"modele\": \"Aygo\", \"places\": \"4\", \"couleur\": \"Gris\", \"version\": \"1.0 VVT-i 69ch x-play 5p\", \"vitesse\": \"5 rapports\", \"carburant\": \"Essence\", \"reference\": \"24560418\", \"carrosserie\": \"Berline\", \"kilometrage\": \"37 789 km\", \"emission_co2\": \"95 g/km\", \"transmission\": \"Manuelle\", \"premiere_main\": \"Oui\", \"puissance_reel\": \"69\", \"puissance_fiscal\": \"4\", \"mise_en_circulation\": \"18/06/2015\"}');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `uuid` char(36) NOT NULL,
  `nom` json NOT NULL,
  `fiche` json NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`uuid`, `nom`, `fiche`) VALUES
('128628c0-9a15-11e8-a0ed-0024d7ada560', '{\"en\": \"Car\", \"fr\": \"Voiture\"}', '[{\"key\": \"marque\", \"type\": \"text\", \"label\": {\"fr\": \"Marque\"}}, {\"key\": \"modele\", \"type\": \"text\", \"label\": {\"fr\": \"Modèle\"}}, {\"key\": \"version\", \"type\": \"text\", \"label\": {\"fr\": \"Version\"}}, {\"key\": \"annee\", \"type\": \"number\", \"label\": {\"fr\": \"Année\"}, \"length\": 4}, {\"key\": \"mise_en_circulation\", \"type\": \"date\", \"label\": {\"fr\": \"Mise en circulation\"}}, {\"key\": \"kilometrage\", \"type\": \"number\", \"label\": {\"fr\": \"Kilométrage\"}}, {\"key\": \"carrosserie\", \"type\": \"text\", \"label\": {\"fr\": \"Carrosserie\"}}, {\"key\": \"carburant\", \"type\": \"text\", \"label\": {\"fr\": \"Carburant\"}}, {\"key\": \"manuelle\", \"type\": \"text\", \"label\": {\"fr\": \"Manuelle\"}}, {\"key\": \"vitesse\", \"type\": \"text\", \"label\": {\"fr\": \"Vitesse\"}}, {\"key\": \"couleur\", \"type\": \"text\", \"label\": {\"fr\": \"Couleur\"}}, {\"key\": \"places\", \"type\": \"number\", \"label\": {\"fr\": \"Places\"}}, {\"key\": \"porte\", \"type\": \"number\", \"label\": {\"fr\": \"Porte\"}}, {\"key\": \"puissance_fiscal\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance fiscal\"}}, {\"key\": \"puissance_reel\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance réel\"}}, {\"key\": \"premiere_main\", \"type\": \"text\", \"label\": {\"fr\": \"Première main\"}}, {\"key\": \"emission_co2\", \"type\": \"number\", \"label\": {\"fr\": \"Emission co2\"}}, {\"key\": \"reference\", \"type\": \"number\", \"label\": {\"fr\": \"Réference\"}}]'),
('996324e6-9a37-11e8-9aac-402cf41335ad', '{\"en\": \"House\", \"fr\": \"Maison\"}', '[{\"key\": \"localisation\", \"type\": \"text\", \"label\": {\"fr\": \"Localisation\"}}, {\"key\": \"chambres\", \"type\": \"number\", \"label\": {\"fr\": \"Chambres\"}}, {\"key\": \"latitude\", \"type\": \"number\", \"label\": {\"fr\": \"Latitude\"}}, {\"key\": \"surface_terrain\", \"type\": \"number\", \"label\": {\"fr\": \"Surface terrain\"}}, {\"key\": \"surface_habitable\", \"type\": \"number\", \"label\": {\"fr\": \"Surface habitable\"}}, {\"key\": \"vue\", \"type\": \"text\", \"label\": {\"fr\": \"Vue\"}}, {\"key\": \"autour\", \"type\": \"text\", \"label\": {\"fr\": \"Autour\"}}, {\"key\": \"accessibilite\", \"type\": \"text\", \"label\": {\"fr\": \"Accessibilité\"}}]'),
('c6e5a3c0-9a33-11e8-9aac-402cf41335ad', '{\"en\": \"Ground\", \"fr\": \"Terrain\"}', '[{\"key\": \"localisation\", \"type\": \"text\", \"label\": {\"fr\": \"Localisation\"}}, {\"key\": \"longitude\", \"type\": \"number\", \"label\": {\"fr\": \"Longitude\"}}, {\"key\": \"latitude\", \"type\": \"number\", \"label\": {\"fr\": \"Latitude\"}}, {\"key\": \"superficie\", \"type\": \"number\", \"label\": {\"fr\": \"Superficie\"}}, {\"key\": \"vue\", \"type\": \"text\", \"label\": {\"fr\": \"Vue\"}}, {\"key\": \"autour\", \"type\": \"text\", \"label\": {\"fr\": \"Autour\"}}, {\"key\": \"accessibilite\", \"type\": \"text\", \"label\": {\"fr\": \"Accessibilite\"}}]');

-- --------------------------------------------------------

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes` (
  `uuid` char(36) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `article_id` char(36) NOT NULL,
  `modalite_id` char(36) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `modalite_id` (`modalite_id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`modalite_id`) REFERENCES `modalites` (`uuid`),
  CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `uuid` char(36) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `article_id` char(36) NOT NULL,
  `commentaire` text NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `code` char(5) NOT NULL,
  `code_long` varchar(50) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES ('MGA','Ariary');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `uuid` char(36) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `article_id` char(36) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `article_id` (`article_id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`uuid`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medias`
--

DROP TABLE IF EXISTS `medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medias` (
  `uuid` char(36) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medias`
--

LOCK TABLES `medias` WRITE;
/*!40000 ALTER TABLE `medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalites`
--

DROP TABLE IF EXISTS `modalites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalites` (
  `uuid` char(36) NOT NULL,
  `code` varchar(50) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `mode` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalites`
--

LOCK TABLES `modalites` WRITE;
/*!40000 ALTER TABLE `modalites` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `uuid` char(36) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs` (
  `uuid` char(36) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `cb` varchar(255) NOT NULL,
  `langue` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(150) NOT NULL,
  `role_id` char(36) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-08  8:28:29
