-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2023 a las 10:35:59
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cocheslujo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

CREATE TABLE `coches` (
  `id_coche` int(11) NOT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(200) NOT NULL,
  `caballos` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `ano` int(11) NOT NULL,
  `consumo` double DEFAULT NULL,
  `precio_base` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coches`
--

INSERT INTO `coches` (`id_coche`, `matricula`, `marca`, `modelo`, `caballos`, `color`, `ano`, `consumo`, `precio_base`) VALUES
(1, '1237HFU', 'Ferrari', '812GTS', 600, 'negro', 1990, 12, 1000),
(2, '9852NBX', 'Ferrari', 'SF90STRADALE', 650, 'rojo', 2002, 13, 1200),
(3, '7642HGM', 'Rolls-Royce', 'Spectre', 570, 'amarillo', 2000, 15, 1500),
(4, '9974OPNA', 'Rolls-Royce', 'Dawn', 550, 'Blanco', 2005, 11, 1100),
(5, '6751JKLK', 'Bugatti', 'Chiron', 600, 'azul', 2010, 14, 1550);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coches`
--
ALTER TABLE `coches`
  ADD PRIMARY KEY (`id_coche`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
