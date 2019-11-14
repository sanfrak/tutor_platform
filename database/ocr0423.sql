-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 09:12 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '912ec803b2ce49e4a541068d495ab570', '2019-04-21 19:07:34'),
(2, 'admin2@b.com', '912ec803b2ce49e4a541068d495ab570', '2019-04-21 22:33:58'),
(3, 'momo', '81dc9bdb52d04dc20036dbd8313ed055', '2019-04-23 01:10:55'),
(4, 'Rudolph_Wunsch@gmail.com', 'c437850073ba0b086ab9c04a29ef8f0f', '2019-04-23 02:49:50'),
(5, 'Edward_Fisher@yahoo.com', 'cc6d22e80c7419a38a77f8c05ae3b950', '2019-04-23 02:50:44'),
(6, 'Adelia.Stehr58@yahoo.com', '947ccc0553242d2897a02071e8d8fa34', '2019-04-23 02:50:59'),
(7, 'Brain.Mann@gmail.com', '34a3b30d70ed99c9921d16048668cbad', '2019-04-23 02:51:24'),
(8, 'Berenice13@yahoo.com', 'a4af73d73ff31520c5faaf001d698c35', '2019-04-23 02:51:33'),
(9, 'Cordell.Padberg@yahoo.com', 'fc253307fa0f25402a8b2431bb916119', '2019-04-23 02:51:41'),
(10, 'Jammie_Leannon24@hotmail.com', '719be51b256d671995972a53cbd61214', '2019-04-23 02:51:53'),
(11, 'Cordia_Treutel@gmail.com', 'c816266e03b1b58975b0bc68c9b6ce7c', '2019-04-23 02:52:01'),
(12, 'Annette_Reichel39@gmail.com', 'b69d76f75f5b7c189417109bfe068070', '2019-04-23 02:52:33'),
(13, 'guan', '202cb962ac59075b964b07152d234b70', '2019-04-23 03:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'CS6501 DB_Group5, Rice Hall, Charlottesville, VA 22903																								', 'dbg5@uva.edu', '+1-434-982-');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'a', 'a@b.com', 'a', 'sdafa', '2019-04-22 13:35:16', NULL),
(3, 'a', 'a@b.com', 'a', 'sdafa', '2019-04-22 13:36:56', NULL),
(4, 'a', 'a@b.com', 'a', 'sdafa', '2019-04-22 13:39:47', NULL),
(5, 'as', 'sdf@a.com', 'sdf', 'asdf', '2019-04-22 13:49:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmentors`
--

CREATE TABLE `tblmentors` (
  `id` int(11) NOT NULL,
  `Mid` int(11) DEFAULT NULL,
  `MentorName` varchar(150) DEFAULT NULL,
  `University` int(11) DEFAULT NULL,
  `SelfDescription` longtext,
  `SessionPrice` int(11) DEFAULT NULL,
  `DegreeType` varchar(100) DEFAULT NULL,
  `EnrolledYear` int(6) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmentors`
--

INSERT INTO `tblmentors` (`id`, `Mid`, `MentorName`, `University`, `SelfDescription`, `SessionPrice`, `DegreeType`, `EnrolledYear`, `Rating`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `RegDate`, `UpdationDate`) VALUES
(1, 1, 'Kellie Wunsch', 2, 'I am the best', 50, 'Bachelor', 3453, 7, '1.jpg', '20170523_145633.jpg', 'phpgurukul-1.png', 'social-icons.png', '', '2017-06-19 11:46:23', '2019-04-23 03:20:40'),
(2, 2, 'Rozella Lesch\r\n\r\n', 2, 'Hello', 859, 'master', 2015, 4, '2.jpg', 'looking-used-car.png', 'banner-image.jpg', 'about_services_faq_bg.jpg', '', '2017-06-19 16:16:17', '2019-04-23 03:20:47'),
(3, 3, 'Tiara Smith', 4, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 500, 'master', 2012, 5, '3.jpg', 'dealer-logo.jpg', 'img_390x390.jpg', 'listing_img3.jpg', '', '2017-06-19 16:18:20', '2019-04-23 03:20:53'),
(4, 4, 'Kenyon Witting\r\n', 1, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 100, 'Bachelor', 2012, 5, '1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', '2017-06-19 16:18:43', '2019-04-23 03:21:00'),
(5, 5, 'Kathleen Rau', 5, 'vtretrvet', 300, 'master', 3453, 7, '12.jpg', NULL, NULL, NULL, NULL, '2017-06-20 17:57:09', '2019-04-23 03:21:05'),
(6, 6, 'Candelario Doyle\r\n', 8, 'Its Well matintaied', 120, 'master', 2017, 4, '11.jpg', 'Desert.jpg', 'Hydrangeas.jpg', 'Jellyfish.jpg', '', '2017-07-05 11:04:18', NULL),
(7, 7, 'Pablo Osinski\r\n', 4, 'this is a new car', 60, 'Bachelor', 2012, 5, '7.jpg', 'dealer-logo.jpg', 'img_390x390.jpg', 'listing_img3.jpg', '', '2017-06-19 16:18:20', '2019-04-23 03:21:19'),
(8, 8, 'Dina King\r\n', 1, '', 0, 'master', 0, 0, '8.jpg', 'about_us_img1.jpg', 'about_us_img2.jpg', 'about_us_img3.jpg', '', '2019-04-21 23:19:47', NULL),
(9, 9, 'Gerardo Hermiston', 3, 'asdfasdfas', 0, 'PhD', 0, 0, '9.jpg', 'addmore_img.png', 'about_us_img3.jpg', 'about_us_img1.jpg', '', '2019-04-21 23:22:55', NULL),
(10, 10, 'Monserrate Spinka\r\n', 4, 'as', 100, 'Bachelor', 0, 0, '10.jpg', 'about_us_img4.jpg', 'about_us_img2.jpg', 'about_us_img3.jpg', '', '2019-04-21 23:24:39', NULL),
(11, 11, 'Jasmin Chan', 2, '3rqw', 40, 'PhD', 0, 0, '11.jpg', 'banner-image-1.jpg', 'aboutus-page-header-img.jpg', 'about_us_img2.jpg', '', '2019-04-21 23:30:36', NULL),
(12, 12, 'Mariane Willms', 4, 'asdfasdf', 140, 'PhD', 0, 0, '12.jpg', 'about_us_img4.jpg', 'about_us_img1.jpg', 'banner-image.jpg', '', '2019-04-21 23:53:40', NULL),
(22, 13, 'a', 1, 'a', 0, 'Bachelor', 0, NULL, '11.jpg', NULL, NULL, NULL, NULL, '2019-04-23 04:31:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify>\r\n<FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>\r\nWelcome to Yahoo! You can review the most current version of the TOS at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, These does do not apply to such other services that are governed by different Terms of Service. \r\n</FONT></P>\r\n\r\n<P align=justify><FONT size=2 >\r\nhere at TABLE tblpages, we have an entity which records the info to display on \"Terms and Conditions\" Page. Get here to edit.\r\n</FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\nhere at TABLE tblpages, we have an entity which records the info to display on \"Privacy Policy\" Page. Get here to edit.\r\n</span>\r\n\r\n<P align=justify>\r\n<FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>\r\nWelcome to Yahoo! You can review the most current version of the TOS at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, These does do not apply to such other services that are governed by different Terms of Service. \r\n</FONT></P>\r\n\r\n<P align=justify><FONT size=2 >\r\nhere at TABLE tblpages, we have an entity which records the info to display on \"Privacy Policy\" Page. Get here to edit.\r\n</FONT></P>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\nhere at TABLE tblpages, we have an entity which records the info to display on \"About Us \" Page. Get here to edit.\r\n</span>\r\n\r\n<P align=justify>\r\n<FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>\r\nWelcome to Yahoo! You can review the most current version of the TOS at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, These does do not apply to such other services that are governed by different Terms of Service. \r\n</FONT></P>\r\n\r\n<P align=justify><FONT size=2 >\r\nhere at TABLE tblpages, we have an entity which records the info to display on \"About Us \" Page. Get here to edit.\r\n</FONT></P>'),
(11, 'FAQs', 'faqs', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\nhere at TABLE tblpages, we have an entity which records the info to display on \"FAQs\" Page. Get here to edit.\r\n</span>\r\n\r\n<P align=justify>\r\n<FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>\r\nWelcome to Yahoo! You can review the most current version of the TOS at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, These does do not apply to such other services that are governed by different Terms of Service. \r\n</FONT></P>\r\n\r\n<P align=justify><FONT size=2 >\r\nhere at TABLE tblpages, we have an entity which records the info to display on \"FAQs\" Page. Get here to edit.\r\n</FONT></P>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `mentorid` int(11) DEFAULT NULL,
  `rating` float NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `userEmail`, `mentorid`, `rating`, `date`, `time`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, 4.8, '22/06/2017', '11:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, 0, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, 0, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06'),
(4, 'test1@gmail.com', 1, 0, '11/07/2017', '12/07/2018', 'ddddddddddd', 0, '2017-06-29 18:20:45'),
(5, 'php@gmail.com', 6, 0, '11/07/2017', '12/07/2017', 'i want to hire this taxi for few hours', 1, '2017-07-05 11:09:18'),
(6, 'a@b.com', 1, 0, '01/01/2020', '15:30', 'asdfasdf', 1, '2019-04-21 20:40:10'),
(7, 'b@b.com', 1, 0, '01/01/2020', '01/02/2020', 'asdfasdfasdf', 1, '2019-04-21 20:41:14'),
(8, 'admin2@b.com', 3, 0, '01/01/2020', '01/02/2020', 'asdfadfasdfasd', 0, '2019-04-21 21:47:51'),
(9, 'a@b.com', 3, 0, '01/01/2020', 'adf', 'test booking', 2, '2019-04-22 18:52:57'),
(10, 'a@c.com', 3, 0, '01/01/2020', '18:00', 'test 0422', 0, '2019-04-22 22:36:13'),
(11, 'a@c.com', 1, 0, '01/01/2020', '18:00', 'sff', 0, '2019-04-22 23:37:54'),
(12, 'a@c.com', 1, 0, '01/01/2020', '18:00', 'juhj', 0, '2019-04-22 23:40:20'),
(13, 'a@c.com', 1, 0, '01/01/2020', '18:00', 'hghj', 0, '2019-04-22 23:42:03'),
(14, 'a@b.com', 2, 0, '123112', '222', 'eeee', 0, '2019-04-23 00:45:07'),
(15, 'test@virginia.edu', 1, 0, '05/23/19', '22:10', 'I\'d like to book', 0, '2019-04-23 03:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbluniv`
--

CREATE TABLE `tbluniv` (
  `id` int(11) NOT NULL,
  `UniversityName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluniv`
--

INSERT INTO `tbluniv` (`id`, `UniversityName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'University of Virginia', '2017-06-18 16:24:34', '2019-04-23 00:48:23'),
(2, 'Massachusetts Institute of Technology', '2017-06-18 16:24:50', NULL),
(3, 'Princeton University', '2017-06-18 16:25:03', NULL),
(4, 'Harvard University', '2017-06-18 16:25:13', NULL),
(5, 'Columbia University', '2017-06-18 16:25:24', NULL),
(7, 'University of Chicago', '2017-06-19 06:22:13', NULL),
(8, 'Yale University', '2017-07-05 11:02:29', NULL),
(9, 'Duke University', '2019-04-21 21:56:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `website` text,
  `gender` int(11) NOT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `website`, `gender`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj Kumar', 'demo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2019-04-23 05:36:19'),
(2, 'David Chan', 'anuj@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2019-04-23 05:36:19'),
(3, 'Aaron Liu', 'webhostingamigo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '09999857868', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2017-06-17 20:01:43', '2019-04-23 05:36:19'),
(4, 'Anuj Kumar', 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '9999857868', '', 'New Delhi', 'Delhi', 'Delhi', '2017-06-17 20:03:36', '2019-04-23 05:36:19'),
(5, 'Lucy Wang', 'test1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '9015501898', NULL, NULL, NULL, NULL, '2017-06-29 18:19:08', '2019-04-23 05:36:19'),
(6, 'Lily Gong', 'php@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '9015501898', NULL, NULL, NULL, NULL, '2017-07-05 11:06:55', '2019-04-23 05:36:19'),
(7, 'Jason Lee', 'a@b.com', '81dc9bdb52d04dc20036dbd8313ed055', 'https://www.linkedin.com/in/', 2, 'b', '19950218', 'addr', 'citty', 'cntry', '2019-04-21 19:07:04', '2019-04-23 05:36:19'),
(8, 'Josh Wang', 'asdf@outlook.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '11', NULL, NULL, NULL, NULL, '2019-04-21 19:39:45', '2019-04-23 05:36:19'),
(9, 'Gigi Hamun', 'b@b.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, 'b', '', '', '', '', '2019-04-21 19:07:04', '2019-04-23 05:36:19'),
(10, 'Kendall Lee', 'admin2@b.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '12', NULL, NULL, NULL, NULL, '2019-04-21 22:35:03', '2019-04-23 05:36:19'),
(11, 'David Wu', 'a@c.com', '81dc9bdb52d04dc20036dbd8313ed055', 'https://www.linked', 0, '1062781380', '02/05/0222', 'Rice Hall, 85 Engineer\'s Way,', 'Charlottesville', 'United States', '2019-04-22 22:34:30', '2019-04-23 05:36:19'),
(12, 'Lily', 'test@virginia.edu', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 0, '2345567889', NULL, NULL, NULL, NULL, '2019-04-23 02:59:14', '2019-04-23 05:36:19'),
(13, 'test', 'tt@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2344', 2, '4342829537', '', '', '', '', '2019-04-23 05:03:35', '2019-04-23 05:36:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmentors`
--
ALTER TABLE `tblmentors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluniv`
--
ALTER TABLE `tbluniv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmentors`
--
ALTER TABLE `tblmentors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsessions`
--
ALTER TABLE `tblsessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbluniv`
--
ALTER TABLE `tbluniv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
