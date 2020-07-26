-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 10:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `c_id` int(12) NOT NULL,
  `quantity` int(10) NOT NULL,
  `bill` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `c_id`, `quantity`, `bill`) VALUES
(6, 4, 100, 85.00),
(7, 7, 250, 212.50),
(8, 5, 150, 127.50);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `c_name` varchar(80) NOT NULL,
  `c_surname` varchar(500) NOT NULL,
  `c_address` text NOT NULL,
  `c_phone` varchar(20) NOT NULL,
  `c_sex` varchar(20) NOT NULL,
  `c_dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `c_name`, `c_surname`, `c_address`, `c_phone`, `c_sex`, `c_dob`) VALUES
(1, 'James', 'Moyo', '23 Nkosaa Buawayo', '2637114411111', 'Male', '1997-04-16'),
(4, 'China', 'Wuhan', 'Street and Avenues , Gweru', '263710002000', 'Male', '1945-08-14'),
(5, 'Morris', 'King', '56 Gweru Town', '263714555555', 'Male', '1999-08-22'),
(6, 'James', 'Maikaita', 'Gweru', '263778220110', 'Male', '2001-04-17'),
(7, 'King', 'Kong', 'Mkoba', '2635488711', 'Male', '2001-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(80) NOT NULL,
  `id_number` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`fname`, `lname`, `id_number`) VALUES
('James', 'Milner', '142252'),
('Mathew', 'King', '145523');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_fname` varchar(50) NOT NULL,
  `u_lname` varchar(80) NOT NULL,
  `u_uname` varchar(500) NOT NULL,
  `u_pass` varchar(500) NOT NULL,
  `u_bdate` date NOT NULL,
  `u_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_fname`, `u_lname`, `u_uname`, `u_pass`, `u_bdate`, `u_address`) VALUES
('Dylan', 'Mkoko', 'Dylan', '12345678', '2000-04-11', '45 Mkoba Gweru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`,`c_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`,`c_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
