-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 07 août 2018 à 11:36
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
  `nom` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `prix_cache` float NOT NULL,
  `mensualite` int(11) NOT NULL,
  `coordonne_geo` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `utilisateur_id` char(36) DEFAULT NULL,
  `currency_id` char(36) NOT NULL,
  `categorie_id` char(36) NOT NULL,
  `media_id` char(36) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `media_id` (`media_id`),
  KEY `categorie_id` (`categorie_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('128628c0-9a15-11e8-a0ed-0024d7ada560', '{\"en\": \"Car\", \"fr\": \"Voiture\"}', '[{\"key\": \"marque\", \"type\": \"text\", \"label\": {\"fr\": \"Marque\"}}, {\"key\": \"modele\", \"type\": \"text\", \"label\": {\"fr\": \"Modèle\"}}, {\"key\": \"version\", \"type\": \"text\", \"label\": {\"fr\": \"Version\"}}, {\"key\": \"annee\", \"type\": \"number\", \"label\": {\"fr\": \"Année\"}, \"length\": 4}, {\"key\": \"mise_en_circulation\", \"type\": \"date\", \"label\": {\"fr\": \"Mise en circulation\"}}, {\"key\": \"kilometrage\", \"type\": \"number\", \"label\": {\"fr\": \"Kilométrage\"}}, {\"key\": \"carrosserie\", \"type\": \"text\", \"label\": {\"fr\": \"Carrosserie\"}}, {\"key\": \"carburant\", \"type\": \"text\", \"label\": {\"fr\": \"Carburant\"}}, {\"key\": \"manuelle\", \"type\": \"text\", \"label\": {\"fr\": \"Manuelle\"}}, {\"key\": \"vitesse\", \"type\": \"text\", \"label\": {\"fr\": \"Vitesse\"}}, {\"key\": \"couleur\", \"type\": \"text\", \"label\": {\"fr\": \"Couleur\"}}, {\"key\": \"places\", \"type\": \"number\", \"label\": {\"fr\": \"Places\"}}, {\"key\": \"porte\", \"type\": \"number\", \"label\": {\"fr\": \"Porte\"}}, {\"key\": \"puissance_fiscal\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance fiscal\"}}, {\"key\": \"puissance_reel\", \"type\": \"number\", \"label\": {\"fr\": \"Puissance réel\"}}, {\"key\": \"premiere_main\", \"type\": \"text\", \"label\": {\"fr\": \"Première main\"}}, {\"key\": \"emission_co2\", \"type\": \"number\", \"label\": {\"fr\": \"Emission co2\"}}, {\"key\": \"reference\", \"type\": \"number\", \"label\": {\"fr\": \"Réference\"}}]'),
('c6e5a3c0-9a33-11e8-9aac-402cf41335ad', '{\"en\": \"Ground\", \"fr\": \"Terrain\"}', '[{\"key\": \"localisation\", \"type\": \"text\", \"label\": {\"fr\": \"Localisation\"}}, {\"key\": \"longitude\", \"type\": \"number\", \"label\": {\"fr\": \"Longitude\"}}, {\"key\": \"latitude\", \"type\": \"number\", \"label\": {\"fr\": \"Latitude\"}}, {\"key\": \"superficie\", \"type\": \"number\", \"label\": {\"fr\": \"Superficie\"}}, {\"key\": \"vue\", \"type\": \"text\", \"label\": {\"fr\": \"Vue\"}}, {\"key\": \"autour\", \"type\": \"text\", \"label\": {\"fr\": \"Autour\"}}, {\"key\": \"accessibilite\", \"type\": \"text\", \"label\": {\"fr\": \"Accessibilite\"}}]');

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
  `uuid` char(36) NOT NULL,
  `currency` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`uuid`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `medias` (`uuid`),
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`uuid`),
  ADD CONSTRAINT `articles_ibfk_4` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`uuid`);

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
