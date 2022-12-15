-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 12:00 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cngbooking`
--

CREATE TABLE IF NOT EXISTS `cngbooking` (
`id` int(20) NOT NULL,
  `pid` int(20) NOT NULL,
  `username` varchar(42) NOT NULL,
  `usermo` varchar(42) NOT NULL,
  `cngkg` varchar(42) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cngbooking`
--

INSERT INTO `cngbooking` (`id`, `pid`, `username`, `usermo`, `cngkg`) VALUES
(2, 3, 'Nikhil Patil', '8788201053', '9'),
(3, 3, 'Nikhil Patil', '8788201053', '50');

-- --------------------------------------------------------

--
-- Table structure for table `cngpump`
--

CREATE TABLE IF NOT EXISTS `cngpump` (
`id` int(20) NOT NULL,
  `pumpname` varchar(42) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(42) NOT NULL,
  `taluka` varchar(42) NOT NULL,
  `district` varchar(42) NOT NULL,
  `opentime` varchar(42) NOT NULL,
  `closetime` varchar(42) NOT NULL,
  `mobilenumber` varchar(42) NOT NULL,
  `latitude` varchar(42) NOT NULL,
  `longitude` varchar(42) NOT NULL,
  `password` varchar(42) NOT NULL,
  `cngkg` varchar(42) NOT NULL,
  `status` varchar(42) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cngpump`
--

INSERT INTO `cngpump` (`id`, `pumpname`, `address`, `city`, `taluka`, `district`, `opentime`, `closetime`, `mobilenumber`, `latitude`, `longitude`, `password`, `cngkg`, `status`) VALUES
(3, 'Kundan CNG PUMP', 'Nimzari Naka', 'Shirpur', 'Shirpur', 'Dhule', '7', '8', '9096898113', '0', '0', 'K123', '999941', 'Approved'),
(4, 'Yash CNG Pump', 'Shindkheda', 'Shindkheda', 'Shindkheda', 'Dhule', '8', '8', '12346789', '0', '0', '123', 'cng', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(42) NOT NULL,
  `password` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('patilharsh@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `mono` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `mono`, `city`) VALUES
(1, 'Nikhil Patil', 'patilnikhil@gmail.com', '123', '8788201053', 'Shirpur'),
(2, 'Nirmal More', 'morenirmal@123', '123', '123456789', 'Parola');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cngbooking`
--
ALTER TABLE `cngbooking`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cngpump`
--
ALTER TABLE `cngpump`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cngbooking`
--
ALTER TABLE `cngbooking`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cngpump`
--
ALTER TABLE `cngpump`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
