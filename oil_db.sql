-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 04:16 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oil_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `dsl_cal` ()  NO SQL
UPDATE station
set price=cap_l*65
where oil_type='Diesel'$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pet_cal` ()  NO SQL
UPDATE station
set price=cap_l*73
where oil_type='Petrol'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cname` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `rig_id` int(50) NOT NULL,
  `cap_bought` int(50) NOT NULL,
  `tot_cost` int(50) NOT NULL,
  `tax` double NOT NULL,
  `IfInternational` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cname`, `country`, `rig_id`, `cap_bought`, `tot_cost`, `tax`, `IfInternational`) VALUES
('Indian Oil', 'india', 111, 10000000, 2147483647, 23, 'INTERNATIONAL'),
('Indian Oil', 'India', 1001, 230000, 6000000, 25, 'NATIONAL'),
('Scott Petroleum', 'USA', 1002, 450000, 10000000, 22, 'NATIONAL'),
('Lukoil', 'Russia', 1003, 2700000, 7930050, 18, 'INTERNATIONAL'),
('Shell', 'Germany', 1004, 730000, 14000000, 19, 'NATIONAL'),
('Sicon Oil', 'Italy', 1005, 140000, 4000000, 21, 'NATIONAL'),
('Linde Gas', 'Germany', 1006, 3071000, 8990000, 19, 'INTERNATIONAL'),
('Texaco', 'United Kingdom', 1007, 700000, 1100000, 20, 'NATIONAL'),
('Hunt Oil', 'USA', 1008, 500000, 7600000, 22, 'NATIONAL'),
('Bharat Petroleum', 'India', 1009, 550000, 7000000, 24, 'NATIONAL'),
('Tatneft', 'Russia', 1010, 480000, 9400000, 18, 'NATIONAL'),
('Rosheft', 'Russia', 1011, 300000, 1100000, 22, 'NATIONAL'),
('Eni', 'Rome', 1012, 1100000, 9000000, 24, 'INTERNATIONAL'),
('Total SA', 'France', 1013, 870000, 1800000, 19, 'NATIONAL'),
('Saudi Aramco', 'Saudi Arabia', 1014, 800000, 1100000, 25, 'NATIONAL'),
('BP', 'United Kingdom', 1015, 900000, 2400000, 22, 'NATIONAL'),
('Oil India', 'India', 1016, 900000, 1900000, 23, 'NATIONAL'),
('Exxon Mobil', 'Texas', 1017, 400000, 1100000, 18, 'NATIONAL'),
('Schlumberger', 'Paris', 1018, 600000, 1300000, 23, 'NATIONAL'),
('Equinor', 'Norway', 1019, 2000000, 11000000, 22, 'INTERNATIONAL'),
('Gail', 'India', 1020, 300000, 1100000, 21, 'NATIONAL'),
('Tullow Oil', 'Ireland', 1021, 800000, 3100000, 18, 'NATIONAL'),
('Sinopec', 'China', 1022, 3005790, 6100000, 20, 'INTERNATIONAL'),
('Standard Oil', 'Ohio', 1023, 890000, 1340000, 19, 'NATIONAL'),
('Idemitsu', 'India', 1024, 450000, 1000000, 19, 'NATIONAL'),
('Falcon Oil', 'Sydney', 1025, 720000, 1307000, 24, 'NATIONAL'),
('Senex', 'Brisbane City', 1026, 400000, 1900000, 21, 'NATIONAL'),
('Samson', 'Perth WA', 1027, 110000, 2400000, 17, 'NATIONAL'),
('Beach Energy', 'Adelede', 1028, 300000, 1100000, 23, 'NATIONAL'),
('Nayara Energy', 'India', 1029, 930000, 2600000, 22, 'NATIONAL'),
('Karoon', 'Melbourne', 1030, 700000, 1800000, 18, 'NATIONAL'),
('Nobel Oil', 'Naberezha', 1031, 560000, 2705000, 21, 'NATIONAL'),
('Petrofac', 'Ulanskiy', 1032, 300000, 1100000, 22, 'NATIONAL'),
('Gazprom', 'Ulitza', 1033, 2000000, 1999000, 19, 'INTERNATIONAL'),
('Wintershell DEA', 'Kassel', 1034, 564000, 4300000, 24, 'NATIONAL'),
('Bohrinsel', 'New Germany', 1035, 2700040, 39100000, 21, 'INTERNATIONAL'),
('Oiltanking', 'Frankfurt', 1036, 200000, 1800000, 25, 'NATIONAL'),
('Mero Germany', 'Vohburg', 1037, 1300000, 9000000, 18, 'INTERNATIONAL'),
('CEP', 'Berlin', 1038, 300000, 1100000, 29, 'NATIONAL'),
('EnCana Oil', 'Los Angeles', 1039, 720000, 3600000, 23, 'NATIONAL'),
('Eite Oil', 'Arcadia', 1040, 300000, 1100000, 18, 'NATIONAL'),
('Sanchez Oil', 'Texas', 1041, 1020000, 9307000, 20, 'INTERNATIONAL'),
('Hunt Oil', 'Floorsville', 1042, 670000, 3100000, 23, 'NATIONAL'),
('US Oil', 'Houma LA', 1043, 4000000, 2900000, 18, 'INTERNATIONAL'),
('Murphy Oil', 'Highland', 1044, 700000, 1800000, 19, 'NATIONAL'),
('Sac Oil', 'Sandton', 1045, 3640000, 99008700, 22, 'INTERNATIONAL'),
('Chesapeake', 'Oklahoma', 1046, 300000, 1100000, 15, 'NATIONAL'),
('Azanian Oil', 'Centurion', 1047, 800000, 1100000, 19, 'NATIONAL'),
('Greenville Oil', 'Port Harcourt', 1048, 900000, 1900000, 23, 'NATIONAL'),
('Petromarine', 'Cape Town', 1049, 8900000, 3940000, 21, 'INTERNATIONAL'),
('Afric Oil', 'Sandton', 1050, 300000, 1100000, 19, 'NATIONAL');

-- --------------------------------------------------------

--
-- Table structure for table `company_copy`
--

CREATE TABLE `company_copy` (
  `cname` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `rig_id` int(50) NOT NULL,
  `cap_bought` int(50) NOT NULL,
  `tot_cost` int(50) NOT NULL,
  `tax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_copy`
--

INSERT INTO `company_copy` (`cname`, `country`, `rig_id`, `cap_bought`, `tot_cost`, `tax`) VALUES
('Afric Oil', 'Sandton', 1050, 300000, 1100000, 19),
('Azanian Oil', 'Centurion', 1047, 800000, 1100000, 19),
('Beach Energy', 'Adelede', 1028, 300000, 1100000, 23),
('Bharat Petroleum', 'India', 1009, 550000, 7000000, 24),
('Bohrinsel', 'New Germany', 1035, 2700040, 39100000, 21),
('BP', 'United Kingdom', 1015, 900000, 2400000, 22),
('CEP', 'Berlin', 1038, 300000, 1100000, 29),
('Chesapeake', 'Oklahoma', 1046, 300000, 1100000, 15),
('Eite Oil', 'Arcadia', 1040, 300000, 1100000, 18),
('EnCana Oil', 'Los Angeles', 1039, 720000, 3600000, 23),
('Eni', 'Rome', 1012, 1100000, 9000000, 24),
('Equinor', 'Norway', 1019, 2000000, 11000000, 22),
('Exxon Mobil', 'Texas', 1017, 400000, 1100000, 18),
('Falcon Oil', 'Sydney', 1025, 720000, 1307000, 24),
('Gail', 'India', 1020, 300000, 1100000, 21),
('Gazprom', 'Ulitza', 1033, 2000000, 1999000, 19),
('Greenville Oil', 'Port Harcourt', 1048, 900000, 1900000, 23),
('Hunt Oil', 'USA', 1008, 500000, 7600000, 22),
('Hunt Oil', 'Floorsville', 1042, 670000, 3100000, 23),
('Idemitsu', 'India', 1024, 450000, 1000000, 19),
('Indian Oil', 'india', 111, 10000000, 2147483647, 23),
('Indian Oil', 'India', 1001, 230000, 6000000, 25),
('Karoon', 'Melbourne', 1030, 700000, 1800000, 18),
('Linde Gas', 'Germany', 1006, 3071000, 8990000, 19),
('Lukoil', 'Russia', 1003, 2700000, 7930050, 18),
('Mero Germany', 'Vohburg', 1037, 1300000, 9000000, 18),
('Murphy Oil', 'Highland', 1044, 700000, 1800000, 19),
('Nayara Energy', 'India', 1029, 930000, 2600000, 22),
('Nobel Oil', 'Naberezha', 1031, 560000, 2705000, 21),
('Oil India', 'India', 1016, 900000, 1900000, 23),
('Oiltanking', 'Frankfurt', 1036, 200000, 1800000, 25),
('Petrofac', 'Ulanskiy', 1032, 300000, 1100000, 22),
('Petromarine', 'Cape Town', 1049, 8900000, 3940000, 21),
('Rosheft', 'Russia', 1011, 300000, 1100000, 22),
('Sac Oil', 'Sandton', 1045, 3640000, 99008700, 22),
('Samson', 'Perth WA', 1027, 110000, 2400000, 17),
('Sanchez Oil', 'Texas', 1041, 1020000, 9307000, 20),
('Saudi Aramco', 'Saudi Arabia', 1014, 800000, 1100000, 25),
('Schlumberger', 'Paris', 1018, 600000, 1300000, 23),
('Scott Petroleum', 'USA', 1002, 450000, 10000000, 22),
('Senex', 'Brisbane City', 1026, 400000, 1900000, 21),
('Shell', 'Germany', 1004, 730000, 14000000, 19),
('Sicon Oil', 'Italy', 1005, 140000, 4000000, 21),
('Sinopec', 'China', 1022, 3005790, 6100000, 20),
('Standard Oil', 'Ohio', 1023, 890000, 1340000, 19),
('Tatneft', 'Russia', 1010, 480000, 9400000, 18),
('Texaco', 'United Kingdom', 1007, 700000, 1100000, 20),
('Total SA', 'France', 1013, 870000, 1800000, 19),
('Tullow Oil', 'Ireland', 1021, 800000, 3100000, 18),
('US Oil', 'Houma LA', 1043, 4000000, 2900000, 18),
('Wintershell DEA', 'Kassel', 1034, 564000, 4300000, 24);

--
-- Triggers `company_copy`
--
DELIMITER $$
CREATE TRIGGER `inserting` BEFORE INSERT ON `company_copy` FOR EACH ROW INSERT INTO company VALUES(new.cname,new.country,new.rig_id,new.cap_bought,new.tot_cost,new.tax,'')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update` BEFORE INSERT ON `company_copy` FOR EACH ROW update company
set IfInternational='NATIONAL'
where cap_bought<1000000
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updating` AFTER INSERT ON `company_copy` FOR EACH ROW update company
set IfInternational='INTERNATIONAL'
where cap_bought>1000000
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `new_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `cname`, `new_date`) VALUES
(1, 'shanks', '2019-11-06'),
(2, 'shar', '2019-11-06'),
(3, 'shar', '2019-11-06'),
(4, 'Rosheft', '2019-11-06'),
(5, 'Eni', '2019-11-06'),
(6, 'Baltic Fuel', '2019-11-06'),
(7, 'BP', '2019-11-06'),
(8, 'Oil India', '2019-11-06'),
(9, 'Exxon Mobil', '2019-11-06'),
(10, 'Schlumberger', '2019-11-06'),
(11, 'Equinor', '2019-11-06'),
(12, 'Gail', '2019-11-06'),
(13, 'Tullow Oil', '2019-11-06'),
(14, 'Sinopec', '2019-11-06'),
(15, 'Standard Oil', '2019-11-06'),
(16, 'Idemitsu', '2019-11-06'),
(17, 'Falcon Oil', '2019-11-06'),
(18, 'Senex', '2019-11-06'),
(19, 'Samson', '2019-11-06'),
(20, 'Beach Energy', '2019-11-06'),
(21, 'Nayara Energy', '2019-11-06'),
(22, 'Karoon', '2019-11-06'),
(23, 'Nobel Oil', '2019-11-06'),
(24, 'Petrofac', '2019-11-06'),
(25, 'Gazprom', '2019-11-06'),
(26, 'Wintershell DEA', '2019-11-06'),
(27, 'Bohrinsel', '2019-11-06'),
(28, 'Oiltanking', '2019-11-06'),
(29, 'Mero Germany', '2019-11-06'),
(30, 'CEP', '2019-11-06'),
(31, 'EnCana Oil', '2019-11-06'),
(32, 'Eite Oil', '2019-11-06'),
(33, 'Sanchez Oil', '2019-11-06'),
(34, 'Hunt Oil', '2019-11-06'),
(35, 'US Oil', '2019-11-06'),
(36, 'Murphy Oil', '2019-11-06'),
(37, 'Sac Oil', '2019-11-06'),
(38, 'Chesapeake', '2019-11-06'),
(39, 'Azanian Oil', '2019-11-06'),
(40, 'Greenville Oil', '2019-11-06'),
(41, 'Petromarine', '2019-11-06'),
(42, 'Afric Oil', '2019-11-06'),
(43, 'Total SA', '2019-11-06'),
(44, 'Saudi Aramco', '2019-11-06'),
(45, 'e66jhthb', '2019-11-07'),
(46, 'fg', '2019-11-07'),
(47, 'abc', '2019-11-07'),
(54, 'qweeee', '2019-11-07'),
(55, 'wqe', '2019-11-07'),
(56, 'rhbts', '2019-11-07'),
(57, 'qwert', '2019-11-07'),
(60, 'ABCD', '2019-11-07'),
(75, 'liop', '2019-11-07'),
(76, 'qwert', '2019-11-08'),
(77, 'qwert', '2019-11-08'),
(78, 'zxcvb', '2019-11-08'),
(79, 'ssdv', '2019-11-10'),
(80, 'sanvi', '2019-11-10'),
(81, 'asdf', '2019-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `oilrigs`
--

CREATE TABLE `oilrigs` (
  `rig_id` int(50) NOT NULL,
  `rig_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `rig_type` varchar(50) NOT NULL,
  `capacity` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oilrigs`
--

INSERT INTO `oilrigs` (`rig_id`, `rig_name`, `location`, `rig_type`, `capacity`) VALUES
(123, 'qwert', 'india', 'asdf', 1234),
(1001, 'Berkut Oil Rig', 'Russian Pacific Ocean', 'Offshore', 100000),
(1002, 'Ensign', 'Ensign Drill', 'Onshore', 95000),
(1003, 'Perdido', 'Gulf Of Mexico', 'Offshore', 100000),
(1004, 'Shiv Vani', 'India', 'Jackup', 90000),
(1005, 'Night tuna', 'Louisiana', 'Offshore', 68000),
(1006, 'Carnavoron', 'Australia', 'Onshore', 110000),
(1007, 'Thunder Horse', 'New Orleans', 'Offshore', 200000),
(1008, 'Jamnagar Refinery', 'Gulf of Kuchh', 'Onshore', 50000),
(1009, 'Clair', 'North Sea', 'Offshore', 120000),
(1010, 'Alberta', 'Canada', 'Offshore', 90000),
(1011, 'Bombay High', 'Mumbai', 'Offshore', 11000),
(1012, 'Al Eiden', 'Southeast Asia', 'Ofshore', 19000),
(1013, 'Hai Yang Shi', 'Far East Asia', 'Offshore', 58000),
(1014, 'Petroiran', 'Persian Gulf', 'Offshore', 33000),
(1015, 'Mad Dog', 'Mexico', 'Onshore', 57000),
(1016, 'Lula', 'Brazil', 'Offshore', 71000),
(1017, 'Trident XIV', 'Western Africa', 'Offshore', 10000),
(1018, 'Bruce Rappaport', 'Venezuela', 'Onshore', 11000),
(1019, 'Azeri', 'Caspian Sea', 'Offshore', 60000),
(1020, 'Leviathan', 'Mediterranean', 'Offshore', 79000),
(1021, 'Trinidad', 'Caribbean', 'Offshore', 100000),
(1022, 'Prudhoc', 'Alaska', 'Onshore', 98000),
(1023, 'Jabel', 'Red Sea', 'Offshore', 84000),
(1024, 'Ayazil', 'Black Sea', 'Offshore', 130000),
(1025, 'Encana', 'Canadian Pacific', 'Offshore', 110000),
(1026, 'Sonatrach', 'Algeria', 'Onshore', 21000),
(1027, 'Dorood', 'Iran', 'Onshore', 74000),
(1028, 'Marlin B', 'Bass Strait', 'Onshore', 100000),
(1029, 'Malta', 'Madagascar', 'Offshore', 110000),
(1030, 'Bermuda Oil Rig', 'Bermuda', 'Offshore', 120000),
(1031, 'Petronas', 'Kuala Lampur', 'Onshore', 90000),
(1032, 'PSC', 'Malaysia', 'Offshore', 100000),
(1033, 'Pertamina', 'Sumatra', 'Onshore', 99000),
(1034, 'Papua', 'New Guinea', 'Onshore', 21000),
(1035, 'PHE WMO', 'Jakarta', 'Onshore', 79000),
(1036, 'Moros', 'Mindanao', 'Onshore', 211000),
(1037, 'Svalbard', 'Splitsbergen', 'Offshore', 210000),
(1038, 'Eni-led', 'Kallmantan', 'Offshore', 79000),
(1039, 'Crystal', 'Singapore', 'Onshore', 200000),
(1040, 'Conoco Phillips', 'Huston', 'Onshore', 300000),
(1041, 'Berkut', 'Berkut', 'Offshore', 400000),
(1042, 'Chevron', 'Hibernia', 'Onshore', 110000),
(1043, 'Mars B', 'Olympus', 'Offshore', 84000),
(1044, 'Rig Tech', 'Kochi', 'Onshore', 99000),
(1045, 'Al-Qatif', 'Qatif', 'Onshore', 210000),
(1046, 'Gullfaks C', 'Petronius', 'Offshore', 69000),
(1047, 'Epsilon', 'Suban', 'Onshore', 170000),
(1048, 'Jaydev Oil Rig', 'Maharah', 'Offshore', 280000),
(1049, 'Bullwinkle', 'Bina', 'Offshore', 93000),
(1050, 'BBLT', 'Khurais', 'Offshore', 285000);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`uname`, `email`, `password`) VALUES
('asdf', 'asdf@gmail.com', 'Asdf@1234'),
('qwerty', 'qwerty1@gmail.com', 'Qwerty!234'),
('raj', 'raj123@gmail.com', 'Raj@1234'),
('sam', 'sam@gmail.com', 'S@miscool123');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `cname` varchar(50) NOT NULL,
  `stat_id` int(50) NOT NULL,
  `stat_loc` varchar(50) NOT NULL,
  `cap_l` int(50) NOT NULL,
  `oil_type` varchar(50) NOT NULL,
  `tax` int(50) NOT NULL,
  `price` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`cname`, `stat_id`, `stat_loc`, `cap_l`, `oil_type`, `tax`, `price`) VALUES
