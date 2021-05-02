-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 09:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `assesment_t`
--

CREATE TABLE `assesment_t` (
  `AssesmentNo` int(11) NOT NULL,
  `MarksDistribution` int(11) DEFAULT NULL,
  `TotalMarksAchievable` int(11) DEFAULT NULL,
  `SectionNo` int(11) DEFAULT NULL,
  `StudentNo` int(11) DEFAULT NULL,
  `CoID` int(11) DEFAULT NULL,
  `PloID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assesment_t`
--

INSERT INTO `assesment_t` (`AssesmentNo`, `MarksDistribution`, `TotalMarksAchievable`, `SectionNo`, `StudentNo`, `CoID`, `PloID`) VALUES
(101, NULL, 80, 7009, 60, 10, 3),
(104, NULL, 90, 6004, 50, 13, 5),
(201, NULL, 90, 4009, 45, 16, 8),
(204, NULL, 90, 6008, 50, 14, 6),
(211, NULL, 80, 6011, 40, 15, 7),
(212, NULL, 90, 5009, 60, 17, 9),
(213, NULL, 80, 6002, 55, 11, 4),
(303, NULL, 100, 6009, 40, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_t`
--

CREATE TABLE `course_t` (
  `CourseID` int(11) NOT NULL,
  `CourseTitle` varchar(50) NOT NULL,
  `InstructorID` int(11) DEFAULT NULL,
  `SemesterID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_t`
--

INSERT INTO `course_t` (`CourseID`, `CourseTitle`, `InstructorID`, `SemesterID`) VALUES
(101, 'University Physics', 10001, 1),
(104, 'Electrical Cicrcuit Analysis', 10004, 4),
(201, 'Discrete Mathemetics', 10008, 8),
(203, 'Data Structure', 10005, 5),
(204, 'Digital Logic Design', 10006, 6),
(211, 'Algorithms', 10007, 7),
(212, 'Probability & Statistics', 10009, 9),
(213, 'Object Oriented Program', 10003, 3),
(303, 'Database Management system', 10002, 2);

-- --------------------------------------------------------

--
-- Table structure for table `co_t`
--

CREATE TABLE `co_t` (
  `CoID` int(11) NOT NULL,
  `CourseName` varchar(40) NOT NULL,
  `PloID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co_t`
--

INSERT INTO `co_t` (`CoID`, `CourseName`, `PloID`) VALUES
(101, 'University Physics', 1001),
(104, 'Electrical Cicrcuit Analysis', 1003),
(201, 'Discrete Mathemetics', 1006),
(204, 'Digital Logic Design', 1004),
(211, 'Algorithms', 1005),
(212, 'Probability & Statistics', 1007),
(213, 'Object Oriented Program', 1002),
(303, 'Database Management system', 1231);

-- --------------------------------------------------------

--
-- Table structure for table `department_head_t`
--

CREATE TABLE `department_head_t` (
  `JoiningDate` date DEFAULT NULL,
  `DateOfLeaving` date DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_head_t`
--

INSERT INTO `department_head_t` (`JoiningDate`, `DateOfLeaving`, `DepartmentID`) VALUES
('2021-07-07', '2021-10-10', 1002),
('2021-01-07', '2021-01-10', 1001),
('2021-02-08', '2021-10-11', 1003),
('2021-04-09', '2021-10-11', 1004),
('2021-05-08', '2021-10-11', 1006),
('2021-06-08', '2021-10-11', 1005),
('2021-07-08', '2021-10-11', 1007),
('2021-08-08', '2021-06-11', 1008),
('2021-09-08', '2021-03-11', 1009);

-- --------------------------------------------------------

--
-- Table structure for table `department_t`
--

CREATE TABLE `department_t` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(40) NOT NULL,
  `SchoolID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_t`
--

INSERT INTO `department_t` (`DepartmentID`, `DepartmentName`, `SchoolID`) VALUES
(103, 'Computer Science and Engineering', 1),
(223, 'Bachelor Of Bussiness Administration', 4),
(312, 'Environment Science and Management', 2),
(456, 'Anthropology', 6),
(512, 'Bachelor of Pharmacy', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_t`
--

CREATE TABLE `enrollment_t` (
  `EnrollmentID` int(11) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `EnrollmentDate` date DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `ProgramID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment_t`
--

INSERT INTO `enrollment_t` (`EnrollmentID`, `Year`, `EnrollmentDate`, `StudentID`, `ProgramID`) VALUES
(1, 2021, '2021-07-07', 10010, 1),
(2, 2021, '2021-02-08', 10067, 1),
(3, 2021, '2021-01-07', 10034, 2),
(4, 2021, '2021-04-09', 10009, 2),
(5, 2021, '2021-05-08', 10076, 1),
(6, 2021, '2021-06-08', 10056, 2),
(7, 2021, '2021-07-08', 10098, 2),
(8, 2021, '2021-08-08', 10045, 1),
(9, 2021, '2021-09-08', 10031, 1);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_t`
--

CREATE TABLE `instructor_t` (
  `InstructorID` int(11) NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(40) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Gender` varchar(40) DEFAULT NULL,
  `ContactNo` int(11) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor_t`
--

INSERT INTO `instructor_t` (`InstructorID`, `Fname`, `Lname`, `Address`, `Gender`, `ContactNo`, `Email`, `DepartmentID`) VALUES
(1, 'sadia', 'alma', 'abc', 'female', 16800000, 'sadia@gmail.com', 1000),
(2, 'sadita', 'ahmed', 'efg', 'female', 1680001, 'sadita@gmail.com', 1001),
(3, 'mahady', 'hasan', 'fgh', 'male', 1680010, 'mahady@gmail.com', 1003),
(4, 'rafiq', 'hasan', 'opl', 'male', 16800167, 'rafiq@gmail.com', 1004),
(5, 'asif', 'hossain', 'mlk', 'male', 16800100, 'asif@gmail.com', 1005),
(6, 'karishma', 'hasan', 'qwe', 'female', 16800567, 'karishma@gmail.com', 1006),
(7, 'Sinha', 'khan', 'hjk', 'female', 1680009, 'Sinha@gmail.com', 1007),
(8, 'belal', 'hossain', 'mlp', 'male', 1680014, 'belal@gmail.com', 1008),
(9, 'nodi', 'islam', 'lkj', 'female', 16800123, 'nodi@gmail.com', 1009),
(10, 'tanvir', 'hasan', 'tyu', 'male', 16800198, 'tanvir@gmail.com', 10010),
(11, 'sakib', 'hossain', 'yui', 'male', 16800112, 'sakib@gmail.com', 10011);

-- --------------------------------------------------------

--
-- Table structure for table `plo_t`
--

CREATE TABLE `plo_t` (
  `PloID` int(11) NOT NULL,
  `Details` varchar(50) DEFAULT NULL,
  `ProgramID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `program_t`
--

CREATE TABLE `program_t` (
  `ProgramID` int(11) NOT NULL,
  `ProgramName` varchar(40) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_t`
--

INSERT INTO `program_t` (`ProgramID`, `ProgramName`, `DepartmentID`) VALUES
(1, 'Under Graduation', 1231),
(2, 'Post Graduation', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `school_t`
--

CREATE TABLE `school_t` (
  `SchoolID` int(11) NOT NULL,
  `SchoolName` varchar(40) NOT NULL,
  `VcID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `section_t`
--

CREATE TABLE `section_t` (
  `SectionNo` int(11) DEFAULT NULL,
  `RoomNo` int(11) DEFAULT NULL,
  `Capacity` varchar(40) NOT NULL,
  `startTime` int(11) DEFAULT NULL,
  `endTime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section_t`
--

INSERT INTO `section_t` (`SectionNo`, `RoomNo`, `Capacity`, `startTime`, `endTime`) VALUES
(0, 3002, '40', 10, 12),
(2, 3011, '40', 11, 1),
(3, 3021, '40', 11, 1),
(7, 3006, '35', 11, 1),
(1, 3007, '45', 10, 12),
(2, 3011, '40', 11, 1),
(1, 3009, '41', 11, 1),
(5, 3010, '40', 11, 1),
(6, 3008, '42', 12, 2),
(10, 3002, '43', 9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `semester_t`
--

CREATE TABLE `semester_t` (
  `SemesterID` int(11) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester_t`
--

INSERT INTO `semester_t` (`SemesterID`, `Year`, `JoinDate`, `EndDate`) VALUES
(1, 2021, '0000-00-00', '0000-00-00'),
(2, 2021, '0000-00-00', '0000-00-00'),
(3, 2021, '0000-00-00', '0000-00-00'),
(4, 2021, '0000-00-00', '0000-00-00'),
(5, 2021, '0000-00-00', '0000-00-00'),
(6, 2021, '0000-00-00', '0000-00-00'),
(7, 2021, '0000-00-00', '0000-00-00'),
(8, 2021, '0000-00-00', '0000-00-00'),
(9, 2021, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `student_t`
--

CREATE TABLE `student_t` (
  `StudentID` int(11) NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(40) NOT NULL,
  `GuardianName` varchar(40) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` varchar(40) DEFAULT NULL,
  `ContactNo` int(11) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `EnroolmentID` int(11) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_t`
--

INSERT INTO `student_t` (`StudentID`, `Fname`, `Lname`, `GuardianName`, `Address`, `DateOfBirth`, `Gender`, `ContactNo`, `Email`, `EnroolmentID`, `DepartmentID`) VALUES
(1, 'Sadia', 'Alma', 'Md D Khan', 'abc', '1996-01-07', 'female', 1680000, 'sadia@gmail.com', 1, 1000),
(2, 'Mahmud', 'Hassan', 'Md M Khan', 'zxc', '1996-01-07', 'male', 1680001, 'mahmud@gmail.com', 2, 1001),
(3, 'Puja', 'Bhowmik', 'Md C Khan', 'poi', '1996-01-07', 'female', 1680002, 'puja@gmail.com', 3, 1002),
(4, 'Sakib', 'Zaman', 'Md P Khan', 'tyu', '1996-01-07', 'male', 1680003, 'sakib@gmail.com', 4, 1003),
(5, 'Misbah', 'Asif', 'Md B Khan', 'kmn', '1996-01-07', 'male', 1680004, 'asif@gmail.com', 5, 1004),
(6, 'Rafid', 'Hasan', 'Md A Khan', 'iop', '1996-01-07', 'male', 1680005, 'rafid@gmail.com', 6, 1005),
(7, 'Elan', 'Taseen', 'Md X Khan', 'qwe', '1996-01-07', 'male', 1680006, 'taseen@gmail.com', 7, 1006),
(8, 'Mushfiq', 'Rahman', 'Md Y Khan', 'oiu', '1996-01-07', 'male', 1680007, 'mushfiq@gmail.com', 8, 1007);

-- --------------------------------------------------------

--
-- Table structure for table `vc_t`
--

CREATE TABLE `vc_t` (
  `VcID` int(11) NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(40) NOT NULL,
  `JoiningOfLeaving` date DEFAULT NULL,
  `DateOfLeaving` date DEFAULT NULL,
  `Qualification` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vc_t`
--

INSERT INTO `vc_t` (`VcID`, `Fname`, `Lname`, `JoiningOfLeaving`, `DateOfLeaving`, `Qualification`) VALUES
(1, 'Milan', 'Pragan', '2021-01-07', '2021-01-10', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assesment_t`
--
ALTER TABLE `assesment_t`
  ADD PRIMARY KEY (`AssesmentNo`);

--
-- Indexes for table `course_t`
--
ALTER TABLE `course_t`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `co_t`
--
ALTER TABLE `co_t`
  ADD PRIMARY KEY (`CoID`);

--
-- Indexes for table `department_t`
--
ALTER TABLE `department_t`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `enrollment_t`
--
ALTER TABLE `enrollment_t`
  ADD PRIMARY KEY (`EnrollmentID`);

--
-- Indexes for table `instructor_t`
--
ALTER TABLE `instructor_t`
  ADD PRIMARY KEY (`InstructorID`);

--
-- Indexes for table `plo_t`
--
ALTER TABLE `plo_t`
  ADD PRIMARY KEY (`PloID`);

--
-- Indexes for table `program_t`
--
ALTER TABLE `program_t`
  ADD PRIMARY KEY (`ProgramID`);

--
-- Indexes for table `school_t`
--
ALTER TABLE `school_t`
  ADD PRIMARY KEY (`SchoolID`);

--
-- Indexes for table `semester_t`
--
ALTER TABLE `semester_t`
  ADD PRIMARY KEY (`SemesterID`);

--
-- Indexes for table `student_t`
--
ALTER TABLE `student_t`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `vc_t`
--
ALTER TABLE `vc_t`
  ADD PRIMARY KEY (`VcID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
