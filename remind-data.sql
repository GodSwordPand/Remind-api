SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `remind`
--

--
-- Déchargement des données de la table `USER`
--

INSERT INTO `USER` (`ID_USER`, `PSEUDO`, `MAIL`, `PASSWORD`, `ROLES`, `DATE_CREATE`, `ACTIF`) VALUES
(1, 'azerty', 'azerty@test.fr', '$2y$10$T.2QezwvTftS5EEx6u5ehO3KqIMWkSeg4R3WFpal.nhQ25UvilsI.', NULL, '2021-03-26 08:23:00', 1),
(20, 'admin', 'admin@test.fr', '$2y$10$hU6kTC5gafcheRlCpUfG..yXrbOWU4gcqcuE24Y5kLx9UGnpN98xS', NULL, '2021-05-16 15:58:54', 1);

--
-- Déchargement des données de la table `PROFILE`
--

INSERT INTO `PROFILE` (`ID_PROFILE`, `LIBELLE`, `DATE_CREATE`, `ACTIF`) VALUES
(1, 'Kev1', '2021-03-25 08:46:33', 1),
(2, 'Mag', '2021-03-25 10:02:42', 1),
(3, 'lulu', '2021-04-01 15:02:33', 1),
(4, 'sinan', '2021-04-01 15:02:33', 1);

--
-- Déchargement des données de la table `ROLE`
--

INSERT INTO `ROLE` (`ID_ROLE`, `LIBELLE`) VALUES
('1', 'role_owner'),
('2', 'role_publisher'),
('3', 'role_commentator'),
('4', 'role_reader');

--
-- Déchargement des données de la table `APPARTENIR`
--

INSERT INTO `APPARTENIR` (`ID_ROLE`, `ID_USER`, `ID_PROFILE`) VALUES
('1', 1, 1),
('2', 20, 1);

--
-- Déchargement des données de la table `CATEGORIE`
--

INSERT INTO `CATEGORIE` (`ID_CATEGORIE`, `ID_PROFILE`, `LIBELLE`, `HEX_COLOR`, `DATE_CREATE`, `ACTIF`) VALUES
(1, 1, 'Cat tasty', 'EA753F', '2021-05-15 15:12:04', 1),
(2, 1, 'Bad CAT', '26E8BC', '2021-05-15 15:12:04', 1),
(5, 3, 'Cat #3', 'ddffdd', '2021-05-15 23:07:21', 1),
(6, 4, 'Cat #4', '26E8BC', '2021-05-15 23:07:21', 1);

--
-- Déchargement des données de la table `AUDIO`
--

INSERT INTO `AUDIO` (`ID_AUDIO`, `ID_CATEGORIE`, `ID_PROFILE`, `LIBELLE`, `URL`, `DESCRIPTION`, `DATE_CREATE`, `ACTIF`) VALUES
(1, 1, 1, 'YOYOYO', NULL, NULL, '2021-05-15 15:14:58', 1),
(2, 2, 1, 'Audio du futur', NULL, NULL, '2021-05-15 15:16:51', 1),
(3, 1, 1, 'HunterXHunter', NULL, NULL, '2021-05-15 15:16:51', 1),
(4, 2, 1, 'yayaya', NULL, NULL, '2021-05-15 15:16:51', 1),
(5, 1, 2, 'glub', NULL, NULL, '2021-05-15 15:16:51', 1);

--
-- Déchargement des données de la table `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`id`, `refresh_token`, `username`, `valid`) VALUES
(57, '22dc1617a790bb06cf8041be18087a7f9f8c2fd61f20c140409fd495288e71e8cc922ee2b2564ffcebe8f4e388a9b66230556a5fd13cc002d4b134f3a347f325', '1', '2021-06-20 10:13:52'),
(58, '4a9e7fdd93f754587a85f1b0bdd36b808a8a6d6e814cd76ac1a0ee64e5932c31496c8333b8ee67d871d44f4c1eb8e950ae5b213ea0d433b7e8518284a3a0647d', '1', '2021-06-20 12:52:46'),
(59, 'cd26d95b8720d141ab30a9bdcc2c8278d23e989e31d2480edb40a47cff32615a16e72dd9cd057984078b9c60d6eee56a49c470c14752f14e24bfe5f70a78189e', '1', '2021-06-20 12:54:33'),;


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
