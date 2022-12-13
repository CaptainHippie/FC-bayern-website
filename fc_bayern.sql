-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2022 at 08:05 PM
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
(29, 'Can add news_article', 8, 'add_news_article'),
(30, 'Can change news_article', 8, 'change_news_article'),
(31, 'Can delete news_article', 8, 'delete_news_article'),
(32, 'Can view news_article', 8, 'view_news_article'),
(33, 'Can add competition', 9, 'add_competition'),
(34, 'Can change competition', 9, 'change_competition'),
(35, 'Can delete competition', 9, 'delete_competition'),
(36, 'Can view competition', 9, 'view_competition'),
(37, 'Can add match', 10, 'add_match'),
(38, 'Can change match', 10, 'change_match'),
(39, 'Can delete match', 10, 'delete_match'),
(40, 'Can view match', 10, 'view_match'),
(41, 'Can add match_event', 11, 'add_match_event'),
(42, 'Can change match_event', 11, 'change_match_event'),
(43, 'Can delete match_event', 11, 'delete_match_event'),
(44, 'Can view match_event', 11, 'view_match_event'),
(45, 'Can add player', 12, 'add_player'),
(46, 'Can change player', 12, 'change_player'),
(47, 'Can delete player', 12, 'delete_player'),
(48, 'Can view player', 12, 'view_player'),
(49, 'Can add team', 13, 'add_team'),
(50, 'Can change team', 13, 'change_team'),
(51, 'Can delete team', 13, 'delete_team'),
(52, 'Can view team', 13, 'view_team'),
(53, 'Can add match_timeline', 14, 'add_match_timeline'),
(54, 'Can change match_timeline', 14, 'change_match_timeline'),
(55, 'Can delete match_timeline', 14, 'delete_match_timeline'),
(56, 'Can view match_timeline', 14, 'view_match_timeline'),
(57, 'Can add goalscorers', 15, 'add_goalscorers'),
(58, 'Can change goalscorers', 15, 'change_goalscorers'),
(59, 'Can delete goalscorers', 15, 'delete_goalscorers'),
(60, 'Can view goalscorers', 15, 'view_goalscorers'),
(61, 'Can add opponent_ goalscorers', 16, 'add_opponent_goalscorers'),
(62, 'Can change opponent_ goalscorers', 16, 'change_opponent_goalscorers'),
(63, 'Can delete opponent_ goalscorers', 16, 'delete_opponent_goalscorers'),
(64, 'Can view opponent_ goalscorers', 16, 'view_opponent_goalscorers'),
(65, 'Can add nationality', 17, 'add_nationality'),
(66, 'Can change nationality', 17, 'change_nationality'),
(67, 'Can delete nationality', 17, 'delete_nationality'),
(68, 'Can view nationality', 17, 'view_nationality'),
(69, 'Can add season', 18, 'add_season'),
(70, 'Can change season', 18, 'change_season'),
(71, 'Can delete season', 18, 'delete_season'),
(72, 'Can view season', 18, 'view_season'),
(73, 'Can add player_ stats', 19, 'add_player_stats'),
(74, 'Can change player_ stats', 19, 'change_player_stats'),
(75, 'Can delete player_ stats', 19, 'delete_player_stats'),
(76, 'Can view player_ stats', 19, 'view_player_stats'),
(77, 'Can add position', 20, 'add_position'),
(78, 'Can change position', 20, 'change_position'),
(79, 'Can delete position', 20, 'delete_position'),
(80, 'Can view position', 20, 'view_position'),
(81, 'Can add sponsor', 21, 'add_sponsor'),
(82, 'Can change sponsor', 21, 'change_sponsor'),
(83, 'Can delete sponsor', 21, 'delete_sponsor'),
(84, 'Can view sponsor', 21, 'view_sponsor'),
(85, 'Can add player_ image', 22, 'add_player_image'),
(86, 'Can change player_ image', 22, 'change_player_image'),
(87, 'Can delete player_ image', 22, 'delete_player_image'),
(88, 'Can view player_ image', 22, 'view_player_image'),
(89, 'Can add club_season_stats', 23, 'add_club_season_stats'),
(90, 'Can change club_season_stats', 23, 'change_club_season_stats'),
(91, 'Can delete club_season_stats', 23, 'delete_club_season_stats'),
(92, 'Can view club_season_stats', 23, 'view_club_season_stats'),
(93, 'Can add staff', 24, 'add_staff'),
(94, 'Can change staff', 24, 'change_staff'),
(95, 'Can delete staff', 24, 'delete_staff'),
(96, 'Can view staff', 24, 'view_staff'),
(97, 'Can add club_ album', 25, 'add_club_album'),
(98, 'Can change club_ album', 25, 'change_club_album'),
(99, 'Can delete club_ album', 25, 'delete_club_album'),
(100, 'Can view club_ album', 25, 'view_club_album'),
(101, 'Can add album_ image', 26, 'add_album_image'),
(102, 'Can change album_ image', 26, 'change_album_image'),
(103, 'Can delete album_ image', 26, 'delete_album_image'),
(104, 'Can view album_ image', 26, 'view_album_image'),
(105, 'Can add news_ tag_ player', 27, 'add_news_tag_player'),
(106, 'Can change news_ tag_ player', 27, 'change_news_tag_player'),
(107, 'Can delete news_ tag_ player', 27, 'delete_news_tag_player'),
(108, 'Can view news_ tag_ player', 27, 'view_news_tag_player'),
(109, 'Can add news_ tag_ staff', 28, 'add_news_tag_staff'),
(110, 'Can change news_ tag_ staff', 28, 'change_news_tag_staff'),
(111, 'Can delete news_ tag_ staff', 28, 'delete_news_tag_staff'),
(112, 'Can view news_ tag_ staff', 28, 'view_news_tag_staff'),
(113, 'Can add user', 29, 'add_customuser'),
(114, 'Can change user', 29, 'change_customuser'),
(115, 'Can delete user', 29, 'delete_customuser'),
(116, 'Can view user', 29, 'view_customuser'),
(117, 'Can add address', 30, 'add_address'),
(118, 'Can change address', 30, 'change_address'),
(119, 'Can delete address', 30, 'delete_address'),
(120, 'Can view address', 30, 'view_address'),
(121, 'Can add merchandise_ type', 31, 'add_merchandise_type'),
(122, 'Can change merchandise_ type', 31, 'change_merchandise_type'),
(123, 'Can delete merchandise_ type', 31, 'delete_merchandise_type'),
(124, 'Can view merchandise_ type', 31, 'view_merchandise_type'),
(125, 'Can add merchandise', 32, 'add_merchandise'),
(126, 'Can change merchandise', 32, 'change_merchandise'),
(127, 'Can delete merchandise', 32, 'delete_merchandise'),
(128, 'Can view merchandise', 32, 'view_merchandise'),
(129, 'Can add merchandise_ image', 33, 'add_merchandise_image'),
(130, 'Can change merchandise_ image', 33, 'change_merchandise_image'),
(131, 'Can delete merchandise_ image', 33, 'delete_merchandise_image'),
(132, 'Can view merchandise_ image', 33, 'view_merchandise_image'),
(133, 'Can add merchandise_ size', 34, 'add_merchandise_size'),
(134, 'Can change merchandise_ size', 34, 'change_merchandise_size'),
(135, 'Can delete merchandise_ size', 34, 'delete_merchandise_size'),
(136, 'Can view merchandise_ size', 34, 'view_merchandise_size'),
(137, 'Can add merchandise_ information', 35, 'add_merchandise_information'),
(138, 'Can change merchandise_ information', 35, 'change_merchandise_information'),
(139, 'Can delete merchandise_ information', 35, 'delete_merchandise_information'),
(140, 'Can view merchandise_ information', 35, 'view_merchandise_information'),
(141, 'Can add order_ item', 36, 'add_order_item'),
(142, 'Can change order_ item', 36, 'change_order_item'),
(143, 'Can delete order_ item', 36, 'delete_order_item'),
(144, 'Can view order_ item', 36, 'view_order_item'),
(145, 'Can add order', 37, 'add_order'),
(146, 'Can change order', 37, 'change_order'),
(147, 'Can delete order', 37, 'delete_order'),
(148, 'Can view order', 37, 'view_order'),
(149, 'Can add comment', 38, 'add_comment'),
(150, 'Can change comment', 38, 'change_comment'),
(151, 'Can delete comment', 38, 'delete_comment'),
(152, 'Can view comment', 38, 'view_comment'),
(153, 'Can add bayern', 39, 'add_bayern'),
(154, 'Can change bayern', 39, 'change_bayern'),
(155, 'Can delete bayern', 39, 'delete_bayern'),
(156, 'Can view bayern', 39, 'view_bayern'),
(157, 'Can add scheduled_ match', 40, 'add_scheduled_match'),
(158, 'Can change scheduled_ match', 40, 'change_scheduled_match'),
(159, 'Can delete scheduled_ match', 40, 'delete_scheduled_match'),
(160, 'Can view scheduled_ match', 40, 'view_scheduled_match');

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
(1, 'pbkdf2_sha256$390000$Filhsh2zi7tJT0ilPW7VZS$xAaMDbjAgDHd4PkXWoUQTHep1CxZijcCobnuW9LUzP0=', '2022-11-21 04:53:40.978669', 1, 'neeraj', '', '', 'neerajvb@gmail.com', 1, 1, '2022-11-11 14:19:48.543566'),
(2, 'pbkdf2_sha256$390000$KmXXVTw1hcpOX8bq0xwLmW$xhG/Vg/w0rsWj352vIbqaZWY2XOTYTVAFns2M487eR8=', NULL, 0, 'neerajvibez', 'Neeraj', 'Vibez', 'neerajvb2@gmail.com', 0, 1, '2022-11-11 15:25:38.000000'),
(3, 'pbkdf2_sha256$390000$1CXLpq8uMQSiH6aw2tjAB8$3EfceLftgFpTQz5yHWn7tXD3K8+5QWrwBOxPlG/sy54=', '2022-12-07 10:28:33.905406', 0, 'neerajvibez3', 'Neeraj', 'V B 3', 'neerajvb3@gmail.com', 1, 1, '2022-11-28 10:26:15.000000'),
(4, 'pbkdf2_sha256$390000$fiPBPQOflT6OybTt0EBCj6$gvW+9zoQshJOrqL0Ia9vvlfqqC6FlLqUNbA117PVKMc=', '2022-12-07 10:32:30.880276', 1, 'Vibez', '', '', 'neerajvb4@gmail.com', 1, 1, '2022-12-07 10:31:12.490845');

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
(1, '2022-11-11 14:28:19.023206', '1', 'Hasan Salihamidžić', 1, '[{\"added\": {}}]', 24, 1),
(2, '2022-11-11 14:31:36.198396', '2', 'Julian Nagelsmann', 1, '[{\"added\": {}}]', 24, 1),
(3, '2022-11-11 14:33:16.064003', '1', 'Goalkeeper', 1, '[{\"added\": {}}]', 20, 1),
(4, '2022-11-11 14:33:23.569638', '2', 'Midfielder', 1, '[{\"added\": {}}]', 20, 1),
(5, '2022-11-11 14:33:50.646535', '2', 'Midfielder', 3, '', 20, 1),
(6, '2022-11-11 14:33:56.898384', '3', 'Defender', 1, '[{\"added\": {}}]', 20, 1),
(7, '2022-11-11 14:34:01.434102', '4', 'Midfielder', 1, '[{\"added\": {}}]', 20, 1),
(8, '2022-11-11 14:34:05.967150', '5', 'Forward', 1, '[{\"added\": {}}]', 20, 1),
(9, '2022-11-11 14:35:46.012333', '1', 'Eric Maxim Choupo-Moting', 1, '[{\"added\": {}}]', 12, 1),
(10, '2022-11-11 14:39:22.851451', '2', 'Jamal Musiala', 1, '[{\"added\": {}}]', 12, 1),
(11, '2022-11-11 14:42:11.105560', '3', 'Serge Gnabry', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (1)\"}}, {\"added\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (2)\"}}, {\"added\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (3)\"}}, {\"added\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (4)\"}}]', 12, 1),
(12, '2022-11-11 14:45:12.680603', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"fields\": [\"Profile banner\"]}}]', 12, 1),
(13, '2022-11-11 14:46:58.576968', '3', 'Serge Gnabry', 2, '[{\"changed\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (1)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (2)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (3)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"player_ image\", \"object\": \"Player_Image object (4)\", \"fields\": [\"Image\"]}}]', 12, 1),
(14, '2022-11-11 14:48:18.554930', '1', '2020/21', 1, '[{\"added\": {}}]', 18, 1),
(15, '2022-11-11 14:48:27.963308', '2', '2021/22', 1, '[{\"added\": {}}]', 18, 1),
(16, '2022-11-11 14:48:33.643017', '3', '2022/23', 1, '[{\"added\": {}}]', 18, 1),
(17, '2022-11-11 14:51:28.746803', '1', 'BundesLiga', 1, '[{\"added\": {}}]', 9, 1),
(18, '2022-11-11 14:51:32.531049', '1', 'FC Bayern München', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"FC Bayern M\\u00fcnchenBundesLiga\"}}]', 13, 1),
(19, '2022-11-11 14:52:40.075242', '2', 'SC Freiburg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"SC FreiburgBundesLiga\"}}]', 13, 1),
(20, '2022-11-11 14:54:41.136225', '3', 'Union Berlin', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"Union BerlinBundesLiga\"}}]', 13, 1),
(21, '2022-11-11 14:55:55.202489', '4', 'Borussia Dortmund', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"Borussia DortmundBundesLiga\"}}]', 13, 1),
(22, '2022-11-11 14:57:16.038168', '1', 'BundesLiga', 1, '[{\"added\": {}}]', 7, 1),
(23, '2022-11-11 14:59:06.452810', '1', '5 facts on the Bundesliga game at Hertha BSC', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"news_ tag_ player\", \"object\": \"News_Tag_Player object (1)\"}}, {\"added\": {\"name\": \"news_ tag_ player\", \"object\": \"News_Tag_Player object (2)\"}}, {\"added\": {\"name\": \"news_ tag_ staff\", \"object\": \"News_Tag_Staff object (1)\"}}]', 8, 1),
(24, '2022-11-11 15:03:42.326304', '1', '5 facts on the Bundesliga game at Hertha BSC', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 8, 1),
(25, '2022-11-11 15:05:24.256148', '1', '5 facts on the Bundesliga game at Hertha BSC', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 8, 1),
(26, '2022-11-11 15:09:41.528942', '2', 'The Team', 1, '[{\"added\": {}}]', 7, 1),
(27, '2022-11-11 15:14:43.736874', '2', 'Gnabry in seventh heaven', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"news_ tag_ player\", \"object\": \"News_Tag_Player object (3)\"}}, {\"added\": {\"name\": \"news_ tag_ staff\", \"object\": \"News_Tag_Staff object (2)\"}}]', 8, 1),
(28, '2022-11-11 15:17:56.260342', '1', 'Goal', 1, '[{\"added\": {}}]', 11, 1),
(29, '2022-11-11 15:18:01.252156', '2', 'Red Card', 1, '[{\"added\": {}}]', 11, 1),
(30, '2022-11-11 15:18:06.302287', '3', 'Substitute', 1, '[{\"added\": {}}]', 11, 1),
(31, '2022-11-11 15:18:18.513418', '4', 'Yellow Card', 1, '[{\"added\": {}}]', 11, 1),
(32, '2022-11-11 15:19:01.844349', '2', 'UEFA Champions League', 1, '[{\"added\": {}}]', 9, 1),
(33, '2022-11-11 15:19:13.975718', '3', 'DFB Pokal', 1, '[{\"added\": {}}]', 9, 1),
(34, '2022-11-11 15:21:32.930981', '2', 'Gnabry in seventh heaven', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(35, '2022-11-11 15:26:21.096580', '2', 'neerajvb2@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 29, 1),
(36, '2022-11-11 15:38:34.519636', '1', 'Neeraj V Bbilling', 1, '[{\"added\": {}}]', 30, 1),
(37, '2022-11-21 06:43:33.025499', '1', 'kit', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (1)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (2)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (3)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (4)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (5)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (6)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (7)\"}}]', 31, 1),
(38, '2022-11-21 06:47:23.976391', '2', 'shoes', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (8)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (9)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (10)\"}}, {\"added\": {\"name\": \"merchandise_ size\", \"object\": \"Merchandise_Size object (11)\"}}]', 31, 1),
(39, '2022-11-21 06:52:20.812531', '1', 'FC Bayern ZX Modern Boost Trainers - White', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (1)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (1)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (2)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (3)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (4)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (5)\"}}, {\"added\": {\"name\": \"merchandise_ information\", \"object\": \"Merchandise_Information object (6)\"}}]', 32, 1),
(40, '2022-11-21 09:18:47.557224', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[]', 32, 1),
(41, '2022-11-21 09:24:49.469610', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Featured image\"]}}]', 32, 1),
(42, '2022-11-21 09:40:14.859263', '1', 'dgsdgs', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 32, 1),
(43, '2022-11-21 09:41:06.417081', '1', 'FC Bayern ZX Modern', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 32, 1),
(44, '2022-11-21 09:42:48.204907', '1', 'FC Bayern ZX Modern Boost Trainers - White FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 32, 1),
(45, '2022-11-21 09:43:25.805997', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 32, 1),
(46, '2022-11-21 20:15:27.885023', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (1)\", \"fields\": [\"Image url\"]}}]', 32, 1),
(47, '2022-11-21 20:19:06.691864', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (2)\"}}]', 32, 1),
(48, '2022-11-21 20:30:05.392191', '2', 'shoes', 2, '[{\"changed\": {\"fields\": [\"Size option\"]}}]', 31, 1),
(49, '2022-11-21 20:55:49.615553', '2', 'shoes', 2, '[{\"changed\": {\"fields\": [\"Size option\"]}}]', 31, 1),
(50, '2022-11-21 20:57:08.153928', '2', 'shoes', 2, '[{\"changed\": {\"fields\": [\"Size option\", \"Unique player\"]}}]', 31, 1),
(51, '2022-11-22 05:18:53.802634', '2', 'shoes', 2, '[{\"changed\": {\"fields\": [\"Unique player\"]}}]', 31, 1),
(52, '2022-11-22 05:19:30.806270', '2', 'shoes', 2, '[{\"changed\": {\"fields\": [\"Size option\"]}}]', 31, 1),
(53, '2022-11-22 05:19:47.325294', '2', 'shoes', 2, '[{\"changed\": {\"fields\": [\"Size option\", \"Unique player\"]}}]', 31, 1),
(54, '2022-11-22 06:17:07.893700', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 32, 1),
(55, '2022-11-22 06:30:03.152642', '1', 'FC Bayern ZX Modern Boost Trainers - White', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 32, 1),
(56, '2022-11-22 07:16:42.829679', '2', 'FC Bayern Third Shirt 2022-23', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"merchandise_ image\", \"object\": \"Merchandise_Image object (3)\"}}]', 32, 1),
(57, '2022-11-22 08:50:37.436827', '2', 'FC Bayern Third Shirt 2022-23', 2, '[{\"changed\": {\"fields\": [\"Discount\"]}}]', 32, 1),
(58, '2022-11-28 10:27:40.107999', '3', 'Neeraj Vibez', 2, '[{\"changed\": {\"fields\": [\"Name display\", \"Slug\"]}}]', 29, 1),
(59, '2022-11-28 16:57:45.285868', '3', 'neerajvb3@gmail.com-billing', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern ZX Modern Boost Trainers - White2\"}}, {\"added\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern Third Shirt 2022-231\"}}]', 37, 1),
(60, '2022-11-29 08:55:50.010448', '3', 'neerajvb3@gmail.com-billing', 3, '', 30, 1),
(61, '2022-11-29 10:00:39.692087', '1', 'neerajvb3@gmail.com-billing', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 30, 1),
(62, '2022-11-29 10:32:36.439745', '1', 'neerajvb3@gmail.com-billing', 2, '[{\"changed\": {\"fields\": [\"State\"]}}]', 30, 1),
(63, '2022-11-29 16:31:07.638361', '1', 'neerajvb3@gmail.com-billing', 2, '[{\"changed\": {\"fields\": [\"Address 1\", \"Address 2\"]}}]', 30, 1),
(64, '2022-11-29 17:25:29.534827', '4', 'Neeraj Vibez-425.01', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern ZX Modern Boost Trainers - White2\"}}, {\"added\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern Third Shirt 2022-231\"}}]', 37, 1),
(65, '2022-11-29 17:33:45.684312', '1', 'neerajvb3@gmail.com-billing', 3, '', 30, 1),
(66, '2022-11-29 17:36:40.921758', '1', 'Neeraj Vibez-436.79', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern ZX Modern Boost Trainers - White2\"}}, {\"added\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern Third Shirt 2022-231\"}}]', 37, 1),
(67, '2022-11-29 18:18:23.575767', '1', 'Neeraj Vibez-436.79', 2, '[{\"changed\": {\"fields\": [\"Dispatched\"]}}]', 37, 1),
(68, '2022-11-29 18:21:05.890482', '1', 'Neeraj Vibez-436.79', 2, '[{\"changed\": {\"fields\": [\"Dispatched\"]}}]', 37, 1),
(69, '2022-11-30 07:12:39.020549', '5', 'neerajvb3@gmail.com-shipping', 3, '', 30, 1),
(70, '2022-11-30 09:59:35.672859', '1', 'Neeraj Vibez-436.79', 2, '[{\"changed\": {\"fields\": [\"Dispatched\"]}}]', 37, 1),
(71, '2022-12-02 05:44:16.834091', '2', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(72, '2022-12-02 06:32:25.702759', '4', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(73, '2022-12-02 06:32:25.710412', '3', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(74, '2022-12-02 06:32:58.316392', '5', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(75, '2022-12-04 15:42:03.620970', '9', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(76, '2022-12-04 15:42:03.627621', '8', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(77, '2022-12-04 15:42:03.629130', '7', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(78, '2022-12-04 15:42:03.631198', '6', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(79, '2022-12-04 15:44:42.888398', '10', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(80, '2022-12-04 15:47:58.961226', '12', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(81, '2022-12-04 15:47:58.969059', '11', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(82, '2022-12-04 16:03:26.462947', '15', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(83, '2022-12-04 16:03:26.464483', '14', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(84, '2022-12-04 16:03:26.465842', '13', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(85, '2022-12-04 16:08:06.105201', '17', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(86, '2022-12-04 16:08:06.107526', '16', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(87, '2022-12-04 16:09:10.938973', '18', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(88, '2022-12-04 16:15:14.897077', '22', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(89, '2022-12-04 16:15:14.904263', '21', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(90, '2022-12-04 16:15:14.905712', '20', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(91, '2022-12-04 16:15:14.907032', '19', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(92, '2022-12-04 16:16:11.278314', '23', 'Neeraj Vibez-565.28', 3, '', 37, 1),
(93, '2022-12-04 16:17:25.548314', '2', 'shoes', 2, '[{\"changed\": {\"fields\": [\"Unique player\"]}}]', 31, 1),
(94, '2022-12-04 16:34:30.387685', '1', 'kit', 2, '[{\"changed\": {\"fields\": [\"Size option\"]}}]', 31, 1),
(95, '2022-12-04 16:37:17.013017', '24', 'Neeraj Vibez-599.84', 3, '', 37, 1),
(96, '2022-12-04 16:40:11.740573', '27', 'Neeraj Vibez-175.28', 3, '', 37, 1),
(97, '2022-12-04 16:40:24.180244', '26', 'Neeraj Vibez-175.28', 3, '', 37, 1),
(98, '2022-12-04 17:00:03.147782', '1', 'Neeraj Vibez-436.79', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern ZX Modern Boost Trainers - White2\", \"fields\": [\"Size\"]}}, {\"changed\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern Third Shirt 2022-231\", \"fields\": [\"Player\"]}}]', 37, 1),
(99, '2022-12-04 17:00:26.601189', '1', 'Neeraj Vibez-436.79', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern Third Shirt 2022-231\", \"fields\": [\"Player\"]}}]', 37, 1),
(100, '2022-12-04 17:00:41.025155', '1', 'Neeraj Vibez-436.79', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern Third Shirt 2022-231\", \"fields\": [\"Size\"]}}]', 37, 1),
(101, '2022-12-04 17:01:06.009521', '1', 'Neeraj Vibez-436.79', 2, '[{\"changed\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern ZX Modern Boost Trainers - White2\", \"fields\": [\"Size\"]}}, {\"changed\": {\"name\": \"order_ item\", \"object\": \"neerajvb3@gmail.comFC Bayern Third Shirt 2022-231\", \"fields\": [\"Size\"]}}]', 37, 1),
(102, '2022-12-04 17:10:43.991464', '29', 'Neeraj Vibez-175.28', 3, '', 37, 1),
(103, '2022-12-04 17:10:43.993418', '28', 'Neeraj Vibez-175.28', 3, '', 37, 1),
(104, '2022-12-07 06:02:09.801026', '1', 'neerajvb3@gmail.com_5 facts on the Bundesliga game at Hertha BSC', 1, '[{\"added\": {}}]', 38, 1),
(105, '2022-12-07 09:01:05.296206', '1', 'Bouna Sarr back running', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"news_ tag_ player\", \"object\": \"News_Tag_Player object (1)\"}}, {\"added\": {\"name\": \"news_ tag_ staff\", \"object\": \"News_Tag_Staff object (1)\"}}]', 8, 1),
(106, '2022-12-07 09:03:10.235575', '2', 'Choupo-Moting and Cameroon out of World Cup despite beating Brazil', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"news_ tag_ player\", \"object\": \"News_Tag_Player object (2)\"}}, {\"added\": {\"name\": \"news_ tag_ staff\", \"object\": \"News_Tag_Staff object (2)\"}}]', 8, 1),
(107, '2022-12-07 09:11:49.170309', '3', 'Neeraj Vibez', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 29, 1),
(108, '2022-12-07 09:18:34.752096', '3', 'Neeraj Vibez', 2, '[{\"changed\": {\"fields\": [\"Social link\"]}}]', 29, 1),
(109, '2022-12-07 09:21:57.535314', '1', 'Bouna Sarr back running', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 8, 1),
(110, '2022-12-07 09:22:39.301045', '1', 'Bouna Sarr back running', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 8, 1),
(111, '2022-12-07 09:23:33.614340', '2', 'Choupo-Moting and Cameroon out of World Cup despite beating Brazil', 2, '[{\"changed\": {\"fields\": [\"Post content\"]}}]', 8, 1),
(112, '2022-12-07 09:26:37.471297', '1', 'neerajvb3@gmail.com_Bouna Sarr back running', 1, '[{\"added\": {}}]', 38, 1),
(113, '2022-12-07 09:26:57.511900', '2', 'neerajvibez_Bouna Sarr back running', 1, '[{\"added\": {}}]', 38, 1),
(114, '2022-12-07 09:27:26.279431', '3', 'neerajvb3@gmail.com_Bouna Sarr back running', 1, '[{\"added\": {}}]', 38, 1),
(115, '2022-12-07 17:03:26.880513', '4', 'neerajvibez3_Bouna Sarr back running', 3, '', 38, 4),
(116, '2022-12-07 18:31:26.869969', '3', 'Injuries', 1, '[{\"added\": {}}]', 7, 4),
(117, '2022-12-07 18:50:35.093630', '2', 'Choupo-Moting and Cameroon out of World Cup despite beating Brazil', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 8, 4),
(118, '2022-12-07 19:13:28.870334', '3', 'Injuries', 2, '[{\"changed\": {\"fields\": [\"Css name\"]}}]', 7, 4),
(119, '2022-12-07 19:13:42.558155', '2', 'The Team', 2, '[{\"changed\": {\"fields\": [\"Css name\"]}}]', 7, 4),
(120, '2022-12-07 19:13:59.389817', '1', 'BundesLiga', 2, '[{\"changed\": {\"fields\": [\"Css name\"]}}]', 7, 4),
(121, '2022-12-07 19:27:52.184277', '1', 'Bouna Sarr back running', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 8, 4),
(122, '2022-12-07 19:28:26.002155', '2', 'Choupo-Moting and Cameroon out of World Cup despite beating Brazil', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 8, 4),
(123, '2022-12-07 19:28:39.941278', '2', 'Choupo-Moting and Cameroon out of World Cup despite beating Brazil', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 8, 4),
(124, '2022-12-07 20:11:39.085782', '1', 'Bouna Sarr back running', 2, '[{\"changed\": {\"fields\": [\"News type\"]}}]', 8, 4),
(125, '2022-12-07 20:15:43.305135', '3', 'Injuries', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 7, 4),
(126, '2022-12-07 20:15:49.599616', '1', 'BundesLiga', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 7, 4),
(127, '2022-12-08 05:21:29.227337', '1', 'Borussia Dortmund_1', 1, '[{\"added\": {}}]', 10, 4),
(128, '2022-12-08 05:31:25.006710', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 10, 4),
(129, '2022-12-08 05:37:17.273145', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Match title\"]}}]', 10, 4),
(130, '2022-12-08 05:43:34.375489', '1', 'Borussia Dortmund_1', 2, '[{\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (1)\"}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (2)\"}}, {\"added\": {\"name\": \"goalscorers\", \"object\": \"Goalscorers object (3)\"}}]', 10, 4),
(131, '2022-12-08 05:50:53.126748', '1', 'Borussia Dortmund_1', 2, '[{\"added\": {\"name\": \"opponent_ goalscorers\", \"object\": \"Opponent_Goalscorers object (1)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (1)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (2)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (3)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (4)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (5)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (6)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (7)\"}}]', 10, 4),
(132, '2022-12-08 06:14:10.810696', '1', 'Borussia Dortmund_1', 2, '[{\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (8)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (9)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (10)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (11)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (12)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (13)\"}}, {\"added\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (14)\"}}]', 10, 4),
(133, '2022-12-08 06:14:48.083104', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"name\": \"match_timeline\", \"object\": \"Match_timeline object (14)\", \"fields\": [\"Name\"]}}]', 10, 4),
(134, '2022-12-08 08:36:35.898396', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(135, '2022-12-08 08:46:21.191825', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Scored\", \"At home\"]}}]', 10, 4),
(136, '2022-12-08 08:46:56.519665', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Conceded\"]}}]', 10, 4),
(137, '2022-12-08 08:47:13.389959', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Scored\", \"Conceded\"]}}]', 10, 4),
(138, '2022-12-08 08:50:01.287822', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(139, '2022-12-08 08:50:20.105747', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Scored\"]}}]', 10, 4),
(140, '2022-12-08 08:50:30.728518', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Conceded\"]}}]', 10, 4),
(141, '2022-12-08 08:50:46.545374', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"Scored\", \"Conceded\", \"At home\"]}}]', 10, 4),
(142, '2022-12-08 08:51:16.861617', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(143, '2022-12-08 08:51:29.758871', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(144, '2022-12-08 09:30:44.440151', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(145, '2022-12-08 09:31:08.733883', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(146, '2022-12-08 18:07:00.956158', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(147, '2022-12-08 18:07:25.376548', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(148, '2022-12-08 18:07:36.132363', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(149, '2022-12-08 18:20:10.432089', '1', 'Borussia Dortmund_1', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(150, '2022-12-08 19:20:34.933697', '1', 'FC Bayern München', 1, '[{\"added\": {}}]', 39, 4),
(151, '2022-12-08 20:03:28.207650', '1', 'FC Bayern Munchen', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 13, 4),
(152, '2022-12-08 20:04:39.268557', '1', 'FC Bayern München', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 13, 4),
(153, '2022-12-09 06:22:32.245668', '5', 'RB Leipzig', 1, '[{\"added\": {}}]', 13, 4),
(154, '2022-12-09 06:23:04.989276', '1', 'RB Leipzig_1', 1, '[{\"added\": {}}]', 40, 4),
(155, '2022-12-09 06:37:28.565355', '6', 'FC Schalke 04', 1, '[{\"added\": {}}]', 13, 4),
(156, '2022-12-09 06:37:32.538083', '2', 'FC Schalke 04_2', 1, '[{\"added\": {}}]', 10, 4),
(157, '2022-12-09 06:42:05.810932', '2', 'FC Schalke 04_2', 2, '[{\"changed\": {\"fields\": [\"At home\"]}}]', 10, 4),
(158, '2022-12-09 07:10:11.269420', '5', 'RB Leipzig', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 13, 4),
(159, '2022-12-09 08:13:01.526146', '1', 'FC Bayern München', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}, {\"changed\": {\"name\": \"club_season_stats\", \"object\": \"FC Bayern M\\u00fcnchenBundesLiga\", \"fields\": [\"Played\", \"Wins\", \"Scored\", \"Conceded\", \"Goal diff\", \"Points\"]}}]', 13, 4),
(160, '2022-12-09 08:13:59.776256', '5', 'RB Leipzig', 2, '[{\"added\": {\"name\": \"club_season_stats\", \"object\": \"RB LeipzigBundesLiga\"}}]', 13, 4),
(161, '2022-12-09 14:58:22.897945', '2', 'SC Freiburg', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}, {\"changed\": {\"name\": \"club_season_stats\", \"object\": \"SC FreiburgBundesLiga\", \"fields\": [\"Played\", \"Wins\", \"Loss\", \"Draw\", \"Scored\", \"Conceded\", \"Goal diff\", \"Points\"]}}]', 13, 4),
(162, '2022-12-09 14:58:47.535922', '2', 'SC Freiburg', 2, '[{\"changed\": {\"fields\": [\"Manager\"]}}]', 13, 4),
(163, '2022-12-09 14:59:07.352770', '5', 'RB Leipzig', 2, '[{\"changed\": {\"fields\": [\"Manager\"]}}]', 13, 4),
(164, '2022-12-09 15:20:04.703587', '7', 'Eintracht Frankfurt', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"Eintracht FrankfurtBundesLiga\"}}]', 13, 4),
(165, '2022-12-09 15:21:09.281619', '7', 'Eintracht Frankfurt', 2, '[{\"changed\": {\"name\": \"club_season_stats\", \"object\": \"Eintracht FrankfurtBundesLiga\", \"fields\": [\"Loss\", \"Draw\", \"Scored\", \"Conceded\", \"Goal diff\", \"Points\"]}}]', 13, 4),
(166, '2022-12-09 15:22:34.108481', '7', 'Eintracht Frankfurt', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 13, 4),
(167, '2022-12-09 15:24:35.792667', '3', 'Union Berlin', 2, '[{\"changed\": {\"fields\": [\"Manager\"]}}, {\"changed\": {\"name\": \"club_season_stats\", \"object\": \"Union BerlinBundesLiga\", \"fields\": [\"Played\", \"Loss\", \"Draw\", \"Scored\", \"Conceded\", \"Goal diff\", \"Points\"]}}]', 13, 4),
(168, '2022-12-09 15:30:52.273235', '3', 'Union Berlin', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 13, 4),
(169, '2022-12-09 15:32:44.594656', '4', 'Borussia Dortmund', 2, '[{\"changed\": {\"name\": \"club_season_stats\", \"object\": \"Borussia DortmundBundesLiga\", \"fields\": [\"Played\", \"Loss\", \"Draw\", \"Scored\", \"Conceded\", \"Goal diff\"]}}]', 13, 4),
(170, '2022-12-09 15:33:04.943130', '7', 'Eintracht Frankfurt', 2, '[{\"changed\": {\"name\": \"club_season_stats\", \"object\": \"Eintracht FrankfurtBundesLiga\", \"fields\": [\"Loss\", \"Draw\"]}}]', 13, 4),
(171, '2022-12-09 15:35:33.958665', '6', 'FC Schalke 04', 2, '[{\"changed\": {\"fields\": [\"Manager\"]}}, {\"added\": {\"name\": \"club_season_stats\", \"object\": \"FC Schalke 04BundesLiga\"}}]', 13, 4),
(172, '2022-12-09 15:36:00.719381', '5', 'RB Leipzig', 2, '[{\"changed\": {\"name\": \"club_season_stats\", \"object\": \"RB LeipzigBundesLiga\", \"fields\": [\"Loss\", \"Draw\"]}}]', 13, 4),
(173, '2022-12-09 15:36:30.701602', '3', 'Union Berlin', 2, '[{\"changed\": {\"name\": \"club_season_stats\", \"object\": \"Union BerlinBundesLiga\", \"fields\": [\"Loss\", \"Draw\"]}}]', 13, 4),
(174, '2022-12-09 15:37:06.134765', '1', 'FC Bayern München', 2, '[{\"changed\": {\"name\": \"club_season_stats\", \"object\": \"FC Bayern M\\u00fcnchenBundesLiga\", \"fields\": [\"Loss\", \"Draw\"]}}]', 13, 4),
(175, '2022-12-10 16:10:41.336565', '1', 'RB Leipzig_1', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 40, 4),
(176, '2022-12-10 16:45:10.896486', '1', 'RB Leipzig_1', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 40, 4),
(177, '2022-12-10 18:40:56.291117', '2', 'Choupo-Moting and Cameroon out of World Cup despite beating Brazil', 2, '[{\"changed\": {\"fields\": [\"Author\"]}}]', 8, 4);

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
(30, 'main', 'address'),
(26, 'main', 'album_image'),
(7, 'main', 'article_type'),
(39, 'main', 'bayern'),
(25, 'main', 'club_album'),
(23, 'main', 'club_season_stats'),
(38, 'main', 'comment'),
(9, 'main', 'competition'),
(29, 'main', 'customuser'),
(15, 'main', 'goalscorers'),
(10, 'main', 'match'),
(11, 'main', 'match_event'),
(14, 'main', 'match_timeline'),
(32, 'main', 'merchandise'),
(33, 'main', 'merchandise_image'),
(35, 'main', 'merchandise_information'),
(34, 'main', 'merchandise_size'),
(31, 'main', 'merchandise_type'),
(17, 'main', 'nationality'),
(8, 'main', 'news_article'),
(27, 'main', 'news_tag_player'),
(28, 'main', 'news_tag_staff'),
(16, 'main', 'opponent_goalscorers'),
(37, 'main', 'order'),
(36, 'main', 'order_item'),
(12, 'main', 'player'),
(22, 'main', 'player_image'),
(19, 'main', 'player_stats'),
(20, 'main', 'position'),
(40, 'main', 'scheduled_match'),
(18, 'main', 'season'),
(21, 'main', 'sponsor'),
(24, 'main', 'staff'),
(13, 'main', 'team'),
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
(1, 'contenttypes', '0001_initial', '2022-11-11 14:18:19.733117'),
(2, 'auth', '0001_initial', '2022-11-11 14:18:19.907463'),
(3, 'admin', '0001_initial', '2022-11-11 14:18:19.956111'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-11 14:18:19.965657'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-11 14:18:19.973951'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-11 14:18:20.005512'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-11 14:18:20.026528'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-11 14:18:20.040858'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-11 14:18:20.049199'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-11 14:18:20.070165'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-11 14:18:20.072097'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-11 14:18:20.084833'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-11 14:18:20.101892'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-11 14:18:20.117575'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-11 14:18:20.133571'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-11 14:18:20.143350'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-11 14:18:20.158128'),
(18, 'main', '0001_initial', '2022-11-11 14:18:20.190376'),
(19, 'main', '0002_news_article_author', '2022-11-11 14:18:20.203195'),
(20, 'main', '0003_news_article_slug', '2022-11-11 14:18:20.229789'),
(21, 'main', '0004_news_article_added_news_article_updated', '2022-11-11 14:18:20.264467'),
(22, 'main', '0005_competition_match_match_event_player_team_and_more', '2022-11-11 14:18:20.438766'),
(23, 'main', '0006_match_corners_opp_match_fouls_opp_match_offsides_opp_and_more', '2022-11-11 14:18:20.583155'),
(24, 'main', '0007_match_time_team_color_team_manager_and_more', '2022-11-11 14:18:21.100000'),
(25, 'main', '0008_team_alt_color', '2022-11-11 14:18:21.109916'),
(26, 'main', '0009_opponent_goalscorers', '2022-11-11 14:18:21.136099'),
(27, 'main', '0010_match_summary_match_video_url_and_more', '2022-11-11 14:18:21.178704'),
(28, 'main', '0011_alter_match_timeline_homeside', '2022-11-11 14:18:21.199569'),
(29, 'main', '0012_alter_match_summary', '2022-11-11 14:18:21.219786'),
(30, 'main', '0013_alter_match_timeline_homeside', '2022-11-11 14:18:21.241582'),
(31, 'main', '0014_alter_team_logo', '2022-11-11 14:18:21.247254'),
(32, 'main', '0015_match_banner', '2022-11-11 14:18:21.265880'),
(33, 'main', '0016_news_article_views', '2022-11-11 14:18:21.281421'),
(34, 'main', '0017_nationality_season_player_age_player_biography_and_more', '2022-11-11 14:18:21.502801'),
(35, 'main', '0018_alter_player_position', '2022-11-11 14:18:21.513707'),
(36, 'main', '0019_position_remove_player_position', '2022-11-11 14:18:21.542373'),
(37, 'main', '0020_player_position', '2022-11-11 14:18:21.575125'),
(38, 'main', '0021_alter_player_height', '2022-11-11 14:18:21.598727'),
(39, 'main', '0022_player_first_name_player_second_name', '2022-11-11 14:18:21.631015'),
(40, 'main', '0023_player_rating', '2022-11-11 14:18:21.648402'),
(41, 'main', '0024_player_kit_no', '2022-11-11 14:18:21.668675'),
(42, 'main', '0025_alter_player_stats_ppg_alter_player_stats_rating_and_more', '2022-11-11 14:18:21.828413'),
(43, 'main', '0026_season_start_year', '2022-11-11 14:18:21.841795'),
(44, 'main', '0027_alter_player_stats_apps', '2022-11-11 14:18:21.887445'),
(45, 'main', '0028_alter_player_stats_apps_alter_player_stats_assists_and_more', '2022-11-11 14:18:22.115874'),
(46, 'main', '0029_sponsor', '2022-11-11 14:18:22.127821'),
(47, 'main', '0030_sponsor_image_url', '2022-11-11 14:18:22.140594'),
(48, 'main', '0031_remove_sponsor_image_url', '2022-11-11 14:18:22.152822'),
(49, 'main', '0032_player_image', '2022-11-11 14:18:22.191819'),
(50, 'main', '0033_news_article_excerpt_news_tag', '2022-11-11 14:18:22.241638'),
(51, 'main', '0034_alter_news_article_excerpt', '2022-11-11 14:18:22.258831'),
(52, 'main', '0035_alter_player_profile_pic', '2022-11-11 14:18:22.266064'),
(53, 'main', '0036_player_stats_slug', '2022-11-11 14:18:22.293953'),
(54, 'main', '0037_remove_player_stats_slug_player_slug', '2022-11-11 14:18:22.337622'),
(55, 'main', '0038_coach', '2022-11-11 14:18:22.388426'),
(56, 'main', '0039_remove_coach_position', '2022-11-11 14:18:22.467017'),
(57, 'main', '0040_coach_short_name_alter_coach_designation', '2022-11-11 14:18:22.499034'),
(58, 'main', '0041_team_league_side_team_pokal_side_team_ucl_side', '2022-11-11 14:18:22.545259'),
(59, 'main', '0042_club_season_stats', '2022-11-11 14:18:22.555577'),
(60, 'main', '0043_remove_club_season_stats_name_club_season_stats_club', '2022-11-11 14:18:22.599763'),
(61, 'main', '0044_club_season_stats_conceded_and_more', '2022-11-11 14:18:22.639494'),
(62, 'main', '0045_club_season_stats_competition', '2022-11-11 14:18:22.665731'),
(63, 'main', '0046_rename_coach_staff', '2022-11-11 14:18:22.697638'),
(64, 'main', '0047_club_album_album_image', '2022-11-11 14:18:22.726178'),
(65, 'main', '0048_club_album_slug', '2022-11-11 14:18:22.749989'),
(66, 'main', '0049_news_tag_staff_tag_alter_news_tag_player_tag', '2022-11-11 14:18:22.847484'),
(67, 'main', '0050_rename_news_tag_news_tag_player_and_more', '2022-11-11 14:18:22.887505'),
(68, 'main', '0051_remove_news_tag_player_staff_tag_news_tag_staff', '2022-11-11 14:18:22.968913'),
(69, 'main', '0052_customuser', '2022-11-11 14:18:22.992375'),
(70, 'main', '0053_customuser_slug', '2022-11-11 14:18:23.019238'),
(71, 'main', '0054_remove_customuser_fname_remove_customuser_sname', '2022-11-11 14:18:23.043924'),
(72, 'main', '0055_address', '2022-11-11 14:18:23.075889'),
(73, 'main', '0056_address_city_address_email_address_phone_number_and_more', '2022-11-11 14:18:23.158210'),
(74, 'main', '0057_alter_staff_nationality', '2022-11-11 14:18:23.221662'),
(75, 'main', '0058_alter_player_nationality', '2022-11-11 14:18:23.303631'),
(76, 'sessions', '0001_initial', '2022-11-11 14:18:23.322385'),
(77, 'main', '0059_alter_address_phone_number', '2022-11-11 15:35:57.161991'),
(78, 'main', '0002_merchandise_merchandise_type_merchandise_size_and_more', '2022-11-21 06:21:19.533953'),
(79, 'main', '0003_remove_merchandise_size_size', '2022-11-21 06:40:43.386804'),
(80, 'main', '0004_remove_merchandise_type_size_merchandise_size_size', '2022-11-21 06:41:47.686158'),
(81, 'main', '0005_alter_merchandise_featured_image', '2022-11-21 09:24:33.224097'),
(82, 'main', '0006_alter_merchandise_price', '2022-11-21 09:53:03.752850'),
(83, 'main', '0007_alter_merchandise_image_image_url', '2022-11-21 20:14:55.380713'),
(84, 'main', '0008_merchandise_type_size_option', '2022-11-21 20:29:52.116172'),
(85, 'main', '0009_order_order_item', '2022-11-28 16:45:31.073040'),
(86, 'main', '0010_alter_order_item_player_alter_order_item_size', '2022-11-28 16:50:54.257170'),
(87, 'main', '0011_address_state', '2022-11-29 10:15:11.840758'),
(88, 'main', '0012_remove_address_address_address_address_1_and_more', '2022-11-29 16:27:28.407158'),
(89, 'main', '0013_remove_order_item_parent_order_and_more', '2022-11-29 17:32:49.320201'),
(90, 'main', '0014_order_order_item', '2022-11-29 17:33:16.869672'),
(91, 'main', '0015_comment', '2022-12-07 06:01:06.746728'),
(92, 'main', '0016_customuser_content_creator_customuser_profile_pic', '2022-12-07 06:23:33.636291'),
(93, 'main', '0002_news_article_news_tag_staff_news_tag_player_comment', '2022-12-07 08:52:26.203485'),
(94, 'main', '0003_customuser_social_link', '2022-12-07 09:17:09.491021'),
(95, 'main', '0004_news_article_featured', '2022-12-07 18:44:23.127979'),
(96, 'main', '0005_article_type_css_name', '2022-12-07 19:12:47.191665'),
(97, 'main', '0006_article_type_category', '2022-12-07 20:15:20.423811'),
(98, 'main', '0007_match_match_title_alter_match_corners_and_more', '2022-12-08 05:36:49.583212'),
(99, 'main', '0008_bayern', '2022-12-08 19:12:53.872953'),
(100, 'main', '0002_match_event_scheduled_match_match_and_more', '2022-12-09 06:16:56.993467');

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
('232nzsqp9zata1nx4rrqxaavpynvb5dq', '.eJxVjksKwjAYhO-StYQktsa4dN8zhP-RR7U00LQr8e6mUFBnOfPNMC_hYVuz32pY_MjiJrQ4_XoI9AzzHvAD5lQklXldRpQ7Io-0yqFwmO4H-zeQoebWRueQ-7ON2gV0gSHSBZRi6iNGNgRgNGuH2tgmDay4s8p27kpoiG0bnUpKgb9XzfsDlEA_hQ:1otVwK:DEi9lKByAqIwqmZHjPvjE_VGN7vnsR-YktA5bumKdzE', '2022-11-25 15:27:32.873165'),
('4w9mi4ix8vej7sz1sa32kp2dwxx09rs1', '.eJxVjDsOwjAQRO_iGllek2CWkp4zRPuxcQDZUpxUiLuTSClgynlv5m0GWuY8LC1Ow6jmYsAcfjsmecayAX1QuVcrtczTyHZT7E6bvVWNr-vu_h1kanldMyJrfwwJMDJGpSQnck6lT5zUC5EHBWTwYQ2QOu2CCx2ehb1oMJ8vGgE47Q:1otUt0:RuSErBUMqP9ZfggGdp3tk47UEf6a0IkUZj8uLetDIyw', '2022-11-25 14:20:02.935539'),
('bho7ohjze6c9715d6xosihlbrn5qvoun', '.eJxVjksOgyAYhO_C2hBALcVl9z2D-R-gtkYS0JXx7sXEpO0sZ76ZzC562Nax37JP_cSiE1pUvx4Cvf1yBvyCZYiS4rKmCeWJyCvN8hnZz4-L_RsYIY-ljc4ht7UN2nl0niHQDZRiagMGNgRgNGuH2tgiDay4sco27k5oiG0ZJUir6PajEnMcBs_f0_XxARsBQtI:1p2rKK:a7tpRwyKpT4LDt7NesPGUmNeutX6pWkQw96vG_VP_fg', '2022-12-21 10:06:56.315216'),
('c0ln9toh11toh5w5f760nbwo19dkge6n', '.eJxVjssKgzAURP8lawmJhpDrsvt-g9xHmtiKAR8r8d9VENruhpkzw2yqw3XJ3TrHqetFtcqp6tcj5E8cr0DeOKaiuYzL1JO-EH2ns34WicPjZv8GMs75ajcOjZNgMDgKkXxjEWrrLVhw7APhizwLGk9OAE_NobaMAgEBjDlHGadFtdteqaGkFOV7utkP0SJCDQ:1p56Mm:FLscetCOGtw3swarBDfDvphwA2Ej8jnY9cvGiUeUvU4', '2022-12-27 14:34:44.136750');

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
  `user_id` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `postcode` bigint(20) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `address_1` varchar(200) DEFAULT NULL,
  `address_2` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_address`
--

INSERT INTO `main_address` (`id`, `address_type`, `first_name`, `last_name`, `company`, `country`, `user_id`, `city`, `email`, `phone_number`, `postcode`, `state`, `address_1`, `address_2`) VALUES
(4, 'billing', 'Neeraj', 'Vibez', 'ccsit', 'IN', 3, 'Thrissur', 'neerajvb3@gmail.com', '7558882214', 680567, 'Kerala', 'Vennikkal House', 'P.O. Valapad'),
(6, 'shipping', 'Neeraj', 'VVB', 'None', 'GN', 3, 'Thrissur', 'neerajvb@gmail.com', '7558882214', 680567, 'Kerala', 'Vennikkal House, P.O. Valapad', '');

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
-- Table structure for table `main_bayern`
--

CREATE TABLE `main_bayern` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `alt_color` varchar(50) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `fb_link` varchar(100) DEFAULT NULL,
  `insta_link` varchar(100) DEFAULT NULL,
  `twitter_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_bayern`
--

INSERT INTO `main_bayern` (`id`, `full_name`, `logo`, `color`, `alt_color`, `manager`, `fb_link`, `insta_link`, `twitter_link`) VALUES
(1, 'FC Bayern München', 'logos/bayern_logo.png', 'rgb(220, 5, 45)', '#000e29', 'Julian Nagelsmann', 'https://www.facebook.com/fcbayern.en', 'https://www.instagram.com/fcbayern/', 'https://twitter.com/FCBayern');

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
  `club_id` bigint(20) DEFAULT NULL,
  `conceded` int(11) DEFAULT NULL,
  `goal_diff` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `scored` int(11) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_club_season_stats`
--

INSERT INTO `main_club_season_stats` (`id`, `played`, `wins`, `loss`, `draw`, `club_id`, `conceded`, `goal_diff`, `points`, `scored`, `competition_id`) VALUES
(1, 15, 10, 1, 4, 1, 13, 36, 34, 49, 1),
(2, 15, 9, 3, 3, 2, 17, 8, 30, 25, 1),
(3, 15, 8, 4, 3, 3, 20, 4, 27, 24, 1),
(4, 15, 8, 6, 1, 4, 21, 4, 25, 25, 1),
(5, 15, 8, 3, 4, 5, 21, 9, 28, 30, 1),
(6, 15, 8, 4, 3, 7, 24, 8, 27, 32, 1),
(7, 15, 2, 10, 3, 6, 32, -19, 9, 13, 1);

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
(1, '2022-12-07 09:26:37.469946', 'Hehehheheheh Spain Out', 3, NULL, 1),
(2, '2022-12-07 09:26:57.510607', 'Hahaha serves them right', 2, 1, 1),
(3, '2022-12-07 09:27:26.278049', 'Germany will win it next time', 3, NULL, 1),
(5, '2022-12-07 17:05:19.558051', 'For sure', 3, 3, 1),
(6, '2022-12-07 17:09:52.333357', 'Waiting for next match!', 3, NULL, 1),
(7, '2022-12-07 18:03:53.272009', 'Love to see it!', 3, 3, 1),
(8, '2022-12-07 21:06:57.239640', 'ChupoGoat', 3, NULL, 2);

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
  `slug` varchar(500) DEFAULT NULL,
  `content_creator` tinyint(1) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `social_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_customuser`
--

INSERT INTO `main_customuser` (`user_ptr_id`, `name_display`, `slug`, `content_creator`, `profile_pic`, `social_link`) VALUES
(2, 'Neeraj V B', 'neerajvb2', 0, 'user_pfps/default.jpg', NULL),
(3, 'Neeraj Vibez', 'neerajvb3', 0, 'user_pfps/neeraj_pfp_sqr.png', 'https://www.instagram.com/neerajvibez/');

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
(2, 2, 0, 'https://www.youtube.com/embed/G7HBU9jkb9k', '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0, '70.0', '0.0', '0.0', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_match_event`
--

CREATE TABLE `main_match_event` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_match_timeline`
--

CREATE TABLE `main_match_timeline` (
  `id` bigint(20) NOT NULL,
  `homeside` tinyint(1) NOT NULL,
  `minute` int(11) DEFAULT NULL,
  `who` varchar(100) DEFAULT NULL,
  `name_id` bigint(20) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'FC Bayern ZX Modern Boost Trainers - White', 'shop/shoe1.png', '180.50', 4, 'Maintain a stylish presence. The trainers are more than suitable for a day out watching your team, or when spending time with friends.', '<ul>\r\n	<li>Product ID: 12082296</li>\r\n	<li>Rubber outsole</li>\r\n	<li>Textile upper</li>\r\n	<li>Boost midsole</li>\r\n	<li>Lace closure</li>\r\n</ul>', 'fc-bayern-zx-modern-boost-trainers-white', 2),
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

--
-- Dumping data for table `main_merchandise_information`
--

INSERT INTO `main_merchandise_information` (`id`, `specification`, `detail`, `product_id`) VALUES
(1, 'Brand', 'Adidas', 1),
(2, 'Product ID', '12082296', 1),
(3, 'Outsole', 'Rubber', 1),
(4, 'Upper', 'Textile', 1),
(5, 'Midsole', 'Boost', 1),
(6, 'Closure', 'Lace', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise_size`
--

CREATE TABLE `main_merchandise_size` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise_size`
--

INSERT INTO `main_merchandise_size` (`id`, `product_id`, `size`) VALUES
(1, 1, 'XS'),
(2, 1, 'S'),
(3, 1, 'M'),
(4, 1, 'L'),
(5, 1, 'XL'),
(6, 1, 'XXL'),
(7, 1, '3XL'),
(8, 2, '8'),
(9, 2, '9'),
(10, 2, '10'),
(11, 2, '11');

-- --------------------------------------------------------

--
-- Table structure for table `main_merchandise_type`
--

CREATE TABLE `main_merchandise_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unique_player` tinyint(1) DEFAULT NULL,
  `size_option` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_merchandise_type`
--

INSERT INTO `main_merchandise_type` (`id`, `name`, `unique_player`, `size_option`) VALUES
(1, 'kit', 1, 1),
(2, 'shoes', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_nationality`
--

CREATE TABLE `main_nationality` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `flag` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_news_article`
--

CREATE TABLE `main_news_article` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `post_content` longtext NOT NULL,
  `added` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `excerpt` longtext DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_type_id` bigint(20) NOT NULL,
  `featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_article`
--

INSERT INTO `main_news_article` (`id`, `title`, `image`, `post_content`, `added`, `updated`, `slug`, `views`, `excerpt`, `author_id`, `news_type_id`, `featured`) VALUES
(1, 'Bouna Sarr back running', 'uploads/221206-sarr-lauftraining-mel.png', '<p>Welcome back! Bayern right-back&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/bouna-sarr\">Bouna Sarr</a>&nbsp;finally felt the grass under his feet again on Tuesday. Nearly three months after undergoing an operation on his left knee in mid-September, the 30-year-old was able to start running again at S&auml;bener Stra&szlig;e. The Africa Cup of Nations winner will now continue his rehabilitation in the coming weeks as he works towards his comeback.</p>', '2022-12-07 09:01:05.289669', '2022-12-10 15:22:09.040735', 'bouna-sarr-back-running', 73, 'Welcome back! Bayern right-back Bouna Sarr finally felt the grass under his feet again on Tuesday. Nearly three months after undergoing an operation on his left knee in mid-September, the 30-year-old was able to start running again at Säbener Straße. The Africa Cup of Nations winner will now continue his rehabilitation in the coming weeks as he works towards his comeback.', 3, 3, 1),
(2, 'Choupo-Moting and Cameroon out of World Cup despite beating Brazil', 'uploads/221203-choupo-moting-brasilien-ima.png', '<p>Despite a surprise 1-0 win over favourites Brazil in the final group game,&nbsp;<a href=\"https://fcbayern.com/en/teams/first-team/eric-maxim-choupo-moting\">Eric Maxim Choupo-Moting</a>&nbsp;and Cameroon have been knocked out of the World Cup. A 3-2 win for Switzerland against Serbia in the other fixture in Group G meant that they followed the five-time winners through to the last 16 in Qatar. The Bayern striker played the full 90 minutes for Cameroon, who snatched a winner in the 92nd minute through Vincent Aboubakar. However, it wasn&#39;t enough as the Africans fell two points short in third place.</p>', '2022-12-07 09:03:10.231656', '2022-12-10 18:40:56.288652', 'choupo-moting-and-cameroon-out-of-world-cup-despite-beating-brazil', 68, 'Despite a surprise 1-0 win over favourites Brazil in the final group game, Eric Maxim Choupo-Moting and Cameroon have been knocked out of the World Cup. A 3-2 win for Switzerland against Serbia in the other fixture in Group G meant that they followed the five-time winners through to the last 16 in Qatar. The Bayern striker played the full 90 minutes for Cameroon, who snatched a winner in the 92nd minute through Vincent Aboubakar. However, it wasn\'t enough as the Africans fell two points short in third place.', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_news_tag_player`
--

CREATE TABLE `main_news_tag_player` (
  `id` bigint(20) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `player_tag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_tag_player`
--

INSERT INTO `main_news_tag_player` (`id`, `news_id`, `player_tag_id`) VALUES
(1, 1, 3),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_news_tag_staff`
--

CREATE TABLE `main_news_tag_staff` (
  `id` bigint(20) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `staff_tag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_news_tag_staff`
--

INSERT INTO `main_news_tag_staff` (`id`, `news_id`, `staff_tag_id`) VALUES
(1, 1, 2),
(2, 2, 1);

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
(1, 'Neeraj', 'V B', 'ccsit peramangalam', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '7558882214', 'neerajvb3@gmail.com', 'whatever, idk', '424.56', '4.23', '8.00', '436.79', 'Cash on Delivery', 1, '2022-11-29 17:36:40.917230', 3),
(25, 'Neeraj', 'Vibez', 'ccsit', 'IN', 'Vennikkal House', 'P.O. Valapad', 680567, 'Thrissur', 'Kerala', '7558882214', 'neerajvb3@gmail.com', '                                                                    ', '597.84', '0.00', '2.00', '599.84', 'Cash on Delivery', 0, '2022-12-04 16:37:29.046088', 3);

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
(1, 2, '346.56', 1, NULL, 1, 3),
(2, 1, '78.00', 1, 1, 2, 6),
(7, 3, '173.28', 25, NULL, 1, 10),
(8, 1, '78.00', 25, 2, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `main_player`
--

CREATE TABLE `main_player` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `born` date DEFAULT NULL,
  `contract_end` date DEFAULT NULL,
  `height` decimal(3,2) DEFAULT NULL,
  `past_club` varchar(100) DEFAULT NULL,
  `profile_banner` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `nationality` varchar(2) DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `second_name` varchar(100) DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `kit_no` int(11) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_player`
--

INSERT INTO `main_player` (`id`, `name`, `age`, `biography`, `born`, `contract_end`, `height`, `past_club`, `profile_banner`, `profile_pic`, `weight`, `nationality`, `position_id`, `first_name`, `second_name`, `rating`, `kit_no`, `slug`) VALUES
(1, 'Eric Maxim Choupo-Moting', 33, '<p>Eric Maxim Choupo-Moting is a Cameroon international who joined FC Bayern in autumn 2020. The striker came to the German record champions from Paris Saint-Germain, but his football beginnings can be traced back to his home city of Hamburg. There he played for Altona 93, FC St. Pauli and Hamburger SV among others. That was followed by spells at Mainz, Schalke and Stoke City in England. He is particularly strong in the duels and in the air. In his very first year at Bayern, he won the Bundesliga as well as the FIFA Club World Cup.</p>\r\n\r\n<p><strong>HONOURS</strong><br />\r\n<strong>FIFA Club World Cup</strong>&nbsp;2020&nbsp;<strong>UEFA Champions League</strong>&nbsp;finalist 2020&nbsp;<strong>Bundesliga&nbsp;</strong>2021, 2022&nbsp;<strong>DFL Supercup&amp;nbsp;</strong>2021&nbsp;<strong>Ligue 1</strong>&nbsp;2019, 2020&nbsp;<strong>Coupe de France</strong>&nbsp;2020&nbsp;<strong>Troph&eacute;e des Champions</strong>&nbsp;2020&nbsp;<strong>Coupe de la Ligue&nbsp;</strong>2020</p>', '2022-11-06', '2022-11-06', '1.91', 'Paris Saint Germain', 'players/default_banner.jpg', 'players/choupo_moting.png', 90, 'CM', 1, 'Eric Maxim', 'Choupo-Moting', '7.8', 13, 'eric-maxim-choupo-moting'),
(2, 'Jamal Musiala', 19, '<p>Jamal Musiala initially moved from Chelsea&#39;s youth team to the FC Bayern youth set-up in the summer of 2019. After just a few months there, the forward was called up to the senior squad and, at the age of 17, progressed to become the youngest ever Bundesliga debutant, Bundesliga goalscorer and Champions League goalscorer within just a few months.</p>\r\n\r\n<h2>Allegiance pledged to Germany</h2>\r\n\r\n<p>Musiala was born in Stuttgart but spent most of his youth in England. He played for both German and English youth teams including Chelsea and Southampton. In February 2021, he pledged his allegiance to the senior Germany team and shortly afterwards, at the age of 18 years and 117 days became the youngest international in DFB tournament history at EURO 2020.</p>\r\n\r\n<p><strong>HONOURS</strong></p>\r\n\r\n<p><strong>Bundesliga</strong>&nbsp;2020, 2021&nbsp;<strong>FIFA Club World Cup</strong>&nbsp;2020</p>\r\n\r\n<ol start=\"3\">\r\n	<li><strong>Liga</strong></li>\r\n</ol>\r\n\r\n<p>2020&nbsp;<strong>UEFA Super Cup</strong>&nbsp;2020&nbsp;<strong>DFL Supercup</strong>&nbsp;2020, 2021</p>', '2003-02-26', '2026-06-30', '1.84', 'Bayern U17s', 'players/default_banner.jpg', 'players/jamal_musiala.png', 72, 'DE', 4, 'Jamal', 'Musiala', '8.2', 42, 'jamal-musiala'),
(3, 'Serge Gnabry', 26, '<p>Serge Gnabry joined FC Bayern from Werder Bremen in 2017 and was loaned out to TSG 1899 Hoffenheim for his first year. Since 2018 he&#39;s been an established member of the record champions&#39; squad. He left his home of Stuttgart in 2011 to move to England and Arsenal, where he developed into a professional and also had a loan spell at West Bromwich Albion. He won the sextuple with Bayern in 2020. Gnabry was voted FCB Player of the Season in his first season in 2018/19.</p>\r\n\r\n<p><strong>HONOURS :<br />\r\nBundesliga&nbsp;</strong>2019, 2020, 2021, 2022&nbsp;<strong>DFB Cup&nbsp;</strong>2019, 2020&nbsp;<strong>UEFA Champions League&nbsp;</strong>2020&nbsp;<strong>UEFA Super Cup </strong>2020&nbsp;<strong>FIFA Club World Cup</strong>&nbsp;2020&nbsp;<strong>DFL Supercup&nbsp;</strong>2018, 2020, 2021&nbsp;<strong>UEFA European Under-21 Championship</strong>&nbsp;2017&nbsp;<strong>Olympic Games&nbsp;</strong>silver medal (2016)&nbsp;<strong>Olympic Games&nbsp;</strong>top scorer (2016)&nbsp;<strong>FA Cup&nbsp;</strong>2014, 2015&nbsp;<strong>Community Shield</strong>&nbsp;2014, 2015</p>', '1995-07-14', '2026-06-30', '1.76', 'Arsenal', 'players/gnabry-banner.jpg', 'players/serge_gnabry.png', 77, 'DE', 5, 'Serge', 'Gnabry', '7.1', 7, 'serge-gnabry');

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

--
-- Dumping data for table `main_player_image`
--

INSERT INTO `main_player_image` (`id`, `image`, `date`, `description`, `player_id`) VALUES
(1, 'gallery/player/skysports-serge-gnabry-bayern-munich_4930800.jpg', '2022-11-11', 'skysports pic', 3),
(2, 'gallery/player/gnabry-1.jpg', '2022-11-11', 'braided hair', 3),
(3, 'gallery/player/serge-gnabry-bayern-munich-2019-20_1homawpof0s41q42nyhmdbhyq.jpg', '2022-11-11', 'against tottenham', 3),
(4, 'gallery/player/cover.jpg', '2022-11-11', 'bayern and germany', 3);

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
(2, 'Matchday 15', 'Veltins Arena', 0, 'bundesliga-matchday-15', '2022-11-12 21:00:00.000000', 'Bayern Munich ease into their World Cup break with a win, defeating Schalke 2-0 thanks to goals either side of the interval from Gnabry and Choupo-Moting. The hosts were organised and looked to cling onto a 0-0 headed into the half, but a first-time finish from the Germany international would break the resistance and put Reis’ side in an uncomfortable position. Offering little going forward, Schalke often found it difficult to win back the ball and once again succumbed to the pressure eight minutes shy of the hour, when Choupo-Moting popped up to score against his former side. The two-goal deficit was too much to overcome, as the hosts stay bottom of the table while Bayern Munich temporarily go six points up at the top.', 'banners/Allianz_Arena_wide.jpg', 1, 6);

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
  `profile_pic` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `previous_post` varchar(100) DEFAULT NULL,
  `born` date DEFAULT NULL,
  `contract_start` date DEFAULT NULL,
  `contract_end` date DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `nationality` varchar(2) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_staff`
--

INSERT INTO `main_staff` (`id`, `name`, `designation`, `profile_pic`, `age`, `previous_post`, `born`, `contract_start`, `contract_end`, `biography`, `slug`, `nationality`, `short_name`) VALUES
(1, 'Hasan Salihamidžić', 'Executive Sporting Director', 'players/player-placeholder-380x570.jpg', 45, 'FC Bayern(as player)', '1977-01-01', '2022-11-08', '2022-11-08', '<p>Hasan Salihamidžić has been board member for sport of the FC Bayern M&uuml;nchen AG since 1 July 2020. Previously, the former Bayern player worked as the club&#39;s sporting director for three years.</p>\r\n\r\n<p>Salihamidžić was born on 1 January 1977 in Jablanica, Bosnia and Herzegovina. As a player, he won everything there was to win in domestic and European club football with FC Bayern: Six Bundesliga titles, the DFB Cup and the League Cup four times each, and in 2001 also the Champions League and the Club World Cup.</p>\r\n\r\n<p>Between July 1998 and June 2007, he played a total of 365 games for FC Bayern and scored 46 goals. In his home country, Salihamidžić was voted &quot;Footballer of the Year&quot; four times. He made 42 international appearances for Bosnia and Herzegovina. Following his time at FC Bayern, he had spells at Juventus and VfL Wolfsburg.</p>\r\n\r\n<p>In 2012, Salihamidžić ended his playing career and built up a medium-sized company with a partner. In 2016, he became the FC Bayern brand ambassador. As board member for sport, Salihamidžić is now responsible for the senior men&#39;s team, the FC Bayern Campus including the FC Bayern Women&#39;s Bundesliga team, all coaches and the associated backroom staff and departments.</p>\r\n\r\n<p><strong>Honours</strong><br />\r\n<strong>Intercontinental Cup</strong>&nbsp;2001&nbsp;<strong>Champions League</strong>&nbsp;2001&nbsp;<strong>Bundesliga&nbsp;</strong>1999, 2000, 2001, 2003, 2005, 2006&nbsp;<strong>DFB Cup</strong>&nbsp;2000, 2003, 2005, 2006&nbsp;<strong>League Cup</strong>&nbsp;1998, 1999, 2000, 2004&nbsp;<strong>Bosnia and Herzegovina&#39;s Footballer of the Year&nbsp;</strong>2000, 2004, 2005, 2006</p>', 'hasan-salihamidzic', 'BA', 'HS'),
(2, 'Julian Nagelsmann', 'Head Coach', 'players/julian_nagelsmann.png', 35, 'RB Leipzig(2019-21)', '1987-07-23', '2026-06-30', '2021-07-01', '<p>Julian Nagelsmann has been head coach at FC Bayern since the summer of 2021. Born in Bavaria, he grew up in Landsberg am Lech, not far from Munich. Nagelsmann played in the youth teams of FC Augsburg and TSV 1860 M&uuml;nchen, but was forced to end his playing career early due to a knee injury.</p>\r\n\r\n<h2>Youngest coach in Bundesliga history</h2>\r\n\r\n<p>He began his post-playing career as assistant coach in Augsburg&#39;s youth team before coaching the youngsters at TSG 1899 Hoffenheim. After winning the German A-youth championship (U19s) in 2014, he was promoted to coach the TSG senior squad in 2016, becoming the youngest head coach in Bundesliga history at the age of just 26. Before returning home to Bayern, Nagelsmann was head coach at RB Leipzig for two years.</p>\r\n\r\n<p><strong>Honours</strong><br />\r\n<strong>As head coach</strong><strong>U19 Bundesliga&nbsp;</strong>2014&nbsp;<strong>Germany&#39;s Coach of the Year&nbsp;</strong>2017&nbsp;<strong>Youngest head coach in Bundesliga history&nbsp;</strong>(aged 28 in 2016)&nbsp;<strong>DFL Supercup&nbsp;</strong>2021</p>', 'julian-nagelsmann', 'DE', 'JN');

-- --------------------------------------------------------

--
-- Table structure for table `main_team`
--

CREATE TABLE `main_team` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `alt_color` varchar(50) DEFAULT NULL,
  `league_side` tinyint(1) NOT NULL,
  `pokal_side` tinyint(1) NOT NULL,
  `ucl_side` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_team`
--

INSERT INTO `main_team` (`id`, `name`, `logo`, `color`, `manager`, `alt_color`, `league_side`, `pokal_side`, `ucl_side`) VALUES
(1, 'FC Bayern München', 'logos/bayern_logo.png', 'red', 'Julian Nagelsmann', 'white', 1, 1, 1),
(2, 'SC Freiburg', 'logos/SC_Freiburg_logo.png', 'red', 'Christian Streich', 'white', 1, 0, 0),
(3, 'Union Berlin', 'logos/FC_Union_Berlin_logo.png', 'red', 'Urs Fischer', 'white', 1, 0, 0),
(4, 'Borussia Dortmund', 'logos/dortmund_logo.png', 'yellow', 'Edin Terzic', 'black', 1, 0, 0),
(5, 'RB Leipzig', 'logos/RB_Leipzig_2014_logo.svg.png', 'white', 'Marco Rose', 'red', 1, 0, 0),
(6, 'FC Schalke 04', 'logos/FC_Schalke_04_Logo.svg.png', 'blue', 'Thomas Reis', 'white', 1, 0, 0),
(7, 'Eintracht Frankfurt', 'logos/1200px-Eintracht_Frankfurt_Logo.png', 'black', 'Oliver Glasner', 'red', 1, 0, 0);

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
-- Indexes for table `main_bayern`
--
ALTER TABLE `main_bayern`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `main_nationality`
--
ALTER TABLE `main_nationality`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `main_scheduled_match_competition_id_c4110afb_fk_main_comp` (`competition_id`),
  ADD KEY `main_scheduled_match_opponent_id_95d9f59a_fk_main_team_id` (`opponent_id`),
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
  ADD KEY `main_coach_slug_185f160a` (`slug`);

--
-- Indexes for table `main_team`
--
ALTER TABLE `main_team`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `main_address`
--
ALTER TABLE `main_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `main_bayern`
--
ALTER TABLE `main_bayern`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_club_album`
--
ALTER TABLE `main_club_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_club_season_stats`
--
ALTER TABLE `main_club_season_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main_comment`
--
ALTER TABLE `main_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_competition`
--
ALTER TABLE `main_competition`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_goalscorers`
--
ALTER TABLE `main_goalscorers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_match_event`
--
ALTER TABLE `main_match_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_match_timeline`
--
ALTER TABLE `main_match_timeline`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `main_nationality`
--
ALTER TABLE `main_nationality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_news_article`
--
ALTER TABLE `main_news_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_news_tag_player`
--
ALTER TABLE `main_news_tag_player`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_news_tag_staff`
--
ALTER TABLE `main_news_tag_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_opponent_goalscorers`
--
ALTER TABLE `main_opponent_goalscorers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_order`
--
ALTER TABLE `main_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `main_order_item`
--
ALTER TABLE `main_order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `main_player`
--
ALTER TABLE `main_player`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_player_image`
--
ALTER TABLE `main_player_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_team`
--
ALTER TABLE `main_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
