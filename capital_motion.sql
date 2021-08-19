-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2021 at 06:28 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-10+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capital_motion_18_august`
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
(1, 'admin', 'adminn@yopmail.com', '$2y$10$MM0//hGlDn4uCg4rTNDiaudMWYEJZcY7wrLLvRu16miH5BtZB7pxa', 'AtMBBr2cY3QN1Mjaee1VuBIN9iqZobhiM8844oHJJ03OPNab6EcTwroca4dQ', NULL, '2021-08-19 09:28:28');

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
(1, '1', 1, 1, 'fd', '081920211213471611dfda3ec440.png', 'Monday,Wednesday', '2021-08-20', '2021-08-22', '12:13:00', '14:13:00', '10', 'Active', 'world.topo.200407.3x5400x2700.jpg', '2021-08-19 06:43:47', '2021-08-19 06:43:47', NULL);

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
(1, 'City A', NULL, NULL, NULL),
(2, 'City B', NULL, NULL, NULL),
(3, 'City C', NULL, NULL, NULL),
(4, 'City D', NULL, NULL, NULL),
(5, 'City E', NULL, NULL, NULL);

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
(1, 1, 1, 1, 'Enjoy', 'fjwf;lmciorwjfwe,firrjwfkw[wkg', 'Thursday', '2021-08-19', '2021-08-26', '15:00:00', '00:00:00', 'Active', '0819202115024023611e2538ef690.jpeg', 'download.jpeg', '2021-08-19 09:31:40', '2021-08-19 09:32:40', NULL),
(2, 1, 1, 2, 'Enjoyd', 'fsdfef', 'Friday', '2021-08-20', '2021-08-26', '18:03:00', '00:00:00', 'Active', '0819202115045147611e25bb7edc8.png', 'Screenshot 2021-07-14 at 4.10.47 PM (1).png', '2021-08-19 09:34:51', '2021-08-19 12:38:08', NULL),
(3, 1, 1, 4, 'Defsoft Moahali', 'sdfh9weikfwoejf89w', 'Saturday', '2021-08-27', '2021-09-02', '15:05:00', '00:00:00', 'Active', '0819202115055887611e25fe47644.png', 'Screenshot at 2021-07-09 11-43-29.png', '2021-08-19 09:35:58', '2021-08-19 09:35:58', NULL),
(4, 1, 2, 5, 'name event', 'event b desc', 'Monday,Friday', '2021-08-21', '2021-08-29', '19:25:00', '18:33:00', 'Inactive', '0819202117254664611e46c2659e4.jpeg', 'world.topo.200407.3x5400x2700.jpg', '2021-08-19 11:55:46', '2021-08-19 11:55:59', NULL);

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
(38, '2021_08_18_115812_create_cities_table', 12);

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
('10ff838be3511c1ccada00ddc03193f6e3b2f07bc97fb2bc98c73fdaed2d9d85a57d7a995199a21e', 3, 1, 'andrew', '[]', 1, '2021-08-17 06:53:46', '2021-08-17 06:53:46', '2022-08-17 12:23:46'),
('13324e97a95e24c121b13b6f1bb33b8358ebfca9a261001e654978f7e18369eddc7aa2b696be70b1', 2, 1, 'andrew', '[]', 1, '2021-08-17 23:56:51', '2021-08-17 23:56:51', '2022-08-18 05:26:51'),
('192a933f141c7335a5dd3469923323fce78dd652a5755ec90fb1c6f613241df70f2691ca59b159e1', 3, 1, 'andrew', '[]', 1, '2021-08-19 00:21:16', '2021-08-19 00:21:16', '2022-08-19 05:51:16'),
('19c5a70c153b03cfc672da5fb8c13b2974b7f09a14bf02971013466350d470c91d9d26ef67600f88', 5, 1, 'andrew', '[]', 0, '2021-08-18 05:25:56', '2021-08-18 05:25:56', '2022-08-18 10:55:56'),
('34b58a5baea0eebb4aacd39f8f5d46c9acb007e07fc744f4dfa09e230701f6e500fc53e61e249037', 3, 1, 'andrew', '[]', 1, '2021-08-17 22:25:58', '2021-08-17 22:25:58', '2022-08-18 03:55:58'),
('37dcef9d426a912bcdcde23ee2328188fc3a4d6fa47cb8efd895d838c09f1d29a0f4732d83733cfa', 2, 1, 'andrew', '[]', 1, '2021-08-17 23:12:26', '2021-08-17 23:12:26', '2022-08-18 04:42:26'),
('38d61eb64c3412ebb1ae32ddbb0eb9960d55bfe7892d04d75c04a5964695ccd4e06d0d406c0c185b', 3, 1, 'andrew', '[]', 1, '2021-08-18 08:24:54', '2021-08-18 08:24:54', '2022-08-18 13:54:54'),
('3b332745a75c3d1acd83ce4653dfda24272c326f9d262d8be59b1ac38da6be5fdca35e9196db7392', 3, 1, 'andrew', '[]', 1, '2021-08-19 00:21:52', '2021-08-19 00:21:52', '2022-08-19 05:51:52'),
('4433b8cdeae726c731f4f5d26c690c1b2a26f70cd02554b64033863390b93e92615b3198e0d9beb6', 3, 1, 'andrew', '[]', 0, '2021-08-19 05:03:55', '2021-08-19 05:03:55', '2022-08-19 10:33:55'),
('50404d091d1de55eb19bc5a00ffd526ffeedfe5264798ace567b7a5c190c8cc41f3181f2cf35312d', 2, 1, 'andrew', '[]', 0, '2021-08-19 07:13:30', '2021-08-19 07:13:30', '2022-08-19 12:43:30'),
('5b001c9fe94248f489635024777e893aac49f766a88c95a37319da0f877fa6e7c795c138a41e33e5', 2, 1, 'andrew', '[]', 1, '2021-08-18 06:38:37', '2021-08-18 06:38:37', '2022-08-18 12:08:37'),
('809b632b416383f12f3467c0be460adda8ddf417be045bb980dc6d5f9238d304ffa5bbfc451b6430', 2, 1, 'andrew', '[]', 1, '2021-08-18 07:02:02', '2021-08-18 07:02:02', '2022-08-18 12:32:02'),
('847f357117c1b0d04473dbbfe22d49e031eb71a76bbb66e8a14368678871ad3cc62dd008213668f1', 2, 1, 'andrew', '[]', 1, '2021-08-17 07:26:54', '2021-08-17 07:26:54', '2022-08-17 12:56:54'),
('a385661c8a794631b950a1024783c8831b095ee5f6004110374192fbcbefcfced1fbf5bf8284fdf6', 3, 1, 'andrew', '[]', 1, '2021-08-17 04:47:44', '2021-08-17 04:47:44', '2022-08-17 10:17:44'),
('a62d194ebc3fc4d66369874e70619f0d5ee5a9c876866e38b6af02dad527482beed8d2027f339d68', 4, 1, 'andrew', '[]', 0, '2021-08-18 00:11:14', '2021-08-18 00:11:14', '2022-08-18 05:41:14'),
('a7183c2e71fd8cbaf02a216c061d9ee182c71f269f8f592d593ecb4a133eac83b4aecb6e0d877258', 2, 1, 'andrew', '[]', 1, '2021-08-17 23:00:16', '2021-08-17 23:00:16', '2022-08-18 04:30:16'),
('bb5ecf114951d8699020fef9de0340dedef69d62a46f4578b1bce7c1ca5690fcc57a522533aacc84', 2, 1, 'andrew', '[]', 1, '2021-08-16 02:32:46', '2021-08-16 02:32:46', '2022-08-16 08:02:46'),
('beff2507d44e13f63f1a2a6256342765932a6f04cdb615c7e93213cc6ce87910a1777d85d9159a39', 2, 1, 'andrew', '[]', 1, '2021-08-19 06:37:09', '2021-08-19 06:37:09', '2022-08-19 12:07:09'),
('c4fe93bf099111c628726ac17aabfb2d010ece8a0c3c87f6ca286b868b637ce140f77b341f9cf6d9', 5, 1, 'andrew', '[]', 1, '2021-08-18 05:25:03', '2021-08-18 05:25:03', '2022-08-18 10:55:03'),
('c595c1b3168af1aec9b53daa7a596ffb5d6e2f831830f329b80b5ce413f7baf578bce66b9f7eb36a', 3, 1, 'andrew', '[]', 1, '2021-08-18 08:12:44', '2021-08-18 08:12:44', '2022-08-18 13:42:44'),
('cc47c42e68a2f26dc9b6819d7a8332917d74c74958884338d7e6c156eccf98def572e279f2e0b7e6', 3, 1, 'andrew', '[]', 1, '2021-08-17 04:48:30', '2021-08-17 04:48:30', '2022-08-17 10:18:30'),
('d245c033d42390ea92aa1bea4cd5a615e14bd627d33919b1a6a4b8ed977b225b16edc0480fea809d', 2, 1, 'andrew', '[]', 1, '2021-08-16 02:32:19', '2021-08-16 02:32:19', '2022-08-16 08:02:19'),
('d99203918a3b612eddad7ddf0e8672c6bda6a1d1d1f6604a6a973344f22bc994d799ea5e43c2699d', 2, 1, 'andrew', '[]', 1, '2021-08-19 07:00:50', '2021-08-19 07:00:50', '2022-08-19 12:30:50'),
('df08c19ab817181a7dd851e19bd7e8c5203ecbf4634e9f139d16869f4b3fefb5597c8220146704ce', 2, 1, 'andrew', '[]', 1, '2021-08-17 22:53:01', '2021-08-17 22:53:01', '2022-08-18 04:23:01'),
('dfbcb746b12517b70cd46391738d373e9f17f3a51ec4da5abc16d41cfa067dc6ca4945d64801b19a', 3, 1, 'andrew', '[]', 1, '2021-08-18 23:19:20', '2021-08-18 23:19:20', '2022-08-19 04:49:20'),
('e4a1162c3f63c9aad124a35dd3c6a1b878b3bf3452d2a17c02ae00ddbd178d60deb6da71ddc7abdc', 1, 1, 'andrew', '[]', 0, '2021-08-12 07:55:57', '2021-08-12 07:55:57', '2022-08-12 13:25:57'),
('f96912e0ca56a302fbea0654ac0daf4de3a7ce8fda969b5d58ceb4529dc46417cdc5b75f6dc5738a', 2, 1, 'andrew', '[]', 1, '2021-08-18 23:25:42', '2021-08-18 23:25:42', '2022-08-19 04:55:42'),
('fab7213c958b940574ec989272a1c541c47e3f5d1039dfe45b11058e13b7b94ff8ac94adf403c98f', 3, 1, 'andrew', '[]', 1, '2021-08-18 00:06:10', '2021-08-18 00:06:10', '2022-08-18 05:36:10');

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
(1, 1, 1, 1, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Inactive', 'BirthdayOffer', '2021-08-19 09:07:46', '2021-08-19 09:48:41', NULL),
(3, 1, 1, 2, 'fafasf', 'safasfasf', '08192021153913100611e2dc9d43ba.jpeg', 'world.topo.200407.3x5400x2700.jpg', '2021-08-19', '2021-08-20', '15:38:00', '17:39:00', 'Inactive', 'Normal', '2021-08-19 10:09:13', '2021-08-19 11:56:12', NULL),
(4, 1, 2, 3, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-08-19 10:36:15', '2021-08-19 10:36:15', NULL),
(5, 1, 1, 4, 'new offer', 'offer decoffer dec offer dec', '0819202117275636611e47443b1ae.jpeg', 'world.topo.200407.3x5400x2700.jpg', '2021-08-21', '2021-08-28', '18:29:00', '18:28:00', 'Active', 'Normal', '2021-08-19 11:57:56', '2021-08-19 11:58:16', '2021-08-19 11:58:16'),
(6, 1, 3, 5, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', 'BirthdayOffer', '2021-08-19 12:06:04', '2021-08-19 12:06:04', NULL),
(7, 1, 1, 6, 'fafasfs', 'fafasf', '0819202118135056611e5206c0bd6.jpeg', 'world.topo.200407.3x5400x2700.jpg', '2021-08-19', '2021-08-20', '18:13:00', '18:13:00', 'Active', 'Normal', '2021-08-19 12:43:50', '2021-08-19 12:43:50', NULL);

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
(1, 1, NULL, 'Today', NULL, NULL, NULL, NULL, 'Between', 0, 0, 'Normal', '2021-08-19 09:07:46', '2021-08-19 09:48:41', NULL),
(2, 3, 1, 'Today', 'Female', '2021-08-19', '2021-08-19', '2021-08-21', 'Between', 10, 20, 'Normal', '2021-08-19 10:09:13', '2021-08-19 10:09:13', NULL),
(3, 4, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-08-19 10:36:15', '2021-08-19 10:36:15', NULL),
(4, 5, 3, 'Today', 'Female', '2021-08-20', '2021-08-20', '2021-08-21', 'Greater Than', 200, NULL, 'Normal', '2021-08-19 11:57:56', '2021-08-19 11:57:56', NULL),
(5, 6, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-08-19 12:06:04', '2021-08-19 12:06:04', NULL),
(6, 7, 1, 'Today', 'Male', '2021-08-19', '2021-08-19', '2021-08-20', 'Between', 10, 100, 'Normal', '2021-08-19 12:43:50', '2021-08-19 12:43:50', NULL);

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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('adminn@yopmail.com', 'b1ms4o7DPtmDiFTQWMz5uMC27ZAXaVFT', NULL),
('adminn@yopmail.com', 'm0R3dn0twB2ksrTNZoB05Gis7HEo7tiD', NULL),
('adminn@yopmail.com', 'SJegQkFpn5Y1v7J9V9ABMStNIfrx5hzM', NULL),
('adminn@yopmail.com', 'scz30il6RMyUyFgeDyr5YSmS5mBhuP1z', NULL),
('adminn@yopmail.com', 'u8nRiwIDfwtheTHRhb2G7xTj1aGmr4Zd', NULL),
('adminn@yopmail.com', 'bpDEeIO8YZKRc3zEdyCgQ4A03YOJFwO0', NULL),
('adminn@yopmail.com', 'PfdAKYauL2gAV0zJ9cSYLX7zjRW8J8Wv', NULL),
('adminn@yopmail.com', 'Ryr5fwyVQ93uYjvcHznI2iTCzdNm8AJz', NULL),
('adminn@yopmail.com', 'rIJ5Ra6FhaxXIaRe8erczIyAcNVCFfNQ', NULL),
('adminn@yopmail.com', '3zGEzEPxNYA313VceiuFU7T2zV8mOpzG', NULL),
('adminn@yopmail.com', 'j3rxWF146osKQfktSyGFI5AkYGmrYMnJ', NULL),
('adminn@yopmail.com', '5W7EOdUZNKBB5BSbMxMwocjcB0kUFtDu', NULL),
('adminn@yopmail.com', 'SEzvbvHUjs9XPH8fd3MXqGbJOGJDGLDO', NULL);

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
(1, '1', 1, 'Loream Ipsum Loream Ipsum Lokl', 0, 10, '#ff0000', 0, '2021-08-18 07:23:17', '2021-08-09 12:57:36', '2021-08-18 07:23:17'),
(2, '2', 1, 'Loream Ipsum Loream Ipsum Lore', 11, 20, '#ff0000', 0, '2021-08-18 07:23:25', '2021-08-09 12:57:57', '2021-08-18 07:23:25'),
(3, '3', 1, 'Data test', 10, 20, '#ff0000', 0, NULL, '2021-08-18 08:56:37', '2021-08-18 08:56:37');

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
(1, 1, 30, 30, NULL, '2021-08-09 12:57:36', '2021-08-09 12:57:36');

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
(1, NULL, '+91', '955656545', 'abc', 'koko', 'abc323@yopmail.com', '$2y$10$q5pO5q2ZeDMMkj1EY99CfOAj22./93ATmlEUZ8jCBLdYbAWt5328K', 'City A', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'XGbMFn8OcoJCiiITMgixJ14PHNSkLPUiE12yysZ6GuB9HJPWkgptGW7rolEGtQVG', '0', '0', NULL, NULL, 'Inactive', 72915437694, 'Data test', NULL, NULL, '2021-08-12 07:55:57', '2021-08-18 08:56:37', NULL),
(2, '08162021080218611a1b8a8c9b5.jpeg', '+971', '501234567', 'iOS', 'test', 'test@yopmail.com', '$2y$10$jkdGNeUQJm1V41dy2QOw1uVAPNz3jgezAv9GkdEYcpc8jLoUIlUIe', 'City A', 'Afghanistan', '2003-08-16', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 84583052005, 'Data test', NULL, NULL, '2021-08-16 02:32:18', '2021-08-18 08:56:37', NULL),
(3, NULL, '+91', '7018292209', 'Bhupinder', 'sharma', 'k1@yopmail.com', '$2y$10$m/JCyztJe4s/wZbq6Ud//uNAqPkj6lQKQvdb8k6GhgY3n2kbXDro2', 'City A', 'United States of America', '2004-08-17', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, 'Active', 47577870759, 'Data test', NULL, NULL, '2021-08-17 04:47:43', '2021-08-18 08:56:37', NULL),
(4, NULL, '+91', '955556545', 'abc', 'koko', 'c3@yopmail.com', '$2y$10$w7UeUuxsnuTGRFfuLxvxNedMP9TDNdzs.TvOj7iRtGnCpytH3lxq.', 'City A', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'QjoFtT0jKp1pKZEXxwOjT8slGmkznDPErHwHoEXpsLjGMlcnvj79lWN1Z3gKGbwv', '0', '0', NULL, NULL, 'Inactive', 31801947176, 'Data test', NULL, NULL, '2021-08-18 00:11:13', '2021-08-18 08:56:37', NULL),
(5, '08182021105503611ce70745ce0.jpeg', '+971', '501234565', 'amar', 'dev', 'amar@yopmail.com', '$2y$10$14lohMJuZOLk6I4Fr5/9IuMYXTp5TZoAlusUHn0k495yUtP.5QStq', 'City A', 'Afghanistan', '2001-08-18', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 13686253213, 'Data test', NULL, NULL, '2021-08-18 05:25:03', '2021-08-18 05:25:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venue_users`
--

