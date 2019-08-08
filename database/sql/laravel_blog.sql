-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 07, 2019 at 10:02 AM
-- Server version: 10.0.38-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.2.20-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

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
(3, '2019_07_21_022016_create_table_categoris', 1),
(4, '2019_07_21_022625_create_table_artikels', 1);

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
-- Table structure for table `table_artikels`
--

CREATE TABLE `table_artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoris_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_artikels`
--

INSERT INTO `table_artikels` (`id`, `judul`, `body`, `gambar`, `categoris_id`, `created_at`, `updated_at`) VALUES
(1, 'membuat-kerangka-landing-page-html', '<p></p><div><p>Nulla quis eros velit. Sed vestibulum auctor auctor. Aliquam varius, mi eu pulvinar sodales, ex libero vulputate orci, sit amet tincidunt nisi ex consectetur ipsum. Mauris mattis bibendum justo, sed varius augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur quis lectus aliquam, hendrerit arcu eget, sagittis ipsum. Nullam urna risus, egestas vitae augue et, porta sollicitudin est. Nunc consectetur metus ut mauris fringilla varius. Nulla ligula quam, eleifend sit amet elit nec, elementum rhoncus mi. Suspendisse hendrerit ante vitae cursus vulputate. Mauris leo ipsum, porta vitae sapien sed, varius porttitor enim. Mauris sit amet volutpat purus. Phasellus porta libero nec nibh accumsan porta. Proin facilisis nisi vitae eros tempus suscipit. Cras porta in dui sit amet hendrerit. Phasellus sagittis arcu in risus bibendum, et imperdiet urna tincidunt.</p><p>Sed purus arcu, fermentum ac sollicitudin eu, efficitur eu erat. Integer luctus malesuada libero, eget scelerisque ipsum viverra eu. Etiam at eros luctus lacus tincidunt volutpat a non nisi. Etiam mauris ex, suscipit et libero nec, malesuada viverra lectus. Pellentesque tortor elit, feugiat placerat nibh vel, congue mollis eros. Cras vel semper tortor, et porttitor orci. Integer iaculis risus in tortor faucibus mattis blandit non purus. Nam ultrices vehicula lacus, fermentum porttitor nulla volutpat sed. Etiam placerat, tellus a euismod commodo, turpis nulla dignissim nisl, sit amet placerat urna turpis ut magna. Curabitur molestie rhoncus ultrices. Mauris at purus eget ipsum porta scelerisque a non lectus. Nulla nec lacinia massa. Quisque risus nulla, hendrerit et quam aliquet, sollicitudin vehicula ligula. Fusce tempor, dui at dapibus porttitor, mauris odio molestie orci, vel mollis enim ipsum vitae massa.</p><p>Integer pulvinar mi sit amet lorem maximus, in porta lacus pharetra. Vivamus sodales quam sem, eu dignissim turpis dignissim eu. Nulla eleifend ligula vel sodales venenatis. Maecenas vestibulum quam elit, in tempus odio elementum et. Sed ut semper lectus, sit amet lobortis orci. Integer porttitor arcu quis urna efficitur, sed ornare risus bibendum. Sed imperdiet mi non ornare volutpat. Suspendisse mi quam, dictum sed quam id, lobortis rhoncus eros. Donec tempor est ac urna condimentum, quis laoreet purus laoreet. Nulla vitae eros ullamcorper, sodales nibh sit amet, auctor purus.</p><p>Vestibulum sagittis vestibulum magna eget sodales. Donec nunc nisi, mollis sed eleifend non, volutpat eu mi. Ut eget pulvinar velit, id auctor arcu. Aenean ut faucibus nisl, eu hendrerit libero. Donec ac velit id turpis lacinia malesuada sit amet non lacus. Aliquam elementum ante non enim facilisis, eget luctus ligula dapibus. Sed ante ipsum, dignissim id massa nec, luctus fermentum justo. Vivamus ut rutrum risus. Praesent et feugiat orci. Pellentesque bibendum ut lacus in tincidunt. Morbi varius rhoncus purus, vitae elementum odio condimentum mollis.</p><p>Sed hendrerit convallis lorem, eu maximus ligula auctor et. Donec non quam eget felis vulputate accumsan. Nam eros risus, laoreet eu mi at, dignissim rutrum felis. Fusce id viverra velit. Aliquam dictum vel urna vitae tristique. Nullam eget ultrices urna. Nulla erat dui, cursus id tristique quis, fermentum a libero. Integer posuere laoreet dui, cursus eleifend odio hendrerit vel. In lacinia nisl vitae magna condimentum tempor.</p></div><br><br><p></p>', 'artikel/wUwpo3zC7QWUTYMoAFYY9QVnU9uUVCalgE3tlOPV.jpeg', 2, '2019-07-22 00:18:30', '2019-07-22 00:20:03'),
(2, 'membuat-crud-php', '<p></p><div><p>Nulla quis eros velit. Sed vestibulum auctor auctor. Aliquam varius, mi eu pulvinar sodales, ex libero vulputate orci, sit amet tincidunt nisi ex consectetur ipsum. Mauris mattis bibendum justo, sed varius augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur quis lectus aliquam, hendrerit arcu eget, sagittis ipsum. Nullam urna risus, egestas vitae augue et, porta sollicitudin est. Nunc consectetur metus ut mauris fringilla varius. Nulla ligula quam, eleifend sit amet elit nec, elementum rhoncus mi. Suspendisse hendrerit ante vitae cursus vulputate. Mauris leo ipsum, porta vitae sapien sed, varius porttitor enim. Mauris sit amet volutpat purus. Phasellus porta libero nec nibh accumsan porta. Proin facilisis nisi vitae eros tempus suscipit. Cras porta in dui sit amet hendrerit. Phasellus sagittis arcu in risus bibendum, et imperdiet urna tincidunt.</p><p>Sed purus arcu, fermentum ac sollicitudin eu, efficitur eu erat. Integer luctus malesuada libero, eget scelerisque ipsum viverra eu. Etiam at eros luctus lacus tincidunt volutpat a non nisi. Etiam mauris ex, suscipit et libero nec, malesuada viverra lectus. Pellentesque tortor elit, feugiat placerat nibh vel, congue mollis eros. Cras vel semper tortor, et porttitor orci. Integer iaculis risus in tortor faucibus mattis blandit non purus. Nam ultrices vehicula lacus, fermentum porttitor nulla volutpat sed. Etiam placerat, tellus a euismod commodo, turpis nulla dignissim nisl, sit amet placerat urna turpis ut magna. Curabitur molestie rhoncus ultrices. Mauris at purus eget ipsum porta scelerisque a non lectus. Nulla nec lacinia massa. Quisque risus nulla, hendrerit et quam aliquet, sollicitudin vehicula ligula. Fusce tempor, dui at dapibus porttitor, mauris odio molestie orci, vel mollis enim ipsum vitae massa.</p><p>Integer pulvinar mi sit amet lorem maximus, in porta lacus pharetra. Vivamus sodales quam sem, eu dignissim turpis dignissim eu. Nulla eleifend ligula vel sodales venenatis. Maecenas vestibulum quam elit, in tempus odio elementum et. Sed ut semper lectus, sit amet lobortis orci. Integer porttitor arcu quis urna efficitur, sed ornare risus bibendum. Sed imperdiet mi non ornare volutpat. Suspendisse mi quam, dictum sed quam id, lobortis rhoncus eros. Donec tempor est ac urna condimentum, quis laoreet purus laoreet. Nulla vitae eros ullamcorper, sodales nibh sit amet, auctor purus.</p><p>Vestibulum sagittis vestibulum magna eget sodales. Donec nunc nisi, mollis sed eleifend non, volutpat eu mi. Ut eget pulvinar velit, id auctor arcu. Aenean ut faucibus nisl, eu hendrerit libero. Donec ac velit id turpis lacinia malesuada sit amet non lacus. Aliquam elementum ante non enim facilisis, eget luctus ligula dapibus. Sed ante ipsum, dignissim id massa nec, luctus fermentum justo. Vivamus ut rutrum risus. Praesent et feugiat orci. Pellentesque bibendum ut lacus in tincidunt. Morbi varius rhoncus purus, vitae elementum odio condimentum mollis.</p><p>Sed hendrerit convallis lorem, eu maximus ligula auctor et. Donec non quam eget felis vulputate accumsan. Nam eros risus, laoreet eu mi at, dignissim rutrum felis. Fusce id viverra velit. Aliquam dictum vel urna vitae tristique. Nullam eget ultrices urna. Nulla erat dui, cursus id tristique quis, fermentum a libero. Integer posuere laoreet dui, cursus eleifend odio hendrerit vel. In lacinia nisl vitae magna condimentum tempor.</p></div><br><br><p></p>', 'artikel/oh5BQvBOT13QxatfwNdeaWP9prrZ4pgl2dzs97aE.jpeg', 1, '2019-07-22 00:19:17', '2019-07-22 00:19:17'),
(3, 'mempercantik-tampilan-landing-page-dengan-css', '<p></p><div><p>Nulla quis eros velit. Sed vestibulum auctor auctor. Aliquam varius, mi eu pulvinar sodales, ex libero vulputate orci, sit amet tincidunt nisi ex consectetur ipsum. Mauris mattis bibendum justo, sed varius augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur quis lectus aliquam, hendrerit arcu eget, sagittis ipsum. Nullam urna risus, egestas vitae augue et, porta sollicitudin est. Nunc consectetur metus ut mauris fringilla varius. Nulla ligula quam, eleifend sit amet elit nec, elementum rhoncus mi. Suspendisse hendrerit ante vitae cursus vulputate. Mauris leo ipsum, porta vitae sapien sed, varius porttitor enim. Mauris sit amet volutpat purus. Phasellus porta libero nec nibh accumsan porta. Proin facilisis nisi vitae eros tempus suscipit. Cras porta in dui sit amet hendrerit. Phasellus sagittis arcu in risus bibendum, et imperdiet urna tincidunt.</p><p>Sed purus arcu, fermentum ac sollicitudin eu, efficitur eu erat. Integer luctus malesuada libero, eget scelerisque ipsum viverra eu. Etiam at eros luctus lacus tincidunt volutpat a non nisi. Etiam mauris ex, suscipit et libero nec, malesuada viverra lectus. Pellentesque tortor elit, feugiat placerat nibh vel, congue mollis eros. Cras vel semper tortor, et porttitor orci. Integer iaculis risus in tortor faucibus mattis blandit non purus. Nam ultrices vehicula lacus, fermentum porttitor nulla volutpat sed. Etiam placerat, tellus a euismod commodo, turpis nulla dignissim nisl, sit amet placerat urna turpis ut magna. Curabitur molestie rhoncus ultrices. Mauris at purus eget ipsum porta scelerisque a non lectus. Nulla nec lacinia massa. Quisque risus nulla, hendrerit et quam aliquet, sollicitudin vehicula ligula. Fusce tempor, dui at dapibus porttitor, mauris odio molestie orci, vel mollis enim ipsum vitae massa.</p><p>Integer pulvinar mi sit amet lorem maximus, in porta lacus pharetra. Vivamus sodales quam sem, eu dignissim turpis dignissim eu. Nulla eleifend ligula vel sodales venenatis. Maecenas vestibulum quam elit, in tempus odio elementum et. Sed ut semper lectus, sit amet lobortis orci. Integer porttitor arcu quis urna efficitur, sed ornare risus bibendum. Sed imperdiet mi non ornare volutpat. Suspendisse mi quam, dictum sed quam id, lobortis rhoncus eros. Donec tempor est ac urna condimentum, quis laoreet purus laoreet. Nulla vitae eros ullamcorper, sodales nibh sit amet, auctor purus.</p><p>Sed hendrerit convallis lorem, eu maximus ligula auctor et. Donec non quam eget felis vulputate accumsan. Nam eros risus, laoreet eu mi at, dignissim rutrum felis. Fusce id viverra velit. Aliquam dictum vel urna vitae tristique. Nullam eget ultrices urna. Nulla erat dui, cursus id tristique quis, fermentum a libero. Integer posuere laoreet dui, cursus eleifend odio hendrerit vel. In lacinia nisl vitae magna condimentum tempor.<br></p></div><br><br><p></p>', 'artikel/UJv4uBhx7qKk4rwfsNHtjAR7tFw4CSpxheGpGNsg.jpeg', 3, '2019-07-22 00:21:01', '2019-07-22 00:21:01'),
(4, 'belajar-dasar-javascript', '<p></p><div><p>Sed purus arcu, fermentum ac sollicitudin eu, efficitur eu erat. Integer luctus malesuada libero, eget scelerisque ipsum viverra eu. Etiam at eros luctus lacus tincidunt volutpat a non nisi. Etiam mauris ex, suscipit et libero nec, malesuada viverra lectus. Pellentesque tortor elit, feugiat placerat nibh vel, congue mollis eros. Cras vel semper tortor, et porttitor orci. Integer iaculis risus in tortor faucibus mattis blandit non purus. Nam ultrices vehicula lacus, fermentum porttitor nulla volutpat sed. Etiam placerat, tellus a euismod commodo, turpis nulla dignissim nisl, sit amet placerat urna turpis ut magna. Curabitur molestie rhoncus ultrices. Mauris at purus eget ipsum porta scelerisque a non lectus. Nulla nec lacinia massa. Quisque risus nulla, hendrerit et quam aliquet, sollicitudin vehicula ligula. Fusce tempor, dui at dapibus porttitor, mauris odio molestie orci, vel mollis enim ipsum vitae massa.<br></p><p>Integer pulvinar mi sit amet lorem maximus, in porta lacus pharetra. Vivamus sodales quam sem, eu dignissim turpis dignissim eu. Nulla eleifend ligula vel sodales venenatis. Maecenas vestibulum quam elit, in tempus odio elementum et. Sed ut semper lectus, sit amet lobortis orci. Integer porttitor arcu quis urna efficitur, sed ornare risus bibendum. Sed imperdiet mi non ornare volutpat. Suspendisse mi quam, dictum sed quam id, lobortis rhoncus eros. Donec tempor est ac urna condimentum, quis laoreet purus laoreet. Nulla vitae eros ullamcorper, sodales nibh sit amet, auctor purus.</p><p>Vestibulum sagittis vestibulum magna eget sodales. Donec nunc nisi, mollis sed eleifend non, volutpat eu mi. Ut eget pulvinar velit, id auctor arcu. Aenean ut faucibus nisl, eu hendrerit libero. Donec ac velit id turpis lacinia malesuada sit amet non lacus. Aliquam elementum ante non enim facilisis, eget luctus ligula dapibus. Sed ante ipsum, dignissim id massa nec, luctus fermentum justo. Vivamus ut rutrum risus. Praesent et feugiat orci. Pellentesque bibendum ut lacus in tincidunt. Morbi varius rhoncus purus, vitae elementum odio condimentum mollis.</p><p>Sed hendrerit convallis lorem, eu maximus ligula auctor et. Donec non quam eget felis vulputate accumsan. Nam eros risus, laoreet eu mi at, dignissim rutrum felis. Fusce id viverra velit. Aliquam dictum vel urna vitae tristique. Nullam eget ultrices urna. Nulla erat dui, cursus id tristique quis, fermentum a libero. Integer posuere laoreet dui, cursus eleifend odio hendrerit vel. In lacinia nisl vitae magna condimentum tempor.</p></div><br><br><p></p>', 'artikel/HgMD8MrSYxbdvJJBl5Sv2xvcq42mRbsaoK3wgJYP.jpeg', 4, '2019-07-22 00:23:55', '2019-07-22 00:23:55'),
(5, 'membuat-crud-di-framework-laravel', '<p></p><div><p>Integer pulvinar mi sit amet lorem maximus, in porta lacus pharetra. Vivamus sodales quam sem, eu dignissim turpis dignissim eu. Nulla eleifend ligula vel sodales venenatis. Maecenas vestibulum quam elit, in tempus odio elementum et. Sed ut semper lectus, sit amet lobortis orci. Integer porttitor arcu quis urna efficitur, sed ornare risus bibendum. Sed imperdiet mi non ornare volutpat. Suspendisse mi quam, dictum sed quam id, lobortis rhoncus eros. Donec tempor est ac urna condimentum, quis laoreet purus laoreet. Nulla vitae eros ullamcorper, sodales nibh sit amet, auctor purus.<br></p><p>Vestibulum sagittis vestibulum magna eget sodales. Donec nunc nisi, mollis sed eleifend non, volutpat eu mi. Ut eget pulvinar velit, id auctor arcu. Aenean ut faucibus nisl, eu hendrerit libero. Donec ac velit id turpis lacinia malesuada sit amet non lacus. Aliquam elementum ante non enim facilisis, eget luctus ligula dapibus. Sed ante ipsum, dignissim id massa nec, luctus fermentum justo. Vivamus ut rutrum risus. Praesent et feugiat orci. Pellentesque bibendum ut lacus in tincidunt. Morbi varius rhoncus purus, vitae elementum odio condimentum mollis.</p><p>Sed hendrerit convallis lorem, eu maximus ligula auctor et. Donec non quam eget felis vulputate accumsan. Nam eros risus, laoreet eu mi at, dignissim rutrum felis. Fusce id viverra velit. Aliquam dictum vel urna vitae tristique. Nullam eget ultrices urna. Nulla erat dui, cursus id tristique quis, fermentum a libero. Integer posuere laoreet dui, cursus eleifend odio hendrerit vel. In lacinia nisl vitae magna condimentum tempor.</p></div><br><br><p></p>', 'artikel/KMzHAhy0eraxsKpVR4ILE6Ph0QpzjS4xHp8u4xXP.jpeg', 1, '2019-07-22 00:24:48', '2019-07-22 00:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `table_categoris`
--

CREATE TABLE `table_categoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_categoris`
--

INSERT INTO `table_categoris` (`id`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'php', '2019-07-22 00:16:31', '2019-07-22 00:16:31'),
(2, 'HTML', 'html', '2019-07-22 00:16:42', '2019-07-22 00:16:42'),
(3, 'CSS', 'css', '2019-07-22 00:16:50', '2019-07-22 00:16:50'),
(4, 'Javascript', 'javascript', '2019-07-22 00:17:01', '2019-07-22 00:17:01'),
(5, 'Laravel', 'laravel', '2019-07-22 00:17:13', '2019-07-22 00:17:13');

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
(1, '8QBeC0PcSj', 'admin@gmail.com', NULL, '$2y$10$aLfprY6zZjZKLfiGGKiZWeMI69nL5k37DPN0xEas315OJ7z5bh4cu', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `table_artikels`
--
ALTER TABLE `table_artikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_artikels_categoris_id_index` (`categoris_id`);

--
-- Indexes for table `table_categoris`
--
ALTER TABLE `table_categoris`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_artikels`
--
ALTER TABLE `table_artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_categoris`
--
ALTER TABLE `table_categoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_artikels`
--
ALTER TABLE `table_artikels`
  ADD CONSTRAINT `table_artikels_categoris_id_foreign` FOREIGN KEY (`categoris_id`) REFERENCES `table_categoris` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
