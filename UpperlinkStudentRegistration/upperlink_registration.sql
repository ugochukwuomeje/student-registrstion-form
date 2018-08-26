-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2018 at 12:57 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `upperlink_registration`
--
CREATE DATABASE IF NOT EXISTS `upperlink_registration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `upperlink_registration`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sn` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(1000) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `coverletter` varchar(100) NOT NULL,
  `passport` varchar(1000) NOT NULL,
  `resume` varchar(100) NOT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sn`, `firstname`, `surname`, `phonenumber`, `email`, `coverletter`, `passport`, `resume`) VALUES
(1, 'adajkhdj', 'jhdjfhjk', 'skjgsfgkj', 'kjfsjfgsjk', ' kjfsfhjshfkjsh', 'C:\\stuednt_registration_pics\\filename="C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\stad.jpg', 'C:\\stuednt_registration_resume\\filename="C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\stad.jpg'),
(2, 'dfkjghj', 'kjhfjshjfh', 'kjsdhfjhsjk', 'kjfhgjshj', ' kjshfjghsjh', 'C:\\stuednt_registration_pics\\C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\stad.jpg', 'C:\\stuednt_registration_resume\\C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\stad.jpg'),
(3, 'skjfkjhdfjkh', 'skdjhfjh', 'kjahsdjfhakj', 'ksjdhfjshkj', ' kjdfhjsdhfk', 'C:\\stuednt_registration_pics\\C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\stad.jpg', 'C:\\stuednt_registration_resume\\C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\stad.jpg'),
(4, 'skdjfghajk', 'skjfgsjhk', 'kfjhgsj', 'kjfjsk', ' kjfsjk', 'C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\stad.jpg218', 'C:\\Users\\Omausom Global Ltd\\Pictures\\almega images\\services.php555');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
