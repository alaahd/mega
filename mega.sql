-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2013 at 06:00 PM
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
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `location` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location`) VALUES
('Abu Dhabi '),
('Al Ain '),
('Dubai '),
('Northern Emirates '),
('Doha '),
('Bahrain '),
('Jeddah '),
('Riyadh '),
('Muscat '),
('Europe '),
('Africa '),
('Other ');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

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
(24, 2, 'Sahara Golf Club', 'img/logos/sahara.jpg'),
(25, 3, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(26, 3, 'Al Badia', 'img/logos/badia.jpg'),
(27, 3, 'Jumeirah Estates', 'img/logos/jumeirah.jpg'),
(28, 3, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(29, 3, 'Tower Links', 'img/logos/tower.jpg'),
(30, 3, 'IMG', 'img/logos/img.jpg'),
(31, 3, 'European Tour', 'img/logos/europe.jpg'),
(32, 4, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(33, 4, 'Abu Dhabi City Golf Club (9th Hole, Par 4)', 'img/logos/abu_dhab_city.jpg'),
(34, 4, 'Al Hamra Golf Club (18th Hole, Par 5)', 'img/logos/hamra.jpg'),
(35, 4, 'Arabian Ranches (12th Hole, Par 3)', 'img/logos/ranches.jpg'),
(36, 4, 'Dubai Creek (18th, Par 4)', 'img/logos/creek.jpg'),
(37, 4, 'Emirates Golf Club (18th, Par 5)', 'img/logos/emirates.jpg'),
(38, 4, 'Jumeirah Estates', 'img/logos/jumeirah.jpg'),
(39, 4, 'Yas Links (17th, Par3)', 'img/logos/yas.jpg'),
(40, 4, 'Address Montgomerie (18th, Par 5)', 'img/logos/address.jpg'),
(41, 4, 'Sharjah Golf Club (18th, Par 4)', 'img/logos/sharjah.jpg'),
(42, 4, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(43, 4, 'Sahara Golf Club (7th Hole, Par 4)', 'img/logos/sahara.jpg'),
(44, 4, 'Al Badia (18th Hole, Par 3)', 'img/logos/badia.jpg'),
(45, 5, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(46, 5, 'Al Hamra Golf Club', 'img/logos/hamra.jpg'),
(47, 5, 'Almouj Golf Club', 'img/logos/almouj.jpg'),
(48, 5, 'Arabian Ranches', 'img/logos/ranches.jpg'),
(49, 5, 'Jebel Ali', 'img/logos/jebel.jpg'),
(50, 5, 'Al Ain Equestrian', 'img/logos/alain.jpg'),
(51, 5, 'Tower Links', 'img/logos/tower.jpg'),
(52, 5, 'Els Club', 'img/logos/els.jpg'),
(53, 5, 'Meydan Golf Club', 'img/logos/meydan.jpg'),
(54, 5, 'Royal Golf Club', 'img/logos/royal.jpg'),
(55, 5, 'Sharjah Golf Club', 'img/logos/sharjah.jpg'),
(56, 6, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(57, 6, 'Al Badia', 'img/logos/badia.jpg'),
(58, 6, 'Al Hamra Golf Club', 'img/logos/hamra.jpg'),
(59, 6, 'Dubai Creek', 'img/logos/creek.jpg'),
(60, 6, 'Emirates Golf Club', 'img/logos/emirates.jpg'),
(61, 6, 'Jumeirah Estates', 'img/logos/jumeirah.jpg'),
(62, 6, 'Yas Links', 'img/logos/yas.jpg'),
(63, 6, 'Address Montgomerie', 'img/logos/address.jpg'),
(64, 6, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(65, 6, 'Tower Links', 'img/logos/tower.jpg'),
(66, 6, 'Els Club', 'img/logos/els.jpg'),
(67, 6, 'Sahara Golf Club', 'img/logos/sahara.jpg'),
(68, 6, 'Royal Golf Club', 'img/logos/royal.jpg'),
(69, 6, 'Doha Golf Club', 'img/logos/doha.jpg'),
(70, 7, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(71, 7, 'Abu Dhabi City Golf Club (The Pavilion)', 'img/logos/abu_dhab_city.jpg'),
(72, 7, 'Almouj Golf Club (Academy Restaurant)', 'img/logos/almouj.jpg'),
(73, 7, 'Al Hamra Golf Club (Lagoons Sports Bar)', 'img/logos/hamra.jpg'),
(74, 7, 'Arabian Ranches (Ranches restaurant)', 'img/logos/ranches.jpg'),
(75, 7, 'Dubai Creek (Legends)', 'img/logos/creek.jpg'),
(76, 7, 'Emirates Golf Club (Le Classique)', 'img/logos/emirates.jpg'),
(77, 7, 'Yas Links (Hickory’s)', 'img/logos/yas.jpg'),
(78, 7, 'Address Montgomerie (Links)', 'img/logos/address.jpg'),
(79, 7, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(80, 7, 'Els Club (261 Restaurant)', 'img/logos/els.jpg'),
(81, 7, 'Al Badia (Blades)', 'img/logos/badia.jpg'),
(82, 7, 'Meydan Golf Club (The track)', 'img/logos/meydan.jpg'),
(83, 7, 'Doha Golf Club (Spikes Lounge)', 'img/logos/doha.jpg'),
(84, 8, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(85, 8, 'Abu Dhabi City Golf Club', 'img/logos/abu_dhab_city.jpg'),
(86, 8, 'Almouj Golf Club', 'img/logos/almouj.jpg'),
(87, 8, 'Al Hamra Golf Club', 'img/logos/hamra.jpg'),
(88, 8, 'Dubai Creek', 'img/logos/creek.jpg'),
(89, 8, 'Emirates Golf Club', 'img/logos/emirates.jpg'),
(90, 8, 'Yas Links', 'img/logos/yas.jpg'),
(91, 8, 'Address Montgomerie', 'img/logos/address.jpg'),
(92, 8, 'Sharjah Golf Club', 'img/logos/sharjah.jpg'),
(93, 8, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(94, 8, 'Al Ain Equestrian', 'img/logos/alain.jpg'),
(95, 9, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(96, 9, 'Abu Dhabi City Golf Club', 'img/logos/abu_dhab_city.jpg'),
(97, 9, 'Al Badia', 'img/logos/badia.jpg'),
(98, 9, 'Arabian Ranches', 'img/logos/ranches.jpg'),
(99, 9, 'Dubai Creek', 'img/logos/creek.jpg'),
(100, 9, 'Emirates Golf Club', 'img/logos/emirates.jpg'),
(101, 9, 'Yas Links', 'img/logos/yas.jpg'),
(102, 9, 'Address Montgomerie', 'img/logos/address.jpg'),
(103, 9, 'Sharjah Golf Club', 'img/logos/sharjah.jpg'),
(104, 9, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(105, 9, 'Els Club', 'img/logos/els.jpg'),
(106, 9, 'Doha Golf Club', 'img/logos/doha.jpg'),
(107, 9, 'Royal Golf Club', 'img/logos/royal.jpg'),
(108, 10, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(109, 10, 'Almouj Golf Club', 'img/logos/almouj.jpg'),
(110, 10, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(111, 10, 'Pro Sports - Titleist', 'img/logos/titlesit.jpg'),
(112, 10, 'Pro Sports – Ping', 'img/logos/ping.jpg'),
(113, 10, 'Pro Sports – Pinnacle', 'img/logos/pinacle.jpg'),
(114, 10, 'Pro Sports – FootJoy', 'img/logos/footjoy.jpg'),
(115, 10, 'Pro Sports – Custom Fit', 'img/logos/sport.jpg'),
(116, 10, 'Pro Golf – Callaway', 'img/logos/callaway.jpg'),
(117, 10, 'Pro Golf - Mizuno', 'img/logos/mizuno.jpg'),
(118, 10, 'Pro Golf – TaylorMade', 'img/logos/taylor.jpg'),
(119, 10, 'Pro Golf – Cleveland', 'img/logos/cleveland.jpg'),
(120, 10, 'Pro Golf – Srixon', 'img/logos/srixon.jpg'),
(121, 10, 'Pro Golf – Top-Flite', 'img/logos/flite.jpg'),
(122, 10, 'Pro Golf – Odyssey Putters', 'img/logos/odyssey.jpg'),
(123, 10, 'Pro Golf – Wilson', 'img/logos/wilson.jpg'),
(124, 10, 'Pro Golf – US Kids Golf ', 'img/logos/uskids.jpg'),
(125, 10, 'Pro Golf – MD Golf', 'img/logos/mdgolf.jpg'),
(126, 10, 'Pro Golf – Ogio', 'img/logos/ogio.jpg'),
(127, 10, 'Pro Golf – Lambda', 'img/logos/lam.jpg'),
(128, 10, 'Pro Golf – Cutter & Buck', 'img/logos/cutter.jpg'),
(129, 10, 'Pro Golf – Oscar Jacobson', 'img/logos/oscar.jpg'),
(130, 10, 'Pro Golf – Adidas Apparel', 'img/logos/adidas.jpg'),
(131, 10, 'Pro Golf – Swagg Apparel', 'img/logos/swag.jpg'),
(132, 10, 'Pro Golf – LoudMouth Apparel', 'img/logos/loud.jpg'),
(133, 10, 'DG Golf – Galvin Green', 'img/logos/galvin.jpg'),
(155, 11, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(156, 11, 'Almouj Golf Club', 'img/logos/almouj.jpg'),
(157, 11, 'Saadiyat Golf Club', 'img/logos/saadiyat.jpg'),
(158, 11, 'Pro Sports - Titleist', 'img/logos/titlesit.jpg'),
(159, 11, 'Pro Sports – Ping', 'img/logos/ping.jpg'),
(160, 11, 'Pro Sports – Pinnacle', 'img/logos/pinacle.jpg'),
(161, 11, 'Pro Sports – FootJoy', 'img/logos/footjoy.jpg'),
(162, 11, 'Pro Golf – Callaway', 'img/logos/callaway.jpg'),
(163, 11, 'Pro Golf - Mizuno', 'img/logos/mizuno.jpg'),
(164, 11, 'Pro Golf – TaylorMade', 'img/logos/taylor.jpg'),
(165, 11, 'Pro Golf – Cleveland', 'img/logos/cleveland.jpg'),
(166, 11, 'Pro Golf – Srixon', 'img/logos/srixon.jpg'),
(167, 11, 'Pro Golf – Top-Flite', 'img/logos/flite.jpg'),
(168, 11, 'Pro Golf – Odyssey Putters', 'img/logos/odyssey.jpg'),
(169, 11, 'Pro Golf – Wilson', 'img/logos/wilson.jpg'),
(170, 11, 'Pro Golf – US Kids Golf ', 'img/logos/uskids.jpg'),
(171, 11, 'Pro Golf – MD Golf', 'img/logos/mdgolf.jpg'),
(172, 11, 'Pro Golf – BagBoy', 'img/logos/bagboy.jpg'),
(173, 11, 'Pro Golf – Ogio', 'img/logos/ogio.jpg'),
(174, 11, 'DG Golf – G/Four', 'img/logos/gfore.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`) VALUES
(1, 'F&B Outlet of the Year\r\n\r\n'),
(2, 'Golf Hole of the Year '),
(3, 'Professional Event of the Year'),
(4, 'Golf Hole of the Year '),
(5, 'Golf Course of the Year Under 400AED'),
(6, 'Golf Course of the Year Above 400AED'),
(7, 'F&B of the Year'),
(8, 'Best Practice Facility of the Year'),
(9, 'Best Academy of the Year'),
(10, 'Apparel of the Year'),
(11, 'Equipment of the Year');

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
  `location` varchar(70) NOT NULL,
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
