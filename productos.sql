-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2021 a las 01:33:32
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `categoria` varchar(55) NOT NULL,
  `precio` float NOT NULL,
  `compra` float NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `unidad_medida` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `precio`, `compra`, `descripcion`, `unidad_medida`) VALUES
(1, 'Galletas', 'Pan', 26, 15.5, 'Galletas con chispas de chocolate', 'Pieza'),
(2, 'Papel higiénico', 'Limpieza', 50, 38.5, 'Papel higiénico con paquete de 6', 'Pieza'),
(3, 'Refresco', 'Bebida', 12, 8, 'Sabor limon 600ml', 'Pieza'),
(8, 'Aceite comestibles', 'Abarrotes', 40, 30, 'Aceite de Oliva', 'Pieza'),
(9, 'Aderezos', 'Abarrotes', 20, 10, 'Cesar 70gr', 'Pieza'),
(10, 'Crema de cacahuate', 'Abarrotes', 80, 60.45, 'Frasco de 100gr', 'Pieza'),
(11, 'Avena', 'Abarrotes', 40, 30, '1kg', 'Pieza'),
(12, 'Azúcar', 'Abarrotes', 30, 20, '1Kg', 'Pieza'),
(13, 'Café', 'Abarrotes', 20, 14, '1Kg', 'Pieza'),
(14, 'Cereales', 'Abarrotes', 40, 33, '1Kg', 'Pieza'),
(15, 'Especias', 'Abarrotes', 13, 8, '1Kg', 'Pieza'),
(16, 'Harina', 'Abarrotes', 30, 22, '1Kg', 'Pieza'),
(17, 'Aceitunas', 'Enlatados', 23, 16, 'Vaso de 250gr', 'Pieza'),
(18, 'Champiñones enteros', 'Enlatados', 33, 26, 'Vaso de 250gr', 'Pieza'),
(19, 'Chícharos', 'Enlatados', 35, 25, 'Vaso de 250gr', 'Pieza'),
(20, 'Frijoles enlatados', 'Enlatados', 45, 35, 'Vaso de 250gr', 'Pieza'),
(21, 'Sardinas', 'Enlatados', 90, 75, 'Vaso de 250gr', 'Pieza'),
(22, 'Atún en agua', 'Enlatados', 18, 10, 'Vaso de 250gr', 'Pieza');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
