-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2023 pada 18.23
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tandatangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `filename` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `documents`
--

INSERT INTO `documents` (`id`, `name`, `filename`, `description`, `created_at`, `updated_at`) VALUES
(1, '', '1687783471291-137312', '', '2023-06-26 12:44:31.308077', '2023-06-26 12:44:31.308077'),
(2, '', '1687783487882-832753', '', '2023-06-26 12:44:47.891947', '2023-06-26 12:44:47.891947'),
(3, '', '1687783687303-963621', '', '2023-06-26 12:48:07.312395', '2023-06-26 12:48:07.312395'),
(4, '', '1687786714560-586805', '', '2023-06-26 13:38:34.593612', '2023-06-26 13:38:34.593612'),
(5, '', '1687786754795-689897', '', '2023-06-26 13:39:14.812647', '2023-06-26 13:39:14.812647'),
(6, '', '1687787497273-877928', '', '2023-06-26 13:51:37.289521', '2023-06-26 13:51:37.289521'),
(7, '', '1687787557184-595209', '', '2023-06-26 13:52:37.209601', '2023-06-26 13:52:37.209601'),
(8, '', '1687787591012-208232', '', '2023-06-26 13:53:11.032511', '2023-06-26 13:53:11.032511'),
(9, '', '1687787754187-711056', '', '2023-06-26 13:55:54.224312', '2023-06-26 13:55:54.224312'),
(10, '', '1687787880678-774682', '', '2023-06-26 13:58:00.695397', '2023-06-26 13:58:00.695397'),
(11, '', '1687788194933-418294', '', '2023-06-26 14:03:14.959254', '2023-06-26 14:03:14.959254'),
(12, '', '1687788305224-241973', '', '2023-06-26 14:05:05.233592', '2023-06-26 14:05:05.233592'),
(13, '', '1687788352236-462200', '', '2023-06-26 14:05:52.253986', '2023-06-26 14:05:52.253986'),
(14, '', '1687788420946-946334', '', '2023-06-26 14:07:00.966439', '2023-06-26 14:07:00.966439'),
(15, '', '1687788465535-920622', '', '2023-06-26 14:07:45.557024', '2023-06-26 14:07:45.557024'),
(16, '', '1687788501636-870248', '', '2023-06-26 14:08:21.662306', '2023-06-26 14:08:21.662306'),
(17, '', '1687793788683-725608', '', '2023-06-26 15:36:28.707529', '2023-06-26 15:36:28.707529'),
(18, '', '1687793964101-877353', '', '2023-06-26 15:39:24.130592', '2023-06-26 15:39:24.130592'),
(19, '', '1687794007536-328883', '', '2023-06-26 15:40:07.569426', '2023-06-26 15:40:07.569426'),
(20, '', '1687796171182-247363', '', '2023-06-26 16:16:11.195709', '2023-06-26 16:16:11.195709'),
(21, '', '1687796235337-924179', '', '2023-06-26 16:17:15.349645', '2023-06-26 16:17:15.349645');

-- --------------------------------------------------------

--
-- Struktur dari tabel `signature`
--

CREATE TABLE `signature` (
  `user_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `signed_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL,
  `active` int(2) NOT NULL,
  `sign_img` varchar(20) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `active`, `sign_img`, `created_at`, `updated_at`) VALUES
(1, 'paji', 'paji@gmail.com', '$2b$10$cj5', 0, '', '2023-06-25 11:59:12.046250', '2023-06-25 11:59:12.046250'),
(2, 'thifa', 'faa@gmail.com', '$2b$10$Vqq', 0, '', '2023-06-25 12:02:30.408726', '2023-06-25 12:02:30.408726'),
(3, 'asa', 'salsabilarahmah360@gmail.', '$2b$10$u9n', 0, '', '2023-06-25 12:05:45.645023', '2023-06-25 12:05:45.645023'),
(4, 'pina', 'pina@gmail.com', '$2b$10$qb7', 0, '', '2023-06-26 05:59:53.214382', '2023-06-26 05:59:53.214382'),
(6, 'abi', 'sayang@gmail.com', '$2b$10$znN', 0, '', '2023-06-26 13:43:01.324729', '2023-06-26 13:43:01.324729'),
(7, 'cat', 'cat@gmail.com', '$2b$10$P8U', 0, '', '2023-06-26 13:46:16.157412', '2023-06-26 13:46:16.157412'),
(8, 'jiun', 'jiun@gmail.com', '$2b$10$oqX', 0, '', '2023-06-26 13:48:52.779517', '2023-06-26 13:48:52.779517'),
(9, 'dami', 'dami@gmail.com', '$2b$10$GrF', 0, '', '2023-06-26 15:35:10.168468', '2023-06-26 15:35:10.168468'),
(10, 'contoh', 'contoh@gmail.com', '$2b$10$9aX', 0, '', '2023-06-26 16:09:44.523597', '2023-06-26 16:09:44.523597'),
(11, 'contohnya', 'contohnya@gmail.com', '$2b$10$qJO', 0, '', '2023-06-26 16:10:38.867945', '2023-06-26 16:10:38.867945');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `signature`
--
ALTER TABLE `signature`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `signature`
--
ALTER TABLE `signature`
  ADD CONSTRAINT `signature_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `signature_ibfk_2` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
