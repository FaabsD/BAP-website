-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 dec 2020 om 13:28
-- Serverversie: 10.4.8-MariaDB
-- PHP-versie: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verzameling`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pressed_pennies`
--

CREATE TABLE `pressed_pennies` (
  `id` int(11) NOT NULL,
  `Plaats` text NOT NULL,
  `Serie` text NOT NULL,
  `Omschrijving` text NOT NULL,
  `Positie` text NOT NULL,
  `Alfabet` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `pressed_pennies`
--

INSERT INTO `pressed_pennies` (`id`, `Plaats`, `Serie`, `Omschrijving`, `Positie`, `Alfabet`) VALUES
(1, 'Alkmaar', 'Stedelijk Museum', 'Toren', 'Staand', 'A'),
(2, 'Alkmaar', 'Stedelijk Museum', 'Mannen die kogels? dragen', 'Liggend', 'A'),
(3, 'Amsterdam', 'Olympisch stadion', 'Logo Olympisch Stadion', 'Staand', 'A'),
(4, 'Amsterdam', 'NEMO', 'NEMO Logo', 'Liggend', 'A'),
(5, 'Amersfoort', 'Dierenpark Amersfoort', 'T-rex', 'Staand', 'A'),
(6, 'Amersfoort', 'Dierenpark Amersfoort', 'Olifant', 'Liggend', 'A'),
(7, 'Amersfoort', 'Dierenpark Amersfoort', 'Tijger', 'Staand', 'A'),
(8, 'Amsterdam', 'Johan Cruijff Arena', 'Stadion', 'Liggend', 'A'),
(9, 'Amsterdam', 'Johan Cruijff Arena', 'Beker', 'Staand', 'A'),
(10, 'Amsterdam', 'Johan Cruijff Arena', 'Voetbal', 'Liggend', 'A'),
(11, 'Amsterdam', 'Bloemenmarkt', 'Wapen van Amsterdam', 'Liggend', 'A'),
(12, 'Amsterdam', 'Bloemenmarkt', 'Amsterdamse huizen', 'Liggend', 'A'),
(13, 'Amsterdam', 'Bloemenmarkt', 'Dam Square', 'Liggend', 'A'),
(14, 'Amsterdam', 'Bloemenmarkt', 'Klompen', 'Liggend', 'A'),
(15, 'Amsterdam', 'Bloemenmarkt', 'Kissing couple', 'Staand', 'A'),
(16, 'Amsterdam', 'Bloemenmarkt', 'Amsterdamse huizen 2', 'Liggend', 'A'),
(17, 'Amsterdam', 'Souvenirshop Kalverstraat 78', 'Logo Amsterdam', 'Staand', 'A'),
(18, 'Amsterdam', 'Souvenirshop Kalverstraat 78', 'Paleis op de Dam', 'Liggend', 'A'),
(19, 'Amsterdam', 'Souvenirshop Kalverstraat 78', 'Monument op de Dam', 'Staand', 'A'),
(20, 'Amsterdam', 'Port of Amsterdam', 'Port of Amsterdam 1', 'Liggend', 'A'),
(21, 'Amsterdam', 'Port of Amsterdam', 'Port of Amsterdam 2', 'Liggend', 'A'),
(22, 'Amsterdam', 'Port of Amsterdam', 'Port of Amsterdam 3', 'Liggend', 'A'),
(23, 'Amsterdam', 'Artis Ingang', 'Artis de Partis (mascotte) ', 'Staand', 'A'),
(24, 'Amsterdam', 'Artis Ingang', 'Planetarium restaurant', 'Liggend', 'A'),
(25, 'Amsterdam', 'Artis Ingang', 'Gorilla', 'Staand', 'A'),
(26, 'Amsterdam', 'Artis Olifanten', 'Olifant', 'Staand', 'A'),
(27, 'Amsterdam', 'Artis Olifanten', 'Zebra', 'Liggend', 'A'),
(28, 'Amsterdam', 'Artis Olifanten', 'Giraf', 'Staand', 'A'),
(29, 'Amsterdam', 'Artis Zeeleeuwen', 'Zeeleeuw', 'Liggend', 'A'),
(30, 'Amsterdam', 'Artis Zeeleeuwen', 'Rode panda', 'Staand', 'A'),
(31, 'Amsterdam', 'Artis Zeeleeuwen', 'Vlinder', 'Liggend', 'A'),
(32, 'Amsterdam', 'A\'DAM TOWER', 'Amsterdam A\'DAM TOWER', 'Liggend', 'A'),
(33, 'Amsterdam', 'A\'DAM TOWER', 'A\'DAM TOWER Gebouw', 'Staand', 'A'),
(34, 'Amsterdam', 'A\'DAM TOWER', 'Over The Edge (schommel)', 'Liggend', 'A'),
(35, 'Amsterdam', 'Erotiek Museum', 'Casa Rosso (olifant)', 'Staand', 'A'),
(36, 'Amsterdam', 'Erotiek Museum', 'Erotiek Museum Logo', 'Liggend', 'A'),
(37, 'Amsterdam', 'Erotiek Museum', 'Bananen Bar', 'Staand', 'A'),
(38, 'Amsterdam', 'Boswijk', 'Centraal station Amsterdam', 'Liggend', 'A'),
(39, 'Amsterdam', 'Boswijk', 'Amsterdamse gebouwen', 'Liggend', 'A'),
(40, 'Amsterdam', 'Boswijk', 'Fiets op brug', 'Liggend', 'A'),
(41, 'Amsterdam', 'Amsterdam Experience', 'Wapen van Amsterdam', 'Liggend', 'A'),
(42, 'Amsterdam', 'Amsterdam Experience', 'Redlight District', 'Liggend', 'A'),
(43, 'Amsterdam', 'Amsterdam Experience', 'Amsterdam Canals', 'Liggend', 'A'),
(44, 'Apeldoorn', 'Apenheul 1b', 'Doodshoofdaap', 'Liggend', 'A'),
(45, 'Apeldoorn', 'Apenheul 1b', 'Gorilla', 'Liggend', 'A'),
(46, 'Apeldoorn', 'Apenheul 1b', 'Vijf aap soorten ', 'Liggend', 'A'),
(47, 'Apeldoorn', 'Apenheul 1c', 'L\'hoest Meerkat?', 'Liggend', 'A'),
(48, 'Apeldoorn', 'Apenheul 1c', 'Orang-oetan', 'Liggend', 'A'),
(49, 'Apeldoorn', 'Apenheul 1c', 'Vijf aap soorten', 'Liggend', 'A'),
(50, 'Apeldoorn', 'Apenheul 1d', 'Doodshoofdaap', 'Liggend', 'A'),
(51, 'Apeldoorn', 'Apenheul 1d', 'Vijf aap soorten', 'Liggend', 'A'),
(52, 'Apeldoorn', 'Apenheul 1d', 'Ringstaart Maki', 'Liggend', 'A'),
(53, 'Arnhem', 'Arnhem', 'John Frostbrug', 'Liggend', 'A'),
(54, 'Arnhem', 'Arnhem', 'FOR VALOUR ', 'Liggend', 'A'),
(55, 'Arnhem', 'Arnhem', 'Airborne Museum Hartenstein ', 'Liggend', 'A'),
(56, 'Emmen', 'Veenpark Barger-Compascuum', 'Berg', 'Liggend', 'E'),
(57, 'Emmen', 'Veenpark Barger-Compascuum', 'Stoom trein', 'Staand', 'E'),
(58, 'Emmen', 'Veenpark Barger-Compascuum', 'Huis met twee kinderen', 'Liggend', 'E'),
(59, 'Anna Paulowna', 'Landgoed Hoenderdaell', 'Landgoed Hoenderdaell', 'Liggend', 'A'),
(60, 'Arnhem', 'Eusebiuskerk', 'Eusebiuskerk', 'Liggend', 'A'),
(61, 'Bergen aan Zee', ' Zee Aquarium', 'Zee Aquarium Bergen aan Zee logo', 'Liggend', 'B'),
(62, 'Biddinghuizen', 'Walibi Holland', 'Walibi World (oud)', 'Staand', 'B'),
(63, 'Bellingwolde', 'Kleindierpark', 'Capybara', 'Staand', 'B'),
(64, 'Bellingwolde', 'Kleindierpark', 'Vogel, Eekhoorn & Zeehond', 'Liggend', 'B'),
(65, 'Bellingwolde', 'Kleindierpark', 'Stokstaartjes', 'Staand', 'B'),
(66, 'Berg en Dal', 'Amusementspark Tivoli', 'Logo Tivoli', 'Liggend', 'B'),
(67, 'Berg en Dal', 'Amusementspark Tivoli', 'Jongen & Meisje', 'Staand', 'B'),
(68, 'Berg en Dal', 'Amusementspark Tivoli', 'Achtbaan', 'Liggend', 'B'),
(69, 'Best', 'BestZOO', 'Gier', 'Liggend', 'B'),
(70, 'Best', 'BestZOO', 'Luipaard', 'Staand', 'B'),
(71, 'Best', 'BestZOO', 'Doodshoofdaap met Jong', 'Liggend', 'B'),
(72, 'Borger', 'Hunebedcentrum', 'Mammoet', 'Liggend', 'B'),
(73, 'Borger', 'Hunebedcentrum', 'Pot', 'Staand', 'B'),
(74, 'Borger', 'Hunebedcentrum', 'Hunebedden', 'Liggend', 'B'),
(75, 'Broek op Langedijk', 'Museum Broeker Veiling', 'Museum Broeker Veiling', 'Liggend', 'B'),
(76, 'Broek op Langedijk', 'Museum Broeker Veiling', 'Ik ben super Kool', 'Liggend', 'B'),
(77, 'Broek op Langedijk', 'Museum Broeker Veiling', 'Boot', 'Liggend', 'B'),
(78, 'Born', 'Kasteelpark Born', 'Uil', 'Liggend', 'B'),
(79, 'Arnhem', 'Nederlands Watermuseum', 'Geraakt door water', 'Liggend', 'A'),
(80, 'Texel', 'De Koog', 'Vuurtoren (oud)', 'Liggend', 'T'),
(81, 'Amsterdam', 'Centraal station Amsterdam', 'Centraal station Amsterdam', 'Liggend', 'A'),
(82, 'Texel', 'De Koog', 'Zeehonden', 'Liggend', 'T'),
(83, 'Texel', 'De Koog', 'Vuurtoren', 'Staand', 'T'),
(84, 'Texel', 'De Koog', 'Vuurtoren', 'Liggend', 'T'),
(85, 'Texel', 'De Koog Souvenirshop', 'Zeehonden', 'Liggend', 'T'),
(86, 'Texel', 'De Koog Souvenirshop', 'Vuurtoren dichtbij', 'Staand', 'T'),
(87, 'Texel', 'De Koog Souvenirshop', 'Cruiseschip', 'Liggend', 'T'),
(88, 'Texel', 'Ecomare', 'Dolfijn', 'Liggend', 'T'),
(89, 'Texel', 'Ecomare', 'Bruinvis', 'Liggend', 'T'),
(90, 'Texel', 'Ecomare', 'Zeehond', 'Liggend', 'T'),
(91, 'Texel', 'Maritiem Museum', 'Schip', 'Staand', 'T'),
(92, 'Texel', 'Maritiem Museum', 'De Traanroeier', 'Staand', 'T'),
(93, 'Texel', 'Maritiem Museum', 'Vereenigde Oostindische Compagnie(logo)', 'Staand', 'T'),
(94, 'Texel', 'Juttersmuseum Flora, De Koog', 'Reddingsboei', 'Liggend', 'T'),
(95, 'Texel', 'Juttersmuseum Flora, De Koog', 'Groeten van Texel', 'Liggend', 'T'),
(96, 'Texel', 'Juttersmuseum Flora, De Koog', 'Man op fiets', 'Liggend', 'T'),
(97, 'Delft', 'Delft', 'Oostpoort', 'Staand', 'D'),
(98, 'Delft', 'Delft', 'Meisje met de parel', 'Staand', 'D'),
(99, 'Delft', 'Delft', 'Stadhuis', 'Staand', 'D'),
(100, 'Delft', 'Delft', 'Stadhuis', 'Liggend', 'D'),
(101, 'Delft', 'Delft', 'Nieuwe Kerk', 'Staand', 'D'),
(102, 'Delft', 'Delft', 'Oostpoort', 'Liggend', 'D'),
(103, 'Delft', 'Botanische Tuin, TU Delft', 'TU Delft', 'Liggend', 'D'),
(104, 'Delft', 'Botanische Tuin, TU Delft', 'Plant', 'Liggend', 'D'),
(105, 'Delft', 'Botanische Tuin, TU Delft', 'Botanische Tuin', 'Liggend', 'D'),
(106, 'Den Helder', 'Attractiepark Cape Holland', 'Kapitein', 'Liggend', 'D'),
(107, 'Den Helder', 'Attractiepark Cape Holland', 'Ship', 'Staand', 'D'),
(108, 'Den Helder', 'Attractiepark Cape Holland', 'Kapitein', 'Liggend', 'D'),
(109, 'Den Helder', 'Fort Kijkduin', 'Fort Kijkduin', 'Liggend', 'D'),
(110, 'Den Helder', 'Fort Kijkduin', 'Haai', 'Liggend', 'D'),
(111, 'Den Helder', 'Fort Kijkduin', 'Kanon', 'Liggend', 'D'),
(112, 'Den Oever', 'Afsluitdijk', 'Zeeleuw', 'Liggend', 'D'),
(113, 'Den Oever', 'Afsluitdijk', 'Gebouw', 'Staand', 'D'),
(114, 'Den Oever', 'Afsluitdijk', 'Afsluitdijk', 'Liggend', 'D'),
(115, 'Deventer', 'Deventer', 'Hanze stad Deventer', 'Staand', 'D'),
(116, 'Deventer', 'Deventer', 'De stad in landschap', 'Liggend', 'D'),
(117, 'Deventer', 'Deventer', 'De stad in portret', 'Staand', 'D'),
(118, 'Eindhoven', 'PSV', 'Eendracht Maakt Macht + Logo', 'Liggend', 'E'),
(119, 'Eindhoven', 'PSV', 'Phoxy (kinder mascotte)', 'Staand', 'E'),
(120, 'Eindhoven', 'PSV', 'Philips Stadion', 'Liggend', 'E'),
(121, 'Emmen', 'Wildlands', 'Baviaan', 'Staand', 'E'),
(122, 'Emmen', 'Wildlands', 'Baviaan & Nijlpaard', 'Staand', 'E'),
(123, 'Emmen', 'Wildlands', 'Nijlpaard', 'Staand', 'E'),
(124, 'Emmen', 'Wildlands', 'Beer', 'Liggend', 'E'),
(125, 'Emmen', 'Wildlands', 'Zeehond', 'Liggend', 'E'),
(126, 'Emmen', 'Wildlands', 'Pinguïns', 'Liggend', 'E'),
(127, 'Emmen', 'Wildlands', 'Ijsbeer', 'Liggend', 'E'),
(128, 'Emmen', 'Wildlands', 'Giraf', 'Staand', 'E'),
(129, 'Emmen', 'Wildlands', 'Wildlands logo', 'Liggend', 'E'),
(130, 'Enkhuizen', 'VVV', 'Vis verkoopster', 'Staand', 'E'),
(131, 'Enkhuizen', 'VVV', 'Botter (boot)', 'Liggend', 'E'),
(132, 'Enkhuizen', 'VVV', 'Drommedaris', 'Staand', 'E'),
(133, 'Enschede', 'Dinopark vliegveld Twente ', 'Stegosaurus', 'Liggend', 'E'),
(134, 'Enschede', 'Dinopark vliegveld Twente', 'Triceratops', 'Liggend', 'E'),
(135, 'Enschede', 'Dinopark vliegveld Twente', 'T-Rex', 'Liggend', 'E'),
(136, 'Garderen', 'Zandscupturen 2018', 'Rembrandt van Rijn', 'Staand', 'G'),
(137, 'Garderen', 'Zandscupturen 2018', 'Het Melkmeisje', 'Staand', 'G'),
(138, 'Garderen', 'Zandscupturen 2018', 'Meisje met de parel', 'Staand', 'G'),
(139, 'Garderen', 'Zandscupturen 2019', 'Gebouwen', 'Staand', 'G'),
(140, 'Garderen', 'Zandscupturen 2019', 'Man in Woestijn', 'Liggend', 'G'),
(141, 'Garderen', 'Zandscupturen 2019', 'Willem', 'Staand', 'G'),
(142, 'Giethoorn', 'Giethoorn', 'Bruggen', 'Liggend', 'G'),
(143, 'Giethoorn', 'Giethoorn', 'Boot', 'Liggend', 'G'),
(144, 'Giethoorn', 'Giethoorn', 'Brug', 'Liggend', 'G'),
(145, 'Gorinchem', 'Souvenirbeurs', 'Rembrandt', 'Liggend', 'G'),
(146, 'Haarlemmermeer', 'Schiphol (oud)', 'Planes plaza embleem', 'Liggend', 'H'),
(147, 'Haarlemmermeer', 'Schiphol (oud)', 'Vliegtuig', 'Liggend', 'H'),
(148, 'Haarlemmermeer', 'Schiphol', 'Fokker 100', 'Liggend', 'H'),
(149, 'Haarlemmermeer', 'Schiphol', 'Luchtverkeerstoren', 'Staand', 'H'),
(150, 'Haarlemmermeer', 'Schiphol', 'Schiphol Holland + vliegtuig', 'Liggend', 'H'),
(151, 'Haarlemmermeer', 'Spottersplaats Schiphol', 'Vliegtuig van voren', 'Liggend', 'H'),
(152, 'Haarlemmermeer', 'Spottersplaats Schiphol', 'Landend vliegtuig', 'Liggend', 'H'),
(153, 'Haarlemmermeer', 'Spottersplaats Schiphol', 'Vliegtuig met luchtverkeerstoren ', 'Liggend', 'H'),
(154, 'Haarlemmermeer', 'De Cruquius', 'Museum de Cruquius', 'Liggend', 'H'),
(155, 'Haarlemmermeer', 'De Cruquius', 'Museum de Cruquius (Goud)', 'Liggend', 'H'),
(156, 'Haarzuilens', 'Kasteel de Haar', 'Kasteel de Haar', 'Liggend', 'H'),
(157, 'Haarzuilens', 'Kasteel de Haar', 'Prins & Princess ', 'Staand', 'H'),
(158, 'Harderwijk', 'Dolfinarium', 'Zeehond', 'Staand', 'H'),
(159, 'Harderwijk', 'Dolfinarium', 'Walrus', 'Staand', 'H'),
(160, 'Harderwijk', 'Dolfinarium', 'Dolfijn', 'Staand', 'H'),
(161, 'Harderwijk', 'Dolfinarium 2', 'Zeehond', 'Liggend', 'H'),
(162, 'Harderwijk', 'Dolfinarium 2', 'Dolfijn', 'Staand', 'H'),
(163, 'Harderwijk', 'Dolfinarium 2', 'Dolfijn', 'Liggend', 'H'),
(164, 'Harderwijk', 'Dolfinarium 3', 'Dolfijn', 'Liggend', 'H'),
(165, 'Harderwijk', 'Dolfinarium 3', 'Walrus', 'Liggend', 'H'),
(166, 'Harderwijk', 'Dolfinarium 3', 'Pijlstaartrog', 'Liggend', 'H'),
(167, 'Harderwijk', 'Dolfinarium (oud)', 'Haai', 'Liggend', 'H'),
(168, 'Harderwijk', 'Dolfinarium (oud)', 'Dolfinarium Harderwijk + Dolfijn', 'Liggend', 'H'),
(169, 'Hengelo', 'Attractiepark de Waarbeek', 'de Waarbeek logo', 'Liggend', 'H'),
(170, 'Hengelo', 'Attractiepark de Waarbeek', 'Achtbaan', 'Staand', 'H'),
(171, 'Hengelo', 'Attractiepark de Waarbeek', 'Man & Clown', 'Liggend', 'H'),
(172, 'Hilvarenbeek', 'Safaripark Beekse Bergen', 'Adelaar', 'Liggend', 'H'),
(173, 'Hilvarenbeek', 'Safaripark Beekse Bergen', 'Olifant in pak', 'Staand', 'H'),
(174, 'Hilvarenbeek', 'Safaripark Beekse Bergen', 'Tijger', 'Liggend', 'H'),
(175, 'Hilvarenbeek', 'Safaripark Beekse Bergen (H0015)', 'Olifant', 'Liggend', 'H'),
(176, 'Hilvarenbeek', 'Safaripark Beekse Bergen (H0015)', 'Giraffe', 'Liggend', 'H'),
(177, 'Hilvarenbeek', 'Safaripark Beekse Bergen (H0015)', 'Leeuw', 'Liggend', 'H'),
(178, 'Hollum', 'Ameland', 'Zeehond', 'Liggend', 'H'),
(179, 'Hollum', 'Ameland', 'Vuurtoren', 'Staand', 'H'),
(180, 'Hulst', 'Vestrock', '10 jaar + leuwenkop', 'Liggend', 'H'),
(181, 'Ijmuiden', 'Ijmuiden', 'Vuurtoren', 'Staand', 'I'),
(182, 'Ijmuiden', 'Ijmuiden', 'Zeeleeuw', 'Liggend', 'I'),
(183, 'Ijmuiden', 'Ijmuiden', 'Molen + Holland', 'Staand', 'I'),
(184, 'Kaatsheuvel', 'de Efteling 1a', 'De vliegende Hollander', 'Staand', 'K'),
(185, 'Kaatsheuvel', 'de Efteling 1a', 'Efteling logo + wereld vol wonderen', 'Liggend', 'K'),
(186, 'Kaatsheuvel', 'de Efteling 1a', 'Roodkapje', 'Staand', 'K'),
(187, 'Kaatsheuvel', 'de Efteling 1c', 'Lange nek', 'Staand', 'K'),
(188, 'Kaatsheuvel', 'de Efteling 1c', 'Torentjes', 'Liggend', 'K'),
(189, 'Kaatsheuvel', 'de Efteling 1c', 'Sprookjesbos', 'Staand', 'K'),
(190, 'Kaatsheuvel', 'de Efteling 1d', 'Game gallery, twee vissen', 'Liggend', 'K'),
(191, 'Kaatsheuvel', 'de Efteling 1d', 'Game gallery, draak', 'Liggend', 'K'),
(192, 'Kaatsheuvel', 'de Efteling 1d', 'Game gallery, zeemeermin', 'Liggend', 'K'),
(193, 'Kaatsheuvel', 'de Efteling 1e', 'Vliegend tapijt', 'Staand', 'K'),
(194, 'Kaatsheuvel', 'de Efteling 1e', 'Huis van Hans & Grietje', 'Liggend', 'K'),
(195, 'Kaatsheuvel', 'de Efteling (oud)', 'Carnaval festival', 'Liggend', 'K'),
(196, 'Kaatsheuvel', 'de Efteling (oud)', 'Koning Midas', 'Staand', 'K'),
(197, 'Kaatsheuvel', 'de Efteling (oud)', 'Efteling logo + wereld vol wonderen', 'Liggend', 'K'),
(198, 'Kaatsheuvel', 'de Efteling (oud) 1', 'Vogel Rok', 'Liggend', 'K'),
(199, 'Kaatsheuvel', 'de Efteling (oud) 1', 'Efteling logo + wereld vol wonderen', 'Liggend', 'K'),
(200, 'Kaatsheuvel', 'de Efteling (oud) 1', 'Carnaval festival', 'Liggend', 'K'),
(201, 'Kemperland', 'Roompot beach resort', 'Roompot vakanties logo', 'Liggend', 'K'),
(202, 'Kemperland', 'Roompot beach resort', 'Koos Konijn', 'Staand', 'K'),
(203, 'Kemperland', 'Roompot beach resort', 'Koos Konijn', 'Liggend', 'K'),
(204, 'Kerkrade', 'Gaia Park 2', 'Haas', 'Liggend', 'K'),
(205, 'Kerkrade', 'Gaia Park 2', 'Wilde honden', 'Staand', 'K'),
(206, 'Kerkrade', 'Gaia Park 2', 'Giraf & aap', 'Liggend', 'K'),
(207, 'Alkmaar', 'Kermis Uw vermaak', 'Draaimolen', 'Liggend', 'A'),
(208, 'Alkmaar', 'Kermis Uw vermaak', 'Reuzenrad', 'Staand', 'A'),
(209, 'Alkmaar', 'Kermis Uw vermaak', 'Ballen gooien', 'Liggend', 'A'),
(210, 'Kinderdijk', 'Kinderdijk 1', 'Wisboomgemaal', 'Liggend', 'K'),
(211, 'Kinderdijk', 'Kinderdijk 1', 'Molens', 'Liggend', 'K'),
(212, 'Kinderdijk', 'Kinderdijk 1', 'Wisboomgemaal', 'Liggend', 'K'),
(213, 'Kinderdijk', 'Kinderdijk 1a', 'Klompen', 'Liggend', 'K'),
(214, 'Kinderdijk', 'Kinderdijk 1a', 'Molen', 'Staand', 'K'),
(215, 'Kinderdijk', 'Kinderdijk 1a', 'Molens', 'Liggend', 'K'),
(216, 'Kinderdijk', 'World Heritage', 'Molens', 'Liggend', 'K'),
(217, 'Kinderdijk', 'World Heritage', 'Molen', 'Liggend', 'K'),
(218, 'Kinderdijk', 'World Heritage', 'Molen met bootje', 'Liggend', 'K'),
(219, 'Leek', 'Nienoord', 'Landgoed vol verrassingen', 'Liggend', 'L'),
(220, 'Leek', 'Nienoord', 'Nienoord Spoor', 'Staand', 'L'),
(221, 'Leeuwarden', 'V.oldehove', 'Wapen van Leeuwarden', 'Staand', 'L'),
(222, 'Leeuwarden', 'V.oldehove', 'Wapen van Leeuwarden', 'Liggend', 'L'),
(223, 'Leeuwarden', 'V.oldehove', 'De toren van Oldehove', 'Staand', 'L'),
(224, 'Leeuwarden', 'The Saint', 'Saint', 'Liggend', 'L'),
(225, 'Leeuwarden', 'The Saint', 'Het Jacobspad', 'Staand', 'L'),
(226, 'Leeuwarden', 'The Saint', 'Blokhuispoort', 'Liggend', 'L'),
(227, 'Leeuwarden', 'Aqua Zoo', 'Krokodil', 'Liggend', 'L'),
(228, 'Leeuwarden', 'Aqua Zoo', 'Otter', 'Liggend', 'L'),
(229, 'Leeuwarden', 'Aqua Zoo', 'Ijsbeer', 'Liggend', 'L'),
(230, 'Lelystad', 'Aviodrome (oud)', 'Vliegtuig', 'Liggend', 'L'),
(231, 'Lelystad', 'Aviodrome (oud)', 'Fokker Spin', 'Liggend', 'L'),
(232, 'Lelystad', 'Aviodrome (oud)', 'Aviodrome logo', 'Liggend', 'L'),
(233, 'Lelystad', 'Aviodrome (nieuw)', 'Fokker Spin', 'Liggend', 'L'),
(234, 'Lelystad', 'Aviodrome (nieuw)', 'Oud Schiphol gebouw', 'Liggend', 'L'),
(235, 'Lelystad', 'Aviodrome (nieuw)', 'Aviodrome logo', 'Liggend', 'L'),
(236, 'Lelystad', 'Batavia werf', 'de Batavia', 'Liggend', 'L'),
(237, 'Lelystad', 'Batavia werf', 'de Batavia', 'Staand', 'L'),
(238, 'Lelystad', 'Batavia werf', 'de 7 Provinciën', 'Liggend', 'L'),
(239, 'Lemmer', 'Lemmer', 'Lemmeraak', 'Liggend', 'L'),
(240, 'Lisse', 'Keukenhof', 'Tulpen & Narcissen', 'Liggend', 'L'),
(241, 'Lisse', 'Keukenhof', 'Klomp', 'Liggend', 'L'),
(242, 'Lisse', 'Keukenhof', 'Molen', 'Staand', 'L'),
(243, 'Maastricht', 'Kiosk Servaasbrug', 'Sint Servaasbrug', 'Liggend', 'M'),
(244, 'Maastricht', 'Kiosk Servaasbrug', 'Sint Servaaskerk', 'Liggend', 'M'),
(245, 'Maastricht', 'Kiosk Servaasbrug', 'Stadhuis', 'Liggend', 'M'),
(246, 'Medemblik', 'Medemblik', 'Kasteel Radboud', 'Liggend', 'M'),
(247, 'Medemblik', 'Medemblik', 'Zeilboten', 'Liggend', 'M'),
(248, 'Medemblik', 'Medemblik', 'Stoom trein', 'Liggend', 'M'),
(249, 'Mierloo', 'Dierenrijk bij Eindhoven', 'Arend', 'Liggend', 'M'),
(250, 'Mierloo', 'Dierenrijk bij Eindhoven', 'Olifant', 'Liggend', 'M'),
(251, 'Mierloo', 'Dierenrijk bij Eindhoven', 'Ijsbeer', 'Liggend', 'M'),
(252, 'Muiden', 'Muiderslot', 'Adelaar', 'Liggend', 'M'),
(253, 'Muiden', 'Muiderslot', 'Ridderzegel van Graaf Floris', 'Liggend', 'M'),
(254, 'Muiden', 'Muiderslot', 'Amsterdam Castle', 'Liggend', 'M'),
(255, 'Naarden', 'Naarden-vesting', 'Stadhuis', 'Staand', 'N'),
(256, 'Naarden', 'Naarden-vesting', 'Vesting stad', 'Liggend', 'N'),
(257, 'Naarden', 'Naarden-vesting', 'Grote kerk', 'Staand', 'N'),
(258, 'Nieuwegein', 'Ruilbeurs 2019', 'Vreeswijk', 'Liggend', 'N'),
(259, 'Nieuwegein', 'Ruilbeurs 2019', 'Huis Oudegein', 'Liggend', 'N'),
(260, 'Nieuwegein', 'Ruilbeurs 2019', 'PR. Beatrixsluizen', 'Liggend', 'N'),
(261, 'Nieuwegein', 'Ruilbeurs 2019 (Goud)', 'Vreeswijk', 'Liggend', 'N'),
(262, 'Nieuwegein', 'Ruilbeurs 2019 (Goud)', 'Huis Oudegein', 'Liggend', 'N'),
(263, 'Nieuwegein', 'Ruilbeurs 2019 (Goud)', 'PR. Beatrixsluizen', 'Liggend', 'N'),
(264, 'Nuenen', 'Dierenrijk bij Eindhoven 1b', 'Mascotte aap', 'Liggend', 'N'),
(265, 'Nuenen', 'Dierenrijk bij Eindhoven 1b', 'Tijger', 'Staand', 'N'),
(266, 'Nuenen', 'Dierenrijk bij Eindhoven 1b', 'Olifanten', 'Liggend', 'N'),
(267, 'Oerloo', 'Papegaaienpark', 'Lorre', 'Liggend', 'O'),
(268, 'Oosterbeek', 'Airborne 2018', 'In vrede geslagen', 'Liggend', 'O'),
(269, 'Oost-vlieland', 'Parfumpaviljoen (oud)', 'Veerboot', 'Liggend', 'O'),
(270, 'Oost-vlieland', 'Parfumpaviljoen (oud)', 'Vuurtoren', 'Staand', 'O'),
(271, 'Oost-vlieland', 'Parfumpaviljoen (oud)', 'Eiland Vlieland', 'Liggend', 'O'),
(272, 'Oost-vlieland', 'Parfumpaviljoen (nieuw)', 'Veerboot Vlieland', 'Liggend', 'O'),
(273, 'Oost-vlieland', 'Parfumpaviljoen (nieuw)', 'Vuurtoren', 'Staand', 'O'),
(274, 'Oost-vlieland', 'Parfumpaviljoen (nieuw)', 'Strandwacht', 'Liggend', 'O'),
(275, 'Oosterend', 'Terschelling', 'Veerboot', 'Liggend', 'O'),
(276, 'Oosterend', 'Terschelling', 'Vuurtoren', 'Staand', 'O'),
(277, 'Oosterend', 'Terschelling', 'Eiland Terschelling', 'Liggend', 'O'),
(278, 'Overloon', 'Nationaal Verzets Museum', 'Vliegtuig', 'Liggend', 'O'),
(279, 'Overloon', 'Nationaal Verzets Museum', 'Tank', 'Liggend', 'O'),
(280, 'Pieterburen', 'Zeehonden centrum', 'Zeehonden kop', 'Staand', 'P'),
(281, 'Pieterburen', 'Zeehonden centrum', 'Zeehond', 'Liggend', 'P'),
(282, 'Pieterburen', 'Zeehonden centrum', 'Happy Seal', 'Staand', 'P'),
(283, 'Reeuwijk', 'Superwatershop', 'Superwatershop logo', 'Staand', 'R'),
(284, 'Reeuwijk', 'Superwatershop', 'Bollo de beer', 'Liggend', 'R'),
(285, 'Reeuwijk', 'Superwatershop', 'Wapen', 'Staand', 'R'),
(286, 'Rheden', 'Posbank', 'Landschap', 'Liggend', 'R'),
(287, 'Rheden', 'Posbank', 'Gebouw', 'Liggend', 'R'),
(288, 'Rheden', 'Posbank', 'Oeros', 'Liggend', 'R'),
(289, 'Rotterdam', 'Feyenoord', 'Stadion de Kuip', 'Liggend', 'R'),
(290, 'Rotterdam', 'Feyenoord', 'Logo Feyenoord', 'Staand', 'R'),
(291, 'Rotterdam', 'Feyenoord', 'Skyline Rotterdam', 'Liggend', 'R'),
(292, 'Rotterdam', 'Spido Abel Tasman', 'Erasmusbrug', 'Liggend', 'R'),
(293, 'Rotterdam', 'Spido Abel Tasman', 'Veerboot aan haven', 'Liggend', 'R'),
(294, 'Rotterdam', 'Spido Abel Tasman', 'Veerboot', 'Liggend', 'R'),
(295, 'Rotterdam', 'Maritiem Museum', 'Kaal mannetje', 'Staand', 'R'),
(296, 'Rotterdam', 'Maritiem Museum', 'Logo Maritiem Museum', 'Liggend', 'R'),
(297, 'Rotterdam', 'Maritiem Museum', 'Antieke boot', 'Staand', 'R'),
(298, 'Rotterdam', 'Cubehouse Stay Okay', 'Kubus woningen', 'Liggend', 'R'),
(299, 'Rotterdam', 'Cubehouse Stay Okay', 'Bovenaanzicht', 'Liggend', 'R'),
(300, 'Rotterdam', 'Cubehouse Stay Okay', 'Markthal', 'Liggend', 'R'),
(301, 'Rotterdam', 'Erasmusbrug', 'Erasmusbrug', 'Liggend', 'R'),
(302, 'Rotterdam', 'Erasmusbrug', 'Overview', 'Liggend', 'R'),
(303, 'Rotterdam', 'Erasmusbrug', 'Erasmusbrug met muur', 'Liggend', 'R'),
(304, 'Rotterdam', 'Mini World', 'Mini World skyline', 'Liggend', 'R'),
(305, 'Rotterdam', 'Mini World', 'Mini World Rotterdam', 'Liggend', 'R'),
(306, 'Rotterdam', 'Mini World', 'Locomotief', 'Liggend', 'R'),
(307, 'Rotterdam', 'Euromast', 'Europoort', 'Liggend', 'R'),
(308, 'Rotterdam', 'Euromast', 'Euromast', 'Staand', 'R'),
(309, 'Rotterdam', 'Euromast', 'Skyline\r\n', 'Liggend', 'R'),
(310, 'Rotterdam', 'Museum Kubushuis (engels)', 'Erasmusbridge', 'Liggend', 'R'),
(311, 'Rotterdam', 'Museum Kubushuis (engels)', 'Markethall', 'Liggend', 'R'),
(312, 'Rotterdam', 'Museum Kubushuis (engels)', 'Cubehouses Skyline', 'Liggend', 'R'),
(313, 'Rotterdam', 'S.S. Rotterdam', 'S.S. Rotterdam in front', 'Liggend', 'R'),
(314, 'Rotterdam', 'S.S. Rotterdam', 'S.S. Rotterdam van zijkant', 'Liggend', 'R'),
(315, 'Rotterdam', 'S.S. Rotterdam', 'Sloepie', 'Liggend', 'R'),
(316, 'Scheveningen', 'Palace Promenade', 'Kurhaus Scheveningen', 'Liggend', 'S'),
(317, 'Scheveningen', 'Palace Promenade', 'Vuurtoren', 'Staand', 'S'),
(318, 'Scheveningen', 'Palace Promenade', 'De Pier', 'Liggend', 'S'),
(319, 'Scheveningen', 'De Pier', 'Logo DE PIER + Scheveningen', 'Liggend', 'S'),
(320, 'Scheveningen', 'De Pier', 'Overzicht De Pier', 'Liggend', 'S'),
(321, 'Scheveningen', 'De Pier', 'Toren + logo DE PIER', 'Liggend', 'S'),
(322, 'Scheveningen', 'Sealife 2a', 'Zeepaardje + logo Sealife', 'Staand', 'S'),
(323, 'Scheveningen', 'Sealife 2a', 'Pijlstaartrog + logo Sealife', 'Staand', 'S'),
(324, 'Scheveningen', 'Sealife 2a', 'Haai + logo Sealife', 'Staand', 'S'),
(325, 'Schiermonnikoog', 'Schiermonnikoog', 'Eiland Schiermonnikoog + Zeeleeuw', 'Liggend', 'S'),
(326, 'Schiermonnikoog', 'Schiermonnikoog', 'Vuurtoren', 'Staand', 'S'),
(327, 'Schiermonnikoog', 'Schiermonnikoog', 'Veerboot', 'Liggend', 'S'),
(328, 'Schoonhoven', 'Nederlands Zilver Museum', 'Poort', 'Liggend', 'S'),
(329, 'Schoonhoven', 'Nederlands Zilver Museum', 'Tekst Nederlands Zilver Museum Schoonhoven', 'Liggend', 'S'),
(330, 'Schoonhoven', 'Nederlands Zilver Museum', 'Logo + Wapen', 'Liggend', 'S'),
(331, 'Slagharen', 'Ponypark Slagharen 1e', 'Reuzenrad', 'Staand', 'S'),
(332, 'Slagharen', 'Ponypark Slagharen 1e', 'Cowboy op paard', 'Liggend', 'S'),
(333, 'Slagharen', 'Ponypark Slagharen 1d', 'Reuzenrad', 'Staand', 'S'),
(334, 'Soest', 'Nationaal Militair Museum', 'Legerwagen ', 'Liggend', 'S'),
(335, 'Soest', 'Nationaal Militair Museum', 'Tank', 'Liggend', 'S'),
(336, 'Soest', 'Nationaal Militair Museum', 'Straaljager', 'Liggend', 'S'),
(337, 'Utrecht', 'Het Spoorwegmuseum 1a', 'Stoomlocomotief', 'Liggend', 'U'),
(338, 'Utrecht', 'Het Spoorwegmuseum 1a', 'Malibaanstation', 'Liggend', 'U'),
(339, 'Utrecht', 'Het Spoorwegmuseum 1a', 'Nederlandsche Fabriek van werktuigen en spoorwegmaterieel Amsterdam', 'Liggend', 'U'),
(340, 'Utrecht', 'Escape Room Utrecht', 'TOSH (tekst)', 'Liggend', 'U'),
(341, 'Utrecht', 'Escape Room Utrecht', 'Telefoon (illustratie)', 'Liggend', 'U'),
(342, 'Utrecht', 'Escape Room Utrecht', 'KWAY-ROBBINS (tekst)', 'Liggend', 'U'),
(343, 'Utrecht', 'KidZcity', 'KidZcity + gebouwen', 'Liggend', 'U'),
(344, 'Valkenburg', 'Kasteelruïne Fluweelengrot', 'Logo', 'Liggend', 'V'),
(345, 'Valkenburg', 'Steenkolenmijn', 'Steenkolenmijn + logo', 'Liggend', 'V'),
(346, 'Volendam', 'Volendam 1a', 'Molen', 'Staand', 'V'),
(347, 'Volendam', 'Volendam 1a', 'Hollanders', 'Liggend', 'V'),
(348, 'Volendam', 'Volendam 1a', 'Tulpen & Klompen', 'Staand', 'V'),
(349, 'Venlo', 'Floriade 2012', 'Expo', 'Liggend', 'V'),
(350, 'Venlo', 'Floriade 2012', 'Held & Botanicus', 'Staand', 'V'),
(351, 'Venlo', 'Floriade 2012', 'Narcis & Tulpen', 'Liggend', 'V'),
(352, 'Volkel', 'Dierenpark Zie-ZOO', 'Wolf', 'Staand', 'V'),
(353, 'Volkel', 'Dierenpark Zie-ZOO', 'Jaguar', 'Liggend', 'V'),
(354, 'Volkel', 'Dierenpark Zie-ZOO', 'Slingeraap ', 'Staand', 'V'),
(355, 'Vrouwenpolder', 'Neeltje Jans 1', 'Rog', 'Liggend', 'V'),
(356, 'Vrouwenpolder', 'Neeltje Jans 1', 'Sluizen', 'Liggend', 'V'),
(357, 'Vrouwenpolder', 'Neeltje Jans 1', 'Haai', 'Liggend', 'V'),
(358, 'Vrouwenpolder', 'Neeltje Jans 1a', 'Haai', 'Liggend', 'V'),
(359, 'Vrouwenpolder', 'Neeltje Jans 1a', 'Sluizen schuin zijaanzicht', 'Liggend', 'V'),
(360, 'Vrouwenpolder', 'Neeltje Jans 1a', 'Rog', 'Liggend', 'V'),
(361, 'Westkapelle', 'Westkapelle', 'Het Hoge Licht (toren)', 'Staand', 'W'),
(362, 'Westkapelle', 'Westkapelle', 'Sherman M4A4 (tank)', 'Liggend', 'W'),
(363, 'Westkapelle', 'Westkapelle', 'Het Lage Licht (vuurtoren)', 'Staand', 'W'),
(364, 'Zaandam', 'Zaanse Schans Seanse Lelie souvenirshop', 'Zaans huisje', 'Staand', 'Z'),
(365, 'Zaandam', 'Zaanse Schans Seanse Lelie souvenirshop', 'Molens langs de Zaan', 'Liggend', 'Z'),
(366, 'Zaandam', 'Zaanse Schans Seanse Lelie souvenirshop', 'Molen', 'Staand', 'Z'),
(367, 'Zaandam', 'Zaanse Schans Vrede Souvenirs', 'Tulpen', 'Staand', 'Z'),
(368, 'Zaandam', 'Zaanse Schans Vrede Souvenirs', 'Zaans huisje', 'Liggend', 'Z'),
(369, 'Zaandam', 'Zaanse Schans Vrede Souvenirs', 'De Bleeke Dood', 'Staand', 'Z'),
(370, 'Zaandam', 'Zaanse Schans Klompen Museum', 'Molen', 'Liggend', 'Z'),
(371, 'Zaandam', 'Zaanse Schans Klompen Museum', 'Klompen', 'Liggend', 'Z'),
(372, 'Zaandam', 'Zaanse Schans Klompen Museum', 'Zaans huisjes', 'Liggend', 'Z'),
(373, 'Zaandam', 'Zaanse Schans Klompen Museum (oud)', 'Klompen', 'Liggend', 'Z'),
(374, 'Zaandam', 'Zaanse Schans Vrede Souvenirs (oud)', 'Zaans huisje', 'Liggend', 'Z'),
(375, 'Zaandam', 'Zaans Museum (goud)', 'Verkade logo', 'Liggend', 'Z'),
(376, 'Zaandam', 'Zaans Museum (goud)', 'Molen', 'Staand', 'Z'),
(377, 'Zaandam', 'Zaans Museum (goud)', 'Zaanse Schans', 'Liggend', 'Z'),
(378, 'Zaandam', 'Zaans Museum', 'Verkade logo', 'Liggend', 'Z'),
(379, 'Zaandam', 'Zaans Museum', 'Molen', 'Staand', 'Z'),
(380, 'Zaandam', 'Zaans Museum', 'Zaans huisje', 'Liggend', 'Z'),
(381, 'Zeewolde', 'Centerparks De Eemhof', 'Orry', 'Staand', 'Z'),
(382, 'Zeewolde', 'Centerparks De Eemhof', 'Centerparks logo', 'Liggend', 'Z'),
(383, 'Zeewolde', 'Centerparks De Eemhof', 'Centerparks logo + De Eemhof', 'Staand', 'Z'),
(384, 'Zwolle', 'Ecodrome', 'Velociraptor', 'Liggend', 'Z'),
(385, 'Zwolle', 'Ecodrome', 'Triceratops', 'Liggend', 'Z'),
(386, 'Zwolle', 'Ecodrome', 'Adelaar', 'Liggend', 'Z'),
(387, 'Alkmaar', 'Fan & Giftshop - Hoogstraat', 'Kasteeltoren', 'Staand', 'A'),
(388, 'Alkmaar', 'Fan & Giftshop - Hoogstraat', 'Kaas dragers', 'Liggend', 'A'),
(389, 'Alphen aan de Rijn', 'Avifauna', 'Roofvogel', 'Staand', 'A'),
(390, 'Amsterdam', 'Budget Souvenirs', 'Wapen van Amsterdam', 'Liggend', 'A'),
(391, 'Amsterdam', 'Budget Souvenirs', 'Brug met Fiets', 'Liggend', 'A'),
(392, 'Amsterdam', 'Budget Souvenirs', 'Wietplant', 'Liggend', 'A'),
(393, 'Amsterdam', 'Amsterdam Arena', 'Arena 02(oud)', 'Liggend', 'A'),
(394, 'Amsterdam', 'Amsterdam Arena', 'Arena 02a (oud)', 'Liggend', 'A'),
(395, 'Amsterdam', 'Amsterdam Arena', 'Cup 02a (oud)', 'Staand', 'A'),
(396, 'Amsterdam', 'Madame Tussauds', 'Molen', 'Staand', 'A'),
(397, 'Amsterdam', 'Esch Tobacco & Souvenirs', 'Het Rembrandt huis', 'Staand', 'A'),
(398, 'Amsterdam', 'Boswijk Bazar Kalverstraat', 'Monument op de Dam', 'Staand', 'A'),
(399, 'Amsterdam', 'Boswijk Bazar Kalverstraat', 'Grachten huizen', 'Liggend', 'A'),
(400, 'Amsterdam', 'Boswijk Bazar Kalverstraat', 'Royal Palace', 'Liggend', 'A'),
(401, 'Amsterdam', 'Souvenirshop Kalverstraat 156', 'Kissing Couple', 'Staand', 'A'),
(402, 'Amsterdam', 'Souvenirshop Kalverstraat 156', 'Grachten huizen', 'Liggend', 'A'),
(403, 'Amsterdam', 'Souvenirshop Kalverstraat 156', 'Paar klompen', 'Liggend', 'A'),
(404, 'Amsterdam', 'Stedelijk Museum', 'Tentoonstelling Navid Nur (vingerafdruk)', 'Staand', 'A'),
(405, 'Amsterdam', 'Souvenir & Seeds', 'Wapen van Amsterdam', 'Liggend', 'A'),
(406, 'Amsterdam', 'Souvenir & Seeds', 'Brug met Fiets', 'Liggend', 'A'),
(407, 'Amsterdam', 'Souvenir & Seeds', 'Paleis op de Dam', 'Liggend', 'A'),
(408, 'Amsterdam', 'Kaasmuseum Prinsengracht 112', 'Westertoren', 'Liggend', 'A'),
(409, 'Amsterdam', 'Kaasmuseum Prinsengracht 112', 'Cheese museum', 'Liggend', 'A'),
(410, 'Amsterdam', 'Kaasmuseum Prinsengracht 112', 'Kaas dragers', 'Liggend', 'A'),
(411, 'Amsterdam', 'Friends Supermarket & Souvenirshop', 'Meisje in klederdracht', 'Staand', 'A'),
(412, 'Amsterdam', 'Friends Supermarket & Souvenirshop', 'Souvenirs', 'Liggend', 'A'),
(413, 'Amsterdam', 'Friends Supermarket & Souvenirshop', 'Grachten panden', 'Liggend', 'A'),
(414, 'Amsterdam', 'Gift & Souvenirshop Singel 506', 'logo Amsterdam + I was here', 'Staand', 'A'),
(415, 'Amsterdam', 'Gift & Souvenirshop Singel 506', 'Monument op de Dam', 'Staand', 'A'),
(416, 'Amsterdam', 'Gift & Souvenirshop Singel 506', 'Royal Palace', 'Liggend', 'A'),
(417, 'Amsterdam', 'Smiths Koffiehuis', 'Centraal Station', 'Liggend', 'A'),
(418, 'Amsterdam', 'Smiths Koffiehuis', 'Dam Square', 'Liggend', 'A'),
(419, 'Amsterdam', 'Smiths Koffiehuis', 'Smiths Koffiehuis (pand)', 'Liggend', 'A'),
(420, 'Amsterdam', 'Star Souvenirs Warmoestraat 102', 'Souvenir plaatje', 'Liggend', 'A'),
(421, 'Amsterdam', 'Souvenirs Stoofsteeg 4', 'Souvenir plaatje', 'Liggend', 'A'),
(422, 'Apeldoorn', 'Apenheul 1', 'APCT, Primate Conservation Trust', 'Liggend', 'A'),
(423, 'Apeldoorn', 'Apenheul 1', 'Horen, Zien & Zwijgen', 'Liggend', 'A'),
(424, 'Apeldoorn', 'Apenheul 1', 'Stickman Aap', 'Liggend', 'A'),
(425, 'Apeldoorn', 'Apenheul 1a', 'Aapje + Apenheul', 'Liggend', 'A'),
(426, 'Apeldoorn', 'Apenheul 1a', 'I love gorilla\'s', 'Liggend', 'A'),
(427, 'Apeldoorn', 'Apenheul 1a', '???', 'Liggend', 'A'),
(428, 'Biddinghuizen', 'Walibi Flevo 1d', 'The Goliath, I did it (gespiegeld)', 'Staand', 'B'),
(429, 'Biddinghuizen', 'Walibi Flevo 1d', 'Goliath + gegevens', 'Staand', 'B'),
(430, 'Biddinghuizen', 'Walibi Flevo 1d', '#HARDGAAN W', 'Liggend', 'B'),
(431, 'Callantsoog', 'Callantsoog', 'Dorpsplein beeld', 'Staand', 'C'),
(432, 'Delft', 'Leger Museum', 'Tank (goud)', 'Liggend', 'D'),
(433, 'Den Haag', 'Binnenhof', 'Binnenhof (tweede kamer)', 'Staand', 'D'),
(434, 'Den Haag', 'Binnenhof', 'Het Torentje', 'Staand', 'D'),
(435, 'Den Haag', 'Binnenhof', 'Prinsjesdag', 'Liggend', 'D'),
(436, 'Den Haag', 'Madurodam plein 1', 'Brandweer', 'Liggend', 'D'),
(437, 'Den Oever', 'Monument Afsluitdijk', 'Monument (oud)', 'Staand', 'D'),
(438, 'Dordrecht', 'Dordrecht', 'Gemeente wapen', 'Liggend', 'D'),
(439, 'Dordrecht', 'Biesboscentrum', 'Het Beverhof', 'Liggend', 'D'),
(440, 'Eenrum', 'Abrahams Mosterdmakerij', 'Oud mannetje', 'Staand', 'E'),
(441, 'Eenrum', 'Abrahams Mosterdmakerij', 'Molen de Lelie', 'Staand', 'E'),
(442, 'Eenrum', 'Abrahams Mosterdmakerij', 'Kaasmakerij', 'Liggend', 'E'),
(443, 'Egmond aan Zee', 'VVV Voorstraat 141', 'Vuurtoren', 'Staand', 'E'),
(444, 'Egmond aan Zee', 'VVV Voorstraat 141', 'Windmolens', 'Liggend', 'E'),
(445, 'Emmen ', 'Evenement Alles Kids 1', 'Logo', 'Staand', 'E'),
(446, 'Groesbeek', 'Vrijheidsmuseum', '???', '???', 'G'),
(447, 'Groningen', 'Nederlands Stripmuseum', 'één stripfiguur', 'Liggend', 'G'),
(448, 'Groningen', 'Nederlands Stripmuseum', 'Drie stripfiguren', 'Liggend', 'G'),
(449, 'Groningen', 'Nederlands Stripmuseum', 'Éen stripfiguurtje', 'Liggend', 'G'),
(450, 'Hellendoorn', 'Avonturenpark Hellendoorn 1b', 'Zeehond', 'Liggend', 'H'),
(451, 'Hoek van Holland', 'Stena Lines', 'Boot', 'Liggend', 'H'),
(452, 'Hoek van Holland', 'Stena Lines', 'Boot', 'Liggend', 'H'),
(453, 'Hollum', 'Ameland', 'Plaats', 'Liggend', 'H'),
(454, 'Hulshorsterzand', 'Zandverstuiving', ' Monument 2016', 'Staand', 'H'),
(455, 'Hulst', 'Reynaertstad', 'Reynaert de Vos', 'Staand', 'H'),
(456, 'Hulst', 'VVV Hulst', 'Wapen van Hulst', 'Staand', 'H'),
(457, 'Hulst', 'Corforma', 'Corforma', 'Liggend', 'H'),
(458, 'Kaatsheuvel', 'de Efteling 1b', 'Pardoes', 'Staand', 'K'),
(459, 'Kaatsheuvel', 'de Efteling 1b', 'Sprookjes huizen', 'Liggend', 'K'),
(460, 'Kaatsheuvel', 'de Efteling 1b', 'Efteling', 'Liggend', 'K'),
(461, 'Kerkrade', 'Industrion', 'Mijnwerker', 'Staand', 'K'),
(462, 'Kerkrade', 'Gaia Park 2a', 'Aart Stokstaart', 'Staand', 'K'),
(463, 'Kerkrade', 'Gaia Park 2a', 'Mr. T.Rex', 'Liggend', 'K'),
(464, 'Kerkrade', 'Gaia Park 2a', 'Nikita Cheeta', 'Liggend', 'K'),
(465, 'Kinderdijk', 'Kinderdijk 1b', 'Molen', 'Staand', 'K'),
(466, 'Kinderdijk', 'Kinderdijk 1b', 'Molens', 'Liggend', 'K'),
(467, 'Kinderdijk', 'Kinderdijk 1b', 'de Dijk', 'Liggend', 'K'),
(468, 'Leiden', 'Museum Naturalis', 'Rog', 'Liggend', 'L'),
(469, 'Leiden', 'Museum Naturalis', 'Olifant', 'Staand', 'L'),
(470, 'Leiden', 'Museum Naturalis', 'Dolfijnen', 'Liggend', 'L'),
(471, 'Leiden', 'Museum Naturalis', 'Gorgosaurus', 'Liggend', 'L'),
(472, 'Leiden', 'Museum Naturalis', 'Stegosaurus', 'Liggend', 'L'),
(473, 'Leiden', 'Museum Naturalis', 'Triceratops', 'Liggend', 'L'),
(474, 'Lemmer', 'Wouda Gemaal', 'Wouda Gemaal (buiten)', 'Liggend', 'L'),
(475, 'Lemmer', 'Wouda Gemaal', 'Wouda Gemaal (binnen)', 'Liggend', 'L'),
(476, 'Lisse', 'Keukenhof', 'Klompen ', 'Liggend', 'L'),
(477, 'Lisse', 'Keukenhof', 'Tulp', 'Staand', 'L'),
(478, 'Bourtange', 'Vesting Bourtange', 'Vesting', 'Staand', 'B'),
(479, 'Maastricht', 'Tentoonstelling Marres Huis', 'Globe', 'Liggend', 'M'),
(480, 'Maastricht', 'Panhuis Souvenirs', 'Sint Servaaskerk', 'Liggend', 'M'),
(481, 'Maastricht', 'Panhuis Souvenirs', 'Sint Servaasbrug', 'Liggend', 'M'),
(482, 'Maastricht', 'Panhuis Souvenirs', 'Stadhuis', 'Liggend', 'M'),
(483, 'Makkum', 'Makkum', 'Kerk met Zeemeermin', 'Staand', 'M'),
(484, 'Middelburg', 'Voetbal Experience', 'Voetballer met bal', 'Staand', 'M'),
(485, 'Middelburg', 'Voetbal Experience', 'Oranje Leeuw', 'Staand', 'M'),
(486, 'Middelburg', 'Voetbal Experience', 'Voetbal', 'Liggend', 'M'),
(487, 'Middelburg', 'Familie Pretpark Minimundi', 'Man met Baard', 'Staand', 'M'),
(488, 'Middelburg', 'Familie Pretpark Minimundi', 'Kerktoren', 'Staand', 'M'),
(489, 'Middelburg', 'Familie Pretpark Minimundi', 'Karikatuur', 'Liggend', 'M'),
(490, 'Nuenen', 'Dierenrijk Europa', 'Aapje en Nijlpaard', 'Staand', 'N'),
(491, 'Nuenen', 'Dierenrijk Europa', 'Adelaar', 'Liggend', 'N'),
(492, 'Nuenen', 'Dierenrijk Europa', 'Beer', 'Liggend', 'N'),
(493, 'Nuenen', 'Dierenrijk bij Eindhoven 1a', 'Olifant', 'Liggend', 'N'),
(494, 'Nuenen', 'Dierenrijk bij Eindhoven 1a\r\n', 'Adelaar', 'Liggend', 'N'),
(495, 'Nuenen', 'Dierenrijk bij Eindhoven 1a', 'Beer', 'Liggend', 'N'),
(496, 'Oostburg', 'Euregio Tuinen', 'Lieveheersbeestje', 'Liggend', 'O'),
(497, 'Overloon', 'ZooParc Overloon 2a', 'Miereneter', 'Liggend', 'O'),
(498, 'Overloon', 'ZooParc Overloon 2a', 'Drie Giraffen', 'Liggend', 'O'),
(499, 'Overloon', 'ZooParc Overloon 2a', 'Leeuwenkop', 'Liggend', 'O'),
(500, 'Poederoijen', 'Slot Loevestein', 'Soldaat met geweer', 'Staand', 'P'),
(501, 'Poederoijen', 'Slot Loevestein', 'Hugo de Groot', 'Staand', 'P'),
(502, 'Poederoijen', 'Slot Loevestein', 'Slot Loevestein', 'Liggend', 'P'),
(503, 'Reuver', 'Cactuswereld', 'Cactus', 'Liggend', 'R'),
(504, 'Rhenen', 'Ouwehands Dierenpark 1e', 'Ijsbeer', 'Staand', 'R'),
(505, 'Rhenen', 'Ouwehands Dierenpark 1e', 'Ijsbeer ingezoomd links kijkend', 'Liggend', 'R'),
(506, 'Rhenen', 'Ouwehands Dierenpark 1e', 'Ijsbeer ingezoomd vooruit kijkend', 'Liggend', 'R'),
(507, 'Rhenen', 'Ouwehands Dierenpark 1f', 'Panda', 'Staand', 'R'),
(508, 'Rhenen', 'Ouwehands Dierenpark 1f', 'Panda verblijf ', 'Liggend', 'R'),
(509, 'Rhenen', 'Ouwehands Dierenpark 1f', 'Twee Panda\'s', 'Liggend', 'R'),
(510, 'Rotterdam', 'Diergaarde Blijdorp 7', 'Olifant', 'Liggend', 'R'),
(511, 'Rotterdam', 'Diergaarde Blijdorp 7a', 'Giraf', 'Staand', 'R'),
(512, 'Rotterdam', 'Diergaarde Blijdorp 7a', 'Wolf', 'Staand', 'R'),
(513, 'Rotterdam', 'Diergaarde Blijdorp 7a', 'Zeeschildpad', 'Liggend', 'R'),
(514, 'Rotterdam', 'Diergaarde Blijdorp 7b', 'Tijger', 'Liggend', 'R'),
(515, 'Rotterdam', 'Diergaarde Blijdorp 7b', 'Olifant', 'Liggend', 'R'),
(516, 'Rotterdam', 'Diergaarde Blijdorp 7b', 'Leeuw', 'Liggend', 'R'),
(517, 'Rotterdam', 'Diergaarde Blijdorp 7c', 'Leeuwenkop', 'Liggend', 'R'),
(518, 'Rotterdam', 'Diergaarde Blijdorp 7c', 'Gorillakop', 'Liggend', 'R'),
(519, 'Rotterdam', 'Diergaarde Blijdorp 7c', 'Giraffenkop', 'Liggend', 'R'),
(520, 'Rotterdam', 'Plaswijck Park', 'Logo', 'Liggend', 'R'),
(521, 'Scheveningen', 'Sealife 2b', 'Zeepaardje', 'Staand', 'S'),
(522, 'Scheveningen', 'Sealife 2b', 'Pijlstaartrog', 'Liggend', 'S'),
(523, 'Scheveningen', 'Sealife 2b', 'Haai', 'Liggend', 'S'),
(524, 'Schoonhoven', 'VVV', 'Stad Schoonhoven', 'Liggend', 'S'),
(525, 'Sevenum', 'Attractiepark Toverland 1', 'Attractiepark Toverland', 'Liggend', 'S'),
(526, 'Sevenum', 'Attractiepark Toverland 1', 'Logo', 'Liggend', 'S'),
(527, 'Sevenum', 'Attractiepark Toverland 1', 'Tovenares', 'Liggend', 'S'),
(528, 'Sevenum', 'Attractiepark Toverland 1g', 'Scorpios', 'Liggend', 'S'),
(529, 'Sint Maartenszee', 'Attractiepark De Goudvis', 'Logo', 'Liggend', 'S'),
(530, 'Slagharen', 'Ponypark Slagharen 1d', 'Hoge Zweefmolen', 'Staand', 'S'),
(531, 'Sluis', 'De Collectie 30 Jaar 1978 - 2008', 'Logo', 'Liggend', 'S'),
(532, 'Terneuzen', 'J K Boost', 'Boost', 'Liggend', 'T'),
(533, 'Terneuzen', 'Het Portaal van Vlaanderen', 'Matroos met Verrekijker', 'Liggend', 'T'),
(534, 'Terschelling', 'de Waddeneilanden', 'Veerboot', 'Liggend', 'T'),
(535, 'Utrecht', 'Het Spoorwegmuseum 1', 'Stoomlocomotief', 'Liggend', 'U'),
(536, 'Utrecht', 'Het Spoorwegmuseum 1', 'Nederlandsche Fabriek van werktuigen en spoorwegmaterieel Amsterdam', 'Liggend', 'U'),
(537, 'Utrecht', 'Domtoren', 'Domtoren (tekst in spiegelbeeld)', 'Staand', 'U'),
(538, 'Vaals', 'Wilhelminatoren', 'Wilhelminatoren', 'Staand', 'V'),
(539, 'Vaals', 'Wilhelminatoren', 'www.hoogste.nl', 'Staand', 'V'),
(540, 'Valkenburg', 'Kasteelruïne Fluweelengrot', 'Kasteelruïne Kerstmarkt', 'Liggend', 'V'),
(541, 'Valkenburg', 'Kasteelruïne Fluweelengrot 1b', 'Logo zonder stippen', 'Liggend', 'V'),
(542, 'Valkenburg', 'Dino tentoonstelling', 'Raptor + logo', 'Staand', 'V'),
(543, 'Valkenburg', 'Dino tentoonstelling', 'Triceratops + logo', 'Liggend', 'V'),
(544, 'Valkenburg', 'Dino tentoonstelling', 'T-rex + logo', 'Liggend', 'V'),
(545, 'Veenhuizen', 'Gevangenis Museum', 'Het Gevangenis Museum', 'Liggend', 'V'),
(546, 'Veenhuizen', 'Gevangenis Museum', 'Koloniale Munt', 'Liggend', 'V'),
(547, 'Veenhuizen', 'Gevangenis Museum', 'Gevangenis Bus', 'Liggend', 'V'),
(548, 'Volendam', 'Souvenirshop Haven 102', 'Klederdracht', 'Staand', 'V'),
(549, 'Volendam', 'Souvenirshop Haven 102', 'Paar klompen', 'Liggend', 'V'),
(550, 'Volendam', 'Souvenirshop Haven 102', 'Overview Haven', 'Liggend', 'V'),
(551, 'Vrouwenpolder', 'Neeltje Jans 1b', 'Zeemeermin', 'Staand', 'V'),
(552, 'Vrouwenpolder', 'Neeltje Jans 1b', 'Sluizen', 'Liggend', 'V'),
(553, 'Vrouwenpolder', 'Neeltje Jans 1b', 'Zeeleeuw', 'Liggend', 'V'),
(554, 'Vrouwenpolder', 'Neeltje Jans 1c', 'Sluizen Linker Zijaanzicht ', 'Liggend', 'V'),
(555, 'Vrouwenpolder', 'Neeltje Jans 1c', 'Veerboot', 'Liggend', 'V'),
(556, 'Vrouwenpolder', 'Neeltje Jans 1c', 'Zeehond', 'Liggend', 'V'),
(557, 'Vught', 'Genie Museum', 'Bulldozer', 'Liggend', 'V'),
(558, 'Zoutelande', 'Zout Langestraat 16-18', 'Strand', 'Liggend', 'Z'),
(559, 'Zoutelande', 'Zout Langestraat 16-18', 'Twee Masten Met Wapen', 'Staand', 'Z'),
(560, 'Zoutelande', 'Zout Langestraat 16-18', 'Kleedhokjes ', 'Liggend', 'Z'),
(561, 'Hilvarenbeek', 'SafariCamp Beekse Bergen', 'Flurki en Susan', 'Liggend', 'H'),
(562, 'Hilvarenbeek', 'SafariCamp Beekse Bergen', 'Susan', 'Staand', 'H'),
(563, 'Hilvarenbeek', 'SafariCamp Beekse Bergen', 'Flurki', 'Liggend', 'H'),
(564, 'Hulst', 'Consumptie Munt', 'Consumptie Munt', 'Staand', 'H'),
(565, 'Buitenland', 'Brussel', 'Stad Brussel (goud)', 'Liggend', 'B'),
(566, 'Buitenland', 'Toledo', 'Real Alcázar De Toledo ', 'Liggend', 'B'),
(567, 'Buitenland', 'Toledo', 'Don Quijote De La Manchia', 'Staand', 'B'),
(568, 'Buitenland', 'Egypte?', 'Toetanchamon', 'Liggend', 'B'),
(569, 'Buitenland', 'Zoo Osnabrück (Duitsland', 'Takamanda', 'Staand', 'B'),
(570, 'Buitenland', 'Globe', 'Wereldkaart', 'Liggend', 'B'),
(571, 'Buitenland', 'Antwerpen, België', 'Het steen', 'Liggend', 'B'),
(572, 'Buitenland', 'Antwerpen, België', 'O.L.V. kathedraal', 'Staand', 'B'),
(573, 'Buitenland', 'Antwerpen, België', 'Stadhuis 1565', 'Liggend', 'B'),
(574, 'Buitenland', 'Pairi Daiza, België', 'Gebouw', 'Liggend', 'B'),
(575, 'Buitenland', 'Pairi Daiza, België', 'Watervliegtuig ', 'Liggend', 'B'),
(576, 'Buitenland', 'Pairi Daiza, België', 'Olifant', 'Liggend', 'B'),
(577, 'Buitenland', 'Pairi Daiza, België', 'Giraf', 'Staand', 'B'),
(578, 'Buitenland', 'Pairi Daiza, België', 'Twee Panda\'s', 'Liggend', 'B'),
(579, 'Buitenland', 'Pairi Daiza, België', 'Stoomlocomotief', 'Liggend', 'B'),
(580, 'Buitenland', 'Sicilië', 'Trinacria Piazza Amerina', 'Liggend', 'B'),
(581, 'Buitenland', 'Sicilië', 'Circus tent? met tekst', 'Staand', 'B'),
(582, 'Buitenland', 'Zingst', 'Zeepaardje', 'Staand', 'B'),
(583, 'Buitenland', 'Laco Di Como', 'Duiker', 'Staand', 'B'),
(584, 'Buitenland', 'Lacs De L\'eau d\'Heure', 'Le Crocodile Rouge, Krokodil mascotte', 'Staand', 'B'),
(585, 'Buitenland', 'Lacs De L\'eau d\'Heure', 'Le Crocodile Rouge, amfibievoertuig', 'Liggend', 'B'),
(586, 'Buitenland', 'Düsseldorf', 'Rheinturm Düsseldorf, Toren', 'Staand', 'B'),
(587, 'Buitenland', 'Düsseldorf', 'Rheinturm Düsseldorf, Gebouwen', 'Liggend', 'B'),
(588, 'Buitenland', 'Donauturm Wien', 'Toren + Tekst', 'Staand', 'B'),
(589, 'Buitenland', 'Europa Park', 'Muis Mascotte', 'Staand', 'B'),
(590, 'Buitenland', 'Europa Park', 'Muis Piraat + Europa Park', 'Liggend', 'B'),
(591, 'Buitenland', 'Europa Park', 'Vrouwelijk Muis Mascotte', 'Staand', 'B'),
(592, 'Buitenland', 'Mechelen', 'Brusselpoort Mechelen', 'Staand', 'B'),
(593, 'Buitenland', 'Mechelen', 'Ambiance café De Prof + Logo', 'Liggend', 'B'),
(594, 'Buitenland', 'Mechelen', 'ST.-Rombouts-Kathedraal', 'Staand', 'B'),
(595, 'Buitenland', 'Rhodos Old Town', 'The Big Fountain', 'Liggend', 'B'),
(596, 'Buitenland', 'Rhodos Old Town', 'Marine Gate 1', 'Liggend', 'B'),
(597, 'Buitenland', 'Rhodos Old Town', 'Marine Gate 2', 'Liggend', 'B'),
(598, 'Buitenland', 'Bad Harzburg', 'Katachtig Wezen', 'Staand', 'B'),
(599, 'Buitenland', 'Bad Harzburg', 'Monument', 'Staand', 'B'),
(600, 'Buitenland', 'Bad Harzburg', 'Kabelbaan', 'Staand', 'B'),
(601, 'Buitenland', 'Estonia', 'Twee personen met muts op', 'Staand', 'B'),
(602, 'Buitenland', 'Estonia', 'Skyline', 'Liggend', 'B'),
(603, 'Buitenland', 'Estonia', 'Dansend Koppel', 'Liggend', 'B'),
(604, 'Arnhem', 'Nederlands Openluchtmuseum Arnhem', 'Molen', 'Staand', 'A'),
(605, 'Arnhem', 'Nederlands Openluchtmuseum Arnhem', 'Tram', 'Liggend', 'A'),
(606, 'Arnhem', 'Nederlands Openluchtmuseum Arnhem', '2 Poppetjes in klederdracht', 'Staand', 'A');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fabian Hendriks', 'fabian.et.je@hotmail.com', NULL, '$2y$10$XfO6YR5REfiOSj6sR6tWpOyO4Yan8m1UOaR0MYgUE1aYUo4CGn9vq', NULL, '2020-12-15 17:18:43', '2020-12-15 17:18:43');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `pressed_pennies`
--
ALTER TABLE `pressed_pennies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `pressed_pennies`
--
ALTER TABLE `pressed_pennies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
