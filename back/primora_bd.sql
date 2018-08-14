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
  `mensualite` int(11) DEFAULT NULL,
  `currency` char(5) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `fiche` json DEFAULT NULL,
  `pinned` tinyint(1) DEFAULT NULL,
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
INSERT INTO `articles` VALUES ('28e7a8ea-9efe-11e8-9897-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-13 16:38:28',1000000,'MGA',NULL,'{\"cash\": \"4000000\", \"lieu\": \"Tana\", \"annee\": \"1970\", \"porte\": \"4\", \"titre\": \"Citroën\", \"images\": [\"56e610dd-cfb8-4c91-ae8f-31ef1949dc98.jpeg\"], \"places\": \"5\", \"adresse\": \"Tana ville\", \"couleur\": \"Beie crème\", \"version\": \"2CV6\", \"vitesse\": \"4\", \"carburant\": \"Essence\", \"reference\": \"Ref2cv\", \"soustitre\": \"2CV\", \"carrosserie\": \"Berline\", \"description\": \"2Cv en bon état, déjà taxi\\nRéparation à faire\", \"kilometrage\": \"200000\", \"emission_co2\": \"0\", \"transmission\": \"Manuelle\", \"premiere_main\": true, \"puissance_reel\": \"2\", \"puissance_fiscal\": \"2\"}',0),('3bf41566-9f89-11e8-a39a-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-14 09:14:00',NULL,'MGA',NULL,'{}',0),('de5fdfc2-9eff-11e8-9897-0024d7ada560','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-13 16:50:42',NULL,'MGA',NULL,'{\"cash\": \"20000000\", \"lieu\": \"Tamatave\", \"annee\": \"1980\", \"porte\": \"2\", \"titre\": \"WV\", \"images\": [\"e1edc8bd-3ca7-4835-bbea-6568e9ca2bd6.jpg\", \"c5dfc998-3ee6-4fde-b4a5-e24df6e50da8.jpeg\"], \"places\": \"5\", \"adresse\": \"Tamatave\", \"couleur\": \"Blanche\", \"version\": \"1\", \"vitesse\": \"4\", \"carburant\": \"Essence\", \"soustitre\": \"Cox\", \"carrosserie\": \"Coupé\", \"description\": \"Cox à ventre, TBE\", \"kilometrage\": \"150000\", \"emission_co2\": \"0\", \"transmission\": \"Manuelle\", \"premiere_main\": true, \"puissance_reel\": \"12\", \"puissance_fiscal\": \"12\"}',0);
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

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('128628c0-9a15-11e8-a0ed-0024d7ada560','{\"en\": \"Car\", \"fr\": \"Voiture\"}','[{\"fiche\": [{\"key\": \"titre\", \"type\": \"text\", \"label\": {\"fr\": \"Marque\"}}, {\"key\": \"soustitre\", \"type\": \"text\", \"label\": {\"fr\": \"Modèle\"}}, {\"key\": \"description\", \"type\": \"textarea\", \"label\": {\"fr\": \"Description\"}}], \"label\": {\"fr\": \"Information\"}}, {\"fiche\": [{\"key\": \"cash\", \"type\": \"number\", \"label\": {\"fr\": \"Prix cash\"}}], \"label\": {\"fr\": \"Prix\"}}, {\"fiche\": [{\"key\": \"adresse\", \"type\": \"text\", \"label\": {\"fr\": \"Adresse\"}}, {\"key\": \"lieu\", \"type\": \"text\", \"label\": {\"fr\": \"Lieu\"}}], \"label\": {\"fr\": \"Localisation\"}}, {\"fiche\": [{\"key\": \"version\", \"type\": \"text\", \"label\": {\"fr\": \"Version\"}}, {\"key\": \"annee\", \"type\": \"number\", \"label\": {\"fr\": \"Année\"}, \"length\": 4}, {\"key\": \"mise_en_circulation\", \"type\": \"date\", \"label\": {\"fr\": \"Mise en circulation\"}}, {\"key\": \"kilometrage\", \"type\": \"number\", \"label\": {\"fr\": \"Kilométrage\"}}, {\"key\": \"carrosserie\", \"type\": \"text\", \"label\": {\"fr\": \"Carrosserie\"}}, {\"key\": \"carburant\", \"type\": \"text\", \"label\": {\"fr\": \"Carburant\"}}, {\"key\": \"transmission\", \"type\": \"select\", \"items\": [\"Manuelle\", \"Automatique\"], \"label\": {\"fr\": \"Transmission\"}}, {\"key\": \"vitesse\", \"type\": \"number\", \"label\": {\"fr\": \"Vitesse\"}}, {\"key\": \"couleur\", \"type\": \"text\", \"label\": {\"fr\": \"Couleur\"}}, {\"key\": \"places\", \"type\": \"number\", \"label\": {\"fr\": \"Places\"}}, {\"key\": \"porte\", \"type\": \"number\", \"label\": {\"fr\": \"Porte\"}}, {\"key\": \"puissance_fiscal\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance fiscal\"}}, {\"key\": \"puissance_reel\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance réel\"}}, {\"key\": \"premiere_main\", \"type\": \"bool\", \"label\": {\"fr\": \"Première main\"}}, {\"key\": \"emission_co2\", \"type\": \"number\", \"label\": {\"fr\": \"Emission co2\"}}, {\"key\": \"reference\", \"type\": \"text\", \"label\": {\"fr\": \"Réference\"}}], \"label\": {\"fr\": \"Fiche technique\"}}, {\"fiche\": [{\"key\": \"images\", \"type\": \"image\", \"label\": {\"fr\": \"Photos\"}}], \"label\": {\"fr\": \"Photos\"}}]'),('996324e6-9a37-11e8-9aac-402cf41335ad','{\"en\": \"House\", \"fr\": \"Maison\"}','[{\"key\": \"localisation\", \"type\": \"text\", \"label\": {\"fr\": \"Localisation\"}}, {\"key\": \"chambres\", \"type\": \"number\", \"label\": {\"fr\": \"Chambres\"}}, {\"key\": \"latitude\", \"type\": \"number\", \"label\": {\"fr\": \"Latitude\"}}, {\"key\": \"surface_terrain\", \"type\": \"number\", \"label\": {\"fr\": \"Surface terrain\"}}, {\"key\": \"surface_habitable\", \"type\": \"number\", \"label\": {\"fr\": \"Surface habitable\"}}, {\"key\": \"vue\", \"type\": \"text\", \"label\": {\"fr\": \"Vue\"}}, {\"key\": \"autour\", \"type\": \"text\", \"label\": {\"fr\": \"Autour\"}}, {\"key\": \"accessibilite\", \"type\": \"text\", \"label\": {\"fr\": \"Accessibilité\"}}]'),('c6e5a3c0-9a33-11e8-9aac-402cf41335ad','{\"en\": \"Ground\", \"fr\": \"Terrain\"}','[{\"key\": \"localisation\", \"type\": \"text\", \"label\": {\"fr\": \"Localisation\"}}, {\"key\": \"longitude\", \"type\": \"number\", \"label\": {\"fr\": \"Longitude\"}}, {\"key\": \"latitude\", \"type\": \"number\", \"label\": {\"fr\": \"Latitude\"}}, {\"key\": \"superficie\", \"type\": \"number\", \"label\": {\"fr\": \"Superficie\"}}, {\"key\": \"vue\", \"type\": \"text\", \"label\": {\"fr\": \"Vue\"}}, {\"key\": \"autour\", \"type\": \"text\", \"label\": {\"fr\": \"Autour\"}}, {\"key\": \"accessibilite\", \"type\": \"text\", \"label\": {\"fr\": \"Accessibilite\"}}]');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-08-14 12:48:20
