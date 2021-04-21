-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 21 avr. 2021 à 17:40
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gfaphonesdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoire`
--

CREATE TABLE `accessoire` (
  `ID_Accessoire` int(10) UNSIGNED NOT NULL,
  `Reference` varchar(45) NOT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Quantite` int(11) NOT NULL,
  `Prix` varchar(6) NOT NULL,
  `Nom_Ac` varchar(45) DEFAULT NULL,
  `Brand_Ac` varchar(45) DEFAULT NULL,
  `ID_SmartPhone` int(10) UNSIGNED DEFAULT NULL,
  `IMG_AC` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `accessoire`
--

INSERT INTO `accessoire` (`ID_Accessoire`, `Reference`, `Color`, `Quantite`, `Prix`, `Nom_Ac`, `Brand_Ac`, `ID_SmartPhone`, `IMG_AC`) VALUES
(3, 'B2994SC07FT', NULL, 15, '2.200', 'PROTECTEUR D’ÉCRAN KSIX POUR NOKIA ', 'Ksix', NULL, 'https://www.wiki.tn/23151-large_mobi_default/protecteur-decran-ksix-pour-nokia-6.jpg'),
(4, '6941487202140', 'Noir', 699, '2.200', 'ECOUTEURS SANS FIL HUAWEI FREEBUDS PRO', 'HUAWEI', 2548, 'https://www.wiki.tn/61528-large_mobi_default/ecouteurs-sans-fil-huawei-freebuds-pro-noir.jpg'),
(5, '48808', 'Noir Rose', 69, '4.000', 'ACQUA GROOVE ADDICT STAR DANCE', 'ACQUA', NULL, 'https://www.wiki.tn/62289-large_mobi_default/ecouteur-groove-addict-series-stardance.jpg'),
(6, 'G12-BK', 'Noir', 420, '6.000', 'ECOUTEUR AVEC MICRO CELEBRAT G12', 'CELEBRAT', NULL, 'https://www.wiki.tn/57449-large_mobi_default/ecouteur-avec-micro-celebrat-g12-noir.jpg'),
(7, 'OK-900', 'Noir', 47, '8.000', 'CASQUE MICRO OAKORN', 'OAKORN', NULL, 'https://www.wiki.tn/56075-large_mobi_default/casque-micro-oakorn-.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

CREATE TABLE `promo` (
  `ID_Promo` int(11) NOT NULL,
  `ID_SmartPhone` int(10) UNSIGNED NOT NULL,
  `ID_Accessoire` int(10) UNSIGNED NOT NULL,
  `Name_P` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `promo`
--

INSERT INTO `promo` (`ID_Promo`, `ID_SmartPhone`, `ID_Accessoire`, `Name_P`) VALUES
(1, 3648, 4, 'Promo HUAWEI NOVA 7I + ECOUTEUR SANS FIL'),
(2, 5468, 5, 'Promo OPPO RENO 5 +  Ecouteur ACQUA GROOVE'),
(3, 7684, 7, 'Promo Sumsung Galaxy A51 + Casque OAKORN');

-- --------------------------------------------------------

--
-- Structure de la table `smartphone`
--

CREATE TABLE `smartphone` (
  `ID_SmartPhone` int(10) UNSIGNED NOT NULL,
  `Nom_SP` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Prix` varchar(9) NOT NULL,
  `Quantite` int(11) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Reference` varchar(45) DEFAULT NULL,
  `Ecran` varchar(45) DEFAULT NULL,
  `Processeur` varchar(45) DEFAULT NULL,
  `Systeme_Exploit` varchar(45) DEFAULT NULL,
  `Appareil_Photo` varchar(45) DEFAULT NULL,
  `Ram` varchar(45) DEFAULT NULL,
  `Stockage` varchar(45) DEFAULT NULL,
  `Batterie` varchar(45) DEFAULT NULL,
  `Double_Sim` tinyint(4) DEFAULT NULL,
  `IMG_SP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smartphone`
--

INSERT INTO `smartphone` (`ID_SmartPhone`, `Nom_SP`, `Brand`, `Prix`, `Quantite`, `Color`, `Reference`, `Ecran`, `Processeur`, `Systeme_Exploit`, `Appareil_Photo`, `Ram`, `Stockage`, `Batterie`, `Double_Sim`, `IMG_SP`) VALUES
(2548, 'HUAWEI Y9A', 'HUAWEI', '1.200.000', 15, 'Noir minuit', 'FRL-23', '\'6.63\"', 'Mediatek Helio G80 (12 nm)-Octa-core', 'Android 10, EMUI 10.1', '48 MP + 8 MP + 2 MP+ 2 MP / 16MP', '8G', '128G', '4300 mah', 1, 'https://www.wiki.tn/54566-large_mobi_default/huawei-y9a.jpg'),
(3648, 'HUAWEI NOVA 7I', 'HUAWEI', '1.320.000', 20, 'Noir minuit', 'HU-NOVA-7I', '6.4 IPS LCD\"', 'Octa-Core HUAWEI Kirin 810', 'Android 10', '48 MP + 8 MP + 2 MP+ 2 MP / 16MP', '8G', '128G', '4200 mah', 1, 'https://www.wiki.tn/51991-large_mobi_default/-huawei-nova-7i-noir-minuit.jpg'),
(5468, 'OPPO RENO', 'OPPO', '2.000.000', 13, 'Noir', 'BU-OPPO-RENO4-SBLACK', '6.4\" AMOLED', 'Qualcomm SM7125 Snapdragon 720G Octa-core', 'Android 10', '48 MP f/1.7 + 8 MP f/2.2 + 2 MP f/2.4 + 2 MP ', '8G', '128G', '4015 mah', 1, 'https://www.wiki.tn/54442-large_mobi_default/oppo-reno-4-noir.jpg'),
(7684, 'SAMSUNG GALAXY A51', 'SAMSUNG', '1.900.000', 2, 'Silver', 'SM-A515-SILVER MET', '6.5\" Super AMOLED', 'Exynos 9611 Octa-core', 'Android 10', '48.0 MP + 12.0 MP + 5.0 + 5.0 MP', '6G', '128G', '4000 mah', 1, 'https://www.wiki.tn/54666-large_mobi_default/samsung-galaxy-a-51-silver-metalic.jpg'),
(8896, 'IPHONE 11 PRO MAX', 'APPLE', '2.200.000', 5, 'Gris', 'apple-iphone-11-pro-max', '2688 x 1242 pixels', 'Puce A13', 'iOS 13', '12 MP + 12 MP + 12 MP, 12 MP', '4G', '64G', '3969 mah', 0, 'https://www.wiki.tn/56225-large_mobi_default/iphone-11-pro-max-64-go.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accessoire`
--
ALTER TABLE `accessoire`
  ADD PRIMARY KEY (`ID_Accessoire`),
  ADD UNIQUE KEY `ID_accessoire_UNIQUE` (`ID_Accessoire`),
  ADD UNIQUE KEY `ID_SmartPhone_UNIQUE` (`ID_SmartPhone`);

--
-- Index pour la table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`ID_Promo`),
  ADD UNIQUE KEY `ID_Promo_UNIQUE` (`ID_Promo`),
  ADD UNIQUE KEY `ID_SmartPhone_UNIQUE` (`ID_SmartPhone`),
  ADD UNIQUE KEY `ID_Accessoire_UNIQUE` (`ID_Accessoire`);

--
-- Index pour la table `smartphone`
--
ALTER TABLE `smartphone`
  ADD PRIMARY KEY (`ID_SmartPhone`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID_SmartPhone`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accessoire`
--
ALTER TABLE `accessoire`
  MODIFY `ID_Accessoire` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `promo`
--
ALTER TABLE `promo`
  MODIFY `ID_Promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `smartphone`
--
ALTER TABLE `smartphone`
  MODIFY `ID_SmartPhone` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8897;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accessoire`
--
ALTER TABLE `accessoire`
  ADD CONSTRAINT `ID_SmartPhone` FOREIGN KEY (`ID_SmartPhone`) REFERENCES `smartphone` (`ID_SmartPhone`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `FK_IDAccessoire` FOREIGN KEY (`ID_Accessoire`) REFERENCES `accessoire` (`ID_Accessoire`),
  ADD CONSTRAINT `FK_IDSmartPhone` FOREIGN KEY (`ID_SmartPhone`) REFERENCES `smartphone` (`ID_SmartPhone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
