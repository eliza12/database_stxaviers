-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2016 at 08:46 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xavier_diaries`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `CR_name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `label` varchar(20) DEFAULT NULL
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
(2013);

-- --------------------------------------------------------

--
-- Table structure for table `class_events`
--

CREATE TABLE `class_events` (
  `posted_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `label` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college_events`
--

CREATE TABLE `college_events` (
  `posted_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_name` varchar(30) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_name`, `dept_name`) VALUES
('A Levels', 'A Levels'),
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
('11', 'Plus 2'),
('12', 'Plus 2');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_no` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_no`, `dept_name`) VALUES
(7, 'A Levels'),
(1, 'Department of Computer Science'),
(5, 'Department of Major Arts'),
(2, 'Department of Management'),
(4, 'Department of Microbiology'),
(3, 'Department of Physics'),
(6, 'Department of Social Works'),
(8, 'Plus 2');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `posted_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `label` varchar(20) DEFAULT NULL,
  `files` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1003);

-- --------------------------------------------------------

--
-- Table structure for table `student_college_details`
--

CREATE TABLE `student_college_details` (
  `regn_no` int(11) DEFAULT NULL,
  `IDCardNo` varchar(15) NOT NULL,
  `batch_no` int(11) DEFAULT NULL,
  `study_level` varchar(10) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `course_name` varchar(30) DEFAULT NULL,
  `label` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_college_details`
--

INSERT INTO `student_college_details` (`regn_no`, `IDCardNo`, `batch_no`, `study_level`, `dept_name`, `course_name`, `label`) VALUES
(1001, '013BIM002', 2013, 'Bachelor', 'Department of Computer Science', 'BIM', '2013-bim-A'),
(1002, '013BIM003', 2013, 'Bachelor', 'Department of Computer Science', 'BIM', '2013-bim-A'),
(1003, '013BIM014', 2013, 'Bachelor', 'Department of Computer Science', 'BIM', '2013-bim-A');

-- --------------------------------------------------------

--
-- Table structure for table `student_login_details`
--

CREATE TABLE `student_login_details` (
  `IDCardNo` varchar(15) DEFAULT NULL,
  `std_password` varchar(255) DEFAULT NULL,
  `label` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_parents_info`
--

CREATE TABLE `student_parents_info` (
  `IDCardNo` varchar(15) DEFAULT NULL,
  `father_fname` varchar(20) DEFAULT NULL,
  `father_mname` varchar(20) DEFAULT NULL,
  `father_lname` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(20) DEFAULT NULL,
  `father_livingStatus` tinyint(1) DEFAULT NULL,
  `mother_fname` varchar(20) DEFAULT NULL,
  `mother_mname` varchar(20) DEFAULT NULL,
  `mother_lname` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(20) DEFAULT NULL,
  `mother_livingStatus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_parents_info`
--

INSERT INTO `student_parents_info` (`IDCardNo`, `father_fname`, `father_mname`, `father_lname`, `father_occupation`, `father_livingStatus`, `mother_fname`, `mother_mname`, `mother_lname`, `mother_occupation`, `mother_livingStatus`) VALUES
('013BIM002', 'Nawaraj', 'Bahadur', 'Shrestha', 'Businessman', 0, 'Anugya', 'Devi', 'Shrestha', '', 0),
('013BIM003', 'Olak', 'Bahadur', 'Karki', '', 0, 'Garima', '', 'KArki', '', 0),
('013BIM014', 'Manoj', 'Kumar', 'Thakur', 'Businessman', 0, 'Maya', 'Kumari', 'Thakur', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_personal_details`
--

CREATE TABLE `student_personal_details` (
  `regn_no` int(11) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `DOB_AD` varchar(20) DEFAULT NULL,
  `DOB_BS` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `bloodgroup` varchar(10) DEFAULT NULL,
  `birthplace` varchar(20) DEFAULT NULL,
  `contact` bigint(20) NOT NULL,
  `lastInstitution` varchar(50) DEFAULT NULL,
  `permanentAddress` varchar(60) DEFAULT NULL,
  `temporaryAddress` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_personal_details`
--

INSERT INTO `student_personal_details` (`regn_no`, `fname`, `mname`, `lname`, `DOB_AD`, `DOB_BS`, `gender`, `nationality`, `bloodgroup`, `birthplace`, `contact`, `lastInstitution`, `permanentAddress`, `temporaryAddress`) VALUES
(1001, 'Aakriti', '', 'Shrestha', '1995-08-08', '2052-06-20', 'F', 'Nepali', 'O positive', 'Kathmandu', 9823446655, 'St. Xavier Jawalakhel', 'Kupondole, Lalitpur', 'Kupondole, Lalitpur'),
(1002, 'Aashish', '', 'Karki', '1995-06-08', '2052-02-25', 'M', 'Nepali', 'A positive', 'Kathmandu', 9813816729, 'Trinity International College', 'Dolakha', 'Putalisadak, Kathmandu'),
(1003, 'Dhiraj', 'Kumar', 'Thakur', '1994-08-20', '2051-06-06', 'M', 'Nepali', 'A positive', 'Lahan', 9812345678, 'Pentagon International College', 'Lahan', 'Balkot, Bhaktapur');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE `teacher_details` (
  `teacherID` varchar(15) NOT NULL,
  `t_fname` varchar(20) DEFAULT NULL,
  `t_mname` varchar(20) DEFAULT NULL,
  `t_lname` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `citizenship_no` varchar(30) DEFAULT NULL,
  `marital_status` tinyint(1) DEFAULT NULL,
  `temporaryAddress` varchar(50) DEFAULT NULL,
  `permanentAddress` varchar(50) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login_details`
--

CREATE TABLE `teacher_login_details` (
  `teacherID` varchar(15) DEFAULT NULL,
  `std_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_no`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_name`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

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
  ADD KEY `course_name` (`course_name`);

--
-- Indexes for table `student_parents_info`
--
ALTER TABLE `student_parents_info`
  ADD KEY `IDCardNo` (`IDCardNo`);

--
-- Indexes for table `student_personal_details`
--
ALTER TABLE `student_personal_details`
  ADD KEY `regn_no` (`regn_no`);

--
-- Indexes for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD PRIMARY KEY (`teacherID`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`);

--
-- Constraints for table `student_college_details`
--
ALTER TABLE `student_college_details`
  ADD CONSTRAINT `student_college_details_ibfk_1` FOREIGN KEY (`regn_no`) REFERENCES `registration` (`regn_no`),
  ADD CONSTRAINT `student_college_details_ibfk_2` FOREIGN KEY (`batch_no`) REFERENCES `batch` (`batch_no`),
  ADD CONSTRAINT `student_college_details_ibfk_3` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`),
  ADD CONSTRAINT `student_college_details_ibfk_4` FOREIGN KEY (`course_name`) REFERENCES `courses` (`course_name`);

--
-- Constraints for table `student_parents_info`
--
ALTER TABLE `student_parents_info`
  ADD CONSTRAINT `student_parents_info_ibfk_1` FOREIGN KEY (`IDCardNo`) REFERENCES `student_college_details` (`IDCardNo`);

--
-- Constraints for table `student_personal_details`
--
ALTER TABLE `student_personal_details`
  ADD CONSTRAINT `student_personal_details_ibfk_1` FOREIGN KEY (`regn_no`) REFERENCES `registration` (`regn_no`);

--
-- Constraints for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD CONSTRAINT `teacher_details_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
