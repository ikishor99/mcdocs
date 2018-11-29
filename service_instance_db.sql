-- phpMyAdmin SQL Dump
-- version 4.5.0-dev
-- http://www.phpmyadmin.net
--
-- Host: 192.168.112.14:3306
-- Generation Time: Nov 26, 2018 at 04:00 AM
-- Server version: 5.7.21-21-log
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `service_instance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accholderrh`
--

CREATE TABLE IF NOT EXISTS `accholderrh` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `custid` varchar(255) DEFAULT NULL,
  `householdid` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `custid` varchar(50) NOT NULL,
  `accountnumber` varchar(50) NOT NULL,
  `bankprdcode` varchar(50) NOT NULL,
  `programid` varchar(10) DEFAULT NULL,
  `accountstatusid` varchar(50) DEFAULT NULL,
  `pointsaccured` decimal(10,2) DEFAULT NULL,
  `householdid` varchar(20) NOT NULL,
  `accounttype` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`custid`, `accountnumber`, `bankprdcode`, `programid`, `accountstatusid`, `pointsaccured`, `householdid`, `accounttype`, `created_at`, `updated_at`) VALUES
('6541230', '5461237890123456000', 'GOLD', 'P1', '1', '485.00', '6548711', 'PRIMARY', '2018-10-04 09:59:22', '2018-10-04 09:59:22'),
('6541231', '5461237890123456001', 'SILVER', 'P1', '1', '436.00', '6548714', 'PRIMARY', '2018-10-04 09:59:56', '2018-10-04 09:59:56'),
('6541232', '5461237890123456002', 'PREMIUM', 'P1', '1', '485.00', '6548715', 'PRIMARY', '2018-10-04 10:00:06', '2018-10-04 10:00:06'),
('6541233', '5461237890123456003', 'GOLD', 'P1', '1', '505.00', '6548716', 'PRIMARY', '2018-10-04 10:21:19', '2018-10-04 10:21:19'),
('6541234', '5461237890123456004', 'SILVER', 'P1', '1', '500.00', '6548717', 'PRIMARY', '2018-10-04 10:21:31', '2018-10-04 10:21:31'),
('6541235', '5461237890123456005', 'SILVER', 'P1', '1', '40.00', '6548718', 'PRIMARY', '2018-10-04 10:21:40', '2018-10-04 10:21:40'),
('6541236', '5461237890123456006', 'PREMIUM', 'P1', '1', '31.00', '6548719', 'PRIMARY', '2018-10-04 10:21:49', '2018-10-04 10:21:49'),
('6541237', '5461237890123456007', 'TITANIUM', 'P1', '1', '5.00', '6548710', 'PRIMARY', '2018-10-04 10:21:58', '2018-10-04 10:21:58'),
('6541238', '5461237890123456008', 'PREMIUM', 'P1', '1', '4665.00', '6548730', 'PRIMARY', '2018-10-04 10:22:10', '2018-10-04 10:22:10'),
('6541239', '5461237890123456009', 'SILVER', 'P1', '1', '968.00', '6548740', 'PRIMARY', '2018-10-04 10:22:19', '2018-10-04 10:22:19'),
('6541230', '5461237890123456011', 'TITANIUM', 'P1', '1', '510.60', '6548712', 'PRIMARY', '2018-10-04 09:59:14', '2018-10-04 09:59:14'),
('6541230', '5461237890123456012', 'TITANIUM', 'P1', '1', '505.00', '6548713', 'PRIMARY', '2018-10-04 09:59:39', '2018-10-04 09:59:39'),
('6541234', '5461237890123456038', 'GOLD', 'P1', '1', '500.00', '6548750', 'PRIMARY', '2018-10-04 10:22:28', '2018-10-04 10:22:28'),
('6541233', '5461237890123456045', 'SILVER', 'P1', '1', '500.00', '6548760', 'PRIMARY', '2018-10-04 10:22:37', '2018-10-04 10:22:37'),
('6541237', '5461237890123457000', 'PREMIUM', 'P1', '1', '500.00', '6548770', 'PRIMARY', '2018-10-04 10:22:48', '2018-10-04 10:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `cardtransaction`
--

CREATE TABLE IF NOT EXISTS `cardtransaction` (
  `transactionid` varchar(255) NOT NULL,
  `accountnumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `currencycode` varchar(255) DEFAULT NULL,
  `merchantname` varchar(255) DEFAULT NULL,
  `pointscaluclated` double NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `transactionamount` varchar(255) DEFAULT NULL,
  `transactiontimestamp` datetime DEFAULT NULL,
  `transcationtype` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `merchantid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cardtransaction`
--

INSERT INTO `cardtransaction` (`transactionid`, `accountnumber`, `city`, `created_at`, `currencycode`, `merchantname`, `pointscaluclated`, `state`, `transactionamount`, `transactiontimestamp`, `transcationtype`, `updated_at`, `merchantid`) VALUES
('8639196', '5461237890123456009', 'NewYork', '2018-10-07 16:16:56', 'USD', 'Mastercard', 1.5, 'Philedelhpia', '30', '2018-10-07 16:16:56', 'minus', '2018-10-07 16:16:56', 4001),
('5769197', '5461237890123456009', 'NewYork', '2018-10-07 16:17:58', 'USD', 'Mastercard', 1.5, 'Philedelhpia', '30', '2018-10-07 16:17:58', 'add', '2018-10-07 16:17:58', 4001),
('3677655', '5461237890123456009', 'NewYork', '2018-10-07 16:52:02', 'USD', 'Mastercard', 1.5, 'Philedelhpia', '30', '2018-10-07 16:52:02', 'add', '2018-10-07 16:52:02', 4001),
('7762249', '5461237890123456009', 'NewYork', '2018-10-07 17:53:37', 'USD', 'Mastercard', 1.5, 'Philedelhpia', '30', '2018-10-07 17:53:37', 'add', '2018-10-07 17:53:37', 4001),
('2567943', '5461237890123456009', 'NewYork', '2018-10-09 06:21:35', 'USD', 'leereR', 1.5, 'Philedelhpia', '1000', NULL, 'cr', '2018-10-09 06:21:35', 4001),
('2914578', '5461237890123456008', 'NewYork', '2018-10-10 04:06:44', 'USD', 'Mastercard', 50, 'Philedelhpia', '1000', '2018-10-10 04:06:44', 'add', '2018-10-10 04:06:44', 1234),
('3743586', '5461237890123456008', 'NewYork', '2018-10-10 04:08:09', 'USD', 'Mastercard', 500, 'Philedelhpia', '10000', '2018-10-10 04:08:09', 'add', '2018-10-10 04:08:09', 1234),
('9330383', '5461237890123456008', 'NewYork', '2018-10-10 14:28:53', 'USD', 'Mastercard', 500, 'Philedelhpia', '10000', '2018-10-10 14:28:53', 'add', '2018-10-10 14:28:53', 1234),
('6627255', '5461237890123456003', 'NewYork', '2018-10-11 02:05:25', 'USD', 'Mastercard', 50, 'Philedelhpia', '1000', '2018-10-11 02:05:25', 'add', '2018-10-11 02:05:25', 1234),
('2783679', '5461237890123456006', 'NewYork', '2018-10-11 08:33:48', 'USD', 'Mastercard', 500, 'Philedelhpia', '10000', '2018-10-11 08:33:48', 'add', '2018-10-11 08:33:48', 1234),
('8181688', '5461237890123456009', 'Ofallon', '2018-10-11 11:25:51', 'USD', 'MAX', 6, 'MO', '120', '2018-10-11 11:25:51', 'D', '2018-10-11 11:25:51', 1234),
('5173945', '5461237890123456001', 'Ofallon', '2018-10-11 11:27:59', 'USD', 'MAX', 6, 'MO', '120', '2018-10-11 11:27:59', 'D', '2018-10-11 11:27:59', 1234),
('3640843', '5461237890123456001', 'Ofallon', '2018-10-11 11:32:00', 'USD', 'MAX', 5, 'MO', '100', '2018-10-11 11:32:00', 'D', '2018-10-11 11:32:00', 1234),
('4494846', '5461237890123456008', 'NewYork', '2018-10-11 14:28:36', 'USD', 'Mastercard', 50, 'Philedelhpia', '1000', '2018-10-11 14:28:36', 'add', '2018-10-11 14:28:36', 1234),
('2099410', '5461237890123456008', 'NewYork', '2018-10-17 07:31:47', 'USD', 'Mastercard', 500, 'Philedelhpia', '10000', '2018-10-17 07:31:47', 'add', '2018-10-17 07:31:47', 1234),
('8639197', '5461237890123456000', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639198', '5461237890123456001', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639199', '5461237890123456002', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639200', '5461237890123456003', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639201', '5461237890123456004', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639202', '5461237890123456005', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639203', '5461237890123456006', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639204', '5461237890123456007', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639205', '5461237890123456008', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639206', '5461237890123456009', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639207', '5461237890123456011', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639208', '5461237890123456012', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639209', '5461237890123456038', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639210', '5461237890123456045', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('8639211', '5461237890123457000', 'NewYork', '2018-10-05 07:31:47', 'None', 'Mastercard', 500, 'Philedelhpia', '0', '2018-10-05 07:31:47', 'Signing Bonus', '2018-10-05 07:31:47', 1234),
('91758652', '5461237890123456000', 'NewYork', '2018-10-17 11:22:03', 'USD', 'Mastercard', 25, 'Philedelhpia', '500', '2018-10-17 11:22:03', 'add', '2018-10-17 11:22:03', 1234),
('46135099', '5461237890123456011', 'NewYork', '2018-10-17 11:26:25', 'USD', 'Mastercard', 5, 'Philedelhpia', '100', '2018-10-17 11:26:25', 'add', '2018-10-17 11:26:25', 1234),
('71617396', '5461237890123456008', 'NewYork', '2018-10-17 11:34:10', 'USD', 'Mastercard', 15, 'Philedelhpia', '300', '2018-10-17 11:34:10', 'add', '2018-10-17 11:34:10', 1234),
('29193037', '5461237890123456011', 'NewYork', '2018-10-17 11:36:37', 'USD', 'Mastercard', 0.6000000000000001, 'Philedelhpia', '12', '2018-10-17 11:36:37', 'add', '2018-10-17 11:36:37', 1234),
('90462204', '5461237890123456008', 'NewYork', '2018-10-17 11:40:47', 'USD', 'Mastercard', 50, 'Philedelhpia', '1000', '2018-10-17 11:40:47', 'add', '2018-10-17 11:40:47', 1234),
('74330330', '5461237890123456008', 'NewYork', '2018-10-17 11:41:08', 'USD', 'Mastercard', 25, 'Philedelhpia', '500', '2018-10-17 11:41:08', 'add', '2018-10-17 11:41:08', 1234),
('61745068', '5461237890123456012', 'NewYork', '2018-10-17 11:49:36', 'USD', 'Mastercard', 5, 'Philedelhpia', '100', '2018-10-17 11:49:36', 'add', '2018-10-17 11:49:36', 1234),
('51066618', '5461237890123456000', 'NewYork', '2018-10-17 11:50:50', 'USD', 'Mastercard', 5, 'Philedelhpia', '100', '2018-10-17 11:50:50', 'add', '2018-10-17 11:50:50', 1234),
('100656601', '5461237890123456000', 'NewYork', '2018-10-17 11:51:05', 'USD', 'Mastercard', 5, 'Philedelhpia', '100', '2018-10-17 11:51:05', 'add', '2018-10-17 11:51:05', 1234),
('95389850', '5461237890123456000', 'NewYork', '2018-10-17 11:52:27', 'USD', 'Mastercard', 5, 'Philedelhpia', '100', '2018-10-17 11:52:27', 'add', '2018-10-17 11:52:27', 1234),
('52583220', '5461237890123456011', 'NewYork', '2018-10-17 11:52:45', 'USD', 'Mastercard', 5, 'Philedelhpia', '100', '2018-10-17 11:52:45', 'add', '2018-10-17 11:52:45', 1234),
('91452692', '5461237890123456008', 'NewYork', '2018-10-22 05:51:14', 'USD', 'Mastercard', 50, 'Philedelhpia', '1000', '2018-10-22 05:51:14', 'add', '2018-10-22 05:51:14', 1234),
('20496172', '5461237890123456000', 'NewYork', '2018-10-22 10:42:47', 'USD', 'Mastercard', 500, 'Philedelhpia', '10000', '2018-10-22 10:42:47', 'add', '2018-10-22 10:42:47', 1234),
('94550722', '5461237890123456008', 'NewYork', '2018-10-26 10:55:27', 'USD', 'Mastercard', 25, 'Philedelhpia', '500', '2018-10-26 10:55:27', 'add', '2018-10-26 10:55:27', 1234),
('94928103', '5461237890123456005', 'NewYork', '2018-10-29 11:47:34', 'USD', 'Mastercard', 50, 'Philedelhpia', '1000', '2018-10-29 11:47:34', 'add', '2018-10-29 11:47:34', 1234),
('38617685', '5461237890123456008', 'NewYork', '2018-10-30 05:25:23', 'USD', 'Mastercard', 5, 'Philedelhpia', '100', '2018-10-30 05:25:23', 'add', '2018-10-30 05:25:23', 1234),
('59822128', '5461237890123456008', 'NewYork', '2018-10-30 05:29:07', 'USD', 'Mastercard', 5000, 'Philedelhpia', '100000', '2018-10-30 05:29:07', 'add', '2018-10-30 05:29:07', 1234),
('91271184', '5461237890123456008', 'NewYork', '2018-10-31 08:14:11', 'USD', 'Mastercard', 250, 'Philedelhpia', '5000', '2018-10-31 08:14:11', 'add', '2018-10-31 08:14:11', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `custaccountreference`
--

CREATE TABLE IF NOT EXISTS `custaccountreference` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `fromrange` varchar(255) DEFAULT NULL,
  `ica` varchar(255) DEFAULT NULL,
  `programid` varchar(255) DEFAULT NULL,
  `torange` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `custid` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `addressline1` varchar(500) NOT NULL,
  `addressline2` varchar(500) NOT NULL,
  `ssn` varchar(4) NOT NULL,
  `dob` date NOT NULL,
  `mmn` varchar(100) NOT NULL,
  `bankcustomernumber` varchar(100) NOT NULL,
  `previous_bcn` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `ica_code` varchar(50) NOT NULL,
  `sys_cust_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `firstname`, `lastname`, `addressline1`, `addressline2`, `ssn`, `dob`, `mmn`, `bankcustomernumber`, `previous_bcn`, `zipcode`, `state`, `city`, `ica_code`, `sys_cust_id`, `created_at`, `updated_at`) VALUES
('6541230', 'John', 'Nickolson', 'First Cross Street', 'Abraham Street', '4534', '2002-10-02', '1234', '5461237890123456000', '5987643210123456000', '654321', 'Philedelhpia', 'NewYork', '6542', '903490148109490', '2018-10-04 09:50:21', '2018-10-04 09:50:21'),
('6541231', 'Bean', 'link', 'First Cross Street', 'Abraham Street', '5544', '2002-10-02', '1234', '5461237890123456001', '5987643210123456000', '654321', 'Philedelhpia', 'Pittsburg', '6552', '903490148109491', '2018-10-04 09:50:33', '2018-10-04 09:50:33'),
('6541232', 'Rock', 'Raja', 'First Cross Street', 'Abraham Street', '3456', '2002-10-02', '1234', '5461237890123456002', '5987643210123456000', '88495', 'Philedelhpia', 'Newark', '6562', '903490148109492', '2018-10-04 09:50:48', '2018-10-04 09:50:48'),
('6541233', 'Subbu', 'Sulur', 'First Cross Street', 'Abraham Street', '5678', '2002-10-02', '1234', '5461237890123456003', '5987643210123456000', '654321', 'Philedelhpia', 'NewYork', '6572', '903490148109493', '2018-10-04 10:18:55', '2018-10-04 10:18:55'),
('6541234', 'Ravi', 'Kumar', 'First Cross Street', 'Abraham Street', '3245', '2002-10-02', '1234', '5461237890123456004', '5987643210123456000', '88495', 'Philedelhpia', 'NewYork', '6548', '903490148109494', '2018-10-04 10:19:14', '2018-10-04 10:19:14'),
('6541235', 'Shankar', 'Raj', 'First Cross Street', 'Abraham Street', '5432', '2002-10-02', '1234', '5461237890123456005', '5987643210123456000', '45000', 'Philedelhpia', 'NewYork', '6549', '903490148109495', '2018-10-04 10:19:24', '2018-10-04 10:19:24'),
('6541236', 'Melinda', 'Nickolson', 'First Cross Street', 'Abraham Street', '8907', '2002-10-02', '1234', '5461237890123456006', '5987643210123456000', '66100', 'Philedelhpia', 'NewYork', '6042', '903490148109496', '2018-10-04 10:19:37', '2018-10-04 10:19:37'),
('6541237', 'Amanda', 'Scion', 'First Cross Street', 'Abraham Street', '6094', '2002-10-02', '1234', '5461237890123456007', '5987643210123456000', '88495', 'Philedelhpia', 'NewYork', '6142', '903490148109497', '2018-10-04 10:19:47', '2018-10-04 10:19:47'),
('6541238', 'Emma', 'Stone', 'First Cross Street', 'Abraham Street', '1850', '2002-10-02', '1234', '5461237890123456008', '5987643210123456000', '45504', 'Philedelhpia', 'NewYork', '6543', '903490148109498', '2018-10-04 10:19:59', '2018-10-04 10:19:59'),
('6541239', 'Elon', 'Musk', 'First Cross Street', 'Abraham Street', '6543', '2002-10-02', '1234', '5461237890123456010', '5987643210123456000', '89878', 'Philedelhpia', 'NewYork', '6442', '903490148109499', '2018-10-09 05:39:15', '2018-10-09 05:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `hhrole`
--

CREATE TABLE IF NOT EXISTS `hhrole` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `custid` varchar(255) DEFAULT NULL,
  `householdid` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `merctranscategory`
--

CREATE TABLE IF NOT EXISTS `merctranscategory` (
  `id` int(11) NOT NULL,
  `classification` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `merchantid` int(11) NOT NULL,
  `merchantname` varchar(45) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43228 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merctranscategory`
--

INSERT INTO `merctranscategory` (`id`, `classification`, `type`, `merchantid`, `merchantname`, `description`) VALUES
(43211, 'Travel&Leisure', 'flight', 4001, 'indigo', 'flight tickets'),
(43212, 'Travel&Leisure', 'hotel', 4002, 'DoubeTree', 'hotel stay'),
(43213, 'Travel&Leisure', 'gasoline', 4003, 'BP petroleum', 'road travel'),
(43214, 'Entertainment', 'movies', 5001, 'inox theatres', 'movie tickets'),
(43219, 'Entertainment', 'theatres', 5002, 'pvr cinemas', 'movie tickets'),
(43220, 'Entertainment', 'pub', 5003, 'down town', 'pubs'),
(43221, 'HealthCare', 'hospital', 6001, 'Fortis', 'health'),
(43222, 'HealthCare', 'Pharmacy', 6002, 'ApolloPharmacy', 'medicine purchases'),
(43223, 'Lifestyle', 'home', 3001, 'Aeropostal', 'clothes'),
(43224, 'Lifestyle', 'Grocery', 3002, 'Bigbasket', 'groceries'),
(43225, 'Lifestyle', 'Footware', 3004, 'Bata', 'footware'),
(43226, 'Electronics', 'appliance', 9001, 'Amazon', 'electronics'),
(43227, 'Electronics', 'online', 9002, 'Flipkart', 'online electronics');

-- --------------------------------------------------------

--
-- Table structure for table `redemptiontransaction`
--

CREATE TABLE IF NOT EXISTS `redemptiontransaction` (
  `redeemid` varchar(255) NOT NULL,
  `accountnumber` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `custid` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `redeemeditem` varchar(255) DEFAULT NULL,
  `redeemedpoints` double NOT NULL,
  `redemptointimestaamp` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `vendorid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `redemptiontransaction`
--

INSERT INTO `redemptiontransaction` (`redeemid`, `accountnumber`, `created_at`, `custid`, `quantity`, `redeemeditem`, `redeemedpoints`, `redemptointimestaamp`, `updated_at`, `vendorid`) VALUES
('90993486', '5461237890123456008', '2018-10-31 08:18:16', '1', '1', 'GAP Women Grey Modern Long Sleeve Boatneck Tee', 30, '2018-10-31 08:18:16', '2018-10-31 08:18:16', 'Mastercard'),
('60043719', '5461237890123456008', '2018-10-31 08:18:16', '1', '1', 'GAP Women Grey Modern Long Sleeve Boatneck Tee 100% Cotton Blended Material', 15, '2018-10-31 08:18:16', '2018-10-31 08:18:16', 'Mastercard'),
('4962524', '5461237890123456008', '2018-10-31 05:34:59', '1', '1', 'GAP Women Grey Modern Long Sleeve Boatneck Tee 100% Cotton Blended Material', 15, '2018-10-31 05:34:59', '2018-10-31 05:34:59', 'Mastercard'),
('60014109', '5461237890123456008', '2018-10-30 05:35:55', '1', '15', 'GAP Women Grey Modern Long Sleeve Boatneck Tee', 450, '2018-10-30 05:35:55', '2018-10-30 05:35:55', 'Mastercard'),
('13136462', '5461237890123456008', '2018-10-30 05:35:55', '1', '19', 'GAP Women Grey Modern Long Sleeve Boatneck Tee', 570, '2018-10-30 05:35:55', '2018-10-30 05:35:55', 'Mastercard'),
('36322543', '5461237890123456008', '2018-10-30 05:28:33', '1', '1', 'GAP Women Grey Modern Long Sleeve Boatneck Tee', 30, '2018-10-30 05:28:33', '2018-10-30 05:28:33', 'Mastercard'),
('62827038', '5461237890123456008', '2018-10-30 05:27:42', '1', '2', 'GAP Women Grey Modern Long Sleeve Boatneck Tee', 60, '2018-10-30 05:27:42', '2018-10-30 05:27:42', 'Mastercard'),
('94784847', '5461237890123456005', '2018-10-29 11:56:43', '1', '1', 'GAP Women Grey Modern Long Sleeve Boatneck Tee', 30, '2018-10-29 11:56:43', '2018-10-29 11:56:43', 'Mastercard'),
('23207183', '5461237890123456008', '2018-10-26 10:58:50', '1', '1', 'GAP Women Grey Modern Long Sleeve Boatneck Tee', 30, '2018-10-26 10:58:50', '2018-10-26 10:58:50', 'Mastercard');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile` (
  `userid` varchar(20) NOT NULL,
  `pswd` varchar(200) NOT NULL,
  `accountnumber` varchar(50) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `mobilenumber` varchar(20) NOT NULL,
  `communicationaddress` varchar(500) DEFAULT NULL,
  `sq1` varchar(500) NOT NULL,
  `sq2` varchar(500) NOT NULL,
  `sq3` varchar(500) NOT NULL,
  `sqa1` varchar(500) NOT NULL,
  `sqa2` varchar(500) NOT NULL,
  `sqa3` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`userid`, `pswd`, `accountnumber`, `emailid`, `mobilenumber`, `communicationaddress`, `sq1`, `sq2`, `sq3`, `sqa1`, `sqa2`, `sqa3`, `created_at`, `updated_at`) VALUES
('5987643210123456000', 'Wipro@123', '5461237890123456000', 'kishor.kshirsagar@wipro.com', '9822184678', 'SOme address', 'what is your maiden name?', 'what is your pet name?', 'what is last pet name?', 'maiden', 'pet', 'last', '2018-11-20 03:20:00', '2018-11-20 03:20:00'),
('Demouser1', 'Demouser123$', '5461237890123456004', 'demotest@gmil.com', '9435435345', 'SOme address', 'what is your maiden name?', 'what is your pet name?', 'what is last pet name?', 'maiden', 'pet', 'last', '2018-10-29 11:28:25', '2018-10-29 11:28:25'),
('Demouser123', 'Demouser123$', '5461237890123456005', 'demotest@gmail.com', '9832423432', 'SOme address', 'what is your maiden name?', 'what is your pet name?', 'what is last pet name?', 'maiden', 'pet', 'last', '2018-10-29 11:45:01', '2018-10-29 11:45:01'),
('PocTest123', 'PocTest123#', '5461237890123456007', 'user@company.com', '5555555555', 'SOme address', 'what is your maiden name?', 'what is your pet name?', 'what is last pet name?', 'maiden', 'pet', 'last', '2018-10-23 12:37:35', '2018-10-23 12:37:35'),
('Testuser123', 'Testuser123$', '5461237890123456008', 'test@gmail.com', '9342324234', 'SOme address', 'what is your maiden name?', 'what is your pet name?', 'what is last pet name?', 'maiden', 'pet', 'last', '2018-10-26 10:52:52', '2018-10-26 10:52:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accholderrh`
--
ALTER TABLE `accholderrh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountnumber`),
  ADD UNIQUE KEY `BANKACCNUM_ID_UNIQUE` (`accountnumber`),
  ADD KEY `account_ibfk_1` (`custid`);

--
-- Indexes for table `cardtransaction`
--
ALTER TABLE `cardtransaction`
  ADD PRIMARY KEY (`transactionid`),
  ADD KEY `fk_up_mercid` (`merchantid`);

--
-- Indexes for table `custaccountreference`
--
ALTER TABLE `custaccountreference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `CUST_ID_UNIQUE` (`custid`),
  ADD UNIQUE KEY `SYS_CUSTID_UNIQUE` (`sys_cust_id`);

--
-- Indexes for table `hhrole`
--
ALTER TABLE `hhrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merctranscategory`
--
ALTER TABLE `merctranscategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_UNIQUE` (`type`),
  ADD UNIQUE KEY `merchantid_UNIQUE` (`merchantid`);

--
-- Indexes for table `redemptiontransaction`
--
ALTER TABLE `redemptiontransaction`
  ADD PRIMARY KEY (`redeemid`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `ACC_NUM_UNIQUE_KEY` (`userid`,`accountnumber`),
  ADD UNIQUE KEY `UNIQUE_ACC_NUM_KEY` (`accountnumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merctranscategory`
--
ALTER TABLE `merctranscategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43228;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`);

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `userprofile_ibfk_1` FOREIGN KEY (`accountnumber`) REFERENCES `account` (`accountnumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
