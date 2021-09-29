-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2021 at 03:38 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-10+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_20_september`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nadeer', 'adminn@yopmail.com', '$2y$10$MM0//hGlDn4uCg4rTNDiaudMWYEJZcY7wrLLvRu16miH5BtZB7pxa', 'qiy0p0SBUwCtOdoDrDStZi8IvUtB3obeRMBe8g51uXoKlZ8Ra5J9g4lD6GqzrsEZ', NULL, '2021-09-29 04:15:11');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_datas`
--

INSERT INTO `application_datas` (`id`, `admin_id`, `logo`, `video`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'logo.png', 'splashVideo.mp4', '#0B68AC', '2021-07-26 18:30:00', '2021-07-26 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_images`
--

CREATE TABLE `application_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_data_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_images`
--

INSERT INTO `application_images` (`id`, `application_data_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'application_4_images.png', NULL, NULL, NULL),
(2, 1, 'application_4_images.png', NULL, NULL, NULL),
(3, 1, 'application_4_images.png', NULL, NULL, NULL),
(4, 1, 'application_4_images.png', NULL, NULL, NULL);

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
(1, 2, 1, 'gjjf board and from the object library drag a textView to your view. Now in the text view if the tex', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Monday,Sunday', '2021-09-22', '2021-10-01', '15:03:00', '18:03:00', '2021-09-22 09:33:18', '2021-09-22 09:33:18', 'Admin', 'Admin', NULL),
(2, 1, 1, 'board and from the obje', 'Active', 'Wednesday', '2021-09-22', '2021-10-08', '15:06:00', '16:06:00', '2021-09-22 09:36:34', '2021-09-24 09:12:01', 'Admin', 'Admin', '2021-09-24 09:12:01'),
(3, 1, 2, 'board and from the object library drag a textView to your view. Now in the text view if the text is', 'Active', 'Tuesday,Wednesday', '2021-09-22', '2021-09-30', '15:07:00', '18:07:00', '2021-09-22 09:37:51', '2021-09-24 06:34:19', 'Admin', 'Admin', '2021-09-24 06:34:19'),
(4, 2, 2, 'board and from the object library drag a textView to your view. Now', 'Active', 'Tuesday', '2021-09-22', '2021-09-22', '17:25:00', '18:06:00', '2021-09-22 09:42:06', '2021-09-24 06:34:19', 'Admin', 'Admin', '2021-09-24 06:34:19'),
(5, 1, 5, 'board and from the obje', 'Active', 'Wednesday,Wednesday', '2021-09-22', '2021-10-08', '15:06:00', '16:06:00', '2021-09-24 09:11:05', '2021-09-24 09:12:01', 'Admin', 'Admin', '2021-09-24 09:12:01'),
(6, 1, 5, 'sfsdgsdg', 'Active', 'Monday,Sunday', '2021-09-24', '2021-09-25', '14:46:00', '18:46:00', '2021-09-24 09:17:33', '2021-09-24 09:35:03', 'Admin', 'Admin', '2021-09-24 09:35:03'),
(7, 1, 1, 'sfsdgsdg', 'Active', 'Monday,Sunday', '2021-09-24', '2021-09-25', '14:46:00', '18:46:00', '2021-09-24 09:25:09', '2021-09-24 09:35:35', 'Admin', 'Admin', '2021-09-24 09:35:35'),
(8, 1, 6, 'fsa', 'Active', 'Monday,Sunday', '2021-09-24', '2021-09-25', '14:56:00', '17:56:00', '2021-09-24 09:27:06', '2021-09-24 09:27:06', 'Admin', 'Admin', NULL),
(9, 1, 7, 'fsa', 'Active', 'Monday,Sunday', '2021-09-24', '2021-09-25', '14:56:00', '17:56:00', '2021-09-24 09:28:50', '2021-09-24 09:28:50', 'Admin', 'Admin', NULL),
(10, 1, 8, 'sdgsdg', 'Active', 'Tuesday,Monday', '2021-09-24', '2021-09-25', '15:00:00', '17:00:00', '2021-09-24 09:30:15', '2021-09-24 09:30:39', 'Admin', 'Admin', '2021-09-24 09:30:39');

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
(1, 1, 2, NULL, NULL, NULL),
(2, 2, 2, NULL, NULL, NULL),
(3, 1, 3, '2021-09-29 10:06:14', '2021-09-29 10:06:14', NULL),
(4, 2, 3, '2021-09-29 10:06:14', '2021-09-29 10:06:14', NULL),
(5, 1, 4, '2021-09-29 10:07:53', '2021-09-29 10:07:53', NULL),
(6, 2, 4, '2021-09-29 10:07:53', '2021-09-29 10:07:53', NULL);

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
(1, 1, 'badge1', '0922202115022183614af825f357f.jpeg', 'download (4).jpeg', 'Active', 'Admin', 'Admin', '2021-09-22 09:32:21', '2021-09-22 09:34:58', NULL),
(2, 1, 'bad', '0922202115071835614af94e0c62f.jpeg', 'download (3).jpeg', 'Active', 'Admin', 'Admin', '2021-09-22 09:37:18', '2021-09-24 06:34:19', '2021-09-24 06:34:19'),
(3, 1, 'qweqwe', '0924202111520734614d6e8f0e6c0.png', 'upload_icon.png', 'Active', 'Admin', 'Admin', '2021-09-24 06:03:56', '2021-09-24 06:33:35', '2021-09-24 06:33:35'),
(4, 1, 'as', '0924202111352046614d6aa0298ea.png', 'upload_icon.png', 'Active', 'Admin', 'Admin', '2021-09-24 06:05:20', '2021-09-24 06:33:06', '2021-09-24 06:33:06'),
(5, 1, 'asd', '0924202113030798614d7f33b3475.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'Active', 'Admin', 'Admin', '2021-09-24 07:33:07', '2021-09-24 07:33:07', NULL),
(6, 1, '111', '0924202114555266614d99a07300f.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'Active', 'Admin', 'Admin', '2021-09-24 09:25:52', '2021-09-24 09:25:52', NULL),
(7, 1, '22', '0924202114561527614d99b76695e.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'Active', 'Admin', 'Admin', '2021-09-24 09:26:15', '2021-09-24 09:26:15', NULL),
(8, 1, '333', '0924202114582181614d9a354a485.png', 'upload_icon.png', 'Active', 'Admin', 'Admin', '2021-09-24 09:28:21', '2021-09-24 09:28:21', NULL),
(9, 1, '444', '0924202114594665614d9a8a6c36d.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'Active', 'Admin', 'Admin', '2021-09-24 09:29:46', '2021-09-24 09:29:46', NULL);

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
(1, 1, 1, 1, 'asfasf', 'asfasfa', 'Monday,Friday', '2021-09-22', '2021-09-23', '17:40:00', '18:40:00', 'Active', '0922202117404942614b1d495d971.jpeg', 'world.topo.200407.3x5400x2700.jpg', '2021-09-22 12:10:49', '2021-09-22 12:10:49', NULL),
(2, 1, 1, 3, 'afasf', 'asfasf', 'Monday,Friday', '2021-09-22', '2021-09-24', '17:41:00', '18:41:00', 'Active', '0922202117414075614b1d7c5ab55.jpeg', 'world.topo.200407.3x5400x2700.jpg', '2021-09-22 12:11:40', '2021-09-22 12:11:40', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_requests`
--

INSERT INTO `login_requests` (`id`, `venue_user_id`, `venu_id`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'Nokia', '11:00:11:11:11:00', 'Authorized', '2021-09-24 17:14:49', '2021-09-24 11:44:49', '2021-09-24 11:47:17', NULL),
(2, 2, 2, 'Nokia', '11:00:11:11:11:00', 'Authorized', '2021-09-24 17:17:01', '2021-09-24 11:47:01', '2021-09-24 11:47:17', NULL);

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
(20, '2021_07_27_104038_create_application_datas_table', 5),
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
(48, '2021_09_24_104903_create_assign_user_venues_table', 17);

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
('0237d786ef7829f502ba30750a99d25185ad8e625859522ee231199854cec4463cc98efe8c1f3313', 1, 1, 'andrew', '[]', 1, '2021-09-22 03:55:45', '2021-09-22 03:55:45', '2022-09-22 09:25:45'),
('17ecd792287fe858d9111fc2d591b2ea12410b2f6398fd11c88dbe4055c1c51990d4d5a76fbb239c', 1, 1, 'andrew', '[]', 1, '2021-09-22 09:34:30', '2021-09-22 09:34:30', '2022-09-22 15:04:30'),
('180d2532862a7e81984a083f9fb3835968bedc489cfdb5079bf6dc05b69ff3ccc2b80f3272dbe5ee', 2, 1, 'andrew', '[]', 1, '2021-09-22 03:57:47', '2021-09-22 03:57:47', '2022-09-22 09:27:47'),
('51233c241e262a6ce5476fac8ecdddd30c3514d51a7c85bbe6891e481c165cd359eccaa104050471', 2, 1, 'andrew', '[]', 1, '2021-09-22 03:58:10', '2021-09-22 03:58:10', '2022-09-22 09:28:10'),
('5a542e614040373301f46a9c3f32ce47ef4ce957ecff44c041fc3429f19fe4eb8b263bd9813c8db2', 2, 1, 'andrew', '[]', 0, '2021-09-22 05:39:23', '2021-09-22 05:39:23', '2022-09-22 11:09:23'),
('b6d481ce7d654b62c1a4f5e9bc925846f385adfa4174bd96ae9b04b874508143f1a61219347633f4', 1, 1, 'andrew', '[]', 1, '2021-09-22 03:56:06', '2021-09-22 03:56:06', '2022-09-22 09:26:06'),
('b91f1c36973e0c557ae0bda56ee18601cc7addc33a0a0b96c53842ff2960b80abc62f5fd71b3165b', 1, 1, 'andrew', '[]', 0, '2021-09-23 02:23:35', '2021-09-23 02:23:35', '2022-09-23 07:53:35'),
('c55e849fd2c48c343b03987c8e512dea14661eef6a0ded86db0d8851d84aa20338c2c46214a8a035', 1, 1, 'andrew', '[]', 1, '2021-09-23 02:15:15', '2021-09-23 02:15:15', '2022-09-23 07:45:15');

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
  `offer_type` enum('Normal','BirthdayOffer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `admin_id`, `venu_id`, `unique_id`, `offer_name`, `offer_desc`, `image`, `name_of_file_show`, `from_date`, `to_date`, `time`, `to_time`, `status`, `offer_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-22 09:31:15', '2021-09-22 09:31:15', NULL),
(2, 1, 2, 2, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-24 11:46:21', '2021-09-24 11:46:21', NULL);

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
(1, 1, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-22 09:31:15', '2021-09-22 09:31:15', NULL),
(2, 2, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-24 11:46:21', '2021-09-24 11:46:21', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '09222021092545614af699d29fa.jpeg', '+91', '9876061473', 'sakk', 'ah', 's2@yopmail.com', '$2y$10$Bmik3KesZaEPG7Ow8JqtB.yL9z1Mg1AAL0pXbIGYYEBZRTaOJ5I4G', 'Abu Dhabi', 'Afghanistan', '2005-09-22', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'R8ERJTMuMHoiMMMZTF0vK5ruh30xH8nLOhJjU8ifkzdYxxWEKaYrvW7Pc1dJYlou', '0', '1', NULL, NULL, 'Active', 99914492145, NULL, NULL, NULL, '2021-09-22 03:55:45', '2021-09-22 09:34:30', NULL),
(2, '09222021092747614af713afe30.jpeg', '+91', '8699047413', 'Dev', 'Amar', 'amar@yopmail.com', '$2y$10$D9D2KfCQKhM6ukw3cXMXz.adT.tzkwWIlpHp5Lxhn9xs38nUdC5lm', 'Abu Dhabi', 'Afghanistan', '2005-09-22', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 81746178105, NULL, NULL, NULL, '2021-09-22 03:57:47', '2021-09-22 03:58:09', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_assign_offers`
--

INSERT INTO `user_assign_offers` (`id`, `offer_id`, `offer_setting_id`, `user_id`, `city_id`, `dob`, `gender`, `date`, `assign_at`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `offer_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-09-23', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-23 02:19:48', '2021-09-23 02:19:48', NULL),
(4, 1, 1, 2, NULL, 'Today', NULL, NULL, '2021-09-23', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-23 02:19:49', '2021-09-23 02:19:49', NULL);

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
(2, 1, 'asd', '$2y$10$TQ/PdGBbLS9y175zEPRncuWbChU2090ejSeS4JZ7GjWysnCN13OL2', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-23 15:59:26', '$2y$10$.4fx4uau4qmo.Hshx1/KJe.s2lAirT2QvCr1Bc4FT2KgDoO/n3bge', 'Admin', 'Admin', '2021-09-23 10:29:26', '2021-09-24 11:47:01', NULL),
(3, NULL, 'qqqqqqqq', '$2y$10$URURhfcc2Gfp2coq7LrMlOpxp23HNGYNPoJEV63xZ3wbM8EouU0mS', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-29 15:36:14', NULL, 'Admin', 'Admin', '2021-09-29 10:06:14', '2021-09-29 10:06:14', NULL),
(4, NULL, 'aaaaaa', '$2y$10$8157GGXIp63EsSS53OEq5.cYlFJEgzFQtocJvB.3Fj15pBNI0w9hu', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-29 15:37:53', NULL, 'Admin', 'Admin', '2021-09-29 10:07:53', '2021-09-29 10:07:53', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venus`
--

INSERT INTO `venus` (`id`, `admin_id`, `venue_name`, `unique_id`, `address`, `venue_description`, `phone_number`, `google_map_location_link`, `book_now_link`, `image`, `name_of_file_show`, `menu_link`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'fdefef ew fwefewf ew fwe ffwe', 1, 'first venu first venu first ve address', 'first venu first venu first ve desc', '454566156', 'http://192.168.3.121/society_20_september/admin/adding-venue', 'http://192.168.3.121/society_20_september/admin/adding-venue', '0922202115011545614af7e3a8e80.jpeg', 'download (1).jpeg', 'http://192.168.3.121/society_20_september/admin/adding-venue', 'Active', '2021-09-22 09:31:15', '2021-09-22 11:13:58', NULL),
(2, 1, 'New Venue', 2, 'Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum', 'Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum', '1234567895', 'https://www.google.com', 'https://www.google.com', '0924202117162150614dba8d5794d.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'https://www.google.com', 'Active', '2021-09-24 11:46:21', '2021-09-24 11:46:21', NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_admin_id_foreign` (`admin_id`),
  ADD KEY `events_venu_id_foreign` (`venu_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `application_datas`
--
ALTER TABLE `application_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `application_images`
--
ALTER TABLE `application_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assign_badges`
--
ALTER TABLE `assign_badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `assign_user_venues`
--
ALTER TABLE `assign_user_venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_requests`
--
ALTER TABLE `login_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `offer_settings`
--
ALTER TABLE `offer_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

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
-- Constraints for table `login_requests`
--
ALTER TABLE `login_requests`
  ADD CONSTRAINT `login_requests_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_requests_venue_user_id_foreign` FOREIGN KEY (`venue_user_id`) REFERENCES `venue_users` (`id`) ON DELETE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
