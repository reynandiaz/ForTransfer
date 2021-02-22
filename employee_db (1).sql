-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 02:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime NOT NULL,
  `UpdateBy` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `CreatedDate`, `DeletedDate`, `UpdatedDate`, `UpdateBy`) VALUES
(1, 'Software Development', '2020-10-24 09:52:40', NULL, '2020-10-24 09:52:40', '34980'),
(2, 'Accouting', '2020-10-24 09:52:59', NULL, '2020-10-24 09:52:59', '34980'),
(3, 'Administration', '2020-10-24 09:53:48', NULL, '2020-10-24 09:53:48', '34980'),
(4, 'Purchasing', '2021-02-04 14:34:49', NULL, '2021-02-04 14:34:49', '34980');

-- --------------------------------------------------------

--
-- Table structure for table `employeerate`
--

CREATE TABLE `employeerate` (
  `EmployeeCode` varchar(20) NOT NULL,
  `Rate` decimal(10,2) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime NOT NULL,
  `UpdatedBy` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeerate`
--

INSERT INTO `employeerate` (`EmployeeCode`, `Rate`, `CreatedDate`, `DeletedDate`, `UpdatedDate`, `UpdatedBy`) VALUES
('34980', '150.00', '2021-02-02 18:04:13', NULL, '2021-02-02 18:15:27', '34980');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeCode` varchar(20) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Middlename` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Birthdate` date NOT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `DepartmentID` int(5) DEFAULT NULL,
  `SectionID` int(5) DEFAULT NULL,
  `DesignationID` int(5) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime NOT NULL,
  `UpdatedBy` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeCode`, `Firstname`, `Middlename`, `Lastname`, `Gender`, `Birthdate`, `Address`, `DepartmentID`, `SectionID`, `DesignationID`, `CreatedDate`, `DeletedDate`, `UpdatedDate`, `UpdatedBy`) VALUES
('34980', 'Reynan Louie', 'Bacit', 'Diaz', 'M', '2020-01-01', 'Address Testing', 1, 3, 0, '2020-10-28 09:18:06', NULL, '2021-02-05 21:51:44', '34980'),
('37037', 'Wyane Irish', 'B', 'Rollamas', 'F', '2020-01-01', 'Dun lapit layoAAA', 1, 1, NULL, '2020-10-24 08:57:29', NULL, '2020-10-24 08:57:29', '34980'),
('37038', 'A', 'A', 'A', 'M', '2020-11-03', 'ASD', 2, 2, NULL, '2020-11-30 10:16:28', NULL, '2020-11-30 10:16:28', '34980'),
('37039', 'tes', 't', 'a', 'F', '2020-11-07', 'ASDASDASDASDASD', 2, 2, NULL, '2020-11-30 13:04:35', NULL, '2020-11-30 13:04:35', '34980'),
('37040', 'Reynan', 'D', 'Diaz', 'M', '2020-11-01', 'ASDASDASD', 1, 3, NULL, '2020-11-30 13:05:28', NULL, '2020-11-30 13:05:28', '34980'),
('37041', 'Juan 1', 'D', 'D', 'F', '2020-11-30', 'ASD', 2, 3, NULL, '2020-11-30 14:03:38', NULL, '2020-11-30 14:03:38', '34980'),
('37042', 'Juan2', 'Juan2', 'Juan2', 'F', '2020-10-08', 'ASD', 2, 3, NULL, '2020-11-30 14:04:01', NULL, '2020-11-30 14:04:01', '34980'),
('37043', 'Juan3', 'Juan3', 'Juan3', 'M', '2020-10-26', 'test', 3, 2, NULL, '2020-11-30 14:04:21', NULL, '2020-11-30 14:04:21', '34980'),
('37044', 'DDDDDDDDDD', 'A', 'A', 'M', '2020-12-05', 'ASD', 4, 1, NULL, '2020-12-05 23:24:59', NULL, '2021-02-04 15:17:55', '34980'),
('37045', 'ASD', 'SD', 'SD', 'F', '2020-12-16', 'ASd', 2, 2, NULL, '2020-12-16 17:18:46', NULL, '2020-12-16 17:18:46', '34980'),
('37046', 'juan', 'd', 'great', 'M', '1999-10-31', 'dun lapit layo', 2, 3, NULL, '2021-02-02 18:01:13', NULL, '2021-02-02 18:01:13', '34980'),
('37047', 'juan', 'd', 'tamad', 'M', '2021-02-02', 'test', 1, 2, NULL, '2021-02-02 18:04:10', NULL, '2021-02-02 18:15:27', '34980');

-- --------------------------------------------------------

--
-- Table structure for table `logtime`
--

CREATE TABLE `logtime` (
  `EmployeeCode` varchar(7) NOT NULL,
  `LogDate` datetime NOT NULL,
  `DepartmentCode` varchar(3) DEFAULT NULL,
  `SectionCode` varchar(5) DEFAULT NULL,
  `TimeIn` datetime DEFAULT NULL,
  `TimeOut` datetime DEFAULT NULL,
  `TransIn` varchar(10) DEFAULT NULL,
  `TransOut` varchar(10) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logtime`
--

INSERT INTO `logtime` (`EmployeeCode`, `LogDate`, `DepartmentCode`, `SectionCode`, `TimeIn`, `TimeOut`, `TransIn`, `TransOut`, `StartTime`, `EndTime`, `CreatedDate`, `UpdatedDate`, `UpdatedBy`) VALUES
('34980', '2020-11-30 00:00:00', NULL, NULL, '2020-11-30 02:00:29', '2020-11-30 02:00:59', 'IN', 'OUT', '2020-11-30 14:00:29', '2020-11-30 14:00:59', '2020-11-30 14:00:29', '2020-11-30 14:00:59', '34980'),
('34980', '2021-02-05 00:00:00', NULL, NULL, '2021-02-05 06:56:48', '2021-02-05 06:57:10', 'IN', 'OUT', '2021-02-05 06:56:48', '2021-02-05 18:57:10', '2021-02-05 18:56:48', '2021-02-05 18:57:10', '34980'),
('34980', '2021-02-06 00:00:00', NULL, NULL, '2021-02-06 06:56:48', '2021-02-06 06:57:10', 'IN', 'OUT', '2021-02-06 06:56:48', '2021-02-06 18:57:10', '2021-02-05 18:56:48', '2021-02-05 18:57:10', '34980'),
('37037', '2021-02-05 00:00:00', NULL, NULL, '2021-02-05 06:56:57', '2021-02-05 06:57:21', 'IN', 'OUT', '2021-02-05 06:56:58', '2021-02-05 18:57:21', '2021-02-05 18:56:58', '2021-02-05 18:57:21', '34980'),
('37038', '2020-11-30 00:00:00', NULL, NULL, '2020-11-30 10:17:43', NULL, 'IN', 'OUT', '2020-11-30 10:17:43', NULL, '2020-11-30 10:17:43', '2020-11-30 10:17:43', '34980');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `SectionID` int(11) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  `SectionName` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime NOT NULL,
  `UpdatedBy` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`SectionID`, `DepartmentID`, `SectionName`, `CreatedDate`, `DeletedDate`, `UpdatedDate`, `UpdatedBy`) VALUES
