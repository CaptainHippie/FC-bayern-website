-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2023 at 10:11 PM
-- Server version: 10.6.11-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fc_bayern`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Content Creators'),
(3, 'Customer Service'),
(2, 'Matchday Admin'),
(4, 'Shop Handler');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 33),
(2, 1, 34),
(3, 1, 35),
(4, 1, 36),
(17, 1, 65),
(18, 1, 66),
(19, 1, 67),
(20, 1, 68),
(74, 1, 141),
(75, 1, 142),
(76, 1, 143),
(73, 1, 144),
(5, 1, 169),
(6, 1, 170),
(7, 1, 171),
(8, 1, 172),
(13, 1, 177),
(14, 1, 178),
(15, 1, 179),
(16, 1, 180),
(45, 2, 45),
(46, 2, 46),
(47, 2, 47),
(48, 2, 48),
(57, 2, 81),
(58, 2, 82),
(59, 2, 83),
(60, 2, 84),
(61, 2, 85),
(62, 2, 86),
(63, 2, 87),
(64, 2, 88),
(65, 2, 101),
(66, 2, 102),
(67, 2, 103),
(68, 2, 104),
(69, 2, 105),
(70, 2, 106),
(71, 2, 107),
(72, 2, 108),
(29, 2, 137),
(30, 2, 138),
(31, 2, 139),
(32, 2, 140),
(33, 2, 149),
(34, 2, 150),
(35, 2, 151),
(36, 2, 152),
(37, 2, 153),
(38, 2, 154),
(39, 2, 155),
(40, 2, 156),
(41, 2, 157),
(42, 2, 158),
(43, 2, 159),
(44, 2, 160),
(49, 2, 189),
(50, 2, 190),
(51, 2, 191),
(52, 2, 192),
(53, 2, 193),
(54, 2, 194),
(55, 2, 195),
(56, 2, 196),
(98, 3, 69),
(94, 3, 70),
(99, 3, 71),
(100, 3, 72),
(101, 3, 113),
(102, 3, 114),
(103, 3, 115),
(104, 3, 116),
(77, 3, 133),
(78, 3, 134),
(79, 3, 135),
(80, 3, 136),
(81, 3, 145),
(82, 3, 146),
(83, 3, 147),
(84, 3, 148),
(85, 3, 173),
(86, 3, 174),
(87, 3, 175),
(88, 3, 176),
(89, 3, 189),
(90, 3, 190),
(91, 3, 191),
(92, 3, 192),
(93, 3, 197),
(95, 3, 198),
(96, 3, 199),
(97, 3, 200),
(110, 4, 49),
(111, 4, 50),
(112, 4, 51),
(113, 4, 52),
(114, 4, 53),
(115, 4, 54),
(116, 4, 55),
(117, 4, 56),
(118, 4, 57),
(119, 4, 58),
(120, 4, 59),
(121, 4, 60),
(122, 4, 125),
(123, 4, 126),
(124, 4, 127),
(105, 4, 128),
(106, 4, 129),
(107, 4, 130),
(108, 4, 131),
(109, 4, 132);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add article_type', 7, 'add_article_type'),
(26, 'Can change article_type', 7, 'change_article_type'),
(27, 'Can delete article_type', 7, 'delete_article_type'),
(28, 'Can view article_type', 7, 'view_article_type'),
(29, 'Can add bayern', 8, 'add_bayern'),
(30, 'Can change bayern', 8, 'change_bayern'),
(31, 'Can delete bayern', 8, 'delete_bayern'),
(32, 'Can view bayern', 8, 'view_bayern'),
(33, 'Can add club_ album', 9, 'add_club_album'),
(34, 'Can change club_ album', 9, 'change_club_album'),
(35, 'Can delete club_ album', 9, 'delete_club_album'),
(36, 'Can view club_ album', 9, 'view_club_album'),
(37, 'Can add competition', 10, 'add_competition'),
(38, 'Can change competition', 10, 'change_competition'),
(39, 'Can delete competition', 10, 'delete_competition'),
(40, 'Can view competition', 10, 'view_competition'),
(41, 'Can add user', 11, 'add_customuser'),
(42, 'Can change user', 11, 'change_customuser'),
(43, 'Can delete user', 11, 'delete_customuser'),
(44, 'Can view user', 11, 'view_customuser'),
(45, 'Can add match_event', 12, 'add_match_event'),
(46, 'Can change match_event', 12, 'change_match_event'),
(47, 'Can delete match_event', 12, 'delete_match_event'),
(48, 'Can view match_event', 12, 'view_match_event'),
(49, 'Can add merchandise', 13, 'add_merchandise'),
(50, 'Can change merchandise', 13, 'change_merchandise'),
(51, 'Can delete merchandise', 13, 'delete_merchandise'),
(52, 'Can view merchandise', 13, 'view_merchandise'),
(53, 'Can add merchandise_ size', 14, 'add_merchandise_size'),
(54, 'Can change merchandise_ size', 14, 'change_merchandise_size'),
(55, 'Can delete merchandise_ size', 14, 'delete_merchandise_size'),
(56, 'Can view merchandise_ size', 14, 'view_merchandise_size'),
(57, 'Can add merchandise_ type', 15, 'add_merchandise_type'),
(58, 'Can change merchandise_ type', 15, 'change_merchandise_type'),
(59, 'Can delete merchandise_ type', 15, 'delete_merchandise_type'),
(60, 'Can view merchandise_ type', 15, 'view_merchandise_type'),
(61, 'Can add nationality', 16, 'add_nationality'),
(62, 'Can change nationality', 16, 'change_nationality'),
(63, 'Can delete nationality', 16, 'delete_nationality'),
(64, 'Can view nationality', 16, 'view_nationality'),
(65, 'Can add news_article', 17, 'add_news_article'),
(66, 'Can change news_article', 17, 'change_news_article'),
(67, 'Can delete news_article', 17, 'delete_news_article'),
(68, 'Can view news_article', 17, 'view_news_article'),
(69, 'Can add order', 18, 'add_order'),
(70, 'Can change order', 18, 'change_order'),
(71, 'Can delete order', 18, 'delete_order'),
(72, 'Can view order', 18, 'view_order'),
(73, 'Can add player', 19, 'add_player'),
(74, 'Can change player', 19, 'change_player'),
(75, 'Can delete player', 19, 'delete_player'),
(76, 'Can view player', 19, 'view_player'),
(77, 'Can add position', 20, 'add_position'),
(78, 'Can change position', 20, 'change_position'),
(79, 'Can delete position', 20, 'delete_position'),
(80, 'Can view position', 20, 'view_position'),
(81, 'Can add scheduled_ match', 21, 'add_scheduled_match'),
(82, 'Can change scheduled_ match', 21, 'change_scheduled_match'),
(83, 'Can delete scheduled_ match', 21, 'delete_scheduled_match'),
(84, 'Can view scheduled_ match', 21, 'view_scheduled_match'),
(85, 'Can add season', 22, 'add_season'),
(86, 'Can change season', 22, 'change_season'),
(87, 'Can delete season', 22, 'delete_season'),
(88, 'Can view season', 22, 'view_season'),
(89, 'Can add sponsor', 23, 'add_sponsor'),
(90, 'Can change sponsor', 23, 'change_sponsor'),
(91, 'Can delete sponsor', 23, 'delete_sponsor'),
(92, 'Can view sponsor', 23, 'view_sponsor'),
(93, 'Can add staff', 24, 'add_staff'),
(94, 'Can change staff', 24, 'change_staff'),
(95, 'Can delete staff', 24, 'delete_staff'),
(96, 'Can view staff', 24, 'view_staff'),
(97, 'Can add team', 25, 'add_team'),
(98, 'Can change team', 25, 'change_team'),
(99, 'Can delete team', 25, 'delete_team'),
(100, 'Can view team', 25, 'view_team'),
(101, 'Can add match', 26, 'add_match'),
(102, 'Can change match', 26, 'change_match'),
(103, 'Can delete match', 26, 'delete_match'),
(104, 'Can view match', 26, 'view_match'),
(105, 'Can add player_ stats', 27, 'add_player_stats'),
(106, 'Can change player_ stats', 27, 'change_player_stats'),
(107, 'Can delete player_ stats', 27, 'delete_player_stats'),
(108, 'Can view player_ stats', 27, 'view_player_stats'),
(109, 'Can add player_ image', 28, 'add_player_image'),
(110, 'Can change player_ image', 28, 'change_player_image'),
(111, 'Can delete player_ image', 28, 'delete_player_image'),
(112, 'Can view player_ image', 28, 'view_player_image'),
(113, 'Can add order_ item', 29, 'add_order_item'),
(114, 'Can change order_ item', 29, 'change_order_item'),
(115, 'Can delete order_ item', 29, 'delete_order_item'),
(116, 'Can view order_ item', 29, 'view_order_item'),
(117, 'Can add news_ tag_ staff', 30, 'add_news_tag_staff'),
(118, 'Can change news_ tag_ staff', 30, 'change_news_tag_staff'),
(119, 'Can delete news_ tag_ staff', 30, 'delete_news_tag_staff'),
(120, 'Can view news_ tag_ staff', 30, 'view_news_tag_staff'),
(121, 'Can add news_ tag_ player', 31, 'add_news_tag_player'),
(122, 'Can change news_ tag_ player', 31, 'change_news_tag_player'),
(123, 'Can delete news_ tag_ player', 31, 'delete_news_tag_player'),
(124, 'Can view news_ tag_ player', 31, 'view_news_tag_player'),
(125, 'Can add merchandise_ information', 32, 'add_merchandise_information'),
(126, 'Can change merchandise_ information', 32, 'change_merchandise_information'),
(127, 'Can delete merchandise_ information', 32, 'delete_merchandise_information'),
(128, 'Can view merchandise_ information', 32, 'view_merchandise_information'),
(129, 'Can add merchandise_ image', 33, 'add_merchandise_image'),
(130, 'Can change merchandise_ image', 33, 'change_merchandise_image'),
(131, 'Can delete merchandise_ image', 33, 'delete_merchandise_image'),
(132, 'Can view merchandise_ image', 33, 'view_merchandise_image'),
(133, 'Can add comment', 34, 'add_comment'),
(134, 'Can change comment', 34, 'change_comment'),
(135, 'Can delete comment', 34, 'delete_comment'),
(136, 'Can view comment', 34, 'view_comment'),
(137, 'Can add club_season_stats', 35, 'add_club_season_stats'),
(138, 'Can change club_season_stats', 35, 'change_club_season_stats'),
(139, 'Can delete club_season_stats', 35, 'delete_club_season_stats'),
(140, 'Can view club_season_stats', 35, 'view_club_season_stats'),
(141, 'Can add album_ image', 36, 'add_album_image'),
(142, 'Can change album_ image', 36, 'change_album_image'),
(143, 'Can delete album_ image', 36, 'delete_album_image'),
(144, 'Can view album_ image', 36, 'view_album_image'),
(145, 'Can add address', 37, 'add_address'),
(146, 'Can change address', 37, 'change_address'),
(147, 'Can delete address', 37, 'delete_address'),
(148, 'Can view address', 37, 'view_address'),
(149, 'Can add opponent_ goalscorers', 38, 'add_opponent_goalscorers'),
(150, 'Can change opponent_ goalscorers', 38, 'change_opponent_goalscorers'),
(151, 'Can delete opponent_ goalscorers', 38, 'delete_opponent_goalscorers'),
(152, 'Can view opponent_ goalscorers', 38, 'view_opponent_goalscorers'),
(153, 'Can add match_timeline', 39, 'add_match_timeline'),
(154, 'Can change match_timeline', 39, 'change_match_timeline'),
(155, 'Can delete match_timeline', 39, 'delete_match_timeline'),
(156, 'Can view match_timeline', 39, 'view_match_timeline'),
(157, 'Can add goalscorers', 40, 'add_goalscorers'),
(158, 'Can change goalscorers', 40, 'change_goalscorers'),
(159, 'Can delete goalscorers', 40, 'delete_goalscorers'),
(160, 'Can view goalscorers', 40, 'view_goalscorers'),
(161, 'Can add board_ member', 41, 'add_board_member'),
(162, 'Can change board_ member', 41, 'change_board_member'),
(163, 'Can delete board_ member', 41, 'delete_board_member'),
(164, 'Can view board_ member', 41, 'view_board_member'),
(165, 'Can add trophies', 42, 'add_trophies'),
(166, 'Can change trophies', 42, 'change_trophies'),
(167, 'Can delete trophies', 42, 'delete_trophies'),
(168, 'Can view trophies', 42, 'view_trophies'),
(169, 'Can add mini_ articles', 43, 'add_mini_articles'),
(170, 'Can change mini_ articles', 43, 'change_mini_articles'),
(171, 'Can delete mini_ articles', 43, 'delete_mini_articles'),
(172, 'Can view mini_ articles', 43, 'view_mini_articles'),
(173, 'Can add likes', 44, 'add_likes'),
(174, 'Can change likes', 44, 'change_likes'),
(175, 'Can delete likes', 44, 'delete_likes'),
(176, 'Can view likes', 44, 'view_likes'),
(177, 'Can add news_ tag', 45, 'add_news_tag'),
(178, 'Can change news_ tag', 45, 'change_news_tag'),
(179, 'Can delete news_ tag', 45, 'delete_news_tag'),
(180, 'Can view news_ tag', 45, 'view_news_tag'),
(181, 'Can add timeline', 46, 'add_timeline'),
(182, 'Can change timeline', 46, 'change_timeline'),
(183, 'Can delete timeline', 46, 'delete_timeline'),
(184, 'Can view timeline', 46, 'view_timeline'),
(185, 'Can add social_ media_ links', 47, 'add_social_media_links'),
(186, 'Can change social_ media_ links', 47, 'change_social_media_links'),
(187, 'Can delete social_ media_ links', 47, 'delete_social_media_links'),
(188, 'Can view social_ media_ links', 47, 'view_social_media_links'),
(189, 'Can add sold_ ticket', 48, 'add_sold_ticket'),
(190, 'Can change sold_ ticket', 48, 'change_sold_ticket'),
(191, 'Can delete sold_ ticket', 48, 'delete_sold_ticket'),
(192, 'Can view sold_ ticket', 48, 'view_sold_ticket'),
(193, 'Can add tickets_ collection', 49, 'add_tickets_collection'),
(194, 'Can change tickets_ collection', 49, 'change_tickets_collection'),
(195, 'Can delete tickets_ collection', 49, 'delete_tickets_collection'),
(196, 'Can view tickets_ collection', 49, 'view_tickets_collection'),
(197, 'Can add contact_ us_ request', 50, 'add_contact_us_request'),
(198, 'Can change contact_ us_ request', 50, 'change_contact_us_request'),
(199, 'Can delete contact_ us_ request', 50, 'delete_contact_us_request'),
(200, 'Can view contact_ us_ request', 50, 'view_contact_us_request');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$390000$hU9yZogGfHRoBaXPNbTJtU$WiPUwhQC8Hvl/y6NUnkBBDVjhPKTgD7ltn3R9PfN5ZE=', '2023-01-11 17:50:45.265926', 1, 'Neerajvibez', 'Neeraj', 'V B', 'neerajvb@gmail.com', 1, 1, '2022-12-16 09:09:59.000000'),
(3, 'pbkdf2_sha256$390000$cPkRaIlss4jDv2JHgZi2Wx$BCAllESlQvH7MWVbVtx0RpGeiMMlzl+dW1D8+XWVzKE=', '2022-12-18 19:32:17.000000', 0, 'NeerajVB3', '', '', 'neerajvb3@gmail.com', 0, 1, '2022-12-18 19:30:49.000000'),
(6, 'pbkdf2_sha256$390000$XAsXIGfD1IRTzfdWS3inb7$VrNg/esjbXY4BW49mJJ2yi/8zb9X+Qoin7IDqiJivHg=', '2023-01-11 07:55:02.777708', 0, 'ihsan_pandikkad', 'Ihsan', 'K', 'ihsankpkd@gmail.com', 0, 1, '2022-12-19 14:55:47.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 2, 1),
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(4, '2022-12-16 09:24:17.428870', '1', 'neerajvb', 3, '', 4, 2),
(5, '2022-12-16 09:50:06.578099', '2', 'shoes', 2, '[{\"added\": {\"name\": \"merchandise_ size\", \"object\": \"8\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"9\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"10\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"11\"}}]', 15, 2),
(6, '2022-12-16 09:51:01.033443', '1', 'jerseys', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"XS\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"X\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"M\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"L\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"XL\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"XXL\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"3XL\"}}]', 15, 2),
(7, '2022-12-16 13:10:43.686317', '3', 'Union Berlin', 2, '[{\"changed\": {\"name\": \"club_season_stats\", \"object\": \"Union BerlinBundesLiga\", \"fields\": [\"Competition\"]}}]', 25, 2),
(8, '2022-12-17 01:53:46.914391', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 1, '[{\"added\": {}}]', 17, 2),
(9, '2022-12-17 01:55:59.373708', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"Image url\"]}}]', 17, 2),
(10, '2022-12-17 02:07:08.675736', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 17, 2),
(11, '2022-12-17 02:20:20.713220', '2', 'Manuel Neuer undergoes successful surgery', 1, '[{\"added\": {}}]', 17, 2),
(12, '2022-12-17 04:00:59.418566', '3', 'Bundesliga 2023/24 outline schedule confirmed', 1, '[{\"added\": {}}]', 17, 2),
(13, '2022-12-17 04:01:46.193129', '2', 'Manuel Neuer undergoes successful surgery', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 17, 2),
(14, '2022-12-17 04:03:20.109372', '4', 'Upamecano and Co reach World Cup final with France', 1, '[{\"added\": {}}]', 17, 2),
(15, '2022-12-17 04:13:02.201293', '5', 'Stanišić misses out on World Cup final with Croatia', 1, '[{\"added\": {}}]', 17, 2),
(16, '2022-12-17 05:30:42.065282', '3', 'FC Schalke 04_3', 1, '[{\"added\": {}}]', 26, 2),
(17, '2022-12-17 05:40:47.650739', '2', 'Eric Maxim Choupo-Moting', 1, '[{\"added\": {}}]', 19, 2),
(18, '2022-12-17 05:45:32.862053', '3', 'Serge Gnabry', 1, '[{\"added\": {}}]', 19, 2),
(19, '2022-12-17 05:45:40.624707', '3', 'FC Schalke 04_3', 2, '[{\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (1)\"}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (2)\"}}]', 26, 2),
(20, '2022-12-17 06:08:29.554266', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Profile banner\"]}}]', 19, 2),
(21, '2022-12-17 06:08:34.431135', '2', 'Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Profile banner\"]}}]', 19, 2),
(22, '2022-12-17 06:11:22.203730', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Profile pic\", \"Profile banner\"]}}]', 19, 2),
(23, '2022-12-17 06:11:40.289445', '2', 'Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 19, 2),
(24, '2022-12-17 06:34:36.160843', '2', 'Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Biography\"]}}]', 19, 2),
(25, '2022-12-17 06:35:09.653806', '2', 'Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Biography\"]}}]', 19, 2),
(26, '2022-12-17 06:35:18.060488', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Biography\"]}}]', 19, 2),
(27, '2022-12-17 06:40:52.636846', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Kit no\"]}}]', 19, 2),
(28, '2022-12-17 06:41:06.692767', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Kit no\"]}}]', 19, 2),
(29, '2022-12-17 07:08:47.491085', '1', 'Yellow Card', 1, '[{\"added\": {}}]', 12, 2),
(30, '2022-12-17 07:08:54.603408', '2', 'Red Card', 1, '[{\"added\": {}}]', 12, 2),
(31, '2022-12-17 07:09:00.888220', '3', 'Goal', 1, '[{\"added\": {}}]', 12, 2),
(32, '2022-12-17 07:09:16.947194', '4', 'Substitution', 1, '[{\"added\": {}}]', 12, 2),
(33, '2022-12-17 07:14:51.595749', '3', 'FC Schalke 04_3', 2, '[{\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (1)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (2)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (3)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (4)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (5)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (6)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (7)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (8)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (9)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (10)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (11)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (12)\"}}]', 26, 2),
(34, '2022-12-17 07:32:50.857699', '4', 'Union Berlin_4', 1, '[{\"added\": {}}]', 26, 2),
(35, '2022-12-17 07:38:48.676635', '8', 'SV Werder Bremen', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"SV Werder BremenBundesLiga\"}}]', 25, 2),
(36, '2022-12-17 07:39:20.867888', '4', 'SV Werder Bremen_4', 2, '[{\"changed\": {\"fields\": [\"Opponent\"]}}]', 26, 2),
(37, '2022-12-17 07:42:10.957694', '6', 'FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 25, 2),
(38, '2022-12-17 08:02:36.861443', '1', 'Oliver Kahn', 1, '[{\"added\": {}}]', 41, 2),
(39, '2022-12-17 08:07:59.925832', '2', 'Jan-Christian Dreesen', 1, '[{\"added\": {}}]', 41, 2),
(40, '2022-12-17 08:37:54.632184', '3', 'Andreas Jung', 1, '[{\"added\": {}}]', 41, 2),
(41, '2022-12-17 09:32:21.262062', '4', 'Herbert Hainer', 1, '[{\"added\": {}}]', 41, 2),
(42, '2022-12-17 09:33:47.169636', '5', 'Prof Dr Dieter Mayer', 1, '[{\"added\": {}}]', 41, 2),
(43, '2022-12-17 09:57:45.748925', '1', 'German Championship', 1, '[{\"added\": {}}]', 42, 2),
(44, '2022-12-17 09:58:27.835955', '2', 'DFB German Cup', 1, '[{\"added\": {}}]', 42, 2),
(45, '2022-12-17 10:45:42.843402', '1', 'German Championship', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 42, 2),
(46, '2022-12-17 19:53:51.572239', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Product information\"]}}]', 13, 2),
(47, '2022-12-17 21:04:35.400304', '1', 'Benefits', 1, '[{\"added\": {}}]', 43, 2),
(48, '2022-12-17 21:06:40.851848', '2', 'Gift Vouchers', 1, '[{\"added\": {}}]', 43, 2),
(49, '2022-12-17 21:29:59.710805', '3', 'Alianz Arena', 1, '[{\"added\": {}}]', 43, 2),
(50, '2022-12-17 21:31:10.380468', '3', 'Alianz Arena', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 2),
(51, '2022-12-18 07:58:20.336095', '4', 'Bayern head coaches in the Bundesliga', 1, '[{\"added\": {}}]', 43, 2),
(52, '2022-12-18 08:00:03.648506', '4', 'Bayern head coaches in the Bundesliga', 2, '[{\"changed\": {\"fields\": [\"Banner\"]}}]', 43, 2),
(53, '2022-12-18 08:03:32.219073', '5', 'FC Bayern members\' club presidents', 1, '[{\"added\": {}}]', 43, 2),
(54, '2022-12-18 08:21:24.724198', '6', 'The historic treble', 1, '[{\"added\": {}}]', 43, 2),
(55, '2022-12-18 08:23:09.678960', '7', 'Move to the Allianz Arena', 1, '[{\"added\": {}}]', 43, 2),
(56, '2022-12-18 08:28:33.844042', '8', 'Klaus Augenthaler', 1, '[{\"added\": {}}]', 43, 2),
(57, '2022-12-18 19:29:23.731325', '1', 'jamal-musiala-is-the-fc-bayern-player-of-the-month-for-november-2022Neerajvibez', 1, '[{\"added\": {}}]', 44, 2),
(58, '2022-12-18 19:32:04.463772', '3', 'neerajvb3@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 11, 2),
(59, '2022-12-18 20:43:15.399439', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"Video url\"]}}]', 17, 2),
(60, '2022-12-18 21:35:57.939194', '3', 'manuel-neuer-undergoes-successful-surgery-Neerajvibez', 3, '', 44, 2),
(61, '2022-12-18 21:35:57.945292', '2', 'stanisic-misses-out-on-world-cup-final-with-croatia-Neerajvibez', 3, '', 44, 2),
(62, '2022-12-18 21:35:57.946633', '1', 'jamal-musiala-is-the-fc-bayern-player-of-the-month-for-november-2022-Neerajvibez', 3, '', 44, 2),
(63, '2022-12-18 21:57:13.928048', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Author\"]}}]', 17, 2),
(64, '2022-12-19 14:55:10.595343', '5', 'NeeruHack@gmail.com', 3, '', 11, 2),
(65, '2022-12-19 14:55:10.603304', '4', 'ahbinav@gmail.com', 3, '', 11, 2),
(66, '2022-12-19 15:21:34.713872', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"news_ tag_ player\", \"object\": \"News_Tag_Player object (1)\"}}]', 17, 2),
(67, '2022-12-19 15:22:34.691761', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Image url\"]}}]', 17, 2),
(68, '2022-12-19 15:23:16.865757', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Video url\"]}}]', 17, 2),
(69, '2022-12-19 16:15:42.516649', '1', 'Telekom', 1, '[{\"added\": {}}]', 23, 2),
(70, '2022-12-19 16:19:04.961836', '2', 'Adidas', 1, '[{\"added\": {}}]', 23, 2),
(71, '2022-12-19 16:26:26.716143', '3', 'Audi', 1, '[{\"added\": {}}]', 23, 2),
(72, '2022-12-19 16:27:08.551406', '4', 'Allianz', 1, '[{\"added\": {}}]', 23, 2),
(73, '2022-12-19 17:09:38.312422', '4', 'Allianz', 2, '[{\"changed\": {\"fields\": [\"Kind\"]}}]', 23, 2),
(74, '2022-12-19 17:17:45.546540', '4', 'Allianz', 2, '[{\"changed\": {\"fields\": [\"Kind\"]}}]', 23, 2),
(75, '2022-12-19 17:43:10.547366', '4', 'Allianz', 2, '[{\"changed\": {\"fields\": [\"Kind\"]}}]', 23, 2),
(76, '2022-12-19 18:01:44.937890', '4', 'Allianz', 2, '[{\"changed\": {\"fields\": [\"Kind\"]}}]', 23, 2),
(77, '2022-12-19 19:22:26.964666', '5', 'Adobe', 1, '[{\"added\": {}}]', 23, 2),
(78, '2022-12-19 19:23:20.832722', '6', 'Hypovereinsbank', 1, '[{\"added\": {}}]', 23, 2),
(79, '2022-12-19 19:23:44.364806', '7', 'Hylo', 1, '[{\"added\": {}}]', 23, 2),
(80, '2022-12-19 19:26:58.618240', '7', 'Hylo', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(81, '2022-12-19 19:27:06.504008', '6', 'Hypovereinsbank', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(82, '2022-12-19 19:27:21.329728', '5', 'Adobe', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(83, '2022-12-19 19:39:19.136380', '8', 'Konami', 1, '[{\"added\": {}}]', 23, 2),
(84, '2022-12-26 20:29:13.238009', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(85, '2022-12-26 20:29:54.781558', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(86, '2022-12-28 12:14:34.056392', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 2, '[]', 17, 2),
(87, '2022-12-28 12:34:43.572753', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"related_news\"]}}]', 17, 2),
(88, '2022-12-28 12:34:55.068617', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"related_news\"]}}]', 17, 2),
(89, '2022-12-28 12:35:27.384603', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(90, '2022-12-28 12:35:44.088751', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(91, '2022-12-28 12:35:55.168834', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(92, '2022-12-28 12:54:45.298326', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(93, '2022-12-28 13:02:23.557579', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(94, '2022-12-28 13:51:07.868977', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Liked\"]}}]', 17, 2),
(95, '2022-12-28 13:51:28.870081', '6', 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Related news\"]}}]', 17, 2),
(96, '2022-12-28 13:58:10.816050', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 17, 2),
(97, '2022-12-29 05:32:34.650082', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"Liked\"]}}]', 17, 2),
(98, '2022-12-29 05:33:09.433475', '10', 'jamal-musiala-is-the-fc-bayern-player-of-the-month-for-november-2022-NeerajVB3', 1, '[{\"added\": {}}]', 44, 2),
(99, '2022-12-29 05:56:04.487235', '11', 'manuel-neuer-undergoes-successful-surgery-NeerajVB3', 1, '[{\"added\": {}}]', 44, 2),
(100, '2022-12-29 05:56:20.386143', '2', 'Manuel Neuer undergoes successful surgery', 2, '[{\"changed\": {\"fields\": [\"Liked\"]}}]', 17, 2),
(101, '2022-12-29 06:15:16.765175', '2', 'Manuel Neuer undergoes successful surgery', 2, '[{\"changed\": {\"fields\": [\"Liked\"]}}]', 17, 2),
(102, '2022-12-29 06:15:26.040488', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"Liked\"]}}]', 17, 2),
(103, '2022-12-29 06:15:50.435663', '8', 'jamal-musiala-is-the-fc-bayern-player-of-the-month-for-november-2022-ihsankpkd@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Value\"]}}]', 44, 2),
(104, '2022-12-29 06:16:21.952101', '8', 'jamal-musiala-is-the-fc-bayern-player-of-the-month-for-november-2022-ihsankpkd@gmail.com', 3, '', 44, 2),
(105, '2022-12-29 06:16:34.801927', '12', 'manuel-neuer-undergoes-successful-surgery-ihsankpkd@gmail.com', 1, '[{\"added\": {}}]', 44, 2),
(106, '2022-12-29 06:49:27.255363', '1', 'FC Bayern München', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(107, '2022-12-29 06:49:42.270855', '4', 'Borussia Dortmund', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(108, '2022-12-29 06:49:51.230686', '6', 'FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(109, '2022-12-29 06:57:23.784311', '3', 'FC Schalke 04_3', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(110, '2022-12-29 06:57:38.414427', '3', 'FC Schalke 04_3', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(111, '2022-12-29 07:03:31.378869', '2', 'FC Schalke 04_2', 3, '', 21, 2),
(112, '2022-12-29 07:06:27.376214', '5', 'SC Freiburg_5', 1, '[{\"added\": {}}]', 21, 2),
(113, '2022-12-29 07:10:41.126651', '9', '1. FC Köln', 1, '[{\"added\": {}}]', 25, 2),
(114, '2022-12-29 07:10:47.048280', '8', 'SV Werder Bremen', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(115, '2022-12-29 07:11:11.087454', '2', 'SC Freiburg', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(116, '2022-12-29 07:11:43.083470', '9', '1. FC Köln', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(117, '2022-12-29 07:12:01.970579', '3', 'Union Berlin', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(118, '2022-12-29 07:12:49.894189', '5', 'RB Leipzig', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(119, '2022-12-29 07:13:44.125960', '7', 'Eintracht Frankfurt', 2, '[{\"changed\": {\"fields\": [\"Short name\"]}}]', 25, 2),
(120, '2022-12-29 07:15:32.743185', '9', '1. FC Köln', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 25, 2),
(121, '2022-12-29 07:16:30.579179', '9', '1. FC Köln', 2, '[{\"added\": {\"name\": \"club_season_stats\", \"object\": \"1. FC K\\u00f6lnBundesLiga\"}}]', 25, 2),
(122, '2022-12-29 07:22:10.076001', '10', 'Paris Saint Germain', 1, '[{\"added\": {}}]', 25, 2),
(123, '2022-12-29 07:24:02.962850', '6', 'Paris Saint Germain_6', 1, '[{\"added\": {}}]', 21, 2),
(124, '2022-12-29 07:25:41.111159', '9', '1. FC Köln', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 25, 2),
(125, '2023-01-04 09:02:16.120376', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"changed\": {\"fields\": [\"Featured image\"]}}]', 13, 2),
(126, '2023-01-04 09:14:47.297445', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(127, '2023-01-04 09:20:56.747660', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (1)\", \"fields\": [\"Image url\"]}}]', 13, 2),
(128, '2023-01-04 10:06:16.830876', '4', 'FC Bayern 50th Anniversary Shirt', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (4)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (1)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (2)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (3)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (4)\"}}]', 13, 2),
(129, '2023-01-04 10:08:06.127787', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"fields\": [\"Featured image\"]}}]', 13, 2),
(130, '2023-01-04 10:08:29.805743', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (4)\", \"fields\": [\"Image url\"]}}]', 13, 2),
(131, '2023-01-04 10:09:50.615422', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[]', 13, 2),
(132, '2023-01-04 10:14:42.442386', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (5)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (6)\"}}]', 13, 2),
(133, '2023-01-04 10:21:14.009069', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(134, '2023-01-04 10:21:31.663930', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(135, '2023-01-04 10:26:19.589843', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"changed\": {\"fields\": [\"Related products\"]}}]', 13, 2),
(136, '2023-01-04 10:29:45.949136', '3', 'caps', 1, '[{\"added\": {}}]', 15, 2),
(137, '2023-01-04 10:38:11.703280', '5', 'FC Bayern 10th Consecutive Championship Cap - Red - Unisex', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (5)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (6)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (7)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (8)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (9)\"}}]', 13, 2),
(138, '2023-01-04 10:40:34.064800', '5', 'FC Bayern 10th Consecutive Championship Cap - Red - Unisex', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (7)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (8)\"}}]', 13, 2),
(139, '2023-01-04 10:48:15.855987', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"changed\": {\"fields\": [\"Featured image\"]}}]', 13, 2),
(140, '2023-01-04 10:52:56.177086', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (9)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (10)\"}}, {\"changed\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (3)\", \"fields\": [\"Image url\"]}}]', 13, 2),
(141, '2023-01-04 11:02:00.843334', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Featured image\"]}}]', 13, 2),
(142, '2023-01-04 11:02:16.729293', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (1)\", \"fields\": [\"Image url\"]}}]', 13, 2),
(143, '2023-01-04 15:11:34.474008', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (11)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (12)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (13)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (14)\"}}, {\"changed\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (2)\", \"fields\": [\"Image url\"]}}]', 13, 2),
(144, '2023-01-04 17:15:46.091294', '6', 'FC Bayern Triple Winners 2020 Cap - Black', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (10)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (11)\"}}]', 13, 2),
(145, '2023-01-04 17:16:09.082420', '6', 'FC Bayern Triple Winners 2020 Cap - Black', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (15)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (16)\"}}]', 13, 2),
(146, '2023-01-04 17:16:56.264761', '6', 'FC Bayern Triple Winners 2020 Cap - Black', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}, {\"deleted\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (None)\"}}, {\"deleted\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (None)\"}}]', 13, 2),
(147, '2023-01-04 17:17:28.527722', '6', 'FC Bayern Triple Winners 2020 Cap - Black', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (17)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (18)\"}}]', 13, 2),
(148, '2023-01-04 17:17:45.118497', '6', 'FC Bayern Triple Winners 2020 Cap - Black', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(149, '2023-01-04 17:18:22.439342', '6', 'FC Bayern Triple Winners 2020 Cap - Black', 2, '[{\"changed\": {\"fields\": [\"Product information\"]}}]', 13, 2),
(150, '2023-01-05 08:53:02.028798', '6', 'FC Bayern Triple Winners 2020 Cap - Black', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 13, 2),
(151, '2023-01-05 08:57:02.068056', '5', 'FC Bayern 10th Consecutive Championship Cap - Red - Unisex', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 13, 2),
(152, '2023-01-05 08:57:24.355322', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 13, 2),
(153, '2023-01-05 08:57:41.773177', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 13, 2),
(154, '2023-01-05 08:58:13.583100', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 13, 2),
(155, '2023-01-05 08:58:13.621653', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"fields\": [\"Added\"]}}]', 13, 2),
(156, '2023-01-05 09:16:55.090637', '2', 'Neeraj Vibez-194.36', 2, '[{\"changed\": {\"fields\": [\"Order notes\"]}}, {\"changed\": {\"name\": \"order_ item\", \"object\": \"NeerajvibezFC Bayern 10th Consecutive Championship Cap - Red - Unisex4\", \"fields\": [\"Quantity\"]}}]', 18, 2),
(157, '2023-01-05 17:30:56.799495', '2', 'Neeraj Vibez-194.36', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"NeerajvibezFC Bayern ZX Modern Boost Trainers - White6\", \"fields\": [\"Quantity\"]}}]', 18, 2),
(158, '2023-01-05 17:31:20.506157', '2', 'Neeraj Vibez-194.36', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"NeerajvibezFC Bayern 10th Consecutive Championship Cap - Red - Unisex1\", \"fields\": [\"Quantity\"]}}, {\"changed\": {\"name\": \"order_ item\", \"object\": \"NeerajvibezFC Bayern ZX Modern Boost Trainers - White1\", \"fields\": [\"Quantity\"]}}]', 18, 2),
(159, '2023-01-05 17:31:45.408450', '2', 'Neeraj Vibez-194.36', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"NeerajvibezFC Bayern ZX Modern Boost Trainers - White5\", \"fields\": [\"Quantity\"]}}]', 18, 2),
(160, '2023-01-05 17:32:38.107260', '3', 'NeerajvibezFC Bayern ZX Modern Boost Trainers - White3', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 29, 2),
(161, '2023-01-05 18:43:21.152099', '7', 'Nagelsmann welcomes training group before leaving for Doha', 1, '[{\"added\": {}}]', 17, 2),
(162, '2023-01-05 18:45:52.392498', '7', 'Nagelsmann welcomes training group before leaving for Doha', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 17, 2),
(163, '2023-01-05 18:47:50.422905', '7', 'Nagelsmann welcomes training group before leaving for Doha', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 17, 2),
(164, '2023-01-05 18:50:15.325810', '7', 'Nagelsmann welcomes training group before leaving for Doha', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 17, 2),
(165, '2023-01-05 18:51:30.079172', '7', 'Nagelsmann welcomes training group before leaving for Doha', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 17, 2),
(166, '2023-01-05 18:58:44.667571', '7', 'Nagelsmann welcomes training group before leaving for Doha', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 17, 2),
(167, '2023-01-05 19:07:04.091823', '1', 'Photos from Bayern’s first open training of 2023', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (1)\"}}]', 9, 2),
(168, '2023-01-05 19:14:40.327169', '1', 'Photos from Bayern’s first open training of 2023', 2, '[{\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (2)\"}}]', 9, 2),
(169, '2023-01-05 19:18:00.565514', '1', 'Photos from Bayern’s first open training of 2023', 2, '[{\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (3)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (4)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (5)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (6)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (7)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (8)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (9)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (10)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (11)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (12)\"}}]', 9, 2),
(170, '2023-01-05 19:18:40.337966', '1', 'Photos from Bayern’s first open training of 2023', 2, '[{\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (13)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (14)\"}}, {\"added\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (15)\"}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (2)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (3)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (4)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (5)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (6)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (7)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (8)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (9)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (10)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (11)\", \"fields\": [\"Date\"]}}, {\"changed\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (12)\", \"fields\": [\"Date\"]}}]', 9, 2),
(171, '2023-01-05 19:20:47.445491', '1', 'Photos from Bayern’s first open training of 2023', 2, '[{\"deleted\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (None)\"}}, {\"deleted\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (None)\"}}, {\"deleted\": {\"name\": \"album_ image\", \"object\": \"Album_Image object (None)\"}}]', 9, 2),
(172, '2023-01-05 19:31:08.522328', '4', 'Face Coverings', 1, '[{\"added\": {}}]', 15, 2),
(173, '2023-01-05 19:42:33.081474', '7', 'FC Bayern adidas 3 Pack Face Covering - Black - M/L', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (12)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (13)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (14)\"}}]', 13, 2),
(174, '2023-01-05 19:43:00.365136', '7', 'FC Bayern adidas 3 Pack Face Covering - Black - M/L', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(175, '2023-01-05 19:44:06.617184', '7', 'FC Bayern adidas 3 Pack Face Covering - Black - M/L', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (19)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (20)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (21)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (22)\"}}]', 13, 2),
(176, '2023-01-05 19:50:28.104500', '4', 'Friendly', 1, '[{\"added\": {}}]', 10, 2),
(177, '2023-01-05 19:52:54.773010', '11', 'FC Red Bull Salzburg', 1, '[{\"added\": {}}]', 25, 2),
(178, '2023-01-05 19:54:25.466186', '7', 'FC Red Bull Salzburg_7', 1, '[{\"added\": {}}]', 21, 2),
(179, '2023-01-05 19:57:03.241766', '11', 'FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 25, 2),
(180, '2023-01-05 20:02:12.639627', '7', 'FC Red Bull Salzburg_7', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 21, 2),
(181, '2023-01-05 20:02:29.471573', '7', 'FC Red Bull Salzburg_7', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 21, 2),
(182, '2023-01-05 20:06:14.154874', '7', 'FC Red Bull Salzburg_7', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 21, 2),
(183, '2023-01-05 20:06:24.194076', '7', 'FC Red Bull Salzburg_7', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 21, 2),
(184, '2023-01-05 20:10:20.364548', '8', 'Friendly against FC Red Bull Salzburg on 13 January', 1, '[{\"added\": {}}]', 17, 2),
(185, '2023-01-05 20:17:58.043671', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(186, '2023-01-06 05:41:58.484113', '5', 'Jackets', 1, '[{\"added\": {}}]', 15, 2),
(187, '2023-01-06 06:04:35.154696', '8', 'FC Bayern Teamgeist Padded Jacket - Red', 1, '[{\"added\": {}}]', 13, 2),
(188, '2023-01-06 06:09:56.737581', '8', 'FC Bayern Teamgeist Padded Jacket - Red', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(189, '2023-01-06 06:10:08.500805', '8', 'FC Bayern Teamgeist Padded Jacket - Red', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 13, 2),
(190, '2023-01-06 06:20:20.251442', '8', 'FC Bayern Teamgeist Padded Jacket - Red', 2, '[{\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (15)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (16)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (17)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (18)\"}}]', 13, 2),
(191, '2023-01-06 06:21:25.198467', '5', 'Jackets', 2, '[{\"added\": {\"name\": \"merchandise_ size\", \"object\": \"XS\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"S\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"M\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"L\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"XL\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"XXL\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"3XL\"}}]', 15, 2),
(192, '2023-01-06 06:21:32.982560', '5', 'Jackets', 2, '[{\"changed\": {\"fields\": [\"Size option\"]}}]', 15, 2),
(193, '2023-01-06 06:25:36.931074', '9', 'FC Bayern sign Daley Blind', 1, '[{\"added\": {}}]', 17, 2),
(194, '2023-01-06 06:26:19.566774', '8', 'FC Bayern Teamgeist Padded Jacket - Red', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (23)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (24)\"}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (25)\"}}]', 13, 2),
(195, '2023-01-06 06:29:38.154359', '9', 'FC Bayern sign Daley Blind', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 17, 2),
(196, '2023-01-06 14:41:58.677106', '1', 'Friendly-Friendly', 1, '[{\"added\": {}}]', 26, 2),
(197, '2023-01-06 14:55:30.525480', '2', 'BundesLiga-Matchday 15', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (1)\"}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (2)\"}}]', 26, 2),
(198, '2023-01-06 15:01:04.506135', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"Summary\", \"Scored\"]}}]', 26, 2),
(199, '2023-01-06 15:05:57.463146', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(200, '2023-01-06 15:06:14.783694', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"Conceded\"]}}]', 26, 2),
(201, '2023-01-06 15:06:34.527075', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(202, '2023-01-06 15:06:57.008414', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"Scored\", \"Conceded\"]}}]', 26, 2),
(203, '2023-01-06 15:40:55.410139', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"Video url\"]}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (1)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (2)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (3)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (4)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (5)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (6)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (7)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (8)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (9)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (10)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (11)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (12)\"}}]', 26, 2),
(204, '2023-01-06 15:49:01.416246', '3', 'BundesLiga-Matchday 14-SV Werder Bremen', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (3)\"}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (4)\"}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (5)\"}}, {\"added\": {\"name\": \"opponent_ goalscorers\", \"object\": \"Opponent_Goalscorers object (1)\"}}]', 26, 2),
(205, '2023-01-06 15:53:02.025118', '6', 'Ihsan K', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Name display\", \"Profile pic\"]}}]', 11, 2),
(206, '2023-01-06 15:55:43.294733', '4', 'BundesLiga-Matchday 16-RB Leipzig', 1, '[{\"added\": {}}]', 26, 2),
(207, '2023-01-06 15:56:29.170914', '5', 'BundesLiga-Matchday 17-1. FC Köln', 1, '[{\"added\": {}}]', 26, 2),
(208, '2023-01-06 15:57:25.850077', '6', 'BundesLiga-Matchday 18-Eintracht Frankfurt', 1, '[{\"added\": {}}]', 26, 2),
(209, '2023-01-06 15:58:37.137737', '7', 'UEFA Champions League-Round of 16 - Leg 1 of 2-Paris Saint Germain', 1, '[{\"added\": {}}]', 26, 2),
(210, '2023-01-06 16:11:57.579619', '1', 'Hasan Salihamidžić', 1, '[{\"added\": {}}]', 24, 2),
(211, '2023-01-06 16:12:25.951190', '1', 'Hasan Salihamidžić', 2, '[]', 24, 2),
(212, '2023-01-06 16:12:39.499463', '1', 'Hasan Salihamidžić', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 24, 2),
(213, '2023-01-06 16:24:16.766041', '6', 'Ihsan K', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 11, 2),
(214, '2023-01-07 07:59:35.713665', '2', 'Neeraj Vibez-194.36', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"NeerajvibezFC Bayern 10th Consecutive Championship Cap - Red - Unisex5\", \"fields\": [\"Quantity\"]}}]', 18, 2),
(215, '2023-01-07 08:05:47.408956', '2', 'Neeraj Vibez-194.36', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"NeerajvibezFC Bayern 10th Consecutive Championship Cap - Red - Unisex1\", \"fields\": [\"Quantity\"]}}]', 18, 2),
(216, '2023-01-07 08:10:16.756988', '5', 'FC Bayern 10th Consecutive Championship Cap - Red - Unisex', 2, '[{\"changed\": {\"fields\": [\"Related products\"]}}]', 13, 2),
(217, '2023-01-07 08:21:27.343179', '5', 'FC Bayern 10th Consecutive Championship Cap - Red - Unisex', 2, '[{\"changed\": {\"fields\": [\"Related products\"]}}]', 13, 2),
(218, '2023-01-07 08:22:27.811037', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"fields\": [\"Related products\"]}}]', 13, 2),
(219, '2023-01-07 08:22:46.784105', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"changed\": {\"fields\": [\"Related products\"]}}]', 13, 2),
(220, '2023-01-07 08:23:28.421503', '4', 'FC Bayern 50th Anniversary Shirt', 2, '[{\"changed\": {\"fields\": [\"Related products\"]}}]', 13, 2),
(221, '2023-01-07 12:11:56.474259', '12', 'Inter Milan', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"Inter MilanUEFA Champions League\"}}]', 25, 2),
(222, '2023-01-07 12:13:29.964730', '1', 'FC Bayern München', 2, '[{\"added\": {\"name\": \"club_season_stats\", \"object\": \"FC Bayern M\\u00fcnchenUEFA Champions League\"}}]', 25, 2),
(223, '2023-01-07 12:19:11.384572', '13', 'FC Barcelona', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"FC BarcelonaUEFA Champions League\"}}]', 25, 2),
(224, '2023-01-07 12:24:08.236947', '14', 'FC Viktoria Plzeň', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"FC Viktoria Plze\\u0148UEFA Champions League\"}}]', 25, 2),
(225, '2023-01-07 12:24:27.947054', '14', 'FC Viktoria Plzeň', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 25, 2),
(226, '2023-01-07 17:46:56.657727', '1', 'world_cup', 1, '[{\"added\": {}}]', 45, 2),
(227, '2023-01-07 17:56:16.496623', '9', 'FC Bayern sign Daley Blind', 2, '[{\"changed\": {\"fields\": [\"Post content\", \"Views\", \"Tags\"]}}]', 17, 2),
(228, '2023-01-07 17:56:45.177142', '2', 'transfer', 1, '[{\"added\": {}}]', 45, 2),
(229, '2023-01-07 17:56:57.107560', '9', 'FC Bayern sign Daley Blind', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 17, 2),
(230, '2023-01-07 18:11:30.934658', '3', 'potm', 1, '[{\"added\": {}}]', 45, 2),
(231, '2023-01-07 18:12:10.152096', '4', 'youth', 1, '[{\"added\": {}}]', 45, 2),
(232, '2023-01-07 18:12:24.754380', '5', 'award', 1, '[{\"added\": {}}]', 45, 2),
(233, '2023-01-07 18:13:48.330993', '6', 'germany', 1, '[{\"added\": {}}]', 45, 2),
(234, '2023-01-07 18:14:07.907676', '7', 'injury', 1, '[{\"added\": {}}]', 45, 2),
(235, '2023-01-07 18:36:28.310822', '8', 'Friendly against FC Red Bull Salzburg on 13 January', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 17, 2),
(236, '2023-01-07 19:17:23.318051', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Related news\", \"Tags\"]}}]', 17, 2),
(237, '2023-01-07 19:17:47.590554', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"Related news\", \"Tags\"]}}]', 17, 2),
(238, '2023-01-07 20:02:13.321984', '1', 'Content Creators', 1, '[{\"added\": {}}]', 3, 2),
(239, '2023-01-07 20:03:20.840035', '3', 'Neeraj V B New', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 11, 2),
(240, '2023-01-07 20:23:21.720800', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"News tags\"]}}]', 26, 2),
(241, '2023-01-07 20:58:48.898406', '8', 'Champions League', 1, '[{\"added\": {}}]', 45, 2),
(242, '2023-01-07 20:58:57.425228', '7', 'UEFA Champions League-Round of 16 - Leg 1 of 2-Paris Saint Germain', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 26, 2),
(243, '2023-01-07 21:04:02.249992', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 26, 2),
(244, '2023-01-07 21:05:36.081217', '9', 'FC Bayern sign Daley Blind', 2, '[{\"changed\": {\"fields\": [\"Home banner\"]}}]', 17, 2),
(245, '2023-01-07 21:25:44.040551', '8', 'Friendly against FC Red Bull Salzburg on 13 January', 2, '[{\"changed\": {\"fields\": [\"Home banner\"]}}]', 17, 2),
(246, '2023-01-07 21:38:50.318761', '10', 'Pavard and Coman return, Blind unveiling and triple training', 1, '[{\"added\": {}}]', 17, 2),
(247, '2023-01-07 21:42:52.280467', '10', 'Pavard and Coman return, Blind unveiling and triple training', 2, '[{\"changed\": {\"fields\": [\"Excerpt\"]}}]', 17, 2),
(248, '2023-01-08 08:33:12.229959', '2', 'Neeraj Vibez', 2, '[{\"changed\": {\"fields\": [\"Social link\"]}}]', 11, 2),
(249, '2023-01-08 08:51:56.792373', '2', 'Neeraj Vibez', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 11, 2),
(250, '2023-01-08 09:23:31.594983', '1', 'Timeline object (1)', 1, '[{\"added\": {}}]', 46, 2),
(251, '2023-01-08 09:29:45.031893', '2', 'Serge Gnabry-2020-06-07', 1, '[{\"added\": {}}]', 46, 2),
(252, '2023-01-08 15:48:38.914070', '3', 'Hasan Salihamidžić-2021-05-05', 1, '[{\"added\": {}}]', 46, 2),
(253, '2023-01-08 15:52:22.647128', '1', 'Social_Media_Links object (1)', 1, '[{\"added\": {}}]', 47, 2),
(254, '2023-01-08 16:02:57.011380', '1', 'Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Player\"]}}]', 47, 2),
(255, '2023-01-08 16:03:14.356276', '1', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Player\"]}}]', 47, 2),
(256, '2023-01-08 16:05:34.473186', '1', 'Hasan Salihamidžić', 2, '[{\"changed\": {\"fields\": [\"Staff\"]}}]', 47, 2),
(257, '2023-01-08 16:21:57.952559', '10', 'Pavard and Coman return, Blind unveiling and triple training', 2, '[{\"changed\": {\"fields\": [\"Player tags\", \"Staff tags\"]}}]', 17, 2),
(258, '2023-01-08 16:25:49.436395', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Player tags\", \"Staff tags\"]}}]', 17, 2),
(259, '2023-01-08 17:09:05.096098', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"Staff tags\"]}}]', 17, 2),
(260, '2023-01-08 17:09:19.378910', '10', 'Pavard and Coman return, Blind unveiling and triple training', 2, '[{\"changed\": {\"fields\": [\"Staff tags\"]}}]', 17, 2),
(261, '2023-01-08 17:24:15.160017', '4', 'Youth', 1, '[{\"added\": {}}]', 7, 2),
(262, '2023-01-08 17:24:35.298717', '5', 'Champions League', 1, '[{\"added\": {}}]', 7, 2),
(263, '2023-01-08 17:27:47.309248', '5', 'Stanišić misses out on World Cup final with Croatia', 2, '[{\"changed\": {\"fields\": [\"News type\"]}}]', 17, 2),
(264, '2023-01-08 17:35:15.003239', '6', 'Club', 1, '[{\"added\": {}}]', 7, 2),
(265, '2023-01-08 17:35:42.545372', '7', 'Transfers', 1, '[{\"added\": {}}]', 7, 2),
(266, '2023-01-08 17:36:29.446512', '9', 'FC Bayern sign Daley Blind', 2, '[{\"changed\": {\"fields\": [\"News type\"]}}]', 17, 2),
(267, '2023-01-08 17:44:13.461099', '7', 'Nagelsmann welcomes training group before leaving for Doha', 2, '[{\"changed\": {\"fields\": [\"News type\"]}}]', 17, 2),
(268, '2023-01-08 17:56:20.621424', '8', 'Friendly against FC Red Bull Salzburg on 13 January', 2, '[{\"changed\": {\"fields\": [\"News type\"]}}]', 17, 2),
(269, '2023-01-08 18:05:08.307066', '8', 'Awards', 1, '[{\"added\": {}}]', 7, 2),
(270, '2023-01-08 18:06:03.339116', '1', 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', 2, '[{\"changed\": {\"fields\": [\"News type\"]}}]', 17, 2),
(271, '2023-01-08 18:27:25.467290', '6', 'The Club', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 2),
(272, '2023-01-08 18:43:12.274667', '9', 'Tour', 1, '[{\"added\": {}}]', 45, 2),
(273, '2023-01-08 18:52:22.812988', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(274, '2023-01-08 18:52:31.572328', '2', 'Eric Maxim Choupo-Moting', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(275, '2023-01-09 19:23:12.554253', '4', 'Neeraj Vibez-74.10', 2, '[{\"changed\": {\"fields\": [\"Order notes\", \"Payment method\"]}}]', 18, 2),
(276, '2023-01-10 06:38:16.403367', '2', 'Julian Nagelsmann', 1, '[{\"added\": {}}]', 24, 2),
(277, '2023-01-10 06:54:47.395128', '2', 'Julian Nagelsmann', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 24, 2),
(278, '2023-01-10 07:04:44.609798', '3', 'Benjamin Glück', 1, '[{\"added\": {}}]', 24, 2),
(279, '2023-01-10 07:06:46.884387', '4', 'Xaver Zembrod', 1, '[{\"added\": {}}]', 24, 2),
(280, '2023-01-10 07:07:05.770401', '4', 'Xaver Zembrod', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 24, 2),
(281, '2023-01-10 08:17:00.819512', '4', 'Manuel Neuer', 1, '[{\"added\": {}}]', 19, 2),
(282, '2023-01-10 08:21:13.943839', '5', 'Sven Ulreich', 1, '[{\"added\": {}}]', 19, 2),
(283, '2023-01-10 08:26:41.111125', '5', 'Sven Ulreich', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 19, 2),
(284, '2023-01-10 08:26:50.687669', '4', 'Manuel Neuer', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(285, '2023-01-10 08:27:11.226860', '4', 'Manuel Neuer', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 19, 2),
(286, '2023-01-11 14:54:21.639819', '2', 'Neeraj Vibez', 2, '[{\"changed\": {\"fields\": [\"Social link\"]}}]', 11, 2),
(287, '2023-01-11 15:59:39.031544', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 26, 2),
(288, '2023-01-11 16:00:04.872752', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 26, 2),
(289, '2023-01-11 19:17:25.884389', '1', 'Tickets_Collection object (1)', 1, '[{\"added\": {}}]', 49, 2),
(290, '2023-01-12 16:29:50.190497', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 1 seats\"]}}]', 49, 2),
(291, '2023-01-12 16:30:06.337784', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 1 seats\"]}}]', 49, 2),
(292, '2023-01-12 19:44:46.162011', '2', 'Sold_Ticket object (2)', 3, '', 48, 2),
(293, '2023-01-12 20:12:34.627888', '3', 'Sold_Ticket object (3)', 3, '', 48, 2),
(294, '2023-01-12 20:26:03.108900', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 3 seats\"]}}]', 49, 2),
(295, '2023-01-12 20:26:48.832746', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 1 seats\", \"Cat 2 seats\", \"Cat 4 seats\", \"Cat 5 seats\"]}}]', 49, 2),
(296, '2023-01-12 20:43:32.064830', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 3 seats\"]}}]', 49, 2),
(297, '2023-01-12 20:43:46.963112', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 4 seats\"]}}]', 49, 2),
(298, '2023-01-12 20:44:03.550808', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 1 seats\"]}}]', 49, 2),
(299, '2023-01-12 20:44:13.222202', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 2 seats\"]}}]', 49, 2),
(300, '2023-01-12 20:44:24.231428', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 5 seats\"]}}]', 49, 2),
(301, '2023-01-12 21:06:51.803201', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 2 seats\"]}}]', 49, 2),
(302, '2023-01-12 21:07:18.686134', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 1 seats\"]}}]', 49, 2),
(303, '2023-01-12 21:19:25.091716', '1', 'Tickets_Collection object (1)', 2, '[{\"changed\": {\"fields\": [\"Cat 1 seats\", \"Cat 2 seats\", \"Cat 3 seats\", \"Cat 4 seats\", \"Cat 5 seats\"]}}]', 49, 2),
(304, '2023-01-12 22:16:02.726185', '1', 'Contact_Us_Request object (1)', 3, '', 50, 2),
(305, '2023-01-12 22:23:09.037530', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Booking open\"]}}]', 26, 2),
(306, '2023-01-12 22:38:22.465709', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Booking open\"]}}]', 26, 2),
(307, '2023-01-12 22:38:44.772348', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Booking open\"]}}]', 26, 2),
(308, '2023-01-13 04:46:29.394521', '2', 'Matchday Admin', 1, '[{\"added\": {}}]', 3, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(309, '2023-01-13 04:54:28.497985', '1', 'Friendly-Friendly', 2, '[{\"changed\": {\"fields\": [\"Cat 1 seats\", \"Cat 2 seats\", \"Cat 3 seats\", \"Cat 4 seats\"]}}]', 49, 2),
(310, '2023-01-13 09:05:29.717736', '1', 'Content Creators', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 2),
(311, '2023-01-13 09:09:26.263867', '3', 'Customer Service', 1, '[{\"added\": {}}]', 3, 2),
(312, '2023-01-13 09:11:05.972868', '4', 'Shop Handler', 1, '[{\"added\": {}}]', 3, 2),
(313, '2023-01-15 07:44:36.436277', '4', 'BundesLiga-Matchday 16-RB Leipzig', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(314, '2023-01-15 07:44:55.216339', '4', 'BundesLiga-Matchday 16-RB Leipzig', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(315, '2023-01-15 07:45:05.462942', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(316, '2023-01-15 07:45:41.906854', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(317, '2023-01-15 07:58:49.951390', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(318, '2023-01-15 07:59:06.405877', '2', 'BundesLiga-Matchday 15-FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 26, 2),
(319, '2023-01-15 07:59:25.612944', '4', 'BundesLiga-Matchday 16-RB Leipzig', 2, '[{\"changed\": {\"fields\": [\"Booking open\"]}}]', 26, 2),
(320, '2023-01-15 09:49:38.861014', '6', 'Matthijs De Ligt', 1, '[{\"added\": {}}]', 19, 2),
(321, '2023-01-15 09:49:48.653877', '6', 'Matthijs De Ligt', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 19, 2),
(322, '2023-01-15 09:51:13.642612', '6', 'Matthijs De Ligt', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(323, '2023-01-15 10:06:10.964632', '7', 'Lucas Hernández', 1, '[{\"added\": {}}]', 19, 2),
(324, '2023-01-15 10:06:46.439235', '8', 'Daley Blind', 1, '[{\"added\": {}}]', 19, 2),
(325, '2023-01-15 10:07:40.496193', '9', 'Noussair Mazraoui', 1, '[{\"added\": {}}]', 19, 2),
(326, '2023-01-15 10:07:47.760521', '8', 'Daley Blind', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 19, 2),
(327, '2023-01-15 10:08:38.608105', '10', 'Dayot Upamecano', 1, '[{\"added\": {}}]', 19, 2),
(328, '2023-01-15 10:09:17.773205', '11', 'Alphonso Davies', 1, '[{\"added\": {}}]', 19, 2),
(329, '2023-01-15 10:09:32.768625', '10', 'Dayot Upamecano', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(330, '2023-01-15 10:09:38.002412', '11', 'Alphonso Davies', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(331, '2023-01-15 10:14:19.676048', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Finished\", \"Booking open\"]}}]', 26, 2),
(332, '2023-01-15 10:15:32.467911', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Scored\", \"Conceded\", \"Video url\"]}}]', 26, 2),
(333, '2023-01-15 10:20:00.391879', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Pass acc\", \"Shot acc\", \"Offsides\", \"Fouls\", \"Shots\", \"Shots target\", \"Corners\", \"Saves\", \"Possession\", \"Pass acc opp\", \"Shot acc opp\", \"Offsides opp\", \"Fouls opp\", \"Shots opp\", \"Shots target opp\", \"Corners opp\", \"Saves opp\"]}}]', 26, 2),
(334, '2023-01-15 10:59:02.317365', '4', '2018/19', 1, '[{\"added\": {}}]', 22, 2),
(335, '2023-01-15 10:59:29.459496', '5', '2019/20', 1, '[{\"added\": {}}]', 22, 2),
(336, '2023-01-15 11:14:49.435115', '3', 'Serge Gnabry', 2, '[{\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2018/19\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2019/20\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2020/21\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2021/22\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2022/23\"}}]', 19, 2),
(337, '2023-01-15 11:28:11.583204', '3', 'Serge Gnabry', 2, '[{\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2022/23\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2021/22\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2020/21\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2019/20\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2018/19\"}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2018/19\", \"fields\": [\"Fouls\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2019/20\", \"fields\": [\"Fouls\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2020/21\", \"fields\": [\"Fouls\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2021/22\", \"fields\": [\"Fouls\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2022/23\", \"fields\": [\"Fouls\"]}}]', 19, 2),
(338, '2023-01-15 11:41:13.313157', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2018/19\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2019/20\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2020/21\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2021/22\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2022/23\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2022/23\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2021/22\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2020/21\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2019/20\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2018/19\", \"fields\": [\"Ppg\"]}}]', 19, 2),
(339, '2023-01-15 11:45:35.460735', '3', 'Serge Gnabry', 2, '[{\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2022/23\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2021/22\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2020/21\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2019/20\"}}, {\"added\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2018/19\"}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2018/19\", \"fields\": [\"Minutes\"]}}]', 19, 2),
(340, '2023-01-15 12:22:31.027653', '1', 'Friendly-Friendly-FC Red Bull Salzburg', 2, '[{\"changed\": {\"fields\": [\"Summary\"]}}]', 26, 2),
(341, '2023-01-15 12:35:25.411251', '12', 'Joshua Kimmich', 1, '[{\"added\": {}}]', 19, 2),
(342, '2023-01-15 12:36:05.310502', '13', 'Leon Goretzka', 1, '[{\"added\": {}}]', 19, 2),
(343, '2023-01-15 12:37:10.909908', '14', 'Paul Wanner', 1, '[{\"added\": {}}]', 19, 2),
(344, '2023-01-15 12:37:36.962521', '15', 'Marcel Sabitzer', 1, '[{\"added\": {}}]', 19, 2),
(345, '2023-01-15 12:38:18.812392', '16', 'Ryan Gravenberch', 1, '[{\"added\": {}}]', 19, 2),
(346, '2023-01-15 12:55:05.326877', '17', 'Josip Stanišić', 1, '[{\"added\": {}}]', 19, 2),
(347, '2023-01-15 12:55:29.153606', '17', 'Josip Stanišić', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(348, '2023-01-15 12:56:12.656919', '18', 'Bouna Sarr', 1, '[{\"added\": {}}]', 19, 2),
(349, '2023-01-15 12:56:55.237696', '19', 'Kingsley Coman', 1, '[{\"added\": {}}]', 19, 2),
(350, '2023-01-15 12:57:02.058564', '19', 'Kingsley Coman', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(351, '2023-01-15 12:57:07.986697', '18', 'Bouna Sarr', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(352, '2023-01-15 12:57:45.699006', '20', 'Sadio Mané', 1, '[{\"added\": {}}]', 19, 2),
(353, '2023-01-15 12:58:27.374205', '21', 'Thomas Müller', 1, '[{\"added\": {}}]', 19, 2),
(354, '2023-01-15 12:58:59.228392', '22', 'Mathys Tel', 1, '[{\"added\": {}}]', 19, 2),
(355, '2023-01-15 12:59:36.974258', '23', 'Jamal Musiala', 1, '[{\"added\": {}}]', 19, 2),
(356, '2023-01-15 13:09:10.786270', '24', 'Johannes Schenk', 1, '[{\"added\": {}}]', 19, 2),
(357, '2023-01-15 13:11:18.792271', '5', 'Dino Toppmöller', 1, '[{\"added\": {}}]', 24, 2),
(358, '2023-01-15 13:13:30.662538', '6', 'Prof Dr Holger Broich', 1, '[{\"added\": {}}]', 24, 2),
(359, '2023-01-15 13:14:28.421220', '7', 'Toni Tapalović', 1, '[{\"added\": {}}]', 24, 2),
(360, '2023-01-15 13:17:09.981434', '18', 'Bouna Sarr', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 19, 2),
(361, '2023-01-15 13:19:44.287721', '25', 'Benjamin Pavard', 1, '[{\"added\": {}}]', 19, 2),
(362, '2023-01-15 13:20:23.171931', '26', 'Leroy Sané', 1, '[{\"added\": {}}]', 19, 2),
(363, '2023-01-15 13:23:24.219816', '26', 'Leroy Sané', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 19, 2),
(364, '2023-01-15 13:23:30.152868', '25', 'Benjamin Pavard', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 19, 2),
(365, '2023-01-15 13:41:33.230572', '9', 'Paulaner', 1, '[{\"added\": {}}]', 23, 2),
(366, '2023-01-15 13:43:19.542315', '10', 'Qatar Airways', 1, '[{\"added\": {}}]', 23, 2),
(367, '2023-01-15 13:46:26.939711', '11', 'SAP', 1, '[{\"added\": {}}]', 23, 2),
(368, '2023-01-15 13:47:20.085531', '12', 'Siemens', 1, '[{\"added\": {}}]', 23, 2),
(369, '2023-01-15 13:53:52.071986', '13', 'Tipico', 1, '[{\"added\": {}}]', 23, 2),
(370, '2023-01-15 13:54:43.852617', '14', 'Viessmann', 1, '[{\"added\": {}}]', 23, 2),
(371, '2023-01-15 14:05:17.110160', '1', 'Telekom', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(372, '2023-01-15 14:05:24.971180', '2', 'Adidas', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(373, '2023-01-15 14:05:31.907296', '3', 'Audi', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(374, '2023-01-15 14:05:38.327465', '4', 'Allianz', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(375, '2023-01-15 14:05:44.066774', '5', 'Adobe', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(376, '2023-01-15 14:05:49.805814', '6', 'Hypovereinsbank', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(377, '2023-01-15 14:05:57.944989', '7', 'Hylo', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(378, '2023-01-15 14:06:04.623543', '8', 'Konami', 2, '[{\"changed\": {\"fields\": [\"Logo white\"]}}]', 23, 2),
(379, '2023-01-15 14:58:39.195163', '3', 'Serge Gnabry', 2, '[{\"added\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (1)\"}}, {\"added\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (2)\"}}, {\"added\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (3)\"}}]', 19, 2),
(380, '2023-01-15 15:03:47.446190', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (1)\", \"fields\": [\"Description\"]}}, {\"changed\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (2)\", \"fields\": [\"Description\"]}}, {\"changed\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (3)\", \"fields\": [\"Description\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2022/23\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2021/22\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2019/20\", \"fields\": [\"Ppg\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2018/19\", \"fields\": [\"Ppg\"]}}]', 19, 2),
(381, '2023-01-15 15:12:43.235328', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2022/23\", \"fields\": [\"Fouls\", \"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2020/21\", \"fields\": [\"Fouls\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2019/20\", \"fields\": [\"Fouls\", \"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2018/19\", \"fields\": [\"Fouls\", \"Offsides\"]}}]', 19, 2),
(382, '2023-01-15 15:32:19.151814', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2018/19\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2019/20\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2020/21\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2021/22\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2022/23\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2022/23\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2021/22\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2020/21\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2019/20\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2018/19\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2022/23\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2021/22\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2019/20\", \"fields\": [\"Win ratio\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2018/19\", \"fields\": [\"Win ratio\"]}}]', 19, 2),
(383, '2023-01-15 15:36:07.547109', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2018/19\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2019/20\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2020/21\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2021/22\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-BundesLiga-2022/23\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2022/23\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2021/22\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2019/20\", \"fields\": [\"Offsides\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-UEFA Champions League-2018/19\", \"fields\": [\"Offsides\"]}}]', 19, 2),
(384, '2023-01-15 15:37:29.707506', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2022/23\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2021/22\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2020/21\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2019/20\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2018/19\", \"fields\": [\"Rating\"]}}]', 19, 2),
(385, '2023-01-15 15:48:44.237728', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2022/23\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2021/22\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2020/21\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2019/20\", \"fields\": [\"Rating\"]}}, {\"changed\": {\"name\": \"player_ stats\", \"object\": \"Serge Gnabry-DFB Pokal-2018/19\", \"fields\": [\"Rating\"]}}]', 19, 2),
(386, '2023-01-15 15:54:07.369551', '3', 'Injuries', 2, '[{\"changed\": {\"fields\": [\"Css name\"]}}]', 7, 2),
(387, '2023-01-15 15:54:20.550894', '2', 'The Team', 2, '[{\"changed\": {\"fields\": [\"Css name\"]}}]', 7, 2),
(388, '2023-01-15 15:55:46.083041', '1', 'BundesLiga', 2, '[{\"changed\": {\"fields\": [\"Css name\"]}}]', 7, 2),
(389, '2023-01-15 16:04:04.346841', '3', 'Serge Gnabry', 2, '[{\"added\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2017-07-14\"}}, {\"added\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2018-06-30\"}}, {\"changed\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2017-07-01\", \"fields\": [\"Date\"]}}]', 19, 2),
(390, '2023-01-15 16:11:02.233363', '3', 'Serge Gnabry', 2, '[{\"added\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2021-04-05\"}}, {\"added\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2020-01-02\"}}, {\"added\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2022-03-21\"}}, {\"changed\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2019-06-21\", \"fields\": [\"Description\", \"Date\"]}}]', 19, 2),
(391, '2023-01-15 16:13:45.297160', '3', 'Serge Gnabry', 2, '[{\"added\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2018-12-20\"}}, {\"added\": {\"name\": \"timeline\", \"object\": \"Serge Gnabry-2018-08-06\"}}]', 19, 2),
(392, '2023-01-15 16:27:41.614960', '2', 'BundesLiga-Matchday 16', 1, '[{\"added\": {}}]', 49, 2),
(393, '2023-01-15 16:35:01.012230', '5', 'Friendly-Friendly-Neeraj Vibez-cat_1x1', 3, '', 48, 2),
(394, '2023-01-15 16:35:01.015695', '4', 'Friendly-Friendly-Neeraj Vibez-cat_1x2', 3, '', 48, 2),
(395, '2023-01-15 16:35:01.016643', '1', 'Friendly-Friendly-Neeraj Vibez-cat_2x7', 3, '', 48, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(37, 'main', 'address'),
(36, 'main', 'album_image'),
(7, 'main', 'article_type'),
(8, 'main', 'bayern'),
(41, 'main', 'board_member'),
(9, 'main', 'club_album'),
(35, 'main', 'club_season_stats'),
(34, 'main', 'comment'),
(10, 'main', 'competition'),
(50, 'main', 'contact_us_request'),
(11, 'main', 'customuser'),
(40, 'main', 'goalscorers'),
(44, 'main', 'likes'),
(26, 'main', 'match'),
(12, 'main', 'match_event'),
(39, 'main', 'match_timeline'),
(13, 'main', 'merchandise'),
(33, 'main', 'merchandise_image'),
(32, 'main', 'merchandise_information'),
(14, 'main', 'merchandise_size'),
(15, 'main', 'merchandise_type'),
(43, 'main', 'mini_articles'),
(16, 'main', 'nationality'),
(17, 'main', 'news_article'),
(45, 'main', 'news_tag'),
(31, 'main', 'news_tag_player'),
(30, 'main', 'news_tag_staff'),
(38, 'main', 'opponent_goalscorers'),
(18, 'main', 'order'),
(29, 'main', 'order_item'),
(19, 'main', 'player'),
(28, 'main', 'player_image'),
(27, 'main', 'player_stats'),
(20, 'main', 'position'),
(21, 'main', 'scheduled_match'),
(22, 'main', 'season'),
(47, 'main', 'social_media_links'),
(48, 'main', 'sold_ticket'),
(23, 'main', 'sponsor'),
(24, 'main', 'staff'),
(25, 'main', 'team'),
(49, 'main', 'tickets_collection'),
(46, 'main', 'timeline'),
(42, 'main', 'trophies'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-16 09:00:38.445467'),
(2, 'auth', '0001_initial', '2022-12-16 09:00:38.613003'),
(3, 'admin', '0001_initial', '2022-12-16 09:00:38.662949'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-16 09:00:38.677725'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-16 09:00:38.691581'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-16 09:00:38.734780'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-16 09:00:38.757891'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-16 09:00:38.778025'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-16 09:00:38.790529'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-16 09:00:38.818427'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-16 09:00:38.819886'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-16 09:00:38.827366'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-16 09:00:38.840978'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-16 09:00:38.853729'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-16 09:00:38.867310'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-16 09:00:38.875613'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-16 09:00:38.891296'),
(18, 'auth', '0013_user_slug', '2022-12-16 09:00:38.910137'),
(19, 'auth', '0014_remove_user_slug', '2022-12-16 09:00:38.928541'),
(21, 'sessions', '0001_initial', '2022-12-16 09:00:40.128326'),
(39, 'main', '0001_initial', '2022-12-20 06:10:46.201880'),
(40, 'main', '0002_news_article_related_news', '2022-12-26 20:20:33.460368'),
(41, 'main', '0003_remove_news_article_related_news_and_more', '2022-12-26 20:28:41.388976'),
(42, 'main', '0004_team_short_name', '2022-12-29 06:48:14.217350'),
(43, 'main', '0005_merchandise_related_products', '2023-01-04 10:06:10.565593'),
(44, 'main', '0006_order_delivered', '2023-01-04 16:18:46.398488'),
(45, 'main', '0007_merchandise_added', '2023-01-05 08:49:44.594571'),
(46, 'main', '0008_album_image_image_url_club_album_featured_image_url_and_more', '2023-01-05 19:03:10.939925'),
(47, 'main', '0009_alter_album_image_image_and_more', '2023-01-05 19:05:34.248570'),
(48, 'main', '0010_alter_album_image_date_alter_album_image_description', '2023-01-05 19:06:39.313110'),
(49, 'main', '0011_remove_match_timeline_match_and_more', '2023-01-06 14:08:41.615208'),
(50, 'main', '0012_delete_match', '2023-01-06 14:09:11.886644'),
(51, 'main', '0013_delete_scheduled_match', '2023-01-06 14:09:51.590948'),
(52, 'main', '0014_match_alter_match_event_name_opponent_goalscorers_and_more', '2023-01-06 14:36:30.647416'),
(53, 'main', '0015_alter_match_conceded_alter_match_corners_and_more', '2023-01-06 14:45:54.153208'),
(54, 'main', '0016_news_tag_alter_news_article_excerpt_and_more', '2023-01-07 17:43:35.368114'),
(55, 'main', '0017_match_tags_alter_news_article_tags', '2023-01-07 19:41:32.868970'),
(56, 'main', '0018_remove_match_tags_match_news_tags', '2023-01-07 20:21:44.234853'),
(57, 'main', '0019_news_article_home_banner', '2023-01-07 20:54:08.028795'),
(58, 'main', '0020_match_tags', '2023-01-07 20:56:40.534701'),
(59, 'main', '0021_timeline', '2023-01-08 09:19:41.535038'),
(60, 'main', '0022_alter_timeline_player_alter_timeline_staff', '2023-01-08 09:23:24.252980'),
(61, 'main', '0023_social_media_links', '2023-01-08 15:49:03.029264'),
(62, 'main', '0024_remove_news_tag_staff_news_and_more', '2023-01-08 16:10:53.446419'),
(63, 'main', '0025_news_article_player_tags_news_article_staff_tags', '2023-01-08 16:14:35.224052'),
(64, 'main', '0026_remove_player_position', '2023-01-08 18:47:21.845585'),
(65, 'main', '0027_player_position', '2023-01-08 18:51:00.521589'),
(66, 'main', '0028_delete_position', '2023-01-08 18:52:06.615106'),
(67, 'main', '0029_remove_order_tax', '2023-01-09 18:41:20.348617'),
(68, 'main', '0030_alter_order_company_alter_order_last_name_and_more', '2023-01-09 18:56:41.262377'),
(69, 'main', '0031_alter_order_payment_method', '2023-01-09 18:57:44.472939'),
(70, 'main', '0032_alter_order_payment_method', '2023-01-09 19:15:00.262102'),
(71, 'main', '0033_alter_order_payment_method', '2023-01-09 19:15:21.442949'),
(72, 'main', '0034_alter_order_order_notes', '2023-01-09 19:22:10.566554'),
(73, 'main', '0035_alter_staff_biography_alter_staff_born_and_more', '2023-01-10 06:38:11.817042'),
(74, 'main', '0036_alter_player_age_alter_player_biography_and_more', '2023-01-10 08:29:52.888391'),
(75, 'main', '0037_remove_customuser_content_creator_and_more', '2023-01-11 16:16:49.064497'),
(76, 'main', '0038_tickets_collection_sold_ticket', '2023-01-11 19:15:08.628622'),
(77, 'main', '0039_tickets_collection_cat_1_price_and_more', '2023-01-12 16:29:27.784701'),
(78, 'main', '0040_sold_ticket_payment_method_sold_ticket_price', '2023-01-12 19:17:16.212610'),
(79, 'main', '0041_match_booking_open', '2023-01-12 21:22:08.652655'),
(80, 'main', '0042_contact_us_request', '2023-01-12 22:14:15.711896'),
(81, 'main', '0043_alter_player_born_alter_player_rating', '2023-01-15 09:48:27.521197'),
(82, 'main', '0044_alter_player_height', '2023-01-15 09:48:57.627444'),
(83, 'main', '0045_alter_player_rating', '2023-01-15 09:49:32.160493'),
(84, 'main', '0046_player_image_image_url_alter_player_image_date_and_more', '2023-01-15 10:56:49.202289'),
(85, 'main', '0047_alter_player_stats_rating', '2023-01-15 15:37:09.032687');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ug6m4u0exvsj2bp2s51iqnwz6gqbwt8', 'eyJpbnN0YS1mb2xsb3dlcnMiOiIzNS41TSJ9:1p6QXH:GqJSkYBb-aOjP2t7HFni5THY80bwrxG8rVj_4wZZB4I', '2022-12-31 06:19:03.154007'),
('6g4f6go0qo8gc84e5ewmzkqznbf4fspw', '.eJxVjMsOgyAUBf-FdUsEebrs3m8wF7hUWyMJYLow_ns1ceN2Zs7ZyLSUCs-Y5jn9MBfSkVZS3ZMHGWCt47AWzMMUDs7vzIH_4nKK8IHlnahPS82To2dCL1tonwLOr6u9HYxQxmPtpAEvPTcOmLNOaSNDazVIZbxwkYvGYWTMCwgRrUUmo4oMG8FRCd_o49RDrqTb9v0PiZpD5Q:1pDgJO:9P15jd515mJV-f23gyziJX8s5H-8sXDdmlv3AfgspLQ', '2023-01-20 06:34:42.911084'),
('6ptim8ys298c0ul1x4293u1rjr1wb8xi', 'e30:1p66kV:cb3rUeqJqBqMcmDMeEei7fjG_qYo3RTcpC843xL0xTQ', '2022-12-30 09:11:23.903579'),
('7jhhkix806be0eaimi90otyh1sc7f7nw', '.eJydULtuwzAM_BVDc-RafttjAnTLUqCzQcl0rMaRVUtumwb591JBgDZrF4I8Hu9IXpiCxbP2wooQVoeL7lmbbphd5n5VvgtlsWEGTsha9ryLtnDGxUQi8WO0m41DtXr9gdFuhJPVBIzaRjuwEY9esKf4arTDL7Zh7ysYr_2ZtSLoaxUURRMnNTX1CQ6hduNsnwbF5c2GBxuufm24-mPDFVi-YM_Xm0XnXN5ZLrIsE3lVxdYcSHjS5ki6_5OkeQUeD_NCW1NqHSFOf9OmCd0wBUVKr1c6wDgPfJinaf7ExRE9K2OxJ34Hqx-78NvbN1n6iElQRzSh0b-BOcwx7eYXLeNAie9dF-_nHqftnfsgMIIbaVoWNahCpbUEIRtZVnXRZ00FRVmrXA5pnkgchFA59AM2DYpiKAeBSZ5imaukYtcfPTWuTg:1pGGZ3:Dr4aZXLqkx1GkcUr7vtkAxiZBEyPNa2cUW5Bv3JSkj4', '2023-01-27 09:41:33.024023'),
('9fhja718b3wjdsht81g7xm4fg82caek3', 'eyJpbnN0YS1mb2xsb3dlcnMiOiIzNk0ifQ:1pDnrA:R8t6PPtNrQSb4IIK3dpEXu3dbrhOOkH5Zy2NuywwTCM', '2023-01-20 14:38:04.611842'),
('b9bi7vxs7p9aatr7wb9zwxl7es3vzy5v', 'e30:1p6zNC:AvflqbDrX70MA-5s5NZFqkLvWLkqgF2dHXDZdA-MdLI', '2023-01-01 19:30:58.275569'),
('gv35g17t2ipl0vcqu7z8f0a5k70kwq35', '.eJxVjkEOgyAURO_C2hIt_Qgu3XsG84FPtTWQAKYL492riYt2O-_NZDY24lqmcc2UxtmxjklW_WYG7ZvCCdwLwzNyG0NJs-Gnwi-a-RAdLf3l_g1MmKejTVJrYbBB5VTttTUAQEqCIU_ePKRwqm0VNIAkjLZ3h3iIytceG2jd-cpiKqzb9orNIRe8-bgs8UMpH_MCuBzY_gXTVEQt:1p9sQG:uS2Vy-UvffbYwIWrPEElEmRfL1uZY6eIDTdf2RCJlRs', '2023-01-09 18:42:04.679418'),
('mh3pbpy918rp48o0isoy9836i3q6kk0y', '.eJx9kbtuwzAMRX_F0By5liw_xxTolqndDb1sK3EkV5JRpEH-vVTgJUsXAnzcw0vwjowNkePRLYv70T6gHpX1CR3QwLc4D1vQfjAKqvS1Jri8aJsa6szt5HLpbPRG5Gkk37shPzmll-M--wKYeZhBLaqWy0rSVnAiOlE3baXKruFV3UomRsoKoUdCJONq1F2nSTXWI9EFo7pmsmgAKrmPqL-DQwiJnfzSA1q9U5uMw55aftWw8OM9O_Kb9jb7mo1X2SfEmNGCUkxLoH1v3EYTb6gnCWFkEjUsJwU0zZVPKQ-zW99GicWThGMi4ZBIeCcNIbBhxaQsSUkakq92Av1i7AXk_yqfF0U9OQ8e0Bl-om8BisH8wuoGTC1JCzc9Ho8_YV6Olw:1pEqDr:Wr76F_RcmEh46lHuE3FyMvtAv8lWD_-gf5rGsk_74KU', '2023-01-23 11:21:47.409643'),
('u7co98bhy5sqcrap4dbhvf03ur1680n5', 'eyJpbnN0YS1mb2xsb3dlcnMiOiIzNS41TSJ9:1p70FI:Ye5utLdiH572ZqbLGOqIiQAq0gGhssO-u0ATYGNoA2s', '2023-01-01 20:26:52.449094');

-- --------------------------------------------------------

--
-- Table structure for table `main_address`
--

CREATE TABLE `main_address` (
  `id` bigint(20) NOT NULL,
  `address_type` varchar(30) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `country` varchar(2) NOT NULL,
  `address_1` varchar(200) DEFAULT NULL,
  `address_2` varchar(200) DEFAULT NULL,
  `postcode` bigint(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_address`
