-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 21 mars 2022 à 02:09
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : ` cosmetic_ecommerce`
--
CREATE DATABASE IF NOT EXISTS ` cosmetic_ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE ` cosmetic_ecommerce`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `prenom` varchar(254) DEFAULT NULL,
  `adresse` varchar(254) DEFAULT NULL,
  `telephone` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `pass` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nom`, `prenom`, `adresse`, `telephone`, `email`, `pass`) VALUES
(1, 'alami', 'adil', 'ibrahime khalil bloc 26 n 15', '0639691981', 'alami_adil@gmail.com', 'A12345678'),
(2, 'baqali', 'hamza', 'tanger balya rue 4 N34', '0621346578', 'hamza_baqali@gmail.com', 'A1122334455'),
(3, 'alami', 'rachid', 'ibrahime khalil bloc 26 n 15 tanger', '0639691981', 'alami_rachid@gmail.com', 'A12345678'),
(4, 'fadili', 'hamza', 'tanger balya rue 4 N34 tanger', '0621346578', 'hamza_fadili@gmail.com', 'A1122334455'),
(5, 'mahmoudi', 'smaail', 'rue moulaya youssef tanger ', '0623451298', 'mahmoudismaail@gmail.com', 'AB12345'),
(6, 'baqali', 'hamid', 'saqaya rue 2 n 87 assilh', '0734984507', 'hamid_baqali@gmail.com', 'A1122334455'),
(7, 'khalidi', 'brahim', 'mojame qatar bloc 13 n 65 titwan ', '0612349881', 'khalidi_brahim@gmail.com', '1122334455'),
(8, 'snousi', 'khoulod', ' mdina qdima rue 4 N34 assilah', '0621346578', 'snousi_khoulod@gmail.com', 'A1122334455'),
(9, 'mabrouki', 'zohiar', 'rue zarktouni N23 assilah', '0634978452', 'zouhiarmabrouki@gmail.com', 'A12345678'),
(10, 'kayssi', 'khadija', 'rue fadila N34', '0688978654', 'khadija_kayssi@gmail.com', 'A1111111');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idCommande` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `adresseLivraison` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `detailscommande`
--

CREATE TABLE `detailscommande` (
  `idCommande` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(11) NOT NULL,
  `libelle` varchar(254) DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `prix` decimal(8,0) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `libelle`, `description`, `prix`, `stock`, `image`) VALUES
(1, 'ANTI-AGING AND MOISTURIZING FACE CREAM', 'This rich, non-greasy cream protects you from the effects of pollution, hydrates your skin and helps you to fight against the signs of age and ageing. Its soft texture penetrates quickly and leaves your skin smooth and hydrated.', '390', 30, 'gelhydra.jpg'),
(2, '3-IN-1 EYE SERUM, ANTI-AGEING, ANTI-DARK CIRCLES, ANTI-PUFFINESS', 'This 3-in-1 eye serum has been formulated especially for the fragile, sensitive area around the eyes to help you fight more effectively against the signs of age, dark circles and puffiness. The skin around the eyes is ten times finer than the rest of the', '340', 15, 'serumcontour.jpg'),
(3, 'ALPHA-HYDROXY-ACIDES FACIAL CLEANSER', 'This face-cleaning gel with fruit acids deep cleans your skin without affecting the hydrolipidic membrane. The fruit acids (AHA) in the face-cleaning gel work miracles on your skin: they reduce the cohesion of dead cells, so they can be shed more easily ', '320', 28, 'acides.jpg'),
(4, '3-IN-1 GEL, FACE, BODY AND HAIR', 'This 3-in-1 cleaning gel has been formulated without sulfates to clean your skin and hair effectively without drying or irritating. Use it on the face, body and hair to leave your skin and hair perfectly clean.', '180', 0, '3en1.jpg'),
(5, 'AFTER SHAVE MOISTURE GEL', 'This After Shave Moisture Gel is a real cocktail of freshness for your thirsty skin.', '270', 80, 'rasage.jpg'),
(6, 'BEARD OIL', 'This beard oil, 100% natural, disciplines and nourishes your beard while doing good to your skin.', '240', 0, 'huilebarbe.jpg'),
(7, 'BEARD SHAMPOO', 'This Natural Beard Shampoo cleans, maintains and nourishes your beard while doing good for your skin.', '140', 100, 'shampbarbe.jpg'),
(8, 'BEARD SOAP', 'This 100% Natural and Organic Beard Soap, made from cold saponification, can be used directly on the skin as well as with a shaving brush.', '230', 100, 'savonbarbe.jpg'),
(9, 'OH MY BEARD KIT', 'Care for that beard!', '340', 50, 'kit-barbe.jpg'),
(10, 'RELAXING SOAP', 'This 100% Natural and Organic soap, resulting from cold saponification, can be used on the face and body.', '130', 120, 'savonrelaxantpsd.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idCommande`),
  ADD KEY `FK_association1` (`idClient`);

--
-- Index pour la table `detailscommande`
--
ALTER TABLE `detailscommande`
  ADD PRIMARY KEY (`idCommande`,`idProduit`),
  ADD KEY `FK_association3` (`idProduit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProduit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `idCommande` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_association1` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`);

--
-- Contraintes pour la table `detailscommande`
--
ALTER TABLE `detailscommande`
  ADD CONSTRAINT `FK_association2` FOREIGN KEY (`idCommande`) REFERENCES `commande` (`idCommande`),
  ADD CONSTRAINT `FK_association3` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`idProduit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
