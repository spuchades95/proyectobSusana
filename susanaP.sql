-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-05-2024 a las 21:08:06
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administratives`
--

CREATE TABLE `administratives` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Usuario_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administratives`
--

INSERT INTO `administratives` (`deleted_at`, `created_at`, `updated_at`, `Usuario_id`) VALUES
(NULL, NULL, NULL, 1),
(NULL, '2024-02-29 16:49:05', '2024-02-29 16:49:05', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrative_berths`
--

CREATE TABLE `administrative_berths` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Administrativo_id` bigint UNSIGNED NOT NULL,
  `Amarre_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrative_berths`
--

INSERT INTO `administrative_berths` (`deleted_at`, `created_at`, `updated_at`, `Administrativo_id`, `Amarre_id`) VALUES
(NULL, NULL, NULL, 1, 17),
(NULL, NULL, NULL, 1, 28),
(NULL, NULL, NULL, 1, 29),
(NULL, NULL, NULL, 5, 17),
(NULL, NULL, NULL, 5, 28),
(NULL, NULL, NULL, 5, 30),
(NULL, NULL, NULL, 5, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `base_berths`
--

CREATE TABLE `base_berths` (
  `id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Amarre_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `base_berths`
--

INSERT INTO `base_berths` (`id`, `deleted_at`, `created_at`, `updated_at`, `Amarre_id`) VALUES
(1, NULL, '2024-02-20 17:48:53', '2024-02-21 18:01:14', 6),
(2, NULL, '2024-02-20 17:52:46', '2024-02-22 14:49:42', 7),
(3, NULL, '2024-02-20 17:53:35', '2024-02-22 14:50:18', 8),
(4, '2024-02-21 18:29:53', '2024-02-21 16:34:05', '2024-02-21 18:29:53', 10),
(5, NULL, '2024-02-21 17:07:55', '2024-02-22 14:50:48', 11),
(6, '2024-02-21 18:40:28', '2024-02-21 18:40:06', '2024-02-21 18:40:28', 13),
(7, '2024-02-21 18:45:52', '2024-02-21 18:44:51', '2024-02-21 18:45:52', 14),
(8, '2024-02-21 18:54:22', '2024-02-21 18:53:51', '2024-02-21 18:54:22', 15),
(9, '2024-02-21 18:58:49', '2024-02-21 18:58:29', '2024-02-21 18:58:49', 16),
(10, NULL, '2024-02-21 19:03:28', '2024-02-21 19:03:28', 17),
(20, NULL, '2024-02-27 18:15:42', '2024-02-27 18:15:42', 28),
(21, NULL, '2024-02-27 18:15:50', '2024-02-27 18:15:50', 29),
(22, NULL, '2024-02-29 15:45:45', '2024-02-29 15:45:45', 30),
(23, NULL, '2024-02-29 15:46:18', '2024-02-29 15:46:18', 10),
(24, NULL, '2024-03-03 18:28:21', '2024-03-03 18:28:21', 34),
(25, NULL, '2024-03-03 18:28:40', '2024-03-03 18:28:40', 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `berths`
--

CREATE TABLE `berths` (
  `id` bigint UNSIGNED NOT NULL,
  `Numero` int NOT NULL,
  `Estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TipoPlaza` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Anio` datetime NOT NULL,
  `Pantalan_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `berths`
--

INSERT INTO `berths` (`id`, `Numero`, `Estado`, `TipoPlaza`, `Anio`, `Pantalan_id`, `deleted_at`, `created_at`, `updated_at`, `Causa`) VALUES
(1, 1, 'Disponible', 'Transito', '2024-02-20 00:00:00', 1, '2024-02-20 17:41:34', '2024-02-20 17:41:23', '2024-02-20 17:41:34', NULL),
(2, 1, 'Disponible', 'Undefined', '2024-02-20 00:00:00', 1, '2024-02-20 17:43:41', '2024-02-20 17:43:25', '2024-02-20 17:43:41', NULL),
(3, 2, 'Disponible', 'Transito', '2024-02-20 00:00:00', 1, '2024-02-20 17:47:17', '2024-02-20 17:43:34', '2024-02-20 17:47:17', NULL),
(4, 3, 'Disponible', 'Transito', '2024-02-20 00:00:00', 1, '2024-02-20 17:46:24', '2024-02-20 17:46:17', '2024-02-20 17:46:24', NULL),
(5, 1, 'Disponible', 'Transito', '2024-02-20 00:00:00', 1, '2024-02-20 17:48:42', '2024-02-20 17:48:36', '2024-02-20 17:48:42', NULL),
(6, 1, 'Disponible', 'Plaza Base', '2024-02-20 00:00:00', 1, '2024-02-20 17:49:00', '2024-02-20 17:48:53', '2024-02-20 17:49:00', NULL),
(7, 1, 'Disponible', 'Plaza Base', '2024-02-20 00:00:00', 1, '2024-02-20 19:01:39', '2024-02-20 17:52:39', '2024-02-20 19:01:39', 'yyyyyyy'),
(8, 2, 'Disponible', 'Plaza Base', '2024-02-20 00:00:00', 1, '2024-02-20 17:58:23', '2024-02-20 17:53:27', '2024-02-20 17:58:23', NULL),
(9, 1, 'Mantenimiento', 'Transito', '2024-02-20 00:00:00', 1, '2024-02-20 19:05:53', '2024-02-20 19:02:50', '2024-02-20 19:05:53', '22:05'),
(10, 1, 'Mantenimiento', 'Plaza Base', '2024-02-21 00:00:00', 1, NULL, '2024-02-21 16:33:56', '2024-02-29 15:46:18', NULL),
(11, 2, 'Disponible', 'Plaza Base', '2024-02-21 00:00:00', 1, '2024-02-21 18:37:46', '2024-02-21 17:07:55', '2024-02-21 18:37:46', NULL),
(12, 3, 'Disponible', 'Transito', '2024-02-21 00:00:00', 1, NULL, '2024-02-21 17:32:52', '2024-02-21 17:32:52', NULL),
(13, 4, 'Disponible', 'Plaza Base', '2024-02-21 00:00:00', 1, '2024-02-21 18:40:28', '2024-02-21 18:40:06', '2024-02-21 18:40:28', NULL),
(14, 4, 'Disponible', 'Plaza Base', '2024-02-21 00:00:00', 1, '2024-02-21 18:46:42', '2024-02-21 18:44:51', '2024-02-21 18:46:42', NULL),
(15, 4, 'Disponible', 'Plaza Base', '2024-02-21 00:00:00', 1, '2024-02-21 18:54:22', '2024-02-21 18:53:51', '2024-02-21 18:54:22', NULL),
(16, 4, 'Disponible', 'Plaza Base', '2024-02-21 00:00:00', 1, '2024-02-21 18:58:49', '2024-02-21 18:58:29', '2024-02-21 18:58:49', NULL),
(17, 4, 'Disponible', 'Plaza Base', '2024-02-21 00:00:00', 1, NULL, '2024-02-21 19:03:28', '2024-05-11 15:38:22', NULL),
(28, 1, 'Ocupado', 'Plaza Base', '2024-02-27 00:00:00', 1, NULL, '2024-02-27 18:15:42', '2024-05-11 15:38:53', NULL),
(29, 2, 'Ocupado', 'Plaza Base', '2024-02-27 00:00:00', 1, NULL, '2024-02-27 18:15:50', '2024-02-27 21:30:26', NULL),
(30, 5, 'Disponible', 'Plaza Base', '2024-02-29 00:00:00', 1, NULL, '2024-02-29 15:45:45', '2024-05-11 15:38:30', NULL),
(31, 1, 'Disponible', 'Undefined', '2024-03-02 13:55:58', 7, NULL, '2024-03-02 12:55:58', '2024-03-02 12:55:58', NULL),
(32, 2, 'Disponible', 'Undefined', '2024-03-02 13:55:58', 7, NULL, '2024-03-02 12:55:58', '2024-03-02 12:55:58', NULL),
(33, 3, 'Disponible', 'Undefined', '2024-03-02 13:55:58', 7, NULL, '2024-03-02 12:55:58', '2024-03-02 12:55:58', NULL),
(34, 6, 'Ocupado', 'Plaza Base', '2024-03-03 00:00:00', 1, NULL, '2024-03-03 18:28:21', '2024-05-11 15:37:13', NULL),
(35, 7, 'Disponible', 'Plaza Base', '2024-03-03 00:00:00', 1, NULL, '2024-03-03 18:28:40', '2024-03-03 18:28:40', NULL),
(36, 1, 'Ocupado', 'Transito', '2024-03-03 00:00:00', 8, NULL, '2024-03-03 21:37:27', '2024-03-03 21:38:02', NULL),
(37, 8, 'Ocupado', 'Transito', '2024-03-03 00:00:00', 1, NULL, '2024-03-03 21:39:44', '2024-03-03 21:40:11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boats`
--

CREATE TABLE `boats` (
  `id` bigint UNSIGNED NOT NULL,
  `Matricula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Manga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Eslora` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Numero_registro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Datos_Tecnicos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Modelo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Titular` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `boats`
--

INSERT INTO `boats` (`id`, `Matricula`, `Manga`, `Eslora`, `Origen`, `Imagen`, `Numero_registro`, `Datos_Tecnicos`, `Modelo`, `Nombre`, `Causa`, `Tipo`, `deleted_at`, `created_at`, `updated_at`, `Titular`) VALUES
(1, 'hx-616729', '5', '13', 'Spain', 'https://via.placeholder.com/640x480.png/005511?text=et', NULL, 'Eaque odio neque consequatur doloribus exercitationem nesciunt vitae deleniti.', 'quis', 'Dr. Audra Satterfield DDS', NULL, 'Lancha', NULL, '2024-02-24 21:22:47', '2024-02-24 21:22:47', 1),
(2, 'hk-605477', '7', '16', 'Heard Island and McDonald Islands', 'https://via.placeholder.com/640x480.png/00ff22?text=qui', NULL, 'Iusto esse iure saepe cum autem reiciendis sed.', 'natus', 'Margaretta Schuppe', NULL, 'Catamarán', NULL, '2024-02-24 21:22:48', '2024-02-24 21:22:48', 2),
(3, 'ka-631432', '5', '22', 'Guyana', 'https://via.placeholder.com/640x480.png/002266?text=sit', NULL, 'Beatae omnis ipsum dolor sed iste debitis praesentium.', 'dicta', 'Jamar Doyle', NULL, 'Velero', NULL, '2024-02-24 21:22:48', '2024-02-24 21:22:48', 1),
(4, 'vq-380239', '8', '24', 'Costa Rica', 'https://via.placeholder.com/640x480.png/007744?text=sapiente', NULL, 'Qui et magni tempora doloremque laboriosam.', 'nam', 'Ophelia Mitchell', NULL, 'Catamarán', NULL, '2024-02-25 11:32:36', '2024-02-25 11:32:36', 1),
(5, 'qb-273649', '7', '28', 'Burkina Faso', 'https://via.placeholder.com/640x480.png/00ee33?text=quo', NULL, 'Aut rerum accusantium consequatur vitae qui quis sint.', 'qui', 'Martine Leffler', NULL, 'Catamarán', NULL, '2024-02-25 11:32:36', '2024-02-25 11:32:36', 1),
(6, 'ls-137744', '8', '13', 'United States Virgin Islands', 'https://via.placeholder.com/640x480.png/004400?text=nesciunt', NULL, 'Ut sint delectus voluptatem tempore suscipit nisi.', 'iste', 'Elwin Connelly', NULL, 'Yate', NULL, '2024-02-25 11:32:36', '2024-02-25 11:32:36', 1),
(7, '777777', '1', '2', 'Corea del Sur', NULL, '222222', '3', 'X-58', 'DaeguRules', NULL, 'Yate', NULL, '2024-05-11 15:12:11', '2024-05-11 15:12:11', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `NumeroTarjeta` int NOT NULL,
  `NombreTarjeta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaCaducidad` date NOT NULL,
  `CVV` int NOT NULL,
  `Cliente_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cards`
--

INSERT INTO `cards` (`id`, `NumeroTarjeta`, `NombreTarjeta`, `FechaCaducidad`, `CVV`, `Cliente_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 111111111, 'Jungkookie', '2024-02-15', 543, 2, '2024-05-07 14:24:25', '2024-05-07 14:24:25', NULL),
(2, 111155555, 'Jungkookie', '2024-05-15', 554, 2, '2024-05-07 14:25:28', '2024-05-07 14:25:28', NULL),
(3, 111155555, 'SeokJin', '2024-05-15', 192, 1, '2024-05-11 10:44:53', '2024-05-11 10:44:53', NULL),
(4, 77777777, 'SeokJin Kim', '2024-07-15', 200, 1, '2024-05-11 10:51:39', '2024-05-11 12:40:10', '2024-05-11 12:40:10'),
(5, 77777777, 'SeokJin Kim', '2024-07-15', 200, 1, '2024-05-11 11:29:36', '2024-05-11 11:29:46', '2024-05-11 11:29:46'),
(6, 77777777, 'SeokJin Kim', '2024-07-15', 200, 1, '2024-05-11 12:34:34', '2024-05-17 15:43:22', '2024-05-17 15:43:22'),
(7, 77774442, 'SeokJin Kim', '2024-07-15', 200, 1, '2024-05-11 12:44:11', '2024-05-11 12:44:22', '2024-05-11 12:44:22'),
(8, 77744447, 'SeokJin Kim', '2024-07-15', 200, 1, '2024-05-11 12:56:10', '2024-05-11 12:56:23', '2024-05-11 12:56:23'),
(9, 1111111111, 'kim namjoon', '2024-12-01', 222, 1, '2024-05-11 14:13:23', '2024-05-11 14:13:23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `civil_guards`
--

CREATE TABLE `civil_guards` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Usuario_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `civil_guards`
--

INSERT INTO `civil_guards` (`deleted_at`, `created_at`, `updated_at`, `Usuario_id`) VALUES
(NULL, '2024-03-02 13:16:59', '2024-03-02 13:16:59', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `civil_guard_transits`
--

CREATE TABLE `civil_guard_transits` (
  `FechaVisualizacion` datetime NOT NULL,
  `GuardaCivil_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Transito_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `Usuario_id` bigint UNSIGNED NOT NULL,
  `FechaNacimiento` datetime DEFAULT NULL,
  `Genero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `Usuario_id`, `FechaNacimiento`, `Genero`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 11, '1992-12-03 00:00:00', 'Masculino', NULL, '2024-03-14 17:57:53', '2024-05-17 15:57:13'),
(2, 13, NULL, NULL, NULL, '2024-05-06 16:17:15', '2024-05-06 16:17:15'),
(3, 14, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concessionaires`
--

CREATE TABLE `concessionaires` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Usuario_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `concessionaires`
--

INSERT INTO `concessionaires` (`deleted_at`, `created_at`, `updated_at`, `Usuario_id`) VALUES
(NULL, '2024-02-28 18:27:33', '2024-02-28 18:27:33', 1),
(NULL, '2024-02-29 17:07:18', '2024-02-29 17:07:18', 7),
(NULL, '2024-02-29 17:09:11', '2024-02-29 17:09:11', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concessionaire_facilities`
--

CREATE TABLE `concessionaire_facilities` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Concesionario_id` bigint UNSIGNED NOT NULL,
  `Instalacion_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concessionaire_roles`
--

CREATE TABLE `concessionaire_roles` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Concesionario_id` bigint UNSIGNED NOT NULL,
  `Rol_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crews`
--

CREATE TABLE `crews` (
  `id` bigint UNSIGNED NOT NULL,
  `NumeroDeDocumento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nacionalidad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docks`
--

CREATE TABLE `docks` (
  `id` bigint UNSIGNED NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capacidad` int NOT NULL,
  `FechaCreacion` datetime NOT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Instalacion_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docks`
--

INSERT INTO `docks` (`id`, `Nombre`, `Ubicacion`, `Descripcion`, `Capacidad`, `FechaCreacion`, `Causa`, `Instalacion_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'A', 'La coruña', 'es un puerto', 50, '2024-02-20 00:00:00', NULL, 1, NULL, '2024-02-20 15:49:54', '2024-02-20 15:49:54'),
(2, 'C-P-1', 'Puerto de Vigo', 'es un puerto', 500, '2024-03-01 00:00:00', NULL, 1, '2024-03-02 12:57:54', '2024-03-01 13:39:38', '2024-03-02 12:57:54'),
(3, 'dddd', 'dddd', 'ddd', 222, '2024-03-02 00:00:00', NULL, 3, NULL, '2024-03-02 12:34:07', '2024-03-02 12:34:07'),
(4, 'hhh', 'hhh', 'hhh', 56, '2024-03-02 00:00:00', NULL, 4, NULL, '2024-03-02 12:42:30', '2024-03-02 12:42:30'),
(5, 'qqqq', 'qqq', 'qqq', 111, '2024-03-02 00:00:00', NULL, 5, NULL, '2024-03-02 12:44:39', '2024-03-02 12:44:39'),
(6, 'A', 'f', 'es una puerta', 500, '2024-03-02 00:00:00', NULL, 6, NULL, '2024-03-02 12:48:35', '2024-03-02 12:48:35'),
(7, 'A', 'h', 'es una puerta', 500, '2024-03-02 00:00:00', NULL, 7, NULL, '2024-03-02 12:55:54', '2024-03-02 12:55:54'),
(8, 'kkk', 'kkk', 'kkkk', 5555555, '2024-03-03 00:00:00', NULL, 1, NULL, '2024-03-03 14:28:11', '2024-03-03 14:28:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dock_workers`
--

CREATE TABLE `dock_workers` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Usuario_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dock_workers`
--

INSERT INTO `dock_workers` (`deleted_at`, `created_at`, `updated_at`, `Usuario_id`) VALUES
(NULL, '2024-03-03 15:31:39', '2024-03-03 15:31:39', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `Ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dimensiones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaCreacion` datetime NOT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facilities`
--

INSERT INTO `facilities` (`id`, `Ubicacion`, `Dimensiones`, `Descripcion`, `Estado`, `FechaCreacion`, `Causa`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Puerto de Lugo', '58', 'En un puerto de Lugo', 'Disponible', '2024-02-13 00:00:00', NULL, NULL, '2024-02-20 14:57:31', '2024-02-20 14:57:31'),
(2, 's', 's', 's', 'des', '2024-02-25 00:00:00', NULL, '2024-02-20 16:21:15', '2024-02-20 16:21:01', '2024-02-20 16:21:15'),
(3, 'ddd', 'ddd', 'dddd', 'Mantenimiento', '2024-03-02 00:00:00', NULL, '2024-03-02 12:42:12', '2024-03-02 12:33:54', '2024-03-02 12:42:12'),
(4, 'bhh', 'hhh', 'hhh', 'Mantenimiento', '2024-03-02 00:00:00', NULL, '2024-03-02 12:48:02', '2024-03-02 12:42:22', '2024-03-02 12:48:02'),
(5, 'ddd', 'dd', 'es un puerto', 'Mantenimiento', '2024-03-02 00:00:00', NULL, '2024-03-02 12:48:14', '2024-03-02 12:44:33', '2024-03-02 12:48:14'),
(6, 'd', 'ddd', 'ddd', 'Disponible', '2024-03-02 00:00:00', NULL, '2024-03-02 13:09:39', '2024-03-02 12:48:23', '2024-03-02 13:09:39'),
(7, 'h', '500', 'es un puerto', 'Disponible', '2024-03-02 00:00:00', NULL, '2024-03-02 12:57:47', '2024-03-02 12:55:35', '2024-03-02 12:57:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hires`
--

CREATE TABLE `hires` (
  `id` bigint UNSIGNED NOT NULL,
  `Estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaContratacion` datetime DEFAULT NULL,
  `FechaFinalizacion` datetime DEFAULT NULL,
  `Cliente_id` bigint UNSIGNED NOT NULL,
  `Servicio_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `Ticket_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `hires`
--

INSERT INTO `hires` (`id`, `Estado`, `FechaContratacion`, `FechaFinalizacion`, `Cliente_id`, `Servicio_id`, `created_at`, `updated_at`, `deleted_at`, `Ticket_id`) VALUES
(14, 'Completado', '2024-05-20 00:00:00', '2024-05-20 00:00:00', 1, 1, '2024-05-20 13:58:49', '2024-05-20 13:58:49', NULL, 1),
(15, 'Procesando', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 1, 1, '2024-05-21 16:48:46', '2024-05-21 16:48:46', NULL, 33),
(16, 'Cancelado', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 1, 1, '2024-05-21 16:52:51', '2024-05-22 14:35:26', NULL, 34),
(17, 'Cancelado', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 1, 1, '2024-05-21 17:22:40', '2024-05-22 14:35:39', NULL, 35),
(18, 'Procesando', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 1, 3, '2024-05-21 17:22:40', '2024-05-21 17:22:40', NULL, 35),
(19, 'Activo', '2024-05-21 00:00:00', '2024-06-21 00:00:00', 1, 4, '2024-05-21 17:22:40', '2024-05-21 17:22:40', NULL, 35),
(20, 'Activo', '2024-05-22 00:00:00', '2024-06-22 00:00:00', 1, 4, '2024-05-22 14:32:21', '2024-05-22 14:32:21', NULL, 36),
(21, 'Cancelado', '2024-05-22 00:00:00', '2024-06-22 00:00:00', 1, 3, '2024-05-22 15:40:29', '2024-05-22 15:40:40', NULL, 37),
(22, 'Procesando', '2024-05-22 00:00:00', '2024-05-22 00:00:00', 1, 1, '2024-05-22 15:41:38', '2024-05-22 15:41:38', NULL, 38),
(23, 'Procesando', '2024-05-22 00:00:00', '2024-05-22 00:00:00', 1, 6, '2024-05-22 15:41:38', '2024-05-22 15:41:38', NULL, 38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidents`
--

CREATE TABLE `incidents` (
  `id` bigint UNSIGNED NOT NULL,
  `Titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Leido` tinyint(1) DEFAULT NULL,
  `Guardamuelle_id` bigint UNSIGNED NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Administrativo_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `managers`
--

CREATE TABLE `managers` (
  `id` bigint UNSIGNED NOT NULL,
  `Usuario_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `managers`
--

INSERT INTO `managers` (`id`, `Usuario_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 12, NULL, '2024-03-19 13:48:56', '2024-03-19 13:48:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manages`
--

CREATE TABLE `manages` (
  `id` bigint UNSIGNED NOT NULL,
  `Gestor_id` bigint UNSIGNED NOT NULL,
  `Servicio_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_01_31_161701_create_berths_table', 1),
(5, '2024_01_31_171543_create_base_berths_table', 1),
(6, '2024_01_31_171547_create_facilities_table', 1),
(7, '2024_01_31_171555_create_roles_table', 1),
(8, '2024_01_31_171558_create_users_table', 1),
(9, '2024_01_31_171617_create_concessionaires_table', 1),
(10, '2024_01_31_171629_create_administratives_table', 1),
(11, '2024_01_31_171635_create_dock_workers_table', 1),
(12, '2024_01_31_171642_create_civil_guards_table', 1),
(13, '2024_01_31_171652_create_docks_table', 1),
(14, '2024_01_31_171707_create_boats_table', 1),
(15, '2024_01_31_171716_create_rentals_table', 1),
(16, '2024_01_31_171724_create_crews_table', 1),
(17, '2024_01_31_171730_create_incidents_table', 1),
(18, '2024_01_31_171735_create_transits_table', 1),
(19, '2024_01_31_171749_create_civil_guard_transits_table', 1),
(20, '2024_01_31_171755_create_administrative_berths_table', 1),
(21, '2024_01_31_171801_create_transit_boats_table', 1),
(22, '2024_01_31_171806_create_transit_crews_table', 1),
(23, '2024_01_31_171811_create_concessionaire_roles_table', 1),
(24, '2024_01_31_171817_create_concessionaire_facilities_table', 1),
(25, '2024_02_05_165917_update_to_base_berth_table', 1),
(26, '2024_02_06_165750_update_to_user_table', 1),
(27, '2024_02_06_165806_update_to_concessionaire_table', 1),
(28, '2024_02_06_165811_update_to_administrative_table', 1),
(29, '2024_02_06_165819_update_to_dock_worker_table', 1),
(30, '2024_02_06_165825_update_to_civil_guard_table', 1),
(31, '2024_02_06_165837_update_to_dock_table', 1),
(32, '2024_02_06_165843_update_to_berth_table', 1),
(33, '2024_02_06_165854_update_to_rental_table', 1),
(34, '2024_02_06_165906_update_to_incident_table', 1),
(35, '2024_02_06_165912_update_to_transit_table', 1),
(36, '2024_02_06_165924_update_to_civil_guard_transit_table', 1),
(37, '2024_02_06_165929_update_to_administrative_berths_table', 1),
(38, '2024_02_06_165936_update_to_transit_boat_table', 1),
(39, '2024_02_06_165941_update_to_transit_crew_table', 1),
(40, '2024_02_06_165947_update_to_concessionaire_role_table', 1),
(41, '2024_02_06_165952_update_to_concessionaire_facility_table', 1),
(42, '2024_02_09_080716_update_to_incident_table', 1),
(43, '2024_02_10_204111_add_permisos_to_roles_table', 1),
(44, '2024_02_14_165903_change_datetime_facilities_table', 1),
(45, '2024_02_14_174803_update_to_berths_table', 1),
(46, '2024_02_14_174931_update_to_civil_guard_transit_table', 1),
(47, '2024_02_14_175028_update_to_docks_table', 1),
(48, '2024_02_14_175133_update_to_rentals_table', 1),
(49, '2024_02_14_175236_update_to_transits_table', 1),
(50, '2024_02_15_161730_update_to_berths_table', 1),
(51, '2024_02_21_164633_update_to_transits_table', 2),
(52, '2024_02_26_131717_update_to_transit_boats_table', 3),
(53, '2024_02_26_131844_update_to_transits_table', 3),
(54, '2024_02_27_132105_update_to_berths_table', 4),
(55, '2024_02_27_132148_update_to_transit_boats_table', 4),
(56, '2024_02_27_132155_update_to_rentals_table', 4),
(57, '2024_02_27_133648_update_to_berths_table', 5),
(58, '2024_03_01_103546_create_to_transit_boats_table', 6),
(59, '2024_03_03_194109_create_berths_table', 7),
(60, '2024_03_03_203018_update_to_rentals_table', 7),
(61, '2024_03_03_204246_update_to_base_berths_table', 7),
(62, '2024_03_14_163931_create_managers_table', 7),
(63, '2024_03_14_163938_create_clients_table', 7),
(64, '2024_03_14_163954_create_services_table', 8),
(65, '2024_03_14_163956_create_tickets_table', 9),
(66, '2024_03_14_164004_create_manages_table', 9),
(67, '2024_03_14_164015_create_hires_table', 9),
(68, '2024_03_14_164023_create_cards_table', 9),
(69, '2024_03_14_164051_update_to_boats_table', 10),
(70, '2024_03_14_181732_update_to_boats_table', 11),
(71, '2024_03_15_110323_update_to_tickets_table', 12),
(72, '2024_03_15_191946_update_to_services_table', 13),
(82, '2024_03_19_190206_update_to_hires_table', 14),
(83, '2024_03_19_190225_update_to_cards_table', 14),
(84, '2024_03_23_151532_add_ticket_id_to_hires_table', 15),
(85, '2024_03_25_192400_update_to_clients_table', 15),
(86, '2024_05_15_183921_update_to_hires_table', 15),
(89, '2024_05_16_174417_create_requests_table', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint UNSIGNED NOT NULL,
  `FechaInicio` datetime NOT NULL,
  `PlazaBase_id` bigint UNSIGNED NOT NULL,
  `FechaFinalizacion` datetime NOT NULL,
  `Embarcacion_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rentals`
--

INSERT INTO `rentals` (`id`, `FechaInicio`, `PlazaBase_id`, `FechaFinalizacion`, `Embarcacion_id`, `deleted_at`, `created_at`, `updated_at`, `Causa`) VALUES
(23, '2024-03-07 00:00:00', 22, '2024-10-06 00:00:00', 1, NULL, NULL, '2024-03-02 17:47:13', NULL),
(24, '2024-02-29 00:00:00', 10, '2024-03-10 00:00:00', 1, NULL, NULL, NULL, NULL),
(27, '2024-05-06 00:00:00', 24, '2024-12-08 00:00:00', 1, NULL, NULL, NULL, NULL),
(28, '2024-05-11 00:00:00', 20, '2024-11-11 00:00:00', 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requests`
--

CREATE TABLE `requests` (
  `id` bigint UNSIGNED NOT NULL,
  `FechaContratacion` date DEFAULT NULL,
  `Embarcacion_id` bigint UNSIGNED NOT NULL,
  `Servicio_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `NombreRol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Permisos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lectura',
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `NombreRol`, `Permisos`, `Descripcion`, `Causa`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Concesionario', 'lectura, modificacion, eliminacion', 'El que mas manda', NULL, NULL, '2024-02-20 14:58:26', '2024-02-20 14:58:26'),
(2, 'Administrativo', 'lectura, modificacion, eliminacion', 'El que administra cosas', NULL, NULL, '2024-02-20 14:58:41', '2024-02-20 14:58:41'),
(3, 'Guardamuelles', 'lectura, modificacion', 'El que guarda muelles', NULL, NULL, '2024-02-20 14:58:56', '2024-02-20 14:58:56'),
(4, 'Guarda Civil', 'lectura', 'El que vigila cosas', NULL, NULL, '2024-02-20 14:59:09', '2024-02-20 14:59:09'),
(5, 'Gestor', 'lectura, modificacion, eliminacion', 'Gestor de servicios', NULL, NULL, '2024-03-03 10:02:20', '2024-03-14 17:49:36'),
(6, 'Cliente', 'lectura', 'Los que nos pagan', NULL, NULL, '2024-03-14 17:50:14', '2024-03-14 17:50:14'),
(7, 'fff', 'lectura, modificacion, eliminacion', 'fff', NULL, '2024-02-20 19:08:46', '2024-02-20 18:57:27', '2024-02-20 19:08:46'),
(8, 'ff', 'lectura, modificacion, eliminacion', 'fff', 'ffff', '2024-02-20 19:11:06', '2024-02-20 19:10:53', '2024-02-20 19:11:06'),
(9, 'ffff', 'lectura', 'fffff', NULL, '2024-02-20 19:11:31', '2024-02-20 19:11:23', '2024-02-20 19:11:31'),
(10, 'Administrativo', 'lectura', '.', NULL, '2024-02-28 13:42:25', '2024-02-28 13:42:17', '2024-02-28 13:42:25'),
(11, 'pruebaDDDD', 'lectura, modificacion', '2', NULL, '2024-02-28 13:44:28', '2024-02-28 13:44:22', '2024-02-28 13:44:28'),
(12, 'ssssssss', 'lectura', '6', NULL, '2024-02-28 13:45:12', '2024-02-28 13:45:03', '2024-02-28 13:45:12'),
(13, 'ssssssss', 'lectura, modificacion', '4444', NULL, '2024-02-29 19:02:29', '2024-02-28 13:46:12', '2024-02-29 19:02:29'),
(14, 'pruebaDDDD', 'lectura, modificacion, eliminacion', 'hhhh', NULL, '2024-02-29 19:02:24', '2024-02-29 15:44:46', '2024-02-29 19:02:24'),
(17, 'prueba', 'lectura, modificacion, eliminacion', 'El que más manda', NULL, NULL, '2024-05-06 14:47:57', '2024-05-06 14:47:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Precio_unico` decimal(10,2) NOT NULL,
  `Precio_mensual` decimal(10,2) NOT NULL,
  `Mensaje_unico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mensaje_mensual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `Nombre`, `Precio_unico`, `Precio_mensual`, `Mensaje_unico`, `Mensaje_mensual`, `Descripcion`, `Imagen`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Limpieza', 15.00, 165.00, 'Limpieza puntual', 'Limpieza diria de tu embarcación', 'Para que alguien vaya y te limpie bien la embaracion, mientras disfrutas de nuestros otros servicios.', '/storage/servicios/Wo1blCCgukaAWtUlSDb6ea3Yq6QDyqGv1FgGKMNG.png', NULL, '2024-03-19 14:50:23', '2024-05-04 15:20:47'),
(2, 'A', 2.00, 23.00, '111', '122ds', 'asdasda', '/storage/servicios/5hbZpeXnGVdqPDmasOTJ2hlx7W368SolAJJ3tb7I.png', '2024-03-19 17:49:05', '2024-03-19 17:46:43', '2024-03-19 17:49:05'),
(3, 'Repostaje', 20.00, 150.00, 'Repostaje único', 'Repostaje todas las veces que quieras', 'A ella le gusta la gasolina (whatcha say)\r\nDame mas gasolina! (hey)', '/storage/servicios/s1lHPHbxsvlYelMC1gxN0eHcScw9UGVUKwUWAbgS.png', NULL, '2024-03-20 19:30:58', '2024-05-04 15:21:40'),
(4, 'Aseos', 3.50, 80.00, 'Para usar las duchas esporadicamente', 'Para usar las duchas tantas veces como quieras al mes', 'Duchas buenas bonitas y baratas', '/storage/servicios/xPvsomsqHJJM0Q3cXrnyJCiDo3ZsZ8w0h09wmVwk.png', NULL, '2024-05-02 18:12:14', '2024-05-04 15:20:34'),
(5, 'Mantenimiento', 30.00, 130.00, 'Si has tenido una avería o necesitas mantenimiento puntual este es tu precio perfecto.', 'Si tu embarcación necesita mucho trabajo y quieres tener a alguien que te dé mantenimiento los 7 dias de la semana este es tu precio.', 'Mantenimiento de embarcaciones', '/storage/servicios/QOOTpEtTr3lHtqIuMQfMpc7rbl9VOSDBxmAgdIMy.png', NULL, '2024-05-02 18:28:07', '2024-05-04 15:21:09'),
(6, 'Luz y Agua', 25.50, 200.00, 'Estas pocos días o tu embarcación simplemente no quieres gastar la provisiones de tu embarcacion este es tu precio.', 'Ten luz y agua todo el mes sin preocuparte de nada.', 'Luz y Agua pa tu cuerpo serrano', '/storage/servicios/49El3zs8hjMJCG0yASW9CM8nKbitxo146ShiKrXj.png', NULL, '2024-05-02 18:32:10', '2024-05-04 15:20:59'),
(7, 'Restauración', 15.00, 90.00, 'Buffet diario.', 'Acceso al buffet todos los días.', 'Buffet disponible de 8 a 10 de la mañana para la gente que ha contratado este servicio.', '/storage/servicios/UXCB2f2e2gJT1aWFiBM6jur5qeFBg2HSPuFa22gL.png', NULL, '2024-05-02 18:36:29', '2024-05-04 15:21:24'),
(8, 'Vigilancia', 30.45, 200.00, 'Te vas un día y no quieres que nadie entre en tu embarcacion a robar, pide que te lo vigilen ese día', 'Vigilancia 24/7 durante todo el mes.', 'Portero y alarma, todo para la seguridad de nuestros clientes.', '/storage/servicios/aDpVk3aaQgUtQbjAa0RYdyGcmSc8Qr92rnW0YEmZ.png', NULL, '2024-05-02 18:47:08', '2024-05-04 15:22:09'),
(9, 'Vigilancia', 30.45, 200.00, 'Te vas un día y no quieres que nadie entre en tu embarcacion a robar, pide que te lo vigilen ese día', 'Vigilancia 24/7 durante todo el mes.', 'Portero y alarma, todo para la seguridad de nuestros clientes.', '/storage/servicios/98pehxdMEBo3L65WnRsql0GjsqpcDjHa9d6mOcVB.png', '2024-05-02 18:47:58', '2024-05-02 18:47:09', '2024-05-02 18:47:58'),
(10, 'Vigilancia', 30.45, 200.00, 'Te vas un día y no quieres que nadie entre en tu embarcacion a robar, pide que te lo vigilen ese día', 'Vigilancia 24/7 durante todo el mes.', 'Portero y alarma, todo para la seguridad de nuestros clientes.', '/storage/servicios/GGGj6SmNE5OehOp0rCgdKCAsrFyTb2MvgtakzMTs.png', '2024-05-02 18:48:11', '2024-05-02 18:47:10', '2024-05-02 18:48:11'),
(11, 'Recreacion', 10.00, 60.00, 'si', 'mucho', 'fiestaaaaaaaaaaa', '/storage/servicios/X0wpvcoBuwiOucAsN2L8SXbW4v1KlTwPNO9LvCST.png', NULL, '2024-05-02 19:53:52', '2024-05-04 15:21:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `Numero_Ticket` int NOT NULL,
  `FechaEmision` datetime NOT NULL,
  `Total` int NOT NULL,
  `Estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Tarjeta_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id`, `Numero_Ticket`, `FechaEmision`, `Total`, `Estado`, `deleted_at`, `created_at`, `updated_at`, `Tarjeta_id`) VALUES
(1, 10000, '2024-05-20 00:00:00', 37, 'Pagado', NULL, '2024-05-20 13:58:28', '2024-05-20 13:58:28', 3),
(31, 10001, '2024-05-21 00:00:00', 17, 'Pagado', NULL, '2024-05-21 16:43:45', '2024-05-21 16:43:45', 9),
(32, 10002, '2024-05-21 00:00:00', 17, 'Pagado', NULL, '2024-05-21 16:45:29', '2024-05-21 16:45:29', 9),
(33, 10003, '2024-05-21 00:00:00', 17, 'Pagado', NULL, '2024-05-21 16:48:45', '2024-05-21 16:48:45', 9),
(34, 10004, '2024-05-21 00:00:00', 17, 'Pagado', NULL, '2024-05-21 16:52:50', '2024-05-21 16:52:50', 9),
(35, 10005, '2024-05-21 00:00:00', 117, 'Pagado', NULL, '2024-05-21 17:22:40', '2024-05-21 17:22:40', 9),
(36, 10006, '2024-05-22 00:00:00', 82, 'Pagado', NULL, '2024-05-22 14:32:20', '2024-05-22 14:32:20', 9),
(37, 10007, '2024-05-22 00:00:00', 152, 'Pagado', NULL, '2024-05-22 15:40:28', '2024-05-22 15:40:28', 9),
(38, 10008, '2024-05-22 00:00:00', 42, 'Pagado', NULL, '2024-05-22 15:41:38', '2024-05-22 15:41:38', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transits`
--

CREATE TABLE `transits` (
  `id` bigint UNSIGNED NOT NULL,
  `Amarre_id` bigint UNSIGNED NOT NULL,
  `Leido` tinyint(1) DEFAULT NULL,
  `Guardamuelles_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Administrativo_id` bigint UNSIGNED DEFAULT NULL,
  `Estatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transits`
--

INSERT INTO `transits` (`id`, `Amarre_id`, `Leido`, `Guardamuelles_id`, `deleted_at`, `created_at`, `updated_at`, `Administrativo_id`, `Estatus`) VALUES
(11, 36, NULL, NULL, NULL, '2024-03-03 21:37:28', '2024-03-03 21:37:28', NULL, NULL),
(12, 37, NULL, NULL, NULL, '2024-03-03 21:39:44', '2024-03-03 21:39:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transit_boats`
--

CREATE TABLE `transit_boats` (
  `id` bigint UNSIGNED NOT NULL,
  `Embarcacion_id` bigint UNSIGNED NOT NULL,
  `Transito_id` bigint UNSIGNED NOT NULL,
  `FechaEntrada` date DEFAULT NULL,
  `FechaSalida` date DEFAULT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transit_boats`
--

INSERT INTO `transit_boats` (`id`, `Embarcacion_id`, `Transito_id`, `FechaEntrada`, `FechaSalida`, `Causa`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 11, '2024-03-03', '2024-03-17', NULL, NULL, NULL, NULL),
(2, 6, 12, '2024-03-03', '2024-03-10', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transit_crews`
--

CREATE TABLE `transit_crews` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Tripulante_id` bigint UNSIGNED NOT NULL,
  `Transito_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `NombreCompleto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `NombreUsuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Instalacion_id` bigint UNSIGNED NOT NULL,
  `DNI` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rol_id` bigint UNSIGNED NOT NULL,
  `Causa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `NombreCompleto`, `Habilitado`, `NombreUsuario`, `Instalacion_id`, `DNI`, `Telefono`, `Direccion`, `Imagen`, `Descripcion`, `Rol_id`, `Causa`, `email`, `email_verified_at`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Susana P', 1, 'Sue95', 1, '4555555d', '99999999', 'calle g', NULL, 'army', 2, NULL, 'susana@example.com', NULL, '$2y$12$aX1RfMIWDt3eiTMikEx.4e0dm2T60MVI9RnyKx9/YfOGJe3Ie4G7m', NULL, NULL, '2024-02-20 14:59:22', '2024-02-20 14:59:22'),
(2, 'David', 1, 'Davi', 1, '4555556d', '99999999', 'calle g', NULL, 'army', 4, NULL, 'david@example.com', NULL, '$2y$12$obZkddncGIncizEgO6JYNOFC2aKUu7WKhfmaQaTt.VdpnGm3CFIfS', NULL, NULL, '2024-02-21 16:30:35', '2024-02-21 16:30:35'),
(3, 'susana', 1, 'susana95', 1, '222222s', '4444444', 'dddd', NULL, 'es una puerta', 1, NULL, 'sp@example.com', NULL, '$2y$12$CuCm7O95fsheenDPzoPZruwKVTrh.w4RDKMmEIRd8Mj8rs264Te8y', NULL, NULL, '2024-02-28 18:27:33', '2024-02-28 18:27:33'),
(4, 'Pedro Sanchez', 1, 'PedSan', 1, '111111111j', '88887777', 'Moncloa', NULL, 'Si soy', 2, NULL, 'pedro@example.com', NULL, '$2y$12$rRQsYNSmI5w8TtWZnrJGi.2zAlJBLlf5UH3LbIRZo7cZwQU.5NcYS', NULL, NULL, '2024-02-29 15:32:32', '2024-02-29 15:32:32'),
(5, 'Jimin Park', 1, 'Jiminshi', 1, '555555555h', '66666666666', 'Busan', NULL, 's', 2, NULL, 'jimin@example.com', NULL, '$2y$12$vNQ4QDi1Ek/wXCf74EntneTogOHPZ8w7UUCjnYESIT4O1xgXcsJs6', NULL, NULL, '2024-02-29 16:49:04', '2024-02-29 16:49:04'),
(7, 'Yoongi Min', 1, 'Yoongi', 1, '111111111d', '2222222222', 'Daegu', NULL, 's', 1, NULL, 'yoongi@example.com', NULL, '$2y$12$N4DvBMVH5Mo57sVSs7jduu76XzzXdT1Pn7WhCNuvJqHoYy0Z9giim', NULL, NULL, '2024-02-29 17:07:18', '2024-02-29 17:11:46'),
(8, 'sssss', 1, 'sssss', 1, 'ssssss', '22222222', 'dddd', NULL, 's', 1, NULL, 'pruebas@example.com', NULL, '$2y$12$GFQKqL8m89Gf2GGcFncRC.Z1EGUpf1NnhvS7YSrGRlIqeuIvPOEny', '2024-02-29 17:09:23', NULL, '2024-02-29 17:09:11', '2024-02-29 17:09:23'),
(9, 'Namjoon Kim', 1, 'Namjoonie', 1, '222222223d', '333334443', 'Seul', NULL, 'das', 4, NULL, 'namjoon@example.com', NULL, '$2y$12$OQY5pkoS9KTaHYVsBMH6Uu5OQGorrq2nQkvsfCaYvI1YvvaJjrbk6', NULL, NULL, '2024-03-02 13:16:59', '2024-03-02 13:16:59'),
(10, 'Jimin Park', 1, 'Jiminshi2', 1, '555555565h', '4444444', 'busan', NULL, 'd', 3, NULL, 'jimin2@example.com', NULL, '$2y$12$abcEZFehOXEbNmdt9bViqeI9y.lB3Zt27qz3uBUAI2gyn4NhjXiQC', NULL, NULL, '2024-03-03 15:31:39', '2024-03-03 15:31:39'),
(11, 'Kim Seok-Jin', 1, 'WWH', 1, '555555555h', '1888', 'Seoul', NULL, 'jinjinjin', 6, NULL, 'jin@example.com', NULL, '$2y$12$fGvFMZbLuG5l9I2aDyqFJOu1w9uEQoY0uacIXB4t0pBLdPpOzThdO', NULL, NULL, '2024-03-14 17:57:53', '2024-05-22 15:31:43'),
(12, 'Ivan Moya', 1, 'FrodoGoloson', 1, '111111111r', '777777777', 'calle de las piruletas', NULL, 'es majo', 5, NULL, 'ivan@example.com', NULL, '$2y$12$YJ8ndVwDK0A9VasM2iXrX.NeNO0xKtCmzeIEQ75i3.7kYsAnTzbaq', NULL, NULL, '2024-03-19 13:48:56', '2024-03-19 13:48:56'),
(13, 'Jeon Jungkook', 1, 'Kookie', 1, '87878787d', '1999997', 'calle de las piruletas', NULL, 'es kookie', 6, NULL, 'jungkook@example.com', NULL, '$2y$12$ktBDuD3I3dH1UIb5CQB9JeC3k0iQNl.Wr3BtmJ52RrY0cJRMbTtT6', NULL, NULL, '2024-05-06 16:17:15', '2024-05-06 16:17:15'),
(14, 'Kim Tae-hyung', 1, 'V', 1, '19951230', '30121995', 'Daegu', NULL, 'El más guapo del mundo', 6, NULL, 'tae@example.com', NULL, '$2y$12$9gHa.jMynSwN7koys/M.ZOrZEg4SQjm/k/AefJORjRMuJvbU2fopK', NULL, NULL, '2024-05-11 15:08:59', '2024-05-11 15:08:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administratives`
--
ALTER TABLE `administratives`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- Indices de la tabla `administrative_berths`
--
ALTER TABLE `administrative_berths`
  ADD PRIMARY KEY (`Administrativo_id`,`Amarre_id`),
  ADD KEY `administrative_berths_amarre_id_foreign` (`Amarre_id`);

--
-- Indices de la tabla `base_berths`
--
ALTER TABLE `base_berths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_berths_amarre_id_foreign` (`Amarre_id`);

--
-- Indices de la tabla `berths`
--
ALTER TABLE `berths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berths_pantalan_id_foreign` (`Pantalan_id`);

--
-- Indices de la tabla `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boats_titular_foreign` (`Titular`);

--
-- Indices de la tabla `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_cliente_id_foreign` (`Cliente_id`);

--
-- Indices de la tabla `civil_guards`
--
ALTER TABLE `civil_guards`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- Indices de la tabla `civil_guard_transits`
--
ALTER TABLE `civil_guard_transits`
  ADD PRIMARY KEY (`GuardaCivil_id`,`Transito_id`),
  ADD KEY `civil_guard_transits_transito_id_foreign` (`Transito_id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_usuario_id_foreign` (`Usuario_id`);

--
-- Indices de la tabla `concessionaires`
--
ALTER TABLE `concessionaires`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- Indices de la tabla `concessionaire_facilities`
--
ALTER TABLE `concessionaire_facilities`
  ADD PRIMARY KEY (`Concesionario_id`,`Instalacion_id`),
  ADD KEY `concessionaire_facilities_instalacion_id_foreign` (`Instalacion_id`);

--
-- Indices de la tabla `concessionaire_roles`
--
ALTER TABLE `concessionaire_roles`
  ADD PRIMARY KEY (`Rol_id`,`Concesionario_id`),
  ADD KEY `concessionaire_roles_concesionario_id_foreign` (`Concesionario_id`);

--
-- Indices de la tabla `crews`
--
ALTER TABLE `crews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docks`
--
ALTER TABLE `docks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docks_instalacion_id_foreign` (`Instalacion_id`);

--
-- Indices de la tabla `dock_workers`
--
ALTER TABLE `dock_workers`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- Indices de la tabla `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `hires`
--
ALTER TABLE `hires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hires_cliente_id_foreign` (`Cliente_id`),
  ADD KEY `hires_servicio_id_foreign` (`Servicio_id`),
  ADD KEY `hires_ticket_id_foreign` (`Ticket_id`);

--
-- Indices de la tabla `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incidents_guardamuelle_id_foreign` (`Guardamuelle_id`),
  ADD KEY `incidents_administrativo_id_foreign` (`Administrativo_id`);

--
-- Indices de la tabla `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managers_usuario_id_foreign` (`Usuario_id`);

--
-- Indices de la tabla `manages`
--
ALTER TABLE `manages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manages_gestor_id_foreign` (`Gestor_id`),
  ADD KEY `manages_servicio_id_foreign` (`Servicio_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_plazabase_id_foreign` (`PlazaBase_id`),
  ADD KEY `rentals_embarcacion_id_foreign` (`Embarcacion_id`);

--
-- Indices de la tabla `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requests_embarcacion_id_foreign` (`Embarcacion_id`),
  ADD KEY `requests_servicio_id_foreign` (`Servicio_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_numero_ticket_unique` (`Numero_Ticket`),
  ADD KEY `tickets_tarjeta_id_foreign` (`Tarjeta_id`);

--
-- Indices de la tabla `transits`
--
ALTER TABLE `transits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transits_guardamuelles_id_foreign` (`Guardamuelles_id`),
  ADD KEY `transits_administrativo_id_foreign` (`Administrativo_id`),
  ADD KEY `transits_amarre_id_foreign` (`Amarre_id`);

--
-- Indices de la tabla `transit_boats`
--
ALTER TABLE `transit_boats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transit_boats_embarcacion_id_foreign` (`Embarcacion_id`),
  ADD KEY `transit_boats_transito_id_foreign` (`Transito_id`);

--
-- Indices de la tabla `transit_crews`
--
ALTER TABLE `transit_crews`
  ADD PRIMARY KEY (`Tripulante_id`,`Transito_id`),
  ADD KEY `transit_crews_transito_id_foreign` (`Transito_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_instalacion_id_foreign` (`Instalacion_id`),
  ADD KEY `users_rol_id_foreign` (`Rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `base_berths`
--
ALTER TABLE `base_berths`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `berths`
--
ALTER TABLE `berths`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `boats`
--
ALTER TABLE `boats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `crews`
--
ALTER TABLE `crews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docks`
--
ALTER TABLE `docks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hires`
--
ALTER TABLE `hires`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `incidents`
--
ALTER TABLE `incidents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `manages`
--
ALTER TABLE `manages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `transits`
--
ALTER TABLE `transits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `transit_boats`
--
ALTER TABLE `transit_boats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administratives`
--
ALTER TABLE `administratives`
  ADD CONSTRAINT `administratives_usuario_id_foreign` FOREIGN KEY (`Usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `administrative_berths`
--
ALTER TABLE `administrative_berths`
  ADD CONSTRAINT `administrative_berths_administrativo_id_foreign` FOREIGN KEY (`Administrativo_id`) REFERENCES `administratives` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `administrative_berths_amarre_id_foreign` FOREIGN KEY (`Amarre_id`) REFERENCES `berths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `base_berths`
--
ALTER TABLE `base_berths`
  ADD CONSTRAINT `base_berths_amarre_id_foreign` FOREIGN KEY (`Amarre_id`) REFERENCES `berths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `berths`
--
ALTER TABLE `berths`
  ADD CONSTRAINT `berths_pantalan_id_foreign` FOREIGN KEY (`Pantalan_id`) REFERENCES `docks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `boats`
--
ALTER TABLE `boats`
  ADD CONSTRAINT `boats_titular_foreign` FOREIGN KEY (`Titular`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_cliente_id_foreign` FOREIGN KEY (`Cliente_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `civil_guards`
--
ALTER TABLE `civil_guards`
  ADD CONSTRAINT `civil_guards_usuario_id_foreign` FOREIGN KEY (`Usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `civil_guard_transits`
--
ALTER TABLE `civil_guard_transits`
  ADD CONSTRAINT `civil_guard_transits_guardacivil_id_foreign` FOREIGN KEY (`GuardaCivil_id`) REFERENCES `civil_guards` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `civil_guard_transits_transito_id_foreign` FOREIGN KEY (`Transito_id`) REFERENCES `transits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_usuario_id_foreign` FOREIGN KEY (`Usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `concessionaires`
--
ALTER TABLE `concessionaires`
  ADD CONSTRAINT `concessionaires_usuario_id_foreign` FOREIGN KEY (`Usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `concessionaire_facilities`
--
ALTER TABLE `concessionaire_facilities`
  ADD CONSTRAINT `concessionaire_facilities_concesionario_id_foreign` FOREIGN KEY (`Concesionario_id`) REFERENCES `concessionaires` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `concessionaire_facilities_instalacion_id_foreign` FOREIGN KEY (`Instalacion_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `concessionaire_roles`
--
ALTER TABLE `concessionaire_roles`
  ADD CONSTRAINT `concessionaire_roles_concesionario_id_foreign` FOREIGN KEY (`Concesionario_id`) REFERENCES `concessionaires` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `concessionaire_roles_rol_id_foreign` FOREIGN KEY (`Rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `docks`
--
ALTER TABLE `docks`
  ADD CONSTRAINT `docks_instalacion_id_foreign` FOREIGN KEY (`Instalacion_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dock_workers`
--
ALTER TABLE `dock_workers`
  ADD CONSTRAINT `dock_workers_usuario_id_foreign` FOREIGN KEY (`Usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hires`
--
ALTER TABLE `hires`
  ADD CONSTRAINT `hires_cliente_id_foreign` FOREIGN KEY (`Cliente_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hires_servicio_id_foreign` FOREIGN KEY (`Servicio_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hires_ticket_id_foreign` FOREIGN KEY (`Ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `incidents`
--
ALTER TABLE `incidents`
  ADD CONSTRAINT `incidents_administrativo_id_foreign` FOREIGN KEY (`Administrativo_id`) REFERENCES `administratives` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incidents_guardamuelle_id_foreign` FOREIGN KEY (`Guardamuelle_id`) REFERENCES `dock_workers` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_usuario_id_foreign` FOREIGN KEY (`Usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `manages`
--
ALTER TABLE `manages`
  ADD CONSTRAINT `manages_gestor_id_foreign` FOREIGN KEY (`Gestor_id`) REFERENCES `managers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `manages_servicio_id_foreign` FOREIGN KEY (`Servicio_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_embarcacion_id_foreign` FOREIGN KEY (`Embarcacion_id`) REFERENCES `boats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rentals_plazabase_id_foreign` FOREIGN KEY (`PlazaBase_id`) REFERENCES `base_berths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_embarcacion_id_foreign` FOREIGN KEY (`Embarcacion_id`) REFERENCES `boats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_servicio_id_foreign` FOREIGN KEY (`Servicio_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_tarjeta_id_foreign` FOREIGN KEY (`Tarjeta_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transits`
--
ALTER TABLE `transits`
  ADD CONSTRAINT `transits_administrativo_id_foreign` FOREIGN KEY (`Administrativo_id`) REFERENCES `administratives` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transits_amarre_id_foreign` FOREIGN KEY (`Amarre_id`) REFERENCES `berths` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transits_guardamuelles_id_foreign` FOREIGN KEY (`Guardamuelles_id`) REFERENCES `dock_workers` (`Usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transit_boats`
--
ALTER TABLE `transit_boats`
  ADD CONSTRAINT `transit_boats_embarcacion_id_foreign` FOREIGN KEY (`Embarcacion_id`) REFERENCES `boats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transit_boats_transito_id_foreign` FOREIGN KEY (`Transito_id`) REFERENCES `transits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transit_crews`
--
ALTER TABLE `transit_crews`
  ADD CONSTRAINT `transit_crews_transito_id_foreign` FOREIGN KEY (`Transito_id`) REFERENCES `transits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transit_crews_tripulante_id_foreign` FOREIGN KEY (`Tripulante_id`) REFERENCES `crews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_instalacion_id_foreign` FOREIGN KEY (`Instalacion_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`Rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
