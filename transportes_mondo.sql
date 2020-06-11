-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2020 a las 19:13:10
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transportes_mondo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos`
--

CREATE TABLE `casos` (
  `id` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `placa` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `trailer` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `origen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `destino` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Sin foto',
  `estado` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modify_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `close_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Datos del caso';

--
-- Volcado de datos para la tabla `casos`
--

INSERT INTO `casos` (`id`, `id_usu`, `placa`, `trailer`, `origen`, `destino`, `foto`, `estado`, `create_at`, `modify_at`, `close_at`) VALUES
(1, 1, 'XS1420', 'MA58', 'Barranquilla', 'Santa Marta', '../../assets/img/users/1-mujer.jpg', 1, '2020-06-07 22:59:06', '2020-06-07 22:59:52', NULL),
(3, 1, 'XSM34', 'JN5478', 'Malambo', 'Canada', '../../assets/img/users/3mujer.jpg', 1, '2020-06-07 22:59:06', '2020-06-07 22:59:52', NULL),
(4, 2, 'XSM36', 'JN5488', 'Malambo', 'Cartagena', '../../assets/img/users/4mujer.jpg', 0, '2020-06-07 22:59:06', '2020-06-07 22:59:52', NULL),
(5, 3, 'Xsas0', 'hdr35', 'Caracas', 'Barranquilla', '../../assets/img/users/5mujer.jpg', 1, '2020-06-07 22:59:06', '2020-06-09 03:52:15', NULL),
(20, 1, 'xyz', 'xcv', 'Cartagena', 'Bucaramanga', 'Sin foto', 1, '2020-06-07 22:59:06', '2020-06-07 22:59:52', NULL),
(21, 1, '21', '21', '21', '21', 'Sin foto', 1, '2020-06-07 22:59:06', '2020-06-07 23:22:06', '2020-06-08 23:20:27'),
(22, 1, 'D22', '22', '22', '22', 'Sin foto', 1, '2020-06-07 22:59:06', '2020-06-07 23:19:58', '2020-06-07 23:19:39'),
(23, 1, '12WS', 'EDR23', 'Barranquilla', 'Cali', 'Sin foto', 0, '2020-06-07 22:59:06', '2020-06-07 23:00:58', NULL),
(25, 3, 'XCV12', 'MO57', 'Barranquilla', 'Neiva', 'Sin foto', 0, '2020-06-09 03:57:46', '2020-06-09 03:57:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `id_caso` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `acpm` tinyint(1) NOT NULL DEFAULT 0,
  `llanta` tinyint(1) NOT NULL DEFAULT 0,
  `motor` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `id_caso`, `descripcion`, `acpm`, `llanta`, `motor`, `created_at`, `updated_at`) VALUES
(1, 1, 'Retraso por cierre en el Km. 21', 0, 0, 0, '2020-06-08 01:05:28', '2020-06-08 01:06:37'),
(15, 23, 'nuevo reset 2', 1, 1, 1, '2020-06-08 05:06:38', '2020-06-08 05:06:38'),
(16, 23, 'Motor con bote de aceite.', 0, 0, 1, '2020-05-08 16:07:28', '2020-06-08 17:57:50'),
(17, 5, 'Des', 1, 1, 1, '2020-06-09 01:43:29', '2020-06-09 01:43:29'),
(18, 5, 'Descripcion del registro', 0, 0, 1, '2020-06-09 01:55:10', '2020-06-09 01:55:10'),
(23, 5, 'Nuevo reporte con readonly', 1, 1, 1, '2020-06-09 03:47:51', '2020-06-09 03:47:51'),
(24, 5, 'Segundo caso reportado con hidden', 0, 0, 1, '2020-06-09 03:49:39', '2020-06-09 03:49:39'),
(25, 23, 'Nuevo reporte de motor con ID 25. Lizmayra Lopez', 1, 1, 0, '2020-06-09 03:58:59', '2020-06-09 03:58:59'),
(26, 23, 'Motor en mal estado', 0, 0, 1, '2020-06-09 16:25:13', '2020-06-09 16:25:13'),
(27, 23, 'Acpm bajo', 1, 0, 0, '2020-06-10 04:55:29', '2020-06-10 04:55:29'),
(28, 23, 'Perdida de llaves', 0, 0, 0, '2020-06-10 05:23:07', '2020-06-10 05:23:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `cedula`, `password`) VALUES
(1, 'Yesid Davila', 17756082, '$2a$10$pFV96FT2FebAVfpio8s1WOUBrjZYi2yrTZUtuzbsJwPX7IQeDzSpK'),
(2, 'Fabian Davila', 1140906920, '$2a$10$pFV96FT2FebAVfpio8s1WOUBrjZYi2yrTZUtuzbsJwPX7IQeDzSpK'),
(3, 'Lizmayra', 18030709, '$2a$10$iUxYPPaeoNk28gAApaDqs.pRfqdea8dypYBjfsN/oJJtq75ksfcsm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `casos`
--
ALTER TABLE `casos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usu` (`id_usu`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_caso` (`id_caso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `casos`
--
ALTER TABLE `casos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casos`
--
ALTER TABLE `casos`
  ADD CONSTRAINT `casos_ibfk_1` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD CONSTRAINT `novedades_ibfk_1` FOREIGN KEY (`id_caso`) REFERENCES `casos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
