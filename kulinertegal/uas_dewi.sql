-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Jul 2019 pada 15.21
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_dewi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_04_05_050314_create_tb_pelanggan_table', 1),
(2, '2018_04_05_050819_create_tb_pegawai_table', 1),
(3, '2018_04_05_050957_create_tb_restoran_table', 1),
(4, '2018_04_05_051520_create_tb_reservasi_table', 1),
(5, '2018_04_05_052444_create_tb_pemesanan_table', 1),
(6, '2018_04_05_060155_create_tb_hidangan_table', 1),
(7, '2018_04_05_060226_create_tb_detil_pemesanan_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detil_pemesanan`
--

CREATE TABLE `tb_detil_pemesanan` (
  `id_detil_pemesanan` int(10) UNSIGNED NOT NULL,
  `id_pemesanan` int(10) UNSIGNED NOT NULL,
  `id_hidangan` int(10) UNSIGNED NOT NULL,
  `jumlah_hidangan` int(10) UNSIGNED NOT NULL,
  `total_harga_hidangan` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_detil_pemesanan`
--

INSERT INTO `tb_detil_pemesanan` (`id_detil_pemesanan`, `id_pemesanan`, `id_hidangan`, `jumlah_hidangan`, `total_harga_hidangan`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 1, 45000, '2019-07-06 03:03:21', '2019-07-06 03:03:21'),
(6, 3, 1, 2, 90000, '2019-07-09 01:22:06', '2019-07-09 01:22:06'),
(7, 4, 1, 3, 135000, '2019-07-09 02:33:32', '2019-07-09 02:33:32'),
(8, 4, 2, 0, 0, '2019-07-09 02:33:32', '2019-07-09 02:33:32'),
(9, 4, 3, 1000, 100000000, '2019-07-09 02:33:33', '2019-07-09 02:33:33'),
(10, 4, 7, 6, 450000, '2019-07-09 02:33:33', '2019-07-09 02:33:33'),
(11, 5, 1, 2, 90000, '2019-07-10 11:48:54', '2019-07-10 11:48:54'),
(12, 6, 1, 4, 180000, '2019-07-15 04:53:33', '2019-07-15 04:53:33'),
(13, 6, 4, 1, 12500, '2019-07-15 04:53:33', '2019-07-15 04:53:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hidangan`
--

CREATE TABLE `tb_hidangan` (
  `id_hidangan` int(10) UNSIGNED NOT NULL,
  `nama_hidangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_hidangan` enum('Makanan','Minuman') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_hidangan` int(10) UNSIGNED NOT NULL,
  `foto_hidangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_hidangan`
--

INSERT INTO `tb_hidangan` (`id_hidangan`, `nama_hidangan`, `jenis_hidangan`, `harga_hidangan`, `foto_hidangan`, `created_at`, `updated_at`) VALUES
(1, 'Spageti', 'Makanan', 45000, 'spageti.jpg', '2019-07-03 06:15:17', '2019-07-03 06:15:17'),
(2, 'Salad', 'Makanan', 27500, 'salad.jpeg', '2019-07-03 06:15:17', '2019-07-03 06:15:17'),
(3, 'Beef', 'Makanan', 100000, 'beef.jpg', '2019-07-03 06:15:17', '2019-07-03 06:15:17'),
(4, 'Pinneaple Juice', 'Minuman', 12500, 'pinepple.jpg', '2019-07-03 06:15:17', '2019-07-03 06:15:17'),
(5, 'Strawberry Juice', 'Minuman', 15000, 'heart.jpg', '2019-07-03 06:15:17', '2019-07-03 06:15:17'),
(6, 'Tropical Juice', 'Minuman', 20000, 'tropical.jpg', '2019-07-03 06:15:17', '2019-07-03 06:15:17'),
(7, 'Chicken Barbeque', 'Makanan', 75000, 'Chicken Barbeque.png', '2019-07-07 03:07:22', '2019-07-07 03:07:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` int(10) UNSIGNED NOT NULL,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_pegawai` enum('Admin','Super Admin') COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `foto_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_pegawai`, `nama_pegawai`, `email_pegawai`, `username_pegawai`, `password_pegawai`, `jabatan_pegawai`, `foto_pegawai`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tidak Dipilih', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Admin', 'close.png', NULL, '2019-07-03 06:15:16', '2019-07-03 06:15:16'),
(2, 'Jhonarendra', 'jhonarendra@gmail.com', 'jhonarendra', 'f80cdc281e09fb8f69607830dd9586c4', 'Admin', 'default.png', NULL, '2019-07-03 06:15:16', '2019-07-03 06:15:16'),
(3, 'dewimaliana', 'dewi@gmail.com', 'maliana', 'af10dfe53a1801b65590f9fb0ef4c42a', 'Admin', 'maliana.jpg', NULL, '2019-07-06 03:06:27', '2019-07-06 03:06:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(10) UNSIGNED NOT NULL,
  `nama_pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`, `username_pelanggan`, `password_pelanggan`, `foto_pelanggan`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'wik', 'dewimaliana2244@gmail.com', 'dewi', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'dewi.jpg', NULL, '2019-07-03 23:42:58', '2019-07-03 23:42:58'),
(4, 'zilmi', 'zilmikaffah@gmail.com', 'zilmi', 'fde0b737496c53bb85d07b31a02985a3', 'zilmi.JPG', NULL, '2019-07-03 23:47:44', '2019-07-03 23:47:44'),
(5, 'zilmi', 'zilmikaffah@gmail.com', 'zilmi', 'fde0b737496c53bb85d07b31a02985a3', 'zilmi.JPG', NULL, '2019-07-03 23:51:31', '2019-07-03 23:51:31'),
(6, 'nama123', 'dewimaliana2244@gmail.com', 'dewi', 'fde0b737496c53bb85d07b31a02985a3', 'dewi.jpg', NULL, '2019-07-03 23:53:23', '2019-07-03 23:56:42'),
(7, 'dewimaliana', 'dewimaliana2244@gmail.com', 'dewi', '9920e6ee0a071d608a025a0e70bfcfb5', 'dewi.jpg', NULL, '2019-07-04 07:21:11', '2019-07-04 07:21:11'),
(8, 'nofal', 'nofal@gmail.com', 'aga', '827ccb0eea8a706c4c34a16891f84e7b', 'aga.png', NULL, '2019-07-06 02:59:38', '2019-07-06 02:59:38'),
(9, 'nofal', 'nofal@gmail.com', 'bixwanta', '1a2414b8f3f36690207ca119fa017871', 'bixwanta.jpg', NULL, '2019-07-06 04:05:58', '2019-07-06 04:05:58'),
(10, 'dewima', 'dewima@gmail.com', 'dewima', '21232f297a57a5a743894a0e4a801fc3', 'dewima.jpg', NULL, '2019-07-09 02:21:50', '2019-07-09 02:21:50'),
(11, 'dewi', 'dewimaliana2244@gmail.com', 'dewi', '827ccb0eea8a706c4c34a16891f84e7b', 'dewi.jpg', NULL, '2019-07-09 02:25:35', '2019-07-09 02:25:35'),
(12, 'user', 'user@gmail.com', 'user1', '202cb962ac59075b964b07152d234b70', 'user1.jpg', NULL, '2019-07-09 02:32:25', '2019-07-09 02:32:25'),
(13, 'karso', 'karso1@gmail.com', 'karsono', '827ccb0eea8a706c4c34a16891f84e7b', 'karsono.jpg', NULL, '2019-07-10 11:45:49', '2019-07-10 11:45:49'),
(14, 'cobacoba', 'coba@gmail.com', 'coba1', '827ccb0eea8a706c4c34a16891f84e7b', 'coba1.jpg', NULL, '2019-07-15 04:50:35', '2019-07-15 04:50:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` int(10) UNSIGNED NOT NULL,
  `id_restoran` int(10) UNSIGNED NOT NULL,
  `id_pelanggan` int(10) UNSIGNED NOT NULL,
  `id_pegawai` int(10) UNSIGNED NOT NULL,
  `total_pemesanan` int(10) DEFAULT '0',
  `status_pemesanan` enum('Belum Dibayar','Lunas') COLLATE utf8mb4_unicode_ci DEFAULT 'Belum Dibayar',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `id_restoran`, `id_pelanggan`, `id_pegawai`, `total_pemesanan`, `status_pemesanan`, `created_at`, `updated_at`) VALUES
(2, 1, 8, 1, 45000, 'Lunas', '2019-07-06 03:03:21', '2019-07-09 01:27:25'),
(3, 1, 8, 1, 90000, 'Belum Dibayar', '2019-07-09 01:22:06', '2019-07-09 01:22:06'),
(4, 1, 12, 1, 100585000, 'Belum Dibayar', '2019-07-09 02:33:32', '2019-07-09 02:33:33'),
(5, 1, 13, 1, 90000, 'Belum Dibayar', '2019-07-10 11:48:54', '2019-07-10 11:48:54'),
(6, 1, 14, 1, 192500, 'Belum Dibayar', '2019-07-15 04:53:32', '2019-07-15 04:53:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_reservasi`
--

CREATE TABLE `tb_reservasi` (
  `id_reservasi` int(10) UNSIGNED NOT NULL,
  `id_restoran` int(10) UNSIGNED NOT NULL,
  `id_pelanggan` int(10) UNSIGNED NOT NULL,
  `id_pegawai` int(10) UNSIGNED DEFAULT '0',
  `no_meja_reservasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_reservasi` enum('Selesai','Batal','Sedang Berlangsung','Menunggu Konfirmasi','Dikonfirmasi') COLLATE utf8mb4_unicode_ci DEFAULT 'Menunggu Konfirmasi',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_restoran`
--

CREATE TABLE `tb_restoran` (
  `id_restoran` int(10) UNSIGNED NOT NULL,
  `nama_restoran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_restoran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_restoran`
--

INSERT INTO `tb_restoran` (`id_restoran`, `nama_restoran`, `alamat_restoran`, `created_at`, `updated_at`) VALUES
(1, 'Restoran Kartini', 'Jalan RA.Kartini', '2019-07-03 06:15:17', '2019-07-03 06:15:17'),
(2, 'Restoran Sukacita', 'Jalan Mataram', '2019-07-03 06:15:17', '2019-07-03 06:15:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_detil_pemesanan`
--
ALTER TABLE `tb_detil_pemesanan`
  ADD PRIMARY KEY (`id_detil_pemesanan`),
  ADD KEY `tb_detil_pemesanan_id_pemesanan_foreign` (`id_pemesanan`),
  ADD KEY `tb_detil_pemesanan_id_hidangan_foreign` (`id_hidangan`);

--
-- Indexes for table `tb_hidangan`
--
ALTER TABLE `tb_hidangan`
  ADD PRIMARY KEY (`id_hidangan`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `tb_pemesanan_id_restoran_foreign` (`id_restoran`),
  ADD KEY `tb_pemesanan_id_pelanggan_foreign` (`id_pelanggan`),
  ADD KEY `tb_pemesanan_id_pegawai_foreign` (`id_pegawai`);

--
-- Indexes for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD KEY `tb_reservasi_id_restoran_foreign` (`id_restoran`),
  ADD KEY `tb_reservasi_id_pelanggan_foreign` (`id_pelanggan`),
  ADD KEY `tb_reservasi_id_pegawai_foreign` (`id_pegawai`);

--
-- Indexes for table `tb_restoran`
--
ALTER TABLE `tb_restoran`
  ADD PRIMARY KEY (`id_restoran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_detil_pemesanan`
--
ALTER TABLE `tb_detil_pemesanan`
  MODIFY `id_detil_pemesanan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_hidangan`
--
ALTER TABLE `tb_hidangan`
  MODIFY `id_hidangan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id_pegawai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `id_pemesanan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  MODIFY `id_reservasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_restoran`
--
ALTER TABLE `tb_restoran`
  MODIFY `id_restoran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_detil_pemesanan`
--
ALTER TABLE `tb_detil_pemesanan`
  ADD CONSTRAINT `tb_detil_pemesanan_id_hidangan_foreign` FOREIGN KEY (`id_hidangan`) REFERENCES `tb_hidangan` (`id_hidangan`),
  ADD CONSTRAINT `tb_detil_pemesanan_id_pemesanan_foreign` FOREIGN KEY (`id_pemesanan`) REFERENCES `tb_pemesanan` (`id_pemesanan`);

--
-- Ketidakleluasaan untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `tb_pemesanan_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`),
  ADD CONSTRAINT `tb_pemesanan_id_pelanggan_foreign` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `tb_pemesanan_id_restoran_foreign` FOREIGN KEY (`id_restoran`) REFERENCES `tb_restoran` (`id_restoran`);

--
-- Ketidakleluasaan untuk tabel `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  ADD CONSTRAINT `tb_reservasi_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`),
  ADD CONSTRAINT `tb_reservasi_id_pelanggan_foreign` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `tb_reservasi_id_restoran_foreign` FOREIGN KEY (`id_restoran`) REFERENCES `tb_restoran` (`id_restoran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
