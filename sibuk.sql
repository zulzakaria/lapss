-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table lapss.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapss.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table lapss.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapss.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_03_21_020600_create_teachers', 2),
	(5, '2020_05_13_031354_create_screenshoots_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table lapss.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapss.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table lapss.screenshoots
CREATE TABLE IF NOT EXISTS `screenshoots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapss.screenshoots: ~0 rows (approximately)
/*!40000 ALTER TABLE `screenshoots` DISABLE KEYS */;
/*!40000 ALTER TABLE `screenshoots` ENABLE KEYS */;

-- Dumping structure for table lapss.teachers
CREATE TABLE IF NOT EXISTS `teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nourut` smallint(6) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapss.teachers: ~100 rows (approximately)
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` (`id`, `nourut`, `nama`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Hi. Sumitro K. Panto, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(2, 2, 'Hj. Rosnawati Pulubuhu', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(3, 3, 'Dra. Hj. Rahmawati Tuli, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(4, 4, 'Saira Yusuf Djoli,S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(5, 5, 'Drs. Umar Ismail', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(6, 6, 'Emus Duka Dukalang, M. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(7, 7, 'Dra. Pariah Supar', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(8, 8, 'Sudjono Banteng, M. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(9, 9, 'Tri Murti Kadir, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(10, 10, 'Dra.Hj. Hasnawaty Djamil', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(11, 11, 'Dra. Helmi', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(12, 12, 'Nurhasana R.A Dhanupoyo, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(13, 13, 'Femmy Abdullah, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(14, 14, 'Dra. Hj. Sitti Patimah A. Bunsal', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(15, 15, 'Anita Talipi, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(16, 16, 'Hesty Dian Sony Sabihi, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(17, 17, 'Lien Isa Tolohula, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(18, 18, 'Dra. Hj.Nirmawati  Sidiki, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(19, 19, ' Dra. Irenawati Rahman', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(20, 20, 'Dra. Nangsi Ismail', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(21, 21, 'Drs. Abd. Wahid Mohidin, M. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(22, 22, 'Dra. Hapsa Dukalang', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(23, 23, 'Drs. H. Danial  D. Marjan', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(24, 24, 'Nizma Dengo, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(25, 25, 'Melis Daenunu,S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(26, 26, 'Alti Ishak, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(27, 27, 'Drs. Voni Nohu, M. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(28, 28, 'Dra. Hj. Dewi Astuti, M.Si', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(29, 29, 'Dra. Hj. Nikmawaty T. Ishak, M. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(30, 30, 'Dra. Suwarni Maloto, M. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(31, 31, 'Sry Yuningsih Sy. Kai, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(32, 32, 'Rimawaty Pulubuhu, M.Pdi', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(33, 33, 'Leny, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(34, 34, 'Dra. Nurtina Inaku', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(35, 35, 'Indrawati, S.Kom', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(36, 36, 'Hermin Ekawati, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(37, 37, 'Hadijah Y. Joli, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(38, 38, 'Abd. Kadir Hatlah, S. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(39, 39, 'Mahmud Ahaya, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(40, 40, 'Zulkarnain Zakaria, S.Kom', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(41, 41, 'Nikma Abdullah, S. Pd, M.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(42, 42, 'Juliana Erawati, S. Pd, M. Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(43, 43, 'Moh. Nursalman Puluhawa,S.Ag', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(44, 44, 'Irvandy M. Ngau, S. Kom', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(45, 45, ' Hendra Wijaya Isa, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(46, 46, 'Dra. Rusni Hs. Alie', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(47, 47, 'Sri Hartati Dukalang', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(48, 48, 'Susri Sipasi, S,Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(49, 49, 'Drs. Rahman Hasan Uno', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(50, 50, 'Nuning Anggreani Dangkua, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(51, 51, 'Rakhmat Akbar Zulkarnain, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(52, 52, 'Verawaty Abdul, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(53, 53, 'Elvina K. Mahmud, S.Kom', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(54, 54, 'Agistris Husain', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(55, 55, 'Wiwin Walangadi, S.Ag', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(56, 56, 'Supadmo, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(57, 57, 'Irmawati Hajarati, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(58, 58, 'Tomy Mooduto, S.Kom', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(59, 59, 'Yayut Amelia Dama, S.Kom', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(60, 60, 'Hadijah D. Rauf, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(61, 61, 'Herman Harun, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(62, 62, 'Lidya Rismaya Ayu, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(63, 63, 'Mohammad Syafrie Botutihe, S.Pd', 'PNS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(64, 64, 'Royanti Hasiru, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(65, 65, 'Mohamad Rizky Mohi, S.Kom', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(66, 66, 'Moh. Idham Latief, S.Kom', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(67, 67, 'Vicki Apriyanto Uno, S.Kom', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(68, 68, 'Muh. Firmansyah, S.Kom', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(69, 69, 'Ridwan Ali, S.TP', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(70, 70, 'Hasni Supu, S.TP', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(71, 71, 'Nurnaningsih A. Ngadi, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(72, 72, 'Sintia Ahmad, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(73, 73, 'Syarifuddin, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(74, 74, 'Nurain Kasim, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(75, 75, 'Fidi Astuti Moha, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(76, 76, 'Yopi Dukalang, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(77, 77, 'Jantie Hartini Najoan, S.E', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(78, 78, 'Trimoko Paijo, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(79, 79, 'Amrin Panigoro, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(80, 80, 'Moh. Sutrisno Uwade, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(81, 81, 'Rizal Husain, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(82, 82, 'Muhammad Tasdiq, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(83, 83, 'Yanto Djailani, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(84, 84, 'Hadijah N. Ali, S.Pd', 'GTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(85, 85, 'Mutmainnah Ibrahim, S.E', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(86, 86, 'Anita Todano, S.M', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(87, 87, 'Mein Darwin Ishak', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(88, 88, 'Lasmin Mopangga, S.E', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(89, 89, 'Friskawaty Wonggole', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(90, 90, 'Liska Erika Hasan', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(91, 91, 'Sri Yeyen Pembengo', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(92, 92, 'Ariyati Tilome, A.Ma.Pust', 'PTT', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(93, 93, 'Rosmin Ibrahim', 'CS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(94, 94, 'Titin Mallu', 'CS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(95, 95, 'Indriati Kaaba', 'TKS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(96, 96, 'Juwita Mohamad', 'TKS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(97, 97, 'Saleh A. Malopo', 'TKS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(98, 98, 'Ismail Dako', 'TKS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(99, 99, 'Riyanto Husain', 'TKS', '2020-05-13 02:56:38', '2020-05-13 02:56:38'),
	(100, 100, 'Muh. Rivaldy Dunggio', 'TKS', '2020-05-13 02:56:38', '2020-05-13 02:56:38');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;

-- Dumping structure for table lapss.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapss.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'admin@smkn1limboto.sch.id', NULL, '$2y$10$CJd6Xuxivvs.8yw2ij/HiODQnZijc6pwF4bBD5F2Y/DSpeJQomYti', NULL, NULL, '2020-05-13 11:35:30', '2020-05-13 11:35:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
