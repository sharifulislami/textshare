-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 21, 2019 at 10:04 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `commenter_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  KEY `comments_child_id_foreign` (`child_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '2018-12-11 07:40:45', '2018-12-11 07:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `active` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n&lt;br&gt;&lt;/div&gt;', 1, '2018-06-20 08:46:27', '2018-07-13 02:14:51'),
(2, 'Privacy Policy', 'privacy-policy', 'Privacy page content. You can edit this from admin panel.&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n&lt;/div&gt;\r\n\r\n&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n&lt;/div&gt;\r\n\r\n&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n&lt;/div&gt;\r\n\r\n&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n&lt;/div&gt;\r\n\r\n&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n&lt;/div&gt;\r\n\r\n&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n\r\n\r\n\r\nUllamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec\r\n&lt;/div&gt;\r\n\r\n&lt;br&gt;&lt;/div&gt;', 1, '2018-06-20 08:46:27', '2018-07-13 02:16:20'),
(3, 'Terms & Condition', 'terms', '&lt;p&gt;Terms &amp;amp; Condition Page. You can edit this from admin panel.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donecLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Libero justo laoreet sit amet cursus sit amet dictum sit. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec&lt;br&gt;&amp;nbsp;&lt;/p&gt;', 1, '2018-06-20 09:16:47', '2018-12-08 17:30:41'),
(4, 'FAQ', 'faq', '&lt;p&gt;Below you can find a list of the most frequently asked questions:&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;What is PasteShr all about? &lt;/strong&gt;- &amp;nbsp;Pasteshr is a website where you can store any text online for easy sharing. The idea behind the site is to make it more convenient for people to share large amounts of text online.&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Who can see my pastes?&lt;/strong&gt; - If you create a public paste, your paste will show up for everybody. You can also create unlisted pastes, these items will be invisible for others unless you share your paste link. If you are a member of PasteShr you can also create private pastes. These items can only be viewed by you when you are logged in and are therefore password protected. Search engines will only index public pastes.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ullamco laboris nisi ut aliquip ex ea commodo consequat.&lt;/p&gt;', 1, '2018-12-09 10:45:42', '2018-12-09 10:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pastes`
--

DROP TABLE IF EXISTS `pastes`;
CREATE TABLE IF NOT EXISTS `pastes` (
  `id` int(30) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `syntax` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'markup',
  `expire_time` timestamp NULL DEFAULT NULL,
  `status` int(1) UNSIGNED NOT NULL COMMENT ' 1 - Public / 2- Unlisted / 3 - Private',
  `views` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrypted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `self_destroy` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reported_pastes`
--

DROP TABLE IF EXISTS `reported_pastes`;
CREATE TABLE IF NOT EXISTS `reported_pastes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `paste_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(30) CHARACTER SET latin1 NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'PasteShr', '2018-11-26 11:44:38', '2018-12-28 07:24:35'),
(2, 'site_email', 'admin@example.com', '2018-11-28 12:09:05', '2018-12-28 07:24:35'),
(3, 'meta_keywords', 'pasteshr', '2018-11-28 12:09:05', '2018-12-28 07:24:35'),
(4, 'meta_description', 'Pasteshr is a website where you can store any text online for easy sharing. The idea behind the site is to make it more convenient for people to share large amounts of text online.', '2018-11-28 12:09:33', '2018-12-28 07:24:35'),
(6, 'ad', '1', '2018-12-06 08:05:22', '2019-01-29 14:17:06'),
(7, 'ad1', '', '2018-12-06 08:05:22', '2019-01-29 14:17:06'),
(8, 'ad2', '', '2018-12-06 08:05:31', '2019-01-29 14:17:06'),
(5, 'footer_text', 'Pasteshr is a website where you can store any text online for easy sharing. The idea behind the site is to make it more convenient for people to share large amounts of text online.', '2018-11-28 12:09:33', '2018-12-28 07:24:35'),
(9, 'social_fb', '#', '2018-12-06 08:39:08', '2018-12-28 07:24:35'),
(10, 'social_tw', '#', '2018-12-06 08:39:08', '2018-12-28 07:24:35'),
(11, 'social_gp', '#', '2018-12-06 08:39:31', '2018-12-28 07:24:35'),
(12, 'social_lin', '#', '2018-12-06 08:39:31', '2018-12-28 07:24:35'),
(13, 'social_insta', '#', '2018-12-06 08:40:04', '2018-12-28 07:24:35'),
(14, 'social_pin', '#', '2018-12-06 08:40:04', '2018-12-28 07:24:35'),
(15, 'recent_pastes_limit', '7', '2018-12-07 08:30:42', '2019-01-29 17:03:56'),
(16, 'ad3', '', '2018-12-09 10:36:15', '2019-01-29 14:17:06'),
(17, 'max_content_size_kb', '2000', '2018-12-09 10:59:27', '2019-01-29 17:03:56'),
(18, 'captcha', '1', '2018-12-10 09:35:03', '2018-12-28 07:24:35'),
(19, 'captcha_site_key', NULL, '2018-12-10 09:35:03', '2018-12-28 07:24:35'),
(20, 'captcha_secret_key', NULL, '2018-12-10 09:35:18', '2018-12-28 07:24:35'),
(21, 'disqus', '0', '2018-12-10 10:12:04', '2018-12-28 07:24:35'),
(22, 'disqus_code', '', '2018-12-10 10:12:04', '2018-12-28 07:24:35'),
(23, 'default_locale', 'en', '2018-12-11 10:38:49', '2018-12-28 07:24:35'),
(24, 'default_timezone', 'Asia/Kolkata', '2018-12-11 10:38:49', '2018-12-28 07:24:35'),
(25, 'registration_open', '1', '2018-12-28 06:28:48', '2018-12-28 07:24:35'),
(26, 'public_paste', '1', '2018-12-28 06:28:48', '2019-01-29 17:03:56'),
(27, 'mail_driver', 'mail', '2018-12-28 06:59:05', '2018-12-28 07:24:35'),
(28, 'mail_host', 'smtp.mailtrap.io', '2018-12-28 06:59:05', '2018-12-28 07:24:35'),
(29, 'mail_port', '587', '2018-12-28 07:01:10', '2018-12-28 07:24:35'),
(30, 'mail_encryption', 'tls', '2018-12-28 07:01:10', '2018-12-28 07:24:35'),
(31, 'mail_username', NULL, '2018-12-28 07:01:52', '2018-12-28 07:24:35'),
(32, 'mail_password', NULL, '2018-12-28 07:01:52', '2018-12-28 07:24:35'),
(33, 'mail_from_address', 'noreply@example.com', '2018-12-28 07:02:50', '2018-12-28 07:24:35'),
(34, 'mail_from_name', 'PasteShr', '2018-12-28 07:02:50', '2018-12-28 07:24:35'),
(35, 'feature_share', '1', '2019-01-01 17:33:49', '2019-01-29 17:03:56'),
(36, 'feature_copy', '1', '2019-01-01 17:33:49', '2019-01-29 17:03:56'),
(37, 'feature_raw', '1', '2018-12-31 12:25:44', '2019-01-29 17:03:56'),
(38, 'feature_download', '1', '2018-12-31 12:25:44', '2019-01-29 17:03:56'),
(39, 'feature_clone', '0', '2018-12-31 12:25:44', '2019-01-29 17:03:56'),
(40, 'feature_embed', '1', '2018-12-31 12:25:44', '2019-01-29 17:03:56'),
(41, 'feature_report', '1', '2018-12-31 12:25:44', '2019-01-29 17:03:56'),
(42, 'feature_print', '1', '2018-12-31 12:25:44', '2019-01-29 17:03:56'),
(43, 'my_recent_pastes_limit', '3', '2019-01-01 17:33:49', '2019-01-29 17:03:56'),
(44, 'daily_paste_limit_unauth', '10', '2019-01-01 17:33:49', '2019-01-29 17:03:56'),
(45, 'daily_paste_limit_auth', '50', '2019-01-01 17:33:50', '2019-01-29 17:03:56'),
(46, 'site_logo', NULL, '2019-01-01 17:33:50', NULL),
(47, 'site_favicon', '/favicon.png', '2019-01-01 17:33:50', NULL),
(48, 'site_image', '/img/image.png', '2019-01-01 17:33:50', NULL),
(49, 'analytics_code', NULL, '2019-01-01 17:33:50', NULL),
(50, 'pastes_per_page', '50', '2019-01-11 08:58:54', '2019-01-29 17:03:56'),
(51, 'self_destroy_after_views', '0', '2019-01-11 08:58:54', '2019-01-29 17:03:56'),
(52, 'syntax_highlighting_style', 'okadia', '2019-01-29 16:52:26', '2019-01-29 17:03:56'),
(53, 'site_layout', '1', '2019-04-23 16:20:36', NULL),
(54, 'paste_page_layout', '1', '2019-04-23 16:20:36', NULL),
(55, 'trending_pastes_limit', '15', '2019-04-23 16:20:36', NULL),
(56, 'captcha_for_verified_users', '0', '2019-04-23 16:20:36', NULL),
(57, 'qr_code_share', '1', '2019-04-23 16:20:36', NULL),
(58, 'pc', NULL, '2019-04-23 16:20:36', '2019-05-21 09:08:34'),
(59, 'pc_verified', '0', '2019-04-23 16:20:36', '2019-05-21 09:40:44'),
(60, 'paste_time_restrict_auth', '60', '2019-04-23 16:20:36', NULL),
(61, 'paste_time_restrict_unauth', '600', '2019-04-23 16:20:36', NULL),
(62, 'site_skin', 'default', '2019-04-23 16:20:36', NULL),
(63, 'auto_approve_user', '0', '2019-04-25 11:42:53', NULL),
(64, 'header_code', NULL, '2019-05-14 09:45:08', NULL),
(65, 'footer_code', NULL, '2019-05-14 09:45:08', NULL),
(66, 'maintenance_mode', '0', '2019-05-14 09:45:08', NULL),
(67, 'maintenance_text', 'We\'ll be back soon.', '2019-05-14 09:45:08', NULL),
(68, 'captcha_type', '2', '2019-05-21 09:11:20', NULL),
(69, 'custom_captcha_style', 'default', '2019-05-21 09:11:20', NULL),
(70, 'custom_comments', '1', '2019-05-21 09:11:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `syntax`
--

DROP TABLE IF EXISTS `syntax`;
CREATE TABLE IF NOT EXISTS `syntax` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(30) DEFAULT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `popular` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syntax`
--

INSERT INTO `syntax` (`id`, `name`, `slug`, `extension`, `active`, `popular`, `created_at`, `updated_at`) VALUES
(2, 'Markup', 'markup', NULL, 1, 1, '2018-11-28 10:05:40', NULL),
(3, 'CSS', 'css', 'css', 1, 1, '2018-11-28 10:06:18', NULL),
(4, 'C-like', 'clike', NULL, 1, 0, '2018-11-28 10:06:18', NULL),
(5, 'JavaScript', 'javascript', 'js', 1, 1, '2018-11-28 10:06:57', NULL),
(6, 'ABAP', 'abap', NULL, 1, 0, '2018-11-28 10:06:57', NULL),
(7, 'ActionScript', 'actionscript', NULL, 1, 0, '2018-11-28 10:07:43', NULL),
(8, 'Ada', 'ada', NULL, 1, 0, '2018-11-28 10:07:43', NULL),
(9, 'Apache Configuration', 'apacheconf', NULL, 1, 0, '2018-11-28 10:08:09', NULL),
(10, 'APL', 'apl', NULL, 1, 0, '2018-11-28 10:08:09', NULL),
(11, 'AppleScript', 'applescript', NULL, 1, 0, '2018-11-28 10:08:41', NULL),
(12, 'Arduino', 'arduino', NULL, 1, 0, '2018-11-28 10:08:41', NULL),
(13, 'ARFF', 'arff', NULL, 1, 0, '2018-11-28 10:09:11', NULL),
(14, 'AsciiDoc', 'asciidoc', NULL, 1, 0, '2018-11-28 10:09:11', NULL),
(15, '6502 Assembly', 'asm6502', NULL, 1, 0, '2018-11-28 10:09:55', NULL),
(16, 'ASP.NET (C#)', 'aspnet', NULL, 1, 0, '2018-11-28 10:09:55', NULL),
(17, 'AutoHotKey', 'autohotkey', NULL, 1, 0, '2018-11-28 10:10:52', NULL),
(18, 'AutoIt', 'autoit', NULL, 1, 0, '2018-11-28 10:10:52', NULL),
(19, 'Bash', 'bash', NULL, 1, 1, '2018-11-28 10:11:17', NULL),
(20, 'Basic', 'basic', NULL, 1, 0, '2018-11-28 10:11:17', NULL),
(21, 'Batch', 'batch', NULL, 1, 0, '2018-11-28 10:11:51', NULL),
(22, 'Bison', 'bison', NULL, 1, 0, '2018-11-28 10:11:51', NULL),
(23, 'Brainfuck', 'brainfuck', NULL, 1, 0, '2018-11-28 10:12:27', NULL),
(24, 'Bro', 'bro', NULL, 1, 0, '2018-11-28 10:12:27', NULL),
(25, 'C', 'c', 'c', 1, 1, '2018-11-28 10:12:46', NULL),
(26, 'C#', 'csharp', 'cs', 1, 1, '2018-11-28 10:12:46', NULL),
(27, 'C++', 'cpp', 'cpp', 1, 1, '2018-11-28 10:13:07', NULL),
(28, 'CoffeeScript', 'coffeescript', NULL, 1, 0, '2018-11-28 10:13:07', NULL),
(29, 'Clojure', 'clojure', NULL, 1, 0, '2018-11-28 10:13:56', NULL),
(30, 'Crystal', 'crystal', NULL, 1, 0, '2018-11-28 10:13:56', NULL),
(31, 'Content-Security-Policy', 'csp', NULL, 1, 0, '2018-11-28 10:14:33', NULL),
(32, 'CSS Extras', 'css-extras', NULL, 1, 0, '2018-11-28 10:14:33', NULL),
(33, 'D', 'd', NULL, 1, 0, '2018-11-28 10:14:48', NULL),
(34, 'Dart', 'dart', NULL, 1, 0, '2018-11-28 10:14:48', NULL),
(35, 'Diff', 'diff', NULL, 1, 0, '2018-11-28 10:15:49', NULL),
(36, 'Django/Jinja2', 'django', NULL, 1, 0, '2018-11-28 10:15:49', NULL),
(37, 'Docker', 'docker', NULL, 1, 0, '2018-11-28 10:16:10', NULL),
(38, 'Eiffel', 'eiffel', NULL, 1, 0, '2018-11-28 10:16:10', NULL),
(39, 'Elixir', 'elixir', NULL, 1, 0, '2018-11-28 10:16:32', NULL),
(40, 'Elm', 'elm', NULL, 1, 0, '2018-11-28 10:16:32', NULL),
(41, 'ERB', 'erb', NULL, 1, 0, '2018-11-28 10:16:51', NULL),
(42, 'Erlang', 'erlang', NULL, 1, 0, '2018-11-28 10:16:51', NULL),
(43, 'F#', 'fsharp', NULL, 1, 0, '2018-11-28 10:17:09', NULL),
(44, 'Flow', 'flow', NULL, 1, 0, '2018-11-28 10:17:09', NULL),
(45, 'Fortran', 'fortran', NULL, 1, 0, '2018-11-28 10:18:25', NULL),
(46, 'GEDCOM', 'gedcom', NULL, 1, 0, '2018-11-28 10:18:25', NULL),
(47, 'Gherkin', 'gherkin', NULL, 1, 0, '2018-11-28 10:18:45', NULL),
(48, 'Git', 'git', NULL, 1, 0, '2018-11-28 10:18:45', NULL),
(49, 'GLSL', 'glsl', NULL, 1, 0, '2018-11-28 10:19:03', NULL),
(50, 'GameMaker Language', 'gml', NULL, 1, 0, '2018-11-28 10:19:03', NULL),
(51, 'Go', 'go', NULL, 1, 0, '2018-11-28 10:19:29', NULL),
(52, 'GraphQL', 'graphql', NULL, 1, 0, '2018-11-28 10:19:29', NULL),
(53, 'Groovy', 'groovy', NULL, 1, 0, '2018-11-28 10:20:35', NULL),
(54, 'Haml', 'haml', NULL, 1, 0, '2018-11-28 10:20:35', NULL),
(55, 'Handlebars', 'handlebars', NULL, 1, 0, '2018-11-28 10:20:53', NULL),
(56, 'Haskell', 'haskell', NULL, 1, 0, '2018-11-28 10:20:53', NULL),
(57, 'Haxe', 'haxe', NULL, 1, 0, '2018-11-28 10:21:07', NULL),
(58, 'HTTP', 'http', NULL, 1, 0, '2018-11-28 10:21:07', NULL),
(59, 'HTTP Public-Key-Pins', 'hpkp', NULL, 1, 0, '2018-11-28 10:21:32', NULL),
(60, 'HTTP Strict-Transport-Security', 'hsts', NULL, 1, 0, '2018-11-28 10:21:32', NULL),
(61, 'IchigoJam', 'ichigojam', NULL, 1, 0, '2018-11-28 10:21:57', NULL),
(62, 'Icon', 'icon', NULL, 1, 0, '2018-11-28 10:21:57', NULL),
(63, 'Inform 7', 'inform7', NULL, 1, 0, '2018-11-28 10:24:14', NULL),
(64, 'INI', 'ini', 'ini', 1, 0, '2018-11-28 10:24:14', NULL),
(65, 'IO', 'io', NULL, 1, 0, '2018-11-28 10:24:33', NULL),
(66, 'J', 'j', NULL, 1, 0, '2018-11-28 10:24:33', NULL),
(67, 'Java', 'java', 'java', 1, 1, '2018-11-28 10:24:48', NULL),
(68, 'Jolie', 'jolie', NULL, 1, 0, '2018-11-28 10:24:48', NULL),
(69, 'JSON', 'json', NULL, 1, 1, '2018-11-28 10:26:12', NULL),
(70, 'Julia', 'julia', NULL, 1, 0, '2018-11-28 10:26:12', NULL),
(71, 'Keyman', 'keyman', NULL, 1, 0, '2018-11-28 10:26:30', NULL),
(72, 'Kotlin', 'kotlin', NULL, 1, 0, '2018-11-28 10:26:30', NULL),
(73, 'LaTeX', 'latex', NULL, 1, 0, '2018-11-28 10:26:45', NULL),
(74, 'Less', 'less', NULL, 1, 0, '2018-11-28 10:26:45', NULL),
(75, 'Liquid', 'liquid', NULL, 1, 0, '2018-11-28 10:27:07', NULL),
(76, 'Lisp', 'lisp', NULL, 1, 0, '2018-11-28 10:27:07', NULL),
(77, 'LiveScript', 'livescript', NULL, 1, 0, '2018-11-28 10:27:30', NULL),
(78, 'LOLCODE', 'lolcode', NULL, 1, 0, '2018-11-28 10:27:30', NULL),
(79, 'Lua', 'lua', 'luaa', 1, 1, '2018-11-28 10:27:46', NULL),
(80, 'Makefile', 'makefile', NULL, 1, 0, '2018-11-28 10:27:46', NULL),
(81, 'Markdown', 'markdown', 'md', 1, 0, '2018-11-28 10:28:08', NULL),
(82, 'Markup templating', 'markup-templating', NULL, 1, 0, '2018-11-28 10:28:08', NULL),
(83, 'MATLAB', 'matlab', NULL, 1, 0, '2018-11-28 10:28:25', NULL),
(84, 'MEL', 'mel', NULL, 1, 0, '2018-11-28 10:28:25', NULL),
(85, 'Mizar', 'mizar', NULL, 1, 0, '2018-11-28 10:28:41', NULL),
(86, 'Monkey', 'monkey', NULL, 1, 0, '2018-11-28 10:28:41', NULL),
(87, 'N4JS', 'n4js', NULL, 1, 0, '2018-11-28 10:29:00', NULL),
(88, 'NASM', 'nasm', NULL, 1, 0, '2018-11-28 10:29:00', NULL),
(89, 'nginx', 'nginx', NULL, 1, 0, '2018-11-28 10:29:25', NULL),
(90, 'Nim', 'nim', NULL, 1, 0, '2018-11-28 10:29:25', NULL),
(91, 'Nix', 'nix', NULL, 1, 0, '2018-11-28 10:29:42', NULL),
(92, 'NSIS', 'nsis', NULL, 1, 0, '2018-11-28 10:29:42', NULL),
(93, 'Objective-C', 'objectivec', NULL, 1, 0, '2018-11-28 10:30:09', NULL),
(94, 'OCaml', 'ocaml', NULL, 1, 0, '2018-11-28 10:30:09', NULL),
(95, 'OpenCL', 'opencl', NULL, 1, 0, '2018-11-28 10:30:28', NULL),
(96, 'Oz', 'oz', NULL, 1, 0, '2018-11-28 10:30:28', NULL),
(97, 'PARI/GP', 'parigp', NULL, 1, 0, '2018-11-28 10:30:49', NULL),
(98, 'Parser', 'parser', NULL, 1, 0, '2018-11-28 10:30:49', NULL),
(99, 'Pascal', 'pascal', NULL, 1, 0, '2018-11-28 10:31:12', NULL),
(100, 'Perl', 'perl', NULL, 1, 0, '2018-11-28 10:31:12', NULL),
(101, 'PHP', 'php', 'php', 1, 0, '2018-11-28 10:31:34', NULL),
(102, 'PHP Extras', 'php-extras', NULL, 1, 0, '2018-11-28 10:31:34', NULL),
(103, 'PL/SQL', 'plsql', NULL, 1, 0, '2018-11-28 10:32:02', NULL),
(104, 'PowerShell', 'powershell', NULL, 1, 0, '2018-11-28 10:32:02', NULL),
(105, 'Processing', 'processing', NULL, 1, 0, '2018-11-28 10:32:21', NULL),
(106, 'Prolog', 'prolog', NULL, 1, 0, '2018-11-28 10:32:21', NULL),
(107, '.properties', 'properties', NULL, 1, 0, '2018-11-28 10:32:47', NULL),
(108, 'Protocol Buffers', 'protobuf', NULL, 1, 0, '2018-11-28 10:32:47', NULL),
(109, 'Pug', 'pub', NULL, 1, 0, '2018-11-28 10:33:05', NULL),
(110, 'Puppet', 'puppet', NULL, 1, 0, '2018-11-28 10:33:05', NULL),
(111, 'Pure', 'pure', NULL, 1, 0, '2018-11-28 10:33:22', NULL),
(112, 'Python', 'python', 'py', 1, 0, '2018-11-28 10:33:22', NULL),
(113, 'Q (kdb+ database)', 'q', NULL, 1, 0, '2018-11-28 10:33:41', NULL),
(114, 'Qore', 'qore', NULL, 1, 0, '2018-11-28 10:33:41', NULL),
(115, 'R', 'r', NULL, 1, 0, '2018-11-28 10:33:59', NULL),
(116, 'React JSX', 'jsx', NULL, 1, 0, '2018-11-28 10:33:59', NULL),
(117, 'React TSX', 'tsx', NULL, 1, 0, '2018-11-28 10:34:17', NULL),
(118, 'Ren\'py', 'renpy', NULL, 1, 0, '2018-11-28 10:34:17', NULL),
(119, 'Reason', 'reason', NULL, 1, 0, '2018-11-28 10:34:36', NULL),
(120, 'reST (reStructuredText)', 'rest', NULL, 1, 0, '2018-11-28 10:34:36', NULL),
(121, 'Rip', 'rip', NULL, 1, 0, '2018-11-28 10:34:55', NULL),
(122, 'Roboconf', 'roboconf', NULL, 1, 0, '2018-11-28 10:34:55', NULL),
(123, 'Ruby', 'ruby', NULL, 1, 0, '2018-11-28 10:35:11', NULL),
(124, 'Rust', 'rust', NULL, 1, 0, '2018-11-28 10:35:11', NULL),
(125, 'SAS', 'sas', NULL, 1, 0, '2018-11-28 10:35:30', NULL),
(126, 'Sass (Sass)', 'sass', NULL, 1, 0, '2018-11-28 10:35:30', NULL),
(127, 'Sass (Scss)', 'scss', NULL, 1, 0, '2018-11-28 10:35:58', NULL),
(128, 'Scala', 'scala', NULL, 1, 0, '2018-11-28 10:35:58', NULL),
(129, 'Scheme', 'scheme', NULL, 1, 0, '2018-11-28 10:36:17', NULL),
(130, 'Smalltalk', 'smalltalk', NULL, 1, 0, '2018-11-28 10:36:17', NULL),
(131, 'Smarty', 'smarty', NULL, 1, 0, '2018-11-28 10:36:31', NULL),
(132, 'SQL', 'sql', 'sql', 1, 0, '2018-11-28 10:36:31', NULL),
(133, 'Soy (Closure Template)', 'soy', NULL, 1, 0, '2018-11-28 10:36:53', NULL),
(134, 'Stylus', 'stylus', NULL, 1, 0, '2018-11-28 10:36:53', NULL),
(135, 'Swift', 'swift', NULL, 1, 0, '2018-11-28 10:37:10', NULL),
(136, 'TAP', 'tap', NULL, 1, 0, '2018-11-28 10:37:10', NULL),
(137, 'Tcl', 'tcl', NULL, 1, 0, '2018-11-28 10:37:28', NULL),
(138, 'Textile', 'textile', NULL, 1, 0, '2018-11-28 10:37:28', NULL),
(139, 'Template Toolkit 2', 'tt2', NULL, 1, 0, '2018-11-28 10:37:43', NULL),
(140, 'Twig', 'twig', NULL, 1, 0, '2018-11-28 10:37:43', NULL),
(141, 'TypeScript', 'typescript', NULL, 1, 0, '2018-11-28 10:38:06', NULL),
(142, 'VB.Net', 'vbnet', NULL, 1, 0, '2018-11-28 10:38:06', NULL),
(143, 'Velocity', 'velocity', NULL, 1, 0, '2018-11-28 10:39:39', NULL),
(144, 'Verilog', 'verilog', NULL, 1, 0, '2018-11-28 10:39:39', NULL),
(145, 'VHDL', 'vhdl', NULL, 1, 0, '2018-11-28 10:39:57', NULL),
(146, 'vim', 'vim', NULL, 1, 0, '2018-11-28 10:39:57', NULL),
(147, 'Visual Basic', 'visual-basic', NULL, 1, 0, '2018-11-28 10:40:21', NULL),
(148, 'WebAssembly', 'wasm', NULL, 1, 0, '2018-11-28 10:40:21', NULL),
(149, 'Wiki markup', 'wiki', NULL, 1, 0, '2018-11-28 10:40:41', NULL),
(150, 'Xeora', 'xeora', NULL, 1, 0, '2018-11-28 10:40:41', NULL),
(151, 'Xojo (REALbasic)', 'xojo', NULL, 1, 0, '2018-11-28 10:41:01', NULL),
(152, 'XQuery', 'xquery', NULL, 1, 0, '2018-11-28 10:41:01', NULL),
(153, 'YAML', 'yaml', NULL, 1, 0, '2018-11-28 10:41:09', NULL),
(154, 'Plaintext', 'markup', NULL, 1, 0, '2018-11-28 15:23:02', '2018-12-08 10:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET latin1 NOT NULL,
  `email` varchar(191) CHARACTER SET latin1 NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(1) UNSIGNED NOT NULL DEFAULT '2',
  `password` varchar(191) CHARACTER SET latin1 NOT NULL,
  `status` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `avatar` text CHARACTER SET latin1,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `status`, `remember_token`, `avatar`, `about`, `fb`, `tw`, `gp`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', '2018-12-31 18:30:00', 1, '$2y$10$m3Pklqz.mZs0D/4W4nm12OljTtHmTCSsD5xhAMbaEu.2ZMwwJ3pFi', 1, 'hc2khbSUWImjvCVc0udEp2eUyNvuGpM4PBPx8BxXsYSj6ORh1VyQmVBtYbjI', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-05 16:25:03'),
(2, 'demo', 'demo@example.com', '2018-12-04 12:46:21', 2, '$2y$10$mdNqd4qG/lguzjs3e/QqiuNkArHQn8fUX5DPmXr/ph0F0GfcoezQO', 1, 'he6W107hLG5ePMmHH3yAjPvpilPFlbFp53ehuRCMTNpvbfNE0CxrYLc6gCts', NULL, NULL, NULL, NULL, NULL, '2018-12-04 12:45:11', '2018-12-07 11:57:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
