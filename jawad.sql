-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 11:13 PM
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
  `Status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ongoing',
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

INSERT INTO `delivery` (`DeliveryID`, `Status`, `DeliveryDate`, `DeliveryVehicleReg`, `DeliveryVenue`, `DeliverySupplier`, `DeliveryDriver`) VALUES
(1, 'Ongoing', '2018-10-20', 'D05 RAM', 'Athletic Centre', 'Food Stuff', 'Lindsay White'),
(2, 'Ongoing', '2018-10-20', 'E06 ROM', 'Athletic Centre', 'Food Stuff', 'Vito Gelato'),
(3, 'Ongoing', '2018-10-20', 'B03 PPD', 'Athletic Centre', 'Brenny Cola', 'Dani Marino'),
(4, 'Ongoing', '2018-10-21', 'H09 UML', 'Aquatic Centre', 'Uframed', 'Fred Bloggs'),
(5, 'Ongoing', '2018-10-21', 'E06 ROM', 'NSW Golf Course', 'Food Stuff', 'David César'),
(6, 'Ongoing', '2018-10-24', 'F07 CPU', 'Sailing Centre', 'Food Stuff', 'David César'),
(7, 'Ongoing', '2018-10-20', 'A02 TLC', 'NSW Golf Course', 'Brenny Cola', 'Dani Marino'),
(8, 'Ongoing', '2018-10-22', 'D05 RAM', 'Aquatic Centre', 'Brenny Cola', 'Dani Marino'),
(9, 'Ongoing', '2018-10-20', 'A02 TLC', 'Athletic Centre', 'Brenny Cola', 'Dani Marino'),
(10, 'Ongoing', '2018-10-23', 'C04 DFD', 'Athletic Centre', 'Micro Zoft', 'Maria Partou');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `DriverEmployer` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverTitle` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`DriverName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverEmployer`, `DriverName`, `DriverTitle`) VALUES
('Brenny Cola', 'Helen Miranda', 'Ms'),
('Brenny Cola', 'Dani Marino', 'Mr'),
('Micro Zoft', 'Jose Alvez', 'Mr'),
('Micro Zoft', 'Maria Partou', 'Ms.'),
('Micro Zoft', 'Guy Redmond', 'Dr'),
('Food Stuff', 'Vito Gelato', 'Dr'),
('Food Stuff', 'David César', 'Mr'),
('Food Stuff', 'Lindsay White', 'Ms'),
('Muscle Tone', 'David Beckham', 'Mr'),
('Uframed', 'Marcos Alves', 'Mr'),
('Uframed', 'Fred Bloggs', 'Mr'),
('Burger Bits', 'Olenka Sama', 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `driveridcard`
--

CREATE TABLE IF NOT EXISTS `driveridcard` (
  `CardID` int(8) NOT NULL AUTO_INCREMENT,
  `Driver` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `State` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Valid',
  PRIMARY KEY (`CardID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=660 ;

--
-- Dumping data for table `driveridcard`
--

INSERT INTO `driveridcard` (`CardID`, `Driver`, `StartDate`, `EndDate`, `State`) VALUES
(635, 'Lindsay White', '2018-02-21', '2019-03-23', 'Valid'),
(636, 'Vito Gelato', '2017-11-12', '2018-12-25', 'Valid'),
(637, 'Dani Marino', '2017-12-18', '2019-01-29', 'Valid'),
(638, 'Fred Bloggs', '2018-04-23', '2019-06-27', 'Valid'),
(639, 'David César', '2018-05-12', '2019-07-19', 'Valid'),
(640, 'Maria Partou', '2018-06-14', '2019-07-23', 'Valid'),
(641, 'Helen Miranda', '2016-03-28', '2017-08-16', 'Expired'),
(642, 'Jose Alvez', '2016-05-29', '2019-10-22', 'Cancelled'),
(643, 'Guy Redmond', '2017-06-06', '2019-08-09', 'Valid'),
(644, 'David Beckham', '2014-12-09', '2016-11-11', 'Expired'),
(645, 'Marcos Alves', '2018-01-27', '2019-12-12', 'Valid'),
(646, 'Olenka Sama', '2016-01-01', '2019-12-31', 'Cancelled ');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `SupplierName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierGaS` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierAddress` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierManager` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SupplierName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierName`, `SupplierGaS`, `SupplierAddress`, `SupplierManager`) VALUES
('Brenny Cola', 'Drinks', 'Balmain', 'Andy Smith'),
('Micro Zoft', 'IT Services', 'Balmain', 'Mary Jobs'),
('Food Stuff', 'Catering', 'Botany Bay', 'Zoltan Bey'),
('Muscle Tone', 'Gym Equiptment', 'Woolwich', 'Mas Mckenzie'),
('Uframed', 'CCTV', 'Roseville', 'Jo Reel'),
('Burger Bits', 'Catering', 'Woolwich', 'Fred Fats');

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
  `VenueStadiumName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueArea` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueContactNo` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueAddress` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`VenueStadiumName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`VenueStadiumName`, `VenueArea`, `VenueContactNo`, `VenueAddress`) VALUES
('Athletic Centre', 'Sidney Olympic Park', '02 9714 750', 'Edwin Flack Avenue'),
('Aquatic Centre', 'Sidney Olympic Park', '02 4920 294', 'Olympic Boulevard'),
('NSW Golf Course', 'Botany Bay', '02 9661 445', 'Anzac Parade'),
('Sailing Centre', 'Sidney Harbour', '04 0483 521', 'Wrights Road');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
