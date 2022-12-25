-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2021 at 03:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `bday` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `files` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `gender`, `bday`, `email`, `password`, `number`, `city`, `pin`, `files`) VALUES
(56, 'wahid', 'male', '1997-02-24', 'wahidhusain33@gmail.com', '123456', '456987', 'lucknow', '954948', ''),
(57, 'Satyam', '', '1997-02-24', 'aazadlub3101@gmail.com', '789456', '546469748', 'lucknow', '97878', ''),
(61, 'wahid', 'male', '1997-02-24', 'aazadlub3101@gmail.com', '3565365', '7844876648', 'lucknow', '5465', 'files/Wahid.jpg'),
(62, 'Himanshu', 'male', '', '', '', '', '', '', ''),
(63, 'Himanshu', 'male', '1999-10-10', 'wahid33@gmail.com', '456456', '978546125', 'indore', '156156', 'files/IMG-20201227-WA0052.jpg'),
(64, 'Sudhanshu', 'other', '2009-01-01', 'sudha@gmail.com', '789456', '546465', 'lahore', '546546', 'files/IMG_5346.jpg'),
(65, 'dani', 'female', '1995-10-10', 'dani@gmail.com', '45124512', '784569423', 'newYork', '974854', ''),
(66, 'dani', 'female', '1995-10-10', 'dani@gmail.com', '', '784569423', 'newYork', '974854', 'files/contact-for-lawn-service.jpg'),
(67, 'sagar', 'male', '1994-12-29', 'sagar.expertdev@gmail.com', 'Sagarkit123$', '', '', '', ''),
(68, 'wahid Husain naqvi', 'male', '1997-02-24', 'wahidhusain333@gmail.com', 'naqvi', '4898978898', 'lucknow', '226003', ''),
(69, 'abc', 'male', '2000-10-10', 'asada33@gmail.com', '569568', '6', '', '', ''),
(70, 'abc', 'male', '2000-10-10', 'asada33@gmail.com', 'fgdgd', '69668', 'lihjg', '5686', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `distance` int(50) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `name`, `distance`, `is_available`) VALUES
(3, 'Charbagh', 0, 1),
(4, 'IndiraNagar', 10, 1),
(5, 'BBD', 30, 1),
(6, 'Barabanki', 60, 1),
(7, 'Faizabad', 100, 1),
(8, 'Basti', 150, 1),
(9, 'Gorakhpur', 210, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ride`
--

CREATE TABLE `tbl_ride` (
  `ride_id` int(10) NOT NULL,
  `ride_date` date DEFAULT NULL,
  `from` varchar(50) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `total_distance` varchar(50) DEFAULT NULL,
  `luggage` varchar(50) DEFAULT NULL,
  `total_fare` varchar(50) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `customer_user_id` int(10) DEFAULT NULL,
  `cab_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ride`
--

INSERT INTO `tbl_ride` (`ride_id`, `ride_date`, `from`, `to`, `total_distance`, `luggage`, `total_fare`, `status`, `customer_user_id`, `cab_type`) VALUES
(1, '2021-02-20', 'Charbagh', 'Indiranagar', '10', '15', '345', 2, NULL, 'CedMini'),
(36, '2021-02-25', 'IndiraNagar', 'Barabanki', '50', '10', '865', 0, 70, 'CedMini'),
(37, '2021-02-25', 'IndiraNagar', 'Barabanki', '50', '10', '865', 0, 70, 'CedMini'),
(38, '2021-02-25', 'IndiraNagar', 'Faizabad', '90', '20', '1381', 2, 87, 'CedMini'),
(39, '2021-02-25', 'IndiraNagar', 'Faizabad', '90', '20', '1381', 0, 87, 'CedMini'),
(46, '2021-02-25', 'Charbagh', 'BBD', '30', '20', '655', 0, 70, 'CedMini'),
(47, '2021-02-25', 'Charbagh', 'IndiraNagar', '10', '10', '345', 0, 70, 'CedMini'),
(48, '2021-02-25', 'Charbagh', 'IndiraNagar', '10', '10', '345', 0, 70, 'CedMini'),
(49, '2021-02-26', 'BBD', 'Barabanki', '30', '10', '685', 0, 70, 'CedRoyal'),
(50, '2021-02-26', 'Charbagh', 'Barabanki', '60', '10', '995', 0, 70, 'CedMini'),
(51, '2021-02-26', 'Charbagh', 'BBD', '30', '20', '735', 0, 70, 'CedRoyal'),
(52, '2021-02-26', 'Barabanki', 'IndiraNagar', '50', '20', '1015', 2, 70, 'CedRoyal'),
(53, '2021-02-26', 'Charbagh', 'Barabanki', '60', '20', '1155', 0, 70, 'CedRoyal'),
(54, '2021-02-26', 'IndiraNagar', 'BBD', '20', '20', '525', 0, 70, 'CedMini'),
(55, '2021-02-26', 'IndiraNagar', 'BBD', '20', '20', '525', 0, 70, 'CedMini'),
(56, '2021-02-26', 'IndiraNagar', 'BBD', '20', '20', '525', 0, 70, 'CedMini'),
(57, '2021-02-26', 'Charbagh', 'BBD', '30', '20', '655', 0, 70, 'CedMini'),
(58, '2021-02-26', 'IndiraNagar', 'BBD', '20', '20', '525', 0, 97, 'CedMini'),
(59, '2021-02-26', 'Charbagh', 'Faizabad', '100', '20', '1643', 2, 70, 'CedRoyal'),
(60, '2021-02-26', 'Charbagh', 'Faizabad', '100', '20', '1643', 1, 70, 'CedRoyal'),
(61, '2021-02-26', 'Charbagh', 'IndiraNagar', '10', '20', '455', 1, 70, 'CedRoyal'),
(62, '2021-02-26', 'Charbagh', 'BBD', '30', '52', '755', 0, 97, 'CedMini'),
(63, '2021-02-26', 'Charbagh', 'Barabanki', '60', '20', '1155', 1, 70, 'CedRoyal'),
(64, '2021-02-26', 'BBD', 'IndiraNagar', '20', '15', '525', 2, 97, 'CedMini'),
(65, '2021-02-26', 'IndiraNagar', 'BBD', '20', '20', '525', 1, 97, 'CedMini'),
(66, '2021-02-26', 'IndiraNagar', 'Barabanki', '50', '25', '1015', 1, 70, 'CedMini'),
(67, '2021-02-27', 'BBD', 'Barabanki', '30', '15', '655', 1, 70, 'CedMini'),
(68, '2021-02-27', 'BBD', 'IndiraNagar', '20', '15', '595', 1, 70, 'CedRoyal'),
(69, '2021-02-27', 'IndiraNagar', 'BBD', '20', '25', '625', 2, 97, 'CedMini');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) NOT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `dateofsignup` date DEFAULT current_timestamp(),
  `mobile` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `is_admin` int(1) DEFAULT NULL,
  `profile` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `email_id`, `name`, `dateofsignup`, `mobile`, `status`, `password`, `is_admin`, `profile`) VALUES
(70, 'yashikaawsthi@gmail.com', 'Yashika', '2021-02-22', '978546121', 1, '2021', 0, ''),
(72, 'wahid3003@gmail.com', 'Wahid', '2021-02-23', '7844876648', 1, '3102', 0, ''),
(87, 'rishabh20@gmail.com', 'Rishabh', '2021-02-25', '9785469485', 0, '3103', 0, ''),
(95, 'admin@gmail.com', 'admin', '2021-02-25', '9781549748', 1, 'Password123$', 1, ''),
(97, 'wahid303@gmail.com', 'Wahid', '2021-02-26', '7985465545', 1, '3101', 0, ''),
(98, 'virat@gmail.com', 'virat', '2021-02-27', '9781541231', 1, 'kohli', 0, 'uploads/1333940219.png'),
(99, 'faheem@gmail.com', 'faheem', '2021-02-27', '97546546978', 1, '123456', 0, 'uploads/1095550684.png'),
(100, 'sss@gmail.com', 'sss', '2021-02-27', '9785514255', 1, '4564', 0, 'uploads/1443143715.png'),
(101, 'asas@gmail.com', 'asas', '2021-02-27', '978154615', 1, '789456', 0, 'uploads/1906325720.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  ADD PRIMARY KEY (`ride_id`),
  ADD KEY `customer_user_id` (`customer_user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  MODIFY `ride_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  ADD CONSTRAINT `tbl_ride_ibfk_1` FOREIGN KEY (`customer_user_id`) REFERENCES `tbl_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
