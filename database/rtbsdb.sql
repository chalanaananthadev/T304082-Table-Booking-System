-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2024 at 12:04 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rtbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserType` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 1234596321, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-05-21 18:30:00', 1),
(7, 'Chalana Anantha Ashinshana', 'Chalana281', 767949254, 'chalana281@gmail.com', 'f8450a97cc7e38e6d109425c87b41634', '2024-10-25 14:58:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

DROP TABLE IF EXISTS `tblbookings`;
CREATE TABLE IF NOT EXISTS `tblbookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookingNo` bigint DEFAULT NULL,
  `fullName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emailId` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phoneNumber` bigint DEFAULT NULL,
  `bookingDate` date DEFAULT NULL,
  `bookingTime` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noAdults` bigint DEFAULT NULL,
  `noChildrens` bigint DEFAULT NULL,
  `tableId` int DEFAULT NULL,
  `adminremark` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `boookingStatus` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`id`, `bookingNo`, `fullName`, `emailId`, `phoneNumber`, `bookingDate`, `bookingTime`, `noAdults`, `noChildrens`, `tableId`, `adminremark`, `boookingStatus`, `postingDate`, `updationDate`) VALUES
(1, 7081250186, 'Anuj Kumar', 'ak@gmail.com', 1425362514, '2023-06-10', '14:00:00', 2, 1, 1, 'Booking accepted', 'Accepted', '2023-05-27 04:34:18', '2023-06-04 03:20:29'),
(2, 323168839, 'Shivani', 'shivani@gmail.com', 4563214520, '2023-06-10', '14:10:00', 4, 1, 3, 'Table booked.', 'Accepted', '2023-05-27 04:35:04', '2023-06-04 17:08:10'),
(3, 4813244763, 'John Doe', 'johndeo@test.com', 7896541230, '2023-06-15', '20:00:00', 3, 1, 0, 'Table not available ', 'Rejected', '2023-05-27 04:35:33', '2023-06-04 17:16:35'),
(4, 2163886205, 'Garima Singh', 'gariam@test.com', 45632145632, '2023-06-24', '15:00:00', 2, 1, 5, 'Table Reserved', 'Accepted', '2023-06-05 00:44:57', '2023-06-05 13:54:10'),
(5, 1763229875, 'Chalana Anantha Ashinshana', 'chalana281@gmail.com', 767949254, '0000-00-00', '10 : 10 PM', 1, 1, 2, 'come between 10.30', 'Accepted', '2024-10-24 16:11:21', '2024-10-24 16:14:05'),
(6, 1989625629, 'Chalana Anantha Ashinshana', 'chalana281@gmail.com', 767949254, '0000-00-00', '10 : 10 PM', 2, 1, 0, 'there are bookings please select a another time', 'Rejected', '2024-10-24 16:11:53', '2024-10-24 16:14:43'),
(7, 1990042020, 'sachini', 'sachini@gmail.com', 123456789, '0000-00-00', '8 : 00 AM', 2, 1, 3, 'come between 8 to 10', 'Accepted', '2024-10-25 16:43:56', '2024-10-25 16:46:00'),
(8, 1664274160, 'yashodha', 'yashodha@gmail.com', 1122334455, '0000-00-00', '8 : 00 AM', 2, 1, 4, 'come between 7.30 am to 8.00', 'Accepted', '2024-10-28 10:03:29', '2024-10-28 10:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblrestables`
--

DROP TABLE IF EXISTS `tblrestables`;
CREATE TABLE IF NOT EXISTS `tblrestables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tableNumber` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AddedBy` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrestables`
--

INSERT INTO `tblrestables` (`id`, `tableNumber`, `creationDate`, `AddedBy`) VALUES
(1, '1', '2023-05-27 03:50:35', 2),
(2, '2', '2023-05-27 03:50:55', 2),
(3, '1A', '2023-05-27 03:51:01', 2),
(4, '3', '2023-05-27 03:51:07', 2),
(5, '3A', '2023-05-27 03:51:11', 2),
(6, '3B', '2023-05-27 03:51:15', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
