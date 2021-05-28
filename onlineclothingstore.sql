-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 03:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineclothingstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'CROP TOPS', 'CROP TOPSS', '2021-05-21 03:10:25', '2021-05-25 01:33:48'),
(2, 'GIRL TEES', 'GIRL TEES', '2021-05-21 03:10:25', '2021-05-21 03:10:25'),
(3, 'LONG SLEEVES', 'LONG SLEEVES', '2021-05-21 03:10:25', '2021-05-21 03:10:25'),
(4, 'Dress 1', 'dress-1', '2021-05-21 03:10:25', '2021-05-25 01:34:41'),
(5, 'SWIMSUIT', 'SWIMSUIT', '2021-05-21 03:10:25', '2021-05-21 03:10:25');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_05_20_110259_create_sessions_table', 1),
(7, '2021_05_21_102340_create_categories_table', 2),
(8, '2021_05_21_102546_create_products_table', 3);

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Croptop 1 - Sample Name', 'Croptop 1 - Sample Name', 'Laborum placeat fugit beatae sint. Voluptates animi qui et dolores. Qui corporis laboriosam saepe veniam temporibus.', 'Et numquam eveniet fugiat laborum exercitationem aut iusto. Quisquam sit qui eligendi ut. Facilis deserunt qui et occaecati impedit. Architecto dolor aperiam architecto reiciendis debitis. Placeat ipsum beatae sint architecto non est eveniet aut. Velit quis praesentium minus consequuntur praesentium. Aut occaecati dolore tempore optio sed totam quis. Eum ea adipisci sit expedita atque temporibus.', '354.00', NULL, 'DIGI432', 'instock', 0, 116, 'girl_2.jpg', NULL, 4, '2021-05-21 04:45:56', '2021-05-21 04:45:56'),
(2, 'Croptop 2 - Sample Name', 'Croptop 2 - Sample Name', 'At saepe molestias optio exercitationem. Et corporis doloribus explicabo iure. At et molestiae sit a. Quis rerum iusto aut quasi sit.', 'Ea doloremque modi amet in repudiandae accusantium. Facere omnis omnis nesciunt dignissimos possimus a perspiciatis. Voluptatem consequatur cupiditate sit dolores atque atque. Sint consequatur eveniet et molestiae nobis dolores. Eligendi eveniet qui et quis omnis. Rerum et explicabo sed et eos quis rem. Voluptas esse excepturi amet aliquam. Sint beatae eaque laudantium praesentium eaque sit in. Voluptas voluptatem molestias est aliquid sequi iusto distinctio.', '376.00', NULL, 'DIGI404', 'instock', 0, 181, 'girl_8.jpeg', NULL, 3, '2021-05-21 04:45:56', '2021-05-21 04:45:56'),
(3, 'Croptop 3 - Sample Name', 'Croptop 3 - Sample Name', 'Amet est id hic aut amet quaerat. Veniam ab neque omnis eos laborum non laudantium mollitia. Minima et commodi accusantium voluptatum officia.', 'Harum libero vel enim at sed labore dolore. Beatae rerum sed doloremque hic temporibus architecto illum dolores. Voluptatem atque at velit eligendi neque officia. Molestiae libero adipisci impedit. Eum nisi modi vel sint est possimus et. Maxime voluptatem ratione laborum illo qui error doloribus quos. Et omnis pariatur et explicabo cupiditate. Dolorum qui aperiam rerum quia.', '198.00', NULL, 'DIGI169', 'instock', 0, 146, 'girl_2.jpg', NULL, 1, '2021-05-21 04:45:56', '2021-05-21 04:45:56'),
(4, 'Croptop 4 - Sample Name', 'Croptop 4 - Sample Name', 'Ut explicabo soluta harum eos. Maxime velit corporis dignissimos dolore. Quasi aut recusandae et blanditiis unde voluptas mollitia est. Beatae molestiae fugit omnis rerum assumenda sit.', 'Aut consequuntur cupiditate voluptate odio aliquam. Laboriosam voluptate corporis eos ea rerum laborum. Quas delectus dolorum quisquam praesentium. Non repudiandae blanditiis molestiae quam recusandae quis. Quia ratione saepe quis. Est ad accusamus magni aliquid voluptas. Nemo ea unde est atque unde ratione. Ut consequatur nostrum quo hic distinctio quae deserunt. Laborum voluptas possimus tempore. Quia cum ut blanditiis culpa quis nesciunt ipsa. Nemo quibusdam voluptas hic aut ducimus.', '263.00', NULL, 'DIGI285', 'instock', 0, 151, 'girl_8.jpeg', NULL, 1, '2021-05-21 04:45:56', '2021-05-21 04:45:56'),
(5, 'Croptop 5 - Sample Name', 'Croptop 5 - Sample Name', 'Voluptatem ut iste assumenda ex ut asperiores quis. Quae omnis occaecati modi sit quia facere tempore dolores. Quo occaecati dignissimos sed dolore et accusamus qui.', 'Voluptas molestiae dolores voluptate ut perspiciatis dolores et alias. Blanditiis accusantium enim qui pariatur dolore molestiae vel. Temporibus beatae quod sapiente voluptatem assumenda et. Quo voluptatem dolor ut aspernatur molestiae rerum. Aliquam illum laudantium accusantium. Illo voluptatibus itaque recusandae. Facere reiciendis quas deleniti voluptatem. Rem fugiat assumenda nostrum delectus aut aliquid nulla.', '22.00', NULL, 'DIGI142', 'instock', 0, 172, 'girl_2.jpg', NULL, 2, '2021-05-21 04:45:57', '2021-05-21 04:45:57'),
(6, 'Croptop 6 - Sample Name', 'Croptop 6 - Sample Name', 'Adipisci praesentium distinctio rerum rerum. Omnis facere voluptatem eos quam eius. Rerum et sunt dolor nemo et tempora et ut. Consequatur et et temporibus architecto modi nesciunt fugit voluptatem.', 'Et aut quibusdam qui aut nulla distinctio quia. Et quaerat fuga aut modi. Aspernatur iusto animi qui. Voluptate qui perspiciatis fuga aperiam facere quia sit. Blanditiis doloribus porro id. Aspernatur dolores et est saepe magnam officia velit. Id fuga est sequi iste qui quod. Eveniet et et expedita in maiores autem voluptates. Consequatur ipsam nam odit culpa. Consequuntur et qui nesciunt ipsum voluptatem placeat. Tenetur ut voluptatem ea aliquam saepe omnis.', '87.00', NULL, 'DIGI333', 'instock', 0, 129, 'girl_8.jpeg', NULL, 5, '2021-05-21 04:45:57', '2021-05-21 04:45:57'),
(7, 'Croptop 7 - Sample Name', 'Croptop 7 - Sample Name', 'Enim vel molestiae explicabo voluptatum molestiae eum sunt. Sint qui et laborum sit recusandae suscipit. Voluptatem eaque nobis aut veniam. In in consequatur occaecati non aut sed porro.', 'Et consequatur eum cumque nostrum dolor aut. Et et enim aliquam optio. Hic autem quaerat et nemo repudiandae aut vel aliquam. Ut dolorem adipisci culpa et fugit aut eligendi. Deserunt quis necessitatibus veniam atque. Sed qui omnis quia eaque dolores eos. Esse qui veritatis ut nihil quis atque. Fugiat doloribus vel amet mollitia. Molestiae odio similique quo voluptas quia.', '431.00', NULL, 'DIGI260', 'instock', 0, 104, 'girl_2.jpg', NULL, 3, '2021-05-21 04:45:57', '2021-05-21 04:45:57'),
(8, 'Croptop 8 - Sample Name', 'Croptop 8 - Sample Name', 'Ipsa aspernatur vel inventore molestiae quo. Quos voluptatem et et itaque non. Nihil consequatur numquam unde omnis qui totam aperiam. Aliquid rem modi aut repudiandae et omnis.', 'Recusandae assumenda reprehenderit et illum ratione. Animi ipsam placeat aut temporibus ad odit omnis. Minus quos dicta possimus odit ullam modi. Cupiditate quia nam hic repudiandae error animi odit. Qui optio enim veniam tempora ducimus. Eligendi illum recusandae dolorem nam repellendus molestias eum eum. Id quisquam asperiores ab dolorem facilis. Sed quam harum dignissimos voluptatem recusandae.', '369.00', NULL, 'DIGI245', 'instock', 0, 150, 'girl_8.jpeg', NULL, 2, '2021-05-21 04:45:57', '2021-05-21 04:45:57'),
(9, 'Croptop 9 - Sample Name', 'Croptop 9 - Sample Name', 'Cumque accusamus nulla aut illo. Voluptatibus commodi nam ratione corrupti quae deserunt soluta.', 'Error et inventore recusandae et accusantium occaecati qui et. Et provident est explicabo praesentium fugiat distinctio aut. Eligendi qui sed consequatur vel illo. Odit est recusandae dolorem ullam. Ut voluptas quam consequatur quod praesentium quis at eligendi. Dolorum velit enim qui adipisci sed nemo maxime fugit. Magnam ullam ea aut ea.', '13.00', NULL, 'DIGI270', 'instock', 0, 110, 'girl_2.jpg', NULL, 1, '2021-05-21 04:45:57', '2021-05-21 04:45:57'),
(10, 'Croptop 10 - Sample Name', 'Croptop 10 - Sample Name', 'Cum labore magnam accusantium laudantium maiores. Quibusdam error neque fugit doloribus qui.', 'Voluptatem qui asperiores quaerat quia eos unde. Dolor ipsam facere ut in porro accusantium tempora. Similique quia a earum quia. Ad ut sit ex. Dolores voluptate magnam veniam quia. Nemo sint dolorem facilis nemo alias. Corrupti quae voluptates adipisci incidunt sequi. Odit a id et tenetur ut pariatur praesentium. Quia a et perspiciatis esse autem ut at molestias. Quasi amet nihil a quod enim.', '415.00', NULL, 'DIGI363', 'instock', 0, 106, 'girl_8.jpeg', NULL, 1, '2021-05-21 04:45:57', '2021-05-21 04:45:57'),
(12, 'Croptop 11 - Sample Name', 'Croptop 11 - Sample Name', 'Expedita possimus eligendi quasi fugit repellendus. Soluta vel est occaecati ut. Dolores nam nemo quam.', 'Perferendis rerum officia unde voluptatibus vero facilis. Omnis placeat amet libero deserunt. Incidunt totam alias voluptatem repellat quod. Maiores eum eum id fuga a earum earum. Beatae adipisci earum amet amet. Voluptatem non accusantium similique. Dolorum ad aspernatur officia magni. Unde aut quis fuga sit voluptas. Magnam ut hic voluptatem est repellat eligendi. Assumenda et dolores sapiente rem modi voluptatem.', '57.00', NULL, 'DIGI187', 'instock', 0, 140, 'girl_2.jpg', NULL, 1, '2021-05-21 04:45:57', '2021-05-21 04:45:57'),
(13, 'Croptop 12 - Sample Name', 'Croptop 12 - Sample Name', 'Sed odio qui qui esse quod. Distinctio laborum minima incidunt rerum. Quis debitis harum qui ut. Tenetur eligendi id exercitationem temporibus.', 'Rerum accusantium animi rem aut molestias est accusamus. Corporis temporibus placeat velit iusto ut. Dolor blanditiis optio omnis reprehenderit iste. Et provident consequatur ut. Omnis beatae explicabo ea laboriosam voluptatem. Nam molestiae eius omnis accusantium accusantium laudantium earum. Veritatis ullam placeat provident delectus vitae molestiae. In sed ut aut.', '109.00', NULL, 'DIGI307', 'instock', 0, 126, 'girl_8.jpeg', NULL, 2, '2021-05-21 04:45:57', '2021-05-21 04:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bXvrC7PPQumgrCUkXlHAUeGOrNm04d2tRc8jzlZA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNTNLMnNMRFNnWXA2Z210bHhlc3FuTUxEdHNVSTQ1V1ROODBwQ29iVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWFyY2g/cHJvZHVjdF9jYXQ9U1dJTVNVSVQmcHJvZHVjdF9jYXRfaWQ9NSZzZWFyY2g9Q3JvcHRvcCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkaDM4S0MvdzN0SmduRklBLi5SelVFZTg4RGVRYTBKWG5SZXpZNnNrTDlyNUJhVzZEWWhCNXkiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGgzOEtDL3czdEpnbkZJQS4uUnpVRWU4OERlUWEwSlhuUmV6WTZza0w5cjVCYVc2RFloQjV5Ijt9', 1621935759);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', NULL, '$2y$10$h38KC/w3tJgnFIA..RzUEe88DeQa0JXnRezY6skL9r5BaW6DYhB5y', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-05-20 05:18:58', '2021-05-20 05:18:58'),
(2, 'User', 'user@email.com', NULL, '$2y$10$SmyZ1uqLe8o1QMFSbKaOJuRAptgPvuEHJ0.S6pUe4ttVKt/QI.Jc6', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-05-20 05:19:50', '2021-05-20 05:19:50'),
(3, 'Test1', 'test1@email.com', NULL, '$2y$10$mZslGRUm.DAc8iCgHarQX.6A8ddMUCGqIRXzp2gypVXStcQ2IBcLC', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-05-20 07:05:10', '2021-05-20 07:05:10'),
(4, 'Test2', 'test2@email.com', NULL, '$2y$10$ImyvBSpM8X.YowMnYHzRtOK.Ay4RNdz9yL4KNS52JTufl8uDGivra', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-05-20 07:07:53', '2021-05-20 07:07:53'),
(5, 'Dianne Sudario', 'diannesudarioxx@gmail.com', NULL, '$2y$10$qzERaBJzmteBsdT7Qh37UO3Ui5fmYpmpuIbhKIDbY2rxS993aSyke', NULL, NULL, 'rqH2fN1cIjgefqZ7o7PDgrOdmSdbyscBxea7FLSmwTjmImR5hvDf481qKoGV', NULL, NULL, 'USR', '2021-05-24 02:22:32', '2021-05-24 02:22:32'),
(6, 'Laravel', 'laravel@gmail.com', NULL, '$2y$10$osfi3DIydby6yYwrO9I7c.qaFPjE1WRCqqwJKsxLGWWjNf9puB6uC', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-05-25 01:17:28', '2021-05-25 01:17:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
