-- Base & encodage
CREATE DATABASE IF NOT EXISTS mikate_bdd
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
USE mikate_bdd;

-- (Optionnel dev) Nettoyage
DROP TABLE IF EXISTS paiement;
DROP TABLE IF EXISTS commande_item;
DROP TABLE IF EXISTS commande;
DROP TABLE IF EXISTS panier_item;
DROP TABLE IF EXISTS panier;
DROP TABLE IF EXISTS produit;
DROP TABLE IF EXISTS utilisateur;

-- Utilisateurs
CREATE TABLE utilisateur (
  id_utilisateur BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  nom            VARCHAR(50)  NOT NULL,
  prenom         VARCHAR(50)  NOT NULL,
  pseudo         VARCHAR(50)  NOT NULL,
  mot_de_passe   VARCHAR(255) NOT NULL, -- stocke un hash (bcrypt/argon2), pas du clair
  email          VARCHAR(191) NOT NULL, -- 191 pour index utf8mb4 safe
  avatar         VARCHAR(255) NULL,
  role           ENUM('utilisateur','admin') NOT NULL DEFAULT 'utilisateur',
  created_at     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_utilisateur),
  UNIQUE KEY uq_utilisateur_pseudo (pseudo),
  UNIQUE KEY uq_utilisateur_email  (email)
) ENGINE=InnoDB;

-- Produits
CREATE TABLE produit (
  id_produit   BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  nom          VARCHAR(100) NOT NULL,
  description  TEXT         NOT NULL,
  prix         DECIMAL(10,2) UNSIGNED NOT NULL,
  image        VARCHAR(255) NOT NULL,
  allergenes   TEXT NULL,
  ingredients  TEXT NULL,
  stock        INT UNSIGNED NOT NULL DEFAULT 0,
  actif        TINYINT(1) NOT NULL DEFAULT 1,
  created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_produit)
) ENGINE=InnoDB;

-- Panier (en-tête)
CREATE TABLE panier (
  id_panier      BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_utilisateur BIGINT UNSIGNED NOT NULL,
  statut         ENUM('ouvert','validé','abandonné') NOT NULL DEFAULT 'ouvert',
  created_at     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_panier),
  KEY idx_panier_utilisateur (id_utilisateur),
  CONSTRAINT fk_panier_utilisateur
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Lignes du panier
CREATE TABLE panier_item (
  id_panier_item BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_panier      BIGINT UNSIGNED NOT NULL,
  id_produit     BIGINT UNSIGNED NOT NULL,
  quantite       INT UNSIGNED NOT NULL,
  prix_unitaire  DECIMAL(10,2) UNSIGNED NOT NULL,
  PRIMARY KEY (id_panier_item),
  KEY idx_panier_item_panier (id_panier),
  KEY idx_panier_item_produit (id_produit),
  CONSTRAINT chk_panier_item_qte CHECK (quantite > 0),
  CONSTRAINT fk_panier_item_panier
    FOREIGN KEY (id_panier)  REFERENCES panier(id_panier)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_panier_item_produit
    FOREIGN KEY (id_produit) REFERENCES produit(id_produit)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Commandes (en-tête)
CREATE TABLE commande (
  id_commande     BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_utilisateur  BIGINT UNSIGNED NOT NULL,
  id_panier       BIGINT UNSIGNED NULL, -- source de la commande (optionnel)
  montant_total   DECIMAL(10,2) UNSIGNED NOT NULL,
  date_commande   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  statut          ENUM('en_attente','payée','expédiée','livrée','annulée') NOT NULL DEFAULT 'en_attente',
  adresse_livraison VARCHAR(255) NOT NULL,
  date_livraison  DATETIME NULL,
  created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_commande),
  KEY idx_commande_utilisateur (id_utilisateur),
  KEY idx_commande_panier      (id_panier),
  CONSTRAINT fk_commande_utilisateur
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
    ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_commande_panier
    FOREIGN KEY (id_panier) REFERENCES panier(id_panier)
    ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT chk_commande_montant CHECK (montant_total >= 0)
) ENGINE=InnoDB;

