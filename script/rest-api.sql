-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2024 a las 02:35:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest-api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--
-- Creación: 18-08-2024 a las 02:56:26
-- Última actualización: 19-08-2024 a las 00:32:27
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `añopublicacion` date NOT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`id`, `nombre`, `autor`, `categoria`, `añopublicacion`, `ISBN`) VALUES
(2, '1984', 'George Orwell', 'Ficción/distopía', '1949-08-14', '978-045152493'),
(7, 'El sabueso de los Baskerville', 'Arthur Conan Doyle', 'Novela, Misterio', '0000-00-00', '978-0-14-0437'),
(8, 'El signo de los cuatro', 'Arthur Conan Doyle', 'Novela, Misterio', '0000-00-00', '978-0-19-9536'),
(9, 'Matar a un ruiseñor', 'Harper Lee', 'Ficción, Drama', '0000-00-00', '978-0-06-1120'),
(10, 'El gran Gatsby', 'F. Scott Fitzgerald', 'Ficción, Drama', '1925-11-12', '978-0-7432-73'),
(11, 'Orgullo y prejuicio', 'Jane Austen', 'Ficción, Drama', '1813-10-12', '978-0-19-9535');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
