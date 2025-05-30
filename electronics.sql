-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2025 at 06:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronics`
--

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(11) NOT NULL,
  `part_number` varchar(50) NOT NULL,
  `type` enum('Transistor','Diode') NOT NULL,
  `description` text DEFAULT NULL,
  `package_type` varchar(50) DEFAULT NULL,
  `voltage_rating` varchar(20) DEFAULT NULL,
  `current_rating` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `part_number`, `type`, `description`, `package_type`, `voltage_rating`, `current_rating`) VALUES
(1, '2N2222', 'Transistor', 'NPN Bipolar Junction Transistor', 'TO-18', '40V', '800mA'),
(2, '1N4007', 'Diode', 'Rectifier Diode', 'DO-41', '1000V', '1A'),
(3, '2N3904', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '40V', '200mA'),
(4, 'BC547', 'Transistor', 'NPN Bipolar Junction Transistor', 'TO-92', '45V', '100mA'),
(5, 'TIP120', 'Transistor', 'NPN Darlington Power Transistor', 'TO-220', '60V', '5A'),
(6, 'IRF540N', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '100V', '33A'),
(7, 'IRF9540N', 'Transistor', 'P-Channel Power MOSFET', 'TO-220', '-100V', '-23A'),
(8, '1N4148', 'Diode', 'High-Speed Switching Diode', 'DO-35', '100V', '300mA'),
(9, '1N5819', 'Diode', 'Schottky Barrier Rectifier Diode', 'DO-41', '40V', '1A'),
(10, '1N5408', 'Diode', 'High Current Rectifier Diode', 'DO-201AD', '1000V', '3A'),
(11, 'ZMM5.1', 'Diode', 'Zener Diode 5.1V 500mW', 'DO-35', '5.1V Zener', '500mW'),
(12, 'BAV99', 'Diode', 'Switching Diode Array', 'SOT-23', '100V', '200mA');
(13, '2N3055', 'Transistor', 'NPN Power Transistor', 'TO-3', '60V', '15A'),
(14, 'BD139', 'Transistor', 'NPN Medium Power Transistor', 'TO-126', '80V', '1.5A'),
(15, 'BD140', 'Transistor', 'PNP Medium Power Transistor', 'TO-126', '80V', '1.5A'),
(16, 'TIP31C', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '3A'),
(17, 'TIP32C', 'Transistor', 'PNP Power Transistor', 'TO-220', '100V', '3A'),
(18, 'MJE3055T', 'Transistor', 'NPN Power Transistor', 'TO-220', '60V', '10A'),
(19, '2SC5200', 'Transistor', 'NPN Audio Power Transistor', 'TO-264', '230V', '15A'),
(20, '2SA1943', 'Transistor', 'PNP Audio Power Transistor', 'TO-264', '230V', '15A'),
(21, '2N5401', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '150V', '600mA'),
(22, '2N5551', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '160V', '600mA'),
(23, 'BC557', 'Transistor', 'PNP Bipolar Junction Transistor', 'TO-92', '45V', '100mA'),
(24, 'BC548', 'Transistor', 'NPN Bipolar Junction Transistor', 'TO-92', '30V', '100mA'),
(25, 'MPSA06', 'Transistor', 'NPN General Purpose Amplifier', 'TO-92', '80V', '500mA'),
(26, 'MPSA56', 'Transistor', 'PNP General Purpose Amplifier', 'TO-92', '80V', '500mA'),
(27, 'IRFZ44N', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '55V', '49A'),
(28, 'IRF3205', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '55V', '110A'),
(29, 'STP55NF06', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '60V', '55A'),
(30, 'FQP30N06L', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '60V', '32A'),
(31, '1N5822', 'Diode', 'Schottky Rectifier Diode', 'DO-201AD', '40V', '3A'),
(32, '1N4733A', 'Diode', 'Zener Diode 5.1V 1W', 'DO-41', '5.1V Zener', '1W'),
(33, '1N4742A', 'Diode', 'Zener Diode 12V 1W', 'DO-41', '12V Zener', '1W'),
(34, '1N6267A', 'Diode', 'Low Voltage Zener Diode', 'SOD-323', '3.3V Zener', '250mW'),
(35, 'BZX55C5V6', 'Diode', 'Zener Diode 5.6V', 'DO-35', '5.6V Zener', '500mW'),
(36, 'BAT85', 'Diode', 'Schottky Barrier Diode', 'DO-35', '30V', '200mA'),
(37, 'UF4007', 'Diode', 'Ultra Fast Recovery Diode', 'DO-41', '1000V', '1A'),
(38, 'HER108', 'Diode', 'High Efficiency Rectifier', 'DO-41', '1000V', '1A'),
(39, 'MB6S', 'Diode', 'Bridge Rectifier', 'SMD', '600V', '0.5A'),
(40, 'MB10F', 'Diode', 'Bridge Rectifier', 'SMD', '1000V', '1A'),
(41, 'BYV27-200', 'Diode', 'Fast Recovery Rectifier Diode', 'DO-15', '200V', '1A'),
(42, '1N5820', 'Diode', 'Schottky Barrier Diode', 'DO-201AD', '20V', '3A'),
(43, 'BZT52C5V6', 'Diode', 'SMD Zener Diode 5.6V', 'SOD-123', '5.6V Zener', '500mW'),
(44, 'P6KE6.8A', 'Diode', 'TVS Diode 6.8V', 'DO-15', '6.8V Clamp', '600W'),
(45, 'SMBJ12A', 'Diode', 'TVS Diode 12V', 'DO-214AA', '12V Clamp', '600W'),
(46, '2N7000', 'Transistor', 'N-Channel MOSFET', 'TO-92', '60V', '200mA'),
(47, 'IRF630', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '200V', '9A'),
(48, 'IRF9530', 'Transistor', 'P-Channel Power MOSFET', 'TO-220', '-100V', '-12A'),
(49, 'BSS138', 'Transistor', 'N-Channel Logic Level MOSFET', 'SOT-23', '50V', '200mA'),
(50, 'BS170', 'Transistor', 'N-Channel MOSFET', 'TO-92', '60V', '500mA'),
(51, 'BC327', 'Transistor', 'PNP Transistor', 'TO-92', '45V', '800mA'),
(52, 'BC337', 'Transistor', 'NPN Transistor', 'TO-92', '45V', '800mA'),
(53, '2N2907', 'Transistor', 'PNP Transistor', 'TO-92', '60V', '600mA'),
(54, 'S8050', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '40V', '700mA'),
(55, 'S8550', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '40V', '700mA'),
(56, 'SS14', 'Diode', 'Schottky Diode', 'DO-214AC', '40V', '1A'),
(57, 'SS34', 'Diode', 'Schottky Diode', 'DO-214AB', '40V', '3A'),
(58, 'MUR460', 'Diode', 'Ultra-Fast Diode', 'TO-220AC', '600V', '4A'),
(59, 'MUR160', 'Diode', 'Ultra-Fast Diode', 'DO-41', '600V', '1A'),
(60, 'SB560', 'Diode', 'Schottky Rectifier', 'TO-220AC', '60V', '5A'),
(61, 'STTH1R06', 'Diode', 'Ultrafast Recovery Diode', 'DO-41', '600V', '1A'),
(62, 'FR107', 'Diode', 'Fast Recovery Diode', 'DO-41', '1000V', '1A'),
(63, '1N5821', 'Diode', 'Schottky Diode', 'DO-201AD', '30V', '3A'),
(64, 'BAV21', 'Diode', 'Switching Diode', 'DO-35', '250V', '200mA'),
(65, '1N4937', 'Diode', 'Fast Recovery Rectifier', 'DO-41', '600V', '1A'),
(66, 'MMBD4148', 'Diode', 'Dual Switching Diode', 'SOT-23', '100V', '200mA'),
(67, 'SMAJ5.0A', 'Diode', 'TVS Diode 5V', 'DO-214AC', '5V Clamp', '400W'),
(68, 'ZTX450', 'Transistor', 'NPN High Gain Transistor', 'TO-92', '60V', '1A'),
(69, 'ZTX550', 'Transistor', 'PNP High Gain Transistor', 'TO-92', '60V', '1A'),
(70, '2SD882', 'Transistor', 'NPN Power Transistor', 'TO-126', '30V', '3A'),
(71, '2SB772', 'Transistor', 'PNP Power Transistor', 'TO-126', '30V', '3A'),
(72, '2SK30A', 'Transistor', 'N-Channel JFET', 'TO-92', '50V', '10mA'),
(73, 'BF245', 'Transistor', 'N-Channel JFET', 'TO-92', '30V', '20mA'),
(74, 'J310', 'Transistor', 'N-Channel JFET', 'TO-92', '35V', '24mA'),
(75, 'MPF102', 'Transistor', 'N-Channel JFET', 'TO-92', '25V', '20mA'),
(76, 'BSS84', 'Transistor', 'P-Channel MOSFET', 'SOT-23', '-50V', '-130mA'),
(77, 'ZVP2106A', 'Transistor', 'P-Channel MOSFET', 'TO-92', '-60V', '-180mA'),
(78, 'BC558', 'Transistor', 'PNP BJT Transistor', 'TO-92', '30V', '100mA'),
(79, 'BC549', 'Transistor', 'NPN BJT Transistor', 'TO-92', '30V', '100mA'),
(80, 'PN2222A', 'Transistor', 'NPN BJT Transistor', 'TO-92', '40V', '800mA'),
(81, 'PN2907A', 'Transistor', 'PNP BJT Transistor', 'TO-92', '60V', '600mA'),
(82, 'SS16', 'Diode', 'Schottky Diode', 'DO-214AC', '60V', '1A'),
(83, 'SB260', 'Diode', 'Schottky Rectifier Diode', 'TO-220AC', '60V', '2A'),
(84, 'STPS1L60', 'Diode', 'Schottky Power Diode', 'DO-41', '60V', '1A'),
(85, 'BZX84C5V1', 'Diode', 'SMD Zener Diode', 'SOT-23', '5.1V Zener', '350mW'),
(86, 'P6KE15A', 'Diode', 'TVS Diode 15V', 'DO-15', '15V Clamp', '600W'),
(87, 'STPS20L15CT', 'Diode', 'Dual Schottky Diode', 'TO-220AB', '15V', '20A'),
(88, '1N5934B', 'Diode', 'Zener Diode 3.3V 1.5W', 'DO-41', '3.3V Zener', '1.5W'),
(89, 'MUR420', 'Diode', 'Ultrafast Recovery Diode', 'DO-201AD', '200V', '4A'),
(90, '1N4735A', 'Diode', 'Zener Diode 6.2V 1W', 'DO-41', '6.2V Zener', '1W'),
(91, 'FR207', 'Diode', 'Fast Recovery Diode', 'DO-15', '1000V', '2A'),
(92, 'BAV20', 'Diode', 'High Voltage Switching Diode', 'DO-35', '250V', '200mA'),
(93, 'MB6M', 'Diode', 'Bridge Rectifier', 'DIP', '600V', '0.5A'),
(94, '1N4935', 'Diode', 'Fast Recovery Diode', 'DO-41', '600V', '1A'),
(95, 'BAT54', 'Diode', 'Schottky Diode', 'SOT-23', '30V', '200mA'),
(96, '1N34A', 'Diode', 'Germanium Diode', 'Glass', '100V', '50mA'),
(97, '1N270', 'Diode', 'Germanium Diode', 'Glass', '100V', '85mA'),
(98, '1N60P', 'Diode', 'Germanium Diode', 'DO-7', '45V', '50mA'),
(99, '1N1184R', 'Diode', 'High Current Rectifier', 'DO-5', '600V', '35A'),
(100, '1N1183R', 'Diode', 'High Current Rectifier', 'DO-5', '400V', '35A');
(101, '2N3055', 'Transistor', 'NPN Power Transistor', 'TO-3', '60V', '15A'),
(102, 'TIP41C', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '6A'),
(103, 'BD140', 'Transistor', 'PNP Medium Power Transistor', 'TO-126', '80V', '1.5A'),
(104, 'BC337', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '45V', '800mA'),
(105, 'BC327', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '45V', '800mA'),
(106, '2N2907', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '60V', '600mA'),
(107, '2N5401', 'Transistor', 'PNP High Voltage Transistor', 'TO-92', '150V', '600mA'),
(108, '2N5551', 'Transistor', 'NPN High Voltage Transistor', 'TO-92', '160V', '600mA'),
(109, 'TIP31C', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '3A'),
(110, 'MJE13007', 'Transistor', 'NPN Power Transistor for Switching', 'TO-220', '400V', '8A'),
(111, 'IRFZ44N', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '55V', '49A'),
(112, 'IRF630', 'Transistor', 'N-Channel MOSFET', 'TO-220', '200V', '9A'),
(113, 'IRF3205', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '55V', '110A'),
(114, 'IRF540', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '100V', '33A'),
(115, 'P55NF06', 'Transistor', 'N-Channel Power MOSFET', 'TO-220', '60V', '55A'),
(116, 'FQP30N06L', 'Transistor', 'N-Channel Logic Level MOSFET', 'TO-220', '60V', '32A'),
(117, 'FQP27P06', 'Transistor', 'P-Channel MOSFET', 'TO-220', '-60V', '-27A'),
(118, '1N4733A', 'Diode', 'Zener Diode 5.1V 1W', 'DO-41', '5.1V Zener', '1W'),
(119, '1N4735A', 'Diode', 'Zener Diode 6.2V 1W', 'DO-41', '6.2V Zener', '1W'),
(120, '1N5817', 'Diode', 'Schottky Diode', 'DO-41', '20V', '1A'),
(121, '1N5818', 'Diode', 'Schottky Diode', 'DO-41', '30V', '1A'),
(122, '1N5822', 'Diode', 'Schottky Barrier Rectifier', 'DO-201AD', '40V', '3A'),
(123, 'UF4007', 'Diode', 'Ultra Fast Recovery Diode', 'DO-41', '1000V', '1A'),
(124, 'FR107', 'Diode', 'Fast Recovery Diode', 'DO-41', '1000V', '1A'),
(125, 'FR207', 'Diode', 'Fast Recovery Diode', 'DO-15', '1000V', '2A'),
(126, 'HER108', 'Diode', 'High Efficiency Rectifier', 'DO-41', '1000V', '1A'),
(127, 'BZX55C5V1', 'Diode', 'Zener Diode 5.1V 500mW', 'DO-35', '5.1V Zener', '500mW'),
(128, 'BZX55C12', 'Diode', 'Zener Diode 12V 500mW', 'DO-35', '12V Zener', '500mW'),
(129, 'MMBT3904', 'Transistor', 'NPN Small Signal Transistor', 'SOT-23', '40V', '200mA'),
(130, 'MMBT3906', 'Transistor', 'PNP Small Signal Transistor', 'SOT-23', '40V', '200mA'),
(131, '2SC1815', 'Transistor', 'NPN Audio Frequency Transistor', 'TO-92', '50V', '150mA'),
(132, '2SA1015', 'Transistor', 'PNP Audio Frequency Transistor', 'TO-92', '50V', '150mA'),
(133, 'BC546', 'Transistor', 'NPN Low Noise Transistor', 'TO-92', '65V', '100mA'),
(134, 'BC556', 'Transistor', 'PNP Low Noise Transistor', 'TO-92', '65V', '100mA'),
(135, 'MPSA06', 'Transistor', 'NPN High Voltage Transistor', 'TO-92', '80V', '500mA'),
(136, 'MPSA56', 'Transistor', 'PNP High Voltage Transistor', 'TO-92', '80V', '500mA'),
(137, '2N7000', 'Transistor', 'N-Channel MOSFET', 'TO-92', '60V', '200mA'),
(138, 'ZTX450', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '45V', '1A'),
(139, 'ZTX550', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '60V', '1A'),
(140, 'BSS138', 'Transistor', 'N-Channel MOSFET', 'SOT-23', '50V', '220mA'),
(141, '1N5402', 'Diode', 'Rectifier Diode', 'DO-201AD', '200V', '3A'),
(142, '1N5404', 'Diode', 'Rectifier Diode', 'DO-201AD', '400V', '3A'),
(143, '1N5406', 'Diode', 'Rectifier Diode', 'DO-201AD', '600V', '3A'),
(144, 'S8050', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '40V', '700mA'),
(145, 'S8550', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '40V', '700mA'),
(146, 'KSP2222A', 'Transistor', 'NPN Switching Transistor', 'TO-92', '40V', '800mA'),
(147, 'MJE3055T', 'Transistor', 'NPN Power Transistor', 'TO-220', '60V', '10A'),
(148, 'MJE2955T', 'Transistor', 'PNP Power Transistor', 'TO-220', '60V', '10A'),
(149, 'P6KE6.8A', 'Diode', 'TVS Diode 6.8V Unidirectional', 'DO-15', '6.8V', '600W'),
(150, 'P6KE12A', 'Diode', 'TVS Diode 12V Unidirectional', 'DO-15', '12V', '600W'),
(151, 'SMBJ5.0A', 'Diode', 'TVS Diode 5V Bidirectional', 'DO-214AA', '5V', '600W'),
(152, 'MB6S', 'Diode', 'Bridge Rectifier', 'SMD', '600V', '0.5A'),
(153, 'KBPC5010', 'Diode', 'Bridge Rectifier', 'KBPC', '1000V', '50A'),
(154, 'GBU606', 'Diode', 'Bridge Rectifier', 'GBU', '600V', '6A'),
(155, 'MB10F', 'Diode', 'Bridge Rectifier', 'SMD', '1000V', '0.5A'),
(156, 'SS14', 'Diode', 'Schottky Diode', 'DO-214AC', '40V', '1A'),
(157, 'SS34', 'Diode', 'Schottky Diode', 'DO-214AC', '40V', '3A'),
(158, 'STPS30L60CT', 'Diode', 'Schottky Rectifier Dual Common Cathode', 'TO-220AB', '60V', '30A'),
(159, 'MB6M', 'Diode', 'Bridge Rectifier', 'SMD', '600V', '0.5A'),
(160, 'UF5408', 'Diode', 'Ultra Fast Recovery Diode', 'DO-201AD', '1000V', '3A'),
(161, 'BYV26C', 'Diode', 'Fast Switching Diode', 'DO-41', '600V', '1A'),
(162, 'BAS16', 'Diode', 'Switching Diode', 'SOT-23', '85V', '200mA'),
(163, 'BAT54', 'Diode', 'Schottky Barrier Diode', 'SOT-23', '30V', '200mA'),
(164, 'BAT85', 'Diode', 'Schottky Barrier Diode', 'DO-35', '30V', '200mA'),
(165, 'ES1D', 'Diode', 'Ultra Fast Rectifier', 'DO-214AC', '200V', '1A'),
(166, 'ES3J', 'Diode', 'Ultra Fast Rectifier', 'DO-214AB', '600V', '3A'),
(167, 'MUR460', 'Diode', 'Ultra Fast Diode', 'TO-220AC', '600V', '4A'),
(168, 'HER307', 'Diode', 'Fast Recovery Rectifier', 'DO-201AD', '1000V', '3A'),
(169, 'SR5100', 'Diode', 'Schottky Rectifier Diode', 'DO-201AD', '100V', '5A'),
(170, 'BAV21', 'Diode', 'High Voltage Switching Diode', 'DO-35', '250V', '200mA'),
(171, 'BAV20', 'Diode', 'Switching Diode', 'DO-35', '200V', '200mA'),
(172, 'BAV23', 'Diode', 'Switching Diode', 'SOT-23', '250V', '200mA'),
(173, 'P6KE18A', 'Diode', 'TVS Diode 18V Unidirectional', 'DO-15', '18V', '600W'),
(174, '1N5378B', 'Diode', 'Zener Diode 180V 5W', 'DO-15', '180V Zener', '5W'),
(175, 'BZV55-C3V3', 'Diode', 'Zener Diode 3.3V 500mW', 'DO-35', '3.3V Zener', '500mW'),
(176, 'BZV55-C6V8', 'Diode', 'Zener Diode 6.8V 500mW', 'DO-35', '6.8V Zener', '500mW'),
(177, 'BZV55-C15', 'Diode', 'Zener Diode 15V 500mW', 'DO-35', '15V Zener', '500mW'),
(178, 'P4KE6.8A', 'Diode', 'TVS Diode 6.8V 400W', 'DO-15', '6.8V', '400W'),
(179, 'P4KE18A', 'Diode', 'TVS Diode 18V 400W', 'DO-15', '18V', '400W'),
(180, 'MMBZ5225', 'Diode', 'Zener Diode 3V 500mW', 'SOT-23', '3V Zener', '500mW'),
(181, 'MMBZ5232', 'Diode', 'Zener Diode 5.6V 500mW', 'SOT-23', '5.6V Zener', '500mW'),
(182, 'MMBZ5242', 'Diode', 'Zener Diode 12V 500mW', 'SOT-23', '12V Zener', '500mW'),
(183, 'MMBZ5262', 'Diode', 'Zener Diode 51V 500mW', 'SOT-23', '51V Zener', '500mW'),
(184, 'SMBJ12A', 'Diode', 'TVS Diode 12V Bidirectional', 'DO-214AA', '12V', '600W'),
(185, 'SMBJ15A', 'Diode', 'TVS Diode 15V Bidirectional', 'DO-214AA', '15V', '600W'),
(186, 'SMBJ33A', 'Diode', 'TVS Diode 33V Bidirectional', 'DO-214AA', '33V', '600W'),
(187, 'SMBJ36A', 'Diode', 'TVS Diode 36V Bidirectional', 'DO-214AA', '36V', '600W'),
(188, 'MBR2045CT', 'Diode', 'Schottky Rectifier', 'TO-220AB', '45V', '20A'),
(189, 'MBR1060', 'Diode', 'Schottky Diode', 'TO-220AC', '60V', '10A'),
(190, 'SR360', 'Diode', 'Schottky Rectifier', 'DO-201AD', '60V', '3A'),
(191, 'SR560', 'Diode', 'Schottky Rectifier', 'DO-201AD', '60V', '5A'),
(192, '1N5825', 'Diode', 'Schottky Rectifier', 'DO-201AD', '40V', '5A'),
(193, '1N5820', 'Diode', 'Schottky Rectifier', 'DO-201AD', '20V', '3A'),
(194, '1N5821', 'Diode', 'Schottky Rectifier', 'DO-201AD', '30V', '3A'),
(195, 'MBR30100CT', 'Diode', 'Schottky Barrier Rectifier', 'TO-220AB', '100V', '30A'),
(196, 'STTH8R06', 'Diode', 'Ultrafast High Voltage Diode', 'TO-220AC', '600V', '8A'),
(197, 'STTH1R06', 'Diode', 'Ultrafast Diode', 'DO-41', '600V', '1A'),
(198, 'BYT52M-1000', 'Diode', 'Fast Recovery Diode', 'DO-201AD', '1000V', '1.3A'),
(199, 'BYW29-200', 'Diode', 'Fast Recovery Diode', 'DO-201AD', '200V', '8A'),
(200, '1N1184R', 'Diode', 'High Current Rectifier Diode', 'DO-5', '400V', '35A');
(201, 'BC337', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '45V', '800mA'),
(202, 'BC327', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '45V', '800mA'),
(203, 'BD139', 'Transistor', 'NPN Power Transistor', 'TO-126', '80V', '1.5A'),
(204, 'BD140', 'Transistor', 'PNP Power Transistor', 'TO-126', '80V', '1.5A'),
(205, '2N2907', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '60V', '600mA'),
(206, '2N3055', 'Transistor', 'NPN Power Transistor', 'TO-3', '60V', '15A'),
(207, 'MJ2955', 'Transistor', 'PNP Power Transistor', 'TO-3', '60V', '15A'),
(208, 'TIP31C', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '3A'),
(209, 'TIP32C', 'Transistor', 'PNP Power Transistor', 'TO-220', '100V', '3A'),
(210, 'MPSA42', 'Transistor', 'NPN High Voltage Transistor', 'TO-92', '300V', '500mA'),
(211, 'MPSA92', 'Transistor', 'PNP High Voltage Transistor', 'TO-92', '300V', '500mA'),
(212, 'IRF3205', 'Transistor', 'N-Channel MOSFET', 'TO-220', '55V', '110A'),
(213, 'IRFZ44N', 'Transistor', 'N-Channel MOSFET', 'TO-220', '55V', '49A'),
(214, 'FQP30N06L', 'Transistor', 'N-Channel Logic Level MOSFET', 'TO-220', '60V', '32A'),
(215, 'BS170', 'Transistor', 'N-Channel MOSFET', 'TO-92', '60V', '500mA'),
(216, '2N7000', 'Transistor', 'N-Channel MOSFET', 'TO-92', '60V', '200mA'),
(217, 'BC547', 'Transistor', 'NPN Bipolar Junction Transistor', 'TO-92', '45V', '100mA'),
(218, 'BC557', 'Transistor', 'PNP Bipolar Junction Transistor', 'TO-92', '45V', '100mA'),
(219, 'TIP41C', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '6A'),
(220, 'TIP42C', 'Transistor', 'PNP Power Transistor', 'TO-220', '100V', '6A'),
(221, '1N4148', 'Diode', 'High-Speed Switching Diode', 'DO-35', '100V', '300mA'),
(222, '1N5404', 'Diode', 'Rectifier Diode', 'DO-201AD', '400V', '3A'),
(223, '1N5406', 'Diode', 'Rectifier Diode', 'DO-201AD', '600V', '3A'),
(224, '1N5407', 'Diode', 'Rectifier Diode', 'DO-201AD', '800V', '3A'),
(225, '1N5408', 'Diode', 'Rectifier Diode', 'DO-201AD', '1000V', '3A'),
(226, 'FR107', 'Diode', 'Fast Recovery Diode', 'DO-41', '1000V', '1A'),
(227, 'UF4007', 'Diode', 'Ultra Fast Diode', 'DO-41', '1000V', '1A'),
(228, '1N5822', 'Diode', 'Schottky Barrier Rectifier Diode', 'DO-201AD', '40V', '3A'),
(229, 'MB6S', 'Diode', 'Bridge Rectifier', 'SIP-4', '600V', '500mA'),
(230, 'ZMM3.6', 'Diode', 'Zener Diode 3.6V', 'DO-35', '3.6V Zener', '500mW'),
(231, 'ZMM6.2', 'Diode', 'Zener Diode 6.2V', 'DO-35', '6.2V Zener', '500mW'),
(232, 'ZMM12', 'Diode', 'Zener Diode 12V', 'DO-35', '12V Zener', '500mW'),
(233, '1N5817', 'Diode', 'Schottky Barrier Rectifier Diode', 'DO-41', '20V', '1A'),
(234, '1N5818', 'Diode', 'Schottky Barrier Rectifier Diode', 'DO-41', '30V', '1A'),
(235, '1N6263', 'Diode', 'Schottky Diode', 'DO-35', '40V', '200mA'),
(236, 'S8050', 'Transistor', 'NPN Transistor', 'TO-92', '40V', '700mA'),
(237, 'S8550', 'Transistor', 'PNP Transistor', 'TO-92', '40V', '700mA'),
(238, 'D882', 'Transistor', 'NPN Power Transistor', 'TO-126', '30V', '3A'),
(239, 'B772', 'Transistor', 'PNP Power Transistor', 'TO-126', '30V', '3A'),
(240, 'C945', 'Transistor', 'NPN Small Signal Transistor', 'TO-92', '50V', '100mA'),
(241, 'A733', 'Transistor', 'PNP Small Signal Transistor', 'TO-92', '50V', '100mA'),
(242, 'MJE13005', 'Transistor', 'NPN Power Transistor', 'TO-220', '400V', '4A'),
(243, 'MJE13003', 'Transistor', 'NPN Power Transistor', 'TO-220', '400V', '1.5A'),
(244, 'MPS2222A', 'Transistor', 'NPN Switching Transistor', 'TO-92', '40V', '800mA'),
(245, 'MPS2907A', 'Transistor', 'PNP Switching Transistor', 'TO-92', '60V', '600mA'),
(246, 'BFR93', 'Transistor', 'NPN RF Transistor', 'SOT-23', '15V', '25mA'),
(247, '2SC5200', 'Transistor', 'NPN Audio Power Transistor', 'TO-264', '230V', '15A'),
(248, '2SA1943', 'Transistor', 'PNP Audio Power Transistor', 'TO-264', '230V', '15A'),
(249, '2N2646', 'Transistor', 'Unijunction Transistor (UJT)', 'TO-18', '30V', '2mA'),
(250, '2N2904', 'Transistor', 'PNP Small Signal Transistor', 'TO-92', '60V', '800mA'),
(251, '1N270', 'Diode', 'Germanium Diode', 'DO-7', '100V', '50mA'),
(252, 'BAT54', 'Diode', 'Schottky Barrier Diode', 'SOT-23', '30V', '200mA'),
(253, 'BAS16', 'Diode', 'High-speed switching diode', 'SOT-23', '75V', '250mA'),
(254, 'BY255', 'Diode', 'Rectifier Diode', 'DO-201AD', '1300V', '3A'),
(255, 'BYV26C', 'Diode', 'Fast Recovery Diode', 'DO-41', '600V', '1A'),
(256, 'UF5408', 'Diode', 'Ultra Fast Recovery Diode', 'DO-201AD', '1000V', '3A'),
(257, 'HER108', 'Diode', 'High Efficiency Rectifier', 'DO-41', '1000V', '1A'),
(258, 'P6KE6.8A', 'Diode', 'TVS Diode 6.8V', 'DO-15', '6.8V Clamp', '600W'),
(259, 'ES1J', 'Diode', 'Fast Recovery Diode', 'DO-214AC', '600V', '1A'),
(260, '1N59A', 'Diode', 'High current diode', 'DO-7', '400V', '15A');
(261, 'HER207', 'Diode', 'High Efficiency Rectifier', 'DO-15', '1000V', '2A'),
(262, 'UF5402', 'Diode', 'Ultra Fast Recovery Diode', 'DO-201AD', '200V', '3A'),
(263, 'UF5404', 'Diode', 'Ultra Fast Recovery Diode', 'DO-201AD', '400V', '3A'),
(264, 'UF4001', 'Diode', 'Ultra Fast Recovery Diode', 'DO-41', '50V', '1A'),
(265, 'BZT52C5V1', 'Diode', 'Zener Diode 5.1V', 'SOD-123', '5.1V Zener', '500mW'),
(266, 'BZT52C3V3', 'Diode', 'Zener Diode 3.3V', 'SOD-123', '3.3V Zener', '500mW'),
(267, '1N1184R', 'Diode', 'Power Rectifier Diode', 'DO-5', '600V', '35A'),
(268, 'BYV28-200', 'Diode', 'Fast Recovery Diode', 'DO-220AB', '200V', '8A'),
(269, 'BYV32E-200', 'Diode', 'Fast Recovery Diode', 'TO-220AC', '200V', '20A'),
(270, 'BAV20', 'Diode', 'High Voltage Switching Diode', 'DO-35', '250V', '200mA'),
(271, 'BAV21', 'Diode', 'High Voltage Switching Diode', 'DO-35', '250V', '200mA'),
(272, 'S9013', 'Transistor', 'NPN General Purpose Transistor', 'TO-92', '40V', '500mA'),
(273, 'S9012', 'Transistor', 'PNP General Purpose Transistor', 'TO-92', '40V', '500mA'),
(274, 'S9014', 'Transistor', 'NPN Low Noise Transistor', 'TO-92', '50V', '100mA'),
(275, 'S9015', 'Transistor', 'PNP Low Noise Transistor', 'TO-92', '50V', '100mA'),
(276, '2N2369', 'Transistor', 'NPN High-Speed Switching Transistor', 'TO-18', '15V', '50mA'),
(277, '2N2219', 'Transistor', 'NPN Switching Transistor', 'TO-39', '40V', '800mA'),
(278, '2N2905', 'Transistor', 'PNP Switching Transistor', 'TO-5', '60V', '600mA'),
(279, '2N1613', 'Transistor', 'NPN General Purpose Transistor', 'TO-39', '40V', '800mA'),
(280, 'BC184', 'Transistor', 'NPN Low Noise Transistor', 'TO-92', '45V', '100mA'),
(281, 'BC214', 'Transistor', 'PNP Low Noise Transistor', 'TO-92', '45V', '100mA'),
(282, 'BD237', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '2A'),
(283, 'BD238', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '2A'),
(284, 'BD243C', 'Transistor', 'NPN Power Transistor', 'TO-220', '100V', '6A'),
(285, 'BD244C', 'Transistor', 'PNP Power Transistor', 'TO-220', '100V', '6A'),
(286, 'BCY58', 'Transistor', 'NPN RF Transistor', 'TO-18', '20V', '20mA'),
(287, 'BCY59', 'Transistor', 'PNP RF Transistor', 'TO-18', '20V', '20mA'),
(288, 'D45H11', 'Transistor', 'PNP Power Transistor', 'TO-220', '80V', '10A'),
(289, 'D44H11', 'Transistor', 'NPN Power Transistor', 'TO-220', '80V', '10A'),
(290, '2SD882', 'Transistor', 'NPN Medium Power Transistor', 'TO-126', '30V', '3A'),
(291, '2SB772', 'Transistor', 'PNP Medium Power Transistor', 'TO-126', '30V', '3A'),
(292, '2N3440', 'Transistor', 'NPN High Voltage Transistor', 'TO-39', '300V', '1A'),
(293, '2N5415', 'Transistor', 'PNP High Voltage Transistor', 'TO-39', '300V', '1A'),
(294, 'BSP75', 'Transistor', 'N-Channel Enhancement Mode MOSFET', 'SOT-223', '60V', '750mA'),
(295, 'MMBT2222A', 'Transistor', 'NPN General Purpose Transistor', 'SOT-23', '40V', '800mA'),
(296, 'MMBT2907A', 'Transistor', 'PNP General Purpose Transistor', 'SOT-23', '60V', '600mA'),
(297, 'PMBT3904', 'Transistor', 'NPN General Purpose Transistor', 'SOT-23', '40V', '200mA'),
(298, 'PMBT3906', 'Transistor', 'PNP General Purpose Transistor', 'SOT-23', '40V', '200mA'),
(299, 'BAV103', 'Diode', 'Switching Diode', 'DO-35', '250V', '200mA'),
(300, '1N1186R', 'Diode', 'High Current Rectifier Diode', 'DO-5', '600V', '35A');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
