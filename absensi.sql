-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 07:52 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_06_23_070105_create_pegawai_table', 1);

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
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `number` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`number`, `user_id`, `id_name`, `position`, `email`, `created_at`, `updated_at`) VALUES
(1, '10455', 'Hasna Rahmi Wulandari S.E.', 'qui', 'darmanto.halim@gmail.com', NULL, NULL),
(2, '10226', 'Salwa Winda Suryatmi S.Pt', 'assumenda', 'ylatupono@gmail.co.id', NULL, NULL),
(3, '10222', 'Wani Utami', 'dolore', 'pranata.melani@ramadan.desa.id', NULL, NULL),
(4, '10155', 'Gading Alambana Narpati S.IP', 'aliquam', 'jayadi96@gmail.co.id', NULL, NULL),
(5, '10290', 'Gandewa Muni Setiawan', 'corrupti', 'yuniar.argono@riyanti.biz', NULL, NULL),
(6, '10469', 'Najwa Gasti Usamah S.E.', 'non', 'teguh.prakasa@sirait.com', NULL, NULL),
(7, '10955', 'Juli Nurdiyanti S.E.I', 'rerum', 'ghutasoit@gmail.com', NULL, NULL),
(8, '10353', 'Himawan Hardiansyah', 'alias', 'widiastuti.nilam@gmail.co.id', NULL, NULL),
(9, '10406', 'Galuh Maulana S.T.', 'dicta', 'pwaskita@kusmawati.info', NULL, NULL),
(10, '10246', 'Rahmi Prastuti', 'recusandae', 'agnes.utami@susanti.my.id', NULL, NULL),
(11, '10807', 'Kunthara Emil Prasetyo', 'ut', 'pranowo.banawi@gmail.co.id', NULL, NULL),
(12, '10918', 'Atmaja Eko Simanjuntak S.Pd', 'suscipit', 'dirja.purwanti@gmail.co.id', NULL, NULL),
(13, '10974', 'Ana Gilda Widiastuti', 'consequuntur', 'lailasari.tari@yahoo.co.id', NULL, NULL),
(14, '10954', 'Ivan Bagiya Saragih', 'modi', 'mardhiyah.daruna@yahoo.com', NULL, NULL),
(15, '10763', 'Mariadi Langgeng Maryadi S.Sos', 'asperiores', 'humaira65@haryanti.sch.id', NULL, NULL),
(16, '10618', 'Aslijan Suwarno', 'quibusdam', 'farida.umi@gmail.com', NULL, NULL),
(17, '10992', 'Dewi Winarsih S.Pd', 'voluptatem', 'twahyudin@pratiwi.or.id', NULL, NULL),
(18, '10432', 'Gantar Januar', 'sit', 'rachel95@fujiati.tv', NULL, NULL),
(19, '10315', 'Perkasa Budiman', 'sint', 'hana76@purnawati.tv', NULL, NULL),
(20, '10266', 'Iriana Andriani', 'vel', 'thamrin.wirda@yahoo.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `id_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`number`),
  ADD UNIQUE KEY `pegawai_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
