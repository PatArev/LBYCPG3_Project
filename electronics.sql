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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
