-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 09 sep. 2025 à 09:25
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mikate_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int NOT NULL AUTO_INCREMENT,
  `montant` decimal(10,0) NOT NULL,
  `date_commande` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` varchar(100) NOT NULL,
  `adress_livraison` varchar(255) NOT NULL,
  `date_livraison` timestamp NOT NULL,
  `id_panier` int NOT NULL,
  PRIMARY KEY (`id_commande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
CREATE TABLE IF NOT EXISTS `paiement` (
  `id_paiement` int NOT NULL AUTO_INCREMENT,
  `statut` varchar(255) NOT NULL,
  `montant` decimal(10,0) NOT NULL,
  `id_transaction` int NOT NULL,
  `date_paiement` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_paiement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id_panier` int NOT NULL AUTO_INCREMENT,
  `quantite` decimal(10,0) NOT NULL,
  `id_produit` int NOT NULL,
  PRIMARY KEY (`id_panier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  `allergene` varchar(255) NOT NULL,
  `ingredients` varchar(255) NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom`, `description`, `prix`, `image`, `allergene`, `ingredients`) VALUES
(1, 'Mikaté', 'Petit beignet africain sucré, croustillant à l’extérieur et moelleux à l’intérieur, préparé à base de farine, levure et sucre, frit dans l’huile. À déguster chaud ou tiède.', 5, 'images/mes_produits/plat1.png', 'Gluten, Oeuf, Lait, Fruits à coque', 'Farine, Levure, Sucre, Sel, Huile'),
(2, 'Cari Poulet', 'Cari Poulet est un plat traditionnel réunionnais à base de morceaux de poulet mijotés avec des oignons, de l’ail, des tomates, du gingembre, du curcuma et des herbes. Servi avec du riz, il est à la fois savoureux, parfumé et réconfortant.', 12, 'imagesmes_produitsCari_poulet.png', 'Ail, Oignon, épices, Huile végétale', 'Poulet, Oignon, Ail, Gingembre, Tomates, Curcuma, Thym, Huile, Sel, Poivre'),
(3, 'Rougail Saucisse', 'Rougail Saucisse est un incontournable de la cuisine réunionnaise. Il se compose de saucisses mijotées avec des tomates, des oignons, de l’ail, du gingembre et des épices. Un plat généreux, plein de saveurs, servi avec du riz bien chaud.', 12, 'imagesmes_produits\rougail_saucisse.png', 'Ail, Oignon, épices', 'Saucisses fumées, Oignon, Ail, Tomates, Gingembre, Thym, Sel, Poivre, Curcuma, Huile'),
(4, 'Tiebou Diene', 'Plat emblématique du Sénégal composé de riz cuisiné dans une sauce tomate parfumée, accompagné de poisson et de légumes comme le chou, la carotte, le manioc ou l’aubergine. Un plat complet, riche en saveurs et en couleurs.', 14, 'imagesmes_produits	iebou_diene.png', 'Poisson, Gluten, épices', 'Riz, Poisson, Concentré de tomate, Oignon, Ail, Tomate fraîche, Carotte, Choux, Aubergine, Manioc, Piment frais, Sel, Poivre, Huile'),
(5, 'Riz à la viande (boeuf)', 'un plat mijoté aux saveurs africaines, composé de riz parfumé et de morceaux de viande tendre, cuisinés avec des épices, des légumes et une sauce tomate bien relevée. Un classique réconfortant et généreux.', 12, 'imagesmes_produits\riz_viande.png', 'Gluten, Oignon, ail, Soja', 'Riz, Viande, Oignon, Ail, Concentré de tomate, Tomate, Fraîche, Poivron, Thym, Laurier, Sel, Poivre'),
(6, 'Madesu + riz', 'Plat congolais à base de haricots mijotés dans une sauce tomate parfumée avec oignons, ail et épices. Riche, savoureux et nourrissant, il se déguste souvent avec du riz, du manioc ou du pain.', 10, 'imagesmes_produitsmadesu.png', 'Oignons, ail, Piment, Huile', 'Haricots rouges secs, Oignons, Ail, Tomates fraîches, Concentré de tomates, Huile, Sel, Poivre');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `mot_de_passe` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `role` enum('utilisateur','admin') DEFAULT 'utilisateur',
  PRIMARY KEY (`id_utilisateur`),
  UNIQUE KEY `pseudo` (`pseudo`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `pseudo`, `mot_de_passe`, `email`, `avatar`, `role`) VALUES
(4, 'cactus', 'martin', '', '123456', 'cactus@gmail.com', '', 'utilisateur'),
(2, 'koukadina', 'bettina', 'betti.admin', '123456', 'betti@gmail.com', '', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
