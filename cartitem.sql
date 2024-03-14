-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 07:26 PM
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
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `Cartid` varchar(100) NOT NULL,
  `Productid` varchar(100) NOT NULL,
  `DateAdded` date NOT NULL,
  `purchased` varchar(3) DEFAULT 'NO',
  `itemquantity` int(11) DEFAULT NULL,
  `customerid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartitem`
--

INSERT INTO `cartitem` (`Cartid`, `Productid`, `DateAdded`, `purchased`, `itemquantity`, `customerid`) VALUES
('c_101', 'P_3', '2022-11-07', 'NO', 7, '023pkr'),
('c_102', 'P_1', '2022-11-22', 'y', 3, 'B12kr'),
('c_103', 'P_1', '2022-10-19', 'Y', 5, 'V_patil'),
('c_104', 'P_3', '2022-11-03', 'Y', 6, 'G235'),
('c_105', 'P_1', '2022-11-01', 'NO', 3, 'Tj402');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`Cartid`),
  ADD KEY `Productid` (`Productid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD CONSTRAINT `cartitem_ibfk_1` FOREIGN KEY (`Cartid`) REFERENCES `cart` (`Cartid`),
  ADD CONSTRAINT `cartitem_ibfk_2` FOREIGN KEY (`Productid`) REFERENCES `product` (`Productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
