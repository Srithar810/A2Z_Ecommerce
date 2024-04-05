-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 04:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a2z_ecommerce`
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add catagory', 8, 'add_catagory'),
(30, 'Can change catagory', 8, 'change_catagory'),
(31, 'Can delete catagory', 8, 'delete_catagory'),
(32, 'Can view catagory', 8, 'view_catagory'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add favourite', 10, 'add_favourite'),
(38, 'Can change favourite', 10, 'change_favourite'),
(39, 'Can delete favourite', 10, 'delete_favourite'),
(40, 'Can view favourite', 10, 'view_favourite');

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
(1, 'pbkdf2_sha256$720000$XA81hfqFfmvTVZqw81b90N$2jN12vukF25EmP30XWWHn0Vwxx1EuYijCc9CRCI/Zg0=', '2024-03-04 14:34:29.453079', 1, 'a2z_admin', '', '', 'a2zshop@gmail.com', 1, 1, '2024-02-02 03:29:16.960595'),
(2, 'pbkdf2_sha256$720000$Ron0lZfxj0Kv2lReYPaQsO$HP+dKIIymWUV2xv4bUaAYTtvWepilXsRPAlHo00vJEg=', NULL, 0, 'srithar', '', '', 'sri@gmail.com', 0, 1, '2024-02-03 15:26:01.253023'),
(3, 'pbkdf2_sha256$720000$PAeME9pSHm0Og1vjuE2HEi$TnoKLwixs71aIHJzxWD0/0pTsgsuwKTUoo0C0oEYSGc=', NULL, 0, 'srithar1', '', '', 'sri1@gmail.com', 0, 1, '2024-02-04 01:34:10.293093'),
(4, 'pbkdf2_sha256$720000$pNUzMg5Q82gGVWObobbiJ8$PANYnaY+iWIl1fzcI3966blTP75nNaLy5VPZkF63Big=', NULL, 0, 'srithar4', '', '', 'sri3@gmail.com', 0, 1, '2024-02-04 01:38:25.492309'),
(5, 'pbkdf2_sha256$720000$NG5rnOxLfx4FUG1fRUTbQy$aKfGSp2kaz1LE5ZvbZMNGuFtvGn2hBuEweBjJUwge4w=', NULL, 0, 'testname', '', '', 'tset@gmail.com', 0, 1, '2024-02-04 01:43:56.195091'),
(6, 'pbkdf2_sha256$720000$Hf9aamCOmj7uQQUW0UwxUm$Ynw0e/rOBd01HkoPsyCPFGRH2gOShgBNg5SPtt132Vo=', '2024-02-04 11:48:17.821532', 0, 'sam', '', '', 'sam@gmail.com', 0, 1, '2024-02-04 03:08:11.752621'),
(7, 'pbkdf2_sha256$720000$lKFGcAYGscEapnQnZCz3PJ$+sX0M2KeQkTAcZ0mg2PHtKJHW1gs3oXI9x/axawLdXc=', '2024-03-04 14:36:29.434268', 0, 'raja', '', '', 'raja@gmail.com', 0, 1, '2024-03-04 14:27:39.578451');

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
(1, '2024-02-02 03:45:41.505317', '1', 'Mobiles', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-02-02 04:10:41.402966', '1', 'POCO X6 Pro', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-02-02 09:24:38.411304', '2', 'iQOO Neo 7', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-02-02 09:25:56.119597', '2', 'Fasion', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-02-02 14:26:54.875408', '3', 'Books', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-02-02 14:38:55.188104', '3', 'Zero To Mastery In Python Programming', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-02-02 14:40:41.264977', '4', 'PYTHON: 4 BOOKS IN 1:', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-02-02 14:42:29.202327', '5', 'Python Object Oriented Programming Exercises', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-02-02 14:43:35.817589', '6', '60 Python Unit Testing Programming Exercises', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-02-02 14:45:19.133506', '7', 'Python Packages', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-02-02 14:46:22.732959', '8', 'Django Python book: A Beginner’s Guide to Learning Django for Python Developers', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-02-02 14:47:44.472769', '9', 'Becoming an Enterprise Django Developer:', 1, '[{\"added\": {}}]', 7, 1),
(13, '2024-02-02 14:48:47.358155', '10', 'Python Web Development with Django (Developer\'s Library)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-02-02 14:51:10.515437', '11', 'Django', 1, '[{\"added\": {}}]', 7, 1),
(15, '2024-02-02 14:51:59.340199', '12', 'DSA', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-02-02 14:53:34.634665', '13', 'Modern Full-Stack Development:', 1, '[{\"added\": {}}]', 7, 1),
(17, '2024-02-02 14:54:17.310720', '13', 'Modern Full-Stack Development:', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 7, 1),
(18, '2024-02-02 14:54:30.490347', '12', 'DSA', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 7, 1),
(19, '2024-02-02 14:54:48.379720', '11', 'Django', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 7, 1),
(20, '2024-02-02 14:54:58.347376', '10', 'Python Web Development with Django (Developer\'s Library)', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 7, 1),
(21, '2024-02-02 14:55:03.976624', '10', 'Python Web Development with Django (Developer\'s Library)', 2, '[]', 7, 1),
(22, '2024-02-02 14:55:08.941480', '10', 'Python Web Development with Django (Developer\'s Library)', 2, '[]', 7, 1),
(23, '2024-02-02 15:50:51.545945', '1', 'Mobiles', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(24, '2024-02-02 15:51:00.288785', '1', 'Mobiles', 2, '[]', 8, 1),
(25, '2024-02-02 15:51:16.535829', '3', 'Books', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(26, '2024-02-02 15:52:13.474406', '3', 'Books', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(27, '2024-02-02 15:52:19.885910', '1', 'Mobiles', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(28, '2024-02-02 15:54:19.835170', '2', 'Fasion', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(29, '2024-02-02 15:55:47.871978', '2', 'Fasion', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(30, '2024-02-02 21:31:32.457964', '4', 'Electronics', 1, '[{\"added\": {}}]', 8, 1),
(31, '2024-02-02 21:31:33.216025', '5', 'Electronics', 1, '[{\"added\": {}}]', 8, 1),
(32, '2024-02-02 21:31:57.186857', '5', 'Electronics', 3, '', 8, 1),
(33, '2024-02-02 21:32:10.271408', '4', 'Electronics', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(34, '2024-02-02 21:35:07.476533', '2', 'Fasion', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(35, '2024-02-02 21:40:04.239065', '6', 'grocesory', 1, '[{\"added\": {}}]', 8, 1),
(36, '2024-02-02 21:43:34.747201', '7', 'Stationary', 1, '[{\"added\": {}}]', 8, 1),
(37, '2024-02-03 05:30:32.541576', '1', 'POCO X6 Pro', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 7, 1),
(38, '2024-02-03 07:38:02.797250', '1', 'POCO X6 Pro', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 7, 1);

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
(6, 'sessions', 'session'),
(9, 'shop', 'cart'),
(8, 'shop', 'catagory'),
(10, 'shop', 'favourite'),
(7, 'shop', 'product');

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
(1, 'contenttypes', '0001_initial', '2024-02-01 15:09:51.438990'),
(2, 'auth', '0001_initial', '2024-02-01 15:10:02.922777'),
(3, 'admin', '0001_initial', '2024-02-01 15:10:04.744548'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-01 15:10:04.786121'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-01 15:10:04.834914'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-01 15:10:05.668343'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-01 15:10:06.736390'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-01 15:10:06.960509'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-01 15:10:07.024815'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-01 15:10:08.537299'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-01 15:10:08.591722'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-01 15:10:08.638741'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-01 15:10:08.825186'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-01 15:10:08.946871'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-01 15:10:09.095256'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-01 15:10:09.182487'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-01 15:10:09.291692'),
(18, 'sessions', '0001_initial', '2024-02-01 15:10:09.680121'),
(19, 'shop', '0001_initial', '2024-02-02 03:03:42.603434'),
(20, 'shop', '0002_cart', '2024-02-04 04:52:02.449476'),
(21, 'shop', '0003_favourite', '2024-02-04 14:10:39.637452');

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
('9i2hile23gjvp9jybv85ob4uf2j2dv01', '.eJxVjEEOwiAQRe_C2pBh6AB16d4zkIGhtmpoUtqV8e7apAvd_vfef6nI2zrGrZUlTqLOyqjT75Y4P0rdgdy53mad57ouU9K7og_a9HWW8rwc7t_ByG381sEn9DQ411vqrO8gG-TcCTuyDgOIhyEUb8lYCcSYoAdBMmQAgYas3h-prTZE:1rWogo:2X8sWt-zOO3zL283hMOAKvVsIAh0hzQsQF0qnWT_mQ0', '2024-02-19 02:26:30.121881'),
('eqo68wkre1yxutv6i2wc0hcz0zwuh163', '.eJxVjEEOwiAQRe_C2pBh6AB16d4zkIGhtmpoUtqV8e7apAvd_vfef6nI2zrGrZUlTqLOyqjT75Y4P0rdgdy53mad57ouU9K7og_a9HWW8rwc7t_ByG381sEn9DQ411vqrO8gG-TcCTuyDgOIhyEUb8lYCcSYoAdBMmQAgYas3h-prTZE:1rVkGW:B9tmLiRI-oeJznFTt6VAHO_JE_VTBfUH5ickeKPRwqo', '2024-02-16 03:30:56.714856'),
('td85v2xikxaasxgylfaf2xc2dqcdlinf', '.eJxVjMEOwiAQRP-FsyHAahGP3v0GsssuUjU0Ke3J-O_SpAc9zrw381YR16XEtckcR1YX5dXhtyNMT6kb4AfW-6TTVJd5JL0peqdN3yaW13V3_w4KttLXKYEDZ1FMPgkxi8uUgDBkTz0AHG0W68KAQgGYsvGhO2fywRsYQH2-IbM48Q:1rh9Qb:kNS1hNSGYk9p6PSp7X7LJl-53psaLNCyMmtD2SSLNik', '2024-03-18 14:36:29.591374');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart`
--

