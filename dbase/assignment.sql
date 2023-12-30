-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 06:29 PM
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
-- Database: `assignment`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9fa6ade1c191f53fa19c5dfc1efc9823ce6877bc8f5e94dcb524ee17e0f3ac24a7f66cf3719ddab7', 1, 1, 'authToken', '[]', 0, '2023-12-30 07:29:40', '2023-12-30 07:29:40', '2024-12-30 12:59:40'),
('e72be416111213088c612fd4a3a95f2494cb9a2d5eb887dc0515718b2269d66e17b3ca7f99acb539', 1, 1, 'authToken', '[]', 1, '2023-12-30 07:30:51', '2023-12-30 07:31:29', '2024-12-30 13:00:51'),
('eda8c0fde6585ec1b1928cd7e2d28747993a8db589ea15ede2cbdc3dd36501ded9da82368fc931c2', 1, 1, 'authToken', '[]', 1, '2023-12-30 07:09:48', '2023-12-30 07:28:57', '2024-12-30 12:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'r9DB79O7pb8KqnL3j4hbvqeErGk3yFi4YCCubzhf', NULL, 'http://localhost', 1, 0, 0, '2023-12-30 03:48:27', '2023-12-30 03:48:27'),
(2, NULL, 'Laravel Password Grant Client', 'FgV9oWqDeXduhUoZ4kcSZDONpZOze7yo2Sv8TuMr', 'users', 'http://localhost', 0, 1, 0, '2023-12-30 03:48:27', '2023-12-30 03:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-30 03:48:27', '2023-12-30 03:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', 'f5ec1404884bfdc623b05137e3077b91efa74d7a136ddeb93bdd310c54a81712', '[\"*\"]', NULL, NULL, '2023-12-30 03:17:16', '2023-12-30 03:17:16'),
(2, 'App\\Models\\User', 1, 'authToken', '45cdca147f017538d71ef8aeef12b63177ff9ba70ee1e5ae4d358b0fc8a0b5d3', '[\"*\"]', NULL, NULL, '2023-12-30 03:19:05', '2023-12-30 03:19:05'),
(3, 'App\\Models\\User', 1, 'assignment', '0cccafad24fa38d156627ccf83323e3a58a07c159ecba4cbaf6f9cc3c8a77ecd', '[\"*\"]', NULL, NULL, '2023-12-30 03:21:31', '2023-12-30 03:21:31'),
(4, 'App\\Models\\User', 1, 'authToken', '41f97d86ad2745e9e0b17b3d5bad9d4f8011d6ca73dda153692117b0fad4a137', '[\"*\"]', NULL, NULL, '2023-12-30 03:31:34', '2023-12-30 03:31:34'),
(5, 'App\\Models\\User', 1, 'authToken', '9e0af1cab6a7a755a763e02657fd09ba6df9c852bd23ffd6416299c0148a1deb', '[\"*\"]', NULL, NULL, '2023-12-30 03:48:01', '2023-12-30 03:48:01'),
(6, 'App\\Models\\User', 1, 'authToken', 'f9a41f7efd1535143f5caa44e92a52fc6a5bd4c051180d8bb77f2376483b7052', '[\"*\"]', NULL, NULL, '2023-12-30 03:56:56', '2023-12-30 03:56:56'),
(7, 'App\\Models\\User', 1, 'authToken', '3e940ea898bf3efa2831bce26fc0ff0cc5c2d70cac064c8078f97e464296d3b5', '[\"*\"]', NULL, NULL, '2023-12-30 04:02:20', '2023-12-30 04:02:20'),
(8, 'App\\Models\\User', 1, 'authToken', '32119fb213afce3375e874f0cc2af933f09f07f22ce38cf39625862b7565dfd5', '[\"*\"]', NULL, NULL, '2023-12-30 04:25:01', '2023-12-30 04:25:01'),
(9, 'App\\Models\\User', 1, 'authToken', '67382b0d382fbd0645e3c0dc826a46e3c35928b14e9de3badcd4c1de468a07cd', '[\"*\"]', NULL, NULL, '2023-12-30 04:57:47', '2023-12-30 04:57:47'),
(10, 'App\\Models\\User', 1, 'authToken', '8cd50457d2fc0d03e3e4f49d114ccfb23e78381e952394f98cf0a8eabe040268', '[\"*\"]', NULL, NULL, '2023-12-30 05:11:20', '2023-12-30 05:11:20'),
(11, 'App\\Models\\User', 1, 'authToken', 'dc4a2444f380e06f381b176184ca20d966f3c54fccb05d5ccdc48bd18428d85f', '[\"*\"]', NULL, NULL, '2023-12-30 05:13:18', '2023-12-30 05:13:18'),
(12, 'App\\Models\\User', 1, 'authToken', 'fb3982633219e51904dd576d95ecd9045f48511978e811e50e840de648888c2b', '[\"*\"]', NULL, NULL, '2023-12-30 05:13:21', '2023-12-30 05:13:21'),
(13, 'App\\Models\\User', 1, 'authToken', 'f7d869a040c267dd37bcb585a34efb8fe5c05a86c1c3a6eada8803d32868790f', '[\"*\"]', NULL, NULL, '2023-12-30 05:14:10', '2023-12-30 05:14:10'),
(14, 'App\\Models\\User', 1, 'authToken', 'de942615a5d397d6c7f7ab18440eb1475f4eeb8931bee787345acbbd311707d7', '[\"*\"]', NULL, NULL, '2023-12-30 05:15:08', '2023-12-30 05:15:08'),
(15, 'App\\Models\\User', 1, 'authToken', '35a6d993751548afc1df5e3dbd21e535a7303808da806efe2f6652cacdf69abf', '[\"*\"]', NULL, NULL, '2023-12-30 06:30:42', '2023-12-30 06:30:42'),
(16, 'App\\Models\\User', 1, 'authToken', 'd40aa3a7c4ace4b06b54417124026b5a6cc08d96fadbf028ec479418a96c21e6', '[\"*\"]', NULL, NULL, '2023-12-30 06:31:04', '2023-12-30 06:31:04'),
(17, 'App\\Models\\User', 1, 'authToken', '7da682b8ea6c7ee37bb8e2d6b74c9f6b09a4c3eabd92e82b2857726dcd4a1c41', '[\"*\"]', NULL, NULL, '2023-12-30 06:39:34', '2023-12-30 06:39:34'),
(18, 'App\\Models\\User', 1, 'authToken', '18cb92288106b73de7754ded999ab7e3fed3f2ce75645bd9ccb4e80e18392796', '[\"*\"]', NULL, NULL, '2023-12-30 06:42:01', '2023-12-30 06:42:01'),
(19, 'App\\Models\\User', 1, 'authToken', 'f49d6dba00cc376f7e13b0981a537a534e2653cd381126154f1c30f54941cdfc', '[\"*\"]', NULL, NULL, '2023-12-30 07:02:21', '2023-12-30 07:02:21'),
(20, 'App\\Models\\User', 1, 'authToken', 'c91790c15be67836f05baa5c02868f50583957c57f0388b4c28650b33b076058', '[\"*\"]', NULL, NULL, '2023-12-30 07:04:47', '2023-12-30 07:04:47');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test123@gmail.com', NULL, '$2y$12$C9ZEEixPxFouXcZ2I8jWcOnPuTnrbbLe2rDt6CH.U3mmXVusXhfBK', NULL, '2023-12-30 01:59:12', '2023-12-30 01:59:12'),
(2, 'test', 'test1243@gmail.com', NULL, '$2y$12$blK/9mbSM0xUu0uAzmKWXe/TdLH4mZk2Ma/kh.d8c75FY0M.1boR.', NULL, '2023-12-30 02:20:35', '2023-12-30 02:20:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
