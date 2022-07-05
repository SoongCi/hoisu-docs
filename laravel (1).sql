-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 07:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria_recetas`
--

CREATE TABLE `categoria_recetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoria_recetas`
--

INSERT INTO `categoria_recetas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Café', '2022-06-13 01:47:53', '2022-06-13 01:47:53'),
(2, 'Turístico', '2022-06-13 01:47:53', '2022-06-13 01:47:53'),
(3, 'Temático', '2022-06-13 01:47:53', '2022-06-13 01:47:53'),
(4, 'Vegano', '2022-06-13 01:47:53', '2022-06-13 01:47:53'),
(5, 'Gourmet', '2022-06-13 01:47:53', '2022-06-13 01:47:53'),
(6, 'Bar', '2022-06-13 01:47:53', '2022-06-13 01:47:53'),
(7, 'Comida Rápida', '2022-06-13 01:47:53', '2022-06-13 01:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `ciudad_recetas`
--

CREATE TABLE `ciudad_recetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ciudad_recetas`
--

INSERT INTO `ciudad_recetas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Armenia', '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(2, 'Buenavista', '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(3, 'Calarca', '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(4, 'Circasia', '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(5, 'Cordoba', '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(6, 'Filandia', '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(7, 'Genova', '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(8, 'La Tebaida', '2022-06-13 01:47:55', '2022-06-13 01:47:55'),
(9, 'Montenegro', '2022-06-13 01:47:55', '2022-06-13 01:47:55'),
(10, 'Quimbaya', '2022-06-13 01:47:55', '2022-06-13 01:47:55'),
(11, 'Salento', '2022-06-13 01:47:55', '2022-06-13 01:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `likes_receta`
--

CREATE TABLE `likes_receta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `receta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes_receta`
--

INSERT INTO `likes_receta` (`id`, `user_id`, `receta_id`, `created_at`, `updated_at`) VALUES
(2, 3, 6, NULL, NULL),
(3, 1, 6, NULL, NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_23_233112_create_recetas_table', 1),
(5, '2020_04_27_184417_create_perfils_table', 1),
(6, '2020_04_29_182345_create_likes_receta_pivot_table', 1);

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
-- Table structure for table `perfils`
--

CREATE TABLE `perfils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `biografia` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perfils`
--

INSERT INTO `perfils` (`id`, `user_id`, `biografia`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(2, 2, NULL, NULL, '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(3, 3, NULL, NULL, '2022-06-13 02:12:21', '2022-06-13 02:12:21'),
(4, 4, NULL, NULL, '2022-06-15 15:22:41', '2022-06-15 15:22:41'),
(5, 5, NULL, NULL, '2022-06-15 15:26:04', '2022-06-15 15:26:04'),
(6, 6, NULL, NULL, '2022-06-15 15:38:04', '2022-06-15 15:38:04'),
(7, 7, NULL, NULL, '2022-06-15 15:39:20', '2022-06-15 15:39:20'),
(8, 8, NULL, NULL, '2022-06-15 15:41:43', '2022-06-15 15:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `recetas`
--

CREATE TABLE `recetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apertura` time NOT NULL,
  `cierre` time NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `ciudad_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recetas`
--

INSERT INTO `recetas` (`id`, `titulo`, `descripcion`, `imagen`, `menu`, `direccion`, `email`, `telefono`, `apertura`, `cierre`, `user_id`, `categoria_id`, `ciudad_id`, `created_at`, `updated_at`) VALUES
(2, 'Ambrosia', '<div>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', 'upload-recetas/q77aQkN75qipUiTy8bC3hgSGkqdPr66ksghYOSQK.jpg', 'upload-menus/Op0nKSyLdnsxP2UL4rKi4750IyCa4KVOCSlVEwKo.jpg', 'Km 19 Av centenario', 'ambrosia@gmail.com', '3476544961', '06:30:00', '12:00:00', 3, 5, 1, '2022-06-13 02:27:23', '2022-06-13 02:27:23'),
(3, 'La Fogata', '<div>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', 'upload-recetas/HGxUEv10ftBbEXB9C5yUAx8HY2nFf4CtS8asWNn6.jpg', 'upload-menus/AkyO2zXq5AfN99WrxtiUQLV7vpPE8Rk7Qe2obnEl.jpg', 'Km 19 Av centenario', 'fogata@gmail.com', '3476544961', '08:00:00', '12:00:00', 3, 5, 3, '2022-06-13 02:30:11', '2022-06-13 02:35:02'),
(6, 'The garden', '<div>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>', 'upload-recetas/ihjvjEyTFlfYF65j0R3NTUZpuFK4eA5tfPxjJ5K9.jpg', 'upload-menus/KLlpaYATqQgaSfqnvi68hcoCf5LkvGoSpr5YEgu4.jpg', 'Km7 vía Cerritos', 'garden@gmail.com', '3188420848', '12:00:00', '18:00:00', 3, 4, 1, '2022-06-15 16:21:51', '2022-06-15 16:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora` time NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `receta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservas`
--

INSERT INTO `reservas` (`id`, `fecha`, `hora`, `user_id`, `receta_id`, `created_at`, `updated_at`) VALUES
(1, '2022-06-12', '13:40:00', 1, 3, '2022-06-13 06:17:33', '2022-06-13 06:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nayru', 'nayru@gmail.com', NULL, '$2y$10$ryrE8DR3rTRDqJ7IIJyg2.M6i46l/xTrhQOeUlDhDpg6R66h2I.zO', NULL, '2022-06-13 01:47:53', '2022-06-13 01:47:53'),
(2, 'Pablo', 'correo2@correo.com', NULL, '$2y$10$eMPkyyWQj9HKRWlYDKv29ehTtN8iFXyZ9tYJhXbEF0mq6jNbOmuJ.', NULL, '2022-06-13 01:47:54', '2022-06-13 01:47:54'),
(3, 'karen', 'karen@gmail.com', NULL, '$2y$10$JhfAMTOvTCzc7XJGkDB5XO0g13Z5myNhzGZw7say.01Q9eq4PoF36', 'nbd2Gs8bUz3QwMQszEAsUwaX8wFM6AoLd32LzUmqUf1Hy3uVwVfuqpHxl1xi', '2022-06-13 02:12:21', '2022-06-13 02:12:21'),
(4, 'Pedro', 'pedro@gmail.com', NULL, '$2y$10$KvxQGZl2STHcFXjjv4IDR.srSxeOesoeshIoK8AYiRH4PVR4CR7z.', NULL, '2022-06-15 15:22:41', '2022-06-15 15:22:41'),
(5, 'leidy', 'leidy@gmail.com', NULL, '$2y$10$nIW.2ZB6NH2hsJD/QGwU.ONCYcMT4U1QgXP71sCgrIGHCGmY2436e', NULL, '2022-06-15 15:26:03', '2022-06-15 15:26:03'),
(6, 'camilo', 'camilo@gmail.com', NULL, '$2y$10$JkH0U9goLrly8YBHqwzGOepXqFBovZx1Qcsst5NykJ/0M4mwBGwYu', NULL, '2022-06-15 15:38:04', '2022-06-15 15:38:04'),
(7, 'camila', 'camila@gmail.com', NULL, '$2y$10$U2i6W9yrOnHR4KA6eueBEey3ob1vBB1nm0UHB0bdhQUmTSDoKsFyq', NULL, '2022-06-15 15:39:20', '2022-06-15 15:39:20'),
(8, 'maria', 'maria@gmail.com', NULL, '$2y$10$2eTJZY/T3NabjD1i3oSdxeCSWru20OfVJ8teZVWFd/RVr0FaHh29q', NULL, '2022-06-15 15:41:43', '2022-06-15 15:41:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria_recetas`
--
ALTER TABLE `categoria_recetas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ciudad_recetas`
--
ALTER TABLE `ciudad_recetas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes_receta`
--
ALTER TABLE `likes_receta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_receta_user_id_foreign` (`user_id`),
  ADD KEY `likes_receta_receta_id_foreign` (`receta_id`);

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
-- Indexes for table `perfils`
--
ALTER TABLE `perfils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perfils_user_id_foreign` (`user_id`);

--
-- Indexes for table `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recetas_email_unique` (`email`),
  ADD KEY `recetas_user_id_foreign` (`user_id`),
  ADD KEY `recetas_categoria_id_foreign` (`categoria_id`),
  ADD KEY `recetas_ciudad_id_foreign` (`ciudad_id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_user_id_foreign` (`user_id`),
  ADD KEY `reservas_receta_id_foreign` (`receta_id`);

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
-- AUTO_INCREMENT for table `categoria_recetas`
--
ALTER TABLE `categoria_recetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ciudad_recetas`
--
ALTER TABLE `ciudad_recetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `likes_receta`
--
ALTER TABLE `likes_receta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `perfils`
--
ALTER TABLE `perfils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes_receta`
--
ALTER TABLE `likes_receta`
  ADD CONSTRAINT `likes_receta_receta_id_foreign` FOREIGN KEY (`receta_id`) REFERENCES `recetas` (`id`),
  ADD CONSTRAINT `likes_receta_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `perfils`
--
ALTER TABLE `perfils`
  ADD CONSTRAINT `perfils_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `recetas_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_recetas` (`id`),
  ADD CONSTRAINT `recetas_ciudad_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad_recetas` (`id`),
  ADD CONSTRAINT `recetas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_receta_id_foreign` FOREIGN KEY (`receta_id`) REFERENCES `recetas` (`id`),
  ADD CONSTRAINT `reservas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
