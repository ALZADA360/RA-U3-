-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para developer_web2
CREATE DATABASE IF NOT EXISTS `developer_web2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `developer_web2`;

-- Volcando estructura para tabla developer_web2.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `cargo` varchar(50) NOT NULL DEFAULT '',
  `sexo` enum('masculino','femenino') NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla developer_web2.empleados: ~3 rows (aproximadamente)
INSERT IGNORE INTO `empleados` (`id_empleado`, `nombre`, `correo`, `telefono`, `direccion`, `cargo`, `sexo`) VALUES
	(15, 'Gabriela Rodriguez', 'Gabriela13@gmail.com', '9191661412', '8A AV SUR OTE 0', '', 'femenino'),
	(16, 'JUAN ÁLVAREZ', 'ja573193@gmail.com', '9191193548', '8A AV SUR OTE 0', '', 'masculino'),
	(17, 'ADRIANA CRISTEL', 'Adriana28@gmail.com', '9194558621', '8A AV SUR OTE 0', '', 'femenino');

-- Volcando estructura para tabla developer_web2.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `ponentes` varchar(100) NOT NULL,
  `tipo_evento` enum('conferencia','workshop') NOT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla developer_web2.eventos: ~1 rows (aproximadamente)
INSERT IGNORE INTO `eventos` (`id_evento`, `nombre`, `descripcion`, `fecha`, `lugar`, `direccion`, `ponentes`, `tipo_evento`) VALUES
	(9, 'react.js', 'introduccion a frameworks sobre javascript ', '2025-12-13', 'salon 1', '8A AV SUR OTE 0', '', 'conferencia'),
	(10, 'javascript', 'algoritmos, estructura de datos y metodos', '2024-12-12', 'explanada del salón 3', '1a sur oriente b. centro', '', 'conferencia');

-- Volcando estructura para tabla developer_web2.hoteles
CREATE TABLE IF NOT EXISTS `hoteles` (
  `id_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `no_estrellas` double NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `sitio_web` varchar(150) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_hotel`),
  UNIQUE KEY `id_hotel` (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla developer_web2.hoteles: ~0 rows (aproximadamente)
INSERT IGNORE INTO `hoteles` (`id_hotel`, `nombre`, `no_estrellas`, `telefono`, `correo`, `sitio_web`, `direccion`, `ciudad`) VALUES
	(1, 'margaritas', 4, '9192589647', 'margaritas@gmial.com', 'https://margaritas.com', '7ma av sur norte ', 'ocosingo'),
	(2, 'colonial', 5, '9634558621', 'hotelcolonialcomitan30000@gmail.com', 'https://hotelcolonia.com.mx', '8a calle belisario dominguez b. centro', 'Comitan de Dominguez');

-- Volcando estructura para tabla developer_web2.paquetes
CREATE TABLE IF NOT EXISTS `paquetes` (
  `id_paquete` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_paquete` varchar(50) NOT NULL,
  `caracteristicas` varchar(100) NOT NULL,
  `costo` double NOT NULL,
  PRIMARY KEY (`id_paquete`),
  UNIQUE KEY `id_paquete` (`id_paquete`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla developer_web2.paquetes: ~3 rows (aproximadamente)
INSERT IGNORE INTO `paquetes` (`id_paquete`, `tipo_paquete`, `caracteristicas`, `costo`) VALUES
	(1, 'gratis', 'con este paquete podr ver las conferencias desde internet', 0),
	(2, 'presencial', 'este paquete contiene las vistas e conferencias desde el movil o en visitas presenciales y tendra un', 149),
	(3, 'virtual', 'en este paquete podra visualizar los eventos desde la comodida de su casa y tendra la opcion de grab', 79);

-- Volcando estructura para tabla developer_web2.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla developer_web2.usuarios: ~24 rows (aproximadamente)
INSERT IGNORE INTO `usuarios` (`user`, `pass`, `nombre`) VALUES
	('angel_cruz', '170205', 'angel de jesus cruz lopez'),
	('juan_francisco', '1234', 'juan francisco alvarez santiz'),
	('juan_jesus', '230505', 'juan de jesus cruz lopez'),
	('saul_yael', 'yael04', 'saul yael de la cruz cruz'),
	('angel_cruz', '170205', 'angel de jesus cruz lopez'),
	('juan_francisco', '1234', 'juan francisco alvarez santiz'),
	('juan_jesus', '230505', 'juan de jesus cruz lopez'),
	('saul_yael', 'yael04', 'saul yael de la cruz cruz'),
	('angel_cruz', '170205', 'angel de jesus cruz lopez'),
	('juan_francisco', '1234', 'juan francisco alvarez santiz'),
	('juan_jesus', '230505', 'juan de jesus cruz lopez'),
	('saul_yael', 'yael04', 'saul yael de la cruz cruz'),
	('angel_cruz', '170205', 'angel de jesus cruz lopez'),
	('juan_francisco', '1234', 'juan francisco alvarez santiz'),
	('juan_jesus', '230505', 'juan de jesus cruz lopez'),
	('saul_yael', 'yael04', 'saul yael de la cruz cruz'),
	('angel_cruz', '170205', 'angel de jesus cruz lopez'),
	('juan_francisco', '1234', 'juan francisco alvarez santiz'),
	('juan_jesus', '230505', 'juan de jesus cruz lopez'),
	('saul_yael', 'yael04', 'saul yael de la cruz cruz'),
	('angel_cruz', '170205', 'angel de jesus cruz lopez'),
	('juan_francisco', '1234', 'juan francisco alvarez santiz'),
	('juan_jesus', '230505', 'juan de jesus cruz lopez'),
	('saul_yael', 'yael04', 'saul yael de la cruz cruz');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
