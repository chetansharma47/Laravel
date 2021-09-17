-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2021 at 07:38 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-10+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_13_september`
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
(1, 'Nadeer', 'adminn@yopmail.com', '$2y$10$MM0//hGlDn4uCg4rTNDiaudMWYEJZcY7wrLLvRu16miH5BtZB7pxa', 'kD3mh5UC8GPeJEjKxDyaSrZDjgxUqry5Axr0XKddUTVoiss3hOLSQyWSkO12SO6h', NULL, '2021-09-17 14:06:35');

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
  `when` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `assign_badges` (`id`, `user_id`, `badge_id`, `comment`, `status`, `when`, `from_date`, `to_date`, `from_time`, `to_time`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`) VALUES
(1, 5, 2, 'Loream Ipsum 111111', 'Active', 'Monday', '2021-09-17', '2021-09-18', '02:00:00', '05:00:00', '2020-08-05 18:30:00', '2021-09-17 13:54:20', 'Admin', 'Admin', NULL),
(2, 4, 1, 'dsgdg', 'Active', 'Monday,Saturday', '2021-09-17', '2021-09-18', '18:38:00', '19:38:00', '2021-09-17 13:08:31', '2021-09-17 13:08:31', 'Admin', 'Admin', NULL),
(3, 3, 1, 'sdgsdg', 'Active', 'Monday,Saturday', '2021-09-17', '2021-09-18', '18:39:00', '19:39:00', '2021-09-17 13:09:07', '2021-09-17 13:09:07', 'Admin', 'Admin', NULL);

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
(1, 1, 'Abc', 'Loream Ipsum ', 'hhjsfhsf.jpg', 'Active', 'Admin', 'Admin', '2021-09-16 18:30:00', NULL, NULL),
(2, 1, 'XYZ', 'Kksjfsafas.jpg', 'sfasf', 'Active', 'Admin', 'Admin', '2021-09-16 18:30:00', NULL, NULL),
(3, 1, 'asfa', '09172021193742196144a12ea57a3.jpeg', 'world.topo.200407.3x...', 'Active', 'Admin', 'Admin', '2021-09-17 14:07:42', '2021-09-17 14:07:42', NULL);

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
(1, 4, 2, 'iPad', '0498BE78-4D8D-4323-992B-15F289731C85', 'Unauthorized', '2021-09-15 10:55:11', '2021-09-15 05:25:11', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(2, 12, 2, 'iPad', '0498BE78-4D8D-4323-992B-15F289731C85', 'Unauthorized', '2021-09-15 11:16:13', '2021-09-15 05:46:13', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(3, 11, 2, 'iPad', '0498BE78-4D8D-4323-992B-15F289731C85', 'Unauthorized', '2021-09-15 11:16:57', '2021-09-15 05:46:57', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(4, 14, 6, 'iPad', '133C12AE-66F5-46A6-9A7F-CB246D795CD2', 'Unauthorized', '2021-09-15 13:17:46', '2021-09-15 07:47:46', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(5, 13, 7, 'iPad', '133C12AE-66F5-46A6-9A7F-CB246D795CD2', 'Unauthorized', '2021-09-15 13:23:26', '2021-09-15 07:53:26', '2021-09-15 11:58:22', '2021-09-15 11:58:22'),
(6, 16, 7, 'iPad', '133C12AE-66F5-46A6-9A7F-CB246D795CD2', 'Unauthorized', '2021-09-15 13:26:44', '2021-09-15 07:56:44', '2021-09-15 11:58:22', '2021-09-15 11:58:22'),
(7, 15, 7, 'iPad', '133C12AE-66F5-46A6-9A7F-CB246D795CD2', 'Unauthorized', '2021-09-15 13:27:16', '2021-09-15 07:57:16', '2021-09-15 11:58:22', '2021-09-15 11:58:22'),
(8, 17, 6, 'iPad', '133C12AE-66F5-46A6-9A7F-CB246D795CD2', 'Unauthorized', '2021-09-15 15:25:15', '2021-09-15 09:55:15', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(9, 18, 6, 'iPad', '53D1749F-01C4-4294-AC6C-745A319A3735', 'Unauthorized', '2021-09-15 16:44:16', '2021-09-15 11:14:16', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(10, 19, 6, 'iPad', '53D1749F-01C4-4294-AC6C-745A319A3735', 'Authorized', '2021-09-15 16:49:45', '2021-09-15 11:19:45', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(11, 20, 6, 'iPad', '53D1749F-01C4-4294-AC6C-745A319A3735', 'Authorized', '2021-09-15 16:50:55', '2021-09-15 11:20:55', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(12, 21, 6, 'iPad', '53D1749F-01C4-4294-AC6C-745A319A3735', 'Unauthorized', '2021-09-15 17:05:20', '2021-09-15 11:35:20', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(13, 22, 6, 'iPad', '53D1749F-01C4-4294-AC6C-745A319A3735', 'Authorized', '2021-09-15 17:08:20', '2021-09-15 11:38:20', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(14, 24, 5, 'iPad', '53D1749F-01C4-4294-AC6C-745A319A3735', 'Authorized', '2021-09-15 17:43:22', '2021-09-15 12:13:22', '2021-09-15 12:13:49', NULL),
(15, 25, 5, 'iPad', 'C57B4450-7B67-4CCA-8C75-333F0C660419', 'Authorized', '2021-09-15 18:27:31', '2021-09-15 12:57:31', '2021-09-15 13:00:55', NULL),
(16, 26, 5, 'iPad', 'C57B4450-7B67-4CCA-8C75-333F0C660419', 'Authorized', '2021-09-15 18:32:43', '2021-09-15 13:02:43', '2021-09-15 13:12:57', NULL);

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
(46, '2021_09_16_122515_create_assign_badges_table', 16);

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
('268cf5d62e8051e06a8a491dacb1bc791fea1330e836e6fa23f3d039bf59b822921f46a0956e940b', 4, 1, 'andrew', '[]', 1, '2021-09-14 00:55:03', '2021-09-14 00:55:03', '2022-09-14 06:25:03'),
('35014f94d43afff17cd1a7fa9dedc373af642e05428e34de613b3b0440aef89e77b2061dd906fa46', 1, 1, 'andrew', '[]', 1, '2021-09-13 04:59:00', '2021-09-13 04:59:00', '2022-09-13 10:29:00'),
('3e2163a17203191e6d465446a29ce23047381d1301e5bfe0176221dfb5eba7f1e41571d1e3e9fca9', 1, 1, 'andrew', '[]', 1, '2021-09-10 01:55:31', '2021-09-10 01:55:31', '2022-09-10 07:25:31'),
('4a0f57ec1c1a0fbb6302fddd1fb34153ea448508392115adca328c397db040eff5d7dbc0ebb4fa02', 2, 1, 'andrew', '[]', 0, '2021-09-13 07:00:04', '2021-09-13 07:00:04', '2022-09-13 12:30:04'),
('5192c7351b9184ac2890690d84597eaff897771568ccde6987736bbe58b8c834dd8208dde32377c1', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:01:24', '2021-09-13 05:01:24', '2022-09-13 10:31:24'),
('7eadc47cea4e0bac68c2a4b30850230e6a63a394045f96207ba6c75f3e3d59015b85505604a81116', 3, 1, 'andrew', '[]', 0, '2021-09-13 08:00:48', '2021-09-13 08:00:48', '2022-09-13 13:30:48'),
('836b8ca37da57c5b90cad8709683b3c94e297faaa445c024f91088a93beed2f840523caa25f7f884', 1, 1, 'andrew', '[]', 1, '2021-09-10 01:57:16', '2021-09-10 01:57:16', '2022-09-10 07:27:16'),
('8567fea8165444f3bc0dfc501d176de9ecdbfcc0894850a38b817db6b6b55361b7b9c10007701188', 1, 1, 'andrew', '[]', 0, '2021-09-13 04:59:36', '2021-09-13 04:59:36', '2022-09-13 10:29:36'),
('8863138fb8067b1941b4f99ced5d1347c3e1e314071844d67143e92f96e501b175f1692cbe03911c', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:12:10', '2021-09-13 05:12:10', '2022-09-13 10:42:10'),
('8b7c484f509834d87d62d4122bd9b4f5b25d85bf6b2f83b612ab6382096f68f96f929acbdbc74042', 5, 1, 'andrew', '[]', 0, '2021-09-15 01:47:03', '2021-09-15 01:47:03', '2022-09-15 07:17:03'),
('b31b604a7509a107029b3e56d0154762fb518a6a2c6360a3dff1fe31e1f11364f70fe6b7440cea1b', 4, 1, 'andrew', '[]', 1, '2021-09-13 08:01:35', '2021-09-13 08:01:35', '2022-09-13 13:31:35'),
('b484d0c9b86603409b4e6306821d207027a61b442f298388ed263c8b60156092636b2add13542c5f', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:20:53', '2021-09-13 05:20:53', '2022-09-13 10:50:53'),
('b8f95d08daf8907dd66bd212e50ee1135c4ffaffdb7b787703ad81c858bbc7bd04a7694c2f410ab9', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:00:55', '2021-09-13 05:00:55', '2022-09-13 10:30:55'),
('b9be33be57e8b4c7118a3bf75d1247a94871a159893d57f6e90d934649e190cd4cba615b71de4beb', 4, 1, 'andrew', '[]', 0, '2021-09-14 01:03:03', '2021-09-14 01:03:03', '2022-09-14 06:33:03'),
('ec824b01f5d36f28334d4e200fb54588a6ad4ae4b5fd4a451c7ef2b1c3824cdfd20ab8dbe47b1fc3', 4, 1, 'andrew', '[]', 1, '2021-09-14 00:54:18', '2021-09-14 00:54:18', '2022-09-14 06:24:18'),
('f8a81420b3ff8b39fcf5041f9d14c65358613aa830550a034097fc4214e4e48643a9ef299a99235c', 1, 1, 'andrew', '[]', 1, '2021-09-12 23:13:04', '2021-09-12 23:13:04', '2022-09-13 04:43:04');

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
(1, 1, 1, 1, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-10 07:31:45', '2021-09-10 07:31:45', NULL),
(2, 1, 1, 2, 'party offer', 'party offer description', '0910202113073097613b0b3a3dd28.jpeg', 'download.jpeg', '2021-09-10', '2021-09-13', '17:25:00', '19:35:00', 'Active', 'Normal', '2021-09-10 07:37:30', '2021-09-13 11:15:26', '2021-09-13 11:15:26'),
(3, 1, 1, 3, 'party offer 2', 'party offer description', '0910202113105789613b0c099cdaa.jpeg', 'download.jpeg', '2021-09-10', '2021-09-11', '13:10:00', '17:10:00', 'Active', 'Normal', '2021-09-10 07:40:57', '2021-09-14 05:23:38', '2021-09-14 05:23:38'),
(4, 1, 1, 4, 'offername moview', 'offername moview', '0910202113134565613b0cb173848.jpeg', 'download.jpeg', '2021-09-10', '2021-09-11', '13:13:00', '17:13:00', 'Active', 'Normal', '2021-09-10 07:43:45', '2021-09-14 05:24:00', '2021-09-14 05:24:00'),
(5, 1, 1, 5, 'pool party offer', 'pool party offer', '0910202113141547613b0ccf13a0a.jpeg', 'Cool-Nature-Wallpapaer-for-Download.jpg', '2021-09-10', '2021-09-11', '13:14:00', '17:25:00', 'Active', 'Normal', '2021-09-10 07:44:15', '2021-09-14 05:23:45', '2021-09-14 05:23:45'),
(6, 1, 1, 6, 'ddwdwqd', 'wwwwwqwweswqedde', '0913202110242184613ed97d129eb.jpeg', 'Cool-Nature-Wallpapaer-for-Download.jpg', '2021-09-14', '2021-09-16', '05:25:00', '07:35:00', 'Inactive', 'Normal', '2021-09-13 04:54:21', '2021-09-14 05:23:56', '2021-09-14 05:23:56'),
(7, 1, 1, 7, 'TEST OFFER', 'TEST OFFER DESC', '0913202116034758613f290b5a634.jpeg', 'download.jpeg', '2021-09-13', '2021-09-16', '16:03:00', '18:30:00', 'Active', 'Normal', '2021-09-13 10:33:47', '2021-09-14 05:23:51', '2021-09-14 05:23:51'),
(8, 1, 2, 8, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-14 05:27:07', '2021-09-14 05:27:07', NULL),
(9, 1, 3, 9, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-14 05:35:52', '2021-09-14 05:35:52', NULL),
(10, 1, 4, 10, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-15 05:26:07', '2021-09-15 05:26:07', NULL),
(11, 1, 5, 11, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-15 07:24:44', '2021-09-15 07:24:44', NULL),
(12, 1, 6, 12, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-15 07:25:47', '2021-09-15 07:25:47', NULL),
(13, 1, 7, 13, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-15 07:28:08', '2021-09-15 07:28:08', NULL),
(14, 1, 8, 14, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-15 12:59:56', '2021-09-15 12:59:56', NULL);

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
(1, 1, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-10 07:31:45', '2021-09-10 07:31:45', NULL),
(2, 2, 1, 'Today', 'Male', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-10 07:37:30', '2021-09-13 04:48:16', NULL),
(3, 3, 1, 'Today', NULL, '2021-09-11', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-10 07:40:57', '2021-09-10 07:40:57', NULL),
(4, 4, NULL, 'Today', NULL, '2021-09-10', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-10 07:43:45', '2021-09-10 07:43:45', NULL),
(5, 5, 1, 'Today', NULL, '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-10 07:44:15', '2021-09-13 04:48:06', NULL),
(6, 6, 1, 'Today', 'Male', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 04:54:21', '2021-09-13 04:54:21', NULL),
(7, 7, 1, 'Today', 'Male', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 10:33:47', '2021-09-13 10:33:47', NULL),
(8, 8, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-14 05:27:08', '2021-09-14 05:27:08', NULL),
(9, 9, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-14 05:35:52', '2021-09-14 05:35:52', NULL),
(10, 10, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-15 05:26:07', '2021-09-15 05:26:07', NULL),
(11, 11, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-15 07:24:44', '2021-09-15 07:24:44', NULL),
(12, 12, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-15 07:25:47', '2021-09-15 07:25:47', NULL),
(13, 13, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-15 07:28:08', '2021-09-15 07:28:08', NULL),
(14, 14, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-15 12:59:57', '2021-09-15 12:59:57', NULL);

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
(1, NULL, '+91', '955656545', 'abc', 'koko', 'abc323@yopmail.com', '$2y$10$0d9SjIQhO7d8KhshSON6uuGWBmSed0Nx/jrf0xd9OTxirOKvuvtC.', 'Abu Dhabi', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, NULL, '0', '1', NULL, NULL, 'Active', 16966043203, NULL, NULL, NULL, '2021-09-10 01:55:31', '2021-09-13 04:59:36', NULL),
(2, NULL, '+91', '955656544', 'abc', 'koko', 'abc3@yopmail.com', '$2y$10$4TS/aAdOdIBL4e4RIZ0kNOMqIEx.bXvlF5ihUROGiWirmpFAdB0rG', 'Abu Dhabi', 'IN', '2012-12-12', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 69508074461, NULL, NULL, NULL, '2021-09-13 05:00:55', '2021-09-13 05:20:53', NULL),
(3, NULL, '+91', '8556025369', 'abc', 'koko', 'abc1@gmail.com', '$2y$10$nGsfzI776qG5JBFm1gV4y.FyIncFa5ua2tIaSwPZnc455b7C4TAtm', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'xWYUyHcgErcRbA9nNEb3mOGTXoLnxJCNdN2rMIJNpJIRoQ1gBhbwZfyxzsZCBrvP', '0', '0', NULL, NULL, 'Active', 30690074044, NULL, NULL, NULL, '2021-09-13 08:00:48', '2021-09-13 08:00:48', NULL),
(4, NULL, '+91', '8556025362', 'abc', 'koko', 'abc1@yopmail.com', '$2y$10$sH5hl0vAdrQQKQ49KGfx2OEj6hqptd/9egPZwqoh6GsuuZKS6IHvi', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 72935895811, NULL, NULL, NULL, '2021-09-13 08:01:35', '2021-09-14 01:03:02', NULL),
(5, '0915202107170261419deef2b36.jpeg', '+91', '8901009083', 'deep', 'Sharma', 'deep@yopmail.com', '$2y$10$ZXnRT5J6bjSUYbOX9KeoyO7VkD8i26sTDqscVfC5/qrUf5gnxYVT2', 'Abu Dhabi', 'Afghanistan', '2005-09-15', 'Male', NULL, 'None', NULL, NULL, 'tH1QsPGxzM1tbzdaOOH73AflRQDAiUS9Vh4MeP1wSiZ9yh0cm2I2Dk5YgWGh3YCX', '0', '0', NULL, NULL, 'Active', 99715311343, NULL, NULL, NULL, '2021-09-15 01:47:03', '2021-09-15 01:47:03', NULL);

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
(1, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-09-13', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-13 02:57:47', '2021-09-13 02:57:47', NULL),
(2, 2, 2, 1, 1, 'Today', 'Male', '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 02:57:47', '2021-09-13 11:15:26', NULL),
(3, 5, 5, 1, 1, 'Today', NULL, '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 02:57:47', '2021-09-14 05:23:45', '2021-09-14 05:23:45'),
(4, 1, 1, 2, NULL, 'Today', NULL, NULL, '2021-09-13', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-13 05:02:45', '2021-09-13 05:02:45', NULL),
(5, 2, 2, 2, 1, 'Today', 'Male', '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:02:45', '2021-09-13 11:15:26', NULL),
(6, 5, 5, 2, 1, 'Today', NULL, '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:02:45', '2021-09-14 05:23:45', '2021-09-14 05:23:45'),
(7, 7, 7, 1, 1, 'Today', 'Male', '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:12:40', '2021-09-14 05:23:51', '2021-09-14 05:23:51'),
(8, 7, 7, 2, 1, 'Today', 'Male', '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:12:40', '2021-09-14 05:23:51', '2021-09-14 05:23:51');

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
(1, 1, 'abc123', '$2y$10$OiEjYJ6cQuPX0Ir394Sczupy9ae/zjbmGT1EY9MCZuo0CLlbBYRHG', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-13 14:29:43', NULL, 'Admin', 'Admin', '2021-09-13 08:59:43', '2021-09-14 05:24:07', '2021-09-14 05:24:07'),
(2, 1, 'abc1234', '$2y$10$ON274ciLqkDrCAL0CTgaPuG.w8W7p3vPPNs8bS932A5heJ1MAK7.2', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-13 14:30:15', NULL, 'Admin', 'Admin', '2021-09-13 09:00:15', '2021-09-14 05:24:07', '2021-09-14 05:24:07'),
(3, 1, 'abc', '$2y$10$8DQgFKqWplYe.qcKhdFPH.jP/1MrBGg9xVEt5OjisTj8D/GPri0DK', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-13 19:06:31', '$2y$10$5Rc.IhynqC.3.BdUQzgczeWKR/7clKhKflY9xrqf.6JX2Ke6d1JFG', 'Admin', 'Admin', '2021-09-13 13:36:31', '2021-09-14 05:24:07', '2021-09-14 05:24:07'),
(4, 2, 'Karan', '$2y$10$3.iyivHbgMNK23A.FRZg/eu.oc8jgOQDMO6eE9kqxzoHDLLDBZ60m', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-14 11:00:27', '$2y$10$hwDoD.mQZpAgVpb5bdYdgOdd6sapOnOW22qAujJXGv2f8FVIvRJBu', 'Admin', 'Admin', '2021-09-14 05:30:27', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(5, 2, 'Kaaa', '$2y$10$v.IBcFipjTH9Y74doc/CleBl9XoWz8gyXPTlmKkXgbWPEggrD8siO', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-14 11:21:56', NULL, 'Admin', 'Admin', '2021-09-14 05:51:56', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(6, 3, '&%^&%^&$%^$%^#%$#$#@#$!\\', '$2y$10$tokmt8d4qC8z.F439FbPxu6DLq01Eay1wGwoKDKDCT1ID6eksTIHy', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-14 11:32:36', '$2y$10$lvCu1LlHL707VhElnBFR1eNcKULifqiExScNPhahOgBIAskKjjdOy', 'Admin', 'Admin', '2021-09-14 06:02:36', '2021-09-14 13:35:53', '2021-09-14 13:35:53'),
(7, 2, 'jjfgkjfdgkfkljfkklklklfdgjklff', '$2y$10$tNa5uMnVsASItDzxIigHg.OgfzD5Sh2d9D5DwFW.v.x6/BTW6D9Iu', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-14 14:39:58', '$2y$10$br45RNG3hlOnIZfRmj7Mu.NkRU600QHGKfsoGN5p0TZLMJrQOuAVG', 'Admin', 'Admin', '2021-09-14 09:09:58', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(8, 2, 'ks', '$2y$10$.2eG8husJN1HnALOzs8geO4AQOZPGBeFk3WUdojfutSeD1zyyGX6a', 'Inactive', 'N/A', 'N/A', 'Unauthorized', '2021-09-14 19:03:36', '$2y$10$HS0PFPLEhqciBQzQTNmGPenhklY8Al7YgOlwxYFj4a6KptzVSOjGO', 'Admin', 'Admin', '2021-09-14 13:33:36', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(9, 3, 'aman1', '$2y$10$yPdVRjF1MXHIpW.JllvDpO47OmDE9lX1F19eFsLn3OFeikdITCU2C', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-14 19:05:35', NULL, 'Admin', 'Admin', '2021-09-14 13:35:35', '2021-09-14 13:35:53', '2021-09-14 13:35:53'),
(10, 2, 'kanhaiya', '$2y$10$KQRN5IWB4m2gu6U8.B4h2eWEHQJ1QcmlPC4fQhVLQ.YXyVgF1ijv2', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-14 19:12:51', '$2y$10$eYph56QvxuJ5.rzZKQs4ueL5fn7hsNzQic6Cl17GxqX2m9ZPujKBW', 'Admin', 'Admin', '2021-09-14 13:42:51', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(11, 2, 'aman', '$2y$10$x.O.gv3SZIZ1Rac.7M7BXOrF2PWerc/OeQFnxzKN963R8Ljdzvoc2', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 11:15:07', '$2y$10$fBDu80oFw4ZV4MVsMnGaoO8X5nGi2DLAZo.Amnlr/KLSDaBRueJw2', 'Admin', 'Admin', '2021-09-15 05:45:07', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(12, 2, 'kanu', '$2y$10$UO1AWVRTTtiNlcfr8u3PWOW2P8FNbeZjbSFEhe8hTee.JA/QvdHpG', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 11:15:40', '$2y$10$lRnu27KiazrhHEWUgsPYvu19a6RConDUkHpocfkah0clihrOSIBVS', 'Admin', 'Admin', '2021-09-15 05:45:40', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(13, 7, 'deepsharma', '$2y$10$Wl5m/FBQkcBwzPNvzhiOfOKzlwYH7rn/gJn00tuKB51OQueZYOR0i', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 13:15:56', '$2y$10$JDxpvHZn7uRW.H6nOdV07eiHTJfv48DM/5pxknS3eXPnMTUc/Irle', 'Admin', 'Admin', '2021-09-15 07:45:56', '2021-09-15 11:58:22', '2021-09-15 11:58:22'),
(14, 6, 'sharmadeep', '$2y$10$itQK5oVJpNlTYOuTjHBKIOGdFkfY2OPINEHeHYdBa1oVUC9y/rLKu', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 13:16:11', '$2y$10$JT4hVreQUoNPRkusKtHQQOfbBX891Pb1.YmPejwgH0McMQ0tZ7mLK', 'Admin', 'Admin', '2021-09-15 07:46:11', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(15, 7, 'raja', '$2y$10$eJmfBNzpSDjEeJ/n.VtH5udtLvwDX9d0ZWJ0eHSlEzJ3tGN/uCi8C', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 13:26:18', '$2y$10$Kbsoc.k1sNw44lPQXRehYO89/CqnalzRbkxGPVz.eAL7q88MaVcri', 'Admin', 'Admin', '2021-09-15 07:56:18', '2021-09-15 11:58:22', '2021-09-15 11:58:22'),
(16, 7, 'Mina', '$2y$10$n3qan8gPAC/t8mOqBI.bueuWoazDp62ZZGSkRl7abmgoyZESCJKFu', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 13:26:31', '$2y$10$r8hOKYFQs1c/Pw4TVFcyfu9gEzFpxYvf2On7uI5Lxncw1gu01fVym', 'Admin', 'Admin', '2021-09-15 07:56:31', '2021-09-15 11:58:22', '2021-09-15 11:58:22'),
(17, 6, 'Rajat', '$2y$10$X3zgelTN.5PAgzmIf6yngulIqJdv1qRzXOV6UQT2.TlZqkXq8IMIy', 'Inactive', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 15:24:42', '$2y$10$3cx9Lzm904hJdVrFjejKm.zfR4S3b8nkogtQYPkkou1qGIm6MdcDe', 'Admin', 'Admin', '2021-09-15 09:54:42', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(18, 6, 'kamal', '$2y$10$3A8g/Km6LqYhrif/JlRRG.7ZxX9VSWc0O2VEC0JmshdWmFOr9g9ZG', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 16:43:14', '$2y$10$TNbuOHEpwjVebZOF84cKKe0NWry2cwI.rceUBlk/nZB90Vtt4i8XS', 'Admin', 'Admin', '2021-09-15 11:13:14', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(19, 6, 'kamal1', '$2y$10$9KVNXT0wq0IxQgF3lGn.pugO0bthyuwySjNLBSlaX2.RnHi8/Chq.', 'Inactive', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 16:49:31', '$2y$10$KLthmSOmizCpvPYCy5FQL..Xz7Be8q14MU/PkFi3pQlFDt1OWHzi.', 'Admin', 'Admin', '2021-09-15 11:19:31', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(20, 6, 'kamal2', '$2y$10$EjKE9WkcSPT6HXrXRr.r3ehZlTtZr8rqC4.j6yy0FAK8R8uz33lgS', 'Inactive', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 16:50:20', '$2y$10$sshlb8LdMUCArBodrKZ8mO4sJZBOTZU/1Srzm.KYsDCS5CUKSqLEG', 'Admin', 'Admin', '2021-09-15 11:20:20', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(21, 6, 'kanu123', '$2y$10$Hj/4wUBoCl0VQW0PninX6unNlL8h1rIondIwX.j3IBG.65J8lGbA.', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 17:04:41', '$2y$10$9CT8R6gUAwZt0SpRvTahfeYB5rL2ntMNVlYBVhjulK7V1muGg0GE2', 'Admin', 'Admin', '2021-09-15 11:34:41', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(22, 6, 'aman1234', '$2y$10$SU9iKcmuSsEh9HPGXTyyxerVNJNBprfugtLuW8Sot8IbSmMHkEmHy', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 17:08:05', '$2y$10$5ztFn0b0.zpKHh4ToEK1auiD65w7yc26/Wq6s.k.sD/hKxLkrbGxm', 'Admin', 'Admin', '2021-09-15 11:38:05', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(23, 5, 'kanhaiyagoel', '$2y$10$LoHq02nf7GiLHLHUfC7QAOuktpDtsvJQQrXXgDTrmukxlfU9NEVGm', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 17:29:18', NULL, 'Admin', 'Admin', '2021-09-15 11:59:18', '2021-09-15 11:59:18', NULL),
(24, 5, 'gopal', '$2y$10$qD2.Q/zdRtco9m2E7S3Anu3nnHNcCvr66hRbxIVNusqH4Er7MqB5C', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 17:42:10', '$2y$10$X/NjkB0Q7fqw2tK75tf8cunGzeVPlZ7YaB9MCWdFKxNgU3VwuEPBa', 'Admin', 'Admin', '2021-09-15 12:12:10', '2021-09-15 12:13:22', NULL),
(25, 5, 'gappu', '$2y$10$Gk9jHlkhJrpfs5TsNIlpMuYQBZ4BTIIMWLEqa4Wra9sXgROa/ma6.', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 18:27:17', '$2y$10$S1Y95/NKwQ0D719zVOJr/elptMe9zzmjT/JYY8VC6MCu7Pb7yDhcO', 'Admin', 'Admin', '2021-09-15 12:57:17', '2021-09-15 12:58:08', NULL),
(26, 5, 'gappu2', '$2y$10$T8Cd6qjW3nKL.zIeiw2q6OIxt4CK0CQ/Z/EwPuR4PkfSXizlE4iRi', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-15 18:31:24', '$2y$10$CD/SFsUCiStog033OgbbB.pu1TLVcv3B47u9TlLBXQjefbVfRs/oC', 'Admin', 'Admin', '2021-09-15 13:01:24', '2021-09-15 13:02:43', NULL);

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
(1, 1, 'party venu', 1, 'party address', 'part description', '9874563211', 'http://google.com', 'http://google.com', '0910202113014590613b09e1d9d8a.jpeg', 'download.jpeg', 'http://google.com', 'Active', '2021-09-10 07:31:45', '2021-09-14 05:24:07', '2021-09-14 05:24:07'),
(2, 1, 'Venue1', 2, 'Mohali India Ludhiana', 'Mohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India LudhianaMohali India Ludhiana', '987897789', 'https://goo.gl/maps/sZuRwxRM1VwdzzWe9', 'https://goo.gl/maps/sZuRwxRM1VwdzzWe9', '0914202110570751614032abd3b10.jpeg', '2 ratio 1.jpg', 'https://goo.gl/maps/sZuRwxRM1VwdzzWe9', 'Active', '2021-09-14 05:27:07', '2021-09-15 07:18:14', '2021-09-15 07:18:14'),
(3, 1, 'Venue2', 3, 'Toronto Canada Vancover', 'Toronto Canada VancoverToronto Canada VancoverToronto Canada VancoverToronto Canada Vancover', '987897789', 'https://goo.gl/maps/sZuRwxRM1VwdzzWe9', 'https://goo.gl/maps/sZuRwxRM1VwdzzWe9', '0914202111055266614034b83f6d7.jpeg', '6 ratio 7.jpg', 'https://goo.gl/maps/sZuRwxRM1VwdzzWe9', 'Active', '2021-09-14 05:35:52', '2021-09-14 13:35:53', '2021-09-14 13:35:53'),
(4, 1, 'Venue2', 4, 'Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Lo', 'Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum', '1234567890', 'https://www.google.com', 'https://www.google.com', '0915202110560626614183eed93bf.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'https://www.google.com', 'Active', '2021-09-15 05:26:06', '2021-09-15 05:29:26', '2021-09-15 05:29:26'),
(5, 1, 'Deftsoft Upadated', 5, 'Mohali', 'This is a testing venue for testing purpose only to make the application better as per qualitywise.', '7897894562', 'https://www.deftsoft.com/', 'https://www.deftsoft.com/', '09152021125858876141a0ba26ac9.jpeg', '1630066088633.jpg', 'https://www.deftsoft.com/', 'Active', '2021-09-15 07:24:44', '2021-09-15 12:14:29', NULL),
(6, 1, 'CS Soft Solution', 6, 'Mohali', 'This is a testing venue for testing only to make application better at per user prespective to make it better.', '7897894560', 'https://www.deftsoft.com/', 'https://www.deftsoft.com/', '09152021125606706141a00e7ff5d.png', '200_200 Cropped.png', 'https://www.deftsoft.com/', 'Active', '2021-09-15 07:25:47', '2021-09-15 11:55:10', '2021-09-15 11:55:10'),
(7, 1, 'Flexi Tower', 7, 'Mohali', 'This is a testing venue for testing', '7897894500', 'https://www.deftsoft.com/', 'https://www.deftsoft.com/', '09152021125808866141a0887ae21.jpeg', '1630066067118.jpg', 'https://www.deftsoft.com/', 'Active', '2021-09-15 07:28:08', '2021-09-15 11:58:22', '2021-09-15 11:58:22'),
(8, 1, 'Venu2', 8, 'PunajbaMohali venueMohali venueMohali venueMohali venueMohali venueMohali venueM', 'Shawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen Seller Panel Chat ModuleShawkeen S', '67786876768', 'https://goo.gl/maps/LfT9RinYAsr2jzCSA', 'https://goo.gl/maps/LfT9RinYAsr2jzCSA', '09152021182956756141ee4cdde2e.png', 'Screenshot_5.png', 'https://goo.gl/maps/LfT9RinYAsr2jzCSA', 'Active', '2021-09-15 12:59:56', '2021-09-15 13:10:34', '2021-09-15 13:10:34');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_requests`
--
ALTER TABLE `login_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
