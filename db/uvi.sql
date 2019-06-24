-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 07:54 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uvi`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personfname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personlname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `type`, `license`, `phonenumber`, `name`, `email`, `address`, `website`, `image`, `personfname`, `personlname`, `personphone`, `personemail`, `membership`, `startdate`, `enddate`, `created_at`, `updated_at`) VALUES
(1, 'CR', '876543', '76543276543', 'test', 'haqnawazwgbm@gmail.com', 'Peshawar-Rawalpindi Rd, Pakistan, dfd', 'weee.com', '1517899443.jpg', 'reasdzx', 'jhgf', '654321', 'sada@fmail.com', 'monthly', '2018-02-27', '2018-10-06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joiningdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `company_id`, `name`, `license`, `email`, `phonenumber`, `address`, `joiningdate`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'test dr', '456789', 'haqnawazwgbm@gmail.com', '76543276543', 'hgfds nfgdfsdsv', '2017-12-12', NULL, NULL),
(2, 0, 1, 'new driver', '234234', 'haq@gmail.com', '234234', 'address', '2017-12-12', NULL, NULL),
(3, 0, 1, 'test', 'test', 'test@gmail.com', '2342', 'test addresss', '2017-12-12', NULL, NULL),
(4, 2, NULL, 'test', NULL, 'test@gmail.com', '234', 'test', '1970-01-01', '2018-02-14 19:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_logs`
--

CREATE TABLE `driver_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_logs`
--

INSERT INTO `driver_logs` (`id`, `driver_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 2, 4, '2018-02-14 07:28:51', '2018-02-14 07:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `visited_user_id` int(10) UNSIGNED DEFAULT NULL,
  `logedin_user_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `vieweddate` date NOT NULL,
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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2017_11_15_075032_update_users_table_add_status', 1),
(12, '2017_11_21_074106_create_companies_table', 1),
(13, '2017_11_22_075743_create_drivers_table', 1),
(14, '2017_11_28_102952_create_logs_table', 1),
(15, '2018_01_16_111819_test', 1),
(16, '2018_01_26_095243_create_table_reports', 1),
(17, '2018_02_14_081341_create_driver_logs_table', 2),
(18, '2018_02_14_102141_create_user_logs_table', 3);

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
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `report_submitted_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_involved` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heppens` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `driver_id`, `company_id`, `report_submitted_person`, `title`, `severity`, `issue`, `cost_involved`, `heppens`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, 'admin', 'test', 'Medium', 'Smoking in vehicle,Major damage', 'Yes', 'jytre', NULL, 0, '2018-02-06 07:33:32', '2018-02-06 07:33:32'),
(2, 3, NULL, 1, 'admin', 'New title', 'Medium', 'Smoking in vehicle,Offroad with vehicle,Mechanical damage,Major damage,UnNotified extension of vehicle', 'Yes', 'jytre', NULL, 1, '2018-02-06 07:34:23', '2018-02-06 07:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','crcompanies','incompanies','cremployees') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `company_id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `company_id`, `firstname`, `lastname`) VALUES
(1, 0, 'admin5', 'admin@gmail.com', '$2y$10$6kcLNcNaNBeQRPZ7nWFHqea7Z2WXE5e2zZQivUmbhgxM3X9pLthou', 'dPY4JnQoL2AMZ86duwIoWEbKCsGMSqDmAz7dLpSJwWwDvrehkmWWkpk0VZUf', '2018-02-05 19:00:00', '2018-02-06 07:40:56', 'admin', 1, 'admin', 'admin'),
(2, 0, 'Car Rental Companies', 'crcompanies@gmail.com', '$2y$10$6kcLNcNaNBeQRPZ7nWFHqea7Z2WXE5e2zZQivUmbhgxM3X9pLthou', '4d6MzMjCAdE8JjhVAVuo17r6VdAZTs2HXkl973Lqp865kVQhXWEwD0AfU2yr', NULL, NULL, 'crcompanies', 2, 'Car', 'Rental'),
(3, 0, 'Insurance Companies', 'incompanies@gmail.com', '$2y$10$6kcLNcNaNBeQRPZ7nWFHqea7Z2WXE5e2zZQivUmbhgxM3X9pLthou', 'Pa63NZEMETLJClWP2ISRQTZpBYpFLWwK5Z2rLjHUGhTNEfEyJPOpgnFTufaU', NULL, NULL, 'incompanies', 3, 'Insurance', 'Company'),
(4, 0, 'Car Rental Employees', 'cremployees@gmail.com', '$2y$10$6kcLNcNaNBeQRPZ7nWFHqea7Z2WXE5e2zZQivUmbhgxM3X9pLthou', 'mcXcaNNR0a7S1xwycF2eLnoHcukRHJszPeWrQxtxDSnKMiDts8WqNijHgGG8', NULL, NULL, 'cremployees', 4, 'Car Rental', 'Employees'),
(5, 2, 'test', 'test@gmail.com', '$2y$10$N4zCBUuSH94hUzDS.u4d4eA6hcLnak6hj5rNDdIyOZxOogY.JzkuS', NULL, NULL, NULL, 'cremployees', 1, 'tst', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `visitor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_logs`
--
ALTER TABLE `driver_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_visited_user_id_foreign` (`visited_user_id`),
  ADD KEY `logs_logedin_user_id_foreign` (`logedin_user_id`),
  ADD KEY `logs_company_id_foreign` (`company_id`);

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
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_driver_id_foreign` (`driver_id`),
  ADD KEY `reports_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver_logs`
--
ALTER TABLE `driver_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `logs_logedin_user_id_foreign` FOREIGN KEY (`logedin_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `logs_visited_user_id_foreign` FOREIGN KEY (`visited_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `reports_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
