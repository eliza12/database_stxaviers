-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2016 at 10:51 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `st_xaviers`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignment_no` int(11) NOT NULL,
  `post_date` date DEFAULT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `faculty_name` varchar(50) DEFAULT NULL,
  `section` varchar(1) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batch_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_no`) VALUES
(2010),
(2011),
(2012),
(2013),
(2014),
(2015);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `batch_no` int(11) DEFAULT NULL,
  `IDCardNo` varchar(15) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college_events`
--

CREATE TABLE `college_events` (
  `event_no` int(11) NOT NULL,
  `event_date` date DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_no` int(11) DEFAULT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_no`, `dept_name`) VALUES
(8, 'A Levels'),
(1, 'Department of Computer Science'),
(6, 'Department of Major Arts'),
(2, 'Department of Management'),
(4, 'Department of Microbiology'),
(3, 'Department of Physics'),
(7, 'Department of Social Works'),
(9, 'Plus 2');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_no` int(11) NOT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `faculty_name` varchar(50) DEFAULT NULL,
  `section` varchar(1) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_name` varchar(50) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_name`, `dept_name`) VALUES
('A levels', 'A Levels'),
('B.Sc. CSIT', 'Department of Computer Science'),
('BIM', 'Department of Computer Science'),
('BA English', 'Department of Major Arts'),
('BA Social Work', 'Department of Major Arts'),
('BBS', 'Department of Management'),
('MBS', 'Department of Management'),
('B.Sc. Microbiology', 'Department of Microbiology'),
('M.Sc. Microbiology', 'Department of Microbiology'),
('B.Sc. Physics', 'Department of Physics'),
('BSW', 'Department of Social Works'),
('Plus 2', 'Plus 2');

-- --------------------------------------------------------

--
-- Table structure for table `guardian_info`
--

