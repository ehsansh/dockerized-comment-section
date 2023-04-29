-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2023 at 01:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comment_section`
--
CREATE DATABASE IF NOT EXISTS `comment_section` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `comment_section`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `createdAt` text DEFAULT NULL,
  `updatedAt` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `votes` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `text`, `createdAt`, `updatedAt`, `parent_id`, `votes`) VALUES
(70, 2, 'hi', '2023-02-01 07:57:48', '2023-02-01 08:31:14', 0, -3),
(71, 4, 'hi', '2023-02-01 07:59:20', '2023-02-01 08:19:23', 0, -2),
(72, 8, 'hi', '2023-02-01 08:07:51', '2023-02-01 08:19:27', 0, 0),
(77, 9, 'helo', '2023-02-01 08:18:43', '2023-02-01 08:31:21', 0, -1),
(78, 9, '@ehsan hi', '2023-02-01 08:18:54', '2023-02-01 08:18:55', 70, 1),
(79, 9, '@hani he&#x27;s r', '2023-02-01 08:19:04', '2023-02-01 08:19:28', 72, 0),
(80, 10, 'asdsad', '2023-02-01 08:57:57', '2023-02-01 08:57:57', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` text DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `salt` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `createdAt` text DEFAULT NULL,
  `updatedAt` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `expires` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `hash`, `salt`, `email`, `createdAt`, `updatedAt`, `token`, `expires`, `refresh_token`) VALUES
(2, 'ehsan', 'a42966c0a19d02de71815bde4f76efcf733695ee72d7cb288c6971460e61fbde0719bd278f8bafc82c43ad12b91e916fe44c2ed0105d3a509c425a38e3294a71', '06960f2fecf1016af7d9cc3f9f1d489d', 'ehsan@gmail.com', '2023-01-23 09:40:19', '2023-02-01 07:58:23', NULL, NULL, NULL),
(3, 'ali', 'f7de3ec69d96bca5215f069ede52ffb234f8a67b0947af541799b367fccdc7875921f98fc8a6741f991edb4a7f11c6a9262f0ca3da8db95251f87c3e4d56923c', '6d68f82388a3b0e1c562e5e7c43ced3a', 'ali@gmail.com', '2023-01-25 20:09:37', '2023-02-01 08:18:23', NULL, NULL, NULL),
(4, 'saba', '255c906dc23663b54d4eb2e05c1b18fd33eda864ad72a9840af34c7b1874fc7d483ed9a1049a1e4087c82e23d40b3b50affb1a7ac795a0fdea70d0ac750936d1', '54a23d3d1600d54be13b651a41d2183c', 'saba@gmail.com', '2023-01-28 17:24:49', '2023-02-01 08:01:30', NULL, NULL, NULL),
(5, 'james', 'f5e7f47771d054fa609fec2755289f2dad280b66e5bb4b1b3398d94ce5070c599ec9aee72a0619869d835ab89746c3b134ff757d7b16600b9e2af1d4fe51cae4', '8c538c2415739b791aa5f84b6aa25130', 'james@gmail.com', '2023-01-30 15:39:01', '2023-02-01 08:09:43', NULL, NULL, NULL),
(6, 'Mrs Maisel', '1c692e0fd7a3f8698053f567695ba4fb7916573820490ee70417a147c56a4baa1d5e88c412d261e1da8ed6945c419da22dd2649b47f4589fef86274f7f96c3a3', '1a53c54008a31900d0a089a6af547452', 'maisel@gmail.com', '2023-01-31 08:07:03', '2023-01-31 08:07:34', NULL, NULL, NULL),
(7, 'suzi', '808036274852fa2ecf3bbf32235cd9d632031dc1a0dd760fa6926a4501b458af03993699aa768a9d1637a565205173a4e3ac04a96603fb42a702b8bda51bf1c6', '5ad2203b7f815872655d5d2ac98935ee', 'suzi@gmail.com', '2023-01-31 12:26:18', '2023-01-31 12:26:18', NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoic3V6aSIsImVtYWlsIjoic3V6aUBnbWFpbC5jb20iLCJpZCI6NywiaWF0IjoxNjc1MTY3OTc4LCJleHAiOjE2NzUxODIzNzh9.e-jQF4xfdpaeIXl0285TKTjQjJt3Mznr1zd-dIMsL9s'),
(8, 'hani', '3d6887b537c43eef82fafaa554613b91cf35b288c451cd13f2a750364adf8d99a3bb0a613fe7401234375fdc54f066bf379524237a292c10a3cbaf267ce58aa5', 'da7537fc716b7067235a5df6e2caeb81', 'hani@gmail.com', '2023-01-31 12:28:16', '2023-02-01 08:09:16', NULL, NULL, NULL),
(9, 'nazila', '838a3ef6a512101b22e75caa3cbe0ae382c909ea722b12ec3de2afd82a17fd30015ed89c835fa6063e72d97a58b1607f20f5481a590abeafdae6c25d90aa0d8d', 'e93a31370a79821c26601daec384ffcd', 'nazila@gmail.com', '2023-02-01 08:18:38', '2023-02-01 08:57:31', NULL, NULL, NULL),
(10, 'NADI', '03f609b047723fece2d4eb1d1af7be384e6654e2625bbef2962170d96cad8799340308209820107278ee5502a6750ab24e53faef9c79729bb2b714ce170c29ab', 'cfc5e7bfe26800a1cbf0ccde10b3feb1', 'nadi@gmail.com', '2023-02-01 08:57:48', '2023-02-01 08:57:48', NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTkFESSIsImVtYWlsIjoibmFkaUBnbWFpbC5jb20iLCJpZCI6MTAsImlhdCI6MTY3NTI0MTg2OCwiZXhwIjoxNjc1MjU2MjY4fQ.BhE7LnD8rb_vWjibb6qgNvrw8-ygG0Xoz7LpaV7Eahw');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `comment_id` int(255) NOT NULL,
  `vote` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `user_id`, `comment_id`, `vote`) VALUES
(31, 2, 70, -1),
(32, 8, 70, -1),
(33, 8, 71, -1),
(34, 8, 72, 0),
(35, 5, 70, -1),
(36, 5, 71, -1),
(37, 5, 72, -1),
(38, 3, 70, -1),
(39, 3, 71, -1),
(40, 3, 72, 1),
(41, 3, 75, 1),
(42, 3, 73, -1),
(43, 9, 71, 1),
(44, 9, 70, 1),
(45, 9, 78, 1),
(46, 9, 72, 0),
(47, 9, 79, 0),
(48, 9, 77, -1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
