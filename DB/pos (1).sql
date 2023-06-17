-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 02:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(10) NOT NULL,
  `customer_name` varchar(35) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL,
  `billing_address` varchar(50) NOT NULL,
  `shipping_address` varchar(50) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `person_tp` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `online` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customer_name`, `Tp_Number`, `billing_address`, `shipping_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`, `online`) VALUES
(1, 'Sadishan', '0702184683', '32/18,\nAgardaguruMw,\nEkala.', '32/18,\nAgardaguruMw,\nEkala.', '881004726', 'Gampaha', 'sadishan', 'gamini', '0715480905', 'sadishaniruminda@gmail.com', 'yes'),
(2, 'Monkey', '23444535', 'Mirigama', 'Mirigama', '456789', 'Mirigama', 'Some', 'Thatta some', '432216780', 'JSDKFSJH@afhjk.lk', 'yes'),
(3, 'lakshanF', '773736373', 'Negombo', 'Negombo', '909908', 'Colombo', 'Devni', 'Fernando', '9080897', 'Sasasjjs', 'yes'),
(4, 'test', '36363', 'test4', 'test5', '6647', 'test6', 'test1', 'test2', '4445', 'fgfk', 'yes'),
(6, 'hlsjfksjl', 'jdksjvlsfd', 'dksjfks', 'dksjfks', 'dskhkjsdh', 'kdsjfkxj', 'kdjvljxd', 'dmnvksx', 'kdjhvk', 'dhdj@gmail.com', 'gjasgd'),
(7, 'wsyusi', 'ljrosfijdo', 'AEFIYA', 'AEFIYA', 'uweiuw', 'iwhiw', 'esjhrsi', 'wqhe', 'hufufh', 'sgdu@nm.lk', 'Yes'),
(8, 'umesh hansitha dewasinghe', '0775181446', 'danne na', 'danne na', '0111222336', 'minee oluwa', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(10) NOT NULL,
  `employee_name` varchar(40) NOT NULL,
  `Tp_Number` varchar(15) NOT NULL,
  `main_address` varchar(40) NOT NULL,
  `temp_address` varchar(40) NOT NULL,
  `bank` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `person_name` varchar(40) NOT NULL,
  `contact_person` varchar(40) NOT NULL,
  `person_tp` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `online` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `employee_name`, `Tp_Number`, `main_address`, `temp_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`, `online`) VALUES
(1, 'Iruminda', '3424234', 'ekala , jaela', 'ekala , jaela', '334455', 'colomvo', 'max', 'rex', '123456', 'adda@dff.lk', 'yes'),
(2, '', '', '', '', '', '', '', '', '', '', ''),
(3, 'shanki', '908798698', 'ja ela', 'ja ela', '89888712', 'gampaha', 'thatta some', 'moda monkey', '34556789', 'jhkdjhak@lk.lk', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserName`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `Product_Name` varchar(35) NOT NULL,
  `Bar_code` varchar(30) NOT NULL,
  `Price` varchar(15) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `Sid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `Product_Name`, `Bar_code`, `Price`, `Qty`, `Sid`) VALUES
(1, 'Lagar Beer ', '991119', '475.00', '5', '1'),
(2, 'Strong Beer', '991114', '575.00', '10', '1'),
(3, 'vodka', '1111', '6000.00', '10', '3'),
(4, 'Lagar Beer ', '991119', '475.00', '5', '1'),
(5, 'Gin', '64680702', '3000', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL,
  `supplier_Name` varchar(35) NOT NULL,
  `Tp_Number` varchar(15) NOT NULL,
  `billing_address` varchar(50) NOT NULL,
  `shipping_address` varchar(30) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `person_name` varchar(35) NOT NULL,
  `contact_person` varchar(35) NOT NULL,
  `person_tp` varchar(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `online` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `supplier_Name`, `Tp_Number`, `billing_address`, `shipping_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`, `online`) VALUES
(1, 'lakshan', '9883003838', 'Negombo', 'Negombo', '983811-139', 'negombo', 'maneya', 'laka', '00383820', 'djsdkfhkh@jhf.lk', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UserName`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
