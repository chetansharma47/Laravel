-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2021 at 07:19 PM
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
(1, 'admin', 'adminn@yopmail.com', '$2y$10$nbvTNJDjH6yIpVurSdVaOOeYAyIi8spa8oc.cNpx7mp4/oCV679A6', 'OkjSWOBrs5MYXdlVsOixgaHRLgGBhvYjHEZD3nrHNOz6CpYyjPZT91ZBGfNKysiz', NULL, '2021-07-12 08:15:47');

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
(13, '2021_07_12_092052_create_admins_table', 3);

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
('0015dff8901f94194f1964ce29cf184a9dd423d51a0ca8da92d6d36e32153a245a52683fff267edc', 9, 1, 'andrew', '[]', 1, '2021-07-08 22:58:23', '2021-07-08 22:58:23', '2022-07-09 04:28:23'),
('00dc2ff893db39c346511f417003193fc32fc65819d5410f3dbd4ec4a94d9e0a2b8d086965b75977', 10, 1, 'andrew', '[]', 0, '2021-07-12 06:04:08', '2021-07-12 06:04:08', '2022-07-12 11:34:08'),
('025b17eb42a90a94109d325193606163c248b3ae540e7b9d282a3672f94317ab7dcda93c18b6e7f8', 12, 1, 'andrew', '[]', 0, '2021-07-12 06:08:19', '2021-07-12 06:08:19', '2022-07-12 11:38:19'),
('06815d08d4a9295feb661ebdcbeb470e7032c2157947b241baacf2c248375efffec531da583dd5f9', 9, 1, 'andrew', '[]', 1, '2021-07-08 22:13:10', '2021-07-08 22:13:10', '2022-07-09 03:43:10'),
('081635738101256c285f1497db34dd47b9a07e5dc0a021c29b16a00c9042702b0ca50d98ae861724', 9, 1, 'andrew', '[]', 1, '2021-07-08 22:57:09', '2021-07-08 22:57:09', '2022-07-09 04:27:09'),
('08a1a760b5b1a4fac30a5f1b346ea5dc71e7fe8136591c5e6363f5561f03f07fa8ee36685a0912d7', 3, 1, 'andrew', '[]', 1, '2021-07-07 06:06:07', '2021-07-07 06:06:07', '2022-07-07 11:36:07'),
('129d773e48e921c9a981dc73a6724439f4a4597fdcc578e40674e3bd415e55cd6b0e5f31c142fce0', 20, 1, 'andrew', '[]', 0, '2021-07-12 08:13:58', '2021-07-12 08:13:58', '2022-07-12 13:43:58'),
('19f949b3f3853f546bd409e8d9aba462ea6a772023ce592cfbd0ec69dc6fad0eb400c543e4b7bd6d', 8, 1, 'andrew', '[]', 0, '2021-07-12 05:56:15', '2021-07-12 05:56:15', '2022-07-12 11:26:15'),
('1d9285da62aa79aad677ecf20b318b0143d90bbcf54e43a4f0a108f8bc0cb384054b49aa3fa294fd', 9, 1, 'andrew', '[]', 1, '2021-07-08 23:01:56', '2021-07-08 23:01:56', '2022-07-09 04:31:56'),
('1e4203b45c14c37991d26617a7ae6cfc429e623f1f11e5a034207c97b0f0e2a6d28ec42afa11d397', 9, 1, 'andrew', '[]', 0, '2021-07-08 23:07:30', '2021-07-08 23:07:30', '2022-07-09 04:37:30'),
('1f5960c5ab3968c436eff924f22ad5175a0afccf21bf7bca5e2ef91afe85848c4410938cb65c824d', 11, 1, 'andrew', '[]', 0, '2021-07-09 06:51:41', '2021-07-09 06:51:41', '2022-07-09 12:21:41'),
('1f65aeb3497c5a53b5844163946d531dc57986e35e186170ad1827bafa1fc75b9f211754555ca11c', 1, 1, 'andrew', '[]', 1, '2021-07-12 00:59:50', '2021-07-12 00:59:50', '2022-07-12 06:29:50'),
('1fc2dabc26f43bb6511b12bf9f590888167f92785b3ebf01efce42119a2bd2289cc517b2dfa60db6', 17, 1, 'andrew', '[]', 0, '2021-07-12 07:38:39', '2021-07-12 07:38:39', '2022-07-12 13:08:39'),
('208bb3e26e86e059e5e0b24906a57925177dfb66dd5fce372e50403afc5338a30e768d75b87a3ee1', 9, 1, 'andrew', '[]', 1, '2021-07-08 07:23:38', '2021-07-08 07:23:38', '2022-07-08 12:53:38'),
('213214a13acdbf8b6792862c77d28051286f95c6ff31fd7e3faf8d7ef604e5d65dcc0cd851aa9479', 14, 1, 'andrew', '[]', 0, '2021-07-12 06:17:43', '2021-07-12 06:17:43', '2022-07-12 11:47:43'),
('2ccdc64cd48568624874ed19d331a6bdf30e42cf3a8d6a8fe06664d37b653872956534e438eba516', 11, 1, 'andrew', '[]', 1, '2021-07-09 06:42:22', '2021-07-09 06:42:22', '2022-07-09 12:12:22'),
('35fb3f278fe16531a4450e3262bee329d4ea4639c2c228ca208a63979875a5f91d32d4191625e33b', 11, 1, 'andrew', '[]', 1, '2021-07-09 06:43:36', '2021-07-09 06:43:36', '2022-07-09 12:13:36'),
('38158ace19e48100178c2b9b18b934bae12df06d0a1222233fc9d059f139032678feba5db1db77da', 3, 1, 'andrew', '[]', 1, '2021-07-07 06:05:14', '2021-07-07 06:05:14', '2022-07-07 11:35:14'),
('38c547c1c3b5dd5f8ba4f3b9f58a0c615fcd9c0bee7bae3a7fb1681ba3790082c9c39c8efe04f356', 11, 1, 'andrew', '[]', 1, '2021-07-09 06:36:29', '2021-07-09 06:36:29', '2022-07-09 12:06:29'),
('43e3e5be084c1694997e7d275ed826ed3f46a5bc88fa0c049e86b231d1a3d0a3dc3d542c8d742e0a', 5, 1, 'andrew', '[]', 0, '2021-07-12 05:02:20', '2021-07-12 05:02:20', '2022-07-12 10:32:20'),
('48fe1a1fd1c4a94e3d90421451e30bdbd136ed32610a65fe88398ca4083b3b51c4fc32e478fc89de', 11, 1, 'andrew', '[]', 1, '2021-07-09 01:30:16', '2021-07-09 01:30:16', '2022-07-09 07:00:16'),
('4b0685efc0a013709ebc1d6bcd7473fe35a515705772d7b7eb2a731dd0d9ceedd30179147455da0e', 6, 1, 'andrew', '[]', 1, '2021-07-07 23:26:01', '2021-07-07 23:26:01', '2022-07-08 04:56:01'),
('537791bf4446e8e0739488d2f36f084a3cd5276442190b8a4541802340c4531478161d801e0a0ae9', 16, 1, 'andrew', '[]', 1, '2021-07-12 06:46:35', '2021-07-12 06:46:35', '2022-07-12 12:16:35'),
('562948f5a3f3682fe42465a0e1561b2c921ea1d50ad374ec1259281d2cbd804f265d4446ca0ad5c8', 11, 1, 'andrew', '[]', 1, '2021-07-09 01:31:21', '2021-07-09 01:31:21', '2022-07-09 07:01:21'),
('5e8ff14b9e1bd62b15c687e46da0a8d01e0c770406f6fbb29ebac1f9186b2a8d8b5448701faad829', 8, 1, 'andrew', '[]', 0, '2021-07-08 05:57:57', '2021-07-08 05:57:57', '2022-07-08 11:27:57'),
('60606ad9d367ca3e77b9a08c80435f014c055b421be950da5d3f5582d7521089e4b4e97633923005', 15, 1, 'andrew', '[]', 0, '2021-07-12 06:26:29', '2021-07-12 06:26:29', '2022-07-12 11:56:29'),
('66c3162a3320c1bf267495d8aa8ba45d960f02615d01676362aef0f28c4df014b0b756891495d137', 22, 1, 'andrew', '[]', 0, '2021-07-12 08:17:36', '2021-07-12 08:17:36', '2022-07-12 13:47:36'),
('6ee2cc945106a67a39f128c62f611a7673143a7252347bf9c7892477a1fa496883f0080f09502beb', 1, 1, 'andrew', '[]', 1, '2021-07-12 01:15:45', '2021-07-12 01:15:45', '2022-07-12 06:45:45'),
('786903f1db5edc5867c330b0a85f70b97b1d5847ac664dda2e4040ab68e258aa1dd920d07a4eb099', 9, 1, 'andrew', '[]', 1, '2021-07-08 23:01:27', '2021-07-08 23:01:27', '2022-07-09 04:31:27'),
('79daea2e41819e2983b35cb1bad4520c8800f711af27c86328bac4ce607d7ea3a210dc7c85defe84', 14, 1, 'andrew', '[]', 0, '2021-07-09 05:37:15', '2021-07-09 05:37:15', '2022-07-09 11:07:15'),
('7aec74bb8639e8505e8b5260e32923514412e160aef96ccd48bba7e27e2a4d301571a60edfc730af', 9, 1, 'andrew', '[]', 0, '2021-07-12 06:01:51', '2021-07-12 06:01:51', '2022-07-12 11:31:51'),
('81f58b5572257f4db79c22002ec4fd8a065e8d267ec72522b4a0281af065239484e2b7021a20a61d', 10, 1, 'andrew', '[]', 0, '2021-07-08 22:23:21', '2021-07-08 22:23:21', '2022-07-09 03:53:21'),
('839661c4a700847007d5503317ae99e697876d3fecf0b9c70d094ba45fd36bdd5eb289f3fb6f6e77', 21, 1, 'andrew', '[]', 0, '2021-07-12 08:16:21', '2021-07-12 08:16:21', '2022-07-12 13:46:21'),
('8825bd6836aa10e72106698de88aceddab6880ed437a2bbdf2c6995977a2bf0fbcf96a43ca240e29', 17, 1, 'andrew', '[]', 1, '2021-07-12 07:38:00', '2021-07-12 07:38:00', '2022-07-12 13:08:00'),
('8c47d53dd9add2ce2371897512c331deaadbef595618bcc40da3139e1d96ca9b3b063929803898cb', 1, 1, 'andrew', '[]', 1, '2021-07-12 01:47:20', '2021-07-12 01:47:20', '2022-07-12 07:17:20'),
('8f5e3b683a71e281b4a7850e302ba502435eaf4e27227667198217a42a1a1a8c8ce3407a44c67fbf', 6, 1, 'andrew', '[]', 1, '2021-07-09 03:49:01', '2021-07-09 03:49:01', '2022-07-09 09:19:01'),
('91e6efe2e74a0e9eecf4b6badcfb769e5dfa84984623af8843a1f9f2c1eb185c7e11e1959ce24906', 9, 1, 'andrew', '[]', 1, '2021-07-08 07:27:54', '2021-07-08 07:27:54', '2022-07-08 12:57:54'),
('957b5ce4edd5186fff94e92931cecf2ec99900149ebed6d9476f47139fc1de5afeca74a7ce10250b', 4, 1, 'andrew', '[]', 0, '2021-07-12 04:56:02', '2021-07-12 04:56:02', '2022-07-12 10:26:02'),
('95ffc54da05914c30188b30a4ee4b52d6762e7e1654db461fa870e18e812dd5a792b7819fca979e4', 9, 1, 'andrew', '[]', 1, '2021-07-08 22:59:12', '2021-07-08 22:59:12', '2022-07-09 04:29:12'),
('9f8365e65d6b23b8a8eef3a46cca823239a2b7711d09feca3dd72324c50b082aa8200413fcaa4be7', 7, 1, 'andrew', '[]', 1, '2021-07-07 23:28:39', '2021-07-07 23:28:39', '2022-07-08 04:58:39'),
('9f886eb99e17cc2c01baedd961a4c73d973df02ca8d37c410638d90aa8ea1949c429507b196dd23c', 9, 1, 'andrew', '[]', 1, '2021-07-08 22:57:00', '2021-07-08 22:57:00', '2022-07-09 04:27:00'),
('a3fd51745c8aca869073e3ad7f104d9a3d05962cc56f1ead6ee551ad08e5175242edd532939d6542', 2, 1, 'andrew', '[]', 0, '2021-07-12 04:23:05', '2021-07-12 04:23:05', '2022-07-12 09:53:05'),
('a97c7bfe3939de48fde22fc0772a7e068a8789b093e24b2d947ddab1bc559399711782fbbb5f75ac', 1, 1, 'andrew', '[]', 1, '2021-07-12 01:17:17', '2021-07-12 01:17:17', '2022-07-12 06:47:17'),
('ab5daa7100b9486f1fbf38e5e9e19479b6208425ededcc0eb97bbeb9039e909608874aae32e9fc3b', 19, 1, 'andrew', '[]', 0, '2021-07-12 08:00:43', '2021-07-12 08:00:43', '2022-07-12 13:30:43'),
('ac1f927eaaba0097bf5c306b14d6e922067ea9bfc55e8208f54e16913a4d31cdd73cd9c8c3e0fd2b', 4, 1, 'andrew', '[]', 0, '2021-07-07 22:55:38', '2021-07-07 22:55:38', '2022-07-08 04:25:38'),
('aeca89aab7137ecd1550fd89d9f57f5e4cbb29746dd500463da14875cc689a01003c30bf066162a1', 18, 1, 'andrew', '[]', 0, '2021-07-12 07:59:01', '2021-07-12 07:59:01', '2022-07-12 13:29:01'),
('b40d9924df5cd2e76483d5bd8943e0636569a1f75691e104b14be8e88233214eff697fb490ef1912', 9, 1, 'andrew', '[]', 1, '2021-07-08 22:57:59', '2021-07-08 22:57:59', '2022-07-09 04:27:59'),
('b7a1589e5c870c801183d040efe03e7028817339b099edd8a2e0cb0c5c57838b76436973b2dcf383', 2, 1, 'andrew', '[]', 1, '2021-07-12 01:22:25', '2021-07-12 01:22:25', '2022-07-12 06:52:25'),
('b9b694fcf2c6539e8f8f19b0af51a4b112d92874ea90c9ef3e7ba61f33b6c89903243875369a90a2', 9, 1, 'andrew', '[]', 1, '2021-07-08 07:26:19', '2021-07-08 07:26:19', '2022-07-08 12:56:19'),
('bb84c95e1aa023b709918924e52f72c5b1f8a9f3fc62424cc2397cc02cec4fe9eb9b421cfa3590ca', 11, 1, 'andrew', '[]', 0, '2021-07-12 06:06:35', '2021-07-12 06:06:35', '2022-07-12 11:36:35'),
('c127e3914b8c35f8e79c8f1e11b6ab212698b6c7dddb101b9eb1c0d326ce9aa503573454fd328033', 11, 1, 'andrew', '[]', 1, '2021-07-09 06:35:24', '2021-07-09 06:35:24', '2022-07-09 12:05:24'),
('c18f9d0dd23a59be744d8926fa31d9112deec7e44b7ca64e9117954825bf3d892b8e9f5a54ff3fd3', 6, 1, 'andrew', '[]', 0, '2021-07-12 05:27:59', '2021-07-12 05:27:59', '2022-07-12 10:57:59'),
('c8f8d1155922619cdfa75afc0f77336a1c2eb8334fa7ffa62ece9413b62b1440719888de9c23ecb8', 13, 1, 'andrew', '[]', 0, '2021-07-12 06:10:40', '2021-07-12 06:10:40', '2022-07-12 11:40:40'),
('c98205825b5bdc83163080b90c41211d0feb38e8c505c490b3090a88d22da77b1f93afd25c6954a7', 1, 1, 'andrew', '[]', 1, '2021-07-12 00:56:41', '2021-07-12 00:56:41', '2022-07-12 06:26:41'),
('ccf9cb9a1c5bddf794b7edf9c77e4afb57d488f508f34618af63f29fb527bbfcbbd9b36c113a8209', 3, 1, 'andrew', '[]', 0, '2021-07-12 01:58:44', '2021-07-12 01:58:44', '2022-07-12 07:28:44'),
('cd304fa0d7460de3ab3dde20924223dc2baee596a42a76848fcbc2d1bf71a2f57093680f668317c8', 7, 1, 'andrew', '[]', 0, '2021-07-12 05:53:29', '2021-07-12 05:53:29', '2022-07-12 11:23:29'),
('ce7da84dd4ec59d65bf5eb8f09c8deaaae5585cc534d98dd051cbd6280106816607d813d3d8bdf96', 6, 1, 'andrew', '[]', 0, '2021-07-09 03:49:26', '2021-07-09 03:49:26', '2022-07-09 09:19:26'),
('d0d352daeb5bbf4d52d4412c23767f82ea88cba280725f824412d70efc441d3d7de88dd000fef46e', 5, 1, 'andrew', '[]', 0, '2021-07-07 23:14:40', '2021-07-07 23:14:40', '2022-07-08 04:44:40'),
('d4819849b26aff9bb98b83831b6a7c16f7d557fcebc8e2a46b88941721cd726b2faa9894ca8ba9c6', 1, 1, 'andrew', '[]', 0, '2021-07-12 05:18:40', '2021-07-12 05:18:40', '2022-07-12 10:48:40'),
('d82ff0e18cb618e7ed114ed7313b82d688f48fd719fed3ce88543d648f58ea6893484a5ab2413cef', 16, 1, 'andrew', '[]', 0, '2021-07-12 06:47:20', '2021-07-12 06:47:20', '2022-07-12 12:17:20'),
('dbd09270c58d4c0311dee9b0e663ecb0a48dec53899f4bee8e429ae3cbeeb72fc77829dbd00c6738', 1, 1, 'andrew', '[]', 1, '2021-07-12 03:49:39', '2021-07-12 03:49:39', '2022-07-12 09:19:39'),
('dcee5e8c8cb9cf9ac7e9b056065ca026cc17b1bc364e7575ae2563e94438672e84938940b085021f', 3, 1, 'andrew', '[]', 1, '2021-07-12 01:57:29', '2021-07-12 01:57:29', '2022-07-12 07:27:29'),
('de7b14bec91a892159196c089777dc96104e74890d445e8af38e4c2bc07011a8da4231f18df2cac6', 3, 1, 'andrew', '[]', 1, '2021-07-07 06:07:15', '2021-07-07 06:07:15', '2022-07-07 11:37:15'),
('df69825e3beb7621b6bde8109b68c6391fcb484942646b893a1ae6faa7b7595f334f56a4cfc34db9', 13, 1, 'andrew', '[]', 0, '2021-07-09 04:40:25', '2021-07-09 04:40:25', '2022-07-09 10:10:25'),
('e13252304a259de8a8213ab057feac468b38ee6bcf309352b29933bded63df547bc7f4ab98b8309a', 1, 1, 'andrew', '[]', 1, '2021-07-12 01:16:00', '2021-07-12 01:16:00', '2022-07-12 06:46:00'),
('ead48975120619063888e1a561d3f9c4cbaacd9457a633d1eac14231a297a7fbf152ac358ec4a7df', 2, 1, 'andrew', '[]', 1, '2021-07-12 01:40:32', '2021-07-12 01:40:32', '2022-07-12 07:10:32'),
('ed571cc588783899382ce41fbd8fb721872a4cbd8cc0583789c20b5b2a314dc2cbbb31edccbed3cc', 7, 1, 'andrew', '[]', 1, '2021-07-12 05:51:13', '2021-07-12 05:51:13', '2022-07-12 11:21:13'),
('ef02489a884afaf3b4bb2f7942678534c7905897886fc00b9cb40b61241693b75caee93f042f2f99', 2, 1, 'andrew', '[]', 1, '2021-07-12 01:40:49', '2021-07-12 01:40:49', '2022-07-12 07:10:49'),
('f0b113f4dbe5998f25a9a474bec7014c191b51f5aed06cfc9cbd687e113f739f8050bd1860bd0a3b', 9, 1, 'andrew', '[]', 1, '2021-07-08 23:01:45', '2021-07-08 23:01:45', '2022-07-09 04:31:45'),
('f38bd09a34af4c4fe3294f5d7d5a501546853aa1e212a62b2e470168e14ca1bd846cae9b6d1986c1', 2, 1, 'andrew', '[]', 1, '2021-07-07 05:59:48', '2021-07-07 05:59:48', '2022-07-07 11:29:48'),
('f54c73c5e44ba1ad533cb488bab6290870fd27b2c8c31270e700ec08c7ecc0649af791ee13acf9bd', 15, 1, 'andrew', '[]', 1, '2021-07-12 06:25:37', '2021-07-12 06:25:37', '2022-07-12 11:55:37'),
('f775a00bba76df1a38774525b355278f142b561ca3e9e362d51af40ffbf83893567fe5426ed3d26d', 1, 1, 'andrew', '[]', 1, '2021-07-12 01:02:47', '2021-07-12 01:02:47', '2022-07-12 06:32:47'),
('fe983213594669ad537c2d43600e64084d2dda7de1b0d668bf65046d67d6c6290f84a3c2a9a63fec', 1, 1, 'andrew', '[]', 1, '2021-07-12 03:53:39', '2021-07-12 03:53:39', '2022-07-12 09:23:39'),
('ff140d7a7679fb7405e4ec5babfafe1476091342629166db7a924c3208596c64ccb2ad73b7c1383b', 12, 1, 'andrew', '[]', 0, '2021-07-09 04:15:10', '2021-07-09 04:15:10', '2022-07-09 09:45:10');

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
(1, '+91', '9876061473', '4029', '2021-07-12 01:26:12', '2021-07-12 01:26:12'),
(2, '+91', '9876061473', '2536', '2021-07-12 01:48:35', '2021-07-12 01:48:35'),
(3, '+91', '9876061473', '2094', '2021-07-12 01:49:22', '2021-07-12 01:49:22'),
(4, '+91', '9876061473', '5968', '2021-07-12 01:50:04', '2021-07-12 01:50:04'),
(5, '+91', '9876061473', '6470', '2021-07-12 01:52:49', '2021-07-12 01:52:49'),
(7, '+91', '9876061473', '8882', '2021-07-12 02:30:10', '2021-07-12 02:30:10'),
(9, '+91', '7351333354', '2310', '2021-07-12 03:35:21', '2021-07-12 03:35:21'),
(10, '+91', '7351333354', '9154', '2021-07-12 03:38:36', '2021-07-12 03:38:36'),
(11, '+91', '7351333354', '2740', '2021-07-12 03:39:34', '2021-07-12 03:39:34'),
(12, '+91', '8556025369', '7197', '2021-07-12 03:40:03', '2021-07-12 03:40:03'),
(13, '+91', '8556025369', '5032', '2021-07-12 03:40:31', '2021-07-12 03:40:31'),
(14, '+91', '7060897342', '8007', '2021-07-12 03:41:06', '2021-07-12 03:41:06'),
(15, '+91', '7351333354', '6852', '2021-07-12 03:49:57', '2021-07-12 03:49:57'),
(16, '+91', '9468105119', '4823', '2021-07-12 03:50:29', '2021-07-12 03:50:29'),
(17, '+91', '7351333354', '3537', '2021-07-12 04:06:38', '2021-07-12 04:06:38'),
(18, '+91', '7351633354', '2872', '2021-07-12 04:16:28', '2021-07-12 04:16:28'),
(19, '+91', '7351633354', '9140', '2021-07-12 04:16:46', '2021-07-12 04:16:46'),
(20, '+91', '7351633354', '2152', '2021-07-12 04:16:59', '2021-07-12 04:16:59'),
(21, '+91', '7351633354', '9033', '2021-07-12 04:17:05', '2021-07-12 04:17:05'),
(22, '+91', '7351633354', '9574', '2021-07-12 04:17:11', '2021-07-12 04:17:11'),
(23, '+91', '7351633354', '6655', '2021-07-12 04:17:18', '2021-07-12 04:17:18'),
(24, '+91', '7351633354', '4665', '2021-07-12 04:17:24', '2021-07-12 04:17:24'),
(25, '+91', '7351633354', '8546', '2021-07-12 04:17:29', '2021-07-12 04:17:29'),
(26, '+91', '8556025369', '4253', '2021-07-12 04:56:34', '2021-07-12 04:56:34'),
(27, '+91', '8556025369', '1031', '2021-07-12 04:56:38', '2021-07-12 04:56:38'),
(28, '+91', '8556025369', '8949', '2021-07-12 04:56:58', '2021-07-12 04:56:58'),
(29, '+91', '7351333354', '6920', '2021-07-12 04:56:59', '2021-07-12 04:56:59'),
(30, '+91', '9876061473', '6921', '2021-07-12 04:57:00', '2021-07-12 04:57:00'),
(31, '+91', '8556025369', '6981', '2021-07-12 04:57:30', '2021-07-12 04:57:30'),
(32, '+91', '8556025369', '6368', '2021-07-12 04:57:44', '2021-07-12 04:57:44'),
(35, '+91', '7351333354', '5031', '2021-07-12 05:03:22', '2021-07-12 05:03:22'),
(36, '+91', '8556025369', '7233', '2021-07-12 05:03:30', '2021-07-12 05:03:30'),
(37, '+91', '7351333354', '9017', '2021-07-12 05:03:46', '2021-07-12 05:03:46'),
(38, '+91', '7351333354', '5540', '2021-07-12 05:06:53', '2021-07-12 05:06:53'),
(39, '+91', '7351333354', '7450', '2021-07-12 05:06:57', '2021-07-12 05:06:57'),
(40, '+91', '7351333354', '3315', '2021-07-12 05:07:02', '2021-07-12 05:07:02'),
(43, '+91', '7351333354', '4634', '2021-07-12 05:23:49', '2021-07-12 05:23:49'),
(46, '+91', '8556025369', '5429', '2021-07-12 05:49:31', '2021-07-12 05:49:31'),
(49, '+91', '9843484594', '2295', '2021-07-12 05:55:17', '2021-07-12 05:55:17'),
(50, '+91', '9996171434', '5229', '2021-07-12 05:55:31', '2021-07-12 05:55:31'),
(51, '+91', '9996171434', '5966', '2021-07-12 05:55:52', '2021-07-12 05:55:52'),
(52, '+91', '9996171434', '6129', '2021-07-12 05:56:04', '2021-07-12 05:56:04'),
(53, '+91', '8556025369', '1707', '2021-07-12 06:00:23', '2021-07-12 06:00:23'),
(58, '+91', '8556025369', '5357', '2021-07-12 06:09:44', '2021-07-12 06:09:44'),
(62, '+91', '8556025369', '1420', '2021-07-12 06:17:26', '2021-07-12 06:17:26'),
(63, '+91', '5222222222', '8399', '2021-07-12 06:19:24', '2021-07-12 06:19:24'),
(64, '+91', '4543646656', '2253', '2021-07-12 06:21:16', '2021-07-12 06:21:16'),
(65, '+91', '9996171434', '6968', '2021-07-12 06:24:03', '2021-07-12 06:24:03'),
(66, '+91', '2225666990', '2509', '2021-07-12 06:37:46', '2021-07-12 06:37:46'),
(67, '+91', '8521385101', '7301', '2021-07-12 06:44:37', '2021-07-12 06:44:37'),
(78, '+91', '0000000000', '8325', '2021-07-12 07:32:14', '2021-07-12 07:32:14'),
(80, '+91', '8901009083', '5095', '2021-07-12 07:36:43', '2021-07-12 07:36:43'),
(81, '+91', '8901009083', '1657', '2021-07-12 07:36:45', '2021-07-12 07:36:45'),
(83, '+91', '8901009083', '6407', '2021-07-12 07:37:49', '2021-07-12 07:37:49'),
(84, '+91', '8901009083', '5125', '2021-07-12 07:37:57', '2021-07-12 07:37:57'),
(85, '+91', '8901009083', '1672', '2021-07-12 07:38:06', '2021-07-12 07:38:06'),
(86, '+91', '8901009083', '7348', '2021-07-12 07:38:34', '2021-07-12 07:38:34'),
(88, '+91', '8901009083', '6898', '2021-07-12 07:41:55', '2021-07-12 07:41:55'),
(89, '+91', '8901009083', '3619', '2021-07-12 07:42:18', '2021-07-12 07:42:18'),
(91, '+91', '8901009083', '6286', '2021-07-12 07:43:29', '2021-07-12 07:43:29'),
(92, '+91', '4848874884', '6268', '2021-07-12 07:44:38', '2021-07-12 07:44:38'),
(93, '+91', '8901009083', '7941', '2021-07-12 07:46:40', '2021-07-12 07:46:40'),
(94, '+91', '9876111111', '4607', '2021-07-12 07:46:47', '2021-07-12 07:46:47'),
(95, '+91', '9876111111', '3684', '2021-07-12 07:46:52', '2021-07-12 07:46:52'),
(96, '+91', '8448484887', '3101', '2021-07-12 07:59:12', '2021-07-12 07:59:12'),
(97, '+91', '8558506060', '7981', '2021-07-12 08:00:50', '2021-07-12 08:00:50'),
(98, '+91', '1111111111', '5203', '2021-07-12 08:10:23', '2021-07-12 08:10:23'),
(99, '+91', '8787878484', '9957', '2021-07-12 08:13:28', '2021-07-12 08:13:28'),
(100, '+91', '1111111111', '9928', '2021-07-12 08:16:52', '2021-07-12 08:16:52'),
(101, '+91', '1111111111', '6697', '2021-07-12 08:17:48', '2021-07-12 08:17:48');

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
('abc12@yopmail.com', 'uD7TxDOs4cRNQJ6U5oxrXK22zLUqdnY91GYORhWYPlKuRRjbG1y9kVoJmShzcxlK', '2021-07-08 06:29:03'),
('jkl@yopmail.com', 'Oe7ne0F3FC2yUzgCyLNIx0Y3y84XowDomMMhicZgqWNjhrGl1VhHbvvb3d0DUpcQ', '2021-07-08 07:27:45'),
('abc3@yopmail.com', 'L3R19MwkTj6d3tEapYei4gYov43jWaS8Hr0pkXnozQBdMXa2zNrP1A4ZhKQev35b', '2021-07-09 04:41:51'),
('abc3@yopmail.com', 'cwt9pJUxKulm856BVFqk69S4OQQ5aWLuEhtAcFuN9OgJFHoqCn0WQAf8qs5TX8EB', '2021-07-09 04:42:22'),
('abc3@yopmail.com', 'HGhtrvzWgIGHKx4mPWHS2idJwmE7fOE0XJJ1Hqd1TJeKGlrRJeUj7Dn0GuPQuTNI', '2021-07-09 04:43:08'),
('abc3@yopmail.com', 'dh8AzTwYIPbwgGQ6zTsxfooCjgLjo3DqGTZgrz0FzvrmDWJNKLYymBPRQSH1Wo4R', '2021-07-09 04:44:25'),
('abc3@yopmail.com', 'leHblJ40LRNvVg7aqYRo7Q9rNjdkfV3lj145Od5CG8CDTvw1YZ571mRHrQ0PaIov', '2021-07-09 04:44:34'),
('abc3@yopmail.com', 'NZvKsBDo7b76x1cilwuaRhfK7ZtT1Y7zEgAnfXBLT7Wel9aJnFgjHpJGnzdC8X01', '2021-07-09 04:44:43'),
('abc3@yopmail.com', '4DDPIwBIvnmRBPSzuZwf92SWZli1cKoyIGFVnKE9zEJD8JXLPu3xapPm7NsmC2g4', '2021-07-09 04:44:51'),
('abc3@yopmail.com', 'aVValUhDgw49WlIjmjvbwqfFJXJiCcsdT5HS4yxHGOlLuVdrlg5VfiaSbOOPPZII', '2021-07-09 04:45:00'),
('abc3@yopmail.com', 'EakzXecTr6unevKE6QcSejohgBx6Ny3jZ8LT2W9JKLySO3qkjucuRSlcrWEglSyh', '2021-07-09 04:45:29'),
('abc3@yopmail.com', '9MBOvDJi3ga9ian2V4hthyyr5EdSEoJzzoBk999vBOoM3ggw3fDNBoDvlmZl6oe5', '2021-07-09 04:45:43'),
('abc3@yopmail.com', 'XmujaB3DYQnQcbOcERTJUAmEchz56JY2ydR1UzGuAlEDGJIjZTM3YZ1ATQlKlKcB', '2021-07-09 04:48:08'),
('abc3@yopmail.com', 'p1sA2LrKN3E06vx2OQIAJJs0BcDVHKukpXabRf2zcODKkxRJxl5Y7TBeboY3LykL', '2021-07-09 04:50:29'),
('abc3@yopmail.com', '6cLPSHlkH3rppllwYpae3EcwBCOen6p2tHitl0AMEEqbPCMhhgP04jSYY6MPbpOI', '2021-07-09 05:00:26'),
('abc3@yopmail.com', 'U12LBTbfrZ532OIwxgudckNzb6adygAdMmHfNVUHBPd8V76mOmYIhZVKGIZ3sStA', '2021-07-09 05:00:32'),
('abc3@yopmail.com', '6Qarj7oegrC8rwZJPP6UwGIXMKHFfw9ndUwq2VPtIyvlIm2IIf9prqlxFb51FfCA', '2021-07-09 05:00:37'),
('abc3@yopmail.com', 'y1WpP0teG9t3mqzJsFQeAfeDEJUksjxY3iG56HnOEgzUWqi5wVUwdDXMrz1DEfHP', '2021-07-09 05:00:42'),
('abc3@yopmail.com', 'sDECrS39W8rBI2SGJGuKwS46ojAzejNcZqbJg8y6LaXOL2zxS6yJnIaTt04gMPDT', '2021-07-09 05:05:00'),
('abc3@yopmail.com', '3v4OzMyolYBT0XThflxHSNIEGQBU2aMJE71U7D7RBt8CnyUaR8q2qsqB8504wyif', '2021-07-09 05:05:30'),
('abc3@yopmail.com', 'aakJmy58RfmVwoDFTRdDSLy1ymoK8vo0RukEopWnajYRj8xmJCkPHHnAwvztlW93', '2021-07-09 05:05:39'),
('abc3@yopmail.com', 'CkPXP87jzj4PMQ4jN4ODPCQkTjO5qV3HVcHjifQZMYxraLfZyWVOKYYCklzfSsnk', '2021-07-09 05:05:49'),
('abc3@yopmail.com', 'DPEV2uhB2WcZDR3cKIXnuAJMkGkM5E6S9gYSqwmeKhDjvIWRoA71G8W3uecknclk', '2021-07-09 05:15:06');

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
(1, NULL, '91', '7657892349', 'abc', 'koko', 'abc123@yopmail.com', '$2y$10$DCAQBSgoO9vnsxcI8a.nqOD39gHTYKtzWlAADSYT1.6hXYnnaEMVi', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-12 01:15:45', '2021-07-12 03:53:39', NULL),
(2, '0712202106522560ebe6a9618bb.png', '+91', '16516511', 'abc', 'koko', 'abc1234@yopmail.com', '$2y$10$NGtw218IUSOP/ArH9iPS8.aFT5M86s2nTECyfM4ORYGIX/moGnPlm', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Ios', 'jaskfjsajfljal', NULL, 'VVn9VXkPeNOA0hdwRcWQbQpTGtlvGGJVKj5XGWR7Ftuy3PiUFjsPBMxUApAAQORh', '0', '1', NULL, NULL, '2021-07-12 01:22:25', '2021-07-12 01:40:32', NULL),
(3, '0712202107272960ebeee11e407.png', '+91', '16516511', 'abc', 'koko', 'abc124@yopmail.com', '$2y$10$N99s/wyfSKjo95gffmJX9uptrVoCJMFABF7JiwpLYSu2/MAh6srFS', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-12 01:57:29', '2021-07-12 01:58:44', NULL),
(4, '0712202110260260ec18ba4bbc0.png', '+91', '16516511', 'abc', 'koko', 'abc12344@yopmail.com', '$2y$10$R4Kp5q80kV9yK7v3J5bROO6oUOBkEdAuFN/SCDZ.8KtcMJdSIPKHS', 'Mohali', 'IN', '2012-12-12', 'Male', NULL, 'None', NULL, NULL, '4dtica9GpaucvLNy04BqGxJAnXVO2yAzb4Z9U03JHSNufnb3LgRPw52tvrD4DYye', '0', '0', NULL, NULL, '2021-07-12 04:56:02', '2021-07-12 04:56:02', NULL),
(5, '<UIImage:0x6000019b6910 named(main: profilePic) {110, 110}>', '+91', '8556025369', 'abc', '123', 'a1@yopmail.com', '$2y$10$PfOw6KCko0vJGFLubc7tD.1Ql25662t9ihepf6ASkSuFm7hk2j5BC', 'Abu Dhabi', 'Ascension Island', '2006-03-11', 'Male', NULL, 'None', NULL, NULL, 'xjnuUjGXl7xEVXO4N4a93e162vg2NgZ5hleCOWtGWd3PQDfZnNgvo0u939MecEys', '0', '0', NULL, NULL, '2021-07-12 05:02:20', '2021-07-12 05:02:20', NULL),
(6, '/file:/storage/emulated/0/Android/data/com.capital/files/DCIM/IMG_20210712_162750875.jpg', '+91', '7351333354', 'Naveen', 'pokhriyal', 'pokhriyalnaveen1@gmail.com', '$2y$10$U/BhsvkPLnawjQ0tm7X1jOJmQo68q7n8cIe6rvtIzXp6u52jR3gba', 'Dubai', 'Japan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, 'yfvODPCLqVYzEMbWkBhh1lJYUmsWKT5PKD9zRDDYlD65GqBwGfbQPoHfQCXgkFzo', '0', '0', NULL, NULL, '2021-07-12 05:27:59', '2021-07-12 05:27:59', NULL),
(7, '<UIImage:0x28033dcb0 named(main: profilePic) {110, 110}>', '+91', '8556025369', 'abc', 'cuz', 'ab12@yopmail.com', '$2y$10$cJvPbQDkZ7sYkEdW17pQq.k1K5piH73/l42cRQ.5hnZ4KmleCV9oi', 'Al Ain', 'Andorra', '2018-03-25', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, '2021-07-12 05:51:13', '2021-07-12 05:53:29', NULL),
(8, '/file:/storage/emulated/0/Android/data/com.capital/files/DCIM/IMG_20210712_165558992.jpg', '+1', '7351333354', 'New', 'User', 'new1@yopmail.com', '$2y$10$SaxLZogL4VsYFjSlAhPhQ.UiCxlCQZmh7rq0yIPjMVwwvQ/KGhnKm', 'Ajman', 'Japan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, 'vlS64EbWFHkutiayy0tKyYzXQseB4mjsmgXykbLjB2pibL4rCBiFkbTgXbzGppvb', '0', '0', NULL, NULL, '2021-07-12 05:56:15', '2021-07-12 05:56:15', NULL),
(9, '/file:/storage/emulated/0/Android/data/com.capital/files/DCIM/IMG_20210712_170134692.jpg', '+1', '7351333354', 'naveen', 'pokhriyal', 'new2@yopmail.com', '$2y$10$mIerfozwEpbqih1qxIgYcumPH6jLUew31.2q0/iwAgx7O2ozUEMxe', 'Abu Dhabi', 'Japan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, 'frmtbeTCG8OQ15ZuW05G2AVo1vg2HOX2IsMD0kzMi8cWwKp0RhsBzjmL4kaWmQu8', '0', '0', NULL, NULL, '2021-07-12 06:01:51', '2021-07-12 06:01:51', NULL),
(10, '/file:/storage/emulated/0/Android/data/com.capital/files/DCIM/IMG_20210712_170352020.jpg', '+1', '7351333354', 'Naveen', 'pokhriyal', 'new3@yopail.com', '$2y$10$kVK3Wd2jvVujcQnbVq.5VupJmTBvpl2RCQxHbpZlWtRxPldSn9lqO', 'Ajman', 'Japan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, '31x3WZYz4bPYPW0qMr7NWKp5VJAEebe3DA78yEglAgTyUistON3qrFjTJdJkbYFv', '0', '0', NULL, NULL, '2021-07-12 06:04:08', '2021-07-12 06:04:08', NULL),
(11, '/file:/storage/emulated/0/Android/data/com.capital/files/DCIM/IMG_20210712_170619878.jpg', '+1', '7894651234', 'asd', 'asdasd', 'asd@yopmail.com', '$2y$10$eZiP.aDmZxIein/jqTpalebMJlNiEHWr5FRttJL80IHgRcQJ2y4Eu', 'Ajman', 'Japan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, 'YohISA8aSomARkPS88CkGYdGtBXEi0dEKkB3AyNqu1B1YcmOzM3eMDlb2S8ROjxb', '0', '0', NULL, NULL, '2021-07-12 06:06:35', '2021-07-12 06:06:35', NULL),
(12, '<UIImage:0x60000014afd0 named(main: profilePic) {110, 110}>', '+91', '8556025369', 'abc', 'www', 'df@yopmail.com', '$2y$10$JTFvi/EDsAhoOy0Eks2WRucMDUzah6K8vtZuGXbM8bDHOZ9ao6o4u', 'Abu Dhabi', 'Ascension Island', '1992-09-19', 'Male', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, '2021-07-12 06:08:19', '2021-07-12 06:08:56', NULL),
(13, '/file:/storage/emulated/0/Android/data/com.capital/files/DCIM/IMG_20210712_171021240.jpg', '+1', '7351636484', 'zczx', 'zzxczx', 'zxc@yopmail.com', '$2y$10$GraccyfOhtHY6yH76D5Pau4uHHpscVdrwsx2HTiKqX3U9PJ6iN5lq', 'Abu Dhabi', 'Japan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, 'U1Z3HnOWWY7T2hDr9FJTCr8Ij8WWMLpbti72eH3VUofabkqyabDNeEW0xm2HfY71', '0', '0', NULL, NULL, '2021-07-12 06:10:40', '2021-07-12 06:10:40', NULL),
(14, '/file:/storage/emulated/0/Android/data/com.capital/files/DCIM/IMG_20210712_171713051.jpg', '+1', '7351333354', 'asd', 'asdad', 'asdasd@yopmail.com', '$2y$10$sWOmSMaZe.zhO/.EjSEgoOdusB3QYlDujnf/wn1Cx72Znzlp4vQeC', 'Ajman', 'Japan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, '7uyzrg6IyDeFrJWjGZl01tQtNRFVDGXgIIuTH9m9DMrHf2ufWsXsHu656DmYRT01', '0', '0', NULL, NULL, '2021-07-12 06:17:43', '2021-07-12 06:17:43', NULL),
(15, '<UIImage:0x2821dee20 named(main: profilePic) {110, 110}>', '+91', '9996171434', 'Manish', 'Gumbal', 'manish@yopmail.com', '$2y$10$XJ1A9jCSk1Y4.zR0AqYl1.DHULgeh2ij8N4RdWY/2xqAtDbya/XSK', 'Al Ain', 'India', '1991-07-12', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, '2021-07-12 06:25:37', '2021-07-12 06:26:29', NULL),
(16, '<UIImage:0x28022c120 named(main: profilePic) {110, 110}>', '+91', '8521385101', 'Manish', 'Gumbal', 'mann@yopmail.com', '$2y$10$tnIHWachKnNFKucDxeuA0uouHtgdRZWirQ.3y3GUPD9a808MGajHa', 'Ajman', 'Afghanistan', '2011-07-12', 'Male', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, '2021-07-12 06:46:34', '2021-07-12 06:47:20', NULL),
(17, '0712202113075960ec3eaff1a4a.jpg', '+91', '7351333354', 'Naveen', 'pokhriyal', 'new12@yopmail.com', '$2y$10$uzGivpCSSeEeYWYl8/ZTs.JriSsicLfAmOcxABsFwvKs0Z5Gi06Uu', 'Ajman', 'Japan', '2021-07-12', 'Male', 'null', 'Android', 'temp_token', NULL, NULL, '0', '1', NULL, NULL, '2021-07-12 07:38:00', '2021-07-12 07:38:39', NULL),
(18, '<UIImage:0x28316ccf0 named(main: profilePic) {110, 110}>', '+91', '9876111111', 'shhshdhdhdhdhdhdhddhhdhdhddhdhdhfhd', 'Shhshd', 'snnsns@yopmail.com', '$2y$10$umPUfIC1UeU0JiFmyg207eAtTTJ.ubsOx0u9CzGZG0q49nfkHxzoO', 'Abu Dhabi', 'Afghanistan', '2021-04-09', 'Male', NULL, 'None', NULL, NULL, 'XW7qg19itQTQSBblDyxNb5BHe7TNalIWspqV6i3YlBEwtfOtLpPRUYd259u8HDM8', '0', '0', NULL, NULL, '2021-07-12 07:59:01', '2021-07-12 07:59:01', NULL),
(19, '<UIImage:0x2836f4d80 named(main: profilePic) {110, 110}>', '+91', '8448484887', 'Janak', 'raj', 'aman@yopmail.com', '$2y$10$OMnINATTG1cBaTt3teV8ueLPPLkhiw8O7y2IuC3.Fp6yw7O8ofvsG', 'Abu Dhabi', 'Afghanistan', '2016-05-12', 'Male', NULL, 'None', NULL, NULL, 'iqW3glkI1fTYLDglF6VPSvkDwG9mg19N77nxlqB1j2N6GcppxGpoxo7cd1oxPKN4', '0', '0', NULL, NULL, '2021-07-12 08:00:43', '2021-07-12 08:00:43', NULL),
(20, '<UIImage:0x2813af4e0 named(main: profilePic) {110, 110}>', '+91', '8901009083', 'Deepak Sharma 😊', 'Sharma Sharma 😂', 'deep.deep@yopmail.com', '$2y$10$gbjUswB3lqdG0vn2.HxFS.5Od8w09jlNnOOysJK11UMXShOqJSL5e', 'Abu Dhabi', 'India', '2002-07-12', 'Male', 'Tester123', 'None', NULL, NULL, 'dcaYu8kg896nbO3n8mfac79P8Y52sv3vvHBxxhEdhKn0iHULqsTja1IhjuN6oOg3', '0', '0', NULL, NULL, '2021-07-12 08:13:58', '2021-07-12 08:13:58', NULL),
(21, '<UIImage:0x283ab7690 named(main: profilePic) {110, 110}>', '+91', '8787878484', 'zbzb', 'shah', 'hh@yopmail.com', '$2y$10$P4fpzKJT6lQSrm0slv5OdO2KfF.LiANf.bThXuXsgctJe2Dh.FEEu', 'Abu Dhabi', 'Afghanistan', '2020-07-12', 'Male', '1', 'None', NULL, NULL, 'E4TM6dMOrJBhInyPRLlsjoErHHT9ClVPSnckhGA6xjHc8mUvvWEdQ1sL5SQzJepb', '0', '0', NULL, NULL, '2021-07-12 08:16:21', '2021-07-12 08:16:21', NULL),
(22, '<UIImage:0x283ab7690 named(main: profilePic) {110, 110}>', '+91', '1111111111', 'trst', 'Vujovic', 'amann@yopmail.com', '$2y$10$pV/jsmjKNeWt2OE/vJUaDeLdkoihgP.oUMYIXMkw30M6ulIHSDavi', 'Abu Dhabi', 'Afghanistan', '2021-07-12', 'Male', NULL, 'None', NULL, NULL, 'Ed5XMUeVYRFAsEQYr849YwGGWXmsewk2k48AebxETCamZpHTeIghVSlMMAFFa3aX', '0', '0', NULL, NULL, '2021-07-12 08:17:36', '2021-07-12 08:17:36', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
