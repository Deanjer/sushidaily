-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 15, 2024 at 09:38 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sushi_daily`
--

-- --------------------------------------------------------

--
-- Table structure for table `products_english`
--

CREATE TABLE `products_english` (
  `id` int(4) NOT NULL,
  `name` varchar(32) NOT NULL,
  `line_disc` varchar(128) NOT NULL,
  `price` decimal(8,0) NOT NULL,
  `attributes` json NOT NULL,
  `menu` tinyint(1) NOT NULL,
  `drink` tinyint(1) NOT NULL,
  `catagory` varchar(16) NOT NULL,
  `warm` tinyint(1) NOT NULL,
  `pieces` int(4) NOT NULL,
  `img_path` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products_english`
--
ALTER TABLE `products_english`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products_english`
--
ALTER TABLE `products_english`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
