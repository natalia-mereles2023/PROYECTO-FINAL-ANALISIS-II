-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 22-05-2024 a las 14:06:52
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `nombre`, `precio`) VALUES
(1, 'Gran Yanki Chedar', 3200),
(2, 'Yanki Two Chedar', 2700),
(3, 'BIG Yanki LOMO', 4500),
(4, 'Picada Yanki con Todo ', 7300),
(6, 'Grand Pizza de peperoni', 5600),
(7, 'Muzzarella y palmitos', 7340);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_prov` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_prov`, `nombre`, `apellido`, `direccion`) VALUES
(1, 'Alberto', 'Castillo', 'Fontana 325'),
(2, 'Laura ', 'Arrua', 'San Martin 654'),
(3, 'Lautaro', 'Lorenzo', 'Belgrano 789'),
(4, 'Paula ', 'Robles', 'Lomas Altas 159'),
(5, 'Claudia ', 'Platon', 'Vedia 753'),
(6, 'Pablo ', 'Alondra', 'Junin 1576');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL,
  `nombre` varchar(244) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `rela_prov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id_stock`, `nombre`, `cantidad`, `rela_prov`) VALUES
(2, 'Harina', 185, 6),
(3, 'Tomate', 15, 5),
(4, 'Lechuga', 10, 5),
(5, 'Levadura', 5, 6),
(6, 'Carne molida', 22, 3),
(7, 'Aceite', 35, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu`
--

CREATE TABLE `usu` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usu`
--

INSERT INTO `usu` (`id_usuario`, `nombre_usuario`, `contrasena`, `email`) VALUES
(2, 'gusgonza', '321', 'gn@gmail.com'),
(12, 'Claudia ', 'Platon', 'clau@gmail.com'),
(13, 'Pablo ', 'Alondra', 'Junin 1576'),
(14, 'Dante ', '456', 'dante@gmail.com'),
(15, 'Daniela', '456', 'dani@gmail.com'),
(16, 'edeo', '456', 'tedeo@gmail.com'),
(17, 'Vale', '8945', 'vale@gmail.com'),
(24, 'Patri', '753', 'patri@gmail.com'),
(25, 'gauto', '456', 'ga@gmail.com'),
(26, 'gauto', '123', 'gauto@gmail.com'),
(27, 'polo', '456', ''),
(28, 'carlo', '789', ''),
(29, 'TOTO', '753', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `id_prov` (`rela_prov`);

--
-- Indices de la tabla `usu`
--
ALTER TABLE `usu`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usu`
--
ALTER TABLE `usu`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`rela_prov`) REFERENCES `proveedores` (`id_prov`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
