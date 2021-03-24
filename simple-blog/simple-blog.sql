-- --------------------------------------------------------
-- Host:                         localhost
-- Server Version:               5.7.24 - MySQL Community Server (GPL)
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Exportiere Datenbank Struktur für simple_blog
CREATE DATABASE IF NOT EXISTS `simple_blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `simple_blog`;

-- Exportiere Struktur von Tabelle simple_blog.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle simple_blog.comments: ~10 rows (ungefähr)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `author`, `text`, `post_id`, `created_at`, `updated_at`) VALUES
	(1, 'Malte', 'Hallo', 1, NULL, NULL),
	(2, 'Ich', 'Huhu', 1, NULL, NULL),
	(3, 'Autor', 'wer', 1, '2021-02-10 13:06:56', '2021-02-10 13:06:56'),
	(4, 'Autor', 'werret', 1, '2021-02-10 13:06:59', '2021-02-10 13:06:59'),
	(5, 'Autor', 'asdsdffg', 1, '2021-02-10 13:07:18', '2021-02-10 13:07:18'),
	(6, 'Autor', 'sdfsfdfg', 1, '2021-02-10 13:07:44', '2021-02-10 13:07:44'),
	(7, 'Autor', 'asdssssss', 1, '2021-02-10 13:07:48', '2021-02-10 13:07:48'),
	(8, 'Autor', 'sdadsad', 1, '2021-02-10 13:22:24', '2021-02-10 13:22:24'),
	(9, 'Autor', 'hallo', 1, '2021-02-10 13:22:29', '2021-02-10 13:22:29'),
	(10, 'Autor', 'test2', 1, '2021-02-10 13:27:19', '2021-02-10 13:27:19'),
	(11, 'Autor', 'huhu', 1, '2021-02-17 13:00:54', '2021-02-17 13:00:54'),
	(12, 'Autor', 'Kommentar 1', 2, '2021-02-17 13:30:14', '2021-02-17 13:30:14');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle simple_blog.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle simple_blog.failed_jobs: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle simple_blog.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle simple_blog.migrations: ~7 rows (ungefähr)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2020_04_26_210424_create_posts_table', 1),
	(4, '2020_05_10_181614_create_comments_table', 2),
	(5, '2014_10_12_100000_create_password_resets_table', 3),
	(6, '2021_02_03_135554_create_comments_table', 3),
	(7, '2021_02_17_132621_create_tags_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle simple_blog.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle simple_blog.password_resets: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle simple_blog.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle simple_blog.posts: ~4 rows (ungefähr)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `author`, `lead`, `body`, `image`, `published_at`, `created_at`, `updated_at`) VALUES
	(1, 'In collaboration with working on the Banner illustrations', 'KAWSHAR AHMED', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis malesuada massa, sit amet ullamcorper urna. Vivamus non porta mi, vel facilisis metus.', 'Nam ac ante odio. Quisque iaculis ipsum et luctus blandit. Quisque odio turpis, dignissim vitae nulla et, consequat congue sem. Vivamus facilisis mauris sed ex molestie, a interdum diam scelerisque. Vivamus semper enim non arcu ullamcorper, eget cursus nisl mattis. Praesent at risus id urna tristique facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu erat lorem. Aliquam erat volutpat. Maecenas vel vestibulum neque, in tristique urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer massa leo, iaculis in malesuada a, vestibulum quis ipsum. Aliquam at lectus accumsan, lobortis risus sit amet, sodales ex.', 'blog-61-750x300.jpg', NULL, NULL, NULL),
	(2, 'Caramel Pumpkin Macchiatos Are Starbucks\' Best Kept', 'KAWSHAR AHMED', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis malesuada massa, sit amet ullamcorper urna. Vivamus non porta mi, vel facilisis metus. Aenean et bibendum ipsum. Duis purus purus, congue ut lacus at, iaculis ultrices mauris.', 'Nam ac ante odio. Quisque iaculis ipsum et luctus blandit. Quisque odio turpis, dignissim vitae nulla et, consequat congue sem. Vivamus facilisis mauris sed ex molestie, a interdum diam scelerisque. Vivamus semper enim non arcu ullamcorper, eget cursus nisl mattis. Praesent at risus id urna tristique facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu erat lorem. Aliquam erat volutpat. Maecenas vel vestibulum neque, in tristique urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer massa leo, iaculis in malesuada a, vestibulum quis ipsum. Aliquam at lectus accumsan, lobortis risus sit amet, sodales ex.', 'blog-51-750x300.jpg', NULL, NULL, NULL),
	(3, 'Hulu Is Cutting the Price of Its Entry-level Monthly Plan for', 'KAWSHAR AHMED', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis malesuada massa, sit amet ullamcorper urna. Vivamus non porta mi, vel facilisis metus. Aenean et bibendum ipsum. Duis purus purus, congue ut lacus at, iaculis ultrices mauris.', 'Nam ac ante odio. Quisque iaculis ipsum et luctus blandit. Quisque odio turpis, dignissim vitae nulla et, consequat congue sem. Vivamus facilisis mauris sed ex molestie, a interdum diam scelerisque. Vivamus semper enim non arcu ullamcorper, eget cursus nisl mattis. Praesent at risus id urna tristique facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu erat lorem. Aliquam erat volutpat. Maecenas vel vestibulum neque, in tristique urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer massa leo, iaculis in malesuada a, vestibulum quis ipsum. Aliquam at lectus accumsan, lobortis risus sit amet, sodales ex.', 'blog-31-750x300.jpg', NULL, NULL, NULL),
	(4, 'California Wine Country Ravaged by Heavy Fire Realm', 'KAWSHAR AHMED', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis malesuada massa, sit amet ullamcorper urna. Vivamus non porta mi, vel facilisis metus. Aenean et bibendum ipsum. Duis purus purus, congue ut lacus at, iaculis ultrices mauris.', 'Nam ac ante odio. Quisque iaculis ipsum et luctus blandit. Quisque odio turpis, dignissim vitae nulla et, consequat congue sem. Vivamus facilisis mauris sed ex molestie, a interdum diam scelerisque. Vivamus semper enim non arcu ullamcorper, eget cursus nisl mattis. Praesent at risus id urna tristique facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu erat lorem. Aliquam erat volutpat. Maecenas vel vestibulum neque, in tristique urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer massa leo, iaculis in malesuada a, vestibulum quis ipsum. Aliquam at lectus accumsan, lobortis risus sit amet, sodales ex.', 'blog-41-750x300.jpg', NULL, NULL, NULL),
	(5, 'Mein erster Post', 'Autor', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', NULL, NULL, '2021-02-10 13:57:38', '2021-02-10 13:57:38');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle simple_blog.post_tag
CREATE TABLE IF NOT EXISTS `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle simple_blog.post_tag: ~5 rows (ungefähr)
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
	(1, 1),
	(1, 3),
	(1, 4),
	(2, 1),
	(2, 2);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle simple_blog.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle simple_blog.tags: ~4 rows (ungefähr)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Sport', NULL, NULL),
	(2, 'Politik', NULL, NULL),
	(3, 'Film', NULL, NULL),
	(4, 'Bildung', NULL, NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle simple_blog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle simple_blog.users: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(5, 'test', 'test@test.net', NULL, '$2y$10$eIFunxAjGP978XfTrfE6eeWsdIL.2IpVyPx02L8a1e75/WYVvFdZy', NULL, '2020-11-12 13:11:27', '2020-11-12 13:11:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
