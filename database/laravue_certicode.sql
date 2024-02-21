-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 10:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravue_certicode`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seminar_id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `seminar_id`, `logo`, `description`, `issuer`, `created_at`, `updated_at`) VALUES
(1, 9, 'https://via.placeholder.com/100x100.png/001133?text=logo+et', 'Repudiandae dolores dolorem hic aliquam in enim aspernatur eligendi nemo placeat voluptas eum incidunt qui et aliquid sunt hic temporibus tempore aliquid accusamus voluptatum in dolor perferendis consectetur eius rerum minima assumenda enim et magnam dolorem eveniet praesentium ipsam non qui voluptatibus facere ipsum.', 'Yasmine O\'Connell', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(2, 1, 'https://via.placeholder.com/100x100.png/00ffbb?text=logo+cumque', 'Incidunt rerum tempora dolorem quos non qui similique iste cumque fugit doloribus laboriosam ut omnis rem aut eligendi dolorum ipsum praesentium est eum voluptatem voluptatibus aliquam vitae tempora non ut doloribus quidem vel hic aut ea libero vitae consectetur sunt et laboriosam ducimus ut commodi vel molestiae minima nulla.', 'Nettie Considine Sr.', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(3, 5, 'https://via.placeholder.com/100x100.png/00ff11?text=logo+nam', 'Molestiae qui quidem molestias debitis et tenetur doloribus impedit saepe rem consequatur accusantium illo est consectetur illo minus perspiciatis veniam omnis quaerat atque eius velit est laboriosam ab ut et impedit culpa ut consequatur.', 'Deangelo Schultz III', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(4, 5, 'https://via.placeholder.com/100x100.png/00ddff?text=logo+aut', 'Repudiandae ea consequatur vitae qui incidunt sapiente architecto excepturi quia quod officia voluptas autem totam eum temporibus omnis reiciendis in iure neque enim aut est itaque eos consectetur et quos nulla quos fugiat molestias nostrum autem similique et rem non quia sunt libero ut corrupti aut nihil ab veniam aut non perferendis voluptas non omnis cumque voluptatibus voluptatem sequi error eum dicta ut minima accusamus id cupiditate expedita reiciendis rerum.', 'Abbey Kemmer', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(5, 9, 'https://via.placeholder.com/100x100.png/006611?text=logo+molestiae', 'Voluptatum dolores corporis sint unde provident sed qui et magni repudiandae quam cumque architecto nisi nulla ut quia neque eaque qui dolore laborum qui et eos id facilis consequatur incidunt aspernatur sit sit placeat voluptatem quo sit quo ratione eveniet doloribus doloribus ut voluptate rem corrupti fuga eum mollitia molestiae nobis explicabo tenetur ad aut velit vel reprehenderit beatae sit et et corporis enim facilis quia necessitatibus soluta quam autem.', 'Prof. Ines Bashirian', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(6, 8, 'https://via.placeholder.com/100x100.png/004455?text=logo+eos', 'Aliquid laboriosam numquam laborum numquam fugit voluptatem facilis repudiandae aliquam aut adipisci ea cum non doloremque harum incidunt distinctio non labore vel est assumenda et a aut quia quae et perspiciatis velit delectus quae totam saepe maiores qui vel officiis accusantium delectus occaecati iste error enim sapiente nostrum laudantium totam ut veniam labore tenetur voluptatum sint aperiam cum labore.', 'Toby Rolfson', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(7, 9, 'https://via.placeholder.com/100x100.png/00cc55?text=logo+animi', 'Omnis tempora ut quia officia libero repellendus fugit neque sunt sequi et delectus consectetur sit numquam et nam harum corporis illo rerum cupiditate nesciunt eos omnis dolor esse ab quia omnis deserunt ullam atque aliquam nobis odit quaerat exercitationem doloribus blanditiis sint voluptatem voluptas consequatur dolore totam a deleniti incidunt.', 'Colleen Turcotte', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(8, 7, 'https://via.placeholder.com/100x100.png/00dd11?text=logo+quibusdam', 'A voluptatem veniam sit ullam sed nisi qui rerum aspernatur veritatis natus sapiente fugiat dicta officiis et quisquam quis sapiente consequatur est qui fugit sit aperiam cum voluptatem nemo fugiat possimus totam non quas ducimus neque accusamus accusamus a minima autem possimus sed maiores voluptas quis accusamus aut minus laudantium eum sint dolor.', 'Kaden Pacocha', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(9, 1, 'https://via.placeholder.com/100x100.png/008888?text=logo+dolor', 'Qui est aut quam sunt in possimus impedit et voluptates quasi consequuntur id ea quae voluptas dolore non reiciendis repudiandae magnam cum quia quasi ut aliquam adipisci dolores aut odio sunt beatae eos velit voluptatum modi aspernatur nemo quia ea ut rem quod adipisci odit tenetur omnis voluptas qui dolore rerum culpa debitis voluptatem id sunt quia eaque pariatur magni eaque consequatur.', 'Tia Goodwin', '2024-02-21 01:20:15', '2024-02-21 01:20:15'),
(10, 9, 'https://via.placeholder.com/100x100.png/00aa66?text=logo+aut', 'Sit qui dolor molestias vero sequi fugiat maiores eos sint fugit dolorem quia occaecati fugit quia in quasi unde expedita vel et nam veritatis ab maiores aperiam laboriosam praesentium itaque debitis neque quia.', 'Cielo Ratke PhD', '2024-02-21 01:20:15', '2024-02-21 01:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(45, '2019_08_19_000000_create_failed_jobs_table', 1),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(47, '2024_02_21_040336_create_seminars_table', 1),
(48, '2024_02_21_040421_create_certificates_table', 1),
(49, '2024_02_21_040609_create_participants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seminar_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `has_attended` tinyint(1) NOT NULL DEFAULT 0,
  `certificate_sent` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `seminar_id`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `school`, `has_attended`, `certificate_sent`, `created_at`, `updated_at`) VALUES
(101, 4, 'Chelsey', 'Declan', 'Thompson', 'male', 'adriana.paucek@example.net', 'Bednar-Oberbrunner', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(102, 1, 'Tillman', 'Lora', 'Moore', 'female', 'nbahringer@example.com', 'Pollich, Steuber and Cruickshank', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(103, 1, 'Electa', 'Hector', 'Konopelski', 'male', 'moriah.murphy@example.org', 'Koepp-Koss', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(104, 7, 'Agustin', 'Rosanna', 'Bartoletti', 'male', 'xmertz@example.com', 'Gerhold, Heathcote and Champlin', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(105, 4, 'Jacinthe', 'Raphaelle', 'Beatty', 'male', 'melany06@example.com', 'Legros, Leannon and Hermiston', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(106, 8, 'Dayna', 'Devyn', 'Herman', 'male', 'rhilpert@example.net', 'Leuschke-Heathcote', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(107, 7, 'Dee', 'Lempi', 'Beatty', 'male', 'grady.jimmie@example.net', 'Osinski Ltd', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(108, 8, 'Ellen', 'Alison', 'Monahan', 'male', 'ycrist@example.net', 'Casper-Mueller', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(109, 7, 'Jeffery', 'Katelin', 'Denesik', 'male', 'rodolfo41@example.org', 'Block Group', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(110, 6, 'Jaylin', 'Ally', 'Reynolds', 'female', 'tomasa.gutkowski@example.com', 'Hodkiewicz, Gleason and Haley', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(111, 7, 'Christina', 'Braeden', 'Hayes', 'male', 'genoveva69@example.net', 'Conroy-Gottlieb', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(112, 6, 'Vickie', 'Deshaun', 'Mante', 'male', 'lolita02@example.com', 'Jast and Sons', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(113, 5, 'Delphine', 'Bridget', 'Carter', 'female', 'mable91@example.net', 'Hauck, Abshire and Rogahn', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(114, 3, 'Katelynn', 'Leilani', 'Littel', 'female', 'qyundt@example.org', 'Gislason Group', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(115, 1, 'Freddy', 'Henderson', 'Jenkins', 'female', 'goodwin.abbie@example.org', 'Ledner-O\'Connell', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(116, 2, 'Pierre', 'Delphine', 'Mosciski', 'female', 'kschultz@example.net', 'Ebert, Koepp and Hansen', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(117, 4, 'Alexandria', 'Sam', 'Kunze', 'female', 'gaston.paucek@example.com', 'Rogahn-McLaughlin', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(118, 1, 'Chanelle', 'Madelynn', 'Walsh', 'female', 'sipes.jade@example.org', 'Gleichner-Ledner', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(119, 8, 'Elton', 'Mariane', 'Rath', 'female', 'mante.francisco@example.net', 'Keeling-Ferry', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(120, 5, 'Heather', 'Brando', 'Hermiston', 'female', 'tyrese37@example.com', 'Harvey and Sons', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(121, 4, 'Bobby', 'Tamara', 'Feest', 'male', 'yasmeen.hermann@example.net', 'Berge-Schroeder', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(122, 6, 'Joaquin', 'Laila', 'Crist', 'female', 'muriel49@example.net', 'Bergstrom, Mills and Olson', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(123, 5, 'Nathanial', 'Laurence', 'Jakubowski', 'male', 'jones.juvenal@example.com', 'Grimes Group', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(124, 10, 'Jayme', 'Aniya', 'Stanton', 'female', 'kristopher.paucek@example.com', 'Raynor LLC', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(125, 7, 'Imelda', 'Greyson', 'Tremblay', 'male', 'igottlieb@example.com', 'VonRueden, Spencer and Kerluke', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(126, 3, 'Freda', 'Mazie', 'Bergnaum', 'male', 'mathilde.hermiston@example.net', 'Eichmann, Schuster and Herman', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(127, 6, 'Dax', 'Wilma', 'Langosh', 'male', 'gulgowski.jay@example.net', 'Homenick LLC', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(128, 2, 'Forrest', 'Dion', 'Spinka', 'male', 'tstokes@example.net', 'Kub, Ruecker and Olson', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(129, 9, 'Ethelyn', 'Frieda', 'Williamson', 'female', 'brisa53@example.org', 'Klocko Group', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(130, 6, 'Else', 'Maye', 'Ziemann', 'female', 'jacobs.joany@example.org', 'Hane LLC', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(131, 9, 'Damaris', 'Melissa', 'Casper', 'male', 'considine.kaya@example.net', 'Grant, Little and Price', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(132, 6, 'Keara', 'Abigail', 'Satterfield', 'female', 'johnson.dortha@example.net', 'Grimes PLC', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(133, 5, 'Eugene', 'Bulah', 'Bashirian', 'female', 'reichel.jeff@example.net', 'Swift, Johns and Gutmann', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(134, 8, 'Nicole', 'Juston', 'Dach', 'female', 'ferry.arvel@example.org', 'Prohaska Inc', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(135, 4, 'Roma', 'Aida', 'Wisoky', 'male', 'jackeline.swift@example.net', 'D\'Amore-Erdman', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(136, 9, 'Damian', 'Elissa', 'Donnelly', 'male', 'bosco.tanya@example.com', 'Kessler-Price', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(137, 7, 'Odessa', 'Emma', 'Reinger', 'female', 'loma.sauer@example.org', 'Koss, Hettinger and DuBuque', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(138, 7, 'Yadira', 'Tyshawn', 'Anderson', 'male', 'florida77@example.net', 'Hammes, Von and Hills', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(139, 6, 'Abigail', 'Laury', 'Schmidt', 'male', 'schumm.georgette@example.com', 'Block, Champlin and Cummings', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(140, 3, 'Jane', 'Leann', 'Brown', 'male', 'schmitt.alanis@example.net', 'Wisozk-Kovacek', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(141, 10, 'Ahmed', 'Eula', 'Murphy', 'male', 'tyshawn.kuphal@example.org', 'Jacobs, Brekke and Yundt', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(142, 8, 'Kane', 'Virginia', 'Dickinson', 'male', 'ziemann.henriette@example.org', 'Brekke-Hayes', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(143, 5, 'Kennedy', 'Adonis', 'Morar', 'male', 'stephen.padberg@example.com', 'Oberbrunner-Steuber', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(144, 7, 'Yasmin', 'Camden', 'Satterfield', 'male', 'keeling.broderick@example.com', 'Prohaska PLC', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(145, 10, 'Liza', 'Hiram', 'Kirlin', 'female', 'yost.madison@example.org', 'Schultz Inc', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(146, 10, 'Marshall', 'Horace', 'Williamson', 'female', 'merlin.jerde@example.com', 'Bergstrom PLC', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(147, 9, 'Cassidy', 'Geovanni', 'Gislason', 'female', 'sierra.wolff@example.net', 'Hyatt-West', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(148, 4, 'Flossie', 'Sasha', 'Schaefer', 'male', 'giovanna.purdy@example.org', 'Lind PLC', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(149, 6, 'Chanelle', 'Yolanda', 'Windler', 'female', 'bergstrom.meggie@example.org', 'Lebsack-Boehm', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(150, 5, 'Elisabeth', 'Lelia', 'Ratke', 'male', 'bstrosin@example.com', 'Stanton Group', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(151, 9, 'Hassie', 'Marquis', 'Heaney', 'female', 'legros.misael@example.org', 'Wisozk LLC', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(152, 4, 'Daija', 'Darion', 'McCullough', 'female', 'megane84@example.org', 'Parisian Group', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(153, 10, 'Stuart', 'Dewitt', 'Ortiz', 'male', 'zschmidt@example.net', 'Macejkovic Ltd', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(154, 8, 'Jed', 'Colby', 'Zboncak', 'female', 'mueller.rosamond@example.com', 'O\'Kon, Metz and Lindgren', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(155, 7, 'Kianna', 'Sabryna', 'Collins', 'male', 'qstamm@example.net', 'Reichert-Grant', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(156, 4, 'Vilma', 'Deangelo', 'Tremblay', 'male', 'hettie29@example.net', 'Herman Ltd', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(157, 2, 'Winston', 'Lexie', 'Bosco', 'female', 'armando77@example.org', 'McKenzie-Grimes', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(158, 2, 'Kendall', 'Ansley', 'Collier', 'male', 'lesch.fiona@example.net', 'Koepp-Weimann', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(159, 6, 'Ferne', 'Amber', 'Kreiger', 'female', 'reichel.sheldon@example.org', 'Stanton, Olson and Corkery', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(160, 1, 'Gisselle', 'Kaycee', 'Gusikowski', 'male', 'murl.littel@example.net', 'Hintz Inc', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(161, 7, 'Corbin', 'Erling', 'Wunsch', 'male', 'champlin.frederique@example.org', 'Kris, Hilpert and Crona', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(162, 4, 'Jaden', 'Carey', 'Rohan', 'male', 'qbosco@example.net', 'Towne-Schaefer', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(163, 4, 'Montana', 'Cruz', 'Kertzmann', 'male', 'kryan@example.net', 'Marks, McClure and Little', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(164, 9, 'Alice', 'Jonathan', 'Kub', 'male', 'joanie.runolfsdottir@example.com', 'Barrows Inc', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(165, 10, 'Zoe', 'Tressa', 'Ratke', 'male', 'gust86@example.com', 'Bergnaum PLC', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(166, 6, 'Rahul', 'Alberto', 'Huel', 'female', 'ocarroll@example.org', 'Bashirian Ltd', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(167, 9, 'Hipolito', 'Michele', 'Conroy', 'female', 'bridget.schaefer@example.net', 'Harvey-Mayer', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(168, 10, 'Jessy', 'Estefania', 'Haag', 'female', 'kasey.effertz@example.net', 'Pollich and Sons', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(169, 6, 'Ransom', 'Cara', 'Pouros', 'female', 'mathias73@example.org', 'Moore LLC', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(170, 6, 'Nolan', 'Oma', 'Moore', 'male', 'rlueilwitz@example.com', 'Goldner, Berge and Cassin', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(171, 10, 'Reanna', 'Frances', 'O\'Kon', 'male', 'vernie.cronin@example.com', 'Schinner Group', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(172, 3, 'Rachelle', 'Theron', 'Lueilwitz', 'male', 'pherzog@example.net', 'Cartwright-O\'Conner', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(173, 1, 'Abby', 'Russ', 'Littel', 'male', 'april.wiegand@example.net', 'Rolfson-Ziemann', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(174, 9, 'Destini', 'Jasen', 'Hickle', 'male', 'maynard.schimmel@example.net', 'Hammes Inc', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(175, 5, 'Alek', 'Bernardo', 'Dickens', 'male', 'yundt.sterling@example.com', 'Bode, Waelchi and Auer', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(176, 2, 'Romaine', 'Emerson', 'Frami', 'male', 'rogahn.genevieve@example.net', 'Schulist and Sons', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(177, 9, 'Brigitte', 'Jaron', 'Lindgren', 'male', 'leonie72@example.org', 'Labadie-Schowalter', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(178, 9, 'Sid', 'Lauren', 'Metz', 'male', 'curt.bogisich@example.org', 'Pollich, Oberbrunner and Harber', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(179, 9, 'Lelia', 'Rod', 'Wehner', 'male', 'gilda.rau@example.net', 'Gleason, Oberbrunner and Conn', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(180, 4, 'Marcella', 'Priscilla', 'Zieme', 'female', 'lysanne36@example.com', 'Waters-Rowe', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(181, 3, 'Shanelle', 'Hector', 'Barrows', 'female', 'ncummerata@example.net', 'Fadel Ltd', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(182, 10, 'Pansy', 'Rosamond', 'Kreiger', 'male', 'vhermann@example.org', 'Wilderman, Lang and Kunde', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(183, 8, 'Helena', 'Cristobal', 'White', 'male', 'crawford.mckenzie@example.org', 'Toy Inc', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(184, 6, 'Kristy', 'Demond', 'Ferry', 'male', 'lrenner@example.org', 'Lakin, Pacocha and Kuhlman', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(185, 3, 'Jammie', 'Reginald', 'Maggio', 'male', 'prosacco.alivia@example.com', 'Sawayn, Sauer and Larson', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(186, 4, 'Nya', 'Clarabelle', 'Mills', 'male', 'roberts.franco@example.com', 'Ziemann LLC', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(187, 10, 'Isom', 'Madilyn', 'Johns', 'female', 'aleen.ziemann@example.com', 'Jenkins-Rosenbaum', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(188, 10, 'Davion', 'Palma', 'Morar', 'female', 'crona.augustus@example.com', 'Rosenbaum-Frami', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(189, 1, 'Kris', 'Reynold', 'Funk', 'female', 'jkeebler@example.net', 'Hyatt, Krajcik and Paucek', 0, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(190, 3, 'Shad', 'Alejandra', 'Glover', 'male', 'schulist.daphney@example.org', 'Prohaska, Macejkovic and Lakin', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(191, 7, 'Emory', 'Lori', 'Cummerata', 'female', 'rempel.hosea@example.net', 'Tromp, Rogahn and Rice', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(192, 3, 'Arlie', 'Patricia', 'Crona', 'male', 'boyd11@example.net', 'Keeling, McKenzie and Moore', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(193, 2, 'Darion', 'Josephine', 'Kozey', 'female', 'nayeli.cronin@example.org', 'Veum, Kilback and Hermann', 0, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(194, 6, 'Wilfred', 'Tierra', 'Price', 'female', 'cremin.lemuel@example.com', 'Heidenreich LLC', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(195, 8, 'Marianna', 'Alford', 'Pagac', 'female', 'kutch.audra@example.org', 'Schinner-Roberts', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(196, 1, 'Tomas', 'Reyes', 'Hammes', 'male', 'arlo58@example.org', 'Towne-Langosh', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(197, 10, 'Virginie', 'Raphaelle', 'Romaguera', 'male', 'dominic.frami@example.org', 'Ziemann, Jacobson and Predovic', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(198, 7, 'Zula', 'Amelia', 'Hickle', 'male', 'eddie02@example.org', 'Hyatt-Kuhic', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(199, 6, 'Geraldine', 'Tiffany', 'Casper', 'male', 'rosie33@example.org', 'Hayes LLC', 1, 0, '2024-02-21 01:23:13', '2024-02-21 01:23:13'),
(200, 6, 'Ernestina', 'Weston', 'Kuhlman', 'male', 'fabiola.mertz@example.org', 'Ortiz, Mann and Gottlieb', 1, 1, '2024-02-21 01:23:13', '2024-02-21 01:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `seminars`
--

CREATE TABLE `seminars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `about_this_seminar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seminars`
--

