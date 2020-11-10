-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 08:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `comp_name` int(11) NOT NULL,
  `job_title` int(11) NOT NULL,
  `job_loc` int(11) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `comp_name` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`, `emp_name`, `comp_name`, `contact_no`) VALUES
(1, 'david', 'admin', 'admin', '', '', '01700-333444'),
(2, 'scott', '1234', 'employer', 'Johnson Scott ', 'FiveMart', '01700-333555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
