-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.18-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- levisv2 için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `levisv2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci */;
USE `levisv2`;

-- tablo yapısı dökülüyor levisv2.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
('ssd1', 'Samsung 250GB 970 EVO\r\n', 1, -1, 0, 1),
('ssd2', 'XPG 512GB SPECTRIX', 2, -1, 0, 1),
('ram1', 'GSKILL 2600 8 GB', 1, -1, 0, 1),
('ram2', 'HyperX Fury 3200 16GB ', 2, -1, 0, 1),
('ekrankarti1', 'NVIDIA GTX 1050 TI', 1, -1, 0, 1),
('ekrankarti2', 'NVIDIA RTX 3060', 2, -1, 0, 1),
('anakart1', 'Asus PRIME A320M-K', 1, -1, 0, 1),
('anakart2', 'MSİ z490', 2, -1, 0, 1),
('islemci1', 'Core İ3 10100', 1, -1, 0, 1),
('islemci2', 'Core İ7 8700k', 2, -1, 0, 1),
('guckayna1', 'Cooler Master 500W', 1, -1, 0, 1),
('guckayna2', 'Asus Rog Strix 1000W\r\n\r\n', 1, -1, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
