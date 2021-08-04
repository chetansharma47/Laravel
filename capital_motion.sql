-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2021 at 01:15 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-10+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capital_motion`
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
(1, 'admin', 'adminn@yopmail.com', '$2y$10$MBraEhcMw7HZpPz4tR1hqOGCgo3E9fFKlyC/f.0.f99YFdlfvEUH6', '58vZlVUxVpirdwAX6zTkjVqS0oI5k4r25N4kWDgP8buTloe5KS2POWjyTqPUKjZp', NULL, '2021-08-04 02:11:57');

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
(1, '1', 1, 1, 'asfaf', '0803202105520316108d983170b7.png', 'Monday,Tuesday,Thursday,Wednesday,Friday', '2021-08-04', '2021-08-06', '19:16:00', '20:17:00', '100', 'Inactive', 'upload_icon.png', NULL, '2021-08-03 00:40:05', '2021-08-03 00:40:05'),
(2, '2', 1, 1, 'safsaf', 'asfasf.jpg', 'Monday', '2021-08-02', '2021-08-03', '02:00:00', '05:00:00', '10', 'Active', NULL, NULL, '2021-08-03 00:57:42', '2021-08-03 00:57:42'),
(3, '3', 1, 1, 'qwqwqwqw', '0802202113511916107f8577ae01.png', 'Monday', '2021-08-03', '2021-08-04', '23:01:00', '17:20:00', '23', 'Active', NULL, '2021-08-02 08:21:19', '2021-08-03 03:57:06', '2021-08-03 03:57:06');

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
('05d2a11426458320b3992163e062538fe9d11608ae234f23d60e8b5445771baa56958b9d45a4e877', 26, 1, 'andrew', '[]', 1, '2021-08-03 23:35:53', '2021-08-03 23:35:53', '2022-08-04 05:05:53'),
('114d4ea99993d6d507f86e93466f657f415288ed3a68758ee948e924891c65e9c0953ae7ad25349e', 24, 1, 'andrew', '[]', 1, '2021-08-03 07:34:36', '2021-08-03 07:34:36', '2022-08-03 13:04:36'),
('1ff77bb677a925b97c3d5fb57118310d3b5513a09e5bdb2c1a0004dedcbf352b40277018b723d214', 21, 1, 'andrew', '[]', 0, '2021-08-03 07:14:06', '2021-08-03 07:14:06', '2022-08-03 12:44:06'),
('2c4f38e22ae26818c8e4a5c708e42a30d6816a3ffcba245dce3f951c41290b2d7ea99cb74f8b583e', 20, 1, 'andrew', '[]', 1, '2021-08-04 00:02:44', '2021-08-04 00:02:44', '2022-08-04 05:32:44'),
('2c6f2f36223d1bed110de1dd1d538f09ed1e69d6976dbbec502804ed2e5da1c8693f6062c8119547', 26, 1, 'andrew', '[]', 1, '2021-08-04 02:05:47', '2021-08-04 02:05:47', '2022-08-04 07:35:47'),
('312a3e83193545734661d331aed6a51ddede3339d1936ea94b2b1dd4f1eba1ec0f3d745b56b1ee9e', 26, 1, 'andrew', '[]', 1, '2021-08-04 00:23:42', '2021-08-04 00:23:42', '2022-08-04 05:53:42'),
('3d539e3bb3b299c963ed71b3943450f0115d17e16f00893a0cfaae887392ee5c4ba3bef48cb95191', 20, 1, 'andrew', '[]', 1, '2021-08-03 06:10:53', '2021-08-03 06:10:53', '2022-08-03 11:40:53'),
('40171f267ed7a2a544cc3d21a03a1bfd1e125ef024ca05c0113fe6eeb41d94aca233a95565cdbca7', 19, 1, 'andrew', '[]', 0, '2021-08-03 05:27:06', '2021-08-03 05:27:06', '2022-08-03 10:57:06'),
('40a5cc3bc1f35a6d34ed306e59a8edbc0ff6d0184c4ac0dd1e294808a3f83b18f4ac6ea4aca16c7d', 20, 1, 'andrew', '[]', 1, '2021-08-03 07:17:47', '2021-08-03 07:17:47', '2022-08-03 12:47:47'),
('43c5697a84655df47632cf696c913467e94b7f250add10bde6285191dc7c874527987f7d174e81a0', 26, 1, 'andrew', '[]', 1, '2021-08-04 00:19:05', '2021-08-04 00:19:05', '2022-08-04 05:49:05'),
('48e3894d409220fd80c17ca4190d54f11adeafec9058f2a83f01fab62d7121d72b4f2509ab5e9b58', 26, 1, 'andrew', '[]', 1, '2021-08-03 23:37:47', '2021-08-03 23:37:47', '2022-08-04 05:07:47'),
('50f21052107d537da3cdb1a9d457909bde5d5551e669b8b0a2d842bc30aacf4f311b9a7d3403e91a', 20, 1, 'andrew', '[]', 1, '2021-08-03 05:51:23', '2021-08-03 05:51:23', '2022-08-03 11:21:23'),
('575a067ff5f2a4e31fb2c4cf02cf8d1eb1dfeaa3e64058a3b2d2574439684e768023e09e2635a531', 20, 1, 'andrew', '[]', 1, '2021-08-03 06:18:30', '2021-08-03 06:18:30', '2022-08-03 11:48:30'),
('5c1c8a58cf7006e93de9f6d8bf448e0dd71eebfb64d902be4556de1797fe282f7fd58e4a66d50bef', 27, 1, 'andrew', '[]', 1, '2021-08-04 00:50:05', '2021-08-04 00:50:05', '2022-08-04 06:20:05'),
('5c883b854ee60f3f8baba865c54439fbe3931d23dc82c1ac9b5333e9b732c146ee76105d4cefd333', 20, 1, 'andrew', '[]', 1, '2021-08-04 00:08:04', '2021-08-04 00:08:04', '2022-08-04 05:38:04'),
('5e6d69c58a3e2dc42a2224cd671c73d40b1bf8b04325d53a520fbbeb7adfb638d75f3b46ba122f22', 20, 1, 'andrew', '[]', 1, '2021-08-04 01:40:59', '2021-08-04 01:40:59', '2022-08-04 07:10:59'),
('62a76d81cd64617c8394e40c3a7df5d7bbc2887c46d3f32566368bdc4b7e1a7e0bc9e2346bad89f4', 20, 1, 'andrew', '[]', 1, '2021-08-03 23:43:45', '2021-08-03 23:43:45', '2022-08-04 05:13:45'),
('69426027a302f5390074bf6552724e70e1892555eaf4d9905f1943c7d0a3ef5ac8bb209a0e6c19e5', 27, 1, 'andrew', '[]', 0, '2021-08-04 00:50:54', '2021-08-04 00:50:54', '2022-08-04 06:20:54'),
('6db356997d43eaf628809bd64649dcba4fb64bf1e550fb68a65e4737eec074d4eda0a2417ef47465', 26, 1, 'andrew', '[]', 0, '2021-08-04 02:15:25', '2021-08-04 02:15:25', '2022-08-04 07:45:25'),
('6e5ff1cbe4409775482796004781820bbe4e649463bd5a23a76f54bbb20496b93d2a38e1e3db750a', 22, 1, 'andrew', '[]', 0, '2021-08-03 07:19:09', '2021-08-03 07:19:09', '2022-08-03 12:49:09'),
('6f6230cbfbb29c597752c1f5a3df6deca427f0c59a2cded4cd4c8651d1267c36d6797b06daefe538', 20, 1, 'andrew', '[]', 1, '2021-08-03 07:00:53', '2021-08-03 07:00:53', '2022-08-03 12:30:53'),
('7a0f2925b42f9481fbad1c1cb6ddf026bfeaf8ed678ddac15f94a2773b1c18acb6fbfc5239c58c02', 20, 1, 'andrew', '[]', 0, '2021-08-04 02:15:08', '2021-08-04 02:15:08', '2022-08-04 07:45:08'),
('7aa0c0326e35e85ad852b8c94013edfdfc314b4b816de0ae58e239bc46b0dd1e7c6f11ba4ce65868', 22, 1, 'andrew', '[]', 1, '2021-08-03 07:16:56', '2021-08-03 07:16:56', '2022-08-03 12:46:56'),
('7d87367b1a9e48dfce1154f8edfed773d6ad47bc7fe3b790d1f2e6bdc28f5525ddd46ad1715ea4b1', 20, 1, 'andrew', '[]', 1, '2021-08-03 05:41:00', '2021-08-03 05:41:00', '2022-08-03 11:11:00'),
('86e344b4471317ef5ea02662199b88be821654b65e3232ff4d538df0df4f36ca0adee57d4fba77c8', 20, 1, 'andrew', '[]', 1, '2021-08-03 05:55:39', '2021-08-03 05:55:39', '2022-08-03 11:25:39'),
('891ce269bdd47468c8c7d7379f75a383abc189c7175a4d874fb5a9f3833d64d435fa72efc4622dc6', 20, 1, 'andrew', '[]', 1, '2021-08-04 02:08:02', '2021-08-04 02:08:02', '2022-08-04 07:38:02'),
('8da56fadf896ff1205f7e5b135a1990dd1dc088fff604b336195f571f7e64945eaf39ba5296fa5f8', 26, 1, 'andrew', '[]', 1, '2021-08-04 01:23:14', '2021-08-04 01:23:14', '2022-08-04 06:53:14'),
('969dd1387b245b0b84c7d9d85e94945a05e8bfdca847d42cb553637c5e014edbd849ebd7c8a3a54a', 20, 1, 'andrew', '[]', 1, '2021-08-03 23:56:06', '2021-08-03 23:56:06', '2022-08-04 05:26:06'),
('99e65fd9a311be6a6084fda13a5753ab5ee691dfe87571c1d165a34b7de38c7a124ce26438887746', 17, 1, 'andrew', '[]', 0, '2021-08-03 01:00:37', '2021-08-03 01:00:37', '2022-08-03 06:30:37'),
('9d1224ffec8681e2fd6fe2daa8a4c1ffc850bd3b2d9fd49db51748d88150e94f52de53bb1598ea39', 20, 1, 'andrew', '[]', 1, '2021-08-04 01:30:46', '2021-08-04 01:30:46', '2022-08-04 07:00:46'),
('a657bb7a62e3f0aa7b93b5596e44ce12148280f2ab22265392aee46e7eeabf1ff89175d017254662', 26, 1, 'andrew', '[]', 1, '2021-08-04 00:20:22', '2021-08-04 00:20:22', '2022-08-04 05:50:22'),
('add1717c14154616926c142d6080ef5b1feda60dd02350bf7c2f546e3db43bf27bf286805a47bc2f', 22, 1, 'andrew', '[]', 1, '2021-08-03 07:15:34', '2021-08-03 07:15:34', '2022-08-03 12:45:34'),
('afffc81d4cf6c8af9634ccc0a23585a3cac53bc4ac23efc4514c8e7adb43a9e704dddb824c6fdf56', 2, 1, 'andrew', '[]', 0, '2021-07-23 02:24:04', '2021-07-23 02:24:04', '2022-07-23 07:54:04'),
('b2cd98c856b59ce7869a926ba3681f5d896c67f5e357197cdff08ac4bfe134deb2f34d9220478b75', 19, 1, 'andrew', '[]', 1, '2021-08-03 04:34:28', '2021-08-03 04:34:28', '2022-08-03 10:04:28'),
('b6c41ccb16e7e85c8d63d4eb983c12dc5565580983316a550773e187caf0a63b71550cd0f72129eb', 17, 1, 'andrew', '[]', 1, '2021-08-03 00:43:08', '2021-08-03 00:43:08', '2022-08-03 06:13:08'),
('bd819af719ba29d8dfafb9f0f4b325b29b84b368ca2ce217000588cbf66e64b849b0b3974bdd4ca7', 1, 1, 'andrew', '[]', 1, '2021-07-23 02:21:40', '2021-07-23 02:21:40', '2022-07-23 07:51:40'),
('c2cb957f6c712c7e9e12983e4cee54083657f9c6c9427f849016ede5d20ae7e65ec1f9bd443a0ae4', 20, 1, 'andrew', '[]', 1, '2021-08-03 06:01:57', '2021-08-03 06:01:57', '2022-08-03 11:31:57'),
('c3255ab7891d7575d9b18b3142c29d94cc426b45b96c4161658e1fe2c89d2a6d368ad984f1f248ba', 19, 1, 'andrew', '[]', 1, '2021-08-03 05:22:21', '2021-08-03 05:22:21', '2022-08-03 10:52:21'),
('c694cb511c85d5208eac07d24663829706f6932075157bd4a668e4f76289c47625784a4661614524', 25, 1, 'andrew', '[]', 0, '2021-08-03 07:39:33', '2021-08-03 07:39:33', '2022-08-03 13:09:33'),
('c78656abc2dfcd742495a634542f9f26d3265611b7bf6ca7bacf780092276a7913f2deaefc7a60c2', 20, 1, 'andrew', '[]', 1, '2021-08-03 05:45:09', '2021-08-03 05:45:09', '2022-08-03 11:15:09'),
('c7ecadee52706ecde56cae5ae5d00b5138afab9821142fef04617f6310ff6ccef2472d71094ae817', 20, 1, 'andrew', '[]', 1, '2021-08-04 02:12:52', '2021-08-04 02:12:52', '2022-08-04 07:42:52'),
('d22841a17439d3a5f9c6beff14baa022a5ff45fc37aeb4e5b31aadb30fc120005265e12626db5777', 23, 1, 'andrew', '[]', 0, '2021-08-03 07:24:49', '2021-08-03 07:24:49', '2022-08-03 12:54:49'),
('d507770d40d4c5c3b2a6339855711ca797c1aa56c59d091f3d4c2808f3242f151e66f316e308e781', 17, 1, 'andrew', '[]', 1, '2021-08-03 00:48:56', '2021-08-03 00:48:56', '2022-08-03 06:18:56'),
('d6b35c6151eed1b517394461b11f4a39627d40e20910cfdd4ae5fe3c6caafbd05dee96d02665668d', 20, 1, 'andrew', '[]', 1, '2021-08-03 06:29:59', '2021-08-03 06:29:59', '2022-08-03 11:59:59'),
('df5b900e4ec4a2ae008a99ff138b2d24b936405bc1d8cb705085483cdc6c3316167aa34af942744c', 1, 1, 'andrew', '[]', 0, '2021-07-23 02:31:24', '2021-07-23 02:31:24', '2022-07-23 08:01:24'),
('e349f14f86edfa333641ae4cb6c72921a0071775d7432ba7879ebdb820061e9d33d2f56741c96efa', 24, 1, 'andrew', '[]', 0, '2021-08-03 07:36:51', '2021-08-03 07:36:51', '2022-08-03 13:06:51'),
('e378bd3fddfe5374ef7f19191469ae250306df40b23467e4606ccfbff1b527e4140c014b2fd4bc73', 26, 1, 'andrew', '[]', 1, '2021-08-04 00:09:07', '2021-08-04 00:09:07', '2022-08-04 05:39:07'),
('e5065c394089ebc874fd55fd9eb6765d9d1b36c4270d912487949315e15582c9a71cc963c45df30b', 26, 1, 'andrew', '[]', 1, '2021-08-04 01:19:09', '2021-08-04 01:19:09', '2022-08-04 06:49:09'),
('e77adfc1cd2cba4fe1df1739788cf1ac820e15a630eb4531bf303cd6eeb2eb0c308d2b723808ec76', 17, 1, 'andrew', '[]', 1, '2021-08-03 01:00:05', '2021-08-03 01:00:05', '2022-08-03 06:30:05'),
('ebaf53b243fc0cf5546b5bb0271822837abd2e524991711bae39a2762081706a7fa9c143a9ee6762', 17, 1, 'andrew', '[]', 1, '2021-08-03 00:42:14', '2021-08-03 00:42:14', '2022-08-03 06:12:14'),
('ebba7170e253582682eb1c5c0fde61c6c0a128bea6d0d2662a881ec0f3a06f3246d140957bd5bee3', 18, 1, 'andrew', '[]', 0, '2021-08-03 04:31:39', '2021-08-03 04:31:39', '2022-08-03 10:01:39'),
('ef83f4fea4ffe8857402b752e85e6227dda9424abc31df4bebe74627040bf987c8eda3c1e61e7bce', 26, 1, 'andrew', '[]', 1, '2021-08-04 00:40:43', '2021-08-04 00:40:43', '2022-08-04 06:10:43'),
('ff94ccad8c93cb6d1a4194b6a77a9d7db6b0ed57b336f7d227d3313efb0a6d7493afd9a4977a3f97', 20, 1, 'andrew', '[]', 1, '2021-08-03 05:41:27', '2021-08-03 05:41:27', '2022-08-03 11:11:27');

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
(5, '+971', '546642586', '5195', '2021-08-03 04:30:20', '2021-08-03 04:30:20'),
(7, '+971', '565576866', '7964', '2021-08-03 04:33:40', '2021-08-03 04:33:40'),
(17, '+91', '8556025369', '4214', '2021-08-03 04:45:42', '2021-08-03 04:45:42');

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
('test@yopmail.com', '8IJG37HV7ZW2n6v66nJjb568o9i2qMuF8Ct8USfXmmXiVqTLBmXm3FhlBkxyEV12', '2021-08-03 00:49:39');

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
(3, '3', 1, 'Silvert', 1, 500, '#0cbb61', 10, '2021-08-03 01:14:16', '2021-07-29 01:30:07', '2021-08-03 01:14:16'),
(4, '7', 1, 'Test', 20, 30, '#ff0000', 0, '2021-08-03 04:03:42', '2021-08-03 02:22:31', '2021-08-03 04:03:42'),
(5, '5', 1, 'Test Tier 1', 50, 70, '#ff0000', 0, '2021-08-03 03:18:59', '2021-08-03 02:23:25', '2021-08-03 03:18:59'),
(6, '6', 1, 'sQ', 0, 1, '#ff0000', 0, NULL, '2021-08-03 04:04:01', '2021-08-04 01:57:24'),
(7, '9', 1, 'ewe', 15, 16, '#ff0000', 0, '2021-08-04 00:44:40', '2021-08-03 04:04:10', '2021-08-04 00:44:40');

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
(1, 1, 30, 30, NULL, '2021-07-23 02:18:57', '2021-08-04 01:13:53');

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
(1, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '1', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-08-03 06:32:58', NULL),
(2, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '1', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-29 01:32:44', NULL),
(3, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '1', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-08-03 06:32:58', NULL),
(4, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '1', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-29 01:32:44', NULL),
(5, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '1', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-08-03 06:32:58', NULL),
(6, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(7, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '1', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-08-03 06:32:58', NULL),
(8, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(9, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '1', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-08-03 06:32:58', NULL),
(10, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(11, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '1', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-08-03 06:32:58', NULL),
(12, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(13, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '1', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-08-03 06:32:58', NULL),
(14, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'abc2@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(15, '0723202107514060fa750c22873.png', '+91', '16516511545', 'lpe', 'lo', 'abc1@yopmail.com', '$2y$10$FIlNFNG1RZMSjY3JRTG0vOhahKPY6/RPMZFhr.WW3Ah8bivyJMv8m', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'jnYu0hu9G384mwaQu3N6wZEzCgG9YTHkjUHE2BWPFpq2aXDKmVJKqEjosKLbWczr', '0', '1', NULL, NULL, 'Inactive', 40551173578, 'ab', NULL, NULL, '2021-07-23 02:21:40', '2021-07-28 07:21:57', NULL),
(16, '0723202107540460fa759cbb56c.png', '+91', '1234567890', 'fsdfdsfdfjffghfgh', 'dfs', 'ggg@yopmail.com', '$2y$10$JU7vFu5UPuazyR1fgtqLbOjgrsf74CKilVwIrSf5P2rTbVBaYl0ga', 'Mohali', 'vvbb', '2012-12-12', 'Male', '40551173578', 'None', NULL, NULL, 'mfl8RAz1Y6eDIBCQ3kOLcpcNkalyUtHnlDlnWM8wME0IPixTRnvJnb3CqLa9jbGW', '0', '1', NULL, NULL, 'Active', 13652686819, 'ab', NULL, 'lpe lo', '2021-07-23 02:24:04', '2021-07-28 07:21:57', NULL),
(17, '080320210612146108de3e5a6b1.jpeg', '+971', '546886453', 'trjjjy', 'try', 'test@yopmail.com', '$2y$10$7CX20OAUVUemJqidZpBtieoRYReIn6mr.vBpzTS0WXdanN7VL3c62', 'Abu Dhabi', 'Afghanistan', '2005-08-03', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '1', '1', NULL, NULL, 'Active', 99364351825, 'sQ', NULL, NULL, '2021-08-03 00:42:14', '2021-08-04 01:57:24', NULL),
(18, NULL, '+971', '546642586', 'foo', 'chi', 'rm@gj.Ben', '$2y$10$p43qtAevmHU9xOOA93FCvubMFIEJL9G1lkOBoIRwRWCDn0U2APeFS', 'Abu Dhabi', 'Afghanistan', '2003-08-03', 'Male', NULL, 'None', NULL, NULL, '5iDlHVP5B6lIIjUo5aDU6qWoFNIRW48sVWh2tIWfa231ToPAIXVJKn5xKhvCvKw4', '1', '0', NULL, NULL, 'Inactive', 59840373745, 'sQ', NULL, NULL, '2021-08-03 04:31:39', '2021-08-04 01:57:24', NULL),
(19, NULL, '+971', '565576866', 'can', 'he', 'aa@yopmail.com', '$2y$10$Wrh637a9uTvaCsY.5t150e3t2j3RFOarGDEt6dBFgKWGvkl/KCy16', 'Abu Dhabi', 'Afghanistan', '1995-08-03', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '1', '1', NULL, NULL, 'Active', 74991065220, 'sQ', NULL, NULL, '2021-08-03 04:34:28', '2021-08-04 01:57:24', NULL),
(20, '08032021111100610924445ea89.jpeg', '+971', '501234567', 'John', 'devil', 'john@yopmail.com', '$2y$10$F/7W7CCBR7DPAZbpQI4ze..mzSXwESxDUazRXlZA8OAE89hH5NTui', 'Abu Dhabi', 'Afghanistan', '2001-08-03', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 20957020017, 'sQ', NULL, NULL, '2021-08-03 05:41:00', '2021-08-04 01:57:24', NULL),
(21, NULL, '+91', '16516511', 'abc', 'koko', 'abc1234@yopmail.com', '$2y$10$AQyVO.Fg3azVhgvLYFx97O2PjjsRrJ9oFn878WF.vbfeKraOiTLyW', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'hdMID7dBE67s8TpWEgkFi1uiQSI7YDes1NtfakeSaKlpCUW6vkkWvHL7vuasqOeX', '0', '0', NULL, NULL, 'Inactive', 63397712489, 'sQ', NULL, NULL, '2021-08-03 07:14:05', '2021-08-04 01:57:24', NULL),
(22, NULL, '+971', '506556945', 'tugged', 'gym', 'dd@yopmail.com', '$2y$10$lgtBVETD54Nm0ycpKmo99u/8DRFt73tPrITM.s2OwmK7MLU425oRi', 'Abu Dhabi', 'Afghanistan', '1999-08-03', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 85475246368, 'sQ', NULL, NULL, '2021-08-03 07:15:34', '2021-08-04 01:57:24', NULL),
(23, NULL, '+91', '955656545', 'abc', 'koko', 'abc323@yopmail.com', '$2y$10$nPDx9rf2ziq5JSk/wnd9d.JgdHi7MgDdbNH94oHD4TNFbOWTW.Z3y', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, '3G2EWIrDxV0mhwuYvhftdqnX9tUpLIy81uqHptrMv2AQGU4Up0OoOjlRmSyrDQoN', '0', '0', NULL, NULL, 'Inactive', 99467059243, 'sQ', NULL, NULL, '2021-08-03 07:24:49', '2021-08-04 01:57:24', NULL),
(24, NULL, '+91', '7351333354', 'xghxxh', 'gdhxhd', 'dev1@yopmail.com', '$2y$10$WF4gGNPm27dDbsEHHJONvuMyeFMSDQNU4CpjPB/0UwG7qu2q/Vwwu', 'Ajman', 'Croatia', '2004-08-03', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, 'Active', 30381875622, 'sQ', NULL, NULL, '2021-08-03 07:34:36', '2021-08-04 01:57:24', NULL),
(25, '080320211309336109400d3e64a.jpeg', '+971', '505674558', 'ghffy', 'ghhhh', 'ty@yopmail.com', '$2y$10$gN4wOe8uuA8usY1.Iu9SbOyMCJhiQDPbFNYO8ilJwnZ2KwGAdSgPK', 'Abu Dhabi', 'Afghanistan', '2005-07-03', 'Male', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Inactive', 59766120979, 'sQ', NULL, NULL, '2021-08-03 07:39:33', '2021-08-04 01:57:24', NULL),
(26, '08042021050552610a2030a2707.jpeg', '+971', '501234568', 'gizzard', 'hiccup', 'sg@yopmail.com', '$2y$10$oSpuuVJQn1cg0GrQXW/Pa.mPUklspFOPHIWr/R2vIBuVfKUCbMjlS', 'Abu Dhabi', 'Afghanistan', '1992-08-04', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 10813050196, 'sQ', NULL, NULL, '2021-08-03 23:35:52', '2021-08-04 01:57:24', NULL),
(27, NULL, '+91', '8146961822', 'dev2', 'user', 'dev2@yopmail.com', '$2y$10$V0e4X3879K.p1cZG6.YVb.7rBFbgs1EcJQ6tYlxv7oE3VN6vjS.Km', 'Ajman', 'Albania', '2004-08-04', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, 'Active', 33580845035, 'sQ', NULL, NULL, '2021-08-04 00:50:05', '2021-08-04 01:57:24', NULL);

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
(1, 1, 'abc', '123456', 'Venue1', 'Active', 'Nokia', '11:250:11:00', 'Unauthorized', '2021-07-29 15:54:00', NULL, '2021-08-03 06:58:09', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
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
