-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 28. Feb 2021 um 14:28
-- Server Version: 5.6.13
-- PHP-Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `loginverwaltung`
--
CREATE DATABASE IF NOT EXISTS `loginverwaltung` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `loginverwaltung`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) DEFAULT NULL,
  `passwort` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `login`
--

INSERT INTO `login` (`ID`, `Username`, `passwort`, `status`) VALUES
(1, 'Admin', 'admin', NULL),
(2, 'Test', 'Test', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
