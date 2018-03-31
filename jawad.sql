-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 05:39 PM
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
  `DeliveryID` int(8) NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryVehicleReg` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeliveryVenue` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeliverySupplier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DeliveryDriver` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`DeliveryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`DeliveryID`, `DeliveryDate`, `DeliveryVehicleReg`, `DeliveryVenue`, `DeliverySupplier`, `DeliveryDriver`) VALUES
(1, '2018-10-20', 'D05 RAM', 'Athletic Centre', 'Food Stuff', 'Lindsay White'),
(2, '2018-10-20', 'E06 ROM', 'Athletic Centre', 'Food Stuff', 'Vito Gelato'),
(3, '2018-10-20', 'B03 PPD', 'Athletic Centre', 'Brenny Cola', 'Dani Marino'),
(4, '2018-10-21', 'H09 UML', 'Aquatic Centre', 'Uframed', 'Fred Bloggs'),
(5, '2018-10-21', 'E06 ROM', 'NSW Golf Course', 'Food Stuff', 'David César'),
(6, '2018-10-24', 'F07 CPU', 'Sailing Centre', 'Food Stuff', 'David César'),
(7, '2018-10-20', 'A02 TLC', 'NSW Golf Course', 'Brenny Cola', 'Dani Marino'),
(8, '2018-10-22', 'D05 RAM', 'Aquatic Centre', 'Brenny Cola', 'Dani Marino'),
(9, '2018-10-20', 'A02 TLC', 'Athletic Centre', 'Brenny Cola', 'Dani Marino'),
(10, '2018-10-23', 'C04 DFD', 'Athletic Centre', 'Micro Zoft', 'Maria Partou');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `DriverID` int(8) NOT NULL,
  `DriverEmployer` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverTitle` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`DriverName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverID`, `DriverEmployer`, `DriverName`, `DriverTitle`) VALUES
(1, 'Brenny Cola', 'Helen Miranda', 'Ms'),
(2, 'Brenny Cola', 'Dani Marino', 'Mr'),
(3, 'Micro Zoft', 'Jose Alvez', 'Mr'),
(4, 'Micro Zoft', 'Maria Partou', 'Ms.'),
(5, 'Micro Zoft', 'Guy Redmond', 'Dr'),
(6, 'Food Stuff', 'Vito Gelato', 'Dr'),
(7, 'Food Stuff', 'David César', 'Mr'),
(8, 'Food Stuff', 'Lindsay White', 'Ms'),
(9, 'Muscle Tone', 'David Beckham', 'Mr'),
(10, 'Uframed', 'Marcos Alves', 'Mr'),
(11, 'Uframed', 'Fred Bloggs', 'Mr'),
(12, 'Burger Bits', 'Olenka Sama', 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `driveridcard`
--

CREATE TABLE IF NOT EXISTS `driveridcard` (
  `CardID` int(8) NOT NULL,
  `Driver` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `State` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`CardID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driveridcard`
--

INSERT INTO `driveridcard` (`CardID`, `Driver`, `StartDate`, `EndDate`, `State`) VALUES
(1, 'Lindsay White', '2018-02-21', '2019-03-23', 'Valid'),
(2, 'Vito Gelato', '2017-11-12', '2018-12-25', 'Valid'),
(3, 'Dani Marino', '2017-12-18', '2019-01-29', 'Valid'),
(4, 'Fred Bloggs', '2018-04-23', '2019-06-27', 'Valid'),
(5, 'David César', '2018-05-12', '2019-07-19', 'Valid'),
(6, 'Maria Partou', '2018-06-14', '2019-07-23', 'Valid'),
(7, 'Helen Miranda', '2016-03-28', '2017-08-16', 'Expired'),
(8, 'Jose Alvez', '2016-05-29', '2019-10-22', 'Cancelled'),
(9, 'Guy Redmond', '2017-06-06', '2019-08-09', 'Valid'),
(10, 'David Beckham', '2014-12-09', '2016-11-11', 'Expired'),
(11, 'Marcos Alves', '2018-01-27', '2019-12-12', 'Valid'),
(12, 'Olenka Sama', '2016-01-01', '2019-12-31', 'Cancelled ');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `SupplierID` int(8) NOT NULL,
  `SupplierName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierGaS` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierAddress` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierManager` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SupplierName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `SupplierGaS`, `SupplierAddress`, `SupplierManager`) VALUES
(1, 'Brenny Cola', 'Drinks', 'Balmain', 'Andy Smith'),
(2, 'Micro Zoft', 'IT Services', 'Balmain', 'Mary Jobs'),
(3, 'Food Stuff', 'Catering', 'Botany Bay', 'Zoltan Bey'),
(4, 'Muscle Tone', 'Gym Equiptment', 'Woolwich', 'Mas Mckenzie'),
(5, 'Uframed', 'CCTV', 'Roseville', 'Jo Reel'),
(6, 'Burger Bits', 'Catering', 'Woolwich', 'Fred Fats');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `VehicleReg` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleBrand` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleModel` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleSupplier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`VehicleReg`),
  FULLTEXT KEY `Vehicle Registration` (`VehicleReg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VehicleReg`, `VehicleBrand`, `VehicleModel`, `VehicleSupplier`) VALUES
('A02 TLC', 'Renault', 'Master', 'Brenny Cola'),
('B03 PPD', 'Renault', 'Kangoo', 'Brenny Cola'),
('C04 DFD', 'Vauxhall', 'Vivaro', 'Micro Zoft'),
('D05 RAM', 'Ford', 'Transit', 'Food Stuff'),
('E06 ROM', 'Ford', 'Transit', 'Food Stuff'),
('F07 CPU', 'Ford', 'Transit', 'Food Stuff'),
('G08 PHP', 'Vauxhall', 'Vivaro', 'Muscle Tone'),
('H09 UML', 'Vauxhall', 'Vivaro', 'Uframed'),
('J10 CSS', 'Renault', 'Fabia', 'Burger Bits');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE IF NOT EXISTS `venue` (
  `VenueID` int(8) NOT NULL,
  `VenueStadiumName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueArea` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueContactNo` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueAddress` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`VenueStadiumName`),
  KEY `Venue ID` (`VenueID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`VenueID`, `VenueStadiumName`, `VenueArea`, `VenueContactNo`, `VenueAddress`) VALUES
(1, 'Athletic Centre', 'Sidney Olympic Park', '02 9714 750', 'Edwin Flack Avenue'),
(2, 'Aquatic Centre', 'Sidney Olympic Park', '02 4920 294', 'Olympic Boulevard'),
(3, 'NSW Golf Course', 'Botany Bay', '02 9661 445', 'Anzac Parade'),
(4, 'Sailing Centre', 'Sidney Harbour', '04 0483 521', 'Wrights Road');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
