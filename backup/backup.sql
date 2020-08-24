-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql-server
-- Tiempo de generación: 24-08-2020 a las 15:48:35
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `backup`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Dispositivos`
--

CREATE TABLE `Dispositivos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `ubicacion` varchar(200) DEFAULT NULL,
  `valula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Dispositivos`
--

INSERT INTO `Dispositivos` (`id`, `nombre`, `ubicacion`, `valula_id`) VALUES
(1, 'Azalea', 'Patio trasero', 1),
(2, 'Estrella Federal', 'Patio trasero', 2),
(3, 'Flor de Sangre', 'Patrio trasero', 3),
(4, 'Iresine', 'Patio delantero', 4),
(5, 'Pino', 'Patio delantero', 5),
(6, 'Helecho', 'Sala', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Electrovalvulas`
--

CREATE TABLE `Electrovalvulas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Electrovalvulas`
--

INSERT INTO `Electrovalvulas` (`id`, `nombre`) VALUES
(1, 'Chrome'),
(2, 'Chromium'),
(3, 'Safari'),
(4, 'Edge'),
(5, 'Mozilla'),
(6, 'Opera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Log_Riegos`
--

CREATE TABLE `Log_Riegos` (
  `id` int(11) NOT NULL,
  `apertura` tinyint(4) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `valvula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Log_Riegos`
--

INSERT INTO `Log_Riegos` (`id`, `apertura`, `fecha`, `valvula_id`) VALUES
(1, 0, '2020-08-20 19:46:08', 1),
(2, 0, '2020-08-20 19:46:34', 2),
(3, 0, '2020-08-20 19:46:43', 3),
(4, 0, '2020-08-20 19:46:54', 4),
(5, 0, '2020-08-20 19:47:01', 5),
(6, 0, '2020-08-20 19:47:09', 6),
(7, 1, '2020-08-20 19:56:48', 6),
(8, 1, '2020-08-22 14:39:49', 1),
(9, 5, '2020-08-22 14:41:02', 1),
(10, 10, '2020-08-24 12:33:45', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mediciones`
--

CREATE TABLE `Mediciones` (
  `id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  `dispositivo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Mediciones`
--

INSERT INTO `Mediciones` (`id`, `fecha`, `valor`, `dispositivo_id`) VALUES
(3, '2020-08-20 20:41:25', '59', 3),
(8, '2020-08-20 20:41:25', '14', 2),
(12, '2020-08-20 20:41:26', '83', 3),
(14, '2020-08-20 20:41:26', '56', 1),
(2110, '2020-08-20 20:41:40', '44', 6),
(2113, '2020-08-20 20:41:41', '0', 1),
(2114, '2020-08-20 20:41:41', '93', 5),
(2116, '2020-08-20 20:41:41', '10', 5),
(2118, '2020-08-20 20:41:41', '73', 6),
(2122, '2020-08-20 20:41:41', '76', 4),
(2124, '2020-08-20 20:41:41', '14', 6),
(2126, '2020-08-20 20:41:52', '65', 1),
(2127, '2020-08-20 20:41:52', '89', 2),
(2128, '2020-08-20 20:41:53', '31', 4),
(2129, '2020-08-20 20:41:53', '77', 2),
(2130, '2020-08-20 20:41:53', '51', 5),
(2132, '2020-08-20 20:41:53', '28', 4),
(2134, '2020-08-20 20:41:53', '13', 4),
(2137, '2020-08-20 20:41:53', '2', 3),
(2138, '2020-08-20 20:41:53', '24', 1),
(2142, '2020-08-20 20:41:53', '60', 5),
(2144, '2020-08-20 20:41:53', '83', 2),
(2146, '2020-08-20 20:42:07', '26', 5),
(2149, '2020-08-20 20:42:07', '60', 1),
(2150, '2020-08-20 20:42:07', '46', 3),
(2151, '2020-08-20 20:42:07', '81', 1),
(2156, '2020-08-20 20:42:07', '76', 4),
(2159, '2020-08-20 20:42:07', '80', 1),
(2160, '2020-08-20 20:42:07', '19', 4),
(2161, '2020-08-20 20:42:07', '49', 1),
(2165, '2020-08-20 20:42:20', '80', 6),
(2167, '2020-08-20 20:42:20', '78', 4),
(2168, '2020-08-20 20:42:20', '49', 4),
(2171, '2020-08-20 20:42:21', '49', 4),
(2172, '2020-08-20 20:42:21', '14', 5),
(2173, '2020-08-20 20:42:21', '12', 2),
(2175, '2020-08-20 20:42:21', '10', 3),
(2176, '2020-08-20 20:42:21', '44', 4),
(2177, '2020-08-20 20:42:21', '81', 2),
(2178, '2020-08-20 20:42:21', '12', 6),
(2180, '2020-08-20 20:42:21', '3', 3),
(2181, '2020-08-20 20:42:21', '22', 6),
(2182, '2020-08-20 20:42:21', '11', 4),
(2183, '2020-08-20 20:42:21', '48', 1),
(2184, '2020-08-20 20:42:21', '10', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Dispositivos`
--
ALTER TABLE `Dispositivos`
  ADD PRIMARY KEY (`id`,`valula_id`),
  ADD KEY `fk_Dispositivos_Electrovalvulas1_idx` (`valula_id`);

--
-- Indices de la tabla `Electrovalvulas`
--
ALTER TABLE `Electrovalvulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Log_Riegos`
--
ALTER TABLE `Log_Riegos`
  ADD PRIMARY KEY (`id`,`valvula_id`),
  ADD KEY `fk_Log_Riegos_Electrovalvulas1_idx` (`valvula_id`);

--
-- Indices de la tabla `Mediciones`
--
ALTER TABLE `Mediciones`
  ADD PRIMARY KEY (`id`,`dispositivo_id`),
  ADD KEY `fk_Mediciones_Dispositivos_idx` (`dispositivo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Dispositivos`
--
ALTER TABLE `Dispositivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `Electrovalvulas`
--
ALTER TABLE `Electrovalvulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Log_Riegos`
--
ALTER TABLE `Log_Riegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `Mediciones`
--
ALTER TABLE `Mediciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2185;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Dispositivos`
--
ALTER TABLE `Dispositivos`
  ADD CONSTRAINT `fk_Dispositivos_Electrovalvulas1` FOREIGN KEY (`valula_id`) REFERENCES `Electrovalvulas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Log_Riegos`
--
ALTER TABLE `Log_Riegos`
  ADD CONSTRAINT `fk_Log_Riegos_Electrovalvulas1` FOREIGN KEY (`valvula_id`) REFERENCES `Electrovalvulas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Mediciones`
--
ALTER TABLE `Mediciones`
  ADD CONSTRAINT `fk_Mediciones_Dispositivos` FOREIGN KEY (`dispositivo_id`) REFERENCES `Dispositivos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
