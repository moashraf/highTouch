-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2018 at 12:22 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hightouchco_hightouchco`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `title`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Marcella Crooks', '1474300975cert1.jpg', '2018-04-12 15:11:59', '2018-04-16 15:04:42', '2018-04-16 15:04:42'),
(110, 'Treva Dooley', '1547455188WhatsApp Image 2018-04-16 at 6.jpeg', '2018-04-12 15:12:02', '2018-04-16 15:05:03', NULL),
(111, 'Ozella Auer DVM', '73286982WhatsApp Image 2018-04-16 at 6.jpeg', '2018-04-12 15:12:02', '2018-04-16 15:05:19', NULL),
(112, 'Dr. Rory O\'Reilly DDS', '1906978783WhatsApp Image 2018-04-16 at 6.jpeg', '2018-04-12 15:12:02', '2018-04-16 15:05:30', NULL),
(113, 'Courtney Grady', '1228508144WhatsApp Image 2018-04-16 at 6.jpeg', '2018-04-12 15:12:02', '2018-04-16 15:05:41', NULL),
(114, 'Prof. Leonel Gutkowski PhD', '1041749289WhatsApp Image 2018-04-16 at 6.jpeg', '2018-04-12 15:12:02', '2018-04-16 15:05:56', NULL),
(115, 'Frank Champlin', '167218005WhatsApp Image 2018-04-16 at 6.jpeg', '2018-04-12 15:12:02', '2018-04-16 15:06:07', NULL),
(116, 'Ima Wiza', '1474300975cert1.jpg', '2018-04-12 15:12:02', '2018-04-12 15:12:02', NULL),
(117, 'Dejuan Steuber V', '1474300975cert1.jpg', '2018-04-12 15:12:02', '2018-04-12 15:12:02', NULL),
(118, 'Nels Gleason', '1474300975cert1.jpg', '2018-04-12 15:12:02', '2018-04-12 15:12:02', NULL),
(119, 'عنوان', '1184540847cert1.jpg', '2018-05-02 06:21:23', '2018-05-02 06:22:52', '2018-05-02 06:22:52'),
(120, 'هنا عنوان', '434412359cert1.jpg', '2018-05-02 06:22:32', '2018-05-02 06:22:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates_a_rs`
--

CREATE TABLE `certificates_a_rs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates_a_rs`
--

