-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 09:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db`
--
CREATE DATABASE IF NOT EXISTS `cinema_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cinema_db`;

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--
-- Creation: Dec 01, 2022 at 08:31 PM
--

DROP TABLE IF EXISTS `bookingtable`;
CREATE TABLE `bookingtable` (
  `bookingID` int(11) NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL,
  `bookingEmail` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ORDERID` varchar(255) NOT NULL,
  `DATE-TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `bookingtable`:
--   `movieID`
--       `movietable` -> `movieID`
--

--
-- Truncate table before insert `bookingtable`
--

TRUNCATE TABLE `bookingtable`;
--
-- Dumping data for table `bookingtable`
--

INSERT DELAYED IGNORE INTO `bookingtable` (`bookingID`, `movieID`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`, `bookingEmail`, `amount`, `ORDERID`, `DATE-TIME`) VALUES
(71, 6, 'private-hall', 'imax', '14-3', '15-00', 'xyz', 'abc', '000000000', '000@gmail.com', '5000.00', 'cash', '2020-12-14 12:20:31'),
(72, 1, 'private-hall', 'imax', '14-3', '24-00', 'Nigga', 'Hey', '09090985391', 'seanjericobaymax@gmail.com', 'Not Paid', 'ARVR43298823', '2022-12-01 12:32:19'),
(73, 7, 'private-hall', 'imax', '13-3', '12-00', 'Nigga', 'Hey', '09090985391', 'seanjericobaymax@gmail.com', 'Not Paid', 'ARVR48232500', '2022-12-01 22:05:17'),
(74, 9, 'main-hall', '3d', '14-3', '15-00', 'Aye', 'Yow', '09090985391', 'diazangelo3014@gmail.com', 'Not Paid', 'ARVR68274370', '2022-12-01 22:42:42'),
(75, 10, 'vip-hall', 'imax', '12-3', '15-00', 'Nigga', 'Yow', '09090985391', 'seanjericobaymax@gmail.com', 'Not Paid', 'ARVR48076399', '2022-12-01 23:59:12'),
(76, 7, 'vip-hall', 'imax', '12-3', '21-00', 'Sean', 'Centro', '09090985391', 'centro.sean@clsu2.edu.ph', 'Not Paid', 'ARVR75122422', '2022-12-01 23:59:54'),
(77, 9, 'main-hall', '3d', '12-3', '18-00', 'Angelo', 'Diaz', '09090985391', 'diazangelo3014@gmail.com', 'Not Paid', 'ARVR75931864', '2022-12-02 00:01:02'),
(78, 1, 'private-hall', 'imax', '12-3', '09-00', 'ABSdkba', 'aadn', '09090985391', 'seanjericobaymax@gmail.com', 'Not Paid', 'ARVR89675852', '2022-12-02 00:07:06'),
(79, 1, 'main-hall', '2d', '12-3', '12-00', 'Sean', 'aadn', '09090985391', 'diazangelo3014@gmail.com', 'Not Paid', 'ARVR97655296', '2022-12-02 00:12:38'),
(80, 1, 'main-hall', '2d', '12-3', '12-00', 'Sean', 'aadn', '09090985391', 'diazangelo3014@gmail.com', 'Not Paid', 'ARVR57357447', '2022-12-02 00:12:50'),
(81, 6, 'private-hall', '2d', '12-3', '15-00', 'ad', 'ada', '09090985391', 'seanjericobaymax@gmail.com', 'Not Paid', 'ARVR45432559', '2022-12-02 00:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--
-- Creation: Dec 01, 2022 at 08:31 PM
--

DROP TABLE IF EXISTS `feedbacktable`;
CREATE TABLE `feedbacktable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `feedbacktable`:
--

--
-- Truncate table before insert `feedbacktable`
--

TRUNCATE TABLE `feedbacktable`;
-- --------------------------------------------------------

--
-- Table structure for table `movietable`
--
-- Creation: Dec 01, 2022 at 08:31 PM
--

DROP TABLE IF EXISTS `movietable`;
CREATE TABLE `movietable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL,
  `mainhall` int(11) NOT NULL,
  `viphall` int(11) NOT NULL,
  `privatehall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `movietable`:
--

--
-- Truncate table before insert `movietable`
--

TRUNCATE TABLE `movietable`;
--
-- Dumping data for table `movietable`
--

INSERT DELAYED IGNORE INTO `movietable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`, `mainhall`, `viphall`, `privatehall`) VALUES
(1, 'img/movie-poster-1.jpg', 'Black Adam', 'Action, Superhero', 205, '2022-10-20', 'Jaume Collet-Serra', 'Dwayne Jonhson, Sarah Shani', 0, 0, 0),
(6, 'img/strange-world.jpg', 'Strange World', 'Adventure, Animation', 142, '2022-11-15', 'Don Hall', 'The Clades are a legendary family of explorers whose differences threaten to topple their latest and most crucial mission into uncharted and treachero', 0, 0, 0),
(7, 'img/OP.jpg', 'One Piece Film Red', 'Anime, Action', 155, '2022-10-01', 'Oda', 'Luffy', 900, 2000, 3500),
(8, 'img/violent-night.jpg', 'Violent Night', 'Action, Comedy', 152, '2022-12-02', 'Tommy Wirkola', 'David Harbour, Alex Hassell', 200, 350, 50),
(9, 'img/wakanda.jpg', 'Black Panther: Wakanda Forever', 'Action, Superhero', 241, '2022-11-11', 'Ryan Coogler', 'Tenoch Huerta, Letitia Wright', 200, 350, 500),
(10, 'img/batman.jpg', 'The Batman', 'Action, Thriller', 256, '2022-11-04', 'Matt Reeves', 'Robert Pattinson, Zoe Kravitz', 200, 350, 500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Dec 01, 2022 at 08:31 PM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT DELAYED IGNORE INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, '123', 'john', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `foreign_key_movieID` (`movieID`),
  ADD KEY `foreign_key_ORDERID` (`ORDERID`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `movietable`
--
ALTER TABLE `movietable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingtable`
--
ALTER TABLE `bookingtable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movietable`
--
ALTER TABLE `movietable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD CONSTRAINT `foreign_key_movieID` FOREIGN KEY (`movieID`) REFERENCES `movietable` (`movieID`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table bookingtable
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table feedbacktable
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table movietable
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for table users
--
-- Error reading data for table phpmyadmin.pma__column_info: #1100 - Table 'pma__column_info' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1100 - Table 'pma__table_uiprefs' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__tracking: #1100 - Table 'pma__tracking' was not locked with LOCK TABLES

--
-- Metadata for database cinema_db
--
-- Error reading data for table phpmyadmin.pma__bookmark: #1100 - Table 'pma__bookmark' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__relation: #1100 - Table 'pma__relation' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__savedsearches: #1100 - Table 'pma__savedsearches' was not locked with LOCK TABLES
-- Error reading data for table phpmyadmin.pma__central_columns: #1100 - Table 'pma__central_columns' was not locked with LOCK TABLES
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