CREATE TABLE `shop_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_cart`
--

INSERT INTO `shop_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(1, 1, '2024-02-04 12:49:25.947709', 4, 1),
(5, 1, '2024-03-04 14:40:40.733864', 2, 7),
(6, 1, '2024-03-04 14:40:57.090905', 4, 7),
(7, 1, '2024-03-04 14:41:23.584151', 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `shop_catagory`
--

CREATE TABLE `shop_catagory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_catagory`
--

INSERT INTO `shop_catagory` (`id`, `name`, `image`, `description`, `status`, `created_at`) VALUES
(1, 'Mobiles', 'uploads/20240202091541mobiles.jpg', 'All Kinds of Mobiles', 0, '2024-02-02 03:45:41.447279'),
(2, 'Fasion', 'uploads/20240203030507fasion.jpg', 'All Kinds of Fasion', 0, '2024-02-02 09:25:56.094587'),
(3, 'Books', 'uploads/20240202195654books.jpg', 'All Kinds of Books', 0, '2024-02-02 14:26:54.824216'),
(4, 'Electronics', 'uploads/20240203030132electronics.jpg', 'All KInds of Electronics Product', 0, '2024-02-02 21:31:32.403508'),
(6, 'grocesory', 'uploads/20240203031004grocesory.jpg', 'All kinds of grocesory Product', 0, '2024-02-02 21:40:04.204308'),
(7, 'Stationary', 'uploads/20240203031334stationary.jpg', 'All kinds of sationary product', 0, '2024-02-02 21:43:34.689395');

-- --------------------------------------------------------

--
-- Table structure for table `shop_favourite`
--

CREATE TABLE `shop_favourite` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_favourite`
--

