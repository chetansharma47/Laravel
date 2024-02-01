-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2024 at 07:16 PM
-- Server version: 8.0.36-0ubuntu0.20.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society_19_january`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_friends`
--

CREATE TABLE `add_friends` (
  `id` int NOT NULL,
  `from_user_id` varchar(255) DEFAULT NULL,
  `to_user_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_friends`
--

INSERT INTO `add_friends` (`id`, `from_user_id`, `to_user_id`, `status`) VALUES
(2, '228', '1', 'Pending'),
(6, '228', '2', 'Pending'),
(7, '228', '4', 'Pending'),
(9, '228', '13', 'Pending'),
(10, '90', '2', 'Accepted'),
(11, '188', '229', 'Accepted'),
(12, '228', '3', 'Pending'),
(14, '90', '21', 'Pending'),
(16, '90', '1', 'Pending'),
(17, '90', '11', 'Pending'),
(20, '90', '101', 'Pending'),
(22, '90', '102', 'Pending'),
(23, '90', '103', 'Pending'),
(24, '90', '104', 'Pending'),
(25, '90', '105', 'Pending'),
(26, '90', '106', 'Pending'),
(27, '90', '107', 'Pending'),
(28, '90', '108', 'Pending'),
(29, '90', '109', 'Pending'),
(30, '90', '110', 'Pending'),
(31, '90', '111', 'Pending'),
(32, '90', '112', 'Pending'),
(33, '90', '113', 'Pending'),
(34, '90', '114', 'Pending'),
(35, '90', '115', 'Pending'),
(36, '90', '116', 'Pending'),
(37, '90', '117', 'Pending'),
(41, '90', '90', 'Pending'),
(42, '200', '90', 'Pending'),
(43, '228', '5', 'Pending'),
(44, '228', '6', 'Pending'),
(45, '188', '100', 'Accept'),
(46, '188', '1', 'Pending'),
(47, '188', '38', 'Pending'),
(48, '188', '3', 'Pending'),
(49, '231', '1', 'Pending'),
(50, '228', '232', 'Accept'),
(51, '188', '232', 'Accept'),
(54, '234', '14', 'Accepted'),
(67, '188', '183', 'Pending'),
(68, '230', '1', 'Pending'),
(69, '228', '7', 'Pending'),
(70, '228', '8', 'Pending'),
(71, '234', '231', 'Pending'),
(72, '234', '230', 'Pending'),
(73, '234', '1', 'Pending'),
(81, '234', '8', 'Pending'),
(82, '234', '9', 'Pending'),
(83, '234', '11', 'Pending'),
(84, '234', '13', 'Pending'),
(85, '234', '15', 'Pending'),
(86, '237', '1', 'Pending'),
(87, '237', '3', 'Pending'),
(88, '237', '4', 'Pending'),
(89, '237', '9', 'Pending'),
(90, '237', '5', 'Pending'),
(91, '237', '11', 'Pending'),
(92, '234', '2', 'Pending'),
(93, '234', '3', 'Pending'),
(94, '240', '2', 'Pending'),
(96, '240', '11', 'Pending'),
(97, '240', '1', 'Pending'),
(98, '240', '3', 'Pending'),
(99, '240', '4', 'Pending'),
(100, '240', '64', 'Pending'),
(103, '244', '13', 'Pending'),
(104, '244', '14', 'Pending'),
(105, '244', '15', 'Pending'),
(106, '244', '16', 'Pending'),
(107, '244', '17', 'Pending'),
(108, '244', '18', 'Pending'),
(109, '244', '19', 'Pending'),
(110, '244', '20', 'Pending'),
(111, '244', '21', 'Pending'),
(112, '244', '22', 'Pending'),
(113, '244', '23', 'Pending'),
(114, '244', '25', 'Pending'),
(115, '244', '24', 'Pending'),
(116, '244', '26', 'Pending'),
(117, '244', '27', 'Pending'),
(118, '244', '28', 'Pending'),
(119, '244', '29', 'Pending'),
(120, '244', '30', 'Pending'),
(121, '244', '31', 'Pending'),
(122, '244', '49', 'Pending'),
(123, '244', '50', 'Pending'),
(124, '244', '51', 'Pending'),
(125, '244', '1', 'Pending'),
(126, '244', '2', 'Pending'),
(127, '244', '3', 'Pending'),
(128, '244', '4', 'Pending'),
(129, '244', '5', 'Pending'),
(130, '245', '1', 'Pending'),
(131, '244', '81', 'Pending'),
(135, '244', '116', 'Pending'),
(136, '243', '1', 'Pending'),
(139, '243', '66', 'Pending'),
(140, '243', '67', 'Pending'),
(141, '243', '68', 'Pending'),
(142, '243', '69', 'Pending'),
(143, '243', '70', 'Pending'),
(144, '243', '71', 'Pending'),
(145, '243', '72', 'Pending'),
(146, '243', '73', 'Pending'),
(147, '243', '74', 'Pending'),
(148, '243', '75', 'Pending'),
(149, '243', '76', 'Pending'),
(150, '243', '77', 'Pending'),
(151, '243', '78', 'Pending'),
(152, '243', '79', 'Pending'),
(153, '243', '80', 'Pending'),
(154, '243', '81', 'Pending'),
(155, '243', '82', 'Pending'),
(156, '243', '83', 'Pending'),
(157, '243', '84', 'Pending'),
(158, '243', '85', 'Pending'),
(159, '243', '86', 'Pending'),
(160, '243', '87', 'Pending'),
(161, '243', '88', 'Pending'),
(162, '243', '89', 'Pending'),
(163, '243', '90', 'Pending'),
(164, '243', '91', 'Pending'),
(165, '243', '92', 'Pending'),
(166, '243', '118', 'Pending'),
(167, '243', '119', 'Pending'),
(168, '243', '120', 'Pending'),
(169, '243', '121', 'Pending'),
(170, '243', '122', 'Pending'),
(171, '243', '123', 'Pending'),
(172, '243', '124', 'Pending'),
(173, '243', '125', 'Pending'),
(174, '243', '126', 'Pending'),
(175, '243', '127', 'Pending'),
(176, '243', '128', 'Pending'),
(177, '243', '129', 'Pending'),
(178, '243', '130', 'Pending'),
(179, '243', '131', 'Pending'),
(180, '243', '132', 'Pending'),
(181, '243', '133', 'Pending'),
(182, '243', '134', 'Pending'),
(183, '243', '135', 'Pending'),
(184, '243', '136', 'Pending'),
(185, '243', '137', 'Pending'),
(186, '243', '138', 'Pending'),
(187, '243', '139', 'Pending'),
(188, '243', '140', 'Pending'),
(189, '243', '141', 'Pending'),
(190, '243', '142', 'Pending'),
(191, '243', '143', 'Pending'),
(192, '243', '144', 'Pending'),
(193, '243', '145', 'Pending'),
(194, '243', '146', 'Pending'),
(195, '243', '147', 'Pending'),
(196, '243', '65', 'Pending'),
(197, '243', '209', 'Pending'),
(198, '243', '210', 'Pending'),
(199, '243', '211', 'Pending'),
(200, '243', '212', 'Pending'),
(201, '243', '213', 'Pending'),
(202, '243', '214', 'Pending'),
(203, '243', '215', 'Pending'),
(204, '243', '216', 'Pending'),
(205, '243', '217', 'Pending'),
(206, '243', '218', 'Pending'),
(207, '243', '219', 'Pending'),
(208, '243', '220', 'Pending'),
(209, '243', '221', 'Pending'),
(210, '243', '222', 'Pending'),
(211, '243', '223', 'Pending'),
(212, '243', '224', 'Pending'),
(213, '243', '225', 'Pending'),
(214, '243', '226', 'Pending'),
(215, '243', '227', 'Pending'),
(217, '243', '229', 'Pending'),
(218, '243', '230', 'Pending'),
(219, '243', '231', 'Pending'),
(220, '243', '232', 'Pending'),
(223, '243', '235', 'Pending'),
(224, '243', '236', 'Pending'),
(225, '243', '237', 'Pending'),
(226, '243', '238', 'Pending'),
(227, '243', '64', 'Pending'),
(228, '243', '63', 'Pending'),
(229, '243', '62', 'Pending'),
(230, '243', '61', 'Pending'),
(231, '243', '60', 'Pending'),
(232, '243', '59', 'Pending'),
(233, '243', '58', 'Pending'),
(234, '243', '57', 'Pending'),
(235, '243', '56', 'Pending'),
(236, '243', '55', 'Pending'),
(237, '243', '54', 'Pending'),
(238, '243', '53', 'Pending'),
(239, '243', '52', 'Pending'),
(240, '243', '51', 'Pending'),
(241, '243', '50', 'Pending'),
(242, '243', '49', 'Pending'),
(243, '243', '48', 'Pending'),
(244, '243', '47', 'Pending'),
(245, '243', '46', 'Pending'),
(246, '243', '45', 'Pending'),
(247, '243', '44', 'Pending'),
(248, '243', '43', 'Pending'),
(249, '243', '42', 'Pending'),
(250, '243', '41', 'Pending'),
(251, '243', '40', 'Pending'),
(252, '243', '39', 'Pending'),
(253, '243', '38', 'Pending'),
(254, '243', '37', 'Pending'),
(255, '243', '36', 'Pending'),
(256, '243', '35', 'Pending'),
(257, '243', '34', 'Pending'),
(258, '243', '33', 'Pending'),
(259, '243', '32', 'Pending'),
(260, '243', '31', 'Pending'),
(261, '243', '30', 'Pending'),
(262, '243', '29', 'Pending'),
(263, '243', '28', 'Pending'),
(264, '243', '27', 'Pending'),
(265, '243', '26', 'Pending'),
(266, '243', '25', 'Pending'),
(267, '243', '24', 'Pending'),
(268, '243', '23', 'Pending'),
(269, '243', '22', 'Pending'),
(270, '243', '21', 'Pending'),
(271, '243', '20', 'Pending'),
(272, '243', '19', 'Pending'),
(273, '243', '18', 'Pending'),
(274, '243', '17', 'Pending'),
(275, '243', '16', 'Pending'),
(276, '243', '15', 'Pending'),
(277, '243', '14', 'Pending'),
(278, '243', '13', 'Pending'),
(279, '243', '12', 'Pending'),
(280, '243', '11', 'Pending'),
(281, '243', '9', 'Pending'),
(282, '243', '8', 'Pending'),
(283, '243', '7', 'Pending'),
(284, '243', '6', 'Pending'),
(285, '243', '5', 'Pending'),
(286, '243', '4', 'Pending'),
(287, '243', '3', 'Pending'),
(288, '243', '2', 'Pending'),
(289, '243', '105', 'Pending'),
(290, '243', '106', 'Pending'),
(291, '243', '107', 'Pending'),
(292, '243', '108', 'Pending'),
(293, '243', '109', 'Pending'),
(294, '243', '110', 'Pending'),
(295, '243', '111', 'Pending'),
(296, '243', '112', 'Pending'),
(297, '243', '113', 'Pending'),
(298, '243', '114', 'Pending'),
(299, '243', '115', 'Pending'),
(300, '243', '116', 'Pending'),
(301, '243', '117', 'Pending'),
(302, '243', '148', 'Pending'),
(303, '243', '149', 'Pending'),
(304, '243', '150', 'Pending'),
(305, '243', '151', 'Pending'),
(306, '243', '152', 'Pending'),
(307, '243', '169', 'Pending'),
(308, '243', '170', 'Pending'),
(309, '243', '171', 'Pending'),
(310, '243', '172', 'Pending'),
(311, '243', '173', 'Pending'),
(312, '243', '174', 'Pending'),
(313, '243', '175', 'Pending'),
(314, '243', '176', 'Pending'),
(315, '243', '177', 'Pending'),
(316, '243', '178', 'Pending'),
(317, '243', '179', 'Pending'),
(318, '243', '180', 'Pending'),
(319, '243', '181', 'Pending'),
(320, '243', '182', 'Pending'),
(321, '243', '183', 'Pending'),
(322, '243', '184', 'Pending'),
(323, '243', '185', 'Pending'),
(324, '243', '186', 'Pending'),
(325, '243', '187', 'Pending'),
(327, '243', '189', 'Pending'),
(328, '243', '190', 'Pending'),
(329, '243', '191', 'Pending'),
(330, '243', '192', 'Pending'),
(331, '243', '193', 'Pending'),
(332, '243', '194', 'Pending'),
(333, '243', '195', 'Pending'),
(334, '243', '196', 'Pending'),
(335, '243', '197', 'Pending'),
(336, '243', '198', 'Pending'),
(337, '243', '104', 'Pending'),
(338, '243', '103', 'Pending'),
(339, '243', '102', 'Pending'),
(340, '243', '101', 'Pending'),
(341, '243', '100', 'Pending'),
(342, '243', '99', 'Pending'),
(343, '243', '98', 'Pending'),
(344, '243', '97', 'Pending'),
(345, '243', '96', 'Pending'),
(346, '243', '95', 'Pending'),
(347, '243', '94', 'Pending'),
(348, '246', '1', 'Pending'),
(349, '246', '2', 'Pending'),
(350, '243', '93', 'Pending'),
(351, '246', '3', 'Pending'),
(352, '246', '4', 'Pending'),
(353, '246', '5', 'Pending'),
(354, '246', '6', 'Pending'),
(355, '246', '7', 'Pending'),
(356, '246', '8', 'Pending'),
(357, '246', '9', 'Pending'),
(358, '246', '11', 'Pending'),
(359, '246', '12', 'Pending'),
(360, '246', '13', 'Pending'),
(361, '246', '14', 'Pending'),
(362, '246', '15', 'Pending'),
(363, '246', '16', 'Pending'),
(364, '246', '17', 'Pending'),
(365, '246', '18', 'Pending'),
(366, '246', '19', 'Pending'),
(367, '246', '20', 'Pending'),
(368, '246', '21', 'Pending'),
(369, '246', '22', 'Pending'),
(370, '246', '23', 'Pending'),
(371, '246', '24', 'Pending'),
(372, '246', '25', 'Pending'),
(373, '246', '26', 'Pending'),
(374, '246', '27', 'Pending'),
(375, '246', '28', 'Pending'),
(376, '246', '29', 'Pending'),
(377, '246', '30', 'Pending'),
(378, '246', '31', 'Pending'),
(379, '246', '32', 'Pending'),
(380, '246', '33', 'Pending'),
(381, '246', '34', 'Pending'),
(382, '246', '35', 'Pending'),
(383, '246', '36', 'Pending'),
(384, '246', '37', 'Pending'),
(385, '246', '38', 'Pending'),
(386, '246', '39', 'Pending'),
(387, '246', '40', 'Pending'),
(388, '246', '41', 'Pending'),
(389, '246', '42', 'Pending'),
(390, '246', '43', 'Pending'),
(391, '246', '44', 'Pending'),
(392, '246', '45', 'Pending'),
(393, '246', '46', 'Pending'),
(394, '246', '47', 'Pending'),
(395, '246', '48', 'Pending'),
(396, '246', '49', 'Pending'),
(397, '246', '50', 'Pending'),
(398, '246', '51', 'Pending'),
(399, '246', '52', 'Pending'),
(400, '246', '53', 'Pending'),
(401, '246', '54', 'Pending'),
(402, '246', '55', 'Pending'),
(403, '246', '56', 'Pending'),
(404, '246', '57', 'Pending'),
(405, '246', '58', 'Pending'),
(406, '246', '59', 'Pending'),
(407, '246', '60', 'Pending'),
(408, '246', '61', 'Pending'),
(409, '243', '153', 'Pending'),
(410, '243', '154', 'Pending'),
(411, '243', '155', 'Pending'),
(412, '243', '156', 'Pending'),
(413, '243', '157', 'Pending'),
(414, '246', '62', 'Pending'),
(415, '243', '158', 'Pending'),
(416, '246', '63', 'Pending'),
(417, '243', '159', 'Pending'),
(418, '243', '160', 'Pending'),
(419, '243', '161', 'Pending'),
(420, '243', '162', 'Pending'),
(421, '243', '163', 'Pending'),
(422, '243', '164', 'Pending'),
(423, '243', '165', 'Pending'),
(424, '243', '166', 'Pending'),
(425, '243', '167', 'Pending'),
(426, '243', '168', 'Pending'),
(427, '243', '199', 'Pending'),
(428, '243', '200', 'Pending'),
(429, '243', '201', 'Pending'),
(430, '243', '202', 'Pending'),
(431, '246', '64', 'Pending'),
(432, '243', '203', 'Pending'),
(433, '246', '65', 'Pending'),
(434, '243', '204', 'Pending'),
(435, '243', '205', 'Pending'),
(436, '243', '206', 'Pending'),
(437, '243', '207', 'Pending'),
(438, '243', '208', 'Pending'),
(439, '246', '66', 'Pending'),
(440, '243', '239', 'Pending'),
(441, '246', '67', 'Pending'),
(442, '243', '240', 'Pending'),
(443, '246', '68', 'Pending'),
(444, '243', '241', 'Pending'),
(445, '246', '69', 'Pending'),
(446, '243', '242', 'Pending'),
(447, '246', '70', 'Pending'),
(448, '246', '71', 'Pending'),
(449, '246', '72', 'Pending'),
(450, '246', '73', 'Pending'),
(451, '246', '74', 'Pending'),
(452, '246', '75', 'Pending'),
(453, '246', '76', 'Pending'),
(454, '246', '77', 'Pending'),
(455, '246', '78', 'Pending'),
(456, '246', '79', 'Pending'),
(457, '246', '80', 'Pending'),
(458, '246', '81', 'Pending'),
(459, '246', '82', 'Pending'),
(460, '246', '83', 'Pending'),
(461, '246', '84', 'Pending'),
(462, '243', '244', 'Pending'),
(463, '246', '245', 'Accepted'),
(464, '234', '150', 'Pending'),
(466, '248', '245', 'Accepted'),
(467, '243', '248', 'Pending'),
(470, '250', '243', 'Accepted'),
(471, '250', '249', 'Pending'),
(474, '228', '61', 'Pending'),
(475, '228', '39', 'Pending'),
(476, '228', '12', 'Pending'),
(477, '251', '1', 'Pending'),
(478, '251', '2', 'Pending'),
(479, '251', '3', 'Pending'),
(480, '251', '4', 'Pending'),
(481, '251', '5', 'Pending'),
(482, '251', '9', 'Pending'),
(483, '251', '6', 'Pending'),
(484, '251', '11', 'Pending'),
(485, '251', '7', 'Pending'),
(486, '251', '8', 'Pending'),
(487, '251', '61', 'Pending'),
(488, '251', '108', 'Pending'),
(489, '251', '150', 'Pending'),
(490, '251', '159', 'Pending'),
(491, '251', '189', 'Pending'),
(493, '234', '4', 'Pending'),
(494, '234', '22', 'Pending'),
(495, '234', '32', 'Pending'),
(497, '234', '61', 'Pending'),
(498, '234', '242', 'Pending'),
(499, '234', '5', 'Pending'),
(500, '234', '16', 'Pending'),
(501, '234', '17', 'Pending'),
(502, '234', '23', 'Pending'),
(503, '234', '21', 'Pending'),
(514, '228', '146', 'Pending'),
(526, '234', '228', 'Pending'),
(527, '234', '172', 'Pending'),
(530, '262', '70', 'Pending'),
(534, '261', '263', 'Pending'),
(535, '263', '259', 'Pending'),
(540, '263', '260', 'Pending'),
(546, '264', '263', 'Pending'),
(552, '262', '261', 'Pending'),
(555, '262', '264', 'Pending'),
(558, '264', '260', 'Pending'),
(559, '264', '258', 'Pending'),
(560, '264', '257', 'Pending'),
(561, '264', '259', 'Pending'),
(562, '264', '255', 'Pending'),
(565, '264', '265', 'Pending'),
(568, '266', '219', 'Pending'),
(569, '266', '109', 'Pending'),
(570, '266', '263', 'Pending'),
(573, '268', '266', 'Accepted'),
(574, '188', '243', 'Pending'),
(575, '188', '267', 'Accepted'),
(579, '266', '269', 'Accepted'),
(580, '266', '270', 'Accepted'),
(585, '266', '267', 'Pending'),
(587, '266', '271', 'Accepted'),
(594, '266', '265', 'Pending'),
(595, '266', '264', 'Pending'),
(598, '272', '269', 'Pending'),
(599, '272', '271', 'Pending'),
(600, '272', '224', 'Pending'),
(603, '266', '36', 'Pending'),
(613, '234', '271', 'Pending'),
(621, '254', '272', 'Accepted'),
(630, '233', '274', 'Accepted'),
(634, '274', '61', 'Pending'),
(635, '274', '224', 'Pending'),
(636, '188', '274', 'Accepted'),
(637, '262', '275', 'Accepted'),
(639, '265', '275', 'Pending'),
(640, '262', '276', 'Pending'),
(641, '277', '276', 'Pending'),
(643, '277', '278', 'Accepted'),
(644, '277', '267', 'Pending'),
(645, '278', '267', 'Pending'),
(650, '262', '280', 'Accepted'),
(651, '278', '280', 'Pending'),
(653, '278', '281', 'Accepted'),
(659, '90', '20', 'Accepted'),
(660, '281', '233', 'Accepted'),
(669, '188', '233', 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_type` enum('Super Admin','Admin','Marketing','Managment','Staff') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `role_type`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Nadeer', 'adminn@yopmail.com', '$2y$10$01b9.qb3ioJYe3LZK6Yamey.JP5XELdGOBNTGjYT.CWJjMLMeTAyW', 'Active', 'Super Admin', 'HPsiCUUZYcaBLVy9HveeniJFqgsRCjS6RYpZM1VJHBmr9FQYvo9jXc2nrls8P1bw', '2021-11-10 18:30:00', '2024-02-01 05:03:34', 'Nadeer', 'Nadeer'),
(2, 'admin2', NULL, '$2y$10$R45f7IQlsUW2t/kK1UtlR.RHJuwBv7/FvMOkWCFxPJUJdz8fcnFjC', 'Active', 'Admin', 'F0JOfly5MFkD7frjm8CWXgcafeeEZckoBvJB4TS5UcbnOkakovZb6t8s085E', '2021-11-11 06:26:38', '2021-11-16 09:03:01', 'Nadeer', 'Nadeer'),
(3, 'admin3', NULL, '$2y$10$VFDKE91U.vQ2oNYBYEva7unzwJmoXtyLrDKKzOYAYtKzANqOUQ14u', 'Active', 'Managment', 'E9geyFHuB1cnTUv1lPXPsF7iHqp0rpUYnmXwggLvCftwMV4MtbLF8vRk2mCV', '2021-11-11 06:28:56', '2022-01-24 04:01:30', 'admin2', 'Nadeer'),
(4, 'kanhaiya', NULL, '$2y$10$S2ClRSThHO0X10on0SUBO.ga3Z1UgA/a9x7COjhh3jAQvgGAX6Dki', 'Active', 'Super Admin', 'T3Tl08cPzGgVVjSzzbVaA8rHmVhTzQl9jyXfLTPLeSxPhEK5yd0jKy0IZd2INf1H', '2021-11-12 13:54:05', '2021-11-15 05:33:16', 'Nadeer', 'admin2'),
(5, 'kamal', NULL, '$2y$10$C/e306XmnKmqWR1ke8NmQ.tjqFJA7SgDIkNWfB7PUWHsNQCV45ld.', 'Active', 'Staff', 'ba12PwD1P22v2y7PGPBITnS0ATycylUHAdyUfo4Ilts8vFRL2NinegfSztrW', '2021-11-12 14:21:08', '2021-11-15 06:08:54', 'kanhaiya', 'Nadeer'),
(6, 'harman', NULL, '$2y$10$QHcQkmki3OABvV6p/1uiLeOSaJLvi3L3ddAmCB3yRCL9/dZoTIPpG', 'Active', 'Admin', 'T5kd7cCcD52ryje0QybCtIoivhjwg9O8kmwnGNBPuMzp2RWDdMEVY9X3ZLawKdim', '2021-11-16 06:47:14', '2021-11-16 06:48:19', 'Nadeer', 'Nadeer'),
(7, 'da', NULL, '$2y$10$8NHbg52YnI5fSETef8GMMuavCObTx3GKySLSbeU3vsalZxZw7Uh.u', 'Active', 'Super Admin', NULL, '2021-11-16 07:27:49', '2021-11-16 07:27:49', 'admin2', 'admin2'),
(8, 'eq', NULL, '$2y$10$qRMTUCPqzfX2mmnaWEVtPeqk/X5YrX6ntqbTBua3gXNkwFe0Vuav6', 'Active', 'Super Admin', NULL, '2021-11-16 07:32:18', '2021-11-16 07:32:18', 'admin2', 'admin2'),
(9, 'test', NULL, '$2y$10$PAhrHuyj.d8jLIOUJdky9udRUHwFIyzVmKhiSbIlsLrjvl7lE4RKa', 'Active', 'Super Admin', NULL, '2022-01-19 05:23:45', '2022-01-19 05:23:45', 'Nadeer', 'Nadeer');

-- --------------------------------------------------------

--
-- Table structure for table `admin_criteria_notifications`
--

CREATE TABLE `admin_criteria_notifications` (
  `id` int UNSIGNED NOT NULL,
  `city_id` int DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `city_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `push_type` int NOT NULL DEFAULT '0',
  `sms_type` int NOT NULL DEFAULT '0',
  `gender` enum('None','Male','Female','Other','All') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `noti_type` int DEFAULT NULL COMMENT '1=> Transaction, 2=> Cahsback, 3=> Bonus, 4=>  Referral, 5 => Event,  6=> Offer, 7=> Creteria',
  `event_id` int DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_criteria_notifications`
--

INSERT INTO `admin_criteria_notifications` (`id`, `city_id`, `user_id`, `city_name`, `message`, `push_type`, `sms_type`, `gender`, `nationality`, `sent_by`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `noti_type`, `event_id`, `offer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-12 13:29:06', '2021-11-12 13:29:06', NULL),
(2, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 13:31:43', '2021-11-12 13:31:43', NULL),
(3, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 13:31:45', '2021-11-12 13:31:45', NULL),
(4, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 13:35:44', '2021-11-12 13:35:44', NULL),
(5, 1, 1, 'Abu Dhabi', 'fdsfdf', 1, 0, 'Female', 'Afghanistan', 'Nadeer', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-12 13:36:40', '2021-11-12 13:36:40', NULL),
(6, 1, 1, 'Abu Dhabi', 'ddfdf', 1, 0, 'Female', 'Afghanistan', 'Nadeer', '2021-11-12', '2021-11-12', 'Greater Than', 50, NULL, 7, NULL, NULL, '2021-11-12 13:37:18', '2021-11-12 13:37:18', NULL),
(7, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 13:42:19', '2021-11-12 13:42:19', NULL),
(8, NULL, 2, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 13:45:18', '2021-11-12 13:45:18', NULL),
(9, NULL, 1, NULL, 'This is a referral code bonus', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 4, NULL, NULL, '2021-11-12 13:46:22', '2021-11-12 13:46:22', NULL),
(10, NULL, 2, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 13:46:25', '2021-11-12 13:46:25', NULL),
(11, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 13:47:22', '2021-11-12 13:47:22', NULL),
(12, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-12 14:01:41', '2021-11-12 14:01:41', NULL),
(13, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-12 14:01:42', '2021-11-12 14:01:42', NULL),
(14, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-12 14:01:43', '2021-11-12 14:01:43', NULL),
(15, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:03:16', '2021-11-12 14:03:16', NULL),
(16, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:03:17', '2021-11-12 14:03:17', NULL),
(17, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:03:18', '2021-11-12 14:03:18', NULL),
(18, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:03:19', '2021-11-12 14:03:19', NULL),
(19, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Offer1 at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 3, '2021-11-12 14:03:21', '2021-11-12 14:03:21', NULL),
(20, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:03:22', '2021-11-12 14:03:22', NULL),
(21, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:03:23', '2021-11-12 14:03:23', NULL),
(22, NULL, 2, NULL, 'What\'s Happening Today: Enjoy offer4 at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 5, '2021-11-12 14:03:24', '2021-11-12 14:03:24', NULL),
(23, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:04:28', '2021-11-12 14:04:28', NULL),
(24, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2021-11-12 14:04:29', '2021-11-12 14:04:29', NULL),
(25, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:04:30', '2021-11-12 14:04:30', NULL),
(26, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2021-11-12 14:04:31', '2021-11-12 14:04:31', NULL),
(27, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:04:32', '2021-11-12 14:04:32', NULL),
(28, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Birthday Offer at Venue3\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 4, '2021-11-12 14:04:33', '2021-11-12 14:04:33', NULL),
(29, NULL, 2, NULL, 'What\'s Happening Today: Enjoy offer5 at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 6, '2021-11-12 14:04:34', '2021-11-12 14:04:34', NULL),
(30, 1, 1, 'Abu Dhabi', 'fddfdsf', 1, 0, 'All', 'Afghanistan', 'kanhaiya', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-12 14:06:59', '2021-11-12 14:06:59', NULL),
(31, 1, 2, 'Abu Dhabi', 'fddfdsf', 1, 0, 'All', 'Afghanistan', 'kanhaiya', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-12 14:07:00', '2021-11-12 14:07:00', NULL),
(32, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:24:31', '2021-11-12 14:24:31', NULL),
(33, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:24:31', '2021-11-12 14:24:31', NULL),
(34, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:25:05', '2021-11-12 14:25:05', NULL),
(35, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:26:37', '2021-11-12 14:26:37', NULL),
(36, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:27:24', '2021-11-12 14:27:24', NULL),
(37, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:28:24', '2021-11-12 14:28:24', NULL),
(38, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:28:56', '2021-11-12 14:28:56', NULL),
(39, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:29:31', '2021-11-12 14:29:31', NULL),
(40, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:29:37', '2021-11-12 14:29:37', NULL),
(41, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:46:15', '2021-11-12 14:46:15', NULL),
(42, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:47:48', '2021-11-12 14:47:48', NULL),
(43, NULL, 1, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2021-11-12 14:49:04', '2021-11-12 14:49:04', NULL),
(44, NULL, 1, NULL, 'Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2021-11-12 14:49:23', '2021-11-12 14:49:23', NULL),
(45, NULL, 1, NULL, 'What\'s Happening Today: Enjoy asdgha at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 10, '2021-11-15 07:39:55', '2021-11-15 07:39:55', NULL),
(46, NULL, 1, NULL, 'What\'s Happening Today: Enjoy guyguy at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 11, '2021-11-15 09:06:15', '2021-11-15 09:06:15', NULL),
(47, NULL, 1, NULL, 'What\'s Happening Today: Enjoy gawtq at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 12, '2021-11-15 09:07:06', '2021-11-15 09:07:06', NULL),
(48, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:33:41', '2021-11-16 04:33:41', NULL),
(49, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:33:42', '2021-11-16 04:33:42', NULL),
(50, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:33:44', '2021-11-16 04:33:44', NULL),
(51, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:33:45', '2021-11-16 04:33:45', NULL),
(52, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:37:07', '2021-11-16 04:37:07', NULL),
(53, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:37:08', '2021-11-16 04:37:08', NULL),
(54, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:37:09', '2021-11-16 04:37:09', NULL),
(55, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:37:10', '2021-11-16 04:37:10', NULL),
(56, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:38:29', '2021-11-16 04:38:29', NULL),
(57, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:38:30', '2021-11-16 04:38:30', NULL),
(58, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:40:17', '2021-11-16 04:40:17', NULL),
(59, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:40:18', '2021-11-16 04:40:18', NULL),
(60, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:41:33', '2021-11-16 04:41:33', NULL),
(61, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:41:34', '2021-11-16 04:41:34', NULL),
(62, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:41:51', '2021-11-16 04:41:51', NULL),
(63, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:41:52', '2021-11-16 04:41:52', NULL),
(64, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:42:36', '2021-11-16 04:42:36', NULL),
(65, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:42:37', '2021-11-16 04:42:37', NULL),
(66, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:43:59', '2021-11-16 04:43:59', NULL),
(67, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:00', '2021-11-16 04:44:00', NULL),
(68, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:44:01', '2021-11-16 04:44:01', NULL),
(69, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:02', '2021-11-16 04:44:02', NULL),
(70, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:44:47', '2021-11-16 04:44:47', NULL),
(71, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:48', '2021-11-16 04:44:48', NULL),
(72, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:44:49', '2021-11-16 04:44:49', NULL),
(73, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:44:50', '2021-11-16 04:44:50', NULL),
(74, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:46:38', '2021-11-16 04:46:38', NULL),
(75, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:46:39', '2021-11-16 04:46:39', NULL),
(76, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:46:40', '2021-11-16 04:46:40', NULL),
(77, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:46:41', '2021-11-16 04:46:41', NULL),
(78, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:16', '2021-11-16 04:47:16', NULL),
(79, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:17', '2021-11-16 04:47:17', NULL),
(80, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:18', '2021-11-16 04:47:18', NULL),
(81, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:19', '2021-11-16 04:47:19', NULL),
(82, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:49', '2021-11-16 04:47:49', NULL),
(83, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:50', '2021-11-16 04:47:50', NULL),
(84, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:47:51', '2021-11-16 04:47:51', NULL),
(85, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:47:52', '2021-11-16 04:47:52', NULL),
(86, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:48:44', '2021-11-16 04:48:44', NULL),
(87, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:48:46', '2021-11-16 04:48:46', NULL),
(88, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:48:46', '2021-11-16 04:48:46', NULL),
(89, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:48:47', '2021-11-16 04:48:47', NULL),
(90, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:49:58', '2021-11-16 04:49:58', NULL),
(91, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:49:59', '2021-11-16 04:49:59', NULL),
(92, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:50:00', '2021-11-16 04:50:00', NULL),
(93, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:50:01', '2021-11-16 04:50:01', NULL),
(94, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:53:16', '2021-11-16 04:53:16', NULL),
(95, NULL, 1, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:53:17', '2021-11-16 04:53:17', NULL),
(96, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event1 at Venue1\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 1, NULL, '2021-11-16 04:53:18', '2021-11-16 04:53:18', NULL),
(97, NULL, 2, NULL, 'What\'s Happening Today: Enjoy Event2 at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 2, NULL, '2021-11-16 04:53:19', '2021-11-16 04:53:19', NULL),
(98, NULL, 1, NULL, 'What\'s Happening Today: Enjoy dwqdwqdwq at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 3, NULL, '2021-11-16 06:09:40', '2021-11-16 06:09:40', NULL),
(99, NULL, 2, NULL, 'What\'s Happening Today: Enjoy dwqdwqdwq at Venue2777\ndummy event', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 5, 3, NULL, '2021-11-16 06:09:41', '2021-11-16 06:09:41', NULL),
(100, NULL, 1, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:48', '2021-11-16 12:23:48', NULL),
(101, NULL, 2, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:49', '2021-11-16 12:23:49', NULL),
(102, NULL, 3, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:50', '2021-11-16 12:23:50', NULL),
(103, NULL, 4, NULL, 'saf', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:23:52', '2021-11-16 12:23:52', NULL),
(104, NULL, 1, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:26', '2021-11-16 12:24:26', NULL),
(105, NULL, 2, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:28', '2021-11-16 12:24:28', NULL),
(106, NULL, 3, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:29', '2021-11-16 12:24:29', NULL),
(107, NULL, 4, NULL, 'dgsdg', 0, 1, 'All', 'Afghanistan', 'admin2', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-11-16 12:24:30', '2021-11-16 12:24:30', NULL),
(108, NULL, 1, NULL, 'Congratulations you have earned cashback amount of 20 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-19 05:22:11', '2022-01-19 05:22:11', NULL),
(109, NULL, 1, NULL, 'Congratulations you have earned cashback amount of 20 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-19 05:22:12', '2022-01-19 05:22:12', NULL),
(110, NULL, 1, NULL, 'Congratulations you have earned cashback amount of 20 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-19 05:22:13', '2022-01-19 05:22:13', NULL),
(111, NULL, 2, NULL, 'Special Offer: Offer! at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 19, '2022-01-25 05:59:49', '2022-01-25 05:59:49', NULL),
(112, NULL, 2, NULL, 'Special Offer: Offer! at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 19, '2022-01-25 06:01:51', '2022-01-25 06:01:51', NULL),
(113, NULL, 2, NULL, 'Special Offer: Offer! at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 19, '2022-01-25 06:05:04', '2022-01-25 06:05:04', NULL),
(114, NULL, 11, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2022-01-27 00:54:00', '2022-01-27 00:54:00', NULL),
(115, NULL, 11, NULL, 'Your Amount has been transaction successfully.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2022-01-27 00:55:56', '2022-01-27 00:55:56', NULL),
(116, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:28', '2022-01-27 03:16:28', NULL),
(117, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:29', '2022-01-27 03:16:29', NULL),
(118, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:30', '2022-01-27 03:16:30', NULL),
(119, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 70 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 03:16:31', '2022-01-27 03:16:31', NULL),
(120, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:13:56', '2022-01-27 04:13:56', NULL),
(121, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:22:00', '2022-01-27 04:22:00', NULL),
(122, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:22:02', '2022-01-27 04:22:02', NULL),
(123, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 04:28:43', '2022-01-27 04:28:43', NULL),
(124, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 14000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 05:35:23', '2022-01-27 05:35:23', NULL),
(125, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 05:47:01', '2022-01-27 05:47:01', NULL),
(126, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 05:47:03', '2022-01-27 05:47:03', NULL),
(127, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 140 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:10:50', '2022-01-27 06:10:50', NULL),
(128, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:16:55', '2022-01-27 06:16:55', NULL),
(129, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 14000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:16:56', '2022-01-27 06:16:56', NULL),
(130, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:37:52', '2022-01-27 06:37:52', NULL),
(131, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:37:54', '2022-01-27 06:37:54', NULL),
(132, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:39:20', '2022-01-27 06:39:20', NULL),
(133, NULL, 11, NULL, 'Congratulations you have earned cashback amount of 2000 AED. Your cashback has been successfully earned.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, '2022-01-27 06:39:21', '2022-01-27 06:39:21', NULL),
(134, NULL, 11, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2022-01-28 00:19:17', '2022-01-28 00:19:17', NULL),
(135, NULL, 11, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2022-01-28 00:29:44', '2022-01-28 00:29:44', NULL),
(136, NULL, 11, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2022-01-28 01:19:40', '2022-01-28 01:19:40', NULL),
(137, NULL, 12, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-20 05:17:58', '2023-10-20 05:17:58', NULL),
(138, NULL, 13, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-20 07:10:50', '2023-10-20 07:10:50', NULL),
(139, NULL, 14, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 05:40:32', '2023-10-23 05:40:32', NULL),
(140, NULL, 14, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 05:42:40', '2023-10-23 05:42:40', NULL),
(141, NULL, 14, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 05:52:57', '2023-10-23 05:52:57', NULL),
(142, NULL, 15, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 06:45:10', '2023-10-23 06:45:10', NULL),
(143, NULL, 16, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 06:46:14', '2023-10-23 06:46:14', NULL),
(144, NULL, 16, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 06:50:03', '2023-10-23 06:50:03', NULL),
(145, NULL, 16, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 06:51:22', '2023-10-23 06:51:22', NULL),
(146, NULL, 17, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 08:26:19', '2023-10-23 08:26:19', NULL),
(147, NULL, 18, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 08:29:59', '2023-10-23 08:29:59', NULL),
(148, NULL, 19, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 09:44:49', '2023-10-23 09:44:49', NULL),
(149, NULL, 20, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 10:14:02', '2023-10-23 10:14:02', NULL),
(150, NULL, 21, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 10:31:02', '2023-10-23 10:31:02', NULL),
(151, NULL, 22, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 10:41:41', '2023-10-23 10:41:41', NULL),
(152, NULL, 23, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-23 23:17:52', '2023-10-23 23:17:52', NULL),
(153, NULL, 14, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-23 23:23:02', '2023-10-23 23:23:02', NULL),
(154, NULL, 23, NULL, 'Special Offer: Birthday Offer? at Venue1\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 1, '2023-10-24 01:20:27', '2023-10-24 01:20:27', NULL),
(155, NULL, 23, NULL, 'Special Offer: Birthday Offer at Venue2777\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 2, '2023-10-24 01:20:29', '2023-10-24 01:20:29', NULL),
(156, NULL, 23, NULL, 'Special Offer: Birthday Offer at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 8, '2023-10-24 01:20:30', '2023-10-24 01:20:30', NULL),
(157, NULL, 23, NULL, 'Special Offer: Birthday Offer at Shivam Test\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 13, '2023-10-24 01:20:31', '2023-10-24 01:20:31', NULL),
(158, NULL, 23, NULL, 'Special Offer: Birthday Offer at TEST 2\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 18, '2023-10-24 01:20:32', '2023-10-24 01:20:32', NULL),
(159, NULL, 23, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-24 01:23:47', '2023-10-24 01:23:47', NULL),
(160, NULL, 24, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 01:32:59', '2023-10-24 01:32:59', NULL),
(161, NULL, 25, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 01:55:32', '2023-10-24 01:55:32', NULL),
(162, NULL, 26, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 08:54:18', '2023-10-24 08:54:18', NULL),
(163, NULL, 27, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 09:24:56', '2023-10-24 09:24:56', NULL),
(164, NULL, 28, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 09:48:09', '2023-10-24 09:48:09', NULL),
(165, NULL, 29, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 10:05:30', '2023-10-24 10:05:30', NULL),
(166, NULL, 30, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 10:21:43', '2023-10-24 10:21:43', NULL),
(167, NULL, 31, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 10:37:30', '2023-10-24 10:37:30', NULL),
(168, NULL, 32, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 23:06:27', '2023-10-24 23:06:27', NULL),
(169, NULL, 33, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-24 23:37:20', '2023-10-24 23:37:20', NULL),
(170, NULL, 34, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 01:29:38', '2023-10-25 01:29:38', NULL),
(171, NULL, 34, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 01:46:00', '2023-10-25 01:46:00', NULL),
(172, NULL, 34, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 01:46:37', '2023-10-25 01:46:37', NULL),
(173, NULL, 35, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 01:54:32', '2023-10-25 01:54:32', NULL),
(174, NULL, 34, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 02:51:51', '2023-10-25 02:51:51', NULL),
(175, NULL, 36, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 03:09:13', '2023-10-25 03:09:13', NULL),
(176, NULL, 37, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 03:13:28', '2023-10-25 03:13:28', NULL),
(177, NULL, 38, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 03:32:13', '2023-10-25 03:32:13', NULL),
(178, NULL, 39, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-25 06:08:17', '2023-10-25 06:08:17', NULL),
(179, NULL, 39, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-25 06:10:30', '2023-10-25 06:10:30', NULL),
(180, NULL, 40, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 02:14:24', '2023-10-26 02:14:24', NULL),
(181, NULL, 41, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 04:52:01', '2023-10-26 04:52:01', NULL),
(182, NULL, 42, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 05:22:38', '2023-10-26 05:22:38', NULL),
(183, NULL, 43, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 05:52:20', '2023-10-26 05:52:20', NULL),
(184, NULL, 44, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 06:17:20', '2023-10-26 06:17:20', NULL),
(185, NULL, 45, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 06:18:29', '2023-10-26 06:18:29', NULL),
(186, NULL, 45, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:19:16', '2023-10-26 06:19:16', NULL),
(187, NULL, 45, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:20:05', '2023-10-26 06:20:05', NULL),
(188, NULL, 46, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 06:31:36', '2023-10-26 06:31:36', NULL),
(189, NULL, 46, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:32:51', '2023-10-26 06:32:51', NULL),
(190, NULL, 44, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:33:55', '2023-10-26 06:33:55', NULL),
(191, NULL, 44, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 06:34:09', '2023-10-26 06:34:09', NULL),
(192, NULL, 47, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:01:19', '2023-10-26 07:01:19', NULL),
(193, NULL, 46, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:07:00', '2023-10-26 07:07:00', NULL),
(194, NULL, 46, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:07:11', '2023-10-26 07:07:11', NULL),
(195, NULL, 48, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:12:53', '2023-10-26 07:12:53', NULL),
(196, NULL, 49, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:17:19', '2023-10-26 07:17:19', NULL),
(197, NULL, 50, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:18:48', '2023-10-26 07:18:48', NULL),
(198, NULL, 51, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 07:25:00', '2023-10-26 07:25:00', NULL),
(199, NULL, 40, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:27:34', '2023-10-26 07:27:34', NULL),
(200, NULL, 40, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:27:40', '2023-10-26 07:27:40', NULL),
(201, NULL, 40, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:27:44', '2023-10-26 07:27:44', NULL),
(202, NULL, 48, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:47:43', '2023-10-26 07:47:43', NULL),
(203, NULL, 48, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:48:00', '2023-10-26 07:48:00', NULL),
(204, NULL, 48, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-26 07:48:31', '2023-10-26 07:48:31', NULL),
(205, NULL, 52, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 08:31:11', '2023-10-26 08:31:11', NULL),
(206, NULL, 53, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-26 23:15:46', '2023-10-26 23:15:46', NULL),
(207, NULL, 53, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 00:03:03', '2023-10-27 00:03:03', NULL),
(208, NULL, 53, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 00:03:08', '2023-10-27 00:03:08', NULL),
(209, NULL, 53, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 00:03:14', '2023-10-27 00:03:14', NULL),
(210, NULL, 54, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 01:09:43', '2023-10-27 01:09:43', NULL),
(211, NULL, 54, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:41:29', '2023-10-27 01:41:29', NULL),
(212, NULL, 54, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:41:46', '2023-10-27 01:41:46', NULL),
(213, NULL, 54, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:41:59', '2023-10-27 01:41:59', NULL),
(214, NULL, 55, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 01:47:27', '2023-10-27 01:47:27', NULL),
(215, NULL, 55, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:48:15', '2023-10-27 01:48:15', NULL),
(216, NULL, 55, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:48:33', '2023-10-27 01:48:33', NULL),
(217, NULL, 55, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 01:48:43', '2023-10-27 01:48:43', NULL),
(218, NULL, 56, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:00:55', '2023-10-27 03:00:55', NULL),
(219, NULL, 56, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:02:00', '2023-10-27 03:02:00', NULL),
(220, NULL, 56, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:03:36', '2023-10-27 03:03:36', NULL),
(221, NULL, 57, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:04:36', '2023-10-27 03:04:36', NULL),
(222, NULL, 56, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:06:08', '2023-10-27 03:06:08', NULL),
(223, NULL, 58, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:08:03', '2023-10-27 03:08:03', NULL),
(224, NULL, 59, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:10:55', '2023-10-27 03:10:55', NULL),
(225, NULL, 60, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:12:21', '2023-10-27 03:12:21', NULL),
(226, NULL, 61, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:19:04', '2023-10-27 03:19:04', NULL),
(227, NULL, 61, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:28:16', '2023-10-27 03:28:16', NULL),
(228, NULL, 62, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:30:12', '2023-10-27 03:30:12', NULL),
(229, NULL, 62, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:30:52', '2023-10-27 03:30:52', NULL),
(230, NULL, 62, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:31:15', '2023-10-27 03:31:15', NULL),
(231, NULL, 62, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:31:24', '2023-10-27 03:31:24', NULL),
(232, NULL, 63, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 03:37:45', '2023-10-27 03:37:45', NULL),
(233, NULL, 63, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:40:40', '2023-10-27 03:40:40', NULL),
(234, NULL, 63, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:40:50', '2023-10-27 03:40:50', NULL),
(235, NULL, 63, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 03:41:02', '2023-10-27 03:41:02', NULL),
(236, NULL, 64, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:14:39', '2023-10-27 07:14:39', NULL),
(237, NULL, 65, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:17:38', '2023-10-27 07:17:38', NULL),
(238, NULL, 64, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:17:50', '2023-10-27 07:17:50', NULL);
INSERT INTO `admin_criteria_notifications` (`id`, `city_id`, `user_id`, `city_name`, `message`, `push_type`, `sms_type`, `gender`, `nationality`, `sent_by`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `noti_type`, `event_id`, `offer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(239, NULL, 64, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:20:15', '2023-10-27 07:20:15', NULL),
(240, NULL, 64, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:20:22', '2023-10-27 07:20:22', NULL),
(241, NULL, 64, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:20:42', '2023-10-27 07:20:42', NULL),
(242, NULL, 66, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:32:34', '2023-10-27 07:32:34', NULL),
(243, NULL, 66, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:14', '2023-10-27 07:33:14', NULL),
(244, NULL, 66, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:20', '2023-10-27 07:33:20', NULL),
(245, NULL, 66, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:27', '2023-10-27 07:33:27', NULL),
(246, NULL, 66, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:33:46', '2023-10-27 07:33:46', NULL),
(247, NULL, 67, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 07:39:38', '2023-10-27 07:39:38', NULL),
(248, NULL, 67, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:46:53', '2023-10-27 07:46:53', NULL),
(249, NULL, 67, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:47:02', '2023-10-27 07:47:02', NULL),
(250, NULL, 67, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:47:08', '2023-10-27 07:47:08', NULL),
(251, NULL, 67, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 07:47:18', '2023-10-27 07:47:18', NULL),
(252, NULL, 68, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:24:04', '2023-10-27 08:24:04', NULL),
(253, NULL, 69, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:37:06', '2023-10-27 08:37:06', NULL),
(254, NULL, 69, NULL, 'The Hello world badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:37:46', '2023-10-27 08:37:46', NULL),
(255, NULL, 70, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:37:52', '2023-10-27 08:37:52', NULL),
(256, NULL, 69, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:37:55', '2023-10-27 08:37:55', NULL),
(257, NULL, 69, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:02', '2023-10-27 08:38:02', NULL),
(258, NULL, 70, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:32', '2023-10-27 08:38:32', NULL),
(259, NULL, 70, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:38', '2023-10-27 08:38:38', NULL),
(260, NULL, 70, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-27 08:38:43', '2023-10-27 08:38:43', NULL),
(261, NULL, 71, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 08:46:50', '2023-10-27 08:46:50', NULL),
(262, NULL, 72, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 09:20:33', '2023-10-27 09:20:33', NULL),
(263, NULL, 73, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 10:00:16', '2023-10-27 10:00:16', NULL),
(264, NULL, 74, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 10:12:51', '2023-10-27 10:12:51', NULL),
(265, NULL, 75, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-27 10:39:57', '2023-10-27 10:39:57', NULL),
(266, NULL, 40, NULL, 'The Hello world badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-30 00:23:59', '2023-10-30 00:23:59', NULL),
(267, NULL, 40, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2023-10-30 00:24:23', '2023-10-30 00:24:23', NULL),
(268, NULL, 76, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-10-30 00:25:21', '2023-10-30 00:25:21', NULL),
(269, NULL, 77, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-15 03:12:31', '2023-12-15 03:12:31', NULL),
(270, NULL, 78, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-18 06:33:13', '2023-12-18 06:33:13', NULL),
(271, NULL, 79, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-20 02:56:30', '2023-12-20 02:56:30', NULL),
(272, NULL, 80, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 01:20:40', '2023-12-21 01:20:40', NULL),
(273, NULL, 81, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 03:02:36', '2023-12-21 03:02:36', NULL),
(274, NULL, 82, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 03:34:10', '2023-12-21 03:34:10', NULL),
(275, NULL, 83, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-21 06:48:20', '2023-12-21 06:48:20', NULL),
(276, NULL, 84, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-28 00:07:08', '2023-12-28 00:07:08', NULL),
(277, NULL, 85, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 01:59:29', '2023-12-29 01:59:29', NULL),
(278, NULL, 86, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 04:21:47', '2023-12-29 04:21:47', NULL),
(279, NULL, 87, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 06:05:40', '2023-12-29 06:05:40', NULL),
(280, NULL, 88, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2023-12-29 07:24:24', '2023-12-29 07:24:24', NULL),
(281, NULL, 89, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-02 02:00:33', '2024-01-02 02:00:33', NULL),
(282, NULL, 90, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-02 04:19:54', '2024-01-02 04:19:54', NULL),
(283, NULL, 91, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-02 05:54:10', '2024-01-02 05:54:10', NULL),
(284, NULL, 92, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 02:14:54', '2024-01-04 02:14:54', NULL),
(285, NULL, 89, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-04 02:42:17', '2024-01-04 02:42:17', NULL),
(286, NULL, 89, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-04 02:42:28', '2024-01-04 02:42:28', NULL),
(287, NULL, 89, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-04 02:42:35', '2024-01-04 02:42:35', NULL),
(288, NULL, 93, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 08:44:16', '2024-01-04 08:44:16', NULL),
(289, NULL, 94, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 23:09:12', '2024-01-04 23:09:12', NULL),
(290, NULL, 95, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-04 23:24:10', '2024-01-04 23:24:10', NULL),
(291, NULL, 96, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-05 01:51:12', '2024-01-05 01:51:12', NULL),
(292, NULL, 97, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-07 23:38:11', '2024-01-07 23:38:11', NULL),
(293, NULL, 98, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-08 00:29:08', '2024-01-08 00:29:08', NULL),
(294, NULL, 99, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-08 01:37:13', '2024-01-08 01:37:13', NULL),
(295, NULL, 100, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-08 02:40:36', '2024-01-08 02:40:36', NULL),
(296, NULL, 1, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:39', '2024-01-09 00:19:39', NULL),
(297, NULL, 2, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:40', '2024-01-09 00:19:40', NULL),
(298, NULL, 3, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(299, NULL, 4, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(300, NULL, 5, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(301, NULL, 6, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(302, NULL, 7, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(303, NULL, 8, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:42', '2024-01-09 00:19:42', NULL),
(304, NULL, 12, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(305, NULL, 13, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(306, NULL, 14, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(307, NULL, 15, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(308, NULL, 16, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(309, NULL, 17, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(310, NULL, 18, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(311, NULL, 19, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(312, NULL, 20, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(313, NULL, 21, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(314, NULL, 22, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(315, NULL, 23, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(316, NULL, 24, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(317, NULL, 25, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(318, NULL, 26, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(319, NULL, 27, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(320, NULL, 28, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(321, NULL, 29, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:48', '2024-01-09 00:19:48', NULL),
(322, NULL, 30, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(323, NULL, 31, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(324, NULL, 32, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(325, NULL, 33, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:50', '2024-01-09 00:19:50', NULL),
(326, NULL, 34, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(327, NULL, 35, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(328, NULL, 36, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(329, NULL, 37, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(330, NULL, 38, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(331, NULL, 39, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(332, NULL, 40, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:54', '2024-01-09 00:19:54', NULL),
(333, NULL, 41, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(334, NULL, 42, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(335, NULL, 43, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(336, NULL, 44, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(337, NULL, 45, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(338, NULL, 46, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:56', '2024-01-09 00:19:56', NULL),
(339, NULL, 47, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:56', '2024-01-09 00:19:56', NULL),
(340, NULL, 48, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(341, NULL, 49, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(342, NULL, 50, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(343, NULL, 51, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(344, NULL, 52, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(345, NULL, 53, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(346, NULL, 54, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(347, NULL, 55, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(348, NULL, 56, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(349, NULL, 57, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(350, NULL, 58, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(351, NULL, 59, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(352, NULL, 60, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(353, NULL, 61, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(354, NULL, 62, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:01', '2024-01-09 00:20:01', NULL),
(355, NULL, 63, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(356, NULL, 64, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(357, NULL, 65, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(358, NULL, 66, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(359, NULL, 67, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:05', '2024-01-09 00:20:05', NULL),
(360, NULL, 68, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(361, NULL, 69, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(362, NULL, 70, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(363, NULL, 71, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(364, NULL, 72, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:08', '2024-01-09 00:20:08', NULL),
(365, NULL, 73, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:08', '2024-01-09 00:20:08', NULL),
(366, NULL, 74, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:10', '2024-01-09 00:20:10', NULL),
(367, NULL, 75, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(368, NULL, 76, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(369, NULL, 77, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(370, NULL, 78, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(371, NULL, 79, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(372, NULL, 80, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(373, NULL, 81, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(374, NULL, 82, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(375, NULL, 83, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:14', '2024-01-09 00:20:14', NULL),
(376, NULL, 84, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(377, NULL, 85, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(378, NULL, 86, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(379, NULL, 87, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(380, NULL, 88, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(381, NULL, 89, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(382, NULL, 90, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:19', '2024-01-09 00:20:19', NULL),
(383, NULL, 91, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(384, NULL, 92, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(385, NULL, 93, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(386, NULL, 94, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(387, NULL, 95, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:21', '2024-01-09 00:20:21', NULL),
(388, NULL, 96, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(389, NULL, 97, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(390, NULL, 98, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(391, NULL, 99, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:24', '2024-01-09 00:20:24', NULL),
(392, NULL, 100, NULL, 'Special Offer: Offers at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 28, '2024-01-09 00:20:25', '2024-01-09 00:20:25', NULL),
(393, NULL, 1, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:00', '2024-01-09 00:22:00', NULL),
(394, NULL, 2, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(395, NULL, 3, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(396, NULL, 4, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(397, NULL, 5, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(398, NULL, 6, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(399, NULL, 7, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(400, NULL, 8, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(401, NULL, 12, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:03', '2024-01-09 00:22:03', NULL),
(402, NULL, 13, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(403, NULL, 14, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(404, NULL, 15, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(405, NULL, 16, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(406, NULL, 17, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(407, NULL, 18, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(408, NULL, 19, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(409, NULL, 20, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(410, NULL, 21, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(411, NULL, 22, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(412, NULL, 23, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(413, NULL, 24, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(414, NULL, 25, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(415, NULL, 26, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(416, NULL, 27, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(417, NULL, 28, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(418, NULL, 29, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:09', '2024-01-09 00:22:09', NULL),
(419, NULL, 30, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(420, NULL, 31, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(421, NULL, 32, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(422, NULL, 33, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:11', '2024-01-09 00:22:11', NULL),
(423, NULL, 34, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(424, NULL, 35, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(425, NULL, 36, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(426, NULL, 37, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(427, NULL, 38, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(428, NULL, 39, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(429, NULL, 40, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(430, NULL, 41, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(431, NULL, 42, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(432, NULL, 43, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(433, NULL, 44, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(434, NULL, 45, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(435, NULL, 46, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(436, NULL, 47, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(437, NULL, 48, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(438, NULL, 49, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(439, NULL, 50, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(440, NULL, 51, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(441, NULL, 52, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(442, NULL, 53, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(443, NULL, 54, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(444, NULL, 55, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(445, NULL, 56, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(446, NULL, 57, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(447, NULL, 58, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(448, NULL, 59, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(449, NULL, 60, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(450, NULL, 61, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:21', '2024-01-09 00:22:21', NULL),
(451, NULL, 62, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:22', '2024-01-09 00:22:22', NULL),
(452, NULL, 63, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(453, NULL, 64, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(454, NULL, 65, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:24', '2024-01-09 00:22:24', NULL),
(455, NULL, 66, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(456, NULL, 67, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(457, NULL, 68, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(458, NULL, 69, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(459, NULL, 70, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(460, NULL, 71, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(461, NULL, 72, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:28', '2024-01-09 00:22:28', NULL),
(462, NULL, 73, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:28', '2024-01-09 00:22:28', NULL),
(463, NULL, 74, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:30', '2024-01-09 00:22:30', NULL),
(464, NULL, 75, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(465, NULL, 76, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(466, NULL, 77, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(467, NULL, 78, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(468, NULL, 79, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(469, NULL, 80, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(470, NULL, 81, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(471, NULL, 82, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(472, NULL, 83, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:34', '2024-01-09 00:22:34', NULL),
(473, NULL, 84, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(474, NULL, 85, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(475, NULL, 86, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(476, NULL, 87, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(477, NULL, 88, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(478, NULL, 89, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(479, NULL, 90, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:38', '2024-01-09 00:22:38', NULL),
(480, NULL, 91, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(481, NULL, 92, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(482, NULL, 93, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(483, NULL, 94, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(484, NULL, 95, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(485, NULL, 96, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:43', '2024-01-09 00:22:43', NULL),
(486, NULL, 97, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:43', '2024-01-09 00:22:43', NULL),
(487, NULL, 98, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:44', '2024-01-09 00:22:44', NULL),
(488, NULL, 99, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:45', '2024-01-09 00:22:45', NULL),
(489, NULL, 100, NULL, 'Special Offer: 2024 at abhay\ndummy', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 6, NULL, 29, '2024-01-09 00:22:46', '2024-01-09 00:22:46', NULL),
(490, NULL, 101, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 07:29:34', '2024-01-09 07:29:34', NULL),
(491, NULL, 102, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 07:56:21', '2024-01-09 07:56:21', NULL),
(492, NULL, 103, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 07:59:48', '2024-01-09 07:59:48', NULL),
(493, NULL, 104, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 08:13:26', '2024-01-09 08:13:26', NULL),
(494, NULL, 105, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 08:56:56', '2024-01-09 08:56:56', NULL),
(495, NULL, 106, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 09:46:30', '2024-01-09 09:46:30', NULL),
(496, NULL, 107, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-09 09:58:08', '2024-01-09 09:58:08', NULL),
(497, NULL, 108, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 00:00:45', '2024-01-10 00:00:45', NULL),
(498, NULL, 109, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 00:14:56', '2024-01-10 00:14:56', NULL),
(499, NULL, 110, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 01:25:43', '2024-01-10 01:25:43', NULL);
INSERT INTO `admin_criteria_notifications` (`id`, `city_id`, `user_id`, `city_name`, `message`, `push_type`, `sms_type`, `gender`, `nationality`, `sent_by`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `noti_type`, `event_id`, `offer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(500, NULL, 111, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 01:32:11', '2024-01-10 01:32:11', NULL),
(501, NULL, 112, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 01:35:36', '2024-01-10 01:35:36', NULL),
(502, NULL, 113, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 02:27:26', '2024-01-10 02:27:26', NULL),
(503, NULL, 114, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 03:45:37', '2024-01-10 03:45:37', NULL),
(504, NULL, 115, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 05:42:55', '2024-01-10 05:42:55', NULL),
(505, NULL, 116, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 07:39:34', '2024-01-10 07:39:34', NULL),
(506, NULL, 117, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 07:48:26', '2024-01-10 07:48:26', NULL),
(507, NULL, 118, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 08:41:32', '2024-01-10 08:41:32', NULL),
(508, NULL, 119, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 23:32:23', '2024-01-10 23:32:23', NULL),
(509, NULL, 120, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-10 23:44:24', '2024-01-10 23:44:24', NULL),
(510, NULL, 121, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 08:11:59', '2024-01-11 08:11:59', NULL),
(511, NULL, 122, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 08:38:19', '2024-01-11 08:38:19', NULL),
(512, NULL, 123, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 08:40:56', '2024-01-11 08:40:56', NULL),
(513, NULL, 124, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 10:05:03', '2024-01-11 10:05:03', NULL),
(514, NULL, 125, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-11 22:49:09', '2024-01-11 22:49:09', NULL),
(515, NULL, 126, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 00:06:28', '2024-01-12 00:06:28', NULL),
(516, NULL, 127, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 00:29:29', '2024-01-12 00:29:29', NULL),
(517, NULL, 128, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 02:20:57', '2024-01-12 02:20:57', NULL),
(518, NULL, 129, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 03:13:32', '2024-01-12 03:13:32', NULL),
(519, NULL, 130, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 05:10:25', '2024-01-12 05:10:25', NULL),
(520, NULL, 131, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 05:24:28', '2024-01-12 05:24:28', NULL),
(521, NULL, 132, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 06:01:28', '2024-01-12 06:01:28', NULL),
(522, NULL, 133, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-12 06:02:52', '2024-01-12 06:02:52', NULL),
(523, NULL, 134, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 04:34:20', '2024-01-16 04:34:20', NULL),
(524, NULL, 135, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 04:59:53', '2024-01-16 04:59:53', NULL),
(525, NULL, 136, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 05:05:44', '2024-01-16 05:05:44', NULL),
(526, NULL, 137, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 05:52:40', '2024-01-16 05:52:40', NULL),
(527, NULL, 138, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 06:32:50', '2024-01-16 06:32:50', NULL),
(528, NULL, 139, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 23:32:37', '2024-01-16 23:32:37', NULL),
(529, NULL, 140, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-16 23:37:48', '2024-01-16 23:37:48', NULL),
(530, NULL, 141, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 00:24:46', '2024-01-17 00:24:46', NULL),
(531, NULL, 142, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 00:44:15', '2024-01-17 00:44:15', NULL),
(532, NULL, 143, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 00:59:27', '2024-01-17 00:59:27', NULL),
(533, NULL, 144, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 01:05:13', '2024-01-17 01:05:13', NULL),
(534, NULL, 145, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 01:26:19', '2024-01-17 01:26:19', NULL),
(535, NULL, 146, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 01:32:20', '2024-01-17 01:32:20', NULL),
(536, NULL, 147, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 01:46:21', '2024-01-17 01:46:21', NULL),
(537, NULL, 148, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 01:50:51', '2024-01-17 01:50:51', NULL),
(538, NULL, 149, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 02:40:38', '2024-01-17 02:40:38', NULL),
(539, NULL, 150, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 04:06:44', '2024-01-17 04:06:44', NULL),
(540, NULL, 151, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 07:22:15', '2024-01-17 07:22:15', NULL),
(541, NULL, 152, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 09:57:06', '2024-01-17 09:57:06', NULL),
(542, NULL, 153, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 10:11:06', '2024-01-17 10:11:06', NULL),
(543, NULL, 154, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-17 10:14:21', '2024-01-17 10:14:21', NULL),
(544, NULL, 155, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 00:49:36', '2024-01-18 00:49:36', NULL),
(545, NULL, 156, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 02:00:29', '2024-01-18 02:00:29', NULL),
(546, NULL, 157, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 02:21:49', '2024-01-18 02:21:49', NULL),
(547, NULL, 158, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 02:50:53', '2024-01-18 02:50:53', NULL),
(548, NULL, 159, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:05:49', '2024-01-18 04:05:49', NULL),
(549, NULL, 160, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:20:56', '2024-01-18 04:20:56', NULL),
(550, NULL, 161, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:28:08', '2024-01-18 04:28:08', NULL),
(551, NULL, 162, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:37:03', '2024-01-18 04:37:03', NULL),
(552, NULL, 163, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:41:53', '2024-01-18 04:41:53', NULL),
(553, NULL, 164, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:46:01', '2024-01-18 04:46:01', NULL),
(554, NULL, 165, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:55:46', '2024-01-18 04:55:46', NULL),
(555, NULL, 166, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 04:59:39', '2024-01-18 04:59:39', NULL),
(556, NULL, 167, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 05:32:58', '2024-01-18 05:32:58', NULL),
(557, NULL, 168, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 05:39:32', '2024-01-18 05:39:32', NULL),
(558, NULL, 169, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 05:43:25', '2024-01-18 05:43:25', NULL),
(559, NULL, 170, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 05:59:53', '2024-01-18 05:59:53', NULL),
(560, NULL, 171, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 06:13:05', '2024-01-18 06:13:05', NULL),
(561, NULL, 172, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 06:31:03', '2024-01-18 06:31:03', NULL),
(562, NULL, 173, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 07:50:06', '2024-01-18 07:50:06', NULL),
(563, NULL, 174, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 08:05:07', '2024-01-18 08:05:07', NULL),
(564, NULL, 175, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 08:10:12', '2024-01-18 08:10:12', NULL),
(565, NULL, 176, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-18 23:53:56', '2024-01-18 23:53:56', NULL),
(566, NULL, 16, NULL, 'The Gold badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-19 00:09:03', '2024-01-19 00:09:03', NULL),
(567, NULL, 177, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 01:09:22', '2024-01-19 01:09:22', NULL),
(568, NULL, 178, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 03:17:58', '2024-01-19 03:17:58', NULL),
(569, NULL, 179, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 03:34:36', '2024-01-19 03:34:36', NULL),
(570, NULL, 180, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 04:01:14', '2024-01-19 04:01:14', NULL),
(571, NULL, 181, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 04:14:59', '2024-01-19 04:14:59', NULL),
(572, NULL, 182, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 06:28:32', '2024-01-19 06:28:32', NULL),
(573, NULL, 183, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 06:32:10', '2024-01-19 06:32:10', NULL),
(574, NULL, 184, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 06:35:40', '2024-01-19 06:35:40', NULL),
(575, NULL, 185, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 06:57:56', '2024-01-19 06:57:56', NULL),
(576, NULL, 186, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 07:16:43', '2024-01-19 07:16:43', NULL),
(577, NULL, 187, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 07:22:58', '2024-01-19 07:22:58', NULL),
(578, NULL, 188, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 07:48:46', '2024-01-19 07:48:46', NULL),
(579, NULL, 189, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 08:53:44', '2024-01-19 08:53:44', NULL),
(580, NULL, 190, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 09:00:44', '2024-01-19 09:00:44', NULL),
(581, NULL, 191, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 09:08:58', '2024-01-19 09:08:58', NULL),
(582, NULL, 192, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 09:24:04', '2024-01-19 09:24:04', NULL),
(583, NULL, 193, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 09:33:34', '2024-01-19 09:33:34', NULL),
(584, NULL, 120, NULL, 'The Gold badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-19 09:38:11', '2024-01-19 09:38:11', NULL),
(585, NULL, 189, NULL, 'The Gold badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-19 09:58:15', '2024-01-19 09:58:15', NULL),
(586, NULL, 189, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-19 09:58:33', '2024-01-19 09:58:33', NULL),
(587, NULL, 189, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-19 09:58:44', '2024-01-19 09:58:44', NULL),
(588, NULL, 194, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-19 10:42:52', '2024-01-19 10:42:52', NULL),
(589, NULL, 195, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-20 01:45:21', '2024-01-20 01:45:21', NULL),
(590, NULL, 196, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-20 01:49:30', '2024-01-20 01:49:30', NULL),
(591, NULL, 197, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-20 01:55:31', '2024-01-20 01:55:31', NULL),
(592, NULL, 198, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-20 03:23:58', '2024-01-20 03:23:58', NULL),
(593, NULL, 199, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 00:22:54', '2024-01-22 00:22:54', NULL),
(594, NULL, 188, NULL, 'The Gold badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:04:55', '2024-01-22 01:04:55', NULL),
(595, NULL, 188, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:09:06', '2024-01-22 01:09:06', NULL),
(596, NULL, 193, NULL, 'The Old Customer badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:29:27', '2024-01-22 01:29:27', NULL),
(597, NULL, 193, NULL, 'The badge2 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:36:04', '2024-01-22 01:36:04', NULL),
(598, NULL, 193, NULL, 'The hjgSFHHSDKFHAGHDFHSKADFGASHGDF badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:40:08', '2024-01-22 01:40:08', NULL),
(599, NULL, 193, NULL, 'The Check 1 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:42:58', '2024-01-22 01:42:58', NULL),
(600, NULL, 193, NULL, 'The badge3 badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:50:36', '2024-01-22 01:50:36', NULL),
(601, NULL, 193, NULL, 'The Hello world badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-22 01:54:01', '2024-01-22 01:54:01', NULL),
(602, NULL, 200, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 05:06:49', '2024-01-22 05:06:49', NULL),
(603, NULL, 201, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 05:23:20', '2024-01-22 05:23:20', NULL),
(604, NULL, 202, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 05:36:08', '2024-01-22 05:36:08', NULL),
(605, NULL, 203, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 06:06:13', '2024-01-22 06:06:13', NULL),
(606, NULL, 204, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 06:09:21', '2024-01-22 06:09:21', NULL),
(607, NULL, 205, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 06:09:44', '2024-01-22 06:09:44', NULL),
(608, NULL, 206, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:04:18', '2024-01-22 07:04:18', NULL),
(609, NULL, 207, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:15:18', '2024-01-22 07:15:18', NULL),
(610, NULL, 208, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:17:59', '2024-01-22 07:17:59', NULL),
(611, NULL, 209, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:23:13', '2024-01-22 07:23:13', NULL),
(612, NULL, 211, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:23:16', '2024-01-22 07:23:16', NULL),
(613, NULL, 210, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:23:17', '2024-01-22 07:23:17', NULL),
(614, NULL, 212, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:28:33', '2024-01-22 07:28:33', NULL),
(615, NULL, 213, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:41:02', '2024-01-22 07:41:02', NULL),
(616, NULL, 214, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:45:14', '2024-01-22 07:45:14', NULL),
(617, NULL, 215, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 07:47:23', '2024-01-22 07:47:23', NULL),
(618, NULL, 216, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 09:11:26', '2024-01-22 09:11:26', NULL),
(619, NULL, 217, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 09:25:44', '2024-01-22 09:25:44', NULL),
(620, NULL, 218, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 09:33:30', '2024-01-22 09:33:30', NULL),
(621, NULL, 219, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 09:39:08', '2024-01-22 09:39:08', NULL),
(622, NULL, 220, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 09:46:23', '2024-01-22 09:46:23', NULL),
(623, NULL, 221, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 09:59:29', '2024-01-22 09:59:29', NULL),
(624, NULL, 222, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 10:00:56', '2024-01-22 10:00:56', NULL),
(625, NULL, 223, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 10:03:48', '2024-01-22 10:03:48', NULL),
(626, NULL, 224, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-22 23:54:16', '2024-01-22 23:54:16', NULL),
(627, NULL, 228, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-24 00:11:18', '2024-01-24 00:11:18', NULL),
(628, NULL, 229, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-25 01:29:14', '2024-01-25 01:29:14', NULL),
(629, NULL, 230, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-29 02:55:52', '2024-01-29 02:55:52', NULL),
(630, NULL, 231, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-29 07:36:04', '2024-01-29 07:36:04', NULL),
(631, NULL, 232, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-29 07:44:01', '2024-01-29 07:44:01', NULL),
(632, NULL, 233, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-29 07:53:54', '2024-01-29 07:53:54', NULL),
(633, NULL, 234, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-29 23:25:34', '2024-01-29 23:25:34', NULL),
(634, NULL, 235, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 00:38:24', '2024-01-30 00:38:24', NULL),
(635, NULL, 236, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 06:05:46', '2024-01-30 06:05:46', NULL),
(636, NULL, 237, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 06:10:04', '2024-01-30 06:10:04', NULL),
(637, NULL, 238, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 07:50:14', '2024-01-30 07:50:14', NULL),
(638, NULL, 239, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 08:57:23', '2024-01-30 08:57:23', NULL),
(639, NULL, 240, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 09:37:38', '2024-01-30 09:37:38', NULL),
(640, NULL, 241, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 09:41:11', '2024-01-30 09:41:11', NULL),
(641, NULL, 242, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 10:05:37', '2024-01-30 10:05:37', NULL),
(642, NULL, 243, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 23:44:39', '2024-01-30 23:44:39', NULL),
(643, NULL, 244, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 23:54:23', '2024-01-30 23:54:23', NULL),
(644, NULL, 245, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-30 23:59:23', '2024-01-30 23:59:23', NULL),
(645, NULL, 246, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 00:12:11', '2024-01-31 00:12:11', NULL),
(646, NULL, 247, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 00:58:52', '2024-01-31 00:58:52', NULL),
(647, NULL, 248, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 01:03:29', '2024-01-31 01:03:29', NULL),
(648, NULL, 249, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 01:17:37', '2024-01-31 01:17:37', NULL),
(649, NULL, 250, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 01:24:11', '2024-01-31 01:24:11', NULL),
(650, NULL, 251, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 02:10:52', '2024-01-31 02:10:52', NULL),
(651, NULL, 252, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 04:23:42', '2024-01-31 04:23:42', NULL),
(652, NULL, 253, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 04:25:48', '2024-01-31 04:25:48', NULL),
(653, NULL, 254, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 04:29:53', '2024-01-31 04:29:53', NULL),
(654, NULL, 255, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 05:24:41', '2024-01-31 05:24:41', NULL),
(655, NULL, 256, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 07:13:45', '2024-01-31 07:13:45', NULL),
(656, NULL, 257, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 07:14:51', '2024-01-31 07:14:51', NULL),
(657, NULL, 258, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 07:20:00', '2024-01-31 07:20:00', NULL),
(658, NULL, 259, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 07:21:59', '2024-01-31 07:21:59', NULL),
(659, NULL, 260, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 07:23:28', '2024-01-31 07:23:28', NULL),
(660, NULL, 261, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 07:36:23', '2024-01-31 07:36:23', NULL),
(661, NULL, 262, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 07:36:40', '2024-01-31 07:36:40', NULL),
(662, NULL, 263, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 08:15:24', '2024-01-31 08:15:24', NULL),
(663, NULL, 264, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 08:33:26', '2024-01-31 08:33:26', NULL),
(664, NULL, 265, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 08:51:37', '2024-01-31 08:51:37', NULL),
(665, NULL, 262, NULL, 'The Gold badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-01-31 09:05:55', '2024-01-31 09:05:55', NULL),
(666, NULL, 266, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-01-31 23:31:56', '2024-01-31 23:31:56', NULL),
(667, NULL, 267, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 00:04:38', '2024-02-01 00:04:38', NULL),
(668, NULL, 268, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 00:17:55', '2024-02-01 00:17:55', NULL),
(669, NULL, 269, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 00:37:13', '2024-02-01 00:37:13', NULL),
(670, NULL, 270, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 00:49:55', '2024-02-01 00:49:55', NULL),
(671, NULL, 271, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 00:51:49', '2024-02-01 00:51:49', NULL),
(672, NULL, 272, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 00:59:51', '2024-02-01 00:59:51', NULL),
(673, NULL, 273, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 02:36:01', '2024-02-01 02:36:01', NULL),
(674, NULL, 274, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 02:51:23', '2024-02-01 02:51:23', NULL),
(675, NULL, 275, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 04:36:37', '2024-02-01 04:36:37', NULL),
(676, NULL, 276, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 04:55:51', '2024-02-01 04:55:51', NULL),
(677, NULL, 277, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 05:04:27', '2024-02-01 05:04:27', NULL),
(678, NULL, 278, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 05:07:11', '2024-02-01 05:07:11', NULL),
(679, NULL, 279, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 05:25:39', '2024-02-01 05:25:39', NULL),
(680, NULL, 280, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 05:26:21', '2024-02-01 05:26:21', NULL),
(681, NULL, 262, NULL, 'The hjgSFHHSDKFHAGHDFHSKADFGASHGDF badge has been assigned to you.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 8, NULL, NULL, '2024-02-01 05:34:57', '2024-02-01 05:34:57', NULL),
(682, NULL, 281, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 05:40:08', '2024-02-01 05:40:08', NULL),
(683, NULL, 282, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 05:49:17', '2024-02-01 05:49:17', NULL),
(684, NULL, 283, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 05:53:31', '2024-02-01 05:53:31', NULL),
(685, NULL, 284, NULL, 'Congratulations you have earned welcome bonus of 1000 AED. You have successfully earned bonus.', 0, 0, 'None', NULL, 'Admin', NULL, NULL, NULL, 0, 0, 3, NULL, NULL, '2024-02-01 06:13:07', '2024-02-01 06:13:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int UNSIGNED NOT NULL,
  `uniq_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_type` int DEFAULT '0',
  `sms_type` int DEFAULT '0',
  `email_type` int DEFAULT '0',
  `notification_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `uniq_id`, `title`, `message`, `image`, `image_type`, `name_of_file_show`, `push_type`, `sms_type`, `email_type`, `notification_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Your Amount has been transaction successfully.', NULL, NULL, NULL, 0, 1, 1, 'Transaction', '2021-10-11 11:04:04', '2022-01-27 00:58:28', NULL),
(2, 2, NULL, 'Your cashback has been successfully earned.', NULL, NULL, NULL, 1, 0, 1, 'Cashback', '2021-10-11 11:05:06', '2021-11-12 06:28:10', NULL),
(3, 3, NULL, 'You have successfully earned bonus.', NULL, NULL, NULL, 1, 0, 1, 'Welcome Bonus', '2021-10-11 11:05:37', '2021-11-12 06:28:12', NULL),
(4, 4, NULL, 'This is a referral code bonus', NULL, NULL, NULL, 1, 0, 1, 'Referral Bonus', '2021-10-11 11:05:59', '2021-11-16 04:36:45', NULL),
(5, 5, NULL, 'dummy event', NULL, NULL, NULL, 1, 0, 1, 'Event', '2021-10-11 11:08:01', '2021-11-12 13:30:04', NULL),
(6, 6, NULL, 'dummy', NULL, NULL, NULL, 1, 0, 1, 'Specific Customer', '2021-10-11 11:08:56', '2021-11-12 13:32:43', NULL),
(7, 7, 'Welcome to Capital Motion Loyalty', 'Hi welcome,\r\nYour registration has been done successfully and you will get bonus on your register.', '1112202118292982618e6531b60a7.jpg', 'jpg', 'CtydOM.jpg', 0, 0, 1, 'Welcome Email', '2021-10-11 11:11:56', '2021-11-12 12:59:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_datas`
--

CREATE TABLE `application_datas` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_file_show_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_datas`
--

INSERT INTO `application_datas` (`id`, `admin_id`, `logo`, `video`, `color`, `name_of_file_show_logo`, `name_of_file_show_video`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '111620211137046161934a8875a24.jpeg', '111620211137496461934ab5842b9.mp4', '#de0df2', '9050572b-18b1-48ac-98b6-0d986e404ae2.jpeg', 'splashVideo.mp4', '2021-10-27 18:30:00', '2021-11-16 06:43:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_images`
--

CREATE TABLE `application_images` (
  `id` int UNSIGNED NOT NULL,
  `application_data_id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniq_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_images`
--

INSERT INTO `application_images` (`id`, `application_data_id`, `image`, `name_of_file_show`, `image_type`, `uniq_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '10252023072831956538c39f60792.jpeg', 'dummy.jpeg', 'Welcome Screen Image', 5, NULL, '2023-10-25 01:58:31', NULL),
(2, 1, '1112202120075456618e7c42476a7.png', '1.png', 'Welcome Screen Image 2', 6, NULL, '2021-11-12 14:37:54', NULL),
(3, 1, '1112202120074848618e7c3ca524e.png', '2.png', 'Welcome Screen Image 3', 7, NULL, '2021-11-12 14:37:48', NULL),
(4, 1, '1112202120094518618e7cb12935e.jpeg', '101-1012593_high-resolution-desktop-wallpapers-hd-wallpapers-hd-high.jpg', 'Welcome Screen Image 4', 8, NULL, '2021-11-12 14:39:45', NULL),
(5, 1, '1112202120033537618e7b3f54665.jpeg', '1112202118292982618e6531b60a7.jpg', 'Offer Image', 3, '2021-11-11 05:35:36', '2021-11-12 14:33:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_badges`
--

CREATE TABLE `assign_badges` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `badge_id` int UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `when_day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_badges`
--

INSERT INTO `assign_badges` (`id`, `user_id`, `badge_id`, `comment`, `status`, `when_day`, `from_date`, `to_date`, `from_time`, `to_time`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`) VALUES
(1, 1, 1, 'xxx', 'Active', 'Friday', '2021-11-12', '2021-11-12', '19:09:00', '20:09:00', '2021-11-12 13:39:27', '2021-11-16 05:28:12', 'Nadeer', 'Nadeer', NULL),
(2, 1, 2, 'wdsds', 'Active', 'Friday', '2021-11-12', '2021-11-12', '19:27:00', '21:27:00', '2021-11-12 13:57:01', '2021-11-16 05:34:03', 'kanhaiya', 'kanhaiya', '2021-11-16 05:34:03'),
(3, 3, 2, 'wedwqd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2021-11-16', '2021-11-16', '11:06:00', '12:06:00', '2021-11-16 05:38:04', '2021-11-16 05:39:13', 'admin2', 'Nadeer', NULL),
(4, 11, 4, 'Thank  you for being loyal to us throughout the years', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 00:19:14', '2022-01-28 01:00:29', 'Nadeer', 'Nadeer', NULL),
(5, 11, 3, 'Thank  you for being loyal to us throughout the years', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2022-12-31', '00:00:00', '12:59:00', '2022-01-28 00:29:42', '2022-01-28 00:29:42', 'Nadeer', 'Nadeer', NULL),
(6, 9, 4, 'Thank  you for being loyal to us throughout the years', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 00:47:09', '2022-01-28 00:51:14', 'Nadeer', 'Nadeer', '2022-01-28 00:51:14'),
(7, 11, 1, '239142160862391421608623914216086', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 01:03:24', '2022-01-28 01:12:00', 'Nadeer', 'Nadeer', NULL),
(8, 11, 2, 'TESTESTESTESTESETSRSETS', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2022-01-28', '2023-12-31', '00:00:00', '23:59:00', '2022-01-28 01:19:38', '2022-01-28 01:19:38', 'Nadeer', 'Nadeer', NULL),
(9, 14, 2, 'sadsadad', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-28', '10:21:00', '10:30:00', '2023-10-23 05:42:39', '2023-10-23 23:22:28', 'Nadeer', 'Nadeer', NULL),
(10, 14, 3, 'this is bade 3', 'Active', 'Monday,Sunday,Tuesday', '2023-10-23', '2027-10-14', '00:01:00', '22:50:00', '2023-10-23 05:52:56', '2023-10-23 05:52:56', 'Nadeer', 'Nadeer', NULL),
(11, 16, 2, 'Badge asssinge ho gya', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday', '2023-10-23', '2023-10-31', '00:49:00', '23:49:00', '2023-10-23 06:50:01', '2023-10-23 06:50:01', 'Nadeer', 'Nadeer', NULL),
(12, 16, 3, 'firse assign kra', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-23', '2023-10-31', '00:51:00', '23:51:00', '2023-10-23 06:51:21', '2023-10-23 06:51:21', 'Nadeer', 'Nadeer', NULL),
(13, 14, 4, 'sadsadad', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-28', '10:21:00', '10:30:00', '2023-10-23 23:23:01', '2023-10-23 23:23:01', 'Nadeer', 'Nadeer', NULL),
(14, 23, 2, 'dsfafdsjfhajsfhjdsahfasdhf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-24', '2023-11-07', '00:23:00', '23:57:00', '2023-10-24 01:23:45', '2023-10-24 01:23:45', 'Nadeer', 'Nadeer', NULL),
(15, 34, 4, 'fsdfdsfgdfgdgd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-27', '12:45:00', '12:55:00', '2023-10-25 01:45:59', '2023-10-25 01:45:59', 'Nadeer', 'Nadeer', NULL),
(16, 34, 2, 'fsdfdsfgdfgdgd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-27', '12:45:00', '12:55:00', '2023-10-25 01:46:36', '2023-10-25 01:46:36', 'Nadeer', 'Nadeer', NULL),
(17, 34, 3, 'cxxcxgxcgfg', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday', '2023-10-25', '2023-10-28', '13:51:00', '13:56:00', '2023-10-25 02:51:50', '2023-10-25 02:51:50', 'Nadeer', 'Nadeer', NULL),
(18, 39, 3, 'SAFAAFA', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday', '2023-10-25', '2023-10-28', '17:10:00', '17:15:00', '2023-10-25 06:10:29', '2023-10-25 06:10:29', 'Nadeer', 'Nadeer', NULL),
(19, 45, 4, 'bhvghhh', 'Active', 'Monday,Tuesday', '2023-10-26', '2023-10-28', '17:19:00', '17:37:00', '2023-10-26 06:19:15', '2023-10-26 06:19:15', 'Nadeer', 'Nadeer', NULL),
(20, 45, 3, 'bhvghhh', 'Active', 'Monday,Tuesday', '2023-10-26', '2023-10-28', '17:19:00', '17:37:00', '2023-10-26 06:20:05', '2023-10-26 06:20:05', 'Nadeer', 'Nadeer', NULL),
(21, 46, 2, 'bhvghhhsfjahsdjfhsjahfjsdhjfahsjdfsdafsdafsadf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-31', '00:19:00', '23:25:00', '2023-10-26 06:32:50', '2023-10-26 06:32:50', 'Nadeer', 'Nadeer', NULL),
(22, 44, 2, 'bhvghhhsfjahsdjfhsjahfjsdhjfahsjdfsdafsdafsadf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-30', '00:19:00', '23:25:00', '2023-10-26 06:33:52', '2023-10-26 06:33:52', 'Nadeer', 'Nadeer', NULL),
(23, 44, 3, 'bhvghhhsfjahsdjfhsjahfjsdhjfahsjdfsdaffdgfdsgsdfgfdsgdfsgdfgdfsgfdgdfgsdafsadf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Saturday', '2023-10-26', '2023-10-30', '00:19:00', '23:25:00', '2023-10-26 06:34:08', '2023-10-26 06:34:08', 'Nadeer', 'Nadeer', NULL),
(24, 46, 4, 'xzfsdfssdf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:06:00', '18:15:00', '2023-10-26 07:06:58', '2023-10-26 07:06:58', 'Nadeer', 'Nadeer', NULL),
(25, 46, 3, 'xzfsdfssdf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:06:00', '18:15:00', '2023-10-26 07:07:11', '2023-10-26 07:07:11', 'Nadeer', 'Nadeer', NULL),
(26, 40, 4, 'saddsadsa', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-28', '18:27:00', '18:30:00', '2023-10-26 07:27:33', '2023-10-26 07:27:33', 'Nadeer', 'Nadeer', NULL),
(27, 40, 3, 'saddsadsa', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:27:00', '18:30:00', '2023-10-26 07:27:40', '2023-10-26 07:27:40', 'Nadeer', 'Nadeer', NULL),
(28, 40, 2, 'saddsadsa', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-28', '18:27:00', '18:30:00', '2023-10-26 07:27:44', '2023-10-26 07:27:44', 'Nadeer', 'Nadeer', NULL),
(29, 48, 2, 'khklhhkjhkhljhjkhjkhkhk', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday', '2023-10-26', '2023-10-31', '00:47:00', '23:47:00', '2023-10-26 07:47:40', '2023-10-26 07:47:40', 'Nadeer', 'Nadeer', NULL),
(30, 48, 3, 'khklhhkjhkhljhjkhjkhkhk', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Sunday', '2023-10-26', '2023-10-31', '00:47:00', '23:47:00', '2023-10-26 07:47:59', '2023-10-26 07:47:59', 'Nadeer', 'Nadeer', NULL),
(31, 48, 4, 'khklhhkjhkhljhjkhjkhkhk', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Sunday', '2023-10-26', '2023-10-31', '00:47:00', '23:47:00', '2023-10-26 07:48:29', '2023-10-26 07:48:29', 'Nadeer', 'Nadeer', NULL),
(32, 53, 4, 'sadsadsada', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '11:02:00', '11:05:00', '2023-10-27 00:03:01', '2023-10-27 00:03:01', 'Nadeer', 'Nadeer', NULL),
(33, 53, 3, 'sadsadsada', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '11:02:00', '11:05:00', '2023-10-27 00:03:08', '2023-10-27 00:03:08', 'Nadeer', 'Nadeer', NULL),
(34, 53, 2, 'sadsadsada', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '11:02:00', '11:05:00', '2023-10-27 00:03:13', '2023-10-27 00:03:13', 'Nadeer', 'Nadeer', NULL),
(35, 54, 4, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:41:27', '2023-10-27 01:41:27', 'Nadeer', 'Nadeer', NULL),
(36, 54, 3, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:41:45', '2023-10-27 01:41:45', 'Nadeer', 'Nadeer', NULL),
(37, 54, 2, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:41:58', '2023-10-27 01:41:58', 'Nadeer', 'Nadeer', NULL),
(38, 55, 3, 'jerhjklhkftwertwert', 'Active', 'Tuesday,Wednesday,Thursday,Friday,Saturday,Monday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:48:13', '2023-10-27 01:48:13', 'Nadeer', 'Nadeer', NULL),
(39, 55, 2, 'jerhjklhkftwertwert', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:48:32', '2023-10-27 01:48:32', 'Nadeer', 'Nadeer', NULL),
(40, 55, 4, 'jerhjklhkftwertwert', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-28', '00:41:00', '12:41:00', '2023-10-27 01:48:42', '2023-10-27 01:48:42', 'Nadeer', 'Nadeer', NULL),
(41, 56, 4, 'wwaewee', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '14:01:00', '14:05:00', '2023-10-27 03:01:59', '2023-10-27 03:01:59', 'Nadeer', 'Nadeer', NULL),
(42, 56, 3, 'wwaewee', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '14:01:00', '14:05:00', '2023-10-27 03:03:35', '2023-10-27 03:03:35', 'Nadeer', 'Nadeer', NULL),
(43, 56, 2, 'wwaewee', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '14:01:00', '14:05:00', '2023-10-27 03:06:07', '2023-10-27 03:06:07', 'Nadeer', 'Nadeer', NULL),
(44, 61, 5, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Saturday,Friday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:28:13', '2023-10-27 03:28:13', 'Nadeer', 'Nadeer', NULL),
(45, 62, 5, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:30:50', '2023-10-27 03:30:50', 'Nadeer', 'Nadeer', NULL),
(46, 62, 3, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:31:14', '2023-10-27 03:31:14', 'Nadeer', 'Nadeer', NULL),
(47, 62, 2, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:31:23', '2023-10-27 03:31:23', 'Nadeer', 'Nadeer', NULL),
(48, 61, 2, 'ghjfgjmgkghkghkghkg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-25', '2023-10-28', '13:25:00', '21:00:00', '2023-10-27 03:31:38', '2023-10-27 03:31:38', 'Nadeer', 'Nadeer', NULL),
(49, 63, 5, 'agdfvsdfgdfgds', 'Active', 'Tuesday,Sunday,Monday,Wednesday,Thursday,Friday,Saturday', '2023-10-26', '2023-10-29', '14:40:00', '21:00:00', '2023-10-27 03:40:38', '2023-10-27 03:40:38', 'Nadeer', 'Nadeer', NULL),
(50, 63, 4, 'agdfvsdfgdfgds', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-29', '14:40:00', '21:00:00', '2023-10-27 03:40:48', '2023-10-27 03:40:48', 'Nadeer', 'Nadeer', NULL),
(51, 63, 2, 'agdfvsdfgdfgds', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-26', '2023-10-29', '14:40:00', '21:00:00', '2023-10-27 03:41:00', '2023-10-27 03:41:00', 'Nadeer', 'Nadeer', NULL),
(52, 64, 4, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:17:49', '2023-10-27 07:17:49', 'Nadeer', 'Nadeer', NULL),
(53, 64, 3, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:20:12', '2023-10-27 07:20:12', 'Nadeer', 'Nadeer', NULL),
(54, 64, 2, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:20:21', '2023-10-27 07:20:21', 'Nadeer', 'Nadeer', NULL),
(55, 64, 5, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:20:41', '2023-10-27 07:20:41', 'Nadeer', 'Nadeer', NULL),
(56, 66, 5, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:12', '2023-10-27 07:33:12', 'Nadeer', 'Nadeer', NULL),
(57, 66, 4, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:18', '2023-10-27 07:33:18', 'Nadeer', 'Nadeer', NULL),
(58, 66, 3, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:25', '2023-10-27 07:33:25', 'Nadeer', 'Nadeer', NULL),
(59, 66, 2, 'sadfasdfadfasdfasdfasdfsadkkalfklal;djhttp://192.168.3.121/shivam/GITLAB/capital_loyalty_admin/admin', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:17:00', '18:17:00', '2023-10-27 07:33:45', '2023-10-27 07:33:45', 'Nadeer', 'Nadeer', NULL),
(60, 67, 5, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:46:50', '2023-10-27 07:46:50', 'Nadeer', 'Nadeer', NULL),
(61, 67, 3, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:47:01', '2023-10-27 07:47:01', 'Nadeer', 'Nadeer', NULL),
(62, 67, 2, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:47:07', '2023-10-27 07:47:07', 'Nadeer', 'Nadeer', NULL),
(63, 67, 4, 'asdasdasdasdasd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:46:00', '18:46:00', '2023-10-27 07:47:17', '2023-10-27 07:47:17', 'Nadeer', 'Nadeer', NULL),
(64, 69, 6, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:37:45', '2023-10-27 08:37:45', 'Nadeer', 'Nadeer', NULL),
(65, 69, 4, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:37:55', '2023-10-27 08:37:55', 'Nadeer', 'Nadeer', NULL),
(66, 69, 3, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:01', '2023-10-27 08:38:01', 'Nadeer', 'Nadeer', NULL),
(67, 70, 4, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:32', '2023-10-27 08:38:32', 'Nadeer', 'Nadeer', NULL),
(68, 70, 3, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:37', '2023-10-27 08:38:37', 'Nadeer', 'Nadeer', NULL),
(69, 70, 2, 'sdfdffsfsfs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-27', '2023-10-29', '19:37:00', '19:40:00', '2023-10-27 08:38:42', '2023-10-27 08:38:42', 'Nadeer', 'Nadeer', NULL),
(70, 40, 6, 'saddadd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-30', '2023-10-31', '11:23:00', '11:25:00', '2023-10-30 00:23:58', '2023-10-30 00:23:58', 'Nadeer', 'Nadeer', NULL),
(71, 40, 5, 'saddadd', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-30', '2023-10-31', '11:23:00', '11:25:00', '2023-10-30 00:24:23', '2023-10-30 00:24:23', 'Nadeer', 'Nadeer', NULL),
(72, 89, 3, 'lele', 'Active', 'Monday,Tuesday,Sunday,Wednesday,Thursday,Friday,Saturday', '2024-01-01', '2024-10-15', '00:00:00', '23:59:00', '2024-01-04 02:42:15', '2024-01-04 02:42:15', 'Nadeer', 'Nadeer', NULL),
(73, 89, 2, 'lele', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-01', '2024-10-15', '00:00:00', '23:59:00', '2024-01-04 02:42:27', '2024-01-04 02:42:27', 'Nadeer', 'Nadeer', NULL),
(74, 89, 4, 'lele', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-01', '2024-10-15', '00:00:00', '23:59:00', '2024-01-04 02:42:35', '2024-01-04 02:42:35', 'Nadeer', 'Nadeer', NULL),
(75, 16, 7, 'tgregdfgdfgdfsgjhdfhgsdjfgdfghjdfg', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-19', '2024-01-31', '00:08:00', '23:59:00', '2024-01-19 00:08:56', '2024-01-19 00:08:56', 'Nadeer', 'Nadeer', NULL),
(76, 120, 7, 'fsdfsdafdfdsf', 'Active', 'Tuesday,Monday,Sunday,Wednesday,Thursday,Friday,Saturday', '2024-01-19', '2024-01-20', '11:55:00', '12:58:00', '2024-01-19 09:37:18', '2024-01-19 09:37:18', 'Nadeer', 'Nadeer', NULL),
(77, 189, 7, 'fsfsfsdf', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2024-01-19', '2024-01-19', '00:00:00', '23:57:00', '2024-01-19 09:58:09', '2024-01-19 09:58:09', 'Nadeer', 'Nadeer', NULL),
(78, 189, 5, 'fsfsfsdffsdfsaf', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-19', '2024-01-19', '00:00:00', '23:57:00', '2024-01-19 09:58:27', '2024-01-19 09:58:27', 'Nadeer', 'Nadeer', NULL),
(79, 189, 3, 'fsfsfsdffsdfsaffasfasfa', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-19', '2024-01-19', '00:00:00', '23:57:00', '2024-01-19 09:58:38', '2024-01-19 09:58:38', 'Nadeer', 'Nadeer', NULL),
(80, 188, 7, 'erfsfdsfjksdkfjsdkfjsdkfkdsjkfsdf', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2024-01-22', '2024-01-30', '00:04:00', '23:57:00', '2024-01-22 01:04:42', '2024-01-22 01:04:42', 'Nadeer', 'Nadeer', NULL),
(81, 188, 3, 'gdsgsdgsdgdsgdfg', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday', '2024-01-22', '2024-01-30', '00:06:00', '23:56:00', '2024-01-22 01:09:00', '2024-01-22 01:09:00', 'Nadeer', 'Nadeer', NULL),
(82, 193, 4, 'two_comment', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-22', '2024-01-31', '00:28:00', '12:55:00', '2024-01-22 01:29:20', '2024-01-22 01:29:20', 'Nadeer', 'Nadeer', NULL),
(83, 193, 2, 'three_comment', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-31', '2024-01-31', '00:51:00', '12:01:00', '2024-01-22 01:35:58', '2024-01-22 01:35:58', 'Nadeer', 'Nadeer', NULL),
(84, 193, 8, 'one_comment', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-31', '2024-01-31', '11:39:00', '23:39:00', '2024-01-22 01:39:59', '2024-01-22 01:39:59', 'Nadeer', 'Nadeer', NULL),
(85, 193, 5, 'five_comment', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-29', '2024-01-31', '11:41:00', '23:42:00', '2024-01-22 01:42:46', '2024-01-22 01:42:46', 'Nadeer', 'Nadeer', NULL),
(86, 193, 3, 'kfjsdkfjsdlfjsdfjs', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-23', '2024-01-31', '23:49:00', '23:50:00', '2024-01-22 01:50:24', '2024-01-22 01:50:24', 'Nadeer', 'Nadeer', NULL),
(87, 193, 6, 'jhjkdkdakdadshdkjhadha', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-23', '2024-01-31', '11:53:00', '23:53:00', '2024-01-22 01:53:54', '2024-01-22 01:53:54', 'Nadeer', 'Nadeer', NULL),
(88, 262, 7, 'Hello', 'Active', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-31', '2024-02-08', '19:04:00', '22:05:00', '2024-01-31 09:05:48', '2024-01-31 09:05:48', 'Nadeer', 'Nadeer', NULL),
(89, 262, 8, 'hsdafhajfgajdsfgsgdafhfjsgdjfgsgdafgadfsdjfgasdgfsgdafjkhasjkdfhakjsflshdfjkhaksjshsdafhajfgajdsfgsg', 'Active', 'Monday,Sunday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2024-02-01', '2024-02-17', '15:34:00', '16:34:00', '2024-02-01 05:34:50', '2024-02-01 05:34:50', 'Nadeer', 'Nadeer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_user_venues`
--

CREATE TABLE `assign_user_venues` (
  `id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `venue_user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_user_venues`
--

INSERT INTO `assign_user_venues` (`id`, `venu_id`, `venue_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 1, '2021-11-12 13:23:20', '2021-11-12 13:23:20', NULL),
(3, 1, 2, '2021-11-12 14:19:01', '2021-11-12 14:19:01', NULL),
(4, 1, 3, '2021-11-15 05:04:32', '2021-11-15 05:04:32', NULL),
(5, 2, 3, '2021-11-15 05:04:32', '2021-11-15 05:04:32', NULL),
(9, 2, 4, '2021-11-16 09:15:03', '2021-11-16 09:15:03', NULL),
(14, 2, 5, '2023-11-02 05:54:05', '2023-11-02 05:54:05', NULL),
(15, 1, 5, '2023-11-02 05:54:06', '2023-11-02 05:54:06', NULL),
(16, 5, 5, '2023-11-02 05:54:06', '2023-11-02 05:54:06', NULL),
(17, 7, 5, '2023-11-02 05:54:06', '2023-11-02 05:54:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `badge_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `admin_id`, `badge_name`, `image`, `name_of_file_show`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'badge1', '1112202119084992618e6e6930fb4.png', 'Screenshot_13.png', 'Inactive', 'Nadeer', 'Nadeer', '2021-11-12 13:38:49', '2021-11-16 05:28:21', NULL),
(2, 4, 'badge2', '1024202306525796653769c930c54.jpeg', 'photo-1575936123452-b67c3203c357.jpg', 'Active', 'kanhaiya', 'Nadeer', '2021-11-12 13:56:26', '2023-10-24 01:22:57', NULL),
(3, 1, 'badge3', '1026202312380761653a5daf8ffd6.jpeg', 'Screenshot_20231018_153237.jpg', 'Active', 'Nadeer', 'Nadeer', '2022-01-20 01:06:55', '2023-10-26 07:08:07', NULL),
(4, 1, 'Old Customer', '10252023071720416538c100f3393.png', 'fabe06b316f0ed01b50c53d9ce843979.png', 'Active', 'Nadeer', 'Nadeer', '2022-01-28 00:15:10', '2023-10-25 01:47:21', NULL),
(5, 1, 'Check 1', '1027202308545863653b7ae2c778b.png', 'Mornig Shift.png', 'Active', 'Nadeer', 'Nadeer', '2023-10-27 03:24:58', '2023-10-27 03:24:58', NULL),
(6, 1, 'Hello world', '1027202313155433653bb80a52df4.jpeg', 'download.jpg', 'Active', 'Nadeer', 'Nadeer', '2023-10-27 07:45:54', '2023-10-27 07:45:54', NULL),
(7, 1, 'Gold', '011520240604323065a4caf05b079.png', '144.png', 'Active', 'Nadeer', 'Nadeer', '2024-01-15 00:34:32', '2024-01-15 00:34:32', NULL),
(8, 1, 'hjgSFHHSDKFHAGHDFHSKADFGASHGDF', '012020240917195565ab8f9f4bbdd.png', 'animals.png', 'Active', 'Nadeer', 'Nadeer', '2024-01-20 03:47:19', '2024-01-20 03:47:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cashbacks`
--

CREATE TABLE `cashbacks` (
  `id` int UNSIGNED NOT NULL,
  `unique_id_cashback` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `promotion_cashback_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_on` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `cashback_percentage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cashbacks`
--

INSERT INTO `cashbacks` (`id`, `unique_id_cashback`, `admin_id`, `venu_id`, `promotion_cashback_name`, `image`, `day_on`, `from_date`, `to_date`, `from_time`, `to_time`, `cashback_percentage`, `status`, `name_of_file_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 4, 1, 'Promo', '102720230705421653b6146a5685.png', 'Sunday,Saturday,Friday,Thursday,Wednesday,Tuesday,Monday', '2023-10-27', '2023-10-28', '20:12:00', '21:12:00', 'Cash', 'Inactive', 'Screenshot_20231025-142826.png', '2021-11-12 14:42:27', '2023-10-27 01:35:42', NULL),
(2, '2', 1, 1, 'Sponser', '01202022050632161e8edd858a0a.png', 'Saturday,Sunday', '2022-01-20', '2022-03-31', '18:00:00', '21:00:00', 'Cash', 'Active', 'app-icon.png', '2022-01-19 23:36:32', '2022-01-20 00:00:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `city_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `sortname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '966',
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `code`, `flag`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AC', 'Ascension Island', '247', '🇦🇨', 0, 0, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(2, 'AD', 'Andorra', '376', '🇦🇩', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(3, 'AE', 'United Arab Emirates', '971', '🇦🇪', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(4, 'AF', 'Afghanistan', '93', '🇦🇫', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(5, 'AG', 'Antigua & Barbuda', '1268', '🇦🇬', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(6, 'AI', 'Anguilla', '1264', '🇦🇮', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(7, 'AL', 'Albania', '355', '🇦🇱', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(8, 'AM', 'Armenia', '374', '🇦🇲', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(9, 'AO', 'Angola', '244', '🇦🇴', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(10, 'AQ', 'Antarctica', '672', '🇦🇶', 0, 0, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(11, 'AR', 'Argentina', '54', '🇦🇷', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(12, 'AS', 'American Samoa', '1684', '🇦🇸', 0, 1, '2021-01-20 09:04:04', '2021-01-20 09:04:04'),
(13, 'AT', 'Austria', '43', '🇦🇹', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(14, 'AU', 'Australia', '61', '🇦🇺', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(15, 'AW', 'Aruba', '297', '🇦🇼', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(16, 'AX', 'Åland Islands', '358', '🇦🇽', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(17, 'AZ', 'Azerbaijan', '994', '🇦🇿', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(18, 'BA', 'Bosnia & Herzegovina', '387', '🇧🇦', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(19, 'BB', 'Barbados', '1246', '🇧🇧', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(20, 'BD', 'Bangladesh', '880', '🇧🇩', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(21, 'BE', 'Belgium', '32', '🇧🇪', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(22, 'BF', 'Burkina Faso', '226', '🇧🇫', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(23, 'BG', 'Bulgaria', '359', '🇧🇬', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(24, 'BH', 'Bahrain', '973', '🇧🇭', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(25, 'BI', 'Burundi', '257', '🇧🇮', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(26, 'BJ', 'Benin', '229', '🇧🇯', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(27, 'BL', 'St. Barthélemy', '590', '🇧🇱', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(28, 'BM', 'Bermuda', '1441', '🇧🇲', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(29, 'BN', 'Brunei', '673', '🇧🇳', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(30, 'BO', 'Bolivia', '591', '🇧🇴', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(31, 'BQ', 'Caribbean Netherlands', '599', '🇧🇶', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(32, 'BR', 'Brazil', '55', '🇧🇷', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(33, 'BS', 'Bahamas', '1242', '🇧🇸', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(34, 'BT', 'Bhutan', '975', '🇧🇹', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(35, 'BV', 'Bouvet Island', '55', '🇧🇻', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(36, 'BW', 'Botswana', '267', '🇧🇼', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(37, 'BY', 'Belarus', '375', '🇧🇾', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(38, 'BZ', 'Belize', '501', '🇧🇿', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(39, 'CA', 'Canada', '1', '🇨🇦', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(40, 'CC', 'Cocos (Keeling) Islands', '61', '🇨🇨', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(41, 'CD', 'Congo - Kinshasa', '243', '🇨🇩', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(42, 'CF', 'Central African Republic', '236', '🇨🇫', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(43, 'CG', 'Congo - Brazzaville', '242', '🇨🇬', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(44, 'CH', 'Switzerland', '41', '🇨🇭', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(45, 'CI', 'Côte d’Ivoire', '225', '🇨🇮', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(46, 'CK', 'Cook Islands', '682', '🇨🇰', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(47, 'CL', 'Chile', '56', '🇨🇱', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(48, 'CM', 'Cameroon', '237', '🇨🇲', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(49, 'CN', 'China', '86', '🇨🇳', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(50, 'CO', 'Colombia', '57', '🇨🇴', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(51, 'CR', 'Costa Rica', '506', '🇨🇷', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(52, 'CU', 'Cuba', '53', '🇨🇺', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(53, 'CV', 'Cape Verde', '238', '🇨🇻', 0, 1, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(54, 'CW', 'Curaçao', '5999', '🇨🇼', 0, 0, '2021-01-20 09:04:05', '2021-01-20 09:04:05'),
(55, 'CX', 'Christmas Island', '61', '🇨🇽', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(56, 'CY', 'Cyprus', '357', '🇨🇾', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(57, 'CZ', 'Czechia', '420', '🇨🇿', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(58, 'DE', 'Germany', '49', '🇩🇪', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(59, 'DG', 'Diego Garcia', '246', '🇩🇬', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(60, 'DJ', 'Djibouti', '253', '🇩🇯', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(61, 'DK', 'Denmark', '45', '🇩🇰', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(62, 'DM', 'Dominica', '1767', '🇩🇲', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(63, 'DO', 'Dominican Republic', '1809', '🇩🇴', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(64, 'DZ', 'Algeria', '213', '🇩🇿', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(65, 'EC', 'Ecuador', '593', '🇪🇨', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(66, 'EE', 'Estonia', '372', '🇪🇪', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(67, 'EG', 'Egypt', '20', '🇪🇬', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(68, 'EH', 'Western Sahara', '212', '🇪🇭', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(69, 'ER', 'Eritrea', '291', '🇪🇷', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(70, 'ES', 'Spain', '34', '🇪🇸', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(71, 'ET', 'Ethiopia', '251', '🇪🇹', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(72, 'FI', 'Finland', '358', '🇫🇮', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(73, 'FJ', 'Fiji', '679', '🇫🇯', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(74, 'FK', 'Falkland Islands', '500', '🇫🇰', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(75, 'FM', 'Micronesia', '691', '🇫🇲', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(76, 'FO', 'Faroe Islands', '298', '🇫🇴', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(77, 'FR', 'France', '33', '🇫🇷', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(78, 'GA', 'Gabon', '241', '🇬🇦', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(79, 'GB', 'United Kingdom', '44', '🇬🇧', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(80, 'GD', 'Grenada', '1473', '🇬🇩', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(81, 'GE', 'Georgia', '995', '🇬🇪', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(82, 'GF', 'French Guiana', '594', '🇬🇫', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(83, 'GG', 'Guernsey', '44', '🇬🇬', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(84, 'GH', 'Ghana', '233', '🇬🇭', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(85, 'GI', 'Gibraltar', '350', '🇬🇮', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(86, 'GL', 'Greenland', '299', '🇬🇱', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(87, 'GM', 'Gambia', '220', '🇬🇲', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(88, 'GN', 'Guinea', '224', '🇬🇳', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(89, 'GP', 'Guadeloupe', '590', '🇬🇵', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(90, 'GQ', 'Equatorial Guinea', '240', '🇬🇶', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(91, 'GR', 'Greece', '30', '🇬🇷', 0, 1, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(92, 'GS', 'South Georgia & South Sandwich Islands', '500', '🇬🇸', 0, 0, '2021-01-20 09:04:06', '2021-01-20 09:04:06'),
(93, 'GT', 'Guatemala', '502', '🇬🇹', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(94, 'GU', 'Guam', '1671', '🇬🇺', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(95, 'GW', 'Guinea-Bissau', '245', '🇬🇼', 0, 0, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(96, 'GY', 'Guyana', '592', '🇬🇾', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(97, 'HK', 'Hong Kong SAR China', '852', '🇭🇰', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(98, 'HN', 'Honduras', '504', '🇭🇳', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(99, 'HR', 'Croatia', '385', '🇭🇷', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(100, 'HT', 'Haiti', '509', '🇭🇹', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(101, 'HU', 'Hungary', '36', '🇭🇺', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(102, 'ID', 'Indonesia', '62', '🇮🇩', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(103, 'IE', 'Ireland', '353', '🇮🇪', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(104, 'IL', 'Israel', '972', '🇮🇱', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(105, 'IM', 'Isle of Man', '44', '🇮🇲', 0, 0, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(106, 'IN', 'India', '91', '🇮🇳', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(107, 'IO', 'British Indian Ocean Territory', '246', '🇮🇴', 0, 0, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(108, 'IQ', 'Iraq', '964', '🇮🇶', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(109, 'IR', 'Iran', '98', '🇮🇷', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(110, 'IS', 'Iceland', '354', '🇮🇸', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(111, 'IT', 'Italy', '39', '🇮🇹', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(112, 'JE', 'Jersey', '44', '🇯🇪', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(113, 'JM', 'Jamaica', '1876', '🇯🇲', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(114, 'JO', 'Jordan', '962', '🇯🇴', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(115, 'JP', 'Japan', '81', '🇯🇵', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(116, 'KE', 'Kenya', '254', '🇰🇪', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(117, 'KG', 'Kyrgyzstan', '996', '🇰🇬', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(118, 'KH', 'Cambodia', '855', '🇰🇭', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(119, 'KI', 'Kiribati', '686', '🇰🇮', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(120, 'KM', 'Comoros', '269', '🇰🇲', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(121, 'KN', 'St. Kitts & Nevis', '1869', '🇰🇳', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(122, 'KP', 'North Korea', '850', '🇰🇵', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(123, 'KR', 'South Korea', '82', '🇰🇷', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(124, 'KW', 'Kuwait', '965', '🇰🇼', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(125, 'KY', 'Cayman Islands', '1345', '🇰🇾', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(126, 'KZ', 'Kazakhstan', '76', '🇰🇿', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(127, 'LA', 'Laos', '856', '🇱🇦', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(128, 'LB', 'Lebanon', '961', '🇱🇧', 0, 1, '2021-01-20 09:04:07', '2021-01-20 09:04:07'),
(129, 'LC', 'St. Lucia', '1758', '🇱🇨', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(130, 'LI', 'Liechtenstein', '423', '🇱🇮', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(131, 'LK', 'Sri Lanka', '94', '🇱🇰', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(132, 'LR', 'Liberia', '231', '🇱🇷', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(133, 'LS', 'Lesotho', '266', '🇱🇸', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(134, 'LT', 'Lithuania', '370', '🇱🇹', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(135, 'LU', 'Luxembourg', '352', '🇱🇺', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(136, 'LV', 'Latvia', '371', '🇱🇻', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(137, 'LY', 'Libya', '218', '🇱🇾', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(138, 'MA', 'Morocco', '212', '🇲🇦', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(139, 'MC', 'Monaco', '377', '🇲🇨', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(140, 'MD', 'Moldova', '373', '🇲🇩', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(141, 'ME', 'Montenegro', '382', '🇲🇪', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(142, 'MF', 'St. Martin', '590', '🇲🇫', 0, 0, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(143, 'MG', 'Madagascar', '261', '🇲🇬', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(144, 'MH', 'Marshall Islands', '692', '🇲🇭', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(145, 'MK', 'Macedonia', '389', '🇲🇰', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(146, 'ML', 'Mali', '223', '🇲🇱', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(147, 'MM', 'Myanmar (Burma)', '95', '🇲🇲', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(148, 'MN', 'Mongolia', '976', '🇲🇳', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(149, 'MO', 'Macau SAR China', '853', '🇲🇴', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(150, 'MP', 'Northern Mariana Islands', '1670', '🇲🇵', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(151, 'MQ', 'Martinique', '596', '🇲🇶', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(152, 'MR', 'Mauritania', '222', '🇲🇷', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(153, 'MS', 'Montserrat', '1664', '🇲🇸', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(154, 'MT', 'Malta', '356', '🇲🇹', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(155, 'MU', 'Mauritius', '230', '🇲🇺', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(156, 'MV', 'Maldives', '960', '🇲🇻', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(157, 'MW', 'Malawi', '265', '🇲🇼', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(158, 'MX', 'Mexico', '52', '🇲🇽', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(159, 'MY', 'Malaysia', '60', '🇲🇾', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(160, 'MZ', 'Mozambique', '258', '🇲🇿', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(161, 'NA', 'Namibia', '264', '🇳🇦', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(162, 'NC', 'New Caledonia', '687', '🇳🇨', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(163, 'NE', 'Niger', '227', '🇳🇪', 0, 1, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(164, 'NF', 'Norfolk Island', '672', '🇳🇫', 0, 0, '2021-01-20 09:04:08', '2021-01-20 09:04:08'),
(165, 'NG', 'Nigeria', '234', '🇳🇬', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(166, 'NI', 'Nicaragua', '505', '🇳🇮', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(167, 'NL', 'Netherlands', '31', '🇳🇱', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(168, 'NO', 'Norway', '47', '🇳🇴', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(169, 'NP', 'Nepal', '977', '🇳🇵', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(170, 'NR', 'Nauru', '674', '🇳🇷', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(171, 'NU', 'Niue', '683', '🇳🇺', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(172, 'NZ', 'New Zealand', '64', '🇳🇿', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(173, 'OM', 'Oman', '968', '🇴🇲', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(174, 'PA', 'Panama', '507', '🇵🇦', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(175, 'PE', 'Peru', '51', '🇵🇪', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(176, 'PF', 'French Polynesia', '689', '🇵🇫', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(177, 'PG', 'Papua New Guinea', '675', '🇵🇬', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(178, 'PH', 'Philippines', '63', '🇵🇭', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(179, 'PK', 'Pakistan', '92', '🇵🇰', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(180, 'PL', 'Poland', '48', '🇵🇱', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(181, 'PM', 'St. Pierre & Miquelon', '508', '🇵🇲', 0, 0, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(182, 'PN', 'Pitcairn Islands', '64', '🇵🇳', 0, 0, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(183, 'PR', 'Puerto Rico', '1787', '🇵🇷', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(184, 'PS', 'Palestine', '970', '🇵🇸', 0, 0, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(185, 'PT', 'Portugal', '351', '🇵🇹', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(186, 'PW', 'Palau', '680', '🇵🇼', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(187, 'PY', 'Paraguay', '595', '🇵🇾', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(188, 'QA', 'Qatar', '974', '🇶🇦', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(189, 'RE', 'Réunion', '262', '🇷🇪', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(190, 'RO', 'Romania', '40', '🇷🇴', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(191, 'RS', 'Serbia', '381', '🇷🇸', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(192, 'RU', 'Russia', '7', '🇷🇺', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(193, 'RW', 'Rwanda', '250', '🇷🇼', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(194, 'SA', 'Saudi Arabia', '966', '🇸🇦', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(195, 'SB', 'Solomon Islands', '677', '🇸🇧', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(196, 'SC', 'Seychelles', '248', '🇸🇨', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(197, 'SD', 'Sudan', '249', '🇸🇩', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(198, 'SE', 'Sweden', '46', '🇸🇪', 0, 1, '2021-01-20 09:04:09', '2021-01-20 09:04:09'),
(199, 'SG', 'Singapore', '65', '🇸🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(200, 'SH', 'St. Helena', '290', '🇸🇭', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(201, 'SI', 'Slovenia', '386', '🇸🇮', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(202, 'SJ', 'Svalbard & Jan Mayen', '4779', '🇸🇯', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(203, 'SK', 'Slovakia', '421', '🇸🇰', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(204, 'SL', 'Sierra Leone', '232', '🇸🇱', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(205, 'SM', 'San Marino', '378', '🇸🇲', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(206, 'SN', 'Senegal', '221', '🇸🇳', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(207, 'SO', 'Somalia', '252', '🇸🇴', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(208, 'SR', 'Suriname', '597', '🇸🇷', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(209, 'SS', 'South Sudan', '211', '🇸🇸', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(210, 'ST', 'São Tomé & Príncipe', '239', '🇸🇹', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(211, 'SV', 'El Salvador', '503', '🇸🇻', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(212, 'SX', 'Sint Maarten', '1721', '🇸🇽', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(213, 'SY', 'Syria', '963', '🇸🇾', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(214, 'SZ', 'Swaziland', '268', '🇸🇿', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(215, 'TA', 'Tristan da Cunha', '290', '🇹🇦', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(216, 'TC', 'Turks & Caicos Islands', '1649', '🇹🇨', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(217, 'TD', 'Chad', '235', '🇹🇩', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(218, 'TF', 'French Southern Territories', '262', '🇹🇫', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(219, 'TG', 'Togo', '228', '🇹🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(220, 'TH', 'Thailand', '66', '🇹🇭', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(221, 'TJ', 'Tajikistan', '992', '🇹🇯', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(222, 'TK', 'Tokelau', '690', '🇹🇰', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(223, 'TL', 'Timor-Leste', '670', '🇹🇱', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(224, 'TM', 'Turkmenistan', '993', '🇹🇲', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(225, 'TN', 'Tunisia', '216', '🇹🇳', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(226, 'TO', 'Tonga', '676', '🇹🇴', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(227, 'TR', 'Turkey', '90', '🇹🇷', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(228, 'TT', 'Trinidad & Tobago', '1868', '🇹🇹', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(229, 'TV', 'Tuvalu', '688', '🇹🇻', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(230, 'TW', 'Taiwan', '886', '🇹🇼', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(231, 'TZ', 'Tanzania', '255', '🇹🇿', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(232, 'UA', 'Ukraine', '380', '🇺🇦', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(233, 'UG', 'Uganda', '256', '🇺🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(234, 'UM', 'U.S. Outlying Islands', '246', '🇺🇲', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(235, 'US', 'United States of America', '1', '🇺🇸', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(236, 'UY', 'Uruguay', '598', '🇺🇾', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(237, 'UZ', 'Uzbekistan', '998', '🇺🇿', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(238, 'VA', 'Vatican City', '3906698', '🇻🇦', 0, 0, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(239, 'VC', 'St. Vincent & Grenadines', '1784', '🇻🇨', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(240, 'VE', 'Venezuela', '58', '🇻🇪', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(241, 'VG', 'British Virgin Islands', '1284', '🇻🇬', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(242, 'VI', 'U.S. Virgin Islands', '1340', '🇻🇮', 0, 1, '2021-01-20 09:04:10', '2021-01-20 09:04:10'),
(243, 'VN', 'Vietnam', '84', '🇻🇳', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(244, 'VU', 'Vanuatu', '678', '🇻🇺', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(245, 'WF', 'Wallis & Futuna', '681', '🇼🇫', 0, 0, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(246, 'WS', 'Samoa', '685', '🇼🇸', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(247, 'XK', 'Kosovo', '383', '🇽🇰', 0, 0, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(248, 'YE', 'Yemen', '967', '🇾🇪', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(249, 'YT', 'Mayotte', '262', '🇾🇹', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(250, 'ZA', 'South Africa', '27', '🇿🇦', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(251, 'ZM', 'Zambia', '260', '🇿🇲', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11'),
(252, 'ZW', 'Zimbabwe', '263', '🇿🇼', 0, 1, '2021-01-20 09:04:11', '2021-01-20 09:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `unique_id` int NOT NULL,
  `event_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `when_day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `event_time` time NOT NULL,
  `to_time` time NOT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `admin_id`, `venu_id`, `unique_id`, `event_name`, `event_description`, `when_day`, `from_date`, `to_date`, `event_time`, `to_time`, `status`, `image`, `name_of_file_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Eghdfkgsdfhgkhskdhfghlsdkfghks', 'testfgsdfgsdfghsdfgsdfkjghjkfglsdjkfhglsjkdfglsdfgjkhsdlfkghksdhfgkdsfghsdkfjghkdshflgjshdfgkhsdkjfghksdlfkgskdhfgkldsfgksdfgsdfgsdfgsdfgtestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkahtestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkahtestingsdfsadfk', 'Monday,Tuesday,Wednesday,Thursday,Friday', '2021-11-12', '2021-11-16', '18:58:00', '19:58:00', 'Active', '1027202307214389653b65071defc.jpeg', 'IMG_20230922_173045.jpg', '2021-11-12 13:28:34', '2023-10-27 01:51:43', NULL),
(2, 4, 2, 2, 'Event2', 'cxxcxc', 'Tuesday,Friday', '2023-10-24', '2023-11-09', '00:00:00', '23:58:00', 'Active', '1024202306400660653766c61b047.png', 'Screenshot 2023-09-19 at 3.56.35 PM.png', '2021-11-12 14:01:29', '2023-10-24 01:10:06', NULL),
(3, 1, 2, 3, 'Vanue?', 'dwqd', 'Monday,Tuesday,Friday,Saturday', '2021-11-16', '2021-11-17', '09:39:00', '11:39:00', 'Active', '012020220713451761e90ba992efb.jpeg', 'file_example_JPG_1MB.jpg', '2021-11-16 06:09:09', '2022-01-20 01:45:59', '2022-01-20 01:45:59'),
(4, 1, 5, 4, 'New Event', 'sajhfsdjkfhsdahfsd fsdhfjksahfjdhs fsdfhsdjfhsdaj fasdhfsjkdafshadf sdlfhsdjfhjsdhf sldfhsdjfhasjhf', 'Monday,Tuesday,Wednesday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-31', '11:00:00', '12:41:00', 'Active', '1024202310113172653798532e894.jpeg', 'photo-1575936123452-b67c3203c357.jpg', '2023-10-24 04:41:31', '2023-10-24 04:41:31', NULL),
(5, 1, 2, 5, 'sdfsdfsdfsd', 'dsfsdfsdfsdfsdaufysduyfsudyfsdhfjsdhfjshdjfhsdjhfjsdhfjcshdjhcjsdfhjsdhfjsdhfjhsdajfasdfsdafsdafsafdsafsdafdfsdfsdfsdfsdfasdfsdafdsafsdfsadfdsafsdafasdfsadfasdf djkdfsjfs sdkfjsdkjfs sdfjsdkjfasd fsdakfksdjfsd dfasdkfjads fsdafsdkfhsda fsdahfsdauyrewhr wefsdufysdf sdfysudyfsda fsadyfusdyfsd fsdfuysdf sdyfusdyfsd fsdufysduyf', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2023-10-24', '2023-10-31', '00:00:00', '12:01:00', 'Active', '10242023133155446537c74bd5d43.jpeg', 'Screenshot_20231023-181832.jpg', '2023-10-24 08:01:55', '2023-10-25 02:12:33', NULL),
(6, 1, 1, 6, 'sjdkfghhsdfkjghsjkldfgkshdfkgh', 'dfgsrqtuioweytwuerytuiowyruitywuieyrtuiwyeruityiwurtuywirutiwuyretuiywoiurytiuwyerutyowryutuiwyrtuiywiuerytuiywrituoywiuertoiuwyertiuowierutwuirytiuiurytestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkahtestingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjksafdlshakdfjhsjkafhdjklahskdfjhjkahdfjklakdjfhjahlsdfkjhasjkdfhjkashdflkasjkdflasdfjkhajksdfhklahskdfhjkahdflkahkjfdkahlkdfhjkadkflaksjdfhjkashdfjkhjkasdhfjkhsjkhdfljkhakjdfhjashdfjkaksfldjhasdfjkskahdflkskajdfhjksahldfkjhaskjdfhljkashdfjklhasjkdfhkasjfhdjkashdfjkhajksfhdjklafjkdajkdfkjahsjkdfhjkah', 'Monday,Tuesday,Wednesday,Thursday,Friday', '2023-10-27', '2023-10-28', '00:53:00', '12:53:00', 'Active', '1027202307242243653b65a6e568f.jpeg', 'Screenshot_2023-10-11-20-56-10-71_98f850531ff2733880e9df432f3b2992.jpg', '2023-10-27 01:54:22', '2023-10-27 01:54:22', NULL),
(7, 1, 9, 7, 'Proper', 'Hello world', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:57:00', '18:57:00', 'Active', '1027202313283930653bbb0700391.jpeg', 'download.jpg', '2023-10-27 07:58:39', '2023-10-27 07:58:39', NULL),
(8, 1, 9, 8, 'Nihal', 'Check your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information includes your IP address and test results, but doesn’t include any other information about you as an Internet user.', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', '2023-10-27', '2023-10-28', '06:59:00', '18:59:00', 'Active', '1027202313300830653bbb603192d.jpeg', 'download.jpg', '2023-10-27 08:00:08', '2023-10-27 08:00:08', NULL),
(9, 1, 9, 9, 'vikram', 'Check your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information includes your IP address and test results, but doesn’t include any other information about you as an Internet user.', 'Monday,Tuesday,Wednesday,Thursday,Saturday,Sunday', '2023-10-27', '2023-10-28', '07:04:00', '19:04:00', 'Active', '1027202313350949653bbc8dd65d5.jpeg', 'download.jpg', '2023-10-27 08:05:09', '2023-10-27 08:05:09', NULL),
(10, 1, 5, 10, 'Golu', 'Check your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information includes your IP address aCheck your Internet speed in under 30 seconds. The speed test usually transfers less than 40 MB of data, but may transfer more data on fast connections.\n\nTo run the test, you\'ll be connected to Measurement Lab (M-Lab) and your IP address will be shared with them and processed by them in accordance with their privacy policy. M-Lab conducts the test and publicly publishes all test results to promote Internet research. Published information ind test results, but doesn’t include any other information about you as an Internet user.', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '2024-01-09', '2024-02-03', '00:01:00', '23:59:00', 'Active', '1027202313383826653bbd5e21db0.jpeg', 'hd-Clouds-Meet-The-Sea-AI-Generated-4K-Wallpaper.jpg', '2023-10-27 08:08:38', '2024-01-09 00:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_sent_notifications`
--

CREATE TABLE `event_sent_notifications` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `event_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_sent_notifications`
--

INSERT INTO `event_sent_notifications` (`id`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(13, 1, 1, '2021-11-16 04:53:14', '2021-11-16 04:53:14'),
(14, 1, 2, '2021-11-16 04:53:16', '2021-11-16 04:53:16'),
(15, 2, 1, '2021-11-16 04:53:17', '2021-11-16 04:53:17'),
(16, 2, 2, '2021-11-16 04:53:18', '2021-11-16 04:53:18'),
(17, 3, 1, '2021-11-16 04:53:19', '2021-11-16 04:53:19'),
(18, 3, 2, '2021-11-16 04:53:19', '2021-11-16 04:53:19'),
(19, 1, 3, '2021-11-16 06:09:37', '2021-11-16 06:09:37'),
(20, 2, 3, '2021-11-16 06:09:40', '2021-11-16 06:09:40'),
(21, 3, 3, '2021-11-16 06:09:41', '2021-11-16 06:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int UNSIGNED NOT NULL,
  `uniq_id` int NOT NULL DEFAULT '0',
  `setting_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `setting_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_enabled_disbaled` enum('Enabled','Disabled','None') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `uniq_id`, `setting_content`, `setting_type`, `setting_enabled_disbaled`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'w@r.com', 'Contact Email', NULL, NULL, '2021-11-11 11:02:46', '2024-01-31 00:21:35'),
(4, 2, '78798789798798', 'Contact Number', NULL, NULL, '2021-11-11 11:09:23', '2024-01-31 23:56:54'),
(6, 11, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 'About our loyalty program', NULL, NULL, '2021-11-11 11:09:54', '2024-02-01 07:47:33'),
(7, 12, '<p>&nbsp;</p>\n\n<ol>\n<li>What is HTML?</li>\n<li>What is a Tag in HTML? Can you define HTML attributes?</li>\n<li>What is the key difference between HTML Elements and Tags? Also, Can you separate sections of texts in HTML?</li>\n<li>If you want to display some HTML data in a table in tabular format, which HTML tags will you use?</li>\n<li>What are Attributes in HTML?</li>\n<li>What is an Anchor tag in HTML?</li>\n<li>What are Lists in HTML?</li>\n<li>Define HTML Layout.</li>\n<li>What are Forms in HTML?</li>\n<li>What is the Use of Comments in HTML?</li>\n<li>What is HTML5?</li>\n<li>What is Semantic HTML?</li>\n<li>What is an Image Map?</li>\n</ol>\n\n<p>&nbsp;</p>', 'faq\'s', NULL, NULL, '2021-11-11 11:10:12', '2024-01-18 02:33:19'),
(8, 13, '<h3>bbgggfhgfhf</h3>', 'Terms & conditions', NULL, NULL, '2021-11-11 11:10:26', '2024-01-31 23:58:01'),
(9, 14, '<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 'Privacy policy', NULL, NULL, '2021-11-11 11:10:28', '2024-02-01 05:08:12'),
(10, 15, '10', 'Unique venue invoice no', NULL, NULL, '2021-11-11 11:10:48', '2021-11-15 07:52:59'),
(11, 16, '1000', 'Venue timeout', NULL, NULL, '2021-11-11 11:10:53', '2021-11-15 07:37:15'),
(12, 17, '333', 'Sms otp validity', 'Enabled', NULL, '2021-11-11 11:11:11', '2021-11-15 04:12:06'),
(13, 17, '333', 'Sms otp validity', 'Enabled', NULL, '2021-11-11 11:11:11', '2021-11-15 04:12:06'),
(14, 18, 'surewal', 'Address', NULL, NULL, '2024-01-30 05:31:32', '2024-01-31 00:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `name`, `status`, `image`) VALUES
(1, 'Cricket', 1, '1.png'),
(2, 'Football', 1, '2.png'),
(3, 'Tennis', 1, '3.png'),
(4, 'Volleyball', 1, '4.png'),
(5, 'Baseball', 1, '5.png'),
(6, 'Basketball', 1, '6.png'),
(7, 'Badminton', 1, '7.png'),
(8, 'Hockey', 1, '8.png'),
(9, 'Boxing', 1, '9.png'),
(10, 'Golf', 1, '10.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_poses`
--

CREATE TABLE `login_poses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_poses`
--

INSERT INTO `login_poses` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc@yopmail.com', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_requests`
--

CREATE TABLE `login_requests` (
  `id` int UNSIGNED NOT NULL,
  `venue_user_id` int UNSIGNED DEFAULT NULL,
  `venu_id` int UNSIGNED DEFAULT NULL,
  `device_model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `mac_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `authorized_status` enum('Unauthorized','Authorized') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unauthorized',
  `date_time` datetime DEFAULT NULL,
  `device_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_requests`
--

INSERT INTO `login_requests` (`id`, `venue_user_id`, `venu_id`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `device_type`, `device_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2021-11-12 18:54:05', NULL, NULL, '2021-11-12 13:24:05', '2022-01-19 06:00:54', NULL),
(2, 2, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2021-11-12 19:49:24', 'Ipad', '12335556', '2021-11-12 14:19:24', '2022-01-19 06:00:54', NULL),
(3, 3, 1, 'iPad', 'BA69C2E5-C1A0-46B7-9931-B23E97CFE6FE', 'Authorized', '2021-11-15 10:34:40', 'Ipad', '12335556', '2021-11-15 05:04:40', '2022-01-19 06:00:54', NULL),
(4, 4, 2, 'iPad', '9041C367-37FF-405C-8314-CB59BCCCE8B1', 'Authorized', '2021-11-16 11:56:11', 'Ipad', 'sdnjbsdjjfjjfsh', '2021-11-16 06:26:11', '2022-01-19 06:00:54', NULL),
(5, 5, 1, 'iPad', '17B396CC-6E4B-4298-A9DE-2F4ECB9C737E', 'Authorized', '2022-01-25 18:27:55', 'Ipad', '????', '2022-01-25 12:57:55', '2022-01-25 12:59:06', NULL),
(6, 5, 1, 'iPad 2022', 'mohali', 'Authorized', '2022-01-27 11:08:25', 'Ipad', 'noToken', '2022-01-27 05:38:25', '2022-01-27 05:39:11', NULL),
(7, 2, 1, 'iPad 2022', 'mohali', 'Authorized', '2022-01-27 16:07:33', NULL, NULL, '2022-01-27 10:37:33', '2022-01-27 07:12:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
(48, '2021_09_24_104903_create_assign_user_venues_table', 17),
(49, '2021_10_01_052623_create_wallet_transactions_table', 18),
(50, '2021_10_01_070826_create_admin_notifications_table', 19),
(51, '2021_10_01_072908_create_admin_criteria_notifications_table', 19),
(52, '2021_10_12_110145_create_jobs_table', 20),
(53, '2021_10_13_123229_create_failed_jobs_table', 21),
(54, '2021_10_20_125747_create_login_poses_table', 22),
(55, '2021_10_26_135654_create_general_settings_table', 23),
(56, '2021_07_27_104038_create_application_datas_table', 24),
(58, '2021_11_09_100150_create_wallet_details_table', 25),
(59, '2021_11_10_053929_create_event_sent_notifications_table', 26),
(60, '2021_11_10_092435_create_noti_records_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `name`, `status`, `image`) VALUES
(1, 'Rock', 1, '1.png'),
(2, 'Hip hop music', 1, '2.png'),
(3, 'Popular music', 1, '3.png'),
(4, 'Pop music', 1, '4.png'),
(5, 'Electronic music', 1, '5.png'),
(6, 'Jazz', 1, '6.png'),
(7, 'Rhythm and blues', 1, '7.png'),
(8, 'Blues', 1, '8.png'),
(9, 'Art music', 1, '9.png'),
(10, 'Folk music', 1, '9.png');

-- --------------------------------------------------------

--
-- Table structure for table `new_venues`
--

CREATE TABLE `new_venues` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `u_v_fav_id` int DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  `new_venue_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noti_records`
--

CREATE TABLE `noti_records` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `wallet` int NOT NULL DEFAULT '0',
  `offer` int NOT NULL DEFAULT '0',
  `event` int NOT NULL DEFAULT '0',
  `normal` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noti_records`
--

INSERT INTO `noti_records` (`id`, `user_id`, `wallet`, `offer`, `event`, `normal`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 0, 0, '2021-11-12 13:00:07', '2024-01-09 00:21:58'),
(2, 2, 1, 5, 23, 1, '2021-11-12 13:43:29', '2024-01-09 00:22:00'),
(3, 3, 0, 2, 0, 0, '2021-11-15 05:12:53', '2024-01-09 00:22:01'),
(4, 4, 0, 2, 0, 0, '2021-11-16 06:46:26', '2024-01-09 00:22:01'),
(5, 5, 0, 2, 0, 0, '2021-11-16 12:41:32', '2024-01-09 00:22:02'),
(6, 6, 0, 2, 0, 0, '2021-11-16 12:46:59', '2024-01-09 00:22:02'),
(7, 7, 0, 2, 0, 0, '2021-11-16 13:03:01', '2024-01-09 00:22:02'),
(8, 8, 0, 2, 0, 0, '2021-11-17 05:58:50', '2024-01-09 00:22:02'),
(9, 9, 0, 0, 0, 0, '2021-11-17 06:26:41', '2021-11-17 06:26:41'),
(11, 11, 20, 0, 0, 3, '2022-01-25 11:05:25', '2022-01-28 01:19:38'),
(12, 12, 0, 2, 0, 0, '2023-10-20 05:17:54', '2024-01-09 00:22:02'),
(13, 13, 0, 2, 0, 0, '2023-10-20 07:10:48', '2024-01-09 00:22:04'),
(14, 14, 0, 2, 0, 0, '2023-10-23 05:40:31', '2024-01-09 00:22:04'),
(15, 15, 0, 2, 0, 0, '2023-10-23 06:45:08', '2024-01-09 00:22:04'),
(16, 16, 0, 2, 0, 1, '2023-10-23 06:46:11', '2024-01-19 00:09:02'),
(17, 17, 0, 2, 0, 0, '2023-10-23 08:26:16', '2024-01-09 00:22:05'),
(18, 18, 1, 2, 0, 0, '2023-10-23 08:29:57', '2024-01-09 00:22:06'),
(19, 19, 0, 2, 0, 0, '2023-10-23 09:44:46', '2024-01-09 00:22:06'),
(20, 20, 0, 2, 0, 0, '2023-10-23 10:13:59', '2024-01-09 00:22:06'),
(21, 21, 0, 2, 0, 0, '2023-10-23 10:30:59', '2024-01-09 00:22:06'),
(22, 22, 0, 2, 0, 0, '2023-10-23 10:41:38', '2024-01-09 00:22:06'),
(23, 23, 0, 2, 0, 0, '2023-10-23 23:17:49', '2024-01-09 00:22:07'),
(24, 24, 1, 2, 0, 0, '2023-10-24 01:32:56', '2024-01-09 00:22:07'),
(25, 25, 0, 2, 0, 0, '2023-10-24 01:55:28', '2024-01-09 00:22:07'),
(26, 26, 1, 2, 0, 0, '2023-10-24 08:54:14', '2024-01-09 00:22:07'),
(27, 27, 0, 2, 0, 0, '2023-10-24 09:24:54', '2024-01-09 00:22:08'),
(28, 28, 0, 2, 0, 0, '2023-10-24 09:48:06', '2024-01-09 00:22:08'),
(29, 29, 0, 2, 0, 0, '2023-10-24 10:05:28', '2024-01-09 00:22:08'),
(30, 30, 0, 2, 0, 0, '2023-10-24 10:21:39', '2024-01-09 00:22:09'),
(31, 31, 1, 2, 0, 0, '2023-10-24 10:37:27', '2024-01-09 00:22:10'),
(32, 32, 1, 2, 0, 0, '2023-10-24 23:06:24', '2024-01-09 00:22:10'),
(33, 33, 0, 2, 0, 0, '2023-10-24 23:37:18', '2024-01-09 00:22:10'),
(34, 34, 0, 2, 0, 0, '2023-10-25 01:29:36', '2024-01-09 00:22:12'),
(35, 35, 1, 2, 0, 0, '2023-10-25 01:54:26', '2024-01-09 00:22:12'),
(36, 36, 0, 2, 0, 0, '2023-10-25 03:09:11', '2024-01-09 00:22:12'),
(37, 37, 1, 2, 0, 0, '2023-10-25 03:13:27', '2024-01-09 00:22:13'),
(38, 38, 0, 2, 0, 0, '2023-10-25 03:32:11', '2024-01-09 00:22:14'),
(39, 39, 0, 2, 0, 0, '2023-10-25 06:08:15', '2024-01-09 00:22:14'),
(40, 40, 0, 2, 0, 0, '2023-10-26 02:14:23', '2024-01-09 00:22:14'),
(41, 41, 0, 2, 0, 0, '2023-10-26 04:52:00', '2024-01-09 00:22:15'),
(42, 42, 0, 2, 0, 0, '2023-10-26 05:22:36', '2024-01-09 00:22:15'),
(43, 43, 0, 2, 0, 0, '2023-10-26 05:52:17', '2024-01-09 00:22:15'),
(44, 44, 0, 2, 0, 0, '2023-10-26 06:17:18', '2024-01-09 00:22:15'),
(45, 45, 0, 2, 0, 0, '2023-10-26 06:18:28', '2024-01-09 00:22:16'),
(46, 46, 0, 2, 0, 0, '2023-10-26 06:31:35', '2024-01-09 00:22:16'),
(47, 47, 0, 2, 0, 0, '2023-10-26 07:01:16', '2024-01-09 00:22:16'),
(48, 48, 0, 2, 0, 0, '2023-10-26 07:12:51', '2024-01-09 00:22:16'),
(49, 49, 0, 2, 0, 0, '2023-10-26 07:17:18', '2024-01-09 00:22:17'),
(50, 50, 1, 2, 0, 0, '2023-10-26 07:18:47', '2024-01-09 00:22:17'),
(51, 51, 0, 2, 0, 0, '2023-10-26 07:24:59', '2024-01-09 00:22:17'),
(52, 52, 1, 2, 0, 0, '2023-10-26 08:31:10', '2024-01-09 00:22:18'),
(53, 53, 0, 2, 0, 0, '2023-10-26 23:15:44', '2024-01-09 00:22:18'),
(54, 54, 0, 2, 0, 0, '2023-10-27 01:09:40', '2024-01-09 00:22:18'),
(55, 55, 0, 2, 0, 0, '2023-10-27 01:47:24', '2024-01-09 00:22:18'),
(56, 56, 1, 2, 0, 0, '2023-10-27 03:00:53', '2024-01-09 00:22:19'),
(57, 57, 1, 2, 0, 0, '2023-10-27 03:04:35', '2024-01-09 00:22:19'),
(58, 58, 1, 2, 0, 0, '2023-10-27 03:08:02', '2024-01-09 00:22:20'),
(59, 59, 1, 2, 0, 0, '2023-10-27 03:10:53', '2024-01-09 00:22:20'),
(60, 60, 0, 2, 0, 0, '2023-10-27 03:12:20', '2024-01-09 00:22:20'),
(61, 61, 0, 2, 0, 2, '2023-10-27 03:19:02', '2024-01-09 00:22:21'),
(62, 62, 0, 0, 0, 0, '2023-10-27 03:30:11', '2024-01-09 07:36:09'),
(63, 63, 0, 2, 0, 3, '2023-10-27 03:37:43', '2024-01-09 00:22:22'),
(64, 64, 0, 2, 0, 0, '2023-10-27 07:14:36', '2024-01-09 00:22:23'),
(65, 65, 0, 2, 0, 0, '2023-10-27 07:17:35', '2024-01-09 00:22:23'),
(66, 66, 0, 2, 0, 0, '2023-10-27 07:32:31', '2024-01-09 00:22:25'),
(67, 67, 0, 2, 0, 0, '2023-10-27 07:39:35', '2024-01-09 00:22:25'),
(68, 68, 0, 2, 0, 0, '2023-10-27 08:24:02', '2024-01-09 00:22:25'),
(69, 69, 0, 2, 0, 0, '2023-10-27 08:37:05', '2024-01-09 00:22:26'),
(70, 70, 0, 2, 0, 0, '2023-10-27 08:37:52', '2024-01-09 00:22:26'),
(71, 71, 0, 2, 0, 0, '2023-10-27 08:46:48', '2024-01-09 00:22:27'),
(72, 72, 0, 0, 0, 0, '2023-10-27 09:20:30', '2024-01-09 10:11:13'),
(73, 73, 0, 2, 0, 0, '2023-10-27 10:00:13', '2024-01-09 00:22:28'),
(74, 74, 0, 2, 0, 0, '2023-10-27 10:12:49', '2024-01-09 00:22:29'),
(75, 75, 0, 2, 0, 0, '2023-10-27 10:39:55', '2024-01-09 00:22:30'),
(76, 76, 0, 2, 0, 0, '2023-10-30 00:25:18', '2024-01-09 00:22:31'),
(77, 77, 0, 2, 0, 0, '2023-12-15 03:12:26', '2024-01-09 00:22:31'),
(78, 78, 0, 2, 0, 0, '2023-12-18 06:33:08', '2024-01-09 00:22:31'),
(79, 79, 0, 2, 0, 0, '2023-12-20 02:56:28', '2024-01-09 00:22:32'),
(80, 80, 1, 2, 0, 0, '2023-12-21 01:20:37', '2024-01-09 00:22:32'),
(81, 81, 1, 2, 0, 0, '2023-12-21 03:02:33', '2024-01-09 00:22:32'),
(82, 82, 0, 2, 0, 0, '2023-12-21 03:34:09', '2024-01-09 00:22:32'),
(83, 83, 0, 0, 0, 0, '2023-12-21 06:48:15', '2024-01-09 05:10:23'),
(84, 84, 1, 2, 0, 0, '2023-12-28 00:07:06', '2024-01-09 00:22:34'),
(85, 85, 0, 2, 0, 0, '2023-12-29 01:59:27', '2024-01-09 00:22:35'),
(86, 86, 0, 2, 0, 0, '2023-12-29 04:21:46', '2024-01-09 00:22:35'),
(87, 87, 0, 2, 0, 0, '2023-12-29 06:05:38', '2024-01-09 00:22:35'),
(88, 88, 0, 2, 0, 0, '2023-12-29 07:24:22', '2024-01-09 00:22:36'),
(89, 89, 0, 0, 0, 0, '2024-01-02 02:00:30', '2024-01-09 00:22:41'),
(90, 90, 0, 0, 0, 0, '2024-01-02 04:19:51', '2024-01-09 07:57:19'),
(91, 91, 0, 2, 0, 0, '2024-01-02 05:54:07', '2024-01-09 00:22:39'),
(92, 92, 0, 2, 0, 0, '2024-01-04 02:14:52', '2024-01-09 00:22:40'),
(93, 93, 1, 2, 0, 0, '2024-01-04 08:44:14', '2024-01-09 00:22:40'),
(94, 94, 0, 2, 0, 0, '2024-01-04 23:09:11', '2024-01-09 00:22:40'),
(95, 95, 1, 2, 0, 0, '2024-01-04 23:24:09', '2024-01-09 00:22:41'),
(96, 96, 0, 2, 0, 0, '2024-01-05 01:51:10', '2024-01-09 00:22:41'),
(97, 97, 0, 2, 0, 0, '2024-01-07 23:38:08', '2024-01-09 00:22:43'),
(98, 98, 1, 2, 0, 0, '2024-01-08 00:29:06', '2024-01-09 00:22:44'),
(99, 99, 1, 0, 0, 0, '2024-01-08 01:37:11', '2024-01-09 00:51:29'),
(100, 100, 1, 2, 0, 0, '2024-01-08 02:40:34', '2024-01-09 00:22:45'),
(101, 101, 0, 0, 0, 0, '2024-01-09 07:29:31', '2024-01-09 07:29:44'),
(102, 102, 0, 0, 0, 0, '2024-01-09 07:56:18', '2024-01-09 08:15:01'),
(103, 103, 0, 0, 0, 0, '2024-01-09 07:59:47', '2024-01-09 08:07:40'),
(104, 104, 0, 0, 0, 0, '2024-01-09 08:13:25', '2024-01-09 08:15:45'),
(105, 105, 0, 0, 0, 0, '2024-01-09 08:56:55', '2024-01-09 08:58:14'),
(106, 106, 1, 0, 0, 0, '2024-01-09 09:46:26', '2024-01-09 09:46:27'),
(107, 107, 1, 0, 0, 0, '2024-01-09 09:58:06', '2024-01-09 09:58:06'),
(108, 108, 1, 0, 0, 0, '2024-01-10 00:00:41', '2024-01-10 00:00:42'),
(109, 109, 1, 0, 0, 0, '2024-01-10 00:14:53', '2024-01-10 00:14:54'),
(110, 110, 1, 0, 0, 0, '2024-01-10 01:25:42', '2024-01-10 01:25:42'),
(111, 111, 0, 0, 0, 0, '2024-01-10 01:32:10', '2024-01-10 01:32:20'),
(112, 112, 0, 0, 0, 0, '2024-01-10 01:35:35', '2024-01-10 01:38:07'),
(113, 113, 1, 0, 0, 0, '2024-01-10 02:27:24', '2024-01-10 02:27:24'),
(114, 114, 1, 0, 0, 0, '2024-01-10 03:45:36', '2024-01-10 03:45:36'),
(115, 115, 0, 0, 0, 0, '2024-01-10 05:42:53', '2024-01-10 05:42:58'),
(116, 116, 0, 0, 0, 0, '2024-01-10 07:39:33', '2024-01-10 07:55:41'),
(117, 117, 0, 0, 0, 0, '2024-01-10 07:48:26', '2024-01-10 07:48:40'),
(118, 118, 0, 0, 0, 0, '2024-01-10 08:41:31', '2024-01-10 09:25:32'),
(119, 119, 1, 0, 0, 0, '2024-01-10 23:32:21', '2024-01-10 23:32:21'),
(120, 120, 1, 0, 0, 1, '2024-01-10 23:44:22', '2024-01-19 09:38:10'),
(121, 121, 0, 0, 0, 0, '2024-01-11 08:11:58', '2024-01-11 08:13:23'),
(122, 122, 1, 0, 0, 0, '2024-01-11 08:38:17', '2024-01-11 08:38:18'),
(123, 123, 1, 0, 0, 0, '2024-01-11 08:40:53', '2024-01-11 08:40:53'),
(124, 124, 1, 0, 0, 0, '2024-01-11 10:05:01', '2024-01-11 10:05:02'),
(125, 125, 0, 0, 0, 0, '2024-01-11 22:49:08', '2024-01-11 22:52:58'),
(126, 126, 1, 0, 0, 0, '2024-01-12 00:06:26', '2024-01-12 00:06:26'),
(127, 127, 1, 0, 0, 0, '2024-01-12 00:29:26', '2024-01-12 00:29:27'),
(128, 128, 0, 0, 0, 0, '2024-01-12 02:20:55', '2024-01-12 02:22:32'),
(129, 129, 0, 0, 0, 0, '2024-01-12 03:13:31', '2024-01-12 03:14:59'),
(130, 130, 0, 0, 0, 0, '2024-01-12 05:10:24', '2024-01-12 05:13:51'),
(131, 131, 0, 0, 0, 0, '2024-01-12 05:24:27', '2024-01-12 05:25:17'),
(132, 132, 0, 0, 0, 0, '2024-01-12 06:01:27', '2024-01-12 06:01:32'),
(133, 133, 0, 0, 0, 0, '2024-01-12 06:02:51', '2024-01-12 06:03:33'),
(134, 134, 1, 0, 0, 0, '2024-01-16 04:34:18', '2024-01-16 04:34:19'),
(135, 135, 0, 0, 0, 0, '2024-01-16 04:59:52', '2024-01-16 05:03:51'),
(136, 136, 0, 0, 0, 0, '2024-01-16 05:05:43', '2024-01-16 05:08:14'),
(137, 137, 1, 0, 0, 0, '2024-01-16 05:52:39', '2024-01-16 05:52:39'),
(138, 138, 1, 0, 0, 0, '2024-01-16 06:32:48', '2024-01-16 06:32:49'),
(139, 139, 1, 0, 0, 0, '2024-01-16 23:32:35', '2024-01-16 23:32:36'),
(140, 140, 1, 0, 0, 0, '2024-01-16 23:37:46', '2024-01-16 23:37:47'),
(141, 141, 1, 0, 0, 0, '2024-01-17 00:24:44', '2024-01-17 00:24:45'),
(142, 142, 0, 0, 0, 0, '2024-01-17 00:44:14', '2024-01-18 06:06:21'),
(143, 143, 1, 0, 0, 0, '2024-01-17 00:59:26', '2024-01-17 00:59:26'),
(144, 144, 0, 0, 0, 0, '2024-01-17 01:05:11', '2024-01-17 01:07:25'),
(145, 145, 0, 0, 0, 0, '2024-01-17 01:26:18', '2024-01-17 01:28:18'),
(146, 146, 0, 0, 0, 0, '2024-01-17 01:32:18', '2024-01-17 01:42:36'),
(147, 147, 1, 0, 0, 0, '2024-01-17 01:46:20', '2024-01-17 01:46:21'),
(148, 148, 0, 0, 0, 0, '2024-01-17 01:50:50', '2024-01-17 02:01:38'),
(149, 149, 1, 0, 0, 0, '2024-01-17 02:40:36', '2024-01-17 02:40:37'),
(150, 150, 1, 0, 0, 0, '2024-01-17 04:06:42', '2024-01-17 04:06:42'),
(151, 151, 0, 0, 0, 0, '2024-01-17 07:22:13', '2024-01-17 07:22:43'),
(152, 152, 1, 0, 0, 0, '2024-01-17 09:57:04', '2024-01-17 09:57:04'),
(153, 153, 1, 0, 0, 0, '2024-01-17 10:11:04', '2024-01-17 10:11:04'),
(154, 154, 1, 0, 0, 0, '2024-01-17 10:14:19', '2024-01-17 10:14:19'),
(155, 155, 1, 0, 0, 0, '2024-01-18 00:49:34', '2024-01-18 00:49:35'),
(156, 156, 1, 0, 0, 0, '2024-01-18 02:00:22', '2024-01-18 02:00:28'),
(157, 157, 0, 0, 0, 0, '2024-01-18 02:21:44', '2024-01-18 02:22:46'),
(158, 158, 1, 0, 0, 0, '2024-01-18 02:50:46', '2024-01-18 02:50:52'),
(159, 159, 1, 0, 0, 0, '2024-01-18 04:05:42', '2024-01-18 04:05:48'),
(160, 160, 1, 0, 0, 0, '2024-01-18 04:20:49', '2024-01-18 04:20:55'),
(161, 161, 1, 0, 0, 0, '2024-01-18 04:28:01', '2024-01-18 04:28:07'),
(162, 162, 1, 0, 0, 0, '2024-01-18 04:36:56', '2024-01-18 04:37:02'),
(163, 163, 1, 0, 0, 0, '2024-01-18 04:41:45', '2024-01-18 04:41:52'),
(164, 164, 0, 0, 0, 0, '2024-01-18 04:45:55', '2024-01-18 04:48:30'),
(165, 165, 1, 0, 0, 0, '2024-01-18 04:55:40', '2024-01-18 04:55:45'),
(166, 166, 1, 0, 0, 0, '2024-01-18 04:59:32', '2024-01-18 04:59:37'),
(167, 167, 1, 0, 0, 0, '2024-01-18 05:32:51', '2024-01-18 05:32:57'),
(168, 168, 0, 0, 0, 0, '2024-01-18 05:39:26', '2024-01-18 05:41:00'),
(169, 169, 1, 0, 0, 0, '2024-01-18 05:43:17', '2024-01-18 05:43:23'),
(170, 170, 1, 0, 0, 0, '2024-01-18 05:59:47', '2024-01-18 05:59:52'),
(171, 171, 0, 0, 0, 0, '2024-01-18 06:12:59', '2024-01-18 06:13:52'),
(172, 172, 1, 0, 0, 0, '2024-01-18 06:30:56', '2024-01-18 06:31:02'),
(173, 173, 1, 0, 0, 0, '2024-01-18 07:49:59', '2024-01-18 07:50:05'),
(174, 174, 1, 0, 0, 0, '2024-01-18 08:05:01', '2024-01-18 08:05:05'),
(175, 175, 1, 0, 0, 0, '2024-01-18 08:10:06', '2024-01-18 08:10:11'),
(176, 176, 1, 0, 0, 0, '2024-01-18 23:53:48', '2024-01-18 23:53:55'),
(177, 177, 0, 0, 0, 0, '2024-01-19 01:09:16', '2024-01-19 01:09:27'),
(178, 178, 1, 0, 0, 0, '2024-01-19 03:17:52', '2024-01-19 03:17:57'),
(179, 179, 1, 0, 0, 0, '2024-01-19 03:34:29', '2024-01-19 03:34:34'),
(180, 180, 1, 0, 0, 0, '2024-01-19 04:01:07', '2024-01-19 04:01:13'),
(181, 181, 0, 0, 0, 0, '2024-01-19 04:14:54', '2024-01-19 04:16:05'),
(182, 182, 1, 0, 0, 0, '2024-01-19 06:28:24', '2024-01-19 06:28:31'),
(183, 183, 1, 0, 0, 0, '2024-01-19 06:32:04', '2024-01-19 06:32:09'),
(184, 184, 1, 0, 0, 0, '2024-01-19 06:35:33', '2024-01-19 06:35:38'),
(185, 185, 1, 0, 0, 0, '2024-01-19 06:57:49', '2024-01-19 06:57:54'),
(186, 186, 1, 0, 0, 0, '2024-01-19 07:16:37', '2024-01-19 07:16:43'),
(187, 187, 0, 0, 0, 0, '2024-01-19 07:22:52', '2024-01-19 07:23:36'),
(188, 188, 0, 0, 0, 0, '2024-01-19 07:48:39', '2024-01-24 00:05:17'),
(189, 189, 1, 0, 0, 3, '2024-01-19 08:53:37', '2024-01-19 09:58:43'),
(190, 190, 1, 0, 0, 0, '2024-01-19 09:00:38', '2024-01-19 09:00:43'),
(191, 191, 1, 0, 0, 0, '2024-01-19 09:08:51', '2024-01-19 09:08:57'),
(192, 192, 1, 0, 0, 0, '2024-01-19 09:23:57', '2024-01-19 09:24:02'),
(193, 193, 1, 0, 0, 6, '2024-01-19 09:33:27', '2024-01-22 01:53:59'),
(194, 194, 1, 0, 0, 0, '2024-01-19 10:42:46', '2024-01-19 10:42:51'),
(195, 195, 0, 0, 0, 0, '2024-01-20 01:45:16', '2024-01-20 01:45:50'),
(196, 196, 0, 0, 0, 0, '2024-01-20 01:49:24', '2024-01-20 01:49:38'),
(197, 197, 0, 0, 0, 0, '2024-01-20 01:55:25', '2024-01-20 01:55:57'),
(198, 198, 0, 0, 0, 0, '2024-01-20 03:23:52', '2024-01-20 03:24:11'),
(199, 199, 0, 0, 0, 0, '2024-01-22 00:22:47', '2024-01-22 00:31:39'),
(200, 200, 0, 0, 0, 0, '2024-01-22 05:06:35', '2024-01-22 05:07:14'),
(201, 201, 0, 0, 0, 0, '2024-01-22 05:23:12', '2024-01-22 05:23:26'),
(202, 202, 0, 0, 0, 0, '2024-01-22 05:36:02', '2024-01-22 05:36:19'),
(203, 203, 1, 0, 0, 0, '2024-01-22 06:06:06', '2024-01-22 06:06:11'),
(204, 204, 1, 0, 0, 0, '2024-01-22 06:09:14', '2024-01-22 06:09:20'),
(205, 205, 0, 0, 0, 0, '2024-01-22 06:09:38', '2024-01-22 06:11:31'),
(206, 206, 1, 0, 0, 0, '2024-01-22 07:04:11', '2024-01-22 07:04:16'),
(207, 207, 1, 0, 0, 0, '2024-01-22 07:15:12', '2024-01-22 07:15:18'),
(208, 208, 1, 0, 0, 0, '2024-01-22 07:17:53', '2024-01-22 07:17:58'),
(209, 209, 1, 0, 0, 0, '2024-01-22 07:23:07', '2024-01-22 07:23:13'),
(210, 210, 1, 0, 0, 0, '2024-01-22 07:23:10', '2024-01-22 07:23:16'),
(211, 211, 1, 0, 0, 0, '2024-01-22 07:23:11', '2024-01-22 07:23:16'),
(212, 212, 1, 0, 0, 0, '2024-01-22 07:28:27', '2024-01-22 07:28:33'),
(213, 213, 0, 0, 0, 0, '2024-01-22 07:40:56', '2024-01-22 07:41:07'),
(214, 214, 1, 0, 0, 0, '2024-01-22 07:45:09', '2024-01-22 07:45:14'),
(215, 215, 0, 0, 0, 0, '2024-01-22 07:47:17', '2024-01-22 07:47:35'),
(216, 216, 1, 0, 0, 0, '2024-01-22 09:11:20', '2024-01-22 09:11:25'),
(217, 217, 1, 0, 0, 0, '2024-01-22 09:25:38', '2024-01-22 09:25:43'),
(218, 218, 0, 0, 0, 0, '2024-01-22 09:33:24', '2024-01-22 09:34:18'),
(219, 219, 0, 0, 0, 0, '2024-01-22 09:39:02', '2024-01-22 09:40:32'),
(220, 220, 1, 0, 0, 0, '2024-01-22 09:46:17', '2024-01-22 09:46:22'),
(221, 221, 0, 0, 0, 0, '2024-01-22 09:59:23', '2024-01-22 09:59:37'),
(222, 222, 0, 0, 0, 0, '2024-01-22 10:00:50', '2024-01-22 10:02:10'),
(223, 223, 0, 0, 0, 0, '2024-01-22 10:03:42', '2024-01-22 10:05:04'),
(224, 224, 1, 0, 0, 0, '2024-01-22 23:54:09', '2024-01-22 23:54:14'),
(225, 225, 0, 0, 0, 0, '2024-01-24 00:05:33', '2024-01-24 00:05:33'),
(226, 226, 0, 0, 0, 0, '2024-01-24 00:07:29', '2024-01-24 00:07:29'),
(227, 227, 0, 0, 0, 0, '2024-01-24 00:08:49', '2024-01-24 00:08:49'),
(228, 228, 0, 0, 0, 0, '2024-01-24 00:11:12', '2024-01-24 00:12:04'),
(229, 229, 1, 0, 0, 0, '2024-01-25 01:29:08', '2024-01-25 01:29:13'),
(230, 230, 1, 0, 0, 0, '2024-01-29 02:55:45', '2024-01-29 02:55:51'),
(231, 231, 1, 0, 0, 0, '2024-01-29 07:35:52', '2024-01-29 07:35:58'),
(232, 232, 1, 0, 0, 0, '2024-01-29 07:43:54', '2024-01-29 07:44:00'),
(233, 233, 1, 0, 0, 0, '2024-01-29 07:53:48', '2024-01-29 07:53:53'),
(234, 234, 0, 0, 0, 0, '2024-01-29 23:25:26', '2024-01-30 05:44:50'),
(235, 235, 1, 0, 0, 0, '2024-01-30 00:38:16', '2024-01-30 00:38:23'),
(236, 236, 0, 0, 0, 0, '2024-01-30 06:05:38', '2024-01-30 06:05:58'),
(237, 237, 0, 0, 0, 0, '2024-01-30 06:09:58', '2024-01-30 06:20:06'),
(238, 238, 0, 0, 0, 0, '2024-01-30 07:50:07', '2024-01-30 07:50:18'),
(239, 239, 1, 0, 0, 0, '2024-01-30 08:57:17', '2024-01-30 08:57:22'),
(240, 240, 1, 0, 0, 0, '2024-01-30 09:37:31', '2024-01-30 09:37:36'),
(241, 241, 1, 0, 0, 0, '2024-01-30 09:41:05', '2024-01-30 09:41:10'),
(242, 242, 1, 0, 0, 0, '2024-01-30 10:05:30', '2024-01-30 10:05:35'),
(243, 243, 0, 0, 0, 0, '2024-01-30 23:44:33', '2024-01-30 23:50:08'),
(244, 244, 0, 0, 0, 0, '2024-01-30 23:54:17', '2024-01-30 23:55:48'),
(245, 245, 0, 0, 0, 0, '2024-01-30 23:59:18', '2024-01-31 00:02:01'),
(246, 246, 0, 0, 0, 0, '2024-01-31 00:12:05', '2024-01-31 00:12:24'),
(247, 247, 0, 0, 0, 0, '2024-01-31 00:58:46', '2024-01-31 00:58:59'),
(248, 248, 0, 0, 0, 0, '2024-01-31 01:03:23', '2024-01-31 01:05:55'),
(249, 249, 0, 0, 0, 0, '2024-01-31 01:17:31', '2024-01-31 01:18:50'),
(250, 250, 0, 0, 0, 0, '2024-01-31 01:24:06', '2024-01-31 01:24:35'),
(251, 251, 1, 0, 0, 0, '2024-01-31 02:10:45', '2024-01-31 02:10:50'),
(252, 252, 0, 0, 0, 0, '2024-01-31 04:23:36', '2024-01-31 04:23:52'),
(253, 253, 0, 0, 0, 0, '2024-01-31 04:25:43', '2024-01-31 04:25:52'),
(254, 254, 0, 0, 0, 0, '2024-01-31 04:29:47', '2024-01-31 04:32:13'),
(255, 255, 1, 0, 0, 0, '2024-01-31 05:24:34', '2024-01-31 05:24:40'),
(256, 256, 1, 0, 0, 0, '2024-01-31 07:13:39', '2024-01-31 07:13:44'),
(257, 257, 1, 0, 0, 0, '2024-01-31 07:14:45', '2024-01-31 07:14:50'),
(258, 258, 1, 0, 0, 0, '2024-01-31 07:19:54', '2024-01-31 07:19:59'),
(259, 259, 1, 0, 0, 0, '2024-01-31 07:21:52', '2024-01-31 07:21:57'),
(260, 260, 1, 0, 0, 0, '2024-01-31 07:23:21', '2024-01-31 07:23:27'),
(261, 261, 1, 0, 0, 0, '2024-01-31 07:36:17', '2024-01-31 07:36:22'),
(262, 262, 1, 0, 0, 0, '2024-01-31 07:36:33', '2024-02-01 05:40:13'),
(263, 263, 1, 0, 0, 0, '2024-01-31 08:15:18', '2024-01-31 08:15:23'),
(264, 264, 1, 0, 0, 0, '2024-01-31 08:33:19', '2024-01-31 08:33:25'),
(265, 265, 1, 0, 0, 0, '2024-01-31 08:51:30', '2024-01-31 08:51:36'),
(266, 266, 1, 0, 0, 0, '2024-01-31 23:31:50', '2024-01-31 23:31:55'),
(267, 267, 1, 0, 0, 0, '2024-02-01 00:04:31', '2024-02-01 00:04:37'),
(268, 268, 1, 0, 0, 0, '2024-02-01 00:17:49', '2024-02-01 00:17:54'),
(269, 269, 1, 0, 0, 0, '2024-02-01 00:37:07', '2024-02-01 00:37:12'),
(270, 270, 0, 0, 0, 0, '2024-02-01 00:49:44', '2024-02-01 05:38:19'),
(271, 271, 1, 0, 0, 0, '2024-02-01 00:51:41', '2024-02-01 00:51:48'),
(272, 272, 1, 0, 0, 0, '2024-02-01 00:59:46', '2024-02-01 00:59:51'),
(273, 273, 0, 0, 0, 0, '2024-02-01 02:35:55', '2024-02-01 02:56:31'),
(274, 274, 1, 0, 0, 0, '2024-02-01 02:51:16', '2024-02-01 02:51:21'),
(275, 275, 1, 0, 0, 0, '2024-02-01 04:36:31', '2024-02-01 04:36:36'),
(276, 276, 1, 0, 0, 0, '2024-02-01 04:55:45', '2024-02-01 04:55:50'),
(277, 277, 0, 0, 0, 0, '2024-02-01 05:04:22', '2024-02-01 05:10:18'),
(278, 278, 0, 0, 0, 0, '2024-02-01 05:07:05', '2024-02-01 05:08:01'),
(279, 279, 1, 0, 0, 0, '2024-02-01 05:25:33', '2024-02-01 05:25:38'),
(280, 280, 1, 0, 0, 0, '2024-02-01 05:26:13', '2024-02-01 05:26:19'),
(281, 281, 0, 0, 0, 0, '2024-02-01 05:39:55', '2024-02-01 06:29:50'),
(282, 282, 1, 0, 0, 0, '2024-02-01 05:49:09', '2024-02-01 05:49:16'),
(283, 283, 1, 0, 0, 0, '2024-02-01 05:53:22', '2024-02-01 05:53:28'),
(284, 284, 1, 0, 0, 0, '2024-02-01 06:12:58', '2024-02-01 06:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('000a22d6e30da3dbabc4c113735123fcb2103f5025dff991b701d0fd0b0e32ceb1a24cf0d2c26593', 48, 1, 'andrew', '[]', 1, '2023-10-26 07:12:51', '2023-10-26 07:12:51', '2024-10-26 12:42:51'),
('01054a3f68fcb5f67438e7921a89303ec6f048eccc77f48edef6460108998b5045a126a449fb2859', 72, 1, 'andrew', '[]', 1, '2024-01-11 00:59:17', '2024-01-11 00:59:17', '2025-01-11 06:29:17'),
('01166889370c4d6e43be71850e382297a8c52d8175598475ade6053f1f47e40f7d4f75be67c812ae', 108, 1, 'andrew', '[]', 1, '2024-01-10 00:00:42', '2024-01-10 00:00:42', '2025-01-10 05:30:42'),
('0142141de79e11489d022506bbbf2bdf7fb2dfb09e59f9390498045e46edf69db1d59a54cfb16c78', 188, 1, 'andrew', '[]', 1, '2024-01-22 01:33:15', '2024-01-22 01:33:15', '2025-01-22 07:03:15'),
('016e53c6fcb414a4d8f511400ef079b98e0c7a7436191a022236db631af078e2baeb8f6e346c2d8e', 44, 1, 'andrew', '[]', 1, '2023-10-26 06:17:19', '2023-10-26 06:17:19', '2024-10-26 11:47:19'),
('02728484349f1ee1506a7aa5129ad6bac00d0a9f0786fe0b2126b046c0e1d641a649db4667a435cf', 187, 1, 'andrew', '[]', 1, '2024-01-19 07:26:35', '2024-01-19 07:26:35', '2025-01-19 12:56:35'),
('02eb68785b0c216346fcd2ed8fa8acfb4c76b3e9995aee7c0bf5cab0ca62339b08976c164eb48ef1', 249, 1, 'andrew', '[]', 1, '2024-01-31 01:17:32', '2024-01-31 01:17:32', '2025-01-31 06:47:32'),
('03141c4435ad504fde71d37cc91c604945a821299b4953c84e6c827a49eb49acbd31e0d632bf5a71', 54, 1, 'andrew', '[]', 1, '2023-10-27 01:09:41', '2023-10-27 01:09:41', '2024-10-27 06:39:41'),
('03e0b37f23b9a9269b72c1a67c2cbb097ee43360bd717897d252032b6f110a00543425fc16c4ec0d', 93, 1, 'andrew', '[]', 1, '2024-01-04 08:44:14', '2024-01-04 08:44:14', '2025-01-04 14:14:14'),
('0428514effe6bdbbbed8adcc75018e6a1e5a8ed60abf7de143260b4363eb5cab5f5dd4f7ad9f8a2e', 16, 1, 'andrew', '[]', 1, '2023-10-31 04:00:51', '2023-10-31 04:00:51', '2024-10-31 09:30:51'),
('045f53c59052542c2cf627d8da87c88e87cc2c6a3a5091f5707a6f01099b4aab6cf49d4a31883d43', 82, 1, 'andrew', '[]', 1, '2023-12-21 03:34:09', '2023-12-21 03:34:09', '2024-12-21 09:04:09'),
('048751623929334559c871973232f22adf9ffd14925669328b8c0ad0bf5a7973989cab94c3af7bb2', 87, 1, 'andrew', '[]', 1, '2023-12-29 06:05:38', '2023-12-29 06:05:38', '2024-12-29 11:35:38'),
('0495ae49d660bc2f81a89235d66b09679561206221079005d48464ff3e7064a5771116a9d626973c', 23, 1, 'andrew', '[]', 1, '2023-10-24 05:04:47', '2023-10-24 05:04:47', '2024-10-24 10:34:47'),
('0568d0652828d00e8b03b4a4b5c44992d8b695b180ffbb7e8336b43e9abbfee29cc6df89d6e350b7', 72, 1, 'andrew', '[]', 1, '2024-01-19 07:20:15', '2024-01-19 07:20:15', '2025-01-19 12:50:15'),
('06493e0a0684ef42f2bda7f947dd776b45be7c7c0305d196fada4ff40654d364b51fa439a3b1c9dd', 193, 1, 'andrew', '[]', 0, '2024-01-19 10:30:34', '2024-01-19 10:30:34', '2025-01-19 16:00:34'),
('068ebd7b3dd279d20b7c2a57310e8f4ba0d32f165e810230a8a6ac49c94b7dd1a3bb3e89052cee5b', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:08:37', '2023-10-24 01:08:37', '2024-10-24 06:38:37'),
('06fc95e142a0f2c5e9f9e9821735ed135145e627f8c5f2a03b10b238094eea0c4e8a7e0197d993ed', 206, 1, 'andrew', '[]', 1, '2024-01-22 07:11:13', '2024-01-22 07:11:13', '2025-01-22 12:41:13'),
('06fc967d6c081443050d80cedc4f59b38c7d606cf79b2ae2bad0722e3449a5c108b4747dd8ff16b6', 16, 1, 'andrew', '[]', 1, '2023-10-23 07:52:40', '2023-10-23 07:52:40', '2024-10-23 13:22:40'),
('07005a05255827061e53486ff8c9e75e1760add9ee9a183c402d5b092b9ce40d6b501273a97a5d98', 79, 1, 'andrew', '[]', 1, '2023-12-20 02:56:29', '2023-12-20 02:56:29', '2024-12-20 08:26:29'),
('0700f754cbde7d274074f2113523d90c2fea54421b7ec5f5a62306431ba2929df97d089d08839369', 148, 1, 'andrew', '[]', 0, '2024-01-17 01:50:51', '2024-01-17 01:50:51', '2025-01-17 07:20:51'),
('075d3a1e1295378202eb34c01183d9b5811190e590bb83e688264cc3afd23101bf5759221b3c05a4', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:05:10', '2023-10-25 06:05:10', '2024-10-25 11:35:10'),
('07a009a88b2e8dcd3779f8e4daba14318d3fccd0cfa289513b017f4c3416d4e857d77e1414427ef0', 234, 1, 'andrew', '[]', 1, '2024-01-31 00:04:11', '2024-01-31 00:04:11', '2025-01-31 05:34:11'),
('07e4180892fee6d1006ae5db4188a8037d309fd9e8977073717fc384f1bb28fa40bd48cdb2b1992f', 16, 1, 'andrew', '[]', 1, '2023-10-26 08:41:01', '2023-10-26 08:41:01', '2024-10-26 14:11:01'),
('07ef68f71a3ff79a98d5ed85b62a34f33af0bf60b0dc0e2d58e18648ed5aea156ad6768c8721ce1c', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:17:30', '2023-10-27 02:17:30', '2024-10-27 07:47:30'),
('09a407519074edca2bdd6d575ab09514b7345f7ca3d969dc32ac5e960c04f26b8e3bd2a1a12ab604', 206, 1, 'andrew', '[]', 1, '2024-01-22 07:10:07', '2024-01-22 07:10:07', '2025-01-22 12:40:07'),
('09ca333116c7ef9cf1fb19d4cac001b775c7a3b94a46c1b9d37a8caafd2acb4201c3b8401913952c', 72, 1, 'andrew', '[]', 1, '2024-01-17 08:39:06', '2024-01-17 08:39:06', '2025-01-17 14:09:06'),
('0a02983eb7c020db9df83e4ba6a0bb79959b072d9c98137464591650ff9339460d99f3588d159e6e', 16, 1, 'andrew', '[]', 1, '2023-10-26 04:57:57', '2023-10-26 04:57:57', '2024-10-26 10:27:57'),
('0a0a0a631f410843c298ee2f2d648dff3e9172f00af9902b2d0e76585bb980828b87444d267462de', 113, 1, 'andrew', '[]', 1, '2024-01-10 02:27:24', '2024-01-10 02:27:24', '2025-01-10 07:57:24'),
('0a4bcac7b9c19d053edcded8f4b3d341d3f9f10c33dfb2151a93b45b058e28b7f57a8b735435f95f', 83, 1, 'andrew', '[]', 1, '2024-01-03 06:22:03', '2024-01-03 06:22:03', '2025-01-03 11:52:03'),
('0ab17cb6d3d932af8e61ffc308cd810dfaa3ec2c5345b397a3ef8d0a9b94a97a9e307c4aabe32371', 16, 1, 'andrew', '[]', 1, '2023-10-30 00:34:28', '2023-10-30 00:34:28', '2024-10-30 06:04:28'),
('0abe2bd23e8b2d4f75cf4d5e9092321ab485a1ef9747622e99ececb5476cb73f0bf0a00df9385bff', 182, 1, 'andrew', '[]', 1, '2024-01-19 06:28:25', '2024-01-19 06:28:25', '2025-01-19 11:58:25'),
('0ac629d2f7c00437869ada872335728ec4e492adc8fd49af7b4042ac014709e627b0c2e85409c58e', 83, 1, 'andrew', '[]', 1, '2024-01-04 00:18:09', '2024-01-04 00:18:09', '2025-01-04 05:48:09'),
('0b94e70c01bb8a039bd95d94c4ca63c628e4cadbf0cf32b145a78f13af369b180327f691f32767f2', 15, 1, 'andrew', '[]', 1, '2023-10-23 06:45:08', '2023-10-23 06:45:08', '2024-10-23 12:15:08'),
('0bbcce96fa8fa0a5256e6fee922e4f65db49874db43fdd5ca056b521e4970090c58a0cb5c667a23f', 89, 1, 'andrew', '[]', 1, '2024-01-07 23:57:02', '2024-01-07 23:57:02', '2025-01-08 05:27:02'),
('0d07eabb1d40b29911cd055fdf74a913bee93839243a5b20a6e4f465afc9f8eb610ed426e9494b37', 81, 1, 'andrew', '[]', 1, '2023-12-21 03:02:34', '2023-12-21 03:02:34', '2024-12-21 08:32:34'),
('0d0e64f078c670659d20c9f36cafcc92ccc95a0a8cfcd1c86c754fb7154ce18c1479bb483d7b22cd', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:21:18', '2023-10-27 02:21:18', '2024-10-27 07:51:18'),
('0d9dd2f577feb1a224e151120f75b1062d3b2e747e7999ccd94407b2fcdad1a75752cf70576348af', 72, 1, 'andrew', '[]', 1, '2024-01-18 05:35:12', '2024-01-18 05:35:12', '2025-01-18 11:05:12'),
('0ddcac668f9221e8a1a56dee600577077c908cef2e661ed33ef3fcba0e23f5ad80786c7c4f7bafa1', 135, 1, 'andrew', '[]', 1, '2024-01-16 04:59:52', '2024-01-16 04:59:52', '2025-01-16 10:29:52'),
('0e2102d76bfd124cc17a0e015e33bb8f75be425f31fa4f9dc8d6da2b11ff7bc3fc2f68aaf56175d9', 72, 1, 'andrew', '[]', 1, '2024-01-19 09:06:13', '2024-01-19 09:06:13', '2025-01-19 14:36:13'),
('0e6b04adc69218d0a0b97788823ac7652b4634bc960ebc779978bae6368c7941e13aeedebe49c199', 146, 1, 'andrew', '[]', 1, '2024-01-17 01:32:19', '2024-01-17 01:32:19', '2025-01-17 07:02:19'),
('0e8cea89294ffb91a7fd01d491a19a9b42861d97d493795a89a2a589b4304fb98434309039447119', 196, 1, 'andrew', '[]', 1, '2024-01-20 01:49:24', '2024-01-20 01:49:24', '2025-01-20 07:19:24'),
('0ebf77f0b478b7bcde36fa4fd44c87ecbdd3d9dacdf1ee2d460d2bdd09ecb5f0e09f214d1c14224c', 90, 1, 'andrew', '[]', 1, '2024-01-09 07:57:09', '2024-01-09 07:57:09', '2025-01-09 13:27:09'),
('0ed2961cccf57421a2c6bffc5f852580274683d62f476c98cf2b6b34a2c53da2a7c6b843c625727e', 173, 1, 'andrew', '[]', 1, '2024-01-18 07:50:00', '2024-01-18 07:50:00', '2025-01-18 13:20:00'),
('0ef375232508a0a8076a58e0c73c015a0e580f273ca50aeaa89532c8f1cb91d2b29999c5d84ec293', 33, 1, 'andrew', '[]', 0, '2023-10-26 23:52:47', '2023-10-26 23:52:47', '2024-10-27 05:22:47'),
('0f41db463bf58e440651fbd1b8aeabd1df969c4c3994400cb931855fca4708bff7df9875d947a0c5', 123, 1, 'andrew', '[]', 1, '2024-01-11 08:40:53', '2024-01-11 08:40:53', '2025-01-11 14:10:53'),
('1028e03121cdc22d1a68143d29871bf07bfb3a86f58fbda821cde005a451ec14c9219cb86c4eceae', 72, 1, 'andrew', '[]', 1, '2024-01-17 05:47:00', '2024-01-17 05:47:00', '2025-01-17 11:17:00'),
('10298dd57dbd98bad2809a9f9b291599ad6af2fd33955d169e44f7070fbb41d04306c27c12d906b4', 10, 1, 'andrew', '[]', 0, '2022-01-25 11:01:18', '2022-01-25 11:01:18', '2023-01-25 16:31:18'),
('116663e1169113a1db65d48b44452845f57a1c00090f81bb571731e18c451f2199e2b04ea2ced656', 193, 1, 'andrew', '[]', 1, '2024-01-19 09:33:28', '2024-01-19 09:33:28', '2025-01-19 15:03:28'),
('12156acb5dbe7be6b0d9f39f55c14f5e0fe95f243cd733aadf2c5b468aa6f80add785274901735d3', 229, 1, 'andrew', '[]', 1, '2024-01-25 01:29:09', '2024-01-25 01:29:09', '2025-01-25 06:59:09'),
('12c7e83b6df0b428b559ddd9e73f78cc9b651600400611bbbd24cd82ab69f240ba072f551c581358', 189, 1, 'andrew', '[]', 1, '2024-01-19 09:36:54', '2024-01-19 09:36:54', '2025-01-19 15:06:54'),
('137c2d343633caf958a432452e0fdd192454740f6beaca9ab5fe5cdc117a7c79df52f46269fc33d4', 206, 1, 'andrew', '[]', 1, '2024-01-22 07:04:12', '2024-01-22 07:04:12', '2025-01-22 12:34:12'),
('1382a2e0ce95f4e953b295a4774a2d2f7169706cf6c870c15a97b9b38fa65d97f702f4fdddec4c57', 231, 1, 'andrew', '[]', 1, '2024-01-29 07:35:52', '2024-01-29 07:35:52', '2025-01-29 13:05:52'),
('1389936d6dc22bb1527f61f9f8612c80b44756b2224aef15315df8e8d58dbdeee43df92b0ae89437', 89, 1, 'andrew', '[]', 1, '2024-01-18 05:34:19', '2024-01-18 05:34:19', '2025-01-18 11:04:19'),
('13e53242f2c2934db1bff99f595ea60c3c953ce03538694246c8f1968ef8605a52a8051c5e150e4c', 78, 1, 'andrew', '[]', 1, '2023-12-19 02:57:19', '2023-12-19 02:57:19', '2024-12-19 08:27:19'),
('14a0559024776e404b07a6559e1285063eb477649c74f972c0311da3d066bd02146dceb14cd22bda', 89, 1, 'andrew', '[]', 1, '2024-01-12 04:33:57', '2024-01-12 04:33:57', '2025-01-12 10:03:57'),
('14b5b4e9a8b7d3230ddfb0d5959039133062aaa01a8a9da021cbabe00956f19dba54a183ac9294ad', 16, 1, 'andrew', '[]', 1, '2024-01-19 07:45:16', '2024-01-19 07:45:16', '2025-01-19 13:15:16'),
('14e0c954062da41589c285f75d505e1c2392e965c0cd8bf56c9e7ad5117761118280887bd10eda15', 26, 1, 'andrew', '[]', 1, '2023-10-24 08:54:16', '2023-10-24 08:54:16', '2024-10-24 14:24:16'),
('14e6e579d7e6b75e46ff8ba773229533774aa1677d6da724e0ebf682a46110851209a025d69a6e89', 262, 1, 'andrew', '[]', 1, '2024-02-01 04:33:34', '2024-02-01 04:33:34', '2025-02-01 10:03:34'),
('1515abc2dcabbfcbf513ccc2392284f1c92db0b041114f21bd0bb10fe32d41d78cd63c5c17a90eb7', 6, 1, 'andrew', '[]', 1, '2021-11-16 12:47:03', '2021-11-16 12:47:03', '2022-11-16 18:17:03'),
('1556b543ba1bf8416f32371229547ddfece96762fb3fdf3e300ef506500984bc53b308d1f987cbf8', 224, 1, 'andrew', '[]', 0, '2024-01-22 23:54:10', '2024-01-22 23:54:10', '2025-01-23 05:24:10'),
('1582d04b512d8e771b807b5b356c4ca14d3db2ae77c1c2af61ba65015d4ba87b5aecff97167b941b', 273, 1, 'andrew', '[]', 0, '2024-02-01 02:35:55', '2024-02-01 02:35:55', '2025-02-01 08:05:55'),
('15eb66351e9d80e47b45f15647e575c1533e1e3a32eac1d260e6dca5b7cefed26962428af30f008d', 211, 1, 'andrew', '[]', 0, '2024-01-22 07:23:11', '2024-01-22 07:23:11', '2025-01-22 12:53:11'),
('15f4704b5d73dd4e3dd8a85b1ead13f12c5f907c2ca23c2cd20ab2f296e340d8c0d64a3a69a6f776', 216, 1, 'andrew', '[]', 1, '2024-01-22 09:11:21', '2024-01-22 09:11:21', '2025-01-22 14:41:21'),
('16072b19ff752bb6d6f3645ad73d1d88b9d55bb5255d67cff84d848200f6a0141d1dd852adcd9e25', 228, 1, 'andrew', '[]', 1, '2024-01-25 01:49:34', '2024-01-25 01:49:34', '2025-01-25 07:19:34'),
('16a6dd5739431c495ec3f75796c1921b7bab7cced170c41bd270d32c1bd3e28dd14702e21d3b01a2', 89, 1, 'andrew', '[]', 1, '2024-01-10 05:51:55', '2024-01-10 05:51:55', '2025-01-10 11:21:55'),
('16b70a40be4729f8772554e4be556079a6d7ef7f87fdc5393336db4e8efbfcfe327ee3fc3274af40', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:54:52', '2023-10-27 02:54:52', '2024-10-27 08:24:52'),
('171213e9c835813c09559ed32a9901e605609bd670ec055ccfa6ab6d77b629c80643fc3b878a9810', 194, 1, 'andrew', '[]', 0, '2024-01-19 10:45:44', '2024-01-19 10:45:44', '2025-01-19 16:15:44'),
('1749a43d29753d5231455725d8422eafb7eba3d4a3d337ad5fe851dc2642ea79e3cab95003f8b621', 31, 1, 'andrew', '[]', 1, '2023-10-24 10:37:27', '2023-10-24 10:37:27', '2024-10-24 16:07:27'),
('175cfd9b12e2f41e80d9e749e1acd1cd4bf15be8637dcf024bc5eb3e8f431c6f41d49b6d2a51cde6', 94, 1, 'andrew', '[]', 1, '2024-01-04 23:09:11', '2024-01-04 23:09:11', '2025-01-05 04:39:11'),
('17b51b27c833d5a7f5e7d1df1677017baf7f0d3de1d5070c45acd448cef5a1a01f9d5020d1d35f16', 106, 1, 'andrew', '[]', 1, '2024-01-09 09:46:27', '2024-01-09 09:46:27', '2025-01-09 15:16:27'),
('185a522072e909b6bedcf15ae6864b44437b853f9b9b9d4b167693bfd0fce7c138c6a4f32251bc77', 118, 1, 'andrew', '[]', 0, '2024-01-10 08:41:31', '2024-01-10 08:41:31', '2025-01-10 14:11:31'),
('188580187d4816b2c9150eb4cb051ee20b02776630351b0388f4646914ae7ebf9d51c28acf2d001e', 180, 1, 'andrew', '[]', 1, '2024-01-19 04:01:07', '2024-01-19 04:01:07', '2025-01-19 09:31:07'),
('18b3b814e0657452e370dcba404a35c2068ef2326e649cca0cfa587ce937edd8beef2314ab495a50', 100, 1, 'andrew', '[]', 1, '2024-01-08 02:40:34', '2024-01-08 02:40:34', '2025-01-08 08:10:34'),
('18d7ad438a8cd836e3a39340fc556b2e9ad0d856aba226c89cd93fd368549dc9b31efce0bc3960f7', 50, 1, 'andrew', '[]', 1, '2023-10-26 07:18:47', '2023-10-26 07:18:47', '2024-10-26 12:48:47'),
('19a0c41329f6fbf08e8da2a04e5e24c4b9903a35a496a8ae273d06c8c2c684050afc2f50066d183a', 239, 1, 'andrew', '[]', 0, '2024-01-30 08:57:17', '2024-01-30 08:57:17', '2025-01-30 14:27:17'),
('19c8bbd22e49d506f74acec91e8e8293facd08061881fe16f95bb0d46ece58e1582e6a1810528db6', 89, 1, 'andrew', '[]', 1, '2024-01-11 23:55:36', '2024-01-11 23:55:36', '2025-01-12 05:25:36'),
('1a14d746fce50aabc3f3bd98b1d074abdc89e0c9cc3958e5f2a0f00c09e61041c906a66eedee03c1', 43, 1, 'andrew', '[]', 1, '2023-10-26 05:52:18', '2023-10-26 05:52:18', '2024-10-26 11:22:18'),
('1a1a7553e48d1b5bf845db5dd54691a13043fdbcad389448fd1d486f0f9cddf6d3fd8a9798c731b4', 129, 1, 'andrew', '[]', 1, '2024-01-12 03:13:31', '2024-01-12 03:13:31', '2025-01-12 08:43:31'),
('1a73401762aa33c880dbaa4fc86c3fd8ffcf4e4f096f9db78630ff845be682a8274d8480a73a540d', 233, 1, 'andrew', '[]', 0, '2024-01-29 07:53:48', '2024-01-29 07:53:48', '2025-01-29 13:23:48'),
('1a99e1ed5f8c1cb36cc28f4f0f499e552b7af236bed0e81d53aa60173d4d152ef9802dd8616e1b90', 277, 1, 'andrew', '[]', 1, '2024-02-01 05:04:22', '2024-02-01 05:04:22', '2025-02-01 10:34:22'),
('1b185dfb11f923b457b3433fce70282d9ab464cdc4f15d8d56d2bdd3fc43c3e92f8a813b9ee2269c', 40, 1, 'andrew', '[]', 1, '2023-10-27 02:52:09', '2023-10-27 02:52:09', '2024-10-27 08:22:09'),
('1ba3bd8ade429337caedeca9f47e8457b63c46d51f7a270d736f48a990486d8847543354af70c54c', 183, 1, 'andrew', '[]', 1, '2024-01-19 06:32:04', '2024-01-19 06:32:04', '2025-01-19 12:02:04'),
('1bbc44cc5a558bbddfad91d4e79772474d682cf27bf58a9a633e28a873aa9e05ed90519ebd204d00', 83, 1, 'andrew', '[]', 1, '2024-01-04 01:27:03', '2024-01-04 01:27:03', '2025-01-04 06:57:03'),
('1bcf2f66d609b92ea2e5033110537942d6e00a7226f89d927b2d861abfbaf0e9ae99bb3ec3321718', 19, 1, 'andrew', '[]', 1, '2023-10-23 09:44:46', '2023-10-23 09:44:46', '2024-10-23 15:14:46'),
('1c2ff89f65e6bd873654f8494bcfe9a1cd536d398aa395fe5cd2a8bf7ebae64db25d9d3cded53e4a', 33, 1, 'andrew', '[]', 1, '2023-10-25 01:06:38', '2023-10-25 01:06:38', '2024-10-25 06:36:38'),
('1c878c437b4bd65ce8349831a3e777e0f00130c47a9cec208df2e800266df2a110adc03d9ec314c8', 21, 1, 'andrew', '[]', 1, '2023-10-23 10:30:59', '2023-10-23 10:30:59', '2024-10-23 16:00:59'),
('1e10bb4f4f08eb5d4f006ea2d28c9c28dc2d45966f78d3acb8450742d3aa2409a0287a0e33bec55f', 234, 1, 'andrew', '[]', 1, '2024-01-30 08:29:27', '2024-01-30 08:29:27', '2025-01-30 13:59:27'),
('1e6613202324299c4e2dd4b7ac6a5c69dcacb11587c650bdb5a61c036a2df8227f5c660d3c5b18fa', 16, 1, 'andrew', '[]', 1, '2023-10-24 04:49:44', '2023-10-24 04:49:44', '2024-10-24 10:19:44'),
('1ea81b8e662511b15ab46eeba83c48f1165fc789d756a29258c4e87e8f8ef948ea11eea2a2d7f474', 89, 1, 'andrew', '[]', 1, '2024-01-05 00:08:08', '2024-01-05 00:08:08', '2025-01-05 05:38:08'),
('1ea9fa465b6720cf838d1221c9f72715450fae7a003fdc7877c96246a79da572eb9620e1b644fc61', 155, 1, 'andrew', '[]', 1, '2024-01-18 00:49:35', '2024-01-18 00:49:35', '2025-01-18 06:19:35'),
('1eca1fbc3acf34b9c9c0f9dda5cdbae8147a999e282f095ca5d17ec138667ff6231b486af1dee567', 17, 1, 'andrew', '[]', 1, '2023-10-23 08:26:16', '2023-10-23 08:26:16', '2024-10-23 13:56:16'),
('1ee8a3625b2380b1bd1ead28cc2a3afde1ad330801c28af4d79bffa98adc61be3f8f7f78bdab549e', 89, 1, 'andrew', '[]', 1, '2024-01-05 06:30:17', '2024-01-05 06:30:17', '2025-01-05 12:00:17'),
('1f480252439b7ac465020752af959b7e4bcf3c2b88f6044c9f903507416421a619fdbf28d309c09a', 278, 1, 'andrew', '[]', 0, '2024-02-01 05:07:06', '2024-02-01 05:07:06', '2025-02-01 10:37:06'),
('1f71517ef015e34974ecf33a60a57541e044695a1d290a149a07ecf688bba36f9416f5b09ca4c01a', 137, 1, 'andrew', '[]', 1, '2024-01-16 05:52:39', '2024-01-16 05:52:39', '2025-01-16 11:22:39'),
('2049ba0166e5ac3f49e93bbe7c37e119cb299dcc5dbe4301cf20dbb85536e470c11151f67dfb7633', 139, 1, 'andrew', '[]', 1, '2024-01-16 23:32:36', '2024-01-16 23:32:36', '2025-01-17 05:02:36'),
('20f0cb1a211321c35eb1dac7daac84062e2377090c88b42376fb4a8e1f772d583c09078ad37741e6', 262, 1, 'andrew', '[]', 1, '2024-01-31 08:11:52', '2024-01-31 08:11:52', '2025-01-31 13:41:52'),
('20f4ba0a2ed36953b13eda99027d871e72e80a93e9699987122b6a9f98db180202655e1dec785363', 228, 1, 'andrew', '[]', 1, '2024-01-24 02:23:32', '2024-01-24 02:23:32', '2025-01-24 07:53:32'),
('2149c200096eb963187d1da87e9c19aafc0577d65d78d4cb0404fde6ab7b3a97adc651916e3434bd', 72, 1, 'andrew', '[]', 1, '2024-01-19 05:40:31', '2024-01-19 05:40:31', '2025-01-19 11:10:31'),
('218af491b4e8f44f21856f9199448d16c7eb9811fc167d1c198e633abe9e4f8291dd4a89e81369c4', 74, 1, 'andrew', '[]', 0, '2023-10-27 10:12:49', '2023-10-27 10:12:49', '2024-10-27 15:42:49'),
('219ee2c3c5ab6ed2662423cf840822736a2ac0a200c9c9402d51ecbac20b9bb68b669ed3710b9dbb', 185, 1, 'andrew', '[]', 1, '2024-01-19 06:57:50', '2024-01-19 06:57:50', '2025-01-19 12:27:50'),
('21c6087c8adf160e4dfdea8a6a8a398b7636a013ba431c41edbb5fbff291e0ed36b2990de5eed1e6', 55, 1, 'andrew', '[]', 1, '2023-10-27 01:47:24', '2023-10-27 01:47:24', '2024-10-27 07:17:24'),
('227880e2005ba662f30f94cb275c8d5873e9f00380906f254122f3c1331a85ccef7d3e635bb82abc', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:28:37', '2023-10-27 02:28:37', '2024-10-27 07:58:37'),
('235063e35ea6e3f04fee42e2f7cbb00eca769894128971da44cf3d749a412237b71336cbf2565cf8', 16, 1, 'andrew', '[]', 1, '2023-10-23 23:11:38', '2023-10-23 23:11:38', '2024-10-24 04:41:38'),
('239895d247d06860bd4ae7fe9665e3a658824ca9f36935bcb0d2b02615094d8f230a8195b8f320de', 238, 1, 'andrew', '[]', 0, '2024-01-30 07:50:07', '2024-01-30 07:50:07', '2025-01-30 13:20:07'),
('23d4b51891dd8f525195d849ad2624257faa9e3bc3ed712a3c29c5c4e79ead7dc40225b60f52c512', 90, 1, 'andrew', '[]', 1, '2024-01-11 04:20:53', '2024-01-11 04:20:53', '2025-01-11 09:50:53'),
('24bb6618f6cc57f9275765174bcf5bd3c05519144272c6db0d1717d867067aa8a6e40e8c411ec416', 14, 1, 'andrew', '[]', 1, '2023-10-23 23:09:03', '2023-10-23 23:09:03', '2024-10-24 04:39:03'),
('24d0f85e2568b1af30adba6a1419c32520b02c5fda1e3f617d8d2642adfb81e9a4194e9df029d9e8', 210, 1, 'andrew', '[]', 1, '2024-01-22 07:23:11', '2024-01-22 07:23:11', '2025-01-22 12:53:11'),
('2549c0a926c9f9cf0b36e2652928a46cd10f9f4e079f6d53261ba078c57b5f6f84b8dfa23ab81449', 250, 1, 'andrew', '[]', 1, '2024-01-31 01:24:06', '2024-01-31 01:24:06', '2025-01-31 06:54:06'),
('25915d4bf6e8923ebc87a3e567efb3ddc1a63055a6b275ac9ccf6f9edd8dadf45d34c958f9e4b17d', 14, 1, 'andrew', '[]', 1, '2023-10-23 22:59:50', '2023-10-23 22:59:50', '2024-10-24 04:29:50'),
('25cc3299dfec66ddf61b7f211e8dfd07e04f00ddb4b951a68254a5314384b22898aa1c8d6717dc1a', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:37:53', '2023-10-27 02:37:53', '2024-10-27 08:07:53'),
('273c245bd2d482ae56b9a1099b58babfda5f7b85e4bec303455f2b77120b0cef479cfe4079f710d7', 7, 1, 'andrew', '[]', 0, '2021-11-16 13:03:09', '2021-11-16 13:03:09', '2022-11-16 18:33:09'),
('273d766412887222f97cf8e1698d325d6562fd02247d65cc4c617db832fa70e6dfcca4b21af9fda6', 184, 1, 'andrew', '[]', 1, '2024-01-19 06:35:34', '2024-01-19 06:35:34', '2025-01-19 12:05:34'),
('279d5b7000c58664f6ba9cfa9dcab9c25545be7566ca6f46f0a5d81a11bafe4086448aed8ecfadeb', 112, 1, 'andrew', '[]', 1, '2024-01-10 01:35:36', '2024-01-10 01:35:36', '2025-01-10 07:05:36'),
('27aceb4cf38016084f621a345f769574b742c327aea62b6c8710d50e4c395a133934d4738a8761c2', 89, 1, 'andrew', '[]', 1, '2024-01-11 23:27:57', '2024-01-11 23:27:57', '2025-01-12 04:57:57'),
('27ced7891281619b3944d50128615020877ba05db1b5d72d73719dc1eda2fcd62f5f5dc77a0c7d61', 178, 1, 'andrew', '[]', 0, '2024-01-19 04:11:53', '2024-01-19 04:11:53', '2025-01-19 09:41:53'),
('2836e21b78d4fc13cf45c962cdba23eb0f33a601b259fd138aeb6389757ca0a6218a31e69fbade7c', 188, 1, 'andrew', '[]', 1, '2024-01-24 00:41:18', '2024-01-24 00:41:18', '2025-01-24 06:11:18'),
('2894c45cfeb20deb046a5ca7e84ef61794df6fc39b7f0301daff01fa3b83fe0c791e105697e87e70', 188, 1, 'andrew', '[]', 1, '2024-01-23 08:34:55', '2024-01-23 08:34:55', '2025-01-23 14:04:55'),
('2a4903b2cb0d715ff8249b6e56dae4a1b350588485d15820aea2d75a22fea753247d14a17c99356f', 14, 1, 'andrew', '[]', 1, '2023-10-24 05:30:22', '2023-10-24 05:30:22', '2024-10-24 11:00:22'),
('2a7886e7cd42e55f04d4b2a6c9fa5a75553bb25174ecade105ae39208d54ea10c659bbd8d18713d0', 172, 1, 'andrew', '[]', 1, '2024-01-18 06:30:57', '2024-01-18 06:30:57', '2025-01-18 12:00:57'),
('2a9d7154676d51e9258edba84e38f9e176d3a4b5d29bdeed3c1dd6ce4cf78743a9595ab6e74f33e4', 8, 1, 'andrew', '[]', 0, '2021-11-17 05:58:55', '2021-11-17 05:58:55', '2022-11-17 11:28:55'),
('2b84e78bcfe2559255afe60f095e749da318c696223cc786e41abe468a1c0ed689e5b54bb8606070', 34, 1, 'andrew', '[]', 1, '2023-10-25 01:29:37', '2023-10-25 01:29:37', '2024-10-25 06:59:37'),
('2c7ba83e9f1e40ed8a24534a07ea019e49d48947fe0acf5765834145b35d6e16bf70f5fbce273fd5', 71, 1, 'andrew', '[]', 1, '2023-10-27 08:46:48', '2023-10-27 08:46:48', '2024-10-27 14:16:48'),
('2c8891050ac062a99a979adf21321afa99180245bfde45771493123c2451be61f8f5254557865858', 72, 1, 'andrew', '[]', 1, '2024-01-18 05:07:20', '2024-01-18 05:07:20', '2025-01-18 10:37:20'),
('2d190e8811229c47c83efc25ef6424eeed454500ccc7d1d897858cbcf27ed26a781700557227b8d2', 40, 1, 'andrew', '[]', 1, '2023-10-27 01:49:57', '2023-10-27 01:49:57', '2024-10-27 07:19:57'),
('2d33f3470e073eccc97f23b46c7d8281f6daf161ac9a748fa85f948a19fd83813655bd06b6e0c932', 212, 1, 'andrew', '[]', 0, '2024-01-22 07:28:28', '2024-01-22 07:28:28', '2025-01-22 12:58:28'),
('2d74c3d2be486c5eca8c453f43cc1abb2c6411e5a5ac5b2bfe4ab7ef283402390d1d0adb0b254244', 53, 1, 'andrew', '[]', 1, '2023-10-26 23:15:45', '2023-10-26 23:15:45', '2024-10-27 04:45:45'),
('2df7a9774db5cd254116f1106452c04e24cdcf7ad9f879c9b79c2b91a2ae70ca1c6e01c80dad4a13', 228, 1, 'andrew', '[]', 1, '2024-01-30 01:38:56', '2024-01-30 01:38:56', '2025-01-30 07:08:56'),
('2f48ea98cf4ad3abf68e5fd6acc44c248a87a3457d4c5695dd9cae57653f3ab0a7af6550eac4317c', 170, 1, 'andrew', '[]', 1, '2024-01-18 05:59:47', '2024-01-18 05:59:47', '2025-01-18 11:29:47'),
('30d313be2057293a2c4eada05afda3861fb40d0825fa6042aace1131220dbb7aac54c79ea33b07a7', 213, 1, 'andrew', '[]', 0, '2024-01-22 07:59:08', '2024-01-22 07:59:08', '2025-01-22 13:29:08'),
('3168d2904c96167f994da3327c9b53acb475f86825e43b217be497c21b1c729e537352bf2251604f', 55, 1, 'andrew', '[]', 0, '2023-10-27 05:27:58', '2023-10-27 05:27:58', '2024-10-27 10:57:58'),
('32935ffb9f67a86b3099cfdd6ca7fd36c55570cc6b2decda7dc6dbd410b8b5ddfba12c4374432b75', 27, 1, 'andrew', '[]', 1, '2023-10-24 09:24:55', '2023-10-24 09:24:55', '2024-10-24 14:54:55'),
('3294247ec4b3d1703751ad3f51a08b3ec3518963a967cb8afa052155715d04525982be8432a2d291', 260, 1, 'andrew', '[]', 0, '2024-01-31 07:23:22', '2024-01-31 07:23:22', '2025-01-31 12:53:22'),
('32d0f5058af26860f075519909f8b58c96d1dfbc727020a803cae995c8cde89a04b3ce5a29482126', 90, 1, 'andrew', '[]', 1, '2024-01-22 22:54:12', '2024-01-22 22:54:12', '2025-01-23 04:24:12'),
('32df4d1468e6391c7d21129ff620b7ca37dcb7a6d841c78c93ebf425bc800dc82718f18f5aac352f', 68, 1, 'andrew', '[]', 0, '2023-10-27 08:24:02', '2023-10-27 08:24:02', '2024-10-27 13:54:02'),
('333657405a1a485215e6d0504e756226e43a84f625b4378b118e126fa45d3038225c08ed5b4b7d95', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:05:32', '2023-10-25 06:05:32', '2024-10-25 11:35:32'),
('339454ab0d308f3df1517e243431e42532e2463bb1c9bd280b51feefad9bed848d09677e89f9bd1a', 72, 1, 'andrew', '[]', 1, '2024-01-18 00:56:39', '2024-01-18 00:56:39', '2025-01-18 06:26:39'),
('33ba16f71959b289e3623423b0db58ce366b089614d5a5224abc7643cca55518709b3917daddee4f', 16, 1, 'andrew', '[]', 1, '2023-10-27 08:31:12', '2023-10-27 08:31:12', '2024-10-27 14:01:12'),
('349cc36d0b70847656a5b4fe5348c33f4bf56244f0498a2a6a7f2939abebcf39c6d654d7725eb845', 23, 1, 'andrew', '[]', 1, '2023-10-24 05:04:09', '2023-10-24 05:04:09', '2024-10-24 10:34:09'),
('34edc39438022a9a89005a14017b43f282a7b0a5df94c7a3c5be9018bf90407ed50cfc2cb8febc4e', 89, 1, 'andrew', '[]', 1, '2024-01-04 02:40:08', '2024-01-04 02:40:08', '2025-01-04 08:10:08'),
('34f61513c50b7923c958f0530000eb1503af2740c4f8f66771be63ae79675dad9a012eac91ac605c', 275, 1, 'andrew', '[]', 1, '2024-02-01 04:36:31', '2024-02-01 04:36:31', '2025-02-01 10:06:31'),
('3533c06f9ba2470b4e324a2fdb6ac6b5bb0195eb9508fc63fc26fabce483122632e52a866bdf670d', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:41:50', '2023-10-27 02:41:50', '2024-10-27 08:11:50'),
('3557ce0ebcc719578f24e0f865c22bfec18b2b908ec2e93443bba2621b18f30348f122593b45be25', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:23:58', '2024-01-04 22:23:58', '2025-01-05 03:53:58'),
('359d70e5ee65e1baab56795f85b05246275d4bb8edc6e6f631c08311c83f5368dbe38be425a68140', 11, 1, 'andrew', '[]', 1, '2022-01-26 23:02:29', '2022-01-26 23:02:29', '2023-01-27 04:32:29'),
('360e7cd5eabd4113ca3ef448e6ea29a2ed813179a87ab0ef966d12280231de20f31ee496fcac6c9a', 174, 1, 'andrew', '[]', 1, '2024-01-18 08:05:01', '2024-01-18 08:05:01', '2025-01-18 13:35:01'),
('366d6e6fcb34779b17c7627c3692a6cf69ac759d5ebb4f1bb3e0580b8a88ca395a6ddcf28368d552', 83, 1, 'andrew', '[]', 1, '2024-01-19 00:31:30', '2024-01-19 00:31:30', '2025-01-19 06:01:30'),
('375c4cd73f7f2c744b9d13a4f7b78d55106ee53303e356c927d35e161286beb0275d668166e4a771', 154, 1, 'andrew', '[]', 1, '2024-01-17 10:25:04', '2024-01-17 10:25:04', '2025-01-17 15:55:04'),
('377fcc2741d656b2c592343779516dc4f9ff60589971091f55d74d86e6e27d3bf8760aa8e3fef77d', 254, 1, 'andrew', '[]', 1, '2024-01-31 04:29:47', '2024-01-31 04:29:47', '2025-01-31 09:59:47'),
('37a97c47f72788d771b89b9f19a34c24ecb0de91552e36af6086a375e910c3f524b84f090856fb6d', 16, 1, 'andrew', '[]', 1, '2023-10-26 00:54:50', '2023-10-26 00:54:50', '2024-10-26 06:24:50'),
('37ec2b0f5915f88723a519878fd3d8d9db4c9e0d9698194d57e44a5b7ccaeed36d83770c1aacef91', 247, 1, 'andrew', '[]', 1, '2024-01-31 00:58:46', '2024-01-31 00:58:46', '2025-01-31 06:28:46'),
('3829329c0c142a6ba1fcf68444d04e190a383a2e35adf67c1ad0a9f4eb0831024d45267d4df63658', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:30:50', '2024-01-12 05:30:50', '2025-01-12 11:00:50'),
('3836eb5263a4ad1f0541fef3a24984bc4dca7162163b32e779609e292714dce6d8557689f1a78bf5', 171, 1, 'andrew', '[]', 1, '2024-01-18 06:12:59', '2024-01-18 06:12:59', '2025-01-18 11:42:59'),
('38cf526660e75cbec7360dae1f7ec2dd109bbbe31f219f371805dda5bd5a7439aebe35b1d81f588d', 283, 1, 'andrew', '[]', 1, '2024-02-01 05:53:23', '2024-02-01 05:53:23', '2025-02-01 11:23:23'),
('38f8c099cdc2717a52f08039f34022c2d235e44d3631bf8036ca042000205811c6047729d2c01ccd', 89, 1, 'andrew', '[]', 1, '2024-01-12 01:00:55', '2024-01-12 01:00:55', '2025-01-12 06:30:55'),
('39084021e4727c8512734291a864bbfbccdb11272a8003c1c8d0ec5a3fa0b47c31c06826bcfae291', 14, 1, 'andrew', '[]', 1, '2023-10-24 08:02:11', '2023-10-24 08:02:11', '2024-10-24 13:32:11'),
('3967ff3af46d23116a41a0c559a1b2d0053fd1d815e25a2b0c64449cf0c3310c2bdb9ee023daa664', 40, 1, 'andrew', '[]', 1, '2023-10-27 05:22:56', '2023-10-27 05:22:56', '2024-10-27 10:52:56'),
('3995be8f8b465d7e6d5b40309780fd910ace30ecafb8e14e204c8ec88b364afe70c3f142307ada0d', 89, 1, 'andrew', '[]', 1, '2024-01-10 01:15:49', '2024-01-10 01:15:49', '2025-01-10 06:45:49'),
('39dea4c0cded3ca05a7acd5db4c0d254c2c1abfb0140fa95157ba16e3b7b414ed425e09a3d6ac209', 16, 1, 'andrew', '[]', 1, '2024-01-19 06:17:09', '2024-01-19 06:17:09', '2025-01-19 11:47:09'),
('3a1884087fa49467c2623737dba1a4ecec0e6460609abe0b91a5b5923dc06a78a37999ff3922321e', 83, 1, 'andrew', '[]', 1, '2024-01-19 06:59:25', '2024-01-19 06:59:25', '2025-01-19 12:29:25'),
('3a69bda74667854d111a11edd145f21f71317c63cf4d0b656a7d7072426d071f3e0c01b239f424d4', 228, 1, 'andrew', '[]', 1, '2024-01-29 03:00:27', '2024-01-29 03:00:27', '2025-01-29 08:30:27'),
('3a87acaa4f58406e120d16cd7b70f2dbded419737872c952ca3f96b0255c69742ac58c1c11414aec', 90, 1, 'andrew', '[]', 1, '2024-01-16 07:20:28', '2024-01-16 07:20:28', '2025-01-16 12:50:28'),
('3b4527041971f9996fa969e873dff652c59315d94ca03d235716ae8c185755fcc4a7809654b2d40e', 14, 1, 'andrew', '[]', 1, '2023-10-23 05:49:02', '2023-10-23 05:49:02', '2024-10-23 11:19:02'),
('3b857e7831c60f1484270d2b7bfd25fea38ff9d113004db27a81370f3fdf2e279408f0b83a20a83a', 281, 1, 'andrew', '[]', 0, '2024-02-01 05:39:55', '2024-02-01 05:39:55', '2025-02-01 11:09:55'),
('3b8872f6db1e9620909609b2606c0fde253338d10e6bca7290f023846b492b808b3017467d1e4a42', 142, 1, 'andrew', '[]', 1, '2024-01-17 00:44:14', '2024-01-17 00:44:14', '2025-01-17 06:14:14'),
('3ba10fcb146ef397a088cbb3fd26c8a8874d87eb647496f4b99bfefe15789d42290b33e5bd4707cb', 14, 1, 'andrew', '[]', 1, '2023-10-24 00:57:16', '2023-10-24 00:57:16', '2024-10-24 06:27:16'),
('3d4fc1ab39dc7038e528252977a7a1be234c0086f1ae56a07c4ed9305bb8304dd67db93f73557223', 72, 1, 'andrew', '[]', 1, '2024-01-05 11:37:26', '2024-01-05 11:37:26', '2025-01-05 17:07:26'),
('3dfe34da8296fe96eea119d4c8b45aafadadb7256655b376652714a8fbd31148eb1862244a343754', 234, 1, 'andrew', '[]', 1, '2024-01-31 07:17:57', '2024-01-31 07:17:57', '2025-01-31 12:47:57'),
('3e0347a02706c126f29dcecb53656829e4b40004fc22738fc42245dde5ada923c1bc4235d548798a', 72, 1, 'andrew', '[]', 1, '2024-01-19 00:56:07', '2024-01-19 00:56:07', '2025-01-19 06:26:07'),
('3e6317d50864cc31b7fdacc835207667398f4c65db83c2510fa09df893583a904a4bf28c077cdc99', 234, 1, 'andrew', '[]', 1, '2024-02-01 01:03:53', '2024-02-01 01:03:53', '2025-02-01 06:33:53'),
('3ef3a0f956916d033f58488d1431eae2a564ab4f4477c2eab69a89c3a6bf61219d9c207db4c40a58', 14, 1, 'andrew', '[]', 1, '2023-10-23 05:40:32', '2023-10-23 05:40:32', '2024-10-23 11:10:32'),
('3f196b537731d6a81a07e3cf1092481df90cf2880d474875409a3827cf39bbb91db4764cba260f8d', 55, 1, 'andrew', '[]', 1, '2023-10-27 03:59:10', '2023-10-27 03:59:10', '2024-10-27 09:29:10'),
('3f4c42054773ff34cd1ee0d78b54732a4d853ed8fa6918c89773aa54c00217de11d8a2625f2bd5cb', 78, 1, 'andrew', '[]', 1, '2023-12-18 06:33:11', '2023-12-18 06:33:11', '2024-12-18 12:03:11'),
('3f765f713183e7e8c98f4b6c383dc44f8b9105dff925869743514f6a78c8db9fe0aecca78f277c50', 89, 1, 'andrew', '[]', 1, '2024-01-12 01:09:17', '2024-01-12 01:09:17', '2025-01-12 06:39:17'),
('3f8f5de3adf367e36378bbe9c28066073cefc5159739f30955976f1c88fc0abdfdf0fed448dfe2d1', 72, 1, 'andrew', '[]', 1, '2023-10-27 09:20:30', '2023-10-27 09:20:30', '2024-10-27 14:50:30'),
('3f9b57cd2b38825c34998a3a2c56b691ffda4a42f8cb46f4eded44703f7b4587cef4881be9b0bd9f', 72, 1, 'andrew', '[]', 1, '2024-01-19 05:09:44', '2024-01-19 05:09:44', '2025-01-19 10:39:44'),
('406e6ece69c4b6746ae6c730bae4591e326abc40ead6658236b47b18ee1847d88aad3d94587326aa', 151, 1, 'andrew', '[]', 1, '2024-01-17 07:22:14', '2024-01-17 07:22:14', '2025-01-17 12:52:14'),
('40b7ab4db4c7db5e715608310ac9d6c93ee6b60d59ce03e27a8c8373c533189a1ee544a9a02b6a58', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:19:22', '2023-10-27 02:19:22', '2024-10-27 07:49:22'),
('415614df4b33476a486d0d0af6a389cbae25ea65751aaeec40417b2881c0f6e7e73d468d2d556a9d', 203, 1, 'andrew', '[]', 1, '2024-01-22 06:06:06', '2024-01-22 06:06:06', '2025-01-22 11:36:06'),
('415ce98a961680ab4728d106a76f6bf8f43bf380ad905d2011005ab30af0aa4edb7ad1e538df12bd', 14, 1, 'andrew', '[]', 1, '2023-10-26 04:50:55', '2023-10-26 04:50:55', '2024-10-26 10:20:55'),
('415d62aba830fd6f415d5baa67bd995a6be84dffe0b5590f9e1d92efa32723cd432d4455410ed6cc', 37, 1, 'andrew', '[]', 1, '2023-10-25 03:13:27', '2023-10-25 03:13:27', '2024-10-25 08:43:27'),
('41766f7175d993ced8024098d36b692b0d7d8e6add0cd014e70aabe9e1eb5b831637d7af1f73bb62', 188, 1, 'andrew', '[]', 1, '2024-01-19 09:04:14', '2024-01-19 09:04:14', '2025-01-19 14:34:14'),
('417eb8a3cc56bd038a5be291a0e2b2631a104c3949e8934b0c11ee5f84536a0ccda378dde9cfe600', 262, 1, 'andrew', '[]', 1, '2024-02-01 06:31:25', '2024-02-01 06:31:25', '2025-02-01 12:01:25'),
('4391fa55ad8457d5c5aa3d380ef6893c15b02f38b019a262172f55839f298927bff1da722fbba55d', 221, 1, 'andrew', '[]', 0, '2024-01-22 09:59:23', '2024-01-22 09:59:23', '2025-01-22 15:29:23'),
('43f51bcfc65288990983d4b5180364e3b99814ed2f540cd39851d1dab8dd6214f762e406ef6e9559', 114, 1, 'andrew', '[]', 1, '2024-01-10 03:45:36', '2024-01-10 03:45:36', '2025-01-10 09:15:36'),
('44304abd82ec5dd312f2ab212299bd69d5ed48ad70ed9115a9baa44842f1dcfdc2b676eb32c1d77e', 248, 1, 'andrew', '[]', 1, '2024-01-31 01:03:23', '2024-01-31 01:03:23', '2025-01-31 06:33:23'),
('4434393e60b970eb84174de1baf367fc32b1516626753fa23f4b9928c5add6c17a068f12377cb88a', 88, 1, 'andrew', '[]', 0, '2023-12-29 07:24:22', '2023-12-29 07:24:22', '2024-12-29 12:54:22'),
('45ad8854caf5c0b5639459705e21de495016d61cc750f0853d169f4e6071b625c44d86ab43d2d62e', 193, 1, 'andrew', '[]', 1, '2024-01-19 09:40:46', '2024-01-19 09:40:46', '2025-01-19 15:10:46'),
('45dfaa40902fe08dddb4add679f1f9ab419bee4c5d3fa997f6e96ea2db4125ab029fdfd9a601c228', 38, 1, 'andrew', '[]', 1, '2023-10-25 03:32:12', '2023-10-25 03:32:12', '2024-10-25 09:02:12'),
('4630532db2360671653afa2232d4f4a0de7d74639869c7a207145ee9ff682004e40dfd1615d7798c', 271, 1, 'andrew', '[]', 1, '2024-02-01 00:51:41', '2024-02-01 00:51:41', '2025-02-01 06:21:41'),
('465bf3c69200c466843efc91f80998626180d8d9aefcae95b8924390bea03e60318bd4fd9f8d4c49', 72, 1, 'andrew', '[]', 1, '2024-01-17 02:17:22', '2024-01-17 02:17:22', '2025-01-17 07:47:22'),
('465dd65fef73c4582dbd573c4b8194f15211598aa437d706af9645dea719965ec03647c53e095b31', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:37:13', '2024-01-11 08:37:13', '2025-01-11 14:07:13'),
('46eefcc02109bae2ca3908ca98ac7f6bc56af64a6a6cb64c8e0acc9a8d6e6781e1ebec3dbd1cdb89', 89, 1, 'andrew', '[]', 1, '2024-01-03 01:44:07', '2024-01-03 01:44:07', '2025-01-03 07:14:07'),
('46f9c3e586db0aea91e965a101aa1d6972c4988e974450e22205d2cec6fef2d8568f060df8e42050', 33, 1, 'andrew', '[]', 1, '2023-10-26 00:57:03', '2023-10-26 00:57:03', '2024-10-26 06:27:03'),
('47aaa3f23842f68d3ec74a8d839333e07420b73bd8c83fe61223c2c226cb4fe8175d192fd4c6698c', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:22:17', '2023-10-25 06:22:17', '2024-10-25 11:52:17'),
('484a28dcdfbce37cf6986558a76740dc8cd07f95c1d0853697ca93b38b3e87db512793ee0c0b949b', 234, 1, 'andrew', '[]', 1, '2024-01-30 07:48:43', '2024-01-30 07:48:43', '2025-01-30 13:18:43'),
('4868f71735b86cb2953b0d0044db8777b009119214a1b77bb7333f0fc80d1f8ecdc028a02f021b0e', 194, 1, 'andrew', '[]', 1, '2024-01-19 10:42:46', '2024-01-19 10:42:46', '2025-01-19 16:12:46'),
('488d29a6a5499496a17a87c5be5351694751e6f61f46d892a1e122b41fbd21fc5d4925d824073f3d', 16, 1, 'andrew', '[]', 1, '2023-10-24 23:18:44', '2023-10-24 23:18:44', '2024-10-25 04:48:44'),
('48bd9e9448ce7f5e3ea9af84d194214358cf2fd84ce051031c3fe7e3424909503fd24dfa4e1eeca4', 193, 1, 'andrew', '[]', 1, '2024-01-19 09:39:53', '2024-01-19 09:39:53', '2025-01-19 15:09:53'),
('48e4d98f1f9ce58403fc2002eebd1e01cd4a9c3153778f46708a5f8006d9c2e46b295c2077b445fc', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:28:30', '2023-10-24 01:28:30', '2024-10-24 06:58:30'),
('4910857d0f8145fb0a21bfe2dd416d1bbdea38a04a67b8cb045605e9f2b5c91d0be8a1ed962a56ff', 47, 1, 'andrew', '[]', 1, '2023-10-26 07:01:17', '2023-10-26 07:01:17', '2024-10-26 12:31:17'),
('4916c320688df359e5e3ce1ada4d5bbd1225e21ad3a6df254a6538b815fe3ecd6d41b27e46508c53', 83, 1, 'andrew', '[]', 1, '2024-01-06 00:23:27', '2024-01-06 00:23:27', '2025-01-06 05:53:27'),
('491861a50afc1cb9a7fe0b700bed3590185d0779eabac2654aa7f842219c59504f87aa636e0fec78', 228, 1, 'andrew', '[]', 1, '2024-01-24 00:11:12', '2024-01-24 00:11:12', '2025-01-24 05:41:12'),
('49303d56c5ce2657711d587c1eab8b0610ba4136d0740999ef3bac0d4d0f12916e5688fdd8cb6fb4', 16, 1, 'andrew', '[]', 1, '2023-10-30 04:37:26', '2023-10-30 04:37:26', '2024-10-30 10:07:26'),
('4975dfd3d94803a5c5e3edcac03c4840a52aa2a3ba022d05c21d901509b53441eb5c855ad2f94d98', 72, 1, 'andrew', '[]', 1, '2024-01-10 01:00:05', '2024-01-10 01:00:05', '2025-01-10 06:30:05'),
('49da265dbae95157d6572224249937c8d878c4a03dc2b36c0dff1fcc1c0420611fc5c6f809824ca2', 150, 1, 'andrew', '[]', 0, '2024-01-17 04:06:42', '2024-01-17 04:06:42', '2025-01-17 09:36:42'),
('4a15b961af0fd03ac4a89fb4c23981c44e13899e35fcabe3e4da00046a4605bdbda7ce949df008d9', 72, 1, 'andrew', '[]', 1, '2024-01-18 02:39:25', '2024-01-18 02:39:25', '2025-01-18 08:09:25'),
('4a4a680065f105c31585f45ed9105cfe83a6ced3cf085bd93807397dfa8ae13f82c396ee62027c0e', 40, 1, 'andrew', '[]', 1, '2023-10-26 06:15:10', '2023-10-26 06:15:10', '2024-10-26 11:45:10'),
('4a4c3a240bd919351f094e4efdb334dbc9d00f7071d705142a75849f15606d05cbcf8f42031cdfba', 132, 1, 'andrew', '[]', 1, '2024-01-12 06:01:27', '2024-01-12 06:01:27', '2025-01-12 11:31:27'),
('4a922414c186b70c4676902d7a9679f6028eaa04ad613876455c411b1d6b1471ad5afdb765cc2f96', 72, 1, 'andrew', '[]', 1, '2024-01-12 01:44:27', '2024-01-12 01:44:27', '2025-01-12 07:14:27'),
('4bc6148ac56612c5ed2d8a925979957e5d8b585a4d39b5349d761624dba33b2ea255cdca0056c43e', 41, 1, 'andrew', '[]', 1, '2023-10-26 04:52:00', '2023-10-26 04:52:00', '2024-10-26 10:22:00'),
('4bc90aecf20ed38e563f64f2b5e8c7c60bc5baf81d417819d51eb22f6ec80b948b5ff6feec6e2822', 262, 1, 'andrew', '[]', 0, '2024-02-01 07:54:27', '2024-02-01 07:54:27', '2025-02-01 13:24:27'),
('4bcca90185145d5c302f4b700053667f8482adb1983209df2b27099ca2940bc4359bd3261550902c', 130, 1, 'andrew', '[]', 1, '2024-01-12 05:10:24', '2024-01-12 05:10:24', '2025-01-12 10:40:24'),
('4be9ab3fc87bd97d95ca68f83ce565ce2ad2ba6290495f7a0f117c317362fc41ef770ff0f1780dd5', 16, 1, 'andrew', '[]', 1, '2023-10-25 00:58:31', '2023-10-25 00:58:31', '2024-10-25 06:28:31'),
('4c3170551766d367238cd14c39c7cc00d9ff91ec0761f8a51f9b667f86f54e0102750c8c70c24af1', 89, 1, 'andrew', '[]', 1, '2024-01-10 02:02:10', '2024-01-10 02:02:10', '2025-01-10 07:32:10'),
('4d0cdc0a92164f7d6f102391a7ba7b8dac2727e0eef6adbe9be035c0d64894447c8477aa76c4179c', 16, 1, 'andrew', '[]', 1, '2023-10-26 09:19:51', '2023-10-26 09:19:51', '2024-10-26 14:49:51'),
('4d1317a7c3e68c1f94ebf638a8c44721cecd5ba21dc99280c9aa2de73597631c77fc42a7804c0214', 192, 1, 'andrew', '[]', 1, '2024-01-19 09:23:58', '2024-01-19 09:23:58', '2025-01-19 14:53:58'),
('4d5fb88d97a4f09034714010852bda2556f533ea3bb2c2c70d1066d584088dd65bed5378fe0d86bf', 234, 1, 'andrew', '[]', 1, '2024-01-30 05:44:23', '2024-01-30 05:44:23', '2025-01-30 11:14:23'),
('4d6f26fd1633fe4c9d32defef84072f2fe6fb896501fea046573d5f904960fd4300f8987cfac587e', 234, 1, 'andrew', '[]', 1, '2024-01-30 08:13:55', '2024-01-30 08:13:55', '2025-01-30 13:43:55'),
('4e3e28b0c61921922400c0beaa44c5fd2c99e87b1300398f72a3df82d629c4298787e2d16fa72e78', 89, 1, 'andrew', '[]', 1, '2024-01-10 01:56:17', '2024-01-10 01:56:17', '2025-01-10 07:26:17'),
('4e66cf911a02f61a536fefc38a435a1a56b351e492a348a300efb1f38466a5420ee837742b215388', 255, 1, 'andrew', '[]', 1, '2024-01-31 05:24:35', '2024-01-31 05:24:35', '2025-01-31 10:54:35'),
('4e927937c71c1ad3bb2bfba6b524c5ff8ccc20f876227ba196a720d01a412c09833b4d06a7c1508c', 58, 1, 'andrew', '[]', 1, '2023-10-27 03:08:02', '2023-10-27 03:08:02', '2024-10-27 08:38:02'),
('4ed49620334901b945a89e5e3243409c48b966a4d880b04eb353956873baf41cbbb046c7c83bacaa', 83, 1, 'andrew', '[]', 1, '2024-01-16 23:39:38', '2024-01-16 23:39:38', '2025-01-17 05:09:38'),
('5090e21f9f8b1b29c9c647b8fce37f918f3d0f108e4cc8529e0390a70eadf71fae1bf0ee7b6c435c', 16, 1, 'andrew', '[]', 1, '2023-10-25 04:26:39', '2023-10-25 04:26:39', '2024-10-25 09:56:39'),
('511c391b4c0ca6c49dc381435c2d90f6aaff5fb9477113d59753d5a764d5463ba211b9af5fe45278', 76, 1, 'andrew', '[]', 1, '2023-10-30 00:25:18', '2023-10-30 00:25:18', '2024-10-30 05:55:18'),
('523fcfac87c861b37eaa3bf5ff91465e68b19ab4355ab17e3d6eafeea662864b658da551dad0bba8', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:00:12', '2021-11-12 13:00:12', '2022-11-12 18:30:12'),
('5292b46dfb5654a1176e2b24881f3598d7ed585036c21b36d95fec2242d715ff6bb8d7c523b0fac6', 234, 1, 'andrew', '[]', 1, '2024-01-30 08:04:52', '2024-01-30 08:04:52', '2025-01-30 13:34:52'),
('535ceb7b6bf8e1f2a234fc4d15c794f699dd1cf4add9882b8f2d0f8f3b1319c78d013dc94e54e9f2', 90, 1, 'andrew', '[]', 1, '2024-01-22 23:26:33', '2024-01-22 23:26:33', '2025-01-23 04:56:33'),
('53f6bcb3db52ec0190e4adc669f0698ac93b8d969d2be513dac4cf6b632a029669c1121732f9ef53', 89, 1, 'andrew', '[]', 1, '2024-01-19 00:16:22', '2024-01-19 00:16:22', '2025-01-19 05:46:22'),
('541a61ca26c2acfbb20dbe20c747d7ec719c20be7d45480c21a0a9b75cbb10e5088f2b1f3b8bf930', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:58:52', '2021-11-17 04:58:52', '2022-11-17 10:28:52'),
('546bda565a9f7b15d9e9ea7d53241c0c01e387ef406966271c3512cbd4271f4cb2d40419d27062e8', 90, 1, 'andrew', '[]', 1, '2024-01-10 08:14:25', '2024-01-10 08:14:25', '2025-01-10 13:44:25'),
('54a2763dea68900d02d73033a47a4a5708f6c21a42f7e3c4ba6532c38d09b082851e5a64ecc980c4', 202, 1, 'andrew', '[]', 1, '2024-01-22 05:36:02', '2024-01-22 05:36:02', '2025-01-22 11:06:02'),
('54c88296afdda49638b24b7c8da6edc77792a4dbe6444b37bfa1ce746a3b758d02c7a534b91eaad4', 240, 1, 'andrew', '[]', 0, '2024-01-30 09:37:31', '2024-01-30 09:37:31', '2025-01-30 15:07:31'),
('555b9b64f83e6d6436827dde1ce9a7e78beb2e5f2c267b1669d8b6a17b72ad98f88af5fa0fb36317', 72, 1, 'andrew', '[]', 1, '2024-01-11 23:10:57', '2024-01-11 23:10:57', '2025-01-12 04:40:57'),
('559d46041a5ee88706ccc7d5a257017a56de7ee23f556d3965d32d794fd6e18e943c3ef6e845d7dd', 33, 1, 'andrew', '[]', 1, '2023-10-25 00:46:49', '2023-10-25 00:46:49', '2024-10-25 06:16:49'),
('55d7f1d0b05094dd1ed20d8b94ab50ccc6c1cc979de9e2110ea99e38daa6dd63c9b9a7510ca1fde7', 16, 1, 'andrew', '[]', 1, '2023-10-26 07:10:23', '2023-10-26 07:10:23', '2024-10-26 12:40:23'),
('569eef48a741f0ad721b9351816c07fb07f8d041ad7c25e1fa2b5b02cb9b106d59bf7fbdfa24f202', 275, 1, 'andrew', '[]', 1, '2024-02-01 05:50:34', '2024-02-01 05:50:34', '2025-02-01 11:20:34'),
('58df78d63b25f639712d2a6f9782fc07b22062431e028a8ff21c9d70f81ed3de655b3045f88f2929', 214, 1, 'andrew', '[]', 0, '2024-01-22 07:45:09', '2024-01-22 07:45:09', '2025-01-22 13:15:09'),
('59708516c5055732b62f0eb921398de81da78445cf3fb9593b9845dde4c081dda393f2e29db73a56', 89, 1, 'andrew', '[]', 1, '2024-01-11 06:50:51', '2024-01-11 06:50:51', '2025-01-11 12:20:51'),
('59ae55b6b3dc9af32d0440ccfe72402ce8465d5188d6e0f83513a96ded30ff88598441e8dedcf460', 234, 1, 'andrew', '[]', 1, '2024-02-01 06:02:55', '2024-02-01 06:02:55', '2025-02-01 11:32:55'),
('59defe6ea56da19b207b81bc7661af426288785c7fef25d32ff6a30ce162d4a4448c61ae6966c6e3', 90, 1, 'andrew', '[]', 1, '2024-01-02 04:19:54', '2024-01-02 04:19:54', '2025-01-02 09:49:54'),
('5a00698ac31d4c84ee1b8e52089646dfd579fbc2c4d050ebf3f71e2d92ff5697d512256f1f030394', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:33:44', '2024-01-12 05:33:44', '2025-01-12 11:03:44'),
('5a10132afa2e6579882a52177edfbb2d1f01c2ef805beea6c61d7e2f0244e770b69295a0bea159b8', 83, 1, 'andrew', '[]', 1, '2024-01-19 01:28:30', '2024-01-19 01:28:30', '2025-01-19 06:58:30'),
('5a45e0efabf130d47bb8e6819c7f75c16616166a501006939bda2529cd50f1c07fb2889358f9deff', 18, 1, 'andrew', '[]', 1, '2023-10-23 08:29:57', '2023-10-23 08:29:57', '2024-10-23 13:59:57'),
('5bb6d8525e5848c7f8ba012f58f92e45d03cf1215b03ee288796efb9bbdf18a574c84cf1fff32eb9', 153, 1, 'andrew', '[]', 1, '2024-01-17 10:11:04', '2024-01-17 10:11:04', '2025-01-17 15:41:04'),
('5c8cd7e416f96cacfa8cf4dadd45a1227d968cfc7c81ef756b0c2c9fd7207f753626431316f8c191', 217, 1, 'andrew', '[]', 0, '2024-01-22 09:25:38', '2024-01-22 09:25:38', '2025-01-22 14:55:38'),
('5cb44dfc12ac8ddfbb1675383f251e9988509a5a00d03380f0433463b61523c5d14d8942f5b2e377', 103, 1, 'andrew', '[]', 0, '2024-01-09 07:59:48', '2024-01-09 07:59:48', '2025-01-09 13:29:48'),
('5d5daedbfa3abc3ab02e3eb19858106ef6a3affee069b7f36bb2a44424d032c634819252f5f045aa', 72, 1, 'andrew', '[]', 1, '2024-01-19 04:51:21', '2024-01-19 04:51:21', '2025-01-19 10:21:21'),
('5e06f49d7f4a52c9b73cb76e07bd6903e03759336b4aed911b6187fda469d72bc424aa6251580c16', 89, 1, 'andrew', '[]', 1, '2024-01-18 00:59:55', '2024-01-18 00:59:55', '2025-01-18 06:29:55'),
('5eeea6e4987ef398e7082ce2bf529dd7788279fffc792f09ca632e960edfeabdf78b636d51eb6661', 14, 1, 'andrew', '[]', 1, '2023-10-26 05:00:18', '2023-10-26 05:00:18', '2024-10-26 10:30:18'),
('5f043819bf80bf3020117c698251883e9e59add9c0652267ce3773ec0bba6156b6d759b6aae09fe5', 72, 1, 'andrew', '[]', 1, '2024-01-11 23:33:41', '2024-01-11 23:33:41', '2025-01-12 05:03:41'),
('5f28a9f9c269fb91be9c14930df27cdf95bc86f989db785c9a77a357ad6beb3b3f6e4db58aab06d5', 70, 1, 'andrew', '[]', 0, '2023-10-27 08:37:52', '2023-10-27 08:37:52', '2024-10-27 14:07:52'),
('5f756688bcb90aab9fa94c6421d510b4034f97e71d7e2d91b05f1059d209c895e5343246fe75dfd3', 243, 1, 'andrew', '[]', 1, '2024-01-30 23:59:06', '2024-01-30 23:59:06', '2025-01-31 05:29:06'),
('5f99d8e44f3de5bc84f66eb8d6217152f503759f07a03fc3f8b031dcc610c27ddd56506f976a8769', 140, 1, 'andrew', '[]', 1, '2024-01-16 23:37:47', '2024-01-16 23:37:47', '2025-01-17 05:07:47'),
('6037748a6def8fa68a1870b304233cf0de95275bb910cf725e6054f5040eaa5f35065a1349d736f9', 270, 1, 'andrew', '[]', 1, '2024-02-01 00:50:50', '2024-02-01 00:50:50', '2025-02-01 06:20:50'),
('6063ad3a281a0b2b286469cc3c54093beb0bca137018826023fe7784b20e369fa97e856e5197603c', 1, 1, 'andrew', '[]', 0, '2021-11-15 09:04:47', '2021-11-15 09:04:47', '2022-11-15 14:34:47'),
('607c42d10b058cbb3c873f8bc8d44bd6f92a8a1ab434780840cabd08ffcdb3bdd281bc80b3ced829', 188, 1, 'andrew', '[]', 1, '2024-01-23 23:26:40', '2024-01-23 23:26:40', '2025-01-24 04:56:40'),
('60ba47fdd3093575640d91f59aac1543c91cb0728a510d346d332ddcefc34f9815e67e221c55f7bd', 16, 1, 'andrew', '[]', 1, '2023-10-26 05:04:37', '2023-10-26 05:04:37', '2024-10-26 10:34:37'),
('61941e9f902f8ac610d64f37ee4786482fcec3b145442ecffd6295dafd9adcdad0b379495c4e2e6c', 89, 1, 'andrew', '[]', 1, '2024-01-18 02:11:38', '2024-01-18 02:11:38', '2025-01-18 07:41:38'),
('624b3636e88b22e2fdc49c151933dcd7fbd867e3c8a0fdb7046846445efda991c07123fba3a93e6b', 72, 1, 'andrew', '[]', 1, '2024-01-05 11:34:40', '2024-01-05 11:34:40', '2025-01-05 17:04:40'),
('630d92e6db6aff829de178ae4008d91e348ddce19caed9f60280499bfb21f96258774da16af71ae6', 120, 1, 'andrew', '[]', 0, '2024-01-10 23:44:22', '2024-01-10 23:44:22', '2025-01-11 05:14:22'),
('631999b9692ec98eb039b6e742cbf6c52ae247c0bed4662f74f92c1012b387004f0f7d490e540f05', 40, 1, 'andrew', '[]', 1, '2023-10-30 00:22:45', '2023-10-30 00:22:45', '2024-10-30 05:52:45'),
('63580553332c80ecf92bd3bdd26026cc5d155cbc489ddc0f96decc827bffdfb62621b2118382d058', 78, 1, 'andrew', '[]', 1, '2023-12-29 07:21:24', '2023-12-29 07:21:24', '2024-12-29 12:51:24'),
('639f5beb61a3321094133d4b7538f9e2dfe27dbd3d085134994f29804ccc8cd7acd6bc56aad5f047', 60, 1, 'andrew', '[]', 1, '2023-10-27 03:12:20', '2023-10-27 03:12:20', '2024-10-27 08:42:20'),
('63b0a63e48aa01a5eb55aa31843e0888627a0edc9338adb2b605a9b7fba1a872ea2c87c0f0e30657', 234, 1, 'andrew', '[]', 1, '2024-01-31 07:32:11', '2024-01-31 07:32:11', '2025-01-31 13:02:11'),
('63c3bfbe59f0508cb76d13130e0241dad0963309fa6745b08a3e6e8358613ffbbae228c206290991', 14, 1, 'andrew', '[]', 1, '2023-10-23 06:36:26', '2023-10-23 06:36:26', '2024-10-23 12:06:26'),
('63d704554c2ed8eadcbba098627d712d039c0411c260d8c5a996f88f4d2b790079fe6c3246108759', 84, 1, 'andrew', '[]', 0, '2023-12-28 00:07:06', '2023-12-28 00:07:06', '2024-12-28 05:37:06'),
('63db0297bc4ab495aad4baac22c8d0aec2a295c87fe8a4a350c470e138a47f5a9d528a02fcb1fc8e', 62, 1, 'andrew', '[]', 1, '2023-10-27 03:30:11', '2023-10-27 03:30:11', '2024-10-27 09:00:11'),
('6489c6f6b584d160d22dd3e75601c925161e745c04363d36690e40681cd3570eff6cc6a0c6f7c114', 193, 1, 'andrew', '[]', 1, '2024-01-19 10:17:52', '2024-01-19 10:17:52', '2025-01-19 15:47:52'),
('65348b801f24bdb009d8a50be36d412fb6f20088dbcf239aead450a977af2cb102d75be226571bd3', 72, 1, 'andrew', '[]', 1, '2024-01-18 03:24:39', '2024-01-18 03:24:39', '2025-01-18 08:54:39'),
('654c2439fa344f70338278dd5d6297174d605466b08481a67b14b1380f5d55f68a8526052c745c96', 256, 1, 'andrew', '[]', 0, '2024-01-31 07:13:39', '2024-01-31 07:13:39', '2025-01-31 12:43:39'),
('659872c0f12ecda733001230a8aca15966121e6b4418f4ac82c29064e906950df4079a3f5df455d2', 234, 1, 'andrew', '[]', 1, '2024-01-30 23:31:34', '2024-01-30 23:31:34', '2025-01-31 05:01:34'),
('65e37a1f182c821aab6d272ea66dde709a13f0a488d76a48d152bae7c58b5291f9bbabb2db056442', 83, 1, 'andrew', '[]', 1, '2024-01-10 00:53:09', '2024-01-10 00:53:09', '2025-01-10 06:23:09'),
('66007071b58a099c778fd7d021e92eccd93a065ed91ae78809d3c59f0d05fabd8a993320b3543527', 83, 1, 'andrew', '[]', 1, '2024-01-22 04:01:55', '2024-01-22 04:01:55', '2025-01-22 09:31:55'),
('6678f29f1ef743f368230089ba015491c521a13c785807050966ab64e3b979561d3b2c427ff2797d', 279, 1, 'andrew', '[]', 1, '2024-02-01 05:25:33', '2024-02-01 05:25:33', '2025-02-01 10:55:33'),
('66ee55caf8cb21cc9bf2d63cd0f9638f4861f4cc5bdb30f1e8152ca4352fe5a4958beb0fb2dd97da', 117, 1, 'andrew', '[]', 0, '2024-01-10 07:48:26', '2024-01-10 07:48:26', '2025-01-10 13:18:26'),
('6839819b227d845a1168c8fa2f07be361f40e1b90ae8e038bc184a8a3ce68b34b833517cfdee9241', 167, 1, 'andrew', '[]', 1, '2024-01-18 05:32:52', '2024-01-18 05:32:52', '2025-01-18 11:02:52'),
('687122d329a9da0da0186a6e798d3629d27d065640dccaa69daeb87dabf2348aff7e5c92b064ed0c', 69, 1, 'andrew', '[]', 1, '2023-10-27 08:37:05', '2023-10-27 08:37:05', '2024-10-27 14:07:05'),
('68b3a1ba169ca4b70f09a0c3295e0f70cd71289d737185c180068e601f8a832bf973b4751ea12e1e', 178, 1, 'andrew', '[]', 1, '2024-01-19 03:17:52', '2024-01-19 03:17:52', '2025-01-19 08:47:52');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('691c0c29f0edc540a17f6a50d01ac33db0cd41a70f145c68189d8c00ba04026ed2fb6420dfbd66e4', 72, 1, 'andrew', '[]', 1, '2024-01-19 04:30:03', '2024-01-19 04:30:03', '2025-01-19 10:00:03'),
('696dc1e7db1c6973f271549dbb8d8d3d5a49b69bb97f6b9faccccbea11f63f74c9a4cbf4839d43aa', 90, 1, 'andrew', '[]', 1, '2024-01-23 03:25:06', '2024-01-23 03:25:06', '2025-01-23 08:55:06'),
('69ce454d321fb8e10f25f74ce04ce1d9dc27d0db61cbfda050cbc65f7c63d3652e9aa08e4c56ef94', 16, 1, 'andrew', '[]', 1, '2024-01-19 00:09:24', '2024-01-19 00:09:24', '2025-01-19 05:39:24'),
('69d91e4b0072813c263e82893cb3edd354a613b64aabb7dcf9085269bec3811740c34dbf5066d833', 157, 1, 'andrew', '[]', 1, '2024-01-18 02:21:44', '2024-01-18 02:21:44', '2025-01-18 07:51:44'),
('6a2747ad591b8b7329c6fc7d371acce54cbfeff3336d350b6084ec76cd6f05df50a1cf405a53ff42', 64, 1, 'andrew', '[]', 1, '2023-10-27 07:14:37', '2023-10-27 07:14:37', '2024-10-27 12:44:37'),
('6a30be9864c100cca093ff2372150dad6a813cbc78f9f188cd4c93ed9a318a41565930e3b66de454', 213, 1, 'andrew', '[]', 1, '2024-01-22 07:44:15', '2024-01-22 07:44:15', '2025-01-22 13:14:15'),
('6ab8b6e2e1fd0ec41dd058d5b592c8d43e27e3be23e6bb631a6c8ff837229bc65a2cd863f44676db', 16, 1, 'andrew', '[]', 1, '2024-01-19 05:15:51', '2024-01-19 05:15:51', '2025-01-19 10:45:51'),
('6be9ab4e325dd6ef8db7f402907ff2316dde3c383e8a537deac04121fde9e7a76575b0b93247a152', 83, 1, 'andrew', '[]', 1, '2024-01-11 04:17:21', '2024-01-11 04:17:21', '2025-01-11 09:47:21'),
('6efee6ac3d3847466a53858bc729a77ab775ca81e6cb22b35c0b7b4db4c96ac912f20baf9b0eea58', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:35:41', '2024-01-11 08:35:41', '2025-01-11 14:05:41'),
('726a1e636cfd253bbdf144d71cb1f656f0ad487a9c1c11de13ee638f2955192a12f71a101420e06c', 228, 1, 'andrew', '[]', 1, '2024-01-30 01:39:30', '2024-01-30 01:39:30', '2025-01-30 07:09:30'),
('72eb6199dac305c8f1bdfc34211644977ec0c6b9e43ee7f2b0295973c174060ef93cc749b593d01c', 83, 1, 'andrew', '[]', 1, '2024-01-08 05:17:42', '2024-01-08 05:17:42', '2025-01-08 10:47:42'),
('73550c09a8403826bb96003ab445785e0789d5fdaa412264b481c510f90f91daa694085b7f88896d', 191, 1, 'andrew', '[]', 1, '2024-01-19 09:08:52', '2024-01-19 09:08:52', '2025-01-19 14:38:52'),
('739f655b847599c78ab3af01c18ed333ffa8198d619080222e472c7819864650b0c375cdf3ee6a03', 83, 1, 'andrew', '[]', 1, '2024-01-05 05:30:47', '2024-01-05 05:30:47', '2025-01-05 11:00:47'),
('73e27c8492473b746a4d731d3635c6b681b4115c54f5f9fcad84dc6db6ff7a5a3dc12a03b7e17c8d', 39, 1, 'andrew', '[]', 1, '2023-10-25 06:08:16', '2023-10-25 06:08:16', '2024-10-25 11:38:16'),
('73e44c78e9e1b6ccbb9e4d1ab9c3239f6c6812cf8528b8f5f850543fd213594d8c2743b1a3c08135', 72, 1, 'andrew', '[]', 1, '2024-01-17 05:10:09', '2024-01-17 05:10:09', '2025-01-17 10:40:09'),
('740ef34c765b641f3d5edf153f3cb0be87483c667a6f3c80d3acf4949792ce6b3b3cf1f08edf2a09', 161, 1, 'andrew', '[]', 1, '2024-01-18 05:06:28', '2024-01-18 05:06:28', '2025-01-18 10:36:28'),
('7422a00d7eeb1205071f09dc09627b2431e637526442e288e37eecc340d797dcd507d405fdac9322', 244, 1, 'andrew', '[]', 1, '2024-01-30 23:54:18', '2024-01-30 23:54:18', '2025-01-31 05:24:18'),
('743415a043d84c5ddc7f09d64e72e624ff3883725be8aaec4254f3f155571b6c39920b8bc9d8d992', 83, 1, 'andrew', '[]', 1, '2024-01-19 04:30:34', '2024-01-19 04:30:34', '2025-01-19 10:00:34'),
('744564355f698de93b341d4b19089785657deeab7a9983cb6163c3dd6d4b0ecc82c203392d24ecec', 14, 1, 'andrew', '[]', 1, '2023-10-25 05:51:46', '2023-10-25 05:51:46', '2024-10-25 11:21:46'),
('748202e63dd6e3c2cdc790e6a29d9524a168750c8bf7d473045553e256cccf4444493548f7c2fc00', 72, 1, 'andrew', '[]', 1, '2024-01-18 00:05:59', '2024-01-18 00:05:59', '2025-01-18 05:35:59'),
('749ae547cdbfc651f643143114698afd1e4f3c89c805fd343f018d80c62a986e0e49d66e6fe8546f', 189, 1, 'andrew', '[]', 1, '2024-01-19 09:36:01', '2024-01-19 09:36:01', '2025-01-19 15:06:01'),
('74aa555d13f1a768eed878fff2627b87861bc480e987f7723e456f44d9748a1ff9d28c909ff59a23', 156, 1, 'andrew', '[]', 1, '2024-01-18 02:00:23', '2024-01-18 02:00:23', '2025-01-18 07:30:23'),
('74c26188a799881fbbe10990cc5440635c440e4169e323b7318f04b901825502bd6f80f5317e8ece', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:25:45', '2024-01-04 22:25:45', '2025-01-05 03:55:45'),
('74f206dd846855f57b5334bccd86f2da8d1e93735a91654a317f79fd6b1c0dcd7462c570adada60f', 23, 1, 'andrew', '[]', 1, '2023-10-23 23:17:50', '2023-10-23 23:17:50', '2024-10-24 04:47:50'),
('7501ec97393f393a798f14090340731fee785bfea1843a88cc8548a23f48e80532f50d80c220b8e6', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:11:26', '2021-11-15 07:11:26', '2022-11-15 12:41:26'),
('75059b4191dcf253e1ec77501f5c31e6a2c086d256f6704f4924523fc5689757c7b774dbf1e3327d', 154, 1, 'andrew', '[]', 1, '2024-01-17 10:14:19', '2024-01-17 10:14:19', '2025-01-17 15:44:19'),
('751806a02b1c5b21e4010a37b429603446acfb22008e393b0d67cebbc9af67cae7e4a3c8a2dcdad9', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:47:04', '2023-10-24 01:47:04', '2024-10-24 07:17:04'),
('75890b52dc0110c6ad8b19b740476e406e40b8c67e92429f4d5b6a199809babb87465e1a52eb2cc5', 121, 1, 'andrew', '[]', 1, '2024-01-11 08:11:58', '2024-01-11 08:11:58', '2025-01-11 13:41:58'),
('75a8fe7a089a15f6b682ae98365728dc32d14081bbbf3d891b6a62e53d054105b991a4ddd2e82db4', 16, 1, 'andrew', '[]', 1, '2023-10-31 03:56:51', '2023-10-31 03:56:51', '2024-10-31 09:26:51'),
('75d0b46c990223803a114f858d99afa9ad99948dcb233c9cc90ff1301171e8f855f39ad049a5b79a', 206, 1, 'andrew', '[]', 1, '2024-01-22 07:04:47', '2024-01-22 07:04:47', '2025-01-22 12:34:47'),
('769c2ecc2cc159440cc6286ceffca7f66ab78739535f59e1b8f9883f5b5e40f1b1696ef23d849a5e', 28, 1, 'andrew', '[]', 1, '2023-10-24 09:48:06', '2023-10-24 09:48:06', '2024-10-24 15:18:06'),
('76ce5529d8613b09a15e0b2563b96ec773d9d3e86280a4b6cc73293cbed0900013b4b20cb24d463c', 160, 1, 'andrew', '[]', 1, '2024-01-18 04:20:50', '2024-01-18 04:20:50', '2025-01-18 09:50:50'),
('77389f402a0468a079d76e4eb145cfa935cf535bbfd37dfd93d7bd580d5412880419550298755521', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:39:05', '2023-10-26 04:39:05', '2024-10-26 10:09:05'),
('774a48730591d1f205d127bca4cd6ad89c4b54ddec67ac801ba30b527b5696e121e7a9ba2ab2bdd2', 258, 1, 'andrew', '[]', 0, '2024-01-31 07:19:54', '2024-01-31 07:19:54', '2025-01-31 12:49:54'),
('7793015d8a7aa21e8fb57caad2ebab9b6776dcf30919f6b4cb175846d59d6c5acd715095a02e2918', 234, 1, 'andrew', '[]', 1, '2024-01-30 05:48:13', '2024-01-30 05:48:13', '2025-01-30 11:18:13'),
('77a5af94321b325a1e796ec70b31ef05ae2fe363466598631ecdddae758f75c6d87df466895a9d54', 109, 1, 'andrew', '[]', 0, '2024-01-10 00:14:53', '2024-01-10 00:14:53', '2025-01-10 05:44:53'),
('77fc5f4230e5ff8c9a24b6b5bdbe51b91d734c2afe22b57a06eeca576141e2d09576180cfd73c2b2', 73, 1, 'andrew', '[]', 1, '2023-10-27 10:00:14', '2023-10-27 10:00:14', '2024-10-27 15:30:14'),
('78466c0bd9c981177f058e411f18e62d6e1c928c34fdfc35233b31c9ecfc1cd1a42315c65140fa73', 72, 1, 'andrew', '[]', 1, '2024-01-18 06:46:46', '2024-01-18 06:46:46', '2025-01-18 12:16:46'),
('785953d144d290d828a67a225ee9bb185cc74a5e63f2362b28dac07afbf942d668dd59529cc7ab99', 143, 1, 'andrew', '[]', 1, '2024-01-17 00:59:26', '2024-01-17 00:59:26', '2025-01-17 06:29:26'),
('79192e5e9b0a6e93031547ca4e691498835e8088c65ea406fa9b2505842cb689e0b6a19e18802b1e', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:27:49', '2024-01-11 08:27:49', '2025-01-11 13:57:49'),
('792dc6432c05212c207479953cabe34d4dddfd66ef04e63f78fcfc1fdc90efe6f8265c570b0df78f', 269, 1, 'andrew', '[]', 1, '2024-02-01 00:37:07', '2024-02-01 00:37:07', '2025-02-01 06:07:07'),
('79478e9f036493e55f83bbb7b9a977a404d0e23c5651864647e6b32e616413659bd467021efd21b4', 72, 1, 'andrew', '[]', 1, '2024-01-19 06:21:57', '2024-01-19 06:21:57', '2025-01-19 11:51:57'),
('79f69ae47240fe55d63f2f6ad9c0b62a0a42bb8b0d0cd7ca745e65ea7b3876a881a0c63180684f2b', 72, 1, 'andrew', '[]', 1, '2024-01-18 07:52:11', '2024-01-18 07:52:11', '2025-01-18 13:22:11'),
('7a8e61d99767eaa574fd61f42ce34bc94d7760f46f26add7302167139486c7941fe70213a4d78888', 72, 1, 'andrew', '[]', 1, '2024-01-18 02:51:09', '2024-01-18 02:51:09', '2025-01-18 08:21:09'),
('7b57a87330ed3ce6f7ecce33d1986ccd0793c53e28cd48b1586d8f8b37a0d91bada5ef27da1d1dab', 49, 1, 'andrew', '[]', 1, '2023-10-26 07:17:18', '2023-10-26 07:17:18', '2024-10-26 12:47:18'),
('7b7444bdd212de9c02a5201350d8fe64f112c2f29b69b4d18fe04923a7aee81b96aa9fc430e7533a', 215, 1, 'andrew', '[]', 1, '2024-01-22 07:47:17', '2024-01-22 07:47:17', '2025-01-22 13:17:17'),
('7ba6bb6fed13777ef6e95280489c008ec4c40d5a5c128aa71c2cd16fcaa275851cfd0a2b6a9990ad', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:38:58', '2023-10-24 01:38:58', '2024-10-24 07:08:58'),
('7be1bbc0717e0e6600a16551fbd0f68c556a7510a1f3cff0ee6674edc0af116e8c72be4ccd706cf0', 16, 1, 'andrew', '[]', 1, '2023-10-26 00:54:26', '2023-10-26 00:54:26', '2024-10-26 06:24:26'),
('7bfa17036732584d9b72ddfe3cdd6aac029a97b6cebfd7798ff06448f9af872d52a609d475f62eac', 236, 1, 'andrew', '[]', 1, '2024-01-30 06:05:39', '2024-01-30 06:05:39', '2025-01-30 11:35:39'),
('7ca088ffcca869d0de5990164a84f4d9bf025006bcd52b2e4d2d6123b55c120ee3010cc25d129a56', 189, 1, 'andrew', '[]', 1, '2024-01-19 09:33:21', '2024-01-19 09:33:21', '2025-01-19 15:03:21'),
('7e4b84596f2db67daedaa996909ceaca6c2cebb465b31238515d5694043d96ea8174b8741361307e', 72, 1, 'andrew', '[]', 1, '2024-01-18 08:02:25', '2024-01-18 08:02:25', '2025-01-18 13:32:25'),
('7e6da856670c993c943ed393ec45d8a02ab50ad88098bd13bfe1d511387e8ac182e4eba4555c9609', 161, 1, 'andrew', '[]', 1, '2024-01-18 04:28:02', '2024-01-18 04:28:02', '2025-01-18 09:58:02'),
('7e914d44c62fd7340534c22e0e4ea34faf38065eaff3c186acda03cc63119f590fe1e5161f0c5b01', 235, 1, 'andrew', '[]', 1, '2024-01-30 00:38:17', '2024-01-30 00:38:17', '2025-01-30 06:08:17'),
('7ec7f23f411ee1b35e78d5477f00a9266d933db93aef2b15081af95146348b020143f8c7ff7efed6', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:32:11', '2023-10-26 04:32:11', '2024-10-26 10:02:11'),
('7fa8a94a7e9f565e7e480610a8e1c4e75322ef66fcdabde14dae8d8adc10f2a0ee525c6d3c7332d2', 16, 1, 'andrew', '[]', 1, '2023-10-23 08:02:35', '2023-10-23 08:02:35', '2024-10-23 13:32:35'),
('7fed57949151dbe02b17133262a8d4a0f988db6fb5ef55cd2c5a6c48350d212855706c62d9bda9ef', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:59:00', '2021-11-17 04:59:00', '2022-11-17 10:29:00'),
('8044c6af4ea3190c271cd2e5d027c1d62c3cd5c2e7c9a949ed9eb153bb4bc15809a1eed22b099cf5', 265, 1, 'andrew', '[]', 1, '2024-01-31 08:51:31', '2024-01-31 08:51:31', '2025-01-31 14:21:31'),
('804a68be66e5062ec48d027c3d638111adc2e54294001822d33a46b9b2a6d5afde4fccf901125991', 36, 1, 'andrew', '[]', 0, '2023-10-25 03:09:12', '2023-10-25 03:09:12', '2024-10-25 08:39:12'),
('80d455b3839f36e309c311292e0c6f16214f28e85071e4ade68a8a4d3c1b4b90efe29482efa0f7b2', 97, 1, 'andrew', '[]', 1, '2024-01-07 23:38:10', '2024-01-07 23:38:10', '2025-01-08 05:08:10'),
('81193b688cecfb20a3e232443b41114f87b1b9c5de8416461626fb2e5ffebf4bc7c09d76ae635b8a', 190, 1, 'andrew', '[]', 1, '2024-01-19 09:00:38', '2024-01-19 09:00:38', '2025-01-19 14:30:38'),
('81285064c9b9a1ae1c096cce676d828972cf80bed7c6b239fa6aa1d6a545dafc4a6f8f2c8d52d565', 232, 1, 'andrew', '[]', 1, '2024-01-29 07:43:55', '2024-01-29 07:43:55', '2025-01-29 13:13:55'),
('8150e1770865e287f27815bd3a72e49ee82a8583b9c0e1250b8aecccc2576acd2496bac283657f95', 16, 1, 'andrew', '[]', 1, '2023-10-26 01:30:18', '2023-10-26 01:30:18', '2024-10-26 07:00:18'),
('82d1a8df7bc56236fdbc0abb8c056b53b4251c43b0e43fd50646f341c1fad8ae5013255e9604295e', 141, 1, 'andrew', '[]', 1, '2024-01-17 00:24:45', '2024-01-17 00:24:45', '2025-01-17 05:54:45'),
('835661be1cb10136f5f8e80cde185fb3a6b44bc98cc8a247df7d1330e81475f88ebae617815d2b49', 201, 1, 'andrew', '[]', 0, '2024-01-22 05:43:11', '2024-01-22 05:43:11', '2025-01-22 11:13:11'),
('83bacd9083e0ca8cf450483d03d4194c7fc028889e8c8eb2a5226e02862e74665abcd3974365dd7e', 270, 1, 'andrew', '[]', 1, '2024-02-01 00:49:48', '2024-02-01 00:49:48', '2025-02-01 06:19:48'),
('83c6b16573dfeaeba4e34418b423f5f124bb44efbeeecf6f0d691696a44898005ed3d43ae6db9b4d', 5, 1, 'andrew', '[]', 0, '2021-11-16 12:41:36', '2021-11-16 12:41:36', '2022-11-16 18:11:36'),
('841544abd901ec383e47e8c94fa00ada070286f9045f2675c1689ab7ee67d4adcc27ec23ba55a908', 152, 1, 'andrew', '[]', 1, '2024-01-17 09:57:04', '2024-01-17 09:57:04', '2025-01-17 15:27:04'),
('842d585388586d01f5204dcef86e5134aeb3632747d5c4a8eba3013f2257d591b2bd512e9860b97d', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:28:16', '2024-01-04 22:28:16', '2025-01-05 03:58:16'),
('845504d51504dfd3516a6b1b7eddc058243b8d6d3e71db00352fbf7083abb3eafa3733cfa0ee6ea1', 213, 1, 'andrew', '[]', 1, '2024-01-22 07:40:56', '2024-01-22 07:40:56', '2025-01-22 13:10:56'),
('84a06537f04c6ea7de3f2ffe99433f8c6b0e025dc2bf43eb93af8a44dd20fc168637fd8f93766b71', 83, 1, 'andrew', '[]', 0, '2024-01-23 01:20:47', '2024-01-23 01:20:47', '2025-01-23 06:50:47'),
('85ba7b8f6f28698faa49331cf58a37812fa5fd3e54048c9be5bd1b3012d0ab06ca97c137f48ccb32', 234, 1, 'andrew', '[]', 1, '2024-01-30 08:25:58', '2024-01-30 08:25:58', '2025-01-30 13:55:58'),
('8658d2837f9e310600a34f05147864b1d47e14583115d6943dc5187043bcd620bc802caddc076341', 197, 1, 'andrew', '[]', 1, '2024-01-20 01:55:26', '2024-01-20 01:55:26', '2025-01-20 07:25:26'),
('86af60b59db7d19b1cb06dca2ebbfe81a27ff198fca360d10798ff60e6c43f9f56dc3b491f57950c', 234, 1, 'andrew', '[]', 1, '2024-01-30 07:04:42', '2024-01-30 07:04:42', '2025-01-30 12:34:42'),
('871c636fe31bf540119ac322587dd07df47e7f5d1e5d9e238b7b767b58fc6ff07573970c3755fec1', 16, 1, 'andrew', '[]', 1, '2023-10-27 01:50:36', '2023-10-27 01:50:36', '2024-10-27 07:20:36'),
('882005d96b045520160ecf6cd48b29b1423128d130e9e8f3ae8e30a09a8bf12893c83d5f8fdb7cf5', 188, 1, 'andrew', '[]', 1, '2024-01-19 09:45:16', '2024-01-19 09:45:16', '2025-01-19 15:15:16'),
('886a8a3b644c9abbf3617d7c3ed14c0c44530165e5e7abe37dee4ea0db8c79ea36e693e29b555feb', 282, 1, 'andrew', '[]', 1, '2024-02-01 05:49:10', '2024-02-01 05:49:10', '2025-02-01 11:19:10'),
('8899e32f3ab366c0efc5862972c8ad68bfc6cfd7641ef23c6d098d038dffcd38f344d15ab6c52080', 145, 1, 'andrew', '[]', 1, '2024-01-17 01:26:18', '2024-01-17 01:26:18', '2025-01-17 06:56:18'),
('8956023b01357d5f6d1ffa1c088db0a71f52478015bfdcd74f32ecf0b6757aad212e7a348b8de3f3', 86, 1, 'andrew', '[]', 1, '2023-12-29 04:21:46', '2023-12-29 04:21:46', '2024-12-29 09:51:46'),
('89f39b07dfe25be843e38d4c604d52431f648dca2b151d66c5141f7415870b8695aa11581619dd8d', 257, 1, 'andrew', '[]', 0, '2024-01-31 07:14:46', '2024-01-31 07:14:46', '2025-01-31 12:44:46'),
('8a51987cd9f912dafa6ff5df8b141e9338c20dedc9796030c96562ca81fbab5cc91a13ee3417c552', 57, 1, 'andrew', '[]', 1, '2023-10-27 03:04:35', '2023-10-27 03:04:35', '2024-10-27 08:34:35'),
('8ad5af14b7897df86b3e326d0a98e6c049653a893af4c69e1b9f99e9016dcd14a2f92c333e89615b', 161, 1, 'andrew', '[]', 1, '2024-01-18 06:05:51', '2024-01-18 06:05:51', '2025-01-18 11:35:51'),
('8af072881866a3b09fdc77b490454d901f5d164220b2ec009052f034850d7c8b4e215afea3b93c2a', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:01:01', '2021-11-12 13:01:01', '2022-11-12 18:31:01'),
('8be04dfa632eb13bcd9d12317852ade75ccfe2adc02e9bf56b5ae0e03dfb32e595143c5c475ffbce', 89, 1, 'andrew', '[]', 1, '2024-01-16 23:36:08', '2024-01-16 23:36:08', '2025-01-17 05:06:08'),
('8cac2059bcfa6331e4e7ca2d881464e9b6891c8721f64aa0e1cfe0e73ec335b35fcfd07eb0be279f', 40, 1, 'andrew', '[]', 1, '2023-10-26 07:51:02', '2023-10-26 07:51:02', '2024-10-26 13:21:02'),
('8d08e43554759a5d79730739eeebc60021a90e2f986d40a61e8880c7985b811447045bf0c498e311', 193, 1, 'andrew', '[]', 1, '2024-01-19 09:45:53', '2024-01-19 09:45:53', '2025-01-19 15:15:53'),
('8d676183462b39ef4b777f698b4266a2b5c8665bd91a6f55f7ceb12a37ca6c675a2a80059d6da367', 40, 1, 'andrew', '[]', 1, '2023-10-27 05:58:14', '2023-10-27 05:58:14', '2024-10-27 11:28:14'),
('8d773adbd928ea4459414b154e9d4e222e548a55a359c5fe61ed48aaa15c96b47149f753b124cbeb', 72, 1, 'andrew', '[]', 1, '2024-01-17 01:50:27', '2024-01-17 01:50:27', '2025-01-17 07:20:27'),
('8d77fe1a5908a8462d05d97c0c211e5e71e064db1c3e288a8cf2a684981a17f234b7bf69f265291f', 262, 1, 'andrew', '[]', 1, '2024-01-31 07:36:34', '2024-01-31 07:36:34', '2025-01-31 13:06:34'),
('8eb1c31bab0b29158a09cc3f6b13bb0d66fd6b0fa6312e583b6cc4072923e12af74ca862d99d955f', 83, 1, 'andrew', '[]', 1, '2024-01-19 01:23:41', '2024-01-19 01:23:41', '2025-01-19 06:53:41'),
('8ec1ed5761e780ccf656d26282a8a7e3827b51a37721c605403b1b0e170d403e88e3b7cd0187563c', 90, 1, 'andrew', '[]', 1, '2024-01-09 08:10:18', '2024-01-09 08:10:18', '2025-01-09 13:40:18'),
('8f5a8d757254304aabacf94dac7533bce43a6f62548dbe5b6dda8bc14c1cb516521d02cc02f9ecf6', 83, 1, 'andrew', '[]', 1, '2024-01-03 01:42:01', '2024-01-03 01:42:01', '2025-01-03 07:12:01'),
('90e1e5946805a4943c74300d9ff5f20876bffc7914f0d4c60a17fce26c8055b46d9ddeb57a4d17cc', 209, 1, 'andrew', '[]', 0, '2024-01-22 07:23:07', '2024-01-22 07:23:07', '2025-01-22 12:53:07'),
('915b36a6a5f221898da330964b269532050d43ccd289e1ee27898212de8116897288b2ed16912760', 11, 1, 'andrew', '[]', 1, '2022-01-25 11:05:26', '2022-01-25 11:05:26', '2023-01-25 16:35:26'),
('915df6538c141df14cec2c09069d034aa98bf172408e4b40d25a24a8fb015aa2f35eb3a22219f3d3', 234, 1, 'andrew', '[]', 1, '2024-01-30 07:13:31', '2024-01-30 07:13:31', '2025-01-30 12:43:31'),
('916c135f021660211deab9fbdae3dd7ad378ecc176718641625d8374cee2e0178638de4161dc4ca4', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:09:13', '2023-10-26 04:09:13', '2024-10-26 09:39:13'),
('9177bc6877cdcd2f9dc5db923073e4e67339f42e63165bf9939ce715d2ec72f704c8db3d16203da3', 133, 1, 'andrew', '[]', 1, '2024-01-12 06:02:51', '2024-01-12 06:02:51', '2025-01-12 11:32:51'),
('9210e3fc20e5fe7a65c29b9235150e55a5bd9c207679b6d77da81a7b90df7303a08cb67b1072bfc0', 168, 1, 'andrew', '[]', 1, '2024-01-18 05:39:26', '2024-01-18 05:39:26', '2025-01-18 11:09:26'),
('92ad9b4dde604757cd4bd892c28c88ce799ed0583052b09d461d74348a992ad77670d8c7a582a32f', 3, 1, 'andrew', '[]', 0, '2021-11-15 05:17:25', '2021-11-15 05:17:25', '2022-11-15 10:47:25'),
('937f0236dc30506158d07387330cd63c1888745fff448b0dfdcf8a1f68755cd81b18834441724f99', 122, 1, 'andrew', '[]', 0, '2024-01-11 08:38:18', '2024-01-11 08:38:18', '2025-01-11 14:08:18'),
('942826f87f47b969a3020409fbf518dc6588a6a27f78598c2ea30b6bd34aeb4b41f0fd885679f4ab', 90, 1, 'andrew', '[]', 1, '2024-01-11 00:37:02', '2024-01-11 00:37:02', '2025-01-11 06:07:02'),
('9486dcbf70ae479480ea4f40c4be04a008845743735fa7fc4f7521fac06e177f8b21c42a39462173', 90, 1, 'andrew', '[]', 1, '2024-01-12 02:29:46', '2024-01-12 02:29:46', '2025-01-12 07:59:46'),
('94f8174b20d1a351ed96a7d15d3f05a3003811cfc35778a5738ec585e302bb95e71c240dd4eab2b6', 189, 1, 'andrew', '[]', 1, '2024-01-19 09:35:04', '2024-01-19 09:35:04', '2025-01-19 15:05:04'),
('9540e23e38235bef519d6d539a961131c2ace3845be3953eb7c9ffc6041648220f559e4e0404ca02', 16, 1, 'andrew', '[]', 1, '2023-10-25 05:57:13', '2023-10-25 05:57:13', '2024-10-25 11:27:13'),
('95a5124fc5121b12f6fcd6e610b78a3f381d921ebe99cca9cccdf0f01e58bf5e46b87690e089e70d', 163, 1, 'andrew', '[]', 1, '2024-01-18 04:41:46', '2024-01-18 04:41:46', '2025-01-18 10:11:46'),
('963cd361cf5e76cceb5a39f861e2b619140fc35f7a1c5e44115871776be91c57bbc508c40f81b50b', 40, 1, 'andrew', '[]', 1, '2023-10-26 07:26:44', '2023-10-26 07:26:44', '2024-10-26 12:56:44'),
('96b9687d141daa620afc57633a6619ba907d5fc12a353b3332aa373782f9820a95d2f41e096a8b08', 72, 1, 'andrew', '[]', 1, '2024-01-18 02:51:14', '2024-01-18 02:51:14', '2025-01-18 08:21:14'),
('96feadcbfc4663240df2e4ef8aeff4e62212e914e3cc2e49730a99419b2c155ac7fb648085dc519f', 90, 1, 'andrew', '[]', 1, '2024-01-10 10:58:24', '2024-01-10 10:58:24', '2025-01-10 16:28:24'),
('971162c3fcb887db16099ee7c4314249bc679e3d2e1486bb9b37344974c11a518dfd610427135e91', 16, 1, 'andrew', '[]', 1, '2023-10-24 07:57:17', '2023-10-24 07:57:17', '2024-10-24 13:27:17'),
('974eee7293a423131c162e122d5e54c66ef0568c3dcb7690d37049c029cd425e8adb67cd406a2b13', 272, 1, 'andrew', '[]', 0, '2024-02-01 00:59:46', '2024-02-01 00:59:46', '2025-02-01 06:29:46'),
('9911a1b03988712476264795cdd85e1bec95e0267828d613703a59de8c742cf80e023008c98f7ecb', 195, 1, 'andrew', '[]', 1, '2024-01-20 01:45:16', '2024-01-20 01:45:16', '2025-01-20 07:15:16'),
('99c65e2d53ac17a376e422d10356bf79b7c6da4d88171f6ed4577037bbb0752578218f57aad1afe0', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:41:56', '2023-10-26 04:41:56', '2024-10-26 10:11:56'),
('9a6b5cb61e91c6de84a4f63cc551cef653a23f832a22c65def3e88539e9a9b30291cf5d41bd11dba', 234, 1, 'andrew', '[]', 1, '2024-01-30 00:03:29', '2024-01-30 00:03:29', '2025-01-30 05:33:29'),
('9aa43cf22687329144ee96dd9a1de3fe80412b0026368d0116d1eac60ebb1b191ad92d9d086e2a86', 188, 1, 'andrew', '[]', 1, '2024-01-19 09:59:57', '2024-01-19 09:59:57', '2025-01-19 15:29:57'),
('9aba36c4110dc4fe73d68c542ca707063cf3525d5a0d6d4893f5461b2aed57d42886d2d59c248c4f', 186, 1, 'andrew', '[]', 0, '2024-01-19 07:16:38', '2024-01-19 07:16:38', '2025-01-19 12:46:38'),
('9ac25a0edbab5472d4eb3d1af1219cce7906f1cbb0d9ca553647f8742b4a9a73e5609fa46c4eb0de', 16, 1, 'andrew', '[]', 1, '2023-10-27 01:48:03', '2023-10-27 01:48:03', '2024-10-27 07:18:03'),
('9acff9ddca8bfe90b94281022a7fb44484df7110eaae5bd9d78ca9c2a5009f8ae725e2ab82608e25', 89, 1, 'andrew', '[]', 1, '2024-01-12 02:39:30', '2024-01-12 02:39:30', '2025-01-12 08:09:30'),
('9b406c42e1493bf6ce3cc08fc380342aa5e68305f71700d3570dc19852bb194a0cd688d11f0c9b9b', 63, 1, 'andrew', '[]', 0, '2023-10-27 03:37:43', '2023-10-27 03:37:43', '2024-10-27 09:07:43'),
('9b565dd204aee963b893c6e48cfa0aba5c987285ddd96d6a7a0e6e9f5dfcd9fab0ee2322910631cc', 274, 1, 'andrew', '[]', 0, '2024-02-01 02:51:16', '2024-02-01 02:51:16', '2025-02-01 08:21:16'),
('9c7bc7782a31e731a3dd6a023047eeec0a1d97f4264722efe7b2614deba0b97f605ae623a6a9959c', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:10:28', '2021-11-15 07:10:28', '2022-11-15 12:40:28'),
('9ce81168a3ca184aceab0e84d674a9222d07a9ad12f53fc3822154df7b2ce92b7ec9c73669e9d606', 45, 1, 'andrew', '[]', 1, '2023-10-26 06:18:28', '2023-10-26 06:18:28', '2024-10-26 11:48:28'),
('9d6b33d450cdeff5ec04ce30671c0576a5e72aa521c50937e1752c84abe59492e3c5a2af3973d19f', 234, 1, 'andrew', '[]', 1, '2024-01-30 02:05:34', '2024-01-30 02:05:34', '2025-01-30 07:35:34'),
('9d7ccac09a925bc7ed004ff6aaac2e3b0d6c8e65c27086ab7d89fa2e0b288a5983929d72aba0c6d2', 96, 1, 'andrew', '[]', 0, '2024-01-05 01:51:10', '2024-01-05 01:51:10', '2025-01-05 07:21:10'),
('9d933e93687e6993aa54d6add8e32302ff9a5bb36200eaf51fd5f22fa6f63f0ee627c0d71e4022b3', 83, 1, 'andrew', '[]', 1, '2023-12-21 06:48:17', '2023-12-21 06:48:17', '2024-12-21 12:18:17'),
('9e320eab65709a65c670c5d803b842df589cb7cd57186ffb84b073725dcfa2a9bde91c138e06fa7d', 204, 1, 'andrew', '[]', 0, '2024-01-22 06:09:14', '2024-01-22 06:09:14', '2025-01-22 11:39:14'),
('9e50118d231dd01261bcd35841e2244ab7c2156dc28a23e1e07438dfe5ed24e97e4c07244027c7e4', 72, 1, 'andrew', '[]', 1, '2024-01-11 06:00:41', '2024-01-11 06:00:41', '2025-01-11 11:30:41'),
('9eef35afee5006e519d73f3e78a3170112179fe8f09517c5d7a25bec81da46468b5bc90062106620', 6, 1, 'andrew', '[]', 0, '2021-11-17 05:57:13', '2021-11-17 05:57:13', '2022-11-17 11:27:13'),
('9f98004a2a9af700aa5d1140d60c903114212a3f5c10df9a55cd8bb4ad4d914bf26242459505e2a1', 1, 1, 'andrew', '[]', 1, '2021-11-15 07:12:00', '2021-11-15 07:12:00', '2022-11-15 12:42:00'),
('a0dc3ec6d1b1b3a77c3a31f9b397166507f0633c3321dfac04008e9a7fca14831107ec1be1b07f6c', 89, 1, 'andrew', '[]', 1, '2024-01-18 23:54:18', '2024-01-18 23:54:18', '2025-01-19 05:24:18'),
('a1272b57cfb137c865188dbc88d7db8d916bf03359d4ded34bca0acba44321f57c65316ea2ca6860', 90, 1, 'andrew', '[]', 1, '2024-01-15 00:02:49', '2024-01-15 00:02:49', '2025-01-15 05:32:49'),
('a16de7d3e2d0c2d1718ff4821214bb00c4e055ed61393c9b8e9bab838aebced6f29a1333ffadff8b', 2, 1, 'andrew', '[]', 1, '2021-11-12 13:44:12', '2021-11-12 13:44:12', '2022-11-12 19:14:12'),
('a1bfaeac6770ddf1651ae0b284f511e693cda93cb1f5ac21eea644139812fe99fdece7ba6ac30dff', 246, 1, 'andrew', '[]', 1, '2024-01-31 00:12:05', '2024-01-31 00:12:05', '2025-01-31 05:42:05'),
('a1c1e59df9dc9463431766daae3b65eae4b07cae3c6f2eb924de96489c7e5f282d155a4ea38d767b', 280, 1, 'andrew', '[]', 1, '2024-02-01 05:26:14', '2024-02-01 05:26:14', '2025-02-01 10:56:14'),
('a23d329b4836ac794ed6355a9702b0f28593aa44bf9d168d4d36627db012e3147b3fa7e3a4a31243', 90, 1, 'andrew', '[]', 1, '2024-01-10 01:55:38', '2024-01-10 01:55:38', '2025-01-10 07:25:38'),
('a30deede91e0cad60d6b35ac5428b4470e6d4bbb37d5f77c82825de96dfc84a3d5f04afebfe1aae5', 11, 1, 'andrew', '[]', 0, '2022-01-26 23:30:15', '2022-01-26 23:30:15', '2023-01-27 05:00:15'),
('a41041bd26bb1bc2437fa642c0fbd99991f6989ef0df23bf797d6251ab8d763c10870e2ac0aa00f7', 16, 1, 'andrew', '[]', 1, '2023-10-26 02:25:23', '2023-10-26 02:25:23', '2024-10-26 07:55:23'),
('a4b384699fcc021a860981fead1f39c2ba7c6bd2f0403e1e1b73d2411f3ef96265d0a54a7ced847a', 261, 1, 'andrew', '[]', 1, '2024-01-31 07:36:17', '2024-01-31 07:36:17', '2025-01-31 13:06:17'),
('a4bf25f214364baeb54b17533e4477584a6016c778305d609c55c10e7a7947b233410d938df43008', 72, 1, 'andrew', '[]', 1, '2024-01-18 02:38:48', '2024-01-18 02:38:48', '2025-01-18 08:08:48'),
('a4f7ed28bab776af08108ae438cf007a57e21d5d3bde845e140a85a7a16887f286eecd81633d31df', 66, 1, 'andrew', '[]', 1, '2023-10-27 07:32:31', '2023-10-27 07:32:31', '2024-10-27 13:02:31'),
('a57920cd0f8d27e0689ee48e0cf4612c62815305c03c75fc654c6d1c278ad95a3922aa6b6def985d', 253, 1, 'andrew', '[]', 1, '2024-01-31 04:25:43', '2024-01-31 04:25:43', '2025-01-31 09:55:43'),
('a58bfb0a7c69aa691b50261c86d9d8d0af73948d310d21faf4c4c21c6f2ed35071517ebfc9856972', 40, 1, 'andrew', '[]', 0, '2023-10-30 01:12:26', '2023-10-30 01:12:26', '2024-10-30 06:42:26'),
('a59964fc2e95e879cbd06e4ed2129eeb7c14648da887786a82ecc4ca8ce63aa92ce308e5f31591e8', 83, 1, 'andrew', '[]', 1, '2024-01-22 09:07:26', '2024-01-22 09:07:26', '2025-01-22 14:37:26'),
('a5c6e298e83a384023ba35a2a6b76e5a8bcaa7dd8090dc34838c7b1e036e36509c90f5ae12fc1838', 83, 1, 'andrew', '[]', 1, '2024-01-19 00:53:43', '2024-01-19 00:53:43', '2025-01-19 06:23:43'),
('a608ba43a7f52250d19ca2479fce3a73fdc743160239cb36bbf7ee42631e62893984ac7320ad7f7b', 22, 1, 'andrew', '[]', 1, '2023-10-23 10:41:38', '2023-10-23 10:41:38', '2024-10-23 16:11:38'),
('a62e2db938277a8def663e2adbd3b13d77cf1b6744e999342ef8ff3d8aca86cfdedfca12deb2acb6', 242, 1, 'andrew', '[]', 1, '2024-01-30 10:05:31', '2024-01-30 10:05:31', '2025-01-30 15:35:31'),
('a70464ba89baf94f4ef48fa2b0fbb1cf41c80ed0f0c8172c6eff7e62c7f3142364bfc4a32d3a24f3', 144, 1, 'andrew', '[]', 1, '2024-01-17 01:05:12', '2024-01-17 01:05:12', '2025-01-17 06:35:12'),
('a71eb6aa03ab8bdf3acae1b41702fe50562ddcf2b9169b02f570c3aaacb043989b8dcedfd7933461', 14, 1, 'andrew', '[]', 1, '2023-10-23 06:40:45', '2023-10-23 06:40:45', '2024-10-23 12:10:45'),
('a7877920b57f0a01daa73668a88c47a6eaa9f897e53795f6dfad879360d7dd1ffac6fe4853f94acb', 55, 1, 'andrew', '[]', 1, '2023-10-27 04:06:45', '2023-10-27 04:06:45', '2024-10-27 09:36:45'),
('a821428f12453792eec3794ce06f919e80fca1f510a8d492a6dd1010cb175940d5e6c49e4df01a2e', 20, 1, 'andrew', '[]', 1, '2023-10-23 10:13:59', '2023-10-23 10:13:59', '2024-10-23 15:43:59'),
('a8817f87bb495c661500940196851dc57f478c2b089c8965d2c74881e546c57513356cc3d7901f9e', 83, 1, 'andrew', '[]', 1, '2024-01-05 02:17:01', '2024-01-05 02:17:01', '2025-01-05 07:47:01'),
('a8998bcc1fc0451d7780e3ae402e1755585b65d2b926dee9d17163248a6172fbf4131107cf5291eb', 222, 1, 'andrew', '[]', 1, '2024-01-22 10:00:50', '2024-01-22 10:00:50', '2025-01-22 15:30:50'),
('a8f528bc72b214d904676bb8732830f6363538525d4126e0981077dc0da23f6e6a2987c75bdede5b', 262, 1, 'andrew', '[]', 1, '2024-02-01 06:05:18', '2024-02-01 06:05:18', '2025-02-01 11:35:18'),
('ab159690d12525497f555a0c4a76a8bd3e9c66a07a0e394bbdbda8423e6c63e9eda97371bc43fbac', 166, 1, 'andrew', '[]', 1, '2024-01-18 04:59:32', '2024-01-18 04:59:32', '2025-01-18 10:29:32'),
('ac0f79cf2e1744687eed604cf76d6d76a2976426d0fbbe48c6f8f7fa4f291dcaa4e5b63071ad1cd1', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:40:25', '2023-10-24 01:40:25', '2024-10-24 07:10:25'),
('ac34496a7fa909933899346964c5a3dfdfcc1f187a37ec50d11d6cc5a4dc7c15464aba4b1f0d0be2', 9, 1, 'andrew', '[]', 0, '2021-11-17 06:26:46', '2021-11-17 06:26:46', '2022-11-17 11:56:46'),
('aec7a7306ed5685f3cd51a5650d1325fe03206c5794586a2d78673bd9a691fa8862b5e5cebde4e22', 14, 1, 'andrew', '[]', 1, '2023-10-29 23:54:19', '2023-10-29 23:54:19', '2024-10-30 05:24:19'),
('afe797a786577e66ca9a2e92e6a3e5cd5d5ea352e00d557c1d60ef931ca52ab90176004912788ddf', 128, 1, 'andrew', '[]', 0, '2024-01-12 02:20:56', '2024-01-12 02:20:56', '2025-01-12 07:50:56'),
('b108e7b7f896c5a80c96be9d2c8c900f8a7f21846a52029a90ff41ad6f94df529cf26df1c134e1f3', 188, 1, 'andrew', '[]', 1, '2024-01-22 01:36:22', '2024-01-22 01:36:22', '2025-01-22 07:06:22'),
('b1113e6640a2ee8ca11cecb521aab72bcb4e3de05e93971040453b62324bfee27d37a2c600edc10a', 55, 1, 'andrew', '[]', 1, '2023-10-27 04:14:23', '2023-10-27 04:14:23', '2024-10-27 09:44:23'),
('b163b532b4a13f722a7f7873f12f7854a7c3f7c64343b17a73ef0720d7867cb36e128b62e969538f', 16, 1, 'andrew', '[]', 1, '2023-10-25 02:09:20', '2023-10-25 02:09:20', '2024-10-25 07:39:20'),
('b1714a6bebb3b7d42ef1fd03051ba00bee957d0caefbfae4225fbf3929d0339b5f40acab49d0fc27', 29, 1, 'andrew', '[]', 0, '2023-10-24 10:05:28', '2023-10-24 10:05:28', '2024-10-24 15:35:28'),
('b1799f8f7850627945a7988813cfabcb2cd25806b5481e0e62e2e2cf23d682cc2d7958f83cec8c05', 13, 1, 'andrew', '[]', 1, '2023-10-20 07:10:49', '2023-10-20 07:10:49', '2024-10-20 12:40:49'),
('b207369ba96f6469a2d1a314d23eb77690a167944fd2bd2253f44d52db60cdb3bf0e1f580f35bb20', 51, 1, 'andrew', '[]', 1, '2023-10-26 07:24:59', '2023-10-26 07:24:59', '2024-10-26 12:54:59'),
('b21da1fc844ef8583f998b4e32134b5fee9b2db88b6c4792b80813dc66a8e4fc8d88ae397f8802e5', 72, 1, 'andrew', '[]', 1, '2024-01-18 08:12:10', '2024-01-18 08:12:10', '2025-01-18 13:42:10'),
('b223e1110efc87cb982b027c672bc65cf85fcde683116317d4fd4b83608b3a4b18cf4edca0807ad1', 205, 1, 'andrew', '[]', 0, '2024-01-22 06:09:38', '2024-01-22 06:09:38', '2025-01-22 11:39:38'),
('b22f782a9a93ad469a06dcf029a3e95844f945f751dee8906edba3fdd3c36619dc5af03a5343168f', 65, 1, 'andrew', '[]', 0, '2023-10-27 07:17:36', '2023-10-27 07:17:36', '2024-10-27 12:47:36'),
('b24328dca466c88a243695e84139a7cd41a43ece10b84d2c603a7152a985f5c76fd43bcc38bf5b95', 14, 1, 'andrew', '[]', 1, '2023-10-24 01:49:28', '2023-10-24 01:49:28', '2024-10-24 07:19:28'),
('b2dd70568924a3549ad778980cf7db9e5a9a62f610ec9a02cb62a4226edab8585beee8f42c91d919', 234, 1, 'andrew', '[]', 1, '2024-01-31 04:31:42', '2024-01-31 04:31:42', '2025-01-31 10:01:42'),
('b2e92a079261fda1fc4572c49fe30639307fc1bd545d1f79c73904cb015082f0f08350df5815a515', 107, 1, 'andrew', '[]', 1, '2024-01-09 09:58:06', '2024-01-09 09:58:06', '2025-01-09 15:28:06'),
('b2f46e35d4895f1ecbc3dcec57ee7b426760315466b21a1b4a7f2d1e91422879483cfc3ead21fff2', 40, 1, 'andrew', '[]', 1, '2023-10-27 01:18:56', '2023-10-27 01:18:56', '2024-10-27 06:48:56'),
('b30611e28ba3abecf73a79be1a686aacc6f7b48466f822b2f422a434341b5626e9b13dda908e29ce', 90, 1, 'andrew', '[]', 1, '2024-01-10 03:20:54', '2024-01-10 03:20:54', '2025-01-10 08:50:54'),
('b359f9509f82107343b33f276fc2dff30e23b6301db2582d52da832d65f1c20a2f65aa684e510ffa', 234, 1, 'andrew', '[]', 1, '2024-01-30 01:39:50', '2024-01-30 01:39:50', '2025-01-30 07:09:50'),
('b3b4c61e8fa742d6a2be296b616d41e700c4b616c96bde82fdf7ad004838c1bb394671663c2e01be', 89, 1, 'andrew', '[]', 1, '2024-01-17 07:02:19', '2024-01-17 07:02:19', '2025-01-17 12:32:19'),
('b3d355f8541cfa8a7f0631752be9522becfc43c9fd2c4c351c3f5a979d553d260d9edaf58a767779', 188, 1, 'andrew', '[]', 1, '2024-01-19 07:48:40', '2024-01-19 07:48:40', '2025-01-19 13:18:40'),
('b3db92b671d3abc455f65c4651e97e75c183377dec47249eb86635ee1d65b5a2925cdc1c2826f6e3', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:32:46', '2024-01-11 08:32:46', '2025-01-11 14:02:46'),
('b3dcde930e4da65a835aa0ec4c768a487b82010223f80d62cd3c323f1485f4100f32d7b7768a750b', 207, 1, 'andrew', '[]', 1, '2024-01-22 07:15:12', '2024-01-22 07:15:12', '2025-01-22 12:45:12'),
('b4f6e985354b949b75cead5d594b2f6daece82ed83f8aa7fb7ca13ddf5c22a19647ff677562844b1', 169, 1, 'andrew', '[]', 1, '2024-01-18 05:43:18', '2024-01-18 05:43:18', '2025-01-18 11:13:18'),
('b4f7d6a8264bf46451f327888cb894c18bf0645d0329ef062cd2d876d1bf45f2bcd1e8d40659a682', 33, 1, 'andrew', '[]', 1, '2023-10-24 23:37:18', '2023-10-24 23:37:18', '2024-10-25 05:07:18'),
('b5cd70a78e929e86a34a04a65701eaa54cde7c45c0750c6e686430d1f369c21a6381220423e92b7f', 33, 1, 'andrew', '[]', 1, '2023-10-26 04:50:46', '2023-10-26 04:50:46', '2024-10-26 10:20:46'),
('b5d4dee80aaa47387e99582ae15b5238a3411e93e322fb7fc4ba1476c034f69c87e6e59280fe958b', 16, 1, 'andrew', '[]', 1, '2023-10-24 01:43:41', '2023-10-24 01:43:41', '2024-10-24 07:13:41'),
('b5f5e1b19414f17eba34887585f231a81d5458a1dea5611a17a276bba7f23a4e50c2979c6d1f390a', 115, 1, 'andrew', '[]', 1, '2024-01-10 05:42:54', '2024-01-10 05:42:54', '2025-01-10 11:12:54'),
('b66450491f38c32000526e79fbb9981dcf69ab5ae277df8e4f75f6e48ac7b8c6f07e9f1df884a778', 213, 1, 'andrew', '[]', 1, '2024-01-22 07:44:54', '2024-01-22 07:44:54', '2025-01-22 13:14:54'),
('b6898651eb0c3974192f4f5f3b5d1748a5768e3437b8491fee499c97d510eb935cbe2b15ee37a675', 188, 1, 'andrew', '[]', 1, '2024-01-24 00:05:15', '2024-01-24 00:05:15', '2025-01-24 05:35:15'),
('b710e20081f633af43574322a3546b8734a8465bab4479931cb0ff7a649c79dd9c0c30b2abf875e7', 234, 1, 'andrew', '[]', 1, '2024-01-29 23:25:27', '2024-01-29 23:25:27', '2025-01-30 04:55:27'),
('b77a24b074db0eeae72a33238b250a2f5b87732fb60be1e5d86f01ff438aa409335c62c0114133ed', 138, 1, 'andrew', '[]', 1, '2024-01-16 06:32:49', '2024-01-16 06:32:49', '2025-01-16 12:02:49'),
('b77ad35aa07fa836fd19226093c8b89a9407258275b3bc7594c639c2c8d76cd12def8b0c0eb7d90b', 16, 1, 'andrew', '[]', 1, '2023-10-24 23:02:45', '2023-10-24 23:02:45', '2024-10-25 04:32:45'),
('b7a2236e9d4b778955340dd5a5146a38ae0ad33cb4ca4cac350ce7e89bb570a8f13c40397d289242', 40, 1, 'andrew', '[]', 1, '2023-10-26 02:14:23', '2023-10-26 02:14:23', '2024-10-26 07:44:23'),
('b7cd8e4f3c01daa92a317060d29c0aa51a720532bda0cea32f65fd661b9b67d7fc7d7693ffc760f9', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:33:58', '2024-01-04 22:33:58', '2025-01-05 04:03:58'),
('b815c9cfaeadd1560c284deaee27de0a4b48588b1b3ff8eb6759626e402cafe90e78949ee7b11651', 16, 1, 'andrew', '[]', 1, '2023-10-27 09:27:04', '2023-10-27 09:27:04', '2024-10-27 14:57:04'),
('b8da4548be7e8025cdd879299e9c02e51ab8fd4df3bb18d2b681b19d501d826749b77ac462bcb22d', 259, 1, 'andrew', '[]', 0, '2024-01-31 07:21:52', '2024-01-31 07:21:52', '2025-01-31 12:51:52'),
('b92c6a65692bd2b4e42d19b948d963e47c8197af4e8bd3137c7bc3265755f9dcd0f7c51f76468f82', 72, 1, 'andrew', '[]', 1, '2024-01-19 05:15:20', '2024-01-19 05:15:20', '2025-01-19 10:45:20'),
('b9697356296f26328a70247bbefed78ca099fc02adcf24ae16a161dda91618fe7dadd718febe77de', 234, 1, 'andrew', '[]', 1, '2024-01-30 07:41:29', '2024-01-30 07:41:29', '2025-01-30 13:11:29'),
('b97b568b64be77f5cc674d692a3a44c93216dc285cc634258186bb4e20e339ef2b31b26d77c69f4a', 154, 1, 'andrew', '[]', 0, '2024-01-17 10:26:03', '2024-01-17 10:26:03', '2025-01-17 15:56:03'),
('b9a641c8c83d3585281e5a73a5f211139578818b0b835e9ea050041b6868eff162d3e6c6a65b77f8', 83, 1, 'andrew', '[]', 1, '2024-01-22 00:41:25', '2024-01-22 00:41:25', '2025-01-22 06:11:25'),
('ba39262bd5fd3d9b51a46bc92174044053b307790bd5cbcc65291606a4d87f12a6244423685bf832', 187, 1, 'andrew', '[]', 1, '2024-01-19 07:22:53', '2024-01-19 07:22:53', '2025-01-19 12:52:53'),
('ba60f1ca4da8e3b553b316100d574bad7b2db3f577c6f42160f4baa1ff77cce98f621a78328c28d6', 83, 1, 'andrew', '[]', 1, '2024-01-19 00:59:08', '2024-01-19 00:59:08', '2025-01-19 06:29:08'),
('bb80cbce890c9c66a133dc6fc9789ce3b447509a6642346e0d5f526bd907a0c18c03b388fc0b3f40', 230, 1, 'andrew', '[]', 0, '2024-01-29 02:55:46', '2024-01-29 02:55:46', '2025-01-29 08:25:46'),
('bb8e3ec1d94396dec959f4e10507c695fc2ac2cf29879ff8cde9e4129386a00b325a466528642f63', 56, 1, 'andrew', '[]', 1, '2023-10-27 03:00:53', '2023-10-27 03:00:53', '2024-10-27 08:30:53'),
('bb9c2e2d662fdc12657989e1ad6224f8ad85f9c35fa94f5c129868f04f9ddd865d6af48c8f9d7e39', 72, 1, 'andrew', '[]', 1, '2024-01-10 00:38:53', '2024-01-10 00:38:53', '2025-01-10 06:08:53'),
('bbc01fb8560f091bf7f4d8c9d67187ad6aad91e4336d2cc6965d8d184dbe2e760b013f28bc36ff3f', 175, 1, 'andrew', '[]', 0, '2024-01-18 08:10:06', '2024-01-18 08:10:06', '2025-01-18 13:40:06'),
('bbd1e50a0d27a32bf8b4c86caa0d49936f1a3b4ecbdaadc84dea1dd7a46c65555d41c29ce23dcbf2', 251, 1, 'andrew', '[]', 1, '2024-01-31 02:10:45', '2024-01-31 02:10:45', '2025-01-31 07:40:45'),
('bbec4d9a96d3436a44cd67def2e0ae1d6e482b0104ad98c000da1dccbb724b7a987ac0eaf2627917', 1, 1, 'andrew', '[]', 1, '2021-11-12 14:40:17', '2021-11-12 14:40:17', '2022-11-12 20:10:17'),
('bc24676245c61e2f823a7288e02e75fe0d24caba1a1c0af1833143a039b70053762632e1847bea8c', 72, 1, 'andrew', '[]', 1, '2024-01-10 11:13:28', '2024-01-10 11:13:28', '2025-01-10 16:43:28'),
('bc3e8e53636c0c25290123aacbf4d2c5b52d5f74eef742554d1f309cf35670cabd034936da698a13', 75, 1, 'andrew', '[]', 0, '2023-10-27 10:39:55', '2023-10-27 10:39:55', '2024-10-27 16:09:55'),
('bc847d1da41711d2d26c09456fecdcb528f1086d0c7da8ba823bd7f36a0b69fcf10ddd66efbf7032', 72, 1, 'andrew', '[]', 1, '2024-01-17 02:16:13', '2024-01-17 02:16:13', '2025-01-17 07:46:13'),
('bcdb75b048b2e6db19006bd0037a5ffe27a59dbc391df9671d29c6bc4b7d032f916aed4881586bca', 110, 1, 'andrew', '[]', 0, '2024-01-10 01:25:42', '2024-01-10 01:25:42', '2025-01-10 06:55:42'),
('bd279392b34fe37f61441f821bf534ee685ad7cfab452846c5b4a50a181e8c28311dd3ece5c29d14', 16, 1, 'andrew', '[]', 1, '2024-01-19 02:12:35', '2024-01-19 02:12:35', '2025-01-19 07:42:35'),
('bdf12b49e7e21658378e11e8e03e8b4165fbaa2656fd0173626482672db32ab5b274b05239db2bbf', 176, 1, 'andrew', '[]', 1, '2024-01-18 23:53:50', '2024-01-18 23:53:50', '2025-01-19 05:23:50'),
('be18e4f0d5fbe4400ec846b2cf940b7cec6fee30df03006fcc832c13680e28fabaece160443c849c', 35, 1, 'andrew', '[]', 1, '2023-10-25 01:54:27', '2023-10-25 01:54:27', '2024-10-25 07:24:27'),
('be2ad877a5babacf3adf958624cee3e0f57ce276ce91c5bb34c3b61da249d6ea3276027a72070026', 188, 1, 'andrew', '[]', 1, '2024-01-22 00:28:24', '2024-01-22 00:28:24', '2025-01-22 05:58:24'),
('be5abc9b7ce0c9bea226e681465a292dd5bfa23664e1167aaa626ab6d1e32bb10327442823aa3df2', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:32:20', '2024-01-12 05:32:20', '2025-01-12 11:02:20'),
('be6baf1e7b2ee0515766852d8d2a652c80ee5cf96808a968097fb6a9c94f9288bee58b19aeb27a32', 59, 1, 'andrew', '[]', 1, '2023-10-27 03:10:54', '2023-10-27 03:10:54', '2024-10-27 08:40:54'),
('bee6ab153006d7f7b6397c06a512dd086ae9b710da1965e6d2a0f9a345481192e264ae1c2fd747e4', 16, 1, 'andrew', '[]', 1, '2023-11-02 04:30:17', '2023-11-02 04:30:17', '2024-11-02 10:00:17'),
('bf716b58510afd15f46913d23d40bb40dae5dc612d279b4af614db6b8b28988ecf950043952a0ffe', 80, 1, 'andrew', '[]', 1, '2023-12-21 01:20:38', '2023-12-21 01:20:38', '2024-12-21 06:50:38'),
('bfd34c4fe787ac1cd77aa340bad64db5f496080250a87c404e075d8bda9b3eadb256066b27903476', 200, 1, 'andrew', '[]', 1, '2024-01-22 05:06:36', '2024-01-22 05:06:36', '2025-01-22 10:36:36'),
('c0798d5507d8c177779639814377e2126daa63a2237e60c4d7b4a1697111bd2d0a958ca6fce3693a', 30, 1, 'andrew', '[]', 1, '2023-10-24 10:21:40', '2023-10-24 10:21:40', '2024-10-24 15:51:40'),
('c0a7de5c9c5a5285056d346469c0bebd8b3729b412868e5da5fd28a9b2707fcf38ab04a319da0c4c', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:22:24', '2024-01-04 22:22:24', '2025-01-05 03:52:24'),
('c0dd3c6537582255d85666d1e32dec81287e5b22654673129c7468c9d04dec24a8145fc2c2999aeb', 90, 1, 'andrew', '[]', 0, '2024-01-23 03:58:59', '2024-01-23 03:58:59', '2025-01-23 09:28:59'),
('c190437ca2ba78763a6b3f5ed7adbdb9b448d7a455dad26df7292e8bbb5c70e1253b6c18ec9373bf', 89, 1, 'andrew', '[]', 1, '2024-01-06 02:39:39', '2024-01-06 02:39:39', '2025-01-06 08:09:39'),
('c19642b8bd9feefc4682f199ddac4bf490a0717d1ba6b81555e40eb89b46c62e103b7140c934c843', 124, 1, 'andrew', '[]', 1, '2024-01-11 10:05:02', '2024-01-11 10:05:02', '2025-01-11 15:35:02'),
('c1ee0100608c0a44e96054fb45ce6ca78a4baf1eeb9c71b7cac904c441e5867a27afd6fcaf465244', 265, 1, 'andrew', '[]', 1, '2024-01-31 10:25:59', '2024-01-31 10:25:59', '2025-01-31 15:55:59'),
('c2016564fe71363724abfdc0d6b3f72e57f5d5c7db349151f51fddafdf31942a662f35986ee942fc', 263, 1, 'andrew', '[]', 1, '2024-01-31 08:15:18', '2024-01-31 08:15:18', '2025-01-31 13:45:18'),
('c2a172409a3f5c7a262e363951aa033a665be19232771fa186eb7e50dff2cadc42a473dfd35f3be3', 72, 1, 'andrew', '[]', 1, '2024-01-18 02:38:32', '2024-01-18 02:38:32', '2025-01-18 08:08:32'),
('c2fdf427794ba6bc528ecc5adc1496013f891a26138b0d1b9629e69673308c4d5941c818c371b7ea', 116, 1, 'andrew', '[]', 1, '2024-01-10 07:39:33', '2024-01-10 07:39:33', '2025-01-10 13:09:33'),
('c31c7249485a0199478b56b01efb729d51e30f80a0ac2b6bdeff3bc70fbcde832221c8c8e4138612', 181, 1, 'andrew', '[]', 1, '2024-01-19 04:14:54', '2024-01-19 04:14:54', '2025-01-19 09:44:54'),
('c34b432e1683c0d5ecb99f1fb40a9a7c6c953c46aac065d9e3805c88810514c801b393546c2db39f', 72, 1, 'andrew', '[]', 1, '2024-01-17 05:20:21', '2024-01-17 05:20:21', '2025-01-17 10:50:21'),
('c3692d0c8663323222c56533f43c3e178667ea7bed15bd4adc39635a3df2f77d40eb0db0464a6e74', 127, 1, 'andrew', '[]', 0, '2024-01-12 00:29:27', '2024-01-12 00:29:27', '2025-01-12 05:59:27'),
('c3ef4dfd6ecfad82b7f27d2072e9866d0f87f6fd8c3050c5ef610a7305561dce76be65750a3cef73', 55, 1, 'andrew', '[]', 1, '2023-10-27 03:04:24', '2023-10-27 03:04:24', '2024-10-27 08:34:24'),
('c3f0787471fdaef3a3545a77f585ec5641fce9f2ce8c93d6a0846e3f8b0de5678b22612ab08df2d2', 284, 1, 'andrew', '[]', 1, '2024-02-01 06:12:59', '2024-02-01 06:12:59', '2025-02-01 11:42:59'),
('c40624e2b77bb47adbb8f6a6d38fe9e149a676f3a2e99d516687d1c3786fe05f5f515a1e2d8e30c2', 218, 1, 'andrew', '[]', 1, '2024-01-22 09:33:25', '2024-01-22 09:33:25', '2025-01-22 15:03:25'),
('c44cc705dd210396428966250689ad0dec68732ff952755b19790d754226726d6c58e08ec30f0bbf', 89, 1, 'andrew', '[]', 1, '2024-01-18 06:50:49', '2024-01-18 06:50:49', '2025-01-18 12:20:49'),
('c47f4bcd62abb1a13691cc84cd01ec97471426be2cac6360d390130135b0cd10a8849f7cbc12408c', 264, 1, 'andrew', '[]', 1, '2024-01-31 08:33:20', '2024-01-31 08:33:20', '2025-01-31 14:03:20'),
('c50f71622415486968dd07a90420d40b7c50eb3c5a333a21e426570fcacc0fdb0f6274b6746ae3f9', 72, 1, 'andrew', '[]', 1, '2024-01-10 09:39:26', '2024-01-10 09:39:26', '2025-01-10 15:09:26'),
('c596e60773d41e8afba508d2ce6ed55dc0187be760b55520b27e5f5a119897809cd47ef163a6d626', 16, 1, 'andrew', '[]', 1, '2023-10-30 00:34:11', '2023-10-30 00:34:11', '2024-10-30 06:04:11'),
('c5b55810b5dd45ad1e23ad16c0d95c73b7414423aa42a17f6db5837737c4ee59071f70bd2470dc73', 188, 1, 'andrew', '[]', 1, '2024-01-24 02:53:44', '2024-01-24 02:53:44', '2025-01-24 08:23:44'),
('c5e7bd83d8916d8717741509cd92786211a60aa2f4a843801cb05642a6d178d7797de43f975f0352', 67, 1, 'andrew', '[]', 1, '2023-10-27 07:39:36', '2023-10-27 07:39:36', '2024-10-27 13:09:36'),
('c61a5416b80af63007e41c56727da5f6b7325e453528d5fca4381273c09794dbe46cc7a9e89e70ff', 105, 1, 'andrew', '[]', 0, '2024-01-09 08:56:56', '2024-01-09 08:56:56', '2025-01-09 14:26:56'),
('c61b8e794b20f68eb23676d3aef0e547f53418d4b4129a5eef1648a8fab5d55b0434e2077d81bcde', 234, 1, 'andrew', '[]', 1, '2024-01-30 07:39:00', '2024-01-30 07:39:00', '2025-01-30 13:09:00'),
('c667cac54bdd6425bf0c6d9fd6f628f424ed3d7e249589cf19c5ce6b73918c9ccb185aed32baad0e', 72, 1, 'andrew', '[]', 1, '2024-01-18 00:21:04', '2024-01-18 00:21:04', '2025-01-18 05:51:04'),
('c68a23f8a9dc452113525ec799eee068d1ad3f204da397184167e4be4ef51b22f5beca590c024091', 149, 1, 'andrew', '[]', 1, '2024-01-17 02:40:36', '2024-01-17 02:40:36', '2025-01-17 08:10:36'),
('c7388c1f69af5feb5ee792661f6b1701f7d50e166833b899b48e2dc27c68661dc92fb0436650b128', 158, 1, 'andrew', '[]', 1, '2024-01-18 02:50:46', '2024-01-18 02:50:46', '2025-01-18 08:20:46'),
('c77ec2d20cbb19c44a625af84a9af90e5d684e58064fdd9d138db2087782f1a4942937c23e03f364', 91, 1, 'andrew', '[]', 0, '2024-01-02 05:54:07', '2024-01-02 05:54:07', '2025-01-02 11:24:07'),
('c7987e8dcedb9c80a4bac2c703cba2463f445fc359a8d74f0d173a29a7887f31d1d386a26350c3aa', 95, 1, 'andrew', '[]', 1, '2024-01-04 23:24:10', '2024-01-04 23:24:10', '2025-01-05 04:54:10'),
('c79e8db4aaeaccb4af824440c6e7c2b3af3078a1645bdb26ad1820a44f1dc20f18a651e23101f685', 104, 1, 'andrew', '[]', 1, '2024-01-09 08:13:25', '2024-01-09 08:13:25', '2025-01-09 13:43:25'),
('c7aa4d76ebe8a322f32a5c74e97e1cb701ac7a1634e22c8073aa1c103f88ae45cea2696d958e6684', 126, 1, 'andrew', '[]', 1, '2024-01-12 00:06:26', '2024-01-12 00:06:26', '2025-01-12 05:36:26'),
('c7e105453f79991a5e12c1f491f9dc4041dc4cc4bbf178dc51bd7f63b82539dfe84498a289584dde', 25, 1, 'andrew', '[]', 1, '2023-10-24 01:55:29', '2023-10-24 01:55:29', '2024-10-24 07:25:29'),
('c8248d377aca9bdcf59fa67db42406cc781fe39edd10c1d5c4401dceed1f3041542177896451734f', 266, 1, 'andrew', '[]', 0, '2024-01-31 23:31:50', '2024-01-31 23:31:50', '2025-02-01 05:01:50'),
('c8279ebeb4afe0dcdb715022237a97a6a1a374f131bf2f22fe19ec1f0981c66dbaee519128ef9b1b', 2, 1, 'andrew', '[]', 0, '2021-11-15 11:55:20', '2021-11-15 11:55:20', '2022-11-15 17:25:20'),
('c8854c30be04439f1466f4d63a94f3df959aa6a75c4235a2450691cd2a5fccd350e80f17c4821655', 223, 1, 'andrew', '[]', 1, '2024-01-22 10:03:43', '2024-01-22 10:03:43', '2025-01-22 15:33:43'),
('c8ee15ded8aaab5c2cc33fb8923e8ef76fe493fb4d9396b2233d3cd2fa2bea5aed2b76d9e1a75de1', 16, 1, 'andrew', '[]', 1, '2023-10-24 06:43:53', '2023-10-24 06:43:53', '2024-10-24 12:13:53'),
('c8f58513fe04b7d5b123b80568bb51e8ffda7bba703f3c71f5eb8c1b2f71aecdbf824a18ef79288e', 23, 1, 'andrew', '[]', 1, '2023-10-24 01:39:07', '2023-10-24 01:39:07', '2024-10-24 07:09:07'),
('c9290daae7f3c27de11b6388ecd513a60bd790b99c2211f9568d942d457f6b78a5bd14e5f2767999', 89, 1, 'andrew', '[]', 1, '2024-01-03 01:26:54', '2024-01-03 01:26:54', '2025-01-03 06:56:54'),
('c93c29a7e114c66e26b9670ae58ba1d2a21a52d677b55fee351563afe7135d86c900057225cc5858', 16, 1, 'andrew', '[]', 1, '2023-10-27 04:28:39', '2023-10-27 04:28:39', '2024-10-27 09:58:39'),
('c98e3c5c9b1ce41e974050ddc58b80db0855846d69b4a90fc547553a0fb9d2ca5263cf85d5a24f40', 42, 1, 'andrew', '[]', 1, '2023-10-26 05:22:38', '2023-10-26 05:22:38', '2024-10-26 10:52:38'),
('ca249f0e7a04cfdeee3447f87f2bc0ac25bfd9209f894a0b01eb984c768b58c503c6510489636026', 16, 1, 'andrew', '[]', 1, '2024-01-19 05:54:41', '2024-01-19 05:54:41', '2025-01-19 11:24:41'),
('ca3809e043d6300aedadc7ccdec4e9bd42cf1c500cfff0fd8535b3a96bcdf402ff81c6171bb73a2f', 234, 1, 'andrew', '[]', 1, '2024-01-31 04:26:43', '2024-01-31 04:26:43', '2025-01-31 09:56:43'),
('cadeb2add3cb28960c52ef38b5229fcfc8eba60ae49d0c380e72a64f275ce87c84ddf1ab58ef7da7', 85, 1, 'andrew', '[]', 1, '2023-12-29 01:59:28', '2023-12-29 01:59:28', '2024-12-29 07:29:28'),
('cb4e68d5d8e95c97cc2c30a04cf6ee30d8753b373f3f1f603a66848b7cd45ce1ea770b44e30bb968', 16, 1, 'andrew', '[]', 1, '2023-10-23 06:46:11', '2023-10-23 06:46:11', '2024-10-23 12:16:11'),
('cbcde5cf7eccab526308d60d83183194262f3aecfb48d14cc1721118b5d441017482287269dbadc7', 131, 1, 'andrew', '[]', 0, '2024-01-12 05:24:27', '2024-01-12 05:24:27', '2025-01-12 10:54:27'),
('cbd930e15a24c4d455a838804c7a7aa9b29e1123c01d4131be53a4b3f4d53110a8a2f88bd09308e4', 16, 1, 'andrew', '[]', 1, '2023-10-24 07:15:11', '2023-10-24 07:15:11', '2024-10-24 12:45:11'),
('cc7635de035cc7ddb006fc225e7d8446a69557eb0f7e3b9ade6f2a60dfc29cc9ffcdea7c5f1a5796', 220, 1, 'andrew', '[]', 1, '2024-01-22 09:46:17', '2024-01-22 09:46:17', '2025-01-22 15:16:17'),
('ccb2e0a59ba297619aa728aaebe69f8d62f266a46e8f7546c2f1ea8dd8e801bf754b52b48f436613', 83, 1, 'andrew', '[]', 1, '2024-01-07 23:54:10', '2024-01-07 23:54:10', '2025-01-08 05:24:10'),
('ccfb9a8f7f2a08a3452062a6f5ead44166beb5507fe68cb53b6091432a1b0a0850920feb7292b188', 24, 1, 'andrew', '[]', 1, '2023-10-24 01:32:56', '2023-10-24 01:32:56', '2024-10-24 07:02:56'),
('cd0abff61ab9043cfd0841ffc801b15b782ed4599675a36333b8d6d426bbbd14429e18d74f8b4cfd', 72, 1, 'andrew', '[]', 1, '2024-01-18 07:04:37', '2024-01-18 07:04:37', '2025-01-18 12:34:37'),
('cd5f73f6acc88810bc4fbd36f602218f6f57e5a76dd3064c02050f6a5d3881ec8a5fcf8db0ad099e', 89, 1, 'andrew', '[]', 1, '2024-01-16 23:48:01', '2024-01-16 23:48:01', '2025-01-17 05:18:01'),
('cdf5d2d173215c61fd52238a8d515c678fc278576ea7a935d07302b3ee57f6553fb2458b394ecf21', 136, 1, 'andrew', '[]', 1, '2024-01-16 05:05:43', '2024-01-16 05:05:43', '2025-01-16 10:35:43'),
('ce295a15a66439e4b7668d60ebada287947d378c75f28553969e12ab8e043f529b0fb2cc6ab25ec9', 1, 1, 'andrew', '[]', 1, '2021-11-12 13:17:23', '2021-11-12 13:17:23', '2022-11-12 18:47:23'),
('ce2af5778184aff88034f88ef518d77da4edb15e0dc29e32c3ff1690f96865c3cc6f19b4abfea309', 40, 1, 'andrew', '[]', 1, '2023-10-27 08:09:37', '2023-10-27 08:09:37', '2024-10-27 13:39:37'),
('cff71add7e2dff5e996c3cdcb13bc68764ef11a1452047f28dbfb5386db8f321faa443afd18fb718', 16, 1, 'andrew', '[]', 1, '2023-10-26 09:01:52', '2023-10-26 09:01:52', '2024-10-26 14:31:52'),
('d00c156505119cec43a64dc414e736bfe29378a269ab9e1e501c1bd48abee29435c5fd4c4f53dc7b', 6, 1, 'andrew', '[]', 1, '2021-11-17 05:01:37', '2021-11-17 05:01:37', '2022-11-17 10:31:37'),
('d0392df761082101e661dc53069eb1ca4591af4f1ffb05cef7c7d53828609be5007c2b37f14e54ae', 55, 1, 'andrew', '[]', 1, '2023-10-27 02:31:39', '2023-10-27 02:31:39', '2024-10-27 08:01:39'),
('d124b0007f8f899dc88c3ef3f4dafdf94f83ef6c93bc5e08f8d000bab36ca8dd9d49371fb0c2ca4e', 147, 1, 'andrew', '[]', 1, '2024-01-17 01:46:20', '2024-01-17 01:46:20', '2025-01-17 07:16:20'),
('d13f0e4b47da122140ac4838906be9a91e8ab2ffedcf685fe2f89d3fdf245dc53e2ff66a7204722d', 83, 1, 'andrew', '[]', 1, '2024-01-12 00:12:03', '2024-01-12 00:12:03', '2025-01-12 05:42:03'),
('d181fb38c031d9fd64c25baa98cc25e0180980aad3c0c83dd89f77ef18065ff2d326967311fe9e12', 72, 1, 'andrew', '[]', 1, '2024-01-19 05:06:20', '2024-01-19 05:06:20', '2025-01-19 10:36:20'),
('d19dc26f9a44a669fb9ef7de5c9678c8b92e1a439e39505d8bca57699def60512769b485afff7041', 206, 1, 'andrew', '[]', 1, '2024-01-22 07:10:33', '2024-01-22 07:10:33', '2025-01-22 12:40:33'),
('d257fa7f7912bea3535fbf08f23227bf03a4614e8c35eeecc59f2c4259983aaf23848acbf35b3bf0', 32, 1, 'andrew', '[]', 1, '2023-10-24 23:06:24', '2023-10-24 23:06:24', '2024-10-25 04:36:24'),
('d274c363a9540914b98d60ce8a824e9c5b2406c1b9da954c6b5603b8d6c396c60491508d1a9c4a3a', 134, 1, 'andrew', '[]', 1, '2024-01-16 04:34:19', '2024-01-16 04:34:19', '2025-01-16 10:04:19'),
('d279edce0b97653a1b0df79a3efa5509dd60d177a3f7113dfe6001d9834470ff6cad092d4a97a218', 267, 1, 'andrew', '[]', 1, '2024-02-01 00:04:32', '2024-02-01 00:04:32', '2025-02-01 05:34:32');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d35f1ea4cfa180e00f038115f474e49f7659cff5b0c5fed00db7c365c822b65b52563b53f6cf0208', 189, 1, 'andrew', '[]', 1, '2024-01-19 08:53:38', '2024-01-19 08:53:38', '2025-01-19 14:23:38'),
('d3b3ad38664213230c11f8ce9b53934ecc0e2ea8b8544666f808da2e102343e9300ac3cdbf675d9d', 275, 1, 'andrew', '[]', 1, '2024-02-01 05:44:38', '2024-02-01 05:44:38', '2025-02-01 11:14:38'),
('d41d2abce735840c3895614d4ae932dbc2184c4a8792513721567b3b50ccd606750ca2ea5d92a831', 98, 1, 'andrew', '[]', 1, '2024-01-08 00:29:06', '2024-01-08 00:29:06', '2025-01-08 05:59:06'),
('d4df4dd1a2df47f2ec4c8a20d8133d826fcb6762d58165b0038e3447c89ace16a5dad8856328634f', 264, 1, 'andrew', '[]', 0, '2024-01-31 09:01:17', '2024-01-31 09:01:17', '2025-01-31 14:31:17'),
('d517a49b11de0aa63b0b9efa82b49f99b7dbdc1681490974f4c7063f4b41f64198725fe14ed3c54b', 243, 1, 'andrew', '[]', 1, '2024-01-30 23:44:34', '2024-01-30 23:44:34', '2025-01-31 05:14:34'),
('d55a4ca2107fcfeb71feb87ac1dc12c41f964a5cb3771493bb80b2b83734b8f561deeda487619e1b', 40, 1, 'andrew', '[]', 1, '2023-10-26 04:35:47', '2023-10-26 04:35:47', '2024-10-26 10:05:47'),
('d59d65e86a64d630aff1024b8074386436810f736f1f230b3f730dc354a310944d3819774bb72132', 243, 1, 'andrew', '[]', 0, '2024-01-31 00:18:05', '2024-01-31 00:18:05', '2025-01-31 05:48:05'),
('d5cbdb101299eb27ba0515f691f6325735289c9d7a7cb95ddc0c8e2ffe4cf7d5034d4935f8a4c992', 14, 1, 'andrew', '[]', 1, '2023-10-26 01:30:11', '2023-10-26 01:30:11', '2024-10-26 07:00:11'),
('d5ed74cf39b69ff94b5b6a84e94307eb45637754e69c4b5d71100f4c95f0606f1d73baf22b9acaa7', 40, 1, 'andrew', '[]', 1, '2023-10-27 02:26:54', '2023-10-27 02:26:54', '2024-10-27 07:56:54'),
('d6032c6837dd9ad8b1e1a8f0c2a3f5a145a606a12f46faf24090f7106535d07f73b71619b615c8f4', 72, 1, 'andrew', '[]', 1, '2024-01-12 00:32:24', '2024-01-12 00:32:24', '2025-01-12 06:02:24'),
('d60d9c11c1075875c7789e19622957cf3434b4e38f8bd645c466acb03ef9ee373040e7744820f5c8', 72, 1, 'andrew', '[]', 1, '2024-01-11 08:09:47', '2024-01-11 08:09:47', '2025-01-11 13:39:47'),
('d6ea1a4f431c3fb586812d854520f7dc9548660e1c06be38cae11a82ee76aa6eac5e1c7345a1b4d6', 102, 1, 'andrew', '[]', 1, '2024-01-09 07:56:19', '2024-01-09 07:56:19', '2025-01-09 13:26:19'),
('d75503a08aa827c22ff9578fb76b87caeadb5c0c396a24387da9b035231e42ba74aae1d21607612c', 6, 1, 'andrew', '[]', 1, '2021-11-17 04:58:42', '2021-11-17 04:58:42', '2022-11-17 10:28:42'),
('d768c1685b780671c8b50f57cca450d1bd8744a01e724b7d1dbba0e946c9c222a511c86bdcca63e8', 234, 1, 'andrew', '[]', 1, '2024-01-30 07:53:31', '2024-01-30 07:53:31', '2025-01-30 13:23:31'),
('d7782a41fab8105755d74c1291ca7ad9605f6580656071b53df5ddb811a63ca17e0ff740a638d254', 92, 1, 'andrew', '[]', 1, '2024-01-04 02:14:53', '2024-01-04 02:14:53', '2025-01-04 07:44:53'),
('d7a255db855e5fa0b54c74af4f7f734b31938119044825ceefde2de1d5e58a6ad734e388c9d5ff78', 199, 1, 'andrew', '[]', 1, '2024-01-22 00:22:48', '2024-01-22 00:22:48', '2025-01-22 05:52:48'),
('d856ea2b31ae9cbf76e4e8be062a004672d11ae8d8c3d5651b9111d739aaed94dcd49313fc4d2cc0', 90, 1, 'andrew', '[]', 1, '2024-01-03 05:09:43', '2024-01-03 05:09:43', '2025-01-03 10:39:43'),
('d86a0da6c7300c32ea84e9a31eb06c14079851a85252c5e45c4974483c806877db069120488cd122', 270, 1, 'andrew', '[]', 1, '2024-02-01 05:35:04', '2024-02-01 05:35:04', '2025-02-01 11:05:04'),
('d8b964d4850869f2dc2103b0458aa09be3cfce6767d74d25fce156c4e47f0cca676025798d075744', 208, 1, 'andrew', '[]', 1, '2024-01-22 07:17:54', '2024-01-22 07:17:54', '2025-01-22 12:47:54'),
('d92b5c0094f7a18ebc02b441c376e938d054650d50f92f84ce13a181f82c2928309cc8afa9dcb021', 252, 1, 'andrew', '[]', 1, '2024-01-31 04:23:36', '2024-01-31 04:23:36', '2025-01-31 09:53:36'),
('dae6177e5941eba47556996e35ebb72e475ecc24db8794c6226e53a0c3fa4fbb6a7c15fd1e8db21c', 101, 1, 'andrew', '[]', 1, '2024-01-09 07:29:33', '2024-01-09 07:29:33', '2025-01-09 12:59:33'),
('db57b3b93252aa5b85db4905be0513842afa6d4b6d94cc3184fa6dc164f058db8047f92a47dd2d88', 3, 1, 'andrew', '[]', 1, '2021-11-15 05:16:29', '2021-11-15 05:16:29', '2022-11-15 10:46:29'),
('dbe61ef7265f73ec1fafdd80440f9fcfed8b09f7fb9f3c462757b87ff7e7b52b4ba20976b3cdbba0', 198, 1, 'andrew', '[]', 0, '2024-01-20 03:23:53', '2024-01-20 03:23:53', '2025-01-20 08:53:53'),
('dd311d709d0b28ad88edec9cd653a836dcf369029e3dd41389af3ef1b10e566d5d7279b7155e0108', 265, 1, 'andrew', '[]', 1, '2024-01-31 09:14:02', '2024-01-31 09:14:02', '2025-01-31 14:44:02'),
('dd70458de679657e937625c187c6f2437663b809f09427d7163f79d35e4ceeb0a0d5c5a80ee297d0', 241, 1, 'andrew', '[]', 1, '2024-01-30 09:41:05', '2024-01-30 09:41:05', '2025-01-30 15:11:05'),
('dd92b32082a94a72b34f8472999e8744e0501d872c677191ab5a44a4f848cc90469c647baf6748ca', 14, 1, 'andrew', '[]', 1, '2023-10-26 04:58:54', '2023-10-26 04:58:54', '2024-10-26 10:28:54'),
('dde72169d40d8533bfd7f7962a935027592304d766934efbbff1cd75e0b5f47dd3dddd942c9ba1ec', 89, 1, 'andrew', '[]', 1, '2024-01-05 02:25:36', '2024-01-05 02:25:36', '2025-01-05 07:55:36'),
('dea6de4eed9fd0db6c75ec23999d0d12395825c4fa64f02950aa455352a5b94d4db36c78cd4acc60', 99, 1, 'andrew', '[]', 1, '2024-01-08 01:37:11', '2024-01-08 01:37:11', '2025-01-08 07:07:11'),
('df005cffea0a49c9adbf46c89c243e335f66d00fdc7c80822b74936a13331b34a328b9f095c04e5b', 276, 1, 'andrew', '[]', 1, '2024-02-01 04:55:45', '2024-02-01 04:55:45', '2025-02-01 10:25:45'),
('dfb4d017542c9095a8a7cb4a31a7eafcec33e0f3eef4a66478af7670b2493c50f4216f859f555575', 14, 1, 'andrew', '[]', 1, '2023-10-25 07:54:48', '2023-10-25 07:54:48', '2024-10-25 13:24:47'),
('e0aba6215c30800d4691a0a99cd6da64e2d6ddb6eb5fe9a84cab4de1d7d1537ac9e3f3c9fff2af6d', 90, 1, 'andrew', '[]', 1, '2024-01-22 23:53:36', '2024-01-22 23:53:36', '2025-01-23 05:23:36'),
('e120b29c962cad542a0c6037dd0ca9c691372d7f84e3573eaf1ccc42be6e5bf3b0e9cf231ed4b36b', 52, 1, 'andrew', '[]', 1, '2023-10-26 08:31:10', '2023-10-26 08:31:10', '2024-10-26 14:01:10'),
('e1b77c2b258ff4821c64914eff05ad79f595a770e9f7717cdacf2b9c67582c8d34f4da3b7fbf02d6', 16, 1, 'andrew', '[]', 1, '2023-11-02 05:04:52', '2023-11-02 05:04:52', '2024-11-02 10:34:52'),
('e23535fa3560093ac3e45266f21e2abcd42496e425e990904e31d5c3ac69349fc5cf891d37274d5d', 219, 1, 'andrew', '[]', 1, '2024-01-22 09:39:03', '2024-01-22 09:39:03', '2025-01-22 15:09:03'),
('e23d5056cc1aaa3a40d2aa1d295ce684e69d1f432ed8106c220fe970329bb9d3dc3f7c9ba783da41', 46, 1, 'andrew', '[]', 1, '2023-10-26 06:31:35', '2023-10-26 06:31:35', '2024-10-26 12:01:35'),
('e25c9ad9e1400fd3e233302d58a1f1078cff5c3da77ea92bae454a145be472be586ec3d1dbb0042c', 265, 1, 'andrew', '[]', 1, '2024-02-01 04:47:10', '2024-02-01 04:47:10', '2025-02-01 10:17:10'),
('e2bbb832dc21c0a0805e6c5a1e516027266f972cf09ff740bea9328f7b0fcce6c08dadfa573915de', 165, 1, 'andrew', '[]', 1, '2024-01-18 04:55:40', '2024-01-18 04:55:40', '2025-01-18 10:25:40'),
('e2e457873b60c78952d950a788684d75581338d6d8e87b7afb4dc567ec15f81d97193cd2bc472266', 90, 1, 'andrew', '[]', 1, '2024-01-04 22:17:29', '2024-01-04 22:17:29', '2025-01-05 03:47:29'),
('e2eda16fdaacebcd27a58295f0a6dbfd0bd81b64f262513d42bf401c624faa31139eb5847d9dcce4', 33, 1, 'andrew', '[]', 1, '2023-10-26 23:18:29', '2023-10-26 23:18:29', '2024-10-27 04:48:29'),
('e31db3346b56c0ef1b38eeb0295962fce7d439c15b8d5a6617306cda0d91018bf6ba27cc2605c64f', 83, 1, 'andrew', '[]', 1, '2024-01-03 01:28:16', '2024-01-03 01:28:16', '2025-01-03 06:58:16'),
('e39862b3da3e1441e7615a2103e2a900d4a3495377c52666a539782a60ea9b8ec934a8cab6484a5b', 16, 1, 'andrew', '[]', 1, '2023-10-25 06:34:03', '2023-10-25 06:34:03', '2024-10-25 12:04:03'),
('e39dc22921f20a8cef33fe309b1012b8dc59de76b4e3a3ea85220d151da140f0dfbe8292db1ff395', 16, 1, 'andrew', '[]', 1, '2023-10-27 05:10:46', '2023-10-27 05:10:46', '2024-10-27 10:40:46'),
('e3b3f87380176b8fb96f86e477570308e065e1c7c04e979dffa758899fcd807235a0e956a074680c', 16, 1, 'andrew', '[]', 1, '2023-10-24 04:51:30', '2023-10-24 04:51:30', '2024-10-24 10:21:30'),
('e4237339d9e8d101bcc6f502e69fe1392443513e892373366715e03c6058553c753eadcccde6c230', 16, 1, 'andrew', '[]', 1, '2023-10-25 05:57:30', '2023-10-25 05:57:30', '2024-10-25 11:27:30'),
('e4d7327829272fe6fef5e26067212aff98367986b84364624d2e6b79076c343c73c10f140e1a6b39', 188, 1, 'andrew', '[]', 1, '2024-01-19 09:11:08', '2024-01-19 09:11:08', '2025-01-19 14:41:08'),
('e54c4edcbffcb014b978b496057efda2caba687a3e9e33a8c67a89e507dcecc5774753b9d9af97d1', 83, 1, 'andrew', '[]', 1, '2024-01-19 04:41:37', '2024-01-19 04:41:37', '2025-01-19 10:11:37'),
('e5a4b7b638ef903036fbe0d18603b1cbccb47748e777afe80ba844f4d7754687a95ab5067e4f9320', 228, 1, 'andrew', '[]', 0, '2024-01-31 06:12:20', '2024-01-31 06:12:20', '2025-01-31 11:42:20'),
('e5c0a27837f913ef8134ba378e9bbdcc4f0057365e02e4a68c4aa5950db3112aa9eed0b10ac19904', 72, 1, 'andrew', '[]', 1, '2024-01-04 23:30:35', '2024-01-04 23:30:35', '2025-01-05 05:00:35'),
('e61c0645f9bc3d7e450758f6b23762db9ac62a7fd39de2443ea46ae5c14b85bf0182e9ab9c86f1c8', 16, 1, 'andrew', '[]', 1, '2024-01-19 07:48:00', '2024-01-19 07:48:00', '2025-01-19 13:18:00'),
('e6e077fe76cbc1ea19010072bb5306beddc5d347c2a369937b06ed71488f468ee4e153a1c97c2aaa', 72, 1, 'andrew', '[]', 1, '2024-01-19 06:19:28', '2024-01-19 06:19:28', '2025-01-19 11:49:28'),
('e78188bcc8bdedc9f848b84d1f18ea271ea03e0259c843d61994e3481a9780c36568def3ce36b2af', 193, 1, 'andrew', '[]', 1, '2024-01-19 09:44:44', '2024-01-19 09:44:44', '2025-01-19 15:14:44'),
('e7cf8a0e9b751e4132d82e54f260f347716ae76a7d24ab61dcb26730f2e412b6f4c909f531feb496', 159, 1, 'andrew', '[]', 1, '2024-01-18 04:05:43', '2024-01-18 04:05:43', '2025-01-18 09:35:43'),
('e881a98b1b8575859c0e02734a519af7380b84e1797fb2c83e0242c7df4ac312ca4dd03aca52f1cd', 89, 1, 'andrew', '[]', 1, '2024-01-11 04:41:38', '2024-01-11 04:41:38', '2025-01-11 10:11:38'),
('e8dbd86b4cffab6b57878c5afc604606848d562b145e973f0dc38b60793474e0456b6ddb01fcfd32', 188, 1, 'andrew', '[]', 0, '2024-01-29 01:20:16', '2024-01-29 01:20:16', '2025-01-29 06:50:16'),
('e93c80b7233b2dfeb9cd3c9b97e1924d4ae9fc0a39bc43b2864b3c4f1d671f2ea7a8940bc6534b31', 3, 1, 'andrew', '[]', 1, '2021-11-15 05:12:59', '2021-11-15 05:12:59', '2022-11-15 10:42:59'),
('e9cb381f75aef8fdb6fef9403dd872d4fa17d88bea7ab3aaf54586d7d8e54b102e7e0b760c72e5f3', 16, 1, 'andrew', '[]', 1, '2023-10-26 04:39:38', '2023-10-26 04:39:38', '2024-10-26 10:09:38'),
('e9cb6122808950cb097836ec67c65f122a0036ad6169491ad5104f6d645df775c11ecb2a326877d5', 40, 1, 'andrew', '[]', 1, '2023-10-27 00:41:52', '2023-10-27 00:41:52', '2024-10-27 06:11:52'),
('ea021b51d3fff21f9525c2d24739c38c42562b070ba3955133370fbaa6447195f8ed9b3c4f628df9', 33, 1, 'andrew', '[]', 1, '2023-10-25 02:27:20', '2023-10-25 02:27:20', '2024-10-25 07:57:20'),
('eb6b7da65e0f8995aaf8e8fa67e9423304c4ecc0a4894e2b4a7bb74801ebd9b65a62ee698af30ed7', 201, 1, 'andrew', '[]', 1, '2024-01-22 05:23:13', '2024-01-22 05:23:13', '2025-01-22 10:53:13'),
('eba2547d5e77d20a260dc0200c5be4fac3cfd728326b555a53fc3cc7c67451d8c072213755d1ae73', 12, 1, 'andrew', '[]', 0, '2023-10-20 05:17:55', '2023-10-20 05:17:55', '2024-10-20 10:47:55'),
('ec0ee42a6df553cbef82c2c193a2060de7bcf3a730a259e4641c79b58eb8a18a45cded3d3894a242', 83, 1, 'andrew', '[]', 1, '2024-01-09 23:50:26', '2024-01-09 23:50:26', '2025-01-10 05:20:26'),
('ec5d2c6c931600a9d0b776dadf07cb75f9cabdc2e14206d6dcb42c8673a016a6ef8902d6cc22a6be', 14, 1, 'andrew', '[]', 1, '2023-10-24 01:30:32', '2023-10-24 01:30:32', '2024-10-24 07:00:32'),
('ec96899cb0290396a52195dec539e9a3bce266ee1ab192d0141e87ee6db7a10a1e7a5642124786f9', 77, 1, 'andrew', '[]', 1, '2023-12-15 03:12:28', '2023-12-15 03:12:28', '2024-12-15 08:42:28'),
('ecb830106d28b7fbafcbe21573481910c6e09552aad29bbbc776b071ed87ce35180be3e33730c01f', 33, 1, 'andrew', '[]', 1, '2023-10-26 23:48:58', '2023-10-26 23:48:58', '2024-10-27 05:18:58'),
('ed8439d5559b1eeacb07dfbb32477ef775a6a61fd29376c0e94785e85986819009f328ebd9904c9e', 234, 1, 'andrew', '[]', 1, '2024-01-31 06:22:02', '2024-01-31 06:22:02', '2025-01-31 11:52:02'),
('ed999afccb30bfcc99be1d19a8be3ff2cbc89166d359a0ac3474b6146b3f6508c0234fba82eb1601', 125, 1, 'andrew', '[]', 0, '2024-01-11 22:49:08', '2024-01-11 22:49:08', '2025-01-12 04:19:08'),
('edae371268021085e45b0b87b55132e864cf308f7eeda7c0a0667d168071f1ea64cd17672a6f8e6c', 83, 1, 'andrew', '[]', 1, '2024-01-12 00:43:16', '2024-01-12 00:43:16', '2025-01-12 06:13:16'),
('ee045d87b82dbf23dbe66782e0346282d0aabb5d4f71efa1daa9718f02bc4823ab219daea6fc0661', 4, 1, 'andrew', '[]', 0, '2021-11-16 06:46:31', '2021-11-16 06:46:31', '2022-11-16 12:16:31'),
('ee2ed66a17a4b8d624ab05c02e407fd624f633f90f220907fdc88726942da4d251dfa3fd5e521225', 72, 1, 'andrew', '[]', 1, '2024-01-10 00:25:23', '2024-01-10 00:25:23', '2025-01-10 05:55:23'),
('ee635821b179b0196c577f18eff37f3ff52fc9a6c73b7771d9f46cf6d94961c89dc781c29094cb79', 55, 1, 'andrew', '[]', 1, '2023-10-27 04:10:00', '2023-10-27 04:10:00', '2024-10-27 09:40:00'),
('ee7dfa9c15b9a7feda25ca8b6479ab800cae4803e820e901513568845308cb6c6ade85287839e62a', 14, 1, 'andrew', '[]', 1, '2023-10-24 01:51:22', '2023-10-24 01:51:22', '2024-10-24 07:21:22'),
('ee7e9141b04b61954545dedf9ce14bcbeef2db19e81262ddf5182bc889a7da2b80fb1f4af6d8f601', 119, 1, 'andrew', '[]', 1, '2024-01-10 23:32:21', '2024-01-10 23:32:21', '2025-01-11 05:02:21'),
('ee969b4231996bee39bafbaf8aa90f35a38199fec2d2c0e942aaa28a1989482c41489b72cbad9a69', 16, 1, 'andrew', '[]', 1, '2024-01-19 01:17:37', '2024-01-19 01:17:37', '2025-01-19 06:47:37'),
('ef0f06f67466768cff9a779886e07640d04a3f92c0aa93f708114ad2b13454465087840107065dab', 72, 1, 'andrew', '[]', 1, '2024-01-09 10:10:51', '2024-01-09 10:10:51', '2025-01-09 15:40:51'),
('f0f0198456c7b522472031f284d5b4a72127434d1ff682a7d7b59e77b5c6cb3a97cfe320ea412977', 89, 1, 'andrew', '[]', 1, '2024-01-02 02:00:32', '2024-01-02 02:00:32', '2025-01-02 07:30:32'),
('f0f5ef2f694d2c18ae1c8e5debc9247b6a7ef414dd2efa39401286ec5d3c59ec54246f150e16b94e', 159, 1, 'andrew', '[]', 1, '2024-01-18 04:18:46', '2024-01-18 04:18:46', '2025-01-18 09:48:46'),
('f0f60dffc1f9af1d643e735af5127d43c768ef3195dd72af0aadb47b168daec8226de3369b576f78', 72, 1, 'andrew', '[]', 1, '2024-01-17 02:59:59', '2024-01-17 02:59:59', '2025-01-17 08:29:59'),
('f167c40e08f696c80a126e201788af081e22799c1b5486c7260abe1b5ffd32a665de9e7d4edd65f2', 72, 1, 'andrew', '[]', 1, '2024-01-19 04:40:54', '2024-01-19 04:40:54', '2025-01-19 10:10:54'),
('f1d4733812b5e35d373425f9c92e0306741cf7126df10c1f1dda7961cad219656c79d11d484fd09f', 16, 1, 'andrew', '[]', 1, '2023-10-24 23:19:45', '2023-10-24 23:19:45', '2024-10-25 04:49:45'),
('f2973217aeb0a2b87ac25246ba5f234332a7dfa4bbf1f5d72cc2f42dbbdbe3a024ccf8e8be8bfac1', 237, 1, 'andrew', '[]', 1, '2024-01-30 06:09:58', '2024-01-30 06:09:58', '2025-01-30 11:39:58'),
('f3f2bf7feac9eef9dfe303711fcd9426111c51840f2e034d54de0f35ed30d060a6fa388fa14c52eb', 188, 1, 'andrew', '[]', 1, '2024-01-22 00:26:13', '2024-01-22 00:26:13', '2025-01-22 05:56:13'),
('f4631db71e1d2e58cd76f0345a3ebcf5e25097810bdd31afbfe16047776d9f3929267f35bfb2061c', 193, 1, 'andrew', '[]', 1, '2024-01-19 09:55:28', '2024-01-19 09:55:28', '2025-01-19 15:25:28'),
('f4b6dc8943771ec7dc086c15bc9ba5ddfdb826dbd13616638d052c52386549c66a363384ddaa0313', 14, 1, 'andrew', '[]', 1, '2023-10-25 02:07:35', '2023-10-25 02:07:35', '2024-10-25 07:37:35'),
('f4dd8a60f51faf2b13305682215034651872690ecc190524116f7db9a779777bcf1900f8eddfe8cc', 89, 1, 'andrew', '[]', 1, '2024-01-12 05:18:30', '2024-01-12 05:18:30', '2025-01-12 10:48:30'),
('f4ff15d04105ed72cd77ceeaf1cba3c10041fc9d51ea5ce08d8a6fe22e6ffcfac232ec1a1bb8a68c', 245, 1, 'andrew', '[]', 1, '2024-01-30 23:59:18', '2024-01-30 23:59:18', '2025-01-31 05:29:18'),
('f52171b1f8add44fda6902596d77366f41fdd31bb413df011a6f816540568ae02fc859821c8b56fe', 177, 1, 'andrew', '[]', 1, '2024-01-19 01:09:16', '2024-01-19 01:09:16', '2025-01-19 06:39:16'),
('f5c6b6d107a088cdb06bc02fad1b4dca84ed822eac2e2eebcad69e35ac8e7571d525042822f3db2b', 2, 1, 'andrew', '[]', 1, '2021-11-12 13:43:33', '2021-11-12 13:43:33', '2022-11-12 19:13:33'),
('f635190ffa51987820961e8bf9ef6f16f52a00aed30133c2ff7399c6979ad9452f7468eb06ba96f3', 193, 1, 'andrew', '[]', 1, '2024-01-19 09:54:33', '2024-01-19 09:54:33', '2025-01-19 15:24:33'),
('f69b272f114f469dd8ecc505cf5d9dfdb1b3c5308c853ef4e47ae47ae69d6da0ab56b545774f317a', 72, 1, 'andrew', '[]', 1, '2024-01-10 12:08:15', '2024-01-10 12:08:15', '2025-01-10 17:38:15'),
('f718e033cdbf707df38dd5ae63375c015ea874454e8da98094caabea51be3328ac40ce26d3201119', 164, 1, 'andrew', '[]', 0, '2024-01-18 04:45:56', '2024-01-18 04:45:56', '2025-01-18 10:15:56'),
('f76f96358606def379528e63d99d6ec516fe0b47b02fe37763acece602c289835597dd18a2c00c75', 179, 1, 'andrew', '[]', 1, '2024-01-19 03:34:30', '2024-01-19 03:34:30', '2025-01-19 09:04:30'),
('f77ab559907d4b9695ca934da00d53839f7a44666739e93c5ed852d7cbeaf2e61cb69b05985dd510', 33, 1, 'andrew', '[]', 1, '2023-10-26 00:29:39', '2023-10-26 00:29:39', '2024-10-26 05:59:39'),
('f7d10d107d1b0e1d498b7f221cedc3a25c29420d99ff13b6412697d07e5500afcc0cd0ea0912218e', 162, 1, 'andrew', '[]', 1, '2024-01-18 04:36:57', '2024-01-18 04:36:57', '2025-01-18 10:06:57'),
('f7f2b2a5346e741bc5019177ec2c8dbe6dd4860109d646391aba653c664c0f0fe587a4a16e06e2d3', 16, 1, 'andrew', '[]', 1, '2023-10-27 06:21:04', '2023-10-27 06:21:04', '2024-10-27 11:51:04'),
('f8ea5225fca0a2c1e0eb9985fb22049159f014bdd571ad1672d55e644922fad3edf8f3ace7d58da8', 78, 1, 'andrew', '[]', 1, '2023-12-29 07:20:24', '2023-12-29 07:20:24', '2024-12-29 12:50:24'),
('f9624188b1e2bb9198e2ebbf913c63d6b7ed01afcdc592f4a3d192400265b9dfd0b5236063f26904', 40, 1, 'andrew', '[]', 1, '2023-10-29 23:53:40', '2023-10-29 23:53:40', '2024-10-30 05:23:40'),
('f9d713e693de82d12bccfebd6360a021c71614eab7945bbe4ad5fb8a947e61e9443cc79e2ff30afc', 268, 1, 'andrew', '[]', 1, '2024-02-01 00:17:49', '2024-02-01 00:17:49', '2025-02-01 05:47:49'),
('fa1308341568f73c3547ce2f52a848f42573e40f25b5fef1745fee46db299659aee0d536116f59cd', 111, 1, 'andrew', '[]', 1, '2024-01-10 01:32:10', '2024-01-10 01:32:10', '2025-01-10 07:02:10'),
('fa9a46ad068245afc3851132abaa04896984fc865f6974cda895f67ae902dbfa1c4ceb86484b0a4d', 234, 1, 'andrew', '[]', 0, '2024-02-01 06:33:38', '2024-02-01 06:33:38', '2025-02-01 12:03:38'),
('fb08407fcf9de91da80bc10bd81c0c95b9c066b04c60c3dabc4bef0d79dfa72ac00b8389843cd6a1', 72, 1, 'andrew', '[]', 1, '2024-01-12 00:59:50', '2024-01-12 00:59:50', '2025-01-12 06:29:50'),
('fbad70783049a895a04b3b14a7c691e824b73129a63372a5d91856527250cb514750c833ae3f4f82', 262, 1, 'andrew', '[]', 1, '2024-02-01 05:30:43', '2024-02-01 05:30:43', '2025-02-01 11:00:43'),
('fc938097fbf9e6923c9b65b1b4c9e7e17c3fa481345cdbe01032157b623cbfe77816eae0e41958da', 228, 1, 'andrew', '[]', 1, '2024-01-28 23:38:12', '2024-01-28 23:38:12', '2025-01-29 05:08:12'),
('fcb43bddbdb551238c34902686853ff5a24af0dcbccf0debeb358f2264b8b6613f72fa3e2470e3db', 201, 1, 'andrew', '[]', 1, '2024-01-22 05:26:54', '2024-01-22 05:26:54', '2025-01-22 10:56:54'),
('fd4036910af30746194a389bd6fe24aea97d179b003bb3300692fdabc6aec0c45934a9a91628364f', 189, 1, 'andrew', '[]', 0, '2024-01-19 09:51:06', '2024-01-19 09:51:06', '2025-01-19 15:21:06'),
('fe2f870cd256f87db696ccffe4d352aaaf82893f09d7cafc52a732914972a526c153e344be04654a', 61, 1, 'andrew', '[]', 1, '2023-10-27 03:19:02', '2023-10-27 03:19:02', '2024-10-27 08:49:02'),
('fe7a73bd4252054fa59fbd12145a95ce6e91c07ded0dd6dba209e6188e268e4dbcd03d3047d28207', 223, 1, 'andrew', '[]', 1, '2024-01-30 05:45:36', '2024-01-30 05:45:36', '2025-01-30 11:15:36'),
('fec0314bf949686cda6a92811810158ef8784abc8a0105a6130343cf9fc03173843f0a3d7db142fa', 89, 1, 'andrew', '[]', 1, '2024-01-11 00:43:52', '2024-01-11 00:43:52', '2025-01-11 06:13:52'),
('fee07274bf508e258c43f78c3998711f3f6e84dec1844e731fdc1f00a96c276d131b42e2862479db', 16, 1, 'andrew', '[]', 1, '2023-10-26 06:45:48', '2023-10-26 06:45:48', '2024-10-26 12:15:48'),
('ff53157166be6363514d5478b3067bdd8d4541494708f4ce1b101f45d79c7354c4a85742e1b738bb', 40, 1, 'andrew', '[]', 1, '2023-10-27 01:48:28', '2023-10-27 01:48:28', '2024-10-27 07:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
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
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED NOT NULL,
  `unique_id` int NOT NULL,
  `offer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_product_id` int DEFAULT NULL,
  `offer_type` enum('Normal','BirthdayOffer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `admin_id`, `venu_id`, `unique_id`, `offer_name`, `offer_desc`, `image`, `name_of_file_show`, `from_date`, `to_date`, `time`, `to_time`, `status`, `pos_product_id`, `offer_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Birthday Offer?adsfasdfasdfads', 'Birthday Offer', '012020220728278661e90f1ba11d0.jpeg', 'file_example_JPG_1MB.jpg', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-12 13:22:29', '2023-10-24 05:06:55', NULL),
(2, 1, 2, 2, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-12 13:27:18', '2021-11-12 13:27:18', NULL),
(3, 1, 1, 3, 'Offer1', 'test', '1112202119005414618e6c8e47d34.png', 'Screenshot_32.png', '2021-11-12', '2021-11-12', '19:01:00', '20:01:00', 'Active', 33, 'Normal', '2021-11-12 13:30:54', '2022-01-20 01:59:48', NULL),
(5, 4, 1, 5, 'offer4', 'cxvvccv', '1112202119325416618e740ee2a72.png', 'Screenshot_14.png', '2021-11-12', '2021-11-12', '19:33:00', '19:33:00', 'Active', NULL, 'Normal', '2021-11-12 14:02:55', '2021-11-12 14:02:55', NULL),
(6, 4, 1, 6, 'offer5', 'xcxc', '1112202119342119618e7465dfbbd.png', 'Screenshot_14.png', '2021-11-12', '2021-11-12', '19:34:00', '20:34:00', 'Active', NULL, 'Normal', '2021-11-12 14:04:22', '2021-11-12 14:04:22', NULL),
(8, 2, 5, 8, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 07:12:04', '2021-11-15 07:12:04', NULL),
(9, 1, 6, 9, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 07:14:05', '2021-11-15 07:14:05', NULL),
(10, 1, 1, 10, 'asdgha', 'faga', '111520211309462561920ec24e63f.jpeg', 'download (4).jpeg', '2021-11-15', '2021-11-22', '13:09:00', '17:09:00', 'Active', NULL, 'Normal', '2021-11-15 07:39:46', '2021-11-15 07:39:46', NULL),
(11, 1, 1, 11, 'guyguy', 'hs', '1115202114360713619222ff947fb.jpeg', 'images.jpeg', '2021-11-15', '2021-11-15', '14:35:00', '16:35:00', 'Active', NULL, 'Normal', '2021-11-15 09:06:07', '2021-11-15 09:06:07', NULL),
(12, 1, 1, 12, 'gawtq', 'gqwa', '11152021143702266192233604a8b.jpeg', 'download (4).jpeg', '2021-11-15', '2021-11-15', '14:36:00', '17:36:00', 'Active', NULL, 'Normal', '2021-11-15 09:07:02', '2021-11-15 09:07:02', NULL),
(13, 1, 7, 13, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2021-11-15 11:46:42', '2021-11-15 11:46:42', NULL),
(14, 1, 7, 14, 'qwwq', 'dsbgsdbgds', '111620211028133861933a65b269e.jpeg', 'download (1).jpeg', '2021-11-16', '2021-11-18', '10:28:00', '11:28:00', 'Active', NULL, 'Normal', '2021-11-16 04:58:13', '2021-11-16 05:08:27', '2021-11-16 05:08:27'),
(15, 1, 1, 15, 'TEST', 'GET 90% Cashback', '012020221016046261e93664e7457.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-20', '2022-02-01', '18:00:00', '23:30:00', 'Active', NULL, 'Normal', '2022-01-20 04:46:05', '2022-01-20 04:46:05', NULL),
(16, 1, 1, 16, 'test2', 'Great Offer', '012120221145101461ea9cc687ff4.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-21', '2022-01-31', '01:00:00', '23:58:00', 'Active', NULL, 'Normal', '2022-01-21 06:15:10', '2022-01-21 06:15:10', NULL),
(17, 1, 7, 17, 'thisShouldBeAssigned', 'Awesome offer', '012420220446365261ee2f2c6f927.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-24', '2022-01-29', '06:30:00', '00:00:00', 'Active', 1234567890, 'Normal', '2022-01-23 23:16:36', '2022-01-23 23:16:36', NULL),
(18, 1, 8, 18, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2022-01-24 03:18:03', '2022-01-24 03:18:03', NULL),
(19, 1, 8, 19, 'Offer!', 'Hey! Get everything for free!!', '012520221126597461efde833c6c9.jpeg', 'file_example_JPG_1MB.jpg', '2022-01-25', '2022-01-31', '12:00:00', '00:00:00', 'Active', NULL, 'Normal', '2022-01-25 05:56:59', '2022-01-25 05:56:59', NULL),
(20, 1, 7, 20, 'New Offers', 'dsjfsdjfhdshfj fdshfasdjdhfsadhfj sdjfhsad fsadf sdaf lasdf', '10242023064255246537676f5ab8d.png', 'Screenshot 2023-09-20 at 4.33.28 PM.png', '2023-10-24', '2023-11-10', '00:01:00', '23:58:00', 'Active', 234324324, 'Normal', '2023-10-24 01:12:55', '2023-10-24 01:12:55', NULL),
(21, 1, 1, 21, 'New Offer', 'sdfasdfkasdfjkdhsafhsjhfjsadhjfsahdjfhajshfjsahfdjdsahfjshajfhsahfjhajfhsajfhsajfhjsahfjhasjfhasjdfhsdajf', '10242023101523296537993b3067b.jpeg', '2.jpeg', '2023-10-24', '2023-10-31', '11:45:00', '12:45:00', 'Active', NULL, 'Normal', '2023-10-24 04:45:23', '2023-10-24 04:45:23', NULL),
(22, 1, 7, 22, 'offers hai bhai', 'fsfasdfasfasfsafsafasfdas', '102420231018428065379a025d446.jpeg', '3.jpeg', '2023-10-24', '2023-10-31', '00:55:00', '12:00:00', 'Active', NULL, 'Normal', '2023-10-24 04:48:42', '2023-10-24 04:48:42', NULL),
(23, 1, 5, 23, 'aditya', 'sfsfv sdfsdfdvxcv wfssfzfsdfsdfsdfsdfsdfsdfsdfsdfsfs fsdfsdf', '1026202310052331653a39e39cb83.jpeg', 'dummy.jpeg', '2023-10-26', '2023-10-29', '00:00:00', '23:58:00', 'Active', NULL, 'Normal', '2023-10-26 04:35:23', '2023-10-26 04:35:23', NULL),
(24, 1, 2, 24, '69', 'hjgjhghj', '1026202310182035653a3cec8adc5.png', 'male_selected.png', '2023-10-26', '2023-11-01', '00:59:00', '23:56:00', 'Active', 78678678, 'Normal', '2023-10-26 04:48:20', '2023-10-26 04:48:20', NULL),
(25, 1, 1, 25, 'mnn,n,.n,nm,.n,mnm,n.m,nm,nm,.', 'jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh123456123456123456123456jhlkkjhkhklhjkhjkhlkhjhjlkjhkkhhjjhhkhkhjkh1234561234561234561', '1027202310042564653b8b29bf935.png', 'Screenshot_20231025-142016.png', '2023-10-27', '2023-10-28', '03:33:00', '15:33:00', 'Active', NULL, 'Normal', '2023-10-27 04:34:25', '2023-10-27 04:34:25', NULL),
(26, 1, 9, 26, 'Birthday Offer', 'Birthday Offer', 'app_icon.png', 'app icon', NULL, NULL, NULL, NULL, 'Active', NULL, 'BirthdayOffer', '2023-10-27 07:45:18', '2023-10-27 07:45:18', NULL),
(27, 1, 5, 27, 'New Offer 2024', 'New Offer 2024', '0109202405425154659cdcdbd86a9.jpeg', 'file_example_JPG_1MB.jpg', '2024-01-09', '2024-02-02', '00:00:00', '23:59:00', 'Active', NULL, 'Normal', '2024-01-09 00:12:52', '2024-01-09 00:12:52', NULL),
(28, 1, 5, 28, 'Offers', 'jj', '0109202405493176659cde6bdf7ee.jpeg', '6oAWnDGR4JY.jpg', '2024-01-09', '2024-02-01', '00:00:00', '23:58:00', 'Active', NULL, 'Normal', '2024-01-09 00:19:32', '2024-01-09 00:19:32', NULL),
(29, 1, 5, 29, '2024', '2024 offer', '0109202405515347659cdef950fab.jpeg', 'pgVT_CvjsGE.jpg', '2024-01-09', '2024-01-25', '00:00:00', '23:58:00', 'Active', NULL, 'Normal', '2024-01-09 00:21:53', '2024-01-09 00:21:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offer_settings`
--

CREATE TABLE `offer_settings` (
  `id` int UNSIGNED NOT NULL,
  `offer_id` int UNSIGNED NOT NULL,
  `city_id` int DEFAULT NULL,
  `dob` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Today',
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `offer_type` enum('Normal','BirthdayOffer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_settings`
--

INSERT INTO `offer_settings` (`id`, `offer_id`, `city_id`, `dob`, `gender`, `date`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `offer_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-12 13:22:29', '2021-11-12 13:22:29', NULL),
(2, 2, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-12 13:27:18', '2021-11-12 13:27:18', NULL),
(3, 3, NULL, 'Today', 'Male', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-12 13:30:54', '2021-11-12 13:30:54', NULL),
(5, 5, 1, 'Today', 'Male', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-12 14:02:55', '2021-11-12 14:02:55', NULL),
(6, 6, 1, 'Today', 'Male', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-12 14:04:22', '2021-11-12 14:04:22', NULL),
(8, 8, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-15 07:12:04', '2021-11-15 07:12:04', NULL),
(9, 9, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-15 07:14:05', '2021-11-15 07:14:05', NULL),
(10, 10, NULL, 'Today', 'Female', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-15 07:39:46', '2021-11-15 07:39:46', NULL),
(11, 11, NULL, 'Today', 'Female', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-15 09:06:07', '2021-11-15 09:06:07', NULL),
(12, 12, NULL, 'Today', 'Female', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-15 09:07:02', '2021-11-15 09:07:02', NULL),
(13, 13, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2021-11-15 11:46:42', '2021-11-15 11:46:42', NULL),
(14, 14, NULL, 'Today', 'Male', '2021-11-18', NULL, NULL, NULL, NULL, NULL, 'Normal', '2021-11-16 04:58:14', '2021-11-16 04:58:14', NULL),
(15, 15, NULL, 'Today', NULL, '2022-01-20', '2022-01-20', '2022-01-31', 'Greater Than', 100, 10000, 'Normal', '2022-01-20 04:46:05', '2022-01-20 04:46:05', NULL),
(16, 16, NULL, 'Today', 'Male', '2022-01-22', '2022-01-21', '2022-01-31', 'Greater Than', 100, NULL, 'Normal', '2022-01-21 06:15:10', '2022-01-21 06:15:10', NULL),
(17, 17, NULL, 'Today', NULL, '2022-01-24', '2022-01-24', '2022-01-30', 'Greater Than', 500, NULL, 'Normal', '2022-01-23 23:16:36', '2022-01-23 23:16:36', NULL),
(18, 18, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2022-01-24 03:18:03', '2022-01-24 03:18:03', NULL),
(19, 19, NULL, 'Today', 'Male', '2022-01-25', NULL, NULL, NULL, NULL, NULL, 'Normal', '2022-01-25 05:56:59', '2022-01-25 05:56:59', NULL),
(20, 20, NULL, 'Today', NULL, '2023-10-24', '2023-10-18', '2023-11-10', 'Greater Than', 10, NULL, 'Normal', '2023-10-24 01:12:55', '2023-10-24 01:12:55', NULL),
(21, 21, NULL, 'Today', NULL, '2023-10-24', NULL, NULL, 'Greater Than', 100, NULL, 'Normal', '2023-10-24 04:45:23', '2023-10-24 04:45:23', NULL),
(22, 22, NULL, 'Today', NULL, '2023-10-24', NULL, NULL, 'Greater Than', 10, NULL, 'Normal', '2023-10-24 04:48:42', '2023-10-24 04:48:42', NULL),
(23, 23, NULL, 'Today', NULL, '2023-10-26', '2023-10-26', '2023-10-28', 'Greater Than', 1, NULL, 'Normal', '2023-10-26 04:35:23', '2023-10-26 04:35:23', NULL),
(24, 24, 2, 'Today', 'Male', '2023-10-26', '2023-10-25', '2023-10-28', 'Greater Than', 1, NULL, 'Normal', '2023-10-26 04:48:20', '2023-10-26 04:48:20', NULL),
(25, 25, 3, 'Today', 'Male', '2023-10-27', '2023-10-27', '2023-10-28', 'Between', 123, 124, 'Normal', '2023-10-27 04:34:26', '2023-10-27 04:34:26', NULL),
(26, 26, NULL, 'Today', NULL, NULL, NULL, NULL, NULL, 0, 0, 'BirthdayOffer', '2023-10-27 07:45:18', '2023-10-27 07:45:18', NULL),
(27, 27, NULL, 'Today', 'Male', '2024-01-09', '2024-01-01', '2024-02-11', 'Greater Than', 1, NULL, 'Normal', '2024-01-09 00:12:52', '2024-01-09 00:12:52', NULL),
(28, 28, NULL, 'Today', NULL, '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', '2024-01-09 00:19:32', '2024-01-09 00:19:32', NULL),
(29, 29, NULL, 'Today', NULL, '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', '2024-01-09 00:21:53', '2024-01-09 00:21:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int UNSIGNED NOT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `country_code`, `mobile_number`, `otp`, `created_at`, `updated_at`) VALUES
(13, '+91', '7060424884', '9188', '2021-11-15 05:06:31', '2021-11-15 05:06:31'),
(16, '+91', '9876543210', '7957', '2021-11-15 07:36:53', '2021-11-15 07:36:53'),
(26, '+91', '7894561235', '9991', '2023-10-20 05:07:14', '2023-10-20 05:07:14'),
(30, '+91', '7894561326', '3153', '2023-10-20 05:12:09', '2023-10-20 05:12:09'),
(40, '+91', '5555555556', '123456', '2023-10-23 10:16:44', '2023-10-23 10:16:44'),
(44, '+93', '9761573381', '123456', '2023-10-24 01:23:23', '2023-10-24 01:23:23'),
(45, '+971', '84495430255', '123456', '2023-10-24 01:24:52', '2023-10-24 01:24:52'),
(46, '+971', '89565686252', '123456', '2023-10-24 01:25:29', '2023-10-24 01:25:29'),
(47, '+971', '8886565558', '123456', '2023-10-24 01:27:45', '2023-10-24 01:27:45'),
(52, '+971', '846545646465', '123456', '2023-10-24 01:40:00', '2023-10-24 01:40:00'),
(53, '+971', '78994564564', '123456', '2023-10-24 01:43:05', '2023-10-24 01:43:05'),
(86, '+91', '1236785454', '123456', '2023-10-24 05:18:52', '2023-10-24 05:18:52'),
(91, '+91', '4564646444', '123456', '2023-10-24 06:40:45', '2023-10-24 06:40:45'),
(110, '+971', '688686885835', '123456', '2023-10-24 07:26:09', '2023-10-24 07:26:09'),
(112, '+376', '86868686', '123456', '2023-10-24 07:48:41', '2023-10-24 07:48:41'),
(115, '+971', '8484674867647', '123456', '2023-10-24 07:55:17', '2023-10-24 07:55:17'),
(117, '+971', '626646464', '123456', '2023-10-24 08:02:32', '2023-10-24 08:02:32'),
(120, '+971', '4567894562', '123456', '2023-10-24 23:15:10', '2023-10-24 23:15:10'),
(135, '+971', '2559764564', '123456', '2023-10-25 00:54:39', '2023-10-25 00:54:39'),
(140, '+971', '9895652355', '123456', '2023-10-25 01:29:56', '2023-10-25 01:29:56'),
(148, '+971', '789789456456', '123456', '2023-10-25 01:58:19', '2023-10-25 01:58:19'),
(156, '+971', '88456989898', '123456', '2023-10-25 02:16:22', '2023-10-25 02:16:22'),
(188, '+971', '2828282828', '123456', '2023-10-25 05:20:46', '2023-10-25 05:20:46'),
(193, '+971', '866878718678616', '123456', '2023-10-25 07:39:32', '2023-10-25 07:39:32'),
(195, '+971', '361869486916981', '123456', '2023-10-25 07:49:00', '2023-10-25 07:49:00'),
(197, '+971', '9677946946945', '123456', '2023-10-26 00:03:49', '2023-10-26 00:03:49'),
(198, '+971', '89679694969694', '123456', '2023-10-26 00:07:28', '2023-10-26 00:07:28'),
(200, '+971', '06866868668686', '123456', '2023-10-26 00:16:49', '2023-10-26 00:16:49'),
(201, '+971', '868106840686486', '123456', '2023-10-26 00:41:05', '2023-10-26 00:41:05'),
(202, '+971', '160947607618167', '123456', '2023-10-26 00:43:34', '2023-10-26 00:43:34'),
(203, '+971', '78334834864', '123456', '2023-10-26 00:45:03', '2023-10-26 00:45:03'),
(204, '+971', '867864684846', '123456', '2023-10-26 00:50:08', '2023-10-26 00:50:08'),
(205, '+971', '7860676064', '123456', '2023-10-26 00:52:56', '2023-10-26 00:52:56'),
(206, '+971', '186861817861', '123456', '2023-10-26 01:06:35', '2023-10-26 01:06:35'),
(207, '+971', '9079846864686', '123456', '2023-10-26 01:09:28', '2023-10-26 01:09:28'),
(208, '+971', '686656865', '123456', '2023-10-26 01:12:39', '2023-10-26 01:12:39'),
(209, '+971', '8979898946864', '123456', '2023-10-26 01:15:14', '2023-10-26 01:15:14'),
(210, '+971', '686686886', '123456', '2023-10-26 01:16:40', '2023-10-26 01:16:40'),
(213, '+971', '0768694896867', '123456', '2023-10-26 01:19:37', '2023-10-26 01:19:37'),
(216, '+971', '684684684', '123456', '2023-10-26 01:26:28', '2023-10-26 01:26:28'),
(222, '+971', '5355645646', '123456', '2023-10-26 03:33:34', '2023-10-26 03:33:34'),
(223, '+971', '86868686861', '123456', '2023-10-26 23:04:30', '2023-10-26 23:04:30'),
(226, '+971', '5353535353', '123456', '2023-10-26 23:18:16', '2023-10-26 23:18:16'),
(227, '+971', '64694694', '123456', '2023-10-27 00:41:28', '2023-10-27 00:41:28'),
(254, '+971', '8755396254', '123456', '2023-10-27 05:09:44', '2023-10-27 05:09:44'),
(257, '+971', '919817820480', '123456', '2023-10-30 04:36:57', '2023-10-30 04:36:57'),
(263, '+91', '7878548745', '123456', '2023-12-29 04:10:28', '2023-12-29 04:10:28'),
(267, '+91', '9816957071', '123456', '2023-12-29 07:20:01', '2023-12-29 07:20:01'),
(271, '+91', '5454664664', '123456', '2024-01-02 04:16:16', '2024-01-02 04:16:16'),
(275, '+971', '7018818976', '123456', '2024-01-02 04:40:34', '2024-01-02 04:40:34'),
(277, '+971', '56656556', '123456', '2024-01-02 04:52:23', '2024-01-02 04:52:23'),
(282, '+971', '623036249999949', '123456', '2024-01-02 06:05:41', '2024-01-02 06:05:41'),
(284, '+971', '46086407640864', '123456', '2024-01-02 06:17:28', '2024-01-02 06:17:28'),
(285, '+971', '65656464464', '123456', '2024-01-02 06:30:46', '2024-01-02 06:30:46'),
(290, '+91', '8872066100', '123456', '2024-01-03 07:47:12', '2024-01-03 07:47:12'),
(291, '+971', '43547567655857', '123456', '2024-01-03 07:59:17', '2024-01-03 07:59:17'),
(292, '+355', '343433434334', '123456', '2024-01-07 23:31:26', '2024-01-07 23:31:26'),
(301, '+971', '499494949449949', '123456', '2024-01-09 07:35:19', '2024-01-09 07:35:19'),
(316, '+91', '9845741422', '123456', '2024-01-10 00:46:47', '2024-01-10 00:46:47'),
(317, '+91', '652563256', '123456', '2024-01-10 00:50:30', '2024-01-10 00:50:30'),
(318, '+91', '9856251452', '123456', '2024-01-10 00:51:44', '2024-01-10 00:51:44'),
(323, '+91', '8524553256', '123456', '2024-01-10 02:42:31', '2024-01-10 02:42:31'),
(340, '+971', '2552585855585', '123456', '2024-01-11 04:06:30', '2024-01-11 04:06:30'),
(341, '+971', '456554645456', '123456', '2024-01-11 04:12:28', '2024-01-11 04:12:28'),
(342, '+971', '45557554445', '123456', '2024-01-11 04:12:47', '2024-01-11 04:12:47'),
(353, '+91', '7845457845', '123456', '2024-01-11 09:57:41', '2024-01-11 09:57:41'),
(354, '+91', '32434343434', '123456', '2024-01-11 10:00:02', '2024-01-11 10:00:02'),
(364, '+91', '7845124554', '123456', '2024-01-11 23:31:33', '2024-01-11 23:31:33'),
(381, '+971', '8748676846871', '123456', '2024-01-12 08:22:55', '2024-01-12 08:22:55'),
(382, '+971', '846674687468', '123456', '2024-01-12 08:23:11', '2024-01-12 08:23:11'),
(383, '+91', '7876152525', '123456', '2024-01-15 00:15:00', '2024-01-15 00:15:00'),
(408, '+971', '78876766767', '123456', '2024-01-17 04:41:06', '2024-01-17 04:41:06'),
(410, '+93', '9761573380', '123456', '2024-01-17 05:11:14', '2024-01-17 05:11:14'),
(411, '+971', '215733779994', '123456', '2024-01-17 05:14:51', '2024-01-17 05:14:51'),
(412, '+971', '8757676767', '123456', '2024-01-17 05:16:37', '2024-01-17 05:16:37'),
(413, '+971', '5544566489', '123456', '2024-01-17 05:17:38', '2024-01-17 05:17:38'),
(414, '+244', '7875576676', '123456', '2024-01-17 05:17:59', '2024-01-17 05:17:59'),
(415, '+355', '8797676767', '123456', '2024-01-17 05:20:31', '2024-01-17 05:20:31'),
(416, '+971', '956556566546', '123456', '2024-01-17 05:21:39', '2024-01-17 05:21:39'),
(417, '+971', '57575767676', '123456', '2024-01-17 05:22:19', '2024-01-17 05:22:19'),
(418, '+971', '94949494494', '123456', '2024-01-17 05:23:52', '2024-01-17 05:23:52'),
(419, '+971', '8494949494', '123456', '2024-01-17 05:31:02', '2024-01-17 05:31:02'),
(422, '+971', '8449573022', '123456', '2024-01-17 05:44:11', '2024-01-17 05:44:11'),
(423, '+971', '858858668', '123456', '2024-01-17 05:45:04', '2024-01-17 05:45:04'),
(425, '+971', '8784949949', '123456', '2024-01-17 08:34:46', '2024-01-17 08:34:46'),
(426, '+91', '9845456575', '123456', '2024-01-17 09:03:28', '2024-01-17 09:03:28'),
(446, '+93', '828484284244', '1234', '2024-01-18 00:00:38', '2024-01-18 00:00:38'),
(447, '+93', '848454444443', '1234', '2024-01-18 00:03:14', '2024-01-18 00:03:14'),
(449, '+91', '9874001452', '1234', '2024-01-18 00:04:17', '2024-01-18 00:04:17'),
(453, '+971', '784544444444', '1234', '2024-01-18 00:07:47', '2024-01-18 00:07:47'),
(455, '+213', '4854464444', '1234', '2024-01-18 00:08:41', '2024-01-18 00:08:41'),
(456, '+355', '5757767767', '1234', '2024-01-18 00:12:24', '2024-01-18 00:12:24'),
(465, '+971', '9878456352', '1234', '2024-01-18 01:11:43', '2024-01-18 01:11:43'),
(468, '+91', '6230362499', '1234', '2024-01-18 02:11:59', '2024-01-18 02:11:59'),
(470, '+971', '5845438464', '1234', '2024-01-18 02:26:07', '2024-01-18 02:26:07'),
(473, '+971', '9817820460', '1234', '2024-01-18 02:51:20', '2024-01-18 02:51:20'),
(474, '+93', '9817820460', '1234', '2024-01-18 02:52:01', '2024-01-18 02:52:01'),
(475, '+971', '556366633336', '1234', '2024-01-18 03:13:15', '2024-01-18 03:13:15'),
(476, '+91', '9023948399', '1234', '2024-01-18 03:23:07', '2024-01-18 03:23:07'),
(489, '+971', '686868605868068', '1234', '2024-01-18 04:24:52', '2024-01-18 04:24:52'),
(491, '+971', '000000000', '1234', '2024-01-18 04:26:46', '2024-01-18 04:26:46'),
(494, '+971', '0000000000', '1234', '2024-01-18 04:29:56', '2024-01-18 04:29:56'),
(510, '+500', '987654321', '1234', '2024-01-18 04:54:27', '2024-01-18 04:54:27'),
(511, '+856', '987654321', '1234', '2024-01-18 04:54:32', '2024-01-18 04:54:32'),
(513, '+856', '987652828286868', '1234', '2024-01-18 04:54:54', '2024-01-18 04:54:54'),
(514, '+1', '987652828286868', '1234', '2024-01-18 04:55:04', '2024-01-18 04:55:04'),
(532, '+376', '2121212121', '1234', '2024-01-18 05:34:36', '2024-01-18 05:34:36'),
(536, '+971', '83868686868', '1234', '2024-01-18 05:43:39', '2024-01-18 05:43:39'),
(542, '+971', '96469406948', '1234', '2024-01-18 06:27:54', '2024-01-18 06:27:54'),
(543, '+971', '989856765765856', '1234', '2024-01-18 06:28:48', '2024-01-18 06:28:48'),
(557, '+971', '000004747', '1234', '2024-01-18 07:19:23', '2024-01-18 07:19:23'),
(559, '+91', '97615573380', '1234', '2024-01-18 07:22:54', '2024-01-18 07:22:54'),
(560, '+971', '43344353453', '1234', '2024-01-18 07:31:43', '2024-01-18 07:31:43'),
(566, '+91', '9874587458', '1234', '2024-01-18 23:38:58', '2024-01-18 23:38:58'),
(568, '+971', '4451248545151', '1234', '2024-01-18 23:43:31', '2024-01-18 23:43:31'),
(570, '+971', '57545467', '1234', '2024-01-18 23:53:31', '2024-01-18 23:53:31'),
(571, '+971', '646464664', '1234', '2024-01-19 00:04:50', '2024-01-19 00:04:50'),
(572, '+971', '5818767484', '1234', '2024-01-19 00:07:42', '2024-01-19 00:07:42'),
(573, '+971', '9649860994', '1234', '2024-01-19 00:11:05', '2024-01-19 00:11:05'),
(576, '+971', '864684848', '1234', '2024-01-19 00:15:09', '2024-01-19 00:15:09'),
(584, '+971', '256966865', '1234', '2024-01-19 03:05:31', '2024-01-19 03:05:31'),
(586, '+91', '4545454541', '1234', '2024-01-19 03:07:24', '2024-01-19 03:07:24'),
(587, '+971', '565664654654', '1234', '2024-01-19 03:07:57', '2024-01-19 03:07:57'),
(589, '+91', '7876175843', '1234', '2024-01-19 03:10:37', '2024-01-19 03:10:37'),
(597, '+355', '7787983458', '1234', '2024-01-19 03:33:35', '2024-01-19 03:33:35'),
(599, '+297', '7787983458', '1234', '2024-01-19 03:34:00', '2024-01-19 03:34:00'),
(604, '+91', '9874545454', '1234', '2024-01-19 04:22:59', '2024-01-19 04:22:59'),
(608, '+91', '9874524141', '1234', '2024-01-19 04:39:26', '2024-01-19 04:39:26'),
(614, '+91', '98748754654', '1234', '2024-01-19 04:57:01', '2024-01-19 04:57:01'),
(615, '+91', '9874563652', '1234', '2024-01-19 05:02:19', '2024-01-19 05:02:19'),
(616, '+971', '5464464544', '1234', '2024-01-19 05:19:04', '2024-01-19 05:19:04'),
(617, '+971', '9852555225', '1234', '2024-01-19 05:34:37', '2024-01-19 05:34:37'),
(618, '+971', '9817820480', '1234', '2024-01-19 05:34:50', '2024-01-19 05:34:50'),
(635, '+971', '5787357565', '1234', '2024-01-19 07:07:05', '2024-01-19 07:07:05'),
(637, '+971', '8850537537', '1234', '2024-01-19 07:10:09', '2024-01-19 07:10:09'),
(642, '+93', '9855663361', '1234', '2024-01-19 07:36:36', '2024-01-19 07:36:36'),
(643, '+376', '9855663361', '1234', '2024-01-19 07:37:37', '2024-01-19 07:37:37'),
(647, '+56', '9855663361', '1234', '2024-01-19 07:40:40', '2024-01-19 07:40:40'),
(652, '+91', '9817820480', '1234', '2024-01-19 07:48:36', '2024-01-19 07:48:36'),
(653, '+91', '98454875444', '1234', '2024-01-19 08:10:03', '2024-01-19 08:10:03'),
(654, '+91', '778798345154', '1234', '2024-01-19 08:10:52', '2024-01-19 08:10:52'),
(655, '+91', '5454554545', '1234', '2024-01-19 08:11:23', '2024-01-19 08:11:23'),
(656, '+93', '98178204580', '1234', '2024-01-19 08:18:17', '2024-01-19 08:18:17'),
(667, '+971', '8858586865', '1234', '2024-01-19 09:06:24', '2024-01-19 09:06:24'),
(669, '+971', '8858586862', '1234', '2024-01-19 09:12:03', '2024-01-19 09:12:03'),
(671, '+971', '8858586866', '1234', '2024-01-19 09:12:57', '2024-01-19 09:12:57'),
(672, '+971', '8858586861', '1234', '2024-01-19 09:13:07', '2024-01-19 09:13:07'),
(703, '+93', '7845652145', '1234', '2024-01-22 01:30:49', '2024-01-22 01:30:49'),
(704, '+91', '78456521459', '1234', '2024-01-22 01:31:05', '2024-01-22 01:31:05'),
(705, '+355', '7845652145', '1234', '2024-01-22 01:31:14', '2024-01-22 01:31:14'),
(730, '+971', '777777777763', '1234', '2024-01-22 05:12:16', '2024-01-22 05:12:16'),
(732, '+971', '6754848787887', '1234', '2024-01-22 05:12:38', '2024-01-22 05:12:38'),
(734, '+354', '6754848787887', '1234', '2024-01-22 05:12:50', '2024-01-22 05:12:50'),
(741, '+971', '8523697110', '1234', '2024-01-22 05:22:13', '2024-01-22 05:22:13'),
(745, '+971', '45612378906', '1234', '2024-01-22 05:30:57', '2024-01-22 05:30:57'),
(752, '+971', '9638527412', '1234', '2024-01-22 07:11:44', '2024-01-22 07:11:44'),
(829, '+91', '445445445', '1234', '2024-02-01 00:34:28', '2024-02-01 00:34:28'),
(847, '+971', '545464346464', '1234', '2024-02-01 06:14:18', '2024-02-01 06:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phpapi870@gmail.com', 'ZDmvgPuN5TZ3rf1s0VqFXie9oprabSed53C3pDdZKhQw1eV92H07uYJkNv4eyU7L', '2021-11-16 12:54:27'),
('phpapi870@gmail.com', 'Gteds2UwKlfoE4tcdtEISEFM91yxNeI4', NULL),
('deftinfo365@gmail.com', 'mx1XJqgmao3pQPN3WznajnNNHRU9f7dd', NULL),
('yg@yopmail.com', 'tmLiXEuRCeYd0Hwj6o4Jpeb50sfPsbgvaMreBNuElIEL69zci2nS5FU4wp8PIyaJ', '2024-01-18 07:11:24'),
('m@yopmail.com', 'WnOl8E02mgddnSxy2gf30N5qtv3XL6rvZNi4NbC6V6J7hMfFO1rFP7m3dN62sYQc', '2024-01-19 07:25:34'),
('titu@yopmail.com', 'y9mEakwcgB5OMSlftxLzXGyYZC3K1YFiobYVqyl1AGvySp7O2wlK8C6N2w3xnss2', '2024-01-19 08:56:54'),
('titu2@yopmail.com', 'Ibhri8dcBDw2FFN2GFviLwQXtz389hQWBzwXsAngHV9UnrxsazvSYhM9gaIxScJk', '2024-01-19 10:40:27'),
('user9@yopmail.com', 'qYFa4cshC9W0XHiST6OgiXKqVEFCvFaQWUmHP2wvAJlQ7JGuvz2xWT8LSmEakzv5', '2024-01-22 02:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `tier_conditions`
--

CREATE TABLE `tier_conditions` (
  `id` int UNSIGNED NOT NULL,
  `unique_id_by_tier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tier_setting_id` int UNSIGNED NOT NULL,
  `tier_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_amount` double NOT NULL,
  `to_amount` double NOT NULL,
  `color_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tier_conditions`
--

INSERT INTO `tier_conditions` (`id`, `unique_id_by_tier`, `tier_setting_id`, `tier_name`, `from_amount`, `to_amount`, `color_code`, `percentage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Silver', 0, 100, '#ff2700', 10, NULL, NULL, '2024-01-22 10:09:51'),
(2, '2', 1, 'Platinum', 700, 1500, '#ff0000', 20, '2021-10-15 10:46:53', '2021-10-08 09:13:51', '2021-10-15 10:46:53'),
(3, '3', 1, 'Gold', 1501, 2501, '#ff0000', 30, '2021-10-15 10:46:47', '2021-10-08 09:14:10', '2021-10-15 10:46:47'),
(4, '4', 1, 'Diamond', 2502, 3501, '#ff0000', 40, '2021-10-15 10:46:42', '2021-10-08 09:14:31', '2021-10-15 10:46:42'),
(5, '5', 1, 'Gold', 101, 500, '#18171b', 20, '2024-01-22 10:08:56', '2021-10-21 10:40:05', '2024-01-22 10:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `tier_settings`
--

CREATE TABLE `tier_settings` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `transaction_amount_check_last_days` int NOT NULL COMMENT 'Customer Total Transaction Amount Check for last 30 days.',
  `customer_tier_validity_check` int NOT NULL COMMENT 'Customer Tier Validity Check (Badge Change)',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tier_settings`
--

INSERT INTO `tier_settings` (`id`, `admin_id`, `transaction_amount_check_last_days`, `customer_tier_validity_check`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 1, NULL, NULL, '2023-10-23 05:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_of_residence` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_reference_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('None','Ios','Android') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `device_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reset_password_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `verify_email_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_block` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 => Unblocked 1 => Blocked',
  `is_verify` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 => Not Verify, 1 => Verify',
  `refresh_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('Inactive','Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `customer_id` bigint DEFAULT NULL,
  `customer_tier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_cash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tier_update_date` date DEFAULT NULL,
  `refer_amount` double DEFAULT '0',
  `refer_amount_used` int NOT NULL DEFAULT '0',
  `request_change_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_you_drink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_you_smoke` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `refer_amount_used`, `request_change_email`, `like_list`, `music_list`, `do_you_drink`, `do_you_smoke`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '11122021183006618e6556715f3.jpeg', '+91', '8556025369', 'kanhaiya', 'kumar', 'xxx', '$2y$10$4UQNIvaLP8HhwAycHGzZD.5tk76o2g9jP4C2RWum3rhUkMy27cGNG', 'Abu Dhabi', 'Afghanistan', '2005-11-12', 'Female', 'M7hf3741RVtx', NULL, 'Ios', 'b6ad69a17433d978bcfa6ce6e8a6c23459dbfffbcd30c8e67e5b74ce5b06b14d', NULL, NULL, '0', '1', NULL, NULL, 'Active', 22345875828, 'Silver', '3090', NULL, '1112202118300723618e65573ae41.png', '1112202118300794618e65573b15f.png', '2022-01-19', 0, 0, NULL, '', '', NULL, NULL, '2021-11-12 13:00:07', '2024-01-22 10:09:51', NULL),
(2, '11122021191328618e6f80ee12e.jpeg', '+91', '7060424884', 'gaurav', 'bisht', 'gaurav@gmail.com', '$2y$10$Ei1A12PJtZRfY0MwDAN1jeHERHvjIJhmue9pS5sejmOhH3.z3cCx2', 'Abu Dhabi', 'Algeria', '2005-11-12', 'Male', 'ezg65386g2bq', 'M7hf3741RVtx', 'Ios', '8fafb92358b1e35ea2ff2f7eb8888c13a53e9c380472e1f7332a13b5577e9f38', NULL, NULL, '0', '1', NULL, NULL, 'Active', 32092127883, 'Silver', '1010', 'aman kumar', '1112202119132930618e6f8152283.png', '1112202119132938618e6f815256e.png', '2021-11-12', 2000, 1, NULL, '', '', NULL, NULL, '2021-11-12 13:43:29', '2024-01-22 10:09:51', NULL),
(3, '111520211042536191ec5553a32.jpeg', '+91', '9876543210', 'ghuyiu', 'figuring', 'xxx', '$2y$10$bAFZBn5f13bsaXJUpUHQzOIYsG.yuChZMnkqMs2u4O31/34LjS0z6', 'Abu Dhabi', 'Afghanistan', '2005-11-15', 'Male', 'X9mZ7871myoJ', NULL, 'Ios', '12335556', NULL, NULL, '0', '1', NULL, NULL, 'Active', 16921676320, 'Silver', '1000', NULL, '11152021104253596191ec55a2970.png', '11152021104253746191ec55a2c0b.png', '2021-11-15', 0, 0, NULL, '', '', NULL, NULL, '2021-11-15 05:12:53', '2024-01-22 10:09:51', NULL),
(4, '11162021121626619353c238601.jpeg', '+91', '8595079586', 'Vikas', 'Kumar', 'xxx', '$2y$10$D/2iCcA1xHukkrt3Sn41PO5IlxxBxw3cIQT6GYNmNaAk2o5LmKgiG', 'Abu Dhabi', 'Afghanistan', '2005-11-16', 'Male', '3alE2122Bt0V', NULL, 'None', NULL, NULL, 'RbtQF26wuUpiTxPYpdFzCdDZ5lMQwBv5eJ2KXXSDwW6qJAk51iDFnsgsIrQ5hnqM', '0', '0', NULL, NULL, 'Active', 69313422209, 'Silver', '1000', NULL, '1116202112162636619353c282ab0.png', '1116202112162622619353c282d24.png', '2021-11-16', 0, 0, NULL, '', '', NULL, NULL, '2021-11-16 06:46:26', '2024-01-22 10:09:51', NULL),
(5, '111620211811326193a6fc01647.png', '+91', '8968905827', 'pqr', '1', 'xxx', '$2y$10$3Sx7OUPf6vzgbrtUHpc08.wLaQ00jirM/COVYJFj5K9fPGl9bQwom', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'gkZP43874IHK', NULL, 'None', NULL, NULL, 'IF5Q9D3yR29SKWosBUxHzfb3KkJuzDRYFLCMPjVKgNLjcZWzcGhPwOq2XWMiMD5g', '0', '0', NULL, NULL, 'Active', 79805543786, 'Silver', '1000', NULL, '11162021181132466193a6fc4064d.png', '11162021181132986193a6fc4082c.png', '2021-11-16', 0, 0, NULL, '', '', NULL, NULL, '2021-11-16 12:41:32', '2024-01-22 10:09:51', NULL),
(6, '111620211816596193a8434a416.png', '+91', '8968925827', 'pqr', '1', 'xxx', '$2y$10$0bHJyEp2mx.OeEbqoYYdQer.9Sj0rCFDdwYMF8Rxx2ndner8ce8iO', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'bbGK1268f3Or', NULL, 'Ios', '8fd', NULL, NULL, '0', '1', NULL, NULL, 'Active', 92718897997, 'Silver', '1000', NULL, '11162021181659766193a843aef35.png', '11162021181659136193a843af304.png', '2021-11-16', 0, 0, NULL, '', '', NULL, NULL, '2021-11-16 12:46:59', '2024-01-22 10:09:51', NULL),
(7, '111620211833016193ac05c43f5.png', '+91', '8968925127', 'pqr', '1', 'xxx', '$2y$10$3wd6n9p.0l9TLaSByqcFwe3qK5oioYZMCo0yDsJroKE5zumbsk1.6', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'RlXI6779FB9w', NULL, 'None', NULL, NULL, 'M7adkTy5QpV3qTuD2gwQPMwkhoQS7xS3ji4yRIpcxfNEkXGLRx1bUnttWOwEqwIJ', '0', '0', NULL, NULL, 'Active', 77843348583, 'Silver', '1000', NULL, '11162021183302546193ac0609441.png', '11162021183302366193ac060969e.png', '2021-11-16', 0, 0, NULL, '', '', NULL, NULL, '2021-11-16 13:03:01', '2024-01-22 10:09:51', NULL),
(8, '1117202111285061949a1a224f6.png', '+91', '89681231127', 'pqr', '1', 'xxx', '$2y$10$vmkrdTzocCJordcYkrsfGeYGg4G62s5RG643Xy/74Aam9OwA0Dmxy', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'r0FQ3143f6dZ', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 26829866535, 'Silver', '1000', NULL, '111720211128508861949a1aa7e11.png', '111720211128505761949a1aa80a4.png', '2021-11-17', 0, 0, NULL, '', '', NULL, NULL, '2021-11-17 05:58:50', '2024-01-22 10:09:51', NULL),
(9, '111720211156416194a0a13ba47.png', '+91', '8968921127', 'Shivam', '1', 'shevum@yopmail.com', '$2y$10$dG0wq2Lmmohr.9Wm/W7lyuCTmGi0vDK8yD1Rf/NsrJjkPefBCL0pu', 'Abu Dhabi', 'Afghanistan', '2012-12-12', 'Male', 'W9pb1606X6S3', NULL, 'None', NULL, NULL, 'AKgdTEtrouXiok8OlO2BQ0dvzxjrt9jyGTPMdJ4TrHCQRXxo4GgV5pTcdSfIh8Uk', '1', '1', NULL, NULL, 'Inactive', 48148096722, 'Silver', '1000', NULL, '11172021115641826194a0a175b12.png', '11172021115641146194a0a175ef8.png', '2021-11-17', 0, 0, NULL, '', '', NULL, NULL, '2021-11-17 06:26:41', '2024-01-22 10:09:51', NULL),
(11, NULL, '91', '9023948399', 'Amit', 'Kumar', 'test-shivam@yopmail.com', '$2y$10$erAKxoHvf0aJ8CoeZAf5ne0/Am4XFtXtiQFjfshGyv2uNj4t/XnPW', 'Abu Dhabi', 'Afghanistan', '2003-06-30', 'Male', 't71d7256hswT', NULL, 'Ios', '8fafb92358b1e35ea2ff2f7eb8888c13a53e9c380472e1f7332a13b5577e9f38', NULL, 'qgIAs6FYSnm5KdRi1n9a3PMVZ1osvOhYdzdN6RiYaBT919Ze6r6lYXB6itGf99sT', '1', '1', NULL, NULL, 'Inactive', 23914216086, 'Silver', '40310', NULL, '012520221635252961efd975e6ac7.png', '012520221635253461efd975e6edc.png', '2024-01-22', 0, 0, NULL, '', '', NULL, NULL, '2022-01-25 11:05:25', '2024-01-22 10:09:51', NULL),
(12, '1020202310475365325ad94d107.jpeg', '+91', '7894561236', 'fdsf', 'sdfasdf', 'fasdf@yopmail.com', '$2y$10$2A5cBrolx9hvUOV54ZlNe.5h8PpT3n28cywoNYbxO4X03ChRLLSI2', 'Abu Dhabi', 'Angola', '2011-10-20', 'Male', 'ENMv6811DWSM', NULL, 'Ios', '8047a5e7bd77e79b71b2413c3ef8e001551cfb1b5074e280230599fc666700e024f485c223170402063ae277330b62c185800961e4f9584e74f2f489da1dba9b75f7c6c8b545ceda70148bf4429aa834', NULL, '8YnSwLYVL3STzO4W5TsTVNBVCmJcl3yuLhV1qyNOZGrUJIKhDB83csfekRq4oIn3', '0', '0', NULL, NULL, 'Active', 33713296044, 'Silver', '1000', NULL, '102020231047548465325ada93ea9.png', '102020231047543365325ada940a3.png', '2023-10-20', 0, 0, NULL, '', '', NULL, NULL, '2023-10-20 05:17:53', '2024-01-22 10:09:51', NULL),
(13, '102020231240486532755037f0b.jpeg', '+91', '8449573022', 'Kevin', 'mendis', 'kevin@yopmail.com', '$2y$10$ZqzepD4V01sDqW7e0D0YpOodBoyAJdA/JO4LaITW9M1ybrbTAql.S', 'Abu Dhabi', 'Kenya', '2023-10-20', 'Male', 'J99E5972zWK3', NULL, 'None', NULL, NULL, 'XIqxD5ZSe9GDc6xXP1eqOK8qAx5u9sPrDGO72nBGLkR6KFvV118qOIzyKrYTwSUp', '0', '0', NULL, NULL, 'Active', 90829864092, 'Silver', '1000', NULL, '102020231240485365327550ef846.png', '102020231240485465327550ef9bb.png', '2023-10-20', 0, 0, NULL, '', '', NULL, NULL, '2023-10-20 07:10:48', '2024-01-22 10:09:51', NULL),
(14, '10232023121916653664c428f97.jpg', '+91', '9805658633', 'aditya', 'rajput', 'aditya@yopmail.com', '$2y$10$74lc9StYSRdS0Rj2n9fdQe/nLZVh.roNdkBgYLj7ts/0RMgxllOSS', 'Ras Al Khaimah', 'Algeria', '2004-06-10', 'Female', 'yoMQ9766HvyJ', NULL, 'None', NULL, NULL, '8GvpRWRouDDTPQPPmB2Z5ZAnVUvaLXHTTrYlKDxrc1N1h8uGiHVrs713U1u567Ky', '0', '0', NULL, NULL, 'Active', 90240793323, 'Silver', '1000', NULL, '1023202311103119653654a78c138.png', '1023202311103160653654a7982c4.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 05:40:31', '2024-01-22 10:09:51', NULL),
(15, '10232023121508653663cc16899.jpeg', '+91', '8449573021', 'Kevin', 'mendis', 'kevinmendis@yopmail.com', '$2y$10$N4j9O09d80xHjCMbiOEG0.L2D4hCN4v1X0.nQY1CxuHJCCndr0d5C', 'Abu Dhabi', 'Anguilla', '2023-10-23', 'Male', 'ovvF6745vAWA', NULL, 'None', NULL, NULL, 'LqnhE5CftDhV1NEwiN1eAvfUentH7bYqDWTa2VfyXw0Uv1UI3zq5pjllPIietjed', '0', '0', NULL, NULL, 'Active', 98015732120, 'Silver', '1000', NULL, '1023202312150883653663cc982af.png', '1023202312150860653663cc986a8.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 06:45:08', '2024-01-22 10:09:51', NULL),
(16, '102520230959006538e6e474dfd.png', '+33', '9817820480', 'abhayhh', 'rana', 'abhay@yopmail.com', '$2y$10$a9fwFezb0IMXTPvrA/6BbOW8Ie0CuxY7PgB5XHPNjPldNKNo5Fw0K', 'Dubai', 'Antigua & Barbuda', '1982-01-19', 'Male', 'M7H84316E0Sd', NULL, 'None', NULL, NULL, 'aEYngsDsvvDISdjeTEIqzMcDoAvKljppaYQug3tFWLnLKZXfUhZKFak8bPc5phui', '0', '0', NULL, NULL, 'Active', 90869032847, 'Silver', '1000', NULL, '10232023121611196536640bae07f.png', '10232023121611906536640bae409.png', '2023-10-23', 0, 0, NULL, '1,2', '4,3', 'Occasional', 'No', '2023-10-23 06:46:11', '2024-01-22 10:09:51', NULL),
(17, '1023202313561565367b7f93489.jpeg', '+91', '9761573380', 'string@', 'string', 'Str@yopmail.com', '$2y$10$JDQtCH3O5cYxaPz7hFKjt.SCs1dcKOoLTrZeYhQo.mpuUWLkat4NK', 'Abu Dhabi', 'Albania', '2023-10-23', 'Male', 'IQfD2544wQMw', NULL, 'None', NULL, NULL, 'gGo9uC7K7LUPcRWmjjtIWRLL9ageETHlvcx2dQBsFAM3uQtpBhZCTo61cCsqfegw', '0', '0', NULL, NULL, 'Active', 32072490185, 'Silver', '1000', NULL, '102320231356161965367b80439fa.png', '102320231356163865367b804757b.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 08:26:16', '2024-01-22 10:09:51', NULL),
(18, '1023202313595765367c5d7af59.jpeg', '+91', '4567891236', 'dsfas', 'sdafa', 'user5@yopmail.com', '$2y$10$gx/DFZqQ5qwqG2LkLbPuLeHrRZpKQ3NyefkGcmIUIrJCX1V90bed6', 'Abu Dhabi', 'Angola', '2023-10-23', 'Male', 'Selg2759LN1x', NULL, 'None', NULL, NULL, '1npPu83pT0Kp6CKY342gewsdXiQiwQ1gLdVsKBcgKfftdLpY9XBL9RPO4vMS65Ef', '0', '0', NULL, NULL, 'Active', 74404288539, 'Silver', '1000', NULL, '102320231359571765367c5dadadd.png', '102320231359571165367c5dadd69.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 08:29:57', '2024-01-22 10:09:51', NULL),
(19, '1023202315154665368e222f278.png', '+91', '7018073276', 'bxbx', 'gsgsgs', 'yop@yopmail.om', '$2y$10$LseDs0YxxtPfl9F35vxbIu2oyRdCCL4xZAe5kBAWlEIW4AhyDtnrW', 'Dubai', 'Caribbean Netherlands', '2023-10-23', 'Male', 'NAAX7922MyLi', NULL, 'None', NULL, NULL, 'ecdgq16PNzN4Gr3c08pTdn1oYBqNjyGpqkMIjHnKGiJEs2f4LoMO5lNQTp1qslUb', '0', '0', NULL, NULL, 'Active', 25902419989, 'Silver', '1000', NULL, '102320231514464365368de6d6a4b.png', '102320231514467865368de6d6cb5.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 09:44:46', '2024-01-22 10:09:51', NULL),
(20, '10232023154359653694bf4f1aa.jpeg', '+971', '55555555555', 'hvvuvuvuuvuvuvuvyvycycyvyvyvyvyvyvy', 'ihhhihihihihihihihibihihihihihihjin', 'bb@yopmail.com', '$2y$10$p.7G99SAehrWnjEAGGpzJuCDKaRmKMV8xzzwHQY0CneMKwAmNBmd6', 'Ras Al Khaimah', 'Algeria', '2023-10-23', 'Male', 'CLWC8323YY18', NULL, 'None', NULL, NULL, 'xdtaiEm1DSs5ESnWZRj8LRfKOOxevCgzuicC0VdqDvNB9sJZCtKUhw6Qh6UYerS0', '0', '0', NULL, NULL, 'Active', 26993948795, 'Silver', '1000', NULL, '1023202315435949653694bfcb33b.png', '1023202315435929653694bfcb541.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 10:13:59', '2024-01-22 10:09:51', NULL),
(21, '10232023160059653698bb033cf.jpeg', '+971', '9999999999', 'dhohocohcohcphfhcpchcohcphcphchpcph', 'hocphfpjcjpcpjcpjfpjfpucpjv', 'ko@yopmail.com', '$2y$10$RWX1yTd19oN2Xyz/UzjYRe0rbHlZATX0aAUXzwttTGMkN2h0.rcZC', 'Abu Dhabi', 'Albania', '2023-10-23', 'Other', 'GTzA2554Dr8v', NULL, 'None', NULL, NULL, 'p3fdbgmcvXl3CWqF22WaVlMr8QJRACOFQ7d5qpWTJqJz84D0kq1NtrU75fjZS4LO', '0', '0', NULL, NULL, 'Active', 69752498614, 'Silver', '1000', NULL, '1023202316005966653698bb46754.png', '1023202316005965653698bb46a8b.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 10:30:59', '2024-01-22 10:09:51', NULL),
(22, '1023202316113865369b3a7a6c1.jpeg', '+91', '9999999998', 'vyzyvzyvzvyzvvzzz', 'yvzyvyzyvzz', 'kk@yopmail.com', '$2y$10$5yZ0FVdBt6sxwF6jh03If.lnp5kZTFg6FI7BlLG.1TM8.OkGB4hIy', 'Abu Dhabi', 'American Samoa', '2023-10-23', 'Male', 'E4oY9332gZJD', NULL, 'None', NULL, NULL, 'pPYPRgeaEeEbvLSYVikfVUQkESNtVPudm6lymoX8fJcFc2IgnP7Nljti5lgJcD2D', '0', '0', NULL, NULL, 'Active', 20948739810, 'Silver', '1000', NULL, '102320231611383065369b3aabbfe.png', '102320231611389265369b3aabec6.png', '2023-10-23', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 10:41:38', '2024-01-22 10:09:51', NULL),
(23, '102420230651206537696846695.png', '+91', '8580744866', 'user', '55', 'user6@yopmail.com', '$2y$10$K6cVytpzlzGTmPJc2odokuMYdFWI4M2KjdurzMJfhU0ztyeA3cS9O', 'Abu Dhabi', 'Uzbekistan', '2023-10-24', 'Male', 'PMC44817R6sZ', NULL, 'None', NULL, NULL, 'Q34UIp1R4oHjCKkdxsbOeiTrQE7MaXTW9IktGFFKVrAHquUUyD8dNc0JSVSaflT3', '0', '0', NULL, NULL, 'Active', 65754787620, 'Silver', '1000', NULL, '102420230447492865374c75cee2e.png', '102420230447498565374c75cf115.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-23 23:17:49', '2024-01-22 10:09:51', NULL),
(24, '1024202307025665376c2011265.jpeg', '+91', '9874561233', 'dsfasd', 'sdfasdf', 'user7@yopmail.com', '$2y$10$hH25W51fxGggCxv2CAo1ee4Sl8pIGwhPFggmgKRJ3L3/qWFBUBkty', 'Abu Dhabi', 'Albania', '2023-10-24', 'Male', 'GBmM3317Dm1M', NULL, 'None', NULL, NULL, 'aEP59DOjYpbpyUTD7EPWEOwfVlDWX1Xumg1tyK7Gx5jkN4VBFBruiF4g3MVR92dT', '0', '0', NULL, NULL, 'Active', 69794335282, 'Silver', '1000', NULL, '102420230702561365376c20a08cb.png', '102420230702566065376c20a0adc.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 01:32:56', '2024-01-22 10:09:51', NULL),
(25, '10242023072528653771681733e.jpeg', '+91', '4567891233', 'sdfasfsajfhjsahfjsahjfhsajfhjashfjs', 'sdfasdfsadfsad', 'user0@yopmail.com', '$2y$10$RIIIIBgksZgB8J/Ub8EYfuym79DCyN7GXnGRiIknKIGbc/v2S.Lpi', 'Abu Dhabi', 'Andorra', '2023-10-24', 'Male', 'jomO4891fniU', NULL, 'None', NULL, NULL, 'wvENMuLPUHoYRFLJMtOZhTxsxBhUOHvahe1tkdPAcm3cmZ1ZaLTkdIdxnf5x2QyH', '0', '0', NULL, NULL, 'Active', 34773917849, 'Silver', '1000', NULL, '1024202307252924653771690e877.png', '10242023072529476537716911488.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 01:55:28', '2024-01-22 10:09:51', NULL),
(26, '102420231424146537d38e4cc4f.jpeg', '+971', '44444444444', 'bdugdhdhdhdhhdhdhdhhdhdhdhdhhdhdjjd', 'dhhdhdhhdhdhdhhdhdhdhdhhdhdhdhjdjdj', 'rk@yopmail.com', '$2y$10$KFAFnrd5LzrPoe0XM1QnLOA/uWhxg.pfxAbNzlD2MgSWPGyk0W/qi', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', '8FRK1130dvP9', NULL, 'None', NULL, NULL, 'ftzXMGkSu3SbXe01iIV7JdFgzZ6mjEECOSuhEbPq9E0ADpE3f4IugA4SKPSlMvsS', '0', '0', NULL, NULL, 'Active', 31351813593, 'Silver', '1000', NULL, '10242023142415566537d38fd7e8f.png', '10242023142415936537d38fd8080.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 08:54:14', '2024-01-22 10:09:51', NULL),
(27, '102420231454546537dabec55bb.jpeg', '+971', '5555555555', 'ggggg', 'kk', 'pk@yopmail.com', '$2y$10$l/QpSXO7dP1D4r..BcBEyuanrn/frN5pZ8yy6ZDIRM63SrgwqeMKu', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', 'iF5c8065HsuM', NULL, 'None', NULL, NULL, '2C8SHFp9rl8jirbEUMmhwsyCdS5LEfrbxIzDpw377sLaUibn3hYJXT71U2PCI8Zd', '0', '0', NULL, NULL, 'Active', 42874400135, 'Silver', '1000', NULL, '10242023145455486537dabf2977b.png', '10242023145455856537dabf29987.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 09:24:54', '2024-01-22 10:09:51', NULL),
(28, '102420231518066537e02e88950.jpeg', '+971', '5555555556', 'jack', 'John', 'jj@yopmail.com', '$2y$10$02d.ykP8yQSHN5SMTnpp8.lVIlbJVd8TPDV4T6NjfquVQcnZJMhrO', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', 'oYGC2760k98H', NULL, 'None', NULL, NULL, 'fIjWVNY57s7MIAmMzsLOU8qtPF1Pvf0PQv33wpkAmcTNEviH3Bin06V05yhTAjRw', '0', '0', NULL, NULL, 'Active', 87617726847, 'Silver', '1000', NULL, '10242023151806926537e02ec44e6.png', '10242023151806716537e02ec466c.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 09:48:06', '2024-01-22 10:09:51', NULL),
(29, '102420231535286537e4408660f.jpeg', '+971', '9859393930', 'njjj', 'jjjjjj', 'golu1@yopmail.com', '$2y$10$sAy/kwU/HmQeDCEaYEgdd.sTblfPARDKJKxos0paEm2b5ljUx4Ikq', 'Ajman', 'Albania', '2023-10-24', 'Male', 'P7Us2901d1eG', NULL, 'Ios', 'c55ef37218e3cf96def14a557743c117cf4bc5d400abe0ca84828fa9e1957cb0', NULL, 'lY8UEjNVG5vOFTHaMEKmnyBqNGz348UywW6ohJmd6tulIPyIQISCJqfOg7D853s5', '0', '0', NULL, NULL, 'Active', 20801196295, 'Silver', '1000', NULL, '10242023153528706537e440d4cb9.png', '10242023153528926537e440d4e0b.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 10:05:28', '2024-01-22 10:09:51', NULL),
(30, '102420231551376537e80936a2b.jpeg', '+91', '4444444444', 'kkkkk', 'bbbbb', 'we@yopmail.com', '$2y$10$NyKbxRbU7VGbtUuSgSnf1OB6.hmUY4a1/AWJFjX.4G4EFY46ebUfi', 'Abu Dhabi', 'Algeria', '2023-10-24', 'Male', '5YeH2260RbYo', NULL, 'None', NULL, NULL, 'AL7ci6RFOoM3TPTNpZTNt5DZlrCua8dQyE567wCcT4QW2uEdQh8ezEa2URpo0NHt', '0', '0', NULL, NULL, 'Active', 99626465141, 'Silver', '1000', NULL, '10242023155140206537e80c6c12e.png', '10242023155140566537e80c6c303.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 10:21:37', '2024-01-22 10:09:51', NULL),
(31, '102420231607276537ebbf67763.jpeg', '+971', '2222222221', 'hhhh', 'hhhh', 'hh@yopmail.com', '$2y$10$TLkcgR3wqLx3XgCmdG/1e.8xyyXf41XwsdX0BOCCJaav8249LEhEa', 'Abu Dhabi', 'American Samoa', '2023-10-24', 'Male', 'KGAZ1347vfba', NULL, 'None', NULL, NULL, 'VWj86qMdAbJm3kWzlVJ3fn2h5o3FXfBZT0BSRb3rtHrWG67NMyEI0uYVDPDZd0uL', '0', '0', NULL, NULL, 'Active', 42800877861, 'Silver', '1000', NULL, '10242023160727146537ebbfb32e5.png', '10242023160727766537ebbfb3472.png', '2023-10-24', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 10:37:27', '2024-01-22 10:09:51', NULL),
(32, '1025202304362365389b47e093e.jpeg', '+971', '9761573381', 'Kevin', 'men', 'userkevin@gmail.com', '$2y$10$gANnyLfzDAeZjQcp/xWIpuNA4kRSyBnmHStscX3yJIP7UN2djdC3i', 'Abu Dhabi', 'Albania', '2023-10-25', 'Male', 'yIul3059K0s1', NULL, 'None', NULL, NULL, 'dPcNEL6NYcgdCsLd614pn31RfvFGW6CPRKTlzRivw9njpHCxRdLxarmtR74Wxz8g', '0', '0', NULL, NULL, 'Active', 50328966669, 'Silver', '1000', NULL, '102520230436245765389b48463c3.png', '102520230436249265389b4846506.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 23:06:24', '2024-01-22 10:09:51', NULL),
(33, '102520230507176538a285cd404.jpeg', '+91', '9997257280', 'user1', 'user2', 'user12@yopmail.com', '$2y$10$rVOSLJXd78mEC6BptsCra.cBPpoSK8F8DU0HdzyOtXqZDCRrWR5NC', 'Abu Dhabi', 'Afghanistan', '2023-10-25', 'Male', 'yG0t9948fvXl', NULL, 'Ios', 'cf26213160585663821024c165ddd5530cbaf6b1aeeacb8b563a3b7d830c5b05', NULL, 'kVXQC6gVhkn8dsQOirkwLQltQlWomPJTCs8zWtM71U0yqJQBx9GD7XdTBGjZkTWF', '0', '0', NULL, NULL, 'Active', 40895165258, 'Silver', '1000', NULL, '10252023050718946538a28615e7c.png', '10252023050718706538a2861615b.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-24 23:37:17', '2024-01-22 10:09:51', NULL),
(34, '102520230837446538d3d81dbac.jpg', '+971', '33333333331', 'vjvjvvjvzvjvxvxjjvsjvxvjxvbxjbxzjbjzbbzbjzjbzbjbzj', 'djgdjjvsvbdjbdbsibsiibsibsjbsjbjbsjbsjjbsbsjjjjsjb', 'pp@yopmail.com', '$2y$10$VF/kG9TBtTzcCPTq/Yv7Gu5nynIngeQ8y/CwiWf5jxEzbeHwm6zIC', 'Dubai', 'United States of America', '2023-10-25', 'Female', 'ngiM8694LfN2', NULL, 'None', NULL, NULL, 'ru7HZUqJR4mjAtaZHtbB2mV00MoxaNXdcM5sPGwo1EsmkvJO5MqTAsuZrkd9Y2nN', '0', '0', NULL, NULL, 'Active', 86986763764, 'Silver', '1000', NULL, '10252023065936796538bcd8eb4b3.png', '10252023065936436538bcd8f28f7.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-25 01:29:36', '2024-01-22 10:09:51', NULL),
(35, '102520230724256538c2a9eb36c.jpeg', '+971', '797894654', 'fasfhaafh', 'fasjkhfjksf', 'hkjahkf@yopmail.com', '$2y$10$E5tYB9y5FbGg2hrlcW6VGuQrZCpZZX5/4qtE.ryVGbDDJAt/zsLrS', 'Abu Dhabi', 'Afghanistan', '2023-10-25', 'Male', 'Km9Y5953LgOA', NULL, 'None', NULL, NULL, 'pSb7oJVzWfsgpLVLjvOKYUoNFBVQzLEjCHU3Im6Th509rn9RY9bgFeunQ0oAK3Hw', '0', '0', NULL, NULL, 'Active', 34919456294, 'Silver', '1000', NULL, '10252023072427366538c2ab59562.png', '10252023072427126538c2ab59721.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-25 01:54:26', '2024-01-22 10:09:51', NULL),
(36, '102520230839536538d45923814.png', '+236', '3666555444', 'bbbhhhh', 'vggjjjjvggg', 'Ram.Kumar@onsolve.com', '$2y$10$jX5WmRspaO6rhvdbfbeESesHNxtmn58ihVzOcK3Sa8hCy6AN..dd.', 'Abu Dhabi', 'Albania', '2023-10-25', 'Male', 'KESL3255WEnz', NULL, 'Ios', 'ef406f21c632f0bef0b8697fa36f1db1eb3a105fc422abba06c7f4f54ee1e7ff', NULL, '4VTWksJSIYBYh3vCjj4yMLzf7EgvUeKu3zYCJ8cgXUSmbqOuIZfsQYR7OstaH6SJ', '0', '0', NULL, NULL, 'Active', 25627539506, 'Silver', '1000', NULL, '10252023083912876538d4300ce7b.png', '10252023083912676538d4300d244.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-25 03:09:11', '2024-01-22 10:09:51', NULL),
(37, NULL, '+91', '3333333333', 'usg7usghsuhsu', 'ug77g7g', 'hk@yopmail.com', '$2y$10$a.0RjTq6eXS61moZ77DRbem4LAVI2aAESrTxfiY8ul1BG5VmTOsju', 'Fujairah', 'American Samoa', '2023-10-25', 'Other', 'tHak6983KQW6', NULL, 'None', NULL, NULL, '1rWxP27d1sm9VhDMboWl57HFslWkVGSXD3CQtD2Aj815Ojqtwd4gMT0cTgoN5jM0', '0', '0', NULL, NULL, 'Active', 15377294488, 'Silver', '1000', NULL, '10252023084327686538d52fbc956.png', '10252023084327376538d52fbcd08.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-25 03:13:27', '2024-01-22 10:09:51', NULL),
(38, NULL, '+91', '3333333335', 'ycyyffyyffy', 'huhuh', 'uu@yopmail.com', '$2y$10$VJMMU9vmv5Dgife7We3OMubMB5n9YGkGmFZTo4k4hz0tbXYrtKNYi', 'Ajman', 'Algeria', '2023-10-25', 'Female', 'asim4396FhLL', NULL, 'None', NULL, NULL, 'OACrCE3oO0tcwIJJAOV2tlaE6gDlSHLnl4xTN002seGrFyWR4DRae9lcxfn5Zo7P', '0', '0', NULL, NULL, 'Active', 14419996330, 'Silver', '1000', NULL, '10252023090211146538d993de892.png', '10252023090211606538d993e4dad.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-25 03:32:11', '2024-01-22 10:09:51', NULL),
(39, '102520231138156538fe27a0d82.jpg', '+971', '84646464646', 'cavajvviwhxkehxkheoxhoegxk3gxkhekxgeoxheoxheoxgoeg', 'zhwidh2isho3gdo3gdo3godg3idg3odh3ldgo3gdo3gdo3gdo3', 'harmantesting9@gmail.com', '$2y$10$aqOJ.sEBLV8HCod3x2k0Ne6A/jHWLaMXQhaJ2ysi83gjVhnE9Jqdy', 'Fujairah', 'Afghanistan', '2023-10-25', 'Male', 'SHF07418kKfk', NULL, 'None', NULL, NULL, 'c57mdFYTBTR1xvbZwlaF9Fqf4tmAnIJ09aDjYl8Nf7PawK707Su6YpVoHpCL0Nbl', '0', '0', NULL, NULL, 'Active', 40063779802, 'Silver', '1000', NULL, '10252023113816236538fe28065ec.png', '10252023113816236538fe2806973.png', '2023-10-25', 0, 0, NULL, '', '', NULL, NULL, '2023-10-25 06:08:15', '2024-01-22 10:09:51', NULL),
(40, '10262023074423653a18d700dd8.jpg', '+91', '6230362499', 'Aditya', 'tomar', 'aditya@gmail.com', '$2y$10$wQWrJzPtXQtvijHouHA7vO9WwxNRFD4aBn2uhtsdVOlrhkxJas2py', 'Ajman', 'United States of America', '2023-10-20', 'Male', 'xa613049ZuZA', NULL, 'Android', 'dloKvuB5Qqi76sdzXf7rGT:APA91bEkhpcTBXBKdhg06KIbTTRtaQxqwRV92HcU8RMov6uNgRpmAcfbqNCfKNR0gGf3pfiCXySe8ZUhF_C1Ux7Hg0VSvprznGhA_pkmvhxXcWjLy-cuOQDy5U4ACAmXizfMWDDqtwnn', NULL, 'Q83RrhEZ7uLnyMo8Tph4d00eopTkK51e7yzlTAL2iFthkQWKIf30uTmt1HT0I524', '0', '0', NULL, NULL, 'Active', 32782975017, 'Silver', '1000', NULL, '1026202307442351653a18d777efb.png', '1026202307442387653a18d778070.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 02:14:23', '2024-01-22 10:09:51', NULL),
(41, '10262023102200653a3dc87b56b.jpg', '+971', '2222222222', 'uvgugughshshdjvvduvdugxuvdvduvuvdvdvdvuvduvduvduvd', 'zhxvhxhvxhbxhbdhvdhbhhbdhhvdhvdhvxhvxhvxhvxuvxhvvx', 'mk@yopmail.com', '$2y$10$Bdw39248WHVgSUzedlN3Se2ESD8wZ.z1Zm6Xy0R0k58u/ol3bETnW', 'Ajman', 'United States of America', '2021-02-24', 'Male', 'Fj8N6469rwFm', NULL, 'None', NULL, NULL, 'xsU7wLeufMKJZqrBrqhBNwxayauA1DHHpMNT0BRzfUuBnMa2KsuPuE0nfyf5VyIl', '0', '0', NULL, NULL, 'Active', 52169127297, 'Silver', '1000', NULL, '1026202310220080653a3dc8b9fb9.png', '1026202310220067653a3dc8ba3fa.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 04:52:00', '2024-01-22 10:09:51', NULL),
(42, NULL, '+971', '868176861768181', 'q zg2z1zvt', '1z6v1uz u1uz1', 'mobilephone15515@gmail.com', '$2y$10$RPn5LblCC93HT4hltAC/d.k8L//iAK1G7GbuC7GFRvGSfP1MxDMba', 'Ajman', 'United States of America', '2023-10-20', 'Male', 'OYqB94741NVZ', NULL, 'None', NULL, NULL, 'v9JOy6BerThZtktJ4eYryFUI7ORWa1RT9jMwnRrdcGel3B1nSjS0B4w6PQHJfjZN', '0', '0', NULL, NULL, 'Active', 23125694629, 'Silver', '1000', NULL, '1026202310523657653a44f4da3e1.png', '1026202310523690653a44f4e79a8.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 05:22:36', '2024-01-22 10:09:51', NULL),
(43, '10262023112427653a4c6b73f3f.png', '+971', '7777777777', 'hdydhhdiydiydohddhodohhodhdoohhodhd', 'lhxhkdhodgdodyogdgodoydohdohdhodhod', 's@yopmail.com', '$2y$10$4DYPy.7N2XMPEUwUN.SbIO2f/sHFfPvzjuk55wzRtiq05VcQXE4cK', 'Abu Dhabi', 'Algeria', '2023-10-26', 'Female', '5Gr52946zEhi', NULL, 'None', NULL, NULL, '2xXBlYXms5PTLKgwndibYCRnTlAEudzdfEMkeqls4emq77M8Il6zIW7els90K83j', '0', '0', NULL, NULL, 'Active', 94166854854, 'Silver', '1000', NULL, '1026202311221761653a4be9f01de.png', '1026202311221798653a4be9f0438.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 05:52:17', '2024-01-22 10:09:51', NULL),
(44, '10262023114718653a51c667bd1.jpeg', '+971', '8888888888', 'gdydyodogyyxhohoxhxxkbxkgxohxoxhhch', 'ohdtohoxhoxhlxhoxochxhoxhdhgpdofhoh', 'h@yopmail.com', '$2y$10$0XdiEWMzh/IG6kGn0zCgAu0iEooFqYwfrLqgOuXXiUW2dRC9jFN1a', 'Abu Dhabi', 'Albania', '2023-10-26', 'Male', '3yoa2120BUUM', NULL, 'None', NULL, NULL, 'xq19WdjbKntstL56o9IJfLUVigJHp2fhmLVhNGyeCRjWOQGHp3E58C48oX00fm6D', '0', '0', NULL, NULL, 'Active', 42370233887, 'Silver', '1000', NULL, '1026202311471956653a51c70c92b.png', '1026202311471995653a51c70ccf8.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 06:17:18', '2024-01-22 10:09:51', NULL),
(45, NULL, '+91', '123456789', 'jbsbjkbwxkbwxbjwvckwbocebckwbckwbkcbwcbwkcbwkxbwkx', 'wxbjbwxbjwxbjwbxjwvxjwbxjwbxjbekxbwkxbwixhowhxiwhx', 'adityar@yopmail.com', '$2y$10$nYBCFrLJbpeQeNVXwQjjwOFJMp6my2UMyvARZ8C.ZtFckW7syv6Pa', 'Fujairah', 'Algeria', '2023-10-26', 'Female', 'Nvm43490nkng', NULL, 'None', NULL, NULL, 'xZGLWhxi0vlRV6lyhaGLGDivm9DSzxQoMoAXX8Ir2y1kRYqc5Y1rVAzdckHCCu43', '0', '0', NULL, NULL, 'Active', 75949466361, 'Silver', '1000', NULL, '1026202311482859653a520c7ecdf.png', '1026202311482859653a520c7f199.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 06:18:28', '2024-01-22 10:09:51', NULL),
(46, '10262023120428653a55cc726cd.jpg', '+971', '77777777771', 'sssssssdddddddddddd', 'hvuvyvyvvyuvyvyy un', 'km@yopmail.com', '$2y$10$WZ4vkwwtq77A6G.yguD1XestahCJEhenF88n1zSgNKmAFOnBuyJr6', 'Fujairah', 'United States of America', '2023-10-26', 'Female', 'BuYZ5509JZOg', NULL, 'None', NULL, NULL, 'SV5NtXSj2j92ogZscJz2c2QQhntaArjQahgpIIxS81v0xMw6Khe39FqfGRNJh1zR', '0', '0', NULL, NULL, 'Active', 14400379616, 'Silver', '1000', NULL, '1026202312013573653a551f2fa12.png', '1026202312013582653a551f2fe6e.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 06:31:35', '2024-01-22 10:09:51', NULL),
(47, '10262023123116653a5c14c67b1.jpeg', '+971', '6666666666', 'jvjvjvuvjvjvivjvivuvivjvhvjvjjvjjvj', 'guvuguguguuguguguguguvuvuvjvjvjvjvu', 'kok@yopmail.com', '$2y$10$xPizOzNPZi/NAXpcc98ovOInEUiMJNHueRbQubmOiO5/bWAuTTecm', 'Abu Dhabi', 'Afghanistan', '2023-10-26', 'Male', 'keHI9960Lh9U', NULL, 'None', NULL, NULL, '7667f1sLjTCzyVtkU7IO8Gx79VeCIuSwlWLX25jieV7PGp3U5WLEkPjiJxZZqfDU', '0', '0', NULL, NULL, 'Active', 48238785934, 'Silver', '1000', NULL, '1026202312311797653a5c1502097.png', '1026202312311730653a5c1502282.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 07:01:16', '2024-01-22 10:09:51', NULL),
(48, '10262023124251653a5ecb14915.jpeg', '+91', '9876543211', 'kkkkkkkkkkkkkkkkkkkkkkk', 'uvjvuvuuuvjvivjvjvivuvjvjvuvjvjvjvu', 'lo@yopmail.com', '$2y$10$zLPm1r/sZ3hJvMGEsaNsIeuCobs0lca/ESpD7A2V5aNnhV54OVND6', 'Abu Dhabi', 'Afghanistan', '2023-10-26', 'Female', '9iFp5834h6Td', NULL, 'None', NULL, NULL, 'fgSaMWFtkrQLkgSonpiTmOeLkPPmN57ecrGwlTb0p0jtIXhLnDf2tDNdCwtIrl5a', '0', '0', NULL, NULL, 'Active', 85469536956, 'Silver', '1000', NULL, '1026202312425142653a5ecb4da90.png', '1026202312425182653a5ecb4dcb4.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 07:12:51', '2024-01-22 10:09:51', NULL),
(49, NULL, '+971', '684864864864', 'hvsvusvjshbjjbsbi', 'aibbia', 'mobilephone115@gmail.com', '$2y$10$TRcKmnHq1/4N5AgH31HR7.thxP9llaVOptHnxcvRvv/Cff7lbnz2i', 'Ajman', 'United States of America', '2023-10-20', 'Male', 'zJCi48909Pw4', NULL, 'None', NULL, NULL, 'krUzjTcgiTXN1XRJFxslZtdpLqg7cCdOwnZ4JB6FLCxc6P02y5xBmipYKJDlTGne', '0', '0', NULL, NULL, 'Active', 87827524891, 'Silver', '1000', NULL, '1026202312471829653a5fd69f64a.png', '1026202312471835653a5fd69fb15.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 07:17:18', '2024-01-22 10:09:51', NULL),
(50, NULL, '+971', '8676846846864', 'qz hqvuz1ug0z', 'qxguquzg1guz1z', 'mobilephone155@gmail.com', '$2y$10$L7SvVfnfAngxgc4sAzNsJeaV7gN0mJ4DTmcEfUvQZlobPL.Hz.EdG', 'Dubai', 'Albania', '2023-10-26', 'Male', 'BKVe8758IGZv', NULL, 'None', NULL, NULL, 'Kd9v6vqvlj68EIahxi8pepEfduws9eXfJDszmH4vX44foJe7MUgSwpuSULVqD2WV', '0', '0', NULL, NULL, 'Active', 10556293002, 'Silver', '1000', NULL, '1026202312484780653a602fa26cb.png', '1026202312484737653a602fa2a52.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 07:18:47', '2024-01-22 10:09:51', NULL),
(51, NULL, '+971', '8486864865', 'vzvz', 'sugahvghas', 'mobilephone@gmail.com', '$2y$10$nEnogOom3mx55VlBNP7cAee.lypsG7fMWGDVh.rD/lE6t2M3UO65m', 'Fujairah', 'United States of America', '2023-10-13', 'Male', 'xRvq7749cUkd', NULL, 'None', NULL, NULL, 'oxO4CkDnV8eV2y13tOUeTXsykxLjKv55vfUNI6CgTkcnrYt6TUTOUHIKL4SCu45S', '0', '0', NULL, NULL, 'Active', 60424673362, 'Silver', '1000', NULL, '1026202312545941653a61a38c3bf.png', '1026202312545984653a61a38c54d.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 07:24:59', '2024-01-22 10:09:51', NULL),
(52, '10262023140109653a7125a383a.jpg', '+971', '22222222221', 'ubzubsubsuvsvubs', 'H U ubababuabubauba', 'ii@yopmail.com', '$2y$10$YXlz690duVYm7kHnGwWYDe9McbXt6sQmSWuVlWVwROpCrzGmVccRy', 'Fujairah', 'American Samoa', '2023-10-26', 'Other', 'tbNd27721e7M', NULL, 'None', NULL, NULL, 'vI3xQPdZNjxPrmJ30v8N5E2cS61a9Sh9vM8cLv2hCBhy4NmIKiPaGHuhvLJoKL8A', '0', '0', NULL, NULL, 'Active', 98653696294, 'Silver', '1000', NULL, '1026202314011039653a71267b76a.png', '1026202314011030653a71267bbec.png', '2023-10-26', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 08:31:10', '2024-01-22 10:09:51', NULL),
(53, '10272023044543653b4077f0be8.jpg', '+971', '42424242425', 'auhuuahuhusbsububsuvsubsbsuvusvuvsvsuvsuvsuvuusvvs', 'suvsbuuvsubsubsubusuvusubbsuuvsuvsuubusuvsvvsvsvsu', 'rd@yopmail.com', '$2y$10$V.NUoMapIaSfTf0kRvzmweTMXEz1N1y74aRqdAQVutawsLfbzXBTG', 'Dubai', 'Algeria', '2023-10-27', 'Female', 'befb7656nmum', NULL, 'None', NULL, NULL, 'JRpTFk9zKQ9IFEJbPQxfQkoakgITVuWG8MAYRO1qJkRs1vliQVMoMwC5692a0yDt', '0', '0', NULL, NULL, 'Active', 14532025006, 'Silver', '1000', NULL, '1027202304454426653b40787bfd6.png', '1027202304454411653b40787c203.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-26 23:15:44', '2024-01-22 10:09:51', NULL),
(54, '10272023063940653b5b2c389ac.jpeg', '+971', '84543198664', 'suvsubsbsubbsbsbsbssbudbsjhvshvshvs', 'uvdubsvsbbdbsbdbdbdbdnnsnsnnsndnjsd', 'ki@yopmail.com', '$2y$10$GOJPJsOUhd0Gsbv5h.U52u67yW5bKlDNDyY4gG6pO86WIUN/WV5Uy', 'Abu Dhabi', 'Algeria', '2023-10-27', 'Male', 'RL2U8876U0wt', NULL, 'None', NULL, NULL, 'G4iOKM0nUlM8CLYRgYzv9UPAxZ613fZABmsfWfw1o2zY8usoG9RKO3OHdPFIhOFI', '0', '0', NULL, NULL, 'Active', 50597573729, 'Silver', '1000', NULL, '10272023063941100653b5b2d008d8.png', '1027202306394142653b5b2d00a39.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 01:09:40', '2024-01-22 10:09:51', NULL),
(55, '10272023071724653b640478ba1.jpeg', '+971', '2582582582', 'chcuuvjcjvjvjvjvjvjvuvjvjvivpvpucph', 'chchchcohcohxoohocohcohcohcohchpcph', 'kko@yopmail.com', '$2y$10$0.gMqQq.Q/sHBaK4Y59ROugqGkHJRtQV6HhIDquHuU.wYuzdt9EHy', 'Abu Dhabi', 'Afghanistan', '2023-10-27', 'Male', 'PCTX8642B8zu', NULL, 'Ios', '747ab146ad5f7dc5ea786e8706b6858bda78206c73490621b8bbe9eec12624c2', NULL, 'ml72nvh8ud5PLrxk9Hp7ufMfMHDb74dzzKeA4JwK8Zt6bbWLltq9ysUr8kdQqxog', '0', '0', NULL, NULL, 'Active', 56864475627, 'Silver', '1000', NULL, '1027202307172425653b6404aad9e.png', '1027202307172493653b6404aafd9.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 01:47:24', '2024-01-22 10:09:51', NULL),
(56, NULL, '+971', '85809466464', 'vqjzvjzq', 'qzjvqjvzhvjqzjqvj', 'harmantestihhng9@gmail.com', '$2y$10$AaL1v8JVv2..m0B5LxLuuegT3Hn/1A8y9VH2Urx5bf9t6eKj80/YW', 'Ajman', 'United States of America', '2023-10-25', 'Male', 'IPKF3883tXWZ', NULL, 'None', NULL, NULL, '8HXmR05rC85Mw98PjuP4qxa2s22T5d0pv3ElmenGda87zn1mbEGYFVqDmb3QEJEs', '0', '0', NULL, NULL, 'Active', 62903533331, 'Silver', '1000', NULL, '1027202308305345653b753d658db.png', '1027202308305391653b753d6e79b.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:00:52', '2024-01-22 10:09:51', NULL),
(57, '10272023083434653b761af3e01.jpg', '+971', '32323232321', 'rocky', 'john', 'er@yopmail.com', '$2y$10$wMqLeCGWtMaKaULsfu8Lj.oiBHlW29Mf2SRsKUrljyiws7cWAeGR2', 'Fujairah', 'Andorra', '2023-10-27', 'Female', 'PrB33264Jvap', NULL, 'None', NULL, NULL, 'vn1I2AERsdiTUarSKyKy0LM2PYgxIEwAvxvN2H0gZVzzpFTQM5vYTy9amZOnv6M1', '0', '0', NULL, NULL, 'Active', 58838782113, 'Silver', '1000', NULL, '1027202308343576653b761b9489d.png', '1027202308343520653b761b94ab8.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:04:35', '2024-01-22 10:09:51', NULL),
(58, '10272023083802653b76ea8ba28.jpg', '+971', '888885588', 'FFC ccccf', 'vcc', 'cc@yopmail.com', '$2y$10$Y1RIdeq/8EnWwFlAdTjgDuvAKoZcaa4dnXvQ77qurVNfXEobF6sKe', 'Ajman', 'Albania', '2023-10-27', 'Male', 'c48u6974yKf8', NULL, 'None', NULL, NULL, '5f1QkhLpuyhSINDNDrdUZeyl7gB8t4otVJWVFu3DK8kaYkGjCrZvT5GsL5082t0h', '0', '0', NULL, NULL, 'Active', 77979953407, 'Silver', '1000', NULL, '1027202308380210653b76eade11a.png', '1027202308380255653b76eade25f.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:08:02', '2024-01-22 10:09:51', NULL),
(59, '10272023084051653b7793df875.jpg', '+971', '12121212124', 'ugdugsugsuzvshg', 'zhgHjusvs', 'rr@yopmail.com', '$2y$10$kZ9i7IMB0cz8AyUCWuoikekqaM3VIz/amW61Xlm9Gi9mkEX6E8MqC', 'Ras Al Khaimah', 'American Samoa', '2023-10-27', 'Male', 'd9VA8319ftY1', NULL, 'None', NULL, NULL, 'ddFPlOzk4vseK8nhPO2BCPGlU8VFawaPvfowQ9MqPyCrUmujNmGeH0v3skE0MAj3', '0', '0', NULL, NULL, 'Active', 25382663346, 'Silver', '1000', NULL, '1027202308405468653b779689bc2.png', '1027202308405474653b779689f04.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:10:52', '2024-01-22 10:09:51', NULL),
(60, NULL, '+971', '33333333332', 'hxhdjjx', 'zhzhhzhzhz', 'ip@yopmail.com', '$2y$10$bPp8yXIAJ28t9WaFcLpJIuyBx7GAqrsOhT.eAbqyfZxDYY.osiw/.', 'Fujairah', 'American Samoa', '2023-10-27', 'Other', 'cufa64293720', NULL, 'None', NULL, NULL, 'DQK2wLn7xfbqB0xcpjrTuaiAUwZay5Cf7ht3dmWh26mXHL1ja89TOsIs6q6OFAza', '0', '0', NULL, NULL, 'Active', 63676168530, 'Silver', '1000', NULL, '1027202308422069653b77ec3eff7.png', '1027202308422018653b77ec3f387.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:12:19', '2024-01-22 10:09:51', NULL),
(61, '10272023084902653b797e781f4.jpeg', '+971', '7787983450', 'Dev', 'Razz', 'debrazz@yopmail.com', '$2y$10$4Su4KYWvwBNkUmtjolSCsOIPnvxXZm3Bh86izAll98Aju4LeEcTHe', 'Sharjah', 'India', '1952-10-27', 'Male', 'Uqnc71342VCr', NULL, 'None', NULL, NULL, 'fI293E39TBBF8hLu6nZcQ9qHjfrjWAmYqyqTyQKBndDdZhSUCshURt5Wu3JXtjaK', '0', '0', NULL, NULL, 'Active', 20369775900, 'Silver', '1000', NULL, '1027202308490270653b797ebb067.png', '1027202308490217653b797ebb439.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:19:02', '2024-01-22 10:09:51', NULL),
(62, '01092024130657659d44f1d0804.jpg', '+971', '1212121212', 'rockyyyy', 'john', 'kj@yopmail.com', '$2y$10$B5zPWhApiffr4MGPYp6AjeWWvGkuZ6iVaXfPSINN2Zpx6SCu/qTda', 'Ras Al Khaimah', 'American Samoa', '2023-10-27', 'Female', 'GNa07875zrwj', NULL, 'None', NULL, NULL, '7MHUimReTOlniEedYYzoOI3Y9dYLI83w29KbsjpY42cdS5i0oMBHlehucUFZ8bzQ', '0', '0', NULL, NULL, 'Active', 68949699171, 'Silver', '1000', NULL, '1027202309001192653b7c1bbd140.png', '1027202309001194653b7c1bbd3c5.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:30:11', '2024-01-22 10:09:51', NULL),
(63, '10272023090743653b7ddf178b8.jpeg', '+971', '7749016151', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 'www@yopmail.com', '$2y$10$dfBlGOTd4jKnoXeGvC/vW.7.EArqpQo9iWUfYQDKWtafUbkbGOawK', 'Umm Al Quwain', 'India', '1921-10-27', 'Male', 'F8RE5500MEsL', NULL, 'Ios', 'b197fcbc36cd49b6b5acb7b1a9c9cc7d889cc0a726d960395010edde8e335848', NULL, 'e8LmJ0cNknH6eOvRpdqzQeihTMsyy7TA6wceXlwUe1ZBtmPHTynycSl3UxqycRBT', '0', '0', NULL, NULL, 'Active', 19999769894, 'Silver', '1000', NULL, '1027202309074327653b7ddf46321.png', '1027202309074348653b7ddf465fc.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 03:37:43', '2024-01-22 10:09:51', NULL),
(64, '10272023124436653bb0b48fd82.jpeg', '+971', '3693693693', 'amit', 'Kumar', 'amit@yopmail.com', '$2y$10$6sqOeG4pBWDdiJ7g6KywT.1Tw9T5t6AdbovJQoeZDN.QkGQXoF34G', 'Abu Dhabi', 'Albania', '2023-10-27', 'Male', 'BWDR68075KZ1', NULL, 'None', NULL, NULL, 'uDvhHtnoLexNk9L54hhhCvX2his0B1Q9b79ahzBHnFdOEXzztzb4obYg7KRsbWfj', '0', '0', NULL, NULL, 'Active', 90929199885, 'Silver', '1000', NULL, '1027202312443758653bb0b525bc3.png', '1027202312443724653bb0b525db8.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 07:14:36', '2024-01-22 10:09:51', NULL),
(65, '10272023124735653bb167b50a7.jpeg', '+971', '8542222222', 'gogkcjxufskgskgzkgzgzhozzgzigzzzogz', 'sigsigxigxxgguzziyizizfizfyfzyifizy', 'r@yopmail.com', '$2y$10$bRFd6QIhuv.m4REr.7m7Yu/D8HE/3cMsgWXK5Yog2Vb2cnn5xJrdm', 'Umm Al Quwain', 'Åland Islands', '2002-10-27', 'Other', 'GaTH18359wJP', NULL, 'Ios', 'f9b1635eff4fbf7d153c6fef098f6a868dfa801def5083fba32f006542755b45', NULL, 'IihVrWhBJrC7ajr3tx8GRCJoNaR7Lvhih259LgCrl3h3owJsiqpoN5gje2VM63xF', '0', '0', NULL, NULL, 'Active', 44600027716, 'Silver', '1000', NULL, '1027202312473589653bb167e63af.png', '1027202312473510653bb167e659b.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 07:17:35', '2024-01-22 10:09:51', NULL),
(66, '10272023130304653bb5089ea22.png', '+971', '3573573573', 'stuft yf', 'sbbsbs a', 'sd@yopmail.com', '$2y$10$xtdhwmtdGvebz0MQE/w65.87OJ206id3FLA4lyN22JXx5943uHP.O', 'Umm Al Quwain', 'Afghanistan', '2023-10-27', 'Male', 'Lqk13986YdmV', NULL, 'None', NULL, NULL, 'lHOWYh1JKOgW5IvQn0BhAgbfn7zdYehl6oFBg1FFPNE7Bq8L4iajdKiP6rf8FWFJ', '0', '0', NULL, NULL, 'Active', 65155036477, 'Silver', '1000', NULL, '1027202313023126653bb4e7d4e45.png', '1027202313023126653bb4e7d4ff4.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 07:32:31', '2024-01-22 10:09:51', NULL),
(67, '10272023130934653bb68ee81c1.jpeg', '+971', '8894421373', 'hdjcjifjfjfufjfjfjfjcjcjcjcjc', 'hdhd', 'Ram@yopmail.com', '$2y$10$dMm0Bq0XyB.SH4NBJ4PCyenx010bkkpW30kkcvEqkMhw9wveAIVCS', 'Umm Al Quwain', 'Austria', '2023-10-27', 'Male', 'BFTy6341rrNw', NULL, 'None', NULL, NULL, 'mj7uLZUk8Ua5QFEqClHa46fa8rHuzSBumguRdenljwvxtKJJei7SXKGWI2P3lcff', '0', '0', NULL, NULL, 'Active', 86598074253, 'Silver', '1000', NULL, '1027202313093633653bb690382eb.png', '1027202313093611653bb690386e6.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 07:39:35', '2024-01-22 10:09:51', NULL),
(68, '10272023135402653bc0fa56b51.jpeg', '+971', '2580258025', 'fufufufjfjfjfifjfjfjfjfjfjfjfjfjcjf', 'uufufjfjfjfjfjfjfjfjfjfjvjfjgjfjfjf', 'hc@yopmail.com', '$2y$10$0pHm6z7loDP3R7YwRpXPOek5EcOaBI4xGndIlGkoHzcJSVpjJKHsS', 'Abu Dhabi', 'Albania', '2023-10-27', 'Male', 'dew86548emuq', NULL, 'Ios', 'f79f4dee17663296231ad34c31ae00471340a09fe41df14d7a76793d2a265ade', NULL, '5QSaqL3NK7buCc6STM2nvFvHVeE91g4DtD2pFWrH8XmWCsjgW495oCPco5PoSmr9', '0', '0', NULL, NULL, 'Active', 87026229504, 'Silver', '1000', NULL, '1027202313540242653bc0fa89281.png', '1027202313540250653bc0fa894b4.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 08:24:02', '2024-01-22 10:09:51', NULL),
(69, NULL, '+971', '222222222213', 'rahul', 'fhgguuguggu', 'mobileph515@gmail.com', '$2y$10$mgTv/xCvr9RB/0N18i.THeJWUzskClw4bTY/coMk4t9EJiBJZF/ia', 'Dubai', 'Algeria', '2023-10-27', 'Male', '7ZSp4280rEsz', NULL, 'None', NULL, NULL, '3mRekXurrimW9LkLXEBIzM7cdF9b2U1Cih2a1jQHTvTUlPmqxNkqfQuM55sWb4W2', '0', '0', NULL, NULL, 'Active', 69343520101, 'Silver', '1000', NULL, '1027202314070547653bc40938ea8.png', '1027202314070589653bc409391d0.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 08:37:05', '2024-01-22 10:09:51', NULL),
(70, NULL, '+971', '68683868385', 'johnyy', 'hchfugfugug', 'll@yopmail.com', '$2y$10$eh2wRqjhpJJGJSld05aTCutu7wRKSPfaOtErJRYqPyR4mW5y85z3W', 'Ras Al Khaimah', 'Andorra', '2023-10-27', 'Other', 'aKh26577kJS7', NULL, 'Android', 'fWBfXbipQYi5JaA9H882Qk:APA91bGS555dbt6g8KfYCBUIzJduLbAsN_kuGR-KSm0JfWxUTbv8cAh0QFNLMl9dNrEv1ao1NtCt-x-hVpVVlv7WDtAbxBlgIlQxjTXQYJFlq31NPbstS1Zf_lZEYLHTTv9HSbkHEfqA', NULL, 'dbR4cJp10H2ktuNg39f0hrfcawOLgoLxyPnyiVbh0LpBoYyh4RQlFrc1VlX0sQkG', '0', '0', NULL, NULL, 'Active', 27131568749, 'Silver', '1000', NULL, '1027202314075270653bc438682c9.png', '1027202314075230653bc438685dd.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 08:37:52', '2024-01-22 10:09:51', NULL),
(71, '10272023141751653bc68f67430.png', '+971', '8894308907', 'cola', 'cola', 'col@yopmail.com', '$2y$10$qADgIN/xRQXRTrYIFDuoL.Mh0N9l0tHuhzVP3r8PkXQdGFS6oYs/a', 'Abu Dhabi', 'Albania', '2023-10-27', 'Male', 'DahP1358T1dB', NULL, 'None', NULL, NULL, 'bY6jKG5eEo4Xxm18jQW4VOYZbRWkOki4dj6E8jcAUZ2MWzvhdYNI2PPXZp676LDz', '0', '0', NULL, NULL, 'Active', 90777784689, 'Silver', '1000', NULL, '1027202314164830653bc6504b23c.png', '1027202314164877653bc6504b647.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 08:46:47', '2024-01-22 10:09:51', NULL),
(72, '0118202413565165a92e23f3db2.png', '+971', '8858586868', 'Kuashasl12', 'Manral', 'yg3@yopmail.com', '$2y$10$OPPvKdWqq6oG1EJoVT.Nye.THBebjmUYzJKoDXgvf6HFDqnwlrcP6', 'Dubai', 'Algeria', '2023-10-27', 'Female', '35Hi6146Et2x', NULL, 'None', NULL, NULL, 'YORZrsPw6ITxHz1P8NlrWKnKle35AXZkgMNNcC3Qh3aGrTMhzN4CWBM9KejkaZVY', '0', '2', NULL, NULL, 'Active', 58182515426, 'Silver', '1000', NULL, '1027202314503020653bce36afa6c.png', '1027202314503016653bce36afd5d.png', '2023-10-27', 0, 0, 'yyg3@yopmail.com', '', '', 'No', 'No', '2023-10-27 09:20:30', '2024-01-22 10:09:51', NULL),
(73, '10272023153013653bd785c4b38.jpeg', '+971', '868686868685', 'hchchoxkvxvxkxgxzkg)\'mglhxkhxkhxglx', 'hhfhdhdhdlhdhdlhflhdlhdflchlhf', 'gg@yopmail.com', '$2y$10$fWMiRurpv.YHvOYcI5Abfu.wCmDc9ULEg4dKW2YlV4xbdDWkXFTZm', 'Abu Dhabi', 'Afghanistan', '2023-10-27', 'Male', 'OwN33183zmw7', NULL, 'None', NULL, NULL, '7QyHMtKarlUucHg2Em4YzHCFnRC2m1wYty2c5MG6n9uPOkpiNOCu8yu3Eey4yult', '0', '0', NULL, NULL, 'Active', 88237535840, 'Silver', '1000', NULL, '1027202315301438653bd78612506.png', '1027202315301486653bd786128c8.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 10:00:13', '2024-01-22 10:09:51', NULL),
(74, '10272023154248653bda78e2012.jpeg', '+971', '54354648754', 'bsbdbdjdhdhdjdjdhdhdhdjdhdhdh', 'hdhdhdhdhdhdhdjfhfjfhfhfhfhfhfhfh', 'asd@yopmail.com', '$2y$10$30.XdKqP8XVb3rDGoPyQ7Oq2lgDfPTgcVxgWbiV4meAgrm8eFSMNO', 'Abu Dhabi', 'Algeria', '2023-10-27', 'Other', 'AbWV4234TmJO', NULL, 'Ios', 'd0bcd66d9ba54469da9d2ed4aa91a51d434e7dd3a31b6c0608303929373e0371', NULL, 'DNkjDkyppxkjyD6aw85DWuLWglJbCsAwyuWd2qWvnBgTLnRkmfcc43tC93UUmvAg', '0', '0', NULL, NULL, 'Active', 30504047933, 'Silver', '1000', NULL, '1027202315424946653bda792ee1e.png', '1027202315424978653bda792f06d.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 10:12:49', '2024-01-22 10:09:51', NULL),
(75, '10272023160955653be0d303812.jpeg', '+971', '5868828585', 'jgigggjgufhdgoydottosyodoysoysoydy', 'phdudoydoydoydohdphdlhxlhdhldhld', 'kah@yopmail.com', '$2y$10$oWysXPomDrfosTobjTirIud1Cy0eXtC41ZtkPx3WcovH60UpKaTqC', 'Abu Dhabi', 'Algeria', '2023-10-27', 'Other', 'WPar9524mrMd', NULL, 'Ios', 'a7180eeb89bc17cc5a7dc1da7f1438a887d6c22480d688c63afa73ddad22fda6', NULL, 'YuixTqfEoHBu9BqviVzaedfBSNghmgfdbc8uBNVFT9MI7gT2l3a4KOf5ZJwTNXHV', '0', '0', NULL, NULL, 'Active', 67642981779, 'Silver', '1000', NULL, '1027202316095528653be0d344d41.png', '1027202316095594653be0d345098.png', '2023-10-27', 0, 0, NULL, '', '', NULL, NULL, '2023-10-27 10:39:55', '2024-01-22 10:09:51', NULL),
(76, '10302023055518653f454611948.jpeg', '+971', '56465495465', 'kgdgksgodgksgkkgxkgskgskgdkgd', 'gdkgdkgdkgdkgdkgdhkdohdoydohdohdoh', 'lhg@yopmail.com', '$2y$10$UzQ876g8PYuCHfiiiXH58eB/KUWKP2E/jkMx1cywMO3eQQdRUw4hK', 'Abu Dhabi', 'Afghanistan', '2023-10-30', 'Male', 'jh3I50328Eid', NULL, 'None', NULL, NULL, 'E7GaIA3UPB1rB0Ug3vix1t8lgcc61wC2bucNdwoPZIxJI3x0czo2rkewhRTdveem', '0', '0', NULL, NULL, 'Active', 89662726278, 'Silver', '1000', NULL, '1030202305551870653f4546ac65e.png', '1030202305551821653f4546ac790.png', '2023-10-30', 0, 0, NULL, '', '', NULL, NULL, '2023-10-30 00:25:18', '2024-01-22 10:09:51', NULL),
(77, '12152023084226657c117235df6.jpeg', '+91', '9817813624', 'Abhay', 'Rana', 'user2@yopmail.com', '$2y$10$LHojLecAbS7Anx0dVj4UEuu1V5rhn7YxzPCjwqrpVO8afPUgvT6EW', 'Abu Dhabi', 'Afghanistan', '2011-12-15', 'Male', '6HxR2833UDwr', NULL, 'None', NULL, NULL, 'Xar0myjzojn0RBASOmeFZWkmFw53oAl0iyH0kP9L7eTJYMnXuCE8i7xv5IFhYg5Q', '0', '0', NULL, NULL, 'Active', 95959892972, 'Silver', '1000', NULL, '1215202308422656657c1172e8350.png', '1215202308422650657c1172f2ea7.png', '2023-12-15', 0, 0, NULL, '', '', NULL, NULL, '2023-12-15 03:12:26', '2024-01-22 10:09:51', NULL),
(78, '12182023120307658034fb63602.jpeg', '+91', '9817813955', 'user2', 'user', 'user50@yopmail.com', '$2y$10$FtyKpnJf5BYHBoib0ax7k.nj.N2TdV1LriWZ0mXZCZGOLPQ4wGkFO', 'Abu Dhabi', 'Andorra', '2013-12-18', 'Male', '05W57452oWbB', NULL, 'None', NULL, NULL, 'LCT9KGgzA45BN7nZYNDaZOm9t0tXqwD67MQXFWkigXKtBKG9jLnU47KbitkuZImA', '0', '1', NULL, NULL, 'Active', 11852970928, 'Silver', '1000', NULL, '1218202312030873658034fc4c788.png', '1218202312030833658034fc53f99.png', '2023-12-18', 0, 0, NULL, '', '', NULL, NULL, '2023-12-18 06:33:07', '2024-01-22 10:09:51', NULL),
(79, '122020230826286582a53485000.jpeg', '+91', '9817813944', 'user3', 'user', 'user3@yopmail.com', '$2y$10$q8yIVJ3Z6AgrzAUKiHncfuceXvme3iYoIuMskXsu0bHL0Ni5i9OzO', 'Abu Dhabi', 'Anguilla', '2015-12-20', 'Male', 'clBH9845pQ65', NULL, 'None', NULL, NULL, 'y5sW7OL0ilZoTktolZ7SwFJFLmXjQnX2JhHblKO3dEWqDSjXwJcVvfbedOp9FMB2', '0', '0', NULL, NULL, 'Active', 48748131776, 'Silver', '1000', NULL, '12202023082629236582a535077ce.png', '12202023082629536582a5350c8e0.png', '2023-12-20', 0, 0, NULL, '', '', NULL, NULL, '2023-12-20 02:56:28', '2024-01-22 10:09:51', NULL),
(80, '122120230650376583e03d54a92.jpeg', '+91', '9817813988', 'ssd', 'sdfs', 'anjha@yopmail.com', '$2y$10$cQVlH7j3ZqRMX3EabGE3SOO9S4KhjcW6wMw.Efzz1fXJtQmHZ8.l2', 'Abu Dhabi', 'American Samoa', '2017-12-21', 'Male', 'ddK85587fhGK', NULL, 'None', NULL, NULL, 'PBCpC6eUrccKmznqREsCjzUM5fikzwrMH9j1T59cwkmpGRvK4AgBWPIcSfKUauZF', '0', '0', NULL, NULL, 'Active', 53689204753, 'Silver', '1000', NULL, '12212023065037136583e03dc943c.png', '12212023065037586583e03dc96d8.png', '2023-12-21', 0, 0, NULL, '', '', NULL, NULL, '2023-12-21 01:20:37', '2024-01-22 10:09:51', NULL),
(81, '122120230832336583f82115a48.jpeg', '+91', '98178125645', 'dfs', 'dsfs', 'asffd@yopmail.com', '$2y$10$dhfaWE7jx6ReHfDtOL5/6uboxG5WKRM0ePrraq/kFGgc8Mcwow6f.', 'Abu Dhabi', 'American Samoa', '2023-12-21', 'Male', 'Zk433795cth2', NULL, 'None', NULL, NULL, 'v0JbFsXHkWNP3vwRk7g1ilXnyamDtTCt8L3jv6XNSaooeDMfhVM8N40rbPuuGi57', '0', '0', NULL, NULL, 'Active', 65900584977, 'Silver', '1000', NULL, '12212023083233616583f821afccb.png', '12212023083233596583f821b1f78.png', '2023-12-21', 0, 0, NULL, '', '', NULL, NULL, '2023-12-21 03:02:33', '2024-01-22 10:09:51', NULL),
(82, '122120230904096583ff891b819.jpeg', '+91', '9817813945', 'dsfs', 'sdfs', 'sdsdf@yopmail.com', '$2y$10$F2EZrNvzEj3uFt.usgK/KuztuZUkgwo.wM6KcGtugBCUWLKuiCeFi', 'Abu Dhabi', 'Antigua & Barbuda', '2008-12-21', 'Male', 'e9EX6076ZrY3', NULL, 'None', NULL, NULL, 'n5oEELQI99EaPdrsxanzHkpfjmEJUNxSsIgE9al3Dce79xaV3VPQHE46mRmMAs8B', '0', '0', NULL, NULL, 'Active', 88000998223, 'Silver', '1000', NULL, '12212023090409906583ff894ceba.png', '12212023090409766583ff894d01b.png', '2023-12-21', 0, 0, NULL, '', '', NULL, NULL, '2023-12-21 03:34:09', '2024-01-22 10:09:51', NULL),
(83, '0119202410135765aa4b6519141.jpg', '+91', '7845652145', 'hello', 'hg', 'user9@yopmail.com', '$2y$10$gD50GXk7MdblVV3R28T0nOr81ezyK3HPPMDlzm9rrCG/gAg9fJFKm', 'Ras Al Khaimah', 'Argentina', '2008-01-16', 'Male', 'e4Vr89161j8k', NULL, 'Android', 'fzRfmXIyQOa9TLqU1bzbhq:APA91bGObB9RcvrnfG-XFBIvMmT4JYamx8FlW_tOnkttXipxevffmmh4gi5KYTUPgdlpoCVfA29lQVCIxDeX5z4vj40oGrhSeZFSektOx3TD7cvgGpkFGocQZjHWuHljbJ-JwYo6STz3', NULL, 'xYT1RE90hb5WrUX6yLulvaag6HNqDJ3inQLQZvGM7DKZbN9igh1pY29amto8IB0i', '0', '2', NULL, NULL, 'Active', 89714236927, 'Silver', '1000', NULL, '122120231218154365842d07d2349.png', '122120231218156765842d07d5fcc.png', '2023-12-21', 0, 0, 'rajputaditya@yopmail.com', '', '', NULL, NULL, '2023-12-21 06:48:15', '2024-01-23 01:20:47', NULL),
(84, '12282023053705658d0981d6b1f.jpeg', '+91', '9817855663', 'dsf', 'df', 'ads@yopmail.com', '$2y$10$/cdMxbEdhyfNjCz6hqz.vOyeHGpnCRkkjqxcoxVm9w8lB/2wTvTiC', 'Abu Dhabi', 'Antarctica', '2023-12-28', 'Male', 'fhf94432u4Ug', NULL, 'Ios', '80d6c2d9d46be6c4de8ca3760adc2680aec549fcb7f59a0633cae48b9f57544e60fdd3eaf76447f1ee5f127c7be4603b350c3ca45d43f4811c4061f66bde373f2e8cc645fb8f9cc4b65ec15e2a8ebc1e', NULL, 'tCl9WdgdYkKqP7GhHXGCaZDxFwvGSwrqttY6CZFAMeVKaTnjVQtEHhstYDYamWyL', '0', '0', NULL, NULL, 'Active', 43779771440, 'Silver', '1000', NULL, '1228202305370640658d09826b6d1.png', '1228202305370614658d09826ba3f.png', '2023-12-28', 0, 0, NULL, '', '', NULL, NULL, '2023-12-28 00:07:06', '2024-01-22 10:09:51', NULL);
INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `refer_amount_used`, `request_change_email`, `like_list`, `music_list`, `do_you_drink`, `do_you_smoke`, `created_at`, `updated_at`, `deleted_at`) VALUES
(85, '12292023072927658e755735075.jpeg', '+91', '9817833221', 'ddfsdf', 'hjhd', 'hello6@gmail.com', '$2y$10$kOkMFHJzrweSzGh2HubmQups9nRzWRCHa2LyJG9q0h8kaU1imtGW6', 'Abu Dhabi', 'Angola', '2023-12-29', 'Male', 'X1y575649x9x', NULL, 'None', NULL, NULL, 'zIOMElddOaNuuLW4PY9ITm0eMbiFfWP8S27AL7xFqx7kkEDhKfA4KPxmmYoMxCAS', '0', '0', NULL, NULL, 'Active', 24710156470, 'Silver', '1000', NULL, '1229202307292738658e7557a38c5.png', '1229202307292768658e7557a3a16.png', '2023-12-29', 0, 0, NULL, '', '', NULL, NULL, '2023-12-29 01:59:27', '2024-01-22 10:09:51', NULL),
(86, '12292023095145658e96b1eb394.jpeg', '+91', '9845651245', 'user', '90', 'user90@yopmail.com', '$2y$10$VKmBruY9MpJyH7JU1xoy7.XsLq263YnkkB3IR9bbdJeom4KTri5Yy', 'Abu Dhabi', 'Argentina', '2014-12-29', 'Male', 'CEpj6446gFms', NULL, 'None', NULL, NULL, 'SDG0oxofwUJYoHjhrmZYVdIuMJYXdIX22pHMO20d8Pw3vvqoYRoSvLNVhApPctsF', '0', '0', NULL, NULL, 'Active', 46683105379, 'Silver', '1000', NULL, '1229202309514694658e96b229b5b.png', '1229202309514622658e96b229f05.png', '2023-12-29', 0, 0, NULL, '', '', NULL, NULL, '2023-12-29 04:21:46', '2024-01-22 10:09:51', NULL),
(87, '12292023113537658eaf09d6af6.jpeg', '+91', '9856321475', 'bzb', 'ios20', 'ios20@yopmail.com', '$2y$10$K0/PMumkIWsb7rteM5XK9evTW/dQZAHlD7xacV818QMhoRXg.Cai6', 'Abu Dhabi', 'American Samoa', '2017-12-29', 'Male', 'U1co91361Ers', NULL, 'None', NULL, NULL, 'n6AnRsU77CSfGKXGSTdO3rbpzqCwQvmyfIzetfMFLZnQX3U2BN43stS37rFShcSP', '0', '0', NULL, NULL, 'Active', 84023798351, 'Silver', '1000', NULL, '1229202311353892658eaf0a5f0f9.png', '1229202311353871658eaf0a5f4a3.png', '2023-12-29', 0, 0, NULL, '', '', NULL, NULL, '2023-12-29 06:05:38', '2024-01-22 10:09:51', NULL),
(88, '12292023125422658ec17e01eca.jpeg', '+91', '9123456789', 'Ajay', 'Kumar', 'ajay@yopmail.com', '$2y$10$7/VipaLeEqSbG9p9AXZjiez4cHNEjwuxyvhGxTPkthvXpSPcpDF32', 'Abu Dhabi', 'Albania', '2017-10-26', 'Male', '43qy7436VzCz', NULL, 'Ios', '59bb7af9ddb96f82801abcd9f0e8a39e5359e3bdffcc7ec09358146882062283', NULL, 'P69AUf7G2W9XdCAS2usjfVY3KiA1Wf2zHeQnvooUoQnbexv0USKprCkCBeIWvMCl', '0', '0', NULL, NULL, 'Active', 69405479644, 'Silver', '1000', NULL, '1229202312542280658ec17e82ae1.png', '1229202312542269658ec17e82dc5.png', '2023-12-29', 0, 0, NULL, '', '', NULL, NULL, '2023-12-29 07:24:22', '2024-01-22 10:09:51', NULL),
(89, '010220240730296593bb952eaf0.jpg', '+91', '000000000', 'aditya', 'rajputfg', 'rajputadityay@yopmail.com', '$2y$10$a9icEjW58RT/dcySN9HoquMjjAJjFTm9WXvujx1mnqqqkRrm9iOGu', 'Dubai', 'Andorra', '2004-04-26', 'Female', '8Qcl2927uxjd', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 93835872119, 'Silver', '1000', NULL, '01022024073030906593bb964dd93.png', '01022024073030546593bb96546ad.png', '2024-01-02', 0, 0, NULL, '', '', 'Regular', 'Occasional', '2024-01-02 02:00:29', '2024-01-22 10:09:51', NULL),
(90, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0124202406350065b0af947784b.jpg): failed to open stream: Permission denied', '+91', '9996171434', 'Manish', 'Gumbal', 'manish@yopmail.com', '$2y$10$dp2iFaI6XUOSAt.Sl0CqjulgQ9447ILDnk31/sIOS9fRgctB2RAVO', 'Dubai', 'India', '1989-01-02', 'Male', 'E8xg2244B2GJ', NULL, 'Android', 'ce-NT3meSHGz8VtnpAe6ic:APA91bHBY4Uq41pN8czfVlkQPttTninF1XtSm-jUXMxFW6VlyKPrXhlPZH3QKdqFWQLhksWd4_3FB9G4EoZsaRdG4dox4-0qtyR8TtqWjFPlSab8PyzHSDQzGNc10Ox2W6VFTCfYDi4u', NULL, 'ATr9du9yl6FHeDtdQnSmQEYEuSrFSrFGCFUmmo7qKxa2ANQ1IDddjJrrjxj5RkWV', '0', '1', NULL, NULL, 'Active', 85775466762, 'Silver', '1000', NULL, '01022024094951576593dc3f9454c.png', '01022024094951436593dc3f96e1d.png', '2024-01-02', 0, 0, NULL, '7,8,9', '1,2,3', NULL, NULL, '2024-01-02 04:19:51', '2024-01-24 01:05:00', NULL),
(91, '010220241124066593f256dad0e.jpeg', '+91', '6545256325', 'hello', 'jel', 'hello3@yopmail.com', '$2y$10$uXsvvY.DKC.Id7bkuP3ZfOfO7fN3rlFPoPn4LtaTHRvzsrGPWhkcS', 'Abu Dhabi', 'Andorra', '2013-01-02', 'Male', 'sM9M9604kJjf', NULL, 'Ios', '802463456d733499ce718592b01a015560bef16818249da802d30ef320eda354cdf1380a95d55148abd8d4df05317894498ecdd7fade4af77a0d9c7987efbfe8375d0c13717105486eabc728ba6be43a', NULL, '1gg1l8dVFlmnhcrDenWEm9Aqd5kxaaJOGFOv1AmRSeevD61j8UOvVVL77wwwPXOs', '0', '0', NULL, NULL, 'Active', 48052843491, 'Silver', '1000', NULL, '01022024112407196593f2575c61b.png', '01022024112407976593f2575ca31.png', '2024-01-02', 0, 0, NULL, '', '', NULL, NULL, '2024-01-02 05:54:07', '2024-01-22 10:09:51', NULL),
(92, '01042024074452659661f465f7f.jpg', '+971', '83568664634', 'ahhigwi', 'uhqxhhish', 'mobilephone155udhs15@gmail.com', '$2y$10$/MiKRI/M/RWxI4HLYDvDJuz6aP4LRTK4315JQyFKLubfp2mwUKTAu', 'Dubai', 'Algeria', '2004-01-04', 'Male', 'KLRD2343RlB9', NULL, 'None', NULL, NULL, 'jHInYtbzE30YXGlmmwWmPKzRPHVxPkDMHKrIq8ijcsqRvQTaWYD1L9Zxbt0pFfcm', '0', '0', NULL, NULL, 'Active', 95798972548, 'Silver', '1000', NULL, '0104202407445349659661f512d6d.png', '0104202407445396659661f512eb9.png', '2024-01-04', 0, 0, NULL, '', '', NULL, NULL, '2024-01-04 02:14:52', '2024-01-22 10:09:51', NULL),
(93, '010420241414136596bd35e66cd.jpeg', '+971', '4515451215212', 'fdffdfdd', 'fdfdfdff', 'fdfasdf@fdahk.com', '$2y$10$LJlyjQqkKv0bOC/4hexhKOkpn97r0PMuQq5j/9RMrwf7PY2ssGbdu', 'Abu Dhabi', 'Albania', '2023-02-03', 'Female', 'kUOX34640gCE', NULL, 'None', NULL, NULL, 'RNgxgpUtsuztV1rz6yxLfiUiiZ1VNG7zdyQJqEgUV4YQVy7Y3WwCIAeQtADlACws', '0', '0', NULL, NULL, 'Active', 35131710352, 'Silver', '1000', NULL, '01042024141414806596bd366762c.png', '01042024141414366596bd3667d34.png', '2024-01-04', 0, 0, NULL, '', '', NULL, NULL, '2024-01-04 08:44:14', '2024-01-22 10:09:51', NULL),
(94, NULL, '+971', '626564343434', 'ydhdbb', 'hdhshsh', 'harmanhehdtesting9@gmail.com', '$2y$10$JvLxHMieG572AyDBVrgsKOyqSDdDd6EuceKE.uJDuckiI8ly8ru9G', 'Ajman', 'Algeria', '2004-01-04', 'Male', 'gLv86701wpTe', NULL, 'None', NULL, NULL, 'X0ZlsYmXqZgM8ChGYmAqbYlAH8IN9e0mNjbXMWOeEt1zY4DaYKEh7jYMwoOu0egJ', '0', '0', NULL, NULL, 'Active', 12831364075, 'Silver', '1000', NULL, '0105202404391151659787ef43de1.png', '0105202404391159659787ef49c93.png', '2024-01-05', 0, 0, NULL, '', '', NULL, NULL, '2024-01-04 23:09:10', '2024-01-22 10:09:51', NULL),
(95, NULL, '+971', '8797583258', 'shagun', 'dhiman', 'shagundhiman66@gmail.com', '$2y$10$DzBNrx0nmzC8p2.Iyyq7BOO5uSzHAwih8M/jygFz.OlAUVSuWVjT6', 'Ajman', 'India', '2024-01-04', 'Male', '9hdK2752vCUT', NULL, 'None', NULL, NULL, 'C224MfvgnNHtVeQmfDdjvblaqUCeDFas7qrt4GzkPrnUwx66sZX06Tbp3iKrOf10', '0', '0', NULL, NULL, 'Active', 60989460071, 'Silver', '1000', NULL, '010520240454101565978b7215a70.png', '010520240454102165978b7215e93.png', '2024-01-05', 0, 0, NULL, '', '', NULL, NULL, '2024-01-04 23:24:09', '2024-01-22 10:09:51', NULL),
(96, '010520240721106597ade60fb87.jpeg', '+971', '77141714', 'dads', 'ffasdfas', 'social@yopmail.com', '$2y$10$sQvhjFmNbuFxf3mea9ZX1urS/WiL9apWr3D3DXQpiJbgV9dp84.EK', 'Abu Dhabi', 'Albania', '2024-01-05', 'Male', '5E1G8979dmDC', NULL, 'Ios', '80fb1db579d6a08885cf572bdde28ef666b92f4ec902d6758c2ffbb7bd589c5cd499bde6ac361df9bbfffb89d4f5cfaced8d38be5727fd113decce3f4b6f4a83821748521eabad6a842840390fbbdbf1', NULL, 'eE664pi2blrgVh4t0NDdIkpZPc628fSm2H1HwofcygP4kEQAQasTN1ZMvUN5wpc2', '0', '0', NULL, NULL, 'Active', 93108210761, 'Silver', '1000', NULL, '01052024072110956597ade684146.png', '01052024072110566597ade68456d.png', '2024-01-05', 0, 0, NULL, '', '', NULL, NULL, '2024-01-05 01:51:10', '2024-01-22 10:09:51', NULL),
(97, NULL, '+971', '6464848584', 'shagun', 'dhiman', 'shagundhiman12@gmail.com', '$2y$10$MaAyh9yH/zTZmWo6xG3czuXxYdfeKTxWwK/1o/N2sy6WBRwdxiuQe', 'Dubai', 'India', '1999-06-23', 'Male', '6Tm27641rZnA', NULL, 'None', NULL, NULL, 'wjMVLT1Qisqn5lbOp3PRllFhsrIYTNMkh68Fy0RBqLT98Z60abEMI2HfYm6wVtih', '0', '0', NULL, NULL, 'Active', 79735664850, 'Silver', '1000', NULL, '0108202405080853659b8338daa1a.png', '0108202405080846659b8338e6999.png', '2024-01-08', 0, 0, NULL, '', '', NULL, NULL, '2024-01-07 23:38:08', '2024-01-22 10:09:51', NULL),
(98, '01082024055906659b8f2a5c0e2.jpeg', '+91', '9865652398', 'hello', 'hello3', 'hello@yopmail.com', '$2y$10$DbCqD1PeTC46cH1r7op7GO1N.8GS139PstLhi.S/2K2tHeIqD0ROO', 'Abu Dhabi', 'Andorra', '2012-01-08', 'Male', '68jg1057HZf0', NULL, 'None', NULL, NULL, 'UgHmCKjiVqVa1bPHseX4NQlu9wWsroxWiyw9ep4UWexpe4ZzbfrGrMJ5cCKeaCv1', '0', '0', NULL, NULL, 'Active', 56963733636, 'Silver', '1000', NULL, '0108202405590662659b8f2abbdd8.png', '0108202405590681659b8f2abc114.png', '2024-01-08', 0, 0, NULL, '', '', NULL, NULL, '2024-01-08 00:29:06', '2024-01-22 10:09:51', NULL),
(99, '01082024070711659b9f1f5c88f.jpeg', '+91', '9875412541', 'hello', 'hello3', 'hellok@yopmail.com', '$2y$10$5UhL.VLWnup1DD6gR23c9O3KIgLg3BCF4SClF6Q5GsYylHvCTORZe', 'Abu Dhabi', 'Antigua & Barbuda', '2018-01-08', 'Male', 'esR05810nCef', NULL, 'None', NULL, NULL, 'US9is0FzvNXxgMKAZxHhsdDe58MkfH0MlEussjZQciFpF0AseXYnrFHu4FB3Pndm', '0', '0', NULL, NULL, 'Active', 75240985391, 'Silver', '1000', NULL, '0108202407071127659b9f1fb1403.png', '0108202407071187659b9f1fb1616.png', '2024-01-08', 0, 0, NULL, '', '', NULL, NULL, '2024-01-08 01:37:11', '2024-01-22 10:09:51', NULL),
(100, '01082024081033659badf9dec83.jpeg', '+91', '9874545213', 'kkkk', 'aaaaa', 'hello99@yopmail.com', '$2y$10$VXMT3gx/ONnbc2kIFio.UuXRHFc/O083u0NtCbUI/de0VHMuMdhnK', 'Abu Dhabi', 'Armenia', '2024-01-08', 'Male', '4yRY6465Lttg', NULL, 'None', NULL, NULL, 'GZLAJAmXcnqaG4h2nnbHwAS18ZwYATC2B0Ta4cufOnq1oVgjDCf9jA8YprOhN3dy', '0', '0', NULL, NULL, 'Active', 61051218353, 'Silver', '1000', NULL, '0108202408103466659badfa2d985.png', '0108202408103429659badfa2dce3.png', '2024-01-08', 0, 0, NULL, '', '', NULL, NULL, '2024-01-08 02:40:34', '2024-01-29 07:34:36', NULL),
(101, NULL, '+971', '35695565686', 'jfgkglglgl', 'tiyitigk', 'mobilephonecjgfj15515@gmail.com', '$2y$10$j6N5N99aBiK/6aAQUSzat.sdWkkip7n7ez4z/SXVigPx1GyapDdj.', 'Dubai', 'United States of America', '2024-01-09', 'Male', 'FPOf51585DFX', NULL, 'None', NULL, NULL, 'z7YwhT1RMRH3EXB2nV1DFa6VHmMAHIOb7AW6CwuSTKMvxKPl2nQTqZNXRhc0DVD2', '0', '0', NULL, NULL, 'Active', 37730096215, 'Silver', '1000', NULL, '0109202412593114659d4333afe18.png', '0109202412593116659d4333ba6de.png', '2024-01-09', 0, 0, NULL, '', '', NULL, NULL, '2024-01-09 07:29:31', '2024-01-22 10:09:51', NULL),
(102, NULL, '+971', '888888888888', 'vzzbbdzbbd', 'bzbdbdzbbssb', 'h66@yopmail.com', '$2y$10$dWJN8EZ91afMZ7YfueztV.veZT7dPf47MAwyLyjQ9mFMajSvpNrO.', 'Fujairah', 'American Samoa', '2024-01-09', 'Female', '0xhT9558myVz', NULL, 'None', NULL, NULL, 'g4RVYoqDgTkqE78pZj1k33jXygNyDtvHrz89m987YmZFvlZVcukvGTwKRNtp7rbn', '0', '0', NULL, NULL, 'Active', 99041634330, 'Silver', '1000', NULL, '0109202413261816659d497ae79bc.png', '0109202413261864659d497aed9a7.png', '2024-01-09', 0, 0, NULL, '', '', NULL, NULL, '2024-01-09 07:56:18', '2024-01-22 10:09:51', NULL),
(103, '01102024104702659e75a6cba30.jpg', '+971', '1234567893', 'gsggkdgkszgidgskgGkskgdkgskgdkgsgkkgsgzzmvxhlxhlvx', 'igdgkdgkzlgzgkzgkzgkzgkgkzckzckzgkz', 'a@yopmail.com', '$2y$10$vRdYfYFmeybFohbdOGpQhukzjluUolHnmbJgPd9.dqNsbfuz4BLR2', 'Umm Al Quwain', 'Afghanistan', '2024-01-09', 'Female', '9lKl2895xvxg', NULL, 'Android', 'eV7utT4lSwuOvPofMVPE7c:APA91bF0Wt3lackfulWKdBl7zIMsB91RICkwtuCyZDu8thByrlDPgfHp4tAy5BM5vSdRdiYO5Uev40VvdczihPvqeoRRx4UFQnt_IlRMT4Ll8Ei__oJTL4tzDZLW-yNKnQWf5X3PycIf', NULL, 'Lq7pkgzVPfxFLYlKPnboxSxl3x7Uo6exDvTSHB7yctYhlgHHNakvUxBeslEs0qBx', '0', '0', NULL, NULL, 'Active', 39340557549, 'Silver', '1000', NULL, '0109202413294822659d4a4c1ed4f.png', '0109202413294837659d4a4c1f09d.png', '2024-01-09', 0, 0, NULL, '', '', NULL, NULL, '2024-01-09 07:59:47', '2024-01-22 10:09:51', NULL),
(104, NULL, '+971', '9794949494644', 'sggsshhssh', 'zgsgsggzzggz', 'h33@yopmail.com', '$2y$10$9bb0wJpSwS0mL6239aHwD.UkJFc1JhCshyXXHofluuZN4p9ADZBnW', 'Ajman', 'Afghanistan', '2024-01-09', 'Female', 'TpMk1634RAFk', NULL, 'None', NULL, NULL, 'cL1tuakRXI6zuzcNq6gxHvKfCUrxmQauLxneDULb74TOFXUIgHGAaIuCGNEOuIUU', '0', '0', NULL, NULL, 'Active', 40497137225, 'Silver', '1000', NULL, '0109202413432519659d4d7dba47a.png', '0109202413432571659d4d7dba7be.png', '2024-01-09', 0, 0, NULL, '', '', NULL, NULL, '2024-01-09 08:13:25', '2024-01-22 10:09:51', NULL),
(105, '01092024142655659d57af44406.png', '+971', '88888888888', 'shhssh', 'bdbshd', 'bssbsbbs@hd.djd', '$2y$10$BxBnj12Ij5auFAM6mJrxiu1/aA3vD727fIVihT8Q1qSLagdBDO3tq', 'Abu Dhabi', 'Albania', '2024-01-09', 'Female', 'iJ1h49777vH4', NULL, 'Android', 'da5lvpHHTo-8XpfQpuwIEv:APA91bEh9U9k3y4UulZDB8n0kbbGMa7yCja2TPK2iHJo3Zpi8t6NZ8buq0X0RLjFHs0pmilWKobrwt4gbQf9YydE_5sCbYPiQ4uScT4dZODeyNBjwIjroV8_A-5H86A3pmQ_uc5DZj3q', NULL, 'WYqUpYQTAga1fsJzSeBbZbNgBpw6LmaQDEIalDUlsDAdrtivQHcln6BWnV93EQft', '0', '0', NULL, NULL, 'Active', 30861758780, 'Silver', '1000', NULL, '0109202414265599659d57afe8865.png', '0109202414265521659d57afe8d44.png', '2024-01-09', 0, 0, NULL, '', '', NULL, NULL, '2024-01-09 08:56:55', '2024-01-22 10:09:51', NULL),
(106, '01092024151626659d634aa018e.jpeg', '+971', '446666464664', 'hdhdhd', 'djdjdjdjjsjd', 'cv@hdhdhd.shjd', '$2y$10$tE9cDbh5ZoY9VhKbRaJbeupZ4KwwqRWmpQmf1R6ZUpNnN7tPUQFeu', 'Abu Dhabi', 'Albania', '2024-01-09', 'Male', 'YduF9800DSzr', NULL, 'None', NULL, NULL, '5VLYQbzKe6urvOm0qbZGSioB9uUgUjjyYNDiOX5aFNeXqoKxygUtNlBcU7izlqif', '0', '0', NULL, NULL, 'Active', 34937858579, 'Silver', '1000', NULL, '0109202415162765659d634b17c07.png', '0109202415162753659d634b1dbc6.png', '2024-01-09', 0, 0, NULL, '', '', NULL, NULL, '2024-01-09 09:46:26', '2024-01-22 10:09:51', NULL),
(107, '01092024152806659d660645675.jpeg', '+971', '4564568989', 'Dbbd', 'bdbd', 'h1@yopmail.com', '$2y$10$eX9Q3cbnn5ig9WYIizW37elDIwlFSeDdwZbo.qWlysgR8UjWWqZym', 'Abu Dhabi', 'Albania', '2024-01-09', 'Male', 'vuRS3814vjyb', NULL, 'None', NULL, NULL, 'aJxIIbGUyxBRv9mvWRuBlAi4eHAnnWoC63uubcxTLByIFKLfSff2pbSGWo22lcJG', '0', '0', NULL, NULL, 'Active', 75985658019, 'Silver', '1000', NULL, '0109202415280664659d66067b0aa.png', '0109202415280663659d66067b311.png', '2024-01-09', 0, 0, NULL, '', '', NULL, NULL, '2024-01-09 09:58:06', '2024-01-22 10:09:51', NULL),
(108, '01102024053041659e2b8195e2d.jpeg', '+91', '778783450', 'Deb', 'Raz', 'deb@yopmail.com', '$2y$10$wK4QgG6mFRiivGgcXHLMIOY.VzB0p36qDY1spC7akNObsPvWcEQri', 'Abu Dhabi', 'Ascension Island', '1995-01-10', 'Male', 'bM4U5344JWIa', NULL, 'None', NULL, NULL, 'HwW9WXEuYTcRKR5TCGPLYBuuBOrT9ncv9DBywqSmiAoymIaPKMQOMHBv1DZvn5Cb', '0', '0', NULL, NULL, 'Active', 81303618801, 'Silver', '1000', NULL, '0110202405304244659e2b8201b71.png', '0110202405304212659e2b8201d46.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 00:00:41', '2024-01-22 10:09:51', NULL),
(109, '01102024054453659e2ed58df2b.jpeg', '+971', '2323232323', 'jdjdjdjdjdjjddjjdjdjdjdjndjdhdjdnjd', 'dhdhdhdjdjdhdhhdhdhdhdjdjdjdjdjdjjd', 'kp@yopmail.com', '$2y$10$2UUt5pvBqFf0mbIHX5DQ0OYm2pwNJdiYQwp7gY6Bw2WRqAvHnHmre', 'Abu Dhabi', 'Afghanistan', '2024-01-09', 'Male', 'ckCM9396zXkD', NULL, 'Ios', '07b87b3069c6b6a8a59499085276d8e970665857e26c1f853fbd42a7fdb518a0', NULL, 'TMnlVA5VEuQ3rEW6eFqX3smOVONmRPrD1jTeivlprwOtVPuYaZ2KOZt1dDQFoPe6', '0', '0', NULL, NULL, 'Active', 42241769606, 'Silver', '1000', NULL, '0110202405445376659e2ed5cbe8f.png', '0110202405445371659e2ed5cc1fe.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 00:14:53', '2024-01-22 10:09:51', NULL),
(110, '01102024065541659e3f6dd5c5f.jpeg', '+971', '85426546456', 'ggfgfgfd', 'gfgfdgfgdf', 'gdfgdf@fnkdj.com', '$2y$10$sD0rKsfURwIlIFcyRyUFUuw0iJfK13eGFH8ibkxXLfPmZM5kcFVaq', 'Abu Dhabi', 'Afghanistan', '2014-11-09', 'Male', 'E5Bc1337IoKt', NULL, 'Ios', '801a8e891523d6cccbaf33872e610f593ab41a850eef8d86172b1ae14fe3134d3edb06c3ab6dcff3f4a435f6a01e9f273766431d50e6103ea950fa7ad6398425f02bdeb398bcf04407d55bfa1898383c', NULL, 'zk2UEeqo1J8poaxQRDnOimcv8q1ccx4Wj9b1eDZFrEY5RGNm5eDcV2lKBadnUULZ', '0', '0', NULL, NULL, 'Active', 54981738324, 'Silver', '1000', NULL, '0110202406554236659e3f6e2039f.png', '0110202406554257659e3f6e207a2.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 01:25:41', '2024-01-22 10:09:51', NULL),
(111, NULL, '+971', '8319891383197', 'aditua', 'wugxgqixh1', 'harmhehrantesting9@gmail.com', '$2y$10$b/xsRzYlNM7ASId1rhL0NuUdYPU.VmFwe45eoVmOS2iBA2vf49DXG', 'Ajman', 'Afghanistan', '2024-01-04', 'Male', 'kCBX9160PvfU', NULL, 'None', NULL, NULL, 'UTEvbRcl8c8TbMHhsBpWGsSKNj0gIIsMuG8fP5wsMPEYcmX0jhTBXXEmO5cz6hXQ', '0', '0', NULL, NULL, 'Active', 12680667832, 'Silver', '1000', NULL, '0110202407021082659e40f2c5948.png', '0110202407021035659e40f2c5c81.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 01:32:10', '2024-01-22 10:09:51', NULL),
(112, NULL, '+971', '286187681676871', 'bsuxibexe', 'xexubehxeux', 'harmhshsantesting9@gmail.com', '$2y$10$I.bj7X6yJ2by89R3j1raKeBoANsCI0V8RcJh1oPr4gg4YyRxZSEr.', 'Ajman', 'Albania', '2024-01-04', 'Male', 'M9AH4414qPPH', NULL, 'None', NULL, NULL, 'ZozflsZ4jLVXCHoTXcpgG6Q8iTsYffZdNtn8eneHQgKKoSnO8PD8utXO05TK5OCA', '0', '0', NULL, NULL, 'Active', 96291796827, 'Silver', '1000', NULL, '0110202407053692659e41c005e2f.png', '01102024070536100659e41c006156.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 01:35:35', '2024-01-22 10:09:51', NULL),
(113, '01102024075724659e4de40e4ee.jpeg', '+91', '9875414241', 'fdf', 'dfd', 'dsf@yopmail.com', '$2y$10$uwaoA4jky8EAtIvXn2V.8.HCYNhnTx1PqNS2zMTFaw.25fENkg2j6', 'Abu Dhabi', 'Aruba', '2017-01-10', 'Male', 'PqvV7990j3Nd', NULL, 'None', NULL, NULL, 'vJCsUvjtca4OUrdhKSoQqokcxB0uHpYJgJTkClV7YdldxHTIC8LrxBaqAlK0EYWJ', '0', '0', NULL, NULL, 'Active', 37279503958, 'Silver', '1000', NULL, '0110202407572422659e4de450b40.png', '0110202407572451659e4de450eeb.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 02:27:24', '2024-01-22 10:09:51', NULL),
(114, '01102024091535659e6037e7813.jpeg', '+971', '5884545824', 'bbfnddb', 'jdjdjdj', 'nd@hsj.com', '$2y$10$vJM4n9EGbnRt2mWe/Ma6YO7HTRw2FpkgzdQIsk.kdf9nuEQvFeRiS', 'Abu Dhabi', 'Afghanistan', '2015-05-01', 'Male', 'dOcs3406aoR6', NULL, 'None', NULL, NULL, '5xCtawbfvh0CkETOh947VV799M5HtGjz5kkphn9u3vyf45tT0nssVEmblvHmOaID', '0', '0', NULL, NULL, 'Active', 81215560975, 'Silver', '1000', NULL, '0110202409153656659e603826663.png', '0110202409153679659e6038269ff.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 03:45:36', '2024-01-22 10:09:51', NULL),
(115, NULL, '+971', '6157618764', 'vahvvjaxvq', 'quxbqkx', 'harmantestingajxggx9@gmail.com', '$2y$10$EU/Apva8iJfSmuPUo5RcrOiVGSsdmfkTYW/dw51TZKT7USHB22/rq', 'Ajman', 'Algeria', '2024-01-10', 'Male', 'mZfC6332345q', NULL, 'None', NULL, NULL, 'dPZMmyXUf3amQcyY9M5ObcJlCpKLxWTt4LOWSQVpbVx17r1OBIMAHW1ZKLlZ9cRB', '0', '0', NULL, NULL, 'Active', 62055936561, 'Silver', '1000', NULL, '0110202411125357659e7bb5b971c.png', '0110202411125375659e7bb5bb2f1.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 05:42:53', '2024-01-22 10:09:51', NULL),
(116, NULL, '+971', '1234567890', 'nihal', 'sharma', 'nihal@yopmail.com', '$2y$10$DLbeIlY3pGn2i2WniI.JA.z/8UEfALh7pU0lzcCRawlKYp/ah2e0O', 'Ajman', 'Afghanistan', '2024-01-10', 'Male', 'Etec1926Mw8M', NULL, 'None', NULL, NULL, 'xHmWtcD7REOs7cLtsTFk10W5B503tBOYnz2bJutTCegsEduZSJO3tZH6ByYpQcHP', '0', '0', NULL, NULL, 'Active', 68202235886, 'Silver', '1000', NULL, '0110202413093385659e970d85608.png', '0110202413093362659e970d85a5d.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 07:39:33', '2024-01-22 10:09:51', NULL),
(117, '01102024134222659e9ebe1ac0e.png', '+971', '1231239999', 'lllllllllllllllllllllllllllkkkkkkkkkkkkkkkkkkkkkkz', 'znnsnsshshhshdbddhhddhdhdhdbdbhddhdhdhhdhdhddhddhd', 'b6@yopmail.com', '$2y$10$A4n3OX547RSrxwHqFcylsuzQgVLJhopYZA7bmiGiLG37u9KNSSFz6', 'Ras Al Khaimah', 'United States of America', '2024-01-10', 'Other', '51gt9737sg1h', NULL, 'Android', 'eyPyiU39TGquMqOBZ39x4u:APA91bFvzsBEQ05-qrkUXqGK26-t4d0JesNX-EPnkfA9Y7ARF0ImpH8Ze0lT0kPr-PU1-2FV5w5UgDsZEd2AG4CJe_emGrFtHu9m369frOpp7cMMHlPau_DnJp26aTw7ldMCJ1ajoZq8', NULL, 'yLq8tg1mTqIBMvwSVw9WpIRq7VD4bdEzzj5ey8v9EG5lRhp5CKvZdbUF9VlyUQby', '0', '0', NULL, NULL, 'Active', 58106721306, 'Silver', '1000', NULL, '0110202413182661659e992233d66.png', '0110202413182690659e99223401a.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 07:48:26', '2024-01-22 10:09:51', NULL),
(118, NULL, '+971', '1234567899', 'chhcuf', 'hdhcf7', 'yop@yopmail.com', '$2y$10$FvCRhveaZkzV1tQ0DUDkkesAAb6jHEleWRYENlK4CnIv4/wBzzMBG', 'Dubai', 'United States of America', '2024-01-10', 'Male', 'Ssa31123Hofy', NULL, 'Android', 'eQkSnmBTRYavlCrOR4pDQ3:APA91bEMwiey8FccvRBMCMij0t5SQDCpOEAq76NehcoLD-qlf7vyQ3j9n4Q9jILWCk-0p_ozhCF3SokJpPrGx9HQ6FwPVGSB0APJsWTkqYCzSdluwcIThPQmUF04eZcwg_OvGni890FA', NULL, 'XKBsS2XT8tGvZP11SHVKdIJwrzAYwlFPUt7S4xZw1mJGnGAvjHFdbqOuxgrKcTvZ', '0', '0', NULL, NULL, 'Active', 18296452591, 'Silver', '1000', NULL, '0110202414113199659ea593bd629.png', '0110202414113125659ea593bd989.png', '2024-01-10', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 08:41:31', '2024-01-22 10:09:51', NULL),
(119, '01112024050220659f765cddc3d.jpeg', '+91', '7878787878', 'djjdjsjjsjsjsjs', 'shhshshshsshsjsusjs', 'mm@yopmail.com', '$2y$10$ycGbQOr/v/w4NoILszmNS.AOIzUuprTEEprSk6TaDemHR8mbKfWj2', 'Abu Dhabi', 'Albania', '2024-01-10', 'Male', '86FE9615eYey', NULL, 'None', NULL, NULL, 'Gkfm5NjDieEFhgJIqQcl509Z28bLeER8ILNZGljve6zXqRVfG2nedNjd3HWyaTQH', '0', '0', NULL, NULL, 'Active', 55626357920, 'Silver', '1000', NULL, '0111202405022116659f765d5ad41.png', '0111202405022162659f765d5ae78.png', '2024-01-11', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 23:32:21', '2024-01-22 10:09:51', NULL),
(120, '01112024051422659f792e1f159.jpeg', '+91', '9988776655', 'Raka', 'Ray', 'raka@yopmail.com', '$2y$10$NqIeHp18hKWRa5x680OKj.epNqfADrjWeogwyFOamn6n8n6wkZu/6', 'Umm Al Quwain', 'Antigua & Barbuda', '1995-01-11', 'Male', 'wD4A8915bYqh', NULL, 'Ios', '56dc734601283f9eba06f5fc3f57bc655f74069b166c0734de4c252de4cd9b2b', NULL, 'Ynygcjypktsbnjb4ZNSFt0DuM5Yvbcj6hVnraoYtrtrxY0ysLK1uaMojNqRHyDsn', '0', '0', NULL, NULL, 'Active', 41721002904, 'Silver', '1000', NULL, '0111202405142222659f792e68e6b.png', '0111202405142260659f792e691b2.png', '2024-01-11', 0, 0, NULL, '', '', NULL, NULL, '2024-01-10 23:44:22', '2024-01-22 10:09:51', NULL),
(121, '01112024134157659ff025d3dcf.jpg', '+971', '1234567898', 'hsjsjskfudogskgkgskgsgkkgdkgskgskgdkgdkgdkgsgksgks', 'gdkgdigdgooyogdhodyodoydoysotsitidogdgodkdgkdgkdkg', 'o@yopmail.com', '$2y$10$3bAU1tvoWt/IHVJ04B5Zlutldg.EpD1LFaVWrxAODpz7Z3mEBsLxS', 'Dubai', 'Angola', '2024-01-11', 'Other', 'Rjhy2271Ja8e', NULL, 'None', NULL, NULL, 'AnvGX2O61MT4nGXcxZJUiqZ9dQFuryDqQ0neoMSTk3iWJWnBiP9nZ9w2kGBsAvua', '0', '0', NULL, NULL, 'Active', 60724603278, 'Silver', '1000', NULL, '0111202413415849659ff026749e1.png', '0111202413415899659ff02674d3f.png', '2024-01-11', 0, 0, NULL, '', '', NULL, NULL, '2024-01-11 08:11:58', '2024-01-22 10:09:51', NULL),
(122, '01112024140817659ff6515f69c.jpeg', '+91', '987654321', 'bxbxjxjdjdjdjdjdkdjjdjdjruyodoydohd', 'hdhdhhdhdhogdlhdhodohdhldhodhofhofo', 'y@yopmail.com', '$2y$10$nNT38/BBMYKjPsbqYa.awO56wbGainguvsmp/h5POvCO5rYAbN.Oa', 'Abu Dhabi', 'Bahrain', '2024-01-11', 'Male', 'fBr58284LKW9', NULL, 'Ios', 'f391a6e775e52a4bb31884dae1c17af9a1a1206373b1288a2fdbb187204ccb34', NULL, 'Ge1Vo3HgLqt4CJIc8NrpQ1io0eXDzw6rvViZBIBgikdFU7AwYEcmtxqZuCZk7dhA', '0', '0', NULL, NULL, 'Active', 78693061916, 'Silver', '1000', NULL, '0111202414081793659ff651e6295.png', '0111202414081712659ff651e8d15.png', '2024-01-11', 0, 0, NULL, '', '', NULL, NULL, '2024-01-11 08:38:17', '2024-01-22 10:09:51', NULL),
(123, '01112024141053659ff6ed5193c.jpeg', '+91', '7845784569', 'dsfs', 'dsfsd', 'ghgh@yopmail.com', '$2y$10$..LltWBXxw6lrJwQwftd4OsHG2ZbF3WC8SHx9NWkSlQpJ6sNyunJa', 'Abu Dhabi', 'Argentina', '2011-01-11', 'Other', 'ZCCv334632hM', NULL, 'None', NULL, NULL, 'n96WHQyKAVygBoNNkRrZ5yvTWkUPPYgosrNjjGVMLNV4fjklf7h82ubAYGcsnrAz', '0', '0', NULL, NULL, 'Active', 42796423445, 'Silver', '1000', NULL, '0111202414105345659ff6ed835fb.png', '0111202414105382659ff6ed8384b.png', '2024-01-11', 0, 0, NULL, '', '', NULL, NULL, '2024-01-11 08:40:53', '2024-01-22 10:09:51', NULL),
(124, '0111202415350165a00aa57210d.jpeg', '+91', '4578458455', 'dsfs', 'sfsdf', 'fssdfsd@yopmail.com', '$2y$10$7NLpcmEeDImXHemCxJbfCeCAyXlpTtcpU3jWBEPg2zsN93ejml2LS', 'Abu Dhabi', 'Andorra', '2013-01-11', 'Male', 'YAs59310rWqo', NULL, 'None', NULL, NULL, 'p15NpvnF5SFhq5Y3Q2EV90iNvWhEvAfKze8l6R1oX7igKztwfPNLZCjRFVJlX6P5', '0', '0', NULL, NULL, 'Active', 82086328669, 'Silver', '1000', NULL, '011120241535011965a00aa5bf79d.png', '011120241535016265a00aa5bfbcb.png', '2024-01-11', 0, 0, NULL, '', '', NULL, NULL, '2024-01-11 10:05:01', '2024-01-22 10:09:51', NULL),
(125, '0112202404190765a0bdbbc963b.jpg', '+971', '7787983455', 'hhy', 'Razz', 'raka2@yopmail.com', '$2y$10$RTv3VW1ezLNFUJTCYIUR4.UNwrhmVqjol3iJjR26FueGT7ckAxbmm', 'Abu Dhabi', 'Algeria', '1996-01-18', 'Male', 'jG5y3706vGvo', NULL, 'Android', 'ePLBi_z9RquAuFUX5PuwJz:APA91bHZ_hpfXtlgKz12v-bO5duVJyQQaIhUUPUh5ySQWjBTEf_VkhnwVXh262X4ZftUq8g6ngBfTEtucvoSuJjQ2FDyokL9Veb1gs5Ibv4RPLHIHMeVNG0Kcjmp7oLtegQ7TuVD2qAc', NULL, 'mxRPgQqK58VNbtHjWSTPNqubAD7wBf6JDfHcSvTrhHKlkWAGJOu1zKbt2Co2kKkG', '0', '0', NULL, NULL, 'Active', 63017897341, 'Silver', '1000', NULL, '011220240419086365a0bdbc346a0.png', '011220240419082865a0bdbc347e3.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-11 22:49:08', '2024-01-22 10:09:51', NULL),
(126, '0112202405362665a0cfda39bfe.jpeg', '+91', '2525252525', 'bdhdhdhdhhdhdhhdhdhehrhrhr', 'shhshshshshsje', 'mn@yopmail.com', '$2y$10$psnyyATz0ny1VYmkta2ejenB7RxlvMPeV//NccVFZjfeicYP3hV8O', 'Abu Dhabi', 'Albania', '2024-01-11', 'Male', 'KXHS8253ZeKR', NULL, 'None', NULL, NULL, 'hK1RtxhGDzHEmO4ovlCRU0zJNyiPgBr9XFqiql2Cy7g9ZOvNIxUEGwy4CYOHznLX', '0', '0', NULL, NULL, 'Active', 13430413599, 'Silver', '1000', NULL, '011220240536263565a0cfda8f198.png', '011220240536265665a0cfda8f573.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 00:06:26', '2024-01-22 10:09:51', NULL),
(127, '0112202405592665a0d53e4d76f.jpeg', '+971', '9090909090', 'bsbsbsbsnssnssnsnsndjsjdjshsjsjjd', 'sbnznsnsnsjsjsjsjsjhsjsjsjsjjsjsjs', 'bt@yopmail.com', '$2y$10$Gg7YX4/7HEuX.5hC/VgqT.BsISoD1gHeoHb7CiHZ5mdpsijFZAsye', 'Abu Dhabi', 'Algeria', '2024-01-11', 'Male', 'rBHo1597wgt6', NULL, 'Ios', 'a9187d9ed4173b82b1ebb0902b1d9232fc29cd2964e08d8fd4485f4cb365e3b8', NULL, 'XVkGWyI9XOHwZqxwx8XwetW8ui7ShiOY87m8LPi7PltMrQBLwPreHga3pYsz3GAq', '0', '0', NULL, NULL, 'Active', 73876713979, 'Silver', '1000', NULL, '011220240559261265a0d53ee2398.png', '011220240559261065a0d53ee367a.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 00:29:26', '2024-01-22 10:09:51', NULL),
(128, NULL, '+971', '658668688668', 'chfhg', '6ryttu', 'harmantestigcchng9@gmail.com', '$2y$10$w.bXL6m/dFFv6u22NTnkb.KBwZj1X03c1KMfAb8nE8fr//a3Ihnp6', 'Dubai', 'Algeria', '2024-01-11', 'Other', '6MPc2192ezcy', NULL, 'Android', 'd-rIO4mLSJWyx4HzNiJeY8:APA91bGShY436oDa76x77oIuVfAziBoJ-K3jZ6E6ANJmrRZMI8BIG4W1xqZJY7cFMr4ySgReB5ERIctP2aZpymx7ji37E130U0NgGLosl-xZ2JxOi8KrYd_FBijYp_OypeMIW6wfMBh_', NULL, 'g0OEA86N1gzyDaAwQQYk3k9aU8Q5jEgJ5aFp9xUXgvWtL4UnfstmqArqd5xVUcb0', '0', '0', NULL, NULL, 'Active', 27898440998, 'Silver', '1000', NULL, '011220240750566165a0ef601ac10.png', '011220240750568565a0ef603a4e7.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 02:20:55', '2024-01-22 10:09:51', NULL),
(129, '0112202408433065a0fbb2d21cd.jpg', '+971', '9876543212', 'hshdheh', 'usisieiejj', 'aa@yopmail.com', '$2y$10$G.x1lDAyTlO3Ako5Nyj9QekIfP0yo14enQdnDZD4U11p0b1B9THfq', 'Fujairah', 'Afghanistan', '2024-01-12', 'Female', 'RJzT9392GN2X', NULL, 'None', NULL, NULL, 'qcqHhVLmINELozpiiKLa8bvwWuLDpRUVhdNZAbm7aRJXFEGXxJ9Yzv0Xhxek4P5C', '0', '0', NULL, NULL, 'Active', 34923873453, 'Silver', '1000', NULL, '011220240843314965a0fbb3570c9.png', '011220240843317165a0fbb35a364.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 03:13:31', '2024-01-22 10:09:51', NULL),
(130, '0112202410402465a1171801018.jpg', '+971', '9638527411', 'kvzzgikxkgoogxkgkgxgoxogxgoxkgxgkxgoxgoxohfy', 'igdkgxogxoggodhodhodgod', 'sa@yopmail.com', '$2y$10$EMVgYk60B/sJ1iRcWmeZIe/jXHVoyas4UDAzEnJMV8YHAwtRk0hRW', 'Dubai', 'Algeria', '2024-01-12', 'Female', '1Mnp4441e1Ed', NULL, 'None', NULL, NULL, 'TuTDNPcdMfOb0sS2qrrzJKMvdY2OusMbJPXBpMCD02SlDApz0XwKxt6M5sh4za78', '0', '0', NULL, NULL, 'Active', 23144010219, 'Silver', '1000', NULL, '011220241040249565a1171859aca.png', '011220241040245065a1171859d27.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 05:10:24', '2024-01-22 10:09:51', NULL),
(131, '0112202411133165a11edbe02cf.jpg', '+971', '963258741', 'kvfizigzkglglgxgogxogxgogoogshho', 'ogohdohdohdhodhodoh', 'hj@yopmail.com', '$2y$10$oqVRKvioxgJbQgsdDyAYvuSCHEaDIKdOUYKHlC/wGuGYdWYByGfJS', 'Dubai', 'Andorra', '2024-01-12', 'Female', '7iWB1217U6zq', NULL, 'Android', 'd-rIO4mLSJWyx4HzNiJeY8:APA91bGYc84RkAkDpb6Y0OUUoTWsJ3VCVvbOMR6zu5Nx-xAg-gLOMOwy1dJJ3rhKoNiOEmjRPV5ipZj7Gg8UGyG4FzKQaqvqebXGhGWGCjOtQgvuvWu_SMdRE6ONsxcVVW6EXyUDK7uS', NULL, 'PzjIj2fZ2y4iBQ6vIWO0LjxoRdz6SXjDheYMsU55F4e1WKD1p30DRf3vnbzePtHC', '0', '0', NULL, NULL, 'Active', 93345070977, 'Silver', '1000', NULL, '011220241054275465a11a6360bd4.png', '011220241054272665a11a6360f80.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 05:24:27', '2024-01-22 10:09:51', NULL),
(132, '0112202411312765a1230f590ae.jpg', '+971', '147852369', 'gdhxhskggdgldgpgldhldhldhdhld', 'hldhshshldhldhldlhdhldlhdlhdhd', 'jb@yopmail.com', '$2y$10$qSvUoskIQyUP1LN77eGKIe.yo6.RMdTW4z8ZkoVmWah.a.Oghd.Ny', 'Fujairah', 'Albania', '2024-01-12', 'Female', 'inlR3737qvFu', NULL, 'None', NULL, NULL, '4r8xwPhqvcKLAg2iO1qNo6kP6YWpTZAtnWhIvLdpFnKFqGy8iMKwlnac1pzK5CyS', '0', '0', NULL, NULL, 'Active', 57029662347, 'Silver', '1000', NULL, '011220241131279665a1230fa1881.png', '011220241131277765a1230fa1aa0.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 06:01:27', '2024-01-22 10:09:51', NULL),
(133, '0112202411325165a1236324068.jpg', '+971', '147258369', 'dggsgizogzgozgkxoggdogdgodoggodohddgooggohdoggd', 'oggosstosgodgosgxoggxgovoxogsgodgodgodgod', 'kn@yopmail.com', '$2y$10$HgN4fAxF4IkjUHgv7WRM3OsiSIJbpKTla/8z/PxfQuMqOBiqxstQq', 'Fujairah', 'United States of America', '2024-01-12', 'Female', 'WI4F4852eHu6', NULL, 'None', NULL, NULL, 'aVueYszQOo5acDOhgxOtp0oqKAJZpqxvTdWqAft6ks205nW9zWlef4d2XJI4sNrr', '0', '0', NULL, NULL, 'Active', 58666447622, 'Silver', '1000', NULL, '011220241132512865a123639bef4.png', '011220241132511165a123639c056.png', '2024-01-12', 0, 0, NULL, '', '', NULL, NULL, '2024-01-12 06:02:51', '2024-01-22 10:09:51', NULL),
(134, '0116202410041765a654a1b6af0.jpeg', '+91', '9874136784', 'fgdfgd', 'dfgdfg', 'dfgfdgdfgsdf@yopmail.com', '$2y$10$NE2w2eNHQKLxIC1FlaLrVefcwQHIu.nK6s3vUjubomOeJHpEFMewG', 'Abu Dhabi', 'Antigua & Barbuda', '2019-01-16', 'Male', 'WQ7m7444fpSe', NULL, 'None', NULL, NULL, 'WpizGmsNj4A06VrRMIS23Yt3yzmdEQShAs7DRJ5f9TcLZ8ZCzlM6THkPsOzLssUA', '0', '0', NULL, NULL, 'Active', 59924058628, 'Silver', '1000', NULL, '011620241004182865a654a24afd3.png', '011620241004185465a654a24b2ce.png', '2024-01-16', 0, 0, NULL, '2', '', NULL, NULL, '2024-01-16 04:34:17', '2024-01-22 10:09:51', NULL),
(135, NULL, '+971', '640498964894', 'ajba', 'wvjxqjgxwx', 'mobilephone1hxhz5515@gmail.com', '$2y$10$h5RdfG7TpTNuKe4P4BhqBOqvYUMdc3ZN.MRnRtj9SdvHbRiVkdGnC', 'Ajman', 'Albania', '2024-01-16', 'Male', 'sVYM7616Gnq7', NULL, 'None', NULL, NULL, '3gyljTVx1NVuS1xKxEVOnsR7fldXgTn99NnRPt6JxeRaJ09i2ebsfzCNqH1BADB3', '0', '0', NULL, NULL, 'Active', 72665591075, 'Silver', '1000', NULL, '011620241029527965a65aa081796.png', '011620241029524865a65aa081a5a.png', '2024-01-16', 0, 0, NULL, '', '', NULL, NULL, '2024-01-16 04:59:52', '2024-01-22 10:09:51', NULL),
(136, '0118202406280565a8c4f5b2385.jpg', '+971', '6886868668', 'hchcjc', 'txgxgxhx', 'mobilephgjkgkone15515@gmail.com', '$2y$10$shylOpDjAX9s6fmI7sq5Oe4P78VVu1ZcPtXQPDmPuG3EboyNjuOzK', 'Ajman', 'United States of America', '2024-01-16', 'Male', 'wh8B50718vbQ', NULL, 'None', NULL, NULL, 'kprX439XWxXeIEKvBd5NL5JriWnr7qfSfelW3NYlURSb31ri61BwBWf7MUDY108M', '0', '0', NULL, NULL, 'Active', 56065275164, 'Silver', '1000', NULL, '011620241035435965a65bffcc0ce.png', '011620241035438965a65bffcc25b.png', '2024-01-16', 0, 0, NULL, '1,2,3', '', 'Regular', 'Occasional', '2024-01-16 05:05:43', '2024-01-22 10:09:51', NULL),
(137, NULL, '+971', '8696663676464', 'gu', 'qxggq', 'mobiysysylephone15515@gmail.com', '$2y$10$vqp7yZ36VmBSz.ZEeg28HeSNq2jM3OArj/hBlAbKBp79dpshLWiC6', 'Ajman', 'Algeria', '2024-01-16', 'Male', 'N5Ic8043c3HB', NULL, 'None', NULL, NULL, 'cK5ZIXmQnCZbmV5AT5VfCWmRJ0AQUL7tGAk9E906TzGmGRkyFnEgow3SvFM9aWqb', '0', '0', NULL, NULL, 'Active', 67550328846, 'Silver', '1000', NULL, '011620241122396665a666ff5bdf0.png', '011620241122394965a666ff5c0b5.png', '2024-01-16', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-16 05:52:39', '2024-01-22 10:09:51', NULL),
(138, NULL, '+971', '2454664949', '6svsbs', 'shshbshs', 'mobilehshsphone15515@gmail.com', '$2y$10$xOf9aq1UxOE0RmedCflaYeBZpSwLIhyc6CDwEbF19oxxNsY/Iqb/O', 'Ajman', 'Albania', '2024-01-16', 'Female', 'xqqc3953srra', NULL, 'None', NULL, NULL, '9KcPkdKAdA8seFSAUQHfr5Y7sny5DunbkW4uQ29v2RDJ9CGHp5RRfPkS75Gxaa2b', '0', '0', NULL, NULL, 'Active', 16474817703, 'Silver', '1000', NULL, '011620241202489065a67068d2d0b.png', '011620241202484765a67068d2efa.png', '2024-01-16', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-16 06:32:48', '2024-01-22 10:09:51', NULL),
(139, '0117202405023565a75f6b47a6b.jpeg', '+91', '9855632123', 'ggg', 'ggggg', 'gggg@yopmail.com', '$2y$10$6/1kLDuqHdaGVDTvQxjv1.ifMru5Fzefvia.ymYzfWENNNMOMr3A.', 'Abu Dhabi', 'Angola', '2015-01-17', 'Male', '2lUf5081BTnn', NULL, 'None', NULL, NULL, 'ieLsRREZjDRlZDOXrByUbFQMIaD14g7n0eiQOy59VI0WwE9L4Laz8I3vqSR59oum', '0', '0', NULL, NULL, 'Active', 59870011412, 'Silver', '1000', NULL, '011720240502368465a75f6c01139.png', '011720240502366365a75f6c0138c.png', '2024-01-17', 0, 0, NULL, '1,2,3,4', NULL, NULL, NULL, '2024-01-16 23:32:35', '2024-01-22 10:09:51', NULL),
(140, '0117202405074665a760a2c1da2.jpeg', '+91', '9866110230', 'saasas', 'asasa', 'jjj@yopmail.com', '$2y$10$evYxtuAJx1HZK2Jb507HXOLsOHvGTMnWHY8Buye0gLoHc942MNunW', 'Abu Dhabi', 'Angola', '2009-01-17', 'Male', '8STP3541oxvi', NULL, 'None', NULL, NULL, 'kBFQJ5cYmiBOWYoPcZZ2olF9hxXXuEmePkBvBMexT078xzmO4jweoZyuBsgtrqjq', '0', '0', NULL, NULL, 'Active', 99524784184, 'Silver', '1000', NULL, '011720240507476565a760a333dac.png', '011720240507475465a760a33406d.png', '2024-01-17', 0, 0, NULL, '1,2,3,4,6,5', '10,4,3', NULL, NULL, '2024-01-16 23:37:46', '2024-01-22 10:09:51', NULL),
(141, '0117202405544465a76ba484fb6.jpg', '+971', '946646464', 'guwxuwuhx', 'ubwhu wgux', 'mobileysysphone15515@gmail.com', '$2y$10$qMpovzrP9iRMx2erwPxUJOqd4o9F9JBWTibVE8QZvo2Hy8lDfLghu', 'Ajman', 'Afghanistan', '2024-01-17', 'Male', '7PIQ8261keru', NULL, 'None', NULL, NULL, 'jX4eFisTeD5rp8rUgPV9xHlOTqJ3fH0wsaiiDXLvW0azrgTWwIK7yxxdbql0uuak', '0', '0', NULL, NULL, 'Active', 56829698698, 'Silver', '1000', NULL, '011720240554448265a76ba4eda51.png', '0117202405544410065a76ba4edd2d.png', '2024-01-17', 0, 0, NULL, '5,4', NULL, NULL, NULL, '2024-01-17 00:24:44', '2024-01-22 10:09:51', NULL),
(142, NULL, '+971', '8468681678468', 'hvavhax', 'augzqugxq', 'rajputadityafsfs@yopmail.com', '$2y$10$G6J0r5Y0F.cUS.yEDGBaeeP7JTTi9hRMEbtng.LLMlO6OaXxhj4Xq', 'Ajman', 'Albania', '2024-01-17', 'Male', '0D9A3290ZckK', NULL, 'None', NULL, NULL, 'yMAqJ0fdpzCkWvh6fHnBaHmELDbqrpoftj6xMUIHduUUjNEGMO4BORlxCVzPrjhu', '0', '0', NULL, NULL, 'Active', 28011039123, 'Silver', '1000', NULL, '011720240614147865a77036b603c.png', '0117202406141410065a77036b62da.png', '2024-01-17', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-17 00:44:14', '2024-01-22 10:09:51', NULL),
(143, NULL, '+971', '87908406840', 'jba/jbq', 'agi qhx', 'mobilshhzephone15515@gmail.com', '$2y$10$O.1FCTmKaRo6o/s4rQlMj.ra53FnVfBJOQSnCNz..VxUfmrCuolu.', 'Ajman', 'Afghanistan', '2024-01-17', 'Male', 'Mcr33880nZKH', NULL, 'None', NULL, NULL, 'EP7HVx8JfW9UZvOa1SZaw4YFeX0ZAnwksQrLqICbDgAsXH7Mj9leBfiCbxBofaCO', '0', '0', NULL, NULL, 'Active', 59309598130, 'Silver', '1000', NULL, '011720240629265465a773c65a2d1.png', '011720240629263865a773c65a571.png', '2024-01-17', 0, 0, NULL, '3,4', NULL, NULL, NULL, '2024-01-17 00:59:25', '2024-01-22 10:09:51', NULL),
(144, NULL, '+971', '460684469469', 'gyhau/', 'yvq/vhw/', 'mobilepyshshone15515@gmail.com', '$2y$10$MJDMK8/Q36ow6YejfkKWoORFJNqv9Vt8Ppfl0CtydZ00H9uYYJOqa', 'Dubai', 'Afghanistan', '2024-01-17', 'Male', 'FTe44471XokA', NULL, 'None', NULL, NULL, 'LfD5Rd9aasda4iJJo5wve4aSt6HkVHpEu1ZdV6jV1tuHDqQ1mGpzMWqxQWNvLghE', '0', '0', NULL, NULL, 'Active', 79752989144, 'Silver', '1000', NULL, '011720240635121465a77520311cc.png', '011720240635124365a775203145a.png', '2024-01-17', 0, 0, NULL, '3,5', '3,4', NULL, NULL, '2024-01-17 01:05:11', '2024-01-22 10:09:51', NULL),
(145, NULL, '+971', '486486846', 'wx9u8uwx', 'wxuwxihw', 'mobilephonsgvze15515@gmail.com', '$2y$10$DdHvWfruJwwpVBtdxkVb/O0Gl6hgoVZunbCBlLOWngszEX7v4DMb2', 'Abu Dhabi', 'Afghanistan', '2024-01-17', 'Male', 'GC182954bLyP', NULL, 'None', NULL, NULL, 'CgqyiqwEgFc5e6xrcmiKRQGzyx6xFInQqtre6FBlgtki5sQkVphnvft0WPYSL3RC', '0', '0', NULL, NULL, 'Active', 81053231371, 'Silver', '1000', NULL, '011720240656187565a77a1280398.png', '011720240656187065a77a1280635.png', '2024-01-17', 0, 0, NULL, '1,3,6,5', '1,3,2', NULL, NULL, '2024-01-17 01:26:18', '2024-01-22 10:09:51', NULL),
(146, NULL, '+971', '806794067', 'qxgaih', 'azbiahox', 'mobileshhsphone15515@gmail.com', '$2y$10$BBSc2eahN6yua8TdfSqh8.6hgwsAJvLNBHZRwXq5mHFcWTkCU2l/K', 'Ajman', 'Afghanistan', '2024-01-17', 'Male', 'gtUC3328zh8X', NULL, 'None', NULL, NULL, 'Pu3hIR4dWiaOsgca4jtWgW8v6AqhEhxsVSe51jS4y6d6xlmaECKX6XnaUfZ8KStO', '0', '0', NULL, NULL, 'Active', 36673874402, 'Silver', '1000', NULL, '011720240702199265a77b7b26aa9.png', '011720240702194465a77b7b26d75.png', '2024-01-17', 0, 0, NULL, NULL, '1,2', NULL, NULL, '2024-01-17 01:32:18', '2024-01-22 10:09:51', NULL),
(147, NULL, '+971', '864686844', 'jgGua', 'a jvajh a', 'mobilezhhzphone15515@gmail.com', '$2y$10$WNGXG4LmBEbfeOUkVZYj7usRPWliW4cy41cMbt0gaI1cK6V.CM0aC', 'Ajman', 'Albania', '2024-01-17', 'Male', 'TTfM30642agF', NULL, 'None', NULL, NULL, 'dbgOfND1uH1wOrZhwtggfRd6fp0rBKgKFcjUCBMHxYsuoH5KhloPO6MgeJPP7OqI', '0', '0', NULL, NULL, 'Active', 83193965368, 'Silver', '1000', NULL, '011720240716209565a77ec4c4177.png', '011720240716201665a77ec4c4411.png', '2024-01-17', 0, 0, NULL, '1,2', '3,1', NULL, NULL, '2024-01-17 01:46:20', '2024-01-22 10:09:51', NULL),
(148, '0117202411174965a7b75d32f41.jpg', '+93', '63434530846', 'rajput', 'aditya', 'mobilsghsephone15515@gmail.com', '$2y$10$dCS1raMbeGNrBQzgFoShjOBOkMKOH2SoyHdVKVw6Liw/MIKjZlkE6', 'Ras Al Khaimah', 'Zimbabwe', '2024-01-11', 'Male', 'lTL69570aWzT', NULL, 'Android', 'cdHsxZf5QlC0X_R-slN99g:APA91bFp9EnSXqMF0ulQJFDVaY2O2yXNm-6mdi3FYaIA2JgbJGAGOH-49V4X5mZiOF4VJFcZ9l7h1S40LTnXu3Qwi_8zoEkdhFeRJ--5xibzgVM8jJa2kC6y55CdkwgvTzuSGMw9Mz9-', NULL, 'K06MbSdLfU42F5yYGef4ifL5fPBviXZZGdV23epMQh8moddCGP54ZHvZhMmz2koh', '0', '0', NULL, NULL, 'Active', 63332650978, 'Silver', '1000', NULL, '011720240720513865a77fd325813.png', '011720240720511965a77fd325ab3.png', '2024-01-17', 0, 0, NULL, '8,5', '3,5,4', 'Occasional', 'Regular', '2024-01-17 01:50:50', '2024-01-22 10:09:51', NULL),
(149, '0118202405045365a8b1759b473.png', '+91', '9874000032', 'gggggg', 'erter', 'ertret@yopmail.com', '$2y$10$MMgrUyrZx.GIS0liaJvw4Of7TqQ/C/rnqUL1.WRYOskXMqN8RKdea', 'Abu Dhabi', 'Angola', '2017-01-17', 'Male', 'maeq5266sOzr', NULL, 'None', NULL, NULL, 'XzRYBmqSVZ7Rwg49yaCs4ANPF69OO74A7Dcr1a8T1pkS3Ht62V5qXZMWReqVo0OM', '0', '0', NULL, NULL, 'Active', 91634155926, 'Silver', '1000', NULL, '011720240810361065a78b7c7fc24.png', '011720240810362365a78b7c7fead.png', '2024-01-17', 0, 0, NULL, '3,7,6,8', '8,4,3', 'No', 'Occasional', '2024-01-17 02:40:36', '2024-01-22 10:09:51', NULL),
(150, NULL, '+91', '98743523236', 'aman', 'bansal', 'amandeftsoft68@gmail.com', '$2y$10$XKAUwpVyPAaHyQIkuTNh/./4ph4FQVeuqV8gUzvVZCyLfuX8KjxMm', 'Abu Dhabi', 'Afghanistan', '2005-12-12', 'Male', 'FfQf9916G4s8', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, '3QnBKDsvghBdRpXXlU6oKW250qhUO21wzH0mW7YgDRzvuCqbKLOQyywbXqR7x72x', '0', '0', NULL, NULL, 'Active', 16803339530, 'Silver', '1000', NULL, '011720240936428165a79faa78966.png', '011720240936421965a79faa78be7.png', '2024-01-17', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-17 04:06:42', '2024-01-22 10:09:51', NULL),
(151, '0122202412163765ae5ca5d5899.jpg', '+971', '49646986486', 'gus ugax', 'axbiqbixqx', 'mobtstsyilephone15515@gmail.com', '$2y$10$hd5pZDuYXf/o9Qm7yCWzZeNNtraLEDVRnDOoJKCp4mPk8F07qMRGa', 'Ajman', 'Afghanistan', '2024-01-17', 'Male', 'n65t3349cd6Z', NULL, 'None', NULL, NULL, '46w8kN7nSGK5j3uyfnifPqItJX0GwcO7MsdvsZDxBIAgsT59rMV2HymHAtAGLWZv', '0', '0', NULL, NULL, 'Active', 38103070225, 'Silver', '1000', NULL, '011720241252147265a7cd7e00294.png', '011720241252149265a7cd7e004ae.png', '2024-01-17', 0, 0, NULL, NULL, NULL, 'null', 'null', '2024-01-17 07:22:13', '2024-01-22 10:09:51', NULL),
(152, '0117202415270365a7f1c7bf964.jpeg', '+91', '9045728973', 'John', 'cena', 'tt@yopmail.com', '$2y$10$5NuslSbVhKkbAgChv/hoYutliGivPyb4qwxfh9RjPqrEdS1VyWIdS', 'Ras Al Khaimah', 'Anguilla', '2024-01-17', 'Male', 'ZBJ6778625Ou', NULL, 'None', NULL, NULL, 'DWljxqro8jTZdcO5U2PC0wuheTP2oWOHIZes5LR08gTpLR7bzmM82utuJJR9LTcz', '0', '0', NULL, NULL, 'Active', 39723824901, 'Silver', '1000', NULL, '011720241527043365a7f1c82eea2.png', '011720241527048065a7f1c82f0ff.png', '2024-01-17', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-17 09:57:03', '2024-01-22 10:09:51', NULL),
(153, '0117202415522965a7f7bdc6c8a.png', '+971', '9696969696', 'djdjdjdjjsjd', 'shshsjsj', 'yu@yopmail.com', '$2y$10$XePRhAMCrMw/mKHdPVf1Suylf3V9BMkBBFFl4TpKs4BJdmH0y6idq', 'Abu Dhabi', 'Albania', '2024-01-17', 'Male', 'z48K7637oXwO', NULL, 'None', NULL, NULL, 'PEgsR3Cfx31zeCnezRMzx5ZI6YEiVDKELut8Vso1uQJfapCz1UQW36OAV9Yyc38g', '0', '0', NULL, NULL, 'Active', 23777535262, 'Silver', '1000', NULL, '011720241541043065a7f51029758.png', '011720241541048065a7f51029d11.png', '2024-01-17', 0, 0, NULL, '', '9,10,8,7,6,5,4,3,2,1', 'No', 'No', '2024-01-17 10:11:03', '2024-01-22 10:09:51', NULL),
(154, '0117202415441865a7f5d2d6dc7.jpeg', '+91', '7787983451', '⏲️💾⏲️💿💿💿⏲️', 'Ray', 'ray@yopmail.com', '$2y$10$ZOHPt4xdCaM4yKuDqYS77uqALL339YRFBMTQ1KtJHU4ib09LU/4FO', 'Abu Dhabi', 'Afghanistan', '1922-01-17', 'Male', 'ifuV8334gLyW', NULL, 'Ios', '162e5e5aed5d6da214ac08f7e516c90700194525aab332365f66b68ebeb61939', NULL, 'MzsQFNma5WGbSLqW8NPI7CZbaOXVyOUWbrrmdORGBW6S1KeIGPGOdJwsmYkyV51f', '0', '0', NULL, NULL, 'Active', 96560610603, 'Silver', '1000', NULL, '011720241544194765a7f5d3300e6.png', '011720241544191065a7f5d33038f.png', '2024-01-17', 0, 0, NULL, '', '', 'No', 'No', '2024-01-17 10:14:18', '2024-01-22 10:09:51', NULL),
(155, '0118202406231565a8c3d33d122.png', '+91', '9855663366', 'Fdgdfv', 'Ggdfdg', 'fggdg@yopmail.com', '$2y$10$d/ngt0pqVdUoDZtdWE/hDuszYZM2cil6Krd0j6TJUQ9oTpYPI4aOO', 'Abu Dhabi', 'Anguilla', '2011-01-18', 'Male', 'tR5v6959cuCq', NULL, 'None', NULL, NULL, 'gDLGvv2Oqylvg9kt5AanPktt0NRCUeIGLqT49vcoB3EIBnR9gio8eecvXVFFHNZX', '0', '0', NULL, NULL, 'Active', 19717324767, 'Silver', '1000', NULL, '011820240619357365a8c2f704c69.png', '011820240619358565a8c2f704ec1.png', '2024-01-18', 0, 0, NULL, '1,2', '5,6', 'No', 'No', '2024-01-18 00:49:34', '2024-01-22 10:09:51', NULL),
(156, '0118202407302265a8d38e71b5e.jpeg', '+91', '9845635214', 'Reter', 'Ertert', 'wwq@yopmail.com', '$2y$10$OLTnD4nNcyV90Rl.NH1oyu0wlOV6DQ9AeJzhBEQgNiHa76ncQ/./6', 'Abu Dhabi', 'Armenia', '2017-01-18', 'Male', 'ZCRD751187Cz', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 32025883466, 'Silver', '1000', NULL, '011820240730226965a8d38ed2db6.png', '011820240730224865a8d38ed3057.png', '2024-01-18', 0, 0, NULL, '6', NULL, 'No', 'No', '2024-01-18 02:00:22', '2024-01-22 10:09:51', NULL),
(157, NULL, '+971', '50668600660', 'by huun b', 'gvvvhvh', 'mobilephone15gb515@gmail.com', '$2y$10$gkjGFjmyFTCI.GpYIJo5ZOd.kht9vcvEhP7fkdVjigpfZOFae06La', 'Ajman', 'Afghanistan', '2024-01-18', 'Female', 'krC57971oAHK', NULL, 'None', NULL, NULL, 'caj3HsS9IQcrUm8uExlfZn5zHmU7QhpVRV80msPORqCCR22U26LtZgr0oLQ6e1mJ', '0', '0', NULL, NULL, 'Active', 12634226041, 'Silver', '1000', NULL, '011820240751445265a8d8904e2eb.png', '011820240751449765a8d8904e56d.png', '2024-01-18', 0, 0, NULL, '', '', 'Regular', 'Regular', '2024-01-18 02:21:43', '2024-01-22 10:09:51', NULL),
(158, '0118202408204665a8df5e2035a.jpeg', '+91', '9817820460', 'Ytrytr', 'Rtytryr', 'were@yopmail.com', '$2y$10$fy3H1S2l.RaHtn.2QNv0NeZji6peJtb6WwZN0VXs2SmzAZd3Jy3bC', 'Abu Dhabi', 'Anguilla', '2011-01-18', 'Male', 'JydT4710m1MK', NULL, 'None', NULL, NULL, 'TEFnOozjeMQTHOUmxSut5BhPOTP4VKGCZ3oWcxE14UTHPrTgA55TNtj6NwuO3ViV', '0', '0', NULL, NULL, 'Active', 81218164431, 'Silver', '1000', NULL, '011820240820467165a8df5e7fcba.png', '011820240820465965a8df5e7ffda.png', '2024-01-18', 0, 0, NULL, '2,1', NULL, 'No', 'No', '2024-01-18 02:50:46', '2024-01-22 10:09:51', NULL),
(159, '0118202409354265a8f0ee88bd4.jpeg', '+91', '7787983453', 'Deb', 'Lala', 'deepak@yopmail.com', '$2y$10$j1eYDPbnsSGYF7PWsEMnreCwvVmZyKppCBkw3bkVnnAZA/oxYXVFe', 'Abu Dhabi', 'Albania', '1998-01-18', 'Male', 'zXZw7035Ivv8', NULL, 'None', NULL, NULL, 'FrABZtAppmtI2HFVr5vnd4xj4yTIlcmza1ixJgeFWeuQTfid6LjPFQ4sy3yf2DZ6', '0', '0', NULL, NULL, 'Active', 61197562765, 'Silver', '1000', NULL, '011820240935428765a8f0eef38a8.png', '011820240935424065a8f0eef3b34.png', '2024-01-18', 0, 0, NULL, '1,2,3,4', '1,2,3,4', 'No', 'No', '2024-01-18 04:05:42', '2024-01-22 10:09:51', NULL),
(160, '0118202409504965a8f4798e473.jpeg', '+91', '4545454545', 'Hehshshdjdhssh', 'Sbsbbsbshsbs', 'oo@yopmail.com', '$2y$10$6lfwDs45FBvGjUTE65oZu.kNpzYKCQnLvDeYtYvVzcPy33hqVsAiS', 'Abu Dhabi', 'Albania', '2024-01-18', 'Male', 'kbNK9194augX', NULL, 'None', NULL, NULL, '4wgQjwhgJa7iQ1J2f37BFy1BCo9oruxFwUKn5S6h4wrdckT3veNlcp80QKGJEZ1o', '0', '0', NULL, NULL, 'Active', 13591956003, 'Silver', '1000', NULL, '011820240950501165a8f47a417b2.png', '011820240950505565a8f47a41930.png', '2024-01-18', 0, 0, NULL, '', '', 'No', 'No', '2024-01-18 04:20:49', '2024-01-22 10:09:51', NULL),
(161, '0118202411215965a909d7b1d83.png', '+91', '7787983454', 'gxhchfhfugyfyocyofyocyocykcykcylculylcylc', 'lalactictictococyofyofyofyofoyfoyfoyfoyyofoyfyifit', 'lala@yopmail.com', '$2y$10$MD59d.zTKWNYV3TeVkqedeJwNwSahg7hs3B1spBINcRlcdUq/bh4K', 'Fujairah', 'Chad', '1922-01-18', 'Male', 'm0tc3092JZKc', NULL, 'None', NULL, NULL, 'SLbYv3KLfb492DBJZ0hgH1dH3pACgnTwolv29BcP6HTpvRbdCtVuELzwcV57tvMq', '0', '0', NULL, NULL, 'Active', 32828212031, 'Silver', '1000', NULL, '011820240958026165a8f62a1bfd2.png', '011820240958026665a8f62a1c1f2.png', '2024-01-18', 0, 0, NULL, '', '', 'Occasional', 'Occasional', '2024-01-18 04:28:01', '2024-01-22 10:09:51', NULL),
(162, '0118202410065665a8f84075c87.jpeg', '+91', '98556633322', 'Erew', 'Sdfsd', 'lll@yopmail.com', '$2y$10$V1f06ZmeYkuI4pROOLgL1.LiQQIWMIXTPusd2AfYjWSTpZgU61g9m', 'Abu Dhabi', 'Antarctica', '2024-01-18', 'Male', 'VAsl9214K1ei', NULL, 'None', NULL, NULL, 'EfcG7nhkFBdUbhSFnq9GpYWTVSnV0X0cf1uUhoYMGsq62dxZQ9lFBVOpzh0CHJg1', '0', '0', NULL, NULL, 'Active', 53102106066, 'Silver', '1000', NULL, '011820241006576765a8f8410c612.png', '011820241006572565a8f8410c842.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 04:36:56', '2024-01-22 10:09:51', NULL),
(163, '0118202410114565a8f961b744d.jpeg', '+91', '9822003311', 'Dsfsd', 'Werwer', 'werewr@yopmail.com', '$2y$10$xLwqU0y9FggLjhDiQaAmjuGqDDUiWUQvh42t9avc7.cGpBIWHUm/y', 'Abu Dhabi', 'Angola', '2024-01-18', 'Male', 'lmZr85030HmK', NULL, 'None', NULL, NULL, 'UMhC5GXbjDhH5i7subRDqlcNpCAuNeXesVP7l2AnJEVj5uckU9yVOfigqR4TvOZT', '0', '0', NULL, NULL, 'Active', 88020027168, 'Silver', '1000', NULL, '011820241011462965a8f96224c60.png', '011820241011462865a8f96224f33.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'Regular', 'Occasional', '2024-01-18 04:41:45', '2024-01-22 10:09:51', NULL),
(164, '0118202411215765a909d5bbaed.jpg', '+971', '1472583690', '@@@@@', '@@@@@', 'v1@yopmail.com', '$2y$10$0.1LA7QwgdjFqPnpoljDQ.9dItTi80iueYDArXfotp0Yeb1BZnkku', 'Ajman', 'Antarctica', '2024-01-13', 'Male', '1X1461607rs4', NULL, 'Android', 'ckfFMcdOQV2nsHBfT4nwrM:APA91bEzTHIuylFAEqXEMkl5qDyM6MzfgJRioe7z7FVxwTJrUHc65zU9Bm2sxwDxoD0dp2y2GnvHaxckeYeHqEDSLksTwBe5kbLJ8tIG5tGWZ3wnYTixRVWpuHyx5bYeBks1Dx8RBMYZ', NULL, 'VQuhfDOf2Ln2MEoXljzGD2wGUY1QGKzVPT1bOTqbc7UAigjfoin0AaWsmW0qsP7D', '0', '0', NULL, NULL, 'Active', 32018327839, 'Silver', '1000', NULL, '011820241015557465a8fa5bec0a0.png', '011820241015553165a8fa5bec344.png', '2024-01-18', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,2,3,5,6,4,7,8', 'Regular', 'Regular', '2024-01-18 04:45:55', '2024-01-22 10:09:51', NULL),
(165, '0118202410254065a8fca40cbe7.jpeg', '+91', '9866332211', 'Kjjj', 'Yuyt', 'erter@yopmail.com', '$2y$10$ia4TOUsqih85HOGCmo3RiO47jwX4QoqBLTEAZ6LoedXEEozd4ppze', 'Abu Dhabi', 'Anguilla', '0202-01-18', 'Male', 'gndC2065qh7r', NULL, 'None', NULL, NULL, 'UVCPQZJzQB609yZrXY74qABlExxAHRn0t5TcJJNqHH7iJ7MBmnJbWHqaO3ZhbZGk', '0', '0', NULL, NULL, 'Active', 76268427191, 'Silver', '1000', NULL, '011820241025406065a8fca476ba7.png', '011820241025409365a8fca476ed3.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 04:55:40', '2024-01-22 10:09:51', NULL);
INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `refer_amount_used`, `request_change_email`, `like_list`, `music_list`, `do_you_drink`, `do_you_smoke`, `created_at`, `updated_at`, `deleted_at`) VALUES
(166, '0118202410293265a8fd8c265d7.jpeg', '+91', '9855447758', 'Sdf', 'Uyyu', 'ret@yopmail.com', '$2y$10$CpUL9erPU71u7BiSa4t8EerK7jU4cxnlyw3UdbbIAvyImIO5BJxgS', 'Abu Dhabi', 'Antigua & Barbuda', '2019-01-18', 'Male', 'gxTI9949GOzq', NULL, 'None', NULL, NULL, 'LRKDe0KPj5K3sHNXmu3oaauEnTJKvCIoWkDZxQ9ACL3hoLgTDirm9VUMlyGF9IP8', '0', '0', NULL, NULL, 'Active', 83338953475, 'Silver', '1000', NULL, '011820241029321165a8fd8c91425.png', '011820241029328965a8fd8c916d4.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 04:59:32', '2024-01-22 10:09:51', NULL),
(167, '0118202411025165a9055b6a254.jpeg', '+54', '5151515151', 'Dhdhdhhdjdhdjd', 'Shjdjdjdjshsjdjsud', 'wq@yopmail.com', '$2y$10$0uj/2Ib00Vvs0d2tXio4YOdxzxAFUm6tmMpYJehkKiEirHS3dfo8q', 'Abu Dhabi', 'Bahamas', '2024-01-18', 'Male', 'MqrM4574xfP5', NULL, 'None', NULL, NULL, 'orHkXPpY9A8YXhCHwOO01CMbluCKToSSurnnz5c5dXzwsIaOZ91XNDCFH6SpJoVU', '0', '0', NULL, NULL, 'Active', 92270124832, 'Silver', '1000', NULL, '011820241102518565a9055be1df2.png', '011820241102512265a9055be2084.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 05:32:51', '2024-01-22 10:09:51', NULL),
(168, '0118202411355965a90d1fd307a.jpg', '+971', '963852741', 'ydydygxgxogx☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺', 'ydydygxgxogx☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺', 'k@yopmail.com', '$2y$10$YjRnpPJBvVUHIvZMTH0sruzeDhWgIUNs4RXRhIEqkA3ggV27B7mNu', 'Fujairah', 'Afghanistan', '2024-01-18', 'Female', 'Nlzu3556Fiay', NULL, 'None', NULL, NULL, 'VrdJ6yLpm0rVx5AzMl1Hx98XdcPCO9oLhhQsbARVhxA63S7Kg1LfJppCxy727oDm', '0', '0', NULL, NULL, 'Active', 80762399503, 'Silver', '1000', NULL, '011820241109265465a906e6b6e1e.png', '011820241109264965a906e6b70a4.png', '2024-01-18', 0, 0, NULL, '4,5,6,7,8,9,10', '8', 'Occasional', 'Regular', '2024-01-18 05:39:26', '2024-01-22 10:09:51', NULL),
(169, '0118202411131765a907cdc7371.jpeg', '+91', '9866332200', 'Sg', 'Erwr', 'rewrwer@yopmail.com', '$2y$10$U7Bcf4T7p5HfQgFFMkEDHumqaoDRQh0RjZRnFZDiUzLBCMIp5mk0y', 'Abu Dhabi', 'Antarctica', '2024-01-18', 'Male', 'Hw5F7510Lttd', NULL, 'None', NULL, NULL, 'VVYkp5G3p5fGAPUryr8aOumVOwiw7b2UIs19j91OQm53xroCoSsn6Kpy3UeLI68w', '0', '0', NULL, NULL, 'Active', 29729949008, 'Silver', '1000', NULL, '011820241113181265a907ce54391.png', '011820241113187865a907ce54638.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 05:43:17', '2024-01-22 10:09:51', NULL),
(170, '0118202411294665a90baad1cd0.jpeg', '+91', '2121212121', 'Shhshsbshshsheshehehej', 'Dhjdjdjdjshsjjdjs', 'yt@yopmail.com', '$2y$10$ONDhrzsUd3TnSQGvx5sDAOdW2bo5ocPVgwSj1Zo9gdv2rzT118Zj6', 'Abu Dhabi', 'Algeria', '2024-01-18', 'Male', 'tkoL4848Sh2t', NULL, 'None', NULL, NULL, 'j17f6IrOpdBdG0r2b9VuF8IJwkWjeaJnIDjXCKGTvW3de9lvBeucXOVD7eS6jw25', '0', '0', NULL, NULL, 'Active', 43849772232, 'Silver', '1000', NULL, '011820241129471765a90bab64f5a.png', '011820241129471365a90bab651ff.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 05:59:46', '2024-01-22 10:09:51', NULL),
(171, NULL, '+971', '1472583699', 'hdhdh', 'jzbdbdbdb', 'z@yopmail.com', '$2y$10$No90F1G6FL8Ai5r6TbAT9.7qZPoRspH9C0dXkfMv9Q/FXMdXOwKAq', 'Ajman', 'Afghanistan', '2024-01-18', 'Male', 'fWvl8335VKUn', NULL, 'None', NULL, NULL, 'JCtGPOJGLLoJCoLOYtryOWyvX927VI4jCsV1IZNTWyLAtgYixBUM81SOJvFCUhjE', '0', '0', NULL, NULL, 'Active', 85841846820, 'Silver', '1000', NULL, '011820241142591665a90ec3ca5fe.png', '011820241142596365a90ec3ca800.png', '2024-01-18', 0, 0, NULL, '1,2,4,3,5,6,8,7,10,9', '1,2,4,3,5,6,8,7,9,10', 'No', 'Occasional', '2024-01-18 06:12:59', '2024-01-22 10:09:51', NULL),
(172, NULL, '+971', '866866856', 'adiitya', 'ajvxgiqx', 'rajputadityafxggzsfs@yopmail.com', '$2y$10$S4tIfVCkA.w4I1tgFyIpXeVJLY8fE2cVqjH4HZexMKCw4Ob7KDzD.', 'Ajman', 'Afghanistan', '2024-01-18', 'Male', 'Iu1S3891kgwi', NULL, 'None', NULL, NULL, 'q8Sqdl3iPBBSsn5YjVwL7aEky3kZfqzsntHaZaljAFXdXMqav7DUXywNVDie3IgS', '0', '0', NULL, NULL, 'Active', 92894567672, 'Silver', '1000', NULL, '011820241200572665a912f91c10b.png', '011820241200576865a912f91c43e.png', '2024-01-18', 0, 0, NULL, '1,2', '1,3', 'Regular', 'Regular', '2024-01-18 06:30:56', '2024-01-22 10:09:51', NULL),
(173, '0118202413195965a9257f5e00f.jpeg', '+91', '9878456525', 'Dfsdf', 'Dsfs', 'wwwddd@yopmail.com', '$2y$10$L2a.Mo4goQytACynbweB7eXHjUL0uhfyYY51cgJd3bxc7YHUN3b3m', 'Abu Dhabi', 'Andorra', '2012-01-18', 'Male', 'O0TG4123t5Yk', NULL, 'None', NULL, NULL, 'ItyzycgPKGonhvtYKGrNrpx0Y67JDS2dWGqGBAXhMBLj28E8ybCFmL73abhFWJR0', '0', '0', NULL, NULL, 'Active', 81018095009, 'Silver', '1000', NULL, '011820241319599265a9257fe1a3f.png', '011820241319597165a9257fe1c01.png', '2024-01-18', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 07:49:59', '2024-01-22 10:09:51', NULL),
(174, '0118202413350065a92904d2082.jpeg', '+91', '9866337745', 'Kghgf', 'Tyrt', 'ty@yopmail.com', '$2y$10$KQbU0bNe///.5lJeTliAG.uhF0dpqISD3Gl2eCRciJ//PDmitwr8.', 'Abu Dhabi', 'Armenia', '2024-01-18', 'Male', 'nHkh4151t3Ta', NULL, 'None', NULL, NULL, '7TGJLTG3yIKKPcZ1eDweCW2Df22XxfD1x4mPCfGA6tIR2qDHt43Rw7wDAlxolXnL', '0', '0', NULL, NULL, 'Active', 19296137165, 'Silver', '1000', NULL, '011820241335014365a9290534e03.png', '011820241335014965a929053509a.png', '2024-01-18', 0, 0, NULL, '1,2', '4', 'Occasional', 'No', '2024-01-18 08:05:00', '2024-01-22 10:09:51', NULL),
(175, '0118202413400665a92a361db59.jpeg', '+376', '8494646949', 'Sbns', 'fhch ch', 'Hellolo@yopmail.com', '$2y$10$aM.lD697U0RTmV05rEPTBObJU0eL1R1NJv.6JYBNqyTK8TZ02NM8a', 'Abu Dhabi', 'Afghanistan', '2024-01-18', 'Male', 'ANXD7042RF3t', NULL, 'Ios', '7f522d3cbfa85ef049f83fbe00af0a1aabf322eb6e9b19915e101241091a04c5', NULL, NULL, '0', '1', NULL, NULL, 'Active', 62870986418, 'Silver', '1000', NULL, '011820241340063065a92a3679ba1.png', '011820241340068565a92a3679e3f.png', '2024-01-18', 0, 0, NULL, '6,5', '1,2', 'No', 'Occasional', '2024-01-18 08:10:06', '2024-01-22 10:09:51', NULL),
(176, '0119202405234865aa0764ada23.jpeg', '+971', '9874859656', 'Ghfgh', 'Fghfrty', 'abhay12@yopmail.com', '$2y$10$5wE1EPmD7zNaoB2uZi.nRe2klJyeri3kCGElgGJUpQZ3bImRFTwg.', 'Abu Dhabi', 'Afghanistan', '2017-01-19', 'Male', 'ISOb4150i6sI', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 61696381607, 'Silver', '1000', NULL, '011920240523498365aa07654c396.png', '011920240523495865aa07654c64a.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-18 23:53:48', '2024-01-22 10:09:51', NULL),
(177, '0119202406391565aa1913c4263.jpg', '+91', '62303624998', 'vjjvwx', 'qvja', 'mobilephshhsone15515@gmail.com', '$2y$10$BdOWdk7oBvuvmth29U6RquPOFReaTai9K6tPODXHdFVB31T8RCQia', 'Ajman', 'Albania', '2024-01-19', 'Male', 'ejFa1182916I', NULL, 'None', NULL, NULL, 'u4MXfoIs6VTeYAwxlQJ2A40IUxdVD5khdgiUMjzTYWPIULLLQm7T7zCtftGek33c', '0', '0', NULL, NULL, 'Active', 58405642631, 'Silver', '1000', NULL, '011920240639169165aa19143bbab.png', '011920240639161765aa19143be2f.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-19 01:09:15', '2024-01-22 10:09:51', NULL),
(178, '0119202408475165aa3737e2549.jpeg', '+91', '7787983458', 'Sjshhhhhhhhhhhhhhhhh', 'Kaakazbbxnxnxnnxnxnx', 'kaka2@yopmail.com', '$2y$10$7CXk8zu1c8sEct9VkficxOIdyA2vWe/g96vV7oDaBVaFk9OagwoHu', 'Abu Dhabi', 'Barbados', '1971-01-18', 'Male', 'PQ598572omAg', NULL, 'Ios', 'a43530daa2b4fc153156cfa29d9b9e2d1049ef283acc39d232b5ff0a50c80f1b', NULL, NULL, '0', '1', NULL, NULL, 'Active', 72585910928, 'Silver', '1000', NULL, '011920240847522665aa37386b916.png', '011920240847529665aa37386bbb5.png', '2024-01-19', 0, 0, NULL, '7,8,10,9', '1', 'No', 'No', '2024-01-19 03:17:52', '2024-01-22 10:09:51', NULL),
(179, '0119202409173665aa3e308f41f.png', '+971', '9045728974', 'Kbsbsbsbshshshshshsh', 'Bsbsbshshshshss', 'aq@yopmail.com', '$2y$10$fjWsaOupv04zqI2URKjwoukq67n8DtStPvRpvxDX8G7X0gwsnLlx.', 'Abu Dhabi', 'Armenia', '2008-01-19', 'Male', 'QYBo8709QELq', NULL, 'None', NULL, NULL, 'odEFwv2GpIV8ud9S0g3a6Gt79ulPc1uVYwWFHbwQmCDmJBWfJvEuweqbR0K9oQbe', '0', '0', NULL, NULL, 'Active', 52566971573, 'Silver', '1000', NULL, '011920240904298265aa3b1dcdcdf.png', '011920240904299365aa3b1dcdf91.png', '2024-01-19', 0, 0, NULL, '1,2', '', 'No', 'No', '2024-01-19 03:34:29', '2024-01-22 10:09:51', NULL),
(180, '0119202409310765aa415b228eb.jpeg', '+971', '9045728976', 'Shhshshs', 'Shbshshs', 'an@yopmail.com', '$2y$10$xlbVMVkm8z1nPEvOg2gly.GvjHQNfQveViKHKhclpPniwsrASCAEy', 'Abu Dhabi', 'Albania', '2008-01-19', 'Male', 'XEow8533Vrhm', NULL, 'None', NULL, NULL, 'ugj8PtzXug5BntmT8rOKW38AT8FiJkSDcc4KCMcFzR3waTb5HKamDs1EeKjIHxNN', '0', '0', NULL, NULL, 'Active', 90701563414, 'Silver', '1000', NULL, '011920240931072365aa415b90c08.png', '011920240931073365aa415b90e87.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-19 04:01:07', '2024-01-22 10:09:51', NULL),
(181, NULL, '+971', '64361845', 'gshsjs', 'aygshs', 'mobilesggsphone15515@gmail.com', '$2y$10$xFa6940KYevohYEWkmiWUeEJj71JD7hS4p3EHWHkQAmQSMALrdsKG', 'Ajman', 'Albania', '2008-01-19', 'Male', 'hkfM6268HO4e', NULL, 'None', NULL, NULL, 'CyhkXHV6oI9lMx9wJCUBF6ESDBtTbEdyIj6nc1t0RdCoeNV0xykWSl9s2SA3QzRA', '0', '0', NULL, NULL, 'Active', 26536711666, 'Silver', '1000', NULL, '011920240944543365aa449630a6e.png', '011920240944547165aa449630d48.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-19 04:14:53', '2024-01-22 10:09:51', NULL),
(182, '0119202411582465aa63e08701c.jpeg', '+971', '45645646465', 'Ddddddd', 'Feafasf', 'tt2@yopmail.com', '$2y$10$i.6IHjcNQOWakXXHAlYBp.36BdtgrBwxhB.bHs.k4lvqKIQndoQ0a', 'Abu Dhabi', 'Australia', '2024-01-19', 'Male', 'jdXd8636oMyj', NULL, 'None', NULL, NULL, 't2W1I7mnePblpaSWuOOyRF0fVlgWoAoZedJ2ETYlA8PNsqZkcRtX4zJBEKGg6eVW', '0', '0', NULL, NULL, 'Active', 83101140392, 'Silver', '1000', NULL, '011920241158246065aa63e0e5f09.png', '011920241158242065aa63e0e61c0.png', '2024-01-19', 0, 0, NULL, '1,2,3', '1,2', 'No', 'No', '2024-01-19 06:28:24', '2024-01-22 10:09:51', NULL),
(183, '0119202412020365aa64bbe6a46.jpeg', '+91', '9847859696', 'Dsfs', 'Sdfsdf', 'dsfsdfe@yopmail.com', '$2y$10$2s1q3wMbGJEGY/64nPk5xuKLVfo4026naSbfqX92NdzSPpcBvNYxy', 'Abu Dhabi', 'Argentina', '2001-01-19', 'Male', 'cIeN8688yFEr', NULL, 'None', NULL, NULL, 'a0CCDVxnsYO5SLqzk9oDBD0IdF2DNGphIbQYMtiwYUgk5g4livgqqxyCjYrVZrT0', '0', '0', NULL, NULL, 'Active', 52695666806, 'Silver', '1000', NULL, '011920241202045065aa64bc4a893.png', '011920241202045965aa64bc4ab8d.png', '2024-01-19', 0, 0, NULL, '1', '1,2', 'No', 'No', '2024-01-19 06:32:04', '2024-01-22 10:09:51', NULL),
(184, '0119202412053365aa658d7171c.jpeg', '+971', '4654113245456', 'Vivek', 'Mehta', 'mehra@yopmail.com', '$2y$10$qAMdlU4bOqnDlNQP17TRI.mI2o.YFqPgltYTBD7MQL4w1AJVMYAP.', 'Abu Dhabi', 'Ascension Island', '1986-01-19', 'Male', '4wuc8990UYf9', NULL, 'None', NULL, NULL, 'dBqHFYty6RBTiKndCIZ4M1gjcxTx9HWOY7UiCeSJUV4z6fWDyWAmcXCMrDXQNnmP', '0', '0', NULL, NULL, 'Active', 58964105920, 'Silver', '1000', NULL, '011920241205338965aa658dd135b.png', '011920241205331765aa658dd1610.png', '2024-01-19', 0, 0, NULL, '', '', 'No', 'No', '2024-01-19 06:35:33', '2024-01-22 10:09:51', NULL),
(185, '0119202412274965aa6ac589549.jpeg', '+91', '9855663361', 'Rtdff', 'Sdfssdaf', 'awww@yopmail.com', '$2y$10$JTeQShLFmCUL27lERgh2T.HB8MDIJC6psHAbA/KCZB6Nn0i2SFvVa', 'Abu Dhabi', 'Afghanistan', '2008-01-19', 'Male', 'nYWw2104VTYu', NULL, 'None', NULL, NULL, 'NHHQvwonVYTQnwYu935EHRRh5b91t8xz3aOy0JqnKA9vBpwkWeuviITZKYRHS3jC', '0', '0', NULL, NULL, 'Active', 68417218731, 'Silver', '1000', NULL, '011920241227496565aa6ac5f0343.png', '011920241227498165aa6ac5f0570.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-19 06:57:49', '2024-01-22 10:09:51', NULL),
(186, NULL, '+971', '4646464646', 'good', 'job', 'g1@yopmail.com', '$2y$10$v2sDFssasfiUsNd4XXODwOHUC9CYkHpJYjPUSVUDVCoAbbwoUYFM6', 'Abu Dhabi', 'Algeria', '2008-01-19', 'Female', 'eAKa6128e0d1', NULL, 'Android', 'fnLXN9OfQeqjh_Tqf-eGUY:APA91bH5E9SmmYpKP0e2H056BC7ddpPxpBbWaEBVnaturVIVfOs8FmdiY7SnMh2xxRlJj678nmvmflV5aR3LXnAxuUu5bd2hpM-fMhrKT4nHube9VmRDlS7mAKwFecNvBdV-gCOXkxOc', NULL, '2RGH8WKajxAUdyGqKLfKyf2tbABJkUOE0LBVhv9eRIXopvbUtloNtxO9GXw4oL6p', '0', '0', NULL, NULL, 'Active', 37314198562, 'Silver', '1000', NULL, '011920241246385665aa6f2e018ff.png', '011920241246382265aa6f2e01c0a.png', '2024-01-19', 0, 0, NULL, '', '', 'Regular', 'Regular', '2024-01-19 07:16:37', '2024-01-22 10:09:51', NULL),
(187, NULL, '+971', '7777777771', 'kgfzfjzjfzfzjffjzfjzfjzfizfzgz', 'jfzjfzjfzigzigzgxigigsgisiysitd', 'm@yopmail.com', '$2y$10$9gyo/CGfSCZVInfVA4QOiO2nfQtWeNfbE9NuS6IptZm24LgtM9mvO', 'Abu Dhabi', 'Afghanistan', '2008-01-19', 'Male', '6ST64426TrvR', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 29166291170, 'Silver', '1000', NULL, '011920241252522465aa70a4d460b.png', '011920241252527565aa70a4d48f8.png', '2024-01-19', 0, 0, NULL, '1,2,3,4,6,5,8', '1,2,4,3,5,6', 'Occasional', 'Occasional', '2024-01-19 07:22:52', '2024-01-22 10:09:51', NULL),
(188, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0124202406160365b0ab2303e66.png): failed to open stream: Permission denied', '+91', '9817820480', 'Kukul', 'Kevin', 'fhsddfd@yopmail.com', '$2y$10$iEnsBgsbD3uCT9SWb2D4AO6CDu2UMuZsUsyZYGvczZEH/mqz3AALu', 'Abu Dhabif', 'Angola', '1995-01-28', 'Male', 'I6FZ5191sFAH', NULL, 'Ios', '80bb3219390ba286ad8edfa21c9b1082f0d19b046297ddf335aa8da91ebaf47f8c2b39743f3543d414e74e45e4fe984962864cd680cdc1dbb0c7ad20a4588e1b2b60db648ebd3ef46791df76ee2d6684', NULL, 'OKoAPbvVaERTMV2vqQg3dT755Mwc8efm01FJ2wzMjSsdGNeUNism6Gmra8NyUrpE', '0', '0', NULL, NULL, 'Active', 17621835781, 'Silver', '1000', NULL, '011920241318391465aa76afdfdbe.png', '011920241318396965aa76afe0066.png', '2024-01-19', 0, 0, NULL, '1,2,10,9', '4,2', 'No', 'Occasional', '2024-01-19 07:48:39', '2024-01-29 06:27:24', NULL),
(189, '0119202414233765aa85e985ab0.jpeg', '+93', '7787983450', 'Debzugz', 'Ray', 'titu2@yopmail.com', '$2y$10$KkcGLEjFWfkJY/IXzH4yr.t9uQexx5yfEzHaqSrq7BcztKpVVmVIS', 'Ras Al Khaimah', 'Bahrain', '1935-01-19', 'Male', 'SycG6790qQH7', NULL, 'Ios', '8c034564a6bb4ec694691bb00052e17536c2bf1caec416aa276b3b130d97bab3', NULL, NULL, '0', '1', NULL, NULL, 'Active', 20838423963, 'Silver', '1000', NULL, '011920241423375565aa85e9ed4d0.png', '011920241423374765aa85e9ed73d.png', '2024-01-19', 0, 0, NULL, '4,3', NULL, 'No', 'No', '2024-01-19 08:53:37', '2024-01-22 10:09:51', NULL),
(190, '0119202414303765aa878dde900.jpeg', '+91', '7787983450', 'Kydfkdtk', 'Dtkdtjdj', 'rlala@yopmail.com', '$2y$10$gM67QBlorKN7TJ7PWUUTKuRDJGhNBKH2cw7IeCDI8WCE4D0Xcz2oO', 'Abu Dhabi', 'Albania', '2008-01-19', 'Male', 'nesd5909D32K', NULL, 'None', NULL, NULL, 'tUmZe2dgWrBHdFKR6v6leOsjV5e7HzCO8JTNbkV9bWM9fSIWHHEjIaMmmIkWAGdc', '0', '0', NULL, NULL, 'Active', 88876558648, 'Silver', '1000', NULL, '011920241430387765aa878e3e4e3.png', '011920241430382165aa878e3e776.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-19 09:00:37', '2024-01-22 10:09:51', NULL),
(191, '0119202414385165aa897ba67f7.jpeg', '+971', '5454545454', 'Bsbdbsbsbbsbsbsbsbdh', 'Sbsbbsbshshshbsbsbsb', 'op@yopmail.com', '$2y$10$.DnV9zyIrcEQD7GIxKRyr.I/rGG2KAEwlF6dUs7aNk4aCeWn5jZPi', 'Abu Dhabi', 'Argentina', '2008-01-19', 'Male', 'dkJ09407EyE4', NULL, 'None', NULL, NULL, 'xIoCLEFqKxJ2dboxuOBpV16xbcY2pzuNBRImE2QiofBIdtsdnIOjHl9dmpiR7nnL', '0', '0', NULL, NULL, 'Active', 29130639176, 'Silver', '1000', NULL, '011920241438527865aa897c0e51e.png', '011920241438521665aa897c0e7c4.png', '2024-01-19', 0, 0, NULL, '', '', 'No', 'No', '2024-01-19 09:08:51', '2024-01-22 10:09:51', NULL),
(192, '0119202414592265aa8e4a9b55f.png', '+971', '4141414141', 'I’m', 'Shhshshdhhsjshshhsee', 'tr@yopmail.com', '$2y$10$v8Nj5I3dlGWi50YI8223BevgYZ22XJGGUl1GEYmXYGvvogtq8Lej.', 'Abu Dhabi', 'Algeria', '2008-01-19', 'Male', 'aRrd6921BrBk', NULL, 'None', NULL, NULL, 'La6gTeJahEWIEW0S5Z71hWzHgctJO48uD490WBd0PGXGhLNawfnmIqtIohHLS9Sb', '0', '0', NULL, NULL, 'Active', 22087309695, 'Silver', '1000', NULL, '011920241453571365aa8d05ef7f4.png', '011920241453574265aa8d05efa86.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-19 09:23:57', '2024-01-22 10:09:51', NULL),
(193, '0119202415032765aa8f3f5bc59.jpeg', '+91', '9817820450', 'Ishejjjd', 'Terry', 'eweet@yopmail.com', '$2y$10$3f3YipwezWzAN3kPtcWIGeukim6/vYUdTcWbicD18..tQFaDsxkaO', 'Dubai', 'Anguilla', '1985-01-19', 'Male', 'YMwr1613mFWb', NULL, 'Ios', 'cc49b6f9cceea102c6955a8873f42f35aa67a49df8525a110844671ccc93dccf', NULL, 'iBDnCitTZaUQ90yFjkxXKkNsWkXHmf2A0Nazq3QKvua4FCZxrz984kjidp60Q0Ae', '0', '0', NULL, NULL, 'Active', 23275585685, 'Silver', '1000', NULL, '011920241503272565aa8f3fb9fa6.png', '011920241503275065aa8f3fba23a.png', '2024-01-19', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-19 09:33:27', '2024-01-22 10:09:51', NULL),
(194, '0119202416124665aa9f7e1ecfd.jpeg', '+244', '7787983450', 'Zbbzbzb', 'Xbbxbxbx', 'Kiara@yopmail.com', '$2y$10$x0nGwOyhXm8/CK9ERQOKFeUA8CyA.EsrmFjvxQ7hF6WEbvijM/bwe', 'Abu Dhabi', 'Angola', '1964-01-19', 'Male', 'RLL63804Qjc8', NULL, 'Ios', 'ffbcd7c81067a0218e0708e8881dedcbcf0905083d81332387d8afedd92bcb32', NULL, 'XseJ3jI93lBOqrj5XUe8Oalr0pgYtXqev71s7uqVutmhNBpC3P9RW422mKcalYye', '0', '2', NULL, NULL, 'Active', 90623264670, 'Silver', '1000', NULL, '011920241612468965aa9f7e80fd3.png', '011920241612462465aa9f7e81250.png', '2024-01-19', 0, 0, 'Raka5@yopmail.com', NULL, NULL, 'No', 'No', '2024-01-19 10:42:46', '2024-01-22 10:09:51', NULL),
(195, NULL, '+971', '68689868', 'vbg', 'bbf', 'build@yopmail.com', '$2y$10$/E5LwUzMQK9A/SqmXl5xO.VpzuTdtSlbFRVUSaLqua8E9L0qVHDlq', 'Abu Dhabi', 'United States of America', '2008-01-18', 'Male', 'YJzx2878gyF9', NULL, 'None', NULL, NULL, 'tOABP98Bht6SAHcRI9PVSG1T4sUmFEy2qhoSovqdCND2iFuudgFidxIDXWcbBLZF', '0', '0', NULL, NULL, 'Active', 52530862457, 'Silver', '1000', NULL, '012020240715169565ab7304828a3.png', '012020240715166065ab730482a7b.png', '2024-01-20', 0, 0, NULL, '1,2,4,3,6,5,7,8', '2,1,3,4,6,5', 'Regular', 'Regular', '2024-01-20 01:45:16', '2024-01-22 10:09:51', NULL),
(196, '0120202407192365ab73fbb57de.png', '+971', '868986868', 'tsts', 'gdhdhdh', 'build1@yopmail.com', '$2y$10$feLQBHnXjdZy53DLYHFCZOZqgQ7GTN/sv6ZizGBVg9871dsV.EBd6', 'Abu Dhabi', 'Anguilla', '2008-01-19', 'Other', 'neXa65941jih', NULL, 'None', NULL, NULL, 'dZ72ePXPYJORsypbixu5IfuxY9ivpgkhWHXM0ayIULfsAuM7UhltiPdbaE9lNE3S', '0', '0', NULL, NULL, 'Active', 17968697324, 'Silver', '1000', NULL, '012020240719249765ab73fc62eed.png', '012020240719246765ab73fc63158.png', '2024-01-20', 0, 0, NULL, NULL, NULL, 'Occasional', 'Occasional', '2024-01-20 01:49:24', '2024-01-22 10:09:51', NULL),
(197, '0120202407252565ab756575b42.png', '+971', '9886806068', 'uddyyd', 'yfu', 'build2@yopmail.com', '$2y$10$pwqwld4KhuBtUI4HatTNVO5buXG.sPjvAiNWPatuKfw211L3uU6uq', 'Dubai', 'United States of America', '2008-01-20', 'Other', '2yKx6094RINe', NULL, 'None', NULL, NULL, 'v6X6LBZd0J9PzMShSUnI7CKdGUDFNb1FX5SzX8q5NkOMvBLmPkXzRAqd9wLXK4YM', '0', '0', NULL, NULL, 'Active', 66146943302, 'Silver', '1000', NULL, '012020240725269965ab756646919.png', '012020240725268965ab756646baf.png', '2024-01-20', 0, 0, NULL, '1,2,4,3,6,5,7,10,9', '1,2,4,3,5,6,8,7,9,10', 'No', 'Regular', '2024-01-20 01:55:25', '2024-01-22 10:09:51', NULL),
(198, NULL, '+971', '66838886868', 'kolll', 'ydchhochgocgcgciiffififyhcchhochlchlxh', 'build3@yopmail.com', '$2y$10$DQBhsIKS.iI8AFq0PcAgEOApMc0l1E30fU489Ez7RUEPX8Fu/EHG2', 'Ajman', 'Algeria', '2008-01-20', 'Other', 'vXd66009qCPR', NULL, 'Android', 'dd0app0cRj6nQORt9-rOi_:APA91bE343yeZLgT5_jFoERcIvvkQidvqSLzDGfGWEP5w0mGIaszHVCHEdwKuF9xJp8BTddKwrymJfywiZd-I_U7bMkuxAz3aiQhXk94diIwqYonIIK9vznFnP1UhXHqigfg7iBhCban', NULL, 'yATQSYASgJGDnpCf7Vg2iP0Ml7NuL1suTZupKF167RtwLMUCC8cTiDLul6mX0MyC', '0', '0', NULL, NULL, 'Active', 66539535168, 'Silver', '1000', NULL, '012020240853537165ab8a210aa0b.png', '012020240853532365ab8a210ac3c.png', '2024-01-20', 0, 0, NULL, '1,2,3,4,6,5,8,7,10,9', '1,2,3,4,5,6,7,8,9', 'No', 'Regular', '2024-01-20 03:23:52', '2024-01-22 10:09:51', NULL),
(199, '0122202407462765ae1d53ca96f.jpg', '+1', '2828386828586', 'Uigsih', 'Ydydyd', 'mobhxhzilephone15515@gmail.com', '$2y$10$dwdQmwdgl78nXPqBpXk3meFviqrIIPDea/lL6GgynzPFaK5oOmt3G', 'Ajman', 'Albania', '2008-01-09', 'Male', 'eVBb8206VOHw', NULL, 'None', NULL, NULL, 'AcVmjJBtEulIFzdC38iLIE9Wa3VzD3ycorepn8M7XBrnsW4WEgWg0pFf8izO2Cgl', '0', '0', NULL, NULL, 'Active', 33656693734, 'Silver', '1000', NULL, '012220240552487365ae02b0332dc.png', '012220240552482165ae02b033d35.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 00:22:47', '2024-01-22 10:09:51', NULL),
(200, NULL, '+971', '89989897', 'Hdhdhshdh', 'Hshshdhdh', 't@yopmail.com', '$2y$10$NOU89hr/nbGuh8PDVZpPEuEbkeWcSafFjtUVhP0vWjsGGiRyvktPS', 'Abu Dhabi', 'United States of America', '2008-01-22', 'Female', 'CNjp6666zqkG', NULL, 'None', NULL, NULL, 'YXbzc7ZRCZFw3jCuXHjQl05lAdkd1W0VjZFYYqUFcDAan8r9Ekpyze0xd7FoOyVg', '0', '0', NULL, NULL, 'Active', 74742828046, 'Silver', '1000', NULL, '012220241036359265ae45338f7db.png', '012220241036358865ae453399b55.png', '2024-01-22', 0, 0, NULL, '', '10,9,8,7,6,5,4,3,2,1', 'No', 'No', '2024-01-22 05:06:35', '2024-01-22 10:09:51', NULL),
(201, NULL, '+971', '9988776655', 'abc', 'Ueheueheeh', 'k9@yopmail.com', '$2y$10$xC4uXNb66UuJYBhKweIwAuuFfAhrfBFMz/KJP/MfjP2Jshampekg2', 'Abu Dhabi', 'Angola', '2008-01-22', 'Female', 'waTA3456jVow', NULL, 'Android', 'fk_okP6uT2Gx6wDJB0ZTv3:APA91bF01tSTlkSP06hUXqjheWksX0IJtEwkbwllWlKWq0IYHjTZjxx3GLqDoRaB9kmuRBUU_w2A8sljFV-9I2qb4KdlRKDl_bxxdNGAcDHITWonw9F7vX1ogzVmPZ6jmI6jMMPOSKvl', NULL, NULL, '0', '1', NULL, NULL, 'Active', 19183085757, 'Silver', '1000', NULL, '012220241053139965ae49190958f.png', '012220241053135665ae491909785.png', '2024-01-22', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,5,6,7,8,9,10', 'Occasional', 'No', '2024-01-22 05:23:12', '2024-01-22 10:09:51', NULL),
(202, NULL, '+971', '94959595994', 'xyz', 'Hdhdegxgzgisgsgigsgsgizgisgigzigxiggsgid', 'lh@yopmail.com', '$2y$10$dt2VHwORRID5y6VeOLCtOeOEBAVs7v9ob8mP6qkqwHjNZ2YuoBFrG', 'Dubai', 'Congo (Democratic Republic of the)', '2007-04-17', 'Female', '3XaX3162vh00', NULL, 'None', NULL, NULL, '5x0MLpDBqlf9q0NkgWsynwW7kcQlvrgrlpQJy0rWNgF43Vqgzj0kea0OaNYDjonw', '0', '0', NULL, NULL, 'Active', 91777563187, 'Silver', '1000', NULL, '012220241106027265ae4c1ac62db.png', '012220241106024165ae4c1ac64e0.png', '2024-01-22', 0, 0, NULL, '1,3,4,5,6,7,8,9,10,2', '7,9,10,6,5,4,3,2,1', 'No', 'No', '2024-01-22 05:36:02', '2024-01-22 10:09:51', NULL),
(203, '0122202411360665ae532642fb2.jpeg', '+971', '5454545455', 'Bsbsbsbshh', 'Jjvjvjv', 'hg@yopmail.com', '$2y$10$TfUACKbcCYHBqv1BtlbrLu/NnWzeIElJQTkwZcIdVM.DsFziTZj8i', 'Abu Dhabi', 'Afghanistan', '2008-01-22', 'Male', 'adbZ8987owSY', NULL, 'None', NULL, NULL, 'NANKtzqb23vflOAxx2EnIo59VQKZrAFgzwQLuzy5LpUywdv7wBMdOurbxJ8KBnea', '0', '0', NULL, NULL, 'Active', 23165042929, 'Silver', '1000', NULL, '012220241136061265ae5326bface.png', '012220241136064965ae5326bfd54.png', '2024-01-22', 0, 0, NULL, '2,1,4,3,5,6,7,8,10,9,1,2,3,4,5,6,7,8,9,10', '', 'No', 'No', '2024-01-22 06:06:06', '2024-01-22 10:09:51', NULL),
(204, '0122202411481765ae56017b3cf.png', '+971', '58585850558', 'Gcchchch', 'Cycychchgu', 'fd@yopmail.com', '$2y$10$XPZO8JD7SRYwlyZjWXj2buk2VKvU4KXsyVtmTJ9bjf3MXgVL1gylK', 'Abu Dhabi', 'Albania', '2008-01-22', 'Male', 'iaVi2678Fomf', NULL, 'Ios', '01a1f2c0f301b87fd1f2361f250979dab212ec32ee6f0502145b221c915da7fe', NULL, 'YRNIhfyRyQpMsRU3fxWD66WVjP8K0K7kTBacWAFOd3r0z0Mpbj8aWdZ1k1UxO7J0', '0', '0', NULL, NULL, 'Active', 30938600551, 'Silver', '1000', NULL, '012220241139149265ae53e26a11b.png', '012220241139146865ae53e26a325.png', '2024-01-22', 0, 0, NULL, '1,2,3,4,5,6,7,8,10,9', '1,2,4,6,3,5,8,7,10,9', 'No', 'No', '2024-01-22 06:09:14', '2024-01-22 10:09:51', NULL),
(205, NULL, '+971', '97959988', 'HJJjvjkbdddddbsbdbsbbs', 'Jczcnzcnczfdjsd', 'lg@yopmail.com', '$2y$10$M5eYpBVT/tILMNFShE0tkeECpzRRR.Su21xPZnXxIPjudnwCtG8bu', 'Ras Al Khaimah', 'Mauritius', '2008-01-22', 'Female', 'm3Iy2184dXn9', NULL, 'Android', 'eCuWP3_5RxGZId7_Gw2qZd:APA91bGAhmPku7flB81Td8bYifWbKpDpiiDZix3TyzLi7Vg8r4VFHMzvw049wF4favS6RYJ7ES70mFdGMGGxT80CdTPeqIPDt3_WbB0UhQT9XUVZwY8Yr2HsYIIxBru_riBciw7nLNk1', NULL, 'qHd6DGbpWT6N7Sz9tIZtzfwblTiK2T50lAxUqYkKsllaFykPrCQrMbGFjNzkLMMb', '0', '0', NULL, NULL, 'Active', 66034340260, 'Silver', '1000', NULL, '012220241139387665ae53fab8ee8.png', '012220241139387265ae53fab91b7.png', '2024-01-22', 0, 0, NULL, '1,2,4,3,6,5,8,7', '2,1,4,3,6,5,8,7,10,9', 'Regular', 'Regular', '2024-01-22 06:09:38', '2024-01-22 10:09:51', NULL),
(206, '0122202412341165ae60c3a1dd2.jpeg', '+971', '55555555', 'Dad', 'Sfdsfdsfdf', 'aditya1@yopmail.com', '$2y$10$4SDAguh5tII56Z/auUdsl.B/gMlQd4.MaIyY06HOLoE7o.NhFOPH2', 'Abu Dhabi', 'Albania', '2008-01-22', 'Male', 'SBWH4468Cta2', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 61405377384, 'Silver', '1000', NULL, '012220241234112365ae60c3f1187.png', '012220241234112065ae60c3f1425.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 07:04:11', '2024-01-22 10:09:51', NULL),
(207, NULL, '+971', '8754564549', 'Uguwguz', 'Vjwgiwgzqz', 'mobiletsphone15515@gmail.com', '$2y$10$Snr5V0MAgzkBVTHtXxfOe.NLUU.LlbZ92Z/G.Jl6q3VH/hNlAgSA2', 'Ajman', 'Afghanistan', '2008-01-18', 'Male', 'QsB52527raG1', NULL, 'None', NULL, NULL, 'D7rmZahYtboBBWDnWgeDDzYgkbxa4xtam2vLAs7ar4CwNiIwsRY49aBGZ9MEG6VN', '0', '0', NULL, NULL, 'Active', 40602317145, 'Silver', '1000', NULL, '012220241245121165ae6358a0899.png', '012220241245127065ae6358a0b48.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 07:15:12', '2024-01-22 10:09:51', NULL),
(208, NULL, '+971', '876755767', 'Yzcyaf', 'Affayaya', 'mobgzgsile@gmail.com', '$2y$10$qhsuEpd7NqnsHVsqZ5H0D.VcyI2J9fWUL3qPmE8xgTiN16A9Od.6W', 'Abu Dhabi', 'Albania', '2008-01-22', 'Male', 'fI5s4436SG9I', NULL, 'None', NULL, NULL, 'KVztzrpoqvvf2xVCbk9UTgdFeZ6p9PXSOtyJJg5nLApa6wCwQ98kYh5PjUIm4811', '0', '0', NULL, NULL, 'Active', 41008694056, 'Silver', '1000', NULL, '012220241247545565ae63fa1a0e7.png', '012220241247547365ae63fa1a395.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 07:17:53', '2024-01-22 10:09:51', NULL),
(209, NULL, '+971', '864684686484', 'Gyfyfyfy', 'Ufyfdy', 'mobilerfrphone15515@gmail.com', '$2y$10$e.zaV/acQ.AhAPl7kTiThe1tAYR4u4UyEemXRsmjtEkWOLiiugEGW', 'Abu Dhabi', 'Afghanistan', '2008-01-11', 'Male', '8du36578dHLB', NULL, 'Android', 'dyw7BarBQseMO8cIFe1cOp:APA91bEFHSfAdMalYsVRrQdHtHzLG6EeUUE2MnHa4zdHXDWlpjPMS7je-JU3x1IJWZr-A3r6TnVa-hlCcgU1GRRdvzi0jdREwHU61NATqcCUML0NkhkbpTXi025cU6sJQS4_LM_wJ-FT', NULL, 'lUWaJBF07SMxbUASzuMSU3UWud1vCyVdGCzmB3YuFDqQFqOayFEKwEUv3HfPpaxo', '0', '0', NULL, NULL, 'Active', 10910989949, 'Silver', '1000', NULL, '012220241253072365ae653389666.png', '012220241253074065ae653389910.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 07:23:07', '2024-01-22 10:09:51', NULL),
(210, NULL, '+971', '864684686484', 'Gyfyfyfy', 'Ufyfdy', 'mobilerfrphone15515@gmail.com', '$2y$10$hLFCd4T6DJ3Oo1aIpuW2Rub5aBFtVG5Sap1a40e7JbocaCI5s3fp2', 'Abu Dhabi', 'Afghanistan', '2008-01-11', 'Male', 'lghF6477YSCF', NULL, 'None', NULL, NULL, 'jJpUuSGW0oQ4vvEyq4Xm6D5OJ9wV8AOravZBG22LZ4sCgG39hvxTKliAtx9jWM27', '0', '0', NULL, NULL, 'Active', 39896272177, 'Silver', '1000', NULL, '012220241253114965ae65370aaa9.png', '012220241253111165ae65370ad86.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 07:23:10', '2024-01-22 10:09:51', NULL),
(211, NULL, '+971', '864684686484', 'Gyfyfyfy', 'Ufyfdy', 'mobilerfrphone15515@gmail.com', '$2y$10$EcU5d/jXpfzxs8wQBTyXluFzrnZJSqDq1GQC5m7YTqVxW6E/Q1YP6', 'Abu Dhabi', 'Afghanistan', '2008-01-11', 'Male', 'tAtn3437Ph5E', NULL, 'Android', 'dyw7BarBQseMO8cIFe1cOp:APA91bEFHSfAdMalYsVRrQdHtHzLG6EeUUE2MnHa4zdHXDWlpjPMS7je-JU3x1IJWZr-A3r6TnVa-hlCcgU1GRRdvzi0jdREwHU61NATqcCUML0NkhkbpTXi025cU6sJQS4_LM_wJ-FT', NULL, 'bMwNLlOmXwfQ50DDJr0zNIToOuaeKEzTFjK0aMR5Qykeie87tigT1bs6QelJ7sC8', '0', '0', NULL, NULL, 'Active', 65951382734, 'Silver', '1000', NULL, '012220241253112865ae6537a938d.png', '012220241253114465ae6537a9653.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 07:23:11', '2024-01-22 10:09:51', NULL),
(212, NULL, '+971', '86488468645', 'Vaugwuz', 'Ugqyfuw', 'mobsgzhile@yopmail.com', '$2y$10$kcx9CNnGA4s639wpsRsELO2TY9m6qmFGU7BD.k6ere8t11ByL7T4m', 'Ajman', 'Albania', '2008-01-18', 'Male', 'bRIP6644vjK4', NULL, 'Android', 'dyw7BarBQseMO8cIFe1cOp:APA91bEFHSfAdMalYsVRrQdHtHzLG6EeUUE2MnHa4zdHXDWlpjPMS7je-JU3x1IJWZr-A3r6TnVa-hlCcgU1GRRdvzi0jdREwHU61NATqcCUML0NkhkbpTXi025cU6sJQS4_LM_wJ-FT', NULL, 'WZ0bQDMiHDV0MxJztmyoXVoKA5x9E0TCDxA5xBR2NG9egSaOs7vtucQoxkDhljNA', '0', '0', NULL, NULL, 'Active', 22305477580, 'Silver', '1000', NULL, '012220241258283765ae66740c780.png', '012220241258281665ae66740ca4b.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 07:28:27', '2024-01-22 10:09:51', NULL),
(213, '0122202413311465ae6e22cbed0.jpg', '+971', '445544554455', 'Good', 'Good', 'g12@yopmail.com', '$2y$10$sLdrTzOQBPRbzInR0S755.gokGPCK5c3xTLQCGODo3/EZlnDkbDju', 'Ajman', 'United States of America', '2008-01-22', 'Female', 'x0yd22971D8s', NULL, 'Android', 'f49ZMu-KSymZsprLeub8hp:APA91bGPONnfs-ynYTljmh1hPebAJp0CYXEEC7CkEI1YI4FxdJ6U2aN1VorIKNrCvZGGIK2JZPl-0RyHT3h9hi-1odmHvEaoGGqtJZk_eqzlttvbwa2oJypylCYJsTvTbIvu0aXTKJSD', NULL, NULL, '0', '1', NULL, NULL, 'Active', 47291923408, 'Silver', '1000', NULL, '012220241310564965ae6960a569f.png', '012220241310563265ae6960a58fb.png', '2024-01-22', 0, 0, NULL, '', '', 'Regular', 'Regular', '2024-01-22 07:40:56', '2024-01-22 10:09:51', NULL),
(214, NULL, '+971', '56565758786', 'Gdgdizkgsgidigs', 'Kggkskgdkgdgi', 'gb@yopmail.com', '$2y$10$oS7ZqB6rTib13RjXmyOFvekUpvn1SyJD.2TQz60C.sLs6GRENq9Vy', 'Abu Dhabi', 'Albania', '2008-01-22', 'Female', 'jfPY5858QXah', NULL, 'Android', 'f49ZMu-KSymZsprLeub8hp:APA91bGPONnfs-ynYTljmh1hPebAJp0CYXEEC7CkEI1YI4FxdJ6U2aN1VorIKNrCvZGGIK2JZPl-0RyHT3h9hi-1odmHvEaoGGqtJZk_eqzlttvbwa2oJypylCYJsTvTbIvu0aXTKJSD', NULL, 'idN7g7mA2gNDGSwROAtxOTjkriHJJg6TRX976TNK9yqlmrOqtHptpz6p6fGLeWi6', '0', '0', NULL, NULL, 'Active', 53684068794, 'Silver', '1000', NULL, '012220241315095965ae6a5d4687f.png', '012220241315092765ae6a5d46b4e.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'Regular', 'Regular', '2024-01-22 07:45:09', '2024-01-22 10:09:51', NULL),
(215, '0122202413243265ae6c902cb11.jpg', '+971', '86868667609', 'Cgzkgzgkzgkzhfhdhlxhdlhdhldhd', 'Mvxvmxkvxvkzvkjdjdbfbfb', 'dcg@yopmail.com', '$2y$10$yMQPwQi59dvrrmql5BqQK.Gq/mTkUQdy4vArf5sXtfthf87i.KG0u', 'Dubai', 'Algeria', '2008-01-22', 'Female', '6yvH4489a7jd', NULL, 'None', NULL, NULL, 'VgZVbj2XUlgC0y7cJbE6yT1H0BJpyx9NprXyC7FVytkqAKYBTUprpatEfizlPHi9', '0', '0', NULL, NULL, 'Active', 43545861739, 'Silver', '1000', NULL, '012220241317176365ae6add68a1b.png', '012220241317173265ae6add68d1c.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'Regular', 'Regular', '2024-01-22 07:47:17', '2024-01-22 10:09:51', NULL),
(216, NULL, '+971', '578759987897', 'Stiffs', 'Jfjfjfsilfs', 'sgsgs@yopmail.com', '$2y$10$nTWGTIeQAIXLU4.CgsnXfO/RD54kWTveS.GoYHFVFmQOuVtf6MWg2', 'Umm Al Quwain', 'United States of America', '2008-01-22', 'Female', 'sdmu8543a9sA', NULL, 'None', NULL, NULL, 'UgygVZoGFSHhfNSdfne5CZ2dvT9kMUR0gzYe10yudmwzESq339PrLqwmdkckD4g0', '0', '0', NULL, NULL, 'Active', 16753375904, 'Silver', '1000', NULL, '012220241441202665ae7e90eae4b.png', '012220241441209665ae7e90eb111.png', '2024-01-22', 0, 0, NULL, '', '', 'Regular', 'Occasional', '2024-01-22 09:11:20', '2024-01-22 10:09:51', NULL),
(217, NULL, '+971', '8648545544', 'Jagiigaxi', 'Wuxiwxgwix', 'mobgshsilephone15515@gmail.com', '$2y$10$/uCnUQkDYNX7n3vs2yjUjuEfeZSPc/RCky1kuzvBoz4Gtf.WZ74BK', 'Ajman', 'Albania', '2008-01-16', 'Male', 'ZCqc9559xYwP', NULL, 'Android', 'cP5Tg_l1SfmR4E29VfhCjv:APA91bFsQW20GzyGQry-s-9_ZTYamqTQ9fUgPBJ4WoXwJsZDcG_0qmh9xLnjcwJm1Y6OsE43SIMHLaed1tlSAeRLprBZxg8FPFYWkVcuMGOSRn8w0VUUHuw5NUVmdWZ_sVXRGoClz19M', NULL, 'IRcjtaFY4mDiMyJXoQ5qIGtnSK6ZqAgu4amn6TfvkgESVNwFN2A6oV8Ei1LX4keh', '0', '0', NULL, NULL, 'Active', 78725214633, 'Silver', '1000', NULL, '012220241455381265ae81ea9e2c9.png', '012220241455381365ae81ea9e59a.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 09:25:38', '2024-01-22 10:09:51', NULL),
(218, NULL, '+971', '885588558855', 'Hesh', 'Hesh', 'h12@yopmail.com', '$2y$10$t14PbcEuyKh3vvIed9msEeQSrybA2.S9ig/bsGlWlMj1FdWbqepVG', 'Ajman', 'United States of America', '2008-01-17', 'Female', '0drz8415EciE', NULL, 'None', NULL, NULL, 'HCZ8D1HvNbbS7nxIaBYdnBGHhrAfVDwKD9d1J6I6kypYTDW34sOVBaNaO72otfj9', '0', '0', NULL, NULL, 'Active', 70862491529, 'Silver', '1000', NULL, '012220241503256965ae83bd07ef3.png', '012220241503256565ae83bd081c9.png', '2024-01-22', 0, 0, NULL, '', '', 'Regular', 'Regular', '2024-01-22 09:33:24', '2024-01-22 10:09:51', NULL),
(219, '0122202415111365ae8591b612f.jpg', '+971', '87878867', 'Gxvxkkvxndjdjxjdjdjdjdjdjdjdjdjdjdjdjdjdjdjdhdhddh', 'Ivxkvxkvzix', 'ygv@yopmail.com', '$2y$10$06HdwtJJph6znboDIMxBtu4pSkNmRvLE19sFMJwtbepf4qutLL0we', 'Dubai', 'United States of America', '2008-01-22', 'Male', 'amFh2112gLwu', NULL, 'None', NULL, NULL, '57GhEneHrQFd3rT9EdwKbv3s1qs8K14xLF12EYX2OR3keMqECGy6LPgvcDG6kuEN', '0', '0', NULL, NULL, 'Active', 27408797677, 'Silver', '1000', NULL, '012220241509021765ae850ed586a.png', '012220241509026165ae850ed5abc.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'Regular', 'Regular', '2024-01-22 09:39:02', '2024-01-22 10:09:51', NULL),
(220, NULL, '+971', '6684455484', 'Vjazguaxg', 'Qixgjqxgiwx', 'adityauguzqg@yopmail.com', '$2y$10$7UHD8l8W5o8A5ivZYSSpsOkj1I6pg6K1SBSemTuV6L/vhVpWGKFIC', 'Ajman', 'Afghanistan', '2008-01-09', 'Male', 'R1Zc1044BTT5', NULL, 'None', NULL, NULL, 'nOro20FINlpXS4QMhmoDL3bBpiobjsRFX6Ri2FukJd2tlg93ZkXtcQ68XJGiNEkd', '0', '0', NULL, NULL, 'Active', 80075789768, 'Silver', '1000', NULL, '012220241516179765ae86c1c6671.png', '012220241516172365ae86c1c6942.png', '2024-01-22', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 09:46:17', '2024-01-22 10:09:51', NULL),
(221, '0122202415340065ae8ae8d695b.jpg', '+971', '669966996699', 'Lockxndnnddjjdjssnjdjdjdjdjdjfjddjdjjdjdjdjdjdjdjd', 'Lockxngxjfgxhfxufuxuxutfuxfxutfxufxutxtjxtudugdjtk', 't01@yopmail.com', '$2y$10$sa1fkZwcFrFQB9l4xSaHR.v1kREVuUlviGHvlF4Hx/90AHVWgNRx2', 'Sharjah', 'United States of America', '2008-01-06', 'Female', 'adFN2321PxFP', NULL, 'Android', 'dol8gC2QTgGamJ4PEA9xVf:APA91bFmGzE-w8XLzFVlfzkHGBYGkTO_0vZ7OIjq17wW5lWQhDw2vye8_dZ4zOAev7vDY6bxndvLcwGv-cS_O6gkA25_WkTp5FewyeL80jDacCCASXY4_qdKzOd6Vf1c6rLSlbtevJDZ', NULL, NULL, '0', '1', NULL, NULL, 'Active', 81355554715, 'Silver', '1000', NULL, '012220241529231065ae89d3ba6ec.png', '012220241529235665ae89d3ba992.png', '2024-01-22', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,5,6,7,8,9,10', 'Regular', 'Regular', '2024-01-22 09:59:23', '2024-01-22 10:09:51', NULL),
(222, '0122202415305065ae8a2a2d61c.jpg', '+971', '65866565858', 'Etstskgzkvvkzvkzvkzzvkvkzkvzkvzvkzgizkzgikggxkggzg', 'Hdgkgsgksogsgosgdosgoogsgosgosgosgodogddysogdgodog', 'axcf@yopmail.com', '$2y$10$qeqtZJWkzkVxUNByYxvF8eH.fXGL5.KkydUOHhOJCl0oR1mh6ZlsW', 'Dubai', 'United States of America', '2008-01-22', 'Male', '2zi63997JJEb', NULL, 'None', NULL, NULL, 'ulGDvMGo1ovrmuFIaswRsQ1IrIA7XSTGjotqP53kBNTEygiR2FrDSRfhJeKHRnW3', '0', '0', NULL, NULL, 'Active', 15233012269, 'Silver', '1000', NULL, '012220241530507765ae8a2a9bd41.png', '012220241530508065ae8a2a9bfd4.png', '2024-01-22', 0, 0, NULL, '4,2,1,3,5,7,8,10,9', NULL, 'Regular', 'No', '2024-01-22 10:00:50', '2024-01-22 10:09:51', NULL),
(223, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0130202411311165b8ddff1bc51.jpg): failed to open stream: Permission denied', '+971', '9797979989', 'Xbxbxbbzbs', 'Hsbsbbsbs', 'nzbjx@yop.comail.com', '$2y$10$Et3VlGLULCTqQNkaR0eYA.cEiMrrYBgwC1m1FTbD/y4/KLL7FUYY2', 'Fujairah', 'United States of America', '2008-01-22', 'Male', 'azDx6445ryQc', NULL, 'None', NULL, NULL, 'aFPycw5tVHymJT5SbCHje1uahn8DTJjCmbHwUZjAE0ZTmsFdKWpKT6JCYDDxPpsz', '0', '0', NULL, NULL, 'Active', 94761698358, 'Silver', '1000', NULL, '012220241533427865ae8ad6e3770.png', '012220241533423565ae8ad6e3a0a.png', '2024-01-22', 0, 0, NULL, '4,2,3,1,5,6,8,7,9,10', '5,4,3,2,1,6,7,8,10,9', 'Regular', 'No', '2024-01-22 10:03:42', '2024-01-30 06:04:47', NULL),
(224, '0123202405240965af4d796575a.jpeg', '+971', '9761573380', 'Kiki', 'Liking', 'kuku@yopmail.com', '$2y$10$oinS27cLm4aweMEz86k4RubN//HuZGaXYD1dt/Lk6l6p5w3.dcvFm', 'Abu Dhabi', 'American Samoa', '2008-01-23', 'Male', 'ZTSF15861XcR', NULL, 'Ios', '806a7ee35d2eb52a7bd7776812522de3dd2dd0843fafea4506fe0bfa2eca68072ad2ece4e3efea773ea385b8e3debb26d374b1055a1d8d0418fb86ec71325d4ab9bc317022eea335ecc5ae0a9a94f832', NULL, 'AIufASjkjzZYKPnZYXAHhIEVciFwDzw5ez4WrEMrH9aH3V1OTR7Obdzk00BrSlOs', '0', '0', NULL, NULL, 'Active', 76620358470, 'Silver', '1000', NULL, '012320240524094765af4d79f0f60.png', '012320240524097965af4d79f1203.png', '2024-01-23', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-22 23:54:09', '2024-01-23 00:18:16', NULL),
(225, NULL, '+91', '98743523230', 'aman', 'bansal', 'amandeftsoft689@gmail.com', '$2y$10$TOAClGW.69dp80TPAIOcYev08wfy1jycaFpyWYVSVEHvU4RHK5z3m', 'Abu Dhabi', 'Afghanistan', '2005-12-12', 'Male', 'Pxnw6589dinD', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, 'fznvhCDOo7M4OiPdhXQeQlYxsDszI6QpsA3WXpLcwTsFWrA4PY69KTqNDwmV0CQr', '0', '0', NULL, NULL, 'Active', 83472795670, 'Silver', '1000', NULL, NULL, NULL, '2024-01-24', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-24 00:05:33', '2024-01-24 00:05:33', NULL),
(226, NULL, '+91', '9874352320', 'aman', 'bansal', 'amandeftsoft68945@gmail.com', '$2y$10$xX12EZomQl1m2oGh1.Fb5.kRdNAXYEnucEv2O2hX0E/vUKTFcDFi6', 'Abu Dhabi', 'Afghanistan', '2005-12-12', 'Male', 'DTAZ7518FtXv', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, 'xQAeIAsiw8LrncqqcoGDfEGBUVn1Pt7iZIpD4OkcJIt5ubshYIF11GrpXN2aztyv', '0', '0', NULL, NULL, 'Active', 63397288888, 'Silver', '1000', NULL, NULL, NULL, '2024-01-24', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-24 00:07:29', '2024-01-24 00:07:29', NULL),
(227, NULL, '+91', '9874352324', 'aman', 'bansal', 'amandeftsoft6@gmail.com', '$2y$10$5hgjSZyriswG4iqxfCBNT.uJCSGgZqvt.hgsz0v3PV//2Gf24TPpG', 'Abu Dhabi', 'Afghanistan', '2005-12-12', 'Male', 'TiU29912cQOG', NULL, 'Ios', '2fa6c7df034d29afc8bc3fd12024bf2441c13d125ee02c84d88c8bd6a0d0179c', NULL, '8NP8OAGyzVCKxyqyVjgB3W4PD5rMST62avKNfrmssMBe3qCagqzJtn94D3G5CROb', '0', '0', NULL, NULL, 'Active', 80764617847, 'Silver', '1000', NULL, NULL, NULL, '2024-01-24', 0, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-24 00:08:49', '2024-01-24 00:08:49', NULL),
(228, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0129202405184765b73537a62af.jpg): failed to open stream: Permission denied', '+91', '62303624999', 'Adityaaa', 'Rajput', 'adityarajput691@gmail.com', '$2y$10$EOqJgjNh8wIvUU2jk/UjzOoHwP.tfqhzt5XVLrLZCkrkn0SxQz5BC', 'Dubai', 'United States of America', '2004-04-26', 'Male', 'Eo5t5690SBuF', NULL, 'Ios', '9951e73f6a6c8b691886610ebff84518d2479f669e9973542c9e44e372fedf79', NULL, 'eMbuYQY586HBbe41vzqgj3rSjA4qWzgZpUf2ex0O3MYwD2Ac2gJmmsDbpQsnbdux', '0', '0', NULL, NULL, 'Active', 46602048681, 'Silver', '1000', NULL, '012420240541128065b0a2f8971f7.png', '012420240541124065b0a2f8973d0.png', '2024-01-24', 0, 0, NULL, '1,2,4', '2,3,4,10', 'Occasional', 'Regular', '2024-01-24 00:11:12', '2024-01-31 06:12:20', NULL),
(229, NULL, '+971', '7876868989', 'Hfjffj', 'Hfjjfjf', 'adityvggsauzgguzqg@yopmail.com', '$2y$10$ABgrW/utrdklVVk9Hah5r.Q3lihwTus6xmxPc5xvElRFGrSGG5OCW', 'Ajman', 'Algeria', '2008-01-25', 'Male', 'o5a786367NDB', NULL, 'None', NULL, NULL, 'KAPIyVFdPGw56BOSllUzMejZx8yRz3oSeEnsGsw7F3myf95BU5h2mQcY79bXeurT', '0', '0', NULL, NULL, 'Active', 76440902914, 'Silver', '1000', NULL, '012520240659091665b206bd002d1.png', '012520240659093865b206bd004b4.png', '2024-01-25', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-25 01:29:08', '2024-01-25 01:48:45', NULL),
(230, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0129202408254565b7610982dbe.jpeg): failed to open stream: Permission denied', '+91', '9817820410', 'High', 'Fghfg', 'hfghfg@yopmail.com', '$2y$10$wc0gVvLalq2vdg.4vQqVg.M1zLVMSyMVBEFt9rKDe1.hav3AJniHK', 'Abu Dhabi', 'Andorra', '2008-01-29', 'Male', 'fyWB5091dPAu', NULL, 'Ios', '8025ca50145a268eca3f0e9b2f0d22efa0a1245f55caf670ab1239fc4ceb7e5e142c4e5c2ebf65c5bd7ff5213ff01fe1da3fd555ce057053976a5c7356f88024f51f1b17bcce1de9a556e210b0ca7f89', NULL, 'CqNwaSLt9rB9FLxnfSjHmcKCy7GMG6BgQwW8HOtLcIez8uvMm27RbDkFZ2HgEmVG', '0', '0', NULL, NULL, 'Active', 93194612846, 'Silver', '1000', NULL, '012920240825464765b7610a1f490.png', '012920240825467765b7610a2a9d1.png', '2024-01-29', 0, 0, NULL, '1,2', '1', 'No', 'No', '2024-01-29 02:55:45', '2024-01-29 02:56:09', NULL),
(231, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0129202413055265b7a2b00a318.jpeg): failed to open stream: Permission denied', '+91', '9814525632', 'Jelly', 'Jely', 'jelly@yopmail.com', '$2y$10$HZKpnbqsyYzYFBTuysAgquQkUkjOOuYix3qbbVwIz/WAEqsDQ.2ra', 'Abu Dhabi', 'Afghanistan', '2008-01-29', 'Male', 'mMH06773YJhd', NULL, 'None', NULL, NULL, 'HelySH3Kfo0HBYKEPXQycexIbKi5KcTHFkqXeHjaODtajUXUh9ADBT5m2StAQu1M', '0', '0', NULL, NULL, 'Active', 91120510481, 'Silver', '1000', NULL, '012920241305526165b7a2b094216.png', '012920241305524365b7a2b09447e.png', '2024-01-29', 0, 0, NULL, '1,2', '1,2', 'No', 'No', '2024-01-29 07:35:52', '2024-01-29 07:42:53', NULL),
(232, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0129202413135465b7a4927a948.jpeg): failed to open stream: Permission denied', '+91', '9847526352', 'Jonny', 'Ffff', 'jjff@yopmail.com', '$2y$10$ty3AG2mKiJIJDTMO/7SrM.LeFwaOCwdZzZZD5gi7apX8hVBHD395q', 'Abu Dhabi', 'Argentina', '1995-01-29', 'Male', '8aXm3831z8gm', NULL, 'None', NULL, NULL, 'aOYafElpvksEWN6ZOPuAuygCaRMUiEebGUfWZsadBg02EOmNsdlXGBWciMY09x1A', '0', '0', NULL, NULL, 'Active', 46270584321, 'Silver', '1000', NULL, '012920241313549765b7a492d1f34.png', '012920241313545165b7a492d21da.png', '2024-01-29', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-29 07:43:54', '2024-01-29 07:52:42', NULL),
(233, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0129202413234865b7a6e47401e.jpeg): failed to open stream: Permission denied', '+91', '9855223366', 'Monu', 'Dsfsd', 'dfsdf@yopmail.com', '$2y$10$LkgFyDier635tRyvpcrX8Obc7SxTlMTbUTBtLDuV1IQm9/.JL3AQq', 'Abu Dhabi', 'Antigua & Barbuda', '2003-01-29', 'Male', '8ptE6409SYPh', NULL, 'Ios', '804d946fd3627a9aba7a1f607c832203f55b0797c7a9dcf978fdb4b8c4039079745bebcabc5cd2026454f5f4c258704645cc6e216ab18171d3f57b335a22b45d9a081ee34300b7577dce860a8285c039', NULL, 'xA5zpkKMVDlrwLvSzWpWS0nvZxM7DqRBpHEDGL5nIsZ7YT26T06baEKMBtzsy87p', '0', '0', NULL, NULL, 'Active', 24907382600, 'Silver', '1000', NULL, '012920241323488765b7a6e4c635f.png', '012920241323482165b7a6e4c660c.png', '2024-01-29', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-29 07:53:48', '2024-01-29 07:53:48', NULL),
(234, '0201202412155265bb8b787258f.png', '+61', '8449573022', 'iostest', 'iOS', 'ios@yopmail.com', '$2y$10$ABibMu4NivmYzUhTLTNePO53cNqeHX/EdZL6qW89fxo74HwmfYo3m', 'Abu Dhabi', 'Albania', '1998-01-29', 'Male', 'OUmP8487JITn', NULL, 'Ios', 'df9c9abae2958c7da1e49138a8f664a7ab81b2aa65658c1a202c0c40c0fe24c2', NULL, 'n6UbciYPzBjsszk4Gh88oYiAHd3YEIo1abY1pLo999KFdYQj50SjnazKiGBl94op', '0', '0', NULL, NULL, 'Active', 30339954230, 'Silver', '1000', NULL, '013020240455266465b8813eeb146.png', '013020240455269965b8813eeb384.png', '2024-01-30', 0, 0, NULL, '', '', 'No', 'No', '2024-01-29 23:25:26', '2024-02-01 06:45:54', NULL),
(235, 'file_put_contents(/var/www/html/capital_loyalty_admin/storage/app/public/users/0130202406081665b892506b1b3.jpeg): failed to open stream: Permission denied', '+971', '8454545154', 'Gyyyy', 'Hshs', 'gege@yopmail.com', '$2y$10$Dro866fAYkw5BYCT0oRsYOpenjmswKDm/XkaQCO8X2EK784Wje0AC', 'Abu Dhabi', 'Albania', '2008-01-29', 'Male', 'nydL646930bS', NULL, 'None', NULL, NULL, 'ATYCwR35AFjBOx1II5AtiUOwfkXljncSOTvxiIfbhhvLFPgyCLfcQyvJH5kUR9um', '0', '0', NULL, NULL, 'Active', 55143854578, 'Silver', '1000', NULL, '013020240608162265b89250e4873.png', '013020240608165065b89250e4a3a.png', '2024-01-30', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-30 00:38:16', '2024-01-30 01:38:40', NULL),
(236, NULL, '+971', '67946464655', 'Bshdj', 'Hdhdhdh', 'mohshebilephone15515@gmail.com', '$2y$10$EK2FNX0zzuq476tQK9kEbO8izR8Rzmo3ddPfBmh/RiMmMM51l6Bt.', 'Ajman', 'Albania', '2008-01-30', 'Male', 'R6Oz2411cECe', NULL, 'None', NULL, NULL, 'hli5SaUfivEx1WGMfuTNQz7CK9wEyyP5y0tqeu1u8CSIM98Fjw1u6md1ZGNAjo9q', '0', '0', NULL, NULL, 'Active', 44893006700, 'Silver', '1000', NULL, '013020241135399765b8df0b066f4.png', '013020241135395465b8df0b10c1a.png', '2024-01-30', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-30 06:05:38', '2024-01-30 06:09:13', NULL),
(237, '0130202413190665b8f74ae58fd.jpg', '+971', '9483455464', 'Uagiwgx', 'Wxufww', 'mobilepxgshone15515@gmail.com', '$2y$10$cX0ApQYfE.n7DuvS0jN.julCLHClLIdxado6m.8JiLye3MiW.DD9q', 'Dubai', 'Albania', '2008-01-30', 'Male', '7vqM2198ru4J', NULL, 'None', NULL, NULL, 'JqevYUf57tGQ0YyjpRqS04Y57m3oxGw2sZ8zH1nVmKXFLXQB4dHQp39fd6DQdeVY', '0', '0', NULL, NULL, 'Active', 39531708919, 'Silver', '1000', NULL, '013020241139581865b8e00e90ec0.png', '013020241139582365b8e00e9119a.png', '2024-01-30', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-30 06:09:58', '2024-01-30 07:49:19', NULL),
(238, NULL, '+971', '989768659865', 'Hzhxhdg', 'Dyudhs', 'mobhsheilephone15515@gmail.com', '$2y$10$T9KUxhMl1ET5Jg7Pj3wPFuOLq/OePuHQMBCjNIdo.GdR7C8g7KPb2', 'Ajman', 'Albania', '2008-01-30', 'Male', 'mGZq2452acMh', NULL, 'Android', 'fE1nsHTxRLCTPi2r5ywd7j:APA91bGP6bw8bgpQn7tJLoKvXwuOCL_LCzbhHpilOsja_VU_GWv95AcuSorhsGU3E1tAbDkTz95p6dyWSSCRnwTO-XdSsctGe47GADwJb_W_AK4L_o44QEuOFfsPhCztY1ulE5T9iUCt', NULL, '99SHMvOTWwps2Xs8eciLazBMKr4nkJHeM7KmI9pcqCuCbFyOqeiTcB6qdV89FzQA', '0', '0', NULL, NULL, 'Active', 58648940619, 'Silver', '1000', NULL, '013020241320079765b8f787799b4.png', '013020241320072765b8f78779ba9.png', '2024-01-30', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-30 07:50:07', '2024-01-30 07:50:07', NULL),
(239, '0130202414271765b9074542eeb.jpeg', '+1268', '9761573380', 'Sbjd', 'Jdjdj', 'hdjd@yopmail.com', '$2y$10$Tn70BLEf20DaIBK2CkCATOlRRfn6n9uVJ6mFdYnxdOpmizabuWJmW', 'Abu Dhabi', 'Algeria', '2008-01-30', 'Male', 'etVz4737BhS9', NULL, 'Ios', 'bb1e6975ecf1eea10a74ea1063c8530e16986b41c5bf5cabf83a50de12cb1fe8', NULL, 'Uq3vU2Vk0SfzcE6gRyTXGU7wLbLg0qxhi97ibnVjyhhSPLxQysupG83u2sJQGimL', '0', '0', NULL, NULL, 'Active', 76106090735, 'Silver', '1000', NULL, '013020241427171765b90745b36e4.png', '013020241427176565b90745b3969.png', '2024-01-30', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-30 08:57:17', '2024-01-30 08:57:17', NULL),
(240, '0130202415073165b910b32eb74.jpeg', '+91', '7787983455', 'Deb', 'Razz', 'raz@yopmail.com', '$2y$10$dds..ksVdPCs3zVoGHehc.zM0dVrVbyOO7qkUcU.ArhsyuIR519L2', 'Abu Dhabi', 'Algeria', '1970-01-30', 'Male', 'Ll7P7361Cpxq', NULL, 'Ios', '84a146269689bd6cf14b9779cce25a077742c4503b38db380fee4bafdcc97572', NULL, NULL, '0', '1', NULL, NULL, 'Active', 51753191264, 'Silver', '1000', NULL, '013020241507318665b910b3822c7.png', '013020241507316465b910b38255c.png', '2024-01-30', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-30 09:37:31', '2024-01-30 09:37:56', NULL),
(241, '0130202415110465b91188c8ebc.jpeg', '+91', '9090909090', 'Amit', 'Kumar', 'ap@yopmail.com', '$2y$10$v6rpTr1baVSOn58i2w9onuY20bPoLqJZAt9H66hxQoh/sGV8Are/W', 'Abu Dhabi', 'Albania', '2008-01-30', 'Male', '2f8y87609WNz', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 43528787664, 'Silver', '1000', NULL, '013020241511057865b911896cd79.png', '013020241511056365b911896cfe1.png', '2024-01-30', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-30 09:41:04', '2024-01-30 10:03:04', NULL),
(242, '0130202415365565b917977a26d.png', '+91', '2121212120', 'Candy', 'Crush☺️', 'ck@yopmail.com', '$2y$10$YdBxAGFCsQ.Ow5F/bPR8U.d5Iywne12lrD7Jm2/UA6WzjAckuxKmq', 'Abu Dhabi', 'Albania', '1998-01-30', 'Male', 'Kxs08006iy9x', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 92796658981, 'Silver', '1000', NULL, '013020241535315165b91743069b6.png', '013020241535316765b9174306c37.png', '2024-01-30', 0, 0, NULL, '1,2,3,4,5,6,8,10,9,7', '1,2,3,4,5,6,7,8,9,10', 'Regular', 'No', '2024-01-30 10:05:30', '2024-01-30 23:31:10', NULL),
(243, '0131202405581965b9e17b0aeb2.png', '+971', '887887887', 'Kartikkkkkkk', 'sharma', 'j@yopmail.com', '$2y$10$aurz.m8G.SiQXW6m4/eJXuj2bUb6GHoLbGZ9WekTvuutJ.lSeRxYq', 'Dubai', 'United States of America', '2008-01-31', 'Female', 'J9uY6779q644', NULL, 'Android', 'd0GZM_SDQBWvwFq4HBrUbW:APA91bHx0Nylc-8d-7Xg8EaLGBASylBHinDUs3Mc4bfk9kMAbQ52Rc-UI5kj4bsLCh8Tz6q1DgLWFA1IbOpQZZkYhW2aJLFYpZdYM-igPnQJyoGPploR7uDHss8kIkRlkeSBtCeH1IOr', NULL, NULL, '0', '1', NULL, NULL, 'Active', 23516474784, 'Silver', '1000', NULL, '013120240514331965b9d739c2cf9.png', '013120240514332365b9d739c2ed2.png', '2024-01-31', 0, 0, NULL, '1,2,3,4', '1,2,3,4,5,6,7,8,9,10', 'Occasional', 'No', '2024-01-30 23:44:33', '2024-01-31 01:17:45', NULL);
INSERT INTO `users` (`id`, `image`, `country_code`, `mobile_number`, `first_name`, `last_name`, `email`, `password`, `city_of_residence`, `nationality`, `dob`, `gender`, `self_reference_code`, `reference_code`, `device_type`, `device_token`, `reset_password_token`, `verify_email_token`, `is_block`, `is_verify`, `refresh_token`, `remember_token`, `is_active`, `customer_id`, `customer_tier`, `wallet_cash`, `reference_by`, `bar_code`, `qr_code`, `tier_update_date`, `refer_amount`, `refer_amount_used`, `request_change_email`, `like_list`, `music_list`, `do_you_drink`, `do_you_smoke`, `created_at`, `updated_at`, `deleted_at`) VALUES
(244, '0131202405241765b9d98189d86.jpg', '+971', '582866828683', 'Gtsfisitstis', 'Gdgkzkgzgkzfjs', 'zs@yopmail.com', '$2y$10$TLP0I6xbWv3Hhe6u7oatF.a08qQMHXllrSTDfyhuGR1MdY3thRasq', 'Sharjah', 'Albania', '2008-01-31', 'Female', 'zXJS34893HsO', NULL, 'None', NULL, NULL, 'LnXtZV3eTkVeyMTdgTxz8NT03SIVVUyhcJU2ZorLLajI9CWazzI5VT4a0YbEWiBy', '0', '0', NULL, NULL, 'Active', 78682147860, 'Silver', '1000', NULL, '013120240524176365b9d981dd182.png', '013120240524174365b9d981dd403.png', '2024-01-31', 0, 0, NULL, '1,2,4,3,5,6,10,9', '1,2,4,3,5,6', 'No', 'Regular', '2024-01-30 23:54:17', '2024-01-31 00:10:48', NULL),
(245, '0131202405542765b9e093dcc09.jpg', '+971', '9859393093', 'Nihal', 'Sharma', 'nihal1@yopmail.com', '$2y$10$Q/tz3TsHThkUaiGccG1de.8OSd8eCAzCLnimK/LBSaP/8jh3rmI7m', 'Abu Dhabi', 'Afghanistan', '2008-01-31', 'Male', 'jonx2958OZbg', NULL, 'None', NULL, NULL, '9TILWl97aYDImYOMwrJYbfQxQSb5mmNPCOPa3OrDXtyIQue8d5ViRcV18v5loqGp', '0', '0', NULL, NULL, 'Active', 97298729702, 'Silver', '1000', NULL, '013120240529187765b9daae2a6e5.png', '013120240529182365b9daae2a9cc.png', '2024-01-31', 0, 0, NULL, '1,2,3,4,5,6', '', 'Regular', 'Occasional', '2024-01-30 23:59:17', '2024-02-01 00:08:58', NULL),
(246, '0131202405420565b9ddad0ee69.png', '+971', '879907070', 'Aman', 'ram', 'gh@yopmail.com', '$2y$10$DYXe1fIqUAyO1o1UsMxTsurJSB5BON6VlYQP573hHAoYg5mwBmSUC', 'Fujairah', 'United States of America', '2008-01-26', 'Female', 'c4od6729aKUN', NULL, 'None', NULL, NULL, 'frR5mWeLWAtQtdFoBWjJaBjlUY4JGIY1zMYIBpAxzplERAwGCcvcJNCpGgF57IXD', '0', '0', NULL, NULL, 'Active', 84120691881, 'Silver', '1000', NULL, '013120240542054665b9ddadc2296.png', '013120240542056065b9ddadc24fe.png', '2024-01-31', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,3,4,2,5,6,7,8,9,10', 'Regular', 'Regular', '2024-01-31 00:12:05', '2024-01-31 00:57:49', NULL),
(247, NULL, '+971', '57686578368768', 'Gsysitstokvegowgosyoagiets', 'Igsitsktstosoeitew', 'feg@yopmail.com', '$2y$10$twgjCfYJCJVXp355kqTHP.WVnA2aGRtSM3XPgXytGopM/AFHGVgd.', 'Fujairah', 'United States of America', '2008-01-17', 'Other', '7ieU4005MCxk', NULL, 'None', NULL, NULL, 'M4uekgZDIt4U5QiBmeO8W4UMn7N7IaPeIpR3lZlGw4RYLdvlZkqRyeVDcwazer4H', '0', '0', NULL, NULL, 'Active', 70413470316, 'Silver', '1000', NULL, '013120240628461165b9e89e4d61c.png', '013120240628461765b9e89e5072b.png', '2024-01-31', 0, 0, NULL, '1,2,4,3,5,6,8,7,9,10', '', 'Regular', 'Regular', '2024-01-31 00:58:46', '2024-01-31 01:02:05', NULL),
(248, '0131202406332265b9e9b2eb6b4.png', '+971', '64646565665', 'Hshdhehehehehh', 'Ieuehehdhehhe', 'ik@yopmail.com', '$2y$10$XN22HEDmNo1be3JYQJ0gGeQti.Qjulmy/FRu3fzY5qquMlu.hyiki', 'Ajman', 'United States of America', '2008-01-31', 'Other', 'xf8q8861N1S6', NULL, 'None', NULL, NULL, 'XOtCFOdclpkuN1oUQM5k3GjK1jc5j0zHl6IBzphcsI9kIMQPNu6fOsBizhWXWOPt', '0', '0', NULL, NULL, 'Active', 60270298990, 'Silver', '1000', NULL, '013120240633237765b9e9b3ac284.png', '013120240633232465b9e9b3ac508.png', '2024-01-31', 0, 0, NULL, '1,2,4,3,5,6,7', '1,2,4,3,6', 'Regular', 'Occasional', '2024-01-31 01:03:23', '2024-01-31 01:16:38', NULL),
(249, NULL, '+971', '5588663443728', 'fouzy', 'fouzy', 'ma@yopmail.com', '$2y$10$drEJpvRQyahS1b59DVLIVuTnKSJO7lXr9xArP/YTj3D2/9Soh2Lzm', 'Ajman', 'Algeria', '2008-01-31', 'Female', 'Cu5x4941lQYH', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 43136274514, 'Silver', '1000', NULL, '013120240647325265b9ed041aa5a.png', '013120240647324865b9ed041ad0e.png', '2024-01-31', 0, 0, NULL, '1,2,4,3,6,5,7,8,10,9', '1,2,4,3,6,5,8,7,10,9', 'No', 'Regular', '2024-01-31 01:17:31', '2024-01-31 01:23:16', NULL),
(250, NULL, '+971', '9896857575772', 'fouzy', 'fouzy', 'jgi@yopmail.com', '$2y$10$s8/MTiVF5j9V1FL7vMeC/ehMDtVlEEjzLZ0hHq3.m8NO5mPdHuvre', 'Dubai', 'Algeria', '2008-01-31', 'Female', 'QnyB4075rzL2', NULL, 'None', NULL, NULL, '5ivqvElPCQfLOfDqZOPTRzNQBvGx9bJ2YKG0124PKQKdchoukYSTe5d4OnWbtMUX', '0', '0', NULL, NULL, 'Active', 57179402961, 'Silver', '1000', NULL, '013120240654064365b9ee8e8aa33.png', '013120240654063465b9ee8e8ad19.png', '2024-01-31', 0, 0, NULL, '1,2,4,3,6,5,10,9,7,8', '1,2,4,3,5,6,8,7,9,10', 'Regular', 'Occasional', '2024-01-31 01:24:06', '2024-01-31 07:12:54', NULL),
(251, '0131202407404465b9f97ceb925.jpeg', '+54', '8449573022', 'New', 'Test', 'newtest@yopmail.com', '$2y$10$KwDavE4ursPN2JSjeWqelecsIWNXINAq55ze6ikwIZqfBfUMFdMqy', 'Abu Dhabi', 'Antarctica', '1993-01-31', 'Male', 'a7GC8473rCbI', NULL, 'None', NULL, NULL, 'B7pVmk02Y7SciIYdrP0DnhinAdxxwxIOKIp8iaaTVqL8lEJu9ce5ii4Og6zZ4cjl', '0', '0', NULL, NULL, 'Active', 20547812918, 'Silver', '1000', NULL, '013120240740457965b9f97d46f7c.png', '013120240740458965b9f97d47203.png', '2024-01-31', 0, 0, NULL, '1,2,4,3,7,5,6,8', '1,2,3,4,5,6,8,9,7', 'No', 'No', '2024-01-31 02:10:45', '2024-01-31 03:23:08', NULL),
(252, NULL, '+971', '6468916896498', 'Iwyzyyiwz', 'Qzjwguzwzz', 'mobilesvdvphone15515@gmail.com', '$2y$10$bC4u8szv9Mu335UEJ/6Jl.ckLZIYWMJidiMurOnx8kWNMen2au0XS', 'Ajman', 'Algeria', '2008-01-31', 'Male', 'Biw75737DSph', NULL, 'None', NULL, NULL, 'gqylWHIB0ChvWIUQU4zhbKYvWC70RzZW9eZpPK6woRQFEsv9qRmD2MIkRhQN6Oow', '0', '0', NULL, NULL, 'Active', 98711517572, 'Silver', '1000', NULL, '013120240953364865ba18a02df4c.png', '013120240953366365ba18a02e208.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-31 04:23:35', '2024-01-31 04:25:04', NULL),
(253, NULL, '+971', '93766751678', 'Avigiw', 'Zwizggiwz', 'mobilezggaphone15515@gmail.com', '$2y$10$nm3tU1ThW5ZekHKT1gedb.u1b/HbbTw0YDpFF2G3g2do7bh5ydLM.', 'Ajman', 'Albania', '2008-01-31', 'Male', 'Lt071030z6Kk', NULL, 'None', NULL, NULL, 'KNKph8ri6zbAZC9yyI7PfI9jKmxb3WwKF7IDfN9LVRvnesRiIfnXoafMXiRK0P20', '0', '0', NULL, NULL, 'Active', 46964170359, 'Silver', '1000', NULL, '013120240955435965ba191f334bf.png', '013120240955436765ba191f33779.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'Regular', 'No', '2024-01-31 04:25:42', '2024-01-31 04:28:59', NULL),
(254, NULL, '+971', '46086488648', 'Aiggaia', 'Sjvaigai', 'mobilepzhzhhone15515@gmail.com', '$2y$10$4NKZFuE/DgqjT6G4jgY5JOL/DBou2oJIB2oQ4zfl.2fUYEwGdbwXS', 'Ajman', 'Albania', '2008-01-31', 'Female', 'YtzA7735Dwji', NULL, 'None', NULL, NULL, 'W3w9vYi7TdFp1GyqZgSPyZsgK4ltgZtwIqOlEzF3LsrLExx3Kvc3zKCynaI6TM3A', '0', '0', NULL, NULL, 'Active', 36024530791, 'Silver', '1000', NULL, '013120240959476665ba1a13af944.png', '013120240959475565ba1a13afb51.png', '2024-01-31', 0, 0, NULL, '2', '2', 'Regular', 'No', '2024-01-31 04:29:47', '2024-02-01 02:35:14', NULL),
(255, '0131202410543465ba26eaac106.jpeg', '+56', '8449573022', 'Dad', 'Dad', 'dfs@yopmail.com', '$2y$10$h6ANg3SAHbot.BCBXxbZ1.pf.vr1JO/.aH11JR98PpZ5kksR5CzeG', 'Abu Dhabi', 'Anguilla', '2008-01-31', 'Male', 'OUkI9508DIzI', NULL, 'None', NULL, NULL, 'eQHiYKkZGgOfMbiFNgGZDCfj24epBd4rATL3zVDEnhUbgSwqMs5yq8sifEPw9pKh', '0', '0', NULL, NULL, 'Active', 39161167996, 'Silver', '1000', NULL, '013120241054359065ba26eb087c9.png', '013120241054354265ba26eb08a71.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-31 05:24:34', '2024-01-31 06:21:52', NULL),
(256, NULL, '+971', '545464548', 'Gsydyd', 'Ueueueh', 'mohebilephone15515@gmail.com', '$2y$10$.583bIfN5ExcoPFWyBXpQeJVA8uBuc.3GOY6omtTTw6RsjFkUE0xC', 'Abu Dhabi', 'Algeria', '2008-01-31', 'Male', 'vV7C50771lpl', NULL, 'Android', 'fqeJFeV_TCaez7UazCGV7X:APA91bFqKj14GxPzKD8um38NCc4XJJuP8P-qt7r47OR4aNlxePrYpmkoh9gfX9K5i5FSeIusXulvIypjpQN78fEZdQgE-J4xcPMt5HZdom-EUqzsEJZoKyAb-cNBv304xes7cMDUabds', NULL, '0EXcD2n2zPAaC7znILnhAqSnMGAAe1vPxJIVpwDyo6xI24as3Xxa22nD6ftTmK5G', '0', '0', NULL, NULL, 'Active', 44548473876, 'Silver', '1000', NULL, '013120241243399265ba407b81a1b.png', '013120241243392965ba407b81cf1.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-31 07:13:39', '2024-01-31 07:13:39', NULL),
(257, NULL, '+971', '55668558885', 'Tyyytt', 'xnxkxoxkxksk', 'harmfffantesting9@gmail.com', '$2y$10$W82prkg3cJU0whB1msR9keFN02oO4fuhnpnHHaxMvQNRa8E7HUT2q', 'Abu Dhabi', 'Albania', '2008-01-31', 'Male', 'aK7p3657T001', NULL, 'Android', 'cptbJyJURbGqva030lXB8Q:APA91bFdUpPuY-BnTp0HASicrtQkQwbryKIbs8l7skcyLOURncbyRqL2TBOz5zCNblN1PJEQhH2l6_VPXK3sPqu-dOuM7Ysb3zqbELp5G9TinZG51pETNq2loO-zIDbjxLm6yJyg3nrQ', NULL, 'g9qt8l4j7P0WGDly6WEv6468wD6TWs73F1amP78uQQKogPEcYxChLmzFAk8ZcZtk', '0', '0', NULL, NULL, 'Active', 60432641689, 'Silver', '1000', NULL, '013120241244452665ba40bde9b40.png', '013120241244452365ba40bde9e68.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-31 07:14:45', '2024-01-31 07:20:20', NULL),
(258, '0131202412495465ba41f23b418.jpeg', '+1441', '8449573022', 'Bhulna', 'Hdhd', 'lbh@yopmail.com', '$2y$10$/sR.gTtO1v.3ougJc2zGsu42QgkRavfaUTp1kNy6Yd.uA9my1E10W', 'Abu Dhabi', 'Afghanistan', '2008-01-31', 'Male', '0tBk1171MkFi', NULL, 'Ios', '66b9f200545f313d45645d4b1e5fba3628b8dfb1a13542a660c1cd9630a47581', NULL, 'SUCThgfU96hOYcOS0dOj9Zqmb7NEWMOsdzU0gACLqlJslAoxxfupx8EpyVEdb6Xz', '0', '0', NULL, NULL, 'Active', 70629642344, 'Silver', '1000', NULL, '013120241249546065ba41f28c08c.png', '013120241249546765ba41f28c307.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-31 07:19:54', '2024-01-31 07:19:54', NULL),
(259, '0131202412515165ba4267ca0f5.jpeg', '+856', '8449573022', 'iOS', 'iOS', 'ioskkkk@yopmail.com', '$2y$10$DSqf0WAY3cLV4HFVOOYmgOSn8LwoFGcaH3WTzhAeiSu9gXmtTqdxm', 'Abu Dhabi', 'Albania', '2004-01-31', 'Male', 'wR5G8979UGhu', NULL, 'Ios', '66b9f200545f313d45645d4b1e5fba3628b8dfb1a13542a660c1cd9630a47581', NULL, 'k8YmXGl2GV7k7R1Wt5Rp0T1VgZWQ3iARl3q22yc884lc2iNCUKSa4PA5JCqSzjZU', '0', '0', NULL, NULL, 'Active', 16553702550, 'Silver', '1000', NULL, '013120241251528065ba4268946a1.png', '013120241251523965ba42689499a.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-01-31 07:21:52', '2024-01-31 07:21:52', NULL),
(260, '0131202412532165ba42c17c862.jpeg', '+855', '85646767645', 'Nsnsn', 'Shah', 'shhs@yopmail.com', '$2y$10$FEqYzYF753gnzYVF7MrKWeRV5TwvhnxSyv98/W/p9PCHuYOOj/avm', 'Abu Dhabi', 'Afghanistan', '2000-01-31', 'Male', 'OaMK3862jizU', NULL, 'Ios', '66b9f200545f313d45645d4b1e5fba3628b8dfb1a13542a660c1cd9630a47581', NULL, 'nSBPwBo1cLx0HTzouvJ29gXn9v7dY0gThzULA5cSlWSXvqM8AC2k0nMDXVr0uYmx', '0', '0', NULL, NULL, 'Active', 21630022651, 'Silver', '1000', NULL, '013120241253218665ba42c1e4235.png', '013120241253213765ba42c1e44cb.png', '2024-01-31', 0, 0, NULL, '1,2,3,4,5,6', '1,4,2,3,6', 'No', 'No', '2024-01-31 07:23:21', '2024-01-31 07:23:40', NULL),
(261, '0131202413182665ba48a207b91.png', '+91', '9045728974', 'John', 'Cena', 'em@yopmail.com', '$2y$10$Bt.7jGEHbjZqa7AeW8ZXuuALJVndAg98xsvozhC1MYgRYQJWlUOhC', 'Abu Dhabi', 'Algeria', '2008-01-31', 'Male', 'Ra0l2000Pcvx', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 71895874987, 'Silver', '1000', NULL, '013120241306179665ba45c984979.png', '013120241306178165ba45c984b9f.png', '2024-01-31', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,6,5,7,8,9,10', 'No', 'No', '2024-01-31 07:36:17', '2024-01-31 08:46:17', NULL),
(262, '0201202410551265bb7890ed609.png', '+91', '6371453209', 'Aka', 'Deb', 'aka@yopmail.com', '$2y$10$5KYPGvLKZsxDnN6C8hj2u.ZLb7nl1svTuern8IB56c00swncQhi8O', 'Dubai', 'India', '1948-01-31', 'Male', 'Edd062264i5q', NULL, 'Ios', '809a4b4c63b2c6618807f40b26c459971814f7053b17d897b03c284672eaf8a25cdc9a78482a3cc703c18be2b26d4752bfe4467719f783a41ad0a61fa9168c5c44a94c381a3da61cc037345d525e585a', NULL, NULL, '0', '1', NULL, NULL, 'Active', 44949182262, 'Silver', '1000', NULL, '013120241306334065ba45d9c3cf1.png', '013120241306333165ba45d9c3fd7.png', '2024-01-31', 0, 0, NULL, NULL, NULL, 'Occasional', 'Occasional', '2024-01-31 07:36:33', '2024-02-01 07:54:27', NULL),
(263, '0131202413451765ba4eede538a.jpeg', '+91', '3232323232', 'Rocckyyyy', 'Sharma', 'me@yomail.com', '$2y$10$eBycYqUZTK/ghMRw9bG/oOApB6tDYMyz.idXKzoCVY2fI6nNY4Yp6', 'Abu Dhabi', 'Aruba', '2008-01-31', 'Male', 'SCja7184leJ4', NULL, 'None', NULL, NULL, 'cxvg9tucWFRo6S5j2zDjX7zzBeKIpDMSiFUkUrPSFH5zJoYvnIHL7AQbGxDGCTYQ', '0', '0', NULL, NULL, 'Active', 42948221826, 'Silver', '1000', NULL, '013120241345189965ba4eee64d3e.png', '013120241345189765ba4eee64f00.png', '2024-01-31', 0, 0, NULL, '', '', 'No', 'No', '2024-01-31 08:15:18', '2024-01-31 08:30:59', NULL),
(264, '0131202414031965ba53277b025.jpeg', '+91', '4141414141', 'Brock', 'Lesnar', 'bl@yopmail.com', '$2y$10$elFvVHaGi2xTN18j/8dAqOxjnozZwvDLZAjDc1Pcwp9NApl0DJ5/y', 'Abu Dhabi', 'American Samoa', '2008-01-31', 'Male', '0Jrr7349KVyS', NULL, 'Ios', '18e577ff9a48ab1c9ad58fc459edae31ad5dd6c533aaa5b393cbacf65d380a85', NULL, NULL, '0', '1', NULL, NULL, 'Active', 87417506963, 'Silver', '1000', NULL, '013120241403196965ba5327eba79.png', '013120241403193265ba5327ebdbf.png', '2024-01-31', 0, 0, NULL, '1,2,3,4,6,5,7,8,9,10', '1,2,3,4,5,6,7,8,9,10', 'No', 'No', '2024-01-31 08:33:19', '2024-01-31 09:01:16', NULL),
(265, '0131202414375065ba5b3ee2bee.png', '+91', '3939393939', 'Prince', 'Gupta', 'pr@yopmail.com', '$2y$10$QIV92Rec7Bh2D/nB6MbiVeq6FSAtFO09hA6hMw1X.QcqB5AaZsVIm', 'Abu Dhabi', 'Angola', '2008-01-31', 'Male', 'mHGG5028Pxau', '0Jrr7349KVyS', 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 61273716440, 'Silver', '1000', 'Brock Lesnar', '013120241421314765ba576b04b54.png', '013120241421318165ba576b04ddd.png', '2024-01-31', 2000, 0, NULL, '1,2,3,4,5,6,7,8,10,9', '1,2,3,4,5,6,7,8,9,10', 'No', 'No', '2024-01-31 08:51:30', '2024-02-01 04:53:33', NULL),
(266, '0201202405015065bb25be035e8.jpg', '+971', '67979797998', 'Kickoff', 'Kickoff', 'lko@yopmail.com', '$2y$10$8Law0XCK1sFGwuupV2NU7.0cV0gB4dITfYGhg4AyOOHbnGEY79ZnK', 'Fujairah', 'United States of America', '2008-02-01', 'Female', 'dj032972oZuu', NULL, 'Android', 'fhOj1Ji9Rjqu3N_py5yYGL:APA91bFrKVlSg-3wZqZROoJKoOdMP9pfLqX3INpqgNGrstZrkv2b1AhRBEJNRChqoJNYHjYWYAI2k9YzhTdyXACKFHLODELYKiU5zwNwqr5-T6mvGiZwcPjHlFlI-edG3FAk2WC9NJmA', NULL, '0NPzHT7bfNiF2mxrlscABPabEVETTIU9I6V0ZdsAsXer4620NeNWQ6plO8pLZDf1', '0', '0', NULL, NULL, 'Active', 81599237826, 'Silver', '1000', NULL, '020120240501508965bb25be84a72.png', '020120240501503165bb25be84c3a.png', '2024-02-01', 0, 0, NULL, '', '', 'Regular', 'Regular', '2024-01-31 23:31:50', '2024-02-01 00:30:40', NULL),
(267, '0201202405343165bb2d678af5c.jpeg', '+374', '97864564754', 'Jimmy', 'Sense', 'jimme@yopmail.com', '$2y$10$YZ0QLBHI3pImQOfH6rDA6O4Rydtor/CYoqb.DgJDSZ7ChBvSsSSOy', 'Abu Dhabi', 'Angola', '1999-02-01', 'Male', 'Pq4Z8980YHtX', NULL, 'None', NULL, NULL, 'posEefegkweb3Yyc4qduBP6LMdeBXWJ0f1GMEG3fcaFnNB7XhVTqrU700X6IGApY', '0', '0', NULL, NULL, 'Active', 89520560791, 'Silver', '1000', NULL, '020120240534312765bb2d67dd266.png', '020120240534318365bb2d67dd635.png', '2024-02-01', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-02-01 00:04:31', '2024-02-01 07:54:12', NULL),
(268, NULL, '+971', '6868686868', 'Nihal', 'Chand', 'eas@yopmail.com', '$2y$10$AUnkAjEIC936EPmrCnFNZ.rCgecYD6lkgQ4/STbZmyVEnPTE09eWm', 'Ajman', 'Algeria', '2008-02-01', 'Female', '2Yio2148c2P2', NULL, 'None', NULL, NULL, 'VI2fmSQlUQ4v5Uevw55mmLAgNyAOQZ5upagU0UvrcG9wErpi0NyH5F8txiToece8', '0', '0', NULL, NULL, 'Active', 33913803910, 'Silver', '1000', NULL, '020120240547497765bb30856b033.png', '020120240547491265bb30856b222.png', '2024-02-01', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,6,5,7,8,9,10', 'Regular', 'Regular', '2024-02-01 00:17:49', '2024-02-01 00:35:59', NULL),
(269, NULL, '+971', '6868687657', 'Vvvvvncncncnncnxxbb', 'Bcxbbxbxhxhchchchchchchchxyyxyxyxtxtxtxtxyxtdtdtox', 'wer@yopmail.com', '$2y$10$80VC6DPrDLuLrf3JdnilTe55gD9vzAJLL6az43CEaRjWcqZnEw7Vu', 'Ajman', 'Afghanistan', '2008-01-11', 'Female', 'UtQQ5548HE97', NULL, 'None', NULL, NULL, '3DwwVa08bGSMxydfx4m5ghnmGHp8cH08TA671snJarXNfdNlfaBSGGqYgHBbWaDi', '0', '0', NULL, NULL, 'Active', 94509647503, 'Silver', '1000', NULL, '020120240607076165bb350b766c3.png', '020120240607074165bb350b76c70.png', '2024-02-01', 0, 0, NULL, '', '', 'Regular', 'No', '2024-02-01 00:37:07', '2024-02-01 00:40:05', NULL),
(270, '0201202406194365bb37ff5430a.jpg', '+971', '555566665566', 'KARTIK', 'Sharma', 'k5@yopmail.com', '$2y$10$tXVt.JKyafHJvmR0MVaDZObGf/tujvWST1ZiH714LMb/iv/o7q8i.', 'Ras Al Khaimah', 'United States of America', '2008-02-01', 'Female', 'tBbb4055RI9U', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 30647492448, 'Silver', '1000', NULL, '020120240619457665bb3801459e7.png', '020120240619451265bb380153874.png', '2024-02-01', 0, 0, NULL, '1,2,3,4,5,6,8,7,9,10', '1,2,3,4,5,6,7,8,9,10', 'Occasional', 'Occasional', '2024-02-01 00:49:44', '2024-02-01 05:38:52', NULL),
(271, NULL, '+971', '6686868686', 'Hxbxlbboxhhlhohohohohoxboxhohlhlxblchochoxhoxogxog', 'Hchocohxoggoxgoxgoxgoxgigitgiogxgoxigxigxigxigxogx', 'ggsg@yopmail.com', '$2y$10$IXC6oNL5BxTuK9oos6.o6OlQfsh0V/qPDmj01tiUZtSNgAYA0HJWe', 'Dubai', 'Albania', '2008-02-01', 'Male', '43lT5383fRtB', NULL, 'None', NULL, NULL, 'FJhzSHee4yodTFyDy5Q489BW53yuCg4M5mxW8zT3KBpnnJOYdBXp7kjwbcKG8h0n', '0', '0', NULL, NULL, 'Active', 98270510461, 'Silver', '1000', NULL, '020120240621412065bb3875a161f.png', '020120240621412965bb3875a18e4.png', '2024-02-01', 0, 0, NULL, '', '', 'No', 'Regular', '2024-02-01 00:51:41', '2024-02-01 00:58:56', NULL),
(272, '0201202413320465bb9d5460013.jpg', '+971', '8686686868668', 'Bbbbmvmmvmvmvmvmv', 'MnxbzvzvzvzvvvvfRzgzgtiss', 'tsg@yopmail.com', '$2y$10$NDcY6V/3uC40Peycd7DrJu7n3q2Lxram055aeZTeEKKbvj.uLCvvK', 'Ajman', 'Albania', '2008-02-01', 'Female', 'd8zj4728Laoa', NULL, 'Android', 'fBj-pmR0S42juK0W_fgPvR:APA91bEmYlE24Vx7wRqU2wKoTmQpXSMdF6w8E4ZiO2JnH6ALTbWnHAcPqfqbDNCJJsxoTXteMY2yVsHkj1t45wgC3uKdU5ysJS3j4bKcY9bygnqjtK37YuVezNYgcAho8g8hU__H4a2Z', NULL, '62nlJArDVBohVN0B56P0N2cTbaKJTVigqntcKkwnLg7s3sQ9SU0RVZYmXDdRpHlU', '0', '0', NULL, NULL, 'Active', 35815931897, 'Silver', '1000', NULL, '020120240629467465bb3a5a33935.png', '020120240629468365bb3a5a33b69.png', '2024-02-01', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', NULL, 'Regular', 'Regular', '2024-02-01 00:59:45', '2024-02-01 08:02:04', NULL),
(273, NULL, '+971', '61856458640', 'Jag', 'Quxgqixq', 'mobilsgdyephone15515@gmail.com', '$2y$10$mrH9/8NrdQzJROY27S3Zs.oDFp8Y7FgThs1G0KvmaVR0veGMRNLpm', 'Ajman', 'Algeria', '2008-02-01', 'Male', '6c4D3567z9v3', NULL, 'Android', 'fWoSjiBxRuiTu3_o7gMIFL:APA91bHpCFYm5WuMZQFrsBriG3YMrd_1z2ocAWNU8SgYCj1TJcYdeBYC6RzMbrbhE2U41udpU7NjnjJmEaRw8_HJQrSx8JXYMBkMeSwB5bcoE7jc-dnnP0P1kKndOHylQH-AX5vxD8oq', NULL, '8pleMgXxZv7x1pUZjgUgwHACPJVRCB4r33Ye4JMSaRAzyLXTdNMAYtDsdwWBrWhq', '0', '0', NULL, NULL, 'Active', 20731378030, 'Silver', '1000', NULL, '020120240805556265bb50e39cf31.png', '020120240805559965bb50e39d224.png', '2024-02-01', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-02-01 02:35:55', '2024-02-01 02:35:55', NULL),
(274, '0201202408211565bb547bda524.jpeg', '+971', '566565644', 'Jsjsjs', 'Hhshshsg', 'hshs@yopmail.com', '$2y$10$zQ0uHbccWDHF3y87FSGIzuuIdzaVKV2MkzRMX7X9NflSogFweTqdO', 'Abu Dhabi', 'Afghanistan', '2008-01-31', 'Male', '23CB3504FRpi', NULL, 'Ios', '7775b8dac04698afdc4f3ed7dfa658b9948df579569424aae53ddaf592b19e4e', NULL, 'qsIFYvUEnVnLGirW5a7F2f0XyQU0XLDcyfh4xphuN1XTsL97jCeGIjRR2UoyFSP2', '0', '0', NULL, NULL, 'Active', 14369102325, 'Silver', '1000', NULL, '020120240821169765bb547c42a47.png', '020120240821161565bb547c42c6e.png', '2024-02-01', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-02-01 02:51:16', '2024-02-01 02:51:16', NULL),
(275, '0201202410063165bb6d272a797.jpeg', '+91', '9012345678', 'Don', 'Don', 'd1@yopmail.com', '$2y$10$fskAgeGhMupboR9rwuHJ7ugc4.ACrVz3HxV9J/O4w6Cu8qvdWfTBy', 'Abu Dhabi', 'Algeria', '2008-02-01', 'Male', 'RVTq1694mbxD', NULL, 'None', NULL, NULL, NULL, '0', '1', NULL, NULL, 'Active', 92022439334, 'Silver', '1000', NULL, '020120241006311865bb6d2789619.png', '020120241006315265bb6d27898b4.png', '2024-02-01', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,5,6,7,8,9,10', 'No', 'No', '2024-02-01 04:36:31', '2024-02-01 05:51:31', NULL),
(276, '0201202410254465bb71a8b45e6.jpeg', '+91', '7474747474', 'Johnyyy', 'Drop', 'qa@yopmail.com', '$2y$10$pEc6/lZ40whGLABN4Q6.bezIJ/Vri9k01wng/qM2DgyF66JxqTWrK', 'Abu Dhabi', 'American Samoa', '2008-02-01', 'Male', '71pP9054KoUG', NULL, 'None', NULL, NULL, 'PjG1DJEEkRpMqjTMvIC1kJMKlHE0hmZgyoHiIgv7ILA7Y4UwkYHE806UJxVqgP4S', '0', '0', NULL, NULL, 'Active', 90236376379, 'Silver', '1000', NULL, '020120241025451665bb71a998447.png', '020120241025456265bb71a9985c3.png', '2024-02-01', 0, 0, NULL, '', '1,2,3,5,6,7,8,9,10', 'Occasional', 'Regular', '2024-02-01 04:55:45', '2024-02-01 05:23:08', NULL),
(277, '0201202410342265bb73ae2d0f7.jpg', '+91', '778445778445', 'Kartiksinghdbhdhdhdhdhfhhfhfhfhfhfhfhfhfhfhfhfhfhf', 'Sharmaxbdbbdbfbbfbfhfjfjfjjfjfjfjfjfjrjfjrjrjjrjrj', 'ks@yopmail.com', '$2y$10$yXYEwUajyhsHvKqxECSn9.1zFO7uS6/y0zYJmHWPHTpgShUrIn3YS', 'Fujairah', 'Algeria', '2008-02-01', 'Other', 'qpW11476hwpf', NULL, 'None', NULL, NULL, 'xvfCW2LrB4snJ0vFZWpVBsFiRrLMPANnQFgEg0D3LIFXpYiYQ6s2HTJcZSVFjAKc', '0', '0', NULL, NULL, 'Active', 61537558043, 'Silver', '1000', NULL, '020120241034225565bb73ae8afb1.png', '020120241034221965bb73ae8d94e.png', '2024-02-01', 0, 0, NULL, '1,2,3,4,5,6,7,8,9,10', '1,2,3,4,5,6,7,8,9,10', 'Regular', 'Occasional', '2024-02-01 05:04:22', '2024-02-01 05:24:42', NULL),
(278, '0201202410370565bb7451b4fd6.jpg', '+971', '9797997994', 'Hshshshshshshshshehehehehehehehehehehehhehehehe', 'Jsjsjsjsjsjjsjsjsjsjsjsjsjsjssjusueusheheheheheheh', 'qaz@yopmail.com', '$2y$10$CbEHs3SQgchZhfpNHZ1MFOYK/49uT5idTI2M.xepAfPgd5Z1/4kDi', 'Dubai', 'Afghanistan', '2008-02-01', 'Female', '86Wj8086l9Oe', NULL, 'Android', 'dUlIEXTZRC6JPW1COcKbUx:APA91bFTaiYwxEnK2-5DOBcbs7ThfavNtkF0q3miII_CDEq7KCZs2rxHpKuiH2PcuGpXh9mSChyBYlPqzbqbsZiXzA082vAn9Qbob6BdMufU2_mlLYY_v1pm2ndrHdMbFqOO92LWpzAt', NULL, 'TONJOVGG9VTmzPr7i8RJg86l4PCOCSsA45PuSPxiKcoMhUkN6fBXwVYuikYg6lwJ', '0', '0', NULL, NULL, 'Active', 37939087755, 'Silver', '1000', NULL, '020120241037065665bb74523d210.png', '020120241037068365bb74523d4aa.png', '2024-02-01', 0, 0, NULL, '1,2,4,3,6,5,8,7,10,9', '1,2,4,6,5,7,8,10,9', 'No', 'No', '2024-02-01 05:07:05', '2024-02-01 05:07:23', NULL),
(279, NULL, '+971', '49464648484', 'Dyotgooggo', 'Tosktstisitwtw', 'ird@yopmail.com', '$2y$10$WEh2zGHcTuHG0Qf2T2RF8eHu2qd55cBGriG20lJ1/MDp.tfdnvLzy', 'Dubai', 'Algeria', '2008-02-01', 'Female', 'DX3U6455D09I', NULL, 'None', NULL, NULL, 'VvuFgaL9bxqU1G6z8QFPDEYwKjZ4UD6RDkbDTlVEyrcSpoaUgVYimj5vcpQnkbYA', '0', '0', NULL, NULL, 'Active', 92683995951, 'Silver', '1000', NULL, '020120241055332765bb78a594c58.png', '020120241055331465bb78a594f2f.png', '2024-02-01', 0, 0, NULL, '1,2,4,3,6,5,7,10,9,8', '', 'Regular', 'Regular', '2024-02-01 05:25:33', '2024-02-01 05:34:42', NULL),
(280, '0201202410561365bb78cda24d5.jpeg', '+91', '5353535353', 'Kunal', 'Kkkkkkkk', 'kr@yopmail.com', '$2y$10$1oQmRJWLgI1IsZxZi7JMuugVdIYWpB3C2Fs5Q/W523Y7/WmTIEg6q', 'Abu Dhabi', 'Albania', '2008-02-01', 'Other', 'p9827723dLGC', NULL, 'None', NULL, NULL, 'I6jHjzADMhcMYILSpQkjJZScpdBTYyjXocdRQwAq2yyvipFbjZHKI5bNv0qVgtn3', '0', '0', NULL, NULL, 'Active', 22746427317, 'Silver', '1000', NULL, '020120241056143665bb78ce0a859.png', '020120241056145465bb78ce0aa24.png', '2024-02-01', 0, 0, NULL, NULL, NULL, 'Occasional', 'Occasional', '2024-02-01 05:26:13', '2024-02-01 05:30:29', NULL),
(281, NULL, '+971', '4545878787', 'sttiwtwtiwittwiwitwitwtistististiwigwtiwgitiwwtiwt', 'Fwfuwifwtiwfwtiwtiwitstiwtiittiwtiwtiitwtiwititwig', 'by@yopmail.com', '$2y$10$yS7d/LbSCYcc.qGu8iU./.frQigOeH8QywZY7qwKYtLlmjFjWZFG2', 'Ajman', 'United States of America', '2008-02-01', 'Female', 'pD6g1968lpWd', NULL, 'Android', 'dDwoaIFiSzeYA21jR4cI6Q:APA91bGeWYkkNbuO-ko3DXe4Q9jcXPO9zzMLpIbbguE5mraBCmBWZRUtmWsGW6N6AGetZ2smWpTACMWUzZzNwBfMTAY2TRzu-e3RuKgEM7RDFA_1iLt4uh8wtF_ifTchh7swgBfQZ2Ij', NULL, '3McnMJSpLixJP9iUsEu37WPlKYA4X6zSc4QeEKKzZycd8Mh7NWgR0bFVF5kmx8Wj', '0', '0', NULL, NULL, 'Active', 43129978630, 'Silver', '1000', NULL, '020120241109555465bb7c03763dc.png', '020120241109559065bb7c03765ab.png', '2024-02-01', 0, 0, NULL, '1,2,4,3,5,6', '3,2,1,4', 'Regular', 'Regular', '2024-02-01 05:39:55', '2024-02-01 05:40:16', NULL),
(282, '0201202411190965bb7e2d3a307.jpeg', '+91', '8585858585', 'Aka', 'Deb', 'ro@yopmail.com', '$2y$10$F0fGqXW.2yAAvplpO3lXSOPgvERgww9wvsDmv0ltcQtS//a05gwQa', 'Abu Dhabi', 'American Samoa', '2008-02-01', 'Male', '84Ny9427xeLZ', NULL, 'None', NULL, NULL, 'gx9xl4TOfLbfz6QD4uPa9pWZr4S4iQbBeFcOTpJjUFQaMuHmE5XOwYHl9qSa6EPo', '0', '0', NULL, NULL, 'Active', 72269778598, 'Silver', '1000', NULL, '020120241119098865bb7e2dedb59.png', '020120241119092465bb7e2deddf5.png', '2024-02-01', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-02-01 05:49:09', '2024-02-01 05:50:12', NULL),
(283, '0201202411232265bb7f2a20b50.jpeg', '+355', '6371453209', 'Nihal', 'Chand', 'chand@yopmail.com', '$2y$10$2APav7zv1eyqwauAvWG.SeslpvE/6OztgebnwaOJrYQiR8FaNyYGa', 'Umm Al Quwain', 'American Samoa', '1955-02-01', 'Male', 'OYe47463iMeD', 'edd062264i5Q', 'None', NULL, NULL, '4CST4mjTnFV4tMf2SelmzjHTaA1Zw0P37aamtykk7JlT331IJBiYCv5mqdpSSo5U', '0', '0', NULL, NULL, 'Active', 55112690466, 'Silver', '1000', 'Aka Deb', '020120241123234265bb7f2b0d569.png', '020120241123236465bb7f2b0d7e2.png', '2024-02-01', 2000, 0, NULL, '7,8,5,6', NULL, 'Occasional', 'Occasional', '2024-02-01 05:53:22', '2024-02-01 06:11:50', NULL),
(284, '0201202411425865bb83c2b5848.jpeg', '+971', '84545484848', 'Bxbxb', 'Dhhdhdhd', 'Hshshs@yopmail.com', '$2y$10$TjfUJwpacl7wJYGqIq.RzuCg4EX0FZXD1mjgG.QoyZL1I7FgTHhaK', 'Abu Dhabi', 'Afghanistan', '2008-02-01', 'Male', 'jM4a1458nKHY', NULL, 'None', NULL, NULL, 'CdZNz2wTcqZyhyiaMtmteLjBeGxp8ECqEHPVYDdPUy7qsOZC3MPZ5CYGHpxp0xV4', '0', '0', NULL, NULL, 'Active', 27314907355, 'Silver', '1000', NULL, '020120241142594765bb83c3161f5.png', '020120241142592165bb83c316474.png', '2024-02-01', 0, 0, NULL, NULL, NULL, 'No', 'No', '2024-02-01 06:12:58', '2024-02-01 06:14:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_assign_offers`
--

CREATE TABLE `user_assign_offers` (
  `id` int UNSIGNED NOT NULL,
  `offer_id` int UNSIGNED NOT NULL,
  `offer_setting_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `city_id` int DEFAULT NULL,
  `dob` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Today',
  `gender` enum('None','Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `date` date DEFAULT NULL,
  `assign_at` date DEFAULT NULL,
  `txn_start_period` date DEFAULT NULL,
  `txn_end_period` date DEFAULT NULL,
  `txn_amount_condition` enum('Between','Greater Than') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_price` double DEFAULT '0',
  `to_price` double DEFAULT '0',
  `offer_type` enum('Normal','BirthdayOffer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_redeem` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_assign_offers`
--

INSERT INTO `user_assign_offers` (`id`, `offer_id`, `offer_setting_id`, `user_id`, `city_id`, `dob`, `gender`, `date`, `assign_at`, `txn_start_period`, `txn_end_period`, `txn_amount_condition`, `from_price`, `to_price`, `offer_type`, `offer_redeem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 1, '2021-11-12 13:31:41', '2021-11-12 14:47:47', NULL),
(2, 2, 2, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 13:31:44', '2021-11-12 13:31:44', NULL),
(3, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 1, '2021-11-12 14:03:15', '2021-11-12 14:47:47', NULL),
(4, 1, 1, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:03:16', '2021-11-12 14:03:16', NULL),
(5, 2, 2, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:03:17', '2021-11-12 14:03:17', NULL),
(6, 2, 2, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:03:18', '2021-11-12 14:03:18', NULL),
(7, 3, 3, 2, NULL, 'Today', 'Male', '2021-11-12', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-12 14:03:19', '2021-11-12 14:03:19', NULL),
(10, 5, 5, 2, 1, 'Today', 'Male', '2021-11-12', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-12 14:03:23', '2021-11-12 14:03:23', NULL),
(11, 1, 1, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 1, '2021-11-12 14:04:27', '2021-11-12 14:47:47', NULL),
(12, 1, 1, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:04:28', '2021-11-12 14:04:28', NULL),
(13, 2, 2, 1, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:04:29', '2021-11-12 14:04:29', NULL),
(14, 2, 2, 2, NULL, 'Today', NULL, NULL, '2021-11-12', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-12 14:04:30', '2021-11-12 14:04:30', NULL),
(17, 6, 6, 2, 1, 'Today', 'Male', '2021-11-12', '2021-11-12', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-12 14:04:33', '2021-11-12 14:04:33', NULL),
(18, 1, 1, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 07:39:52', '2021-11-15 07:39:52', NULL),
(19, 2, 2, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 07:39:52', '2021-11-15 07:39:52', NULL),
(20, 8, 8, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 07:39:53', '2021-11-15 07:39:53', NULL),
(21, 10, 10, 1, NULL, 'Today', 'Female', '2021-11-15', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-15 07:39:53', '2021-11-15 07:39:53', NULL),
(22, 1, 1, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(23, 2, 2, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(24, 8, 8, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(25, 11, 11, 1, NULL, 'Today', 'Female', '2021-11-15', '2021-11-15', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-15 09:06:12', '2021-11-15 09:06:12', NULL),
(26, 1, 1, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:07:04', '2021-11-15 09:07:04', NULL),
(27, 2, 2, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:07:04', '2021-11-15 09:07:04', NULL),
(28, 8, 8, 3, NULL, 'Today', NULL, NULL, '2021-11-15', NULL, NULL, NULL, 0, 0, 'BirthdayOffer', 0, '2021-11-15 09:07:05', '2021-11-15 09:07:05', NULL),
(29, 24, 24, 14, NULL, 'Today', 'Male', '2023-10-26', '2023-10-26', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2021-11-15 09:07:05', '2021-11-15 09:07:05', NULL),
(149, 19, 19, 11, NULL, 'Today', 'Male', '2022-01-25', '2022-01-25', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2022-01-25 06:44:56', '2022-01-25 06:44:56', NULL),
(150, 28, 28, 1, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:36', '2024-01-09 00:19:36', NULL),
(151, 28, 28, 2, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:39', '2024-01-09 00:19:39', NULL),
(152, 28, 28, 3, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:40', '2024-01-09 00:19:40', NULL),
(153, 28, 28, 4, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(154, 28, 28, 5, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(155, 28, 28, 6, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(156, 28, 28, 7, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(157, 28, 28, 8, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:41', '2024-01-09 00:19:41', NULL),
(158, 28, 28, 12, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:42', '2024-01-09 00:19:42', NULL),
(159, 28, 28, 13, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(160, 28, 28, 14, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(161, 28, 28, 15, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(162, 28, 28, 16, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:43', '2024-01-09 00:19:43', NULL),
(163, 28, 28, 17, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(164, 28, 28, 18, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(165, 28, 28, 19, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(166, 28, 28, 20, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:45', '2024-01-09 00:19:45', NULL),
(167, 28, 28, 21, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(168, 28, 28, 22, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(169, 28, 28, 23, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(170, 28, 28, 24, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(171, 28, 28, 25, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:46', '2024-01-09 00:19:46', NULL),
(172, 28, 28, 26, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(173, 28, 28, 27, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(174, 28, 28, 28, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(175, 28, 28, 29, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:47', '2024-01-09 00:19:47', NULL),
(176, 28, 28, 30, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:48', '2024-01-09 00:19:48', NULL),
(177, 28, 28, 31, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(178, 28, 28, 32, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(179, 28, 28, 33, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:49', '2024-01-09 00:19:49', NULL),
(180, 28, 28, 34, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:50', '2024-01-09 00:19:50', NULL),
(181, 28, 28, 35, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(182, 28, 28, 36, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:51', '2024-01-09 00:19:51', NULL),
(183, 28, 28, 37, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(184, 28, 28, 38, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(185, 28, 28, 39, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:53', '2024-01-09 00:19:53', NULL),
(186, 28, 28, 40, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:54', '2024-01-09 00:19:54', NULL),
(187, 28, 28, 41, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:54', '2024-01-09 00:19:54', NULL),
(188, 28, 28, 42, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(189, 28, 28, 43, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(190, 28, 28, 44, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(191, 28, 28, 45, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(192, 28, 28, 46, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:55', '2024-01-09 00:19:55', NULL),
(193, 28, 28, 47, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:56', '2024-01-09 00:19:56', NULL),
(194, 28, 28, 48, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(195, 28, 28, 49, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(196, 28, 28, 50, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(197, 28, 28, 51, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(198, 28, 28, 52, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(199, 28, 28, 53, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:57', '2024-01-09 00:19:57', NULL),
(200, 28, 28, 54, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(201, 28, 28, 55, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:58', '2024-01-09 00:19:58', NULL),
(202, 28, 28, 56, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(203, 28, 28, 57, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:19:59', '2024-01-09 00:19:59', NULL),
(204, 28, 28, 58, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(205, 28, 28, 59, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(206, 28, 28, 60, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(207, 28, 28, 61, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(208, 28, 28, 62, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:00', '2024-01-09 00:20:00', NULL),
(209, 28, 28, 63, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:01', '2024-01-09 00:20:01', NULL),
(210, 28, 28, 64, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(211, 28, 28, 65, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:02', '2024-01-09 00:20:02', NULL),
(212, 28, 28, 66, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(213, 28, 28, 67, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:04', '2024-01-09 00:20:04', NULL),
(214, 28, 28, 68, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:05', '2024-01-09 00:20:05', NULL),
(215, 28, 28, 69, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(216, 28, 28, 70, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:06', '2024-01-09 00:20:06', NULL),
(217, 28, 28, 71, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(218, 28, 28, 72, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:07', '2024-01-09 00:20:07', NULL),
(219, 28, 28, 73, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:08', '2024-01-09 00:20:08', NULL),
(220, 28, 28, 74, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:09', '2024-01-09 00:20:09', NULL),
(221, 28, 28, 75, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:10', '2024-01-09 00:20:10', NULL),
(222, 28, 28, 76, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(223, 28, 28, 77, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:11', '2024-01-09 00:20:11', NULL),
(224, 28, 28, 78, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(225, 28, 28, 79, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(226, 28, 28, 80, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(227, 28, 28, 81, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:12', '2024-01-09 00:20:12', NULL),
(228, 28, 28, 82, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(229, 28, 28, 83, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:13', '2024-01-09 00:20:13', NULL),
(230, 28, 28, 84, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:14', '2024-01-09 00:20:14', NULL),
(231, 28, 28, 85, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(232, 28, 28, 86, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:15', '2024-01-09 00:20:15', NULL),
(233, 28, 28, 87, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(234, 28, 28, 88, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:16', '2024-01-09 00:20:16', NULL),
(235, 28, 28, 89, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(236, 28, 28, 90, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:17', '2024-01-09 00:20:17', NULL),
(237, 28, 28, 91, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:19', '2024-01-09 00:20:19', NULL),
(238, 28, 28, 92, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(239, 28, 28, 93, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(240, 28, 28, 94, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(241, 28, 28, 95, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:20', '2024-01-09 00:20:20', NULL),
(242, 28, 28, 96, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:21', '2024-01-09 00:20:21', NULL),
(243, 28, 28, 97, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(244, 28, 28, 98, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(245, 28, 28, 99, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:22', '2024-01-09 00:20:22', NULL),
(246, 28, 28, 100, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:20:24', '2024-01-09 00:20:24', NULL),
(247, 29, 29, 1, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:21:58', '2024-01-09 00:21:58', NULL),
(248, 29, 29, 2, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:00', '2024-01-09 00:22:00', NULL),
(249, 29, 29, 3, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(250, 29, 29, 4, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(251, 29, 29, 5, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:01', '2024-01-09 00:22:01', NULL),
(252, 29, 29, 6, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(253, 29, 29, 7, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(254, 29, 29, 8, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(255, 29, 29, 12, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:02', '2024-01-09 00:22:02', NULL),
(256, 29, 29, 13, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(257, 29, 29, 14, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(258, 29, 29, 15, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(259, 29, 29, 16, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:04', '2024-01-09 00:22:04', NULL),
(260, 29, 29, 17, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(261, 29, 29, 18, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:05', '2024-01-09 00:22:05', NULL),
(262, 29, 29, 19, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(263, 29, 29, 20, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(264, 29, 29, 21, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(265, 29, 29, 22, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:06', '2024-01-09 00:22:06', NULL),
(266, 29, 29, 23, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(267, 29, 29, 24, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(268, 29, 29, 25, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(269, 29, 29, 26, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:07', '2024-01-09 00:22:07', NULL),
(270, 29, 29, 27, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(271, 29, 29, 28, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(272, 29, 29, 29, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:08', '2024-01-09 00:22:08', NULL),
(273, 29, 29, 30, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:09', '2024-01-09 00:22:09', NULL),
(274, 29, 29, 31, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(275, 29, 29, 32, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(276, 29, 29, 33, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:10', '2024-01-09 00:22:10', NULL),
(277, 29, 29, 34, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:11', '2024-01-09 00:22:11', NULL),
(278, 29, 29, 35, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(279, 29, 29, 36, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:12', '2024-01-09 00:22:12', NULL),
(280, 29, 29, 37, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(281, 29, 29, 38, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:13', '2024-01-09 00:22:13', NULL),
(282, 29, 29, 39, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(283, 29, 29, 40, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:14', '2024-01-09 00:22:14', NULL),
(284, 29, 29, 41, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(285, 29, 29, 42, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(286, 29, 29, 43, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(287, 29, 29, 44, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(288, 29, 29, 45, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:15', '2024-01-09 00:22:15', NULL),
(289, 29, 29, 46, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(290, 29, 29, 47, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(291, 29, 29, 48, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(292, 29, 29, 49, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:16', '2024-01-09 00:22:16', NULL),
(293, 29, 29, 50, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(294, 29, 29, 51, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(295, 29, 29, 52, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:17', '2024-01-09 00:22:17', NULL),
(296, 29, 29, 53, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(297, 29, 29, 54, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(298, 29, 29, 55, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:18', '2024-01-09 00:22:18', NULL),
(299, 29, 29, 56, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(300, 29, 29, 57, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:19', '2024-01-09 00:22:19', NULL),
(301, 29, 29, 58, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(302, 29, 29, 59, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(303, 29, 29, 60, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:20', '2024-01-09 00:22:20', NULL),
(304, 29, 29, 61, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:21', '2024-01-09 00:22:21', NULL),
(305, 29, 29, 62, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:21', '2024-01-09 00:22:21', NULL),
(306, 29, 29, 63, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:22', '2024-01-09 00:22:22', NULL),
(307, 29, 29, 64, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(308, 29, 29, 65, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:23', '2024-01-09 00:22:23', NULL),
(309, 29, 29, 66, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:24', '2024-01-09 00:22:24', NULL),
(310, 29, 29, 67, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(311, 29, 29, 68, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:25', '2024-01-09 00:22:25', NULL),
(312, 29, 29, 69, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(313, 29, 29, 70, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:26', '2024-01-09 00:22:26', NULL),
(314, 29, 29, 71, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(315, 29, 29, 72, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:27', '2024-01-09 00:22:27', NULL),
(316, 29, 29, 73, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:28', '2024-01-09 00:22:28', NULL),
(317, 29, 29, 74, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:29', '2024-01-09 00:22:29', NULL),
(318, 29, 29, 75, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:30', '2024-01-09 00:22:30', NULL),
(319, 29, 29, 76, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(320, 29, 29, 77, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(321, 29, 29, 78, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(322, 29, 29, 79, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:31', '2024-01-09 00:22:31', NULL),
(323, 29, 29, 80, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(324, 29, 29, 81, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(325, 29, 29, 82, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(326, 29, 29, 83, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:32', '2024-01-09 00:22:32', NULL),
(327, 29, 29, 84, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:34', '2024-01-09 00:22:34', NULL),
(328, 29, 29, 85, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(329, 29, 29, 86, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(330, 29, 29, 87, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(331, 29, 29, 88, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:35', '2024-01-09 00:22:35', NULL),
(332, 29, 29, 89, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(333, 29, 29, 90, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:37', '2024-01-09 00:22:37', NULL),
(334, 29, 29, 91, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:39', '2024-01-09 00:22:39', NULL),
(335, 29, 29, 92, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(336, 29, 29, 93, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(337, 29, 29, 94, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:40', '2024-01-09 00:22:40', NULL),
(338, 29, 29, 95, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(339, 29, 29, 96, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:41', '2024-01-09 00:22:41', NULL),
(340, 29, 29, 97, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:43', '2024-01-09 00:22:43', NULL),
(341, 29, 29, 98, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:44', '2024-01-09 00:22:44', NULL),
(342, 29, 29, 99, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:44', '2024-01-09 00:22:44', NULL),
(343, 29, 29, 100, NULL, 'Today', NULL, '2024-01-09', '2024-01-09', NULL, NULL, NULL, NULL, NULL, 'Normal', 0, '2024-01-09 00:22:45', '2024-01-09 00:22:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_venue_favorites`
--

CREATE TABLE `user_venue_favorites` (
  `id` int UNSIGNED NOT NULL,
  `venue_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_venue_favorites`
--

INSERT INTO `user_venue_favorites` (`id`, `venue_id`, `user_id`) VALUES
(11, 9, 142),
(12, 9, 142),
(13, 7, 142),
(14, 7, 142),
(17, 9, 169),
(18, 5, 169),
(19, 5, 173),
(23, 5, 174),
(31, 9, 89),
(38, 5, 185),
(53, 5, 197),
(54, 9, 197),
(62, 5, 83),
(63, 9, 83),
(82, 5, 199),
(88, 5, 200),
(89, 9, 200),
(90, 7, 200),
(91, 8, 200),
(92, 1, 200),
(93, 2, 200),
(110, 8, 202),
(111, 2, 202),
(115, 5, 202),
(118, 5, 212),
(119, 9, 212),
(122, 20, 90),
(125, 3, 90),
(129, 5, 221),
(130, 9, 221),
(137, 5, 246),
(138, 9, 246),
(139, 7, 246),
(140, 8, 246),
(144, 5, 245),
(145, 9, 245),
(146, 7, 245),
(147, 8, 245),
(150, 5, 234),
(153, 9, 260);

-- --------------------------------------------------------

--
-- Table structure for table `venue_users`
--

CREATE TABLE `venue_users` (
  `id` int UNSIGNED NOT NULL,
  `venu_id` int UNSIGNED DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `device_model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `mac_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `authorized_status` enum('Unauthorized','Authorized') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unauthorized',
  `date_time` datetime DEFAULT NULL,
  `access_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_users`
--

INSERT INTO `venue_users` (`id`, `venu_id`, `username`, `password`, `status`, `device_model`, `mac_address`, `authorized_status`, `date_time`, `access_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'kanhaiyagoyal', '$2y$10$7YdjLx9vgv8Li7.JLvi9iOxTYDVLYiGzdRmWdNRVGrzTDt3dHREB6', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-12 18:52:51', '$2y$10$vhGq2APpNk1GIzYRaaYbg.M1EaeFnpKqCQy/U4VHi/rv6r.RfXwyu', 'Nadeer', 'Nadeer', '2021-11-12 13:22:51', '2021-11-12 13:24:05', NULL),
(2, NULL, 'aman', '$2y$10$T6YjiU0KM9WiBoY1hjHWF.Rwvbl09HjZ73lX95AFAr2sSCH17/kdm', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-12 19:49:01', '$2y$10$48HUSNnu4hAiGcy01YWDM.p3BnvVjMvVaYwIWAVrrBzMU96OEm7mC', 'kanhaiya', 'kanhaiya', '2021-11-12 14:19:01', '2022-01-27 10:37:33', NULL),
(3, NULL, 'ios', '$2y$10$4Xb6hyQlwJnTkEok7NiFYuQnD2prclVQSg/B3s1O0/jJnjmmfiUTK', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-15 10:34:32', '$2y$10$HYh8X6GlnKv4h3J1GUwhJOOCngW.0HO6/iCOB/vSLUej3.g05iVgy', 'Nadeer', 'Nadeer', '2021-11-15 05:04:32', '2021-11-15 05:04:40', NULL),
(4, NULL, 'sachin', '$2y$10$N/jFsFeoNDknTicxdunrGOfscrYiHo/B1HCACC4GWrb3ABiqov.fu', 'Active', 'N/A', 'N/A', 'Unauthorized', '2021-11-16 11:54:56', '$2y$10$Ny.kAKh0x61OIGzdDRSVre5I7Vs4ek2KObGLW7Ewnc5a8qhXssZhq', 'Nadeer', 'admin2', '2021-11-16 06:24:56', '2021-11-16 09:15:03', NULL),
(5, NULL, 'Shivam', '$2y$10$T6YjiU0KM9WiBoY1hjHWF.Rwvbl09HjZ73lX95AFAr2sSCH17/kdm', 'Active', 'N/A', 'N/A', 'Unauthorized', '2022-01-20 10:11:22', '$2y$10$mRoGNZsHVnEPsuZV5ivNfuZCIA.MhxcCdLqxH.gG4MsgpCO0AYSLG', 'Nadeer', 'Nadeer', '2022-01-20 04:41:22', '2022-01-27 05:38:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venus`
--

CREATE TABLE `venus` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `venue_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` int DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `venue_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map_location_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_now_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_of_file_show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('None','Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_venue_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venus`
--

INSERT INTO `venus` (`id`, `admin_id`, `venue_name`, `unique_id`, `address`, `venue_description`, `phone_number`, `google_map_location_link`, `book_now_link`, `image`, `name_of_file_show`, `menu_link`, `status`, `pos_venue_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Venuadfhasdfajkhdfjkahldkjfhak', 1, 'Mohalisadfasdfasdfkalshdfkjhadfkhakdhfkhasldkfjhlkasdfkhasdfasdfasdfsadfasdfsadf', 'testingsdfsadfklahdfjkhakjdfhlkjashdkfjhjklashdfhsajdfhlksakdfhkashlkdfhashdfkhakhdfkashlkdfhkjajkdflakshfdkhaskdfhlsakdjfhjk', '5454565655', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1027202307194649653b649232af7.jpeg', 'Screenshot_20231019_130758.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1001, '2021-11-12 13:22:29', '2023-10-27 01:49:46', NULL),
(2, 1, 'Venue2777', 2, 'party', 'party', '971506969298', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1112202118571721618e6bb5df6f0.png', 'Screenshot_32.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1002, '2021-11-12 13:27:18', '2021-11-15 11:30:44', NULL),
(5, 2, 'abhay', 4, '213213', '213213123213213123213213123213213123213213123213213123213213123213213123213213123213213123213213123213213123', '4234324', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1024202306364827653766009a91c.png', 'Screenshot 2023-09-19 at 3.56.50 PM.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 43432, '2021-11-15 07:12:04', '2023-10-24 01:07:01', NULL),
(6, 1, 'sadsad', 5, 'sad', 'dsadd', '3214', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1115202112442916619208d5a6f7b.jpeg', 'Cool-Nature-Wallpapaer-for-Download.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', NULL, '2021-11-15 07:14:05', '2021-11-15 07:22:04', '2021-11-15 07:22:04'),
(7, 1, 'Shivam Test', 6, 'sadf', 'dfas', '4234', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '102420230628555565376427dd407.png', 'Screenshot 2023-09-19 at 3.56.54 PM.png', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 4234, '2021-11-15 11:46:42', '2023-10-24 00:58:56', NULL),
(8, 1, 'TEST 2', 7, 'xxx', 'xxx', '3434343457', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '012420220848097261ee67c95f559.jpeg', 'file_example_JPG_1MB.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', NULL, '2022-01-24 03:18:03', '2022-01-24 03:18:09', NULL),
(9, 1, 'Hello world', 8, 'mohali,chandigarh, punjab', 'asdasdasdasdasdasdasdasdasdasdadasdsdafkhsdghlsdfgjksdfhgljksdfgshdlgkhsdkfjghdhklsfghlkshdfghlksjdfghdsfjkghkldfgjkshdfjkghdfg', '1234567892', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', '1027202313153481653bb7f6e195d.jpeg', 'download.jpg', 'https://goo.gl/maps/cvt7k7E24qYJQ4Au8', 'Active', 1008, '2023-10-27 07:45:17', '2023-10-27 07:45:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_cashbacks`
--

CREATE TABLE `wallet_cashbacks` (
  `id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `bonus` double NOT NULL DEFAULT '0',
  `bonus_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_friend` double NOT NULL DEFAULT '0',
  `refer_friend_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_cashbacks`
--

INSERT INTO `wallet_cashbacks` (`id`, `admin_id`, `bonus`, `bonus_text`, `refer_friend`, `refer_friend_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1000, 'AED', 2000, 'AED', '2021-11-12 12:59:50', '2021-11-12 12:59:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cashback_earned` double NOT NULL DEFAULT '0',
  `redeemed_amount` double NOT NULL DEFAULT '0',
  `user_wallet_cash` double NOT NULL DEFAULT '0',
  `date_and_time` datetime NOT NULL,
  `type_of_transaction` enum('Bonus','Refer','Redeem','Cashback') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `user_id`, `description`, `cashback_earned`, `redeemed_amount`, `user_wallet_cash`, `date_and_time`, `type_of_transaction`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bonus Earnings', 1000, 0, 1000, '2021-11-12 18:30:07', 'Bonus', '2021-11-12 13:00:07', '2021-11-12 13:00:07'),
(2, 1, 'Redeemed Earnings', 0, 0, 1000, '2021-11-12 19:05:43', 'Redeem', '2021-11-12 13:35:43', '2021-11-12 13:35:43'),
(3, 1, 'Redeemed Earnings', 0, 0, 1000, '2021-11-12 19:12:17', 'Redeem', '2021-11-12 13:42:17', '2021-11-12 13:42:17'),
(4, 2, 'Bonus Earnings', 1000, 0, 1000, '2021-11-12 19:13:29', 'Bonus', '2021-11-12 13:43:29', '2021-11-12 13:43:29'),
(5, 2, 'Redeemed Earnings', 0, 0, 1000, '2021-11-12 19:15:16', 'Redeem', '2021-11-12 13:45:16', '2021-11-12 13:45:16'),
(6, 1, 'Referral Earnings', 2000, 0, 3000, '2021-11-12 19:16:21', 'Refer', '2021-11-12 13:46:21', '2021-11-12 13:46:21'),
(7, 2, 'Cash Back Earnings', 10, 0, 1010, '2021-11-12 19:16:24', 'Cashback', '2021-11-12 13:46:24', '2021-11-12 13:46:24'),
(8, 1, 'Cash Back Earnings', 10, 0, 3010, '2021-11-12 19:17:21', 'Cashback', '2021-11-12 13:47:21', '2021-11-12 13:47:21'),
(9, 1, 'Cash Back Earnings', 10, 0, 3020, '2021-11-12 19:54:29', 'Cashback', '2021-11-12 14:24:29', '2021-11-12 14:24:29'),
(10, 1, 'Cash Back Earnings', 10, 0, 3030, '2021-11-12 19:54:29', 'Cashback', '2021-11-12 14:24:29', '2021-11-12 14:24:29'),
(11, 1, 'Redeemed Earnings', 0, 0, 3030, '2021-11-12 19:55:04', 'Redeem', '2021-11-12 14:25:04', '2021-11-12 14:25:04'),
(12, 1, 'Cash Back Earnings', 20, 0, 3050, '2021-11-12 19:56:36', 'Cashback', '2021-11-12 14:26:36', '2021-11-12 14:26:36'),
(13, 1, 'Redeemed Earnings', 0, 0, 3050, '2021-11-12 19:57:23', 'Redeem', '2021-11-12 14:27:23', '2021-11-12 14:27:23'),
(14, 1, 'Cash Back Earnings', 20, 0, 3070, '2021-11-12 19:58:23', 'Cashback', '2021-11-12 14:28:23', '2021-11-12 14:28:23'),
(15, 1, 'Redeemed Earnings', 0, 0, 3070, '2021-11-12 19:58:55', 'Redeem', '2021-11-12 14:28:55', '2021-11-12 14:28:55'),
(16, 1, 'Cash Back Earnings', 20, 0, 3090, '2021-11-12 19:59:29', 'Cashback', '2021-11-12 14:29:29', '2021-11-12 14:29:29'),
(17, 1, 'Cash Back Earnings', 20, 0, 3110, '2021-11-12 19:59:36', 'Cashback', '2021-11-12 14:29:36', '2021-11-12 14:29:36'),
(18, 1, 'Redeemed Earnings', 0, 0, 3110, '2021-11-12 20:16:12', 'Redeem', '2021-11-12 14:46:12', '2021-11-12 14:46:12'),
(19, 1, 'Redeemed Earnings', 0, 0, 3110, '2021-11-12 20:17:47', 'Redeem', '2021-11-12 14:47:47', '2021-11-12 14:47:47'),
(20, 1, 'Redeemed Earnings', 0, 100, 3010, '2021-11-12 20:19:03', 'Redeem', '2021-11-12 14:49:03', '2021-11-12 14:49:03'),
(21, 1, 'Cash Back Earnings', 20, 0, 3030, '2021-11-12 20:19:22', 'Cashback', '2021-11-12 14:49:22', '2021-11-12 14:49:22'),
(22, 3, 'Bonus Earnings', 1000, 0, 1000, '2021-11-15 10:42:53', 'Bonus', '2021-11-15 05:12:53', '2021-11-15 05:12:53'),
(23, 4, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 12:16:26', 'Bonus', '2021-11-16 06:46:26', '2021-11-16 06:46:26'),
(24, 5, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 18:11:32', 'Bonus', '2021-11-16 12:41:32', '2021-11-16 12:41:32'),
(25, 6, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 18:16:59', 'Bonus', '2021-11-16 12:46:59', '2021-11-16 12:46:59'),
(26, 7, 'Bonus Earnings', 1000, 0, 1000, '2021-11-16 18:33:02', 'Bonus', '2021-11-16 13:03:02', '2021-11-16 13:03:02'),
(27, 8, 'Bonus Earnings', 1000, 0, 1000, '2021-11-17 11:28:50', 'Bonus', '2021-11-17 05:58:50', '2021-11-17 05:58:50'),
(28, 9, 'Bonus Earnings', 1000, 0, 1000, '2021-11-17 11:56:41', 'Bonus', '2021-11-17 06:26:41', '2021-11-17 06:26:41'),
(29, 1, 'Cash Back Earnings', 20, 0, 3050, '2022-01-19 10:52:08', 'Cashback', '2022-01-19 05:22:08', '2022-01-19 05:22:08'),
(30, 1, 'Cash Back Earnings', 20, 0, 3070, '2022-01-19 10:52:11', 'Cashback', '2022-01-19 05:22:11', '2022-01-19 05:22:11'),
(31, 1, 'Cash Back Earnings', 20, 0, 3090, '2022-01-19 10:52:12', 'Cashback', '2022-01-19 05:22:12', '2022-01-19 05:22:12'),
(33, 11, 'Bonus Earnings', 1000, 0, 1000, '2022-01-25 16:35:25', 'Bonus', '2022-01-25 11:05:25', '2022-01-25 11:05:25'),
(34, 11, 'Redeemed Earnings', 0, 500, 500, '2022-01-27 06:23:58', 'Redeem', '2022-01-27 00:53:58', '2022-01-27 00:53:58'),
(35, 11, 'Redeemed Earnings', 0, 500, 0, '2022-01-27 06:25:55', 'Redeem', '2022-01-27 00:55:55', '2022-01-27 00:55:55'),
(36, 11, 'Cash Back Earnings', 70, 0, 70, '2022-01-27 07:08:55', 'Cashback', '2022-01-27 01:38:55', '2022-01-27 01:38:55'),
(37, 11, 'Cash Back Earnings', 140, 0, 210, '2022-01-27 07:14:37', 'Cashback', '2022-01-27 01:44:37', '2022-01-27 01:44:37'),
(38, 11, 'Cash Back Earnings', 140, 0, 350, '2022-01-27 07:19:09', 'Cashback', '2022-01-27 01:49:09', '2022-01-27 01:49:09'),
(39, 11, 'Cash Back Earnings', 140, 0, 490, '2022-01-27 07:20:47', 'Cashback', '2022-01-27 01:50:47', '2022-01-27 01:50:47'),
(40, 11, 'Cash Back Earnings', 140, 0, 630, '2022-01-27 08:35:52', 'Cashback', '2022-01-27 03:05:52', '2022-01-27 03:05:52'),
(41, 11, 'Cash Back Earnings', 70, 0, 700, '2022-01-27 08:46:25', 'Cashback', '2022-01-27 03:16:25', '2022-01-27 03:16:25'),
(42, 11, 'Cash Back Earnings', 70, 0, 770, '2022-01-27 08:46:28', 'Cashback', '2022-01-27 03:16:28', '2022-01-27 03:16:28'),
(43, 11, 'Cash Back Earnings', 70, 0, 840, '2022-01-27 08:46:29', 'Cashback', '2022-01-27 03:16:29', '2022-01-27 03:16:29'),
(44, 11, 'Cash Back Earnings', 70, 0, 910, '2022-01-27 08:46:30', 'Cashback', '2022-01-27 03:16:30', '2022-01-27 03:16:30'),
(45, 11, 'Cash Back Earnings', 140, 0, 1050, '2022-01-27 09:21:19', 'Cashback', '2022-01-27 03:51:19', '2022-01-27 03:51:19'),
(46, 11, 'Cash Back Earnings', 140, 0, 1190, '2022-01-27 09:21:33', 'Cashback', '2022-01-27 03:51:33', '2022-01-27 03:51:33'),
(47, 11, 'Cash Back Earnings', 140, 0, 1330, '2022-01-27 09:43:53', 'Cashback', '2022-01-27 04:13:53', '2022-01-27 04:13:53'),
(48, 11, 'Cash Back Earnings', 140, 0, 1470, '2022-01-27 09:51:59', 'Cashback', '2022-01-27 04:21:59', '2022-01-27 04:21:59'),
(49, 11, 'Cash Back Earnings', 140, 0, 1610, '2022-01-27 09:52:00', 'Cashback', '2022-01-27 04:22:00', '2022-01-27 04:22:00'),
(50, 11, 'Cash Back Earnings', 140, 0, 1750, '2022-01-27 09:58:41', 'Cashback', '2022-01-27 04:28:41', '2022-01-27 04:28:41'),
(51, 11, 'Cash Back Earnings', 14000, 0, 15750, '2022-01-27 11:05:20', 'Cashback', '2022-01-27 05:35:20', '2022-01-27 05:35:20'),
(52, 11, 'Cash Back Earnings', 140, 0, 15890, '2022-01-27 11:16:59', 'Cashback', '2022-01-27 05:46:59', '2022-01-27 05:46:59'),
(53, 11, 'Cash Back Earnings', 140, 0, 16030, '2022-01-27 11:17:02', 'Cashback', '2022-01-27 05:47:02', '2022-01-27 05:47:02'),
(54, 11, 'Cash Back Earnings', 140, 0, 16170, '2022-01-27 11:40:48', 'Cashback', '2022-01-27 06:10:48', '2022-01-27 06:10:48'),
(55, 11, 'Cash Back Earnings', 2000, 0, 18170, '2022-01-27 11:46:52', 'Cashback', '2022-01-27 06:16:52', '2022-01-27 06:16:52'),
(56, 11, 'Cash Back Earnings', 14000, 0, 32170, '2022-01-27 11:46:55', 'Cashback', '2022-01-27 06:16:55', '2022-01-27 06:16:55'),
(57, 11, 'Cash Back Earnings', 2000, 0, 34170, '2022-01-27 12:07:50', 'Cashback', '2022-01-27 06:37:50', '2022-01-27 06:37:50'),
(58, 11, 'Cash Back Earnings', 2000, 0, 36170, '2022-01-27 12:07:53', 'Cashback', '2022-01-27 06:37:53', '2022-01-27 06:37:53'),
(59, 11, 'Cash Back Earnings', 2000, 0, 38170, '2022-01-27 12:09:19', 'Cashback', '2022-01-27 06:39:19', '2022-01-27 06:39:19'),
(60, 11, 'Cash Back Earnings', 2000, 0, 40170, '2022-01-27 12:09:20', 'Cashback', '2022-01-27 06:39:20', '2022-01-27 06:39:20'),
(61, 11, 'Cash Back Earnings', 140, 0, 40310, '2022-01-27 12:47:22', 'Cashback', '2022-01-27 07:17:22', '2022-01-27 07:17:22'),
(62, 12, 'Bonus Earnings', 1000, 0, 1000, '2023-10-20 10:47:54', 'Bonus', '2023-10-20 05:17:54', '2023-10-20 05:17:54'),
(63, 13, 'Bonus Earnings', 1000, 0, 1000, '2023-10-20 12:40:48', 'Bonus', '2023-10-20 07:10:48', '2023-10-20 07:10:48'),
(64, 14, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 11:10:31', 'Bonus', '2023-10-23 05:40:31', '2023-10-23 05:40:31'),
(65, 15, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 12:15:08', 'Bonus', '2023-10-23 06:45:08', '2023-10-23 06:45:08'),
(66, 16, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 12:16:11', 'Bonus', '2023-10-23 06:46:11', '2023-10-23 06:46:11'),
(67, 17, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 13:56:16', 'Bonus', '2023-10-23 08:26:16', '2023-10-23 08:26:16'),
(68, 18, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 13:59:57', 'Bonus', '2023-10-23 08:29:57', '2023-10-23 08:29:57'),
(69, 19, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 15:14:46', 'Bonus', '2023-10-23 09:44:46', '2023-10-23 09:44:46'),
(70, 20, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 15:43:59', 'Bonus', '2023-10-23 10:13:59', '2023-10-23 10:13:59'),
(71, 21, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 16:00:59', 'Bonus', '2023-10-23 10:30:59', '2023-10-23 10:30:59'),
(72, 22, 'Bonus Earnings', 1000, 0, 1000, '2023-10-23 16:11:38', 'Bonus', '2023-10-23 10:41:38', '2023-10-23 10:41:38'),
(73, 23, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 04:47:49', 'Bonus', '2023-10-23 23:17:49', '2023-10-23 23:17:49'),
(74, 24, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 07:02:56', 'Bonus', '2023-10-24 01:32:56', '2023-10-24 01:32:56'),
(75, 25, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 07:25:28', 'Bonus', '2023-10-24 01:55:28', '2023-10-24 01:55:28'),
(76, 26, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 14:24:15', 'Bonus', '2023-10-24 08:54:15', '2023-10-24 08:54:15'),
(77, 27, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 14:54:55', 'Bonus', '2023-10-24 09:24:55', '2023-10-24 09:24:55'),
(78, 28, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 15:18:06', 'Bonus', '2023-10-24 09:48:06', '2023-10-24 09:48:06'),
(79, 29, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 15:35:28', 'Bonus', '2023-10-24 10:05:28', '2023-10-24 10:05:28'),
(80, 30, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 15:51:40', 'Bonus', '2023-10-24 10:21:40', '2023-10-24 10:21:40'),
(81, 31, 'Bonus Earnings', 1000, 0, 1000, '2023-10-24 16:07:27', 'Bonus', '2023-10-24 10:37:27', '2023-10-24 10:37:27'),
(82, 32, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 04:36:24', 'Bonus', '2023-10-24 23:06:24', '2023-10-24 23:06:24'),
(83, 33, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 05:07:18', 'Bonus', '2023-10-24 23:37:18', '2023-10-24 23:37:18'),
(84, 34, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 06:59:36', 'Bonus', '2023-10-25 01:29:36', '2023-10-25 01:29:36'),
(85, 35, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 07:24:27', 'Bonus', '2023-10-25 01:54:27', '2023-10-25 01:54:27'),
(86, 36, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 08:39:11', 'Bonus', '2023-10-25 03:09:11', '2023-10-25 03:09:11'),
(87, 37, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 08:43:27', 'Bonus', '2023-10-25 03:13:27', '2023-10-25 03:13:27'),
(88, 38, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 09:02:11', 'Bonus', '2023-10-25 03:32:11', '2023-10-25 03:32:11'),
(89, 39, 'Bonus Earnings', 1000, 0, 1000, '2023-10-25 11:38:15', 'Bonus', '2023-10-25 06:08:15', '2023-10-25 06:08:15'),
(90, 40, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 07:44:23', 'Bonus', '2023-10-26 02:14:23', '2023-10-26 02:14:23'),
(91, 41, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 10:22:00', 'Bonus', '2023-10-26 04:52:00', '2023-10-26 04:52:00'),
(92, 42, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 10:52:36', 'Bonus', '2023-10-26 05:22:36', '2023-10-26 05:22:36'),
(93, 43, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 11:22:17', 'Bonus', '2023-10-26 05:52:17', '2023-10-26 05:52:17'),
(94, 44, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 11:47:18', 'Bonus', '2023-10-26 06:17:18', '2023-10-26 06:17:18'),
(95, 45, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 11:48:28', 'Bonus', '2023-10-26 06:18:28', '2023-10-26 06:18:28'),
(96, 46, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:01:35', 'Bonus', '2023-10-26 06:31:35', '2023-10-26 06:31:35'),
(97, 47, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:31:16', 'Bonus', '2023-10-26 07:01:16', '2023-10-26 07:01:16'),
(98, 48, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:42:51', 'Bonus', '2023-10-26 07:12:51', '2023-10-26 07:12:51'),
(99, 49, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:47:18', 'Bonus', '2023-10-26 07:17:18', '2023-10-26 07:17:18'),
(100, 50, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:48:47', 'Bonus', '2023-10-26 07:18:47', '2023-10-26 07:18:47'),
(101, 51, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 12:54:59', 'Bonus', '2023-10-26 07:24:59', '2023-10-26 07:24:59'),
(102, 52, 'Bonus Earnings', 1000, 0, 1000, '2023-10-26 14:01:10', 'Bonus', '2023-10-26 08:31:10', '2023-10-26 08:31:10'),
(103, 53, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 04:45:44', 'Bonus', '2023-10-26 23:15:44', '2023-10-26 23:15:44'),
(104, 54, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 06:39:40', 'Bonus', '2023-10-27 01:09:40', '2023-10-27 01:09:40'),
(105, 55, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 07:17:24', 'Bonus', '2023-10-27 01:47:24', '2023-10-27 01:47:24'),
(106, 56, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:30:53', 'Bonus', '2023-10-27 03:00:53', '2023-10-27 03:00:53'),
(107, 57, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:34:35', 'Bonus', '2023-10-27 03:04:35', '2023-10-27 03:04:35'),
(108, 58, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:38:02', 'Bonus', '2023-10-27 03:08:02', '2023-10-27 03:08:02'),
(109, 59, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:40:54', 'Bonus', '2023-10-27 03:10:54', '2023-10-27 03:10:54'),
(110, 60, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:42:20', 'Bonus', '2023-10-27 03:12:20', '2023-10-27 03:12:20'),
(111, 61, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 08:49:02', 'Bonus', '2023-10-27 03:19:02', '2023-10-27 03:19:02'),
(112, 62, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 09:00:11', 'Bonus', '2023-10-27 03:30:11', '2023-10-27 03:30:11'),
(113, 63, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 09:07:43', 'Bonus', '2023-10-27 03:37:43', '2023-10-27 03:37:43'),
(114, 64, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 12:44:37', 'Bonus', '2023-10-27 07:14:37', '2023-10-27 07:14:37'),
(115, 65, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 12:47:35', 'Bonus', '2023-10-27 07:17:35', '2023-10-27 07:17:35'),
(116, 66, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 13:02:31', 'Bonus', '2023-10-27 07:32:31', '2023-10-27 07:32:31'),
(117, 67, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 13:09:36', 'Bonus', '2023-10-27 07:39:36', '2023-10-27 07:39:36'),
(118, 68, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 13:54:02', 'Bonus', '2023-10-27 08:24:02', '2023-10-27 08:24:02'),
(119, 69, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:07:05', 'Bonus', '2023-10-27 08:37:05', '2023-10-27 08:37:05'),
(120, 70, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:07:52', 'Bonus', '2023-10-27 08:37:52', '2023-10-27 08:37:52'),
(121, 71, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:16:48', 'Bonus', '2023-10-27 08:46:48', '2023-10-27 08:46:48'),
(122, 72, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 14:50:30', 'Bonus', '2023-10-27 09:20:30', '2023-10-27 09:20:30'),
(123, 73, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 15:30:14', 'Bonus', '2023-10-27 10:00:14', '2023-10-27 10:00:14'),
(124, 74, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 15:42:49', 'Bonus', '2023-10-27 10:12:49', '2023-10-27 10:12:49'),
(125, 75, 'Bonus Earnings', 1000, 0, 1000, '2023-10-27 16:09:55', 'Bonus', '2023-10-27 10:39:55', '2023-10-27 10:39:55'),
(126, 76, 'Bonus Earnings', 1000, 0, 1000, '2023-10-30 05:55:18', 'Bonus', '2023-10-30 00:25:18', '2023-10-30 00:25:18'),
(127, 77, 'Bonus Earnings', 1000, 0, 1000, '2023-12-15 08:42:26', 'Bonus', '2023-12-15 03:12:26', '2023-12-15 03:12:26'),
(128, 78, 'Bonus Earnings', 1000, 0, 1000, '2023-12-18 12:03:08', 'Bonus', '2023-12-18 06:33:08', '2023-12-18 06:33:08'),
(129, 79, 'Bonus Earnings', 1000, 0, 1000, '2023-12-20 08:26:28', 'Bonus', '2023-12-20 02:56:28', '2023-12-20 02:56:28'),
(130, 80, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 06:50:37', 'Bonus', '2023-12-21 01:20:37', '2023-12-21 01:20:37'),
(131, 81, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 08:32:33', 'Bonus', '2023-12-21 03:02:33', '2023-12-21 03:02:33'),
(132, 82, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 09:04:09', 'Bonus', '2023-12-21 03:34:09', '2023-12-21 03:34:09'),
(133, 83, 'Bonus Earnings', 1000, 0, 1000, '2023-12-21 12:18:15', 'Bonus', '2023-12-21 06:48:15', '2023-12-21 06:48:15'),
(134, 84, 'Bonus Earnings', 1000, 0, 1000, '2023-12-28 05:37:06', 'Bonus', '2023-12-28 00:07:06', '2023-12-28 00:07:06'),
(135, 85, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 07:29:27', 'Bonus', '2023-12-29 01:59:27', '2023-12-29 01:59:27'),
(136, 86, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 09:51:46', 'Bonus', '2023-12-29 04:21:46', '2023-12-29 04:21:46'),
(137, 87, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 11:35:38', 'Bonus', '2023-12-29 06:05:38', '2023-12-29 06:05:38'),
(138, 88, 'Bonus Earnings', 1000, 0, 1000, '2023-12-29 12:54:22', 'Bonus', '2023-12-29 07:24:22', '2023-12-29 07:24:22'),
(139, 89, 'Bonus Earnings', 1000, 0, 1000, '2024-01-02 07:30:30', 'Bonus', '2024-01-02 02:00:30', '2024-01-02 02:00:30'),
(140, 90, 'Bonus Earnings', 1000, 0, 1000, '2024-01-02 09:49:51', 'Bonus', '2024-01-02 04:19:51', '2024-01-02 04:19:51'),
(141, 91, 'Bonus Earnings', 1000, 0, 1000, '2024-01-02 11:24:07', 'Bonus', '2024-01-02 05:54:07', '2024-01-02 05:54:07'),
(142, 92, 'Bonus Earnings', 1000, 0, 1000, '2024-01-04 07:44:52', 'Bonus', '2024-01-04 02:14:52', '2024-01-04 02:14:52'),
(143, 93, 'Bonus Earnings', 1000, 0, 1000, '2024-01-04 14:14:14', 'Bonus', '2024-01-04 08:44:14', '2024-01-04 08:44:14'),
(144, 94, 'Bonus Earnings', 1000, 0, 1000, '2024-01-05 04:39:11', 'Bonus', '2024-01-04 23:09:11', '2024-01-04 23:09:11'),
(145, 95, 'Bonus Earnings', 1000, 0, 1000, '2024-01-05 04:54:10', 'Bonus', '2024-01-04 23:24:10', '2024-01-04 23:24:10'),
(146, 96, 'Bonus Earnings', 1000, 0, 1000, '2024-01-05 07:21:10', 'Bonus', '2024-01-05 01:51:10', '2024-01-05 01:51:10'),
(147, 97, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 05:08:08', 'Bonus', '2024-01-07 23:38:08', '2024-01-07 23:38:08'),
(148, 98, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 05:59:06', 'Bonus', '2024-01-08 00:29:06', '2024-01-08 00:29:06'),
(149, 99, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 07:07:11', 'Bonus', '2024-01-08 01:37:11', '2024-01-08 01:37:11'),
(150, 100, 'Bonus Earnings', 1000, 0, 1000, '2024-01-08 08:10:34', 'Bonus', '2024-01-08 02:40:34', '2024-01-08 02:40:34'),
(151, 101, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 12:59:31', 'Bonus', '2024-01-09 07:29:31', '2024-01-09 07:29:31'),
(152, 102, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 13:26:18', 'Bonus', '2024-01-09 07:56:18', '2024-01-09 07:56:18'),
(153, 103, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 13:29:48', 'Bonus', '2024-01-09 07:59:48', '2024-01-09 07:59:48'),
(154, 104, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 13:43:25', 'Bonus', '2024-01-09 08:13:25', '2024-01-09 08:13:25'),
(155, 105, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 14:26:55', 'Bonus', '2024-01-09 08:56:55', '2024-01-09 08:56:55'),
(156, 106, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 15:16:27', 'Bonus', '2024-01-09 09:46:27', '2024-01-09 09:46:27'),
(157, 107, 'Bonus Earnings', 1000, 0, 1000, '2024-01-09 15:28:06', 'Bonus', '2024-01-09 09:58:06', '2024-01-09 09:58:06'),
(158, 108, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 05:30:41', 'Bonus', '2024-01-10 00:00:41', '2024-01-10 00:00:41'),
(159, 109, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 05:44:53', 'Bonus', '2024-01-10 00:14:53', '2024-01-10 00:14:53'),
(160, 110, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 06:55:42', 'Bonus', '2024-01-10 01:25:42', '2024-01-10 01:25:42'),
(161, 111, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 07:02:10', 'Bonus', '2024-01-10 01:32:10', '2024-01-10 01:32:10'),
(162, 112, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 07:05:35', 'Bonus', '2024-01-10 01:35:35', '2024-01-10 01:35:35'),
(163, 113, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 07:57:24', 'Bonus', '2024-01-10 02:27:24', '2024-01-10 02:27:24'),
(164, 114, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 09:15:36', 'Bonus', '2024-01-10 03:45:36', '2024-01-10 03:45:36'),
(165, 115, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 11:12:53', 'Bonus', '2024-01-10 05:42:53', '2024-01-10 05:42:53'),
(166, 116, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 13:09:33', 'Bonus', '2024-01-10 07:39:33', '2024-01-10 07:39:33'),
(167, 117, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 13:18:26', 'Bonus', '2024-01-10 07:48:26', '2024-01-10 07:48:26'),
(168, 118, 'Bonus Earnings', 1000, 0, 1000, '2024-01-10 14:11:31', 'Bonus', '2024-01-10 08:41:31', '2024-01-10 08:41:31'),
(169, 119, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 05:02:21', 'Bonus', '2024-01-10 23:32:21', '2024-01-10 23:32:21'),
(170, 120, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 05:14:22', 'Bonus', '2024-01-10 23:44:22', '2024-01-10 23:44:22'),
(171, 121, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 13:41:58', 'Bonus', '2024-01-11 08:11:58', '2024-01-11 08:11:58'),
(172, 122, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 14:08:17', 'Bonus', '2024-01-11 08:38:17', '2024-01-11 08:38:17'),
(173, 123, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 14:10:53', 'Bonus', '2024-01-11 08:40:53', '2024-01-11 08:40:53'),
(174, 124, 'Bonus Earnings', 1000, 0, 1000, '2024-01-11 15:35:01', 'Bonus', '2024-01-11 10:05:01', '2024-01-11 10:05:01'),
(175, 125, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 04:19:08', 'Bonus', '2024-01-11 22:49:08', '2024-01-11 22:49:08'),
(176, 126, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 05:36:26', 'Bonus', '2024-01-12 00:06:26', '2024-01-12 00:06:26'),
(177, 127, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 05:59:26', 'Bonus', '2024-01-12 00:29:26', '2024-01-12 00:29:26'),
(178, 128, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 07:50:55', 'Bonus', '2024-01-12 02:20:55', '2024-01-12 02:20:55'),
(179, 129, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 08:43:31', 'Bonus', '2024-01-12 03:13:31', '2024-01-12 03:13:31'),
(180, 130, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 10:40:24', 'Bonus', '2024-01-12 05:10:24', '2024-01-12 05:10:24'),
(181, 131, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 10:54:27', 'Bonus', '2024-01-12 05:24:27', '2024-01-12 05:24:27'),
(182, 132, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 11:31:27', 'Bonus', '2024-01-12 06:01:27', '2024-01-12 06:01:27'),
(183, 133, 'Bonus Earnings', 1000, 0, 1000, '2024-01-12 11:32:51', 'Bonus', '2024-01-12 06:02:51', '2024-01-12 06:02:51'),
(184, 134, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 10:04:18', 'Bonus', '2024-01-16 04:34:18', '2024-01-16 04:34:18'),
(185, 135, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 10:29:52', 'Bonus', '2024-01-16 04:59:52', '2024-01-16 04:59:52'),
(186, 136, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 10:35:43', 'Bonus', '2024-01-16 05:05:43', '2024-01-16 05:05:43'),
(187, 137, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 11:22:39', 'Bonus', '2024-01-16 05:52:39', '2024-01-16 05:52:39'),
(188, 138, 'Bonus Earnings', 1000, 0, 1000, '2024-01-16 12:02:48', 'Bonus', '2024-01-16 06:32:48', '2024-01-16 06:32:48'),
(189, 139, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 05:02:35', 'Bonus', '2024-01-16 23:32:35', '2024-01-16 23:32:35'),
(190, 140, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 05:07:47', 'Bonus', '2024-01-16 23:37:47', '2024-01-16 23:37:47'),
(191, 141, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 05:54:44', 'Bonus', '2024-01-17 00:24:44', '2024-01-17 00:24:44'),
(192, 142, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 06:14:14', 'Bonus', '2024-01-17 00:44:14', '2024-01-17 00:44:14'),
(193, 143, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 06:29:26', 'Bonus', '2024-01-17 00:59:26', '2024-01-17 00:59:26'),
(194, 144, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 06:35:12', 'Bonus', '2024-01-17 01:05:12', '2024-01-17 01:05:12'),
(195, 145, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 06:56:18', 'Bonus', '2024-01-17 01:26:18', '2024-01-17 01:26:18'),
(196, 146, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 07:02:19', 'Bonus', '2024-01-17 01:32:19', '2024-01-17 01:32:19'),
(197, 147, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 07:16:20', 'Bonus', '2024-01-17 01:46:20', '2024-01-17 01:46:20'),
(198, 148, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 07:20:51', 'Bonus', '2024-01-17 01:50:51', '2024-01-17 01:50:51'),
(199, 149, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 08:10:36', 'Bonus', '2024-01-17 02:40:36', '2024-01-17 02:40:36'),
(200, 150, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 09:36:42', 'Bonus', '2024-01-17 04:06:42', '2024-01-17 04:06:42'),
(201, 151, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 12:52:13', 'Bonus', '2024-01-17 07:22:13', '2024-01-17 07:22:13'),
(202, 152, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 15:27:04', 'Bonus', '2024-01-17 09:57:04', '2024-01-17 09:57:04'),
(203, 153, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 15:41:04', 'Bonus', '2024-01-17 10:11:04', '2024-01-17 10:11:04'),
(204, 154, 'Bonus Earnings', 1000, 0, 1000, '2024-01-17 15:44:19', 'Bonus', '2024-01-17 10:14:19', '2024-01-17 10:14:19'),
(205, 155, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 06:19:34', 'Bonus', '2024-01-18 00:49:34', '2024-01-18 00:49:34'),
(206, 156, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 07:30:22', 'Bonus', '2024-01-18 02:00:22', '2024-01-18 02:00:22'),
(207, 157, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 07:51:44', 'Bonus', '2024-01-18 02:21:44', '2024-01-18 02:21:44'),
(208, 158, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 08:20:46', 'Bonus', '2024-01-18 02:50:46', '2024-01-18 02:50:46'),
(209, 159, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 09:35:42', 'Bonus', '2024-01-18 04:05:42', '2024-01-18 04:05:42'),
(210, 160, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 09:50:50', 'Bonus', '2024-01-18 04:20:50', '2024-01-18 04:20:50'),
(211, 161, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 09:58:02', 'Bonus', '2024-01-18 04:28:02', '2024-01-18 04:28:02'),
(212, 162, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 10:06:56', 'Bonus', '2024-01-18 04:36:56', '2024-01-18 04:36:56'),
(213, 163, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 10:11:46', 'Bonus', '2024-01-18 04:41:46', '2024-01-18 04:41:46'),
(214, 164, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 10:15:55', 'Bonus', '2024-01-18 04:45:55', '2024-01-18 04:45:55'),
(215, 165, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 10:25:40', 'Bonus', '2024-01-18 04:55:40', '2024-01-18 04:55:40'),
(216, 166, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 10:29:32', 'Bonus', '2024-01-18 04:59:32', '2024-01-18 04:59:32'),
(217, 167, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 11:02:51', 'Bonus', '2024-01-18 05:32:51', '2024-01-18 05:32:51'),
(218, 168, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 11:09:26', 'Bonus', '2024-01-18 05:39:26', '2024-01-18 05:39:26'),
(219, 169, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 11:13:18', 'Bonus', '2024-01-18 05:43:18', '2024-01-18 05:43:18'),
(220, 170, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 11:29:47', 'Bonus', '2024-01-18 05:59:47', '2024-01-18 05:59:47'),
(221, 171, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 11:42:59', 'Bonus', '2024-01-18 06:12:59', '2024-01-18 06:12:59'),
(222, 172, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 12:00:57', 'Bonus', '2024-01-18 06:30:57', '2024-01-18 06:30:57'),
(223, 173, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 13:19:59', 'Bonus', '2024-01-18 07:49:59', '2024-01-18 07:49:59'),
(224, 174, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 13:35:01', 'Bonus', '2024-01-18 08:05:01', '2024-01-18 08:05:01'),
(225, 175, 'Bonus Earnings', 1000, 0, 1000, '2024-01-18 13:40:06', 'Bonus', '2024-01-18 08:10:06', '2024-01-18 08:10:06'),
(226, 176, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 05:23:49', 'Bonus', '2024-01-18 23:53:49', '2024-01-18 23:53:49'),
(227, 177, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 06:39:16', 'Bonus', '2024-01-19 01:09:16', '2024-01-19 01:09:16'),
(228, 178, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 08:47:52', 'Bonus', '2024-01-19 03:17:52', '2024-01-19 03:17:52'),
(229, 179, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 09:04:29', 'Bonus', '2024-01-19 03:34:29', '2024-01-19 03:34:29'),
(230, 180, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 09:31:07', 'Bonus', '2024-01-19 04:01:07', '2024-01-19 04:01:07'),
(231, 181, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 09:44:54', 'Bonus', '2024-01-19 04:14:54', '2024-01-19 04:14:54'),
(232, 182, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 11:58:24', 'Bonus', '2024-01-19 06:28:24', '2024-01-19 06:28:24'),
(233, 183, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 12:02:04', 'Bonus', '2024-01-19 06:32:04', '2024-01-19 06:32:04'),
(234, 184, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 12:05:33', 'Bonus', '2024-01-19 06:35:33', '2024-01-19 06:35:33'),
(235, 185, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 12:27:49', 'Bonus', '2024-01-19 06:57:49', '2024-01-19 06:57:49'),
(236, 186, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 12:46:37', 'Bonus', '2024-01-19 07:16:37', '2024-01-19 07:16:37'),
(237, 187, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 12:52:52', 'Bonus', '2024-01-19 07:22:52', '2024-01-19 07:22:52'),
(238, 188, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 13:18:39', 'Bonus', '2024-01-19 07:48:39', '2024-01-19 07:48:39'),
(239, 189, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 14:23:37', 'Bonus', '2024-01-19 08:53:37', '2024-01-19 08:53:37'),
(240, 190, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 14:30:38', 'Bonus', '2024-01-19 09:00:38', '2024-01-19 09:00:38'),
(241, 191, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 14:38:51', 'Bonus', '2024-01-19 09:08:51', '2024-01-19 09:08:51'),
(242, 192, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 14:53:57', 'Bonus', '2024-01-19 09:23:57', '2024-01-19 09:23:57'),
(243, 193, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 15:03:27', 'Bonus', '2024-01-19 09:33:27', '2024-01-19 09:33:27'),
(244, 194, 'Bonus Earnings', 1000, 0, 1000, '2024-01-19 16:12:46', 'Bonus', '2024-01-19 10:42:46', '2024-01-19 10:42:46'),
(245, 195, 'Bonus Earnings', 1000, 0, 1000, '2024-01-20 07:15:16', 'Bonus', '2024-01-20 01:45:16', '2024-01-20 01:45:16'),
(246, 196, 'Bonus Earnings', 1000, 0, 1000, '2024-01-20 07:19:24', 'Bonus', '2024-01-20 01:49:24', '2024-01-20 01:49:24'),
(247, 197, 'Bonus Earnings', 1000, 0, 1000, '2024-01-20 07:25:26', 'Bonus', '2024-01-20 01:55:26', '2024-01-20 01:55:26'),
(248, 198, 'Bonus Earnings', 1000, 0, 1000, '2024-01-20 08:53:52', 'Bonus', '2024-01-20 03:23:52', '2024-01-20 03:23:52'),
(249, 199, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 05:52:48', 'Bonus', '2024-01-22 00:22:48', '2024-01-22 00:22:48'),
(250, 200, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 10:36:35', 'Bonus', '2024-01-22 05:06:35', '2024-01-22 05:06:35'),
(251, 201, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 10:53:12', 'Bonus', '2024-01-22 05:23:12', '2024-01-22 05:23:12'),
(252, 202, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 11:06:02', 'Bonus', '2024-01-22 05:36:02', '2024-01-22 05:36:02'),
(253, 203, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 11:36:06', 'Bonus', '2024-01-22 06:06:06', '2024-01-22 06:06:06'),
(254, 204, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 11:39:14', 'Bonus', '2024-01-22 06:09:14', '2024-01-22 06:09:14'),
(255, 205, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 11:39:38', 'Bonus', '2024-01-22 06:09:38', '2024-01-22 06:09:38'),
(256, 206, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 12:34:11', 'Bonus', '2024-01-22 07:04:11', '2024-01-22 07:04:11'),
(257, 207, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 12:45:12', 'Bonus', '2024-01-22 07:15:12', '2024-01-22 07:15:12'),
(258, 208, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 12:47:54', 'Bonus', '2024-01-22 07:17:54', '2024-01-22 07:17:54'),
(259, 209, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 12:53:07', 'Bonus', '2024-01-22 07:23:07', '2024-01-22 07:23:07'),
(260, 210, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 12:53:10', 'Bonus', '2024-01-22 07:23:10', '2024-01-22 07:23:10'),
(261, 211, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 12:53:11', 'Bonus', '2024-01-22 07:23:11', '2024-01-22 07:23:11'),
(262, 212, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 12:58:27', 'Bonus', '2024-01-22 07:28:27', '2024-01-22 07:28:27'),
(263, 213, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 13:10:56', 'Bonus', '2024-01-22 07:40:56', '2024-01-22 07:40:56'),
(264, 214, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 13:15:09', 'Bonus', '2024-01-22 07:45:09', '2024-01-22 07:45:09'),
(265, 215, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 13:17:17', 'Bonus', '2024-01-22 07:47:17', '2024-01-22 07:47:17'),
(266, 216, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 14:41:20', 'Bonus', '2024-01-22 09:11:20', '2024-01-22 09:11:20'),
(267, 217, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 14:55:38', 'Bonus', '2024-01-22 09:25:38', '2024-01-22 09:25:38'),
(268, 218, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 15:03:24', 'Bonus', '2024-01-22 09:33:24', '2024-01-22 09:33:24'),
(269, 219, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 15:09:02', 'Bonus', '2024-01-22 09:39:02', '2024-01-22 09:39:02'),
(270, 220, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 15:16:17', 'Bonus', '2024-01-22 09:46:17', '2024-01-22 09:46:17'),
(271, 221, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 15:29:23', 'Bonus', '2024-01-22 09:59:23', '2024-01-22 09:59:23'),
(272, 222, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 15:30:50', 'Bonus', '2024-01-22 10:00:50', '2024-01-22 10:00:50'),
(273, 223, 'Bonus Earnings', 1000, 0, 1000, '2024-01-22 15:33:42', 'Bonus', '2024-01-22 10:03:42', '2024-01-22 10:03:42'),
(274, 224, 'Bonus Earnings', 1000, 0, 1000, '2024-01-23 05:24:09', 'Bonus', '2024-01-22 23:54:09', '2024-01-22 23:54:09'),
(275, 225, 'Bonus Earnings', 1000, 0, 1000, '2024-01-24 05:35:33', 'Bonus', '2024-01-24 00:05:33', '2024-01-24 00:05:33'),
(276, 226, 'Bonus Earnings', 1000, 0, 1000, '2024-01-24 05:37:29', 'Bonus', '2024-01-24 00:07:29', '2024-01-24 00:07:29'),
(277, 227, 'Bonus Earnings', 1000, 0, 1000, '2024-01-24 05:38:49', 'Bonus', '2024-01-24 00:08:49', '2024-01-24 00:08:49'),
(278, 228, 'Bonus Earnings', 1000, 0, 1000, '2024-01-24 05:41:12', 'Bonus', '2024-01-24 00:11:12', '2024-01-24 00:11:12'),
(279, 229, 'Bonus Earnings', 1000, 0, 1000, '2024-01-25 06:59:08', 'Bonus', '2024-01-25 01:29:08', '2024-01-25 01:29:08'),
(280, 230, 'Bonus Earnings', 1000, 0, 1000, '2024-01-29 08:25:45', 'Bonus', '2024-01-29 02:55:45', '2024-01-29 02:55:45'),
(281, 231, 'Bonus Earnings', 1000, 0, 1000, '2024-01-29 13:05:52', 'Bonus', '2024-01-29 07:35:52', '2024-01-29 07:35:52'),
(282, 232, 'Bonus Earnings', 1000, 0, 1000, '2024-01-29 13:13:54', 'Bonus', '2024-01-29 07:43:54', '2024-01-29 07:43:54'),
(283, 233, 'Bonus Earnings', 1000, 0, 1000, '2024-01-29 13:23:48', 'Bonus', '2024-01-29 07:53:48', '2024-01-29 07:53:48'),
(284, 234, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 04:55:26', 'Bonus', '2024-01-29 23:25:26', '2024-01-29 23:25:26'),
(285, 235, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 06:08:16', 'Bonus', '2024-01-30 00:38:16', '2024-01-30 00:38:16'),
(286, 236, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 11:35:38', 'Bonus', '2024-01-30 06:05:38', '2024-01-30 06:05:38'),
(287, 237, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 11:39:58', 'Bonus', '2024-01-30 06:09:58', '2024-01-30 06:09:58'),
(288, 238, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 13:20:07', 'Bonus', '2024-01-30 07:50:07', '2024-01-30 07:50:07'),
(289, 239, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 14:27:17', 'Bonus', '2024-01-30 08:57:17', '2024-01-30 08:57:17'),
(290, 240, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 15:07:31', 'Bonus', '2024-01-30 09:37:31', '2024-01-30 09:37:31'),
(291, 241, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 15:11:05', 'Bonus', '2024-01-30 09:41:05', '2024-01-30 09:41:05'),
(292, 242, 'Bonus Earnings', 1000, 0, 1000, '2024-01-30 15:35:30', 'Bonus', '2024-01-30 10:05:30', '2024-01-30 10:05:30'),
(293, 243, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 05:14:33', 'Bonus', '2024-01-30 23:44:33', '2024-01-30 23:44:33'),
(294, 244, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 05:24:17', 'Bonus', '2024-01-30 23:54:17', '2024-01-30 23:54:17'),
(295, 245, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 05:29:18', 'Bonus', '2024-01-30 23:59:18', '2024-01-30 23:59:18'),
(296, 246, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 05:42:05', 'Bonus', '2024-01-31 00:12:05', '2024-01-31 00:12:05'),
(297, 247, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 06:28:46', 'Bonus', '2024-01-31 00:58:46', '2024-01-31 00:58:46'),
(298, 248, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 06:33:23', 'Bonus', '2024-01-31 01:03:23', '2024-01-31 01:03:23'),
(299, 249, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 06:47:32', 'Bonus', '2024-01-31 01:17:32', '2024-01-31 01:17:32'),
(300, 250, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 06:54:06', 'Bonus', '2024-01-31 01:24:06', '2024-01-31 01:24:06'),
(301, 251, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 07:40:45', 'Bonus', '2024-01-31 02:10:45', '2024-01-31 02:10:45'),
(302, 252, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 09:53:36', 'Bonus', '2024-01-31 04:23:36', '2024-01-31 04:23:36'),
(303, 253, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 09:55:43', 'Bonus', '2024-01-31 04:25:43', '2024-01-31 04:25:43'),
(304, 254, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 09:59:47', 'Bonus', '2024-01-31 04:29:47', '2024-01-31 04:29:47'),
(305, 255, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 10:54:34', 'Bonus', '2024-01-31 05:24:34', '2024-01-31 05:24:34'),
(306, 256, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 12:43:39', 'Bonus', '2024-01-31 07:13:39', '2024-01-31 07:13:39'),
(307, 257, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 12:44:45', 'Bonus', '2024-01-31 07:14:45', '2024-01-31 07:14:45'),
(308, 258, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 12:49:54', 'Bonus', '2024-01-31 07:19:54', '2024-01-31 07:19:54'),
(309, 259, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 12:51:52', 'Bonus', '2024-01-31 07:21:52', '2024-01-31 07:21:52'),
(310, 260, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 12:53:21', 'Bonus', '2024-01-31 07:23:21', '2024-01-31 07:23:21'),
(311, 261, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 13:06:17', 'Bonus', '2024-01-31 07:36:17', '2024-01-31 07:36:17'),
(312, 262, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 13:06:33', 'Bonus', '2024-01-31 07:36:33', '2024-01-31 07:36:33'),
(313, 263, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 13:45:18', 'Bonus', '2024-01-31 08:15:18', '2024-01-31 08:15:18'),
(314, 264, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 14:03:19', 'Bonus', '2024-01-31 08:33:19', '2024-01-31 08:33:19'),
(315, 265, 'Bonus Earnings', 1000, 0, 1000, '2024-01-31 14:21:30', 'Bonus', '2024-01-31 08:51:30', '2024-01-31 08:51:30'),
(316, 266, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 05:01:50', 'Bonus', '2024-01-31 23:31:50', '2024-01-31 23:31:50'),
(317, 267, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 05:34:31', 'Bonus', '2024-02-01 00:04:31', '2024-02-01 00:04:31'),
(318, 268, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 05:47:49', 'Bonus', '2024-02-01 00:17:49', '2024-02-01 00:17:49'),
(319, 269, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 06:07:07', 'Bonus', '2024-02-01 00:37:07', '2024-02-01 00:37:07'),
(320, 270, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 06:19:44', 'Bonus', '2024-02-01 00:49:44', '2024-02-01 00:49:44'),
(321, 271, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 06:21:41', 'Bonus', '2024-02-01 00:51:41', '2024-02-01 00:51:41'),
(322, 272, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 06:29:46', 'Bonus', '2024-02-01 00:59:46', '2024-02-01 00:59:46'),
(323, 273, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 08:05:55', 'Bonus', '2024-02-01 02:35:55', '2024-02-01 02:35:55'),
(324, 274, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 08:21:16', 'Bonus', '2024-02-01 02:51:16', '2024-02-01 02:51:16'),
(325, 275, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 10:06:31', 'Bonus', '2024-02-01 04:36:31', '2024-02-01 04:36:31'),
(326, 276, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 10:25:45', 'Bonus', '2024-02-01 04:55:45', '2024-02-01 04:55:45'),
(327, 277, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 10:34:22', 'Bonus', '2024-02-01 05:04:22', '2024-02-01 05:04:22'),
(328, 278, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 10:37:06', 'Bonus', '2024-02-01 05:07:06', '2024-02-01 05:07:06'),
(329, 279, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 10:55:33', 'Bonus', '2024-02-01 05:25:33', '2024-02-01 05:25:33'),
(330, 280, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 10:56:13', 'Bonus', '2024-02-01 05:26:13', '2024-02-01 05:26:13'),
(331, 281, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 11:09:55', 'Bonus', '2024-02-01 05:39:55', '2024-02-01 05:39:55'),
(332, 282, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 11:19:09', 'Bonus', '2024-02-01 05:49:09', '2024-02-01 05:49:09'),
(333, 283, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 11:23:22', 'Bonus', '2024-02-01 05:53:22', '2024-02-01 05:53:22'),
(334, 284, 'Bonus Earnings', 1000, 0, 1000, '2024-02-01 11:42:58', 'Bonus', '2024-02-01 06:12:58', '2024-02-01 06:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `venue_user_id` int UNSIGNED DEFAULT NULL,
  `venu_id` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_and_time` datetime NOT NULL,
  `cashback_earned` double NOT NULL DEFAULT '0',
  `cashback_percentage` double NOT NULL DEFAULT '0',
  `redeemed_amount` double NOT NULL DEFAULT '0',
  `total_bill_amount` double NOT NULL DEFAULT '0',
  `pay_bill_amount` double NOT NULL DEFAULT '0',
  `check_amount_pos` double DEFAULT '0',
  `is_cross_verify` int NOT NULL DEFAULT '0',
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_product_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `user_id`, `venue_user_id`, `venu_id`, `description`, `date_and_time`, `cashback_earned`, `cashback_percentage`, `redeemed_amount`, `total_bill_amount`, `pay_bill_amount`, `check_amount_pos`, `is_cross_verify`, `invoice_number`, `offer_product_ids`, `cashier_name`, `created_at`, `updated_at`, `deleted_at`, `updated_by`, `created_by`) VALUES
(1, 1, 1, 1, 'Cash Back Earnings', '2021-11-12 19:05:43', 10, 10, 0, 100, 100, 100, 1, 'ncnchchc', '1', 'Admin', '2021-11-12 13:35:43', '2021-11-12 13:47:21', NULL, 'Admin', 'Admin'),
(2, 1, 1, 1, 'Cash Back Earnings', '2021-11-12 19:12:17', 10, 10, 0, 100, 100, 100, 1, 'dgdgdg', NULL, 'Admin', '2021-11-12 13:42:17', '2021-11-12 14:24:29', NULL, 'Admin', 'Admin'),
(3, 2, 1, 1, 'Cash Back Earnings', '2021-11-12 19:15:16', 10, 10, 0, 100, 100, 100, 1, 'hispec', NULL, 'Admin', '2021-11-12 13:45:16', '2021-11-12 13:46:21', NULL, 'Admin', 'Admin'),
(4, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 19:55:04', 20, 20, 0, 100, 100, 100, 1, 'kamal', NULL, 'Admin', '2021-11-12 14:25:04', '2021-11-12 14:26:36', NULL, 'Admin', 'Admin'),
(5, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 19:57:23', 20, 20, 0, 100, 100, 100, 1, 'karan', NULL, 'Admin', '2021-11-12 14:27:23', '2021-11-12 14:28:27', '2021-11-12 14:28:27', 'Admin', 'Admin'),
(6, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 19:58:55', 20, 20, 0, 100, 100, 100, 1, 'he', NULL, 'Admin', '2021-11-12 14:28:55', '2022-01-19 05:22:12', NULL, 'Nadeer', 'Admin'),
(7, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 20:16:12', 20, 20, 0, 100, 100, 100, 1, 'approve', NULL, 'Admin', '2021-11-12 14:46:12', '2022-01-19 05:22:11', NULL, 'Nadeer', 'Admin'),
(8, 1, 2, 1, 'Cash Back Earnings', '2021-11-12 20:17:47', 20, 20, 0, 100, 100, 100, 1, 'kamalkhan', '1', 'Admin', '2021-11-12 14:47:47', '2022-01-19 05:22:08', NULL, 'Nadeer', 'Admin'),
(9, 9, 5, 7, 'Cash Back Earnings', '2021-11-12 20:19:03', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2021-11-12 14:49:03', '2021-11-12 14:49:22', NULL, 'Admin', 'Admin'),
(10, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:19:03', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 14:49:03', '2022-01-25 14:49:03', NULL, 'Admin', 'Admin'),
(11, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(12, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(13, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(14, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(15, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(16, 9, 5, 7, 'Cash Back Earnings', '2022-01-25 20:40:10', 20, 20, 100, 100, 0, 100, 1, 'test', NULL, 'Admin', '2022-01-25 15:10:10', '2022-01-25 15:10:10', NULL, 'Admin', 'Admin'),
(17, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:23:57', 70, 10, 500, 700, 200, 700, 1, 'testing_purpose', '[]', 'Admin', '2022-01-27 00:53:57', '2022-01-27 03:16:30', NULL, 'Nadeer', 'Admin'),
(18, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:25:55', 70, 10, 500, 700, 200, 700, 1, 'testing_purpose2', '[]', 'Admin', '2022-01-27 00:55:55', '2022-01-27 03:16:29', NULL, 'Nadeer', 'Admin'),
(19, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:28:58', 70, 10, 0, 700, 700, 700, 1, 'testing_purpose02', '[]', 'Admin', '2022-01-27 00:58:58', '2022-01-27 03:16:28', NULL, 'Nadeer', 'Admin'),
(20, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 06:32:14', 70, 10, 0, 700, 700, 700, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:02:14', '2022-01-27 03:16:25', NULL, 'Nadeer', 'Admin'),
(21, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:08:55', 70, 10, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:38:55', '2022-01-27 01:38:55', NULL, 'Admin', 'Admin'),
(22, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:14:37', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:44:37', '2022-01-27 01:44:37', NULL, 'Admin', 'Admin'),
(23, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:19:09', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:49:09', '2022-01-27 01:49:09', NULL, 'Admin', 'Admin'),
(24, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 07:20:47', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 01:50:47', '2022-01-27 01:50:47', NULL, 'Admin', 'Admin'),
(25, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 08:35:52', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 03:05:52', '2022-01-27 03:05:52', NULL, 'Admin', 'Admin'),
(26, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 09:21:19', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 03:51:19', '2022-01-27 03:51:19', NULL, 'Admin', 'Admin'),
(27, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 09:21:33', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 03:51:33', '2022-01-27 03:51:33', NULL, 'Admin', 'Admin'),
(28, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:21:56', 140, 20, 0, 700, 700, 700, 1, 'verify', '[]', 'Admin', '2022-01-27 03:51:56', '2022-01-27 04:13:53', NULL, 'Nadeer', 'Admin'),
(29, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:48:13', 140, 20, 0, 700, 700, 700, 1, 'verify2', '[]', 'Admin', '2022-01-27 04:18:13', '2022-01-27 04:22:00', NULL, 'Nadeer', 'Admin'),
(30, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:48:19', 140, 20, 0, 700, 700, 700, 1, 'verify3', '[]', 'Admin', '2022-01-27 04:18:19', '2022-01-27 04:21:59', NULL, 'Nadeer', 'Admin'),
(31, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:48:26', 140, 20, 0, 700, 700, 700, 1, 'verify4', '[]', 'Admin', '2022-01-27 04:18:26', '2022-01-27 04:28:41', NULL, 'Nadeer', 'Admin'),
(32, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:59:09', 140, 20, 0, 700, 700, 700, 1, 'verify5', '[]', 'Admin', '2022-01-27 04:29:09', '2022-01-27 05:47:02', NULL, 'Nadeer', 'Admin'),
(33, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 09:59:16', 140, 20, 0, 700, 700, 700, 1, 'verify6', '[]', 'Admin', '2022-01-27 04:29:16', '2022-01-27 05:46:59', NULL, 'Nadeer', 'Admin'),
(34, 11, 5, 1, 'Cash Back Earnings', '2022-01-26 23:01:53', 140, 20, 0, 700, 700, 700, 1, 'verify7', '[]', 'Admin', '2022-01-27 05:31:53', '2022-01-27 06:10:48', NULL, 'Nadeer', 'Admin'),
(35, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:04:24', 14000, 20, 0, 70000, 70000, 70000, 1, 'verify8', '[]', 'Admin', '2022-01-27 05:34:24', '2022-01-27 05:35:20', NULL, 'Nadeer', 'Admin'),
(36, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:42:45', 14000, 20, 0, 70000, 70000, 70000, 1, 'verify9', '[]', 'Admin', '2022-01-27 06:12:45', '2022-01-27 06:16:55', NULL, 'Nadeer', 'Admin'),
(37, 11, 5, 1, 'Cash Back Earnings', '2022-01-26 11:42:52', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify10', '[]', 'Admin', '2022-01-27 06:12:52', '2022-01-27 06:16:52', NULL, 'Nadeer', 'Admin'),
(38, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:47:22', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify11', '[]', 'Admin', '2022-01-27 06:17:22', '2022-01-27 06:37:53', NULL, 'Nadeer', 'Admin'),
(39, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 11:47:29', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify12', '[]', 'Admin', '2022-01-27 06:17:29', '2022-01-27 06:37:50', NULL, 'Nadeer', 'Admin'),
(40, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:08:12', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify13', '[]', 'Admin', '2022-01-27 06:38:12', '2022-01-27 06:39:20', NULL, 'Nadeer', 'Admin'),
(41, 11, 5, 1, 'Cash Back Earnings', '2022-01-26 23:08:20', 2000, 20, 0, 10000, 10000, 10000, 1, 'verify14', '[]', 'Admin', '2022-01-27 06:38:20', '2022-01-27 06:39:18', NULL, 'Nadeer', 'Admin'),
(42, 11, NULL, 1, 'Cash Back Earnings', '2022-01-27 12:47:22', 140, 20, 0, 700, 700, 0, 1, 'testing_purpose011', '[]', 'Admin', '2022-01-27 07:17:22', '2022-01-27 07:17:22', NULL, 'Admin', 'Admin'),
(43, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:47:43', 2000, 20, 0, 10000, 10000, 0, 0, 'verify15', '[]', 'Admin', '2022-01-27 07:17:43', '2022-01-27 07:17:43', NULL, 'Admin', 'Admin'),
(44, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:55:52', 2000, 20, 0, 10000, 10000, 0, 0, 'verify16', '[]', 'Admin', '2022-01-27 07:25:52', '2022-01-27 07:25:52', NULL, 'Admin', 'Admin'),
(45, 11, 5, 1, 'Cash Back Earnings', '2022-01-27 12:56:25', 2000, 20, 0, 10000, 10000, 0, 0, 'verify17', '[]', 'Admin', '2022-01-27 07:26:25', '2022-01-27 07:26:25', NULL, 'Admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_friends`
--
ALTER TABLE `add_friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_criteria_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_admin_id_foreign` (`admin_id`),
  ADD KEY `events_venu_id_foreign` (`venu_id`);

--
-- Indexes for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_sent_notifications_user_id_foreign` (`user_id`),
  ADD KEY `event_sent_notifications_event_id_foreign` (`event_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_poses`
--
ALTER TABLE `login_poses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_venues`
--
ALTER TABLE `new_venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti_records`
--
ALTER TABLE `noti_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noti_records_user_id_foreign` (`user_id`);

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
-- Indexes for table `user_venue_favorites`
--
ALTER TABLE `user_venue_favorites`
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
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`),
  ADD KEY `wallet_transactions_venue_user_id_foreign` (`venue_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_friends`
--
ALTER TABLE `add_friends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `application_datas`
--
ALTER TABLE `application_datas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `application_images`
--
ALTER TABLE `application_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assign_badges`
--
ALTER TABLE `assign_badges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `assign_user_venues`
--
ALTER TABLE `assign_user_venues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cashbacks`
--
ALTER TABLE `cashbacks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_poses`
--
ALTER TABLE `login_poses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_requests`
--
ALTER TABLE `login_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `new_venues`
--
ALTER TABLE `new_venues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noti_records`
--
ALTER TABLE `noti_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `offer_settings`
--
ALTER TABLE `offer_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=848;

--
-- AUTO_INCREMENT for table `tier_conditions`
--
ALTER TABLE `tier_conditions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tier_settings`
--
ALTER TABLE `tier_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `user_assign_offers`
--
ALTER TABLE `user_assign_offers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `user_venue_favorites`
--
ALTER TABLE `user_venue_favorites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `venue_users`
--
ALTER TABLE `venue_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `venus`
--
ALTER TABLE `venus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wallet_cashbacks`
--
ALTER TABLE `wallet_cashbacks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_criteria_notifications`
--
ALTER TABLE `admin_criteria_notifications`
  ADD CONSTRAINT `admin_criteria_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `event_sent_notifications`
--
ALTER TABLE `event_sent_notifications`
  ADD CONSTRAINT `event_sent_notifications_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_sent_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `login_requests`
--
ALTER TABLE `login_requests`
  ADD CONSTRAINT `login_requests_venu_id_foreign` FOREIGN KEY (`venu_id`) REFERENCES `venus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_requests_venue_user_id_foreign` FOREIGN KEY (`venue_user_id`) REFERENCES `venue_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noti_records`
--
ALTER TABLE `noti_records`
  ADD CONSTRAINT `noti_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wallet_transactions_venue_user_id_foreign` FOREIGN KEY (`venue_user_id`) REFERENCES `venue_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
