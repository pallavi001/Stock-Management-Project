-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 06:28 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockmgt2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `managecat`
--

CREATE TABLE `managecat` (
  `catid` int(10) NOT NULL,
  `catname` varchar(100) NOT NULL,
  `gst` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `managecat`
--

INSERT INTO `managecat` (`catid`, `catname`, `gst`) VALUES
(7, 'Sports', 2),
(8, 'Beauty Products', 9),
(9, 'Health Care', 3),
(10, 'dpdsksdf', 12);

-- --------------------------------------------------------

--
-- Table structure for table `manageprod`
--

CREATE TABLE `manageprod` (
  `prodid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `subcatid` int(11) NOT NULL,
  `prodname` varchar(200) NOT NULL,
  `Rate` double NOT NULL,
  `discount` double NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `manageprod`
--

INSERT INTO `manageprod` (`prodid`, `catid`, `subcatid`, `prodname`, `Rate`, `discount`, `stock`) VALUES
(5000, 7, 27, 'tennis balls', 10, 0, 98071),
(5001, 7, 28, 'Football', 800, 0, 34),
(5002, 7, 27, 'Chess', 909, 21, 1900),
(5003, 7, 28, 'Cricket Bat', 900, 6, 78999),
(5004, 8, 36, 'Sunslik', 3, 0, 0),
(5005, 8, 36, 'Loreal fdij', 4.9, 0.896, 69);

-- --------------------------------------------------------

--
-- Table structure for table `managepurch`
--

CREATE TABLE `managepurch` (
  `purchid` int(11) NOT NULL,
  `suppid` int(11) NOT NULL,
  `billno` int(11) NOT NULL,
  `billdate` date NOT NULL,
  `billamt` double NOT NULL,
  `billgst` double NOT NULL,
  `totbill` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `managepurch`
--

INSERT INTO `managepurch` (`purchid`, `suppid`, `billno`, `billdate`, `billamt`, `billgst`, `totbill`) VALUES
(3000, 4, 12, '2018-11-16', 8532090, 170641.8, 8702731.8),
(3001, 4, 43, '2019-08-08', 4, 0.36, 4.36);

-- --------------------------------------------------------

--
-- Table structure for table `managesales`
--

CREATE TABLE `managesales` (
  `salesid` varchar(11) NOT NULL,
  `customname` varchar(111) NOT NULL,
  `customphone` varchar(100) NOT NULL,
  `billdate` date NOT NULL,
  `billamt` double NOT NULL,
  `billgst` double NOT NULL,
  `totbill` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `managesales`
--

INSERT INTO `managesales` (`salesid`, `customname`, `customphone`, `billdate`, `billamt`, `billgst`, `totbill`) VALUES
('1000', 'Diksha', '7878787788', '2018-11-16', 810, 16.2, 826.2);

-- --------------------------------------------------------

--
-- Table structure for table `managesubcat`
--

CREATE TABLE `managesubcat` (
  `subcatid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `subcatname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `managesubcat`
--

INSERT INTO `managesubcat` (`subcatid`, `catid`, `subcatname`) VALUES
(27, 7, 'Indoor'),
(28, 7, 'Outdoor'),
(32, 9, 'Eye Care'),
(34, 9, 'Hair Care'),
(35, 8, 'Hair oil'),
(36, 8, 'Hair shampoo'),
(37, 8, 'Conditioner gfgdh'),
(38, 8, 'Creams');

-- --------------------------------------------------------

--
-- Table structure for table `managesupp`
--

CREATE TABLE `managesupp` (
  `suppid` int(11) NOT NULL,
  `suppname` varchar(200) NOT NULL,
  `suppphone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `managesupp`
--

INSERT INTO `managesupp` (`suppid`, `suppname`, `suppphone`) VALUES
(4, 'harish', '8988998980');

-- --------------------------------------------------------

--
-- Table structure for table `purchdetail`
--

CREATE TABLE `purchdetail` (
  `sno` int(11) NOT NULL,
  `purchid` int(11) NOT NULL,
  `prodid` int(11) NOT NULL,
  `prodname` varchar(111) NOT NULL,
  `Rate` double NOT NULL,
  `quantity` double NOT NULL,
  `cost` double NOT NULL,
  `gst` double NOT NULL,
  `tcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `purchdetail`
--

INSERT INTO `purchdetail` (`sno`, `purchid`, `prodid`, `prodname`, `Rate`, `quantity`, `cost`, `gst`, `tcost`) VALUES
(5, 3000, 5000, 'tennis balls', 87, 98070, 8532090, 170641.8, 8702731.8),
(6, 3001, 5005, 'Loreal fdij', 2, 2, 4, 0.36, 4.36);

-- --------------------------------------------------------

--
-- Table structure for table `salesdetail`
--

CREATE TABLE `salesdetail` (
  `sno` int(11) NOT NULL,
  `salesid` varchar(11) NOT NULL,
  `prodid` int(11) NOT NULL,
  `prodname` varchar(111) NOT NULL,
  `Rate` double NOT NULL,
  `quantity` double NOT NULL,
  `cost` double NOT NULL,
  `gst` double NOT NULL,
  `tcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `salesdetail`
--

INSERT INTO `salesdetail` (`sno`, `salesid`, `prodid`, `prodname`, `Rate`, `quantity`, `cost`, `gst`, `tcost`) VALUES
(9, '1000', 5000, 'tennis balls', 90, 9, 810, 16.2, 826.2);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `Name` varchar(100) NOT NULL,
  `Dob` date NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Usertype` varchar(50) NOT NULL,
  `Userimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`Name`, `Dob`, `Address`, `Phone`, `email`, `Gender`, `Username`, `Password`, `Usertype`, `Userimage`) VALUES
('pahbf', '2018-11-28', 'jalandhat', '0849030900', 'pallavu@hmail.com', 'male', 'paal', '98l', 'Employ', 'default.png'),
('pallavi', '2018-11-07', 'H.No.174,Jalandhar', '9887687764', 'pallavi@gmail.com', 'female', 'pal', 'pal', 'Admin', '154236841877708-08-19-th.jpg'),
('pokj', '2019-08-21', 'hgguyfg', '8989898989', 'oh2hvhcdv', 'female', 'poo', 'poo', 'Employ', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `managecat`
--
ALTER TABLE `managecat`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `manageprod`
--
ALTER TABLE `manageprod`
  ADD PRIMARY KEY (`prodid`);

--
-- Indexes for table `managepurch`
--
ALTER TABLE `managepurch`
  ADD PRIMARY KEY (`purchid`);

--
-- Indexes for table `managesales`
--
ALTER TABLE `managesales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `managesubcat`
--
ALTER TABLE `managesubcat`
  ADD PRIMARY KEY (`subcatid`);

--
-- Indexes for table `managesupp`
--
ALTER TABLE `managesupp`
  ADD PRIMARY KEY (`suppid`);

--
-- Indexes for table `purchdetail`
--
ALTER TABLE `purchdetail`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `salesdetail`
--
ALTER TABLE `salesdetail`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `managecat`
--
ALTER TABLE `managecat`
  MODIFY `catid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `managesubcat`
--
ALTER TABLE `managesubcat`
  MODIFY `subcatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `managesupp`
--
ALTER TABLE `managesupp`
  MODIFY `suppid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchdetail`
--
ALTER TABLE `purchdetail`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salesdetail`
--
ALTER TABLE `salesdetail`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
