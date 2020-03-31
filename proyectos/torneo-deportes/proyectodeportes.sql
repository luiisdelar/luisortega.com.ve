-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2018 a las 16:05:13
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Se viene el mundial...', 'acerca del mundial del 2018 en Rusia', 2, 1, '2018-06-06 04:45:05', '2018-06-06 04:45:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Deportes', '2018-06-06 04:40:19', '2018-06-06 04:40:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_05_034228_add_categories_table', 1),
(4, '2018_06_05_233749_add_articles_table', 1),
(5, '2018_06_05_234651_add_images_table', 1),
(6, '2018_06_05_235239_add_tags_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Futbol', '2018-06-06 04:46:04', '2018-06-06 04:46:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Luis Ortega', 'luisortegadlr@gmail.com', 'qwas', 'member', NULL, '2018-06-06 04:25:10', '2018-06-06 04:25:10'),
(2, 'Maria Gonzalez', 'maria@google.com', 'qwas', 'member', NULL, '2018-06-06 04:42:27', '2018-06-06 04:42:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_article_id_foreign` (`article_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
--
-- Base de datos: `datos`
--
CREATE DATABASE IF NOT EXISTS `datos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `datos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombreEquipo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreCorto` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaCreacion` date NOT NULL,
  `direccion` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('miembro','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'miembro',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `nombreEquipo`, `nombreCorto`, `fechaCreacion`, `direccion`, `email`, `web`, `usuario`, `clave`, `tipo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Caracas FC', 'CFC', '2000-11-11', 'cota 905 y petare ja weeeenoo', 'ccs@ca.com', 'www.ccs.com', 'ccs', 'qwas', 'miembro', NULL, NULL, '2018-03-05 07:02:22'),
(2, 'Juventus', 'JUV', '1996-03-21', 'Turin', 'juve@a.com', 'juve.com', 'dybala', 'qwas', 'miembro', NULL, '2018-03-03 23:02:33', '2018-03-03 23:02:33'),
(6, 'Barcelona', 'bar', '2000-11-11', 'barsa', 'cbs@ca.com', 'www.cvs.com', 'barsa', 'qwas', 'miembro', NULL, NULL, NULL),
(7, 'Chelsea', 'bar', '2001-11-11', 'Londres', 'che@ca.com', 'www.cvs.com', 'chelsea', 'qwas', 'miembro', NULL, NULL, '2018-03-05 07:45:11'),
(17, 'Leones', 'leo', '2017-02-03', 'leo', 'leo@c.com', 'lele', 'leo', 'qwas', 'miembro', NULL, '2018-03-05 06:23:10', '2018-03-05 06:23:10'),
(18, 'Magallanes', 'mag', '2019-04-05', 'maga', 'ma@f.com', 'sdad', 'maag', 'qwas', 'miembro', NULL, '2018-03-05 06:25:55', '2018-03-05 06:25:55'),
(19, 'Milan', 'mil', '2014-02-03', 'milan', 'mi@m.com', 'msdadk', 'milan', 'qwas', 'miembro', NULL, '2018-03-05 06:28:39', '2018-03-05 06:28:39'),
(20, 'a', 'a', '2018-03-16', 'a', 'a@a.com', 'a', 'a', 'a', 'miembro', NULL, '2018-03-05 08:08:34', '2018-03-05 08:08:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcionestorneos`
--

CREATE TABLE `inscripcionestorneos` (
  `id` int(10) UNSIGNED NOT NULL,
  `participantes` int(11) NOT NULL,
  `categoria` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuenta_id` int(10) UNSIGNED NOT NULL,
  `listaTorneo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inscripcionestorneos`
--

INSERT INTO `inscripcionestorneos` (`id`, `participantes`, `categoria`, `cuenta_id`, `listaTorneo_id`, `created_at`, `updated_at`) VALUES
(3, 23, 'Aficionado', 2, 2, '2018-03-05 03:06:36', '2018-03-05 03:06:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listatorneos`
--

CREATE TABLE `listatorneos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaRealizacion` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `listatorneos`
--

INSERT INTO `listatorneos` (`id`, `nombre`, `fechaRealizacion`, `created_at`, `updated_at`) VALUES
(1, 'Mundial Rusia 2018', '2018-07-06', '2018-03-03 22:07:20', '2018-03-03 22:07:20'),
(2, 'Champions', '2018-12-06', '2018-03-05 03:03:48', '2018-03-05 03:03:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_03_135908_create_cuentas_tabla', 1),
(2, '2018_03_03_140937_create_lista_torneos_tabla', 1),
(3, '2018_03_03_142452_create_inscripciones_torneos_tabla', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cuentas_email_unique` (`email`);

--
-- Indices de la tabla `inscripcionestorneos`
--
ALTER TABLE `inscripcionestorneos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inscripcionestorneos_cuenta_id_foreign` (`cuenta_id`),
  ADD KEY `inscripcionestorneos_listatorneo_id_foreign` (`listaTorneo_id`);

--
-- Indices de la tabla `listatorneos`
--
ALTER TABLE `listatorneos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `inscripcionestorneos`
--
ALTER TABLE `inscripcionestorneos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `listatorneos`
--
ALTER TABLE `listatorneos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripcionestorneos`
--
ALTER TABLE `inscripcionestorneos`
  ADD CONSTRAINT `inscripcionestorneos_cuenta_id_foreign` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inscripcionestorneos_listatorneo_id_foreign` FOREIGN KEY (`listaTorneo_id`) REFERENCES `listatorneos` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `foxsports`
--
CREATE DATABASE IF NOT EXISTS `foxsports` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `foxsports`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombreEquipo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombreCorto` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `fechaCreacion` date NOT NULL,
  `direccion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"proyectodeportes\",\"table\":\"inscriptions\"},{\"db\":\"proyectodeportes\",\"table\":\"users_pass\"},{\"db\":\"proyectodeportes\",\"table\":\"tournaments\"},{\"db\":\"datos\",\"table\":\"cuentas\"},{\"db\":\"datos\",\"table\":\"inscripcionestorneos\"},{\"db\":\"datos\",\"table\":\"listatorneos\"},{\"db\":\"datos\",\"table\":\"migrations\"},{\"db\":\"foxsports\",\"table\":\"users\"},{\"db\":\"blog\",\"table\":\"article_tag\"},{\"db\":\"blog\",\"table\":\"tags\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-01-17 01:35:23', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `proyectodeportes`
--
CREATE DATABASE IF NOT EXISTS `proyectodeportes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyectodeportes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id` int(11) NOT NULL,
  `name_tourn` varchar(30) NOT NULL,
  `participants` int(11) NOT NULL,
  `category` varchar(15) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscriptions`
--

INSERT INTO `inscriptions` (`id`, `name_tourn`, `participants`, `category`, `user`) VALUES
(6, 'Mundial Qatar 2022', 21, '1', 'leo'),
(8, 'Mundial Rusia 2018', 2, '2', 'juve'),
(16, 'Mundial Rusia 2018', 69, '1', 'leo'),
(17, 'Copa Libertadores', 12, '3', 'juve'),
(18, 'Mundial Qatar 2022', 12, '3', 'juve'),
(19, 'Mundial Rusia 2018', 0, '1', 'juve'),
(20, 'Mundial Rusia 2018', 0, '3', 'juve'),
(21, 'Mundial Qatar 2022', 0, '1', 'juve'),
(22, 'Mundial Qatar 2022', 0, '2', 'juve'),
(23, 'Champion League', 0, '1', 'juve'),
(24, 'Champion League', 0, '2', 'juve'),
(25, 'Champion League', 0, '3', 'juve'),
(26, 'Copa Libertadores', 0, '1', 'juve'),
(27, 'Copa Libertadores', 0, '2', 'juve'),
(28, 'Copa Libertadores', 32, '3', 'boca'),
(29, 'Mundial Rusia 2018', 12, '1', 'boca'),
(30, 'Mundial Rusia 2018', 1, '1', 'riverplate'),
(31, 'Mundial Qatar 2022', 23, '1', 'juan'),
(32, 'Mundial Qatar 2022', 23, '2', 'juan'),
(33, 'Mundial Qatar 2022', 23, '3', 'juan'),
(34, 'Mundial Qatar 2022', 23, '1', 'maria'),
(35, 'Mundial Qatar 2022', 23, '2', 'maria'),
(36, 'Mundial Qatar 2022', 23, '3', 'maria'),
(37, 'Mundial Qatar 2022', 23, '1', 'jesus'),
(38, 'Mundial Qatar 2022', 23, '2', 'jesus'),
(39, 'Mundial Qatar 2022', 23, '3', 'jesus'),
(40, 'Mundial Qatar 2022', 23, '1', 'barry'),
(41, 'Mundial Qatar 2022', 23, '2', 'barry'),
(42, 'Mundial Qatar 2022', 23, '3', 'barry'),
(43, 'Mundial Qatar 2022', 23, '1', 'chico'),
(44, 'Mundial Qatar 2022', 23, '2', 'chico'),
(45, 'Mundial Qatar 2022', 23, '3', 'chico'),
(46, 'Mundial Qatar 2022', 23, '1', 'bad bunny'),
(47, 'Mundial Qatar 2022', 23, '2', 'bad bunny'),
(48, 'Mundial Qatar 2022', 23, '3', 'bad bunny'),
(49, 'Mundial Qatar 2022', 23, '1', 'carlos'),
(50, 'Mundial Qatar 2022', 23, '2', 'carlos'),
(51, 'Mundial Qatar 2022', 23, '3', 'carlos'),
(52, 'Mundial Qatar 2022', 23, '1', 'nautica'),
(53, 'Mundial Qatar 2022', 23, '2', 'nautica'),
(54, 'Mundial Qatar 2022', 23, '3', 'nautica'),
(55, 'Mundial Rusia 2018', 23, '1', 'juan'),
(56, 'Mundial Rusia 2018', 23, '2', 'juan'),
(57, 'Mundial Rusia 2018', 23, '3', 'juan'),
(58, 'Mundial Rusia 2018', 23, '1', 'maria'),
(59, 'Mundial Rusia 2018', 23, '2', 'maria'),
(60, 'Mundial Rusia 2018', 23, '3', 'maria'),
(61, 'Mundial Rusia 2018', 23, '1', 'jesus'),
(62, 'Mundial Rusia 2018', 23, '2', 'jesus'),
(63, 'Mundial Rusia 2018', 23, '3', 'jesus'),
(64, 'Mundial Rusia 2018', 23, '1', 'barry'),
(65, 'Mundial Rusia 2018', 23, '2', 'barry'),
(66, 'Mundial Rusia 2018', 23, '3', 'barry'),
(67, 'Mundial Rusia 2018', 23, '1', 'chico'),
(68, 'Mundial Rusia 2018', 23, '2', 'chico'),
(69, 'Mundial Rusia 2018', 23, '3', 'chico'),
(70, 'Mundial Rusia 2018', 23, '1', 'bad bunny'),
(71, 'Mundial Rusia 2018', 23, '2', 'bad bunny'),
(72, 'Mundial Rusia 2018', 23, '3', 'bad bunny');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tournaments`
--

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL,
  `name_tourn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tournaments`
--

INSERT INTO `tournaments` (`id`, `name_tourn`) VALUES
(1, 'Mundial Rusia 2018'),
(2, 'Mundial Qatar 2022'),
(3, 'Champions League'),
(4, 'Copa Libertadores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_pass`
--

CREATE TABLE `users_pass` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name_team` varchar(30) NOT NULL,
  `short_name` varchar(3) NOT NULL,
  `creation_date` date NOT NULL,
  `adress` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  `type` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_pass`
--

INSERT INTO `users_pass` (`id`, `user`, `password`, `name_team`, `short_name`, `creation_date`, `adress`, `email`, `website`, `type`) VALUES
(1, 'leo', 'leo', 'Leones Del Caracas', 'leo', '2017-10-01', '2017-10-01', 'c@c.com', 'sdsad', NULL),
(2, 'ccs', 'ccs', 'ccs', 'ccs', '2017-10-08', 'la urbina', 'cfc@cfc.com', 'www.cfc.com', 'admin'),
(3, 'juve', 'juve', 'juve', 'juv', '2017-10-08', 'italia', 'j@k.com', 'jwjw', NULL),
(4, 'boca', 'boca', 'Boca Jrs', 'boc', '2017-10-27', 'argentina', 'asda@sd.com', 'www.cfc.com', NULL),
(5, 'RiverPlate', 'river', 'River Plate', 'RIV', '2016-10-26', 'buenos aires', 'adrienymrivera@gmail.com', 'www.cfc.com', NULL),
(6, 'juan', '123', 'valle verde', 'vll', '0000-00-00', 'la castra', 'example@example.com', 'www.example.com', NULL),
(7, 'maria', '123', 'magallanes', 'mag', '2017-10-01', 'valencia', 'example@example.com', 'www.example.com', NULL),
(13, 'jesus', '123', 'yankees', 'nyy', '2017-10-01', 'new york', 'example@example.com', 'www.example.com', NULL),
(14, 'barry', '123', 'boston', 'bos', '2017-10-01', 'boston', 'example@example.com', 'www.example.com', NULL),
(15, 'chico', '123', 'chicago', 'chi', '2017-10-01', 'usa', 'example@example.com', 'www.example.com', NULL),
(16, 'bad bunny', '123', 'puerto rico', 'pr', '2017-10-01', 'puerto rico', 'example@example.com', 'www.example.com', NULL),
(17, 'carlos', '123', 'emelec', 'eme', '2017-10-01', 'ecuador', 'example@example.com', 'www.example.com', NULL),
(18, 'nautica', '123', 'nauticos', 'nau', '2017-10-01', 'el mar d plata en argentina su', 'example@example.com', 'www.example.com', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_pass`
--
ALTER TABLE `users_pass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users_pass`
--
ALTER TABLE `users_pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id` int(11) NOT NULL,
  `name_tourn` varchar(30) NOT NULL,
  `participants` int(11) NOT NULL,
  `category` varchar(15) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscriptions`
--

INSERT INTO `inscriptions` (`id`, `name_tourn`, `participants`, `category`, `user`) VALUES
(5, 'Mundial Rusia 2018', 222, 'Beginner', 'leo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tournaments`
--

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL,
  `name_tourn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tournaments`
--

INSERT INTO `tournaments` (`id`, `name_tourn`) VALUES
(1, 'Mundial Rusia 2018'),
(2, 'Mundial Qatar 2022'),
(3, 'Champion League'),
(4, 'Copa Libertadores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_pass`
--

CREATE TABLE `users_pass` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name_team` varchar(30) NOT NULL,
  `short_name` varchar(3) NOT NULL,
  `creation_date` date NOT NULL,
  `adress` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_pass`
--

INSERT INTO `users_pass` (`user`, `password`, `name_team`, `short_name`, `creation_date`, `adress`, `email`, `website`) VALUES
('leo', 'leo', 'Leones', 'leo', '2017-10-01', 'ccs', 'c@c.com', 'sdsad');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `torneo_dep`
--
CREATE DATABASE IF NOT EXISTS `torneo_dep` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `torneo_dep`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_usuarios`
--

CREATE TABLE `datos_usuarios` (
  `Nombre_Equipo` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dir_responsable` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sitio_web` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos_usuarios`
--

INSERT INTO `datos_usuarios` (`Nombre_Equipo`, `fecha_creacion`, `dir_responsable`, `correo`, `sitio_web`, `usuario`, `clave`) VALUES
('brazil', '2018-02-22', 'brazil', 'braziiil@gmail.com', 'brazil.com', 'brazil', '1712'),
('#luis', '2017-01-26', '1', '1', '1', '#luis', 'qwas'),
('azucar', '2017-01-27', 'q', 'q', 'q', 'az', 'qwas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_torneo`
--

CREATE TABLE `registro_torneo` (
  `torneo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `categoria` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cant_jugadores` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nom_equipo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `web` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dir_resp` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos_fecha`
--

CREATE TABLE `torneos_fecha` (
  `torneo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `torneos_fecha`
--

INSERT INTO `torneos_fecha` (`torneo`, `fecha`) VALUES
('mundial rusia 2018', '2018-06-05');
--
-- Base de datos: `wordbd`
--
CREATE DATABASE IF NOT EXISTS `wordbd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wordbd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-02 21:34:13', '2018-05-03 03:34:13', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de las personas que hacen provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Luis Ortega', 'yes'),
(4, 'blogdescription', 'Pagina web personal de presentación', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luisortegadlr@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-6', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'blog-expert', 'yes'),
(41, 'stylesheet', 'blog-expert', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_VE', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:10:\"slide-menu\";a:0:{}s:14:\"footer-col-one\";a:0:{}s:14:\"footer-col-two\";a:0:{}s:16:\"footer-col-three\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:3:{i:1527564855;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527564884;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527554283;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(129, 'can_compress_scripts', '1', 'no'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(174, 'auto_updater.lock', '1527553854', 'no'),
(179, '_site_transient_timeout_browser_4d90fb766c3b51de57fa42e860c03217', '1528158674', 'no'),
(180, '_site_transient_browser_4d90fb766c3b51de57fa42e860c03217', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"60.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(181, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_VE/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"es_VE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_VE/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-5.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.5\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-5.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-rollback-5.zip\";}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.5\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1527555696;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(182, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1527597079', 'no'),
(183, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2018.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2018-06-14 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Belgrade, Serbia\";s:7:\"country\";s:2:\"RS\";s:8:\"latitude\";d:44.808497;s:9:\"longitude\";d:20.432285;}}}}', 'no'),
(184, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1527597080', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(185, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Fri, 25 May 2018 08:06:43 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43320\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"WordPress.org Privacy Policy Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 08:06:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"privacy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6047\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"The WordPress.org privacy policy has been updated, hurray! While we weren&#8217;t able to remove all the long sentences, we hope you find the revisions make it easier to understand: how we collect and use data, how long the data we collect is retained, and how you can request a copy of the data you&#8217;ve shared [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:657:\"<p>The <a href=\"https://wordpress.org/about/privacy/\">WordPress.org privacy policy</a> has been updated, hurray! While we weren&#8217;t able to remove <strong>all</strong> the long sentences, we hope you find the revisions make it easier to understand:</p>\n<ul>\n<li>how we collect and use data,</li>\n<li>how long the data we collect is retained, and</li>\n<li>how you can request a copy of the data you&#8217;ve shared with us.</li>\n</ul>\n<p>There hasn&#8217;t been any change to the data that WordPress.org collects or how that data is used; the privacy policy just provides more detail now. Happy reading, and thanks for using WordPress!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6047\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress 4.9.6 Privacy and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 19:21:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5920\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:358:\"WordPress 4.9.6 is now available. This is a privacy and maintenance release. We encourage you to update your sites to take advantage of the new privacy features. Privacy The European Union&#8217;s General Data Protection Regulation (GDPR) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Allen Snook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:13399:\"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&#038;ssl=1\" alt=\"A decorative header featuring the text &quot;GDPR&quot; and a lock inside of a blue shield, on multicolor green background.\" class=\"wp-image-5988\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=1024%2C512&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<h2 style=\"text-align:left\">Privacy</h2>\n\n<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>\n\n<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>\n\n<p>You can learn more about the GDPR from the European Commission&#8217;s <a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">Data Protection page</a>.<br /></p>\n\n<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>\n\n<h2 style=\"text-align:left\">Comments</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&#038;ssl=1\" alt=\"A screenshot of a comment form, where the new &quot;Save my name, email, and website in this browser for the next time I comment&quot; checkbox is featured.\" class=\"wp-image-5986\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=300%2C291&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=768%2C744&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=1024%2C992&amp;ssl=1 1024w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>\n\n<h2 style=\"text-align:left\">Privacy Policy Page</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1898&amp;ssl=1 1898w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=300%2C177&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=768%2C453&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=1024%2C604&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>\n\n<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>\n\n<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href=\"https://developer.wordpress.org/plugins/privacy/\">Learn more in our Privacy section of the Plugin Handbook</a>.</p>\n\n<h2 style=\"text-align:left\">Data Handling</h2>\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&#038;ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=2372&amp;ssl=1 2372w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=300%2C221&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=768%2C565&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=1024%2C753&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n<div class=\"wp-block-columns has-2-columns\">\n		<h3 class=\"layout-column-1\">Data Export</h3>\n	\n		<p class=\"layout-column-1\">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>\n	\n		<h3 class=\"layout-column-2\">Data Erasure</h3>\n	\n		<p class=\"layout-column-2\">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>\n	</div>\n\n<blockquote class=\"wp-block-quote\">\n	<p>Howdy,</p>\n	<p>A request has been made to perform the following action on your account:<br /> </p>\n	<p><strong>Export Personal Data</strong><br /> </p>\n	<p>To confirm this, please click on the following link:<br /><a href=\"#\">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>\n	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>\n	<p>This email has been sent to <a href=\"#\">you@example.com</a>.<br /> </p>\n	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href=\"http://wordpress.org\"><em> http://wordpress.org</em></a></p>\n</blockquote>\n\n<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2 style=\"text-align:left\">Maintenance</h2>\n\n<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>\n\n<ul>\n	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>\n	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>\n	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>\n	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>\n\n<p class=\"has-background has-very-light-gray-background-color\">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.<br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April. The WordPress 15th Anniversary is Coming On May 27 2018, WordPress will turn 15 years old — this is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4981:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Celebrate the WordPress 15th Anniversary on May 27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 21:07:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"Store\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"wp15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5753\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"May 27, 2018 is the 15th anniversary of the first WordPress release ﻿— and we can&#8217;t wait to celebrate! Party time! Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun: Check the WordPress 15th Anniversary website to see [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3948:\"<p>May 27, 2018 is the <strong>15th anniversary</strong> of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first WordPress release</a> <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">﻿</a>— and we can&#8217;t wait to celebrate!</p>\n\n<figure class=\"wp-block-image aligncenter\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&#038;ssl=1\" alt=\"\" class=\"wp-image-5841\" width=\"342\" height=\"268\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=2188&amp;ssl=1 2188w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=300%2C236&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=768%2C605&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=1024%2C806&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 342px) 100vw, 342px\" data-recalc-dims=\"1\" /></figure>\n\n<h2>Party time!</h2>\n\n<p>Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun:</p>\n\n<ol>\n    <li>Check the <a href=\"https://wp15.wordpress.net/about/\">WordPress 15th Anniversary website</a> to see if there&#8217;s a party already planned for your town. If there is, RSVP for the party and invite your friends!<br /></li>\n    <li>If there isn&#8217;t, then pick a place to go where a bunch of people can be merry — a park, a pub, a backyard; any family-friendly venue will do!</li>\n    <li>List your party with <a href=\"https://www.meetup.com/pro/wordpress/\">your local WordPress meetup group</a> (Don&#8217;t have a group? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Start one!</a>)  and then spread the word to other local meetups, tech groups, press, etc and get people to say they’ll come to your party.</li>\n    <li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Request</a> some special 15th anniversary WordPress swag (no later than April 27, please, so we have time to ship it to you).<br /></li>\n    <li>Have party attendees post photos, videos, and the like with the #WP15 hashtag, and <a href=\"https://wp15.wordpress.net/live/\">check out the social media stream</a> to see how the rest of the world is sharing and celebrating.</li>\n</ol>\n\n<p>Don&#8217;t miss this chance to participate in a global celebration of WordPress!<br /></p>\n\n<h2>Special Swag</h2>\n\n<p>In honor of the 15th anniversary, we’ve added some <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">special 15th anniversary items</a> in the swag store — you can use the offer code <strong>CELEBRATEWP15</strong> to take 15% off this (and any other WordPress swag you buy), all the way through the end of 2018!</p>\n\n<p>Keep checking the swag store, because we&#8217;ll be adding more swag over the next few weeks!</p>\n\n<h2>Share the fun</h2>\n\n<p>However you celebrate the WordPress 15th anniversary — with <a href=\"https://wp15.wordpress.net/about/\">a party</a>, with <a href=\"https://wp15.wordpress.net/swag/\">commemorative swag</a>, by <a href=\"https://wp15.wordpress.net/live/\">telling the world</a> what WordPress means to you — remember to use the #WP15 hashtag to share it! And don&#8217;t forget to <a href=\"https://wp15.wordpress.net/live/\">check the stream of WordPress 15th anniversary posts</a>.</p>\n\n<p>When <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% of the internet</a> has a reason to celebrate, you know it&#8217;s going to be great! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"GDPR Compliance Tools in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 20:11:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5728\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:188:\"GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3914:\"<p>GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core. </p>\n\n<h2>What is GDPR?</h2>\n\n<p>GDPR stands for <a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a> and is intended to strengthen and unify data protection for all individuals within the European Union. Its primary aim is to give control back to the EU residents over their personal data. <br /></p>\n\n<p>Why the urgency? Although the GDPR was introduced two years ago, it becomes  enforceable starting May 25, 2018.</p>\n\n<h2>Make WordPress GDPR Compliance Team</h2>\n\n<p>Currently, the GDPR Compliance Team understands that helping WordPress-based sites become compliant is a large and ongoing task. The team is focusing on creating a comprehensive core policy, plugin guidelines, privacy tools and documentation. All of this requires your help.<br /></p>\n\n<p>The GDPR Compliance Team is focusing on four main areas:</p>\n\n<ul>\n    <li>Add functionality to assist site owners in creating comprehensive privacy policies for their websites.</li>\n    <li>Create guidelines for plugins to become GDPR ready.</li>\n    <li>Add administration tools to facilitate compliance and encourage user privacy in general.</li>\n    <li>Add documentation to educate site owners on privacy, the main GDPR compliance requirements, and on how to use the new privacy tools.</li>\n</ul>\n\n<h2>Don’t we already have a privacy policy?</h2>\n\n<p>Yes and no. That said, The GDPR puts tighter guidelines and restrictions. Though we have many plugins that create privacy pages, we need means to generate a unified, comprehensive privacy policy. We will need tools for users to easily come into compliance.<br /></p>\n\n<p>Site owners will be able to create GDPR compliant privacy policy in three steps:</p>\n\n<ol>\n    <li>Adding a dedicated page for the policy.<br /></li>\n    <li>Adding privacy information from plugins.</li>\n    <li>Reviewing and publishing the policy.</li>\n</ol>\n\n<p>A new &#8220;postbox&#8221; will be added to the Edit Page screen when editing the policy. All plugins that collect or store user data will be able to add privacy information there. In addition it will alert the site owners when any privacy information changes after a plugin is activated, deactivated, or updated.<br /></p>\n\n<p>There is a new functionality to confirm user requests by email address. It is intended for site owners to be able to verify requests from users for displaying, downloading, or anonymizing of personal data.<br /></p>\n\n<p>A new &#8220;Privacy&#8221; page is added under the &#8220;Tools&#8221; menu. It will display new, confirmed requests from users, as well as already fulfilled requests. It will also contain the tools for exporting and anonymizing of personal data and for requesting email confirmation to avoid abuse attempts.<br /></p>\n\n<p>New section on privacy will be added to the <a href=\"https://developer.wordpress.org/plugins/\">Plugin Handbook</a>. It will contain some general information on user privacy, what a plugin should do to be compliant, and also tips and examples on how to use the new privacy related functionality in WordPress.<br /></p>\n\n<p>The new privacy tools are scheduled for release at the end of April or beginning of May 2018.</p>\n\n<h2>How can you get involved?</h2>\n\n<p>We would love to have your help. The first step is awareness and education. For more information about the upcoming privacy tools see ﻿<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">the roadmap</a>.</p>\n\n<p>If you would like to get involved in building WordPress Core and testing the new privacy tools, please join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack group.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.9.5 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 19:56:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5645\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"WordPress 4.9.5 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6347:\"<p>WordPress 4.9.5 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.5:</p>\n\n<ol>\n    <li>Don&#x27;t treat <code>localhost</code> as same host by default.</li>\n    <li>Use safe redirects when redirecting the login page if SSL is forced.</li>\n    <li>Make sure the version string is correctly escaped for use in generator tags.</li>\n</ol>\n\n<p>Thank you to the reporters of these issues for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">﻿coordinated security disclosure</a>: <a href=\"https://profiles.wordpress.org/xknown\">xknown</a> of the WordPress Security Team, <a href=\"https://hackerone.com/nitstorm\">Nitin Venkatesh (nitstorm)</a>, and <a href=\"https://twitter.com/voldemortensen\">Garth Mortensen</a> of the WordPress Security Team.</p>\n\n<p>Twenty-five other bugs were fixed in WordPress 4.9.5. Particularly of note were:</p>\n\n<ul>\n    <li>The previous styles on caption shortcodes have been restored.</li>\n    <li>Cropping on touch screen devices is now supported.</li>\n    <li>A variety of strings such as error messages have been updated for better clarity.</li>\n    <li>The position of an attachment placeholder during uploads has been fixed.</li>\n    <li>Custom nonce functionality in the REST API JavaScript client has been made consistent throughout the code base.</li>\n    <li>Improved compatibility with PHP 7.2.</li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/\">This post has more information about all of the issues fixed in 4.9.5 if you&#x27;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.5</a> or venture over to Dashboard → Updates and click &quot;Update Now.&quot; Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.5:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1265578519-1/\">1265578519</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alexgso/\">alexgso</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrei0x309/\">andrei0x309</a>, <a href=\"https://profiles.wordpress.org/antipole/\">antipole</a>, <a href=\"https://profiles.wordpress.org/aranwer104/\">Anwer AR</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/blair-jersyer/\">Blair jersyer</a>, <a href=\"https://profiles.wordpress.org/bandonrandon/\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/codegrau/\">codegrau</a>, <a href=\"https://profiles.wordpress.org/conner_bw/\">conner_bw</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/designsimply/\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/electricfeet/\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/ericmeyer/\">ericmeyer</a>, <a href=\"https://profiles.wordpress.org/fpcsjames/\">FPCSJames</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/junaidkbr/\">Junaid Ahmed</a>, <a href=\"https://profiles.wordpress.org/kristastevens/\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/lancewillett/\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/nandorsky/\">nandorsky</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/qcmiao/\">qcmiao</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sebastienthivinfocom/\">Sebastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/kwonye/\">Will Kwon</a>, and <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5645\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/04/the-month-in-wordpress-march-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Apr 2018 08:00:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5632\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:317:\"With a significant new milestone and some great improvements to WordPress as a platform, this month has been an important one for the project. Read on to find out more about what happened during the month of March. WordPress Now Powers 30% of the Internet Over the last 15 years, the popularity and usage of [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4328:\"<p>With a significant new milestone and some great improvements to WordPress as a platform, this month has been an important one for the project. Read on to find out more about what happened during the month of March.\n\n</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress Now Powers 30% of the Internet</h2>\n\n<p>Over the last 15 years, the popularity and usage of WordPress has been steadily growing. That growth hit a significant milestone this month when <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">W3Techs reported that WordPress now powers over 30% of sites on the web.</a></p>\n\n<p>The percentage is determined based on W3Techs’ review of the top 10 million sites on the web, and it’s a strong indicator of the popularity and flexibility of WordPress as a platform.</p>\n\n<p>If you would like to have hand in helping to grow WordPress even further, <a href=\"https://make.wordpress.org/\">you can get involved today</a>.</p>\n\n<h2>WordPress Jargon Glossary Goes Live</h2>\n\n<p>The WordPress Marketing Team has been hard at work lately putting together <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">a comprehensive glossary of WordPress jargon</a> to help newcomers to the project become more easily acquainted with things.</p>\n\n<p>The glossary <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">is available here</a> along with a downloadable PDF to make it simpler to reference offline.</p>\n\n<p>Publishing this resource is part of an overall effort to make WordPress more easily accessible for people who are not so familiar with the project. If you would like to assist the Marketing Team with this, you can follow <a href=\"https://make.wordpress.org/marketing/\">the team blog</a> and join the #marketing channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>.</p>\n\n<h2>Focusing on Privacy in WordPress</h2>\n\n<p>Online privacy has been in the news this month for all the wrong reasons. It has reinforced the commitment of the GDPR Compliance Team to continue working on enhancements to WordPress core that allow site owners to improve privacy standards.</p>\n\n<p>The team&#x27;s work, and the wider privacy project, spans four areas: Adding tools which will allow site administrators to collect the information they need about their sites, examining the plugin guidelines with privacy in mind, enhancing privacy standards in WordPress core, and creating documentation focused on best practices in online privacy.</p>\n\n<p>To get involved with the project, you can <a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">view the roadmap</a>, <a href=\"https://make.wordpress.org/core/tag/gdpr-compliance/\">follow the updates</a>, <a href=\"https://core.trac.wordpress.org/query?status=!closed&amp;keywords=~gdpr\">submit patches</a>, and join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat\">Making WordPress Slack group</a>. Office hours are 15:00 UTC on Wednesdays.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>The WordPress Foundation has published <a href=\"https://wordpressfoundation.org/2017-annual-report/\">their annual report for 2017</a> showing just how much the community has grown over the last year.</li>\n    <li>The dates for WordCamp US <a href=\"https://2018.us.wordcamp.org/2018/03/13/announcing-wordcamp-us-2018/\">have been announced</a> — this flagship WordCamp event will be held on 7-9 December this year in Nashville, Tennessee.</li>\n    <li>WordPress 4.9.5 is due for release on April 3 — <a href=\"https://make.wordpress.org/core/2018/03/21/wordpress-4-9-5-beta/\">find out more here</a>.</li>\n    <li>Version 2.5 of Gutenberg, the new editor for WordPress core, <a href=\"https://make.wordpress.org/core/2018/03/29/whats-new-in-gutenberg-29th-march/\">was released this month</a> with a host of great improvements.</li>\n    <li>WordSesh, a virtual WordPress conference, <a href=\"http://wordsesh.com/\">is returning in July this year</a>.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em><br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5632\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: February 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/03/the-month-in-wordpress-february-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Mar 2018 08:41:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5613\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"Judging by the flurry of activity across the WordPress project throughout February, it looks like everyone is really getting into the swing of things for 2018. There have been a lot of interesting new developments, so read on to see what the community has been up to for the past month. WordPress 4.9.3 &#38; 4.9.4 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5936:\"<p>Judging by the flurry of activity across the WordPress project throughout February, it looks like everyone is really getting into the swing of things for 2018. There have been a lot of interesting new developments, so read on to see what the community has been up to for the past month.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress 4.9.3 &amp; 4.9.4</h2>\n\n<p>Early in the month, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">version 4.9.3 of WordPress was released</a>, including a number of important bug fixes. Unfortunately it introduced a bug that prevented many sites from automatically updating to future releases. To remedy this issue, <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\">version 4.9.4 was released</a> the following day requiring many people to manually update their sites.</p>\n\n<p>While this kind of issue is always regrettable, the good thing is that it was fixed quickly, and that not all sites had updated to 4.9.3 yet, which meant they bypassed the bug in that version.</p>\n\n<p>You can find out more technical information about this issue <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">on the Core development blog</a>.</p>\n\n<h2>The WordCamp Incubator is Back</h2>\n\n<p>In 2016, the Global Community Team ran an experimental program to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event. This program was dubbed the WordCamp Incubator, and it was so successful in the three cities where it ran that <a href=\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\">the program is back for 2018</a>.</p>\n\n<p>Right now, the Community Team is looking for cities to be a part of this year’s incubator by <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\">taking applications</a>. Additionally, each incubator community will need an experienced WordCamp organizer to assist them as a co-lead organizer for their event — if that sounds interesting to you, then you can <a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-co-lead-application\">fill in the application form for co-leads</a>.</p>\n\n<p>You can find out further information about the WordCamp Incubator <a href=\"https://make.wordpress.org/community/2018/02/19/wordcamp-incubator-program-2018-announcement/\">on the Community Team blog</a>.</p>\n\n<h2>WordPress Meetup Roundtables scheduled for March</h2>\n\n<p>In order to assist local WordPress meetup organizers with running their meetup groups, some members of the Community Team have organized <a href=\"https://make.wordpress.org/community/2018/02/23/wordpress-meetup-roundtables-scheduled-for-march/\">weekly meetup roundtable discussions through the month of March</a>.</p>\n\n<p>These will be run as video chats at 16:00 UTC every Wednesday this month and will be a great place for meetup organizers to come together and help each other out with practical ideas and advice.</p>\n\n<p>If you are not already in the WordPress meetup program and would like to join, you can find out more information in <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/\">the WordPress Meetup Organizer Handbook</a>.</p>\n\n<h2>GDPR Compliance in WordPress Core</h2>\n\n<p>The General Data Protection Regulation (GDPR) is an upcoming regulation that will affect all online services across Europe. In order to prepare for this, a working group has been formed to make sure that WordPress is compliant with the GDPR regulations.</p>\n\n<p>Aside from the fact that this will be a requirement for the project going forward, it will also have an important and significant impact on the privacy and security of WordPress as a whole. The working group has posted <a href=\"https://make.wordpress.org/core/2018/02/19/proposed-roadmap-tools-for-gdpr-compliance/\">their proposed roadmap</a> for this project and it looks very promising.</p>\n\n<p>To get involved in building WordPress Core, jump into the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>, and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>WPShout published <a href=\"https://wpshout.com/complete-guide-wordpress-security/\">a thorough guide to WordPress security</a>.</li>\n    <li>The Community Team has published interesting statistics from the WordCamp program in <a href=\"https://make.wordpress.org/community/2018/02/27/wordcamps-in-2016/\">2016</a> and <a href=\"https://make.wordpress.org/community/2018/02/28/wordcamps-in-2017/\">2017</a>.</li>\n    <li><a href=\"https://make.wordpress.org/community/2018/02/15/potential-addition-of-a-new-onboarding-team/\">An intriguing proposal has been made</a> for a new ‘Onboarding’ team to be started in the WordPress project.</li>\n    <li>The new editing experience for WordPress, named Gutenberg, continues to be actively developed with <a href=\"https://make.wordpress.org/core/2018/02/16/whats-new-in-gutenberg-16th-february/\">a feature-packed release</a> this past month.</li>\n    <li>The Advanced WordPress Facebook group <a href=\"https://www.youtube.com/watch?v=4vS_jR5-nIo\">held an interview with WordPress co-founder, Matt Mullenweg</a> about the Gutenberg project.</li>\n    <li><a href=\"https://make.wordpress.org/meta/2018/02/27/two-factor-authentication-on-wp-org/\">Two factor authentication is on its way to the WordPress.org network</a> — this will be a great improvement to the overall security of the project.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5613\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordCamp Incubator 2.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2018/02/wordcamp-incubator-2-0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Feb 2018 22:53:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5577\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:343:\"WordCamps are informal, community-organized events that are put together by a team of local WordPress users who have a passion for growing their communities. They are born out of active WordPress meetup groups that meet regularly and are able to host an annual WordCamp event. This has worked very well in many communities, with over [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2450:\"<p><a href=\"https://central.wordcamp.org/\">WordCamps</a> are informal, community-organized events that are put together by a team of local WordPress users who have a passion for growing their communities. They are born out of active WordPress meetup groups that meet regularly and are able to host an annual WordCamp event. This has worked very well in many communities, with over 120 WordCamps being hosted around the world in 2017.<br /></p>\n\n<p>Sometimes though, passionate and enthusiastic community members can’t pull together enough people in their community to make a WordCamp happen. To address this, we introduced <a href=\"https://wordpress.org/news/2016/02/experiment-wordcamp-incubator/\">the WordCamp Incubator program</a> in 2016.<br /></p>\n\n<p>The goal of the incubator program is <strong>to help spread WordPress to underserved areas by providing more significant organizing support for their first WordCamp event.</strong> In 2016, members of <a href=\"https://make.wordpress.org/community/\">the global community team</a> worked with volunteers in three cities — Denpasar, Harare and Medellín — giving direct, hands-on assistance in making local WordCamps possible. All three of these WordCamp incubators <a href=\"https://make.wordpress.org/community/2017/06/30/wordcamp-incubator-report/\">were a great success</a>, so we&#x27;re bringing the incubator program back for 2018.<br /></p>\n\n<p>Where should the next WordCamp incubators be? If you have always wanted a WordCamp in your city but haven’t been able to get a community started, this is a great opportunity. We will be taking applications for the next few weeks, then will get in touch with everyone who applied to discuss the possibilities. We will announce the chosen cities by the end of March.<br /></p>\n\n<p><strong>To apply, </strong><a href=\"https://wordcampcentral.polldaddy.com/s/wordcamp-incubator-program-2018-city-application\"><strong>fill in the application</strong></a><strong> by March 15, 2018.</strong> You don’t need to have any specific information handy, it’s just a form to let us know you’re interested. You can apply to nominate your city even if you don’t want to be the main organizer, but for this to work well we will need local liaisons and volunteers, so please only nominate cities where you live or work so that we have at least one local connection to begin.<br /></p>\n\n<p>We&#x27;re looking forward to hearing from you!<br /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5577\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.9.4 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/02/wordpress-4-9-4-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 16:17:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5559\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:350:\"WordPress 4.9.4 is now available. This maintenance release fixes a severe bug in 4.9.3, which will cause sites that support automatic background updates to fail to update automatically, and will require action from you (or your host) for it to be updated to 4.9.4. Four years ago with WordPress 3.7 &#8220;Basie&#8221;, we added the ability [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Dion Hulse\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1823:\"<p>WordPress 4.9.4 is now available.</p>\n<p>This maintenance release fixes a severe bug in 4.9.3, which will cause sites that support automatic background updates to fail to update automatically, and will require action from you (or your host) for it to be updated to 4.9.4.</p>\n<p>Four years ago with <a href=\"https://wordpress.org/news/2013/10/basie/\">WordPress 3.7 &#8220;Basie&#8221;</a>, we added the ability for WordPress to self-update, keeping your website secure and bug-free, even when you weren&#8217;t available to do it yourself. For four years it&#8217;s helped keep millions of installs updated with very few issues over that time. Unfortunately <a href=\"https://wordpress.org/news/2018/02/wordpress-4-9-3-maintenance-release/\">yesterdays 4.9.3 release</a> contained a severe bug which was only discovered after release. The bug will cause WordPress to encounter an error when it attempts to update itself to WordPress 4.9.4, and will require an update to be performed through the WordPress dashboard or hosts update tools.</p>\n<p>WordPress managed hosting companies who install updates automatically for their customers can install the update as normal, and we&#8217;ll be working with other hosts to ensure that as many customers of theirs who can be automatically updated to WordPress 4.9.4 can be.</p>\n<p>For more technical details of the issue, we&#8217;ve <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">posted on our Core Development blog</a>. For a full list of changes, consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">list of tickets</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.4</a> or visit Dashboard → Updates and click “Update Now.”</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"5559\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 29 May 2018 00:31:22 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 25 May 2018 08:06:43 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130911080210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(186, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1527597080', 'no'),
(187, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1527553880', 'no'),
(188, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1527597084', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(189, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.7 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1997\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/05/28/version-4-0-7-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:957:\"<p>Version 4.0.7 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>\n<p>4.0.7 contains the following changes:</p>\n<ul>\n<li>Based on user feedback, the link on &#8220;Learn how your comment data is processed.&#8221; in the optional privacy notice now has a <code>target</code> of <code>_blank</code> and opens in a new tab/window.</li>\n<li>Updated the in-admin privacy notice to use the term &#8220;comment&#8221; instead of &#8220;contact&#8221; in &#8220;Akismet can display a notice to your users under your comment forms.&#8221;</li>\n<li>Only show in-admin privacy notice if Akismet has an API Key configured</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 28 May 2018 16:34:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Josh Smith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.0.6 of the Akismet WordPress Plugin Is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1989\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://blog.akismet.com/2018/05/26/version-4-0-6-of-the-akismet-wordpress-plugin-is-now-available/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1494:\"<p>Version 4.0.6 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available. If you are paying attention to version numbers, you will notice that we went from 4.0.3 to 4.0.6 in one day. This is because we got <a href=\"https://wordpress.org/support/topic/help-fatal-error-after-update/\">user reports</a> of issues with older versions of PHP with our intermediary versions, which we jumped on fixing right away.</p>\n<p>4.0.6 contains the following changes:</p>\n<ul>\n<li>\n<p class=\"p1\"><span class=\"s1\">Added a hook to provide Akismet-specific </span><span class=\"s2\">privacy</span><span class=\"s1\"> information for a site&#8217;s </span><span class=\"s2\">privacy</span><span class=\"s1\"> policy.</span></p>\n</li>\n<li>\n<p class=\"p1\"><span class=\"s1\">Added tools to control the display of a </span><span class=\"s2\">privacy</span><span class=\"s1\"> related notice under comment forms.</span></p>\n</li>\n<li>\n<p class=\"p1\"><span class=\"s1\">Fixed HTML in activation failure message to close META and HEAD tag properly.</span></p>\n</li>\n<li>\n<p class=\"p1\"><span class=\"s1\">Fixed a bug that would sometimes prevent Akismet from being correctly auto-configured.</span></p>\n</li>\n</ul>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 17:32:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Stephane Daury\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"Post Status: The History of the Web, and WordPress’s 15th Birthday — Draft Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://poststatus.com/the-history-of-the-web-and-wordpresss-15th-birthday-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2249:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian is joined by guest-host <a href=\"https://twitter.com/jay_hoffmann\">Jay Hoffmann</a>. Jay is the Lead Developer at <a href=\"https://reaktivstudios.com/\">Reaktiv Studios</a> and the creator and curator of <a href=\"https://thehistoryoftheweb.com/\">The History of the Web</a>. It is a good time to discuss the history of the web with Jay, as WordPress is ready to celebrate <a href=\"https://ma.tt/2018/05/wordpress-at-15/\">its 15th birthday</a>.</p>\n<p>Be sure to subscribe to Jay&#8217;s newsletter on the History of the Web website to receive new articles on such a fascinating project.</p>\n<p>Brian and Jay discuss his work at Reaktiv, his prior work at Sesame Street Workshop and Random House, and the project he&#8217;s worked on for two years now documenting the web&#8217;s timeline and history. It was a fun discussion on all fronts.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://thehistoryoftheweb.com/\">The History of the Web</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/the-story-of-flash/\">The history of Flash</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/the-story-of-wordpress/\">The story of WordPress</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/web-fonts/\">The decade long path to web fonts</a></li>\n</ul>\n<h3>Sponsor: WooCommerce</h3>\n<p><a href=\"https://woocommerce.com/\">WooCommerce</a> makes the most customizable eCommerce software on the planet, and it’s the most popular too. You can build just about anything with WooCommerce. <a href=\"https://woocommerce.com/\">Try it today</a>, and thanks to the team at WooCommerce being a Post Status partner</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 21:42:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: The First Release of WordPress Turns 15 Years Old\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80964\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wptavern.com/the-first-release-of-wordpress-turns-15-years-old\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2945:\"<p>This Sunday, May 27th, marks the 15th anniversary of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first release</a> of WordPress. Users are celebrating the occasion across the world with <a href=\"https://twitter.com/WPCapeTown/status/999696890349457408\">huge cakes</a>, <a href=\"https://twitter.com/outtheboxthemes/status/999995112879984640\">cupcakes</a>, <a href=\"https://twitter.com/kevinwhoffman/status/999444582445273088\">memorable photos</a>, <a href=\"https://twitter.com/CristianoZanca/status/999723447789015040\">parties</a>, and <a href=\"https://twitter.com/ChapitreOnze/status/999738180361441280\">meetups</a>.<br />.<br /></p>\n\n\n	<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Now that’s a cake! <a href=\"https://twitter.com/hashtag/wp15?src=hash&ref_src=twsrc%5Etfw\">#wp15</a> <a href=\"https://t.co/i8lAr4SLsO\">pic.twitter.com/i8lAr4SLsO</a></p>&mdash; WordPress Cape Town (@WPCapeTown) <a href=\"https://twitter.com/WPCapeTown/status/999696890349457408?ref_src=twsrc%5Etfw\">May 24, 2018</a></blockquote>\n\n\n<p>To see if there is an event near you, visit the official <a href=\"https://wp15.wordpress.net/\">WordPress 15th anniversary site</a> and type your city into the search box. You can also follow the festivities on Twitter by browsing the <a href=\"https://twitter.com/search?q=%23wp15&src=typd\">#WP15</a> hashtag.</p>\n\n<p>If you&#8217;re thinking about hosting a party and want to use the WordPress logo on a cake or other bakery items, you&#8217;re in luck. The WordPress Foundation has amended the <a href=\"https://wordpressfoundation.org/trademark-policy/\">WordPress Trademark Policy</a> to allow people to put the logo on baked goods.<br /></p>\n\n<blockquote class=\"wp-block-quote\">\n	<p>*** Attention: If you’re interested in putting the WordPress logo on a cake, cookie, cupcake, babka, or other celebratory food in honor of the WordPress 15th Anniversary… yes, this is OK under the Trademark policy. ***</p><cite>WordPress Trademark Policy </cite></blockquote>\n\n<p>In 2015, <a href=\"https://wptavern.com/93digital-publishes-wordpress-time-machine\">we highlighted</a> <a href=\"https://93digital.co.uk/\">93Digital</a>&#8216;s WordPress Time Machine. The company has continued to <a href=\"https://93digital.co.uk/wphistory/\">update the timeline</a> with images of the WordPress 4.6, 4.7, 4.8, and 4.9 backends along with their default themes. The timeline is a quick way to see how WordPress has evolved over 15 years. <br /></p>\n\n<img />\n	93Digital WordPress Time Machine\n\n\n<p>Don&#8217;t forget that you can use the coupon code <strong>CELEBRATEWP15</strong> to take 15% off any swag you purchase on the <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">WordPress Swag store</a>. The coupon code is good through the end of the year. <br /></p>\n\n<p>Will you be celebrating WordPress&#8217; birthday this weekend? If so, how and where? Let us know!<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 19:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Matt: WordPress at 15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48110\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"https://ma.tt/2018/05/wordpress-at-15/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2065:\"<img />\n\n<p>This weekend, May 27, marks <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">the 15th anniversary of the first release of WordPress</a>. It is an understatement to say that I am immensely proud of what this global community has become, and what it has created. More than 30% of the top sites on the web are now powered by WordPress, I&#8217;m writing this in <a href=\"https://wordpress.org/plugins/gutenberg/\">our next-generation editor Gutenberg</a>, and every day I meet someone who is building something interesting on WordPress or pushing our shared project in bold new directions. If you can believe it, growth has actually been accelerating.</p>\n\n<p>There&#8217;s so much: A group of high school students bands together to <a href=\"https://marchforourlives.com/home/\">build a national movement on WordPress</a>; a president builds the foundation for <a href=\"https://www.obama.org/\">his own next chapter on WordPress</a>; the <a href=\"https://www.whitehouse.gov/\">current WhiteHouse.gov</a> switches over; or when someone like Hajj Flemings brings thousands of small businesses <a href=\"https://rebrand.city/\">onto the open web for the first time</a>, with WordPress.</p>\n\n<p>To celebrate #WP15, hundreds of local WordPress communities around the world will be throwing parties. <a href=\"https://wp15.wordpress.net/\">Go here to find a meetup in your area</a>. <br /></p>\n\n<p>I am thankful to <a href=\"https://mikelittle.org/\">Mike</a> for helping make WordPress a reality, many dedicated folks in the years since, and to all of you who are dreaming up the next 15 years. <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f604.png\" alt=\"😄\" class=\"wp-smiley\" /></p>\n\n<p>Many in the open source world are like Moses in that they speak of the Promised Land but will never set foot there. If I spend the rest of my life working and we don’t reach almost all websites being powered by open source and the web being substantially open, I will die content because I already see younger generations picking up the banner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 19:30:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"Dev Blog: WordPress.org Privacy Policy Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6047\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:656:\"<p>The <a href=\"https://wordpress.org/about/privacy/\">WordPress.org privacy policy</a> has been updated, hurray! While we weren&#8217;t able to remove <strong>all</strong> the long sentences, we hope you find the revisions make it easier to understand:</p>\n<ul>\n<li>how we collect and use data,</li>\n<li>how long the data we collect is retained, and</li>\n<li>how you can request a copy of the data you&#8217;ve shared with us.</li>\n</ul>\n<p>There hasn&#8217;t been any change to the data that WordPress.org collects or how that data is used; the privacy policy just provides more detail now. Happy reading, and thanks for using WordPress!</p>\n<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 May 2018 08:06:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WPWeekly Episode 317 – Minor Major Major Minor Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80952&preview=true&preview_id=80952\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/wpweekly-episode-317-minor-major-major-minor-release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2307:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss Adobe&#8217;s acquisition of Magento, feedback regarding WordPress 4.9.6, when 4.9.7 might ship, an unofficial WordCamp app for iOS, and whether or not it&#8217;s time for WordPress auto updates to occur for every version. I describe what it&#8217;s like having poison ivy on my face and my continuing woes with lawn care equipment.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://techcrunch.com/2018/05/21/adobe-to-acquire-magento-for-1-6-b/\">Adobe to acquire Magento for $1.68B</a><br />\n<a href=\"https://core.trac.wordpress.org/ticket/44142\">WordPress 4.9.7 will include patch to fix an issue that caused fatal 500 errors</a><br />\n<a href=\"https://make.wordpress.org/community/2018/05/18/wordpress-logos-on-cakes/\">You can use the WordPress logo on bakery goods to celebrate WordPress’ birthday</a><br />\n<a href=\"https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\">Marcel Schmitz Releases Unofficial WordCamp for iOS App</a><br />\n<a href=\"https://themeshaper.com/2018/05/22/music-a-gutenberg-powered-theme/\">Music: A Gutenberg-Powered Theme</a><br />\n<a href=\"https://deliciousbrains.com/gdpr-local-development/\">GDPR for WordPress Developers: Announcing the (Free) Anonymization Addon    </a><br />\n<a href=\"https://buddypress.org/2018/05/buddypress-3-0-0-apollo/\">BuddyPress 3.0.0 “Apollo”</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://www.kickstarter.com/projects/1920546253/panic-mode\">Panic Mode</a> the card game. A cooperative card game of office politics during Disaster Recovery for up to 8 players.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 30th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #317:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 May 2018 19:44:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Why Sites Didn’t Automatically Update to WordPress 4.9.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80940\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/why-sites-didnt-automatically-update-to-wordpress-4-9-6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2086:\"<p>WordPress 4.9.6 was <a href=\"https://wptavern.com/wordpress-4-9-6-released-with-user-data-export-and-removal-tools\">released last</a> week and was labeled a minor release. Minor releases trigger WordPress&#8217; automatic update system. Shortly after its release, some users <a href=\"https://wordpress.org/support/topic/4-9-6-not-updating-automatically/\">began questioning</a> why their sites were not automatically updating to 4.9.6. I wondered the same thing after logging into a site I maintain and discovering it had not updated.</p>\n\n<p>It turns out that the WordPress Development team disabled the auto update system after discovering that a few plugins were incorrectly loading the new privacy features and <a href=\"https://core.trac.wordpress.org/ticket/44142\">triggering fatal 500 errors</a> on the frontend of user&#8217;s sites.</p>\n\n<p>The issue stems from privacy code that includes a file that was not expected to be loaded without the rest of the WordPress admin. Mika Epstein, a volunteer member of the plugin review team, personally contacted the affected plugin developers last weekend to help rectify the issue.</p>\n\n<p>A recent scan of the WordPress plugin directory shows that there are no other plugins incorrectly loading the privacy code. However, automatic updates for WordPress 4.9.6 remain disabled until the release of WordPress 4.9.7.</p>\n\n<p>WordPress 4.9.7 will fix the issue described above and include a few other bug fixes. Since auto updates will be enabled for 4.9.7, sites running on 4.9.5 should auto update to 4.9.7 when it&#8217;s released. WordPress 4.9.7 is expected to be released sometime after the Memorial Day holiday (Monday, May 28th). <del>Until then, users will need to manually update to 4.9.6.</del></p>\n\n<h3><strong>*Updated 5/23/2018 9:28 PM EST*</strong></h3>\n\n<p>Earlier this evening, Gary Pendergast enabled auto updates for WordPress 4.9.6 and the team is monitoring for any new errors that are triggered. So far, 20K sites have updated without any notable problems. </p>\n\n<p><del></del></p>\n\n<p><br /></p><br /></p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 May 2018 00:32:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"HeroPress: Accessibility Where It Matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2551\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://heropress.com/accessibility-where-it-matters/#utm_source=rss&utm_medium=rss&utm_campaign=accessibility-where-it-matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3223:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/07/BeautyOfWordpress-HeroPress-corrected-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The beauty of WordPress and its community is that we can create opportunities for ourselves.\" /><p>One of the things that I&#8217;ve always loved about WordPress is how it provides things to people. It provides a living to those who have none, it provides community to those without one, and it can provide tools to those who need them.</p>\n<p>Amanda Rush is blind, and navigates a world that is often hostile to blind people. WordPress developers work very very hard to make the WordPress software usable by people with no sight.</p>\n<p>A wonderful by-product of that is that Amanda and people like her can build a career for themselves, without depending on a physically friendly workplace and a physically friendly transit.</p>\n<p>WordPress provides Freedom to those who deal with a world that&#8217;s built to be hostile toward them.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/finding-freedom-wordpress/\">Finding Freedom in WordPress</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Accessibility Where It Matters\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Accessibility%20Where%20It%20Matters&via=heropress&url=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Accessibility Where It Matters\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F&title=Accessibility+Where+It+Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Accessibility Where It Matters\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/accessibility-where-it-matters/&media=https://heropress.com/wp-content/uploads/2015/07/BeautyOfWordpress-HeroPress-corrected-150x150.jpg&description=Accessibility Where It Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Accessibility Where It Matters\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/accessibility-where-it-matters/\" title=\"Accessibility Where It Matters\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/accessibility-where-it-matters/\">Accessibility Where It Matters</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 May 2018 12:00:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Marcel Schmitz Releases Unofficial WordCamp for iOS App\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80910\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2623:\"<p>Marcel Schmitz, founder of <a href=\"https://hellodev.us/\">hellodev</a>, has <a href=\"https://schmitzoide.blog/wordcamp-app-an-ios-app-for-all-wordcampers-around-the-world/\">released</a> WordCamp for iOS for free on the <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">App Store</a>. The app utilizes the WordPress REST API endpoints from <a href=\"https://central.wordcamp.org/\">WordCamp Central</a> and hellodev to display sessions, speakers, and news from an event&#8217;s official site.</p>\n\n<p>Schmitz used <a href=\"https://2018.porto.wordcamp.org/\">WordCamp Porto</a> to test features within the app. Sessions are displayed in a timeline and if you give the app permission to access your device&#8217;s calendar, you can add sessions to it and create reminders.</p>\n\n<img />\n	Session Timeline\n\n\n<p>When viewing a session in the app, the screen displays the time the session takes place, name of the speaker with a quick link to a bio, session description, and a section at the bottom to write notes.</p>\n\n<p>There&#8217;s also an option on the top-right corner to mark sessions as favorites. However, during testing, marking a session as a favorite would crash the app.</p>\n\n<img />\n	Take Notes While Watching a Session\n\n\n<p>The app displays all of the necessary information concerning the event without the need to browse to the actual site. Schmitz says he plans to add more information about the city, venue, and the ability to call an UBER in future updates.</p>\n\n<p>WordCamp is a <a href=\"https://wordpressfoundation.org/trademark-policy/\">trademark of the WordPress Foundation</a>. Although Schmitz clearly states that WordCamp for iOS is not the official app for all WordCamps, he does not mention receiving permission from the Foundation to use WordCamp in the name. Unless his app is adopted to be the official App for iOS devices, it&#8217;s likely he will need to change the name.</p>\n\n<p>Searching the App Store for WordCamp only produces two results. Schmitz&#8217;s app and a WordCamp EU Paris Guide. There&#8217;s an official WordCamp App for Android available on <a href=\"https://play.google.com/store/apps/details?id=org.wordcamp.android&hl=en_US\">Google Play</a> and <a href=\"https://github.com/wordpress-mobile/WordCamp-Android\">GitHub</a> but the project has seen little activity in the last three years.</p>\n\n<p>WordCamp for iOS fills a void and gives users convenient access to a lot of relevant WordCamp information. To check it out for yourself, you can download it for free from the <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">App Store</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 21 May 2018 20:54:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"BuddyPress: BuddyPress 3.0.0 “Apollo”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=273108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://buddypress.org/2018/05/buddypress-3-0-0-apollo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3300:\"<p>BuddyPress 3.0.0 &#8220;Apollo&#8221; is now available for immediate download from the WordPress.org plugin repository, or right from your WordPress Dashboard. &#8220;Apollo&#8221; focuses on various improvement for developers, site builders and site managers.</p>\n<h4>Say hello to “Nouveau”!</h4>\n<p>A bold reimagining of our legacy templates, Nouveau is our celebration of <a href=\"https://buddypress.org/2018/03/10-years/\">10 years of BuddyPress</a>! Nouveau delivers modern markup with fresh JavaScript-powered templates, and full integration with WordPress’ Customizer, allowing more out-of-the-box control of your BuddyPress content than ever before.</p>\n<p>Nouveau provides vertical and horizontal layout options for BuddyPress navigation, and for the component directories, you can choose between a grid layout, and a classic flat list.</p>\n<p>Nouveau is fully compatible with WordPress. Existing BuddyPress themes have been written for our legacy template pack, and until they are updated, resolve any compatibility issues by choosing the legacy template pack option in <strong>Settings &gt; BuddyPress</strong>.</p>\n<h4>Support for WP-CLI</h4>\n<p><a href=\"https://wp-cli.org/\">WP-CLI</a> is the command-line interface for WordPress. You can update plugins, configure multisite installs, and much more, without using a web browser. With this version of BuddyPress, you can now manage your BuddyPress content from WP-CLI.</p>\n<h4>Control site-wide notices from your dashboard</h4>\n<p>Site Notices are a feature within the Private Messaging component that allows community managers to share important messages with all members of their community. With Nouveau, the management interface for Site Notices has been removed from the front-end theme templates.</p>\n<p>Explore the new management interface at <strong>Users &gt; Site Notices</strong>.</p>\n<h4>New profile field type: telephone numbers</h4>\n<p>A new telephone number field type has been added to the Extended Profiles component, with support for all international number formats. With a modern web browser, your members can use this field type to touch-to-dial a number directly.</p>\n<h4>BuddyPress: leaner, faster, stronger</h4>\n<p>With every BuddyPress version, we strive to make performance improvements alongside new features and fixes; this version is no exception. Memory use has been optimised — within active components, we now only load each individual code file when it’s needed, not before.</p>\n<p>Most notably, the <a href=\"https://bpdevel.wordpress.com/2017/12/07/legacy-forums-support-will-be/\">Legacy Forums component has been removed</a> after 9 years of service. If your site was using Legacy Forums, you need to <a href=\"https://codex.buddypress.org/getting-started/guides/migrating-from-old-forums-to-bbpress-2/\">migrate to the bbPress plugin</a>.</p>\n<h4>Make mine Apollo&#8217;s</h4>\n<p>In north-east London, Stoke Newington &#8212; or Stokey, as it&#8217;s affectionately known &#8212; is an area awash with newly-opening restaurants, amidst lapping waves of encroaching gentrification. Apollo&#8217;s is an authentically Neapolitan pizza place on the High Street, serving fantastically tasty yet uncomplicated pizzas. If you ever find yourself in north London, don&#8217;t miss Apollo&#8217;s!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 May 2018 00:23:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Paul Gibbs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: WordPress 4.9.6 Released With User Data Export and Removal Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80898\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/wordpress-4-9-6-released-with-user-data-export-and-removal-tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2428:\"<p><a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">WordPress 4.9.6</a> has been released and is considered a privacy and maintenance release. Traditionally, <a href=\"https://make.wordpress.org/core/handbook/about/release-cycle/version-numbering/\">minor versions</a> contain security and bug fixes. This release is different as it includes a number of privacy related features such as:</p>\n\n<ul>\n	<li>Privacy Policy page template/creation</li>\n	<li>User Data Request Handling</li>\n	<li>User Data Export and Removal tools</li>\n	<li>Cookie Opt-in for Comments</li>\n	<li>Other features related to <a href=\"https://www.eugdpr.org/\">GDPR Compliance</a></li>\n</ul>\n\n<p>Earlier this month, I <a href=\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\">reviewed the privacy features</a> in 4.9.6 and since that post was published, the team has made a number of adjustments. For example, site admins will receive an email when a user confirms a personal data export or removal request and the text on the privacy policy template page has been simplified. <br /></p>\n\n<p>The privacy features in WordPress 4.9.6 are largely the result of a <a href=\"https://wptavern.com/new-team-forms-to-facilitate-gdpr-compliance-in-wordpress-core\">new team of volunteers</a> that was formed earlier this year. The team is already hard at work on improving these features for future versions of WordPress.</p>\n\n<p>In addition to privacy enhancements, more than 50 bugs have been fixed. &#8216;Mine&#8217; has been added as a filter in the WordPress Media Library and when viewing a plugin in the backend, it will display the minimum PHP version that&#8217;s required.</p>\n\n<p>The WordPress Development team has published an <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">update guide</a> that provides links to technical information related to features in 4.9.6. In addition, there&#8217;s a <a href=\"https://make.wordpress.org/core/2018/05/17/changes-that-affect-theme-authors-in-wordpress-4-9-6/\">guide available for Theme Authors</a> as styling adjustments may be necessary.</p>\n\n<p>As this is a minor release, sites are in the process of updating automatically. If you encounter an issue with 4.9.6, please report it on the <a href=\"https://wordpress.org/support/forum/how-to-and-troubleshooting/\">Support Forums</a>. <br /></p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 22:46:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"Dev Blog: WordPress 4.9.6 Privacy and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10732:\"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&ssl=1\" alt=\"A decorative header featuring the text \" />\n\n<h2>Privacy</h2>\n\n<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>\n\n<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>\n\n<p>You can learn more about the GDPR from the European Commission&#8217;s <a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">Data Protection page</a>.<br /></p>\n\n<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>\n\n<h2>Comments</h2>\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&ssl=1\" alt=\"A screenshot of a comment form, where the new \" name=\"name\" />\n\n<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>\n\n<h2>Privacy Policy Page</h2>\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" />\n\n<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>\n\n<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>\n\n<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href=\"https://developer.wordpress.org/plugins/privacy/\">Learn more in our Privacy section of the Plugin Handbook</a>.</p>\n\n<h2>Data Handling</h2>\n\n<img src=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" />\n\n<div class=\"wp-block-columns has-2-columns\">\n		<h3 class=\"layout-column-1\">Data Export</h3>\n	\n		<p class=\"layout-column-1\">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>\n	\n		<h3 class=\"layout-column-2\">Data Erasure</h3>\n	\n		<p class=\"layout-column-2\">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>\n	</div>\n\n<blockquote class=\"wp-block-quote\">\n	<p>Howdy,</p>\n	<p>A request has been made to perform the following action on your account:<br /> </p>\n	<p><strong>Export Personal Data</strong><br /> </p>\n	<p>To confirm this, please click on the following link:<br /><a href=\"https://wordpress.org/news/feed/\">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>\n	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>\n	<p>This email has been sent to <a href=\"https://wordpress.org/news/feed/\">you@example.com</a>.<br /> </p>\n	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href=\"http://wordpress.org\"><em> http://wordpress.org</em></a></p>\n</blockquote>\n\n<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Maintenance</h2>\n\n<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>\n\n<ul>\n	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>\n	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>\n	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>\n	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>\n\n<p class=\"has-background has-very-light-gray-background-color\">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 19:21:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Allen Snook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: WPWeekly Episode 316 – Stone Cold WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80887&preview=true&preview_id=80887\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/wpweekly-episode-316-stone-cold-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2175:\"<p>While editing this episode, I noticed that my voice routinely goes from quiet to loud. I&#8217;m not sure why this is and suspect it has something to do with Windows 10. I apologize for the audio quality and will try to have it fixed by next week&#8217;s show.</p>\n<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss the recent acquisition of the Google Analytics Dashboard for WordPress plugin, rebuilding the WordPress edit screen, and an in-depth conversation on the concerns expressed surrounding WordPress 4.9.6. We send a shout out to Alex Mills, get an update on John&#8217;s stolen goats, and rant about lawn care power equipment.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://exactmetrics.com/google-analytics-dashboard-wordpress-gadwp-now-exactmetrics/\">Google Analytics Dashboard for WordPress (GADWP) is Now ExactMetrics</a><br />\n<a href=\"https://www.satellitewp.com/en/warning-wordpress-4-9-6-really-is-a-major-update/\">Warning: WordPress 4.9.6 Really is a Major Update</a><br />\n<a href=\"https://humanmade.com/2018/05/11/rebuilding-wordpress-edit-screen/\">Rebuilding the WordPress Edit Screen</a><br />\n<a href=\"https://techcrunch.com/2018/05/10/mediums-latest-pivot-leaves-some-independent-media-in-the-lurch/\">Medium’s latest pivot leaves some independent media in the lurch</a><br />\n<a href=\"https://alex.blog/2018/05/15/vision-update-better-than-expected-but-serious-damage-was-done/\">Vision Update: Better Than Expected But Serious Damage Was Done</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 23rd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #316:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 01:12:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"HeroPress: Succeeding in Egypt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2548\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://heropress.com/succeeding-in-egypt/#utm_source=rss&utm_medium=rss&utm_campaign=succeeding-in-egypt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2936:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/09/Fail-HeroPress-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: If you didn’t fail, you probably haven’t *truly* succeeded yet.\" /><p>This week&#8217;s HeroPress rewind is by Shady Sharaf from Cairo, Egypt. Shady is really the kind of person I had in mind when I started HeroPress: talented and smart, but isolated. The WordPress community is relatively small in Cairo, given the number of people that live there. So he leans on the international community for the kinds of relationships others (who can just go to WordCamps whenever they want) might take for granted.</p>\n<p>Shady&#8217;s essay came to me during a time of unrest in Egypt, yet he still got up every morning, took care of his family, and got work done. He&#8217;s one of my heroes for a number of reasons, as well as a good friend.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/ambition-persistence-self-motivation/\">Ambition, Persistence, and Self-Motivation</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Succeeding in Egypt\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Succeeding%20in%20Egypt&via=heropress&url=https%3A%2F%2Fheropress.com%2Fsucceeding-in-egypt%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Succeeding in Egypt\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fsucceeding-in-egypt%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fsucceeding-in-egypt%2F&title=Succeeding+in+Egypt\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Succeeding in Egypt\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/succeeding-in-egypt/&media=https://heropress.com/wp-content/uploads/2015/09/Fail-HeroPress-150x150.jpg&description=Succeeding in Egypt\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Succeeding in Egypt\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/succeeding-in-egypt/\" title=\"Succeeding in Egypt\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/succeeding-in-egypt/\">Succeeding in Egypt</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 May 2018 11:55:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: To Free Up Resources, WordPress.org Plugin Review Team Begins Closing Unused Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80872\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://wptavern.com/to-free-up-resources-wordpress-org-plugin-review-team-begins-closing-unused-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1561:\"<p>In an effort to free up resources on WordPress.org, the WordPress Plugin Review Team <a href=\"https://make.wordpress.org/plugins/2018/05/14/closing-unused-plugins/\">is closing</a> unused plugins. An unused plugin is one that has been approved for the directory but no code was uploaded by the developer in six months or more.<br /></p>\n\n<p>An unused plugin reserves a URL slug on WordPress.org and prevents others from using it. It also takes resources away from active plugins. In addition, if plugin authors are submitting multiple plugins without taking advantage of the resources WordPress.org offers, submissions from that author will be suspended.</p>\n\n<p>WordPress.org provides plugin authors free hosting as a convenience and is not a listing service. Mika Epstein, a member of the plugin review team, says that some people have taken advantage of the submission process to receive a code audit, &#8220;We’ve found out some people like to get a review as a ‘free’ security review instead of hiring people for that work.&#8221;</p>\n\n<p>To find out what happens when a plugin is closed and how to close a plugin you maintain, check out <a href=\"https://developer.wordpress.org/plugins/wordpress-org/plugin-developer-faq/#closed-plugins\">this guide</a> in the Plugin Developer FAQ. Also, if you want to use a plugin name that&#8217;s currently held by a closed, unused plugin, you can <a href=\"https://developer.wordpress.org/plugins/wordpress-org/take-over-an-existing-plugin/\">request to take over the slug</a> by contacting the review team.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 May 2018 21:17:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WPTavern: WordPress 4.9.6 RC1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80843\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wptavern.com/wordpress-4-9-6-rc1-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1551:\"<p>WordPress 4.9.6 Release Candidate 1 <a href=\"https://make.wordpress.org/core/2018/05/10/wordpress-4-9-6-release-candidate/\">is available</a> for download and addresses some of the issues that have been reported in beta 1. Since the beta&#8217;s release, there have been 30 bugs fixed.</p>\n\n<p>Many of the fixes in this release are focused on the new privacy tools that help with GDPR compliance. The verbiage has been changed in multiple areas to make explanations and actions clearer. For example, the Privacy Policy introduction text has been <a href=\"https://core.trac.wordpress.org/ticket/43933\">shortened and more user friendly</a>.</p>\n\n<p>One notable bug fix is that site administrators now receive an email when a Personal Data Export/Removal request is confirmed. In a future version of WordPress, it&#8217;s possible that the <a href=\"https://core.trac.wordpress.org/ticket/44000\">notification bubbles</a> will be extended to display confirmed requests.</p>\n\n<p>A full list of changes in this release can be <a href=\"https://core.trac.wordpress.org/query?status=closed&type=defect+(bug)&milestone=4.9.6&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&desc=1&order=type\">found on Trac</a>. This minor release needs more testing than usual due to the privacy tools and enhancements introduced. Please test 4.9.6 on staging site or local server and if you encounter any issues, report them on the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta/Release Candidate section</a> of the forums.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 12 May 2018 01:37:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: WPWeekly Episode 315 – WordPress 4.9.6, Gutenberg, and Stolen Goats\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80834&preview=true&preview_id=80834\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/wpweekly-episode-315-wordpress-4-9-6-gutenberg-and-stolen-goats\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2075:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> starts the show by giving everyone a status update on bbPress 2.6. We review the new privacy features in WordPress 4.9.6 Beta 1 and provide feedback. We tell you what&#8217;s new in Gutenberg 2.8 and comment on WooCommerce&#8217;s new Products insertion block. Last but not least, John describes <a href=\"https://jjj.blog/2018/05/a-lady-stole-our-goats/\">watching security footage of a woman stealing metal goats</a> off his property at 4:30 AM.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\">WordPress 4.9.6 Beta 1 Adds Tools for GDPR Compliance</a><br />\n<a href=\"https://make.wordpress.org/core/2018/05/08/4-9-6-schedule-changes/\">4.9.6 Schedule Changes</a><br />\n<a href=\"https://make.wordpress.org/core/2018/05/04/whats-new-in-gutenberg-may-the-4th/\">What’s new in Gutenberg? (May the 4th)</a><br />\n<a href=\"https://woocommerce.com/2018/05/making-it-easier-to-add-products-to-posts-and-pages-with-the-products-block-for-gutenberg/\">Making it easier to add products to posts and pages with the Products block for Gutenberg</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/05/09/woocommerce-3-4-rc1/\">WooCommerce 3.4 RC1</a><br />\n<a href=\"https://wptavern.com/recap-of-attending-the-first-wordcamp-retreat\">Recap of Attending the First WordCamp Retreat</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 16th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #315:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 22:21:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"HeroPress: Finding Family Wherever You Can\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2544\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/finding-family-wherever-you-can/#utm_source=rss&utm_medium=rss&utm_campaign=finding-family-wherever-you-can\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3162:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/050918-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Without the WordPress community, I don\'t know where I would be now.\" /><p>I don&#8217;t actually remember when I met Jeff Matson.  As I look back over the last 8 years I know there were times I didn&#8217;t know him, and then suddenly he was there, immediately a good friend. And then, for all that I thought I knew him, his HeroPress essay shed an entirely new light on who he is.</p>\n<p>I believe that what we know about people shapes how we view them. Now I know that Jeff plowed through some crazy, dangerous, harmful things in his young life and somehow still ended up a stable, intelligent, reliable adult. Many kids in that life don&#8217;t make it this far.</p>\n<p>I&#8217;m proud of what the WordPress community has contributed to his life, and I&#8217;m grateful to Jeff for what he&#8217;s has contributed to this community.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/out-of-the-darkness/\">Out Of The Darkness</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Finding Family Wherever You Can\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Finding%20Family%20Wherever%20You%20Can&via=heropress&url=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Finding Family Wherever You Can\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F&title=Finding+Family+Wherever+You+Can\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Finding Family Wherever You Can\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/finding-family-wherever-you-can/&media=https://heropress.com/wp-content/uploads/2018/05/050918-150x150.jpg&description=Finding Family Wherever You Can\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Finding Family Wherever You Can\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/finding-family-wherever-you-can/\" title=\"Finding Family Wherever You Can\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/finding-family-wherever-you-can/\">Finding Family Wherever You Can</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 12:00:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: Recap of Attending the First WordCamp Retreat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80810\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/recap-of-attending-the-first-wordcamp-retreat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5176:\"<img />\n\n<p>The first <a href=\"https://2018-soltau.retreat.wordcamp.org/\">WordCamp Retreat</a> was held this past weekend in Soltau, Germany and by all accounts, it was a very successful event. The following is a guest post by <a href=\"https://remkus.devries.frl/\">Remkus de Vries</a> who recaps his experience attending the event.</p>\n\n<p><a href=\"https://twitter.com/DeFries\">Remkus</a> is from Fryslân, the Netherlands and is Manager Partnerships at <a href=\"https://yoast.com/\">Yoast</a>. He’s been active in the WordPress Community since 2006 and co-founded WordCamp Netherlands and WordCamp Europe.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>As some of you know, I&#8217;ve been active in the WordPress Community for over a decade and in that time, I&#8217;ve attended many WordPress related events. From Meetups to WordCamps. I get so excited about WordCamps, I&#8217;ve even <a href=\"https://netherlands.wordcamp.org\">co-founded</a> <a href=\"https://europe.wordcamp.org\">a few.</a></p>\n\n<p>However, in all those years, the format of a WordCamp has been relatively consistent. One or two days, multiple tracks and, in the last five years, a Contributor Day. Perhaps the biggest difference has been the city + location combination. WordCamp Europe started shaking this up with us opting for a rotating city and country principle (<a href=\"https://2018.europe.wordcamp.org\">you should totally come to this year&#8217;s edition btw</a>), but the main format has relatively remained the same.</p>\n\n<p>This past weekend, I attended a WordCamp with my colleagues from Yoast with quite a different format though. Yes, there were still presentations, different tracks, a Contributor Day, and an after party. So what was different about this one? The short answer: a lot.</p>\n\n<p><a href=\"https://2018-soltau.retreat.wordcamp.org/\">WordCamp Retreat in Soltau</a>, Germany was the first of its kind. One of the primary goals of WordCamps is to benefit the local community and <a href=\"https://twitter.com/search?q=WCRetreat&src=typd\">#WCRetreat</a> took a very different approach.<br /></p>\n\n<p>Here are a couple of things that set it apart from a typical WordCamp:</p>\n\n<ul>\n	<li>The location was exclusive for the WordCamp attendees.</li>\n	<li>Indoor and outdoor activities.</li>\n	<li>Work on your personal development/strengths.</li>\n	<li>Enjoy co-working under ideal conditions.</li>\n	<li>Alternate between valuable input and relaxation.</li>\n	<li>Benefit from previously unknown networking opportunities.</li>\n</ul>\n\n<h2><strong>Exclusive Location</strong></h2>\n\n<p>Most of this was made possible by the location. <a href=\"http://www.hotel-park-soltau.de/index.php\">Hotel Park Soltau</a> is located in the North of Germany surrounded by woods and heath. The hotel was reserved for WordCamp attendees only. Everyone stayed there, ate there, and networked there. It was an incredibly immersive experience on a different level than any of the other WordCamps I&#8217;ve attended.</p>\n\n<img />\n	WordCamp Retreat Venue\n\n\n<h2><strong>Immersive Activities</strong></h2>\n\n<p>In addition to the regular WordCamp presentations you might be familiar with, were non-tech related workshops and activities. From mindfulness, yoga, boot camps, to jam sessions and just playing sports outside (like football – not egg hand – and basketball). The goal being to interact with fellow attendees on a different level. And it worked. I saw much more networking and getting to know one another happening.</p>\n\n<h2><strong>A Schedule Built Around Social Interaction﻿</strong></h2>\n\n<p>The day started with some of the above-mentioned activities, then breakfast for all, followed by the first regular sessions. There was plenty of time between the sessions as well as morning, lunch and afternoon breaks that allowed for a lot of hallway tracks. Before the end of the afternoon, we switched back to other activities again like playing sports or jam sessions.</p>\n\n<h2><strong>Contributor Day on Day 2 of 3</strong></h2>\n\n<p>One of the things I enjoyed a lot is the fact that the Contributor Day was organized the second day of the three. This meant that everyone attending was kinda &#8216;locked into&#8217; attending the Contributor Day.  I&#8217;m not a big fan of forcing people to do anything, but this was a nice way of integrating the giving back part of a WordCamp.</p>\n\n<img />\n	WordCamp Retreat Contributor Day\n\n\n<h2>I Want to See More of These Types of WordCamps</h2>\n\n<p>Sunday afternoon, as the attendees were getting ready to head home, you could see how much everyone had enjoyed these three immersive days. The relaxed schedule, the different approach to what came when,  the fact of us all sharing the same rooms for 72 hours, the activities before, between and after the presentations, they all made this concept an extremely pleasant and relaxed one.<br /></p>\n\n<p>This first edition had about 180 attendees and all of their feedback will determine the fine tuning of what this WordCamp can be, but I&#8217;m very enthusiastic about this first edition.<br /></p>\n\n<p>I hope to see this type of WordCamp happen a lot more. It adds value to the format as we know it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 06:38:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Post Status: Making WordPress and WordSesh —  Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://poststatus.com/making-wordpress-and-wordsesh-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1915:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian discuss the upcoming WordSesh schedule and go spelunking through <a href=\"https://make.wordpress.org/\">make.wordpress.org</a> to surface some recent gems making their way to WordPress.org – both the project and the website.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"http://wordsesh.com/\">WordSesh schedule and tickets</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/28/rest-api-meeting-summary-april-26/\">REST API search endpoint</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">Help for Gutenberg migration guide</a></li>\n<li><a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">Theme review with trusted authors</a></li>\n</ul>\n<h3>Sponsor: iThemes</h3>\n<p>This episode is sponsored by <a href=\"https://ithemes.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">iThemes</a>. The team at iThemes offers WordPress plugins, themes and training to help take the guesswork out of building, maintaining and securing WordPress websites. For more information, check out their <a href=\"https://ithemes.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">website</a> and thank you to iThemes for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 May 2018 23:33:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: WordPress 4.9.6 Beta 1 Adds Tools for GDPR Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4711:\"<p>WordPress <a href=\"https://make.wordpress.org/core/2018/05/03/wordpress-4-9-6-beta/\">4.9.6 Beta 1 is available</a> for testing. It&#8217;s the first step in bringing <a href=\"https://www.eugdpr.org/\">GDPR</a> (General Data Protection Regulation) tools to WordPress. In addition to 10 bugs being fixed, this release heavily focuses on privacy enhancements.</p>\n\n<p>One of the first changes is the addition of a Privacy tab on the successful update screen. The message informs users that their sites may send data to WordPress.org for plugin and theme updates with a link to the WordPress.org privacy policy.</p>\n\n<img />\n	WordPress 4.9.6 Privacy Information\n\n\n<h2>Privacy Policy Page Creation and Template<br /></h2>\n\n<p>WordPress 4.9.6 includes the ability to create a Privacy Policy page from the backend. Simply browse to <strong>Settings > Privacy</strong> and select an existing page or create a new one where the policy will be displayed.</p>\n\n<img />\n	Privacy Policy Page Settings\n\n\n<p>Privacy policy pages will likely become as ubiquitous as About Us pages thanks to the GDPR, but the information that&#8217;s displayed is unique to individual sites. WordPress helps out by providing a template with suggestions on what information to display.</p>\n\n<img />\n	Privacy Policy Template<br />\n\n\n<h2>Personal Data Export and Removal Tools</h2>\n\n<p>To comply with the GDPR, sites need to provide a way for users to obtain their personal data and request that it be removed. WordPress 4.9.6 does not give users a button to make these requests. Instead, a site&#8217;s privacy policy needs to  include information on where to send such requests.</p>\n\n<p>Once a request for a data export or removal is received, site administrators or the Data Protection Officer can browse to <strong>Tools > Export Personal Data</strong> or <strong>Tools > Remove Personal Data</strong> and send that user a verification request.</p>\n\n<img />\n	Export Personal Data Verification UI\n\n\n<img />\n	Data Removal Request Verification UI\n\n\n<p>When an admin enters a username or email address into the send request field, they&#8217;ll receive an email with a confirmation link. Once clicked, the site will display an Action Confirmed notice and that the site administrator has been notified and will fulfill the request as soon as possible.</p>\n\n<p>Here&#8217;s what a confirmed notice looks like in the backend.</p>\n\n<img />\n	Confirmed Data Export Request\n\n\n<p>One thing I noticed is that after a user confirms the request, the site administrator has <a href=\"https://core.trac.wordpress.org/ticket/43967\">no way of knowing</a> that they confirmed unless they visit the Data Export or Removal page. <br /></p>\n\n<p>Perhaps a new notification bubble can be created, similar to pending comments and updates that takes admins to the appropriate place for confirmed requests.</p>\n\n<p>When WordPress finishes creating the zip file, a link is sent to the user. For security purposes, the file will automatically be deleted after 72 hours. </p>\n\n<img />\n	My Personal Data Export\n\n\n<p>To test this feature, I exported my personal data from WP Tavern. My data export arrived in a zip file as one Index.html file. This file contains my comments, user meta data, links to attachments, and more. The data provides me with an opportunity to see what data the site has and what would be deleted if I requested full data removal.</p>\n\n<h2>Commenter Cookie Notification and Opt-in<br /></h2>\n\n<p>Cookies save data so that visitors don&#8217;t have to fill in the Author, URL, and Email fields each time they want to leave a comment. In 4.9.6, visitors will be informed of this data storage and will need to check mark a box to opt-in.</p>\n\n<img />\n	Checkbox For Consenting to Data Storage\n\n\n<p>WordPress 4.9.6 isn&#8217;t your typical minor release. It introduces new UI, options, and a bunch of privacy related enhancements. The development team is aiming to officially release 4.9.6 before GDPR goes into effect later this month, but these features need battle tested now, especially on multi-site configurations.</p>\n\n<p>I encourage you to check out 4.9.6 on a staging site and go through the process of requesting, confirming, and obtaining user data. Now is a good time to experience what users will be going through. </p>\n\n<p>You can download <a href=\"https://make.wordpress.org/core/2018/05/03/wordpress-4-9-6-beta/\">WordPress 4.9.6 beta 1 here</a> or obtain it by using the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester plugin</a>. If you encounter any issues, please report them on the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta section</a> of the support forums. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 May 2018 22:18:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: Jetpack 6.1, Now With Even More Privacy Information\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80769\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/jetpack-6-1-now-with-even-more-privacy-information\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2178:\"<p>Jetpack 6.1 <a href=\"https://jetpack.com/2018/05/01/jetpack-6-1-general-maintenance/\">is available</a> and is considered a general maintenance release. This version adds two improvements to the WordAds module. Users can now use the [wordads] shortcode to place an inline ad on any post or page. Support for the <a href=\"https://en.wikipedia.org/wiki/Ads.txt\">ads.txt</a> file has also been added.</p>\n\n<p>A <a href=\"https://github.com/Automattic/jetpack/pull/8075\">new filter</a> is available that honors the <a href=\"https://en.wikipedia.org/wiki/Do_Not_Track\">Do Not Track</a> feature. This filter only affects the Stats module and will not track visitors who have Do Not Track enabled. This filter <a href=\"https://github.com/Automattic/jetpack/issues/727#issuecomment-383119108\">may be exposed</a> as a setting in the UI in a future update.</p>\n\n<p>Sharing and Likes functionality has been removed from WooCommerce&#8217;s Cart, Checkout, and Account pages. Notices that appeared in log files related to language features on sites running PHP 7.2 have been fixed.</p>\n\n<p>Continuing the <a href=\"https://wptavern.com/jetpack-6-0-takes-steps-towards-gdpr-compliance\">progress made in Jetpack 6.0</a> towards GDPR compliance, 6.1 adds More Info buttons to every module that handles user data.</p>\n\n<p>The More Info buttons contain links to specific sections of support documents that describe whether or not the module is activated by default, what data is used for site owners and visitors, and what data is synchronized with WordPress.com.<br /></p>\n\n<img />\n	More Info Links in Jetpack\n\n\n<img />\n	Detailed Privacy Information for The WordPress.com Toolbar Module\n\n\n<p>In the example above, the Privacy Information link for the WordPress.com Toolbar module points to the <a href=\"https://jetpack.com/support/masterbar/#privacy\">following support document</a>. With all of this information now readily available, users can educate themselves on the privacy implications of each module and decide what&#8217;s best for their visitors.</p>\n\n<p>A <a href=\"https://wordpress.org/plugins/jetpack/#developers\">full changelog</a> of Jetpack 6.1 is available on WordPress.org.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 05 May 2018 00:23:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: WPWeekly Episode 314 – Getting Squeebly With It\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80759&preview=true&preview_id=80759\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/wpweekly-episode-314-getting-squeebly-with-it\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1878:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> recaps his trip to WordCamp Chicago and explains the thought process behind his presentation, The Fourth Wall of WordPress. We highlight a new project that gives developers a guided path to migrate functionality from the Classic editor to Gutenberg.</p>\n<p>We discuss the pros and cons of the trusted authors program launched by the WordPress Theme Review Team and what&#8217;s new in Jetpack 6.1, what to expect from WordSesh 5, and comment on Square&#8217;s agreement to acquire Weebly for $365M.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/a-gutenberg-migration-guide-for-developers\">A Gutenberg Migration Guide for Developers</a></p>\n<p><a href=\"https://wptavern.com/wordpress-theme-review-theme-launches-trusted-authors-program\">WordPress Theme Review Team Launches Trusted Authors Program</a></p>\n<p><a href=\"https://wptavern.com/wordsesh-5-scheduled-for-july-25th\">WordSesh 5 Scheduled for July 25th</a></p>\n<p><a href=\"https://jetpack.com/2018/05/01/jetpack-6-1-general-maintenance/\">Jetpack 6.1 Released</a></p>\n<p><a href=\"https://techcrunch.com/2018/04/26/square-acquires-weebly/\">Square Acquires Weebly for $365M</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 9th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #314:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 May 2018 21:41:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: Childhood to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2522\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://heropress.com/essays/childhood-to-wordpress/#utm_source=rss&utm_medium=rss&utm_campaign=childhood-to-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:17171:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/050218-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordCamp is a way to meet new people, learn, and share knowledge!\" /><p><a href=\"https://heropress.com/feed/#gujarati\">આ નિબંધ ગુજરાતીમાં પણ ઉપલબ્ધ છે</a></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR.jpg\"><img class=\"aligncenter size-large wp-image-2526\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR-1024x768.jpg\" alt=\"Pravin standing by a long sign that says I Heart WordPress\" width=\"960\" height=\"720\" /></a></p>\n<div>First of all, I want to say thank you to HeroPress for reaching out and letting so many people share their stories. I am a follower of HeroPress and read new stories every week! A few months ago my cousin Chetan Prajapati published a WordPress story, and I was inspired by him to share my own and how it has changed my way of working.</div>\n<div></div>\n<div>I love WordPress because it had a great impact on my career. I was pursuing my Diploma in Computer Engineering. When I was in my last year of college I was working on an Industrial project and was very confused about to how to complete my project, how to choose the best framework and language so that based on my project after my college I can get a good job in my field.</div>\n<div></div>\n<div>My cousin was working on WordPress and I randomly discussed with him my last year’s project and he suggested me to use WordPress! For a demo he created an eCommerce project within 10 minutes and I was shocked. I just could not believe he created a project that fast. He said “I just installed WooCommerce and a simple theme”. From that moment on I am in love with WordPress and continuously research and gain more knowledge regarding wordpress.</div>\n<div></div>\n<div>After completing my Diploma I got a job in Ahmedabad and working as Junior WordPress Developer. Also I am attending Local Meetups and WordCamps.</div>\n<div></div>\n<div>Now I also take seminars every weekend on how to make a career in WordPress.</div>\n<div></div>\n<div>\n<div>It was my first time speaking in Ahmedabad WooCommerce Local Meetup in a session on how to create and setup eCommerce within 10 minutes.</div>\n</div>\n<p><strong>Speaking at the Ahmedabad WooCommerce Local Meetup</strong></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\"><img class=\"aligncenter size-full wp-image-2527\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\" alt=\"Pravin Teaching At WordCamp\" width=\"600\" height=\"450\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p><strong>My First WordCamp &#8211; WordCamp Udaipur 2017</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_132840/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_132840-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin and a woman showing WordCamp name tags\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_131922_hdr/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131922_HDR-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin in a cutout pink tuk tuk\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Second WordCamp &#8211; WordCamp Mumbai 2017</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_143547_1024/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20170325_143547_1024-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin by the WordCamp Mumbai tag\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_104005/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170325_104005-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin\'s Nametag\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Third WordCamp &#8211; WordCamp Nagpur</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5327/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5327-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5338/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5338-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>After much hardwork to achieve this event, it&#8217;s WordCamp Ahmedabad 2017.</p>\n<p><strong>My Fourth WordCamp &#8211; WordCamp Ahmedabad 2017 as Volunteer</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_081917/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_081917-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_153955/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_153955-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Fifth WordCamp &#8211; WordCamp Mumbai 2018 ( Second time )</strong></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739.jpg\"><img class=\"aligncenter size-large wp-image-2541\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739-768x1024.jpg\" alt=\"\" width=\"768\" height=\"1024\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>I am a WordCamp Lover. WordCamp is a way to meet new people, learn and share knowledge!</p>\n<p>Finally my dreams are coming true at WordCamp Europe 2018. Finally I am volunteer in WordCamp Europe 2018.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\"><img class=\"aligncenter size-full wp-image-2540\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\" alt=\"WCEU Volunteer Badge\" width=\"600\" height=\"600\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<h1 id=\"gujarati\">હું WordPress પ્રેમી છું</h1>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR.jpg\"><img class=\"aligncenter size-large wp-image-2526\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR-1024x768.jpg\" alt=\"Pravin standing by a long sign that says I Heart WordPress\" width=\"960\" height=\"720\" /></a></p>\n<p>સૌ પ્રથમ, હું તમને કહેવા માગું છું કે હિરોપર્સને પહોંચવા માટે અને ઘણા લોકોને તેમના વાર્તાઓ શેર કરવા માટે આભાર. હું હિરોપ્રેસનો અનુયાયી છું અને દર અઠવાડિયે નવી કથાઓ વાંચી સંભળાવું છું! થોડા મહિના પહેલાં મારા પિતરાઇ ભાઇ ચેતન પ્રજાપતિએ એક વાર્તાની વાર્તા લખી હતી, અને મારા દ્વારા તેનો પોતાનો ભાગ લેવા માટે પ્રેરણા મળી હતી અને તે કેવી રીતે કામ કરવાની રીત બદલ્યો છે.</p>\n<p>હું WordPress સાથે રમવા માટે chilhood છું beacuse લવ. હું છેલ્લા વર્ષમાં ડિપ્લોમા ઇન કમ્પ્યુટર એન્જીનિયરિંગમાં અભ્યાસ કરતો હતો, મારી પાસે ઔદ્યોગિક પ્રોજેક્ટ છે, તેથી હું પ્રોજેક્ટમાં કેવી રીતે સર્જન કરું છું અને કેવી રીતે શ્રેષ્ઠ માળખા અને ભાષા પસંદ કરવી તે મારા કૉલેજ પછીથી હું આઇટીમાં શ્રેષ્ઠ કામ મેળવી શકું છું તે અંગે ભ્રમિત છું.</p>\n<p>એક મારા પિતરાઈ ભાઈ WordPress પર કામ કરી રહ્યા છે, તેથી હું મારા છેલ્લા વર્ષ પ્રોજેક્ટ અંગે ચર્ચા કરી રહ્યો છું પછી તે કહે છે કે તમે WordPress પસંદ કરો છો અને તે 10 મિનિટમાં ઈકોમર્સ પ્રોજેક્ટ બનાવશે અને હું ખૂબ જ વ્યસ્ત છું. હું તે સાથે તૈયાર કરી શકતો નથી, તે 10 મિનિટમાં પૂર્ણ થયેલ પ્રોજેક્ટમાં તે કહે છે કે મેં WooCommerce અને સરળ થીમ ઇન્સ્ટોલ કરી છે. પછી હું WordPress લવ અને હું WordPress માં વધુ અને વધુ સંશોધન છું અને WordPress માં જ્ઞાન વિકાસ.</p>\n<p>દરેક અઠવાડિયે મારા સત્ર પર WordPress સાથે કારકિર્દી કેવી રીતે શરૂ કરવી તે મારા સત્ર પર.</p>\n<p>મારી ડિપ્લોમા પૂરો કર્યા પછી મને અમદાવાદમાં નાની કંપનીમાં નોકરી મળી અને જુનિયર વર્ડપ્રેસ ડેવલપર તરીકે કામ કર્યું. પછી હું સ્થાનિક મીટઅપ અને વર્ડકેમ્પમાં હાજરી કરું છું. સત્રમાં અમદાવાદ વુકોમર્સ સ્થાનિક મેટઅપમાં મારો પ્રથમ વાર સ્પીકર હતો અને 10 મિનિટમાં ઈકોમર્સ કેવી રીતે બનાવવું અને કેવી રીતે સેટઅપ કરવું તે વિશે.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\"><img class=\"aligncenter size-full wp-image-2527\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\" alt=\"Pravin Teaching At WordCamp\" width=\"600\" height=\"450\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>મારો પ્રથમ વર્ડકેમ્પ &#8211; વર્ડકૅમ્પ ઉદયપુર 2017</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_132840/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_132840-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin and a woman showing WordCamp name tags\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_131922_hdr/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131922_HDR-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin in a cutout pink tuk tuk\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારી સેકન્ડ વર્ડકેમ્પ &#8211; વર્ડકેમ્પ મુંબઇ 2017</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_143547_1024/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20170325_143547_1024-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin by the WordCamp Mumbai tag\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_104005/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170325_104005-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin\'s Nametag\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારો ત્રીજો વર્ડકેમ્પ &#8211; વર્ડકેપ નાગપુર</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5327/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5327-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5338/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5338-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>આ ઇવેન્ટને તેના વર્ડકેમ્પ અમદાવાદ 2017 માં પહોંચાડવા માટે વધુ અને વધુ સખત મહેનત કર્યા પછી</p>\n<p>મારી ફોર્થ વર્ડકેમ્પ &#8211; વર્ડકેમ્પ અમદાવાદ 2017 સ્વયંસેવક તરીકે</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_081917/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_081917-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_153955/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_153955-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારો પાંચમા વર્ડકેમ્પ &#8211; વર્ડકામ મુંબઇ 2018 (સેકન્ડ ટાઇમ)</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739.jpg\"><img class=\"aligncenter size-large wp-image-2541\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739-768x1024.jpg\" alt=\"\" width=\"768\" height=\"1024\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>હું એક WordCamp પ્રેમી છું વર્ડકેમ્પ નવા લોકોને મળે, જ્ઞાન અને જ્ઞાન વહેંચવાનો એક માર્ગ છે!</p>\n<p>છેલ્લે WordCamp યુરોપ 2018 માં સાચા મારા સપના. છેલ્લે હું WordCamp યુરોપ 2018 માં સ્વયંસેવક છું.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\"><img class=\"aligncenter size-full wp-image-2540\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\" alt=\"WCEU Volunteer Badge\" width=\"600\" height=\"600\" /></a></p>\n<p>&#8220;કોડ કવિતા છે&#8221;</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Childhood to WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Childhood%20to%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Childhood to WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F&title=Childhood+to+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Childhood to WordPress\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/childhood-to-wordpress/&media=https://heropress.com/wp-content/uploads/2018/05/050218-150x150.jpg&description=Childhood to WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Childhood to WordPress\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/childhood-to-wordpress/\" title=\"Childhood to WordPress\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/childhood-to-wordpress/\">Childhood to WordPress</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 12:45:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pravin Parmar\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Dev Blog: The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4980:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WPTavern: WordSesh 5 Scheduled for July 25th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80677\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wptavern.com/wordsesh-5-scheduled-for-july-25th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1124:\"<p>After not having an event in 2017, <a href=\"https://wordsesh.com/\">WordSesh</a>, a virtual WordPress conference, is returning July 25th. The event is being organized by Brian Richards, Founder of <a href=\"https://wpsessions.com/\">WPSessions</a> and a collection of partners. ﻿</p>\n\n<p>The <a href=\"https://wpsessions.com/\">schedule</a> is online and like previous events, there is a mixture of sessions and live podcasts. Based on the sessions, this year&#8217;s event leans towards consultants and developers. <br /></p>\n\n<img />\n    WordSesh 2018 Schedule\n\n\n<p>WordSesh five will have a hallway track that provides multiple ways for attendees to get in touch with speakers and other viewers. Attendees will also receive digital swag.</p>\n\n<p>Richards is encouraging Meetup organizers to host viewing parties. If you&#8217;d like to coordinate a viewing party for your meetup or co-working space, please contact Wordseshlive at gmail.com.</p>\n\n<p>Tickets are not yet available but those who sign up to the <a href=\"https://wordsesh.com/\">site&#8217;s email list</a> will be the first to know when they are.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 05:10:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: WordPress Theme Review Team Launches Trusted Authors Program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80587\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/wordpress-theme-review-team-launches-trusted-authors-program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2669:\"<p>In an effort to further streamline the review process and take some of the burden off of reviewers, the WordPress Theme Review team <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">has launched</a> a Trusted Authors Program.</p>\n\n<p>The program is for authors who consistently submit themes that follow the <a href=\"https://make.wordpress.org/themes/handbook/review/required/\">WordPress theme review guidelines</a> and have three or fewer issues in multiple areas. Applications and approvals will be handled by team leaders only.</p>\n\n<p>To apply for the program, theme authors need to select a ticket for the team to take into consideration and submit it as a comment on the <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">announcement post</a>. This can either be a recently approved theme or a ticket in the new or final queue.</p>\n\n<p>In addition to following the guidelines, the theme must meet the following conditions.</p>\n\n<ol>\n    <li>Escaping/Sanitization with a maximum of three issues.</li>\n    <li>Needs to be 100% GPL with a maximum of three issues. This includes all of your products on your site or third-party sites.<br /></li>\n    <li>Can not create content and demo content must be used correctly.  <br /></li>\n    <li>The theme must not contain any PHP or JavaScript errors, plugin territory functionality, correct use of prefixing, enqueue, translations, and advertising. <br /></li>\n</ol>\n\n<p>Theme authors can submit a theme for review once every two weeks, must have at least one approved theme in the directory, and can not apply using a child theme. The privilege is non-transferable and themes that are approved can only be transferred to other accounts after six months.</p>\n\n<p>As with any program, there are consequences for breaking the rules. The announcement notes that the team will not take into consideration active installs counts, how old a theme is or a theme author&#8217;s financial distress and that suspensions will be given without hesitation.</p>\n\n<p>The team has already demonstrated their ability to enforce this thought process. Last year, <a href=\"https://wptavern.com/zerif-lite-returns-to-wordpress-org-after-5-month-suspension-and-63-decline-in-revenue\">Zerif Light was suspended</a> from the directory for five months, affecting 300K users and costing its parent company, ThemeIsle, $75k/month in lost revenue.</p>\n\n<p>If you have any questions or concerns about the program, you can contact any of the <a href=\"https://make.wordpress.org/themes/handbook/about/members/#team-repsleads\">team leads</a> on Slack. </p>\n\n<p></p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 04:23:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Chinese Bikeshare Photos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48075\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://ma.tt/2018/04/chinese-bikeshare-photos/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:641:\"<a href=\"https://www.theatlantic.com/photo/2018/03/bike-share-oversupply-in-china-huge-piles-of-abandoned-and-broken-bicycles/556268/\"><img /></a>\n    A worker rides a shared bicycle past piled-up shared bikes at a vacant lot in Xiamen, Fujian province, China December 13, 2017. Picture taken December 13, 2017. REUTERS/Stringer\n\n\n<p>I find myself frequently returning to <a href=\"https://www.theatlantic.com/photo/2018/03/bike-share-oversupply-in-china-huge-piles-of-abandoned-and-broken-bicycles/556268/\">this Atlantic photo essay on the Chinese bike share companies flooding the streets with bikes</a>. It&#8217;s strangely beautiful.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Apr 2018 17:53:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: Rent-A-Family in Japan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48060\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2018/04/rent-a-family-in-japan/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:909:\"<p><a href=\"http://elifbatuman.com/\">Elif Batuman</a>, who was recently a Pulitzer finalist for her novel <a href=\"https://www.amazon.com/dp/B01HNJIJ3U/\"><em>The Idiot</em></a>, has a stunning story in the <em>New Yorker</em> on <a href=\"https://www.newyorker.com/magazine/2018/04/30/japans-rent-a-family-industry\">Japan’s Rent-a-Family Industry</a>, &#8220;People who are short on relatives can hire a husband, a mother, a grandson. The resulting relationships can be more real than you’d expect.&#8221;</p>\n\n<p>You think from the title it&#8217;s going to be one of those gee-whiz stories or vaguely condescending toward Japanese, but what follows is actually an incredibly poignant and powerful view of society through a lens I had never imagined before. It&#8217;s a <a href=\"https://longreads.com/\">#longread</a> but I hope you take the time to sit with it this weekend. You may need a swordsman.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 29 Apr 2018 01:05:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Post Status: The meta episode — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45443\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://poststatus.com/the-meta-episode-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2308:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian discuss meta data in WordPress, including the challenge of implementing data into new tools, such as the REST API and the Gutenberg editor.</p>\n<p>With the endless options of data complexity that’s historically possible with meta fields, the way these features are implemented into new projects has to be well thought out. There is continued activity with both the REST API and Gutenberg to make sure meta is well supported. There are several things that are worth knowing, if you are a consultant or a product maker in regard to working with WordPress meta.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2018/04/26/completing-the-implementation-of-metadata-registration-with-the-rest-api/\">Completing the implementation of meta data registration with the REST API</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/23/gutenberg-rest-api-and-you/\">Gutenberg, REST API, and You</a></li>\n<li><a href=\"https://github.com/alleyinteractive/wordpress-fieldmanager\">Fields Manager</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/\">Advanced Custom Fields</a></li>\n<li><a href=\"https://cmb2.io/\">CMB2</a></li>\n</ul>\n<h3>Sponsor: Pippin&#8217;s Plugins</h3>\n<p>This episode is sponsored by Pippin’s Plugins. <a href=\"http://pippinsplugins.com/\">Pippin’s Plugins</a> creates a suite of plugins that work great alone, or together. Whether you need to restrict content, sell downloads, or start an affiliate program, they’ve got you covered. For more information, check out their <a href=\"http://pippinsplugins.com/\">website</a> and thank you to Pippin’s Plugins for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 20:10:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: A Gutenberg Migration Guide for Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80527\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wptavern.com/a-gutenberg-migration-guide-for-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1423:\"<p>In order to help developers learn how to migrate from the classic editor to Gutenberg, Daniel Bachhuber has launched a <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">Gutenberg Migration Guide</a>. Bachhuber is <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">seeking the community&#8217;s help</a> in identifying and filling a database to document all of the ways the classic editor can be customized.<br /></p>\n\n<blockquote class=\"wp-block-quote\">\n    <p> Take a look through the <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">Gutenberg Migration Guide</a>. For each action, filter, and so on, we’d like to document real-world examples of how they’ve been used. Then, for each of those real-world examples, identify how the feature might be replicated in Gutenberg.</p><cite>Daniel Bachhuber</cite></blockquote>\n\n<p>He uses the media_buttons action as an example. This action is commonly used to add a button to the top of the editor. Developers can accomplish the same task in Gutenberg <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/blob/master/action-media-buttons.md\">using the block inserter</a>. </p>\n\n<p>If you have any questions or suggestions, you&#8217;re encouraged to <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">create a new issue</a> on GitHub. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 20:06:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WPWeekly Episode 313 – BuddyPress, Gutenberg, and An Upcoming Anniversary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80519&preview=true&preview_id=80519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/wpweekly-episode-313-buddypress-gutenberg-and-an-upcoming-anniversary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2714:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I start the show with a shout out to <a href=\"https://webdevstudios.com/2018/04/24/10-years-webdevstudios/\">WebDevStudios</a>, a web development agency that&#8217;s celebrating its 10th year in business. We then cover what&#8217;s new in BuddyPress 3.0, why plugins hosted on WordPress.org can no longer claim legal compliance, and what to expect from 0.7 of the AMP for WordPress plugin. Last but not least, we share what&#8217;s new in Gutenberg 2.7 and explain why you shouldn&#8217;t edit content written in Gutenberg with the WordPress for iOS app just yet.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">Celebrate the WordPress 15th Anniversary on May 27</a><br />\n<a href=\"https://wptavern.com/plugins-hosted-on-wordpress-org-can-no-longer-guarantee-legal-compliance\">Plugins Hosted on WordPress.org Can No Longer Guarantee Legal Compliance</a><br />\n<a href=\"https://wptavern.com/buddypress-3-0-beta-2-released\">BuddyPress 3.0 Beta 2 Released</a><br />\n<a href=\"https://wptavern.com/wordpress-accessibility-team-is-seeking-contributors-for-its-handbook-project\">WordPress Accessibility Team Is Seeking Contributors for Its Handbook Project</a><br />\n<a href=\"https://wptavern.com/amp-for-wordpress-0-7-rc-1-released\">AMP for WordPress 0.7 RC 1 Released</a><br />\n<a href=\"https://wptavern.com/gutenberg-2-7-released-adds-ability-to-edit-permalinks\">Gutenberg 2.7 Released, Adds Ability to Edit Permalinks</a><br />\n<a href=\"https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along\">WordPress for iOS and Gutenberg Don’t Get Along</a><br />\n<a href=\"https://wptavern.com/talking-gutenberg-on-episode-eight-of-the-drunken-ux-podcast\">Talking Gutenberg on Episode Eight of the Drunken UX Podcast</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://deliciousbrains.com/building-wordpress-plugins/\">Delicious Brains explains how they create and release WordPress plugins.</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 2nd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #313:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 02:08:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WPTavern: AMP for WordPress 0.7 RC 1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80438\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wptavern.com/amp-for-wordpress-0-7-rc-1-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1966:\"<p>XWP, Automattic, and Google&#8217;s AMP team, <a href=\"https://make.xwp.co/2018/04/23/wordpress-amp-plugin-0-7-rc1/\">has released</a> 0.7 Release Candidate 1 of the <a href=\"https://wordpress.org/plugins/amp/\">AMP for WordPress plugin﻿</a>. Hinted at during <a href=\"https://www.youtube.com/watch?v=GGS-tKTXw4Y\">AMP Conf 2018</a> earlier this year, 0.7 is a major release that contains significant new features.</p>\n\n<p>This release adds Native AMP support for all of the default widgets, embeds, and commenting. Notifications will be triggered for posts that contain content with validation errors or if you use a theme or plugin that adds invalid AMP markup.</p>\n\n<p>While earlier versions of AMP displayed content in a way that was different from a site&#8217;s theme, 0.7 creates a native experience. For example, if you visit the <a href=\"https://ampdemo.xwp.io/\">AMP Conf WordPress Theme Demo site</a> on an iPhone 7, the site looks exactly the same. As you can see in the image below, you can&#8217;t tell it&#8217;s running AMP. <br /></p>\n\n<img />\n    AMP Conf Demo Theme\n\n\n<p>Before 0.7 is officially released, the development team is asking for users to put 0.7 RC 1 through its paces and <a href=\"https://github.com/Automattic/amp-wp/issues\">report issues</a> on the project&#8217;s GitHub page. You can download the <a href=\"https://github.com/Automattic/amp-wp/releases/download/0.7-RC1/amp.zip\">pre-release version here</a>.﻿<br />.﻿<br /></p>\n\n<p>For more information on the AMP project, <a href=\"https://wptavern.com/wpweekly-episode-309-all-amped-up\">listen to episode 309 of WordPress Weekly</a> where I interviewed <a href=\"https://medinathoughts.com/\">Alberto Medina</a>, Developer Advocate working with the Web Content Ecosystems Team at Google, and <a href=\"https://weston.ruter.net/\">Weston Ruter</a>, CTO of XWP. In this interview, we covered why the project was created, its future, and its potential impacts on the Open Web. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 17:30:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: How Delicious Brains Creates and Releases WordPress Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80410\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/how-delicious-brains-creates-and-releases-wordpress-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:420:\"<p>Delicious Brains have <a href=\"https://deliciousbrains.com/building-wordpress-plugins/\">published the process</a> they use for creating and releasing WordPress plugins. The post covers development, brainstorming, reviewing, testing, and wire frames. The team also describes the products and services they use and the roles they play within their projects. How is their process different or similar to yours?<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 16:32:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"HeroPress: Second Careers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://heropress.com/second-careers/#utm_source=rss&utm_medium=rss&utm_campaign=second-careers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3381:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/05/042418-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I\'d rather solve the right problem with code that has room for improvement, than solve the wrong problem with perfect code.\" /><p>I&#8217;m always fascinated by people who find second careers when they&#8217;re at the top of their game in the first one. To be really excellent at something and then switch to something else altogether is fascinating to see. Very often those people bubble to the top of whatever career they venture into.</p>\n<p>This week&#8217;s HeroPress replay is titled &#8220;<a href=\"https://heropress.com/essays/moving-on-from-moving-on-stage/\">Moving On From Moving On Stage</a>&#8221; by Karin Taliga. Karin is a dancer, and has had a rich and full career in that field. But the web called to her. Like the siren&#8217;s song, always keening &#8220;Come play here, it&#8217;s wonderful!&#8221;</p>\n<p>When someone recommended I contact Karin 2 years ago she was winding up her dancing career and moving into a full time career as a web developer. The whole concept of a second career sounds exciting. I&#8217;ve always thought of &#8220;career&#8221; as something you do your whole life. But Karin has more adult life ahead of her than behind her, and I&#8217;m super excited to see where she goes with it.</p>\n<p>Check out Karin&#8217;s original post from May of 2016.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/moving-on-from-moving-on-stage/\">Moving On From Moving On Stage</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Second Careers\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Second%20Careers&via=heropress&url=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Second Careers\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F&title=Second+Careers\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Second Careers\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/second-careers/&media=https://heropress.com/wp-content/uploads/2016/05/042418-150x150.jpg&description=Second Careers\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Second Careers\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/second-careers/\" title=\"Second Careers\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/second-careers/\">Second Careers</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 11:30:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: WordPress for iOS and Gutenberg Don’t Get Along\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80236\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3064:\"<p>When it comes to editing and crafting content on the go, the <a href=\"https://apps.wordpress.com/mobile/\">WordPress Mobile apps</a> are a good choice. The question is, how does the editor in the iOS app interact with content written in Gutenberg? Let&#8217;s find out.</p>\n\n<h2>Quick Edits Turn Into Lengthy, Frustrating Fixes<br /></h2>\n\n<p>For testing purposes, I used a simple scenario that many users may run into. I&#8217;ve written and published a post in Gutenberg using paragraph, unordered lists, and image blocks. I then used the WordPress for iOS mobile app to access the post, correct a typo, and save it. The goal is to see if content is affected by saving it in a different editor.<br /></p>\n\n<p>Here is what the content looks like written and published in Gutenberg.</p>\n\n<img />\n    Content Written and Published in Gutenberg\n\n\n<p>Here is what the post looks like in the iOS app. It displays what appears to be Comment shortcodes at the beginning of each paragraph.<br /></p>\n\n<img />\n    Gutenberg Content in WordPress for Ios\n\n\n<p>After correcting a typo and saving the changes, this is what happened to the post. As you can see, what was supposed to be a quick fix has turned into a lengthy process of fixing the entire article in Gutenberg.</p>\n\n<img />\n    Content Written in Gutenberg After Editing in the WordPress for iOS App\n\n\n<p>All of the content runs together as one giant block. To say that this is frustrating is an understatement, especially if you&#8217;re on the road and don&#8217;t have access to a desktop or tablet that can load the WordPress backend.  <br /></p>\n\n<p>Here is what the content looks like in Gutenberg after saving the edits in the iOS app. There are large gaps and a few of the blocks have warnings stating that they appear to have been modified externally.</p>\n\n<img />\n    Content in Gutenberg After It Was Edited in the WordPress for iOS App\n\n\n<p>Clicking the convert to block buttons turns the messages into blocks but it doesn&#8217;t return the formatting and in some cases, content goes missing. Before editing in the iOS app, this block contained a quote with a citation. Now it&#8217;s empty. <br /></p>\n\n<img />\n    Quote Block Is Missing Content\n\n\n<p>WordPress has post revisions so I was able to quickly restore the breaking changes introduced by the iOS app. But this user experience between Gutenberg and the WordPress for iOS app is a great example of how something so simple can easily turn into a perceived disaster by users and ultimately, tarnish the new editor&#8217;s reputation.</p>\n\n<p>Searching the Gutenberg repository on Github for iOS <a href=\"https://github.com/WordPress/gutenberg/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aopen+ios\">produces some results</a>, but none refer to the compatibility issues I experienced. </p>\n\n<p>I found out the hard way and will not be making any more changes to posts written in Gutenberg in the iOS app until compatibility between both editors exists. I recommend you don&#8217;t as well unless you want to fix a lot more than a typo. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Apr 2018 23:33:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"Dev Blog: Celebrate the WordPress 15th Anniversary on May 27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3246:\"<p>May 27, 2018 is the <strong>15th anniversary</strong> of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first WordPress release</a> <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">﻿</a>— and we can&#8217;t wait to celebrate!</p>\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&ssl=1\" alt=\"\" class=\"wp-image-5841\" width=\"342\" height=\"268\" />\n\n<h2>Party time!</h2>\n\n<p>Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun:</p>\n\n<ol>\n    <li>Check the <a href=\"https://wp15.wordpress.net/about/\">WordPress 15th Anniversary website</a> to see if there&#8217;s a party already planned for your town. If there is, RSVP for the party and invite your friends!<br /></li>\n    <li>If there isn&#8217;t, then pick a place to go where a bunch of people can be merry — a park, a pub, a backyard; any family-friendly venue will do!</li>\n    <li>List your party with <a href=\"https://www.meetup.com/pro/wordpress/\">your local WordPress meetup group</a> (Don&#8217;t have a group? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Start one!</a>)  and then spread the word to other local meetups, tech groups, press, etc and get people to say they’ll come to your party.</li>\n    <li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Request</a> some special 15th anniversary WordPress swag (no later than April 27, please, so we have time to ship it to you).<br /></li>\n    <li>Have party attendees post photos, videos, and the like with the #WP15 hashtag, and <a href=\"https://wp15.wordpress.net/live/\">check out the social media stream</a> to see how the rest of the world is sharing and celebrating.</li>\n</ol>\n\n<p>Don&#8217;t miss this chance to participate in a global celebration of WordPress!<br /></p>\n\n<h2>Special Swag</h2>\n\n<p>In honor of the 15th anniversary, we’ve added some <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">special 15th anniversary items</a> in the swag store — you can use the offer code <strong>CELEBRATEWP15</strong> to take 15% off this (and any other WordPress swag you buy), all the way through the end of 2018!</p>\n\n<p>Keep checking the swag store, because we&#8217;ll be adding more swag over the next few weeks!</p>\n\n<h2>Share the fun</h2>\n\n<p>However you celebrate the WordPress 15th anniversary — with <a href=\"https://wp15.wordpress.net/about/\">a party</a>, with <a href=\"https://wp15.wordpress.net/swag/\">commemorative swag</a>, by <a href=\"https://wp15.wordpress.net/live/\">telling the world</a> what WordPress means to you — remember to use the #WP15 hashtag to share it! And don&#8217;t forget to <a href=\"https://wp15.wordpress.net/live/\">check the stream of WordPress 15th anniversary posts</a>.</p>\n\n<p>When <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% of the internet</a> has a reason to celebrate, you know it&#8217;s going to be great! </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 21:07:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Gutenberg 2.7 Released, Adds Ability to Edit Permalinks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80121\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/gutenberg-2-7-released-adds-ability-to-edit-permalinks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1977:\"<p>Gutenberg 2.7 <a href=\"https://wordpress.org/plugins/gutenberg/\">is available</a> for testing and not only does it refine the visuals around block controls, it adds the highly requested ability to <a href=\"https://github.com/WordPress/gutenberg/pull/5756\">edit permalinks</a>.</p>\n\n<img />\n    Editing Permalinks in Gutenberg 2.7\n\n\n<p>A new pagination block is available that adds a page break, allowing users to break posts into multiple pages. The block is located in the <strong>Blocks &#8211; Layout Elements</strong> section.</p>\n\n<p>There are a number of changes to the link insertion interface. Gutenberg 2.7 brings back the option to have links open in the same window.<br /></p>\n\n<img />\n    Toggle Determines Whether Links Open in a New Window\n\n\n<p>When editing linked text, the Unlink icon now stays in the toolbar instead of displaying within the link options modal. When adding links, there&#8217;s a URL suggestion tool similar to what&#8217;s available in WordPress&#8217; current editor.</p>\n\n<p>What will be welcomed news to plugin developers, the <a href=\"https://github.com/WordPress/gutenberg/pull/6031\">PluginSidebar API</a> is ﻿exposed and considered final. According to the pull request, this change does the following.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>Refactors all the existing Sidebar components to share the same set components and removes duplicated custom CSS styles applied to <code>&lt;PluginSidebar /></code>. There are no changes to the public API of <code>&lt;PublicSidebar /></code> component, other than it is going to be available under <code>wp.editPost.PluginSidebar</code>.</p><cite>Grzegorz Ziółkowski<br /></cite></blockquote>\n\n<p>This release, like the others before it, has a changelog that&#8217;s a mile long. Please check out the <a href=\"https://make.wordpress.org/core/2018/04/18/whats-new-in-gutenberg-18th-april/\">release post</a> for a detailed list of changes and links to issues on GitHub. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 03:05:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: WordPress Accessibility Team Is Seeking Contributors for Its Handbook Project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80068\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/wordpress-accessibility-team-is-seeking-contributors-for-its-handbook-project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1290:\"<p>The <a href=\"https://make.wordpress.org/accessibility/\">WordPress Accessibility team</a> is seeking contributors for its <a href=\"https://make.wordpress.org/accessibility/handbook/\">handbook project</a>. It&#8217;s a collection of tips, resources, <a href=\"https://make.wordpress.org/accessibility/handbook/which-tools-can-i-use/\">tools</a>, and <a href=\"https://make.wordpress.org/accessibility/handbook/best-practices/\">best practices</a>. The goal is to educate users through summaries, articles, and reference materials.<br /></p>\n\n<p>The handbook was created after the accessibility team repeatedly noticed the same accessibility issues cropping up and not having a central place to send people to learn about them.</p>\n\n<p>The team is looking for people to review articles, discover resources to add to the handbook, and suggest topics to cover. If you&#8217;re interested in contributing, please join the #<a href=\"https://wordpress.slack.com/archives/C6PK2QCTY\">accessibility-docs</a> channel on <a href=\"https://make.wordpress.org/chat/\">Slack</a> where you can ask questions and learn more about the project.</p>\n\n<p>Also, consider following <a href=\"https://twitter.com/WPAccessibility\">WPAccessibility</a> on Twitter to keep tabs on team projects and links to resources. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 01:57:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WPTavern: BuddyPress 3.0 Beta 2 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79984\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wptavern.com/buddypress-3-0-beta-2-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1844:\"<p>The BuddyPress development team <a href=\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\">has released</a> Beta 2 of BuddyPress 3.0. BuddyPress 3.0 is a major release that contains some significant changes. A new template pack called Nouveau will replace the bp-legacy template packs introduced in BuddyPress 1.7.</p>\n\n<p>The new template pack has been refactored to be semantic, accessible, and use a new set of markup files. Loops, members, and activity areas now run under Backbone to provide a smoother experience. JavaScript has been rewritten to be more modular and have better structure. <br /></p>\n\n<img />\n    BuddyPress 3.0 Customizer Options\n\n\n<p>BuddyPress 3.0 utilizes the Customizer by providing options to manipulate the Nouveau template pack or the site itself. For example, you can modify a user&#8217;s navigation options from the frontend. There&#8217;s also an option to adjust the number of columns for the Members loop. </p>\n\n<p>There are <a href=\"https://buddypress.trac.wordpress.org/query?status=closed&milestone=3.0&page=2&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&order=priority\">138 tickets closed</a> in this release. In addition to what&#8217;s noted above, 3.0 will <a href=\"https://buddypress.trac.wordpress.org/ticket/7722\">remove support for WordPress 4.3 and below</a> and BuddyPress functions for bbPress 1.x forums <a href=\"https://buddypress.trac.wordpress.org/ticket/6851\">will be deprecated</a>.</p>\n\n<p>Considering the scope and breadth of changes in 3.0, users are highly encouraged to test <a href=\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\">BuddyPress 3.0 Beta 2</a>. If you encounter any issues, please report them in the <a href=\"https://buddypress.org/support/forum/how-to/\">Troubleshooting and How-to</a> section of the support forums. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 22:55:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"HeroPress: Where WordPress REALLY Matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2509\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://heropress.com/where-wordpress-really-matters/#utm_source=rss&utm_medium=rss&utm_campaign=where-wordpress-really-matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3591:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/03/041818-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The silence is there. But it no longer scares me.\" /><p>A couple years ago I was given possibly the biggest gift the WordPress community has ever given me. The organizers of WordCamp Pune called me to speak, and the community sent me. It was an amazing experience that changed my life.</p>\n<p>While I was there I met Mahangu Weerasinghe, a wonderful man from Sri Lanka. He spoke about things that really really resonated with me. His talk was about linguistic accessibility to the Internet in Southeast Asia. Many people told me that English is enough to communicate to all of India, but Mahangu pointed out that MILLIONS of people in Southeast Asia cannot read or understand a single language on the web, let alone English.</p>\n<p>WordPress can change that, and that&#8217;s where WordPress really matters.  It&#8217;s wonderful that people around the world can make a living with it, and it&#8217;s wonderful that it gives creative outlet to so many, but <strong>important</strong> that WordPress can give global voice to those who have none.</p>\n<p>Mahangu felt for a long time that he had no voice. WordPress changed that for him, and now he&#8217;s using WordPress to change that for everyone.  He&#8217;s been hugely inspirational to me, and I hope he is for you as well.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/breaking-the-silence/\">Breaking the Silence</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Where WordPress REALLY Matters\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Where%20WordPress%20REALLY%20Matters&via=heropress&url=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Where WordPress REALLY Matters\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F&title=Where+WordPress+REALLY+Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Where WordPress REALLY Matters\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/where-wordpress-really-matters/&media=https://heropress.com/wp-content/uploads/2016/03/041818-150x150.jpg&description=Where WordPress REALLY Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Where WordPress REALLY Matters\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/where-wordpress-really-matters/\" title=\"Where WordPress REALLY Matters\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/where-wordpress-really-matters/\">Where WordPress REALLY Matters</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 12:00:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: Abstract Aluminum\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48051\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://ma.tt/2018/04/abstract-aluminum/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"<p>You probably haven&#8217;t thought much about beer cans, Abstract Aluminum Space, the Midwest Premium, and how it all ties into Goldman Sachs, so you should read <a href=\"https://www.bloomberg.com/view/articles/2014-09-03/the-goldman-sachs-aluminum-conspiracy-lawsuit-is-over\">how the Goldman Sachs aluminum conspiracy lawsuit is over</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 21:57:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"BuddyPress: BuddyPress 3.0 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=272059\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3509:\"<p>It&#8217;s with a huge amount of pleasure and excitement that we&#8217;re announcing the Beta 2 release of BP 3.0 today ready for testing and feedback.</p>\n<p>BuddyPress 3.0 will be a major milestone release for us and one we&#8217;re all really excited about, it&#8217;s been a long time coming but finally we are close to releasing the first template pack for BP, this is a completely new &#8216;theme&#8217; or set of template files and functionality designed to replace bp-legacy which has served us so well since it&#8217;s inception way back in the  major release of 1.7 where we introduced &#8216;Theme Compatibility&#8217;, and we&#8217;re all really eager for any feedback during these beta phases you may grab a copy of our beta1 release <a href=\"https://downloads.wordpress.org/plugin/buddypress.3.0.0-beta1.zip\">here</a> to test with.</p>\n<p>Nouveau &#8211; as our new template pack has been named &#8211; provides an all new clean set of markup files, refactored from the ground up to be semantic and accessible. Styles are re-written and provided as Sass partials for developers if wanting to build out new packs. A lot of core functionality for components has been re-written and re-located to be sourced from include files by component in the template directory which allows even easier access to modify functions by overloading to a new theme or child theme. Our major loops, members, activity etc have been re-factored to run under Backbone for a smooth Ajax experience and indeed all the Javascript functionality is re-written to be far more modular than it was before and has a far better modern feel to it&#8217;s structuring.</p>\n<p>For the first time we have brought in the Customizer to provide user option choices and a range of layout configurations may be selected. In our initial offering we have provided various layout options for the main BP navigation elements  allowing for vertical navs or horizontal, tab effect where suitable. for the component loops such as members, Groups we provide an option to display in a grid layout &amp; at row quantity options or simply as a flat classic list layout.</p>\n<p>While we are really excited about Nouveau 3.0 also has many other improvements to offer and you can <a href=\"https://buddypress.trac.wordpress.org/query?status=closed&milestone=3.0&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&order=priority\">view a list of all closed tickets for 3.0</a></p>\n<p>As always your feedback and testing is an invaluable part of our releases, helping us to catch any last minute bugs.<br />\nYou can download the beta release for testing at <a href=\"https://downloads.wordpress.org/plugin/buddypress.3.0.0-beta1.zip\">downloads.wordpress.org</a> and install on a local copy of WordPress ( please remember this is a beta release and should not be run on an active production site). Any issues found can be reported on our Trac by creating a <a href=\"https://buddypress.trac.wordpress.org/newticket\">new ticket</a></p>\n<p>If you&#8217;re a developer comfortable with SVN you might like to checkout a development copy which you can do <a href=\"https://svn.buddypress.org/trunk\">from this link</a> patches can be submitted to existing tickets or issues found reported on a new ticket.</p>\n<p>Further guidance on contributing to BuddyPress is covered on our <a href=\"https://codex.buddypress.org/participate-and-contribute/\">Contributor guidelines page</a> in our <a href=\"https://codex.buddypress.org/\">Codex</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 20:30:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Hugo Ashmore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Talking Gutenberg on Episode Eight of the Drunken UX Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79942\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/talking-gutenberg-on-episode-eight-of-the-drunken-ux-podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:738:\"<p>Last week, I had the pleasure of joining Michael Fienen and Aaron Hill, hosts of the Drunken UX podcast, to <a href=\"https://drunkenux.com/podcast/8-sweet-home-automattic-where-we-use-gutenberg/\">discuss Gutenberg</a>. We covered a lot of topics, including, why Gutenberg was created, our experiences, its timeline, pros, cons, resources, our biggest concerns, and what developers and freelancers need to know.</p>\n\n<p>The show is one hour and thirty minutes in length. By the way, please don&#8217;t criticize my drink of choice.</p>\n\n\n    <blockquote class=\"wp-embedded-content\"><a href=\"https://drunkenux.com/podcast/8-sweet-home-automattic-where-we-use-gutenberg/\">#8: Sweet Home Automattic, Where We Use Gutenberg</a></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 00:14:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: Plugins Hosted on WordPress.org Can No Longer Guarantee Legal Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79884\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/plugins-hosted-on-wordpress-org-can-no-longer-guarantee-legal-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2105:\"<p>The plugin review team has amended <a href=\"https://developer.wordpress.org/plugins/wordpress-org/detailed-plugin-guidelines/#9-developers-and-their-plugins-must-not-do-anything-illegal-dishonest-or-morally-offensive\">guideline number nine</a> which states, <em>developers and their plugins must not do anything illegal, dishonest, or morally offensive</em>, to include the following statement:</p>\n\n<ul>\n    <li>Implying that a plugin can create, provide, automate, or guarantee legal compliance</li>\n</ul>\n\n<p>Mika Epstein, a member of the WordPress.org plugin review team, <a href=\"https://make.wordpress.org/plugins/2018/04/12/legal-compliance-added-to-guidelines/\">says</a> the change was made because plugins by themselves can not provide legal compliance. <br /></p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>Sadly, no plugin in and of itself can provide legal compliance. While a plugin can certainly <em>assist</em> in automating the steps on a compliance journey, or allow you to develop a workflow to solve the situation, they cannot protect a site administrator from mistakes or lack of compliance, nor can they protect site users from incorrect or incomplete legal compliance on the part of the web site.</p><cite>Mika Epstein</cite></blockquote>\n\n<p>Since sites can have any combination of WordPress plugins and themes activated, it&#8217;s nearly impossible for a single plugin to make sure they&#8217;re 100% legally compliant.</p>\n\n<p>Plugin developers affected by this change will be contacted by the review team and be asked to change their titles, descriptions, plugin header images, and or the text within the readme.</p>\n\n<p>Instead of claiming compliance, the team has published a <a href=\"https://developer.wordpress.org/plugins/wordpress-org/compliance-disclaimers/\">frequently asked questions</a> document that recommends plugin authors explain how the plugin will assist in compliance. If you have any questions, please leave a comment on the <a href=\"https://make.wordpress.org/plugins/2018/04/12/legal-compliance-added-to-guidelines/\">announcement post</a>. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 23:35:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Post Status: All about you(r privacy) — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45249\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://poststatus.com/all-about-your-privacy-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2485:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p><span>In this episode, the two Brians discuss the current conversations and controversy surrounding data collection and visitor privacy on the web. The duo dig in to the General Data Protection Regulation (GDPR) and what it means for you both as site visitors and site owners and, in particular, how WordPress core and plugin authors are (or should be) responding to the new regulation. It’s a pretty deep topic with many implications and ramifications. Be sure to follow the episode links, too, so that you can be best informed and prepared for when GDPR goes into effect on May 25, 2018.</span></p>\n<p></p>\n<p>Links</p>\n<ul>\n<li><a href=\"https://www.cjr.org/tow_center_reports/understanding-general-data-protection-regulation.php\">CJR report on understanding the General Data Protection Regulation</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">Core&#8217;s roadmap for GDPR compliance</a></li>\n<li><a href=\"https://core.trac.wordpress.org/query?status=!closed&keywords=~gdpr\">Trac issues related to GDPR</a></li>\n<li><a href=\"https://pagely.com/blog/gdpr-wordpress-2018-resources/?mc_cid=a002d1fc74&mc_eid=58d2ea272a\">Pagely&#8217;s GDPR guide</a></li>\n<li><a href=\"https://www.smashingmagazine.com/2018/02/gdpr-for-web-developers/?mc_cid=a002d1fc74&mc_eid=58d2ea272a\">Heather Burns&#8217; detailed GDPR analysis in Smashing Magazine</a></li>\n</ul>\n<h3>Sponsor: Valet</h3>\n<p>This episode is sponsored by <a href=\"https://www.valet.io/\">Valet</a>. Valet helps keep your clients happy &amp; coming back. They offer expert services and keep the websites they manage functioning flawlessly. They offer preventative care that provides peace of mind around the clock. For more information, check out <a href=\"https://www.valet.io/\">their website</a> and thank you to Valet for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 12:56:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt: Russell’s Treadmill\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48043\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2018/04/russells-treadmill/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:704:\"<p>From <a href=\"https://www.amazon.com/dp/B015D3X0YG\">Bertrand Russell&#8217;s A Conquest of Happiness</a>.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>It is very singular how little men seem to realize that they are not caught in the grip of a mechanism from which there is no escape, but that the treadmill is one upon which they remain merely because they have not noticed that it fails to take them up to a higher level.</p>\n</blockquote>\n\n<p>He also says later, &#8220;﻿There are two motives for reading a book: one, that you enjoy it; the other, that you can boast about it.&#8221; <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f602.png\" alt=\"😂\" class=\"wp-smiley\" /></p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Apr 2018 20:22:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Dev Blog: GDPR Compliance Tools in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3913:\"<p>GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core. </p>\n\n<h2>What is GDPR?</h2>\n\n<p>GDPR stands for <a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a> and is intended to strengthen and unify data protection for all individuals within the European Union. Its primary aim is to give control back to the EU residents over their personal data. <br /></p>\n\n<p>Why the urgency? Although the GDPR was introduced two years ago, it becomes  enforceable starting May 25, 2018.</p>\n\n<h2>Make WordPress GDPR Compliance Team</h2>\n\n<p>Currently, the GDPR Compliance Team understands that helping WordPress-based sites become compliant is a large and ongoing task. The team is focusing on creating a comprehensive core policy, plugin guidelines, privacy tools and documentation. All of this requires your help.<br /></p>\n\n<p>The GDPR Compliance Team is focusing on four main areas:</p>\n\n<ul>\n    <li>Add functionality to assist site owners in creating comprehensive privacy policies for their websites.</li>\n    <li>Create guidelines for plugins to become GDPR ready.</li>\n    <li>Add administration tools to facilitate compliance and encourage user privacy in general.</li>\n    <li>Add documentation to educate site owners on privacy, the main GDPR compliance requirements, and on how to use the new privacy tools.</li>\n</ul>\n\n<h2>Don’t we already have a privacy policy?</h2>\n\n<p>Yes and no. That said, The GDPR puts tighter guidelines and restrictions. Though we have many plugins that create privacy pages, we need means to generate a unified, comprehensive privacy policy. We will need tools for users to easily come into compliance.<br /></p>\n\n<p>Site owners will be able to create GDPR compliant privacy policy in three steps:</p>\n\n<ol>\n    <li>Adding a dedicated page for the policy.<br /></li>\n    <li>Adding privacy information from plugins.</li>\n    <li>Reviewing and publishing the policy.</li>\n</ol>\n\n<p>A new &#8220;postbox&#8221; will be added to the Edit Page screen when editing the policy. All plugins that collect or store user data will be able to add privacy information there. In addition it will alert the site owners when any privacy information changes after a plugin is activated, deactivated, or updated.<br /></p>\n\n<p>There is a new functionality to confirm user requests by email address. It is intended for site owners to be able to verify requests from users for displaying, downloading, or anonymizing of personal data.<br /></p>\n\n<p>A new &#8220;Privacy&#8221; page is added under the &#8220;Tools&#8221; menu. It will display new, confirmed requests from users, as well as already fulfilled requests. It will also contain the tools for exporting and anonymizing of personal data and for requesting email confirmation to avoid abuse attempts.<br /></p>\n\n<p>New section on privacy will be added to the <a href=\"https://developer.wordpress.org/plugins/\">Plugin Handbook</a>. It will contain some general information on user privacy, what a plugin should do to be compliant, and also tips and examples on how to use the new privacy related functionality in WordPress.<br /></p>\n\n<p>The new privacy tools are scheduled for release at the end of April or beginning of May 2018.</p>\n\n<h2>How can you get involved?</h2>\n\n<p>We would love to have your help. The first step is awareness and education. For more information about the upcoming privacy tools see ﻿<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">the roadmap</a>.</p>\n\n<p>If you would like to get involved in building WordPress Core and testing the new privacy tools, please join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack group.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 20:11:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"WPTavern: WPWeekly Episode 312 – Dragon Drop, WordPress Accessibility Statement, and WooCommerce GDPR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=79862&preview=true&preview_id=79862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://wptavern.com/wpweekly-episode-312-dragon-drop-wordpress-accessibility-statement-and-woocommerce-gdpr\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1888:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I start the show by sharing our thoughts on Mark Zuckberberg&#8217;s congressional hearing. We then discuss what&#8217;s new in Gutenberg 2.6 and describe our user experience. We let you know what&#8217;s in WooCommerce 3.3.5 and discuss what the development team is doing to prepare for GDPR compliance.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-2-6-introduces-drag-and-drop-block-sorting\">Gutenberg 2.6 Introduces Drag and Drop Block Sorting</a><br />\n<a href=\"https://wptavern.com/theme-review-changes-place-more-onus-onto-theme-authors\">Theme Review Changes Place More Onus Onto Theme Authors</a><br />\n<a href=\"https://wordpress.org/about/accessibility/\">WordPress Accessibility Statement</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/04/10/woocommerce-3-3-5-fix-release-notes/\">WooCommerce 3.3.5 Released</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/04/10/how-were-tackling-gdpr-in-woocommerce-core/\">How WooCommerce is tackling GDPR</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://atomicblocks.com/introducing-the-atomic-blocks-plugin-and-theme/\">AtomBlocks by Mike McAlister</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, April 18th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #312:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 01:05:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 29 May 2018 00:31:26 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Tue, 29 May 2018 00:15:29 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911080210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(190, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1527597085', 'no'),
(191, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1527553885', 'no'),
(192, '_transient_timeout_dash_v2_552322dd4badcfc6c46e921c5ef2a928', '1527597085', 'no'),
(193, '_transient_dash_v2_552322dd4badcfc6c46e921c5ef2a928', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/\'>WordPress.org Privacy Policy Updates</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://blog.akismet.com/2018/05/28/version-4-0-7-of-the-akismet-wordpress-plugin-is-now-available/\'>Akismet: Version 4.0.7 of the Akismet WordPress Plugin Is Now Available</a></li><li><a class=\'rsswidget\' href=\'https://blog.akismet.com/2018/05/26/version-4-0-6-of-the-akismet-wordpress-plugin-is-now-available/\'>Akismet: Version 4.0.6 of the Akismet WordPress Plugin Is Now Available</a></li><li><a class=\'rsswidget\' href=\'https://poststatus.com/the-history-of-the-web-and-wordpresss-15th-birthday-draft-podcast/\'>Post Status: The History of the Web, and WordPress’s 15th Birthday — Draft Podcast</a></li></ul></div>', 'no'),
(194, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527555696;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-12-02 15:28:12\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/es_VE.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(199, 'current_theme', 'Blog Expert', 'yes'),
(200, 'theme_mods_blog-expert', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"header_text\";i:1;s:11:\"custom_logo\";s:0:\"\";s:16:\"background_color\";s:6:\"ffffff\";s:12:\"header_image\";s:13:\"remove-header\";}', 'yes'),
(201, 'theme_switched', '', 'yes'),
(202, 'widget_blog-expert-popular-sidebar-layout', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'widget_blog-expert-author-layout', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'category_children', 'a:0:{}', 'yes'),
(214, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527555716;s:7:\"checked\";a:7:{s:10:\"a-magazine\";s:5:\"1.0.1\";s:11:\"blog-expert\";s:5:\"1.0.5\";s:16:\"elegant-magazine\";s:7:\"1.0.9.2\";s:8:\"magazina\";s:5:\"1.0.8\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"1.9\";s:7:\"updated\";s:19:\"2015-10-29 16:42:00\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.9/es_VE.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(216, '_transient_blog_expert_categories', '1', 'yes'),
(217, '_site_transient_timeout_theme_roots', '1527559735', 'no'),
(218, '_site_transient_theme_roots', 'a:7:{s:10:\"a-magazine\";s:7:\"/themes\";s:11:\"blog-expert\";s:7:\"/themes\";s:16:\"elegant-magazine\";s:7:\"/themes\";s:8:\"magazina\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(219, 'theme_mods_magazina', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_edit_lock', '1527553830:1'),
(3, 1, '_edit_last', '1'),
(6, 1, '_wp_old_slug', 'hola-mundo'),
(7, 5, '_edit_lock', '1527554740:1'),
(8, 6, '_wp_attached_file', '2018/05/Kanji_Muten_Roshi-e1527554500506.png'),
(9, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:44:\"2018/05/Kanji_Muten_Roshi-e1527554500506.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Kanji_Muten_Roshi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Kanji_Muten_Roshi-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 7, '_wp_attached_file', '2018/05/cropped-Kanji_Muten_Roshi.png'),
(11, 7, '_wp_attachment_context', 'custom-logo'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:442;s:4:\"file\";s:37:\"2018/05/cropped-Kanji_Muten_Roshi.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-Kanji_Muten_Roshi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-Kanji_Muten_Roshi-300x295.png\";s:5:\"width\";i:300;s:6:\"height\";i:295;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 6, '_edit_lock', '1527554370:1'),
(14, 6, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"Kanji_Muten_Roshi.png\";}s:18:\"full-1527554500506\";a:3:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:36:\"Kanji_Muten_Roshi-e1527554475269.png\";}}'),
(15, 6, '_edit_last', '1'),
(16, 8, '_wp_attached_file', '2018/05/cropped-Kanji_Muten_Roshi-e1527554500506.png'),
(17, 8, '_wp_attachment_context', 'custom-header'),
(18, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:380;s:4:\"file\";s:52:\"2018/05/cropped-Kanji_Muten_Roshi-e1527554500506.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-Kanji_Muten_Roshi-e1527554500506-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"cropped-Kanji_Muten_Roshi-e1527554500506-300x81.png\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"cropped-Kanji_Muten_Roshi-e1527554500506-768x208.png\";s:5:\"width\";i:768;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"cropped-Kanji_Muten_Roshi-e1527554500506-1024x278.png\";s:5:\"width\";i:1024;s:6:\"height\";i:278;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"blog-expert-main-banner\";a:4:{s:4:\"file\";s:53:\"cropped-Kanji_Muten_Roshi-e1527554500506-1370x380.png\";s:5:\"width\";i:1370;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:6;}'),
(19, 8, '_wp_attachment_custom_header_last_used_blog-expert', '1527554568'),
(20, 8, '_wp_attachment_is_custom_header', 'blog-expert'),
(21, 5, '_wp_trash_meta_status', 'publish'),
(22, 5, '_wp_trash_meta_time', '1527554757'),
(23, 9, '_wp_attached_file', '2018/05/infortelecom_10-habilidades-que-todo-programador-web-debería-tener.jpg'),
(24, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:477;s:4:\"file\";s:79:\"2018/05/infortelecom_10-habilidades-que-todo-programador-web-debería-tener.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:79:\"infortelecom_10-habilidades-que-todo-programador-web-debería-tener-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:79:\"infortelecom_10-habilidades-que-todo-programador-web-debería-tener-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:79:\"infortelecom_10-habilidades-que-todo-programador-web-debería-tener-768x407.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(25, 9, '_wp_attachment_custom_header_last_used_magazina', '1527558113'),
(26, 9, '_wp_attachment_is_custom_header', 'magazina'),
(27, 6, '_wp_attachment_custom_header_last_used_magazina', '1527558131'),
(28, 6, '_wp_attachment_is_custom_header', 'magazina'),
(29, 10, '_edit_lock', '1527564203:1'),
(30, 9, '_wp_attachment_is_custom_background', 'blog-expert');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-02 21:34:13', '2018-05-03 03:34:13', 'Con trampa faltas y golazsos bla bllbalablballbaalbblalb a lba b albal alb la bdl lab bla  blala bl bal bal b', 'Real Madrid gana la champions', '', 'publish', 'open', 'open', '', 'real', '', '', '2018-05-28 18:32:26', '2018-05-29 00:32:26', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-02 21:34:13', '2018-05-03 03:34:13', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y, en la mayoría de temas, se mostrará en la barra de navegación. Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Puede decir algo así:\n\n<blockquote>¡Hola!: Soy físico durante el día, lector de manga por las noches y este es mi blog. Vivo en Albacete y tengo un gato llamado Alex. Me encantan los mojitos (y mirar a la gente corriendo en los parques)</blockquote>\n\nO algo así:\n\n<blockquote>La empresa Calcetines XYC se fundó en 1973, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Se encuentra en Vetusta, tiene unos 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Vestusta</blockquote>\n\nDeberías ir a <a href=\"http://localhost/wordpress/wp-admin/\">tu escritorio</a>, borrar esta página y crear algunas nuevas con tu contenido. ¡A divertirse!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2018-05-02 21:34:13', '2018-05-03 03:34:13', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-02 21:34:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-02 21:34:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2018-05-28 18:32:26', '2018-05-29 00:32:26', 'Con trampa faltas y golazsos bla bllbalablballbaalbblalb a lba b albal alb la bdl lab bla  blala bl bal bal b', 'Real Madrid gana la champions', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-28 18:32:26', '2018-05-29 00:32:26', '', 1, 'http://localhost/wordpress/2018/05/28/1-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-05-28 18:45:56', '2018-05-29 00:45:56', '{\n    \"blogname\": {\n        \"value\": \"Luis Ortega\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 00:39:36\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Pagina web personal de presentaci\\u00f3n\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 00:39:36\"\n    },\n    \"blog-expert::header_text\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 00:39:36\"\n    },\n    \"blog-expert::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 00:42:37\"\n    },\n    \"blog-expert::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 00:42:37\"\n    },\n    \"blog-expert::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 00:43:37\"\n    },\n    \"blog-expert::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 00:43:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '641184f7-6c79-49a0-b007-fdbd5439cda1', '', '', '2018-05-28 18:45:56', '2018-05-29 00:45:56', '', 0, 'http://localhost/wordpress/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2018-05-28 18:40:25', '2018-05-29 00:40:25', '', 'Kanji_Muten_Roshi', '', 'inherit', 'open', 'closed', '', 'kanji_muten_roshi', '', '', '2018-05-28 18:41:20', '2018-05-29 00:41:20', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/05/Kanji_Muten_Roshi.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-05-28 18:40:42', '2018-05-29 00:40:42', 'http://localhost/wordpress/wp-content/uploads/2018/05/cropped-Kanji_Muten_Roshi.png', 'cropped-Kanji_Muten_Roshi.png', '', 'inherit', 'open', 'closed', '', 'cropped-kanji_muten_roshi-png', '', '', '2018-05-28 18:40:42', '2018-05-29 00:40:42', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/05/cropped-Kanji_Muten_Roshi.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2018-05-28 18:42:47', '2018-05-29 00:42:47', '', 'cropped-Kanji_Muten_Roshi-e1527554500506.png', '', 'inherit', 'open', 'closed', '', 'cropped-kanji_muten_roshi-e1527554500506-png', '', '', '2018-05-28 18:42:47', '2018-05-29 00:42:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/05/cropped-Kanji_Muten_Roshi-e1527554500506.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2018-05-28 19:41:35', '2018-05-29 01:41:35', '', 'infortelecom_10-habilidades-que-todo-programador-web-debería-tener', '', 'inherit', 'open', 'closed', '', 'infortelecom_10-habilidades-que-todo-programador-web-deberia-tener', '', '', '2018-05-28 19:41:35', '2018-05-29 01:41:35', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/05/infortelecom_10-habilidades-que-todo-programador-web-debería-tener.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-05-28 19:48:20', '0000-00-00 00:00:00', '{\n    \"blog-expert::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:46:25\"\n    },\n    \"blog-expert::nav_menu_locations[social]\": {\n        \"value\": -2127713297,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:46:25\"\n    },\n    \"nav_menu[-2127713297]\": {\n        \"value\": {\n            \"name\": \"Redes\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:45:25\"\n    },\n    \"nav_menu_item[-996016353]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Uno\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": -2127713297,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:45:25\"\n    },\n    \"nav_menu_item[-919278751]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Dos\",\n            \"url\": \"http://localhost/wordpress/pagina-ejemplo/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"P\\u00e1gina de ejemplo\",\n            \"nav_menu_term_id\": -2127713297,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:45:25\"\n    },\n    \"blog-expert::nav_menu_locations[top]\": {\n        \"value\": -2127713297,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:46:25\"\n    },\n    \"blog-expert::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:47:25\"\n    },\n    \"blog-expert::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:47:25\"\n    },\n    \"blog-expert::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:48:20\"\n    },\n    \"sidebars_widgets[slide-menu]\": {\n        \"value\": [\n            \"calendar-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:48:20\"\n    },\n    \"blog-expert::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:48:20\"\n    },\n    \"blog-expert::background_position_y\": {\n        \"value\": \"bottom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:48:20\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-29 01:48:20\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0414bf16-63cc-4a15-8bc7-1b6403121638', '', '', '2018-05-28 19:48:20', '2018-05-29 01:48:20', '', 0, 'http://localhost/wordpress/?p=10', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Lu1s'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f4c186425b9b73d490185f86962b52efd883bf7cd3236f8baa3b9aad0904d3f5\";a:4:{s:10:\"expiration\";i:1527726670;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1527553870;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1527554457');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Lu1s', '$P$BGaq0ITtGhGeD1KwLy8KnQfByT1Y0u1', 'lu1s', 'luisortegadlr@gmail.com', '', '2018-05-03 03:34:12', '', 0, 'Lu1s');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
