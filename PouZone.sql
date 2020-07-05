-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-04-2020 a las 16:20:06
-- Versión del servidor: 10.0.38-MariaDB-0+deb8u1
-- Versión de PHP: 5.6.40-0+deb8u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `achievements`
--

CREATE TABLE IF NOT EXISTS `achievements` (
`ID` int(10) NOT NULL,
  `Tipo` varchar(32) NOT NULL,
  `Titulo` varchar(32) NOT NULL,
  `Descripcion` varchar(32) NOT NULL,
  `Nombre_Jugador` varchar(32) NOT NULL,
  `Valor` int(5) NOT NULL,
  `Progreso` int(5) NOT NULL,
  `Completado` int(11) NOT NULL DEFAULT '0',
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `achievements`
--

INSERT INTO `achievements` (`ID`, `Tipo`, `Titulo`, `Descripcion`, `Nombre_Jugador`, `Valor`, `Progreso`, `Completado`, `Fecha`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_queue`
--

CREATE TABLE IF NOT EXISTS `action_queue` (
`ID` int(10) unsigned NOT NULL,
  `faccj` int(11) NOT NULL DEFAULT '0',
  `user_ses` varchar(24) NOT NULL DEFAULT 'Nadie',
  `jugname` varchar(24) NOT NULL DEFAULT 'Nadie',
  `queue_params` varchar(24) NOT NULL DEFAULT 'nada',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0 sin atender, 1 atendido, 2 error',
  `type` int(2) NOT NULL DEFAULT '0',
  `razon` varchar(128) NOT NULL DEFAULT 'Ninguna',
  `TiempoJail` int(11) NOT NULL DEFAULT '0',
  `NRango` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2308 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores_tiendas`
--

CREATE TABLE IF NOT EXISTS `actores_tiendas` (
`ID` int(11) NOT NULL,
  `Skin` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `A` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Localidad` varchar(32) NOT NULL DEFAULT 'Los Santos',
  `EntradaLocalX` float NOT NULL,
  `EntradaLocalY` float NOT NULL,
  `EntradaLocalZ` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actores_tiendas`
--

INSERT INTO `actores_tiendas` (`ID`, `Skin`, `X`, `Y`, `Z`, `A`, `Interior`, `VW`, `Localidad`, `EntradaLocalX`, `EntradaLocalY`, `EntradaLocalZ`) VALUES
(1, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 1, 'Idlewood', 1833.78, -1842.66, 13.5781),
(2, 184, -31.4199, -185.485, 1007.73, 270.854, 10, 1, 'Idlewood', 1928.58, -1776.28, 13.5469),
(3, 229, -23.1045, -57.341, 1003.55, 6.8759, 6, 66, 'Commerce', 1352.37, -1759.25, 13.5078),
(4, 229, -27.7613, -91.7475, 1003.55, 11.0644, 18, 2, 'Temple', 1315.49, -897.682, 39.5781),
(5, 229, -31.4202, -185.448, 1007.73, 266.314, 10, 2, 'Mullholand', 1000.59, -919.926, 42.3281),
(6, 229, -103.898, -24.2032, 1000.72, 2.3002, 3, 3, 'Mullholand', 1087.66, -922.483, 43.3906),
(7, 229, -103.898, -24.2032, 1000.72, 2.3002, 3, 20, 'Market', 953.908, -1336.83, 13.5389),
(8, 229, -103.898, -24.2032, 1000.72, 2.3002, 3, 6, 'Market', 1137.99, -1365.38, 13.9844),
(9, 229, 207.058, -127.807, 1003.51, 180.433, 3, 0, 'Rodeo', 499.518, -1360.63, 16.369),
(10, 229, 204.297, -157.83, 1000.52, 179.961, 14, 57, 'Rodeo', 454.201, -1477.97, 30.8137),
(11, 145, 204.853, -8.0961, 1001.21, 269.375, 5, 56, 'Rodeo', 461.704, -1500.8, 31.0453),
(12, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 3, 'Flint Country', -78.3736, -1169.9, 2.13546),
(13, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 4, 'Easter Basin', -1676.17, 432.196, 7.17969),
(14, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 3, 'Juniper Hill', -2442.74, 755.418, 35.1719),
(15, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 5, 'Juniper Hollow', -2420.15, 969.843, 45.2969),
(16, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 5, 'Casino Starfish', 2194.94, 1991.05, 12.2969),
(17, 229, 161.456, -81.1919, 1001.8, 181.49, 18, 55, 'Downtown Los Santos', 1456.48, -1137.61, 23.9485),
(18, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 11, 'Downtown Los Santos', 1565.86, -1171.42, 24.0953),
(19, 229, 498.7, -77.5756, 998.765, 0, 11, 12, 'East Los Santos', 2348.5, -1372.68, 24.3984),
(20, 245, -103.898, -24.2032, 1000.72, 2.3002, 3, 12, 'East Los Santos', 2421.45, -1219.34, 25.5559),
(21, 229, -1072.13, 356.004, 1180.53, 181.155, 1, 2, 'Creek', 2861.26, 2430.74, 11.069),
(22, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 7, 'Creek', 2884.56, 2454.05, 11.069),
(23, 145, 373.688, -117.279, 1001.5, 178.979, 5, 4, 'Creek', 2756.76, 2477.35, 11.0625),
(24, 145, 373.688, -117.279, 1001.5, 178.979, 5, 10, 'Roca Escalante', 2351.82, 2533.63, 10.8203),
(25, 145, 373.688, -117.279, 1001.5, 178.979, 5, 11, 'Roca Escalante', 2330.6, 2533.61, 10.8203),
(26, 145, 373.688, -117.279, 1001.5, 178.979, 5, 12, 'Roca Escalante', 2309.5, 2533.61, 10.8203),
(27, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 12, 'The Emerald Isle', 2187.71, 2469.64, 11.2422),
(28, 145, 373.688, -117.279, 1001.5, 178.979, 5, 3, 'The Emerald Isle', 2083.34, 2224.7, 11.0234),
(29, 229, -103.877, -24.2025, 1000.72, 359.973, 3, 9, 'Redsands East', 2085.12, 2073.97, 11.0547),
(30, 229, -1072.13, 356.004, 1180.53, 181.155, 1, 1, 'The Strip', 2107.75, 2165.51, 10.8203),
(31, 229, -1072.13, 356.004, 1180.53, 181.155, 1, 3, 'El Quebrado', -1480.98, 2591.66, 55.8359),
(32, 145, 373.688, -117.279, 1001.5, 178.979, 5, 8, 'Blueberry', 203.395, -201.942, 1.57812),
(33, 145, 373.688, -117.279, 1001.5, 178.979, 5, 7, 'Montgomery', 1367.55, 248.252, 19.5669),
(34, 145, 373.688, -117.279, 1001.5, 178.979, 5, 6, 'Palomino Creek', 2331.81, 75.0506, 26.621),
(35, 145, 373.688, -117.279, 1001.5, 178.979, 5, 2, 'Esplanade North', -1720.95, 1359.78, 7.18532),
(36, 56, 203.797, -41.6677, 1001.8, 179.728, 1, 66, 'Jefferson', 2112.91, -1211.46, 23.9629),
(37, 101, 207.514, -98.7055, 1005.26, 178.482, 15, 3, 'Ganton', 2244.31, -1665.36, 15.4766),
(38, 145, 373.688, -117.279, 1001.5, 178.979, 5, 9, 'Idlewood', 2105.48, -1806.47, 13.5547),
(39, 229, 498.7, -77.5756, 998.765, 0, 11, 3, 'Doherty', -1820.85, -125.765, 5.7484),
(40, 229, -31.4199, -185.485, 1007.73, 270.854, 10, 10, 'Las Venturas', 2117.5, 896.778, 11.1797),
(41, 229, 498.7, -77.5756, 998.765, 0, 11, 6, 'The Camel''s Toe', 2507.39, 1242.25, 10.827),
(42, 229, -27.6877, -91.6325, 1003.55, 10.4018, 18, 8, 'Roca Escalante', 2247.64, 2396.17, 10.8203),
(43, 85, 1214.88, -15.2607, 1000.92, 0, 2, 5, 'The Pink Swan', 2014.81, 1107.01, 10.8203),
(44, 63, 970.836, -44.7808, 1001.12, 87.7157, 3, 0, 'The Pink Swan', 2014.84, 1150.47, 10.9203),
(45, 206, -31.4207, -185.424, 1007.73, 270, 0, 13, 'Montgomery', 1383.25, 465.559, 20.1919),
(46, 247, 498.7, -77.5756, 998.765, 0, 11, 16, 'Dillimore', 681.64, -473.348, 16.6363),
(47, 72, -27.6877, -91.6325, 1003.55, 10.4018, 18, 6, 'Ganton', 2424.2, -1742.81, 13.5454),
(48, 72, -30.4527, -30.6771, 1003.56, 5.5409, 4, 56, 'Market', 2424.2, -1742.81, 13.5454),
(49, 44, -223.307, 1404.52, 27.7734, 90, 18, 0, 'Cantera Hunter Quarry', 824.868, 860.272, 12.3028);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_names`
--

CREATE TABLE IF NOT EXISTS `admin_names` (
`#_ID` int(11) NOT NULL,
  `Nickname` varchar(128) NOT NULL DEFAULT 'Ninguno',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin_names`
--

INSERT INTO `admin_names` (`#_ID`, `Nickname`, `owner`) VALUES
(2, 'Dkyzer', 1),
(3, 'Eminem', 1),
(5, 'Sergio', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aka`
--

CREATE TABLE IF NOT EXISTS `aka` (
`ID` int(11) NOT NULL,
  `NAMES` varchar(128) NOT NULL DEFAULT '',
  `IP` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aka`
--

INSERT INTO `aka` (`ID`, `NAMES`, `IP`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes`
--

CREATE TABLE IF NOT EXISTS `antecedentes` (
`Id` int(10) NOT NULL,
  `Cargos` varchar(128) NOT NULL,
  `Condena` int(1) NOT NULL,
  `Oficial` varchar(24) NOT NULL,
  `Datos` text NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserID` int(22) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anti_spam`
--

CREATE TABLE IF NOT EXISTS `anti_spam` (
`ID` int(11) NOT NULL,
  `Bloqueada` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE IF NOT EXISTS `calificaciones` (
`ID` int(6) NOT NULL,
  `calificado` int(6) NOT NULL,
  `calificador` int(6) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`ID`, `calificado`, `calificador`) VALUES
(1, 27, 27),
(2, 10, 10),
(3, 212, 212),
(4, 454, 400),
(5, 971, 666),
(6, 775, 775),
(7, 6, 539),
(8, 83, 83);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canal_dudas`
--

CREATE TABLE IF NOT EXISTS `canal_dudas` (
`ID` int(11) NOT NULL,
  `Nombre` varchar(64) NOT NULL DEFAULT 'Ninguno',
  `Mensaje` varchar(128) NOT NULL DEFAULT 'Vacio',
  `IDJugador` int(11) NOT NULL,
  `Estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `canal_dudas`
--

INSERT INTO `canal_dudas` (`ID`, `Nombre`, `Mensaje`, `IDJugador`, `Estado`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_ropas`
--

CREATE TABLE IF NOT EXISTS `codigos_ropas` (
`ID` int(11) NOT NULL,
  `Codigo` varchar(8) NOT NULL DEFAULT '',
  `SkinID` int(3) NOT NULL DEFAULT '250',
  `Precio` int(11) NOT NULL,
  `Sexo` int(1) NOT NULL DEFAULT '1',
  `Tienda` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `codigos_ropas`
--

INSERT INTO `codigos_ropas` (`ID`, `Codigo`, `SkinID`, `Precio`, `Sexo`, `Tienda`) VALUES
(1, 'EUXY', 1, 1150, 1, 'Binco'),
(2, 'AREP', 2, 1655, 1, 'Binco'),
(3, 'WESY', 7, 1670, 1, 'Binco'),
(4, 'FERA', 14, 1655, 1, 'Victim'),
(5, 'UHYU', 15, 1730, 1, 'ZIP'),
(6, 'BGAS', 16, 1320, 1, 'SubUrban'),
(7, 'SFEW', 17, 2682, 1, 'DidierSachs'),
(8, 'GTYD', 18, 1290, 1, 'ProLaps'),
(9, 'BTYU', 19, 1200, 1, 'SubUrban'),
(10, 'KILA', 20, 1700, 1, 'ZIP'),
(11, 'DYHG', 21, 1420, 1, 'SubUrban'),
(12, 'BTYD', 22, 1350, 1, 'SubUrban'),
(13, 'SXCE', 23, 1570, 1, 'Binco'),
(14, 'ZAEF', 24, 1880, 1, 'ZIP'),
(15, 'VEYT', 25, 1895, 1, 'ZIP'),
(16, 'GHUS', 26, 1574, 1, 'Binco'),
(17, 'YONR', 27, 1340, 1, 'SubUrban'),
(18, 'BTRS', 28, 1450, 1, 'SubUrban'),
(19, 'NTYD', 29, 1500, 1, 'SubUrban'),
(20, 'MDSR', 30, 1272, 1, 'SubUrban'),
(21, 'KTCW', 32, 1395, 1, 'SubUrban'),
(22, 'AJRE', 33, 1680, 1, 'Binco'),
(23, 'SMWA', 34, 1656, 1, 'Binco'),
(24, 'PERM', 35, 1780, 1, 'ZIP'),
(25, 'SEOL', 36, 1800, 1, 'ZIP'),
(26, 'FERU', 9, 2559, 2, 'DidierSachs'),
(27, 'CGES', 10, 1000, 2, 'SubUrban'),
(28, 'SERE', 11, 1780, 2, 'ZIP'),
(29, 'LUJA', 13, 1090, 2, 'SubUrban'),
(30, 'BTDK', 31, 1660, 2, 'Binco'),
(31, 'BTDK', 38, 1352, 2, 'SubUrban'),
(32, 'SFSH', 39, 1420, 2, 'SubUrban'),
(33, 'EUSI', 40, 1650, 2, 'Binco'),
(34, 'DDOS', 41, 1920, 2, 'ZIP'),
(35, 'OPSF', 53, 1360, 2, 'SubUrban'),
(36, 'EOWL', 54, 1290, 2, 'SubUrban'),
(37, 'VJUS', 55, 1850, 2, 'ZIP'),
(38, 'QAID', 56, 1665, 2, 'Binco'),
(39, 'CONH', 63, 1780, 2, 'Victim'),
(40, 'VJUS', 64, 1100, 2, 'SubUrban'),
(41, 'TYWE', 75, 1400, 2, 'SubUrban'),
(42, 'OSIF', 76, 2600, 2, 'DidierSachs'),
(43, 'BHSU', 77, 1200, 2, 'SubUrban'),
(44, 'WIOS', 85, 1810, 2, 'ZIP'),
(45, 'CAOI', 87, 2100, 2, 'Victim'),
(46, 'VSLS', 88, 1702, 2, 'Binco'),
(47, 'VPSO', 89, 1430, 2, 'SubUrban'),
(48, 'LSSF', 90, 1550, 2, 'ProLaps'),
(49, 'SFPO', 91, 2300, 2, 'DidierSachs'),
(50, 'LVPO', 92, 1460, 2, 'ProLaps'),
(51, 'SEPW', 93, 2000, 2, 'ZIP'),
(52, 'BRTF', 129, 1515, 2, 'Binco'),
(53, 'MUAY', 130, 1595, 2, 'Binco'),
(54, 'THAI', 131, 1600, 2, 'ZIP'),
(55, 'NHSU', 138, 1690, 2, 'ProLaps'),
(56, 'SICV', 139, 1590, 2, 'ProLaps'),
(57, 'VNSM', 140, 1899, 2, 'ProLaps'),
(58, 'JSPM', 145, 2100, 2, 'Victim'),
(59, 'LSMU', 148, 2500, 2, 'DidierSachs'),
(60, 'KOKU', 150, 2700, 2, 'DidierSachs'),
(61, 'PSLO', 151, 1600, 2, 'Binco'),
(62, 'NQAR', 152, 1800, 2, 'Victim'),
(63, 'HLAO', 157, 1359, 2, 'SubUrban'),
(64, 'DAPL', 172, 2600, 2, 'DidierSachs'),
(65, 'NYRE', 178, 1700, 2, 'Victim'),
(66, 'LARN', 190, 1900, 2, 'ZIP'),
(67, 'SHLP', 192, 2000, 2, 'ZIP'),
(68, 'NICU', 193, 1800, 2, 'ZIP'),
(69, 'XASE', 194, 2700, 2, 'DidierSachs'),
(70, 'XSAE', 196, 1100, 2, 'SubUrban'),
(71, 'QWER', 197, 1200, 2, 'SubUrban'),
(72, 'RRIO', 198, 1750, 2, 'ZIP'),
(73, 'SBPV', 201, 1900, 2, 'Binco'),
(74, 'BPSL', 205, 3000, 2, 'Victim'),
(75, 'VIPE', 207, 1800, 2, 'Victim'),
(76, 'TURN', 214, 2100, 2, 'Victim'),
(77, 'NRDS', 215, 2100, 2, 'SubUrban'),
(78, 'ESPO', 216, 3600, 2, 'DidierSachs'),
(79, 'BETD', 218, 1400, 2, 'SubUrban'),
(80, 'QXZV', 219, 3500, 2, 'DidierSachs'),
(81, 'OOIS', 224, 1690, 2, 'Binco'),
(82, 'XXVD', 225, 1590, 2, 'Binco'),
(83, 'XXSE', 226, 2000, 2, 'ZIP'),
(84, 'BMER', 231, 1550, 2, 'Binco'),
(85, 'SVGW', 232, 1500, 2, 'Binco'),
(86, 'ADSO', 233, 1899, 2, 'ZIP'),
(87, 'PPAR', 237, 1700, 2, 'Victim'),
(88, 'XXTE', 238, 1200, 2, 'SubUrban'),
(89, 'VRTA', 243, 1699, 2, 'Victim'),
(90, 'BNMT', 244, 1599, 2, 'Victim'),
(91, 'NRTF', 245, 1699, 2, 'Victim'),
(92, 'VERA', 246, 1900, 2, 'Victim'),
(93, 'SDBG', 251, 1500, 2, 'ProLaps'),
(94, 'MTYF', 256, 1600, 2, 'Victim'),
(95, 'ZRSF', 257, 1799, 2, 'Victim'),
(96, 'GGRT', 263, 1750, 2, 'Victim'),
(98, 'YOPA', 37, 1589, 1, 'Binco'),
(99, 'DOSP', 43, 1654, 1, 'Binco'),
(100, 'VISU', 44, 1390, 1, 'SubUrban'),
(101, 'BUSI', 45, 1220, 1, 'ProLaps'),
(102, 'OISY', 46, 1745, 1, 'ZIP'),
(103, 'ASEQ', 47, 1440, 1, 'SubUrban'),
(104, 'CTYD', 48, 1735, 1, 'Binco'),
(105, 'BRYR', 49, 1770, 1, 'ZIP'),
(106, 'UYBC', 50, 1680, 1, 'Binco'),
(107, 'BRDS', 51, 1500, 1, 'Binco'),
(108, 'BRYR', 52, 1500, 1, 'Binco'),
(109, 'QKIS', 57, 2880, 1, 'DidierSachs'),
(110, 'BARQ', 58, 1598, 1, 'Binco'),
(111, 'FEAQ', 59, 1955, 1, 'ZIP'),
(112, 'CTHU', 60, 1632, 1, 'Binco'),
(113, 'CKOS', 61, 2590, 1, 'DidierSachs'),
(114, 'CARK', 62, 1600, 1, 'Binco'),
(115, 'FRTA', 66, 1581, 1, 'Binco'),
(116, 'GTAW', 67, 1682, 1, 'Binco'),
(117, 'TYRE', 68, 1700, 1, 'ZIP'),
(118, 'VHFF', 70, 1900, 1, 'ZIP'),
(119, 'VSWR', 72, 1750, 1, 'ZIP'),
(120, 'TWSS', 73, 1800, 1, 'ZIP'),
(121, 'BUHS', 78, 1170, 1, 'SubUrban'),
(122, 'IWOS', 79, 1100, 1, 'SubUrban'),
(123, 'AIWP', 80, 1650, 1, 'ProLaps'),
(124, 'WOSP', 81, 1660, 1, 'ProLaps'),
(125, 'PLSO', 82, 1900, 1, 'ZIP'),
(126, 'MONE', 83, 1920, 1, 'ZIP'),
(127, 'AYUS', 84, 1910, 1, 'ZIP'),
(128, 'KIQW', 94, 1500, 1, 'Binco'),
(129, 'IJSF', 95, 1400, 1, 'SubUrban'),
(130, 'SETA', 96, 1650, 1, 'ProLaps'),
(131, 'LYSF', 97, 1520, 1, 'ProLaps'),
(132, 'QAJU', 98, 1900, 1, 'ZIP'),
(133, 'MJAF', 99, 1540, 1, 'ProLaps'),
(134, 'BOSK', 100, 1800, 1, 'Binco'),
(135, 'BOSS', 101, 1990, 1, 'ZIP'),
(136, 'BBRS', 128, 1600, 1, 'ZIP'),
(137, 'PARL', 132, 1500, 1, 'Binco'),
(138, 'NEPA', 133, 1600, 1, 'Binco'),
(139, 'YIMQ', 134, 1359, 1, 'SubUrban'),
(140, 'LSYG', 135, 1300, 1, 'SubUrban'),
(141, 'SKQI', 136, 1400, 1, 'SubUrban'),
(142, 'BNSI', 137, 1100, 1, 'SubUrban'),
(143, 'KDOK', 142, 1700, 1, 'Victim'),
(144, 'VUSW', 143, 1600, 1, 'Binco'),
(145, 'JSTI', 144, 1900, 1, 'Victim'),
(146, 'JSOG', 146, 2000, 1, 'Victim'),
(147, 'BUST', 147, 2700, 1, 'DidierSachs'),
(148, 'FKSU', 153, 2800, 1, 'DidierSachs'),
(149, 'MQNB', 154, 1700, 1, 'ProLaps'),
(150, 'POSL', 156, 1600, 1, 'Binco'),
(151, 'PORF', 158, 1400, 1, 'SubUrban'),
(152, 'AQPO', 159, 1100, 1, 'SubUrban'),
(153, 'GSPL', 160, 1200, 1, 'SubUrban'),
(154, 'UFCS', 161, 1500, 1, 'Binco'),
(155, 'LSOS', 162, 1050, 1, 'SubUrban'),
(156, 'FRTN', 163, 3699, 1, 'DidierSachs'),
(157, 'GRUS', 164, 3600, 1, 'DidierSachs'),
(158, 'KMXU', 165, 3300, 1, 'DidierSachs'),
(159, 'XCMS', 166, 3000, 1, 'DidierSachs'),
(160, 'VSIG', 168, 1100, 1, 'SubUrban'),
(161, 'FKIS', 170, 1900, 1, 'ZIP'),
(162, 'AYUQ', 171, 2600, 1, 'DidierSachs'),
(163, 'KENU', 176, 1799, 1, 'Binco'),
(164, 'KFCP', 177, 1690, 1, 'Binco'),
(165, 'LAPO', 179, 2000, 1, 'Binco'),
(166, 'NFTY', 180, 1590, 1, 'Binco'),
(167, 'SPOF', 181, 1500, 1, 'Binco'),
(168, 'XAVY', 182, 1200, 1, 'SubUrban'),
(169, 'KOIK', 183, 1699, 1, 'Binco'),
(170, 'LFPO', 184, 1799, 1, 'ZIP'),
(171, 'FRIK', 185, 2899, 1, 'DidierSachs'),
(172, 'YJLA', 186, 3000, 1, 'DidierSachs'),
(173, 'EKRI', 187, 3200, 1, 'DidierSachs'),
(174, 'KENA', 188, 1600, 1, 'Binco'),
(175, 'DEVT', 189, 2600, 1, 'DidierSachs'),
(176, 'BOMT', 200, 1500, 1, 'SubUrban'),
(178, 'SORL', 202, 2010, 1, 'ZIP'),
(179, 'RAU', 203, 2450, 1, 'ProLaps'),
(180, 'CAME', 204, 2500, 1, 'ProLaps'),
(181, 'GAWQ', 206, 2300, 1, 'ZIP'),
(182, 'SWQX', 209, 1300, 1, 'SubUrban'),
(183, 'DERS', 210, 3000, 1, 'ZIP'),
(184, 'BERO', 212, 1050, 1, 'SubUrban'),
(185, 'VSPT', 213, 1000, 1, 'SubUrban'),
(186, 'FPSI', 220, 1710, 1, 'Victim'),
(187, 'RTXS', 221, 1699, 1, 'Binco'),
(188, 'FGSW', 222, 1800, 1, 'ZIP'),
(189, 'GGSW', 223, 3300, 1, 'DidierSachs'),
(190, 'BGSG', 227, 2699, 1, 'DidierSachs'),
(191, 'FSKK', 229, 1899, 1, 'ZIP'),
(192, 'MSUA', 230, 1090, 1, 'SubUrban'),
(193, 'TPSA', 234, 1899, 1, 'Binco'),
(194, 'BHYF', 235, 1700, 1, 'Binco'),
(195, 'HGFE', 236, 1600, 1, 'Binco'),
(196, 'FPLA', 239, 1000, 1, 'SubUrban'),
(197, 'SDMJ', 240, 2600, 1, 'DidierSachs'),
(198, 'KJQA', 241, 1899, 1, 'Binco'),
(199, 'MSIF', 242, 1799, 1, 'ZIP'),
(200, 'QQSJ', 247, 1599, 1, 'Binco'),
(201, 'ELAC', 248, 1600, 1, 'Binco'),
(202, 'MAIS', 249, 2000, 1, 'Victim'),
(203, 'CXSS', 250, 2000, 1, 'ZIP'),
(204, 'BNUT', 252, 2100, 1, 'Victim'),
(205, 'SHUE', 253, 2500, 1, 'DidierSachs'),
(206, 'MSOF', 254, 1599, 1, 'Binco'),
(207, 'POFS', 255, 2699, 1, 'DidierSachs'),
(208, 'ERTA', 258, 1999, 1, 'ZIP'),
(209, 'JJTF', 259, 1899, 1, 'ZIP'),
(210, 'NTAD', 260, 1599, 1, 'Binco'),
(211, 'CCHU', 261, 1750, 1, 'ZIP'),
(212, 'INPI', 262, 1520, 1, 'Binco'),
(213, 'SIUF', 264, 1030, 1, 'Victim'),
(214, 'MSJF', 268, 1150, 1, 'SubUrban'),
(215, 'LAPU', 295, 3000, 1, 'DidierSachs'),
(216, 'PAME', 296, 2650, 1, 'DidierSachs'),
(217, 'KSIO', 297, 1500, 1, 'Binco'),
(218, 'FISS', 299, 1959, 1, 'ZIP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condecoraciones`
--

CREATE TABLE IF NOT EXISTS `condecoraciones` (
`ID` int(11) NOT NULL,
  `PoliciaID` int(11) NOT NULL,
  `Medalla` int(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contadores_carreras`
--

CREATE TABLE IF NOT EXISTS `contadores_carreras` (
`ID` int(11) NOT NULL,
  `Corredor` varchar(64) NOT NULL,
  `Posicion` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doors`
--

CREATE TABLE IF NOT EXISTS `doors` (
`ID` int(11) NOT NULL,
  `Type` int(11) NOT NULL DEFAULT '1' COMMENT '1=Franquicias | 2=Gobierno | 3=Normales | 4=Normales Y',
  `Pickup` int(11) NOT NULL DEFAULT '1318',
  `Nombre` varchar(64) NOT NULL DEFAULT '24/7',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Propietario` varchar(32) NOT NULL DEFAULT 'Ninguno',
  `Extra` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doors`
--

INSERT INTO `doors` (`ID`, `Type`, `Pickup`, `Nombre`, `X`, `Y`, `Z`, `Propietario`, `Extra`) VALUES
(1, 4, 1318, 'Mina Castillo del Diablo', -611.365, 2325.39, 79.5652, 'Ninguno', 1),
(2, 1, 1318, 'The Well Stacked Pizza', 2105.49, -1806.41, 13.5544, 'French', 1),
(3, 1, 1318, 'The Well Stacked Pizza', 203.396, -201.943, 1.5779, 'French', 1),
(4, 1, 1318, 'The Well Stacked Pizza', 1367.53, 248.395, 19.5669, 'French', 1),
(5, 1, 1318, 'The Well Stacked Pizza', 2331.81, 75.0223, 26.6208, 'French', 1),
(6, 1, 1318, 'The Well Stacked Pizza', 2638.79, 1849.81, 11.0234, 'French', 1),
(7, 1, 1318, 'The Well Stacked Pizza', 2309.44, 2533.61, 10.8203, 'French', 1),
(8, 1, 1318, 'The Well Stacked Pizza', 2330.52, 2533.61, 10.8203, 'French', 1),
(9, 1, 1318, 'The Well Stacked Pizza', 2351.77, 2533.63, 10.8203, 'French', 1),
(10, 1, 1318, 'The Well Stacked Pizza', 2083.31, 2224.7, 11.0234, 'French', 1),
(11, 1, 1318, 'The Well Stacked Pizza', 2756.77, 2477.35, 11.0625, 'French', 1),
(12, 1, 1318, 'The Well Stacked Pizza', -1808.73, 945.9, 24.8906, 'French', 1),
(13, 1, 1318, 'The Well Stacked Pizza', -1720.95, 1359.67, 7.1852, 'French', 1),
(14, 2, 1318, 'Unity Station', 1743.06, -1864.46, 13.5738, 'Gobierno', 1),
(15, 2, 1318, 'Country General Hospital', 2025.24, -1401.67, 17.2096, 'Gobierno', 1),
(16, 2, 1318, 'Departamento de policía', 1555.5, -1675.57, 16.1951, 'Gobierno', 1),
(17, 2, 1318, 'Banco plaza', 1498.41, -1580.52, 13.5495, 'Gobierno', 1),
(18, 2, 1318, 'Banco Central de Las Venturas', 2449.47, 2290.21, 10.8203, 'Gobierno', 1),
(19, 2, 1318, 'Las Venturas Hospital', 1607.42, 1815.24, 10.8203, 'Gobierno', 1),
(20, 2, 1318, 'Departamento de Policía', 2290.11, 2431.7, 10.8203, 'Gobierno', 1),
(21, 2, 1318, 'San Fierro Medical Center', -2665, 640.164, 14.5531, 'Gobierno', 1),
(22, 2, 1318, 'Banco Central San Fierro', -1581.12, 867.929, 7.6953, 'Gobierno', 1),
(23, 2, 1318, 'Departamento de Policía', -1605.49, 710.272, 13.8669, 'Gobierno', 1),
(24, 2, 1318, 'Banco central de Los Santos', 1457.13, -1009.92, 26.8437, 'Gobierno', 1),
(25, 2, 1318, 'All Saints General Hospital', 1172.08, -1323.4, 15.4031, 'Gobierno', 1),
(26, 3, 1318, '24/7', 1104.87, -1370.28, 14.0844, 'Gobierno', 1),
(27, 3, 1318, 'Bar', 681.64, -473.348, 16.6363, 'Gobierno', 1),
(28, 3, 1318, 'Tienda de Autoservicio', 1383.25, 465.559, 20.1919, 'Gobierno', 1),
(29, 3, 1318, 'Sex Shop', 953.908, -1336.83, 13.5389, 'Gobierno', 1),
(30, 3, 1318, '24/7', 1315.43, -897.682, 39.5781, 'Gobierno', 1),
(31, 3, 1318, 'Binco', 2244.32, -1665.55, 15.4766, 'Gobierno', 1),
(32, 3, 1318, '24/7', 1352.32, -1759.25, 13.5078, 'Gobierno', 1),
(33, 3, 1318, 'ZIP', 1456.41, -1137.66, 23.9479, 'Gobierno', 1),
(34, 3, 1318, 'Tienda de Autoservicio', -78.3731, -1169.9, 2.1354, 'Gobierno', 1),
(35, 3, 1318, 'Sex Shop', 1087.68, -922.482, 43.3906, 'Gobierno', 1),
(36, 3, 1318, '24/7', 2546.46, 1972.67, 10.8203, 'Gobierno', 1),
(37, 3, 1318, 'Academia de policía', 2362.83, 2306.3, 8.1406, 'Gobierno', 1),
(38, 3, 1318, 'GYM Ganton', 2229.68, -1721.42, 13.5627, 'Gobierno', 1),
(39, 3, 1318, 'Pro Laps', 499.515, -1360.63, 16.369, 'Gobierno', 1),
(40, 3, 1318, '24/7', 2247.66, 2396.17, 10.8203, 'Gobierno', 1),
(41, 3, 1318, 'Tienda de autoservicio', 2187.71, 2469.61, 11.2419, 'Gobierno', 1),
(42, 3, 1318, '24/7', 1565.65, -1171.05, 24.1925, 'Gobierno', 1),
(43, 3, 1318, 'Tienda de autoservicio', -1676.15, 432.219, 7.1797, 'Gobierno', 1),
(44, 3, 1318, '24/7', -2442.62, 755.418, 35.1716, 'Gobierno', 1),
(45, 3, 1318, '24/7', 2884.56, 2454.05, 11.0689, 'Gobierno', 1),
(46, 3, 1318, 'Tienda de autoservicio', -1320.49, 2698.65, 50.2662, 'Gobierno', 1),
(47, 3, 1318, 'Bar', -1820.85, -125.765, 5.7484, 'Gobierno', 1),
(48, 3, 1318, 'Tienda de autoservicio', 1599.01, 2221.76, 11.0625, 'Gobierno', 1),
(49, 3, 1318, '24/7', 2194.94, 1990.97, 12.2966, 'Gobierno', 1),
(50, 3, 1318, 'Sex Shop', 2085.29, 2073.93, 11.0544, 'Gobierno', 1),
(51, 3, 1318, 'Ferretería', 2107.74, 2165.47, 10.8203, 'Gobierno', 1),
(52, 3, 1318, 'Sex Shop', 1940, -2115.93, 13.6953, 'Gobierno', 1),
(53, 3, 1318, 'Escuela de aviación', 1451.63, -2286.12, 13.5469, 'Gobierno', 1),
(54, 3, 1318, 'Estadio Las Venturas', 1093.99, 1597, 12.5466, 'Gobierno', 1),
(55, 3, 1318, 'Sex Shop', 1137.99, -1365.38, 13.9841, 'Gobierno', 1),
(56, 3, 1318, 'RS Haul', 1377.06, 1152.76, 10.8203, 'Gobierno', 1),
(57, 3, 1318, 'Tienda de autoservicio', 2117.51, 896.776, 11.1794, 'Gobierno', 1),
(58, 3, 1318, 'Bar', 824.56, 860.622, 12.2334, 'Gobierno', 1),
(59, 3, 1318, 'Penitenciaría Fort Carson', 224.262, 1443.81, 10.8051, 'Gobierno', 1),
(60, 3, 1318, 'Tienda de autoservicio', 639.047, 1683.34, 7.1875, 'Gobierno', 1),
(61, 3, 1318, 'Bone Country Minera S.A.', -384.811, 2206.07, 42.4234, 'Gobierno', 1),
(62, 3, 1318, 'Vestuario de Mineros', -550.163, 2347.28, 76.3871, 'Gobierno', 1),
(63, 3, 1318, 'Binco', 2244.32, -1665.55, 15.4766, 'Gobierno', 1),
(64, 3, 1318, 'Ferretería', -1480.93, 2591.66, 55.8358, 'Gobierno', 1),
(65, 3, 1318, 'Ferretería', 2861.26, 2430.74, 11.0689, 'Gobierno', 1),
(66, 3, 1318, 'Sub Urban', 2112.91, -1211.46, 23.9626, 'Gobierno', 1),
(67, 3, 1318, 'Sex Shop', 2421.45, -1219.24, 25.5618, 'Gobierno', 1),
(68, 3, 1318, 'Bar', -89.61, 1378.23, 10.4694, 'Gobierno', 1),
(69, 3, 1318, 'Bar', 2348.5, -1372.68, 24.3983, 'Gobierno', 1),
(70, 3, 1318, 'Bar', 2310.08, -1643.53, 14.8268, 'Gobierno', 1),
(71, 3, 1318, 'Bar', 2507.39, 1242.25, 10.8268, 'Gobierno', 1),
(72, 3, 1318, 'Tienda de autoservicio', 1928.58, -1776.28, 13.5466, 'Gobierno', 1),
(73, 3, 1318, 'Tienda de autoservicio', -2420.15, 969.843, 45.2966, 'Gobierno', 1),
(74, 3, 1318, 'Tienda de autoservicio', 2344.04, 583.172, 11.2075, 'Gobierno', 1),
(75, 3, 1318, '24/7', 1833.55, -1842.58, 13.5781, 'Gobierno', 1),
(76, 3, 1318, '24/7', 2424, -1742.71, 13.543, 'Gobierno', 1),
(77, 3, 1318, 'Tienda de autoservicio', 1000.59, -919.886, 42.3281, 'Gobierno', 1),
(78, 3, 1318, 'Victim', 461.694, -1500.75, 31.0459, 'Gobierno', 1),
(79, 3, 1318, 'Didier Sachs', 454.192, -1477.95, 30.8128, 'Gobierno', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estacionamientos`
--

CREATE TABLE IF NOT EXISTS `estacionamientos` (
`ID` int(11) NOT NULL,
  `EnUso` int(11) NOT NULL DEFAULT '0',
  `Propietario` int(11) NOT NULL DEFAULT '-1',
  `EntradaX` float NOT NULL,
  `EntradaY` float NOT NULL,
  `EntradaZ` float NOT NULL,
  `EntradaA` float NOT NULL,
  `SalidaX` float NOT NULL,
  `SalidaY` float NOT NULL,
  `SalidaZ` float NOT NULL,
  `SalidaA` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VirtualWorld` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL DEFAULT '5',
  `Precio` int(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estacionamientos`
--

INSERT INTO `estacionamientos` (`ID`, `EnUso`, `Propietario`, `EntradaX`, `EntradaY`, `EntradaZ`, `EntradaA`, `SalidaX`, `SalidaY`, `SalidaZ`, `SalidaA`, `Interior`, `VirtualWorld`, `Nivel`, `Precio`) VALUES
(1, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1655.22, -1861.46, 13.5499, 179, 1, 1, 9, 2531250),
(2, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1443.15, -1468.14, 13.4021, 212, 1, 2, 11, 5695311),
(3, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1643.56, -1521.65, 13.5588, 231, 1, 3, 7, 1125000),
(4, 1, 0, 2058.54, 2437.26, 10.8428, 180, -1708.85, -121.294, 3.5489, 97, 1, 4, 10, 3796875),
(5, 1, 0, 1707.62, -1877.1, -48.7636, 90, 1393.16, -1169.86, 23.8203, 338, 1, 5, 7, 1125000),
(6, 1, 0, -1283.28, 461.168, 8.2025, 268.853, -425.883, 2225.75, 42.4297, 7, 30, 6, 5, 500000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas_server`
--

CREATE TABLE IF NOT EXISTS `estadisticas_server` (
`ID` int(11) NOT NULL,
  `Conectados_Simultaneamente` int(11) NOT NULL DEFAULT '0',
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadisticas_server`
--

INSERT INTO `estadisticas_server` (`ID`, `Conectados_Simultaneamente`, `Fecha`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricas`
--

CREATE TABLE IF NOT EXISTS `fabricas` (
`ID` int(11) NOT NULL,
  `BandaID` int(11) NOT NULL DEFAULT '0',
  `Localizacion` varchar(64) NOT NULL DEFAULT 'Ninguna',
  `Tanque1Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque2Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque3Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque4Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque5Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque6Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque7Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque8Contenido` int(11) NOT NULL DEFAULT '0',
  `Tanque9Contenido` int(11) NOT NULL DEFAULT '0',
  `Almacen1` int(11) NOT NULL DEFAULT '0',
  `Almacen2` int(11) NOT NULL DEFAULT '0',
  `Almacen3` int(11) NOT NULL DEFAULT '0',
  `Almacen4` int(11) NOT NULL DEFAULT '0',
  `Almacen5` int(11) NOT NULL DEFAULT '0',
  `Almacen6` int(11) NOT NULL DEFAULT '0',
  `Almacen7` int(11) NOT NULL DEFAULT '0',
  `Almacen8` int(11) NOT NULL DEFAULT '0',
  `Almacen9` int(11) NOT NULL DEFAULT '0',
  `Almacen10` int(11) NOT NULL DEFAULT '0',
  `Sniper` int(11) NOT NULL DEFAULT '0',
  `Recortada` int(11) NOT NULL DEFAULT '0',
  `Uzi` int(11) NOT NULL DEFAULT '0',
  `Tec9` int(11) NOT NULL DEFAULT '0',
  `Chalecos` int(11) NOT NULL DEFAULT '0',
  `DineroAlmacenado` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `EntradaX` float NOT NULL,
  `EntradaY` float NOT NULL,
  `EntradaZ` float NOT NULL,
  `SalidaX` float NOT NULL,
  `SalidaY` float NOT NULL,
  `SalidaZ` float NOT NULL,
  `EntradaA` float NOT NULL,
  `GarajeE_X` float NOT NULL,
  `GarajeE_Y` float NOT NULL,
  `GarajeE_Z` float NOT NULL,
  `GarajeE_A` float NOT NULL,
  `GarajeS_X` float NOT NULL,
  `GarajeS_Y` float NOT NULL,
  `GarajeS_Z` float NOT NULL,
  `Soborno` int(11) NOT NULL DEFAULT '0',
  `Coins` int(11) NOT NULL DEFAULT '0',
  `Precio` int(11) NOT NULL DEFAULT '3000000',
  `EnUso` int(11) NOT NULL DEFAULT '0',
  `EnVenta` int(11) NOT NULL,
  `NombreBanda` varchar(128) NOT NULL DEFAULT 'ND',
  `MContra` int(11) NOT NULL DEFAULT '0',
  `PorcentajeLleno1` int(11) NOT NULL DEFAULT '0',
  `PorcentajeLleno2` int(11) NOT NULL DEFAULT '0',
  `PorcentajeLleno3` int(11) NOT NULL DEFAULT '0',
  `Crisol1` int(11) NOT NULL DEFAULT '0',
  `Crisol2` int(11) NOT NULL DEFAULT '0',
  `Crisol3` int(11) NOT NULL DEFAULT '0',
  `ProgresoC1` int(11) NOT NULL DEFAULT '0',
  `ProgresoC2` int(11) NOT NULL DEFAULT '0',
  `ProgresoC3` int(11) NOT NULL DEFAULT '0',
  `ProgresoC4` int(11) NOT NULL DEFAULT '0',
  `ProgresoC5` int(11) NOT NULL DEFAULT '0',
  `EstadoC1` int(11) NOT NULL,
  `EstadoC2` int(11) NOT NULL DEFAULT '0',
  `EstadoC3` int(11) NOT NULL DEFAULT '0',
  `EstadoC4` int(11) NOT NULL DEFAULT '0',
  `EstadoC5` int(11) NOT NULL DEFAULT '0',
  `TieneMoledor1` int(11) NOT NULL,
  `TieneMoledor2` int(11) NOT NULL,
  `TieneMoledor3` int(11) NOT NULL,
  `TieneMoledor4` int(11) NOT NULL,
  `TieneMoledor5` int(11) NOT NULL,
  `Termino1` int(11) NOT NULL DEFAULT '0',
  `Termino2` int(11) NOT NULL DEFAULT '0',
  `Termino3` int(11) NOT NULL DEFAULT '0',
  `Termino4` int(11) NOT NULL DEFAULT '0',
  `Termino5` int(11) NOT NULL DEFAULT '0',
  `EstadoMedico` int(11) NOT NULL DEFAULT '0',
  `EstadoG1` int(11) NOT NULL DEFAULT '0',
  `EstadoG2` int(11) NOT NULL DEFAULT '0',
  `EstadoG3` int(11) NOT NULL DEFAULT '0',
  `EstadoG4` int(11) NOT NULL DEFAULT '0',
  `EstadoG5` int(11) NOT NULL DEFAULT '0',
  `EstadoCoc1` int(11) NOT NULL DEFAULT '0',
  `EstadoCoc2` int(11) NOT NULL DEFAULT '0',
  `EstadoCoc3` int(11) NOT NULL DEFAULT '0',
  `EstadoCoc4` int(11) NOT NULL DEFAULT '0',
  `EstadoCoc5` int(11) NOT NULL DEFAULT '0',
  `Guardia1` int(11) NOT NULL DEFAULT '0',
  `Guardia2` int(11) NOT NULL DEFAULT '0',
  `Guardia3` int(11) NOT NULL DEFAULT '0',
  `Guardia4` int(11) NOT NULL DEFAULT '0',
  `Guardia5` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fabricas`
--

INSERT INTO `fabricas` (`ID`, `BandaID`, `Localizacion`, `Tanque1Contenido`, `Tanque2Contenido`, `Tanque3Contenido`, `Tanque4Contenido`, `Tanque5Contenido`, `Tanque6Contenido`, `Tanque7Contenido`, `Tanque8Contenido`, `Tanque9Contenido`, `Almacen1`, `Almacen2`, `Almacen3`, `Almacen4`, `Almacen5`, `Almacen6`, `Almacen7`, `Almacen8`, `Almacen9`, `Almacen10`, `Sniper`, `Recortada`, `Uzi`, `Tec9`, `Chalecos`, `DineroAlmacenado`, `VW`, `Interior`, `EntradaX`, `EntradaY`, `EntradaZ`, `SalidaX`, `SalidaY`, `SalidaZ`, `EntradaA`, `GarajeE_X`, `GarajeE_Y`, `GarajeE_Z`, `GarajeE_A`, `GarajeS_X`, `GarajeS_Y`, `GarajeS_Z`, `Soborno`, `Coins`, `Precio`, `EnUso`, `EnVenta`, `NombreBanda`, `MContra`, `PorcentajeLleno1`, `PorcentajeLleno2`, `PorcentajeLleno3`, `Crisol1`, `Crisol2`, `Crisol3`, `ProgresoC1`, `ProgresoC2`, `ProgresoC3`, `ProgresoC4`, `ProgresoC5`, `EstadoC1`, `EstadoC2`, `EstadoC3`, `EstadoC4`, `EstadoC5`, `TieneMoledor1`, `TieneMoledor2`, `TieneMoledor3`, `TieneMoledor4`, `TieneMoledor5`, `Termino1`, `Termino2`, `Termino3`, `Termino4`, `Termino5`, `EstadoMedico`, `EstadoG1`, `EstadoG2`, `EstadoG3`, `EstadoG4`, `EstadoG5`, `EstadoCoc1`, `EstadoCoc2`, `EstadoCoc3`, `EstadoCoc4`, `EstadoCoc5`, `Guardia1`, `Guardia2`, `Guardia3`, `Guardia4`, `Guardia5`) VALUES
(1, 0, 'Linden Side', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000000, 2, 2, 2847.57, 983.564, 10.75, -1976.39, 206.366, 1035.82, 269.858, 2847.63, 972.854, 10.75, 267.777, 0, 0, 0, 1585800580, 0, 16000000, 1, 0, 'ND', 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 'Red County', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000000, 3, 3, 279.836, -221.488, 1.57812, -1976.39, 206.366, 1035.82, 177.711, 269.1, -221.482, 1.57812, 180.844, 0, 0, 0, 1585524855, 0, 16000000, 1, 0, 'ND', 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 'LVA Freight Depot', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000000, 4, 4, 1707.43, 1025.64, 10.8203, -1976.39, 206.366, 1035.82, 268.265, 1707.68, 1015.13, 10.8203, 271.768, 0, 0, 0, 1585520856, 0, 16000000, 1, 0, 'ND', 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facciones`
--

CREATE TABLE IF NOT EXISTS `facciones` (
`id` int(11) NOT NULL,
  `fecha` varchar(32) NOT NULL DEFAULT '01/01/2016',
  `Nombre` varchar(32) NOT NULL,
  `Integrantes` int(10) NOT NULL DEFAULT '0',
  `Lider` varchar(32) NOT NULL,
  `Rango1` varchar(32) NOT NULL DEFAULT 'Iniciado',
  `Rango2` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango3` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango4` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango5` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango6` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango7` varchar(32) NOT NULL DEFAULT 'Nuevo rango',
  `Rango8` varchar(32) NOT NULL DEFAULT 'Lider',
  `Fabrica` int(11) NOT NULL DEFAULT '0',
  `tipobanda` varchar(32) NOT NULL,
  `imgbanda` varchar(128) NOT NULL DEFAULT './imagenes/mafiabg.jpg',
  `territorio` varchar(32) NOT NULL DEFAULT 'Ninguno',
  `MaxIntegrantes` int(3) NOT NULL DEFAULT '20',
  `Rango7Inv` int(1) NOT NULL DEFAULT '1',
  `Rango7Exp` int(1) NOT NULL DEFAULT '1',
  `Rango7Edi` int(1) NOT NULL DEFAULT '1',
  `Rango6Inv` int(1) NOT NULL DEFAULT '0',
  `Rango6Exp` int(1) NOT NULL DEFAULT '0',
  `Rango6Edi` int(1) NOT NULL DEFAULT '0',
  `Rango5Inv` int(1) NOT NULL DEFAULT '0',
  `Rango5Exp` int(1) NOT NULL DEFAULT '0',
  `Rango5Edi` int(1) NOT NULL DEFAULT '0',
  `Rango4Inv` int(1) NOT NULL DEFAULT '0',
  `Rango4Exp` int(1) NOT NULL DEFAULT '0',
  `Rango4Edi` int(1) NOT NULL DEFAULT '0',
  `Rango3Inv` int(1) NOT NULL DEFAULT '0',
  `Rango3Exp` int(1) NOT NULL DEFAULT '0',
  `Rango3Edi` int(1) NOT NULL DEFAULT '0',
  `Rango2Inv` int(1) NOT NULL DEFAULT '0',
  `Rango2Exp` int(1) NOT NULL DEFAULT '0',
  `Rango2Edi` int(1) NOT NULL DEFAULT '0',
  `Rango1Inv` int(1) NOT NULL DEFAULT '0',
  `Rango1Exp` int(1) NOT NULL DEFAULT '0',
  `Rango1Edi` int(1) NOT NULL DEFAULT '0',
  `RangoCreado1` int(11) NOT NULL DEFAULT '1',
  `RangoCreado2` int(11) NOT NULL DEFAULT '0',
  `RangoCreado3` int(11) NOT NULL DEFAULT '0',
  `RangoCreado4` int(11) NOT NULL DEFAULT '0',
  `RangoCreado5` int(11) NOT NULL DEFAULT '0',
  `RangoCreado6` int(11) NOT NULL DEFAULT '0',
  `RangoCreado7` int(11) NOT NULL DEFAULT '0',
  `RangoCreado8` int(11) NOT NULL DEFAULT '1',
  `FabricaM` int(11) NOT NULL,
  `EnUso` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facciones`
--

INSERT INTO `facciones` (`id`, `fecha`, `Nombre`, `Integrantes`, `Lider`, `Rango1`, `Rango2`, `Rango3`, `Rango4`, `Rango5`, `Rango6`, `Rango7`, `Rango8`, `Fabrica`, `tipobanda`, `imgbanda`, `territorio`, `MaxIntegrantes`, `Rango7Inv`, `Rango7Exp`, `Rango7Edi`, `Rango6Inv`, `Rango6Exp`, `Rango6Edi`, `Rango5Inv`, `Rango5Exp`, `Rango5Edi`, `Rango4Inv`, `Rango4Exp`, `Rango4Edi`, `Rango3Inv`, `Rango3Exp`, `Rango3Edi`, `Rango2Inv`, `Rango2Exp`, `Rango2Edi`, `Rango1Inv`, `Rango1Exp`, `Rango1Edi`, `RangoCreado1`, `RangoCreado2`, `RangoCreado3`, `RangoCreado4`, `RangoCreado5`, `RangoCreado6`, `RangoCreado7`, `RangoCreado8`, `FabricaM`, `EnUso`) VALUES
(1, '06/07/2012', 'S.A.P.D', 0, 'Ninguno', 'Cadete', 'Oficial', 'Cabo', 'Sagento', 'Teniente', 'Capitan', 'Inspector', 'Comisario', 1, 'organizaci&oacute;n', 'https://i.imgur.com/lPgoBvl.jpg', 'San Andreas', 50, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(2, '29/9/2018', 'A.P.S.A', 0, 'Ninguno', 'Auxiliar', 'Reportero', 'Periodista', 'Redactor', 'Jefe de seccion', 'Editor', 'Coordinador', 'Director', 0, 'organizaci&oacute;n', 'https://i.imgur.com/Ianx3Kk.gif', 'Ninguno', 50, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(3, '15/12/2018', 'Green Peace', 0, 'Ninguno', 'Aprendiz', 'Tecnico', 'Recursos Humanos', 'Ingeniero Ambiental', 'Coordinador', 'SubDirector', 'Director', 'Encargado', 0, 'organizaciÃ³n', '/imagenes/organizacionbg.jpg', 'Ninguno', 20, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitaciones`
--

CREATE TABLE IF NOT EXISTS `invitaciones` (
`ID` int(10) NOT NULL,
  `Activo` varchar(3) NOT NULL DEFAULT '1',
  `Invitador` varchar(26) NOT NULL,
  `Invitado` varchar(26) NOT NULL,
  `BandaID` int(26) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_ingresos`
--

CREATE TABLE IF NOT EXISTS `log_ingresos` (
`ID` int(10) NOT NULL,
  `Nombre` varchar(32) NOT NULL,
  `Pais` varchar(32) NOT NULL,
  `IP` varchar(32) NOT NULL,
  `Fecha` varchar(32) NOT NULL,
  `Host` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `log_ingresos`
--

INSERT INTO `log_ingresos` (`ID`, `Nombre`, `Pais`, `IP`, `Fecha`, `Host`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_nombres`
--

CREATE TABLE IF NOT EXISTS `log_nombres` (
`ID` int(11) NOT NULL,
  `NombreAntiguo` varchar(50) NOT NULL DEFAULT 'Ninguno',
  `NombreNuevo` varchar(50) NOT NULL DEFAULT 'Ninguno',
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_transacciones`
--

CREATE TABLE IF NOT EXISTS `log_transacciones` (
`ID` int(10) NOT NULL,
  `Fecha` varchar(32) NOT NULL,
  `Enviador` varchar(32) NOT NULL,
  `Receptor` varchar(32) NOT NULL,
  `Monto` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_ventas`
--

CREATE TABLE IF NOT EXISTS `log_ventas` (
`id` int(10) NOT NULL,
  `Vendedor` varchar(24) NOT NULL,
  `arma` int(10) NOT NULL DEFAULT '0',
  `precio` int(10) NOT NULL DEFAULT '0',
  `comprador` varchar(24) NOT NULL,
  `item` varchar(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marihuana`
--

CREATE TABLE IF NOT EXISTS `marihuana` (
`ID` int(11) NOT NULL,
  `Owner` varchar(128) NOT NULL DEFAULT 'Ninguno',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Estado` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `Creado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
`ID` int(5) NOT NULL,
  `Nombre` varchar(32) CHARACTER SET utf8 NOT NULL,
  `Mensaje_Personal` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Nada para decir.',
  `Dia_Nacimiento` int(2) NOT NULL DEFAULT '-1',
  `Mes_Nacimiento` int(32) NOT NULL DEFAULT '-1',
  `Ano_Nacimiento` int(4) NOT NULL DEFAULT '-1',
  `Pais_Actual` varchar(32) NOT NULL DEFAULT 'Desconocido',
  `Mostrar_Edad` int(1) NOT NULL DEFAULT '0',
  `Valor_Total` int(5) NOT NULL DEFAULT '0',
  `Votos_Totales` int(5) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '1',
  `Avatar` int(5) NOT NULL DEFAULT '32'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`ID`, `Nombre`, `Mensaje_Personal`, `Dia_Nacimiento`, `Mes_Nacimiento`, `Ano_Nacimiento`, `Pais_Actual`, `Mostrar_Edad`, `Valor_Total`, `Votos_Totales`, `Color`, `Avatar`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE IF NOT EXISTS `plantas` (
`pID` int(10) NOT NULL,
  `paX` varchar(32) NOT NULL,
  `paY` varchar(32) NOT NULL,
  `paZ` varchar(32) NOT NULL,
  `pSegundos` int(11) NOT NULL,
  `pMinutos` int(11) NOT NULL,
  `pHoras` int(11) NOT NULL,
  `pEstado` int(11) NOT NULL,
  `Plantador` varchar(32) NOT NULL,
  `Creado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_rating`
--

CREATE TABLE IF NOT EXISTS `post_rating` (
`rating_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prendas`
--

CREATE TABLE IF NOT EXISTS `prendas` (
`ID` int(10) NOT NULL,
  `Propietario` varchar(32) NOT NULL,
  `Objeto` int(10) NOT NULL,
  `Slot` int(5) NOT NULL,
  `ObjUsed` int(1) NOT NULL,
  `fOffsetX` float NOT NULL DEFAULT '0.085',
  `fOffsetY` float NOT NULL DEFAULT '0.017999',
  `fOffsetZ` float NOT NULL DEFAULT '0.000999',
  `fRotX` float NOT NULL DEFAULT '87.2',
  `fRotY` float NOT NULL DEFAULT '88.1',
  `fRotZ` float NOT NULL DEFAULT '-7.5',
  `fScaleX` float NOT NULL DEFAULT '1',
  `fScaleY` float NOT NULL DEFAULT '1',
  `fScaleZ` float NOT NULL DEFAULT '1',
  `ATH` int(1) NOT NULL,
  `Web` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prendas`
--

INSERT INTO `prendas` (`ID`, `Propietario`, `Objeto`, `Slot`, `ObjUsed`, `fOffsetX`, `fOffsetY`, `fOffsetZ`, `fRotX`, `fRotY`, `fRotZ`, `fScaleX`, `fScaleY`, `fScaleZ`, `ATH`, `Web`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE IF NOT EXISTS `propiedades` (
  `ID` int(10) unsigned NOT NULL,
  `IDPropietario` int(11) NOT NULL,
  `Propietario` varchar(40) NOT NULL DEFAULT 'Ninguno',
  `EnVenta` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `EnUso` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `PosXS` float NOT NULL,
  `PosYS` float NOT NULL,
  `PosZS` float NOT NULL,
  `PosA` float NOT NULL,
  `PosAS` float NOT NULL,
  `Nivel` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `EnVentaPor` int(11) NOT NULL,
  `Interior` int(11) NOT NULL,
  `InteriorID` int(11) NOT NULL,
  `Abierta` int(11) NOT NULL,
  `Sprunk` int(11) NOT NULL,
  `Cerveza` int(11) NOT NULL,
  `Aquarius` int(11) NOT NULL,
  `Pizzas` int(11) NOT NULL,
  `Vino` int(11) NOT NULL,
  `AK47` int(11) NOT NULL,
  `M4` int(11) NOT NULL,
  `EscopetaNormal` int(11) NOT NULL,
  `EscopetaDeCombate` int(11) NOT NULL,
  `MP5` int(11) NOT NULL,
  `9mm` int(11) NOT NULL,
  `9mmSilenciada` int(11) NOT NULL,
  `DesertEagle` int(11) NOT NULL,
  `Rifle` int(11) NOT NULL,
  `Granada` int(11) NOT NULL,
  `Manopla` int(11) NOT NULL,
  `Cuchillo` int(11) NOT NULL,
  `Katana` int(11) NOT NULL,
  `Medicamentos` int(11) NOT NULL,
  `Crack` int(11) NOT NULL,
  `Marihuana` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Camara` int(11) NOT NULL,
  `Flores` int(11) NOT NULL,
  `Pala` int(11) NOT NULL,
  `BateDeBeisbol` int(11) NOT NULL,
  `PaloDeGolf` int(11) NOT NULL,
  `GX` float NOT NULL,
  `GY` float NOT NULL,
  `GZ` float NOT NULL,
  `GA` float NOT NULL,
  `Localizacion` varchar(80) NOT NULL,
  `Ganancias` int(10) NOT NULL DEFAULT '0',
  `PaloDeBillar` int(11) NOT NULL,
  `ConsoladorRosa` int(11) NOT NULL,
  `VibradorBlanco` int(11) NOT NULL,
  `GranVibradorBlanco` int(11) NOT NULL,
  `VibradorPlateado` int(11) NOT NULL,
  `Baston` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_vehicles`
--

CREATE TABLE IF NOT EXISTS `p_vehicles` (
`id` int(11) NOT NULL,
  `Propietario` int(11) NOT NULL,
  `Slot` int(11) NOT NULL DEFAULT '0',
  `EstacionadoX` float NOT NULL DEFAULT '0',
  `EstacionadoY` float NOT NULL DEFAULT '0',
  `EstacionadoZ` float NOT NULL DEFAULT '0',
  `EstacionadoA` float NOT NULL DEFAULT '0',
  `VE1` int(11) NOT NULL DEFAULT '0',
  `VE2` int(11) NOT NULL DEFAULT '0',
  `VE3` int(11) NOT NULL DEFAULT '0',
  `VE4` int(11) NOT NULL DEFAULT '0',
  `vMoneda` int(11) NOT NULL DEFAULT '45',
  `Modelo` int(11) NOT NULL DEFAULT '0',
  `Combustible` int(11) NOT NULL DEFAULT '50',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Color1` int(11) NOT NULL DEFAULT '0',
  `Color2` int(11) NOT NULL DEFAULT '0',
  `Vida` int(11) NOT NULL DEFAULT '1000',
  `vBaul` int(11) NOT NULL DEFAULT '0',
  `vBaul2` int(11) NOT NULL DEFAULT '0',
  `vBaul3` int(11) NOT NULL DEFAULT '0',
  `vBaul4` int(11) NOT NULL DEFAULT '0',
  `vBaul5` int(11) NOT NULL DEFAULT '0',
  `vBaul6` int(11) NOT NULL DEFAULT '0',
  `vBaul7` int(11) NOT NULL DEFAULT '0',
  `vBaul8` int(11) NOT NULL DEFAULT '0',
  `vBaul9` int(11) NOT NULL DEFAULT '0',
  `vBaul10` int(11) NOT NULL DEFAULT '0',
  `PaintJob` int(11) NOT NULL DEFAULT '-1',
  `Componentes0` int(11) NOT NULL DEFAULT '0',
  `Componentes1` int(11) NOT NULL DEFAULT '0',
  `Componentes2` int(11) NOT NULL DEFAULT '0',
  `Componentes3` int(11) NOT NULL DEFAULT '0',
  `Componentes4` int(11) NOT NULL DEFAULT '0',
  `Componentes5` int(11) NOT NULL DEFAULT '0',
  `Componentes6` int(11) NOT NULL DEFAULT '0',
  `Componentes7` int(11) NOT NULL DEFAULT '0',
  `Componentes8` int(11) NOT NULL DEFAULT '0',
  `Componentes9` int(11) NOT NULL DEFAULT '0',
  `Componentes10` int(11) NOT NULL DEFAULT '0',
  `Componentes11` int(11) NOT NULL DEFAULT '0',
  `Componentes12` int(11) NOT NULL DEFAULT '0',
  `Componentes13` int(11) NOT NULL DEFAULT '0',
  `Precio` int(11) NOT NULL,
  `X` float NOT NULL DEFAULT '0',
  `Y` float NOT NULL DEFAULT '0',
  `Z` float NOT NULL DEFAULT '0',
  `A` int(11) NOT NULL,
  `O_VW` int(11) NOT NULL DEFAULT '0',
  `Seguro` int(11) NOT NULL DEFAULT '0',
  `O_Interior` int(11) NOT NULL DEFAULT '0',
  `Patente` varchar(9) NOT NULL DEFAULT 'FZRP 1705',
  `vAlarma` int(11) NOT NULL DEFAULT '0',
  `Traba` int(11) NOT NULL DEFAULT '0',
  `Estado_Alarma` int(11) NOT NULL DEFAULT '0',
  `Estado_Seguro` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `p_vehicles`
--

INSERT INTO `p_vehicles` (`id`, `Propietario`, `Slot`, `EstacionadoX`, `EstacionadoY`, `EstacionadoZ`, `EstacionadoA`, `VE1`, `VE2`, `VE3`, `VE4`, `vMoneda`, `Modelo`, `Combustible`, `Interior`, `VW`, `Color1`, `Color2`, `Vida`, `vBaul`, `vBaul2`, `vBaul3`, `vBaul4`, `vBaul5`, `vBaul6`, `vBaul7`, `vBaul8`, `vBaul9`, `vBaul10`, `PaintJob`, `Componentes0`, `Componentes1`, `Componentes2`, `Componentes3`, `Componentes4`, `Componentes5`, `Componentes6`, `Componentes7`, `Componentes8`, `Componentes9`, `Componentes10`, `Componentes11`, `Componentes12`, `Componentes13`, `Precio`, `X`, `Y`, `Z`, `A`, `O_VW`, `Seguro`, `O_Interior`, `Patente`, `vAlarma`, `Traba`, `Estado_Alarma`, `Estado_Seguro`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE IF NOT EXISTS `registros` (
  `id` int(10) unsigned NOT NULL,
  `Cantidad` int(30) NOT NULL DEFAULT '0',
  `Stats` int(11) NOT NULL DEFAULT '0',
  `Arbol` int(11) NOT NULL DEFAULT '0',
  `Cerveza` int(11) NOT NULL DEFAULT '0',
  `Blindado` int(11) NOT NULL DEFAULT '0',
  `Halloween` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `Cantidad`, `Stats`, `Arbol`, `Cerveza`, `Blindado`, `Halloween`) VALUES
(1, 3628, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_admin`
--

CREATE TABLE IF NOT EXISTS `registros_admin` (
`ID` int(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Responsable` varchar(64) NOT NULL DEFAULT 'Ninguno',
  `Jugador` varchar(64) NOT NULL DEFAULT 'Ninguno',
  `Razon` varchar(128) NOT NULL DEFAULT 'Vacio',
  `Accion` varchar(32) NOT NULL DEFAULT 'Ninguna',
  `Panel` int(11) DEFAULT '0',
  `Nota` varchar(128) NOT NULL DEFAULT 'Ninguna',
  `NotaNivel` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_sapd`
--

CREATE TABLE IF NOT EXISTS `registros_sapd` (
`ID` int(11) NOT NULL COMMENT 'ID Registro',
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de la acción',
  `Policia` varchar(32) NOT NULL DEFAULT 'Ninguno' COMMENT 'Policia quien ejecuta',
  `Usuario` varchar(32) NOT NULL DEFAULT 'Ninguno' COMMENT 'Usuario a quien es ejecutado',
  `Type` int(11) NOT NULL DEFAULT '1' COMMENT '1= Antecedentes | 2 = Edad | 3 = Nacionalidad',
  `Edad_Entrada` int(11) NOT NULL,
  `Edad_Salida` int(11) NOT NULL DEFAULT '0',
  `Nacionalidad_A` varchar(32) NOT NULL DEFAULT 'Americana',
  `Nacionalidad_B` varchar(32) NOT NULL DEFAULT 'San Andreas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte`
--

CREATE TABLE IF NOT EXISTS `soporte` (
  `ID` int(10) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 NOT NULL,
  `nombre_pago` varchar(30) CHARACTER SET utf8 NOT NULL,
  `meteodo` int(1) NOT NULL DEFAULT '0',
  `fecha` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '16/1/2018',
  `monto` varchar(129) CHARACTER SET utf8 NOT NULL,
  `fecha_reclamo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `estado` varchar(129) CHARACTER SET utf8 NOT NULL,
  `respuesta` varchar(129) CHARACTER SET utf8 NOT NULL,
  `correo` varchar(129) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`ID` int(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(129) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `posA` float NOT NULL DEFAULT '0',
  `EntradaX` float NOT NULL DEFAULT '0',
  `EntradaY` float NOT NULL DEFAULT '0',
  `EntradaZ` float NOT NULL DEFAULT '0',
  `DeathX` float NOT NULL DEFAULT '0',
  `DeathY` float NOT NULL DEFAULT '0',
  `TempBan` int(255) NOT NULL DEFAULT '0',
  `Sanciones` int(11) NOT NULL DEFAULT '0',
  `DeathZ` float NOT NULL DEFAULT '0',
  `DeathA` float NOT NULL DEFAULT '0',
  `Admin` int(1) NOT NULL DEFAULT '0',
  `Fecha_Ban` varchar(32) NOT NULL DEFAULT '16/02/2020',
  `Mapper` varchar(32) NOT NULL DEFAULT '0',
  `Sexo` varchar(1) NOT NULL DEFAULT '1',
  `Edad` int(10) NOT NULL DEFAULT '0',
  `Skin` varchar(3) NOT NULL,
  `Vida` float NOT NULL,
  `Chaleco` float NOT NULL,
  `Registro` varchar(15) NOT NULL DEFAULT '19/7/2014',
  `Linked` int(11) NOT NULL DEFAULT '0',
  `Money` int(30) NOT NULL DEFAULT '0',
  `Banco` int(30) NOT NULL DEFAULT '0',
  `Moneda` int(30) NOT NULL DEFAULT '0',
  `Cargos` varchar(1) NOT NULL DEFAULT '0',
  `Duty` varchar(1) NOT NULL DEFAULT '0',
  `SkinTrabajo` varchar(3) NOT NULL DEFAULT '0',
  `Nivel` varchar(2) NOT NULL DEFAULT '1',
  `Experiencia` varchar(3) NOT NULL DEFAULT '0',
  `Agonizando` varchar(1) NOT NULL DEFAULT '0',
  `GPS` varchar(1) NOT NULL DEFAULT '0',
  `Radio` varchar(1) NOT NULL DEFAULT '0',
  `Numero` varchar(10) NOT NULL DEFAULT '0',
  `Guia` int(1) NOT NULL DEFAULT '1',
  `Sonidos` int(1) NOT NULL DEFAULT '1',
  `Muteos` int(1) NOT NULL DEFAULT '1',
  `Barras` int(1) NOT NULL DEFAULT '1',
  `Alerta` int(1) NOT NULL DEFAULT '1',
  `Velocimetro` int(1) NOT NULL DEFAULT '1',
  `valortotal` int(10) NOT NULL,
  `votostotales` int(10) NOT NULL,
  `Interior` int(10) NOT NULL DEFAULT '0',
  `MundoVirtual` int(10) NOT NULL DEFAULT '0',
  `Materiales` int(10) NOT NULL DEFAULT '0',
  `Sed` int(255) NOT NULL DEFAULT '8',
  `Trabajo` int(2) NOT NULL DEFAULT '0',
  `Trabajo2` int(2) NOT NULL DEFAULT '0',
  `Faccion` varchar(5) NOT NULL DEFAULT '0',
  `Rango` varchar(10) DEFAULT NULL,
  `suspendido` int(11) NOT NULL DEFAULT '0',
  `TiempoBanda` int(11) NOT NULL,
  `Crack` int(10) NOT NULL DEFAULT '0',
  `Caramelos` int(11) NOT NULL DEFAULT '0',
  `Medicamentos` int(10) NOT NULL DEFAULT '0',
  `Marihuana` int(10) NOT NULL,
  `Agenda` varchar(2) NOT NULL DEFAULT '0',
  `Registro_U` varchar(32) NOT NULL,
  `username_low` varchar(32) NOT NULL DEFAULT 'ninguno',
  `Licencia` varchar(5) NOT NULL DEFAULT '0',
  `TiempoPD` int(15) NOT NULL DEFAULT '0',
  `TiempoJail` int(30) NOT NULL DEFAULT '0',
  `Repuestos` int(3) NOT NULL DEFAULT '0',
  `hx` float NOT NULL,
  `hy` float NOT NULL,
  `hz` float NOT NULL,
  `Baneado` varchar(2) NOT NULL DEFAULT '0',
  `Banpor` varchar(64) NOT NULL DEFAULT 'Ninguno',
  `Baneante` int(11) NOT NULL,
  `razon` varchar(32) NOT NULL DEFAULT 'Ninguno',
  `IP` varchar(15) NOT NULL,
  `NMute` int(11) NOT NULL DEFAULT '0',
  `changenamefree` int(1) NOT NULL DEFAULT '0',
  `Online` int(1) NOT NULL DEFAULT '0',
  `EnFC` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(50) NOT NULL DEFAULT 'notiene@email.com',
  `EMS` int(11) NOT NULL DEFAULT '0',
  `TiempoCarcelS` int(3) NOT NULL DEFAULT '0',
  `Changed` int(1) NOT NULL DEFAULT '0',
  `Pais_Registro` varchar(32) NOT NULL DEFAULT 'Desconocido',
  `Multas` int(10) NOT NULL DEFAULT '0',
  `Stats` int(1) NOT NULL DEFAULT '0',
  `EnCasa` varchar(10) NOT NULL DEFAULT '0',
  `EnRopero` varchar(10) NOT NULL DEFAULT '0',
  `EnGarage` int(10) NOT NULL DEFAULT '0',
  `VIP` int(2) NOT NULL DEFAULT '0',
  `FinDia` int(2) NOT NULL DEFAULT '0',
  `FinMes` int(2) NOT NULL DEFAULT '0',
  `FinAno` int(4) NOT NULL DEFAULT '0',
  `FinDiaL` int(11) NOT NULL,
  `FinLicencia` int(11) NOT NULL,
  `hprecio` int(10) NOT NULL DEFAULT '0',
  `h2precio` int(10) NOT NULL DEFAULT '0',
  `hmoneda` int(1) NOT NULL DEFAULT '0',
  `h2moneda` int(1) NOT NULL DEFAULT '0',
  `CasaID` int(5) NOT NULL DEFAULT '0',
  `CasaID2` int(5) NOT NULL DEFAULT '0',
  `Baneo_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `WP0` varchar(2) NOT NULL DEFAULT '0',
  `WP1` varchar(2) NOT NULL DEFAULT '0',
  `WP2` varchar(2) NOT NULL DEFAULT '0',
  `WP3` varchar(2) NOT NULL DEFAULT '0',
  `WP4` varchar(2) NOT NULL DEFAULT '0',
  `WP5` varchar(2) NOT NULL DEFAULT '0',
  `WP6` varchar(2) NOT NULL DEFAULT '0',
  `WP7` varchar(2) NOT NULL DEFAULT '0',
  `WP8` varchar(2) NOT NULL DEFAULT '0',
  `WP9` varchar(2) NOT NULL DEFAULT '0',
  `WP10` varchar(2) NOT NULL DEFAULT '0',
  `WP11` varchar(2) NOT NULL DEFAULT '0',
  `WP12` varchar(2) NOT NULL DEFAULT '0',
  `NivelArmero` varchar(3) NOT NULL DEFAULT '1',
  `ExpArmero` varchar(3) NOT NULL DEFAULT '0',
  `NivelPescador` int(3) NOT NULL DEFAULT '1',
  `ExpPescador` int(3) NOT NULL DEFAULT '0',
  `NivelPiloto` int(3) NOT NULL DEFAULT '1',
  `ExpPiloto` int(3) NOT NULL DEFAULT '0',
  `NivelCamionero` varchar(3) NOT NULL DEFAULT '1',
  `ExpCamionero` varchar(3) NOT NULL DEFAULT '0',
  `NivelTransportista` int(3) NOT NULL DEFAULT '1',
  `ExpTransportista` int(3) NOT NULL DEFAULT '0',
  `NivelBasurero` int(3) NOT NULL DEFAULT '1',
  `ExpBasurero` int(3) NOT NULL DEFAULT '0',
  `NivelLadron` int(3) NOT NULL DEFAULT '1',
  `ExpLadron` int(3) NOT NULL DEFAULT '0',
  `NivelMedico` int(3) NOT NULL DEFAULT '1',
  `ExpMedico` int(3) NOT NULL DEFAULT '0',
  `RopaBasu` int(2) NOT NULL DEFAULT '0',
  `RopaMedi` int(2) NOT NULL DEFAULT '0',
  `RopaMeca` int(2) DEFAULT '0',
  `RopaMine` int(2) NOT NULL DEFAULT '0',
  `Martillo` int(2) NOT NULL DEFAULT '0',
  `Destornillador` int(2) NOT NULL DEFAULT '0',
  `Barreta` int(2) NOT NULL DEFAULT '0',
  `Balde` int(2) NOT NULL DEFAULT '0',
  `EstacionamientoID` int(5) NOT NULL DEFAULT '0',
  `Estacionado1` int(5) NOT NULL,
  `Estacionado2` int(5) NOT NULL,
  `Estacionado3` int(5) NOT NULL,
  `Estacionado4` int(5) NOT NULL,
  `EnEstacionamiento` int(5) NOT NULL DEFAULT '0',
  `ent_totem` float NOT NULL DEFAULT '0',
  `Totem_Name` varchar(64) DEFAULT NULL,
  `totems` int(10) NOT NULL DEFAULT '0',
  `NivelMinero` int(3) NOT NULL DEFAULT '1',
  `ExpMinero` int(3) NOT NULL DEFAULT '0',
  `Regalo` int(11) NOT NULL DEFAULT '0',
  `Muteado` int(11) NOT NULL DEFAULT '0',
  `arrestado` int(10) NOT NULL DEFAULT '0',
  `horasjugadas` int(10) NOT NULL DEFAULT '0',
  `TipoCarcel` varchar(3) NOT NULL DEFAULT '0',
  `SocioHP` varchar(3) NOT NULL DEFAULT '0',
  `Hambre` int(255) NOT NULL DEFAULT '8',
  `Patines` int(2) NOT NULL DEFAULT '0',
  `PuntosCarrera` int(4) NOT NULL DEFAULT '0',
  `TieneEmisora` int(2) NOT NULL DEFAULT '0',
  `NombreEmisora` varchar(90) NOT NULL,
  `Conexion` varchar(90) NOT NULL DEFAULT '1',
  `Semillas` int(5) NOT NULL DEFAULT '0',
  `XE` float NOT NULL,
  `YE` float NOT NULL,
  `ZE` float NOT NULL,
  `FinMesC` int(11) NOT NULL DEFAULT '0',
  `FinAnoC` int(11) NOT NULL DEFAULT '0',
  `enviocorreo` int(11) NOT NULL DEFAULT '0',
  `nuevocorreo` varchar(70) NOT NULL,
  `MinutosECorreo` varchar(25) NOT NULL,
  `MinJuego` int(11) NOT NULL,
  `IpReg` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `CodigoC` int(11) NOT NULL,
  `mensajepersonal` varchar(64) NOT NULL DEFAULT 'Nada para decir.',
  `Mapear` int(11) NOT NULL DEFAULT '0',
  `Afinidad1` int(11) NOT NULL DEFAULT '0',
  `Afinidad2` int(11) NOT NULL DEFAULT '0',
  `Afinidad3` int(11) NOT NULL DEFAULT '0',
  `Afinidad4` int(11) NOT NULL DEFAULT '0',
  `Afinidad5` int(11) NOT NULL DEFAULT '0',
  `Afinidad6` int(11) NOT NULL DEFAULT '0',
  `EstadoKEY` int(11) NOT NULL DEFAULT '0',
  `CPendiente` int(11) NOT NULL DEFAULT '0',
  `CodigoKEY` int(11) NOT NULL DEFAULT '329450',
  `avatarenuso` varchar(5) NOT NULL DEFAULT '32',
  `Puesto1H` int(11) NOT NULL,
  `Puesto2H` int(11) NOT NULL,
  `Puesto3H` int(11) NOT NULL,
  `Puesto4H` int(11) NOT NULL,
  `Puesto5H` int(11) NOT NULL,
  `Puesto6H` int(11) NOT NULL,
  `Puesto7H` int(11) NOT NULL,
  `Puesto8H` int(11) NOT NULL,
  `Puesto9H` int(11) NOT NULL,
  `Puesto10H` int(11) NOT NULL,
  `Puesto11H` int(11) NOT NULL,
  `Puesto12H` int(11) NOT NULL,
  `Puesto13H` int(11) NOT NULL,
  `Puesto14H` int(11) NOT NULL,
  `Puesto15H` int(11) NOT NULL,
  `Puesto16H` int(11) NOT NULL,
  `Puesto17H` int(11) NOT NULL,
  `Puesto18H` int(11) NOT NULL,
  `Puesto19H` int(11) NOT NULL,
  `Puesto20H` int(11) NOT NULL,
  `Puesto21H` int(11) NOT NULL,
  `Puesto22H` int(11) NOT NULL,
  `Puesto23H` int(11) NOT NULL,
  `Puesto24H` int(11) NOT NULL,
  `Puesto25H` int(11) NOT NULL,
  `Puesto26H` int(11) NOT NULL,
  `Puesto27H` int(11) NOT NULL,
  `Puesto28H` int(11) NOT NULL,
  `Puesto29H` int(11) NOT NULL,
  `Puesto30H` int(11) NOT NULL,
  `Puesto31H` int(11) NOT NULL,
  `Puesto32H` int(11) NOT NULL,
  `vAlarma` int(11) NOT NULL DEFAULT '0',
  `vAAlarma` int(11) NOT NULL DEFAULT '0',
  `v2Alarma` int(11) NOT NULL DEFAULT '0',
  `vAAlarma2` int(11) NOT NULL DEFAULT '0',
  `v3Alarma` int(11) NOT NULL DEFAULT '0',
  `vAAlarma3` int(11) NOT NULL DEFAULT '0',
  `v4Alarma` int(11) NOT NULL DEFAULT '0',
  `vAAlarma4` int(11) NOT NULL DEFAULT '0',
  `LastID` int(11) DEFAULT '0',
  `Lang` int(11) NOT NULL DEFAULT '2',
  `BaneosHechos` int(11) NOT NULL DEFAULT '0',
  `BaneosDia` int(11) NOT NULL DEFAULT '0',
  `Nacionalidad` varchar(32) NOT NULL DEFAULT 'San Andreas',
  `Bloqueado` int(11) NOT NULL DEFAULT '0',
  `RazonSan` varchar(128) NOT NULL DEFAULT 'Nada',
  `LogAdmin` int(11) DEFAULT '1',
  `FinDiaC` int(11) NOT NULL DEFAULT '0',
  `Participar` int(11) NOT NULL DEFAULT '0',
  `Striptease` int(11) NOT NULL DEFAULT '0',
  `Anuncios` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Username`, `Password`, `posX`, `posY`, `posZ`, `posA`, `EntradaX`, `EntradaY`, `EntradaZ`, `DeathX`, `DeathY`, `TempBan`, `Sanciones`, `DeathZ`, `DeathA`, `Admin`, `Fecha_Ban`, `Mapper`, `Sexo`, `Edad`, `Skin`, `Vida`, `Chaleco`, `Registro`, `Linked`, `Money`, `Banco`, `Moneda`, `Cargos`, `Duty`, `SkinTrabajo`, `Nivel`, `Experiencia`, `Agonizando`, `GPS`, `Radio`, `Numero`, `Guia`, `Sonidos`, `Muteos`, `Barras`, `Alerta`, `Velocimetro`, `valortotal`, `votostotales`, `Interior`, `MundoVirtual`, `Materiales`, `Sed`, `Trabajo`, `Trabajo2`, `Faccion`, `Rango`, `suspendido`, `TiempoBanda`, `Crack`, `Caramelos`, `Medicamentos`, `Marihuana`, `Agenda`, `Registro_U`, `username_low`, `Licencia`, `TiempoPD`, `TiempoJail`, `Repuestos`, `hx`, `hy`, `hz`, `Baneado`, `Banpor`, `Baneante`, `razon`, `IP`, `NMute`, `changenamefree`, `Online`, `EnFC`, `Email`, `EMS`, `TiempoCarcelS`, `Changed`, `Pais_Registro`, `Multas`, `Stats`, `EnCasa`, `EnRopero`, `EnGarage`, `VIP`, `FinDia`, `FinMes`, `FinAno`, `FinDiaL`, `FinLicencia`, `hprecio`, `h2precio`, `hmoneda`, `h2moneda`, `CasaID`, `CasaID2`, `Baneo_Time`, `WP0`, `WP1`, `WP2`, `WP3`, `WP4`, `WP5`, `WP6`, `WP7`, `WP8`, `WP9`, `WP10`, `WP11`, `WP12`, `NivelArmero`, `ExpArmero`, `NivelPescador`, `ExpPescador`, `NivelPiloto`, `ExpPiloto`, `NivelCamionero`, `ExpCamionero`, `NivelTransportista`, `ExpTransportista`, `NivelBasurero`, `ExpBasurero`, `NivelLadron`, `ExpLadron`, `NivelMedico`, `ExpMedico`, `RopaBasu`, `RopaMedi`, `RopaMeca`, `RopaMine`, `Martillo`, `Destornillador`, `Barreta`, `Balde`, `EstacionamientoID`, `Estacionado1`, `Estacionado2`, `Estacionado3`, `Estacionado4`, `EnEstacionamiento`, `ent_totem`, `Totem_Name`, `totems`, `NivelMinero`, `ExpMinero`, `Regalo`, `Muteado`, `arrestado`, `horasjugadas`, `TipoCarcel`, `SocioHP`, `Hambre`, `Patines`, `PuntosCarrera`, `TieneEmisora`, `NombreEmisora`, `Conexion`, `Semillas`, `XE`, `YE`, `ZE`, `FinMesC`, `FinAnoC`, `enviocorreo`, `nuevocorreo`, `MinutosECorreo`, `MinJuego`, `IpReg`, `CodigoC`, `mensajepersonal`, `Mapear`, `Afinidad1`, `Afinidad2`, `Afinidad3`, `Afinidad4`, `Afinidad5`, `Afinidad6`, `EstadoKEY`, `CPendiente`, `CodigoKEY`, `avatarenuso`, `Puesto1H`, `Puesto2H`, `Puesto3H`, `Puesto4H`, `Puesto5H`, `Puesto6H`, `Puesto7H`, `Puesto8H`, `Puesto9H`, `Puesto10H`, `Puesto11H`, `Puesto12H`, `Puesto13H`, `Puesto14H`, `Puesto15H`, `Puesto16H`, `Puesto17H`, `Puesto18H`, `Puesto19H`, `Puesto20H`, `Puesto21H`, `Puesto22H`, `Puesto23H`, `Puesto24H`, `Puesto25H`, `Puesto26H`, `Puesto27H`, `Puesto28H`, `Puesto29H`, `Puesto30H`, `Puesto31H`, `Puesto32H`, `vAlarma`, `vAAlarma`, `v2Alarma`, `vAAlarma2`, `v3Alarma`, `vAAlarma3`, `v4Alarma`, `vAAlarma4`, `LastID`, `Lang`, `BaneosHechos`, `BaneosDia`, `Nacionalidad`, `Bloqueado`, `RazonSan`, `LogAdmin`, `FinDiaC`, `Participar`, `Striptease`, `Anuncios`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`id` int(11) NOT NULL,
  `propietario` varchar(25) NOT NULL,
  `modelo` int(5) NOT NULL,
  `precio` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `a` float NOT NULL,
  `color1` varchar(3) NOT NULL,
  `color2` varchar(3) NOT NULL,
  `comprable` varchar(1) NOT NULL,
  `moneda` int(5) NOT NULL DEFAULT '0',
  `faccion` int(10) NOT NULL DEFAULT '0',
  `trabajo` int(10) NOT NULL DEFAULT '0',
  `Vida` int(11) NOT NULL DEFAULT '1000',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `VirtualWorld` int(11) NOT NULL DEFAULT '0',
  `Capo` int(11) NOT NULL DEFAULT '0',
  `Puertas` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehicles`
--

INSERT INTO `vehicles` (`id`, `propietario`, `modelo`, `precio`, `x`, `y`, `z`, `a`, `color1`, `color2`, `comprable`, `moneda`, `faccion`, `trabajo`, `Vida`, `Interior`, `VirtualWorld`, `Capo`, `Puertas`) VALUES
(1, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(2, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(3, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(4, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(5, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(6, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(7, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(8, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(9, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(10, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(11, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(12, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(13, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(14, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(15, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(16, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(17, 'Tren', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(18, 'Bus', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(19, 'Gobierno', 596, 0, 1547.44, -1651.93, 5.5335, 268.425, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(20, 'Gobierno', 596, 0, 1530.74, -1644.13, 5.4745, 0.7555, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(21, 'Gobierno', 598, 0, 2277.86, 2477.07, 10.5669, 178.935, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(22, 'Gobierno', 598, 0, 2277.92, 2442.8, 10.5656, 359.867, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(23, 'Gobierno', 598, 0, 283.595, 1437.58, 10.337, 90.3475, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(24, 'Gobierno', 598, 0, 283.694, 1432.04, 10.3372, 91.5102, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(25, 'Gobierno', 597, 0, -1600.02, 673.991, 6.8265, 181.152, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(26, 'Gobierno', 597, 0, -1610.76, 650.791, 6.736, 0.4225, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(27, 'Gobierno', 597, 0, -1622.54, 650.802, 6.7362, 0.208, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(28, 'Gobierno', 497, 0, 255.218, 1471.86, 12.8493, 266.752, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(29, 'Gobierno', 416, 0, 1616.56, 1830.91, 10.9195, 178.945, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(30, 'Gobierno', 416, 0, 1178.3, -1338.5, 14.2, 270, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(31, 'Gobierno', 416, 0, 1179.65, -1308.65, 13.897, 268.682, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(32, 'Gobierno', 416, 0, 1192.11, -1347.71, 13.4992, 180.55, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(33, 'Gobierno', 416, 0, 1209.44, -1348.43, 13.5497, 0.476262, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(34, 'Gobierno', 416, 0, 1209.24, -1318.81, 13.548, 0.4484, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(35, 'Gobierno', 416, 0, 2032.72, -1447.62, 17.2888, 88.6918, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(36, 'Gobierno', 416, 0, 2000.81, -1409.93, 17.1158, 179.339, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(37, 'Gobierno', 416, 0, 1601.15, 1849.37, 10.9196, 178.724, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(38, 'Gobierno', 416, 0, 1611.12, 1839.96, 10.9192, 359.882, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(39, 'Gobierno', 416, 0, 1594.38, 1839.87, 10.9694, 359.98, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(40, 'Gobierno', 416, 0, -2687.89, 635.193, 14.5924, 177.968, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(41, 'Gobierno', 416, 0, -2707.01, 633.95, 14.6469, 179.933, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(42, 'Gobierno', 416, 0, -2697.14, 634.771, 14.6352, 181.014, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(43, 'Gobierno', 416, 0, -2675.66, 629.996, 14.639, 89.078, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(44, 'Gobierno', 416, 0, -2706.31, 591.75, 14.6461, 270.85, '1', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(45, 'Gobierno', 532, 0, -367.014, -1487.82, 26.3673, 115.6, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(46, 'Gobierno', 532, 0, -365.996, -1500.8, 24.9991, 62.528, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(47, 'Gobierno', 532, 0, -371.448, -1518.32, 23.1765, 59.7599, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(48, 'Gobierno', 532, 0, -405.126, -1532.23, 23.7797, 242.586, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(49, 'Gobierno', 532, 0, -404.465, -1519.56, 24.3825, 242.185, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(50, 'Gobierno', 597, 0, -1634.58, 650.877, 6.7392, 359.937, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(51, 'Gobierno', 596, 0, 1592.67, -1606.72, 13.0319, 183.637, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(52, 'Gobierno', 596, 0, 1583.94, -1606.93, 12.9663, 183.808, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(53, 'Gobierno', 596, 0, 1575.91, -1607.84, 12.9664, 176.666, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(54, 'Gobierno', 420, 0, 1804.45, -1916.3, 13.4432, 90, '6', '6', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(55, 'Gobierno', 420, 0, 1804.31, -1910.28, 13.2023, 90, '6', '6', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(56, 'Gobierno', 420, 0, 1804.56, -1904.39, 13.2053, 90, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(57, 'Gobierno', 420, 0, 1802.41, -1866.56, 13.5667, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(58, 'Gobierno', 438, 0, 1797.99, -1865.87, 13.3773, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(59, 'Gobierno', 509, 0, 1727.85, -1884.74, 13.0755, 59.6435, '6', '6', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(60, 'Gobierno', 509, 0, 1727.7, -1880.78, 13.0757, 50.4133, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(61, 'Gobierno', 509, 0, 1702.32, -1882.36, 13.0817, 359.549, '3', '3', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(62, 'Gobierno', 509, 0, 1711.27, -1874.52, 13.0796, 90.2646, '7', '7', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(63, 'Gobierno', 509, 0, 1718.94, -1874.29, 13.0777, 90.406, '8', '8', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(64, 'Gobierno', 509, 0, 1727.68, -1875.33, 13.0755, 114.382, '5', '5', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(65, 'Gobierno', 596, 0, 1560.51, -1608.16, 13.0237, 180.832, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(66, 'Gobierno', 528, 0, 1544.75, -1606.19, 13.4019, 269.234, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(67, 'Gobierno', 528, 0, 1545.68, -1613.75, 13.4379, 266.183, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(68, 'Gobierno', 596, 0, 1533.38, -1688.75, 13.0303, 356.446, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(69, 'Gobierno', 596, 0, 1533.33, -1655.13, 12.9854, 357.665, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(70, 'Gobierno', 601, 0, 1538.79, -1646.99, 5.6493, 181.301, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(71, 'Gobierno', 598, 0, 2298.24, 2456, 3.0209, 88.8597, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(72, 'Gobierno', 411, 20, -1959.56, 268.04, 35.1987, 63.0793, '64', '1', '1', 1, 0, 0, 1000, 0, 0, 0, 0),
(73, 'Gobierno', 415, 15, 1482.01, -1771.76, 13.6576, 335.661, '40', '1', '1', 1, 0, 0, 1000, 0, 0, 0, 0),
(74, 'Gobierno', 451, 15, 1471.91, -1771.16, 13.6028, 342.03, '125', '125', '1', 1, 0, 0, 1000, 0, 0, 0, 0),
(75, 'Gobierno', 604, 3000, 1670.77, -1892.57, 13.3213, 39.598, '18', '25', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(76, 'Gobierno', 542, 4000, 1631.97, -1902.09, 13.3229, 279.542, '123', '49', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(77, 'Gobierno', 404, 5000, 1667.06, -1901.31, 13.2967, 31.8468, '115', '117', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(78, 'Gobierno', 561, 70000, 1474.23, -1806.53, 19.1762, 34.4741, '8', '17', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(79, 'Gobierno', 479, 6000, 1659.7, -1901.63, 13.3617, 331.342, '101', '78', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(80, 'Gobierno', 500, 45000, 1502.37, -1746.88, 13.6768, 358.847, '3', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(81, 'Gobierno', 589, 42000, 1445.89, -1812.65, 13.4716, 213.499, '31', '31', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(82, 'Gobierno', 602, 38000, 1503.59, -1777.36, 19.2932, 36.5393, '70', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(83, 'Gobierno', 603, 45000, 1459.19, -1798.3, 13.6663, 209.508, '58', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(84, 'Gobierno', 506, 185000, 1457.99, -1777.26, 19.1693, 213.378, '43', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(85, 'Gobierno', 565, 60000, 1426.64, -1812.88, 13.4582, 219.01, '42', '42', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(86, 'Gobierno', 445, 7000, 1631.74, -1910.09, 13.4259, 283.462, '66', '97', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(87, 'Gobierno', 478, 8000, -1991.2, 252.781, 35.1768, 92.672, '66', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(88, 'Gobierno', 489, 70000, -1990.23, 259.905, 35.2739, 93.7587, '112', '120', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(89, 'Gobierno', 579, 75000, 1487.15, -1746.32, 13.2787, 0.9643, '53', '53', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(90, 'Gobierno', 560, 75000, 528.881, -1291, 16.9522, 1.9805, '125', '125', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(91, 'Gobierno', 551, 10000, 522.654, -1290.37, 17.0625, 1.5201, '120', '120', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(92, 'Gobierno', 587, 80000, 534.75, -1290.76, 16.9767, 359.092, '3', '3', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(93, 'Gobierno', 566, 25000, 541.087, -1291.04, 17.0545, 358.907, '60', '60', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(94, 'Gobierno', 533, 20000, 546.171, -1291.44, 16.9675, 359.936, '62', '62', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(95, 'Gobierno', 496, 22500, 551.673, -1291.2, 16.9553, 0.1237, '25', '25', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(96, 'Gobierno', 412, 19000, 557.545, -1291.23, 17.1069, 359.237, '6', '6', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(97, 'Gobierno', 463, 55000, 2136.26, -1143.39, 24.5006, 104.467, '125', '125', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(98, 'Gobierno', 475, 42000, 2134.8, -1127.5, 25.3771, 107.747, '30', '96', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(99, 'Gobierno', 545, 33000, 2135.39, -1132.46, 25.4555, 110.67, '66', '66', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(100, 'Gobierno', 491, 32000, 2135.81, -1137.63, 25.3027, 107.811, '25', '25', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(101, 'Gobierno', 567, 70000, 2119.02, -1135.08, 25.1327, 285.762, '93', '64', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(102, 'Gobierno', 534, 60000, -1157.37, 23.9635, 25.0424, 299.305, '37', '37', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(103, 'Gobierno', 535, 35000, 2118.55, -1148.21, 24.1713, 291.002, '3', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(104, 'Gobierno', 554, 42000, 1481.82, -1746.35, 13.6364, 0.0619, '15', '32', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(105, 'Gobierno', 400, 70000, 1468.03, -1746.78, 13.6484, 359.329, '123', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(106, 'Gobierno', 414, 90000, 1454.4, -1746.98, 13.656, 1.297, '28', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(107, 'Gobierno', 482, 120000, 1507.33, -1746.44, 13.7067, 0.208, '37', '37', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(108, 'Gobierno', 480, 225000, -1959.93, 300.865, 35.257, 64.4359, '12', '12', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(109, 'Gobierno', 578, 230000, -1989.62, 243.943, 35.7655, 92.0401, '1', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(110, 'Gobierno', 477, 250000, -1959.58, 258.49, 35.2501, 63.3406, '121', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(111, 'Gobierno', 409, 1000000, 1462.86, -1747.48, 13.3221, 1.4709, '1', '1', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(112, 'Gobierno', 408, 0, -112.047, -1506.97, 3.9356, 137.839, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(113, 'Gobierno', 408, 0, -115.923, -1503.26, 3.9712, 139.903, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(114, 'Gobierno', 408, 0, -120.514, -1499.57, 3.9835, 139.188, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(115, 'Gobierno', 408, 0, -119.727, -1490.93, 3.669, 138.094, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(116, 'Gobierno', 408, 0, -134.342, -1505.57, 5.5412, 228.926, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(117, 'Gobierno', 408, 0, -138.332, -1509.35, 5.6167, 249.55, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(118, 'Gobierno', 408, 0, -137.396, -1533.75, 4.3183, 161.573, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(119, 'Gobierno', 408, 0, -166.593, -1533.65, 6.4289, 227.063, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(120, 'Gobierno', 408, 0, -171.923, -1540.54, 6.6371, 227.988, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(121, 'Gobierno', 453, 0, 2822.07, -2624.44, -0.0876, 89.6143, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(122, 'Gobierno', 453, 0, 2821.58, -2618.06, -0.2381, 82.3052, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(123, 'Gobierno', 453, 0, 2822.26, -2611.5, -0.7854, 91.6937, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(124, 'Gobierno', 453, 0, 2821.52, -2604.74, -0.1236, 87.5986, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(125, 'Gobierno', 453, 0, 2821.52, -2596.74, -0.3082, 90.4083, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(126, 'Gobierno', 453, 0, 2822.91, -2584.06, -0.3235, 87.4044, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(127, 'Gobierno', 453, 0, 2839.35, -2625.99, 0.2129, 272.277, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(128, 'Gobierno', 453, 0, 2839.33, -2617.7, -0.6352, 273.978, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(129, 'Gobierno', 453, 0, 2839.43, -2608.04, 0.1093, 265.808, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(130, 'Gobierno', 453, 0, 2840.28, -2598.57, 0.1278, 270.083, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(131, 'Gobierno', 453, 0, 2838.01, -2586.62, -0.7477, 273.957, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(132, 'Gobierno', 453, 0, 2838.26, -2576.27, -0.7139, 274.884, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(133, 'Gobierno', 453, 0, 2822.48, -2590.11, 0.068, 88.2848, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(134, 'Gobierno', 453, 0, 2839.15, -2592.76, -0.0994, 264.828, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(135, 'Gobierno', 453, 0, 2801.81, -2583.29, -0.7696, 181.831, '1', '1', '0', 0, 0, 12, 1000, 0, 0, 0, 0),
(136, 'Gobierno', 466, 5000, 1670.53, -1899.05, 13.324, 35.1716, '90', '76', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(137, 'Gobierno', 429, 15, -1959.95, 282.43, 35.1263, 63.6825, '14', '14', '1', 1, 0, 0, 1000, 0, 0, 0, 0),
(138, 'Gobierno', 517, 6500, 1631.71, -1905.92, 13.4107, 279.31, '1', '80', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(139, 'Gobierno', 536, 40000, 2119.26, -1140.82, 24.7283, 286.63, '30', '96', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(140, 'Gobierno', 580, 32000, 2119.64, -1128.31, 25.1539, 282.517, '6', '6', '1', 0, 0, 0, 1000, 0, 0, 0, 0),
(141, 'Gobierno', 497, 0, -1679.71, 706.109, 30.737, 90.9954, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(142, 'Gobierno', 598, 0, 2269.03, 2477.08, 10.5673, 177.826, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(143, 'Gobierno', 532, 0, -398.434, -1508.2, 25.1264, 243.781, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(144, 'Gobierno', 532, 0, -397.763, -1491.12, 26.0029, 242.204, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(145, 'Gobierno', 532, 0, -409.188, -1504.94, 24.9588, 48.4749, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(146, 'Gobierno', 532, 0, -407.182, -1485.52, 26.0576, 40.1412, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(147, 'Gobierno', 609, 0, -1662.12, -36.4333, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(148, 'Gobierno', 609, 0, -1658.46, -40.245, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(149, 'Gobierno', 609, 0, -1654.96, -43.8127, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(150, 'Gobierno', 609, 0, -1651.54, -47.7158, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(151, 'Gobierno', 609, 0, -1648.05, -51.5126, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(152, 'Gobierno', 609, 0, -1644.67, -54.8924, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(153, 'Gobierno', 609, 0, -1640.68, -58.6293, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(154, 'Gobierno', 609, 0, -1637.15, -62.3905, 3.6027, 133.44, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(155, 'Gobierno', 609, 0, -1733.45, -5.3612, 3.3793, -88.86, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(156, 'Gobierno', 609, 0, -1733.38, 0.1806, 3.3793, -88.86, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(157, 'Gobierno', 609, 0, -1733.39, 4.9433, 3.3793, -88.86, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(158, 'Gobierno', 609, 0, -1733.43, 10.6054, 3.3793, -88.86, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(159, 'Gobierno', 609, 0, -1733.5, 15.3659, 3.3793, -88.86, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(160, 'Gobierno', 609, 0, -1733.48, 21.0065, 3.3793, -88.86, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(161, 'Gobierno', 609, 0, -1662.63, 35.2098, 3.3793, -136.26, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(162, 'Gobierno', 609, 0, -1658.86, 39.0425, 3.3793, -136.26, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(163, 'Gobierno', 609, 0, -1651.7, 46.0807, 3.3793, -136.26, '', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(164, 'Gobierno', 609, 0, -1647.79, 50.1095, 3.3793, -136.26, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(165, 'Gobierno', 609, 0, -1644.55, 53.439, 3.3793, -136.26, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(166, 'Gobierno', 609, 0, -1640.63, 57.2199, 3.3793, -136.26, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(167, 'Gobierno', 609, 0, -1637.13, 60.844, 3.3793, -136.26, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(168, 'Gobierno', 609, 0, -1655.18, 42.5719, 3.6218, 224.087, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(169, 'Gobierno', 609, 0, -1644.33, 17.2651, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(170, 'Gobierno', 609, 0, -1640.59, 21.3952, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(171, 'Gobierno', 609, 0, -1637.74, 24.3893, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(172, 'Gobierno', 609, 0, -1633.43, 28.653, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(173, 'Gobierno', 609, 0, -1630.44, 31.6121, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(174, 'Gobierno', 609, 0, -1626.03, 36.006, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(175, 'Gobierno', 609, 0, -1623.08, 38.9479, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(176, 'Gobierno', 609, 0, -1618.81, 43.3621, 3.5289, 45.799, '0', '0', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(177, 'Gobierno', 456, 0, -1622.93, 77.3871, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(178, 'Gobierno', 456, 0, -1618.84, 81.5055, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(179, 'Gobierno', 456, 0, -1616.03, 84.2379, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(180, 'Gobierno', 456, 0, -1611.58, 88.7232, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(181, 'Gobierno', 456, 0, -1608.94, 91.3832, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(182, 'Gobierno', 456, 0, -1604.08, 96.2963, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(183, 'Gobierno', 456, 0, -1601.43, 98.9696, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(184, 'Gobierno', 456, 0, -1596.91, 103.471, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(185, 'Gobierno', 609, 0, -1594.02, 106.502, 4.0766, 225.011, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(186, 'Gobierno', 609, 0, -1589.74, 110.88, 4.0766, 225.011, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(187, 'Gobierno', 456, 0, -1586.54, 113.449, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(188, 'Gobierno', 456, 0, -1582.1, 118.03, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(189, 'Gobierno', 609, 0, -1579.29, 120.937, 4.0766, 225.011, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(190, 'Gobierno', 609, 0, -1574.72, 125.515, 4.0766, 225.011, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(191, 'Gobierno', 456, 0, -1571.74, 128.235, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(192, 'Gobierno', 456, 0, -1567.71, 132.539, 3.8975, 225.054, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(193, 'Gobierno', 456, 0, -1677.93, -95.3974, 3.5354, 315.345, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(194, 'Gobierno', 456, 0, -1681.01, -92.3768, 3.5354, 315.345, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(195, 'Gobierno', 456, 0, -1685.57, -87.7755, 3.5354, 315.345, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(196, 'Gobierno', 456, 0, -1688.39, -85.0225, 3.5354, 315.345, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(197, 'Gobierno', 456, 0, -1692.78, -80.6929, 3.5354, 315.345, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(198, 'Gobierno', 456, 0, -1695.77, -77.8372, 3.5354, 315.345, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(199, 'Gobierno', 456, 0, -1720.81, -144.426, 3.5338, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(200, 'Gobierno', 456, 0, -1725.54, -148.853, 3.5338, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(201, 'Gobierno', 456, 0, -1728.34, -152.125, 3.5338, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(202, 'Gobierno', 456, 0, -1732.59, -156.491, 3.5338, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(203, 'Gobierno', 609, 0, -1734.44, -160.387, 3.5181, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(204, 'Gobierno', 456, 0, -1740.08, -164.095, 3.5338, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(205, 'Gobierno', 609, 0, -1741.58, -167.63, 3.5181, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(206, 'Gobierno', 456, 0, -1746.88, -171.106, 3.5338, 46.0556, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(207, 'Gobierno', 456, 0, -1700.97, -73.8456, 3.5348, 314.409, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(208, 'Gobierno', 456, 0, -1674.72, -100.541, 3.5348, 314.409, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(209, 'Gobierno', 408, 0, -106.365, -1513.03, 3.5715, 137.213, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(210, 'Gobierno', 408, 0, -114.01, -1521.4, 3.6564, 135.519, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(211, 'Gobierno', 408, 0, -123.042, -1536.85, 3.4431, 136.495, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(212, 'Gobierno', 408, 0, -117.884, -1543.56, 3.1891, 135.776, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(213, 'Gobierno', 408, 0, -115.344, -1583.61, 3.2129, 162.62, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(214, 'Gobierno', 408, 0, -109.428, -1591.2, 3.1723, 98.7876, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(215, 'Gobierno', 408, 0, -106.366, -1595.99, 3.1826, 99.8592, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(216, 'Gobierno', 408, 0, -103.168, -1600.95, 3.1826, 100.234, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(217, 'Gobierno', 408, 0, -99.5796, -1606.24, 3.1829, 98.7939, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(218, 'Gobierno', 408, 0, -96.2696, -1611.65, 3.2347, 91.5225, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(219, 'Gobierno', 408, 0, -108.751, -1614.39, 3.1724, 89.7864, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(220, 'Gobierno', 408, 0, -115.699, -1607.41, 3.3777, 92.4092, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(221, 'Gobierno', 408, 0, -194.766, -1563.97, 7.1792, 224.577, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(222, 'Gobierno', 408, 0, -199.939, -1569.11, 7.0825, 220.237, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(223, 'Gobierno', 408, 0, -203.545, -1575.13, 6.9703, 206.976, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(224, 'Gobierno', 438, 0, 1804.53, -1921.37, 13.3452, 90, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(225, 'Gobierno', 420, 0, 1804.52, -1933.25, 13.1806, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(226, 'Gobierno', 420, 0, 1798.59, -1933.32, 13.1951, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(227, 'Gobierno', 420, 0, 1793.14, -1933.23, 13.1908, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(228, 'Gobierno', 438, 0, 1788.08, -1933.15, 13.4522, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(229, 'Gobierno', 420, 0, 1776.17, -1921.11, 13.193, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(230, 'Gobierno', 420, 0, 1776.17, -1906.33, 13.191, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(231, 'Gobierno', 438, 0, -1976.75, 179.753, 27.6689, 90, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(232, 'Gobierno', 438, 0, -1977.02, 172.893, 27.7177, 90, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(233, 'Gobierno', 420, 0, -1987.8, 161.954, 27.3423, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(234, 'Gobierno', 420, 0, -1987.8, 123.818, 27.3178, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(235, 'Gobierno', 420, 0, -1987.75, 109.786, 27.3433, 0, '6', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(262, 'Bus', 0, 0, 0, 0, 0, 0, '1', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(237, 'Gobierno', 428, 0, 1403.98, 609.352, 1001.17, 359.386, '0', '0', '0', 0, 0, 20, 1000, 0, 0, 0, 0),
(238, 'Gobierno', 428, 0, 1443.29, 472.072, 1007.57, 268.016, '-1', '-1', '0', 0, 0, 20, 1000, 0, 0, 0, 0),
(239, 'Gobierno', 532, 0, -440.022, -1494.87, 21.5918, 6.7483, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(240, 'Gobierno', 532, 0, -455.665, -1450.87, 20.1458, 20.7036, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(241, 'Gobierno', 532, 0, -32.0611, 66.1601, 4.1104, 73.1665, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(242, 'Gobierno', 532, 0, -26.9689, 79.7101, 4.1073, 77.5818, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(243, 'Gobierno', 532, 0, -25.1596, 88.4932, 4.1005, 68.8826, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(244, 'Gobierno', 532, 0, -54.027, 86.8697, 4.0987, 251.917, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(245, 'Gobierno', 532, 0, -59.0665, 75.4855, 4.0959, 269.413, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(246, 'Gobierno', 532, 0, -45.9168, 61.5404, 4.1012, 24.8176, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(247, 'Gobierno', 596, 0, 1544.49, -1659.03, 5.5208, 89.8792, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(248, 'Gobierno', 596, 0, 1547.33, -1667.7, 5.4308, 90.0108, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(249, 'Gobierno', 596, 0, 1527.99, -1688.17, 5.532, 88.2106, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(250, 'Gobierno', 597, 0, 1544.84, -1680.33, 5.4355, 89.4215, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(251, 'Gobierno', 528, 0, 1570.2, -1711.17, 5.983, 179.82, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(252, 'Gobierno', 596, 0, 1583.79, -1711.51, 5.5285, 177.117, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(253, 'Gobierno', 596, 0, 1591.4, -1712.67, 5.6052, 356.835, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(254, 'Gobierno', 597, 0, 1601.39, -1704.07, 5.4224, 87.8649, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(255, 'Gobierno', 596, 0, 1602.97, -1696.23, 5.5135, 90.5364, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(256, 'Gobierno', 528, 0, 1602.42, -1687.94, 5.9094, 89.8057, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(257, 'Gobierno', 596, 0, 1583.68, -1667.65, 5.5277, 271.29, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(258, 'Gobierno', 596, 0, 1583.89, -1671.6, 5.7876, 268.822, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(259, 'Gobierno', 597, 0, 1603.24, -1628.63, 13.0317, 89.2485, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(260, 'Gobierno', 597, 0, 1604.08, -1616.02, 13.0408, 88.5483, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0),
(261, 'Gobierno', 597, 0, 1603.92, -1606.16, 13.0338, 91.6119, '0', '1', '0', 0, 0, 0, 1000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_autorizadas`
--

CREATE TABLE IF NOT EXISTS `ventas_autorizadas` (
`ID` int(11) NOT NULL,
  `Jugador` varchar(128) NOT NULL,
  `IP_ENCRIPTADA` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas_autorizadas`
--

INSERT INTO `ventas_autorizadas` (`ID`, `Jugador`, `IP_ENCRIPTADA`) VALUES
(1, 'da0db5d492ec9e630fe1e4e159c6f2c1', 'ba4fcdc76060f428cdabd70e95eb9429'),
(2, '2fbe22ebf792a3d0177b33a242811723', '52b61dd8c5e7ba6a4dbda3f98fc18561'),
(3, 'effbbbdf75ed154b53443babbbe6c4c3', '8fad7a90218a341edc19632cf93160f3'),
(4, '0720d6f132544b39c560580b75990ca4', '41b7c0aee8fdaf57c78dba2b174f363f'),
(5, 'b0373e958aeee10e4327a8692924bfc1', '41b7c0aee8fdaf57c78dba2b174f363f'),
(6, '6c8015615f1beabdb952ceffdc5fbea9', '6103e804a260f01bb1438d4eceaba48d');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE IF NOT EXISTS `zonas` (
`ID` int(11) NOT NULL,
  `Banda` int(11) NOT NULL DEFAULT '0',
  `Parte` varchar(64) NOT NULL DEFAULT 'Ninguna',
  `Nombre` varchar(64) NOT NULL DEFAULT 'Ninguna',
  `Min_X` float NOT NULL,
  `Min_Y` float NOT NULL,
  `Min_Z` float NOT NULL,
  `Max_X` float NOT NULL,
  `Max_Y` float NOT NULL,
  `Max_Z` float NOT NULL,
  `Z_Activa` int(11) NOT NULL DEFAULT '1',
  `Color` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`ID`, `Banda`, `Parte`, `Nombre`, `Min_X`, `Min_Y`, `Min_Z`, `Max_X`, `Max_Y`, `Max_Z`, `Z_Activa`, `Color`) VALUES
(1, 0, 'LA', 'Los Santos', 44.614, -2892.97, -242.99, 2997.06, -768.026, 900, 0, 0),
(2, 0, 'RIH1a', 'Richman', 321.355, -860.619, -89.083, 687.802, -768.026, 110.916, 0, 0),
(3, 0, 'RIH1b', 'Richman', 321.355, -768.026, -89.083, 700.794, -674.885, 110.916, 0, 0),
(4, 0, 'RIH2', 'Richman', 321.355, -1044.07, -89.083, 647.557, -860.619, 110.916, 0, 0),
(5, 0, 'RIH3a', 'Richman', 72.648, -1404.97, -89.083, 225.164, -1235.07, 110.916, 0, 0),
(6, 0, 'RIH3b', 'Richman', 72.648, -1235.07, -89.083, 321.355, -1008.15, 110.916, 0, 0),
(7, 0, 'RIH4', 'Richman', 321.355, -1235.07, -89.083, 647.521, -1044.07, 110.916, 0, 0),
(8, 0, 'RIH5a', 'Richman', 647.557, -1118.28, -89.083, 787.46, -954.661, 110.916, 0, 0),
(9, 0, 'RIH5b', 'Richman', 647.557, -954.661, -89.083, 768.693, -860.619, 110.916, 0, 0),
(10, 0, 'RIH6a', 'Richman', 225.164, -1369.62, -89.083, 334.502, -1292.07, 110.916, 0, 0),
(11, 0, 'RIH6b', 'Richman', 225.164, -1292.07, -89.083, 466.222, -1235.07, 110.916, 0, 0),
(12, 0, 'MUL1a', 'Mulholland', 687.802, -860.619, -89.083, 911.802, -768.026, 110.916, 0, 0),
(13, 0, 'MUL1b', 'Mulholland', 737.572, -768.026, -89.083, 1142.29, -674.885, 110.916, 0, 0),
(14, 0, 'MUL1c', 'Mulholland', 861.085, -674.885, -89.083, 1156.55, -600.895, 110.916, 0, 0),
(15, 0, 'MUL2a', 'Mulholland', 1281.13, -452.424, -89.083, 1641.13, -290.912, 110.916, 0, 0),
(16, 0, 'MUL2b', 'Mulholland', 1269.13, -768.026, -89.083, 1414.07, -452.424, 110.916, 0, 0),
(17, 0, 'MUL3', 'Mulholland', 1414.07, -768.026, -89.083, 1667.61, -452.424, 110.916, 0, 0),
(18, 0, 'MUL4', 'Mulholland', 768.693, -954.661, -89.083, 952.604, -860.619, 110.916, 0, 0),
(19, 0, 'MUL5a', 'Mulholland', 1096.47, -910.169, -89.083, 1169.13, -768.026, 110.916, 0, 0),
(20, 0, 'MUL5b', 'Mulholland', 952.604, -937.184, -89.083, 1096.47, -860.619, 110.916, 0, 0),
(21, 0, 'MUL5c', 'Mulholland', 911.802, -860.619, -89.083, 1096.47, -768.026, 110.916, 0, 0),
(22, 0, 'MUL6', 'Mulholland', 1169.13, -910.169, -89.083, 1318.13, -768.026, 110.916, 0, 0),
(23, 0, 'MUL7a', 'Mulholland', 1357, -926.999, -89.083, 1463.9, -768.026, 110.916, 0, 0),
(24, 0, 'MUL7b', 'Mulholland', 1318.13, -910.169, -89.083, 1357, -768.026, 110.916, 0, 0),
(25, 0, 'MULINT', 'Mulholland Intersection', 1463.9, -1150.87, -89.083, 1812.62, -768.026, 110.916, 0, 0),
(26, 0, 'SUN1', 'Temple', 952.663, -1130.84, -89.083, 1096.47, -937.184, 110.916, 1, 0),
(27, 0, 'SUN2', 'Temple', 1096.47, -1026.33, -89.083, 1252.33, -910.169, 110.916, 0, 0),
(28, 209, 'SUN3a', 'Temple', 1252.33, -1130.85, -89.083, 1378.33, -1026.33, 110.916, 1, -1605498233),
(29, 0, 'SUN3b', 'Temple', 1252.33, -1026.33, -89.083, 1391.05, -926.999, 110.916, 0, 0),
(30, 0, 'SUN3c', 'Temple', 1252.33, -926.999, -89.083, 1357, -910.169, 110.916, 0, 0),
(31, 209, 'SUN4', 'Temple', 1096.47, -1130.84, -89.083, 1252.33, -1026.33, 110.916, 1, -1605498233),
(32, 110, 'CHC1a', 'Las Colinas', 1994.33, -1100.82, -89.083, 2056.86, -920.815, 110.916, 1, 10092423),
(33, 110, 'CHC1b', 'Las Colinas', 2056.86, -1126.32, -89.083, 2126.86, -920.815, 110.916, 1, 10092423),
(34, 110, 'CHC2a', 'Las Colinas', 2126.86, -1126.32, -89.083, 2185.33, -934.489, 110.916, 1, 10092423),
(35, 110, 'CHC2b', 'Las Colinas', 2185.33, -1154.59, -89.083, 2281.45, -934.489, 110.916, 1, 10092423),
(36, 198, 'CHC3', 'Las Colinas', 2281.45, -1135.04, -89.083, 2632.74, -945.034, 110.916, 1, 210656647),
(37, 209, 'CHC4a', 'Las Colinas', 2747.74, -1120.04, -89.083, 2959.35, -945.034, 110.916, 1, -1605498233),
(38, 242, 'CHC4b', 'Las Colinas', 2632.74, -1135.04, -89.083, 2747.74, -945.034, 110.916, 1, 301502855),
(39, 0, 'VIN1a', 'Vinewood', 647.711, -1416.25, -89.083, 787.46, -1227.28, 110.916, 0, 0),
(40, 0, 'VIN1b', 'Vinewood', 647.557, -1227.28, -89.083, 787.46, -1118.28, 110.916, 0, 0),
(41, 209, 'VIN2', 'Vinewood', 787.46, -1130.84, -89.083, 952.604, -954.661, 110.916, 1, -1605498233),
(42, 0, 'VIN3', 'Vinewood', 787.46, -1310.21, -89.083, 952.663, -1130.84, 110.916, 0, 0),
(43, 0, 'LDT1a', 'Downtown Los Santos', 1370.85, -1170.87, -89.083, 1463.9, -1130.85, 110.916, 0, 0),
(44, 0, 'LDT1b', 'Downtown Los Santos', 1378.33, -1130.85, -89.083, 1463.9, -1026.33, 110.916, 0, 0),
(45, 0, 'LDT1c', 'Downtown Los Santos', 1391.05, -1026.33, -89.083, 1463.9, -926.999, 110.916, 0, 0),
(46, 0, 'LDT3', 'Downtown Los Santos', 1370.85, -1384.95, -89.083, 1463.9, -1170.87, 110.916, 0, 0),
(47, 0, 'LDT4', 'Downtown Los Santos', 1463.9, -1290.87, -89.083, 1724.76, -1150.87, 110.916, 0, 0),
(48, 0, 'LDT5', 'Downtown Los Santos', 1463.9, -1430.87, -89.083, 1724.76, -1290.87, 110.916, 0, 0),
(49, 0, 'LDT6', 'Downtown Los Santos', 1724.76, -1250.9, -89.083, 1812.62, -1150.87, 110.916, 0, 0),
(50, 0, 'LDT7', 'Downtown Los Santos', 1724.76, -1430.87, -89.083, 1812.62, -1250.9, 110.916, 0, 0),
(51, 0, 'LDT8', 'Downtown Los Santos', 1507.51, -1385.21, 110.916, 1582.55, -1325.31, 335.915, 0, 0),
(52, 241, 'GLN1', 'Glen Park', 1812.62, -1350.72, -89.083, 2056.86, -1100.82, 110.916, 1, -1182459513),
(53, 110, 'GLN1b', 'Glen Park', 1812.62, -1100.82, -89.083, 1994.33, -973.38, 110.916, 1, 10092423),
(54, 0, 'GLN2a', 'Glen Park', 1812.62, -1449.67, -89.083, 1996.91, -1350.72, 110.916, 1, 0),
(55, 0, 'LFL1a', 'Los Flores', 2581.73, -1454.35, -89.083, 2632.83, -1393.42, 110.916, 1, 0),
(56, 198, 'LFL1b', 'Los Flores', 2581.73, -1393.42, -89.083, 2747.74, -1135.04, 110.916, 1, 210656647),
(57, 0, 'MKT1', 'Market', 1072.66, -1416.25, -89.083, 1370.85, -1130.85, 110.916, 0, 0),
(58, 0, 'MKT2', 'Market', 926.921, -1577.59, -89.083, 1370.85, -1416.25, 110.916, 0, 0),
(59, 0, 'MKT3', 'Market', 787.46, -1416.25, -89.083, 1072.66, -1310.21, 110.916, 0, 0),
(60, 0, 'MKT4', 'Market', 952.663, -1310.21, -89.083, 1072.66, -1130.85, 110.916, 0, 0),
(61, 0, 'MARKST', 'Market Station', 787.46, -1410.93, -34.126, 866.008, -1310.21, 65.873, 0, 0),
(62, 110, 'JEF1a', 'Jefferson', 2185.33, -1210.74, -89.083, 2281.45, -1154.59, 110.916, 1, 10092423),
(63, 215, 'JEF1b', 'Jefferson', 2056.86, -1210.74, -89.083, 2185.33, -1126.32, 110.916, 1, -253326201),
(64, 190, 'JEF2', 'Jefferson', 2056.86, -1372.04, -89.083, 2281.45, -1210.74, 110.916, 1, 1545260167),
(65, 0, 'JEF3a', 'Jefferson', 1996.91, -1449.67, -89.083, 2056.86, -1350.72, 110.916, 0, 0),
(66, 0, 'JEF3b', 'Jefferson', 2056.86, -1449.67, -89.083, 2266.21, -1372.04, 110.916, 1, 0),
(67, 0, 'JEF3c', 'Jefferson', 2124.66, -1494.03, -89.083, 2266.21, -1449.67, 110.916, 1, 0),
(68, 0, 'ROD1a', 'Rodeo', 225.164, -1684.65, -89.083, 312.803, -1501.95, 110.916, 0, 0),
(69, 0, 'ROD1b', 'Rodeo', 225.164, -1501.95, -89.083, 334.502, -1369.62, 110.916, 0, 0),
(70, 0, 'ROD1c', 'Rodeo', 334.502, -1501.95, -89.083, 422.679, -1406.05, 110.916, 0, 0),
(71, 0, 'ROD2a', 'Rodeo', 334.502, -1406.05, -89.083, 466.222, -1292.07, 110.916, 0, 0),
(72, 0, 'ROD2b', 'Rodeo', 466.222, -1385.07, -89.083, 647.521, -1235.07, 110.916, 0, 0),
(73, 0, 'ROD3a', 'Rodeo', 312.803, -1684.65, -89.083, 422.679, -1501.95, 110.916, 0, 0),
(74, 0, 'ROD3b', 'Rodeo', 422.679, -1684.65, -89.083, 558.098, -1570.2, 110.916, 0, 0),
(75, 0, 'ROD4a', 'Rodeo', 558.098, -1684.65, -89.083, 647.521, -1384.93, 110.916, 0, 0),
(76, 0, 'ROD4b', 'Rodeo', 466.222, -1570.2, -89.083, 558.098, -1385.07, 110.916, 0, 0),
(77, 0, 'ROD4c', 'Rodeo', 422.679, -1570.2, -89.083, 466.222, -1406.05, 110.916, 0, 0),
(78, 0, 'ROD5a', 'Rodeo', 72.648, -1544.17, -89.083, 225.164, -1404.97, 110.916, 0, 0),
(79, 0, 'ROD5b', 'Rodeo', 72.648, -1684.65, -89.083, 225.164, -1544.17, 110.916, 0, 0),
(80, 0, 'MAR1', 'Marina', 647.711, -1577.59, -89.083, 807.921, -1416.25, 110.916, 0, 0),
(81, 0, 'MAR2', 'Marina', 807.921, -1577.59, -89.083, 926.921, -1416.25, 110.916, 0, 0),
(82, 0, 'MAR3', 'Marina', 647.711, -1804.21, -89.083, 851.448, -1577.59, 110.916, 0, 0),
(83, 0, 'THALL1', 'Commerce', 1323.9, -1842.27, -89.083, 1701.9, -1722.26, 110.916, 0, 0),
(84, 0, 'COM1a', 'Commerce', 1323.9, -1722.26, -89.083, 1440.9, -1577.59, 110.916, 0, 0),
(85, 0, 'COM1b', 'Commerce', 1370.85, -1577.59, -89.083, 1463.9, -1384.95, 110.916, 0, 0),
(86, 0, 'COM2', 'Commerce', 1463.9, -1577.59, -89.083, 1667.96, -1430.87, 110.916, 0, 0),
(87, 0, 'COM3', 'Commerce', 1667.96, -1577.59, -89.083, 1812.62, -1430.87, 110.916, 0, 0),
(88, 0, 'COM4', 'Commerce', 1583.5, -1722.26, -89.083, 1758.9, -1577.59, 110.916, 0, 0),
(89, 0, 'ELS1a', 'East Los Santos', 2281.45, -1372.04, -89.083, 2381.68, -1135.04, 110.916, 1, 0),
(90, 0, 'ELS1b', 'East Los Santos', 2381.68, -1454.35, -89.083, 2462.13, -1135.04, 110.916, 1, 0),
(91, 0, 'ELS2', 'East Los Santos', 2462.13, -1454.35, -89.083, 2581.73, -1135.04, 110.916, 1, 0),
(92, 0, 'ELS3a', 'East Los Santos', 2222.56, -1628.53, -89.083, 2421.03, -1494.03, 110.916, 1, 0),
(93, 0, 'ELS3b', 'East Los Santos', 2266.26, -1494.03, -89.083, 2381.68, -1372.04, 110.916, 1, 0),
(94, 0, 'ELS3c', 'East Los Santos', 2381.68, -1494.03, -89.083, 2421.03, -1454.35, 110.916, 1, 0),
(95, 0, 'ELS4', 'East Los Santos', 2421.03, -1628.53, -89.083, 2632.83, -1454.35, 110.916, 1, 0),
(96, 242, 'EBE1', 'East Beach', 2747.74, -1498.62, -89.083, 2959.35, -1120.04, 110.916, 1, 301502855),
(97, 0, 'EBE2a', 'East Beach', 2632.83, -1668.13, -89.083, 2747.74, -1393.42, 110.916, 1, 0),
(98, 242, 'EBE2b', 'East Beach', 2747.74, -1668.13, -89.083, 2959.35, -1498.62, 110.916, 1, 301502855),
(99, 242, 'EBE3c', 'East Beach', 2632.83, -1852.87, -89.083, 2959.35, -1668.13, 110.916, 1, 301502855),
(100, 0, 'PER1', 'Pershing Square', 1440.9, -1722.26, -89.083, 1583.5, -1577.59, 110.916, 0, 0),
(101, 228, 'IWD1', 'Idlewood', 1812.62, -1602.31, -89.083, 2124.66, -1449.67, 110.916, 1, -1617666937),
(102, 190, 'IWD2', 'Idlewood', 2124.66, -1742.31, -89.083, 2222.56, -1494.03, 110.916, 1, 1545260167),
(103, 190, 'IWD3a', 'Idlewood', 1812.62, -1852.87, -89.083, 1971.66, -1742.31, 110.916, 1, 1545260167),
(104, 0, 'IWD3b', 'Idlewood', 1812.62, -1742.31, -89.083, 1951.66, -1602.31, 110.916, 1, 0),
(105, 0, 'IWD4', 'Idlewood', 1951.66, -1742.31, -89.083, 2124.66, -1602.31, 110.916, 1, 0),
(106, 190, 'IWD5', 'Idlewood', 1971.66, -1852.87, -89.083, 2222.56, -1742.31, 110.916, 1, 1545260167),
(107, 228, 'GAN1', 'Ganton', 2222.56, -1722.33, -89.083, 2632.83, -1628.53, 110.916, 1, -1617666937),
(108, 228, 'GAN2', 'Ganton', 2222.56, -1852.87, -89.083, 2632.83, -1722.33, 110.916, 1, -1617666937),
(109, 0, 'CONF1a', 'Conference Center', 1073.22, -1842.27, -89.083, 1323.9, -1804.21, 110.916, 0, 0),
(110, 0, 'CONF1b', 'Conference Center', 1046.15, -1804.21, -89.083, 1323.9, -1722.26, 110.916, 0, 0),
(111, 0, 'CITYS', 'City Hall', -2867.85, 277.411, 0, -2593.44, 458.411, 200, 0, 0),
(112, 0, 'LMEX1a', 'Little Mexico', 1701.9, -1842.27, -89.083, 1812.62, -1722.26, 110.916, 1, 0),
(113, 0, 'LMEX1b', 'Little Mexico', 1758.9, -1722.26, -89.083, 1812.62, -1577.59, 110.916, 1, 0),
(114, 0, 'UNITY', 'Unity Station', 1692.62, -1971.8, -20.492, 1812.62, -1932.8, 79.507, 0, 0),
(115, 0, 'SMB1', 'Santa Maria Beach', 342.648, -2173.29, -89.083, 647.711, -1684.65, 110.916, 0, 0),
(116, 0, 'SMB2', 'Santa Maria Beach', 72.648, -2173.29, -89.083, 342.648, -1684.65, 110.916, 0, 0),
(117, 0, 'VERO1', 'Verona Beach', 851.448, -1804.21, -89.083, 1046.15, -1577.59, 110.916, 0, 0),
(118, 0, 'VERO3', 'Verona Beach', 1161.52, -1722.26, -89.083, 1323.9, -1577.59, 110.916, 0, 0),
(119, 0, 'VERO4a', 'Verona Beach', 647.711, -2173.29, -89.083, 930.221, -1804.21, 110.916, 0, 0),
(120, 0, 'VERO4b', 'Verona Beach', 930.221, -2006.78, -89.083, 1073.22, -1804.21, 110.916, 0, 0),
(121, 0, 'LIND1a', 'Willowfield', 1970.62, -2179.25, -89.083, 2089, -1852.87, 110.916, 1, 0),
(122, 0, 'LIND1b', 'Willowfield', 2089, -2235.84, -89.083, 2201.82, -1989.9, 110.916, 1, 0),
(123, 0, 'LIND2a', 'Willowfield', 2089, -1989.9, -89.083, 2324, -1852.87, 110.916, 1, 0),
(124, 150, 'LIND2b', 'Willowfield', 2201.82, -2095, -89.083, 2324, -1989.9, 110.916, 1, -1976772729),
(125, 0, 'LIND3', 'Willowfield', 2324, -2059.23, -89.083, 2541.7, -1852.87, 110.916, 1, 0),
(126, 0, 'LIND4a', 'Willowfield', 2541.7, -2059.23, -89.083, 2703.58, -1941.4, 110.916, 1, 0),
(127, 0, 'LIND4c', 'Willowfield', 2541.7, -1941.4, -89.083, 2703.58, -1852.87, 110.916, 1, 0),
(128, 0, 'ELCO1', 'El Corona', 1692.62, -2179.25, -89.083, 1812.62, -1842.27, 110.916, 0, 0),
(129, 216, 'ELCO2', 'El Corona', 1812.62, -2179.25, -89.083, 1970.62, -1852.87, 110.916, 1, 948890247),
(130, 0, 'PLS', 'Playa del Seville', 2703.58, -2126.9, -89.083, 2959.35, -1852.87, 110.916, 1, 0),
(131, 0, 'BLUF1a', 'Verdant Bluffs', 930.221, -2488.42, -89.083, 1249.62, -2006.78, 110.916, 0, 0),
(132, 0, 'BLUF1b', 'Verdant Bluffs', 1073.22, -2006.78, -89.083, 1249.62, -1842.27, 110.916, 0, 0),
(133, 0, 'BLUF2', 'Verdant Bluffs', 1249.62, -2179.25, -89.083, 1692.62, -1842.27, 110.916, 0, 0),
(134, 0, 'LAIR1', 'Los Santos International', 1249.62, -2394.33, -89.083, 1852, -2179.25, 110.916, 0, 0),
(135, 0, 'LAIR2a', 'Los Santos International', 1852, -2394.33, -89.083, 2089, -2179.25, 110.916, 0, 0),
(136, 0, 'LAIR2b', 'Los Santos International', 1382.73, -2730.88, -89.083, 2201.82, -2394.33, 110.916, 0, 0),
(137, 0, 'LBAG1', 'Los Santos International', 1974.63, -2394.33, -39.083, 2089, -2256.59, 60.916, 0, 0),
(138, 0, 'LBAG2', 'Los Santos International', 1400.97, -2669.26, -39.083, 2189.82, -2597.26, 60.916, 0, 0),
(139, 0, 'LBAG3', 'Los Santos International', 2051.63, -2597.26, -39.083, 2152.45, -2394.33, 60.916, 0, 0),
(140, 243, 'LDOC1a', 'Ocean Docks', 2089, -2394.33, -89.083, 2201.82, -2235.84, 110.916, 1, -1876714105),
(141, 190, 'LDOC1b', 'Ocean Docks', 2201.82, -2418.33, -89.083, 2324, -2095, 110.916, 1, 1545260167),
(142, 0, 'LDOC2', 'Ocean Docks', 2324, -2145.1, -89.083, 2703.58, -2059.23, 110.916, 1, 0),
(143, 190, 'LDOC3a', 'Ocean Docks', 2324, -2302.33, -89.083, 2703.58, -2145.1, 110.916, 1, 1545260167),
(144, 230, 'LDOC3b', 'Ocean Docks', 2201.82, -2730.88, -89.083, 2324, -2418.33, 110.916, 1, 76926343),
(145, 0, 'LDOC3c', 'Ocean Docks', 2703.58, -2302.33, -89.083, 2959.35, -2126.9, 110.916, 1, 0),
(146, 0, 'LDOC4', 'Ocean Docks', 2373.77, -2697.09, -89.083, 2809.22, -2330.46, 110.916, 0, 0),
(147, 0, 'RED', 'Red County', -1213.91, -768.026, -242.99, 2997.06, 596.348, 900, 0, 0),
(148, 0, 'MONT', 'Montgomery', 1119.51, 119.526, 0, 1451.4, 493.322, 200, 0, 0),
(149, 0, 'MONT1', 'Montgomery', 1451.4, 347.457, 0, 1582.44, 420.802, 200, 0, 0),
(150, 0, 'MONINT', 'Montgomery Intersection', 1546.65, 208.164, 0, 1745.83, 347.457, 200, 0, 0),
(151, 0, 'MONINT', 'Montgomery Intersection', 1582.44, 347.457, 0, 1664.62, 401.75, 200, 0, 0),
(152, 0, 'HBARNS', 'Hampton Barns', 603.034, 264.312, 0, 761.994, 366.571, 200, 0, 0),
(153, 0, 'HANKY', 'Hankypanky Point', 2576.92, 62.157, 0, 2759.25, 385.502, 200, 0, 0),
(154, 0, 'BLUAC', 'Blueberry Acres', -319.675, -220.136, 0, 104.533, 293.324, 200, 0, 0),
(155, 0, 'FERN', 'Fern Ridge', 508.188, -139.259, 0, 1306.66, 119.526, 200, 0, 0),
(156, 0, 'PANOP', 'The Panopticon', -947.979, -304.32, 0, -319.675, 327.071, 200, 0, 0),
(157, 0, 'PALO', 'Palomino Creek', 2160.22, -149.003, 0, 2576.92, 228.322, 200, 0, 0),
(158, 242, 'BLUEB', 'Blueberry', 19.607, -404.135, 0, 349.606, -220.136, 200, 1, 301502855),
(159, 0, 'BLUEB1', 'Blueberry', 104.533, -220.136, 0, 349.606, 152.235, 200, 0, 0),
(160, 0, 'TOPFA', 'Hilltop Farm', 967.382, -450.39, 0, 1176.78, -217.899, 200, 0, 0),
(161, 0, 'NROCK', 'North Rock', 2285.37, -768.026, 0, 2770.59, -269.739, 200, 0, 0),
(162, 0, 'DILLI', 'Dillimore', 580.794, -674.885, 0, 861.085, -404.79, 200, 0, 0),
(163, 0, 'SF', 'San Fierro', -2997.47, -1115.58, -242.99, -1213.91, 1659.68, 900, 0, 0),
(164, 238, 'BATTP', 'Battery Point', -2741.07, 1268.41, 0, -2533.04, 1490.47, 200, 1, 762641799),
(165, 0, 'ESPN1', 'Esplanade North', -2533.04, 1358.9, 0, -1996.66, 1501.21, 200, 0, 0),
(166, 238, 'ESPN2', 'Esplanade North', -1996.66, 1358.9, 0, -1524.24, 1592.51, 200, 1, 762641799),
(167, 238, 'ESPN3', 'Esplanade North', -1982.32, 1274.26, 0, -1524.24, 1358.9, 200, 1, 762641799),
(168, 0, 'ESPE1', 'Esplanade East', -1620.3, 1176.52, 0, -1580.01, 1274.26, 200, 0, 0),
(169, 0, 'ESPE2', 'Esplanade East', -1580.01, 1025.98, 0, -1499.89, 1274.26, 200, 0, 0),
(170, 0, 'ESPE3', 'Esplanade East', -1499.89, 578.395, -79.615, -1339.89, 1274.26, 20.384, 0, 0),
(171, 0, 'JUNIHO', 'Juniper Hollow', -2533.04, 968.369, 0, -2274.17, 1358.9, 200, 0, 0),
(172, 0, 'SFDWT1', 'Downtown', -1982.32, 744.169, 0, -1871.72, 1274.26, 200, 0, 0),
(173, 238, 'SFDWT2', 'Downtown', -1871.72, 1176.42, 0, -1620.3, 1274.26, 200, 1, 762641799),
(174, 0, 'SFDWT3', 'Downtown', -1700.01, 744.267, 0, -1580.01, 1176.52, 200, 0, 0),
(175, 0, 'SFDWT4', 'Downtown', -1580.01, 744.267, 0, -1499.89, 1025.98, 200, 0, 0),
(176, 0, 'SFDWT5', 'Downtown', -2078.67, 578.395, 0, -1499.89, 744.267, 200, 0, 0),
(177, 0, 'SFDWT6', 'Downtown', -1993.28, 265.243, 0, -1794.92, 578.395, 200, 0, 0),
(178, 0, 'PARA', 'Paradiso', -2741.07, 793.411, 0, -2533.04, 1268.41, 200, 0, 0),
(179, 0, 'CALT', 'Calton Heights', -2274.17, 744.169, 0, -1982.32, 1358.9, 200, 0, 0),
(180, 0, 'FINA', 'Financial', -1871.72, 744.169, 0, -1701.3, 1176.42, 300, 0, 0),
(181, 0, 'BAYV', 'Palisades', -2994.49, 458.411, 0, -2741.07, 1339.61, 200, 0, 0),
(182, 0, 'JUNIHI', 'Juniper Hill', -2533.04, 578.395, 0, -2274.17, 968.369, 200, 0, 0),
(183, 238, 'CHINA', 'Chinatown', -2274.17, 578.395, 0, -2078.67, 744.169, 200, 1, 762641799),
(184, 0, 'CIVI', 'Santa Flora', -2741.07, 458.411, 0, -2533.04, 793.411, 200, 0, 0),
(185, 0, 'WESTP1', 'Queens', -2533.04, 458.411, 0, -2329.31, 578.395, 200, 0, 0),
(186, 0, 'WESTP2', 'Queens', -2593.44, 54.722, 0, -2411.22, 458.411, 200, 0, 0),
(187, 0, 'WESTP3', 'Queens', -2411.22, 373.539, 0, -2253.54, 458.411, 200, 0, 0),
(188, 0, 'CITYS', 'City Hall', -2867.85, 277.411, 0, -2593.44, 458.411, 200, 0, 0),
(189, 0, 'EASB1', 'Easter Basin', -1794.92, 249.904, 0, -1242.98, 578.395, 200, 0, 0),
(190, 238, 'EASB2', 'Easter Basin', -1794.92, -50.096, 0, -1499.89, 249.904, 200, 1, 762641799),
(191, 0, 'GARC', 'Garcia', -2411.22, -222.589, 0, -2173.04, 265.243, 200, 0, 0),
(192, 0, 'SFGLF3', 'Garcia', -2395.14, -222.589, 0, -2354.09, -204.792, 200, 0, 0),
(193, 0, 'CRANB', 'Cranberry Station', -2007.83, 56.306, 0, -1922, 224.781, 100, 0, 0),
(194, 0, 'OCEAF1', 'Ocean Flats', -2994.49, 277.411, 0, -2867.85, 458.411, 200, 0, 0),
(195, 0, 'OCEAF2', 'Ocean Flats', -2994.49, -222.589, 0, -2593.44, 277.411, 200, 0, 0),
(196, 0, 'OCEAF3', 'Ocean Flats', -2994.49, -430.276, 0, -2831.89, -222.589, 200, 0, 0),
(197, 0, 'HASH', 'Hashbury', -2593.44, -222.589, 0, -2411.22, 54.722, 200, 1, 0),
(198, 238, 'DOH1', 'Doherty', -2270.04, -324.114, 0, -1794.92, -222.589, 200, 1, 762641799),
(199, 238, 'DOH2', 'Doherty', -2173.04, -222.589, 0, -1794.92, 265.243, 200, 1, 762641799),
(200, 0, 'SFBAG2', 'Easter Bay Airport', -1315.42, -405.388, 15.406, -1264.4, -209.542, 25.406, 0, 0),
(201, 0, 'SFBAG3', 'Easter Bay Airport', -1354.39, -287.398, 15.406, -1315.42, -209.542, 25.406, 0, 0),
(202, 0, 'SFBAG1', 'Easter Bay Airport', -1490.33, -209.542, 15.406, -1264.4, -148.388, 25.406, 0, 0),
(203, 0, 'SFAIR1', 'Easter Bay Airport', -1794.92, -730.117, 0, -1213.91, -50.096, 200, 0, 0),
(204, 0, 'SFAIR2', 'Easter Bay Airport', -1242.98, -50.096, 0, -1213.91, 578.395, 200, 0, 0),
(205, 0, 'SFAIR3', 'Easter Bay Airport', -1499.89, -50.096, 0, -1242.98, 249.904, 200, 0, 0),
(206, 0, 'SFAIR4', 'Easter Bay Airport', -1213.91, -730.117, 0, -1132.82, -50.096, 200, 0, 0),
(207, 0, 'SFAIR5', 'Easter Bay Airport', -1213.91, -50.096, 0, -947.979, 578.395, 200, 0, 0),
(208, 0, 'FLINTC', 'Flint County', -1213.91, -2892.97, -242.99, 44.614, -768.026, 900, 0, 0),
(209, 0, 'CUNTC1', 'Avispa Country Club', -2470.04, -355.493, 0, -2270.04, -318.493, 46.099, 0, 0),
(210, 0, 'CUNTC2', 'Avispa Country Club', -2831.89, -430.276, 0, -2646.4, -222.589, 200, 0, 0),
(211, 0, 'CUNTC3', 'Avispa Country Club', -2550.04, -355.493, 0, -2470.04, -318.493, 39.7, 0, 0),
(212, 0, 'SFGLF1', 'Avispa Country Club', -2361.51, -417.199, 0, -2270.04, -355.493, 200, 0, 0),
(213, 0, 'SFGLF2', 'Avispa Country Club', -2667.81, -302.135, -28.83, -2646.4, -262.32, 71.169, 0, 0),
(214, 0, 'SFGLF4', 'Avispa Country Club', -2646.4, -355.493, 0, -2270.04, -222.589, 200, 0, 0),
(215, 0, 'HAUL', 'Fallen Tree', -792.254, -698.554, 0, -452.403, -380.042, 200, 0, 0),
(216, 0, 'HILLP', 'Missionary Hill', -2994.49, -811.276, 0, -2178.69, -430.276, 200, 0, 0),
(217, 238, 'EBAY', 'Easter Bay Chemical', -1132.82, -768.026, 0, -956.476, -578.117, 200, 1, 762641799),
(218, 0, 'EBAY2', 'Easter Bay Chemical', -1132.82, -787.39, 0, -956.476, -768.026, 200, 1, 0),
(219, 0, 'ETUNN', 'Easter Tunnel', -1709.71, -833.033, 0, -1446.01, -730.117, 200, 0, 0),
(220, 0, 'SILLY1', 'Foster Valley', -2178.69, -1115.58, 0, -1794.92, -599.883, 200, 0, 0),
(221, 0, 'SILLY2', 'Foster Valley', -2178.69, -1250.97, 0, -1794.92, -1115.58, 200, 0, 0),
(222, 0, 'SILLY3', 'Foster Valley', -2270.04, -430.276, 0, -2178.69, -324.114, 200, 0, 0),
(223, 0, 'SILLY4', 'Foster Valley', -2178.69, -599.883, 0, -1794.92, -324.114, 200, 0, 0),
(224, 0, 'FARM', 'The Farm', -1209.67, -1317.1, 114.981, -908.161, -787.39, 251.981, 0, 0),
(225, 0, 'BEACO', 'Beacon Hill', -399.632, -1075.52, -1.489, -319.032, -977.515, 198.511, 0, 0),
(226, 0, 'FLINTI', 'Flint Intersection', -187.699, -1596.76, -89.083, 17.063, -1276.6, 110.916, 0, 0),
(227, 0, 'FLINTR', 'Flint Range', -594.19, -1648.55, 0, -187.699, -1276.6, 200, 0, 0),
(228, 0, 'LEAFY', 'Leafy Hollow', -1166.97, -1856.03, 0, -815.624, -1602.07, 200, 0, 0),
(229, 0, 'BACKO', 'Back o Beyond', -1166.97, -2641.19, 0, -321.743, -1856.03, 200, 0, 0),
(230, 0, 'WHET', 'Whetstone', -2997.47, -2892.97, -242.99, -1213.91, -1115.58, 900, 0, 0),
(231, 0, 'MTCHI1', 'Mount Chiliad', -2994.49, -2189.91, -47.916, -2178.69, -1115.58, 576.083, 0, 0),
(232, 0, 'MTCHI2', 'Mount Chiliad', -2178.69, -1771.66, -47.916, -1936.12, -1250.97, 576.083, 0, 0),
(233, 0, 'MTCHI3', 'Mount Chiliad', -2997.47, -1115.58, -47.916, -2178.69, -971.913, 576.083, 0, 0),
(234, 0, 'MTCHI4', 'Mount Chiliad', -2178.69, -2189.91, -47.916, -2030.12, -1771.66, 576.083, 0, 0),
(235, 0, 'CREEK', 'Shady Creeks', -1820.64, -2643.68, 0, -1226.78, -1771.66, 200, 0, 0),
(236, 0, 'CREEK1', 'Shady Creeks', -2030.12, -2174.89, 0, -1820.64, -1771.66, 200, 0, 0),
(237, 0, 'SHACA', 'Shady Cabin', -1632.83, -2263.44, 0, -1601.33, -2231.79, 200, 0, 0),
(238, 0, 'ANGPI', 'Angel Pine', -2324.94, -2584.29, 0, -1964.22, -2212.11, 200, 0, 0),
(239, 0, 'VE', 'Las Venturas', 869.46, 596.348, -242.99, 2997.06, 2993.87, 900, 0, 0),
(240, 0, 'YBELL1', 'Yellow Bell Golf Course', 1117.4, 2723.23, -89.083, 1457.46, 2863.23, 110.916, 0, 0),
(241, 0, 'YBELL2', 'Yellow Bell Golf Course', 1457.46, 2723.23, -89.083, 1534.56, 2863.23, 110.916, 0, 0),
(242, 0, 'SPIN', 'Spinybed', 2121.4, 2663.17, -89.083, 2498.21, 2861.55, 110.916, 0, 0),
(243, 0, 'KACC', 'K.A.C.C. Military Fuels', 2498.21, 2626.55, -89.083, 2749.9, 2861.55, 110.916, 0, 0),
(244, 0, 'PRP1', 'Prickle Pine', 1534.56, 2583.23, -89.083, 1848.4, 2863.23, 110.916, 0, 0),
(245, 0, 'PRP2', 'Prickle Pine', 1117.4, 2507.23, -89.083, 1534.56, 2723.23, 110.916, 0, 0),
(246, 0, 'PRP3', 'Prickle Pine', 1848.4, 2553.49, -89.083, 1938.8, 2863.23, 110.916, 0, 0),
(247, 0, 'PRP4', 'Prickle Pine', 1938.8, 2624.23, -89.083, 2121.4, 2861.55, 110.916, 0, 0),
(248, 0, 'YELLOW', 'Yellow Bell Station', 1377.48, 2600.43, -21.926, 1492.45, 2687.36, 78.073, 0, 0),
(249, 0, 'JTN1', 'Julius Thruway North', 2498.21, 2542.55, -89.083, 2685.16, 2626.55, 110.916, 0, 0),
(250, 0, 'JTN2', 'Julius Thruway North', 2237.4, 2542.55, -89.083, 2498.21, 2663.17, 110.916, 0, 0),
(251, 0, 'JTN3', 'Julius Thruway North', 2121.4, 2508.23, -89.083, 2237.4, 2663.17, 110.916, 0, 0),
(252, 0, 'JTN4', 'Julius Thruway North', 1938.8, 2508.23, -89.083, 2121.4, 2624.23, 110.916, 0, 0),
(253, 0, 'JTN5', 'Julius Thruway North', 1534.56, 2433.23, -89.083, 1848.4, 2583.23, 110.916, 0, 0),
(254, 0, 'JTN6', 'Julius Thruway North', 1848.4, 2478.49, -89.083, 1938.8, 2553.49, 110.916, 0, 0),
(255, 0, 'JTN7', 'Julius Thruway North', 1377.39, 2433.23, -89.083, 1534.56, 2507.23, 110.916, 0, 0),
(256, 0, 'JTN8', 'Julius Thruway North', 1704.59, 2342.83, -89.083, 1848.4, 2433.23, 110.916, 0, 0),
(257, 0, 'PINT', 'Pilson Intersection', 1098.39, 2243.23, -89.083, 1377.39, 2507.23, 110.916, 0, 0),
(258, 0, 'ISLE', 'The Emerald Isle', 2011.94, 2202.76, -89.083, 2237.4, 2508.23, 110.916, 0, 0),
(259, 0, 'ROCE1', 'Roca Escalante', 2237.4, 2202.76, -89.083, 2536.43, 2542.55, 110.916, 0, 0),
(260, 0, 'ROCE2', 'Roca Escalante', 2536.43, 2202.76, -89.083, 2625.16, 2442.55, 110.916, 0, 0),
(261, 256, 'WWE', 'Whitewood Estates', 883.307, 1726.22, -89.083, 1098.31, 2507.23, 110.916, 1, -374657145),
(262, 0, 'WWE1', 'Whitewood Estates', 1098.31, 1726.22, -89.083, 1197.39, 2243.23, 110.916, 0, 0),
(263, 256, 'OVS', 'Old Venturas Strip', 2162.39, 2012.18, -89.083, 2685.16, 2202.76, 110.916, 1, -374657145),
(264, 0, 'CREE', 'Creek', 2749.9, 1937.25, -89.083, 2921.62, 2669.79, 110.916, 0, 0),
(265, 0, 'REDE1', 'Redsands East', 1817.39, 2011.83, -89.083, 2106.7, 2202.76, 110.916, 0, 0),
(266, 0, 'REDE2', 'Redsands East', 1817.39, 2202.76, -89.083, 2011.94, 2342.83, 110.916, 0, 0),
(267, 0, 'REDE3', 'Redsands East', 1848.4, 2342.83, -89.083, 2011.94, 2478.49, 110.916, 0, 0),
(268, 0, 'REDW1', 'Redsands West', 1297.47, 2142.86, -89.083, 1777.39, 2243.23, 110.916, 0, 0),
(269, 0, 'REDW2', 'Redsands West', 1236.63, 1883.11, -89.083, 1777.39, 2142.86, 110.916, 0, 0),
(270, 244, 'REDW3', 'Redsands West', 1377.39, 2243.23, -89.083, 1704.59, 2433.23, 110.916, 1, -541510265),
(271, 0, 'REDW4', 'Redsands West', 1704.59, 2243.23, -89.083, 1777.39, 2342.83, 110.916, 1, 0),
(272, 0, 'HGP', 'Harry Gold Parkway', 1777.39, 863.231, -89.083, 1817.39, 2342.83, 110.916, 0, 0),
(273, 150, 'STRIP1', 'The Strip', 2027.4, 863.229, -89.083, 2087.39, 1703.23, 110.916, 1, -1976772729),
(274, 150, 'STRIP2', 'The Strip', 2106.7, 1863.23, -89.083, 2162.39, 2202.76, 110.916, 1, -1976772729),
(275, 0, 'JTW1', 'Julius Thruway West', 1197.39, 1163.39, -89.083, 1236.63, 2243.23, 110.916, 0, 0),
(276, 0, 'JTW2', 'Julius Thruway West', 1236.63, 2142.86, -89.083, 1297.47, 2243.23, 110.916, 0, 0),
(277, 228, 'VISA1', 'The Visage', 1817.39, 1863.23, -89.083, 2106.7, 2011.83, 110.916, 1, -1617666937),
(278, 150, 'VISA2', 'The Visage', 1817.39, 1703.23, -89.083, 2027.4, 1863.23, 110.916, 1, -1976772729),
(279, 0, 'STAR1', 'Starfish Casino', 2162.39, 1883.23, -89.083, 2437.39, 2012.18, 110.916, 1, 0),
(280, 0, 'STAR2', 'Starfish Casino', 2437.39, 1783.23, -89.083, 2685.16, 2012.18, 110.916, 0, 0),
(281, 0, 'CONST1', 'Starfish Casino', 2437.39, 1858.1, -39.083, 2495.09, 1970.85, 60.916, 0, 0),
(282, 0, 'SRY', 'Sobell Rail Yards', 2749.9, 1548.99, -89.083, 2923.39, 1937.25, 110.916, 0, 0),
(283, 0, 'JTE1', 'Julius Thruway East', 2685.16, 1055.96, -89.083, 2749.9, 2626.55, 110.916, 0, 0),
(284, 0, 'JTE2', 'Julius Thruway East', 2623.18, 943.234, -89.083, 2749.9, 1055.96, 110.916, 0, 0),
(285, 0, 'JTE3', 'Julius Thruway East', 2625.16, 2202.76, -89.083, 2685.16, 2442.55, 110.916, 0, 0),
(286, 0, 'JTE4', 'Julius Thruway East', 2536.43, 2442.55, -89.083, 2685.16, 2542.55, 110.916, 0, 0),
(287, 0, 'BFLD1', 'Blackfield', 964.39, 1203.22, -89.083, 1197.39, 1403.22, 110.916, 1, 0),
(288, 0, 'BFLD2', 'Blackfield', 964.39, 1403.22, -89.083, 1197.39, 1726.22, 110.916, 0, 0),
(289, 0, 'VAIR1', 'Las Venturas Airport', 1236.63, 1203.28, -89.083, 1457.37, 1883.11, 110.916, 0, 0),
(290, 0, 'VAIR2', 'Las Venturas Airport', 1457.37, 1203.28, -89.083, 1777.39, 1883.11, 110.916, 0, 0),
(291, 0, 'VAIR3', 'Las Venturas Airport', 1457.37, 1143.21, -89.083, 1777.4, 1203.28, 110.916, 0, 0),
(292, 0, 'LVBAG', 'Las Venturas Airport', 1515.81, 1586.4, -12.5, 1729.95, 1714.56, 87.5, 0, 0),
(293, 150, 'ROY', 'Royal Casino', 2087.39, 1383.23, -89.083, 2437.39, 1543.23, 110.916, 1, -1976772729),
(294, 0, 'PILL1', 'Pilgrim', 2437.39, 1383.23, -89.083, 2624.4, 1783.23, 110.916, 0, 0),
(295, 0, 'PILL2', 'Pilgrim', 2624.4, 1383.23, -89.083, 2685.16, 1783.23, 110.916, 0, 0),
(296, 0, 'LST', 'Linden Station', 2749.9, 1198.99, -89.083, 2923.39, 1548.99, 110.916, 0, 0),
(297, 0, 'LINDEN', 'Linden Station', 2811.25, 1229.59, -39.594, 2861.25, 1407.59, 60.405, 0, 0),
(298, 150, 'HIGH', 'The High Roller', 1817.39, 1283.23, -89.083, 2027.39, 1469.23, 110.916, 1, -1976772729),
(299, 150, 'STRIP3', 'The Strip', 2027.4, 1783.23, -89.083, 2162.39, 1863.23, 110.916, 1, -1976772729),
(300, 150, 'STRIP4', 'The Strip', 2027.4, 1703.23, -89.083, 2137.4, 1783.23, 110.916, 1, -1976772729),
(301, 0, 'PINK', 'The Pink Swan', 1817.39, 1083.23, -89.083, 2027.39, 1283.23, 110.916, 1, 0),
(302, 0, 'GGC1', 'Greenglass College', 964.39, 1044.69, -89.083, 1197.39, 1203.22, 110.916, 0, 0),
(303, 0, 'GGC2', 'Greenglass College', 964.39, 930.89, -89.083, 1166.53, 1044.69, 110.916, 0, 0),
(304, 150, 'LDS', 'Linden Side', 2749.9, 943.234, -89.083, 2923.39, 1198.99, 110.916, 1, -1976772729),
(305, 110, 'LVA1', 'LVA Freight Depot', 1457.39, 863.229, -89.083, 1777.4, 1143.21, 110.916, 1, 10092423),
(306, 0, 'LVA2', 'LVA Freight Depot', 1375.6, 919.447, -89.083, 1457.37, 1203.28, 110.916, 0, 0),
(307, 0, 'LVA3', 'LVA Freight Depot', 1277.05, 1087.63, -89.083, 1375.6, 1203.28, 110.916, 0, 0),
(308, 0, 'LVA4', 'LVA Freight Depot', 1315.35, 1044.69, -89.083, 1375.6, 1087.63, 110.916, 0, 0),
(309, 0, 'LVA5', 'LVA Freight Depot', 1236.63, 1163.41, -89.083, 1277.05, 1203.28, 110.916, 0, 0),
(310, 187, 'DRAG', 'The Four Dragons Casino', 1817.39, 863.231, -89.083, 2027.39, 1083.23, 110.916, 1, -15428729),
(311, 187, 'LOT', 'Come-A-Lot', 2087.39, 943.234, -89.083, 2623.18, 1203.23, 110.916, 1, -15428729),
(312, 0, 'BINT1', 'Blackfield Intersection', 1166.53, 795.01, -89.083, 1375.6, 1044.69, 110.916, 0, 0),
(313, 0, 'BINT2', 'Blackfield Intersection', 1197.39, 1044.69, -89.083, 1277.05, 1163.39, 110.916, 0, 0),
(314, 0, 'BINT3', 'Blackfield Intersection', 1277.05, 1044.69, -89.083, 1315.35, 1087.63, 110.916, 0, 0),
(315, 0, 'BINT4', 'Blackfield Intersection', 1375.6, 823.228, -89.083, 1457.39, 919.447, 110.916, 0, 0),
(316, 0, 'JTS1', 'Julius Thruway South', 1457.39, 823.228, -89.083, 2377.39, 863.229, 110.916, 0, 0),
(317, 0, 'JTS2', 'Julius Thruway South', 2377.39, 788.893, -89.083, 2537.39, 897.901, 110.916, 0, 0),
(318, 0, 'BFC1', 'Blackfield Chapel', 1375.6, 596.348, -89.083, 1558.09, 823.228, 110.916, 0, 0),
(319, 0, 'BFC2', 'Blackfield Chapel', 1325.6, 596.348, -89.083, 1375.6, 795.01, 110.916, 0, 0),
(320, 0, 'RIE', 'Randolph Industrial Estate', 1558.09, 596.348, -89.083, 1823.08, 823.234, 110.916, 0, 0),
(321, 0, 'LDM', 'Last Dime Motel', 1823.08, 596.348, -89.083, 1997.22, 823.228, 110.916, 0, 0),
(322, 150, 'RSE', 'Rockshore East', 2537.39, 676.549, -89.083, 2902.35, 943.234, 110.916, 1, -1976772729),
(323, 150, 'RSW1', 'Rockshore West', 1997.22, 596.348, -89.083, 2377.39, 823.228, 110.916, 1, -1976772729),
(324, 0, 'ROBAD', 'Tierra Robada', -2997.47, 1659.68, -242.99, -480.539, 2993.87, 900, 0, 0),
(325, 0, 'ROBAD1', 'Tierra Robada', -1213.91, 596.348, -242.99, -480.539, 1659.68, 900, 0, 0),
(326, 0, 'ELQUE', 'El Quebrados', -1645.23, 2498.52, 0, -1372.14, 2777.85, 200, 0, 0),
(327, 0, 'SUNNN', 'Bayside', -2741.07, 2175.15, 0, -2353.17, 2722.79, 200, 0, 0),
(328, 0, 'BYTUN', 'Bayside Tunnel', -2290.19, 2548.29, -89.083, -1950.19, 2723.29, 110.916, 0, 0),
(329, 0, 'ALDEA', 'Aldea Malvada', -1372.14, 2498.52, 0, -1277.59, 2615.35, 200, 1, 0),
(330, 0, 'SUNMA', 'Bayside Marina', -2353.17, 2275.79, 0, -2153.17, 2475.79, 200, 0, 0),
(331, 238, 'BARRA', 'Las Barrancas', -926.13, 1398.73, 0, -719.234, 1634.69, 200, 1, 762641799),
(332, 0, 'ROBINT', 'Robada Intersection', -1119.01, 1178.93, -89.083, -862.025, 1351.45, 110.916, 0, 0),
(333, 0, 'BONE', 'Bone County', -480.539, 596.348, -242.99, 869.46, 2993.87, 900, 0, 0),
(334, 0, 'PAYAS', 'Las Payasadas', -354.332, 2580.36, 0, -133.625, 2816.82, 200, 0, 0),
(335, 0, 'VALLE', 'Valle Ocultado', -936.668, 2611.44, 0, -715.96, 2847.9, 200, 0, 0),
(336, 256, 'ELCA', 'El Castillo del Diablo', -464.515, 2217.68, 0, -208.57, 2580.36, 200, 1, -374657145),
(337, 216, 'ELCA1', 'El Castillo del Diablo', -208.57, 2123.01, 0, 114.032, 2337.18, 200, 1, 948890247),
(338, 0, 'ELCA2', 'El Castillo del Diablo', -208.57, 2337.18, 0, 8.429, 2487.18, 200, 0, 0),
(339, 238, 'ARCO', 'Arco del Oeste', -901.129, 2221.86, 0, -592.09, 2571.97, 200, 1, 762641799),
(340, 0, 'MEAD', 'Verdant Meadows', 37.032, 2337.18, 0, 435.988, 2677.9, 200, 0, 0),
(341, 216, 'BRUJA', 'Las Brujas', -365.166, 2123.01, 0, -208.57, 2217.68, 200, 1, 948890247),
(342, 0, 'TOM', 'Regular Tom', -405.769, 1712.86, 0, -276.718, 1892.75, 200, 1, 0),
(343, 0, 'REST', 'Restricted Area', -91.585, 1655.05, -50, 421.234, 2123.01, 250, 0, 0),
(344, 0, 'PALMS', 'Green Palms', 176.58, 1305.45, 0, 338.657, 1520.72, 200, 0, 0),
(345, 0, 'OCTAN', 'Octane Springs', 338.657, 1228.51, 0, 664.307, 1655.05, 200, 0, 0),
(346, 0, 'CARSO', 'Fort Carson', -376.233, 826.325, 0, 123.717, 1220.44, 200, 0, 0),
(347, 0, 'QUARY', 'Hunter Quarry', 337.243, 710.84, -115.238, 860.554, 1031.71, 203.761, 0, 0),
(348, 0, 'LSINL', 'Los Santos Inlet', -321.743, -2224.43, -89.083, 44.614, -1724.43, 110.916, 0, 0),
(349, 0, 'FLINW', 'Flint Water', -314.425, -753.874, -89.083, -106.338, -463.072, 110.916, 0, 0),
(350, 238, 'SANB1', 'San Fierro Bay', -2616.4, 1501.21, 0, -1996.66, 1659.68, 200, 1, 762641799),
(351, 0, 'SANB2', 'San Fierro Bay', -2616.4, 1659.68, 0, -1996.66, 2175.15, 200, 0, 0),
(352, 0, 'SHERR', 'Sherman Reservoir', -789.736, 1659.68, -89.083, -599.505, 1929.41, 110.916, 0, 0),
(353, 0, 'SASO', 'San Andreas Sound', 2450.39, 385.502, -100, 2759.25, 562.348, 200, 0, 0),
(354, 0, 'GANTB', 'Gant Bridge', -2741.45, 1659.68, 0, -2616.4, 2175.15, 200, 0, 0),
(355, 0, 'GANTB1', 'Gant Bridge', -2741.07, 1490.47, 0, -2616.4, 1659.68, 200, 0, 0),
(356, 0, 'DAM', 'The Sherman Dam', -968.771, 1929.41, 0, -481.126, 2155.26, 200, 0, 0),
(357, 0, 'GARV', 'Garver Bridge', -1339.89, 828.129, -89.083, -1213.91, 1057.04, 110.916, 0, 0),
(358, 0, 'GARV1', 'Garver Bridge', -1213.91, 950.021, -89.083, -1087.93, 1178.93, 110.916, 0, 0),
(359, 0, 'GARV2', 'Garver Bridge', -1499.89, 696.442, -179.615, -1339.89, 925.353, 20.384, 0, 0),
(360, 0, 'KINC', 'Kincaid Bridge', -1339.89, 599.218, -89.083, -1213.91, 828.129, 110.916, 0, 0),
(361, 0, 'KINC1', 'Kincaid Bridge', -1213.91, 721.111, -89.083, -1087.93, 950.021, 110.916, 0, 0),
(362, 0, 'KINC2', 'Kincaid Bridge', -1087.93, 855.369, -89.083, -961.95, 986.281, 110.916, 0, 0),
(363, 0, 'FALLO', 'Fallow Bridge', 434.341, 366.571, 0, 603.034, 555.679, 200, 0, 0),
(364, 0, 'MART', 'Martin Bridge', -222.179, 293.324, 0, -122.125, 476.464, 200, 0, 0),
(365, 0, 'MAKO', 'The Mako Span', 1664.62, 401.75, 0, 1785.14, 567.203, 200, 0, 0),
(366, 0, 'FRED', 'Frederick Bridge', 2759.25, 296.501, 0, 2774.25, 594.757, 200, 0, 0),
(367, 0, 'VERO2', 'Verona Beach', 1046.15, -1722.26, -89.0839, 1161.52, -1577.59, 110.916, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `achievements`
--
ALTER TABLE `achievements`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `action_queue`
--
ALTER TABLE `action_queue`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `actores_tiendas`
--
ALTER TABLE `actores_tiendas`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `admin_names`
--
ALTER TABLE `admin_names`
 ADD PRIMARY KEY (`#_ID`);

--
-- Indices de la tabla `aka`
--
ALTER TABLE `aka`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
 ADD PRIMARY KEY (`Id`), ADD UNIQUE KEY `Id` (`Id`);

--
-- Indices de la tabla `anti_spam`
--
ALTER TABLE `anti_spam`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `canal_dudas`
--
ALTER TABLE `canal_dudas`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `codigos_ropas`
--
ALTER TABLE `codigos_ropas`
 ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indices de la tabla `condecoraciones`
--
ALTER TABLE `condecoraciones`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `contadores_carreras`
--
ALTER TABLE `contadores_carreras`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `doors`
--
ALTER TABLE `doors`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `estadisticas_server`
--
ALTER TABLE `estadisticas_server`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `fabricas`
--
ALTER TABLE `fabricas`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `facciones`
--
ALTER TABLE `facciones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invitaciones`
--
ALTER TABLE `invitaciones`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_ingresos`
--
ALTER TABLE `log_ingresos`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_nombres`
--
ALTER TABLE `log_nombres`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_transacciones`
--
ALTER TABLE `log_transacciones`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_ventas`
--
ALTER TABLE `log_ventas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marihuana`
--
ALTER TABLE `marihuana`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
 ADD PRIMARY KEY (`pID`);

--
-- Indices de la tabla `post_rating`
--
ALTER TABLE `post_rating`
 ADD PRIMARY KEY (`rating_id`);

--
-- Indices de la tabla `prendas`
--
ALTER TABLE `prendas`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `p_vehicles`
--
ALTER TABLE `p_vehicles`
 ADD PRIMARY KEY (`id`), ADD KEY `GET` (`Propietario`) USING BTREE;

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros_admin`
--
ALTER TABLE `registros_admin`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `registros_sapd`
--
ALTER TABLE `registros_sapd`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `soporte`
--
ALTER TABLE `soporte`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_autorizadas`
--
ALTER TABLE `ventas_autorizadas`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `achievements`
--
ALTER TABLE `achievements`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `action_queue`
--
ALTER TABLE `action_queue`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2308;
--
-- AUTO_INCREMENT de la tabla `actores_tiendas`
--
ALTER TABLE `actores_tiendas`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `admin_names`
--
ALTER TABLE `admin_names`
MODIFY `#_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `aka`
--
ALTER TABLE `aka`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `anti_spam`
--
ALTER TABLE `anti_spam`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `canal_dudas`
--
ALTER TABLE `canal_dudas`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `codigos_ropas`
--
ALTER TABLE `codigos_ropas`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT de la tabla `condecoraciones`
--
ALTER TABLE `condecoraciones`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `contadores_carreras`
--
ALTER TABLE `contadores_carreras`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT de la tabla `doors`
--
ALTER TABLE `doors`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `estadisticas_server`
--
ALTER TABLE `estadisticas_server`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `fabricas`
--
ALTER TABLE `fabricas`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `facciones`
--
ALTER TABLE `facciones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT de la tabla `invitaciones`
--
ALTER TABLE `invitaciones`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log_ingresos`
--
ALTER TABLE `log_ingresos`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `log_nombres`
--
ALTER TABLE `log_nombres`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log_transacciones`
--
ALTER TABLE `log_transacciones`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log_ventas`
--
ALTER TABLE `log_ventas`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `marihuana`
--
ALTER TABLE `marihuana`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
MODIFY `pID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `post_rating`
--
ALTER TABLE `post_rating`
MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `prendas`
--
ALTER TABLE `prendas`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `p_vehicles`
--
ALTER TABLE `p_vehicles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `registros_admin`
--
ALTER TABLE `registros_admin`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registros_sapd`
--
ALTER TABLE `registros_sapd`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID Registro';
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT de la tabla `ventas_autorizadas`
--
ALTER TABLE `ventas_autorizadas`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=368;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
