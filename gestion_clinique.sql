-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 03 sep. 2022 à 17:52
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_clinique`
--

-- --------------------------------------------------------

--
-- Structure de la table `consultations`
--

DROP TABLE IF EXISTS `consultations`;
CREATE TABLE IF NOT EXISTS `consultations` (
  `id_consultations` int NOT NULL AUTO_INCREMENT,
  `date_consultation` date NOT NULL,
  `id_patients` int NOT NULL,
  `id_medecins` int NOT NULL,
  `description_consultation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_consultations`),
  KEY `id_patients` (`id_patients`),
  KEY `id_medecins` (`id_medecins`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `consultations`
--

INSERT INTO `consultations` (`id_consultations`, `date_consultation`, `id_patients`, `id_medecins`, `description_consultation`) VALUES
(1, '0000-00-00', 0, 0, ''),
(2, '0000-00-00', 0, 0, ''),
(3, '0000-00-00', 0, 0, ''),
(4, '0000-00-00', 0, 0, ''),
(5, '0000-00-00', 0, 0, ''),
(6, '0000-00-00', 0, 0, ''),
(7, '0000-00-00', 0, 0, ''),
(8, '0000-00-00', 0, 0, ''),
(9, '0000-00-00', 0, 0, ''),
(10, '0000-00-00', 0, 0, ''),
(11, '0000-00-00', 0, 0, ''),
(12, '0000-00-00', 0, 0, ''),
(13, '0000-00-00', 0, 0, ''),
(14, '0000-00-00', 0, 0, ''),
(15, '0000-00-00', 0, 0, ''),
(16, '0000-00-00', 0, 0, ''),
(17, '0000-00-00', 0, 0, ''),
(18, '0000-00-00', 0, 0, ''),
(19, '0000-00-00', 0, 0, ''),
(20, '1234-03-04', 2, 1, 'vfmkfmv'),
(21, '2022-08-24', 8, 2, 'jkedku'),
(22, '0000-00-00', 0, 0, ''),
(23, '2022-08-01', 23, 22, 'aeara'),
(24, '0000-00-00', 0, 0, ''),
(25, '0000-00-00', 0, 0, ''),
(26, '0000-00-00', 0, 0, ''),
(27, '0000-00-00', 0, 0, ''),
(28, '0000-00-00', 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `medecins`
--

DROP TABLE IF EXISTS `medecins`;
CREATE TABLE IF NOT EXISTS `medecins` (
  `id_medecins` int NOT NULL AUTO_INCREMENT,
  `nom_complet` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adresse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `specialisation` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_medecins`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `medecins`
--

INSERT INTO `medecins` (`id_medecins`, `nom_complet`, `adresse`, `specialisation`) VALUES
(1, 'valeur', 'valeur', 'valeur'),
(2, 'ok', 'tgr', 'erret'),
(3, 'users', 'santo 25', 'odontologie'),
(4, '', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, 'Jean Pierre', 'tabarre 32', 'odontologie'),
(9, '', '', ''),
(10, '', '', ''),
(11, '', '', ''),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id_patients` int NOT NULL AUTO_INCREMENT,
  `nom_complet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maladies` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_patients`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id_patients`, `nom_complet`, `maladies`) VALUES
(1, 'Aris Nathan', 'Myopie et astigmate'),
(26, '', ''),
(25, '', ''),
(24, 'Jonathan Aristilde', 'odontologie'),
(23, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_roles` int NOT NULL AUTO_INCREMENT,
  `poste` int NOT NULL,
  PRIMARY KEY (`id_roles`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id_roles`, `poste`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_users` int NOT NULL AUTO_INCREMENT,
  `Nom_Complet` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Mot_de_Passe` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_roles` int NOT NULL,
  PRIMARY KEY (`id_users`),
  KEY `id_roles` (`id_roles`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `Nom_Complet`, `Email`, `Mot_de_Passe`, `id_roles`) VALUES
(1, 'fd', 'd', '1', 1),
(2, 'fgh', 'zd', '23', 2),
(3, '', '', '', 0),
(4, 'atalou atalou', 'atalou@admin.com', '123', 1),
(5, '', '', '', 0),
(6, '', '', '', 0),
(7, '', '', '', 0),
(8, '', '', '', 0),
(9, '', '', '', 0),
(10, '', '', '', 0),
(11, '', '', '', 0),
(12, '', '', '', 0),
(13, '', '', '', 0),
(14, '', '', '', 0),
(15, '', '', '', 0),
(16, '', '', '', 0),
(17, '', '', '', 0),
(18, '', '', '', 0),
(19, '', '', '', 0),
(20, '', '', '', 0),
(21, '', '', '', 0),
(22, '', '', '', 0),
(23, '', '', '', 0),
(24, '', '', '', 0),
(25, '', '', '', 0),
(26, '', '', '', 0),
(27, '', '', '', 0),
(28, '', '', '', 0),
(29, '', '', '', 0),
(30, '', '', '', 0),
(31, '', '', '', 0),
(32, '', '', '', 0),
(33, '', '', '', 0),
(34, '', '', '', 0),
(35, '', '', '', 0),
(36, '', '', '', 0),
(37, '', '', '', 0),
(38, '', '', '', 0),
(39, '', '', '', 0),
(40, '', '', '', 0),
(41, '', '', '', 0),
(42, '', '', '', 0),
(43, '', '', '', 0),
(44, '', '', '', 0),
(45, '', '', '', 0),
(46, '', '', '', 0),
(47, '', '', '', 0),
(48, '', '', '', 0),
(49, '', '', '', 0),
(50, '', '', '', 0),
(51, '', '', '', 0),
(52, '', '', '', 0),
(53, '', '', '', 0),
(54, '', '', '', 0),
(55, '', '', '', 0),
(56, '', '', '', 0),
(57, '', '', '', 0),
(58, '', '', '', 0),
(59, '', '', '', 0),
(60, '', '', '', 0),
(61, '', '', '', 0),
(62, '', '', '', 0),
(63, 'wef', 'dew', '12', 2),
(64, '', '', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
