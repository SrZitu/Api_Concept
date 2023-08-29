-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 07:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud_for_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task` varchar(255) DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `task`, `done`, `created_at`, `updated_at`) VALUES
(1, 'Complete the project', 0, '2023-08-26 04:37:41', '2023-08-26 04:37:41'),
(2, 'Attend the meeting', 0, '2023-08-26 04:37:41', '2023-08-28 22:26:46'),
(3, 'Write the presentation', 0, '2023-08-26 04:37:42', '2023-08-28 22:07:37'),
(5, 'Study for the exams', 1, '2023-08-26 04:37:42', '2023-08-28 22:12:04'),
(6, 'Exercise for 30 minutes', 0, '2023-08-26 04:37:42', '2023-08-26 04:37:42'),
(7, 'Call a friend', 1, '2023-08-26 04:37:42', '2023-08-26 04:37:42'),
(8, 'Read a book', 0, '2023-08-26 04:37:42', '2023-08-26 04:37:42'),
(10, 'Go for a walk', 1, '2023-08-26 04:37:42', '2023-08-26 04:37:42'),
(11, 'Creating Api for vue projects', 0, '2023-08-25 23:09:03', '2023-08-28 22:07:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
