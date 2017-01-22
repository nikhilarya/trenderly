-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2017 at 04:28 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trend`
--

-- --------------------------------------------------------

--
-- Table structure for table `table 4`
--

CREATE TABLE `table 4` (
  `status_id` varchar(31) DEFAULT NULL,
  `status_message` mediumtext,
  `link_name` varchar(10) DEFAULT NULL,
  `status_type` varchar(6) DEFAULT NULL,
  `status_link` varchar(10) DEFAULT NULL,
  `status_published` varchar(19) DEFAULT NULL,
  `num_likes` int(1) DEFAULT NULL,
  `num_comments` int(1) DEFAULT NULL,
  `num_shares` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 4`
--

INSERT INTO `table 4` (`status_id`, `status_message`, `link_name`, `status_type`, `status_link`, `status_published`, `num_likes`, `num_comments`, `num_shares`) VALUES
('status_id', 'status_message^', 'link_name', 'status', 'status_lin', 'status_published', 0, 0, 0),
('1388868834478006_13899973076984', 'Congress Doesn''t Deserve More Seats, says akhilesh yadav^', '', 'status', '', '2017-01-22 05:08:33', 0, 0, 0),
('1388868834478006_13899851376997', 'Pakistan release soldier after surgical strike in 2017.^', '', 'status', '', '2017-01-22 04:49:20', 0, 0, 0),
('1388868834478006_13897531210562', 'India defeat england and won the series by 2-0.^', '', 'status', '', '2017-01-21 23:28:33', 0, 0, 0),
('1388868834478006_13897136810601', 'The outfits donned by Michelle Obama and Melania Trump grabbed our attention. Photo: Reuters The hidden meaning behind Melania.^', '', 'status', '', '2017-01-21 22:31:45', 0, 0, 0),
('1388868834478006_13897131510602', 'The outfits donned by Michelle Obama and Melania Trump grabbed our attention. Photo: Reuters The hidden meaning behind Melania and i know how to play against my opposition.^', '', 'status', '', '2017-01-21 22:31:07', 0, 0, 0),
('1388868834478006_13897128977269', 'The outfits donned by Michelle Obama and Melania Trump grabbed our attention. Photo: Reuters The hidden meaning behind Melania and I love to play cricket.^', '', 'status', '', '2017-01-21 22:30:29', 0, 0, 0),
('1388868834478006_13897118543937', 'The outfits donned by Michelle Obama and Melania Trump grabbed our attention. Photo: Reuters The hidden meaning behind Melania and Michelle''s outfits at the Inauguration^', '', 'status', '', '2017-01-21 22:28:52', 0, 0, 0),
('status_id', 'status_message^', 'link_name', 'status', 'status_lin', 'status_published', 0, 0, 0),
('647749405413161_648365725351529', 'Congress Doesn''t Deserve More Seats, Says Samajwadi Party^', '', 'status', '', '2017-01-22 05:06:18', 0, 0, 0),
('647749405413161_648360592018709', 'Pakistan releas soldier after surgical strike.^', '', 'status', '', '2017-01-22 04:48:10', 0, 0, 0),
('647749405413161_648208672033901', 'India won the series against england.^', '', 'status', '', '2017-01-21 23:27:04', 0, 0, 0),
('647749405413161_648141195373982', 'President Donald Trump, accompanied by first lady Melania Trump, points to members of the crowd as they walk in his inaugural \r\nhey what is going on we can do everything. again we are working on main project which is assign by our HOD.^', '', 'status', '', '2017-01-21 21:20:15', 0, 0, 0),
('647749405413161_648067198714715', 'President Donald Trump, accompanied by first lady Melania Trump, points to members of the crowd as they walk in his inaugural parade on Pennsylvania Ave, outside the White House in Washington. (Photo: AP)Indian Americans celebrate as Trump becomes President^', '', 'status', '', '2017-01-21 17:43:33', 0, 0, 0),
('647749405413161_648002672054501', 'Attorney General of India questions Supreme Court judgement on BCCI regarding Lodha reforms^', '', 'status', '', '2017-01-21 15:12:54', 0, 0, 0),
('647749405413161_647753138746121', 'SC can quash Jallikattu Ordinance: Manish Tewari warns against promulgation in hurry^', '', 'status', '', '2017-01-21 01:14:14', 1, 0, 0),
('status_id', 'status_message^', 'link_name', 'status', 'status_lin', 'status_published', 0, 0, 0),
('1199874160080002_12008438933163', 'Akhilesh yadav says that Congress Doesn''t Deserve More Seats.^', '', 'status', '', '2017-01-22 05:09:01', 0, 0, 0),
('1199874160080002_12008344766506', 'Pakistan release soldier after surgical strike of india^', '', 'status', '', '2017-01-22 04:50:36', 0, 0, 0),
('1199874160080002_12006274700046', 'India beat england in second odi by 15 runs and won the series.^', '', 'status', '', '2017-01-21 23:24:50', 0, 0, 0),
('1199874160080002_12003134033694', 'Donald Trump and Barack ObamaAll about Obamacare as Donald Trump orders to cut its rootsJallikattuJallikattu ordinance: AIADMK MPs meet President Pranab MukherjeeUS President speaking at the inauguralTrump trade strategy starts with quitting Asia pactPresident Donald Trump, accompanied by first lady Melania Trump, points to members of the crowd as they walk in his inaugural parade on Pennsylvania Ave, outside the White House in Washington. (Photo: AP)Indian Americans celebrate as Trump becomes PresidentPicture for representation How 7th pay commission will change your life, Indian economy Protesters march against President Donald Trump Thousands protest against Trump, ''sister marches'' begin in Australia and New Zealand Bane Trump Did US President Trump copy his inauguration speech from not 1 BUT 3 films!? Maruti Suzuki Ignis Maruti Suzuki Ignis first drive review  The outfits donned by Michelle Obama and Melania Trump grabbed our attention. Photo: Reuters The hidden meaning behind Melania and Michelle''s outfits at the Inauguration Manveer''s awesome performance in the recent bungee cord challenge has won his team a place in the finale. Picture for representation purpose. Picture courtesy: Twitter/AwazShab Bigg Boss 10: Manu, Manveer and Lopa are the Top 3 finalists Attorney General of India Mukul Rohatgi. Government questions Supreme Court judgement on BCCI regarding Lodha reforms\r\nREAD\r\n\r\nMOVIES\r\nAkshay Kumar\r\nSHARE\r\nAkshay Kumar''s fan cycles 1614 km from Haridwar to meet his idol\r\nDid US President Trump copy his inauguration speech from not 1 BUT 3 films!?\r\nShah Rukh Khan is a changed man for AbRam, has become kinder\r\nSEE PIC: Kajol, Dhanush, Soundarya Rajinikanth on the sets of VIP 2\r\nAfter Khaidi No 150, Chiranjeevi, Ram Charan to work together?\r\nCRICKET\r\n(PTI Photo)\r\nSHARE\r\nSourav Ganguly already BCCI president according to Wikipedia^', '', 'status', '', '2017-01-21 15:17:39', 0, 0, 0),
('1199874160080002_12003121767028', '^', 'HF3', 'photo', 'https://ww', '2017-01-21 15:16:17', 0, 0, 0),
('status_id', 'status_message^', 'link_name', 'status', 'status_lin', 'status_published', 0, 0, 0),
('1233422646747285_12344126533149', 'Congress Doesn''t Deserve More Seats^', '', 'status', '', '2017-01-22 05:09:23', 0, 0, 0),
('1233422646747285_12344022466493', 'Soldier release by Pakistan after surgical strike..^', '', 'status', '', '2017-01-22 04:54:35', 0, 0, 0),
('1233422646747285_12341922333369', 'India won  series by 2-0 against England.India beat england by 15 runs in second odi.^', '', 'status', '', '2017-01-21 23:23:06', 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
