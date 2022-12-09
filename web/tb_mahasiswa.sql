-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2022 at 08:30 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stars`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

DROP TABLE IF EXISTS `tb_mahasiswa`;
CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `title`, `category`, `type`, `desc`, `image`) VALUES
(1, 'DISPENSASI UANG KULIAH SEMESTER GENAP 2022/2023', 'Dispensasi', 'Dispensasi Uang Kuliah', 'DISPENSASI UANG KULIAH SEMESTER GENAP', '.'),
(2, 'DISPENSASI UANG PEMBANGUNAN SEMESTER GENAP 2022/2023\r\n', 'Dispensasi', 'Dispensasi Uang Pembangunan', 'Dispensasi Uang Pembangunan Semester Genap 2022/2023', '.'),
(3, 'BEASISWA RUTIN PERPANJANGAN SEM II 2022/2023\r\n', 'Beasiswa', 'Beasiswa Rutin', 'BEASISWA RUTIN SEM II 2022/2023', '.'),
(4, 'judul', 'category', 'tipe', 'desc', '.'),
(5, 'judul2', 'category2', 'tipe2', 'desc2', '.'),
(6, 'judul3', 'category3', 'tipe3', 'desc3', '.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
