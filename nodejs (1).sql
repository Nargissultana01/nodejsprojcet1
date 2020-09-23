-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 04:31 PM
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
-- Database: `nodejs`
--

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(255) NOT NULL,
  `file` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `file`) VALUES
(2, '1600868821659Ab Tere Bin Jee Lenge Hum - Raj Barman _ Unplugged.mp4'),
(3, '1600868935025Aaj Kal Tere Mere Pyar Ke Charche -Ye Chand Sa Roshan Chehra I UKULELE Mashup I Karan Nawani.mp4'),
(4, '1600870043809Kuch Is Tarah - Unplugged Cover _ Atif Aslam _ Siddharth Slathia_Full-HD.mp4'),
(5, '1600871280580Ye Dil Tum Bin Kahin Lagta Nahi - Ankush - Neelanjana - Indian Idol 10 - 2018.webm');

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE `node` (
  `id` int(255) NOT NULL,
  `name` varchar(600) NOT NULL,
  `mobile_no` varchar(600) NOT NULL,
  `email` varchar(600) NOT NULL,
  `age` varchar(600) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `node`
--

INSERT INTO `node` (`id`, `name`, `mobile_no`, `email`, `age`, `address`) VALUES
(1, 'neha', '9141528963', 'neha@gmail.com', '23', 'howra'),
(2, 'Sabnam', '971475823', 'sabnam@gmail.com', '21', 'mumbai'),
(3, 'pooja', '9714526381', 'pooja@gmail.com', '21', 'sakar'),
(4, 'riya', '9712345680', 'riya@gamil.com', '22', 'beldaga'),
(5, 'surbhi', '9712345680', 'surbi@gmail.com', '21', ' kharagpur'),
(6, 'nehar', '97854628', 'nehar@gmail.com', '21', 'kolkata'),
(7, 'mummi', '975846215', 'munni@gmail.com', '21', 'delhi'),
(26, 'nisha', '748459361', 'ngfg@gmail.com', '12', 'ladak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node`
--
ALTER TABLE `node`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `node`
--
ALTER TABLE `node`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
