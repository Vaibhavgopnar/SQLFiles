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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` varchar(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` datetime NOT NULL,
  `city` varchar(100) NOT NULL,
  `diliveryAddress` varchar(500) NOT NULL,
  `contact` int(11) NOT NULL,
  `Currentorder` varchar(100) NOT NULL,
  `PrevOrder` varchar(100) NOT NULL,
  `Cartid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Name`, `email`, `gender`, `dob`, `city`, `diliveryAddress`, `contact`, `  Currentorder`, `PrevOrder`, `Cartid`) VALUES
('0023pkr', 'Aishwarya', 'aish12@gmail.com', 'female', '2003-11-14 15:23:33', 'mumbai', 'dadar', 888859944, 'Dress', 'lehanga', 'c_105'),
('B12kr', 'Abhi', 'abhi34@gmail.com', 'male', '1995-11-02 15:19:36', 'Bangalore', 'bangalore', 988849445, 'Headphone', 'Shirts', 'c_103'),
('G_235', 'Ganesh', 'ganesh123@gmail.com', 'male', '2022-11-05 08:11:53', 'Pune', 'Hadapsar Pune', 456777653, 'T_Shirt', 'Cap', 'c_102'),
('rtlel', 'vikas', 'vk2@gmail.com', 'm', '2022-11-20 18:38:08', 'latur', 'latur', 987987, 'pen', 'book', '234'),
('Tj402', 'Vankatesh', 'vanki@980@gmail.com', 'male', '2002-11-21 15:19:36', 'Chennai', 'chennai', 78906483, 'Homethreater', 'sounds', 'c_104'),
('V_Patil', 'Vaibhav', 'vaibhav123@gmail.com', 'Male', '2000-11-12 12:41:53', 'Nanded', 'Latur', 845905668, 'Macbook', 'HP Laptop', 'c_101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`  Customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