('Indian Oil', 54, 'oiu', 123, 'Petrol', 12, 8979),
('Indian Oil', 2001, 'KS Layout', 1000, 'Petrol', 25, 73000),
('Indian Oil', 2002, 'BSK', 800, 'Petrol', 25, 58400),
('Indian Oil', 2003, 'RR Nagar', 900, 'Petrol', 25, 65700),
('Indian Oil', 2004, 'Monotype', 1000, 'Diesel', 25, 65000),
('Indian Oil', 2005, 'Jayanagar', 900, 'Diesel', 25, 58500),
('Indian Oil', 2006, 'KS Layout', 900, 'Diesel', 25, 58500),
('Indian Oil', 2007, 'Monotype', 1000, 'Petrol', 25, 73000),
('Indian Oil', 2008, 'Isro Layout', 900, 'Petrol', 25, 65700),
('Indian Oil', 2009, 'Isro Layout', 1000, 'Diesel', 25, 65000),
('Indian Oil', 2010, 'Jayanagar', 1000, 'Petrol', 25, 73000),
('Bharat Petroleum', 2011, 'RR Nagar', 800, 'Diesel', 25, 52000),
('Bharat Petroleum', 2012, 'BSK', 1000, 'Petrol', 25, 73000),
('Bharat Petroleum', 2013, 'Monotype', 900, 'Diesel', 25, 58500),
('Bharat Petroleum', 2014, 'JPN', 800, 'Petrol', 25, 58400),
('Bharat Petroleum', 2015, 'Monotype', 800, 'Diesel', 25, 52000),
('Bharat Petroleum', 2016, 'RR Nagar', 800, 'Petrol', 25, 58400),
('Bharat Petroleum', 2017, 'BSK', 900, 'Diesel', 25, 58500),
('Bharat Petroleum', 2018, 'Jayanagar', 800, 'Petrol', 25, 58400),
('Bharat Petroleum', 2019, 'Isro Layout', 7900, 'Petrol', 25, 576700),
('Bharat Petroleum', 2020, 'Jayanagar', 1000, 'Diesel', 25, 65000),
('Total SA', 2021, 'Rennes', 1300, 'Diesel', 25, 84500),
('Total SA', 2022, 'Poitiers', 1500, 'Petrol', 25, 109500),
('Total SA', 2023, 'Royan', 890, 'Diesel', 25, 57850),
('Total SA', 2024, 'Limoges', 910, 'Diesel', 25, 59150),
('Total SA', 2025, 'Bourges', 1400, 'Petrol', 25, 102200),
('Total SA', 2026, 'Rouen', 890, 'Diesel', 25, 57850),
('Total SA', 2027, 'Le Mans', 870, 'Petrol', 25, 63510),
('Total SA', 2028, 'Nantes', 940, 'Petrol', 25, 68620),
('Total SA', 2029, 'Amiens', 780, 'Diesel', 25, 50700),
('Total SA', 2030, 'Lannion', 800, 'Diesel', 25, 52000),
('Tatneft', 2031, 'Bryanka', 1900, 'Petrol', 25, 138700),
('Tatneft', 2032, 'Motygino', 720, 'Diesel', 25, 46800),
('Tatneft', 2033, 'Taseyevo', 700, 'Petrol', 25, 51100),
('Tatneft', 2034, 'Krivlyak', 1600, 'Petrol', 25, 116800),
('Tatneft', 2035, 'Manzya', 980, 'Diesel', 25, 63700),
('Tatneft', 2036, 'Sulomay', 790, 'Petrol', 25, 57670),
('Tatneft', 2037, 'Mirnoye', 970, 'Diesel', 25, 63050),
('Tatneft', 2038, 'Surinda', 1200, 'Petrol', 25, 87600),
('Tatneft', 2039, 'Uchami', 790, 'Diesel', 25, 51350),
('Tatneft', 2040, 'Nidym', 1000, 'Petrol', 25, 73000),
('Exxon Mobil', 2041, 'Gail', 800, 'Diesel', 25, 52000),
('Exxon Mobil', 2042, 'Colorado City', 900, 'Petrol', 25, 65700),
('Exxon Mobil', 2043, 'Menard', 6900, 'Diesel', 25, 448500),
('Exxon Mobil', 2044, 'Stephenville', 700, 'Petrol', 25, 51100),
('Exxon Mobil', 2045, 'Guthrie', 1100, 'Diesel', 25, 71500),
('Exxon Mobil', 2046, 'Graham', 950, 'Diesel', 25, 61750),
('Exxon Mobil', 2047, 'Crosbyton', 800, 'Petrol', 25, 58400),
('Exxon Mobil', 2048, 'Alpine', 850, 'Petrol', 25, 62050),
('Exxon Mobil', 2049, 'Dryden', 1000, 'Diesel', 25, 65000),
('Exxon Mobil', 2050, 'Pandale', 900, 'Petrol', 25, 65700);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `stat_id` int(50) NOT NULL,
  `vehi_no` varchar(50) NOT NULL,
  `vehi_type` varchar(50) NOT NULL,
  `vehi_cap` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`stat_id`, `vehi_no`, `vehi_type`, `vehi_cap`) VALUES
