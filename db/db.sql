-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2020 a las 02:11:40
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `uid` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valve_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `devices`
--

INSERT INTO `devices` (`id`, `uid`, `description`, `location`, `valve_id`) VALUES
(1, 'cd9ea4d6', 'bItTorrent', '{lat: 9.8176, lon:-74.8107}', 1),
(2, '628e11e0', 'Holo', '{lat: 9.8176, lon:-74.8107}', 6),
(3, 'd10620cc', 'DexChain', '{lat: 9.8176, lon:-74.8107}', 4),
(4, 'd9b28508', 'Dogecoin', '{lat: 9.8176, lon:-74.8107}', 4),
(5, 'dcc70548', 'Siacoin', '{lat: 9.8176, lon:-74.8107}', 2),
(6, 'e074ff7e', 'Verge', '{lat: 9.8176, lon:-74.8107}', 5),
(7, 'e34bc50c', 'IOST', '{lat: 9.8176, lon:-74.8107}', 3),
(8, 'e6310aca', 'Flexcoin', '{lat: 9.8176, lon:-74.8107}', 5),
(9, 'e91b696a', 'Nervos', '{lat: 9.8176, lon:-74.8107}', 3),
(10, 'ec887c14', 'Elrond', '{lat: 9.8176, lon:-74.8107}', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `irrigation`
--

CREATE TABLE `irrigation` (
  `id` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valve_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `irrigation`
--

INSERT INTO `irrigation` (`id`, `state`, `time`, `valve_id`) VALUES
(1, 0, '0000-00-00 00:00:00', 1),
(2, 0, '0000-00-00 00:00:00', 2),
(3, 0, '0000-00-00 00:00:00', 3),
(4, 0, '0000-00-00 00:00:00', 4),
(5, 0, '0000-00-00 00:00:00', 5),
(6, 0, '0000-00-00 00:00:00', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `measurements`
--

CREATE TABLE `measurements` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `device_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `measurements`
--

INSERT INTO `measurements` (`id`, `time`, `data`, `device_id`) VALUES
(1, '0000-00-00 00:00:00', '32', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state_valve`
--

CREATE TABLE `state_valve` (
  `valve_id` int(11) NOT NULL,
  `irrigation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valve`
--

CREATE TABLE `valve` (
  `id` int(11) NOT NULL,
  `uid` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `valve`
--

INSERT INTO `valve` (`id`, `uid`, `description`) VALUES
(1, '108f9013f26a', 'Nihilanth'),
(2, '7a4d8748dc7c', 'Headcrab'),
(3, '6fc3e524a711', 'Synth'),
(4, '37b324fc6c93', 'Vortigaunt'),
(5, 'ac120a5c397f', 'Chumtoad'),
(6, '5d7ac260cf28', 'Zancudo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `irrigation`
--
ALTER TABLE `irrigation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `measurements`
--
ALTER TABLE `measurements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valve`
--
ALTER TABLE `valve`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `irrigation`
--
ALTER TABLE `irrigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `measurements`
--
ALTER TABLE `measurements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `valve`
--
ALTER TABLE `valve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
