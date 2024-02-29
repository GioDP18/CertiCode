-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 03:20 AM
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
(1, 1, 'https://via.placeholder.com/100x100.png/007766?text=logo+et', 'Minima qui et est vero nemo tempora et reprehenderit corporis debitis sit expedita aut id accusantium ad rerum deserunt voluptatem facere eaque voluptates sed aut nemo blanditiis sit aut necessitatibus ipsum perspiciatis laboriosam amet possimus voluptas consectetur ea ut quo consequatur odio quasi ut occaecati facilis eum laborum molestiae reiciendis enim et sint laboriosam expedita ea neque nobis voluptas et et necessitatibus.', 'Prof. Buster Feest III', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(2, 2, 'https://via.placeholder.com/100x100.png/0099dd?text=logo+corrupti', 'Illum ratione earum ea aut at amet aperiam aperiam aut error velit voluptatum saepe non est eum perferendis tempora quis in aliquid enim voluptatem animi est aut sint soluta aliquid possimus ut quam consequuntur possimus sit.', 'Dannie Jenkins', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(3, 3, 'https://via.placeholder.com/100x100.png/005544?text=logo+odio', 'Eveniet corporis eveniet nobis magnam totam sit possimus quidem impedit deserunt ut rerum excepturi natus aliquam quae quod tempore distinctio eum qui dignissimos enim eum recusandae eum laudantium in ipsa est quasi sapiente temporibus error aut voluptatibus distinctio quo earum consequatur quia laborum repudiandae ut molestias nihil eos voluptatem ipsam est odit minus et laborum recusandae facere et corrupti quo dignissimos ut dolorem laborum ut fugit nisi magni qui quia.', 'Prof. Magali Price MD', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(4, 4, 'https://via.placeholder.com/100x100.png/008833?text=logo+aut', 'Sed in assumenda fugit est excepturi beatae dolores quia unde repellat quos consequatur cum rerum fuga quos error qui praesentium magni aspernatur ex et odit temporibus impedit cum magnam tempora tempore maiores modi quis porro nesciunt non facilis aspernatur cum vel non laborum beatae veritatis atque iusto sit consequatur dignissimos adipisci qui mollitia quasi omnis et quo neque.', 'Dr. Izabella Blanda II', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(5, 5, 'https://via.placeholder.com/100x100.png/00ddcc?text=logo+quibusdam', 'Accusantium ipsam dolores quasi perspiciatis ea praesentium ut perspiciatis minus omnis tenetur eius est facere in officia rerum recusandae aut dignissimos id nulla enim sapiente itaque possimus et praesentium aliquid tempora omnis voluptatem eius in aut saepe.', 'Mustafa Stehr DVM', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(6, 6, 'https://via.placeholder.com/100x100.png/003300?text=logo+amet', 'A ea neque molestiae similique ipsum unde deserunt voluptatibus impedit est magnam soluta asperiores et aliquam velit dolorem aut omnis qui velit pariatur in illo veritatis hic repellendus deserunt sint in quia eaque ut maxime officia ipsam temporibus repellat et quo consequatur voluptas id quis molestias veritatis sapiente a consequatur sequi sed ut rerum non voluptatum et.', 'Cordelia Larkin', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(7, 7, 'https://via.placeholder.com/100x100.png/000099?text=logo+harum', 'Alias nemo ut dolorem possimus sunt nam in velit sed quia ut et modi voluptate iste numquam accusamus quam fugit eos eos recusandae eveniet consequuntur modi vel suscipit facere illo distinctio dignissimos perferendis aut molestiae nisi in in.', 'Dagmar Boyer', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(8, 8, 'https://via.placeholder.com/100x100.png/00ff99?text=logo+qui', 'Facilis enim ab aut minima consequatur voluptatem consequatur voluptas odio perferendis magnam delectus quo ut aperiam ipsum dolorum minima ut molestiae recusandae ullam sapiente sunt ut dolor sed rerum nesciunt ut et error hic expedita aliquid molestiae facilis cumque eligendi nobis veritatis ipsam fugiat est et nulla nulla ut.', 'Walter Fisher', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(9, 9, 'https://via.placeholder.com/100x100.png/0099cc?text=logo+veritatis', 'Odit dolorem amet commodi voluptatem ex ut voluptas eum impedit excepturi tempora ea et perferendis corporis itaque exercitationem voluptatem ab consequatur adipisci in quisquam at architecto ea nihil est tempora consequatur suscipit deserunt perspiciatis pariatur qui possimus aut voluptatem modi sed rerum a sequi id fugiat accusantium cum sit mollitia optio est.', 'Mrs. Odessa Lind', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(10, 10, 'https://via.placeholder.com/100x100.png/004422?text=logo+sunt', 'Sunt voluptatem unde repellendus dolorum impedit autem non impedit cumque omnis velit maiores asperiores consequuntur aut corporis nostrum voluptatem vitae quae odio eaque rerum adipisci praesentium voluptas quia est neque rerum maiores laborum repudiandae vel beatae et quasi id doloribus fugiat ducimus velit autem est dolorum voluptas eos voluptatem rerum quo ab eaque.', 'Glennie Wuckert', '2024-02-22 17:46:09', '2024-02-22 17:46:09'),
(11, 11, 'https://via.placeholder.com/100x100.png/007766?text=logo+et', ';kcnlqejdcblwjef', 'Ako', '2024-02-22 18:32:08', '2024-02-22 18:32:08'),
(12, 12, 'https://via.placeholder.com/100x100.png/007766?text=logo+et', 'haha', 'haha', '2024-02-22 18:44:03', '2024-02-22 18:44:03'),
(13, 13, 'https://via.placeholder.com/100x100.png/007766?text=logo+et', 'mca;ke', 'cnkawds', '2024-02-22 18:45:43', '2024-02-22 18:45:43'),
(14, 14, 'https://via.placeholder.com/100x100.png/007766?text=logo+et', ';akjcl', '.mcmlas', '2024-02-22 18:46:40', '2024-02-22 18:46:40'),
(15, 15, 'https://via.placeholder.com/100x100.png/007766?text=logo+et', 'cksjd', ',sdbckje', '2024-02-22 18:48:46', '2024-02-22 18:48:46'),
(16, 16, 'https://via.placeholder.com/100x100.png/007766?text=logo+et', 'calknecla', 'ckjlase', '2024-02-22 18:49:55', '2024-02-22 18:49:55');

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
(92, '2014_10_12_000000_create_users_table', 1),
(93, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(94, '2019_08_19_000000_create_failed_jobs_table', 1),
(95, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(96, '2024_02_21_040336_create_seminars_table', 1),
(97, '2024_02_21_040421_create_certificates_table', 1),
(98, '2024_02_21_040609_create_participants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `participants` (`id`, `user_id`, `seminar_id`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `school`, `has_attended`, `certificate_sent`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'Elvis', 'Heidi', 'Waelchi', 'female', 'griffin.raynor@example.org', 'Goldner-Friesen', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(2, 3, 4, 'Dannie', 'Rashawn', 'Bogan', 'female', 'maximillian97@example.org', 'Rath PLC', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(3, 7, 1, 'Tomasa', 'Mark', 'Glover', 'male', 'eloy00@example.com', 'Klein Ltd', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(4, 7, 3, 'Christine', 'Margarett', 'Ankunding', 'male', 'qrunolfsdottir@example.net', 'Powlowski, Witting and Torp', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(5, 9, 6, 'Violette', 'Mathilde', 'Leannon', 'female', 'schulist.grover@example.org', 'Wolff, Rippin and Gorczany', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(6, 3, 6, 'Maudie', 'Layne', 'Harris', 'male', 'andy22@example.org', 'Bechtelar PLC', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(7, 2, 1, 'Jailyn', 'Kelly', 'Flatley', 'male', 'thurman38@example.org', 'Wehner, Jacobi and Stanton', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(8, 3, 7, 'Julio', 'Reynold', 'Gusikowski', 'female', 'dayne84@example.net', 'Schaden PLC', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(9, 4, 8, 'Devante', 'Carissa', 'Runte', 'male', 'shayne95@example.com', 'Wunsch Inc', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(10, 4, 8, 'Coy', 'Cleveland', 'Cole', 'male', 'fmurray@example.net', 'Quitzon, Fadel and Towne', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(11, 6, 4, 'Arno', 'Bart', 'Bartoletti', 'female', 'bechtelar.edyth@example.com', 'Legros-O\'Kon', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(12, 10, 3, 'Alice', 'Cayla', 'Swaniawski', 'female', 'jkoss@example.org', 'Hill-Hyatt', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(13, 4, 8, 'Deron', 'Kennith', 'Shanahan', 'male', 'dee42@example.com', 'O\'Keefe LLC', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(14, 9, 3, 'Faustino', 'Madelyn', 'Kautzer', 'male', 'kkiehn@example.org', 'Monahan, Rolfson and Gislason', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(15, 5, 10, 'Stephania', 'Claudia', 'Schaefer', 'female', 'brooke20@example.com', 'Feest Inc', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(16, 4, 4, 'Wilford', 'Alvina', 'Kuvalis', 'male', 'chaley@example.com', 'Bogan and Sons', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(17, 5, 6, 'Arnold', 'Nelda', 'Wilderman', 'male', 'kuvalis.abigail@example.org', 'Osinski-Hahn', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(18, 7, 2, 'Ali', 'Wyman', 'Dach', 'female', 'greenfelder.trenton@example.net', 'Reichert LLC', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(19, 1, 8, 'Kaela', 'Priscilla', 'Bogan', 'female', 'denis86@example.net', 'Daugherty, Balistreri and Hermann', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(20, 9, 7, 'Elouise', 'Gianni', 'Strosin', 'male', 'olin43@example.com', 'Huel LLC', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(21, 1, 2, 'Jaida', 'Kenyatta', 'Balistreri', 'male', 'fay.magnus@example.org', 'Davis Group', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(22, 7, 10, 'Katelynn', 'Lulu', 'Hansen', 'female', 'elinore.fisher@example.com', 'Denesik Inc', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(23, 9, 8, 'Madaline', 'Polly', 'Rath', 'male', 'tbahringer@example.com', 'Beahan PLC', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(24, 10, 6, 'Makenna', 'Buford', 'Kirlin', 'male', 'fyundt@example.com', 'Daugherty-McLaughlin', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(25, 4, 10, 'Hassan', 'Joseph', 'Kuvalis', 'male', 'lela.sauer@example.com', 'Lesch Inc', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(26, 5, 1, 'Mathilde', 'Lucy', 'Jakubowski', 'female', 'astehr@example.net', 'Rolfson-Hilpert', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(27, 8, 1, 'Jessyca', 'Cristobal', 'Windler', 'female', 'arenner@example.com', 'Jaskolski-Grant', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(28, 7, 6, 'Joany', 'Blair', 'Hills', 'female', 'kellen58@example.org', 'Stark and Sons', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(29, 9, 4, 'Eunice', 'Addie', 'Predovic', 'male', 'eryn36@example.net', 'Nicolas-O\'Hara', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(30, 10, 6, 'Olen', 'Linwood', 'Wunsch', 'female', 'clemmie82@example.org', 'Walter and Sons', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(31, 4, 1, 'Meagan', 'Chance', 'Gulgowski', 'male', 'violet75@example.net', 'Conroy, Graham and McGlynn', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(32, 5, 8, 'Arturo', 'Alexandra', 'Schulist', 'male', 'dustin26@example.org', 'Nader-Jakubowski', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(33, 6, 2, 'Telly', 'Rhianna', 'Gulgowski', 'male', 'gibson.meggie@example.com', 'Kulas, Botsford and McDermott', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(34, 2, 5, 'Derick', 'Conner', 'Harvey', 'male', 'marks.buford@example.com', 'Witting LLC', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(35, 9, 1, 'Carlo', 'Lucile', 'Bosco', 'male', 'reilly.arjun@example.com', 'Wilkinson Ltd', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(36, 4, 6, 'Cecilia', 'Keeley', 'Ziemann', 'male', 'kellen.dach@example.com', 'Hills, Kozey and Ziemann', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(37, 4, 5, 'Frederic', 'Pamela', 'Schumm', 'female', 'alvah83@example.org', 'Cassin-Roberts', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(38, 2, 5, 'Simone', 'Weston', 'Aufderhar', 'male', 'zwyman@example.net', 'Jacobi, Dietrich and Lebsack', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(39, 8, 7, 'Kali', 'Kamren', 'Turner', 'male', 'botsford.dominique@example.org', 'Beatty, Douglas and Little', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(40, 7, 3, 'Darius', 'Brody', 'Kunde', 'male', 'andreanne.rohan@example.net', 'Walter, Quigley and Donnelly', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(41, 9, 8, 'Angelita', 'Gail', 'Nader', 'male', 'fidel.hudson@example.net', 'Corkery-Turner', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(42, 7, 10, 'Danny', 'Noemy', 'Tromp', 'male', 'rex.mraz@example.net', 'Kerluke Group', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(43, 9, 5, 'Antonietta', 'Arely', 'Larson', 'male', 'lisandro81@example.com', 'Hoppe, Christiansen and Haag', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(44, 3, 4, 'Ashtyn', 'Addie', 'Kulas', 'male', 'myrtle.okeefe@example.org', 'Hamill-Hackett', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(45, 6, 10, 'Keven', 'Ruthe', 'Wunsch', 'male', 'leanna.haley@example.com', 'Zieme Ltd', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(46, 9, 6, 'Lillian', 'Rylee', 'Toy', 'female', 'mya26@example.org', 'White, Mills and Wunsch', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(47, 2, 10, 'Margarett', 'Dianna', 'Corwin', 'male', 'bjohnson@example.net', 'McDermott LLC', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(48, 2, 8, 'Oswald', 'Candido', 'Weimann', 'male', 'wisoky.makenna@example.com', 'VonRueden, Kozey and Crist', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(49, 6, 9, 'Jennifer', 'Kay', 'Raynor', 'male', 'marvin06@example.net', 'Spencer-Nikolaus', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(50, 5, 2, 'Bo', 'Ashton', 'Fahey', 'male', 'jordi.bayer@example.com', 'Wuckert-Wilderman', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(51, 7, 6, 'Hyman', 'Maurice', 'Boyer', 'male', 'zbartoletti@example.com', 'Turcotte, Gutkowski and Treutel', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(52, 5, 6, 'Braden', 'Winston', 'Carter', 'female', 'alyson62@example.net', 'Stroman Ltd', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(53, 9, 4, 'Ines', 'Erica', 'Buckridge', 'male', 'kristin.rice@example.com', 'Stark-Bins', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(54, 1, 8, 'Boyd', 'Nora', 'McCullough', 'female', 'dbogisich@example.net', 'Durgan Ltd', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(55, 6, 3, 'Margret', 'Leopoldo', 'Gerhold', 'female', 'prosacco.viviane@example.org', 'Tromp, Ankunding and Swift', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(56, 1, 8, 'Vincenza', 'Felipa', 'Walker', 'female', 'imelda43@example.com', 'Keebler Inc', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(57, 7, 6, 'Murphy', 'Tanner', 'Skiles', 'female', 'kenyon29@example.net', 'Bailey Inc', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(58, 10, 3, 'Baby', 'Maureen', 'Heidenreich', 'female', 'greenfelder.leila@example.com', 'Kertzmann, Legros and Boyer', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(59, 3, 2, 'Conner', 'Juvenal', 'Russel', 'male', 'graham.roy@example.com', 'Walker, Turcotte and Zulauf', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(60, 5, 9, 'Nelson', 'Kelly', 'Wisoky', 'male', 'kaitlyn.boehm@example.org', 'Cruickshank-Schuster', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(61, 8, 10, 'Guido', 'Hester', 'Gibson', 'female', 'marcel56@example.com', 'Funk-Dooley', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(62, 2, 3, 'Georgianna', 'Tabitha', 'Koss', 'female', 'verlie57@example.com', 'Kertzmann-Franecki', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(63, 4, 1, 'Velva', 'Celia', 'Gorczany', 'female', 'rowe.grady@example.org', 'Macejkovic Inc', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(64, 7, 2, 'Rachael', 'Marcelle', 'Thiel', 'female', 'eleanora99@example.org', 'Rogahn-Osinski', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(65, 10, 9, 'Alycia', 'Samson', 'Walker', 'male', 'qstoltenberg@example.net', 'Bode, Shields and Rowe', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(66, 3, 6, 'Ephraim', 'Tianna', 'Hilpert', 'male', 'lsmitham@example.org', 'Eichmann-Dach', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(67, 4, 5, 'Christophe', 'Drew', 'Stracke', 'male', 'wiegand.mckenzie@example.org', 'Bechtelar, Eichmann and Bode', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(68, 2, 7, 'Bernard', 'Amely', 'Nader', 'male', 'blick.fausto@example.org', 'Funk-Spencer', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(69, 6, 1, 'Elenora', 'Alexandrea', 'Rolfson', 'male', 'hackett.celestine@example.com', 'Muller-Schuppe', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(70, 10, 2, 'Dashawn', 'Mervin', 'Mills', 'female', 'beatty.stephany@example.com', 'Kirlin, Murray and Crooks', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(71, 1, 10, 'Elouise', 'Lia', 'Moen', 'female', 'bonita.murphy@example.com', 'Green-Goyette', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(72, 4, 6, 'Kathryn', 'Rusty', 'Little', 'male', 'buckridge.bianka@example.com', 'Lindgren, Schultz and Lind', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(73, 2, 8, 'Lilyan', 'Kirsten', 'Kreiger', 'male', 'mclaughlin.ezekiel@example.org', 'Gleichner-Gislason', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(74, 4, 10, 'Anne', 'Bennie', 'Balistreri', 'female', 'virginia.larkin@example.com', 'Bins Group', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(75, 4, 10, 'Edyth', 'Jazlyn', 'Greenholt', 'female', 'leannon.hazle@example.com', 'Hintz PLC', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(76, 9, 2, 'Erica', 'Timothy', 'McLaughlin', 'female', 'elna61@example.net', 'Prosacco, Jacobs and Wehner', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(77, 6, 9, 'Kennith', 'Idell', 'Hansen', 'female', 'qlockman@example.org', 'Hegmann-Hermann', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(78, 5, 9, 'Coralie', 'Audie', 'Cartwright', 'male', 'devyn25@example.org', 'Stiedemann PLC', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(79, 3, 6, 'Osbaldo', 'Kane', 'Ward', 'male', 'keebler.raina@example.org', 'Lynch LLC', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(80, 5, 2, 'Maximus', 'Ruby', 'Gottlieb', 'female', 'eichmann.adaline@example.org', 'Collier, Armstrong and Spencer', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(81, 9, 10, 'Clifton', 'Carlotta', 'Gerlach', 'male', 'djohnson@example.com', 'Carter PLC', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(82, 6, 2, 'Hassie', 'Deja', 'Turner', 'female', 'jkozey@example.org', 'Nienow, Hoeger and Stanton', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(83, 10, 4, 'Retha', 'Emie', 'Feil', 'male', 'braulio.lehner@example.net', 'Sawayn LLC', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(84, 2, 9, 'Leone', 'Tony', 'Lakin', 'female', 'jayme99@example.org', 'Hagenes, Hudson and Reichel', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(85, 5, 5, 'Deja', 'Romaine', 'Kirlin', 'female', 'blanda.flo@example.net', 'Rau LLC', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(86, 9, 5, 'Liana', 'Albertha', 'Keebler', 'female', 'bertrand.rath@example.net', 'Cronin, Renner and Balistreri', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(87, 3, 10, 'Maybell', 'Gregg', 'Gleichner', 'female', 'rogahn.christy@example.net', 'Vandervort PLC', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(88, 6, 2, 'Raina', 'Dorothea', 'Lesch', 'male', 'ynader@example.net', 'Beier PLC', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(89, 4, 1, 'Antonia', 'Avis', 'Will', 'male', 'fgraham@example.net', 'Tromp, Cremin and Stroman', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(90, 1, 8, 'Zoe', 'Jake', 'Medhurst', 'female', 'mozell60@example.net', 'Bins Ltd', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(91, 6, 4, 'Jovan', 'Kristina', 'Donnelly', 'female', 'ijohnston@example.net', 'Pfeffer and Sons', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(92, 8, 2, 'Dayana', 'Jason', 'Brakus', 'male', 'dante.braun@example.net', 'Rodriguez Group', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(93, 7, 4, 'Litzy', 'Edison', 'Hansen', 'female', 'rhea.toy@example.net', 'Friesen and Sons', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(94, 9, 3, 'Ena', 'Gladyce', 'Schmidt', 'male', 'lucinda.gusikowski@example.com', 'O\'Conner PLC', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(95, 7, 8, 'Miguel', 'Thelma', 'Baumbach', 'female', 'aileen62@example.org', 'Rippin, Gleichner and Feil', 0, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(96, 1, 2, 'Winfield', 'Electa', 'Roberts', 'male', 'quinn.mayer@example.org', 'Walker, Corkery and Pfannerstill', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(97, 2, 4, 'Jaeden', 'Jensen', 'Heaney', 'female', 'hsawayn@example.net', 'Bauch-Raynor', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(98, 7, 4, 'Audra', 'Bertrand', 'Simonis', 'female', 'russel.sporer@example.org', 'Rice Ltd', 0, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(99, 2, 3, 'Laney', 'Keith', 'Cruickshank', 'male', 'gveum@example.org', 'Gleason, Wolff and Funk', 1, 0, '2024-02-22 17:47:36', '2024-02-22 17:47:36'),
(100, 6, 8, 'Cody', 'Susie', 'Cremin', 'female', 'rachel25@example.net', 'Armstrong-Hayes', 1, 1, '2024-02-22 17:47:36', '2024-02-22 17:47:36');

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
  `about_the_speaker` text NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seminars`
--

INSERT INTO `seminars` (`id`, `topic`, `speaker`, `about_this_seminar`, `about_the_speaker`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Et numquam iste rerum quod ea consequatur molestias reprehenderit consequatur.', 'Toni Kshlerin', 'Incidunt harum dolore illum ullam exercitationem quia occaecati ut qui mollitia autem iure et dolor voluptatum totam tempore ipsum laboriosam voluptatem aut sit ut atque incidunt velit tempore quia velit quidem rerum sit rerum laborum itaque expedita doloremque et vero ut aut vel sit deleniti vitae consectetur perferendis sed animi voluptatum voluptatem voluptatibus sit asperiores id consequatur.', 'Aut ut facilis omnis aperiam qui impedit unde quidem possimus nostrum perferendis voluptatem nam vero consequatur facilis facilis minima est beatae laudantium eligendi doloremque quos reprehenderit aut eaque nesciunt dolorem est iure porro quod voluptas voluptatem sint quisquam accusantium doloribus.', '2020-07-28 02:58:40', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(2, 'Et vel maxime praesentium fugiat saepe qui voluptate quia temporibus doloremque facilis dolores voluptatem.', 'Dameon Ward', 'Velit sint sint unde fuga sunt debitis et officiis asperiores nihil error ut cum voluptatem maxime voluptatem ea et commodi ipsam corporis enim iste eos voluptatem quis nam quia et perferendis eveniet non est aliquam quos quaerat qui in dolores illo ad.', 'Hic ad id pariatur sint quia sint reprehenderit et et eos quae dolorem voluptatibus autem repellendus perspiciatis assumenda quam rerum perferendis ut minus quo qui occaecati magnam quis sit debitis vero et iure ut nobis dolores mollitia qui qui voluptas ut aut adipisci et quas itaque esse.', '1998-11-05 20:09:57', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(3, 'Cupiditate illum odio quia sunt alias reprehenderit quia expedita dolores.', 'Dakota Weissnat', 'Nam modi magni dolores ea error temporibus totam eligendi magnam error enim hic corrupti debitis quos ut hic necessitatibus et excepturi sint corporis sint quo molestias omnis eum dolor qui sit quod nemo at laboriosam et molestiae quibusdam vel sunt porro est corrupti quae iusto vitae voluptate eos explicabo cum voluptatem aut rerum consequatur distinctio culpa sed voluptatibus ut maiores eum ipsa commodi non consequatur qui quod alias eligendi et pariatur.', 'Saepe odit nobis expedita ipsum quis consectetur minima vero accusamus illum numquam rem suscipit enim et voluptate et excepturi architecto autem et aut sed quasi explicabo repellat et enim ut recusandae.', '1990-01-25 14:28:13', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(4, 'Reprehenderit officiis accusamus quod cupiditate non reiciendis reprehenderit voluptatem dolorem.', 'Ms. Brigitte Hettinger PhD', 'Voluptatem similique error minima id nulla ducimus est modi maiores quo omnis quia corporis saepe illum exercitationem iusto et quae magnam voluptates delectus atque nobis sit dolorem quia itaque repudiandae corporis sunt aut delectus alias et quaerat facere occaecati error rem esse aliquid minima nihil quia illo et molestias quia aut qui rem non voluptates numquam est sed commodi quis itaque velit.', 'Ducimus voluptatum iure ut et quia rerum ab cupiditate voluptatum voluptate sit ut ipsa ut voluptatem modi nam vitae molestiae quod delectus voluptatem molestias aut eveniet dolorem quo quisquam maiores natus aliquam voluptates autem et voluptate voluptatum maiores suscipit sunt mollitia eum iste eum eaque aut praesentium optio animi voluptatibus et modi debitis consequatur esse voluptatem accusamus doloremque sit odio dolore est quae.', '2011-07-01 23:19:24', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(5, 'Quo velit fugiat enim eligendi laboriosam corrupti corporis consequatur quos odio.', 'Jazmyn McGlynn PhD', 'Ut ut sit et tempore et omnis voluptas sint deleniti quo aut explicabo nam officia et quia rerum sit doloremque commodi recusandae sed eligendi autem perspiciatis aut accusantium aperiam et officia dolores ad.', 'Et et fuga ex eum sit ipsa quibusdam aliquam sequi recusandae accusamus omnis dolorem quo labore perferendis sit qui non quo fuga neque voluptatem adipisci accusamus dolorum deserunt id adipisci aut ut eum alias dolores totam sit totam omnis est consequatur omnis nobis dignissimos qui earum quis.', '2007-08-14 17:24:31', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(6, 'Accusantium corrupti ut quia occaecati consequuntur non soluta illum eum nisi corporis.', 'Prof. Brendan Crona III', 'Qui voluptatibus quaerat illum esse quis sed in velit asperiores ratione sit occaecati ad saepe voluptate eum voluptas et fuga libero illum adipisci exercitationem voluptas quo earum dicta commodi non atque sunt atque illum quia labore.', 'Ipsam voluptatem sunt repellendus esse aut tempore impedit et tenetur qui non odio consequuntur in est perferendis temporibus ut vero ea officia iusto qui magnam ea nemo dolores vel consequatur rerum magnam cumque illum qui.', '1979-10-21 02:33:55', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(7, 'Sunt qui est repudiandae dicta ex laudantium enim voluptas occaecati qui.', 'Elnora Bartell', 'Dignissimos aperiam officia sed error illum assumenda quod magnam aut sed et sequi enim dolorem laborum natus voluptas similique eligendi et totam adipisci voluptatem nostrum tenetur minima dolorum et asperiores ducimus mollitia et dignissimos fugiat libero laboriosam qui eaque quas repellendus velit laborum.', 'Reprehenderit beatae id nam amet enim nulla alias sunt repellendus explicabo reprehenderit consequatur temporibus esse possimus explicabo aut est consectetur ut dignissimos cumque molestias iure consequatur harum et corrupti dolores quaerat illo ut.', '2020-12-19 18:22:29', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(8, 'Distinctio perspiciatis ut nesciunt laborum ad impedit et qui non ullam consequatur optio.', 'Miss Abbie Bergstrom', 'Ipsam praesentium consequatur quis quasi quidem libero sit soluta ut et saepe sint odit vel possimus corrupti sunt laudantium architecto quis consequatur provident qui ipsa vitae eos delectus vel unde voluptatem eius voluptas illo suscipit adipisci.', 'Incidunt earum consequuntur molestiae laboriosam ut labore veritatis sint ad possimus iure perferendis et sequi ad minus libero dolorum omnis iure ea rerum ea placeat quia dolorum optio possimus ut voluptas fugit qui similique.', '2019-12-11 14:01:08', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(9, 'Aut qui unde tenetur vel molestiae nam atque enim.', 'Mr. Alberto Quigley I', 'Eos porro sint et reiciendis tenetur aut et qui quas dolor qui reiciendis suscipit et nobis explicabo voluptas iure aut excepturi aut quia et fugiat atque officiis placeat earum aut ut ipsam facilis aut ut non et nihil sint aut omnis harum omnis molestiae qui molestias nesciunt id facilis nostrum non pariatur corporis ut sit ratione amet eligendi tempore corporis praesentium nam molestiae quibusdam iure similique nam.', 'Perferendis voluptas non dolor dolorum aperiam et quia aut consequatur suscipit voluptatem atque veniam hic perspiciatis fugit totam distinctio qui tempore qui sapiente sunt consequatur quibusdam eos dolore omnis inventore aliquam quisquam molestiae repellat est dolore quo quo illo a eos ex saepe et quia nobis velit et voluptates omnis amet autem voluptatibus ut est deserunt necessitatibus architecto ut repellat in nesciunt.', '2015-11-22 15:31:17', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(10, 'Deleniti sit qui fugiat deleniti dolores ab deserunt.', 'Mr. Casey Jenkins', 'Et magni ut voluptatibus qui atque dolor deleniti ut iste assumenda ea rem voluptate voluptatum magni repellat error rem et dignissimos neque dignissimos ea beatae dolor ea praesentium sint facilis rerum aut hic voluptatem et asperiores enim sed iste dignissimos aut iusto aut non nisi sit dolor non recusandae sed deleniti omnis similique dolor ea harum quaerat culpa magni est sequi est.', 'Non sit consequatur recusandae quos vel sit asperiores vitae suscipit quo ut hic atque qui molestias similique velit eum nihil et adipisci eaque et velit doloremque in porro omnis ad itaque itaque tempore in nemo qui qui aperiam ipsa iste rerum sunt blanditiis ut rerum quo neque voluptatem dolorem iure similique necessitatibus ducimus sit eius possimus neque est id rerum adipisci quis fugit ex dolorum est libero blanditiis ratione reprehenderit vitae.', '1995-08-17 21:36:04', '2024-02-22 17:46:00', '2024-02-22 17:46:00'),
(11, 'Try', 'mv;qkwds', 'cnlqkebnclds', 'jvhiewndsklx', '2024-02-22 00:00:00', '2024-02-22 18:32:08', '2024-02-22 18:32:08'),
(12, 'HAha', 'haha', 'haha', 'haha', '2024-02-29 00:00:00', '2024-02-22 18:44:03', '2024-02-22 18:44:03'),
(13, 'lkcnvlw', 'acms', 'akcja', 'candl', '2024-03-02 00:00:00', '2024-02-22 18:45:43', '2024-02-22 18:45:43'),
(14, 'a;cldvn', ';aclw', 'cbake', 'bcakheka', '2024-03-07 00:00:00', '2024-02-22 18:46:40', '2024-02-22 18:46:40'),
(15, 'slvklkr', 'c.knes', 'c sdm', 'cmbkes', '2024-03-09 00:00:00', '2024-02-22 18:48:46', '2024-02-22 18:48:46'),
(16, 'aefjoewi', 'jaejcqw', 'cajeckau', 'caljhekcas', '2024-03-09 00:00:00', '2024-02-22 18:49:55', '2024-02-22 18:49:55');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `email_verified_at`, `password`, `user_level`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Isaiah', 'Torphy', 'Sans', 'Male', 'zweissnat@example.com', '2024-02-22 17:46:28', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '1', 'C:\\Users\\User\\AppData\\Local\\Temp\\43e2ccaa9c411d2cee0a56cfe70ee030.png', '8YFcJtUpxh', '2024-02-22 17:47:20', '2024-02-22 18:51:22'),
(2, 'Javon', 'Harber', 'Mayer', 'Male', 'jessy.osinski@example.net', '2024-02-22 17:46:29', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\bf7ceb102627f323b2db060895c157d0.png', 'NuAjH36sCU', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(3, 'Laron', 'Crist', 'Bogisich', 'Female', 'twilliamson@example.com', '2024-02-22 17:46:31', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\d6e628d523d85b802330f74c28dc4b3a.png', 'a0djwH4fRB', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(4, 'Meda', 'Vandervort', 'Stroman', 'Female', 'reynolds.ronny@example.org', '2024-02-22 17:46:33', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\34c5d97c7f08b30dd661f5ac520595eb.png', 'gANZFuZeh8', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(5, 'Malvina', 'D\'Amore', 'Hand', 'Male', 'devan78@example.org', '2024-02-22 17:46:35', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\426f031b89b8fd1ceca9615a3d5b8c29.png', 'bOubkihbZn', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(6, 'Mafalda', 'Hill', 'Boyle', 'Female', 'nicolas.domenic@example.com', '2024-02-22 17:46:36', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\f59ae19e83c6282840a414aec74047e8.png', 'L5kPHHrNox', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(7, 'Clemmie', 'Corwin', 'Wilderman', 'Female', 'ystamm@example.net', '2024-02-22 17:46:37', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\8c3957d6a6b621e1c1c9a0b68cbd238e.png', '4ttY9nRAfX', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(8, 'Hattie', 'Hettinger', 'Cruickshank', 'Male', 'savanna.cummings@example.org', '2024-02-22 17:46:39', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\88e307406c9011feefcf4177ac8055aa.png', 'C25bAeintg', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(9, 'Myrna', 'Grant', 'Feeney', 'Female', 'keegan.mayert@example.net', '2024-02-22 17:46:40', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\9a1689abdd8a343d1b4ee62fe332307d.png', 'uoUiisOpBF', '2024-02-22 17:47:20', '2024-02-22 17:47:20'),
(10, 'Angela', 'D\'Amore', 'Herzog', 'Male', 'pbailey@example.net', '2024-02-22 17:46:41', '$2y$12$NDGY10XXqO3gGthpkl.7VOvAmSy1swqpctspDJIflgjU2a89X7Oru', '2', 'C:\\Users\\User\\AppData\\Local\\Temp\\ffbb7f89e8e19879bb86cd076e650552.png', 'Ooqq3x9owO', '2024-02-22 17:47:20', '2024-02-22 17:47:20');

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
  ADD KEY `participants_user_id_foreign` (`user_id`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seminars`
--
ALTER TABLE `seminars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  ADD CONSTRAINT `participants_seminar_id_foreign` FOREIGN KEY (`seminar_id`) REFERENCES `seminars` (`id`),
  ADD CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
