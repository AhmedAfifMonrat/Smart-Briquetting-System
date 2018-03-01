-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2017 at 03:04 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `humidex`
--

-- --------------------------------------------------------

--
-- Table structure for table `control`
--

CREATE TABLE `control` (
  `bucketlevel1` varchar(100) NOT NULL,
  `heatlevel` varchar(100) NOT NULL,
  `hotairflow` varchar(100) NOT NULL,
  `conveyor1` varchar(100) NOT NULL,
  `conveyor2` varchar(100) NOT NULL,
  `sawmotor` varchar(100) NOT NULL,
  `bucketlevel2` varchar(100) NOT NULL,
  `bucketlevel3` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `control`
--

INSERT INTO `control` (`bucketlevel1`, `heatlevel`, `hotairflow`, `conveyor1`, `conveyor2`, `sawmotor`, `bucketlevel2`, `bucketlevel3`) VALUES
('50', '70', '40', 'on', 'on', 'on', '30', '60');

-- --------------------------------------------------------

--
-- Table structure for table `humidata`
--

CREATE TABLE `humidata` (
  `id` int(11) NOT NULL,
  `humitime` datetime NOT NULL,
  `temperature` varchar(100) NOT NULL,
  `humidity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `humidata`
--

INSERT INTO `humidata` (`id`, `humitime`, `temperature`, `humidity`) VALUES
(198, '2017-11-25 21:51:11', '26', '22'),
(199, '2017-11-25 21:51:42', '26', '23'),
(200, '2017-11-25 21:52:13', '28', '23'),
(201, '2017-11-25 21:52:44', '34', '31'),
(202, '2017-11-25 21:53:15', '37', '33'),
(203, '2017-11-25 21:53:45', '37', '34'),
(204, '2017-11-25 21:54:16', '37', '34'),
(205, '2017-11-25 21:54:47', '37', '34'),
(206, '2017-11-25 21:55:18', '37', '33'),
(207, '2017-11-25 21:55:49', '35', '32'),
(208, '2017-11-25 21:56:20', '37', '33'),
(209, '2017-11-25 21:56:51', '35', '32'),
(210, '2017-11-25 21:57:22', '33', '29'),
(212, '2017-11-16 09:04:09', '98', '45');

-- --------------------------------------------------------

--
-- Table structure for table `humidex`
--

CREATE TABLE `humidex` (
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `humidata`
--
ALTER TABLE `humidata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `humidata`
--
ALTER TABLE `humidata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
