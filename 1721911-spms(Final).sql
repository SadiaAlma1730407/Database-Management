-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 07:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `AssessmentNo` int(10) NOT NULL,
  `Marks` int(10) NOT NULL,
  `CoID` int(10) NOT NULL,
  `SectionID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`AssessmentNo`, `Marks`, `CoID`, `SectionID`) VALUES
(1, 165, 1, 1),
(2, 35, 2, 1),
(3, 50, 3, 1),
(4, 30, 4, 1),
(5, 165, 1, 2),
(6, 35, 2, 2),
(7, 50, 3, 2),
(8, 30, 4, 2),
(9, 165, 1, 1),
(10, 35, 2, 1),
(11, 50, 3, 1),
(12, 30, 4, 1),
(13, 165, 1, 2),
(14, 35, 2, 2),
(15, 50, 3, 2),
(16, 30, 4, 2),
(17, 165, 1, 1),
(18, 35, 2, 1),
(19, 50, 3, 1),
(20, 30, 4, 1),
(21, 165, 1, 2),
(22, 35, 2, 2),
(23, 50, 3, 2),
(24, 30, 4, 2),
(25, 165, 1, 1),
(26, 35, 2, 1),
(27, 50, 3, 1),
(28, 30, 4, 1),
(29, 165, 1, 2),
(30, 35, 2, 2),
(31, 50, 3, 2),
(32, 30, 4, 2),
(33, 165, 1, 1),
(34, 35, 2, 1),
(35, 50, 3, 1),
(36, 30, 4, 1),
(37, 165, 1, 2),
(38, 35, 2, 2),
(39, 50, 3, 2),
(40, 30, 4, 2),
(41, 165, 1, 1),
(42, 35, 2, 1),
(43, 50, 3, 1),
(44, 30, 4, 1),
(45, 165, 1, 2),
(46, 35, 2, 2),
(47, 50, 3, 2),
(48, 30, 4, 2),
(49, 165, 1, 1),
(50, 35, 2, 1),
(51, 50, 3, 1),
(52, 30, 4, 1),
(53, 165, 1, 2),
(54, 35, 2, 2),
(55, 50, 3, 2),
(56, 30, 4, 2),
(57, 165, 1, 1),
(58, 35, 2, 1),
(59, 50, 3, 1),
(60, 30, 4, 1),
(61, 165, 1, 2),
(62, 35, 2, 2),
(63, 50, 3, 2),
(64, 30, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

CREATE TABLE `co` (
  `CoID` int(10) NOT NULL,
  `CoNo` int(10) NOT NULL,
  `CourseID` int(10) NOT NULL,
  `PloID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co`
--

INSERT INTO `co` (`CoID`, `CoNo`, `CourseID`, `PloID`) VALUES
(1, 1, 303, 2),
(2, 2, 303, 3),
(3, 3, 303, 4),
(4, 4, 303, 6),
(5, 1, 101, 1),
(6, 2, 101, 2),
(7, 3, 101, 3),
(8, 4, 101, 4),
(9, 1, 104, 5),
(10, 2, 104, 6),
(11, 3, 104, 7),
(12, 4, 104, 8),
(13, 1, 201, 9),
(14, 2, 201, 10),
(15, 3, 201, 11),
(16, 4, 201, 12),
(17, 1, 203, 2),
(18, 2, 203, 3),
(19, 3, 203, 4),
(20, 4, 203, 5),
(21, 1, 204, 6),
(22, 2, 204, 7),
(23, 3, 204, 8),
(25, 1, 210, 8),
(26, 2, 210, 10),
(27, 3, 210, 11),
(28, 4, 210, 12),
(29, 1, 211, 3),
(30, 2, 211, 4),
(31, 3, 211, 5),
(32, 4, 211, 6),
(33, 1, 213, 7),
(34, 2, 213, 8),
(35, 3, 213, 9),
(36, 4, 213, 10);

-- --------------------------------------------------------

--
-- Table structure for table `contribution`
--

CREATE TABLE `contribution` (
  `student` text NOT NULL,
  `contribution` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contribution`
