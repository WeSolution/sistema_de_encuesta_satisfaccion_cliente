-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2017 at 01:07 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wwwpren_encuesta2`
--

DELIMITER $$
--
-- Procedures
--
$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `encuesta`
--

CREATE TABLE `encuesta` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encuesta`
--

INSERT INTO `encuesta` (`id`, `fecha`, `id_sucursal`) VALUES
(208, '2017-07-08', 1),
(209, '2017-07-08', 1),
(210, '2017-07-08', 1),
(211, '2017-07-08', 5),
(212, '2017-07-08', 5),
(213, '2017-07-08', 5),
(214, '2017-07-08', 5),
(215, '2017-07-08', 6),
(216, '2017-07-08', 12),
(217, '2017-07-10', 1),
(218, '2017-07-10', 10),
(219, '2017-07-10', 10),
(220, '2017-07-10', 10),
(221, '2017-07-10', 30),
(222, '2017-07-10', 30),
(223, '2017-07-10', 11),
(224, '2017-07-10', 11),
(225, '2017-07-10', 14),
(226, '2017-07-11', 8),
(227, '2017-07-11', 6),
(228, '2017-07-11', 6),
(229, '2017-07-11', 8),
(230, '2017-07-11', 1),
(231, '2017-07-11', 25),
(232, '2017-07-11', 1),
(233, '2017-07-11', 1),
(234, '2017-07-11', 1),
(235, '2017-07-11', 1),
(236, '2017-07-11', 1),
(237, '2017-07-11', 0),
(238, '2017-07-11', 8),
(239, '2017-07-11', 68),
(240, '2017-07-11', 1),
(241, '2017-07-11', 12),
(242, '2017-07-11', 10),
(243, '2017-07-11', 1),
(244, '2017-07-11', 1),
(245, '2017-07-11', 1),
(246, '2017-07-11', 1),
(247, '2017-07-11', 14),
(248, '2017-07-11', 14),
(249, '2017-07-11', 14),
(250, '2017-07-11', 1),
(251, '2017-07-12', 9),
(252, '2017-07-12', 9),
(253, '2017-07-12', 9),
(254, '2017-07-12', 14),
(255, '2017-07-12', 14),
(256, '2017-07-12', 2),
(257, '2017-07-12', 6),
(258, '2017-07-12', 5),
(259, '2017-07-12', 5),
(260, '2017-07-12', 0),
(261, '2017-07-12', 7),
(262, '2017-07-12', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pregunta`
--

INSERT INTO `pregunta` (`id`, `pregunta`) VALUES
(1, 'Como fue el tiempo de atencion que recibio'),
(2, 'El trato que recibió del asesor fue'),
(3, 'Como califica en general el servicio que le brindo el personal'),
(4, 'Cómo recomendarías esta sucursal'),
(5, 'Cómo se enteró de esta sucursal');

-- --------------------------------------------------------

--
-- Table structure for table `queja`
--

CREATE TABLE `queja` (
  `id` int(11) NOT NULL,
  `id_tipo_queja` int(11) DEFAULT NULL,
  `numeroTelefonico` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `id_sucursal` int(15) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `empleado` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queja`
--

INSERT INTO `queja` (`id`, `id_tipo_queja`, `numeroTelefonico`, `descripcion`, `id_sucursal`, `fecha`, `empleado`, `mail`) VALUES
(1, 1, '222222222', 'prueba', 1, '2017-07-10', 'n/a', 'n/a'),
(2, 1, '222222222', 'prueba', 1, '2017-07-10', 'n/a', 'n/a'),
(3, 1, '222222222', 'prueba', 1, '2017-07-10', 'n/a', 'n/a'),
(4, 1, '222222222', 'prueba', 1, '2017-07-10', 'n/a', 'n/a'),
(5, 1, '222222222', 'prueba', 1, '2017-07-10', 'n/a', 'n/a'),
(6, 1, '222222222', 'prueba', 1, '2017-07-10', 'n/a', 'n/a'),
(7, 2, '0442222222222', 'esto es una prueba', 1, '2017-07-10', 'n/a', 'n/a'),
(8, 4, '22222', 'asdasdasdasdasdasd', 18, '2017-07-10', 'n/a', 'n/a'),
(9, 1, '123123123123123', 'asdasdasdasdasdasdasd', 30, '2017-07-10', 'n/a', 'n/a'),
(10, 4, '2222222222', 'pkaspkomndompsdapomasd', 1, '2017-07-10', 'n/a', 'n/a'),
(11, 1, '1231233', 'asdasd', 1, '2017-07-10', 'n/a', 'n/a'),
(12, 1, '213123123', 'asdasd', 1, '2017-07-10', 'n/a', 'n/a'),
(13, 1, '', '', 1, '2017-07-10', 'n/a', 'n/a'),
(14, 3, '', 'asasdasd', 1, '2017-07-10', 'n/a', 'n/a'),
(15, 1, '2222', 'esto es otra prueba', 1, '2017-07-10', 'Juan Perez', 'micorreo@mail.com'),
(16, 4, '2222', 'Prueba', 6, '2017-07-11', 'Oz', 'mimail@mail.com'),
(17, 2, '', '', 8, '2017-07-11', '', ''),
(18, 3, '2221761780', 'No me indico precios de venta', 8, '2017-07-11', 'Noe ', 'ing_luisgm@hotmail.com'),
(19, 1, '', '', 25, '2017-07-11', '', ''),
(20, 3, '', '', 8, '2017-07-11', '', ''),
(21, 3, '2221761780', 'fue grosero', 12, '2017-07-11', 'Marco Ayala', 'ing_luisgm@hotmail.com'),
(22, 2, '', '', 1, '2017-07-11', '', ''),
(23, 2, '', '', 1, '2017-07-11', '', ''),
(24, 1, '', '', 14, '2017-07-11', '', ''),
(25, 4, '', '', 7, '2017-07-11', '', ''),
(26, 2, '', '', 7, '2017-07-11', '', ''),
(27, 3, '', '', 7, '2017-07-11', '', ''),
(28, 2, '', '', 7, '2017-07-11', '', ''),
(29, 2, '', '', 7, '2017-07-11', '', ''),
(30, 1, '', '', 7, '2017-07-11', '', ''),
(31, 3, '', '', 7, '2017-07-11', '', ''),
(32, 2, '', '', 7, '2017-07-11', '', ''),
(33, 2, '', '', 7, '2017-07-11', '', ''),
(34, 2, '', '', 7, '2017-07-11', '', ''),
(35, 3, '', '', 7, '2017-07-11', '', ''),
(36, 2, '', '', 14, '2017-07-11', '', ''),
(37, 2, '', '', 14, '2017-07-11', '', ''),
(38, 2, '', '', 14, '2017-07-11', '', ''),
(39, 2, '', '', 14, '2017-07-11', '', ''),
(40, 2, '', '', 14, '2017-07-11', '', ''),
(41, 2, '', '', 14, '2017-07-11', '', ''),
(42, 2, '', '', 7, '2017-07-11', '', ''),
(43, 2, '', '', 7, '2017-07-11', '', ''),
(44, 2, '', '', 14, '2017-07-11', '', ''),
(45, 2, '', '', 14, '2017-07-11', '', ''),
(46, 2, '', '', 14, '2017-07-11', '', ''),
(47, 2, '', '', 1, '2017-07-11', '', ''),
(48, 2, '', '', 1, '2017-07-11', '', ''),
(49, 2, '', '', 1, '2017-07-11', '', ''),
(50, 3, '', '', 1, '2017-07-11', '', ''),
(51, 4, '2221761780', 'Mala atencion', 9, '2017-07-12', 'Gerardo', 'ing_luisgm@hotmail.com'),
(52, 4, '', '', 6, '2017-07-12', '', ''),
(53, 4, '', '', 6, '2017-07-12', '', ''),
(54, 4, '', '', 6, '2017-07-12', '', ''),
(55, 4, '', '', 6, '2017-07-12', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `responde_encuesta`
--

CREATE TABLE `responde_encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `id_respuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responde_encuesta`
--

INSERT INTO `responde_encuesta` (`id_encuesta`, `id_pregunta`, `id_respuesta`) VALUES
(208, 1, 1),
(209, 1, 1),
(210, 1, 1),
(211, 1, 3),
(212, 1, 1),
(213, 1, 1),
(214, 1, 1),
(215, 1, 1),
(216, 1, 2),
(217, 1, 1),
(218, 1, 1),
(219, 1, 1),
(220, 1, 1),
(221, 1, 3),
(222, 1, 2),
(223, 1, 2),
(224, 1, 1),
(225, 1, 1),
(226, 1, 1),
(227, 1, 1),
(228, 1, 2),
(229, 1, 1),
(230, 1, 2),
(231, 1, 1),
(232, 1, 1),
(233, 1, 1),
(234, 1, 1),
(235, 1, 3),
(236, 1, 1),
(237, 1, 3),
(238, 1, 1),
(239, 1, 1),
(240, 1, 2),
(241, 1, 1),
(242, 1, 1),
(243, 1, 3),
(244, 1, 3),
(245, 1, 3),
(246, 1, 3),
(247, 1, 2),
(248, 1, 3),
(249, 1, 3),
(250, 1, 1),
(251, 1, 1),
(252, 1, 1),
(253, 1, 2),
(254, 1, 2),
(255, 1, 2),
(256, 1, 3),
(257, 1, 2),
(258, 1, 1),
(259, 1, 1),
(260, 1, 1),
(261, 1, 1),
(262, 1, 3),
(208, 2, 2),
(209, 2, 2),
(210, 2, 2),
(211, 2, 2),
(212, 2, 1),
(213, 2, 1),
(214, 2, 1),
(215, 2, 3),
(216, 2, 1),
(217, 2, 2),
(218, 2, 2),
(219, 2, 2),
(220, 2, 2),
(221, 2, 2),
(222, 2, 3),
(223, 2, 3),
(224, 2, 2),
(225, 2, 2),
(226, 2, 2),
(227, 2, 2),
(228, 2, 3),
(229, 2, 2),
(230, 2, 2),
(231, 2, 2),
(232, 2, 1),
(233, 2, 2),
(234, 2, 2),
(235, 2, 2),
(236, 2, 2),
(237, 2, 3),
(238, 2, 2),
(239, 2, 2),
(240, 2, 3),
(241, 2, 2),
(242, 2, 2),
(243, 2, 2),
(244, 2, 2),
(245, 2, 2),
(246, 2, 2),
(247, 2, 3),
(248, 2, 2),
(249, 2, 2),
(250, 2, 2),
(251, 2, 2),
(252, 2, 2),
(253, 2, 3),
(254, 2, 3),
(255, 2, 3),
(256, 2, 1),
(257, 2, 3),
(258, 2, 2),
(259, 2, 2),
(260, 2, 2),
(261, 2, 3),
(262, 2, 2),
(208, 3, 3),
(209, 3, 3),
(210, 3, 3),
(211, 3, 1),
(212, 3, 1),
(213, 3, 1),
(214, 3, 1),
(215, 3, 2),
(216, 3, 3),
(217, 3, 3),
(218, 3, 3),
(219, 3, 3),
(220, 3, 3),
(221, 3, 1),
(222, 3, 1),
(223, 3, 1),
(224, 3, 3),
(225, 3, 3),
(226, 3, 3),
(227, 3, 3),
(228, 3, 2),
(229, 3, 3),
(230, 3, 2),
(231, 3, 3),
(232, 3, 1),
(233, 3, 3),
(234, 3, 3),
(235, 3, 1),
(236, 3, 3),
(237, 3, 3),
(238, 3, 3),
(239, 3, 3),
(240, 3, 1),
(241, 3, 1),
(242, 3, 3),
(243, 3, 1),
(244, 3, 1),
(245, 3, 1),
(246, 3, 1),
(247, 3, 1),
(248, 3, 1),
(249, 3, 3),
(250, 3, 3),
(251, 3, 1),
(252, 3, 3),
(253, 3, 3),
(254, 3, 1),
(255, 3, 1),
(256, 3, 2),
(257, 3, 2),
(258, 3, 3),
(259, 3, 3),
(260, 3, 2),
(261, 3, 2),
(262, 3, 1),
(208, 4, 1),
(209, 4, 2),
(210, 4, 2),
(211, 4, 2),
(212, 4, 1),
(213, 4, 1),
(214, 4, 1),
(215, 4, 1),
(216, 4, 2),
(217, 4, 3),
(218, 4, 1),
(219, 4, 2),
(220, 4, 1),
(221, 4, 2),
(222, 4, 2),
(223, 4, 2),
(224, 4, 2),
(225, 4, 2),
(226, 4, 2),
(227, 4, 1),
(228, 4, 3),
(229, 4, 1),
(230, 4, 2),
(231, 4, 2),
(232, 4, 1),
(233, 4, 1),
(234, 4, 1),
(235, 4, 3),
(236, 4, 1),
(237, 4, 3),
(238, 4, 2),
(239, 4, 2),
(240, 4, 2),
(241, 4, 2),
(242, 4, 2),
(243, 4, 3),
(244, 4, 3),
(245, 4, 2),
(246, 4, 3),
(247, 4, 2),
(248, 4, 3),
(249, 4, 2),
(250, 4, 2),
(251, 4, 3),
(252, 4, 3),
(253, 4, 1),
(254, 4, 1),
(255, 4, 2),
(256, 4, 1),
(257, 4, 1),
(258, 4, 1),
(259, 4, 1),
(260, 4, 1),
(261, 4, 1),
(262, 4, 2),
(208, 5, 7),
(209, 5, 4),
(210, 5, 4),
(211, 5, 6),
(212, 5, 7),
(213, 5, 7),
(214, 5, 6),
(215, 5, 5),
(216, 5, 4),
(217, 5, 7),
(218, 5, 5),
(219, 5, 7),
(220, 5, 7),
(221, 5, 6),
(222, 5, 7),
(223, 5, 5),
(224, 5, 6),
(225, 5, 7),
(226, 5, 7),
(227, 5, 5),
(228, 5, 6),
(229, 5, 5),
(230, 5, 5),
(231, 5, 4),
(232, 5, 7),
(233, 5, 5),
(234, 5, 7),
(235, 5, 6),
(236, 5, 5),
(237, 5, 6),
(238, 5, 7),
(239, 5, 7),
(240, 5, 6),
(241, 5, 6),
(242, 5, 4),
(243, 5, 7),
(244, 5, 7),
(245, 5, 7),
(246, 5, 5),
(247, 5, 7),
(249, 5, 5),
(250, 5, 5),
(251, 5, 7),
(252, 5, 5),
(253, 5, 5),
(254, 5, 6),
(255, 5, 5),
(256, 5, 6),
(257, 5, 5),
(258, 5, 6),
(259, 5, 4),
(260, 5, 4),
(261, 5, 4),
(262, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(11) NOT NULL,
  `respuesta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respuesta`
--

INSERT INTO `respuesta` (`id`, `respuesta`) VALUES
(1, 'Bueno'),
(2, 'Regular'),
(3, 'Malo'),
(4, 'En Sucursal'),
(5, 'Facebook'),
(6, 'Perifoneo'),
(7, 'Radio');

-- --------------------------------------------------------

--
-- Table structure for table `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(15) NOT NULL,
  `sucursal` varchar(255) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `nom_symio` varchar(255) NOT NULL,
  `abreviacion` varchar(100) NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `no_cta` varchar(45) NOT NULL,
  `fecha_inicio_arrastre` date NOT NULL,
  `division` varchar(45) NOT NULL,
  `resp_generacion` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sucursal`
--

INSERT INTO `sucursal` (`id`, `sucursal`, `nombre`, `nom_symio`, `abreviacion`, `razon_social`, `region`, `mail`, `no_cta`, `fecha_inicio_arrastre`, `division`, `resp_generacion`) VALUES
(1, 'Acatzingo', 'Acatzingo', '739 ACATZINGO', 'Acat', 'Ayuda Express', 'Tecamachalco', 'acatzingo@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 2', 'Luis'),
(3, 'Amalucan', 'AMALUCAN', '164 AMALUCAN', 'Amal', 'Efectivo Inmediato', 'Oriente', 'amalucan@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 2', 'Noe'),
(2, 'Ajalpan', 'Ajalpan', '823 AJALPAN', 'Ajal', 'Apoyo Familiar de Mexico', 'Tehuacan', 'ajalpan@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Luis'),
(4, 'Apizaco', 'APIZACO', '105 APIZACO', 'Apiz1', 'Ayuda Express', 'Tlaxcala', 'apizaco@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 2', 'Sucursal'),
(5, 'Apizaco 2', 'Prendamex Apizaco II', '923 APIZACO II', 'Apiz2', 'Apoyo Familiar de Mexico', 'Tlaxcala', 'apizaco2@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Noe'),
(6, 'Atlixco 1', 'Atlixco', '48 ATLIXCO', 'Atlx1', 'Efectivo Inmediato', 'Cholula 2', 'atlixco@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 1', 'Noe'),
(7, 'Atlixco 2', 'Atlixco II', '1113 ATLIXCO II', 'Atlx2', 'Apoyo Familiar de Mexico', 'Cholula 2', 'atlixco2@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 1', 'Noe'),
(8, 'Balcones', 'BALCONES DEL SUR', '839 BALCONES DEL SUR', 'Balc', 'Apoyo Familiar de Mexico', 'Centro 3', 'balcones@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Noe'),
(9, 'Calpulalpan', 'calpulalpan', '811 CALPULALPAN', 'Calpu', 'Apoyo Familiar de Mexico', 'Tlaxcala', 'calpulalpan@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Noe'),
(10, 'Capu 1', 'CAPU 1', '175 CAPU I', 'Capu1', 'Efectivo Inmediato', 'Norte', 'capu@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 1', 'Noe'),
(11, 'Capu 2', 'CAPU 2', '289 CAPU II', 'Capu2', 'Prestamatico', 'Norte', 'capu2@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 1', 'Noe'),
(12, 'Catedral', 'Suc. Catedral', '1121 CATEDRAL', 'Cated', 'Prestasagza', 'Centro 1', 'catedral@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Division 1', 'Noe'),
(13, 'Ciudad Serdan', 'PRENDAMEX', '645 CIUDAD SERDAN', 'CdSerd', 'Ayuda Express', 'Tehuacan', 'ciudadserdan@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 2', 'Noe'),
(14, 'Centro Sur', 'Plaza Centro Sur', '258 PLAZA CENTRO SUR', 'CSur', 'Prestamatico', 'Cholula 2', 'centrosur@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 1', 'Noe'),
(15, 'Centro 1', 'Centro I', '160 CENTRO I', 'Centro1', 'Multiprestamos', 'Centro 2', 'centro@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 1', 'Noe'),
(16, 'Centro 3', 'Puebla Centro 3', '252 CENTRO III', 'Centro3', 'Prestamatico', 'Centro 2', 'centro3@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 1', 'Noe'),
(17, 'Cholula', 'CHOLULA', '71 CHOLULA', 'Chol', 'Efectivo Inmediato', 'Cholula 1', 'cholula@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 1', 'Noe'),
(18, 'Crystal', 'Crystal', '341 CRYSTAL', 'Crys', 'Prestamatico', 'Centro 2', 'crystal@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 1', 'Noe'),
(19, 'Gran Patio', 'Gran Patio Tlaxcala', '939 GRAN PATIO TLAXCALA', 'GrPatio', 'Pesos al Instante', 'Tlaxcala', 'granpatio@prendamexpuebla.com.mx', '393/6805980', '2016-01-02', 'Division 2', 'Ayala'),
(20, 'Heroes', 'Puebla Heroes', '201 HEROES', 'Heroes', 'Prestamatico', 'Centro 2', 'heroes@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 1', 'Noe'),
(21, 'Huauchinango', 'Huauchinango', '1122 HUAUCHINANGO', 'Huauch', 'Prestasagza', 'Norte', 'huauchinango@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Division 1', 'Ayala'),
(22, 'Izucar', 'Izucar', '434 IZUCAR DE MATAMOROS', 'Izuc', 'Prestamatico', 'Tlaxcala', 'izucar@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Ayala'),
(23, 'Margarita', 'La Margarita', '117 LA MARGARITA', 'Marg', 'Multiprestamos', 'Oriente', 'margarita@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 2', 'Ayala'),
(24, 'La Maria', 'LA MARIA', '943 LA MARIA', 'LaMaria', 'Pesos al Instante', 'Oriente', 'lamaria@prendamexpuebla.com.mx', '393/6805980', '2016-01-02', 'Division 2', 'Ayala'),
(25, 'Loreto', 'PLAZA LORETO', '186 PLAZA LORETO', 'Loret', 'Efectivo Inmediato', 'Oriente', 'loreto@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 2', 'Ayala'),
(26, 'Mayorazgo 1', 'Mayorazgo', '218 MAYORAZGO I', 'Mayor1', 'Multiprestamos', 'Cholula 2', 'mayorazgo@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 1', 'Mayorazgo 1'),
(27, 'Mayorazgo 2', 'Mayorazgo 2', '1123 MAYORAZGO II', 'Mayor2', 'Prestasagza', 'Cholula 2', 'mayorazgo2@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Division 1', 'Mayorazgo 2'),
(28, 'Morelos', 'Sucursal Morelos', '190 MORELOS', 'Morel', 'Multiprestamos', 'Oriente', 'morelos@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 2', 'Morelos'),
(29, 'Dorada', 'Puebla Dorada', '4 PLAZA DORADA', 'Dorada', 'Multiprestamos', 'Centro 2', 'dorada@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 1', 'Noe'),
(30, 'Plaza Sur', 'PLAZA SUR', '588 PLAZA SUR', 'PSur', 'Multiprestamos', 'Cholula 2', 'plazasur@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 1', 'Ayala'),
(31, 'San Diego', 'San Diego', '497 PLAZA SAN DIEGO', 'SnDiego', 'Ayuda Express', 'Cholula 1', 'sandiego@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 1', 'Cardona'),
(32, 'Tlatlauquitepec', 'TLATLAUQUITEPEC', '822 TLATLAUQUITEPEC', 'Tlatla', 'Apoyo Familiar de Mexico', 'Norte', 'tlatlauquitepec@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 1', 'Sucursal'),
(33, 'Tehuacan 4', 'TEHUACAN 4', '195 TEHUACAN II', 'Teh3', 'Apoyo Familiar de Mexico', 'Tehuacan', 'tehuacan4@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Ayala'),
(34, 'Tehuacan 5', 'Tehuacan V', '114 TEHUACAN V', 'Teh4', 'Apoyo Familiar de Mexico', 'Tehuacan', 'tehuacan5@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Cardona'),
(35, 'Villa Frontera', 'VILLA FRONTERA', '262 VILLA FRONTERA', 'vFronte', 'Prestamatico', 'Oriente', 'villafrontera@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Cardona'),
(36, 'Xicotepec', 'Prendamex Xicotepec de Juarez', '586 XICOTEPEC', 'Xicot', 'Ayuda Express', 'Norte', 'xicotepec@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 1', 'Luis'),
(37, 'Xilotzingo', 'Xilotzingo', '352 XILOTZINGO', 'Xilotz', 'Prestamatico', 'Centro 3', 'xilotzingo@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Cardona'),
(38, 'Zacatelco', 'ZACATELCO', '275 ZACATELCO', 'Zacat', 'Prestamatico', 'Tlaxcala', 'zacatelco@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Cardona'),
(39, 'Orion', 'Prendamex Plaza Orion', '585 PLAZA ORION', 'Orion', 'Ayuda Express', 'Cholula 1', 'orion@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 1', 'Ayala'),
(40, 'Paseo Bravo', 'PASEO BRAVO', '125 PASEO BRAVO', 'PBravo', 'Efectivo Inmediato', 'Centro 2', 'paseobravo@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 1', 'Ayala'),
(41, 'Animas', 'Las Ãnimas', '724 LAS ANIMAS', 'Anim', 'Ayuda Express', 'Norte', 'animas@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 1', 'Luis'),
(42, 'Reforma 2', 'REFORMA 2', '1124 REFORMA II', 'Ref2', 'Prestasagza', 'Oriente', 'reforma2@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Division 2', 'Ayala'),
(43, 'Zavaleta', 'ZAVALETA', '1045 ZAVALETA', 'Zavelt', 'Ayuda Express', 'Norte', 'zavaleta@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 1', 'Cardona'),
(44, 'Reforma 1', 'Sucursal Reforma', '858 REFORMA I', 'Ref1', 'Apoyo Familiar de Mexico', 'Oriente', 'reforma@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Ayala'),
(45, 'San Francisco', 'Sn Francisco Totimehuacan', '776 SAN FRANCISCO TOTIMEHUACAN', 'SnFranc', 'Ayuda Express', 'Centro 3', 'sanfrancisco@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 2', 'Cardona'),
(46, 'Plaza Ramse', 'PLAZA RAMSE', '1008 PLAZA RAMSE', 'PRamse', 'Pesos al Instante', 'Oriente', 'plazaramse@prendamexpuebla.com.mx', '393/6805980', '2016-01-02', 'Division 2', 'Ayala'),
(47, 'San Martin 2', 'Prendamex San Martin II', '922 SAN MARTIN II', 'SnMart2', 'Apoyo Familiar de Mexico', 'Cholula 2', 'sanmartin2@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 1', 'Cardona'),
(48, 'San Pedro', 'Plaza San Pedro', '5 SAN PEDRO', 'SnPedro', 'Multiprestamos', 'Oriente', 'sanpedro@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 2', 'Cardona'),
(49, 'Tecamachalco 1', 'TECAMACHALCO', '261 TECAMACHALCO', 'Tecam1', 'Prestamatico', 'Tecamachalco', 'tecamachalco@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Cardona'),
(50, 'Santa Ana', 'Santa Ana Chiautempan', '351 SANTA ANA CHIAUTEMPAN', 'SntaAna', 'Prestamatico', 'Tlaxcala', 'santaana@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Cardona'),
(51, 'Teziutlan 2', 'TEZIUTLAN II', '214 TEZIUTLAN II', 'Tez2', 'Efectivo Inmediato', 'Norte', 'teziutlan2@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 1', 'Sucursal'),
(52, 'San Martin 1', 'SAN MARTIN TEXMELUCAN', '31 SAN MARTIN TEX.', 'SnMart1', 'Efectivo Inmediato', 'Cholula 2', 'sanmartin@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 1', 'Cardona'),
(53, 'Tecamachalco 3', 'TECAMACHALCO 3', '1126 TECAMACHALCO 3', 'Tecam3', 'Prestasagza', 'Tecamachalco', 'tecamachalco3@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Division 2', 'Luis'),
(54, 'Teziutlan 1', 'TEZIUTLAN 1', '184 TEZIUTLAN I', 'Tez1', 'Efectivo Inmediato', 'Norte', 'teziutlan@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 1', 'Sucursal'),
(55, 'San Baltazar', 'SAN BALTAZAR', '1125 SAN BALTAZAR', 'SnBaltz', 'Prestasagza', 'Centro 1', 'sanbaltazar@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Division 1', 'Ayala'),
(56, 'Tlacotepec', 'TLACOTEPEC', '1043 TLACOTEPEC', 'Tlacot', 'Pesos al Instante', 'Tecamachalco', 'tlacotepec@prendamexpuebla.com.mx', '393/6805980', '2016-01-02', 'Division 2', 'Cardona'),
(57, 'Zacapoaxtla', 'Prendamex Zacapoaxtla', '555 ZACAPOAXTLA', 'Zacapx', 'Ayuda Express', 'Norte', 'zacapoaxtla@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 1', 'Cardona'),
(58, 'Cruz del Sur', 'CRUZ DEL SUR', '587 CRUZ DEL SUR', 'CruzSur', 'Multiprestamos', 'Cholula 1', 'cruzdelsur@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Division 1', 'Luis'),
(65, 'Tolin', 'TOLIN', '1127 TOLIN', 'Tolin', 'Prestasagza', 'Oriente', 'tolin@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Division 2', 'Cardona'),
(66, 'Tehuacan 1', 'Tehuacan I', '24 TEHUACAN I', 'Teh1', 'Efectivo Inmediato', 'Tehuacan', 'tehuacan@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Division 2', 'Luis'),
(62, 'Tehuacan 3', 'Tehuacan III', '432 TEHUACAN III', 'Teh3', 'Prestamatico', 'Tehuacan', 'tehuacan3@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Ayala'),
(59, 'Vidal Ruiz', 'VIDAL RUIZ', '1120 VIDAL RUIZ', 'VRuiz', 'Pesos al Instante', 'Centro 1', 'vidalruiz@prendamexpuebla.com.mx', '393/6805980', '2016-01-02', 'Division 1', 'Cardona'),
(60, 'Tepeaca', 'TEPEACA', '880 TEPEACA', 'Tepeac', 'Apoyo Familiar de Mexico', 'Tecamachalco', 'tepeaca@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Division 2', 'Cardona'),
(61, 'Tlaxcala 2', 'TLAXCALA 2', '62 TLAXCALA II', 'Tlax2', 'Ayuda Express', 'Tlaxcala', 'tlaxcala2@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 2', 'Cardona'),
(64, 'Amozoc', 'AMOZOC', '955 AMOZOC', 'Amozc', 'Pesos al Instante', 'Oriente', 'amozoc@prendamexpuebla.com.mx', '393/6805980', '2016-01-02', 'Division 2', 'Noe'),
(67, 'Ixtapaluca 2', 'Ixtapaluca 2', '1115 IXTAPALUCA 2', 'Ixt2', 'Prestamatico', 'Tlaxcala', 'ixtapaluca2@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Division 2', 'Ayala'),
(68, 'San Pablo del Monte', 'SAN PABLO DEL MONTE', '725 SAN PABLO', 'SnPabl', 'Ayuda Express', 'Tlaxcala', 'sanpablo@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Division 2', 'Cardona'),
(82, 'Apoyo Familiar de Mexico - 393/6794318', 'Apoyo Familiar de Mexico - 393/6794318', '', '', 'Apoyo Familiar de Mexico ', '', 'finanzas@prendamexpuebla.com.mx', '393/6794318', '2016-01-02', 'Local', ''),
(83, 'Ayuda Express - 393/6757870', 'Ayuda Express - 393/6757870', '', '', 'Ayuda Express', '', 'finanzas@prendamexpuebla.com.mx', '393/6757870', '2016-01-02', 'Local', ''),
(84, 'Efectivo Inmediato - 817/4758833 ', 'Efectivo Inmediato - 817/4758833 ', '', '', 'Efectivo Inmediato', '', 'finanzas@prendamexpuebla.com.mx', '817/4758833 ', '2016-01-02', 'Local', ''),
(85, 'Multiprestamos - 817/4760900', 'Multiprestamos - 817/4760900', '', '', 'Multiprestamos', '', 'finanzas@prendamexpuebla.com.mx', '817/4760900', '2016-01-02', 'Local', ''),
(86, 'Pesos al Instante - 393/6805980', 'Pesos al Instante - 393/6805980', '', '', 'Pesos al Instante', '', 'finanzas@prendamexpuebla.com.mx', '393/6805980', '2016-01-02', 'Local', ''),
(87, 'Prestamatico - 393/6734226', 'Prestamatico - 393/6734226', '', '', 'Prestamatico', '', 'finanzas@prendamexpuebla.com.mx', '393/6734226', '2016-01-02', 'Local', ''),
(88, 'Prestasagza - 7004/8969222', 'Prestasagza - 7004/8969222', '', '', 'Prestasagza', '', 'finanzas@prendamexpuebla.com.mx', '7004/8969222', '2016-01-02', 'Local', ''),
(89, 'Autos San Pedro', 'AUTOS SAN PEDRO', 'autos', 'autos', 'Multiprestamos', 'Oriente 2', 'autossanpedro@prendamexpuebla.com.mx', '0', '2017-04-26', '0', 'x');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_queja`
--

CREATE TABLE `tipo_queja` (
  `id` int(11) NOT NULL,
  `queja` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_queja`
--

INSERT INTO `tipo_queja` (`id`, `queja`) VALUES
(1, 'Consumo de alcohol'),
(2, 'Palabras o frases obscenas'),
(3, 'Discursos de odio o amenazas'),
(4, 'Otra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queja`
--
ALTER TABLE `queja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkTipoQuejaToQueja` (`id_tipo_queja`);

--
-- Indexes for table `responde_encuesta`
--
ALTER TABLE `responde_encuesta`
  ADD PRIMARY KEY (`id_encuesta`,`id_pregunta`,`id_respuesta`),
  ADD KEY `fkpreguntatorespenc` (`id_pregunta`),
  ADD KEY `fkrespuestatorespenc` (`id_respuesta`);

--
-- Indexes for table `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_queja`
--
ALTER TABLE `tipo_queja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT for table `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `queja`
--
ALTER TABLE `queja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `tipo_queja`
--
ALTER TABLE `tipo_queja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `queja`
--
ALTER TABLE `queja`
  ADD CONSTRAINT `fkTipoQuejaToQueja` FOREIGN KEY (`id_tipo_queja`) REFERENCES `tipo_queja` (`id`);

--
-- Constraints for table `responde_encuesta`
--
ALTER TABLE `responde_encuesta`
  ADD CONSTRAINT `fkencuestatorespenc` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id`),
  ADD CONSTRAINT `fkpreguntatorespenc` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id`),
  ADD CONSTRAINT `fkrespuestatorespenc` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
