-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 17 mei 2023 om 11:52
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bas`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ARTIKELEN`
--

CREATE TABLE `ARTIKELEN` (
  `artId` int(11) NOT NULL,
  `artOmschrijving` varchar(12) NOT NULL,
  `artInkoop` decimal(4,0) NOT NULL,
  `artVerkoop` decimal(4,0) NOT NULL,
  `artMinvoorraad` int(11) NOT NULL,
  `artMaxvoorraad` int(11) NOT NULL,
  `artLocatie` int(11) NOT NULL,
  `Levid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `ARTIKELEN`
--

INSERT INTO `ARTIKELEN` (`artId`, `artOmschrijving`, `artInkoop`, `artVerkoop`, `artMinvoorraad`, `artMaxvoorraad`, `artLocatie`, `Levid`) VALUES
(22, '22', '22', '22', 22, 22, 22, 22);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `INKOOPORDERS`
--

CREATE TABLE `INKOOPORDERS` (
  `inkOrderid` int(11) NOT NULL,
  `levId` int(11) NOT NULL,
  `artId` int(11) NOT NULL,
  `inkOrdDatum` date NOT NULL,
  `inkOrdBestAantal` int(11) NOT NULL,
  `InkOrderStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `KLANTEN`
--

CREATE TABLE `KLANTEN` (
  `klantId` int(11) NOT NULL,
  `klantNaam` varchar(20) NOT NULL,
  `klantEmail` varchar(30) NOT NULL,
  `klantAdres` varchar(30) NOT NULL,
  `klantPostcode` varchar(6) NOT NULL,
  `klantWoonplaats` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `LEVERANCIERS`
--

CREATE TABLE `LEVERANCIERS` (
  `levId` int(11) NOT NULL,
  `levNaam` varchar(15) NOT NULL,
  `levContact` varchar(20) NOT NULL,
  `levEmail` varchar(30) NOT NULL,
  `levAdres` varchar(30) NOT NULL,
  `levPostcode` varchar(6) NOT NULL,
  `levWoonplaats` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `VERKOOPORDERS`
--

CREATE TABLE `VERKOOPORDERS` (
  `verkOrdId` int(11) NOT NULL,
  `klantId` int(11) NOT NULL,
  `verkOrdDatum` date NOT NULL,
  `verkOrdBestAantal` int(11) NOT NULL,
  `verkOrdStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `ARTIKELEN`
--
ALTER TABLE `ARTIKELEN`
  ADD PRIMARY KEY (`artId`);

--
-- Indexen voor tabel `INKOOPORDERS`
--
ALTER TABLE `INKOOPORDERS`
  ADD PRIMARY KEY (`inkOrderid`,`levId`,`artId`);

--
-- Indexen voor tabel `KLANTEN`
--
ALTER TABLE `KLANTEN`
  ADD PRIMARY KEY (`klantId`);

--
-- Indexen voor tabel `LEVERANCIERS`
--
ALTER TABLE `LEVERANCIERS`
  ADD PRIMARY KEY (`levId`);

--
-- Indexen voor tabel `VERKOOPORDERS`
--
ALTER TABLE `VERKOOPORDERS`
  ADD PRIMARY KEY (`verkOrdId`,`klantId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
