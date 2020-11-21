-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2020 at 06:26 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `data_menu_parameter_tab_del`
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

CREATE TABLE IF NOT EXISTS `tr_sales` (
  `ID` varchar(50) NOT NULL,
  `IDENTITY_NO` int(50) NOT NULL,
  `UOS_UIF_USERNAME` varchar(20) NOT NULL,
  `SUB_TOTAL_BEFORE_TAX` decimal(10,2) DEFAULT NULL,
  `DELIVERY_COST` decimal(10,2) DEFAULT NULL,
  `TOTAL_PRICE` decimal(10,0) DEFAULT NULL,
  `DELIVERED_BY` varchar(20) DEFAULT NULL,
  `PAYMENT_RECEIVED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `UPDATED_BY` varchar(20) NOT NULL,
  `UOM_COMP_ID` varchar(20) DEFAULT NULL,
  `UOS_BUSINESS_PARTNER_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_sales`
--

INSERT INTO `tr_sales` (`ID`, `IDENTITY_NO`, `UOS_UIF_USERNAME`, `SUB_TOTAL_BEFORE_TAX`, `DELIVERY_COST`, `TOTAL_PRICE`, `DELIVERED_BY`, `PAYMENT_RECEIVED_BY`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`, `UOM_COMP_ID`, `UOS_BUSINESS_PARTNER_ID`) VALUES
('20200803.d4a3d5fc-7452-4d2e-9dcc-fe9c6f2eebec', 1, 'x', NULL, NULL, NULL, 'x', 'Y', '2020-08-03 06:27:40', '2020-08-03 06:27:40', 'x', 'x', NULL, '001'),
('20200803.62bd5246-911b-4fc4-84b8-f1e3eaa9f3f6', 2, 'x', NULL, NULL, NULL, '', 'Y', '2020-08-03 07:25:26', '2020-08-03 07:25:26', 'x', 'x', NULL, '001'),
('20200803.406c63f4-6276-4118-bc45-4b58ef25388c', 3, 'x', NULL, NULL, NULL, 'c', 'Y', '2020-08-03 07:33:13', '2020-08-03 07:33:13', 'x', 'x', NULL, '001'),
('20200803.4a873fbc-92f0-4851-8a60-9c691cadfe96', 4, 'x', NULL, NULL, NULL, '', 'Y', '2020-08-03 07:37:12', '2020-08-03 07:37:12', 'x', 'x', NULL, '001'),
('20200803.d8a1f598-cd9f-44a9-b69d-e5b9a6b02542', 5, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 07:40:30', '2020-08-03 07:40:30', 'x', 'x', NULL, '001'),
('20200803.c68bd06c-7d9d-4b65-a59d-de84cb2d56a3', 6, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 07:59:44', '2020-08-03 07:59:44', 'x', 'x', NULL, '001'),
('20200803.2ce1a776-7d92-4ec4-b8b6-cb6fe0be7b0a', 7, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 08:03:50', '2020-08-03 08:03:50', 'x', 'x', NULL, '001'),
('20200803.427ebd89-d1f6-464a-8acc-62033df73fb4', 8, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 08:06:50', '2020-08-03 08:06:50', 'x', 'x', NULL, '001'),
('20200803.f64b23f8-9c2a-41ce-af8c-150ff81c94aa', 9, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 08:40:22', '2020-08-03 08:40:22', 'x', 'x', NULL, '001'),
('20200803.b1749025-54d1-4358-9831-6d62363f7f63', 10, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 08:43:38', '2020-08-03 08:43:38', 'x', 'x', NULL, '001'),
('20200803.f74674e5-2370-4578-bf80-370ba990775e', 11, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 08:55:10', '2020-08-03 08:55:10', 'x', 'x', NULL, '001'),
('20200803.78ac1bb0-e694-42fb-a08f-0d107fe1e56b', 12, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 08:56:56', '2020-08-03 08:56:56', 'x', 'x', NULL, '001'),
('20200803.dbc298b5-17ad-4518-9ee5-af24edddccbd', 13, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:01:25', '2020-08-03 09:01:25', 'x', 'x', NULL, '001'),
('20200803.f9556016-7c29-4300-b526-162acecb30fd', 14, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:04:55', '2020-08-03 09:04:55', 'x', 'x', NULL, '001'),
('20200803.560a360f-c920-47a7-a3a4-e834a16bc7c0', 15, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:05:53', '2020-08-03 09:05:53', 'x', 'x', NULL, '001'),
('20200803.69d5655c-d65d-42f2-800a-7aef2fe92ba6', 16, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:22:28', '2020-08-03 09:22:28', 'x', 'x', NULL, '001'),
('20200803.c602a0d5-6269-474f-9a8a-ef8f10865876', 17, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:28:14', '2020-08-03 09:28:14', 'x', 'x', NULL, '001'),
('20200803.f309b3b6-f385-430b-be1e-f449c702a85a', 18, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:46:27', '2020-08-03 09:46:27', 'x', 'x', NULL, '001'),
('20200803.3d44c5d6-d9e3-40d3-b4cd-099d383202fa', 19, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:48:37', '2020-08-03 09:48:37', 'x', 'x', NULL, '001'),
('20200803.4825b011-648b-435d-b647-68617196f143', 19, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:55:56', '2020-08-03 09:55:56', 'x', 'x', NULL, '001'),
('20200803.4d9d2475-f38d-497c-a47e-96d2ab09a689', 21, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 09:58:55', '2020-08-03 09:58:55', 'x', 'x', NULL, '001'),
('20200803.3a33ba19-03f2-4f97-94dc-a59a6154ef29', 1, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-03 10:22:44', '2020-08-03 10:22:44', 'x', 'x', NULL, '001'),
('20200804.88a34de7-0970-4c78-bef3-1f714bda1109', 1, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 06:19:58', '2020-08-04 06:19:58', 'x', 'x', NULL, '001'),
('20200804.7161df2f-b63e-476f-92ad-7f0bf9c15133', 2, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 06:49:05', '2020-08-04 06:49:05', 'x', 'x', NULL, '001'),
('20200804.5899fa6a-fa1f-48fb-9ffa-b09ae1f916be', 3, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 07:20:11', '2020-08-04 07:20:11', 'x', 'x', NULL, '001'),
('20200804.3d7c9158-baaf-4b81-bee9-66a0eac6eeff', 4, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 07:25:54', '2020-08-04 07:25:54', 'x', 'x', NULL, '001'),
('20200804.975b17a4-1d30-4d8f-8e75-66d27af29ae4', 5, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 07:28:15', '2020-08-04 07:28:15', 'x', 'x', NULL, '001'),
('20200804.acbf234f-9a54-40ce-b92f-34b84b29e440', 6, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 08:07:45', '2020-08-04 08:07:45', 'x', 'x', NULL, '001'),
('20200804.bc63b30a-fbdf-4ba6-99d4-6890ea2e4093', 7, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 08:11:42', '2020-08-04 08:11:42', 'x', 'x', NULL, '001'),
('20200804.764c675b-bc77-4936-bd0a-58527343828f', 8, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-04 08:13:02', '2020-08-04 08:13:02', 'x', 'x', NULL, '001'),
('20200806.30eeb9e0-fa41-4cb0-90ed-bd12f6598c3b', 1, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-06 07:22:44', '2020-08-06 07:22:44', 'x', 'x', NULL, '001'),
('20200806.da12f580-5fc9-46ce-a529-6795160bb1e8', 2, 'x', NULL, 5000.00, 99000, 'saveAndFlush', 'Y', '2020-08-06 07:31:44', '2020-08-06 07:31:44', 'x', 'x', NULL, '001'),
('20200806.fe5b48cd-6416-43f1-bb96-f0de10568642', 3, 'x', NULL, 1000.00, 66000, 'saveAndFlush', 'Y', '2020-08-06 07:33:50', '2020-08-06 07:33:50', 'x', 'x', NULL, '001'),
('20200806.8356016e-5427-405e-be9f-1d8ad66e61c8', 4, 'x', NULL, 5000.00, 66000, 'saveAndFlush', 'Y', '2020-08-06 07:42:15', '2020-08-06 07:42:15', 'x', 'x', NULL, '001'),
('20200806.91eedf8e-0756-45d0-9c83-bf4035b67b4c', 5, 'x', NULL, 1000.00, 33000, 'saveAndFlush', 'Y', '2020-08-06 07:44:21', '2020-08-06 07:44:21', 'x', 'x', NULL, '001'),
('20200806.03b83897-c105-46d0-8e50-d616cb7bc109', 6, 'x', NULL, 8000.00, 132000, 'saveAndFlush', 'Y', '2020-08-06 07:49:11', '2020-08-06 07:49:11', 'x', 'x', NULL, '001'),
('20200806.b4c89b2e-bdb2-4409-a6b1-ac07c37ca6b1', 7, 'x', NULL, NULL, 33000, 'saveAndFlush', 'Y', '2020-08-06 07:52:55', '2020-08-06 07:52:55', 'x', 'x', NULL, '001'),
('20200806.e9364472-4a57-4fe9-aa32-9f855a99e42a', 8, 'x', NULL, NULL, 132000, 'saveAndFlush', 'Y', '2020-08-06 07:54:42', '2020-08-06 07:54:42', 'x', 'x', NULL, '001'),
('20200806.a35fd6f3-14c9-4922-bc54-5f68df3c41ac', 9, 'x', NULL, NULL, 33000, 'saveAndFlush', 'Y', '2020-08-06 07:55:51', '2020-08-06 07:55:51', 'x', 'x', NULL, '001'),
('20200806.a0453167-3419-4455-8643-c7427ed37285', 10, 'x', NULL, 5000.00, 35000, 'saveAndFlush', 'Y', '2020-08-06 07:59:18', '2020-08-06 07:59:18', 'x', 'x', NULL, '001'),
('20200806.fb1c7caf-0e24-4fea-8f83-81ef81f61303', 11, 'x', NULL, 8000.00, 66000, 'saveAndFlush', 'Y', '2020-08-06 08:00:46', '2020-08-06 08:00:46', 'x', 'x', NULL, '001'),
('20200806.94ff0ed9-e206-48e7-a21d-a3f6b10fa5da', 12, 'x', NULL, 8000.00, 66000, 'saveAndFlush', 'Y', '2020-08-06 08:01:30', '2020-08-06 08:01:30', 'x', 'x', NULL, '001'),
('20200806.5f499157-11df-4d52-bf7f-40e4585d893e', 13, 'x', NULL, 5000.00, 103500, 'saveAndFlush', 'Y', '2020-08-06 08:14:18', '2020-08-06 08:14:18', 'x', 'x', NULL, '001'),
('20200806.b9727533-a28d-4861-9999-6cb17451f294', 14, 'x', NULL, 10000.00, 282000, 'saveAndFlush', 'Y', '2020-08-06 10:03:55', '2020-08-06 10:03:55', 'x', 'x', NULL, '001'),
('20200806.21cf3fa9-ea6e-4e98-b1cb-25d1b520b8c2', 15, 'x', NULL, 4000.00, 105000, 'saveAndFlush', 'Y', '2020-08-06 10:10:05', '2020-08-06 10:10:05', 'x', 'x', NULL, '001'),
('20200806.1ddbf142-8082-47eb-b93d-b8c460baf1cc', 16, 'x', NULL, 5000.00, 139000, 'saveAndFlush', 'Y', '2020-08-06 10:13:46', '2020-08-06 10:13:46', 'x', 'x', NULL, '001'),
('20200806.ed5762a8-6e31-4560-b8b0-cab7996f7a41', 17, 'x', NULL, 5000.00, 75000, 'saveAndFlush', 'Y', '2020-08-06 10:15:26', '2020-08-06 10:15:26', 'x', 'x', NULL, '001'),
('20200806.8d421335-c146-4bbd-ae5c-4715ee8deba1', 18, 'x', NULL, 5000.00, 141000, 'saveAndFlush', 'Y', '2020-08-06 10:15:49', '2020-08-06 10:15:49', 'x', 'x', NULL, '001'),
('20200807.457af941-c8c7-4ded-8ae1-ba12282a9a6d', 1, 'x', NULL, 5000.00, 104000, 'saveAndFlush', 'Y', '2020-08-07 08:01:00', '2020-08-07 08:01:00', 'x', 'x', NULL, '001'),
('20200807.d3ef98af-d99d-4a83-b77b-efc9ce9b04d9', 2, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-07 08:21:13', '2020-08-07 08:21:13', 'x', 'x', NULL, '001'),
('20200807.46eee8a7-ba1a-4e42-84c9-5a44363b5b20', 3, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-07 08:31:42', '2020-08-07 08:31:42', 'x', 'x', NULL, '001'),
('20200807.7d60c430-c4c8-48c0-9e0b-25289c08641c', 4, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 08:35:19', '2020-08-07 08:35:19', 'x', 'x', NULL, '001'),
('20200807.9b40fc03-e11f-49f9-a501-60999f868138', 5, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-07 08:37:16', '2020-08-07 08:37:16', 'x', 'x', NULL, '001'),
('20200807.a1250a0d-2488-4531-88ae-90754e549789', 6, 'x', NULL, 5000.00, 170000, 'saveAndFlush', 'Y', '2020-08-07 08:40:22', '2020-08-07 08:40:22', 'x', 'x', NULL, '001'),
('20200807.21cd493a-aadc-4fe7-b553-f42bf0722993', 7, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 08:43:55', '2020-08-07 08:43:55', 'x', 'x', NULL, '001'),
('20200807.7d1328a8-b660-44f5-926c-081a56bfb7ff', 8, 'x', NULL, 50000.00, 116000, 'saveAndFlush', 'Y', '2020-08-07 09:00:20', '2020-08-07 09:00:20', 'x', 'x', NULL, '001'),
('20200807.cb85034b-91c2-489a-a8d8-05603a6a7bab', 9, 'x', NULL, 500.00, 33500, 'saveAndFlush', 'Y', '2020-08-07 09:04:38', '2020-08-07 09:04:38', 'x', 'x', NULL, '001'),
('20200807.4acdd174-2ff3-4d40-9e7c-05b741a5eec3', 10, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-07 09:36:00', '2020-08-07 09:36:00', 'x', 'x', NULL, '001'),
('20200807.487b5251-f0e8-4615-826a-63491025e21c', 11, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 09:43:30', '2020-08-07 09:43:30', 'x', 'x', NULL, '001'),
('20200807.34ee81fd-38b5-4903-9004-bf851dc16f46', 12, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 09:55:45', '2020-08-07 09:55:45', 'x', 'x', NULL, '001'),
('20200807.b0bcff23-5b7a-4d68-99aa-c71af7c32acd', 13, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 09:56:19', '2020-08-07 09:56:19', 'x', 'x', NULL, '001'),
('20200807.187f190c-e27e-4a27-a0b4-37dbb1a86e58', 14, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 09:57:22', '2020-08-07 09:57:22', 'x', 'x', NULL, '001'),
('20200807.43c480b0-88c1-4512-bbf5-30dc0a397704', 15, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 10:01:04', '2020-08-07 10:01:04', 'x', 'x', NULL, '001'),
('20200807.0acfa931-4161-47b9-87eb-ecd8e895ff0c', 16, 'x', NULL, 5000.00, 170000, 'saveAndFlush', 'Y', '2020-08-07 10:04:51', '2020-08-07 10:04:51', 'x', 'x', NULL, '001'),
('20200807.6ccd1cbb-bbb4-48c7-9055-f515239fd9aa', 17, 'x', NULL, 500.00, 33500, 'saveAndFlush', 'Y', '2020-08-07 10:06:35', '2020-08-07 10:06:35', 'x', 'x', NULL, '001'),
('20200807.e6e22e48-15a3-4061-8324-e58e13da1c4d', 18, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 10:08:02', '2020-08-07 10:08:02', 'x', 'x', NULL, '001'),
('20200807.292a793f-a58d-477b-b19b-f0c0ecc6df5e', 19, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 10:10:59', '2020-08-07 10:10:59', 'x', 'x', NULL, '001'),
('20200807.24ffe0d9-4c54-4323-9b4f-df70c4e4c003', 20, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-07 10:13:25', '2020-08-07 10:13:25', 'x', 'x', NULL, '001'),
('20200810.f3c07518-0fe5-448e-9d93-c503f301e830', 1, 'x', NULL, 5000.00, 180000, 'saveAndFlush', 'Y', '2020-08-10 03:39:05', '2020-08-10 03:39:05', 'x', 'x', NULL, '001'),
('20200810.68aae2cd-369a-4fc4-b031-f8dd9ec9f6f9', 2, 'x', NULL, 5000.00, 476000, 'saveAndFlush', 'Y', '2020-08-10 03:48:42', '2020-08-10 03:48:42', 'x', 'x', NULL, '001'),
('20200810.ca4dec16-10f1-4834-ab52-6a4262f39d20', 3, 'x', NULL, 5000.00, 137000, 'saveAndFlush', 'Y', '2020-08-10 04:00:43', '2020-08-10 04:00:43', 'x', 'x', NULL, '001'),
('20200810.c839c507-8d2c-4273-a9b9-fb2efba52676', 4, 'x', NULL, 5000.00, 302000, 'saveAndFlush', 'Y', '2020-08-10 04:09:00', '2020-08-10 04:09:00', 'x', 'x', NULL, '001'),
('20200810.68cdcae2-4a10-451c-b52f-06c9e6a4dd03', 5, 'x', NULL, 5000.00, 472000, 'saveAndFlush', 'Y', '2020-08-10 04:15:09', '2020-08-10 04:15:09', 'x', 'x', NULL, '001'),
('20200810.244b4c6f-437f-49b4-9921-88a0e3ba3d83', 6, 'x', NULL, 5000.00, 219000, 'saveAndFlush', 'Y', '2020-08-10 04:15:38', '2020-08-10 04:15:38', 'x', 'x', NULL, '001'),
('20200812.e77b08c3-b848-42d9-b7a3-78da92dd548e', 1, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 07:36:29', '2020-08-12 07:36:29', 'x', 'x', NULL, '001'),
('20200812.b8289402-5d5e-47ef-9e01-c8f23d50ccaa', 2, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 08:06:18', '2020-08-12 08:06:18', 'x', 'x', NULL, '001'),
('20200812.f1e647e4-b2e7-488c-a54c-831665b835d3', 3, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 08:09:18', '2020-08-12 08:09:18', 'x', 'x', NULL, '001'),
('20200812.6ed2b919-6da9-493a-89d2-4aad2779f84f', 4, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 08:16:16', '2020-08-12 08:16:16', 'x', 'x', NULL, '001'),
('20200812.45143439-d337-43fc-9995-b9bfeccbaf5f', 5, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 08:27:53', '2020-08-12 08:27:53', 'x', 'x', NULL, '001'),
('20200812.301f9ab9-b9ee-4a45-86d9-3a9334c0540b', 6, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 09:03:55', '2020-08-12 09:03:55', 'x', 'x', NULL, '001'),
('20200812.0081ff90-5f2f-4577-8835-e18b6dd35aed', 7, 'x', NULL, NULL, NULL, 'saveAndFlush', 'Y', '2020-08-12 09:08:55', '2020-08-12 09:08:55', 'x', 'x', NULL, '001'),
('20200812.022a26e9-7281-4dd1-b2b4-1177acb2508a', 8, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 09:21:02', '2020-08-12 09:21:02', 'x', 'x', NULL, '001'),
('20200812.c0176f50-cc42-497a-8c31-87f8ee63de33', 9, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 09:21:02', '2020-08-12 09:21:02', 'x', 'x', NULL, '001'),
('20200812.3530c9ae-7eba-4481-8cda-ad7c6f598383', 10, 'x', NULL, 59000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 09:22:44', '2020-08-12 09:22:44', 'x', 'x', NULL, '001'),
('20200812.df31d535-dc73-4f01-bb2b-ea426e11e79f', 11, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 10:15:11', '2020-08-12 10:15:11', 'x', 'x', NULL, '001'),
('20200812.cc52b68c-6973-4f20-ace5-4a925a89c8b7', 12, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-12 10:20:12', '2020-08-12 10:20:12', 'x', 'x', NULL, '001'),
('20200813.73a30727-da3c-4559-a27c-7444cd710e03', 1, 'x', NULL, 500.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 05:00:41', '2020-08-13 05:00:41', 'x', 'x', NULL, '001'),
('20200813.6f0092d4-28a6-426e-b4de-8fc69aa389b7', 2, 'x', NULL, 500.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 06:55:44', '2020-08-13 06:55:44', 'x', 'x', NULL, '001'),
('20200813.94b2193c-7bfe-40c3-8efb-025907eed618', 3, 'x', NULL, 500.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 07:11:34', '2020-08-13 07:11:34', 'x', 'x', NULL, '001'),
('20200813.cb733bf5-0f02-4bbc-ad1e-8edd59f5c3c4', 4, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 07:17:20', '2020-08-13 07:17:20', 'x', 'x', NULL, '001'),
('20200813.56bc0bf5-2b91-415a-a8b5-93c0f6a5233b', 5, 'x', NULL, 9090.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 07:18:46', '2020-08-13 07:18:46', 'x', 'x', NULL, '001'),
('20200813.56bf0274-3035-48a5-88c0-5974702b33c8', 6, 'x', NULL, 500.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 07:20:38', '2020-08-13 07:20:38', 'x', 'x', NULL, '001'),
('20200813.5426bf72-b2a8-4604-8712-62d1f4a6cc31', 7, 'x', NULL, 1000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 07:22:56', '2020-08-13 07:22:56', 'x', 'x', NULL, '001'),
('20200813.917c0dd5-027f-4941-a9bc-3f22824636fb', 8, 'x', NULL, 7000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 07:29:49', '2020-08-13 07:29:49', 'x', 'x', NULL, '001'),
('20200813.aa9835ef-7c45-4e2c-8bf1-756598f6c3fa', 9, 'x', NULL, 7000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 07:30:31', '2020-08-13 07:30:31', 'x', 'x', NULL, '001'),
('20200813.0fe93b7d-b3c1-4a26-b274-f8ffc0c865ef', 10, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 09:36:18', '2020-08-13 09:36:18', 'x', 'x', NULL, '001'),
('20200813.04766fc9-f0dc-49b0-8213-fc443a0fd346', 11, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 09:56:05', '2020-08-13 09:56:05', 'x', 'x', NULL, '001'),
('20200813.91a5a802-54b2-4ff9-8fc2-8755ff7de4f4', 12, 'x', NULL, 14214.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 09:59:30', '2020-08-13 09:59:30', 'x', 'x', NULL, '001'),
('20200813.f4f3a7ad-db95-4def-b56c-da6a43c48c9e', 13, 'x', NULL, 898.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 10:08:26', '2020-08-13 10:08:26', 'x', 'x', NULL, '001'),
('20200813.3458ca8e-595c-41b2-8d8a-1061057605dc', 14, 'x', NULL, 898.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 10:08:26', '2020-08-13 10:08:26', 'x', 'x', NULL, '001'),
('20200813.2dd8ba23-a923-47f3-996f-357f683039ae', 15, 'x', NULL, 7000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 10:13:34', '2020-08-13 10:13:34', 'x', 'x', NULL, '001'),
('20200813.d1f69543-441f-42b8-9673-b7b342b493e2', 16, 'x', NULL, 6000.00, NULL, 'saveAndFlush', 'Y', '2020-08-13 10:24:40', '2020-08-13 10:24:40', 'x', 'x', NULL, '001'),
('20200824.e4759751-d81d-4d73-935c-e604463f16cb', 1, 'x', NULL, 7000.00, 0, 'saveAndFlush', 'Y', '2020-08-24 07:23:55', '2020-08-24 07:23:55', 'x', 'x', NULL, '001'),
('20200824.ca4fb7c9-ff2d-4498-9ce2-352f7e44154e', 2, 'x', NULL, 7000.00, 0, 'saveAndFlush', 'Y', '2020-08-24 07:27:31', '2020-08-24 07:27:31', 'x', 'x', NULL, '001'),
('20200824.d1665531-e87e-4f0f-b566-03def878b855', 3, 'x', NULL, 6000.00, 0, 'saveAndFlush', 'Y', '2020-08-24 08:45:05', '2020-08-24 08:45:05', 'x', 'x', NULL, '001'),
('20200824.45ac7810-07c8-4e6c-b338-c6df28015fbf', 4, 'x', NULL, 880.00, 0, 'saveAndFlush', 'Y', '2020-08-24 08:53:07', '2020-08-24 08:53:07', 'x', 'x', NULL, '001'),
('20200824.f7bde0da-ddea-4035-8e7d-ee93c5b05dce', 5, 'x', NULL, 5000.00, 0, 'saveAndFlush', 'Y', '2020-08-24 09:01:17', '2020-08-24 09:01:17', 'x', 'x', NULL, '001'),
('20200824.4b96cbd6-0aef-4511-8d87-0175b6ecf057', 6, 'x', NULL, 5000.00, NULL, 'saveAndFlush', 'Y', '2020-08-24 09:04:18', '2020-08-24 09:04:18', 'x', 'x', NULL, '001'),
('20200824.8aa21306-b60a-4f81-afbd-1656c3d6ea35', 7, 'x', NULL, 8000.00, 74000, 'saveAndFlush', 'Y', '2020-08-24 09:07:35', '2020-08-24 09:07:35', 'x', 'x', NULL, '001'),
('20200824.a73127e0-0617-4951-9902-d6937751b185', 8, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-24 09:18:50', '2020-08-24 09:18:50', 'x', 'x', NULL, '001'),
('20200824.ae2e2c1c-0494-4b05-adc2-2aa2668fd882', 9, 'x', NULL, 6000.00, 39000, 'saveAndFlush', 'Y', '2020-08-24 09:29:41', '2020-08-24 09:29:41', 'x', 'x', NULL, '001'),
('20200824.47114b25-a7a8-49da-9da8-98d24dbb1a30', 10, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-24 09:35:52', '2020-08-24 09:35:52', 'x', 'x', NULL, '001'),
('20200824.b82f0f03-9ec5-4af0-a056-13deb45a83d4', 11, 'x', NULL, 4000.00, 37000, 'saveAndFlush', 'Y', '2020-08-24 09:37:07', '2020-08-24 09:37:07', 'x', 'x', NULL, '001'),
('20200824.34f77fb7-57c1-4ff4-b3b4-ba43292744e1', 12, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-24 09:38:18', '2020-08-24 09:38:18', 'x', 'x', NULL, '001'),
('20200824.169e243b-9210-42dd-a4d2-981dd3346920', 13, 'x', NULL, 8000.00, 74000, 'saveAndFlush', 'Y', '2020-08-24 09:40:02', '2020-08-24 09:40:02', 'x', 'x', NULL, '001'),
('20200824.5cde153b-4334-427e-b13f-3de46b59da5f', 14, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-08-24 09:49:48', '2020-08-24 09:49:48', 'x', 'x', NULL, '001'),
('20200824.c7209ffb-c9e9-4e43-9e71-5879c16baac9', 15, 'x', NULL, 8000.00, 41000, 'saveAndFlush', 'Y', '2020-08-24 09:52:55', '2020-08-24 09:52:55', 'x', 'x', NULL, '001'),
('20200824.32022c51-eec3-43bb-a17d-2cb025dfc7ca', 16, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-08-24 09:54:38', '2020-08-24 09:54:38', 'x', 'x', NULL, '001'),
('20200904.a58308f7-5189-4c12-b8f9-18b1091b382d', 1, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-09-04 03:55:48', '2020-09-04 03:55:48', 'x', 'x', NULL, '001'),
('20200904.be76f9da-446e-471e-8e8e-e83b192e0410', 2, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-04 10:08:51', '2020-09-04 10:08:51', 'x', 'x', NULL, '001'),
('20200907.c307759f-174e-4f7b-9b71-85e65c742723', 1, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-09-07 06:36:01', '2020-09-07 06:36:01', 'x', 'x', NULL, '001'),
('20200907.baf1a7b7-00cb-4f28-8a91-d0b6d0802db0', 2, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-07 06:51:06', '2020-09-07 06:51:06', 'x', 'x', NULL, '001'),
('20200907.894139a8-4f7b-4fba-81fa-bc61804043ac', 3, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-07 06:51:48', '2020-09-07 06:51:48', 'x', 'x', NULL, '001'),
('20200907.0a70e8fe-5320-4d9e-a1ee-527e51955243', 4, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-07 06:52:59', '2020-09-07 06:52:59', 'x', 'x', NULL, '001'),
('20200907.e61bbc4f-e79a-42f9-a136-f96b99968bcd', 5, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-07 07:14:49', '2020-09-07 07:14:49', 'x', 'x', NULL, '001'),
('20200907.8c75ad7a-6a92-403d-9bfe-c333e278ad2e', 6, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-07 07:19:18', '2020-09-07 07:19:18', 'x', 'x', NULL, '001'),
('20200907.57268db5-e4f4-4e0d-8d16-488dc0b629fe', 7, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-07 07:21:03', '2020-09-07 07:21:03', 'x', 'x', NULL, '001'),
('20200907.a0817bfb-df61-4769-8515-ba36a7eec39a', 8, 'x', NULL, 5000.00, 38000, 'saveAndFlush', 'Y', '2020-09-07 07:22:07', '2020-09-07 07:22:07', 'x', 'x', NULL, '001'),
('20200907.e6453d35-23a5-44db-9567-c88fc1f41818', 9, 'x', NULL, 5000.00, 71000, 'saveAndFlush', 'Y', '2020-09-07 07:25:49', '2020-09-07 07:25:49', 'x', 'x', NULL, '001');

-- --------------------------------------------------------

--
-- Table structure for table `tr_sales_box`
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

CREATE TABLE IF NOT EXISTS `tr_sales_detail` (
  `ID` varchar(50) NOT NULL,
  `TR_SALES_ID` varchar(50) NOT NULL,
  `UOM_MATERIAL_ID` varchar(20) NOT NULL,
  `QTY` int(6) NOT NULL,
  `PRICE` decimal(10,0) NOT NULL,
  `SUB_TOTAL_PRICE` decimal(12,0) NOT NULL,
  `NOTES` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_sales_detail`
--

INSERT INTO `tr_sales_detail` (`ID`, `TR_SALES_ID`, `UOM_MATERIAL_ID`, `QTY`, `PRICE`, `SUB_TOTAL_PRICE`, `NOTES`) VALUES
('20200803.bf25d1ee-7e03-4c6d-a438-d92223fda90d', '20200803.d4a3d5fc-7452-4d2e-9dcc-fe9c6f2eebec', '1001', 8, 33000, 264000, ''),
('20200803.33bdcb80-8c9d-41a4-8613-30d97d3f1ac5', '20200803.d4a3d5fc-7452-4d2e-9dcc-fe9c6f2eebec', '1002', 6, 35000, 210000, ''),
('20200803.8f98038f-0617-403f-90e9-6c242c0517c6', '20200803.62bd5246-911b-4fc4-84b8-f1e3eaa9f3f6', '1001', 10, 33000, 330000, ''),
('20200803.1134ade4-1e9a-4cb2-b8e5-64c11efb104b', '20200803.427ebd89-d1f6-464a-8acc-62033df73fb4', '1001', 1, 33000, 33000, ''),
('20200803.1708fbdc-f3dc-480c-acf2-19fd695d0c1a', '20200803.78ac1bb0-e694-42fb-a08f-0d107fe1e56b', '1001', 100, 33000, 3300000, ''),
('20200803.51ddd1a9-382a-4b93-b663-e26c48c2b46d', '20200803.f9556016-7c29-4300-b526-162acecb30fd', '1001', 3, 33000, 99000, ''),
('20200803.a00143a1-d740-4258-8bbc-e803de0fe5e9', '20200803.3d44c5d6-d9e3-40d3-b4cd-099d383202fa', '1001', 3, 33000, 99000, ''),
('20200803.392e98ed-bb99-486c-9dbe-cc05c5fedd72', '20200803.4d9d2475-f38d-497c-a47e-96d2ab09a689', '1001', 10, 33000, 330000, ''),
('20200803.660ceff6-e640-4bb1-9cce-fb72c49ec518', '20200803.3a33ba19-03f2-4f97-94dc-a59a6154ef29', '1001', 5, 33000, 165000, ''),
('20200804.a427f6cb-1cc7-4ee2-a587-51f7add767a4', '20200804.88a34de7-0970-4c78-bef3-1f714bda1109', '1001', 2, 33000, 66000, ''),
('20200804.68efe87d-459c-4bdc-bcb5-f374b43f9607', '20200804.7161df2f-b63e-476f-92ad-7f0bf9c15133', '1001', 1, 33000, 33000, ''),
('20200804.591b87d4-772b-430c-8757-08f5ab0b941c', '20200804.5899fa6a-fa1f-48fb-9ffa-b09ae1f916be', '1001', 1, 33000, 33000, ''),
('20200804.2c905f08-44b9-42a0-9f28-a2920f3750bf', '20200804.3d7c9158-baaf-4b81-bee9-66a0eac6eeff', '1001', 1, 33000, 33000, ''),
('20200804.ac4a106a-0f91-49bd-aa62-8067f25a28a0', '20200804.975b17a4-1d30-4d8f-8e75-66d27af29ae4', '1001', 1, 33000, 33000, ''),
('20200804.6c5fbf39-bb93-45c5-b809-64d200b8c9e6', '20200804.acbf234f-9a54-40ce-b92f-34b84b29e440', '1001', 1, 33000, 33000, ''),
('20200804.86265f4e-04a0-450d-ab66-8be2ee3bdbc8', '20200804.bc63b30a-fbdf-4ba6-99d4-6890ea2e4093', '1001', 10, 33000, 330000, ''),
('20200804.b108c68b-a7e3-4a78-b670-af0504412beb', '20200804.764c675b-bc77-4936-bd0a-58527343828f', '1001', 10, 33000, 330000, ''),
('20200804.bfde32cf-3b66-4868-bdde-acc1381a40d1', '20200804.764c675b-bc77-4936-bd0a-58527343828f', '1002', 5, 35000, 175000, ''),
('20200806.2416bc43-7522-4620-b75d-fec55011f109', '20200806.da12f580-5fc9-46ce-a529-6795160bb1e8', '1001', 3, 33000, 99000, ''),
('20200806.5abfc82a-c684-4c69-a307-0b7c2b0f5261', '20200806.fe5b48cd-6416-43f1-bb96-f0de10568642', '1001', 2, 33000, 66000, ''),
('20200806.809e43e5-d990-47e6-a687-2886a8c598b2', '20200806.8356016e-5427-405e-be9f-1d8ad66e61c8', '1001', 2, 33000, 66000, ''),
('20200806.4e38937a-5412-4324-a0b7-fd1e07fe6a2f', '20200806.91eedf8e-0756-45d0-9c83-bf4035b67b4c', '1001', 1, 33000, 33000, ''),
('20200806.5d7a633b-7c66-4ebb-a087-f693f78a3609', '20200806.03b83897-c105-46d0-8e50-d616cb7bc109', '1001', 4, 33000, 132000, ''),
('20200806.31480408-1972-4615-9505-0555ed6adb7e', '20200806.b4c89b2e-bdb2-4409-a6b1-ac07c37ca6b1', '1001', 1, 33000, 33000, ''),
('20200806.604892b8-052d-4b33-a97f-a89fcf12b8ac', '20200806.e9364472-4a57-4fe9-aa32-9f855a99e42a', '1001', 4, 33000, 132000, ''),
('20200806.f4b1d5e5-cfe1-4a36-a6bb-e43bc02a69b5', '20200806.a35fd6f3-14c9-4922-bc54-5f68df3c41ac', '1001', 1, 33000, 33000, ''),
('20200806.08252584-d1b6-40a7-9f5b-c42a06bd2902', '20200806.a0453167-3419-4455-8643-c7427ed37285', '1002', 1, 35000, 35000, ''),
('20200806.e76a205f-9b87-416e-b118-932470746dad', '20200806.fb1c7caf-0e24-4fea-8f83-81ef81f61303', '1001', 2, 33000, 66000, ''),
('20200806.d3690131-641d-42f8-b43a-99ccbf954fdc', '20200806.94ff0ed9-e206-48e7-a21d-a3f6b10fa5da', '1001', 2, 33000, 66000, ''),
('20200806.4bf50347-fe5b-42dc-92cb-a02b32871cf5', '20200806.5f499157-11df-4d52-bf7f-40e4585d893e', '1001', 2, 33000, 66000, ''),
('20200806.df46bf9e-38d6-4d58-b81d-9e5b11717067', '20200806.5f499157-11df-4d52-bf7f-40e4585d893e', '1046', 1, 29000, 29000, ''),
('20200806.0a09770b-b110-4597-a74a-b17fd501cae0', '20200806.5f499157-11df-4d52-bf7f-40e4585d893e', '3023', 1, 3500, 3500, ''),
('20200806.9424c332-bcc1-45dd-afc7-cfd9a1459056', '20200806.b9727533-a28d-4861-9999-6cb17451f294', '1001', 4, 33000, 132000, ''),
('20200806.1a9927f4-537f-4106-8598-9afde04a08ac', '20200806.b9727533-a28d-4861-9999-6cb17451f294', '1002', 4, 35000, 140000, ''),
('20200806.303be098-a29a-4462-8cc0-1452ec0df743', '20200806.21cf3fa9-ea6e-4e98-b1cb-25d1b520b8c2', '1001', 2, 33000, 66000, ''),
('20200806.c36397b5-e40c-4f58-b91c-e70daa00c851', '20200806.21cf3fa9-ea6e-4e98-b1cb-25d1b520b8c2', '1002', 1, 35000, 35000, ''),
('20200806.c978af70-4124-4597-8b36-952237195214', '20200806.1ddbf142-8082-47eb-b93d-b8c460baf1cc', '1001', 4, 33000, 132000, ''),
('20200806.de84d81b-6e11-439e-91dd-bcda21bd3ec5', '20200806.1ddbf142-8082-47eb-b93d-b8c460baf1cc', '4013', 2, 1000, 2000, ''),
('20200806.f3ed94e8-eede-457d-bf78-10bdcfe5a969', '20200806.ed5762a8-6e31-4560-b8b0-cab7996f7a41', '1002', 2, 35000, 70000, ''),
('20200806.86d8ae82-b0a4-4057-9aa7-e778d98676da', '20200806.8d421335-c146-4bbd-ae5c-4715ee8deba1', '1001', 2, 33000, 66000, ''),
('20200806.8ea24842-115c-4035-8896-af8853addb09', '20200806.8d421335-c146-4bbd-ae5c-4715ee8deba1', '1002', 2, 35000, 70000, ''),
('20200807.04fd9a1c-f79e-43c2-bc1d-e67845ea799b', '20200807.457af941-c8c7-4ded-8ae1-ba12282a9a6d', '1001', 3, 33000, 99000, ''),
('20200807.fb270d5d-45da-4b1f-aeb8-a474485ae2fa', '20200807.d3ef98af-d99d-4a83-b77b-efc9ce9b04d9', '1001', 2, 33000, 66000, ''),
('20200807.7748a4f6-efb8-4d21-a3eb-0ea331e96ef0', '20200807.46eee8a7-ba1a-4e42-84c9-5a44363b5b20', '1001', 2, 33000, 66000, ''),
('20200807.52e1799b-a9a8-4ec0-8b72-139e42c0577e', '20200807.7d60c430-c4c8-48c0-9e0b-25289c08641c', '1001', 1, 33000, 33000, ''),
('20200807.a5be3def-67f8-40ec-afa3-a38f8a2bf405', '20200807.9b40fc03-e11f-49f9-a501-60999f868138', '1001', 2, 33000, 66000, ''),
('20200807.b4477a1f-4059-4d65-bf6a-4429b0aca047', '20200807.a1250a0d-2488-4531-88ae-90754e549789', '1001', 5, 33000, 165000, ''),
('20200807.78a413dd-573d-49ea-89da-d520b78b5297', '20200807.21cd493a-aadc-4fe7-b553-f42bf0722993', '1001', 1, 33000, 33000, ''),
('20200807.17776269-5333-4cac-80ef-31b88a66c252', '20200807.7d1328a8-b660-44f5-926c-081a56bfb7ff', '1001', 2, 33000, 66000, ''),
('20200807.91af9576-258b-4821-9144-d36b97190ac1', '20200807.cb85034b-91c2-489a-a8d8-05603a6a7bab', '1001', 1, 33000, 33000, ''),
('20200807.1bb8b639-31e9-42d2-b212-6a511dee8124', '20200807.4acdd174-2ff3-4d40-9e7c-05b741a5eec3', '1001', 2, 33000, 66000, ''),
('20200807.3e43a0e4-0635-46c3-b86a-b8c0602a8dd9', '20200807.487b5251-f0e8-4615-826a-63491025e21c', '1001', 1, 33000, 33000, ''),
('20200807.f2584745-3c4f-4c61-83fe-8ba2ef4f4f77', '20200807.34ee81fd-38b5-4903-9004-bf851dc16f46', '1001', 1, 33000, 33000, ''),
('20200807.a105159f-7d41-4806-9b23-7d414c291748', '20200807.b0bcff23-5b7a-4d68-99aa-c71af7c32acd', '1001', 1, 33000, 33000, ''),
('20200807.cfe1cd86-08e8-4e9e-9a22-75029bfe12ba', '20200807.187f190c-e27e-4a27-a0b4-37dbb1a86e58', '1001', 1, 33000, 33000, ''),
('20200807.497890fe-e0e2-41cb-954c-c3884dbc07e6', '20200807.43c480b0-88c1-4512-bbf5-30dc0a397704', '1001', 1, 33000, 33000, ''),
('20200807.359161a1-bb37-493b-a06d-b8cf342fb586', '20200807.0acfa931-4161-47b9-87eb-ecd8e895ff0c', '1001', 5, 33000, 165000, ''),
('20200807.b5b07b37-ad4b-4923-8c84-8f8944facd4f', '20200807.6ccd1cbb-bbb4-48c7-9055-f515239fd9aa', '1001', 1, 33000, 33000, ''),
('20200807.721b3c52-1d6b-40b2-a8a9-e2d1d304546c', '20200807.e6e22e48-15a3-4061-8324-e58e13da1c4d', '1001', 1, 33000, 33000, ''),
('20200807.22c236af-bf78-4f19-b705-9f88394b4213', '20200807.292a793f-a58d-477b-b19b-f0c0ecc6df5e', '1001', 1, 33000, 33000, ''),
('20200807.9dd7d22e-3e0c-4a00-a846-57cce4a47221', '20200807.24ffe0d9-4c54-4323-9b4f-df70c4e4c003', '1001', 1, 33000, 33000, ''),
('20200810.d949c0b1-27e5-4534-871f-b66c24de7a60', '20200810.f3c07518-0fe5-448e-9d93-c503f301e830', '1002', 5, 35000, 175000, ''),
('20200810.4d8dfd6c-4aa5-4307-9817-59dd86bba3ec', '20200810.68aae2cd-369a-4fc4-b031-f8dd9ec9f6f9', '1001', 6, 33000, 198000, ''),
('20200810.1d83d81e-da74-45fa-8aa9-ce3db9042b48', '20200810.68aae2cd-369a-4fc4-b031-f8dd9ec9f6f9', '1002', 1, 35000, 35000, ''),
('20200810.be3e71a8-9f08-44f1-b58f-07d6fd451608', '20200810.68aae2cd-369a-4fc4-b031-f8dd9ec9f6f9', '1004', 7, 34000, 238000, ''),
('20200810.62f69d07-6ab5-4f57-96bc-262f36f278d2', '20200810.ca4dec16-10f1-4834-ab52-6a4262f39d20', '1001', 4, 33000, 132000, ''),
('20200810.0db8601e-6cd8-4bc0-9848-3c37dd973867', '20200810.c839c507-8d2c-4273-a9b9-fb2efba52676', '1001', 9, 33000, 297000, ''),
('20200810.12de608c-cfcf-4e4f-b8dc-6aedbaeea744', '20200810.68cdcae2-4a10-451c-b52f-06c9e6a4dd03', '1031', 5, 34000, 170000, ''),
('20200810.5b274c47-28d9-4fc4-a5a9-905896b338fa', '20200810.244b4c6f-437f-49b4-9921-88a0e3ba3d83', '3008', 2, 22000, 44000, ''),
('20200812.f7d7c0ac-0173-401c-8afe-382789826208', '20200812.e77b08c3-b848-42d9-b7a3-78da92dd548e', '1001', 3, 33000, 99000, ''),
('20200812.40d5a260-6e0b-4b7a-a550-753bec94dd70', '20200812.f1e647e4-b2e7-488c-a54c-831665b835d3', '1001', 2, 33000, 66000, '1. Tidak pakai ayam\n1. tidak pedas\nJangan lupa tanpa kecap keduanya\ndua dua nya ga pakai sayur\njangan lupa ya'),
('20200812.cedf1011-c5eb-4dff-9ce2-585e3646714e', '20200812.6ed2b919-6da9-493a-89d2-4aad2779f84f', '1001', 2, 33000, 66000, '1.jjjjj\r\n134lkjl\r\nadfljad\r\nalsfl'),
('20200812.a776dc21-56a0-4734-a8df-670a67ef6194', '20200812.45143439-d337-43fc-9995-b9bfeccbaf5f', '1001', 1, 33000, 33000, 'ds;fkd;\r\nqwjlgtjk;let;kl\r\nnljlkjk;lj\r\n;akkr;l'),
('20200812.7adafe11-6990-4871-a8a7-1cb4c2074900', '20200812.301f9ab9-b9ee-4a45-86d9-3a9334c0540b', '1001', 1, 33000, 33000, 'ljljlfa\r\nerqrq\r\nqrqwrwq\r\nqwrwqr\r\nwtqwe'),
('20200812.9a313d01-5834-4559-8d40-b36dd392a6da', '20200812.0081ff90-5f2f-4577-8835-e18b6dd35aed', '1001', 1, 33000, 33000, 'lkjljl\r\njkjkjk\r\njkjk\r\njkjk\r\n'),
('20200812.81a39adb-9e11-4160-b854-a7e8c9a996c8', '20200812.022a26e9-7281-4dd1-b2b4-1177acb2508a', '1001', 1, 33000, 33000, 'fdaf\r\nkjsdkgjd\r\nklkl'),
('20200812.7b123a39-2a9a-4663-8ef9-391ced7001c5', '20200812.c0176f50-cc42-497a-8c31-87f8ee63de33', '1001', 1, 33000, 33000, 'fdaf\r\nkjsdkgjd\r\nklkl'),
('20200812.dbf0171f-1bc5-43f8-b9f4-c607e1386fb2', '20200812.3530c9ae-7eba-4481-8cda-ad7c6f598383', '1001', 1, 33000, 33000, '5\r\nsgts\r\nadf'),
('20200812.c2509c21-4a12-4d13-99fc-d5d23cdf5a5e', '20200812.df31d535-dc73-4f01-bb2b-ea426e11e79f', '1001', 4, 33000, 132000, 'kjjkfa\r\nadfaga\r\nadgag\r\nafgdas\r\n'),
('20200812.e50a51a4-36e6-439d-a252-9fe477cde12c', '20200812.cc52b68c-6973-4f20-ace5-4a925a89c8b7', '1001', 3, 33000, 99000, 'dafa\r\nqegtqt\r\nqewr'),
('20200813.d9ce9708-b472-4371-bef0-876ea939bd9a', '20200813.73a30727-da3c-4559-a27c-7444cd710e03', '1001', 1, 33000, 33000, '141414\r\n14134\r\n1\r\n134145wet'),
('20200813.85dcb918-bef9-4e1c-86d1-3fe3063160de', '20200813.6f0092d4-28a6-426e-b4de-8fc69aa389b7', '1001', 2, 33000, 66000, 'jadlfk\r\nadgalgk\r\nadfa'),
('20200813.fec90a95-51d0-418f-9f6d-e0cdfdb631c5', '20200813.94b2193c-7bfe-40c3-8efb-025907eed618', '1001', 1, 33000, 33000, 'dejfladg\r\nrwtlwjrly\r\nwet'),
('20200813.effc7186-5375-42d9-9e70-444684189e8f', '20200813.cb733bf5-0f02-4bbc-ad1e-8edd59f5c3c4', '1001', 2, 33000, 66000, 'dgmkdmg\r\nqgkk;qk\r\nqetqe'),
('20200813.690d4e5f-4ce0-4204-a89f-105bb25fb027', '20200813.56bc0bf5-2b91-415a-a8b5-93c0f6a5233b', '1001', 1, 33000, 33000, 't;wt\r\nwetewt\r\nwrtwt'),
('20200813.dcc2b8e8-dee3-40f2-955b-d5381f987fb1', '20200813.56bf0274-3035-48a5-88c0-5974702b33c8', '1001', 1, 33000, 33000, 'lkwjeltgt\r\ns;tj\r\njljlwr'),
('20200813.9759cf7b-2965-4a9a-8768-c8d500a52cef', '20200813.5426bf72-b2a8-4604-8712-62d1f4a6cc31', '1001', 1, 33000, 33000, 'sdgsd\r\nwetwe\r\nwetwet\r\nwetwt'),
('20200813.85404ff7-3d5c-44ed-a492-09463dda141e', '20200813.917c0dd5-027f-4941-a9bc-3f22824636fb', '1001', 1, 33000, 33000, 'qejrlkqr\r\nqetrqt\r\nqetqet'),
('20200813.d53545b0-58f3-4d5f-9ed4-083794329fb7', '20200813.aa9835ef-7c45-4e2c-8bf1-756598f6c3fa', '1001', 2, 33000, 66000, 'qejrlkqr\r\nqetrqt\r\nqetqet'),
('20200813.17e721b3-4f1b-4ef1-b327-0277ccd61e32', '20200813.aa9835ef-7c45-4e2c-8bf1-756598f6c3fa', '1002', 3, 35000, 105000, 'sdjgtkrwt\r\neqwtet\r\n'),
('20200813.8e95f1c7-26b1-4620-a3fe-2695b14962c8', '20200813.0fe93b7d-b3c1-4a26-b274-f8ffc0c865ef', '1001', 2, 33000, 66000, 'jelj\r\nlqjlt\r\nqjklet\r\nqt\r\nqet'),
('20200813.75bdc538-fad2-4c13-92f4-9ecc3718c057', '20200813.04766fc9-f0dc-49b0-8213-fc443a0fd346', '1001', 1, 33000, 33000, '5000\r\njadkfjk\r\njkjadg\r\njkadjg'),
('20200813.3ab31c96-cba0-4e1a-9423-fd36cf12132b', '20200813.91a5a802-54b2-4ff9-8fc2-8755ff7de4f4', '1001', 6, 33000, 198000, 'ahfja\r\naddgadg\r\nadgad\r\nd\r\nasga;l;l'),
('20200813.16e963ee-0938-4c85-93e9-5ea7d907b93e', '20200813.f4f3a7ad-db95-4def-b56c-da6a43c48c9e', '1001', 1, 33000, 33000, 'kadfl;qk\r\nklkwegt\r\n'),
('20200813.aaf3a219-f42f-4553-80b1-77e062fd0ac2', '20200813.3458ca8e-595c-41b2-8d8a-1061057605dc', '1001', 1, 33000, 33000, 'kadfl;qk\r\nklkwegt\r\n'),
('20200813.49ee3233-f112-4524-a3ff-e5d85f57b924', '20200813.2dd8ba23-a923-47f3-996f-357f683039ae', '1001', 2, 33000, 66000, 'dgeg\r\nwregtwe\r\nwetqet\r\nqetqet'),
('20200813.8479a888-7ba8-40b0-86f3-b535b0ad158a', '20200813.d1f69543-441f-42b8-9673-b7b342b493e2', '1001', 3, 33000, 99000, 'dgeg\r\nwregtwe\r\nwetqet\r\nqetqet'),
('20200824.e6aacd7f-195d-40ed-bd9a-e521c92050dc', '20200824.e4759751-d81d-4d73-935c-e604463f16cb', '1001', 2, 33000, 66000, ''),
('20200824.94867938-73d0-4d82-a837-a0241c2b1b56', '20200824.ca4fb7c9-ff2d-4498-9ce2-352f7e44154e', '1001', 2, 33000, 66000, ''),
('20200824.c8937a92-f3ad-4a1e-9b91-eb30ae337a75', '20200824.d1665531-e87e-4f0f-b566-03def878b855', '1001', 2, 33000, 66000, ''),
('20200824.132bbea8-661a-4ad5-b962-8b37ebfcb8d9', '20200824.45ac7810-07c8-4e6c-b338-c6df28015fbf', '1001', 2, 33000, 66000, ''),
('20200824.8c4fbb08-68d1-452a-babe-34cabbc62e5f', '20200824.f7bde0da-ddea-4035-8e7d-ee93c5b05dce', '1001', 2, 33000, 66000, ''),
('20200824.d594433e-abfa-4c71-9475-033b7670206e', '20200824.8aa21306-b60a-4f81-afbd-1656c3d6ea35', '1001', 2, 33000, 66000, ''),
('20200824.45b0ea72-7e25-44a6-bb21-421865837131', '20200824.a73127e0-0617-4951-9902-d6937751b185', '1001', 2, 33000, 66000, ''),
('20200824.339c27fc-e19b-4faf-b85a-e3e1b7421c4b', '20200824.ae2e2c1c-0494-4b05-adc2-2aa2668fd882', '1001', 1, 33000, 33000, ''),
('20200824.bc58b584-f184-4b65-a7c3-1b26c4bdd99f', '20200824.47114b25-a7a8-49da-9da8-98d24dbb1a30', '1001', 2, 33000, 66000, ''),
('20200824.f55c5bc7-e412-4ceb-a200-f8387f198d5b', '20200824.b82f0f03-9ec5-4af0-a056-13deb45a83d4', '1001', 1, 33000, 33000, ''),
('20200824.578430a2-916e-4994-a215-020741a6f26c', '20200824.34f77fb7-57c1-4ff4-b3b4-ba43292744e1', '1001', 2, 33000, 66000, ''),
('20200824.7bc37e5e-8cd8-4e90-9138-233055f61d98', '20200824.169e243b-9210-42dd-a4d2-981dd3346920', '1001', 2, 33000, 66000, ''),
('20200824.ee3d04c3-0134-44aa-996b-e0d91e8a8d5a', '20200824.5cde153b-4334-427e-b13f-3de46b59da5f', '1001', 2, 33000, 66000, ''),
('20200824.c7e87cd4-8520-4b99-bd96-05f2a835ac5a', '20200824.c7209ffb-c9e9-4e43-9e71-5879c16baac9', '1001', 1, 33000, 33000, ''),
('20200824.75605eeb-0410-4848-8326-85624193b6e7', '20200824.32022c51-eec3-43bb-a17d-2cb025dfc7ca', '1001', 1, 33000, 33000, ''),
('20200904.b05dfb8b-1a7a-479a-b53e-e6eb6bc20792', '20200904.a58308f7-5189-4c12-b8f9-18b1091b382d', '1001', 2, 33000, 66000, ''),
('20200904.ae3b87a9-e9de-4d8a-9219-7db52e42853e', '20200904.be76f9da-446e-471e-8e8e-e83b192e0410', '1001', 1, 33000, 33000, ''),
('20200907.7384c822-5abd-4c98-9734-487136b9b256', '20200907.c307759f-174e-4f7b-9b71-85e65c742723', '1001', 2, 33000, 66000, ''),
('20200907.d1730139-aaa0-4985-a6b6-7f2a06a3197a', '20200907.baf1a7b7-00cb-4f28-8a91-d0b6d0802db0', '1001', 1, 33000, 33000, ''),
('20200907.1bfcf1af-3b9c-4a00-82f6-8766c15d0a22', '20200907.894139a8-4f7b-4fba-81fa-bc61804043ac', '1001', 1, 33000, 33000, ''),
('20200907.cc32836f-a10d-404b-994b-257c47583fb9', '20200907.0a70e8fe-5320-4d9e-a1ee-527e51955243', '1001', 1, 33000, 33000, ''),
('20200907.e7d998b8-5bc7-469a-9837-0d5c43d45cfb', '20200907.e61bbc4f-e79a-42f9-a136-f96b99968bcd', '1001', 1, 33000, 33000, ''),
('20200907.74daf5a1-7ee7-47e2-bfd9-4007bf82f2dd', '20200907.8c75ad7a-6a92-403d-9bfe-c333e278ad2e', '1001', 1, 33000, 33000, ''),
('20200907.2ffef200-d49a-45dd-8cc4-91ed7ab4321e', '20200907.57268db5-e4f4-4e0d-8d16-488dc0b629fe', '1001', 1, 33000, 33000, ''),
('20200907.c8aff9a3-0640-4495-97fa-4ecbcfb8cfd0', '20200907.a0817bfb-df61-4769-8515-ba36a7eec39a', '1001', 1, 33000, 33000, ''),
('20200907.e98236d3-2567-4c5a-a27d-e6c519e38582', '20200907.e6453d35-23a5-44db-9567-c88fc1f41818', '1001', 2, 33000, 66000, '');

-- --------------------------------------------------------

--
-- Table structure for table `uom_box`
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

CREATE TABLE IF NOT EXISTS `uom_material` (
  `ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `SHORT_DESC` varchar(40) DEFAULT NULL,
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

INSERT INTO `uom_material` (`ID`, `DESCRIPTION`, `SHORT_DESC`, `PRICE`, `IS_PRODUCT`, `IS_DELETE`, `IS_ACTIVE`, `CREATED_BY`, `UPDATED_BY`, `CREATED_DATE`, `UPDATED_DATE`) VALUES
('1001', 'MIE GORENG', 'MIE GR (B)', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1002', 'MIE GORENG SEAFOOD', 'MIE GR SF (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1003', 'MIE GORENG UDANG', 'MIE GR UDG (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1004', 'MIE MASAK', 'MIE MSK (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1005', 'MIE MASAK SEAFOOD', 'MIE MSK SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1006', 'MIE CAP CAY', 'MIE CCY (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1007', 'MIE CAP CAY SEAFOOD', 'MIE CCY SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1008', 'IFU MIE', 'IFU MIE (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1009', 'IFU MIE SEAFOOD', 'IFU MIE SF (B)', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1010', 'BIHUN GORENG', 'BHN GR (B)', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1011', 'BIHUN GORENG SEAFOOD', 'BHN GR SF (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1012', 'BIHUN GORENG UDANG', 'BHN GR UDG (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1013', 'BIHUN MASAK', 'BHN MSK (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1014', 'BIHUN MASAK SEAFOOD', 'BHN MSK SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1015', 'BIHUN CAP CAY', 'BHN CCY (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1016', 'BIHUN CAP CAY SEAFOOD', 'BHN CCY SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1017', 'KWETIAU GORENG', 'KWTIAU GR (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1018', 'KWETIAU GORENG SEAFOOD', 'KWTIAU GR SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1019', 'KWETIAU GORENG UDANG', 'KWTIAU GR UDG (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1020', 'KWETIAU MASAK', 'KWTIAU MSK (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1021', 'KWETIAU MASAK SEAFOOD', 'KWTIAU MSK SF (B)', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1022', 'KWETIAU CAP CAY', 'KWTIAU CCY (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1023', 'KWETIAU CAP CAY SEAFOOD', 'KWTIAU CCY SF (B)', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1024', 'KWETIAU SIRAM', 'KWTIAU SRM (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1025', 'NASI PUTIH', 'NS (B)', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1026', 'NASI CAP CAY (CAMPUR)', 'NS CCY (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1027', 'NASI CAP CAY SEAFOOD', 'NS CCY SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1028', 'NASI GORENG', 'NS GRG (B)', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1029', 'NASI GORENG TELOR', 'NS GRG TLR (B)', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1030', 'NASI GORENG IKAN ASIN', 'NS GRG IKN ASN (B)', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1031', 'NASI GORENG SEAFOOD', 'NS GRG SF (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1032', 'NASI GORENG UDANG', 'NS GRG UDG (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1033', 'NASI GORENG SPECIAL', 'NS GRG SPC (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1034', 'PAKET AYAM GR MENTEGA', 'P. AYM GR MTG (B)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1035', 'PAKET AYAM GR TEPUNG', 'P. AYM GR TPG (B)', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1036', 'PAKET AYAM NANKING', 'P AYM NANKING (B)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1037', 'PAKET PUYUNG HAI', 'P PY HAI (B)', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1038', 'PAKET BISTIK AYAM', 'P BSTK AYM (B)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1039', 'PAKET CUMI GR MENTEGA', 'P CM GR MTG (B)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1040', 'PAKET CUMI GR TEPUNG', 'P CM GR TPG (B)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1041', 'PAKET UDANG GR TEPUNG', 'P UDG GR TPG (B)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1042', 'PAKET TAHU CAH AYAM JAMUR', 'P THU C AYM JMR (B)', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1043', 'PAKET SAPO TAHU AYAM', 'P SPO TH AYM (B)', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1044', 'PAKET SAPO TAHU SEAFOOD', 'P SPO TH SF (B)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1045', 'PAKET AYAM KULUYUK', 'P AYM KLYK (B)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1046', 'PAKET UDANG KULUYUK', 'P UDG KLYK (B)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1047', 'CAP CAY GORENG', 'CCY GR (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1048', 'CAP CAY GR SEAFOOD', 'CCY GR SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1049', 'CAP CAY KUAH', 'CCY KUAH (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1050', 'CAP CAY KUAH SEAFOOD', 'CCY KUAH SF (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1051', 'KANGKUNG CAH POLOS', 'KKUNG C PLS (B)', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1052', 'KANGKUNG CAH AYAM', 'KKUNG C AYM (B)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1053', 'KANGKUNG CAH UDANG', 'KKUNG C UDG (B)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1054', 'KANGKUNG CAH CUMI', 'KKUNG C CUMI (B)', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1055', 'TOGE TAHU CAH IKAN ASIN', 'TG THU C IKN ASN (B)', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1056', 'TOGE CAH IKAN ASIN', 'TG C IKN ASN (B)', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1057', 'AYAM KULUYUK', 'AYM KULUYUK (B)', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1058', 'AYAM CAH JAMUR', 'AYM C JMR (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1059', 'SAPO TAHU AYAM', 'SPO THU AYM (B)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1060', 'SAPO TAHU SEAFOOD', 'SPO THU SF (B)', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1061', 'MUN TAHU AYAM', 'MUN THU AYM (B)', 32000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1062', 'MUN TAHU UDANG', 'MUN THU AYM JMR (B)', 34000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1063', 'TAHU CAH AYAM JAMUR', 'THU C AYM JMR (B)', 32000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1064', 'UDANG KULUYUK', 'UDG KLUYUK (B)', 40000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1065', 'AYAM RICA-RICA', 'AYM RCA-RCA (B)', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1066', 'AYAM GORENG MENTEGA', 'AYM GR MTG (B)', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1067', 'AYAM GORENG TEPUNG', 'AYM GR TPG (B)', 39000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1068', 'AYAM NANKING', 'AYM NANKING (B)', 43000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1069', 'AYAM GORENG KERING', 'AYM GR KRING (B)', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1070', 'BISTIK AYAM', 'BSTK AYM (B)', 40000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1071', 'PUYUNG HAI', 'PY HAI (B)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1072', 'UDANG GORENG MENTEGA', 'UDG GR MTG (B)', 44000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1073', 'UDANG GORENG TEPUNG', 'UDG GR TPG (B)', 42000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1074', 'CUMI GORENG TEPUNG', 'CM GR TPG (B)', 41000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1075', 'CUMI GORENG MENTEGA', 'CM GR MTG (B)', 43000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1076', 'BASO KUAH', 'BSO KUAH (B)', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1077', 'BASO PANGSIT KUAH', 'BSO PGST KUAH (B)', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1078', 'PANGSIT KUAH', 'PGST KUAH (B)', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('1079', 'PANGSIT GORENG', 'PGST GR (B)', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2001', 'MIE GORENG', 'MIE GR (S)', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2002', 'MIE GORENG SEAFOOD', 'MIE GR SF (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2003', 'MIE GORENG UDANG', 'MIE GR UDG (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2004', 'MIE MASAK', 'MIE MSK (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2005', 'MIE MASAK SEAFOOD', 'MIE MSK SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2006', 'MIE CAP CAY', 'MIE CCY (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2007', 'MIE CAP CAY SEAFOOD', 'MIE CCY SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2008', 'IFU MIE', 'IFU MIE (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2009', 'IFU MIE SEAFOOD', 'IFU MIE SF (S)', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2010', 'BIHUN GORENG', 'BHN GR (S)', 27000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2011', 'BIHUN GORENG SEAFOOD', 'BHN GR SF (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2012', 'BIHUN GORENG UDANG', 'BHN GR UDG (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2013', 'BIHUN MASAK', 'BHN MSK (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2014', 'BIHUN MASAK SEAFOOD', 'BHN MSK SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2015', 'BIHUN CAP CAY', 'BHN CCY (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2016', 'BIHUN CAP CAY SEAFOOD', 'BHN CCY SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2017', 'KWETIAU GORENG', 'KWTIAU GR (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2018', 'KWETIAU GORENG SEAFOOD', 'KWTIAU GR SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2019', 'KWETIAU GORENG UDANG', 'KWTIAU GR UDG (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2020', 'KWETIAU MASAK', 'KWTIAU MSK (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2021', 'KWETIAU MASAK SEAFOOD', 'KWTIAU MSK SF (S)', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2022', 'KWETIAU CAP CAY', 'KWTIAU CCY (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2023', 'KWETIAU CAP CAY SEAFOOD', 'KWTIAU CCY SF (S)', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2024', 'KWETIAU SIRAM', 'KWTIAU SRM (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2025', 'NASI PUTIH', 'NS (S)', 3000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2026', 'NASI CAP CAY (CAMPUR)', 'NS CCY (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2027', 'NASI CAP CAY SEAFOOD', 'NS CCY SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2028', 'NASI GORENG', 'NS GRG (S)', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2029', 'NASI GORENG TELOR', 'NS GRG TLR (S)', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2030', 'NASI GORENG IKAN ASIN', 'NS GRG IKN ASN (S)', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2031', 'NASI GORENG SEAFOOD', 'NS GRG SF (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2032', 'NASI GORENG UDANG', 'NS GRG UDG (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2033', 'NASI GORENG SPECIAL', 'NS GRG SPC (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2034', 'PAKET AYAM GR MENTEGA', 'P. AYM GR MTG (S)', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2035', 'PAKET AYAM GR TEPUNG', 'P. AYM GR TPG (S)', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2036', 'PAKET AYAM NANKING', 'P AYM NANKING (S)', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2037', 'PAKET PUYUNG HAI', 'P PY HAI (S)', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2038', 'PAKET BISTIK AYAM', 'P BSTK AYM (S)', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2039', 'PAKET CUMI GR MENTEGA', 'P CM GR MTG (S)', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2040', 'PAKET CUMI GR TEPUNG', 'P CM GR TPG (S)', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2041', 'PAKET UDANG GR TEPUNG', 'P UDG GR TPG (S)', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2042', 'PAKET TAHU CAH AYAM JAMUR', 'P THU C AYM JMR (S)', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2043', 'PAKET SAPO TAHU AYAM', 'P SPO TH AYM (S)', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2044', 'PAKET SAPO TAHU SEAFOOD', 'P SPO TH SF (S)', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2045', 'PAKET AYAM KULUYUK', 'P AYM KLYK (S)', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2046', 'PAKET UDANG KULUYUK', 'P UDG KLYK (S)', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2047', 'CAP CAY GORENG', 'CCY GR (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2048', 'CAP CAY GR SEAFOOD', 'CCY GR SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2049', 'CAP CAY KUAH', 'CCY KUAH (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2050', 'CAP CAY KUAH SEAFOOD', 'CCY KUAH SF (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2051', 'KANGKUNG CAH POLOS', 'KKUNG C PLS (S)', 16000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2052', 'KANGKUNG CAH AYAM', 'KKUNG C AYM (S)', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2053', 'KANGKUNG CAH UDANG', 'KKUNG C UDG (S)', 24000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2054', 'KANGKUNG CAH CUMI', 'KKUNG C CUMI (S)', 25000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2055', 'TOGE TAHU CAH IKAN ASIN', 'TG THU C IKN ASN (S)', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2056', 'TOGE CAH IKAN ASIN', 'TG C IKN ASN (S)', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2057', 'AYAM KULUYUK', 'AYM KULUYUK (S)', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2058', 'AYAM CAH JAMUR', 'AYM C JMR (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2059', 'SAPO TAHU AYAM', 'SPO THU AYM (S)', 29000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2060', 'SAPO TAHU SEAFOOD', 'SPO THU SF (S)', 31000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2061', 'MUN TAHU AYAM', 'MUN THU AYM (S)', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2062', 'MUN TAHU UDANG', 'MUN THU AYM JMR (S)', 28000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2063', 'TAHU CAH AYAM JAMUR', 'THU C AYM JMR (S)', 26000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2064', 'UDANG KULUYUK', 'UDG KLUYUK (S)', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2065', 'AYAM RICA-RICA', 'AYM RCA-RCA (S)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2066', 'AYAM GORENG MENTEGA', 'AYM GR MTG (S)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2067', 'AYAM GORENG TEPUNG', 'AYM GR TPG (S)', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2068', 'AYAM NANKING', 'AYM NANKING (S)', 37000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2069', 'AYAM GORENG KERING', 'AYM GR KRING (S)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2070', 'BISTIK AYAM', 'BSTK AYM (S)', 33000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2071', 'PUYUNG HAI', 'PY HAI (S)', 30000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2072', 'UDANG GORENG MENTEGA', 'UDG GR MTG (S)', 38000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2073', 'UDANG GORENG TEPUNG', 'UDG GR TPG (S)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2074', 'CUMI GORENG TEPUNG', 'CM GR TPG (S)', 35000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2075', 'CUMI GORENG MENTEGA', 'CM GR MTG (S)', 36000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2076', 'BASO KUAH', 'BSO KUAH (S)', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2077', 'BASO PANGSIT KUAH', 'BSO PGST KUAH (S)', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2078', 'PANGSIT KUAH', 'PGST KUAH (S)', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('2079', 'PANGSIT GORENG', 'PGST GR (S)', 14000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3001', 'MIE AYAM', 'MIE AYM', 16000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3002', 'MIE AYAM BASO', 'MIE AYM BSO', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3003', 'MIE AYAM PANGSIT', 'MI AYM PGST', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3004', 'MIE AYAM BASO PANGSIT', 'MIE AYM BSO PGST', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3005', 'BIHUN AYAM', 'BHM AYM', 16000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3006', 'BIHUN AYAM BASO', 'BHN AYM BSO', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3007', 'BIHUN AYAM PANGSIT', 'BHN AYM PGST', 20000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3008', 'BIHUN AYAM BASO PANGSIT', 'BHN AYM BSO PGST', 22000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3009', 'KWETIAU AYAM', 'KWET AYM', 17000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3010', 'KWETIAU AYAM BASO', 'KWET AYM BSO', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3011', 'KWETIAU AYAM PANGSIT', 'KWET AYM PGST', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3012', 'KWETIAU BASO PANGSIT', 'KWET AYM BSO PGST', 23000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3013', 'GADO - GADO', 'GADO-GADO', 17000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3014', 'GADO - GADO LONTONG', 'GADO-GADO LTG', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3015', 'GADO - GADO NASI', 'GADO-GADO NS', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3016', 'KAREDOK', 'KAREDOK', 17000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3017', 'KAREDOK LONTONG', 'KAREDOK LTG', 19000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3018', 'KAREDOK NASI', 'KAREDOK NS', 21000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3019', 'KETOPRAK LONTONG', 'KETOPRAK LT', 18000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3020', 'TELOR REBUS', 'TLR RBS', 3500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3021', 'TELOR CEPLOK', 'TLR CPLK', 3500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3022', 'TELOR DADAR', 'TLR DADAR', 4500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('3023', 'PEYEK', 'PEYEK', 3500, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4001', 'TEH ES', 'TEH ES', 2000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4002', 'TEH ES MANIS', 'TEH ES MANIS', 4000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4003', 'TEH MANIS', 'TEH MANIS', 3000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4004', 'TEH HANGAT', 'TEH HANGAT', 1000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4005', 'ES JERUK', 'ES JRK', 9000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4006', 'JERUK HANGAT', 'JRK HANGAT', 9000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4007', 'LEMON TEA', 'LEMON TEA', 9000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4008', 'KOPI', 'KOPI', 3000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4009', 'TEH BOTOL / PUCUK HARUM', 'TEH BTL/PCK', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4010', 'COCA COLA', 'COLA', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4011', 'FANTA /SPRITE', 'FANTA', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4012', 'AIR MINERAL BOTOL', 'AIR MNRL BTL', 5000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4013', 'AIR MINERAL GELAS', 'AQUA GLS', 1000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4014', 'JUS SIRSAK', 'JUS SIRSAK', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4015', 'JUS JAMBU', 'JUS JAMBU', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4016', 'JUS JERUK', 'JUS JERUK', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4017', 'JUS MELON', 'JUS MELON', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4018', 'JUS TOMAT', 'JUS TOMAT', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4019', 'JUS WORTEL', 'JUS WORTEL', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4020', 'JUS MANGGA', 'JUS MANGGA', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00'),
('4021', 'JUS STOWBERI', 'JUS STOWBERI', 10000, 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 10:00:00', '2015-03-18 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `uom_menu`
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
('101060', 'Sales Order', 'Sales Order', '101000', '/user/create-sales-order', 'right', 'Y', '2020-07-14 17:00:00', '2020-07-14 17:00:00', 'system', 'system'),
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
-- Dumping data for table `uom_menu_role`
--

INSERT INTO `uom_menu_role` (`ID`, `UOM_MENU_ID`, `UOM_ROLE_ID`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('10000001', '001000', 'Admin', 'Y', '2020-07-22 17:00:00', '2020-07-23 05:04:42', '', ''),
('10000001200', '002010', 'Admin', 'Y', '2020-07-22 17:00:00', '2020-07-23 05:04:42', '', ''),
('10000002', '001040', 'Admin', 'Y', '2020-07-22 17:00:00', '2020-07-23 05:04:42', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uom_movement_type`
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
('HAN', 'Handphone', 'Y', '2020-07-28 17:00:00', '2012-12-10 09:43:31', 'username', NULL),
('PHO', 'Phone', 'Y', '2020-07-28 17:00:00', '2012-12-10 09:43:13', 'username', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_recipe`
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

-- --------------------------------------------------------

--
-- Table structure for table `uom_uif_role`
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

CREATE TABLE IF NOT EXISTS `uos_business_partner` (
  `ID` varchar(20) NOT NULL,
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='USER ORIENTED SALES_USER INFORMATION FILE';

--
-- Dumping data for table `uos_business_partner`
--

INSERT INTO `uos_business_partner` (`ID`, `PASSWORD`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `BIRTH_DATE`, `ID_CARD_NO`, `EMAIL`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`) VALUES
('001', '', 'BP1', 'BP1', 'Last BP1', '2020-07-01', '', '', 'Y', '2020-07-21 17:00:00', '2020-07-29 03:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `uos_business_partner_addr`
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
-- Dumping data for table `uos_business_partner_addr`
--

INSERT INTO `uos_business_partner_addr` (`ID`, `ADDRESS`, `CITY`, `UOS_BUSINESS_PARTNER_ID`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('XX2', 'BP1 Address', 'City', '001', 'Y', '2020-07-14 17:00:00', '2020-07-29 03:09:59', 'system', 'system');

-- --------------------------------------------------------

--
-- Table structure for table `uos_business_partner_phon`
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
-- Dumping data for table `uos_business_partner_phon`
--

INSERT INTO `uos_business_partner_phon` (`ID`, `Number`, `UOM_PHON_TYP_ID`, `UOS_BUSINESS_PARTNER_ID`, `IS_ACTIVE`, `CREATED_DATE`, `UPDATED_DATE`, `CREATED_BY`, `UPDATED_BY`) VALUES
('001', '081222237187', 'HAN', '001', 'Y', '2020-06-30 17:00:00', '2020-07-29 03:10:51', 'system', 'system');

-- --------------------------------------------------------

--
-- Table structure for table `uos_comp_addr`
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

-- --------------------------------------------------------

--
-- Table structure for table `uos_comp_phon`
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

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif`
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
('x', '$2a$10$sE13DgAMPzcivH/QETOB5.ChBg4WqQxGmHwTu2RT2YPVbBe4ZSObG', 'x', 'x', 'x', '2001-01-01', 'x', 'x', 'Y', '2020-07-09 09:41:09', '2020-07-29 03:40:42'),
('y', '$2a$10$oJ4PaoJK/GCY6CslqhiaiOIms77KBVnbc1WU8WQKaSQ5dLl2fFA6u', 'y', 'y', 'y', '2001-01-01', 'y', 'y', 'Y', '2020-07-09 09:41:19', '2020-07-29 03:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif_addr`
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
