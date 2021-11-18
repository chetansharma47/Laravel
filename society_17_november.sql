-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2021 at 02:55 PM
-- Server version: 5.7.36-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-10+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_16_november`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_type` enum('Super Admin','Admin','Marketing','Managment','Staff') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `role_type`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Nadeer', 'adminn@yopmail.com', '$2y$10$01b9.qb3ioJYe3LZK6Yamey.JP5XELdGOBNTGjYT.CWJjMLMeTAyW', 'Active', 'Super Admin', 'f8HCdpapbkR5qpdHYgnCZ4K7j13AwOPt2yaO0TAXANfTlNjMYA64JyXckr3KTAGB', '2021-11-10 18:30:00', '2021-11-16 07:05:49', 'Nadeer', 'Nadeer'),
(2, 'admin2', NULL, '$2y$10$R45f7IQlsUW2t/kK1UtlR.RHJuwBv7/FvMOkWCFxPJUJdz8fcnFjC', 'Active', 'Admin', 'F0JOfly5MFkD7frjm8CWXgcafeeEZckoBvJB4TS5UcbnOkakovZb6t8s085E', '2021-11-11 06:26:38', '2021-11-16 09:03:01', 'Nadeer', 'Nadeer'),
(3, 'admin3', NULL, '$2y$10$foJqLWzLh0vj8bkPvJkLbOPynDIPBtif6l9V.cn6tMScE5Lyvw2xe', 'Active', 'Managment', 'E9geyFHuB1cnTUv1lPXPsF7iHqp0rpUYnmXwggLvCftwMV4MtbLF8vRk2mCV', '2021-11-11 06:28:56', '2021-11-15 05:29:09', 'admin2', 'admin2'),
(4, 'kanhaiya', NULL, '$2y$10$S2ClRSThHO0X10on0SUBO.ga3Z1UgA/a9x7COjhh3jAQvgGAX6Dki', 'Active', 'Super Admin', 'T3Tl08cPzGgVVjSzzbVaA8rHmVhTzQl9jyXfLTPLeSxPhEK5yd0jKy0IZd2INf1H', '2021-11-12 13:54:05', '2021-11-15 05:33:16', 'Nadeer', 'admin2'),
(5, 'kamal', NULL, '$2y$10$C/e306XmnKmqWR1ke8NmQ.tjqFJA7SgDIkNWfB7PUWHsNQCV45ld.', 'Active', 'Staff', 'ba12PwD1P22v2y7PGPBITnS0ATycylUHAdyUfo4Ilts8vFRL2NinegfSztrW', '2021-11-12 14:21:08', '2021-11-15 06:08:54', 'kanhaiya', 'Nadeer'),
(6, 'harman', NULL, '$2y$10$QHcQkmki3OABvV6p/1uiLeOSaJLvi3L3ddAmCB3yRCL9/dZoTIPpG', 'Active', 'Admin', 'T5kd7cCcD52ryje0QybCtIoivhjwg9O8kmwnGNBPuMzp2RWDdMEVY9X3ZLawKdim', '2021-11-16 06:47:14', '2021-11-16 06:48:19', 'Nadeer', 'Nadeer'),
(7, 'da', NULL, '$2y$10$8NHbg52YnI5fSETef8GMMuavCObTx3GKySLSbeU3vsalZxZw7Uh.u', 'Active', 'Super Admin', NULL, '2021-11-16 07:27:49', '2021-11-16 07:27:49', 'admin2', 'admin2'),
(8, 'eq', NULL, '$2y$10$qRMTUCPqzfX2mmnaWEVtPeqk/X5YrX6ntqbTBua3gXNkwFe0Vuav6', 'Active', 'Super Admin', NULL, '2021-11-16 07:32:18', '2021-11-16 07:32:18', 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `admin_criteria_notifications`
--

CREATE TABLE `admin_criteria_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `push_type` int(11) NOT NULL DEFAULT '0',
  `sms_type` int(11) NOT NULL DEFAULT '0',
  `gender` enum('None','Male','Female','Other','All') COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `noti_type` int(11) DEFAULT NULL COMMENT '1=> Transaction, 2=> Cahsback, 3=> Bonus, 4=>  Referral, 5 => Event,  6=> Offer, 7=> Creteria',
  `event_id` int(11) DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_criteria_notifications`
--

INSERT INTO `admin_criteria_notifications` (`id`, `city_id`, `user_id`, `city_name`, `message`, `push_type`, `sms_type`, `gender`, `nationality`, `sent_by`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `noti_type`, `event_id`, `offer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-12 13:29:06', '2021-11-12 13:29:06', NULL),
(2, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 13:31:43', '2021-11-12 13:31:43', NULL),
(3, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 13:31:45', '2021-11-12 13:31:45', NULL),
(4, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 13:35:44', '2021-11-12 13:35:44', NULL),
(5, 1, 1, 'Abu Dhabi', 'fdsfdf', 1, 0, 'Female', 'Afghanistan', 'Nadeer', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-12 13:36:40', '2021-11-12 13:36:40', NULL),
(6, 1, 1, 'Abu Dhabi', 'ddfdf', 1, 0, 'Female', 'Afghanistan', 'Nadeer', '2021-11-12', '2021-11-12', 'Greater Than', 50, NULL, 7, NULL, NULL, '2021-11-12 13:37:18', '2021-11-12 13:37:18', NULL),
(7, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 13:42:19', '2021-11-12 13:42:19', NULL),
(8, NULL, 2, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 13:45:18', '2021-11-12 13:45:18', NULL),
(9, NULL, 1, NULL, 'This is a referral code bonus', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 4, NULL, NULL, '2021-11-12 13:46:22', '2021-11-12 13:46:22', NULL),
(10, NULL, 2, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 13:46:25', '2021-11-12 13:46:25', NULL),
(11, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 13:47:22', '2021-11-12 13:47:22', NULL),
(12, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-12 14:01:41', '2021-11-12 14:01:41', NULL),
(13, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-12 14:01:42', '2021-11-12 14:01:42', NULL),
(14, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-12 14:01:43', '2021-11-12 14:01:43', NULL),
(15, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:03:16', '2021-11-12 14:03:16', NULL),
(16, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:03:17', '2021-11-12 14:03:17', NULL),
(17, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:03:18', '2021-11-12 14:03:18', NULL),
(18, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:03:19', '2021-11-12 14:03:19', NULL),
(19, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Offer1 at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 3, '2021-11-12 14:03:21', '2021-11-12 14:03:21', NULL),
(20, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:03:22', '2021-11-12 14:03:22', NULL),
(21, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:03:23', '2021-11-12 14:03:23', NULL),
(22, NULL, 2, NULL, 'What\'s Happening Today: Enjoy offer4 at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 5, '2021-11-12 14:03:24', '2021-11-12 14:03:24', NULL),
(23, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:04:28', '2021-11-12 14:04:28', NULL),
(24, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:04:29', '2021-11-12 14:04:29', NULL),
(25, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:04:30', '2021-11-12 14:04:30', NULL),
(26, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:04:31', '2021-11-12 14:04:31', NULL),
(27, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:04:32', '2021-11-12 14:04:32', NULL),
(28, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:04:33', '2021-11-12 14:04:33', NULL),
(29, NULL, 2, NULL, 'What\'s Happening Today: Enjoy offer5 at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 6, '2021-11-12 14:04:34', '2021-11-12 14:04:34', NULL),
(30, 1, 1, 'Abu Dhabi', 'fddfdsf', 1, 0, 'All', 'Afghanistan', 'kanhaiya', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-12 14:06:59', '2021-11-12 14:06:59', NULL),
(31, 1, 2, 'Abu Dhabi', 'fddfdsf', 1, 0, 'All', 'Afghanistan', 'kanhaiya', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-12 14:07:00', '2021-11-12 14:07:00', NULL),
(32, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:24:31', '2021-11-12 14:24:31', NULL),
(33, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:24:31', '2021-11-12 14:24:31', NULL),
(34, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:25:05', '2021-11-12 14:25:05', NULL),
(35, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:26:37', '2021-11-12 14:26:37', NULL),
(36, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:27:24', '2021-11-12 14:27:24', NULL),
(37, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:28:24', '2021-11-12 14:28:24', NULL),
(38, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:28:56', '2021-11-12 14:28:56', NULL),
(39, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:29:31', '2021-11-12 14:29:31', NULL),
(40, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:29:37', '2021-11-12 14:29:37', NULL),
(41, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:46:15', '2021-11-12 14:46:15', NULL),
(42, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:47:48', '2021-11-12 14:47:48', NULL),
(43, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:49:04', '2021-11-12 14:49:04', NULL),
(44, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:49:23', '2021-11-12 14:49:23', NULL),
(45, NULL, 1, NULL, 'What\'s Happening Today: Enjoy asdgha at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 10, '2021-11-15 07:39:55', '2021-11-15 07:39:55', NULL),
(46, NULL, 1, NULL, 'What\'s Happening Today: Enjoy guyguy at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 11, '2021-11-15 09:06:15', '2021-11-15 09:06:15', NULL),
(47, NULL, 1, NULL, 'What\'s Happening Today: Enjoy gawtq at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 12, '2021-11-15 09:07:06', '2021-11-15 09:07:06', NULL),
(48, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:33:41', '2021-11-16 04:33:41', NULL),
(49, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:33:42', '2021-11-16 04:33:42', NULL),
(50, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:33:44', '2021-11-16 04:33:44', NULL),
(51, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:33:45', '2021-11-16 04:33:45', NULL),
(52, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:37:07', '2021-11-16 04:37:07', NULL),
(53, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:37:08', '2021-11-16 04:37:08', NULL),
(54, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:37:09', '2021-11-16 04:37:09', NULL),
(55, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:37:10', '2021-11-16 04:37:10', NULL),
(56, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:38:29', '2021-11-16 04:38:29', NULL),
(57, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:38:30', '2021-11-16 04:38:30', NULL),
(58, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:40:17', '2021-11-16 04:40:17', NULL),
(59, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:40:18', '2021-11-16 04:40:18', NULL),
(60, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:41:33', '2021-11-16 04:41:33', NULL),
(61, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:41:34', '2021-11-16 04:41:34', NULL),
(62, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:41:51', '2021-11-16 04:41:51', NULL),
(63, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:41:52', '2021-11-16 04:41:52', NULL),
(64, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:42:36', '2021-11-16 04:42:36', NULL),
(65, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:42:37', '2021-11-16 04:42:37', NULL),
(66, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:43:59', '2021-11-16 04:43:59', NULL),
(67, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:00', '2021-11-16 04:44:00', NULL),
(68, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:44:01', '2021-11-16 04:44:01', NULL),
(69, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:02', '2021-11-16 04:44:02', NULL),
(70, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:44:47', '2021-11-16 04:44:47', NULL),
(71, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:48', '2021-11-16 04:44:48', NULL),
(72, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:44:49', '2021-11-16 04:44:49', NULL),
(73, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:50', '2021-11-16 04:44:50', NULL),
(74, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:46:38', '2021-11-16 04:46:38', NULL),
(75, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:46:39', '2021-11-16 04:46:39', NULL),
(76, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:46:40', '2021-11-16 04:46:40', NULL),
(77, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:46:41', '2021-11-16 04:46:41', NULL),
(78, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:16', '2021-11-16 04:47:16', NULL),
(79, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:17', '2021-11-16 04:47:17', NULL),
(80, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:18', '2021-11-16 04:47:18', NULL),
(81, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:19', '2021-11-16 04:47:19', NULL),
(82, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:49', '2021-11-16 04:47:49', NULL),
(83, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:50', '2021-11-16 04:47:50', NULL),
(84, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:51', '2021-11-16 04:47:51', NULL),
(85, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:52', '2021-11-16 04:47:52', NULL),
(86, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:48:44', '2021-11-16 04:48:44', NULL),
(87, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:48:46', '2021-11-16 04:48:46', NULL),
(88, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:48:46', '2021-11-16 04:48:46', NULL),
(89, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:48:47', '2021-11-16 04:48:47', NULL),
(90, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:49:58', '2021-11-16 04:49:58', NULL),
(91, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:49:59', '2021-11-16 04:49:59', NULL),
(92, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:50:00', '2021-11-16 04:50:00', NULL),
(93, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:50:01', '2021-11-16 04:50:01', NULL),
(94, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:53:16', '2021-11-16 04:53:16', NULL),
(95, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:53:17', '2021-11-16 04:53:17', NULL),
(96, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:53:18', '2021-11-16 04:53:18', NULL),
(97, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:53:19', '2021-11-16 04:53:19', NULL),
(98, NULL, 1, NULL, 'What\'s Happening Today: Enjoy dwqdwqdwq at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 3, NULL, '2021-11-16 06:09:40', '2021-11-16 06:09:40', NULL),
(99, NULL, 2, NULL, 'What\'s Happening Today: Enjoy dwqdwqdwq at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 3, NULL, '2021-11-16 06:09:41', '2021-11-16 06:09:41', NULL),
(100, NULL, 1, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:48', '2021-11-16 12:23:48', NULL),
(101, NULL, 2, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:49', '2021-11-16 12:23:49', NULL),
(102, NULL, 3, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:50', '2021-11-16 12:23:50', NULL),
(103, NULL, 4, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:52', '2021-11-16 12:23:52', NULL),
(104, NULL, 1, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:26', '2021-11-16 12:24:26', NULL),
(105, NULL, 2, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:28', '2021-11-16 12:24:28', NULL),
(106, NULL, 3, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:29', '2021-11-16 12:24:29', NULL),
(107, NULL, 4, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:30', '2021-11-16 12:24:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `uniq_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_file_show` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_type` int(11) DEFAULT '0',
  `sms_type` int(11) DEFAULT '0',
  `email_type` int(11) DEFAULT '0',
  `notification_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `uniq_id`, `title`, `message`, `image`, `image_type`, `name_of_file_show`, `push_type`, `sms_type`, `email_type`, `notification_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Your Amount has been transaction successfully.', NULL, NULL, NULL, 1, 0, 1, 'Transaction', '2021-10-11 11:04:04', '2021-11-12 13:43:10', NULL),
(2, 2, NULL, 'Your cashback has been successfully earned.', NULL, NULL, NULL, 1, 0, 1, 'Cashback', '2021-10-11 11:05:06', '2021-11-12 06:28:10', NULL),
(3, 3, NULL, 'You have successfully earned bonus.', NULL, NULL, NULL, 1, 0, 1, 'Welcome Bonus', '2021-10-11 11:05:37', '2021-11-12 06:28:12', NULL),
(4, 4, NULL, 'This is a referral code bonus', NULL, NULL, NULL, 1, 0, 1, 'Referral Bonus', '2021-10-11 11:05:59', '2021-11-16 04:36:45', NULL),
(5, 5, NULL, 'dummy event', NULL, NULL, NULL, 1, 0, 1, 'Event', '2021-10-11 11:08:01', '2021-11-12 13:30:04', NULL),
(6, 6, NULL, 'dummy', NULL, NULL, NULL, 1, 0, 1, 'Specific Customer', '2021-10-11 11:08:56', '2021-11-12 13:32:43', NULL),
(7, 7, 'Welcome to Capital Motion Loyalty', 'Hi welcome,\r\nYour registration has been done successfully and you will get bonus on your register.', '1112202118292982618e6531b60a7.jpg', 'jpg', 'CtydOM.jpg', 0, 0, 1, 'Welcome Email', '2021-10-11 11:11:56', '2021-11-12 12:59:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_datas`
--

CREATE TABLE `application_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_file_show_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_datas`
--

INSERT INTO `application_datas` (`id`, `admin_id`, `logo`, `video`, `color`, `name_of_file_show_logo`, `name_of_file_show_video`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '111620211137046161934a8875a24.jpeg', '111620211137496461934ab5842b9.mp4', '#de0df2', '9050572b-18b1-48ac-98b6-0d986e404ae2.jpeg', 'splashVideo.mp4', '2021-10-27 18:30:00', '2021-11-16 06:43:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_images`
--

CREATE TABLE `application_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_data_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniq_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_images`
--

INSERT INTO `application_images` (`id`, `application_data_id`, `image`, `name_of_file_show`, `image_type`, `uniq_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1112202120080024618e7c48a92fa.png', '5 ratio8.png', 'Welcome Screen Image', 5, NULL, '2021-11-15 04:32:43', NULL),
(2, 1, '1112202120075456618e7c42476a7.png', '1.png', 'Welcome Screen Image 2', 6, NULL, '2021-11-12 14:37:54', NULL),
(3, 1, '1112202120074848618e7c3ca524e.png', '2.png', 'Welcome Screen Image 3', 7, NULL, '2021-11-12 14:37:48', NULL),
(4, 1, '1112202120094518618e7cb12935e.jpeg', '101-1012593_high-resolution-desktop-wallpapers-hd-wallpapers-hd-high.jpg', 'Welcome Screen Image 4', 8, NULL, '2021-11-12 14:39:45', NULL),
(5, 1, '1112202120033537618e7b3f54665.jpeg', '1112202118292982618e6531b60a7.jpg', 'Offer Image', 3, '2021-11-11 05:35:36', '2021-11-12 14:33:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_badges`
--

CREATE TABLE `assign_badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `when_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_badges`
--

INSERT INTO `assign_badges` (`id`, `user_id`, `badge_id`, `comment`, `status`, `when_day`, `from_date`, `to_date`, `from_time`, `to_time`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`) VALUES
(1, 1, 1, 'xxx', 'Active', 'Friday', '2021-11-12', '2021-11-12', '19:09:00', '20:09:00', '2021-11-12 13:39:27', '2021-11-16 05:28:12', 'Nadeer', 'Nadeer', NULL),
(2, 1, 2, 'wdsds', 'Active', 'Friday', '2021-11-12', '2021-11-12', '19:27:00', '21:27:00', '2021-11-12 13:57:01', '2021-11-16 05:34:03', 'kanhaiya', 'kanhaiya', '2021-11-16 05:34:03'),
(3, 3, 2, 'wedwqd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2021-11-16', '2021-11-16', '11:06:00', '12:06:00', '2021-11-16 05:38:04', '2021-11-16 05:39:13', 'admin2', 'Nadeer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_user_venues`
--

CREATE TABLE `assign_user_venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `venu_id` int(10) UNSIGNED NOT NULL,
  `venue_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_user_venues`
--

INSERT INTO `assign_user_venues` (`id`, `venu_id`, `venue_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 1, '2021-11-12 13:23:20', '2021-11-12 13:23:20', NULL),
(3, 1, 2, '2021-11-12 14:19:01', '2021-11-12 14:19:01', NULL),
(4, 1, 3, '2021-11-15 05:04:32', '2021-11-15 05:04:32', NULL),
(5, 2, 3, '2021-11-15 05:04:32', '2021-11-15 05:04:32', NULL),
(9, 2, 4, '2021-11-16 09:15:03', '2021-11-16 09:15:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `badge_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `admin_id`, `badge_name`, `image`, `name_of_file_show`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'badge1', '1112202119084992618e6e6930fb4.png', 'Screenshot_13.png', 'Inactive', 'Nadeer', 'Nadeer', '2021-11-12 13:38:49', '2021-11-16 05:28:21', NULL),
(2, 4, 'badge2', '1112202119262638618e728ad68fc.png', 'Screenshot_23.png', 'Active', 'kanhaiya', 'Nadeer', '2021-11-12 13:56:26', '2021-11-16 05:34:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cashbacks`
--

CREATE TABLE `cashbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id_cashback` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `venu_id` int(10) UNSIGNED NOT NULL,
  `promotion_cashback_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `cashback_percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cashbacks`
--

INSERT INTO `cashbacks` (`id`, `unique_id_cashback`, `admin_id`, `venu_id`, `promotion_cashback_name`, `image`, `day_on`, `from_date`, `to_date`, `from_time`, `to_time`, `cashback_percentage`, `status`, `name_of_file_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 4, 1, 'Promo', '111220212012261618e7d52bd37c.png', 'Sunday,Saturday,Friday,Thursday,Wednesday,Tuesday,Monday', '2021-11-16', '2021-11-26', '20:12:00', '21:12:00', '20.0', 'Active', 'harshit-sharma-weRtrhhTz4s-unsplash.jpg', '2021-11-12 14:42:27', '2021-11-16 05:44:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Abu Dhabi', NULL, NULL, NULL),
(2, 'Ajman', NULL, NULL, NULL),
(3, 'Dubai', NULL, NULL, NULL),
(4, 'Fujairah', NULL, NULL, NULL),
(5, 'Ras Al Khaimah', NULL, NULL, NULL),
(6, 'Sharjah', NULL, NULL, NULL),
(7, 'Umm Al Quwain', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `sortname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '966',
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `code`, `flag`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AC', 'Ascension Island', '247', '🇦🇨', 0, 0, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(2, 'AD', 'Andorra', '376', '🇦🇩', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(3, 'AE', 'United Arab Emirates', '971', '🇦🇪', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(4, 'AF', 'Afghanistan', '93', '🇦🇫', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(5, 'AG', 'Antigua & Barbuda', '1268', '🇦🇬', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(6, 'AI', 'Anguilla', '1264', '🇦🇮', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(7, 'AL', 'Albania', '355', '🇦🇱', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(8, 'AM', 'Armenia', '374', '🇦🇲', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(9, 'AO', 'Angola', '244', '🇦🇴', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(10, 'AQ', 'Antarctica', '672', '🇦🇶', 0, 0, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(11, 'AR', 'Argentina', '54', '🇦🇷', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(12, 'AS', 'American Samoa', '1684', '🇦🇸', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(13, 'AT', 'Austria', '43', '🇦🇹', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(14, 'AU', 'Australia', '61', '🇦🇺', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(15, 'AW', 'Aruba', '297', '🇦🇼', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(16, 'AX', 'Åland Islands', '358', '🇦🇽', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(17, 'AZ', 'Azerbaijan', '994', '🇦🇿', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(18, 'BA', 'Bosnia & Herzegovina', '387', '🇧🇦', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(19, 'BB', 'Barbados', '1246', '🇧🇧', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(20, 'BD', 'Bangladesh', '880', '🇧🇩', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(21, 'BE', 'Belgium', '32', '🇧🇪', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(22, 'BF', 'Burkina Faso', '226', '🇧🇫', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(23, 'BG', 'Bulgaria', '359', '🇧🇬', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(24, 'BH', 'Bahrain', '973', '🇧🇭', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(25, 'BI', 'Burundi', '257', '🇧🇮', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(26, 'BJ', 'Benin', '229', '🇧🇯', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(27, 'BL', 'St. Barthélemy', '590', '🇧🇱', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(28, 'BM', 'Bermuda', '1441', '🇧🇲', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(29, 'BN', 'Brunei', '673', '🇧🇳', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(30, 'BO', 'Bolivia', '591', '🇧🇴', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(31, 'BQ', 'Caribbean Netherlands', '599', '🇧🇶', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(32, 'BR', 'Brazil', '55', '🇧🇷', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(33, 'BS', 'Bahamas', '1242', '🇧🇸', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(34, 'BT', 'Bhutan', '975', '🇧🇹', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(35, 'BV', 'Bouvet Island', '55', '🇧🇻', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(36, 'BW', 'Botswana', '267', '🇧🇼', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(37, 'BY', 'Belarus', '375', '🇧🇾', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(38, 'BZ', 'Belize', '501', '🇧🇿', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(39, 'CA', 'Canada', '1', '🇨🇦', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(40, 'CC', 'Cocos (Keeling) Islands', '61', '🇨🇨', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(41, 'CD', 'Congo - Kinshasa', '243', '🇨🇩', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(42, 'CF', 'Central African Republic', '236', '🇨🇫', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(43, 'CG', 'Congo - Brazzaville', '242', '🇨🇬', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(44, 'CH', 'Switzerland', '41', '🇨🇭', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(45, 'CI', 'Côte d’Ivoire', '225', '🇨🇮', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(46, 'CK', 'Cook Islands', '682', '🇨🇰', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(47, 'CL', 'Chile', '56', '🇨🇱', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(48, 'CM', 'Cameroon', '237', '🇨🇲', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(49, 'CN', 'China', '86', '🇨🇳', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(50, 'CO', 'Colombia', '57', '🇨🇴', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(51, 'CR', 'Costa Rica', '506', '🇨🇷', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(52, 'CU', 'Cuba', '53', '🇨🇺', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(53, 'CV', 'Cape Verde', '238', '🇨🇻', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(54, 'CW', 'Curaçao', '5999', '🇨🇼', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(55, 'CX', 'Christmas Island', '61', '🇨🇽', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(56, 'CY', 'Cyprus', '357', '🇨🇾', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(57, 'CZ', 'Czechia', '420', '🇨🇿', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(58, 'DE', 'Germany', '49', '🇩🇪', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(59, 'DG', 'Diego Garcia', '246', '🇩🇬', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(60, 'DJ', 'Djibouti', '253', '🇩🇯', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(61, 'DK', 'Denmark', '45', '🇩🇰', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(62, 'DM', 'Dominica', '1767', '🇩🇲', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(63, 'DO', 'Dominican Republic', '1809', '🇩🇴', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(64, 'DZ', 'Algeria', '213', '🇩🇿', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(65, 'EC', 'Ecuador', '593', '🇪🇨', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(66, 'EE', 'Estonia', '372', '🇪🇪', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(67, 'EG', 'Egypt', '20', '🇪🇬', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(68, 'EH', 'Western Sahara', '212', '🇪🇭', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(69, 'ER', 'Eritrea', '291', '🇪🇷', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(70, 'ES', 'Spain', '34', '🇪🇸', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(71, 'ET', 'Ethiopia', '251', '🇪🇹', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(72, 'FI', 'Finland', '358', '🇫🇮', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(73, 'FJ', 'Fiji', '679', '🇫🇯', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(74, 'FK', 'Falkland Islands', '500', '🇫🇰', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(75, 'FM', 'Micronesia', '691', '🇫🇲', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(76, 'FO', 'Faroe Islands', '298', '🇫🇴', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(77, 'FR', 'France', '33', '🇫🇷', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(78, 'GA', 'Gabon', '241', '🇬🇦', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(79, 'GB', 'United Kingdom', '44', '🇬🇧', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(80, 'GD', 'Grenada', '1473', '🇬🇩', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(81, 'GE', 'Georgia', '995', '🇬🇪', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(82, 'GF', 'French Guiana', '594', '🇬🇫', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(83, 'GG', 'Guernsey', '44', '🇬🇬', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(84, 'GH', 'Ghana', '233', '🇬🇭', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(85, 'GI', 'Gibraltar', '350', '🇬🇮', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(86, 'GL', 'Greenland', '299', '🇬🇱', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(87, 'GM', 'Gambia', '220', '🇬🇲', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(88, 'GN', 'Guinea', '224', '🇬🇳', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(89, 'GP', 'Guadeloupe', '590', '🇬🇵', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(90, 'GQ', 'Equatorial Guinea', '240', '🇬🇶', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(91, 'GR', 'Greece', '30', '🇬🇷', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(92, 'GS', 'South Georgia & South Sandwich Islands', '500', '🇬🇸', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(93, 'GT', 'Guatemala', '502', '🇬🇹', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(94, 'GU', 'Guam', '1671', '🇬🇺', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(95, 'GW', 'Guinea-Bissau', '245', '🇬🇼', 0, 0, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(96, 'GY', 'Guyana', '592', '🇬🇾', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(97, 'HK', 'Hong Kong SAR China', '852', '🇭🇰', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(98, 'HN', 'Honduras', '504', '🇭🇳', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(99, 'HR', 'Croatia', '385', '🇭🇷', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(100, 'HT', 'Haiti', '509', '🇭🇹', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(101, 'HU', 'Hungary', '36', '🇭🇺', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(102, 'ID', 'Indonesia', '62', '🇮🇩', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(103, 'IE', 'Ireland', '353', '🇮🇪', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(104, 'IL', 'Israel', '972', '🇮🇱', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(105, 'IM', 'Isle of Man', '44', '🇮🇲', 0, 0, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(106, 'IN', 'India', '91', '🇮🇳', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(107, 'IO', 'British Indian Ocean Territory', '246', '🇮🇴', 0, 0, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(108, 'IQ', 'Iraq', '964', '🇮🇶', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(109, 'IR', 'Iran', '98', '🇮🇷', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(110, 'IS', 'Iceland', '354', '🇮🇸', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(111, 'IT', 'Italy', '39', '🇮🇹', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(112, 'JE', 'Jersey', '44', '🇯🇪', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(113, 'JM', 'Jamaica', '1876', '🇯🇲', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(114, 'JO', 'Jordan', '962', '🇯🇴', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(115, 'JP', 'Japan', '81', '🇯🇵', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(116, 'KE', 'Kenya', '254', '🇰🇪', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(117, 'KG', 'Kyrgyzstan', '996', '🇰🇬', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(118, 'KH', 'Cambodia', '855', '🇰🇭', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(119, 'KI', 'Kiribati', '686', '🇰🇮', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(120, 'KM', 'Comoros', '269', '🇰🇲', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(121, 'KN', 'St. Kitts & Nevis', '1869', '🇰🇳', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(122, 'KP', 'North Korea', '850', '🇰🇵', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(123, 'KR', 'South Korea', '82', '🇰🇷', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(124, 'KW', 'Kuwait', '965', '🇰🇼', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(125, 'KY', 'Cayman Islands', '1345', '🇰🇾', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(126, 'KZ', 'Kazakhstan', '76', '🇰🇿', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(127, 'LA', 'Laos', '856', '🇱🇦', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(128, 'LB', 'Lebanon', '961', '🇱🇧', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(129, 'LC', 'St. Lucia', '1758', '🇱🇨', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(130, 'LI', 'Liechtenstein', '423', '🇱🇮', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(131, 'LK', 'Sri Lanka', '94', '🇱🇰', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(132, 'LR', 'Liberia', '231', '🇱🇷', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(133, 'LS', 'Lesotho', '266', '🇱🇸', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(134, 'LT', 'Lithuania', '370', '🇱🇹', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(135, 'LU', 'Luxembourg', '352', '🇱🇺', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(136, 'LV', 'Latvia', '371', '🇱🇻', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(137, 'LY', 'Libya', '218', '🇱🇾', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(138, 'MA', 'Morocco', '212', '🇲🇦', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(139, 'MC', 'Monaco', '377', '🇲🇨', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(140, 'MD', 'Moldova', '373', '🇲🇩', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(141, 'ME', 'Montenegro', '382', '🇲🇪', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(142, 'MF', 'St. Martin', '590', '🇲🇫', 0, 0, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(143, 'MG', 'Madagascar', '261', '🇲🇬', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(144, 'MH', 'Marshall Islands', '692', '🇲🇭', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(145, 'MK', 'Macedonia', '389', '🇲🇰', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(146, 'ML', 'Mali', '223', '🇲🇱', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(147, 'MM', 'Myanmar (Burma)', '95', '🇲🇲', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(148, 'MN', 'Mongolia', '976', '🇲🇳', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(149, 'MO', 'Macau SAR China', '853', '🇲🇴', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(150, 'MP', 'Northern Mariana Islands', '1670', '🇲🇵', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(151, 'MQ', 'Martinique', '596', '🇲🇶', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(152, 'MR', 'Mauritania', '222', '🇲🇷', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(153, 'MS', 'Montserrat', '1664', '🇲🇸', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(154, 'MT', 'Malta', '356', '🇲🇹', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(155, 'MU', 'Mauritius', '230', '🇲🇺', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(156, 'MV', 'Maldives', '960', '🇲🇻', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(157, 'MW', 'Malawi', '265', '🇲🇼', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(158, 'MX', 'Mexico', '52', '🇲🇽', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(159, 'MY', 'Malaysia', '60', '🇲🇾', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(160, 'MZ', 'Mozambique', '258', '🇲🇿', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(161, 'NA', 'Namibia', '264', '🇳🇦', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(162, 'NC', 'New Caledonia', '687', '🇳🇨', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(163, 'NE', 'Niger', '227', '🇳🇪', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(164, 'NF', 'Norfolk Island', '672', '🇳🇫', 0, 0, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(165, 'NG', 'Nigeria', '234', '🇳🇬', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(166, 'NI', 'Nicaragua', '505', '🇳🇮', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(167, 'NL', 'Netherlands', '31', '🇳🇱', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(168, 'NO', 'Norway', '47', '🇳🇴', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(169, 'NP', 'Nepal', '977', '🇳🇵', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(170, 'NR', 'Nauru', '674', '🇳🇷', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(171, 'NU', 'Niue', '683', '🇳🇺', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(172, 'NZ', 'New Zealand', '64', '🇳🇿', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(173, 'OM', 'Oman', '968', '🇴🇲', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(174, 'PA', 'Panama', '507', '🇵🇦', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(175, 'PE', 'Peru', '51', '🇵🇪', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(176, 'PF', 'French Polynesia', '689', '🇵🇫', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(177, 'PG', 'Papua New Guinea', '675', '🇵🇬', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(178, 'PH', 'Philippines', '63', '🇵🇭', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(179, 'PK', 'Pakistan', '92', '🇵🇰', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(180, 'PL', 'Poland', '48', '🇵🇱', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(181, 'PM', 'St. Pierre & Miquelon', '508', '🇵🇲', 0, 0, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(182, 'PN', 'Pitcairn Islands', '64', '🇵🇳', 0, 0, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(183, 'PR', 'Puerto Rico', '1787', '🇵🇷', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(184, 'PS', 'Palestine', '970', '🇵🇸', 0, 0, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(185, 'PT', 'Portugal', '351', '🇵🇹', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(186, 'PW', 'Palau', '680', '🇵🇼', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(187, 'PY', 'Paraguay', '595', '🇵🇾', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(188, 'QA', 'Qatar', '974', '🇶🇦', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(189, 'RE', 'Réunion', '262', '🇷🇪', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(190, 'RO', 'Romania', '40', '🇷🇴', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(191, 'RS', 'Serbia', '381', '🇷🇸', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(192, 'RU', 'Russia', '7', '🇷🇺', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(193, 'RW', 'Rwanda', '250', '🇷🇼', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(194, 'SA', 'Saudi Arabia', '966', '🇸🇦', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(195, 'SB', 'Solomon Islands', '677', '🇸🇧', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(196, 'SC', 'Seychelles', '248', '🇸🇨', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(197, 'SD', 'Sudan', '249', '🇸🇩', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(198, 'SE', 'Sweden', '46', '🇸🇪', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(199, 'SG', 'Singapore', '65', '🇸🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(200, 'SH', 'St. Helena', '290', '🇸🇭', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(201, 'SI', 'Slovenia', '386', '🇸🇮', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(202, 'SJ', 'Svalbard & Jan Mayen', '4779', '🇸🇯', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(203, 'SK', 'Slovakia', '421', '🇸🇰', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(204, 'SL', 'Sierra Leone', '232', '🇸🇱', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(205, 'SM', 'San Marino', '378', '🇸🇲', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(206, 'SN', 'Senegal', '221', '🇸🇳', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(207, 'SO', 'Somalia', '252', '🇸🇴', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(208, 'SR', 'Suriname', '597', '🇸🇷', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(209, 'SS', 'South Sudan', '211', '🇸🇸', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(210, 'ST', 'São Tomé & Príncipe', '239', '🇸🇹', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(211, 'SV', 'El Salvador', '503', '🇸🇻', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(212, 'SX', 'Sint Maarten', '1721', '🇸🇽', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(213, 'SY', 'Syria', '963', '🇸🇾', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(214, 'SZ', 'Swaziland', '268', '🇸🇿', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(215, 'TA', 'Tristan da Cunha', '290', '🇹🇦', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(216, 'TC', 'Turks & Caicos Islands', '1649', '🇹🇨', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(217, 'TD', 'Chad', '235', '🇹🇩', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(218, 'TF', 'French Southern Territories', '262', '🇹🇫', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(219, 'TG', 'Togo', '228', '🇹🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(220, 'TH', 'Thailand', '66', '🇹🇭', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(221, 'TJ', 'Tajikistan', '992', '🇹🇯', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(222, 'TK', 'Tokelau', '690', '🇹🇰', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(223, 'TL', 'Timor-Leste', '670', '🇹🇱', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(224, 'TM', 'Turkmenistan', '993', '🇹🇲', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(225, 'TN', 'Tunisia', '216', '🇹🇳', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(226, 'TO', 'Tonga', '676', '🇹🇴', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(227, 'TR', 'Turkey', '90', '🇹🇷', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(228, 'TT', 'Trinidad & Tobago', '1868', '🇹🇹', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(229, 'TV', 'Tuvalu', '688', '🇹🇻', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(230, 'TW', 'Taiwan', '886', '🇹🇼', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(231, 'TZ', 'Tanzania', '255', '🇹🇿', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(232, 'UA', 'Ukraine', '380', '🇺🇦', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(233, 'UG', 'Uganda', '256', '🇺🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(234, 'UM', 'U.S. Outlying Islands', '246', '🇺🇲', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(235, 'US', 'United States of America', '1', '🇺🇸', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(236, 'UY', 'Uruguay', '598', '🇺🇾', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(237, 'UZ', 'Uzbekistan', '998', '🇺🇿', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(238, 'VA', 'Vatican City', '3906698', '🇻🇦', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(239, 'VC', 'St. Vincent & Grenadines', '1784', '🇻🇨', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(240, 'VE', 'Venezuela', '58', '🇻🇪', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(241, 'VG', 'British Virgin Islands', '1284', '🇻🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(242, 'VI', 'U.S. Virgin Islands', '1340', '🇻🇮', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(243, 'VN', 'Vietnam', '84', '🇻🇳', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(244, 'VU', 'Vanuatu', '678', '🇻🇺', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(245, 'WF', 'Wallis & Futuna', '681', '🇼🇫', 0, 0, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(246, 'WS', 'Samoa', '685', '🇼🇸', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(247, 'XK', 'Kosovo', '383', '🇽🇰', 0, 0, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(248, 'YE', 'Yemen', '967', '🇾🇪', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(249, 'YT', 'Mayotte', '262', '🇾🇹', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(250, 'ZA', 'South Africa', '27', '🇿🇦', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(251, 'ZM', 'Zambia', '260', '🇿🇲', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(252, 'ZW', 'Zimbabwe', '263', '🇿🇼', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `venu_id` int(10) UNSIGNED NOT NULL,
  `unique_id` int(11) NOT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` longtext COLLATE utf8mb4_unicode_ci,
  `when_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `event_time` time NOT NULL,
  `to_time` time NOT NULL,
  `status` enum('None','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `admin_id`, `venu_id`, `unique_id`, `event_name`, `event_description`, `when_day`, `from_date`, `to_date`, `event_time`, `to_time`, `status`, `image`, `name_of_file_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Event1', 'test', 'Tuesday,Friday', '2021-11-12', '2021-11-16', '18:58:00', '19:58:00', 'Active', '1112202118583383618e6c01dfd7c.png', 'Screenshot_17.png', '2021-11-12 13:28:34', '2021-11-16 04:12:25', NULL),
(2, 4, 2, 2, 'Event2', 'cxxcxc', 'Tuesday,Friday', '2021-11-12', '2021-11-16', '19:31:00', '20:31:00', 'Active', '1112202119320867618e73e06b108.png', 'Screenshot_32.png', '2021-11-12 14:01:29', '2021-11-16 04:33:22', NULL),
(3, 1, 2, 3, 'dwqdwqdwq', 'dwqd', 'Monday,Tuesday,Friday,Saturday', '2021-11-16', '2021-11-17', '09:39:00', '11:39:00', 'Active', '111620211139089861934b04db4f9.jpeg', '9050572b-18b1-48ac-98b6-0d986e404ae2.jpeg', '2021-11-16 06:09:09', '2021-11-16 06:09:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_sent_notifications`
--

CREATE TABLE `event_sent_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_sent_notifications`
--

INSERT INTO `event_sent_notifications` (`id`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(13, 1, 1, '2021-11-16 04:53:14', '2021-11-16 04:53:14'),
(14, 1, 2, '2021-11-16 04:53:16', '2021-11-16 04:53:16'),
(15, 2, 1, '2021-11-16 04:53:17', '2021-11-16 04:53:17'),
(16, 2, 2, '2021-11-16 04:53:18', '2021-11-16 04:53:18'),
(17, 3, 1, '2021-11-16 04:53:19', '2021-11-16 04:53:19'),
(18, 3, 2, '2021-11-16 04:53:19', '2021-11-16 04:53:19'),
(19, 1, 3, '2021-11-16 06:09:37', '2021-11-16 06:09:37'),
(20, 2, 3, '2021-11-16 06:09:40', '2021-11-16 06:09:40'),
(21, 3, 3, '2021-11-16 06:09:41', '2021-11-16 06:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `uniq_id` int(11) NOT NULL DEFAULT '0',
  `setting_content` longtext COLLATE utf8mb4_unicode_ci,
  `setting_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_enabled_disbaled` enum('Enabled','Disabled','None') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `uniq_id`, `setting_content`, `setting_type`, `setting_enabled_disbaled`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'k@yopmail.com', 'Contact Email', NULL, NULL, '2021-11-11 11:02:46', '2021-11-12 14:30:47'),
(4, 2, '1', 'Contact Number', NULL, NULL, '2021-11-11 11:09:23', '2021-11-12 14:32:54'),
(6, 11, '<p><a href=\"http://localhost/society_11_november/admin/general-settings\">http://localhost/society_11_november/admin/general-settings</a></p>', 'About our loyalty program', NULL, NULL, '2021-11-11 11:09:54', '2021-11-16 05:58:30'),
(7, 12, '<blockquote>\n<h1>&nbsp;</h1>\n</blockquote>', 'faq\'s', NULL, NULL, '2021-11-11 11:10:12', '2021-11-16 06:36:01'),
(8, 13, '<p><strong>Terms &amp; ConditionsTerms &amp; ConditionsTerms &amp; ConditionsTerms &amp; ConditionsTerms &amp; ConditionsTerms &amp; ConditionsTerms &amp; ConditionsTerms &amp; Conditions</strong></p>', 'Terms & conditions', NULL, NULL, '2021-11-11 11:10:26', '2021-11-12 14:53:51'),
(9, 14, '<p><strong>Privacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy PolicyPrivacy Policy</strong></p>', 'Privacy policy', NULL, NULL, '2021-11-11 11:10:28', '2021-11-12 14:53:54'),
(10, 15, '10', 'Unique venue invoice no', NULL, NULL, '2021-11-11 11:10:48', '2021-11-15 07:52:59'),
(11, 16, '1000', 'Venue timeout', NULL, NULL, '2021-11-11 11:10:53', '2021-11-15 07:37:15'),
(12, 17, '333', 'Sms otp validity', 'Enabled', NULL, '2021-11-11 11:11:11', '2021-11-15 04:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_poses`
--

CREATE TABLE `login_poses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_poses`
--

INSERT INTO `login_poses` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc@yopmail.com', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_requests`
--

CREATE TABLE `login_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `venue_user_id` int(10) UNSIGNED DEFAULT NULL,
  `venu_id` int(10) UNSIGNED DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `mac_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `authorized_status` enum('Unauthorized','Authorized') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unauthorized',
  `date_time` datetime DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_requests`
--

INSERT INTO `login_requests` (`id`, `venue_user_id`, `venu_id`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `device_type`, `device_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2021-11-12 18:54:05', NULL, NULL, '2021-11-12 13:24:05', '2021-11-12 14:19:09', NULL),
(2, 2, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2021-11-12 19:49:24', 'Ipad', '12335556', '2021-11-12 14:19:24', '2021-11-12 14:19:41', NULL),
(3, 3, 1, 'iPad', 'BA69C2E5-C1A0-46B7-9931-B23E97CFE6FE', 'Authorized', '2021-11-15 10:34:40', 'Ipad', '12335556', '2021-11-15 05:04:40', '2021-11-15 05:04:57', NULL),
(4, 4, 2, 'iPad', '9041C367-37FF-405C-8314-CB59BCCCE8B1', 'Authorized', '2021-11-16 11:56:11', 'Ipad', 'sdnjbsdjjfjjfsh', '2021-11-16 06:26:11', '2021-11-16 09:15:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(11, '2021_07_07_102805_create_users_table', 2),
(12, '2021_07_12_053943_create_otps_table', 2),
(13, '2021_07_12_092052_create_admins_table', 3),
(18, '2021_07_13_090942_create_tier_settings_table', 4),
(19, '2021_07_13_091013_create_tier_conditions_table', 4),
(21, '2021_07_27_104625_create_application_images_table', 6),
(22, '2021_07_28_121136_create_venus_table', 7),
(23, '2021_07_28_125108_create_venue_users_table', 8),
(24, '2021_07_29_120346_create_wallet_cashbacks_table', 9),
(28, '2021_07_30_113524_create_cashbacks_table', 10),
(29, '2021_08_18_051023_create_events_table', 11),
(36, '2021_08_18_114627_create_offers_table', 12),
(37, '2021_08_18_115055_create_offer_settings_table', 12),
(38, '2021_08_18_115812_create_cities_table', 12),
(40, '2021_09_01_063812_create_login_requests_table', 13),
(43, '2021_09_10_063651_create_user_assign_offers_table', 14),
(44, '2021_09_16_120913_create_badges_table', 15),
(46, '2021_09_16_122515_create_assign_badges_table', 16),
(48, '2021_09_24_104903_create_assign_user_venues_table', 17),
(49, '2021_10_01_052623_create_wallet_transactions_table', 18),
(50, '2021_10_01_070826_create_admin_notifications_table', 19),
(51, '2021_10_01_072908_create_admin_criteria_notifications_table', 19),
(52, '2021_10_12_110145_create_jobs_table', 20),
(53, '2021_10_13_123229_create_failed_jobs_table', 21),
(54, '2021_10_20_125747_create_login_poses_table', 22),
(55, '2021_10_26_135654_create_general_settings_table', 23),
(56, '2021_07_27_104038_create_application_datas_table', 24),
(58, '2021_11_09_100150_create_wallet_details_table', 25),
(59, '2021_11_10_053929_create_event_sent_notifications_table', 26),
(60, '2021_11_10_092435_create_noti_records_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `noti_records`
--

CREATE TABLE `noti_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `wallet` int(11) NOT NULL DEFAULT '0',
  `offer` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL DEFAULT '0',
  `normal` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noti_records`
--

INSERT INTO `noti_records` (`id`, `user_id`, `wallet`, `offer`, `event`, `normal`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, '2021-11-12 13:00:07', '2021-11-16 06:09:43'),
(2, 2, 1, 0, 23, 1, '2021-11-12 13:43:29', '2021-11-16 06:09:40'),
(3, 3, 0, 0, 0, 0, '2021-11-15 05:12:53', '2021-11-15 05:12:53'),
(4, 4, 0, 0, 0, 0, '2021-11-16 06:46:26', '2021-11-16 06:46:26'),
(5, 5, 0, 0, 0, 0, '2021-11-16 12:41:32', '2021-11-16 12:41:32'),
(6, 6, 0, 0, 0, 0, '2021-11-16 12:46:59', '2021-11-16 12:46:59'),
(7, 7, 0, 0, 0, 0, '2021-11-16 13:03:01', '2021-11-16 13:03:01'),
(8, 8, 0, 0, 0, 0, '2021-11-17 05:58:50', '2021-11-17 05:58:50'),
(9, 9, 0, 0, 0, 0, '2021-11-17 06:26:41', '2021-11-17 06:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1515abc2dcabbfcbf513ccc2392284f1c92db0b041114f21bd0bb10fe32d41d78cd63c5c17a90eb7', 6, 1, 'andrew', '[]', 1, '2021-11-16 12:47:03', '2021-11-16 12:47:03', '2022-11-16 18:17:03'),
('273c245bd2d482ae56b9a1099b58babfda5f7b85e4bec303455f2b77120b0cef479cfe4079f710d7', 7, 1, 'andrew', '[]', 0, '2021-11-16 13:03:09', '2021-11-16 13:03:09', '2022-11-16 18:33:09'),
('2a9d7154676d51e9258edba84e38f9e176d3a4b5d29bdeed3c1dd6ce4cf78743a9595ab6e74f33e4', 8, 1, 'andrew', '[]', 0, '2021-11-17 05:58:55', '2021-11-17 05:58:55', '2022-11-17 11:28:55'),
('523fcfac87c861b37eaa3bf5ff91465e68b19ab4355ab17e3d6eafeea662864b658da551dad0bba8', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:00:12', '2021-11-12 13:00:12', '2022-11-12 18:30:12'),
('541a61ca26c2acfbb20dbe20c747d7ec719c20be7d45480c21a0a9b75cbb10e5088f2b1f3b8bf930', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:58:52', '2021-11-17 04:58:52', '2022-11-17 10:28:52'),
('6063ad3a281a0b2b286469cc3c54093beb0bca137018826023fe7784b20e369fa97e856e5197603c', 1, 1, 'andrew', '[]', 0, '2021-11-15 09:04:47', '2021-11-15 09:04:47', '2022-11-15 14:34:47'),
('7501ec97393f393a798f14090340731fee785bfea1843a88cc8548a23f48e80532f50d80c220b8e6', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:11:26', '2021-11-15 07:11:26', '2022-11-15 12:41:26'),
('7fed57949151dbe02b17133262a8d4a0f988db6fb5ef55cd2c5a6c48350d212855706c62d9bda9ef', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:59:00', '2021-11-17 04:59:00', '2022-11-17 10:29:00'),
('83c6b16573dfeaeba4e34418b423f5f124bb44efbeeecf6f0d691696a44898005ed3d43ae6db9b4d', 5, 1, 'andrew', '[]', 0, '2021-11-16 12:41:36', '2021-11-16 12:41:36', '2022-11-16 18:11:36'),
('8af072881866a3b09fdc77b490454d901f5d164220b2ec009052f034850d7c8b4e215afea3b93c2a', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:01:01', '2021-11-12 13:01:01', '2022-11-12 18:31:01'),
('92ad9b4dde604757cd4bd892c28c88ce799ed0583052b09d461d74348a992ad77670d8c7a582a32f', 3, 1, 'andrew', '[]', 0, '2021-11-15 05:17:25', '2021-11-15 05:17:25', '2022-11-15 10:47:25'),
('9c7bc7782a31e731a3dd6a023047eeec0a1d97f4264722efe7b2614deba0b97f605ae623a6a9959c', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:10:28', '2021-11-15 07:10:28', '2022-11-15 12:40:28'),
('9eef35afee5006e519d73f3e78a3170112179fe8f09517c5d7a25bec81da46468b5bc90062106620', 6, 1, 'andrew', '[]', 0, '2021-11-17 05:57:13', '2021-11-17 05:57:13', '2022-11-17 11:27:13'),
('9f98004a2a9af700aa5d1140d60c903114212a3f5c10df9a55cd8bb4ad4d914bf26242459505e2a1', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:12:00', '2021-11-15 07:12:00', '2022-11-15 12:42:00'),
('a16de7d3e2d0c2d1718ff4821214bb00c4e055ed61393c9b8e9bab838aebced6f29a1333ffadff8b', 2, 1, 'andrew', '[]', 1, '2021-11-12 13:44:12', '2021-11-12 13:44:12', '2022-11-12 19:14:12'),
('ac34496a7fa909933899346964c5a3dfdfcc1f187a37ec50d11d6cc5a4dc7c15464aba4b1f0d0be2', 9, 1, 'andrew', '[]', 0, '2021-11-17 06:26:46', '2021-11-17 06:26:46', '2022-11-17 11:56:46'),
('bbec4d9a96d3436a44cd67def2e0ae1d6e482b0104ad98c000da1dccbb724b7a987ac0eaf2627917', 1, 1, 'andrew', '[]', 1, '2021-11-12 14:40:17', '2021-11-12 14:40:17', '2022-11-12 20:10:17'),
('c8279ebeb4afe0dcdb715022237a97a6a1a374f131bf2f22fe19ec1f0981c66dbaee519128ef9b1b', 2, 1, 'andrew', '[]', 0, '2021-11-15 11:55:20', '2021-11-15 11:55:20', '2022-11-15 17:25:20'),
('ce295a15a66439e4b7668d60ebada287947d378c75f28553969e12ab8e043f529b0fb2cc6ab25ec9', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:17:23', '2021-11-12 13:17:23', '2022-11-12 18:47:23'),
('d00c156505119cec43a64dc414e736bfe29378a269ab9e1e501c1bd48abee29435c5fd4c4f53dc7b', 6, 1, 'andrew', '[]', 1, '2021-11-17 05:01:37', '2021-11-17 05:01:37', '2022-11-17 10:31:37'),
('d75503a08aa827c22ff9578fb76b87caeadb5c0c396a24387da9b035231e42ba74aae1d21607612c', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:58:42', '2021-11-17 04:58:42', '2022-11-17 10:28:42'),
('db57b3b93252aa5b85db4905be0513842afa6d4b6d94cc3184fa6dc164f058db8047f92a47dd2d88', 3, 1, 'andrew', '[]', 1, '2021-11-15 05:16:29', '2021-11-15 05:16:29', '2022-11-15 10:46:29'),
('e93c80b7233b2dfeb9cd3c9b97e1924d4ae9fc0a39bc43b2864b3c4f1d671f2ea7a8940bc6534b31', 3, 1, 'andrew', '[]', 1, '2021-11-15 05:12:59', '2021-11-15 05:12:59', '2022-11-15 10:42:59'),
('ee045d87b82dbf23dbe66782e0346282d0aabb5d4f71efa1daa9718f02bc4823ab219daea6fc0661', 4, 1, 'andrew', '[]', 0, '2021-11-16 06:46:31', '2021-11-16 06:46:31', '2022-11-16 12:16:31'),
('f5c6b6d107a088cdb06bc02fad1b4dca84ed822eac2e2eebcad69e35ac8e7571d525042822f3db2b', 2, 1, 'andrew', '[]', 1, '2021-11-12 13:43:33', '2021-11-12 13:43:33', '2022-11-12 19:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5adrrwAiUNKYPKPNhanFaJ0MQ0F7lZKACFSrKmPv', 'http://localhost', 1, 0, 0, '2021-07-07 04:41:43', '2021-07-07 04:41:43'),
(2, NULL, 'Laravel Password Grant Client', 'U4lQqggH1EKIzWhyaOq8BFFRjUjpDekoHf5ZKnop', 'http://localhost', 0, 1, 0, '2021-07-07 04:41:43', '2021-07-07 04:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-07 04:41:43', '2021-07-07 04:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `venu_id` int(10) UNSIGNED NOT NULL,
  `unique_id` int(11) NOT NULL,
  `offer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_desc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `status` enum('None','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_product_id` int(11) DEFAULT NULL,
  `offer_type` enum('Normal','BirthdayOffer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `admin_id`, `venu_id`, `unique_id`, `offer_name`, `offer_desc`, `image`, `name_of_file_show`, `from_date`, `to_date`, `time`, `to_time`, `status`, `pos_product_id`, `offer_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-12 13:22:29', '2021-11-12 13:22:29', NULL),
(2, 1, 2, 2, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-12 13:27:18', '2021-11-12 13:27:18', NULL),
(3, 1, 1, 3, 'Offer1', 'test', '1112202119005414618e6c8e47d34.png', 'Screenshot_32.png', '2021-11-12', '2021-11-12', '19:01:00', '20:01:00', 'Active', 33, 'Normal', '2021-11-12 13:30:54', '2021-11-12 13:30:54', NULL),
(5, 4, 1, 5, 'offer4', 'cxvvccv', '1112202119325416618e740ee2a72.png', 'Screenshot_14.png', '2021-11-12', '2021-11-12', '19:33:00', '19:33:00', 'Active', NULL, 'Normal', '2021-11-12 14:02:55', '2021-11-12 14:02:55', NULL),
(6, 4, 1, 6, 'offer5', 'xcxc', '1112202119342119618e7465dfbbd.png', 'Screenshot_14.png', '2021-11-12', '2021-11-12', '19:34:00', '20:34:00', 'Active', NULL, 'Normal', '2021-11-12 14:04:22', '2021-11-12 14:04:22', NULL),
(8, 2, 5, 8, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 07:12:04', '2021-11-15 07:12:04', NULL),
(9, 1, 6, 9, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 07:14:05', '2021-11-15 07:14:05', NULL),
(10, 1, 1, 10, 'asdgha', 'faga', '111520211309462561920ec24e63f.jpeg', 'download (4).jpeg', '2021-11-15', '2021-11-22', '13:09:00', '17:09:00', 'Active', NULL, 'Normal', '2021-11-15 07:39:46', '2021-11-15 07:39:46', NULL),
(11, 1, 1, 11, 'guyguy', 'hs', '1115202114360713619222ff947fb.jpeg', 'images.jpeg', '2021-11-15', '2021-11-15', '14:35:00', '16:35:00', 'Active', NULL, 'Normal', '2021-11-15 09:06:07', '2021-11-15 09:06:07', NULL),
(12, 1, 1, 12, 'gawtq', 'gqwa', '11152021143702266192233604a8b.jpeg', 'download (4).jpeg', '2021-11-15', '2021-11-15', '14:36:00', '17:36:00', 'Active', NULL, 'Normal', '2021-11-15 09:07:02', '2021-11-15 09:07:02', NULL),
(13, 1, 7, 13, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 11:46:42', '2021-11-15 11:46:42', NULL),
(14, 1, 7, 14, 'qwwq', 'dsbgsdbgds', '111620211028133861933a65b269e.jpeg', 'download (1).jpeg', '2021-11-16', '2021-11-18', '10:28:00', '11:28:00', 'Active', NULL, 'Normal', '2021-11-16 04:58:13', '2021-11-16 05:08:27', '2021-11-16 05:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `offer_settings`
--

CREATE TABLE `offer_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Today',
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `offer_type` enum('Normal','BirthdayOffer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_settings`
--

INSERT INTO `offer_settings` (`id`, `offer_id`, `city_id`, `dob`, `gender`, `date`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `offer_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-12 13:22:29', '2021-11-12 13:22:29', NULL),
(2, 2, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-12 13:27:18', '2021-11-12 13:27:18', NULL),
(3, 3, NULL, 'Today', 'Male', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-12 13:30:54', '2021-11-12 13:30:54', NULL),
(5, 5, 1, 'Today', 'Male', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-12 14:02:55', '2021-11-12 14:02:55', NULL),
(6, 6, 1, 'Today', 'Male', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-12 14:04:22', '2021-11-12 14:04:22', NULL),
(8, 8, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-15 07:12:04', '2021-11-15 07:12:04', NULL),
(9, 9, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-15 07:14:05', '2021-11-15 07:14:05', NULL),
(10, 10, NULL, 'Today', 'Female', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-15 07:39:46', '2021-11-15 07:39:46', NULL),
(11, 11, NULL, 'Today', 'Female', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-15 09:06:07', '2021-11-15 09:06:07', NULL),
(12, 12, NULL, 'Today', 'Female', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-15 09:07:02', '2021-11-15 09:07:02', NULL),
(13, 13, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-15 11:46:42', '2021-11-15 11:46:42', NULL),
(14, 14, NULL, 'Today', 'Male', '2021-11-18', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-16 04:58:14', '2021-11-16 04:58:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `country_code`, `mobile_number`, `otp`, `created_at`, `updated_at`) VALUES
(13, '+91', '7060424884', '9188', '2021-11-15 05:06:31', '2021-11-15 05:06:31'),
(16, '+91', '9876543210', '7957', '2021-11-15 07:36:53', '2021-11-15 07:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phpapi870@gmail.com', 'ZDmvgPuN5TZ3rf1s0VqFXie9oprabSed53C3pDdZKhQw1eV92H07uYJkNv4eyU7L', '2021-11-16 12:54:27'),
('phpapi870@gmail.com', 'Gteds2UwKlfoE4tcdtEISEFM91yxNeI4', NULL),
('deftinfo365@gmail.com', 'mx1XJqgmao3pQPN3WznajnNNHRU9f7dd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tier_conditions`
--

CREATE TABLE `tier_conditions` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id_by_tier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tier_setting_id` int(10) UNSIGNED NOT NULL,
  `tier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_amount` double NOT NULL,
  `to_amount` double NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tier_conditions`
--

INSERT INTO `tier_conditions` (`id`, `unique_id_by_tier`, `tier_setting_id`, `tier_name`, `from_amount`, `to_amount`, `color_code`, `percentage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Silver', 0, 100, '#ca2e92', 10, NULL, NULL, '2021-11-12 13:41:49'),
(2, '2', 1, 'Platinum', 700, 1500, '#ff0000', 20, '2021-10-15 10:46:53', '2021-10-08 09:13:51', '2021-10-15 10:46:53'),
(3, '3', 1, 'Gold', 1501, 2501, '#ff0000', 30, '2021-10-15 10:46:47', '2021-10-08 09:14:10', '2021-10-15 10:46:47'),
(4, '4', 1, 'Diamond', 2502, 3501, '#ff0000', 40, '2021-10-15 10:46:42', '2021-10-08 09:14:31', '2021-10-15 10:46:42'),
(5, '5', 1, 'Gold', 101, 500, '#18171b', 20, NULL, '2021-10-21 10:40:05', '2021-11-12 14:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `tier_settings`
--

CREATE TABLE `tier_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `transaction_amount_check_last_days` int(11) NOT NULL COMMENT 'Customer Total Transaction Amount Check for last 30 days.',
  `customer_tier_validity_check` int(11) NOT NULL COMMENT 'Customer Tier Validity Check (Badge Change)',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tier_settings`
--

INSERT INTO `tier_settings` (`id`, `admin_id`, `transaction_amount_check_last_days`, `customer_tier_validity_check`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, 30, 1, NULL, NULL, '2021-11-12 14:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_of_residence` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('None','Ios','Android') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `device_token` text COLLATE utf8mb4_unicode_ci,
  `reset_password_token` longtext COLLATE utf8mb4_unicode_ci,
  `verify_email_token` longtext COLLATE utf8mb4_unicode_ci,
  `is_block` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 => Unblocked 1 => Blocked',
  `is_verify` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 => Not Verify, 1 => Verify',
  `refresh_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('Inactive','Active') COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_tier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_cash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tier_update_date` date DEFAULT NULL,
  `refer_amount` double DEFAULT '0',
  `refer_amount_used` int(11) NOT NULL DEFAULT '0',
  `request_change_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `refer_amount_used`, `request_change_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '11122021183006618e6556715f3.jpeg', '+91', '8556025369', 'kanhaiya', 'kumar', 'kanhaiya@yopmail.com', '$2y$10$4UQNIvaLP8HhwAycHGzZD.5tk76o2g9jP4C2RWum3rhUkMy27cGNG', 'Abu Dhabi', 'Afghanistan', '2005-11-12', 'Female', 'M7hf3741RVtx', NULL, 'Ios', 'b6ad69a17433d978bcfa6ce6e8a6c23459dbfffbcd30c8e67e5b74ce5b06b14d', NULL, NULL, '0', '1', NULL, NULL, 'Active', 22345875828, 'Gold', '3030', NULL, '1112202118300723618e65573ae41.png', '1112202118300794618e65573b15f.png', '2021-11-12', 0, 0, NULL, '2021-11-12 13:00:07', '2021-11-15 09:04:47', NULL),
(2, '11122021191328618e6f80ee12e.jpeg', '+91', '7060424884', 'jack', 'donas', 'jack@yopmail.com', '$2y$10$Ei1A12PJtZRfY0MwDAN1jeHERHvjIJhmue9pS5sejmOhH3.z3cCx2', 'Abu Dhabi', 'Algeria', '2005-11-12', 'Male', 'ezg65386g2bq', 'M7hf3741RVtx', 'Ios', '8fafb92358b1e35ea2ff2f7eb8888c13a53e9c380472e1f7332a13b5577e9f38', NULL, NULL, '0', '1', NULL, NULL, 'Active', 32092127883, 'Silver', '1010', 'aman kumar', '1112202119132930618e6f8152283.png', '1112202119132938618e6f815256e.png', '2021-11-12', 2000, 1, NULL, '2021-11-12 13:43:29', '2021-11-15 11:55:20', NULL),
(3, '111520211042536191ec5553a32.jpeg', '+91', '9876543210', 'ghuyiu', 'figuring', 's1@yopmail.com', '$2y$10$bAFZBn5f13bsaXJUpUHQzOIYsG.yuChZMnkqMs2u4O31/34LjS0z6', 'Abu Dhabi', 'Afghanistan', '2005-11-15', 'Male', 'X9mZ7871myoJ', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 16921676320, 'Silver', '1000', NULL, '11152021104253596191ec55a2970.png', '11152021104253746191ec55a2c0b.png', '2021-11-15', 0, 0, NULL, '2021-11-15 05:12:53', '2021-11-15 05:17:25', NULL),
(4, '11162021121626619353c238601.jpeg', '+91', '8595079586', 'Vikas', 'Kumar', 'vikas@yopmail.com', '$2y$10$D/2iCcA1xHukkrt3Sn41PO5IlxxBxw3cIQT6GYNmNaAk2o5LmKgiG', 'Abu Dhabi', 'Afghanistan', '2005-11-16', 'Male', '3alE2122Bt0V', NULL, 'None', NULL, NULL, 'RbtQF26wuUpiTxPYpdFzCdDZ5lMQwBv5eJ2KXXSDwW6qJAk51iDFnsgsIrQ5hnqM', '0', '0', NULL, NULL, 'Active', 69313422209, 'Silver', '1000', NULL, '1116202112162636619353c282ab0.png', '1116202112162622619353c282d24.png', '2021-11-16', 0, 0, NULL, '2021-11-16 06:46:26', '2021-11-16 06:46:26', NULL),
(5, '111620211811326193a6fc01647.png', '+91', '8968905827', 'pqr', '1', 'pqr1@yopmail.com', '$2y$10$3Sx7OUPf6vzgbrtUHpc08.wLaQ00jirM/COVYJFj5K9fPGl9bQwom', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'gkZP43874IHK', NULL, 'None', NULL, NULL, 'IF5Q9D3yR29SKWosBUxHzfb3KkJuzDRYFLCMPjVKgNLjcZWzcGhPwOq2XWMiMD5g', '0', '0', NULL, NULL, 'Active', 79805543786, 'Silver', '1000', NULL, '11162021181132466193a6fc4064d.png', '11162021181132986193a6fc4082c.png', '2021-11-16', 0, 0, NULL, '2021-11-16 12:41:32', '2021-11-16 12:41:32', NULL),
(6, '111620211816596193a8434a416.png', '+91', '8968925827', 'pqr', '1', 'deftinfdso365@gmail.com', '$2y$10$0bHJyEp2mx.OeEbqoYYdQer.9Sj0rCFDdwYMF8Rxx2ndner8ce8iO', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'bbGK1268f3Or', NULL, 'Ios', '8fd', NULL, NULL, '0', '1', NULL, NULL, 'Active', 92718897997, 'Silver', '1000', NULL, '11162021181659766193a843aef35.png', '11162021181659136193a843af304.png', '2021-11-16', 0, 0, NULL, '2021-11-16 12:46:59', '2021-11-17 05:57:13', NULL),
(7, '111620211833016193ac05c43f5.png', '+91', '8968925127', 'pqr', '1', 'deq@yopmail.com', '$2y$10$3wd6n9p.0l9TLaSByqcFwe3qK5oioYZMCo0yDsJroKE5zumbsk1.6', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'RlXI6779FB9w', NULL, 'None', NULL, NULL, 'M7adkTy5QpV3qTuD2gwQPMwkhoQS7xS3ji4yRIpcxfNEkXGLRx1bUnttWOwEqwIJ', '0', '0', NULL, NULL, 'Active', 77843348583, 'Silver', '1000', NULL, '11162021183302546193ac0609441.png', '11162021183302366193ac060969e.png', '2021-11-16', 0, 0, NULL, '2021-11-16 13:03:01', '2021-11-16 13:03:02', NULL),
(8, '1117202111285061949a1a224f6.png', '+91', '89681231127', 'pqr', '1', 'deftin124124fo365@gmail.com', '$2y$10$vmkrdTzocCJordcYkrsfGeYGg4G62s5RG643Xy/74Aam9OwA0Dmxy', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'r0FQ3143f6dZ', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 26829866535, 'Silver', '1000', NULL, '111720211128508861949a1aa7e11.png', '111720211128505761949a1aa80a4.png', '2021-11-17', 0, 0, NULL, '2021-11-17 05:58:50', '2021-11-17 06:25:39', NULL),
(9, '111720211156416194a0a13ba47.png', '+91', '8968921127', 'pqr', '1', 'deftinfo365@gmail.com', '$2y$10$dG0wq2Lmmohr.9Wm/W7lyuCTmGi0vDK8yD1Rf/NsrJjkPefBCL0pu', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'W9pb1606X6S3', NULL, 'None', NULL, NULL, 'AKgdTEtrouXiok8OlO2BQ0dvzxjrt9jyGTPMdJ4TrHCQRXxo4GgV5pTcdSfIh8Uk', '0', '0', NULL, NULL, 'Active', 48148096722, 'Silver', '1000', NULL, '11172021115641826194a0a175b12.png', '11172021115641146194a0a175ef8.png', '2021-11-17', 0, 0, NULL, '2021-11-17 06:26:41', '2021-11-17 06:26:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_assign_offers`
--

CREATE TABLE `user_assign_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `offer_setting_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Today',
  `gender` enum('None','Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `date` date DEFAULT NULL,
  `assign_at` date DEFAULT NULL,
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `offer_type` enum('Normal','BirthdayOffer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_redeem` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_assign_offers`
--

INSERT INTO `user_assign_offers` (`id`, `offer_id`, `offer_setting_id`, `user_id`, `city_id`, `dob`, `gender`, `date`, `assign_at`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `offer_type`, `offer_redeem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 1, '2021-11-12 13:31:41', '2021-11-12 14:47:47', NULL),
(2, 2, 2, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 13:31:44', '2021-11-12 13:31:44', NULL),
(3, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 1, '2021-11-12 14:03:15', '2021-11-12 14:47:47', NULL),
(4, 1, 1, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:03:16', '2021-11-12 14:03:16', NULL),
(5, 2, 2, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:03:17', '2021-11-12 14:03:17', NULL),
(6, 2, 2, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:03:18', '2021-11-12 14:03:18', NULL),
(7, 3, 3, 2, NULL, 'Today', 'Male', '2021-11-12', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-12 14:03:19', '2021-11-12 14:03:19', NULL),
(10, 5, 5, 2, 1, 'Today', 'Male', '2021-11-12', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-12 14:03:23', '2021-11-12 14:03:23', NULL),
(11, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 1, '2021-11-12 14:04:27', '2021-11-12 14:47:47', NULL),
(12, 1, 1, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:04:28', '2021-11-12 14:04:28', NULL),
(13, 2, 2, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:04:29', '2021-11-12 14:04:29', NULL),
(14, 2, 2, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:04:30', '2021-11-12 14:04:30', NULL),
(17, 6, 6, 2, 1, 'Today', 'Male', '2021-11-12', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-12 14:04:33', '2021-11-12 14:04:33', NULL),
(18, 1, 1, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 07:39:52', '2021-11-15 07:39:52', NULL),
(19, 2, 2, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 07:39:52', '2021-11-15 07:39:52', NULL),
(20, 8, 8, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 07:39:53', '2021-11-15 07:39:53', NULL),
(21, 10, 10, 1, NULL, 'Today', 'Female', '2021-11-15', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-15 07:39:53', '2021-11-15 07:39:53', NULL),
(22, 1, 1, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(23, 2, 2, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(24, 8, 8, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(25, 11, 11, 1, NULL, 'Today', 'Female', '2021-11-15', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(26, 1, 1, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:07:04', '2021-11-15 09:07:04', NULL),
(27, 2, 2, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:07:04', '2021-11-15 09:07:04', NULL),
(28, 8, 8, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:07:05', '2021-11-15 09:07:05', NULL),
(29, 12, 12, 1, NULL, 'Today', 'Female', '2021-11-15', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-15 09:07:05', '2021-11-15 09:07:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venue_users`
--

CREATE TABLE `venue_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `venu_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `device_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `mac_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `authorized_status` enum('Unauthorized','Authorized') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unauthorized',
  `date_time` datetime DEFAULT NULL,
  `access_token` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_users`
--

INSERT INTO `venue_users` (`id`, `venu_id`, `username`, `password`, `status`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `access_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'kanhaiyagoyal', '$2y$10$7YdjLx9vgv8Li7.JLvi9iOxTYDVLYiGzdRmWdNRVGrzTDt3dHREB6', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-12 18:52:51', '$2y$10$vhGq2APpNk1GIzYRaaYbg.M1EaeFnpKqCQy/U4VHi/rv6r.RfXwyu', 'Nadeer', 'Nadeer', '2021-11-12 13:22:51', '2021-11-12 13:24:05', NULL),
(2, NULL, 'aman', '$2y$10$JOZYGTN0m4bwngTOa35VEOG3YJTYI.82ruSARcmbkDqKBHf210be.', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-12 19:49:01', '$2y$10$jk6gXvq/qRMiW4VzYcc/D.jVyISqFzfEIehU8rt0BnIKfHFo7vJmu', 'kanhaiya', 'kanhaiya', '2021-11-12 14:19:01', '2021-11-12 14:19:24', NULL),
(3, NULL, 'ios', '$2y$10$4Xb6hyQlwJnTkEok7NiFYuQnD2prclVQSg/B3s1O0/jJnjmmfiUTK', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-15 10:34:32', '$2y$10$HYh8X6GlnKv4h3J1GUwhJOOCngW.0HO6/iCOB/vSLUej3.g05iVgy', 'Nadeer', 'Nadeer', '2021-11-15 05:04:32', '2021-11-15 05:04:40', NULL),
(4, NULL, 'sachin', '$2y$10$N/jFsFeoNDknTicxdunrGOfscrYiHo/B1HCACC4GWrb3ABiqov.fu', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-16 11:54:56', '$2y$10$Ny.kAKh0x61OIGzdDRSVre5I7Vs4ek2KObGLW7Ewnc5a8qhXssZhq', 'Nadeer', 'admin2', '2021-11-16 06:24:56', '2021-11-16 09:15:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venus`
--

CREATE TABLE `venus` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `venue_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `venue_description` longtext COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map_location_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_now_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_venue_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venus`
--

INSERT INTO `venus` (`id`, `admin_id`, `venue_name`, `unique_id`, `address`, `venue_description`, `phone_number`, `google_map_location_link`, `book_now_link`, `image`, `name_of_file_show`, `menu_link`, `status`, `pos_venue_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Venue1', 1, 'Mohali', 'testing', '5454565655', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1112202118522947618e6a9510914.png', 'Screenshot_7.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1001, '2021-11-12 13:22:29', '2021-11-12 13:22:29', NULL),
(2, 1, 'Venue2777', 2, 'party', 'party', '971506969298', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1112202118571721618e6bb5df6f0.png', 'Screenshot_32.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1002, '2021-11-12 13:27:18', '2021-11-15 11:30:44', NULL),
(5, 2, '3421', 4, '213213', '213213123', '4234324', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1115202112420426619208440057f.jpeg', 'download.jpeg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 43432, '2021-11-15 07:12:04', '2021-11-15 07:12:04', NULL),
(6, 1, 'sadsad', 5, 'sad', 'dsadd', '3214', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1115202112442916619208d5a6f7b.jpeg', 'Cool-Nature-Wallpapaer-for-Download.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', NULL, '2021-11-15 07:14:05', '2021-11-15 07:22:04', '2021-11-15 07:22:04'),
(7, 1, '432432', 6, 'sadf', 'dfas', '4234', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '111620210943266861932fe671df6.jpeg', 'download (1).jpeg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 4234, '2021-11-15 11:46:42', '2021-11-16 04:13:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_cashbacks`
--

CREATE TABLE `wallet_cashbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  `bonus_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_friend` double NOT NULL DEFAULT '0',
  `refer_friend_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_cashbacks`
--

INSERT INTO `wallet_cashbacks` (`id`, `admin_id`, `bonus`, `bonus_text`, `refer_friend`, `refer_friend_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1000, 'AED', 2000, 'AED', '2021-11-12 12:59:50', '2021-11-12 12:59:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cashback_earned` double NOT NULL DEFAULT '0',
  `redeemed_amount` double NOT NULL DEFAULT '0',
  `user_wallet_cash` double NOT NULL DEFAULT '0',
  `date_and_time` datetime NOT NULL,
  `type_of_transaction` enum('Bonus','Refer','Redeem','Cashback') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `user_id`, `description`, `cashback_earned`, `redeemed_amount`, `user_wallet_cash`, `date_and_time`, `type_of_transaction`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bonus Earnings', 1000, 0, 1000, '2021-11-12 18:30:07', 'Bonus', '2021-11-12 13:00:07', '2021-11-12 13:00:07'),
(2, 1, 'Redeemed Earnings', 0, 0, 1000, '2021-11-12 19:05:43', 'Redeem', '2021-11-12 13:35:43', '2021-11-12 13:35:43'),
(3, 1, 'Redeemed Earnings', 0, 0, 1000, '2021-11-12 19:12:17', 'Redeem', '2021-11-12 13:42:17', '2021-11-12 13:42:17'),
(4, 2, 'Bonus Earnings', 1000, 0, 1000, '2021-11-12 19:13:29', 'Bonus', '2021-11-12 13:43:29', '2021-11-12 13:43:29'),
(5, 2, 'Redeemed Earnings', 0, 0, 1000, '2021-11-12 19:15:16', 'Redeem', '2021-11-12 13:45:16', '2021-11-12 13:45:16'),
(6, 1, 'Referral Earnings', 2000, 0, 3000, '2021-11-12 19:16:21', 'Refer', '2021-11-12 13:46:21', '2021-11-12 13:46:21'),
(7, 2, 'Cash Back Earnings', 10, 0, 1010, '2021-11-12 19:16:24', 'Cashback', '2021-11-12 13:46:24', '2021-11-12 13:46:24'),
(8, 1, 'Cash Back Earnings', 10, 0, 3010, '2021-11-12 19:17:21', 'Cashback', '2021-11-12 13:47:21', '2021-11-12 13:47:21'),
(9, 1, 'Cash Back Earnings', 10, 0, 3020, '2021-11-12 19:54:29', 'Cashback', '2021-11-12 14:24:29', '2021-11-12 14:24:29'),
(10, 1, 'Cash Back Earnings', 10, 0, 3030, '2021-11-12 19:54:29', 'Cashback', '2021-11-12 14:24:29', '2021-11-12 14:24:29'),
(11, 1, 'Redeemed Earnings', 0, 0, 3030, '2021-11-12 19:55:04', 'Redeem', '2021-11-12 14:25:04', '2021-11-12 14:25:04'),
(12, 1, 'Cash Back Earnings', 20, 0, 3050, '2021-11-12 19:56:36', 'Cashback', '2021-11-12 14:26:36', '2021-11-12 14:26:36'),
(13, 1, 'Redeemed Earnings', 0, 0, 3050, '2021-11-12 19:57:23', 'Redeem', '2021-11-12 14:27:23', '2021-11-12 14:27:23'),
(14, 1, 'Cash Back Earnings', 20, 0, 3070, '2021-11-12 19:58:23', 'Cashback', '2021-11-12 14:28:23', '2021-11-12 14:28:23'),
(15, 1, 'Redeemed Earnings', 0, 0, 3070, '2021-11-12 19:58:55', 'Redeem', '2021-11-12 14:28:55', '2021-11-12 14:28:55'),
(16, 1, 'Cash Back Earnings', 20, 0, 3090, '2021-11-12 19:59:29', 'Cashback', '2021-11-12 14:29:29', '2021-11-12 14:29:29'),
(17, 1, 'Cash Back Earnings', 20, 0, 3110, '2021-11-12 19:59:36', 'Cashback', '2021-11-12 14:29:36', '2021-11-12 14:29:36'),
(18, 1, 'Redeemed Earnings', 0, 0, 3110, '2021-11-12 20:16:12', 'Redeem', '2021-11-12 14:46:12', '2021-11-12 14:46:12'),
(19, 1, 'Redeemed Earnings', 0, 0, 3110, '2021-11-12 20:17:47', 'Redeem', '2021-11-12 14:47:47', '2021-11-12 14:47:47'),
(20, 1, 'Redeemed Earnings', 0, 100, 3010, '2021-11-12 20:19:03', 'Redeem', '2021-11-12 14:49:03', '2021-11-12 14:49:03'),
(21, 1, 'Cash Back Earnings', 20, 0, 3030, '2021-11-12 20:19:22', 'Cashback', '2021-11-12 14:49:22', '2021-11-12 14:49:22'),
(22, 3, 'Bonus Earnings', 1000, 0, 1000, '2021-11-15 10:42:53', 'Bonus', '2021-11-15 05:12:53', '2021-11-15 05:12:53'),
(23, 4, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 12:16:26', 'Bonus', '2021-11-16 06:46:26', '2021-11-16 06:46:26'),
(24, 5, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 18:11:32', 'Bonus', '2021-11-16 12:41:32', '2021-11-16 12:41:32'),
(25, 6, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 18:16:59', 'Bonus', '2021-11-16 12:46:59', '2021-11-16 12:46:59'),
(26, 7, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 18:33:02', 'Bonus', '2021-11-16 13:03:02', '2021-11-16 13:03:02'),
(27, 8, 'Bonus Earnings', 1000, 0, 1000, '2021-11-17 11:28:50', 'Bonus', '2021-11-17 05:58:50', '2021-11-17 05:58:50'),
(28, 9, 'Bonus Earnings', 1000, 0, 1000, '2021-11-17 11:56:41', 'Bonus', '2021-11-17 06:26:41', '2021-11-17 06:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `venue_user_id` int(10) UNSIGNED DEFAULT NULL,
  `venu_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `date_and_time` datetime NOT NULL,
  `cashback_earned` double NOT NULL DEFAULT '0',
  `cashback_percentage` double NOT NULL DEFAULT '0',
  `redeemed_amount` double NOT NULL DEFAULT '0',
  `total_bill_amount` double NOT NULL DEFAULT '0',
  `pay_bill_amount` double NOT NULL DEFAULT '0',
  `check_amount_pos` double DEFAULT '0',
  `is_cross_verify` int(11) NOT NULL DEFAULT '0',
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_product_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `user_id`, `venue_user_id`, `venu_id`, `description`, `date_and_time`, `cashback_earned`, `cashback_percentage`, `redeemed_amount`, `total_bill_amount`, `pay_bill_amount`, `check_amount_pos`, `is_cross_verify`, `invoice_number`, `offer_product_ids`, `cashier_name`, `created_at`, `updated_at`, `deleted_at`, `updated_by`, `created_by`) VALUES
(1, 1, 1, 1, 'Cash Back Earnings', '2021-11-12 19:05:43', 10, 10, 0, 100, 100, 100, 1, 'ncnchchc', '1', 'Admin', '2021-11-12 13:35:43', '2021-11-12 13:47:21', NULL, 'Admin', 'Admin'),
(2, 1, 1, 1, 'Cash Back Earnings', '2021-11-12 19:12:17', 10, 10, 0, 100, 100, 100, 1, 'dgdgdg', NULL, 'Admin', '2021-11-12 13:42:17', '2021-11-12 14:24:29', NULL, 'Admin', 'Admin'),
(3, 2, 1, 1, 'Cash Back Earnings', '2021-11-12 19:15:16', 10, 10, 0, 100, 100, 100, 1, 'hispec', NULL, 'Admin', '2021-11-12 13:45:16', '2021-11-12 13:46:21', NULL, 'Admin', 'Admin'),
(4, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 19:55:04', 20, 20, 0, 100, 100, 100, 1, 'kamal', NULL, 'Admin', '2021-11-12 14:25:04', '2021-11-12 14:26:36', NULL, 'Admin', 'Admin'),
(5, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 19:57:23', 20, 20, 0, 100, 100, 100, 1, 'karan', NULL, 'Admin', '2021-11-12 14:27:23', '2021-11-12 14:28:27', '2021-11-12 14:28:27', 'Admin', 'Admin'),
(6, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 19:58:55', 20, 20, 0, 100, 100, 100, 2, 'he', NULL, 'Admin', '2021-11-12 14:28:55', '2021-11-12 14:29:29', NULL, 'Admin', 'Admin'),
(7, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 20:16:12', 20, 20, 0, 100, 100, 0, 0, 'approve', NULL, 'Admin', '2021-11-12 14:46:12', '2021-11-12 14:46:12', NULL, 'Admin', 'Admin'),
(8, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 20:17:47', 20, 20, 0, 100, 100, 0, 0, 'kamalkhan', '1', 'Admin', '2021-11-12 14:47:47', '2021-11-12 14:47:47', NULL, 'Admin', 'Admin'),
(9, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 20:19:03', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2021-11-12 14:49:03', '2021-11-12 14:49:22', NULL, 'Admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_criteria_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_datas`
--
ALTER TABLE `application_datas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_datas_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `application_images`
--
ALTER TABLE `application_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_images_application_data_id_foreign` (`application_data_id`);

--
-- Indexes for table `assign_badges`
--
ALTER TABLE `assign_badges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_badges_user_id_foreign` (`user_id`),
  ADD KEY `assign_badges_badge_id_foreign` (`badge_id`);

--
-- Indexes for table `assign_user_venues`
--
ALTER TABLE `assign_user_venues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_user_venues_venu_id_foreign` (`venu_id`),
  ADD KEY `assign_user_venues_venue_user_id_foreign` (`venue_user_id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `badges_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `cashbacks`
--
ALTER TABLE `cashbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cashbacks_admin_id_foreign` (`admin_id`),
  ADD KEY `cashbacks_venu_id_foreign` (`venu_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_admin_id_foreign` (`admin_id`),
  ADD KEY `events_venu_id_foreign` (`venu_id`);

--
-- Indexes for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_sent_notifications_user_id_foreign` (`user_id`),
  ADD KEY `event_sent_notifications_event_id_foreign` (`event_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `login_poses`
--
ALTER TABLE `login_poses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_requests`
--
ALTER TABLE `login_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_requests_venue_user_id_foreign` (`venue_user_id`),
  ADD KEY `login_requests_venu_id_foreign` (`venu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti_records`
--
ALTER TABLE `noti_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noti_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_admin_id_foreign` (`admin_id`),
  ADD KEY `offers_venu_id_foreign` (`venu_id`);

--
-- Indexes for table `offer_settings`
--
ALTER TABLE `offer_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_settings_offer_id_foreign` (`offer_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tier_conditions_tier_setting_id_foreign` (`tier_setting_id`);

--
-- Indexes for table `tier_settings`
--
ALTER TABLE `tier_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tier_settings_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_assign_offers_offer_id_foreign` (`offer_id`),
  ADD KEY `user_assign_offers_offer_setting_id_foreign` (`offer_setting_id`),
  ADD KEY `user_assign_offers_user_id_foreign` (`user_id`);

--
-- Indexes for table `venue_users`
--
ALTER TABLE `venue_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venue_users_venu_id_foreign` (`venu_id`);

--
-- Indexes for table `venus`
--
ALTER TABLE `venus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venus_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_cashbacks_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`),
  ADD KEY `wallet_transactions_venue_user_id_foreign` (`venue_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `application_datas`
--
ALTER TABLE `application_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `application_images`
--
ALTER TABLE `application_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `assign_badges`
--
ALTER TABLE `assign_badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `assign_user_venues`
--
ALTER TABLE `assign_user_venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cashbacks`
--
ALTER TABLE `cashbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login_poses`
--
ALTER TABLE `login_poses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_requests`
--
ALTER TABLE `login_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `noti_records`
--
ALTER TABLE `noti_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `offer_settings`
--
ALTER TABLE `offer_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  ADD CONSTRAINT `admin_criteria_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `application_datas`
--
ALTER TABLE `application_datas`
  ADD CONSTRAINT `application_datas_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `application_images`
--
ALTER TABLE `application_images`
  ADD CONSTRAINT `application_images_application_data_id_foreign` FOREIGN KEY (`application_data_id`) REFERENCES `application_datas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assign_badges`
--
ALTER TABLE `assign_badges`
  ADD CONSTRAINT `assign_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assign_user_venues`
--
ALTER TABLE `assign_user_venues`
  ADD CONSTRAINT `assign_user_venues_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_user_venues_venue_user_id_foreign` FOREIGN KEY (`venue_user_id`) REFERENCES `venue_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `badges`
--
ALTER TABLE `badges`
  ADD CONSTRAINT `badges_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cashbacks`
--
ALTER TABLE `cashbacks`
  ADD CONSTRAINT `cashbacks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cashbacks_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  ADD CONSTRAINT `event_sent_notifications_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_sent_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `login_requests`
--
ALTER TABLE `login_requests`
  ADD CONSTRAINT `login_requests_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_requests_venue_user_id_foreign` FOREIGN KEY (`venue_user_id`) REFERENCES `venue_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noti_records`
--
ALTER TABLE `noti_records`
  ADD CONSTRAINT `noti_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offer_settings`
--
ALTER TABLE `offer_settings`
  ADD CONSTRAINT `offer_settings_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  ADD CONSTRAINT `tier_conditions_tier_setting_id_foreign` FOREIGN KEY (`tier_setting_id`) REFERENCES `tier_settings` (`id`);

--
-- Constraints for table `tier_settings`
--
ALTER TABLE `tier_settings`
  ADD CONSTRAINT `tier_settings_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  ADD CONSTRAINT `user_assign_offers_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_assign_offers_offer_setting_id_foreign` FOREIGN KEY (`offer_setting_id`) REFERENCES `offer_settings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_assign_offers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `venue_users`
--
ALTER TABLE `venue_users`
  ADD CONSTRAINT `venue_users_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `venus`
--
ALTER TABLE `venus`
  ADD CONSTRAINT `venus_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  ADD CONSTRAINT `wallet_cashbacks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wallet_transactions_venue_user_id_foreign` FOREIGN KEY (`venue_user_id`) REFERENCES `venue_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
