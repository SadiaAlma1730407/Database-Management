-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 11:45 AM
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
-- Table structure for table `course_t`
--

CREATE TABLE `course_t` (
  `COURSEID` int(11) NOT NULL,
  `COURSETitle` varchar(40) NOT NULL,
  `COURSEType` varchar(50) NOT NULL,
  `PROGRAMID` int(11) DEFAULT NULL,
  `INSTRUCTORID` int(11) DEFAULT NULL,
  `SEMESTERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `school_t`
--

CREATE TABLE `school_t` (
  `SchoolID` int(20) NOT NULL,
  `SchoolName` varchar(40) NOT NULL,
  `VcID` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester_t`
--

CREATE TABLE `semester_t` (
  `semesterID` int(11) NOT NULL,
  `SEMESTERYear` int(11) DEFAULT NULL,
  `SEMESTERStartDate` date DEFAULT NULL,
  `SEMESTEREndDte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_t`
--

CREATE TABLE `student_t` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(40) NOT NULL,
  `StudentAddress` varchar(80) DEFAULT NULL,
  `StudentDateOfBirth` date DEFAULT NULL,
  `StudentGender` varchar(50) DEFAULT NULL,
  `StydentEmail` varchar(50) DEFAULT NULL,
  `STUDENTNationality` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vc_t`
--

CREATE TABLE `vc_t` (
  `VCID` int(11) NOT NULL,
  `VCName` varchar(40) NOT NULL,
  `VCJoiningDate` date DEFAULT NULL,
  `VCLeavingDate` date DEFAULT NULL,
  `VCQualifications` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_t`
--
ALTER TABLE `course_t`
  ADD PRIMARY KEY (`COURSEID`);

--
-- Indexes for table `school_t`
--
ALTER TABLE `school_t`
  ADD PRIMARY KEY (`SchoolID`);

--
-- Indexes for table `semester_t`
--
ALTER TABLE `semester_t`
  ADD PRIMARY KEY (`semesterID`);

--
-- Indexes for table `student_t`
--
ALTER TABLE `student_t`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `vc_t`
--
ALTER TABLE `vc_t`
  ADD PRIMARY KEY (`VCID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
