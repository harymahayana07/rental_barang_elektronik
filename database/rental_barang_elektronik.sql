-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 06:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_barang_elektronik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(20) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `noitem` varchar(10) NOT NULL,
  `harga` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `merek`, `tipe`, `tahun`, `noitem`, `harga`, `status`) VALUES
(19, 'Asus', 'Laptop', '2019', '91723', 300000, 'Tersedia'),
(29, 'Lenovo', 'Laptop', '2020', '91724', 120000, 'Tersedia'),
(21, 'Canon 600D', 'Camera', '2017', '91725', 50000, 'Tersedia'),
(17, 'Philips', 'Lampu LED', '2022', '91726', 40000, 'Tersedia'),
(16, 'Mouse Gaming', 'Mouse', '2022', '91727', 30000, 'Keluar'),
(31, 'Sharp', 'Mesin Cuci', '2021', '91728', 450000, 'Tersedia'),
(28, 'HP', 'Printer', '2019', '91729', 50000, 'Tersedia'),
(30, 'Asus', 'Adapter Charge', '2020', '91730', 50000, 'Tersedia'),
(32, 'Toshiba', 'LCD 50in', '2021', '91731', 200000, 'Tersedia'),
(34, 'Sharp', 'Sound Sistem', '2021', '91732', 120000, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `nik`, `alamat`, `telp`, `email`) VALUES
(14, 'Qori', 0, 'Bekasi', '07519400390', 'Qori@gmail.com'),
(13, 'Glenn', 0, 'Cicalengka', '085289388949', 'jksolslopdm'),
(10, 'Ismail', 0, 'Tasik', '081353666345', 'mail.com'),
(17, 'Sidiq', 0, 'Padang	', '085276878499', 'Shidiq.com'),
(18, 'Qoriah Indah Susilow', 0, 'Jl AH Nasution, Cibiru, Bandung', '081317812207', 'Qoriahindah@gmail'),
(20, 'ihsan miftahul huda', 0, 'bandung', '089232033927', 'mask@gmail.com'),
(21, 'ihsan miftahul huda', 0, 'Cibiru', '089232033927', 'mask@gmail.com'),
(22, 'alvito', 0, 'kajsdhakdhkadhkawud	', '085799504760', 'alvito@gmail.com'),
(23, 'Ronal', 0, 'Pondok gede', '089765121907', 'ronal@gmail.com'),
(24, 'Ronal', 0, 'Pondok gede', '089765121907', 'ronal@gmail.com'),
(25, 'Alvito', 0, 'Jl. Tebet	', '085182731827', 'alvito@gmail.com'),
(27, 'Ronaldo', 0, 'JL. Pondok Gede', '0878787878787878', 'ronaldo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `peminjam` varchar(20) NOT NULL,
  `noitem` varchar(20) DEFAULT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date DEFAULT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `lama` varchar(10) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  `denda` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `noitem`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`, `denda`) VALUES
(30, 'Alvito', 'D 3 RY', '500000', '2019-12-27', '2019-12-31', '4', '2000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
(6, 'admin', 'admin', 'admin', 'Admin'),
(7, 'staff', 'staff', 'staff', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
