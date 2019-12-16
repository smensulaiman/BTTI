-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 09:05 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `student_name` text NOT NULL,
  `date` text NOT NULL,
  `session` text NOT NULL,
  `admission_fee` text NOT NULL,
  `course_fee` text NOT NULL,
  `paid` text NOT NULL,
  `course_name` text NOT NULL,
  `received` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `mobile` text NOT NULL,
  `birth_date` text NOT NULL,
  `permanent_address` text NOT NULL,
  `remarks` text NOT NULL,
  `file_picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `student_name`, `date`, `session`, `admission_fee`, `course_fee`, `paid`, `course_name`, `received`, `father_name`, `mother_name`, `mobile`, `birth_date`, `permanent_address`, `remarks`, `file_picture`) VALUES
(4, 'solaiman', '12 - 01 - 2019', 'AAA', '1250', '250', '100', 'Japanese Language', 'Coordinator', '', '', '', '', '', '', ''),
(5, 'sadman', '12 - 02 - 2019', 'reter', 'erte', 'tert', 'ertert', 'Basic Computer', 'Coordinator', '', '', '', '', '', '', ''),
(6, 'sadman', '12 - 03 - 2019', 'thrt', 'tryrt', 'tryrt', 'rtytr', 'Advance Computer', 'Admin', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
