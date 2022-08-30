-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 09:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hris_kepsindo`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak_karyawan`
--

CREATE TABLE `anak_karyawan` (
  `id` int(15) NOT NULL,
  `nik_karyawan` varchar(20) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anak_karyawan`
--

INSERT INTO `anak_karyawan` (`id`, `nik_karyawan`, `nama_anak`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, '02403007', 'Tsamara Ufairah Azka', 'Padang', '2004-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pasangan_karyawan`
--

CREATE TABLE `pasangan_karyawan` (
  `id` int(20) NOT NULL,
  `nik_karyawan` varchar(20) NOT NULL,
  `nama_pasangan` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status_pasangan` enum('suami','istri','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan _karyawan`
--

CREATE TABLE `pelatihan _karyawan` (
  `id` int(3) NOT NULL,
  `nik_karyawan` varchar(20) NOT NULL,
  `nama_pelatihan` varchar(100) NOT NULL,
  `tahun_pelatihan` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_kerja`
--

CREATE TABLE `pengalaman_kerja` (
  `id` int(3) NOT NULL,
  `nik_karyawan` varchar(20) NOT NULL,
  `tempat_kerja` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tahun_awal` varchar(4) NOT NULL,
  `tahun_akhir` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jabatan`
--

CREATE TABLE `tabel_jabatan` (
  `id` int(15) NOT NULL,
  `jabatan` varchar(60) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_jabatan`
--

INSERT INTO `tabel_jabatan` (`id`, `jabatan`) VALUES
(1, 'Direktur Utama'),
(2, 'Wakil Direktur'),
(3, 'Manager Area'),
(4, 'Manager Plant dan Industrial'),
(5, 'Manager Planning dan Litbang'),
(6, 'Manager Project Umum'),
(7, 'Manager Alat Berat'),
(8, 'Manager Keuangan'),
(9, 'Adminitrasi '),
(10, 'Administrasi Keuangan'),
(11, 'Administrasi Aset'),
(12, 'Adiministrasi Penagihan'),
(13, 'Administrasi Estimotor'),
(14, 'Administrasi Fajarindo Dan Budi Luhur'),
(15, 'Accounting Assistant Manager'),
(16, 'Adiministrasi HRD'),
(17, 'Fitter'),
(18, 'Supervisor'),
(19, 'Foreman '),
(20, 'Teknisi I'),
(22, 'Teknisi II'),
(23, 'Humas Dan Umum'),
(24, 'Helper'),
(25, 'Helper PAB '),
(26, 'Helper Kontrak Hose Pabrik'),
(27, 'Helper Kontrak Hose Tambang'),
(28, 'House Keeping');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pegawai`
--

CREATE TABLE `tabel_pegawai` (
  `nik_ktp` varchar(20) NOT NULL,
  `nik_karyawan` varchar(20) DEFAULT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `pendidikan_terakhir` enum('SD','SMP','SMA','D3','D4/S1','S2') DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `id_jabatan` int(50) DEFAULT NULL,
  `status _karyawan` enum('Karyawan Tetap','Karyawan Tidak Tetap','Trainee)') DEFAULT NULL,
  `nomor_hp` varchar(25) DEFAULT NULL,
  `status_perkawinan` enum('Belum Menikah','Sudah Menikah') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_pegawai`
--

INSERT INTO `tabel_pegawai` (`nik_ktp`, `nik_karyawan`, `nama_pegawai`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `pendidikan_terakhir`, `tanggal_masuk`, `id_jabatan`, `status _karyawan`, `nomor_hp`, `status_perkawinan`) VALUES
('1371020210800006', '02403159', 'Edi Suranto', 'Sitiung', '1980-10-02', 'laki-laki', 'Jl.Kampung Durian No. 5 Kel Parak Gadang Timu. Kec Padang Timur', NULL, '2010-10-02', 3, 'Karyawan Tetap', '081363243489', 'Sudah Menikah'),
('1371071505810006', '02403010', 'Hengky Indra,ST', 'Padang', '1981-05-15', 'laki-laki', 'Jl. Mawar No 5 Indarung', 'D4/S1', '2005-11-25', 1, 'Karyawan Tetap', '085272423772', 'Sudah Menikah'),
('1371076406820001', '02403007', 'Suci Indrawati, SE, MM', 'Padang', '1982-06-24', 'perempuan', 'Jl. Blok B Luki Rt 04 Rw 092', 'S2', NULL, 1, 'Karyawan Tetap', '08126622893/082', 'Sudah Menikah'),
('1371101211790001', '02403199', 'Arie Bone,SE', 'Watampone', '1979-11-12', 'laki-laki', 'Jl.Blok B luki Rt 04 Rw 092', 'D4/S1', '2008-05-10', 1, 'Karyawan Tetap', '085364956122', 'Sudah Menikah'),
('3175051512841001', '02403183', 'Teuku Haryade,ST', 'Padang', '1984-12-15', 'laki-laki', 'Jl.Mustika XIII No.257 Rt 004 Rw 014 Kel. Pagambiran Ampalu Non XX Kec.Lubuk Begalung', 'D4/S1', '2011-05-04', 1, 'Karyawan Tetap', '085217438466', 'Sudah Menikah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anak_karyawan`
--
ALTER TABLE `anak_karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_anak_karyawan_tabel_pegawai` (`nik_karyawan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangan_karyawan`
--
ALTER TABLE `pasangan_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelatihan _karyawan`
--
ALTER TABLE `pelatihan _karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_jabatan`
--
ALTER TABLE `tabel_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  ADD PRIMARY KEY (`nik_ktp`),
  ADD KEY `FK_tabel_pegawai_tabel_jabatan` (`id_jabatan`),
  ADD KEY `FK_tabel_pegawai_anak_karyawan` (`nik_karyawan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anak_karyawan`
--
ALTER TABLE `anak_karyawan`
  ADD CONSTRAINT `FK_anak_karyawan_tabel_pegawai` FOREIGN KEY (`nik_karyawan`) REFERENCES `tabel_pegawai` (`nik_karyawan`);

--
-- Constraints for table `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  ADD CONSTRAINT `FK_tabel_pegawai_tabel_jabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `tabel_jabatan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