--

INSERT INTO `contribution` (`student`, `contribution`) VALUES
('CSE', 250),
('EEE', 200),
('BBA', 258),
('Life Science', 258),
('Pharmacy', 258),
('ENV', 100);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(10) NOT NULL,
  `CourseName` varchar(50) NOT NULL,
  `noOfCredits` int(10) NOT NULL,
  `ProgramID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseName`, `noOfCredits`, `ProgramID`) VALUES
(101, 'Introduction to Computer Programming', 3, 'CSE'),
(104, 'Electrical Circuit Analysis', 3, 'CSE'),
(201, 'Discrete Mathematics', 3, 'CSE'),
(203, 'Data Structure', 3, 'CSE'),
(204, 'Digital Logic Design', 3, 'CSE'),
(210, 'Electronics 1', 3, 'CSE'),
(211, 'Algorithm', 3, 'CSE'),
(213, 'Object Oriented Programming', 3, 'CSE'),
(303, 'Database Management', 3, 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE `dean` (
  `DeanName` varchar(30) NOT NULL,
  `JoinDate` datetime(3) NOT NULL,
  `LeaveDate` datetime(3) NOT NULL,
  `SchoolID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`DeanName`, `JoinDate`, `LeaveDate`, `SchoolID`) VALUES
('Yusuf Mahbubul Islam', '2010-01-01 00:00:00.000', '2012-01-01 00:00:00.000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` varchar(10) NOT NULL,
  `DepartmentName` varchar(50) NOT NULL,
  `SchoolID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`, `SchoolID`) VALUES
('CSE', 'Computer Science and Engineering ', 1),
('EEE', 'Electrical and Electronic Engineering', 1),
('ENV', 'Environmental Science', 3),
('FIN', 'Finance ', 2),
('MKT', 'Marketing', 2);

-- --------------------------------------------------------

--
-- Table structure for table `departmenthead`
--

CREATE TABLE `departmenthead` (
  `HeadName` varchar(30) NOT NULL,
  `JoinDate` datetime(3) NOT NULL,
  `LeaveDate` datetime(3) NOT NULL,
  `SchoolID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departmenthead`
--

INSERT INTO `departmenthead` (`HeadName`, `JoinDate`, `LeaveDate`, `SchoolID`) VALUES
('Dr.Mahady Hasan', '2010-01-01 00:00:00.000', '2012-01-01 00:00:00.000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `EnrollmentID` int(10) NOT NULL,
  `StudentID` int(10) NOT NULL,
  `EnrollmentYear` year(4) NOT NULL,
  `ProgramID` int(10) NOT NULL,
  `SectionID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`EnrollmentID`, `StudentID`, `EnrollmentYear`, `ProgramID`, `SectionID`) VALUES
(1, 1528882, 2015, 1, 10),
(2, 1612985, 2016, 1, 2),
(3, 1613273, 2016, 1, 13),
(4, 1614142, 2016, 1, 14),
(5, 1614733, 2016, 1, 16),
(6, 1616161, 2016, 1, 18),
(7, 1622731, 2016, 1, 14),
(8, 1623112, 2016, 1, 2),
(9, 1625654, 2016, 1, 17),
(10, 1633554, 2016, 1, 16),
(11, 1634352, 2016, 1, 3),
(12, 1641252, 2016, 1, 13),
(13, 1645333, 2016, 1, 3),
(14, 1646434, 2016, 1, 3),
(15, 1653725, 2016, 1, 7),
(16, 1653725, 2016, 1, 16),
(17, 1654432, 2016, 1, 5),
(18, 1661638, 2016, 1, 6),
(19, 1662147, 2016, 1, 7),
(20, 1665491, 2016, 1, 8),
(21, 1665555, 2016, 1, 8),
(22, 1668314, 2016, 1, 9),
(23, 1669953, 2016, 1, 10),
(24, 1674181, 2016, 1, 8),
(25, 1678812, 2016, 1, 12),
(26, 1691291, 2016, 1, 4),
(27, 1691483, 2016, 1, 9),
(28, 1695837, 2016, 1, 15),
(29, 1696326, 2016, 1, 16),
(30, 1721527, 2017, 1, 4),
(31, 1721684, 2017, 1, 3),
(32, 1721911, 2017, 1, 1),
(33, 1722006, 2017, 1, 4),
(34, 1730407, 2017, 1, 2),
(35, 1730791, 2017, 1, 1),
(36, 1831050, 2018, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `EvaluationNo` int(10) NOT NULL,
  `Obtainedmarks` int(10) NOT NULL,
  `AssessmentID` int(10) NOT NULL,
  `EnrollmentID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`EvaluationNo`, `Obtainedmarks`, `AssessmentID`, `EnrollmentID`) VALUES
(1, 55, 1, 1),
(2, 26, 2, 1),
(3, 28, 3, 1),
(4, 24, 4, 1),
(5, 45, 1, 2),
(6, 13, 2, 2),
(7, 23, 3, 2),
(8, 23, 4, 2),
(9, 35, 9, 3),
(10, 8, 10, 3),
(11, 13, 11, 3),
(12, 6, 12, 3),
(13, 0, 9, 4),
(14, 0, 10, 4),
(15, 0, 11, 4),
(16, 0, 12, 4),
(17, 58, 1, 5),
(18, 10, 2, 5),
(19, 4, 3, 5),
(20, 24, 4, 5),
(21, 5, 9, 6),
(22, 0, 10, 6),
(23, 0, 11, 6),
(24, 0, 12, 6),
(25, 52, 1, 7),
(26, 19, 2, 7),
(27, 4, 3, 7),
(28, 27, 4, 7),
(29, 85, 9, 8),
(30, 19, 10, 8),
(31, 15, 11, 8),
(32, 0, 12, 8),
(33, 15, 5, 9),
(34, 15, 6, 9),
(35, 0, 7, 9),
(36, 0, 8, 9),
(37, 95, 5, 10),
(38, 27, 6, 10),
(39, 18, 7, 10),
(40, 23, 8, 10),
(41, 56, 5, 11),
(42, 10, 6, 11),
(43, 17, 7, 11),
(44, 30, 8, 11),
(45, 31, 9, 12),
(46, 13, 10, 12),
(47, 4, 11, 12),
(48, 9, 12, 12),
(49, 34, 9, 13),
(50, 27, 10, 13),
(51, 4, 11, 13),
(52, 6, 12, 13),
(53, 54, 9, 14),
(54, 13, 10, 14),
(55, 6, 11, 14),
(56, 11, 12, 14),
(57, 139, 5, 15),
(58, 25, 6, 15),
(59, 22, 7, 15),
(60, 34, 8, 15),
(61, 74, 5, 16),
(62, 9, 6, 16),
(63, 25, 7, 16),
(64, 24, 8, 16),
(65, 76, 37, 17),
(66, 30, 50, 17),
(67, 32, 54, 17),
(68, 46, 59, 17),
(69, 12, 16, 18),
(70, 0, 10, 18),
(71, 0, 36, 18),
(72, 27, 54, 18),
(73, 9, 63, 19),
(74, 40, 19, 19),
(75, 10, 63, 19),
(76, 37, 59, 19),
(77, 28, 60, 20),
(78, 112, 61, 20),
(79, 18, 53, 20),
(80, 14, 56, 20),
(81, 97, 49, 21),
(82, 34, 35, 21),
(83, 48, 43, 21),
(84, 20, 45, 21),
(85, 56, 9, 22),
(86, 32, 11, 22),
(87, 34, 19, 22),
(88, 23, 16, 22),
(89, 45, 27, 23),
(90, 65, 33, 23),
(91, 78, 37, 23),
(92, 12, 58, 23),
(93, 32, 58, 24),
(94, 44, 61, 24),
(95, 67, 49, 24),
(96, 21, 59, 24),
(97, 28, 61, 25),
(98, 67, 25, 25),
(99, 114, 17, 25),
(100, 14, 54, 25),
(101, 87, 1, 26),
(102, 53, 49, 26),
(103, 61, 61, 26),
(104, 36, 23, 26),
(105, 14, 15, 27),
(106, 23, 14, 27),
(107, 34, 34, 27),
(108, 97, 21, 27),
(109, 45, 5, 28),
(110, 87, 25, 28),
(111, 57, 37, 28),
(112, 12, 10, 28),
(113, 28, 38, 29),
(114, 23, 58, 29),
(115, 115, 41, 29),
(116, 38, 47, 29),
(117, 0, 45, 30),
(118, 0, 23, 30),
(119, 0, 25, 30),
(120, 10, 17, 30),
(121, 29, 54, 31),
(122, 33, 1, 31),
(123, 0, 23, 31),
(124, 61, 57, 31),
(125, 36, 47, 32),
(126, 7, 17, 32),
(127, 27, 43, 32),
(128, 9, 21, 32),
(129, 165, 1, 33),
(130, 50, 3, 33),
(131, 30, 4, 33),
(132, 35, 2, 33),
(133, 16, 32, 34),
(134, 18, 22, 33),
(135, 29, 12, 33),
(136, 41, 59, 34),
(137, 118, 61, 35),
(138, 110, 53, 35),
(139, 10, 32, 35),
(140, 2, 38, 35),
(141, 14, 53, 36),
(142, 67, 9, 36),
(143, 0, 34, 36),
(144, 34, 7, 36);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `InstructorID` int(10) NOT NULL,
  `InstructorName` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`InstructorID`, `InstructorName`, `Gender`) VALUES
(1234, 'Lamiya Hasan', 'Female'),
(1426, 'Ms.Sadita Ahmed', 'Female'),
(4321, 'Rakib Hossain', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `loginuser`
--

CREATE TABLE `loginuser` (
  `userid` int(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginuser`
--

INSERT INTO `loginuser` (`userid`, `password`, `usertype`) VALUES
(1234, 'strawberry12', 'Admin'),
(1426, 'strawberry12', 'Instructor'),
(1722006, 'strawberry12', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `plo`
--

CREATE TABLE `plo` (
  `PloNO` int(10) NOT NULL,
  `ProgramID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plo`
--

INSERT INTO `plo` (`PloNO`, `ProgramID`) VALUES
(1, 'CSE'),
(2, 'CSE'),
(3, 'CSE'),
(4, 'CSE'),
(5, 'CSE'),
(6, 'CSE'),
(7, 'CSE'),
(8, 'CSE'),
(9, 'CSE'),
(10, 'CSE'),
(11, 'CSE'),
(12, 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `ProgramID` int(30) NOT NULL,
  `ProgramName` varchar(30) NOT NULL,
  `DepartmentID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`ProgramID`, `ProgramName`, `DepartmentID`) VALUES
(1, 'Computer Science and Engineeri', 'CSE'),
(2, 'Computer Science', 'CSE'),
(3, 'Computer Engineering ', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `SchoolID` int(10) NOT NULL,
  `SchoolName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`SchoolID`, `SchoolName`) VALUES
(1, 'School of Computer Science and Engineering '),
(2, 'School of Business '),
(3, 'School of Environmental Science and Management');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `SectionID` int(10) NOT NULL,
  `CourseId` int(10) NOT NULL,
  `SectionNo` int(10) NOT NULL,
  `FacultyID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`SectionID`, `CourseId`, `SectionNo`, `FacultyID`) VALUES
(1, 303, 1, 1426),
(2, 303, 2, 1426),
(3, 101, 1, 1234),
(4, 101, 2, 1234),
(5, 104, 1, 4321),
(6, 104, 2, 4321),
(7, 201, 1, 5678),
(8, 201, 2, 5678),
(9, 203, 1, 2345),
(10, 203, 2, 2345),
(11, 204, 1, 2134),
(12, 204, 2, 2134),
(13, 210, 1, 3456),
(14, 210, 2, 3456),
(15, 211, 1, 6781),
(16, 211, 2, 6781),
(17, 213, 1, 4567),
(18, 213, 2, 4567);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SemesterID` int(10) NOT NULL,
  `SemesterName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SemesterID`, `SemesterName`) VALUES
(1, 'Spring'),
(2, 'Summer'),
(3, 'Fall');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `Name`, `Gender`) VALUES
(1528882, 'Asif Khan', 'Male'),
(1612985, 'Mohammad Kawser', 'Male'),
(1613273, 'Asaduzzaman Soumit', 'Male'),
(1614142, 'Marium Islam', 'Female'),
(1614733, 'Shafi', 'Male'),
(1616161, 'Shakil', 'Male'),
(1622731, 'Shakib Khan', 'Male'),
(1623112, 'Fahim ', 'Male'),
(1625654, 'Marian Hossian', 'Female'),
(1633554, 'Sumiya', 'Female'),
(1634352, 'Rizvi', 'Male'),
(1641252, 'Tasnia', 'Female'),
(1645333, 'Rochi', 'Male'),
(1646434, 'Kabil', 'Male'),
(1653725, 'Hamid', 'Male'),
(1654432, 'Karima', 'Female'),
(1661638, 'Famida', 'Female'),
(1662147, 'Charlie', 'Male'),
(1665491, 'Abdullah', 'Male'),
(1665555, 'Rakib', 'Male'),
(1668314, 'Zahid Hassan', 'Male'),
(1669953, 'Saikat Khandoker', 'Male'),
(1674181, 'Zareen', 'Female'),
(1678812, 'Tasnova', 'Female'),
(1691291, 'Saba', 'Female'),
(1691483, 'Marium', 'Female'),
(1695837, 'Tamim', 'Male'),
(1696326, 'Wraith', 'Female'),
(1721527, 'Md.Sakimuzzaman', 'Male'),
(1721684, 'MD.Musfiqur Rahaman', 'Male'),
(1721911, 'Misbahur Rashid', 'Male'),
(1722006, 'Rafid Al Ahsan', 'Male'),
(1730407, 'Sadia Afroz Alma', 'Female'),
(1730791, 'Puja Bhowmik', 'Female'),
(1831050, 'Elan Md Taseen', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `vc`
--

CREATE TABLE `vc` (
  `VcID` int(10) NOT NULL,
  `VcName` varchar(30) NOT NULL,
  `JoinDate` datetime(5) NOT NULL,
  `LeaveDate` datetime(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vc`
--

INSERT INTO `vc` (`VcID`, `VcName`, `JoinDate`, `LeaveDate`) VALUES
(1, 'M.Omar Rahman', '2010-01-01 00:00:00.00000', '2012-01-01 00:00:00.00000'),
(2, 'Milan Pagon', '2014-01-01 00:00:00.00000', '2016-01-01 00:00:00.00000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`AssessmentNo`);

--
-- Indexes for table `co`
--
ALTER TABLE `co`
  ADD PRIMARY KEY (`CoID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`EnrollmentID`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`EvaluationNo`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`InstructorID`);

--
-- Indexes for table `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `plo`
--
ALTER TABLE `plo`
  ADD PRIMARY KEY (`PloNO`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`ProgramID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`SchoolID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`SectionID`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SemesterID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `vc`
--
ALTER TABLE `vc`
  ADD PRIMARY KEY (`VcID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
