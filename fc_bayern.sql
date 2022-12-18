-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2022 at 12:36 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(172, 'Can view mini_ articles', 43, 'view_mini_articles');

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
(2, 'pbkdf2_sha256$390000$hU9yZogGfHRoBaXPNbTJtU$WiPUwhQC8Hvl/y6NUnkBBDVjhPKTgD7ltn3R9PfN5ZE=', '2022-12-16 09:45:53.950572', 1, 'Neerajvibez', 'Neeraj', 'V B', 'neerajvb@gmail.com', 1, 1, '2022-12-16 09:09:59.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(56, '2022-12-18 08:28:33.844042', '8', 'Klaus Augenthaler', 1, '[{\"added\": {}}]', 43, 2);

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
(11, 'main', 'customuser'),
(40, 'main', 'goalscorers'),
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
(23, 'main', 'sponsor'),
(24, 'main', 'staff'),
(25, 'main', 'team'),
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
(20, 'main', '0001_initial', '2022-12-16 09:00:40.111453'),
(21, 'sessions', '0001_initial', '2022-12-16 09:00:40.128326'),
(22, 'main', '0002_news_article_image_url_alter_customuser_profile_pic_and_more', '2022-12-17 01:47:35.575276'),
(23, 'main', '0003_alter_news_article_image_url', '2022-12-17 01:55:47.254110'),
(24, 'main', '0004_alter_news_article_added', '2022-12-17 02:05:23.797584'),
(25, 'main', '0005_delete_bayern_delete_nationality_and_more', '2022-12-17 02:22:24.263354'),
(26, 'main', '0006_alter_player_profile_banner', '2022-12-17 06:00:33.546439'),
(27, 'main', '0007_rename_homeside_match_timeline_is_bayern_player', '2022-12-17 07:16:31.148497'),
(28, 'main', '0008_board_member_alter_staff_profile_pic', '2022-12-17 07:57:40.518190'),
(29, 'main', '0009_alter_board_member_profile_pic', '2022-12-17 08:01:11.820957'),
(30, 'main', '0010_board_member_board_type', '2022-12-17 08:05:49.677775'),
(31, 'main', '0011_trophies', '2022-12-17 09:56:43.840876'),
(32, 'main', '0012_mini_articles_alter_board_member_profile_pic_and_more', '2022-12-17 20:57:35.634361'),
(33, 'main', '0013_rename_board_type_mini_articles_category', '2022-12-17 21:04:49.935424');

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
('6ptim8ys298c0ul1x4293u1rjr1wb8xi', 'e30:1p66kV:cb3rUeqJqBqMcmDMeEei7fjG_qYo3RTcpC843xL0xTQ', '2022-12-30 09:11:23.903579'),
('vz2tbhpf4pibntarcb070r7chjftk0d0', '.eJxVjUEOgyAURO_C2hJRUOyye89gPp9PtRpJAOPCePdi4qLdzpt5c7ABtjQOW6QwTJY9WcWK38wAzrRewH5gfXuOfk1hMvyq8JtG3ntLy-vu_glGiGNeG6UBFVbagDCdaVqtbN21oBqN0rhKloacECjBOuo6Eso1TlApK2oklm2WIoTEnsdZsEQxoffzRNm8-zDTdTqtMcHD-WXxO4WYUa246tn5BQJbS5c:1p6yoE:Dk_PPR_YjHjSuvXp3Y-d4s4Yt1xLQtPsXrInduOKiGI', '2023-01-01 18:54:50.274269');

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
(1, 'billing', 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', 2),
(2, 'shipping', 'NEERAJ', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P. O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_album_image`
--

CREATE TABLE `main_album_image` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `parent_album_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_article_type`
--

CREATE TABLE `main_article_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css_name` varchar(50) DEFAULT NULL,
  `category` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_article_type`
--

INSERT INTO `main_article_type` (`id`, `name`, `css_name`, `category`) VALUES
(1, 'BundesLiga', 'the-league', 2),
(2, 'The Team', 'the-team', 1),
(3, 'Injuries', 'injuries', 3);

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
  `slug` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(9, 15, 6, 6, 3, 24, 20, 3, 23, 8, 1);

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
(3, 'DFB Pokal');

-- --------------------------------------------------------

--
-- Table structure for table `main_customuser`
--

CREATE TABLE `main_customuser` (
  `user_ptr_id` int(11) NOT NULL,
  `name_display` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `content_creator` tinyint(1) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `social_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_customuser`
--

INSERT INTO `main_customuser` (`user_ptr_id`, `name_display`, `profile_pic`, `content_creator`, `slug`, `social_link`) VALUES
(2, 'Neeraj Vibez', 'user_pfps/neeraj_pfp_sqr.png', 0, 'neerajvibez', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_goalscorers`
--

CREATE TABLE `main_goalscorers` (
  `id` bigint(20) NOT NULL,
  `minute` int(11) DEFAULT NULL,
  `name_id` bigint(20) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_goalscorers`
--

INSERT INTO `main_goalscorers` (`id`, `minute`, `name_id`, `match_id`) VALUES
(1, 52, 2, 3),
(2, 38, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `main_match`
--

CREATE TABLE `main_match` (
  `scheduled_match_ptr_id` bigint(20) NOT NULL,
  `scored` int(11) DEFAULT NULL,
  `conceded` int(11) DEFAULT NULL,
  `video_url` varchar(100) DEFAULT NULL,
  `pass_acc` decimal(3,1) DEFAULT NULL,
  `shot_acc` decimal(3,1) DEFAULT NULL,
  `offsides` int(11) DEFAULT NULL,
  `fouls` int(11) DEFAULT NULL,
  `shots` int(11) DEFAULT NULL,
  `shots_target` int(11) DEFAULT NULL,
  `yellows` int(11) DEFAULT NULL,
  `reds` int(11) DEFAULT NULL,
  `corners` int(11) DEFAULT NULL,
  `saves` int(11) DEFAULT NULL,
  `possession` decimal(3,1) DEFAULT NULL,
  `pass_acc_opp` decimal(3,1) DEFAULT NULL,
  `shot_acc_opp` decimal(3,1) DEFAULT NULL,
  `offsides_opp` int(11) DEFAULT NULL,
  `fouls_opp` int(11) DEFAULT NULL,
  `shots_opp` int(11) DEFAULT NULL,
  `shots_target_opp` int(11) DEFAULT NULL,
  `yellows_opp` int(11) DEFAULT NULL,
  `reds_opp` int(11) DEFAULT NULL,
  `corners_opp` int(11) DEFAULT NULL,
  `saves_opp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_match`
--

INSERT INTO `main_match` (`scheduled_match_ptr_id`, `scored`, `conceded`, `video_url`, `pass_acc`, `shot_acc`, `offsides`, `fouls`, `shots`, `shots_target`, `yellows`, `reds`, `corners`, `saves`, `possession`, `pass_acc_opp`, `shot_acc_opp`, `offsides_opp`, `fouls_opp`, `shots_opp`, `shots_target_opp`, `yellows_opp`, `reds_opp`, `corners_opp`, `saves_opp`) VALUES
(3, 2, 0, 'https://www.youtube.com/embed/G7HBU9jkb9k', '89.0', '28.6', 1, 4, 21, 6, 0, 0, 5, 3, '70.0', '70.0', '28.6', 1, 7, 7, 2, 0, 0, 4, 8),
(4, 6, 1, 'https://www.youtube.com/embed/o_yNqoufHvs', '89.0', '47.6', 3, 9, 21, 10, 0, 0, 8, 2, '61.0', '77.0', '33.3', 1, 8, 6, 2, 0, 0, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `main_match_event`
--

CREATE TABLE `main_match_event` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
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
-- Table structure for table `main_match_timeline`
--

CREATE TABLE `main_match_timeline` (
  `id` bigint(20) NOT NULL,
  `is_bayern_player` tinyint(1) NOT NULL,
  `minute` int(11) DEFAULT NULL,
  `who` varchar(100) DEFAULT NULL,
  `name_id` bigint(20) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_match_timeline`
--

INSERT INTO `main_match_timeline` (`id`, `is_bayern_player`, `minute`, `who`, `name_id`, `match_id`) VALUES
(1, 0, 59, 'Jordan Larsson', 4, 3),
(2, 1, 60, 'Matthijs de Ligt', 4, 3),
(3, 0, 65, 'Timothée Kolodziejczak', 4, 3),
(4, 0, 66, 'Sidi Sané', 4, 3),
(5, 1, 72, 'Marcel Sabitzer', 4, 3),
(6, 1, 72, 'Josip Stanišić', 4, 3),
(7, 0, 75, 'Danny Latza', 4, 3),
(8, 0, 75, 'Mehmet-Can Aydın', 4, 3),
(9, 1, 79, 'Paul Wanner', 4, 3),
(10, 1, 80, 'Ryan Gravenberch', 4, 3),
(11, 1, 52, 'Eric Maxim Choupo-Moting', 3, 3),
(12, 1, 38, 'Serge Gnabry', 3, 3);

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
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise`
--

INSERT INTO `main_merchandise` (`id`, `name`, `featured_image`, `price`, `discount`, `description`, `product_information`, `slug`, `category_id`) VALUES
(1, 'FC Bayern ZX Modern Boost Trainers - White', 'shop/shoe1.png', '180.50', 4, 'Maintain a stylish presence. The trainers are more than suitable for a day out watching your team, or when spending time with friends.', '<p>With over 290,000 club members, FC Bayern M&uuml;nchen eV is the sports club boasting the largest number of members in the world. Through their membership, our supporters not only document their identification with the club, but are also part of the large FC Bayern family.</p>\r\n\r\n<p>Your heart also beats for FC Bayern Munich and you would like to be part of the red and white club family? Then apply for&nbsp;<a href=\"https://online.fcbayern.com/ev-mitglied-werden/en#/\">membership</a>&nbsp;now - we look forward to welcoming you!</p>\r\n\r\n<p>You can find all the important information about membership here on this page.</p>\r\n\r\n<p><br />\r\n<strong>Oh, and by the way:</strong></p>\r\n\r\n<p>100% of the income generated by memberships benefits FC Bayern M&uuml;nchen eV, which primarily supports our youth work and our grassroots sports departments.</p>', 'fc-bayern-zx-modern-boost-trainers-white', 2),
(2, 'FC Bayern Third Shirt 2022-23', 'shop/bayern-thrirdkit-2023.jpg', '78.00', 0, 'FC Bayern Munich always have the upper hand and supporters will to with this third shirt from adidas. With subtle and tonal details inspired by the classic Bavarian card game, Schafkopf, and the symbols associated with it, the shirt is a replica of the one worn by the Bayern players during selected matchdays in the Bundesliga and Champions League away from the Allianz Arena. It possesses the patented AEROREADY technology which allows fans to get a cool and dry feel whenever they wear it.', '<p>FC Bayern Munich always have the upper hand and supporters will to with this third shirt from adidas. With subtle and tonal details inspired by the classic Bavarian card game, Schafkopf, and the symbols associated with it, the shirt is a replica of the one worn by the Bayern players during selected matchdays in the Bundesliga and Champions League away from the Allianz Arena. It possesses the patented AEROREADY technology which allows fans to get a cool and dry feel whenever they wear it.</p>\r\n\r\n<h4>&nbsp;</h4>', 'fc-bayern-third-shirt-2022-23', 1);

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
(1, 'shop/shoe1_hBHDpDg.png', 1),
(2, 'shop/fc-bayern-zx-modern-shoe2.jpg', 1),
(3, 'shop/bayern-thrirdkit-2023_6EgDyIj.jpg', 2);

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
(11, '3XL', 1);

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
(2, 'shoes', 1, 0);

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
  `slug` varchar(500) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `excerpt` longtext DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_type_id` bigint(20) NOT NULL,
  `image_url` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_article`
--

INSERT INTO `main_news_article` (`id`, `title`, `image`, `post_content`, `added`, `updated`, `slug`, `views`, `excerpt`, `featured`, `author_id`, `news_type_id`, `image_url`) VALUES
(1, 'Jamal Musiala is the FC Bayern Player of the Month for November 2022', '', '<p>As FC Bayern&#39;s year of competitive matches slowly came to an end, one whirlwind of a player really turned up the heat again: In November,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/jamal-musiala\">Jamal Musiala</a>&nbsp;thrilled the fans of the German record champions once again and secured the award for FC Bayern Player of the Month one more time. The 19-year-old received almost 50 per cent of the vote (49.6%), ahead of&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/eric-maxim-choupo-moting\">Eric Maxim Choupo-Moting</a>&nbsp;(34.9%) and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/serge-gnabry\">Serge Gnabry</a>&nbsp;(5.8%). It&#39;s already the fourth time Musialy has won the award this season - the only time he didn&#39;t get it was in October, when Choupo-Moting managed to edge the fleet-footed sensation into second place.</p>\r\n\r\n<h2>Youngest player to make 100 competitive appearances for Bayern</h2>\r\n\r\n<p><img alt=\"Celebration Jamal Musiala FC Bayern\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1671119065/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Musiala/201108-musiala-jubel-ima.jpg\" style=\"height:2160px; width:3840px\" title=\"An indispensable part of the Bayern team this season: Jamal Musiala celebrates with his teammates.\" /></p>\r\n\r\n<p>An indispensable part of the Bayern team this season: Jamal Musiala celebrates with his teammates.</p>\r\n\r\n<p>The statistics once again spoke clearly in favour of the Germany international: In four competitive games last month, Musiala was directly involved in four goals (two goals, two assists). In the last match of the year&nbsp;<a href=\"https://fcbayern.com/en/matches/profis/bundesliga/2022-2023/fc-schalke-04-fc-bayern-muenchen-12-11-2022/report\">at Schalke (2-0)</a>, the artistic dribbler made his 100th competitive appearance for Bayern - and that at the tender age of just 19 years and 259 days. No other player ever managed to reach this milestone in professional football at such a young age for the German record champions. And anyone who has watched the youngster play can hardly wait for match number 101 in January.</p>', '2022-12-16 22:47:00.000000', '2022-12-18 07:44:26.159286', 'jamal-musiala-is-the-fc-bayern-player-of-the-month-for-november-2022', 7, 'As FC Bayern\'s year of competitive matches slowly came to an end, one whirlwind of a player really turned up the heat again: In November, Jamal Musiala thrilled the fans of the German record champions once again and secured the award for FC Bayern Player of the Month one more time. The 19-year-old received almost 50 per cent of the vote (49.6%), ahead of Eric Maxim Choupo-Moting (34.9%) and Serge Gnabry (5.8%).', 1, 2, 2, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1671118950/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Musiala/201108-musiala-gnabry-jubel-mel.jpg'),
(2, 'Manuel Neuer undergoes successful surgery', '', '<p><a href=\"https://fcbayern.com/de/teams/profis/manuel-neuer\">Manuel Neuer</a>, 36, will not be available to FC Bayern Munich for the rest of the season. The FC Bayern captain suffered a fracture of his lower right leg in a fall while skiing this Friday. He has already undergone successful surgery.</p>\r\n\r\n<p>CEO&nbsp;<a href=\"https://fcbayern.com/de/club/fcb-ag/oliver-kahn\">Oliver Kahn</a>: &quot;The news of Manuel&#39;s injury shocked us all. We will stand by him and support him on his way to his comeback. He will overcome this serious injury and return to the pitch as strong as before.&quot;</p>\r\n\r\n<p>Board Member for Sport:&nbsp;<a href=\"https://fcbayern.com/de/club/fcb-ag/hasan-salihamidzic\">Hasan Salihamidžić</a>: &quot;The fact Manuel had such an accident is terrible. And, of course, all our thoughts are with him. I spoke to him yesterday and today, and the surgery went as well as possible. Manuel will receive all the support he needs. He is a strong personality and he will be back. I wish him all the best, he can rely on FC Bayern!&quot;</p>', '2022-12-10 17:41:00.000000', '2022-12-17 04:01:46.190154', 'manuel-neuer-undergoes-successful-surgery', 0, 'Manuel Neuer, 36, will not be available to FC Bayern Munich for the rest of the season. The FC Bayern captain suffered a fracture of his lower right leg in a fall while skiing this Friday. He has already undergone successful surgery.', 1, 2, 3, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1670670343/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Neuer/220827-neuer-mel.jpg'),
(3, 'Bundesliga 2023/24 outline schedule confirmed', '', '<p>The German Football Association (DFB) executive committee revealed the&nbsp;<a href=\"https://www.dfl.de/en/news/calendar-for-the-2023-24-season/\">outline schedule for the 2023/24 Bundesliga season</a>&nbsp;on Friday. The next Bundesliga campaign begins with the opening match on 18 August 2023, and ends with the final matchday on Saturday 18 May 2024.</p>\r\n\r\n<h2>Only one midweek round</h2>\r\n\r\n<p>The Bundesliga winter break starts after Matchday 16 (19/20 December 2023), which is also the only midweek matchday of the season. The action will recommence in Germany&#39;s top flight on 12 January 2024.</p>\r\n\r\n<p><img alt=\"FC Bayern DFL-Supercup winners 2022\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1670589939/cms/public/images/fcbayern-com/homepage/Saison-22-23/Galerien/Spiele/Supercup-Leipzig-FCB/33-supercup-rbl-fcb-220730-mel.jpg\" style=\"height:2160px; width:3840px\" title=\"Bayern won the 2022 DFL-Supercup against Leipzig - Julian Nagelsmann’s side still need to qualify for the next edition on 12 August 2023.\" /></p>\r\n\r\n<p>Bayern won the 2022 DFL-Supercup against Leipzig - Julian Nagelsmann&rsquo;s side still need to qualify for the next edition on 12 August 2023.</p>\r\n\r\n<p>A week before the league season starts, the Supercup between the Bundesliga champions and DFB Cup winners takes place on Saturday 12 August 2023. The DFB Cup begins on the same weekend (11-14 August) with the first round. The cup ties involving the Supercup participants have therefore been arranged for 26 and 27 September. The DFB Cup final is set to be played one week after the conclusion of the Bundesliga season, on Saturday 25 May 2024 at Berlin&#39;s Olympiastadion.</p>', '2022-12-09 19:21:00.000000', '2022-12-17 04:04:16.713743', 'bundesliga-202324-outline-schedule-confirmed', 1, 'The German Football Association (DFB) executive committee revealed the outline schedule for the 2023/24 Bundesliga season on Friday. The next Bundesliga campaign begins with the opening match on 18 August 2023, and ends with the final matchday on Saturday 18 May 2024.', 1, 2, 1, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1670590369/cms/public/images/fcbayern-com/homepage/platzhalter/pokale/220730-meisterschale-dfb-pokal-supercup-ima.jpg'),
(4, 'Upamecano and Co reach World Cup final with France', '', '<p>Three Bayern players with France are just one step away from reaching football&#39;s summit - but for&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/noussair-mazraoui\">Noussair Mazraoui</a>, the dream of the World Cup final is over. On Wednesday evening, Les Bleus beat Morocco 2-0 in the semi-finals and now have the chance to become the first team since Brazil in 1962 to defend the world title.</p>\r\n\r\n<p><img alt=\"Noussair Mazraoui Morocco\" src=\"https://img.fcbayern.com/image/upload/t_cms-16x9/f_auto/w_1600,c_fill/q_auto/v1671049330/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Nationalspieler/221214-mazraoui-marokko-frankreich-get.jpg\" style=\"height:2160px; width:3840px\" title=\"Noussair Mazraoui started for Morocco and was subbed at half-time.\" /></p>\r\n\r\n<p>Noussair Mazraoui started for Morocco and was subbed at half-time.</p>\r\n\r\n<p>While Mazraoui came off at half-time for the North Africans,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/kingsley-coman\">Kingsley Coman</a>,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/dayot-upamecano\">Dayot Upamecano</a>&nbsp;and&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/benjamin-pavard\">Benjamin Pavard</a>&nbsp;did not feature for the reigning champions. The two teams produced a high-quality encounter with numerous chances at both ends. After Theo Hern&aacute;ndez, brother of&nbsp;<a href=\"https://fcbayern.com/en/news/2022/11/lucas-hernandez-successfully-operated-on\">injured FCB defender</a><a href=\"https://fcbayern.com/de/teams/profis/lucas-hernandez\">Lucas Hern&aacute;ndez</a>, gave France an early lead in the fifth minute, it wasn&#39;t until the 79th minute that the net rippled again through Frankfurt striker Randal Kolo Muani, who had only just come on.</p>\r\n\r\n<h2>Fighting for a third star</h2>\r\n\r\n<p>Didier Deschamps&#39; men now face Argentina in the final at the Lusail Iconic Stadium on Sunday afternoon (16:00 CET). Both teams have been world champions on two occassions and are bidding to get a third star on their shirt. On Saturday (16:00 CET), Mazraoui will go up against Bayern teammate Josip&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/josip-stani%C5%A1i%C4%87\">Stani&scaron;ić</a>&nbsp;and Croatia in the third place playoff.</p>', '2022-12-15 15:11:00.000000', '2022-12-17 04:03:20.107033', 'upamecano-and-co-reach-world-cup-final-with-france', 0, 'Three Bayern players with France are just one step away from reaching football\'s summit - but for Noussair Mazraoui, the dream of the World Cup final is over. On Wednesday evening, Les Bleus beat Morocco 2-0 in the semi-finals and now have the chance to become the first team since Brazil in 1962 to defend the world title.', 1, 2, 2, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1671051371/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Nationalspieler/221214-juebl-upamecano-frankreich-get.jpg'),
(5, 'Stanišić misses out on World Cup final with Croatia', '', '<p>Such a shame, Josip! On Tuesday evening, the Croatian national team featuring Bayern player Josip Stani&scaron;ić missed out on a place in the final of the World Cup in Qatar. In the 3-0 (2-0) semi-final loss to Argentina, the 22-year-old full-back once again watched the game from the bench. The South Americans dominated the first half and deservedly took the lead through Lionel Messi (34&#39;/pen) and Juli&aacute;n &Aacute;lvarez (39&#39;). After the break, the Croatians tried everything they could to turn the game around, but ultimately had no luck. Instead, &Aacute;lvarez (69&#39;) bagged his second goal of the evening with around 20 minutes to go.</p>\r\n\r\n<h2>Regroup and focus on the third place play-off</h2>\r\n\r\n<p>Stani&scaron;ić and Co. now need to prepare for the third place play-off on Saturday (16:00 CET), where Zlatko Dalić&#39;s side will meet the losers of the second semi-final between Morocco and France (Wednesday, 20:00 CET). After finishing in third place at the 1998 World Cup and reaching the final in 2018, the Croats now have a third chance to end a World Cup tournament with a medal.</p>', '2022-12-14 15:05:00.000000', '2022-12-17 04:13:02.198899', 'stanisic-misses-out-on-world-cup-final-with-croatia', 0, 'On Tuesday evening, the Croatian national team featuring Bayern player Josip Stanišić missed out on a place in the final of the World Cup in Qatar. In the 3-0 (2-0) semi-final loss to Argentina, the 22-year-old full-back once again watched the game from the bench.', 1, 2, 2, 'https://img.fcbayern.com/image/upload/t_cms-2x1/f_auto/w_1600,c_fill/q_auto/v1670962050/cms/public/images/fcbayern-com/homepage/Saison-22-23/Profis/Nationalspieler/221213-stanisic-kroatien-ima.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `main_news_tag_player`
--

CREATE TABLE `main_news_tag_player` (
  `id` bigint(20) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `player_tag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_news_tag_staff`
--

CREATE TABLE `main_news_tag_staff` (
  `id` bigint(20) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `staff_tag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_opponent_goalscorers`
--

CREATE TABLE `main_opponent_goalscorers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `minute` int(11) DEFAULT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `order_notes` longtext NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `tax` decimal(4,2) DEFAULT NULL,
  `packaging` decimal(4,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(100) NOT NULL,
  `dispatched` tinyint(1) NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_order`
--

INSERT INTO `main_order` (`id`, `first_name`, `last_name`, `company`, `country`, `address_1`, `address_2`, `postcode`, `city`, `state`, `phone_number`, `email`, `order_notes`, `subtotal`, `tax`, `packaging`, `total_amount`, `payment_method`, `dispatched`, `order_date`, `user_id`) VALUES
(1, 'Neeraj', 'V B', 'CCSIT', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '+917558882214', 'neerajvb@gmail.com', '                                                                    ', '173.28', '0.00', '2.00', '175.28', 'Cash on Delivery', 0, '2022-12-16 10:11:14.195134', 2);

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
(1, 1, '173.28', 1, NULL, 1, 2);

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
  `slug` varchar(500) DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_player`
--

INSERT INTO `main_player` (`id`, `name`, `first_name`, `second_name`, `kit_no`, `nationality`, `profile_pic`, `height`, `weight`, `age`, `past_club`, `born`, `contract_end`, `rating`, `profile_banner`, `biography`, `slug`, `position_id`) VALUES
(2, 'Eric Maxim Choupo-Moting', 'Eric Maxim', 'Choupo-Moting', 13, 'CM', 'players/choupo_moting.png', '1.91', 90, 33, 'Paris Saint Germain', '1989-03-23', '2023-06-30', '7.5', '', '<p>Eric Maxim Choupo-Moting is a Cameroon international who joined FC Bayern in autumn 2020. The striker came to the German record champions from Paris Saint-Germain, but his football beginnings can be traced back to his home city of Hamburg. There he played for Altona 93, FC St. Pauli and Hamburger SV among others. That was followed by spells at Mainz, Schalke and Stoke City in England. He is particularly strong in the duels and in the air. In his very first year at Bayern, he won the Bundesliga as well as the FIFA Club World Cup.</p>\r\n\r\n<p><strong><span style=\"font-size:20px\">Honours:</span><br />\r\nFIFA Club World Cup</strong>&nbsp;2020&nbsp;<strong>UEFA Champions League</strong>&nbsp;finalist 2020&nbsp;<strong>Bundesliga&nbsp;</strong>2021, 2022&nbsp;<strong>DFL Supercup&nbsp;</strong>2021&nbsp;<strong>Ligue 1</strong>&nbsp;2019, 2020&nbsp;<strong>Coupe de France</strong>&nbsp;2020&nbsp;<strong>Troph&eacute;e des Champions</strong>&nbsp;2020&nbsp;<strong>Coupe de la Ligue&nbsp;</strong>2020</p>', 'eric-maxim-choupo-moting', 5),
(3, 'Serge Gnabry', 'Serge', 'Gnabry', 7, 'DE', 'players/serge_gnabry.png', '1.76', 77, 27, 'Arsenal', '1995-07-14', '2023-06-30', '7.1', 'players/gnabry-banner.jpg', '<p>Serge Gnabry joined FC Bayern from Werder Bremen in 2017 and was loaned out to TSG 1899 Hoffenheim for his first year. Since 2018 he&#39;s been an established member of the record champions&#39; squad. He left his home of Stuttgart in 2011 to move to England and Arsenal, where he developed into a professional and also had a loan spell at West Bromwich Albion. He won the sextuple with Bayern in 2020. Gnabry was voted FCB Player of the Season in his first season in 2018/19.</p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Honours:</strong></span><br />\r\n<strong>Bundesliga&nbsp;</strong>2019, 2020, 2021, 2022&nbsp;<strong>DFB Cup&nbsp;</strong>2019, 2020&nbsp;<strong>UEFA Champions League&nbsp;</strong>2020&nbsp;<strong>UEFA Super Cup&nbsp;</strong>2020&nbsp;<strong>FIFA Club World Cup</strong>&nbsp;2020&nbsp;<strong>DFL Supercup&nbsp;</strong>2018, 2020, 2021&nbsp;<strong>UEFA European Under-21 Championship</strong>&nbsp;2017&nbsp;<strong>Olympic Games&nbsp;</strong>silver medal (2016)&nbsp;<strong>Olympic Games&nbsp;</strong>top scorer (2016)&nbsp;<strong>FA Cup&nbsp;</strong>2014, 2015&nbsp;<strong>Community Shield</strong>&nbsp;2014, 2015</p>', 'serge-gnabry', 5);

-- --------------------------------------------------------

--
-- Table structure for table `main_player_image`
--

CREATE TABLE `main_player_image` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `main_position`
--

CREATE TABLE `main_position` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_position`
--

INSERT INTO `main_position` (`id`, `name`) VALUES
(1, 'Goalkeeper'),
(3, 'Defender'),
(4, 'Midfielder'),
(5, 'Forward');

-- --------------------------------------------------------

--
-- Table structure for table `main_scheduled_match`
--

CREATE TABLE `main_scheduled_match` (
  `id` bigint(20) NOT NULL,
  `match_title` varchar(100) DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `at_home` tinyint(1) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `competition_id` bigint(20) NOT NULL,
  `opponent_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_scheduled_match`
--

INSERT INTO `main_scheduled_match` (`id`, `match_title`, `venue`, `at_home`, `slug`, `time`, `summary`, `banner`, `competition_id`, `opponent_id`) VALUES
(1, 'Matchday 16', 'Redbull Arena', 0, 'bundesliga-matchday-16', '2023-01-21 01:00:00.000000', 'Battle for first place', 'banners/Allianz_Arena_wide.jpg', 1, 5),
(2, 'Matchday 15', 'Veltins Arena', 0, 'bundesliga-matchday-15', '2022-11-12 21:00:00.000000', 'Bayern Munich ease into their World Cup break with a win, defeating Schalke 2-0 thanks to goals either side of the interval from Gnabry and Choupo-Moting. The hosts were organised and looked to cling onto a 0-0 headed into the half, but a first-time finish from the Germany international would break the resistance and put Reis’ side in an uncomfortable position. Offering little going forward, Schalke often found it difficult to win back the ball and once again succumbed to the pressure eight minutes shy of the hour, when Choupo-Moting popped up to score against his former side. The two-goal deficit was too much to overcome, as the hosts stay bottom of the table while Bayern Munich temporarily go six points up at the top.', 'banners/Allianz_Arena_wide.jpg', 1, 6),
(3, 'Matchday 15', 'VELTINS-Arena', 0, 'bundesliga-matchday-15', '2022-11-12 22:00:00.000000', 'Bayern Munich ease into their World Cup break with a win, defeating Schalke 2-0 thanks to goals either side of the interval from Gnabry and Choupo-Moting. The hosts were organised and looked to cling onto a 0-0 headed into the half, but a first-time finish from the Germany international would break the resistance and put Reis’ side in an uncomfortable position. Offering little going forward, Schalke often found it difficult to win back the ball and once again succumbed to the pressure eight minutes shy of the hour, when Choupo-Moting popped up to score against his former side. The two-goal deficit was too much to overcome, as the hosts stay bottom of the table while Bayern Munich temporarily go six points up at the top.', 'banners/Allianz_Arena_wide.jpg', 1, 6),
(4, 'Matchday 14', 'Allianz Arena', 1, 'bundesliga-matchday-14', '2022-11-09 21:00:00.000000', 'The first half was eventful to say the least as there were five goals and a missed penalty. Musiala put Bayern ahead in the sixth minute with a composed finish before Jung equalised for Bremen four minutes later. Gnabry won a penalty soon after but Choupo-Moting’s spot-kick was saved well by Pavlenka. Gnabry then scored himself with an outstanding curling effort toward the far post which sparked a flurry of goals as Bayern found the net three times in seven minutes. Goretzka scored Bayern’s third before Gnabry got his second of the game to make it 4-1 before the break. The second period was fairly quiet for the most part but Gnabry completed his hat-trick in the 82nd minute with a cool finish before Tel scored two minutes later with a thunderbolt to end the game 6-1.', 'banners/Allianz_Arena_wide.jpg', 1, 8);

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
(3, '2022/23', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `main_sponsor`
--

CREATE TABLE `main_sponsor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `pokal_side` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_team`
--

INSERT INTO `main_team` (`id`, `name`, `logo`, `color`, `alt_color`, `manager`, `league_side`, `ucl_side`, `pokal_side`) VALUES
(1, 'FC Bayern München', 'logos/bayern_logo.png', 'red', 'white', 'Julian Nagelsmann', 1, 1, 1),
(2, 'SC Freiburg', 'logos/SC_Freiburg_logo.png', 'red', 'white', 'Christian Streich', 1, 0, 0),
(3, 'Union Berlin', 'logos/FC_Union_Berlin_logo.png', 'red', 'white', 'Urs Fischer', 1, 0, 0),
(4, 'Borussia Dortmund', 'logos/dortmund_logo.png', 'yellow', 'black', 'Edin Terzic', 1, 0, 0),
(5, 'RB Leipzig', 'logos/RB_Leipzig_2014_logo.svg.png', 'white', 'red', 'Marco Rose', 1, 0, 0),
(6, 'FC Schalke 04', 'logos/FC_Schalke_04_Logo.svg.png', '#13379c', 'white', 'Thomas Reis', 1, 0, 0),
(7, 'Eintracht Frankfurt', 'logos/1200px-Eintracht_Frankfurt_Logo.png', 'black', 'red', 'Oliver Glasner', 1, 0, 0),
(8, 'SV Werder Bremen', 'logos/SV-Werder-Bremen-Logo.png', '#136d2b', 'white', 'Ole Werner', 1, 0, 0);

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
  ADD KEY `main_goalscorers_name_id_67b48faf_fk_main_player_id` (`name_id`),
  ADD KEY `main_goalscorers_match_id_90bd65b1_fk_main_matc` (`match_id`);

--
-- Indexes for table `main_match`
--
ALTER TABLE `main_match`
  ADD PRIMARY KEY (`scheduled_match_ptr_id`);

--
-- Indexes for table `main_match_event`
--
ALTER TABLE `main_match_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_match_timeline`
--
ALTER TABLE `main_match_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_match_timeline_name_id_6064820f_fk_main_match_event_id` (`name_id`),
  ADD KEY `main_match_timeline_match_id_4bb18fbc_fk_main_matc` (`match_id`);

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
-- Indexes for table `main_news_tag_player`
--
ALTER TABLE `main_news_tag_player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_news_tag_player_news_id_d19b6a92_fk_main_news_article_id` (`news_id`),
  ADD KEY `main_news_tag_player_player_tag_id_26328068_fk_main_player_id` (`player_tag_id`);

--
-- Indexes for table `main_news_tag_staff`
--
ALTER TABLE `main_news_tag_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_news_tag_staff_news_id_39039858_fk_main_news_article_id` (`news_id`),
  ADD KEY `main_news_tag_staff_staff_tag_id_ac828c08_fk_main_staff_id` (`staff_tag_id`);

--
-- Indexes for table `main_opponent_goalscorers`
--
ALTER TABLE `main_opponent_goalscorers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_opponent_goalsc_match_id_4b728741_fk_main_matc` (`match_id`);

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
  ADD KEY `main_player_position_id_eb22868e_fk_main_position_id` (`position_id`),
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
-- Indexes for table `main_position`
--
ALTER TABLE `main_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_scheduled_match`
--
ALTER TABLE `main_scheduled_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_scheduled_match_opponent_id_95d9f59a_fk_main_team_id` (`opponent_id`),
  ADD KEY `main_scheduled_match_competition_id_c4110afb_fk_main_comp` (`competition_id`),
  ADD KEY `main_scheduled_match_slug_c6ed640c` (`slug`);

--
-- Indexes for table `main_season`
--
ALTER TABLE `main_season`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `main_address`
--
ALTER TABLE `main_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_album_image`
--
ALTER TABLE `main_album_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_article_type`
--
ALTER TABLE `main_article_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_board_member`
--
ALTER TABLE `main_board_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_club_album`
--
ALTER TABLE `main_club_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_club_season_stats`
--
ALTER TABLE `main_club_season_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_comment`
--
ALTER TABLE `main_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_competition`
--
ALTER TABLE `main_competition`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_goalscorers`
--
ALTER TABLE `main_goalscorers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_match_event`
--
ALTER TABLE `main_match_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_match_timeline`
--
ALTER TABLE `main_match_timeline`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `main_merchandise`
--
ALTER TABLE `main_merchandise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_merchandise_image`
--
ALTER TABLE `main_merchandise_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_merchandise_information`
--
ALTER TABLE `main_merchandise_information`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_merchandise_size`
--
ALTER TABLE `main_merchandise_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `main_merchandise_type`
--
ALTER TABLE `main_merchandise_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_mini_articles`
--
ALTER TABLE `main_mini_articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_news_article`
--
ALTER TABLE `main_news_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_news_tag_player`
--
ALTER TABLE `main_news_tag_player`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_news_tag_staff`
--
ALTER TABLE `main_news_tag_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_opponent_goalscorers`
--
ALTER TABLE `main_opponent_goalscorers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_order`
--
ALTER TABLE `main_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_order_item`
--
ALTER TABLE `main_order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_player`
--
ALTER TABLE `main_player`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_player_image`
--
ALTER TABLE `main_player_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_player_stats`
--
ALTER TABLE `main_player_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_position`
--
ALTER TABLE `main_position`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_scheduled_match`
--
ALTER TABLE `main_scheduled_match`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_season`
--
ALTER TABLE `main_season`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_sponsor`
--
ALTER TABLE `main_sponsor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_staff`
--
ALTER TABLE `main_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_team`
--
ALTER TABLE `main_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `main_goalscorers_match_id_90bd65b1_fk_main_matc` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`scheduled_match_ptr_id`),
  ADD CONSTRAINT `main_goalscorers_name_id_67b48faf_fk_main_player_id` FOREIGN KEY (`name_id`) REFERENCES `main_player` (`id`);

--
-- Constraints for table `main_match`
--
ALTER TABLE `main_match`
  ADD CONSTRAINT `main_match_scheduled_match_ptr__b6d4ba96_fk_main_sche` FOREIGN KEY (`scheduled_match_ptr_id`) REFERENCES `main_scheduled_match` (`id`);

--
-- Constraints for table `main_match_timeline`
--
ALTER TABLE `main_match_timeline`
  ADD CONSTRAINT `main_match_timeline_match_id_4bb18fbc_fk_main_matc` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`scheduled_match_ptr_id`),
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
-- Constraints for table `main_news_tag_player`
--
ALTER TABLE `main_news_tag_player`
  ADD CONSTRAINT `main_news_tag_player_news_id_d19b6a92_fk_main_news_article_id` FOREIGN KEY (`news_id`) REFERENCES `main_news_article` (`id`),
  ADD CONSTRAINT `main_news_tag_player_player_tag_id_26328068_fk_main_player_id` FOREIGN KEY (`player_tag_id`) REFERENCES `main_player` (`id`);

--
-- Constraints for table `main_news_tag_staff`
--
ALTER TABLE `main_news_tag_staff`
  ADD CONSTRAINT `main_news_tag_staff_news_id_39039858_fk_main_news_article_id` FOREIGN KEY (`news_id`) REFERENCES `main_news_article` (`id`),
  ADD CONSTRAINT `main_news_tag_staff_staff_tag_id_ac828c08_fk_main_staff_id` FOREIGN KEY (`staff_tag_id`) REFERENCES `main_staff` (`id`);

--
-- Constraints for table `main_opponent_goalscorers`
--
ALTER TABLE `main_opponent_goalscorers`
  ADD CONSTRAINT `main_opponent_goalsc_match_id_4b728741_fk_main_matc` FOREIGN KEY (`match_id`) REFERENCES `main_match` (`scheduled_match_ptr_id`);

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
-- Constraints for table `main_player`
--
ALTER TABLE `main_player`
  ADD CONSTRAINT `main_player_position_id_eb22868e_fk_main_position_id` FOREIGN KEY (`position_id`) REFERENCES `main_position` (`id`);

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
-- Constraints for table `main_scheduled_match`
--
ALTER TABLE `main_scheduled_match`
  ADD CONSTRAINT `main_scheduled_match_competition_id_c4110afb_fk_main_comp` FOREIGN KEY (`competition_id`) REFERENCES `main_competition` (`id`),
  ADD CONSTRAINT `main_scheduled_match_opponent_id_95d9f59a_fk_main_team_id` FOREIGN KEY (`opponent_id`) REFERENCES `main_team` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
