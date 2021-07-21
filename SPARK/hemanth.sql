-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 09:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hema`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(0, 'Anushri', 'Hemanth', 200, '2021-07-20 12:43:00'),
(1, 'Thomas', 'Walter', 150, '2021-06-20 18:58:27'),
(2, 'Kalaimani', 'Abinaya', 200, '2021-06-20 19:00:31'),
(3, 'Otis', 'Hemanth', 5000, '2021-07-20 19:01:32'),
(4, 'Anushri', 'Abinaya', 5000, '2021-07-20 19:06:15'),
(5, 'Jai', 'Hemanth', 500, '2021-07-20 19:28:24'),
(6, 'Akash', 'Ranga', 500, '2021-07-20 19:30:31'),
(7, 'Ranga', 'Akash', 200, '2021-07-20 19:31:22'),
(8, 'Walter', 'Hemanth', 520, '2021-07-21 07:39:58'),
(9, 'Akash', 'Otis', 500, '2021-07-21 09:37:08'),
(10, 'Anushri', 'Hemanth', 100, '2021-07-21 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Hemanth', 'hema@gmail.com', 45800),
(2654, 'Jai', 'chilla@gmail.com', 31220),
(3624, 'Kalaimani', 'mama@gmail.com', 40200),
(4542, 'Anushri', 'phoebe@gmail.com', 48800),
(5345, 'Abinaya', 'mugan@gmail.com', 35000),
(5465, 'Ranga', 'vadakan@gmail.com', 49500),
(6554, 'Akash', 'aksha@gmail.com', 40000),
(7875, 'Thomas', 'shelby@gmail.com', 49480),
(8877, 'Walter', 'white@gmail.com', 40000),
(9245, 'Otis', 'maeve@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
