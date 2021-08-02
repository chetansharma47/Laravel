-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2021 at 05:41 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-10+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loyality_app`
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
(1, 'admin', 'adminn@yopmail.com', '$2y$10$nbvTNJDjH6yIpVurSdVaOOeYAyIi8spa8oc.cNpx7mp4/oCV679A6', 'Zh2IvHebzVyNHQl2B8JoM9fuNfpoaORIxK0vt22rhLmqjBGBqaUYNT7CPej9WeXy', NULL, '2021-08-02 01:38:20');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cashbacks`
--

INSERT INTO `cashbacks` (`id`, `unique_id_cashback`, `admin_id`, `venu_id`, `promotion_cashback_name`, `image`, `day_on`, `from_date`, `to_date`, `from_time`, `to_time`, `cashback_percentage`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 1, 1, 'safsaf', 'asfasf.jpg', 'Monday', '2021-08-02', '2021-08-03', '02:00:00', '05:00:00', '10', 'Active', NULL, NULL, NULL),
(2, '2', 1, 1, 'safsaf', 'asfasf.jpg', 'Monday', '2021-08-02', '2021-08-03', '02:00:00', '05:00:00', '10', 'Active', NULL, NULL, NULL);

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
(28, '2021_07_30_113524_create_cashbacks_table', 10);

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
('afffc81d4cf6c8af9634ccc0a23585a3cac53bc4ac23efc4514c8e7adb43a9e704dddb824c6fdf56', 2, 1, 'andrew', '[]', 0, '2021-07-23 02:24:04', '2021-07-23 02:24:04', '2022-07-23 07:54:04'),
('bd819af719ba29d8dfafb9f0f4b325b29b84b368ca2ce217000588cbf66e64b849b0b3974bdd4ca7', 1, 1, 'andrew', '[]', 1, '2021-07-23 02:21:40', '2021-07-23 02:21:40', '2022-07-23 07:51:40'),
('df5b900e4ec4a2ae008a99ff138b2d24b936405bc1d8cb705085483cdc6c3316167aa34af942744c', 1, 1, 'andrew', '[]', 0, '2021-07-23 02:31:24', '2021-07-23 02:31:24', '2022-07-23 08:01:24');

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
(1, '+91', '8968905827', '6432', '2021-07-23 02:19:32', '2021-07-23 02:19:32'),
(2, '+91', '8556025369', '9128', '2021-07-23 02:19:39', '2021-07-23 02:19:39');

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
(1, '1', 1, 'ab', 4, 8, '#ff0000', NULL, '2021-07-28 07:21:57', '2021-07-23 02:18:57', '2021-07-28 07:21:57'),
(2, '2', 1, 'dd', 110, 120, '#ff0000', NULL, '2021-07-28 07:24:35', '2021-07-28 07:23:40', '2021-07-28 07:24:35'),
(3, '3', 1, 'Silvert', 1, 500, '#0cbb61', 2.3, NULL, '2021-07-29 01:30:07', '2021-07-29 23:41:09');

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
(1, 1, 30, 30, NULL, '2021-07-23 02:18:57', '2021-07-23 02:18:57');

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
(1, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(2, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '1', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-29 01:32:44', NULL),
(3, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(4, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '1', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-29 01:32:44', NULL),
(5, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(6, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(7, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(8, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(9, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(10, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(11, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(12, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(13, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(14, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(15, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(16, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'ggg@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL);

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
(1, 1, 'abc', '123456', 'Venue1', 'Active', 'Nokia', '11:250:11:00', 'Unauthorized', '2021-07-29 15:54:00', NULL, '2021-07-29 01:51:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venus`
--

CREATE TABLE `venus` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `venue_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `venue_description` longtext COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map_location_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_now_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venus`
--

INSERT INTO `venus` (`id`, `admin_id`, `venue_name`, `address`, `venue_description`, `phone_number`, `google_map_location_link`, `book_now_link`, `image`, `menu_link`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Venue1', 'Mohali', 'Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum Loream Ipsum ', '156151561561', 'https://www.google.com/maps/place/Deftsoft/@30.6996255,76.6908335,15z/data=!4m2!3m1!1s0x0:0x6d3c38ef8c74065?sa=X&ved=2ahUKEwj7otaEvYfyAhXFyDgGHduSALsQ_BIwG3oECFUQBQ', 'https://www.google.com/maps/place/Deftsoft/@30.6996255,76.6908335,15z/data=!4m2!3m1!1s0x0:0x6d3c38ef8c74065?sa=X&ved=2ahUKEwj7otaEvYfyAhXFyDgGHduSALsQ_BIwG3oECFUQBQ', 'image.jpg', 'www.google.com', 'Active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_cashbacks`
--

CREATE TABLE `wallet_cashbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `bonus` int(11) NOT NULL DEFAULT '0',
  `bonus_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_friend` int(11) NOT NULL DEFAULT '0',
  `refer_friend_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_cashbacks`
--

INSERT INTO `wallet_cashbacks` (`id`, `admin_id`, `bonus`, `bonus_text`, `refer_friend`, `refer_friend_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 25, 'WD', 2, 'FD', '2021-07-30 01:35:42', '2021-07-30 01:59:39', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
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
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
