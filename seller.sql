-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 07:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `sellerid` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Mobileno` int(11) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ProductCategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`sellerid`, `Name`, `Mobileno`, `password`, `ProductCategory`) VALUES
('er455k', 'Jully', 59545554, 'li9345n', 'Accessories'),
('kjhkj54', 'Danni', 345665656, 'ggj54t02', 'Laptop'),
('S-66jd', 'Javed', 483595847, 'ghd3435j', 'fashion'),
('S111_MH', 'Abhi', 8549505, 'V4590nd', 'Accessories'),
('S123_KR', 'Vinay', 84564865, '90hf3e', 'Phones');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sellerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
