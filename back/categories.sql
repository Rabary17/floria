-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 07 août 2018 à 11:28
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