INSERT INTO `seminars` (`id`, `topic`, `speaker`, `about_this_seminar`, `created_at`, `updated_at`) VALUES
(1, 'Rerum molestiae aut eum delectus unde similique laudantium iure sed placeat eos.', 'Roselyn Berge DVM', 'Ut recusandae ut omnis dolor modi ut temporibus consequatur cupiditate magni et quam sed omnis dignissimos in explicabo voluptatum provident non voluptatem exercitationem est veniam blanditiis ut tenetur ad magnam minima quos non incidunt est dolorum ipsam non vero dolorem omnis sit odio sed et beatae laborum qui accusantium a.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(2, 'Voluptas inventore blanditiis est quisquam a est expedita quam nihil vel qui.', 'Dr. Lionel Mosciski', 'Ducimus tenetur sed asperiores in velit ullam ut porro vitae nobis tempora est consequatur dolorem nemo qui est possimus quibusdam rerum illo error asperiores enim repellat quia ipsam porro rerum iste in dolores recusandae quisquam accusamus omnis aliquam tempora consequuntur nihil aliquid qui minus rerum fuga possimus deleniti.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(3, 'Autem ea non architecto ducimus architecto minus quo error sapiente voluptatem.', 'Prof. Alyson Ziemann PhD', 'Nulla libero atque voluptas eos neque et sunt ipsam tenetur facere adipisci est et doloremque autem voluptate minus adipisci aut quia unde quisquam aut est voluptate molestiae sapiente ea id vel et a exercitationem delectus impedit inventore.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(4, 'Consequuntur atque tempore sit corrupti deleniti ut vel cupiditate laudantium laboriosam architecto.', 'Helene Gusikowski', 'Accusamus nulla dolor inventore harum sed eos rerum alias aut deserunt explicabo reiciendis optio in excepturi voluptatum autem aperiam porro nobis consectetur aliquam quasi ducimus voluptas perferendis sint et quidem nesciunt earum et reiciendis praesentium rerum vel eum est molestias quo pariatur.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(5, 'Pariatur qui magnam quis vitae quibusdam magnam.', 'Emerson Kessler', 'Est sed placeat dolorem debitis quia necessitatibus tempora sed ipsam ducimus voluptatem quidem sapiente animi sapiente vero ut accusamus dignissimos non laborum incidunt quia ipsa molestiae est illo sit vitae ipsum tempore similique perferendis qui velit necessitatibus in ut rerum ratione ut quae id voluptas ut vitae reiciendis et illo eum iure ut rem reprehenderit nostrum doloribus.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(6, 'Dicta perferendis ratione aut cumque ratione ea.', 'Dr. Jessika Moen DDS', 'Modi architecto vitae ipsum qui atque quia libero incidunt quia voluptates facilis neque incidunt ut voluptas laudantium et maiores reprehenderit enim sit ut nemo explicabo recusandae at ad quia animi omnis quis aut consequuntur quaerat voluptas corporis beatae molestiae ut eius unde dolor doloribus et architecto molestiae quam.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(7, 'Nulla enim saepe amet necessitatibus neque fuga repellendus doloribus tempora dolores mollitia soluta.', 'Ashley Quigley', 'Distinctio voluptates est eum sed consequatur culpa dolorem rerum dolorem reiciendis rerum quos autem maiores aut dolores magni accusantium blanditiis est sit quae ipsam similique odit autem quia aut quaerat aut cum harum illum minus itaque unde qui tenetur quidem et dolorem nam magnam quisquam est fugit optio ullam ipsam.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(8, 'Aut laborum odit ea fuga ipsam a dolorum est amet laboriosam et blanditiis.', 'Dr. Kenyatta Greenholt V', 'Hic laborum eos corrupti error architecto numquam voluptas vel voluptatem non non aut sunt corporis nesciunt dolor maxime dolorem reprehenderit odio eum magni provident vero quo nisi et illo nihil porro at rerum officiis sed et qui id consectetur saepe explicabo ab autem quos.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(9, 'Sed odio expedita debitis quam reprehenderit quo occaecati cupiditate ut sint unde.', 'Kassandra Langosh', 'Voluptatum corporis sed omnis ut impedit nam maiores earum occaecati tempore doloribus enim numquam aperiam aliquid laudantium quia esse dolores veritatis saepe ut veritatis voluptatem doloribus earum cupiditate enim eveniet ut incidunt numquam magni explicabo est est est laboriosam.', '2024-02-21 01:20:08', '2024-02-21 01:20:08'),
(10, 'Quas quibusdam cum qui deserunt tenetur velit rerum.', 'Prof. Drake Murphy MD', 'Eligendi maiores voluptates velit nobis mollitia voluptatem sunt quia necessitatibus ea culpa minus cumque temporibus neque fugit sunt voluptas numquam facilis quibusdam et modi vitae repudiandae sunt vel dignissimos assumenda accusantium quas.', '2024-02-21 01:20:08', '2024-02-21 01:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_seminar_id_foreign` (`seminar_id`);

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
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participants_seminar_id_foreign` (`seminar_id`);

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
-- Indexes for table `seminars`
--
ALTER TABLE `seminars`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seminars`
--
ALTER TABLE `seminars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_seminar_id_foreign` FOREIGN KEY (`seminar_id`) REFERENCES `seminars` (`id`);

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_seminar_id_foreign` FOREIGN KEY (`seminar_id`) REFERENCES `seminars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
