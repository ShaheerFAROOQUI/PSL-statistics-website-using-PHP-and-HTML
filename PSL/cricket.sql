-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2021 at 07:34 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `stadium` ()  NO SQL
select * from stadiums$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cricket_boards`
--

CREATE TABLE `cricket_boards` (
  `board_name` varchar(20) NOT NULL,
  `chairman` varchar(20) DEFAULT NULL,
  `team` varchar(10) NOT NULL,
  `DOA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cricket_boards`
--

INSERT INTO `cricket_boards` (`board_name`, `chairman`, `team`, `DOA`) VALUES
('islamabad', 'ahmed rajput', 'IU', '2006-11-20'),
('karachi', 'moin khan', 'KK', '2008-11-11'),
('lahore', 'farhan sheikh', 'LQ', '2007-04-12'),
('multan', 'Wasim Akhtar', 'MS', '2006-11-20'),
('peshawar', 'Saeed Anwer', 'PZ', '2007-04-12'),
('quetta', 'mohammad ali', 'QG', '2012-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `dream11`
--

CREATE TABLE `dream11` (
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `player1` int(5) DEFAULT NULL,
  `player2` int(5) DEFAULT NULL,
  `player3` int(5) DEFAULT NULL,
  `player4` int(5) DEFAULT NULL,
  `player5` int(5) DEFAULT NULL,
  `player6` int(5) DEFAULT NULL,
  `player7` int(5) DEFAULT NULL,
  `player8` int(5) DEFAULT NULL,
  `player9` int(5) DEFAULT NULL,
  `player10` int(5) DEFAULT NULL,
  `player11` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dream11`
--

INSERT INTO `dream11` (`username`, `player1`, `player2`, `player3`, `player4`, `player5`, `player6`, `player7`, `player8`, `player9`, `player10`, `player11`) VALUES
('obaidullah', 49, 82, 63, 60, 50, 51, 64, 65, 61, 83, 66);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('database', '123'),
('databaseproject', '123'),
('OBAID..', '123'),
('obaidullah', '123'),
('Reyyan', '123'),
('SAF', '123'),
('user', '123'),
('virtual', '123'),
('virtual1', '123'),
('vk', '123');

-- --------------------------------------------------------

--
-- Table structure for table `played_in`
--

