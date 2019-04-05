-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 19, 2019 at 11:07 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbart`
--

-- --------------------------------------------------------

--
-- Table structure for table `artwork`
--

DROP TABLE IF EXISTS `artwork`;
CREATE TABLE `artwork` (
  `a_id` int(11) NOT NULL,
  `a_title` varchar(256) NOT NULL,
  `a_artist` varchar(256) NOT NULL,
  `a_location` varchar(256) NOT NULL,
  `a_img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artwork`
--

INSERT INTO `artwork` (`a_id`, `a_title`, `a_artist`, `a_location`, `a_img`) VALUES
(1, 'Girl with Ballon', 'Bansky', 'London', 'https://c1.staticflickr.com/4/3519/3989510611_5b1e70e459_b.jpg'),
(2, 'Love is in the Bin', 'Bansky', 'London', 'https://upload.wikimedia.org/wikipedia/en/f/fe/Love_is_in_the_Bin.jpg'),
(3, 'Pacman', 'Space invader', 'London', 'https://londoncallingblogdotnet.files.wordpress.com/2016/04/p1400130.jpg?w=920');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artwork`
--
ALTER TABLE `artwork`
  ADD PRIMARY KEY (`a_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artwork`
--
ALTER TABLE `artwork`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
