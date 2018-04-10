-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 04:03 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gp3.6_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `DeliveryID` int(8) NOT NULL AUTO_INCREMENT,
  `Status` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ongoing',
  `DeliveryDate` date NOT NULL,
  `DeliveryVehicleReg` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryVenue` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DeliverySupplier` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryDriver` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryDriverName` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`DeliveryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`DeliveryID`, `Status`, `DeliveryDate`, `DeliveryVehicleReg`, `DeliveryVenue`, `DeliverySupplier`, `DeliveryDriver`, `DeliveryDriverName`) VALUES
(1, 'Delivered', '2018-10-20', '4', '1', '3', '8', 'Lindsay White'),
(2, 'Delivered', '2018-10-20', '5', '1', '3', '6', 'Vito Gelato'),
(3, 'Ongoing', '2018-10-20', '2', '1', '1', '2', 'Dani Marino'),
(4, 'Ongoing', '2018-10-21', '8', '2', '5', '11', 'Fred Bloggs'),
(5, 'Ongoing', '2018-10-21', '5', '3', '3', '7', 'David César'),
(6, 'Delivered', '2018-10-24', '6', '4', '3', '7', 'David César'),
(7, 'Ongoing', '2018-10-20', '1', '3', '1', '2', 'Dani Marino'),
(8, 'Delivered', '2018-10-22', '4', '2', '3', '6', 'Vito Gelato'),
(9, 'Ongoing', '2018-10-20', '1', '1', '1', '2', 'Dani Marino'),
(10, 'Ongoing', '2018-10-23', '3', '1', '2', '4', 'Maria Partou'),
(11, 'Cancelled', '2018-04-11', '1', '2', '1', '1', 'Helen Miranda');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `DriverID` int(8) NOT NULL AUTO_INCREMENT,
  `DriverName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DriverEmployer` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DriverTitle` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`DriverID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverID`, `DriverName`, `DriverEmployer`, `DriverTitle`) VALUES
(1, 'Helen Miranda', '1', 'Ms'),
(2, 'Dani Marino', '1', 'Mr'),
(3, 'Jose Alvez', '2', 'Mr'),
(4, 'Maria Partou', '2', 'Ms.'),
(5, 'Guy Redmond', '2', 'Dr'),
(6, 'Vito Gelato', '3', 'Dr'),
(7, 'David César', '3', 'Mr'),
(8, 'Lindsay White', '3', 'Ms'),
(9, 'David Beckham', '4', 'Mr'),
(10, 'Marcos Alves', '5', 'Mr'),
(11, 'Fred Bloggs', '5', 'Mr'),
(12, 'Olenka Sama', '6', 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `driveridcard`
--

CREATE TABLE IF NOT EXISTS `driveridcard` (
  `CardID` int(8) NOT NULL AUTO_INCREMENT,
  `Driver` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `State` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Valid',
  PRIMARY KEY (`CardID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `driveridcard`
--

INSERT INTO `driveridcard` (`CardID`, `Driver`, `StartDate`, `EndDate`, `State`) VALUES
(8, '8', '2018-02-21', '2019-03-23', 'Valid'),
(6, '6', '2017-11-12', '2018-10-21', 'Valid'),
(2, '2', '2017-12-18', '2019-01-29', 'Valid'),
(11, '11', '2018-04-23', '2019-06-27', 'Valid'),
(7, '7', '2018-05-12', '2019-07-19', 'Valid'),
(4, '4', '2018-06-14', '2019-07-23', 'Valid'),
(1, '1', '2016-03-28', '2017-08-16', 'Expired'),
(3, '3', '2016-05-29', '2019-10-22', 'Cancelled'),
(5, '5', '2017-06-06', '2019-08-09', 'Valid'),
(9, '9', '2014-12-09', '2016-11-11', 'Expired'),
(10, '10', '2018-01-27', '2019-12-12', 'Valid'),
(12, '12', '2016-01-01', '2019-12-31', 'Cancelled ');

-- --------------------------------------------------------

--
-- Table structure for table `entrylog`
--

CREATE TABLE IF NOT EXISTS `entrylog` (
  `EntryID` int(8) NOT NULL AUTO_INCREMENT,
  `DelVenue` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `DelDate` date NOT NULL,
  `DelVehicleReg` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `DelDriver` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Allowed` varchar(7) COLLATE utf8_unicode_ci DEFAULT 'Refused',
  PRIMARY KEY (`EntryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `entrylog`
--

INSERT INTO `entrylog` (`EntryID`, `DelVenue`, `DelDate`, `DelVehicleReg`, `DelDriver`, `Allowed`) VALUES
(1, '1', '2018-10-20', '4', '8', 'Granted'),
(2, '1', '2018-10-20', '5', '6', 'Granted'),
(3, '4', '2018-10-24', '6', '7', 'Granted'),
(4, '1', '2018-10-20', '2', '1', 'Refused'),
(5, '4', '2018-10-24', '5', '7', 'Refused'),
(6, '1', '2018-10-21', '4', '8', 'Refused'),
(7, '2', '2018-10-20', '4', '8', 'Refused'),
(8, '2', '2018-10-22', '4', '6', 'Granted');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `SupplierID` int(8) NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierGaS` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SupplierAddress` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SupplierManager` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `SupplierGaS`, `SupplierAddress`, `SupplierManager`) VALUES
(1, 'Brenny Cola', 'Drinks', 'Balmain', 'Andy Smith'),
(2, 'Micro Zoft', 'IT Services', 'Balmain', 'Mary Jobs'),
(3, 'Food Stuff', 'Catering', 'Botany Bay', 'Zoltan Bey'),
(4, 'Muscletone', 'Gym Equipment', 'Woolwich', 'Mas Mckenzie'),
(5, 'Uframed', 'CCTV', 'Roseville', 'Jo Reel'),
(6, 'Burger Bits', 'Catering', 'Woolwich', 'Fred Fats');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `VehicleID` int(11) NOT NULL AUTO_INCREMENT,
  `VehicleReg` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VehicleBrand` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `VehicleModel` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `VehicleSupplier` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VehicleID`, `VehicleReg`, `VehicleBrand`, `VehicleModel`, `VehicleSupplier`) VALUES
(1, 'A02 TLC', 'Renault', 'Master', '1'),
(2, 'B03 PPD', 'Renault', 'Kangoo', '1'),
(3, 'C04 DFD', 'Vauxhall', 'Vivaro', '2'),
(4, 'D05 RAM', 'Ford', 'Transit', '3'),
(5, 'E06 ROM', 'Ford', 'Transit', '3'),
(6, 'F07 CPU', 'Ford', 'Transit', '3'),
(7, 'G08 PHP', 'Vauxhall', 'Vivaro', '4'),
(8, 'H09 UML', 'Vauxhall', 'Vivaro', '5'),
(9, 'J10 CSS', 'Renault', 'Fabia', '6');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE IF NOT EXISTS `venue` (
  `VenueID` int(8) NOT NULL AUTO_INCREMENT,
  `VenueStadiumName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VenueArea` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `VenueContactNo` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `VenueAddress` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`VenueID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

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
