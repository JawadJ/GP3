-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 03:57 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jawad`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `DeliveryID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryVehicleReg` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeliveryVenueID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeliverySupplierID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeliveryDriverID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`DeliveryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`DeliveryID`, `DeliveryDate`, `DeliveryVehicleReg`, `DeliveryVenueID`, `DeliverySupplierID`, `DeliveryDriverID`) VALUES
('00000001', '2018-10-20', 'D05 RAM', '00000001', '00000003', '00000008'),
('00000002', '2018-10-20', 'E06 ROM', '00000001', '00000003', '00000006'),
('00000003', '2018-10-20', 'B03 PPD', '00000001', '00000001', '00000002'),
('00000004', '2018-10-21', 'H09 UML', '00000002', '00000005', '00000011'),
('00000005', '2018-10-21', 'E06 ROM', '00000003', '00000003', '00000007'),
('00000006', '2018-10-24', 'F07 CPU', '00000004', '00000003', '00000007'),
('00000007', '2018-10-20', 'A02 TLC', '00000003', '00000001', '00000002'),
('00000008', '2018-10-22', 'D05 RAM', '00000002', '00000001', '00000002'),
('00000009', '2018-10-20', 'A02 TLC', '00000001', '00000001', '00000002'),
('00000010', '2018-10-23', 'C04 DFD', '00000001', '00000002', '00000004');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `DriverID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverEmployer` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverTitle` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`DriverID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverID`, `DriverEmployer`, `DriverName`, `DriverTitle`) VALUES
('00000001', 'Brenny Cola', 'Helen Miranda', 'Ms'),
('00000002', 'Brenny Cola', 'Dani Marino', 'Mr'),
('00000003', 'Micro Zoft', 'Jose Alvez', 'mr'),
('00000004', 'Micro Zoft', 'Maria Partou', 'Ms.'),
('00000005', 'Micro Zoft', 'Guy Redmond', 'Dr'),
('00000006', 'Food Stuff', 'Vito Gelato', 'Dr'),
('00000007', 'Food Stuff', 'David César', 'Mr'),
('00000008', 'Food Stuff', 'Lindsay White', 'Ms'),
('00000009', 'Muscle Tone', 'David Beckham', 'Mr'),
('00000010', 'Uframed', 'Marcos Alves', 'Mr'),
('00000011', 'Uframed', 'Fred Bloggs', 'Mr'),
('00000012', 'Burger Bits', 'Olenka Sama', 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `driveridcard`
--

CREATE TABLE IF NOT EXISTS `driveridcard` (
  `CardID` int(8) NOT NULL,
  `Driver` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `State` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`CardID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driveridcard`
--

INSERT INTO `driveridcard` (`CardID`, `Driver`, `StartDate`, `EndDate`, `State`) VALUES
(1, '00000008', '2018-02-21', '2019-03-23', 'Valid'),
(2, '00000006', '2017-11-12', '2018-12-25', 'Valid'),
(3, '00000002', '2017-12-18', '2019-01-29', 'Valid'),
(4, '00000011', '2018-04-23', '2019-06-27', 'Valid'),
(5, '00000007', '2018-05-12', '2019-07-19', 'Valid'),
(6, '00000004', '2018-06-14', '2019-07-23', 'Valid'),
(7, '00000001', '2016-03-28', '2017-08-16', 'Expired'),
(8, '00000003', '2016-05-29', '2019-10-22', 'Cancelled'),
(9, '00000005', '2017-06-06', '2019-08-09', 'Valid'),
(10, '00000009', '2014-12-09', '2016-11-11', 'Expired'),
(11, '00000010', '2018-01-27', '2019-12-12', 'Valid'),
(12, '00000012', '2016-01-01', '2019-12-31', 'Cancelled ');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `SupplierID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierGaS` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierAddress` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierManager` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `SupplierGaS`, `SupplierAddress`, `SupplierManager`) VALUES
('00000001', 'Brenny Cola', 'Drinks', 'Balmain', 'Andy Smith'),
('00000002', 'Micro Zoft', 'IT Services', 'Balmain', 'Mary Jobs'),
('00000003', 'Food Stuff', 'Catering', 'Botany Bay', 'Zoltan Bey'),
('00000004', 'Muscle Tone', 'Gym Equiptment', 'Woolwich', 'Mas Mckenzie'),
('00000005', 'Uframed', 'CCTV', 'Roseville', 'Jo Reel'),
('00000006', 'Burger Bits', 'Catering', 'Woolwich', 'Fred Fats');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `VehicleReg` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleBrand` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleModel` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleSupplierID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`VehicleReg`),
  FULLTEXT KEY `Vehicle Registration` (`VehicleReg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VehicleReg`, `VehicleBrand`, `VehicleModel`, `VehicleSupplierID`) VALUES
('A02 TLC', 'Renault', 'Master', '00000001'),
('B03 PPD', 'Renault', 'Kangoo', '00000001'),
('C04 DFD', 'Vauxhall', 'Vivaro', '00000002'),
('D05 RAM', 'Ford', 'Transit', '00000003'),
('E06 ROM', 'Ford', 'Transit', '00000003'),
('F07 CPU', 'Ford', 'Transit', '00000003'),
('G08 PHP', 'Vauxhall', 'Vivaro', '00000004'),
('H09 UML', 'Vauxhall', 'Vivaro', '00000005'),
('J10 CSS', 'Renault', 'Fabia', '00000006');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE IF NOT EXISTS `venue` (
  `VenueID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueStadiumName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueArea` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueContactNo` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueAddress` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`VenueID`),
  KEY `Venue ID` (`VenueID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`VenueID`, `VenueStadiumName`, `VenueArea`, `VenueContactNo`, `VenueAddress`) VALUES
('00000001', 'Athletic Centre', 'Sidney Olympic Park', '02 9714 750', 'Edwin Flack Avenue'),
('00000002', 'Aquatic Centre', 'Sidney Olympic Park', '02 4920 294', 'Olympic Boulevard'),
('00000003', 'NSW Golf Course', 'Botany Bay', '02 9661 445', 'Anzac Parade'),
('00000004', 'Sailing Centre', 'Sidney Harbour', '04 0483 521', 'Wrights Road'),
('4', 'test', 'test', '', 'testst');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
