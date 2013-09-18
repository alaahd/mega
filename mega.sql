-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 18, 2013 at 07:52 AM
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
DROP DATABASE IF EXISTS `mega`;
CREATE DATABASE IF NOT EXISTS `mega` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mega`;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`) VALUES
(1, 'Abu Dhabi '),
(2, 'Al Ain '),
(3, 'Dubai '),
(4, 'Northern Emirates '),
(5, 'Doha '),
(6, 'Bahrain '),
(7, 'Jeddah '),
(8, 'Riyadh '),
(9, 'Muscat '),
(10, 'Europe '),
(11, 'Africa '),
(12, 'Kuwait'),
(13, 'Other');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `qid`, `choice`, `file_name`) VALUES
(1, 1, 'Abu Dhabi Golf Club <span>(18th Hole, Par 5)</span>', 'img/logos/abu_dhabi.jpg'),
(2, 1, 'Abu Dhabi City Golf Club <span>(9th Hole, Par 4)</span>', 'img/logos/abu_dhab_city.jpg'),
(3, 1, 'Al Hamra Golf Club <span>(18th Hole, Par 5)</span>', 'img/logos/hamra.jpg'),
(4, 1, 'Almouj Golf Club <span>(8th Hole, Par 4)</span>', 'img/logos/almouj.jpg'),
(5, 1, 'Arabian Ranches Golf Club <span>(12th Hole, Par 3)</span>', 'img/logos/ranches.jpg'),
(6, 1, 'Dubai Creek Golf and Yacht Club <span>(18th Hole, Par 4)</span>', 'img/logos/creek.jpg'),
(7, 1, 'Emirates Golf Club <span>(18th Hole, Par 5)</span>', 'img/logos/emirates.jpg'),
(8, 1, 'Jumeirah Golf Estates - Earth Course <span>(18th Hole, Par 5)</span>', 'img/logos/jumeirah.jpg'),
(9, 1, 'Yas Links <span>(17th Hole, Par3)</span>', 'img/logos/yas.jpg'),
(10, 1, 'The Address Montgomerie <span>(18th Hole, Par 5)</span>', 'img/logos/address.jpg'),
(11, 1, 'Sharjah Golf and Shooting Club <span>(18th Hole, Par 4)</span>', 'img/logos/sharjah.jpg'),
(12, 1, 'Saadiyat Beach Golf Club <span>(5th Hole, Par 4)</span>', 'img/logos/saadiyat.jpg'),
(13, 1, 'Sahara Golf Resort <span>(7th Hole, Par 4)</span>', 'img/logos/sahara.jpg'),
(14, 1, 'Al Badia Golf Club <span>(18th Hole, Par 3)</span>', 'img/logos/badia.jpg'),
(15, 1, 'The Els Club <span>(18th Hole, Par 5)</span>', 'img/logos/els.jpg'),
(16, 1, 'Tower Links Golf Club <span>(18th Hole, Par 5)</span>', 'img/logos/tower.jpg'),
(17, 3, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(18, 3, 'Al Badia Golf Club', 'img/logos/badia.jpg'),
(19, 3, 'Almouj Golf Club', 'img/logos/almouj.jpg'),
(20, 3, 'Dubai Creek Golf and Yacht Club', 'img/logos/creek.jpg'),
(21, 3, 'Emirates Golf Club', 'img/logos/emirates.jpg'),
(22, 3, 'Jumeirah Golf Estates - Earth Course', 'img/logos/jumeirah.jpg'),
(23, 3, 'Yas Links', 'img/logos/yas.jpg'),
(24, 3, 'The Address Montgomerie', 'img/logos/address.jpg'),
(25, 3, 'Saadiyat Beach Golf Club', 'img/logos/saadiyat.jpg'),
(26, 3, 'The Els Club', 'img/logos/els.jpg'),
(27, 3, 'Sahara Golf Resort', 'img/logos/sahara.jpg'),
(28, 3, 'Royal Golf Club', 'img/logos/royal.jpg'),
(29, 4, 'Abu Dhabi City Golf Club', 'img/logos/abu_dhab_city.jpg'),
(30, 4, 'Al Hamra Golf Club', 'img/logos/hamra.jpg'),
(31, 4, 'Arabian Ranches Golf Club', 'img/logos/ranches.jpg'),
(32, 4, 'Jebel Ali Golf Resort', 'img/logos/jebel.jpg'),
(33, 4, 'Sharjah Golf and Shooting Club', 'img/logos/sharjah.jpg'),
(34, 4, 'Al Ain Equestrian, Shooting and Golf Club	', 'img/logos/alain.jpg'),
(35, 4, 'Tower Links Golf Club', 'img/logos/tower.jpg'),
(36, 4, 'The Els Club', 'img/logos/els.jpg'),
(37, 4, 'The Track, Meydan Golf Club', 'img/logos/meydan.jpg'),
(38, 5, 'Abu Dhabi Golf Club', 'img/logos/abu_dhabi.jpg'),
(39, 5, 'Abu Dhabi City Golf Club', 'img/logos/abu_dhab_city.jpg'),
(40, 5, 'Al Hamra Golf Club', 'img/logos/hamra.jpg'),
(41, 5, 'Dubai Creek Golf and Yacht Club', 'img/logos/creek.jpg'),
(42, 5, 'Emirates Golf Club', 'img/logos/emirates.jpg'),
(43, 5, 'Yas Links', 'img/logos/yas.jpg'),
(44, 5, 'The Address Montgomerie', 'img/logos/address.jpg'),
(45, 5, 'Sharjah Golf and Shooting Club', 'img/logos/sharjah.jpg'),
(46, 5, 'Saadiyat Beach Golf Club', 'img/logos/saadiyat.jpg'),
(47, 5, 'Al Ain Equestrian, Shooting and Golf Club	', 'img/logos/alain.jpg'),
(48, 5, 'The Els Club', 'img/logos/els.jpg'),
(49, 6, 'Abu Dhabi Golf Club <span>(The Golf institute)</span>', 'img/logos/abu_dhabi.jpg'),
(50, 6, 'Abu Dhabi City Golf Club', 'img/logos/abu_dhab_city.jpg'),
(51, 6, 'Al Badia Golf Club', 'img/logos/badia.jpg'),
(52, 6, 'Almouj Golf Club', 'img/logos/almouj.jpg'),
(53, 6, 'Arabian Ranches Golf Club', 'img/logos/ranches.jpg'),
(54, 6, 'Dubai Creek Golf and Yacht Club', 'img/logos/creek.jpg'),
(55, 6, 'Emirates Golf Club', 'img/logos/emirates.jpg'),
(56, 6, 'Yas Links', 'img/logos/yas.jpg'),
(57, 6, 'The Address Montgomerie', 'img/logos/address.jpg'),
(58, 6, 'Sharjah Golf and Shooting Club', 'img/logos/sharjah.jpg'),
(59, 6, 'Saadiyat Beach Golf Club', 'img/logos/saadiyat.jpg'),
(60, 6, 'The Els Club <span>(The Butch Harmon school of golf)</span>', 'img/logos/els.jpg'),
(61, 6, 'Royal Golf Club', 'img/logos/royal.jpg'),
(62, 7, 'Abu Dhabi Golf Club <span>(Cafe 28)</span>', 'img/logos/abu_dhabi.jpg'),
(63, 7, 'Abu Dhabi City Golf Club <span>(The Pavilion)</span>', 'img/logos/abu_dhab_city.jpg'),
(64, 7, 'Al Hamra Golf Club <span>(Lagoons Sports Bar)</span>', 'img/logos/hamra.jpg'),
(65, 7, 'Arabian Ranches Golf Club <span>(Ranches restaurant)</span>', 'img/logos/ranches.jpg'),
(66, 7, 'Dubai Creek Golf and Yacht Club <span>(Legends)</span>', 'img/logos/creek.jpg'),
(67, 7, 'Emirates Golf Club <span>(Le Classique)</span>', 'img/logos/emirates.jpg'),
(68, 7, 'Yas Links <span>(Hickory`s)</span>', 'img/logos/yas.jpg'),
(69, 7, 'The Address Montgomerie <span>(Links)</span>', 'img/logos/address.jpg'),
(70, 7, 'Saadiyat Beach Golf Club <span>(Hawksbill Restaurant)</span>', 'img/logos/saadiyat.jpg'),
(71, 7, 'The Els Club <span>(261 Restaurant)</span>', 'img/logos/els.jpg'),
(72, 7, 'Al Badia Golf Club <span>(Blades)</span>', 'img/logos/badia.jpg'),
(73, 7, 'The Track, Meydan Golf Club <span>(The Cube)</span>', 'img/logos/meydan.jpg'),
(74, 7, 'Doha Golf Club <span>(Spikes Lounge)</span>', 'img/logos/doha.jpg'),
(75, 8, 'Abu Dhabi Golf Club - Custom wear		', 'img/logos/abu_dhabi.jpg'),
(76, 8, 'Saadiyat Beach Golf Club - Custom wear		', 'img/logos/saadiyat.jpg'),
(77, 8, 'Ecco', 'img/logos/ecco.jpg'),
(78, 8, 'Callaway', 'img/logos/callaway.jpg'),
(79, 8, 'Mizuno', 'img/logos/mizuno.jpg'),
(80, 8, 'Cutter & Buck', 'img/logos/cutter.jpg'),
(81, 8, 'Oscar Jacobson', 'img/logos/oscar.jpg'),
(82, 8, 'LoudMouth Apparel', 'img/logos/loud.jpg'),
(83, 8, 'Wilson', 'img/logos/wilson.jpg'),
(84, 8, 'G Fore', 'img/logos/gfore.jpg'),
(85, 8, 'Galvin Green', 'img/logos/galvin.jpg'),
(86, 8, 'IJP Clothing', 'img/logos/ijp.jpg'),
(87, 8, 'J. Lindenberg', 'img/logos/linden.jpg'),
(88, 8, 'Oakley', 'img/logos/oakley.jpg'),
(89, 8, 'Swagg', 'img/logos/swag.jpg'),
(90, 8, 'PGA Tour Equipment', 'img/logos/pga.jpg'),
(91, 9, 'Abu Dhabi Golf Club <span>(Custom)</span>', 'img/logos/abu_dhabi.jpg'),
(92, 9, 'Saadiyat Beach Golf Club <span>(Custom)</span>', 'img/logos/saadiyat.jpg'),
(93, 9, 'Callaway', 'img/logos/callaway.jpg'),
(94, 9, 'Mizuno', 'img/logos/mizuno.jpg'),
(95, 9, 'Cleveland', 'img/logos/cleveland.jpg'),
(96, 9, 'Odyssey Putters', 'img/logos/odyssey.jpg'),
(97, 9, 'Wilson', 'img/logos/wilson.jpg'),
(98, 9, 'BagBoy', 'img/logos/bagboy.jpg'),
(99, 9, 'Champ', 'img/logos/champ.jpg'),
(100, 9, 'Oakley', 'img/logos/oakley.jpg'),
(101, 10, 'Abu Dhabi Golf Club Pro Shop', 'img/logos/abu_dhabi.jpg'),
(102, 10, 'Al Badia Golf Club Pro Shop	', 'img/logos/badia.jpg'),
(103, 10, 'Saadiyat Beach Golf Club Pro Shop', 'img/logos/saadiyat.jpg'),
(104, 10, 'Pro Golf <span>(Golf House)</span>', 'img/logos/golf.jpg'),
(105, 10, 'E-Golf Outlet	', 'img/logos/egolf.jpg'),
(106, 10, 'Ecco', 'img/logos/ecco.jpg'),
(107, 2, 'HSBC Championships <span>(In association with ADTCA, IMG & Abu Dhabi Golf Club)</span>', 'img/logos/hsbc.jpg'),
(108, 2, 'DP World Championships <span>(In association with European Tour &Jumeirah Golf Estates)</span>', 'img/logos/dp.jpg'),
(109, 2, 'Ras Al Khaimah Classic - Mena Tour - <span>(In association with the Towers Links Golf Club)</span>', 'img/logos/mena.jpg'),
(110, 2, 'Abu Dhabi Golf Citizen Open - Mena Tour - <span>(In association with Saadiyat Beach Golf Club)</span>', 'img/logos/mena.jpg'),
(111, 2, 'ShaikhMaktoum Dubai Open - Mena Tour - <span>(In association with Al Badia Golf Club)</span>', 'img/logos/mena.jpg'),
(112, 2, 'Dubai Desert Classic - <span>(In association with Golf in Dubai & Emirates Golf Club)</span>', 'img/logos/omega.jpg'),
(113, 2, 'Dubai Ladies Masters - <span>(In association with Golf in Dubai & Emirates Golf Club)</span>', 'img/logos/ladies.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`) VALUES
(1, 'Golf Hole of the Year\r\n'),
(2, 'Professional event of the Year\r\n'),
(3, 'Golf Course of the year above 400 AED / $110 (green fees)\r\n'),
(4, 'Golf Course of the year under 400 AED / $110 (green fees)\r\n'),
(5, 'Best Practice Facility of the Year\r\n'),
(6, 'Best Academy of the Year\r\n'),
(7, 'Best F&B Outlet of the Year\r\n'),
(8, 'Apparel of the Year\r\n'),
(9, 'Equipment of the Year\r\n'),
(10, 'Retailer of the Year');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `vote_sign` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_voter_id` int(11) NOT NULL,
  PRIMARY KEY (`vote_id`),
  KEY `fk_voter_id` (`fk_voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `location` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`);

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`fk_voter_id`) REFERENCES `voters` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
