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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Productid` varchar(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `sellerid` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `placefordelivery` varchar(200) NOT NULL,
  `isFeatured` varchar(10) NOT NULL,
  `rating` int(11) NOT NULL,
  `reviews` int(11) NOT NULL,
  `isOnScale` varchar(100) NOT NULL,
  ` Category_id` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  ` description` varchar(300) NOT NULL,
  ` tags` varchar(100) NOT NULL,
  ` relatedproduct` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Productid`, `Name`, `color`, `sellerid`, `size`, `quantity`, `cost`, `discount`, `placefordelivery`, `isFeatured`, `rating`, `reviews`, `isOnScale`, ` Category_id`, `brand`, ` description`, ` tags`, ` relatedproduct`) VALUES
('Hag3943r', 'Rebion Goggals', 'red-black', 'S123_KR', 0, 1, 2000, 300, 'Latur', 'yes', 5, 4, 'yes', 'cat_291', 'Rebion', 'sunlight glasses', 'goggles', 'yellow glasses'),
('krt455', 'T_Shirt', 'Yellow', 'S111_MH', 42, 2, 3000, 200, 'Nanded', '', 4, 8, 'yes', 'Fashion', 'being human', 'T_shirt with cap', '', 'being humans jeans'),
('P_1', 'Macbook', 'black', 'S123_KR', 14, 1, 120000, 7000, 'pune', 'yes', 5, 40, 'very good product', 'C_301', 'Apple', 'Product is very branded and good', 'Laptop', 'IPad'),
('P_3', 'Vivo_30', 'silver', 'S111_MH', 20, 2, 40000, 2000, 'Latur', 'Welll feat', 7, 20, 'well developed', 'Phones', 'Vivo', 'Very good phone camera 64 ram 8 gb', 'vivo', 'vivo-28'),
('P_490g', 'headphone', 'white', 'S111_MH', 0, 3, 700, 110, 'pune', 'yes', 5, 5, 'yes', 'cat_285', 'realme', 'white headphones', 'realme', 'realme ipods');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Productid`),
  ADD KEY ` Category_id` (` Category_id`),
  ADD KEY `sellerid` (`sellerid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`sellerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
