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
INSERT INTO `articles` VALUES ('0a909971-a1e4-11e8-a6fd-000d3ab4b545','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-17 06:09:04',NULL,'MGA',NULL,'{\"tel\": \"+261342260678\", \"cash\": \"50000000\", \"lieu\": \"Antsahabe\", \"annee\": \"2009\", \"porte\": \"4\", \"titre\": \"Hyundai\", \"images\": [\"237f7f88-e97a-42ff-85bd-e602017be8f2.jpg\", \"ff9383d1-b083-42f7-b085-ec3d6274a569.jpg\"], \"places\": \"9\", \"couleur\": \"Grise\", \"soustitre\": \"Starex\", \"description\": \"Hyundai Grand Starex 2009\"}',0),('2158ad78-a1e9-11e8-a6fd-000d3ab4b545','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-17 06:45:29',NULL,'MGA',NULL,'{\"tel\": \"033 02 000 00\", \"cash\": \"9700000\", \"lieu\": \"Antananarivo\", \"annee\": \"1990\", \"email\": \"xxxx@gmail.com\", \"porte\": \"2\", \"titre\": \"Peugeot\", \"images\": [\"ebf2dc70-9350-46a8-baa7-393e5b923810.jpg\"], \"places\": \"5\", \"couleur\": \"Bleue\", \"version\": \"1.9 Gti\", \"vitesse\": \"5\", \"carburant\": \"Essence\", \"reference\": \"Peugeot 205 1.9 Gti\", \"soustitre\": \"205 Gti \", \"carrosserie\": \"Coupé\", \"description\": \"À Vendre Peugeot 205 Gti \\nMoteur 1.9 Gti (Injection) \\nTrès Puissante \\nÉconomique Selon La Façon De Conduire \\n2 Vitres Électriques \\nDirection Assistée \\nIntérieur D\'Origine \\n4 Freins À Disque \\nJante Allu \\nBar Anti Rapprochement \\nEchange Possible \", \"kilometrage\": \"150000\", \"transmission\": \"Manuelle\", \"premiere_main\": false, \"puissance_reel\": \"130\", \"puissance_fiscal\": \"10\"}',0),('36c21338-a1e9-11e8-a6fd-000d3ab4b545','996324e6-9a37-11e8-9aac-402cf41335ad','2018-08-17 06:46:05',NULL,'MGA',NULL,'{\"tel\": \"0326550004\", \"cash\": \"345000000\", \"lieu\": \"Ambatobe\", \"email\": \"email@email.mg\", \"titre\": \"Villa à étage\", \"garage\": true, \"images\": [\"633f95c3-6d62-409a-9dfb-99205cddda51.jpg\"], \"pieces\": \"5\", \"adresse\": \"Antananarivo\", \"cuisine\": true, \"piscine\": true, \"chambres\": \"3\", \"equestre\": true, \"chauffage\": true, \"salle_bain\": true, \"description\": \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\", \"salon_sejour\": true, \"superficie_maison\": \"250\", \"superficie_terrain\": \"970\"}',0),('4e7feb8a-a1e7-11e8-a6fd-000d3ab4b545','996324e6-9a37-11e8-9aac-402cf41335ad','2018-08-17 06:32:26',NULL,'MGA',NULL,'{\"tel\": \"0320045600\", \"cash\": \"570050000\", \"lieu\": \"Antananarivo\", \"email\": \"contact@gmail.com\", \"titre\": \"Villa basse\", \"garage\": true, \"images\": [\"a24d91c6-7c8e-441e-8b14-da67866ae345.jpg\"], \"pieces\": \"5\", \"adresse\": \"Ivandry\", \"cuisine\": true, \"chambres\": \"3\", \"chauffage\": true, \"salle_bain\": true, \"description\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\", \"salon_sejour\": true, \"superficie_maison\": \"500\", \"superficie_terrain\": \"900\"}',0),('59043509-a1e5-11e8-a6fd-000d3ab4b545','c6e5a3c0-9a33-11e8-9aac-402cf41335ad','2018-08-17 06:18:25',NULL,'MGA',NULL,'{\"tel\": \"0 32 05 400 31\", \"cash\": \"400000000\", \"lieu\": \"Ambohidratrimo\", \"email\": \"ratsitononina@gmail.com\", \"titre\": \"Terrain malalaka\", \"images\": [\"0cdc171e-bdff-4dec-a245-5970bb08d129.jpg\", \"eeb78285-4c31-46d5-b8fd-0fb00b20a519.jpg\", \"f1e2a76b-8c41-4e4a-9bd7-cf7e7038014e.jpg\"], \"adresse\": \"Ambohidratrimo\", \"bornage\": true, \"surface\": \"2200\", \"cadastre\": \"549555\", \"comm_a_p\": \"Shop Liantsoa\", \"description\": \"Situé en Bord de route principale\", \"lotissement\": true, \"service_a_p\": \"CSBII\", \"acces_terrain\": \"Prive\", \"accessibilite\": \"\", \"certificat_d_urb\": true}',0),('748ef1be-a1e8-11e8-a6fd-000d3ab4b545','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-17 06:40:39',NULL,'MGA',NULL,'{\"tel\": \"0350000000\", \"cash\": \"40000000\", \"lieu\": \"Analamahitsy\", \"annee\": \"2001\", \"email\": \"contact@email.com\", \"porte\": \"2\", \"titre\": \"Man\", \"images\": [\"10917c4c-50f6-4026-994f-40b3bcc21e85.jpg\"], \"places\": \"3\", \"adresse\": \"Antananarivo\", \"couleur\": \"Verte\", \"version\": \"Camion\", \"carburant\": \"Essence\", \"soustitre\": \"Camion Man\", \"carrosserie\": \"Camion\", \"description\": \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\", \"kilometrage\": \"13000\", \"emission_co2\": \"7\", \"transmission\": \"Manuelle\", \"premiere_main\": true}',0),('885123e9-a1e8-11e8-a6fd-000d3ab4b545','128628c0-9a15-11e8-a0ed-0024d7ada560','2018-08-17 06:41:13',NULL,'MGA',NULL,'{\"tel\": \"033 02 000 00\", \"cash\": \"20000000\", \"annee\": \"2007\", \"email\": \"xxxxx@gmail.com\", \"porte\": \"4\", \"titre\": \"KIA\", \"images\": [\"fa3745b3-27e2-4303-b257-23f755d316f2.jpg\", \"1ffc01df-3b54-432e-af15-0237060b01dd.jpg\", \"535f8b96-879b-4eeb-8142-49e5a01732f2.jpg\"], \"places\": \"8\", \"adresse\": \"Tana\", \"couleur\": \"Noire\", \"version\": \"PHASE 2 SLX\", \"vitesse\": \"5\", \"carburant\": \"Diesel\", \"reference\": \"KIA PRIDE PHASE 2 SLX\", \"soustitre\": \"PRIDE PHASE 2 SLX\", \"description\": \"A vendre \\nKIA PRIDE PHASE 2 SLX\\nMOTEUR 1.5 (Diesel) TURBO VGT \\nMise en circulation 2007 - \\n5 Portes - 5 Places - Boite de vitesse manuelle.\\nNUMÉRO ÉTRANGER .\\n\\nOPTIONS: \\nRadio origine commandée au volant.\\nÉcran tactile mp5 avec entrée USB et CARTE SD.BLUETOOTH. \\nVoiture équipée d\'un Radar de recul et Camera de recul.\\n04 Jantes Alu.\\n04 Vitres électrique.\\nVerrouillage centralisée.\\nFermeture et ouverture commandée à distance.\\nRétroviseur réglable et rabattage électriques.\\nAntidémarrage\\nClimatronic \\nChaise chauffante\\nAirbag.\\nPose tête\\nIntérieur et extérieur origine\\nFaible kilométrage.\\nMOTEUR IMPECCABLE.(Distribution Chaine et sans Bruit)\\nVoiture 0 devoir\\nVéhicule visible sur rendez vous.\", \"kilometrage\": \"150000\", \"transmission\": \"Manuelle\", \"premiere_main\": true}',0),('b8323688-a1e6-11e8-a6fd-000d3ab4b545','c6e5a3c0-9a33-11e8-9aac-402cf41335ad','2018-08-17 06:28:14',NULL,'MGA',NULL,'{\"tel\": \"033 02 000 000\", \"cash\": \"100000000\", \"lieu\": \"Ambohidratrimo\", \"email\": \"xxxxxxx@gmail.com\", \"titre\": \"MAHITSY\", \"images\": [\"e5b9c567-38a8-4ee1-baeb-cf2c9c1bc155.jpg\"], \"bornage\": true, \"surface\": \"5000\", \"description\": \"TERRAIN A VENDRE URGENT MAHITSY 2 KM A PROXIMITE DE LA ROUTE SUPERFICIE DE 5000 M²\\nMISY KARATANY (PROPRIETAIRE UNIQUE) AZO ANAOVANA PROJET TSARA \", \"acces_terrain\": \"Public\", \"certificat_d_urb\": true}',0),('be562127-a1e6-11e8-a6fd-000d3ab4b545','c6e5a3c0-9a33-11e8-9aac-402cf41335ad','2018-08-17 06:28:24',NULL,'MGA',NULL,'{\"tel\": \"0202232075\", \"cash\": \"554000000\", \"lieu\": \"Ambohidrabiby avaratra\", \"email\": \"ratsifantatra@gmail.com\", \"titre\": \"Terrain 2\", \"images\": [\"3c195d34-c667-4d81-ad77-a718f3de204d.jpg\", \"b83d2ab1-9129-47c4-9caa-55ffb734cf76.jpg\", \"602c0e08-ae2d-4d8e-ac4d-d96fa2a5be8c.jpg\"], \"adresse\": \"Ambohidrabiby \", \"bornage\": true, \"surface\": \"2700\", \"cadastre\": \"443466\", \"comm_a_p\": \"Tsenan\'ny tantsaha\", \"description\": \"Le bien est morcelable et dispose d’une vue panoramique sur la ville\", \"etat_du_sol\": \"Bon état.\", \"lotissement\": true, \"service_a_p\": \"Bank\", \"acces_terrain\": \"Public\", \"accessibilite\": \"En voiture\", \"certificat_d_urb\": true}',0),('f745aa2a-a1e1-11e8-a6fd-000d3ab4b545','996324e6-9a37-11e8-9aac-402cf41335ad','2018-08-17 05:54:12',NULL,'MGA',NULL,'{\"cash\": \"50000000\", \"titre\": \"VILLA A ETAGE\", \"garage\": true, \"images\": [\"26b4f44b-ce52-412c-9415-f760ba4d09c3.JPG\"], \"pieces\": \"5\", \"adresse\": \"Antsirabe\", \"cuisine\": true, \"chambres\": \"3\", \"salle_bain\": true, \"description\": \"ANTSIRABE A VENDRE BELLE VILLA A ETAGE 696m² AXE SUD, \\nà 2km500 du centre ville\\nfacile d’accès au centre, pas d’embouteillage\", \"service_a_p\": \"Centre ville\", \"salon_sejour\": true, \"superficie_maison\": \"700\"}',0);
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
INSERT INTO `categories` VALUES ('128628c0-9a15-11e8-a0ed-0024d7ada560','{\"en\": \"Car\", \"fr\": \"Voiture\"}','[{\"fiche\": [{\"key\": \"titre\", \"type\": \"text\", \"label\": {\"fr\": \"Marque\"}}, {\"key\": \"soustitre\", \"type\": \"text\", \"label\": {\"fr\": \"Modèle\"}}, {\"key\": \"description\", \"type\": \"textarea\", \"label\": {\"fr\": \"Description\"}}], \"label\": {\"fr\": \"Information\"}}, {\"fiche\": [{\"key\": \"cash\", \"type\": \"number\", \"label\": {\"fr\": \"Prix cash\"}}], \"label\": {\"fr\": \"Prix\"}}, {\"fiche\": [{\"key\": \"email\", \"type\": \"email\", \"label\": {\"fr\": \"Email\"}}, {\"key\": \"tel\", \"type\": \"tel\", \"label\": {\"fr\": \"Tel\"}}, {\"key\": \"adresse\", \"type\": \"text\", \"label\": {\"fr\": \"Adresse\"}}, {\"key\": \"lieu\", \"type\": \"text\", \"label\": {\"fr\": \"Lieu\"}}], \"label\": {\"fr\": \"Contact\"}}, {\"fiche\": [{\"key\": \"version\", \"type\": \"text\", \"label\": {\"fr\": \"Version\"}}, {\"key\": \"annee\", \"type\": \"number\", \"label\": {\"fr\": \"Année\"}, \"length\": 4}, {\"key\": \"mise_en_circulation\", \"type\": \"date\", \"label\": {\"fr\": \"Mise en circulation\"}}, {\"key\": \"kilometrage\", \"type\": \"number\", \"label\": {\"fr\": \"Kilométrage\"}}, {\"key\": \"carrosserie\", \"type\": \"text\", \"label\": {\"fr\": \"Carrosserie\"}}, {\"key\": \"carburant\", \"type\": \"text\", \"label\": {\"fr\": \"Carburant\"}}, {\"key\": \"transmission\", \"type\": \"select\", \"items\": [\"Manuelle\", \"Automatique\"], \"label\": {\"fr\": \"Transmission\"}}, {\"key\": \"vitesse\", \"type\": \"number\", \"label\": {\"fr\": \"Vitesse\"}}, {\"key\": \"couleur\", \"type\": \"text\", \"label\": {\"fr\": \"Couleur\"}}, {\"key\": \"places\", \"type\": \"number\", \"label\": {\"fr\": \"Places\"}}, {\"key\": \"porte\", \"type\": \"number\", \"label\": {\"fr\": \"Porte\"}}, {\"key\": \"puissance_fiscal\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance fiscal\"}}, {\"key\": \"puissance_reel\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance réel\"}}, {\"key\": \"premiere_main\", \"type\": \"bool\", \"label\": {\"fr\": \"Première main\"}}, {\"key\": \"emission_co2\", \"type\": \"number\", \"label\": {\"fr\": \"Emission co2\"}}, {\"key\": \"reference\", \"type\": \"text\", \"label\": {\"fr\": \"Réference\"}}], \"label\": {\"fr\": \"Fiche technique\"}}, {\"fiche\": [{\"key\": \"images\", \"type\": \"image\", \"label\": {\"fr\": \"Photos\"}}], \"label\": {\"fr\": \"Photos\"}}]'),('996324e6-9a37-11e8-9aac-402cf41335ad','{\"en\": \"House\", \"fr\": \"Maison\"}','[{\"fiche\": [{\"key\": \"titre\", \"type\": \"text\", \"label\": {\"fr\": \"Titre\"}}, {\"key\": \"description\", \"type\": \"textarea\", \"label\": {\"fr\": \"Description\"}}], \"label\": {\"fr\": \"Information\"}}, {\"fiche\": [{\"key\": \"cash\", \"type\": \"number\", \"label\": {\"fr\": \"Prix cash\"}}], \"label\": {\"fr\": \"Prix\"}}, {\"fiche\": [{\"key\": \"email\", \"type\": \"email\", \"label\": {\"fr\": \"Email\"}}, {\"key\": \"tel\", \"type\": \"tel\", \"label\": {\"fr\": \"Tel\"}}, {\"key\": \"adresse\", \"type\": \"text\", \"label\": {\"fr\": \"Adresse\"}}, {\"key\": \"lieu\", \"type\": \"text\", \"label\": {\"fr\": \"Lieu\"}}], \"label\": {\"fr\": \"Contact\"}}, {\"fiche\": [{\"key\": \"superficie_maison\", \"type\": \"number\", \"label\": {\"fr\": \"Superficie de la maison\"}}, {\"key\": \"superficie_terrain\", \"type\": \"number\", \"label\": {\"fr\": \"Superficie du terrain\"}}, {\"key\": \"chauffage\", \"type\": \"bool\", \"label\": {\"fr\": \"Chauffage\"}}, {\"key\": \"pieces\", \"type\": \"number\", \"label\": {\"fr\": \"Nombres total de Pièces\"}}, {\"key\": \"chambres\", \"type\": \"number\", \"label\": {\"fr\": \"Chambres\"}}, {\"key\": \"cuisine\", \"type\": \"bool\", \"label\": {\"fr\": \"Cuisine\"}}, {\"key\": \"salon_sejour\", \"type\": \"bool\", \"label\": {\"fr\": \"Salon-séjour\"}}, {\"key\": \"salle_bain\", \"type\": \"bool\", \"label\": {\"fr\": \"Salle de bain\"}}, {\"key\": \"garage\", \"type\": \"bool\", \"label\": {\"fr\": \"Garage\"}}, {\"key\": \"piscine\", \"type\": \"bool\", \"label\": {\"fr\": \"Piscine\"}}, {\"key\": \"equestre\", \"type\": \"bool\", \"label\": {\"fr\": \"Centre équestre\"}}, {\"key\": \"service_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Service à proximité\"}}, {\"key\": \"comm_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Commerce à proximité\"}}], \"label\": {\"fr\": \"Fiche technique\"}}, {\"fiche\": [{\"key\": \"images\", \"type\": \"image\", \"label\": {\"fr\": \"Photos\"}}], \"label\": {\"fr\": \"Photos\"}}]'),('c6e5a3c0-9a33-11e8-9aac-402cf41335ad','{\"en\": \"Ground\", \"fr\": \"Terrain\"}','[{\"fiche\": [{\"key\": \"titre\", \"type\": \"text\", \"label\": {\"fr\": \"Titre\"}}, {\"key\": \"description\", \"type\": \"textarea\", \"label\": {\"fr\": \"Description\"}}], \"label\": {\"fr\": \"Information\"}}, {\"fiche\": [{\"key\": \"cash\", \"type\": \"number\", \"label\": {\"fr\": \"Prix cash\"}}], \"label\": {\"fr\": \"Prix\"}}, {\"fiche\": [{\"key\": \"email\", \"type\": \"email\", \"label\": {\"fr\": \"Email\"}}, {\"key\": \"tel\", \"type\": \"tel\", \"label\": {\"fr\": \"Tel\"}}, {\"key\": \"adresse\", \"type\": \"text\", \"label\": {\"fr\": \"Adresse\"}}, {\"key\": \"lieu\", \"type\": \"text\", \"label\": {\"fr\": \"Lieu\"}}], \"label\": {\"fr\": \"Contact\"}}, {\"fiche\": [{\"key\": \"certificat_d_urb\", \"type\": \"bool\", \"label\": {\"fr\": \"Certificat d\'urbanisation\"}}, {\"key\": \"bornage\", \"type\": \"bool\", \"label\": {\"fr\": \"Bornage effectué par un géomètre\"}}, {\"key\": \"acces_terrain\", \"type\": \"select\", \"items\": [\"Public\", \"Prive\"], \"label\": {\"fr\": \"Accès terrain\"}}, {\"key\": \"cadastre\", \"type\": \"number\", \"label\": {\"fr\": \"Numero cadastre\"}}, {\"key\": \"surface\", \"type\": \"number\", \"label\": {\"fr\": \"Surface du terrain\"}}, {\"key\": \"accessibilite\", \"type\": \"textarea\", \"label\": {\"fr\": \"Accessibilité\"}}, {\"key\": \"lotissement\", \"type\": \"bool\", \"label\": {\"fr\": \"Lotissement\"}}, {\"key\": \"etat_du_sol\", \"type\": \"textarea\", \"label\": {\"fr\": \"L\'état du sol\"}}, {\"key\": \"service_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Service à proximité\"}}, {\"key\": \"comm_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Commerce à proximité\"}}], \"label\": {\"fr\": \"Fiche technique\"}}, {\"fiche\": [{\"key\": \"images\", \"type\": \"image\", \"label\": {\"fr\": \"Photos\"}}], \"label\": {\"fr\": \"Photos\"}}]');
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

-- Dump completed on 2018-08-17  8:30:36
