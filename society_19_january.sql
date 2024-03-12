-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 12, 2024 at 07:20 PM
-- Server version: 8.0.36-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_19_january`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_friends`
--

CREATE TABLE `add_friends` (
  `id` int NOT NULL,
  `from_user_id` int DEFAULT NULL,
  `to_user_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_friends`
--

INSERT INTO `add_friends` (`id`, `from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 156, 1, 'Accepted', '2024-02-29 13:01:08', '2024-02-29 13:01:08'),
(4, 156, 2, 'Accepted', '2024-02-29 13:13:53', '2024-02-29 13:13:53'),
(5, 7, 156, 'Accepted', '2024-02-29 13:14:03', '2024-02-29 13:14:03'),
(6, 156, 4, 'Accepted', '2024-02-29 13:14:12', '2024-02-29 13:14:12'),
(7, 5, 156, 'Accepted', '2024-02-29 13:14:23', '2024-02-29 13:14:23'),
(8, 6, 156, 'Pending', '2024-02-29 13:14:27', '2024-02-29 13:14:27'),
(9, 156, 8, 'Pending', '2024-03-07 10:30:41', '2024-03-07 10:30:41'),
(10, 156, 147, 'Pending', '2024-03-07 10:53:16', '2024-03-07 10:53:16'),
(11, 100, 1, 'Pending', '2024-03-07 14:45:16', '2024-03-07 14:45:16'),
(12, 1, 158, 'Pending', '2024-03-07 14:45:19', '2024-03-07 14:45:19'),
(13, 56, 156, 'Pending', '2024-03-07 14:45:23', '2024-03-07 14:45:23'),
(14, 56, 98, 'Pending', '2024-03-08 06:16:27', '2024-03-08 06:16:27'),
(15, 68, 10, 'Pending', '2024-03-08 07:27:54', '2024-03-08 07:27:54'),
(16, 41, 156, 'Pending', '2024-03-08 07:41:49', '2024-03-08 07:41:49'),
(17, 50, 16, 'Pending', '2024-03-08 07:48:07', '2024-03-08 07:48:07'),
(18, 40, 165, 'Accepted', '2024-03-09 11:36:34', '2024-03-09 11:36:34'),
(19, 165, 167, 'Accepted', '2024-03-11 08:41:42', '2024-03-11 08:41:42'),
(20, 165, 152, 'Accepted', '2024-03-11 14:39:43', '2024-03-11 14:39:43'),
(21, 163, 166, 'Accepted', '2024-03-11 14:44:12', '2024-03-11 14:44:12'),
(22, 163, 125, 'Pending', '2024-03-11 14:44:15', '2024-03-11 14:44:15'),
(23, 164, 166, 'Accepted', '2024-03-11 15:54:03', '2024-03-11 15:54:03'),
(24, 166, 152, 'Pending', '2024-03-12 04:43:13', '2024-03-12 04:43:13'),
(27, 163, 152, 'Pending', '2024-03-12 08:38:20', '2024-03-12 08:38:20'),
(28, 163, 120, 'Pending', '2024-03-12 08:39:18', '2024-03-12 08:39:18'),
(29, 40, 168, 'Pending', '2024-03-12 10:12:59', '2024-03-12 10:12:59'),
(30, 40, 14, 'Pending', '2024-03-12 11:23:10', '2024-03-12 11:23:10'),
(31, 166, 169, 'Pending', '2024-03-12 13:22:43', '2024-03-12 13:22:43'),
(32, 166, 168, 'Pending', '2024-03-12 13:22:46', '2024-03-12 13:22:46'),
(33, 166, 167, 'Pending', '2024-03-12 13:22:48', '2024-03-12 13:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_type` enum('Super Admin','Admin','Marketing','Managment','Staff') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `role_type`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Nadeer', 'adminn@yopmail.com', '$2y$10$01b9.qb3ioJYe3LZK6Yamey.JP5XELdGOBNTGjYT.CWJjMLMeTAyW', 'Active', 'Super Admin', 'zIfWWwjLiTzsgSLrBaSnrL6EgomXjG7bXXcAgVNxmrvRwfsUBeYWEJjOHXTr6oUM', '2021-11-10 18:30:00', '2024-01-16 02:33:58', 'Nadeer', 'Nadeer'),
(2, 'admin2', NULL, '$2y$10$R45f7IQlsUW2t/kK1UtlR.RHJuwBv7/FvMOkWCFxPJUJdz8fcnFjC', 'Active', 'Admin', 'F0JOfly5MFkD7frjm8CWXgcafeeEZckoBvJB4TS5UcbnOkakovZb6t8s085E', '2021-11-11 06:26:38', '2021-11-16 09:03:01', 'Nadeer', 'Nadeer'),
(3, 'admin3', NULL, '$2y$10$VFDKE91U.vQ2oNYBYEva7unzwJmoXtyLrDKKzOYAYtKzANqOUQ14u', 'Active', 'Managment', 'E9geyFHuB1cnTUv1lPXPsF7iHqp0rpUYnmXwggLvCftwMV4MtbLF8vRk2mCV', '2021-11-11 06:28:56', '2022-01-24 04:01:30', 'admin2', 'Nadeer'),
(4, 'kanhaiya', NULL, '$2y$10$S2ClRSThHO0X10on0SUBO.ga3Z1UgA/a9x7COjhh3jAQvgGAX6Dki', 'Active', 'Super Admin', 'T3Tl08cPzGgVVjSzzbVaA8rHmVhTzQl9jyXfLTPLeSxPhEK5yd0jKy0IZd2INf1H', '2021-11-12 13:54:05', '2021-11-15 05:33:16', 'Nadeer', 'admin2'),
(5, 'kamal', NULL, '$2y$10$C/e306XmnKmqWR1ke8NmQ.tjqFJA7SgDIkNWfB7PUWHsNQCV45ld.', 'Active', 'Staff', 'ba12PwD1P22v2y7PGPBITnS0ATycylUHAdyUfo4Ilts8vFRL2NinegfSztrW', '2021-11-12 14:21:08', '2021-11-15 06:08:54', 'kanhaiya', 'Nadeer'),
(6, 'harman', NULL, '$2y$10$QHcQkmki3OABvV6p/1uiLeOSaJLvi3L3ddAmCB3yRCL9/dZoTIPpG', 'Active', 'Admin', 'T5kd7cCcD52ryje0QybCtIoivhjwg9O8kmwnGNBPuMzp2RWDdMEVY9X3ZLawKdim', '2021-11-16 06:47:14', '2021-11-16 06:48:19', 'Nadeer', 'Nadeer'),
(7, 'da', NULL, '$2y$10$8NHbg52YnI5fSETef8GMMuavCObTx3GKySLSbeU3vsalZxZw7Uh.u', 'Active', 'Super Admin', NULL, '2021-11-16 07:27:49', '2021-11-16 07:27:49', 'admin2', 'admin2'),
(8, 'eq', NULL, '$2y$10$qRMTUCPqzfX2mmnaWEVtPeqk/X5YrX6ntqbTBua3gXNkwFe0Vuav6', 'Active', 'Super Admin', NULL, '2021-11-16 07:32:18', '2021-11-16 07:32:18', 'admin2', 'admin2'),
(9, 'test', NULL, '$2y$10$PAhrHuyj.d8jLIOUJdky9udRUHwFIyzVmKhiSbIlsLrjvl7lE4RKa', 'Active', 'Super Admin', NULL, '2022-01-19 05:23:45', '2022-01-19 05:23:45', 'Nadeer', 'Nadeer');

-- --------------------------------------------------------

--
-- Table structure for table `admin_criteria_notifications`
--

CREATE TABLE `admin_criteria_notifications` (
  `id` int UNSIGNED NOT NULL,
  `city_id` int DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `city_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `push_type` int NOT NULL DEFAULT '0',
  `sms_type` int NOT NULL DEFAULT '0',
  `gender` enum('None','Male','Female','Other','All') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `noti_type` int DEFAULT NULL COMMENT '1=> Transaction, 2=> Cahsback, 3=> Bonus, 4=>  Referral, 5 => Event,  6=> Offer, 7=> Creteria',
  `event_id` int DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
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
(107, NULL, 4, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:30', '2021-11-16 12:24:30', NULL),
(108, NULL, 1, NULL, 'Congratulations you have earned cashback amount of 20 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-19 05:22:11', '2022-01-19 05:22:11', NULL),
(109, NULL, 1, NULL, 'Congratulations you have earned cashback amount of 20 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-19 05:22:12', '2022-01-19 05:22:12', NULL),
(110, NULL, 1, NULL, 'Congratulations you have earned cashback amount of 20 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-19 05:22:13', '2022-01-19 05:22:13', NULL),
(111, NULL, 2, NULL, 'Special Offer: Offer! at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 19, '2022-01-25 05:59:49', '2022-01-25 05:59:49', NULL),
(112, NULL, 2, NULL, 'Special Offer: Offer! at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 19, '2022-01-25 06:01:51', '2022-01-25 06:01:51', NULL),
(113, NULL, 2, NULL, 'Special Offer: Offer! at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 19, '2022-01-25 06:05:04', '2022-01-25 06:05:04', NULL),
(114, NULL, 11, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2022-01-27 00:54:00', '2022-01-27 00:54:00', NULL),
(115, NULL, 11, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2022-01-27 00:55:56', '2022-01-27 00:55:56', NULL),
(116, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:28', '2022-01-27 03:16:28', NULL),
(117, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:29', '2022-01-27 03:16:29', NULL),
(118, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:30', '2022-01-27 03:16:30', NULL),
(119, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:31', '2022-01-27 03:16:31', NULL),
(120, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:13:56', '2022-01-27 04:13:56', NULL),
(121, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:22:00', '2022-01-27 04:22:00', NULL),
(122, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:22:02', '2022-01-27 04:22:02', NULL),
(123, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:28:43', '2022-01-27 04:28:43', NULL),
(124, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 14000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 05:35:23', '2022-01-27 05:35:23', NULL),
(125, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 05:47:01', '2022-01-27 05:47:01', NULL),
(126, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 05:47:03', '2022-01-27 05:47:03', NULL),
(127, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:10:50', '2022-01-27 06:10:50', NULL),
(128, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:16:55', '2022-01-27 06:16:55', NULL),
(129, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 14000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:16:56', '2022-01-27 06:16:56', NULL),
(130, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:37:52', '2022-01-27 06:37:52', NULL),
(131, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:37:54', '2022-01-27 06:37:54', NULL),
(132, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:39:20', '2022-01-27 06:39:20', NULL),
(133, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:39:21', '2022-01-27 06:39:21', NULL),
(134, NULL, 11, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2022-01-28 00:19:17', '2022-01-28 00:19:17', NULL),
(135, NULL, 11, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2022-01-28 00:29:44', '2022-01-28 00:29:44', NULL),
(136, NULL, 11, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2022-01-28 01:19:40', '2022-01-28 01:19:40', NULL),
(137, NULL, 12, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-20 05:17:58', '2023-10-20 05:17:58', NULL),
(138, NULL, 13, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-20 07:10:50', '2023-10-20 07:10:50', NULL),
(139, NULL, 14, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 05:40:32', '2023-10-23 05:40:32', NULL),
(140, NULL, 14, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 05:42:40', '2023-10-23 05:42:40', NULL),
(141, NULL, 14, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 05:52:57', '2023-10-23 05:52:57', NULL),
(142, NULL, 15, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 06:45:10', '2023-10-23 06:45:10', NULL),
(143, NULL, 16, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 06:46:14', '2023-10-23 06:46:14', NULL),
(144, NULL, 16, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 06:50:03', '2023-10-23 06:50:03', NULL),
(145, NULL, 16, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 06:51:22', '2023-10-23 06:51:22', NULL),
(146, NULL, 17, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 08:26:19', '2023-10-23 08:26:19', NULL),
(147, NULL, 18, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 08:29:59', '2023-10-23 08:29:59', NULL),
(148, NULL, 19, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 09:44:49', '2023-10-23 09:44:49', NULL),
(149, NULL, 20, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 10:14:02', '2023-10-23 10:14:02', NULL),
(150, NULL, 21, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 10:31:02', '2023-10-23 10:31:02', NULL),
(151, NULL, 22, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 10:41:41', '2023-10-23 10:41:41', NULL),
(152, NULL, 23, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 23:17:52', '2023-10-23 23:17:52', NULL),
(153, NULL, 14, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 23:23:02', '2023-10-23 23:23:02', NULL),
(154, NULL, 23, NULL, 'Special Offer: Birthday Offer? at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2023-10-24 01:20:27', '2023-10-24 01:20:27', NULL),
(155, NULL, 23, NULL, 'Special Offer: Birthday Offer at Venue2777\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2023-10-24 01:20:29', '2023-10-24 01:20:29', NULL),
(156, NULL, 23, NULL, 'Special Offer: Birthday Offer at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 8, '2023-10-24 01:20:30', '2023-10-24 01:20:30', NULL),
(157, NULL, 23, NULL, 'Special Offer: Birthday Offer at Shivam Test\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 13, '2023-10-24 01:20:31', '2023-10-24 01:20:31', NULL),
(158, NULL, 23, NULL, 'Special Offer: Birthday Offer at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 18, '2023-10-24 01:20:32', '2023-10-24 01:20:32', NULL),
(159, NULL, 23, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-24 01:23:47', '2023-10-24 01:23:47', NULL),
(160, NULL, 24, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 01:32:59', '2023-10-24 01:32:59', NULL),
(161, NULL, 25, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 01:55:32', '2023-10-24 01:55:32', NULL),
(162, NULL, 26, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 08:54:18', '2023-10-24 08:54:18', NULL),
(163, NULL, 27, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 09:24:56', '2023-10-24 09:24:56', NULL),
(164, NULL, 28, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 09:48:09', '2023-10-24 09:48:09', NULL),
(165, NULL, 29, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 10:05:30', '2023-10-24 10:05:30', NULL),
(166, NULL, 30, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 10:21:43', '2023-10-24 10:21:43', NULL),
(167, NULL, 31, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 10:37:30', '2023-10-24 10:37:30', NULL),
(168, NULL, 32, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 23:06:27', '2023-10-24 23:06:27', NULL),
(169, NULL, 33, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 23:37:20', '2023-10-24 23:37:20', NULL),
(170, NULL, 34, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 01:29:38', '2023-10-25 01:29:38', NULL),
(171, NULL, 34, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 01:46:00', '2023-10-25 01:46:00', NULL),
(172, NULL, 34, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 01:46:37', '2023-10-25 01:46:37', NULL),
(173, NULL, 35, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 01:54:32', '2023-10-25 01:54:32', NULL),
(174, NULL, 34, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 02:51:51', '2023-10-25 02:51:51', NULL),
(175, NULL, 36, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 03:09:13', '2023-10-25 03:09:13', NULL),
(176, NULL, 37, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 03:13:28', '2023-10-25 03:13:28', NULL),
(177, NULL, 38, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 03:32:13', '2023-10-25 03:32:13', NULL),
(178, NULL, 39, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 06:08:17', '2023-10-25 06:08:17', NULL),
(179, NULL, 39, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 06:10:30', '2023-10-25 06:10:30', NULL),
(180, NULL, 40, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 02:14:24', '2023-10-26 02:14:24', NULL),
(181, NULL, 41, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 04:52:01', '2023-10-26 04:52:01', NULL),
(182, NULL, 42, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 05:22:38', '2023-10-26 05:22:38', NULL),
(183, NULL, 43, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 05:52:20', '2023-10-26 05:52:20', NULL),
(184, NULL, 44, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 06:17:20', '2023-10-26 06:17:20', NULL),
(185, NULL, 45, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 06:18:29', '2023-10-26 06:18:29', NULL),
(186, NULL, 45, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:19:16', '2023-10-26 06:19:16', NULL),
(187, NULL, 45, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:20:05', '2023-10-26 06:20:05', NULL),
(188, NULL, 46, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 06:31:36', '2023-10-26 06:31:36', NULL),
(189, NULL, 46, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:32:51', '2023-10-26 06:32:51', NULL),
(190, NULL, 44, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:33:55', '2023-10-26 06:33:55', NULL),
(191, NULL, 44, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:34:09', '2023-10-26 06:34:09', NULL),
(192, NULL, 47, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:01:19', '2023-10-26 07:01:19', NULL),
(193, NULL, 46, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:07:00', '2023-10-26 07:07:00', NULL),
(194, NULL, 46, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:07:11', '2023-10-26 07:07:11', NULL),
(195, NULL, 48, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:12:53', '2023-10-26 07:12:53', NULL),
(196, NULL, 49, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:17:19', '2023-10-26 07:17:19', NULL),
(197, NULL, 50, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:18:48', '2023-10-26 07:18:48', NULL),
(198, NULL, 51, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:25:00', '2023-10-26 07:25:00', NULL),
(199, NULL, 40, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:27:34', '2023-10-26 07:27:34', NULL),
(200, NULL, 40, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:27:40', '2023-10-26 07:27:40', NULL),
(201, NULL, 40, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:27:44', '2023-10-26 07:27:44', NULL),
(202, NULL, 48, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:47:43', '2023-10-26 07:47:43', NULL),
(203, NULL, 48, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:48:00', '2023-10-26 07:48:00', NULL),
(204, NULL, 48, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:48:31', '2023-10-26 07:48:31', NULL),
(205, NULL, 52, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 08:31:11', '2023-10-26 08:31:11', NULL),
(206, NULL, 53, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 23:15:46', '2023-10-26 23:15:46', NULL),
(207, NULL, 53, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 00:03:03', '2023-10-27 00:03:03', NULL),
(208, NULL, 53, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 00:03:08', '2023-10-27 00:03:08', NULL),
(209, NULL, 53, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 00:03:14', '2023-10-27 00:03:14', NULL),
(210, NULL, 54, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 01:09:43', '2023-10-27 01:09:43', NULL),
(211, NULL, 54, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:41:29', '2023-10-27 01:41:29', NULL),
(212, NULL, 54, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:41:46', '2023-10-27 01:41:46', NULL),
(213, NULL, 54, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:41:59', '2023-10-27 01:41:59', NULL),
(214, NULL, 55, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 01:47:27', '2023-10-27 01:47:27', NULL),
(215, NULL, 55, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:48:15', '2023-10-27 01:48:15', NULL),
(216, NULL, 55, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:48:33', '2023-10-27 01:48:33', NULL),
(217, NULL, 55, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:48:43', '2023-10-27 01:48:43', NULL),
(218, NULL, 56, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:00:55', '2023-10-27 03:00:55', NULL),
(219, NULL, 56, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:02:00', '2023-10-27 03:02:00', NULL),
(220, NULL, 56, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:03:36', '2023-10-27 03:03:36', NULL),
(221, NULL, 57, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:04:36', '2023-10-27 03:04:36', NULL),
(222, NULL, 56, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:06:08', '2023-10-27 03:06:08', NULL),
(223, NULL, 58, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:08:03', '2023-10-27 03:08:03', NULL),
(224, NULL, 59, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:10:55', '2023-10-27 03:10:55', NULL),
(225, NULL, 60, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:12:21', '2023-10-27 03:12:21', NULL),
(226, NULL, 61, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:19:04', '2023-10-27 03:19:04', NULL),
(227, NULL, 61, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:28:16', '2023-10-27 03:28:16', NULL),
(228, NULL, 62, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:30:12', '2023-10-27 03:30:12', NULL),
(229, NULL, 62, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:30:52', '2023-10-27 03:30:52', NULL),
(230, NULL, 62, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:31:15', '2023-10-27 03:31:15', NULL),
(231, NULL, 62, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:31:24', '2023-10-27 03:31:24', NULL),
(232, NULL, 63, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:37:45', '2023-10-27 03:37:45', NULL),
(233, NULL, 63, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:40:40', '2023-10-27 03:40:40', NULL),
(234, NULL, 63, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:40:50', '2023-10-27 03:40:50', NULL),
(235, NULL, 63, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:41:02', '2023-10-27 03:41:02', NULL),
(236, NULL, 64, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:14:39', '2023-10-27 07:14:39', NULL),
(237, NULL, 65, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:17:38', '2023-10-27 07:17:38', NULL),
(238, NULL, 64, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:17:50', '2023-10-27 07:17:50', NULL);
INSERT INTO `admin_criteria_notifications` (`id`, `city_id`, `user_id`, `city_name`, `message`, `push_type`, `sms_type`, `gender`, `nationality`, `sent_by`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `noti_type`, `event_id`, `offer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(239, NULL, 64, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:20:15', '2023-10-27 07:20:15', NULL),
(240, NULL, 64, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:20:22', '2023-10-27 07:20:22', NULL),
(241, NULL, 64, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:20:42', '2023-10-27 07:20:42', NULL),
(242, NULL, 66, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:32:34', '2023-10-27 07:32:34', NULL),
(243, NULL, 66, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:14', '2023-10-27 07:33:14', NULL),
(244, NULL, 66, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:20', '2023-10-27 07:33:20', NULL),
(245, NULL, 66, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:27', '2023-10-27 07:33:27', NULL),
(246, NULL, 66, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:46', '2023-10-27 07:33:46', NULL),
(247, NULL, 67, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:39:38', '2023-10-27 07:39:38', NULL),
(248, NULL, 67, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:46:53', '2023-10-27 07:46:53', NULL),
(249, NULL, 67, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:47:02', '2023-10-27 07:47:02', NULL),
(250, NULL, 67, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:47:08', '2023-10-27 07:47:08', NULL),
(251, NULL, 67, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:47:18', '2023-10-27 07:47:18', NULL),
(252, NULL, 68, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:24:04', '2023-10-27 08:24:04', NULL),
(253, NULL, 69, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:37:06', '2023-10-27 08:37:06', NULL),
(254, NULL, 69, NULL, 'The Hello world badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:37:46', '2023-10-27 08:37:46', NULL),
(255, NULL, 70, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:37:52', '2023-10-27 08:37:52', NULL),
(256, NULL, 69, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:37:55', '2023-10-27 08:37:55', NULL),
(257, NULL, 69, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:02', '2023-10-27 08:38:02', NULL),
(258, NULL, 70, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:32', '2023-10-27 08:38:32', NULL),
(259, NULL, 70, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:38', '2023-10-27 08:38:38', NULL),
(260, NULL, 70, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:43', '2023-10-27 08:38:43', NULL),
(261, NULL, 71, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:46:50', '2023-10-27 08:46:50', NULL),
(262, NULL, 72, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 09:20:33', '2023-10-27 09:20:33', NULL),
(263, NULL, 73, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 10:00:16', '2023-10-27 10:00:16', NULL),
(264, NULL, 74, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 10:12:51', '2023-10-27 10:12:51', NULL),
(265, NULL, 75, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 10:39:57', '2023-10-27 10:39:57', NULL),
(266, NULL, 40, NULL, 'The Hello world badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-30 00:23:59', '2023-10-30 00:23:59', NULL),
(267, NULL, 40, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-30 00:24:23', '2023-10-30 00:24:23', NULL),
(268, NULL, 76, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-30 00:25:21', '2023-10-30 00:25:21', NULL),
(269, NULL, 77, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-15 03:12:31', '2023-12-15 03:12:31', NULL),
(270, NULL, 78, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-18 06:33:13', '2023-12-18 06:33:13', NULL),
(271, NULL, 79, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-20 02:56:30', '2023-12-20 02:56:30', NULL),
(272, NULL, 80, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 01:20:40', '2023-12-21 01:20:40', NULL),
(273, NULL, 81, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 03:02:36', '2023-12-21 03:02:36', NULL),
(274, NULL, 82, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 03:34:10', '2023-12-21 03:34:10', NULL),
(275, NULL, 83, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 06:48:20', '2023-12-21 06:48:20', NULL),
(276, NULL, 84, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-28 00:07:08', '2023-12-28 00:07:08', NULL),
(277, NULL, 85, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 01:59:29', '2023-12-29 01:59:29', NULL),
(278, NULL, 86, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 04:21:47', '2023-12-29 04:21:47', NULL),
(279, NULL, 87, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 06:05:40', '2023-12-29 06:05:40', NULL),
(280, NULL, 88, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 07:24:24', '2023-12-29 07:24:24', NULL),
(281, NULL, 89, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-02 02:00:33', '2024-01-02 02:00:33', NULL),
(282, NULL, 90, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-02 04:19:54', '2024-01-02 04:19:54', NULL),
(283, NULL, 91, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-02 05:54:10', '2024-01-02 05:54:10', NULL),
(284, NULL, 92, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 02:14:54', '2024-01-04 02:14:54', NULL),
(285, NULL, 89, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-04 02:42:17', '2024-01-04 02:42:17', NULL),
(286, NULL, 89, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-04 02:42:28', '2024-01-04 02:42:28', NULL),
(287, NULL, 89, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-04 02:42:35', '2024-01-04 02:42:35', NULL),
(288, NULL, 93, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 08:44:16', '2024-01-04 08:44:16', NULL),
(289, NULL, 94, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 23:09:12', '2024-01-04 23:09:12', NULL),
(290, NULL, 95, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 23:24:10', '2024-01-04 23:24:10', NULL),
(291, NULL, 96, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-05 01:51:12', '2024-01-05 01:51:12', NULL),
(292, NULL, 97, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-07 23:38:11', '2024-01-07 23:38:11', NULL),
(293, NULL, 98, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-08 00:29:08', '2024-01-08 00:29:08', NULL),
(294, NULL, 99, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-08 01:37:13', '2024-01-08 01:37:13', NULL),
(295, NULL, 100, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-08 02:40:36', '2024-01-08 02:40:36', NULL),
(296, NULL, 1, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:39', '2024-01-09 00:19:39', NULL),
(297, NULL, 2, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:40', '2024-01-09 00:19:40', NULL),
(298, NULL, 3, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(299, NULL, 4, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(300, NULL, 5, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(301, NULL, 6, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(302, NULL, 7, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(303, NULL, 8, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:42', '2024-01-09 00:19:42', NULL),
(304, NULL, 12, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(305, NULL, 13, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(306, NULL, 14, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(307, NULL, 15, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(308, NULL, 16, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(309, NULL, 17, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(310, NULL, 18, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(311, NULL, 19, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(312, NULL, 20, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(313, NULL, 21, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(314, NULL, 22, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(315, NULL, 23, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(316, NULL, 24, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(317, NULL, 25, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(318, NULL, 26, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(319, NULL, 27, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(320, NULL, 28, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(321, NULL, 29, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:48', '2024-01-09 00:19:48', NULL),
(322, NULL, 30, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(323, NULL, 31, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(324, NULL, 32, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(325, NULL, 33, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:50', '2024-01-09 00:19:50', NULL),
(326, NULL, 34, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(327, NULL, 35, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(328, NULL, 36, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(329, NULL, 37, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(330, NULL, 38, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(331, NULL, 39, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(332, NULL, 40, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:54', '2024-01-09 00:19:54', NULL),
(333, NULL, 41, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(334, NULL, 42, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(335, NULL, 43, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(336, NULL, 44, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(337, NULL, 45, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(338, NULL, 46, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:56', '2024-01-09 00:19:56', NULL),
(339, NULL, 47, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:56', '2024-01-09 00:19:56', NULL),
(340, NULL, 48, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(341, NULL, 49, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(342, NULL, 50, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(343, NULL, 51, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(344, NULL, 52, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(345, NULL, 53, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(346, NULL, 54, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(347, NULL, 55, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(348, NULL, 56, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(349, NULL, 57, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(350, NULL, 58, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(351, NULL, 59, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(352, NULL, 60, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(353, NULL, 61, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(354, NULL, 62, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:01', '2024-01-09 00:20:01', NULL),
(355, NULL, 63, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(356, NULL, 64, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(357, NULL, 65, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(358, NULL, 66, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(359, NULL, 67, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:05', '2024-01-09 00:20:05', NULL),
(360, NULL, 68, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(361, NULL, 69, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(362, NULL, 70, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(363, NULL, 71, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(364, NULL, 72, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:08', '2024-01-09 00:20:08', NULL),
(365, NULL, 73, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:08', '2024-01-09 00:20:08', NULL),
(366, NULL, 74, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:10', '2024-01-09 00:20:10', NULL),
(367, NULL, 75, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(368, NULL, 76, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(369, NULL, 77, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(370, NULL, 78, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(371, NULL, 79, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(372, NULL, 80, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(373, NULL, 81, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(374, NULL, 82, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(375, NULL, 83, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:14', '2024-01-09 00:20:14', NULL),
(376, NULL, 84, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(377, NULL, 85, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(378, NULL, 86, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(379, NULL, 87, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(380, NULL, 88, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(381, NULL, 89, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(382, NULL, 90, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:19', '2024-01-09 00:20:19', NULL),
(383, NULL, 91, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(384, NULL, 92, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(385, NULL, 93, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(386, NULL, 94, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(387, NULL, 95, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:21', '2024-01-09 00:20:21', NULL),
(388, NULL, 96, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(389, NULL, 97, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(390, NULL, 98, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(391, NULL, 99, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:24', '2024-01-09 00:20:24', NULL),
(392, NULL, 100, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:25', '2024-01-09 00:20:25', NULL),
(393, NULL, 1, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:00', '2024-01-09 00:22:00', NULL),
(394, NULL, 2, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(395, NULL, 3, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(396, NULL, 4, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(397, NULL, 5, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(398, NULL, 6, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(399, NULL, 7, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(400, NULL, 8, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(401, NULL, 12, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:03', '2024-01-09 00:22:03', NULL),
(402, NULL, 13, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(403, NULL, 14, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(404, NULL, 15, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(405, NULL, 16, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(406, NULL, 17, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(407, NULL, 18, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(408, NULL, 19, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(409, NULL, 20, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(410, NULL, 21, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(411, NULL, 22, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(412, NULL, 23, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(413, NULL, 24, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(414, NULL, 25, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(415, NULL, 26, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(416, NULL, 27, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(417, NULL, 28, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(418, NULL, 29, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:09', '2024-01-09 00:22:09', NULL),
(419, NULL, 30, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(420, NULL, 31, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(421, NULL, 32, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(422, NULL, 33, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:11', '2024-01-09 00:22:11', NULL),
(423, NULL, 34, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(424, NULL, 35, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(425, NULL, 36, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(426, NULL, 37, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(427, NULL, 38, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(428, NULL, 39, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(429, NULL, 40, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(430, NULL, 41, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(431, NULL, 42, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(432, NULL, 43, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(433, NULL, 44, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(434, NULL, 45, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(435, NULL, 46, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(436, NULL, 47, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(437, NULL, 48, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(438, NULL, 49, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(439, NULL, 50, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(440, NULL, 51, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(441, NULL, 52, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(442, NULL, 53, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(443, NULL, 54, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(444, NULL, 55, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(445, NULL, 56, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(446, NULL, 57, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(447, NULL, 58, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(448, NULL, 59, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(449, NULL, 60, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(450, NULL, 61, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:21', '2024-01-09 00:22:21', NULL),
(451, NULL, 62, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:22', '2024-01-09 00:22:22', NULL),
(452, NULL, 63, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(453, NULL, 64, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(454, NULL, 65, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:24', '2024-01-09 00:22:24', NULL),
(455, NULL, 66, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(456, NULL, 67, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(457, NULL, 68, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(458, NULL, 69, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(459, NULL, 70, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(460, NULL, 71, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(461, NULL, 72, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:28', '2024-01-09 00:22:28', NULL),
(462, NULL, 73, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:28', '2024-01-09 00:22:28', NULL),
(463, NULL, 74, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:30', '2024-01-09 00:22:30', NULL),
(464, NULL, 75, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(465, NULL, 76, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(466, NULL, 77, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(467, NULL, 78, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(468, NULL, 79, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(469, NULL, 80, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(470, NULL, 81, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(471, NULL, 82, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(472, NULL, 83, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:34', '2024-01-09 00:22:34', NULL),
(473, NULL, 84, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(474, NULL, 85, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(475, NULL, 86, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(476, NULL, 87, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(477, NULL, 88, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(478, NULL, 89, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(479, NULL, 90, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:38', '2024-01-09 00:22:38', NULL),
(480, NULL, 91, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(481, NULL, 92, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(482, NULL, 93, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(483, NULL, 94, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(484, NULL, 95, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(485, NULL, 96, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:43', '2024-01-09 00:22:43', NULL),
(486, NULL, 97, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:43', '2024-01-09 00:22:43', NULL),
(487, NULL, 98, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:44', '2024-01-09 00:22:44', NULL),
(488, NULL, 99, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:45', '2024-01-09 00:22:45', NULL),
(489, NULL, 100, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:46', '2024-01-09 00:22:46', NULL),
(490, NULL, 101, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 07:29:34', '2024-01-09 07:29:34', NULL),
(491, NULL, 102, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 07:56:21', '2024-01-09 07:56:21', NULL),
(492, NULL, 103, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 07:59:48', '2024-01-09 07:59:48', NULL),
(493, NULL, 104, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 08:13:26', '2024-01-09 08:13:26', NULL),
(494, NULL, 105, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 08:56:56', '2024-01-09 08:56:56', NULL),
(495, NULL, 106, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 09:46:30', '2024-01-09 09:46:30', NULL),
(496, NULL, 107, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 09:58:08', '2024-01-09 09:58:08', NULL),
(497, NULL, 108, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 00:00:45', '2024-01-10 00:00:45', NULL),
(498, NULL, 109, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 00:14:56', '2024-01-10 00:14:56', NULL),
(499, NULL, 110, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 01:25:43', '2024-01-10 01:25:43', NULL);
INSERT INTO `admin_criteria_notifications` (`id`, `city_id`, `user_id`, `city_name`, `message`, `push_type`, `sms_type`, `gender`, `nationality`, `sent_by`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `noti_type`, `event_id`, `offer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(500, NULL, 111, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 01:32:11', '2024-01-10 01:32:11', NULL),
(501, NULL, 112, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 01:35:36', '2024-01-10 01:35:36', NULL),
(502, NULL, 113, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 02:27:26', '2024-01-10 02:27:26', NULL),
(503, NULL, 114, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 03:45:37', '2024-01-10 03:45:37', NULL),
(504, NULL, 115, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 05:42:55', '2024-01-10 05:42:55', NULL),
(505, NULL, 116, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 07:39:34', '2024-01-10 07:39:34', NULL),
(506, NULL, 117, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 07:48:26', '2024-01-10 07:48:26', NULL),
(507, NULL, 118, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 08:41:32', '2024-01-10 08:41:32', NULL),
(508, NULL, 119, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 23:32:23', '2024-01-10 23:32:23', NULL),
(509, NULL, 120, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 23:44:24', '2024-01-10 23:44:24', NULL),
(510, NULL, 121, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 08:11:59', '2024-01-11 08:11:59', NULL),
(511, NULL, 122, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 08:38:19', '2024-01-11 08:38:19', NULL),
(512, NULL, 123, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 08:40:56', '2024-01-11 08:40:56', NULL),
(513, NULL, 124, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 10:05:03', '2024-01-11 10:05:03', NULL),
(514, NULL, 125, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 22:49:09', '2024-01-11 22:49:09', NULL),
(515, NULL, 126, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 00:06:28', '2024-01-12 00:06:28', NULL),
(516, NULL, 127, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 00:29:29', '2024-01-12 00:29:29', NULL),
(517, NULL, 128, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 02:20:57', '2024-01-12 02:20:57', NULL),
(518, NULL, 129, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 03:13:32', '2024-01-12 03:13:32', NULL),
(519, NULL, 130, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 05:10:25', '2024-01-12 05:10:25', NULL),
(520, NULL, 131, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 05:24:28', '2024-01-12 05:24:28', NULL),
(521, NULL, 132, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 06:01:28', '2024-01-12 06:01:28', NULL),
(522, NULL, 133, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 06:02:52', '2024-01-12 06:02:52', NULL),
(523, NULL, 90, NULL, 'The Gold badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-15 00:45:03', '2024-01-15 00:45:03', NULL),
(524, NULL, 90, NULL, 'The Hello world badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-15 00:46:09', '2024-01-15 00:46:09', NULL),
(525, NULL, 134, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 04:30:47', '2024-01-15 04:30:47', NULL),
(526, NULL, 135, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 06:12:20', '2024-01-15 06:12:20', NULL),
(527, NULL, 136, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 07:18:55', '2024-01-15 07:18:55', NULL),
(528, NULL, 137, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 23:31:08', '2024-01-15 23:31:08', NULL),
(529, NULL, 138, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 23:44:24', '2024-01-15 23:44:24', NULL),
(530, NULL, 139, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 23:46:30', '2024-01-15 23:46:30', NULL),
(531, NULL, 140, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 23:51:20', '2024-01-15 23:51:20', NULL),
(532, NULL, 141, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 23:51:38', '2024-01-15 23:51:38', NULL),
(533, NULL, 142, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-15 23:54:24', '2024-01-15 23:54:24', NULL),
(534, NULL, 143, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 00:04:33', '2024-01-16 00:04:33', NULL),
(535, NULL, 144, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 00:07:58', '2024-01-16 00:07:58', NULL),
(536, NULL, 145, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 00:14:06', '2024-01-16 00:14:06', NULL),
(537, NULL, 146, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 00:16:06', '2024-01-16 00:16:06', NULL),
(538, NULL, 147, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 00:18:58', '2024-01-16 00:18:58', NULL),
(539, NULL, 148, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 01:01:59', '2024-01-16 01:01:59', NULL),
(540, NULL, 149, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 01:15:02', '2024-01-16 01:15:02', NULL),
(541, NULL, 150, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 01:43:36', '2024-01-16 01:43:36', NULL),
(542, NULL, 151, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 02:49:40', '2024-01-16 02:49:40', NULL),
(543, NULL, 152, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 01:29:00', '2024-01-18 01:29:00', NULL),
(544, NULL, 153, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 01:29:47', '2024-01-18 01:29:47', NULL),
(545, NULL, 154, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 01:37:23', '2024-01-18 01:37:23', NULL),
(547, NULL, 156, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-03 23:47:49', '2024-03-03 23:47:49', NULL),
(549, NULL, 158, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-07 01:29:02', '2024-03-07 01:29:02', NULL),
(551, NULL, 160, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-07 02:42:11', '2024-03-07 02:42:11', NULL),
(552, NULL, 161, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-07 04:41:38', '2024-03-07 04:41:38', NULL),
(553, NULL, 162, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-07 05:21:39', '2024-03-07 05:21:39', NULL),
(554, NULL, 163, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-07 05:45:13', '2024-03-07 05:45:13', NULL),
(555, NULL, 164, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-07 23:43:41', '2024-03-07 23:43:41', NULL),
(556, NULL, 165, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-08 00:38:23', '2024-03-08 00:38:23', NULL),
(557, NULL, 166, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-10 23:45:04', '2024-03-10 23:45:04', NULL),
(558, NULL, 167, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-11 00:46:18', '2024-03-11 00:46:18', NULL),
(559, NULL, 168, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-12 02:42:32', '2024-03-12 02:42:32', NULL),
(560, NULL, 169, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-03-12 02:46:29', '2024-03-12 02:46:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int UNSIGNED NOT NULL,
  `uniq_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_type` int DEFAULT '0',
  `sms_type` int DEFAULT '0',
  `email_type` int DEFAULT '0',
  `notification_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `uniq_id`, `title`, `message`, `image`, `image_type`, `name_of_file_show`, `push_type`, `sms_type`, `email_type`, `notification_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Your Amount has been transaction successfully.', NULL, NULL, NULL, 0, 1, 1, 'Transaction', '2021-10-11 11:04:04', '2022-01-27 00:58:28', NULL),
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
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_file_show_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `application_data_id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniq_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_images`
--

INSERT INTO `application_images` (`id`, `application_data_id`, `image`, `name_of_file_show`, `image_type`, `uniq_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '10252023072831956538c39f60792.jpeg', 'dummy.jpeg', 'Welcome Screen Image', 5, NULL, '2023-10-25 01:58:31', NULL),
(2, 1, '1112202120075456618e7c42476a7.png', '1.png', 'Welcome Screen Image 2', 6, NULL, '2021-11-12 14:37:54', NULL),
(3, 1, '1112202120074848618e7c3ca524e.png', '2.png', 'Welcome Screen Image 3', 7, NULL, '2021-11-12 14:37:48', NULL),
(4, 1, '1112202120094518618e7cb12935e.jpeg', '101-1012593_high-resolution-desktop-wallpapers-hd-wallpapers-hd-high.jpg', 'Welcome Screen Image 4', 8, NULL, '2021-11-12 14:39:45', NULL),
(5, 1, '1112202120033537618e7b3f54665.jpeg', '1112202118292982618e6531b60a7.jpg', 'Offer Image', 3, '2021-11-11 05:35:36', '2021-11-12 14:33:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_badges`
--

CREATE TABLE `assign_badges` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `badge_id` int UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `when_day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_badges`
--

INSERT INTO `assign_badges` (`id`, `user_id`, `badge_id`, `comment`, `status`, `when_day`, `from_date`, `to_date`, `from_time`, `to_time`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`) VALUES
(1, 1, 1, 'xxx', 'Active', 'Friday', '2021-11-12', '2021-11-12', '19:09:00', '20:09:00', '2021-11-12 13:39:27', '2021-11-16 05:28:12', 'Nadeer', 'Nadeer', NULL),
(2, 1, 2, 'wdsds', 'Active', 'Friday', '2021-11-12', '2021-11-12', '19:27:00', '21:27:00', '2021-11-12 13:57:01', '2021-11-16 05:34:03', 'kanhaiya', 'kanhaiya', '2021-11-16 05:34:03'),
(3, 3, 2, 'wedwqd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2021-11-16', '2021-11-16', '11:06:00', '12:06:00', '2021-11-16 05:38:04', '2021-11-16 05:39:13', 'admin2', 'Nadeer', NULL),
(4, 11, 4, 'Thank  you for being loyal to us throughout the years', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 00:19:14', '2022-01-28 01:00:29', 'Nadeer', 'Nadeer', NULL),
(5, 11, 3, 'Thank  you for being loyal to us throughout the years', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2022-12-31', '00:00:00', '12:59:00', '2022-01-28 00:29:42', '2022-01-28 00:29:42', 'Nadeer', 'Nadeer', NULL),
(6, 9, 4, 'Thank  you for being loyal to us throughout the years', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 00:47:09', '2022-01-28 00:51:14', 'Nadeer', 'Nadeer', '2022-01-28 00:51:14'),
(7, 11, 1, '239142160862391421608623914216086', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 01:03:24', '2022-01-28 01:12:00', 'Nadeer', 'Nadeer', NULL),
(8, 11, 2, 'TESTESTESTESTESETSRSETS', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 01:19:38', '2022-01-28 01:19:38', 'Nadeer', 'Nadeer', NULL),
(9, 14, 2, 'sadsadad', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-28', '10:21:00', '10:30:00', '2023-10-23 05:42:39', '2023-10-23 23:22:28', 'Nadeer', 'Nadeer', NULL),
(10, 14, 3, 'this is bade 3', 'Active', 'Monday,Sunday,Tuesday', '2023-10-23', '2027-10-14', '00:01:00', '22:50:00', '2023-10-23 05:52:56', '2023-10-23 05:52:56', 'Nadeer', 'Nadeer', NULL),
(11, 16, 2, 'Badge asssinge ho gya', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday', '2023-10-23', '2023-10-31', '00:49:00', '23:49:00', '2023-10-23 06:50:01', '2023-10-23 06:50:01', 'Nadeer', 'Nadeer', NULL),
(12, 16, 3, 'firse assign kra', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-23', '2023-10-31', '00:51:00', '23:51:00', '2023-10-23 06:51:21', '2023-10-23 06:51:21', 'Nadeer', 'Nadeer', NULL),
(13, 14, 4, 'sadsadad', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-28', '10:21:00', '10:30:00', '2023-10-23 23:23:01', '2023-10-23 23:23:01', 'Nadeer', 'Nadeer', NULL),
(14, 23, 2, 'dsfafdsjfhajsfhjdsahfasdhf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-24', '2023-11-07', '00:23:00', '23:57:00', '2023-10-24 01:23:45', '2023-10-24 01:23:45', 'Nadeer', 'Nadeer', NULL),
(15, 34, 4, 'fsdfdsfgdfgdgd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-27', '12:45:00', '12:55:00', '2023-10-25 01:45:59', '2023-10-25 01:45:59', 'Nadeer', 'Nadeer', NULL),
(16, 34, 2, 'fsdfdsfgdfgdgd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-27', '12:45:00', '12:55:00', '2023-10-25 01:46:36', '2023-10-25 01:46:36', 'Nadeer', 'Nadeer', NULL),
(17, 34, 3, 'cxxcxgxcgfg', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday', '2023-10-25', '2023-10-28', '13:51:00', '13:56:00', '2023-10-25 02:51:50', '2023-10-25 02:51:50', 'Nadeer', 'Nadeer', NULL),
(18, 39, 3, 'SAFAAFA', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday', '2023-10-25', '2023-10-28', '17:10:00', '17:15:00', '2023-10-25 06:10:29', '2023-10-25 06:10:29', 'Nadeer', 'Nadeer', NULL),
(19, 45, 4, 'bhvghhh', 'Active', 'Monday,Tuesday', '2023-10-26', '2023-10-28', '17:19:00', '17:37:00', '2023-10-26 06:19:15', '2023-10-26 06:19:15', 'Nadeer', 'Nadeer', NULL),
(20, 45, 3, 'bhvghhh', 'Active', 'Monday,Tuesday', '2023-10-26', '2023-10-28', '17:19:00', '17:37:00', '2023-10-26 06:20:05', '2023-10-26 06:20:05', 'Nadeer', 'Nadeer', NULL),
(21, 46, 2, 'bhvghhhsfjahsdjfhsjahfjsdhjfahsjdfsdafsdafsadf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-31', '00:19:00', '23:25:00', '2023-10-26 06:32:50', '2023-10-26 06:32:50', 'Nadeer', 'Nadeer', NULL),
(22, 44, 2, 'bhvghhhsfjahsdjfhsjahfjsdhjfahsjdfsdafsdafsadf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-30', '00:19:00', '23:25:00', '2023-10-26 06:33:52', '2023-10-26 06:33:52', 'Nadeer', 'Nadeer', NULL),
(23, 44, 3, 'bhvghhhsfjahsdjfhsjahfjsdhjfahsjdfsdaffdgfdsgsdfgfdsgdfsgdfgdfsgfdgdfgsdafsadf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Saturday', '2023-10-26', '2023-10-30', '00:19:00', '23:25:00', '2023-10-26 06:34:08', '2023-10-26 06:34:08', 'Nadeer', 'Nadeer', NULL),
(24, 46, 4, 'xzfsdfssdf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:06:00', '18:15:00', '2023-10-26 07:06:58', '2023-10-26 07:06:58', 'Nadeer', 'Nadeer', NULL),
(25, 46, 3, 'xzfsdfssdf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:06:00', '18:15:00', '2023-10-26 07:07:11', '2023-10-26 07:07:11', 'Nadeer', 'Nadeer', NULL),
(26, 40, 4, 'saddsadsa', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-28', '18:27:00', '18:30:00', '2023-10-26 07:27:33', '2023-10-26 07:27:33', 'Nadeer', 'Nadeer', NULL),
(27, 40, 3, 'saddsadsa', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:27:00', '18:30:00', '2023-10-26 07:27:40', '2023-10-26 07:27:40', 'Nadeer', 'Nadeer', NULL),
(28, 40, 2, 'saddsadsa', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:27:00', '18:30:00', '2023-10-26 07:27:44', '2023-10-26 07:27:44', 'Nadeer', 'Nadeer', NULL),
(29, 48, 2, 'khklhhkjhkhljhjkhjkhkhk', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday', '2023-10-26', '2023-10-31', '00:47:00', '23:47:00', '2023-10-26 07:47:40', '2023-10-26 07:47:40', 'Nadeer', 'Nadeer', NULL),
(30, 48, 3, 'khklhhkjhkhljhjkhjkhkhk', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Sunday', '2023-10-26', '2023-10-31', '00:47:00', '23:47:00', '2023-10-26 07:47:59', '2023-10-26 07:47:59', 'Nadeer', 'Nadeer', NULL),
(31, 48, 4, 'khklhhkjhkhljhjkhjkhkhk', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Sunday', '2023-10-26', '2023-10-31', '00:47:00', '23:47:00', '2023-10-26 07:48:29', '2023-10-26 07:48:29', 'Nadeer', 'Nadeer', NULL),
(32, 53, 4, 'sadsadsada', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '11:02:00', '11:05:00', '2023-10-27 00:03:01', '2023-10-27 00:03:01', 'Nadeer', 'Nadeer', NULL),
(33, 53, 3, 'sadsadsada', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '11:02:00', '11:05:00', '2023-10-27 00:03:08', '2023-10-27 00:03:08', 'Nadeer', 'Nadeer', NULL),
(34, 53, 2, 'sadsadsada', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '11:02:00', '11:05:00', '2023-10-27 00:03:13', '2023-10-27 00:03:13', 'Nadeer', 'Nadeer', NULL),
(35, 54, 4, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:41:27', '2023-10-27 01:41:27', 'Nadeer', 'Nadeer', NULL),
(36, 54, 3, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:41:45', '2023-10-27 01:41:45', 'Nadeer', 'Nadeer', NULL),
(37, 54, 2, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:41:58', '2023-10-27 01:41:58', 'Nadeer', 'Nadeer', NULL),
(38, 55, 3, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Monday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:48:13', '2023-10-27 01:48:13', 'Nadeer', 'Nadeer', NULL),
(39, 55, 2, 'jerhjklhkftwertwert', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:48:32', '2023-10-27 01:48:32', 'Nadeer', 'Nadeer', NULL),
(40, 55, 4, 'jerhjklhkftwertwert', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:48:42', '2023-10-27 01:48:42', 'Nadeer', 'Nadeer', NULL),
(41, 56, 4, 'wwaewee', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '14:01:00', '14:05:00', '2023-10-27 03:01:59', '2023-10-27 03:01:59', 'Nadeer', 'Nadeer', NULL),
(42, 56, 3, 'wwaewee', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '14:01:00', '14:05:00', '2023-10-27 03:03:35', '2023-10-27 03:03:35', 'Nadeer', 'Nadeer', NULL),
(43, 56, 2, 'wwaewee', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '14:01:00', '14:05:00', '2023-10-27 03:06:07', '2023-10-27 03:06:07', 'Nadeer', 'Nadeer', NULL),
(44, 61, 5, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Saturday,Friday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:28:13', '2023-10-27 03:28:13', 'Nadeer', 'Nadeer', NULL),
(45, 62, 5, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:30:50', '2023-10-27 03:30:50', 'Nadeer', 'Nadeer', NULL),
(46, 62, 3, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:31:14', '2023-10-27 03:31:14', 'Nadeer', 'Nadeer', NULL),
(47, 62, 2, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:31:23', '2023-10-27 03:31:23', 'Nadeer', 'Nadeer', NULL),
(48, 61, 2, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:31:38', '2023-10-27 03:31:38', 'Nadeer', 'Nadeer', NULL),
(49, 63, 5, 'agdfvsdfgdfgds', 'Active', 'Tuesday,Sunday,Monday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-29', '14:40:00', '21:00:00', '2023-10-27 03:40:38', '2023-10-27 03:40:38', 'Nadeer', 'Nadeer', NULL),
(50, 63, 4, 'agdfvsdfgdfgds', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-29', '14:40:00', '21:00:00', '2023-10-27 03:40:48', '2023-10-27 03:40:48', 'Nadeer', 'Nadeer', NULL),
(51, 63, 2, 'agdfvsdfgdfgds', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-29', '14:40:00', '21:00:00', '2023-10-27 03:41:00', '2023-10-27 03:41:00', 'Nadeer', 'Nadeer', NULL),
(52, 64, 4, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:17:49', '2023-10-27 07:17:49', 'Nadeer', 'Nadeer', NULL),
(53, 64, 3, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:20:12', '2023-10-27 07:20:12', 'Nadeer', 'Nadeer', NULL),
(54, 64, 2, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:20:21', '2023-10-27 07:20:21', 'Nadeer', 'Nadeer', NULL),
(55, 64, 5, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:20:41', '2023-10-27 07:20:41', 'Nadeer', 'Nadeer', NULL),
(56, 66, 5, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:12', '2023-10-27 07:33:12', 'Nadeer', 'Nadeer', NULL),
(57, 66, 4, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:18', '2023-10-27 07:33:18', 'Nadeer', 'Nadeer', NULL),
(58, 66, 3, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:25', '2023-10-27 07:33:25', 'Nadeer', 'Nadeer', NULL),
(59, 66, 2, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:45', '2023-10-27 07:33:45', 'Nadeer', 'Nadeer', NULL),
(60, 67, 5, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:46:50', '2023-10-27 07:46:50', 'Nadeer', 'Nadeer', NULL),
(61, 67, 3, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:47:01', '2023-10-27 07:47:01', 'Nadeer', 'Nadeer', NULL),
(62, 67, 2, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:47:07', '2023-10-27 07:47:07', 'Nadeer', 'Nadeer', NULL),
(63, 67, 4, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:47:17', '2023-10-27 07:47:17', 'Nadeer', 'Nadeer', NULL),
(64, 69, 6, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:37:45', '2023-10-27 08:37:45', 'Nadeer', 'Nadeer', NULL),
(65, 69, 4, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:37:55', '2023-10-27 08:37:55', 'Nadeer', 'Nadeer', NULL),
(66, 69, 3, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:01', '2023-10-27 08:38:01', 'Nadeer', 'Nadeer', NULL),
(67, 70, 4, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:32', '2023-10-27 08:38:32', 'Nadeer', 'Nadeer', NULL),
(68, 70, 3, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:37', '2023-10-27 08:38:37', 'Nadeer', 'Nadeer', NULL),
(69, 70, 2, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:42', '2023-10-27 08:38:42', 'Nadeer', 'Nadeer', NULL),
(70, 40, 6, 'saddadd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-30', '2023-10-31', '11:23:00', '11:25:00', '2023-10-30 00:23:58', '2023-10-30 00:23:58', 'Nadeer', 'Nadeer', NULL),
(71, 40, 5, 'saddadd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-30', '2023-10-31', '11:23:00', '11:25:00', '2023-10-30 00:24:23', '2023-10-30 00:24:23', 'Nadeer', 'Nadeer', NULL),
(72, 89, 3, 'lele', 'Active', 'Monday,Tuesday,Sunday,Wednesday,Thursday,Friday,Saturday', '2024-01-01', '2024-10-15', '00:00:00', '23:59:00', '2024-01-04 02:42:15', '2024-01-04 02:42:15', 'Nadeer', 'Nadeer', NULL),
(73, 89, 2, 'lele', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-01', '2024-10-15', '00:00:00', '23:59:00', '2024-01-04 02:42:27', '2024-01-04 02:42:27', 'Nadeer', 'Nadeer', NULL),
(74, 89, 4, 'lele', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-01', '2024-10-15', '00:00:00', '23:59:00', '2024-01-04 02:42:35', '2024-01-04 02:42:35', 'Nadeer', 'Nadeer', NULL),
(75, 90, 7, 'You have earned.', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-15', '2024-02-15', '09:43:00', '12:00:00', '2024-01-15 00:45:01', '2024-01-15 00:45:01', 'Nadeer', 'Nadeer', NULL),
(76, 90, 6, 'You have earned.', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-15', '2024-02-15', '09:43:00', '12:00:00', '2024-01-15 00:46:07', '2024-01-15 00:46:07', 'Nadeer', 'Nadeer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_user_venues`
--

CREATE TABLE `assign_user_venues` (
  `id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `venue_user_id` int UNSIGNED NOT NULL,
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
(9, 2, 4, '2021-11-16 09:15:03', '2021-11-16 09:15:03', NULL),
(14, 2, 5, '2023-11-02 05:54:05', '2023-11-02 05:54:05', NULL),
(15, 1, 5, '2023-11-02 05:54:06', '2023-11-02 05:54:06', NULL),
(16, 5, 5, '2023-11-02 05:54:06', '2023-11-02 05:54:06', NULL),
(17, 7, 5, '2023-11-02 05:54:06', '2023-11-02 05:54:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `badge_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `admin_id`, `badge_name`, `image`, `name_of_file_show`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'badge1', '1112202119084992618e6e6930fb4.png', 'Screenshot_13.png', 'Inactive', 'Nadeer', 'Nadeer', '2021-11-12 13:38:49', '2021-11-16 05:28:21', NULL),
(2, 4, 'badge2', '1024202306525796653769c930c54.jpeg', 'photo-1575936123452-b67c3203c357.jpg', 'Active', 'kanhaiya', 'Nadeer', '2021-11-12 13:56:26', '2023-10-24 01:22:57', NULL),
(3, 1, 'badge3', '1026202312380761653a5daf8ffd6.jpeg', 'Screenshot_20231018_153237.jpg', 'Active', 'Nadeer', 'Nadeer', '2022-01-20 01:06:55', '2023-10-26 07:08:07', NULL),
(4, 1, 'Old Customer', '10252023071720416538c100f3393.png', 'fabe06b316f0ed01b50c53d9ce843979.png', 'Active', 'Nadeer', 'Nadeer', '2022-01-28 00:15:10', '2023-10-25 01:47:21', NULL),
(5, 1, 'Check 1', '1027202308545863653b7ae2c778b.png', 'Mornig Shift.png', 'Active', 'Nadeer', 'Nadeer', '2023-10-27 03:24:58', '2023-10-27 03:24:58', NULL),
(6, 1, 'Hello world', '1027202313155433653bb80a52df4.jpeg', 'download.jpg', 'Active', 'Nadeer', 'Nadeer', '2023-10-27 07:45:54', '2023-10-27 07:45:54', NULL),
(7, 1, 'Gold', '011520240604323065a4caf05b079.png', '144.png', 'Active', 'Nadeer', 'Nadeer', '2024-01-15 00:34:32', '2024-01-15 00:34:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cashbacks`
--

CREATE TABLE `cashbacks` (
  `id` int UNSIGNED NOT NULL,
  `unique_id_cashback` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `promotion_cashback_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_on` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `cashback_percentage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cashbacks`
--

INSERT INTO `cashbacks` (`id`, `unique_id_cashback`, `admin_id`, `venu_id`, `promotion_cashback_name`, `image`, `day_on`, `from_date`, `to_date`, `from_time`, `to_time`, `cashback_percentage`, `status`, `name_of_file_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 4, 1, 'Promo', '102720230705421653b6146a5685.png', 'Sunday,Saturday,Friday,Thursday,Wednesday,Tuesday,Monday', '2023-10-27', '2023-10-28', '20:12:00', '21:12:00', 'Cash', 'Inactive', 'Screenshot_20231025-142826.png', '2021-11-12 14:42:27', '2023-10-27 01:35:42', NULL),
(2, '2', 1, 1, 'Sponser', '01202022050632161e8edd858a0a.png', 'Saturday,Sunday', '2022-01-20', '2022-03-31', '18:00:00', '21:00:00', 'Cash', 'Active', 'app-icon.png', '2022-01-19 23:36:32', '2022-01-20 00:00:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `city_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone_number`, `user_id`, `created_at`, `updated_at`) VALUES
(1626, '+91 62303 62499', '+916230362499', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1627, '+92 333 3333333', '+923333333333', 156, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1628, '1231 231 231', '+911231231231', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1629, 'AL * dial', '+91*321#', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1630, 'AL cricket', '+91543212601', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1631, 'AL entertainment', '+91543212', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1632, 'AL friendz chat', '+91543216', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1633, 'AL hello tunes', '+91543211', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1634, 'AL on demand', '+91543213', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1635, 'Abhishek Srivastva', '+917004355106', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1636, 'Akshay Kumar', '+919988674581', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1637, 'Amit', '+919780047270', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1638, 'Anshul', '+917404395150', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1639, 'Anthony', '+9161428323111', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1640, 'Ben-mobile Pph', '+447747488289', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1641, 'Brijesh Mobile Rishi', '+919925035568', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1642, 'Buzz 33123', '+919639639631', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1643, 'Buzz1', '+1963-963-9632', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1644, 'Buzz1', '+19639639632', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1645, 'Buzz3', '+919639639633', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1646, 'Buzz4', '+919999999999', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1647, 'Buzz5', '+19999999998', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1648, 'Davenport/Upwork-Agency/Mobile', '+1619-715-385', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1649, 'Davenport/Upwork-Agency/Mobile', '+1619715385', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1650, 'Davenport/Upwork-Agency/Mobile', '+918950409699', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1651, 'Davenport/Upwork-Agency/Mobile', '+919855398880', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1652, 'Dbrjdujss', '+91543867464', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1653, 'Deb 2', '+917787983452', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1654, 'Distress Number', '+91112', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1655, 'Double', '+91445544554455', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1656, 'Dummy 1', '+911234567890', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1657, 'Eight', '+918888888888', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1658, 'Five', '+915555555555', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1659, 'Four', '+914444444444', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1660, 'Gagan Rana', '+917508713175', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1661, 'Gaganjot Content Mom', '+919914112427', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1662, 'Gusgusug', '+918580744866', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1663, 'Hitesh 1', '+1868-909-0698', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1664, 'Hitesh Chhimpa', '+918689090698', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1665, 'Hweuusjhs', '+914673348844', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1666, 'IT', '+919805494625', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1667, 'K', '+918264995858', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1668, 'Kevin', '+918449573022', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1669, 'Meredith - PPH', '+1720-202-1645', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1670, 'Meredith - PPH', '+17202021645', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1671, 'Mohit Khaira', '+918837889399', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1672, 'Neha Bd', '+919815118204', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1673, 'One', '+911111111111', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1674, 'Prateek', '+919878175643', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1675, 'Preet Ranjan Php', '+919872853737', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1676, 'Provider', '+911123123129', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1677, 'Raka', '+1222-222-2222', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1678, 'Raka', '+12222222222', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1679, 'Raka', '+91222222223', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1680, 'Ram', '+91123123123', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1681, 'Ramo Ok', '+9170604242884', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1682, 'Ravinder Singh Personal', '+919888611678', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1683, 'Shalini qa', '+917018529673', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1684, 'Shhsjxjzbz', '+9176643166787', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1685, 'Shivang/Prithwi/Upwork_loveleen/mobile', '+918989452663', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1686, 'Shivang/prithwi/mobile', '+919399296282', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1687, 'Shshhshs', '+91497976766778', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1688, 'Shubham', '+919805199045', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1689, 'Sujan', '+1215-407-4447', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1690, 'Sujan', '+12154074447', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1691, 'Teen', '+913333333333', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1692, 'Test', '+1833-951-0149', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1693, 'Test', '+919780047270', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1694, 'Test', '+918708869252', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1695, 'Test 1', '+919632147852', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1696, 'Test 2', '+919632147851', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1697, 'Test 3', '+919632147853', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1698, 'Test Provider', '+154204506888', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1699, 'Three', '+91923333333333', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1700, 'Two', '+912222222222', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1701, 'Two', '+91922222222222', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1702, 'UIDAI', '+911800-300-1947', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1703, 'User1', '+91123456788', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1704, 'Vaishalli Qa Relative', '+919780904962', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1705, 'Whhehsbbshs', '+9179763155442', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1706, 'Whhwhsjsh', '+917867615857', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1707, 'airtel live (AL)', '+9154321', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1708, 'ambulance', '+91102', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1709, 'customer care', '+91121', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1710, 'doctor on call', '+9154445', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1711, 'emergency alert', '+918527355100', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1712, 'emergency hotline', '+9155100', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1713, 'facebook', '+91*325#', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1714, 'fire', '+91101', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1715, 'instant help 24x7', '+91*121#', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1716, 'my offer', '+9112131', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1717, 'police', '+91100', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1718, 'railway inquiry', '+91139', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1719, 'twitter', '+91*515#', 165, '2024-03-12 07:21:10', '2024-03-12 07:21:10'),
(1909, 'gaurav', '+919012770255', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1910, 'harry', '+919012770255', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1911, 'ram', '+917896321456', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1912, 'daljit', '4536781425', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1913, 'monu', '1245786932', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1914, 'sonu', '1245367896', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1915, 'ronu', '7485961020', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1916, 'gaurav', '+911245789623', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(1917, 'garry', '7896321456', 156, '2024-03-12 07:47:37', '2024-03-12 07:47:37'),
(2290, '+92 333 3333333', '+923333333333', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2291, 'Abhishek', '+917004355106', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2292, 'Akshay Kumar', '+919988674581', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2293, 'Anshul', '+917404395150', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2294, 'Buzz 1', '+919639639632', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2295, 'Dbrjdujss', '+91543867464', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2296, 'Deb', '+917787983450', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2297, 'Deb 1', '+917787983451', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2298, 'Gagan Rana', '+917508713175', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2299, 'Hweuusjhs', '+914673348844', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2300, 'Iphon8', '+916474771928', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2301, 'Iphonx User', '+916478120396', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2302, 'Kumar', '+912894690233', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2303, 'Prateek', '+919878175643', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2304, 'Ramgopal', '+1484-897-0346', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2305, 'Ramgopal', '+91666665555555', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2306, 'Ramo Ok', '+9170604242884', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2307, 'Realme User', '+916474771927', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2308, 'Shhsjxjzbz', '+9176643166787', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2309, 'Shshhshs', '+91497976766778', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2310, 'Shubham', '+919805199045', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2311, 'Test', '+1833-951-0149', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2312, 'Test', '+911234567890', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2313, 'Test', '+918708869252', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2314, 'Tester', '+91596836289586', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2315, 'Three', '+91923333333333', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2316, 'Two', '+91922222222222', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2317, 'Whhehsbbshs', '+9179763155442', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2318, 'Whhwhsjsh', '+917867615857', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2319, 'vivo Customer Care', '+9118001023388', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2320, 'vivo Customer Care', '+9118002083388', 169, '2024-03-12 08:16:53', '2024-03-12 08:16:53'),
(2848, '+92 333 3333333', '+923333333333', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2849, 'Abhishek', '+917004355106', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2850, 'Akshay Kumar', '+919988674581', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2851, 'Anshul', '+917404395150', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2852, 'Buzz 1', '+919639639631', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2853, 'Dbrjdujss', '+91543867464', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2854, 'Deb', '+917787983450', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2855, 'Deb 1', '+917787983451', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2856, 'Gagan Rana', '+917508713175', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2857, 'Hweuusjhs', '+914673348844', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2858, 'Iphon8', '+916474771928', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2859, 'Iphonx User', '+916478120396', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2860, 'Kumar', '+912894690233', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2861, 'Prateek', '+919878175643', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2862, 'Ramgopal', '+1484-897-0346', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2863, 'Ramgopal', '+91666665555555', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2864, 'Ramo Ok', '+9170604242884', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2865, 'Realme User', '+916474771927', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2866, 'Shhsjxjzbz', '+9176643166787', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2867, 'Shshhshs', '+91497976766778', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2868, 'Shubham', '+919805199045', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2869, 'Test', '+1833-951-0149', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2870, 'Test', '+911234567890', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2871, 'Test', '+918708869252', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2872, 'Tester', '+91596836289586', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2873, 'Three', '+91923333333333', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2874, 'Two', '+91922222222222', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2875, 'Whhehsbbshs', '+9179763155442', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2876, 'Whhwhsjsh', '+917867615857', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2877, 'vivo Customer Care', '+9118001023388', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14'),
(2878, 'vivo Customer Care', '+9118002083388', 40, '2024-03-12 12:40:14', '2024-03-12 12:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `sortname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '966',
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
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
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `unique_id` int NOT NULL,
  `event_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `when_day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `event_time` time NOT NULL,
  `to_time` time NOT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `admin_id`, `venu_id`, `unique_id`, `event_name`, `event_description`, `when_day`, `from_date`, `to_date`, `event_time`, `to_time`, `status`, `image`, `name_of_file_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Eghdfkgsdfhgkhskdhfghlsdkfghks', 'testfgsdfgsdfghsdfgsdfkjghjkfglsdjkfhglsjkdfglsdfgjkhsdlfkghksdhfgkdsfghsdkfjghkdshflgjshdfgkhsdkjfghksdlfkgskdhfgkldsfgksdfgsdfgsdfgsdfgtestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkahtestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkahtestingsdfsadfk', 'Monday,Tuesday,Wednesday,Thursday,Friday', '2021-11-12', '2021-11-16', '18:58:00', '19:58:00', 'Active', '1027202307214389653b65071defc.jpeg', 'IMG_20230922_173045.jpg', '2021-11-12 13:28:34', '2023-10-27 01:51:43', NULL),
(2, 4, 2, 2, 'Event2', 'cxxcxc', 'Tuesday,Friday', '2023-10-24', '2023-11-09', '00:00:00', '23:58:00', 'Active', '1024202306400660653766c61b047.png', 'Screenshot 2023-09-19 at 3.56.35 PM.png', '2021-11-12 14:01:29', '2023-10-24 01:10:06', NULL),
(3, 1, 2, 3, 'Vanue?', 'dwqd', 'Monday,Tuesday,Friday,Saturday', '2021-11-16', '2021-11-17', '09:39:00', '11:39:00', 'Active', '012020220713451761e90ba992efb.jpeg', 'file_example_JPG_1MB.jpg', '2021-11-16 06:09:09', '2022-01-20 01:45:59', '2022-01-20 01:45:59'),
(4, 1, 5, 4, 'New Event', 'sajhfsdjkfhsdahfsd fsdhfjksahfjdhs fsdfhsdjfhsdaj fasdhfsjkdafshadf sdlfhsdjfhjsdhf sldfhsdjfhasjhf', 'Monday,Tuesday,Wednesday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-31', '11:00:00', '12:41:00', 'Active', '1024202310113172653798532e894.jpeg', 'photo-1575936123452-b67c3203c357.jpg', '2023-10-24 04:41:31', '2023-10-24 04:41:31', NULL),
(5, 1, 2, 5, 'sdfsdfsdfsd', 'dsfsdfsdfsdfsdaufysduyfsudyfsdhfjsdhfjshdjfhsdjhfjsdhfjcshdjhcjsdfhjsdhfjsdhfjhsdajfasdfsdafsdafsafdsafsdafdfsdfsdfsdfsdfasdfsdafdsafsdfsadfdsafsdafasdfsadfasdf djkdfsjfs sdkfjsdkjfs sdfjsdkjfasd fsdakfksdjfsd dfasdkfjads fsdafsdkfhsda fsdahfsdauyrewhr wefsdufysdf sdfysudyfsda fsadyfusdyfsd fsdfuysdf sdyfusdyfsd fsdufysduyf', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-31', '00:00:00', '12:01:00', 'Active', '10242023133155446537c74bd5d43.jpeg', 'Screenshot_20231023-181832.jpg', '2023-10-24 08:01:55', '2023-10-25 02:12:33', NULL),
(6, 1, 1, 6, 'sjdkfghhsdfkjghsjkldfgkshdfkgh', 'dfgsrqtuioweytwuerytuiowyruitywuieyrtuiwyeruityiwurtuywirutiwuyretuiywoiurytiuwyerutyowryutuiwyrtuiywiuerytuiywrituoywiuertoiuwyertiuowierutwuirytiuiurytestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkahtestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkah', 'Monday,Tuesday,Wednesday,Thursday,Friday', '2023-10-27', '2023-10-28', '00:53:00', '12:53:00', 'Active', '1027202307242243653b65a6e568f.jpeg', 'Screenshot_2023-10-11-20-56-10-71_98f850531ff2733880e9df432f3b2992.jpg', '2023-10-27 01:54:22', '2023-10-27 01:54:22', NULL),
(7, 1, 9, 7, 'Proper', 'Hello world', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:57:00', '18:57:00', 'Active', '1027202313283930653bbb0700391.jpeg', 'download.jpg', '2023-10-27 07:58:39', '2023-10-27 07:58:39', NULL),
(8, 1, 9, 8, 'Nihal', 'Check your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information includes your IP address and test results, but doesn’t include any other information about you as an Internet user.', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:59:00', '18:59:00', 'Active', '1027202313300830653bbb603192d.jpeg', 'download.jpg', '2023-10-27 08:00:08', '2023-10-27 08:00:08', NULL),
(9, 1, 9, 9, 'vikram', 'Check your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information includes your IP address and test results, but doesn’t include any other information about you as an Internet user.', 'Monday,Tuesday,Wednesday,Thursday,Saturday,Sunday', '2023-10-27', '2023-10-28', '07:04:00', '19:04:00', 'Active', '1027202313350949653bbc8dd65d5.jpeg', 'download.jpg', '2023-10-27 08:05:09', '2023-10-27 08:05:09', NULL),
(10, 1, 5, 10, 'Golu', 'Check your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information includes your IP address aCheck your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information ind test results, but doesn’t include any other information about you as an Internet user.', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-09', '2024-02-03', '00:01:00', '23:59:00', 'Active', '1027202313383826653bbd5e21db0.jpeg', 'hd-Clouds-Meet-The-Sea-AI-Generated-4K-Wallpaper.jpg', '2023-10-27 08:08:38', '2024-01-09 00:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_sent_notifications`
--

CREATE TABLE `event_sent_notifications` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `event_id` int UNSIGNED NOT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int UNSIGNED NOT NULL,
  `uniq_id` int NOT NULL DEFAULT '0',
  `setting_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `setting_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_enabled_disbaled` enum('Enabled','Disabled','None') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(6, 11, '<p>This Privacy Policy will inform you about the types of personal data we collect, the purposes for which we use the data, the ways in which the data is handled and your rights with regard to your personal data. Furthermore, this Privacy Policy is intended to satisfy the obligation of transparency under the EU General Data Protection Regulation 2016/679 (&quot;GDPR&quot;) and the laws implementing GDPR.</p>', 'About our loyalty program', NULL, NULL, '2021-11-11 11:09:54', '2024-01-18 01:22:52'),
(7, 12, '<p>The accuracy of the generated document on this website is not legally binding. Use at your own risk.</p>', 'faq\'s', NULL, NULL, '2021-11-11 11:10:12', '2024-01-18 01:23:06'),
(8, 13, '<p>Help protect your website and its users with clear and fair website terms and conditions. These terms and conditions for a website set out key issues such as acceptable use, privacy, cookies, registration and passwords, intellectual property, links to other sites, termination and disclaimers of responsibility. Terms and conditions are used and necessary to protect a website owner from liability of a user relying on the information or the goods provided from the site then suffering a loss.</p>\n\n<p>Making your own terms and conditions for your website is hard, not impossible, to do. It can take a few hours to few days for a person with no legal background to make. But worry no more; we are here to help you out.</p>\n\n<p>All you need to do is fill up the blank spaces and then you will receive an email with your personalized terms and conditions.</p>\n\n<p><strong>Looking for a Privacy Policy?</strong>&nbsp;Check out&nbsp;<a href=\"https://www.privacypolicygenerator.info/\">Privacy Policy Generator</a>.</p>\n\n<p>The accuracy of the generated document on this website is not legally binding. Use at your own risk.</p>\n\n<p>&nbsp;</p>\n\n<p>The accuracy of the generated document on this website is not legally binding. Use at your own risk.</p>\n\n<p>&nbsp;</p>\n\n<p>The accuracy of the generated document on this website is not legally binding. Use at your own risk.</p>', 'Terms & conditions', NULL, NULL, '2021-11-11 11:10:26', '2023-10-25 01:55:51'),
(9, 14, '<p><strong>Privacy Policy</strong></p>\n\n<p>We at Wasai LLC respect the privacy of your personal information and, as such, make every effort to ensure your information is protected and remains private. As the owner and operator of loremipsum.io (the &quot;Website&quot;) hereafter referred to in this Privacy Policy as &quot;Lorem Ipsum&quot;, &quot;us&quot;, &quot;our&quot; or &quot;we&quot;, we have provided this Privacy Policy to explain how we collect, use, share and protect information about the users of our Website (hereafter referred to as &ldquo;user&rdquo;, &ldquo;you&rdquo; or &quot;your&quot;). For the purposes of this Agreement, any use of the terms &quot;Lorem Ipsum&quot;, &quot;us&quot;, &quot;our&quot; or &quot;we&quot; includes Wasai LLC, without limitation. We will not use or share your personal information with anyone except as described in this Privacy Policy.</p>\n\n<p>This Privacy Policy will inform you about the types of personal data we collect, the purposes for which we use the data, the ways in which the data is handled and your rights with regard to your personal data. Furthermore, this Privacy Policy is intended to satisfy the obligation of transparency under the EU General Data Protection Regulation 2016/679 (&quot;GDPR&quot;) and the laws implementing GDPR.</p>\n\n<p>For the purpose of this Privacy Policy the Data Controller of personal data is Wasai LLC and our contact details are set out in the Contact section at the end of this Privacy Policy. Data Controller means the natural or legal person who (either alone or jointly or in common with other persons) determines the purposes for which and the manner in which any personal information are, or are to be, processed.</p>', 'Privacy policy', NULL, NULL, '2021-11-11 11:10:28', '2024-01-18 01:22:32'),
(10, 15, '10', 'Unique venue invoice no', NULL, NULL, '2021-11-11 11:10:48', '2021-11-15 07:52:59'),
(11, 16, '1000', 'Venue timeout', NULL, NULL, '2021-11-11 11:10:53', '2021-11-15 07:37:15'),
(12, 17, '333', 'Sms otp validity', 'Enabled', NULL, '2021-11-11 11:11:11', '2021-11-15 04:12:06'),
(13, 17, '333', 'Sms otp validity', 'Enabled', NULL, '2021-11-11 11:11:11', '2021-11-15 04:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `name`, `status`, `image`) VALUES
(1, 'Baseball', NULL, NULL),
(2, 'Cricket', NULL, NULL),
(3, 'Polo', NULL, NULL),
(4, 'Kabaddi', NULL, NULL),
(5, 'Netball', NULL, NULL),
(6, 'Softball', NULL, NULL),
(7, 'Field Hockey', NULL, NULL),
(8, 'Rugby Union', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_poses`
--

CREATE TABLE `login_poses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `venue_user_id` int UNSIGNED DEFAULT NULL,
  `venu_id` int UNSIGNED DEFAULT NULL,
  `device_model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `mac_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `authorized_status` enum('Unauthorized','Authorized') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unauthorized',
  `date_time` datetime DEFAULT NULL,
  `device_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_requests`
--

INSERT INTO `login_requests` (`id`, `venue_user_id`, `venu_id`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `device_type`, `device_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2021-11-12 18:54:05', NULL, NULL, '2021-11-12 13:24:05', '2022-01-19 06:00:54', NULL),
(2, 2, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2021-11-12 19:49:24', 'Ipad', '12335556', '2021-11-12 14:19:24', '2022-01-19 06:00:54', NULL),
(3, 3, 1, 'iPad', 'BA69C2E5-C1A0-46B7-9931-B23E97CFE6FE', 'Authorized', '2021-11-15 10:34:40', 'Ipad', '12335556', '2021-11-15 05:04:40', '2022-01-19 06:00:54', NULL),
(4, 4, 2, 'iPad', '9041C367-37FF-405C-8314-CB59BCCCE8B1', 'Authorized', '2021-11-16 11:56:11', 'Ipad', 'sdnjbsdjjfjjfsh', '2021-11-16 06:26:11', '2022-01-19 06:00:54', NULL),
(5, 5, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2022-01-25 18:27:55', 'Ipad', '????', '2022-01-25 12:57:55', '2022-01-25 12:59:06', NULL),
(6, 5, 1, 'iPad 2022', 'mohali', 'Authorized', '2022-01-27 11:08:25', 'Ipad', 'noToken', '2022-01-27 05:38:25', '2022-01-27 05:39:11', NULL),
(7, 2, 1, 'iPad 2022', 'mohali', 'Authorized', '2022-01-27 16:07:33', NULL, NULL, '2022-01-27 10:37:33', '2022-01-27 07:12:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `from_user_id` int DEFAULT NULL,
  `to_user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES
(2, 'hi gaurav, i\'m harry latest', 156, 2, '2024-01-28 13:02:20', '2024-01-28 13:02:20'),
(3, 'hi harry, how are you?', 1, 156, '2024-01-28 13:04:49', '2024-01-28 13:04:49'),
(4, 'im good,what about you gaurav', 156, 1, '2024-01-28 13:05:41', '2024-01-28 13:05:41'),
(5, 'im good bro latest', 4, 156, '2024-01-28 13:07:04', '2024-01-28 13:07:04'),
(8, 'hi rahul how are you ?', 1, 156, '2024-01-29 04:49:23', '2024-01-29 04:49:23'),
(9, 'i\'m good', 156, 1, '2024-01-29 04:49:48', '2024-01-29 04:49:48'),
(10, 'i\'m good bro.', 156, 1, '2024-01-29 05:37:43', '2024-01-29 05:37:43'),
(12, 'hi rahul how are you ?', 1, 156, '2024-01-29 05:37:49', '2024-01-29 05:37:49'),
(13, 'hi rahul how are you ?', 1, 156, '2024-01-29 05:38:01', '2024-01-29 05:38:01'),
(14, 'hi rahul how are you ?', 1, 156, '2024-01-29 05:38:03', '2024-01-29 05:38:03'),
(16, 'gaurav this is our latest message. ok', 1, 156, '2024-02-29 07:21:07', '2024-02-29 07:21:07'),
(18, 'latest message', 5, 156, '2024-02-29 07:21:55', '2024-02-29 07:21:55'),
(22, 'im good bro latest 2', 4, 156, '2024-01-28 13:07:04', '2024-01-28 13:07:04'),
(23, 'hi im gaurav', 156, 1, '2024-02-06 10:48:57', '2024-02-06 10:48:57'),
(24, 'hi good afternoon garuav', 156, 1, '2024-02-06 10:59:10', '2024-02-06 10:59:10'),
(25, 'good afternoon, how are you', 1, 156, '2024-02-06 10:59:36', '2024-02-06 10:59:36'),
(26, ' hey, gaurav ', 1, 155, '2024-02-06 14:13:03', '2024-02-06 14:13:03'),
(27, ' hey, gaurav ', 1, 155, '2024-02-06 14:31:58', '2024-02-06 14:31:58'),
(28, ' hey bro', 1, 155, '2024-02-06 14:32:27', '2024-02-06 14:32:27'),
(30, 'hi this is test1', 10, 156, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(31, 'hi this is test2', 10, 156, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(32, 'hi this is test3', 156, 10, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(33, 'hi this is test4', 156, 10, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(34, 'hi this is test5', 10, 156, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(35, 'hi this is test6', 156, 10, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(36, 'hi this is test7', 10, 156, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(37, 'hi this is test8', 156, 10, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(38, 'hi this is test9', 10, 156, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(39, 'hi this is test10', 156, 1, '2024-03-08 07:04:07', '2024-03-08 07:04:07'),
(40, 'hi this is test1', 1, 156, '2024-03-08 07:05:06', '2024-03-08 07:05:06'),
(41, 'hi this is test2', 1, 156, '2024-03-08 07:05:06', '2024-03-08 07:05:06'),
(42, 'hi this is test3', 1, 156, '2024-03-08 07:05:06', '2024-03-08 07:05:06'),
(43, 'hi this is test4', 156, 1, '2024-03-08 07:05:06', '2024-03-08 07:05:06'),
(44, 'hi this is test5', 165, 40, '2024-03-12 12:06:22', '2024-03-08 07:05:06'),
(50, NULL, NULL, NULL, '2024-02-08 09:43:10', '2024-02-08 09:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `name`, `status`, `image`) VALUES
(1, 'Whispering Winds', NULL, NULL),
(2, 'Midnight Serenade', NULL, NULL),
(3, 'Echoes of Eternity', NULL, NULL),
(4, 'Celestial Harmony', NULL, NULL),
(5, 'Serene Melodies', NULL, NULL),
(6, 'Enchanted Dreams', NULL, NULL),
(7, 'Symphony of the Soul', NULL, NULL),
(8, 'Twilight Sonata', NULL, NULL),
(9, 'Melancholy Melodies', NULL, NULL),
(10, 'Harmonic Horizon', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noti_records`
--

CREATE TABLE `noti_records` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `wallet` int NOT NULL DEFAULT '0',
  `offer` int NOT NULL DEFAULT '0',
  `event` int NOT NULL DEFAULT '0',
  `normal` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noti_records`
--

INSERT INTO `noti_records` (`id`, `user_id`, `wallet`, `offer`, `event`, `normal`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 0, 0, '2021-11-12 13:00:07', '2024-01-09 00:21:58'),
(2, 2, 1, 5, 23, 1, '2021-11-12 13:43:29', '2024-01-09 00:22:00'),
(3, 3, 0, 2, 0, 0, '2021-11-15 05:12:53', '2024-01-09 00:22:01'),
(4, 4, 0, 2, 0, 0, '2021-11-16 06:46:26', '2024-01-09 00:22:01'),
(5, 5, 0, 2, 0, 0, '2021-11-16 12:41:32', '2024-01-09 00:22:02'),
(6, 6, 0, 2, 0, 0, '2021-11-16 12:46:59', '2024-01-09 00:22:02'),
(7, 7, 0, 2, 0, 0, '2021-11-16 13:03:01', '2024-01-09 00:22:02'),
(8, 8, 0, 2, 0, 0, '2021-11-17 05:58:50', '2024-01-09 00:22:02'),
(9, 9, 0, 0, 0, 0, '2021-11-17 06:26:41', '2021-11-17 06:26:41'),
(11, 11, 20, 0, 0, 3, '2022-01-25 11:05:25', '2022-01-28 01:19:38'),
(12, 12, 0, 2, 0, 0, '2023-10-20 05:17:54', '2024-01-09 00:22:02'),
(13, 13, 0, 2, 0, 0, '2023-10-20 07:10:48', '2024-01-09 00:22:04'),
(14, 14, 0, 2, 0, 0, '2023-10-23 05:40:31', '2024-01-09 00:22:04'),
(15, 15, 0, 2, 0, 0, '2023-10-23 06:45:08', '2024-01-09 00:22:04'),
(16, 16, 0, 2, 0, 0, '2023-10-23 06:46:11', '2024-01-09 00:22:04'),
(17, 17, 0, 2, 0, 0, '2023-10-23 08:26:16', '2024-01-09 00:22:05'),
(18, 18, 1, 2, 0, 0, '2023-10-23 08:29:57', '2024-01-09 00:22:06'),
(19, 19, 0, 2, 0, 0, '2023-10-23 09:44:46', '2024-01-09 00:22:06'),
(20, 20, 0, 2, 0, 0, '2023-10-23 10:13:59', '2024-01-09 00:22:06'),
(21, 21, 0, 2, 0, 0, '2023-10-23 10:30:59', '2024-01-09 00:22:06'),
(22, 22, 0, 2, 0, 0, '2023-10-23 10:41:38', '2024-01-09 00:22:06'),
(23, 23, 0, 2, 0, 0, '2023-10-23 23:17:49', '2024-01-09 00:22:07'),
(24, 24, 1, 2, 0, 0, '2023-10-24 01:32:56', '2024-01-09 00:22:07'),
(25, 25, 0, 2, 0, 0, '2023-10-24 01:55:28', '2024-01-09 00:22:07'),
(26, 26, 1, 2, 0, 0, '2023-10-24 08:54:14', '2024-01-09 00:22:07'),
(27, 27, 0, 2, 0, 0, '2023-10-24 09:24:54', '2024-01-09 00:22:08'),
(28, 28, 0, 2, 0, 0, '2023-10-24 09:48:06', '2024-01-09 00:22:08'),
(29, 29, 0, 2, 0, 0, '2023-10-24 10:05:28', '2024-01-09 00:22:08'),
(30, 30, 0, 2, 0, 0, '2023-10-24 10:21:39', '2024-01-09 00:22:09'),
(31, 31, 1, 2, 0, 0, '2023-10-24 10:37:27', '2024-01-09 00:22:10'),
(32, 32, 1, 2, 0, 0, '2023-10-24 23:06:24', '2024-01-09 00:22:10'),
(33, 33, 0, 2, 0, 0, '2023-10-24 23:37:18', '2024-01-09 00:22:10'),
(34, 34, 0, 2, 0, 0, '2023-10-25 01:29:36', '2024-01-09 00:22:12'),
(35, 35, 1, 2, 0, 0, '2023-10-25 01:54:26', '2024-01-09 00:22:12'),
(36, 36, 0, 2, 0, 0, '2023-10-25 03:09:11', '2024-01-09 00:22:12'),
(37, 37, 1, 2, 0, 0, '2023-10-25 03:13:27', '2024-01-09 00:22:13'),
(38, 38, 0, 2, 0, 0, '2023-10-25 03:32:11', '2024-01-09 00:22:14'),
(39, 39, 0, 2, 0, 0, '2023-10-25 06:08:15', '2024-01-09 00:22:14'),
(40, 40, 0, 0, 0, 0, '2023-10-26 02:14:23', '2024-03-08 00:36:05'),
(41, 41, 0, 2, 0, 0, '2023-10-26 04:52:00', '2024-01-09 00:22:15'),
(42, 42, 0, 2, 0, 0, '2023-10-26 05:22:36', '2024-01-09 00:22:15'),
(43, 43, 0, 2, 0, 0, '2023-10-26 05:52:17', '2024-01-09 00:22:15'),
(44, 44, 0, 2, 0, 0, '2023-10-26 06:17:18', '2024-01-09 00:22:15'),
(45, 45, 0, 2, 0, 0, '2023-10-26 06:18:28', '2024-01-09 00:22:16'),
(46, 46, 0, 2, 0, 0, '2023-10-26 06:31:35', '2024-01-09 00:22:16'),
(47, 47, 0, 2, 0, 0, '2023-10-26 07:01:16', '2024-01-09 00:22:16'),
(48, 48, 0, 2, 0, 0, '2023-10-26 07:12:51', '2024-01-09 00:22:16'),
(49, 49, 0, 2, 0, 0, '2023-10-26 07:17:18', '2024-01-09 00:22:17'),
(50, 50, 1, 2, 0, 0, '2023-10-26 07:18:47', '2024-01-09 00:22:17'),
(51, 51, 0, 2, 0, 0, '2023-10-26 07:24:59', '2024-01-09 00:22:17'),
(52, 52, 1, 2, 0, 0, '2023-10-26 08:31:10', '2024-01-09 00:22:18'),
(53, 53, 0, 2, 0, 0, '2023-10-26 23:15:44', '2024-01-09 00:22:18'),
(54, 54, 0, 2, 0, 0, '2023-10-27 01:09:40', '2024-01-09 00:22:18'),
(55, 55, 0, 2, 0, 0, '2023-10-27 01:47:24', '2024-01-09 00:22:18'),
(56, 56, 1, 2, 0, 0, '2023-10-27 03:00:53', '2024-01-09 00:22:19'),
(57, 57, 1, 2, 0, 0, '2023-10-27 03:04:35', '2024-01-09 00:22:19'),
(58, 58, 1, 2, 0, 0, '2023-10-27 03:08:02', '2024-01-09 00:22:20'),
(59, 59, 1, 2, 0, 0, '2023-10-27 03:10:53', '2024-01-09 00:22:20'),
(60, 60, 0, 2, 0, 0, '2023-10-27 03:12:20', '2024-01-09 00:22:20'),
(61, 61, 0, 2, 0, 2, '2023-10-27 03:19:02', '2024-01-09 00:22:21'),
(62, 62, 0, 0, 0, 0, '2023-10-27 03:30:11', '2024-01-09 07:36:09'),
(63, 63, 0, 2, 0, 3, '2023-10-27 03:37:43', '2024-01-09 00:22:22'),
(64, 64, 0, 2, 0, 0, '2023-10-27 07:14:36', '2024-01-09 00:22:23'),
(65, 65, 0, 2, 0, 0, '2023-10-27 07:17:35', '2024-01-09 00:22:23'),
(66, 66, 0, 2, 0, 0, '2023-10-27 07:32:31', '2024-01-09 00:22:25'),
(67, 67, 0, 2, 0, 0, '2023-10-27 07:39:35', '2024-01-09 00:22:25'),
(68, 68, 0, 2, 0, 0, '2023-10-27 08:24:02', '2024-01-09 00:22:25'),
(69, 69, 0, 2, 0, 0, '2023-10-27 08:37:05', '2024-01-09 00:22:26'),
(70, 70, 0, 2, 0, 0, '2023-10-27 08:37:52', '2024-01-09 00:22:26'),
(71, 71, 0, 2, 0, 0, '2023-10-27 08:46:48', '2024-01-09 00:22:27'),
(72, 72, 0, 0, 0, 0, '2023-10-27 09:20:30', '2024-01-09 10:11:13'),
(73, 73, 0, 2, 0, 0, '2023-10-27 10:00:13', '2024-01-09 00:22:28'),
(74, 74, 0, 2, 0, 0, '2023-10-27 10:12:49', '2024-01-09 00:22:29'),
(75, 75, 0, 2, 0, 0, '2023-10-27 10:39:55', '2024-01-09 00:22:30'),
(76, 76, 0, 2, 0, 0, '2023-10-30 00:25:18', '2024-01-09 00:22:31'),
(77, 77, 0, 2, 0, 0, '2023-12-15 03:12:26', '2024-01-09 00:22:31'),
(78, 78, 0, 2, 0, 0, '2023-12-18 06:33:08', '2024-01-09 00:22:31'),
(79, 79, 0, 2, 0, 0, '2023-12-20 02:56:28', '2024-01-09 00:22:32'),
(80, 80, 1, 2, 0, 0, '2023-12-21 01:20:37', '2024-01-09 00:22:32'),
(81, 81, 1, 2, 0, 0, '2023-12-21 03:02:33', '2024-01-09 00:22:32'),
(82, 82, 0, 2, 0, 0, '2023-12-21 03:34:09', '2024-01-09 00:22:32'),
(83, 83, 0, 0, 0, 0, '2023-12-21 06:48:15', '2024-01-09 05:10:23'),
(84, 84, 1, 2, 0, 0, '2023-12-28 00:07:06', '2024-01-09 00:22:34'),
(85, 85, 0, 2, 0, 0, '2023-12-29 01:59:27', '2024-01-09 00:22:35'),
(86, 86, 0, 2, 0, 0, '2023-12-29 04:21:46', '2024-01-09 00:22:35'),
(87, 87, 0, 2, 0, 0, '2023-12-29 06:05:38', '2024-01-09 00:22:35'),
(88, 88, 0, 2, 0, 0, '2023-12-29 07:24:22', '2024-01-09 00:22:36'),
(89, 89, 0, 0, 0, 0, '2024-01-02 02:00:30', '2024-01-09 00:22:41'),
(90, 90, 0, 0, 0, 0, '2024-01-02 04:19:51', '2024-01-15 00:46:14'),
(91, 91, 0, 2, 0, 0, '2024-01-02 05:54:07', '2024-01-09 00:22:39'),
(92, 92, 0, 2, 0, 0, '2024-01-04 02:14:52', '2024-01-09 00:22:40'),
(93, 93, 1, 2, 0, 0, '2024-01-04 08:44:14', '2024-01-09 00:22:40'),
(94, 94, 0, 2, 0, 0, '2024-01-04 23:09:11', '2024-01-09 00:22:40'),
(95, 95, 1, 2, 0, 0, '2024-01-04 23:24:09', '2024-01-09 00:22:41'),
(96, 96, 0, 2, 0, 0, '2024-01-05 01:51:10', '2024-01-09 00:22:41'),
(97, 97, 0, 2, 0, 0, '2024-01-07 23:38:08', '2024-01-09 00:22:43'),
(98, 98, 1, 2, 0, 0, '2024-01-08 00:29:06', '2024-01-09 00:22:44'),
(99, 99, 1, 0, 0, 0, '2024-01-08 01:37:11', '2024-01-09 00:51:29'),
(100, 100, 1, 2, 0, 0, '2024-01-08 02:40:34', '2024-01-09 00:22:45'),
(101, 101, 0, 0, 0, 0, '2024-01-09 07:29:31', '2024-01-09 07:29:44'),
(102, 102, 0, 0, 0, 0, '2024-01-09 07:56:18', '2024-01-09 08:15:01'),
(103, 103, 0, 0, 0, 0, '2024-01-09 07:59:47', '2024-01-09 08:07:40'),
(104, 104, 0, 0, 0, 0, '2024-01-09 08:13:25', '2024-01-09 08:15:45'),
(105, 105, 0, 0, 0, 0, '2024-01-09 08:56:55', '2024-01-09 08:58:14'),
(106, 106, 1, 0, 0, 0, '2024-01-09 09:46:26', '2024-01-09 09:46:27'),
(107, 107, 1, 0, 0, 0, '2024-01-09 09:58:06', '2024-01-09 09:58:06'),
(108, 108, 1, 0, 0, 0, '2024-01-10 00:00:41', '2024-01-10 00:00:42'),
(109, 109, 1, 0, 0, 0, '2024-01-10 00:14:53', '2024-01-10 00:14:54'),
(110, 110, 1, 0, 0, 0, '2024-01-10 01:25:42', '2024-01-10 01:25:42'),
(111, 111, 0, 0, 0, 0, '2024-01-10 01:32:10', '2024-01-10 01:32:20'),
(112, 112, 0, 0, 0, 0, '2024-01-10 01:35:35', '2024-01-10 01:38:07'),
(113, 113, 1, 0, 0, 0, '2024-01-10 02:27:24', '2024-01-10 02:27:24'),
(114, 114, 1, 0, 0, 0, '2024-01-10 03:45:36', '2024-01-10 03:45:36'),
(115, 115, 0, 0, 0, 0, '2024-01-10 05:42:53', '2024-01-10 05:42:58'),
(116, 116, 0, 0, 0, 0, '2024-01-10 07:39:33', '2024-01-10 07:55:41'),
(117, 117, 0, 0, 0, 0, '2024-01-10 07:48:26', '2024-01-10 07:48:40'),
(118, 118, 0, 0, 0, 0, '2024-01-10 08:41:31', '2024-01-10 09:25:32'),
(119, 119, 1, 0, 0, 0, '2024-01-10 23:32:21', '2024-01-10 23:32:21'),
(120, 120, 1, 0, 0, 0, '2024-01-10 23:44:22', '2024-01-10 23:44:22'),
(121, 121, 0, 0, 0, 0, '2024-01-11 08:11:58', '2024-01-11 08:13:23'),
(122, 122, 1, 0, 0, 0, '2024-01-11 08:38:17', '2024-01-11 08:38:18'),
(123, 123, 1, 0, 0, 0, '2024-01-11 08:40:53', '2024-01-11 08:40:53'),
(124, 124, 1, 0, 0, 0, '2024-01-11 10:05:01', '2024-01-11 10:05:02'),
(125, 125, 0, 0, 0, 0, '2024-01-11 22:49:08', '2024-01-11 22:52:58'),
(126, 126, 1, 0, 0, 0, '2024-01-12 00:06:26', '2024-01-12 00:06:26'),
(127, 127, 1, 0, 0, 0, '2024-01-12 00:29:26', '2024-01-12 00:29:27'),
(128, 128, 0, 0, 0, 0, '2024-01-12 02:20:55', '2024-01-12 02:22:32'),
(129, 129, 0, 0, 0, 0, '2024-01-12 03:13:31', '2024-01-12 03:14:59'),
(130, 130, 0, 0, 0, 0, '2024-01-12 05:10:24', '2024-01-12 05:13:51'),
(131, 131, 0, 0, 0, 0, '2024-01-12 05:24:27', '2024-01-12 05:25:17'),
(132, 132, 0, 0, 0, 0, '2024-01-12 06:01:27', '2024-01-12 06:01:32'),
(133, 133, 0, 0, 0, 0, '2024-01-12 06:02:51', '2024-01-12 06:03:33'),
(134, 134, 0, 0, 0, 0, '2024-01-15 04:30:46', '2024-01-15 04:30:54'),
(135, 135, 1, 0, 0, 0, '2024-01-15 06:12:19', '2024-01-15 06:12:19'),
(136, 136, 1, 0, 0, 0, '2024-01-15 07:18:54', '2024-01-15 07:18:55'),
(137, 137, 1, 0, 0, 0, '2024-01-15 23:31:04', '2024-01-15 23:31:05'),
(138, 138, 1, 0, 0, 0, '2024-01-15 23:44:22', '2024-01-15 23:44:22'),
(139, 139, 1, 0, 0, 0, '2024-01-15 23:46:27', '2024-01-15 23:46:27'),
(140, 140, 1, 0, 0, 0, '2024-01-15 23:51:19', '2024-01-15 23:51:19'),
(141, 141, 1, 0, 0, 0, '2024-01-15 23:51:37', '2024-01-15 23:51:37'),
(142, 142, 1, 0, 0, 0, '2024-01-15 23:54:23', '2024-01-15 23:54:23'),
(143, 143, 1, 0, 0, 0, '2024-01-16 00:04:32', '2024-01-16 00:04:32'),
(144, 144, 1, 0, 0, 0, '2024-01-16 00:07:55', '2024-01-16 00:07:55'),
(145, 145, 1, 0, 0, 0, '2024-01-16 00:14:04', '2024-01-16 00:14:04'),
(146, 146, 1, 0, 0, 0, '2024-01-16 00:16:04', '2024-01-16 00:16:05'),
(147, 147, 0, 0, 0, 0, '2024-01-16 00:18:57', '2024-01-16 00:19:46'),
(148, 148, 1, 0, 0, 0, '2024-01-16 01:01:57', '2024-01-16 01:01:57'),
(149, 149, 1, 0, 0, 0, '2024-01-16 01:14:59', '2024-01-16 01:14:59'),
(150, 150, 1, 0, 0, 0, '2024-01-16 01:43:34', '2024-01-16 01:43:35'),
(151, 151, 1, 0, 0, 0, '2024-01-16 02:49:36', '2024-01-16 02:49:37'),
(152, 152, 1, 0, 0, 0, '2024-01-18 01:28:56', '2024-01-18 01:28:57'),
(153, 153, 1, 0, 0, 0, '2024-01-18 01:29:45', '2024-01-18 01:29:46'),
(154, 154, 1, 0, 0, 0, '2024-01-18 01:37:16', '2024-01-18 01:37:21'),
(156, 156, 1, 0, 0, 0, '2024-03-03 23:47:42', '2024-03-03 23:47:47'),
(158, 158, 1, 0, 0, 0, '2024-03-07 01:28:54', '2024-03-07 01:29:01'),
(160, 160, 1, 0, 0, 0, '2024-03-07 02:42:05', '2024-03-07 02:42:10'),
(161, 161, 1, 0, 0, 0, '2024-03-07 04:41:30', '2024-03-07 04:41:37'),
(162, 162, 1, 0, 0, 0, '2024-03-07 05:21:32', '2024-03-07 05:21:37'),
(163, 163, 1, 0, 0, 0, '2024-03-07 05:45:06', '2024-03-07 05:45:11'),
(164, 164, 1, 0, 0, 0, '2024-03-07 23:43:33', '2024-03-07 23:43:40'),
(165, 165, 0, 0, 0, 0, '2024-03-08 00:38:17', '2024-03-08 01:25:24'),
(166, 166, 1, 0, 0, 0, '2024-03-10 23:44:58', '2024-03-10 23:45:03'),
(167, 167, 1, 0, 0, 0, '2024-03-11 00:46:12', '2024-03-11 00:46:18'),
(168, 168, 1, 0, 0, 0, '2024-03-12 02:42:26', '2024-03-12 02:42:32'),
(169, 169, 1, 0, 0, 0, '2024-03-12 02:46:23', '2024-03-12 02:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('000a22d6e30da3dbabc4c113735123fcb2103f5025dff991b701d0fd0b0e32ceb1a24cf0d2c26593', 48, 1, 'andrew', '[]', 1, '2023-10-26 07:12:51', '2023-10-26 07:12:51', '2024-10-26 12:42:51'),
('0055146d6d7df7955732c1cac2d3ef0b427b273a212c6da35b240ca1d8b3f07d282b5a9b023e616b', 40, 1, 'andrew', '[]', 1, '2024-03-12 05:07:12', '2024-03-12 05:07:12', '2025-03-12 10:37:12'),
('0079f723ce624fd30c773ad0802b8427de89a94f7ce88cdb0d0ae3f8e4e76590011bf928a4a0c480', 152, 1, 'andrew', '[]', 0, '2024-01-18 01:28:57', '2024-01-18 01:28:57', '2025-01-18 06:58:57'),
('01054a3f68fcb5f67438e7921a89303ec6f048eccc77f48edef6460108998b5045a126a449fb2859', 72, 1, 'andrew', '[]', 1, '2024-01-11 00:59:17', '2024-01-11 00:59:17', '2025-01-11 06:29:17'),
('01166889370c4d6e43be71850e382297a8c52d8175598475ade6053f1f47e40f7d4f75be67c812ae', 108, 1, 'andrew', '[]', 1, '2024-01-10 00:00:42', '2024-01-10 00:00:42', '2025-01-10 05:30:42'),
('016e53c6fcb414a4d8f511400ef079b98e0c7a7436191a022236db631af078e2baeb8f6e346c2d8e', 44, 1, 'andrew', '[]', 1, '2023-10-26 06:17:19', '2023-10-26 06:17:19', '2024-10-26 11:47:19'),
('02fa09cda9822cb5b679e2a3bd75cf1b059e277ef491dfd798721d172b0bec82547532e08b298a73', 40, 1, 'andrew', '[]', 1, '2024-03-08 00:35:57', '2024-03-08 00:35:57', '2025-03-08 06:05:57'),
('03141c4435ad504fde71d37cc91c604945a821299b4953c84e6c827a49eb49acbd31e0d632bf5a71', 54, 1, 'andrew', '[]', 1, '2023-10-27 01:09:41', '2023-10-27 01:09:41', '2024-10-27 06:39:41'),
('03e0b37f23b9a9269b72c1a67c2cbb097ee43360bd717897d252032b6f110a00543425fc16c4ec0d', 93, 1, 'andrew', '[]', 1, '2024-01-04 08:44:14', '2024-01-04 08:44:14', '2025-01-04 14:14:14'),
('0428514effe6bdbbbed8adcc75018e6a1e5a8ed60abf7de143260b4363eb5cab5f5dd4f7ad9f8a2e', 16, 1, 'andrew', '[]', 1, '2023-10-31 04:00:51', '2023-10-31 04:00:51', '2024-10-31 09:30:51'),
('045f53c59052542c2cf627d8da87c88e87cc2c6a3a5091f5707a6f01099b4aab6cf49d4a31883d43', 82, 1, 'andrew', '[]', 1, '2023-12-21 03:34:09', '2023-12-21 03:34:09', '2024-12-21 09:04:09'),
('048751623929334559c871973232f22adf9ffd14925669328b8c0ad0bf5a7973989cab94c3af7bb2', 87, 1, 'andrew', '[]', 1, '2023-12-29 06:05:38', '2023-12-29 06:05:38', '2024-12-29 11:35:38'),
('0495ae49d660bc2f81a89235d66b09679561206221079005d48464ff3e7064a5771116a9d626973c', 23, 1, 'andrew', '[]', 1, '2023-10-24 05:04:47', '2023-10-24 05:04:47', '2024-10-24 10:34:47'),
('053df55b90b9af20fac4009353725a99a7670e42ec490d0fce67b6b9edea463902a88ca6543c3729', 162, 1, 'andrew', '[]', 1, '2024-03-07 05:21:32', '2024-03-07 05:21:32', '2025-03-07 10:51:32'),
('068ebd7b3dd279d20b7c2a57310e8f4ba0d32f165e810230a8a6ac49c94b7dd1a3bb3e89052cee5b', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:08:37', '2023-10-24 01:08:37', '2024-10-24 06:38:37'),
('06fc967d6c081443050d80cedc4f59b38c7d606cf79b2ae2bad0722e3449a5c108b4747dd8ff16b6', 16, 1, 'andrew', '[]', 1, '2023-10-23 07:52:40', '2023-10-23 07:52:40', '2024-10-23 13:22:40'),
('07005a05255827061e53486ff8c9e75e1760add9ee9a183c402d5b092b9ce40d6b501273a97a5d98', 79, 1, 'andrew', '[]', 1, '2023-12-20 02:56:29', '2023-12-20 02:56:29', '2024-12-20 08:26:29'),
('075d3a1e1295378202eb34c01183d9b5811190e590bb83e688264cc3afd23101bf5759221b3c05a4', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:05:10', '2023-10-25 06:05:10', '2024-10-25 11:35:10'),
('07e4180892fee6d1006ae5db4188a8037d309fd9e8977073717fc384f1bb28fa40bd48cdb2b1992f', 16, 1, 'andrew', '[]', 1, '2023-10-26 08:41:01', '2023-10-26 08:41:01', '2024-10-26 14:11:01'),
('07ef68f71a3ff79a98d5ed85b62a34f33af0bf60b0dc0e2d58e18648ed5aea156ad6768c8721ce1c', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:17:30', '2023-10-27 02:17:30', '2024-10-27 07:47:30'),
('0a02983eb7c020db9df83e4ba6a0bb79959b072d9c98137464591650ff9339460d99f3588d159e6e', 16, 1, 'andrew', '[]', 1, '2023-10-26 04:57:57', '2023-10-26 04:57:57', '2024-10-26 10:27:57'),
('0a0a0a631f410843c298ee2f2d648dff3e9172f00af9902b2d0e76585bb980828b87444d267462de', 113, 1, 'andrew', '[]', 1, '2024-01-10 02:27:24', '2024-01-10 02:27:24', '2025-01-10 07:57:24'),
('0a4bcac7b9c19d053edcded8f4b3d341d3f9f10c33dfb2151a93b45b058e28b7f57a8b735435f95f', 83, 1, 'andrew', '[]', 1, '2024-01-03 06:22:03', '2024-01-03 06:22:03', '2025-01-03 11:52:03'),
('0ab17cb6d3d932af8e61ffc308cd810dfaa3ec2c5345b397a3ef8d0a9b94a97a9e307c4aabe32371', 16, 1, 'andrew', '[]', 1, '2023-10-30 00:34:28', '2023-10-30 00:34:28', '2024-10-30 06:04:28'),
('0ac629d2f7c00437869ada872335728ec4e492adc8fd49af7b4042ac014709e627b0c2e85409c58e', 83, 1, 'andrew', '[]', 1, '2024-01-04 00:18:09', '2024-01-04 00:18:09', '2025-01-04 05:48:09'),
('0b94e70c01bb8a039bd95d94c4ca63c628e4cadbf0cf32b145a78f13af369b180327f691f32767f2', 15, 1, 'andrew', '[]', 1, '2023-10-23 06:45:08', '2023-10-23 06:45:08', '2024-10-23 12:15:08'),
('0b9d3e8c2a2635830d17eb69a4b4892c746fdaac7ea58a875403e521ff7332b88fabf1be516fa243', 156, 1, 'andrew', '[]', 0, '2024-03-03 23:47:42', '2024-03-03 23:47:42', '2025-03-04 05:17:42'),
('0bbcce96fa8fa0a5256e6fee922e4f65db49874db43fdd5ca056b521e4970090c58a0cb5c667a23f', 89, 1, 'andrew', '[]', 1, '2024-01-07 23:57:02', '2024-01-07 23:57:02', '2025-01-08 05:27:02'),
('0d07eabb1d40b29911cd055fdf74a913bee93839243a5b20a6e4f465afc9f8eb610ed426e9494b37', 81, 1, 'andrew', '[]', 1, '2023-12-21 03:02:34', '2023-12-21 03:02:34', '2024-12-21 08:32:34'),
('0d0e64f078c670659d20c9f36cafcc92ccc95a0a8cfcd1c86c754fb7154ce18c1479bb483d7b22cd', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:21:18', '2023-10-27 02:21:18', '2024-10-27 07:51:18'),
('0ebf77f0b478b7bcde36fa4fd44c87ecbdd3d9dacdf1ee2d460d2bdd09ecb5f0e09f214d1c14224c', 90, 1, 'andrew', '[]', 1, '2024-01-09 07:57:09', '2024-01-09 07:57:09', '2025-01-09 13:27:09'),
('0ef375232508a0a8076a58e0c73c015a0e580f273ca50aeaa89532c8f1cb91d2b29999c5d84ec293', 33, 1, 'andrew', '[]', 0, '2023-10-26 23:52:47', '2023-10-26 23:52:47', '2024-10-27 05:22:47'),
('0f41db463bf58e440651fbd1b8aeabd1df969c4c3994400cb931855fca4708bff7df9875d947a0c5', 123, 1, 'andrew', '[]', 1, '2024-01-11 08:40:53', '2024-01-11 08:40:53', '2025-01-11 14:10:53'),
('10298dd57dbd98bad2809a9f9b291599ad6af2fd33955d169e44f7070fbb41d04306c27c12d906b4', 10, 1, 'andrew', '[]', 0, '2022-01-25 11:01:18', '2022-01-25 11:01:18', '2023-01-25 16:31:18'),
('13e53242f2c2934db1bff99f595ea60c3c953ce03538694246c8f1968ef8605a52a8051c5e150e4c', 78, 1, 'andrew', '[]', 1, '2023-12-19 02:57:19', '2023-12-19 02:57:19', '2024-12-19 08:27:19'),
('14a0559024776e404b07a6559e1285063eb477649c74f972c0311da3d066bd02146dceb14cd22bda', 89, 1, 'andrew', '[]', 1, '2024-01-12 04:33:57', '2024-01-12 04:33:57', '2025-01-12 10:03:57'),
('14e0c954062da41589c285f75d505e1c2392e965c0cd8bf56c9e7ad5117761118280887bd10eda15', 26, 1, 'andrew', '[]', 1, '2023-10-24 08:54:16', '2023-10-24 08:54:16', '2024-10-24 14:24:16'),
('1515abc2dcabbfcbf513ccc2392284f1c92db0b041114f21bd0bb10fe32d41d78cd63c5c17a90eb7', 6, 1, 'andrew', '[]', 1, '2021-11-16 12:47:03', '2021-11-16 12:47:03', '2022-11-16 18:17:03'),
('16a6dd5739431c495ec3f75796c1921b7bab7cced170c41bd270d32c1bd3e28dd14702e21d3b01a2', 89, 1, 'andrew', '[]', 1, '2024-01-10 05:51:55', '2024-01-10 05:51:55', '2025-01-10 11:21:55'),
('16b70a40be4729f8772554e4be556079a6d7ef7f87fdc5393336db4e8efbfcfe327ee3fc3274af40', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:54:52', '2023-10-27 02:54:52', '2024-10-27 08:24:52'),
('1749a43d29753d5231455725d8422eafb7eba3d4a3d337ad5fe851dc2642ea79e3cab95003f8b621', 31, 1, 'andrew', '[]', 1, '2023-10-24 10:37:27', '2023-10-24 10:37:27', '2024-10-24 16:07:27'),
('175cfd9b12e2f41e80d9e749e1acd1cd4bf15be8637dcf024bc5eb3e8f431c6f41d49b6d2a51cde6', 94, 1, 'andrew', '[]', 1, '2024-01-04 23:09:11', '2024-01-04 23:09:11', '2025-01-05 04:39:11'),
('17b51b27c833d5a7f5e7d1df1677017baf7f0d3de1d5070c45acd448cef5a1a01f9d5020d1d35f16', 106, 1, 'andrew', '[]', 1, '2024-01-09 09:46:27', '2024-01-09 09:46:27', '2025-01-09 15:16:27'),
('17e798b886c84cb0f169874496a077e7a7c2d5523c3dee8307419f69b53a2c8bc4a44ee48aba712b', 40, 1, 'andrew', '[]', 1, '2024-03-09 02:30:52', '2024-03-09 02:30:52', '2025-03-09 08:00:52'),
('185a522072e909b6bedcf15ae6864b44437b853f9b9b9d4b167693bfd0fce7c138c6a4f32251bc77', 118, 1, 'andrew', '[]', 0, '2024-01-10 08:41:31', '2024-01-10 08:41:31', '2025-01-10 14:11:31'),
('18b3b814e0657452e370dcba404a35c2068ef2326e649cca0cfa587ce937edd8beef2314ab495a50', 100, 1, 'andrew', '[]', 0, '2024-01-08 02:40:34', '2024-01-08 02:40:34', '2025-01-08 08:10:34'),
('18d7ad438a8cd836e3a39340fc556b2e9ad0d856aba226c89cd93fd368549dc9b31efce0bc3960f7', 50, 1, 'andrew', '[]', 1, '2023-10-26 07:18:47', '2023-10-26 07:18:47', '2024-10-26 12:48:47'),
('196fa0b76c5ecf78effd75924321e17e0432c773470d9c11fb42f81291e005a6cd5a85f53b345894', 158, 1, 'andrew', '[]', 0, '2024-03-07 01:28:55', '2024-03-07 01:28:55', '2025-03-07 06:58:55'),
('19c8bbd22e49d506f74acec91e8e8293facd08061881fe16f95bb0d46ece58e1582e6a1810528db6', 89, 1, 'andrew', '[]', 1, '2024-01-11 23:55:36', '2024-01-11 23:55:36', '2025-01-12 05:25:36'),
('1a14d746fce50aabc3f3bd98b1d074abdc89e0c9cc3958e5f2a0f00c09e61041c906a66eedee03c1', 43, 1, 'andrew', '[]', 1, '2023-10-26 05:52:18', '2023-10-26 05:52:18', '2024-10-26 11:22:18'),
('1a1a7553e48d1b5bf845db5dd54691a13043fdbcad389448fd1d486f0f9cddf6d3fd8a9798c731b4', 129, 1, 'andrew', '[]', 1, '2024-01-12 03:13:31', '2024-01-12 03:13:31', '2025-01-12 08:43:31'),
('1b185dfb11f923b457b3433fce70282d9ab464cdc4f15d8d56d2bdd3fc43c3e92f8a813b9ee2269c', 40, 1, 'andrew', '[]', 1, '2023-10-27 02:52:09', '2023-10-27 02:52:09', '2024-10-27 08:22:09'),
('1bbc44cc5a558bbddfad91d4e79772474d682cf27bf58a9a633e28a873aa9e05ed90519ebd204d00', 83, 1, 'andrew', '[]', 1, '2024-01-04 01:27:03', '2024-01-04 01:27:03', '2025-01-04 06:57:03'),
('1bcf2f66d609b92ea2e5033110537942d6e00a7226f89d927b2d861abfbaf0e9ae99bb3ec3321718', 19, 1, 'andrew', '[]', 1, '2023-10-23 09:44:46', '2023-10-23 09:44:46', '2024-10-23 15:14:46'),
('1c2ff89f65e6bd873654f8494bcfe9a1cd536d398aa395fe5cd2a8bf7ebae64db25d9d3cded53e4a', 33, 1, 'andrew', '[]', 1, '2023-10-25 01:06:38', '2023-10-25 01:06:38', '2024-10-25 06:36:38'),
('1c878c437b4bd65ce8349831a3e777e0f00130c47a9cec208df2e800266df2a110adc03d9ec314c8', 21, 1, 'andrew', '[]', 1, '2023-10-23 10:30:59', '2023-10-23 10:30:59', '2024-10-23 16:00:59'),
('1e6613202324299c4e2dd4b7ac6a5c69dcacb11587c650bdb5a61c036a2df8227f5c660d3c5b18fa', 16, 1, 'andrew', '[]', 1, '2023-10-24 04:49:44', '2023-10-24 04:49:44', '2024-10-24 10:19:44'),
('1ea81b8e662511b15ab46eeba83c48f1165fc789d756a29258c4e87e8f8ef948ea11eea2a2d7f474', 89, 1, 'andrew', '[]', 1, '2024-01-05 00:08:08', '2024-01-05 00:08:08', '2025-01-05 05:38:08'),
('1eca1fbc3acf34b9c9c0f9dda5cdbae8147a999e282f095ca5d17ec138667ff6231b486af1dee567', 17, 1, 'andrew', '[]', 1, '2023-10-23 08:26:16', '2023-10-23 08:26:16', '2024-10-23 13:56:16'),
('1ee8a3625b2380b1bd1ead28cc2a3afde1ad330801c28af4d79bffa98adc61be3f8f7f78bdab549e', 89, 1, 'andrew', '[]', 1, '2024-01-05 06:30:17', '2024-01-05 06:30:17', '2025-01-05 12:00:17'),
('218af491b4e8f44f21856f9199448d16c7eb9811fc167d1c198e633abe9e4f8291dd4a89e81369c4', 74, 1, 'andrew', '[]', 0, '2023-10-27 10:12:49', '2023-10-27 10:12:49', '2024-10-27 15:42:49'),
('21c6087c8adf160e4dfdea8a6a8a398b7636a013ba431c41edbb5fbff291e0ed36b2990de5eed1e6', 55, 1, 'andrew', '[]', 1, '2023-10-27 01:47:24', '2023-10-27 01:47:24', '2024-10-27 07:17:24'),
('227880e2005ba662f30f94cb275c8d5873e9f00380906f254122f3c1331a85ccef7d3e635bb82abc', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:28:37', '2023-10-27 02:28:37', '2024-10-27 07:58:37'),
('22ad2404c1f8413d2be361b0849e8f204a8c7bb8931500b7c144763200837f18d0c5359fd9f1e09e', 136, 1, 'andrew', '[]', 0, '2024-01-15 07:18:55', '2024-01-15 07:18:55', '2025-01-15 12:48:55'),
('235063e35ea6e3f04fee42e2f7cbb00eca769894128971da44cf3d749a412237b71336cbf2565cf8', 16, 1, 'andrew', '[]', 1, '2023-10-23 23:11:38', '2023-10-23 23:11:38', '2024-10-24 04:41:38'),
('23d4b51891dd8f525195d849ad2624257faa9e3bc3ed712a3c29c5c4e79ead7dc40225b60f52c512', 90, 1, 'andrew', '[]', 1, '2024-01-11 04:20:53', '2024-01-11 04:20:53', '2025-01-11 09:50:53'),
('24bb6618f6cc57f9275765174bcf5bd3c05519144272c6db0d1717d867067aa8a6e40e8c411ec416', 14, 1, 'andrew', '[]', 1, '2023-10-23 23:09:03', '2023-10-23 23:09:03', '2024-10-24 04:39:03'),
('25915d4bf6e8923ebc87a3e567efb3ddc1a63055a6b275ac9ccf6f9edd8dadf45d34c958f9e4b17d', 14, 1, 'andrew', '[]', 1, '2023-10-23 22:59:50', '2023-10-23 22:59:50', '2024-10-24 04:29:50'),
('25cc3299dfec66ddf61b7f211e8dfd07e04f00ddb4b951a68254a5314384b22898aa1c8d6717dc1a', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:37:53', '2023-10-27 02:37:53', '2024-10-27 08:07:53'),
('25ccdcd8a642443f89f681031793b9e9db22c0ca89e87d6d568bf542cee6784534d9d6fef992dbfa', 153, 1, 'andrew', '[]', 0, '2024-01-18 01:29:45', '2024-01-18 01:29:45', '2025-01-18 06:59:45'),
('2635e0624a813114c1f21c5f5bd6e5541c0c72ac02f5f544f416784cf100b2b8c43a4f8081ebe55c', 89, 1, 'andrew', '[]', 1, '2024-01-15 01:51:26', '2024-01-15 01:51:26', '2025-01-15 07:21:26'),
('273c245bd2d482ae56b9a1099b58babfda5f7b85e4bec303455f2b77120b0cef479cfe4079f710d7', 7, 1, 'andrew', '[]', 0, '2021-11-16 13:03:09', '2021-11-16 13:03:09', '2022-11-16 18:33:09'),
('27898ba5ae436225b0d225ed81cd2c26522f768c43a4984551cdef06c9ba8dcd71a9bc1bb8b4b091', 150, 1, 'andrew', '[]', 0, '2024-01-16 01:43:35', '2024-01-16 01:43:35', '2025-01-16 07:13:35'),
('279d5b7000c58664f6ba9cfa9dcab9c25545be7566ca6f46f0a5d81a11bafe4086448aed8ecfadeb', 112, 1, 'andrew', '[]', 1, '2024-01-10 01:35:36', '2024-01-10 01:35:36', '2025-01-10 07:05:36'),
('27aceb4cf38016084f621a345f769574b742c327aea62b6c8710d50e4c395a133934d4738a8761c2', 89, 1, 'andrew', '[]', 1, '2024-01-11 23:27:57', '2024-01-11 23:27:57', '2025-01-12 04:57:57'),
('289698830fc8d079c5572a6315644c4d50371b173a9173b2733a9e484efc5a6db063e70563a7a778', 89, 1, 'andrew', '[]', 0, '2024-01-16 05:58:13', '2024-01-16 05:58:13', '2025-01-16 11:28:13'),
('291d5eecc5614eaeb8ae359d91a9f023c01a8b67a1ed8bed3b6fae92a3ca87608ecca978e1a46ad7', 164, 1, 'andrew', '[]', 0, '2024-03-07 23:43:34', '2024-03-07 23:43:34', '2025-03-08 05:13:34'),
('2a4903b2cb0d715ff8249b6e56dae4a1b350588485d15820aea2d75a22fea753247d14a17c99356f', 14, 1, 'andrew', '[]', 1, '2023-10-24 05:30:22', '2023-10-24 05:30:22', '2024-10-24 11:00:22'),
('2a9d7154676d51e9258edba84e38f9e176d3a4b5d29bdeed3c1dd6ce4cf78743a9595ab6e74f33e4', 8, 1, 'andrew', '[]', 0, '2021-11-17 05:58:55', '2021-11-17 05:58:55', '2022-11-17 11:28:55'),
('2b84e78bcfe2559255afe60f095e749da318c696223cc786e41abe468a1c0ed689e5b54bb8606070', 34, 1, 'andrew', '[]', 1, '2023-10-25 01:29:37', '2023-10-25 01:29:37', '2024-10-25 06:59:37'),
('2c7ba83e9f1e40ed8a24534a07ea019e49d48947fe0acf5765834145b35d6e16bf70f5fbce273fd5', 71, 1, 'andrew', '[]', 1, '2023-10-27 08:46:48', '2023-10-27 08:46:48', '2024-10-27 14:16:48'),
('2d190e8811229c47c83efc25ef6424eeed454500ccc7d1d897858cbcf27ed26a781700557227b8d2', 40, 1, 'andrew', '[]', 1, '2023-10-27 01:49:57', '2023-10-27 01:49:57', '2024-10-27 07:19:57'),
('2d74c3d2be486c5eca8c453f43cc1abb2c6411e5a5ac5b2bfe4ab7ef283402390d1d0adb0b254244', 53, 1, 'andrew', '[]', 1, '2023-10-26 23:15:45', '2023-10-26 23:15:45', '2024-10-27 04:45:45'),
('30da92fbd606540e79791837644ac3fe2e194c2d3f8d2bdf440b60364d5c5caa41aab975607baf01', 40, 1, 'andrew', '[]', 1, '2024-03-12 02:42:57', '2024-03-12 02:42:57', '2025-03-12 08:12:57'),
('3168d2904c96167f994da3327c9b53acb475f86825e43b217be497c21b1c729e537352bf2251604f', 55, 1, 'andrew', '[]', 0, '2023-10-27 05:27:58', '2023-10-27 05:27:58', '2024-10-27 10:57:58'),
('32935ffb9f67a86b3099cfdd6ca7fd36c55570cc6b2decda7dc6dbd410b8b5ddfba12c4374432b75', 27, 1, 'andrew', '[]', 1, '2023-10-24 09:24:55', '2023-10-24 09:24:55', '2024-10-24 14:54:55'),
('32df4d1468e6391c7d21129ff620b7ca37dcb7a6d841c78c93ebf425bc800dc82718f18f5aac352f', 68, 1, 'andrew', '[]', 0, '2023-10-27 08:24:02', '2023-10-27 08:24:02', '2024-10-27 13:54:02'),
('333657405a1a485215e6d0504e756226e43a84f625b4378b118e126fa45d3038225c08ed5b4b7d95', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:05:32', '2023-10-25 06:05:32', '2024-10-25 11:35:32'),
('33ba16f71959b289e3623423b0db58ce366b089614d5a5224abc7643cca55518709b3917daddee4f', 16, 1, 'andrew', '[]', 1, '2023-10-27 08:31:12', '2023-10-27 08:31:12', '2024-10-27 14:01:12'),
('349cc36d0b70847656a5b4fe5348c33f4bf56244f0498a2a6a7f2939abebcf39c6d654d7725eb845', 23, 1, 'andrew', '[]', 1, '2023-10-24 05:04:09', '2023-10-24 05:04:09', '2024-10-24 10:34:09'),
('34edc39438022a9a89005a14017b43f282a7b0a5df94c7a3c5be9018bf90407ed50cfc2cb8febc4e', 89, 1, 'andrew', '[]', 1, '2024-01-04 02:40:08', '2024-01-04 02:40:08', '2025-01-04 08:10:08'),
('3533c06f9ba2470b4e324a2fdb6ac6b5bb0195eb9508fc63fc26fabce483122632e52a866bdf670d', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:41:50', '2023-10-27 02:41:50', '2024-10-27 08:11:50'),
('3557ce0ebcc719578f24e0f865c22bfec18b2b908ec2e93443bba2621b18f30348f122593b45be25', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:23:58', '2024-01-04 22:23:58', '2025-01-05 03:53:58'),
('359d70e5ee65e1baab56795f85b05246275d4bb8edc6e6f631c08311c83f5368dbe38be425a68140', 11, 1, 'andrew', '[]', 1, '2022-01-26 23:02:29', '2022-01-26 23:02:29', '2023-01-27 04:32:29'),
('37a97c47f72788d771b89b9f19a34c24ecb0de91552e36af6086a375e910c3f524b84f090856fb6d', 16, 1, 'andrew', '[]', 1, '2023-10-26 00:54:50', '2023-10-26 00:54:50', '2024-10-26 06:24:50'),
('3829329c0c142a6ba1fcf68444d04e190a383a2e35adf67c1ad0a9f4eb0831024d45267d4df63658', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:30:50', '2024-01-12 05:30:50', '2025-01-12 11:00:50'),
('38f8c099cdc2717a52f08039f34022c2d235e44d3631bf8036ca042000205811c6047729d2c01ccd', 89, 1, 'andrew', '[]', 1, '2024-01-12 01:00:55', '2024-01-12 01:00:55', '2025-01-12 06:30:55'),
('39084021e4727c8512734291a864bbfbccdb11272a8003c1c8d0ec5a3fa0b47c31c06826bcfae291', 14, 1, 'andrew', '[]', 1, '2023-10-24 08:02:11', '2023-10-24 08:02:11', '2024-10-24 13:32:11'),
('3967ff3af46d23116a41a0c559a1b2d0053fd1d815e25a2b0c64449cf0c3310c2bdb9ee023daa664', 40, 1, 'andrew', '[]', 1, '2023-10-27 05:22:56', '2023-10-27 05:22:56', '2024-10-27 10:52:56'),
('3995be8f8b465d7e6d5b40309780fd910ace30ecafb8e14e204c8ec88b364afe70c3f142307ada0d', 89, 1, 'andrew', '[]', 1, '2024-01-10 01:15:49', '2024-01-10 01:15:49', '2025-01-10 06:45:49'),
('3b4527041971f9996fa969e873dff652c59315d94ca03d235716ae8c185755fcc4a7809654b2d40e', 14, 1, 'andrew', '[]', 1, '2023-10-23 05:49:02', '2023-10-23 05:49:02', '2024-10-23 11:19:02'),
('3ba10fcb146ef397a088cbb3fd26c8a8874d87eb647496f4b99bfefe15789d42290b33e5bd4707cb', 14, 1, 'andrew', '[]', 1, '2023-10-24 00:57:16', '2023-10-24 00:57:16', '2024-10-24 06:27:16'),
('3d4fc1ab39dc7038e528252977a7a1be234c0086f1ae56a07c4ed9305bb8304dd67db93f73557223', 72, 1, 'andrew', '[]', 1, '2024-01-05 11:37:26', '2024-01-05 11:37:26', '2025-01-05 17:07:26'),
('3ef3a0f956916d033f58488d1431eae2a564ab4f4477c2eab69a89c3a6bf61219d9c207db4c40a58', 14, 1, 'andrew', '[]', 1, '2023-10-23 05:40:32', '2023-10-23 05:40:32', '2024-10-23 11:10:32'),
('3f196b537731d6a81a07e3cf1092481df90cf2880d474875409a3827cf39bbb91db4764cba260f8d', 55, 1, 'andrew', '[]', 1, '2023-10-27 03:59:10', '2023-10-27 03:59:10', '2024-10-27 09:29:10'),
('3f4c42054773ff34cd1ee0d78b54732a4d853ed8fa6918c89773aa54c00217de11d8a2625f2bd5cb', 78, 1, 'andrew', '[]', 1, '2023-12-18 06:33:11', '2023-12-18 06:33:11', '2024-12-18 12:03:11'),
('3f765f713183e7e8c98f4b6c383dc44f8b9105dff925869743514f6a78c8db9fe0aecca78f277c50', 89, 1, 'andrew', '[]', 1, '2024-01-12 01:09:17', '2024-01-12 01:09:17', '2025-01-12 06:39:17'),
('3f8f5de3adf367e36378bbe9c28066073cefc5159739f30955976f1c88fc0abdfdf0fed448dfe2d1', 72, 1, 'andrew', '[]', 1, '2023-10-27 09:20:30', '2023-10-27 09:20:30', '2024-10-27 14:50:30'),
('40b6e78cc9529e41cd396e91449464b4c21a1b1c0a024b04f3129b12ed5a7df46153c385dc80e233', 40, 1, 'andrew', '[]', 1, '2024-03-12 02:48:30', '2024-03-12 02:48:30', '2025-03-12 08:18:30'),
('40b7ab4db4c7db5e715608310ac9d6c93ee6b60d59ce03e27a8c8373c533189a1ee544a9a02b6a58', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:19:22', '2023-10-27 02:19:22', '2024-10-27 07:49:22'),
('415ce98a961680ab4728d106a76f6bf8f43bf380ad905d2011005ab30af0aa4edb7ad1e538df12bd', 14, 1, 'andrew', '[]', 1, '2023-10-26 04:50:55', '2023-10-26 04:50:55', '2024-10-26 10:20:55'),
('415d62aba830fd6f415d5baa67bd995a6be84dffe0b5590f9e1d92efa32723cd432d4455410ed6cc', 37, 1, 'andrew', '[]', 1, '2023-10-25 03:13:27', '2023-10-25 03:13:27', '2024-10-25 08:43:27'),
('416857fe470410b68051c04b1b1ca03184857ba2f8dae04dab3cf7386f7480de156ceec22efa5a15', 40, 1, 'andrew', '[]', 1, '2024-03-12 01:56:34', '2024-03-12 01:56:34', '2025-03-12 07:26:34'),
('43f51bcfc65288990983d4b5180364e3b99814ed2f540cd39851d1dab8dd6214f762e406ef6e9559', 114, 1, 'andrew', '[]', 1, '2024-01-10 03:45:36', '2024-01-10 03:45:36', '2025-01-10 09:15:36'),
('4434393e60b970eb84174de1baf367fc32b1516626753fa23f4b9928c5add6c17a068f12377cb88a', 88, 1, 'andrew', '[]', 0, '2023-12-29 07:24:22', '2023-12-29 07:24:22', '2024-12-29 12:54:22'),
('45dfaa40902fe08dddb4add679f1f9ab419bee4c5d3fa997f6e96ea2db4125ab029fdfd9a601c228', 38, 1, 'andrew', '[]', 1, '2023-10-25 03:32:12', '2023-10-25 03:32:12', '2024-10-25 09:02:12'),
('465dd65fef73c4582dbd573c4b8194f15211598aa437d706af9645dea719965ec03647c53e095b31', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:37:13', '2024-01-11 08:37:13', '2025-01-11 14:07:13'),
('466c1d1d73e87260cfaa30a09e63946d2ed6f26d54c68dd44af3abaf84783260f61ab222ca3accb2', 137, 1, 'andrew', '[]', 1, '2024-01-15 23:31:05', '2024-01-15 23:31:05', '2025-01-16 05:01:05'),
('46d5578b95322af4c64d897054ee98dd0f4283eb56cba9ca094fbfc038584ddd5d0af0e58bc19bca', 149, 1, 'andrew', '[]', 1, '2024-01-16 01:14:59', '2024-01-16 01:14:59', '2025-01-16 06:44:59'),
('46eefcc02109bae2ca3908ca98ac7f6bc56af64a6a6cb64c8e0acc9a8d6e6781e1ebec3dbd1cdb89', 89, 1, 'andrew', '[]', 1, '2024-01-03 01:44:07', '2024-01-03 01:44:07', '2025-01-03 07:14:07'),
('46f9c3e586db0aea91e965a101aa1d6972c4988e974450e22205d2cec6fef2d8568f060df8e42050', 33, 1, 'andrew', '[]', 1, '2023-10-26 00:57:03', '2023-10-26 00:57:03', '2024-10-26 06:27:03'),
('471459a7004ad070a447d27f8d07e37bb8732f73847180c3359ca72e191bc7ddfc91c29682965427', 40, 1, 'andrew', '[]', 1, '2024-03-11 23:43:25', '2024-03-11 23:43:25', '2025-03-12 05:13:25'),
('47aaa3f23842f68d3ec74a8d839333e07420b73bd8c83fe61223c2c226cb4fe8175d192fd4c6698c', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:22:17', '2023-10-25 06:22:17', '2024-10-25 11:52:17'),
('488d29a6a5499496a17a87c5be5351694751e6f61f46d892a1e122b41fbd21fc5d4925d824073f3d', 16, 1, 'andrew', '[]', 1, '2023-10-24 23:18:44', '2023-10-24 23:18:44', '2024-10-25 04:48:44'),
('48e4d98f1f9ce58403fc2002eebd1e01cd4a9c3153778f46708a5f8006d9c2e46b295c2077b445fc', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:28:30', '2023-10-24 01:28:30', '2024-10-24 06:58:30'),
('4910857d0f8145fb0a21bfe2dd416d1bbdea38a04a67b8cb045605e9f2b5c91d0be8a1ed962a56ff', 47, 1, 'andrew', '[]', 1, '2023-10-26 07:01:17', '2023-10-26 07:01:17', '2024-10-26 12:31:17'),
('4916c320688df359e5e3ce1ada4d5bbd1225e21ad3a6df254a6538b815fe3ecd6d41b27e46508c53', 83, 1, 'andrew', '[]', 1, '2024-01-06 00:23:27', '2024-01-06 00:23:27', '2025-01-06 05:53:27'),
('49303d56c5ce2657711d587c1eab8b0610ba4136d0740999ef3bac0d4d0f12916e5688fdd8cb6fb4', 16, 1, 'andrew', '[]', 1, '2023-10-30 04:37:26', '2023-10-30 04:37:26', '2024-10-30 10:07:26'),
('4975dfd3d94803a5c5e3edcac03c4840a52aa2a3ba022d05c21d901509b53441eb5c855ad2f94d98', 72, 1, 'andrew', '[]', 1, '2024-01-10 01:00:05', '2024-01-10 01:00:05', '2025-01-10 06:30:05'),
('4a4a680065f105c31585f45ed9105cfe83a6ced3cf085bd93807397dfa8ae13f82c396ee62027c0e', 40, 1, 'andrew', '[]', 1, '2023-10-26 06:15:10', '2023-10-26 06:15:10', '2024-10-26 11:45:10'),
('4a4c3a240bd919351f094e4efdb334dbc9d00f7071d705142a75849f15606d05cbcf8f42031cdfba', 132, 1, 'andrew', '[]', 1, '2024-01-12 06:01:27', '2024-01-12 06:01:27', '2025-01-12 11:31:27'),
('4a922414c186b70c4676902d7a9679f6028eaa04ad613876455c411b1d6b1471ad5afdb765cc2f96', 72, 1, 'andrew', '[]', 1, '2024-01-12 01:44:27', '2024-01-12 01:44:27', '2025-01-12 07:14:27'),
('4bc6148ac56612c5ed2d8a925979957e5d8b585a4d39b5349d761624dba33b2ea255cdca0056c43e', 41, 1, 'andrew', '[]', 1, '2023-10-26 04:52:00', '2023-10-26 04:52:00', '2024-10-26 10:22:00'),
('4bcca90185145d5c302f4b700053667f8482adb1983209df2b27099ca2940bc4359bd3261550902c', 130, 1, 'andrew', '[]', 1, '2024-01-12 05:10:24', '2024-01-12 05:10:24', '2025-01-12 10:40:24'),
('4be9ab3fc87bd97d95ca68f83ce565ce2ad2ba6290495f7a0f117c317362fc41ef770ff0f1780dd5', 16, 1, 'andrew', '[]', 1, '2023-10-25 00:58:31', '2023-10-25 00:58:31', '2024-10-25 06:28:31'),
('4c3170551766d367238cd14c39c7cc00d9ff91ec0761f8a51f9b667f86f54e0102750c8c70c24af1', 89, 1, 'andrew', '[]', 1, '2024-01-10 02:02:10', '2024-01-10 02:02:10', '2025-01-10 07:32:10'),
('4d0cdc0a92164f7d6f102391a7ba7b8dac2727e0eef6adbe9be035c0d64894447c8477aa76c4179c', 16, 1, 'andrew', '[]', 1, '2023-10-26 09:19:51', '2023-10-26 09:19:51', '2024-10-26 14:49:51'),
('4e3e28b0c61921922400c0beaa44c5fd2c99e87b1300398f72a3df82d629c4298787e2d16fa72e78', 89, 1, 'andrew', '[]', 1, '2024-01-10 01:56:17', '2024-01-10 01:56:17', '2025-01-10 07:26:17'),
('4e927937c71c1ad3bb2bfba6b524c5ff8ccc20f876227ba196a720d01a412c09833b4d06a7c1508c', 58, 1, 'andrew', '[]', 1, '2023-10-27 03:08:02', '2023-10-27 03:08:02', '2024-10-27 08:38:02'),
('5090e21f9f8b1b29c9c647b8fce37f918f3d0f108e4cc8529e0390a70eadf71fae1bf0ee7b6c435c', 16, 1, 'andrew', '[]', 1, '2023-10-25 04:26:39', '2023-10-25 04:26:39', '2024-10-25 09:56:39'),
('511c391b4c0ca6c49dc381435c2d90f6aaff5fb9477113d59753d5a764d5463ba211b9af5fe45278', 76, 1, 'andrew', '[]', 1, '2023-10-30 00:25:18', '2023-10-30 00:25:18', '2024-10-30 05:55:18'),
('51dec310201cb04277331e869170fc15010c3f0551f16826f75e256a69e3bad644d9b7c46138fa2d', 40, 1, 'andrew', '[]', 1, '2024-03-12 07:01:00', '2024-03-12 07:01:00', '2025-03-12 12:31:00'),
('523fcfac87c861b37eaa3bf5ff91465e68b19ab4355ab17e3d6eafeea662864b658da551dad0bba8', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:00:12', '2021-11-12 13:00:12', '2022-11-12 18:30:12'),
('541a61ca26c2acfbb20dbe20c747d7ec719c20be7d45480c21a0a9b75cbb10e5088f2b1f3b8bf930', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:58:52', '2021-11-17 04:58:52', '2022-11-17 10:28:52'),
('546bda565a9f7b15d9e9ea7d53241c0c01e387ef406966271c3512cbd4271f4cb2d40419d27062e8', 90, 1, 'andrew', '[]', 1, '2024-01-10 08:14:25', '2024-01-10 08:14:25', '2025-01-10 13:44:25'),
('555b9b64f83e6d6436827dde1ce9a7e78beb2e5f2c267b1669d8b6a17b72ad98f88af5fa0fb36317', 72, 1, 'andrew', '[]', 1, '2024-01-11 23:10:57', '2024-01-11 23:10:57', '2025-01-12 04:40:57'),
('559d46041a5ee88706ccc7d5a257017a56de7ee23f556d3965d32d794fd6e18e943c3ef6e845d7dd', 33, 1, 'andrew', '[]', 1, '2023-10-25 00:46:49', '2023-10-25 00:46:49', '2024-10-25 06:16:49'),
('55d7f1d0b05094dd1ed20d8b94ab50ccc6c1cc979de9e2110ea99e38daa6dd63c9b9a7510ca1fde7', 16, 1, 'andrew', '[]', 1, '2023-10-26 07:10:23', '2023-10-26 07:10:23', '2024-10-26 12:40:23'),
('56223c3dffa788e4dcdb3dc4d0cbf6d7aa676aa8a22742bddb22e52fa78028746abec9d2bf16711a', 89, 1, 'andrew', '[]', 1, '2024-01-16 02:16:10', '2024-01-16 02:16:10', '2025-01-16 07:46:10'),
('5903540663cd2778aaba9f9ff6796ab4b2f171ddcde69737bfae8eb4f1d060f44850188383790846', 166, 1, 'andrew', '[]', 0, '2024-03-10 23:44:58', '2024-03-10 23:44:58', '2025-03-11 05:14:58'),
('59708516c5055732b62f0eb921398de81da78445cf3fb9593b9845dde4c081dda393f2e29db73a56', 89, 1, 'andrew', '[]', 1, '2024-01-11 06:50:51', '2024-01-11 06:50:51', '2025-01-11 12:20:51'),
('59defe6ea56da19b207b81bc7661af426288785c7fef25d32ff6a30ce162d4a4448c61ae6966c6e3', 90, 1, 'andrew', '[]', 1, '2024-01-02 04:19:54', '2024-01-02 04:19:54', '2025-01-02 09:49:54'),
('5a00698ac31d4c84ee1b8e52089646dfd579fbc2c4d050ebf3f71e2d92ff5697d512256f1f030394', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:33:44', '2024-01-12 05:33:44', '2025-01-12 11:03:44'),
('5a45e0efabf130d47bb8e6819c7f75c16616166a501006939bda2529cd50f1c07fb2889358f9deff', 18, 1, 'andrew', '[]', 1, '2023-10-23 08:29:57', '2023-10-23 08:29:57', '2024-10-23 13:59:57'),
('5cb44dfc12ac8ddfbb1675383f251e9988509a5a00d03380f0433463b61523c5d14d8942f5b2e377', 103, 1, 'andrew', '[]', 0, '2024-01-09 07:59:48', '2024-01-09 07:59:48', '2025-01-09 13:29:48'),
('5e882adf0402ad69de2e743f32e197c455077dceea3d6b2fbf842f7fb56f85d08e5e6aec617e6e76', 160, 1, 'andrew', '[]', 0, '2024-03-07 02:42:05', '2024-03-07 02:42:05', '2025-03-07 08:12:05'),
('5eeea6e4987ef398e7082ce2bf529dd7788279fffc792f09ca632e960edfeabdf78b636d51eb6661', 14, 1, 'andrew', '[]', 1, '2023-10-26 05:00:18', '2023-10-26 05:00:18', '2024-10-26 10:30:18'),
('5f043819bf80bf3020117c698251883e9e59add9c0652267ce3773ec0bba6156b6d759b6aae09fe5', 72, 1, 'andrew', '[]', 1, '2024-01-11 23:33:41', '2024-01-11 23:33:41', '2025-01-12 05:03:41'),
('5f28a9f9c269fb91be9c14930df27cdf95bc86f989db785c9a77a357ad6beb3b3f6e4db58aab06d5', 70, 1, 'andrew', '[]', 0, '2023-10-27 08:37:52', '2023-10-27 08:37:52', '2024-10-27 14:07:52'),
('6063ad3a281a0b2b286469cc3c54093beb0bca137018826023fe7784b20e369fa97e856e5197603c', 1, 1, 'andrew', '[]', 0, '2021-11-15 09:04:47', '2021-11-15 09:04:47', '2022-11-15 14:34:47'),
('606aa40085cdaa08ce9dadacdac5c06bfff9b25e9a06c73d7a5d300adb327e01b5b251c07ea999af', 40, 1, 'andrew', '[]', 1, '2024-03-11 02:24:09', '2024-03-11 02:24:09', '2025-03-11 07:54:09'),
('60ba47fdd3093575640d91f59aac1543c91cb0728a510d346d332ddcefc34f9815e67e221c55f7bd', 16, 1, 'andrew', '[]', 1, '2023-10-26 05:04:37', '2023-10-26 05:04:37', '2024-10-26 10:34:37'),
('617e86fcff2073a168438e28b97e4a57939f6324442595228d0889a6b574cfc6f9fb8b4c6b269558', 40, 1, 'andrew', '[]', 1, '2024-03-08 05:29:14', '2024-03-08 05:29:14', '2025-03-08 10:59:14'),
('6227116f961f9f31c2c648e118f9f957dc3a27d7d19f13d27b567bf11c4739613ee8e6c8a561071f', 141, 1, 'andrew', '[]', 1, '2024-01-15 23:51:37', '2024-01-15 23:51:37', '2025-01-16 05:21:37'),
('624b3636e88b22e2fdc49c151933dcd7fbd867e3c8a0fdb7046846445efda991c07123fba3a93e6b', 72, 1, 'andrew', '[]', 1, '2024-01-05 11:34:40', '2024-01-05 11:34:40', '2025-01-05 17:04:40'),
('630d92e6db6aff829de178ae4008d91e348ddce19caed9f60280499bfb21f96258774da16af71ae6', 120, 1, 'andrew', '[]', 0, '2024-01-10 23:44:22', '2024-01-10 23:44:22', '2025-01-11 05:14:22'),
('631999b9692ec98eb039b6e742cbf6c52ae247c0bed4662f74f92c1012b387004f0f7d490e540f05', 40, 1, 'andrew', '[]', 1, '2023-10-30 00:22:45', '2023-10-30 00:22:45', '2024-10-30 05:52:45'),
('63580553332c80ecf92bd3bdd26026cc5d155cbc489ddc0f96decc827bffdfb62621b2118382d058', 78, 1, 'andrew', '[]', 1, '2023-12-29 07:21:24', '2023-12-29 07:21:24', '2024-12-29 12:51:24'),
('639f5beb61a3321094133d4b7538f9e2dfe27dbd3d085134994f29804ccc8cd7acd6bc56aad5f047', 60, 1, 'andrew', '[]', 1, '2023-10-27 03:12:20', '2023-10-27 03:12:20', '2024-10-27 08:42:20'),
('63c3bfbe59f0508cb76d13130e0241dad0963309fa6745b08a3e6e8358613ffbbae228c206290991', 14, 1, 'andrew', '[]', 1, '2023-10-23 06:36:26', '2023-10-23 06:36:26', '2024-10-23 12:06:26'),
('63d704554c2ed8eadcbba098627d712d039c0411c260d8c5a996f88f4d2b790079fe6c3246108759', 84, 1, 'andrew', '[]', 0, '2023-12-28 00:07:06', '2023-12-28 00:07:06', '2024-12-28 05:37:06'),
('63db0297bc4ab495aad4baac22c8d0aec2a295c87fe8a4a350c470e138a47f5a9d528a02fcb1fc8e', 62, 1, 'andrew', '[]', 1, '2023-10-27 03:30:11', '2023-10-27 03:30:11', '2024-10-27 09:00:11'),
('655c0805c4f9e30af2f9bc6d467f08993f94c1e01f7d529696f427e40df0b794f4833d38433c197d', 89, 1, 'andrew', '[]', 1, '2024-01-15 07:21:35', '2024-01-15 07:21:35', '2025-01-15 12:51:35'),
('65e37a1f182c821aab6d272ea66dde709a13f0a488d76a48d152bae7c58b5291f9bbabb2db056442', 83, 1, 'andrew', '[]', 1, '2024-01-10 00:53:09', '2024-01-10 00:53:09', '2025-01-10 06:23:09'),
('66ee55caf8cb21cc9bf2d63cd0f9638f4861f4cc5bdb30f1e8152ca4352fe5a4958beb0fb2dd97da', 117, 1, 'andrew', '[]', 0, '2024-01-10 07:48:26', '2024-01-10 07:48:26', '2025-01-10 13:18:26'),
('687122d329a9da0da0186a6e798d3629d27d065640dccaa69daeb87dabf2348aff7e5c92b064ed0c', 69, 1, 'andrew', '[]', 1, '2023-10-27 08:37:05', '2023-10-27 08:37:05', '2024-10-27 14:07:05'),
('6964d8d581e9e3061fa47922ce70967fcf3ca0c54d774e91ec25a687ca8401c37dc0962ac380ab38', 90, 1, 'andrew', '[]', 0, '2024-01-15 05:07:49', '2024-01-15 05:07:49', '2025-01-15 10:37:49'),
('6a2747ad591b8b7329c6fc7d371acce54cbfeff3336d350b6084ec76cd6f05df50a1cf405a53ff42', 64, 1, 'andrew', '[]', 1, '2023-10-27 07:14:37', '2023-10-27 07:14:37', '2024-10-27 12:44:37'),
('6be9ab4e325dd6ef8db7f402907ff2316dde3c383e8a537deac04121fde9e7a76575b0b93247a152', 83, 1, 'andrew', '[]', 1, '2024-01-11 04:17:21', '2024-01-11 04:17:21', '2025-01-11 09:47:21'),
('6c47b0bd84289b27a762d3a786e224a07919e74013e83360d291ad4a3dad0d49703ad7900aee336b', 40, 1, 'andrew', '[]', 1, '2024-03-09 05:11:39', '2024-03-09 05:11:39', '2025-03-09 10:41:39'),
('6cda0f74a4a29703348d34b9e4032444f34c6bf2a7e1260f4b283555be1cba4a01e9b55a68d5a940', 159, 1, 'andrew', '[]', 0, '2024-03-07 02:35:18', '2024-03-07 02:35:18', '2025-03-07 08:05:18'),
('6efee6ac3d3847466a53858bc729a77ab775ca81e6cb22b35c0b7b4db4c96ac912f20baf9b0eea58', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:35:41', '2024-01-11 08:35:41', '2025-01-11 14:05:41'),
('7255aad4b070e2cef0de0a108ad7a8e4221063b3a016352964f1699b17288df424bd4c4db20f8acd', 138, 1, 'andrew', '[]', 1, '2024-01-15 23:44:22', '2024-01-15 23:44:22', '2025-01-16 05:14:22'),
('72eb6199dac305c8f1bdfc34211644977ec0c6b9e43ee7f2b0295973c174060ef93cc749b593d01c', 83, 1, 'andrew', '[]', 1, '2024-01-08 05:17:42', '2024-01-08 05:17:42', '2025-01-08 10:47:42'),
('739f655b847599c78ab3af01c18ed333ffa8198d619080222e472c7819864650b0c375cdf3ee6a03', 83, 1, 'andrew', '[]', 1, '2024-01-05 05:30:47', '2024-01-05 05:30:47', '2025-01-05 11:00:47'),
('73e27c8492473b746a4d731d3635c6b681b4115c54f5f9fcad84dc6db6ff7a5a3dc12a03b7e17c8d', 39, 1, 'andrew', '[]', 1, '2023-10-25 06:08:16', '2023-10-25 06:08:16', '2024-10-25 11:38:16'),
('73e8e1b52597e0764ac8721d486a99eb36c02143992f322ed4d18ecc433b7a165b762e8e97a5ebd9', 40, 1, 'andrew', '[]', 1, '2024-03-09 01:26:14', '2024-03-09 01:26:14', '2025-03-09 06:56:14'),
('744564355f698de93b341d4b19089785657deeab7a9983cb6163c3dd6d4b0ecc82c203392d24ecec', 14, 1, 'andrew', '[]', 1, '2023-10-25 05:51:46', '2023-10-25 05:51:46', '2024-10-25 11:21:46'),
('74c26188a799881fbbe10990cc5440635c440e4169e323b7318f04b901825502bd6f80f5317e8ece', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:25:45', '2024-01-04 22:25:45', '2025-01-05 03:55:45'),
('74f206dd846855f57b5334bccd86f2da8d1e93735a91654a317f79fd6b1c0dcd7462c570adada60f', 23, 1, 'andrew', '[]', 1, '2023-10-23 23:17:50', '2023-10-23 23:17:50', '2024-10-24 04:47:50'),
('7501ec97393f393a798f14090340731fee785bfea1843a88cc8548a23f48e80532f50d80c220b8e6', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:11:26', '2021-11-15 07:11:26', '2022-11-15 12:41:26'),
('751806a02b1c5b21e4010a37b429603446acfb22008e393b0d67cebbc9af67cae7e4a3c8a2dcdad9', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:47:04', '2023-10-24 01:47:04', '2024-10-24 07:17:04'),
('75890b52dc0110c6ad8b19b740476e406e40b8c67e92429f4d5b6a199809babb87465e1a52eb2cc5', 121, 1, 'andrew', '[]', 1, '2024-01-11 08:11:58', '2024-01-11 08:11:58', '2025-01-11 13:41:58'),
('75a8fe7a089a15f6b682ae98365728dc32d14081bbbf3d891b6a62e53d054105b991a4ddd2e82db4', 16, 1, 'andrew', '[]', 1, '2023-10-31 03:56:51', '2023-10-31 03:56:51', '2024-10-31 09:26:51'),
('75d9ae9f41fc271391e51fa089b710c66588ccbaa7523594c043ae18a8932e88eb54f68422fa55a5', 40, 1, 'andrew', '[]', 0, '2024-03-12 07:31:29', '2024-03-12 07:31:29', '2025-03-12 13:01:29'),
('769c2ecc2cc159440cc6286ceffca7f66ab78739535f59e1b8f9883f5b5e40f1b1696ef23d849a5e', 28, 1, 'andrew', '[]', 1, '2023-10-24 09:48:06', '2023-10-24 09:48:06', '2024-10-24 15:18:06'),
('77389f402a0468a079d76e4eb145cfa935cf535bbfd37dfd93d7bd580d5412880419550298755521', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:39:05', '2023-10-26 04:39:05', '2024-10-26 10:09:05'),
('77a5af94321b325a1e796ec70b31ef05ae2fe363466598631ecdddae758f75c6d87df466895a9d54', 109, 1, 'andrew', '[]', 0, '2024-01-10 00:14:53', '2024-01-10 00:14:53', '2025-01-10 05:44:53'),
('77fc5f4230e5ff8c9a24b6b5bdbe51b91d734c2afe22b57a06eeca576141e2d09576180cfd73c2b2', 73, 1, 'andrew', '[]', 1, '2023-10-27 10:00:14', '2023-10-27 10:00:14', '2024-10-27 15:30:14'),
('79192e5e9b0a6e93031547ca4e691498835e8088c65ea406fa9b2505842cb689e0b6a19e18802b1e', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:27:49', '2024-01-11 08:27:49', '2025-01-11 13:57:49'),
('7b57a87330ed3ce6f7ecce33d1986ccd0793c53e28cd48b1586d8f8b37a0d91bada5ef27da1d1dab', 49, 1, 'andrew', '[]', 1, '2023-10-26 07:17:18', '2023-10-26 07:17:18', '2024-10-26 12:47:18'),
('7ba6bb6fed13777ef6e95280489c008ec4c40d5a5c128aa71c2cd16fcaa275851cfd0a2b6a9990ad', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:38:58', '2023-10-24 01:38:58', '2024-10-24 07:08:58'),
('7be1bbc0717e0e6600a16551fbd0f68c556a7510a1f3cff0ee6674edc0af116e8c72be4ccd706cf0', 16, 1, 'andrew', '[]', 1, '2023-10-26 00:54:26', '2023-10-26 00:54:26', '2024-10-26 06:24:26'),
('7c3c35bb8ced6cff2bb1d3b3e1d4c34ef5a06167920089a6b24fae19af477650e3ec299a66c960f2', 151, 1, 'andrew', '[]', 0, '2024-01-16 02:49:36', '2024-01-16 02:49:36', '2025-01-16 08:19:36'),
('7e1de419c07c8218000cf9c9ede651984cb6731a2727b6f4458f8a7fd8db2893ec7a8c53ff469b4a', 165, 1, 'andrew', '[]', 0, '2024-03-08 00:38:17', '2024-03-08 00:38:17', '2025-03-08 06:08:17'),
('7ec7f23f411ee1b35e78d5477f00a9266d933db93aef2b15081af95146348b020143f8c7ff7efed6', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:32:11', '2023-10-26 04:32:11', '2024-10-26 10:02:11'),
('7fa8a94a7e9f565e7e480610a8e1c4e75322ef66fcdabde14dae8d8adc10f2a0ee525c6d3c7332d2', 16, 1, 'andrew', '[]', 1, '2023-10-23 08:02:35', '2023-10-23 08:02:35', '2024-10-23 13:32:35'),
('7fed57949151dbe02b17133262a8d4a0f988db6fb5ef55cd2c5a6c48350d212855706c62d9bda9ef', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:59:00', '2021-11-17 04:59:00', '2022-11-17 10:29:00'),
('804a68be66e5062ec48d027c3d638111adc2e54294001822d33a46b9b2a6d5afde4fccf901125991', 36, 1, 'andrew', '[]', 0, '2023-10-25 03:09:12', '2023-10-25 03:09:12', '2024-10-25 08:39:12'),
('80d455b3839f36e309c311292e0c6f16214f28e85071e4ade68a8a4d3c1b4b90efe29482efa0f7b2', 97, 1, 'andrew', '[]', 1, '2024-01-07 23:38:10', '2024-01-07 23:38:10', '2025-01-08 05:08:10'),
('812760d17b0894cbdaa874225b51abe0a567f1c17ac156c6b20a6b9a551270538dcadd6429a171dd', 168, 1, 'andrew', '[]', 1, '2024-03-12 02:42:26', '2024-03-12 02:42:26', '2025-03-12 08:12:26'),
('8150e1770865e287f27815bd3a72e49ee82a8583b9c0e1250b8aecccc2576acd2496bac283657f95', 16, 1, 'andrew', '[]', 1, '2023-10-26 01:30:18', '2023-10-26 01:30:18', '2024-10-26 07:00:18'),
('83c6b16573dfeaeba4e34418b423f5f124bb44efbeeecf6f0d691696a44898005ed3d43ae6db9b4d', 5, 1, 'andrew', '[]', 0, '2021-11-16 12:41:36', '2021-11-16 12:41:36', '2022-11-16 18:11:36'),
('842d585388586d01f5204dcef86e5134aeb3632747d5c4a8eba3013f2257d591b2bd512e9860b97d', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:28:16', '2024-01-04 22:28:16', '2025-01-05 03:58:16'),
('871c636fe31bf540119ac322587dd07df47e7f5d1e5d9e238b7b767b58fc6ff07573970c3755fec1', 16, 1, 'andrew', '[]', 1, '2023-10-27 01:50:36', '2023-10-27 01:50:36', '2024-10-27 07:20:36'),
('8956023b01357d5f6d1ffa1c088db0a71f52478015bfdcd74f32ecf0b6757aad212e7a348b8de3f3', 86, 1, 'andrew', '[]', 1, '2023-12-29 04:21:46', '2023-12-29 04:21:46', '2024-12-29 09:51:46'),
('8a51987cd9f912dafa6ff5df8b141e9338c20dedc9796030c96562ca81fbab5cc91a13ee3417c552', 57, 1, 'andrew', '[]', 1, '2023-10-27 03:04:35', '2023-10-27 03:04:35', '2024-10-27 08:34:35'),
('8af072881866a3b09fdc77b490454d901f5d164220b2ec009052f034850d7c8b4e215afea3b93c2a', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:01:01', '2021-11-12 13:01:01', '2022-11-12 18:31:01'),
('8cac2059bcfa6331e4e7ca2d881464e9b6891c8721f64aa0e1cfe0e73ec335b35fcfd07eb0be279f', 40, 1, 'andrew', '[]', 1, '2023-10-26 07:51:02', '2023-10-26 07:51:02', '2024-10-26 13:21:02'),
('8d676183462b39ef4b777f698b4266a2b5c8665bd91a6f55f7ceb12a37ca6c675a2a80059d6da367', 40, 1, 'andrew', '[]', 1, '2023-10-27 05:58:14', '2023-10-27 05:58:14', '2024-10-27 11:28:14'),
('8ec1ed5761e780ccf656d26282a8a7e3827b51a37721c605403b1b0e170d403e88e3b7cd0187563c', 90, 1, 'andrew', '[]', 1, '2024-01-09 08:10:18', '2024-01-09 08:10:18', '2025-01-09 13:40:18'),
('8f01e6d4c1b0880fcc563634825bfd44a4b2e3feecf208b71d8605d28d5b719717bc90ec7f7d8e57', 134, 1, 'andrew', '[]', 0, '2024-01-15 04:30:46', '2024-01-15 04:30:46', '2025-01-15 10:00:46'),
('8f5a8d757254304aabacf94dac7533bce43a6f62548dbe5b6dda8bc14c1cb516521d02cc02f9ecf6', 83, 1, 'andrew', '[]', 1, '2024-01-03 01:42:01', '2024-01-03 01:42:01', '2025-01-03 07:12:01'),
('907d57f9c9ca3e5f5d5731751d637603d71d1bc4d86e395210837d87fb4b79f5b8f185a313c44b5a', 40, 1, 'andrew', '[]', 1, '2024-03-12 00:14:11', '2024-03-12 00:14:11', '2025-03-12 05:44:11'),
('90a684f91506302068985324dfe387b1bbfcdc46f3e017acf0b380ddceed541c7a7e48cec2282333', 161, 1, 'andrew', '[]', 0, '2024-03-07 04:41:31', '2024-03-07 04:41:31', '2025-03-07 10:11:31'),
('915b36a6a5f221898da330964b269532050d43ccd289e1ee27898212de8116897288b2ed16912760', 11, 1, 'andrew', '[]', 1, '2022-01-25 11:05:26', '2022-01-25 11:05:26', '2023-01-25 16:35:26'),
('916c135f021660211deab9fbdae3dd7ad378ecc176718641625d8374cee2e0178638de4161dc4ca4', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:09:13', '2023-10-26 04:09:13', '2024-10-26 09:39:13'),
('9177bc6877cdcd2f9dc5db923073e4e67339f42e63165bf9939ce715d2ec72f704c8db3d16203da3', 133, 1, 'andrew', '[]', 1, '2024-01-12 06:02:51', '2024-01-12 06:02:51', '2025-01-12 11:32:51'),
('92ad9b4dde604757cd4bd892c28c88ce799ed0583052b09d461d74348a992ad77670d8c7a582a32f', 3, 1, 'andrew', '[]', 0, '2021-11-15 05:17:25', '2021-11-15 05:17:25', '2022-11-15 10:47:25'),
('937f0236dc30506158d07387330cd63c1888745fff448b0dfdcf8a1f68755cd81b18834441724f99', 122, 1, 'andrew', '[]', 0, '2024-01-11 08:38:18', '2024-01-11 08:38:18', '2025-01-11 14:08:18'),
('942826f87f47b969a3020409fbf518dc6588a6a27f78598c2ea30b6bd34aeb4b41f0fd885679f4ab', 90, 1, 'andrew', '[]', 1, '2024-01-11 00:37:02', '2024-01-11 00:37:02', '2025-01-11 06:07:02'),
('9486dcbf70ae479480ea4f40c4be04a008845743735fa7fc4f7521fac06e177f8b21c42a39462173', 90, 1, 'andrew', '[]', 1, '2024-01-12 02:29:46', '2024-01-12 02:29:46', '2025-01-12 07:59:46'),
('9540e23e38235bef519d6d539a961131c2ace3845be3953eb7c9ffc6041648220f559e4e0404ca02', 16, 1, 'andrew', '[]', 1, '2023-10-25 05:57:13', '2023-10-25 05:57:13', '2024-10-25 11:27:13'),
('963cd361cf5e76cceb5a39f861e2b619140fc35f7a1c5e44115871776be91c57bbc508c40f81b50b', 40, 1, 'andrew', '[]', 1, '2023-10-26 07:26:44', '2023-10-26 07:26:44', '2024-10-26 12:56:44'),
('96feadcbfc4663240df2e4ef8aeff4e62212e914e3cc2e49730a99419b2c155ac7fb648085dc519f', 90, 1, 'andrew', '[]', 1, '2024-01-10 10:58:24', '2024-01-10 10:58:24', '2025-01-10 16:28:24'),
('971162c3fcb887db16099ee7c4314249bc679e3d2e1486bb9b37344974c11a518dfd610427135e91', 16, 1, 'andrew', '[]', 1, '2023-10-24 07:57:17', '2023-10-24 07:57:17', '2024-10-24 13:27:17'),
('9806cdb4a79e2ef5a2766809a295e72838581cc97b8b5be9e4447581d3f9635e1a57ffc01bc247b2', 140, 1, 'andrew', '[]', 1, '2024-01-15 23:51:19', '2024-01-15 23:51:19', '2025-01-16 05:21:19'),
('99c65e2d53ac17a376e422d10356bf79b7c6da4d88171f6ed4577037bbb0752578218f57aad1afe0', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:41:56', '2023-10-26 04:41:56', '2024-10-26 10:11:56'),
('9a63f50c3580c69f0b901a5dfa2f31ba97691f9dc04f24ab252d2229bd914805ab5c3f3ac6166cd2', 144, 1, 'andrew', '[]', 1, '2024-01-16 00:07:55', '2024-01-16 00:07:55', '2025-01-16 05:37:55'),
('9ac25a0edbab5472d4eb3d1af1219cce7906f1cbb0d9ca553647f8742b4a9a73e5609fa46c4eb0de', 16, 1, 'andrew', '[]', 1, '2023-10-27 01:48:03', '2023-10-27 01:48:03', '2024-10-27 07:18:03'),
('9acff9ddca8bfe90b94281022a7fb44484df7110eaae5bd9d78ca9c2a5009f8ae725e2ab82608e25', 89, 1, 'andrew', '[]', 1, '2024-01-12 02:39:30', '2024-01-12 02:39:30', '2025-01-12 08:09:30'),
('9b406c42e1493bf6ce3cc08fc380342aa5e68305f71700d3570dc19852bb194a0cd688d11f0c9b9b', 63, 1, 'andrew', '[]', 0, '2023-10-27 03:37:43', '2023-10-27 03:37:43', '2024-10-27 09:07:43'),
('9c7bc7782a31e731a3dd6a023047eeec0a1d97f4264722efe7b2614deba0b97f605ae623a6a9959c', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:10:28', '2021-11-15 07:10:28', '2022-11-15 12:40:28'),
('9ce81168a3ca184aceab0e84d674a9222d07a9ad12f53fc3822154df7b2ce92b7ec9c73669e9d606', 45, 1, 'andrew', '[]', 1, '2023-10-26 06:18:28', '2023-10-26 06:18:28', '2024-10-26 11:48:28'),
('9d7ccac09a925bc7ed004ff6aaac2e3b0d6c8e65c27086ab7d89fa2e0b288a5983929d72aba0c6d2', 96, 1, 'andrew', '[]', 0, '2024-01-05 01:51:10', '2024-01-05 01:51:10', '2025-01-05 07:21:10'),
('9d933e93687e6993aa54d6add8e32302ff9a5bb36200eaf51fd5f22fa6f63f0ee627c0d71e4022b3', 83, 1, 'andrew', '[]', 1, '2023-12-21 06:48:17', '2023-12-21 06:48:17', '2024-12-21 12:18:17'),
('9e50118d231dd01261bcd35841e2244ab7c2156dc28a23e1e07438dfe5ed24e97e4c07244027c7e4', 72, 1, 'andrew', '[]', 1, '2024-01-11 06:00:41', '2024-01-11 06:00:41', '2025-01-11 11:30:41'),
('9eef35afee5006e519d73f3e78a3170112179fe8f09517c5d7a25bec81da46468b5bc90062106620', 6, 1, 'andrew', '[]', 0, '2021-11-17 05:57:13', '2021-11-17 05:57:13', '2022-11-17 11:27:13'),
('9f98004a2a9af700aa5d1140d60c903114212a3f5c10df9a55cd8bb4ad4d914bf26242459505e2a1', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:12:00', '2021-11-15 07:12:00', '2022-11-15 12:42:00'),
('a00327c5b8d30f3346738fed529fcc299f111809c49d508104588da1bd35e9f75632c76044b985ea', 89, 1, 'andrew', '[]', 1, '2024-01-16 00:21:32', '2024-01-16 00:21:32', '2025-01-16 05:51:32'),
('a1272b57cfb137c865188dbc88d7db8d916bf03359d4ded34bca0acba44321f57c65316ea2ca6860', 90, 1, 'andrew', '[]', 1, '2024-01-15 00:02:49', '2024-01-15 00:02:49', '2025-01-15 05:32:49'),
('a16de7d3e2d0c2d1718ff4821214bb00c4e055ed61393c9b8e9bab838aebced6f29a1333ffadff8b', 2, 1, 'andrew', '[]', 1, '2021-11-12 13:44:12', '2021-11-12 13:44:12', '2022-11-12 19:14:12'),
('a23d329b4836ac794ed6355a9702b0f28593aa44bf9d168d4d36627db012e3147b3fa7e3a4a31243', 90, 1, 'andrew', '[]', 1, '2024-01-10 01:55:38', '2024-01-10 01:55:38', '2025-01-10 07:25:38'),
('a30deede91e0cad60d6b35ac5428b4470e6d4bbb37d5f77c82825de96dfc84a3d5f04afebfe1aae5', 11, 1, 'andrew', '[]', 0, '2022-01-26 23:30:15', '2022-01-26 23:30:15', '2023-01-27 05:00:15'),
('a41041bd26bb1bc2437fa642c0fbd99991f6989ef0df23bf797d6251ab8d763c10870e2ac0aa00f7', 16, 1, 'andrew', '[]', 1, '2023-10-26 02:25:23', '2023-10-26 02:25:23', '2024-10-26 07:55:23'),
('a4f7ed28bab776af08108ae438cf007a57e21d5d3bde845e140a85a7a16887f286eecd81633d31df', 66, 1, 'andrew', '[]', 1, '2023-10-27 07:32:31', '2023-10-27 07:32:31', '2024-10-27 13:02:31'),
('a58bfb0a7c69aa691b50261c86d9d8d0af73948d310d21faf4c4c21c6f2ed35071517ebfc9856972', 40, 1, 'andrew', '[]', 1, '2023-10-30 01:12:26', '2023-10-30 01:12:26', '2024-10-30 06:42:26'),
('a5b3587a598a053484bfced051e5130723d231e99571acb3259c8d87607cf3b51e5fbe6f139522b6', 40, 1, 'andrew', '[]', 1, '2024-03-12 01:59:35', '2024-03-12 01:59:35', '2025-03-12 07:29:35'),
('a608ba43a7f52250d19ca2479fce3a73fdc743160239cb36bbf7ee42631e62893984ac7320ad7f7b', 22, 1, 'andrew', '[]', 1, '2023-10-23 10:41:38', '2023-10-23 10:41:38', '2024-10-23 16:11:38'),
('a71eb6aa03ab8bdf3acae1b41702fe50562ddcf2b9169b02f570c3aaacb043989b8dcedfd7933461', 14, 1, 'andrew', '[]', 1, '2023-10-23 06:40:45', '2023-10-23 06:40:45', '2024-10-23 12:10:45'),
('a720c9ecb7b8a73f44a171ef119095ec302389eac7bed3a4e454a994202df75ae118ed0c87bae5f8', 167, 1, 'andrew', '[]', 1, '2024-03-11 00:46:13', '2024-03-11 00:46:13', '2025-03-11 06:16:13'),
('a7877920b57f0a01daa73668a88c47a6eaa9f897e53795f6dfad879360d7dd1ffac6fe4853f94acb', 55, 1, 'andrew', '[]', 1, '2023-10-27 04:06:45', '2023-10-27 04:06:45', '2024-10-27 09:36:45'),
('a821428f12453792eec3794ce06f919e80fca1f510a8d492a6dd1010cb175940d5e6c49e4df01a2e', 20, 1, 'andrew', '[]', 1, '2023-10-23 10:13:59', '2023-10-23 10:13:59', '2024-10-23 15:43:59'),
('a8817f87bb495c661500940196851dc57f478c2b089c8965d2c74881e546c57513356cc3d7901f9e', 83, 1, 'andrew', '[]', 1, '2024-01-05 02:17:01', '2024-01-05 02:17:01', '2025-01-05 07:47:01'),
('ac0f79cf2e1744687eed604cf76d6d76a2976426d0fbbe48c6f8f7fa4f291dcaa4e5b63071ad1cd1', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:40:25', '2023-10-24 01:40:25', '2024-10-24 07:10:25'),
('ac34496a7fa909933899346964c5a3dfdfcc1f187a37ec50d11d6cc5a4dc7c15464aba4b1f0d0be2', 9, 1, 'andrew', '[]', 0, '2021-11-17 06:26:46', '2021-11-17 06:26:46', '2022-11-17 11:56:46'),
('aec7a7306ed5685f3cd51a5650d1325fe03206c5794586a2d78673bd9a691fa8862b5e5cebde4e22', 14, 1, 'andrew', '[]', 1, '2023-10-29 23:54:19', '2023-10-29 23:54:19', '2024-10-30 05:24:19'),
('afe797a786577e66ca9a2e92e6a3e5cd5d5ea352e00d557c1d60ef931ca52ab90176004912788ddf', 128, 1, 'andrew', '[]', 0, '2024-01-12 02:20:56', '2024-01-12 02:20:56', '2025-01-12 07:50:56'),
('b1113e6640a2ee8ca11cecb521aab72bcb4e3de05e93971040453b62324bfee27d37a2c600edc10a', 55, 1, 'andrew', '[]', 1, '2023-10-27 04:14:23', '2023-10-27 04:14:23', '2024-10-27 09:44:23'),
('b163b532b4a13f722a7f7873f12f7854a7c3f7c64343b17a73ef0720d7867cb36e128b62e969538f', 16, 1, 'andrew', '[]', 1, '2023-10-25 02:09:20', '2023-10-25 02:09:20', '2024-10-25 07:39:20'),
('b1714a6bebb3b7d42ef1fd03051ba00bee957d0caefbfae4225fbf3929d0339b5f40acab49d0fc27', 29, 1, 'andrew', '[]', 0, '2023-10-24 10:05:28', '2023-10-24 10:05:28', '2024-10-24 15:35:28'),
('b1799f8f7850627945a7988813cfabcb2cd25806b5481e0e62e2e2cf23d682cc2d7958f83cec8c05', 13, 1, 'andrew', '[]', 1, '2023-10-20 07:10:49', '2023-10-20 07:10:49', '2024-10-20 12:40:49'),
('b207369ba96f6469a2d1a314d23eb77690a167944fd2bd2253f44d52db60cdb3bf0e1f580f35bb20', 51, 1, 'andrew', '[]', 1, '2023-10-26 07:24:59', '2023-10-26 07:24:59', '2024-10-26 12:54:59'),
('b22f782a9a93ad469a06dcf029a3e95844f945f751dee8906edba3fdd3c36619dc5af03a5343168f', 65, 1, 'andrew', '[]', 0, '2023-10-27 07:17:36', '2023-10-27 07:17:36', '2024-10-27 12:47:36'),
('b24328dca466c88a243695e84139a7cd41a43ece10b84d2c603a7152a985f5c76fd43bcc38bf5b95', 14, 1, 'andrew', '[]', 1, '2023-10-24 01:49:28', '2023-10-24 01:49:28', '2024-10-24 07:19:28'),
('b2e92a079261fda1fc4572c49fe30639307fc1bd545d1f79c73904cb015082f0f08350df5815a515', 107, 1, 'andrew', '[]', 1, '2024-01-09 09:58:06', '2024-01-09 09:58:06', '2025-01-09 15:28:06'),
('b2f46e35d4895f1ecbc3dcec57ee7b426760315466b21a1b4a7f2d1e91422879483cfc3ead21fff2', 40, 1, 'andrew', '[]', 1, '2023-10-27 01:18:56', '2023-10-27 01:18:56', '2024-10-27 06:48:56'),
('b30611e28ba3abecf73a79be1a686aacc6f7b48466f822b2f422a434341b5626e9b13dda908e29ce', 90, 1, 'andrew', '[]', 1, '2024-01-10 03:20:54', '2024-01-10 03:20:54', '2025-01-10 08:50:54');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b3db92b671d3abc455f65c4651e97e75c183377dec47249eb86635ee1d65b5a2925cdc1c2826f6e3', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:32:46', '2024-01-11 08:32:46', '2025-01-11 14:02:46'),
('b4f7d6a8264bf46451f327888cb894c18bf0645d0329ef062cd2d876d1bf45f2bcd1e8d40659a682', 33, 1, 'andrew', '[]', 1, '2023-10-24 23:37:18', '2023-10-24 23:37:18', '2024-10-25 05:07:18'),
('b5cd70a78e929e86a34a04a65701eaa54cde7c45c0750c6e686430d1f369c21a6381220423e92b7f', 33, 1, 'andrew', '[]', 1, '2023-10-26 04:50:46', '2023-10-26 04:50:46', '2024-10-26 10:20:46'),
('b5d4dee80aaa47387e99582ae15b5238a3411e93e322fb7fc4ba1476c034f69c87e6e59280fe958b', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:43:41', '2023-10-24 01:43:41', '2024-10-24 07:13:41'),
('b5f5e1b19414f17eba34887585f231a81d5458a1dea5611a17a276bba7f23a4e50c2979c6d1f390a', 115, 1, 'andrew', '[]', 1, '2024-01-10 05:42:54', '2024-01-10 05:42:54', '2025-01-10 11:12:54'),
('b77ad35aa07fa836fd19226093c8b89a9407258275b3bc7594c639c2c8d76cd12def8b0c0eb7d90b', 16, 1, 'andrew', '[]', 1, '2023-10-24 23:02:45', '2023-10-24 23:02:45', '2024-10-25 04:32:45'),
('b7a2236e9d4b778955340dd5a5146a38ae0ad33cb4ca4cac350ce7e89bb570a8f13c40397d289242', 40, 1, 'andrew', '[]', 1, '2023-10-26 02:14:23', '2023-10-26 02:14:23', '2024-10-26 07:44:23'),
('b7cd8e4f3c01daa92a317060d29c0aa51a720532bda0cea32f65fd661b9b67d7fc7d7693ffc760f9', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:33:58', '2024-01-04 22:33:58', '2025-01-05 04:03:58'),
('b815c9cfaeadd1560c284deaee27de0a4b48588b1b3ff8eb6759626e402cafe90e78949ee7b11651', 16, 1, 'andrew', '[]', 1, '2023-10-27 09:27:04', '2023-10-27 09:27:04', '2024-10-27 14:57:04'),
('b964833297fbb3f7c20ad485fab0a982d27e71398fd6e5659c3bff4c88c4d04500925e20e35c543b', 40, 1, 'andrew', '[]', 1, '2024-03-12 01:14:36', '2024-03-12 01:14:36', '2025-03-12 06:44:36'),
('bb23c4d81081f77956756b7ca19b8f2c8564ea78598be745054dad310426eca5908baed5d646e8ed', 89, 1, 'andrew', '[]', 1, '2024-01-15 01:13:47', '2024-01-15 01:13:47', '2025-01-15 06:43:47'),
('bb51a9d7765225c3fe3d686ec13647ff37f45b61756c09b2647cc74f5dbcaf8b3fcf02bc361f5b18', 145, 1, 'andrew', '[]', 1, '2024-01-16 00:14:04', '2024-01-16 00:14:04', '2025-01-16 05:44:04'),
('bb8e3ec1d94396dec959f4e10507c695fc2ac2cf29879ff8cde9e4129386a00b325a466528642f63', 56, 1, 'andrew', '[]', 1, '2023-10-27 03:00:53', '2023-10-27 03:00:53', '2024-10-27 08:30:53'),
('bb9c2e2d662fdc12657989e1ad6224f8ad85f9c35fa94f5c129868f04f9ddd865d6af48c8f9d7e39', 72, 1, 'andrew', '[]', 1, '2024-01-10 00:38:53', '2024-01-10 00:38:53', '2025-01-10 06:08:53'),
('bbec4d9a96d3436a44cd67def2e0ae1d6e482b0104ad98c000da1dccbb724b7a987ac0eaf2627917', 1, 1, 'andrew', '[]', 1, '2021-11-12 14:40:17', '2021-11-12 14:40:17', '2022-11-12 20:10:17'),
('bc24676245c61e2f823a7288e02e75fe0d24caba1a1c0af1833143a039b70053762632e1847bea8c', 72, 1, 'andrew', '[]', 1, '2024-01-10 11:13:28', '2024-01-10 11:13:28', '2025-01-10 16:43:28'),
('bc3e8e53636c0c25290123aacbf4d2c5b52d5f74eef742554d1f309cf35670cabd034936da698a13', 75, 1, 'andrew', '[]', 0, '2023-10-27 10:39:55', '2023-10-27 10:39:55', '2024-10-27 16:09:55'),
('bcdb75b048b2e6db19006bd0037a5ffe27a59dbc391df9671d29c6bc4b7d032f916aed4881586bca', 110, 1, 'andrew', '[]', 0, '2024-01-10 01:25:42', '2024-01-10 01:25:42', '2025-01-10 06:55:42'),
('bd9bb4dabf445473ffd8b06a075d08284ab0aad13d93da9b121ae0bb86ef3d6de260293f63ccc691', 139, 1, 'andrew', '[]', 1, '2024-01-15 23:46:27', '2024-01-15 23:46:27', '2025-01-16 05:16:27'),
('be18e4f0d5fbe4400ec846b2cf940b7cec6fee30df03006fcc832c13680e28fabaece160443c849c', 35, 1, 'andrew', '[]', 1, '2023-10-25 01:54:27', '2023-10-25 01:54:27', '2024-10-25 07:24:27'),
('be2512125bfcefd7f4d43c53d9165f58c9c0ea937795f368da78e2008ad5dbd576499bc55d356c4e', 89, 1, 'andrew', '[]', 1, '2024-01-15 04:50:35', '2024-01-15 04:50:35', '2025-01-15 10:20:35'),
('be5abc9b7ce0c9bea226e681465a292dd5bfa23664e1167aaa626ab6d1e32bb10327442823aa3df2', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:32:20', '2024-01-12 05:32:20', '2025-01-12 11:02:20'),
('be6baf1e7b2ee0515766852d8d2a652c80ee5cf96808a968097fb6a9c94f9288bee58b19aeb27a32', 59, 1, 'andrew', '[]', 1, '2023-10-27 03:10:54', '2023-10-27 03:10:54', '2024-10-27 08:40:54'),
('bee6ab153006d7f7b6397c06a512dd086ae9b710da1965e6d2a0f9a345481192e264ae1c2fd747e4', 16, 1, 'andrew', '[]', 1, '2023-11-02 04:30:17', '2023-11-02 04:30:17', '2024-11-02 10:00:17'),
('bf716b58510afd15f46913d23d40bb40dae5dc612d279b4af614db6b8b28988ecf950043952a0ffe', 80, 1, 'andrew', '[]', 1, '2023-12-21 01:20:38', '2023-12-21 01:20:38', '2024-12-21 06:50:38'),
('c05779a830c747743e23c3db88df1cc07ce1bea94f7adcdea0d1f34298fabc4cfcd1537b7c2329f6', 142, 1, 'andrew', '[]', 1, '2024-01-15 23:54:23', '2024-01-15 23:54:23', '2025-01-16 05:24:23'),
('c0798d5507d8c177779639814377e2126daa63a2237e60c4d7b4a1697111bd2d0a958ca6fce3693a', 30, 1, 'andrew', '[]', 1, '2023-10-24 10:21:40', '2023-10-24 10:21:40', '2024-10-24 15:51:40'),
('c0a7de5c9c5a5285056d346469c0bebd8b3729b412868e5da5fd28a9b2707fcf38ab04a319da0c4c', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:22:24', '2024-01-04 22:22:24', '2025-01-05 03:52:24'),
('c190437ca2ba78763a6b3f5ed7adbdb9b448d7a455dad26df7292e8bbb5c70e1253b6c18ec9373bf', 89, 1, 'andrew', '[]', 1, '2024-01-06 02:39:39', '2024-01-06 02:39:39', '2025-01-06 08:09:39'),
('c19642b8bd9feefc4682f199ddac4bf490a0717d1ba6b81555e40eb89b46c62e103b7140c934c843', 124, 1, 'andrew', '[]', 1, '2024-01-11 10:05:02', '2024-01-11 10:05:02', '2025-01-11 15:35:02'),
('c2fdf427794ba6bc528ecc5adc1496013f891a26138b0d1b9629e69673308c4d5941c818c371b7ea', 116, 1, 'andrew', '[]', 1, '2024-01-10 07:39:33', '2024-01-10 07:39:33', '2025-01-10 13:09:33'),
('c3692d0c8663323222c56533f43c3e178667ea7bed15bd4adc39635a3df2f77d40eb0db0464a6e74', 127, 1, 'andrew', '[]', 0, '2024-01-12 00:29:27', '2024-01-12 00:29:27', '2025-01-12 05:59:27'),
('c3ef4dfd6ecfad82b7f27d2072e9866d0f87f6fd8c3050c5ef610a7305561dce76be65750a3cef73', 55, 1, 'andrew', '[]', 1, '2023-10-27 03:04:24', '2023-10-27 03:04:24', '2024-10-27 08:34:24'),
('c46728195729d6dc00084b3642e59739879264e42ace1ea2d519b4c020f3619979a4063a8cfa75b6', 163, 1, 'andrew', '[]', 0, '2024-03-07 05:45:07', '2024-03-07 05:45:07', '2025-03-07 11:15:07'),
('c50f71622415486968dd07a90420d40b7c50eb3c5a333a21e426570fcacc0fdb0f6274b6746ae3f9', 72, 1, 'andrew', '[]', 1, '2024-01-10 09:39:26', '2024-01-10 09:39:26', '2025-01-10 15:09:26'),
('c596e60773d41e8afba508d2ce6ed55dc0187be760b55520b27e5f5a119897809cd47ef163a6d626', 16, 1, 'andrew', '[]', 1, '2023-10-30 00:34:11', '2023-10-30 00:34:11', '2024-10-30 06:04:11'),
('c5e7bd83d8916d8717741509cd92786211a60aa2f4a843801cb05642a6d178d7797de43f975f0352', 67, 1, 'andrew', '[]', 1, '2023-10-27 07:39:36', '2023-10-27 07:39:36', '2024-10-27 13:09:36'),
('c61a5416b80af63007e41c56727da5f6b7325e453528d5fca4381273c09794dbe46cc7a9e89e70ff', 105, 1, 'andrew', '[]', 0, '2024-01-09 08:56:56', '2024-01-09 08:56:56', '2025-01-09 14:26:56'),
('c77ec2d20cbb19c44a625af84a9af90e5d684e58064fdd9d138db2087782f1a4942937c23e03f364', 91, 1, 'andrew', '[]', 0, '2024-01-02 05:54:07', '2024-01-02 05:54:07', '2025-01-02 11:24:07'),
('c7987e8dcedb9c80a4bac2c703cba2463f445fc359a8d74f0d173a29a7887f31d1d386a26350c3aa', 95, 1, 'andrew', '[]', 1, '2024-01-04 23:24:10', '2024-01-04 23:24:10', '2025-01-05 04:54:10'),
('c79e8db4aaeaccb4af824440c6e7c2b3af3078a1645bdb26ad1820a44f1dc20f18a651e23101f685', 104, 1, 'andrew', '[]', 1, '2024-01-09 08:13:25', '2024-01-09 08:13:25', '2025-01-09 13:43:25'),
('c7aa4d76ebe8a322f32a5c74e97e1cb701ac7a1634e22c8073aa1c103f88ae45cea2696d958e6684', 126, 1, 'andrew', '[]', 1, '2024-01-12 00:06:26', '2024-01-12 00:06:26', '2025-01-12 05:36:26'),
('c7e105453f79991a5e12c1f491f9dc4041dc4cc4bbf178dc51bd7f63b82539dfe84498a289584dde', 25, 1, 'andrew', '[]', 1, '2023-10-24 01:55:29', '2023-10-24 01:55:29', '2024-10-24 07:25:29'),
('c7e54a19b41ed28f3caa29db314975b5f3ff7b62c2ce1145d6392706e2171d30265b328fd93a767d', 157, 1, 'andrew', '[]', 0, '2024-03-07 00:59:16', '2024-03-07 00:59:16', '2025-03-07 06:29:16'),
('c8279ebeb4afe0dcdb715022237a97a6a1a374f131bf2f22fe19ec1f0981c66dbaee519128ef9b1b', 2, 1, 'andrew', '[]', 0, '2021-11-15 11:55:20', '2021-11-15 11:55:20', '2022-11-15 17:25:20'),
('c8ee15ded8aaab5c2cc33fb8923e8ef76fe493fb4d9396b2233d3cd2fa2bea5aed2b76d9e1a75de1', 16, 1, 'andrew', '[]', 1, '2023-10-24 06:43:53', '2023-10-24 06:43:53', '2024-10-24 12:13:53'),
('c8f58513fe04b7d5b123b80568bb51e8ffda7bba703f3c71f5eb8c1b2f71aecdbf824a18ef79288e', 23, 1, 'andrew', '[]', 1, '2023-10-24 01:39:07', '2023-10-24 01:39:07', '2024-10-24 07:09:07'),
('c9290daae7f3c27de11b6388ecd513a60bd790b99c2211f9568d942d457f6b78a5bd14e5f2767999', 89, 1, 'andrew', '[]', 1, '2024-01-03 01:26:54', '2024-01-03 01:26:54', '2025-01-03 06:56:54'),
('c93c29a7e114c66e26b9670ae58ba1d2a21a52d677b55fee351563afe7135d86c900057225cc5858', 16, 1, 'andrew', '[]', 1, '2023-10-27 04:28:39', '2023-10-27 04:28:39', '2024-10-27 09:58:39'),
('c98e3c5c9b1ce41e974050ddc58b80db0855846d69b4a90fc547553a0fb9d2ca5263cf85d5a24f40', 42, 1, 'andrew', '[]', 1, '2023-10-26 05:22:38', '2023-10-26 05:22:38', '2024-10-26 10:52:38'),
('cadeb2add3cb28960c52ef38b5229fcfc8eba60ae49d0c380e72a64f275ce87c84ddf1ab58ef7da7', 85, 1, 'andrew', '[]', 1, '2023-12-29 01:59:28', '2023-12-29 01:59:28', '2024-12-29 07:29:28'),
('cae8a3d024a3efde3c1b9ab8039d1a8e5db105bf68cffd165c5b68a9ea4847c5c96f854621c4b0b5', 147, 1, 'andrew', '[]', 1, '2024-01-16 00:18:57', '2024-01-16 00:18:57', '2025-01-16 05:48:57'),
('cb4e68d5d8e95c97cc2c30a04cf6ee30d8753b373f3f1f603a66848b7cd45ce1ea770b44e30bb968', 16, 1, 'andrew', '[]', 1, '2023-10-23 06:46:11', '2023-10-23 06:46:11', '2024-10-23 12:16:11'),
('cbcde5cf7eccab526308d60d83183194262f3aecfb48d14cc1721118b5d441017482287269dbadc7', 131, 1, 'andrew', '[]', 0, '2024-01-12 05:24:27', '2024-01-12 05:24:27', '2025-01-12 10:54:27'),
('cbd930e15a24c4d455a838804c7a7aa9b29e1123c01d4131be53a4b3f4d53110a8a2f88bd09308e4', 16, 1, 'andrew', '[]', 1, '2023-10-24 07:15:11', '2023-10-24 07:15:11', '2024-10-24 12:45:11'),
('ccb2e0a59ba297619aa728aaebe69f8d62f266a46e8f7546c2f1ea8dd8e801bf754b52b48f436613', 83, 1, 'andrew', '[]', 1, '2024-01-07 23:54:10', '2024-01-07 23:54:10', '2025-01-08 05:24:10'),
('ccfb9a8f7f2a08a3452062a6f5ead44166beb5507fe68cb53b6091432a1b0a0850920feb7292b188', 24, 1, 'andrew', '[]', 1, '2023-10-24 01:32:56', '2023-10-24 01:32:56', '2024-10-24 07:02:56'),
('ce295a15a66439e4b7668d60ebada287947d378c75f28553969e12ab8e043f529b0fb2cc6ab25ec9', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:17:23', '2021-11-12 13:17:23', '2022-11-12 18:47:23'),
('ce2af5778184aff88034f88ef518d77da4edb15e0dc29e32c3ff1690f96865c3cc6f19b4abfea309', 40, 1, 'andrew', '[]', 1, '2023-10-27 08:09:37', '2023-10-27 08:09:37', '2024-10-27 13:39:37'),
('cff71add7e2dff5e996c3cdcb13bc68764ef11a1452047f28dbfb5386db8f321faa443afd18fb718', 16, 1, 'andrew', '[]', 1, '2023-10-26 09:01:52', '2023-10-26 09:01:52', '2024-10-26 14:31:52'),
('d00c156505119cec43a64dc414e736bfe29378a269ab9e1e501c1bd48abee29435c5fd4c4f53dc7b', 6, 1, 'andrew', '[]', 1, '2021-11-17 05:01:37', '2021-11-17 05:01:37', '2022-11-17 10:31:37'),
('d0392df761082101e661dc53069eb1ca4591af4f1ffb05cef7c7d53828609be5007c2b37f14e54ae', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:31:39', '2023-10-27 02:31:39', '2024-10-27 08:01:39'),
('d12670f0f69d91f63a93847746099e749b24c94dc155a124e859f72de2c52580f08bf1dad870b7ee', 89, 1, 'andrew', '[]', 1, '2024-01-16 02:19:17', '2024-01-16 02:19:17', '2025-01-16 07:49:17'),
('d13f0e4b47da122140ac4838906be9a91e8ab2ffedcf685fe2f89d3fdf245dc53e2ff66a7204722d', 83, 1, 'andrew', '[]', 1, '2024-01-12 00:12:03', '2024-01-12 00:12:03', '2025-01-12 05:42:03'),
('d257fa7f7912bea3535fbf08f23227bf03a4614e8c35eeecc59f2c4259983aaf23848acbf35b3bf0', 32, 1, 'andrew', '[]', 1, '2023-10-24 23:06:24', '2023-10-24 23:06:24', '2024-10-25 04:36:24'),
('d41d2abce735840c3895614d4ae932dbc2184c4a8792513721567b3b50ccd606750ca2ea5d92a831', 98, 1, 'andrew', '[]', 1, '2024-01-08 00:29:06', '2024-01-08 00:29:06', '2025-01-08 05:59:06'),
('d55a4ca2107fcfeb71feb87ac1dc12c41f964a5cb3771493bb80b2b83734b8f561deeda487619e1b', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:35:47', '2023-10-26 04:35:47', '2024-10-26 10:05:47'),
('d5cbdb101299eb27ba0515f691f6325735289c9d7a7cb95ddc0c8e2ffe4cf7d5034d4935f8a4c992', 14, 1, 'andrew', '[]', 1, '2023-10-26 01:30:11', '2023-10-26 01:30:11', '2024-10-26 07:00:11'),
('d5ed74cf39b69ff94b5b6a84e94307eb45637754e69c4b5d71100f4c95f0606f1d73baf22b9acaa7', 40, 1, 'andrew', '[]', 1, '2023-10-27 02:26:54', '2023-10-27 02:26:54', '2024-10-27 07:56:54'),
('d6032c6837dd9ad8b1e1a8f0c2a3f5a145a606a12f46faf24090f7106535d07f73b71619b615c8f4', 72, 1, 'andrew', '[]', 1, '2024-01-12 00:32:24', '2024-01-12 00:32:24', '2025-01-12 06:02:24'),
('d60d9c11c1075875c7789e19622957cf3434b4e38f8bd645c466acb03ef9ee373040e7744820f5c8', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:09:47', '2024-01-11 08:09:47', '2025-01-11 13:39:47'),
('d6ea1a4f431c3fb586812d854520f7dc9548660e1c06be38cae11a82ee76aa6eac5e1c7345a1b4d6', 102, 1, 'andrew', '[]', 1, '2024-01-09 07:56:19', '2024-01-09 07:56:19', '2025-01-09 13:26:19'),
('d729eb7b24ddd86108a5101259dda55ba3851341e4f3f6de2b93c854ae35524df063e990a33c7017', 143, 1, 'andrew', '[]', 1, '2024-01-16 00:04:32', '2024-01-16 00:04:32', '2025-01-16 05:34:32'),
('d75503a08aa827c22ff9578fb76b87caeadb5c0c396a24387da9b035231e42ba74aae1d21607612c', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:58:42', '2021-11-17 04:58:42', '2022-11-17 10:28:42'),
('d7782a41fab8105755d74c1291ca7ad9605f6580656071b53df5ddb811a63ca17e0ff740a638d254', 92, 1, 'andrew', '[]', 1, '2024-01-04 02:14:53', '2024-01-04 02:14:53', '2025-01-04 07:44:53'),
('d856ea2b31ae9cbf76e4e8be062a004672d11ae8d8c3d5651b9111d739aaed94dcd49313fc4d2cc0', 90, 1, 'andrew', '[]', 1, '2024-01-03 05:09:43', '2024-01-03 05:09:43', '2025-01-03 10:39:43'),
('dad94ac293b625012b4149217616a84132b815e5a99bf9feb561b29d0bbcf78437dc94abf8de8a75', 167, 1, 'andrew', '[]', 0, '2024-03-11 02:59:24', '2024-03-11 02:59:24', '2025-03-11 08:29:24'),
('dae6177e5941eba47556996e35ebb72e475ecc24db8794c6226e53a0c3fa4fbb6a7c15fd1e8db21c', 101, 1, 'andrew', '[]', 1, '2024-01-09 07:29:33', '2024-01-09 07:29:33', '2025-01-09 12:59:33'),
('db57b3b93252aa5b85db4905be0513842afa6d4b6d94cc3184fa6dc164f058db8047f92a47dd2d88', 3, 1, 'andrew', '[]', 1, '2021-11-15 05:16:29', '2021-11-15 05:16:29', '2022-11-15 10:46:29'),
('db6822df76c47680a78f14d4910f6bd2070945bc98b72e42a9b37bf69ec3f3c7076efe8877f1fa92', 146, 1, 'andrew', '[]', 1, '2024-01-16 00:16:05', '2024-01-16 00:16:05', '2025-01-16 05:46:05'),
('dc31d483e52262071c64cc62dd3e7472d57221a41c8d33ecea0a1dc50008e346f63b75f660772d94', 155, 1, 'andrew', '[]', 0, '2024-02-28 05:23:58', '2024-02-28 05:23:58', '2025-02-28 10:53:58'),
('dd92b32082a94a72b34f8472999e8744e0501d872c677191ab5a44a4f848cc90469c647baf6748ca', 14, 1, 'andrew', '[]', 1, '2023-10-26 04:58:54', '2023-10-26 04:58:54', '2024-10-26 10:28:54'),
('dde72169d40d8533bfd7f7962a935027592304d766934efbbff1cd75e0b5f47dd3dddd942c9ba1ec', 89, 1, 'andrew', '[]', 1, '2024-01-05 02:25:36', '2024-01-05 02:25:36', '2025-01-05 07:55:36'),
('dea6de4eed9fd0db6c75ec23999d0d12395825c4fa64f02950aa455352a5b94d4db36c78cd4acc60', 99, 1, 'andrew', '[]', 1, '2024-01-08 01:37:11', '2024-01-08 01:37:11', '2025-01-08 07:07:11'),
('dfb4d017542c9095a8a7cb4a31a7eafcec33e0f3eef4a66478af7670b2493c50f4216f859f555575', 14, 1, 'andrew', '[]', 1, '2023-10-25 07:54:48', '2023-10-25 07:54:48', '2024-10-25 13:24:47'),
('e120b29c962cad542a0c6037dd0ca9c691372d7f84e3573eaf1ccc42be6e5bf3b0e9cf231ed4b36b', 52, 1, 'andrew', '[]', 1, '2023-10-26 08:31:10', '2023-10-26 08:31:10', '2024-10-26 14:01:10'),
('e1b77c2b258ff4821c64914eff05ad79f595a770e9f7717cdacf2b9c67582c8d34f4da3b7fbf02d6', 16, 1, 'andrew', '[]', 0, '2023-11-02 05:04:52', '2023-11-02 05:04:52', '2024-11-02 10:34:52'),
('e23d5056cc1aaa3a40d2aa1d295ce684e69d1f432ed8106c220fe970329bb9d3dc3f7c9ba783da41', 46, 1, 'andrew', '[]', 1, '2023-10-26 06:31:35', '2023-10-26 06:31:35', '2024-10-26 12:01:35'),
('e2e457873b60c78952d950a788684d75581338d6d8e87b7afb4dc567ec15f81d97193cd2bc472266', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:17:29', '2024-01-04 22:17:29', '2025-01-05 03:47:29'),
('e2eda16fdaacebcd27a58295f0a6dbfd0bd81b64f262513d42bf401c624faa31139eb5847d9dcce4', 33, 1, 'andrew', '[]', 1, '2023-10-26 23:18:29', '2023-10-26 23:18:29', '2024-10-27 04:48:29'),
('e31db3346b56c0ef1b38eeb0295962fce7d439c15b8d5a6617306cda0d91018bf6ba27cc2605c64f', 83, 1, 'andrew', '[]', 1, '2024-01-03 01:28:16', '2024-01-03 01:28:16', '2025-01-03 06:58:16'),
('e39862b3da3e1441e7615a2103e2a900d4a3495377c52666a539782a60ea9b8ec934a8cab6484a5b', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:34:03', '2023-10-25 06:34:03', '2024-10-25 12:04:03'),
('e39dc22921f20a8cef33fe309b1012b8dc59de76b4e3a3ea85220d151da140f0dfbe8292db1ff395', 16, 1, 'andrew', '[]', 1, '2023-10-27 05:10:46', '2023-10-27 05:10:46', '2024-10-27 10:40:46'),
('e3b3f87380176b8fb96f86e477570308e065e1c7c04e979dffa758899fcd807235a0e956a074680c', 16, 1, 'andrew', '[]', 1, '2023-10-24 04:51:30', '2023-10-24 04:51:30', '2024-10-24 10:21:30'),
('e4237339d9e8d101bcc6f502e69fe1392443513e892373366715e03c6058553c753eadcccde6c230', 16, 1, 'andrew', '[]', 1, '2023-10-25 05:57:30', '2023-10-25 05:57:30', '2024-10-25 11:27:30'),
('e434bfe8fd05dcb365118aed91d69a39df847f65e62a2346630d3f7e4f8b6243a844e6a611b5031a', 148, 1, 'andrew', '[]', 1, '2024-01-16 01:01:57', '2024-01-16 01:01:57', '2025-01-16 06:31:57'),
('e50562fa7b7ebcc3e532d0e45e63c4c33dc90198f835872edc9d4d6fa667d412db04ebc2c7ac9df7', 40, 1, 'andrew', '[]', 1, '2024-03-09 00:35:08', '2024-03-09 00:35:08', '2025-03-09 06:05:08'),
('e5c0a27837f913ef8134ba378e9bbdcc4f0057365e02e4a68c4aa5950db3112aa9eed0b10ac19904', 72, 1, 'andrew', '[]', 1, '2024-01-04 23:30:35', '2024-01-04 23:30:35', '2025-01-05 05:00:35'),
('e881a98b1b8575859c0e02734a519af7380b84e1797fb2c83e0242c7df4ac312ca4dd03aca52f1cd', 89, 1, 'andrew', '[]', 1, '2024-01-11 04:41:38', '2024-01-11 04:41:38', '2025-01-11 10:11:38'),
('e93c80b7233b2dfeb9cd3c9b97e1924d4ae9fc0a39bc43b2864b3c4f1d671f2ea7a8940bc6534b31', 3, 1, 'andrew', '[]', 1, '2021-11-15 05:12:59', '2021-11-15 05:12:59', '2022-11-15 10:42:59'),
('e9cb381f75aef8fdb6fef9403dd872d4fa17d88bea7ab3aaf54586d7d8e54b102e7e0b760c72e5f3', 16, 1, 'andrew', '[]', 1, '2023-10-26 04:39:38', '2023-10-26 04:39:38', '2024-10-26 10:09:38'),
('e9cb6122808950cb097836ec67c65f122a0036ad6169491ad5104f6d645df775c11ecb2a326877d5', 40, 1, 'andrew', '[]', 1, '2023-10-27 00:41:52', '2023-10-27 00:41:52', '2024-10-27 06:11:52'),
('ea012cf503a6aa3ccd3a0a4581b640d479c6eafd3098a0e11bfbfe33e95f0fbadc7d2c1f6304a2c3', 169, 1, 'andrew', '[]', 1, '2024-03-12 02:46:23', '2024-03-12 02:46:23', '2025-03-12 08:16:23'),
('ea021b51d3fff21f9525c2d24739c38c42562b070ba3955133370fbaa6447195f8ed9b3c4f628df9', 33, 1, 'andrew', '[]', 1, '2023-10-25 02:27:20', '2023-10-25 02:27:20', '2024-10-25 07:57:20'),
('eba2547d5e77d20a260dc0200c5be4fac3cfd728326b555a53fc3cc7c67451d8c072213755d1ae73', 12, 1, 'andrew', '[]', 0, '2023-10-20 05:17:55', '2023-10-20 05:17:55', '2024-10-20 10:47:55'),
('ec0ee42a6df553cbef82c2c193a2060de7bcf3a730a259e4641c79b58eb8a18a45cded3d3894a242', 83, 1, 'andrew', '[]', 1, '2024-01-09 23:50:26', '2024-01-09 23:50:26', '2025-01-10 05:20:26'),
('ec5d2c6c931600a9d0b776dadf07cb75f9cabdc2e14206d6dcb42c8673a016a6ef8902d6cc22a6be', 14, 1, 'andrew', '[]', 1, '2023-10-24 01:30:32', '2023-10-24 01:30:32', '2024-10-24 07:00:32'),
('ec96899cb0290396a52195dec539e9a3bce266ee1ab192d0141e87ee6db7a10a1e7a5642124786f9', 77, 1, 'andrew', '[]', 1, '2023-12-15 03:12:28', '2023-12-15 03:12:28', '2024-12-15 08:42:28'),
('ecb830106d28b7fbafcbe21573481910c6e09552aad29bbbc776b071ed87ce35180be3e33730c01f', 33, 1, 'andrew', '[]', 1, '2023-10-26 23:48:58', '2023-10-26 23:48:58', '2024-10-27 05:18:58'),
('ed999afccb30bfcc99be1d19a8be3ff2cbc89166d359a0ac3474b6146b3f6508c0234fba82eb1601', 125, 1, 'andrew', '[]', 0, '2024-01-11 22:49:08', '2024-01-11 22:49:08', '2025-01-12 04:19:08'),
('edae371268021085e45b0b87b55132e864cf308f7eeda7c0a0667d168071f1ea64cd17672a6f8e6c', 83, 1, 'andrew', '[]', 1, '2024-01-12 00:43:16', '2024-01-12 00:43:16', '2025-01-12 06:13:16'),
('ee045d87b82dbf23dbe66782e0346282d0aabb5d4f71efa1daa9718f02bc4823ab219daea6fc0661', 4, 1, 'andrew', '[]', 0, '2021-11-16 06:46:31', '2021-11-16 06:46:31', '2022-11-16 12:16:31'),
('ee2ed66a17a4b8d624ab05c02e407fd624f633f90f220907fdc88726942da4d251dfa3fd5e521225', 72, 1, 'andrew', '[]', 1, '2024-01-10 00:25:23', '2024-01-10 00:25:23', '2025-01-10 05:55:23'),
('ee635821b179b0196c577f18eff37f3ff52fc9a6c73b7771d9f46cf6d94961c89dc781c29094cb79', 55, 1, 'andrew', '[]', 1, '2023-10-27 04:10:00', '2023-10-27 04:10:00', '2024-10-27 09:40:00'),
('ee7dfa9c15b9a7feda25ca8b6479ab800cae4803e820e901513568845308cb6c6ade85287839e62a', 14, 1, 'andrew', '[]', 1, '2023-10-24 01:51:22', '2023-10-24 01:51:22', '2024-10-24 07:21:22'),
('ee7e9141b04b61954545dedf9ce14bcbeef2db19e81262ddf5182bc889a7da2b80fb1f4af6d8f601', 119, 1, 'andrew', '[]', 1, '2024-01-10 23:32:21', '2024-01-10 23:32:21', '2025-01-11 05:02:21'),
('ef0f06f67466768cff9a779886e07640d04a3f92c0aa93f708114ad2b13454465087840107065dab', 72, 1, 'andrew', '[]', 1, '2024-01-09 10:10:51', '2024-01-09 10:10:51', '2025-01-09 15:40:51'),
('f0f0198456c7b522472031f284d5b4a72127434d1ff682a7d7b59e77b5c6cb3a97cfe320ea412977', 89, 1, 'andrew', '[]', 1, '2024-01-02 02:00:32', '2024-01-02 02:00:32', '2025-01-02 07:30:32'),
('f1b2994915c4cadb6e6bb88ac3c37b46a9567e69dd70eb780bae42c197586993012e4a25e05e3ae8', 40, 1, 'andrew', '[]', 1, '2024-03-12 06:24:39', '2024-03-12 06:24:39', '2025-03-12 11:54:39'),
('f1d4733812b5e35d373425f9c92e0306741cf7126df10c1f1dda7961cad219656c79d11d484fd09f', 16, 1, 'andrew', '[]', 1, '2023-10-24 23:19:45', '2023-10-24 23:19:45', '2024-10-25 04:49:45'),
('f4b6dc8943771ec7dc086c15bc9ba5ddfdb826dbd13616638d052c52386549c66a363384ddaa0313', 14, 1, 'andrew', '[]', 1, '2023-10-25 02:07:35', '2023-10-25 02:07:35', '2024-10-25 07:37:35'),
('f4dd8a60f51faf2b13305682215034651872690ecc190524116f7db9a779777bcf1900f8eddfe8cc', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:18:30', '2024-01-12 05:18:30', '2025-01-12 10:48:30'),
('f596ec46b7d9b4ddafd32033d407acfb8fb124cc8394b1b9b8fddb0a3c895f65d02b0354be33e342', 135, 1, 'andrew', '[]', 1, '2024-01-15 06:12:19', '2024-01-15 06:12:19', '2025-01-15 11:42:19'),
('f5c6b6d107a088cdb06bc02fad1b4dca84ed822eac2e2eebcad69e35ac8e7571d525042822f3db2b', 2, 1, 'andrew', '[]', 1, '2021-11-12 13:43:33', '2021-11-12 13:43:33', '2022-11-12 19:13:33'),
('f69b272f114f469dd8ecc505cf5d9dfdb1b3c5308c853ef4e47ae47ae69d6da0ab56b545774f317a', 72, 1, 'andrew', '[]', 1, '2024-01-10 12:08:15', '2024-01-10 12:08:15', '2025-01-10 17:38:15'),
('f77ab559907d4b9695ca934da00d53839f7a44666739e93c5ed852d7cbeaf2e61cb69b05985dd510', 33, 1, 'andrew', '[]', 1, '2023-10-26 00:29:39', '2023-10-26 00:29:39', '2024-10-26 05:59:39'),
('f7f2b2a5346e741bc5019177ec2c8dbe6dd4860109d646391aba653c664c0f0fe587a4a16e06e2d3', 16, 1, 'andrew', '[]', 1, '2023-10-27 06:21:04', '2023-10-27 06:21:04', '2024-10-27 11:51:04'),
('f8ea5225fca0a2c1e0eb9985fb22049159f014bdd571ad1672d55e644922fad3edf8f3ace7d58da8', 78, 1, 'andrew', '[]', 1, '2023-12-29 07:20:24', '2023-12-29 07:20:24', '2024-12-29 12:50:24'),
('f9624188b1e2bb9198e2ebbf913c63d6b7ed01afcdc592f4a3d192400265b9dfd0b5236063f26904', 40, 1, 'andrew', '[]', 1, '2023-10-29 23:53:40', '2023-10-29 23:53:40', '2024-10-30 05:23:40'),
('fa1308341568f73c3547ce2f52a848f42573e40f25b5fef1745fee46db299659aee0d536116f59cd', 111, 1, 'andrew', '[]', 1, '2024-01-10 01:32:10', '2024-01-10 01:32:10', '2025-01-10 07:02:10'),
('fb08407fcf9de91da80bc10bd81c0c95b9c066b04c60c3dabc4bef0d79dfa72ac00b8389843cd6a1', 72, 1, 'andrew', '[]', 1, '2024-01-12 00:59:50', '2024-01-12 00:59:50', '2025-01-12 06:29:50'),
('fbcf52e4d8366c84fbaf048b35ca047634aedf26ae29281ed2c2e1dacddc769e1ecf7bcadc0d037c', 154, 1, 'andrew', '[]', 0, '2024-01-18 01:37:16', '2024-01-18 01:37:16', '2025-01-18 07:07:16'),
('fe2f870cd256f87db696ccffe4d352aaaf82893f09d7cafc52a732914972a526c153e344be04654a', 61, 1, 'andrew', '[]', 1, '2023-10-27 03:19:02', '2023-10-27 03:19:02', '2024-10-27 08:49:02'),
('fec0314bf949686cda6a92811810158ef8784abc8a0105a6130343cf9fc03173843f0a3d7db142fa', 89, 1, 'andrew', '[]', 1, '2024-01-11 00:43:52', '2024-01-11 00:43:52', '2025-01-11 06:13:52'),
('fee07274bf508e258c43f78c3998711f3f6e84dec1844e731fdc1f00a96c276d131b42e2862479db', 16, 1, 'andrew', '[]', 1, '2023-10-26 06:45:48', '2023-10-26 06:45:48', '2024-10-26 12:15:48'),
('ff53157166be6363514d5478b3067bdd8d4541494708f4ce1b101f45d79c7354c4a85742e1b738bb', 40, 1, 'andrew', '[]', 1, '2023-10-27 01:48:28', '2023-10-27 01:48:28', '2024-10-27 07:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
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
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `unique_id` int NOT NULL,
  `offer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_product_id` int DEFAULT NULL,
  `offer_type` enum('Normal','BirthdayOffer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `admin_id`, `venu_id`, `unique_id`, `offer_name`, `offer_desc`, `image`, `name_of_file_show`, `from_date`, `to_date`, `time`, `to_time`, `status`, `pos_product_id`, `offer_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Birthday Offer?adsfasdfasdfads', 'Birthday Offer', '012020220728278661e90f1ba11d0.jpeg', 'file_example_JPG_1MB.jpg', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-12 13:22:29', '2023-10-24 05:06:55', NULL),
(2, 1, 2, 2, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-12 13:27:18', '2021-11-12 13:27:18', NULL),
(3, 1, 1, 3, 'Offer1', 'test', '1112202119005414618e6c8e47d34.png', 'Screenshot_32.png', '2021-11-12', '2021-11-12', '19:01:00', '20:01:00', 'Active', 33, 'Normal', '2021-11-12 13:30:54', '2022-01-20 01:59:48', NULL),
(5, 4, 1, 5, 'offer4', 'cxvvccv', '1112202119325416618e740ee2a72.png', 'Screenshot_14.png', '2021-11-12', '2021-11-12', '19:33:00', '19:33:00', 'Active', NULL, 'Normal', '2021-11-12 14:02:55', '2021-11-12 14:02:55', NULL),
(6, 4, 1, 6, 'offer5', 'xcxc', '1112202119342119618e7465dfbbd.png', 'Screenshot_14.png', '2021-11-12', '2021-11-12', '19:34:00', '20:34:00', 'Active', NULL, 'Normal', '2021-11-12 14:04:22', '2021-11-12 14:04:22', NULL),
(8, 2, 5, 8, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 07:12:04', '2021-11-15 07:12:04', NULL),
(9, 1, 6, 9, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 07:14:05', '2021-11-15 07:14:05', NULL),
(10, 1, 1, 10, 'asdgha', 'faga', '111520211309462561920ec24e63f.jpeg', 'download (4).jpeg', '2021-11-15', '2021-11-22', '13:09:00', '17:09:00', 'Active', NULL, 'Normal', '2021-11-15 07:39:46', '2021-11-15 07:39:46', NULL),
(11, 1, 1, 11, 'guyguy', 'hs', '1115202114360713619222ff947fb.jpeg', 'images.jpeg', '2021-11-15', '2021-11-15', '14:35:00', '16:35:00', 'Active', NULL, 'Normal', '2021-11-15 09:06:07', '2021-11-15 09:06:07', NULL),
(12, 1, 1, 12, 'gawtq', 'gqwa', '11152021143702266192233604a8b.jpeg', 'download (4).jpeg', '2021-11-15', '2021-11-15', '14:36:00', '17:36:00', 'Active', NULL, 'Normal', '2021-11-15 09:07:02', '2021-11-15 09:07:02', NULL),
(13, 1, 7, 13, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 11:46:42', '2021-11-15 11:46:42', NULL),
(14, 1, 7, 14, 'qwwq', 'dsbgsdbgds', '111620211028133861933a65b269e.jpeg', 'download (1).jpeg', '2021-11-16', '2021-11-18', '10:28:00', '11:28:00', 'Active', NULL, 'Normal', '2021-11-16 04:58:13', '2021-11-16 05:08:27', '2021-11-16 05:08:27'),
(15, 1, 1, 15, 'TEST', 'GET 90% Cashback', '012020221016046261e93664e7457.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-20', '2022-02-01', '18:00:00', '23:30:00', 'Active', NULL, 'Normal', '2022-01-20 04:46:05', '2022-01-20 04:46:05', NULL),
(16, 1, 1, 16, 'test2', 'Great Offer', '012120221145101461ea9cc687ff4.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-21', '2022-01-31', '01:00:00', '23:58:00', 'Active', NULL, 'Normal', '2022-01-21 06:15:10', '2022-01-21 06:15:10', NULL),
(17, 1, 7, 17, 'thisShouldBeAssigned', 'Awesome offer', '012420220446365261ee2f2c6f927.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-24', '2022-01-29', '06:30:00', '00:00:00', 'Active', 1234567890, 'Normal', '2022-01-23 23:16:36', '2022-01-23 23:16:36', NULL),
(18, 1, 8, 18, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2022-01-24 03:18:03', '2022-01-24 03:18:03', NULL),
(19, 1, 8, 19, 'Offer!', 'Hey! Get everything for free!!', '012520221126597461efde833c6c9.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-25', '2022-01-31', '12:00:00', '00:00:00', 'Active', NULL, 'Normal', '2022-01-25 05:56:59', '2022-01-25 05:56:59', NULL),
(20, 1, 7, 20, 'New Offers', 'dsjfsdjfhdshfj fdshfasdjdhfsadhfj sdjfhsad fsadf sdaf lasdf', '10242023064255246537676f5ab8d.png', 'Screenshot 2023-09-20 at 4.33.28 PM.png', '2023-10-24', '2023-11-10', '00:01:00', '23:58:00', 'Active', 234324324, 'Normal', '2023-10-24 01:12:55', '2023-10-24 01:12:55', NULL),
(21, 1, 1, 21, 'New Offer', 'sdfasdfkasdfjkdhsafhsjhfjsadhjfsahdjfhajshfjsahfdjdsahfjshajfhsahfjhajfhsajfhsajfhjsahfjhasjfhasjdfhsdajf', '10242023101523296537993b3067b.jpeg', '2.jpeg', '2023-10-24', '2023-10-31', '11:45:00', '12:45:00', 'Active', NULL, 'Normal', '2023-10-24 04:45:23', '2023-10-24 04:45:23', NULL),
(22, 1, 7, 22, 'offers hai bhai', 'fsfasdfasfasfsafsafasfdas', '102420231018428065379a025d446.jpeg', '3.jpeg', '2023-10-24', '2023-10-31', '00:55:00', '12:00:00', 'Active', NULL, 'Normal', '2023-10-24 04:48:42', '2023-10-24 04:48:42', NULL),
(23, 1, 5, 23, 'aditya', 'sfsfv sdfsdfdvxcv wfssfzfsdfsdfsdfsdfsdfsdfsdfsdfsfs fsdfsdf', '1026202310052331653a39e39cb83.jpeg', 'dummy.jpeg', '2023-10-26', '2023-10-29', '00:00:00', '23:58:00', 'Active', NULL, 'Normal', '2023-10-26 04:35:23', '2023-10-26 04:35:23', NULL),
(24, 1, 2, 24, '69', 'hjgjhghj', '1026202310182035653a3cec8adc5.png', 'male_selected.png', '2023-10-26', '2023-11-01', '00:59:00', '23:56:00', 'Active', 78678678, 'Normal', '2023-10-26 04:48:20', '2023-10-26 04:48:20', NULL),
(25, 1, 1, 25, 'mnn,n,.n,nm,.n,mnm,n.m,nm,nm,.', 'jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh1234561234561234561', '1027202310042564653b8b29bf935.png', 'Screenshot_20231025-142016.png', '2023-10-27', '2023-10-28', '03:33:00', '15:33:00', 'Active', NULL, 'Normal', '2023-10-27 04:34:25', '2023-10-27 04:34:25', NULL),
(26, 1, 9, 26, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2023-10-27 07:45:18', '2023-10-27 07:45:18', NULL),
(27, 1, 5, 27, 'New Offer 2024', 'New Offer 2024', '0109202405425154659cdcdbd86a9.jpeg', 'file_example_JPG_1MB.jpg', '2024-01-09', '2024-02-02', '00:00:00', '23:59:00', 'Active', NULL, 'Normal', '2024-01-09 00:12:52', '2024-01-09 00:12:52', NULL),
(28, 1, 5, 28, 'Offers', 'jj', '0109202405493176659cde6bdf7ee.jpeg', '6oAWnDGR4JY.jpg', '2024-01-09', '2024-02-01', '00:00:00', '23:58:00', 'Active', NULL, 'Normal', '2024-01-09 00:19:32', '2024-01-09 00:19:32', NULL),
(29, 1, 5, 29, '2024', '2024 offer', '0109202405515347659cdef950fab.jpeg', 'pgVT_CvjsGE.jpg', '2024-01-09', '2024-01-25', '00:00:00', '23:58:00', 'Active', NULL, 'Normal', '2024-01-09 00:21:53', '2024-01-09 00:21:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offer_settings`
--

CREATE TABLE `offer_settings` (
  `id` int UNSIGNED NOT NULL,
  `offer_id` int UNSIGNED NOT NULL,
  `city_id` int DEFAULT NULL,
  `dob` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Today',
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `offer_type` enum('Normal','BirthdayOffer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(14, 14, NULL, 'Today', 'Male', '2021-11-18', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-16 04:58:14', '2021-11-16 04:58:14', NULL),
(15, 15, NULL, 'Today', NULL, '2022-01-20', '2022-01-20', '2022-01-31', 'Greater Than', 100, 10000, 'Normal', '2022-01-20 04:46:05', '2022-01-20 04:46:05', NULL),
(16, 16, NULL, 'Today', 'Male', '2022-01-22', '2022-01-21', '2022-01-31', 'Greater Than', 100, NULL, 'Normal', '2022-01-21 06:15:10', '2022-01-21 06:15:10', NULL),
(17, 17, NULL, 'Today', NULL, '2022-01-24', '2022-01-24', '2022-01-30', 'Greater Than', 500, NULL, 'Normal', '2022-01-23 23:16:36', '2022-01-23 23:16:36', NULL),
(18, 18, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2022-01-24 03:18:03', '2022-01-24 03:18:03', NULL),
(19, 19, NULL, 'Today', 'Male', '2022-01-25', NULL, NULL, NULL, NULL, NULL, 'Normal', '2022-01-25 05:56:59', '2022-01-25 05:56:59', NULL),
(20, 20, NULL, 'Today', NULL, '2023-10-24', '2023-10-18', '2023-11-10', 'Greater Than', 10, NULL, 'Normal', '2023-10-24 01:12:55', '2023-10-24 01:12:55', NULL),
(21, 21, NULL, 'Today', NULL, '2023-10-24', NULL, NULL, 'Greater Than', 100, NULL, 'Normal', '2023-10-24 04:45:23', '2023-10-24 04:45:23', NULL),
(22, 22, NULL, 'Today', NULL, '2023-10-24', NULL, NULL, 'Greater Than', 10, NULL, 'Normal', '2023-10-24 04:48:42', '2023-10-24 04:48:42', NULL),
(23, 23, NULL, 'Today', NULL, '2023-10-26', '2023-10-26', '2023-10-28', 'Greater Than', 1, NULL, 'Normal', '2023-10-26 04:35:23', '2023-10-26 04:35:23', NULL),
(24, 24, 2, 'Today', 'Male', '2023-10-26', '2023-10-25', '2023-10-28', 'Greater Than', 1, NULL, 'Normal', '2023-10-26 04:48:20', '2023-10-26 04:48:20', NULL),
(25, 25, 3, 'Today', 'Male', '2023-10-27', '2023-10-27', '2023-10-28', 'Between', 123, 124, 'Normal', '2023-10-27 04:34:26', '2023-10-27 04:34:26', NULL),
(26, 26, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2023-10-27 07:45:18', '2023-10-27 07:45:18', NULL),
(27, 27, NULL, 'Today', 'Male', '2024-01-09', '2024-01-01', '2024-02-11', 'Greater Than', 1, NULL, 'Normal', '2024-01-09 00:12:52', '2024-01-09 00:12:52', NULL),
(28, 28, NULL, 'Today', NULL, '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', '2024-01-09 00:19:32', '2024-01-09 00:19:32', NULL),
(29, 29, NULL, 'Today', NULL, '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', '2024-01-09 00:21:53', '2024-01-09 00:21:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int UNSIGNED NOT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `country_code`, `mobile_number`, `otp`, `created_at`, `updated_at`) VALUES
(13, '+91', '7060424884', '9188', '2021-11-15 05:06:31', '2021-11-15 05:06:31'),
(16, '+91', '9876543210', '7957', '2021-11-15 07:36:53', '2021-11-15 07:36:53'),
(17, '+91', '7876175843', '1292', '2023-10-20 04:46:52', '2023-10-20 04:46:52'),
(26, '+91', '7894561235', '9991', '2023-10-20 05:07:14', '2023-10-20 05:07:14'),
(30, '+91', '7894561326', '3153', '2023-10-20 05:12:09', '2023-10-20 05:12:09'),
(40, '+91', '5555555556', '123456', '2023-10-23 10:16:44', '2023-10-23 10:16:44'),
(44, '+93', '9761573381', '123456', '2023-10-24 01:23:23', '2023-10-24 01:23:23'),
(45, '+971', '84495430255', '123456', '2023-10-24 01:24:52', '2023-10-24 01:24:52'),
(46, '+971', '89565686252', '123456', '2023-10-24 01:25:29', '2023-10-24 01:25:29'),
(47, '+971', '8886565558', '123456', '2023-10-24 01:27:45', '2023-10-24 01:27:45'),
(52, '+971', '846545646465', '123456', '2023-10-24 01:40:00', '2023-10-24 01:40:00'),
(53, '+971', '78994564564', '123456', '2023-10-24 01:43:05', '2023-10-24 01:43:05'),
(55, '+91', '9817820481', '123456', '2023-10-24 01:49:35', '2023-10-24 01:49:35'),
(86, '+91', '1236785454', '123456', '2023-10-24 05:18:52', '2023-10-24 05:18:52'),
(91, '+91', '4564646444', '123456', '2023-10-24 06:40:45', '2023-10-24 06:40:45'),
(110, '+971', '688686885835', '123456', '2023-10-24 07:26:09', '2023-10-24 07:26:09'),
(111, '+971', '86868686', '123456', '2023-10-24 07:46:25', '2023-10-24 07:46:25'),
(112, '+376', '86868686', '123456', '2023-10-24 07:48:41', '2023-10-24 07:48:41'),
(115, '+971', '8484674867647', '123456', '2023-10-24 07:55:17', '2023-10-24 07:55:17'),
(117, '+971', '626646464', '123456', '2023-10-24 08:02:32', '2023-10-24 08:02:32'),
(120, '+971', '4567894562', '123456', '2023-10-24 23:15:10', '2023-10-24 23:15:10'),
(135, '+971', '2559764564', '123456', '2023-10-25 00:54:39', '2023-10-25 00:54:39'),
(140, '+971', '9895652355', '123456', '2023-10-25 01:29:56', '2023-10-25 01:29:56'),
(148, '+971', '789789456456', '123456', '2023-10-25 01:58:19', '2023-10-25 01:58:19'),
(156, '+971', '88456989898', '123456', '2023-10-25 02:16:22', '2023-10-25 02:16:22'),
(188, '+971', '2828282828', '123456', '2023-10-25 05:20:46', '2023-10-25 05:20:46'),
(193, '+971', '866878718678616', '123456', '2023-10-25 07:39:32', '2023-10-25 07:39:32'),
(195, '+971', '361869486916981', '123456', '2023-10-25 07:49:00', '2023-10-25 07:49:00'),
(197, '+971', '9677946946945', '123456', '2023-10-26 00:03:49', '2023-10-26 00:03:49'),
(198, '+971', '89679694969694', '123456', '2023-10-26 00:07:28', '2023-10-26 00:07:28'),
(200, '+971', '06866868668686', '123456', '2023-10-26 00:16:49', '2023-10-26 00:16:49'),
(201, '+971', '868106840686486', '123456', '2023-10-26 00:41:05', '2023-10-26 00:41:05'),
(202, '+971', '160947607618167', '123456', '2023-10-26 00:43:34', '2023-10-26 00:43:34'),
(203, '+971', '78334834864', '123456', '2023-10-26 00:45:03', '2023-10-26 00:45:03'),
(204, '+971', '867864684846', '123456', '2023-10-26 00:50:08', '2023-10-26 00:50:08'),
(205, '+971', '7860676064', '123456', '2023-10-26 00:52:56', '2023-10-26 00:52:56'),
(206, '+971', '186861817861', '123456', '2023-10-26 01:06:35', '2023-10-26 01:06:35'),
(207, '+971', '9079846864686', '123456', '2023-10-26 01:09:28', '2023-10-26 01:09:28'),
(208, '+971', '686656865', '123456', '2023-10-26 01:12:39', '2023-10-26 01:12:39'),
(209, '+971', '8979898946864', '123456', '2023-10-26 01:15:14', '2023-10-26 01:15:14'),
(210, '+971', '686686886', '123456', '2023-10-26 01:16:40', '2023-10-26 01:16:40'),
(213, '+971', '0768694896867', '123456', '2023-10-26 01:19:37', '2023-10-26 01:19:37'),
(216, '+971', '684684684', '123456', '2023-10-26 01:26:28', '2023-10-26 01:26:28'),
(222, '+971', '5355645646', '123456', '2023-10-26 03:33:34', '2023-10-26 03:33:34'),
(223, '+971', '86868686861', '123456', '2023-10-26 23:04:30', '2023-10-26 23:04:30'),
(226, '+971', '5353535353', '123456', '2023-10-26 23:18:16', '2023-10-26 23:18:16'),
(227, '+971', '64694694', '123456', '2023-10-27 00:41:28', '2023-10-27 00:41:28'),
(254, '+971', '8755396254', '123456', '2023-10-27 05:09:44', '2023-10-27 05:09:44'),
(257, '+971', '919817820480', '123456', '2023-10-30 04:36:57', '2023-10-30 04:36:57'),
(263, '+91', '7878548745', '123456', '2023-12-29 04:10:28', '2023-12-29 04:10:28'),
(267, '+91', '9816957071', '123456', '2023-12-29 07:20:01', '2023-12-29 07:20:01'),
(271, '+91', '5454664664', '123456', '2024-01-02 04:16:16', '2024-01-02 04:16:16'),
(275, '+971', '7018818976', '123456', '2024-01-02 04:40:34', '2024-01-02 04:40:34'),
(277, '+971', '56656556', '123456', '2024-01-02 04:52:23', '2024-01-02 04:52:23'),
(282, '+971', '623036249999949', '123456', '2024-01-02 06:05:41', '2024-01-02 06:05:41'),
(284, '+971', '46086407640864', '123456', '2024-01-02 06:17:28', '2024-01-02 06:17:28'),
(285, '+971', '65656464464', '123456', '2024-01-02 06:30:46', '2024-01-02 06:30:46'),
(290, '+91', '8872066100', '123456', '2024-01-03 07:47:12', '2024-01-03 07:47:12'),
(291, '+971', '43547567655857', '123456', '2024-01-03 07:59:17', '2024-01-03 07:59:17'),
(292, '+355', '343433434334', '123456', '2024-01-07 23:31:26', '2024-01-07 23:31:26'),
(301, '+971', '499494949449949', '123456', '2024-01-09 07:35:19', '2024-01-09 07:35:19'),
(306, '+971', '0000000000', '123456', '2024-01-09 07:51:31', '2024-01-09 07:51:31'),
(316, '+91', '9845741422', '123456', '2024-01-10 00:46:47', '2024-01-10 00:46:47'),
(317, '+91', '652563256', '123456', '2024-01-10 00:50:30', '2024-01-10 00:50:30'),
(318, '+91', '9856251452', '123456', '2024-01-10 00:51:44', '2024-01-10 00:51:44'),
(323, '+91', '8524553256', '123456', '2024-01-10 02:42:31', '2024-01-10 02:42:31'),
(340, '+971', '2552585855585', '123456', '2024-01-11 04:06:30', '2024-01-11 04:06:30'),
(341, '+971', '456554645456', '123456', '2024-01-11 04:12:28', '2024-01-11 04:12:28'),
(342, '+971', '45557554445', '123456', '2024-01-11 04:12:47', '2024-01-11 04:12:47'),
(353, '+91', '7845457845', '123456', '2024-01-11 09:57:41', '2024-01-11 09:57:41'),
(354, '+91', '32434343434', '123456', '2024-01-11 10:00:02', '2024-01-11 10:00:02'),
(364, '+91', '7845124554', '123456', '2024-01-11 23:31:33', '2024-01-11 23:31:33'),
(381, '+971', '8748676846871', '123456', '2024-01-12 08:22:55', '2024-01-12 08:22:55'),
(382, '+971', '846674687468', '123456', '2024-01-12 08:23:11', '2024-01-12 08:23:11'),
(383, '+91', '7876152525', '123456', '2024-01-15 00:15:00', '2024-01-15 00:15:00'),
(386, '+971', '23583858582', '123456', '2024-01-15 06:09:13', '2024-01-15 06:09:13'),
(389, '+91', '9878458596', '123456', '2024-01-15 23:12:22', '2024-01-15 23:12:22'),
(398, '+93', '9761573380', '123456', '2024-01-16 00:08:19', '2024-01-16 00:08:19'),
(404, '+91', '9023948399', '2465', '2024-02-14 05:57:45', '2024-02-14 05:57:45'),
(414, '+91', '8885907350', '1234', '2024-03-07 23:37:04', '2024-03-07 23:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `unique_id_by_tier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tier_setting_id` int UNSIGNED NOT NULL,
  `tier_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_amount` double NOT NULL,
  `to_amount` double NOT NULL,
  `color_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tier_conditions`
--

INSERT INTO `tier_conditions` (`id`, `unique_id_by_tier`, `tier_setting_id`, `tier_name`, `from_amount`, `to_amount`, `color_code`, `percentage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Silver', 0, 100, '#3b9c00', 10, NULL, NULL, '2023-10-25 01:31:30'),
(2, '2', 1, 'Platinum', 700, 1500, '#ff0000', 20, '2021-10-15 10:46:53', '2021-10-08 09:13:51', '2021-10-15 10:46:53'),
(3, '3', 1, 'Gold', 1501, 2501, '#ff0000', 30, '2021-10-15 10:46:47', '2021-10-08 09:14:10', '2021-10-15 10:46:47'),
(4, '4', 1, 'Diamond', 2502, 3501, '#ff0000', 40, '2021-10-15 10:46:42', '2021-10-08 09:14:31', '2021-10-15 10:46:42'),
(5, '5', 1, 'Gold', 101, 500, '#18171b', 20, NULL, '2021-10-21 10:40:05', '2021-11-12 14:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `tier_settings`
--

CREATE TABLE `tier_settings` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `transaction_amount_check_last_days` int NOT NULL COMMENT 'Customer Total Transaction Amount Check for last 30 days.',
  `customer_tier_validity_check` int NOT NULL COMMENT 'Customer Tier Validity Check (Badge Change)',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tier_settings`
--

INSERT INTO `tier_settings` (`id`, `admin_id`, `transaction_amount_check_last_days`, `customer_tier_validity_check`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 1, NULL, NULL, '2023-10-23 05:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_of_residence` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_reference_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('None','Ios','Android') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `device_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reset_password_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `verify_email_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_block` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 => Unblocked 1 => Blocked',
  `is_verify` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 => Not Verify, 1 => Verify',
  `refresh_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('Inactive','Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `customer_id` bigint DEFAULT NULL,
  `customer_tier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_cash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tier_update_date` date DEFAULT NULL,
  `refer_amount` double DEFAULT '0',
  `socket_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_you_smoke` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_you_drink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_amount_used` int NOT NULL DEFAULT '0',
  `request_change_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `socket_id`, `do_you_smoke`, `do_you_drink`, `display_name`, `refer_amount_used`, `request_change_email`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '11122021183006618e6556715f3.jpeg', '+91', '8556025369', 'kanhaiya', 'kumar', 'xxx', '$2y$10$4UQNIvaLP8HhwAycHGzZD.5tk76o2g9jP4C2RWum3rhUkMy27cGNG', 'Abu Dhabi', 'Afghanistan', '2005-11-12', 'Female', 'M7hf3741RVtx', NULL, 'Ios', 'b6ad69a17433d978bcfa6ce6e8a6c23459dbfffbcd30c8e67e5b74ce5b06b14d', NULL, NULL, '0', '1', NULL, NULL, 'Active', 22345875828, 'Silver', '3090', NULL, '1112202118300723618e65573ae41.png', '1112202118300794618e65573b15f.png', '2022-01-19', 0, 'xNKfgW4MP8L-0DwvAAAD', NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-12 13:00:07', '2023-10-25 01:31:30', NULL),
(2, '11122021191328618e6f80ee12e.jpeg', '+91', '7060424884', 'jack', 'donas', 'xxx', '$2y$10$Ei1A12PJtZRfY0MwDAN1jeHERHvjIJhmue9pS5sejmOhH3.z3cCx2', 'Abu Dhabi', 'Algeria', '2005-11-12', 'Male', 'ezg65386g2bq', 'M7hf3741RVtx', 'Ios', '8fafb92358b1e35ea2ff2f7eb8888c13a53e9c380472e1f7332a13b5577e9f38', NULL, NULL, '0', '1', NULL, NULL, 'Active', 32092127883, 'Silver', '1010', 'aman kumar', '1112202119132930618e6f8152283.png', '1112202119132938618e6f815256e.png', '2021-11-12', 2000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-11-12 13:43:29', '2023-10-25 01:31:30', NULL),
(3, '111520211042536191ec5553a32.jpeg', '+91', '9876543210', 'ghuyiu', 'figuring', 'xxx', '$2y$10$bAFZBn5f13bsaXJUpUHQzOIYsG.yuChZMnkqMs2u4O31/34LjS0z6', 'Abu Dhabi', 'Afghanistan', '2005-11-15', 'Male', 'X9mZ7871myoJ', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 16921676320, 'Silver', '1000', NULL, '11152021104253596191ec55a2970.png', '11152021104253746191ec55a2c0b.png', '2021-11-15', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-15 05:12:53', '2023-10-25 01:31:30', NULL),
(4, '11162021121626619353c238601.jpeg', '+91', '8595079586', 'Vikas', 'Kumar', 'xxx', '$2y$10$D/2iCcA1xHukkrt3Sn41PO5IlxxBxw3cIQT6GYNmNaAk2o5LmKgiG', 'Abu Dhabi', 'Afghanistan', '2005-11-16', 'Male', '3alE2122Bt0V', NULL, 'None', NULL, NULL, 'RbtQF26wuUpiTxPYpdFzCdDZ5lMQwBv5eJ2KXXSDwW6qJAk51iDFnsgsIrQ5hnqM', '0', '0', NULL, NULL, 'Active', 69313422209, 'Silver', '1000', NULL, '1116202112162636619353c282ab0.png', '1116202112162622619353c282d24.png', '2021-11-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-16 06:46:26', '2023-10-25 01:31:30', NULL),
(5, '111620211811326193a6fc01647.png', '+91', '8968905827', 'pqr', '1', 'xxx', '$2y$10$3Sx7OUPf6vzgbrtUHpc08.wLaQ00jirM/COVYJFj5K9fPGl9bQwom', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'gkZP43874IHK', NULL, 'None', NULL, NULL, 'IF5Q9D3yR29SKWosBUxHzfb3KkJuzDRYFLCMPjVKgNLjcZWzcGhPwOq2XWMiMD5g', '0', '0', NULL, NULL, 'Active', 79805543786, 'Silver', '1000', NULL, '11162021181132466193a6fc4064d.png', '11162021181132986193a6fc4082c.png', '2021-11-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-16 12:41:32', '2023-10-25 01:31:30', NULL),
(6, '111620211816596193a8434a416.png', '+91', '8968925829', 'pqr1', '1', 'xxx', '$2y$10$0bHJyEp2mx.OeEbqoYYdQer.9Sj0rCFDdwYMF8Rxx2ndner8ce8iO', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'bbGK1268f3Or', NULL, 'Ios', '8fd', NULL, NULL, '0', '1', NULL, NULL, 'Active', 92718897997, 'Silver', '1000', NULL, '11162021181659766193a843aef35.png', '11162021181659136193a843af304.png', '2021-11-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-16 12:46:59', '2023-10-25 01:31:30', NULL),
(7, '111620211833016193ac05c43f5.png', '+91', '8968925120', 'pqr2', '1', 'xxx', '$2y$10$3wd6n9p.0l9TLaSByqcFwe3qK5oioYZMCo0yDsJroKE5zumbsk1.6', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'RlXI6779FB9w', NULL, 'None', NULL, NULL, 'M7adkTy5QpV3qTuD2gwQPMwkhoQS7xS3ji4yRIpcxfNEkXGLRx1bUnttWOwEqwIJ', '0', '0', NULL, NULL, 'Active', 77843348583, 'Silver', '1000', NULL, '11162021183302546193ac0609441.png', '11162021183302366193ac060969e.png', '2021-11-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-16 13:03:01', '2023-10-25 01:31:30', NULL),
(8, '1117202111285061949a1a224f6.png', '+91', '89681231127', 'pqr3', '1', 'xxx', '$2y$10$vmkrdTzocCJordcYkrsfGeYGg4G62s5RG643Xy/74Aam9OwA0Dmxy', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'r0FQ3143f6dZ', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 26829866535, 'Silver', '1000', NULL, '111720211128508861949a1aa7e11.png', '111720211128505761949a1aa80a4.png', '2021-11-17', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-17 05:58:50', '2023-10-25 01:31:30', NULL),
(9, '111720211156416194a0a13ba47.png', '+91', '8968921127', 'Shivam', '1', 'shevum@yopmail.com', '$2y$10$dG0wq2Lmmohr.9Wm/W7lyuCTmGi0vDK8yD1Rf/NsrJjkPefBCL0pu', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'W9pb1606X6S3', NULL, 'None', NULL, NULL, 'AKgdTEtrouXiok8OlO2BQ0dvzxjrt9jyGTPMdJ4TrHCQRXxo4GgV5pTcdSfIh8Uk', '1', '1', NULL, NULL, 'Inactive', 48148096722, 'Silver', '1000', NULL, '11172021115641826194a0a175b12.png', '11172021115641146194a0a175ef8.png', '2021-11-17', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2021-11-17 06:26:41', '2023-10-25 01:31:30', NULL),
(11, NULL, '91', '9023948399', 'Amit', 'Kumar', 'test-shivam@yopmail.com', '$2y$10$erAKxoHvf0aJ8CoeZAf5ne0/Am4XFtXtiQFjfshGyv2uNj4t/XnPW', 'Abu Dhabi', 'Afghanistan', '2003-06-30', 'Male', 't71d7256hswT', NULL, 'Ios', '8fafb92358b1e35ea2ff2f7eb8888c13a53e9c380472e1f7332a13b5577e9f38', NULL, 'qgIAs6FYSnm5KdRi1n9a3PMVZ1osvOhYdzdN6RiYaBT919Ze6r6lYXB6itGf99sT', '1', '1', NULL, NULL, 'Inactive', 23914216086, 'Gold', '40310', NULL, '012520221635252961efd975e6ac7.png', '012520221635253461efd975e6edc.png', '2022-01-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-01-25 11:05:25', '2023-05-11 01:16:40', NULL),
(12, '1020202310475365325ad94d107.jpeg', '+91', '7894561236', 'fdsf', 'sdfasdf', 'fasdf@yopmail.com', '$2y$10$2A5cBrolx9hvUOV54ZlNe.5h8PpT3n28cywoNYbxO4X03ChRLLSI2', 'Abu Dhabi', 'Angola', '2011-10-20', 'Male', 'ENMv6811DWSM', NULL, 'Ios', '8047a5e7bd77e79b71b2413c3ef8e001551cfb1b5074e280230599fc666700e024f485c223170402063ae277330b62c185800961e4f9584e74f2f489da1dba9b75f7c6c8b545ceda70148bf4429aa834', NULL, '8YnSwLYVL3STzO4W5TsTVNBVCmJcl3yuLhV1qyNOZGrUJIKhDB83csfekRq4oIn3', '0', '0', NULL, NULL, 'Active', 33713296044, 'Silver', '1000', NULL, '102020231047548465325ada93ea9.png', '102020231047543365325ada940a3.png', '2023-10-20', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-20 05:17:53', '2023-10-25 01:31:30', NULL),
(13, '102020231240486532755037f0b.jpeg', '+91', '8449573022', 'Kevin', 'mendis', 'kevin@yopmail.com', '$2y$10$ZqzepD4V01sDqW7e0D0YpOodBoyAJdA/JO4LaITW9M1ybrbTAql.S', 'Abu Dhabi', 'Kenya', '2023-10-20', 'Male', 'J99E5972zWK3', NULL, 'None', NULL, NULL, 'XIqxD5ZSe9GDc6xXP1eqOK8qAx5u9sPrDGO72nBGLkR6KFvV118qOIzyKrYTwSUp', '0', '0', NULL, NULL, 'Active', 90829864092, 'Silver', '1000', NULL, '102020231240485365327550ef846.png', '102020231240485465327550ef9bb.png', '2023-10-20', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-20 07:10:48', '2023-10-25 01:31:30', NULL),
(14, '10232023121916653664c428f97.jpg', '+91', '9805658633', 'aditya', 'rajput', 'aditya@yopmail.com', '$2y$10$74lc9StYSRdS0Rj2n9fdQe/nLZVh.roNdkBgYLj7ts/0RMgxllOSS', 'Ras Al Khaimah', 'Algeria', '2004-06-10', 'Female', 'yoMQ9766HvyJ', NULL, 'None', NULL, NULL, '8GvpRWRouDDTPQPPmB2Z5ZAnVUvaLXHTTrYlKDxrc1N1h8uGiHVrs713U1u567Ky', '0', '0', NULL, NULL, 'Active', 90240793323, 'Silver', '1000', NULL, '1023202311103119653654a78c138.png', '1023202311103160653654a7982c4.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 05:40:31', '2023-10-30 00:33:30', NULL),
(15, '10232023121508653663cc16899.jpeg', '+91', '8449573021', 'Kevin', 'mendis', 'kevinmendis@yopmail.com', '$2y$10$N4j9O09d80xHjCMbiOEG0.L2D4hCN4v1X0.nQY1CxuHJCCndr0d5C', 'Abu Dhabi', 'Anguilla', '2023-10-23', 'Male', 'ovvF6745vAWA', NULL, 'None', NULL, NULL, 'LqnhE5CftDhV1NEwiN1eAvfUentH7bYqDWTa2VfyXw0Uv1UI3zq5pjllPIietjed', '0', '0', NULL, NULL, 'Active', 98015732120, 'Silver', '1000', NULL, '1023202312150883653663cc982af.png', '1023202312150860653663cc986a8.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 06:45:08', '2023-10-25 01:31:30', NULL),
(16, '102520230959006538e6e474dfd.png', '+91', '9817820480', 'abhay', 'rana', 'abhay@yopmail.com', '$2y$10$a9fwFezb0IMXTPvrA/6BbOW8Ie0CuxY7PgB5XHPNjPldNKNo5Fw0K', 'Abu Dhabi', 'Angola', '2023-10-23', 'Male', 'M7H84316E0Sd', NULL, 'Ios', '8098ca582f1383ebdbfa657aeac3d72df8fa84a265b8b85d077193b85e84faff803cbd6ceac1005f1b4b25933523f741221835e3ab6fb069144be8eed50bc98a6054892061d73a9755a0c3c1e8daa27d', NULL, 'aEYngsDsvvDISdjeTEIqzMcDoAvKljppaYQug3tFWLnLKZXfUhZKFak8bPc5phui', '0', '0', NULL, NULL, 'Active', 90869032847, 'Silver', '1000', NULL, '10232023121611196536640bae07f.png', '10232023121611906536640bae409.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 06:46:11', '2023-11-02 05:04:52', NULL),
(17, '1023202313561565367b7f93489.jpeg', '+91', '9761573380', 'string@', 'string', 'Str@yopmail.com', '$2y$10$JDQtCH3O5cYxaPz7hFKjt.SCs1dcKOoLTrZeYhQo.mpuUWLkat4NK', 'Abu Dhabi', 'Albania', '2023-10-23', 'Male', 'IQfD2544wQMw', NULL, 'None', NULL, NULL, 'gGo9uC7K7LUPcRWmjjtIWRLL9ageETHlvcx2dQBsFAM3uQtpBhZCTo61cCsqfegw', '0', '0', NULL, NULL, 'Active', 32072490185, 'Silver', '1000', NULL, '102320231356161965367b80439fa.png', '102320231356163865367b804757b.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 08:26:16', '2023-10-25 01:31:30', NULL),
(18, '1023202313595765367c5d7af59.jpeg', '+91', '4567891236', 'dsfas', 'sdafa', 'user5@yopmail.com', '$2y$10$gx/DFZqQ5qwqG2LkLbPuLeHrRZpKQ3NyefkGcmIUIrJCX1V90bed6', 'Abu Dhabi', 'Angola', '2023-10-23', 'Male', 'Selg2759LN1x', NULL, 'None', NULL, NULL, '1npPu83pT0Kp6CKY342gewsdXiQiwQ1gLdVsKBcgKfftdLpY9XBL9RPO4vMS65Ef', '0', '0', NULL, NULL, 'Active', 74404288539, 'Silver', '1000', NULL, '102320231359571765367c5dadadd.png', '102320231359571165367c5dadd69.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 08:29:57', '2023-10-25 01:31:30', NULL),
(19, '1023202315154665368e222f278.png', '+91', '7018073276', 'bxbx', 'gsgsgs', 'yop@yopmail.om', '$2y$10$LseDs0YxxtPfl9F35vxbIu2oyRdCCL4xZAe5kBAWlEIW4AhyDtnrW', 'Dubai', 'Caribbean Netherlands', '2023-10-23', 'Male', 'NAAX7922MyLi', NULL, 'None', NULL, NULL, 'ecdgq16PNzN4Gr3c08pTdn1oYBqNjyGpqkMIjHnKGiJEs2f4LoMO5lNQTp1qslUb', '0', '0', NULL, NULL, 'Active', 25902419989, 'Silver', '1000', NULL, '102320231514464365368de6d6a4b.png', '102320231514467865368de6d6cb5.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 09:44:46', '2023-10-25 01:31:30', NULL),
(20, '10232023154359653694bf4f1aa.jpeg', '+971', '55555555555', 'hvvuvuvuuvuvuvuvyvycycyvyvyvyvyvyvy', 'ihhhihihihihihihihibihihihihihihjin', 'bb@yopmail.com', '$2y$10$p.7G99SAehrWnjEAGGpzJuCDKaRmKMV8xzzwHQY0CneMKwAmNBmd6', 'Ras Al Khaimah', 'Algeria', '2023-10-23', 'Male', 'CLWC8323YY18', NULL, 'None', NULL, NULL, 'xdtaiEm1DSs5ESnWZRj8LRfKOOxevCgzuicC0VdqDvNB9sJZCtKUhw6Qh6UYerS0', '0', '0', NULL, NULL, 'Active', 26993948795, 'Silver', '1000', NULL, '1023202315435949653694bfcb33b.png', '1023202315435929653694bfcb541.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 10:13:59', '2023-10-25 01:31:30', NULL),
(21, '10232023160059653698bb033cf.jpeg', '+971', '9999999999', 'dhohocohcohcphfhcpchcohcphcphchpcph', 'hocphfpjcjpcpjcpjfpjfpucpjv', 'ko@yopmail.com', '$2y$10$RWX1yTd19oN2Xyz/UzjYRe0rbHlZATX0aAUXzwttTGMkN2h0.rcZC', 'Abu Dhabi', 'Albania', '2023-10-23', 'Other', 'GTzA2554Dr8v', NULL, 'None', NULL, NULL, 'p3fdbgmcvXl3CWqF22WaVlMr8QJRACOFQ7d5qpWTJqJz84D0kq1NtrU75fjZS4LO', '0', '0', NULL, NULL, 'Active', 69752498614, 'Silver', '1000', NULL, '1023202316005966653698bb46754.png', '1023202316005965653698bb46a8b.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 10:30:59', '2023-10-25 01:31:30', NULL),
(22, '1023202316113865369b3a7a6c1.jpeg', '+91', '9999999998', 'vyzyvzyvzvyzvvzzz', 'yvzyvyzyvzz', 'kk@yopmail.com', '$2y$10$5yZ0FVdBt6sxwF6jh03If.lnp5kZTFg6FI7BlLG.1TM8.OkGB4hIy', 'Abu Dhabi', 'American Samoa', '2023-10-23', 'Male', 'E4oY9332gZJD', NULL, 'None', NULL, NULL, 'pPYPRgeaEeEbvLSYVikfVUQkESNtVPudm6lymoX8fJcFc2IgnP7Nljti5lgJcD2D', '0', '0', NULL, NULL, 'Active', 20948739810, 'Silver', '1000', NULL, '102320231611383065369b3aabbfe.png', '102320231611389265369b3aabec6.png', '2023-10-23', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 10:41:38', '2023-10-25 01:31:30', NULL),
(23, '102420230651206537696846695.png', '+91', '8580744866', 'user', '55', 'user6@yopmail.com', '$2y$10$K6cVytpzlzGTmPJc2odokuMYdFWI4M2KjdurzMJfhU0ztyeA3cS9O', 'Abu Dhabi', 'Uzbekistan', '2023-10-24', 'Male', 'PMC44817R6sZ', NULL, 'None', NULL, NULL, 'Q34UIp1R4oHjCKkdxsbOeiTrQE7MaXTW9IktGFFKVrAHquUUyD8dNc0JSVSaflT3', '0', '0', NULL, NULL, 'Active', 65754787620, 'Silver', '1000', NULL, '102420230447492865374c75cee2e.png', '102420230447498565374c75cf115.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-23 23:17:49', '2023-10-25 01:31:30', NULL),
(24, '1024202307025665376c2011265.jpeg', '+91', '9874561233', 'dsfasd', 'sdfasdf', 'user7@yopmail.com', '$2y$10$hH25W51fxGggCxv2CAo1ee4Sl8pIGwhPFggmgKRJ3L3/qWFBUBkty', 'Abu Dhabi', 'Albania', '2023-10-24', 'Male', 'GBmM3317Dm1M', NULL, 'None', NULL, NULL, 'aEP59DOjYpbpyUTD7EPWEOwfVlDWX1Xumg1tyK7Gx5jkN4VBFBruiF4g3MVR92dT', '0', '0', NULL, NULL, 'Active', 69794335282, 'Silver', '1000', NULL, '102420230702561365376c20a08cb.png', '102420230702566065376c20a0adc.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 01:32:56', '2023-10-25 01:31:30', NULL),
(25, '10242023072528653771681733e.jpeg', '+91', '4567891233', 'sdfasfsajfhjsahfjsahjfhsajfhjashfjs', 'sdfasdfsadfsad', 'user0@yopmail.com', '$2y$10$RIIIIBgksZgB8J/Ub8EYfuym79DCyN7GXnGRiIknKIGbc/v2S.Lpi', 'Abu Dhabi', 'Andorra', '2023-10-24', 'Male', 'jomO4891fniU', NULL, 'None', NULL, NULL, 'wvENMuLPUHoYRFLJMtOZhTxsxBhUOHvahe1tkdPAcm3cmZ1ZaLTkdIdxnf5x2QyH', '0', '0', NULL, NULL, 'Active', 34773917849, 'Silver', '1000', NULL, '1024202307252924653771690e877.png', '10242023072529476537716911488.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 01:55:28', '2023-10-25 01:31:30', NULL),
(26, '102420231424146537d38e4cc4f.jpeg', '+971', '44444444444', 'bdugdhdhdhdhhdhdhdhhdhdhdhdhhdhdjjd', 'dhhdhdhhdhdhdhhdhdhdhdhhdhdhdhjdjdj', 'rk@yopmail.com', '$2y$10$KFAFnrd5LzrPoe0XM1QnLOA/uWhxg.pfxAbNzlD2MgSWPGyk0W/qi', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', '8FRK1130dvP9', NULL, 'None', NULL, NULL, 'ftzXMGkSu3SbXe01iIV7JdFgzZ6mjEECOSuhEbPq9E0ADpE3f4IugA4SKPSlMvsS', '0', '0', NULL, NULL, 'Active', 31351813593, 'Silver', '1000', NULL, '10242023142415566537d38fd7e8f.png', '10242023142415936537d38fd8080.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 08:54:14', '2023-10-25 01:31:30', NULL),
(27, '102420231454546537dabec55bb.jpeg', '+971', '5555555555', 'ggggg', 'kk', 'pk@yopmail.com', '$2y$10$l/QpSXO7dP1D4r..BcBEyuanrn/frN5pZ8yy6ZDIRM63SrgwqeMKu', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', 'iF5c8065HsuM', NULL, 'None', NULL, NULL, '2C8SHFp9rl8jirbEUMmhwsyCdS5LEfrbxIzDpw377sLaUibn3hYJXT71U2PCI8Zd', '0', '0', NULL, NULL, 'Active', 42874400135, 'Silver', '1000', NULL, '10242023145455486537dabf2977b.png', '10242023145455856537dabf29987.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 09:24:54', '2023-10-25 01:31:30', NULL),
(28, '102420231518066537e02e88950.jpeg', '+971', '5555555556', 'jack', 'John', 'jj@yopmail.com', '$2y$10$02d.ykP8yQSHN5SMTnpp8.lVIlbJVd8TPDV4T6NjfquVQcnZJMhrO', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', 'oYGC2760k98H', NULL, 'None', NULL, NULL, 'fIjWVNY57s7MIAmMzsLOU8qtPF1Pvf0PQv33wpkAmcTNEviH3Bin06V05yhTAjRw', '0', '0', NULL, NULL, 'Active', 87617726847, 'Silver', '1000', NULL, '10242023151806926537e02ec44e6.png', '10242023151806716537e02ec466c.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 09:48:06', '2023-10-25 01:31:30', NULL),
(29, '102420231535286537e4408660f.jpeg', '+971', '9859393930', 'njjj', 'jjjjjj', 'golu1@yopmail.com', '$2y$10$sAy/kwU/HmQeDCEaYEgdd.sTblfPARDKJKxos0paEm2b5ljUx4Ikq', 'Ajman', 'Albania', '2023-10-24', 'Male', 'P7Us2901d1eG', NULL, 'Ios', 'c55ef37218e3cf96def14a557743c117cf4bc5d400abe0ca84828fa9e1957cb0', NULL, 'lY8UEjNVG5vOFTHaMEKmnyBqNGz348UywW6ohJmd6tulIPyIQISCJqfOg7D853s5', '0', '0', NULL, NULL, 'Active', 20801196295, 'Silver', '1000', NULL, '10242023153528706537e440d4cb9.png', '10242023153528926537e440d4e0b.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 10:05:28', '2023-10-25 01:31:30', NULL),
(30, '102420231551376537e80936a2b.jpeg', '+91', '4444444444', 'kkkkk', 'bbbbb', 'we@yopmail.com', '$2y$10$NyKbxRbU7VGbtUuSgSnf1OB6.hmUY4a1/AWJFjX.4G4EFY46ebUfi', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', '5YeH2260RbYo', NULL, 'None', NULL, NULL, 'AL7ci6RFOoM3TPTNpZTNt5DZlrCua8dQyE567wCcT4QW2uEdQh8ezEa2URpo0NHt', '0', '0', NULL, NULL, 'Active', 99626465141, 'Silver', '1000', NULL, '10242023155140206537e80c6c12e.png', '10242023155140566537e80c6c303.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 10:21:37', '2023-10-25 01:31:30', NULL),
(31, '102420231607276537ebbf67763.jpeg', '+971', '2222222221', 'hhhh', 'hhhh', 'hh@yopmail.com', '$2y$10$TLkcgR3wqLx3XgCmdG/1e.8xyyXf41XwsdX0BOCCJaav8249LEhEa', 'Abu Dhabi', 'American Samoa', '2023-10-24', 'Male', 'KGAZ1347vfba', NULL, 'None', NULL, NULL, 'VWj86qMdAbJm3kWzlVJ3fn2h5o3FXfBZT0BSRb3rtHrWG67NMyEI0uYVDPDZd0uL', '0', '0', NULL, NULL, 'Active', 42800877861, 'Silver', '1000', NULL, '10242023160727146537ebbfb32e5.png', '10242023160727766537ebbfb3472.png', '2023-10-24', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 10:37:27', '2023-10-25 01:31:30', NULL),
(32, '1025202304362365389b47e093e.jpeg', '+971', '9761573381', 'Kevin', 'men', 'userkevin@gmail.com', '$2y$10$gANnyLfzDAeZjQcp/xWIpuNA4kRSyBnmHStscX3yJIP7UN2djdC3i', 'Abu Dhabi', 'Albania', '2023-10-25', 'Male', 'yIul3059K0s1', NULL, 'None', NULL, NULL, 'dPcNEL6NYcgdCsLd614pn31RfvFGW6CPRKTlzRivw9njpHCxRdLxarmtR74Wxz8g', '0', '0', NULL, NULL, 'Active', 50328966669, 'Silver', '1000', NULL, '102520230436245765389b48463c3.png', '102520230436249265389b4846506.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 23:06:24', '2023-10-25 01:31:30', NULL),
(33, '102520230507176538a285cd404.jpeg', '+91', '9997257280', 'user1', 'user2', 'user12@yopmail.com', '$2y$10$rVOSLJXd78mEC6BptsCra.cBPpoSK8F8DU0HdzyOtXqZDCRrWR5NC', 'Abu Dhabi', 'Afghanistan', '2023-10-25', 'Male', 'yG0t9948fvXl', NULL, 'Ios', 'cf26213160585663821024c165ddd5530cbaf6b1aeeacb8b563a3b7d830c5b05', NULL, 'kVXQC6gVhkn8dsQOirkwLQltQlWomPJTCs8zWtM71U0yqJQBx9GD7XdTBGjZkTWF', '0', '0', NULL, NULL, 'Active', 40895165258, 'Silver', '1000', NULL, '10252023050718946538a28615e7c.png', '10252023050718706538a2861615b.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-24 23:37:17', '2023-10-26 23:52:47', NULL),
(34, '102520230837446538d3d81dbac.jpg', '+971', '33333333331', 'vjvjvvjvzvjvxvxjjvsjvxvjxvbxjbxzjbjzbbzbjzjbzbjbzj', 'djgdjjvsvbdjbdbsibsiibsibsjbsjbjbsjbsjjbsbsjjjjsjb', 'pp@yopmail.com', '$2y$10$VF/kG9TBtTzcCPTq/Yv7Gu5nynIngeQ8y/CwiWf5jxEzbeHwm6zIC', 'Dubai', 'United States of America', '2023-10-25', 'Female', 'ngiM8694LfN2', NULL, 'None', NULL, NULL, 'ru7HZUqJR4mjAtaZHtbB2mV00MoxaNXdcM5sPGwo1EsmkvJO5MqTAsuZrkd9Y2nN', '0', '0', NULL, NULL, 'Active', 86986763764, 'Silver', '1000', NULL, '10252023065936796538bcd8eb4b3.png', '10252023065936436538bcd8f28f7.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-25 01:29:36', '2023-10-25 03:11:45', NULL),
(35, '102520230724256538c2a9eb36c.jpeg', '+971', '797894654', 'fasfhaafh', 'fasjkhfjksf', 'hkjahkf@yopmail.com', '$2y$10$E5tYB9y5FbGg2hrlcW6VGuQrZCpZZX5/4qtE.ryVGbDDJAt/zsLrS', 'Abu Dhabi', 'Afghanistan', '2023-10-25', 'Male', 'Km9Y5953LgOA', NULL, 'None', NULL, NULL, 'pSb7oJVzWfsgpLVLjvOKYUoNFBVQzLEjCHU3Im6Th509rn9RY9bgFeunQ0oAK3Hw', '0', '0', NULL, NULL, 'Active', 34919456294, 'Silver', '1000', NULL, '10252023072427366538c2ab59562.png', '10252023072427126538c2ab59721.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-25 01:54:26', '2023-10-25 01:58:14', NULL),
(36, '102520230839536538d45923814.png', '+236', '3666555444', 'bbbhhhh', 'vggjjjjvggg', 'Ram.Kumar@onsolve.com', '$2y$10$jX5WmRspaO6rhvdbfbeESesHNxtmn58ihVzOcK3Sa8hCy6AN..dd.', 'Abu Dhabi', 'Albania', '2023-10-25', 'Male', 'KESL3255WEnz', NULL, 'Ios', 'ef406f21c632f0bef0b8697fa36f1db1eb3a105fc422abba06c7f4f54ee1e7ff', NULL, '4VTWksJSIYBYh3vCjj4yMLzf7EgvUeKu3zYCJ8cgXUSmbqOuIZfsQYR7OstaH6SJ', '0', '0', NULL, NULL, 'Active', 25627539506, 'Silver', '1000', NULL, '10252023083912876538d4300ce7b.png', '10252023083912676538d4300d244.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-25 03:09:11', '2023-10-25 03:09:53', NULL),
(37, NULL, '+91', '3333333333', 'usg7usghsuhsu', 'ug77g7g', 'hk@yopmail.com', '$2y$10$a.0RjTq6eXS61moZ77DRbem4LAVI2aAESrTxfiY8ul1BG5VmTOsju', 'Fujairah', 'American Samoa', '2023-10-25', 'Other', 'tHak6983KQW6', NULL, 'None', NULL, NULL, '1rWxP27d1sm9VhDMboWl57HFslWkVGSXD3CQtD2Aj815Ojqtwd4gMT0cTgoN5jM0', '0', '0', NULL, NULL, 'Active', 15377294488, 'Silver', '1000', NULL, '10252023084327686538d52fbc956.png', '10252023084327376538d52fbcd08.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-25 03:13:27', '2023-10-25 03:13:38', NULL),
(38, NULL, '+91', '3333333335', 'ycyyffyyffy', 'huhuh', 'uu@yopmail.com', '$2y$10$VJMMU9vmv5Dgife7We3OMubMB5n9YGkGmFZTo4k4hz0tbXYrtKNYi', 'Ajman', 'Algeria', '2023-10-25', 'Female', 'asim4396FhLL', NULL, 'None', NULL, NULL, 'OACrCE3oO0tcwIJJAOV2tlaE6gDlSHLnl4xTN002seGrFyWR4DRae9lcxfn5Zo7P', '0', '0', NULL, NULL, 'Active', 14419996330, 'Silver', '1000', NULL, '10252023090211146538d993de892.png', '10252023090211606538d993e4dad.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-25 03:32:11', '2023-10-25 05:29:48', NULL),
(39, '102520231138156538fe27a0d82.jpg', '+971', '84646464646', 'cavajvviwhxkehxkheoxhoegxk3gxkhekxgeoxheoxheoxgoeg', 'zhwidh2isho3gdo3gdo3godg3idg3odh3ldgo3gdo3gdo3gdo3', 'harmantesting9@gmail.com', '$2y$10$aqOJ.sEBLV8HCod3x2k0Ne6A/jHWLaMXQhaJ2ysi83gjVhnE9Jqdy', 'Fujairah', 'Afghanistan', '2023-10-25', 'Male', 'SHF07418kKfk', NULL, 'None', NULL, NULL, 'c57mdFYTBTR1xvbZwlaF9Fqf4tmAnIJ09aDjYl8Nf7PawK707Su6YpVoHpCL0Nbl', '0', '0', NULL, NULL, 'Active', 40063779802, 'Silver', '1000', NULL, '10252023113816236538fe28065ec.png', '10252023113816236538fe2806973.png', '2023-10-25', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-25 06:08:15', '2023-10-25 07:24:58', NULL),
(40, '10262023074423653a18d700dd8.jpg', '+91', '6230362499', 'rajput', 'tomar', 'aditya@gmail.com', '$2y$10$wQWrJzPtXQtvijHouHA7vO9WwxNRFD4aBn2uhtsdVOlrhkxJas2py', 'Ajman', 'United States of America', '2005-03-12', 'Male', 'xa613049ZuZA', NULL, 'Android', 'f49ZMu-KSymZsprLeub8hp:APA91bHslSH4p_lwUVtM0D7Gyg_SImWY4nf4Ek62kXavD0LrU70bdmj4PtMBivQTxOOywoU4elJpCxCSzW3uxs5QFrBdvfW2Hbigi3Jlc6xBQMVyBGQoiJv0Elx8R_TEb27eEXtBrX-r', NULL, 'Q83RrhEZ7uLnyMo8Tph4d00eopTkK51e7yzlTAL2iFthkQWKIf30uTmt1HT0I524', '0', '0', NULL, NULL, 'Active', 32782975017, 'Silver', '1000', NULL, '1026202307442351653a18d777efb.png', '1026202307442387653a18d778070.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 02:14:23', '2024-03-12 07:31:29', NULL),
(41, '10262023102200653a3dc87b56b.jpg', '+971', '2222222222', 'uvgugughshshdjvvduvdugxuvdvduvuvdvdvdvuvduvduvduvd', 'zhxvhxhvxhbxhbdhvdhbhhbdhhvdhvdhvxhvxhvxhvxuvxhvvx', 'mk@yopmail.com', '$2y$10$Bdw39248WHVgSUzedlN3Se2ESD8wZ.z1Zm6Xy0R0k58u/ol3bETnW', 'Ajman', 'United States of America', '2021-02-24', 'Male', 'Fj8N6469rwFm', NULL, 'None', NULL, NULL, 'xsU7wLeufMKJZqrBrqhBNwxayauA1DHHpMNT0BRzfUuBnMa2KsuPuE0nfyf5VyIl', '0', '0', NULL, NULL, 'Active', 52169127297, 'Silver', '1000', NULL, '1026202310220080653a3dc8b9fb9.png', '1026202310220067653a3dc8ba3fa.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 04:52:00', '2023-10-26 05:43:21', NULL),
(42, NULL, '+971', '868176861768181', 'q zg2z1zvt', '1z6v1uz u1uz1', 'mobilephone15515@gmail.com', '$2y$10$RPn5LblCC93HT4hltAC/d.k8L//iAK1G7GbuC7GFRvGSfP1MxDMba', 'Ajman', 'United States of America', '2023-10-20', 'Male', 'OYqB94741NVZ', NULL, 'None', NULL, NULL, 'v9JOy6BerThZtktJ4eYryFUI7ORWa1RT9jMwnRrdcGel3B1nSjS0B4w6PQHJfjZN', '0', '0', NULL, NULL, 'Active', 23125694629, 'Silver', '1000', NULL, '1026202310523657653a44f4da3e1.png', '1026202310523690653a44f4e79a8.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 05:22:36', '2023-10-26 07:16:15', NULL),
(43, '10262023112427653a4c6b73f3f.png', '+971', '7777777777', 'hdydhhdiydiydohddhodohhodhdoohhodhd', 'lhxhkdhodgdodyogdgodoydohdohdhodhod', 's@yopmail.com', '$2y$10$4DYPy.7N2XMPEUwUN.SbIO2f/sHFfPvzjuk55wzRtiq05VcQXE4cK', 'Abu Dhabi', 'Algeria', '2023-10-26', 'Female', '5Gr52946zEhi', NULL, 'None', NULL, NULL, '2xXBlYXms5PTLKgwndibYCRnTlAEudzdfEMkeqls4emq77M8Il6zIW7els90K83j', '0', '0', NULL, NULL, 'Active', 94166854854, 'Silver', '1000', NULL, '1026202311221761653a4be9f01de.png', '1026202311221798653a4be9f0438.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 05:52:17', '2023-10-26 06:01:08', NULL),
(44, '10262023114718653a51c667bd1.jpeg', '+971', '8888888888', 'gdydyodogyyxhohoxhxxkbxkgxohxoxhhch', 'ohdtohoxhoxhlxhoxochxhoxhdhgpdofhoh', 'h@yopmail.com', '$2y$10$0XdiEWMzh/IG6kGn0zCgAu0iEooFqYwfrLqgOuXXiUW2dRC9jFN1a', 'Abu Dhabi', 'Albania', '2023-10-26', 'Male', '3yoa2120BUUM', NULL, 'None', NULL, NULL, 'xq19WdjbKntstL56o9IJfLUVigJHp2fhmLVhNGyeCRjWOQGHp3E58C48oX00fm6D', '0', '0', NULL, NULL, 'Active', 42370233887, 'Silver', '1000', NULL, '1026202311471956653a51c70c92b.png', '1026202311471995653a51c70ccf8.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 06:17:18', '2023-10-26 06:58:32', NULL),
(45, NULL, '+91', '123456789', 'jbsbjkbwxkbwxbjwvckwbocebckwbckwbkcbwcbwkcbwkxbwkx', 'wxbjbwxbjwxbjwbxjwvxjwbxjwbxjbekxbwkxbwixhowhxiwhx', 'adityar@yopmail.com', '$2y$10$nYBCFrLJbpeQeNVXwQjjwOFJMp6my2UMyvARZ8C.ZtFckW7syv6Pa', 'Fujairah', 'Algeria', '2023-10-26', 'Female', 'Nvm43490nkng', NULL, 'None', NULL, NULL, 'xZGLWhxi0vlRV6lyhaGLGDivm9DSzxQoMoAXX8Ir2y1kRYqc5Y1rVAzdckHCCu43', '0', '0', NULL, NULL, 'Active', 75949466361, 'Silver', '1000', NULL, '1026202311482859653a520c7ecdf.png', '1026202311482859653a520c7f199.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 06:18:28', '2023-10-26 06:20:52', NULL),
(46, '10262023120428653a55cc726cd.jpg', '+971', '77777777771', 'sssssssdddddddddddd', 'hvuvyvyvvyuvyvyy un', 'km@yopmail.com', '$2y$10$WZ4vkwwtq77A6G.yguD1XestahCJEhenF88n1zSgNKmAFOnBuyJr6', 'Fujairah', 'United States of America', '2023-10-26', 'Female', 'BuYZ5509JZOg', NULL, 'None', NULL, NULL, 'SV5NtXSj2j92ogZscJz2c2QQhntaArjQahgpIIxS81v0xMw6Khe39FqfGRNJh1zR', '0', '0', NULL, NULL, 'Active', 14400379616, 'Silver', '1000', NULL, '1026202312013573653a551f2fa12.png', '1026202312013582653a551f2fe6e.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 06:31:35', '2023-10-26 07:18:51', NULL),
(47, '10262023123116653a5c14c67b1.jpeg', '+971', '6666666666', 'jvjvjvuvjvjvivjvivuvivjvhvjvjjvjjvj', 'guvuguguguuguguguguguvuvuvjvjvjvjvu', 'kok@yopmail.com', '$2y$10$xPizOzNPZi/NAXpcc98ovOInEUiMJNHueRbQubmOiO5/bWAuTTecm', 'Abu Dhabi', 'Afghanistan', '2023-10-26', 'Male', 'keHI9960Lh9U', NULL, 'None', NULL, NULL, '7667f1sLjTCzyVtkU7IO8Gx79VeCIuSwlWLX25jieV7PGp3U5WLEkPjiJxZZqfDU', '0', '0', NULL, NULL, 'Active', 48238785934, 'Silver', '1000', NULL, '1026202312311797653a5c1502097.png', '1026202312311730653a5c1502282.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 07:01:16', '2023-10-26 07:07:58', NULL),
(48, '10262023124251653a5ecb14915.jpeg', '+91', '9876543211', 'kkkkkkkkkkkkkkkkkkkkkkk', 'uvjvuvuuuvjvivjvjvivuvjvjvuvjvjvjvu', 'lo@yopmail.com', '$2y$10$zLPm1r/sZ3hJvMGEsaNsIeuCobs0lca/ESpD7A2V5aNnhV54OVND6', 'Abu Dhabi', 'Afghanistan', '2023-10-26', 'Female', '9iFp5834h6Td', NULL, 'None', NULL, NULL, 'fgSaMWFtkrQLkgSonpiTmOeLkPPmN57ecrGwlTb0p0jtIXhLnDf2tDNdCwtIrl5a', '0', '0', NULL, NULL, 'Active', 85469536956, 'Silver', '1000', NULL, '1026202312425142653a5ecb4da90.png', '1026202312425182653a5ecb4dcb4.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 07:12:51', '2023-10-26 08:12:04', NULL),
(49, NULL, '+971', '684864864864', 'hvsvusvjshbjjbsbi', 'aibbia', 'mobilephone115@gmail.com', '$2y$10$TRcKmnHq1/4N5AgH31HR7.thxP9llaVOptHnxcvRvv/Cff7lbnz2i', 'Ajman', 'United States of America', '2023-10-20', 'Male', 'zJCi48909Pw4', NULL, 'None', NULL, NULL, 'krUzjTcgiTXN1XRJFxslZtdpLqg7cCdOwnZ4JB6FLCxc6P02y5xBmipYKJDlTGne', '0', '0', NULL, NULL, 'Active', 87827524891, 'Silver', '1000', NULL, '1026202312471829653a5fd69f64a.png', '1026202312471835653a5fd69fb15.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 07:17:18', '2023-10-26 07:17:24', NULL),
(50, NULL, '+971', '8676846846864', 'qz hqvuz1ug0z', 'qxguquzg1guz1z', 'mobilephone155@gmail.com', '$2y$10$L7SvVfnfAngxgc4sAzNsJeaV7gN0mJ4DTmcEfUvQZlobPL.Hz.EdG', 'Dubai', 'Albania', '2023-10-26', 'Male', 'BKVe8758IGZv', NULL, 'None', NULL, NULL, 'Kd9v6vqvlj68EIahxi8pepEfduws9eXfJDszmH4vX44foJe7MUgSwpuSULVqD2WV', '0', '0', NULL, NULL, 'Active', 10556293002, 'Silver', '1000', NULL, '1026202312484780653a602fa26cb.png', '1026202312484737653a602fa2a52.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 07:18:47', '2023-10-26 07:22:39', NULL),
(51, NULL, '+971', '8486864865', 'vzvz', 'sugahvghas', 'mobilephone@gmail.com', '$2y$10$nEnogOom3mx55VlBNP7cAee.lypsG7fMWGDVh.rD/lE6t2M3UO65m', 'Fujairah', 'United States of America', '2023-10-13', 'Male', 'xRvq7749cUkd', NULL, 'None', NULL, NULL, 'oxO4CkDnV8eV2y13tOUeTXsykxLjKv55vfUNI6CgTkcnrYt6TUTOUHIKL4SCu45S', '0', '0', NULL, NULL, 'Active', 60424673362, 'Silver', '1000', NULL, '1026202312545941653a61a38c3bf.png', '1026202312545984653a61a38c54d.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 07:24:59', '2023-10-26 07:26:25', NULL),
(52, '10262023140109653a7125a383a.jpg', '+971', '22222222221', 'ubzubsubsuvsvubs', 'H U ubababuabubauba', 'ii@yopmail.com', '$2y$10$YXlz690duVYm7kHnGwWYDe9McbXt6sQmSWuVlWVwROpCrzGmVccRy', 'Fujairah', 'American Samoa', '2023-10-26', 'Other', 'tbNd27721e7M', NULL, 'None', NULL, NULL, 'vI3xQPdZNjxPrmJ30v8N5E2cS61a9Sh9vM8cLv2hCBhy4NmIKiPaGHuhvLJoKL8A', '0', '0', NULL, NULL, 'Active', 98653696294, 'Silver', '1000', NULL, '1026202314011039653a71267b76a.png', '1026202314011030653a71267bbec.png', '2023-10-26', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 08:31:10', '2023-10-26 08:38:15', NULL),
(53, '10272023044543653b4077f0be8.jpg', '+971', '42424242425', 'auhuuahuhusbsububsuvsubsbsuvusvuvsvsuvsuvsuvuusvvs', 'suvsbuuvsubsubsubusuvusubbsuuvsuvsuubusuvsvvsvsvsu', 'rd@yopmail.com', '$2y$10$V.NUoMapIaSfTf0kRvzmweTMXEz1N1y74aRqdAQVutawsLfbzXBTG', 'Dubai', 'Algeria', '2023-10-27', 'Female', 'befb7656nmum', NULL, 'None', NULL, NULL, 'JRpTFk9zKQ9IFEJbPQxfQkoakgITVuWG8MAYRO1qJkRs1vliQVMoMwC5692a0yDt', '0', '0', NULL, NULL, 'Active', 14532025006, 'Silver', '1000', NULL, '1027202304454426653b40787bfd6.png', '1027202304454411653b40787c203.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-26 23:15:44', '2023-10-27 00:39:07', NULL),
(54, '10272023063940653b5b2c389ac.jpeg', '+971', '84543198664', 'suvsubsbsubbsbsbsbssbudbsjhvshvshvs', 'uvdubsvsbbdbsbdbdbdbdnnsnsnnsndnjsd', 'ki@yopmail.com', '$2y$10$GOJPJsOUhd0Gsbv5h.U52u67yW5bKlDNDyY4gG6pO86WIUN/WV5Uy', 'Abu Dhabi', 'Algeria', '2023-10-27', 'Male', 'RL2U8876U0wt', NULL, 'None', NULL, NULL, 'G4iOKM0nUlM8CLYRgYzv9UPAxZ613fZABmsfWfw1o2zY8usoG9RKO3OHdPFIhOFI', '0', '0', NULL, NULL, 'Active', 50597573729, 'Silver', '1000', NULL, '10272023063941100653b5b2d008d8.png', '1027202306394142653b5b2d00a39.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 01:09:40', '2023-10-27 01:43:13', NULL),
(55, '10272023071724653b640478ba1.jpeg', '+971', '2582582582', 'chcuuvjcjvjvjvjvjvjvuvjvjvivpvpucph', 'chchchcohcohxoohocohcohcohcohchpcph', 'kko@yopmail.com', '$2y$10$0.gMqQq.Q/sHBaK4Y59ROugqGkHJRtQV6HhIDquHuU.wYuzdt9EHy', 'Abu Dhabi', 'Afghanistan', '2023-10-27', 'Male', 'PCTX8642B8zu', NULL, 'Ios', '747ab146ad5f7dc5ea786e8706b6858bda78206c73490621b8bbe9eec12624c2', NULL, 'ml72nvh8ud5PLrxk9Hp7ufMfMHDb74dzzKeA4JwK8Zt6bbWLltq9ysUr8kdQqxog', '0', '0', NULL, NULL, 'Active', 56864475627, 'Silver', '1000', NULL, '1027202307172425653b6404aad9e.png', '1027202307172493653b6404aafd9.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 01:47:24', '2023-10-27 05:27:58', NULL),
(56, NULL, '+971', '85809466464', 'vqjzvjzq', 'qzjvqjvzhvjqzjqvj', 'harmantestihhng9@gmail.com', '$2y$10$AaL1v8JVv2..m0B5LxLuuegT3Hn/1A8y9VH2Urx5bf9t6eKj80/YW', 'Ajman', 'United States of America', '2023-10-25', 'Male', 'IPKF3883tXWZ', NULL, 'None', NULL, NULL, '8HXmR05rC85Mw98PjuP4qxa2s22T5d0pv3ElmenGda87zn1mbEGYFVqDmb3QEJEs', '0', '0', NULL, NULL, 'Active', 62903533331, 'Silver', '1000', NULL, '1027202308305345653b753d658db.png', '1027202308305391653b753d6e79b.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:00:52', '2024-01-02 05:17:23', NULL),
(57, '10272023083434653b761af3e01.jpg', '+971', '32323232321', 'rocky', 'john', 'er@yopmail.com', '$2y$10$wMqLeCGWtMaKaULsfu8Lj.oiBHlW29Mf2SRsKUrljyiws7cWAeGR2', 'Fujairah', 'Andorra', '2023-10-27', 'Female', 'PrB33264Jvap', NULL, 'None', NULL, NULL, 'vn1I2AERsdiTUarSKyKy0LM2PYgxIEwAvxvN2H0gZVzzpFTQM5vYTy9amZOnv6M1', '0', '0', NULL, NULL, 'Active', 58838782113, 'Silver', '1000', NULL, '1027202308343576653b761b9489d.png', '1027202308343520653b761b94ab8.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:04:35', '2023-10-27 03:05:16', NULL),
(58, '10272023083802653b76ea8ba28.jpg', '+971', '888885588', 'FFC ccccf', 'vcc', 'cc@yopmail.com', '$2y$10$Y1RIdeq/8EnWwFlAdTjgDuvAKoZcaa4dnXvQ77qurVNfXEobF6sKe', 'Ajman', 'Albania', '2023-10-27', 'Male', 'c48u6974yKf8', NULL, 'None', NULL, NULL, '5f1QkhLpuyhSINDNDrdUZeyl7gB8t4otVJWVFu3DK8kaYkGjCrZvT5GsL5082t0h', '0', '0', NULL, NULL, 'Active', 77979953407, 'Silver', '1000', NULL, '1027202308380210653b76eade11a.png', '1027202308380255653b76eade25f.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:08:02', '2023-10-27 03:09:19', NULL),
(59, '10272023084051653b7793df875.jpg', '+971', '12121212124', 'ugdugsugsuzvshg', 'zhgHjusvs', 'rr@yopmail.com', '$2y$10$kZ9i7IMB0cz8AyUCWuoikekqaM3VIz/amW61Xlm9Gi9mkEX6E8MqC', 'Ras Al Khaimah', 'American Samoa', '2023-10-27', 'Male', 'd9VA8319ftY1', NULL, 'None', NULL, NULL, 'ddFPlOzk4vseK8nhPO2BCPGlU8VFawaPvfowQ9MqPyCrUmujNmGeH0v3skE0MAj3', '0', '0', NULL, NULL, 'Active', 25382663346, 'Silver', '1000', NULL, '1027202308405468653b779689bc2.png', '1027202308405474653b779689f04.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:10:52', '2023-10-27 03:10:58', NULL),
(60, NULL, '+971', '33333333332', 'hxhdjjx', 'zhzhhzhzhz', 'ip@yopmail.com', '$2y$10$bPp8yXIAJ28t9WaFcLpJIuyBx7GAqrsOhT.eAbqyfZxDYY.osiw/.', 'Fujairah', 'American Samoa', '2023-10-27', 'Other', 'cufa64293720', NULL, 'None', NULL, NULL, 'DQK2wLn7xfbqB0xcpjrTuaiAUwZay5Cf7ht3dmWh26mXHL1ja89TOsIs6q6OFAza', '0', '0', NULL, NULL, 'Active', 63676168530, 'Silver', '1000', NULL, '1027202308422069653b77ec3eff7.png', '1027202308422018653b77ec3f387.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:12:19', '2023-10-27 03:20:27', NULL),
(61, '10272023084902653b797e781f4.jpeg', '+971', '7787983450', 'Dev', 'Razz', 'debrazz@yopmail.com', '$2y$10$4Su4KYWvwBNkUmtjolSCsOIPnvxXZm3Bh86izAll98Aju4LeEcTHe', 'Sharjah', 'India', '1952-10-27', 'Male', 'Uqnc71342VCr', NULL, 'None', NULL, NULL, 'fI293E39TBBF8hLu6nZcQ9qHjfrjWAmYqyqTyQKBndDdZhSUCshURt5Wu3JXtjaK', '0', '0', NULL, NULL, 'Active', 20369775900, 'Silver', '1000', NULL, '1027202308490270653b797ebb067.png', '1027202308490217653b797ebb439.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:19:02', '2023-10-27 03:29:47', NULL),
(62, '01092024130657659d44f1d0804.jpg', '+971', '1212121212', 'rockyyyy', 'john', 'kj@yopmail.com', '$2y$10$B5zPWhApiffr4MGPYp6AjeWWvGkuZ6iVaXfPSINN2Zpx6SCu/qTda', 'Ras Al Khaimah', 'American Samoa', '2023-10-27', 'Female', 'GNa07875zrwj', NULL, 'None', NULL, NULL, '7MHUimReTOlniEedYYzoOI3Y9dYLI83w29KbsjpY42cdS5i0oMBHlehucUFZ8bzQ', '0', '0', NULL, NULL, 'Active', 68949699171, 'Silver', '1000', NULL, '1027202309001192653b7c1bbd140.png', '1027202309001194653b7c1bbd3c5.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:30:11', '2024-01-09 07:38:11', NULL),
(63, '10272023090743653b7ddf178b8.jpeg', '+971', '7749016151', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 'www@yopmail.com', '$2y$10$dfBlGOTd4jKnoXeGvC/vW.7.EArqpQo9iWUfYQDKWtafUbkbGOawK', 'Umm Al Quwain', 'India', '1921-10-27', 'Male', 'F8RE5500MEsL', NULL, 'Ios', 'b197fcbc36cd49b6b5acb7b1a9c9cc7d889cc0a726d960395010edde8e335848', NULL, 'e8LmJ0cNknH6eOvRpdqzQeihTMsyy7TA6wceXlwUe1ZBtmPHTynycSl3UxqycRBT', '0', '0', NULL, NULL, 'Active', 19999769894, 'Silver', '1000', NULL, '1027202309074327653b7ddf46321.png', '1027202309074348653b7ddf465fc.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 03:37:43', '2023-10-27 03:37:43', NULL),
(64, '10272023124436653bb0b48fd82.jpeg', '+971', '3693693693', 'amit', 'Kumar', 'amit@yopmail.com', '$2y$10$6sqOeG4pBWDdiJ7g6KywT.1Tw9T5t6AdbovJQoeZDN.QkGQXoF34G', 'Abu Dhabi', 'Albania', '2023-10-27', 'Male', 'BWDR68075KZ1', NULL, 'None', NULL, NULL, 'uDvhHtnoLexNk9L54hhhCvX2his0B1Q9b79ahzBHnFdOEXzztzb4obYg7KRsbWfj', '0', '0', NULL, NULL, 'Active', 90929199885, 'Silver', '1000', NULL, '1027202312443758653bb0b525bc3.png', '1027202312443724653bb0b525db8.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 07:14:36', '2023-10-27 07:26:55', NULL),
(65, '10272023124735653bb167b50a7.jpeg', '+971', '8542222222', 'gogkcjxufskgskgzkgzgzhozzgzigzzzogz', 'sigsigxigxxgguzziyizizfizfyfzyifizy', 'r@yopmail.com', '$2y$10$bRFd6QIhuv.m4REr.7m7Yu/D8HE/3cMsgWXK5Yog2Vb2cnn5xJrdm', 'Umm Al Quwain', 'Åland Islands', '2002-10-27', 'Other', 'GaTH18359wJP', NULL, 'Ios', 'f9b1635eff4fbf7d153c6fef098f6a868dfa801def5083fba32f006542755b45', NULL, 'IihVrWhBJrC7ajr3tx8GRCJoNaR7Lvhih259LgCrl3h3owJsiqpoN5gje2VM63xF', '0', '0', NULL, NULL, 'Active', 44600027716, 'Silver', '1000', NULL, '1027202312473589653bb167e63af.png', '1027202312473510653bb167e659b.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 07:17:35', '2023-10-27 07:17:35', NULL),
(66, '10272023130304653bb5089ea22.png', '+971', '3573573573', 'stuft yf', 'sbbsbs a', 'sd@yopmail.com', '$2y$10$xtdhwmtdGvebz0MQE/w65.87OJ206id3FLA4lyN22JXx5943uHP.O', 'Umm Al Quwain', 'Afghanistan', '2023-10-27', 'Male', 'Lqk13986YdmV', NULL, 'None', NULL, NULL, 'lHOWYh1JKOgW5IvQn0BhAgbfn7zdYehl6oFBg1FFPNE7Bq8L4iajdKiP6rf8FWFJ', '0', '0', NULL, NULL, 'Active', 65155036477, 'Silver', '1000', NULL, '1027202313023126653bb4e7d4e45.png', '1027202313023126653bb4e7d4ff4.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 07:32:31', '2023-10-27 07:36:45', NULL),
(67, '10272023130934653bb68ee81c1.jpeg', '+971', '8894421373', 'hdjcjifjfjfufjfjfjfjcjcjcjcjc', 'hdhd', 'Ram@yopmail.com', '$2y$10$dMm0Bq0XyB.SH4NBJ4PCyenx010bkkpW30kkcvEqkMhw9wveAIVCS', 'Umm Al Quwain', 'Austria', '2023-10-27', 'Male', 'BFTy6341rrNw', NULL, 'None', NULL, NULL, 'mj7uLZUk8Ua5QFEqClHa46fa8rHuzSBumguRdenljwvxtKJJei7SXKGWI2P3lcff', '0', '0', NULL, NULL, 'Active', 86598074253, 'Silver', '1000', NULL, '1027202313093633653bb690382eb.png', '1027202313093611653bb690386e6.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 07:39:35', '2023-10-27 08:11:37', NULL),
(68, '10272023135402653bc0fa56b51.jpeg', '+971', '2580258025', 'fufufufjfjfjfifjfjfjfjfjfjfjfjfjcjf', 'uufufjfjfjfjfjfjfjfjfjfjvjfjgjfjfjf', 'hc@yopmail.com', '$2y$10$0pHm6z7loDP3R7YwRpXPOek5EcOaBI4xGndIlGkoHzcJSVpjJKHsS', 'Abu Dhabi', 'Albania', '2023-10-27', 'Male', 'dew86548emuq', NULL, 'Ios', 'f79f4dee17663296231ad34c31ae00471340a09fe41df14d7a76793d2a265ade', NULL, '5QSaqL3NK7buCc6STM2nvFvHVeE91g4DtD2pFWrH8XmWCsjgW495oCPco5PoSmr9', '0', '0', NULL, NULL, 'Active', 87026229504, 'Silver', '1000', NULL, '1027202313540242653bc0fa89281.png', '1027202313540250653bc0fa894b4.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 08:24:02', '2023-10-27 08:24:02', NULL),
(69, NULL, '+971', '222222222213', 'rahul', 'fhgguuguggu', 'mobileph515@gmail.com', '$2y$10$mgTv/xCvr9RB/0N18i.THeJWUzskClw4bTY/coMk4t9EJiBJZF/ia', 'Dubai', 'Algeria', '2023-10-27', 'Male', '7ZSp4280rEsz', NULL, 'None', NULL, NULL, '3mRekXurrimW9LkLXEBIzM7cdF9b2U1Cih2a1jQHTvTUlPmqxNkqfQuM55sWb4W2', '0', '0', NULL, NULL, 'Active', 69343520101, 'Silver', '1000', NULL, '1027202314070547653bc40938ea8.png', '1027202314070589653bc409391d0.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 08:37:05', '2024-01-02 04:38:52', NULL),
(70, NULL, '+971', '68683868385', 'johnyy', 'hchfugfugug', 'll@yopmail.com', '$2y$10$eh2wRqjhpJJGJSld05aTCutu7wRKSPfaOtErJRYqPyR4mW5y85z3W', 'Ras Al Khaimah', 'Andorra', '2023-10-27', 'Other', 'aKh26577kJS7', NULL, 'Android', 'fWBfXbipQYi5JaA9H882Qk:APA91bGS555dbt6g8KfYCBUIzJduLbAsN_kuGR-KSm0JfWxUTbv8cAh0QFNLMl9dNrEv1ao1NtCt-x-hVpVVlv7WDtAbxBlgIlQxjTXQYJFlq31NPbstS1Zf_lZEYLHTTv9HSbkHEfqA', NULL, 'dbR4cJp10H2ktuNg39f0hrfcawOLgoLxyPnyiVbh0LpBoYyh4RQlFrc1VlX0sQkG', '0', '0', NULL, NULL, 'Active', 27131568749, 'Silver', '1000', NULL, '1027202314075270653bc438682c9.png', '1027202314075230653bc438685dd.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 08:37:52', '2023-10-27 08:37:52', NULL),
(71, '10272023141751653bc68f67430.png', '+971', '8894308907', 'cola', 'cola', 'col@yopmail.com', '$2y$10$qADgIN/xRQXRTrYIFDuoL.Mh0N9l0tHuhzVP3r8PkXQdGFS6oYs/a', 'Abu Dhabi', 'Albania', '2023-10-27', 'Male', 'DahP1358T1dB', NULL, 'None', NULL, NULL, 'bY6jKG5eEo4Xxm18jQW4VOYZbRWkOki4dj6E8jcAUZ2MWzvhdYNI2PPXZp676LDz', '0', '0', NULL, NULL, 'Active', 90777784689, 'Silver', '1000', NULL, '1027202314164830653bc6504b23c.png', '1027202314164877653bc6504b647.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 08:46:47', '2023-10-27 08:55:37', NULL),
(72, '10272023145030653bce36784d6.jpeg', '+971', '84946494945', 'hello', 'nsnsnsn', 'yg@yopmail.com', '$2y$10$.70n07kIhcRivTRF2VEC3OCcm9dKsoHr//3Hnz9lmze4fNiKNQZ7.', 'Abu Dhabi', 'Albania', '2023-10-27', 'Male', '35Hi6146Et2x', NULL, 'None', NULL, NULL, '9ofqde89BS1eVfBHNLOYAdWC1cgF7qYhW4ggKFysiNxLmRHhlAXpFpNKdRuALnsG', '0', '1', NULL, NULL, 'Active', 58182515426, 'Silver', '1000', NULL, '1027202314503020653bce36afa6c.png', '1027202314503016653bce36afd5d.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 09:20:30', '2024-01-12 02:16:39', NULL),
(73, '10272023153013653bd785c4b38.jpeg', '+971', '868686868685', 'hchchoxkvxvxkxgxzkg)\'mglhxkhxkhxglx', 'hhfhdhdhdlhdhdlhflhdlhdflchlhf', 'gg@yopmail.com', '$2y$10$fWMiRurpv.YHvOYcI5Abfu.wCmDc9ULEg4dKW2YlV4xbdDWkXFTZm', 'Abu Dhabi', 'Afghanistan', '2023-10-27', 'Male', 'OwN33183zmw7', NULL, 'None', NULL, NULL, '7QyHMtKarlUucHg2Em4YzHCFnRC2m1wYty2c5MG6n9uPOkpiNOCu8yu3Eey4yult', '0', '0', NULL, NULL, 'Active', 88237535840, 'Silver', '1000', NULL, '1027202315301438653bd78612506.png', '1027202315301486653bd786128c8.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 10:00:13', '2023-10-27 10:02:34', NULL),
(74, '10272023154248653bda78e2012.jpeg', '+971', '54354648754', 'bsbdbdjdhdhdjdjdhdhdhdjdhdhdh', 'hdhdhdhdhdhdhdjfhfjfhfhfhfhfhfhfh', 'asd@yopmail.com', '$2y$10$30.XdKqP8XVb3rDGoPyQ7Oq2lgDfPTgcVxgWbiV4meAgrm8eFSMNO', 'Abu Dhabi', 'Algeria', '2023-10-27', 'Other', 'AbWV4234TmJO', NULL, 'Ios', 'd0bcd66d9ba54469da9d2ed4aa91a51d434e7dd3a31b6c0608303929373e0371', NULL, 'DNkjDkyppxkjyD6aw85DWuLWglJbCsAwyuWd2qWvnBgTLnRkmfcc43tC93UUmvAg', '0', '0', NULL, NULL, 'Active', 30504047933, 'Silver', '1000', NULL, '1027202315424946653bda792ee1e.png', '1027202315424978653bda792f06d.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 10:12:49', '2023-10-27 10:12:49', NULL),
(75, '10272023160955653be0d303812.jpeg', '+971', '5868828585', 'jgigggjgufhdgoydottosyodoysoysoydy', 'phdudoydoydoydohdphdlhxlhdhldhld', 'kah@yopmail.com', '$2y$10$oWysXPomDrfosTobjTirIud1Cy0eXtC41ZtkPx3WcovH60UpKaTqC', 'Abu Dhabi', 'Algeria', '2023-10-27', 'Other', 'WPar9524mrMd', NULL, 'Ios', 'a7180eeb89bc17cc5a7dc1da7f1438a887d6c22480d688c63afa73ddad22fda6', NULL, 'YuixTqfEoHBu9BqviVzaedfBSNghmgfdbc8uBNVFT9MI7gT2l3a4KOf5ZJwTNXHV', '0', '0', NULL, NULL, 'Active', 67642981779, 'Silver', '1000', NULL, '1027202316095528653be0d344d41.png', '1027202316095594653be0d345098.png', '2023-10-27', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-27 10:39:55', '2023-10-27 10:39:55', NULL),
(76, '10302023055518653f454611948.jpeg', '+971', '56465495465', 'kgdgksgodgksgkkgxkgskgskgdkgd', 'gdkgdkgdkgdkgdkgdhkdohdoydohdohdoh', 'lhg@yopmail.com', '$2y$10$UzQ876g8PYuCHfiiiXH58eB/KUWKP2E/jkMx1cywMO3eQQdRUw4hK', 'Abu Dhabi', 'Afghanistan', '2023-10-30', 'Male', 'jh3I50328Eid', NULL, 'None', NULL, NULL, 'E7GaIA3UPB1rB0Ug3vix1t8lgcc61wC2bucNdwoPZIxJI3x0czo2rkewhRTdveem', '0', '0', NULL, NULL, 'Active', 89662726278, 'Silver', '1000', NULL, '1030202305551870653f4546ac65e.png', '1030202305551821653f4546ac790.png', '2023-10-30', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-30 00:25:18', '2023-10-30 00:26:52', NULL),
(77, '12152023084226657c117235df6.jpeg', '+91', '9817813624', 'Abhay', 'Rana', 'user2@yopmail.com', '$2y$10$LHojLecAbS7Anx0dVj4UEuu1V5rhn7YxzPCjwqrpVO8afPUgvT6EW', 'Abu Dhabi', 'Afghanistan', '2011-12-15', 'Male', '6HxR2833UDwr', NULL, 'None', NULL, NULL, 'Xar0myjzojn0RBASOmeFZWkmFw53oAl0iyH0kP9L7eTJYMnXuCE8i7xv5IFhYg5Q', '0', '0', NULL, NULL, 'Active', 95959892972, 'Silver', '1000', NULL, '1215202308422656657c1172e8350.png', '1215202308422650657c1172f2ea7.png', '2023-12-15', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-15 03:12:26', '2023-12-18 02:31:07', NULL),
(78, '12182023120307658034fb63602.jpeg', '+91', '9817813955', 'user2', 'user', 'user50@yopmail.com', '$2y$10$FtyKpnJf5BYHBoib0ax7k.nj.N2TdV1LriWZ0mXZCZGOLPQ4wGkFO', 'Abu Dhabi', 'Andorra', '2013-12-18', 'Male', '05W57452oWbB', NULL, 'None', NULL, NULL, 'LCT9KGgzA45BN7nZYNDaZOm9t0tXqwD67MQXFWkigXKtBKG9jLnU47KbitkuZImA', '0', '1', NULL, NULL, 'Active', 11852970928, 'Silver', '1000', NULL, '1218202312030873658034fc4c788.png', '1218202312030833658034fc53f99.png', '2023-12-18', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-18 06:33:07', '2023-12-29 07:22:25', NULL),
(79, '122020230826286582a53485000.jpeg', '+91', '9817813944', 'user3', 'user', 'user3@yopmail.com', '$2y$10$q8yIVJ3Z6AgrzAUKiHncfuceXvme3iYoIuMskXsu0bHL0Ni5i9OzO', 'Abu Dhabi', 'Anguilla', '2015-12-20', 'Male', 'clBH9845pQ65', NULL, 'None', NULL, NULL, 'y5sW7OL0ilZoTktolZ7SwFJFLmXjQnX2JhHblKO3dEWqDSjXwJcVvfbedOp9FMB2', '0', '0', NULL, NULL, 'Active', 48748131776, 'Silver', '1000', NULL, '12202023082629236582a535077ce.png', '12202023082629536582a5350c8e0.png', '2023-12-20', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-20 02:56:28', '2023-12-21 00:35:02', NULL),
(80, '122120230650376583e03d54a92.jpeg', '+91', '9817813988', 'ssd', 'sdfs', 'anjha@yopmail.com', '$2y$10$cQVlH7j3ZqRMX3EabGE3SOO9S4KhjcW6wMw.Efzz1fXJtQmHZ8.l2', 'Abu Dhabi', 'American Samoa', '2017-12-21', 'Male', 'ddK85587fhGK', NULL, 'None', NULL, NULL, 'PBCpC6eUrccKmznqREsCjzUM5fikzwrMH9j1T59cwkmpGRvK4AgBWPIcSfKUauZF', '0', '0', NULL, NULL, 'Active', 53689204753, 'Silver', '1000', NULL, '12212023065037136583e03dc943c.png', '12212023065037586583e03dc96d8.png', '2023-12-21', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-21 01:20:37', '2023-12-21 01:36:29', NULL),
(81, '122120230832336583f82115a48.jpeg', '+91', '98178125645', 'dfs', 'dsfs', 'asffd@yopmail.com', '$2y$10$dhfaWE7jx6ReHfDtOL5/6uboxG5WKRM0ePrraq/kFGgc8Mcwow6f.', 'Abu Dhabi', 'American Samoa', '2023-12-21', 'Male', 'Zk433795cth2', NULL, 'None', NULL, NULL, 'v0JbFsXHkWNP3vwRk7g1ilXnyamDtTCt8L3jv6XNSaooeDMfhVM8N40rbPuuGi57', '0', '0', NULL, NULL, 'Active', 65900584977, 'Silver', '1000', NULL, '12212023083233616583f821afccb.png', '12212023083233596583f821b1f78.png', '2023-12-21', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-21 03:02:33', '2023-12-21 05:36:52', NULL),
(82, '122120230904096583ff891b819.jpeg', '+91', '9817813945', 'dsfs', 'sdfs', 'sdsdf@yopmail.com', '$2y$10$F2EZrNvzEj3uFt.usgK/KuztuZUkgwo.wM6KcGtugBCUWLKuiCeFi', 'Abu Dhabi', 'Antigua & Barbuda', '2008-12-21', 'Male', 'e9EX6076ZrY3', NULL, 'None', NULL, NULL, 'n5oEELQI99EaPdrsxanzHkpfjmEJUNxSsIgE9al3Dce79xaV3VPQHE46mRmMAs8B', '0', '0', NULL, NULL, 'Active', 88000998223, 'Silver', '1000', NULL, '12212023090409906583ff894ceba.png', '12212023090409766583ff894d01b.png', '2023-12-21', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-21 03:34:09', '2023-12-21 06:44:25', NULL);
INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `socket_id`, `do_you_smoke`, `do_you_drink`, `display_name`, `refer_amount_used`, `request_change_email`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(83, '1221202312181565842d075647e.jpeg', '+91', '7845652145', 'hello', 'hg', 'user9@yopmail.com', '$2y$10$dp2iFaI6XUOSAt.Sl0CqjulgQ9447ILDnk31/sIOS9fRgctB2RAVO', 'Ras Al Khaimah', 'Argentina', '2008-12-21', 'Male', 'e4Vr89161j8k', NULL, 'None', NULL, NULL, 'tgiOwwycemrcat2o5viDaotzuQACcQpxNYmzIQOYLwROPyaCOGO4uvLtkMBOllTQ', '0', '1', NULL, NULL, 'Active', 89714236927, 'Silver', '1000', NULL, '122120231218154365842d07d2349.png', '122120231218156765842d07d5fcc.png', '2023-12-21', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-21 06:48:15', '2024-01-12 00:57:19', NULL),
(84, '12282023053705658d0981d6b1f.jpeg', '+91', '9817855663', 'dsf', 'df', 'ads@yopmail.com', '$2y$10$/cdMxbEdhyfNjCz6hqz.vOyeHGpnCRkkjqxcoxVm9w8lB/2wTvTiC', 'Abu Dhabi', 'Antarctica', '2023-12-28', 'Male', 'fhf94432u4Ug', NULL, 'Ios', '80d6c2d9d46be6c4de8ca3760adc2680aec549fcb7f59a0633cae48b9f57544e60fdd3eaf76447f1ee5f127c7be4603b350c3ca45d43f4811c4061f66bde373f2e8cc645fb8f9cc4b65ec15e2a8ebc1e', NULL, 'tCl9WdgdYkKqP7GhHXGCaZDxFwvGSwrqttY6CZFAMeVKaTnjVQtEHhstYDYamWyL', '0', '0', NULL, NULL, 'Active', 43779771440, 'Silver', '1000', NULL, '1228202305370640658d09826b6d1.png', '1228202305370614658d09826ba3f.png', '2023-12-28', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-28 00:07:06', '2023-12-28 00:07:06', NULL),
(85, '12292023072927658e755735075.jpeg', '+91', '9817833221', 'ddfsdf', 'hjhd', 'hello6@gmail.com', '$2y$10$kOkMFHJzrweSzGh2HubmQups9nRzWRCHa2LyJG9q0h8kaU1imtGW6', 'Abu Dhabi', 'Angola', '2023-12-29', 'Male', 'X1y575649x9x', NULL, 'None', NULL, NULL, 'zIOMElddOaNuuLW4PY9ITm0eMbiFfWP8S27AL7xFqx7kkEDhKfA4KPxmmYoMxCAS', '0', '0', NULL, NULL, 'Active', 24710156470, 'Silver', '1000', NULL, '1229202307292738658e7557a38c5.png', '1229202307292768658e7557a3a16.png', '2023-12-29', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-29 01:59:27', '2023-12-29 02:09:43', NULL),
(86, '12292023095145658e96b1eb394.jpeg', '+91', '9845651245', 'user', '90', 'user90@yopmail.com', '$2y$10$VKmBruY9MpJyH7JU1xoy7.XsLq263YnkkB3IR9bbdJeom4KTri5Yy', 'Abu Dhabi', 'Argentina', '2014-12-29', 'Male', 'CEpj6446gFms', NULL, 'None', NULL, NULL, 'SDG0oxofwUJYoHjhrmZYVdIuMJYXdIX22pHMO20d8Pw3vvqoYRoSvLNVhApPctsF', '0', '0', NULL, NULL, 'Active', 46683105379, 'Silver', '1000', NULL, '1229202309514694658e96b229b5b.png', '1229202309514622658e96b229f05.png', '2023-12-29', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-29 04:21:46', '2024-01-02 02:30:02', NULL),
(87, '12292023113537658eaf09d6af6.jpeg', '+91', '9856321475', 'bzb', 'ios20', 'ios20@yopmail.com', '$2y$10$K0/PMumkIWsb7rteM5XK9evTW/dQZAHlD7xacV818QMhoRXg.Cai6', 'Abu Dhabi', 'American Samoa', '2017-12-29', 'Male', 'U1co91361Ers', NULL, 'None', NULL, NULL, 'n6AnRsU77CSfGKXGSTdO3rbpzqCwQvmyfIzetfMFLZnQX3U2BN43stS37rFShcSP', '0', '0', NULL, NULL, 'Active', 84023798351, 'Silver', '1000', NULL, '1229202311353892658eaf0a5f0f9.png', '1229202311353871658eaf0a5f4a3.png', '2023-12-29', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-29 06:05:38', '2023-12-29 07:08:12', NULL),
(88, '12292023125422658ec17e01eca.jpeg', '+91', '9123456789', 'Ajay', 'Kumar', 'ajay@yopmail.com', '$2y$10$7/VipaLeEqSbG9p9AXZjiez4cHNEjwuxyvhGxTPkthvXpSPcpDF32', 'Abu Dhabi', 'Albania', '2017-10-26', 'Male', '43qy7436VzCz', NULL, 'Ios', '59bb7af9ddb96f82801abcd9f0e8a39e5359e3bdffcc7ec09358146882062283', NULL, 'P69AUf7G2W9XdCAS2usjfVY3KiA1Wf2zHeQnvooUoQnbexv0USKprCkCBeIWvMCl', '0', '0', NULL, NULL, 'Active', 69405479644, 'Silver', '1000', NULL, '1229202312542280658ec17e82ae1.png', '1229202312542269658ec17e82dc5.png', '2023-12-29', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-29 07:24:22', '2023-12-29 07:24:22', NULL),
(89, '010220240730296593bb952eaf0.jpg', '+91', '000000000', 'bhjkkk', 'rajput', 'rajputaditya@yopmail.com', '$2y$10$a9icEjW58RT/dcySN9HoquMjjAJjFTm9WXvujx1mnqqqkRrm9iOGu', 'Dubai', 'Andorra', '2004-04-26', 'Female', '8Qcl2927uxjd', NULL, 'Ios', '80f7cf3eae5a459ad53b735ecdc28b19afeac708fa6965e7b2edd4f95e5a8edbeda376af60427bda46fcdb8bf29a7b2a7aed3808fedc20c3d0d5754e578c56ed6add466ffae2ea54ed51fa7f3cd4569e', NULL, 'XpuLDDPSDshyQJF0M2lGu1KrBD8M6FeYl6vKFJpWyT5nUwhb27cFwxBWX9a6dKwU', '0', '1', NULL, NULL, 'Active', 93835872119, 'Silver', '1000', NULL, '01022024073030906593bb964dd93.png', '01022024073030546593bb96546ad.png', '2024-01-02', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-02 02:00:29', '2024-01-16 05:58:13', NULL),
(90, '010220240949506593dc3ee819e.jpeg', '+91', '9996171434', 'Manish', 'Gumbal', 'manish@yopmail.com', '$2y$10$dp2iFaI6XUOSAt.Sl0CqjulgQ9447ILDnk31/sIOS9fRgctB2RAVO', 'Dubai', 'India', '1989-01-02', 'Male', 'E8xg2244B2GJ', NULL, 'Ios', '80317d7a84a506d89f274e12d82a40172f923b7b3634730c35fb787f5a314160577e156fdd2601b5f580bc74a71212bdddcf373302bafb37e3bb8e614583ee124ea6e8dae962fc01e895ddcf0d0f4c66', NULL, 'ATr9du9yl6FHeDtdQnSmQEYEuSrFSrFGCFUmmo7qKxa2ANQ1IDddjJrrjxj5RkWV', '0', '1', NULL, NULL, 'Active', 85775466762, 'Silver', '1000', NULL, '01022024094951576593dc3f9454c.png', '01022024094951436593dc3f96e1d.png', '2024-01-02', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-02 04:19:51', '2024-01-15 05:07:49', NULL),
(91, '010220241124066593f256dad0e.jpeg', '+91', '6545256325', 'hello', 'jel', 'hello3@yopmail.com', '$2y$10$uXsvvY.DKC.Id7bkuP3ZfOfO7fN3rlFPoPn4LtaTHRvzsrGPWhkcS', 'Abu Dhabi', 'Andorra', '2013-01-02', 'Male', 'sM9M9604kJjf', NULL, 'Ios', '802463456d733499ce718592b01a015560bef16818249da802d30ef320eda354cdf1380a95d55148abd8d4df05317894498ecdd7fade4af77a0d9c7987efbfe8375d0c13717105486eabc728ba6be43a', NULL, '1gg1l8dVFlmnhcrDenWEm9Aqd5kxaaJOGFOv1AmRSeevD61j8UOvVVL77wwwPXOs', '0', '0', NULL, NULL, 'Active', 48052843491, 'Silver', '1000', NULL, '01022024112407196593f2575c61b.png', '01022024112407976593f2575ca31.png', '2024-01-02', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-02 05:54:07', '2024-01-02 05:54:07', NULL),
(92, '01042024074452659661f465f7f.jpg', '+971', '83568664634', 'ahhigwi', 'uhqxhhish', 'mobilephone155udhs15@gmail.com', '$2y$10$/MiKRI/M/RWxI4HLYDvDJuz6aP4LRTK4315JQyFKLubfp2mwUKTAu', 'Dubai', 'Algeria', '2004-01-04', 'Male', 'KLRD2343RlB9', NULL, 'None', NULL, NULL, 'jHInYtbzE30YXGlmmwWmPKzRPHVxPkDMHKrIq8ijcsqRvQTaWYD1L9Zxbt0pFfcm', '0', '0', NULL, NULL, 'Active', 95798972548, 'Silver', '1000', NULL, '0104202407445349659661f512d6d.png', '0104202407445396659661f512eb9.png', '2024-01-04', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-04 02:14:52', '2024-01-04 02:39:46', NULL),
(93, '010420241414136596bd35e66cd.jpeg', '+971', '4515451215212', 'fdffdfdd', 'fdfdfdff', 'fdfasdf@fdahk.com', '$2y$10$LJlyjQqkKv0bOC/4hexhKOkpn97r0PMuQq5j/9RMrwf7PY2ssGbdu', 'Abu Dhabi', 'Albania', '2023-02-03', 'Female', 'kUOX34640gCE', NULL, 'None', NULL, NULL, 'RNgxgpUtsuztV1rz6yxLfiUiiZ1VNG7zdyQJqEgUV4YQVy7Y3WwCIAeQtADlACws', '0', '0', NULL, NULL, 'Active', 35131710352, 'Silver', '1000', NULL, '01042024141414806596bd366762c.png', '01042024141414366596bd3667d34.png', '2024-01-04', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-04 08:44:14', '2024-01-04 08:50:07', NULL),
(94, NULL, '+971', '626564343434', 'ydhdbb', 'hdhshsh', 'harmanhehdtesting9@gmail.com', '$2y$10$JvLxHMieG572AyDBVrgsKOyqSDdDd6EuceKE.uJDuckiI8ly8ru9G', 'Ajman', 'Algeria', '2004-01-04', 'Male', 'gLv86701wpTe', NULL, 'None', NULL, NULL, 'X0ZlsYmXqZgM8ChGYmAqbYlAH8IN9e0mNjbXMWOeEt1zY4DaYKEh7jYMwoOu0egJ', '0', '0', NULL, NULL, 'Active', 12831364075, 'Silver', '1000', NULL, '0105202404391151659787ef43de1.png', '0105202404391159659787ef49c93.png', '2024-01-05', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-04 23:09:10', '2024-01-04 23:16:43', NULL),
(95, NULL, '+971', '8797583258', 'shagun', 'dhiman', 'shagundhiman66@gmail.com', '$2y$10$DzBNrx0nmzC8p2.Iyyq7BOO5uSzHAwih8M/jygFz.OlAUVSuWVjT6', 'Ajman', 'India', '2024-01-04', 'Male', '9hdK2752vCUT', NULL, 'None', NULL, NULL, 'C224MfvgnNHtVeQmfDdjvblaqUCeDFas7qrt4GzkPrnUwx66sZX06Tbp3iKrOf10', '0', '0', NULL, NULL, 'Active', 60989460071, 'Silver', '1000', NULL, '010520240454101565978b7215a70.png', '010520240454102165978b7215e93.png', '2024-01-05', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-04 23:24:09', '2024-01-04 23:24:35', NULL),
(96, '010520240721106597ade60fb87.jpeg', '+971', '77141714', 'dads', 'ffasdfas', 'social@yopmail.com', '$2y$10$sQvhjFmNbuFxf3mea9ZX1urS/WiL9apWr3D3DXQpiJbgV9dp84.EK', 'Abu Dhabi', 'Albania', '2024-01-05', 'Male', '5E1G8979dmDC', NULL, 'Ios', '80fb1db579d6a08885cf572bdde28ef666b92f4ec902d6758c2ffbb7bd589c5cd499bde6ac361df9bbfffb89d4f5cfaced8d38be5727fd113decce3f4b6f4a83821748521eabad6a842840390fbbdbf1', NULL, 'eE664pi2blrgVh4t0NDdIkpZPc628fSm2H1HwofcygP4kEQAQasTN1ZMvUN5wpc2', '0', '0', NULL, NULL, 'Active', 93108210761, 'Silver', '1000', NULL, '01052024072110956597ade684146.png', '01052024072110566597ade68456d.png', '2024-01-05', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-05 01:51:10', '2024-01-05 01:51:10', NULL),
(97, NULL, '+971', '6464848584', 'shagun', 'dhiman', 'shagundhiman12@gmail.com', '$2y$10$MaAyh9yH/zTZmWo6xG3czuXxYdfeKTxWwK/1o/N2sy6WBRwdxiuQe', 'Dubai', 'India', '1999-06-23', 'Male', '6Tm27641rZnA', NULL, 'None', NULL, NULL, 'wjMVLT1Qisqn5lbOp3PRllFhsrIYTNMkh68Fy0RBqLT98Z60abEMI2HfYm6wVtih', '0', '0', NULL, NULL, 'Active', 79735664850, 'Silver', '1000', NULL, '0108202405080853659b8338daa1a.png', '0108202405080846659b8338e6999.png', '2024-01-08', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-07 23:38:08', '2024-01-07 23:50:23', NULL),
(98, '01082024055906659b8f2a5c0e2.jpeg', '+91', '9865652398', 'hello', 'hello3', 'hello@yopmail.com', '$2y$10$DbCqD1PeTC46cH1r7op7GO1N.8GS139PstLhi.S/2K2tHeIqD0ROO', 'Abu Dhabi', 'Andorra', '2012-01-08', 'Male', '68jg1057HZf0', NULL, 'None', NULL, NULL, 'UgHmCKjiVqVa1bPHseX4NQlu9wWsroxWiyw9ep4UWexpe4ZzbfrGrMJ5cCKeaCv1', '0', '0', NULL, NULL, 'Active', 56963733636, 'Silver', '1000', NULL, '0108202405590662659b8f2abbdd8.png', '0108202405590681659b8f2abc114.png', '2024-01-08', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 00:29:06', '2024-01-08 02:30:02', NULL),
(99, '01082024070711659b9f1f5c88f.jpeg', '+91', '9875412541', 'hello', 'hello3', 'hellok@yopmail.com', '$2y$10$5UhL.VLWnup1DD6gR23c9O3KIgLg3BCF4SClF6Q5GsYylHvCTORZe', 'Abu Dhabi', 'Antigua & Barbuda', '2018-01-08', 'Male', 'esR05810nCef', NULL, 'None', NULL, NULL, 'US9is0FzvNXxgMKAZxHhsdDe58MkfH0MlEussjZQciFpF0AseXYnrFHu4FB3Pndm', '0', '0', NULL, NULL, 'Active', 75240985391, 'Silver', '1000', NULL, '0108202407071127659b9f1fb1403.png', '0108202407071187659b9f1fb1616.png', '2024-01-08', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 01:37:11', '2024-01-10 00:11:56', NULL),
(100, '01082024081033659badf9dec83.jpeg', '+91', '9874545213', 'kkkk', 'aaaaa', 'hello99@yopmail.com', '$2y$10$VXMT3gx/ONnbc2kIFio.UuXRHFc/O083u0NtCbUI/de0VHMuMdhnK', 'Abu Dhabi', 'Armenia', '2024-01-08', 'Male', '4yRY6465Lttg', NULL, 'Ios', '804d946fd3627a9aba7a1f607c832203f55b0797c7a9dcf978fdb4b8c4039079745bebcabc5cd2026454f5f4c258704645cc6e216ab18171d3f57b335a22b45d9a081ee34300b7577dce860a8285c039', NULL, 'GZLAJAmXcnqaG4h2nnbHwAS18ZwYATC2B0Ta4cufOnq1oVgjDCf9jA8YprOhN3dy', '0', '0', NULL, NULL, 'Active', 61051218353, 'Silver', '1000', NULL, '0108202408103466659badfa2d985.png', '0108202408103429659badfa2dce3.png', '2024-01-08', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 02:40:34', '2024-01-08 02:40:34', NULL),
(101, NULL, '+971', '35695565686', 'jfgkglglgl', 'tiyitigk', 'mobilephonecjgfj15515@gmail.com', '$2y$10$j6N5N99aBiK/6aAQUSzat.sdWkkip7n7ez4z/SXVigPx1GyapDdj.', 'Dubai', 'United States of America', '2024-01-09', 'Male', 'FPOf51585DFX', NULL, 'None', NULL, NULL, 'z7YwhT1RMRH3EXB2nV1DFa6VHmMAHIOb7AW6CwuSTKMvxKPl2nQTqZNXRhc0DVD2', '0', '0', NULL, NULL, 'Active', 37730096215, 'Silver', '1000', NULL, '0109202412593114659d4333afe18.png', '0109202412593116659d4333ba6de.png', '2024-01-09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 07:29:31', '2024-01-09 07:31:44', NULL),
(102, NULL, '+971', '888888888888', 'vzzbbdzbbd', 'bzbdbdzbbssb', 'h66@yopmail.com', '$2y$10$dWJN8EZ91afMZ7YfueztV.veZT7dPf47MAwyLyjQ9mFMajSvpNrO.', 'Fujairah', 'American Samoa', '2024-01-09', 'Female', '0xhT9558myVz', NULL, 'None', NULL, NULL, 'g4RVYoqDgTkqE78pZj1k33jXygNyDtvHrz89m987YmZFvlZVcukvGTwKRNtp7rbn', '0', '0', NULL, NULL, 'Active', 99041634330, 'Silver', '1000', NULL, '0109202413261816659d497ae79bc.png', '0109202413261864659d497aed9a7.png', '2024-01-09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 07:56:18', '2024-01-11 06:46:32', NULL),
(103, '01102024104702659e75a6cba30.jpg', '+971', '1234567893', 'gsggkdgkszgidgskgGkskgdkgskgdkgsgkkgsgzzmvxhlxhlvx', 'igdgkdgkzlgzgkzgkzgkzgkgkzckzckzgkz', 'a@yopmail.com', '$2y$10$vRdYfYFmeybFohbdOGpQhukzjluUolHnmbJgPd9.dqNsbfuz4BLR2', 'Umm Al Quwain', 'Afghanistan', '2024-01-09', 'Female', '9lKl2895xvxg', NULL, 'Android', 'eV7utT4lSwuOvPofMVPE7c:APA91bF0Wt3lackfulWKdBl7zIMsB91RICkwtuCyZDu8thByrlDPgfHp4tAy5BM5vSdRdiYO5Uev40VvdczihPvqeoRRx4UFQnt_IlRMT4Ll8Ei__oJTL4tzDZLW-yNKnQWf5X3PycIf', NULL, 'Lq7pkgzVPfxFLYlKPnboxSxl3x7Uo6exDvTSHB7yctYhlgHHNakvUxBeslEs0qBx', '0', '0', NULL, NULL, 'Active', 39340557549, 'Silver', '1000', NULL, '0109202413294822659d4a4c1ed4f.png', '0109202413294837659d4a4c1f09d.png', '2024-01-09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 07:59:47', '2024-01-10 05:17:03', NULL),
(104, NULL, '+971', '9794949494644', 'sggsshhssh', 'zgsgsggzzggz', 'h33@yopmail.com', '$2y$10$9bb0wJpSwS0mL6239aHwD.UkJFc1JhCshyXXHofluuZN4p9ADZBnW', 'Ajman', 'Afghanistan', '2024-01-09', 'Female', 'TpMk1634RAFk', NULL, 'None', NULL, NULL, 'cL1tuakRXI6zuzcNq6gxHvKfCUrxmQauLxneDULb74TOFXUIgHGAaIuCGNEOuIUU', '0', '0', NULL, NULL, 'Active', 40497137225, 'Silver', '1000', NULL, '0109202413432519659d4d7dba47a.png', '0109202413432571659d4d7dba7be.png', '2024-01-09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 08:13:25', '2024-01-09 08:54:27', NULL),
(105, '01092024142655659d57af44406.png', '+971', '88888888888', 'shhssh', 'bdbshd', 'bssbsbbs@hd.djd', '$2y$10$BxBnj12Ij5auFAM6mJrxiu1/aA3vD727fIVihT8Q1qSLagdBDO3tq', 'Abu Dhabi', 'Albania', '2024-01-09', 'Female', 'iJ1h49777vH4', NULL, 'Android', 'da5lvpHHTo-8XpfQpuwIEv:APA91bEh9U9k3y4UulZDB8n0kbbGMa7yCja2TPK2iHJo3Zpi8t6NZ8buq0X0RLjFHs0pmilWKobrwt4gbQf9YydE_5sCbYPiQ4uScT4dZODeyNBjwIjroV8_A-5H86A3pmQ_uc5DZj3q', NULL, 'WYqUpYQTAga1fsJzSeBbZbNgBpw6LmaQDEIalDUlsDAdrtivQHcln6BWnV93EQft', '0', '0', NULL, NULL, 'Active', 30861758780, 'Silver', '1000', NULL, '0109202414265599659d57afe8865.png', '0109202414265521659d57afe8d44.png', '2024-01-09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 08:56:55', '2024-01-09 08:56:55', NULL),
(106, '01092024151626659d634aa018e.jpeg', '+971', '446666464664', 'hdhdhd', 'djdjdjdjjsjd', 'cv@hdhdhd.shjd', '$2y$10$tE9cDbh5ZoY9VhKbRaJbeupZ4KwwqRWmpQmf1R6ZUpNnN7tPUQFeu', 'Abu Dhabi', 'Albania', '2024-01-09', 'Male', 'YduF9800DSzr', NULL, 'None', NULL, NULL, '5VLYQbzKe6urvOm0qbZGSioB9uUgUjjyYNDiOX5aFNeXqoKxygUtNlBcU7izlqif', '0', '0', NULL, NULL, 'Active', 34937858579, 'Silver', '1000', NULL, '0109202415162765659d634b17c07.png', '0109202415162753659d634b1dbc6.png', '2024-01-09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 09:46:26', '2024-01-09 09:51:16', NULL),
(107, '01092024152806659d660645675.jpeg', '+971', '4564568989', 'Dbbd', 'bdbd', 'h1@yopmail.com', '$2y$10$eX9Q3cbnn5ig9WYIizW37elDIwlFSeDdwZbo.qWlysgR8UjWWqZym', 'Abu Dhabi', 'Albania', '2024-01-09', 'Male', 'vuRS3814vjyb', NULL, 'None', NULL, NULL, 'aJxIIbGUyxBRv9mvWRuBlAi4eHAnnWoC63uubcxTLByIFKLfSff2pbSGWo22lcJG', '0', '0', NULL, NULL, 'Active', 75985658019, 'Silver', '1000', NULL, '0109202415280664659d66067b0aa.png', '0109202415280663659d66067b311.png', '2024-01-09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 09:58:06', '2024-01-09 10:04:43', NULL),
(108, '01102024053041659e2b8195e2d.jpeg', '+91', '778783450', 'Deb', 'Raz', 'deb@yopmail.com', '$2y$10$wK4QgG6mFRiivGgcXHLMIOY.VzB0p36qDY1spC7akNObsPvWcEQri', 'Abu Dhabi', 'Ascension Island', '1995-01-10', 'Male', 'bM4U5344JWIa', NULL, 'None', NULL, NULL, 'HwW9WXEuYTcRKR5TCGPLYBuuBOrT9ncv9DBywqSmiAoymIaPKMQOMHBv1DZvn5Cb', '0', '0', NULL, NULL, 'Active', 81303618801, 'Silver', '1000', NULL, '0110202405304244659e2b8201b71.png', '0110202405304212659e2b8201d46.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 00:00:41', '2024-01-10 03:02:56', NULL),
(109, '01102024054453659e2ed58df2b.jpeg', '+971', '2323232323', 'jdjdjdjdjdjjddjjdjdjdjdjndjdhdjdnjd', 'dhdhdhdjdjdhdhhdhdhdhdjdjdjdjdjdjjd', 'kp@yopmail.com', '$2y$10$2UUt5pvBqFf0mbIHX5DQ0OYm2pwNJdiYQwp7gY6Bw2WRqAvHnHmre', 'Abu Dhabi', 'Afghanistan', '2024-01-09', 'Male', 'ckCM9396zXkD', NULL, 'Ios', '07b87b3069c6b6a8a59499085276d8e970665857e26c1f853fbd42a7fdb518a0', NULL, 'TMnlVA5VEuQ3rEW6eFqX3smOVONmRPrD1jTeivlprwOtVPuYaZ2KOZt1dDQFoPe6', '0', '0', NULL, NULL, 'Active', 42241769606, 'Silver', '1000', NULL, '0110202405445376659e2ed5cbe8f.png', '0110202405445371659e2ed5cc1fe.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 00:14:53', '2024-01-10 00:14:53', NULL),
(110, '01102024065541659e3f6dd5c5f.jpeg', '+971', '85426546456', 'ggfgfgfd', 'gfgfdgfgdf', 'gdfgdf@fnkdj.com', '$2y$10$sD0rKsfURwIlIFcyRyUFUuw0iJfK13eGFH8ibkxXLfPmZM5kcFVaq', 'Abu Dhabi', 'Afghanistan', '2014-11-09', 'Male', 'E5Bc1337IoKt', NULL, 'Ios', '801a8e891523d6cccbaf33872e610f593ab41a850eef8d86172b1ae14fe3134d3edb06c3ab6dcff3f4a435f6a01e9f273766431d50e6103ea950fa7ad6398425f02bdeb398bcf04407d55bfa1898383c', NULL, 'zk2UEeqo1J8poaxQRDnOimcv8q1ccx4Wj9b1eDZFrEY5RGNm5eDcV2lKBadnUULZ', '0', '0', NULL, NULL, 'Active', 54981738324, 'Silver', '1000', NULL, '0110202406554236659e3f6e2039f.png', '0110202406554257659e3f6e207a2.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 01:25:41', '2024-01-10 01:25:42', NULL),
(111, NULL, '+971', '8319891383197', 'aditua', 'wugxgqixh1', 'harmhehrantesting9@gmail.com', '$2y$10$b/xsRzYlNM7ASId1rhL0NuUdYPU.VmFwe45eoVmOS2iBA2vf49DXG', 'Ajman', 'Afghanistan', '2024-01-04', 'Male', 'kCBX9160PvfU', NULL, 'None', NULL, NULL, 'UTEvbRcl8c8TbMHhsBpWGsSKNj0gIIsMuG8fP5wsMPEYcmX0jhTBXXEmO5cz6hXQ', '0', '0', NULL, NULL, 'Active', 12680667832, 'Silver', '1000', NULL, '0110202407021082659e40f2c5948.png', '0110202407021035659e40f2c5c81.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 01:32:10', '2024-01-10 01:34:44', NULL),
(112, NULL, '+971', '286187681676871', 'bsuxibexe', 'xexubehxeux', 'harmhshsantesting9@gmail.com', '$2y$10$I.bj7X6yJ2by89R3j1raKeBoANsCI0V8RcJh1oPr4gg4YyRxZSEr.', 'Ajman', 'Albania', '2024-01-04', 'Male', 'M9AH4414qPPH', NULL, 'None', NULL, NULL, 'ZozflsZ4jLVXCHoTXcpgG6Q8iTsYffZdNtn8eneHQgKKoSnO8PD8utXO05TK5OCA', '0', '0', NULL, NULL, 'Active', 96291796827, 'Silver', '1000', NULL, '0110202407053692659e41c005e2f.png', '01102024070536100659e41c006156.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 01:35:35', '2024-01-10 01:42:31', NULL),
(113, '01102024075724659e4de40e4ee.jpeg', '+91', '9875414241', 'fdf', 'dfd', 'dsf@yopmail.com', '$2y$10$uwaoA4jky8EAtIvXn2V.8.HCYNhnTx1PqNS2zMTFaw.25fENkg2j6', 'Abu Dhabi', 'Aruba', '2017-01-10', 'Male', 'PqvV7990j3Nd', NULL, 'None', NULL, NULL, 'vJCsUvjtca4OUrdhKSoQqokcxB0uHpYJgJTkClV7YdldxHTIC8LrxBaqAlK0EYWJ', '0', '0', NULL, NULL, 'Active', 37279503958, 'Silver', '1000', NULL, '0110202407572422659e4de450b40.png', '0110202407572451659e4de450eeb.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 02:27:24', '2024-01-10 23:35:00', NULL),
(114, '01102024091535659e6037e7813.jpeg', '+971', '5884545824', 'bbfnddb', 'jdjdjdj', 'nd@hsj.com', '$2y$10$vJM4n9EGbnRt2mWe/Ma6YO7HTRw2FpkgzdQIsk.kdf9nuEQvFeRiS', 'Abu Dhabi', 'Afghanistan', '2015-05-01', 'Male', 'dOcs3406aoR6', NULL, 'None', NULL, NULL, '5xCtawbfvh0CkETOh947VV799M5HtGjz5kkphn9u3vyf45tT0nssVEmblvHmOaID', '0', '0', NULL, NULL, 'Active', 81215560975, 'Silver', '1000', NULL, '0110202409153656659e603826663.png', '0110202409153679659e6038269ff.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 03:45:36', '2024-01-10 07:26:56', NULL),
(115, NULL, '+971', '6157618764', 'vahvvjaxvq', 'quxbqkx', 'harmantestingajxggx9@gmail.com', '$2y$10$EU/Apva8iJfSmuPUo5RcrOiVGSsdmfkTYW/dw51TZKT7USHB22/rq', 'Ajman', 'Algeria', '2024-01-10', 'Male', 'mZfC6332345q', NULL, 'None', NULL, NULL, 'dPZMmyXUf3amQcyY9M5ObcJlCpKLxWTt4LOWSQVpbVx17r1OBIMAHW1ZKLlZ9cRB', '0', '0', NULL, NULL, 'Active', 62055936561, 'Silver', '1000', NULL, '0110202411125357659e7bb5b971c.png', '0110202411125375659e7bb5bb2f1.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 05:42:53', '2024-01-10 05:43:00', NULL),
(116, NULL, '+971', '1234567890', 'nihal', 'sharma', 'nihal@yopmail.com', '$2y$10$DLbeIlY3pGn2i2WniI.JA.z/8UEfALh7pU0lzcCRawlKYp/ah2e0O', 'Ajman', 'Afghanistan', '2024-01-10', 'Male', 'Etec1926Mw8M', NULL, 'None', NULL, NULL, 'xHmWtcD7REOs7cLtsTFk10W5B503tBOYnz2bJutTCegsEduZSJO3tZH6ByYpQcHP', '0', '0', NULL, NULL, 'Active', 68202235886, 'Silver', '1000', NULL, '0110202413093385659e970d85608.png', '0110202413093362659e970d85a5d.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 07:39:33', '2024-01-10 08:38:20', NULL),
(117, '01102024134222659e9ebe1ac0e.png', '+971', '1231239999', 'lllllllllllllllllllllllllllkkkkkkkkkkkkkkkkkkkkkkz', 'znnsnsshshhshdbddhhddhdhdhdbdbhddhdhdhhdhdhddhddhd', 'b6@yopmail.com', '$2y$10$A4n3OX547RSrxwHqFcylsuzQgVLJhopYZA7bmiGiLG37u9KNSSFz6', 'Ras Al Khaimah', 'United States of America', '2024-01-10', 'Other', '51gt9737sg1h', NULL, 'Android', 'eyPyiU39TGquMqOBZ39x4u:APA91bFvzsBEQ05-qrkUXqGK26-t4d0JesNX-EPnkfA9Y7ARF0ImpH8Ze0lT0kPr-PU1-2FV5w5UgDsZEd2AG4CJe_emGrFtHu9m369frOpp7cMMHlPau_DnJp26aTw7ldMCJ1ajoZq8', NULL, 'yLq8tg1mTqIBMvwSVw9WpIRq7VD4bdEzzj5ey8v9EG5lRhp5CKvZdbUF9VlyUQby', '0', '0', NULL, NULL, 'Active', 58106721306, 'Silver', '1000', NULL, '0110202413182661659e992233d66.png', '0110202413182690659e99223401a.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 07:48:26', '2024-01-10 08:12:22', NULL),
(118, NULL, '+971', '1234567899', 'chhcuf', 'hdhcf7', 'yop@yopmail.com', '$2y$10$FvCRhveaZkzV1tQ0DUDkkesAAb6jHEleWRYENlK4CnIv4/wBzzMBG', 'Dubai', 'United States of America', '2024-01-10', 'Male', 'Ssa31123Hofy', NULL, 'Android', 'eQkSnmBTRYavlCrOR4pDQ3:APA91bEMwiey8FccvRBMCMij0t5SQDCpOEAq76NehcoLD-qlf7vyQ3j9n4Q9jILWCk-0p_ozhCF3SokJpPrGx9HQ6FwPVGSB0APJsWTkqYCzSdluwcIThPQmUF04eZcwg_OvGni890FA', NULL, 'XKBsS2XT8tGvZP11SHVKdIJwrzAYwlFPUt7S4xZw1mJGnGAvjHFdbqOuxgrKcTvZ', '0', '0', NULL, NULL, 'Active', 18296452591, 'Silver', '1000', NULL, '0110202414113199659ea593bd629.png', '0110202414113125659ea593bd989.png', '2024-01-10', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 08:41:31', '2024-01-10 08:41:31', NULL),
(119, '01112024050220659f765cddc3d.jpeg', '+91', '7878787878', 'djjdjsjjsjsjsjs', 'shhshshshsshsjsusjs', 'mm@yopmail.com', '$2y$10$ycGbQOr/v/w4NoILszmNS.AOIzUuprTEEprSk6TaDemHR8mbKfWj2', 'Abu Dhabi', 'Albania', '2024-01-10', 'Male', '86FE9615eYey', NULL, 'None', NULL, NULL, 'Gkfm5NjDieEFhgJIqQcl509Z28bLeER8ILNZGljve6zXqRVfG2nedNjd3HWyaTQH', '0', '0', NULL, NULL, 'Active', 55626357920, 'Silver', '1000', NULL, '0111202405022116659f765d5ad41.png', '0111202405022162659f765d5ae78.png', '2024-01-11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 23:32:21', '2024-01-11 07:51:49', NULL),
(120, '01112024051422659f792e1f159.jpeg', '+91', '9988776655', 'Raka', 'Ray', 'raka@yopmail.com', '$2y$10$NqIeHp18hKWRa5x680OKj.epNqfADrjWeogwyFOamn6n8n6wkZu/6', 'Umm Al Quwain', 'Antigua & Barbuda', '1995-01-11', 'Male', 'wD4A8915bYqh', NULL, 'Ios', '56dc734601283f9eba06f5fc3f57bc655f74069b166c0734de4c252de4cd9b2b', NULL, 'Ynygcjypktsbnjb4ZNSFt0DuM5Yvbcj6hVnraoYtrtrxY0ysLK1uaMojNqRHyDsn', '0', '0', NULL, NULL, 'Active', 41721002904, 'Silver', '1000', NULL, '0111202405142222659f792e68e6b.png', '0111202405142260659f792e691b2.png', '2024-01-11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-10 23:44:22', '2024-01-10 23:44:22', NULL),
(121, '01112024134157659ff025d3dcf.jpg', '+971', '1234567898', 'hsjsjskfudogskgkgskgsgkkgdkgskgskgdkgdkgdkgsgksgks', 'gdkgdigdgooyogdhodyodoydoysotsitidogdgodkdgkdgkdkg', 'o@yopmail.com', '$2y$10$3bAU1tvoWt/IHVJ04B5Zlutldg.EpD1LFaVWrxAODpz7Z3mEBsLxS', 'Dubai', 'Angola', '2024-01-11', 'Other', 'Rjhy2271Ja8e', NULL, 'None', NULL, NULL, 'AnvGX2O61MT4nGXcxZJUiqZ9dQFuryDqQ0neoMSTk3iWJWnBiP9nZ9w2kGBsAvua', '0', '0', NULL, NULL, 'Active', 60724603278, 'Silver', '1000', NULL, '0111202413415849659ff026749e1.png', '0111202413415899659ff02674d3f.png', '2024-01-11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-11 08:11:58', '2024-01-11 23:50:41', NULL),
(122, '01112024140817659ff6515f69c.jpeg', '+91', '987654321', 'bxbxjxjdjdjdjdjdkdjjdjdjruyodoydohd', 'hdhdhhdhdhogdlhdhodohdhldhodhofhofo', 'y@yopmail.com', '$2y$10$nNT38/BBMYKjPsbqYa.awO56wbGainguvsmp/h5POvCO5rYAbN.Oa', 'Abu Dhabi', 'Bahrain', '2024-01-11', 'Male', 'fBr58284LKW9', NULL, 'Ios', 'f391a6e775e52a4bb31884dae1c17af9a1a1206373b1288a2fdbb187204ccb34', NULL, 'Ge1Vo3HgLqt4CJIc8NrpQ1io0eXDzw6rvViZBIBgikdFU7AwYEcmtxqZuCZk7dhA', '0', '0', NULL, NULL, 'Active', 78693061916, 'Silver', '1000', NULL, '0111202414081793659ff651e6295.png', '0111202414081712659ff651e8d15.png', '2024-01-11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-11 08:38:17', '2024-01-11 08:38:18', NULL),
(123, '01112024141053659ff6ed5193c.jpeg', '+91', '7845784569', 'dsfs', 'dsfsd', 'ghgh@yopmail.com', '$2y$10$..LltWBXxw6lrJwQwftd4OsHG2ZbF3WC8SHx9NWkSlQpJ6sNyunJa', 'Abu Dhabi', 'Argentina', '2011-01-11', 'Other', 'ZCCv334632hM', NULL, 'None', NULL, NULL, 'n96WHQyKAVygBoNNkRrZ5yvTWkUPPYgosrNjjGVMLNV4fjklf7h82ubAYGcsnrAz', '0', '0', NULL, NULL, 'Active', 42796423445, 'Silver', '1000', NULL, '0111202414105345659ff6ed835fb.png', '0111202414105382659ff6ed8384b.png', '2024-01-11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-11 08:40:53', '2024-01-11 09:57:28', NULL),
(124, '0111202415350165a00aa57210d.jpeg', '+91', '4578458455', 'dsfs', 'sfsdf', 'fssdfsd@yopmail.com', '$2y$10$7NLpcmEeDImXHemCxJbfCeCAyXlpTtcpU3jWBEPg2zsN93ejml2LS', 'Abu Dhabi', 'Andorra', '2013-01-11', 'Male', 'YAs59310rWqo', NULL, 'None', NULL, NULL, 'p15NpvnF5SFhq5Y3Q2EV90iNvWhEvAfKze8l6R1oX7igKztwfPNLZCjRFVJlX6P5', '0', '0', NULL, NULL, 'Active', 82086328669, 'Silver', '1000', NULL, '011120241535011965a00aa5bf79d.png', '011120241535016265a00aa5bfbcb.png', '2024-01-11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-11 10:05:01', '2024-01-12 00:28:41', NULL),
(125, '0112202404190765a0bdbbc963b.jpg', '+971', '7787983455', 'hhy', 'Razz', 'raka2@yopmail.com', '$2y$10$RTv3VW1ezLNFUJTCYIUR4.UNwrhmVqjol3iJjR26FueGT7ckAxbmm', 'Abu Dhabi', 'Algeria', '1996-01-18', 'Male', 'jG5y3706vGvo', NULL, 'Android', 'ePLBi_z9RquAuFUX5PuwJz:APA91bHZ_hpfXtlgKz12v-bO5duVJyQQaIhUUPUh5ySQWjBTEf_VkhnwVXh262X4ZftUq8g6ngBfTEtucvoSuJjQ2FDyokL9Veb1gs5Ibv4RPLHIHMeVNG0Kcjmp7oLtegQ7TuVD2qAc', NULL, 'mxRPgQqK58VNbtHjWSTPNqubAD7wBf6JDfHcSvTrhHKlkWAGJOu1zKbt2Co2kKkG', '0', '0', NULL, NULL, 'Active', 63017897341, 'Silver', '1000', NULL, '011220240419086365a0bdbc346a0.png', '011220240419082865a0bdbc347e3.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-11 22:49:08', '2024-01-11 23:18:56', NULL),
(126, '0112202405362665a0cfda39bfe.jpeg', '+91', '2525252525', 'bdhdhdhdhhdhdhhdhdhehrhrhr', 'shhshshshshsje', 'mn@yopmail.com', '$2y$10$psnyyATz0ny1VYmkta2ejenB7RxlvMPeV//NccVFZjfeicYP3hV8O', 'Abu Dhabi', 'Albania', '2024-01-11', 'Male', 'KXHS8253ZeKR', NULL, 'None', NULL, NULL, 'hK1RtxhGDzHEmO4ovlCRU0zJNyiPgBr9XFqiql2Cy7g9ZOvNIxUEGwy4CYOHznLX', '0', '0', NULL, NULL, 'Active', 13430413599, 'Silver', '1000', NULL, '011220240536263565a0cfda8f198.png', '011220240536265665a0cfda8f573.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 00:06:26', '2024-01-12 00:23:51', NULL),
(127, '0112202405592665a0d53e4d76f.jpeg', '+971', '9090909090', 'bsbsbsbsnssnssnsnsndjsjdjshsjsjjd', 'sbnznsnsnsjsjsjsjsjhsjsjsjsjjsjsjs', 'bt@yopmail.com', '$2y$10$Gg7YX4/7HEuX.5hC/VgqT.BsISoD1gHeoHb7CiHZ5mdpsijFZAsye', 'Abu Dhabi', 'Algeria', '2024-01-11', 'Male', 'rBHo1597wgt6', NULL, 'Ios', 'a9187d9ed4173b82b1ebb0902b1d9232fc29cd2964e08d8fd4485f4cb365e3b8', NULL, 'XVkGWyI9XOHwZqxwx8XwetW8ui7ShiOY87m8LPi7PltMrQBLwPreHga3pYsz3GAq', '0', '0', NULL, NULL, 'Active', 73876713979, 'Silver', '1000', NULL, '011220240559261265a0d53ee2398.png', '011220240559261065a0d53ee367a.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 00:29:26', '2024-01-12 00:29:27', NULL),
(128, NULL, '+971', '658668688668', 'chfhg', '6ryttu', 'harmantestigcchng9@gmail.com', '$2y$10$w.bXL6m/dFFv6u22NTnkb.KBwZj1X03c1KMfAb8nE8fr//a3Ihnp6', 'Dubai', 'Algeria', '2024-01-11', 'Other', '6MPc2192ezcy', NULL, 'Android', 'd-rIO4mLSJWyx4HzNiJeY8:APA91bGShY436oDa76x77oIuVfAziBoJ-K3jZ6E6ANJmrRZMI8BIG4W1xqZJY7cFMr4ySgReB5ERIctP2aZpymx7ji37E130U0NgGLosl-xZ2JxOi8KrYd_FBijYp_OypeMIW6wfMBh_', NULL, 'g0OEA86N1gzyDaAwQQYk3k9aU8Q5jEgJ5aFp9xUXgvWtL4UnfstmqArqd5xVUcb0', '0', '0', NULL, NULL, 'Active', 27898440998, 'Silver', '1000', NULL, '011220240750566165a0ef601ac10.png', '011220240750568565a0ef603a4e7.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 02:20:55', '2024-01-12 02:20:56', NULL),
(129, '0112202408433065a0fbb2d21cd.jpg', '+971', '9876543212', 'hshdheh', 'usisieiejj', 'aa@yopmail.com', '$2y$10$G.x1lDAyTlO3Ako5Nyj9QekIfP0yo14enQdnDZD4U11p0b1B9THfq', 'Fujairah', 'Afghanistan', '2024-01-12', 'Female', 'RJzT9392GN2X', NULL, 'None', NULL, NULL, 'qcqHhVLmINELozpiiKLa8bvwWuLDpRUVhdNZAbm7aRJXFEGXxJ9Yzv0Xhxek4P5C', '0', '0', NULL, NULL, 'Active', 34923873453, 'Silver', '1000', NULL, '011220240843314965a0fbb3570c9.png', '011220240843317165a0fbb35a364.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 03:13:31', '2024-01-12 04:28:12', NULL),
(130, '0112202410402465a1171801018.jpg', '+971', '9638527411', 'kvzzgikxkgoogxkgkgxgoxogxgoxkgxgkxgoxgoxohfy', 'igdkgxogxoggodhodhodgod', 'sa@yopmail.com', '$2y$10$EMVgYk60B/sJ1iRcWmeZIe/jXHVoyas4UDAzEnJMV8YHAwtRk0hRW', 'Dubai', 'Algeria', '2024-01-12', 'Female', '1Mnp4441e1Ed', NULL, 'None', NULL, NULL, 'TuTDNPcdMfOb0sS2qrrzJKMvdY2OusMbJPXBpMCD02SlDApz0XwKxt6M5sh4za78', '0', '0', NULL, NULL, 'Active', 23144010219, 'Silver', '1000', NULL, '011220241040249565a1171859aca.png', '011220241040245065a1171859d27.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 05:10:24', '2024-01-12 05:16:23', NULL),
(131, '0112202411133165a11edbe02cf.jpg', '+971', '963258741', 'kvfizigzkglglgxgogxogxgogoogshho', 'ogohdohdohdhodhodoh', 'hj@yopmail.com', '$2y$10$oqVRKvioxgJbQgsdDyAYvuSCHEaDIKdOUYKHlC/wGuGYdWYByGfJS', 'Dubai', 'Andorra', '2024-01-12', 'Female', '7iWB1217U6zq', NULL, 'Android', 'd-rIO4mLSJWyx4HzNiJeY8:APA91bGYc84RkAkDpb6Y0OUUoTWsJ3VCVvbOMR6zu5Nx-xAg-gLOMOwy1dJJ3rhKoNiOEmjRPV5ipZj7Gg8UGyG4FzKQaqvqebXGhGWGCjOtQgvuvWu_SMdRE6ONsxcVVW6EXyUDK7uS', NULL, 'PzjIj2fZ2y4iBQ6vIWO0LjxoRdz6SXjDheYMsU55F4e1WKD1p30DRf3vnbzePtHC', '0', '0', NULL, NULL, 'Active', 93345070977, 'Silver', '1000', NULL, '011220241054275465a11a6360bd4.png', '011220241054272665a11a6360f80.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 05:24:27', '2024-01-12 05:43:31', NULL),
(132, '0112202411312765a1230f590ae.jpg', '+971', '147852369', 'gdhxhskggdgldgpgldhldhldhdhld', 'hldhshshldhldhldlhdhldlhdlhdhd', 'jb@yopmail.com', '$2y$10$qSvUoskIQyUP1LN77eGKIe.yo6.RMdTW4z8ZkoVmWah.a.Oghd.Ny', 'Fujairah', 'Albania', '2024-01-12', 'Female', 'inlR3737qvFu', NULL, 'None', NULL, NULL, '4r8xwPhqvcKLAg2iO1qNo6kP6YWpTZAtnWhIvLdpFnKFqGy8iMKwlnac1pzK5CyS', '0', '0', NULL, NULL, 'Active', 57029662347, 'Silver', '1000', NULL, '011220241131279665a1230fa1881.png', '011220241131277765a1230fa1aa0.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 06:01:27', '2024-01-12 06:01:36', NULL),
(133, '0112202411325165a1236324068.jpg', '+971', '147258369', 'dggsgizogzgozgkxoggdogdgodoggodohddgooggohdoggd', 'oggosstosgodgosgxoggxgovoxogsgodgodgodgod', 'kn@yopmail.com', '$2y$10$HgN4fAxF4IkjUHgv7WRM3OsiSIJbpKTla/8z/PxfQuMqOBiqxstQq', 'Fujairah', 'United States of America', '2024-01-12', 'Female', 'WI4F4852eHu6', NULL, 'None', NULL, NULL, 'aVueYszQOo5acDOhgxOtp0oqKAJZpqxvTdWqAft6ks205nW9zWlef4d2XJI4sNrr', '0', '0', NULL, NULL, 'Active', 58666447622, 'Silver', '1000', NULL, '011220241132512865a123639bef4.png', '011220241132511165a123639c056.png', '2024-01-12', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 06:02:51', '2024-01-12 08:22:00', NULL),
(134, NULL, '+91', '9094846487647', 'qguzqgizqgx', 'wgizqgixwgix', 'mobilephoufguugufune15515@gmail.com', '$2y$10$aykCstx1dsRouLcaV8g/5OD7sm0GZextwtW/OL5agO55ysw.8BhiS', 'Ajman', 'United States of America', '2024-01-15', 'Male', '7Lws3977Qo7J', NULL, 'Android', 'cVihoiAoQZOuLP3eBuo5Gu:APA91bFZNYw-TiojCBKJVA56ArUgTWcDBSbKux0JojKe12hR8O0NkLL70HJ9yVX1pRKRYgikrGHxWWY3xt7KfVzej5O9vo7Rn89QLvl9LBVUaqVD7OxcXDeAOe2SOUvvJyhQ5cMRbEXI', NULL, 'NP2183FBA6n5RTi9vMtTCcTUhaCEw0on35o8xM9d6NTQ80T7nJK8eYPsM5FJxjEF', '0', '0', NULL, NULL, 'Active', 87902478917, 'Silver', '1000', NULL, '011520241000466765a5024e3afce.png', '011520241000469365a5024e3b140.png', '2024-01-15', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 04:30:46', '2024-01-15 04:30:46', NULL),
(135, NULL, '+971', '46467618446', 'qbjb', 'wkx', 'mobilephohvz1huzhne15515@gmail.com', '$2y$10$o3IVdPc7JvLd7L7lB8HCRujUjLNghr2pp01dJ9QMjsIwY8EcBDak2', 'Abu Dhabi', 'Afghanistan', '2024-01-11', 'Male', 'be646852TjlN', NULL, 'None', NULL, NULL, 'RZ6K9U3UCo27T1mci268j3GJy1wT3YcrN7jlkwjZ08uOpgMDV1FnzDHcENjekMxX', '0', '0', NULL, NULL, 'Active', 47707418449, 'Silver', '1000', NULL, '011520241142197065a51a1b7684f.png', '011520241142195465a51a1b76bfc.png', '2024-01-15', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 06:12:19', '2024-01-15 07:18:18', NULL),
(136, NULL, '+971', '1989891686', '2uvq', '2vqv', 'mobilephonehshs15515@gmail.com', '$2y$10$nKGxDMpiF/6674qiCjSqYu7fuO/LQslgDVYVKbDV4UqSEoWeyYvO.', 'Ajman', 'Algeria', '2024-01-15', 'Male', 'YZpZ1503OskX', NULL, 'Android', 'fbBY7DAgRxeB_XjSwjWH1a:APA91bHHUepGNkdC89rvbaz1WKyrHCYG20RBNf7deGXwYxFprOToUHRPSoPYkWYHB3mSY5JNeXRBYH9VWok8InCQiktV2WrBFuyuxvzVY7MQhLcBQVsqwHiO0TyyrbneNpWMdeeNLuAF', NULL, '8AMqi6gAcm9F6U6XzOOe3sS6tkWHiPs2uBvLFeRyGGd5VaJfBukr7ewRvHXyEU9g', '0', '0', NULL, NULL, 'Active', 74254448937, 'Silver', '1000', NULL, '011520241248547865a529b6f2663.png', '011520241248547765a529b6f2a9b.png', '2024-01-15', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 07:18:54', '2024-01-15 07:18:55', NULL),
(137, '0116202405010465a60d908f6dd.jpeg', '+91', '9878456532', 'sdf', 'fdfsf', 'sds@yopmail.com', '$2y$10$q2XbkyrDq15B64Oy7BrHieU7gtzYi/jiS.bFzPWjEsgp9OlbLgZHq', 'Abu Dhabi', 'Antigua & Barbuda', '2018-01-16', 'Male', 'Uura4884eRDz', NULL, 'None', NULL, NULL, 'SGizLCig8XBGNSuGL3t4TXiETWjqYMOjO0h1cHfGAVnbEd4LYoVPXevypwKBncqu', '0', '0', NULL, NULL, 'Active', 93576733914, 'Silver', '1000', NULL, '011620240501059965a60d910148d.png', '011620240501055565a60d9103602.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 23:31:04', '2024-01-15 23:43:35', NULL),
(138, '0116202405142265a610ae4cd13.jpeg', '+91', '9863145263', 'fgdg', 'fgdf', 'fgfgh@yopmail.com', '$2y$10$1ogMPw5AzZxUA8Bt2C7eou9AY5u1giuxdI4/SEI2DcDJ5tiEjXKlO', 'Abu Dhabi', 'Angola', '2024-01-16', 'Male', 'PTGi8484BAhy', NULL, 'None', NULL, NULL, 'IsQhDzBVuNHxhueOg6iWpZgVaqW7pviqL63uNlZOIlySRT1mfao9q2Kf4TpcYONa', '0', '0', NULL, NULL, 'Active', 44317444445, 'Silver', '1000', NULL, '011620240514226565a610ae876a9.png', '011620240514224765a610ae87acb.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 23:44:22', '2024-01-15 23:45:45', NULL),
(139, '0116202405162765a6112b32426.jpeg', '+91', '9878456325', 'fgd', 'hjh', 'jghj@yopmail.com', '$2y$10$FrozdPmLOUz9TraGmJUxquPzf9qgixjXbQOTSW0ilzPEzvEoh7BZy', 'Abu Dhabi', 'Andorra', '2021-01-16', 'Male', 'OFWC1150HjVq', NULL, 'None', NULL, NULL, '7CrprF4cV0Slyu7B0Yn4FVOGrtqNLV5p6xPO7ILDeorUUvAfabP5ZKzQRr7OeDz7', '0', '0', NULL, NULL, 'Active', 48874379210, 'Silver', '1000', NULL, '011620240516275165a6112b638c2.png', '011620240516272365a6112b63cf1.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 23:46:27', '2024-01-15 23:50:53', NULL),
(140, NULL, '+971', '891618816868', 'bjguaxyuwx', 'vjvjwxax', 'mobilephotsysne15515@gmail.com', '$2y$10$3IkIvmw2pOZYj2/BHGuRpucNfZ32RZKfw2hIXthASuBfUvSVVS3O.', 'Ajman', 'United States of America', '2024-01-03', 'Male', 'r3OE9961Vn34', NULL, 'None', NULL, NULL, 'oRLcMKmPkcG3wqmlksqWiP5r2aqHb9wwvMReSAf9Qt55tl8g1wdbD8470OvhLv2O', '0', '0', NULL, NULL, 'Active', 12581397708, 'Silver', '1000', NULL, '011620240521198465a6124f8267e.png', '011620240521193165a6124f82a46.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 23:51:19', '2024-01-15 23:53:45', NULL),
(141, '0116202405213765a6126101d07.jpeg', '+91', '9878451423', 'cfb', 'ddfgdg', 'dfgdf@yopmail.com', '$2y$10$1jwtoHEyS5.cvjEBQ9fhheQ/0G5FvjDvmlPqBZEdhAChA.T/vFkWq', 'Abu Dhabi', 'Afghanistan', '2024-01-16', 'Male', 'q2Pa4347XJCu', NULL, 'None', NULL, NULL, 'TbK32jEUQuOETR9xxRsXnVO72eivsbIetuBihi64bw9SRmwl0cU9K9TytUsnzffv', '0', '0', NULL, NULL, 'Active', 92422247507, 'Silver', '1000', NULL, '011620240521371165a61261390e6.png', '011620240521376465a612613947d.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 23:51:37', '2024-01-16 00:03:35', NULL),
(142, NULL, '+971', '68386468', 'vyvh', 'yvvhwzvhzw', 'mobilephone1yey5515@gmail.com', '$2y$10$FrrhVhQMTYIOTEdbdSN84.GBzrsJbaqkb5R53sGFj1J8ZVfT05ivK', 'Abu Dhabi', 'Albania', '2024-01-16', 'Male', '4fUs7565CqFQ', NULL, 'None', NULL, NULL, 'jUwMcJO33DEl67ATz6gS3rzOWOhJgr5iGmrJjNPLXvBLLEm5HaahHTqL4OIc4CLf', '0', '0', NULL, NULL, 'Active', 33950363588, 'Silver', '1000', NULL, '011620240524234865a6130796c11.png', '011620240524237865a6130796f65.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-15 23:54:23', '2024-01-16 00:18:17', NULL),
(143, '0116202405343165a61567d7b1b.jpeg', '+91', '9878452541', 'fsddf', 'fsf', 'dfsdd@yopmail.com', '$2y$10$4DDJDD9X4FkJwWFprlqNY.tvoqzseIP5BtI/0DbK/6Ta/hGll0uxi', 'Abu Dhabi', 'Anguilla', '2018-01-16', 'Male', 'xptl9578po9l', NULL, 'None', NULL, NULL, 'XM1z2vDDkJibprXEjIHRjbdCoc3JknHA9ns5Gi7qYMEQ6q3zm3zZ5rR12Uzi0MgN', '0', '0', NULL, NULL, 'Active', 71909606952, 'Silver', '1000', NULL, '011620240534326865a6156816174.png', '011620240534322265a6156816519.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 00:04:31', '2024-01-16 00:06:55', NULL),
(144, '0116202405375565a61633760a2.jpeg', '+91', '9845745263', 'sfsdf', 'fsdfsf', 'rtrr@yopmail.com', '$2y$10$MtxpmC7ljFlWrWEfSfc.SuRXOOJzxmttwXbZkpJ0OF9obumsIs8Zi', 'Sharjah', 'Angola', '2018-01-16', 'Male', 'YGzX3099UN0s', NULL, 'None', NULL, NULL, 'TfQEdC8qFFVlizBTKx0pTA2rH7uNEiuyPjZMPpxwzwYqdd8SWzx61G5bCqzJUFC1', '0', '0', NULL, NULL, 'Active', 63372671381, 'Silver', '1000', NULL, '011620240537556065a61633a8d83.png', '011620240537559465a61633a909d.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 00:07:55', '2024-01-16 00:13:00', NULL),
(145, '0116202405440465a617a476409.jpeg', '+297', '2223331110', 'fed', 'Ddddddd', 'jimmy@yopmail.com', '$2y$10$zzG.oZnbQmofUUqJvEZbp.BX0e9CMzIKbGD2EOLAx93DMrFiw.8S.', 'Abu Dhabi', 'Afghanistan', '2024-01-16', 'Male', 'k8Ok2150EOvm', NULL, 'None', NULL, NULL, 'ttN4lpkJjS52jtM6w1qIQFnDl0jjBArdpI2eFs3gfTmuyHE5NivW7TeCbgmN52DC', '0', '0', NULL, NULL, 'Active', 18428541065, 'Silver', '1000', NULL, '011620240544047565a617a4b5a70.png', '011620240544046565a617a4b5cc0.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 00:14:04', '2024-01-16 05:57:42', NULL),
(146, '0116202405460465a6181cd1935.jpeg', '+91', '9878456352', 'sdfsd', 'dsf', 'sdfsd@yopmail.com', '$2y$10$Ez7AxtxkXNZgU37fh/gSsuVYnAPQjo0mS0FWS7GUxXIhpyZSyKSie', 'Abu Dhabi', 'Argentina', '2024-01-16', 'Male', '8gvS81423ze2', NULL, 'None', NULL, NULL, 'G8jegegO3H7Uvi9wVg5Jwqcuur4G6VSncqLt29YsiGUoO7s5vswQYTD0uToNlG1C', '0', '0', NULL, NULL, 'Active', 18043772075, 'Silver', '1000', NULL, '011620240546054665a6181d1077d.png', '011620240546051965a6181d1092b.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 00:16:04', '2024-01-16 00:55:29', NULL),
(147, '0116202405504065a61930aabed.jpg', '+971', '8646464664', 'gyzqqz', 'qzyvqzqz', 'mobiletsysgphone15515@gmail.com', '$2y$10$snj6s.pyRuw2WtAHLASvEOS0Z5YdIYca74Qi7JND/EaBMq6DS3C5G', 'Ajman', 'Afghanistan', '2024-01-16', 'Male', 'tRcu7758KYDE', NULL, 'None', NULL, NULL, 'zUyNJi1JPSWpjrXezpUoU57iJAGTbMXQ00cSvmRZMaDhIjXxKPMAzoPGAI4W71lQ', '0', '0', NULL, NULL, 'Active', 43930930146, 'Silver', '1000', NULL, '011620240548571365a618c9c22f5.png', '011620240548574265a618c9c2611.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 00:18:57', '2024-01-16 00:21:23', NULL),
(148, '0116202406315665a622dcee503.jpeg', '+91', '9832145263', 'dfsf', 'dsfsd', 'dsfsdfs@yopmail.com', '$2y$10$qSqzauBJ1EojBwlanJGNgu9sCW7g.7ESFf1KyI8p02Aibns1o2YA6', 'Abu Dhabi', 'Argentina', '2021-01-16', 'Male', 'CxR64350WWOX', NULL, 'None', NULL, NULL, 'jm090H1hrJTe99dku0U9JXXksWB0RAXriZ4qBljjsmEeCheduKjZ9005Q4BHoPy2', '0', '0', NULL, NULL, 'Active', 60182978548, 'Silver', '1000', NULL, '011620240631577665a622dd2b1d6.png', '011620240631575465a622dd2b44e.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 01:01:57', '2024-01-16 01:12:34', NULL),
(149, '0116202406445965a625eb49568.jpeg', '+91', '9878456832', 'dsfsdf', 'dsfsdfsdd', 'sfdsf@yopmail.com', '$2y$10$HgOPXrj93hsoLpvSVwEgg.KcTv2mg4hO4ubkcuSCVzZTvRH6ZLz3.', 'Umm Al Quwain', 'Albania', '2024-01-16', 'Male', 'zWcR86029UXA', NULL, 'None', NULL, NULL, 'z9Lg6vnylxSWEHP7iv50IEzyJZt11rKfTKYXFXWuPn7Oieuu9P8oBGJMKMKjyhCl', '0', '0', NULL, NULL, 'Active', 72150618486, 'Silver', '1000', NULL, '011620240644594165a625ebb6b55.png', '011620240644592965a625ebb6e02.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 01:14:59', '2024-01-16 01:31:06', NULL),
(150, '0116202407133465a62c9ec914b.jpeg', '+91', '9824856719', 'dxvxcvcx', 'xcvxcvxcv', 'xcvxcvcx@yopmail.com', '$2y$10$Ybf4q3cnTqLbYCFRTrhGK.arb14HwK2dNXjNnkH7PxQQVlz3Y0jKe', 'Abu Dhabi', 'Antarctica', '2019-01-16', 'Male', 'rDq79667R14G', NULL, 'Ios', '8009a1ce964c4714eb2a050a72b6c2ffde3198349f76bb3a5beb9ba7d89518cff42e6fd5014cf29e176bf028ff9ad40976ac5b2eeddfc148ab757e1996511e3b63f7a79c03c65b94aa094b34260fc561', NULL, 'PmD1s3EKtrPZnSfqMdboCoodXKbBLU5Dgf9Iqim4EQ5m8MT3amUBi7MAkSLv1oxF', '0', '0', NULL, NULL, 'Active', 35178672582, 'Silver', '1000', NULL, '011620240713358265a62c9f08c42.png', '011620240713358465a62c9f08f4c.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 01:43:34', '2024-01-16 01:43:35', NULL),
(151, '0116202408193665a63c189dd4f.jpeg', '+91', '9878456523', 'dfsad', 'sdfsd', 'kkk@yopmail.com', '$2y$10$JN.CuBcSLkOb/2gutXjgWuXJrhH5KbVASOt9TvT6Wo5WKeMGwOrm2', 'Abu Dhabi', 'Antarctica', '2016-01-16', 'Male', 'tXeA6458jxdV', NULL, 'Ios', '8009a1ce964c4714eb2a050a72b6c2ffde3198349f76bb3a5beb9ba7d89518cff42e6fd5014cf29e176bf028ff9ad40976ac5b2eeddfc148ab757e1996511e3b63f7a79c03c65b94aa094b34260fc561', NULL, 'Bgr2Uw5RwwuNUuyUNMRdbS92IVoPd5lDpds64SQ9abTbJ7j2neRREVBiVC9WDCff', '0', '0', NULL, NULL, 'Active', 26564114723, 'Silver', '1000', NULL, '011620240819361865a63c18ced59.png', '011620240819369765a63c18cf10a.png', '2024-01-16', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 02:49:36', '2024-01-16 02:49:36', NULL),
(152, NULL, '+91', '98743523236', 'aman', 'bansal', 'amandeftsoft68@gmail.com', '$2y$10$x/NS544ivA77vH7FHjGAEOWWOrE5ezRjQmNCRnFxTbEMBWMEcCJxO', 'Abu Dhabi', 'Afghanistan', '2000-01-01', 'Male', 'ygbA8342VdWd', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, 'Zgo1pNg1z8DPWoiQjXxNmNYoqaQRJF7djHETiQCwCAOEbI0tZmGtRzqvOOKO9Lfn', '0', '0', NULL, NULL, 'Active', 54867158175, 'Silver', '1000', NULL, '011820240658568765a8cc30a4d33.png', '011820240658563265a8cc30a7238.png', '2024-01-18', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-18 01:28:56', '2024-01-18 01:28:56', NULL),
(153, NULL, '+91', '902394839', 'Super', 'Shivam', 'supershivam@yopmail.com', '$2y$10$MGagR7AhCL9SrijSUwUEQOJTSJeSm9X1bbwZTVp3P/kkrmGRIqW.2', 'Abu Dhabi', 'Afghanistan', '1941-03-09', 'Male', 'zmQP4456uQ0a', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, 'p4BvQXcNC3EJf15CmDojdZzFNskGDV2Mgr41b69vZGBUODlCZBQMfO8802aYTy7v', '0', '0', NULL, NULL, 'Active', 10280003389, 'Silver', '1000', NULL, '011820240659452765a8cc615ecdb.png', '011820240659453965a8cc615f11e.png', '2024-01-18', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-18 01:29:45', '2024-01-18 01:29:45', NULL),
(154, NULL, '+91', '9023948399', 'Super', 'Shivam', 'supershivam1@yopmail.com', '$2y$10$C0WsOmmiuaVwKPCEkdz1leU6o.egdxtLG5WCIP8pV/RZdonlbV8BK', 'Abu Dhabi', 'Afghanistan', '1942-03-09', 'Male', 'cUru2696rxiM', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, NULL, '0', '1', NULL, NULL, 'Active', 54265704617, 'Silver', '1000', NULL, '011820240707167565a8ce24a1959.png', '011820240707168365a8ce24ac902.png', '2024-01-18', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-18 01:37:16', '2024-01-18 01:38:31', NULL),
(156, NULL, '+91', '9149308278', 'gaurav', 'bisht', 'bisht01@yopmail.com', '$2y$10$dwDbbnJTXKWVnLxlgoB6XOSt0419EfjGqB3S.yG34yfUbesTlkIfe', 'Abu Dhabi', 'Afghanistan', '1943-03-09', 'Male', 'efAn844317q4', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, '2GUUEesECHASBbvQKjGXMEqB9iRL60Un52AzONmCIQaQ3FdrlDqPtYqtHir535Hk', '0', '0', NULL, NULL, 'Active', 50516775214, 'Silver', '1000', NULL, '030420240517424565e55976b26c6.png', '030420240517424665e55976b28c6.png', '2024-03-04', 0, 'FB-MfF3vFxZvd2tLAAAB', 'No', 'No', 'android display', 0, NULL, '4.317889', '-6.254869', '2024-03-03 23:47:42', '2024-03-12 02:29:50', NULL),
(158, '0307202406585465e965ae9314c.jpeg', '+880', '8449573084', 'Dev', 'Dev', 'userk1@yopmail.com', '$2y$10$v403LPKE4ynP6lOX45w1F.EqS0q4kbW7H/3Uzg.PiaIAcIarzba2m', 'Abu Dhabi', 'Albania', '1944-05-07', 'Male', 'AYoY5939oQzV', NULL, 'Ios', 'a6a837213af068464b2ae9ebfb899d32286717fea4633ee6ae8f6ac576b399f8', NULL, 'gJ5rvabT9rd8WSOlr2TnDB5a1HwvjkNVIBGB13WNGPM3OIOkxGKK1CVB9zGWc5sD', '0', '0', NULL, NULL, 'Active', 87892562729, 'Silver', '1000', NULL, '030720240658555265e965af0068b.png', '030720240658553265e965af00942.png', '2024-03-07', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-07 01:28:54', '2024-03-07 01:28:55', NULL),
(160, NULL, '+91', '8449573055', 'super', 'qwer', 'userk@yopmail.com', '$2y$10$8hjDqdid6oDhgvzI.vuQiu784g/9A5/AetIoEl/Q2UsfC1FM/.//y', 'Abu Dhabi', 'Afghanistan', '1945-03-09', 'Male', 'KE4X1666RsOF', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, 'z2DAJNobZN7pgxr7vZIe3YuGCmLd0172LuolDlSagMZ4MKtlPzUzz8NGD16eqmMr', '0', '0', NULL, NULL, 'Active', 13367271717, 'Silver', '1000', NULL, '030720240812051765e976d5bcab2.png', '030720240812051965e976d5bcd27.png', '2024-03-07', 0, NULL, 'No', 'No', 'thisisdisplayname', 0, NULL, NULL, NULL, '2024-03-07 02:42:05', '2024-03-07 02:42:05', NULL),
(161, '0307202411381865e9a72a0216b.png', '+254', '8449573023', 'Ioskevin', 'New', 'kevin@yomail.com', '$2y$10$f6EiS9vbFjoPCN4TsNYGHuhf3iTzOd9rYESPLT8H83XdmflhgN0VG', 'Abu Dhabi', 'Afghanistan', '1946-03-09', 'Male', 'I4z53116atTm', NULL, 'Ios', 'adabdc7f280e28f1c2fa0b7433864665ab2ecd4f89feee0ce9f661d2fc201d39', NULL, 'g8PTtEUw93USHQcUsYejB0QF7gtaMwkLUbpyuLCuCgbRheWyp5hd6jNDZe2wyS0U', '0', '0', NULL, NULL, 'Active', 33772680296, 'Silver', '1000', NULL, '030720241011311765e992d33d13a.png', '030720241011318965e992d340d22.png', '2024-03-07', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-07 04:41:30', '2024-03-07 06:08:51', NULL),
(162, '0307202410513165e99c33d8491.jpeg', '+54', '8449573021', 'Kevin', 'KevinNew', 'abhay1@yopmail.com', '$2y$10$XymQ.Tx39C.OpPUjd0ZTH.h6CGrAekWQeyv0/Dy9UNyvlcFgFvx.K', 'Abu Dhabi', 'Belgium', '1947-10-15', 'Male', 'aXrU59269Rod', NULL, 'None', NULL, NULL, 'XHdEweo2x2w83viuCqJHSQbISf8nv4E7fHphTSgAysLpV62jPwd4KyMdZoZs3nsT', '0', '0', NULL, NULL, 'Active', 73284860099, 'Silver', '1000', NULL, '030720241051325965e99c343c0b5.png', '030720241051324765e99c343c32d.png', '2024-03-07', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-07 05:21:31', '2024-03-07 05:43:49', NULL);
INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `socket_id`, `do_you_smoke`, `do_you_drink`, `display_name`, `refer_amount_used`, `request_change_email`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(163, '0307202411150665e9a1ba716e2.jpeg', '+44', '8449573022', 'Dadadd', 'Dadsdads', 'sfa@yopmail.com', '$2y$10$zeJdvDc5TaddnqMp2Th4kuoL9rw1M2VdkuRiXZJnVj5S7yiI5basa', 'Abu Dhabi', 'Andorra', '1948-03-09', 'Male', 'CfCb9333DHxM', NULL, 'Ios', '803387cace9f8979f09237cd9ce5cd7782ab10fdd2b77c356604ea7c4ec644c67022738f0d075ec5afa0130f46282ca86aef9bff1eb70a76916b126a6d480aff23eebc30814c28314b52f08f398d0940', NULL, 'peSCnimLA5GQTolK5Z3tqhnEcPfwlQ0CiS8cnSQMvaFE5eHdxeT3mkslxCTttX0M', '0', '0', NULL, NULL, 'Active', 17809142209, 'Silver', '1000', NULL, '030720241115066465e9a1bad5f0a.png', '030720241115062165e9a1bad6149.png', '2024-03-07', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-07 05:45:06', '2024-03-07 05:45:06', NULL),
(164, '0308202405133365ea9e7d50c32.jpeg', '+1264', '8449573022', 'Shv', 'Shb', 'shb@yopmail.com', '$2y$10$H5ZUQjMUDwIA1INOz8svGujme1VB9FGAP/Ogqk5yuzcNhofD7wxIG', 'Abu Dhabi', 'Afghanistan', '1949-10-09', 'Male', '4rtl8549TaYX', NULL, 'Ios', '52f82f1a912a69d8be456eba2f021edde9570a88a35531015c2b8032e0ff25e1', NULL, 'FNRFdOEhlMLqknLCbXf08rotxnCV83Fg01jxDSAYlxkOTxRj77fbtsyp8VczckW9', '0', '0', NULL, NULL, 'Active', 90986761228, 'Silver', '1000', NULL, '030820240513342965ea9e7e06104.png', '030820240513347265ea9e7e06536.png', '2024-03-08', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-07 23:43:33', '2024-03-07 23:43:34', NULL),
(165, '0308202406224265eaaeb26f192.jpg', '+91', '956469769449', 'Aditya', 'tomar', 'mohdhebilephone15515@gmail.com', '$2y$10$WN39SMB3pfhC3QnloZ0NB.U1FR2zvg4atYqcioLE2RYn8bZjUNZe2', 'Ajman', 'Algeria', '2004-03-09', 'Female', 'dSl23023nD6d', NULL, 'Android', 'egDWPtmzQ9iQLw9LoIiMh7:APA91bHwN_Y8Ay3dtFPJ_blKIdZ5Twpw8pFfwQgM1rJPmtYwnSL0lFXEw_oLRS2A1KvaKbswYige9M1DKy8kijPGc3MmKrJxSzBHF8ylMgLzS1YQShj0z6prhjFR5N9NmK_NZ9Iv_WUS', NULL, 'maV1C95a1i9eDycFCJRGgeIhGIyTtXF91eAaPRIaQi9tpdOQ0JhMLUi4DqfGPUvS', '0', '0', NULL, NULL, 'Active', 64617154321, 'Silver', '1000', NULL, '030820240608176565eaab51be5d6.png', '030820240608179765eaab51c3072.png', '2024-03-08', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-08 00:38:17', '2024-03-11 05:27:25', NULL),
(166, '0311202405183465ee942a2d603.png', '+91', '88859073557', 'Abdul', 'Aleem', 'Aleem21@gmail.com', '$2y$10$SKrhvdyhIpubj.Yw3SqJQO8VmSXO3j1ISNBS98A2fx8AykOH/LZyu', 'Abu Dhabi', 'United Arab Emirates', '1995-05-05', 'Male', 'koQz6805ZGXC', NULL, 'Ios', '80177e0a6790e5d6e8122c86bc4e4c9d17c49cd515b30eccaa12c91f355e6d8f4a8c6810974a3a17aa86dae2c73529bc8f845176ae5caa0ef0a0d518693acbd7b2e5285e29bb3084a369abd39cf87536', NULL, 'ai3CQsPqKaSTQLGKUfZO26ClUqMpaZyWde8f1PQd015r3guFFFupsCLTuagTXCmp', '0', '0', NULL, NULL, 'Active', 40661036299, 'Silver', '1000', NULL, '031120240514583065ee935255df8.png', '031120240514585665ee935256020.png', '2024-03-11', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-10 23:44:57', '2024-03-10 23:48:39', NULL),
(167, '0311202406161265eea1ac848cb.jpeg', '+54', '7302251150', 'Awash', 'Kaushal', 'user17@yopmail.com', '$2y$10$2qMhgW2fa.d5VVezv.lJjeaUDTPH3.tY.YzjycfaWMGYguC/bNkny', 'Abu Dhabi', 'Albania', '2008-03-11', 'Male', 'X7ZP8492GiGe', NULL, 'Ios', '691ab1e61fc6ca2ee86aa9e8fee152c1c6d0596fca7ad0e3ff4c1deb619d678f', NULL, 'mm04F4V6wH6MW20MogaGVxDK6blikgHlp2DmDqZBpVNW5SjYtOuxk8Qd5MNheVnk', '0', '0', NULL, NULL, 'Active', 27102771855, 'Silver', '1000', NULL, '031120240616135765eea1ad05181.png', '031120240616137765eea1ad0541a.png', '2024-03-11', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-11 00:46:12', '2024-03-11 02:59:24', NULL),
(168, NULL, '+91', '9639639631', 'Buzz', 'Ft', 'dkhwixhx@yopmail.com', '$2y$10$ZRzmN/6F4MvPr7WMy/sfFe2YQSkxKAgh8iK2Jsd0f5dz4iHnTGLbC', 'Ajman', 'Algeria', '2008-03-12', 'Male', 'ugkm7402PmBO', NULL, 'None', NULL, NULL, 'rly3V0InDy8zTx0VyswIbyp9sw4TxbU9RKtFtDWuSVme9Ug7HQHTNVgc9z1DHvBP', '0', '0', NULL, NULL, 'Active', 35367546703, 'Silver', '1000', NULL, '031220240812261965f00e6a8bd20.png', '031220240812265965f00e6a91f57.png', '2024-03-12', 0, NULL, 'Regular', 'Occasional', NULL, 0, NULL, NULL, NULL, '2024-03-12 02:42:26', '2024-03-12 02:42:42', NULL),
(169, NULL, '+92', '3333333333', 'Gsggs', 'Gzgzg', 'gzgzvz@yopmail.com', '$2y$10$PpsrLkHzevFa2sEHh7gGLOrAgG4zaVnK.WiadalGEcOIpLKq8HX/C', 'Dubai', 'United States of America', '2003-03-12', 'Male', 'c1a11563kQJY', NULL, 'None', NULL, NULL, 'kbaOGpln3SI5HX1qRQYyUQKoui93uLmAgkgoAFE4BFgxjAb9ScsmBmLUOTl0B2k0', '0', '0', NULL, NULL, 'Active', 99538279319, 'Silver', '1000', NULL, '031220240816236765f00f575eeee.png', '031220240816237865f00f575f1f1.png', '2024-03-12', 0, NULL, 'No', 'No', NULL, 0, NULL, NULL, NULL, '2024-03-12 02:46:23', '2024-03-12 02:48:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_assign_offers`
--

CREATE TABLE `user_assign_offers` (
  `id` int UNSIGNED NOT NULL,
  `offer_id` int UNSIGNED NOT NULL,
  `offer_setting_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `city_id` int DEFAULT NULL,
  `dob` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Today',
  `gender` enum('None','Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `date` date DEFAULT NULL,
  `assign_at` date DEFAULT NULL,
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `offer_type` enum('Normal','BirthdayOffer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_redeem` int NOT NULL DEFAULT '0',
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
(29, 24, 24, 14, NULL, 'Today', 'Male', '2023-10-26', '2023-10-26', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-15 09:07:05', '2021-11-15 09:07:05', NULL),
(149, 19, 19, 11, NULL, 'Today', 'Male', '2022-01-25', '2022-01-25', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2022-01-25 06:44:56', '2022-01-25 06:44:56', NULL),
(150, 28, 28, 1, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:36', '2024-01-09 00:19:36', NULL),
(151, 28, 28, 2, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:39', '2024-01-09 00:19:39', NULL),
(152, 28, 28, 3, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:40', '2024-01-09 00:19:40', NULL),
(153, 28, 28, 4, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(154, 28, 28, 5, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(155, 28, 28, 6, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(156, 28, 28, 7, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(157, 28, 28, 8, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(158, 28, 28, 12, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:42', '2024-01-09 00:19:42', NULL),
(159, 28, 28, 13, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(160, 28, 28, 14, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(161, 28, 28, 15, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(162, 28, 28, 16, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(163, 28, 28, 17, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(164, 28, 28, 18, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(165, 28, 28, 19, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(166, 28, 28, 20, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(167, 28, 28, 21, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(168, 28, 28, 22, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(169, 28, 28, 23, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(170, 28, 28, 24, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(171, 28, 28, 25, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(172, 28, 28, 26, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(173, 28, 28, 27, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(174, 28, 28, 28, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(175, 28, 28, 29, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(176, 28, 28, 30, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:48', '2024-01-09 00:19:48', NULL),
(177, 28, 28, 31, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(178, 28, 28, 32, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(179, 28, 28, 33, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(180, 28, 28, 34, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:50', '2024-01-09 00:19:50', NULL),
(181, 28, 28, 35, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(182, 28, 28, 36, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(183, 28, 28, 37, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(184, 28, 28, 38, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(185, 28, 28, 39, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(186, 28, 28, 40, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:54', '2024-01-09 00:19:54', NULL),
(187, 28, 28, 41, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:54', '2024-01-09 00:19:54', NULL),
(188, 28, 28, 42, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(189, 28, 28, 43, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(190, 28, 28, 44, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(191, 28, 28, 45, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(192, 28, 28, 46, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(193, 28, 28, 47, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:56', '2024-01-09 00:19:56', NULL),
(194, 28, 28, 48, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(195, 28, 28, 49, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(196, 28, 28, 50, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(197, 28, 28, 51, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(198, 28, 28, 52, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(199, 28, 28, 53, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(200, 28, 28, 54, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(201, 28, 28, 55, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(202, 28, 28, 56, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(203, 28, 28, 57, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(204, 28, 28, 58, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(205, 28, 28, 59, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(206, 28, 28, 60, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(207, 28, 28, 61, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(208, 28, 28, 62, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(209, 28, 28, 63, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:01', '2024-01-09 00:20:01', NULL),
(210, 28, 28, 64, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(211, 28, 28, 65, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(212, 28, 28, 66, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(213, 28, 28, 67, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(214, 28, 28, 68, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:05', '2024-01-09 00:20:05', NULL),
(215, 28, 28, 69, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(216, 28, 28, 70, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(217, 28, 28, 71, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(218, 28, 28, 72, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(219, 28, 28, 73, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:08', '2024-01-09 00:20:08', NULL),
(220, 28, 28, 74, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:09', '2024-01-09 00:20:09', NULL),
(221, 28, 28, 75, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:10', '2024-01-09 00:20:10', NULL),
(222, 28, 28, 76, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(223, 28, 28, 77, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(224, 28, 28, 78, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(225, 28, 28, 79, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(226, 28, 28, 80, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(227, 28, 28, 81, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(228, 28, 28, 82, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(229, 28, 28, 83, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(230, 28, 28, 84, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:14', '2024-01-09 00:20:14', NULL),
(231, 28, 28, 85, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(232, 28, 28, 86, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(233, 28, 28, 87, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(234, 28, 28, 88, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(235, 28, 28, 89, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(236, 28, 28, 90, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(237, 28, 28, 91, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:19', '2024-01-09 00:20:19', NULL),
(238, 28, 28, 92, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(239, 28, 28, 93, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(240, 28, 28, 94, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(241, 28, 28, 95, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(242, 28, 28, 96, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:21', '2024-01-09 00:20:21', NULL),
(243, 28, 28, 97, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(244, 28, 28, 98, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(245, 28, 28, 99, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(246, 28, 28, 100, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:24', '2024-01-09 00:20:24', NULL),
(247, 29, 29, 1, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:21:58', '2024-01-09 00:21:58', NULL),
(248, 29, 29, 2, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:00', '2024-01-09 00:22:00', NULL),
(249, 29, 29, 3, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(250, 29, 29, 4, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(251, 29, 29, 5, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(252, 29, 29, 6, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(253, 29, 29, 7, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(254, 29, 29, 8, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(255, 29, 29, 12, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(256, 29, 29, 13, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(257, 29, 29, 14, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(258, 29, 29, 15, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(259, 29, 29, 16, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(260, 29, 29, 17, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(261, 29, 29, 18, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(262, 29, 29, 19, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(263, 29, 29, 20, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(264, 29, 29, 21, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(265, 29, 29, 22, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(266, 29, 29, 23, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(267, 29, 29, 24, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(268, 29, 29, 25, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(269, 29, 29, 26, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(270, 29, 29, 27, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(271, 29, 29, 28, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(272, 29, 29, 29, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(273, 29, 29, 30, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:09', '2024-01-09 00:22:09', NULL),
(274, 29, 29, 31, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(275, 29, 29, 32, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(276, 29, 29, 33, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(277, 29, 29, 34, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:11', '2024-01-09 00:22:11', NULL),
(278, 29, 29, 35, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(279, 29, 29, 36, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(280, 29, 29, 37, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(281, 29, 29, 38, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(282, 29, 29, 39, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(283, 29, 29, 40, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(284, 29, 29, 41, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(285, 29, 29, 42, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(286, 29, 29, 43, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(287, 29, 29, 44, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(288, 29, 29, 45, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(289, 29, 29, 46, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(290, 29, 29, 47, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(291, 29, 29, 48, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(292, 29, 29, 49, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(293, 29, 29, 50, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(294, 29, 29, 51, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(295, 29, 29, 52, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(296, 29, 29, 53, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(297, 29, 29, 54, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(298, 29, 29, 55, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(299, 29, 29, 56, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(300, 29, 29, 57, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(301, 29, 29, 58, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(302, 29, 29, 59, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(303, 29, 29, 60, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(304, 29, 29, 61, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:21', '2024-01-09 00:22:21', NULL),
(305, 29, 29, 62, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:21', '2024-01-09 00:22:21', NULL),
(306, 29, 29, 63, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:22', '2024-01-09 00:22:22', NULL),
(307, 29, 29, 64, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(308, 29, 29, 65, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(309, 29, 29, 66, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:24', '2024-01-09 00:22:24', NULL),
(310, 29, 29, 67, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(311, 29, 29, 68, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(312, 29, 29, 69, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(313, 29, 29, 70, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(314, 29, 29, 71, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(315, 29, 29, 72, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(316, 29, 29, 73, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:28', '2024-01-09 00:22:28', NULL),
(317, 29, 29, 74, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:29', '2024-01-09 00:22:29', NULL),
(318, 29, 29, 75, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:30', '2024-01-09 00:22:30', NULL),
(319, 29, 29, 76, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(320, 29, 29, 77, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(321, 29, 29, 78, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(322, 29, 29, 79, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(323, 29, 29, 80, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(324, 29, 29, 81, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(325, 29, 29, 82, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(326, 29, 29, 83, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(327, 29, 29, 84, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:34', '2024-01-09 00:22:34', NULL),
(328, 29, 29, 85, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(329, 29, 29, 86, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(330, 29, 29, 87, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(331, 29, 29, 88, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(332, 29, 29, 89, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(333, 29, 29, 90, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(334, 29, 29, 91, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:39', '2024-01-09 00:22:39', NULL),
(335, 29, 29, 92, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(336, 29, 29, 93, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(337, 29, 29, 94, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(338, 29, 29, 95, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(339, 29, 29, 96, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(340, 29, 29, 97, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:43', '2024-01-09 00:22:43', NULL),
(341, 29, 29, 98, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:44', '2024-01-09 00:22:44', NULL),
(342, 29, 29, 99, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:44', '2024-01-09 00:22:44', NULL),
(343, 29, 29, 100, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:45', '2024-01-09 00:22:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_venue_favorites`
--

CREATE TABLE `user_venue_favorites` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `venue_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venue_users`
--

CREATE TABLE `venue_users` (
  `id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `device_model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `mac_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `authorized_status` enum('Unauthorized','Authorized') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unauthorized',
  `date_time` datetime DEFAULT NULL,
  `access_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_users`
--

INSERT INTO `venue_users` (`id`, `venu_id`, `username`, `password`, `status`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `access_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'kanhaiyagoyal', '$2y$10$7YdjLx9vgv8Li7.JLvi9iOxTYDVLYiGzdRmWdNRVGrzTDt3dHREB6', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-12 18:52:51', '$2y$10$vhGq2APpNk1GIzYRaaYbg.M1EaeFnpKqCQy/U4VHi/rv6r.RfXwyu', 'Nadeer', 'Nadeer', '2021-11-12 13:22:51', '2021-11-12 13:24:05', NULL),
(2, NULL, 'aman', '$2y$10$T6YjiU0KM9WiBoY1hjHWF.Rwvbl09HjZ73lX95AFAr2sSCH17/kdm', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-12 19:49:01', '$2y$10$48HUSNnu4hAiGcy01YWDM.p3BnvVjMvVaYwIWAVrrBzMU96OEm7mC', 'kanhaiya', 'kanhaiya', '2021-11-12 14:19:01', '2022-01-27 10:37:33', NULL),
(3, NULL, 'ios', '$2y$10$4Xb6hyQlwJnTkEok7NiFYuQnD2prclVQSg/B3s1O0/jJnjmmfiUTK', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-15 10:34:32', '$2y$10$HYh8X6GlnKv4h3J1GUwhJOOCngW.0HO6/iCOB/vSLUej3.g05iVgy', 'Nadeer', 'Nadeer', '2021-11-15 05:04:32', '2021-11-15 05:04:40', NULL),
(4, NULL, 'sachin', '$2y$10$N/jFsFeoNDknTicxdunrGOfscrYiHo/B1HCACC4GWrb3ABiqov.fu', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-16 11:54:56', '$2y$10$Ny.kAKh0x61OIGzdDRSVre5I7Vs4ek2KObGLW7Ewnc5a8qhXssZhq', 'Nadeer', 'admin2', '2021-11-16 06:24:56', '2021-11-16 09:15:03', NULL),
(5, NULL, 'Shivam', '$2y$10$T6YjiU0KM9WiBoY1hjHWF.Rwvbl09HjZ73lX95AFAr2sSCH17/kdm', 'Active', 'N/A', 'N/A', 'Unauthorized', '2022-01-20 10:11:22', '$2y$10$mRoGNZsHVnEPsuZV5ivNfuZCIA.MhxcCdLqxH.gG4MsgpCO0AYSLG', 'Nadeer', 'Nadeer', '2022-01-20 04:41:22', '2022-01-27 05:38:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venus`
--

CREATE TABLE `venus` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venue_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` int DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `venue_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map_location_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_now_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_venue_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venus`
--

INSERT INTO `venus` (`id`, `admin_id`, `venue_name`, `unique_id`, `address`, `venue_description`, `phone_number`, `google_map_location_link`, `book_now_link`, `image`, `name_of_file_show`, `menu_link`, `status`, `pos_venue_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Venuadfhasdfajkhdfjkahldkjfhak', 1, 'Mohalisadfasdfasdfkalshdfkjhadfkhakdhfkhasldkfjhlkasdfkhasdfasdfasdfsadfasdfsadf', 'testingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjk', '5454565655', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1027202307194649653b649232af7.jpeg', 'Screenshot_20231019_130758.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1001, '2021-11-12 13:22:29', '2023-10-27 01:49:46', NULL),
(2, 1, 'Venue2777', 2, 'party', 'party', '971506969298', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1112202118571721618e6bb5df6f0.png', 'Screenshot_32.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1002, '2021-11-12 13:27:18', '2021-11-15 11:30:44', NULL),
(5, 2, 'abhay', 4, '213213', '213213123213213123213213123213213123213213123213213123213213123213213123213213123213213123213213123213213123', '4234324', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1024202306364827653766009a91c.png', 'Screenshot 2023-09-19 at 3.56.50 PM.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 43432, '2021-11-15 07:12:04', '2023-10-24 01:07:01', NULL),
(6, 1, 'sadsad', 5, 'sad', 'dsadd', '3214', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1115202112442916619208d5a6f7b.jpeg', 'Cool-Nature-Wallpapaer-for-Download.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', NULL, '2021-11-15 07:14:05', '2021-11-15 07:22:04', '2021-11-15 07:22:04'),
(7, 1, 'Shivam Test', 6, 'sadf', 'dfas', '4234', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '102420230628555565376427dd407.png', 'Screenshot 2023-09-19 at 3.56.54 PM.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 4234, '2021-11-15 11:46:42', '2023-10-24 00:58:56', NULL),
(8, 1, 'TEST 2', 7, 'xxx', 'xxx', '3434343457', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '012420220848097261ee67c95f559.jpeg', 'file_example_JPG_1MB.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', NULL, '2022-01-24 03:18:03', '2022-01-24 03:18:09', NULL),
(9, 1, 'Hello world', 8, 'mohali,chandigarh, punjab', 'asdasdasdasdasdasdasdasdasdasdadasdsdafkhsdghlsdfgjksdfhgljksdfgshdlgkhsdkfjghdhklsfghlkshdfghlksjdfghdsfjkghkldfgjkshdfjkghdfg', '1234567892', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1027202313153481653bb7f6e195d.jpeg', 'download.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1008, '2023-10-27 07:45:17', '2023-10-27 07:45:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_cashbacks`
--

CREATE TABLE `wallet_cashbacks` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  `bonus_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_friend` double NOT NULL DEFAULT '0',
  `refer_friend_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cashback_earned` double NOT NULL DEFAULT '0',
  `redeemed_amount` double NOT NULL DEFAULT '0',
  `user_wallet_cash` double NOT NULL DEFAULT '0',
  `date_and_time` datetime NOT NULL,
  `type_of_transaction` enum('Bonus','Refer','Redeem','Cashback') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(28, 9, 'Bonus Earnings', 1000, 0, 1000, '2021-11-17 11:56:41', 'Bonus', '2021-11-17 06:26:41', '2021-11-17 06:26:41'),
(29, 1, 'Cash Back Earnings', 20, 0, 3050, '2022-01-19 10:52:08', 'Cashback', '2022-01-19 05:22:08', '2022-01-19 05:22:08'),
(30, 1, 'Cash Back Earnings', 20, 0, 3070, '2022-01-19 10:52:11', 'Cashback', '2022-01-19 05:22:11', '2022-01-19 05:22:11'),
(31, 1, 'Cash Back Earnings', 20, 0, 3090, '2022-01-19 10:52:12', 'Cashback', '2022-01-19 05:22:12', '2022-01-19 05:22:12'),
(33, 11, 'Bonus Earnings', 1000, 0, 1000, '2022-01-25 16:35:25', 'Bonus', '2022-01-25 11:05:25', '2022-01-25 11:05:25'),
(34, 11, 'Redeemed Earnings', 0, 500, 500, '2022-01-27 06:23:58', 'Redeem', '2022-01-27 00:53:58', '2022-01-27 00:53:58'),
(35, 11, 'Redeemed Earnings', 0, 500, 0, '2022-01-27 06:25:55', 'Redeem', '2022-01-27 00:55:55', '2022-01-27 00:55:55'),
(36, 11, 'Cash Back Earnings', 70, 0, 70, '2022-01-27 07:08:55', 'Cashback', '2022-01-27 01:38:55', '2022-01-27 01:38:55'),
(37, 11, 'Cash Back Earnings', 140, 0, 210, '2022-01-27 07:14:37', 'Cashback', '2022-01-27 01:44:37', '2022-01-27 01:44:37'),
(38, 11, 'Cash Back Earnings', 140, 0, 350, '2022-01-27 07:19:09', 'Cashback', '2022-01-27 01:49:09', '2022-01-27 01:49:09'),
(39, 11, 'Cash Back Earnings', 140, 0, 490, '2022-01-27 07:20:47', 'Cashback', '2022-01-27 01:50:47', '2022-01-27 01:50:47'),
(40, 11, 'Cash Back Earnings', 140, 0, 630, '2022-01-27 08:35:52', 'Cashback', '2022-01-27 03:05:52', '2022-01-27 03:05:52'),
(41, 11, 'Cash Back Earnings', 70, 0, 700, '2022-01-27 08:46:25', 'Cashback', '2022-01-27 03:16:25', '2022-01-27 03:16:25'),
(42, 11, 'Cash Back Earnings', 70, 0, 770, '2022-01-27 08:46:28', 'Cashback', '2022-01-27 03:16:28', '2022-01-27 03:16:28'),
(43, 11, 'Cash Back Earnings', 70, 0, 840, '2022-01-27 08:46:29', 'Cashback', '2022-01-27 03:16:29', '2022-01-27 03:16:29'),
(44, 11, 'Cash Back Earnings', 70, 0, 910, '2022-01-27 08:46:30', 'Cashback', '2022-01-27 03:16:30', '2022-01-27 03:16:30'),
(45, 11, 'Cash Back Earnings', 140, 0, 1050, '2022-01-27 09:21:19', 'Cashback', '2022-01-27 03:51:19', '2022-01-27 03:51:19'),
(46, 11, 'Cash Back Earnings', 140, 0, 1190, '2022-01-27 09:21:33', 'Cashback', '2022-01-27 03:51:33', '2022-01-27 03:51:33'),
(47, 11, 'Cash Back Earnings', 140, 0, 1330, '2022-01-27 09:43:53', 'Cashback', '2022-01-27 04:13:53', '2022-01-27 04:13:53'),
(48, 11, 'Cash Back Earnings', 140, 0, 1470, '2022-01-27 09:51:59', 'Cashback', '2022-01-27 04:21:59', '2022-01-27 04:21:59'),
(49, 11, 'Cash Back Earnings', 140, 0, 1610, '2022-01-27 09:52:00', 'Cashback', '2022-01-27 04:22:00', '2022-01-27 04:22:00'),
(50, 11, 'Cash Back Earnings', 140, 0, 1750, '2022-01-27 09:58:41', 'Cashback', '2022-01-27 04:28:41', '2022-01-27 04:28:41'),
(51, 11, 'Cash Back Earnings', 14000, 0, 15750, '2022-01-27 11:05:20', 'Cashback', '2022-01-27 05:35:20', '2022-01-27 05:35:20'),
(52, 11, 'Cash Back Earnings', 140, 0, 15890, '2022-01-27 11:16:59', 'Cashback', '2022-01-27 05:46:59', '2022-01-27 05:46:59'),
(53, 11, 'Cash Back Earnings', 140, 0, 16030, '2022-01-27 11:17:02', 'Cashback', '2022-01-27 05:47:02', '2022-01-27 05:47:02'),
(54, 11, 'Cash Back Earnings', 140, 0, 16170, '2022-01-27 11:40:48', 'Cashback', '2022-01-27 06:10:48', '2022-01-27 06:10:48'),
(55, 11, 'Cash Back Earnings', 2000, 0, 18170, '2022-01-27 11:46:52', 'Cashback', '2022-01-27 06:16:52', '2022-01-27 06:16:52'),
(56, 11, 'Cash Back Earnings', 14000, 0, 32170, '2022-01-27 11:46:55', 'Cashback', '2022-01-27 06:16:55', '2022-01-27 06:16:55'),
(57, 11, 'Cash Back Earnings', 2000, 0, 34170, '2022-01-27 12:07:50', 'Cashback', '2022-01-27 06:37:50', '2022-01-27 06:37:50'),
(58, 11, 'Cash Back Earnings', 2000, 0, 36170, '2022-01-27 12:07:53', 'Cashback', '2022-01-27 06:37:53', '2022-01-27 06:37:53'),
(59, 11, 'Cash Back Earnings', 2000, 0, 38170, '2022-01-27 12:09:19', 'Cashback', '2022-01-27 06:39:19', '2022-01-27 06:39:19'),
(60, 11, 'Cash Back Earnings', 2000, 0, 40170, '2022-01-27 12:09:20', 'Cashback', '2022-01-27 06:39:20', '2022-01-27 06:39:20'),
(61, 11, 'Cash Back Earnings', 140, 0, 40310, '2022-01-27 12:47:22', 'Cashback', '2022-01-27 07:17:22', '2022-01-27 07:17:22'),
(62, 12, 'Bonus Earnings', 1000, 0, 1000, '2023-10-20 10:47:54', 'Bonus', '2023-10-20 05:17:54', '2023-10-20 05:17:54'),
(63, 13, 'Bonus Earnings', 1000, 0, 1000, '2023-10-20 12:40:48', 'Bonus', '2023-10-20 07:10:48', '2023-10-20 07:10:48'),
(64, 14, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 11:10:31', 'Bonus', '2023-10-23 05:40:31', '2023-10-23 05:40:31'),
(65, 15, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 12:15:08', 'Bonus', '2023-10-23 06:45:08', '2023-10-23 06:45:08'),
(66, 16, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 12:16:11', 'Bonus', '2023-10-23 06:46:11', '2023-10-23 06:46:11'),
(67, 17, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 13:56:16', 'Bonus', '2023-10-23 08:26:16', '2023-10-23 08:26:16'),
(68, 18, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 13:59:57', 'Bonus', '2023-10-23 08:29:57', '2023-10-23 08:29:57'),
(69, 19, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 15:14:46', 'Bonus', '2023-10-23 09:44:46', '2023-10-23 09:44:46'),
(70, 20, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 15:43:59', 'Bonus', '2023-10-23 10:13:59', '2023-10-23 10:13:59'),
(71, 21, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 16:00:59', 'Bonus', '2023-10-23 10:30:59', '2023-10-23 10:30:59'),
(72, 22, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 16:11:38', 'Bonus', '2023-10-23 10:41:38', '2023-10-23 10:41:38'),
(73, 23, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 04:47:49', 'Bonus', '2023-10-23 23:17:49', '2023-10-23 23:17:49'),
(74, 24, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 07:02:56', 'Bonus', '2023-10-24 01:32:56', '2023-10-24 01:32:56'),
(75, 25, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 07:25:28', 'Bonus', '2023-10-24 01:55:28', '2023-10-24 01:55:28'),
(76, 26, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 14:24:15', 'Bonus', '2023-10-24 08:54:15', '2023-10-24 08:54:15'),
(77, 27, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 14:54:55', 'Bonus', '2023-10-24 09:24:55', '2023-10-24 09:24:55'),
(78, 28, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 15:18:06', 'Bonus', '2023-10-24 09:48:06', '2023-10-24 09:48:06'),
(79, 29, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 15:35:28', 'Bonus', '2023-10-24 10:05:28', '2023-10-24 10:05:28'),
(80, 30, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 15:51:40', 'Bonus', '2023-10-24 10:21:40', '2023-10-24 10:21:40'),
(81, 31, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 16:07:27', 'Bonus', '2023-10-24 10:37:27', '2023-10-24 10:37:27'),
(82, 32, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 04:36:24', 'Bonus', '2023-10-24 23:06:24', '2023-10-24 23:06:24'),
(83, 33, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 05:07:18', 'Bonus', '2023-10-24 23:37:18', '2023-10-24 23:37:18'),
(84, 34, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 06:59:36', 'Bonus', '2023-10-25 01:29:36', '2023-10-25 01:29:36'),
(85, 35, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 07:24:27', 'Bonus', '2023-10-25 01:54:27', '2023-10-25 01:54:27'),
(86, 36, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 08:39:11', 'Bonus', '2023-10-25 03:09:11', '2023-10-25 03:09:11'),
(87, 37, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 08:43:27', 'Bonus', '2023-10-25 03:13:27', '2023-10-25 03:13:27'),
(88, 38, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 09:02:11', 'Bonus', '2023-10-25 03:32:11', '2023-10-25 03:32:11'),
(89, 39, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 11:38:15', 'Bonus', '2023-10-25 06:08:15', '2023-10-25 06:08:15'),
(90, 40, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 07:44:23', 'Bonus', '2023-10-26 02:14:23', '2023-10-26 02:14:23'),
(91, 41, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 10:22:00', 'Bonus', '2023-10-26 04:52:00', '2023-10-26 04:52:00'),
(92, 42, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 10:52:36', 'Bonus', '2023-10-26 05:22:36', '2023-10-26 05:22:36'),
(93, 43, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 11:22:17', 'Bonus', '2023-10-26 05:52:17', '2023-10-26 05:52:17'),
(94, 44, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 11:47:18', 'Bonus', '2023-10-26 06:17:18', '2023-10-26 06:17:18'),
(95, 45, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 11:48:28', 'Bonus', '2023-10-26 06:18:28', '2023-10-26 06:18:28'),
(96, 46, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:01:35', 'Bonus', '2023-10-26 06:31:35', '2023-10-26 06:31:35'),
(97, 47, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:31:16', 'Bonus', '2023-10-26 07:01:16', '2023-10-26 07:01:16'),
(98, 48, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:42:51', 'Bonus', '2023-10-26 07:12:51', '2023-10-26 07:12:51'),
(99, 49, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:47:18', 'Bonus', '2023-10-26 07:17:18', '2023-10-26 07:17:18'),
(100, 50, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:48:47', 'Bonus', '2023-10-26 07:18:47', '2023-10-26 07:18:47'),
(101, 51, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:54:59', 'Bonus', '2023-10-26 07:24:59', '2023-10-26 07:24:59'),
(102, 52, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 14:01:10', 'Bonus', '2023-10-26 08:31:10', '2023-10-26 08:31:10'),
(103, 53, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 04:45:44', 'Bonus', '2023-10-26 23:15:44', '2023-10-26 23:15:44'),
(104, 54, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 06:39:40', 'Bonus', '2023-10-27 01:09:40', '2023-10-27 01:09:40'),
(105, 55, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 07:17:24', 'Bonus', '2023-10-27 01:47:24', '2023-10-27 01:47:24'),
(106, 56, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:30:53', 'Bonus', '2023-10-27 03:00:53', '2023-10-27 03:00:53'),
(107, 57, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:34:35', 'Bonus', '2023-10-27 03:04:35', '2023-10-27 03:04:35'),
(108, 58, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:38:02', 'Bonus', '2023-10-27 03:08:02', '2023-10-27 03:08:02'),
(109, 59, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:40:54', 'Bonus', '2023-10-27 03:10:54', '2023-10-27 03:10:54'),
(110, 60, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:42:20', 'Bonus', '2023-10-27 03:12:20', '2023-10-27 03:12:20'),
(111, 61, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:49:02', 'Bonus', '2023-10-27 03:19:02', '2023-10-27 03:19:02'),
(112, 62, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 09:00:11', 'Bonus', '2023-10-27 03:30:11', '2023-10-27 03:30:11'),
(113, 63, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 09:07:43', 'Bonus', '2023-10-27 03:37:43', '2023-10-27 03:37:43'),
(114, 64, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 12:44:37', 'Bonus', '2023-10-27 07:14:37', '2023-10-27 07:14:37'),
(115, 65, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 12:47:35', 'Bonus', '2023-10-27 07:17:35', '2023-10-27 07:17:35'),
(116, 66, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 13:02:31', 'Bonus', '2023-10-27 07:32:31', '2023-10-27 07:32:31'),
(117, 67, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 13:09:36', 'Bonus', '2023-10-27 07:39:36', '2023-10-27 07:39:36'),
(118, 68, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 13:54:02', 'Bonus', '2023-10-27 08:24:02', '2023-10-27 08:24:02'),
(119, 69, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:07:05', 'Bonus', '2023-10-27 08:37:05', '2023-10-27 08:37:05'),
(120, 70, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:07:52', 'Bonus', '2023-10-27 08:37:52', '2023-10-27 08:37:52'),
(121, 71, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:16:48', 'Bonus', '2023-10-27 08:46:48', '2023-10-27 08:46:48'),
(122, 72, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:50:30', 'Bonus', '2023-10-27 09:20:30', '2023-10-27 09:20:30'),
(123, 73, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 15:30:14', 'Bonus', '2023-10-27 10:00:14', '2023-10-27 10:00:14'),
(124, 74, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 15:42:49', 'Bonus', '2023-10-27 10:12:49', '2023-10-27 10:12:49'),
(125, 75, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 16:09:55', 'Bonus', '2023-10-27 10:39:55', '2023-10-27 10:39:55'),
(126, 76, 'Bonus Earnings', 1000, 0, 1000, '2023-10-30 05:55:18', 'Bonus', '2023-10-30 00:25:18', '2023-10-30 00:25:18'),
(127, 77, 'Bonus Earnings', 1000, 0, 1000, '2023-12-15 08:42:26', 'Bonus', '2023-12-15 03:12:26', '2023-12-15 03:12:26'),
(128, 78, 'Bonus Earnings', 1000, 0, 1000, '2023-12-18 12:03:08', 'Bonus', '2023-12-18 06:33:08', '2023-12-18 06:33:08'),
(129, 79, 'Bonus Earnings', 1000, 0, 1000, '2023-12-20 08:26:28', 'Bonus', '2023-12-20 02:56:28', '2023-12-20 02:56:28'),
(130, 80, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 06:50:37', 'Bonus', '2023-12-21 01:20:37', '2023-12-21 01:20:37'),
(131, 81, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 08:32:33', 'Bonus', '2023-12-21 03:02:33', '2023-12-21 03:02:33'),
(132, 82, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 09:04:09', 'Bonus', '2023-12-21 03:34:09', '2023-12-21 03:34:09'),
(133, 83, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 12:18:15', 'Bonus', '2023-12-21 06:48:15', '2023-12-21 06:48:15'),
(134, 84, 'Bonus Earnings', 1000, 0, 1000, '2023-12-28 05:37:06', 'Bonus', '2023-12-28 00:07:06', '2023-12-28 00:07:06'),
(135, 85, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 07:29:27', 'Bonus', '2023-12-29 01:59:27', '2023-12-29 01:59:27'),
(136, 86, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 09:51:46', 'Bonus', '2023-12-29 04:21:46', '2023-12-29 04:21:46'),
(137, 87, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 11:35:38', 'Bonus', '2023-12-29 06:05:38', '2023-12-29 06:05:38'),
(138, 88, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 12:54:22', 'Bonus', '2023-12-29 07:24:22', '2023-12-29 07:24:22'),
(139, 89, 'Bonus Earnings', 1000, 0, 1000, '2024-01-02 07:30:30', 'Bonus', '2024-01-02 02:00:30', '2024-01-02 02:00:30'),
(140, 90, 'Bonus Earnings', 1000, 0, 1000, '2024-01-02 09:49:51', 'Bonus', '2024-01-02 04:19:51', '2024-01-02 04:19:51'),
(141, 91, 'Bonus Earnings', 1000, 0, 1000, '2024-01-02 11:24:07', 'Bonus', '2024-01-02 05:54:07', '2024-01-02 05:54:07'),
(142, 92, 'Bonus Earnings', 1000, 0, 1000, '2024-01-04 07:44:52', 'Bonus', '2024-01-04 02:14:52', '2024-01-04 02:14:52'),
(143, 93, 'Bonus Earnings', 1000, 0, 1000, '2024-01-04 14:14:14', 'Bonus', '2024-01-04 08:44:14', '2024-01-04 08:44:14'),
(144, 94, 'Bonus Earnings', 1000, 0, 1000, '2024-01-05 04:39:11', 'Bonus', '2024-01-04 23:09:11', '2024-01-04 23:09:11'),
(145, 95, 'Bonus Earnings', 1000, 0, 1000, '2024-01-05 04:54:10', 'Bonus', '2024-01-04 23:24:10', '2024-01-04 23:24:10'),
(146, 96, 'Bonus Earnings', 1000, 0, 1000, '2024-01-05 07:21:10', 'Bonus', '2024-01-05 01:51:10', '2024-01-05 01:51:10'),
(147, 97, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 05:08:08', 'Bonus', '2024-01-07 23:38:08', '2024-01-07 23:38:08'),
(148, 98, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 05:59:06', 'Bonus', '2024-01-08 00:29:06', '2024-01-08 00:29:06'),
(149, 99, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 07:07:11', 'Bonus', '2024-01-08 01:37:11', '2024-01-08 01:37:11'),
(150, 100, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 08:10:34', 'Bonus', '2024-01-08 02:40:34', '2024-01-08 02:40:34'),
(151, 101, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 12:59:31', 'Bonus', '2024-01-09 07:29:31', '2024-01-09 07:29:31'),
(152, 102, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 13:26:18', 'Bonus', '2024-01-09 07:56:18', '2024-01-09 07:56:18'),
(153, 103, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 13:29:48', 'Bonus', '2024-01-09 07:59:48', '2024-01-09 07:59:48'),
(154, 104, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 13:43:25', 'Bonus', '2024-01-09 08:13:25', '2024-01-09 08:13:25'),
(155, 105, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 14:26:55', 'Bonus', '2024-01-09 08:56:55', '2024-01-09 08:56:55'),
(156, 106, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 15:16:27', 'Bonus', '2024-01-09 09:46:27', '2024-01-09 09:46:27'),
(157, 107, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 15:28:06', 'Bonus', '2024-01-09 09:58:06', '2024-01-09 09:58:06'),
(158, 108, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 05:30:41', 'Bonus', '2024-01-10 00:00:41', '2024-01-10 00:00:41'),
(159, 109, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 05:44:53', 'Bonus', '2024-01-10 00:14:53', '2024-01-10 00:14:53'),
(160, 110, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 06:55:42', 'Bonus', '2024-01-10 01:25:42', '2024-01-10 01:25:42'),
(161, 111, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 07:02:10', 'Bonus', '2024-01-10 01:32:10', '2024-01-10 01:32:10'),
(162, 112, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 07:05:35', 'Bonus', '2024-01-10 01:35:35', '2024-01-10 01:35:35'),
(163, 113, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 07:57:24', 'Bonus', '2024-01-10 02:27:24', '2024-01-10 02:27:24'),
(164, 114, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 09:15:36', 'Bonus', '2024-01-10 03:45:36', '2024-01-10 03:45:36'),
(165, 115, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 11:12:53', 'Bonus', '2024-01-10 05:42:53', '2024-01-10 05:42:53'),
(166, 116, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 13:09:33', 'Bonus', '2024-01-10 07:39:33', '2024-01-10 07:39:33'),
(167, 117, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 13:18:26', 'Bonus', '2024-01-10 07:48:26', '2024-01-10 07:48:26'),
(168, 118, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 14:11:31', 'Bonus', '2024-01-10 08:41:31', '2024-01-10 08:41:31'),
(169, 119, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 05:02:21', 'Bonus', '2024-01-10 23:32:21', '2024-01-10 23:32:21'),
(170, 120, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 05:14:22', 'Bonus', '2024-01-10 23:44:22', '2024-01-10 23:44:22'),
(171, 121, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 13:41:58', 'Bonus', '2024-01-11 08:11:58', '2024-01-11 08:11:58'),
(172, 122, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 14:08:17', 'Bonus', '2024-01-11 08:38:17', '2024-01-11 08:38:17'),
(173, 123, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 14:10:53', 'Bonus', '2024-01-11 08:40:53', '2024-01-11 08:40:53'),
(174, 124, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 15:35:01', 'Bonus', '2024-01-11 10:05:01', '2024-01-11 10:05:01'),
(175, 125, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 04:19:08', 'Bonus', '2024-01-11 22:49:08', '2024-01-11 22:49:08'),
(176, 126, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 05:36:26', 'Bonus', '2024-01-12 00:06:26', '2024-01-12 00:06:26'),
(177, 127, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 05:59:26', 'Bonus', '2024-01-12 00:29:26', '2024-01-12 00:29:26'),
(178, 128, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 07:50:55', 'Bonus', '2024-01-12 02:20:55', '2024-01-12 02:20:55'),
(179, 129, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 08:43:31', 'Bonus', '2024-01-12 03:13:31', '2024-01-12 03:13:31'),
(180, 130, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 10:40:24', 'Bonus', '2024-01-12 05:10:24', '2024-01-12 05:10:24'),
(181, 131, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 10:54:27', 'Bonus', '2024-01-12 05:24:27', '2024-01-12 05:24:27'),
(182, 132, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 11:31:27', 'Bonus', '2024-01-12 06:01:27', '2024-01-12 06:01:27'),
(183, 133, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 11:32:51', 'Bonus', '2024-01-12 06:02:51', '2024-01-12 06:02:51'),
(184, 134, 'Bonus Earnings', 1000, 0, 1000, '2024-01-15 10:00:46', 'Bonus', '2024-01-15 04:30:46', '2024-01-15 04:30:46'),
(185, 135, 'Bonus Earnings', 1000, 0, 1000, '2024-01-15 11:42:19', 'Bonus', '2024-01-15 06:12:19', '2024-01-15 06:12:19'),
(186, 136, 'Bonus Earnings', 1000, 0, 1000, '2024-01-15 12:48:54', 'Bonus', '2024-01-15 07:18:54', '2024-01-15 07:18:54'),
(187, 137, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:01:04', 'Bonus', '2024-01-15 23:31:04', '2024-01-15 23:31:04'),
(188, 138, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:14:22', 'Bonus', '2024-01-15 23:44:22', '2024-01-15 23:44:22'),
(189, 139, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:16:27', 'Bonus', '2024-01-15 23:46:27', '2024-01-15 23:46:27'),
(190, 140, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:21:19', 'Bonus', '2024-01-15 23:51:19', '2024-01-15 23:51:19'),
(191, 141, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:21:37', 'Bonus', '2024-01-15 23:51:37', '2024-01-15 23:51:37'),
(192, 142, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:24:23', 'Bonus', '2024-01-15 23:54:23', '2024-01-15 23:54:23'),
(193, 143, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:34:32', 'Bonus', '2024-01-16 00:04:32', '2024-01-16 00:04:32'),
(194, 144, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:37:55', 'Bonus', '2024-01-16 00:07:55', '2024-01-16 00:07:55'),
(195, 145, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:44:04', 'Bonus', '2024-01-16 00:14:04', '2024-01-16 00:14:04'),
(196, 146, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:46:05', 'Bonus', '2024-01-16 00:16:05', '2024-01-16 00:16:05'),
(197, 147, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 05:48:57', 'Bonus', '2024-01-16 00:18:57', '2024-01-16 00:18:57'),
(198, 148, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 06:31:57', 'Bonus', '2024-01-16 01:01:57', '2024-01-16 01:01:57'),
(199, 149, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 06:44:59', 'Bonus', '2024-01-16 01:14:59', '2024-01-16 01:14:59'),
(200, 150, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 07:13:34', 'Bonus', '2024-01-16 01:43:34', '2024-01-16 01:43:34'),
(201, 151, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 08:19:36', 'Bonus', '2024-01-16 02:49:36', '2024-01-16 02:49:36'),
(202, 152, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 06:58:56', 'Bonus', '2024-01-18 01:28:56', '2024-01-18 01:28:56'),
(203, 153, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 06:59:45', 'Bonus', '2024-01-18 01:29:45', '2024-01-18 01:29:45'),
(204, 154, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 07:07:16', 'Bonus', '2024-01-18 01:37:16', '2024-01-18 01:37:16'),
(206, 156, 'Bonus Earnings', 1000, 0, 1000, '2024-03-04 05:17:42', 'Bonus', '2024-03-03 23:47:42', '2024-03-03 23:47:42'),
(208, 158, 'Bonus Earnings', 1000, 0, 1000, '2024-03-07 06:58:54', 'Bonus', '2024-03-07 01:28:54', '2024-03-07 01:28:54'),
(210, 160, 'Bonus Earnings', 1000, 0, 1000, '2024-03-07 08:12:05', 'Bonus', '2024-03-07 02:42:05', '2024-03-07 02:42:05'),
(211, 161, 'Bonus Earnings', 1000, 0, 1000, '2024-03-07 10:11:31', 'Bonus', '2024-03-07 04:41:31', '2024-03-07 04:41:31'),
(212, 162, 'Bonus Earnings', 1000, 0, 1000, '2024-03-07 10:51:32', 'Bonus', '2024-03-07 05:21:32', '2024-03-07 05:21:32'),
(213, 163, 'Bonus Earnings', 1000, 0, 1000, '2024-03-07 11:15:06', 'Bonus', '2024-03-07 05:45:06', '2024-03-07 05:45:06'),
(214, 164, 'Bonus Earnings', 1000, 0, 1000, '2024-03-08 05:13:33', 'Bonus', '2024-03-07 23:43:33', '2024-03-07 23:43:33'),
(215, 165, 'Bonus Earnings', 1000, 0, 1000, '2024-03-08 06:08:17', 'Bonus', '2024-03-08 00:38:17', '2024-03-08 00:38:17'),
(216, 166, 'Bonus Earnings', 1000, 0, 1000, '2024-03-11 05:14:58', 'Bonus', '2024-03-10 23:44:58', '2024-03-10 23:44:58'),
(217, 167, 'Bonus Earnings', 1000, 0, 1000, '2024-03-11 06:16:12', 'Bonus', '2024-03-11 00:46:12', '2024-03-11 00:46:12'),
(218, 168, 'Bonus Earnings', 1000, 0, 1000, '2024-03-12 08:12:26', 'Bonus', '2024-03-12 02:42:26', '2024-03-12 02:42:26'),
(219, 169, 'Bonus Earnings', 1000, 0, 1000, '2024-03-12 08:16:23', 'Bonus', '2024-03-12 02:46:23', '2024-03-12 02:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `venue_user_id` int UNSIGNED DEFAULT NULL,
  `venu_id` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_and_time` datetime NOT NULL,
  `cashback_earned` double NOT NULL DEFAULT '0',
  `cashback_percentage` double NOT NULL DEFAULT '0',
  `redeemed_amount` double NOT NULL DEFAULT '0',
  `total_bill_amount` double NOT NULL DEFAULT '0',
  `pay_bill_amount` double NOT NULL DEFAULT '0',
  `check_amount_pos` double DEFAULT '0',
  `is_cross_verify` int NOT NULL DEFAULT '0',
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_product_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin'
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
(6, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 19:58:55', 20, 20, 0, 100, 100, 100, 1, 'he', NULL, 'Admin', '2021-11-12 14:28:55', '2022-01-19 05:22:12', NULL, 'Nadeer', 'Admin'),
(7, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 20:16:12', 20, 20, 0, 100, 100, 100, 1, 'approve', NULL, 'Admin', '2021-11-12 14:46:12', '2022-01-19 05:22:11', NULL, 'Nadeer', 'Admin'),
(8, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 20:17:47', 20, 20, 0, 100, 100, 100, 1, 'kamalkhan', '1', 'Admin', '2021-11-12 14:47:47', '2022-01-19 05:22:08', NULL, 'Nadeer', 'Admin'),
(9, 9, 5, 7, 'Cash Back Earnings', '2021-11-12 20:19:03', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2021-11-12 14:49:03', '2021-11-12 14:49:22', NULL, 'Admin', 'Admin'),
(10, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:19:03', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 14:49:03', '2022-01-25 14:49:03', NULL, 'Admin', 'Admin'),
(11, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(12, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(13, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(14, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(15, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(16, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(17, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:23:57', 70, 10, 500, 700, 200, 700, 1, 'testing_purpose', '[]', 'Admin', '2022-01-27 00:53:57', '2022-01-27 03:16:30', NULL, 'Nadeer', 'Admin'),
(18, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:25:55', 70, 10, 500, 700, 200, 700, 1, 'testing_purpose2', '[]', 'Admin', '2022-01-27 00:55:55', '2022-01-27 03:16:29', NULL, 'Nadeer', 'Admin'),
(19, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:28:58', 70, 10, 0, 700, 700, 700, 1, 'testing_purpose02', '[]', 'Admin', '2022-01-27 00:58:58', '2022-01-27 03:16:28', NULL, 'Nadeer', 'Admin'),
(20, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:32:14', 70, 10, 0, 700, 700, 700, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:02:14', '2022-01-27 03:16:25', NULL, 'Nadeer', 'Admin'),
(21, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:08:55', 70, 10, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:38:55', '2022-01-27 01:38:55', NULL, 'Admin', 'Admin'),
(22, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:14:37', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:44:37', '2022-01-27 01:44:37', NULL, 'Admin', 'Admin'),
(23, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:19:09', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:49:09', '2022-01-27 01:49:09', NULL, 'Admin', 'Admin'),
(24, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:20:47', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:50:47', '2022-01-27 01:50:47', NULL, 'Admin', 'Admin'),
(25, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 08:35:52', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 03:05:52', '2022-01-27 03:05:52', NULL, 'Admin', 'Admin'),
(26, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 09:21:19', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 03:51:19', '2022-01-27 03:51:19', NULL, 'Admin', 'Admin'),
(27, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 09:21:33', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 03:51:33', '2022-01-27 03:51:33', NULL, 'Admin', 'Admin'),
(28, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:21:56', 140, 20, 0, 700, 700, 700, 1, 'verify', '[]', 'Admin', '2022-01-27 03:51:56', '2022-01-27 04:13:53', NULL, 'Nadeer', 'Admin'),
(29, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:48:13', 140, 20, 0, 700, 700, 700, 1, 'verify2', '[]', 'Admin', '2022-01-27 04:18:13', '2022-01-27 04:22:00', NULL, 'Nadeer', 'Admin'),
(30, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:48:19', 140, 20, 0, 700, 700, 700, 1, 'verify3', '[]', 'Admin', '2022-01-27 04:18:19', '2022-01-27 04:21:59', NULL, 'Nadeer', 'Admin'),
(31, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:48:26', 140, 20, 0, 700, 700, 700, 1, 'verify4', '[]', 'Admin', '2022-01-27 04:18:26', '2022-01-27 04:28:41', NULL, 'Nadeer', 'Admin'),
(32, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:59:09', 140, 20, 0, 700, 700, 700, 1, 'verify5', '[]', 'Admin', '2022-01-27 04:29:09', '2022-01-27 05:47:02', NULL, 'Nadeer', 'Admin'),
(33, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:59:16', 140, 20, 0, 700, 700, 700, 1, 'verify6', '[]', 'Admin', '2022-01-27 04:29:16', '2022-01-27 05:46:59', NULL, 'Nadeer', 'Admin'),
(34, 11, 5, 1, 'Cash Back Earnings', '2022-01-26 23:01:53', 140, 20, 0, 700, 700, 700, 1, 'verify7', '[]', 'Admin', '2022-01-27 05:31:53', '2022-01-27 06:10:48', NULL, 'Nadeer', 'Admin'),
(35, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:04:24', 14000, 20, 0, 70000, 70000, 70000, 1, 'verify8', '[]', 'Admin', '2022-01-27 05:34:24', '2022-01-27 05:35:20', NULL, 'Nadeer', 'Admin'),
(36, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:42:45', 14000, 20, 0, 70000, 70000, 70000, 1, 'verify9', '[]', 'Admin', '2022-01-27 06:12:45', '2022-01-27 06:16:55', NULL, 'Nadeer', 'Admin'),
(37, 11, 5, 1, 'Cash Back Earnings', '2022-01-26 11:42:52', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify10', '[]', 'Admin', '2022-01-27 06:12:52', '2022-01-27 06:16:52', NULL, 'Nadeer', 'Admin'),
(38, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:47:22', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify11', '[]', 'Admin', '2022-01-27 06:17:22', '2022-01-27 06:37:53', NULL, 'Nadeer', 'Admin'),
(39, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:47:29', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify12', '[]', 'Admin', '2022-01-27 06:17:29', '2022-01-27 06:37:50', NULL, 'Nadeer', 'Admin'),
(40, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:08:12', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify13', '[]', 'Admin', '2022-01-27 06:38:12', '2022-01-27 06:39:20', NULL, 'Nadeer', 'Admin'),
(41, 11, 5, 1, 'Cash Back Earnings', '2022-01-26 23:08:20', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify14', '[]', 'Admin', '2022-01-27 06:38:20', '2022-01-27 06:39:18', NULL, 'Nadeer', 'Admin'),
(42, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 12:47:22', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 07:17:22', '2022-01-27 07:17:22', NULL, 'Admin', 'Admin'),
(43, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:47:43', 2000, 20, 0, 10000, 10000, 0, 0, 'verify15', '[]', 'Admin', '2022-01-27 07:17:43', '2022-01-27 07:17:43', NULL, 'Admin', 'Admin'),
(44, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:55:52', 2000, 20, 0, 10000, 10000, 0, 0, 'verify16', '[]', 'Admin', '2022-01-27 07:25:52', '2022-01-27 07:25:52', NULL, 'Admin', 'Admin'),
(45, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:56:25', 2000, 20, 0, 10000, 10000, 0, 0, 'verify17', '[]', 'Admin', '2022-01-27 07:26:25', '2022-01-27 07:26:25', NULL, 'Admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_friends`
--
ALTER TABLE `add_friends`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
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
-- Indexes for table `user_venue_favorites`
--
ALTER TABLE `user_venue_favorites`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `add_friends`
--
ALTER TABLE `add_friends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `application_datas`
--
ALTER TABLE `application_datas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `application_images`
--
ALTER TABLE `application_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assign_badges`
--
ALTER TABLE `assign_badges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `assign_user_venues`
--
ALTER TABLE `assign_user_venues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cashbacks`
--
ALTER TABLE `cashbacks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2879;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login_poses`
--
ALTER TABLE `login_poses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_requests`
--
ALTER TABLE `login_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `noti_records`
--
ALTER TABLE `noti_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `offer_settings`
--
ALTER TABLE `offer_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `user_venue_favorites`
--
ALTER TABLE `user_venue_favorites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
