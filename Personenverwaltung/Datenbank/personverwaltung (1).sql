-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 28. Feb 2021 um 14:27
-- Server Version: 5.6.13
-- PHP-Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `personverwaltung`
--
CREATE DATABASE IF NOT EXISTS `personverwaltung` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `personverwaltung`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `personverwaltung`
--

CREATE TABLE IF NOT EXISTS `personverwaltung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Geburtsdatum` varchar(15) DEFAULT NULL,
  `Einsatzbereich` varchar(45) DEFAULT NULL,
  `Position` varchar(45) DEFAULT NULL,
  `Sportart` varchar(45) DEFAULT NULL,
  `AnzahlSpiele` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Daten für Tabelle `personverwaltung`
--

INSERT INTO `personverwaltung` (`ID`, `Name`, `Geburtsdatum`, `Einsatzbereich`, `Position`, `Sportart`, `AnzahlSpiele`) VALUES
(10, 'Spieler8', '2000-06-10', 'Fussballspieler', 'Zentrale Stürmer', 'Fußball', '20'),
(12, 'Physiotherapeut 1', '1985-01-04', 'Physiotherapeut', '', '', ''),
(14, 'Person1', '1990-02-16', 'Handballspieler', 'Rückraum Links', 'Handball', '45'),
(15, 'Khalid', '2001-01-01', 'Tennisspieler', '', 'Tennis', '5'),
(16, 'Person2', '1999-01-02', 'Handballspieler', 'Rückraum Links', 'Handball', '16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
