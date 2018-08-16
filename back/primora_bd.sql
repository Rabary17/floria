-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 16 août 2018 à 13:13
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `primora_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
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
  KEY `articles_currencies_FK` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`uuid`, `categorie`, `date_insertion`, `mensualite`, `currency`, `utilisateur_id`, `fiche`, `pinned`) VALUES
('28e7a8ea-9efe-11e8-9897-0024d7ada560', '128628c0-9a15-11e8-a0ed-0024d7ada560', '2018-08-13 16:38:28', 1000000, 'MGA', NULL, '{\"cash\": \"4000000\", \"lieu\": \"Tana\", \"annee\": \"1970\", \"porte\": \"4\", \"titre\": \"Citroën\", \"images\": [\"56e610dd-cfb8-4c91-ae8f-31ef1949dc98.jpeg\"], \"places\": \"5\", \"adresse\": \"Tana ville\", \"couleur\": \"Beie crème\", \"version\": \"2CV6\", \"vitesse\": \"4\", \"carburant\": \"Essence\", \"reference\": \"Ref2cv\", \"soustitre\": \"2CV\", \"carrosserie\": \"Berline\", \"description\": \"2Cv en bon état, déjà taxi\\nRéparation à faire\", \"kilometrage\": \"200000\", \"emission_co2\": \"0\", \"transmission\": \"Manuelle\", \"premiere_main\": true, \"puissance_reel\": \"2\", \"puissance_fiscal\": \"2\"}', 0),
('35908b2e-9fb2-11e8-a418-b499baeed4ed', '128628c0-9a15-11e8-a0ed-0024d7ada560', '2018-08-14 13:07:19', NULL, 'MGA', NULL, '{\"cash\": \"45000000\", \"lieu\": \"Tanà\", \"annee\": \"1990\", \"porte\": \"4\", \"titre\": \"Pegeot\", \"images\": [\"06e285fc-9fdd-4e6d-94e9-114ebc985199.JPG\", \"73a2ef2e-74fb-43e9-9ec0-31244c83714c.JPG\", \"c6d21949-9dcf-45a9-b93e-1680a9a0d47e.JPG\", \"1c8d3eb1-fea9-4f8e-aae8-8420091b4819.JPG\"], \"places\": \"8\", \"adresse\": \"Amboditsiry IIH\", \"couleur\": \"Blanche\", \"version\": \"1\", \"vitesse\": \"4\", \"carburant\": \"Essence\", \"reference\": \"Pg 404\", \"soustitre\": \"404\", \"carrosserie\": \"Berline\", \"description\": \"Qualité 8/10\", \"kilometrage\": \"400000\", \"emission_co2\": \"20\", \"transmission\": \"Manuelle\", \"premiere_main\": true, \"puissance_reel\": \"10\", \"puissance_fiscal\": \"15\"}', 0),
('3bf41566-9f89-11e8-a39a-0024d7ada560', '128628c0-9a15-11e8-a0ed-0024d7ada560', '2018-08-14 09:14:00', NULL, 'MGA', NULL, '{}', 0),
('de5fdfc2-9eff-11e8-9897-0024d7ada560', '128628c0-9a15-11e8-a0ed-0024d7ada560', '2018-08-13 16:50:42', NULL, 'MGA', NULL, '{\"cash\": \"20000000\", \"lieu\": \"Tamatave\", \"annee\": \"1980\", \"porte\": \"2\", \"titre\": \"WV\", \"images\": [\"e1edc8bd-3ca7-4835-bbea-6568e9ca2bd6.jpg\", \"c5dfc998-3ee6-4fde-b4a5-e24df6e50da8.jpeg\"], \"places\": \"5\", \"adresse\": \"Tamatave\", \"couleur\": \"Blanche\", \"version\": \"1\", \"vitesse\": \"4\", \"carburant\": \"Essence\", \"soustitre\": \"Cox\", \"carrosserie\": \"Coupé\", \"description\": \"Cox à ventre, TBE\", \"kilometrage\": \"150000\", \"emission_co2\": \"0\", \"transmission\": \"Manuelle\", \"premiere_main\": true, \"puissance_reel\": \"12\", \"puissance_fiscal\": \"12\"}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `uuid` char(36) NOT NULL,
  `nom` json NOT NULL,
  `fiche` json NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`uuid`, `nom`, `fiche`) VALUES
('128628c0-9a15-11e8-a0ed-0024d7ada560', '{\"en\": \"Car\", \"fr\": \"Voiture\"}', '[{\"fiche\": [{\"key\": \"titre\", \"type\": \"text\", \"label\": {\"fr\": \"Marque\"}}, {\"key\": \"soustitre\", \"type\": \"text\", \"label\": {\"fr\": \"Modèle\"}}, {\"key\": \"description\", \"type\": \"textarea\", \"label\": {\"fr\": \"Description\"}}], \"label\": {\"fr\": \"Information\"}}, {\"fiche\": [{\"key\": \"cash\", \"type\": \"number\", \"label\": {\"fr\": \"Prix cash\"}}], \"label\": {\"fr\": \"Prix\"}}, {\"fiche\": [{\"key\": \"adresse\", \"type\": \"text\", \"label\": {\"fr\": \"Adresse\"}}, {\"key\": \"lieu\", \"type\": \"text\", \"label\": {\"fr\": \"Lieu\"}}], \"label\": {\"fr\": \"Localisation\"}}, {\"fiche\": [{\"key\": \"version\", \"type\": \"text\", \"label\": {\"fr\": \"Version\"}}, {\"key\": \"annee\", \"type\": \"number\", \"label\": {\"fr\": \"Année\"}, \"length\": 4}, {\"key\": \"mise_en_circulation\", \"type\": \"date\", \"label\": {\"fr\": \"Mise en circulation\"}}, {\"key\": \"kilometrage\", \"type\": \"number\", \"label\": {\"fr\": \"Kilométrage\"}}, {\"key\": \"carrosserie\", \"type\": \"text\", \"label\": {\"fr\": \"Carrosserie\"}}, {\"key\": \"carburant\", \"type\": \"text\", \"label\": {\"fr\": \"Carburant\"}}, {\"key\": \"transmission\", \"type\": \"select\", \"items\": [\"Manuelle\", \"Automatique\"], \"label\": {\"fr\": \"Transmission\"}}, {\"key\": \"vitesse\", \"type\": \"number\", \"label\": {\"fr\": \"Vitesse\"}}, {\"key\": \"couleur\", \"type\": \"text\", \"label\": {\"fr\": \"Couleur\"}}, {\"key\": \"places\", \"type\": \"number\", \"label\": {\"fr\": \"Places\"}}, {\"key\": \"porte\", \"type\": \"number\", \"label\": {\"fr\": \"Porte\"}}, {\"key\": \"puissance_fiscal\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance fiscal\"}}, {\"key\": \"puissance_reel\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance réel\"}}, {\"key\": \"premiere_main\", \"type\": \"bool\", \"label\": {\"fr\": \"Première main\"}}, {\"key\": \"emission_co2\", \"type\": \"number\", \"label\": {\"fr\": \"Emission co2\"}}, {\"key\": \"reference\", \"type\": \"text\", \"label\": {\"fr\": \"Réference\"}}], \"label\": {\"fr\": \"Fiche technique\"}}, {\"fiche\": [{\"key\": \"images\", \"type\": \"image\", \"label\": {\"fr\": \"Photos\"}}], \"label\": {\"fr\": \"Photos\"}}]'),
('996324e6-9a37-11e8-9aac-402cf41335ad', '{\"en\": \"House\", \"fr\": \"Maison\"}', '[{\"fiche\": [{\"key\": \"nom\", \"type\": \"text\", \"label\": {\"fr\": \"Titre\"}}, {\"key\": \"description\", \"type\": \"textarea\", \"label\": {\"fr\": \"Description\"}}], \"label\": {\"fr\": \"Information\"}}, {\"fiche\": [{\"key\": \"cash\", \"type\": \"number\", \"label\": {\"fr\": \"Prix cash\"}}], \"label\": {\"fr\": \"Prix\"}}, {\"fiche\": [{\"key\": \"adresse\", \"type\": \"text\", \"label\": {\"fr\": \"Adresse\"}}, {\"key\": \"lieu\", \"type\": \"text\", \"label\": {\"fr\": \"Lieu\"}}], \"label\": {\"fr\": \"Localisation\"}}, {\"fiche\": [{\"key\": \"superficie_maison\", \"type\": \"number\", \"label\": {\"fr\": \"Superficie de la maison\"}}, {\"key\": \"superficie_terrain\", \"type\": \"number\", \"label\": {\"fr\": \"Superficie du terrain\"}}, {\"key\": \"chauffage\", \"type\": \"bool\", \"label\": {\"fr\": \"Chauffage\"}}, {\"key\": \"pieces\", \"type\": \"number\", \"label\": {\"fr\": \"Nombres total de Pièces\"}}, {\"key\": \"chambres\", \"type\": \"number\", \"label\": {\"fr\": \"Chambres\"}}, {\"key\": \"cuisine\", \"type\": \"bool\", \"label\": {\"fr\": \"Cuisine\"}}, {\"key\": \"salon_sejour\", \"type\": \"bool\", \"label\": {\"fr\": \"Salon-séjour\"}}, {\"key\": \"salle_bain\", \"type\": \"bool\", \"label\": {\"fr\": \"Salle de bain\"}}, {\"key\": \"garage\", \"type\": \"bool\", \"label\": {\"fr\": \"Garage\"}}, {\"key\": \"piscine\", \"type\": \"bool\", \"label\": {\"fr\": \"Piscine\"}}, {\"key\": \"equestre\", \"type\": \"bool\", \"label\": {\"fr\": \"Centre équestre\"}}, {\"key\": \"service_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Service à proximité\"}}, {\"key\": \"comm_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Commerce à proximité\"}}], \"label\": {\"fr\": \"Fiche technique\"}}, {\"fiche\": [{\"key\": \"images\", \"type\": \"image\", \"label\": {\"fr\": \"Photos\"}}], \"label\": {\"fr\": \"Photos\"}}]'),
('c6e5a3c0-9a33-11e8-9aac-402cf41335ad', '{\"en\": \"Ground\", \"fr\": \"Terrain\"}', '[{\"fiche\": [{\"key\": \"nom\", \"type\": \"text\", \"label\": {\"fr\": \"Titre\"}}, {\"key\": \"description\", \"type\": \"textarea\", \"label\": {\"fr\": \"Description\"}}], \"label\": {\"fr\": \"Information\"}}, {\"fiche\": [{\"key\": \"cash\", \"type\": \"number\", \"label\": {\"fr\": \"Prix cash\"}}], \"label\": {\"fr\": \"Prix\"}}, {\"fiche\": [{\"key\": \"adresse\", \"type\": \"text\", \"label\": {\"fr\": \"Adresse\"}}, {\"key\": \"lieu\", \"type\": \"text\", \"label\": {\"fr\": \"Lieu\"}}, {\"key\": \"latitude\", \"type\": \"number\", \"label\": {\"fr\": \"Latitude\"}}, {\"key\": \"longitude\", \"type\": \"number\", \"label\": {\"fr\": \"Longitude\"}}], \"label\": {\"fr\": \"Localisation\"}}, {\"fiche\": [{\"key\": \"certificat_d_urb\", \"type\": \"bool\", \"label\": {\"fr\": \"Certificat d\'urbanisation\"}}, {\"key\": \"bornage\", \"type\": \"bool\", \"label\": {\"fr\": \"Bornage effectué par un géomètre\"}}, {\"key\": \"acces_terrain\", \"type\": \"select\", \"items\": [\"Public\", \"Prive\"], \"label\": {\"fr\": \"Accès terrain\"}}, {\"key\": \"cadastre\", \"type\": \"number\", \"label\": {\"fr\": \"Numero cadastre\"}}, {\"key\": \"surface\", \"type\": \"number\", \"label\": {\"fr\": \"Surface du terrain\"}}, {\"key\": \"accessibilite\", \"type\": \"textarea\", \"label\": {\"fr\": \"Accessibilité\"}}, {\"key\": \"lotissement\", \"type\": \"bool\", \"label\": {\"fr\": \"Lotissement\"}}, {\"key\": \"etat_du_sol\", \"type\": \"textarea\", \"label\": {\"fr\": \"L\'état du sol\"}}, {\"key\": \"service_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Service à proximité\"}}, {\"key\": \"comm_a_p\", \"type\": \"textarea\", \"label\": {\"fr\": \"Commerce à proximité\"}}], \"label\": {\"fr\": \"Fiche technique\"}}, {\"fiche\": [{\"key\": \"images\", \"type\": \"image\", \"label\": {\"fr\": \"Photos\"}}], \"label\": {\"fr\": \"Photos\"}}]');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `uuid` char(36) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `article_id` char(36) NOT NULL,
  `modalite_id` char(36) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `modalite_id` (`modalite_id`),
  KEY `utilisateur_id` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `uuid` char(36) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `article_id` char(36) NOT NULL,
  `commentaire` text NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `code` char(5) NOT NULL,
  `code_long` varchar(50) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `currencies`
--

INSERT INTO `currencies` (`code`, `code_long`) VALUES
('MGA', 'Ariary');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `uuid` char(36) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `article_id` char(36) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `article_id` (`article_id`),
  KEY `utilisateur_id` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `medias`
--

DROP TABLE IF EXISTS `medias`;
CREATE TABLE IF NOT EXISTS `medias` (
  `uuid` char(36) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `modalites`
--

DROP TABLE IF EXISTS `modalites`;
CREATE TABLE IF NOT EXISTS `modalites` (
  `uuid` char(36) NOT NULL,
  `code` varchar(50) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `mode` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `uuid` char(36) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
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
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_currencies_FK` FOREIGN KEY (`currency`) REFERENCES `currencies` (`code`),
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`),
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`categorie`) REFERENCES `categories` (`uuid`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`modalite_id`) REFERENCES `modalites` (`uuid`),
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`uuid`);

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`uuid`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