--

INSERT INTO `main_address` (`id`, `address_type`, `first_name`, `last_name`, `company`, `country`, `address_1`, `address_2`, `postcode`, `city`, `state`, `phone_number`, `email`, `user_id`) VALUES
(1, 'billing', 'Neeraj', 'V B', '', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', 2),
(2, 'shipping', 'NEERAJ', 'V B', 'CCSIT', 'IN', 'Near Thechikottukavu Temple', 'P. O. Peramangalam', 680545, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_album_image`
--

CREATE TABLE `main_album_image` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `parent_album_id` bigint(20) DEFAULT NULL,
  `image_url` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_album_image`
--

INSERT INTO `main_album_image` (`id`, `image`, `description`, `date`, `parent_album_id`, `image_url`) VALUES
(1, '', 'Sane signing autographs', '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/01-oeffentliches-training-230105-fcbayern-mel.jpg'),
(2, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/02-oeffentliches-training-230105-fcbayern-mel.jpg'),
(3, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/03-oeffentliches-training-230105-fcbayern-mel.jpg'),
(4, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/04-oeffentliches-training-230105-fcbayern-mel.jpg'),
(5, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/05-oeffentliches-training-230105-fcbayern-mel.jpg'),
(6, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/06-oeffentliches-training-230105-fcbayern-mel.jpg'),
(7, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/07-oeffentliches-training-230105-fcbayern-mel.jpg'),
(8, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/08-oeffentliches-training-230105-fcbayern-mel.jpg'),
(9, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/09-oeffentliches-training-230105-fcbayern-mel.jpg'),
(10, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/10-oeffentliches-training-230105-fcbayern-mel.jpg'),
(11, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/11-oeffentliches-training-230105-fcbayern-mel.jpg'),
(12, '', NULL, '2023-01-05', 1, 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/12-oeffentliches-training-230105-fcbayern-mel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `main_article_type`
--

CREATE TABLE `main_article_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `css_name` varchar(20) DEFAULT NULL,
  `category` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_article_type`
--

INSERT INTO `main_article_type` (`id`, `name`, `css_name`, `category`) VALUES
(1, 'BundesLiga', 'league', 2),
(2, 'The Team', 'team', 1),
(3, 'Injuries', 'injury', 3),
(4, 'Youth', 'youth', 5),
(5, 'Champions League', 'ucl', 4),
(6, 'The Club', 'club', 6),
(7, 'Transfers', 'transfer', 7),
(8, 'Awards', 'award', 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_board_member`
--

CREATE TABLE `main_board_member` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(600) NOT NULL,
  `biography` longtext DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `board_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_board_member`
--

INSERT INTO `main_board_member` (`id`, `name`, `designation`, `profile_pic`, `biography`, `slug`, `board_type`) VALUES
(1, 'Oliver Kahn', 'Chief Executive Officer', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/ag/vorstand/kahn_2021.jpg', '<p>Oliver Kahn has been CEO of FC Bayern M&uuml;nchen AG since 1 July 2021. The former captain of the German record champions and the German national team joined the board on 1 January 2020 before eventually taking over from Karl-Heinz Rummenigge as CEO.</p>\r\n\r\n<p>Born in Karlsruhe on 15 June 1969, Kahn made his Bundesliga debut for his home club Karlsruher SC in November 1987. He joined FC Bayern in the summer of 1994 and went on to make 632 competitive appearances and achieve his biggest successes in the 14 years that followed.</p>\r\n\r\n<p>Kahn celebrated a total of 23 titles in his outstandingly successful career, including the Champions League in 2001, the Intercontinental Cup in 2001 and the UEFA Cup in 1996. Kahn won eight German championship titles, six DFB Cups and six League Cup titles. He was named German Footballer of the Year in 2000 and 2001 and World&#39;s Best Goalkeeper in 1999, 2001 and 2002.</p>\r\n\r\n<p>Kahn made 86 senior appearances for Germany, 49 of them as captain. He won the European Championship in 1996 and finished World Cup runner-up in 2002. He became the only goalkeeper to win the Golden Ball award for the best player of a FIFA World Cup, recognising his outstanding performances on the road to the final in 2002.</p>\r\n\r\n<p>After 20 years as a pro, Oliver Kahn hung up his gloves in 2008, working as a pundit for state broadcaster ZDF for international and Champions League matches. He won the German Sports Journalists&#39; Award for his work as a sports expert three times in a row, in 2015, 2017 and 2019.</p>\r\n\r\n<p>Besides his work as a TV expert, Kahn is a businessman. He completed his studies in Salzburg and earned an MBA in General Management in 2011. Oliver Kahn is one of the co-founders of&nbsp;<em>Goalplay</em>. The globally operating company focuses on perfecting the skills of football goalkeepers and goalkeeping coaches.</p>\r\n\r\n<p>Oliver Kahn was inducted into the Hall of Fame of German Football in 2019.</p>\r\n\r\n<p>The FC Bayern honorary captain promotes the global establishment of educational centres for socially disadvantaged children and adolescents through the&nbsp;<em>Oliver Kahn Foundation</em>.</p>', 'oliver-kahn', 'ag'),
(2, 'Jan-Christian Dreesen', 'Executive vice chairman', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1605773710/cms/public/images/fcbayern-com/homepage/club/ag/vorstand/2x1/dreesen_2020-2x1.jpg', '<p>In February 2013, Jan-Christian Dreesen took over from Karl Hopfner on the FC Bayern executive board. Born in 1967 and raised in East Frisia, the married father of two completed a banking apprenticeship and studied business management before going on to serve at board level with Hypo Vereinsbank, UBS and BayernLB. His responsibilities at FC Bayern include finance, bookkeeping, legal affairs and human resources.</p>', 'jan-christian-dreesen', 'ag'),
(3, 'Andreas Jung', 'Executive board member', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1605772442/cms/public/images/fcbayern-com/homepage/club/ag/vorstand/2x1/jung_2020-2x1.jpg', '<p>Andreas Jung joined FC Bayern Munich in 1996. A qualified sports scientist and sports manager, he was an active member of the Bund Deutscher Radfahrer (German Cycling Association), ultimately as managing director of the organising committee for the 1995 Cycling World Championships, before committing his future career to Germany&#39;s most successful football club. Jung, who was born on 23 November 1961, started his career at Bayern with Sportwerbe GmbH, then the club&#39;s commercial arm. He went on to head the Sponsorship and Event Marketing department, before earning promotion to director in 2002 and Prokurist (company officer with statutory authority) in 2009.</p>\r\n\r\n<p>As Executive Board Member since 1 July 2010, he is responsible at board level for sponsorship and events, brand management, new media and IT, merchandising and licenses, international relations, and marketing and PR for the Allianz Arena in Munich. Jung is also spokesperson for the DFL League Association&#39;s sponsorship task force.</p>', 'andreas-jung', 'ag'),
(4, 'Herbert Hainer', 'President', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/offizielle/hainer/201110_Portr%C3%A4tHainerNEU.jpg', '<p>Herbert Hainer was elected president of the football club with the largest membership in the world at the FC Bayern M&uuml;nchen eV Annual General Meeting on 15 November 2019, succeeding Uli Hoene&szlig;.</p>\r\n\r\n<p>Hainer had been deputy chairman of the FC Bayern M&uuml;nchen AG supervisory board since the company&#39;s incorporation in 2002. On 9 December 2019, he was unanimously voted chairman of the supervisory board by his colleagues and thereby elected to this post as successor to Uli Hoene&szlig;. He previously held the office of chairman of the FC Bayern M&uuml;nchen AG supervisory board from 14 March 2014 to 8 September 2014, after Uli Hoene&szlig; temporarily resigned his position.</p>\r\n\r\n<p>Herbert Hainer was born on 3 July 1954 in Dornwang, near Dingolfing. After graduating from high school, he studied business administration at Landshut University of Applied Sciences, graduating in 1979 with a degree in business administration. Hainer then began his professional career with the internationally active care products group Procter&amp;Gamble in Frankfurt. In 1987, Hainer switched to the sports goods manufacturer adidas. After holding several management positions there, he was appointed to the executive board in 1997 and became chairman of the executive board in 2001.</p>\r\n\r\n<p>From then on, Hainer headed the international sporting goods group of 55,000 employees and 110 subsidiaries for 15 years. During this time, the value of the company increased twelvefold from &euro;3 billion to &euro;36 billion, sales grew from around &euro;6 billion per year to over &euro;18 billion per year, and profits quintupled from around &euro;200 million to over &euro;1 billion. In 2016, Hainer resigned from his position as CEO at his own request.</p>\r\n\r\n<p>In 2002, Hainer was responsible for adidas AG&#39;s purchase of a 10% stake in FC Bayern M&uuml;nchen AG. This made adidas the first shareholder of the record champions, creating the financial basis for the construction of the Allianz Arena.</p>\r\n\r\n<p>Hainer always attached great importance to social responsibility during his time as CEO of adidas. This commitment has resulted in countless awards, for example, as the most sustainable company and the best employer.</p>\r\n\r\n<p>Since his youth, Hainer has been a passionate fan of FC Bayern. He himself was an striker for FC Dingolfing, with whom he won the Lower Bavarian championship in 1976.</p>\r\n\r\n<p>During his business administration studies, Hainer ran a pub in Dingolfing, the &#39;Gu&szlig;ofen&#39;. There, he met his wife Angelika, to whom he has been married for more than 30 years. The couple have one daughter. Their second daughter died in 2006.</p>\r\n\r\n<p>Hainer is a member of the supervisory boards of the Lufthansa Group, Allianz SE and the global management consultancy Accenture.</p>\r\n\r\n<p>Hainer has received numerous honours for his achievements in sports management. In addition to the Bambi Prize in the economics category (2003) and the Image Award (2006), he was awarded the Order of Merit of the Federal Republic of Germany (2008) and the Bavarian Order of Merit (2011). He was also named Entrepreneur of the Year (2005) and Manager of the Year (2010).</p>', 'herbert-hainer', 'ev'),
(5, 'Prof Dr Dieter Mayer', 'Senior vice-president', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/offizielle/prasidium/mayer_portrait_2015.jpg', '<p>Prof Dr. Dieter Mayer was elected senior vice-president of FC Bayern M&uuml;nchen eV on 25 November 2016 and has been a member of the FC Bayern M&uuml;nchen AG board since February 2017 and is chairman of the audit committee. A member since 2001, Dr. Mayer has held further important positions in the club, including the position of chairman of the disciplinary council of FC Bayern M&uuml;nchen eV from 2012 until he was elected deputy vice-president in May 2014.</p>\r\n\r\n<p>Born in Munich on 19 September 1955, he has practised as a notary public since 1991. He has been a notary in Munich since 1996. Mayer is an honorary professor at Ludwig-Maximilians University in Munich. In March 2017 Dr. Mayer was unanimously elected as the representative of southern German professional clubs for the Southern German Football Association</p>', 'prof-dr-dieter-mayer', 'ev');

-- --------------------------------------------------------

--
-- Table structure for table `main_club_album`
--

CREATE TABLE `main_club_album` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `featured_image` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `featured_image_url` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_club_album`
--

INSERT INTO `main_club_album` (`id`, `title`, `featured_image`, `date`, `slug`, `featured_image_url`) VALUES
(1, 'Photos from Bayern’s first open training of 2023', '', '2023-01-05', 'bayerns-first-open-training-of-2023', 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/01-oeffentliches-training-230105-fcbayern-mel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `main_club_season_stats`
--

CREATE TABLE `main_club_season_stats` (
  `id` bigint(20) NOT NULL,
  `played` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `scored` int(11) DEFAULT NULL,
  `conceded` int(11) DEFAULT NULL,
  `goal_diff` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `club_id` bigint(20) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_club_season_stats`
--

INSERT INTO `main_club_season_stats` (`id`, `played`, `wins`, `loss`, `draw`, `scored`, `conceded`, `goal_diff`, `points`, `club_id`, `competition_id`) VALUES
(2, 15, 10, 1, 4, 49, 13, 36, 34, 1, 1),
(3, 15, 9, 3, 3, 25, 17, 8, 30, 2, 1),
(4, 15, 8, 4, 3, 24, 20, 4, 27, 3, 1),
(5, 15, 8, 6, 1, 25, 21, 4, 25, 4, 1),
(6, 15, 8, 3, 4, 30, 21, 9, 28, 5, 1),
(7, 15, 8, 4, 3, 32, 24, 8, 27, 7, 1),
(8, 15, 2, 10, 3, 13, 32, -19, 9, 6, 1),
(9, 15, 6, 6, 3, 24, 20, 3, 23, 8, 1),
(10, 15, 4, 6, 5, 21, 29, -8, 17, 9, 1),
(11, 6, 3, 2, 1, 10, 7, 3, 10, 12, 2),
(12, 6, 6, 0, 0, 18, 2, 16, 18, 1, 2),
(13, 6, 2, 3, 1, 12, 12, 0, 7, 13, 2),
(14, 6, 0, 6, 0, 5, 24, -19, 0, 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_comment`
--

CREATE TABLE `main_comment` (
  `id` bigint(20) NOT NULL,
  `added` datetime(6) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `from_user_id` int(11) NOT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `parent_news_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_comment`
--

INSERT INTO `main_comment` (`id`, `added`, `text`, `from_user_id`, `parent_comment_id`, `parent_news_id`) VALUES
(1, '2022-12-20 18:08:31.489270', 'Well done Croatia', 2, NULL, 5),
(2, '2022-12-20 18:08:58.370951', 'Underrated team', 2, 1, 5),
(3, '2022-12-20 18:10:07.576914', 'Viva Brazil', 6, NULL, 5),
(4, '2022-12-29 06:20:31.079159', 'Cameroonian Lewandowski', 2, NULL, 6),
(5, '2023-01-13 09:34:04.240985', 'Hello Lagesh', 2, 3, 5),
(6, '2023-01-13 09:34:37.907912', 'Germany >>  Brazil', 2, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `main_competition`
--

CREATE TABLE `main_competition` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_competition`
--

INSERT INTO `main_competition` (`id`, `name`) VALUES
(1, 'BundesLiga'),
(2, 'UEFA Champions League'),
(3, 'DFB Pokal'),
(4, 'Friendly');

-- --------------------------------------------------------

--
-- Table structure for table `main_contact_us_request`
--

CREATE TABLE `main_contact_us_request` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_contact_us_request`
--

INSERT INTO `main_contact_us_request` (`id`, `name`, `subject`, `email`, `message`) VALUES
(2, 'Neeraj V B', 'Idk', 'neerajvb@gmail.com', 'Great');

-- --------------------------------------------------------

--
-- Table structure for table `main_customuser`
--

CREATE TABLE `main_customuser` (
  `user_ptr_id` int(11) NOT NULL,
  `name_display` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `social_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_customuser`
--

INSERT INTO `main_customuser` (`user_ptr_id`, `name_display`, `profile_pic`, `slug`, `social_link`) VALUES
(2, 'Neeraj Vibez', 'user_pfps/neeraj_pfp_sqr.png', 'neerajvibez', 'https://www.linkedin.com/in/neeraj-v-b-a23a1344/'),
(3, 'Neeraj V B New', 'user_pfps/default.jpg', 'neerajvb3', NULL),
(6, 'Ihsan K', 'user_pfps/lagesh.jpg', 'ihsankpkd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_goalscorers`
--

CREATE TABLE `main_goalscorers` (
  `id` bigint(20) NOT NULL,
  `minute` smallint(5) UNSIGNED DEFAULT NULL CHECK (`minute` >= 0),
  `match_id` bigint(20) NOT NULL,
  `name_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_goalscorers`
--

INSERT INTO `main_goalscorers` (`id`, `minute`, `match_id`, `name_id`) VALUES
(1, 38, 2, 3),
(2, 52, 2, 2),
(3, 22, 3, 3),
(4, 28, 3, 3),
(5, 82, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `main_likes`
--

CREATE TABLE `main_likes` (
  `id` bigint(20) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_likes`
--

INSERT INTO `main_likes` (`id`, `value`, `post_id`, `user_id`) VALUES
(4, 1, 1, 2),
(5, 0, 4, 2),
(6, 1, 5, 2),
(7, 1, 2, 2),
(9, 1, 6, 6),
(10, 1, 1, 3),
(11, 1, 2, 3),
(12, 1, 2, 6),
(13, 0, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_match`
--

CREATE TABLE `main_match` (
  `id` bigint(20) NOT NULL,
  `match_title` varchar(50) NOT NULL,
  `venue` varchar(50) DEFAULT NULL,
  `at_home` tinyint(1) NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `time` datetime(6) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `scored` smallint(5) UNSIGNED NOT NULL,
  `conceded` smallint(5) UNSIGNED NOT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `pass_acc` decimal(3,1) NOT NULL,
  `shot_acc` decimal(3,1) NOT NULL,
  `offsides` smallint(5) UNSIGNED NOT NULL,
  `fouls` smallint(5) UNSIGNED NOT NULL,
  `shots` smallint(5) UNSIGNED NOT NULL,
  `shots_target` smallint(5) UNSIGNED NOT NULL,
  `yellows` smallint(5) UNSIGNED NOT NULL,
  `reds` smallint(5) UNSIGNED NOT NULL,
  `corners` smallint(5) UNSIGNED NOT NULL,
  `saves` smallint(5) UNSIGNED NOT NULL,
  `possession` decimal(3,1) NOT NULL,
  `pass_acc_opp` decimal(3,1) NOT NULL,
  `shot_acc_opp` decimal(3,1) NOT NULL,
  `offsides_opp` smallint(5) UNSIGNED NOT NULL,
  `fouls_opp` smallint(5) UNSIGNED NOT NULL,
  `shots_opp` smallint(5) UNSIGNED NOT NULL,
  `shots_target_opp` smallint(5) UNSIGNED NOT NULL,
  `yellows_opp` smallint(5) UNSIGNED NOT NULL,
  `reds_opp` smallint(5) UNSIGNED NOT NULL,
  `corners_opp` smallint(5) UNSIGNED NOT NULL,
  `saves_opp` smallint(5) UNSIGNED NOT NULL,
  `competition_id` bigint(20) NOT NULL,
  `opponent_id` bigint(20) NOT NULL,
  `booking_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_match`
--

INSERT INTO `main_match` (`id`, `match_title`, `venue`, `at_home`, `finished`, `slug`, `time`, `summary`, `banner`, `scored`, `conceded`, `video_url`, `pass_acc`, `shot_acc`, `offsides`, `fouls`, `shots`, `shots_target`, `yellows`, `reds`, `corners`, `saves`, `possession`, `pass_acc_opp`, `shot_acc_opp`, `offsides_opp`, `fouls_opp`, `shots_opp`, `shots_target_opp`, `yellows_opp`, `reds_opp`, `corners_opp`, `saves_opp`, `competition_id`, `opponent_id`, `booking_open`) VALUES
(1, 'Friendly', 'Allianz Arena', 1, 1, 'friendly-redbull-salzburg', '2023-01-13 22:30:00.000000', 'FC Bayern drew 4-4 with Red Bull Salzburg in their only winter friendly before returning to Bundesliga action. Barely 24 hours after arriving back from the team’s training camp in Doha, and with a week to go before the first competitive fixture of 2023, Julian Nagelsmann named a strong line-up of Sven Ulreich, Josip Stanisic, Benjamin Pavard, Dayot Upamecano, Alphonso Davies, Joshua Kimmich, Ryan Gravenberch, Leroy Sane, Jamal Musiala, Serge Gnabry and captain Thomas Müller.\r\n\r\nIt took the hosts only nine minutes to break through at the FC Bayern Campus as Sane picked out the far top corner on his left foot from right of centre. The champions of Germany were the dominant side against their Austrian counterparts, but the visitors were level after 17 minutes when Sekou Koita clinically rounded off a counter-attack. Bayern continued to press and the chances piled up. Kimmich and Sane both saw efforts parried away by goalkeeper Philipp Köhn as the score remained level after the first 45 minutes.', 'banners/Allianz_Arena_wide.jpg', 4, 4, 'https://www.youtube.com/embed/d6zphAKiwhI', '88.0', '60.0', 2, 7, 20, 12, 0, 0, 5, 5, '70.0', '71.0', '63.6', 2, 11, 11, 7, 0, 0, 1, 9, 4, 11, 0),
(2, 'Matchday 15', 'VELTINS-Arena', 0, 1, 'bundesliga-matchday-15', '2022-11-12 22:00:00.000000', 'Bayern Munich ease into their World Cup break with a win, defeating Schalke 2-0 thanks to goals either side of the interval from Gnabry and Choupo-Moting. The hosts were organised and looked to cling onto a 0-0 headed into the half, but a first-time finish from the Germany international would break the resistance and put Reis’ side in an uncomfortable position. Offering little going forward, Schalke often found it difficult to win back the ball and once again succumbed to the pressure eight minutes shy of the hour, when Choupo-Moting popped up to score against his former side. The two-goal deficit was too much to overcome, as the hosts stay bottom of the table while Bayern Munich temporarily go six points up at the top.', 'banners/Allianz_Arena_wide.jpg', 2, 0, 'https://www.youtube.com/embed/G7HBU9jkb9k', '89.0', '28.6', 1, 4, 21, 6, 0, 0, 5, 3, '70.0', '70.0', '28.6', 1, 7, 7, 2, 0, 0, 4, 8, 1, 6, 0),
(3, 'Matchday 14', 'Allianz Arena', 1, 1, 'bundesliga-matchday-14', '2022-11-09 21:00:00.000000', 'The first half was eventful to say the least as there were five goals and a missed penalty. Musiala put Bayern ahead in the sixth minute with a composed finish before Jung equalised for Bremen four minutes later. Gnabry won a penalty soon after but Choupo-Moting’s spot-kick was saved well by Pavlenka. Gnabry then scored himself with an outstanding curling effort toward the far post which sparked a flurry of goals as Bayern found the net three times in seven minutes. Goretzka scored Bayern’s third before Gnabry got his second of the game to make it 4-1 before the break. The second period was fairly quiet for the most part but Gnabry completed his hat-trick in the 82nd minute with a cool finish before Tel scored two minutes later with a thunderbolt to end the game 6-1.', 'banners/Allianz_Arena_wide.jpg', 6, 1, 'https://www.youtube.com/embed/o_yNqoufHvs', '89.0', '47.6', 3, 9, 21, 10, 0, 0, 8, 9, '61.0', '77.0', '33.3', 1, 8, 6, 2, 0, 0, 4, 2, 1, 8, 0),
(4, 'Matchday 16', 'Redbull Arena', 0, 0, 'bundesliga-matchday-16', '2023-01-21 01:00:00.000000', '', 'banners/Allianz_Arena_wide.jpg', 0, 0, NULL, '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, '50.0', '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 1),
(5, 'Matchday 17', 'Allianz Arena', 1, 0, 'bundesliga-matchday-17', '2023-01-25 01:00:00.000000', '', 'banners/Allianz_Arena_wide.jpg', 0, 0, NULL, '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, '50.0', '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, 1, 9, 0),
(6, 'Matchday 18', 'Allianz Arena', 1, 0, 'bundesliga-matchday-18', '2023-01-28 23:00:00.000000', '', 'banners/Allianz_Arena_wide.jpg', 0, 0, NULL, '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, '50.0', '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, 1, 7, 0),
(7, 'Round of 16 - Leg 1 of 2', 'Le Parc des Princes', 0, 0, 'ucl-r16-leg1-psg', '2023-02-15 01:30:00.000000', '', 'banners/Allianz_Arena_wide.jpg', 0, 0, NULL, '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, '50.0', '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, 2, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_match_event`
--

CREATE TABLE `main_match_event` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_match_event`
--

INSERT INTO `main_match_event` (`id`, `name`) VALUES
(1, 'Yellow Card'),
(2, 'Red Card'),
(3, 'Goal'),
(4, 'Substitution');

-- --------------------------------------------------------

--
-- Table structure for table `main_match_news_tags`
--

CREATE TABLE `main_match_news_tags` (
  `id` bigint(20) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `news_article_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_match_news_tags`
--

INSERT INTO `main_match_news_tags` (`id`, `match_id`, `news_article_id`) VALUES
(1, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_match_tags`
--

CREATE TABLE `main_match_tags` (
  `id` bigint(20) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `news_tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_match_tags`
--

INSERT INTO `main_match_tags` (`id`, `match_id`, `news_tag_id`) VALUES
(2, 1, 8),
(1, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_match_timeline`
--

CREATE TABLE `main_match_timeline` (
  `id` bigint(20) NOT NULL,
  `is_bayern_player` tinyint(1) NOT NULL,
  `minute` smallint(5) UNSIGNED DEFAULT NULL CHECK (`minute` >= 0),
  `who` varchar(100) DEFAULT NULL,
  `match_id` bigint(20) NOT NULL,
  `name_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_match_timeline`
--

INSERT INTO `main_match_timeline` (`id`, `is_bayern_player`, `minute`, `who`, `match_id`, `name_id`) VALUES
(1, 1, 38, 'Serge Gnabry', 2, 3),
(2, 1, 52, 'Eric Maxim Choupo-Moting', 2, 3),
(3, 0, 59, 'Jordan Larsson', 2, 4),
(4, 1, 60, 'Matthijs de Ligt', 2, 4),
(5, 0, 65, 'Timothee Kolodziejczak', 2, 4),
(6, 0, 66, 'Sidi Sane', 2, 4),
(7, 1, 72, 'Marcel Sabitzer', 2, 4),
(8, 1, 72, 'Josip Stanisic', 2, 4),
(9, 0, 75, 'Danny Latza', 2, 4),
(10, 0, 75, 'Mehmet-Can Aydin', 2, 4),
(11, 1, 79, 'Paul Wanner', 2, 4),
(12, 1, 80, 'Ryan Gravenberch', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise`
--

CREATE TABLE `main_merchandise` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `featured_image` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  `product_information` longtext DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `added` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise`
--

INSERT INTO `main_merchandise` (`id`, `name`, `featured_image`, `price`, `discount`, `description`, `product_information`, `slug`, `category_id`, `added`) VALUES
(1, 'FC Bayern ZX Modern Boost Trainers - White', 'shop/fc-bayern-zx-modern-boost-trainers-white_ss4_p-12082296.png', '180.50', 0, 'Maintain a stylish presence. The trainers are more than suitable for a day out watching your team, or when spending time with friends.', '<p>With over 290,000 club members, FC Bayern M&uuml;nchen eV is the sports club boasting the largest number of members in the world. Through their membership, our supporters not only document their identification with the club, but are also part of the large FC Bayern family.</p>\r\n\r\n<p>Your heart also beats for FC Bayern Munich and you would like to be part of the red and white club family? Then apply for&nbsp;<a href=\"https://online.fcbayern.com/ev-mitglied-werden/en#/\">membership</a>&nbsp;now - we look forward to welcoming you!</p>\r\n\r\n<p>You can find all the important information about membership here on this page.</p>\r\n\r\n<p><br />\r\n<strong>Oh, and by the way:</strong></p>\r\n\r\n<p>100% of the income generated by memberships benefits FC Bayern M&uuml;nchen eV, which primarily supports our youth work and our grassroots sports departments.</p>', 'fc-bayern-zx-modern-boost-trainers-white', 2, '2021-01-05 00:00:00.000000'),
(2, 'FC Bayern Third Shirt 2022-23', 'shop/fc-bayern-third-shirt-2022-23_ss4_p-13313171.png', '78.00', 5, 'FC Bayern Munich always have the upper hand and supporters will to with this third shirt from adidas. With subtle and tonal details inspired by the classic Bavarian card game, Schafkopf, and the symbols associated with it, the shirt is a replica of the one worn by the Bayern players during selected matchdays in the Bundesliga and Champions League away from the Allianz Arena. It possesses the patented AEROREADY technology which allows fans to get a cool and dry feel whenever they wear it.', '<p>FC Bayern Munich always have the upper hand and supporters will to with this third shirt from adidas. With subtle and tonal details inspired by the classic Bavarian card game, Schafkopf, and the symbols associated with it, the shirt is a replica of the one worn by the Bayern players during selected matchdays in the Bundesliga and Champions League away from the Allianz Arena. It possesses the patented AEROREADY technology which allows fans to get a cool and dry feel whenever they wear it.</p>\r\n\r\n<h4>&nbsp;</h4>', 'fc-bayern-third-shirt-2022-23', 1, '2022-08-08 00:00:00.000000'),
(4, 'FC Bayern 50th Anniversary Shirt', 'shop/fc-bayern-50th-anniversary-shirt_ss4.png', '120.00', 37, 'Built to mark 50 years of the Olympiastadion. This vibrant adidas FC Bayern jersey celebrates a special landmark for the stadium the Bavarian club called home for 33 years. Capturing the colours of the competition the iconic arena was constructed to host and a subtle design inspired by its roof, it really catches the eye. Created to keep fans comfortable, it\'s made with breathable mesh panels and moisture absorbing AEROREADY. An embroidered club crest puts your football pride on display. Made with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.', '<p>Built to mark 50 years of the Olympiastadion. This vibrant adidas FC Bayern jersey celebrates a special landmark for the stadium the Bavarian club called home for 33 years. Capturing the colours of the competition the iconic arena was constructed to host and a subtle design inspired by its roof, it really catches the eye. Created to keep fans comfortable, it&#39;s made with breathable mesh panels and moisture absorbing AEROREADY. An embroidered club crest puts your football pride on display. Made with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.</p>', 'fc-bayern-50th-anniversary-shirt', 1, '2022-11-07 00:00:00.000000'),
(5, 'FC Bayern 10th Consecutive Championship Cap - Red - Unisex', 'shop/fc-bayern-10th-consecutive-championship-cap-red-unisex_ss4_p-13331477.png', '36.00', 47, 'Get a stylish look, and hold your head up high. A must-have for supporters, this cap is available in club colours.', '<p>Get a stylish look, and hold your head up high. A must-have for supporters, this cap is available in club colours.</p>', 'fc-bayern-10th-consecutive-championship-cap-red-unisex', 3, '2022-07-12 00:00:00.000000'),
(6, 'FC Bayern Triple Winners 2020 Cap - Black', 'shop/fc-bayern-triple-winners-2020-cap-black_ss4_p-12041373.png', '36.00', 12, 'Display your love and devotion for your club. An essential item for fans to wear on matchdays and beyond, the cap is available in club colours.', '<p>Display your love and devotion for your club. An essential item for fans to wear on matchdays and beyond, the cap is available in club colours</p>\r\n\r\n<p>THIS IS A PRE-ORDER ITEM. THIS ITEM SHIPS ON OR BEFORE Thursday, 5 January 2023.</p>', 'fc-bayern-triple-winners-2020-cap-black', 3, '2021-08-10 00:00:00.000000'),
(7, 'FC Bayern adidas 3 Pack Face Covering - Black - M/L', 'shop/l_ss4_p-12039810.png', '30.00', 52, 'Show off your love for the Red Devils, with the Bayern Munich adidas 3 Pack Face Coverings - Black – M/L. Available in club colours, while featuring the FC Bayern crest and or wordmark, the face coverings use soft, breathable fabric to offer a comfortable and tight fit, while they’re also washable and reusable meaning you can show off your pride and passion for the der FCB every day.', '<p>Show off your love for the Red Devils, with the Bayern Munich adidas 3 Pack Face Coverings - Black &ndash; M/L. Available in club colours, while featuring the FC Bayern crest and or wordmark, the face coverings use soft, breathable fabric to offer a comfortable and tight fit, while they&rsquo;re also washable and reusable meaning you can show off your pride and passion for the der FCB every day.</p>', 'fc-bayern-adidas-3-pack-face-covering-black-m-l', 4, '2022-03-07 00:00:00.000000'),
(8, 'FC Bayern Teamgeist Padded Jacket - Red', 'shop/fc-bayern-teamgeist-padded-jacket-red_ss4_p-12085834.png', '240.00', 51, 'Train at your best, while maintaining a stylish look. Allowing for an easy range of movement, the jacket is the perfect piece of apparel for your session, and the official club branding showcases your pride and passion.', '<p>Train at your best, while maintaining a stylish look. Allowing for an easy range of movement, the jacket is the perfect piece of apparel for your session, and the official club branding showcases your pride and passion.</p>', 'fc-bayern-teamgeist-padded-jacket-red', 5, '2022-09-05 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise_image`
--

CREATE TABLE `main_merchandise_image` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise_image`
--

INSERT INTO `main_merchandise_image` (`id`, `image_url`, `product_id`) VALUES
(1, 'shop/fc-bayern-zx-modern-boost-trainers-white_ss4_p-12082296.png', 1),
(2, 'shop/fc-bayern-zx-modern-boost-trainers-white_ss4_p-12082296-2.png', 1),
(3, 'shop/fc-bayern-third-shirt-2022-23_ss4_p-13313171.png', 2),
(4, 'shop/fc-bayern-50th-anniversary-shirt_ss4.png', 4),
(5, 'shop/fc-bayern-50th-anniversary-shirt_ss4_p-133.png', 4),
(6, 'shop/fc-bayern-50th-anniversary-shirt_ss4_p-13360334.png', 4),
(7, 'shop/fc-bayern-10th-consecutive-championship-cap-red-unisex_ss4_p-13331477.png', 5),
(8, 'shop/fc-bayern-10th-consecutive-championship-cap-red-unisex_ss4_p-13331477-2.png', 5),
(9, 'shop/fc-bayern-third-shirt-2022-23_ss4_p-13313171-2.png', 2),
(10, 'shop/fc-bayern-third-shirt-2022-23_ss4_p-13313171-3.png', 2),
(11, 'shop/fc-bayern-zx-modern-boost-trainers-white_ss4_p-12082296-3.png', 1),
(12, 'shop/fc-bayern-zx-modern-boost-trainers-white_ss4_p-12082296-4.png', 1),
(13, 'shop/fc-bayern-zx-modern-boost-trainers-white_ss4_p-12082296-5.png', 1),
(14, 'shop/fc-bayern-zx-modern-boost-trainers-white_ss4_p-12082296-6.png', 1),
(17, 'shop/fc-bayern-triple-winners-2020-cap-black_ss4_p-12041373.png', 6),
(18, 'shop/fc-bayern-triple-winners-2020-cap-black_ss4_p-12041373-2.png', 6),
(19, 'shop/l_ss4_p-12039810.png', 7),
(20, 'shop/l_ss4_p-12039810-2.png', 7),
(21, 'shop/l_ss4_p-12039810-3.png', 7),
(22, 'shop/l_ss4_p-12039810-4.png', 7),
(23, 'shop/fc-bayern-teamgeist-padded-jacket-red_ss4_p-12085834.png', 8),
(24, 'shop/fc-bayern-teamgeist-padded-jacket-red_ss4_p-12085834-2.png', 8),
(25, 'shop/fc-bayern-teamgeist-padded-jacket-red_ss4_p-12085834-3.png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise_information`
--

CREATE TABLE `main_merchandise_information` (
  `id` bigint(20) NOT NULL,
  `specification` varchar(100) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise_information`
--

INSERT INTO `main_merchandise_information` (`id`, `specification`, `detail`, `product_id`) VALUES
(1, 'Product ID', '13360334', 4),
(2, 'Material', '100% recycled polyester', 4),
(3, 'Fit', 'Slim fit', 4),
(4, 'Neck', 'Ribbed V-Neck', 4),
(5, 'Product ID', '13331477', 5),
(6, 'Material', '100% cotton', 5),
(7, 'Brim', 'Pre-curved', 5),
(8, 'Back', 'Adjustable closure', 5),
(9, 'Country of origin', 'China', 5),
(10, 'Product ID', '12041373', 6),
(11, 'Material', '100% cotton', 6),
(12, 'Product ID', 'P12039810', 7),
(13, 'Material', '93% recycled polyester, 7% Elastane', 7),
(14, 'Fit', 'Tight fit, Soft and breathable & Stretches around the ears', 7),
(15, 'Product ID', '12085834', 8),
(16, 'Material', '100% recycled polyester', 8),
(17, 'Fit', 'Regular fit Elastic sleeve cuffs', 8),
(18, 'Pockets & Zipper', 'Front zip pockets, Full zip with lined hood', 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise_related_products`
--

CREATE TABLE `main_merchandise_related_products` (
  `id` bigint(20) NOT NULL,
  `from_merchandise_id` bigint(20) NOT NULL,
  `to_merchandise_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise_related_products`
--

INSERT INTO `main_merchandise_related_products` (`id`, `from_merchandise_id`, `to_merchandise_id`) VALUES
(4, 1, 2),
(10, 1, 5),
(3, 2, 1),
(11, 2, 5),
(7, 5, 1),
(8, 5, 2),
(6, 5, 6),
(13, 5, 7),
(5, 6, 5),
(14, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise_size`
--

CREATE TABLE `main_merchandise_size` (
  `id` bigint(20) NOT NULL,
  `size` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise_size`
--

INSERT INTO `main_merchandise_size` (`id`, `size`, `product_id`) VALUES
(1, '8', 2),
(2, '9', 2),
(3, '10', 2),
(4, '11', 2),
(5, 'XS', 1),
(6, 'X', 1),
(7, 'M', 1),
(8, 'L', 1),
(9, 'XL', 1),
(10, 'XXL', 1),
(11, '3XL', 1),
(12, 'XS', 5),
(13, 'S', 5),
(14, 'M', 5),
(15, 'L', 5),
(16, 'XL', 5),
(17, 'XXL', 5),
(18, '3XL', 5);

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise_type`
--

CREATE TABLE `main_merchandise_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `size_option` tinyint(1) DEFAULT NULL,
  `unique_player` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise_type`
--

INSERT INTO `main_merchandise_type` (`id`, `name`, `size_option`, `unique_player`) VALUES
(1, 'jerseys', 1, 1),
(2, 'shoes', 1, 0),
(3, 'caps', 0, 0),
(4, 'Face Coverings', 0, 0),
(5, 'Jackets', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_mini_articles`
--

CREATE TABLE `main_mini_articles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sub_heading` varchar(100) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `banner` varchar(600) NOT NULL,
  `content` longtext DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_mini_articles`
--

INSERT INTO `main_mini_articles` (`id`, `name`, `sub_heading`, `category`, `banner`, `content`, `slug`) VALUES
(1, 'Benefits', 'Membership', 'mem', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1628780034/cms/public/images/fcbayern-com/homepage/allianz-arena-reiter/gewinnspiel-visuals/allianz_arena_00003.jpg', '<p>As a member, you are an important part of the large FC Bayern family and thus a mainstay of the entire club. What would FC Bayern be without its members?<br />\r\nFor this very reason, we would like to reward your support with the following benefits:</p>\r\n\r\n<p>Welcome package</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Membership card</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Exclusive benefits in the FC Bayern Store</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>FC Bayern Magazine &quot;51&ldquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ticketing</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tickets for the FC Bayern Museum</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Autograph cards</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'membership-benefits'),
(2, 'Gift Vouchers', 'Membership', 'mem', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1628781582/cms/public/images/fcbayern-com/homepage/stadien/wallpaper-allianz-arena/allianz_arena11.jpg', '<p>You can currently purchase a gift voucher for the first 1,5 membership subscription fees (second half of the season 2021/22 + season 2022/23) with a joining date of 01 January 2022.</p>\r\n\r\n<p>The value of the gift voucher is calculated depending on the age of the recipient and includes both the one-off admission fee of &euro;3.00 and a print subscription of &euro;15.00 for the (German language)&nbsp;<a href=\"https://fcbayern.com/de/club/bayern-magazin\" rel=\"noopener noreferrer\" target=\"_blank\">FC Bayern Magazine &quot;51&ldquo;</a>.</p>\r\n\r\n<p>Please inform us explicitly if you do not wish to receive the print edition of the FC Bayern Magazine &quot;51&quot;. In this case, the membership fee and thus the value of the voucher will be reduced by &euro;15.00.</p>\r\n\r\n<h3>How to purchase a gift voucher:</h3>\r\n\r\n<p>Step 1</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Step 2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Step 3</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Step 4</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We hope you enjoy giving the voucher as a gift!</p>', 'membership-gift-vouchers'),
(3, 'Alianz Arena', 'Main Stadium', 'venue', 'https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1366,h_768,c_fill/cms/public/images/allianz-arena/stadion-innenraum/aa_haupttribuene.jpg', '<p><strong>The Allianz Arena, opened in 2005,&nbsp;was designed purely as a football stadium. The architecturally unique arena was constructed in under three years. Read on for comprehensive facts and figures about the state-of-the-art stadium in the heart of Europe.</strong></p>\r\n\r\n<h2>Referendum</h2>\r\n\r\n<p>A referendum produced an overwhelming 65.8 percent majority in favour of the project and 34.2 percent against. The requirement for a quorum of 10 percent of all those entitled to vote was also met. The turnout of 37.5 percent was the highest ever for a referendum held in Bavaria.</p>\r\n\r\n<h2>Venue</h2>\r\n\r\n<p>Munich-Fr&ouml;ttmaning</p>\r\n\r\n<h2>Construction dates</h2>\r\n\r\n<p>Foundation stone laid on 21 October 2002<br />\r\nHandover from Alpine Bau GmbH completed on 30 April 2005</p>\r\n\r\n<h2>Owners</h2>\r\n\r\n<p>On 27 April 2006, FC Bayern Munich temporarily acquired 100% of the shares in the Allianz Arena after purchasing TSV 1860 Munich&rsquo;s 50% share in the holding company, Allianz Arena Munich Stadion GmbH, which the clubs had founded together.</p>\r\n\r\n<p>However, TSV 1860&rsquo;s right to repurchase their 50% share in Allianz Arena Munich Stadion GmbH until 30 June 2010 was officially rescinded on Friday, 25 April 2008. All three parties agreed to relieve TSV 1860 of its obligations, which were then transferred to FC Bayern Munich AG, currently the Allianz Arena&rsquo;s only stockholder.</p>\r\n\r\n<p>As a result of 1860 M&uuml;nchen&#39;s relegation at the end of the season 2016/2017 the lease contract between TSV M&uuml;nchen von 1860 GmbH &amp; Co. KGaA and Allianz Arena M&uuml;nchen Stadion GmbH, a wholly-owned subsidiary of FC Bayern M&uuml;nchen AG, was cancelled. It means the Allianz Arena is no longer TSV 1860 M&uuml;nchen&#39;s home ground. The agreemen precludes 1860 returning to the stadium at a later date.</p>\r\n\r\n<h2>Opening games</h2>\r\n\r\n<p>30 May 2005: TSV 1860 3-2 FC Nuremberg<br />\r\n31 May 2005: FC Bayern 4-2 Germany</p>\r\n\r\n<h2>Construction cost</h2>\r\n\r\n<p>&euro;340 million</p>\r\n\r\n<h2>Capacity</h2>\r\n\r\n<ul>\r\n	<li>Total: 75,024 seats (during national games)</li>\r\n	<li>standing area : total 15,794 (9,136 in the South and 6,658 in the North Stands)</li>\r\n	<li>Capacity during International Games: 70,000 (no standing areas)</li>\r\n	<li>2,152 business seats</li>\r\n	<li>106 VIP boxes of various sizes accommodating 1,368 guests</li>\r\n	<li>Press club with&nbsp;300 seats</li>\r\n	<li>227 special seats for the disabled at main entrance/exterior ground level (no change of level)</li>\r\n</ul>\r\n\r\n<h2>Parking</h2>\r\n\r\n<ul>\r\n	<li>9,800 parking places in four x four-storey Esplanade car parks (the largest in Europe)</li>\r\n	<li>150 parking spaces for the disabled (130 in P1 and 20 in Guest Parking)</li>\r\n	<li>Entrance height: 2 metres</li>\r\n	<li>1,200 parking places on two levels in the stadium</li>\r\n	<li>350 coach places (240 to the north and 110 to the south of the Esplanade)</li>\r\n	<li>Multi-storey car park for visiting fans: 900&nbsp;parking places with&nbsp;20 parking spaces for disabled people</li>\r\n	<li>Exit via licence plate recognition. Registration and payment of the parking fee in advance via the website or on site at eight machines (two per car park), as well as three staffed stations within the Allianz Arena</li>\r\n</ul>\r\n\r\n<h2>Inside the Arena</h2>\r\n\r\n<p>6,000 m&sup2; of catering facilities devided into following sections:</p>\r\n\r\n<ul>\r\n	<li>28 kiosks</li>\r\n	<li>2 fan-restaurants (one in the north- and one in the south-stand), each with 1,000 seats</li>\r\n	<li>Bistro accommodating 400 people</li>\r\n	<li>Business Club with 2,152&nbsp;seats</li>\r\n	<li>106 VIP boxes of various sizes accommodating 1,374 guests</li>\r\n	<li>Press club with about 350 seats</li>\r\n	<li>Mixed Zone (520 m&sup2;)</li>\r\n	<li>offices and conference rooms</li>\r\n	<li>comfortably appointed media areas</li>\r\n	<li>a Kids Club</li>\r\n	<li>54 ticket counters</li>\r\n	<li>FC BAYERN STORE</li>\r\n	<li>FC Bayern Museum (Germany&#39;s biggest club museum)</li>\r\n	<li>4 changing rooms (FC Bayern, 2x Guest); 4 for coaches ; 2 for referees</li>\r\n	<li>2 warm-up rooms, each 110m&sup2;</li>\r\n	<li>1,121 WC-cubicles in the Arena</li>\r\n	<li>more than 750 screens&nbsp;in the Arena</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p><img alt=\"aa_flutlicht\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1366,h_768,c_fill/cms/public/images/allianz-arena/stadion-innenraum/aa_flutlicht.jpg\" /></p>\r\n\r\n<h2>Interior of the Arena</h2>\r\n\r\n<ul>\r\n	<li>Pitch: 68 m x 105 m, pitch total: 72 m x 111 m</li>\r\n	<li>Total surface (barrier to barrier): 120 m x 83 m</li>\r\n	<li>Spectator distance from pitch: 7.5 m minimum</li>\r\n	<li>Pitchside barrier height: approx 1.2 m</li>\r\n	<li>2 x&nbsp;200 m&sup2; LED Video Walls in 16:9 format, 42.5 m above ground.&nbsp;Additionaly 2 36,80 m<sup>2&nbsp;</sup>LED Video Walls on each back&nbsp;.</li>\r\n	<li>296 floodlights, 45 m high</li>\r\n	<li>20 Moving-Heads for entertainment lighting<br />\r\n	<br />\r\n	Seat row gradients:</li>\r\n	<li>Lower tier: approx 24&deg;</li>\r\n	<li>Middle tier: approx 30&deg;</li>\r\n	<li>Upper tier: approx 34&deg;</li>\r\n</ul>\r\n\r\n<h2>Arena &amp; Esplanade dimensions</h2>\r\n\r\n<p>Stadium dimensions: 258 m x 227 m x 52 m (gross figure)</p>\r\n\r\n<ul>\r\n	<li>7 levels</li>\r\n	<li>Admeasurement: 840 m</li>\r\n	<li>Fa&ccedil;ade and roof: 66,500 m&sup2; in total, comprising 2,784 inflated panels</li>\r\n	<li>Roof area: 38,000 m&sup2;</li>\r\n	<li>Fa&ccedil;ade: 28,500 m&sup2;</li>\r\n	<li>Illuminated area (16 million colours; LED technology); 25,500 m&sup2;</li>\r\n	<li>Area occupied by stadium: 37,600 m&sup2;</li>\r\n	<li>Total site area: 171,000 m&sup2;<br />\r\n	Esplanade dimensions: 543 m x 136 m x 0-12 m</li>\r\n	<li>4 levels</li>\r\n	<li>Admeasurement: 1.358 m</li>\r\n	<li>Covered area: approx 73,900 m&sup2;<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<h2>Nuts and bolts</h2>\r\n\r\n<p>How much concrete was used building the Allianz Arena? What pressure does it take to inflate the panels? How big are the showers? Here you can find all the official statistics from A to Z about the Allianz Arena. A real tresure trove for statisticians, construction experts and those who might want to be.</p>', 'allianz-arena'),
(4, 'Bayern head coaches in the Bundesliga', 'History', 'past_mem', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/historie/200116_fcb_trainer.jpg', '<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Name</th>\r\n			<th>Time in office</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Zlatko &quot;Cik&quot; Cajkovski</td>\r\n			<td>01.07.1965 - 30.06.1968</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Branko Zebec</td>\r\n			<td>01.07.1968 - 13.03.1970</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Udo Lattek</td>\r\n			<td>14.03.1970 - 02.01.1975</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dettmer Cramer</td>\r\n			<td>16.01.1975 - 30.11.1977</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gyula Lorant</td>\r\n			<td>02.12.1977 - 28.02.1979</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pal Csernai</td>\r\n			<td>01.03.1979 - 16.05.1983</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Reinhard Saftig</td>\r\n			<td>17.05.1983 - 30.06.1983</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Udo Lattek</td>\r\n			<td>01.07.1983 - 30.06.1987</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupp Heynckes</td>\r\n			<td>01.07.1987 - 08.10.1991</td>\r\n		</tr>\r\n		<tr>\r\n			<td>S&ouml;ren Lerby</td>\r\n			<td>09.10.1991 - 10.03.1992</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Errich Ribbeck</td>\r\n			<td>11.03.1992 - 27.12.1993</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Franz Beckenbauer</td>\r\n			<td>28.12.1993 - 30.06.1994</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giovanni Trapattoni</td>\r\n			<td>01.07.1994 - 30.06.1995</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Otto Rehagel</td>\r\n			<td>01.07.1995 - 27.04.1996</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Franz Beckenbauer</td>\r\n			<td>29.04.1996 - 30.06.1996</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giovanni Trapattoni</td>\r\n			<td>01.07.1996 - 30.06.1998</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ottmar Hitzfeld</td>\r\n			<td>01.07.1998 - 30.06.2004</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Felix Magath</td>\r\n			<td>01.07.2004 - 31.01.2007</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ottmar Hitzfeld</td>\r\n			<td>01.02.2007 - 30.06.2008</td>\r\n		</tr>\r\n		<tr>\r\n			<td>J&uuml;rgen Klinsmann</td>\r\n			<td>01.07.2008 - 27.04.2009</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupp Heynckes</td>\r\n			<td>28.04.2009 - 30.06.2009</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Louis van Gaal</td>\r\n			<td>01.07.2009 - 09.04.2011</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Andries Jonker</td>\r\n			<td>10.04.2011 - 30.06.2011</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupp Heynckes</td>\r\n			<td>01.07.2011 - 30.06.2013</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Josep Guardiola</td>\r\n			<td>01.07.2013 - 30.06.2016</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Carlo Ancelotti</td>\r\n			<td>01.07.2016 - 28.09.2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Willy Sagnol</td>\r\n			<td>29.09.2017 - 08.10.2017</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jupp Heynckes</td>\r\n			<td>09.10.2017 - 30.06.2018</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Niko Kovac</td>\r\n			<td>01.07.2018 - 03.11.2019</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hansi Flick</td>\r\n			<td>Since 03.11.2019</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'bayern-head-coaches-in-the-bundesliga'),
(5, 'FC Bayern members\' club presidents', 'History', 'past_mem', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/historie/praesidenten_fcb_ima.jpg', '<p>Beginning with Franz John in 1900, there over been over 30 presidents of FC Bayern, including Kurt Landauer, who led the club on four occasions between 1913 and 1951.</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Name</th>\r\n			<th>Time in office</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Franz John</td>\r\n			<td>1900 - 1903</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Willem Hesselink</td>\r\n			<td>1903 - 1906</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Angelo Knorr</td>\r\n			<td>1906 - 1907</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Kurt M&uuml;ller</td>\r\n			<td>1907 - 1908</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Angelo Knorr</td>\r\n			<td>1908 - 1909</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Otto Wagner</td>\r\n			<td>1909 - 1910</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Angelo Knorr</td>\r\n			<td>1910 - 1913</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kurt Landauer</td>\r\n			<td>1913 - 1914</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fred Dunn</td>\r\n			<td>1914 - 1915</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hans Tusch</td>\r\n			<td>1915</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fritz Meier</td>\r\n			<td>1915</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hans Berm&uuml;hler</td>\r\n			<td>1916</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fritz Meier</td>\r\n			<td>1916 - 1919</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kurt Landauer</td>\r\n			<td>1919 - 1921</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Fred Dunn</td>\r\n			<td>1921 - 1922</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kurt Landauer</td>\r\n			<td>1922 - 1933</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Siegfried Herrmann</td>\r\n			<td>1933 - 1934</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Karl-Heinz Oettinger</td>\r\n			<td>1934 - 1935</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Richard Amesmeier</td>\r\n			<td>1935 - 1937</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Franz Nu&szlig;hardt</td>\r\n			<td>1937 - 1938</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Josef Kellner</td>\r\n			<td>1938 - 1943</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Josef Sauter</td>\r\n			<td>1943 - 1945</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xaver Heilmannseder</td>\r\n			<td>1945</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Josef Bayer</td>\r\n			<td>1945</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Siegfried Herrmann</td>\r\n			<td>1945 - 1947</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kurt Landauer</td>\r\n			<td>1947 - 1951</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Julius Scheuring</td>\r\n			<td>1951 - 1953</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dr. Adolf Fischer</td>\r\n			<td>1953 - 1955</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Karl Wild</td>\r\n			<td>1955</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hugo Theisinger</td>\r\n			<td>1955</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Alfred Reitlinger</td>\r\n			<td>1955 - 1958</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Roland Endler</td>\r\n			<td>1958 - 1962</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wilhelm Neudecker</td>\r\n			<td>1962 - 1979</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Willi O. Hoffmann</td>\r\n			<td>1979 - 1985</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Prof. Dr. Fritz Scherer</td>\r\n			<td>1985 - 1994</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Franz Beckenbauer</td>\r\n			<td>1994 - 2009</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Uli Hoene&szlig;</td>\r\n			<td>2009 - 2014</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Karl Hopfner</td>\r\n			<td>2014 - 2016</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Uli Hoene&szlig;</td>\r\n			<td>2016 - 2019</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Herbert Hainer</td>\r\n			<td>2019 - present</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'fc-bayern-members-club-presidents'),
(6, 'The historic treble', '2010-2013', 'milestone', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/historie/triple_ima_040613.jpg', '<p>In 2009/10 FC Bayern appointed Louis van Gaal as head coach. He had just won the Dutch Eredivisie with AZ Alkmaar and he was not the only new face at S&auml;bener Stra&szlig;e in the summer of 2009: Arjen Robben arrived from Real Madrid and Mario Gomez made the switch from VfB Stuttgart to the Bavarian capital.</p>\r\n\r\n<p>Van Gaal also opted to use home-grown talent, handing largely unknown youngsters Thomas M&uuml;ller and Holger Badstuber their chance in pre-season. The duo went on to become great players over the following seasons and established choices for FC Bayern and Germany.</p>\r\n\r\n<h3>Double win 2010 under Van Gaal</h3>\r\n\r\n<p>After a mixed start to the season Bayern upped their game week by week to thrill the fans with attractive, attacking football. That approach culminated in FCB winning another league and cup double in 2010. Bayern missed out on a possible treble with a 2-0 defeat to Inter Milan in the Champions League final in Madrid, but despite that, the season went down as one of the most successful in the club&#39;s history.</p>\r\n\r\n<p>2009 also saw Uli Hoene&szlig; take centre stage. After 30 years as general manager he took over as president in November 2009 as the successor to Franz Beckenbauer, who was made an honorary president.</p>\r\n\r\n<h3>Van Gaal has to go, Jonker takes over</h3>\r\n\r\n<p>The 2010/11 season started with Bayern winning the Supercup, reintroduced by the Deutsche Fu&szlig;ball Liga (DFL). FCB beat Schalke 2-0, but unfortunately it was the only trophy won in the whole season. The DFB Cup run ended with a defeat to Schalke in the semi-finals and FCB were knocked out of European competition with a last-16 loss to Inter Milan in the Champions League.</p>\r\n\r\n<p>And the Bundesliga campaign also failed to go to plan. The German record champions were in danger of missing out on a Champions League spot. Head coach Van Gaal was relieved of his duties in April 2011 and his assistant Andries Jonker took over as caretaker coach, leading FCB to a third-place finish. That ensured a slot in the qualifying rounds for the Champions League.</p>\r\n\r\n<p>In the summer of 2011 Jupp Heynckes took over as head coach at FC Bayern for the third time in his career. The 66-year-old put the German record champions back on track straight away with 2-0 and 1-0 victories over FC Z&uuml;rich, ensuring a place in the Champions League group stages. The Reds coasted through the group with some breathtaking performances. Basel (round of 16), Marseille (quarter-final) and Real Madrid (semi-final) were all unable to stop FCB reaching the 2012 Champions League final at the Allianz Arena.</p>\r\n\r\n<h3>Drama on home turf</h3>\r\n\r\n<p>The great triumph of winning the final in Munich failed to materialise. Although FCB dominated the emotional 90 minutes of the game against Chelsea, the score was 1-1 at full-time. Extra-time and penalties followed, with the English side coming out on top in the shootout.</p>\r\n\r\n<p>The disappointment for Bayern was immense after missing out on the dream of winning the Champions League at their own ground. The first season under Heynckes ended with three second spots as FCB finished runners-up to Borussia Dortmund in the Bundesliga and the DFB Cup.</p>\r\n\r\n<p>The fact that the season after the trio of second places was the most successful in the club&#39;s history can be regarded as typical FC Bayern. Matthias Sammer, who took over as sporting director from Christian Nerlinger, exemplified the thirst for success at the club.</p>\r\n\r\n<h3>Bitter disappointment followed by record after record</h3>\r\n\r\n<p>The season began with a Supercup victory against double-winners Borussia Dortmund. The dominance of the team, called &#39;Super Bayern&#39; by the end of the season, was evident throughout the campaign. The 23rd Bundesliga title was secured on Matchday 28. In the end, Heynckes&#39; team clocked up 91 points to finish 25 points ahead of second-placed Dortmund. Other new records included 29 wins, a goal difference of +80 and only 18 goals conceded.</p>\r\n\r\n<p>It was clear Bayern were determined to lift the Champions League trophy this time round when they inflicted a 7-0 aggregate win on Barcelona in the semi-finals (4-0 in Munich; 3-0 in Barcelona). The lost final in Munich was followed by a final at Wembley where Arjen Robben produced a man of the match performance. The Dutchman, centre of controversy in the summer, netted the winner on 89 minutes in the 2-1 victory in the all-German final against Borussia Dortmund. The fifth European triumph marked the end of a 12-year barren run in the Champions League.</p>\r\n\r\n<p>The DFB Cup also provided a chance to gain revenge on the holders, albeit at the quarter-final stage. A 6-1 win against VfL Wolfsburg in the semi-final was followed by the final at the Olympiastadion in Berlin on 1 June against a passionate and determined VfB Stuttgart side. The Swabians were unable to spoil the Bavarian party in the end as FC Bayern became the seventh European and first German club to win the treble.</p>', 'milestone-the-historic-treble'),
(7, 'Move to the Allianz Arena', '2002-2009', 'milestone', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/historie/double_ima_130506.jpg', '<p>After a season without a domestic or European title, FC Bayern once again ended the 2002/03 campaign top of the Bundesliga table. FCB finished an incredible 16 points ahead of second-placed VfB Stuttgart, dominating the Bundesliga almost at will. They also gave Kaiserslautern no chance in a 3-1 DFB Cup final victory where Michael Ballack netted two goals. He successfully took over the mantle of Stefan Effenberg in midfield and FCB went on to secure a fourth double, with Ballack voted Player of the Year. The only black spot was the season&#39;s Champions League adventure ending at the group stage. However, there was a silver lining. It was a certain Roy Makaay who scored the goal for Deportivo La Coru&ntilde;a that eliminated Bayern. A year later and the very same Makaay was playing up front for the Reds.</p>\r\n\r\n<p>The Dutchman moved to Munich in the summer of 2003 for what was at the time the biggest transfer fee in the club&#39;s history. The striker soon showed he was worth every penny. In his first year, the &#39;Phantom&#39; scored goal after goal, although even the deadly Dutchman was unable to prevent the 2003/04 season ending without a trophy for Germany&#39;s record champions.</p>\r\n\r\n<p>The disappointing results in the various competitions meant Ottmar Hitzfeld&#39;s time in charge came to an end after six incredibly successful years with Bayern. Four Bundesliga titles, two DFB Cups, as well as a Champions League and Intercontinental Cup, made Hitzfeld one of FC Bayern&#39;s most successful coaches. Only Udo Lattek has won more trophies with FCB. In the final game of the 2003/04 season at the Olympiastadion, Hitzfeld, together with his assistant Michael Henke, received an emotional farewell from the Bayern fans. It marked the end of an era at the club.</p>\r\n\r\n<h3><strong>New Arena, new transfers</strong></h3>\r\n\r\n<p>Felix Magath took over as FC Bayern coach in summer 2004. He was a strong advocate of the values of discipline, order and fitness, and in his day-to-day work he liked to make use of medicine balls and lead-weighted vests at times. He did, though, set a historic first in the following two years, winning the league and cup double in both 2004/05 and 2005/06, the first back-to-back double in the club&#39;s history.</p>\r\n\r\n<p>The new stadium was certainly a key element in this success. The Olympiastadion era came to an end in May 2005. After 33 extremely successful seasons, FC Bayern moved to its new footballing temple at the Allianz Arena.</p>\r\n\r\n<p>After two and a half successful years, the club parted company with Magath on 31 January 2007 following elimination to Aachen in the DFB Cup and a poor start to the second half of the Bundesliga season. Hitzfeld was brought back but he couldn&#39;t achieve more than fourth place in the league. It was the first time in a decade that Bayern had failed to qualify for the Champions League. It was also time to say goodbye to Mehmet Scholl, who retired after a 15-year spell in a Bayern shirt that brought 15 trophies.</p>\r\n\r\n<p>In 2007/08 FC Bayern changed their transfer strategy and opted to attract top international stars to Munich. FCB completed two transfer coups with the signing of Franck Ribery and Luca Toni. Success returned with them. Hitzfeld again won the double in his last year as Bayern coach. In the DFB Cup, the Reds beat Dortmund 2-1 and won the Bundesliga ten points clear of their nearest rivals Bremen. Bayern were eliminated at the semi-final stage of the UEFA Cup by eventual winners Zenit St. Petersburg. Three-time World&#39;s Best Goalkeeper Oliver Kahn retired while Hitzfeld went on to coach the Switzerland national team.</p>\r\n\r\n<h3><strong>Building the performance centre</strong></h3>\r\n\r\n<p>J&uuml;rgen Klinsmann was his successor for the 2008/09 season. Under the former Germany coach, a unique performance centre with fitness rooms and quiet zones was set up at S&auml;bener Stra&szlig;e. However, when FC Bayern lost 1-0 at home to Schalke on matchday 28, the club parted company with Klinsmann. That was preceded by heavy defeats against Leverkusen (4-2 in the DFB Cup quarter-finals), eventual league champions Wolfsburg (5-1) and Barcelona (4-0) in the Champions League quarter-finals.</p>\r\n\r\n<p>Jupp Heynckes came in for the remaining five games and took Bayern to within two points of champions Wolfsburg, securing Champions League qualification and saving the season.</p>', 'milestone-move-to-the-allianz-arena'),
(8, 'Klaus Augenthaler', 'The Libero', 'hof', 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/cms/public/images/fcbayern-com/homepage/club/historie/hall-of-fame/augenthaler_ima_170687.jpg', '<p>Klaus Augenthaler pursued and harvested honours like no other player, making him at one point the most successful individual in Bundesliga history. At Bayern, &#39;Auge&#39; won the championship seven times (1980, 1981, 1985, 1986, 1987, 1989, 1990), the DFB German Cup three times (1982, 1984, 1986), and was twice a European Champions Cup losing finalist (1982, 1987).</p>\r\n\r\n<p>However, the year 1990 was to prove the most glorious in an already illustrious playing career. Augenthaler added spine to the Germany side which doggedly stuck to the task and sealed a 1-0 victory over Argentina in the World Cup final in Rome, just a few weeks after he had hoisted the Bundesliga shield into the Bavarian sky for a record seventh time. &quot;I do admit to a certain pride at being the player with the most championship medals,&quot; he confesses nowadays.</p>\r\n\r\n<p>&#39;Auge&#39; made 404 appearances for Bayern and 27 for Germany, scoring 52 top flight goals. Easily the most famous of these came on 19 August 1989 when he fired Munich&#39;s winner in a 1-0 away victory against Eintracht Frankfurt. The player, captain from 1984 to 1991 and filling the libero position at the time, beat Frankfurt keeper Uli Stein with a shot from the halfway line, earning the &quot;Goal of the Season&quot; and &quot;Goal of the Decade&quot; accolades.</p>\r\n\r\n<p>His nickname &#39;Auge&#39;, derived from his surname but meaning &quot;the eye&quot; in German, merely hinted at his ability to read the action and control a match from the back, initially as a centre-half and later in his career as a classic libero.</p>\r\n\r\n<p>Augenthaler hung up his boots in 1991 and became assistant coach in Munich, winning the Uefa Cup and finishing Bundesliga runner-up in 1996. From 1991-1997 he worked as assistant to Jupp Heynckes, S&ouml;ren Lerby, Erich Ribbeck, Franz Beckenbauer, Giovanni Trapattoni and Otto Rehhagel.</p>\r\n\r\n<p>When Ottmar Hitzfeld arrived on 1 July 1998 he brought Michael Henke with him and the Bayern board persuaded Augenthaler to take up a head coach position elsewhere. But parting was still a wrench: &quot;Bayern has always been everything to me, I even think in red-and-white,&quot; the Record-breaker admitted.</p>', 'hof-klaus-augenthaler');

-- --------------------------------------------------------

--
-- Table structure for table `main_news_article`
--

CREATE TABLE `main_news_article` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `post_content` longtext NOT NULL,
  `added` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `excerpt` longtext DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_type_id` bigint(20) NOT NULL,
  `image_url` varchar(600) DEFAULT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `home_banner` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_article`
--

INSERT INTO `main_news_article` (`id`, `title`, `image`, `post_content`, `added`, `updated`, `slug`, `views`, `excerpt`, `featured`, `author_id`, `news_type_id`, `image_url`, `video_url`, `home_banner`) VALUES
(1, 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', '', '<p>As FC Bayern&#39;s year of competitive matches slowly came to an end, one whirlwind of a player really turned up the heat again: In November,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/jamal-musiala\">Jamal Musiala</a>&nbsp;thrilled the fans of the German record champions once again and secured the award for FC Bayern Player of the Month one more time. The 19-year-old received almost 50 per cent of the vote (49.6%), ahead of&nbsp;<a href=\"/player/eric-maxim-choupo-moting/\">Eric Maxim Choupo-Moting</a>&nbsp;(34.9%) and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/serge-gnabry\">Serge Gnabry</a>&nbsp;(5.8%). It&#39;s already the fourth time Musialy has won the award this season - the only time he didn&#39;t get it was in October, when Choupo-Moting managed to edge the fleet-footed sensation into second place.</p>\r\n\r\n<h2>Youngest player to make 100 competitive appearances for Bayern</h2>\r\n\r\n<p><img alt=\"Celebration Jamal Musiala FC Bayern\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1671119065/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Musiala/201108-musiala-jubel-ima.jpg\" style=\"height:2160px; width:3840px\" title=\"An indispensable part of the Bayern team this season: Jamal Musiala celebrates with his teammates.\" /></p>\r\n\r\n<p>An indispensable part of the Bayern team this season: Jamal Musiala celebrates with his teammates.</p>\r\n\r\n<p>The statistics once again spoke clearly in favour of the Germany international: In four competitive games last month, Musiala was directly involved in four goals (two goals, two assists). In the last match of the year&nbsp;<a href=\"https://fcbayern.com/en/matches/profis/bundesliga/2022-2023/fc-schalke-04-fc-bayern-muenchen-12-11-2022/report\">at Schalke (2-0)</a>, the artistic dribbler made his 100th competitive appearance for Bayern - and that at the tender age of just 19 years and 259 days. No other player ever managed to reach this milestone in professional football at such a young age for the German record champions. And anyone who has watched the youngster play can hardly wait for match number 101 in January.</p>', '2022-12-16 22:47:00.000000', '2023-01-11 16:24:00.344230', 'jamal-musiala-is-the-fc-bayern-player-of-the-month-for-november-2022', 66, 'As FC Bayern\'s year of competitive matches slowly came to an end, one whirlwind of a player really turned up the heat again: In November, Jamal Musiala thrilled the fans of the German record champions once again and secured the award for FC Bayern Player of the Month one more time. The 19-year-old received almost 50 per cent of the vote (49.6%), ahead of Eric Maxim Choupo-Moting (34.9%) and Serge Gnabry (5.8%).', 1, 2, 8, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1671118950/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Musiala/201108-musiala-gnabry-jubel-mel.jpg', 'https://www.youtube.com/embed/G7HBU9jkb9k', 0),
(2, 'Manuel Neuer undergoes successful surgery', '', '<p><a href=\"https://fcbayern.com/de/teams/profis/manuel-neuer\">Manuel Neuer</a>, 36, will not be available to FC Bayern Munich for the rest of the season. The FC Bayern captain suffered a fracture of his lower right leg in a fall while skiing this Friday. He has already undergone successful surgery.</p>\r\n\r\n<p>CEO&nbsp;<a href=\"https://fcbayern.com/de/club/fcb-ag/oliver-kahn\">Oliver Kahn</a>: &quot;The news of Manuel&#39;s injury shocked us all. We will stand by him and support him on his way to his comeback. He will overcome this serious injury and return to the pitch as strong as before.&quot;</p>\r\n\r\n<p>Board Member for Sport:&nbsp;<a href=\"https://fcbayern.com/de/club/fcb-ag/hasan-salihamidzic\">Hasan Salihamidžić</a>: &quot;The fact Manuel had such an accident is terrible. And, of course, all our thoughts are with him. I spoke to him yesterday and today, and the surgery went as well as possible. Manuel will receive all the support he needs. He is a strong personality and he will be back. I wish him all the best, he can rely on FC Bayern!&quot;</p>', '2022-12-10 17:41:00.000000', '2023-01-07 19:12:43.207202', 'manuel-neuer-undergoes-successful-surgery', 8, 'Manuel Neuer, 36, will not be available to FC Bayern Munich for the rest of the season. The FC Bayern captain suffered a fracture of his lower right leg in a fall while skiing this Friday. He has already undergone successful surgery.', 1, 2, 3, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1670670343/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Neuer/220827-neuer-mel.jpg', NULL, 0),
(3, 'Bundesliga 2023/24 outline schedule confirmed', '', '<p>The German Football Association (DFB) executive committee revealed the&nbsp;<a href=\"https://www.dfl.de/en/news/calendar-for-the-2023-24-season/\">outline schedule for the 2023/24 Bundesliga season</a>&nbsp;on Friday. The next Bundesliga campaign begins with the opening match on 18 August 2023, and ends with the final matchday on Saturday 18 May 2024.</p>\r\n\r\n<h2>Only one midweek round</h2>\r\n\r\n<p>The Bundesliga winter break starts after Matchday 16 (19/20 December 2023), which is also the only midweek matchday of the season. The action will recommence in Germany&#39;s top flight on 12 January 2024.</p>\r\n\r\n<p><img alt=\"FC Bayern DFL-Supercup winners 2022\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1670589939/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Spiele/Supercup-Leipzig-FCB/33-supercup-rbl-fcb-220730-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"Bayern won the 2022 DFL-Supercup against Leipzig - Julian Nagelsmann’s side still need to qualify for the next edition on 12 August 2023.\" /></p>\r\n\r\n<p>Bayern won the 2022 DFL-Supercup against Leipzig - Julian Nagelsmann&rsquo;s side still need to qualify for the next edition on 12 August 2023.</p>\r\n\r\n<p>A week before the league season starts, the Supercup between the Bundesliga champions and DFB Cup winners takes place on Saturday 12 August 2023. The DFB Cup begins on the same weekend (11-14 August) with the first round. The cup ties involving the Supercup participants have therefore been arranged for 26 and 27 September. The DFB Cup final is set to be played one week after the conclusion of the Bundesliga season, on Saturday 25 May 2024 at Berlin&#39;s Olympiastadion.</p>', '2022-12-09 19:21:00.000000', '2023-01-07 19:12:49.440727', 'bundesliga-202324-outline-schedule-confirmed', 6, 'The German Football Association (DFB) executive committee revealed the outline schedule for the 2023/24 Bundesliga season on Friday. The next Bundesliga campaign begins with the opening match on 18 August 2023, and ends with the final matchday on Saturday 18 May 2024.', 1, 2, 1, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1670590369/cms/public/images/fcbayern-com/homepage/platzhalter/pokale/220730-meisterschale-dfb-pokal-supercup-ima.jpg', NULL, 0),
(4, 'Upamecano and Co reach World Cup final with France', '', '<p>Three Bayern players with France are just one step away from reaching football&#39;s summit - but for&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/noussair-mazraoui\">Noussair Mazraoui</a>, the dream of the World Cup final is over. On Wednesday evening, Les Bleus beat Morocco 2-0 in the semi-finals and now have the chance to become the first team since Brazil in 1962 to defend the world title.</p>\r\n\r\n<p><img alt=\"Noussair Mazraoui Morocco\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1671049330/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Nationalspieler/221214-mazraoui-marokko-frankreich-get.jpg\" style=\"height:2160px; width:3840px\" title=\"Noussair Mazraoui started for Morocco and was subbed at half-time.\" /></p>\r\n\r\n<p>Noussair Mazraoui started for Morocco and was subbed at half-time.</p>\r\n\r\n<p>While Mazraoui came off at half-time for the North Africans,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/kingsley-coman\">Kingsley Coman</a>,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/dayot-upamecano\">Dayot Upamecano</a>&nbsp;and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/benjamin-pavard\">Benjamin Pavard</a>&nbsp;did not feature for the reigning champions. The two teams produced a high-quality encounter with numerous chances at both ends. After Theo Hern&aacute;ndez, brother of&nbsp;<a href=\"https://fcbayern.com/en/news/2022/11/lucas-hernandez-successfully-operated-on\">injured FCB defender</a><a href=\"https://fcbayern.com/de/teams/profis/lucas-hernandez\">Lucas Hern&aacute;ndez</a>, gave France an early lead in the fifth minute, it wasn&#39;t until the 79th minute that the net rippled again through Frankfurt striker Randal Kolo Muani, who had only just come on.</p>\r\n\r\n<h2>Fighting for a third star</h2>\r\n\r\n<p>Didier Deschamps&#39; men now face Argentina in the final at the Lusail Iconic Stadium on Sunday afternoon (16:00 CET). Both teams have been world champions on two occassions and are bidding to get a third star on their shirt. On Saturday (16:00 CET), Mazraoui will go up against Bayern teammate Josip&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/josip-stani%C5%A1i%C4%87\">Stani&scaron;ić</a>&nbsp;and Croatia in the third place playoff.</p>', '2022-12-15 15:11:00.000000', '2023-01-15 15:50:15.147240', 'upamecano-and-co-reach-world-cup-final-with-france', 5, 'Three Bayern players with France are just one step away from reaching football\'s summit - but for Noussair Mazraoui, the dream of the World Cup final is over. On Wednesday evening, Les Bleus beat Morocco 2-0 in the semi-finals and now have the chance to become the first team since Brazil in 1962 to defend the world title.', 1, 2, 2, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1671051371/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Nationalspieler/221214-juebl-upamecano-frankreich-get.jpg', NULL, 0),
(5, 'Stanišić misses out on World Cup final with Croatia', '', '<p>Such a shame, Josip! On Tuesday evening, the Croatian national team featuring Bayern player Josip Stani&scaron;ić missed out on a place in the final of the World Cup in Qatar. In the 3-0 (2-0) semi-final loss to Argentina, the 22-year-old full-back once again watched the game from the bench. The South Americans dominated the first half and deservedly took the lead through Lionel Messi (34&#39;/pen) and Juli&aacute;n &Aacute;lvarez (39&#39;). After the break, the Croatians tried everything they could to turn the game around, but ultimately had no luck. Instead, &Aacute;lvarez (69&#39;) bagged his second goal of the evening with around 20 minutes to go.</p>\r\n\r\n<h2>Regroup and focus on the third place play-off</h2>\r\n\r\n<p>Stani&scaron;ić and Co. now need to prepare for the third place play-off on Saturday (16:00 CET), where Zlatko Dalić&#39;s side will meet the losers of the second semi-final between Morocco and France (Wednesday, 20:00 CET). After finishing in third place at the 1998 World Cup and reaching the final in 2018, the Croats now have a third chance to end a World Cup tournament with a medal.</p>', '2022-12-14 15:05:00.000000', '2023-01-15 07:42:11.217062', 'stanisic-misses-out-on-world-cup-final-with-croatia', 60, 'On Tuesday evening, the Croatian national team featuring Bayern player Josip Stanišić missed out on a place in the final of the World Cup in Qatar. In the 3-0 (2-0) semi-final loss to Argentina, the 22-year-old full-back once again watched the game from the bench.', 1, 3, 5, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1670962050/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Nationalspieler/221213-stanisic-kroatien-ima.jpg', NULL, 0),
(6, 'Straight into the top corner – Fans honour Eric Maxim Choupo-Moting', 'uploads/chupo-goal-of-the-month-nov.jpg', '<p>Head up and into the top corner - that&#39;s how to do it! In FC Bayern&#39;s final Champions League group game against Inter Milan at the start of November,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/eric-maxim-choupo-moting\">Eric Maxim Choupo-Moting</a>&nbsp;went for goal with around a quarter of an hour left and lashed the ball into the top left corner from a good 20 metres out. The strike didn&#39;t just wrap up the&nbsp;<a href=\"https://fcbayern.com/en/matches/profis/champions-league/2022-2023/fc-bayern-muenchen-inter-mailand-01-11-2022/report\">2-0 final scoreline</a>&nbsp;and a&nbsp;<a href=\"https://fcbayern.com/en/news/2022/11/record-breaking-fc-bayern-complete-third-perfect-champions-league-group-stage\">sixth win in six games</a>&nbsp;in this UCL season, but also sent a ripple around the&nbsp;<a href=\"https://allianz-arena.com/en\">Allianz Arena</a>. It&#39;s not every day that you see such a brilliant goal, even at FCB&#39;s home stadium.</p>\r\n\r\n<h2>Choupo earns over a third of the votes</h2>\r\n\r\n<p><img alt=\"Choupo-Moting FC Bayern\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1671121333/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Spiele/FCB-Inter/19-fcb-inter-011122-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"Choupo-Moting instinctively drilled the ball into the top corner in the 72nd minute of the final Champions League group game.\" /></p>\r\n\r\n<p>Choupo-Moting instinctively drilled the ball into the top corner in the 72nd minute of the final Champions League group game.</p>\r\n\r\n<p>Fans of the German record champions agreed and voted Choupo-Moting&#39;s effort as the FC Bayern Goal of the Month for November, with the Cameroon international receiving 38% of the votes. Second place went to&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/jamal-musiala\">Jamal Musiala</a>&nbsp;(26%) for his skilful opening goal in the&nbsp;<a href=\"https://fcbayern.com/en/matches/profis/bundesliga/2022-2023/fc-bayern-muenchen-sv-werder-bremen-08-11-2022/report\">6-1 win</a>&nbsp;over Werder Bremen, while Carolin Simon&#39;s wonderful free-kick in the 7-0 DFB Cup win at MSV Duisburg came third (17%).</p>', '2022-12-17 19:11:00.000000', '2023-01-07 19:13:59.949680', 'straight-into-the-top-corner-fans-honour-eric-maxim-choupo-moting', 22, 'Head up and into the top corner - that\'s how to do it! In FC Bayern\'s final Champions League group game against Inter Milan at the start of November, Eric Maxim Choupo-Moting went for goal with around a quarter of an hour left and lashed the ball into the top left corner from a good 20 metres out. The strike didn\'t just wrap up the 2-0 final scoreline and a sixth win in six games in this UCL season, but also sent a ripple around the Allianz Arena. It\'s not every day that you see such a brilliant goal, even at FCB\'s home stadium.', 0, 3, 2, NULL, NULL, 0),
(7, 'Nagelsmann welcomes training group before leaving for Doha', '', '<p>Bayern had their final two training sessions in Munich on Thursday before they head off to Doha and the Aspire Academy for their winter training camp on Friday. However, coach&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/coaches-and-staff/julian-nagelsmann\">Julian Nagelsmann</a>&nbsp;was still without a few players at S&auml;bener Stra&szlig;e.</p>\r\n\r\n<p><img alt=\"Joshua Kimmich FC Bayern Training\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672921075/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Kimmich/230105-kimmich-training-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"Joshua Kimmich and his teammates were hard at work in the morning session.\" /></p>\r\n\r\n<p>Joshua Kimmich and his teammates were hard at work in the morning session.</p>\r\n\r\n<h2>French players to travel directly</h2>\r\n\r\n<p>Among the players absent in Munich were French trio&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/dayot-upamecano\">Dayot Upamecano</a>,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/benjamin-pavard\">Benjamin Pavard</a>&nbsp;and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/kingsley-coman\">Kingsley Coman</a>&nbsp;after they were given some extra time off following France&rsquo;s World Cup final loss to Argentina. They will travel directly to Doha on Friday.&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/marcel-sabitzer\">Marcel Sabitzer</a>&nbsp;and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/noussair-mazraoui\">Noussair Mazraoui</a>&nbsp;didn&rsquo;t take part either. Long-term injury absentees&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/manuel-neuer\">Manuel Neuer</a>,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/sadio-mane\">Sadio Mane</a>,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/lucas-hernandez\">Lucas Hernandez</a>&nbsp;and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/bouna-sarr\">Bouna Sarr</a>&nbsp;were also missing and will continue their respective recovery programmes in Munich. They won&rsquo;t be traveling to the training camp.</p>\r\n\r\n<h2>First open session of the year</h2>\r\n\r\n<p>After the day&rsquo;s first session in the morning,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/thomas-mueller\">Thomas M&uuml;ller</a>,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/jamal-musiala\">Jamal Musiala</a>&nbsp;and their teammates welcomed fans to S&auml;bener Stra&szlig;e for the afternoon. It was the first open training session of the year as the players and coaches took time to sign autographs and take selfies with those in attendance.</p>\r\n\r\n<p><em>Check out the photos from the open session at S&auml;bener Stra&szlig;e:</em></p>\r\n\r\n<p><img alt=\"01-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/01-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"02-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/02-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"03-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/03-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"04-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/04-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"05-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/05-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"06-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/06-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"07-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/07-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"08-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/08-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"09-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/09-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"10-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/10-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"11-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/11-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"12-oeffentliches-training-230105-fcbayern-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672937066/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Training/230105-oeff-training/12-oeffentliches-training-230105-fcbayern-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>', '2023-01-05 22:30:00.000000', '2023-01-08 17:44:13.446869', 'nagelsmann-welcomes-training-group-before-leaving-for-doha', 8, 'Bayern had their final two training sessions in Munich on Thursday before they head off to Doha and the Aspire Academy for their winter training camp on Friday. However, coach Julian Nagelsmann was still without a few players at Säbener Straße.', 0, 6, 4, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1672920797/cms/public/images/fcbayern-com/homepage/Saison-22-23/Trainer/Nagelsmann/230105-nagelsmann-training-mel.jpg', NULL, 0),
(8, 'Friendly against FC Red Bull Salzburg on 13 January', '', '<p>FC Bayern will play a friendly against FC Red Bull&nbsp;Salzburg on 13 January 2023. The match will take place at the FC Bayern Campus, kicking off at 18:00 CET. A week later, on 20 January,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/coaches-and-staff/julian-nagelsmann\">Julian Nagelsmann</a>&#39;s side begin the second half of the season with the Bundesliga away match at RB Leipzig.</p>\r\n\r\n<p>Tickets for the friendly against Salzburg can be requested from today up until 18 December via the&nbsp;<a href=\"http://tickets.fcbayern.com/internetverkaufanfragen/EventList.aspx\">Online Shop</a>.</p>\r\n\r\n<p><img alt=\"champions league last 16 fc bayern salzburg\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1670504083/cms/public/images/fcbayern-com/homepage/saison-21-22/Galerien/Spiele/FCB-Salzburg/12_FCBSAL_220308_DON.jpg\" style=\"height:2160px; width:3840px\" title=\"Bayern and Salzburg last met in the last 16 of the 2021/22 Champions League campaign, with the German record champions coming out on top.\" /></p>\r\n\r\n<p>Bayern and Salzburg last met in the last 16 of the 2021/22 Champions League campaign, with the German record champions coming out on top.</p>\r\n\r\n<h2>Start of preparations on 3 January</h2>\r\n\r\n<p>Bayern begin their preparations for the rest of the season on 3 January, before heading off to Doha for a six-day training camp on 6 January. The friendly against the Austrian champions follows their return.</p>', '2023-01-02 06:00:00.000000', '2023-01-15 10:21:41.228072', 'friendly-against-fc-red-bull-salzburg-on-13-january', 4, 'FC Bayern will play a friendly against FC Red Bull Salzburg on 13 January 2023. The match will take place at the FC Bayern Campus, kicking off at 18:00 CET. A week later, on 20 January, Julian Nagelsmann\'s side begin the second half of the season with the Bundesliga away match at RB Leipzig.', 1, 2, 6, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1670511127/cms/public/images/fcbayern-com/homepage/stadien/fcbayern-campus-190327-get.jpg', NULL, 1),
(9, 'FC Bayern sign Daley Blind', '', '<p>Bayern Munich have signed defender Daley Blind on a deal till the end of the season. The 32-year-old Netherlands international came through the youth system at Ajax, which was also his most recent club. He also played for Manchester United between 2014 and 2018.</p>\r\n\r\n<p><a href=\"https://fcbayern.com/en/club/company/hasan-salihamid%C5%BEi%C4%87\">Hasan Salihamidzic</a>: &ldquo;We&rsquo;re delighted that Daley is joining our team. Daley is a versatile defender, capable of playing on the left or in the centre. He has great international experience and leadership qualities. I&rsquo;m sure he&rsquo;ll help us.&rdquo;</p>\r\n\r\n<p><img alt=\"06-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948377/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/06-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p>Daley Blind: &ldquo;I can hardly wait to play here. We&rsquo;ve got the most important part of the season coming up, where it&rsquo;s about titles &ndash; and a club like Bayern can win every trophy. The hunger for titles here at the club was key in my decision. I hope I can bring my experience to help the team. I&rsquo;ll give everything for Bayern Munich.&rdquo;</p>\r\n\r\n<p><em>Check out the photos from Blind&#39;s arrival:</em></p>\r\n\r\n<p><img alt=\"01-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/01-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"02-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/02-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"03-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/03-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"04-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/04-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"05-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/05-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"06-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/06-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"07-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/07-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"08-daley-blind-unterschrift-230105-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1672948228/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/08-daley-blind-unterschrift-230105-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p>Blind will fly with the team to their training camp in Doha in Friday. He completed his medical in Munich on Thursday.</p>\r\n\r\n<p>Blind has won the Dutch Eredivisie seven times with Ajax, as well as the domestic cup twice. He also won the 2017 Europa League with Manchester United. The defender has 99 caps (three goals) for the Netherlands national team, having also played in every game for the Dutch as they reached the quarter-finals at the World Cup in Qatar.</p>', '2023-01-06 01:30:00.000000', '2023-01-08 17:36:29.437729', 'fc-bayern-sign-daley-blind', 7, 'Bayern Munich have signed defender Daley Blind on a deal till the end of the season. The 32-year-old Netherlands international came through the youth system at Ajax, which was also his most recent club. He also played for Manchester United between 2014 and 2018.', 1, 2, 7, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1672938216/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Blind-Transfer/03-daley-blind-unterschrift-230105-mel.jpg', NULL, 1),
(10, 'Pavard and Coman return, Blind unveiling and triple training', '', '<p>It&#39;s been clear from the start that FC Bayern are fully commited to laying the foundation for a successful second half of the season at their winter training camp. On day two in Doha,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/coaches-and-staff/julian-nagelsmann\">Julian Nagelsmann</a>&nbsp;and his team were out at 7:30 for the first session, which consisted of running in the pouring rain. Three hours later, it was onto the pitch at the Aspire Academy. That wasn&#39;t all, though, as there was a third intensive session for the Munich men in the afternoon followed by some exercises in the gym.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"17-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673110727/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/17-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"18-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673110727/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/18-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"19-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673110727/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/19-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"20-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673110727/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/20-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"21-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673110727/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/21-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"07-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673110727/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/07-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p><img alt=\"08-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673110727/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/08-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></p>\r\n\r\n<p>After&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/dayot-upamecano\">Dayot Upamecano</a>&nbsp;had already joined the group on Friday evening, the other two French World Cup runners-up&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/benjamin-pavard\">Benjamin Pavard</a>, who took part in the afternoon training, and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/kingsley-coman\">Kingsley Coman</a>&nbsp;arrived on Saturday to great applause from their teammates. Welcome back, boys!</p>\r\n\r\n<p><img alt=\"Benjamin Pavard FC Bayern\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1673117505/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Pavard/230107-pavard-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"Benjamin Pavard was back training with the team on Saturday afternoon.\" /></p>\r\n\r\n<p>Benjamin Pavard was back training with the team on Saturday afternoon.</p>\r\n\r\n<h2>Unveiling of Daley Blind with Hasan Salihamidžić</h2>\r\n\r\n<p>Bayern&#39;s new signing Daley Blind has been with the team since the start of the training camp. On Saturday, the 32-year-old Dutchman introduced himself at a press conference: &quot;I have to be ready to help the team when they need me.&quot; Good luck in Munich, Daley!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://fcbayern.com/fcbayerntv/en/videos/2023/01/re-live-press-conference-with-hasan-salihamidzic-and-daley-blind-from-doha\" rel=\"noopener noreferrer\" target=\"_blank\"><img alt=\"06-tag-2-doha-fcbayern-230107-mel\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_800,c_fill/q_auto/v1673095750/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/06-tag-2-doha-fcbayern-230107-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"\" /></a></p>', '2023-01-08 02:36:00.000000', '2023-01-13 09:32:51.534975', 'pavard-and-coman-return-blind-unveiling-and-triple-training', 8, 'It\'s been clear from the start that FC Bayern are fully commited to laying the foundation for a successful second half of the season at their winter training camp. On day two in Doha, Julian Nagelsmann and his team were out at 7:30 for the first session, which consisted of running in the pouring rain. Three hours later, it was onto the pitch at the Aspire Academy. That wasn\'t all, though, as there was a third intensive session for the Munich men in the afternoon followed by some exercises in the gym.', 0, 2, 2, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1673117623/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Doha/Tag%202/230107-coman-training-katar-169-mel.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_news_article_liked`
--

CREATE TABLE `main_news_article_liked` (
  `id` bigint(20) NOT NULL,
  `news_article_id` bigint(20) NOT NULL,
  `customuser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_article_liked`
--

INSERT INTO `main_news_article_liked` (`id`, `news_article_id`, `customuser_id`) VALUES
(18, 1, 2),
(22, 1, 3),
(17, 2, 2),
(23, 2, 3),
(24, 2, 6),
(21, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_news_article_player_tags`
--

CREATE TABLE `main_news_article_player_tags` (
  `id` bigint(20) NOT NULL,
  `news_article_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_article_player_tags`
--

INSERT INTO `main_news_article_player_tags` (`id`, `news_article_id`, `player_id`) VALUES
(2, 5, 3),
(1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `main_news_article_related_news`
--

CREATE TABLE `main_news_article_related_news` (
  `id` bigint(20) NOT NULL,
  `from_news_article_id` bigint(20) NOT NULL,
  `to_news_article_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_article_related_news`
--

INSERT INTO `main_news_article_related_news` (`id`, `from_news_article_id`, `to_news_article_id`) VALUES
(25, 1, 3),
(21, 1, 5),
(26, 1, 7),
(22, 2, 5),
(27, 3, 1),
(17, 3, 5),
(19, 5, 1),
(20, 5, 2),
(15, 5, 3),
(28, 7, 1),
(24, 7, 8),
(23, 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `main_news_article_staff_tags`
--

CREATE TABLE `main_news_article_staff_tags` (
  `id` bigint(20) NOT NULL,
  `news_article_id` bigint(20) NOT NULL,
  `staff_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_news_article_tags`
--

CREATE TABLE `main_news_article_tags` (
  `id` bigint(20) NOT NULL,
  `news_article_id` bigint(20) NOT NULL,
  `news_tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_article_tags`
--

INSERT INTO `main_news_article_tags` (`id`, `news_article_id`, `news_tag_id`) VALUES
(5, 1, 3),
(6, 1, 5),
(4, 5, 3),
(3, 8, 2),
(2, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_news_tag`
--

CREATE TABLE `main_news_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `display` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_tag`
--

INSERT INTO `main_news_tag` (`id`, `name`, `display`) VALUES
(1, 'world_cup', 'World Cup'),
(2, 'transfer', 'Transfers'),
(3, 'potm', 'POTM'),
(4, 'youth', 'Youth'),
(5, 'award', 'Awards'),
(6, 'germany', 'Germany'),
(7, 'injury', 'Injuries'),
(8, 'ucl', 'Champions League'),
(9, 'tour', 'Tour');

-- --------------------------------------------------------

--
-- Table structure for table `main_opponent_goalscorers`
--

CREATE TABLE `main_opponent_goalscorers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `minute` smallint(5) UNSIGNED DEFAULT NULL CHECK (`minute` >= 0),
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_opponent_goalscorers`
--

INSERT INTO `main_opponent_goalscorers` (`id`, `name`, `minute`, `match_id`) VALUES
(1, 'Anthony Jung', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `main_order`
--

CREATE TABLE `main_order` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `address_1` varchar(200) DEFAULT NULL,
  `address_2` varchar(200) DEFAULT NULL,
  `postcode` bigint(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `order_notes` longtext DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `packaging` decimal(4,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(20) NOT NULL,
  `dispatched` tinyint(1) NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `delivered` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_order`
--

INSERT INTO `main_order` (`id`, `first_name`, `last_name`, `company`, `country`, `address_1`, `address_2`, `postcode`, `city`, `state`, `phone_number`, `email`, `order_notes`, `subtotal`, `packaging`, `total_amount`, `payment_method`, `dispatched`, `order_date`, `user_id`, `delivered`) VALUES
(1, 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', '                                                                    ', '173.28', '2.00', '175.28', 'cod', 0, '2022-12-16 10:11:14.195134', 2, 0),
(2, 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', '-', '192.36', '2.00', '194.36', 'cod', 0, '2023-01-04 16:18:49.854178', 2, 0),
(3, 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', '                                                                    ', '14.40', '4.00', '18.40', 'cod', 0, '2023-01-09 17:20:33.079342', 2, 0),
(4, 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', '', '74.10', '0.00', '74.10', 'bank', 0, '2023-01-09 19:15:24.840651', 2, 0),
(5, 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', '                                                                    ', '74.10', '0.00', '74.10', 'upi', 0, '2023-01-10 05:01:15.345030', 2, 0),
(6, 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', '                                                                    ', '455.68', '0.00', '455.68', 'bank', 0, '2023-01-12 17:16:05.807573', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_order_item`
--

CREATE TABLE `main_order_item` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `parent_order_id` bigint(20) NOT NULL,
  `player_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_order_item`
--

INSERT INTO `main_order_item` (`id`, `quantity`, `price`, `parent_order_id`, `player_id`, `product_id`, `size_id`) VALUES
(1, 1, '173.28', 1, NULL, 1, 2),
(2, 1, '19.08', 2, NULL, 5, NULL),
(3, 3, '173.28', 2, NULL, 1, 3),
(4, 1, '14.40', 3, NULL, 7, NULL),
(5, 1, '74.10', 4, 3, 2, 5),
(6, 1, '74.10', 5, 2, 2, 7),
(7, 2, '180.50', 6, NULL, 1, 3),
(8, 1, '19.08', 6, NULL, 5, NULL),
(9, 1, '75.60', 6, 2, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_player`
--

CREATE TABLE `main_player` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `second_name` varchar(100) DEFAULT NULL,
  `kit_no` int(11) DEFAULT NULL,
  `nationality` varchar(2) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `height` decimal(3,2) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `past_club` varchar(100) DEFAULT NULL,
  `born` date DEFAULT NULL,
  `contract_end` date DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `profile_banner` varchar(100) DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `position` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_player`
--

INSERT INTO `main_player` (`id`, `name`, `first_name`, `second_name`, `kit_no`, `nationality`, `profile_pic`, `height`, `weight`, `age`, `past_club`, `born`, `contract_end`, `rating`, `profile_banner`, `biography`, `slug`, `position`) VALUES
(2, 'Eric Maxim Choupo-Moting', 'Eric Maxim', 'Choupo-Moting', 13, 'CM', 'players/choupo_moting.png', '1.91', 90, 33, 'Paris Saint Germain', '1989-03-23', '2023-06-30', '7.5', '', '<p>Eric Maxim Choupo-Moting is a Cameroon international who joined FC Bayern in autumn 2020. The striker came to the German record champions from Paris Saint-Germain, but his football beginnings can be traced back to his home city of Hamburg. There he played for Altona 93, FC St. Pauli and Hamburger SV among others. That was followed by spells at Mainz, Schalke and Stoke City in England. He is particularly strong in the duels and in the air. In his very first year at Bayern, he won the Bundesliga as well as the FIFA Club World Cup.</p>\r\n\r\n<p><strong><span style=\"font-size:20px\">Honours:</span><br />\r\nFIFA Club World Cup</strong>&nbsp;2020&nbsp;<strong>UEFA Champions League</strong>&nbsp;finalist 2020&nbsp;<strong>Bundesliga&nbsp;</strong>2021, 2022&nbsp;<strong>DFL Supercup&nbsp;</strong>2021&nbsp;<strong>Ligue 1</strong>&nbsp;2019, 2020&nbsp;<strong>Coupe de France</strong>&nbsp;2020&nbsp;<strong>Troph&eacute;e des Champions</strong>&nbsp;2020&nbsp;<strong>Coupe de la Ligue&nbsp;</strong>2020</p>', 'eric-maxim-choupo-moting', 'forward'),
(3, 'Serge Gnabry', 'Serge', 'Gnabry', 7, 'DE', 'players/serge_gnabry.png', '1.76', 77, 27, 'Arsenal', '1995-07-14', '2023-06-30', '7.1', 'players/gnabry-banner.jpg', '<p>Serge Gnabry joined FC Bayern from Werder Bremen in 2017 and was loaned out to TSG 1899 Hoffenheim for his first year. Since 2018 he&#39;s been an established member of the record champions&#39; squad. He left his home of Stuttgart in 2011 to move to England and Arsenal, where he developed into a professional and also had a loan spell at West Bromwich Albion. He won the sextuple with Bayern in 2020. Gnabry was voted FCB Player of the Season in his first season in 2018/19.</p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Honours:</strong></span><br />\r\n<strong>Bundesliga&nbsp;</strong>2019, 2020, 2021, 2022&nbsp;<strong>DFB Cup&nbsp;</strong>2019, 2020&nbsp;<strong>UEFA Champions League&nbsp;</strong>2020&nbsp;<strong>UEFA Super Cup&nbsp;</strong>2020&nbsp;<strong>FIFA Club World Cup</strong>&nbsp;2020&nbsp;<strong>DFL Supercup&nbsp;</strong>2018, 2020, 2021&nbsp;<strong>UEFA European Under-21 Championship</strong>&nbsp;2017&nbsp;<strong>Olympic Games&nbsp;</strong>silver medal (2016)&nbsp;<strong>Olympic Games&nbsp;</strong>top scorer (2016)&nbsp;<strong>FA Cup&nbsp;</strong>2014, 2015&nbsp;<strong>Community Shield</strong>&nbsp;2014, 2015</p>', 'serge-gnabry', 'forward'),
(4, 'Manuel Neuer', 'Manuel', 'Neuer', 1, 'DE', 'players/manuel_neuer.png', '1.93', 93, 36, 'FC Shalke 04', '1986-03-27', '2024-06-30', '6.2', '', '<p>Manuel Neuer has been the FCB keeper since 2011. The Gelsenkirchen native started out at his hometown club Schalke 04. In 2011 and 2014, he was named German Player of the Year, as well as being voted the Best FIFA Goalkeeper in 2020. Among other things, he&#39;s won the treble twice (2013 and 2020) with the men from Munich, and since 2017 he&#39;s worn the captain&#39;s armband at the record champions. In 2014, Manuel Neuer won the World Cup in Brazil with the German national team.</p>', 'manuel-neuer', 'goalkeeper'),
(5, 'Sven Ulreich', 'Sven', 'Ulreich', 26, 'DE', 'players/sven_ulreich.png', '1.92', 87, 34, 'Bayern U17s', '1988-08-03', '2024-06-30', '6.8', '', '<p>Sven Ulreich started his second spell at FC Bayern in July 2021. The goalkeeper had already played for the German record champions from 2015 to 2020, but then moved to Hamburger SV for a year. He learned his trade in the youth set-up at VfB Stuttgart, for whom he also later played at senior level. During his time at FCB, Ulreich has won the Champions League, the Bundesliga, the DFB Cup, the DFL Supercup and the UEFA Super Cup.</p>', 'sven-ulreich', 'goalkeeper'),
(6, 'Matthijs De Ligt', NULL, NULL, 4, 'NL', 'players/matthijs-de-ligt.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'matthijs-de-ligt', 'defender'),
(7, 'Lucas Hernández', NULL, NULL, 21, 'FR', 'players/lucas_hernandez.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'lucas-hernandez', 'defender'),
(8, 'Daley Blind', NULL, NULL, 23, 'NL', 'players/daley_blind.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'daley-blind', 'defender'),
(9, 'Noussair Mazraoui', NULL, NULL, 40, 'MA', 'players/noussair_mazraoui.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'noussair-mazraoui', 'defender'),
(10, 'Dayot Upamecano', NULL, NULL, 2, 'FR', 'players/dayot_upamecano.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'dayot-upamecano', 'defender'),
(11, 'Alphonso Davies', NULL, NULL, 19, 'CA', 'players/alphonso_davies.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'alphonso-davies', 'defender'),
(12, 'Joshua Kimmich', NULL, NULL, 6, 'DE', 'players/joshua_kimmich.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'joshua-kimmich', 'midfielder'),
(13, 'Leon Goretzka', NULL, NULL, 8, 'DE', 'players/leon_goretzka.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'leon-goretzka', 'midfielder'),
(14, 'Paul Wanner', NULL, NULL, 14, 'DE', 'players/paul_wanner.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'paul-wanner', 'midfielder'),
(15, 'Marcel Sabitzer', NULL, NULL, 18, 'AT', 'players/marcel_sabitzer.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'marcel-sabitzer', 'midfielder'),
(16, 'Ryan Gravenberch', NULL, NULL, 38, 'NL', 'players/ryan_gravenberch.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'ryan-gravenberch', 'midfielder'),
(17, 'Josip Stanišić', NULL, NULL, 44, 'HR', 'players/josip_stanisic.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'josip-stanisic', 'defender'),
(18, 'Bouna Sarr', NULL, NULL, 20, 'SN', 'players/bouna_sarr.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'bouna-sarr', 'defender'),
(19, 'Kingsley Coman', NULL, NULL, 11, 'FR', 'players/kingsley_coman.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'kingsley-coman', 'forward'),
(20, 'Sadio Mané', NULL, NULL, 17, 'SN', 'players/sadio_mane.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'sadio-mane', 'forward'),
(21, 'Thomas Müller', NULL, NULL, 25, 'DE', 'players/thomas_mueller.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'thomas-muller', 'forward'),
(22, 'Mathys Tel', NULL, NULL, 39, 'FR', 'players/mathys-tel.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'mathys-tel', 'forward'),
(23, 'Jamal Musiala', NULL, NULL, 42, 'DE', 'players/jamal_musiala_7M44LIP.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'jamal-musiala', 'midfielder'),
(24, 'Johannes Schenk', NULL, NULL, 35, 'DE', 'players/johannes-schenk.png', NULL, NULL, 35, NULL, NULL, NULL, '6.0', '', '', 'johannes-schenk', 'goalkeeper'),
(25, 'Benjamin Pavard', NULL, NULL, 5, 'FR', 'players/benjamin_pavard.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'benjamin-pavard', 'defender'),
(26, 'Leroy Sané', NULL, NULL, 10, 'DE', 'players/leroy_sane.png', NULL, NULL, NULL, NULL, NULL, NULL, '6.0', '', '', 'leroy-sane', 'forward');

-- --------------------------------------------------------

--
-- Table structure for table `main_player_image`
--

CREATE TABLE `main_player_image` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `player_id` bigint(20) NOT NULL,
  `image_url` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_player_image`
--

INSERT INTO `main_player_image` (`id`, `image`, `date`, `description`, `player_id`, `image_url`) VALUES
(1, 'gallery/player/serge-gnabry-bayern-munich-2019-20_1homawpof0s41q42nyhmdbhyq_1MgDjuB.jpg', NULL, 'Poker against Tottenham', 3, NULL),
(2, 'gallery/player/skysports-serge-gnabry-bayern-munich_4930800_GWROeUO.jpg', NULL, 'Brace against Chelsea', 3, NULL),
(3, 'gallery/player/cover_Ti6UFaW.jpg', NULL, 'For German national team', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_player_stats`
--

CREATE TABLE `main_player_stats` (
  `id` bigint(20) NOT NULL,
  `apps` int(11) NOT NULL,
  `minutes` int(11) NOT NULL,
  `goals` int(11) NOT NULL,
  `assists` int(11) NOT NULL,
  `yellows` int(11) NOT NULL,
  `reds` int(11) NOT NULL,
  `own_goals` int(11) NOT NULL,
  `fouls` int(11) NOT NULL,
  `offsides` int(11) NOT NULL,
  `ppg` decimal(3,2) NOT NULL,
  `win_ratio` decimal(3,2) NOT NULL,
  `motm` int(11) NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `competition_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL,
  `season_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_player_stats`
--

INSERT INTO `main_player_stats` (`id`, `apps`, `minutes`, `goals`, `assists`, `yellows`, `reds`, `own_goals`, `fouls`, `offsides`, `ppg`, `win_ratio`, `motm`, `rating`, `competition_id`, `player_id`, `season_id`) VALUES
(1, 30, 1774, 10, 5, 0, 0, 0, 25, 12, '2.27', '0.70', 3, '7.15', 1, 3, 4),
(2, 31, 2202, 12, 10, 0, 0, 0, 15, 16, '2.45', '0.77', 7, '7.49', 1, 3, 5),
(3, 27, 1650, 10, 2, 4, 0, 0, 21, 6, '2.48', '0.78', 1, '7.18', 1, 3, 1),
(4, 34, 2190, 14, 5, 0, 0, 0, 11, 15, '2.26', '0.70', 2, '7.30', 1, 3, 2),
(5, 15, 832, 8, 3, 0, 0, 0, 8, 4, '2.27', '0.67', 2, '7.33', 1, 3, 3),
(6, 5, 239, 1, 3, 0, 0, 0, 1, 4, '3.00', '1.00', 0, '7.00', 2, 3, 3),
(7, 8, 391, 3, 0, 0, 0, 0, 4, 3, '2.13', '0.62', 0, '7.15', 2, 3, 2),
(8, 6, 360, 0, 1, 1, 0, 0, 8, 0, '2.67', '0.83', 0, '6.83', 2, 3, 1),
(9, 10, 766, 9, 2, 2, 0, 0, 11, 2, '3.00', '1.00', 1, '7.75', 2, 3, 5),
(10, 7, 447, 0, 1, 1, 0, 0, 4, 3, '1.71', '0.43', 0, '6.73', 2, 3, 4),
(11, 2, 180, 0, 2, 0, 0, 0, 1, 1, '3.00', '1.00', 0, '6.90', 3, 3, 3),
(12, 2, 96, 0, 1, 0, 0, 0, 0, 0, '1.50', '0.50', 0, '6.87', 3, 3, 2),
(13, 1, 90, 1, 0, 0, 0, 0, 1, 0, '0.00', '0.00', 0, '7.00', 3, 3, 1),
(14, 5, 377, 2, 1, 0, 0, 0, 5, 3, '3.00', '1.00', 0, '7.05', 3, 3, 5),
(15, 5, 325, 3, 0, 0, 0, 0, 2, 4, '3.00', '1.00', 0, '7.35', 3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `main_season`
--

CREATE TABLE `main_season` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_season`
--

INSERT INTO `main_season` (`id`, `name`, `start_year`) VALUES
(1, '2020/21', 2020),
(2, '2021/22', 2021),
(3, '2022/23', 2022),
(4, '2018/19', 2018),
(5, '2019/20', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `main_social_media_links`
--

CREATE TABLE `main_social_media_links` (
  `id` bigint(20) NOT NULL,
  `insta_link` varchar(150) DEFAULT NULL,
  `twitter_link` varchar(150) DEFAULT NULL,
  `fb_link` varchar(150) DEFAULT NULL,
  `player_id` bigint(20) DEFAULT NULL,
  `staff_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_social_media_links`
--

INSERT INTO `main_social_media_links` (`id`, `insta_link`, `twitter_link`, `fb_link`, `player_id`, `staff_id`) VALUES
(1, 'https://www.instagram.com/sergegnabry/', 'https://twitter.com/SergeGnabry', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_sold_ticket`
--

CREATE TABLE `main_sold_ticket` (
  `id` bigint(20) NOT NULL,
  `seat_cat` varchar(5) DEFAULT NULL,
  `quantity` smallint(5) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `match_id` bigint(20) DEFAULT NULL,
  `who_id` int(11) DEFAULT NULL,
  `payment_method` varchar(8) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_sold_ticket`
--

INSERT INTO `main_sold_ticket` (`id`, `seat_cat`, `quantity`, `match_id`, `who_id`, `payment_method`, `price`) VALUES
(12, 'cat_5', 6, 2, 2, 'bank', '90.00');

-- --------------------------------------------------------

--
-- Table structure for table `main_sponsor`
--

CREATE TABLE `main_sponsor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `kind` varchar(30) NOT NULL,
  `logo_white` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_sponsor`
--

INSERT INTO `main_sponsor` (`id`, `name`, `url`, `logo`, `kind`, `logo_white`) VALUES
(1, 'Telekom', 'https://www.telekom.com/', 'logos/telekom_neu.png', 'main', 'logos/Telekom.png'),
(2, 'Adidas', 'https://www.adidas.co.in/', 'logos/adidas.png', 'main', 'logos/Adidas.png'),
(3, 'Audi', 'https://www.audi.com/en/company/home-of-football.html', 'logos/audi-neu.png', 'main', 'logos/Audi.png'),
(4, 'Allianz', 'https://www.allianz.com/en.html', 'logos/allianz.png', 'main', 'logos/Allianz.png'),
(5, 'Adobe', 'https://www.adobe.com/uk/lead/fcbayern.html?sdid=55KD8PV1&mv=social', 'logos/Kachel_Adobe_Rot.png', 'platinum', 'logos/Adobe_Corporate_25px.png'),
(6, 'Hypovereinsbank', 'https://www.hypovereinsbank.de/hvb/privatkunden', 'logos/hypovereinsbank.png', 'platinum', 'logos/Hypovereinsbank.png'),
(7, 'Hylo', 'https://fcb.hylo.de/', 'logos/hylo_new.png', 'platinum', 'logos/Hylo_2.png'),
(8, 'Konami', 'https://www.konami.com/efootball/en/', 'logos/konami_new.png', 'platinum', 'logos/Konami.png'),
(9, 'Paulaner', 'https://www.paulaner.com/', 'logos/paulaner.png', 'platinum', 'logos/paulaner__white.png'),
(10, 'Qatar Airways', 'https://www.qatarairways.com/en-in/homepage.html', 'logos/qatar.png', 'platinum', 'logos/Qatarairways.png'),
(11, 'SAP', 'https://www.sap.com/index.html', 'logos/sap_newlogo.png', 'platinum', 'logos/Sap.png'),
(12, 'Siemens', 'https://www.siemens.com/global/en/company/topic-areas/fcbayern-munich.html', 'logos/siemens-m-cl.png', 'platinum', 'logos/siemens-plain.png'),
(13, 'Tipico', 'http://www.tipico.com/', 'logos/tipico.png', 'platinum', 'logos/Tipico.png'),
(14, 'Viessmann', 'https://www.viessmann.de/', 'logos/Viessmann.png', 'platinum', 'logos/Viesmann-02.png');

-- --------------------------------------------------------

--
-- Table structure for table `main_staff`
--

CREATE TABLE `main_staff` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `nationality` varchar(2) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `previous_post` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `born` date DEFAULT NULL,
  `contract_start` date DEFAULT NULL,
  `contract_end` date DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_staff`
--

INSERT INTO `main_staff` (`id`, `name`, `designation`, `nationality`, `profile_pic`, `age`, `previous_post`, `short_name`, `born`, `contract_start`, `contract_end`, `biography`, `slug`) VALUES
(1, 'Hasan Salihamidžić', 'Executive Sporting Director', 'BA', 'staff/Hasan_Salihamidzic_1.png', 46, 'FC Bayern(as player)', 'HS', '1977-01-01', '2020-06-01', '2025-05-30', '<p>Hasan Salihamidžić has been board member for sport of the FC Bayern M&uuml;nchen AG since 1 July 2020. Previously, the former Bayern player worked as the club&#39;s sporting director for three years.</p>\r\n\r\n<p>Salihamidžić was born on 1 January 1977 in Jablanica, Bosnia and Herzegovina. As a player, he won everything there was to win in domestic and European club football with FC Bayern: Six Bundesliga titles, the DFB Cup and the League Cup four times each, and in 2001 also the Champions League and the Club World Cup.</p>\r\n\r\n<p>Between July 1998 and June 2007, he played a total of 365 games for FC Bayern and scored 46 goals. In his home country, Salihamidžić was voted &quot;Footballer of the Year&quot; four times. He made 42 international appearances for Bosnia and Herzegovina. Following his time at FC Bayern, he had spells at Juventus and VfL Wolfsburg.</p>\r\n\r\n<p>In 2012, Salihamidžić ended his playing career and built up a medium-sized company with a partner. In 2016, he became the FC Bayern brand ambassador. As board member for sport, Salihamidžić is now responsible for the senior men&#39;s team, the FC Bayern Campus including the FC Bayern Women&#39;s Bundesliga team, all coaches and the associated backroom staff and departments.</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Honours</strong></span></p>\r\n\r\n<p><strong>Intercontinental Cup</strong>&nbsp;2001</p>\r\n\r\n<p><strong>Champions League</strong>&nbsp;2001</p>\r\n\r\n<p><strong>Bundesliga&nbsp;</strong>1999, 2000, 2001, 2003, 2005, 2006</p>\r\n\r\n<p><strong>DFB Cup</strong>&nbsp;2000, 2003, 2005, 2006</p>\r\n\r\n<p><strong>League Cup</strong>&nbsp;1998, 1999, 2000, 2004</p>\r\n\r\n<p><strong>Bosnia and Herzegovina&#39;s Footballer of the Year&nbsp;</strong>2000, 2004, 2005, 2006</p>', 'hasan-salihamidzic'),
(2, 'Julian Nagelsmann', 'Head Coach', 'DE', 'staff/julian_nagelsmann.png', 35, 'RB Leipzig(2019-21)', 'JN', '1987-07-23', NULL, NULL, '<p>Julian Nagelsmann has been head coach at FC Bayern since the summer of 2021. Born in Bavaria, he grew up in Landsberg am Lech, not far from Munich. Nagelsmann played in the youth teams of FC Augsburg and TSV 1860 M&uuml;nchen, but was forced to end his playing career early due to a knee injury.</p>\r\n\r\n<h2>Youngest coach in Bundesliga history</h2>\r\n\r\n<p>He began his post-playing career as assistant coach in Augsburg&#39;s youth team before coaching the youngsters at TSG 1899 Hoffenheim. After winning the German A-youth championship (U19s) in 2014, he was promoted to coach the TSG senior squad in 2016, becoming the youngest head coach in Bundesliga history at the age of just 26. Before returning home to Bayern, Nagelsmann was head coach at RB Leipzig for two years.</p>\r\n\r\n<p><strong><span style=\"font-size:18px\">Honours</span></strong></p>\r\n\r\n<p><strong>As head coach</strong></p>\r\n\r\n<p><strong>U19 Bundesliga&nbsp;</strong>2014</p>\r\n\r\n<p><strong>Germany&#39;s Coach of the Year&nbsp;</strong>2017&nbsp;</p>\r\n\r\n<p><strong>Youngest head coach in Bundesliga history&nbsp;</strong>(aged 28 in 2016)</p>\r\n\r\n<p><strong>DFL Supercup&nbsp;</strong>2021</p>', 'julian-nagelsmann'),
(3, 'Benjamin Glück', 'Assistant Coach', 'DE', 'staff/benjamin_glück.png', 36, NULL, 'BG', '1986-04-28', NULL, NULL, '<p>Benjamin Gl&uuml;ck has been an assistant coach at FC Bayern under Julian Nagelsmann since the summer of 2021. Born in Bavaria, he started out at TSG Hoffenheim as a video analyst under Nagelsmann and also worked with the current FCB coach at RB Leipzig from 2019 to 2021.</p>', 'benjamin-gluck'),
(4, 'Xaver Zembrod', 'Assistant Coach', 'DE', 'staff/xaver_zembrod.png', 56, 'RB Leipzig(2019-21)', 'XZ', '1966-07-28', NULL, NULL, '<p>Xaver Zembrod joined Julian Nagelsmann&#39;s staff at FC Bayern in 2021 and had previously worked alongside the FCB head coach at RB Leipzig. Zembrod holds a degree in sports science, sports medicine and education. He also holds a UEFA Pro Licence and worked for many years in the youth sector of the DFB (German Football Association) and the Bavarian Football Association. He subsequently also worked for several clubs in German professional football, such as Hannover 96, Bayer 04 Leverkusen and Leipzig.</p>', 'xaver-zembrod'),
(5, 'Dino Toppmöller', 'Assistant Coach', 'DE', 'staff/dino_toppmöller.png', 42, NULL, 'DT', NULL, NULL, NULL, '', 'dino-toppmoller'),
(6, 'Prof Dr Holger Broich', 'Scientific Director and Head of Fitness', 'DE', 'staff/holger_broich.png', 48, NULL, 'HB', NULL, NULL, NULL, '', 'prof-dr-holger-broich'),
(7, 'Toni Tapalović', 'Goalkeeping Coach', 'DE', 'staff/toni_tapalovic.png', 42, NULL, 'TT', NULL, NULL, NULL, '', 'toni-tapalovic');

-- --------------------------------------------------------

--
-- Table structure for table `main_team`
--

CREATE TABLE `main_team` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `alt_color` varchar(50) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `league_side` tinyint(1) NOT NULL,
  `ucl_side` tinyint(1) NOT NULL,
  `pokal_side` tinyint(1) NOT NULL,
  `short_name` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_team`
--

INSERT INTO `main_team` (`id`, `name`, `logo`, `color`, `alt_color`, `manager`, `league_side`, `ucl_side`, `pokal_side`, `short_name`) VALUES
(1, 'FC Bayern München', 'logos/bayern_logo.png', 'red', 'white', 'Julian Nagelsmann', 1, 1, 1, 'FCB'),
(2, 'SC Freiburg', 'logos/SC_Freiburg_logo.png', 'red', 'white', 'Christian Streich', 1, 0, 0, 'SCF'),
(3, 'Union Berlin', 'logos/FC_Union_Berlin_logo.png', 'red', 'white', 'Urs Fischer', 1, 0, 0, 'FCU'),
(4, 'Borussia Dortmund', 'logos/dortmund_logo.png', 'yellow', 'black', 'Edin Terzic', 1, 0, 0, 'BVB'),
(5, 'RB Leipzig', 'logos/RB_Leipzig_2014_logo.svg.png', 'white', 'red', 'Marco Rose', 1, 0, 0, 'RBL'),
(6, 'FC Schalke 04', 'logos/FC_Schalke_04_Logo.svg.png', '#13379c', 'white', 'Thomas Reis', 1, 0, 0, 'S04'),
(7, 'Eintracht Frankfurt', 'logos/1200px-Eintracht_Frankfurt_Logo.png', 'black', 'red', 'Oliver Glasner', 1, 0, 0, 'SGE'),
(8, 'SV Werder Bremen', 'logos/SV-Werder-Bremen-Logo.png', '#136d2b', 'white', 'Ole Werner', 1, 0, 0, 'SVW'),
(9, '1. FC Köln', 'logos/FC_Cologne_logo.png', 'white', 'red', 'Steffen Baumgart', 1, 0, 0, 'KOE'),
(10, 'Paris Saint Germain', 'logos/Paris_Saint-Germain.png', '#10305d', 'white', 'Christophe Galtier', 0, 1, 0, 'PSG'),
(11, 'FC Red Bull Salzburg', 'logos/FC_Red_Bull_Salzburg_logo.png', 'white', 'red', 'Matthias Jaissle', 0, 0, 0, 'RBS'),
(12, 'Inter Milan', 'logos/FC_Internazionale_Milano_2021.png', '#0202a4', 'black', 'Simone Inzaghi', 0, 1, 0, 'INT'),
(13, 'FC Barcelona', 'logos/FC_Barcelona.png', '#09397c', '#8c003a', 'Xavi', 0, 1, 0, 'FCB'),
(14, 'FC Viktoria Plzeň', 'logos/Viktoria_Plzen_logo.png', '#9f1919', '#052c89', 'Michal Bílek', 0, 1, 0, 'PLZ');

-- --------------------------------------------------------

--
-- Table structure for table `main_tickets_collection`
--

CREATE TABLE `main_tickets_collection` (
  `id` bigint(20) NOT NULL,
  `cat_1_seats` int(10) UNSIGNED NOT NULL CHECK (`cat_1_seats` >= 0),
  `cat_2_seats` int(10) UNSIGNED NOT NULL CHECK (`cat_2_seats` >= 0),
  `cat_3_seats` int(10) UNSIGNED NOT NULL CHECK (`cat_3_seats` >= 0),
  `cat_4_seats` int(10) UNSIGNED NOT NULL CHECK (`cat_4_seats` >= 0),
  `cat_5_seats` int(10) UNSIGNED NOT NULL CHECK (`cat_5_seats` >= 0),
  `match_id` bigint(20) DEFAULT NULL,
  `cat_1_price` int(10) UNSIGNED NOT NULL CHECK (`cat_1_price` >= 0),
  `cat_2_price` int(10) UNSIGNED NOT NULL CHECK (`cat_2_price` >= 0),
  `cat_3_price` int(10) UNSIGNED NOT NULL CHECK (`cat_3_price` >= 0),
  `cat_4_price` int(10) UNSIGNED NOT NULL CHECK (`cat_4_price` >= 0),
  `cat_5_price` int(10) UNSIGNED NOT NULL CHECK (`cat_5_price` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_tickets_collection`
--

INSERT INTO `main_tickets_collection` (`id`, `cat_1_seats`, `cat_2_seats`, `cat_3_seats`, `cat_4_seats`, `cat_5_seats`, `match_id`, `cat_1_price`, `cat_2_price`, `cat_3_price`, `cat_4_price`, `cat_5_price`) VALUES
(1, 197, 150, 300, 230, 0, 1, 70, 60, 45, 30, 15),
(2, 12000, 8000, 8500, 10000, 13994, 4, 70, 60, 45, 30, 15);

-- --------------------------------------------------------

--
-- Table structure for table `main_timeline`
--

CREATE TABLE `main_timeline` (
  `id` bigint(20) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `player_id` bigint(20) DEFAULT NULL,
  `staff_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_timeline`
--

INSERT INTO `main_timeline` (`id`, `category`, `description`, `date`, `player_id`, `staff_id`) VALUES
(1, 'join', '<b>Serge Gnabry</b> has joined the team after playing for <b>SV Werder Bremen</b> for a year.', '2017-07-01', 3, NULL),
(2, 'award', '<b>Serge Gnabry</b> wins <b>FC Bayern Player of the season</b> for 2018-19', '2019-06-21', 3, NULL),
(3, 'join', '<b>Hasan Salihamidžić</b> renewed his contract with FC Bayern as <b>Executive Sporting Director</b>', '2021-05-05', NULL, 1),
(4, 'exit', 'Loaned to <b>TSG Hoffenheim</b> for a year.', '2017-07-14', 3, NULL),
(5, 'join', 'Returned from loan spell at <b>TSG Hoffenheim</b>', '2018-06-30', 3, NULL),
(6, 'injury', 'Infected with <b>Corona virus<b> for <b>17 days</b>', '2021-04-05', 3, NULL),
(7, 'injury', '<b>Achilles tendon problems<b>. Out for <b>14 days</b>', '2020-01-02', 3, NULL),
(8, 'injury', '<b>Inflenza<b> infection. Out for <b>10 days</b>', '2022-03-21', 3, NULL),
(9, 'injury', '<b>Thigh problems<b>. Out for <b>25 days</b>', '2018-12-20', 3, NULL),
(10, 'injury', '<b>Thigh problems<b>. Out for <b>21 days</b>', '2018-08-06', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_trophies`
--

CREATE TABLE `main_trophies` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` smallint(6) DEFAULT NULL,
  `image` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_trophies`
--

INSERT INTO `main_trophies` (`id`, `name`, `count`, `image`) VALUES
(1, 'German Championship', 32, 'https://img.fcbayern.com/image/upload/t_cms-1x1/f_auto/w_210,c_fill/q_auto/v1631524987/cms/public/images/fcbayern-com/media/images/erlebniswelt/erfolge/dfl_pokale.png'),
(2, 'DFB German Cup', 20, 'https://img.fcbayern.com/image/upload/t_cms-1x1/f_auto/w_210,c_fill/q_auto/v1630397664/cms/public/images/fcbayern-com/media/images/erlebniswelt/erfolge/dfb_pokale.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `main_address`
--
ALTER TABLE `main_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_address_user_id_23f4b77c_fk_main_customuser_user_ptr_id` (`user_id`);

--
-- Indexes for table `main_album_image`
--
ALTER TABLE `main_album_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_album_image_parent_album_id_497b71f1_fk_main_club_album_id` (`parent_album_id`);

--
-- Indexes for table `main_article_type`
--
ALTER TABLE `main_article_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_board_member`
--
ALTER TABLE `main_board_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_board_member_slug_00d281f4` (`slug`);

--
-- Indexes for table `main_club_album`
--
ALTER TABLE `main_club_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_club_album_slug_dc6a0f2a` (`slug`);

--
-- Indexes for table `main_club_season_stats`
--
ALTER TABLE `main_club_season_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_club_season_stats_club_id_985d16f6_fk_main_team_id` (`club_id`),
  ADD KEY `main_club_season_sta_competition_id_5ddbd38f_fk_main_comp` (`competition_id`);

--
-- Indexes for table `main_comment`
--
ALTER TABLE `main_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_comment_from_user_id_66696298_fk_main_cust` (`from_user_id`),
  ADD KEY `main_comment_parent_comment_id_d01ba21f_fk_main_comment_id` (`parent_comment_id`),
  ADD KEY `main_comment_parent_news_id_35e1491f_fk_main_news_article_id` (`parent_news_id`);

--
-- Indexes for table `main_competition`
--
ALTER TABLE `main_competition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_contact_us_request`
--
ALTER TABLE `main_contact_us_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_customuser`
--
ALTER TABLE `main_customuser`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `main_customuser_slug_da1d8987` (`slug`);

--
-- Indexes for table `main_goalscorers`
--
ALTER TABLE `main_goalscorers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_goalscorers_match_id_90bd65b1_fk_main_match_id` (`match_id`),
  ADD KEY `main_goalscorers_name_id_67b48faf_fk_main_player_id` (`name_id`);

--
-- Indexes for table `main_likes`
--
ALTER TABLE `main_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_likes_post_id_f1c7c0bd_fk_main_news_article_id` (`post_id`),
  ADD KEY `main_likes_user_id_e4bca4de_fk_main_customuser_user_ptr_id` (`user_id`);

--
-- Indexes for table `main_match`
--
ALTER TABLE `main_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_match_competition_id_4ba72f9c_fk_main_competition_id` (`competition_id`),
  ADD KEY `main_match_opponent_id_b0a05c73_fk_main_team_id` (`opponent_id`),
  ADD KEY `main_match_slug_007aefc5` (`slug`);

--
-- Indexes for table `main_match_event`
--
ALTER TABLE `main_match_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_match_news_tags`
--
ALTER TABLE `main_match_news_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_match_news_tags_match_id_news_article_id_7a2da873_uniq` (`match_id`,`news_article_id`),
  ADD KEY `main_match_news_tags_news_article_id_c651534b_fk_main_news` (`news_article_id`);

--
-- Indexes for table `main_match_tags`
--
ALTER TABLE `main_match_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_match_tags_match_id_news_tag_id_caa98e83_uniq` (`match_id`,`news_tag_id`),
  ADD KEY `main_match_tags_news_tag_id_eb6ed342_fk_main_news_tag_id` (`news_tag_id`);

--
-- Indexes for table `main_match_timeline`
--
ALTER TABLE `main_match_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_match_timeline_match_id_4bb18fbc_fk_main_match_id` (`match_id`),
  ADD KEY `main_match_timeline_name_id_6064820f_fk_main_match_event_id` (`name_id`);

--
-- Indexes for table `main_merchandise`
--
ALTER TABLE `main_merchandise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_merchandise_category_id_2eb6e2a5_fk_main_merc` (`category_id`),
  ADD KEY `main_merchandise_slug_8edd052e` (`slug`);

--
-- Indexes for table `main_merchandise_image`
--
ALTER TABLE `main_merchandise_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_merchandise_ima_product_id_adbb640a_fk_main_merc` (`product_id`);

--
-- Indexes for table `main_merchandise_information`
--
ALTER TABLE `main_merchandise_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_merchandise_inf_product_id_7cc40a4f_fk_main_merc` (`product_id`);

--
-- Indexes for table `main_merchandise_related_products`
--
ALTER TABLE `main_merchandise_related_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_merchandise_related_from_merchandise_id_to_m_38d94f97_uniq` (`from_merchandise_id`,`to_merchandise_id`),
  ADD KEY `main_merchandise_rel_to_merchandise_id_faaa9da5_fk_main_merc` (`to_merchandise_id`);

--
-- Indexes for table `main_merchandise_size`
--
ALTER TABLE `main_merchandise_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_merchandise_siz_product_id_c6670967_fk_main_merc` (`product_id`);

--
-- Indexes for table `main_merchandise_type`
--
ALTER TABLE `main_merchandise_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_mini_articles`
--
ALTER TABLE `main_mini_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_mini_articles_slug_27ddf0a4` (`slug`);

--
-- Indexes for table `main_news_article`
--
ALTER TABLE `main_news_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_news_article_author_id_0234057f_fk_main_cust` (`author_id`),
  ADD KEY `main_news_article_news_type_id_f71bd068_fk_main_article_type_id` (`news_type_id`),
  ADD KEY `main_news_article_slug_8a87ba29` (`slug`);

--
-- Indexes for table `main_news_article_liked`
--
ALTER TABLE `main_news_article_liked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_news_article_liked_news_article_id_customus_f189b282_uniq` (`news_article_id`,`customuser_id`),
  ADD KEY `main_news_article_li_customuser_id_123e1990_fk_main_cust` (`customuser_id`);

--
-- Indexes for table `main_news_article_player_tags`
--
ALTER TABLE `main_news_article_player_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_news_article_player_news_article_id_player_i_ddc2a987_uniq` (`news_article_id`,`player_id`),
  ADD KEY `main_news_article_pl_player_id_da14aff8_fk_main_play` (`player_id`);

--
-- Indexes for table `main_news_article_related_news`
--
ALTER TABLE `main_news_article_related_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_news_article_relate_from_news_article_id_to__bb808bb0_uniq` (`from_news_article_id`,`to_news_article_id`),
  ADD KEY `main_news_article_re_to_news_article_id_5890ae80_fk_main_news` (`to_news_article_id`);

--
-- Indexes for table `main_news_article_staff_tags`
--
ALTER TABLE `main_news_article_staff_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_news_article_staff__news_article_id_staff_id_94601461_uniq` (`news_article_id`,`staff_id`),
  ADD KEY `main_news_article_staff_tags_staff_id_a872cfc5_fk_main_staff_id` (`staff_id`);

--
-- Indexes for table `main_news_article_tags`
--
ALTER TABLE `main_news_article_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_news_article_tags_news_article_id_news_tag_id_58512c1d_uniq` (`news_article_id`,`news_tag_id`),
  ADD KEY `main_news_article_tags_news_tag_id_008fd8c1_fk_main_news_tag_id` (`news_tag_id`);

--
-- Indexes for table `main_news_tag`
--
ALTER TABLE `main_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_opponent_goalscorers`
--
ALTER TABLE `main_opponent_goalscorers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_opponent_goalscorers_match_id_4b728741_fk_main_match_id` (`match_id`);

--
-- Indexes for table `main_order`
--
ALTER TABLE `main_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_order_user_id_f3a58861_fk_main_customuser_user_ptr_id` (`user_id`);

--
-- Indexes for table `main_order_item`
--
ALTER TABLE `main_order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_order_item_parent_order_id_dbda9546_fk_main_order_id` (`parent_order_id`),
  ADD KEY `main_order_item_player_id_b1bf200d_fk_main_player_id` (`player_id`),
  ADD KEY `main_order_item_product_id_f6126a2d_fk_main_merchandise_id` (`product_id`),
  ADD KEY `main_order_item_size_id_1ee9b6c1_fk_main_merchandise_size_id` (`size_id`);

--
-- Indexes for table `main_player`
--
ALTER TABLE `main_player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_player_slug_9fa08b26` (`slug`);

--
-- Indexes for table `main_player_image`
--
ALTER TABLE `main_player_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_player_image_player_id_5b2d9865_fk_main_player_id` (`player_id`);

--
-- Indexes for table `main_player_stats`
--
ALTER TABLE `main_player_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_player_stats_competition_id_d2329dbe_fk_main_competition_id` (`competition_id`),
  ADD KEY `main_player_stats_player_id_b6811abd_fk_main_player_id` (`player_id`),
  ADD KEY `main_player_stats_season_id_b47c767f_fk_main_season_id` (`season_id`);

--
-- Indexes for table `main_season`
--
ALTER TABLE `main_season`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_social_media_links`
--
ALTER TABLE `main_social_media_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_social_media_links_player_id_bce74c07_fk_main_player_id` (`player_id`),
  ADD KEY `main_social_media_links_staff_id_38eed57d_fk_main_staff_id` (`staff_id`);

--
-- Indexes for table `main_sold_ticket`
--
ALTER TABLE `main_sold_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_sold_ticket_match_id_84a4ac58_fk_main_tickets_collection_id` (`match_id`),
  ADD KEY `main_sold_ticket_who_id_41c25fe5_fk_main_customuser_user_ptr_id` (`who_id`);

--
-- Indexes for table `main_sponsor`
--
ALTER TABLE `main_sponsor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_staff`
--
ALTER TABLE `main_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_staff_slug_04dbee21` (`slug`);

--
-- Indexes for table `main_team`
--
ALTER TABLE `main_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_tickets_collection`
--
ALTER TABLE `main_tickets_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_tickets_collection_match_id_1aa15286_fk_main_match_id` (`match_id`);

--
-- Indexes for table `main_timeline`
--
ALTER TABLE `main_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_timeline_player_id_277befbd_fk_main_player_id` (`player_id`),
  ADD KEY `main_timeline_staff_id_82ed2262_fk_main_staff_id` (`staff_id`);

--
-- Indexes for table `main_trophies`
--
ALTER TABLE `main_trophies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `main_address`
--
ALTER TABLE `main_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_album_image`
--
ALTER TABLE `main_album_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `main_article_type`
--
ALTER TABLE `main_article_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_board_member`
--
ALTER TABLE `main_board_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_club_album`
--
ALTER TABLE `main_club_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_club_season_stats`
--
ALTER TABLE `main_club_season_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_comment`
--
ALTER TABLE `main_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_competition`
--
ALTER TABLE `main_competition`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_contact_us_request`
--
ALTER TABLE `main_contact_us_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_goalscorers`
--
ALTER TABLE `main_goalscorers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_likes`
--
ALTER TABLE `main_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `main_match`
--
ALTER TABLE `main_match`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main_match_event`
--
ALTER TABLE `main_match_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_match_news_tags`
--
ALTER TABLE `main_match_news_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_match_tags`
--
ALTER TABLE `main_match_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_match_timeline`
--
ALTER TABLE `main_match_timeline`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `main_merchandise`
--
ALTER TABLE `main_merchandise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_merchandise_image`
--
ALTER TABLE `main_merchandise_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `main_merchandise_information`
--
ALTER TABLE `main_merchandise_information`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `main_merchandise_related_products`
--
ALTER TABLE `main_merchandise_related_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `main_merchandise_size`
--
ALTER TABLE `main_merchandise_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `main_merchandise_type`
--
ALTER TABLE `main_merchandise_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_mini_articles`
--
ALTER TABLE `main_mini_articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_news_article`
--
ALTER TABLE `main_news_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `main_news_article_liked`
--
ALTER TABLE `main_news_article_liked`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `main_news_article_player_tags`
--
ALTER TABLE `main_news_article_player_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_news_article_related_news`
--
ALTER TABLE `main_news_article_related_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `main_news_article_staff_tags`
--
ALTER TABLE `main_news_article_staff_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_news_article_tags`
--
ALTER TABLE `main_news_article_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_news_tag`
--
ALTER TABLE `main_news_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_opponent_goalscorers`
--
ALTER TABLE `main_opponent_goalscorers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_order`
--
ALTER TABLE `main_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_order_item`
--
ALTER TABLE `main_order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_player`
--
ALTER TABLE `main_player`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `main_player_image`
--
ALTER TABLE `main_player_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_player_stats`
--
ALTER TABLE `main_player_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `main_season`
--
ALTER TABLE `main_season`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_social_media_links`
--
ALTER TABLE `main_social_media_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_sold_ticket`
--
ALTER TABLE `main_sold_ticket`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `main_sponsor`
--
ALTER TABLE `main_sponsor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_staff`
--
ALTER TABLE `main_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main_team`
--
ALTER TABLE `main_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_tickets_collection`
--
ALTER TABLE `main_tickets_collection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_timeline`
--
ALTER TABLE `main_timeline`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `main_trophies`
--
ALTER TABLE `main_trophies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_address`
--
ALTER TABLE `main_address`
  ADD CONSTRAINT `main_address_user_id_23f4b77c_fk_main_customuser_user_ptr_id` FOREIGN KEY (`user_id`) REFERENCES `main_customuser` (`user_ptr_id`);

--
-- Constraints for table `main_album_image`
--
ALTER TABLE `main_album_image`
  ADD CONSTRAINT `main_album_image_parent_album_id_497b71f1_fk_main_club_album_id` FOREIGN KEY (`parent_album_id`) REFERENCES `main_club_album` (`id`);

--
-- Constraints for table `main_club_season_stats`
--
ALTER TABLE `main_club_season_stats`
  ADD CONSTRAINT `main_club_season_sta_competition_id_5ddbd38f_fk_main_comp` FOREIGN KEY (`competition_id`) REFERENCES `main_competition` (`id`),
  ADD CONSTRAINT `main_club_season_stats_club_id_985d16f6_fk_main_team_id` FOREIGN KEY (`club_id`) REFERENCES `main_team` (`id`);

--
-- Constraints for table `main_comment`
--
ALTER TABLE `main_comment`
  ADD CONSTRAINT `main_comment_from_user_id_66696298_fk_main_cust` FOREIGN KEY (`from_user_id`) REFERENCES `main_customuser` (`user_ptr_id`),
  ADD CONSTRAINT `main_comment_parent_comment_id_d01ba21f_fk_main_comment_id` FOREIGN KEY (`parent_comment_id`) REFERENCES `main_comment` (`id`),
  ADD CONSTRAINT `main_comment_parent_news_id_35e1491f_fk_main_news_article_id` FOREIGN KEY (`parent_news_id`) REFERENCES `main_news_article` (`id`);

--
-- Constraints for table `main_customuser`
--
ALTER TABLE `main_customuser`
  ADD CONSTRAINT `main_customuser_user_ptr_id_a82e183b_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_goalscorers`
--
ALTER TABLE `main_goalscorers`
  ADD CONSTRAINT `main_goalscorers_match_id_90bd65b1_fk_main_match_id` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`id`),
  ADD CONSTRAINT `main_goalscorers_name_id_67b48faf_fk_main_player_id` FOREIGN KEY (`name_id`) REFERENCES `main_player` (`id`);

--
-- Constraints for table `main_likes`
--
ALTER TABLE `main_likes`
  ADD CONSTRAINT `main_likes_post_id_f1c7c0bd_fk_main_news_article_id` FOREIGN KEY (`post_id`) REFERENCES `main_news_article` (`id`),
  ADD CONSTRAINT `main_likes_user_id_e4bca4de_fk_main_customuser_user_ptr_id` FOREIGN KEY (`user_id`) REFERENCES `main_customuser` (`user_ptr_id`);

--
-- Constraints for table `main_match`
--
ALTER TABLE `main_match`
  ADD CONSTRAINT `main_match_competition_id_4ba72f9c_fk_main_competition_id` FOREIGN KEY (`competition_id`) REFERENCES `main_competition` (`id`),
  ADD CONSTRAINT `main_match_opponent_id_b0a05c73_fk_main_team_id` FOREIGN KEY (`opponent_id`) REFERENCES `main_team` (`id`);

--
-- Constraints for table `main_match_news_tags`
--
ALTER TABLE `main_match_news_tags`
  ADD CONSTRAINT `main_match_news_tags_match_id_7cb6d7c0_fk_main_match_id` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`id`),
  ADD CONSTRAINT `main_match_news_tags_news_article_id_c651534b_fk_main_news` FOREIGN KEY (`news_article_id`) REFERENCES `main_news_article` (`id`);

--
-- Constraints for table `main_match_tags`
--
ALTER TABLE `main_match_tags`
  ADD CONSTRAINT `main_match_tags_match_id_7e337a71_fk_main_match_id` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`id`),
  ADD CONSTRAINT `main_match_tags_news_tag_id_eb6ed342_fk_main_news_tag_id` FOREIGN KEY (`news_tag_id`) REFERENCES `main_news_tag` (`id`);

--
-- Constraints for table `main_match_timeline`
--
ALTER TABLE `main_match_timeline`
  ADD CONSTRAINT `main_match_timeline_match_id_4bb18fbc_fk_main_match_id` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`id`),
  ADD CONSTRAINT `main_match_timeline_name_id_6064820f_fk_main_match_event_id` FOREIGN KEY (`name_id`) REFERENCES `main_match_event` (`id`);

--
-- Constraints for table `main_merchandise`
--
ALTER TABLE `main_merchandise`
  ADD CONSTRAINT `main_merchandise_category_id_2eb6e2a5_fk_main_merc` FOREIGN KEY (`category_id`) REFERENCES `main_merchandise_type` (`id`);

--
-- Constraints for table `main_merchandise_image`
--
ALTER TABLE `main_merchandise_image`
  ADD CONSTRAINT `main_merchandise_ima_product_id_adbb640a_fk_main_merc` FOREIGN KEY (`product_id`) REFERENCES `main_merchandise` (`id`);

--
-- Constraints for table `main_merchandise_information`
--
ALTER TABLE `main_merchandise_information`
  ADD CONSTRAINT `main_merchandise_inf_product_id_7cc40a4f_fk_main_merc` FOREIGN KEY (`product_id`) REFERENCES `main_merchandise` (`id`);

--
-- Constraints for table `main_merchandise_related_products`
--
ALTER TABLE `main_merchandise_related_products`
  ADD CONSTRAINT `main_merchandise_rel_from_merchandise_id_ad382a13_fk_main_merc` FOREIGN KEY (`from_merchandise_id`) REFERENCES `main_merchandise` (`id`),
  ADD CONSTRAINT `main_merchandise_rel_to_merchandise_id_faaa9da5_fk_main_merc` FOREIGN KEY (`to_merchandise_id`) REFERENCES `main_merchandise` (`id`);

--
-- Constraints for table `main_merchandise_size`
--
ALTER TABLE `main_merchandise_size`
  ADD CONSTRAINT `main_merchandise_siz_product_id_c6670967_fk_main_merc` FOREIGN KEY (`product_id`) REFERENCES `main_merchandise_type` (`id`);

--
-- Constraints for table `main_news_article`
--
ALTER TABLE `main_news_article`
  ADD CONSTRAINT `main_news_article_author_id_0234057f_fk_main_cust` FOREIGN KEY (`author_id`) REFERENCES `main_customuser` (`user_ptr_id`),
  ADD CONSTRAINT `main_news_article_news_type_id_f71bd068_fk_main_article_type_id` FOREIGN KEY (`news_type_id`) REFERENCES `main_article_type` (`id`);

--
-- Constraints for table `main_news_article_liked`
--
ALTER TABLE `main_news_article_liked`
  ADD CONSTRAINT `main_news_article_li_customuser_id_123e1990_fk_main_cust` FOREIGN KEY (`customuser_id`) REFERENCES `main_customuser` (`user_ptr_id`),
  ADD CONSTRAINT `main_news_article_li_news_article_id_a8d6b27f_fk_main_news` FOREIGN KEY (`news_article_id`) REFERENCES `main_news_article` (`id`);

--
-- Constraints for table `main_news_article_player_tags`
--
ALTER TABLE `main_news_article_player_tags`
  ADD CONSTRAINT `main_news_article_pl_news_article_id_b8dd885b_fk_main_news` FOREIGN KEY (`news_article_id`) REFERENCES `main_news_article` (`id`),
  ADD CONSTRAINT `main_news_article_pl_player_id_da14aff8_fk_main_play` FOREIGN KEY (`player_id`) REFERENCES `main_player` (`id`);

--
-- Constraints for table `main_news_article_related_news`
--
ALTER TABLE `main_news_article_related_news`
  ADD CONSTRAINT `main_news_article_re_from_news_article_id_f7b20a4d_fk_main_news` FOREIGN KEY (`from_news_article_id`) REFERENCES `main_news_article` (`id`),
  ADD CONSTRAINT `main_news_article_re_to_news_article_id_5890ae80_fk_main_news` FOREIGN KEY (`to_news_article_id`) REFERENCES `main_news_article` (`id`);

--
-- Constraints for table `main_news_article_staff_tags`
--
ALTER TABLE `main_news_article_staff_tags`
  ADD CONSTRAINT `main_news_article_st_news_article_id_82f0bc40_fk_main_news` FOREIGN KEY (`news_article_id`) REFERENCES `main_news_article` (`id`),
  ADD CONSTRAINT `main_news_article_staff_tags_staff_id_a872cfc5_fk_main_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `main_staff` (`id`);

--
-- Constraints for table `main_news_article_tags`
--
ALTER TABLE `main_news_article_tags`
  ADD CONSTRAINT `main_news_article_ta_news_article_id_4873cac4_fk_main_news` FOREIGN KEY (`news_article_id`) REFERENCES `main_news_article` (`id`),
  ADD CONSTRAINT `main_news_article_tags_news_tag_id_008fd8c1_fk_main_news_tag_id` FOREIGN KEY (`news_tag_id`) REFERENCES `main_news_tag` (`id`);

--
-- Constraints for table `main_opponent_goalscorers`
--
ALTER TABLE `main_opponent_goalscorers`
  ADD CONSTRAINT `main_opponent_goalscorers_match_id_4b728741_fk_main_match_id` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`id`);

--
-- Constraints for table `main_order`
--
ALTER TABLE `main_order`
  ADD CONSTRAINT `main_order_user_id_f3a58861_fk_main_customuser_user_ptr_id` FOREIGN KEY (`user_id`) REFERENCES `main_customuser` (`user_ptr_id`);

--
-- Constraints for table `main_order_item`
--
ALTER TABLE `main_order_item`
  ADD CONSTRAINT `main_order_item_parent_order_id_dbda9546_fk_main_order_id` FOREIGN KEY (`parent_order_id`) REFERENCES `main_order` (`id`),
  ADD CONSTRAINT `main_order_item_player_id_b1bf200d_fk_main_player_id` FOREIGN KEY (`player_id`) REFERENCES `main_player` (`id`),
  ADD CONSTRAINT `main_order_item_product_id_f6126a2d_fk_main_merchandise_id` FOREIGN KEY (`product_id`) REFERENCES `main_merchandise` (`id`),
  ADD CONSTRAINT `main_order_item_size_id_1ee9b6c1_fk_main_merchandise_size_id` FOREIGN KEY (`size_id`) REFERENCES `main_merchandise_size` (`id`);

--
-- Constraints for table `main_player_image`
--
ALTER TABLE `main_player_image`
  ADD CONSTRAINT `main_player_image_player_id_5b2d9865_fk_main_player_id` FOREIGN KEY (`player_id`) REFERENCES `main_player` (`id`);

--
-- Constraints for table `main_player_stats`
--
ALTER TABLE `main_player_stats`
  ADD CONSTRAINT `main_player_stats_competition_id_d2329dbe_fk_main_competition_id` FOREIGN KEY (`competition_id`) REFERENCES `main_competition` (`id`),
  ADD CONSTRAINT `main_player_stats_player_id_b6811abd_fk_main_player_id` FOREIGN KEY (`player_id`) REFERENCES `main_player` (`id`),
  ADD CONSTRAINT `main_player_stats_season_id_b47c767f_fk_main_season_id` FOREIGN KEY (`season_id`) REFERENCES `main_season` (`id`);

--
-- Constraints for table `main_social_media_links`
--
ALTER TABLE `main_social_media_links`
  ADD CONSTRAINT `main_social_media_links_player_id_bce74c07_fk_main_player_id` FOREIGN KEY (`player_id`) REFERENCES `main_player` (`id`),
  ADD CONSTRAINT `main_social_media_links_staff_id_38eed57d_fk_main_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `main_staff` (`id`);

--
-- Constraints for table `main_sold_ticket`
--
ALTER TABLE `main_sold_ticket`
  ADD CONSTRAINT `main_sold_ticket_match_id_84a4ac58_fk_main_tickets_collection_id` FOREIGN KEY (`match_id`) REFERENCES `main_tickets_collection` (`id`),
  ADD CONSTRAINT `main_sold_ticket_who_id_41c25fe5_fk_main_customuser_user_ptr_id` FOREIGN KEY (`who_id`) REFERENCES `main_customuser` (`user_ptr_id`);

--
-- Constraints for table `main_tickets_collection`
--
ALTER TABLE `main_tickets_collection`
  ADD CONSTRAINT `main_tickets_collection_match_id_1aa15286_fk_main_match_id` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`id`);

--
-- Constraints for table `main_timeline`
--
ALTER TABLE `main_timeline`
  ADD CONSTRAINT `main_timeline_player_id_277befbd_fk_main_player_id` FOREIGN KEY (`player_id`) REFERENCES `main_player` (`id`),
  ADD CONSTRAINT `main_timeline_staff_id_82ed2262_fk_main_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `main_staff` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
