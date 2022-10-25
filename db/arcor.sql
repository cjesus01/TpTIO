-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2022 a las 19:38:00
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arcor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia`
--

CREATE TABLE `historia` (
  `id` int(100) NOT NULL,
  `anio` int(100) NOT NULL,
  `suceso` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historia`
--

INSERT INTO `historia` (`id`, `anio`, `suceso`) VALUES
(1, 1976, 'Se radica en Paraguay.'),
(2, 1979, 'Se radica en Uruguay.'),
(3, 1981, 'Se radica en Brasil.'),
(4, 1989, 'Se radica en Chile.'),
(5, 1995, 'Se radica en Perú.'),
(6, 1999, 'Instaló oficinas comerciales en Estados Unidos.\r\n'),
(7, 2000, 'Instaló oficinas comerciales en México y Colombia (inauguró un nuevo centro de distribución en Chile).\r\n'),
(8, 2001, 'Instaló oficinas comerciales en Canadá.\r\n'),
(9, 2002, 'Instaló oficinas comerciales en Barcelona, España.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(200) NOT NULL,
  `producto` varchar(500) NOT NULL,
  `descripcion` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `producto`, `descripcion`) VALUES
(1, 'Polenta', 'Espectacular para comerla con queso en dias de invierno'),
(2, 'caramelos', 'masticables, duros, blandos, todos los sabores para vos'),
(3, 'alfajores', 'triples, simples, bañados, en combinacion con oreo, pepitos y mas'),
(4, 'chocolates', 'variades en todos los chocolates, bañados en blanco, chocolate, mixtos'),
(5, 'masitas', 'variades en saladas, dulces y la mejor calidad que necesitas'),
(6, 'azucar', 'para endulzar todas tus comidas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historia`
--
ALTER TABLE `historia`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
