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
  `id` int(11) NOT NULL,
  `id_ospatar` int(11) NOT NULL DEFAULT '0',
  `id_produs` int(11) NOT NULL DEFAULT '0',
  `id_masa` int(11) NOT NULL DEFAULT '0',
  `data` datetime NOT NULL,
  `cantitate` int(11) NOT NULL,
  `livrat` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table restdb.comenzi: ~0 rows (aproximativ)
DELETE FROM `comenzi`;
/*!40000 ALTER TABLE `comenzi` DISABLE KEYS */;
/*!40000 ALTER TABLE `comenzi` ENABLE KEYS */;

LOCK TABLES `comenzi` WRITE;
/*!40000 ALTER TABLE `comenzi` DISABLE KEYS */;
INSERT INTO `comenzi` VALUES (1,1,1,1,'2015-10-02 16:52:30',1,0),(1,1,2,1,'2015-10-02 16:52:30',1,0),(2,1,1,1,'2015-11-04 22:12:06',1,0);
/*!40000 ALTER TABLE `comenzi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

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

LOCK TABLES `mese` WRITE;
/*!40000 ALTER TABLE `mese` DISABLE KEYS */;
INSERT INTO `mese` VALUES (1,3,'masa1'),(2,4,'masa2');
/*!40000 ALTER TABLE `mese` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

-- Dumping structure for table restdb.ospatari
DROP TABLE IF EXISTS `ospatari`;
CREATE TABLE IF NOT EXISTS `ospatari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(50) DEFAULT '0',
  `prenume` varchar(50) DEFAULT '0',
  `id_utilizator` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ospatari` WRITE;
/*!40000 ALTER TABLE `ospatari` DISABLE KEYS */;
INSERT INTO `ospatari` VALUES (1,'ghenea','florin','2');
/*!40000 ALTER TABLE `ospatari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

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

LOCK TABLES `produse` WRITE;
/*!40000 ALTER TABLE `produse` DISABLE KEYS */;
INSERT INTO `produse` VALUES (1,'Omleta simpla (3 oua)',100,6,'mic dejun'),(2,'Omleta cu sunca si cascaval',100,7,'mic dejun'),(6,'Ciorba de pui',300,8,'ciorbe'),(7,'Ciorba de burta',360,9,'ciorbe'),(8,'Salata cu muschi de porc',400,24,'salate'),(9,'Salata cu branza afumata',350,13,'salate'),(10,'Spaghete cu pui',350,17,'paste'),(11,'Spaghete Carbonara',350,25,'paste'),(12,'Papanaşi cu dulceaţă de casă şi smântână',280,14,'deserturi'),(13,'Cheesecake Caramel',200,14,'deserturi');
/*!40000 ALTER TABLE `produse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


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

LOCK TABLES `utilizatori` WRITE;
/*!40000 ALTER TABLE `utilizatori` DISABLE KEYS */;
INSERT INTO `utilizatori` VALUES (1,'adm','1234','admin'),(2,'osp01','2345','ospatar'),(3,'ms01','masa01','client'),(4,'ms02','masa02','client');
/*!40000 ALTER TABLE `utilizatori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
