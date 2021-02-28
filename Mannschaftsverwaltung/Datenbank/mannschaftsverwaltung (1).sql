-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 28. Feb 2021 um 14:26
-- Server Version: 5.6.13
-- PHP-Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `mannschaftsverwaltung`
--
CREATE DATABASE IF NOT EXISTS `mannschaftsverwaltung` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mannschaftsverwaltung`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mannschaft`
--

CREATE TABLE IF NOT EXISTS `mannschaft` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mannschaftsname` varchar(45) DEFAULT NULL,
  `Sportart` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `mannschaft`
--

INSERT INTO `mannschaft` (`ID`, `Mannschaftsname`, `Sportart`) VALUES
(2, 'Test', 'Fußball'),
(4, 'Test1', 'Fußball'),
(5, 'Bayer 04 Leverkusen', 'Fußball'),
(6, 'Test', 'Fußball'),
(11, 'Mannschaft2', 'Fußball');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mannschaftsverwaltung`
--

CREATE TABLE IF NOT EXISTS `mannschaftsverwaltung` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mannschaft_id` int(11) DEFAULT NULL,
  `Person_id` int(11) DEFAULT NULL,
  `person_name` varchar(45) DEFAULT NULL,
  `person_Einsatzsbereich` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Mannschaft_id` (`Mannschaft_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Daten für Tabelle `mannschaftsverwaltung`
--

INSERT INTO `mannschaftsverwaltung` (`ID`, `Mannschaft_id`, `Person_id`, `person_name`, `person_Einsatzsbereich`) VALUES
(18, 4, 12, 'Physiotherapeut 1', 'Physiotherapeut'),
(27, 5, 12, 'Physiotherapeut 1', 'Physiotherapeut'),
(29, 6, 15, 'Khalid', 'Tennisspieler'),
(30, 6, 16, 'Person2', 'Handballspieler'),
(33, 2, 10, 'Spieler8', 'Fussballspieler');

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `mannschaftsverwaltung`
--
ALTER TABLE `mannschaftsverwaltung`
  ADD CONSTRAINT `mannschaftsverwaltung_ibfk_1` FOREIGN KEY (`Mannschaft_id`) REFERENCES `mannschaft` (`ID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
