-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 05, 2013 at 05:43 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `qid`, `choice`, `file_name`) VALUES
(1, 1, 'ABU DHABI CITY GOLF 9TH HOLE', 'img/op1.png'),
(2, 1, 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE', 'img/op1.png'),
(3, 1, 'ABU DHABI CITY GOLF 9TH HOLE', 'img/op1.png'),
(4, 1, 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE', 'img/op1.png'),
(5, 2, 'ABU DHABI CITY GOLF 9TH HOLE', 'img/op1.png'),
(6, 2, 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE', 'img/op1.png'),
(7, 2, 'ABU DHABI CITY GOLF 9TH HOLE', 'img/op1.png'),
(8, 2, 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE', 'img/op1.png');

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
(1, 'Golf course of the Year above 400 AED'),
(2, 'Golf course of the Year under 400 AED');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`vote_id`, `qid`, `option_id`, `vote_sign`, `name`, `email`, `phone`) VALUES
(1, 1, 1, '2013-09-05 17:07:01', '300x250 First One', 'aghoshx@gmail.com', '917736699979'),
(2, 2, 5, '2013-09-05 17:07:01', '300x250 First One', 'aghoshx@gmail.com', '917736699979'),
(3, 1, 2, '2013-09-05 17:07:16', 'Grabber', 'aghoshx@gmail.com', '917736699979'),
(4, 2, 5, '2013-09-05 17:07:16', 'Grabber', 'aghoshx@gmail.com', '917736699979'),
(5, 1, 1, '2013-09-05 17:07:33', 'Grabber', 'aghoshx@gmail.com', '917736699979'),
(6, 2, 5, '2013-09-05 17:07:33', 'Grabber', 'aghoshx@gmail.com', '917736699979'),
(7, 1, 3, '2013-09-05 17:07:49', '300x250 First One', 'aghoshx@gmail.com', '917736699979'),
(8, 2, 7, '2013-09-05 17:07:49', '300x250 First One', 'aghoshx@gmail.com', '917736699979'),
(9, 1, 1, '2013-09-05 17:19:55', '', '', ''),
(10, 2, 5, '2013-09-05 17:19:55', '', '', ''),
(11, 1, 2, '2013-09-05 17:19:59', '', '', ''),
(12, 2, 5, '2013-09-05 17:19:59', '', '', ''),
(13, 1, 3, '2013-09-05 17:20:02', '', '', ''),
(14, 2, 5, '2013-09-05 17:20:02', '', '', ''),
(15, 1, 4, '2013-09-05 17:20:04', '', '', ''),
(16, 2, 5, '2013-09-05 17:20:04', '', '', ''),
(17, 1, 1, '2013-09-05 17:20:06', '', '', ''),
(18, 2, 5, '2013-09-05 17:20:06', '', '', ''),
(19, 1, 1, '2013-09-05 17:20:08', '', '', ''),
(20, 2, 6, '2013-09-05 17:20:08', '', '', ''),
(21, 1, 1, '2013-09-05 17:20:10', '', '', ''),
(22, 2, 6, '2013-09-05 17:20:10', '', '', ''),
(23, 1, 1, '2013-09-05 17:20:10', '', '', ''),
(24, 2, 6, '2013-09-05 17:20:10', '', '', ''),
(25, 1, 1, '2013-09-05 17:20:10', '', '', ''),
(26, 2, 6, '2013-09-05 17:20:10', '', '', ''),
(27, 1, 1, '2013-09-05 17:20:10', '', '', ''),
(28, 2, 6, '2013-09-05 17:20:10', '', '', ''),
(29, 1, 1, '2013-09-05 17:20:12', '', '', ''),
(30, 2, 7, '2013-09-05 17:20:12', '', '', ''),
(31, 1, 1, '2013-09-05 17:20:12', '', '', ''),
(32, 2, 7, '2013-09-05 17:20:12', '', '', ''),
(33, 1, 1, '2013-09-05 17:20:12', '', '', ''),
(34, 2, 7, '2013-09-05 17:20:12', '', '', ''),
(35, 1, 1, '2013-09-05 17:20:12', '', '', ''),
(36, 2, 7, '2013-09-05 17:20:12', '', '', ''),
(37, 1, 1, '2013-09-05 17:20:14', '', '', ''),
(38, 2, 8, '2013-09-05 17:20:14', '', '', ''),
(39, 1, 1, '2013-09-05 17:20:16', '', '', ''),
(40, 2, 5, '2013-09-05 17:20:16', '', '', ''),
(41, 1, 1, '2013-09-05 17:20:18', '', '', ''),
(42, 2, 6, '2013-09-05 17:20:18', '', '', '');

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
