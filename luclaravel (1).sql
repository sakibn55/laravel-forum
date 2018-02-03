-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2018 at 08:56 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luclaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `subject_id`, `subject_type`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\Thread', 'created_thread', '2018-01-24 05:30:36', '2018-01-24 05:30:36'),
(2, 1, 2, 'App\\Thread', 'created_thread', '2018-01-24 06:02:02', '2018-01-24 06:02:02'),
(14, 6, 7, 'App\\Thread', 'created_thread', '2018-01-24 10:27:04', '2018-01-24 10:27:04'),
(15, 6, 8, 'App\\Reply', 'created_reply', '2018-01-24 10:27:21', '2018-01-24 10:27:21'),
(16, 6, 9, 'App\\Reply', 'created_reply', '2018-01-24 10:39:31', '2018-01-24 10:39:31'),
(17, 5, 8, 'App\\Thread', 'created_thread', '2018-01-24 13:31:56', '2018-01-24 13:31:56'),
(18, 4, 9, 'App\\Thread', 'created_thread', '2018-01-24 13:37:10', '2018-01-24 13:37:10'),
(19, 2, 10, 'App\\Reply', 'created_reply', '2018-01-24 13:40:24', '2018-01-24 13:40:24'),
(20, 3, 10, 'App\\Thread', 'created_thread', '2018-01-24 13:55:32', '2018-01-24 13:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', NULL, NULL),
(2, 'SQL', 'sql', NULL, NULL),
(3, 'C', 'c', NULL, NULL),
(4, 'PHP', 'php', NULL, NULL),
(5, 'Python', 'Python', '2018-01-24 08:26:35', '2018-01-24 08:26:35'),
(6, 'Node.js', 'Node.js', '2018-01-24 09:07:38', '2018-01-24 09:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `favorited_id` int(10) UNSIGNED NOT NULL,
  `favorited_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_07_161916_create_replies_table', 1),
(4, '2018_01_08_140403_create_channels_table', 1),
(5, '2018_01_08_160956_create_threads_table', 1),
(6, '2018_01_08_184231_create_favorites_table', 1),
(7, '2018_01_09_163618_create_activities_table', 1),
(8, '2018_01_11_165816_create_thread_subscriptions_table', 1),
(9, '2018_01_11_231308_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('42ec2af4-1e43-468e-84fa-2b5a6923729d', 'App\\Notifications\\YouWereMentioned', 5, 'App\\User', '{\"message\":\"Munna mentioned you in Wordpress\",\"link\":\"\\/threads\\/laravel\\/wordpress#reply-9\"}', '2018-01-24 12:45:08', '2018-01-24 10:39:31', '2018-01-24 12:45:08'),
('48158cf8-bab3-4915-a7e1-da2b1909d313', 'App\\Notifications\\YouWereMentioned', 4, 'App\\User', '{\"message\":\"parker mentioned you in laravel  project serve\",\"link\":\"\\/threads\\/laravel\\/laravel-project-serve#reply-10\"}', NULL, '2018-01-24 13:40:25', '2018-01-24 13:40:25'),
('b2cfc7d4-0103-4d76-bffb-15af6733e5b5', 'App\\Notifications\\YouWereMentioned', 2, 'App\\User', '{\"message\":\"Munna mentioned you in The new\",\"link\":\"\\/threads\\/laravel\\/the-new#reply-5\"}', '2018-01-24 10:06:34', '2018-01-24 10:06:14', '2018-01-24 10:06:34'),
('f7b4c732-521c-4fc4-999c-d8c0f59f78d7', 'App\\Notifications\\YouWereMentioned', 2, 'App\\User', '{\"message\":\"Munna mentioned you in Wordpress\",\"link\":\"\\/threads\\/laravel\\/wordpress#reply-8\"}', '2018-01-24 12:52:50', '2018-01-24 10:27:21', '2018-01-24 12:52:50'),
('fd578479-7534-4ac5-80c0-5f6a00e57537', 'App\\Notifications\\YouWereMentioned', 2, 'App\\User', '{\"message\":\"sakib mentioned you in new thread\",\"link\":\"\\/threads\\/laravel\\/new-thread#reply-2\"}', '2018-01-24 06:12:12', '2018-01-24 06:11:44', '2018-01-24 06:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(8, 7, 6, '<a href=\"/profiles/parker\">@parker</a>', '2018-01-24 10:27:21', '2018-01-24 10:27:21'),
(9, 7, 6, '<a href=\"/profiles/Shadip\">@Shadip</a>', '2018-01-24 10:39:31', '2018-01-24 10:39:31'),
(10, 9, 2, '<a href=\"/profiles/Tipu\">@Tipu</a> php artisan serve', '2018-01-24 13:40:24', '2018-01-24 13:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `visits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_reply_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `slug`, `user_id`, `channel_id`, `replies_count`, `visits`, `title`, `body`, `best_reply_id`, `created_at`, `updated_at`) VALUES
(7, 'wordpress', 6, 1, 2, 7, 'Wordpress', 'post', NULL, '2018-01-24 10:27:04', '2018-01-24 13:34:34'),
(8, 'laravel', 5, 1, 0, 1, 'laravel', 'what is laravel?', NULL, '2018-01-24 13:31:56', '2018-01-24 13:32:01'),
(9, 'laravel-project-serve', 4, 1, 1, 3, 'laravel  project serve', 'what is laravel project serve commmand', NULL, '2018-01-24 13:37:10', '2018-01-24 13:40:43'),
(10, 'database-migration', 3, 1, 0, 1, 'Database migration', 'what is the command of database migration table', NULL, '2018-01-24 13:55:31', '2018-01-24 13:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `thread_subscriptions`
--

CREATE TABLE `thread_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thread_subscriptions`
--

INSERT INTO `thread_subscriptions` (`id`, `user_id`, `thread_id`, `created_at`, `updated_at`) VALUES
(3, 5, 7, '2018-01-24 13:34:43', '2018-01-24 13:34:43'),
(4, 4, 9, '2018-01-24 13:37:24', '2018-01-24 13:37:24'),
(5, 2, 9, '2018-01-24 13:39:52', '2018-01-24 13:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_id` int(11) NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar_path`, `std_id`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'parker', 'sakibn555@gmail.com', '$2y$10$51T7T8KHi7hlkgZbS1Wb5eOEBL2FsXLNGCbf1MIvAn0KlCyWsPbiC', NULL, 1412020088, 'admin', 'WEYvvzGFoqGfSSpBjvhlJs5tAZ762efkb382ZcpvLFrIZFwCDLdkbOuzJDpA', '2018-01-24 05:29:21', '2018-01-24 05:29:21'),
(3, 'sakib', 'sakibn55@gmail.com', '$2y$10$SUwY5vRyOB2JYpeyNSUszOIxtHSnGGLZs2uihFJx3GTyUz7jd5Yf.', 'avatars/AGNbL9DOoWNE2mXhOgXwNz30OmYMcdGBZlN9xXmS.jpeg', 1412020077, 'user', 'LAYqQ2Q1bRJNwKKlv0l0iwKY4UUnRRmTmwarMwbvRO19iQ0DEmdKDV4oSdYm', '2018-01-24 06:10:42', '2018-01-24 07:12:19'),
(4, 'Tipu', 'tipu@gmail.com', '$2y$10$2CmmACEbkH5Tab2ne2PEg.0pG3llZ9Fu0zFHLDm0s0VtI4JeJLAzm', 'avatars/IBbxiQgQA4fGO8BW3L4WooJKZf2ietkvCYRfHNWl.jpeg', 1412020068, 'user', 'uxZFYWvz5HQ2ki7C0EO6DOmr5dO4TLdV6RWlEIIMTeuaGWjKapK8qfX56PsH', '2018-01-24 08:59:45', '2018-01-24 09:00:52'),
(5, 'Shadip', 'shadip000@gmail.com', '$2y$10$NgFdlm5bF8A.bjQdN/qnCeZ5L57jHOCUantgIW./i1tvlnOAQs6X6', 'avatars/rgwIiv6w1XKVmJFS36YVaEtqRRat5Ddy57J8v5Z1.jpeg', 1412020084, 'user', 'RzFgbg7zSRfJmjXs0ifeAFYH5imdf6LGJnC5fPFzGUqtq22H2tW81kgSSG4Y', '2018-01-24 09:01:54', '2018-01-24 09:02:01'),
(6, 'Munna', 'munna@gmail.com', '$2y$10$8mbISmsBvIuep33zZgRp1OSiAictSnzHyT1lFpZg/xQILcKgCFrgW', 'avatars/01xvCrlSAVzmmLIyLJd2W58us3wfwyLlm4kX3DDk.jpeg', 1412020078, 'user', NULL, '2018-01-24 09:03:08', '2018-01-24 09:03:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_index` (`user_id`),
  ADD KEY `activities_subject_id_index` (`subject_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_favorited_id_favorited_type_unique` (`user_id`,`favorited_id`,`favorited_type`);

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
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `threads_slug_unique` (`slug`),
  ADD KEY `threads_best_reply_id_foreign` (`best_reply_id`);

--
-- Indexes for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thread_subscriptions_user_id_thread_id_unique` (`user_id`,`thread_id`),
  ADD KEY `thread_subscriptions_thread_id_foreign` (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_std_id_unique` (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_best_reply_id_foreign` FOREIGN KEY (`best_reply_id`) REFERENCES `replies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  ADD CONSTRAINT `thread_subscriptions_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
