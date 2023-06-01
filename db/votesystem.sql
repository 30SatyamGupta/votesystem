-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 08:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'satyam', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Satyam', 'Gupta', 'WhatsApp Image 2023-05-30 at 9.35.36 PM.jpeg', '2023-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'Candidate', '1', 'images (2).png', ''),
(19, 8, 'Candidate', '2', 'images (2).png', 'Precident'),
(20, 9, 'MK Das', 'Kumar', 'images (1).png', ''),
(21, 9, 'KL', 'Rahul', 'images (1).png', ''),
(22, 9, 'RK', 'Katiyar', 'images (1).png', ''),
(23, 12, 'Neeta', 'Ambani', '829452_user_512x512.png', ''),
(24, 12, 'Gaurav', 'Kumar', 'images (1).png', ''),
(25, 12, 'MD', 'Khan', 'images (2).png', ''),
(26, 10, 'AJ', 'Katiyar', 'b1.png', ''),
(27, 10, 'RD', 'Sharma', 'b1.png', ''),
(28, 10, 'Akshita', 'Manhotra', 'g1.png', ''),
(29, 10, 'Kiara', 'Sharma', '829452_user_512x512.png', ''),
(30, 11, 'SD', 'singh', 'images (2).png', ''),
(31, 11, 'Sahil', 'Dixit', 'images (2).png', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Precident', 1, 1),
(9, 'Vice Precident', 1, 2),
(10, 'Prime Minister', 1, 3),
(11, 'Minister', 1, 4),
(12, 'Chairman', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, 'S7jTyYQJXcaR9qK', '$2y$10$qaeoM6I4ytG1Q6pz2kLNMeX5oBGbHuKbQc9l6qPgWywMeMnwyjilS', 'Ashutosh', 'Dixit', 'images (1).png'),
(3, 'xU63zBLQWOHgkvb', '$2y$10$thqYOzk3FmKYN5QWF/9v0.S6EBObc1YOTleBJwN/mtK./zmvP/KU6', 'Amit', 'Kumar', 'images (1).png'),
(4, 'lNcUaq4hIYTFO6x', '$2y$10$KiQE5mAdHX8rt98VjB3cGucGSRQDwLtcLVphUVfvkW1Q9DxQRIpDi', 'Shivesh', 'Mishra', 'images (1).png'),
(5, 'A91fSMyxX5EvVqT', '$2y$10$Gs7uiDMEsEeZFp0j14CM5./XsXbswnCtdOQvrp2m/Mdx1upqItw42', 'Gaurav', 'kumar', 'images (2).png'),
(6, 'YzMSgWZKJ1L8CN9', '$2y$10$AoGYLz3GTDIJDiGt7mgRGOeILTe1Jr.fqSuZ9GPOLsvp0GClpxYrq', 'Smriti', 'Yadav', 'images.png'),
(7, 'ZcDVNjP283ivmSh', '$2y$10$404qTAeanvNN6zBsDIW6dOlJMJShF6QGlv/2JiBJyiqHXUQ.PhK6O', 'Satyam', 'Gupta', 'images (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 2, 19, 8),
(82, 2, 20, 9),
(83, 2, 28, 10),
(84, 2, 30, 11),
(85, 2, 24, 12),
(86, 5, 18, 8),
(87, 5, 21, 9),
(88, 5, 27, 10),
(89, 5, 31, 11),
(90, 5, 23, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
