-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2024 at 06:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petsvictoria`
--

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `petid` int(11) NOT NULL,
  `petname` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `age` double DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`petid`, `petname`, `description`, `caption`, `age`, `type`, `location`, `image`) VALUES
(1, 'cat', 'it is a cat', NULL, 0.1, 'male', 'lashore', 'download.jpg'),
(2, 'CAT', 'Lovely Cats', NULL, 1, 'Lion', 'UAE', 'cat.jpeg'),
(3, 'Dog', 'A beautiful Dog', NULL, 8, 'Dog', 'UK', 'Dog.jpeg'),
(4, 'Dog', 'A beautiful Dog', NULL, 8, 'Dog', 'UK', 'Dog.jpeg'),
(5, 'Sparrow', 'A little wings but a big fly', NULL, 2, 'Bird', 'Forest', 'Bird.jpeg.crdownload');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`petid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `petid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
