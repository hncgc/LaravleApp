-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        5.7.19 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 laravel5 的数据库结构
CREATE DATABASE IF NOT EXISTS `laravel5` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_croatian_ci */;
USE `laravel5`;

-- 导出  表 laravel5.articles 结构
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  laravel5.articles 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `updated_at`, `published_at`) VALUES
	(1, 'Update Title', 'My first Content', '2018-04-07 17:01:01', '2018-04-07 17:29:50', '2018-04-07 17:00:26'),
	(2, 'My second Title', 'Second Content', '2018-04-07 17:53:43', '2018-04-07 18:11:08', '2018-04-07 17:53:43'),
	(3, '我要发表文章', '很好，发表文章的内容在这里！', '2018-04-08 03:53:37', '2018-04-08 03:53:37', '2018-04-08 03:53:37'),
	(4, '今天天气不错', '今天的天气比昨天要好', '2018-04-08 14:58:32', '2018-04-08 14:58:32', '2018-04-08 14:58:32'),
	(5, '发表文章测试', '测试内容是这里', '2018-04-08 15:53:55', '2018-04-08 15:53:55', '2018-04-08 15:53:55'),
	(6, '新的一天开始了,Ok', '新的一天开始了，今天天气真好, 好好好。', '2018-04-08 17:47:40', '2018-04-09 17:30:28', '2018-04-09 17:30:28'),
	(7, '中国很强大', '春天来了，春天到了\r\n中国很强大', '2018-04-09 00:12:41', '2018-04-10 02:14:13', '2018-04-10 02:14:13'),
	(8, '又来一篇怎么样？', 'Laravel 5.1 视频基础教程 >> Eloquent Relationship\r\nhttps://www.codecasts.com/series/laravel-5-basic/episodes/14\r\n\r\n后端工程师训练计划\r\nhttps://www.codecasts.com/learn/laravel', '2018-04-09 00:28:34', '2018-04-10 02:15:04', '2018-04-10 02:15:04'),
	(9, '中国人最伟大', '我是中国人，中国人最伟大\r\n我是中国人，中国人最伟大', '2018-04-14 23:44:46', '2018-04-14 23:58:57', '2018-04-14 23:58:57'),
	(10, '新文章来了', '文章内容部分', '2018-04-15 00:07:30', '2018-04-15 00:07:30', '2018-04-15 00:07:30'),
	(11, '加文章标签后', '看选择的标签是否已保在tags和article_tag表中', '2018-04-15 00:17:15', '2018-04-15 00:17:15', '2018-04-15 00:17:15'),
	(12, 'Laravel真是一个很好的PHP框架', '真是一个很好的PHP框架', '2018-04-15 00:24:12', '2018-04-15 00:24:12', '2018-04-15 00:24:12');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- 导出  表 laravel5.article_tag 结构
CREATE TABLE IF NOT EXISTS `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_tag_article_id_index` (`article_id`),
  KEY `article_tag_tag_id_index` (`tag_id`),
  CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  laravel5.article_tag 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 11, 1, NULL, NULL),
	(2, 11, 3, NULL, NULL),
	(3, 11, 5, NULL, NULL),
	(4, 12, 1, '2018-04-15 00:24:12', '2018-04-15 00:24:12'),
	(5, 12, 2, '2018-04-15 00:24:12', '2018-04-15 00:24:12'),
	(6, 12, 3, '2018-04-15 00:24:12', '2018-04-15 00:24:12'),
	(7, 12, 5, '2018-04-15 00:24:12', '2018-04-15 00:24:12');
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;

-- 导出  表 laravel5.migrations 结构
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  laravel5.migrations 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_04_02_155516_create_articles_table', 1),
	(8, '2018_04_07_014418_add_intro_column_to_users', 2),
	(9, '2018_04_07_022039_add_published_at_to_articles', 2),
	(12, '2018_04_14_200052_create_table_tags', 3),
	(13, '2018_04_14_202340_create-article_tag-table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- 导出  表 laravel5.password_resets 结构
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  laravel5.password_resets 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- 导出  表 laravel5.tags 结构
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  laravel5.tags 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Java', '2018-04-14 22:59:11', '2018-04-14 23:02:23'),
	(2, 'Php', '2018-04-14 23:03:46', '2018-04-14 23:03:46'),
	(3, 'Python', '2018-04-14 23:04:13', '2018-04-14 23:04:13'),
	(4, 'C', '2018-04-14 23:04:31', '2018-04-14 23:04:31'),
	(5, 'C++', '2018-04-14 23:04:44', '2018-04-14 23:04:44');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- 导出  表 laravel5.users 结构
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  laravel5.users 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `intro`) VALUES
	(1, 'hncgc', 'hncgc@163.com', '$2y$10$naE8W0VmeZwW8ZirJe9tBOQuxofXPVK5MSTZwPfLkBISfY8cvDw4.', '6nsV52r99Vdg0PKBCEGzRmbyvJpqTQvk7jApQuINhxIZtlSuebmMvzfAKIz6', '2018-04-11 01:48:00', '2018-04-11 01:48:00', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
