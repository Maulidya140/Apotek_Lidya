-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 18, 2024 at 04:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`username`, `password`, `no_telepon`, `alamat`) VALUES
('ani', '010203', '081232987677', 'Sungai'),
('Indah', '0405', '083829871654', 'Kidaung Permai'),
('Lidya', '123', '085350084833', 'amuntai'),
('Rizfa', '456', '08312048231', 'barabai');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `jenis_obat` varchar(100) NOT NULL,
  `harga_obat` int(100) NOT NULL,
  `stok_barang` int(100) NOT NULL,
  `diskon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_obat`, `nama_obat`, `jenis_obat`, `harga_obat`, `stok_barang`, `diskon`) VALUES
(6, 'Paracetamol', 'Tablet', 5000, 87, '10%'),
(7, 'Amoxicillin', 'Kapsul', 7000, 48, '5%'),
(8, 'Betadine', 'Cair', 15000, 71, '15%'),
(9, 'Antangin', 'Sachet', 3000, 192, '5%'),
(10, 'Vitamin C', 'Tablet', 12000, 137, '10%'),
(16, 'Betadine', 'Cair', 15000, 70, '15%'),
(17, 'Vitamin C', 'Tablet', 12000, 150, '10%'),
(18, 'Amoxicillin', 'Kapsul', 7000, 47, '5%'),
(19, 'Antangin', 'Sachet', 3000, 196, '5%'),
(20, 'Paracetamol', 'Tablet', 5000, 87, '10%'),
(21, 'Eucalyptus Oil', 'Cair', 18000, 40, '10%'),
(22, 'Diapet', 'Tablet', 3500, 80, '5%'),
(23, 'Oralit', 'Sachet', 2000, 150, '0%'),
(24, 'Salep Kulit', 'Krem', 25000, 35, '20%'),
(25, 'Obat Batuk', 'Sirup', 12000, 60, '10%'),
(38, 'paramex', 'tablet', 12000, 20, '2'),
(39, 'pas', 'yt', 56000, 2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `stok_obat`
--

CREATE TABLE `stok_obat` (
  `Id_obat` int(20) NOT NULL,
  `Nama_obat` varchar(50) NOT NULL,
  `Jenis_obat` varchar(50) NOT NULL,
  `Harga` int(20) NOT NULL,
  `Stok` int(20) NOT NULL,
  `Diskon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok_obat`
--

INSERT INTO `stok_obat` (`Id_obat`, `Nama_obat`, `Jenis_obat`, `Harga`, `Stok`, `Diskon`) VALUES
(1, 'Paracetamol', 'Analgesik', 5000, 100, '10'),
(2, 'Amoxicillin', 'Antibiotik', 10090, 50, '5'),
(3, 'Ibuprofen', 'Anti-inflamasi', 7000, 75, '8'),
(4, 'Cetirizine', 'Antihistamin', 4000, 120, '12'),
(5, 'Metformin', 'Antidiabetik', 10000, 60, '2'),
(6, 'Salbutamol', 'Bronkodilator', 10000, 80, '5'),
(7, 'Aspirin', 'Antikoagulan', 3000, 150, '7'),
(8, 'Omeprazole', 'Antasida', 15000, 70, '2'),
(9, 'Ciprofloxacin', 'Antibiotik', 11000, 40, '8'),
(10, 'Loperamide', 'Antidiare', 3500, 130, '5'),
(11, 'Dexamethasone', 'Anti-inflamasi', 8000, 90, '6'),
(12, 'Simvastatin', 'Antikolesterol', 9000, 55, '4'),
(13, 'Ranitidine', 'Antasida', 5000, 85, '9'),
(14, 'Mefenamic Acid', 'Analgesik', 6500, 95, '3'),
(15, 'Prednisone', 'Kortikosteroid', 7000, 60, '0'),
(16, 'Vitamin C', 'Suplemen', 2000, 200, '15'),
(17, 'Azithromycin', 'Antibiotik', 13000, 45, '10'),
(18, 'Hydrochlorothiazide', 'Diuretik', 10000, 50, '5'),
(19, 'Captopril', 'Antihipertensi', 6000, 110, '8'),
(20, 'Furosemide', 'Diuretik', 7500, 65, '6'),
(21, 'Betadine', 'cair', 15000, 12, '2'),
(23, 'vitacimin', 'tablet', 2000, 20, '2'),
(24, 'bodrex', 'tablet', 3000, 19, '3'),
(25, 'Sangobion', 'kapsul', 19000, 20, '2'),
(26, 'mimya kayu putih', 'cair', 15000, 30, '2'),
(27, 'balsem', 'minyak', 12000, 20, '3'),
(28, 'Herocin', 'bubuk', 25000, 10, '1'),
(30, 'kalpanax', 'krem', 12000, 12, '4'),
(42, 'tahu', 'tahu', 1222, 1, '1'),
(60, 'gjhj', 'vhgh', 12000, 12, '2'),
(70, 'inzana', 'tablet', 2000, 20, '2'),
(100, 'kada tahu', 'ww', 12000, 1, '2'),
(101, 'q', 'w', 2000, 121, '1');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_transaksi` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD PRIMARY KEY (`Id_obat`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `penjualan` (`id_obat`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`username`) REFERENCES `pegawai` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
