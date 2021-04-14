-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 01:14 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cd_dvd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE `cds` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `artist` varchar(25) NOT NULL,
  `release_date` date NOT NULL,
  `genre` varchar(10) NOT NULL,
  `cover` varchar(25) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`id`, `title`, `artist`, `release_date`, `genre`, `cover`, `description`) VALUES
(1, 'Thriller', 'Michael Jackson', '1982-11-30', 'Pop', 'thriller.jpg', ''),
(2, 'Back in Black', 'AC/DC', '1980-07-25', 'Rock', 'backinblack.png', ''),
(3, '25', 'Adele', '2015-11-20', 'R&B', '25.png', ''),
(4, 'Nevermind', 'Nirvana', '1991-09-24', 'Grunge', 'nevermind.jpg', ''),
(5, 'The Eminem Show', 'Eminem', '2002-05-26', 'Hip hop', 'tes.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `dvds`
--

CREATE TABLE `dvds` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `release_date` date NOT NULL,
  `director` varchar(45) NOT NULL,
  `image` varchar(45) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dvds`
--

INSERT INTO `dvds` (`id`, `title`, `rating`, `release_date`, `director`, `image`, `description`) VALUES
(1, 'Avatar', 'PG-13', '2009-12-16', 'James Cameron', 'avatar.jpg', ''),
(2, 'Avengers: Endgame', 'PG-13', '2019-04-24', 'Anthony and Joe Russo', 'endgame.jpg', ''),
(3, 'Titanic', 'PG-13', '1997-12-19', 'James Cameron', 'titanic.jpg', ''),
(4, 'Jurassic World', 'PG-13', '2015-06-15', 'Colin Trevorrow', 'jurassicworld.jpg', ''),
(5, 'Furious 7', 'PG-13', '2015-04-01', 'James Wan', 'furious7.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dvds`
--
ALTER TABLE `dvds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dvds`
--
ALTER TABLE `dvds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