CREATE TABLE `venue_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `venu_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `device_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mac_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_status` enum('Unauthorized','Authorized') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unauthorized',
  `date_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_users`
--

INSERT INTO `venue_users` (`id`, `venu_id`, `username`, `password`, `venue_name`, `status`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dummy User 1Dummy User 1Dummy', '123456', 'Venue1', 'Active', 'Nokia M71', '11:00:12:11:00', 'Unauthorized', '2021-08-05 00:00:00', NULL, NULL, NULL),
(2, 1, 'Dummy User 2Dummy User 2Dummy ', '123456', 'Venue1', 'Active', 'Samsung M71', '00:00:00:00:00', 'Authorized', '2021-08-06 00:00:00', NULL, '2021-08-05 06:21:22', NULL),
(3, 2, 'Dummy User 3Dummy User 3Dummy', '123456', 'Venue2Venue2Venue2Venue2Venue2', 'Active', 'Apple M71', '99:00:12:11:00', 'Unauthorized', '2021-08-15 00:00:00', NULL, '2021-08-12 12:56:21', NULL),
(4, 2, 'Dummy User 4Dummy User 4Dummy', '123456', 'Venue2Venue2Venue2Venue2Venue2', 'Active', 'Moto G M71', '81:00:12:11:00', 'Authorized', '2021-08-18 00:00:00', NULL, '2021-08-12 12:56:17', NULL);

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
(1, 1, 'Bhupinhj', 1, 'Mohali', 'https://www.google.comhttps://www.google.comhttps://www.google.com', '123123123', 'https://www.google.com', 'https://www.google.com', '0819202114374694611e1f627ae9c.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'https://www.google.com', 'Active', '2021-08-19 09:07:46', '2021-08-19 12:34:50', NULL),
(2, 1, 'Bhupinhjhder', 2, 'uyu', 'http://www.google.com', '1515156156', 'http://', 'http://', '0819202116061526611e341f9961f.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'http://www.google.com', 'Inactive', '2021-08-19 10:36:15', '2021-08-19 12:10:53', NULL),
(3, 1, 'new venu', 3, 'deftsoft address', 'deft desc', '34342343', 'http://', 'http://', '0819202117360493611e492c4c8b1.jpeg', 'world.topo.200407.3x5400x2700.jpg', 'http://', 'Active', '2021-08-19 12:06:04', '2021-08-19 12:06:04', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
