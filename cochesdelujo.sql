-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2023 a las 13:28:59
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
-- Base de datos: `cochesdelujo`
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
  `precio_base` int(50) DEFAULT NULL,
  `imagen` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coches`
--

INSERT INTO `coches` (`id_coche`, `matricula`, `marca`, `modelo`, `caballos`, `color`, `ano`, `consumo`, `precio_base`, `imagen`) VALUES
(1, '1237HFU', 'Ferrari', '812GTS', 600, 'negro', 1990, NULL, 1000, NULL),
(2, '9852NBX', 'Ferrari', 'SF90STRADALE', 650, 'rojo', 2002, NULL, 1200, NULL),
(3, '7642HGM', 'Rolls-Royce', 'Spectre', 570, 'amarillo', 2000, NULL, 1500, NULL),
(4, '9974OPNA', 'Rolls-Royce', 'Dawn', 550, 'Blanco', 2005, NULL, 1100, NULL),
(5, '6751JKLK', 'Bugatti', 'Chiron', 600, 'azul', 2010, NULL, 1550, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallereservas`
--

CREATE TABLE `detallereservas` (
  `id_reserva` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_coche` int(11) DEFAULT NULL,
  `id_seguro` int(11) DEFAULT NULL,
  `chofer` tinyint(1) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `localizacion` varchar(255) DEFAULT NULL,
  `fechaIn` date NOT NULL,
  `FechaFin` date NOT NULL,
  `precioTotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallereservas`
--

INSERT INTO `detallereservas` (`id_reserva`, `id_usuario`, `id_coche`, `id_seguro`, `chofer`, `hora`, `localizacion`, `fechaIn`, `FechaFin`, `precioTotal`) VALUES
(1, 3, 3, 1, 1, '12:20:01', 'Donostia', '0000-00-00', '0000-00-00', 38000),
(2, 2, 4, 2, 0, '15:00:00', 'Bilbao', '0000-00-00', '0000-00-00', 33000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguros`
--

CREATE TABLE `seguros` (
  `id_seguro` int(11) NOT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seguros`
--

INSERT INTO `seguros` (`id_seguro`, `tipo`, `precio`) VALUES
(1, 'aTodoRiesgo', 7),
(2, 'estandar', 5),
(3, 'elite', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `tipo` enum('a','u') DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contrasena` varchar(200) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `tipo`, `email`, `contrasena`, `nombre`, `apellido`, `telefono`) VALUES
(1, 'a', 'admin', '1234', 'jennyfer', 'cervantes', '537182533'),
(2, 'u', 'test', 'test', 'test', 'test', '980765432'),
(3, 'u', 'je.cervantez@aulanz.net', 'jennifer', 'jennifer', 'cerevantez', '789654321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coches`
--
ALTER TABLE `coches`
  ADD PRIMARY KEY (`id_coche`);

--
-- Indices de la tabla `detallereservas`
--
ALTER TABLE `detallereservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `seguros`
--
ALTER TABLE `seguros`
  ADD PRIMARY KEY (`id_seguro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
