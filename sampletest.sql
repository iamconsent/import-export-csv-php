-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 11:17 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampletest`
--

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field1` varchar(255) NOT NULL,
  `field2` varchar(255) NOT NULL,
  `field3` varchar(255) NOT NULL,
  `field4` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `game` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`id`, `name`, `field1`, `field2`, `field3`, `field4`, `status`, `game`) VALUES
(1, 'Peter England', '125', 'XP123', '400', '10', 'A', 'Skyrim'),
(2, 'Arrow', '360', 'PP123', '900', '12', 'A', 'Detroit'),
(3, 'Allen Solly', '456', 'OP78456', '520', '3', 'A', 'Undertale'),
(4, 'Raymond', '756', 'SS789465', '1022', '36', 'A', 'Heels me'),
(5, 'Grasim', '899', 'GS132645', '640', '55', 'A', 'Try Hard'),
(6, 'Levis', '885', 'LL123465', '1500', '36', 'A', ' Fortnite'),
(7, 'Lee', '74', 'Lee4556', '960', '44', 'A', ' Fallout'),
(8, 'Levis', '885', 'LL123465', '1500', '36', 'A', ' Fortnite'),
(9, 'Lee', '74', 'Lee4556', '960', '44', 'A', ' Fallout');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products1`
--

CREATE TABLE `tbl_products1` (
  `products_id` int(11) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(255) NOT NULL,
  `products_price` double NOT NULL,
  `products_weight` double NOT NULL,
  `products_status` enum('A','I') NOT NULL DEFAULT 'A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products1`
--

INSERT INTO `tbl_products1` (`products_id`, `products_name`, `products_quantity`, `products_model`, `products_price`, `products_weight`, `products_status`) VALUES
(4, 'Raymond', 756, 'SS789465', 1022, 36, 'A'),
(3, 'Allen Solly', 456, 'OP78456', 520, 3, 'A'),
(2, 'Arrow', 360, 'PP123', 900, 12, 'A'),
(1, 'Peter England', 125, 'XP123', 400, 10, 'A'),
(5, 'Grasim', 899, 'GS132645', 640, 55, 'A'),
(6, 'Levis', 885, 'LL123465', 1500, 36, 'A'),
(7, 'Lee', 74, 'Lee4556', 960, 44, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products2`
--

CREATE TABLE `tbl_products2` (
  `products_id` int(11) NOT NULL,
  `products_name` varchar(255) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(255) NOT NULL,
  `products_price` double NOT NULL,
  `products_weight` double NOT NULL,
  `products_status` enum('A','I') NOT NULL DEFAULT 'A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products2`
--

INSERT INTO `tbl_products2` (`products_id`, `products_name`, `products_quantity`, `products_model`, `products_price`, `products_weight`, `products_status`) VALUES
(1, 'sam', 1, 'md', 23.5, 1.5, ''),
(2, 'Raj', 2, 'pop', 51.02, 22, ''),
(3, 'sam', 1, 'md', 23.5, 1.5, ''),
(4, 'Raj', 2, 'pop', 51.02, 22, ''),
(5, 'sam', 1, 'md', 23.5, 1.5, ''),
(6, 'Raj', 2, 'pop', 51.02, 22, ''),
(7, 'sam', 1, 'md', 23.5, 1.5, ''),
(8, 'Raj', 2, 'pop', 51.02, 22, ''),
(9, 'sam', 1, 'md', 23.5, 1.5, ''),
(10, 'Raj', 2, 'pop', 51.02, 22, ''),
(11, 'sam', 1, 'md', 23.5, 1.5, ''),
(12, 'Raj', 2, 'pop', 51.02, 22, ''),
(13, 'sam', 1, 'md', 23.5, 1.5, ''),
(14, 'Raj', 2, 'pop', 51.02, 22, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products1`
--
ALTER TABLE `tbl_products1`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `tbl_products2`
--
ALTER TABLE `tbl_products2`
  ADD PRIMARY KEY (`products_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products1`
--
ALTER TABLE `tbl_products1`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products2`
--
ALTER TABLE `tbl_products2`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
