-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 09:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `your_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(100) NOT NULL,
  `kod_sekolah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `kod_sekolah`) VALUES
('Guru', 'AHA7001');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `matrik` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Hadir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `matrik` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `angka_giliran` varchar(10) DEFAULT NULL,
  `kad_pengenalan` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `matrik`, `name`, `semester`, `kelas`, `angka_giliran`, `kad_pengenalan`, `status`) VALUES
(32, 'K151MKPD004', 'dwada', 'Semester 4', 'Teknologi Sistem Pengurusan Pangkalan Data dan Aplikasi', '004', 2147483647, 'tiada_rekod'),
(34, 'K151NBAK009', 'dwadwawda', 'Semester 3', 'Perakaunan', '009', 1234567899, 'tiada_rekod');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kad_pengenalan` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_3` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_4` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_5` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_6` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_7` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_8` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_9` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_10` (`kad_pengenalan`),
  ADD UNIQUE KEY `kad_pengenalan_11` (`kad_pengenalan`),
  ADD UNIQUE KEY `barcode` (`matrik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