INSERT INTO `shop_favourite` (`id`, `created_at`, `product_id`, `user_id`) VALUES
(1, '2024-02-04 14:31:53.336448', 4, 1),
(5, '2024-03-04 14:37:29.574345', 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `vendor` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `catagory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `vendor`, `quantity`, `original_price`, `selling_price`, `product_image`, `description`, `status`, `trending`, `created_at`, `catagory_id`) VALUES
(1, 'POCO X6 Pro', 'amazon', 0, 30000, 26999, 'uploads/20240202094040v6-poco-x6-pro.jpg', 'Expert comment:   The POCO X6 Pro is a smartphone worth considering in the mid-range, especially for power users. The handset leaves several of its current competitors behind with its performance. While the phone\'s display may not have a curved design, it stands out as one of the best panels you can find in the segment right now. This is further enhanced by finely tuned stereo speakers and impressive battery backup, complemented by a quick charging solution. The cameras also meet the expectation', 0, 0, '2024-02-02 04:10:41.043959', 1),
(2, 'iQOO Neo 7', 'amazon', 20, 28000, 24999, 'uploads/20240202145437v6-iqoo-neo-7.jpg', 'Expert comment:   Build to impress its audience by packing in the performance needs to last years, the iQOO Neo7 is one of the best devices to come in the market under Rs 30,000. The handset has a 120Hz AMOLED panel with upwards of 1,300nits in peak brightness. Camera-wise the Neo7 does pack in a 64MP primary shooter that is adept in taking decent shots in daylight and night time scenarios. The newly launched Dimensity 8200 SoC makes its way on to the device for supreme performance and the 5,000', 0, 0, '2024-02-02 09:24:37.916070', 1),
(3, 'Zero To Mastery In Python Programming', 'amazon', 40, 495, 380, 'uploads/20240202200854python_book1.jpg', 'Zero To Mastery In Python Programming, Best Python Book For Beginners, This Python Book Covers A-Z About Programming In Python, Also Comes With Python Tricks You Should', 0, 0, '2024-02-02 14:38:54.955683', 3),
(4, 'PYTHON: 4 BOOKS IN 1:', 'amazon', 40, 5000, 4817, 'uploads/20240202201041py7days.jpg', 'PYTHON: 4 BOOKS IN 1: Learn How To Develop Programs And Apps In 7 Days With Python Programming And Start Deep Hands-on Learning For Beginners of Data Science And Machine', 0, 0, '2024-02-02 14:40:41.225648', 3),
(5, 'Python Object Oriented Programming Exercises', 'amazon', 40, 500, 450, 'uploads/20240202201229py_oops.jpg', 'Python Object Oriented Programming Exercises Become a Pro Developer: Python OOPS Concepts with 73 Exercises With Solution - Prepare for Coding Interviews (Become Pythonista Book 3)\r\nby Edcorner Learning | 7 October 2021', 0, 0, '2024-02-02 14:42:29.145888', 3),
(6, '60 Python Unit Testing Programming Exercises', 'amazon', 33, 400, 333, 'uploads/20240202201335py4.jpg', '60 Python Unit Testing Programming Exercises for Developers : Enhance your python coding skills or prepare for coding interviews. (Become Pythonista Book 6)', 0, 0, '2024-02-02 14:43:35.772771', 3),
(7, 'Python Packages', 'amazon', 44, 3000, 2794, 'uploads/20240202201519py_package.jpg', 'Python Packages', 0, 0, '2024-02-02 14:45:19.120488', 3),
(8, 'Django Python book: A Beginner’s Guide to Learning Django for Python Developers', 'amazon', 11, 3333, 2999, 'uploads/20240202201622django.jpg', 'Django Python book: A Beginner’s Guide to Learning Django for Python Developers', 0, 0, '2024-02-02 14:46:22.691620', 3),
(9, 'Becoming an Enterprise Django Developer:', 'amazon', 33, 3000, 2899, 'uploads/20240202201744django1.jpg', 'Becoming an Enterprise Django Developer: Discover best practices, tooling, and solutions for writing and organizing Django applications in production', 0, 0, '2024-02-02 14:47:44.454757', 3),
(10, 'Python Web Development with Django (Developer\'s Library)', 'amazon', 55, 2600, 2170, 'uploads/20240202201847django2.jpg', 'Python Web Development with Django (Developer\'s Library)', 0, 1, '2024-02-02 14:48:47.319474', 3),
(11, 'Django', 'amazon', 20, 3000, 2600, 'uploads/20240202202110python_book1.jpg', 'Python basic', 0, 1, '2024-02-02 14:51:10.493236', 3),
(12, 'DSA', 'amazon', 33, 3000, 2800, 'uploads/20240202202159dsa.jpg', 'Data Structure and Algorithmic Thinking with Python', 0, 1, '2024-02-02 14:51:59.316453', 3),
(13, 'Modern Full-Stack Development:', 'amazon', 55, 5000, 4117, 'uploads/20240202202334fsdpy.jpg', 'Modern Full-Stack Development: Using TypeScript, React, Node.js, Webpack, Python, Django, and Docker', 0, 1, '2024-02-02 14:53:34.597701', 3);

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
-- Indexes for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_cart_product_id_48b482ee_fk_shop_product_id` (`product_id`),
  ADD KEY `shop_cart_user_id_27925ac6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_favourite`
--
ALTER TABLE `shop_favourite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_favourite_product_id_dc4d9f31_fk_shop_product_id` (`product_id`),
  ADD KEY `shop_favourite_user_id_7375eacf_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_catagory_id_3c067a4f_fk_shop_catagory_id` (`catagory_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shop_cart`
--
ALTER TABLE `shop_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shop_catagory`
--
ALTER TABLE `shop_catagory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shop_favourite`
--
ALTER TABLE `shop_favourite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Constraints for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD CONSTRAINT `shop_cart_product_id_48b482ee_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  ADD CONSTRAINT `shop_cart_user_id_27925ac6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_favourite`
--
ALTER TABLE `shop_favourite`
  ADD CONSTRAINT `shop_favourite_product_id_dc4d9f31_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  ADD CONSTRAINT `shop_favourite_user_id_7375eacf_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_catagory_id_3c067a4f_fk_shop_catagory_id` FOREIGN KEY (`catagory_id`) REFERENCES `shop_catagory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
