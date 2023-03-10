-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 11:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_bis2`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(31) NOT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  `admin_nama` varchar(100) DEFAULT NULL,
  `admin_phone` varchar(30) DEFAULT NULL,
  `admin_gender` varchar(3) DEFAULT NULL,
  `admin_aktif` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`admin_email`, `admin_username`, `admin_password`, `admin_nama`, `admin_phone`, `admin_gender`, `admin_aktif`) VALUES
('dayathiday8@gmail.com', '', 'e0718df43f3b7de4ac31924d372bd9c6', 'Mister Hiday', '085893015652', 'L', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin_login`
--

CREATE TABLE `mst_admin_login` (
  `username` varchar(31) NOT NULL,
  `password` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_admin_login`
--

INSERT INTO `mst_admin_login` (`username`, `password`) VALUES
('sofunsyabi', '12'),
('sya', '12'),
('syaa', '12');

-- --------------------------------------------------------

--
-- Table structure for table `mst_agen`
--

CREATE TABLE `mst_agen` (
  `id` varchar(100) NOT NULL,
  `nama_agen` text NOT NULL,
  `no_agen` varchar(13) NOT NULL,
  `tempat_agen` text NOT NULL,
  `crew_role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mst_booking`
--

CREATE TABLE `mst_booking` (
  `booking_id` varchar(20) NOT NULL,
  `booking_date` datetime NOT NULL,
  `booking_jumlah` int(11) NOT NULL,
  `member_email` varchar(100) NOT NULL,
  `jadwal_id` varchar(50) NOT NULL,
  `bus_nama` varchar(100) NOT NULL,
  `location_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mst_bus`
--

CREATE TABLE `mst_bus` (
  `bus_id` varchar(30) NOT NULL,
  `bus_nama` varchar(100) DEFAULT NULL,
  `tipe_id` varchar(10) DEFAULT NULL,
  `bus_series` varchar(30) DEFAULT NULL,
  `bus_kapasitas` int(11) DEFAULT NULL,
  `bus_format_kursi` varchar(30) DEFAULT NULL,
  `bus_kelas` varchar(50) DEFAULT NULL,
  `bus_ac` tinyint(4) DEFAULT NULL,
  `bus_snack` tinyint(4) DEFAULT NULL,
  `bus_toilet` tinyint(4) DEFAULT NULL,
  `bus_recliner` tinyint(4) DEFAULT NULL,
  `bus_stopkontak` tinyint(4) DEFAULT NULL,
  `bus_aktif` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_bus`
--

INSERT INTO `mst_bus` (`bus_id`, `bus_nama`, `tipe_id`, `bus_series`, `bus_kapasitas`, `bus_format_kursi`, `bus_kelas`, `bus_ac`, `bus_snack`, `bus_toilet`, `bus_recliner`, `bus_stopkontak`, `bus_aktif`) VALUES
('B 1234 ABC', 'KYM TRANS', 'XHD', 'KYM 144 - BadBoy', 32, '2 - 2', 'EXECUTIVE', 1, 0, 1, 0, 1, 0),
('B 3434 AC', 'PO. Haryanto', 'XHD', 'HR 155 - PREDATOR', 36, '3 -2', 'EXECUTIVE', 1, 1, 1, 1, 1, 0),
('E 4949 HAH', 'Sudiro Tungga Jaya', 'SHD', 'STJ - PIROSKHA', 26, '2 -2', 'PRESIDENT CLASS', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_crew`
--

CREATE TABLE `mst_crew` (
  `crew_id` int(11) NOT NULL,
  `crew_nama` varchar(100) DEFAULT NULL,
  `crew_phone` varchar(30) DEFAULT NULL,
  `crew_email` varchar(100) DEFAULT NULL,
  `crew_role` varchar(30) DEFAULT NULL,
  `crew_aktif` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_crew`
--

INSERT INTO `mst_crew` (`crew_id`, `crew_nama`, `crew_phone`, `crew_email`, `crew_role`, `crew_aktif`) VALUES
(1212, 'Arasya Rafi', '081319944917', 'arasyarafi130@gmail.com', 'Driver', 1),
(1313, 'Udin', '088213292687', 'udindua@gmail.com', 'Pramugari', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_jadwal`
--

CREATE TABLE `mst_jadwal` (
  `jadwal_id` varchar(100) NOT NULL,
  `jadwal_keberangkatan` datetime NOT NULL,
  `location_id_asal` varchar(50) NOT NULL,
  `bus_id` varchar(50) NOT NULL,
  `location_id_tujuan` varchar(50) NOT NULL,
  `jadwal_harga` decimal(10,0) NOT NULL,
  `crew_id` int(11) NOT NULL,
  `jadwal_aktif` tinyint(4) NOT NULL,
  `jadwal_estimasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mst_keluhan`
--

CREATE TABLE `mst_keluhan` (
  `keluhan_id` varchar(100) NOT NULL,
  `keluhan_text` text NOT NULL,
  `keluhan_nama` varchar(100) NOT NULL,
  `keluhan_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_keluhan`
--

INSERT INTO `mst_keluhan` (`keluhan_id`, `keluhan_text`, `keluhan_nama`, `keluhan_email`) VALUES
('390310', 'Menunggu bus hampir 2 jam dikarenakan trubble', 'Jojo', 'jojoku@gmail.com'),
('690153', 'Fasilitas Kurang Menarik, Sampah Dimana Mana', 'arasya', 'arasyarafi13@gmail.com'),
('934181', 'Bus Sangat Cepat Dan Hampir Menabrak', 'Rafi', 'rafiku@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(10) NOT NULL,
  `location_nama` varchar(100) DEFAULT NULL,
  `location_coordinate` varchar(100) DEFAULT NULL,
  `location_aktif` tinyint(4) DEFAULT 1,
  `loc_tipe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_nama`, `location_coordinate`, `location_aktif`, `loc_tipe_id`) VALUES
('12', 'JAKARTA - JOGJA', '1212', 1, 246156),
('13', 'JAKARTA - BALI', '0901', 1, 246156);

-- --------------------------------------------------------

--
-- Table structure for table `mst_location_tipe`
--

CREATE TABLE `mst_location_tipe` (
  `loc_tipe_id` int(11) NOT NULL,
  `loc_tipe_nama` varchar(50) DEFAULT NULL,
  `loc_tipe_aktif` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_location_tipe`
--

INSERT INTO `mst_location_tipe` (`loc_tipe_id`, `loc_tipe_nama`, `loc_tipe_aktif`) VALUES
(1, 'AGEN ( PARUNG )', 1),
(246156, 'TERMINAL ( PONDOK PINANG )', 1),
(357897, 'TERMINAL ( GIWANGAN JOGJA )', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_member`
--

CREATE TABLE `mst_member` (
  `member_email` varchar(100) NOT NULL,
  `username` varchar(31) NOT NULL,
  `member_password` varchar(50) DEFAULT NULL,
  `member_nama` varchar(100) DEFAULT NULL,
  `member_phone` varchar(30) DEFAULT NULL,
  `member_gender` varchar(3) DEFAULT NULL,
  `member_aktif` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_member`
--

INSERT INTO `mst_member` (`member_email`, `username`, `member_password`, `member_nama`, `member_phone`, `member_gender`, `member_aktif`) VALUES
('arasyarafi130@gmail.com', 'syaa', '12', 'Arasya Rafi', '081319944917', 'P', 1),
('arasyarafi12@yahoo.com', 'syasya', '12', 'Arasya Rafi Putra', '081319949417', 'L', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_tipe`
--

CREATE TABLE `mst_tipe` (
  `tipe_id` varchar(10) NOT NULL,
  `tipe_nama` varchar(100) DEFAULT NULL,
  `tipe_aktif` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_tipe`
--

INSERT INTO `mst_tipe` (`tipe_id`, `tipe_nama`, `tipe_aktif`) VALUES
('SHD', 'SHD BUS', 1),
('SKD', 'SRIKANDI', 1),
('XHD', 'XHD PRIME', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`admin_email`);

--
-- Indexes for table `mst_admin_login`
--
ALTER TABLE `mst_admin_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mst_agen`
--
ALTER TABLE `mst_agen`
  ADD KEY `crew_role` (`crew_role`);

--
-- Indexes for table `mst_booking`
--
ALTER TABLE `mst_booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `member_email` (`member_email`),
  ADD KEY `bus_id` (`bus_nama`,`location_nama`),
  ADD KEY `location_nama` (`location_nama`);

--
-- Indexes for table `mst_bus`
--
ALTER TABLE `mst_bus`
  ADD PRIMARY KEY (`bus_id`),
  ADD KEY `bus_tipe` (`tipe_id`),
  ADD KEY `bus_nama` (`bus_nama`);

--
-- Indexes for table `mst_crew`
--
ALTER TABLE `mst_crew`
  ADD PRIMARY KEY (`crew_id`),
  ADD KEY `crew_role` (`crew_role`);

--
-- Indexes for table `mst_keluhan`
--
ALTER TABLE `mst_keluhan`
  ADD PRIMARY KEY (`keluhan_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_tipe` (`loc_tipe_id`),
  ADD KEY `location_nama` (`location_nama`);

--
-- Indexes for table `mst_location_tipe`
--
ALTER TABLE `mst_location_tipe`
  ADD PRIMARY KEY (`loc_tipe_id`);

--
-- Indexes for table `mst_member`
--
ALTER TABLE `mst_member`
  ADD PRIMARY KEY (`username`),
  ADD KEY `member_email` (`member_email`);

--
-- Indexes for table `mst_tipe`
--
ALTER TABLE `mst_tipe`
  ADD PRIMARY KEY (`tipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_crew`
--
ALTER TABLE `mst_crew`
  MODIFY `crew_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121222;

--
-- AUTO_INCREMENT for table `mst_location_tipe`
--
ALTER TABLE `mst_location_tipe`
  MODIFY `loc_tipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357898;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mst_bus`
--
ALTER TABLE `mst_bus`
  ADD CONSTRAINT `bus_tipe` FOREIGN KEY (`tipe_id`) REFERENCES `mst_tipe` (`tipe_id`);

--
-- Constraints for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD CONSTRAINT `location_tipe` FOREIGN KEY (`loc_tipe_id`) REFERENCES `mst_location_tipe` (`loc_tipe_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