CREATE TABLE `guardian_info` (
  `IDCardNo` varchar(15) DEFAULT NULL,
  `g_fname` varchar(20) DEFAULT NULL,
  `g_mname` varchar(20) DEFAULT NULL,
  `g_lname` varchar(20) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  `g_address` varchar(50) DEFAULT NULL,
  `g_contact` int(11) DEFAULT NULL,
  `g_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardian_info`
--

INSERT INTO `guardian_info` (`IDCardNo`, `g_fname`, `g_mname`, `g_lname`, `relation`, `g_address`, `g_contact`, `g_email`) VALUES
('013BIM001', 'Anupam', 'Bahadur', 'Shrestha', 'Father', 'Kupondole', 5539462, 'anupam.shrestha@gmail.com'),
('013BIM002', 'Garima', '', 'Karki', 'Mother', 'Putalisadak', 4123654, ''),
('014BSCCSIT003', 'Shankar', 'Kumar', 'Thakur', 'Father', 'Balkot', 0, 'shankar.kumar@hotmail.com'),
('013BASW010', 'Krishna', '', 'Sikhrakar', 'Father', 'New Road', 4241684, ''),
('012MSCMB002', 'Govinda', 'Lal', 'Rajbhandari', 'Father', 'Sinamangal', 4110774, 'govindalal@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `regn_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`regn_no`) VALUES
(1001),
(1002),
(1003),
(1004),
(1005);

-- --------------------------------------------------------

--
-- Table structure for table `student_college_details`
--

CREATE TABLE `student_college_details` (
  `regn_no` int(11) DEFAULT NULL,
  `IDCardNo` varchar(15) NOT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `s_level` varchar(20) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `faculty_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_college_details`
--

INSERT INTO `student_college_details` (`regn_no`, `IDCardNo`, `batch_no`, `s_level`, `dept_name`, `faculty_name`) VALUES
(1004, '012MSCMB002', 2012, 'I year', 'Department of Microbiology', 'M.Sc. Microbiology'),
(1005, '013BASW010', 2013, 'I year', 'Department of Major Arts', 'BA Social Work'),
(1001, '013BIM001', 2013, 'I semester', 'Department of Computer Science', 'BIM'),
(1002, '013BIM002', 2013, 'I semester', 'Department of Computer Science', 'BIM'),
(1003, '014BSCCSIT003', 2014, 'I semester', 'Department of Computer Science', 'B.Sc. CSIT');

-- --------------------------------------------------------

--
-- Table structure for table `student_personal_details`
--

CREATE TABLE `student_personal_details` (
  `IDCardNo` varchar(15) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `bloodgroup` varchar(6) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_personal_details`
--

INSERT INTO `student_personal_details` (`IDCardNo`, `fname`, `mname`, `lname`, `DOB`, `sex`, `bloodgroup`, `address`, `contact`, `email`) VALUES
('013BIM001', 'Aakriti', '', 'Shrestha', '1996-08-15', 'F', 'O -ve', 'Kupondole', 5539462, 'aakriti.shrestha@gmail.com'),
('013BIM002', 'Aashish', '', 'Karki', '1995-06-08', 'M', 'A +ve', 'Putalisadak', 4123654, 'aashish.y2z@gmail.com'),
('014BSCCSIT003', 'Dhiraj', 'Kumar', 'Thakur', '1995-01-06', 'M', 'B +ve', 'Balkot', 4235466, 'thakur.dhiraj@gmail.com'),
('013BASW010', 'Dipika', '', 'Sikhrakar', '1995-06-29', 'F', 'O +ve', 'New road', 4123456, 'sweet.dipika@gmail.com'),
('012MSCMB002', 'Angelica', '', 'Rajbhandari', '1990-04-27', 'F', 'A +ve', 'Sinamangal', 4110704, 'rajbhandari.angie@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignment_no`),
  ADD KEY `batch_no` (`batch_no`),
  ADD KEY `faculty_name` (`faculty_name`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_no`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD KEY `batch_no` (`batch_no`),
  ADD KEY `IDCardNo` (`IDCardNo`);

--
-- Indexes for table `college_events`
--
ALTER TABLE `college_events`
  ADD PRIMARY KEY (`event_no`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_no`),
  ADD KEY `batch_no` (`batch_no`),
  ADD KEY `faculty_name` (`faculty_name`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_name`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `guardian_info`
--
ALTER TABLE `guardian_info`
  ADD KEY `IDCardNo` (`IDCardNo`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`regn_no`);

--
-- Indexes for table `student_college_details`
--
ALTER TABLE `student_college_details`
  ADD PRIMARY KEY (`IDCardNo`),
  ADD KEY `regn_no` (`regn_no`),
  ADD KEY `batch_no` (`batch_no`),
  ADD KEY `dept_name` (`dept_name`),
  ADD KEY `faculty_name` (`faculty_name`);

--
-- Indexes for table `student_personal_details`
--
ALTER TABLE `student_personal_details`
  ADD KEY `IDCardNo` (`IDCardNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`batch_no`) REFERENCES `batch` (`batch_no`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`faculty_name`) REFERENCES `faculty` (`faculty_name`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`batch_no`) REFERENCES `batch` (`batch_no`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`IDCardNo`) REFERENCES `student_college_details` (`IDCardNo`);

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `downloads_ibfk_1` FOREIGN KEY (`batch_no`) REFERENCES `batch` (`batch_no`),
  ADD CONSTRAINT `downloads_ibfk_2` FOREIGN KEY (`faculty_name`) REFERENCES `faculty` (`faculty_name`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`);

--
-- Constraints for table `guardian_info`
--
ALTER TABLE `guardian_info`
  ADD CONSTRAINT `guardian_info_ibfk_1` FOREIGN KEY (`IDCardNo`) REFERENCES `student_college_details` (`IDCardNo`);

--
-- Constraints for table `student_college_details`
--
ALTER TABLE `student_college_details`
  ADD CONSTRAINT `student_college_details_ibfk_1` FOREIGN KEY (`regn_no`) REFERENCES `registration` (`regn_no`),
  ADD CONSTRAINT `student_college_details_ibfk_2` FOREIGN KEY (`batch_no`) REFERENCES `batch` (`batch_no`),
  ADD CONSTRAINT `student_college_details_ibfk_3` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`),
  ADD CONSTRAINT `student_college_details_ibfk_4` FOREIGN KEY (`faculty_name`) REFERENCES `faculty` (`faculty_name`);

--
-- Constraints for table `student_personal_details`
--
ALTER TABLE `student_personal_details`
  ADD CONSTRAINT `student_personal_details_ibfk_1` FOREIGN KEY (`IDCardNo`) REFERENCES `student_college_details` (`IDCardNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
