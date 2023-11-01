-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 10:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avaliacao`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`) VALUES
(1, 'Technical', 1),
(2, 'Testing', 1),
(3, 'Automation', 1),
(4, 'Design', 1),
(5, 'Programming', 1),
(7, 'Security', 1),
(9, 'asfsaf', 1),
(10, 'NOVO', 0),
(11, 'Nono', 1),
(12, 'outro', 1),
(13, 'outro de novo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `init_msg` text NOT NULL,
  `department` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `last_reply` int(11) NOT NULL,
  `user_read` int(11) NOT NULL,
  `admin_read` int(11) NOT NULL,
  `resolved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `protocol`, `user_id`, `init_msg`, `department`, `date`, `last_reply`, `user_read`, `admin_read`, `resolved`) VALUES
(1, '617181b83c1e7', '1', 0, 'O sistema da firma não abre AJUDA!!!', 1, '1634828728', 1, 0, 1, 1),
(2, '61718394c0ad5', '2', 0, 'Esse é o quarto ticket que eu abro a respeito disto.', 1, '1634829204', 1, 0, 1, 1),
(3, 'asfasfas', '1', 0, 'zfsafsaf', 1, '1635515045', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `ticket_id` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `user`, `text`, `ticket_id`, `date`) VALUES
(1, 1, 'This is fixed', '1', '1634829030'),
(2, 1, 'Please check it.', '1', '1634829129'),
(3, 1, 'The issue is fixed, you can check at your end. Thanks', '2', '1634829404'),
(4, 2, 'fixed', '2', '1635515403'),
(5, 2, 'this is fixed!', '4', '1635517083'),
(9, 1, 'ok', '1', '1698814989');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `user_type` enum('admin','support','user') NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `status`, `create_at`, `update_at`) VALUES
(1, 'Super User', 'admin@something.com', '202cb962ac59075b964b07152d234b70', 'admin', 1, '2023-10-30 12:00:00', '2023-10-30 12:00:01'),
(2, 'Caiã Ceron', 'caiaceron@something.com', '202cb962ac59075b964b07152d234b70', 'support', 1, '2023-10-30 12:01:00', '2023-10-30 12:01:01'),
(3, 'Marcella Macedo', 'marcellamacedo@something.com', '202cb962ac59075b964b07152d234b70', 'user', 1, '2023-10-30 12:02:00', '2023-10-30 12:02:02'),
(6, 'test guy', 'testguy@faqs.com', '202cb962ac59075b964b07152d234b70', 'user', 1, '2023-10-31 21:53:34', '2023-10-31 21:53:34'),
(7, 'CACACACACA', 'assaf@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 1, '2023-11-01 00:43:26', '2023-11-01 00:43:26'),
(8, 'safas', 'kkkk@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 1, '2023-11-01 01:04:13', '2023-11-01 01:04:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
