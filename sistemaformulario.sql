-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-12-2023 a las 22:37:58
-- Versión del servidor: 8.0.31
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaformulario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE IF NOT EXISTS `alumno` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `cod_alum` varchar(10) DEFAULT NULL,
  `Nombres` varchar(180) DEFAULT NULL,
  `correo_personal` varchar(180) DEFAULT NULL,
  `DNI` varchar(15) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Título_Trabajo` varchar(500) DEFAULT NULL,
  `Nombre_Programa` varchar(100) DEFAULT NULL,
  `Area` varchar(25) DEFAULT NULL,
  `Sala` varchar(5) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_alumno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

DROP TABLE IF EXISTS `asesor`;
CREATE TABLE IF NOT EXISTS `asesor` (
  `id_asesor` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(180) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `celular` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id_asesor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presidente`
--

DROP TABLE IF EXISTS `presidente`;
CREATE TABLE IF NOT EXISTS `presidente` (
  `id_presidente` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(180) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `celular` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id_presidente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_formulario`
--

DROP TABLE IF EXISTS `resultado_formulario`;
CREATE TABLE IF NOT EXISTS `resultado_formulario` (
  `id_form` int NOT NULL AUTO_INCREMENT,
  `cod_alum` varchar(45) DEFAULT NULL,
  `pregunta_1` int DEFAULT NULL,
  `pregunta_2` int DEFAULT NULL,
  `pregunta_3` int DEFAULT NULL,
  `pregunta_4` int DEFAULT NULL,
  `pregunta_5` int DEFAULT NULL,
  `pregunta_6` int DEFAULT NULL,
  `recomendacion` varchar(200) DEFAULT NULL,
  `promedio` int DEFAULT NULL,
  `evaluador` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_form`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretario`
--

DROP TABLE IF EXISTS `secretario`;
CREATE TABLE IF NOT EXISTS `secretario` (
  `id_secretario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(180) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `celular` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id_secretario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
