-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 03:59 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Syed Zaman Mostafiz', 'admin', 'zamancsediue44@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'ACER'),
(2, 'SAMSUNG'),
(3, 'IPHONE'),
(4, 'CANON');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(2, 'Laptop'),
(3, 'Mobile Phones'),
(4, 'Accessories'),
(5, 'Software'),
(6, 'Sports &amp; Fitness'),
(7, 'Footwear'),
(8, 'Jewellery'),
(9, 'Clothing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Syed Zaman Mostafiz', 'Cresent Road, Dhaka', 'Dhaka', 'Bangladesh', '1205', '01740301579', 'zamancsediue44@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(12, 1, 6, 'Lorem ipsum dolor sit amet sed do eiusmod.', 2, 10000.00, 'uploads/f02b3d7952.jpg', '2018-02-28 16:14:57', 0),
(13, 1, 7, 'Lorem ipsum dolor sit amet, sed do eiusmod.', 3, 2646.00, 'uploads/2b83ab23ff.png', '2018-02-28 16:14:57', 0),
(14, 1, 6, 'Lorem ipsum dolor sit amet sed do eiusmod.', 1, 5000.00, 'uploads/f02b3d7952.jpg', '2018-02-28 16:17:13', 0),
(15, 1, 6, 'Lorem ipsum dolor sit amet sed do eiusmod.', 1, 5000.00, 'uploads/f02b3d7952.jpg', '2018-02-28 16:30:56', 0),
(16, 1, 7, 'Lorem ipsum dolor sit amet, sed do eiusmod.', 1, 882.00, 'uploads/2b83ab23ff.png', '2018-02-28 16:35:12', 0),
(17, 1, 6, 'Lorem ipsum dolor sit amet sed do eiusmod.', 1, 5000.00, 'uploads/f02b3d7952.jpg', '2018-02-28 20:19:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'Lorem Ipsum is simply', 4, 4, '<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>', 505.22, 'uploads/51288d62f6.png', 0),
(2, 'Lorem Ipsum is simply', 4, 1, '<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>', 620.87, 'uploads/43e10a6fa0.jpg', 0),
(3, 'Lorem Ipsum is simply', 2, 2, '<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>', 500.00, 'uploads/ca0120a6d5.jpg', 0),
(4, 'Lorem Ipsum is simply', 8, 4, '<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>\r\n<p>Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here. Product details will be go here.</p>', 589.22, 'uploads/b9fdcfa3df.jpg', 1),
(6, 'Lorem ipsum dolor sit amet sed do eiusmod.', 4, 3, '<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>', 5000.00, 'uploads/06b0eea89a.png', 0),
(7, 'Lorem ipsum dolor sit amet, sed do eiusmod.', 4, 2, '<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>', 882.00, 'uploads/2b83ab23ff.png', 1),
(8, 'Lorem ipsum dolor sit amet, sed do eiusmod.', 1, 1, '<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>', 955.12, 'uploads/85dcce7b86.jpg', 1),
(9, 'Lorem ipsum dolor sit amet, sed do eiusmod.', 4, 4, '<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>\r\n<p>Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.Lorem ipsum dolor sit amet sed do eiusmod.</p>', 3000.00, 'uploads/350743d457.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
