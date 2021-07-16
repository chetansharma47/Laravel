-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2021 at 05:21 PM
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
(1, 'admin', 'adminn@yopmail.com', '$2y$10$nbvTNJDjH6yIpVurSdVaOOeYAyIi8spa8oc.cNpx7mp4/oCV679A6', 'fOfV97DGdWixUWXsBv7Qltieb6FYQudVrEAemjKwy13ct9BbomBBbdJZLXpDPCNG', NULL, '2021-07-15 04:12:00');

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
(19, '2021_07_13_091013_create_tier_conditions_table', 4);

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
('06673e285956d464b30a22268059dd8d17cfce27127b73d37d7f56b19fcc65567830c2ae8e629f69', 5, 1, 'andrew', '[]', 1, '2021-07-14 06:46:08', '2021-07-14 06:46:08', '2022-07-14 12:16:08'),
('073124e14e299f5ca49bb84f9626befefcb4d3266a262a07d9bc664ee612cead930fca931c100ced', 35, 1, 'andrew', '[]', 1, '2021-07-15 05:58:47', '2021-07-15 05:58:47', '2022-07-15 11:28:47'),
('096e19a2ebcbf689191eaea156ca04f03e381ce225ce6dc0d4fd37f75c611467e84aee4a6437cb9d', 20, 1, 'andrew', '[]', 1, '2021-07-14 23:32:17', '2021-07-14 23:32:17', '2022-07-15 05:02:17'),
('0a79659358b0d2baa391d1c95ef46d335702667f84faeaeb623e604cee37ce19aede7ea23c86e92f', 19, 1, 'andrew', '[]', 1, '2021-07-14 23:34:10', '2021-07-14 23:34:10', '2022-07-15 05:04:10'),
('0d0c996235c8350a52571acfd12579412987ead2f2c37b677054c298fb1ea814961a83d8fcb0f5b9', 3, 1, 'andrew', '[]', 0, '2021-07-14 07:21:26', '2021-07-14 07:21:26', '2022-07-14 12:51:26'),
('0d1fad6f2dd8a355c35067792ad822be07e09eb75ce38cbe992e75fea9de1690f83af692f4032bc5', 18, 1, 'andrew', '[]', 1, '2021-07-14 23:04:16', '2021-07-14 23:04:16', '2022-07-15 04:34:16'),
('0e186372ae4d2c2f784ae0799ad9e6a5e1b26586ddc7542e95cb03c159d3bcb406e574cbb33f7e75', 3, 1, 'andrew', '[]', 1, '2021-07-14 07:17:27', '2021-07-14 07:17:27', '2022-07-14 12:47:27'),
('12a07db142c8a7c8d8364a1084e768dc976d3fee726fd7937c2f8ce86d07f0588e068faf3725c53f', 27, 1, 'andrew', '[]', 0, '2021-07-15 01:54:08', '2021-07-15 01:54:08', '2022-07-15 07:24:08'),
('145e82d869708e826b8a794f9e3698e8e86dd8e13032bf9acb32370a555c12e97343b10dc87372f8', 19, 1, 'andrew', '[]', 1, '2021-07-15 05:20:13', '2021-07-15 05:20:13', '2022-07-15 10:50:13'),
('15099b67a25820b9b0b144163982f3ccb2345ce385c3e6640dd93daebac906de5656e12560e2277f', 4, 1, 'andrew', '[]', 0, '2021-07-14 06:40:10', '2021-07-14 06:40:10', '2022-07-14 12:10:10'),
('156457ac74d5c246957f722191cdadea08e37e8dd3addc915d6a6c4dc4ec31d0ba6d535e7548984c', 19, 1, 'andrew', '[]', 1, '2021-07-14 23:07:31', '2021-07-14 23:07:31', '2022-07-15 04:37:31'),
('16f8f4f975041670dab6b1dbffe04a071f17710a7062013bc3aecabb0a0c6e14c5f28220ad4024ca', 25, 1, 'andrew', '[]', 1, '2021-07-15 01:22:56', '2021-07-15 01:22:56', '2022-07-15 06:52:56'),
('177d3dac0ccbe9a5eb5b02a64f3bca595ad2bf6b33fe39fcb4848985692907848227c7a269e43212', 32, 1, 'andrew', '[]', 0, '2021-07-15 05:19:55', '2021-07-15 05:19:55', '2022-07-15 10:49:55'),
('1b2c4bf1971ceda45c528192b1111676b5ca8c4aae9900bc6042989aa84ef99d69a90be33d88fcb5', 12, 1, 'andrew', '[]', 1, '2021-07-14 07:09:13', '2021-07-14 07:09:13', '2022-07-14 12:39:13'),
('1b83021a863a101e4d1105b50015e5af3105a6466bc7465ee63502bc9806e24d0015f9f056789f9d', 29, 1, 'andrew', '[]', 1, '2021-07-15 01:59:56', '2021-07-15 01:59:56', '2022-07-15 07:29:56'),
('1c4078a2e9029ee312deae45d081bbd364f5230cab524552e854951c99ee1651ca8b27fce5f329d4', 29, 1, 'andrew', '[]', 0, '2021-07-15 02:00:52', '2021-07-15 02:00:52', '2022-07-15 07:30:52'),
('1c4d9fdc890096fa8a46eae158f3c3a757ca1fc814d0aaed8c6e9548c00c3ae20413c52d4726637c', 11, 1, 'andrew', '[]', 0, '2021-07-14 07:05:45', '2021-07-14 07:05:45', '2022-07-14 12:35:45'),
('1f40ca17f2d3399aef70cdfd68db8fd5ce8c956211b090a80a4827e8dfd2f798c430992175d1cbe9', 19, 1, 'andrew', '[]', 1, '2021-07-15 05:37:09', '2021-07-15 05:37:09', '2022-07-15 11:07:09'),
('20481ba1668d9de9ced5f637e1495f04694a7ebdf03695361e59c4e7fdf5bbbcccdbcd36d74187e8', 17, 1, 'andrew', '[]', 1, '2021-07-14 22:59:46', '2021-07-14 22:59:46', '2022-07-15 04:29:46'),
('2156acf2025a15a6d304629e69be7345609d359b5204e942f6e7809f22c7fe30a388a560d50004fe', 16, 1, 'andrew', '[]', 1, '2021-07-14 22:51:12', '2021-07-14 22:51:12', '2022-07-15 04:21:12'),
('222af0da778478132f4d3efe3189a36bc62ae214cd9dc3b6ddc07df96fcc97f08c7202120b7f5f0e', 30, 1, 'andrew', '[]', 1, '2021-07-15 04:52:43', '2021-07-15 04:52:43', '2022-07-15 10:22:43'),
('254807ad51a0d03cda25c0f31b7462ad6280d4f9a23cb43c97a38301df01583bab452afa59006f6a', 34, 1, 'andrew', '[]', 0, '2021-07-15 05:38:26', '2021-07-15 05:38:26', '2022-07-15 11:08:26'),
('27ddf9b2dfab8f39e40e65ba5de1c6d4558cbdcd0e4f00a5fabf7b4ea757306275c2af0910e0021e', 18, 1, 'andrew', '[]', 0, '2021-07-14 23:06:17', '2021-07-14 23:06:17', '2022-07-15 04:36:17'),
('3177357427ca6312c97750e7e37cfab3abbf3fecbcae8b5f5d1ce5d26b41f30368a9ecaa2446596a', 31, 1, 'andrew', '[]', 1, '2021-07-15 05:17:49', '2021-07-15 05:17:49', '2022-07-15 10:47:49'),
('321dcfc1b95719b1c057c7b64bef491eac64cbab89f3c0fa44596c7bcb7158bb69a6053fac8ebb27', 20, 1, 'andrew', '[]', 0, '2021-07-14 23:33:21', '2021-07-14 23:33:21', '2022-07-15 05:03:21'),
('331440d19737d2dc4820f8f5fef9c74b6d453bceb87a29aeacfe9bfdb3b84733945f921a4b2ef5a5', 7, 1, 'andrew', '[]', 0, '2021-07-14 06:53:33', '2021-07-14 06:53:33', '2022-07-14 12:23:33'),
('3528c70e0109d4b273efbc6f4585e27005c997f8336a25d9593637356d5c8efb144cfa66f863a8df', 33, 1, 'andrew', '[]', 0, '2021-07-15 05:36:23', '2021-07-15 05:36:23', '2022-07-15 11:06:23'),
('362e45bd435bd66ce9df042320e839a3390a66b55e242fe2bcd8f1ea7739af4f8a141a1a43535170', 16, 1, 'andrew', '[]', 1, '2021-07-15 03:24:27', '2021-07-15 03:24:27', '2022-07-15 08:54:27'),
('3a0d19817543675d3d59ae0267aec5c4ca8747b0450bcbd87736d0879eda88eed23b0a90ec33baaf', 35, 1, 'andrew', '[]', 0, '2021-07-15 06:13:04', '2021-07-15 06:13:04', '2022-07-15 11:43:04'),
('3c37006eb96e0df9e28f45af93cf690688d219d73ef0efaee0d660ba5b57146d2de63b117919ede4', 5, 1, 'andrew', '[]', 1, '2021-07-14 06:44:00', '2021-07-14 06:44:00', '2022-07-14 12:14:00'),
('40cd81d1c8453c7ede6e0e61efe03668166d66cb3a70d6c4628ef76e384a74d433e194f89fa6c2e4', 20, 1, 'andrew', '[]', 1, '2021-07-14 23:17:56', '2021-07-14 23:17:56', '2022-07-15 04:47:56'),
('42b0008cd5bea224363ffe0217f52a93bc1eb9a723837952c079a2dbaea3a70445955e0ed89fbdab', 13, 1, 'andrew', '[]', 1, '2021-07-14 07:56:06', '2021-07-14 07:56:06', '2022-07-14 13:26:06'),
('4600d4015d135fc75576079a5d013eea2fa4666b05d464ebc780c55cb48f177eeb4a678a81e22c63', 36, 1, 'andrew', '[]', 1, '2021-07-15 06:03:57', '2021-07-15 06:03:57', '2022-07-15 11:33:57'),
('4c8f33a4952c801d199a4aa974325d1a507c44b0bef7c52260b58b3f46abd57d599e882f69257d8f', 31, 1, 'andrew', '[]', 1, '2021-07-15 05:16:55', '2021-07-15 05:16:55', '2022-07-15 10:46:55'),
('515e10789b7ba2150b29c0af1e5261a7659a474381306e18d7cabc05c668e4b0521af0f08068bfa5', 14, 1, 'andrew', '[]', 0, '2021-07-14 07:45:05', '2021-07-14 07:45:05', '2022-07-14 13:15:05'),
('51892f6da34db4df26bf50f83c516ee5bc446fd0c23a0558364bc9d92a9cd93b8f69515a079c9aa8', 30, 1, 'andrew', '[]', 0, '2021-07-15 05:07:06', '2021-07-15 05:07:06', '2022-07-15 10:37:06'),
('55ca5ad9c05b75ebf150114abfd79b26781aa05624df6e0381402e520b39f8d27a962d1a37cd9609', 13, 1, 'andrew', '[]', 1, '2021-07-14 07:45:40', '2021-07-14 07:45:40', '2022-07-14 13:15:40'),
('590ea26f719669cccdc4931a06d39d76fae14641c6590abe8b283d047f51f8c868b9fea2e613ac9e', 16, 1, 'andrew', '[]', 1, '2021-07-14 22:51:40', '2021-07-14 22:51:40', '2022-07-15 04:21:40'),
('5a8efa9bd1a6240843e6e13c6ce987c49685e334890e0034227568d08a46a05fd57cd1a3f6c8bea6', 35, 1, 'andrew', '[]', 1, '2021-07-15 05:59:59', '2021-07-15 05:59:59', '2022-07-15 11:29:59'),
('5acd6217c9cbaddb2d6b8e86dd9e2d055ef6cb122aeac54f5555b9f7be54254c9a96c8d2a19d9552', 1, 1, 'andrew', '[]', 0, '2021-07-14 06:33:55', '2021-07-14 06:33:55', '2022-07-14 12:03:55'),
('5bd2da69f5b455f5778e6612ad50fb0ddd5b7129caf4cc2c61868b1cd13beb7b175575f6338a7289', 12, 1, 'andrew', '[]', 0, '2021-07-14 07:09:54', '2021-07-14 07:09:54', '2022-07-14 12:39:54'),
('5eefaa73063143c4b1fd0d394a30e643a9ee2bfd13d21f06f0d9cf3176f03635fcbb10b6cc2c2fed', 16, 1, 'andrew', '[]', 1, '2021-07-15 03:18:27', '2021-07-15 03:18:27', '2022-07-15 08:48:27'),
('65d585e571089a17d9ab8d3c51d9fd46d76d0218c255972841ec980991d44c8b2c4cf95d086dc707', 28, 1, 'andrew', '[]', 0, '2021-07-15 01:55:35', '2021-07-15 01:55:35', '2022-07-15 07:25:35'),
('6c44566735cf576147b3b5ee633ad809c24ba5ceeb8d4090b388934e7db61b1a587b5b17af62d497', 15, 1, 'andrew', '[]', 1, '2021-07-14 23:25:43', '2021-07-14 23:25:43', '2022-07-15 04:55:43'),
('6d4c98b2bfd80e3152d9b4331ff87e6471609c8025403b7700c24a84df2134a22204b3b0768fa11a', 36, 1, 'andrew', '[]', 0, '2021-07-15 06:04:46', '2021-07-15 06:04:46', '2022-07-15 11:34:46'),
('6e72b089b4b7299a488e3ba4274b81b50046e30f725abdffadaf99dda7e7c7f1701456c61303e0a4', 6, 1, 'andrew', '[]', 0, '2021-07-14 06:46:01', '2021-07-14 06:46:01', '2022-07-14 12:16:01'),
('6ead1a919fd2bf7c7639846053a3586479c1eb015d5cd3ea995e3a9724c4a49c261598f27987dd11', 3, 1, 'andrew', '[]', 1, '2021-07-14 06:45:33', '2021-07-14 06:45:33', '2022-07-14 12:15:33'),
('6ead35d809e0ba460f4a8a3365b9603f3fb4e1cc7b9b158d7c0aab77a28c692fb36702b691394838', 24, 1, 'andrew', '[]', 0, '2021-07-15 01:04:47', '2021-07-15 01:04:47', '2022-07-15 06:34:47'),
('73443fcec3c22444c91c87d771f88c07debf0306af7b9b969ce04aade68c9481e53bbc6d6121c541', 26, 1, 'andrew', '[]', 0, '2021-07-15 01:41:08', '2021-07-15 01:41:08', '2022-07-15 07:11:08'),
('74af9002c34e06bf3a088a73d156463254372a901ff611347570462b651437ada39a79f2212b4b3c', 5, 1, 'andrew', '[]', 1, '2021-07-14 07:47:43', '2021-07-14 07:47:43', '2022-07-14 13:17:43'),
('7649fdd223b8cdf47e65f5ddbff6f0e3d1360f41ac458fbafe131203b4493813b396258358225604', 22, 1, 'andrew', '[]', 0, '2021-07-15 00:36:31', '2021-07-15 00:36:31', '2022-07-15 06:06:31'),
('78c207b1c53f03e0d54037a9cf9a7794d5fef01b1decbf9e7cff2c3e8314bb0cf52be2bbf39d8257', 19, 1, 'andrew', '[]', 1, '2021-07-15 05:37:04', '2021-07-15 05:37:04', '2022-07-15 11:07:04'),
('7ffe4e66bc99a0c346b21a2d13ce72024d44ef3d488242704ab3ebf008bd01a23756df001c03c8d1', 31, 1, 'andrew', '[]', 0, '2021-07-15 05:18:04', '2021-07-15 05:18:04', '2022-07-15 10:48:04'),
('820c63264460b17c51f7e4474afc7c2722d78a28f5032667d11a9fa266ab48913708fad7047d9a7c', 23, 1, 'andrew', '[]', 0, '2021-07-15 00:39:36', '2021-07-15 00:39:36', '2022-07-15 06:09:36'),
('82a4e59a85e7209b106ff60480e073e4e5b602c799a53a384cfdc00bc3e240a1e69ff8facfb32df6', 3, 1, 'andrew', '[]', 1, '2021-07-14 06:36:16', '2021-07-14 06:36:16', '2022-07-14 12:06:16'),
('86fef53578ca00831da86e8416f64606fb6cf677d216d2f46e10dfdd56356e7d33ac1f4a1bd55fd6', 13, 1, 'andrew', '[]', 0, '2021-07-14 07:56:27', '2021-07-14 07:56:27', '2022-07-14 13:26:27'),
('88cbeee3c827da88e3221828425a0890a0975c2172f0b5597cf67f8fd33e706636a45f9edae6ee24', 5, 1, 'andrew', '[]', 1, '2021-07-14 07:46:01', '2021-07-14 07:46:01', '2022-07-14 13:16:01'),
('88d762a15dce79bdae44aec2b8c9ef97466ac652209fd482a2f09075519a7a6e6eb5a8c906312dd5', 3, 1, 'andrew', '[]', 1, '2021-07-14 06:37:07', '2021-07-14 06:37:07', '2022-07-14 12:07:07'),
('899d4a2be8a781c53029f44cbbd550498b51a4398514b99199e34930ce3992985b0dfc6a48ddadde', 16, 1, 'andrew', '[]', 0, '2021-07-15 03:41:15', '2021-07-15 03:41:15', '2022-07-15 09:11:15'),
('8bd8a7a6bd651024193799caab409097ed93c2fb5a4aa3bf64460d0088dff2be3d87c167574bd4b4', 19, 1, 'andrew', '[]', 1, '2021-07-15 00:24:01', '2021-07-15 00:24:01', '2022-07-15 05:54:01'),
('8dcc7f6833b988c14463adccbae5dbb040137fe7dd316805d4abdf75a2a15138a5dbf8177aa9e802', 13, 1, 'andrew', '[]', 1, '2021-07-14 07:43:32', '2021-07-14 07:43:32', '2022-07-14 13:13:32'),
('8f8e58df78fa4afed6c93537903034c4a94c43384b149bb885ce1fe7755d4cdc560eb6cc83e2511d', 17, 1, 'andrew', '[]', 0, '2021-07-14 23:00:15', '2021-07-14 23:00:15', '2022-07-15 04:30:15'),
('9015485ddff133d89d73d7884a655c0aa640cdf456b946ce7490df5dc8ba2750a0dfcc615ee38957', 16, 1, 'andrew', '[]', 1, '2021-07-15 00:07:14', '2021-07-15 00:07:14', '2022-07-15 05:37:14'),
('927eca8b94813c6b25236d77fec5a4ae4142cef6989fe381d40b2e6d43b64f40b60905126852521d', 19, 1, 'andrew', '[]', 1, '2021-07-15 04:17:08', '2021-07-15 04:17:08', '2022-07-15 09:47:08'),
('92b7955ea85282cd995a3ecb9dd3bee61fad821ab1ae03d0c83ecc9b05929336f64fbf45cb8e2454', 10, 1, 'andrew', '[]', 0, '2021-07-14 06:58:43', '2021-07-14 06:58:43', '2022-07-14 12:28:43'),
('9319a00fb67bff133f4aff9a62c4a13a6d69710621a63f6d5f8039ab73e55aab05fd4a3545d3fe6a', 13, 1, 'andrew', '[]', 1, '2021-07-14 07:48:58', '2021-07-14 07:48:58', '2022-07-14 13:18:58'),
('97e4ea55258aea6f2bb9c8ec9067e4e495f6bffe2f2b10bdc57609d89fdac5e61b824299501ca643', 8, 1, 'andrew', '[]', 0, '2021-07-14 06:53:33', '2021-07-14 06:53:33', '2022-07-14 12:23:33'),
('99d5683415859dcc1dd6f6f6d142bc7e528a010b3c66479f03b1b953b5d6d40e451da28fabe67891', 16, 1, 'andrew', '[]', 1, '2021-07-15 01:49:22', '2021-07-15 01:49:22', '2022-07-15 07:19:22'),
('a144c074ae6fa09f534eb7d7cd3f22ebfe5da124d520ff20254cf3f4260abebc3167620456fb792a', 6, 1, 'andrew', '[]', 1, '2021-07-14 06:45:25', '2021-07-14 06:45:25', '2022-07-14 12:15:25'),
('a2756c540462e1084e54ae2cdc6cf24c605983084f8f096a3bacfa354f48f0b2f8ec72ab2df3d529', 19, 1, 'andrew', '[]', 1, '2021-07-15 04:53:55', '2021-07-15 04:53:55', '2022-07-15 10:23:55'),
('a8812ec3f68efbf67c528dfd691d6329c1d03401711190d99ed06a3cfedfcc35f26ec328cc114e98', 13, 1, 'andrew', '[]', 1, '2021-07-14 07:38:41', '2021-07-14 07:38:41', '2022-07-14 13:08:41'),
('aacde6966473614ff6992e7686ce7f57a8b5d0b8a4593341ec4621f8930ee46d4f4ea13394da3853', 30, 1, 'andrew', '[]', 1, '2021-07-15 04:50:41', '2021-07-15 04:50:41', '2022-07-15 10:20:41'),
('b3d2d206d1f9e28787bde7fc3143152e9295e463ff2b6faa3af7c1faff92a869fcd8e023b6b2ba51', 15, 1, 'andrew', '[]', 1, '2021-07-14 22:49:11', '2021-07-14 22:49:11', '2022-07-15 04:19:11'),
('b8dadd788bd48e5211e1eaa7a2711ed2c0f08c8882f10372d628d5ff5635fd39a27f4a304a845d14', 27, 1, 'andrew', '[]', 1, '2021-07-15 01:53:21', '2021-07-15 01:53:21', '2022-07-15 07:23:21'),
('c288bb73191455e5ec4c407ae8e48273e7ff0d82b3b9b8c687cf6236a7b08544a62b02022ff31166', 34, 1, 'andrew', '[]', 1, '2021-07-15 05:37:41', '2021-07-15 05:37:41', '2022-07-15 11:07:41'),
('c4e037a03ea039510029d3806b542a651647a2852b42f9ba02407cdba69e85d8342e964fe5ef15ce', 19, 1, 'andrew', '[]', 1, '2021-07-14 23:08:53', '2021-07-14 23:08:53', '2022-07-15 04:38:53'),
('c6e7de37ae1a63a666245545f7ea3c9121e6e15ca9e04c15cb03a18d14ddc65dad23fcae2b93e048', 5, 1, 'andrew', '[]', 0, '2021-07-14 07:48:53', '2021-07-14 07:48:53', '2022-07-14 13:18:53'),
('cfe75792f9699e364b595e6c885c68c99ab64761809c72e560cfbbe81e0bc751b94b0d73ea48dfd7', 2, 1, 'andrew', '[]', 0, '2021-07-14 06:35:01', '2021-07-14 06:35:01', '2022-07-14 12:05:01'),
('d43e1011eb1f2f71f920e30936bee75d79a3d79a16f1dd51d41d97062b9987f455112a4953cfe8ed', 28, 1, 'andrew', '[]', 1, '2021-07-15 01:54:17', '2021-07-15 01:54:17', '2022-07-15 07:24:17'),
('d456b29caf1b812895a123001614678a12f1f68812e2e591614b0638f7d8b0bdfe05bf1ff1985d2b', 19, 1, 'andrew', '[]', 0, '2021-07-15 05:37:25', '2021-07-15 05:37:25', '2022-07-15 11:07:25'),
('da2333f305839171609e505084d2c7030df9f97ecc2da52d05d5c2e8101a69b84ece6b347268c10d', 37, 1, 'andrew', '[]', 0, '2021-07-15 06:09:46', '2021-07-15 06:09:46', '2022-07-15 11:39:46'),
('da43ccf1096b304350c53befd4703556e96c6ea40029325a4cd5c91f4f7c58112cef356dc13a6140', 21, 1, 'andrew', '[]', 0, '2021-07-15 00:03:10', '2021-07-15 00:03:10', '2022-07-15 05:33:10'),
('dd3756bd2e01cc40a4533d50d278d252ac026de26212bb3704bb40b7826308b921ed82c81da44c4e', 15, 1, 'andrew', '[]', 0, '2021-07-15 01:54:06', '2021-07-15 01:54:06', '2022-07-15 07:24:06'),
('e1415d2bf2a12d75a184c2123cdb68306a21333a37b927dd7ae224bbeff051de0d8ca00019aa8647', 9, 1, 'andrew', '[]', 0, '2021-07-14 06:56:37', '2021-07-14 06:56:37', '2022-07-14 12:26:37'),
('e56435ba88d6fd79e5d6a19b8b07b3c88c2b9af519acffc6e9ddaf1b8a9a3860729df708c1e04d0d', 25, 1, 'andrew', '[]', 0, '2021-07-15 01:33:59', '2021-07-15 01:33:59', '2022-07-15 07:03:59'),
('ea77e1730ed8afde1d227c71a04871c40c1f9d9c83d5181dbed35e8285791e59f6d19cd1dbd290a0', 13, 1, 'andrew', '[]', 1, '2021-07-14 07:48:03', '2021-07-14 07:48:03', '2022-07-14 13:18:03'),
('ec21f846aba17800273642f4eae9c1b418b7cab55df265b545682fcedf7ddd5149318933c3d294d2', 15, 1, 'andrew', '[]', 1, '2021-07-14 22:51:09', '2021-07-14 22:51:09', '2022-07-15 04:21:09');

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
(1, '+91', '466566565', '3736', '2021-07-14 06:29:04', '2021-07-14 06:29:04'),
(3, '+91', '8901009083', '3928', '2021-07-14 06:29:50', '2021-07-14 06:29:50'),
(4, '+91', '8901009083', '5435', '2021-07-14 06:29:56', '2021-07-14 06:29:56'),
(5, '+91', '8901009083', '3107', '2021-07-14 06:30:01', '2021-07-14 06:30:01'),
(7, '+91', '2654556575', '6143', '2021-07-14 06:31:24', '2021-07-14 06:31:24'),
(8, '+91', '2654556575', '3545', '2021-07-14 06:31:30', '2021-07-14 06:31:30'),
(9, '+91', '976565665', '1832', '2021-07-14 06:31:32', '2021-07-14 06:31:32'),
(10, '+91', '2654556575', '7601', '2021-07-14 06:31:41', '2021-07-14 06:31:41'),
(12, '+91', '2654558555', '9989', '2021-07-14 06:31:47', '2021-07-14 06:31:47'),
(13, '+91', '656566566', '8231', '2021-07-14 06:32:20', '2021-07-14 06:32:20'),
(15, '+91', '383868683', '3441', '2021-07-14 06:33:39', '2021-07-14 06:33:39'),
(17, '+91', '2654885345', '4549', '2021-07-14 06:34:22', '2021-07-14 06:34:22'),
(20, '+91', '8901009083', '1222', '2021-07-14 06:36:13', '2021-07-14 06:36:13'),
(21, '+91', '8901009083', '3846', '2021-07-14 06:36:23', '2021-07-14 06:36:23'),
(22, '+91', '8901009083', '5463', '2021-07-14 06:36:29', '2021-07-14 06:36:29'),
(23, '+91', '8901009083', '8042', '2021-07-14 06:36:35', '2021-07-14 06:36:35'),
(24, '+91', '8901009083', '4624', '2021-07-14 06:36:41', '2021-07-14 06:36:41'),
(25, '+91', '8901009083', '8422', '2021-07-14 06:36:50', '2021-07-14 06:36:50'),
(28, '+91', '65656566464', '5230', '2021-07-14 06:39:44', '2021-07-14 06:39:44'),
(30, '+91', '251518516161', '1160', '2021-07-14 06:45:41', '2021-07-14 06:45:41'),
(31, '+91', '91961916161', '2115', '2021-07-14 06:46:32', '2021-07-14 06:46:32'),
(32, '+91', '91234564581856', '9201', '2021-07-14 06:47:26', '2021-07-14 06:47:26'),
(33, '+91', '688855886633', '6125', '2021-07-14 06:49:43', '2021-07-14 06:49:43'),
(35, '+91', '948684684', '1542', '2021-07-14 06:51:27', '2021-07-14 06:51:27'),
(39, '+91', '5454664646', '4431', '2021-07-14 06:59:44', '2021-07-14 06:59:44'),
(41, '+91', '8956698866', '5697', '2021-07-14 07:04:18', '2021-07-14 07:04:18'),
(44, '+91', '4846645464', '8376', '2021-07-14 07:10:01', '2021-07-14 07:10:01'),
(45, '+91', '4846645464', '6385', '2021-07-14 07:10:07', '2021-07-14 07:10:07'),
(46, '+91', '4846645464', '6179', '2021-07-14 07:10:42', '2021-07-14 07:10:42'),
(48, '+91', '7997979797', '4937', '2021-07-14 07:17:47', '2021-07-14 07:17:47'),
(49, '+91', '325325325323', '6691', '2021-07-14 07:22:17', '2021-07-14 07:22:17'),
(50, '+91', '325325325323', '1368', '2021-07-14 07:22:19', '2021-07-14 07:22:19'),
(52, '+91', '2582882580', '9101', '2021-07-14 07:26:10', '2021-07-14 07:26:10'),
(53, '+91', '8901009081', '9929', '2021-07-14 07:26:43', '2021-07-14 07:26:43'),
(54, '+91', '8901009081', '7414', '2021-07-14 07:26:47', '2021-07-14 07:26:47'),
(55, '+91', '8652536800', '4339', '2021-07-14 07:27:41', '2021-07-14 07:27:41'),
(56, '+91', '8652536800', '2644', '2021-07-14 07:28:02', '2021-07-14 07:28:02'),
(57, '+91', '3213433154', '5673', '2021-07-14 07:35:02', '2021-07-14 07:35:02'),
(58, '+91', '3213213211', '7844', '2021-07-14 07:37:45', '2021-07-14 07:37:45'),
(59, '+91', '3693693693', '6379', '2021-07-14 07:46:27', '2021-07-14 07:46:27'),
(60, '+91', '3693693693', '4109', '2021-07-14 07:47:39', '2021-07-14 07:47:39'),
(61, '+91', '3693693693693', '5194', '2021-07-14 07:48:37', '2021-07-14 07:48:37'),
(62, '+91', '3693693693', '1258', '2021-07-14 07:48:48', '2021-07-14 07:48:48'),
(63, '+91', '3693693693', '2812', '2021-07-14 07:49:04', '2021-07-14 07:49:04'),
(64, '+91', '3693693693', '4998', '2021-07-14 07:51:08', '2021-07-14 07:51:08'),
(65, '+91', '25802580258', '3158', '2021-07-14 07:52:45', '2021-07-14 07:52:45'),
(67, '+91', '8907779660', '2147', '2021-07-14 07:54:41', '2021-07-14 07:54:41'),
(68, '+91', '9699696969', '4892', '2021-07-14 07:54:57', '2021-07-14 07:54:57'),
(69, '+91', '2582582582', '8806', '2021-07-14 07:55:06', '2021-07-14 07:55:06'),
(70, '+91', '9699696969', '6425', '2021-07-14 07:55:06', '2021-07-14 07:55:06'),
(72, '+91', '0000000000', '9830', '2021-07-14 08:11:28', '2021-07-14 08:11:28'),
(73, '+91', '0004994946', '6498', '2021-07-14 08:15:33', '2021-07-14 08:15:33'),
(74, '+91', '8708869252', '1065', '2021-07-14 08:17:04', '2021-07-14 08:17:04'),
(75, '+91', '9898646464', '9045', '2021-07-14 08:18:01', '2021-07-14 08:18:01'),
(76, '+91', '9898646464', '8330', '2021-07-14 08:18:06', '2021-07-14 08:18:06'),
(78, '+91', '9898646464', '4364', '2021-07-14 08:20:02', '2021-07-14 08:20:02'),
(80, '+91', '8238235235', '4850', '2021-07-14 08:50:27', '2021-07-14 08:50:27'),
(81, '+91', '8238235235', '5882', '2021-07-14 08:50:46', '2021-07-14 08:50:46'),
(83, '+91', '64818161616911', '3000', '2021-07-14 22:30:01', '2021-07-14 22:30:01'),
(84, '+91', '64948844464', '2270', '2021-07-14 22:30:38', '2021-07-14 22:30:38'),
(85, '+91', '845484546443', '4707', '2021-07-14 22:35:59', '2021-07-14 22:35:59'),
(86, '+91', '767549446', '4526', '2021-07-14 22:42:41', '2021-07-14 22:42:41'),
(87, '+91', '54548483464', '4077', '2021-07-14 22:44:13', '2021-07-14 22:44:13'),
(88, '+91', '4444444444', '1889', '2021-07-14 22:45:46', '2021-07-14 22:45:46'),
(90, '+91', '646494677379', '4237', '2021-07-14 22:48:57', '2021-07-14 22:48:57'),
(92, '+1', '3133132132', '6663', '2021-07-14 22:55:01', '2021-07-14 22:55:01'),
(96, '+91', '2580258025', '3812', '2021-07-14 22:57:09', '2021-07-14 22:57:09'),
(97, '+91', '2580258025', '5260', '2021-07-14 22:57:53', '2021-07-14 22:57:53'),
(98, '+91', '2580258025', '1684', '2021-07-14 22:57:58', '2021-07-14 22:57:58'),
(99, '+91', '2580258025', '4087', '2021-07-14 22:58:03', '2021-07-14 22:58:03'),
(100, '+91', '2580258025', '2365', '2021-07-14 22:58:09', '2021-07-14 22:58:09'),
(103, '+91', '85646595613', '9395', '2021-07-14 23:00:56', '2021-07-14 23:00:56'),
(105, '+91', '46956566554', '7588', '2021-07-14 23:04:34', '2021-07-14 23:04:34'),
(114, '+91', '9898989899', '5972', '2021-07-14 23:27:27', '2021-07-14 23:27:27'),
(115, '+91', '5484846464', '8699', '2021-07-14 23:27:42', '2021-07-14 23:27:42'),
(118, '+91', '316151881', '4938', '2021-07-14 23:31:47', '2021-07-14 23:31:47'),
(119, '+376', '1234567893', '1720', '2021-07-14 23:32:42', '2021-07-14 23:32:42'),
(121, '+91', '9794848494', '4000', '2021-07-14 23:38:24', '2021-07-14 23:38:24'),
(125, '+91', '54546464949', '9582', '2021-07-14 23:44:13', '2021-07-14 23:44:13'),
(127, '+91', '978456494944', '3068', '2021-07-14 23:52:07', '2021-07-14 23:52:07'),
(129, '+91', '9876543583', '5033', '2021-07-15 00:20:37', '2021-07-15 00:20:37'),
(131, '+91', '6484849463', '5305', '2021-07-15 00:54:10', '2021-07-15 00:54:10'),
(132, '+91', '9876543', '2458', '2021-07-15 00:54:28', '2021-07-15 00:54:28'),
(133, '+91', '54949494', '6899', '2021-07-15 00:58:02', '2021-07-15 00:58:02'),
(135, '+91', '54669595', '4260', '2021-07-15 01:02:10', '2021-07-15 01:02:10'),
(136, '+91', '838683873', '6340', '2021-07-15 01:03:59', '2021-07-15 01:03:59'),
(137, '+91', '56666555', '2106', '2021-07-15 01:10:30', '2021-07-15 01:10:30'),
(139, '+91', '5655669', '3776', '2021-07-15 01:29:25', '2021-07-15 01:29:25'),
(140, '+91', '5656699', '9982', '2021-07-15 01:29:58', '2021-07-15 01:29:58'),
(141, '+91', '5656699', '7038', '2021-07-15 01:30:03', '2021-07-15 01:30:03'),
(144, '+971', '3253253253', '4948', '2021-07-15 01:43:35', '2021-07-15 01:43:35'),
(148, '+91', '64659599594', '5559', '2021-07-15 02:41:31', '2021-07-15 02:41:31'),
(149, '+91', '9895995', '8599', '2021-07-15 02:46:07', '2021-07-15 02:46:07'),
(150, '+91', '54664959', '8109', '2021-07-15 02:50:33', '2021-07-15 02:50:33'),
(155, '+971', '6776757675', '1718', '2021-07-15 03:32:01', '2021-07-15 03:32:01'),
(157, '+91', '998885699', '9778', '2021-07-15 04:07:57', '2021-07-15 04:07:57'),
(158, '+91', '9877655445', '5070', '2021-07-15 04:37:06', '2021-07-15 04:37:06'),
(159, '+91', '9877655445', '8705', '2021-07-15 04:37:15', '2021-07-15 04:37:15'),
(160, '+91', '9877655445', '2896', '2021-07-15 04:37:36', '2021-07-15 04:37:36'),
(161, '+91', '9877655445', '1353', '2021-07-15 04:37:43', '2021-07-15 04:37:43'),
(162, '+91', '8555656', '6518', '2021-07-15 04:41:39', '2021-07-15 04:41:39'),
(163, '+91', '86566666', '2569', '2021-07-15 04:45:01', '2021-07-15 04:45:01'),
(164, '+91', '895555555', '5906', '2021-07-15 04:45:58', '2021-07-15 04:45:58'),
(166, '+91', '5666555445', '4972', '2021-07-15 04:51:32', '2021-07-15 04:51:32'),
(167, '+91', '6554566', '1289', '2021-07-15 04:51:43', '2021-07-15 04:51:43'),
(168, '+91', '8565484646', '9330', '2021-07-15 05:13:53', '2021-07-15 05:13:53'),
(169, '+91', '986846764946', '5141', '2021-07-15 05:21:25', '2021-07-15 05:21:25'),
(172, '+91', '4565665659', '9898', '2021-07-15 05:45:27', '2021-07-15 05:45:27'),
(173, '+91', '83356566', '1529', '2021-07-15 05:51:42', '2021-07-15 05:51:42'),
(174, '+91', '94659955', '9722', '2021-07-15 05:52:30', '2021-07-15 05:52:30'),
(175, '+91', '56566565', '3559', '2021-07-15 05:54:09', '2021-07-15 05:54:09'),
(176, '+91', '366666655', '8434', '2021-07-15 05:55:28', '2021-07-15 05:55:28'),
(177, '+971', '9876543211', '1166', '2021-07-15 05:56:43', '2021-07-15 05:56:43'),
(179, '+971', '9888195828', '4159', '2021-07-15 06:02:02', '2021-07-15 06:02:02'),
(180, '+971', '9888195828', '9478', '2021-07-15 06:02:06', '2021-07-15 06:02:06'),
(182, '+91', '545484844', '5486', '2021-07-15 06:05:15', '2021-07-15 06:05:15'),
(184, '+91', '644949464', '8831', '2021-07-15 06:08:13', '2021-07-15 06:08:13'),
(185, '+91', '6868998968', '3659', '2021-07-15 06:10:28', '2021-07-15 06:10:28');

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
('harman@yopmail.com', 'EZnOV6NelP3PtNcvUL1F1cqOB8jhybpznKKWWpsuZfx59h5YXsWhH1Ze4cQCVDle', '2021-07-14 06:49:16'),
('zeonn@yopmail.com', 'lOPEqkGTIup61rnRv5hEE9VcE52eGvVtyQvnUbhfo02YotR0i9vCleNnaihifBdL', '2021-07-14 06:55:13'),
('zeonn@yopmail.com', 'Qqrf1h1qKsp8zSYkxV6URVEKmiqsn9CDfk7OAwwYbDsTnwzURzHWLRBZrUfQh3qE', '2021-07-14 06:55:23'),
('DDDDDDDDDDDDDDDDDDDDDDDD@YOPMAIL.com', 'P64qzE8phpWhmmGmZSw4Zm5FcTm33LKMDdnB39p0mHkjRU9UAmmF4V0pYcEEQ7Sc', '2021-07-14 06:57:09'),
('zeon@yopmail.com', 'eQHBwoAbuQ3CpZ2qHlue9uo4XR5p00orVuXiBfzNvC1J88Cmoq9Nens0uniXEXpF', '2021-07-14 06:58:30'),
('DDDDDDDDDDDDDDDDDDDDDDDD@YOPMAIL.com', 'IanAxYSjJZtrzTzFnVJMOUdi6bKTwMicUwgYinuxw19pqjJP5z01V321dXeWugIA', '2021-07-14 07:03:22'),
('DDDDDDDDDDDDDDDDDDDDDDDD@YOPMAIL.com', 'D4y3eLA7Bq268lAZlUrwTsIkuiG51alDnDgNCQrgS9fzb0cahYlObo6bwthH8MV0', '2021-07-14 07:03:29'),
('zeon@yopmail.com', 'qrVzqrdLmxSycmZpc8MEGtDQg68W3iYi0mDrDkZaPjpXunNksx4KZquXSCLlz4qC', '2021-07-14 07:04:40'),
('DDDDDDDDDDDDDDDDDDDDDDDD@YOPMAIL.com', 'OKg8XMmEBu1slHs6Q7Xdsq3jToGYuNNnX0ePs2sb72onyC2ZHkrOjhhdaU86Zw7d', '2021-07-14 07:10:41'),
('DDDDDDDDDDDDDDDDDDDDDDDD@YOPMAIL.com', 'XQiQvsl5W1uEUQt8TPCxQ78KwXi3Mm5sUez3yZiW180LQRl76JuAzo2EKX6xxYTz', '2021-07-14 07:11:38'),
('DDDDDDDDDDDDDDDDDDDDDDDD@YOPMAIL.com', 'UQutZUpPuFcmqEn0NXvDS2jslej8ZIZXMoGOWkwmdwrv2xIl2evgcZ1SW5H06VzG', '2021-07-14 07:12:46'),
('harman@yopmail.com', 'Q6UONCC6vBA5na6axM0Q83oypkyhHU50WbO1yhkmGybPEqne4KMrHcX4eMmLJRfp', '2021-07-14 07:13:12'),
('harman@yopmail.com', 'V2K1srghke7QPghqGa9YiBoD5v4Ot6tRaDVAsLAq8sV27bP4y3OvjnOZds8YKMvy', '2021-07-14 07:13:28'),
('harman@yopmail.com', 'w8sP0eXj25RhYZ3gUsBVz4sxCqurVhqI1FuzdynkCQrKzo4MfkM850JIgLXIn9Gz', '2021-07-14 07:13:34'),
('harman@yopmail.com', 'bclvr0r34LYHesdrZ8vc46iRvKfhSAK7MeYH79RtAe9cE3rmPAmqfzchWAwJLVoq', '2021-07-14 07:13:38'),
('harman@yopmail.com', 'FCnieSz8WVCNkHZuZswRMSMk0wTzwxH0aOXJNvcafWavEZIw7CrG9sJH60QbfprB', '2021-07-14 07:13:45'),
('harman@yopmail.com', '7E68gOEpk3bwn4QItotYgsqssU3X0Vxh7Uf4URpTcieBTHRRDuRpf0kVUkZQhL3F', '2021-07-14 07:13:50'),
('harman@yopmail.com', 'FITdK21qvH4kygwMkTb0ByfypwYlERyYkvdpbvyvMKaIMCFgOVDAh8kHmyo6jdHQ', '2021-07-14 07:14:08'),
('harman@yopmail.com', '6DUHJWRJjaMzpOz1GqAgGaYalao3X3gOrzYfJwy7NhhXEAUHGQ5pnL0Sgku1tITE', '2021-07-14 07:14:29'),
('adminn@yopmail.com', 'X5E32eKbsZFQcAGDDdqk5E7KaIX7OWVh', NULL),
('janak@yopmail.com', '8yqeCK3buivv8WquoxD4g6BIrt5ErB2F5GGaggTVLyuaJFv2tO3Uh42HdOIQVzfL', '2021-07-14 22:53:50'),
('DDDDDDDDDDDDDDDDDDDDDDD5@yopmail.com', 'XKHyOD273VC3W5IEfIFr8jr3nTfsaPYe10dF7jyDZVx2nJQZPSwWIuEk2GUwisOs', '2021-07-14 23:04:53'),
('demo@yopmail.com', 'EqMoqGawtbZ2eJ51Dym715zkBU9etD8eg232H3yDKk3tJL7aaE4MjibEBhsshJmS', '2021-07-15 00:02:00'),
('janak@yopmail.com', 'A2HYJUQsKaakSRUNn1sq1Gv3UYHOC0gQ9oNvXXjbmYmDPDnKhXwvKZyBIxvXmXP3', '2021-07-15 01:46:53'),
('janak@yopmail.com', 'vHjQhU9xDAYBNt3OyXDaIrVpZg68ws3xzmBRBfzQOyTrPAVthn8ZKGjQlHqp6ob8', '2021-07-15 01:57:39'),
('Karany@Yopmail.com', 'sK0Q610vH5fa8CBG1d2bnpxSI19UxId2LebsEGafLIIn7OseEhRbJuimHZ4yXrXW', '2021-07-15 01:57:40'),
('janak@yopmail.com', 'Mu1yK3amN0W5KgyGaXx7tDxe9gNNpt59l5H3M2MC2mbSIBswkhwqSdupedlho6FJ', '2021-07-15 01:58:01'),
('janak@yopmail.com', 'R80KGzmRrpWqtoiq5xfpQuYXYHkkZLAIkQa9A5VSNAM3SvMC3kDMmXU68zuyFhJy', '2021-07-15 01:58:08'),
('abc123456@yopmail.com', 'VlLE7yC1ExfhiqtrttZUlqV2b3kTv5kEmPdsavHeKSfHHaQX5CJBn1hJdamtIm1Z', '2021-07-15 05:20:19'),
('demo@yopmail.com', 'UKWdaQUmHl7pbfG07gE1J1zzTJGdePbI2Ui9faC51Bo3zPIqfspzoXh0avUo5D2c', '2021-07-15 05:21:00'),
('demo@yopmail.com', 'i88DuBSrgcpFsw1NJj13Xbonp4TpMGU84PaZ7nSEyJ52yuAAEyfl7eDoZFWQU5Mz', '2021-07-15 05:21:14'),
('demo@yopmail.com', '2Wr8QaDXHPEFrfROGm56xoQsoEGtEacVc2C8QD8zDDLhC1R7BuhjR6iSccC814E1', '2021-07-15 05:21:20'),
('demo@yopmail.com', 'zI978Naiyl6CxdhCvt5USFT6zcF2aBGORKFkQMBq690hBtv7muo1fLPOmlp9K7JN', '2021-07-15 05:21:29'),
('demo@yopmail.com', 'gUrkJq5YES1fTGtrt1QeNbFT2RSTmjYmRsWbLjfMfsBLEcRu5X4XTTB2JtIHIl1Q', '2021-07-15 05:21:35'),
('demo@yopmail.com', 'Gb61p6owYgdiPOE5aeBPC81mK8ZlhKg3JQhQd9uMwpn2jxw5Q1weLbHRAg4NdX6y', '2021-07-15 05:21:40'),
('demo@yopmail.com', 'XjSHijv04783TgVIdOobmEpISj8cCvA3ij3rUXkIUqEtZJBfqeoDXgpb4MRAFyPL', '2021-07-15 05:25:36');

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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tier_conditions`
--

INSERT INTO `tier_conditions` (`id`, `unique_id_by_tier`, `tier_setting_id`, `tier_name`, `from_amount`, `to_amount`, `color_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '3', 1, 'ac', 10, 20, '#ff0000', NULL, '2021-07-15 06:19:22', '2021-07-15 06:19:22'),
(2, '1', 1, 'aa', 21, 30, '#ff0000', NULL, '2021-07-15 06:20:04', '2021-07-15 06:20:04'),
(3, '2', 1, 'ab', 40, 50, '#ff0000', NULL, '2021-07-15 06:20:14', '2021-07-15 06:20:14');

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
(1, 1, 45, 30, NULL, '2021-07-15 06:19:22', '2021-07-15 06:20:34');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '0714202112035560eed2ab7cff1.jpg', '+91', '1234567890', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'daman@yopmail.com', '$2y$10$3kIZ5szR5wjMGvwAe31zeu2N9cBDdXcI.etkDqZAZYvfVGmZoKDxC', 'Abu Dhabi', 'Afghan', '2004-07-14', 'Male', 'null', 'None', NULL, NULL, 'nGmlp3kBzdxIIvgPXSpGNwx0AuLcXGxiI75yWbEPOKjJ80JL7wnkAEhCpiGFfvgg', '0', '0', NULL, NULL, '2021-07-14 06:33:55', '2021-07-14 06:33:55', NULL),
(2, '0714202112050160eed2edc70a5.jpg', '+91', '1234567899', 'janak', 'nath', 'aman@yopmail.com', '$2y$10$TRRq7z612h7zoL8ujqNkeOpK93LqQraLnWE2w22HXJ7FHkr6z5cP.', 'Abu Dhabi', 'Afghan', '2004-07-14', 'Male', 'null', 'None', NULL, NULL, 'Dua5w40K5UnSy0mUM48Phg5RnqqXH4oSyv3rXaeOASUSzLlnWyDSTTUQDltwrHk7', '0', '0', NULL, NULL, '2021-07-14 06:35:01', '2021-07-14 06:35:01', NULL),
(3, '0714202112061660eed338859f4.jpg', '+91', '1234567891', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'harman@yopmail.com', '$2y$10$ccUP1RKRUHNCwZrYR8YvduLeWHAdbGTR3kH.cHW8gsbobUaOm.63W', 'Abu Dhabi', 'Afghan', '2004-07-14', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 06:36:16', '2021-07-14 06:37:07', NULL),
(4, '0714202112101060eed4223afbc.jpg', '+91', '8901009083', 'Deepak Deep Test', 'Sharma Engineer', 'deep@yopmail.com', '$2y$10$v/6MsRhqIW0bYx607zX3suXEQGxuVNaOa2Uw6hF5ELqo8R3vFO9Xe', 'Dibba Al-Hisn', 'Algerian', '2004-07-02', 'Male', 'Zuhu', 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 06:40:10', '2021-07-14 06:40:54', NULL),
(5, '0714202112140060eed50835bc7.jpg', '+91', '8901009085', 'Karan Test Engineer', 'Sharma', 'karan@yopmail.com', '$2y$10$kDvqSyhMFXRM82SvdiKgBuHC7j1QfAy43CWhckZoj9b/XomByGY42', 'Abu Dhabi', 'Afghan', '2004-07-14', 'Male', 'Tester', 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 06:44:00', '2021-07-14 07:46:01', NULL),
(6, '0714202112152560eed55dcca73.jpg', '+91', '2654885345', 'Zeon', 'Singh', 'zeon@yopmail.com', '$2y$10$iXQMS0vasTW5hd1JJ16E7urxubjvSd/bYRfAn6B5G.tkk8O2TRnuK', 'Al Ain', 'Albanian', '2004-07-14', 'Male', 'fjvhc', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 06:45:25', '2021-07-14 06:46:01', NULL),
(7, '0714202112233360eed745045b3.jpg', '+91', '9999999999', 'uguguvhv', 'hbjbjbub', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD@GMAIL.com', '$2y$10$lWWlAUn3Mi30OwdLgA5p/uwYeKVStjvhFwSCSon.FSdL4Hprs5Fri', 'Abu Dhabi', 'Afghan', '2004-07-14', 'Male', NULL, 'None', NULL, NULL, 'NECkZtE7oprCGPdBrbX2ejzxUdZOv8dHki5fFOt9bDQGZ7ZQAz53HTb3RfxycKBt', '0', '0', NULL, NULL, '2021-07-14 06:53:33', '2021-07-14 06:53:33', NULL),
(8, '0714202112233360eed7450cdc7.jpg', '+91', '8901009086', 'Zeon', 'Sharma', 'zeonn@yopmail.com', '$2y$10$iSgA.AuRUPO1H.YJf4Dsdu5TxJXgd1chJsrFgGgtrqVRdO8ZruIKy', 'Abu Dhabi', 'Åland Island', '2004-07-14', 'Male', 'DCFGVGB', 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 06:53:33', '2021-07-14 06:55:03', NULL),
(9, '0714202112263760eed7fd8494f.jpg', '+91', '1234567888', 'giuvuvvuvugu', 'ycguugguguDDDDDDDDDDDDD', 'DDDDDDDDDDDDDDDDDDDDDDDD@YOPMAIL.com', '$2y$10$y/3ZEBx6AK4lYPoM8.sxOed5nCNdbjZtvEk47FCe6PR8tuWAQCrhm', 'Abu Dhabi', 'Åland Island', '2004-07-14', 'Male', 'mm', 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 06:56:37', '2021-07-14 07:11:57', NULL),
(10, '0714202112284360eed87b26ca3.png', '+91', '5454554646', 'fsgsyf', 'sfsgs', 'fsgs@hshs.co', '$2y$10$lNhAyY3MT03ePITUmaQ.l.AljhmvMI1jfWE4l00dm7LZnzbQwNz8O', 'Al Ain', 'Åland Island', '2004-07-14', 'Male', 'null', 'None', NULL, NULL, 'mw9jzfHVUiCOjegsd05w7RHLeFzV6v3Ui7j3yQwgZjjSweP2eOfKJTEMwcroWqNr', '0', '0', NULL, NULL, '2021-07-14 06:58:43', '2021-07-14 06:58:43', NULL),
(11, '0714202112354560eeda21311b3.jpg', '+91', '8956698866', 'Juhu', 'sharma', 'juhu@yopmail.com', '$2y$10$l.Dx7idm/sjDyVWhkTu7y.Y4yEhkLu85jQT8Fiwop9pIWyRIvJ2IO', 'Abu Dhabi', 'Afghan', '2004-07-15', 'Male', 'y', 'None', NULL, NULL, '2HnWtudJ1tWm5UNMVOrPi1kmd2QNmxkyTdDJxCACiiRbdIjAEKdG8aK6OI4rb8dr', '0', '0', NULL, NULL, '2021-07-14 07:05:45', '2021-07-14 07:05:45', NULL),
(12, '0714202112391360eedaf1c5fcd.jpg', '+91', '7558588555', 'Fahim', 'Singh', 'fahim@yopmail.com', '$2y$10$skEQSUZOSHIG7aCd8Ve1tOmTRJFUCDWpCKkbcco7nf9zGZlIBqAPa', 'Ar-Rams', 'Albanian', '2004-07-14', 'Female', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 07:09:13', '2021-07-14 07:09:54', NULL),
(13, '0714202113084160eee1d9a3cdd.jpeg', '+91', '3213213211', 'DDDDDDDDDDDDDDDDDDDDDDDDDDD', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'damann@yopmail.com', '$2y$10$nYn1bzd1sALSkkWC7p/2leySdrCd9MCTuswwV7s3pXnHd6yD1ucvi', 'Abu Dhabi', 'Afghanistan', '2004-07-14', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 07:38:41', '2021-07-14 07:56:27', NULL),
(14, '0714202113150560eee3593b2b7.jpeg', '+91', '2582882580', 'ff', 'ff', 'ff@yopmail.com', '$2y$10$G3nheovq9O.fcJy9X4wG7OUtaiZnj8VHSnfiflpKi6EZyr7c.0/aC', 'Ras Al Khaimah', 'Anguilla', '1908-07-14', 'Male', 'thd', 'None', NULL, NULL, 'uv74v5lQeVUK0Tb6efeEVfvW6dxljxmhUtIo0rNzep6rAtueZk2ED4tc4eJ4dNOQ', '0', '0', NULL, NULL, '2021-07-14 07:45:05', '2021-07-14 07:45:05', NULL),
(15, '0715202104191160efb73f0b55a.jpg', '+91', '4444444444', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'janak@yopmail.com', '$2y$10$aCTRBtmoOIe2q2nXieKE2eUvxl0RhLkKNfQehgeEwef5sCoSWO/me', 'Abu Dhabi', 'Afghan', '2004-07-15', 'Male', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 22:49:11', '2021-07-14 23:25:20', NULL),
(16, '0715202104211260efb7b8478af.jpg', '+1', '4645645645', 'asd', 'asd', 'demo@yopmail.com', '$2y$10$Tp/8LWFLn9pjoqyciDB30ONnEsc7np59qgAgYqKrCOBJR28uPNv.i', 'Al Ain', 'Albanian', '2004-07-15', 'Male', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 22:51:12', '2021-07-14 22:51:40', NULL),
(17, '0715202104294660efb9ba46df4.png', '+91', '2580258025', 'gagan', 'singh', 'gagan@yopmail.com', '$2y$10$lTIJgYIbKBI0PG2JH8feO.C/BiIfJVEHdWXhAmC2d3UUXI4bCGxma', 'Abu Dhabi', 'Afghan', '2004-07-15', 'Male', 'shsjsjss', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 22:59:46', '2021-07-14 23:00:15', NULL),
(18, '0715202104341660efbac8139d1.jpg', '+91', '1234567777', 'jank', 'singh', 'DDDDDDDDDDDDDDDDDDDDDDD5@yopmail.com', '$2y$10$DeGg2x9FkFtiqi31xSzcueMBHDWkhgfCv6FwR8AcDlEDRVOwmmhKW', 'Abu Dhabi', 'Afghan', '2004-07-15', 'Female', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 23:04:16', '2021-07-14 23:06:17', NULL),
(19, '0715202104373160efbb8b20aa8.jpeg', '+91', '46956566554', 'abc', 'cuz', 'ios@yopmail.com', '$2y$10$CmairgQDMAfEeyzf8ZvfH.VNNElwZLmCmJr8u/wGyEcnoaC9mvm42', 'Abu Dhabi', 'Afghanistan', '1991-07-15', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 23:07:31', '2021-07-15 05:37:24', NULL),
(20, '0715202104475660efbdfc9b1fa.jpg', '+93', '9898989898', 'kanak', 'kaur', 'kanak@yopmail.com', '$2y$10$zOjJFq21YH/a8VjdDzfeqOrGotboRxt2qpW/NGMf.nXQeCy4nJ19O', 'Abu Dhabi', 'Afghan', '2004-07-15', 'Male', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-14 23:17:56', '2021-07-14 23:32:17', NULL),
(21, '0715202105331060efc8965ad30.jpg', '+971', '5457575537', 'hch', 'xggxxh', 'demo2@yopmail.com', '$2y$10$NP5vUD2KhkjjMoOa5r1lA.hrjPakqxM.HnBugspjqXk7aJVugc9qC', 'Abu Dhabi', 'Åland Island', '2004-07-15', 'Male', 'null', 'None', NULL, NULL, 'bnyEH62nMvVBvRAcGXDncLGzhW4IMQDRlEqYHd3cjD0xutppUpyp83n7DEf40mTa', '0', '0', NULL, NULL, '2021-07-15 00:03:10', '2021-07-15 00:03:10', NULL),
(22, '0715202106063060efd066e1dde.png', '+91', '16516511', 'abc', 'koko', 'abc1234@yopmail.com', '$2y$10$ObSlpldYJS/Oin5xxsE1K.eRRt5ibO7eKEWZrZzLHrxJJBZqsHARG', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'OwuCNulhBCVqHdTs96pb67AurkWZvW0OtiU4tNv48SIjJufguyRWFklhnbrQI4Rd', '0', '0', NULL, NULL, '2021-07-15 00:36:30', '2021-07-15 00:36:30', NULL),
(23, '0715202106093660efd1207c129.png', '+91', '165165115', 'abc', 'koko', 'abc12345@yopmail.com', '$2y$10$Uw3xgiNupdBULSSyw4PiAO0L3T8Zeh8SCFIYWQMkJRg3S3WSxVDEu', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, 'FoV9d6rZQjpUpw1H5atQr52ifKlJ1wZnJQl8tucOLC7AfTWjZW26yvlQIeKckoj3', '0', '0', NULL, NULL, '2021-07-15 00:39:36', '2021-07-15 00:39:36', NULL),
(24, '0715202106344760efd7076bf9b.jpeg', '+91', '838683873', 'jdjjdk', 'udufj', 'jaani@yopmail.com', '$2y$10$VkDkqea97r9gU42wIZvpQuW7H6RL2QOwIXxampGz1pjlNtrqrn9XO', 'Abu Dhabi', 'Afghanistan', '2002-07-15', 'Other', 'jdjjd', 'None', NULL, NULL, 'fXg8oe2AFVypC2V8aUt3qKCJFWOzkj7rbRdQiYCit2fwMnQWhYeFvyx4y9yBWYNJ', '0', '0', NULL, NULL, '2021-07-15 01:04:47', '2021-07-15 01:04:47', NULL),
(25, '0715202106525660efdb4850b60.jpg', '+91', '9882572644', 'Tarun', 'Kumar', 'tarun@yopmail.com', '$2y$10$GsPQnSb2FpGS4y/o551YR.GfqYrEhDCEUat6yXSOCHxmBRj.7Xn/K', 'Ajman', 'Algerian', '2004-07-24', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 01:22:56', '2021-07-15 01:33:59', NULL),
(26, '0715202107110860efdf8cbbd12.jpg', '+971', '2580258020', 'janak', 'singh', 'deepa@yopmail.com', '$2y$10$ND9IX9xBcQctxMd63hMug.7f2Uz82kyRMEiUx1.fp0gVcCKOkI/8K', 'Abu Dhabi', 'Afghan', '2004-07-15', 'Male', 'null', 'None', NULL, NULL, 'pcfaleuhi4hpGkwFbMqQ63igMaaFajjPff0MaBWCEQwHcMcrGbqwkrcQt9Uh1YcH', '0', '0', NULL, NULL, '2021-07-15 01:41:08', '2021-07-15 01:41:08', NULL),
(27, '0715202107232160efe269a466f.jpg', '+971', '7009972463', 'mia', 'singh', 'mia@yopmail.com', '$2y$10$joqfiFOWqikYg4QytM8Afeo03D1JlrXeEfHPWKTdBL7e/p1.AUmXO', 'Kalba', 'Bissau-Guinean', '2004-07-23', 'Female', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 01:53:21', '2021-07-15 01:54:08', NULL),
(28, '0715202107241760efe2a1aac0e.jpg', '+971', '3253253253', 'Karany', 'Singh', 'Karany@Yopmail.com', '$2y$10$JzLDi/SzVlKd/4A4RhUa5.xzNEdreburH2Dfnqf4CFp2ejkap0HI6', 'Abu Dhabi', 'Equatorial Guinean, Equatoguinean', '2004-07-15', 'Male', 'rtyrtytt', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 01:54:17', '2021-07-15 01:55:35', NULL),
(29, '0715202107295660efe3f45ad32.jpg', '+971', '9988740019', '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@€€€€€€€€€€€€', '€€€€€€€€€€€€€€€€€€€$$$$$$$$$$$$$$$$$$$#$$$$#######', 'yop@yopmail.com', '$2y$10$B3eh1MwbDMwDbBN5RBr9jeGJsAbc0tl4vNv5J3dzvpufIhcrwuZO6', 'Dibba Al-Fujairah', 'Afghan', '2004-07-15', 'Female', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 01:59:56', '2021-07-15 02:00:52', NULL),
(30, '0715202110204060f00bf8d8c2e.jpg', '+971', '9815357489', 'Gaurav', 'Dhiman', 'gaurav@yopmail.com', '$2y$10$cXcTgbz614VfAwYuLSl4Weo8XSBEI8ubhy/US/izJL8FDlCLOUSA6', 'Abu Dhabi', 'Syrian', '2004-07-17', 'Male', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 04:50:40', '2021-07-15 05:06:51', NULL),
(31, '0715202110465560f0121f683da.png', '+91', '1651651154', 'abc', 'koko', 'abc123456@yopmail.com', '$2y$10$FCLJV8dK8F9dF7QlsTt4pe/RYYeHHvkbTvU8nshWMXJtlAeez/07u', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 05:16:55', '2021-07-15 05:17:49', NULL),
(32, '0715202110495560f012d30b871.jpeg', '+91', '8565484646', 'bdbdb', 'dhdhdh', 'kdjd@jdjd.dhd', '$2y$10$VePY.m80LsfGNNqc7lqoTu1VvCWt/Hy5B4WNU3bT7SOqszf.GKGbu', 'Abu Dhabi', 'Afghanistan', '2000-07-15', 'Male', NULL, 'None', NULL, NULL, '5kAatHUtt4mGWDIyFrQkcloxRjPn41l9QQcVbyDfhnzdVJ6J85cnSsIcz91GPyKT', '0', '0', NULL, NULL, '2021-07-15 05:19:55', '2021-07-15 05:19:55', NULL),
(33, NULL, '+971', '8643464945', 'gdgdhd', 'gdhdueu', 'gxhzhs@hshs.com', '$2y$10$9mpUKgb2lyso1YZlZfj06O0Xd0XIfeIjrZB4G9AEFRErT1fWP0Zs2', 'Al Ain', 'Albanian', '2004-07-15', 'Male', 'null', 'None', NULL, NULL, 'Czl3F7ipBP4FFmSio18ZX0ECXWkyveJRzkfKZNPxnVSgvJCWdd300FnubOvRGgL6', '0', '0', NULL, NULL, '2021-07-15 05:36:23', '2021-07-15 05:36:23', NULL),
(34, NULL, '+971', '5434848464', 'gdhx', 'fsgs', 'test3@yopmail.com', '$2y$10$4b406Pfkdo7Ipu/vwn3WDe03BhahN9cHg5WQTNlObGb8Z7OLJWD7u', 'Abu Dhabi', 'Afghan', '2004-07-15', 'Male', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 05:37:41', '2021-07-15 05:38:26', NULL),
(35, NULL, '+971', '9876543211', 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ', 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ', 'zoom@yopmail.com', '$2y$10$tS94uFXo8BEg1Xpb0Dh4peYDTtH.76zji4sQzwjU62PmCR6Qiqtga', 'Umm Al Quwain', 'Bosnian or Herzegovinian', '2004-07-15', 'Female', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 05:58:47', '2021-07-15 05:59:59', NULL),
(36, '0715202111335760f01d258df2b.jpg', '+971', '9888195828', 'pankaj', 'sharma', 'pankaj@yopmail.com', '$2y$10$YS3E/RWC766Ql3kH58PIqe5BvPz1hI6PCtoZHpqrtc3EU7VnLxSR2', 'Dibba Al-Fujairah', 'American Samoan', '2004-07-15', 'Female', 'kckhckhc', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-15 06:03:57', '2021-07-15 06:04:46', NULL),
(37, '0715202111394660f01e826ed03.png', '+971', '9888795828', '$$$$*$*$*$*$*$*$*#*$*$&$&$&$&$&$&#*$*$*$*$*#*#*#*#', 'jsksks,$;-%@%@*@₹@€#€@₩@(@;#&@₹@&#&#&', 'rr@yopmail.com', '$2y$10$rU53zI4.A4XioHB5TehhYuqDDmp6rHLd0zuBMd8TwGXfbjHxSDymq', 'Dibba Al-Fujairah', 'American Samoan', '2004-07-15', 'Female', ':::::;,,', 'None', NULL, NULL, 'm7jegSHhMOb8ivpVxGtB4e2FiUuDUDs3Vscpu0RVdMjMAACSj4r0r2R5g0oTc625', '0', '0', NULL, NULL, '2021-07-15 06:09:46', '2021-07-15 06:09:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Constraints for dumped tables
--

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
