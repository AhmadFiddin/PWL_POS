-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2024 at 05:51 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_11_015258_create_m_level_table', 1),
(6, '2024_09_11_022022_create_m_kategori_table', 2),
(7, '2024_09_11_022142_create_m_supplier_table', 2),
(8, '2024_09_11_024232_create_m_user_table', 3),
(9, '2024_09_14_121123_create_m_barang_table', 4),
(10, '2024_09_14_121312_create_t_penjualan_table', 4),
(11, '2024_09_14_121347_create_t_stok_table', 4),
(12, '2024_09_14_121419_create_t_penjualan_detail_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `barang_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'BAR001', 'Roti Tawar', 8000, 15000, NULL, NULL),
(2, 1, 'BAR002', 'Cokelat Batang', 12000, 20000, NULL, NULL),
(3, 1, 'BAR003', 'Keripik Kentang', 5000, 10000, NULL, NULL),
(4, 2, 'BAR004', 'Teh Botol', 3000, 6000, NULL, NULL),
(5, 2, 'BAR005', 'Kopi Sachet', 2500, 5000, NULL, NULL),
(6, 2, 'BAR006', 'Jus Jeruk', 8000, 15000, NULL, NULL),
(7, 3, 'BAR007', 'Buku Tulis', 5000, 10000, NULL, NULL),
(8, 3, 'BAR008', 'Buku Novel', 20000, 35000, NULL, NULL),
(9, 3, 'BAR009', 'Majalah', 10000, 18000, NULL, NULL),
(10, 4, 'BAR010', 'Kaos Polos', 30000, 50000, NULL, NULL),
(11, 4, 'BAR011', 'Celana Jeans', 70000, 100000, NULL, NULL),
(12, 4, 'BAR012', 'Jaket Hoodie', 90000, 150000, NULL, NULL),
(13, 5, 'BAR013', 'Pulpen', 2000, 4000, NULL, NULL),
(14, 5, 'BAR014', 'Pensil', 1000, 2000, NULL, NULL),
(15, 5, 'BAR015', 'Penghapus', 500, 1000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` bigint UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, 'KTG001', 'Makanan', NULL, NULL),
(2, 'KTG002', 'Minuman', NULL, NULL),
(3, 'KTG003', 'Buku', NULL, NULL),
(4, 'KTG004', 'Pakaian', NULL, NULL),
(5, 'KTG005', 'Alat Tulis', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/Kasir', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` bigint UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, 'SUP001', 'Supplier 1', 'Jl. Pisang No.10', '2024-09-14 07:46:53', '2024-09-14 07:46:53'),
(2, 'SUP002', 'Supplier 2', 'Jl. Apel No.22', '2024-09-14 07:46:53', '2024-09-14 07:46:53'),
(3, 'SUP003', 'Supplier 3', 'Jl. Melon No.33', '2024-09-14 07:46:53', '2024-09-14 07:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Administrator', '$2y$12$juWDJ8xueIz0BNaMEnWxI.Q02Al3km5dsSPSQD7cVqhe3sxA3H5M2', NULL, NULL),
(2, 2, 'manager', 'Manager', '$2y$12$G0ZleFViqNgFehV4VA.saew8xdNTtTmIPeU7dM/EFV/RXTgYggfWG', NULL, NULL),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$KgAcHlXxd.wLFFYkWj7YJO15Wlki5fT8BynhhpJLjESiDs04ZOPX2', NULL, NULL),
(8, 2, 'manager_dua', 'Manager 2', '$2y$12$7E6Yd6VQBzqvm9jdk9UQdOtR3a0nTjGVDh4Ue58D6cowIvs4xsyhW', '2024-09-20 07:57:48', '2024-09-20 07:57:48'),
(9, 2, 'manager22', 'Manager Dua Dua', '$2y$12$y.btB6EdjJ0L1SDvsTOLO./FRfFW4rAA4V/ynT95lREUTW9MrwX.W', '2024-09-20 09:04:49', '2024-09-20 09:04:49'),
(10, 2, 'manager33', 'Manager Tiga Tiga', '$2y$12$9npu22kB8xme2fOvHXVbreLGBGJD66Ert9uBg8LULfZGBAT.IjGvy', '2024-09-20 09:11:56', '2024-09-20 09:11:56'),
(16, 2, 'manager56', 'Manager55', '$2y$12$Fj4ZEZ6jPnwGapyAifrG5ezRB7r14odr2aRqUEM.5tWLCi9i9Qa4C', '2024-09-20 09:28:18', '2024-09-20 09:28:18'),
(17, 2, 'manager12', 'Manager11', '$2y$12$qZV6tAL4lxMjN.3mm9w.WO4olCZ4bHW3MrKnxSanutmFNIGjxX5YG', '2024-09-20 09:31:00', '2024-09-20 09:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pembeli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `user_id`, `pembeli`, `penjualan_kode`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alice Cooper', 'PEN001', '2024-03-01 10:00:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(2, 2, 'Bob Dylan', 'PEN002', '2024-03-02 11:15:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(3, 1, 'Charlie Brown', 'PEN003', '2024-03-03 12:30:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(4, 3, 'Diana Ross', 'PEN004', '2024-03-04 13:45:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(5, 2, 'Eddie Vedder', 'PEN005', '2024-03-05 14:00:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(6, 1, 'Fiona Apple', 'PEN006', '2024-03-06 15:10:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(7, 3, 'George Michael', 'PEN007', '2024-03-07 16:20:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(8, 2, 'Hannah Montana', 'PEN008', '2024-03-08 17:30:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(9, 1, 'Iggy Pop', 'PEN009', '2024-03-09 18:45:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39'),
(10, 3, 'Janet Jackson', 'PEN010', '2024-03-10 19:00:00', '2024-09-14 08:07:39', '2024-09-14 08:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_detail`
--

CREATE TABLE `t_penjualan_detail` (
  `detail_id` bigint UNSIGNED NOT NULL,
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan_detail`
--

INSERT INTO `t_penjualan_detail` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 48526, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(2, 1, 8, 13145, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(3, 9, 7, 49046, 5, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(4, 6, 6, 44100, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(5, 2, 10, 28826, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(6, 1, 1, 22764, 5, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(7, 10, 7, 16113, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(8, 1, 8, 38562, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(9, 3, 1, 38785, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(10, 2, 10, 39482, 5, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(11, 4, 6, 36233, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(12, 8, 3, 38391, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(13, 6, 10, 33991, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(14, 4, 4, 48812, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(15, 6, 2, 45231, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(16, 9, 9, 17936, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(17, 3, 4, 41627, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(18, 3, 1, 46506, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(19, 5, 1, 45862, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(20, 1, 2, 38607, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(21, 10, 3, 49517, 5, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(22, 10, 10, 40451, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(23, 1, 4, 15880, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(24, 10, 5, 29757, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(25, 10, 9, 40687, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(26, 8, 10, 20695, 4, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(27, 6, 5, 14647, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(28, 8, 5, 49326, 3, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(29, 3, 7, 46355, 2, '2024-09-14 08:55:39', '2024-09-14 08:55:39'),
(30, 5, 5, 43123, 1, '2024-09-14 08:55:39', '2024-09-14 08:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `t_stok`
--

CREATE TABLE `t_stok` (
  `stok_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_stok`
--

INSERT INTO `t_stok` (`stok_id`, `supplier_id`, `barang_id`, `user_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-09-10 10:00:00', 100, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(2, 1, 2, 1, '2024-09-10 11:00:00', 150, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(3, 1, 3, 1, '2024-09-10 12:00:00', 200, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(4, 1, 4, 1, '2024-09-10 13:00:00', 120, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(5, 1, 5, 1, '2024-09-10 14:00:00', 180, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(6, 2, 6, 2, '2024-09-11 09:00:00', 110, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(7, 2, 7, 2, '2024-09-11 10:00:00', 140, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(8, 2, 8, 2, '2024-09-11 11:00:00', 90, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(9, 2, 9, 2, '2024-09-11 12:00:00', 130, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(10, 2, 10, 2, '2024-09-11 13:00:00', 170, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(11, 3, 11, 3, '2024-09-12 10:00:00', 90, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(12, 3, 12, 3, '2024-09-12 11:00:00', 60, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(13, 3, 13, 3, '2024-09-12 12:00:00', 100, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(14, 3, 14, 3, '2024-09-12 13:00:00', 80, '2024-09-14 08:01:08', '2024-09-14 08:01:08'),
(15, 3, 15, 3, '2024-09-12 14:00:00', 120, '2024-09-14 08:01:08', '2024-09-14 08:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD UNIQUE KEY `m_barang_barang_kode_unique` (`barang_kode`),
  ADD KEY `m_barang_kategori_id_index` (`kategori_id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `m_kategori_kategori_kode_unique` (`kategori_kode`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`),
  ADD UNIQUE KEY `m_level_level_kode_unique` (`level_kode`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `m_supplier_supplier_kode_unique` (`supplier_kode`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

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
-- Indexes for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD UNIQUE KEY `t_penjualan_penjualan_kode_unique` (`penjualan_kode`),
  ADD KEY `t_penjualan_user_id_index` (`user_id`);

--
-- Indexes for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjulan_detail_penjualan_id_index` (`penjualan_id`),
  ADD KEY `t_penjulan_detail_barang_id_index` (`barang_id`);

--
-- Indexes for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stok_supplier_id_index` (`supplier_id`),
  ADD KEY `t_stok_barang_id_index` (`barang_id`),
  ADD KEY `t_stok_user_id_index` (`user_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `m_barang_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Constraints for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `t_penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD CONSTRAINT `t_penjulan_detail_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_penjulan_detail_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`penjualan_id`);

--
-- Constraints for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `t_stok_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_stok_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `m_supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
