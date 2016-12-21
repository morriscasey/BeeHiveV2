-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2016 at 02:13 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `beetest_beeTestdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `samples`
--

CREATE TABLE IF NOT EXISTS `samples` (
  `sample_id` int(11) unsigned NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hive_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `collection_date` date NOT NULL,
  `sample_period` int(11) NOT NULL,
  `num_mites` int(11) NOT NULL,
  `notes` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submission_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `samples`
--

INSERT INTO `samples` (`sample_id`, `user`, `hive_id`, `collection_date`, `sample_period`, `num_mites`, `notes`, `submission_data`) VALUES
(253, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive 121', '2016-01-02', 1, 6, '2 more than last time', '2016-06-06 02:41:13'),
(254, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive a', '2016-02-04', 1, 2, 'Less than last time', '2016-06-06 02:43:18'),
(255, 'c62e0eb5534cb9b9aa92c6b68708d863', 'tesing', '2016-04-30', 4, 8, 'Nada', '2016-06-06 03:55:08'),
(256, 'c62e0eb5534cb9b9aa92c6b68708d863', 'tesing again', '2016-06-03', 9, 7, 'getting better', '2016-06-06 04:14:34'),
(257, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive 345', '2016-07-04', 4, 7, 'nope', '2016-06-06 06:39:18'),
(258, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive 345', '2016-07-04', 4, 7, 'nope', '2016-06-06 10:22:07'),
(259, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:25:18'),
(260, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:26:55'),
(261, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:27:12'),
(262, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:31:48'),
(263, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:33:08'),
(264, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:33:12'),
(265, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:33:58'),
(266, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Hive2.3', '2016-07-04', 4, 5, 'nope', '2016-06-06 10:34:44'),
(267, 'c62e0eb5534cb9b9aa92c6b68708d863', '87', '2016-12-31', 2, 2, '', '2016-06-06 14:51:21'),
(268, 'c62e0eb5534cb9b9aa92c6b68708d863', '87', '2016-12-31', 2, 2, '', '2016-06-06 14:59:32'),
(269, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive a', '2016-06-03', 2, 6, 'No notes as of now', '2016-06-06 16:05:13'),
(270, 'c62e0eb5534cb9b9aa92c6b68708d863', 'testing ', '2016-12-31', 9, 7, 'NO MORE MITES!!', '2016-06-06 17:38:26'),
(271, 'c62e0eb5534cb9b9aa92c6b68708d863', 'testing ', '2016-12-31', 9, 7, 'NO MORE MITES!!', '2016-06-06 17:39:35'),
(272, 'c62e0eb5534cb9b9aa92c6b68708d863', 'fefe', '2016-04-01', 9, 8, 'Not at this time. ', '2016-06-06 17:40:37'),
(273, 'c62e0eb5534cb9b9aa92c6b68708d863', 'eijri', '2016-01-01', 9, 7, 'hey there', '2016-06-06 19:23:51'),
(274, '53fba21d613b46b57c193a86d95ced50', 'test', '2016-01-31', 6, 25, 'a lot of work', '2016-06-09 21:26:56'),
(275, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive 2', '2016-01-01', 7, 9, 'none right now thanks', '2016-06-16 08:34:18'),
(276, 'c62e0eb5534cb9b9aa92c6b68708d863', '1', '2016-01-01', 1, 1, '', '2016-06-16 08:34:52'),
(277, 'c62e0eb5534cb9b9aa92c6b68708d863', '11111', '2016-01-01', 1, 1, 'fefe', '2016-06-16 08:36:58'),
(278, 'c62e0eb5534cb9b9aa92c6b68708d863', '11111', '2016-01-01', 1, 1, 'fefe', '2016-06-16 08:41:55'),
(279, 'c62e0eb5534cb9b9aa92c6b68708d863', '11111', '2016-01-01', 1, 1, 'fefe', '2016-06-16 08:42:02'),
(280, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Testing 12345', '2016-01-01', 8, 8, 'het tgere', '2016-06-16 08:42:22'),
(281, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Testing 12345', '2016-01-01', 8, 8, 'het tgere', '2016-06-16 08:44:10'),
(282, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Testing 12345', '2016-01-01', 8, 8, 'het tgere', '2016-06-16 08:44:19'),
(283, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Testing 12345', '2016-01-01', 8, 8, 'het tgere', '2016-06-16 08:44:41'),
(284, 'c62e0eb5534cb9b9aa92c6b68708d863', 'Testing 12345', '2016-01-01', 8, 8, 'het tgere', '2016-06-16 08:44:48'),
(285, 'c62e0eb5534cb9b9aa92c6b68708d863', 'abc', '2016-11-01', 9, 8, 'none', '2016-06-16 08:50:04'),
(286, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive a ', '2016-01-01', 1, 1, 'fefe', '2016-06-16 10:02:52'),
(287, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive 2', '2018-01-01', 9, 89, 'Too many mites right now. ', '2016-07-12 23:12:30'),
(288, 'c62e0eb5534cb9b9aa92c6b68708d863', 'hive 32', '2016-01-02', 9, 9, 'none', '2016-07-12 23:16:12'),
(289, '65f72b8e1c764eaf7f062d956883f993', '24', '2014-02-02', 9, 9, 'Helllo there ', '2016-08-08 08:21:31'),
(290, 'ca5b9b3419f19d5c33a07684456001ad', 'tester', '2016-01-01', 9, 9, 'nonotest at this time thanks', '2016-08-12 00:39:08'),
(291, '', 'a', '2016-01-01', 3, 1, NULL, '2016-08-12 07:10:39'),
(292, '', 'abc', '2016-02-01', 3, 3, NULL, '2016-09-02 20:19:00'),
(293, '', 'dacbgewr', '0000-00-00', 1, 1, NULL, '2016-10-12 07:21:59'),
(294, 'ab80b6635c37afd3eff4138c3cb5f13c', '123', '2017-01-01', 12, 32, 'this ar entoes', '2016-11-03 23:04:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `samples`
--
ALTER TABLE `samples`
  ADD PRIMARY KEY (`sample_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `samples`
--
ALTER TABLE `samples`
  MODIFY `sample_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
