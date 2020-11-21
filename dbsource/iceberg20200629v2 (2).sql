-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 11:27 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iceberg20200629v2`
--
-- DROP DATABASE `iceberg20200629v2`;
CREATE DATABASE `iceberg20200629v2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `iceberg20200629v2`;

-- --------------------------------------------------------

--
-- Table structure for table `data_menu_parameter_tab_del`
--
-- Creation: Jul 14, 2020 at 09:25 AM
--

CREATE TABLE IF NOT EXISTS `data_menu_parameter_tab_del` (
  `ID` int(6) DEFAULT NULL,
  `DETAIL` varchar(48) DEFAULT NULL,
  `LABEL` varchar(48) DEFAULT NULL,
  `PARENT_ID` int(6) DEFAULT NULL,
  `URL_ADDR` varchar(55) DEFAULT NULL,
  `TARGET` varchar(5) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT NULL,
  `CREATED_DATE` varchar(15) DEFAULT NULL,
  `UPDATED_DATE` varchar(15) DEFAULT NULL,
  `CREATED_BY` varchar(6) DEFAULT NULL,
  `UPDATED_BY` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_menu_parameter_tab_del`
--

INSERT INTO `data_menu_parameter_tab_del` (`ID`, `DETAIL`, `LABEL`, `PARENT_ID`, `URL_ADDR`, `TARGET`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
(1000, 'Maintenance Master Data', 'Maintenance Master Data', 0, NULL, 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(1010, 'Company', 'Company', 1000, '/admin/company', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(1020, 'User', 'User', 1000, '/admin/user', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(1030, 'Business Partner', 'Business Partner', 1000, '/admin/business-partner', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(1040, 'Material', 'Material', 1000, '/admin/material', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(1050, 'Box', 'Box', 1000, '/admin/box', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(1060, 'Recipe', 'Recipe', 1000, '/admin/recipe', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2000, 'Maintenance Config Data', 'Maintenance Config Data', 0, NULL, 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(2010, 'Menu', 'Menu', 2000, '/admin/menu', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2020, 'Role', 'Role', 2000, '/admin/role', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2030, 'User Role', 'User Role', 2000, '/admin/user-role', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2040, 'Menu Role', 'Menu Role', 2000, '/admin/menu-role', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2050, 'Phone Type', 'Phone Type', 2000, '/admin/phone-type', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2060, 'Movement Type', 'Movement Type', 2000, '/admin/movement-type', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2070, 'Valuation Class', 'Valuation Class', 2000, '/admin/valuation-class', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2080, 'Cost Element', 'Cost Element', 2000, '/admin/cost-element', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2090, 'Movement Type to Transaction Code', 'Movement Type to Transaction Code', 2000, '/admin/movement-type-to-transaction-code', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2100, 'Transaction Code Valuation Class To Cost Element', 'Transaction Code Valuation Class To Cost Element', 2000, '/admin/transaction-code-valuation-class-to-cost-element', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(2110, 'Unit Of Measure', 'Unit Of Measure', 2000, '/admin/unit-of-measure', 'right', 'Y', '7/14/2020 14:20', '7/14/2020 14:20', 'system', 'system'),
(101000, 'Transaction', 'Transaction', 0, NULL, 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(101010, 'Sales', 'Sales', 101000, '/admin/sales', 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(101020, 'Purchase Order', 'Purchase Order', 101000, '/admin/purchase-order', 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(101030, 'Recording', 'Recording', 101000, '/admin/recording', 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(101040, 'Material Document', 'Material Document', 101000, '/admin/material-document', 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(201000, 'Account Information', 'Account Information', 0, '/admin/account-information', 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(201010, 'Change Password', 'Change Password', 201000, '/admin/change-password', 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system'),
(201020, 'Logout', 'Logout', 201000, '/admin/logout', 'right', 'Y', '7/14/2020 14:15', '7/14/2020 14:15', 'system', 'system');

-- --------------------------------------------------------

--
-- Table structure for table `tr_material_document`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `tr_material_document` (
  `ID` varchar(50) NOT NULL,
  `TR_SALES_ID` varchar(50) DEFAULT NULL,
  `TR_SALES_DETAIL_ID` varchar(50) DEFAULT NULL,
  `TR_PURCHASE_ORDER_ID` varchar(50) DEFAULT NULL,
  `TR_PURCHASE_ORDER_DETAIL_ID` varchar(50) DEFAULT NULL,
  `IS_REVERSE` varchar(1) DEFAULT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `NOTES` varchar(50) DEFAULT NULL,
  `TR_MATERIAL_DOCUMENT_ID_REVERSED` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_material_document_detail`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `tr_material_document_detail` (
  `ID` varchar(50) NOT NULL,
  `TR_MATERIAL_DOCUMENT_ID` varchar(50) NOT NULL,
  `TR_MATERIAL_DOCUMENT_ID_REVERSED` varchar(50) DEFAULT NULL,
  `TR_MATERIAL_DOCUMENT_DETAIL_ID_REVERSED` varchar(50) DEFAULT NULL,
  `UOM_MATERIAL_ID` varchar(20) NOT NULL,
  `QTY` decimal(10,2) NOT NULL,
  `PRICE` decimal(20,2) DEFAULT NULL,
  `SUB_TOTAL_PRICE` decimal(20,2) DEFAULT NULL,
  `UOM_UOM_ID` varchar(20) NOT NULL,
  `UOM_MOVEMENT_TYPE_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_recording`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `tr_recording` (
  `ID` varchar(50) NOT NULL,
  `BREEDER` varchar(50) NOT NULL,
  `STRAIN_GRADE` varchar(50) NOT NULL,
  `OWNER` varchar(50) NOT NULL,
  `MANAGE_BY` varchar(50) NOT NULL,
  `ADDR` varchar(50) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `DOC_PRICE` decimal(10,0) NOT NULL,
  `OVK_PRICE` decimal(10,0) NOT NULL,
  `PRE_STARTER_PRICE` decimal(10,0) NOT NULL,
  `STARTER_PRICE` decimal(10,0) NOT NULL,
  `FINISHER_PRICE` decimal(10,0) NOT NULL,
  `QTY` decimal(10,0) NOT NULL,
  `CHICK_IN_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) NOT NULL,
  `UOM_COMP_ID` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_recording_detail`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `tr_recording_detail` (
  `ID` varchar(50) NOT NULL,
  `TR_RECORDING_ID` varchar(50) NOT NULL,
  `RECORDING_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BROILER_AGE` int(6) NOT NULL,
  `UOM_MATERIAL_ID` varchar(20) DEFAULT NULL,
  `MORTALITY_QTY` int(6) DEFAULT NULL,
  `FEED_CONSUMPTION_QTY` decimal(10,2) DEFAULT NULL,
  `FEED_CONSUMPTION_CUMULATIVE_QTY` decimal(10,2) DEFAULT NULL,
  `FEED_CONSUMPTION_RATIO` decimal(10,4) DEFAULT NULL,
  `FEED_TRT` decimal(12,0) DEFAULT NULL,
  `BODY_WEIGHT` decimal(10,2) DEFAULT NULL,
  `HARVEST_QTY` int(6) DEFAULT NULL,
  `COGS_TO_REVENUE` decimal(15,2) DEFAULT NULL,
  `COGS` decimal(15,0) DEFAULT NULL,
  `NOTES` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_recording_standart`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:58 AM
--

CREATE TABLE IF NOT EXISTS `tr_recording_standart` (
  `ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(20) DEFAULT NULL,
  `BROILER_AGE` int(6) NOT NULL,
  `MORTALITY_QTY` int(6) DEFAULT NULL,
  `DEPLETION_PERCENTAGE` decimal(6,4) DEFAULT NULL,
  `FEED_CONSUMPTION_QTY` decimal(10,4) DEFAULT NULL,
  `FEED_CONSUMPTION_CUMULATIVE_QTY` decimal(10,4) DEFAULT NULL,
  `FEED_CONSUMPTION_RATIO` decimal(10,4) DEFAULT NULL,
  `BODY_WEIGHT` decimal(10,4) DEFAULT NULL,
  `TEMPERATURE_MIN` decimal(10,2) DEFAULT NULL,
  `TEMPERATURE_MAX` decimal(10,2) DEFAULT NULL,
  `HUMIDITY_MIN` decimal(10,2) DEFAULT NULL,
  `HUMIDITY_MAX` decimal(10,2) DEFAULT NULL,
  `NOTES` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_recording_standart`
--

INSERT INTO `tr_recording_standart` (`ID`, `DESCRIPTION`, `BROILER_AGE`, `MORTALITY_QTY`, `DEPLETION_PERCENTAGE`, `FEED_CONSUMPTION_QTY`, `FEED_CONSUMPTION_CUMULATIVE_QTY`, `FEED_CONSUMPTION_RATIO`, `BODY_WEIGHT`, `TEMPERATURE_MIN`, `TEMPERATURE_MAX`, `HUMIDITY_MIN`, `HUMIDITY_MAX`, `NOTES`) VALUES
('MB22-01', 'MB22', 1, 0, 0.1000, 0.0140, 0.0140, 0.2503, 56.0000, 31.00, 33.00, 30.00, 50.00, ''),
('MB22-02', 'MB22', 2, 0, 0.2000, 0.0310, 0.0450, 0.4366, 71.0000, 31.00, 33.00, 30.00, 50.00, ''),
('MB22-03', 'MB22', 3, 0, 0.3000, 0.0510, 0.0960, 0.5795, 88.0000, 31.00, 33.00, 30.00, 50.00, ''),
('MB22-04', 'MB22', 4, 0, 0.4000, 0.0745, 0.1705, 0.6898, 108.0000, 31.00, 33.00, 30.00, 50.00, ''),
('MB22-05', 'MB22', 5, 0, 0.5000, 0.1010, 0.2715, 0.7769, 130.0000, 31.00, 33.00, 30.00, 50.00, ''),
('MB22-06', 'MB22', 6, 0, 0.6000, 0.1310, 0.4025, 0.8452, 155.0000, 31.00, 33.00, 30.00, 50.00, ''),
('MB22-07', 'MB22', 7, 0, 0.7000, 0.1650, 0.5675, 0.8992, 183.5000, 31.00, 33.00, 30.00, 50.00, ''),
('MB22-08', 'MB22', 8, 0, 0.7800, 0.2035, 0.7710, 0.9487, 214.5000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-09', 'MB22', 9, 0, 0.8600, 0.2465, 1.0175, 0.9900, 249.0000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-10', 'MB22', 10, 0, 0.9400, 0.2935, 1.3110, 1.0226, 287.0000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-11', 'MB22', 11, 0, 1.0200, 0.3460, 1.6570, 1.0549, 328.0000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-12', 'MB22', 12, 0, 1.1000, 0.4035, 2.0605, 1.0847, 372.0000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-13', 'MB22', 13, 0, 1.1800, 0.4665, 2.5270, 1.1120, 419.5000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-14', 'MB22', 14, 0, 1.2600, 0.5350, 3.0620, 1.1383, 470.0000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-15', 'MB22', 15, 0, 1.3200, 0.6090, 3.6710, 1.1611, 524.5000, 29.00, 31.00, 40.00, 60.00, ''),
('MB22-16', 'MB22', 16, 0, 1.3800, 0.6890, 4.3600, 1.1849, 581.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-17', 'MB22', 17, 0, 1.4400, 0.7750, 5.1350, 1.2090, 641.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-18', 'MB22', 18, 0, 1.5000, 0.8670, 6.0020, 1.2298, 705.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-19', 'MB22', 19, 0, 1.5600, 0.9655, 6.9675, 1.2515, 771.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-20', 'MB22', 20, 0, 1.6200, 1.0700, 8.0375, 1.2731, 840.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-21', 'MB22', 21, 0, 1.6800, 1.1810, 9.2185, 1.2942, 912.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-22', 'MB22', 22, 0, 1.7300, 1.2980, 10.5165, 1.3151, 987.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-23', 'MB22', 23, 0, 1.7800, 1.4215, 11.9380, 1.3366, 1063.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-24', 'MB22', 24, 0, 1.8300, 1.5505, 13.4885, 1.3577, 1142.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-25', 'MB22', 25, 0, 1.8800, 1.6860, 15.1745, 1.3780, 1223.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-26', 'MB22', 26, 0, 1.9300, 1.8275, 17.0020, 1.3993, 1306.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-27', 'MB22', 27, 0, 1.9800, 1.9750, 18.9770, 1.4204, 1390.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-28', 'MB22', 28, 0, 2.0300, 2.1280, 21.1050, 1.4412, 1476.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-29', 'MB22', 29, 0, 2.0800, 2.2865, 23.3915, 1.4620, 1564.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-30', 'MB22', 30, 0, 2.1300, 2.4510, 25.8425, 1.4828, 1653.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-31', 'MB22', 31, 0, 2.1800, 2.6210, 28.4635, 1.5042, 1742.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-32', 'MB22', 32, 0, 2.2300, 2.7960, 31.2595, 1.5254, 1833.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-33', 'MB22', 33, 0, 2.2800, 2.9755, 34.2350, 1.5457, 1925.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-34', 'MB22', 34, 0, 2.3300, 3.1605, 37.3955, 1.5673, 2016.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-35', 'MB22', 35, 0, 2.3800, 3.3500, 40.7455, 1.5881, 2109.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-36', 'MB22', 36, 0, 2.4300, 3.5435, 44.2890, 1.6089, 2202.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-37', 'MB22', 37, 0, 2.4800, 3.7415, 48.0305, 1.6299, 2295.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-38', 'MB22', 38, 0, 2.5300, 3.9440, 51.9745, 1.6512, 2388.5000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-39', 'MB22', 39, 0, 2.5800, 4.1500, 56.1245, 1.6720, 2482.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-40', 'MB22', 40, 0, 2.6300, 4.3595, 60.4840, 1.6930, 2575.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-41', 'MB22', 41, 0, 2.6800, 4.5730, 65.0570, 1.7140, 2668.0000, 26.00, 29.00, 40.00, 60.00, ''),
('MB22-42', 'MB22', 42, 0, 2.7300, 4.7895, 69.8465, 1.7350, 2760.5000, 26.00, 29.00, 40.00, 60.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_sales`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `tr_sales` (
  `ID` varchar(50) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `TOTAL_PRICE` decimal(10,0) NOT NULL,
  `DELIVERED_BY` varchar(20) NOT NULL,
  `PAYMENT_RECEIVED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) NOT NULL,
  `UOM_COMP_ID` varchar(20) NOT NULL,
  `UOS_BUSINESS_PARTNER_ID` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_sales_box`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `tr_sales_box` (
  `ID` varchar(50) NOT NULL,
  `TR_SALES_ID` varchar(50) NOT NULL,
  `UOM_BOX_ID` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tr_sales_detail`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `tr_sales_detail` (
  `ID` varchar(50) NOT NULL,
  `TR_SALES_ID` varchar(50) NOT NULL,
  `UOM_MATERIAL_ID` varchar(20) NOT NULL,
  `QTY` int(6) NOT NULL,
  `PRICE` decimal(10,0) NOT NULL,
  `SUB_TOTAL_PRICE` decimal(12,0) NOT NULL,
  `NOTES` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom_box`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_box` (
  `ID` varchar(3) NOT NULL,
  `DETAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(15) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_box`
--

INSERT INTO `uom_box` (`ID`, `DETAIL`, `PASSWORD`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('001', 'BOX 001', NULL, 'Y', '0000-00-00 00:00:00', '2020-04-11 04:09:17', 'admin', NULL),
('002', 'BOX 002', '281207', 'Y', '0000-00-00 00:00:00', '2020-04-11 04:09:17', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_comp`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_comp` (
  `ID` varchar(5) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `TAX_NUMBER` varchar(50) DEFAULT NULL,
  `DETAIL` varchar(50) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_comp`
--

INSERT INTO `uom_comp` (`ID`, `NAME`, `TAX_NUMBER`, `DETAIL`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('BKM', 'BAKMI MAMPANG', NULL, NULL, NULL, '2013-09-17 07:19:38', '2013-09-17 07:19:38', NULL, NULL),
('DEL', 'DELTA MAS', NULL, NULL, NULL, '2013-09-17 07:19:33', '2013-09-17 07:19:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_material`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:58 AM
--

CREATE TABLE IF NOT EXISTS `uom_material` (
  `ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `PRICE` decimal(20,0) DEFAULT NULL,
  `IS_PRODUCT` varchar(1) DEFAULT NULL,
  `IS_DELETE` varchar(1) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_material`
--

INSERT INTO `uom_material` (`ID`, `DESCRIPTION`, `PRICE`, `IS_PRODUCT`, `IS_DELETE`, `IS_ACTIVE`, `CREATED_BY`, `UPDATED_BY`, `CREATED_DATE`, `UPDATED_DATE`) VALUES
('1001', 'MIE GORENG', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1002', 'MIE GORENG SEAFOOD', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1003', 'MIE GORENG UDANG', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1004', 'MIE MASAK', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1005', 'MIE MASAK SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1006', 'MIE CAP CAY', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1007', 'MIE CAP CAY SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1008', 'IFU MIE', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1009', 'IFU MIE SEAFOOD', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1010', 'BIHUN GORENG', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1011', 'BIHUN GORENG SEAFOOD', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1012', 'BIHUN GORENG UDANG', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1013', 'BIHUN MASAK', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1014', 'BIHUN MASAK SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1015', 'BIHUN CAP CAY', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1016', 'BIHUN CAP CAY SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1017', 'KWETIAU GORENG', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1018', 'KWETIAU GORENG SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1019', 'KWETIAU GORENG UDANG', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1020', 'KWETIAU MASAK', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1021', 'KWETIAU MASAK SEAFOOD', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1022', 'KWETIAU CAP CAY', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1023', 'KWETIAU CAP CAY SEAFOOD', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1024', 'KWETIAU SIRAM', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1025', 'NASI PUTIH', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1026', 'NASI CAP CAY (CAMPUR)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1027', 'NASI CAP CAY SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1028', 'NASI GORENG', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1029', 'NASI GORENG TELOR', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1030', 'NASI GORENG IKAN ASIN', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1031', 'NASI GORENG SEAFOOD', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1032', 'NASI GORENG UDANG', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1033', 'NASI GORENG SPECIAL', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1034', 'PAKET AYAM GR MENTEGA', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1035', 'PAKET AYAM GR TEPUNG', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1036', 'PAKET AYAM NANKING', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1037', 'PAKET PUYUNG HAI', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1038', 'PAKET BISTIK AYAM', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1039', 'PAKET CUMI GR MENTEGA', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1040', 'PAKET CUMI GR TEPUNG', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1041', 'PAKET UDANG GR TEPUNG', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1042', 'PAKET TAHU CAH AYAM JAMUR', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1043', 'PAKET SAPO TAHU AYAM', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1044', 'PAKET SAPO TAHU SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1045', 'PAKET AYAM KULUYUK', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1046', 'PAKET UDANG KULUYUK', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1047', 'CAP CAY GORENG', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1048', 'CAP CAY GR SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1049', 'CAP CAY KUAH', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1050', 'CAP CAY KUAH SEAFOOD', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1051', 'KANGKUNG CAH POLOS', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1052', 'KANGKUNG CAH AYAM', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1053', 'KANGKUNG CAH UDANG', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1054', 'KANGKUNG CAH CUMI', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1055', 'TOGE TAHU CAH IKAN ASIN', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1056', 'TOGE CAH IKAN ASIN', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1057', 'AYAM KULUYUK', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1058', 'AYAM CAH JAMUR', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1059', 'SAPO TAHU AYAM', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1060', 'SAPO TAHU SEAFOOD', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1061', 'MUN TAHU AYAM', 32000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1062', 'MUN TAHU UDANG', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1063', 'TAHU CAH AYAM JAMUR', 32000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1064', 'UDANG KULUYUK', 40000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1065', 'AYAM RICA-RICA', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1066', 'AYAM GORENG MENTEGA', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1067', 'AYAM GORENG TEPUNG', 39000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1068', 'AYAM NANKING', 43000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1069', 'AYAM GORENG KERING', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1070', 'BISTIK AYAM', 40000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1071', 'PUYUNG HAI', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1072', 'UDANG GORENG MENTEGA', 44000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1073', 'UDANG GORENG TEPUNG', 42000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1074', 'CUMI GORENG TEPUNG', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1075', 'CUMI GORENG MENTEGA', 43000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1076', 'BASO KUAH', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1077', 'BASO PANGSIT KUAH', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1078', 'PANGSIT KUAH', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('1079', 'PANGSIT GORENG', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2001', 'MIE GORENG', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2002', 'MIE GORENG SEAFOOD', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2003', 'MIE GORENG UDANG', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2004', 'MIE MASAK', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2005', 'MIE MASAK SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2006', 'MIE CAP CAY', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2007', 'MIE CAP CAY SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2008', 'IFU MIE', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2009', 'IFU MIE SEAFOOD', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2010', 'BIHUN GORENG', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2011', 'BIHUN GORENG SEAFOOD', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2012', 'BIHUN GORENG UDANG', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2013', 'BIHUN MASAK', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2014', 'BIHUN MASAK SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2015', 'BIHUN CAP CAY', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2016', 'BIHUN CAP CAY SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2017', 'KWETIAU GORENG', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2018', 'KWETIAU GORENG SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2019', 'KWETIAU GORENG UDANG', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2020', 'KWETIAU MASAK', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2021', 'KWETIAU MASAK SEAFOOD', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2022', 'KWETIAU CAP CAY', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2023', 'KWETIAU CAP CAY SEAFOOD', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2024', 'KWETIAU SIRAM', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2025', 'NASI PUTIH', 3000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2026', 'NASI CAP CAY (CAMPUR)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2027', 'NASI CAP CAY SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2028', 'NASI GORENG', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2029', 'NASI GORENG TELOR', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2030', 'NASI GORENG IKAN ASIN', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2031', 'NASI GORENG SEAFOOD', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2032', 'NASI GORENG UDANG', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2033', 'NASI GORENG SPECIAL', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2034', 'PAKET AYAM GR MENTEGA', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2035', 'PAKET AYAM GR TEPUNG', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2036', 'PAKET AYAM NANKING', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2037', 'PAKET PUYUNG HAI', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2038', 'PAKET BISTIK AYAM', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2039', 'PAKET CUMI GR MENTEGA', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2040', 'PAKET CUMI GR TEPUNG', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2041', 'PAKET UDANG GR TEPUNG', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2042', 'PAKET TAHU CAH AYAM JAMUR', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2043', 'PAKET SAPO TAHU AYAM', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2044', 'PAKET SAPO TAHU SEAFOOD', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2045', 'PAKET AYAM KULUYUK', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2046', 'PAKET UDANG KULUYUK', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2047', 'CAP CAY GORENG', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2048', 'CAP CAY GR SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2049', 'CAP CAY KUAH', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2050', 'CAP CAY KUAH SEAFOOD', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2051', 'KANGKUNG CAH POLOS', 16000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2052', 'KANGKUNG CAH AYAM', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2053', 'KANGKUNG CAH UDANG', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2054', 'KANGKUNG CAH CUMI', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2055', 'TOGE TAHU CAH IKAN ASIN', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2056', 'TOGE CAH IKAN ASIN', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2057', 'AYAM KULUYUK', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2058', 'AYAM CAH JAMUR', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2059', 'SAPO TAHU AYAM', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2060', 'SAPO TAHU SEAFOOD', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2061', 'MUN TAHU AYAM', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2062', 'MUN TAHU UDANG', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2063', 'TAHU CAH AYAM JAMUR', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2064', 'UDANG KULUYUK', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2065', 'AYAM RICA-RICA', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2066', 'AYAM GORENG MENTEGA', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2067', 'AYAM GORENG TEPUNG', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2068', 'AYAM NANKING', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2069', 'AYAM GORENG KERING', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2070', 'BISTIK AYAM', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2071', 'PUYUNG HAI', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2072', 'UDANG GORENG MENTEGA', 38000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2073', 'UDANG GORENG TEPUNG', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2074', 'CUMI GORENG TEPUNG', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2075', 'CUMI GORENG MENTEGA', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2076', 'BASO KUAH', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2077', 'BASO PANGSIT KUAH', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2078', 'PANGSIT KUAH', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('2079', 'PANGSIT GORENG', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3001', 'MIE AYAM', 16000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3002', 'MIE AYAM BASO', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3003', 'MIE AYAM PANGSIT', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3004', 'MIE AYAM BASO PANGSIT', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3005', 'BIHUN AYAM', 16000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3006', 'BIHUN AYAM BASO', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3007', 'BIHUN AYAM PANGSIT', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3008', 'BIHUN AYAM BASO PANGSIT', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3009', 'KWETIAU AYAM', 17000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3010', 'KWETIAU AYAM BASO', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3011', 'KWETIAU AYAM PANGSIT', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3012', 'KWETIAU BASO PANGSIT', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3013', 'GADO - GADO', 17000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3014', 'GADO - GADO LONTONG', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3015', 'GADO - GADO NASI', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3016', 'KAREDOK', 17000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3017', 'KAREDOK LONTONG', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3018', 'KAREDOK NASI', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3019', 'KETOPRAK LONTONG', 18000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3020', 'TELOR REBUS', 3500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3021', 'TELOR CEPLOK', 3500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3022', 'TELOR DADAR', 4500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('3023', 'PEYEK', 3500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4001', 'TEH ES', 2000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4002', 'TEH ES MANIS', 4000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4003', 'TEH MANIS', 3000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4004', 'TEH HANGAT', 1000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4005', 'ES JERUK', 9000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4006', 'JERUK HANGAT', 9000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4007', 'LEMON TEA', 9000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4008', 'KOPI', 3000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4009', 'TEH BOTOL / PUCUK HARUM', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4010', 'COCA COLA', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4011', 'FANTA /SPRITE', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4012', 'AQUA BOTOL', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4013', 'AQUA GELAS', 1000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4014', 'JUS SIRSAK', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4015', 'JUS JAMBU', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4016', 'JUS JERUK', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4017', 'JUS MELON', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4018', 'JUS TOMAT', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4019', 'JUS WORTEL', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4020', 'JUS MANGGA', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25'),
('4021', 'JUS STOWBERI', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-19 10:55:25', '2015-03-19 10:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `uom_menu`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_menu` (
  `ID` varchar(25) NOT NULL,
  `DETAIL` varchar(100) NOT NULL,
  `LABEL` varchar(100) NOT NULL,
  `PARENT_ID` varchar(25) DEFAULT NULL,
  `URL_ADDR` varchar(255) DEFAULT NULL,
  `TARGET` varchar(25) NOT NULL DEFAULT 'right',
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(25) NOT NULL,
  `UPDATED_BY` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_menu`
--

INSERT INTO `uom_menu` (`ID`, `DETAIL`, `LABEL`, `PARENT_ID`, `URL_ADDR`, `TARGET`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('001000', 'Maintenance Master Data', 'Maintenance Master Data', '0', '/', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('001010', 'Employee', 'Employee', '001000', '/ms-data/employee', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('001020', 'Business Partner', 'Business Partner', '001000', '/ms-data/business-partner', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('001030', 'Material', 'Material', '001000', '/ms-data/material', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('001040', 'Box', 'Box', '001000', '/ms-data/box', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('001050', 'Recipe', 'Recipe', '001000', '/ms-data/recipe', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002000', 'Maintenance Config Data', 'Maintenance Config Data', '0', '/', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002010', 'Company', 'Company', '002000', '/sys-admin/company', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002020', 'User', 'User', '002000', '/admin/user', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002030', 'Menu', 'Menu', '002000', '/sys-admin/menu', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002040', 'Role', 'Role', '002000', '/sys-admin/role', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002050', 'User Role', 'User Role', '002000', '/sys-admin/user-role', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002060', 'Menu Role', 'Menu Role', '002000', '/sys-admin/menu-role', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002070', 'Phone Type', 'Phone Type', '002000', '/admin/user', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002080', 'Movement Type', 'Movement Type', '002000', '/sys-admin/movement-type', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002090', 'Valuation Class', 'Valuation Class', '002000', '/sys-admin/valuation-class', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002100', 'Cost Center', 'Cost Center', '002000', '/sys-admin/cost-center', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002110', 'Asset', 'Asset', '002000', '/sys-admin/asset', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002120', 'Project', 'Project', '002000', '/sys-admin/project', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002130', 'Cost Element', 'Cost Element', '002000', '/sys-admin/cost-element', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002140', 'Movement Type to Transaction Code', 'Movement Type to Transaction Code', '002000', '/sys-admin/movement-type-to-transaction-code', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002150', 'Transaction Code Valuation Class To Cost Element', 'Transaction Code Valuation Class To Cost Element', '002000', '/sys-admin/transaction-code-valuation-class-to-cost-element', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('002160', 'Unit Of Measure', 'Unit Of Measure', '002000', '/admin/unit-of-measure', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101000', 'Transaction', 'Transaction', '0', '/', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101010', 'Purchase Request', 'Purchase Request', '101000', '/user/purchase-request', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101020', 'Request Form Quotation', 'Request Form Quotation', '101000', '/purchasing/request-form-quotation', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101030', 'Quotation Evaluation', 'Quotation Evaluation', '101000', '/purchasing/quotation-evaluation', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101040', 'Purchase Order', 'Purchase Order', '101000', '/purchasing/purchase-order', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101050', 'Contract', 'Contract', '101000', '/sales/contract', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101060', 'Sales Order', 'Sales Order', '101000', '/sales/sales-order', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101070', 'Delivery Order / Outbound Delivery', 'Delivery Order / Outbound Delivery', '101000', '/sales/delivery-order-outbound-delivery', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101080', 'Movement in Goods Out', 'Movement in Goods Out', '101000', '/gudang/material-document', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101090', 'Bill of Material', 'Bill of Material', '101000', '/admin/bill-of-material', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('101100', 'Recording', 'Recording', '101000', '/user/recording', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('201000', 'Account Information', 'Account Information', '0', '/user/account-information', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('201010', 'Change Password', 'Change Password', '201000', '/user/change-password', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
('201020', 'Logout', 'Logout', '201000', '/user/logout', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system');

-- --------------------------------------------------------

--
-- Table structure for table `uom_menu_role`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_menu_role` (
  `ID` varchar(20) NOT NULL,
  `UOM_MENU_ID` varchar(25) NOT NULL,
  `UOM_ROLE_ID` varchar(25) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_uom_menu_role_UOM_MENU_ID` (`UOM_MENU_ID`),
  KEY `FK_uom_menu_role_UOM_ROLE_ID` (`UOM_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uom_menu_role`:
--   `UOM_MENU_ID`
--       `uom_menu` -> `ID`
--   `UOM_ROLE_ID`
--       `uom_role` -> `ID`
--

--
-- Dumping data for table `uom_menu_role`
--

INSERT INTO `uom_menu_role` (`ID`, `UOM_MENU_ID`, `UOM_ROLE_ID`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('10000001', '001000', 'Admin', '', '2020-07-22 17:00:00', '2020-07-23 05:04:42', '', ''),
('10000001200', '002010', 'Admin', '', '2020-07-22 17:00:00', '2020-07-23 05:04:42', '', ''),
('10000002', '001040', 'Admin', '', '2020-07-22 17:00:00', '2020-07-23 05:04:42', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uom_movement_type`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_movement_type` (
  `ID` varchar(20) NOT NULL,
  `DEBIT_CREDIT_INDICATOR_TO_STOCK` varchar(1) NOT NULL,
  `TRANSACTION_KEY_ID` varchar(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom_phon_typ`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_phon_typ` (
  `ID` varchar(3) NOT NULL,
  `DETAIL` varchar(50) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_phon_typ`
--

INSERT INTO `uom_phon_typ` (`ID`, `DETAIL`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('HAN', 'Handphone', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:43:31', 'username', NULL),
('PHO', 'Phone', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:43:13', 'username', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_recipe`
--
-- Creation: Jun 29, 2020 at 09:52 AM
-- Last update: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_recipe` (
  `ID` varchar(20) NOT NULL,
  `UOM_MATERIAL_ID` varchar(20) DEFAULT NULL,
  `IS_SUB` varchar(1) DEFAULT NULL,
  `ACTUAL_PRODUCT_TRT` decimal(12,0) DEFAULT NULL,
  `SELLING_PRICE` decimal(12,0) DEFAULT NULL,
  `GROSS_MARGIN` decimal(12,0) DEFAULT NULL,
  `TRT_PERCENT` decimal(3,0) DEFAULT NULL,
  `GROSS_PROFIT_PERCENT` decimal(3,0) DEFAULT NULL,
  `SELLING_PRICE_INCLUDE_TAX` decimal(12,0) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom_role`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_role` (
  `ID` varchar(25) NOT NULL,
  `DETAIL` varchar(50) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_role`
--

INSERT INTO `uom_role` (`ID`, `DETAIL`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('Admin', 'Admin', 'Y', '2012-12-10 09:41:10', '2012-12-10 09:41:10', 'username', NULL),
('PURCS', 'Purchasing', 'Y', '2012-12-10 09:41:37', '2012-12-10 09:41:37', 'username', NULL),
('ROLE_USER', 'ROLE_USER', 'Y', '2013-10-03 05:56:44', '2013-10-03 05:56:44', 'username', NULL),
('SALES', 'S', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:42:20', 'username', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_uif_comp`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_uif_comp` (
  `ID` varchar(50) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `UOM_COMP_ID` varchar(50) NOT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_uom_user_comp_UOM_COMP_ID` (`UOM_COMP_ID`),
  KEY `FK_uom_user_comp_UOS_UIF_USERNAME` (`UOS_UIF_USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uom_uif_comp`:
--   `UOM_COMP_ID`
--       `uom_comp` -> `ID`
--   `UOS_UIF_USERNAME`
--       `uos_uif` -> `USERNAME`
--

-- --------------------------------------------------------

--
-- Table structure for table `uom_uif_role`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_uif_role` (
  `ID` varchar(50) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `UOM_ROLE_ID` varchar(25) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_uom_user_role_UOM_ROLE_ID` (`UOM_ROLE_ID`),
  KEY `FK_uom_user_role_UOS_UIF_USERNAME` (`UOS_UIF_USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uom_uif_role`:
--   `UOM_ROLE_ID`
--       `uom_role` -> `ID`
--   `UOS_UIF_USERNAME`
--       `uos_uif` -> `USERNAME`
--

--
-- Dumping data for table `uom_uif_role`
--

INSERT INTO `uom_uif_role` (`ID`, `UOS_UIF_USERNAME`, `UOM_ROLE_ID`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('001', 'user002', 'ROLE_USER', 'y', '2014-10-08 17:59:36', '2013-10-03 06:01:26', 'user', NULL),
('20200709.32b51d86-65d2-47e3-ba0b-690e45faee99', 'x', 'ADMIN', 'X', '2020-07-09 09:41:09', '2020-07-09 09:41:09', 'ADMIN', 'ADMIN'),
('20200709.51601bab-db0b-4ee9-b02e-5f3fc61fb857', 'y', 'ADMIN', 'X', '2020-07-09 09:41:19', '2020-07-09 09:41:19', 'ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `uom_uom`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uom_uom` (
  `ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `LANGUAGE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_app`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_app` (
  `ID` varchar(50) NOT NULL,
  `IS_CHECK_TERM_CONDITION` varchar(1) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_business_partner`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_business_partner` (
  `ID` varchar(20) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `FIRS_TNAME` varchar(20) NOT NULL,
  `MIDDLE_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `ID_CARD_NO` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='USER ORIENTED SALES_USER INFORMATION FILE';

-- --------------------------------------------------------

--
-- Table structure for table `uos_business_partner_addr`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_business_partner_addr` (
  `ID` varchar(50) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `UOS_BUSINESS_PARTNER_ID` varchar(20) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_uos_BUSINESSPARTNER_addr_uosBUSINESSPARTNERusername` (`UOS_BUSINESS_PARTNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uos_business_partner_addr`:
--   `UOS_BUSINESS_PARTNER_ID`
--       `uos_business_partner` -> `ID`
--

-- --------------------------------------------------------

--
-- Table structure for table `uos_business_partner_phon`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_business_partner_phon` (
  `ID` varchar(50) NOT NULL,
  `Number` varchar(20) NOT NULL,
  `UOM_PHON_TYP_ID` varchar(3) NOT NULL,
  `UOS_BUSINESS_PARTNER_ID` varchar(20) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UOM_PHON_TYP_ID` (`UOM_PHON_TYP_ID`),
  KEY `FK_uos_BUSINESSPARTNER_phon_uosBUSINESSPARTNERusername` (`UOS_BUSINESS_PARTNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uos_business_partner_phon`:
--   `UOM_PHON_TYP_ID`
--       `uom_phon_typ` -> `ID`
--   `UOS_BUSINESS_PARTNER_ID`
--       `uos_business_partner` -> `ID`
--

-- --------------------------------------------------------

--
-- Table structure for table `uos_comp_addr`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_comp_addr` (
  `ID` varchar(50) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `IS_TAX` varchar(1) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UOM_COMP_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_uos_comp_addr_UOM_COMP_ID` (`UOM_COMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uos_comp_addr`:
--   `UOM_COMP_ID`
--       `uom_comp` -> `ID`
--

-- --------------------------------------------------------

--
-- Table structure for table `uos_comp_phon`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_comp_phon` (
  `ID` varchar(50) NOT NULL,
  `Number` varchar(20) DEFAULT NULL,
  `IS_TAX` varchar(1) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UOM_COMP_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_uos_comp_phon_UOM_COMP_ID` (`UOM_COMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uos_comp_phon`:
--   `UOM_COMP_ID`
--       `uom_comp` -> `ID`
--

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_uif` (
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `MIDDLE_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `ID_CARD_NO` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='USER ORIENTED SALES_USER INFORMATION FILE';

--
-- Dumping data for table `uos_uif`
--

INSERT INTO `uos_uif` (`USERNAME`, `PASSWORD`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `BIRTH_DATE`, `ID_CARD_NO`, `EMAIL`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`) VALUES
('user001', '	', 'Dwi', '', 'Septianto', '1987-09-19', '0010', 'private_mail777@yahoo.com', 'Y', '2013-09-17 07:42:02', '2015-01-16 05:06:11'),
('user002', 'password', 'Septianto', '', 'Rio', '1986-09-19', '0011', 'private@yahoo.com', 'Y', '2014-09-25 17:59:36', '2014-09-26 11:01:05'),
('username', 'password', 'Rio', 'Dwi', 'Septianto', '1987-09-19', '0009', 'septiantord@gmail.com', 'Y', '2013-09-17 07:42:02', '2015-01-16 05:06:11'),
('x', '$2a$10$sE13DgAMPzcivH/QETOB5.ChBg4WqQxGmHwTu2RT2YPVbBe4ZSObG', 'x', 'x', 'x', '2001-01-01', 'x', 'x', 'X', '2020-07-09 09:41:09', '2020-07-09 09:41:09'),
('y', '$2a$10$oJ4PaoJK/GCY6CslqhiaiOIms77KBVnbc1WU8WQKaSQ5dLl2fFA6u', 'y', 'y', 'y', '2001-01-01', 'y', 'y', 'X', '2020-07-09 09:41:19', '2020-07-09 09:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif_addr`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_uif_addr` (
  `ID` varchar(50) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_uos_uif_addr_UOS_UIF_USERNAME` (`UOS_UIF_USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uos_uif_addr`:
--   `UOS_UIF_USERNAME`
--       `uos_uif` -> `USERNAME`
--

--
-- Dumping data for table `uos_uif_addr`
--

INSERT INTO `uos_uif_addr` (`ID`, `ADDRESS`, `CITY`, `UOS_UIF_USERNAME`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('444444444', 'Kranji no 693', 'Bekasi', 'user002', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:35:43', 'user002', NULL),
('555555555', 'Kranji no 514', 'Bekasi', 'user002', 'N', '0000-00-00 00:00:00', '2012-12-10 09:35:49', 'user002', NULL),
('666666666', 'DK no 693', 'Bekasi', 'user001', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:34:45', 'user001', NULL),
('777777777', 'DK no 514', 'Bekasi', 'user001', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:34:20', 'user001', NULL),
('888888888', 'Duta Krannji no 693', 'Bekasi', 'username', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:33:57', 'username', NULL),
('999999999', 'Duta Kranji no 514', 'Bekasi', 'username', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:32:54', 'username', '');

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif_exper`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_uif_exper` (
  `ID` varchar(50) NOT NULL,
  `EXPERIENCE` varchar(255) NOT NULL,
  `YEAR` varchar(4) NOT NULL,
  `UOS_UIF_USERNAME` varchar(50) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif_phon`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_uif_phon` (
  `ID` varchar(50) NOT NULL,
  `Number` varchar(20) NOT NULL,
  `UOM_PHON_TYP_ID` varchar(3) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UOM_PHON_TYP_ID` (`UOM_PHON_TYP_ID`),
  KEY `FK_uos_uif_phon_UOS_UIF_USERNAME` (`UOS_UIF_USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `uos_uif_phon`:
--   `UOM_PHON_TYP_ID`
--       `uom_phon_typ` -> `ID`
--   `UOS_UIF_USERNAME`
--       `uos_uif` -> `USERNAME`
--

--
-- Dumping data for table `uos_uif_phon`
--

INSERT INTO `uos_uif_phon` (`ID`, `Number`, `UOM_PHON_TYP_ID`, `UOS_UIF_USERNAME`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('000000000', '0218893072', 'PHO', 'username', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:37:40', 'username', NULL),
('111111111', '02188863807', 'PHO', 'username', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:38:11', 'username', NULL),
('222222222', '021983222', 'PHO', 'user001', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:38:47', 'user001', NULL),
('333333333', '0818975537', 'HAN', 'user001', 'N', '0000-00-00 00:00:00', '2012-12-10 09:39:14', 'user001', NULL),
('444444444', '021787878', 'PHO', 'user002', 'N', '0000-00-00 00:00:00', '2012-12-10 09:39:38', 'user002', NULL),
('555555555', '021885739', 'PHO', 'user002', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:40:01', 'user002', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif_phot`
--
-- Creation: Jun 29, 2020 at 09:52 AM
--

CREATE TABLE IF NOT EXISTS `uos_uif_phot` (
  `ID` varchar(50) NOT NULL,
  `PHOTO_URL` varchar(255) NOT NULL,
  `IS_COVER` varchar(1) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uom_menu_role`
--
ALTER TABLE `uom_menu_role`
  ADD CONSTRAINT `FK_uom_menu_role_UOM_MENU_ID` FOREIGN KEY (`UOM_MENU_ID`) REFERENCES `uom_menu` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uom_menu_role_UOM_ROLE_ID` FOREIGN KEY (`UOM_ROLE_ID`) REFERENCES `uom_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uom_uif_comp`
--
ALTER TABLE `uom_uif_comp`
  ADD CONSTRAINT `FK_uom_user_comp_UOM_COMP_ID` FOREIGN KEY (`UOM_COMP_ID`) REFERENCES `uom_comp` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uom_user_comp_UOS_UIF_USERNAME` FOREIGN KEY (`UOS_UIF_USERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uom_uif_role`
--
ALTER TABLE `uom_uif_role`
  ADD CONSTRAINT `FK_uom_user_role_UOM_ROLE_ID` FOREIGN KEY (`UOM_ROLE_ID`) REFERENCES `uom_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uom_user_role_UOS_UIF_USERNAME` FOREIGN KEY (`UOS_UIF_USERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_business_partner_addr`
--
ALTER TABLE `uos_business_partner_addr`
  ADD CONSTRAINT `FK_uos_BUSINESSPARTNER_addr_uosBUSINESSPARTNERusername` FOREIGN KEY (`UOS_BUSINESS_PARTNER_ID`) REFERENCES `uos_business_partner` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_business_partner_phon`
--
ALTER TABLE `uos_business_partner_phon`
  ADD CONSTRAINT `FK_uos_BUSINESSPARTNER_phon_UOM_PHON_TYP_ID` FOREIGN KEY (`UOM_PHON_TYP_ID`) REFERENCES `uom_phon_typ` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uos_BUSINESSPARTNER_phon_uosBUSINESSPARTNERusername` FOREIGN KEY (`UOS_BUSINESS_PARTNER_ID`) REFERENCES `uos_business_partner` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_comp_addr`
--
ALTER TABLE `uos_comp_addr`
  ADD CONSTRAINT `FK_uos_comp_addr_UOM_COMP_ID` FOREIGN KEY (`UOM_COMP_ID`) REFERENCES `uom_comp` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_comp_phon`
--
ALTER TABLE `uos_comp_phon`
  ADD CONSTRAINT `FK_uos_comp_phon_UOM_COMP_ID` FOREIGN KEY (`UOM_COMP_ID`) REFERENCES `uom_comp` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_uif_addr`
--
ALTER TABLE `uos_uif_addr`
  ADD CONSTRAINT `FK_uos_uif_addr_UOS_UIF_USERNAME` FOREIGN KEY (`UOS_UIF_USERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_uif_phon`
--
ALTER TABLE `uos_uif_phon`
  ADD CONSTRAINT `FK_uos_uif_phon_UOM_PHON_TYP_ID` FOREIGN KEY (`UOM_PHON_TYP_ID`) REFERENCES `uom_phon_typ` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uos_uif_phon_UOS_UIF_USERNAME` FOREIGN KEY (`UOS_UIF_USERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
