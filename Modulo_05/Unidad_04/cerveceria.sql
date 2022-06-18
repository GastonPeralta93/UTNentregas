-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-06-2022 a las 20:00:34
-- Versión del servidor: 5.7.13-log
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cerveceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, '111111111111 Insólita Buenos Aires: cuánto cuesta el lujoso petit hotel de 6 metros de ancho que es el más angosto de la ciudad', 'Una joya que fue diseñada y edificada por el arquitecto italiano Bernardo Milli en 1908. Con 900 m2 y 14 ambientes, su fachada remata en una cúpula negra de hierro forjado', 'Hace pocos días salió a la venta una joya de la arquitectura que sólo Buenos Aires puede ofrecer. Se trata del Petit Hotel más angosto que se comercializa en la ciudad catalogado de Patrimonio Histórico muy original por su fachada de estilo Liberty milanés, con toques de Art Noveau francés.\r\n\r\nFue edificado en 1908 por el arquitecto italiano Bernardo Milli y remata en una cúpula estilo Segundo Imperio (también llamado estilo Napoleón III porque nació en Francia bajo el reinado de este monarca), con una aplicación de hierro forjado que sobresale aun estando entre medianeras (se aprecia al pasar por la calle) y un edificio de oficinas vecino concluido en curtain wall que marcan un contraste urbanístico entre lo antiguo y moderno.\r\n\r\nEl inmueble está en Suipacha al 900, en el barrio de Retiro, próximo con la Plaza San Martín y tiene un frente de sólo 6,23 metros y un fondo profundo de casi 27 metros, que también lo convierten en único.', NULL),
(2, '2222222222 Felipe Fort reveló la inesperada respuesta que le dio su padre cuando quiso saber por qué no tenía mamá', 'El joven de 18 años reprodujo el diálogo que mantuvo con Ricardo Fort cuando era apenas un niño y notó que sus amigos sí “tenían mamá”', 'Siempre cultivó un bajo perfil. Así lo quiso su padre desde que él y su hermana eran chicos, también su tutor, su niñera y su familia. Hasta que cumplió la mayoría de edad, y ya con 18 años comenzó a levantar su perfil mediático, aquel que supo tener su padre. Y, de a poco, comenzó a mostrarse en las redes sociales: desde los viajes que realiza solo, con amigos o con su hermana, su pasión por los autos, también se anima a interactuar con sus seguidores, a responder preguntas sobre su futuro profesional, laboral y hasta de su intimidad.\r\n\r\nFelipe Fort fue invitado al programa Terapia Picante y allí habló como nunca de su padre y de cómo llegó al mundo, ya que tanto él como Marta, su hermana melliza, nacieron a través de un vientre subrogado en los Estados Unidos.', NULL),
(10, 'imagen 2', '2 imagen', '                        cuerpo de imagen 2\r\n                    ', 'dxoqthfwzkkqr6uhjcy9'),
(11, 'numero 5', 'sub num 5', 'la num 5', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'gaston1', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'jessi1', '827ccb0eea8a706c4c34a16891f84e7b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
