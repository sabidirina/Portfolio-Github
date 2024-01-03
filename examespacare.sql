-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 10 mai 2023 à 09:47
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `espa care`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `Id-clients` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Mot de passe` varchar(8) NOT NULL,
  `Numero de telephone` varchar(50) NOT NULL,
  PRIMARY KEY (`Id-clients`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`Id-clients`, `Nom`, `Prenom`, `E-mail`, `Mot de passe`, `Numero de telephone`) VALUES
(1, 'Brahimi', 'Lena', 'lenabrahimi@gmail.com', '', '53401004'),
(2, 'Belkalem', 'Ali', 'belkalemmohammedali@gmail.com', '', '53201322'),
(3, 'Dahman', 'Omar', 'dahmanomar123@gmail.com', '', '53458657'),
(4, 'Ammerouche', 'Hayet', 'hayetammerouche@gmail.com', '', '53401227');

-- --------------------------------------------------------

--
-- Structure de la table `crée un compte`
--

DROP TABLE IF EXISTS `crée un compte`;
CREATE TABLE IF NOT EXISTS `crée un compte` (
  `Id-Inscription` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Mot de passe` varchar(8) NOT NULL,
  `Numéro de télephone` varchar(10) NOT NULL,
  `Date de naissance` date NOT NULL,
  PRIMARY KEY (`Id-Inscription`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mode de livraisons`
--

DROP TABLE IF EXISTS `mode de livraisons`;
CREATE TABLE IF NOT EXISTS `mode de livraisons` (
  `ID-Livraisons` int(11) NOT NULL AUTO_INCREMENT,
  `Livraison à domicile` varchar(20) NOT NULL,
  `Livraison par post` varchar(20) NOT NULL,
  `Point de relai` varchar(20) NOT NULL,
  `Paiement` varchar(10) NOT NULL,
  PRIMARY KEY (`ID-Livraisons`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mode de livraisons`
--

INSERT INTO `mode de livraisons` (`ID-Livraisons`, `Livraison à domicile`, `Livraison par post`, `Point de relai`, `Paiement`) VALUES
(1, 'Brahimi Lena', '', 'Espa Care', 'Visa Card'),
(2, '', 'Ammerouche hayet', 'Espa Care', 'E-dinar'),
(3, 'Belkalem Ali', '', 'Espa Care', 'Cash'),
(4, '', '', 'Dahman Omra', 'cheque');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `Id-Produits` int(11) NOT NULL AUTO_INCREMENT,
  `Articles` varchar(10) NOT NULL,
  `Caratéristique Produits` text NOT NULL,
  `Categorie de produits` text NOT NULL,
  `Tarifs` varchar(5) NOT NULL,
  PRIMARY KEY (`Id-Produits`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`Id-Produits`, `Articles`, `Caratéristique Produits`, `Categorie de produits`, `Tarifs`) VALUES
(1, 'Gel Douche', 'Gel Douche Bio à l\'agréable parfum contient des composants doux qui permettent de garder votre peu souple et soyeuse.Il convient aux peaux sensible.Ph neutre pour la peau.\r\nMade in Tunisia.', 'Body Care', '30DT'),
(2, 'Lait coprs', 'Texture légère absorbation rapide, non gras, éclaircissant et hydratant, ingrédients naturels.\r\nMade in Tunisia.', 'Body Care', '45DT'),
(3, 'Scrub', 'Gommage aves des ingrédients naturels,corps intense, effet peau douce. Grain visiblement affiné, peau tonifié, lisse et douce.\r\nMade in Tunisia.', 'Body Care', '15DT'),
(4, 'BrumeBody', 'Enrichie à la monoï, non testés sur les animaux, sans parabène 100% bio.  \r\nMade in Tunisia', 'Body Care', '20DT'),
(5, 'Huile corp', 'Soin plaisir et absorbation rapide, 100% bio. Pour peaux normales et seches.\r\nMade in Tunisia.', 'Body Care', '40DT'),
(6, 'Serum', 'Un sérum qui travaillera en profondeur, pour ramener un équilibre au niveau de l\'épiderme, afin que celui ci retrouve élasticité, douceur et nutrition. Des principaux actifs bio seront utilisés dans la formulation du produit pour le rendre performant.\r\nMade in Tunisia. ', 'Skin Care', '35DT'),
(7, 'Créme Face', 'Notre crème est composée des actifs bio qui empêche la peau à sa déshydratation en reconstituant le film hydrolipidique, protection naturelles de la peau.\r\nMade in Tunisia.', 'Skin Care', '45DT');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
