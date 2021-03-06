-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 06-Mar-2021 às 16:22
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `b7bio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clicks`
--

DROP TABLE IF EXISTS `clicks`;
CREATE TABLE IF NOT EXISTS `clicks` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_link` int(11) NOT NULL,
  `click_date` date NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_page` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_border_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `links`
--

INSERT INTO `links` (`id`, `id_page`, `status`, `order`, `title`, `href`, `op_bg_color`, `op_text_color`, `op_border_type`) VALUES
(9, 1, 1, 2, 'Youtube', 'https://www.youtube.com/channel/UCrbs5jyRKL62WJfpBqFatZw', '#bb0000', '#ffffff', 'rounded'),
(2, 1, 1, 1, 'Facebook', 'https://www.facebook.com/rodrigo.diassantos.9/', '#3b5998', '#ffffff', 'rounded'),
(3, 1, 1, 0, 'LinkedIn', 'https://www.linkedin.com/in/rodrigo-santos-345737188/', '#007bb6', '#FFFFFF', 'rounded'),
(4, 2, 1, 0, 'Youtube', 'https://www.youtube.com/channel/UC8MqlgcaHPAK5RAB9YYVA4w', '#bb0000', '#ffffff', 'rounded'),
(5, 2, 1, 1, 'Twitter', 'https://twitter.com/mallandrosergio', '#00aced', '#FFFFFF', 'rounded'),
(16, 7, 1, 1, 'Instagram', 'https://www.instagram.com/acdc/?hl=pt-br', '#3f729b', '#ffffff', 'rounded'),
(15, 7, 1, 0, 'Youtube', 'https://www.youtube.com/user/acdc', '#ec4141', '#ffffff', 'rounded'),
(17, 7, 1, 2, 'Facebook', 'https://www.facebook.com/acdc', '#3b5998', '#ffffff', 'rounded');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_02_08_023658_create_all_tables', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_font_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `op_bg_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'color',
  `op_bg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `op_profile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `op_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_fb_pixel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `id_user`, `slug`, `op_font_color`, `op_bg_type`, `op_bg_value`, `op_profile_image`, `op_title`, `op_description`, `op_fb_pixel`) VALUES
(1, 1, 'rodrigo-santos', '#ffffff', 'color', '#b1d5f0,#4169e1', '1615047072.jpg', 'Rodrigo Santos', '\"Em busca da sabedoria perfeita\"', '12345'),
(2, 1, 'sergio-malandro', '#fafafa', 'color', '#9b5f65,#e3877d', 'sergio-malandro.png', 'Sérgio Malandro', 'Haaaaaaa! Yeah Yeah!', '12345'),
(7, 1, 'acdc', '#ffffff', 'color', '#cc1e1e,#641111', '1615045723.jpg', 'ACDC', 'This is rock´n roll baby', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'rsddossantos@gmail.com', '$2y$10$J9ZnAC.mSCls4foMoVsCp.iGFyoqW8Oxh006RPo5.a1feQ7oA3MKi'),
(2, 'salcifufu@gmail.com', '$2y$10$J9ZnAC.mSCls4foMoVsCp.iGFyoqW8Oxh006RPo5.a1feQ7oA3MKi'),
(3, 'abilio.diniz@grupopao.com.br', '$2y$10$J9ZnAC.mSCls4foMoVsCp.iGFyoqW8Oxh006RPo5.a1feQ7oA3MKi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `views`
--

DROP TABLE IF EXISTS `views`;
CREATE TABLE IF NOT EXISTS `views` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_page` int(11) NOT NULL,
  `view_date` date NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `views`
--

INSERT INTO `views` (`id`, `id_page`, `view_date`, `total`) VALUES
(1, 1, '2021-02-12', 3),
(2, 1, '2021-02-13', 14),
(3, 1, '2021-02-15', 10),
(4, 1, '2021-02-16', 6),
(5, 2, '2021-02-16', 22),
(6, 1, '2021-02-17', 1),
(7, 1, '2021-02-18', 4),
(8, 2, '2021-02-18', 3),
(9, 1, '2021-02-19', 3),
(10, 2, '2021-02-19', 4),
(11, 1, '2021-02-20', 1),
(12, 2, '2021-02-20', 1),
(13, 1, '2021-02-21', 9),
(14, 2, '2021-02-21', 2),
(15, 1, '2021-02-23', 9),
(16, 2, '2021-02-23', 1),
(17, 1, '2021-02-24', 25),
(18, 2, '2021-02-24', 13),
(19, 1, '2021-02-25', 14),
(20, 2, '2021-02-26', 7),
(21, 1, '2021-02-26', 39),
(22, 1, '2021-02-28', 84),
(23, 2, '2021-02-28', 13),
(24, 1, '2021-03-01', 30),
(25, 2, '2021-03-01', 21),
(26, 3, '2021-03-02', 9),
(27, 4, '2021-03-02', 4),
(28, 2, '2021-03-02', 2),
(29, 5, '2021-03-02', 2),
(30, 3, '2021-03-04', 4),
(31, 4, '2021-03-04', 1),
(32, 5, '2021-03-04', 1),
(33, 1, '2021-03-04', 3),
(34, 4, '2021-03-05', 1),
(35, 6, '2021-03-05', 1),
(36, 7, '2021-03-05', 1),
(37, 7, '2021-03-06', 68),
(38, 1, '2021-03-06', 13),
(39, 2, '2021-03-06', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
