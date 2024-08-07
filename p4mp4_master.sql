-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2024 at 09:39 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p4mp4_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `accreditations`
--

CREATE TABLE `accreditations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_study` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `category_accreditations` enum('nasional','internasional') COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accreditations`
--

INSERT INTO `accreditations` (`id`, `id_study`, `id_level`, `category_accreditations`, `result`, `institution`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(9, 3, 3, 'nasional', 'Baik', 'BAN-PT', '2021-10-19', '2026-10-19', '2022-03-28 02:58:31', '2022-03-28 03:13:01'),
(10, 5, 1, 'nasional', 'A', 'BAN-PT', '2021-10-21', '2026-10-21', '2022-03-28 03:11:12', '2022-03-28 03:11:12'),
(11, 6, 1, 'nasional', 'A', 'BAN-PT', '2020-10-27', '2025-10-27', '2022-03-28 03:12:45', '2022-03-28 03:12:45'),
(12, 7, 2, 'nasional', 'Unggul', 'LAM EMBA', '2023-06-09', '2028-06-09', '2022-03-28 03:16:46', '2024-01-15 05:55:35'),
(13, 9, 1, 'nasional', 'Unggul', 'BAN-PT', '2021-09-29', '2026-09-29', '2022-03-28 03:26:14', '2022-03-28 03:26:14'),
(14, 10, 2, 'nasional', 'B', 'BAN-PT', '2020-03-15', '2025-03-15', '2022-03-29 02:18:48', '2022-03-29 02:58:19'),
(15, 12, 1, 'nasional', 'Baik Sekali', 'BAN-PT', '2021-08-05', '2026-08-05', '2022-03-29 03:05:36', '2023-07-07 06:23:08'),
(16, 13, 2, 'nasional', 'A', 'BAN-PT', '2021-08-11', '2027-01-11', '2022-03-29 03:07:57', '2022-03-29 03:08:29'),
(17, 15, 1, 'nasional', 'B', 'BAN-PT', '2021-08-27', '2026-08-27', '2022-03-29 05:09:19', '2022-03-29 05:09:19'),
(18, 16, 2, 'nasional', 'B', 'BAN-PT', '2020-05-05', '2025-05-05', '2022-03-29 05:10:48', '2022-03-29 05:11:05'),
(19, 18, 1, 'nasional', 'B', 'BAN-PT', '2020-04-07', '2025-04-07', '2022-03-29 05:14:41', '2022-03-29 05:14:41'),
(20, 19, 1, 'nasional', 'B', 'BAN-PT', '2020-05-05', '2025-05-05', '2022-03-29 05:17:02', '2022-03-29 05:21:18'),
(21, 20, 2, 'nasional', 'Baik', 'BAN-PT', '2021-12-29', '2026-12-29', '2022-03-29 05:23:06', '2022-03-29 05:23:29'),
(22, 22, 1, 'nasional', 'B', 'BAN-PT', '2021-10-21', '2026-10-21', '2022-03-29 05:26:45', '2022-03-29 05:26:45'),
(23, 23, 1, 'nasional', 'B', 'BAN-PT', '2021-08-05', '2026-08-05', '2022-03-29 05:31:47', '2022-03-29 05:31:47'),
(24, 24, 2, 'nasional', 'Baik', 'BAN-PT', '2022-11-15', '2027-11-15', '2022-03-29 05:33:32', '2022-11-21 00:27:02'),
(25, 17, 2, 'nasional', 'Baik', 'BAN PT', '2021-10-22', '2024-04-22', '2022-06-01 08:12:24', '2022-06-01 08:12:39'),
(26, 11, 2, 'nasional', 'Baik Sekali', 'LAM EMBA', '2023-08-23', '2028-08-23', '2022-06-01 08:19:36', '2024-01-15 05:52:51'),
(27, 31, 4, 'nasional', 'Baik', 'BAN-PT', '2022-05-18', '2027-05-18', '2022-07-08 01:18:47', '2022-09-22 06:06:45'),
(28, 27, 2, 'nasional', 'Baik', 'LAM TEKNIK', '2024-04-21', '2029-04-20', '2022-07-08 01:25:28', '2024-04-22 03:01:06'),
(29, 8, 1, 'nasional', 'Baik', 'BAN-PT', '2021-10-18', '2026-10-18', '2022-07-08 01:26:48', '2022-09-22 06:06:16'),
(30, 33, 1, 'nasional', 'Baik', 'BAN-PT', '2021-10-18', '2026-10-18', '2022-07-08 01:27:55', '2022-09-22 06:05:43'),
(31, 25, 2, 'nasional', 'Baik', 'BAN-PT', '2022-03-11', '2027-03-11', '2022-07-08 01:31:10', '2022-09-22 06:04:47'),
(35, 28, 4, 'nasional', 'Baik', 'BAN-PT', '2022-05-18', '2027-05-18', '2022-07-08 07:24:23', '2022-09-22 06:05:29'),
(36, 26, 4, 'nasional', 'Baik', 'BAN-PT', '2022-03-11', '2027-03-11', '2022-07-08 07:25:24', '2022-09-22 06:05:19'),
(38, 32, 4, 'nasional', 'Baik', 'BAN-PT', '2022-04-01', '2027-04-01', '2022-07-20 03:22:12', '2022-09-22 06:05:10'),
(39, 29, 4, 'nasional', 'Baik', 'BAN-PT', '2022-05-18', '2027-05-18', '2022-07-20 03:23:22', '2022-09-22 06:05:00'),
(40, 30, 4, 'nasional', 'Baik', 'BAN-PT', '2022-04-26', '2027-04-26', '2022-07-20 03:24:09', '2022-09-22 06:02:23'),
(41, 21, 2, 'nasional', 'Baik', 'BAN-PT', '2023-05-23', '2028-05-23', '2022-07-28 01:31:56', '2023-07-07 06:24:22'),
(42, 35, 2, 'internasional', 'Accredited', 'AQAS', '2021-12-06', '2027-12-31', '2022-08-24 00:32:00', '2023-05-02 06:13:23'),
(43, 36, 1, 'internasional', 'Certified', 'AQAS', '2021-12-06', '2027-12-31', '2022-08-24 00:34:43', '2023-05-02 06:13:10'),
(44, 37, 1, 'internasional', 'Certified', 'AQAS', '2021-12-06', '2027-12-31', '2022-08-24 00:35:48', '2023-05-02 06:12:55'),
(45, 38, 3, 'internasional', 'Accredited', 'AQAS', '2021-12-06', '2027-12-31', '2022-08-24 00:38:09', '2023-05-02 06:12:24'),
(46, 14, 2, 'nasional', 'Baik Sekali', 'LAM EMBA', '2023-06-16', '2028-06-16', '2023-06-20 04:57:48', '2024-01-15 05:55:42'),
(47, 40, 1, 'nasional', 'Baik', 'BAN-PT', '2023-07-04', '2025-07-04', '2023-07-05 02:51:32', '2024-01-15 05:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `accreditation_internationals`
--

CREATE TABLE `accreditation_internationals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_faculties` bigint(20) UNSIGNED NOT NULL,
  `id_study` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `accreditatition_agency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_assessment` date NOT NULL,
  `e_assessment` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `desc`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Kegiatan P4MP', 'Kegiatan P4MP', '2022-02-19 03:06:44', '2022-02-19 03:06:44', 'kegiatanp4mp'),
(2, 'External Benchmarking', 'Kunjungan / Studi Banding', '2022-02-19 03:07:14', '2022-09-14 13:01:01', 'kunjunganstudibanding'),
(3, 'Survey Layanan Akademik', 'Survey Layanan Akademik', '2022-07-07 05:32:13', '2022-07-07 05:32:31', 'surveylayananakademik'),
(4, 'Survey Tata Pamong', 'Mengetahui tingkat kepuasan layanan tata pamong Politeknik Negeri Bali', '2022-08-30 07:00:20', '2022-08-30 07:00:20', 'surveytatapamong'),
(5, 'Rekognisi eksternal', 'Pengakuan  eksistensi lembaga diluar Politeknik Negeri Bali', '2022-10-18 10:49:05', '2023-03-26 10:43:46', 'rekognisieksternal'),
(6, 'Akreditasi', 'Berita mengenai akreditasi', '2023-03-26 10:43:11', '2023-03-26 10:43:11', 'akreditasi');

-- --------------------------------------------------------

--
-- Table structure for table `category_documents`
--

CREATE TABLE `category_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_documents`
--

INSERT INTO `category_documents` (`id`, `category_name`, `slug`, `desc`, `created_at`, `updated_at`) VALUES
(2, 'Dokumen Standar SPMI', 'dokumenstandar', 'Dokumen Standar SPMI', '2022-03-07 14:27:27', '2022-09-21 07:52:04'),
(4, 'Dokumen Panduan Akreditasi BAN/LAM', 'dokumenspme', 'Dokumen SPME', '2022-04-24 05:18:26', '2024-02-12 07:20:37'),
(5, 'Dokumen Pembelajaran', 'dokumenpembelajaran', 'Dokumen Pembelajaran', '2022-04-24 05:23:35', '2022-04-24 05:23:35'),
(6, 'Dokumen Survey Layanan Akademik', 'dokumensurvey', 'Dokumen Survey Layanan Akademik', '2022-09-21 07:31:00', '2022-09-21 07:40:05'),
(7, 'Dokumen Survey Tata Pamong', 'dokumensurveytatapamong', 'Dokumen Survey Tata Pamong', '2022-09-21 07:40:53', '2022-09-21 07:40:53'),
(8, 'Dokumen Kebijakan SPMI', 'dokumenkebijakanspmi', 'Dokumen Kebijakan SPMI', '2022-09-21 07:52:41', '2022-09-21 07:52:41'),
(9, 'Dokumen Peningkatan Standar SPMI I', 'dokumenpeningkatanstandarspmi', 'Dokumen Peningkatan Standar SPMI I', '2022-09-21 07:53:29', '2023-12-29 06:28:19'),
(10, 'Pedoman Pengembangan Suasana Akademik', 'pedomanpengembangansuasanaakademik', 'Pedoman Pengembangan Suasana Akademik', '2022-09-21 08:54:44', '2022-09-21 08:54:44'),
(11, 'Dokumen Survey Suasana Akademik', 'dokumensurveysuasanaakademik', 'Dokumen Survey Suasana Akademik', '2022-09-21 09:18:49', '2022-09-21 09:18:49'),
(12, 'Dokumen Formulir SPMI', 'dokumenformulirspmi', 'Dokumen Formulir SPMI', '2022-09-21 09:31:46', '2022-09-21 09:31:46'),
(13, 'Dokumen Manual SPMI', 'dokumenmanualspmi', 'Dokumen Manual SPMI', '2022-09-22 03:05:36', '2022-09-22 03:05:36'),
(14, 'Laporan Audit Mutu Internal', 'laporanauditmutuinternal', 'Laporan Audit Mutu Internal', '2023-05-04 06:57:54', '2023-05-04 06:57:54'),
(15, 'Dokumen Peningkatan Standar SPMI II', 'dokumenpeningkatanstandarspmiii', 'Dokumen Peningkatan Standar II', '2023-12-29 06:30:02', '2023-12-29 06:30:02'),
(16, 'Dokumen Survey Visi Misi', 'dokumensurveyvisimisi', 'Dokumen Survey Visi Misi Institusi', '2024-01-29 09:10:14', '2024-01-29 09:10:14'),
(17, 'Laporan Rapat Tinjauan Manajemen', 'laporanrapattinjauanmanajemen', 'Laporan Rapat Tinjauan Manajemen', '2024-02-12 06:15:44', '2024-02-12 06:15:44'),
(18, 'Dokumen Tracer Study', 'dokumentracerstudy', 'Dokumen Tracer Study', '2024-02-15 05:52:04', '2024-02-15 05:52:04'),
(19, 'Rekognisi Pembelajaran Lampau', 'rekognisipembelajaranlampau', 'Rekognisi Pembelajaran Lampau', '2024-04-05 06:13:39', '2024-04-05 06:13:39'),
(20, 'Rencana Strategis', 'resntra', 'Rencana strategis', '2024-05-31 03:00:35', '2024-05-31 03:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_study` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `id_result` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification_internationals`
--

CREATE TABLE `certification_internationals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_faculties` bigint(20) UNSIGNED NOT NULL,
  `id_study` bigint(20) UNSIGNED NOT NULL,
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_assessment` date NOT NULL,
  `e_assessment` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departements`
--

CREATE TABLE `departements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_faculty` bigint(20) UNSIGNED NOT NULL,
  `departement_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departements`
--

INSERT INTO `departements` (`id`, `id_faculty`, `departement_name`, `created_at`, `updated_at`) VALUES
(3, 1, 'Perencanaan Pariwisata', '2022-02-19 01:15:38', '2022-02-19 01:15:38'),
(5, 1, 'Usaha Perjalanan Wisata', '2022-03-27 15:22:35', '2022-03-27 15:22:35'),
(6, 1, 'Perhotelan', '2022-03-27 15:24:19', '2022-03-27 15:24:19'),
(7, 1, 'Manajemen Bisnis Pariwisata', '2022-03-27 15:24:43', '2022-03-27 15:24:43'),
(8, 1, 'PSDKU Perhotelan Diploma III Jembrana', '2022-03-27 15:27:36', '2022-07-07 05:57:18'),
(9, 2, 'Administrasi Bisnis', '2022-03-27 15:29:13', '2022-03-27 15:29:13'),
(10, 2, 'Manajemen Bisnis Internasional', '2022-03-27 15:29:43', '2022-03-27 15:29:43'),
(11, 2, 'Bisnis Digital', '2022-03-27 15:30:09', '2022-03-27 15:30:09'),
(12, 3, 'Akuntansi', '2022-03-27 15:38:02', '2022-03-27 15:38:02'),
(13, 3, 'Akuntansi Manajerial', '2022-03-27 15:39:16', '2022-03-27 15:39:16'),
(14, 3, 'Akuntansi Perpajakan', '2022-03-27 15:39:35', '2022-03-27 15:39:43'),
(15, 4, 'Teknik Sipil', '2022-03-27 15:40:11', '2022-03-27 15:40:11'),
(16, 4, 'Manajemen Proyek Konstruksi', '2022-03-27 15:40:38', '2022-03-27 15:40:38'),
(17, 4, 'Teknologi Rekayasa Konstruksi Bangunan Gedung', '2022-03-27 15:41:39', '2022-03-27 15:41:39'),
(18, 5, 'Teknik Listrik', '2022-03-27 15:42:12', '2022-03-27 15:42:12'),
(19, 5, 'Manajemen Informatika', '2022-03-27 15:42:28', '2022-03-27 15:42:28'),
(20, 5, 'Teknik Otomasi', '2022-03-27 15:42:42', '2022-03-27 15:42:42'),
(21, 5, 'Teknologi Rekayasa Perangkat Lunak', '2022-03-27 15:43:16', '2022-03-27 15:43:16'),
(22, 6, 'Teknik Mesin', '2022-03-27 15:45:02', '2022-03-27 15:45:02'),
(23, 6, 'Teknik Pendingin Dan Tata Udara', '2022-03-27 15:45:25', '2022-03-27 15:45:25'),
(24, 6, 'Teknologi Rekayasa Utilitas', '2022-03-27 15:46:24', '2022-07-07 03:36:16'),
(25, 4, 'Teknologi Rekayasa Konstruksi Bangunan Air', '2022-07-07 05:29:25', '2022-07-07 05:29:25'),
(26, 4, 'Fondasi, Beton dan Pengaspalan Jalan', '2022-07-07 05:45:53', '2022-07-07 05:45:53'),
(27, 6, 'Rekayasa Perancangan Mekanik', '2022-07-07 05:51:08', '2022-07-07 05:51:08'),
(28, 6, 'Teknik Manufaktur Mesin', '2022-07-07 05:51:28', '2022-07-07 05:51:28'),
(29, 5, 'Instalasi Pemeliharaan Kabel Bertegangan Rendah', '2022-07-07 05:53:35', '2022-07-07 05:53:35'),
(30, 5, 'Administrasi Jaringan Komputer', '2022-07-07 05:53:48', '2022-07-07 05:53:48'),
(31, 3, 'Administrasi Perpajakan', '2022-07-07 05:54:37', '2022-07-07 05:54:37'),
(32, 2, 'Manajemen Operasi Bisnis Digital', '2022-07-07 05:55:12', '2022-07-07 05:55:12'),
(33, 1, 'PSDKU Perhotelan Diploma III Lombok Barat', '2022-07-07 05:57:48', '2022-07-07 05:57:48'),
(35, 1, 'Manajemen Bisnis Pariwisata (Tourism Business Management)', '2022-08-24 00:18:41', '2022-08-24 00:18:41'),
(36, 1, 'Perhotalan (Hospitality)', '2022-08-24 00:23:17', '2022-08-24 00:23:17'),
(37, 1, 'Usaha Perjalanan Wisata (Tour and Travel Operation)', '2022-08-24 00:25:06', '2022-08-24 00:25:06'),
(38, 1, 'Perencanaan Pariwisata (Tourism Business Planning)', '2022-08-24 00:26:53', '2022-08-24 00:26:53'),
(39, 1, 'Bahasa Inggris untuk Komunikasi Bisnis dan Profesional', '2022-09-06 03:32:07', '2022-09-06 03:32:07'),
(40, 1, 'Program Studi Perhotelan Kampus Kab. Karangasem', '2023-07-05 02:49:57', '2023-07-05 02:49:57'),
(41, 2, 'Program Studi Administrasi Bisnis Kab. Karangasem', '2024-01-15 05:59:54', '2024-01-15 06:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `url_file`, `title`, `id_category`, `desc`, `created_at`, `updated_at`) VALUES
(12, '02_08_ 2022-06_29_34.PDD_01 PRINT.pdf', 'PDD - Standar Kompetensi Lulusan Tahun 2020-2024', '2', 'PDD - Standar Kompetensi Lulusan Tahun 2020-2024', '2022-03-29 08:09:29', '2022-08-01 23:29:34'),
(13, '29_03_2022-15_11_45.STD-PDD-02 Standar Isi Pembelajaran Tahun 2020-2024.pdf', 'PDD - Standar Isi Pembelajaran Tahun 2020-2024', '2', 'PDD - Standar Isi Pembelajaran Tahun 2020-2024', '2022-03-29 08:11:45', '2022-03-29 08:11:45'),
(14, '29_03_2022-15_12_36.STD-PDD-03 Standar Proses Pembelajaran Tahun 2020-2024.pdf', 'PDD - Standar Proses Pembelajaran Tahun 2020-2024', '2', 'PDD - Standar Proses Pembelajaran Tahun 2020-2024', '2022-03-29 08:12:36', '2022-03-29 08:12:36'),
(15, '29_03_2022-15_13_35.STD-PDD-04 Standar Penilaian Pendidikan Pembelajaran Tahun 2020-2024.pdf', 'PDD - Standar Penilaian Pendidikan Pembelajaran Tahun 2020-2024', '2', 'PDD - Standar Penilaian Pendidikan Pembelajaran Tahun 2020-2024', '2022-03-29 08:13:35', '2022-03-29 08:13:35'),
(16, '29_03_2022-15_14_25.STD-PDD-05 Standar Dosen dan Tenaga Kependidikan Tahun 2020-2024.pdf', 'PDD - Standar Dosen dan Tenaga Kependidikan Tahun 2020-2024', '2', 'PDD - Standar Dosen dan Tenaga Kependidikan Tahun 2020-2024', '2022-03-29 08:14:25', '2022-03-29 08:14:25'),
(17, '01_04_2022-21_49_33.STD-PDD-06 Standar sarana dan Prasarana Pembelajaran Tahun 2020-2024.pdf', 'PDD - Standar Sarana dan Prasarana Pembelajaran Tahun 2020-2024', '2', 'PDD - Standar Sarana dan Prasarana Pembelajaran Tahun 2020-2024', '2022-04-01 14:49:33', '2022-04-01 14:49:33'),
(18, '01_04_2022-21_50_03.STD-PDD-07 Standar Pengelolaan Pembelajaran Tahun 2020-2024.pdf', 'PDD - Standar Pengelolaan Pembelajaran Tahun 2020-2024', '2', 'PDD - Standar Pengelolaan Pembelajaran Tahun 2020-2024', '2022-04-01 14:50:03', '2022-04-01 14:50:03'),
(19, '01_04_2022-21_50_35.STD-PDD-08 Standar Pembiayaan Pembelajaran Tahun 2020-2024.pdf', 'PDD - Standar Pembiayaan Pembelajaran Tahun 2020-2024', '2', 'PDD - Standar Pembiayaan Pembelajaran Tahun 2020-2024', '2022-04-01 14:50:35', '2022-04-01 14:50:35'),
(20, '01_04_2022-22_49_37.STD-PNT-01 Standar Hasil Penelitian Tahun 2020-2024.pdf', 'PNT - Standar Hasil Penelitian Tahun 2020-2024', '2', 'PNT - Standar Hasil Penelitian Tahun 2020-2024', '2022-04-01 15:49:37', '2022-04-01 15:49:37'),
(21, '01_04_2022-22_50_04.STD-PNT-02 Standar Isi Penelitian Tahun 2020-2024.pdf', 'PNT - Standar Isi Penelitian Tahun 2020-2024', '2', 'PNT - Standar Isi Penelitian Tahun 2020-2024', '2022-04-01 15:50:04', '2022-04-01 15:50:04'),
(22, '01_04_2022-22_50_56.STD-PNT-03 Standar Proses Penelitian Tahun 2020-2024.pdf', 'PNT - Standar Proses Penelitian Tahun 2020-2024', '2', 'PNT - Standar Proses Penelitian Tahun 2020-2024', '2022-04-01 15:50:56', '2022-04-01 15:50:56'),
(23, '01_04_2022-22_51_26.STD-PNT-04 Standar Penilaian Penelitian Tahun 2020-2024.pdf', 'PNT - Standar Penilaian Penelitian Tahun 2020-2024', '2', 'PNT - Standar Penilaian Penelitian Tahun 2020-2024', '2022-04-01 15:51:26', '2022-04-01 15:51:26'),
(24, '01_04_2022-22_52_02.STD-PNT-05 Standar Peneliti Tahun 2020-2024.pdf', 'PNT - Standar Peneliti Tahun 2020-2024', '2', 'PNT - Standar Peneliti Tahun 2020-2024', '2022-04-01 15:52:02', '2022-04-01 15:52:02'),
(25, '01_04_2022-22_52_38.STD-PNT-06 Standar Sarana dan Prasarana Penelitian Tahun 2020-2024.pdf', 'PNT - Standar Sarana dan Prasarana Penelitian Tahun 2020-2024', '2', 'PNT - Standar Sarana dan Prasarana Penelitian Tahun 2020-2024', '2022-04-01 15:52:38', '2022-04-01 15:52:38'),
(26, '01_04_2022-22_53_13.STD-PNT-07 Standar Pengelolaan Penelitian Tahun 2020-2024.pdf', 'PNT - Standar Pengelolaan Penelitian Tahun 2020-2024', '2', 'PNT - Standar Pengelolaan Penelitian Tahun 2020-2024', '2022-04-01 15:53:13', '2022-04-01 15:53:13'),
(27, '01_04_2022-22_53_45.STD-PNT-08 Standar Pendanaan dan Pembiayaan Penelitian Tahun 2020-2024.pdf', 'PNT - Standar Pendanaan dan Pembiayaan Penelitian Tahun 2020-2024', '2', 'PNT - Standar Pendanaan dan Pembiayaan Penelitian Tahun 2020-2024', '2022-04-01 15:53:45', '2022-04-01 15:53:45'),
(28, '01_04_2022-22_58_38.STD-PKM-01 Standar Hasil PKM Tahun 2020-2024.pdf', 'PKM - Standar Hasil PKM Tahun 2020-2024', '2', 'PKM - Standar Hasil PKM Tahun 2020-2024', '2022-04-01 15:58:38', '2022-04-01 15:59:14'),
(29, '01_04_2022-22_59_38.STD-PKM-02 Standar Isi PKM Tahun 2020-2024.pdf', 'PKM - Standar Isi PKM Tahun 2020-2024', '2', 'PKM - Standar Isi PKM Tahun 2020-2024', '2022-04-01 15:59:38', '2022-04-01 16:01:09'),
(30, '01_04_2022-23_00_22.STD-PKM-03 Standar Proses PKM Tahun 2020-2024.pdf', 'PKM - Standar Proses PKM Tahun 2020-2024', '2', 'PKM - Standar Proses PKM Tahun 2020-2024', '2022-04-01 16:00:22', '2022-04-01 16:00:22'),
(31, '01_04_2022-23_00_58.STD-PKM-04 Standar Penilaian PKM Tahun 2020-2024.pdf', 'PKM - Standar Penilaian PKM Tahun 2020-2024', '2', 'PKM - Standar Penilaian PKM Tahun 2020-2024', '2022-04-01 16:00:58', '2022-04-01 16:00:58'),
(32, '01_04_2022-23_02_39.STD-PKM-05 Standar Pelaksana PKM Tahun 2020-2024.pdf', 'PKM - Standar Pelaksana PKM Tahun 2020-2024', '2', 'PKM - Standar Pelaksana PKM Tahun 2020-2024', '2022-04-01 16:02:39', '2022-04-01 16:02:39'),
(33, '01_04_2022-23_03_06.STD-PKM-06 Standar Sarana dan Prasarana PKM Tahun 2020-2024.pdf', 'PKM - Standar Sarana dan Prasarana PKM Tahun 2020-2024', '2', 'PKM - Standar Sarana dan Prasarana PKM Tahun 2020-2024', '2022-04-01 16:03:06', '2022-04-01 16:03:06'),
(34, '01_04_2022-23_03_32.STD-PKM-07 Standar Pengelolaan PKM Tahun 2020-2024.pdf', 'PKM - Standar Pengelolaan PKM Tahun 2020-2024', '2', 'PKM - Standar Pengelolaan PKM Tahun 2020-2024', '2022-04-01 16:03:32', '2022-04-01 16:03:32'),
(35, '01_04_2022-23_04_12.STD-PKM-08 Standar Pendanaan dan Pembiayaan PKM Tahun 2020-2024.pdf', 'PKM - Standar Pendanaan dan Pembiayaan PKM Tahun 2020-2024', '2', 'PKM - Standar Pendanaan dan Pembiayaan PKM Tahun 2020-2024', '2022-04-01 16:04:12', '2022-04-01 16:04:12'),
(36, '07_07_2022-09_27_50.2. Pedoman Penyusunan Kurikulum MBKM 2020.pdf', 'Pedoman Penyusunan Kurikulum MBKM 2020', '5', 'Buku Pedoman Penyusunan Kurikulum MBKM 2020', '2022-07-07 02:27:50', '2022-07-07 02:27:50'),
(37, '07_07_2022-09_36_38.Lampiran-1-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA-Fin NASKAH AKADEMIK.pdf', 'Lampiran 1 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:36:38', '2022-07-07 02:37:22'),
(38, '07_07_2022-09_37_53.Lampiran-2-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA KRITERIA DAN PROSEDUR.pdf', 'Lampiran 2 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:37:53', '2022-07-07 02:37:53'),
(39, '07_07_2022-09_38_23.Lampiran-3-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA PANDUAN PENYUSUNAN DED.pdf', 'Lampiran 3 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:38:23', '2022-07-07 02:38:23'),
(40, '07_07_2022-09_38_49.Lampiran-4-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA PANDUAN PENYUSUNAN DKPS.pdf', 'Lampiran 4 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:38:49', '2022-07-07 02:38:49'),
(41, '07_07_2022-09_39_20.Lampiran-5-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA PANDUAN DOKUMEN PEMANTAUAN DAN EVALUASI.pdf', 'Lampiran 5 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:39:20', '2022-07-07 02:39:20'),
(42, '07_07_2022-09_39_51.Lampiran-6-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA-Fin.xlsx', 'Lampiran 6 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:39:51', '2022-07-07 02:39:51'),
(43, '07_07_2022-09_40_13.Lampiran-7-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA-Fin.xlsx', 'Lampiran 7 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:40:13', '2022-07-07 02:40:13'),
(44, '07_07_2022-09_40_33.Lampiran-8-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA-Fin.xlsx', 'Lampiran 8 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:40:33', '2022-07-07 02:40:33'),
(45, '07_07_2022-09_40_59.Lampiran-9-Peraturan-BAN-PT-Nomor-8-2021-Instrumen-EMBA-Fin PANDUAN PENILAIAN AKREDITASI LAMEMBA.pdf', 'Lampiran 9 Instrumen LAM EMBA', '4', 'Instrumen LAM EMBA', '2022-07-07 02:40:59', '2022-07-07 02:40:59'),
(46, '07_07_2022-09_42_36.6506208949336881652.pdf', 'Peraturan BAN-PT No.8 Tahun 2021 tentang Instrumen APS Lingkup EMBA', '4', 'Peraturan tentang Instrumen LAM EMBA', '2022-07-07 02:42:36', '2022-07-07 02:42:36'),
(47, '07_07_2022-09_47_34.Lampiran-1-Peraturan-BAN-PT-Nomor-5-2022-tentang-IAPS-D3-Infokom.pdf', 'Lampiran 1 Instrumen LAM INFOKOM-D3', '4', 'Instrumen LAM INFOKOM-D3', '2022-07-07 02:47:34', '2022-07-07 02:47:34'),
(48, '07_07_2022-09_48_10.Lampiran-2-Peraturan-BAN-PT-Nomor-5-2022-tentang-IAPS-D3-Infokom.pdf', 'Lampiran 2 Instrumen LAM INFOKOM-D3', '4', 'Instrumen LAM INFOKOM-D3', '2022-07-07 02:48:10', '2022-07-07 02:48:10'),
(49, '07_07_2022-09_48_35.Lampiran-3-Peraturan-BAN-PT-Nomor-5-2022-tentang-IAPS-D3-Infokom.pdf', 'Lampiran 3 Instrumen LAM INFOKOM-D3', '4', 'Instrumen LAM INFOKOM-D3', '2022-07-07 02:48:35', '2022-07-07 02:48:35'),
(50, '07_07_2022-09_49_08.Lampiran-4-Peraturan-BAN-PT-Nomor-5-2022-tentang-IAPS-D3-Infokom.pdf', 'Lampiran 4 Instrumen LAM INFOKOM-D3', '4', 'Instrumen LAM INFOKOM-D3', '2022-07-07 02:49:08', '2022-07-07 02:49:08'),
(51, '07_07_2022-09_49_33.Lampiran-5-Peraturan-BAN-PT-Nomor-5-2022-tentang-IAPS-D3-Infokom.pdf', 'Lampiran 5 Instrumen LAM INFOKOM-D3', '4', 'Instrumen LAM INFOKOM-D3', '2022-07-07 02:49:33', '2022-07-07 02:49:33'),
(52, '07_07_2022-09_49_56.Lampiran-6-Peraturan-BAN-PT-Nomor-5-2022-tentang-IAPS-D3-Infokom.pdf', 'Lampiran 6 Instrumen LAM INFOKOM-D3', '4', 'Instrumen LAM INFOKOM-D3', '2022-07-07 02:49:56', '2022-07-07 02:49:56'),
(53, '07_07_2022-09_51_26.Peraturan-BAN-PT-Nomor-5-2022-tentang-IAPS-D3-Infokom.pdf', 'Peraturan BAN-PT No.5 Tahun 2022 tentang Instrumen APS D3 Infokom', '4', 'Peraturan BAN-PT No.5 Tahun 2022 tentang Instrumen APS D3 Infokom', '2022-07-07 02:51:26', '2022-07-07 02:51:26'),
(54, '07_07_2022-09_53_25.Lamp.-1-PerBAN-PT-No.6-2022-tentang-IAPS-STr-Infokom.pdf', 'Lampiran 1 Instrumen LAM INFOKOM-S.Tr', '4', 'Instrumen LAM INFOKOM-S.Tr', '2022-07-07 02:53:25', '2022-07-07 02:53:42'),
(55, '07_07_2022-09_54_05.Lamp.2-PerBAN-PT-No.-6-2022-tentang-IAPS-STr-Infokom.pdf', 'Lampiran 2 Instrumen LAM INFOKOM-S.Tr', '4', 'Instrumen LAM INFOKOM-S.Tr', '2022-07-07 02:54:05', '2022-07-07 02:54:05'),
(56, '07_07_2022-09_54_27.Lamp.3-PerBAN-PT-No.6-2022-tentang-IAPS-STr-Infokom.pdf', 'Lampiran 3 Instrumen LAM INFOKOM-S.Tr', '4', 'Instrumen LAM INFOKOM-S.Tr', '2022-07-07 02:54:27', '2022-07-07 02:54:27'),
(57, '07_07_2022-09_54_47.Lamp.4-PerBAN-PT-No.-6-2022-tentang-IAPS-STr-Infokom.pdf', 'Lampiran 4 Instrumen LAM INFOKOM-S.Tr', '4', 'Instrumen LAM INFOKOM-S.Tr', '2022-07-07 02:54:47', '2022-07-07 02:54:47'),
(58, '07_07_2022-09_55_03.Lamp.-5-PerBAN-PT-No.-6-2022-tentang-IAPS-STr-Infokom.pdf', 'Lampiran 5 Instrumen LAM INFOKOM-S.Tr', '4', 'Instrumen LAM INFOKOM-S.Tr', '2022-07-07 02:55:03', '2022-07-07 02:55:03'),
(59, '07_07_2022-09_55_22.Lamp.-6-PerBAN-PT-No.6-2022-tentang-IAPS-STr-Infokom.pdf', 'Lampiran 6 Instrumen LAM INFOKOM-S.Tr', '4', 'Instrumen LAM INFOKOM-S.Tr', '2022-07-07 02:55:22', '2022-07-07 02:55:22'),
(60, '07_07_2022-09_56_27.Peraturan-BAN-PT-Nomor-6-2022-tentang-IAPS-STr-Infokom.pdf', 'Peraturan BAN-PT No.6 Tahun 2022 tentang Instrumen APS S.Tr Infokom', '4', 'Peraturan BAN-PT No.6 Tahun 2022 tentang Instrumen APS S.Tr Infokom', '2022-07-07 02:56:27', '2022-07-07 02:56:27'),
(61, '07_07_2022-10_04_13.Kriteria-dan-Prosedur-Akreditasi-LAM-Teknik-ver-03-per-22112021-1.pdf', 'Kriteria dan Prosedur Akreditasi LAM Teknik', '4', 'Kriteria dan Prosedur Akreditasi LAM Teknik', '2022-07-07 03:04:13', '2022-07-07 03:04:13'),
(62, '07_07_2022-10_10_15.Matrik-Penilaian-LED-dan-LKPS-Diploma-II-APS-Akademik-dan-Vokasi-Teknik.pdf', 'Matrik-Penilaian-LED-dan-LKPS-Diploma-II-APS-Akademik-dan-Vokasi-LAM Teknik', '4', 'Matrik-Penilaian-LED-dan-LKPS-Diploma-II-APS-Akademik-dan-Vokasi-Teknik', '2022-07-07 03:10:15', '2022-07-07 03:34:28'),
(63, '07_07_2022-10_10_43.Matrik-Penilaian-LED-dan-LKPS-Diploma-III-APS-Akademik-dan-Vokasi-Teknik.pdf', 'Matrik-Penilaian-LED-dan-LKPS-Diploma-III-APS-Akademik-dan-Vokasi-LAM Teknik', '4', 'Matrik-Penilaian-LED-dan-LKPS-Diploma-III-APS-Akademik-dan-Vokasi-Teknik', '2022-07-07 03:10:43', '2022-07-07 03:34:14'),
(64, '07_07_2022-10_11_30.Matrik-Penilaian-LED-dan-LKPS-Magister-Terapan-APS-Akademik-dan-Vokasi-Teknik.pdf', 'Matrik-Penilaian-LED-dan-LKPS-Magister-Terapan-APS-Akademik-dan-Vokasi-LAM Teknik', '4', 'Matrik-Penilaian-LED-dan-LKPS-Magister-Terapan-APS-Akademik-dan-Vokasi-Teknik', '2022-07-07 03:11:30', '2022-07-07 03:34:01'),
(65, '07_07_2022-10_11_53.Matrik-Penilaian-LED-dan-LKPS-Sarjana-Terapan-APS-Akademik-dan-Vokasi-Teknik.pdf', 'Matrik-Penilaian-LED-dan-LKPS-Sarjana-Terapan-APS-Akademik-dan-Vokasi-LAMTeknik', '4', 'Matrik-Penilaian-LED-dan-LKPS-Sarjana-Terapan-APS-Akademik-dan-Vokasi-Teknik', '2022-07-07 03:11:53', '2022-07-07 03:33:42'),
(66, '07_07_2022-10_12_23.Naskah-Akademik-Akreditasi-Program-Studi-Akademik-dan-Vokasi-Teknik.pdf', 'Naskah-Akademik-Akreditasi-Program-Studi-Akademik-dan-Vokasi-LAMTeknik', '4', 'Naskah-Akademik-Akreditasi-Program-Studi-Akademik-dan-Vokasi-Teknik', '2022-07-07 03:12:23', '2022-07-07 03:33:18'),
(67, '07_07_2022-10_12_51.Panduan-Penyusunan-dan-Laporan-Kinerja-Program-Studi-APS-Akademik-dan-Vokasi.pdf', 'Panduan-Penyusunan-dan-Laporan-Kinerja-Program-Studi-APS-Akademik-dan-Vokasi', '4', 'Panduan-Penyusunan-dan-Laporan-Kinerja-Program-Studi-APS-Akademik-dan-Vokasi', '2022-07-07 03:12:51', '2022-07-07 03:12:51'),
(68, '07_07_2022-10_13_17.Panduan-Penyusunan-Laporan-Evaluasi-Diri-APS-Akademik-dan-Vokasi.pdf', 'Panduan-Penyusunan-Laporan-Evaluasi-Diri-APS-Akademik-dan-Vokasi LAM Teknik', '4', 'Panduan-Penyusunan-Laporan-Evaluasi-Diri-APS-Akademik-dan-Vokasi', '2022-07-07 03:13:17', '2022-07-07 03:32:31'),
(69, '07_07_2022-10_13_48.Pedoman-Penilaian-APS-Akademik-dan-Vokasi-Teknik.pdf', 'Pedoman-Penilaian-APS-Akademik-dan-Vokasi-LAM Teknik', '4', 'Pedoman-Penilaian-APS-Akademik-dan-Vokasi-Teknik', '2022-07-07 03:13:48', '2022-07-07 03:31:14'),
(70, '07_07_2022-10_14_35.Peraturan-BAN-PT-Nomor-12-2021-Instrumen-Akademik-dan-VokasiLAM-Teknik_Final.pdf.pdf', 'Peraturan-BAN-PT-Nomor-12-2021-Instrumen-Akademik-dan-VokasiLAM-Teknik', '4', 'Peraturan-BAN-PT-Nomor-12-2021-Instrumen-Akademik-dan-VokasiLAM-Teknik', '2022-07-07 03:14:35', '2022-07-07 03:14:35'),
(71, '07_07_2022-10_21_48.Lampiran-1-PerBAN-PT-5-2019-tentang-IAPS-Naskah-Akademik.pdf', 'Lampiran-1-PerBAN-PT-5-2019-tentang-IAPS-Naskah-Akademik', '4', 'Lampiran-1-PerBAN-PT-5-2019-tentang-IAPS-Naskah-Akademik', '2022-07-07 03:21:48', '2022-07-07 03:21:48'),
(72, '07_07_2022-10_24_15.Lampiran-2-PerBAN-PT-5-2019-tentang-IAPS-Kriteria-dan-Prosedur.pdf', 'Lampiran-2-PerBAN-PT-5-2019-tentang-IAPS-Kriteria-dan-Prosedur', '4', 'Lampiran-2-PerBAN-PT-5-2019-tentang-IAPS-Kriteria-dan-Prosedur', '2022-07-07 03:24:15', '2022-07-07 03:24:38'),
(73, '07_07_2022-10_25_08.Lampiran-3-PerBAN-PT-5-2019-tentang-IAPS-Panduan-Penyusunan-LED.pdf', 'Lampiran-3-PerBAN-PT-5-2019-tentang-IAPS-Panduan-Penyusunan-LED', '4', 'Lampiran-3-PerBAN-PT-5-2019-tentang-IAPS-Panduan-Penyusunan-LED', '2022-07-07 03:25:08', '2022-07-07 03:25:08'),
(74, '07_07_2022-10_25_34.Lampiran-4-PerBAN-PT-5-2019-tentang-IAPS-Panduan-Penyusunan-LKPS.pdf', 'Lampiran-4-PerBAN-PT-5-2019-tentang-IAPS-Panduan-Penyusunan-LKPS', '4', 'Lampiran-4-PerBAN-PT-5-2019-tentang-IAPS-Panduan-Penyusunan-LKPS', '2022-07-07 03:25:34', '2022-07-07 03:25:34'),
(75, '07_07_2022-10_26_01.Lampiran-5-PerBAN-PT-5-2019-tentang-IAPS-Pedoman-Penilaian.pdf', 'Lampiran-5-PerBAN-PT-5-2019-tentang-IAPS-Pedoman-Penilaian', '4', 'Lampiran-5-PerBAN-PT-5-2019-tentang-IAPS-Pedoman-Penilaian', '2022-07-07 03:26:01', '2022-07-07 03:26:01'),
(76, '07_07_2022-10_27_37.Lampiran-6d-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Diploma-Tiga.pdf', 'Lampiran-6d-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Diploma-Tiga', '4', 'Lampiran-6d-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Diploma-Tiga', '2022-07-07 03:27:37', '2022-07-07 03:27:37'),
(77, '07_07_2022-10_28_13.Lampiran-6e-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Sarjana-Terapan.pdf', 'Lampiran-6e-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Sarjana-Terapan', '4', 'Lampiran-6e-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Sarjana-Terapan', '2022-07-07 03:28:13', '2022-07-07 03:28:13'),
(78, '07_07_2022-10_28_36.Lampiran-6f-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Magister-Terapan.pdf', 'Lampiran-6f-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Magister-Terapan', '4', 'Lampiran-6f-PerBAN-PT-5-2019-tentang-IAPS-Matriks-Penilaian-Program-Magister-Terapan', '2022-07-07 03:28:36', '2022-07-07 03:28:36'),
(79, '07_07_2022-10_28_58.Lampiran-7-PerBAN-PT-5-2019-tentang-IAPS-Pedoman-Asesmen-Lapangan.pdf', 'Lampiran-7-PerBAN-PT-5-2019-tentang-IAPS-Pedoman-Asesmen-Lapangan', '4', 'Lampiran-7-PerBAN-PT-5-2019-tentang-IAPS-Pedoman-Asesmen-Lapangan', '2022-07-07 03:28:58', '2022-07-07 03:28:58'),
(80, '07_07_2022-10_29_20.Peraturan-BAN-PT-No.-5-Tahun-2019-Instrumen-APS-1.pdf', 'Peraturan-BAN-PT-No.-5-Tahun-2019-Instrumen-APS-1', '4', 'Peraturan-BAN-PT-No.-5-Tahun-2019-Instrumen-APS-1', '2022-07-07 03:29:20', '2022-07-07 03:29:20'),
(81, '13_09_2022-14_56_03.PANDUAN PENYUSUNAN DOKUMEN KURIKULUM PNB 2022 OK.pdf', 'Panduan Penyusunan Naskah Akademik Kurikulum MBKM 2022', '5', 'Panduan Penyusunan Naskah Akademik Kurikulum MBKM 2022', '2022-09-13 07:56:03', '2022-09-13 07:56:03'),
(82, '19_09_ 2022-05_08_04.pedoman pelaksanaan kegiatan Merdeka Belajar PNB NEW.pdf', 'Pedoman Pelaksanaan Kegiatan MBKM 2022', '5', 'Pedoman Pelaksanaan Kegiatan MBKM 2022', '2022-09-13 07:57:05', '2022-09-18 22:08:04'),
(83, '20_09_2022-09_57_30.BUKU PEDOMAN PENGEMBAGAN DAN EVALUASI KURIKULUM PNB 2017 NEW (1).pdf', 'Pedoman Kurikulum 2017', '5', 'Pedoman Kurikulum 2017', '2022-09-20 02:57:30', '2022-09-20 02:57:30'),
(85, '21_09_2022-14_46_20.PDD_Kerjasama_01.pdf', 'Standar Tambahan - Standar Kerjasama 2020-2024', '2', 'Standar Tambahan - Standar Kerjasama 2020-2024', '2022-09-21 07:46:20', '2022-09-21 07:46:20'),
(86, '21_09_2022-14_47_24.PDD_TATA PAMONG_02.pdf', 'Standar Tambahan - Standar Tata Pamong 2020-2024', '2', 'Standar Tambahan - Standar Tata Pamong 2020-2024', '2022-09-21 07:47:24', '2022-09-21 07:47:24'),
(87, '21_09_2022-14_48_48.PDD_KEMAHASISWAAN_03.pdf', 'Standar Tambahan - Standar Kemahasiswaan 2020-2024', '2', 'Standar Tambahan - Standar Kemahasiswaan 2020-2024', '2022-09-21 07:48:48', '2022-09-21 07:48:48'),
(88, '21_09_2022-14_49_35.PDD_visi misi_04.pdf', 'Standar Tambahan - Standar Visi Misi 2020-2024', '2', 'Standar Tambahan - Standar Visi Misi 2020-2024', '2022-09-21 07:49:35', '2022-09-21 07:49:35'),
(89, '21_09_2022-14_54_22.Kebijakan SPMI 2020-2024 Final.pdf', 'Dokumen Kebijakan SPMI', '8', 'Dokumen Kebijakan SPMI', '2022-09-21 07:54:22', '2022-09-21 07:54:22'),
(90, '21_09_2022-15_18_02.PDD_TATA PAMONG PRINT.pdf', 'Dokumen Peningkatan Standar Tata Pamong', '9', 'Dokumen Peningkatan Standar Tata Pamong', '2022-09-21 08:18:02', '2022-09-21 08:18:02'),
(91, '21_09_2022-15_19_14.PDD_03 PRINT.pdf', 'Dokumen Peningkatan Standar Proses Pembelajaran', '9', 'Dokumen Peningkatan Standar Proses Pembelajaran', '2022-09-21 08:19:14', '2022-09-21 08:19:14'),
(92, '21_09_2022-15_20_25.PDD_04 rev1 PRINT.pdf', 'Dokumen Peningkatan Standar Proses Penilaian Pendidikan Pembelajaran', '9', 'Dokumen Peningkatan Standar Proses Penilaian Pendidikan Pembelajaran', '2022-09-21 08:20:25', '2022-09-21 08:21:50'),
(93, '21_09_2022-15_21_04.PDD_05 PRINT.pdf', 'Dokumen Peningkatan Standar Dosen dan Tenaga Kependidikan', '9', 'Dokumen Peningkatan Standar Dosen dan Tenaga Kependidikan', '2022-09-21 08:21:04', '2022-09-21 08:21:39'),
(94, '21_09_2022-15_32_55.Laporan Survey layanan akademik 2021.pdf', 'Laporan Survey Layanan Akademik 2021', '6', 'Laporan Survey Layanan Akademik 2021', '2022-09-21 08:32:55', '2022-09-21 08:32:55'),
(95, '21_09_2022-15_49_49.laporan kepuasan sistem tata pamong 2020 lengkap sekali.pdf', 'Dokumen Survey Tata Pamong 2020', '7', 'Dokumen Survey Tata Pamong 2020', '2022-09-21 08:49:49', '2022-09-21 08:49:49'),
(96, '21_09_2022-15_50_26.laporan kepuasan sistem tata pamong 2021 lengkap sekali.pdf', 'Dokumen Survey Tata Pamong 2021', '7', 'Dokumen Survey Tata Pamong 2021', '2022-09-21 08:50:26', '2022-09-21 08:50:26'),
(97, '21_09_2022-15_56_10.Pedoman Pengembangan Suasana Akademik 2020 OK.pdf', 'Dokumen Pengembangan Suasana Akademik', '10', 'Dokumen Pengembangan Suasana Akademik', '2022-09-21 08:56:10', '2022-09-21 08:56:10'),
(98, '21_09_2022-16_16_15.LAPORAN SURVEY LAYANAN MAHASISWA 2020 TTD LENGKAP.pdf', 'Laporan Survey Layanan Akademik 2020', '6', 'Laporan Survey Layanan Akademik 2020', '2022-09-21 09:16:15', '2023-03-26 10:40:18'),
(99, '21_09_2022-16_23_22.Laporan Lengkap Survey Suasana Akademik 2021.pdf', 'Laporan Survey Suasana Akademik 2021', '11', 'Laporan Survey Suasana Akademik 2021', '2022-09-21 09:23:22', '2022-09-21 09:23:22'),
(100, '21_09_2022-16_33_05.FORMULIR SPMI_FRM_SPMI_01.pdf', 'Dokumen Formulir SPMI', '12', 'Dokumen Formulir SPMI', '2022-09-21 09:33:05', '2022-09-21 09:33:05'),
(101, '22_09_2022-10_09_14.1_Manual   Kompetensi Lulusan.pdf', 'Manual Kompetensi Lulusan Tahun 2020 - 2024', '13', 'Manual Kompetensi Lulusan Tahun 2020 - 2024', '2022-09-22 03:09:14', '2022-09-22 03:09:14'),
(102, '22_09_2022-10_09_56.2_Manual   Isi Pembelajaran (1).pdf', 'Manual Isi Pembelajaran Tahun 2020 - 2024', '13', 'Manual Isi Pembelajaran Tahun 2020 - 2024', '2022-09-22 03:09:56', '2022-09-22 03:13:39'),
(103, '22_09_2022-10_10_40.3_Manual  Proses Pembelajaran.pdf', 'Manual Proses Pembelajaran Tahun 2020 - 2024', '13', 'Manual Proses Pembelajaran Tahun 2020 - 2024', '2022-09-22 03:10:40', '2022-09-22 03:13:53'),
(104, '22_09_2022-10_11_45.4_Manual Penilaian Pembelajaran.pdf', 'Manual Penialaian Pembelajaran Tahun 2020 - 2024', '13', 'Manual Penialaian Pembelajaran Tahun 2020 - 2024', '2022-09-22 03:11:45', '2022-09-22 03:14:05'),
(105, '22_09_2022-10_12_33.5_Manual   Dosen dan Tenaga Kependidikan.pdf', 'Manual Dosen dan Tenaga Kependidikan Tahun 2020 - 2024', '13', 'Manual Dosen dan Tenaga Kependidikan Tahun 2020 - 2024', '2022-09-22 03:12:33', '2022-09-22 03:14:15'),
(106, '22_09_2022-10_15_01.6_Manual   Sarana dan Prasarana Pembelajaran.pdf', 'Manual Sarana dan Prasarana Pembelajaran Tahun 2020 - 2024', '13', 'Manual Sarana dan Prasarana Pembelajaran Tahun 2020 - 2024', '2022-09-22 03:15:01', '2022-09-22 03:15:01'),
(107, '22_09_2022-10_15_37.7_Manual   Pengelolaan Pembelajaran.pdf', 'Manual Pengelolaan Pembelajaran Tahun 2020 - 2024', '13', 'Manual Pengelolaan Pembelajaran Tahun 2020 - 2024', '2022-09-22 03:15:37', '2022-09-22 03:15:37'),
(108, '22_09_2022-10_16_18.8_Manual   Pembiayaan Pembelajaran .pdf', 'Manual Pembiayaan Pembelajaran Tahun 2020 - 2024', '13', 'Manual Pembiayaan Pembelajaran Tahun 2020 - 2024', '2022-09-22 03:16:18', '2022-09-22 03:16:18'),
(109, '22_09_2022-10_16_58.1_Manual   Hasil Penelitain.pdf', 'Manual Hasil Penelitian Tahun 2020 - 2024', '13', 'Manual Hasil Penelitian Tahun 2020 - 2024', '2022-09-22 03:16:58', '2022-09-22 03:16:58'),
(110, '22_09_2022-10_17_34.2_Manual   Isi Penelitain.pdf', 'Manual Isi Penelitian Tahun 2020 - 2024', '13', 'Manual Isi Penelitian Tahun 2020 - 2024', '2022-09-22 03:17:34', '2022-09-22 03:17:34'),
(111, '22_09_2022-10_18_04.3_Manual  Proses Penelitian.pdf', 'Manual Proses Penelitian Tahun 2020 - 2024', '13', 'Manual Proses Penelitian Tahun 2020 - 2024', '2022-09-22 03:18:04', '2022-09-22 03:18:04'),
(112, '22_09_2022-10_18_45.4_Manual  Penilaian Penelitian.pdf', 'Manual Penilaian Penelitian Tahun 2020 - 2024', '13', 'Manual Penilaian Penelitian Tahun 2020 - 2024', '2022-09-22 03:18:45', '2022-09-22 03:18:45'),
(113, '22_09_2022-10_19_23.6_Manual  Sarana dan Prasarana Penelitian.pdf', 'Manual Sarana dan Prasarana Penelitian Tahun 2020 - 2024', '13', 'Manual Sarana dan Prasarana Penelitian Tahun 2020 - 2024', '2022-09-22 03:19:23', '2022-09-22 03:19:23'),
(114, '22_09_2022-10_19_55.7_Manual  Pengelolaan Penelitian.pdf', 'Manual Pengelolaan Penelitian Tahun 2020 - 2024', '13', 'Manual Pengelolaan Penelitian Tahun 2020 - 2024', '2022-09-22 03:19:55', '2022-09-22 03:19:55'),
(115, '22_09_2022-10_20_32.8_Manual   Pendanaan dan Pembiayaan  Penelitain.pdf', 'Manual Pendanaan dan Pembiayaan Penelitian Tahun 2020 - 2024', '13', 'Manual Pendanaan dan Pembiayaan Penelitian Tahun 2020 - 2024', '2022-09-22 03:20:32', '2022-09-22 03:20:32'),
(116, '22_09_2022-10_21_17.1_Manual   Hasil PKM.pdf', 'Manual Hasil PKM Tahun 2020 - 2024', '13', 'Manual Hasil PKM Tahun 2020 - 2024', '2022-09-22 03:21:17', '2022-09-22 03:21:17'),
(117, '22_09_2022-10_21_47.2_Manual   Isi  PKM.pdf', 'Manual Isi PKM Tahun 2020 - 2024', '13', 'Manual Isi PKM Tahun 2020 - 2024', '2022-09-22 03:21:47', '2022-09-22 03:21:47'),
(118, '22_09_2022-10_22_24.3_Manual   Proses  PKM.pdf', 'Manual Proses PKM Tahun 2020 - 2024', '13', 'Manual Proses PKM Tahun 2020 - 2024', '2022-09-22 03:22:24', '2022-09-22 03:22:24'),
(119, '22_09_2022-10_22_57.4_Manual   Penilaian  PKM.pdf', 'Manual Penilaian PKM Tahun 2020 - 2024', '13', 'Manual Penilaian PKM Tahun 2020 - 2024', '2022-09-22 03:22:57', '2022-09-22 03:22:57'),
(120, '22_09_2022-10_24_05.5_Manual   Pelaksana  PKM.pdf', 'Manual Pelaksana PKM Tahun 2020 - 2024', '13', 'Manual Pelaksana PKM Tahun 2020 - 2024', '2022-09-22 03:24:05', '2022-09-22 03:24:05'),
(121, '22_09_2022-10_24_23.Laporan Survei Layanan Akademik 2022 TTD.pdf', 'Laporan Survey Layanan Akademik 2022', '6', 'Laporan Survey Layanan Akademik 2022', '2022-09-22 03:24:23', '2022-09-22 03:24:23'),
(122, '22_09_2022-10_25_20.6_Manual   Sarana dan Prasarana  PKM.pdf', 'Manual Sarana dan Prasarana PKM Tahun 2020 - 2024', '13', 'Manual Sarana dan Prasarana PKM Tahun 2020 - 2024', '2022-09-22 03:25:20', '2022-09-22 03:25:20'),
(123, '22_09_2022-10_26_23.7_Manual   Pengelolaan  PKM.pdf', 'Manual Pengelolaan PKM Tahun 2020 - 2024', '13', 'Manual Pengelolaan PKM Tahun 2020 - 2024', '2022-09-22 03:26:23', '2022-09-22 03:26:23'),
(124, '22_09_2022-10_26_59.8_Manual   Pendanaan dan Pembiayaan  PKM.pdf', 'Manual Pendanaan dan Pembiayaan PKM Tahun 2020 - 2024', '13', 'Manual Pendanaan dan Pembiayaan PKM Tahun 2020 - 2024', '2022-09-22 03:26:59', '2022-09-22 03:26:59'),
(125, '22_09_2022-10_28_00.1_Manual Kerjasama.pdf', 'Manual Kerjasama Tahun 2020 - 2024', '13', 'Manual Kerjasama Tahun 2020 - 2024', '2022-09-22 03:28:00', '2022-09-22 03:28:00'),
(126, '22_09_2022-10_28_35.2_Manual Tata Pamong.pdf', 'Manual Tata Pamong Tahun 2020 - 2024', '13', 'Manual Tata Pamong', '2022-09-22 03:28:35', '2022-09-22 06:15:50'),
(127, '22_09_2022-10_29_25.3_Manual Kemahasiswaan.pdf', 'Manual Kemahasiswaan Tahun 2020 - 2024', '13', 'Manual Kemahasiswaan Tahun 2020 - 2024', '2022-09-22 03:29:25', '2022-09-22 03:29:25'),
(128, '22_09_2022-10_29_52.4_Manual Visi Misi.pdf', 'Manual Visi Misi Tahun 2020 - 2024', '13', 'Manual Visi Misi Tahun 2020 - 2024', '2022-09-22 03:29:52', '2022-09-22 03:29:52'),
(129, '22_09_2022-10_33_20.5_Manual   Peneliti.pdf', 'Manual Peneliti Tahun 2020 - 2024', '13', 'Manual Peneliti Tahun 2020 - 2024', '2022-09-22 03:33:20', '2022-09-22 03:33:20'),
(130, '22_09_2022-10_36_10.27_03_2022-21_33_18.Laporan IKM Tahun 2019 TTD.pdf', 'Laporan Survey Layanan Akademik 2019', '6', 'Laporan Survey Layanan Akademik 2019', '2022-09-22 03:36:10', '2022-09-22 03:36:10'),
(131, '22_09_2022-10_36_42.27_03_2022-22_08_46.Laporan IKM Tahun 2018 TTD.pdf', 'Laporan Survey Layanan Akademik 2018', '6', 'Laporan Survey Layanan Akademik 2018', '2022-09-22 03:36:42', '2022-09-22 03:36:42'),
(132, '07_05_2023-20_57_24.Laporan survey tata pamong complete 2022 New.pdf', 'Laporan Survey Tata Pamong 2022', '7', 'Laporan Survey Tata Pamong 2022', '2023-05-07 13:57:24', '2023-05-07 13:57:24'),
(133, '07_05_2023-21_00_09.Laporan Survei Layanan Akademik 2022 TTD.pdf', 'Laporan Survey Layanan Akademik 2022', '6', 'Laporan Survey Layanan Akademik 2022', '2023-05-07 14:00:09', '2023-05-07 14:00:09'),
(134, '08_05_ 2023-13_41_12.JUKNIS PELAKSANAAN MBKM PNB newest 2023.pdf', 'Petunjuk Teknis MBKM', '5', 'Petunjuk Teknis MBKM', '2023-05-07 14:08:01', '2023-05-08 06:41:12'),
(135, '29_12_2023-13_39_25.STANDAR KOMPETENSI LULUSAN REV 1.pdf', 'Standar Kompetensi Lulusan', '15', 'Standar Kompetensi Lulusan 2023', '2023-12-29 06:39:25', '2023-12-29 06:45:00'),
(136, '29_12_2023-13_41_48.STANDAR ISI PEMBELAJARAN REV 1.pdf', 'Standar Isi Pembelajaran', '15', 'Standar Isi Pembelajaran 2023', '2023-12-29 06:41:48', '2023-12-29 06:44:37'),
(137, '29_12_2023-13_43_19.STANDAR PROSES PEMBELAJARAN REV 2.pdf', 'Standar Proses Pembelajaran', '15', 'Standar Proses Pembelajaran 2023', '2023-12-29 06:43:19', '2023-12-29 06:44:29'),
(138, '29_12_2023-13_44_21.STANDAR PENILAIAN PENDIDIKAN PEMBELAJARAN REV 2.pdf', 'Standar Penilaian Pendidikan Pembelajaran', '15', 'Standar Penilaian Pendidikan Pembelajaran 2023', '2023-12-29 06:44:21', '2023-12-29 06:44:49'),
(139, '29_12_2023-13_55_55.STANDAR DOSEN DAN TENDIK REV 2.pdf', 'Standar Dosen dan Tenaga Kependidikan', '15', 'Standar Dosen dan Tenaga Kependidikan 2023', '2023-12-29 06:55:55', '2023-12-29 06:55:55'),
(140, '29_12_2023-13_58_13.STANDAR SARANA DAN PRASARANA PEMBELAJARAN REV 1.pdf', 'Standar Sarana dan Prasarana Pembelajaran', '15', 'Standar Sarana dan Prasarana Pembelajaran 2023', '2023-12-29 06:58:13', '2023-12-29 06:58:13'),
(141, '29_12_2023-13_59_10.STANDAR PENGELOLAAN PEMBELAJARAN REV 1.pdf', 'Standar Pengelolaan Pembelajaran', '15', 'Standar Pengelolaan Pembelajaran 2023', '2023-12-29 06:59:10', '2023-12-29 06:59:10'),
(142, '29_12_2023-13_59_41.STANDAR PEMBIAYAAN PEMBELAJARAN REV 1.pdf', 'Standar Pembiayaan Pembelajaran', '15', 'Standar Pembiayaan Pembelajaran 2023', '2023-12-29 06:59:41', '2023-12-29 06:59:41'),
(143, '29_12_2023-21_12_04.Kebijakan SPMI 2020-2024 Revisi RPL[1].pdf', 'Dokumen Kebijakan SPMI Rev 1 2023', '8', 'Dokumen Kebijakan SPMI Rev 1 2023', '2023-12-29 14:12:04', '2023-12-29 14:12:37'),
(144, '29_12_2023-21_14_58.PNT_01 REV1.pdf', 'Standar Hasil Penelitian', '15', 'Standar Hasil Penelitian 2023', '2023-12-29 14:14:58', '2023-12-29 14:15:51'),
(145, '29_12_2023-21_17_46.PNT_02 REV1.pdf', 'Standar Isi Penelitian', '15', 'Standar Isi Penelitian 2023', '2023-12-29 14:17:46', '2023-12-29 14:17:46'),
(146, '29_12_2023-21_18_34.PNT_03 REV1.pdf', 'Standar Proses Penelitian', '15', 'Standar Proses Penelitian 2023', '2023-12-29 14:18:34', '2023-12-29 14:18:34'),
(147, '29_12_2023-21_21_58.PNT_04 REV1.pdf', 'Standar Penilaian Penelitian', '15', 'Standar Penilaian Penelitian 2023', '2023-12-29 14:21:58', '2023-12-29 14:21:58'),
(148, '29_12_2023-21_22_38.PNT_05 REV1.pdf', 'Standar Peneliti', '15', 'Standar Peneliti 2023', '2023-12-29 14:22:38', '2023-12-29 14:22:38'),
(149, '29_12_2023-21_23_29.PNT_06 REV1.pdf', 'Standar Sarana dan Prasarana Penelitian', '15', 'Standar Sarana dan Prasarana Penelitian 2023', '2023-12-29 14:23:29', '2023-12-29 14:23:29'),
(150, '29_12_2023-21_24_17.PNT_07 REV1.pdf', 'Standar Pengelolaan Penelitian', '15', 'Standar Pengelolaan Penelitian 2023', '2023-12-29 14:24:17', '2023-12-29 14:24:17'),
(151, '29_12_2023-21_24_48.PNT_08 REV1.pdf', 'Standar Pembiayaan Penelitian', '15', 'Standar Pembiayaan Penelitian 2023', '2023-12-29 14:24:48', '2023-12-29 14:24:48'),
(152, '29_12_2023-21_26_55.PKM_01 REV1.pdf', 'Standar Hasil Pengabdian kepada Masyarakat', '15', 'Standar Hasil Pengabdian kepada Masyarakat 2023', '2023-12-29 14:26:55', '2023-12-29 14:27:29'),
(153, '29_12_2023-21_27_21.PKM_02 REV1.pdf', 'Standar Isi Pengabdian kepada Masyarakat', '15', 'Standar Isi Pengabdian kepada Masyarakat 2023', '2023-12-29 14:27:21', '2023-12-29 14:27:21'),
(154, '29_12_2023-21_27_53.PKM_03 REV1.pdf', 'Standar Proses Pengabdian kepada Masyarakat', '15', 'Standar Proses Pengabdian kepada Masyarakat 2023', '2023-12-29 14:27:53', '2023-12-29 14:27:53'),
(155, '29_12_2023-21_28_19.PKM_04 REV1.pdf', 'Standar Penilaian Pengabdian kepada Masyarakat', '15', 'Standar Penilaian Pengabdian kepada Masyarakat 2023', '2023-12-29 14:28:19', '2023-12-29 14:28:19'),
(156, '29_12_2023-21_29_25.PKM_05 REV1.pdf', 'Standar Pelaksana Pengabdian kepada Masyarakat', '15', 'Standar Pelaksana Pengabdian kepada Masyarakat', '2023-12-29 14:29:25', '2023-12-29 14:29:25'),
(157, '29_12_2023-21_30_03.PKM_06 REV1.pdf', 'Standar Sarana dan Prasarana Pengabdian kepada Masyarakat', '15', 'Standar Sarana dan Prasarana Pengabdian kepada Masyarakat 2023', '2023-12-29 14:30:03', '2023-12-29 14:30:03'),
(158, '29_12_2023-21_30_28.PKM_07 REV1.pdf', 'Standar Pengelolaan Pengabdian kepada Masyarakat', '15', 'Standar Pengelolaan Pengabdian kepada Masyarakat 2023', '2023-12-29 14:30:28', '2023-12-29 14:30:28'),
(159, '29_12_2023-21_30_52.PKM_08 REV1.pdf', 'Standar Pembiayaan Pengabdian kepada Masyarakat', '15', 'Standar Pembiayaan Pengabdian kepada Masyarakat 2023', '2023-12-29 14:30:52', '2023-12-29 14:30:52'),
(160, '29_12_2023-21_31_50.STP01_Kerjasama PRINT REV1.pdf', 'Standar Kerjasama', '15', 'Standar Kerjasama 2023', '2023-12-29 14:31:50', '2023-12-29 14:31:50'),
(161, '29_12_2023-21_32_14.STP02_TATA PAMONG PRINT REV2.pdf', 'Standar Tata Pamong', '15', 'Standar Tata Pamong 2023', '2023-12-29 14:32:14', '2023-12-29 14:32:14'),
(162, '29_12_2023-21_32_37.STP03_KEMAHASISWAAN REV1.pdf', 'Standar Kemahasiswaan', '15', 'Standar Kemahasiswaan 2023', '2023-12-29 14:32:37', '2023-12-29 14:32:37'),
(163, '29_12_2023-21_32_58.STP04_visi misiREV1.pdf', 'Standar Visi Misi', '15', 'Standar Visi Misi 2023', '2023-12-29 14:32:58', '2023-12-29 14:32:58'),
(164, '29_01_2024-16_11_15.laporan survey visi misi 2023.pdf', 'Dokumen Survey Visi Misi 2023', '16', 'Dokumen Survey Visi Misi 2023', '2024-01-29 09:11:15', '2024-01-29 09:11:15'),
(165, '29_01_2024-16_35_06.laporan survey layanan akademik 2023 FINAL.pdf', 'Laporan Survey Layanan Akademik 2023', '6', 'Laporan Survey Layanan Akademik 2023', '2024-01-29 09:35:06', '2024-01-29 09:35:06'),
(166, '28_04_ 2024-11_47_27.LAPORAN AUDIT MUTU INTERNAL 2023 FINAL LENGKAP.pdf', 'Laporan Audit Mutu Internal 2023', '14', 'Laporan Audit Mutu Internal 2023', '2024-01-29 09:36:11', '2024-04-28 04:47:27'),
(167, '29_01_2024-16_44_29.LAPORAN AMI 2022 FULL VERSION.pdf', 'Laporan Audit Mutu Internal 2022', '14', 'Laporan Audit Mutu Internal 2022', '2024-01-29 09:44:29', '2024-01-29 09:46:10'),
(168, '12_02_2024-14_00_57.LAPORAN RTM 2023.pdf', 'Laporan Rapat Tinjauan Manajemen 2023', '17', 'Laporan Rapat Tinjauan Manajemen 2023', '2024-02-12 07:00:57', '2024-02-12 07:00:57'),
(169, '12_02_2024-14_03_45.LAPORAN RTM 2022[1].pdf', 'Laporan Rapat Tinjauan Manajemen 2022', '17', 'Laporan Rapat Tinjauan Manajemen 2022', '2024-02-12 07:03:45', '2024-02-12 07:03:45'),
(170, '12_02_2024-14_12_01.Laporan Survei Visi Misi 2022 TTD.pdf', 'Dokumen Survey Visi Misi 2022', '16', 'Laporan Survey Visi Misi 2022', '2024-02-12 07:12:01', '2024-02-12 07:12:42'),
(171, '28_04_ 2024-16_51_27.LaporanTracerStudy2023.pdf', 'Dokumen Tracer Study 2023', '18', 'Dokumen Tracer Study 2023', '2024-02-15 05:54:34', '2024-04-28 09:51:27'),
(172, '18_03_ 2024-15_05_14.Pedoman Penyusunan Kurikulum PTV 2024 newest.pdf', 'Pedoman Penyusunan Kurikulum PTV 2023 PNB', '5', 'Pedoman Kurikulum Pendidikan Tinggi Vokasi PNB', '2024-03-01 14:26:16', '2024-03-18 08:05:14'),
(173, '05_04_2024-13_15_04.PEDOMAN RPL 2024 PNB LENGKAP.pdf', 'Pedoman RPL', '19', 'Dokumen Pedoman Rekognisi Pembelajaran Lampau', '2024-04-05 06:15:04', '2024-04-05 06:15:04'),
(174, '31_05_2024-10_03_08.RENCANA STRATEGIS P4MP 2020 2024.pdf', 'Rencana Strategis P4MP 2020-2024', '20', 'Rencana Strategis P4MP 2020-2024', '2024-05-31 03:03:08', '2024-05-31 03:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `faculty_name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'PW', 'Jurusan Pariwisata', '2022-02-18 02:08:10', '2022-02-19 02:38:49'),
(2, 'AB', 'Jurusan Administrasi Bisnis', '2022-02-18 02:08:34', '2024-01-15 06:01:10'),
(3, 'AK', 'Jurusan Akuntansi', '2022-02-18 02:08:59', '2022-02-19 02:38:32'),
(4, 'TS', 'Jurusan Teknik Sipil', '2022-02-18 02:09:24', '2022-02-19 02:38:25'),
(5, 'TE', 'Jurusan Teknik Elektro', '2022-02-18 02:09:48', '2022-02-19 02:38:18'),
(6, 'TM', 'Jurusan Teknik Mesin', '2022-02-18 02:10:06', '2022-03-07 14:43:16'),
(7, 'TI', 'Jurusan Teknik Informasi', '2024-01-15 06:02:43', '2024-01-15 06:02:43');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level_name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'D-III', 'Diploma Tiga', '2022-02-18 02:11:11', '2022-02-18 02:11:30'),
(2, 'D-IV / Sarjana Terapan', 'D-IV / Sarjana Terapan', '2022-02-18 02:11:51', '2022-02-18 02:11:51'),
(3, 'S2 Terapan', 'S2 Terapan', '2022-02-19 01:09:31', '2022-02-19 01:09:31'),
(4, 'D-II Fast Track', 'Diploma Dua Fast Track', '2022-03-27 14:50:12', '2022-03-27 14:50:38'),
(5, 'Program RPL', 'Program Rekognisi Pembelajaran Lampau', '2022-03-27 15:28:18', '2022-03-27 15:28:18');

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
(4, '2021_06_18_074908_create_categories_table', 1),
(5, '2021_06_18_080628_create_posts_table', 1),
(6, '2021_06_22_155756_create_faculties_table', 1),
(7, '2021_06_22_160242_create_departements_table', 1),
(8, '2021_06_22_160654_create_permission_tables', 1),
(9, '2021_10_01_173008_create_certifications_table', 1),
(10, '2021_10_02_194502_create_certification_internationals_table', 1),
(11, '2021_10_04_162434_create_web_contents_table', 1),
(12, '2021_10_14_215859_create_accreditations_table', 1),
(13, '2021_10_15_000635_create_levels_table', 1),
(14, '2021_10_16_214721_create_accreditation_internationals_table', 1),
(15, '2021_10_16_225637_create_results_table', 1),
(16, '2021_10_21_145133_create_documents_table', 1),
(17, '2021_10_25_000623_create_category_documents_table', 1),
(18, '2022_02_23_214146_add_slug_news_category', 2),
(20, '2022_02_28_221113_add_category_accreditations', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(21, 'App\\Models\\User', 10),
(23, 'App\\Models\\User', 21),
(22, 'App\\Models\\User', 22);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(11, 'publish news', 'web', '2022-02-27 03:41:23', '2022-02-27 03:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `url_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `url_photo`, `title`, `content`, `created_at`, `updated_at`) VALUES
(15, 22, 1, 'adminp4mp_05_04_2022-11_28_37.jpg', 'Sosialisasi Pelaksanaan Monitoring dan Evaluasi di Lingkungan PNB', '<p>Kamis, 24 Maret 2022-<strong> </strong>P4MP Politeknik Negeri Bali melaksanakan Sosialisasi Pelaksanaan Monitoring dan Evaluasi secara daring melalui aplikasi zoom. Acara ini secara resmi dibuka oleh Wakil Direktur I PNB, Bapak Anak Agung Ngurah Bagus Mulawarman, ST.,MT&nbsp; disela kegiatan beliau dalam tugas ke Batam. Perserta yang hadir adalah seluruh Sekeretaris Jurusan, Kepala Program Studi di lingkungan Politeknik Negeri Bali ditambah dengan perwakilan Kampus Cabang Gianyar dan PSDKU Jembrana dan Lombok. Pemaparan sosialisasi dilakukan oleh Kepala Pusat Pengembangan Pembelajaran dan Penjaminan Mutu Pendidikan(P4MP), Bapak Dr.Putu Wijaya Sunu, ST,MT.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam sosislisasi ini Wadir I mengemukakan pentingnya P4MP dalam menyelaraskan visi misi Institusi dan menunjuk P4MP membentuk unit SPMI, SPME dan Pengembangan Pembelajaran. Lebih jauh lagi beliu membahas&nbsp; pentingnya implementasi MBKM dan PBL (Project Based Learning) untuk diterapkan di kampus&nbsp; mengacu pada arahan Dirjen Diksi Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kepala P4MP dalam pemaparanya menjelaskan sistematika SPMI berdasarkan pada Undang-Undang No. 12 Tahun 2012 Tentang Pendidikan Tinggi dan Permenristekdikti No. 62 Tahun 2016 Tentang SPM Dikti dilanjutkan dengan diskusi menyeluruh untuk pendalaman pemahaman monitoring dan evaluasi (adm P4MP).</p>', '2022-04-05 04:28:37', '2022-04-05 04:28:37'),
(16, 22, 3, 'adminp4mp_27_07_2022-10_11_06.jpg', 'Hasil Survey Layanan Akademik 2022', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Pelaksanaan survei kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali tahun ini merupakan kegiatan rutin yang dilakukan oleh Pusat Pengembangan Pembelajaran dan Penjaminan Mutu Pendidikan (P4MP) Politeknik Negeri Bali. Kegiatan ini dilakukan dalam rangka memonitor mutu pelayanan dan menjamin efektivitas penerapan Sistem Penjaminan Mutu.&nbsp;Ruang lingkup survei adalah indek tingkat kepuasan mahasiswa terhadap kualitas pelayanan Politeknik Negeri Bali dengan menggunakan Skala Likert dengan 4 alternatif<br />\r\njawaban, yaitu 4 = Sangat Baik, 3 = Baik, 2 = Kurang Baik, 1 = Tidak Baik. Jumlah mahasiswa yang dipakai sebagai responden adalah sebanyak 5.177 orang dari 6 Jurusan. Pelaksanaan survei dilakukan oleh 8 orang surveyor dengan menggunakan kuesioner pada semester 1&nbsp;2022.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Hasil survei pada tahun 2022 ini, memperlihatkan rata-rata angka indek kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali sebesar 3,23. Aspek jaminan pelayanan (Assurance) mendapatkan peringkat paling tinggi yaitu sebesar 3,32. Aspek daya tanggap (Responsiveness) dan empati (Empaty) mendapatkan peringkat paling rendah yaitu 3,19. Berdasarkan PERMENPAN&amp;RB Nomor 14 tahun 2014 tentang Pedoman Penyusunan Survei Kepuasan Masyarakat Unit Penyelenggara Pelayanan Publik&nbsp;dapat dinyatakan bahwa kualitas pelayanan pendidikan di Politeknik Negeri Bali adalah Baik.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Oleh karena itu, diharapkan agar semua unit pelayanan dapat menjaga dan meningkatkan kualitas pelayanannya pada tahun 2022. Jika dibandingkan dengan hasil survei pada tahun 2021 sebesar 3,14; maka capaian tahun 2022 ini menunjukkan adanya peningkatan sebesar 0,09.</p>', '2022-07-27 03:05:22', '2022-07-27 03:12:10'),
(17, 22, 3, 'adminp4mp_13_09_2022-13_25_47.jpg', 'Hasil Survey Layanan Akademik 2021', '<p>Pelaksanaan survei kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali tahun ini merupakan kegiatan rutin yang dilakukan oleh Pusat Pengembangan Pembelajaran dan Penjaminan Mutu Pendidikan (P4MP) Politeknik Negeri Bali. Kegiatan ini dilakukan dalam rangka memonitor mutu pelayanan dan menjamin efektivitas penerapan Sistem Penjaminan Mutu.&nbsp;Ruang lingkup survei adalah indek tingkat kepuasan mahasiswa terhadap kualitas pelayanan Politeknik Negeri Bali dengan menggunakan Skala Likert dengan 4 alternatif jawaban, yaitu 4 = Sangat Baik, 3 = Baik, 2 = Kurang Baik, 1 = Tidak Baik. Mahasiswa yang dipakai sebagai responden berasal dari 6 Jurusan. Pelaksanaan survei dilakukan oleh 8 orang surveyor dengan menggunakan kuesioner pada semester 1 2021.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Hasil survei pada tahun 2021 ini, memperlihatkan rata-rata angka indek kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali sebesar 3,14. Aspek jaminan pelayanan (Assurance) mendapatkan peringkat paling tinggi yaitu sebesar 3,24. Aspek daya tanggap (Responsiveness) mendapatkan peringkat paling rendah yaitu 3,09. Berdasarkan PERMENPAN&amp;RB Nomor 14 tahun 2014 tentang Pedoman Penyusunan Survei Kepuasan Masyarakat Unit Penyelenggara Pelayanan Publik&nbsp;dapat dinyatakan bahwa kualitas pelayanan pendidikan di Politeknik Negeri Bali adalah Baik.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Oleh karena itu, diharapkan agar semua unit pelayanan dapat menjaga dan meningkatkan kualitas pelayanannya pada tahun 2022. Jika dibandingkan dengan hasil survei pada tahun 2020 sebesar 3,23; maka capaian tahun 2021 ini menunjukkan sedikit penurunan sebesar 0,09 yang secara umum disebabkan adanya Covid-19.</p>', '2022-09-13 06:25:47', '2022-09-13 06:25:47'),
(18, 22, 2, 'adminp4mp_13_09_2022-15_06_05.jpg', 'Benchmarking P4MP ke Politeknik Negeri Bandung', '<p>Kunjungan Tim P4MP ke Politeknik Negeri Bandung untuk studi banding SPMI&nbsp; dilaksanakan dari tanggal 16 Juni &ndash; 18 Juni 2021. Kegiatan studi banding ini terkait&nbsp;pelaksanaan SPMI di Politeknik Negeri Bandung dan pelaksanaan SPMI di Politeknik&nbsp; Negeri Bali. Lingkup pelaksanaan SPMI yang dijadikan bahan untuk studi&nbsp;banding meliputi peningkatan budaya mutu melalui penyusunan kebijakan SPMI, manual&nbsp;SPMI, standar SPMi dan formulir SPMI serta pelaksanaan Audit Mutu Internal maupun&nbsp;Eksternal.</p>', '2022-09-13 08:06:05', '2022-09-13 08:06:05'),
(19, 22, 2, 'adminp4mp_13_09_2022-15_10_42.jpg', 'Benchmarking SPMI ke Politeknik Negeri Malang', '<p>Studi banding terkait Sistem Penjaminan Mutu Internal ke Politeknik Negeri Malang (Polinema) yang dilaksanakan mulai tanggal 3 Juni 2021 sampai dengan 5 Juni 2021 meliputi pelaksanaan SPMI yang dilaksanakan di POLINEMA, dimana bahan sebagai studi banding meliputi peningkatan budaya mutu melalui penyusunan Kebijakan SPMI, Manual SPMI, Standar SPMI dan Formulir SPMI serta pelaksanaan Audit Mutu Internal maupun Eksternal.&nbsp;</p>', '2022-09-13 08:10:42', '2022-09-13 08:10:42'),
(20, 22, 3, 'adminp4mp_13_09_2022-15_25_54.jpg', 'Survey Layanan Akademik 2020', '<p>Pelaksanaan survei kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali tahun ini merupakan kegiatan rutin yang dilakukan oleh Pusat Pengembangan Pembelajaran dan Penjaminan Mutu Pendidikan (P4MP) Politeknik Negeri Bali. Kegiatan ini dilakukan dalam rangka memonitor mutu pelayanan dan menjamin efektivitas penerapan Sistem Penjaminan Mutu.&nbsp;Ruang lingkup survei adalah indek tingkat kepuasan mahasiswa terhadap kualitas pelayanan Politeknik Negeri Bali dengan menggunakan Skala Likert dengan 4 alternatif jawaban, yaitu 4 = Sangat Baik, 3 = Baik, 2 = Kurang Baik, 1 = Tidak Baik. Mahasiswa yang dipakai sebagai responden berasal dari 6 Jurusan. Pelaksanaan survei dilakukan oleh 8 orang surveyor dengan menggunakan kuesioner pada semester 1 2020.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Hasil survei pada tahun 2020 ini, memperlihatkan rata-rata angka indek kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali sebesar 3,22. Aspek jaminan pelayanan (Assurance) mendapatkan peringkat paling tinggi yaitu sebesar 3,31. Aspek daya tanggap (Responsiveness) mendapatkan peringkat paling rendah yaitu 3,18. Berdasarkan PERMENPAN&amp;RB Nomor 14 tahun 2014 tentang Pedoman Penyusunan Survei Kepuasan Masyarakat Unit Penyelenggara Pelayanan Publik&nbsp;dapat dinyatakan bahwa kualitas pelayanan pendidikan di Politeknik Negeri Bali adalah Baik.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Oleh karena itu, diharapkan agar semua unit pelayanan dapat menjaga dan meningkatkan kualitas pelayanannya pada tahun 2021. Jika dibandingkan dengan hasil survei pada tahun 2019 sebesar 3,06; maka capaian tahun 2020 ini menunjukkan peningkatan signifikan sebesar 0,16 yang disebabkan peningkatan komitmen kerja civitas.</p>', '2022-09-13 08:25:54', '2022-09-13 08:25:54'),
(21, 22, 3, 'adminp4mp_13_09_2022-15_36_31.jpg', 'Survey Layanan Akademik 2019', '<p>Pelaksanaan survei kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali tahun ini merupakan kegiatan rutin yang dilakukan oleh Pusat Pengembangan Pembelajaran dan Penjaminan Mutu Pendidikan (P4MP) Politeknik Negeri Bali. Kegiatan ini dilakukan dalam rangka memonitor mutu pelayanan dan menjamin efektivitas penerapan Sistem Penjaminan Mutu.&nbsp;Ruang lingkup survei adalah indek tingkat kepuasan mahasiswa terhadap kualitas pelayanan Politeknik Negeri Bali dengan menggunakan Skala Likert dengan 4 alternatif jawaban, yaitu 4 = Sangat Baik, 3 = Baik, 2 = Kurang Baik, 1 = Tidak Baik. Mahasiswa yang dipakai sebagai responden berasal dari 6 Jurusan. Pelaksanaan survei dilakukan oleh 8 orang surveyor dengan menggunakan kuesioner pada semester 1 2019.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Hasil survei pada tahun 2019 ini, memperlihatkan rata-rata angka indek kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali sebesar 3,06. Aspek jaminan pelayanan (Assurance) mendapatkan peringkat paling tinggi yaitu sebesar 3,18. Aspek daya tanggap (Responsiveness) mendapatkan peringkat paling rendah yaitu 3,00. Berdasarkan PERMENPAN&amp;RB Nomor 14 tahun 2014 tentang Pedoman Penyusunan Survei Kepuasan Masyarakat Unit Penyelenggara Pelayanan Publik&nbsp;dapat dinyatakan bahwa kualitas pelayanan pendidikan di Politeknik Negeri Bali adalah Baik.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Oleh karena itu, diharapkan agar semua unit pelayanan dapat menjaga dan meningkatkan kualitas pelayanannya pada tahun 2020. Jika dibandingkan dengan hasil survei pada tahun 2018 sebesar 3,05; maka capaian tahun 2019 ini menunjukkan sedikit peningkatan sebesar 0,01.</p>', '2022-09-13 08:36:31', '2022-09-13 08:36:31'),
(22, 22, 2, 'adminp4mp_14_09_2022-20_35_33.jpg', 'Kunjungan dan Benchmarking dari Politeknik Pertanian Negeri Samarinda', '<p>Pada Jumat 3 Desember 2021, tim dari Politeknik Pertanian Negeri Samarinda yang dipimpin Bpk.&nbsp;Dr. Abdul Rasyid Zarta, S.Hut., MP mengunjungi Politeknik Negeri Bali. Dalam kunjungan ini dilakukan external benchmarking antara pengelola SPMI kedua Politeknik. Pertemuan diawali dengan pemaparan sistem penjaminan mutu Politeknik Negeri Bali oleh Dr. Putu Wijaya Sunu, ST., MT dan dilanjutkan oleh Ernita Obeth, M.Agribus,Ph.D sebagai pengelola penjaminan mutu Politani Samarinda. Tidak hanya mengenai SPMI, juga didiskusikan mengenai peningkatan akreditasi prodi maupun institusi, penerapan MBKM serta bagaimana integrasi penelitian dan pengabdian kepada masyarakat ke dalam proses pembelajaran. Pertemuan yang dilangsungkan di ruang Widya Graha PNB, menghasilkan komitmen pengembangan SPMI di kedua Politeknik.</p>', '2022-09-14 13:35:33', '2022-09-22 20:41:26'),
(23, 22, 2, 'adminp4mp_14_09_2022-21_16_06.jpg', 'Kunjungan dari Tim Politeknik Transportasi Darat Bali', '<p>Tim Politeknik Transportasi Darat Bali yang dipimpin oleh&nbsp;I Gusti Bagus Eka Nitiyasa, S.T., M.T bersama Hendra Yuda Novianto, S.E dan Kadek Diah Dwi Apsari, A.Ma PKB melakukan kunjungan dan benchmarking mengenai sistem penjaminan mutu internal (SPMI) ke Pusat Pengembangan Pembelajaran dan Penjaminan Mutu Pendidikan (P4MP) PNB yang diterima Dr. Putu Wijaya Sunu, ST., MT. Dalam kunjungan ini dipaparkan bagaimana pengelolaan SPMI di PNB. Mekanisme proses SPMI dan survey pendukungnya dilaksanakan untuk mengukur capaian standar SPMI. Kedua perwakilan sepakat saling mendukung dan melaksanakan sharing pengembangan SPMI kedepannya.</p>', '2022-09-14 14:16:06', '2022-09-14 14:16:06'),
(24, 22, 2, 'adminp4mp_14_09_2022-21_42_02.jpg', 'Monitoring Tim SPMI Direktorat APTV 11 Nopember 2020', '<p>Tim SPMI Direktorat APTV pada 11 Nopember 2020 melakukan kunjungan ke Politeknik Negeri Bali. Tim yang terdiri dari Bpk Manongar Simbolon,&nbsp;Ir. Emma Hermawati, M.T., Nandi Widarman Syah, ST diterima oleh Bpk Direktur PNB, yang didampingi Bpk Wakil Direktur I beserta tim P4MP. Tim APTV melakukan pengecekan kelengkapan dokumen SPMI serta melakukan konfirmasi pelaksanaan manajemen SPMI PPEPP yang dilaksanakan di PNB. Hasil monitoring ini menjadi masukan untuk perbaikan pelaksanaan SPMI di Politeknik Negeri Bali.</p>', '2022-09-14 14:42:02', '2022-09-14 14:42:02'),
(25, 22, 4, 'adminp4mp_15_09_2022-13_29_12.jpg', 'Survey kepuasan dosen dan tenaga kependidikan terhadap tata pamong 2021', '<p>Berdasarkan grafik kepuasan dosen terhadap pelaksanaan tata pamong, aspek Budaya Organisasi dan Sistem Anti Korupsi menunjukkan skor 86,81%, pada aspek Integritas Kerja dan Kesesuaian Perintah Atasan dengan Aturan dan Norma lembaga para dosen memberikan pelaksanaan sistem tata pamong pada aspek ini dengan skor pencapaian yang paling tinggi dari aspek lainnya dengan persentase 87,67%. Aspek selanjutnya yaitu Integritas Kerja dan Pelaksanaan Anggaran diberikan skor perolehan hingga 85,63%. Selanjutnya pada aspek Integritas Kerja Pengelolaan SDM para dosen memberikan skor dengan persentase 86,59%. Aspek kelima yakni Observasi Praktik Reformasi Lembaga diberikan skor 83,83% oleh para dosen. Aspek terakhir yakni pelayanan internal mendapatkan skor yang paling kecil dari aspek lainnya yakni pada persentase 80,13%. Dari hasil keenam aspek tersebut, dapat ditarik kesimpulan bahwa pelaksanaan sistem tata pamong 2020 yang PNB telah berikan kepada para dosen sudah baik. PNB telah menunjukkan kinerja pelayanan yang baik kepada para dosen.</p>\r\n\r\n<p>Berdasarkan grafik kepuasan tenaga kependidikan terhadap pelaksanaan tata pamong, aspek Integritas Kerja dan Kesesuaian Perintah Atasan dengan Aturan dan Norma Lembaga menurut tenaga kependidikan diberikan skor pencapaian dengan persentase 88,70%. aspek selanjutnya yaitu Integritas Kerja dan Pelaksanaan Anggaran diberikan skor perolehan hingga 86,67%. Selanjutnya pada aspek Integritas Kerja Pengelolaan SDM para tenaga kependidikan memberikan skor yang tertinggi dengan persentase 87,71%. Dari hasil ketiga aspek tersebut, dapat ditarik kesimpulan bahwa pelaksanaan sistem tata pamong 2020 yang PNB telah berikan kepada para tenaga kependidikan sudah sangat baik. PNB telah menunjukkan kinerja pelayanan yang baik kepada para tenaga kependidikan.</p>', '2022-09-15 06:29:12', '2022-09-15 06:38:16'),
(26, 22, 4, 'adminp4mp_15_09_2022-14_12_09.jpg', 'Survey Kepuasan Dosen Dan Tenaga Kependidikan Terhadap Tata Pamong 2020', '<p>Berdasarkan grafik kepuasan dosen terhadap pelaksanaan tata pamong 2020, aspek Budaya Organisasi dan Sistem Anti Korupsi menunjukkan skor 84,28%, pada aspek Integritas Kerja dan Kesesuaian Perintah Atasan dengan Aturan dan Norma lembaga para dosen memberikan pelaksanaan sistem tata pamong pada aspek ini dengan skor pencapaian yang paling tinggi dari aspek lainnya dengan persentase 86,46%. Aspek selanjutnya yaitu Integritas Kerja dan Pelaksanaan Anggaran diberikan skor perolehan hingga 85,30%. Selanjutnya pada aspek Integritas Kerja Pengelolaan SDM para dosen memberikan skor yang cukup tinggi dengan persentase 86,10%. Aspek kelima yakni Observasi Praktik Reformasi Lembaga diberikan skor 83,46% oleh para dosen. Aspek terakhir yakni pelayanan internal mendapatkan skor yang paling kecil dari aspek lainnya yakni pada persentase 79,93%. Dari hasil keenam aspek tersebut, dapat ditarik kesimpulan bahwa pelaksanaan sistem tata pamong yang PNB telah berikan kepada para dosen sudah baik. PNB telah menunjukkan kinerja pelayanan yang baik kepada para dosen namun pada aspek pelayanan internal perlu diberikan tindak lanjut agar pelayanan pada keenam aspek pelaksanaan sistem tata pamong ini dapat berjalan maksimal dan ditingkatkan pada tahun berikutnya.</p>\r\n\r\n<p>Berdasarkan grafik kepuasan tenaga kependidikan terhadap pelaksanaan tata pamong 2020, aspek Integritas Kerja dan Kesesuaian Perintah Atasan dengan Aturan dan Norma Lembaga menurut para tenaga kependidikan diberikan skor pencapaian dengan persentase 85,27%. aspek selanjutnya yaitu Integritas Kerja Dan Pelaksanaan Anggaran diberikan skor perolehan hingga 84,43%. Selanjutnya pada aspek Integritas Kerja Pengelolaan SDM para tenaga kependidikan memberikan skor yang tertinggi dengan persentase 85,71%. Dari hasil ketiga aspek tersebut, dapat ditarik kesimpulan bahwa pelaksanaan system tata pamong yang PNB telah berikan kepada para tenaga kependidikan sudah sangat baik. PNB telah menunjukkan kinerja pelayanan yang baik kepada para tenaga kependidikan.</p>', '2022-09-15 07:12:09', '2022-09-15 07:13:02'),
(27, 22, 1, 'adminp4mp_20_09_2022-13_27_31.jpg', 'Penyamaan Persepsi TPMJ dalam Menghadapi  Asesmen Lapangan AIPT PNB 2022', '<p>Senin, 19 September 2022 - P4MP Politeknik Negeri Bali melaksanakan pertemuan secara daring dengan TPMJ (Tim Penjaminan Mutu Jurusan) melalui platform zoom dalam rangka menindaklanjuti rekomendasi hasil simulasi asesmen Lapangan. Dalam pertemuan tersebut P4MP melaksanakan penyamaan persepsi guna menghadapi asesmen lapangan riil yang akan berlangsung pada tanggal 22-24 September 2022 mendatang. Peserta yang hadir adalah seluruh Sekretaris Jurusan yang ada di lingkungan Politeknik Negeri Bali berjumlah 6 orang ditambah Kepala Pusat dan Sekretaris P4MP.</p>\r\n\r\n<p>Dalam pemaparannya, Kepala P4MP, Dr. Putu Wijaya Sunu mengingatkan dan mendorong bahwa pentingnya siklus PPEPP itu berputar sehingga terjadi peningkatan mutu dalam suatu institusi. Lebih jauh lagi, untuk itu Dr. Putu mengajak para sekretaris Jurusan untuk berperan positif dalam rangka asesmen lapangan menuju Politeknik Negeri Bali mencapai Visi da misinya.</p>', '2022-09-20 06:27:31', '2022-09-20 06:36:26'),
(28, 22, 5, 'adminp4mp_18_10_2022-18_21_32.jpg', 'Sosialisasi  Peran Penting SPMI dalam Peningkatan Mutu Penyelenggaraan Pendidikan Tinggi Vokasi', '<p>Selasa, 18 Oktober 2022- <strong>LLDIKTI Wilayah VIII&nbsp;</strong>melaksanakan giat Sosialisasi Peran Penting <strong>SPMI</strong> Dalam Peningkatan Mutu Penyelenggaraan <strong>Pendidikan Tinggi Vokasi</strong> yang dilaksanakan secara daring melalui platform zoom.Dalam sambutan pembukaan Kepala<strong> LLDikti&nbsp; Wilayah VIII</strong>, Dr. I Gusti Lanang Bagus Eratodi, S.T., M.T mengatakan bahwa SPMI berperan sangat penting dalam dunia pendidikan untuk meningkatkan mutunya di era <strong>Merdeka Belajar Kampus Merdeka</strong>. Pada kegiatan ini dua faslitator/ narasumber diambil dari <strong>Politeknik Negeri Bali</strong>. Total 65 peserta hadir dalam pelaksanaan sosialisasi tersebut.</p>\r\n\r\n<p>&nbsp;Fasilitator pertama adalah Kepala <strong>P4MP,</strong> Dr. Putu Wijaya Sunu, beliau menjelaskan secara ringkas dan jelas mengenai SPMI dari referensi perundangan sampai pelaksanaan di institusi. Mutu yang baik adalah mutu yang melalui siklus <strong>PPEPP</strong> secara berkesinambungan. Lebih jauh tentang PPEPP(Penetapan, Pelaksanaan, Evaluasi (pelaksanaan), Pengendalian (pelaksanaan), dan Peningkatan Standar) dipaparkan oleh fasilitator kedua yang juga merupakan Sekretaris P4MP, Ni Ketut Bagiastuti, SH., MH. Di akhir sesi dalam setiap fasilitator diwarnai dengan diskusi membangun dalam rangka kemajuan SPMI di masing masing instansi menuju Akreditasi Unggul.</p>', '2022-10-18 11:21:32', '2022-10-18 11:21:32'),
(29, 22, 6, 'adminp4mp_28_10_2022-12_25_30.jpg', 'PELAKSANAAN ASESEMEN LAPANGAN PROGRAM STUDI TEKNOLOGI REKAYASA UTILITAS, POLITEKNIK NEGERI BALI', '<p>Dalam rangka penetapan status dan peringkat Akreditasi Program Studi <strong>Teknologi Rekayasa Utilitas (TRU)</strong>, BAN-PT melaksanakan asesemen lapangan. Kegiatan yang berlangsung selama dua hari mulai tanggal 27 sampai dengan 28 Oktober 2022 dilakukan untuk memberikan jaminan mutu Pendidikan bagi mahasiswa dan peningkatan kredibilitas bagi <strong>Politeknik Negeri Bali</strong></p>\r\n\r\n<p>BAN-PT menunjuk dua asesor&nbsp; untuk melaksanakan asesemen tersebut, yakni: Suharyadi Pancono, Dipl.,Ing., MT. Dipl.EL.Ing.HTL, MT. dan Prof. Dr. Jamari S.T., M.T. dalam proses asesmen akreditasi ini, kedua asesor melakukan &nbsp;konfirmasi &nbsp;pelaksanaan &nbsp;hasil dan efektifitas SPMI meliputi siklus PPEPP, pengecekan dokumen standar, manual, instrument/tools, laporan berkala, bukti tindak lanjut hasil SPMI serta konfirmasi bukti-bukti pelaksanaan kegiatan pada masing-masing kriteria akreditasi.</p>', '2022-10-28 05:25:30', '2023-03-26 10:48:36'),
(30, 22, 1, 'adminp4mp_16_11_2022-11_50_20.jpg', 'Pelaksanaan Sosialisasi Instrumen AMI 2022', '<p>Rabu, 16 Nopember 2022- <strong>P4MP</strong> melaksanakan kegiatan Sosialisasi Instrumen Audit menjelang dilaksanakanya audit mutu internal (<strong>AMI</strong>) di masing masing Prodi yang ada&nbsp; di <strong>Politeknik Negeri Bali</strong>, dihadiri oleh<strong> </strong>kurang lebih 40 TPMJ di lingkungan<strong>&nbsp; Politeknik Negeri Bali </strong>&nbsp;beserta Auditor di <strong>P4MP. </strong>Acara ini di pandu oleh moderator sekaligus Sekretaris <strong>P4MP,</strong> Ibu Ni Ketut Bagiastuti, SH., MH</p>\r\n\r\n<p>Dalam paparanya, Kepala <strong>P4MP,</strong> <strong>DR. Putu Wijaya Sunu ST., MT </strong>memberikan pemahaman tentang asar hukum diadakanya Audit Mutu Internal ditambahkan dengan pentingnya proses <strong>PPEPP</strong> untuk menjamin kesinambungan mutu Prodi. Dalam kesempatan tersebut juga disampaikan adanya instrument <strong>AMI</strong> baru sehingga Prodi bisa lebih awal mempersiapkan segala bentuk dokumen yang akan diaudit pada pelaksanaanya <strong>AMI </strong>nanti yang dijadwalkan akan berlangsung mulai 28 Nopember sampai dengan 8 Desember 2022.</p>', '2022-11-16 04:50:20', '2022-11-16 04:50:20'),
(32, 22, 5, 'adminp4mp_29_11_2022-22_23_25.jpg', 'Guest Lecturing on IDCP( Inti Dasar Capaian Pendidikan), The Fundamental Core of Educational Outcomes', '<p>Jimbaran, 28th November 2022, In reference to the introduction on IDCP( Inti Dasar Capaian Pendidikan), The fundamental core of educational Outcomes, by the Directorate of Learning and Student Affairs, Directorate General of Higher Education, research and Technology, Ministry of Education, Culture, Research and Technology, Politeknik Negeri Bali conducted Guest Lecture at Widyaguna Building. This program was attended by The Director of Politeknik Negeri Bali, Mr. I Nyoman Abdi, SE, M.eCom, and the management mainly: Vice directors, Department Head, Secretaries, Units Head, and some lecturers. P4MP(Center of Learning development and educational Quality Assurance of Politeknik Negeri Bali hosted this program as part of a previous invitation on IDCP.</p>\r\n\r\n<p>Mr. I Nyoman Abdi on his opening address stated that this program is in line with our institution&rsquo;s vision and mission To become a leading vocational higher education institution that creates internationally competitive and professional graduates by 2025.</p>\r\n\r\n<p>On the guest lecturer, there are three keynote speakers namely:</p>\r\n\r\n<ol>\r\n	<li>Prof. Tian Belawati, Indonesian Open University Lecturer, in her presentation entitled &quot;Character Building through Infusion of IDCP&quot;</li>\r\n	<li>Dr. Jennifer Adams, US Fullbright Specialist, in her presentation entitled &quot; Measuring Progress in Values-based Education: the U.S. Experience in Higher Education.</li>\r\n	<li>Dr. I Ketut Budarma, M.Par., MMTHRL, Politeknik Negeri Bali Lecturer, in his presentation entitled &quot;Best Practice of Character education in Politeknik Negeri Bali.</li>\r\n</ol>\r\n\r\n<p>At the end of the presentation, there was some constructive discussion on a deeper understanding of suitable ways to build a suitable student character in this challenging world</p>\r\n\r\n<h1>&nbsp;</h1>', '2022-11-29 15:23:25', '2022-11-29 15:24:30'),
(33, 22, 2, 'adminp4mp_01_12_2022-13_35_49.jpg', 'Kunjungan Politeknik STIA LAN Bandung Studi Banding ke Politeknik Negeri Bali', '<p>Jimbaran, 30 Nopember 2022, STIA LAN Bandung melakukan studi banding mengenai penerapan Sistem Penjaminan Mutu Internal, proses Audit Mutu Internal , Penelitian dan Pengabdian Masyarakat di lingkungan Politeknik Negeri Bali. Wakil Direktur I, Anak Agung Ngurah Bagus Mulawarman, ST., MT dalam pembukaan acara ini memaparkan profil Politeknik Negeri Bali dan keterkaitan dengan SPMI, lebih jauh lagi&nbsp; adanya kolaborasi dibidang penelitian serta dalam&nbsp; penerapan MBKM, salah satunya pertukaran pelajar atau dalam bentuk yg lain . Pada kesempatan itu juga mewakili Politeknik Negeri Bali, Bapak Wakil Direktur I mengucapkan selamat kepada&nbsp; Bapak Muhamad Nur Afandi sebagai Direktur terpilih Politeknik STIA LAN Bandung periode 2022-2026.&nbsp;</p>\r\n\r\n<p>Adapun Acara ini dihadiri oleh rombongan STIA LAN Bandung berjumlah&nbsp; 6 orang yakni: &nbsp;Muhammad Nur Afandi (Wadir I Bidang Akademik), Hendrikus T Gedeona (Kepala Pusat Penjaminan Mutu), Hadid Aditya Pradesa (Staf&nbsp; Penjaminan Mutu), Putri Wulandari (Staf Penjaminan Mutu), Dinoroy Aritonang (Plt. Kepala Pusat Penelitian dan Pengabdian Kepada Masyarakat), 6. Pepy Zulvia (Staf Pusat Penelitian dan Pengabdian&nbsp;Masyarakat), sedangkan dari Politeknik Negeri Bali dihadiri oleh Wakil Direktur I, Kepala P4MP(sebagai narasumber I), Kepala P3M(sebagai narasumber II), Wakil Kepala P3M, Ketua Unit Penelitian,&nbsp; Ketua Unit Publikasi Ilmiah dan auditor P4MP.</p>\r\n\r\n<p>Dalam pemaparan dari Kepala P4MP, Dr. Putu Wijaya Sunu, mengatakan bahwa Mutu adalah segalanya dan itu akan bisa terwujud&nbsp; jika ada komitmen dari pimpinan tertinggi institusi dan&nbsp; harus berkesinambungan melalui proses PPEPP. Setelah itu dilanjutkan dengan pemaparan dari Kepala P3M, I Putu Mertha Astawa, SE., MM memaparkan Penelitian dan Pengabdian&nbsp; kepada Masyarakat ditambah dengan pengelolaan jurnal di lingkungan Politeknik Negeri Bali. Acara diakhiri dengan diskusi dan sharing membangun di kedua intansi, lebih jauh lagi tindak lanjut dari kegiatan ini diharapkan dalam bentuk MoU dan kerjasama oleh kedua belah pihak.</p>\r\n\r\n<p>&nbsp;</p>', '2022-12-01 06:35:49', '2023-03-26 10:50:49'),
(34, 22, 1, 'adminp4mp_28_01_2023-10_35_52.jpg', 'SOSIALISASI  PEDOMAN  PELAKSANAAN  KEGIATAN  MBKM POLITEKNIK NEGERI BALI 2023', '<p>Jumat, 27 Januari 2023 &ndash;<strong> P4MP</strong> mengawali kegiatan tahun 2023 dengan melaksanakan sosialisasi pedoman implementadi <strong>MBKM</strong> secara daring melalui media zoom. Acara ini resmi dibuka oleh Wadir I, Bapak<strong> Anak Agung Ngurah Bagus Mulawarman, ST.,MT</strong>, disela kesibukan beliau bersama pimpinan <strong>PNB</strong> lainnya memonitoring fasilitas kampus di lingkungan<strong> Politeknik Negeri Bali</strong>. Peserta yang hadir dalam kegiatan ini meliputi ketua Jurusan dan Program Studi di Lingkungan<strong> Politeknik Negeri Bali</strong> sebagai gawang dari <strong>MBKM</strong> beserta unit<strong> UP2KK</strong>, operator<strong> PDDIKTI</strong> dan seluruh Anggota<strong> P4MP</strong>.<br />\r\nDalam sekapur sirihnya Wadir I menghimbau kepada seluruh peserta untuk mendukung kegiatan kementerian ini dan mengharapkan seluruh mahasiswa dapat menikmati program MBKM. Lebih jauh lagi Wadir I mengharapkan agar seluruh kaprodi untuk lebih fleksibel dalam memberikan peluang kepada mahasiswa dan proses rekognisi nilai.<br />\r\nKepala<strong> P4MP</strong>, <strong>Dr. Ir. Putu Wijaya Sunu, ST., MT., IPM., ASEAN.Eng</strong>. dalam paparanya menjelaskan esensi<strong> MBKM</strong> berdasarkan <strong>Permendikbud Nomor 3 Tahun 20</strong>20 tentang <strong>SNDIKTI</strong> khususnya pada standar proses pembelajaran. Lebih jauh terdapat 8 bentuk jenis <strong>MBKM</strong> yang dapat diambil mahasiswa yakni, Pertukaran pelajar, Magang bersertifikat, Asistensi mengajar di satuan pendidikan, Penelitian/riset, Projek kemanusiaan, Kewirausahaan, Studi independen dan Kegiatan membangun desa/KKN Tematik. Dipaparkan pula oleh Ka.<strong>P4MP</strong> bahwa pelaksanaan<strong> MBKM</strong> di institusi tersebut mendukung &nbsp;3 (tiga)<strong> IKU</strong> dari 8 (delapan)<strong> IKU kemendikbudristek</strong> dan proses<strong> MBKM</strong> mahasiswa dicatatkan pada portal <strong>PDDIKTI</strong>. Sosialisasi diakhiri dengan diskusi yang kolaboratif, partisipatif serta membangun dari peserta&nbsp;webinar&nbsp;ini.</p>', '2023-01-28 03:35:52', '2023-01-28 04:12:38'),
(35, 22, 2, 'adminp4mp_23_02_2023-13_57_01.jpg', 'Benchmarking Penjaminan Mutu  Politeknik El Bajo Commodus ke Politeknik Negeri Bali', '<p>Kamis, 2 Pebruari 2023, Yayasan Bangkit Anak Negeriku, Politeknik El Bajo Commodus, melakukan benchmarking ke <strong>Politkenik Negeri Bali</strong> dalam rangka engembangan Pendidikan khususnya Kurikulum MBKM, penjaminan Mutu, Pengelolaan SDM Tenaga Pendidik dan Tenaga Pengajar, Humas, Kerjasama dan P3M.</p>\r\n\r\n<p>Khususnya dalam bidang Penjaminan Mutu, Ketua P2M , Reynaldo Angga Siagian, S.Ant., M.S.E diterima oleh Kepala <strong>P4MP</strong>, <strong>Dr. Putu Wijaya Sunu, ST. MT</strong>; Ketua Unit SPMI, <strong>Ni Ketut Bagiastuti SH.,MH</strong>; Ketua Unit SPME,<strong> I Putu Yoga Laksana, S.Pd., M.Pd</strong> di ruang Rapat <strong>P4MP</strong>. Dalam rapat kecil yang diselingi dengan diskusi membangun tentang penjaminan Mutu di masing masing Instansi, Kepala <strong>P4MP</strong> mengatakan bahwa dengan melakukan benchmarking, organisasi dapat mengevaluasi kinerjanya dengan standar yang lebih tinggi dan meningkatkan penjaminan mutunya untuk mencapai keunggulan kompetitif di industri yang sama. Lebih jauh lagi penerapan <strong>PPEPP</strong> sangatlah mutlak dalam penjamninan Mutu instansi.</p>', '2023-02-23 06:57:01', '2023-02-23 06:57:01'),
(36, 22, 1, 'adminp4mp_11_08_2023-13_49_42.jpg', 'Undangan Alumni dan Calon Wisudawan Politeknik Negeri Bali Berpartisipasi dalam Tracer Study PNB 2023', '<p>Jimbaran &ndash; Politeknik Negeri Bali(PNB) mengumumkan kampanye Tracer Study yang bertujuan untuk mengajak para alumni dan calon wisudwan untuk berpartisipasi dalam rangka membantu meningkatkan kualitas pendidikan.</p>\r\n\r\n<p>Dalam upaya untuk terus meningkatkan kualitas dan relevansi kurikulum serta pengalaman belajar, Politeknik Negeri Bali telah meluncurkan kampanye Tracer Study yang menargetkan partisipasi aktif dari para alumni mereka. Tracer Study adalah suatu bentuk penelitian yang dilakukan oleh institusi pendidikan untuk melacak jejak karir dan kesuksesan alumni setelah lulus. Data yang dikumpulkan dari Tracer Study akan membantu perguruan tinggi dalam mengevaluasi kurikulum, menyesuaikan program-program pendidikan dengan kebutuhan industri, serta meningkatkan dukungan untuk pengembangan karir alumni.</p>\r\n\r\n<p>Khusus untuk para alumni yang berpartisipasi dalam Tracer Study akan diminta untuk mengisi kuesioner yang mencakup berbagai aspek, termasuk penilaian terhadap relevansi mata kuliah, kesiapan untuk dunia kerja, serta tingkat kepuasan terhadap fasilitas dan layanan kampus. Data yang diperoleh akan dianonimkan dan dianalisis secara menyeluruh oleh tim peneliti PNB. Pihak PNB juga menekankan pentingnya kontribusi alumni dalam proses ini. Selain membantu perguruan tinggi dalam peningkatan kualitas pendidikan, partisipasi dalam Tracer Study juga memberikan alumni kesempatan untuk berbagi pengalaman dan wawasan mereka kepada mahasiswa yang sedang belajar di kampus.</p>\r\n\r\n<p>Alumni dan calon wisudawan yang berminat untuk berpartisipasi dalam Tracer Study dapat mengakses platform khusus berbasis website yang telah disiapkan oleh PNB. Melalui platform tersebut, mereka dapat mengisi kuesioner dan memperbarui informasi kontak mereka. Silahkan masuk melalui laman : <a href=\"https://tracerstudy.pnb.ac.id/\">https://tracerstudy.pnb.ac.id/</a> .</p>\r\n\r\n<p>Dengan mengajak para alumni untuk bergabung dalam Tracer Study, Politeknik Negeri Bali bertujuan untuk menjaga hubungan yang erat dengan lulusannya, memastikan relevansi program-program pendidikan, dan terus bergerak maju dalam menciptakan lulusan yang siap bersaing di pasar kerja global.</p>', '2023-08-11 06:49:42', '2023-08-11 06:49:42'),
(37, 22, 3, 'adminp4mp_05_04_2024-13_46_21.jpg', 'Hasil Survey Layanan Akademik 2023', '<p>Pelaksanaan survei kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali tahun ini merupakan kegiatan rutin yang dilakukan oleh Pusat Pengembangan Pembelajaran dan Penjaminan Mutu Pendidikan (P4MP) Politeknik Negeri Bali. Kegiatan ini dilakukan dalam rangka memonitor mutu pelayanan dan menjamin efektivitas penerapan Sistem Penjaminan Mutu.&nbsp;Ruang lingkup survei adalah indek tingkat kepuasan mahasiswa terhadap kualitas pelayanan Politeknik Negeri Bali dengan menggunakan Skala Likert dengan 4 alternatif jawaban, yaitu 4 = Sangat Baik, 3 = Baik, 2 = Kurang Baik, 1 = Tidak Baik. Jumlah mahasiswa yang dipakai sebagai responden adalah sebanyak 4.932 orang dari 6 Jurusan. Pelaksanaan survei dilakukan oleh 8 orang surveyor dengan menggunakan kuesioner pada semester 1&nbsp;2023.&nbsp;</p>\r\n\r\n<p>Hasil survei pada tahun 2023 ini, memperlihatkan rata-rata angka indek kepuasan mahasiswa terhadap kualitas pelayanan pendidikan Politeknik Negeri Bali sebesar 3,20. Aspek jaminan pelayanan (Assurance) mendapatkan peringkat paling tinggi yaitu sebesar 3,28. Aspek daya tanggap (Responsiveness) dan empati (Empaty) mendapatkan peringkat paling rendah yaitu 3,16. Berdasarkan PERMENPAN&amp;RB Nomor 14 tahun 2014 tentang Pedoman Penyusunan Survei Kepuasan Masyarakat Unit Penyelenggara Pelayanan Publik&nbsp;dapat dinyatakan bahwa kualitas pelayanan pendidikan di Politeknik Negeri Bali adalah Baik.&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Oleh karena itu, diharapkan agar semua unit pelayanan dapat menjaga dan meningkatkan kualitas pelayanannya pada tahun 2024. Jika dibandingkan dengan hasil survei pada tahun 2022 sebesar 3,23; maka capaian tahun 2023 ini menunjukkan adanya sedikit penurunan sebesar 0,03. Semenjak tahun 2019, Politeknik Negeri Bali mampu meningkatkan layanan akademik dari 3,06 menjadi 3,20, seperti ditampilkan pada gambar. Hal ini merupakan hasil komitmen kuat pimpinan dan dukungan seluruh civitas untuk memberikan layanan terbaik kepada mahasiswa.</p>', '2024-04-05 06:46:21', '2024-04-06 13:00:46'),
(38, 22, 1, 'adminp4mp_19_04_2024-16_22_52.jpg', 'Pelaksanaan Survei Layanan Akademik Politeknik Negeri Bali Tahun 2024', '<p>Jimbaran - Pelaksanaan Survei Layanan Akademik Politeknik Negeri Bali (PNB) adalah kegiatan rutin yang dilakukan dalam rangka menjaga keberlangsungan berjalannya sistem mutu sesuai dengan standar yang ditetapkan. Pelaksanaan survei telah diatur dalam prosedur tersendiri di Pusat Penjaminan Mutu dan Pengembangan Pembelajaran (PPMPP) PNB. Tujuan dari kegiatan survei secara umum adalah untuk menjaga keberlangsungan implementasi sistem manajemen mutu di Politeknik Negeri Bali. Secara khusus, adalah untuk mendapatkan umpan balik terkait dengan upaya perbaikan secara berkelanjutan dalam memberi pelayanan kepada mahasiswa dan menentukan aspek yang perlu segera ditindak lanjuti. Hasil survei ini dapat dijadikan sebagai bahan evaluasi untuk perbaikan dan peningkatan proses belajar mengajar di Politeknik Negeri Bali. Disamping juga untuk menunjukkan kategori tingkat kualitas pelayanan yang telah dberikan berdasarkan pedoman Surat Keputusan Menpan Nomor : KEP/25/M.PAN/2/2004. Survei Layanan Akademik PNB Tahun 2024 dapat diakses pada link berikut <a href=\"https://forms.gle/jAmAjMfEVAA6jwwCA\">https://forms.gle/jAmAjMfEVAA6jwwCA</a>.&nbsp;&nbsp;</p>', '2024-04-19 08:19:09', '2024-04-19 09:22:52'),
(39, 22, 1, 'adminp4mp_19_04_2024-16_43_54.jpg', 'Pelaksanaan Survei Pemahaman Visi, Misi dan Tujuan Politeknik Negeri Bali Tahun 2024', '<p>Pelaksanaan Survei Pemahaman Visi, Misi, dan Tujuan Politeknik Negeri adalah kegiatan rutin yang dilakukan dalam rangka menjaga keberlangsungan berjalannya sistem mutu sesuai dengan standar yang ditetapkan. Pelaksanaan survei telah diatur dalam prosedur tersendiri di Pusat Penjaminan Mutu dan Pengembangan Pembelajaran (PPMPP) PNB. Tujuan dari kegiatan survei secara umum adalah untuk menjaga keberlangsungan implementasi sistem manajemen mutu di Politeknik Negeri Bali. Secara khusus, adalah untuk mendapatkan umpan balik terkait dengan upaya perbaikan secara berkelanjutan dalam memberi pelayanan kepada Civitas Akademika, laboran/teknisi, tenaga kependidikan, pustakawan, dan tenaga penunjang lainnya dan menentukan aspek yang perlu segera ditindak lanjuti. Hasil survei ini dapat dijadikan sebagai bahan evaluasi untuk perbaikan dan peningkatan proses belajar mengajar di Politeknik Negeri Bali. Disamping juga untuk menunjukkan kategori tingkat kualitas pelayanan yang telah dberikan berdasarkan pedoman Surat Keputusan Menpan Nomor : KEP/25/M.PAN/2/2004. Survei Pemahaman Visi, Misi, dan Tujuan Politeknik Negeri Bali untuk memperoleh informasi tentang tingkat pemahaman visi dan misi dari Civitas Akademika, laboran/teknisi, tenaga kependidikan, pustakawan, dan tenaga penunjang lainnya. Link dapat diakses pada <a href=\"https://forms.gle/Z4M1pzAjrTwvjJc29\">https://forms.gle/Z4M1pzAjrTwvjJc29</a>.</p>', '2024-04-19 09:41:27', '2024-04-19 09:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accreditation_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(21, 'superadmin', 'web', '2022-02-27 03:41:23', '2022-02-27 03:41:23'),
(22, 'admin', 'web', '2022-02-27 03:41:23', '2022-02-27 03:41:23'),
(23, 'user', 'web', '2022-02-27 03:41:23', '2022-02-27 03:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(11, 21),
(11, 22);

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
(1, 'Abimana Daneswara', 'abimanadaneswara@gmail.com', NULL, '$2y$10$Iia8ZH3RUZT9eo5NsMrCluKVHB5IX4poxhFSuwtihaQqsUGRp8CRS', NULL, '2022-02-20 13:13:10', '2022-02-20 13:13:10'),
(2, 'Surya Jayantara', 'suryajayantara@gmail.com', NULL, '$2y$10$ynN9Ghd2Mey5XJAXsAtWZ.RQvudaD5RjnCiBjitSw3vngNzMKJK3m', NULL, '2022-02-20 11:30:40', '2022-02-20 11:30:40'),
(3, 'Wayan Suasnawa', 'suasnawa@gmail.com', NULL, '$2y$10$tZsVcsuqrkpsz9Yg0IOdJ.OQkeMYiJgTKWkY6pfQLD8bYzlDLyUdm', NULL, '2022-02-18 02:06:47', '2022-02-18 02:06:47'),
(10, 'Super Admin', 'superadmin@test', NULL, '$2y$10$cKOvXst0q99Gpt1X9Ooo8OA3n6MHKVav2K7gNLJ.aX.eWQy9xFk7W', NULL, '2022-02-27 03:41:23', '2022-02-27 03:41:23'),
(21, 'userfile', 'userfile@pnb.ac.id', NULL, '$2y$10$9nzsV3LQDVUfKRXDRstcre/YqL5IIRKbE4krIYrDCuotpy/hznBqi', NULL, '2022-03-21 14:26:01', '2022-03-21 14:26:01'),
(22, 'adminp4mp', 'adminp4mp@pnb.ac.id', NULL, '$2y$10$1NubN147BqCj0sKDuDM/wuQjzthVUnyKWXNh5BMDdlyArGriRoRgi', NULL, '2022-03-22 07:24:27', '2022-03-22 07:24:27'),
(23, 'administrator', 'hankteam83@gmail.com', NULL, '$2y$10$EL3KidDpO0N7Bky0A2uZ.ucA/72Z6SEhH9Aaw6PTtoKgkvvt5yzRS', NULL, '2023-12-22 08:16:37', '2023-12-22 08:16:37'),
(24, 'administrator', 'akuakudia07@gmail.com', NULL, '$2y$10$3At7AHh.totETSFF2mpxpup7JfWoeGxIVWLoqTAle/sKbmgXSQEI2', NULL, '2024-01-01 13:14:04', '2024-01-01 13:14:04'),
(25, '34433224423', '34433224423@gmail.com', NULL, '$2y$10$dFkDz81S1rISk3SFKC38qeEDpMSZZRy9k5MjVZ2ny48hQa0ljCCW.', NULL, '2024-01-08 19:58:53', '2024-01-08 19:58:53'),
(26, 'Mita Rahmawati', 'admin2123@bbxstresser.pro', NULL, '$2y$10$ua4rmMnJ4IUy4kkpdZItIOZk4pHdQ3PWvugodHrl0Yy9dLN80Gp5O', NULL, '2024-02-28 06:59:26', '2024-02-28 06:59:26'),
(27, 'kikisagane', 'kikisagane@gmail.com', NULL, '$2y$10$Y6B.ZTYvyjBfoZWjTl.bKuumGODdjOF66RcChJUdyuP7s9FnVz8fq', NULL, '2024-03-04 10:15:18', '2024-03-04 10:15:18'),
(28, 'Dennis', 'akuakudia07@gmai.com', NULL, '$2y$10$n9KW4s5SzMiGNmRAvNyvUOytCDxyuOmdST2tfLtE7J0b2dWNXLi8W', NULL, '2024-03-13 11:41:50', '2024-03-13 11:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `web_contents`
--

CREATE TABLE `web_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accreditations`
--
ALTER TABLE `accreditations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accreditation_internationals`
--
ALTER TABLE `accreditation_internationals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_documents`
--
ALTER TABLE `category_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_internationals`
--
ALTER TABLE `certification_internationals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_contents`
--
ALTER TABLE `web_contents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accreditations`
--
ALTER TABLE `accreditations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `accreditation_internationals`
--
ALTER TABLE `accreditation_internationals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_documents`
--
ALTER TABLE `category_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification_internationals`
--
ALTER TABLE `certification_internationals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departements`
--
ALTER TABLE `departements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `web_contents`
--
ALTER TABLE `web_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
