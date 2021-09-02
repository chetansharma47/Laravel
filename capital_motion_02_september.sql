-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2021 at 06:20 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-10+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capital_motion_02_september`
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
(1, 'Nadeer', 'phpapi870@gmail.com', '$2y$10$ksxq8opwxiROSIARjFd4j.9339hPksFnslzJmb0PNpZ2qkKpdJU2G', 'u4tzIaH9w26x97cUsGbfnOlxxn8hbTq7qVdnsHzNYVAz6NG9nWFsVYHPkAnA6vSO', NULL, '2021-09-02 12:31:44');

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

--
-- Dumping data for table `cashbacks`
--

INSERT INTO `cashbacks` (`id`, `unique_id_cashback`, `admin_id`, `venu_id`, `promotion_cashback_name`, `image`, `day_on`, `from_date`, `to_date`, `from_time`, `to_time`, `cashback_percentage`, `status`, `name_of_file_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2', 1, 1, 'safafa', '090120211131101612f172650bbe.png', 'Monday', '2021-09-01', '2021-09-02', '11:30:00', '00:31:00', '10', 'Active', 'world.topo.200407.3x5400x2700.jpg', '2021-09-01 06:01:10', '2021-09-01 06:01:10', NULL);

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
(1, 1, 4, 1, 'first event', 'gjkfhjjyi', 'Monday', '2021-09-01', '2021-09-08', '00:44:00', '21:44:00', 'Active', '09022021124333956130799dc30c7.jpeg', 'download.jpeg', '2021-09-01 10:15:03', '2021-09-02 07:13:33', NULL),
(2, 1, 4, 5, 'five', 'gerherasgwgwgwrg', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2021-09-02', '2021-09-02', '12:45:00', '13:45:00', 'Active', '090220211255364361307c70db49e.jpeg', 'download.jpeg', '2021-09-02 07:25:36', '2021-09-02 07:25:36', NULL),
(3, 1, 4, 4, 'four', 'k67ektyj', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2021-09-02', '2021-09-02', '12:55:00', '16:55:00', 'Active', '090220211256216561307c9deb4e1.png', 'Screenshot 2021-07-14 at 4.10.47 PM (1).png', '2021-09-02 07:26:21', '2021-09-02 07:26:21', NULL),
(4, 1, 4, 3, 'three', 'fhtrhrth', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2021-09-02', '2021-09-10', '12:58:00', '18:58:00', 'Active', '090220211259202561307d50c88cb.jpeg', 'download.jpeg', '2021-09-02 07:28:57', '2021-09-02 07:29:20', NULL);

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
(1, 1, 1, 'Nokia', '11:00:11:11:11:00', 'Unauthorized', '2021-09-01 12:54:07', '2021-09-01 07:24:07', '2021-09-01 07:42:11', NULL),
(2, 2, 2, 'Nokia', '21:00:11:11', 'Unauthorized', '2021-09-01 13:13:23', '2021-09-01 07:43:23', '2021-09-01 07:43:23', NULL),
(3, 3, 1, 'iPad', '9D7EDDF0-CEB6-44AB-AAB4-EBF589294138', 'Authorized', '2021-09-02 11:47:56', '2021-09-02 06:17:56', '2021-09-02 06:19:34', NULL),
(4, 3, 1, 'iPad', '0241FA87-AF7C-4077-944B-709E5418F392', 'Authorized', '2021-09-02 11:51:15', '2021-09-02 06:21:15', '2021-09-02 06:22:56', NULL);

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
(40, '2021_09_01_063812_create_login_requests_table', 13);

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
('306f483ad9077a820ef262f819a9f8de2ef3d1330b0e918b4671d87563c1eb62417b3dd88b18234e', 1, 1, 'andrew', '[]', 0, '2021-08-31 04:19:06', '2021-08-31 04:19:06', '2022-08-31 09:49:06'),
('395e8f8b26cc8a276140c1c238908ba90ee1f3f259be56b310793e87deddea84d72e130967eaea4d', 2, 1, 'andrew', '[]', 1, '2021-09-02 01:46:26', '2021-09-02 01:46:26', '2022-09-02 07:16:26'),
('737e2637365668eea033fd85fa759924f3fa48de2e28053a52af30ced67d973083f16e2e067e9d57', 2, 1, 'andrew', '[]', 1, '2021-09-02 00:50:31', '2021-09-02 00:50:31', '2022-09-02 06:20:31'),
('7ecd92bf8d9e6645190f6e4df47ef6579d23988509494e4a67fe7257c785f882867452a4436a58dc', 3, 1, 'andrew', '[]', 1, '2021-09-02 01:13:26', '2021-09-02 01:13:26', '2022-09-02 06:43:26'),
('ae5bdac374e7bfb96b2b2db9ecfd9df1bfdb0106d132120cc5076c92338cf734f3bb94154db58bae', 3, 1, 'andrew', '[]', 0, '2021-09-02 01:14:32', '2021-09-02 01:14:32', '2022-09-02 06:44:32'),
('bea09b70df6ce7451bab255cd34aeec6ba36e3726f681280f9f25617bc29d492d4c0dfbe0b728e26', 2, 1, 'andrew', '[]', 1, '2021-09-01 02:43:35', '2021-09-01 02:43:35', '2022-09-01 08:13:35'),
('c09937b2e5ff59aaff517082c2e324ddd1b156e1dea1fbedd2f63088b7e980c692eccdc17861ac4a', 2, 1, 'andrew', '[]', 0, '2021-09-02 02:04:35', '2021-09-02 02:04:35', '2022-09-02 07:34:35'),
('db410c275e785a7443d585102651a82ba0b2474cc7c0c2d4ce500d76d19037a574626228efb7644d', 2, 1, 'andrew', '[]', 1, '2021-09-01 02:44:42', '2021-09-01 02:44:42', '2022-09-01 08:14:42'),
('e4779523ab82cc9f4933c918de938a6e007957b327e91d02c3b57b108f76dbf233fb5d0d7da27df7', 4, 1, 'andrew', '[]', 0, '2021-09-02 04:06:51', '2021-09-02 04:06:51', '2022-09-02 09:36:51'),
('f4fdfaf9b8d0eb9489ce96f4eb4962a2a34174c93c082973eb018aa5639355849d2af7b9c88f2c5e', 2, 1, 'andrew', '[]', 1, '2021-09-01 04:32:45', '2021-09-01 04:32:45', '2022-09-01 10:02:45');

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
(1, 1, 1, 1, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-08-27 05:12:48', '2021-08-27 05:12:48', NULL),
(2, 1, 2, 2, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-08-27 05:14:33', '2021-08-27 05:14:33', NULL),
(3, 1, 3, 3, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-08-31 12:25:04', '2021-08-31 12:25:04', NULL),
(4, 1, 1, 4, 'offer', 'jfkljk', '0902202112051653613070a42d89f.png', 'article image@2x.png', '2021-09-02', '2021-09-07', '00:03:00', '17:03:00', 'Active', 'Normal', '2021-09-02 06:33:21', '2021-09-02 06:35:16', NULL),
(5, 1, 4, 5, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-09-02 07:12:44', '2021-09-02 07:12:44', NULL);

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
(1, 1, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-08-27 05:12:48', '2021-08-27 05:12:48', NULL),
(2, 2, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-08-27 05:14:33', '2021-08-27 05:14:33', NULL),
(3, 3, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-08-31 12:25:04', '2021-08-31 12:25:04', NULL),
(4, 4, 1, 'Today', 'Male', '2021-09-02', '2021-09-02', '2021-09-03', 'Between', 10, 20, 'Normal', '2021-09-02 06:33:21', '2021-09-02 06:33:21', NULL),
(5, 5, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-09-02 07:12:44', '2021-09-02 07:12:44', NULL);

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
(3, '+91', '7878954876', '7293', '2021-09-01 03:36:22', '2021-09-01 03:36:22');

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
('adminn@yopmail.com', 'AlYVflxO39PYvpfnMb0tQGx1H8CISYLy', NULL),
('adminn@yopmail.com', 'CK6mq4Lo0yqP8vEebSPLRKHIqENxR5Po', NULL),
('adminn@yopmail.com', 'LkAAz3BGOOVEJ3cmkY5ZtNtnloSLZ39w', NULL),
('adminn@yopmail.com', 'iLmmWQzWio2bH1wPKAPTITBufLwUqTS5', NULL),
('adminn@yopmail.com', 'hGeu7YSFqVuVwqoYAM4CoxfuHClGOQNX', NULL),
('adminn@yopmail.com', 'BbHFnhKTLzlnBzu3SijwUkSBuAJJ2R5D', NULL),
('adminn@yopmail.com', 'G59PC1opSmEXHcutS95lLYUgDixPSEJx', NULL),
('adminn@yopmail.com', 'dKV89ojJUgZOXnuQERNVc8CU57XlDXOU', NULL),
('adminn@yopmail.com', '4DdIokCcIEEgIw1rs7C0e85itPvoNJUc', NULL),
('adminn@yopmail.com', '4AA6SExlGjslOudxuYON3cQ0sJierxPC', NULL),
('adminn@yopmail.com', 'g18YN247qaiEVcYQVLtzNyYK1G8vK3WN', NULL),
('adminn@yopmail.com', 'e93quavNBkkIT9MKePQIIBZzPLtUS16t', NULL),
('adminn@yopmail.com', 'JUHAElJd1Hw1MMJ4w2LB1OLKVXQ5Mege', NULL),
('adminn@yopmail.com', 'tk2mjpJ4LFBlEnPKDdFuZMSAdt5mGtlv', NULL),
('adminn@yopmail.com', '11z42JTSNtvOdsNYNexzJybIRS246p1Y', NULL),
('adminn@yopmail.com', 'qJrzhCaBn44xaQzltkGQYrxIuZtaDd6D', NULL),
('adminn@yopmail.com', 'uLwlJlpkmqyYiNdsRaizeto2lglOqePk', NULL),
('adminn@yopmail.com', 'tm7HgFFdQdARSnrZxSckP8ziEujoQvwb', NULL),
('adminn@yopmail.com', 'sjjWzM9zCXFJ1EwtehXAYhDhVY3BWBlY', NULL),
('adminn@yopmail.com', 'cOyrFzxcYYLJah5jG4P8eg5slmWb9ZRJ', NULL),
('adminn@yopmail.com', 'qLu77HqLMXgIN8kPw7ILYLJK4rRb0pFO', NULL),
('adminn@yopmail.com', '3NRBP9EEnerEcaetk4BdUpjO6v5PBYFn', NULL),
('adminn@yopmail.com', 'Zk4N7oxfDVz9KUfOH5xN9RIqU7GDnLNS', NULL),
('adminn@yopmail.com', 'lSLJpFdsCdo46h7EcOYcUhOET07rqVv4', NULL),
('adminn@yopmail.com', '5vchZSXiQqU7esmuQoLpvQn142nmV8KQ', NULL),
('adminn@yopmail.com', 'iYH9Ze1lHlfmlqsbPUfwvDgnkkneDZXz', NULL),
('adminn@yopmail.com', '2YXzFfaBdZRcxRY4ydaqC5fJZKsTjuA9', NULL),
('webservices@deftsoft.com', 'wtwIN4bY7DRGZtPTheWTL1VsXWDaqnrX', NULL),
('webservices@deftsoft.com', 'MjYhzVL5gysFcH82mNLI97QTuraBuY5H', NULL);

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
(1, '1', 1, 'Silver', 0, 10, '#00ff64', 0, NULL, '2021-09-02 06:30:33', '2021-09-02 06:31:04');

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
(1, 1, 20, 19, NULL, '2021-09-02 06:30:33', '2021-09-02 09:09:37');

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
  `is_active` enum('Inactive','Active') COLLATE utf8mb4_unicode_ci DEFAULT 'Inactive',
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
(1, '08312021094906612dfb120c43b.jpg', '+91', '955656545', 'abc', 'koko', 'phpapi8s70@gmail.com', '$2y$10$jqBHHc1P/UM5W22h/.UBouE/a1mUv3srTxBSBhOdFsGEbAdKzZfLO', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'bdr98vFpkl1M8aaI8MN5NafDHEoDlnqFUu95fLw7UOBJno6hGzaHVvufPYNBEY1z', '0', '1', NULL, NULL, 'Inactive', 53205170381, 'Silver', NULL, NULL, '2021-08-31 04:19:06', '2021-09-02 03:57:54', NULL),
(2, '09012021081334612f362ed1887.jpeg', '+91', '9876543210', 'test', 'test', 'test@yopmail.com', '$2y$10$xyFxFFEgjWCyV5SLhVR5weOa1DSQ9DjPMjmCHZhpUdciIojM8knHu', 'Abu Dhabi', 'Afghanistan', '2005-09-01', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 42673432244, 'Silver', NULL, NULL, '2021-09-01 02:43:35', '2021-09-02 08:08:45', NULL),
(3, NULL, '+91', '7018292209', 'abc', 'koko', 'k1@yopmail.com', '$2y$10$3hN4oPh3q2zKuvIptUg10O659fL2A4HiiyDHBT.CQi2f4uhtfMRem', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '1', '1', NULL, NULL, 'Active', 95328189482, 'Silver', NULL, NULL, '2021-09-02 01:13:26', '2021-09-02 12:48:35', NULL),
(4, '0902202109365061309b329dda9.jpg', '+91', '8556025369', 'abc', 'koko', 'phpapi870@gmail.com', '$2y$10$hmjn4.wnOlaQz7pzcYyASezWQ4LoPqlRyXVZI.okE.rIdz7MTunq2', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, NULL, '1', '1', NULL, NULL, 'Active', 26269335002, 'Silver', NULL, NULL, '2021-09-02 04:06:50', '2021-09-02 12:48:35', NULL);

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
(1, 1, 'user@12', '$2y$10$wWosgJB7zK9dp4xTal.s8.PHcnW1O2FJXTmEOMLl6qx5odZHVXMxa', 'Active', 'N/A', 'N/A', 'Authorized', '2021-09-01 12:31:54', '$2y$10$pl0gpjoWrQy9pqfGbnuSlujDl3vvlDcMTuxmhNwOU2bI1uwKV.LOK', 'Admin', 'Admin', '2021-09-01 07:01:54', '2021-09-01 09:26:15', NULL),
(2, 2, 'user@15', '$2y$10$iEiExdyQ2A/cSyMtlpub6uDn0hrek7XUI4Gw/gg15W9tvD.mqNxnS', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-01 13:12:46', '$2y$10$vb6g2317yjLr8fflXmm1SuVgLKy4Vzncj0I7gy28DFsfYpYQhMPBK', 'Admin', 'Admin', '2021-09-01 07:42:46', '2021-09-01 14:02:47', NULL),
(3, 1, 'dev', '$2y$10$DUks3ZeSIz7w6Zd8GOEuAuy/YbsjQHOtmz1ecd9uv00EXHKK9y7ky', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-09-02 11:47:50', '$2y$10$33Et.1MvrsldcVszUSUzkO7s5CEuZew4LXx4LkJAkZhJLc4ZUkWZG', 'Admin', 'Admin', '2021-09-02 06:17:50', '2021-09-02 06:21:15', NULL);

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
(1, 1, 'first venu', 1, 'first venu address', 'first venu description', '41234141234', 'http://google.com', 'http://google.com', '08272021104247306128744fe5eaf.jpeg', 'sam-mcghee-KieCLNzKoBo-unsplash.jpg', 'http://google.com', 'Active', '2021-08-27 05:12:47', '2021-08-27 05:12:47', NULL),
(2, 1, 'second venu', 2, 'second venu address', 'second venu description', '1234567899', 'http://google.com', 'http://google.com', '0827202110443317612874b99cc9f.jpeg', 'sam-mcghee-KieCLNzKoBo-unsplash.jpg', 'http://google.com', 'Active', '2021-08-27 05:14:33', '2021-08-27 05:17:04', NULL),
(3, 1, 'Third venue', 3, '21 e24e 2 r2 2 y23 42732642420789344 234 234', '21 e24e 2 r2 2 y23 42732642420789344 234 234', '123143264576856', 'https://www.google.com/maps/dir/30.7003392,76.6902272/deftsoft/@30.7202544,76.6927754,14z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x390feef69353d285:0x6d3c38ef8c74065!2m2!1d76.7221021!2d30.7383009', 'https://www.google.com/maps/dir/30.7003392,76.6902272/deftsoft/@30.7202544,76.6927754,14z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x390feef69353d285:0x6d3c38ef8c74065!2m2!1d76.7221021!2d30.7383009', '0831202117550438612e1fa0c0f66.png', '712-7122129_red-arrow-png-red-arrow-transparent-png.png', 'https://www.google.com/maps/dir/30.7003392,76.6902272/deftsoft/@30.7202544,76.6927754,14z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x390feef69353d285:0x6d3c38ef8c74065!2m2!1d76.7221021!2d30.7383009', 'Active', '2021-08-31 12:25:04', '2021-08-31 12:25:04', NULL),
(4, 1, 'Bhupinder', 4, 'Aimamughlan', 'fbbtehfrg', '1231231231', 'http://192.168.3.112/23aug/capital_motion_23_august/admin/adding-venue', 'http://192.168.3.112/23aug/capital_motion_23_august/admin/adding-venue', '09022021124244226130796c5459c.png', 'Screenshot 2021-07-14 at 4.10.47 PM (1).png', 'http://192.168.3.112/23aug/capital_motion_23_august/admin/adding-venue', 'Active', '2021-09-02 07:12:44', '2021-09-02 07:12:44', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login_requests`
--
ALTER TABLE `login_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `offer_settings`
--
ALTER TABLE `offer_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
