-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 11:53 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iceberg`
--

-- --------------------------------------------------------

--
-- Table structure for table `cof_recording`
--

CREATE TABLE `cof_recording` (
  `ID` varchar(50) NOT NULL,
  `BREEDER` varchar(50) NOT NULL,
  `STRAINGRADE` varchar(50) NOT NULL,
  `OWNER` varchar(50) NOT NULL,
  `MANAGEBY` varchar(50) NOT NULL,
  `ADDR` varchar(50) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `DOCPRICE` decimal(10,0) NOT NULL,
  `OVKPRICE` decimal(10,0) NOT NULL,
  `PRESTARTERPRICE` decimal(10,0) NOT NULL,
  `STARTERPRICE` decimal(10,0) NOT NULL,
  `FINISHERPRICE` decimal(10,0) NOT NULL,
  `QTY` decimal(10,0) NOT NULL,
  `CHICKINDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) NOT NULL,
  `UOMCOMPID` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cof_recording_detail`
--

CREATE TABLE `cof_recording_detail` (
  `ID` varchar(50) NOT NULL,
  `RECORDINGDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BROILERAGE` int(6) NOT NULL,
  `COFRECORDINGID` varchar(50) DEFAULT NULL,
  `UOMMATERIALID` varchar(20) DEFAULT NULL,
  `MORTALITYQTY` int(6) DEFAULT NULL,
  `FEEDCONSUMPTIONQTY` decimal(10,2) DEFAULT NULL,
  `FEEDCONSUMPTIONCUMULATIVEQTY` decimal(10,2) DEFAULT NULL,
  `FEEDCONSUMPTIONRATIO` decimal(10,4) DEFAULT NULL,
  `FEEDCOST` decimal(12,0) DEFAULT NULL,
  `BODYWEIGHT` decimal(10,2) DEFAULT NULL,
  `HARVESTQTY` int(6) DEFAULT NULL,
  `COGSTOREVENUE` decimal(15,2) DEFAULT NULL,
  `COGS` decimal(15,0) DEFAULT NULL,
  `NOTES` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cof_recording_standart`
--

