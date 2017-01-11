-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2017 a las 21:34:32
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sebas_videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE IF NOT EXISTS `destacados` (
`id_destacado` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `resumen` text NOT NULL,
  `img` text NOT NULL,
  `date_destacado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`id_destacado`, `titulo`, `resumen`, `img`, `date_destacado`) VALUES
(1, 'The Last Guardian', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, dolorum?', 'static/img/top/2.jpg', '2017-01-11 19:20:31'),
(2, 'Final Fantasy XV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, dolorum?', 'static/img/top/4.png', '2017-01-11 19:20:31'),
(3, 'Watch Dogs 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, unde.', 'static/img/top/3.jpg', '2017-01-11 19:20:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanzamientos`
--

CREATE TABLE IF NOT EXISTS `lanzamientos` (
`id_lanzamiento` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `img` text NOT NULL,
  `date_lanzamiento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lanzamientos`
--

INSERT INTO `lanzamientos` (`id_lanzamiento`, `titulo`, `img`, `date_lanzamiento`) VALUES
(7, '1', 'static/img/top/1.jpg', '2017-01-11 19:13:36'),
(8, '2', 'static/img/top/2.jpg', '2017-01-11 19:13:38'),
(9, '3', 'static/img/top/3.jpg', '2017-01-11 19:13:40'),
(10, '4', 'static/img/top/4.png', '2017-01-11 19:13:41'),
(11, '5', 'static/img/top/5.jpg', '2017-01-11 19:13:44'),
(12, '6', 'static/img/top/6.jpg', '2017-01-11 19:13:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
`id_noticia` int(11) NOT NULL,
  `titulo` text,
  `img1` text,
  `parrafo1` text,
  `img2` text,
  `parrafo2` text,
  `video` text,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hora` time NOT NULL,
  `categorias` text,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `img1`, `parrafo1`, `img2`, `parrafo2`, `video`, `fecha`, `hora`, `categorias`, `usuario`) VALUES
(1, 'primer noticia', 'static/img/noticias/noticia1.jpg', 'parrafo largo', 'static/img/noticias/noticia2.jpg', 'parrafo largo 2...', 'https://www.youtube.com/embed/MCdjXaNL1sQ?rel=0&amp;showinfo=0', '2017-01-11 10:10:19', '00:00:00', 'Xbox / play / pc /wii', 1),
(2, 'segunda noticia 2', 'static/img/noticias/noticia2.jpg', 'parrafo largo 1', '', 'parrafo largo 2', '', '2017-01-11 10:16:15', '00:00:00', 'xbox / play', 1),
(3, 'tercer noticia', 'static/img/noticias/noticia3.jpg', 'larrrgoooooooooooo', '', 'largo dos', '', '2017-01-11 11:37:32', '00:00:00', 'xbox / play / pc', 1),
(4, 'test', 'static/img/noticias/noticia4.jpg', 'test', '', 'test', '', '2017-01-11 11:37:32', '00:00:00', 'test', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trailers`
--

CREATE TABLE IF NOT EXISTS `trailers` (
`id_trailer` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `src` text NOT NULL,
  `date_trailer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trailers`
--

INSERT INTO `trailers` (`id_trailer`, `titulo`, `src`, `date_trailer`) VALUES
(1, 'The Last of US 2 | Trailer Oficial', 'https://www.youtube.com/embed/W2Wnvvj33Wo?rel=0&amp;showinfo=0', '2017-01-11 16:58:02'),
(2, 'Battlefield 1 | Trailer Oficial..', 'https://www.youtube.com/embed/c7nRTF2SowQ?rel=0&amp;showinfo=0', '2017-01-11 17:44:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
 ADD PRIMARY KEY (`id_destacado`);

--
-- Indices de la tabla `lanzamientos`
--
ALTER TABLE `lanzamientos`
 ADD PRIMARY KEY (`id_lanzamiento`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
 ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `trailers`
--
ALTER TABLE `trailers`
 ADD PRIMARY KEY (`id_trailer`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
MODIFY `id_destacado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `lanzamientos`
--
ALTER TABLE `lanzamientos`
MODIFY `id_lanzamiento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `trailers`
--
ALTER TABLE `trailers`
MODIFY `id_trailer` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
