-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2021 at 06:00 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-24+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_10_september`
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
(1, 'Nadeer', 'adminn@yopmail.com', '$2y$10$MM0//hGlDn4uCg4rTNDiaudMWYEJZcY7wrLLvRu16miH5BtZB7pxa', 'ksl2yL99ZdLMkHE3GmOdeIXNiyu0Pc4FCbk8QF8ycynyyew9zGUgMcrtb1k54rOn', NULL, '2021-09-13 11:00:07');

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
(43, '2021_09_10_063651_create_user_assign_offers_table', 14);

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
('35014f94d43afff17cd1a7fa9dedc373af642e05428e34de613b3b0440aef89e77b2061dd906fa46', 1, 1, 'andrew', '[]', 1, '2021-09-13 04:59:00', '2021-09-13 04:59:00', '2022-09-13 10:29:00'),
('3e2163a17203191e6d465446a29ce23047381d1301e5bfe0176221dfb5eba7f1e41571d1e3e9fca9', 1, 1, 'andrew', '[]', 1, '2021-09-10 01:55:31', '2021-09-10 01:55:31', '2022-09-10 07:25:31'),
('4a0f57ec1c1a0fbb6302fddd1fb34153ea448508392115adca328c397db040eff5d7dbc0ebb4fa02', 2, 1, 'andrew', '[]', 0, '2021-09-13 07:00:04', '2021-09-13 07:00:04', '2022-09-13 12:30:04'),
('5192c7351b9184ac2890690d84597eaff897771568ccde6987736bbe58b8c834dd8208dde32377c1', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:01:24', '2021-09-13 05:01:24', '2022-09-13 10:31:24'),
('836b8ca37da57c5b90cad8709683b3c94e297faaa445c024f91088a93beed2f840523caa25f7f884', 1, 1, 'andrew', '[]', 1, '2021-09-10 01:57:16', '2021-09-10 01:57:16', '2022-09-10 07:27:16'),
('8567fea8165444f3bc0dfc501d176de9ecdbfcc0894850a38b817db6b6b55361b7b9c10007701188', 1, 1, 'andrew', '[]', 0, '2021-09-13 04:59:36', '2021-09-13 04:59:36', '2022-09-13 10:29:36'),
('8863138fb8067b1941b4f99ced5d1347c3e1e314071844d67143e92f96e501b175f1692cbe03911c', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:12:10', '2021-09-13 05:12:10', '2022-09-13 10:42:10'),
('b484d0c9b86603409b4e6306821d207027a61b442f298388ed263c8b60156092636b2add13542c5f', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:20:53', '2021-09-13 05:20:53', '2022-09-13 10:50:53'),
('b8f95d08daf8907dd66bd212e50ee1135c4ffaffdb7b787703ad81c858bbc7bd04a7694c2f410ab9', 2, 1, 'andrew', '[]', 1, '2021-09-13 05:00:55', '2021-09-13 05:00:55', '2022-09-13 10:30:55'),
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
(3, 1, 1, 3, 'party offer 2', 'party offer description', '0910202113105789613b0c099cdaa.jpeg', 'download.jpeg', '2021-09-10', '2021-09-11', '13:10:00', '17:10:00', 'Active', 'Normal', '2021-09-10 07:40:57', '2021-09-10 07:40:57', NULL),
(4, 1, 1, 4, 'offername moview', 'offername moview', '0910202113134565613b0cb173848.jpeg', 'download.jpeg', '2021-09-10', '2021-09-11', '13:13:00', '17:13:00', 'Active', 'Normal', '2021-09-10 07:43:45', '2021-09-10 07:43:45', NULL),
(5, 1, 1, 5, 'pool party offer', 'pool party offer', '0910202113141547613b0ccf13a0a.jpeg', 'Cool-Nature-Wallpapaer-for-Download.jpg', '2021-09-10', '2021-09-11', '13:14:00', '17:25:00', 'Active', 'Normal', '2021-09-10 07:44:15', '2021-09-13 04:48:06', NULL),
(6, 1, 1, 6, 'ddwdwqd', 'wwwwwqwweswqedde', '0913202110242184613ed97d129eb.jpeg', 'Cool-Nature-Wallpapaer-for-Download.jpg', '2021-09-14', '2021-09-16', '05:25:00', '07:35:00', 'Inactive', 'Normal', '2021-09-13 04:54:21', '2021-09-13 04:54:21', NULL),
(7, 1, 1, 7, 'TEST OFFER', 'TEST OFFER DESC', '0913202116034758613f290b5a634.jpeg', 'download.jpeg', '2021-09-13', '2021-09-16', '16:03:00', '18:30:00', 'Active', 'Normal', '2021-09-13 10:33:47', '2021-09-13 10:33:47', NULL);

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
(7, 7, 1, 'Today', 'Male', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 10:33:47', '2021-09-13 10:33:47', NULL);

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
(2, NULL, '+91', '955656544', 'abc', 'koko', 'abc3@yopmail.com', '$2y$10$4TS/aAdOdIBL4e4RIZ0kNOMqIEx.bXvlF5ihUROGiWirmpFAdB0rG', 'Abu Dhabi', 'IN', '2012-12-12', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 69508074461, NULL, NULL, NULL, '2021-09-13 05:00:55', '2021-09-13 05:20:53', NULL);

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
(3, 5, 5, 1, 1, 'Today', NULL, '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 02:57:47', '2021-09-13 02:57:47', NULL),
(4, 1, 1, 2, NULL, 'Today', NULL, NULL, '2021-09-13', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-13 05:02:45', '2021-09-13 05:02:45', NULL),
(5, 2, 2, 2, 1, 'Today', 'Male', '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:02:45', '2021-09-13 11:15:26', NULL),
(6, 5, 5, 2, 1, 'Today', NULL, '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:02:45', '2021-09-13 05:02:45', NULL),
(7, 7, 7, 1, 1, 'Today', 'Male', '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:12:40', '2021-09-13 05:12:40', NULL),
(8, 7, 7, 2, 1, 'Today', 'Male', '2021-09-13', '2021-09-13', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-09-13 05:12:40', '2021-09-13 05:12:40', NULL);

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
(1, 1, 'abc123', '$2y$10$OiEjYJ6cQuPX0Ir394Sczupy9ae/zjbmGT1EY9MCZuo0CLlbBYRHG', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-13 14:29:43', NULL, 'Admin', 'Admin', '2021-09-13 08:59:43', '2021-09-13 08:59:43', NULL),
(2, 1, 'abc1234', '$2y$10$ON274ciLqkDrCAL0CTgaPuG.w8W7p3vPPNs8bS932A5heJ1MAK7.2', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-13 14:30:15', NULL, 'Admin', 'Admin', '2021-09-13 09:00:15', '2021-09-13 09:02:17', NULL);

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
(1, 1, 'party venu', 1, 'party address', 'part description', '9874563211', 'http://google.com', 'http://google.com', '0910202113014590613b09e1d9d8a.jpeg', 'download.jpeg', 'http://google.com', 'Active', '2021-09-10 07:31:45', '2021-09-10 07:31:45', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `offer_settings`
--
ALTER TABLE `offer_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
