-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 08:13 AM
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
-- Database: `registration0`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_energy` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `name`, `user_id`, `total_energy`) VALUES
(1, 'bld1', 1, 0),
(2, 'bld2', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `building_id` int(11) NOT NULL,
  `status` enum('on','off') DEFAULT 'off',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `building_id`, `status`, `created_at`) VALUES
(1, 'Living Room', 0, 'off', '2026-02-22 05:25:44'),
(2, 'Bedroom', 0, 'off', '2026-02-22 05:25:44'),
(3, 'Kitchen', 0, 'off', '2026-02-22 05:25:44'),
(10, 'pie', 0, 'off', '2026-02-22 05:56:30'),
(12, 'orange', 0, 'off', '2026-02-22 05:56:45'),
(13, 'banana', 0, 'off', '2026-02-22 05:57:02'),
(14, 'coconut', 0, 'off', '2026-02-22 05:57:16'),
(15, 'kiwi', 0, 'off', '2026-02-22 05:57:33'),
(16, 'mango', 0, 'off', '2026-02-22 05:57:55'),
(26, 'apple', 1, 'off', '2026-02-22 06:37:21'),
(37, 'orange', 1, 'off', '2026-02-22 07:19:32'),
(38, 'pie', 1, 'off', '2026-02-22 07:19:37'),
(41, 'banana', 1, 'off', '2026-02-22 12:18:30'),
(42, 'bedroom', 1, 'off', '2026-02-22 12:18:59'),
(43, 'TVL', 2, 'off', '2026-02-22 12:20:05'),
(44, 'ABM', 2, 'off', '2026-02-22 12:20:14'),
(45, 'STEM', 2, 'off', '2026-02-22 12:20:26'),
(46, 'ICT', 2, 'off', '2026-02-22 12:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'apple', 'pie@gmail.com', '$2y$10$.RxFpbIc1HLJhW8eZnqXBO1JKoiUq8AStw1fPqUK436bhQdSqkBx2'),
(2, 'blaze', 'blaze87@gmail.com', '$2y$10$ivGH4qtCuOxuH6k8oLfB6uZUjce4YNeFY9XGjo8J7sAG1ua8uDgV2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