(2001, 'IN30A6', 'Tank', 100),
(2002, 'IN00Z4', 'Truck', 800),
(2003, 'IN21C7', 'Tank', 110),
(2004, 'IN65L3', 'Truck', 500),
(2005, 'IN37B9', 'Trailer', 100),
(2006, 'IN78G4', 'Van', 50),
(2007, 'IN90S2', 'Truck', 300),
(2008, 'IN17V4', 'Trailer', 100),
(2009, 'IN93F6', 'Tank', 90),
(2010, 'IN75K4', 'Van', 40),
(2011, 'CN99Y1', 'Trailer', 110),
(2012, 'CN87B5', 'Truck', 700),
(2013, 'CN90N2', 'Van', 80),
(2014, 'CN43V2', 'Trailer', 130),
(2015, 'CN04M8', 'Trailer', 120),
(2016, 'CN83B2', 'Tank', 140),
(2017, 'CN79L9', 'Van', 60),
(2018, 'CN47F3', 'Truck', 800),
(2019, 'CN58S1', 'Trailer', 110),
(2020, 'CN80O4', 'Tank', 120),
(2021, 'AS09Y1', 'Van', 75),
(2022, 'AS56B4', 'Trailer', 115),
(2023, 'AS83X0', 'Truck', 130),
(2024, 'AS03G3', 'Van', 95),
(2025, 'AS21L9', 'Tank', 180),
(2026, 'AS89V4', 'Trailer', 140),
(2027, 'AS83A6', 'Truck', 710),
(2028, 'AS68P2', 'Tank', 165),
(2029, 'AS71I4', 'Van', 77),
(2030, 'AS70M1', 'Trailer', 125),
(2031, 'GE99Y1', 'Truck', 136),
(2032, 'GE23H7', 'Tank', 120),
(2033, 'GE71H4', 'Van', 95),
(2034, 'GE82K4', 'Trailer', 140),
(2035, 'GE65L2', 'Truck', 310),
(2036, 'GE27G6', 'Tank', 166),
(2037, 'GE40Z5', 'Trailer', 210),
(2038, 'GE52D8', 'Van', 79),
(2039, 'GE93W5', 'Van', 90),
(2040, 'GE37J3', 'Tank', 152),
(2041, 'RS67S3', 'Trailer', 110),
(2042, 'RS23G6', 'Van', 47),
(2043, 'RS95J3', 'Truck', 410),
(2044, 'RS02L6', 'Trailer', 160),
(2045, 'RS73H9', 'Tank', 99),
(2046, 'RS25S8', 'Truck', 310),
(2047, 'RS38M4', 'Trailer', 180),
(2048, 'RS81Z4', 'Van', 73),
(2049, 'RS73L2', 'Tank', 160),
(2050, 'RS58Y4', 'Truck', 680);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`rig_id`,`cname`);

--
-- Indexes for table `company_copy`
--
ALTER TABLE `company_copy`
  ADD PRIMARY KEY (`cname`,`rig_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oilrigs`
--
ALTER TABLE `oilrigs`
  ADD PRIMARY KEY (`rig_id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`stat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `oilrigs`
--
ALTER TABLE `oilrigs`
  MODIFY `rig_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4355;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `stat_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2051;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
