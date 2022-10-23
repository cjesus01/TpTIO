-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2022 a las 22:14:41
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
  `año` int(100) NOT NULL,
  `suceso` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historia`
--

INSERT INTO `historia` (`id`, `año`, `suceso`) VALUES
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
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id_recursos` int(11) NOT NULL,
  `tipo_recursos` varchar(5555) NOT NULL,
  `titulo_recursos` varchar(1000) NOT NULL,
  `info_recursos` varchar(5555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id_recursos`, `tipo_recursos`, `titulo_recursos`, `info_recursos`) VALUES
(1, 'Materiales', '0', 'Producimos glucosa, maltosa, fructosa, almidón de maíz, harina de maíz, sémola y aceite de maíz en 5 unidades productivas dedicadas a la molienda de maíz. Arcor tiene establecida en 39 plantas industriales en Latinoamérica. Se hayan 10 oficinas comerciales alrededor del mundo, logrando insertarse en las principales economías regionales del mundo, ganando un prestigio el cual es difícil de obtener.'),
(2, 'Materiales', '0', 'En Agronegocios en Grupo Arcor, a mediados de 2015, se agregó (al fin de brindar nuevas y mejores soluciones) una nueva y moderna planta de molienda húmeda de maíz en el Complejo Industrial Arroyito, que está dedicada a la elaboración de fructosa, principalmente orientada a la producción de bebidas gaseosas, aguas saborizadas y jugos, entre otros productos, la cual empezó a operar ese mismo año.'),
(3, 'Materiales', '0', 'Dentro de esta división existe el Programa Agro Sustentable el cual está orientado a asegurar la responsabilidad ambiental, social y económica de los insumos agropecuarios de Arcor. Sus principales insumos involucrados dentro del programa son azúcar, cereales(maíz y trigo), frutas y hortalizas, grasas y aceites (animales y vegetales), derivados del cacao y derivados lácteos.'),
(4, 'Materiales', '0', 'El Ingenio cuenta con una central que genera energía a partir del bagazo (combustible renovable), que se obtiene como residuo durante el procesamiento de la caña de azúcar. La energía generada permite el autoabastecimiento energético del Ingenio (durante la zafra y genera un excedente destinado a abastecer la necesidad de la provincia de Tucumán).'),
(5, 'Materiales', '0', 'Todos los ingredientes y aditivos que se utilizan en los productos elaborados por el Grupo Arcor, son los permitidos y regulados por el Código Alimentario Argentino, algunos de estos son:\r\nEtanol \r\nJarabe de Fructosa\r\nLecitina de Soja\r\nSorbato de potasio'),
(6, 'Materiales', '0', 'Es uno de los líderes argentinos en la producción de alcohol etílico de cereales y produce 1, 55 millones de TN de caña de azúcar molida anuales en su ingenio La Providencia, en Tucumán. A su vez, es uno de los principales productores argentinos de leche, con 50.000 litros diarios de leche producidos por día. Por otro lado, es un actor importante en el mercado de nutrición animal y petcare, comercializando más de 330.000 tn por año de productos para nutrición animal (wet gluten feed, gluten meal, burlanda húmeda y Lex).'),
(7, 'Humanos', 'Ofertas laborales en el exterior ', 'Las ofertas de empleo que brinda están dirigidas a diversos perfiles y ofrecen la posibilidad de trabajar en las distintas plantas industriales de Latinoamérica y en las filiales y oficinas comerciales que la compañía tiene en América, Europa y Asia. '),
(8, 'Humanos', 'Búsquedas laborales en Argentina ', 'Las ofertas de empleo que brinda están dirigidas a diversos perfiles, ofrecen la posibilidad de trabajar en distintas provincias de nuestro país y conocer en profundidad la particularidad de cada uno de sus negocios. '),
(9, 'Humanos', 'Programa de Jóvenes Emprendedores.', 'Tiene el fin de incorporar jóvenes con potencial de liderazgo, interesados en desarrollar una mirada sustentable del negocio y que estén dispuestos a trasladarse dentro o fuera del país.\r\n\r\nEl programa busca incorporar estudiantes que se encuentren cursando los últimos años de las carreras de Ingeniería, Logística, Contador Público, Sistemas, Administración de Empresas, Marketing, Comercialización, Recursos Humanos y otras carreras dentro del ámbito de las Ciencias Sociales, con el objetivo de brindarles la posibilidad de vincular la esfera vocacional a la laboral, al realizar una primera experiencia en el mundo del trabajo.'),
(10, 'Humanos', 'Testimonios:\r\nYEN PAUL WEE NÚÑEZ, Gerente de Ventas Distribuidores, Chile.', 'Yen Paul y su familia vivieron cuatro años en Panamá, ya que su anterior posición era Gerente de Marketing para Centroamérica y Caribe: “Tuve la posibilidad de trabajar en varios países y conocer distintas culturas, lo cual genera una experiencia muy enriquecedora, tanto en lo personal como en lo profesional”. Ingresó en Arcor en 1997 como Jefe de Trade Marketing del canal de distribución. En su regreso a Chile le tocó asumir nuevos desafíos en una de las áreas que más le gusta por la diversidad de actividades que implica y por su cercanía con los clientes.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `mail` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hash` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `permisos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `mail`, `hash`, `permisos`) VALUES
(1, 'user@tudai.com', '$2y$10$pnq4uRlxkkSwZ2VUfhtjzeakj2MgutS5O1grbmlNK5bnJIAESycuq', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id_recursos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historia`
--
ALTER TABLE `historia`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id_recursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