CREATE TABLE `played_in` (
  `stadium_name` varchar(50) NOT NULL,
  `board_name` varchar(20) NOT NULL,
  `team` varchar(10) NOT NULL,
  `team1` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `team2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `played_in`
--

INSERT INTO `played_in` (`stadium_name`, `board_name`, `team`, `team1`, `date`, `team2`) VALUES
('Rawalpindi Stadium', 'islamabad', 'IU', 'IU', '2021-02-16', 'QG'),
('National Stadium', 'karachi', 'KK', 'KK', '2021-02-15', 'IU'),
('Multan Stadium', 'multan', 'MS', 'MS', '2021-02-18', 'KK'),
('Peshawar Stadium', 'peshawar', 'PZ', 'PZ', '2021-02-17', 'MS'),
('Quetta Stadium', 'quetta', 'QG', 'QG', '2021-02-19', 'LQ');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(5) NOT NULL,
  `cap_no` decimal(4,0) NOT NULL,
  `age` decimal(2,0) NOT NULL,
  `dob` date NOT NULL,
  `runs` decimal(5,0) NOT NULL,
  `wickets` decimal(3,0) NOT NULL,
  `type` varchar(20) NOT NULL,
  `no_of_matches` decimal(3,0) NOT NULL,
  `rank` decimal(3,0) NOT NULL,
  `batting_best` varchar(10) NOT NULL,
  `bowling_best` varchar(40) NOT NULL,
  `playername` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `cap_no`, `age`, `dob`, `runs`, `wickets`, `type`, `no_of_matches`, `rank`, `batting_best`, `bowling_best`, `playername`, `image`, `name`) VALUES
(49, '1', '27', '1994-10-15', '2000', '59', 'Batsman', '98', '8', '77', '32/5', 'Babar Azam', 'babar.jpeg', 'KK'),
(82, '2', '23', '1998-10-04', '532', '52', 'Allrounder', '52', '8', '77', ' ', 'Shadab Khan', 'Shadab.webp', 'IU'),
(63, '3', '28', '1993-11-23', '2565', '45', 'Allrounder', '85', '1', '55', '26/1', 'Agha Salman', 'agha.jpeg', 'LQ'),
(60, '4', '31', '1990-05-10', '1203', '58', 'Batsman', '98', '14', '95', '23/4', 'Fakhar Zaman', 'fakhar.jpeg', 'LQ'),
(50, '5', '36', '1985-10-08', '3542', '22', 'Batsman', '113', '4', '115*', '18/9', 'Fawad Alam', 'fawadalam.jpeg', 'KK'),
(51, '6', '32', '1988-12-18', '250', '7', 'Allrounder', '45', '17', '95', '22/2', 'Imad Wasim', 'imad-wasim.jpeg', 'KK'),
(64, '7', '28', '1993-02-20', '345', '24', 'Bowler', '89', '18', '65', '25/2', 'Dilbar Hussain', 'dilbar.jpeg', 'LQ'),
(65, '8', '25', '1996-03-16', '1254', '95', 'Allrounder', '14', '4', '78', '22/3', 'Tim David', 'tim.jpeg', 'LQ'),
(61, '9', '35', '1986-03-02', '1258', '84', 'Allrounder', '85', '5', '55', '26/1', 'Sohail Akhtar', 'sohail.jpeg', 'LQ'),
(83, '10', '30', '1990-12-13', '60', '46', 'Bowler', '113', '13', '35', ' ', 'Ali Khan', 'Ali.webp', 'IU'),
(66, '11', '31', '1990-04-29', '2512', '55', 'Allrounder', '85', '3', '88', '24/8', 'James Faulkner', 'james.jpeg', 'LQ'),
(62, '12', '21', '2000-04-06', '1203', '58', 'Bowler', '98', '5', '95', '23/4', 'Shaheen Afridi', 'shaheen.jpeg', 'LQ'),
(52, '13', '32', '1989-08-14', '1256', '58', 'Batsman', '44', '12', '42', '26/4', 'Sharjeel Khan', 'Sharjeel_khan.jpeg', 'KK'),
(53, '14', '16', '2005-01-03', '152', '54', 'Bowler', '89', '9', '65', '25/2', 'Noor Ahmed', 'noor.jpeg', 'KK'),
(54, '15', '29', '1990-06-26', '2565', '45', 'Allrounder', '54', '2', '75', '25/3', 'Aamer Yamin', 'yamin.jpeg', 'KK'),
(55, '16', '32', '1989-05-12', '2800', '25', 'Batsman', '84', '6', '85', '29/1', 'Cameron Delport', 'delport.jpeg', 'KK'),
(56, '17', '32', '1989-01-03', '4007', '100', 'Batsman', '141', '3', '133', '18/2', 'Alex Hales', 'hales.jpeg', 'KK'),
(57, '18', '36', '1985-06-03', '4008', '125', 'Batsman', '163', '2', '113', '14/2', 'Chadwick Walton', 'chad.jpeg', 'KK'),
(84, '19', '30', '1991-10-01', '879', '56', 'Batsman', '45', '17', '95', ' ', 'Asif Ali', 'Asif.webp', 'IU'),
(58, '20', '20', '2000-12-26', '152', '75', 'Bowler', '78', '1', '40', '25/4', 'Arshad Iqbal', 'arshad.jpeg', 'KK'),
(69, '21', '20', '2000-12-15', '152', '75', 'Bowler', '78', '2', '40', '25/4', 'Maaz Khan', 'maaz.jpeg', 'LQ'),
(85, '22', '38', '1982-02-05', '100', '58', 'Bowler', '44', '6', '42', ' ', 'Fawad Ahmed', 'Fawad.webp', 'IU'),
(86, '23', '25', '1996-02-12', '300', '54', 'Allrounder', '89', '13', '65', ' ', 'Hussain Talat', 'Hussain.webp', 'IU'),
(67, '25', '37', '1984-11-12', '1524', '75', 'Batsman', '78', '9', '98', '25/4', 'Callum Ferguson', 'callum.jpeg', 'LQ'),
(112, '27', '26', '1994-11-04', '503', '27', 'Batsman', '88', '23', '51', ' ', 'Jake Weatherald', 'Weatherald.webp', 'QG'),
(59, '28', '29', '1992-04-13', '1789', '41', 'Bowler', '45', '15', '40', '18/3', 'Mohammad Amir', 'amir.jpeg', 'KK'),
(68, '29', '28', '1993-11-07', '2458', '50', 'Bowler', '85', '10', '77', '17/2', 'Haris Rauf', 'haris.jpeg', 'LQ'),
(87, '30', '27', '1994-01-16', '256', '77', 'Allrounder', '54', '12', '55', ' ', 'Faheem Ashraf', 'Faheem.webp', 'IU'),
(93, '31', '28', '1992-06-01', '900', '58', 'Batsman', '98', '16', '86', ' ', 'Mohammad Rizwan', 'Rizwan.webp', 'MS'),
(88, '34', '31', '1990-09-03', '280', '59', 'Batsman', '84', '28', '45', ' ', 'Iftikhar Ahmed', 'Iftikhar.webp', 'IU'),
(89, '36', '34', '1986-12-18', '407', '100', 'Batsman', '141', '25', '63', ' ', 'Usman Khawaja', 'Usman.webp', 'IU'),
(90, '37', '26', '1994-12-16', '408', '125', 'Batsman', '163', '24', '48', ' ', 'Brandon King', 'Brandon.webp', 'IU'),
(100, '39', '36', '1984-03-06', '124', '75', 'Bowler', '78', '3', '38', ' ', 'Sohail Khan', 'Sohail.webp', 'MS'),
(113, '40', '27', '1993-09-01', '350', '47', 'Allrounder', '45', '11', '45', ' ', 'Jack Wildermuth', 'Wildermuth.webp', 'QG'),
(70, '41', '35', '1980-10-17', '458', '20', 'Allrounder', '54', '10', '84', '19/3', 'Mohammad Hafeez', 'hafeez.jpeg', 'LQ'),
(91, '42', '20', '2001-08-25', '152', '75', 'Allrounder', '78', '16', '33', ' ', 'Mohammad Wasim', 'Wasim.webp', 'IU'),
(97, '43', '25', '1996-10-02', '159', '24', 'Bowler', '89', '19', '42', ' ', 'Blessing Muzarabani', 'Blessing.webp', 'MS'),
(92, '44', '21', '2000-08-28', '89', '41', 'Bowler', '45', '16', '27', ' ', 'Mohammad Musa Khan', 'Musa.webp', 'IU'),
(71, '45', '36', '1985-06-28', '206', '49', 'Bowler', '144', '12', '88', '25/1', 'Wahab Riaz', 'wahab.jpeg', 'PZ'),
(94, '48', '32', '1989-01-14', '600', '84', 'Batsman', '85', '18', '78', ' ', 'Johnson Charles', 'Johnson.webp', 'MS'),
(114, '51', '32', '1988-03-20', '112', '55', 'Bowler', '85', '8', '34', ' ', 'Sherfane Rutherfold', 'Rutherfold.webp', 'QG'),
(95, '52', '24', '1996-12-26', '503', '58', 'Batsman', '98', '22', '65', ' ', 'Shimron Hetmyer', 'Shimron.webp', 'MS'),
(72, '55', '39', '1982-02-01', '254', '26', 'Allrounder', '102', '15', '29/4', '19/3', 'Shoaib Malik', 'malik.jpeg', 'PZ'),
(73, '58', '26', '1995-05-07', '2145', '28', 'Bowler', '87', '17', '109', '28/6', 'Fabian Allen', 'allen.jpeg', 'PZ'),
(98, '62', '32', '1989-10-09', '554', '95', 'Batsman', '14', '19', '78', ' ', 'Rilee Rossouw', 'Rilee.webp', 'MS'),
(74, '63', '26', '1995-05-10', '1256', '58', 'Allrounder', '44', '6', '42', '26/4', 'Amad Butt', 'amad.jpeg', 'PZ'),
(75, '64', '21', '2000-10-02', '1298', '54', 'Batsman', '89', '10', '65', '25/2', 'Haider Ali', 'ali.jpeg', 'PZ'),
(76, '65', '23', '1998-03-23', '1254', '27', 'Batsman', '77', '13', '85', '19/4', 'Hazratullah Zazai', 'zazai.jpeg', 'PZ'),
(77, '66', '39', '1982-01-13', '3542', '22', 'Batsman', '113', '5', '115*', '18/9', 'Kamran Akmal', 'karman.jpeg', 'PZ'),
(103, '67', '33', '1987-07-15', '258', '27', 'Allrounder', '54', '14', '34', ' ', 'Hammad Azam', 'Hammad.webp', 'MS'),
(78, '68', '32', '1989-06-10', '4070', '10', 'Batsman', '100', '1', '113*', '18/2', 'David Miller', 'miller.jpeg', 'PZ'),
(106, '69', '22', '1998-12-25', '445', '66', 'Allrounder', '87', '9', '69', ' ', 'Abdul Nasir', 'Nasir.webp', 'QG'),
(109, '70', '22', '1998-08-10', '338', '67', 'Batsman', '77', '27', '55', ' ', 'Azam Khan', 'Azam.webp', 'QG'),
(80, '72', '28', '1993-06-23', '250', '7', 'Batsman', '45', '29', '95', '22/2', 'Rovman Powell', 'rovman.jpeg', 'PZ'),
(96, '74', '42', '1979-03-27', '265', '45', 'Bowler', '85', '14', '55', ' ', 'Imran Tahir', 'Tahir.webp', 'MS'),
(79, '75', '39', '1982-06-06', '425', '24', 'Bowler', '88', '20', '16', '20/4', 'Mohammad Irfan', 'irfan.jpeg', 'PZ'),
(99, '77', '34', '1987-04-15', '512', '55', 'Batsman', '85', '21', '88', ' ', 'Sohaib Maqsood', 'Sohaib.webp', 'MS'),
(102, '80', '29', '1991-04-16', '152', '75', 'Bowler', '78', '4', '20', ' ', 'Imran Khan', 'ImranK.webp', 'MS'),
(81, '81', '23', '1998-08-15', '2512', '55', 'Batsman', '85', '7', '88', '24/8', 'Sherfane Rutherford', 'sherfane.jpeg', 'PZ'),
(104, '84', '33', '1987-05-22', '1189', '45', 'Batsman', '144', '15', '93', ' ', 'Sarfaraz Ahmed', 'Sarfaraz.webp', 'QG'),
(110, '87', '36', '1984-06-13', '542', '29', 'Batsman', '113', '20', '42', ' ', 'Faf du Plessis', 'Plessis.webp', 'QG'),
(108, '88', '31', '1989-05-12', '1298', '54', 'Batsman', '89', '11', '89', ' ', 'Cameron Delport', 'Cameron.webp', 'QG'),
(107, '92', '20', '2000-12-20', '156', '58', 'Bowler', '44', '7', '32', ' ', 'Arish Ali Khan', 'Arish.webp', 'QG'),
(105, '95', '26', '1994-03-21', '541', '66', 'Allrounder', '102', '7', '64', ' ', 'Mohammad Nawaz', 'Nawaz.webp', 'QG'),
(111, '96', '20', '2000-04-05', '400', '77', 'Batsman', '100', '26', '53', ' ', 'Mohammad Hasnain', 'Hasnain.webp', 'QG'),
(101, '97', '36', '1984-12-12', '245', '50', 'Bowler', '85', '11', '47', ' ', 'Sohail Tanvir', 'Tanvir.webp', 'MS');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `team1` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `match_no` decimal(3,0) NOT NULL,
  `team2` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`team1`, `date`, `match_no`, `team2`, `status`) VALUES
('IU', '2021-02-16', '2', 'QG', 'COMPLETED'),
('KK', '2021-02-15', '1', 'IU', 'COMPLETED'),
('KK', '2222-02-22', '78', 'IU', 'DUE'),
('LQ', '2222-02-22', '9', 'IU', 'DUE'),
('LQ', '2222-02-22', '10', 'KK', 'DUE'),
('MS', '2021-02-18', '4', 'KK', 'COMPLETED'),
('PZ', '2021-02-02', '12', 'QG', 'DUE'),
('PZ', '2021-02-17', '3', 'MS', 'COMPLETED'),
('QG', '2021-02-19', '5', 'LQ', 'DUE');

-- --------------------------------------------------------

--
-- Table structure for table `selected_for`
--

CREATE TABLE `selected_for` (
  `position` varchar(20) NOT NULL,
  `cap_no` decimal(4,0) NOT NULL,
  `name` varchar(30) NOT NULL,
  `team1` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `team2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selected_for`
--

INSERT INTO `selected_for` (`position`, `cap_no`, `name`, `team1`, `date`, `team2`) VALUES
('CAPTAIN', '13', 'KK', 'KK', '2021-02-15', 'IU');

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `stadium_name` varchar(50) NOT NULL,
  `capacity` decimal(6,0) NOT NULL,
  `DOI` date DEFAULT NULL,
  `board_name` varchar(20) NOT NULL,
  `team` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`stadium_name`, `capacity`, `DOI`, `board_name`, `team`) VALUES
('Gaddafi Stadium', '41000', '1996-11-20', 'lahore', 'LQ'),
('Multan Stadium', '25000', '1974-12-28', 'multan', 'MS'),
('National Stadium', '84000', '1985-05-11', 'karachi', 'KK'),
('Peshawar Stadium', '25000', '1974-12-28', 'peshawar', 'PZ'),
('Quetta Stadium', '65000', '1976-11-25', 'quetta', 'QG'),
('Rawalpindi Stadium', '25000', '1974-12-28', 'islamabad', 'IU');

--
-- Triggers `stadiums`
--
DELIMITER $$
CREATE TRIGGER `default_date` BEFORE INSERT ON `stadiums` FOR EACH ROW set new.DOI=CURRENT_DATE()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `rank` decimal(5,0) NOT NULL,
  `rating` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`rank`, `rating`, `name`) VALUES
('1', 122, 'IU'),
('6', 102, 'KK'),
('3', 119, 'LQ'),
('4', 116, 'MS'),
('2', 120, 'PZ'),
('5', 110, 'QG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cricket_boards`
--
ALTER TABLE `cricket_boards`
  ADD PRIMARY KEY (`board_name`,`team`);

--
-- Indexes for table `dream11`
--
ALTER TABLE `dream11`
  ADD PRIMARY KEY (`username`),
  ADD KEY `player_ck` (`player1`),
  ADD KEY `player_ck2` (`player2`),
  ADD KEY `player_ck3` (`player3`),
  ADD KEY `player_ck4` (`player4`),
  ADD KEY `player_ck5` (`player5`),
  ADD KEY `player_ck6` (`player6`),
  ADD KEY `player_ck7` (`player7`),
  ADD KEY `player_ck8` (`player8`),
  ADD KEY `player_ck9` (`player9`),
  ADD KEY `player_ck10` (`player10`),
  ADD KEY `player_ck11` (`player11`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `played_in`
--
ALTER TABLE `played_in`
  ADD PRIMARY KEY (`stadium_name`,`board_name`,`team`,`team1`,`date`,`team2`),
  ADD KEY `team1` (`team1`,`date`,`team2`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`cap_no`,`name`),
  ADD UNIQUE KEY `id` (`player_id`),
  ADD UNIQUE KEY `player_id` (`player_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`team1`,`date`,`team2`),
  ADD UNIQUE KEY `match_no` (`match_no`);

--
-- Indexes for table `selected_for`
--
ALTER TABLE `selected_for`
  ADD PRIMARY KEY (`cap_no`,`name`,`team1`,`date`,`team2`),
  ADD KEY `team1` (`team1`,`date`,`team2`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`stadium_name`,`board_name`,`team`),
  ADD KEY `board_name` (`board_name`,`team`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dream11`
--
ALTER TABLE `dream11`
  ADD CONSTRAINT `player_ck` FOREIGN KEY (`player1`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck10` FOREIGN KEY (`player10`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck11` FOREIGN KEY (`player11`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck2` FOREIGN KEY (`player2`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck3` FOREIGN KEY (`player3`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck4` FOREIGN KEY (`player4`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck5` FOREIGN KEY (`player5`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck6` FOREIGN KEY (`player6`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck7` FOREIGN KEY (`player7`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck8` FOREIGN KEY (`player8`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_ck9` FOREIGN KEY (`player9`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `username_ck` FOREIGN KEY (`username`) REFERENCES `login` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `played_in`
--
ALTER TABLE `played_in`
  ADD CONSTRAINT `played_in_ibfk_1` FOREIGN KEY (`stadium_name`,`board_name`,`team`) REFERENCES `stadiums` (`stadium_name`, `board_name`, `team`),
  ADD CONSTRAINT `played_in_ibfk_2` FOREIGN KEY (`team1`,`date`,`team2`) REFERENCES `schedules` (`team1`, `date`, `team2`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`name`) REFERENCES `team` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `selected_for`
--
ALTER TABLE `selected_for`
  ADD CONSTRAINT `selected_for_ibfk_1` FOREIGN KEY (`cap_no`,`name`) REFERENCES `player` (`cap_no`, `name`),
  ADD CONSTRAINT `selected_for_ibfk_2` FOREIGN KEY (`team1`,`date`,`team2`) REFERENCES `schedules` (`team1`, `date`, `team2`) ON DELETE CASCADE;

--
-- Constraints for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD CONSTRAINT `stadiums_ibfk_1` FOREIGN KEY (`board_name`,`team`) REFERENCES `cricket_boards` (`board_name`, `team`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