-- Lignes de commande (snapshot des prix/quantités au checkout)
CREATE TABLE commande_item (
  id_commande_item BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_commande      BIGINT UNSIGNED NOT NULL,
  id_produit       BIGINT UNSIGNED NOT NULL,
  quantite         INT UNSIGNED NOT NULL,
  prix_unitaire    DECIMAL(10,2) UNSIGNED NOT NULL,
  PRIMARY KEY (id_commande_item),
  KEY idx_commande_item_commande (id_commande),
  KEY idx_commande_item_produit  (id_produit),
  CONSTRAINT chk_commande_item_qte CHECK (quantite > 0),
  CONSTRAINT fk_commande_item_commande
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_commande_item_produit
    FOREIGN KEY (id_produit)  REFERENCES produit(id_produit)
    ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Paiements
CREATE TABLE paiement (
  id_paiement   BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_commande   BIGINT UNSIGNED NOT NULL,
  statut        ENUM('en_attente','réussi','échoué','remboursé') NOT NULL DEFAULT 'en_attente',
  montant       DECIMAL(10,2) UNSIGNED NOT NULL,
  id_transaction VARCHAR(100) NOT NULL, -- ID du PSP (Stripe/PayPal/etc.)
  date_paiement TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_paiement),
  KEY idx_paiement_commande (id_commande),
  CONSTRAINT fk_paiement_commande
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Démo produit
INSERT INTO produit (nom, description, prix, image, allergene, ingredients)
VALUES (
  'Mikaté',
  'Petit beignet africain sucré, croustillant à l’extérieur et moelleux à l’intérieur, préparé à base de farine, levure et sucre, frit dans l’huile. À déguster chaud ou tiède.',
  5.00,
  'images/mes_produits/plat1.png',
  'Gluten, Oeuf, Lait, Fruits à coque',
  'Farine, Levure, Sucre, Sel, Huile'
);

INSERT INTO produit (nom, description, prix, image, allergene, ingredients)
VALUES (
  'Cari Poulet',
  'Cari Poulet est un plat traditionnel réunionnais à base de morceaux de poulet mijotés avec des oignons, de l’ail, des tomates, du gingembre, du curcuma et des herbes. Servi avec du riz, il est à la fois savoureux, parfumé et réconfortant.',
  12.00,
  'images\mes_produits\Cari_poulet.png',
  'Ail, Oignon, épices, Huile végétale',
  'Poulet, Oignon, Ail, Gingembre, Tomates, Curcuma, Thym, Huile, Sel, Poivre'
);

INSERT INTO produit (nom, description, prix, image, allergene, ingredients)
VALUES (
  'Rougail Saucisse',
  'Rougail Saucisse est un incontournable de la cuisine réunionnaise. Il se compose de saucisses mijotées avec des tomates, des oignons, de l’ail, du gingembre et des épices. Un plat généreux, plein de saveurs, servi avec du riz bien chaud.',
  12.00,
  'images\mes_produits\rougail_saucisse.png',
  'Ail, Oignon, épices',
  'Saucisses fumées, Oignon, Ail, Tomates, Gingembre, Thym, Sel, Poivre, Curcuma, Huile'
);

INSERT INTO produit (nom, description, prix, image, allergene, ingredients)
VALUES (
  'Tiebou Diene',
  'Plat emblématique du Sénégal composé de riz cuisiné dans une sauce tomate parfumée, accompagné de poisson et de légumes comme le chou, la carotte, le manioc ou l’aubergine. Un plat complet, riche en saveurs et en couleurs.',
  14.00,
  'images\mes_produits\tiebou_diene.png',
  'Poisson, Gluten, épices',
  'Riz, Poisson, Concentré de tomate, Oignon, Ail, Tomate fraîche, Carotte, Choux, Aubergine, Manioc, Piment frais, Sel, Poivre, Huile'
);

INSERT INTO produit (nom, description, prix, image, allergene, ingredients)
VALUES (
  'Riz à la viande (boeuf)',
  'un plat mijoté aux saveurs africaines, composé de riz parfumé et de morceaux de viande tendre, cuisinés avec des épices, des légumes et une sauce tomate bien relevée. Un classique réconfortant et généreux.',
  12.00,
  'images\mes_produits\riz_viande.png',
  'Gluten, Oignon, ail, Soja',
  'Riz, Viande, Oignon, Ail, Concentré de tomate, Tomate, Fraîche, Poivron, Thym, Laurier, Sel, Poivre'
);

INSERT INTO produit (nom, description, prix, image, allergene, ingredients)
VALUES (
  'Madesu + riz',
  'Plat congolais à base de haricots mijotés dans une sauce tomate parfumée avec oignons, ail et épices. Riche, savoureux et nourrissant, il se déguste souvent avec du riz, du manioc ou du pain.',
  10.00,
  'images\mes_produits\madesu.png',
  'Oignons, ail, Piment, Huile',
  'Haricots rouges secs, Oignons, Ail, Tomates fraîches, Concentré de tomates, Huile, Sel, Poivre'
);

