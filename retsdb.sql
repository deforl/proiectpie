-- --------------------------------------------------------
-- Server:                       127.0.0.1
-- Versiune server:              10.0.21-MariaDB - mariadb.org binary distribution
-- SO server:                    Win64
-- HeidiSQL Versiune:            9.1.0.4867
-- --------------------------------------------------------
-- testing commit , sabin
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for restdb
DROP DATABASE IF EXISTS `restdb`;
CREATE DATABASE IF NOT EXISTS `restdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `restdb`;


-- Dumping structure for table restdb.comenzi
DROP TABLE IF EXISTS `comenzi`;
CREATE TABLE IF NOT EXISTS `comenzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ospatar` int(11) NOT NULL DEFAULT '0',
  `id_produs` int(11) NOT NULL DEFAULT '0',
  `id_masa` int(11) NOT NULL DEFAULT '0',
  `data` datetime NOT NULL,
  `cantitate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table restdb.comenzi: ~0 rows (aproximativ)
DELETE FROM `comenzi`;
/*!40000 ALTER TABLE `comenzi` DISABLE KEYS */;
/*!40000 ALTER TABLE `comenzi` ENABLE KEYS */;


-- Dumping structure for table restdb.mese
DROP TABLE IF EXISTS `mese`;
CREATE TABLE IF NOT EXISTS `mese` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilizator` int(11) NOT NULL DEFAULT '0',
  `denumire` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table restdb.mese: ~0 rows (aproximativ)
DELETE FROM `mese`;
/*!40000 ALTER TABLE `mese` DISABLE KEYS */;
/*!40000 ALTER TABLE `mese` ENABLE KEYS */;


-- Dumping structure for table restdb.ospatari
DROP TABLE IF EXISTS `ospatari`;
CREATE TABLE IF NOT EXISTS `ospatari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(50) DEFAULT '0',
  `prenume` varchar(50) DEFAULT '0',
  `id_utilizator` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table restdb.ospatari: ~0 rows (aproximativ)
DELETE FROM `ospatari`;
/*!40000 ALTER TABLE `ospatari` DISABLE KEYS */;
/*!40000 ALTER TABLE `ospatari` ENABLE KEYS */;


-- Dumping structure for table restdb.produse
DROP TABLE IF EXISTS `produse`;
CREATE TABLE IF NOT EXISTS `produse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `denumire` varchar(50) NOT NULL DEFAULT '0',
  `cantitate_implicita` int(11) NOT NULL DEFAULT '0',
  `tip` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table restdb.produse: ~0 rows (aproximativ)
DELETE FROM `produse`;
/*!40000 ALTER TABLE `produse` DISABLE KEYS */;
/*!40000 ALTER TABLE `produse` ENABLE KEYS */;


-- Dumping structure for table restdb.utilizatori
DROP TABLE IF EXISTS `utilizatori`;
CREATE TABLE IF NOT EXISTS `utilizatori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(50) NOT NULL DEFAULT '0',
  `parola` varchar(50) NOT NULL DEFAULT '0',
  `tip` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table restdb.utilizatori: ~0 rows (aproximativ)
DELETE FROM `utilizatori`;
/*!40000 ALTER TABLE `utilizatori` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilizatori` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
