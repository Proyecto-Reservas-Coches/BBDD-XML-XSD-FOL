-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 01:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donostiluxdrive`
--

-- --------------------------------------------------------

--
-- Table structure for table `coches`
--

CREATE TABLE `coches` (
  `id` int(11) NOT NULL,
  `matricula` varchar(11) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) NOT NULL,
  `caballos` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `ano` int(11) NOT NULL,
  `consumo` double DEFAULT NULL,
  `precio_base` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coches`
--

INSERT INTO `coches` (`id`, `matricula`, `marca`, `modelo`, `caballos`, `color`, `ano`, `consumo`, `precio_base`) VALUES
(1, '1237HFU', 'Ferrari', '812GTS', 600, 'rojo', 1990, 12, 1000),
(2, '9852NBX', 'Ferrari', 'SF90STRADALE', 650, 'rojo', 2002, 13, 1200),
(3, '7642HGM', 'Rolls-Royce', 'Spectre', 570, 'amarillo', 2000, 15, 1500),
(4, '9974OPNA', 'Rolls-Royce', 'Dawn', 550, 'azul', 2005, 11, 1100),
(5, '6751JKLK', 'Bugatti', 'Chiron', 600, 'azul', 2010, 14, 1550),
(6, '939D723L', 'Mercerdes', 'AMGGT', 450, 'gris', 2014, 12, 1400);

-- --------------------------------------------------------

--
-- Table structure for table `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_coche` int(11) NOT NULL,
  `id_seguro` int(11) NOT NULL,
  `fechaIn` text DEFAULT NULL,
  `FechaFin` text DEFAULT NULL,
  `precioTotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_usuario`, `id_coche`, `id_seguro`, `fechaIn`, `FechaFin`, `precioTotal`) VALUES
(9, 3, 3, 1, '2023-15-02', '2023-22-02', 38000),
(10, 2, 4, 2, '2023-19-02', '2023-30-02', 33000);

-- --------------------------------------------------------

--
-- Table structure for table `seguros`
--

CREATE TABLE `seguros` (
  `id` int(11) NOT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seguros`
--

INSERT INTO `seguros` (`id`, `tipo`, `precio`) VALUES
(1, 'estandar', 0),
(2, 'atodoriesgo', 50),
(3, 'elite', 100);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `tipo` enum('a','n') DEFAULT 'n',
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `dni` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `tipo`, `nombre`, `apellido`, `email`, `contrasena`, `telefono`, `dni`) VALUES
(1, 'a', 'admin', 'admin', 'admin@admin.com', 'jennyfer', '537182533', NULL),
(2, 'a', 'jennyfer', 'cervantes', 'jenny@jenny.com', 'jennyfer', '537182533', NULL),
(3, 'n', 'test', 'test', 'test@test.com', 'test123', '+33980765432', NULL),
(4, 'n', 'julio', 'azurduy', 'ju.azurduy@aulanz.net', 'julio1234', '+34789654321', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coches`
--
ALTER TABLE `coches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_coche` (`id_coche`),
  ADD KEY `id_seguro` (`id_seguro`);

--
-- Indexes for table `seguros`
--
ALTER TABLE `seguros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coches`
--
ALTER TABLE `coches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seguros`
--
ALTER TABLE `seguros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_coche`) REFERENCES `coches` (`id`),
  ADD CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`id_seguro`) REFERENCES `seguros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
