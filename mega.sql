-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2013 at 03:13 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mega`
--
CREATE DATABASE IF NOT EXISTS `mega` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mega`;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `choice` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `qid`, `choice`, `file_name`) VALUES
(1, 1, 'Abu Dhabi Golf Club	', 'img/logos/abu_dhabi.jpg'),
(2, 1, 'Abu Dhabi City Golf Club', 'img/logos/abu_dhab_city.jpg'),
(3, 1, 'Almouj Golf Club', 'img/logos/almouj.jpg'),
(4, 1, 'Al Hamra Golf Club', 'img/logos/hamra.jpg'),
(5, 1, 'Arabian Ranches', 'img/logos/ranches.jpg'),
(6, 1, 'Dubai Creek', 'img/logos/creek.jpg'),
(7, 1, 'Emirates Hills', 'img/logos/hills.jpg'),
(8, 1, 'Yas Links', 'img/logos/yas.jpg'),
(9, 1, 'Address Montgomerie', 'img/logos/address.jpg'),
(10, 1, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(11, 1, 'Els Club', 'img/logos/els.jpg'),
(12, 1, 'Meydan Golf club', 'img/logos/meydan.jpg'),
(13, 2, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(14, 2, 'Abu Dhabi City Golf Club', 'img/logos/abu_dhab_city.jpg'),
(15, 2, 'Al Hamra Golf Club', 'img/logos/hamra.jpg'),
(16, 2, 'Arabian Ranches', 'img/logos/ranches.jpg'),
(17, 2, 'Dubai Creek', 'img/logos/creek.jpg'),
(18, 2, 'Emirates Hills', 'img/logos/hills.jpg'),
(19, 2, 'Jumeirah Estates', 'img/logos/jumeirah.jpg'),
(20, 2, 'Yas Links', 'img/logos/yas.jpg'),
(21, 2, 'Address Montgomerie', 'img/logos/address.jpg'),
(22, 2, 'Sharjah Golf Club', 'img/logos/sharjah.jpg'),
(23, 2, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(24, 2, 'Sahara Golf Club', 'img/logos/sahara.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`) VALUES
(1, 'F&B Outlet of the Year\r\n\r\n'),
(2, 'Golf Hole of the Year ');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `vote_sign` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