CREATE TABLE `cof_recording_standart` (
  `ID` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(20) DEFAULT NULL,
  `BROILERAGE` int(6) NOT NULL,
  `MORTALITYQTY` int(6) DEFAULT NULL,
  `DEPLETIONPERCENTAGE` decimal(6,4) DEFAULT NULL,
  `FEEDCONSUMPTIONQTY` decimal(10,4) DEFAULT NULL,
  `FEEDCONSUMPTIONCUMULATIVEQTY` decimal(10,4) DEFAULT NULL,
  `FEEDCONSUMPTIONRATIO` decimal(10,4) DEFAULT NULL,
  `BODYWEIGHT` decimal(10,4) DEFAULT NULL,
  `TEMPERATUREMIN` decimal(10,2) DEFAULT NULL,
  `TEMPERATUREMAX` decimal(10,2) DEFAULT NULL,
  `HUMIDITYMIN` decimal(10,2) DEFAULT NULL,
  `HUMIDITYMAX` decimal(10,2) DEFAULT NULL,
  `NOTES` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cof_recording_standart`
--

INSERT INTO `cof_recording_standart` (`ID`, `DESCRIPTION`, `BROILERAGE`, `MORTALITYQTY`, `DEPLETIONPERCENTAGE`, `FEEDCONSUMPTIONQTY`, `FEEDCONSUMPTIONCUMULATIVEQTY`, `FEEDCONSUMPTIONRATIO`, `BODYWEIGHT`, `TEMPERATUREMIN`, `TEMPERATUREMAX`, `HUMIDITYMIN`, `HUMIDITYMAX`, `NOTES`) VALUES
('MB22-01', 'MB22', 1, 0, '0.1000', '0.0140', '0.0140', '0.2503', '56.0000', '31.00', '33.00', '30.00', '50.00', ''),
('MB22-02', 'MB22', 2, 0, '0.2000', '0.0310', '0.0450', '0.4366', '71.0000', '31.00', '33.00', '30.00', '50.00', ''),
('MB22-03', 'MB22', 3, 0, '0.3000', '0.0510', '0.0960', '0.5795', '88.0000', '31.00', '33.00', '30.00', '50.00', ''),
('MB22-04', 'MB22', 4, 0, '0.4000', '0.0745', '0.1705', '0.6898', '108.0000', '31.00', '33.00', '30.00', '50.00', ''),
('MB22-05', 'MB22', 5, 0, '0.5000', '0.1010', '0.2715', '0.7769', '130.0000', '31.00', '33.00', '30.00', '50.00', ''),
('MB22-06', 'MB22', 6, 0, '0.6000', '0.1310', '0.4025', '0.8452', '155.0000', '31.00', '33.00', '30.00', '50.00', ''),
('MB22-07', 'MB22', 7, 0, '0.7000', '0.1650', '0.5675', '0.8992', '183.5000', '31.00', '33.00', '30.00', '50.00', ''),
('MB22-08', 'MB22', 8, 0, '0.7800', '0.2035', '0.7710', '0.9487', '214.5000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-09', 'MB22', 9, 0, '0.8600', '0.2465', '1.0175', '0.9900', '249.0000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-10', 'MB22', 10, 0, '0.9400', '0.2935', '1.3110', '1.0226', '287.0000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-11', 'MB22', 11, 0, '1.0200', '0.3460', '1.6570', '1.0549', '328.0000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-12', 'MB22', 12, 0, '1.1000', '0.4035', '2.0605', '1.0847', '372.0000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-13', 'MB22', 13, 0, '1.1800', '0.4665', '2.5270', '1.1120', '419.5000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-14', 'MB22', 14, 0, '1.2600', '0.5350', '3.0620', '1.1383', '470.0000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-15', 'MB22', 15, 0, '1.3200', '0.6090', '3.6710', '1.1611', '524.5000', '29.00', '31.00', '40.00', '60.00', ''),
('MB22-16', 'MB22', 16, 0, '1.3800', '0.6890', '4.3600', '1.1849', '581.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-17', 'MB22', 17, 0, '1.4400', '0.7750', '5.1350', '1.2090', '641.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-18', 'MB22', 18, 0, '1.5000', '0.8670', '6.0020', '1.2298', '705.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-19', 'MB22', 19, 0, '1.5600', '0.9655', '6.9675', '1.2515', '771.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-20', 'MB22', 20, 0, '1.6200', '1.0700', '8.0375', '1.2731', '840.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-21', 'MB22', 21, 0, '1.6800', '1.1810', '9.2185', '1.2942', '912.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-22', 'MB22', 22, 0, '1.7300', '1.2980', '10.5165', '1.3151', '987.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-23', 'MB22', 23, 0, '1.7800', '1.4215', '11.9380', '1.3366', '1063.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-24', 'MB22', 24, 0, '1.8300', '1.5505', '13.4885', '1.3577', '1142.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-25', 'MB22', 25, 0, '1.8800', '1.6860', '15.1745', '1.3780', '1223.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-26', 'MB22', 26, 0, '1.9300', '1.8275', '17.0020', '1.3993', '1306.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-27', 'MB22', 27, 0, '1.9800', '1.9750', '18.9770', '1.4204', '1390.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-28', 'MB22', 28, 0, '2.0300', '2.1280', '21.1050', '1.4412', '1476.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-29', 'MB22', 29, 0, '2.0800', '2.2865', '23.3915', '1.4620', '1564.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-30', 'MB22', 30, 0, '2.1300', '2.4510', '25.8425', '1.4828', '1653.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-31', 'MB22', 31, 0, '2.1800', '2.6210', '28.4635', '1.5042', '1742.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-32', 'MB22', 32, 0, '2.2300', '2.7960', '31.2595', '1.5254', '1833.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-33', 'MB22', 33, 0, '2.2800', '2.9755', '34.2350', '1.5457', '1925.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-34', 'MB22', 34, 0, '2.3300', '3.1605', '37.3955', '1.5673', '2016.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-35', 'MB22', 35, 0, '2.3800', '3.3500', '40.7455', '1.5881', '2109.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-36', 'MB22', 36, 0, '2.4300', '3.5435', '44.2890', '1.6089', '2202.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-37', 'MB22', 37, 0, '2.4800', '3.7415', '48.0305', '1.6299', '2295.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-38', 'MB22', 38, 0, '2.5300', '3.9440', '51.9745', '1.6512', '2388.5000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-39', 'MB22', 39, 0, '2.5800', '4.1500', '56.1245', '1.6720', '2482.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-40', 'MB22', 40, 0, '2.6300', '4.3595', '60.4840', '1.6930', '2575.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-41', 'MB22', 41, 0, '2.6800', '4.5730', '65.0570', '1.7140', '2668.0000', '26.00', '29.00', '40.00', '60.00', ''),
('MB22-42', 'MB22', 42, 0, '2.7300', '4.7895', '69.8465', '1.7350', '2760.5000', '26.00', '29.00', '40.00', '60.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `cos_sales`
--

CREATE TABLE `cos_sales` (
  `ID` varchar(50) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `TOTALPRICE` decimal(10,0) NOT NULL,
  `DELIVEREDBY` varchar(20) NOT NULL,
  `PAYMENTRECEIVEDBY` varchar(20) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) NOT NULL,
  `UOMCOMPID` varchar(20) NOT NULL,
  `UOSCIFCUSTOMERID` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cos_sales_box`
--

CREATE TABLE `cos_sales_box` (
  `ID` varchar(50) NOT NULL,
  `COSSALESID` varchar(50) NOT NULL,
  `UOMBOXID` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cos_sales_detail`
--

CREATE TABLE `cos_sales_detail` (
  `ID` varchar(50) NOT NULL,
  `COSSALESID` varchar(50) NOT NULL,
  `UOMMATERIALID` varchar(20) NOT NULL,
  `QTY` int(6) NOT NULL,
  `PRICE` decimal(10,0) NOT NULL,
  `SUBTOTALPRICE` decimal(12,0) NOT NULL,
  `NOTES` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom_box`
--

CREATE TABLE `uom_box` (
  `ID` varchar(3) NOT NULL,
  `DETAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(15) DEFAULT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_box`
--

INSERT INTO `uom_box` (`ID`, `DETAIL`, `PASSWORD`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
('001', 'BOX 001', NULL, 'Y', '0000-00-00 00:00:00', '2020-04-11 04:09:17', 'admin', NULL),
('002', 'BOX 002', '281207', 'Y', '0000-00-00 00:00:00', '2020-04-11 04:09:17', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_comp`
--

CREATE TABLE `uom_comp` (
  `ID` varchar(5) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `TAXNUMBER` varchar(50) DEFAULT NULL,
  `DETAIL` varchar(50) DEFAULT NULL,
  `ISACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDDATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) DEFAULT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_comp`
--

INSERT INTO `uom_comp` (`ID`, `NAME`, `TAXNUMBER`, `DETAIL`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
('BKM', 'BAKMI MAMPANG', NULL, NULL, NULL, '2013-09-17 07:19:38', '2013-09-17 07:19:38', NULL, NULL),
('DEL', 'DELTA MAS', NULL, NULL, NULL, '2013-09-17 07:19:33', '2013-09-17 07:19:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_material`
--

CREATE TABLE `uom_material` (
  `ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `SHORT_DESC` varchar(40) DEFAULT NULL,
  `PRICE` decimal(20,0) DEFAULT NULL,
  `ISPRODUCT` varchar(1) DEFAULT NULL,
  `ISDELETE` varchar(1) DEFAULT NULL,
  `ISACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDBY` varchar(20) DEFAULT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL,
  `CREATEDDATE` timestamp NULL DEFAULT NULL,
  `UPDATEDDATE` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_material`
--

INSERT INTO `uom_material` (`ID`, `DESCRIPTION`, `SHORT_DESC`, `PRICE`, `ISPRODUCT`, `ISDELETE`, `ISACTIVE`, `CREATEDBY`, `UPDATEDBY`, `CREATEDDATE`, `UPDATEDDATE`) VALUES
('1001', 'MIE GORENG', 'MIE GR (B)', '33000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1002', 'MIE GORENG SEAFOOD', 'MIE GR SF (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1003', 'MIE GORENG UDANG', 'MIE GR UDG (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1004', 'MIE MASAK', 'MIE MSK (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1005', 'MIE MASAK SEAFOOD', 'MIE MSK SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1006', 'MIE CAP CAY', 'MIE CCY (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1007', 'MIE CAP CAY SEAFOOD', 'MIE CCY SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1008', 'IFU MIE', 'IFU MIE (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1009', 'IFU MIE SEAFOOD', 'IFU MIE SF (B)', '37000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1010', 'BIHUN GORENG', 'BHN GR (B)', '33000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1011', 'BIHUN GORENG SEAFOOD', 'BHN GR SF (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1012', 'BIHUN GORENG UDANG', 'BHN GR UDG (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1013', 'BIHUN MASAK', 'BHN MSK (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1014', 'BIHUN MASAK SEAFOOD', 'BHN MSK SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1015', 'BIHUN CAP CAY', 'BHN CCY (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1016', 'BIHUN CAP CAY SEAFOOD', 'BHN CCY SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1017', 'KWETIAU GORENG', 'KWTIAU GR (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1018', 'KWETIAU GORENG SEAFOOD', 'KWTIAU GR SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1019', 'KWETIAU GORENG UDANG', 'KWTIAU GR UDG (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1020', 'KWETIAU MASAK', 'KWTIAU MSK (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1021', 'KWETIAU MASAK SEAFOOD', 'KWTIAU MSK SF (B)', '37000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1022', 'KWETIAU CAP CAY', 'KWTIAU CCY (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1023', 'KWETIAU CAP CAY SEAFOOD', 'KWTIAU CCY SF (B)', '37000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1024', 'KWETIAU SIRAM', 'KWTIAU SRM (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1025', 'NASI PUTIH', 'NS (B)', '5000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1026', 'NASI CAP CAY (CAMPUR)', 'NS CCY (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1027', 'NASI CAP CAY SEAFOOD', 'NS CCY SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1028', 'NASI GORENG', 'NS GRG (B)', '31000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1029', 'NASI GORENG TELOR', 'NS GRG TLR (B)', '24000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1030', 'NASI GORENG IKAN ASIN', 'NS GRG IKN ASN (B)', '26000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1031', 'NASI GORENG SEAFOOD', 'NS GRG SF (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1032', 'NASI GORENG UDANG', 'NS GRG UDG (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1033', 'NASI GORENG SPECIAL', 'NS GRG SPC (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1034', 'PAKET AYAM GR MENTEGA', 'P. AYM GR MTG (B)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1035', 'PAKET AYAM GR TEPUNG', 'P. AYM GR TPG (B)', '27000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1036', 'PAKET AYAM NANKING', 'P AYM NANKING (B)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1037', 'PAKET PUYUNG HAI', 'P PY HAI (B)', '26000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1038', 'PAKET BISTIK AYAM', 'P BSTK AYM (B)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1039', 'PAKET CUMI GR MENTEGA', 'P CM GR MTG (B)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1040', 'PAKET CUMI GR TEPUNG', 'P CM GR TPG (B)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1041', 'PAKET UDANG GR TEPUNG', 'P UDG GR TPG (B)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1042', 'PAKET TAHU CAH AYAM JAMUR', 'P THU C AYM JMR (B)', '26000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1043', 'PAKET SAPO TAHU AYAM', 'P SPO TH AYM (B)', '27000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1044', 'PAKET SAPO TAHU SEAFOOD', 'P SPO TH SF (B)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1045', 'PAKET AYAM KULUYUK', 'P AYM KLYK (B)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1046', 'PAKET UDANG KULUYUK', 'P UDG KLYK (B)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1047', 'CAP CAY GORENG', 'CCY GR (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1048', 'CAP CAY GR SEAFOOD', 'CCY GR SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1049', 'CAP CAY KUAH', 'CCY KUAH (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1050', 'CAP CAY KUAH SEAFOOD', 'CCY KUAH SF (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1051', 'KANGKUNG CAH POLOS', 'KKUNG C PLS (B)', '20000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1052', 'KANGKUNG CAH AYAM', 'KKUNG C AYM (B)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1053', 'KANGKUNG CAH UDANG', 'KKUNG C UDG (B)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1054', 'KANGKUNG CAH CUMI', 'KKUNG C CUMI (B)', '31000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1055', 'TOGE TAHU CAH IKAN ASIN', 'TG THU C IKN ASN (B)', '27000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1056', 'TOGE CAH IKAN ASIN', 'TG C IKN ASN (B)', '25000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1057', 'AYAM KULUYUK', 'AYM KULUYUK (B)', '37000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1058', 'AYAM CAH JAMUR', 'AYM C JMR (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1059', 'SAPO TAHU AYAM', 'SPO THU AYM (B)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1060', 'SAPO TAHU SEAFOOD', 'SPO THU SF (B)', '37000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1061', 'MUN TAHU AYAM', 'MUN THU AYM (B)', '32000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1062', 'MUN TAHU UDANG', 'MUN THU AYM JMR (B)', '34000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1063', 'TAHU CAH AYAM JAMUR', 'THU C AYM JMR (B)', '32000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1064', 'UDANG KULUYUK', 'UDG KLUYUK (B)', '40000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1065', 'AYAM RICA-RICA', 'AYM RCA-RCA (B)', '41000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1066', 'AYAM GORENG MENTEGA', 'AYM GR MTG (B)', '41000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1067', 'AYAM GORENG TEPUNG', 'AYM GR TPG (B)', '39000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1068', 'AYAM NANKING', 'AYM NANKING (B)', '43000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1069', 'AYAM GORENG KERING', 'AYM GR KRING (B)', '41000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1070', 'BISTIK AYAM', 'BSTK AYM (B)', '40000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1071', 'PUYUNG HAI', 'PY HAI (B)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1072', 'UDANG GORENG MENTEGA', 'UDG GR MTG (B)', '44000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1073', 'UDANG GORENG TEPUNG', 'UDG GR TPG (B)', '42000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1074', 'CUMI GORENG TEPUNG', 'CM GR TPG (B)', '41000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1075', 'CUMI GORENG MENTEGA', 'CM GR MTG (B)', '43000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1076', 'BASO KUAH', 'BSO KUAH (B)', '19000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1077', 'BASO PANGSIT KUAH', 'BSO PGST KUAH (B)', '19000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1078', 'PANGSIT KUAH', 'PGST KUAH (B)', '19000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('1079', 'PANGSIT GORENG', 'PGST GR (B)', '19000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2001', 'MIE GORENG', 'MIE GR (S)', '27000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2002', 'MIE GORENG SEAFOOD', 'MIE GR SF (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2003', 'MIE GORENG UDANG', 'MIE GR UDG (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2004', 'MIE MASAK', 'MIE MSK (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2005', 'MIE MASAK SEAFOOD', 'MIE MSK SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2006', 'MIE CAP CAY', 'MIE CCY (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2007', 'MIE CAP CAY SEAFOOD', 'MIE CCY SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2008', 'IFU MIE', 'IFU MIE (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2009', 'IFU MIE SEAFOOD', 'IFU MIE SF (S)', '31000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2010', 'BIHUN GORENG', 'BHN GR (S)', '27000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2011', 'BIHUN GORENG SEAFOOD', 'BHN GR SF (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2012', 'BIHUN GORENG UDANG', 'BHN GR UDG (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2013', 'BIHUN MASAK', 'BHN MSK (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2014', 'BIHUN MASAK SEAFOOD', 'BHN MSK SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2015', 'BIHUN CAP CAY', 'BHN CCY (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2016', 'BIHUN CAP CAY SEAFOOD', 'BHN CCY SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2017', 'KWETIAU GORENG', 'KWTIAU GR (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2018', 'KWETIAU GORENG SEAFOOD', 'KWTIAU GR SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2019', 'KWETIAU GORENG UDANG', 'KWTIAU GR UDG (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2020', 'KWETIAU MASAK', 'KWTIAU MSK (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2021', 'KWETIAU MASAK SEAFOOD', 'KWTIAU MSK SF (S)', '31000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2022', 'KWETIAU CAP CAY', 'KWTIAU CCY (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2023', 'KWETIAU CAP CAY SEAFOOD', 'KWTIAU CCY SF (S)', '31000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2024', 'KWETIAU SIRAM', 'KWTIAU SRM (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2025', 'NASI PUTIH', 'NS (S)', '3000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2026', 'NASI CAP CAY (CAMPUR)', 'NS CCY (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2027', 'NASI CAP CAY SEAFOOD', 'NS CCY SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2028', 'NASI GORENG', 'NS GRG (S)', '25000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2029', 'NASI GORENG TELOR', 'NS GRG TLR (S)', '20000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2030', 'NASI GORENG IKAN ASIN', 'NS GRG IKN ASN (S)', '21000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2031', 'NASI GORENG SEAFOOD', 'NS GRG SF (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2032', 'NASI GORENG UDANG', 'NS GRG UDG (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2033', 'NASI GORENG SPECIAL', 'NS GRG SPC (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2034', 'PAKET AYAM GR MENTEGA', 'P. AYM GR MTG (S)', '24000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2035', 'PAKET AYAM GR TEPUNG', 'P. AYM GR TPG (S)', '23000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2036', 'PAKET AYAM NANKING', 'P AYM NANKING (S)', '24000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2037', 'PAKET PUYUNG HAI', 'P PY HAI (S)', '22000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2038', 'PAKET BISTIK AYAM', 'P BSTK AYM (S)', '24000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2039', 'PAKET CUMI GR MENTEGA', 'P CM GR MTG (S)', '25000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2040', 'PAKET CUMI GR TEPUNG', 'P CM GR TPG (S)', '24000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2041', 'PAKET UDANG GR TEPUNG', 'P UDG GR TPG (S)', '25000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2042', 'PAKET TAHU CAH AYAM JAMUR', 'P THU C AYM JMR (S)', '22000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2043', 'PAKET SAPO TAHU AYAM', 'P SPO TH AYM (S)', '23000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2044', 'PAKET SAPO TAHU SEAFOOD', 'P SPO TH SF (S)', '26000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2045', 'PAKET AYAM KULUYUK', 'P AYM KLYK (S)', '24000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2046', 'PAKET UDANG KULUYUK', 'P UDG KLYK (S)', '25000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2047', 'CAP CAY GORENG', 'CCY GR (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2048', 'CAP CAY GR SEAFOOD', 'CCY GR SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2049', 'CAP CAY KUAH', 'CCY KUAH (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2050', 'CAP CAY KUAH SEAFOOD', 'CCY KUAH SF (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2051', 'KANGKUNG CAH POLOS', 'KKUNG C PLS (S)', '16000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2052', 'KANGKUNG CAH AYAM', 'KKUNG C AYM (S)', '23000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2053', 'KANGKUNG CAH UDANG', 'KKUNG C UDG (S)', '24000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2054', 'KANGKUNG CAH CUMI', 'KKUNG C CUMI (S)', '25000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2055', 'TOGE TAHU CAH IKAN ASIN', 'TG THU C IKN ASN (S)', '23000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2056', 'TOGE CAH IKAN ASIN', 'TG C IKN ASN (S)', '21000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2057', 'AYAM KULUYUK', 'AYM KULUYUK (S)', '31000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2058', 'AYAM CAH JAMUR', 'AYM C JMR (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2059', 'SAPO TAHU AYAM', 'SPO THU AYM (S)', '29000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2060', 'SAPO TAHU SEAFOOD', 'SPO THU SF (S)', '31000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2061', 'MUN TAHU AYAM', 'MUN THU AYM (S)', '26000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2062', 'MUN TAHU UDANG', 'MUN THU AYM JMR (S)', '28000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2063', 'TAHU CAH AYAM JAMUR', 'THU C AYM JMR (S)', '26000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2064', 'UDANG KULUYUK', 'UDG KLUYUK (S)', '33000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2065', 'AYAM RICA-RICA', 'AYM RCA-RCA (S)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2066', 'AYAM GORENG MENTEGA', 'AYM GR MTG (S)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2067', 'AYAM GORENG TEPUNG', 'AYM GR TPG (S)', '33000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2068', 'AYAM NANKING', 'AYM NANKING (S)', '37000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2069', 'AYAM GORENG KERING', 'AYM GR KRING (S)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2070', 'BISTIK AYAM', 'BSTK AYM (S)', '33000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2071', 'PUYUNG HAI', 'PY HAI (S)', '30000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2072', 'UDANG GORENG MENTEGA', 'UDG GR MTG (S)', '38000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2073', 'UDANG GORENG TEPUNG', 'UDG GR TPG (S)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2074', 'CUMI GORENG TEPUNG', 'CM GR TPG (S)', '35000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2075', 'CUMI GORENG MENTEGA', 'CM GR MTG (S)', '36000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2076', 'BASO KUAH', 'BSO KUAH (S)', '14000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2077', 'BASO PANGSIT KUAH', 'BSO PGST KUAH (S)', '14000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2078', 'PANGSIT KUAH', 'PGST KUAH (S)', '14000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('2079', 'PANGSIT GORENG', 'PGST GR (S)', '14000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3001', 'MIE AYAM', 'MIE AYM', '16000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3002', 'MIE AYAM BASO', 'MIE AYM BSO', '20000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3003', 'MIE AYAM PANGSIT', 'MI AYM PGST', '20000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3004', 'MIE AYAM BASO PANGSIT', 'MIE AYM BSO PGST', '22000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3005', 'BIHUN AYAM', 'BHM AYM', '16000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3006', 'BIHUN AYAM BASO', 'BHN AYM BSO', '20000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3007', 'BIHUN AYAM PANGSIT', 'BHN AYM PGST', '20000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3008', 'BIHUN AYAM BASO PANGSIT', 'BHN AYM BSO PGST', '22000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3009', 'KWETIAU AYAM', 'KWET AYM', '17000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3010', 'KWETIAU AYAM BASO', 'KWET AYM BSO', '21000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3011', 'KWETIAU AYAM PANGSIT', 'KWET AYM PGST', '21000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3012', 'KWETIAU BASO PANGSIT', 'KWET AYM BSO PGST', '23000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3013', 'GADO - GADO', 'GADO-GADO', '17000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3014', 'GADO - GADO LONTONG', 'GADO-GADO LTG', '19000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3015', 'GADO - GADO NASI', 'GADO-GADO NS', '21000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3016', 'KAREDOK', 'KAREDOK', '17000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3017', 'KAREDOK LONTONG', 'KAREDOK LTG', '19000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3018', 'KAREDOK NASI', 'KAREDOK NS', '21000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3019', 'KETOPRAK LONTONG', 'KETOPRAK LT', '18000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3020', 'TELOR REBUS', 'TLR RBS', '3500', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3021', 'TELOR CEPLOK', 'TLR CPLK', '3500', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3022', 'TELOR DADAR', 'TLR DADAR', '4500', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('3023', 'PEYEK', 'PEYEK', '3500', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4001', 'TEH ES', 'TEH ES', '2000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4002', 'TEH ES MANIS', 'TEH ES MANIS', '4000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4003', 'TEH MANIS', 'TEH MANIS', '3000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4004', 'TEH HANGAT', 'TEH HANGAT', '1000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4005', 'ES JERUK', 'ES JRK', '9000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4006', 'JERUK HANGAT', 'JRK HANGAT', '9000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4007', 'LEMON TEA', 'LEMON TEA', '9000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4008', 'KOPI', 'KOPI', '3000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4009', 'TEH BOTOL / PUCUK HARUM', 'TEH BTL/PCK', '5000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4010', 'COCA COLA', 'COLA', '5000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4011', 'FANTA /SPRITE', 'FANTA', '5000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4012', 'AIR MINERAL BOTOL', 'AIR MNRL BTL', '5000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4013', 'AIR MINERAL GELAS', 'AQUA GLS', '1000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4014', 'JUS SIRSAK', 'JUS SIRSAK', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4015', 'JUS JAMBU', 'JUS JAMBU', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4016', 'JUS JERUK', 'JUS JERUK', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4017', 'JUS MELON', 'JUS MELON', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4018', 'JUS TOMAT', 'JUS TOMAT', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4019', 'JUS WORTEL', 'JUS WORTEL', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4020', 'JUS MANGGA', 'JUS MANGGA', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00'),
('4021', 'JUS STOWBERI', 'JUS STOWBERI', '10000', 'Y', 'N', 'Y', 'System', 'System', '2015-03-18 17:00:00', '2015-03-18 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `uom_menu`
--

CREATE TABLE `uom_menu` (
  `ID` varchar(25) NOT NULL,
  `DETAIL` varchar(50) NOT NULL,
  `LABEL` varchar(25) NOT NULL,
  `PARENTID` varchar(25) DEFAULT NULL,
  `URLADDR` varchar(255) DEFAULT NULL,
  `TARGET` varchar(25) NOT NULL DEFAULT 'right',
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(25) NOT NULL,
  `UPDATEDBY` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_menu`
--

INSERT INTO `uom_menu` (`ID`, `DETAIL`, `LABEL`, `PARENTID`, `URLADDR`, `TARGET`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
('1', 'Penjualan', 'Penjualan', '0', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:18:29', 'System', 'System'),
('11', 'Penjualan', 'Penjualan', '1', '/forms/createsales.jsp', 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:20:01', 'System', 'System'),
('12', 'Daftar Penjualan', 'Daftar Penjualan', '1', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2015-03-12 08:34:23', 'System', 'System'),
('2', 'Pembelian', 'Pembelian', '0', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:18:49', 'System', 'System'),
('21', 'Buat Pembelian', 'Buat Pembelian', '2', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:21:09', 'System', 'System'),
('22', 'Daftar Pembelian', 'Daftar Pembelian', '2', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:21:27', 'System', 'System'),
('3', 'Maintenance', 'Maintenance', '0', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:19:29', 'System', 'System'),
('31', 'Material', 'Material', '3', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:23:26', 'System', 'System'),
('4', 'Informasi Akun', 'Informasi Akun', '0', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:19:29', 'System', 'System'),
('41', 'Perubahan Password', 'Perubahan Password', '4', NULL, 'right', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:23:26', 'System', 'System'),
('42', 'Logout', 'Logout', '4', '/j_spring_security_logout', '_top', 'Y', '2014-04-03 05:18:29', '2014-04-03 05:23:26', 'System', 'System');

-- --------------------------------------------------------

--
-- Table structure for table `uom_menu_role`
--

CREATE TABLE `uom_menu_role` (
  `ID` varchar(20) NOT NULL,
  `UOMMENUID` varchar(25) NOT NULL,
  `UOMROLEID` varchar(25) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_menu_role`
--

INSERT INTO `uom_menu_role` (`ID`, `UOMMENUID`, `UOMROLEID`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
('1', '1', 'ROLE_USER', 'Y', '0000-00-00 00:00:00', '2014-04-03 05:25:49', 'System', 'System'),
('11', '11', 'ROLE_USER', 'Y', '0000-00-00 00:00:00', '2014-04-03 05:26:38', 'System', 'System'),
('2', '2', 'ROLE_USER', 'Y', '0000-00-00 00:00:00', '2014-04-03 05:26:00', 'System', 'System'),
('21', '21', 'ROLE_USER', 'Y', '0000-00-00 00:00:00', '2014-04-03 05:27:14', 'System', 'System'),
('22', '22', 'ROLE_USER', 'Y', '0000-00-00 00:00:00', '2014-04-03 05:27:39', 'System', 'System'),
('4', '4', 'ROLE_USER', 'Y', '0000-00-00 00:00:00', '2014-04-03 05:26:26', 'System', 'System'),
('41', '41', 'ROLE_USER', 'Y', '0000-00-00 00:00:00', '2014-04-03 05:28:06', 'System', 'System');

-- --------------------------------------------------------

--
-- Table structure for table `uom_phon_typ`
--

CREATE TABLE `uom_phon_typ` (
  `ID` varchar(3) NOT NULL,
  `DETAIL` varchar(50) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_phon_typ`
--

INSERT INTO `uom_phon_typ` (`ID`, `DETAIL`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
('HAN', 'Handphone', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:43:31', 'username', NULL),
('PHO', 'Phone', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:43:13', 'username', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_recipe`
--

CREATE TABLE `uom_recipe` (
  `ID` varchar(20) NOT NULL,
  `UOMMATERIALID` varchar(20) DEFAULT NULL,
  `ISSUB` varchar(1) DEFAULT NULL,
  `ACTUALPRODUCTCOST` decimal(12,0) DEFAULT NULL,
  `SELLINGPRICE` decimal(12,0) DEFAULT NULL,
  `GROSSMARGIN` decimal(12,0) DEFAULT NULL,
  `COSTPERCENT` decimal(3,0) DEFAULT NULL,
  `GROSSPROFITPERCENT` decimal(3,0) DEFAULT NULL,
  `SELLINGPRICEINCLUDETAX` decimal(12,0) DEFAULT NULL,
  `CREATEDBY` varchar(20) DEFAULT NULL,
  `CREATEDDATE` timestamp NULL DEFAULT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL,
  `UPDATEDDATE` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom_role`
--

CREATE TABLE `uom_role` (
  `ID` varchar(25) NOT NULL,
  `DETAIL` varchar(50) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_role`
--

INSERT INTO `uom_role` (`ID`, `DETAIL`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
('Admin', 'Admin', 'Y', '2012-12-10 09:41:10', '2012-12-10 09:41:10', 'username', NULL),
('PURCS', 'Purchasing', 'Y', '2012-12-10 09:41:37', '2012-12-10 09:41:37', 'username', NULL),
('ROLE_USER', 'ROLE_USER', 'Y', '2013-10-03 05:56:44', '2013-10-03 05:56:44', 'username', NULL),
('SALES', 'S', 'Y', '0000-00-00 00:00:00', '2012-12-10 09:42:20', 'username', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_uif_comp`
--

CREATE TABLE `uom_uif_comp` (
  `ID` varchar(50) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `UOMCOMPID` varchar(50) NOT NULL,
  `ISACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDDATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) DEFAULT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uom_uif_role`
--

CREATE TABLE `uom_uif_role` (
  `ID` varchar(50) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `UOMROLEID` varchar(25) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom_uif_role`
--

INSERT INTO `uom_uif_role` (`ID`, `UOSUIFUSERNAME`, `UOMROLEID`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
('001', 'user002', 'ROLE_USER', 'y', '2014-10-08 17:59:36', '2013-10-03 06:01:26', 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uos_app`
--

CREATE TABLE `uos_app` (
  `ID` varchar(50) NOT NULL,
  `ISCHECKTERMCONDITION` varchar(1) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_cif`
--

CREATE TABLE `uos_cif` (
  `CUSTOMERID` varchar(20) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `MIDDLENAME` varchar(50) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `IDCARDNO` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='USER ORIENTED SALES_USER INFORMATION FILE';

-- --------------------------------------------------------

--
-- Table structure for table `uos_cif_addr`
--

CREATE TABLE `uos_cif_addr` (
  `ID` varchar(50) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `UOSCIFCUSTOMERID` varchar(20) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_cif_phon`
--

CREATE TABLE `uos_cif_phon` (
  `ID` varchar(50) NOT NULL,
  `Number` varchar(20) NOT NULL,
  `UOMPHONTYPID` varchar(3) NOT NULL,
  `UOSCIFCUSTOMERID` varchar(20) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_comp_addr`
--

CREATE TABLE `uos_comp_addr` (
  `ID` varchar(50) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `ISTAX` varchar(1) DEFAULT NULL,
  `ISACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDDATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) DEFAULT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL,
  `UOMCOMPID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_comp_phon`
--

CREATE TABLE `uos_comp_phon` (
  `ID` varchar(50) NOT NULL,
  `Number` varchar(20) DEFAULT NULL,
  `ISTAX` varchar(1) DEFAULT NULL,
  `ISACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDDATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) DEFAULT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL,
  `UOMCOMPID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif`
--

CREATE TABLE `uos_uif` (
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `MIDDLENAME` varchar(50) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `IDCARDNO` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='USER ORIENTED SALES_USER INFORMATION FILE';

--
-- Dumping data for table `uos_uif`
--

INSERT INTO `uos_uif` (`USERNAME`, `PASSWORD`, `FIRSTNAME`, `MIDDLENAME`, `LASTNAME`, `BIRTHDATE`, `IDCARDNO`, `EMAIL`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`) VALUES
('user001', '	', 'Dwi', '', 'Septianto', '1987-09-19', '0010', 'private_mail777@yahoo.com', 'Y', '2013-09-17 07:42:02', '2015-01-16 05:06:11'),
('user002', 'password', 'Septianto', '', 'Rio', '1986-09-19', '0011', 'private@yahoo.com', 'Y', '2014-09-25 17:59:36', '2014-09-26 11:01:05'),
('username', 'password', 'Rio', 'Dwi', 'Septianto', '1987-09-19', '0009', 'septiantord@gmail.com', 'Y', '2013-09-17 07:42:02', '2015-01-16 05:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif_addr`
--

CREATE TABLE `uos_uif_addr` (
  `ID` varchar(50) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uos_uif_addr`
--

INSERT INTO `uos_uif_addr` (`ID`, `ADDRESS`, `CITY`, `UOSUIFUSERNAME`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
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

CREATE TABLE `uos_uif_exper` (
  `ID` varchar(50) NOT NULL,
  `EXPERIENCE` varchar(255) NOT NULL,
  `YEAR` varchar(4) NOT NULL,
  `UOSUIFUSERNAME` varchar(50) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uos_uif_phon`
--

CREATE TABLE `uos_uif_phon` (
  `ID` varchar(50) NOT NULL,
  `Number` varchar(20) NOT NULL,
  `UOMPHONTYPID` varchar(3) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uos_uif_phon`
--

INSERT INTO `uos_uif_phon` (`ID`, `Number`, `UOMPHONTYPID`, `UOSUIFUSERNAME`, `ISACTIVE`, `CREATEDDATE`, `UPDATEDDATE`, `CREATEDBY`, `UPDATEDBY`) VALUES
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

CREATE TABLE `uos_uif_phot` (
  `ID` varchar(50) NOT NULL,
  `PHOTOURL` varchar(255) NOT NULL,
  `ISCOVER` varchar(1) NOT NULL,
  `UOSUIFUSERNAME` varchar(20) NOT NULL,
  `ISACTIVE` varchar(1) NOT NULL,
  `CREATEDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATEDDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATEDBY` varchar(20) NOT NULL,
  `UPDATEDBY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cof_recording_standart`
--
ALTER TABLE `cof_recording_standart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_box`
--
ALTER TABLE `uom_box`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_comp`
--
ALTER TABLE `uom_comp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_material`
--
ALTER TABLE `uom_material`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_menu`
--
ALTER TABLE `uom_menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_menu_role`
--
ALTER TABLE `uom_menu_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_uom_menu_role_uommenuid` (`UOMMENUID`),
  ADD KEY `FK_uom_menu_role_uomroleid` (`UOMROLEID`);

--
-- Indexes for table `uom_phon_typ`
--
ALTER TABLE `uom_phon_typ`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_recipe`
--
ALTER TABLE `uom_recipe`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_role`
--
ALTER TABLE `uom_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uom_uif_comp`
--
ALTER TABLE `uom_uif_comp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_uom_user_comp_uomcompid` (`UOMCOMPID`),
  ADD KEY `FK_uom_user_comp_uosuifusername` (`UOSUIFUSERNAME`);

--
-- Indexes for table `uom_uif_role`
--
ALTER TABLE `uom_uif_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_uom_user_role_uomroleid` (`UOMROLEID`),
  ADD KEY `FK_uom_user_role_uosuifusername` (`UOSUIFUSERNAME`);

--
-- Indexes for table `uos_app`
--
ALTER TABLE `uos_app`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uos_cif`
--
ALTER TABLE `uos_cif`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `uos_cif_addr`
--
ALTER TABLE `uos_cif_addr`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_uos_cif_addr_uoscifusername` (`UOSCIFCUSTOMERID`);

--
-- Indexes for table `uos_cif_phon`
--
ALTER TABLE `uos_cif_phon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UOMPHONTYPID` (`UOMPHONTYPID`),
  ADD KEY `FK_uos_cif_phon_uoscifusername` (`UOSCIFCUSTOMERID`);

--
-- Indexes for table `uos_comp_addr`
--
ALTER TABLE `uos_comp_addr`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_uos_comp_addr_uomcompid` (`UOMCOMPID`);

--
-- Indexes for table `uos_comp_phon`
--
ALTER TABLE `uos_comp_phon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_uos_comp_phon_uomcompid` (`UOMCOMPID`);

--
-- Indexes for table `uos_uif`
--
ALTER TABLE `uos_uif`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `uos_uif_addr`
--
ALTER TABLE `uos_uif_addr`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_uos_uif_addr_uosuifusername` (`UOSUIFUSERNAME`);

--
-- Indexes for table `uos_uif_exper`
--
ALTER TABLE `uos_uif_exper`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uos_uif_phon`
--
ALTER TABLE `uos_uif_phon`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UOMPHONTYPID` (`UOMPHONTYPID`),
  ADD KEY `FK_uos_uif_phon_uosuifusername` (`UOSUIFUSERNAME`);

--
-- Indexes for table `uos_uif_phot`
--
ALTER TABLE `uos_uif_phot`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uom_menu_role`
--
ALTER TABLE `uom_menu_role`
  ADD CONSTRAINT `FK_uom_menu_role_uommenuid` FOREIGN KEY (`UOMMENUID`) REFERENCES `uom_menu` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uom_menu_role_uomroleid` FOREIGN KEY (`UOMROLEID`) REFERENCES `uom_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uom_uif_comp`
--
ALTER TABLE `uom_uif_comp`
  ADD CONSTRAINT `FK_uom_user_comp_uomcompid` FOREIGN KEY (`UOMCOMPID`) REFERENCES `uom_comp` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uom_user_comp_uosuifusername` FOREIGN KEY (`UOSUIFUSERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uom_uif_role`
--
ALTER TABLE `uom_uif_role`
  ADD CONSTRAINT `FK_uom_user_role_uomroleid` FOREIGN KEY (`UOMROLEID`) REFERENCES `uom_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uom_user_role_uosuifusername` FOREIGN KEY (`UOSUIFUSERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_cif_addr`
--
ALTER TABLE `uos_cif_addr`
  ADD CONSTRAINT `FK_uos_cif_addr_uoscifusername` FOREIGN KEY (`UOSCIFCUSTOMERID`) REFERENCES `uos_cif` (`CUSTOMERID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_cif_phon`
--
ALTER TABLE `uos_cif_phon`
  ADD CONSTRAINT `FK_uos_cif_phon_uomphontypid` FOREIGN KEY (`UOMPHONTYPID`) REFERENCES `uom_phon_typ` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uos_cif_phon_uoscifusername` FOREIGN KEY (`UOSCIFCUSTOMERID`) REFERENCES `uos_cif` (`CUSTOMERID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_comp_addr`
--
ALTER TABLE `uos_comp_addr`
  ADD CONSTRAINT `FK_uos_comp_addr_uomcompid` FOREIGN KEY (`UOMCOMPID`) REFERENCES `uom_comp` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_comp_phon`
--
ALTER TABLE `uos_comp_phon`
  ADD CONSTRAINT `FK_uos_comp_phon_uomcompid` FOREIGN KEY (`UOMCOMPID`) REFERENCES `uom_comp` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_uif_addr`
--
ALTER TABLE `uos_uif_addr`
  ADD CONSTRAINT `FK_uos_uif_addr_uosuifusername` FOREIGN KEY (`UOSUIFUSERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uos_uif_phon`
--
ALTER TABLE `uos_uif_phon`
  ADD CONSTRAINT `FK_uos_uif_phon_uomphontypid` FOREIGN KEY (`UOMPHONTYPID`) REFERENCES `uom_phon_typ` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uos_uif_phon_uosuifusername` FOREIGN KEY (`UOSUIFUSERNAME`) REFERENCES `uos_uif` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
