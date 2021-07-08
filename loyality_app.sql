-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2021 at 05:55 PM
-- Server version: 5.7.34-0ubuntu0.18.04.1
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
(8, '2021_07_07_102805_create_users_table', 2);

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
('08a1a760b5b1a4fac30a5f1b346ea5dc71e7fe8136591c5e6363f5561f03f07fa8ee36685a0912d7', 3, 1, 'andrew', '[]', 1, '2021-07-07 06:06:07', '2021-07-07 06:06:07', '2022-07-07 11:36:07'),
('38158ace19e48100178c2b9b18b934bae12df06d0a1222233fc9d059f139032678feba5db1db77da', 3, 1, 'andrew', '[]', 1, '2021-07-07 06:05:14', '2021-07-07 06:05:14', '2022-07-07 11:35:14'),
('4b0685efc0a013709ebc1d6bcd7473fe35a515705772d7b7eb2a731dd0d9ceedd30179147455da0e', 6, 1, 'andrew', '[]', 0, '2021-07-07 23:26:01', '2021-07-07 23:26:01', '2022-07-08 04:56:01'),
('5e8ff14b9e1bd62b15c687e46da0a8d01e0c770406f6fbb29ebac1f9186b2a8d8b5448701faad829', 8, 1, 'andrew', '[]', 0, '2021-07-08 05:57:57', '2021-07-08 05:57:57', '2022-07-08 11:27:57'),
('9f8365e65d6b23b8a8eef3a46cca823239a2b7711d09feca3dd72324c50b082aa8200413fcaa4be7', 7, 1, 'andrew', '[]', 0, '2021-07-07 23:28:39', '2021-07-07 23:28:39', '2022-07-08 04:58:39'),
('ac1f927eaaba0097bf5c306b14d6e922067ea9bfc55e8208f54e16913a4d31cdd73cd9c8c3e0fd2b', 4, 1, 'andrew', '[]', 0, '2021-07-07 22:55:38', '2021-07-07 22:55:38', '2022-07-08 04:25:38'),
('d0d352daeb5bbf4d52d4412c23767f82ea88cba280725f824412d70efc441d3d7de88dd000fef46e', 5, 1, 'andrew', '[]', 0, '2021-07-07 23:14:40', '2021-07-07 23:14:40', '2022-07-08 04:44:40'),
('de7b14bec91a892159196c089777dc96104e74890d445e8af38e4c2bc07011a8da4231f18df2cac6', 3, 1, 'andrew', '[]', 0, '2021-07-07 06:07:15', '2021-07-07 06:07:15', '2022-07-07 11:37:15'),
('f38bd09a34af4c4fe3294f5d7d5a501546853aa1e212a62b2e470168e14ca1bd846cae9b6d1986c1', 2, 1, 'andrew', '[]', 0, '2021-07-07 05:59:48', '2021-07-07 05:59:48', '2022-07-07 11:29:48');

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
('abc12@yopmail.com', 'IEaxRhqFBQi80pxjNuh4jnVgTFWy8AsK0o02Biliid5oODtXAt5T6wi0dpUNZq3m', '2021-07-08 05:45:36'),
('abc12@yopmail.com', 'NRGq8KMpLOfb9cIJOdNSDJ7N7tjvrj2CxVxvqWPZVmeCdfwAXhmhRqHHGLpl4GcN', '2021-07-08 05:49:41'),
('abc12@yopmail.com', 'nuJMHho1Jvk2z1iqe2z3K8zmTg6LdACC6tHNzTK0obqfaRvJRolSFwiyEgxfg9ES', '2021-07-08 05:51:45'),
('abc12@yopmail.com', 'BU7Yv3mu5B9wNy3YGm5TrAGNPJI1ZeGvPhnLilJV06OKcPwocTVYy4TUBhKaB3ip', '2021-07-08 05:53:23'),
('abc12@yopmail.com', 'pBTigAtGjgV0p631FYhlhBA1r8PQf0sI315rPvExSNTzSiTiulq2vE9XkGrg8mVh', '2021-07-08 05:53:57'),
('abc12@yopmail.com', 'GYvZBevyLwxFBh7rQRAJYJQDkNUpIXclbQAJyjnY01O9OtgczP9nZZfDVPobYdx0', '2021-07-08 05:54:43'),
('abc12@yopmail.com', '7rXRj7MYlRhLX0xNxI9TNEYYlOIFCWjAilVldcG4EWo1ZXCwRq8oQmboVDBbmPyp', '2021-07-08 05:55:10'),
('abc12@yopmail.com', 'tdbnVTAbLQCrssekQW0zfeujoWoE8hz2TYuCLeixtJpm9pCudXjOM8LyVjvXwrnY', '2021-07-08 05:56:49'),
('abc12@yopmail.com', 'oKXnZ8oy4v2LK1JkUQOaN9mKrs9CfNoaYPcELFP50CdUY16tgA69SYe0uMyPZmYx', '2021-07-08 05:57:26'),
('abc12@yopmail.com', 'E52WAgKfH8wDxJ29ooZsW5d6zvVI9mwwBRnYGVzsqwMOiwnRPineFYROAYSat5Te', '2021-07-08 06:01:46'),
('abc12@yopmail.com', 'YrK705iEZpNd88cdt37D2O7rm2aBz7IQmhlHWqNY7lclz1taDlVNjDBPlieL5cX2', '2021-07-08 06:13:53'),
('abc12@yopmail.com', 'uD7TxDOs4cRNQJ6U5oxrXK22zLUqdnY91GYORhWYPlKuRRjbG1y9kVoJmShzcxlK', '2021-07-08 06:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'abc', 'koko', 'ju@yopmail.com', '$2y$10$/erYuxm9LtEJjuhcN.eUkum8TthaST88nJZlqIAq.Gm8.0TZsDGyS', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, NULL, '0', '1', NULL, NULL, '2021-07-07 06:05:14', '2021-07-07 06:10:52', NULL),
(4, 'abc', 'koko', 'abc@yopmail.com', '$2y$10$hGb8ktQkQ3fWwhAGu3Mxz.xhfecICiYi3cyO1ZMm/ObZHDNvgWb.W', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'CTJXk88qsVNoPC2KowLULlzhX7VMAWpqpEaXa316D5z8YoX2hW6lE4Nr61Dhp5TG', '0', '0', NULL, NULL, '2021-07-07 22:55:38', '2021-07-07 22:55:38', NULL),
(5, 'abc', 'koko', 'abc1@yopmail.com', '$2y$10$aWVPWzeWiLxnbSGhRoxKS.fvXB4sxMscS9uqJAWLYAht..0inZjD6', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'OmmpChj4z5HPwTmqQYSCXu6OSIQt5T1cQKKAq5BqLhBuGiE9AMnjWZi57EHIvEbA', '0', '0', NULL, NULL, '2021-07-07 23:14:40', '2021-07-07 23:14:40', NULL),
(6, 'abc', 'koko', 'abc12@yopmail.com', '$2y$10$lnLnOX827Jgg.XnZlVL8GenjJjhRaTg1gwDUo1t24atxXC15vlGEe', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'UFAp0B3tlowx9QGNytDJY0tj1MjtKthmL0Gx7Jff7ttkuFkgXdB92qJSLOHecX10', '0', '1', NULL, NULL, '2021-07-07 23:26:01', '2021-07-08 06:25:35', NULL),
(7, 'abc', 'koko', 'abc2@yopmail.com', '$2y$10$nm8LnVZU9Tl9jd/1hPE6eunVdcRx38A4dR4w1EdDyZDTJV3LUvPnW', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'XQ7UyhNc3t4KnRGl07lw2tuErT2QBdJDm0XZu9y8sehrzn7T8BeKOKt14tZvPbq0', '0', '0', NULL, NULL, '2021-07-07 23:28:39', '2021-07-07 23:28:39', NULL),
(8, 'abc', 'koko', 'abc123@yopmail.com', '$2y$10$5hR4R23Ebj6cyOink3EW1.Y2bVPRhpwhZgYdLJIXYHGl/gWesiBlm', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, '2021-07-08 05:57:57', '2021-07-08 05:58:37', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
