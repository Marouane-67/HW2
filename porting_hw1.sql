-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 14, 2022 alle 14:13
-- Versione del server: 10.4.18-MariaDB
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `porting_hw1`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
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
-- Struttura della tabella `like_post`
--

CREATE TABLE `like_post` (
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `username_like` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `like_post`
--

INSERT INTO `like_post` (`id_post`, `username_like`, `created_at`, `updated_at`) VALUES
(5, 'Ghenza', '2020-07-15 12:57:13', '2020-07-15 12:57:13'),
(3, 'Ghenza', '2020-07-15 13:00:33', '2020-07-15 13:00:33'),
(9, 'Ghenza', '2020-07-15 16:40:08', '2020-07-15 16:40:08'),
(7, 'vlnt99', '2020-07-16 16:42:38', '2020-07-16 16:42:38'),
(11, 'vlnt99', '2020-07-16 16:46:18', '2020-07-16 16:46:18'),
(6, 'GeroD1', '2020-07-18 07:31:46', '2020-07-18 07:31:46'),
(26, 'imad12', '2022-07-12 07:45:50', '2022-07-12 07:45:50'),
(27, 'imad12', '2022-07-12 07:45:52', '2022-07-12 07:45:52'),
(15, 'imad12', '2022-07-12 07:45:58', '2022-07-12 07:45:58'),
(29, 'Gamberone', '2022-07-12 12:36:59', '2022-07-12 12:36:59'),
(30, 'Gamberone', '2022-07-12 12:48:25', '2022-07-12 12:48:25'),
(28, 'Ester1', '2022-07-12 13:08:49', '2022-07-12 13:08:49'),
(31, 'Gamberone', '2022-07-12 13:24:31', '2022-07-12 13:24:31');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_09_105825_create_post_table', 2),
(5, '2020_07_09_110022_create_like_post_table', 2),
(6, '2020_07_09_110139_create_segui_table', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `url_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_like` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `post`
--

INSERT INTO `post` (`id`, `username`, `titolo`, `data`, `url_img`, `n_like`, `created_at`, `updated_at`) VALUES
(3, 'GeroD1', 'terzo', '2022-06-14', 'https://media.giphy.com/media/iGUTUvreEawwg/source.gif', 0, '2022-06-14 08:22:13', '2022-06-14 08:22:13'),
(5, 'GeroD1', 'Post con laravel', '2022-06-14', 'https://media.giphy.com/media/3o7qDSOvfaCO9b3MlO/source.gif', 0, '2022-06-14 08:49:13', '2022-06-14 08:49:13'),
(6, 'Andrez', 'proviamooooooo', '2022-06-14', 'https://media.giphy.com/media/XGhTPVMgzLv7s2TOE6/source.gif', 0, '2022-06-14 09:33:47', '2022-06-14 09:33:47'),
(7, 'Ghenza', 'post pubblicato ghenza', '2022-06-15', 'https://media.giphy.com/media/RlqHIR4C4ro9kSPRKc/source.gif', 0, '2022-06-15 06:45:45', '2022-06-15 06:45:45'),
(8, 'Ghenza', 'post pubblicato ghenza', '2022-06-15', 'https://media.giphy.com/media/RlqHIR4C4ro9kSPRKc/source.gif', 0, '2022-06-15 06:45:45', '2022-06-15 06:45:45'),
(9, 'Ghenza', 'Prima canzone laravel', '2022-06-15', 'https://youtube.com/embed/ZNg47i3cqQ8', 0, '2022-06-15 14:57:00', '2022-06-15 14:57:00'),
(10, 'vlnt99', 'Pippo Mancuso', '2022-06-16', 'https://media.giphy.com/media/ZFTKZ8zwj38gE/source.gif', 0, '2022-06-16 16:43:32', '2022-06-16 16:43:32'),
(11, 'vlnt99', 'Mykonosssssssssssss', '2022-06-16', 'https://youtube.com/embed/CUUrnFzHjMk', 0, '2022-06-16 16:46:12', '2022-06-16 16:46:12'),
(12, 'GeroD1', 'ciao a tutti', '2022-06-20', 'https://media.giphy.com/media/Nx0rz3jtxtEre/source.gif', 0, '2022-06-20 09:03:19', '2022-06-20 09:03:19'),
(13, 'imad12', 'first', '2022-07-10', 'https://media.giphy.com/media/emKZV3rAMi3srQyXY3/source.gif', 0, '2022-07-10 15:38:08', '2022-07-10 15:38:08'),
(14, 'imad12', 'second', '2022-07-10', 'https://media.giphy.com/media/emKZV3rAMi3srQyXY3/source.gif', 0, '2022-07-10 15:39:28', '2022-07-10 15:39:28'),
(15, 'imad12', 'i\'ve no idea', '2022-07-11', 'https://media.giphy.com/media/wKcPbvtok0GJVaozmo/source.gif', 0, '2022-07-11 06:58:40', '2022-07-11 06:58:40'),
(16, 'imad12', 'bellaa', '2022-07-11', 'https://media.giphy.com/media/tqfS3mgQU28ko/source.gif', 0, '2022-07-11 07:21:58', '2022-07-11 07:21:58'),
(17, 'imad12', 'haha', '2022-07-11', 'https://media.giphy.com/media/KbTNbjRki4W8sAORJ8/source.gif', 0, '2022-07-11 08:32:29', '2022-07-11 08:32:29'),
(18, 'imad12', 'gattini', '2022-07-11', 'https://media.giphy.com/media/3o72EX5QZ9N9d51dqo/source.gif', 0, '2022-07-11 08:36:38', '2022-07-11 08:36:38'),
(23, 'imad12', 'fr', '2022-07-11', 'https://media.giphy.com/media/tqfS3mgQU28ko/source.gif', 0, '2022-07-11 15:30:35', '2022-07-11 15:30:35'),
(24, 'imad12', 'bella', '2022-07-11', 'https://media.giphy.com/media/tqfS3mgQU28ko/source.gif', 0, '2022-07-11 15:33:27', '2022-07-11 15:33:27'),
(25, 'imad12', 'fr', '2022-07-11', 'https://media.giphy.com/media/tyspit3ZZThcs/source.gif', 0, '2022-07-11 15:45:16', '2022-07-11 15:45:16'),
(26, 'imad12', 'brr', '2022-07-12', 'https://media.giphy.com/media/11hqtABqqr70Z2/source.gif', 0, '2022-07-12 07:28:21', '2022-07-12 07:28:21'),
(27, 'imad12', 'oki', '2022-07-12', 'https://media.giphy.com/media/Y0GyZQpjqafoatTvjB/source.gif', 0, '2022-07-12 07:30:34', '2022-07-12 07:30:34'),
(28, 'Ester1', '.', '2022-07-12', 'https://media.giphy.com/media/KNeeNrAQQqt0v8jvf9/source.gif', 0, '2022-07-12 08:55:41', '2022-07-12 08:55:41'),
(29, 'Gamberone', 'ci sta', '2022-07-12', 'https://media.giphy.com/media/dM2xuxnJCg4H6/source.gif', 0, '2022-07-12 12:34:15', '2022-07-12 12:34:15'),
(30, 'Gamberone', 'ii', '2022-07-12', 'https://media.giphy.com/media/3o72EX5QZ9N9d51dqo/source.gif', 0, '2022-07-12 12:48:15', '2022-07-12 12:48:15'),
(31, 'Gamberone', 'In the mood', '2022-07-12', 'https://media.giphy.com/media/4oMoIbIQrvCjm/source.gif', 0, '2022-07-12 13:24:23', '2022-07-12 13:24:23'),
(32, 'hashish12', 'bhu', '2022-07-12', 'https://media.giphy.com/media/KbTNbjRki4W8sAORJ8/source.gif', 0, '2022-07-12 14:56:11', '2022-07-12 14:56:11'),
(33, 'andrea', 'si vola', '2022-07-12', 'https://media.giphy.com/media/3o6ZtjUZAD5Lf0QFLW/source.gif', 0, '2022-07-12 20:39:31', '2022-07-12 20:39:31'),
(34, 'Gamberone', 'c\'hai ragione', '2022-07-13', 'https://media.giphy.com/media/l0CRBAgZ6OLR3srcY/source.gif', 0, '2022-07-13 11:57:58', '2022-07-13 11:57:58');

-- --------------------------------------------------------

--
-- Struttura della tabella `segui`
--

CREATE TABLE `segui` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `utente1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utente2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `birth`, `photo`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Calogero', 'Messana', '1995-08-15', 'userImage/aoiP16Pxq2E9VdBvWIfztJumiI4dIZXatWxmCFIZ.png', 'GeroD1', 'gerorastawowo@gmail.com', NULL, '$2y$10$.7fP2668tinhF0IpQMJ/.u/rUoI9G9LgjikIX/Zz3Wn4u0ZMt1rLm', NULL, '2022-07-09 13:08:06', '2022-07-09 13:08:06'),
(6, 'Andrea', 'Mazzola', '1996-07-12', NULL, 'Andrez', 'mazzola@gmail.com', NULL, '$2y$10$D1Zv7lN37.f/LC2zrr7g2uaHLFYH1RFcyGDMuzDdCO9OLmlmJaYgi', NULL, '2020-07-13 07:50:49', '2020-07-13 07:50:49'),
(7, 'Enza', 'Avellinza', '2000-09-20', 'userImage/MgtFK0p3aTSBpxNwqnX9Dz0l7LUdzZ9umXl1LrbL.jpeg', 'Ghenza', 'avvellina@gmail.com', NULL, '$2y$10$xDTW5qrNZTdzXfnvGHJmue22/BpxW2mQ0aVUWXJ05o3QdLqMteKVK', NULL, '2020-07-13 08:51:05', '2020-07-13 08:51:05'),
(8, 'Calogero', 'Messana', '1111-11-11', 'userImage/TY1xHlZ6mHiB0pUF71UsPLBNFal2CoVRMmtQhAC3.jpeg', 'duccio2', 'rivituso@gmail.com', NULL, '$2y$10$IGtU8MpNM0GwK35xE.abcet92W/MPUfwJTTPGbwFYzb1VkWfl6c06', NULL, '2020-07-13 09:00:50', '2020-07-13 09:00:50'),
(9, 'Valentina', 'Parrinello', '1999-02-09', 'img/5eb7f3463a0556.01946772.jpg', 'vlnt99', 'parrinello@gmail.com', NULL, '$2y$10$Tbf5KaTPACA1Xwi0.A/zb.Pmm6bj2ku4Q8COo/V93E0GCVW6/d/Ne', NULL, '2020-07-16 16:41:45', '2020-07-16 16:41:45'),
(13, 'imad', 'Raoudi', '2000-03-12', 'userImage/bella.jpg', 'imad12', 'imad@gmail.com', NULL, '$2y$10$X/0iSvVs3bKwUzrzs1Eor.Dtqh7DZwEp6cDggvoY/59ci11g4RAg6', NULL, '2022-07-10 15:25:25', '2022-07-10 15:25:25'),
(14, 'Etser', 'Piemonte', '2001-03-12', 'userImage/bella.jpg', 'Ester1', 'Ester@gmail.com', NULL, '$2y$10$2E0yBlHd8g.3MEy4HsLrz.ALqZwxcesD0URaOygnMHG.enJIJfTf2', NULL, '2022-07-12 08:54:29', '2022-07-12 08:54:29'),
(15, 'Gamberone', 'Tossico', '2000-05-02', 'images/bella.jpg', 'Gamberone', 'Gamberone@gmail.com', NULL, '$2y$10$VfMjeq95dd17.31jkcdiluli4trE4qWpGeRjrRmt7dNY2/a8ocm8C', NULL, '2022-07-12 12:33:34', '2022-07-12 12:33:34'),
(16, 'hashish', 'nonSo', '1999-02-01', 'userImage/W5RgETP3Sr8PgjaKueaenuRCq7PwQ9N2V9TlTs8p.jpg', 'hashish12', 'hashish@gmail.com', NULL, '$2y$10$LO7FVs1XsA5VewrQSnGwxeXpKBSB5ZG2VshAeE8A1Lw1FKXBQ0KYm', NULL, '2022-07-12 14:35:57', '2022-07-12 14:35:57'),
(17, 'Andrea', 'sciacca', '2000-05-01', 'userImage/QUhWfzhVeHnPOBEIGEX0geeh9X6qwMobxubfNTGC.jpg', 'andrea', 'andrea@gmail.com', NULL, '$2y$10$EYHyNZVwWgFerrgfzbZn5uhcDybcDEQIqLRHJOYzptFEhJgH6b7by', NULL, '2022-07-12 20:37:56', '2022-07-12 20:37:56');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `like_post`
--
ALTER TABLE `like_post`
  ADD KEY `like_post_username_like_foreign` (`username_like`),
  ADD KEY `id_post` (`id_post`) USING BTREE;

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `segui`
--
ALTER TABLE `segui`
  ADD PRIMARY KEY (`id`),
  ADD KEY `segui_utente1_foreign` (`utente1`),
  ADD KEY `segui_utente2_foreign` (`utente2`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `like_post`
--
ALTER TABLE `like_post`
  MODIFY `id_post` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `segui`
--
ALTER TABLE `segui`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `like_post`
--
ALTER TABLE `like_post`
  ADD CONSTRAINT `like_post_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `like_post_username_like_foreign` FOREIGN KEY (`username_like`) REFERENCES `users` (`username`);

--
-- Limiti per la tabella `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `segui`
--
ALTER TABLE `segui`
  ADD CONSTRAINT `segui_utente1_foreign` FOREIGN KEY (`utente1`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `segui_utente2_foreign` FOREIGN KEY (`utente2`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
