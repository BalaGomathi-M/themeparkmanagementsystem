-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 21, 2022 at 07:01 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `themeparkdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7889898987, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-17 11:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblentrytickets`
--

DROP TABLE IF EXISTS `tblentrytickets`;
CREATE TABLE IF NOT EXISTS `tblentrytickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TIcketNumber` varchar(120) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Gender` varchar(250) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `NoOfMale` int(11) NOT NULL,
  `MaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfFemale` int(11) NOT NULL,
  `FemaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfKids` int(11) NOT NULL,
  `NoOfKidsForTicket` int(11) NOT NULL,
  `KidsTicketPrice` decimal(10,2) NOT NULL,
  `VisitDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDa` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UserID` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblentrytickets`
--

INSERT INTO `tblentrytickets` (`id`, `TIcketNumber`, `Name`, `Gender`, `Address`, `NoOfMale`, `MaleTicketPrice`, `NoOfFemale`, `FemaleTicketPrice`, `NoOfKids`, `NoOfKidsForTicket`, `KidsTicketPrice`, `VisitDate`, `LastUpdationDa`, `UserID`) VALUES
(5, '575286522', 'Anuj Kumar', 'Male', 'New Delhi India', 2, '100.00', 2, '90.00', 2, 1, '40.00', '2020-08-04 16:01:59', '2020-08-04 16:02:32', 0),
(13, '20221011075506', 'abc', 'Male', '23,cross street', 2, '110.00', 1, '90.00', 3, 1, '40.00', '2022-10-11 19:55:06', NULL, 2),
(14, '20221011090949', 'abc', 'Male', 'london', 1, '110.00', 2, '90.00', 2, 1, '40.00', '2022-10-11 21:09:49', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblprice`
--

DROP TABLE IF EXISTS `tblprice`;
CREATE TABLE IF NOT EXISTS `tblprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TicketType` varchar(100) NOT NULL,
  `MaleTIcket` decimal(10,2) NOT NULL,
  `FemaleTIcket` decimal(10,2) NOT NULL,
  `KidsTicket` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MaleTIcket` (`MaleTIcket`),
  KEY `FemaleTIcket` (`FemaleTIcket`),
  KEY `KidsTicket` (`KidsTicket`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprice`
--

INSERT INTO `tblprice` (`id`, `TicketType`, `MaleTIcket`, `FemaleTIcket`, `KidsTicket`) VALUES
(1, 'Entry', '110.00', '90.00', '40.00'),
(2, 'NormalRide', '110.00', '110.00', '70.00'),
(3, 'WaterRide', '170.00', '150.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblridetickets`
--

DROP TABLE IF EXISTS `tblridetickets`;
CREATE TABLE IF NOT EXISTS `tblridetickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TIcketNumber` varchar(120) DEFAULT NULL,
  `RideType` varchar(120) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Gender` varchar(250) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `NoOfMale` int(11) NOT NULL,
  `MaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfFemale` int(11) NOT NULL,
  `FemaleTicketPrice` decimal(10,2) NOT NULL,
  `NoOfKids` int(11) NOT NULL,
  `NoOfKidsForTicket` int(11) NOT NULL,
  `KidsTicketPrice` decimal(10,2) NOT NULL,
  `VisitDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDa` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UserID` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblridetickets`
--

INSERT INTO `tblridetickets` (`id`, `TIcketNumber`, `RideType`, `Name`, `Gender`, `Address`, `NoOfMale`, `MaleTicketPrice`, `NoOfFemale`, `FemaleTicketPrice`, `NoOfKids`, `NoOfKidsForTicket`, `KidsTicketPrice`, `VisitDate`, `LastUpdationDa`, `UserID`) VALUES
(2, '783289568', 'Normal Ride', 'Anuj kumar', 'Male', 'New Delhi', 5, '120.00', 4, '120.00', 2, 2, '80.00', '2020-07-17 18:57:48', '2020-07-17 19:04:50', 0),
(3, '134891128', 'Normal Ride', 'ABC', 'Male', 'New delhi India', 2, '100.00', 2, '110.00', 4, 2, '70.00', '2020-08-04 16:03:05', NULL, 0),
(6, '947410594', 'water Ride', 'abc', 'Male', '12', 1, '170.00', 1, '150.00', 2, 3, '100.00', '2022-10-11 17:49:32', NULL, 0),
(8, '20221014031300', 'Normal Ride', 'krish', 'Male', '22,cross street', 1, '110.00', 1, '110.00', 2, 0, '70.00', '2022-10-14 15:13:00', NULL, 2),
(9, '20221021065821', 'Normal Ride', 'krish', 'Female', '32,cross street', 2, '110.00', 2, '110.00', 2, 1, '70.00', '2022-10-21 06:58:21', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Mobile` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Username`, `Password`, `Email`, `Mobile`) VALUES
(1, 'AAAA', '202cb962ac59075b964b07152d234b70', 'aaa@gmail.com', 9098767890),
(2, 'krish', '202cb962ac59075b964b07152d234b70', 'krish@gmail.com', 9087565434),
(3, 'abc', '202cb962ac59075b964b07152d234b70', 'asd@gmail.com', 96585421),
(4, 'abc', '202cb962ac59075b964b07152d234b70', 'abc@gmail.com', 12334567);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
