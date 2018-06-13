-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 08:33 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

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

CREATE TABLE `crimes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `creationTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('viewed','not viewed') NOT NULL DEFAULT 'not viewed'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`id`, `title`, `description`, `image`, `video`, `location`, `phone_number`, `creationTime`, `status`) VALUES
(1, 'murder', 'Abiriga gunned down', '1528619301808.png', NULL, 'kawempe', '0702563825', '2018-06-10 00:00:00', 'not viewed'),
(2, 'accident', 'it is a terrible accident', 'img/slides/flexslider/livingstone1.png', 'img/slides/flexslider/livingstone2.jpg', 'kawempe', '06594939093', '2018-05-30 00:00:00', 'viewed'),
(3, 'Strike happening live', 'it is wewew here in live', 'img/slides/flexslider/livingstone2.jpg', 'http://techslides.com/demos/sample-videos/small.mp4', 'nateete', '07546829392', '2018-05-21 00:00:00', 'viewed'),
(4, 'Traffic', 'dghh', '1528878818370.png', NULL, 'vbjk', '', '2018-06-13 08:33:54', 'not viewed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(4, 'admin', 'josh.jesusreigns@gmail.com', '9d1ed195075bd07061b9200ea8e4ff39', '2018-05-15 19:14:44'),
(5, 'admin', 'james@gmail.com', '9d1ed195075bd07061b9200ea8e4ff39', '2018-05-15 19:34:15'),
(6, 'josh', 'josh@gmail.com', '9d1ed195075bd07061b9200ea8e4ff39', '2018-05-15 19:36:24'),
(7, 'joshyu', 'jack@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2018-05-15 19:37:48'),
(8, 'sera', 'sera@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2018-05-15 19:45:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crimes`
--
ALTER TABLE `crimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crimes`
--
ALTER TABLE `crimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