(1, 1, 'Software Development 1', '2020-10-24 09:58:28', NULL, '2020-10-24 09:58:28', '34980'),
(1, 2, 'Tax', '2020-10-24 09:59:14', NULL, '2020-10-24 09:59:14', '34980'),
(1, 3, 'Payroll', '2020-10-24 09:59:57', NULL, '2020-10-24 09:59:57', '34980'),
(1, 4, 'New Section', '2021-02-04 14:50:56', NULL, '2021-02-04 14:50:56', '34980'),
(2, 1, 'Software Development 2', '2020-10-24 09:58:37', NULL, '2020-10-24 09:58:37', '34980'),
(2, 2, 'Import', '2020-10-24 09:59:26', NULL, '2020-10-24 09:59:26', '34980'),
(2, 3, 'Admin', '2020-10-24 10:00:11', NULL, '2020-10-24 10:00:11', '34980'),
(3, 1, 'Software Development 3', '2020-10-24 09:58:49', NULL, '2020-10-24 09:58:49', '34980'),
(3, 2, 'Export', '2020-10-24 09:59:38', NULL, '2020-10-24 09:59:38', '34980');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `EmployeeCode` varchar(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `UserRights` int(10) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime NOT NULL,
  `UpdatedBy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`EmployeeCode`, `Username`, `Password`, `UserRights`, `CreatedDate`, `DeletedDate`, `UpdatedDate`, `UpdatedBy`) VALUES
('34980', '34980', '34980', 1, '2020-10-23 15:44:07', NULL, '2020-10-23 15:44:07', '34980');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `employeerate`
--
ALTER TABLE `employeerate`
  ADD PRIMARY KEY (`EmployeeCode`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeCode`);

--
-- Indexes for table `logtime`
--
ALTER TABLE `logtime`
  ADD PRIMARY KEY (`EmployeeCode`,`LogDate`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`SectionID`,`DepartmentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`EmployeeCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
