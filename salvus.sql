-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2024 pada 08.50
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salvus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_12_06_113202_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `is_published` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `image`, `category`, `author`, `title`, `content`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'QUhaw8suDtAGYR2nU5p4prHRHjTHBITeYdnuRtYD.jpg', 'technology', 'Admin', 'testing', '<h2><strong>testtststssggsgss</strong></h2>\r\n\r\n<p>abcdefghijklmnopqrstuvwxyz</p>\r\n\r\n<p><span class=\"marker\">abcdefghijklmnopqrstuvwxyz</span></p>\r\n\r\n<p><span class=\"marker\">auyfdauysgduiasgfuiasf</span></p>', '1', '2024-01-01 20:30:56', '2024-01-02 00:31:27'),
(2, 'jB5cDddtUFQFZECtLsut2s9gCkwAQVKQfMZcIWdZ.png', 'travel', 'Admin', 'UN 2024', '<h1><strong>UN 2024</strong></h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a metus vel sapien blandit interdum. Proin quis purus malesuada, euismod libero eu, molestie tellus. Phasellus rutrum erat nisi, in hendrerit mauris varius in. Suspendisse ut dui accumsan, venenatis ante ac, mattis arcu. Aenean varius in mauris et bibendum. <s>Cras ultricies</s>.</p>', '0', '2024-01-01 21:33:28', '2024-01-01 21:34:31'),
(3, 'PLXAhG1KRM6gwPPHSTs5XlO0rv2Vy3K4m5yT397u.png', 'technology', 'Admin', 'lorem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vehicula orci diam, a semper ante facilisis id. Nunc interdum ex tellus, sed varius nibh posuere non. Proin tristique erat leo, in interdum orci rutrum sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum id aliquet nisl. Pellentesque congue dapibus tortor, vitae facilisis dui ultrices sit amet. Suspendisse odio tellus, condimentum id mattis at, sodales quis leo. Suspendisse eget porta turpis.</p>\r\n\r\n<p>Morbi sollicitudin consectetur leo, vitae vulputate lacus sodales eu. In in urna et felis molestie finibus vitae nec magna. Vivamus gravida libero at cursus lacinia. Proin rhoncus lorem et elit iaculis, in pellentesque mauris fermentum. Sed vulputate scelerisque justo sed posuere. Vivamus vestibulum arcu eget nulla consectetur iaculis. Duis pellentesque libero vitae tortor convallis, non gravida ex vestibulum. Vestibulum in ullamcorper nisi. Ut nec dui sit amet diam cursus lobortis nec id tellus. Vestibulum ipsum metus, accumsan vitae rhoncus eget, facilisis quis enim. Morbi gravida molestie commodo. Maecenas dictum feugiat justo, at tincidunt nunc congue non. Curabitur ac dolor eleifend, aliquam nulla in, mollis metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n\r\n<p>Phasellus in justo pellentesque, cursus risus non, euismod velit. Sed id rutrum lacus. Sed porttitor venenatis mi quis semper. Donec tortor mauris, vestibulum in lectus id, condimentum faucibus diam. Sed accumsan molestie mi, vitae malesuada tellus euismod id. Maecenas velit tortor, luctus eu arcu non, cursus aliquam risus. Maecenas et mattis est. Nullam id felis eget risus interdum malesuada. Nunc in arcu eu lacus dapibus euismod. Pellentesque cursus ac quam sit amet auctor.</p>\r\n\r\n<p>Sed sed ante sed enim malesuada scelerisque sed vel nisi. Vestibulum rutrum, nisl at porta ultrices, massa dolor condimentum purus, vel viverra purus dui ac magna. Aenean in congue est, eu porta mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed quis auctor tortor. Proin vitae ipsum id elit porta dapibus id quis enim. Maecenas tellus dolor, fermentum at metus sed, tincidunt vehicula nisl. Donec consectetur varius sem, et efficitur arcu. Maecenas a dolor ac leo lobortis tempus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In ultricies quis justo nec tempus. Praesent ante leo, porttitor in consequat ut, consectetur sed dui. Mauris mollis luctus sapien, sed lacinia neque. Fusce placerat nisl nibh, ut aliquam ante scelerisque quis. Donec sagittis sapien eget tortor sodales, sed auctor neque volutpat. Vivamus viverra molestie mi, in malesuada sem facilisis et.</p>', '1', '2024-01-02 00:45:11', '2024-01-02 00:45:21'),
(4, 'UB8vIt0s054HIaiy5HY5q9zEvcsYYYrduLNecGvX.png', 'travel', 'Admin', 'list lorem', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n	<li>Aliquam vestibulum metus quis lectus interdum rhoncus.</li>\r\n	<li>Praesent sed ex molestie ligula efficitur pharetra.</li>\r\n	<li>Aliquam eu ex at elit dignissim egestas.</li>\r\n	<li>Cras porta enim aliquam sem venenatis, sit amet sollicitudin erat porta.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Cras fringilla turpis sed dignissim tempus.</li>\r\n	<li>Cras id nisi id risus consequat lacinia.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Donec efficitur urna in lectus euismod sodales.</li>\r\n	<li>Mauris fermentum eros nec venenatis efficitur.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Donec tempus elit porta, luctus justo sed, efficitur velit.</li>\r\n	<li>Etiam venenatis orci nec ornare convallis.</li>\r\n</ul>', '0', '2024-01-02 00:48:18', '2024-01-02 00:48:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$VesPyS1/hd8K0NUc6AJm9u.qSjlDRetd4DBOC/a6AgwgF7Bgi5lHy', NULL, '2024-01-01 19:07:55', '2024-01-01 19:07:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
