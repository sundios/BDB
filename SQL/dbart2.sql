-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 30, 2019 at 10:52 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dbart2`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `a_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `DOB` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`a_id`, `name`, `DOB`) VALUES
(1, 'Banksy', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `l_id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `a_number` int(10) DEFAULT NULL,
  `zipcode` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`l_id`, `country`, `city`, `address`, `a_number`, `zipcode`) VALUES
(1, 'USA', 'Los Angeles', 'Westwood Blvd', 1116, 99999),
(2, 'USA', 'Los Angeles', 'Westwood Blvd', 1116, NULL),
(3, 'USA', 'Los Angeles', 'S Broadway', 917, NULL),
(4, 'USA', 'Los Angeles', 'Melrose & Orange Ave', 696, NULL),
(5, 'USA', 'Los Angeles', 'Hollywood', 666, NULL),
(6, 'USA', 'Los Angeles', 'Somewhere', 666, NULL),
(7, 'USA', 'Los Angeles', 'Somewhere', 666, NULL),
(8, 'USA', 'Los Angeles', 'Somewhere', 666, NULL),
(9, 'England', 'London', 'Somewhere', 666, NULL),
(10, 'England', 'London', 'Somewhere', 666, NULL),
(11, 'England', 'London', 'A4018', 666, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `murals`
--

CREATE TABLE `murals` (
  `m_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `imageurl` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `year` int(4) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `l_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `murals`
--

INSERT INTO `murals` (`m_id`, `title`, `imageurl`, `about`, `year`, `a_id`, `l_id`) VALUES
(1, 'Crayon Boy', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-child-soldier.jpg?13187111832134195628', 'In this piece of art there is a little boy standing up like a soldier with a submachine gun. ', 2011, 1, 1),
(2, 'Swing Girl', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Swing-Girl.jpg?15240558570508503617', 'Located in a car park on Broadway, Downtown LA, Banksy making use of what was already there.', 2010, 1, 3),
(3, 'I’m Out Of Bed Rat', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Im-Out-Of-Bed-Rat.jpg?5919085270002948646', 'Often people will go to extraordinary lengths to preserve a Banksy artwork. ‘I’m Out Of Bed Rat’ ', 2002, 1, 4),
(4, 'Aerial Flower Girl', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Flower-Aerial_596c7a77-1c8c-4253-8dd6-adbe89547175.jpg?10390612518635165247', 'Flower Aerial Girl,features a young girl in silouhette tending a television aerial.', 2010, 1, 5),
(5, 'Old Woman (You Looked Better On MySpace)', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Old-Woman-You-looked-better-on-Myspace_d9b74a96-9f49-4eb8-b1f8-36c96af24f40.jpg?4823298307112422000', 'This piece appeared in Los Angeles in 2006 and makes fun at the large numbers of girls on MySpace', 2006, 1, 6),
(6, 'Better Out than in', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Better-Out-Than-In.jpg?12597876642204314338', 'Banksy’s Better Out Than In is believed to be a preview created to promote his New York Residency', 2000, 1, 7),
(7, 'Laugh Now', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Laugh-Now_765e44d7-7e61-4462-a1cf-f7e08fe6b4fd.jpg?9318552693457565551', '“Laugh Now” shows Monkey wearing a board proclaiming ‘Laugh now, but one day we’ll be in charge’', 2008, 1, 8),
(8, 'Steam Roller Traffic Warden ', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-steam-roller-traffic-warden.jpg?4059624363505583511', 'The Steam Roller Traffic Warden appeared on a steam roller parked at the kerbside in Lewisham', 2009, 1, 9),
(9, 'Soldiers Painting CND Sign', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Soldiers-Painting-Peace-Sign.jpg?16381050152911180238', 'Originally painted next to the Parliament in London, the original was confiscated for breaking laws', 2007, 1, 10),
(10, 'Man Hanging from Window', 'https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Man-Hanging-From-Window.jpg?15462249851633323291', 'This is perhaps one of the most famous of all Banksy pieces and shows clandestine affairs', 2009, 1, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `murals`
--
ALTER TABLE `murals`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `l_id` (`l_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `murals`
--
ALTER TABLE `murals`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `murals`
--
ALTER TABLE `murals`
  ADD CONSTRAINT `murals_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `artist` (`a_id`),
  ADD CONSTRAINT `murals_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `location` (`l_id`);
