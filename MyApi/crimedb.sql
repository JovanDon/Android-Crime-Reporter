-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 16, 2018 at 11:21 AM
-- Server version: 5.5.28
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crimedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
CREATE TABLE IF NOT EXISTS `crimes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `creationTime` datetime NOT NULL,
  `status` enum('viewed','not viewed') NOT NULL DEFAULT 'not viewed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`id`, `title`, `description`, `image`, `video`, `location`, `phone_number`, `creationTime`, `status`) VALUES
(1, 'accident', 'it is a terrible accident', 'img/slides/flexslider/livingstone1.png', 'img/slides/flexslider/livingstone2.jpg', 'kawempe', '06594939093', '2018-05-30 00:00:00', 'viewed'),
(2, 'Strike happening live', 'it is wewew here in live', 'img/slides/flexslider/livingstone2.jpg', 'http://techslides.com/demos/sample-videos/small.mp4', 'nateete', '07546829392', '2018-05-21 00:00:00', 'viewed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(4, 'admin', 'josh.jesusreigns@gmail.com', '9d1ed195075bd07061b9200ea8e4ff39', '2018-05-15 19:14:44'),
(5, 'admin', 'james@gmail.com', '9d1ed195075bd07061b9200ea8e4ff39', '2018-05-15 19:34:15'),
(6, 'josh', 'josh@gmail.com', '9d1ed195075bd07061b9200ea8e4ff39', '2018-05-15 19:36:24'),
(7, 'joshyu', 'jack@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2018-05-15 19:37:48'),
(8, 'sera', 'sera@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2018-05-15 19:45:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
