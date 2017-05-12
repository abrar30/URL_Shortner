-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2017 at 05:12 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urlshortnerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `code` varchar(15) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `url`, `code`, `created`) VALUES
(1, 'http://google.com', '', '2017-05-11 13:43:27'),
(2, 'http://google.com.my', '2', '2017-05-11 13:52:33'),
(3, 'http://facebook.com.my', '3', '2017-05-11 14:12:54'),
(100000000, 'http://google.com.pk', '1njchs', '2017-05-11 14:26:06'),
(100000001, 'https://www.youtube.com/watch?v=QN2VXBNujRs&t=258s', '1njcht', '2017-05-11 14:42:13'),
(100000002, 'http://www.tutorialspoint.com/cprogramming/c_loops.htm', '1njchu', '2017-05-11 14:47:32'),
(100000003, 'http://www.google.de', '1njchv', '2017-05-11 14:48:28'),
(100000004, 'http://www.twitter.com', '1njchw', '2017-05-11 15:12:20'),
(100000005, 'https://www.ntu.edu.sg/home/ehchua/programming/cpp/c1_Basics.html', '1njchx', '2017-05-11 15:40:54'),
(100000006, 'https://www.youtube.com/watch?v=kavwQpZfSqY', '1njchy', '2017-05-11 19:13:56'),
(100000007, 'https://www.youtube.com/watch?v=mK_Q2GHsEWY&t=2s', '1njchz', '2017-05-11 19:17:07'),
(100000008, 'https://connect.apu.edu.my/adfs/ls/?client-request-id=a5e386fa-29e2-44b2-8ca2-bc8c8c42d658&username=&wa=wsignin1.0&wtrealm=urn%3afederation%3aMicrosoftOnline&wctx=estsredirect%3d2%26estsrequest%3drQIIAdNiNtQztFIxgAAjXRCpa5CWZqibnApiIYEiIS6BX22Plz7S3OTSs2h', '', '2017-05-11 19:22:51'),
(100000009, 'https://connect.apu.edu.my/adfs/ls/?client-request-id=a5e386fa-29e2-44b2-8ca2-bc8c8c42d658&username=&wa=wsignin1.0&wtrealm=urn%3afederation%3aMicrosoftOnline&wctx=estsredirect%3d2%26estsrequest%3drQIIAdNiNtQztFIxgAAjXRCpa5CWZqibnApiIYEiIS6BX22Plz7S3OTSs2h', '', '2017-05-11 19:23:08'),
(100000010, 'https://guides.github.com/introduction/getting-your-project-on-github/', '1njci2', '2017-05-12 10:51:02'),
(100000011, 'https://google.com', '1njci3', '2017-05-12 10:53:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000012;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
