-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2021 at 05:13 PM
-- Server version: 5.7.36-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-24+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_11_november`
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
(1, 'Nadeer', 'adminn@yopmail.com', '$2y$10$01b9.qb3ioJYe3LZK6Yamey.JP5XELdGOBNTGjYT.CWJjMLMeTAyW', 'Active', 'Super Admin', '6BCzVDn1dAr1ISmiX54AyGlv10S8pKRraii61BO80T6GC30Wyxd6OzKdqVAPDofB', '2021-11-10 18:30:00', '2021-11-16 11:43:26', 'Nadeer', 'Nadeer'),
(2, 'admin2', NULL, '$2y$10$6bkQTrg3VrqhhG76nrHF..EGvus37wgcLK2qop4cV9kkcErYaiSMm', 'Active', 'Admin', 'rXp6eEE4DZJJzB8NPdxIvH7tTK5U1HQcDf0YUsgyojwx2aaRaja8dU1vQEWCzsIL', '2021-11-11 06:26:38', '2021-11-16 05:27:29', 'Nadeer', 'admin2'),
(3, 'admin3', NULL, '$2y$10$foJqLWzLh0vj8bkPvJkLbOPynDIPBtif6l9V.cn6tMScE5Lyvw2xe', 'Active', 'Marketing', 'J6vvhICCNIR24pRxpWbkbbrXvc8apaJ06ih4lRjmTucJgZvf8GGhhqBR1fJC', '2021-11-11 06:28:56', '2021-11-16 11:13:12', 'admin2', 'admin2'),
(4, 'kanhaiya', NULL, '$2y$10$S2ClRSThHO0X10on0SUBO.ga3Z1UgA/a9x7COjhh3jAQvgGAX6Dki', 'Active', 'Super Admin', 'T3Tl08cPzGgVVjSzzbVaA8rHmVhTzQl9jyXfLTPLeSxPhEK5yd0jKy0IZd2INf1H', '2021-11-12 13:54:05', '2021-11-15 05:33:16', 'Nadeer', 'admin2'),
(5, 'kamal', NULL, '$2y$10$C/e306XmnKmqWR1ke8NmQ.tjqFJA7SgDIkNWfB7PUWHsNQCV45ld.', 'Active', 'Staff', 'ba12PwD1P22v2y7PGPBITnS0ATycylUHAdyUfo4Ilts8vFRL2NinegfSztrW', '2021-11-12 14:21:08', '2021-11-15 06:08:54', 'kanhaiya', 'Nadeer'),
(6, 'harman', NULL, '$2y$10$ZYXDoqvkpci86UJOV/qZBu5U5Rr92nvB5KNLMSUea1TjhCOkRHVWK', 'Inactive', 'Admin', 'eKuOrD3D2eIT1w5Rqc64Z3woqswrn76YEVDNDoI3LJjxs3koBxbJ2WSYQUvN', '2021-11-16 06:47:14', '2021-11-16 06:51:05', 'Nadeer', 'Nadeer'),
(7, 'aman', NULL, '$2y$10$qP7HyAP5v3Qk2HmFKqzyOOUZzx25oCxeANmn8.Iv00Me6readkFsW', 'Active', 'Super Admin', 'VvsfajhRQcoSYvYVQIfLZX0g66EfcuvXruuT4RQCDckSyUaydBkt7TUWE7eV', '2021-11-16 07:56:20', '2021-11-16 07:58:27', 'Nadeer', 'Nadeer'),
(8, 'deepsh', NULL, '$2y$10$HbrMtP4Jak7EM7SPk1LdhOoubKH1iaMJzrG826GYgtflMzxwWJspe', 'Active', 'Super Admin', 'zZBoFtjRTkvozVztexplssbmUq2LwoFud55YdU0ftGG6Tbm4QIyeUdFfB7g1', '2021-11-16 08:08:09', '2021-11-16 08:18:11', 'Nadeer', 'Nadeer'),
(9, 'amit123', NULL, '$2y$10$5F2fRoUel9DK7gKF.lKEbOE0K/laJrUHjp5xCjvBj82xrBzt1F0pa', 'Active', 'Marketing', 'KADZGJExhT9Yu4ZS2vkGhmhW5FHdF7ihnDqwZq8OuD9qdchhRlkFGGTtIV2V', '2021-11-16 10:46:04', '2021-11-16 11:14:32', 'Nadeer', 'Nadeer');

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
(1, 1, NULL, 'Your Amount has been transaction successfully.3', NULL, NULL, NULL, 1, 0, 1, 'Transaction', '2021-10-11 11:04:04', '2021-11-16 10:54:14', NULL),
(2, 2, NULL, 'Your cashback has been successfully earned.2', NULL, NULL, NULL, 1, 1, 1, 'Cashback', '2021-10-11 11:05:06', '2021-11-16 08:17:01', NULL),
(3, 3, NULL, 'You have successfully earned bonus.', NULL, NULL, NULL, 1, 0, 1, 'Welcome Bonus', '2021-10-11 11:05:37', '2021-11-12 06:28:12', NULL),
(4, 4, NULL, 'This is a referral code bonus', NULL, NULL, NULL, 1, 1, 1, 'Referral Bonus', '2021-10-11 11:05:59', '2021-11-16 07:26:11', NULL),
(5, 5, NULL, 'updated event', NULL, NULL, NULL, 1, 0, 1, 'Event', '2021-10-11 11:08:01', '2021-11-16 10:56:10', NULL),
(6, 6, NULL, 'dummy', NULL, NULL, NULL, 1, 0, 1, 'Specific Customer', '2021-10-11 11:08:56', '2021-11-16 10:23:39', NULL),
(7, 7, 'Welcome to Capital Motion Loyalty 3', 'Hi welcome,\r\nYour registration has been done successfully and you will get bonus on your register.', '1116202112384597619358fd632da.png', 'png', '2 Cropped.png', 0, 0, 1, 'Welcome Email', '2021-10-11 11:11:56', '2021-11-16 08:15:36', NULL);

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
(1, 1, '11162021164258266193923a79bed.jpeg', '1116202113204630619362d606b03.mp4', '#0039f2', 'userPhotos-1624877002293-637.jpg', 'file_example_MP4_480_1_5MG.mp4', '2021-10-27 18:30:00', '2021-11-16 11:13:30', NULL);

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
(1, 1, '111620211643059061939241872b7.jpeg', 'userPhotos-1624877002293-637.jpg', 'Welcome Screen Image', 5, NULL, '2021-11-16 11:13:05', NULL),
(2, 1, '111620211611568561938af45ae15.jpeg', '1622019961133.jpg', 'Welcome Screen Image 2', 6, NULL, '2021-11-16 10:41:56', NULL),
(3, 1, '111620211612026461938afa822f6.jpeg', '1286d0868fea81b08b8379d9ba626829.jpg', 'Welcome Screen Image 3', 7, NULL, '2021-11-16 10:42:02', NULL),
(4, 1, '1116202116432168619392510cb70.jpeg', 'userPhotos-1624877002293-637.jpg', 'Welcome Screen Image 4', 8, NULL, '2021-11-16 11:13:21', NULL),
(5, 1, '111620211642419261939229cad38.jpeg', 'userPhotos-1624877002293-637.jpg', 'Offer Image', 3, '2021-11-11 05:35:36', '2021-11-16 11:12:41', NULL);

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
(1, 1, 'dev@yopmail.com', 'Contact Email', NULL, NULL, '2021-11-11 11:02:46', '2021-11-16 11:12:04'),
(4, 2, '8708869543', 'Contact Number', NULL, NULL, '2021-11-11 11:09:23', '2021-11-16 11:12:16'),
(6, 11, '<p>Hey user please use our app.</p>\n\n<p>www.yahoo.com</p>', 'About our loyalty program', NULL, NULL, '2021-11-11 11:09:54', '2021-11-16 11:09:06'),
(7, 12, '<blockquote>\n<h1>User please read all the FAQ</h1>\n</blockquote>', 'faq\'s', NULL, NULL, '2021-11-11 11:10:12', '2021-11-16 11:09:08'),
(8, 13, '<p><strong>Please read terms and conditions.</strong></p>', 'Terms & conditions', NULL, NULL, '2021-11-11 11:10:26', '2021-11-16 11:09:33'),
(9, 14, '<p><strong>Privacy policy of the app.</strong></p>', 'Privacy policy', NULL, NULL, '2021-11-11 11:10:28', '2021-11-16 11:09:51'),
(10, 15, '10', 'Unique venue invoice no', NULL, NULL, '2021-11-11 11:10:48', '2021-11-15 07:52:59'),
(11, 16, '200', 'Venue timeout', NULL, NULL, '2021-11-11 11:10:53', '2021-11-16 10:23:21'),
(12, 17, '300', 'Sms otp validity', 'Enabled', NULL, '2021-11-11 11:11:11', '2021-11-16 10:29:01');

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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '1', 1, 'Silver', 0, 100, '#df357c', 10, NULL, NULL, '2021-11-16 10:22:57'),
(2, '2', 1, 'Platinum', 700, 1500, '#ff0000', 20, '2021-10-15 10:46:53', '2021-10-08 09:13:51', '2021-10-15 10:46:53'),
(3, '3', 1, 'Gold', 1501, 2501, '#ff0000', 30, '2021-10-15 10:46:47', '2021-10-08 09:14:10', '2021-10-15 10:46:47'),
(4, '4', 1, 'Diamond', 2502, 3501, '#ff0000', 40, '2021-10-15 10:46:42', '2021-10-08 09:14:31', '2021-10-15 10:46:42'),
(5, '5', 1, 'Gold', 101, 500, '#2c26dd', 20, NULL, '2021-10-21 10:40:05', '2021-11-16 11:02:20'),
(6, '6', 1, 'Platinum', 501, 1000, '#9d1c1c', 0, NULL, '2021-11-16 08:07:02', '2021-11-16 08:53:04');

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
(1, 9, 10, 1, NULL, NULL, '2021-11-16 11:01:53');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assign_user_venues`
--
ALTER TABLE `assign_user_venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cashbacks`
--
ALTER TABLE `cashbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_poses`
--
ALTER TABLE `login_poses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_requests`
--
ALTER TABLE `login_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `noti_records`
--
ALTER TABLE `noti_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offer_settings`
--
ALTER TABLE `offer_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
