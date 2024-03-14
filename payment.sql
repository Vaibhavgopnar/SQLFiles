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
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` varchar(100) NOT NULL,
  `paymentdate` date NOT NULL,
  `Paymenttype` varchar(200) NOT NULL,
  `Customerid` varchar(100) NOT NULL,
  `Cartid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `paymentdate`, `Paymenttype`, `Customerid`, `Cartid`) VALUES
('0023449', '2022-11-03', 'reference-0394j34', 'B12kr', 'c_104'),
('0294738484', '2022-11-01', 'UPI', '0023pkr', 'c_102'),
('488443565', '2022-11-02', 'phonepay', 'G_235', 'c_103'),
('4930980', '2022-11-04', 'bharatPay', 'V_Patil', 'c_101'),
('9849344', '2022-11-04', 'upi', 'Tj402', 'c_104');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `Customerid` (`Customerid`),
  ADD KEY `Cartid` (`Cartid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Customerid`) REFERENCES `customer` (`  Customer_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Cartid`) REFERENCES `cart` (`Cartid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
