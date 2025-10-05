-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2025 at 11:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('00eb139a-c586-416d-af44-548537855c47', 3, 1, '..', NULL, 1, '2025-10-05 06:28:50', '2025-10-05 06:43:03'),
('284baaf7-647b-4c79-9817-270d407db454', 1, 2, 'hi', NULL, 0, '2025-10-04 18:09:40', '2025-10-04 18:09:40'),
('310c3c7e-ebf8-4002-91a2-e03ba357ea97', 1, 3, '..', NULL, 1, '2025-10-05 06:21:39', '2025-10-05 06:28:47'),
('319fcccb-99ed-4035-8a25-62151231520b', 4, 1, 'Hello', NULL, 1, '2025-10-05 06:04:01', '2025-10-05 06:20:29'),
('82954f7a-ecdf-4196-b611-fa08b644bb1e', 1, 1, 'hello', NULL, 1, '2025-10-03 16:09:17', '2025-10-03 16:09:44'),
('9e23f709-351b-4a20-86dd-e20afbfeb73d', 1, 3, 'hello', NULL, 1, '2025-10-04 18:08:59', '2025-10-04 18:10:26'),
('b04be475-9ea8-44a1-a7a1-5dfbc55d4b65', 3, 3, 'n', NULL, 1, '2025-10-04 15:29:12', '2025-10-04 15:36:54'),
('d49cfe50-1b67-4b05-a847-1d7ee195038b', 3, 3, '.', NULL, 1, '2025-10-04 11:37:13', '2025-10-04 11:39:57'),
('d73824a8-6d77-4c37-8f50-35376985ab27', 3, 2, '..', NULL, 0, '2025-10-05 06:41:13', '2025-10-05 06:41:13'),
('d8b8eae9-c240-4821-8d9c-0cacb98b66d4', 3, 1, 'what are you doing', NULL, 1, '2025-10-04 18:10:41', '2025-10-04 18:11:40'),
('e2f2bf19-92b8-4b3a-89b6-dad586748840', 4, 1, '😍', NULL, 1, '2025-10-05 06:04:38', '2025-10-05 06:20:29'),
('eef82c90-e432-4f39-910b-d2dc158673e5', 1, 1, '..', NULL, 1, '2025-10-04 16:45:58', '2025-10-04 16:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` enum('published','pending') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'right', 'published', '2025-10-03 15:32:48', '2025-10-03 15:32:48'),
(2, 2, 3, 'nice', 'published', '2025-10-05 06:28:32', '2025-10-05 06:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `contact_admins`
--

CREATE TABLE `contact_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unread',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_supports`
--

CREATE TABLE `customer_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `following_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `friend_id` bigint(20) UNSIGNED NOT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `accepted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 2, '2025-10-03 15:41:00', '2025-10-03 15:39:10', '2025-10-03 15:41:00', 'accepted'),
(2, 1, 3, NULL, '2025-10-05 06:20:50', '2025-10-05 06:20:50', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `members` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `uuid`, `user_id`, `icon`, `thumbnail`, `description`, `name`, `location`, `type`, `members`, `is_private`, `created_at`, `updated_at`) VALUES
(1, '72f6c54b-287a-46c7-89e2-9519882fcae4', 1, '1759523305.jpg', '1759523305.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', 'Friends', 'Pakistan', 'Gossip', 2, 0, '2025-10-03 15:28:25', '2025-10-05 06:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2025-10-03 15:35:39', '2025-10-03 15:35:39'),
(2, 3, 1, '2025-10-05 06:28:01', '2025-10-05 06:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 3, 2, '2025-10-03 15:35:31', '2025-10-03 15:35:31'),
(3, 1, 1, '2025-10-05 06:22:00', '2025-10-05 06:22:00'),
(4, 2, 1, '2025-10-05 06:22:10', '2025-10-05 06:22:10'),
(5, 3, 1, '2025-10-05 06:25:00', '2025-10-05 06:25:00'),
(6, 2, 3, '2025-10-05 06:27:50', '2025-10-05 06:27:50'),
(7, 4, 1, '2025-10-05 06:42:53', '2025-10-05 06:42:53');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_25_041420_create_pages_table', 1),
(7, '2024_02_25_041457_create_groups_table', 1),
(8, '2024_02_25_041519_create_posts_table', 1),
(9, '2024_02_25_041540_create_comments_table', 1),
(10, '2024_02_25_041552_create_likes_table', 1),
(11, '2024_02_25_041612_create_notifications_table', 1),
(12, '2024_02_25_041635_create_friends_table', 1),
(13, '2024_02_25_041656_create_followers_table', 1),
(14, '2024_02_25_041717_create_post_media_table', 1),
(15, '2024_02_25_041744_create_saved_posts_table', 1),
(16, '2024_02_25_041824_create_stories_table', 1),
(17, '2024_02_25_041836_create_story_comments_table', 1),
(18, '2024_02_25_041902_create_page_likes_table', 1),
(19, '2024_02_25_041909_create_group_members_table', 1),
(20, '2024_02_25_041932_create_settings_table', 1),
(21, '2024_02_25_042001_create_customer_supports_table', 1),
(22, '2024_03_02_114308_add_status_to_friends_table', 1),
(23, '2024_03_04_111157_create_shares_table', 1),
(24, '2024_03_04_112006_add_shares_column_to_posts_table', 1),
(25, '2024_03_06_170328_create_contact_admins_table', 1),
(26, '2024_03_06_999999_add_active_status_to_users', 1),
(27, '2024_03_06_999999_add_avatar_to_users', 1),
(28, '2024_03_06_999999_add_dark_mode_to_users', 1),
(29, '2024_03_06_999999_add_messenger_color_to_users', 1),
(30, '2024_03_06_999999_create_chatify_favorites_table', 1),
(31, '2024_03_06_999999_create_chatify_messages_table', 1),
(32, '2024_03_07_021049_create_sessions_table', 1),
(33, '2025_10_03_195653_add_partner_id_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `user_id`, `message`, `url`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'Like Post', 1, 'user01 liked your post', '/post/dd79822d-917b-4ef0-ac8d-0abcab714f49', '2025-10-05 06:19:30', '2025-10-03 15:22:25', '2025-10-05 06:19:30'),
(2, 'Save Post', 1, 'user01 saved your post', '/post/7ec30ccd-db23-48bb-8c02-189d9148a309', '2025-10-05 06:19:30', '2025-10-03 15:22:33', '2025-10-05 06:19:30'),
(3, 'New Post', 1, 'user01 created a new post in your squad', '/squad/72f6c54b-287a-46c7-89e2-9519882fcae4', '2025-10-05 06:19:30', '2025-10-03 15:30:34', '2025-10-05 06:19:30'),
(4, 'Follow Channel', 1, 'user02 followed your channel', '/channel/c76c092b-a637-4c87-94f4-5925da5db5d6', '2025-10-05 06:19:30', '2025-10-03 15:32:22', '2025-10-05 06:19:30'),
(5, 'Comment Post', 1, 'user02 commented on your post', '/post/7ec30ccd-db23-48bb-8c02-189d9148a309', '2025-10-05 06:19:30', '2025-10-03 15:32:48', '2025-10-05 06:19:30'),
(6, 'Like Post', 1, 'user02 liked your post', '/post/242dadf9-587e-48da-ad78-37e1ec1efc8f', '2025-10-05 06:19:30', '2025-10-03 15:35:31', '2025-10-05 06:19:30'),
(7, 'Joined Channel', 1, 'user02 joined your squad', '/squad/72f6c54b-287a-46c7-89e2-9519882fcae4', '2025-10-05 06:19:30', '2025-10-03 15:35:39', '2025-10-05 06:19:30'),
(8, 'Follow Channel', 1, 'user02 followed your channel', '/channel/c76c092b-a637-4c87-94f4-5925da5db5d6', '2025-10-05 06:19:30', '2025-10-03 15:36:16', '2025-10-05 06:19:30'),
(9, 'Save Post', 1, 'user02 saved your post', '/post/dd79822d-917b-4ef0-ac8d-0abcab714f49', '2025-10-05 06:19:30', '2025-10-03 15:36:48', '2025-10-05 06:19:30'),
(10, 'Friend Request', 2, 'user01 sent you a friend request', '/friends', '2025-10-03 15:48:49', '2025-10-03 15:39:10', '2025-10-03 15:48:49'),
(11, 'Friend Request Accepted', 1, 'user02 accepted your friend request', '/friends', '2025-10-05 06:19:30', '2025-10-03 15:41:00', '2025-10-05 06:19:30'),
(12, 'Share Post', 1, 'user01 shared your post', '/post/7ec30ccd-db23-48bb-8c02-189d9148a309', '2025-10-05 06:19:30', '2025-10-03 16:23:13', '2025-10-05 06:19:30'),
(13, 'Share Post', 1, 'user02 shared your post', '/post/dd79822d-917b-4ef0-ac8d-0abcab714f49', '2025-10-05 06:19:30', '2025-10-03 16:23:53', '2025-10-05 06:19:30'),
(14, 'Friend Request', 3, 'user01 sent you a friend request', '/friends', '2025-10-05 06:29:20', '2025-10-05 06:20:50', '2025-10-05 06:29:20'),
(15, 'Like Post', 1, 'user01 liked your post', '/post/7ec30ccd-db23-48bb-8c02-189d9148a309', NULL, '2025-10-05 06:22:00', '2025-10-05 06:22:00'),
(16, 'Like Post', 1, 'user01 liked your post', '/post/dd79822d-917b-4ef0-ac8d-0abcab714f49', NULL, '2025-10-05 06:22:10', '2025-10-05 06:22:10'),
(17, 'Share Post', 1, 'user01 shared your post', '/post/242dadf9-587e-48da-ad78-37e1ec1efc8f', NULL, '2025-10-05 06:24:53', '2025-10-05 06:24:53'),
(18, 'Like Post', 1, 'user01 liked your post', '/post/242dadf9-587e-48da-ad78-37e1ec1efc8f', NULL, '2025-10-05 06:25:00', '2025-10-05 06:25:00'),
(19, 'Like Post', 1, 'test1 liked your post', '/post/dd79822d-917b-4ef0-ac8d-0abcab714f49', NULL, '2025-10-05 06:27:50', '2025-10-05 06:27:50'),
(20, 'Joined Channel', 1, 'test1 joined your squad', '/squad/72f6c54b-287a-46c7-89e2-9519882fcae4', NULL, '2025-10-05 06:28:01', '2025-10-05 06:28:01'),
(21, 'Follow Channel', 1, 'test1 followed your channel', '/channel/c76c092b-a637-4c87-94f4-5925da5db5d6', NULL, '2025-10-05 06:28:17', '2025-10-05 06:28:17'),
(22, 'Comment Post', 1, 'test1 commented on your post', '/post/dd79822d-917b-4ef0-ac8d-0abcab714f49', NULL, '2025-10-05 06:28:32', '2025-10-05 06:28:32'),
(23, 'Save Post', 1, 'test1 saved your post', '/post/7ec30ccd-db23-48bb-8c02-189d9148a309', NULL, '2025-10-05 06:30:22', '2025-10-05 06:30:22'),
(24, 'Like Post', 3, 'user01 liked your post', '/post/b3f9317c-5f99-46f9-8c68-b8671ff50915', NULL, '2025-10-05 06:42:53', '2025-10-05 06:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `members` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `uuid`, `user_id`, `icon`, `thumbnail`, `description`, `name`, `location`, `type`, `members`, `is_private`, `created_at`, `updated_at`) VALUES
(1, 'c76c092b-a637-4c87-94f4-5925da5db5d6', 1, '1759522669.jpg', '1759522669.jpg', 'This is Tech related channel.', 'Programming', 'Pakistan', 'Tech', 2, 0, '2025-10-03 15:17:49', '2025-10-05 06:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `page_likes`
--

CREATE TABLE `page_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_likes`
--

INSERT INTO `page_likes` (`id`, `page_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '2025-10-03 15:36:16', '2025-10-03 15:36:16'),
(3, 1, 3, '2025-10-05 06:28:17', '2025-10-05 06:28:17');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` enum('published','pribate') NOT NULL DEFAULT 'published',
  `likes` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comments` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_page_post` tinyint(1) NOT NULL DEFAULT 0,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_group_post` tinyint(1) NOT NULL DEFAULT 0,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shares` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `uuid`, `user_id`, `title`, `content`, `thumbnail`, `status`, `likes`, `comments`, `is_page_post`, `page_id`, `is_group_post`, `group_id`, `deleted_at`, `created_at`, `updated_at`, `shares`) VALUES
(1, '7ec30ccd-db23-48bb-8c02-189d9148a309', 1, 'let started', '<div class=\'text-gray-700 dark:text-gray-100\'>hello</div>', '1759522270.jpg', 'published', 1, 1, 0, NULL, 0, NULL, NULL, '2025-10-03 15:11:10', '2025-10-05 06:22:00', 1),
(2, 'dd79822d-917b-4ef0-ac8d-0abcab714f49', 1, 'Lorem Ipsum', '<div class=\'text-gray-700 dark:text-gray-100\'>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>', '1759522862.jpg', 'published', 2, 1, 1, 1, 0, NULL, NULL, '2025-10-03 15:21:02', '2025-10-05 06:28:32', 1),
(3, '242dadf9-587e-48da-ad78-37e1ec1efc8f', 1, 'Hello Friends', '<div class=\'text-gray-700 dark:text-gray-100\'>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old</div>', '1759523434.jpg', 'published', 2, 0, 0, NULL, 1, 1, NULL, '2025-10-03 15:30:34', '2025-10-05 06:25:00', 1),
(4, 'b3f9317c-5f99-46f9-8c68-b8671ff50915', 3, 'Where can I get some?', '<div class=\'text-gray-700 dark:text-gray-100\'>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text</div>', '1759664450.jpg', 'published', 1, 0, 0, NULL, 0, NULL, NULL, '2025-10-05 06:40:50', '2025-10-05 06:42:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_media`
--

CREATE TABLE `post_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_posts`
--

CREATE TABLE `saved_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_posts`
--

INSERT INTO `saved_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-10-03 15:22:33', '2025-10-03 15:22:33'),
(2, 2, 2, '2025-10-03 15:36:48', '2025-10-03 15:36:48'),
(3, 3, 1, '2025-10-05 06:30:22', '2025-10-05 06:30:22');

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
('abpGCADC40K6HctWkpXfar8W2UP50Layn9fFMRMF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVlVlU1dvNTU3MDl5T3prcTNGWTdSclRKNk9sTTd4RlpETFlSMmNGbSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1759662945),
('AQpYr4xwhZ1jqODrGBenEzgBSipIBUxGubnUMeN8', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnR5aVZoM0k0bUZBZ1liMUgwVU5IeGIzZGlnWnNkUVhNeGtmZ01YSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9', 1759662298),
('ML1uYDHTgRlWhgsee8pj92SMcwFvD64ZOea7qLx7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR1FvTHE5M0Y4d3h4UFliSlBJbFduZ05uaVF1aFFvTWd3WnhjdTdpMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1759664587);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-10-03 16:23:13', '2025-10-03 16:23:13'),
(2, 2, 2, '2025-10-03 16:23:53', '2025-10-03 16:23:53'),
(3, 1, 3, '2025-10-05 06:24:53', '2025-10-05 06:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `story` varchar(255) NOT NULL,
  `status` enum('published','expired') NOT NULL DEFAULT 'published',
  `likes` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comments` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `story_comments`
--

CREATE TABLE `story_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `gender` enum('male','female','custom') NOT NULL,
  `relationship` enum('single','relationship','married','engage') NOT NULL,
  `partner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `partner` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `expiration_date` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  `banned_to` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `description`, `thumbnail`, `profile`, `gender`, `relationship`, `partner_id`, `partner`, `school`, `college`, `university`, `work`, `website`, `location`, `address`, `is_private`, `is_banned`, `expiration_date`, `banned_at`, `banned_to`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, '52006efa-4601-4acc-8631-c5a9d31cd4a0', 'User', '1', 'user01', 'user@gmail.com', NULL, NULL, '1759521827.jpg', '1759521795.png', 'male', 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hyderabad', 0, 0, NULL, NULL, NULL, '$2y$12$wrYkB7v/0bb4fG.gLui/7uWUrdBokZ5IFNA294KVM289anBiJGUk6', NULL, NULL, NULL, NULL, '2025-10-03 15:03:17', '2025-10-05 06:19:54', 0, 'avatar.png', 0, NULL),
(2, '3f2d3dbd-a22f-4705-a72d-4befd131e1f1', 'User', '02', 'user02', 'user1@gmail.com', NULL, NULL, NULL, '1759523524.jpg', 'female', 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '$2y$12$7sp7ZWTri7SW3w.BV1IO/u.yq1SiSBYnFowxgFZe2n0/hHMFB6F4q', NULL, NULL, NULL, NULL, '2025-10-03 15:32:04', '2025-10-03 15:47:27', 0, 'a049ec4e-1817-4adc-8367-410b0365cc08.jpg', 1, '#9C27B0'),
(3, 'd3fbd602-76e8-4950-ab75-2ca47e58dbdf', 'test', '01', 'test1', 'test@gmail.com', NULL, NULL, NULL, '1759595673.jpg', 'male', 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hyderabad', 0, 0, NULL, NULL, NULL, '$2y$12$dVj/T93hcDAY9BuBrgeHeeEouonVhVEtgL4FHREeH4N7BkiJMmSqK', NULL, NULL, NULL, NULL, '2025-10-04 11:34:36', '2025-10-05 06:41:20', 0, 'avatar.png', 1, '#3F51B5'),
(4, 'fd3cfdf9-c4d5-4498-a845-bb2bde8a45ef', 'admin', '1', 'admin1', 'admin@gmail.com', NULL, NULL, NULL, '1759662132.jpg', 'male', 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '$2y$12$skcD/x2AbNPpcxTaG7nKYe2iSESW6pMEiV9KHyNKKXNRPRaJipDty', NULL, NULL, NULL, NULL, '2025-10-05 06:02:18', '2025-10-05 06:04:47', 0, 'avatar.png', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `contact_admins`
--
ALTER TABLE `contact_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `customer_supports`
--
ALTER TABLE `customer_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_follower_id_foreign` (`follower_id`),
  ADD KEY `followers_following_id_foreign` (`following_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friends_user_id_foreign` (`user_id`),
  ADD KEY `friends_friend_id_foreign` (`friend_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_user_id_foreign` (`user_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_members_user_id_foreign` (`user_id`),
  ADD KEY `group_members_group_id_foreign` (`group_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_post_id_foreign` (`post_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_foreign` (`user_id`);

--
-- Indexes for table `page_likes`
--
ALTER TABLE `page_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_likes_page_id_foreign` (`page_id`),
  ADD KEY `page_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_page_id_foreign` (`page_id`),
  ADD KEY `posts_group_id_foreign` (`group_id`);

--
-- Indexes for table `post_media`
--
ALTER TABLE `post_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_media_post_id_foreign` (`post_id`);

--
-- Indexes for table `saved_posts`
--
ALTER TABLE `saved_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saved_posts_user_id_foreign` (`user_id`),
  ADD KEY `saved_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shares_user_id_foreign` (`user_id`),
  ADD KEY `shares_post_id_foreign` (`post_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_foreign` (`user_id`);

--
-- Indexes for table `story_comments`
--
ALTER TABLE `story_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_comments_story_id_foreign` (`story_id`),
  ADD KEY `story_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_partner_id_foreign` (`partner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_admins`
--
ALTER TABLE `contact_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_supports`
--
ALTER TABLE `customer_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_likes`
--
ALTER TABLE `page_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_media`
--
ALTER TABLE `post_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_posts`
--
ALTER TABLE `saved_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `story_comments`
--
ALTER TABLE `story_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_admins`
--
ALTER TABLE `contact_admins`
  ADD CONSTRAINT `contact_admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `followers_following_id_foreign` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_friend_id_foreign` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `friends_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_likes`
--
ALTER TABLE `page_likes`
  ADD CONSTRAINT `page_likes_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `page_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_media`
--
ALTER TABLE `post_media`
  ADD CONSTRAINT `post_media_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_posts`
--
ALTER TABLE `saved_posts`
  ADD CONSTRAINT `saved_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `story_comments`
--
ALTER TABLE `story_comments`
  ADD CONSTRAINT `story_comments_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `story_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
