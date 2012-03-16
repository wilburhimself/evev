-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2012 at 05:54 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ev`
--

-- --------------------------------------------------------

--
-- Table structure for table `events_going`
--

CREATE TABLE `events_going` (
  `user_id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_going`
--


-- --------------------------------------------------------

--
-- Table structure for table `fields_business`
--

CREATE TABLE `fields_business` (
  `node_id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_business`
--

INSERT INTO `fields_business` VALUES(5, 'Altos de Chavon', '809-737-3333', 'Un buen negocio', 'papajacks@gmail.com');
INSERT INTO `fields_business` VALUES(10, 'Casa de Campo', '809-523-2929', 'El campo de tiro de Casa de Campo es un lugar donde se pueden dar cartuchasos.', 'cdcshootingcenter@ccampo.com.do');

-- --------------------------------------------------------

--
-- Table structure for table `fields_event`
--

CREATE TABLE `fields_event` (
  `node_id` int(10) unsigned NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `description` text NOT NULL,
  `business` int(11) NOT NULL,
  KEY `node_id` (`node_id`,`business`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_event`
--

INSERT INTO `fields_event` VALUES(3, '2012-03-21 15:00:00', '2012-03-28 10:00:00', 'asdasdfasd', 5);
INSERT INTO `fields_event` VALUES(4, '2012-03-15 12:16:00', '2012-03-20 09:37:00', 'Un evento con todo y su descripción y todo lo que conlleva un evento, ve que lo que??', 5);
INSERT INTO `fields_event` VALUES(8, '2012-03-21 00:00:00', '2012-03-21 00:00:00', 'Un cumpleaños muy importante para todo esto', 10);
INSERT INTO `fields_event` VALUES(9, '2012-03-22 00:00:00', '0000-00-00 00:00:00', 'asdfasdf', 5);

-- --------------------------------------------------------

--
-- Table structure for table `fields_location`
--

CREATE TABLE `fields_location` (
  `node_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_location`
--

INSERT INTO `fields_location` VALUES(6, '');
INSERT INTO `fields_location` VALUES(7, '');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_name` varchar(100) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  PRIMARY KEY (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` VALUES('English', 'en');
INSERT INTO `languages` VALUES('Español', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE `node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `type` varchar(100) NOT NULL,
  `language` varchar(2) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `node`
--

INSERT INTO `node` VALUES(2, 'The same but in english', 'event', 'en', 0, 0, 1, 0);
INSERT INTO `node` VALUES(3, 'sadfasdf', 'event', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(4, 'El primer evento jevi jevi', 'event', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(5, 'Papa Jack''s', 'business', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(6, 'La Romana', 'location', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(7, 'Santo Domingo', 'location', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(8, 'Un Nuevo eventos', 'event', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(9, 'asdf', 'event', 'es', 0, 0, 0, 0);
INSERT INTO `node` VALUES(10, 'Casa de Campo Shooting Center', 'business', 'es', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(45) NOT NULL,
  `entity_id` int(10) unsigned NOT NULL,
  `filename` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `cover` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` VALUES(4, 'event-logo', 9, 'Screen_shot_2012-03-09_at_2.38.18_PM1.png', '0', 1331925970, 1, 0);
INSERT INTO `pictures` VALUES(5, 'event-logo', 9, 'Untitled3.png', '0', 1331926374, 1, 0);
INSERT INTO `pictures` VALUES(6, 'event-logo', 9, 'Untitled2.png', '0', 1331926568, 1, 0);
INSERT INTO `pictures` VALUES(7, 'event-logo', 8, 'Untitled1.png', '0', 1331926606, 1, 0);
INSERT INTO `pictures` VALUES(8, 'event-logo', 9, 'AdvanceRewards-Banner-ESP.jpg', '0', 1331926744, 1, 0);
INSERT INTO `pictures` VALUES(9, 'event-logo', 8, 'Casalife1.jpg', '0', 1331930094, 1, 0);
INSERT INTO `pictures` VALUES(10, 'event-logo', 4, 'home2.jpg', '0', 1331930156, 1, 0);
INSERT INTO `pictures` VALUES(11, 'event-logo', 3, 'casa_de_campo_villa_10_48.jpg', '0', 1331930697, 1, 0);
INSERT INTO `pictures` VALUES(12, 'event-logo', 8, 'casa_de_campo_villa_8_57.jpg', '0', 1331930729, 1, 0);
INSERT INTO `pictures` VALUES(13, 'business-logo', 5, 'ALTOS-symbol.gif', '0', 1331931071, 1, 0);
INSERT INTO `pictures` VALUES(14, 'business-logo', 10, 'CDC-Logo.gif', '0', 1331932096, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `original_id` int(11) unsigned NOT NULL,
  `translation_id` int(11) NOT NULL,
  `translation_language` varchar(12) NOT NULL,
  PRIMARY KEY (`original_id`,`translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` VALUES(1, 2, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `passw` varchar(45) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'wilbur', '2a9aa6d77bbd5f3b02b6b196a17782d874db591f', 'wsuero@silgon.net', 'Wilbur Suero', 1);