INSERT INTO `certificates_a_rs` (`id`, `title`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ms. Magdalena Monahan', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(2, 'Miss Julia Konopelski', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(3, 'Dr. Tate Brakus DVM', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(4, 'Alvis Robel I', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(5, 'Kirstin Kunze', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(6, 'Dr. Jeremie Senger', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(7, 'Karl Yundt Sr.', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(8, 'Syble Nolan', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(9, 'Grover Lockman', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(10, 'Kenyon Schowalter', '6429046134.jpg', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_albums`
--

CREATE TABLE `gallery_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_albums`
--

INSERT INTO `gallery_albums` (`id`, `title`, `body`, `photo`, `cat_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jamar O\'Reilly', 'Delectus est quos asperiores placeat quibusdam laudantium ut. Provident dicta similique veritatis deserunt blanditiis dolorem ullam.', '1931197241IMG-20170404-WA0011.jpg', 11, '2018-04-12 15:15:22', '2018-04-16 13:56:51', NULL),
(2, 'Prof. Laverna Pagac Sr.', 'Sit molestiae voluptate architecto. Et ut aperiam in dignissimos suscipit. Reiciendis sequi modi nisi fugit velit modi. Quam labore nihil dignissimos tempore deserunt.', '140629099IMG-20170405-WA0021.jpg', 2, '2018-04-12 15:15:22', '2018-04-16 13:57:04', NULL),
(3, 'Noemi Gleichner', 'Rerum aliquam occaecati est. Accusamus rerum sequi natus dolores in nisi. Odio nulla sint dolor dolore aspernatur alias rerum. Et molestiae sed reprehenderit deserunt.', '610529837IMG_20171231_165109.jpg', 3, '2018-04-12 15:15:22', '2018-04-16 13:58:03', NULL),
(4, 'Melyna Champlin', 'Fugit totam ipsum quis voluptas porro dolores sed. Atque enim eligendi exercitationem in. Ullam atque rerum quo voluptates hic et. Commodi autem laudantium ab rerum reiciendis nihil enim.', '1662768394IMG-20161207-WA0017.jpg', 4, '2018-04-12 15:15:22', '2018-04-16 13:58:33', NULL),
(5, 'Ms. Ashleigh Leuschke II', 'Doloribus nihil beatae est facilis eveniet voluptatibus. Dolor sit similique ratione molestias. Vel eaque corrupti libero illo omnis.', '1102866959FB_IMG_1491257436197.jpg', 5, '2018-04-12 15:15:23', '2018-04-16 13:58:51', NULL),
(6, 'Mrs. Eulalia Friesen PhD', 'Consequatur qui vel cumque animi commodi. Impedit qui occaecati blanditiis qui quaerat voluptas quam. Harum dolor accusamus ipsam deleniti molestias et.', '1922692127FB_IMG_1491422194721.jpg', 6, '2018-04-12 15:15:23', '2018-04-16 13:59:02', NULL),
(7, 'Angelita Quigley Jr.', 'Non ad laborum nihil in. Dolor vel veritatis quia libero. Magnam nihil ipsam dolores sit aperiam aliquam rem sed.', '1495969360IMG_20180301_110459.jpg', 7, '2018-04-12 15:15:23', '2018-04-16 14:00:17', NULL),
(8, 'Nigel Heathcote', 'Enim voluptatem enim et impedit dolorem. Sed necessitatibus recusandae repudiandae iste.', '1508414326IMG-20170113-WA0039.jpg', 6, '2018-04-12 15:15:23', '2018-04-16 14:04:09', NULL),
(9, 'Mrs. Katrine Witting', 'Quos fugit blanditiis numquam asperiores consectetur qui facilis. Deleniti aut eos officiis aut. Est cum ea qui magnam est quo omnis.', '140873757020160622_183557.jpg', 7, '2018-04-12 15:15:23', '2018-04-16 14:06:44', NULL),
(10, 'Darian Walter', 'Voluptas aut fuga odio neque molestiae minus. Et non laborum enim excepturi eum adipisci nostrum id. Sit nihil totam ut nisi.', '1212328256FB_IMG_1498678430615.jpg', 4, '2018-04-12 15:15:23', '2018-04-16 14:05:29', NULL),
(11, 'heading meaning', 'Enim voluptatem enim et impedit dolorem. Sed necessitatibus recusandae repudiandae iste. ', '1380411015WhatsApp Image 2018-04-16 at 6.jpeg', 1, '2018-04-16 14:44:33', '2018-04-16 14:44:33', NULL),
(12, 'voluptatem', 'Enim voluptatem enim et impedit dolorem. Sed necessitatibus recusandae repudiandae iste.', '718111708WhatsApp Image 2018-04-16 at 6.jpeg', 1, '2018-04-16 15:03:15', '2018-04-16 15:03:15', NULL),
(13, 'necessitatibus', 'Enim voluptatem enim et impedit dolorem. Sed necessitatibus recusandae repudiandae iste.', '1002577791WhatsApp Image 2018-04-16 at 6.jpeg', 1, '2018-04-16 15:03:39', '2018-04-16 15:03:39', NULL),
(14, 'recusandae', 'Enim voluptatem enim et impedit dolorem. Sed necessitatibus recusandae repudiandae iste.', '301471499WhatsApp Image 2018-04-16 at 6.jpeg', 1, '2018-04-16 15:04:02', '2018-04-16 15:04:02', NULL),
(15, 'عنوان', 'تفاصيل', '33109107826567935alone_img.jpg', 4, '2018-05-02 06:42:18', '2018-05-02 06:45:03', '2018-05-02 06:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_albumsars`
--

CREATE TABLE `gallery_albumsars` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_albumsars`
--

INSERT INTO `gallery_albumsars` (`id`, `title`, `body`, `photo`, `cat_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mr. Kory McLaughlin', 'Soluta totam voluptate aspernatur voluptatem. Quae aliquid commodi necessitatibus minus beatae. Autem illo tempore officiis voluptatem illo nemo.', '6429046134.jpg', '2', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(2, 'Riley Koch', 'Ipsum quis vitae ipsam aut voluptatem facere. Aut laborum culpa consequatur molestias. Dolore alias aut voluptas debitis sint. Ea est in quo voluptas quas eos ipsum.', '6429046134.jpg', '4', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(3, 'Chaim Miller', 'Quia rem eius veritatis alias. Cupiditate ipsam quibusdam aliquid ut. Qui cumque itaque consequatur vero voluptatem et explicabo.', '6429046134.jpg', '4', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(4, 'Prof. Walter Pfeffer DDS', 'Est deserunt eaque eum quo aut sit. Quibusdam cupiditate ut quam molestias. Quibusdam aut beatae autem incidunt.', '6429046134.jpg', '9', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(5, 'Yvette Runolfsson', 'Sequi veniam repellendus asperiores quisquam et magni quos. Odio commodi qui sunt eos occaecati. Totam inventore quidem accusantium illo suscipit corrupti in.', '6429046134.jpg', '5', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(6, 'Justine Langosh', 'Nobis veniam corporis necessitatibus qui. Cum eos harum et vero voluptates quia. Dolore qui totam aperiam ut iure. Distinctio laudantium quia non nihil quo ipsam eaque.', '6429046134.jpg', '3', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(7, 'Savion Okuneva', 'Quia veniam nulla saepe iusto. Dicta quisquam incidunt quo quibusdam est deleniti amet. Exercitationem laborum quas a fuga quasi nobis.', '6429046134.jpg', '2', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(8, 'Gia Kuvalis', 'Tenetur ullam qui autem dolorem recusandae consequatur. Rerum adipisci quidem saepe exercitationem aut eveniet autem. Voluptatem unde quo officia aut. Deserunt et accusamus vel.', '6429046134.jpg', '10', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(9, 'Drake Blick Sr.', 'Facilis quas quo praesentium enim incidunt minima vel. Ut est dolores rerum ea suscipit. Qui ratione ut velit corrupti.', '6429046134.jpg', '5', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL),
(10, 'Vincent Conroy', 'Nostrum accusamus ab itaque ut. Quisquam fuga dolore ut. Saepe blanditiis et explicabo nobis earum atque molestias.', '6429046134.jpg', '4', '2018-04-12 15:15:22', '2018-04-12 15:15:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `title`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NewFloor Italy', 'Sint quo atque enim aperiam fugiat ut fugiat. Assumenda vero corporis voluptates eos consequatur ut. Autem occaecati voluptates iure officiis.', '2018-04-12 15:15:23', '2018-04-16 13:52:32', NULL),
(2, 'Perforated tiles', 'Ipsum saepe quia vitae rerum et. Fuga modi voluptatem repudiandae reiciendis et ipsum voluptatem illo. Facere ad deleniti aliquid natus.', '2018-04-12 15:15:23', '2018-04-16 13:52:46', NULL),
(3, 'HiFloor Accessories', 'Molestiae sit veniam sit. In dolores beatae illum tempora illo nihil et. Ad voluptas dolorem rem dicta ducimus quia quae.', '2018-04-12 15:15:23', '2018-04-16 13:52:54', NULL),
(4, 'PVC tape', 'Est quia perferendis consequuntur quod quibusdam. Repudiandae praesentium dignissimos a culpa quis quidem. Harum error earum vero sunt quam.', '2018-04-12 15:15:23', '2018-04-16 13:53:02', NULL),
(5, 'Installation methods', 'Autem et qui error vitae. Eum velit aut doloribus minima optio quia. Reprehenderit quidem et quo porro ut.', '2018-04-12 15:15:23', '2018-04-16 13:53:08', NULL),
(7, 'Our Galleries', 'Eum minus est placeat voluptas magnam quisquam vel. Et quia numquam dolorem consequatur sapiente et animi. At autem autem error earum sit et. Non repellat facilis est quos.', '2018-04-12 15:15:23', '2018-04-16 13:54:00', NULL),
(11, 'fghgf', 'hgfh', '2018-04-13 10:08:07', '2018-04-13 10:08:12', '2018-04-13 10:08:12'),
(12, 'HiFloor', 'HiFloor', '2018-04-16 13:52:16', '2018-04-16 13:52:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories_a_rs`
--

CREATE TABLE `gallery_categories_a_rs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories_a_rs`
--

INSERT INTO `gallery_categories_a_rs` (`id`, `title`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Cheyanne Considine', 'Fugiat veniam sed et soluta. Enim beatae ea est porro. At quas maxime molestiae explicabo.', '2018-04-12 15:15:23', '2018-04-12 15:15:23', NULL),
(7, 'Karianne Langworth', 'Non nulla pariatur ea minus. Voluptatibus error voluptatem necessitatibus perferendis nisi dignissimos ratione. Unde sint optio reprehenderit quaerat.', '2018-04-12 15:15:23', '2018-04-12 15:15:23', NULL),
(8, 'Marcellus Kihn', 'Sed qui quidem eos sed alias nisi rerum. Nam id ullam molestiae culpa. Eius deleniti est odit. Consequatur optio non harum facere suscipit quibusdam vel.', '2018-04-12 15:15:23', '2018-04-12 15:15:23', NULL),
(9, 'Camille Steuber', 'Ab repellat quia nulla architecto maxime qui sed. Tempora ad voluptas sed corporis adipisci dolorem.', '2018-04-12 15:15:23', '2018-04-12 15:15:23', NULL),
(10, 'Vaughn Langworth', 'Rerum molestias assumenda debitis fugiat. Ullam magnam facere est. Pariatur quisquam iste vitae incidunt.', '2018-04-12 15:15:23', '2018-04-12 15:15:23', NULL);

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2018_04_10_132957_create_sliders_table', 1),
(19, '2018_04_10_134213_create_stings_table', 1),
(20, '2018_04_10_134840_create_certificates_table', 1),
(21, '2018_04_10_135427_create_services_table', 1),
(22, '2018_04_10_135748_create_gallery_categories_table', 1),
(23, '2018_04_10_140056_create_gallery_albums_table', 1),
(24, '2018_04_10_150022_create_requests_table', 1),
(25, '2018_04_11_185100_create_certificates_a_rs_table', 1),
(26, '2018_04_11_185552_create_gallery_albumsars_table', 1),
(27, '2018_04_12_073945_create_gallery_categories_a_rs_table', 1),
(28, '2018_04_12_074209_create_services_a_rs_table', 1),
(29, '2018_04_12_074318_create_sliders_a_rs_table', 1),
(30, '2018_04_12_074607_create_settings_a_rs_table', 1);

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
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `message`, `tel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'figoashraf figoashraf', 'mapso@mapso.com', 'cfgtf', '01091357842', '2018-04-13 10:11:09', '2018-04-13 10:11:09', NULL),
(2, 'figoashraf figoashraf', 'mapso@mapso.com', 'cfgtf', '01091357842', '2018-04-13 10:14:52', '2018-04-13 10:14:52', NULL),
(3, 'figoashraf figoashraf', 'mapso@mapso.com', 'fssgyfh', '01091357842', '2018-04-13 10:15:24', '2018-04-13 10:15:24', NULL),
(4, 'figoashraf figoashraf', 'mapso@mapso.com', 'dtgerty', '01091357842', '2018-04-13 10:16:20', '2018-04-13 10:16:20', NULL),
(5, 'figoashraf figoashraf', 'mapso@mapso.com', 'dtgfdg', '01091357842', '2018-04-13 10:16:42', '2018-04-13 10:16:42', NULL),
(6, 'fgfdg', 'map00so@mapso.com', 'dfgfdg', 'fgdgfdgf', '2018-04-13 10:16:58', '2018-04-13 10:16:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `body`, `link`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Supply', 'HIGH TOUCH CO. was established in Egypt from 2010 as one of the Most Important Companies in the Field of Decoration in the Arab Republic of Egypt Especially the Field of Raised Floor. HIGH TOUCH CO. is One of the Most Competitive Companies in This Field Because of the Quality of Raw Materials', 'https://www.youtube.com/channel/UCnnq2BJkAcXd8QHz2XNauwQ', '1285619663826567935alone_img.jpg', '2018-04-12 15:15:23', '2018-05-02 06:26:13', NULL),
(2, 'Composition', 'HIGH TOUCH CO. was established in Egypt from 2010 as one of the Most Important Companies in the Field of Decoration in the Arab Republic of Egypt Especially the Field of Raised Floor. HIGH TOUCH CO. is One of the Most Competitive Companies in This Field Because of the Quality of Raw Materials', 'https://www.youtube.com/channel/UCnnq2BJkAcXd8QHz2XNauwQ', '826567935alone_img.jpg', '2018-04-12 15:15:23', '2018-04-16 13:49:46', NULL),
(3, 'Accessories', 'HIGH TOUCH CO. was established in Egypt from 2010 as one of the Most Important Companies in the Field of Decoration in the Arab Republic of Egypt Especially the Field of Raised Floor. HIGH TOUCH CO. is One of the Most Competitive Companies in This Field Because of the Quality of Raw Materials', 'https://www.youtube.com/channel/UCnnq2BJkAcXd8QHz2XNauwQ', '1279881997alone_img.jpg', '2018-04-12 15:15:23', '2018-04-16 13:50:18', NULL),
(4, 'Maintenance', 'HIGH TOUCH CO. was established in Egypt from 2010 as one of the Most Important Companies in the Field of Decoration in the Arab Republic of Egypt Especially the Field of Raised Floor. HIGH TOUCH CO. is One of the Most Competitive Companies in This Field Because of the Quality of Raw Materials', 'https://www.youtube.com/channel/UCnnq2BJkAcXd8QHz2XNauwQ', '2059539874alone_img.jpg', '2018-04-12 15:15:23', '2018-04-16 13:50:51', NULL),
(5, 'Frame', 'HIGH TOUCH CO. was established in Egypt from 2010 as one of the Most Important Companies in the Field of Decoration in the Arab Republic of Egypt Especially the Field of Raised Floor. HIGH TOUCH CO. is One of the Most Competitive Companies in This Field Because of the Quality of Raw Mat', 'https://www.youtube.com/channel/UCnnq2BJkAcXd8QHz2XNauwQ', '1398766536alone_img.jpg', '2018-04-12 15:15:23', '2018-04-16 13:51:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services_a_rs`
--

CREATE TABLE `services_a_rs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_a_rs`
--

INSERT INTO `services_a_rs` (`id`, `title`, `body`, `link`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Myrtle Balistreri V', 'Labore minus aliquam quis. Totam sint repellat in. Quia praesentium sit aspernatur fuga consequatur.', 'https://www.google.com.eg', '1031287606Untitled.png', '2018-04-12 15:15:23', '2018-04-13 10:09:50', '2018-04-13 10:09:50'),
(2, 'Guillermo Bashirian', 'Temporibus sint voluptas rerum architecto. Mollitia dicta eius odit sint rem et. Aspernatur nulla occaecati eligendi officiis quo totam ad nostrum.', 'https://www.google.com.eg', '6429046134.jpg', '2018-04-12 15:15:23', '2018-04-12 15:15:23', NULL),
(3, 'Amari Waelchi', 'Temporibus enim ab itaque itaque quia harum enim. Sit distinctio et doloribus sed voluptates iusto numquam. Dolor facilis dolor dicta nesciunt rerum. Mollitia minima error saepe sit harum.', 'https://www.google.com.eg', '6429046134.jpg', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(4, 'Nicolette Brakus', 'Ut unde quia nihil repudiandae porro vel consequatur. Laudantium ut iure velit consequatur omnis pariatur pariatur. Rerum nisi perspiciatis illum omnis voluptatem iusto.', 'https://www.google.com.eg', '6429046134.jpg', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(5, 'Hyman Douglas IV', 'Eum occaecati neque voluptas quia. A autem vel nam qui consequuntur et. Ullam autem aut voluptatem ea quas voluptatum ipsa voluptas. Ipsa est repellat est amet.', 'https://www.google.com.eg', '6429046134.jpg', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings_a_rs`
--

CREATE TABLE `settings_a_rs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings_a_rs`
--

INSERT INTO `settings_a_rs` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Web site name', '   هاي تاتش ', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(2, 'first phone', '01223393318', '2018-04-12 15:15:24', '2018-04-16 18:30:04', NULL),
(3, 'second phone', '01062929864', '2018-04-12 15:15:24', '2018-04-16 18:30:12', NULL),
(4, 'Mail', 'contact@highTouch.com', '2018-04-12 15:15:24', '2018-04-16 18:32:25', NULL),
(5, 'facebook', 'www.facebook.com/Hitouchco/?ref=br_rs', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(6, 'instagram', '#', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(7, 'twitter', '#', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(8, 'youtube', 'www.youtube.com/channel/UCnnq2BJkAcXd8QHz2XNauwQ', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(9, 'About Us', ' متخصص في تصنيع البسكويت السادة والويفر والمغطس والسندوتش عالي الجودة . مصنع بسكويت سوري متخصص في تصنيع البسكويت السادة والويفر والمغطس والسندوتش عالي الجودة .\r\n\r\n ', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(10, 'sub titles', 'من نحن', '2018-04-12 15:15:24', '2018-05-02 05:45:59', NULL),
(11, 'Location', 'شارع النقطة متفرع من شارع مؤسسة الذكاه . القاهره', '2018-04-12 15:15:24', '2018-04-16 18:31:35', NULL),
(12, 'working time', '  \r\nالمواعيد من 09:00 ص الي 05:00 م كل يوم ماعدا الجمعة  ', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `body`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'slider 1', 'Qui ipsa culpa id qua', '1080434215slide4.jpg', '2018-04-12 15:24:13', '2018-05-02 06:12:55', NULL),
(12, 'Orpha Wolff', 'Error sed molestias a qui ut suscipit iure. Nulla tenetur omnis ut ab est. Rerum aspernatur blanditiis sed aliquam architecto aut. Dolorem aut nisi temporibus libero.', '1007153850slide_2.jpg', '2018-04-12 15:24:13', '2018-04-15 13:50:04', NULL),
(13, 'Mr. Nathanial Lowe DVM', 'Cum optio dolor aperiam deserunt. Deleniti minus beatae omnis et qui.', '261865348slide_3.jpg', '2018-04-12 15:24:13', '2018-04-15 13:50:15', NULL),
(14, 'Fannie Predovic', 'Eaque odit sed sapiente beatae pariatur repellendus illo. Quo occaecati est illum labore perspiciatis qui ullam. Consequatur possimus quibusdam consectetur. Soluta officia fuga soluta ea.', '297062589slide_5.jpg', '2018-04-12 15:24:13', '2018-04-15 13:50:48', NULL),
(15, 'Cleve Crist', 'Beatae est rem nostrum. Sunt dolor atque esse velit expedita soluta. Unde aliquid nulla sed odio molestiae sint.', '264421030slide3.png', '2018-04-12 15:24:13', '2018-04-15 13:51:15', NULL),
(16, 'Crist', 'Beatae est rem nostrum. Sunt dolor atque esse velit expedita soluta. Unde aliquid nulla sed odio molestiae sint.', '2110425498slide4.jpg', '2018-04-13 09:50:49', '2018-04-15 13:51:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders_a_rs`
--

CREATE TABLE `sliders_a_rs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders_a_rs`
--

INSERT INTO `sliders_a_rs` (`id`, `title`, `body`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Prof. Eldon Luettgen', 'Ea sit corporis aliquam sed sit quia eligendi. Recusandae ut repudiandae hic aspernatur. Facilis reiciendis odio autem repudiandae maiores. Qui doloremque ut mollitia eaque nam.', '1189527129Untitled.png', '2018-04-12 15:15:25', '2018-04-13 10:09:24', '2018-04-13 10:09:24'),
(7, 'Markus Kozey', 'Sunt est id repudiandae repudiandae tenetur accusamus. Blanditiis voluptas fugit nemo voluptas voluptas qui. Officiis maxime molestiae alias qui molestias.', '6429046134.jpg', '2018-04-12 15:15:25', '2018-04-12 15:15:25', NULL),
(8, 'Prof. Jess Rowe', 'Ut odio neque sequi dolorum aut est at. Unde id aut et id. Quis nam sit deserunt repellendus perspiciatis ea.', '6429046134.jpg', '2018-04-12 15:15:25', '2018-04-12 15:15:25', NULL),
(9, 'Prof. Lura Murray V', 'Nihil alias voluptatem assumenda laudantium. Quia nam facere expedita similique molestiae voluptates iste eligendi. Deserunt maiores et qui laboriosam omnis et.', '6429046134.jpg', '2018-04-12 15:15:25', '2018-04-12 15:15:25', NULL),
(10, 'Dr. Monty Flatley', 'Fuga voluptatum enim autem ut. Illum nisi magni aspernatur. Odio ad dolor nam asperiores eveniet placeat molestiae. Ea cumque dolor cum recusandae.', '6429046134.jpg', '2018-04-12 15:15:25', '2018-04-12 15:15:25', NULL),
(11, 'عنوان', 'تفاصيل بالكامل يفضب ان تكون  من سطرين', '1484353577slide_5.jpg', '2018-05-02 06:18:00', '2018-05-02 06:18:37', '2018-05-02 06:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `stings`
--

CREATE TABLE `stings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stings`
--

INSERT INTO `stings` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Web site name', ' high Touch ', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(2, 'first phone', '01223393318', '2018-04-12 15:15:24', '2018-05-02 06:46:13', NULL),
(3, 'second phone', '01062929864', '2018-04-12 15:15:24', '2018-04-15 13:42:17', NULL),
(4, 'Mail', 'contact@highTouch.com', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(5, 'facebook', 'www.facebook.com/Hitouchco/?ref=br_rs', '2018-04-12 15:15:24', '2018-04-15 13:47:46', NULL),
(6, 'instagram', '#', '2018-04-12 15:15:24', '2018-04-17 08:00:01', NULL),
(7, 'twitter', '#', '2018-04-12 15:15:24', '2018-04-17 07:57:56', NULL),
(8, 'youtube', 'www.youtube.com/channel/UCnnq2BJkAcXd8QHz2XNauwQ', '2018-04-12 15:15:24', '2018-04-15 13:48:23', NULL),
(9, 'About Us', 'HIGH TOUCH CO. was established in Egypt from 2010 as one of the Most Important Companies in the Field of Decoration in the Arab Republic of Egypt Especially the Field of Raised Floor.', '2018-04-12 15:15:24', '2018-04-15 14:01:22', NULL),
(10, 'sub titles', '  Get In Touch', '2018-04-12 15:15:24', '2018-04-12 15:15:24', NULL),
(11, 'Location', 'شارع النقطة متفرع من شارع مؤسسة الزكاه. القاهره', '2018-04-12 15:15:24', '2018-05-02 05:23:24', NULL),
(12, 'working time', 'المواعيد من 08:00 ص الي 05:00 م كل يوم ماعدا الجمعة', '2018-04-12 15:15:24', '2018-05-02 06:47:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'highTouch', 'highTouch@gmail.com', '$2y$10$pZ48CN9YEMcP33BNhm4Jx.LsQwfMWuZuZbFsRQYZuYriVGw/kQ.7y', 'DFvNirdBwE0KjXhL5T45zJcTDy71ya9ntNy6Av2cn7zG0Cx1wYMh5jWNt9Ab', '2018-04-12 15:24:18', '2018-04-12 15:24:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates_a_rs`
--
ALTER TABLE `certificates_a_rs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_albumsars`
--
ALTER TABLE `gallery_albumsars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories_a_rs`
--
ALTER TABLE `gallery_categories_a_rs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_a_rs`
--
ALTER TABLE `services_a_rs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_a_rs`
--
ALTER TABLE `settings_a_rs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders_a_rs`
--
ALTER TABLE `sliders_a_rs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stings`
--
ALTER TABLE `stings`
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
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `certificates_a_rs`
--
ALTER TABLE `certificates_a_rs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gallery_albumsars`
--
ALTER TABLE `gallery_albumsars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery_categories_a_rs`
--
ALTER TABLE `gallery_categories_a_rs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services_a_rs`
--
ALTER TABLE `services_a_rs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings_a_rs`
--
ALTER TABLE `settings_a_rs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sliders_a_rs`
--
ALTER TABLE `sliders_a_rs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stings`
--
ALTER TABLE `stings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
