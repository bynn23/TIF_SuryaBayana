-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2022 pada 08.16
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `tid_sertifikat`
--
CREATE DATABASE IF NOT EXISTS `tid_sertifikat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tid_sertifikat`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kuasa`
--

CREATE TABLE IF NOT EXISTS `t_kuasa` (
  `NIK_Kuasa` int(32) NOT NULL,
  `Nama_Kuasa` varchar(64) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `UmurKuasa` int(10) NOT NULL,
  `Pekerjaan` varchar(15) NOT NULL,
  `Kecamatan` varchar(15) NOT NULL,
  `Kelurahan` varchar(15) NOT NULL,
  `Wilayah` varchar(15) NOT NULL,
  PRIMARY KEY (`NIK_Kuasa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_masterpemohon`
--

CREATE TABLE IF NOT EXISTS `t_masterpemohon` (
  `Id_master` int(10) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(128) NOT NULL,
  PRIMARY KEY (`Id_master`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `t_masterpemohon`
--

INSERT INTO `t_masterpemohon` (`Id_master`, `keterangan`) VALUES
(1, 'Pengukuran'),
(2, 'Konversi/Pendaftaran Hak'),
(3, 'Pendaftaran Hak Milik Sarusun'),
(4, 'Pendaftaran Tanah Wakaf'),
(5, 'Pendaftaran Peralihan Hak'),
(6, 'Pendaftaran Pemindahan Hak'),
(7, 'Pendaftaran Perubahan Hak'),
(8, 'Pemecahan/Penggabungan Hak'),
(9, 'Pendaftaran Hak Tanggunganv'),
(10, 'Roya dan Hak Tanggungan'),
(11, 'Penertiban Sertifikat Penggaanti'),
(12, 'Surat Keterangan Pendaftaran Tanah'),
(13, 'Pengecekan Sertifikat'),
(14, 'Lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pemohon`
--

CREATE TABLE IF NOT EXISTS `t_pemohon` (
  `NIK` int(32) NOT NULL,
  `Nama_Pemohon` varchar(25) NOT NULL,
  `Umur` int(10) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Pekerjaan` varchar(15) NOT NULL,
  `Kelurahan` varchar(15) NOT NULL,
  `Kecamatan` varchar(15) NOT NULL,
  `Wilayah` varchar(15) NOT NULL,
  PRIMARY KEY (`NIK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_staff`
--

CREATE TABLE IF NOT EXISTS `t_staff` (
  `username` varchar(8) NOT NULL,
  `Nama_Staff` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transaksi`
--

CREATE TABLE IF NOT EXISTS `t_transaksi` (
  `Id_Transaksi` varchar(128) NOT NULL,
  `NIK_Pemohon` int(32) NOT NULL,
  `username` varchar(8) NOT NULL,
  `NIK_Kuasa` int(32) NOT NULL,
  `Date` date NOT NULL,
  `No_Kuasa` varchar(64) NOT NULL,
  `id_master` int(10) NOT NULL,
  `Alamat` varchar(128) NOT NULL,
  `Kecamatan` varchar(32) NOT NULL,
  `Kelurahan` varchar(32) NOT NULL,
  `kota` varchar(64) NOT NULL,
  `no_hak` varchar(64) NOT NULL,
  `LuasTanah` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
