-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 09:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sturecord`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_20_055509_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'my-app-token', '1f197ae885e8b3e462822f38c450b83cf0974e9d44018b2ebc605f11bcb88fce', '[\"*\"]', NULL, '2022-06-21 05:24:38', '2022-06-21 05:24:38'),
(2, 'App\\Models\\User', 1, 'my-app-token', '09a21ddcd4d6447fd5c9020e42934fa30af08f66562230ffdde252f4959bc162', '[\"*\"]', NULL, '2022-06-21 05:42:41', '2022-06-21 05:42:41'),
(3, 'App\\Models\\User', 1, 'my-app-token', 'f13208fc9363f64a958258b6d98af25553c2b8b90ceaf53fb0351d4b710ea070', '[\"*\"]', NULL, '2022-06-21 23:45:05', '2022-06-21 23:45:05'),
(4, 'App\\Models\\User', 1, 'my-app-token', '73577c24a1aba1720ab2cf2c38e7b62ddf4e2d66af11b0f642748d3a944e2f59', '[\"*\"]', NULL, '2022-06-22 02:14:01', '2022-06-22 02:14:01'),
(5, 'App\\Models\\User', 1, 'auth_token', '283ea030fdace7fb04a2c2b15e5028933b311b6c490200c19d756e30883e45aa', '[\"*\"]', NULL, '2022-06-22 02:51:33', '2022-06-22 02:51:33'),
(6, 'App\\Models\\User', 1, 'auth_token', '1b1d55b8ffadc0c41f247c6b84fa597c5442eb47282dc3f2a753bc58c5713420', '[\"*\"]', NULL, '2022-06-22 04:28:34', '2022-06-22 04:28:34'),
(7, 'App\\Models\\User', 1, 'auth_token', '92a2701b1ba9bd793f5d9a9d53c33b75a6d1ae9a2553739fbd5809be0e2465fc', '[\"*\"]', NULL, '2022-06-22 23:33:44', '2022-06-22 23:33:44'),
(8, 'App\\Models\\User', 1, 'auth_token', 'd65bbbab57e465013903f185279d5788caa73a3c71b73ad2a6d489d6391c2f6e', '[\"*\"]', NULL, '2022-06-23 05:41:22', '2022-06-23 05:41:22'),
(9, 'App\\Models\\User', 1, 'auth_token', '485840e49af9c371e50632cfaafe968fbb03fc57e4f79b40f0c7aabec1c2df5b', '[\"*\"]', NULL, '2022-06-23 23:17:54', '2022-06-23 23:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Id`, `Name`, `Pno`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Rahul Kumar', '7894561230', 'rahul@gmail.com', 'Kolkata, India', NULL, NULL),
(2, 'Amit jha', '7894561230', 'amit@gmail.com', 'Kolkata, India', NULL, NULL),
(3, 'Amit jha', '7894561230', 'amit@gmail.com', 'Kolkata, India', NULL, NULL),
(4, 'Amit jha', '7894561230', 'amit@gmail.com', 'Kolkata, India', NULL, NULL),
(5, 'Amit jha', '7894561230', 'amit@gmail.com', 'Kolkata, India', NULL, NULL),
(6, 'Amit jha', '7894561230', 'amit@gmail.com', 'Kolkata, India', NULL, NULL),
(7, 'Amit jha', '7894561230', 'amit@gmail.com', 'Kolkata, India', NULL, NULL),
(8, 'Amit jha', '7894561230', 'amit@gmail.com', 'Kolkata, India', NULL, NULL),
(9, 'Someek jha', '7894561230', 'someek@gmail.com', 'Kolkata, sector-5, India', NULL, NULL),
(10, 'Ramesh JHha', '7894561230', 'someek@gmail.com', 'New delhi, sector-5, India', NULL, NULL),
(11, 'Rohit JHha', '7894561230', 'rohitk@gmail.com', 'New delhi, sector-5, India', NULL, NULL),
(12, 'Rohit JHha', '7894561230', 'rohitk@gmail.com', 'New delhi, sector-5, India', NULL, NULL),
(13, 'Rohit JHha', '7894561230', 'rohitk@gmail.com', 'New delhi, sector-5, India', NULL, NULL),
(15, 'Rahul Kumar', '7894561230', 'ras@gmail.com', 'Hydrabad', NULL, NULL),
(17, 'Atiks sahu', '2310456789', 'ar@gmail.com', 'Kolkata india', NULL, NULL),
(18, 'Rabindra Jha', '7894561230', 'rabindra@gmail.com', 'Kolkata, sector-5, India', '2022-06-23 04:45:43', '2022-06-23 04:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rahul Kumar', 'rahul@gmail.com', NULL, '$2y$10$mrv44hqZErsUuRfxDZdh6.P96DbiUu2al.sgYzJDmrqCmQ9TRlcgm', NULL, NULL, NULL);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
