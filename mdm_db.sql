-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 05:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `code`, `name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'BRD-RX5EZ', 'Aufderhar Inc', 'Inactive', 4, '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(2, 'BRD-YBE3F', 'Anderson, Simonis and Smith', 'Active', 6, '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(3, 'BRD-OXNGE', 'Ruecker, Hane and Fahey', 'Active', 2, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(4, 'BRD-3CB3S', 'DuBuque PLC', 'Inactive', 7, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(5, 'BRD-BROW2', 'Deckow-Homenick', 'Active', 6, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(6, 'BRD-WUNWT', 'Orn Ltd', 'Inactive', 7, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(7, 'BRD-U4XT9', 'O\'Reilly, Dickinson and Kling', 'Inactive', 3, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(8, 'BRD-UPYXR', 'Mann, Grant and Ritchie', 'Active', 2, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(9, 'BRD-4D3H8', 'Mills-Lueilwitz', 'Inactive', 1, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(10, 'BRD-IMOVL', 'Crist, McCullough and Wolf', 'Inactive', 3, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(11, 'BRD-Z2KUK', 'Towne and Sons', 'Active', 28, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(12, 'BRD-S3KXK', 'Heaney-Bergnaum', 'Active', 31, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(13, 'BRD-GDVVB', 'Brakus-Kris', 'Active', 34, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(14, 'BRD-WPNQF', 'Heidenreich-Leuschke', 'Active', 37, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(15, 'BRD-CMUHT', 'Block, Schneider and Walter', 'Inactive', 40, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(16, 'BRD-HGJYO', 'Bayer PLC', 'Active', 43, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(17, 'BRD-VWO9N', 'Kuhic Ltd', 'Inactive', 46, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(18, 'BRD-RZ56V', 'Langosh, Cormier and Sauer', 'Active', 49, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(19, 'BRD-PCQDU', 'Watsica, Johnston and Feeney', 'Inactive', 52, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(20, 'BRD-2BK7L', 'Jaskolski Group', 'Inactive', 55, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(21, 'BRD-XNQQP', 'Skiles, Pouros and Heathcote', 'Active', 58, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(22, 'BRD-ZPF2M', 'Ziemann and Sons', 'Active', 61, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(23, 'BRD-RSDJT', 'Collins-Abbott', 'Inactive', 64, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(24, 'BRD-LTPMK', 'Paucek Inc', 'Active', 67, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(25, 'BRD-XXSA9', 'Nolan-O\'Connell', 'Inactive', 70, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(26, 'BRD-TDHGO', 'Huels Ltd', 'Active', 73, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(27, 'BRD-NJNNK', 'Corkery PLC', 'Inactive', 76, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(28, 'BRD-0T0FS', 'Olson Inc', 'Active', 79, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(29, 'BRD-UFQVV', 'Kessler-Marquardt', 'Active', 82, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(30, 'BRD-YIIHT', 'Weimann-Raynor', 'Inactive', 85, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(31, 'BRD-3BRCH', 'Fahey and Sons', 'Inactive', 88, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(32, 'BRD-BN6EY', 'Predovic, Lang and Cartwright', 'Active', 91, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(33, 'BRD-BOCKM', 'Davis and Sons', 'Inactive', 94, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(34, 'BRD-RZ2EI', 'Welch Inc', 'Inactive', 97, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(35, 'BRD-XBB70', 'Murray-Wolf', 'Active', 100, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(36, 'BRD-Z0JOW', 'Nienow-Green', 'Inactive', 103, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(37, 'BRD-LEXEO', 'Hessel and Sons', 'Active', 106, '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(38, 'BRD-XPKGY', 'Schowalter, Berge and Gaylord', 'Active', 109, '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(39, 'BRD-BZIRJ', 'Beatty PLC', 'Inactive', 112, '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(40, 'BRD-PX1V4', 'Yost, Parker and Friesen', 'Inactive', 115, '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(41, 'BRD-TQMWR', 'Okuneva Inc', 'Active', 118, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(42, 'BRD-ILNKN', 'Pagac-Wuckert', 'Inactive', 121, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(43, 'BRD-Z9NCJ', 'Kshlerin, Predovic and Reinger', 'Inactive', 124, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(44, 'BRD-IIREE', 'Macejkovic-Brown', 'Inactive', 127, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(45, 'BRD-FWU4H', 'Romaguera, Krajcik and Jast', 'Inactive', 130, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(46, 'BRD-XFYOP', 'Greenfelder, West and Padberg', 'Active', 133, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(47, 'BRD-HJMMN', 'Roberts-Herman', 'Inactive', 136, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(48, 'BRD-NV5JA', 'Doyle-Champlin', 'Inactive', 139, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(49, 'BRD-SCZ1S', 'Zulauf-Morissette', 'Inactive', 142, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(50, 'BRD-PR6PY', 'Langworth, Wolf and Veum', 'Inactive', 145, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(51, 'BRD-GNY33', 'Corkery-Mante', 'Active', 148, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(52, 'BRD-MQL1Q', 'Bartoletti-Keeling', 'Inactive', 151, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(53, 'BRD-N3OZB', 'Batz-Streich', 'Active', 154, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(54, 'BRD-N3ZYL', 'Leannon-Gaylord', 'Active', 157, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(55, 'BRD-GVZWQ', 'Schaden, Adams and Jakubowski', 'Inactive', 160, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(56, 'BRD-X30QI', 'Beahan and Sons', 'Inactive', 163, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(57, 'BRD-2E05K', 'Thiel and Sons', 'Inactive', 166, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(58, 'BRD-GWWWV', 'Weissnat-Rosenbaum', 'Active', 169, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(59, 'BRD-0AEMJ', 'Bergnaum-Mitchell', 'Inactive', 172, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(60, 'BRD-POR4Y', 'Little, Batz and Upton', 'Inactive', 175, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(63, '6599', 'Xioami', 'Active', 179, '2025-04-09 07:40:51', '2025-04-09 07:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('mdm_cache_admin@sample.com|127.0.0.1', 'i:1;', 1744201295),
('mdm_cache_admin@sample.com|127.0.0.1:timer', 'i:1744201295;', 1744201295);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'CAT-F2ERH', 'possimus', 'Active', 15, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(2, 'CAT-PSWKU', 'quisquam', 'Active', 11, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(3, 'CAT-ZCCZE', 'explicabo', 'Inactive', 2, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(4, 'CAT-LHERS', 'omnis', 'Inactive', 3, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(5, 'CAT-POLZK', 'voluptas', 'Active', 16, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(6, 'CAT-ZL6HY', 'sit', 'Inactive', 4, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(7, 'CAT-M0Y61', 'incidunt', 'Inactive', 3, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(8, 'CAT-XEXOO', 'reprehenderit', 'Active', 16, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(9, 'CAT-SNJNR', 'ut', 'Inactive', 15, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(10, 'CAT-CMGLQ', 'provident', 'Active', 12, '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(11, 'CAT-EYOPH', 'consequatur', 'Inactive', 29, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(12, 'CAT-C7G3L', 'doloribus', 'Inactive', 32, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(13, 'CAT-DHSVT', 'esse', 'Active', 35, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(14, 'CAT-KHRLE', 'ea', 'Inactive', 38, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(15, 'CAT-5PGG8', 'qui', 'Active', 41, '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(16, 'CAT-6MYFO', 'voluptatem', 'Active', 44, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(17, 'CAT-DLQXP', 'veniam', 'Active', 47, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(18, 'CAT-HYUQL', 'aspernatur', 'Inactive', 50, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(19, 'CAT-33IBA', 'perspiciatis', 'Active', 53, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(20, 'CAT-PDPWY', 'vitae', 'Active', 56, '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(21, 'CAT-RRXQD', 'praesentium', 'Inactive', 59, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(22, 'CAT-4XDY8', 'quibusdam', 'Inactive', 62, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(23, 'CAT-ULWY8', 'et', 'Active', 65, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(24, 'CAT-OUVNQ', 'minima', 'Active', 68, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(25, 'CAT-JHPHL', 'quia', 'Active', 71, '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(26, 'CAT-CWGYX', 'esse', 'Active', 74, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(27, 'CAT-EK6EU', 'qui', 'Active', 77, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(28, 'CAT-YNIGD', 'minus', 'Inactive', 80, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(29, 'CAT-ZO14O', 'voluptas', 'Active', 83, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(30, 'CAT-59YUR', 'aut', 'Active', 86, '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(31, 'CAT-BQ9QA', 'quia', 'Active', 89, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(32, 'CAT-2QPIB', 'quia', 'Active', 92, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(33, 'CAT-RVJ2Q', 'quidem', 'Inactive', 95, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(34, 'CAT-4H9AY', 'molestiae', 'Inactive', 98, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(35, 'CAT-X6OOQ', 'expedita', 'Active', 101, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(36, 'CAT-44DFI', 'eligendi', 'Active', 104, '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(37, 'CAT-OCF6I', 'et', 'Active', 107, '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(38, 'CAT-JOUDD', 'explicabo', 'Active', 110, '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(39, 'CAT-XACH2', 'voluptas', 'Active', 113, '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(40, 'CAT-NGDJY', 'sit', 'Active', 116, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(41, 'CAT-ECGH8', 'animi', 'Active', 119, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(42, 'CAT-M8TQO', 'doloribus', 'Inactive', 122, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(43, 'CAT-DTOAO', 'earum', 'Active', 125, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(44, 'CAT-BORAH', 'laborum', 'Inactive', 128, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(45, 'CAT-ZAFBC', 'doloremque', 'Inactive', 131, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(46, 'CAT-HJE6T', 'amet', 'Inactive', 134, '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(47, 'CAT-WGN75', 'consectetur', 'Inactive', 137, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(48, 'CAT-7S0J0', 'et', 'Inactive', 140, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(49, 'CAT-HLMUP', 'qui', 'Active', 143, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(50, 'CAT-PJMGW', 'quod', 'Active', 146, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(51, 'CAT-0CLFU', 'natus', 'Inactive', 149, '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(52, 'CAT-HSULA', 'voluptatem', 'Active', 152, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(53, 'CAT-XMG2Q', 'iste', 'Inactive', 155, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(54, 'CAT-JNW23', 'occaecati', 'Active', 158, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(55, 'CAT-OGS6U', 'tempora', 'Inactive', 161, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(56, 'CAT-UCK8V', 'molestias', 'Inactive', 164, '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(57, 'CAT-ABYYS', 'et', 'Inactive', 167, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(58, 'CAT-BKYKD', 'fuga', 'Inactive', 170, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(59, 'CAT-7FNFO', 'alias', 'Inactive', 173, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(60, 'CAT-CJVPP', 'consequuntur', 'Active', 176, '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(61, 'men', 'Men', 'Active', 1, '2025-04-08 16:19:21', '2025-04-08 16:19:21'),
(64, '8291e', 'Smart Phones', 'Active', 179, '2025-04-09 07:41:38', '2025-04-09 07:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `code`, `name`, `brand_id`, `category_id`, `attachment`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ITM-0RLBVH', 'numquam distinctio voluptatum', 9, 9, NULL, 'Inactive', 27, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(2, 'ITM-29STWT', 'sunt quia consequatur', 3, 6, NULL, 'Inactive', 24, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(3, 'ITM-5KXAU0', 'et minus excepturi', 3, 8, NULL, 'Inactive', 17, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(4, 'ITM-SJK9XO', 'enim dolor atque', 7, 8, NULL, 'Active', 19, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(5, 'ITM-FW4WWB', 'sint animi dolor', 7, 3, NULL, 'Inactive', 17, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(6, 'ITM-VFD3VF', 'rerum consequatur provident', 3, 7, NULL, 'Inactive', 10, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(7, 'ITM-K8KVK1', 'excepturi tempora nam', 4, 1, NULL, 'Inactive', 3, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(8, 'ITM-RTQHXL', 'voluptatem et et', 4, 4, NULL, 'Inactive', 19, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(9, 'ITM-JFTKVE', 'aut voluptates itaque', 8, 8, NULL, 'Active', 21, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(10, 'ITM-MCZ8LI', 'omnis sunt consequatur', 2, 2, NULL, 'Inactive', 10, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(11, 'ITM-OT2PNT', 'quis optio tempore', 6, 10, NULL, 'Active', 5, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(12, 'ITM-UELDPD', 'provident ad modi', 7, 1, NULL, 'Active', 13, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(13, 'ITM-Y8PMOB', 'dignissimos veniam voluptates', 7, 8, NULL, 'Active', 19, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(14, 'ITM-ECW6OH', 'aliquid consequatur veritatis', 3, 6, NULL, 'Inactive', 4, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(15, 'ITM-MRJL8J', 'repellendus ducimus quo', 10, 3, NULL, 'Active', 12, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(16, 'ITM-ZMIP2E', 'eum velit non', 4, 6, NULL, 'Active', 27, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(17, 'ITM-CGH1JR', 'qui quidem aut', 4, 8, NULL, 'Inactive', 2, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(18, 'ITM-FEJIXY', 'accusantium occaecati provident', 2, 9, NULL, 'Inactive', 26, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(19, 'ITM-PCFZIV', 'recusandae architecto quos', 7, 4, NULL, 'Inactive', 5, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(20, 'ITM-7JERYL', 'eum quisquam voluptatem', 5, 8, NULL, 'Inactive', 19, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(21, 'ITM-IGISKB', 'consequatur placeat rerum', 7, 7, NULL, 'Inactive', 2, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(22, 'ITM-QRQCU2', 'itaque accusamus rerum', 2, 2, NULL, 'Active', 2, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(23, 'ITM-Z1YG8X', 'facere voluptatem qui', 6, 5, NULL, 'Active', 22, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(24, 'ITM-WBQHBQ', 'ut sint consequatur', 2, 8, NULL, 'Inactive', 5, '2025-04-08 15:37:42', '2025-04-08 15:37:42'),
(25, 'ITM-JVXXZ0', 'quos omnis fugiat', 2, 2, NULL, 'Active', 25, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(26, 'ITM-MBPNVA', 'est placeat aut', 7, 5, NULL, 'Inactive', 27, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(27, 'ITM-JEN3NM', 'dolor dolores distinctio', 10, 5, NULL, 'Inactive', 25, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(28, 'ITM-EX3Z5P', 'dignissimos nobis ab', 4, 2, NULL, 'Inactive', 3, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(29, 'ITM-PTR3VV', 'cumque perferendis dolor', 3, 10, NULL, 'Active', 8, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(30, 'ITM-BRPMYJ', 'quod eaque doloribus', 5, 9, NULL, 'Active', 4, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(31, 'ITM-UNXXA8', 'quibusdam deleniti maiores', 10, 5, NULL, 'Active', 17, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(32, 'ITM-VZJQWW', 'assumenda et magnam', 6, 5, NULL, 'Active', 1, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(33, 'ITM-E9BZFA', 'minus asperiores dolores', 6, 3, NULL, 'Active', 13, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(34, 'ITM-QFZ5GJ', 'ipsam rerum id', 4, 7, NULL, 'Inactive', 3, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(35, 'ITM-GXY274', 'eaque hic et', 5, 3, NULL, 'Active', 19, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(36, 'ITM-NMRIQV', 'sed sit id', 4, 2, NULL, 'Active', 13, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(37, 'ITM-GFEVVC', 'modi est suscipit', 5, 1, NULL, 'Inactive', 19, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(38, 'ITM-NPGKXD', 'qui cupiditate necessitatibus', 1, 7, NULL, 'Active', 9, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(39, 'ITM-ZSDXSB', 'inventore et dolore', 3, 9, NULL, 'Active', 22, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(40, 'ITM-VMJSRC', 'hic ducimus commodi', 5, 6, NULL, 'Inactive', 17, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(41, 'ITM-YEOCJV', 'expedita at magni', 6, 7, NULL, 'Active', 14, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(42, 'ITM-CTULNU', 'expedita et qui', 2, 3, NULL, 'Active', 2, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(43, 'ITM-SFLJMD', 'omnis tenetur dolorem', 4, 9, NULL, 'Inactive', 3, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(44, 'ITM-BO9FV9', 'consequatur ducimus sit', 9, 4, NULL, 'Active', 2, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(45, 'ITM-A6SORW', 'beatae quasi sed', 7, 1, NULL, 'Active', 20, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(46, 'ITM-MOVPGU', 'eos voluptatum quasi', 2, 10, NULL, 'Active', 26, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(47, 'ITM-70TCH9', 'sed qui expedita', 6, 9, NULL, 'Active', 22, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(48, 'ITM-OQ7PL9', 'aut quibusdam aut', 4, 8, NULL, 'Inactive', 5, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(49, 'ITM-L6RFQU', 'earum minus aliquid', 1, 10, NULL, 'Active', 8, '2025-04-08 15:37:43', '2025-04-08 15:37:43'),
(50, 'ITM-IGDLKU', 'saepe doloremque et', 4, 8, NULL, 'Inactive', 9, '2025-04-08 15:37:43', '2025-04-08 15:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_08_205053_create_brands_table', 1),
(5, '2025_04_08_205118_create_categories_table', 1),
(6, '2025_04_08_205511_create_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2Fsq5c3blX7FUzKCNaYgP9gwJHbmW1SxPle4HwlU', 179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTRxQ0tNUkV5MnBBZWlQUlJBU0JHcVl5QVFXTnNnRUJBZE0wWktiZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE3OTt9', 1744213461),
('PocAmDJYPkClmJFs71VfuSqDKxYZ5djBPhKC32T6', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMjdGcEhaS0ZQb0NNeTlWV2dBSGJTNWluTHBiNlZZWVppVGsxTk5PNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1744213453);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-04-08 15:37:29', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'UOKZBH9Z5aVRlZjHSoy3Go2bxTPNocyHTGroTldYXU9NLV4nen1LiK5w78Mj', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(2, 'Admin User', 'admin@example.com', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 1, '4nNBh5lPbawlwEUfeaVHDm1CMJWflxE67FloF3iNVtwWvEMZrk137ZBrLYAl', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(3, 'Daphne Yundt', 'goldner.mose@example.org', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'wpDZhgB8fP', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(4, 'Mr. Larue Kunze', 'vkertzmann@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'mnyyAhRlII', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(5, 'Loy O\'Conner', 'bartell.zola@example.com', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'qUyPC6l9Ey', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(6, 'Janick Torp', 'swilkinson@example.org', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'H2A4TVXs21', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(7, 'Eldon Cole', 'eduardo28@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'V2b0uMZHUt', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(8, 'Landen Schultz', 'little.wilber@example.org', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '8zJ8dtZ6VD', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(9, 'Ahmad Stokes', 'xthompson@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '6IBXqfhYNf', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(10, 'Miss Yesenia Kertzmann Sr.', 'jonatan.mclaughlin@example.org', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'CFquW7KBvO', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(11, 'Matilde Dickens', 'cruickshank.delta@example.com', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'KFXs8EZfTn', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(12, 'Mr. Federico Franecki', 'lula76@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'g9GPeOQMRT', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(13, 'Maybell Schimmel', 'margot.swift@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Tcfxw4Iask', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(14, 'Prof. Harrison King', 'barrows.sherman@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'nJPoXNrphW', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(15, 'Jennyfer Zieme MD', 'lonny23@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '2r50h7nRNx', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(16, 'Prof. Laurianne Swaniawski DVM', 'jkozey@example.net', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'LY0iZz1i8k', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(17, 'Jeramie Koepp', 'maximillian68@example.org', '2025-04-08 15:37:30', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'jA14lMMEVe', '2025-04-08 15:37:30', '2025-04-08 15:37:30'),
(18, 'Dr. Jaden Carroll Sr.', 'hweber@example.net', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'kOF7zQFSR2', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(19, 'Mr. Lorenz Pfeffer', 'rgleichner@example.net', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'mHPEo5QKys', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(20, 'Aniyah Kovacek', 'will.virgie@example.com', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'u8OGyumjtn', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(21, 'Giovanna Johnston', 'lsauer@example.com', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'MplcqVTPvr', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(22, 'Prof. Muriel Heidenreich', 'deangelo.jaskolski@example.net', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'sg4QIuGtYa', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(23, 'Miss Amiya Goldner', 'carli59@example.net', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'sJqa3mDgCL', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(24, 'Ignacio Hyatt', 'mstoltenberg@example.com', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'pTCk1m5df3', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(25, 'Alexandra Lakin', 'lysanne01@example.com', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'bzpGMuiyMe', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(26, 'Ms. Martine Bogisich DVM', 'haag.rowena@example.org', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '3TpLIXBaSt', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(27, 'Aliyah Reichel', 'judy80@example.org', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '2QLz45SVpc', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(28, 'Frederic Ebert', 'darwin53@example.net', '2025-04-08 15:37:31', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '9hCBLZLftL', '2025-04-08 15:37:31', '2025-04-08 15:37:31'),
(29, 'Hulda Gutmann', 'gislason.silas@example.net', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'zwQBDUv5DZ', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(30, 'Sandrine Kiehn', 'odonnelly@example.net', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'rWKfV1i4uL', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(31, 'Margaretta Stiedemann', 'bertha.labadie@example.net', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'I9TM0pqBUu', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(32, 'Ricky Fisher I', 'omccullough@example.org', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'qGYgyiMB9i', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(33, 'Lilly Walsh', 'zkuhic@example.org', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'FzMXj1nnNj', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(34, 'Gregory Mohr', 'shyann.berge@example.net', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'FGntmwRoXr', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(35, 'Lacey Harber', 'bwilliamson@example.org', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'rCkD2mYRKq', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(36, 'Dr. Tommie Goodwin', 'dhermiston@example.com', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'ayn6aKlx3q', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(37, 'Frieda Fay', 'padberg.lemuel@example.org', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'C2nE4qeHSR', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(38, 'Tamia Crist IV', 'hailey.pfannerstill@example.com', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'WQhjxla8f8', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(39, 'Rodrigo Kautzer', 'eda19@example.org', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'C3a5mT4a3o', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(40, 'Yasmeen Dach', 'omcdermott@example.com', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'veciJDdfi7', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(41, 'Prof. Philip Pouros', 'swift.maximillia@example.net', '2025-04-08 15:37:32', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'WrjFyoDEhY', '2025-04-08 15:37:32', '2025-04-08 15:37:32'),
(42, 'Kaycee Padberg', 'valerie.ernser@example.net', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'QK4EeA7Nqi', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(43, 'Guillermo McClure', 'sauer.colin@example.org', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'LXpuI10WIr', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(44, 'Ms. Imelda Schmeler Jr.', 'nwintheiser@example.com', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'yxrIqU07Q5', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(45, 'Florine Hamill', 'joyce31@example.net', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '673XwvwrRG', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(46, 'Madelyn Gislason', 'gardner.wyman@example.org', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'c7kIFCukxr', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(47, 'Mr. Thad O\'Kon', 'stehr.jennie@example.com', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'pFVymj4AwI', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(48, 'Tierra Wilkinson', 'icie28@example.net', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '4AWjBhUENZ', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(49, 'Gunnar Johnston', 'bbruen@example.com', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'hgIKNI2Mjl', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(50, 'Ms. Shanon Runolfsdottir', 'darien31@example.net', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Aev2hcOIKN', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(51, 'Aleen Smitham', 'gilda.buckridge@example.com', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '5Cf6usFUfD', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(52, 'Guy Thompson', 'alexander.bahringer@example.net', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'bGg1rJWCQX', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(53, 'Sim Marks', 'iconnelly@example.com', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'NmNicmqjbi', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(54, 'Mrs. Eunice Runolfsson', 'farrell.antonina@example.org', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Rch9yGTOlj', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(55, 'Coy Bergstrom', 'cgrimes@example.com', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'eGowSUHRsR', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(56, 'Markus Heidenreich', 'ibednar@example.com', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'BvQiUj5P8E', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(57, 'Dr. Crawford Feeney', 'art44@example.org', '2025-04-08 15:37:33', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'awpMP4Q8Eq', '2025-04-08 15:37:33', '2025-04-08 15:37:33'),
(58, 'Mortimer Koch', 'nwehner@example.com', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '6B5nZ1IVvA', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(59, 'Lexus Homenick IV', 'oaufderhar@example.org', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'L1GnMKI7gY', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(60, 'Dr. Erika Weimann', 'sonia02@example.com', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'lq2JBwwv87', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(61, 'Lewis Fritsch', 'anastasia91@example.net', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'r2ajp2yBUD', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(62, 'Gianni Goodwin PhD', 'isobel.schumm@example.org', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Ytgvscmiu1', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(63, 'Miss Laury Maggio Jr.', 'tito.witting@example.org', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'seHaXZNlVB', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(64, 'Frieda Strosin', 'maximillian99@example.org', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'iOSUrNIn7B', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(65, 'Keanu Conroy', 'hudson92@example.net', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'rW8EG5qOiB', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(66, 'Myrl Heaney', 'ollie43@example.com', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'O75cLIDOyY', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(67, 'Braulio Farrell III', 'dare.milton@example.com', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'cKOhzeK7Wq', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(68, 'Mittie Maggio', 'wpacocha@example.com', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'zLFmP6T4U2', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(69, 'Theron Bins', 'heloise60@example.net', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '5b1WFOeE6Z', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(70, 'Brennan Steuber', 'bryana95@example.net', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '5SfVwCaDDl', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(71, 'Edward Franecki', 'lois44@example.com', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'FbvMYWYODg', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(72, 'Dr. Kaden Langworth II', 'gianni97@example.net', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'KizfAJXFFN', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(73, 'Ms. Madaline Turcotte I', 'bbuckridge@example.net', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '0MNYP3lf5q', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(74, 'Mr. Cristobal Ziemann V', 'lsipes@example.net', '2025-04-08 15:37:34', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'xPasf3hSEJ', '2025-04-08 15:37:34', '2025-04-08 15:37:34'),
(75, 'Elinore Lubowitz', 'mariano41@example.org', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'miwfzhVl8H', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(76, 'Eleazar Keeling II', 'florian38@example.org', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '0AsYpNOuTa', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(77, 'Prof. Ariane Harris II', 'alize.swift@example.net', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '7OcJVFX6QB', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(78, 'Amelia Bahringer', 'nnicolas@example.com', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '7vqOTBExf4', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(79, 'Marian Pfannerstill', 'zauer@example.com', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'exbee2lYZw', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(80, 'Arnulfo Gleichner V', 'zlangosh@example.net', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'X9RxrIaU6f', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(81, 'Mohammed Wiegand', 'austen63@example.org', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'AcvGOQ3rtN', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(82, 'Madie Greenfelder', 'kilback.herman@example.com', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'z4ElvyGHoJ', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(83, 'Kamryn O\'Kon', 'otto83@example.org', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'fAgXs3F4ti', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(84, 'Miss Melba Feest', 'jude35@example.com', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'mCy0fqtp6u', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(85, 'Dr. Kaylin Gerhold II', 'berge.aimee@example.com', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '7PQod2RIlQ', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(86, 'Luisa Stark', 'atremblay@example.net', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'BfATUOOZmp', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(87, 'Dr. Timmothy Schumm MD', 'durgan.dereck@example.net', '2025-04-08 15:37:35', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'zwznkLruva', '2025-04-08 15:37:35', '2025-04-08 15:37:35'),
(88, 'Caleigh Hermiston', 'dolly.schmidt@example.com', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'wrzoy9V23i', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(89, 'Vergie Ullrich I', 'hackett.branson@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'bEAk6UVkw7', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(90, 'Rowland Bruen', 'thompson.demarco@example.org', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'FEsqxoHCxD', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(91, 'Guiseppe Emard', 'gorczany.joany@example.com', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '7sSl1BzeIP', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(92, 'Dr. Presley Littel DVM', 'felton07@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'W8u0e13S6d', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(93, 'Bailee Collier', 'christina64@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'BG6459TtZd', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(94, 'Dr. Raven Luettgen', 'sbruen@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'wu99d3HWmf', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(95, 'Walton Kunze', 'utrantow@example.org', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Prrk6iX2RP', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(96, 'Torey Donnelly', 'abbie06@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'SUbYCDvpOP', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(97, 'Pablo Wolff DVM', 'dooley.tristin@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'tG81BpBWxU', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(98, 'Christiana Lockman', 'scot62@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'R3NO2cptpO', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(99, 'Dr. Branson Hand Jr.', 'zita75@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '5zwQVdVcpU', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(100, 'Kaleigh Stark', 'feest.kassandra@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'JfVadvsKw9', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(101, 'Diego Kutch', 'olebsack@example.com', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'IObXUg7ppX', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(102, 'Christiana Ortiz', 'wunsch.ruthie@example.org', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '3GlqXJNOYP', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(103, 'Bruce Metz', 'ward.wunsch@example.org', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'VYqdfKiB5k', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(104, 'Verona Hoeger II', 'jess25@example.net', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Ja8h6FyziX', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(105, 'Prof. Deshawn Rippin', 'rau.ulices@example.org', '2025-04-08 15:37:36', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '0Lyy3wgEMS', '2025-04-08 15:37:36', '2025-04-08 15:37:36'),
(106, 'Dr. Marco Zboncak Sr.', 'gibson.kole@example.com', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Z1JEFsFgcF', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(107, 'Meda Hermiston', 'bednar.tony@example.com', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'YljmuJukuU', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(108, 'Nya Gulgowski II', 'gilberto.lebsack@example.net', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'ZrAiHYwRJP', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(109, 'Kayli Abshire', 'emely80@example.net', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '6ja7aEWsBm', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(110, 'Josefina Raynor', 'xstrosin@example.net', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '7ocwlyDoGJ', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(111, 'Prof. Augustus Fritsch PhD', 'alice.schimmel@example.net', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'KZnufzQj15', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(112, 'Harry Breitenberg', 'watson91@example.org', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'V4uKEGRZer', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(113, 'Kaden Luettgen', 'nolan33@example.org', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'QrewzAZ6C7', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(114, 'August Towne', 'ola.roob@example.com', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'nuXQZNInff', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(115, 'Miss Marcia Ruecker', 'duane.farrell@example.com', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'rX4XBEOcGH', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(116, 'Elda Wolf', 'fritsch.abbie@example.com', '2025-04-08 15:37:37', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'XTHU8zzpSs', '2025-04-08 15:37:37', '2025-04-08 15:37:37'),
(117, 'Elna Christiansen', 'valentin16@example.net', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'FJtsP7d6yh', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(118, 'Jeanne Reichert V', 'molly.ebert@example.net', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'MR8lWH1hIN', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(119, 'Dr. Axel Wisozk DVM', 'cornelius.bartoletti@example.net', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '42MbSNRHqx', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(120, 'Osborne Rath', 'dbernhard@example.org', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'aNicjaAlwd', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(121, 'Prof. Ellsworth Gusikowski', 'frami.warren@example.com', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '7D1jiNwGiV', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(122, 'Dr. Jose Brakus II', 'lowe.rosalyn@example.org', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'foDi0Gy3yY', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(123, 'Prof. Orin Schulist DDS', 'ramona03@example.com', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'GiBacrJGPV', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(124, 'Mrs. Irma Fritsch Sr.', 'webster.huels@example.com', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'qPXfI6nSAg', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(125, 'Parker Rippin', 'lea.pfeffer@example.net', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'G6v1iu0ZcF', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(126, 'Alexanne Parisian', 'whermiston@example.org', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'jWywCDfcar', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(127, 'Miss Kaci Kuhic', 'frederik.osinski@example.net', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'kPqiRKNWpt', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(128, 'Ladarius Hane', 'cleve.koepp@example.com', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'FKc1X4w2M4', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(129, 'Layla Becker', 'ablick@example.org', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'fvAveojqFx', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(130, 'Cassie Langworth PhD', 'douglas.rickie@example.com', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'kvQnMlzpJ6', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(131, 'Arely McDermott', 'jebert@example.org', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'BG1pENMujr', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(132, 'Prof. Green Schmeler V', 'rupert.cronin@example.com', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'bko9QVfEk2', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(133, 'Rolando Orn', 'jordan51@example.org', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'QFqSc37y8H', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(134, 'Dr. Serena Howe', 'kbergstrom@example.org', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'OJftP1lRWQ', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(135, 'Mr. Brent Bartell', 'marcelle.abernathy@example.com', '2025-04-08 15:37:38', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'TFuyWOsGl5', '2025-04-08 15:37:38', '2025-04-08 15:37:38'),
(136, 'Mr. Tristin Marks PhD', 'ruecker.audie@example.org', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '2JBLJtWTab', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(137, 'Mrs. Kaitlin Leffler DVM', 'winona54@example.net', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '7aHsFkm8Iv', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(138, 'Prof. Clair Bernier DDS', 'olaf45@example.net', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'ooED25lyfN', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(139, 'Mrs. Katlyn Flatley Sr.', 'tavares59@example.net', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'gef7vyHUmV', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(140, 'Kaya Kuhic', 'etha43@example.com', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '3YonqXGmjM', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(141, 'Darwin Schmitt', 'blind@example.org', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'EWAGQKoVte', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(142, 'Prof. Elmo Schoen', 'jackson81@example.com', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'aCllnzzlTa', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(143, 'Hipolito Bogan', 'naomie29@example.org', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'xwxl3rMAIo', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(144, 'Jannie Rolfson', 'hettinger.nels@example.org', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'wRfG0mq5jB', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(145, 'Bud McDermott', 'adalberto48@example.net', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '3gIdreurIS', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(146, 'Prof. Nicholas Gottlieb', 'fmraz@example.net', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'kNMTunFIoG', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(147, 'Westley Metz MD', 'amely.kulas@example.com', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'j4qT6ZnN2K', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(148, 'Ivory Nitzsche', 'delores.stiedemann@example.com', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'kxHIYuOekT', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(149, 'Jade Haley I', 'emmerich.chase@example.org', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'aO6nKblGlz', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(150, 'Sandy Goldner', 'waters.mackenzie@example.org', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'qgktfHEcqv', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(151, 'Prof. Bo West DVM', 'hartmann.clemens@example.net', '2025-04-08 15:37:39', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Vo6R9GPFVG', '2025-04-08 15:37:39', '2025-04-08 15:37:39'),
(152, 'Unique Ruecker', 'lehner.cristal@example.net', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'jEXmk8N29H', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(153, 'Santiago Considine', 'laney12@example.net', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'ExsbJNVy8m', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(154, 'Irma Yundt', 'elmira42@example.net', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'GsZEcinUB9', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(155, 'Else Leffler', 'keanu83@example.com', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'pB2pOeUoW8', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(156, 'Lorenza Cormier', 'carole17@example.org', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '0Qkxh8Auou', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(157, 'Neil Hill', 'zjohns@example.com', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '2OBreFMxRS', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(158, 'Clara Daniel', 'isabell.hettinger@example.com', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'ig8Z307ks7', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(159, 'Ivory Ankunding', 'vlarkin@example.com', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'SEg5vQ8RRJ', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(160, 'Mr. Torey Dooley', 'pierre.simonis@example.net', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'Aoa9mkFtIU', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(161, 'Horacio Maggio', 'lilly.schmitt@example.org', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '8QPYAbel0Y', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(162, 'Madge Boyle', 'nicolas.annabell@example.net', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'OaEf1blaVU', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(163, 'Rudolph Wiza', 'nwalter@example.net', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'A6iNpkhxBs', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(164, 'Jasper Kris', 'marcelo.stoltenberg@example.com', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'wmPSj55pKm', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(165, 'Carolina Predovic DVM', 'murazik.rhoda@example.com', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'qGk4Iqve9W', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(166, 'Dr. Faustino Hodkiewicz MD', 'roberta.blanda@example.net', '2025-04-08 15:37:40', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '1FIF8zrjMw', '2025-04-08 15:37:40', '2025-04-08 15:37:40'),
(167, 'Avery Lebsack', 'ibartell@example.org', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'JSRVTGjKLv', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(168, 'Prof. Camden Rice II', 'samir.herzog@example.com', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, '5zD5IMutIm', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(169, 'Reta Leuschke', 'nicholaus.marks@example.com', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'utyyxtQZ5j', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(170, 'Clinton Williamson', 'marjory97@example.com', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'DKDudqCXNO', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(171, 'Ms. Stacey Grady III', 'vturner@example.org', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'LmLQGtM2CK', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(172, 'Garth Gulgowski', 'margarita.daugherty@example.com', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'IWGda3H4Sj', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(173, 'Keith Emard', 'ozulauf@example.com', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'TwdDkqSkKs', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(174, 'Garett Watsica', 'beryl.daniel@example.net', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'UASupm9Z6S', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(175, 'Tyrell Ebert', 'voconnell@example.com', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'C9ifvPHHA4', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(176, 'Camille Braun', 'hkulas@example.org', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'BMzteDaFyg', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(177, 'Dr. Garnet Berge IV', 'alta92@example.net', '2025-04-08 15:37:41', '$2y$12$qXw2RitNXx8SUTsNjmdrOu.gqeoe/jt6gbkpn66mSYC16lcCBjdPW', 0, 'NMyXWgZA8b', '2025-04-08 15:37:41', '2025-04-08 15:37:41'),
(179, 'Anushka lakshan', '4thhokageanushka@gmail.com', NULL, '$2y$12$dZiRurjDfbf8Kb7IdHYl6.NP5M/rtgDjHXL6.XRb5eNxvHGZCU1Eq', 0, NULL, '2025-04-09 06:48:11', '2025-04-09 06:48:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_code_unique` (`code`),
  ADD KEY `brands_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_code_unique` (`code`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_code_unique` (`code`),
  ADD KEY `items_brand_id_foreign` (`brand_id`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
