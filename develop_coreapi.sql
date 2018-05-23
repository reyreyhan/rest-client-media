-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2018 at 01:08 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `develop_coreapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `coremagz`
--

CREATE TABLE `coremagz` (
  `CORE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CORE_JUDUL` varchar(50) NOT NULL,
  `CORE_DESC` text,
  `CORE_FOLDER` varchar(64) NOT NULL,
  `CORE_TGL_RILIS` date NOT NULL,
  `CORE_TGL_UPLOAD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CORE_LIKE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coremagz`
--

INSERT INTO `coremagz` (`CORE_ID`, `USER_ID`, `CORE_JUDUL`, `CORE_DESC`, `CORE_FOLDER`, `CORE_TGL_RILIS`, `CORE_TGL_UPLOAD`, `CORE_LIKE`) VALUES
(8, 421623, 'core magazine satu', 'sasdasda', 'core-magazine-satu', '2017-11-22', '2017-12-12 03:21:13', 8),
(9, 421623, 'TES', 'tes', 'tes', '2017-11-02', '2017-12-12 03:04:21', 7),
(11, 421623, 'testing core magazine sadsa dsa dsada', 'testing', 'testing-core-magazine-sadsa-dsa-dsada', '2017-12-16', '2017-12-11 22:11:17', 0),
(12, 421623, 'add data pens post coba coba', 'tes core magazine', 'add-data-pens-post-coba-coba', '2017-12-16', '2017-12-11 22:40:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `KAT_ID` int(11) NOT NULL,
  `KAT_NAMA` varchar(20) NOT NULL,
  `KAT_DESC` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`KAT_ID`, `KAT_NAMA`, `KAT_DESC`) VALUES
(2, 'Soft News', 'Menggunakan Backsound musik.\r\nVariasi pengambilan gambar diperbolehkan (pan, tilt, dll)\r\nDiperbolehkan terdapat live report\r\nEditing semenarik mungkin'),
(3, 'Hard News', 'Tidak menggunakan backsound musik (tetap menyalakan sound dan footage). Pengambilan gambar still (tidak dianjurkan menggunakan pergerakan). Tidak diperbolehkan terdapat live report.');

-- --------------------------------------------------------

--
-- Table structure for table `penspost`
--

CREATE TABLE `penspost` (
  `POST_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `POST_NAMA` varchar(64) NOT NULL,
  `POST_TGL_RILIS` date NOT NULL,
  `POST_IMAGE` text NOT NULL,
  `POST_DESC` text,
  `POST_LIKE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penspost`
--

INSERT INTO `penspost` (`POST_ID`, `USER_ID`, `POST_NAMA`, `POST_TGL_RILIS`, `POST_IMAGE`, `POST_DESC`, `POST_LIKE`) VALUES
(8, 421623, 'pens post post post', '2017-12-16', 'pens-post-post-post.png', 'tes', 0),
(9, 421623, 'cobak maneh', '2017-12-23', 'cobak-maneh.jpg', 's', 0);

-- --------------------------------------------------------

--
-- Table structure for table `penstoon`
--

CREATE TABLE `penstoon` (
  `TOON_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TOON_NAMA` varchar(64) NOT NULL,
  `TOON_IMAGE` varchar(32) NOT NULL,
  `TOON_TGL_NAIK` date NOT NULL,
  `TOON_TGL_TURUN` date NOT NULL,
  `TOON_DESC` text,
  `TOON_LIKE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penstoon`
--

INSERT INTO `penstoon` (`TOON_ID`, `USER_ID`, `TOON_NAMA`, `TOON_IMAGE`, `TOON_TGL_NAIK`, `TOON_TGL_TURUN`, `TOON_DESC`, `TOON_LIKE`) VALUES
(2, 421623, 'cobak', 'cobak.png', '2017-11-22', '2017-11-22', 'cobak', 0),
(3, 421623, 'PENS TOON COBA', 'pens-toon-coba.png', '2017-11-10', '2017-11-29', 'lorem ipsum dolor sit amet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `penstv`
--

CREATE TABLE `penstv` (
  `TV_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `KAT_ID` int(11) NOT NULL,
  `TV_NAMA` varchar(64) NOT NULL,
  `TV_LINK` text NOT NULL,
  `TV_TGL_RILIS` date NOT NULL,
  `TV_TGL_UPLOAD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TV_DESC` text,
  `TV_LIKE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penstv`
--

INSERT INTO `penstv` (`TV_ID`, `USER_ID`, `KAT_ID`, `TV_NAMA`, `TV_LINK`, `TV_TGL_RILIS`, `TV_TGL_UPLOAD`, `TV_DESC`, `TV_LIKE`) VALUES
(5, 421623, 3, 'TES', 'https://www.youtube.com/watch?v=2Y3zA8_zwVc', '2017-11-14', '2017-11-23 15:14:39', 'tes', 0),
(11, 421623, 3, 'ini', 'https://www.youtube.com/', '2017-11-12', '2018-03-15 01:52:20', 'dsah', 0);

-- --------------------------------------------------------

--
-- Table structure for table `perpage_core`
--

CREATE TABLE `perpage_core` (
  `PAGE_ID` int(11) NOT NULL,
  `CORE_ID_PAGE` int(11) NOT NULL,
  `PAGE_IMAGE` text NOT NULL,
  `PAGE_NUMBER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perpage_core`
--

INSERT INTO `perpage_core` (`PAGE_ID`, `CORE_ID_PAGE`, `PAGE_IMAGE`, `PAGE_NUMBER`) VALUES
(19, 8, 'core-magazine-satu81.png', 1),
(20, 8, 'core-magazine-satu82.png', 2),
(21, 9, 'core-magazine-satu81.png', 1),
(22, 9, 'tes92.png', 2),
(25, 11, 'testing-core-magazine-sadsa-dsa-dsada111.png', 1),
(26, 11, 'testing-core-magazine-sadsa-dsa-dsada112.png', 2),
(27, 12, 'add-data-pens-post-coba-coba121.jpg', 1),
(29, 8, 'ini.jpg', 4),
(30, 8, 'ini.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `SARAN_ID` int(8) NOT NULL,
  `SARAN_NAMA` varchar(64) NOT NULL,
  `SARAN_EMAIL` varchar(64) NOT NULL,
  `SARAN_KOMENTAR` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_EMAIL` varchar(50) NOT NULL,
  `USER_PASSWORD` varchar(32) NOT NULL,
  `USER_PRIVILLEGES` varchar(10) NOT NULL,
  `USER_DISPLAY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `USER_NAME`, `USER_EMAIL`, `USER_PASSWORD`, `USER_PRIVILLEGES`, `USER_DISPLAY`) VALUES
(121211, 'ENT12V', 'video@ent.eepis-its.edu', '123456', 'VIDEO', 'marc.jpg'),
(121212, 'ENT12D', 'desgraf@ent.pens.ac.id', '123456', 'DESGRAF', 'marc.jpg'),
(421623, 'Reyhan', 'newrey9227@gmail.com', 'r3yh4n', 'ADMIN', 'marc.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coremagz`
--
ALTER TABLE `coremagz`
  ADD PRIMARY KEY (`CORE_ID`),
  ADD UNIQUE KEY `CORE_JUDUL` (`CORE_JUDUL`),
  ADD KEY `FK_coremagz_user` (`USER_ID`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KAT_ID`);

--
-- Indexes for table `penspost`
--
ALTER TABLE `penspost`
  ADD PRIMARY KEY (`POST_ID`),
  ADD KEY `FK_RELATIONSHIP_4` (`USER_ID`);

--
-- Indexes for table `penstoon`
--
ALTER TABLE `penstoon`
  ADD PRIMARY KEY (`TOON_ID`),
  ADD KEY `FK_RELATIONSHIP_3` (`USER_ID`);

--
-- Indexes for table `penstv`
--
ALTER TABLE `penstv`
  ADD PRIMARY KEY (`TV_ID`),
  ADD KEY `FK_RELATIONSHIP_5` (`USER_ID`),
  ADD KEY `KAT_ID` (`KAT_ID`);

--
-- Indexes for table `perpage_core`
--
ALTER TABLE `perpage_core`
  ADD PRIMARY KEY (`PAGE_ID`),
  ADD KEY `CORE_ID` (`CORE_ID_PAGE`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`SARAN_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `USER_ID` (`USER_ID`),
  ADD KEY `AK_USER_NAME` (`USER_NAME`),
  ADD KEY `AK_USER_EMAIL` (`USER_EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coremagz`
--
ALTER TABLE `coremagz`
  MODIFY `CORE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `KAT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `penspost`
--
ALTER TABLE `penspost`
  MODIFY `POST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `penstoon`
--
ALTER TABLE `penstoon`
  MODIFY `TOON_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `penstv`
--
ALTER TABLE `penstv`
  MODIFY `TV_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `perpage_core`
--
ALTER TABLE `perpage_core`
  MODIFY `PAGE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `SARAN_ID` int(8) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `coremagz`
--
ALTER TABLE `coremagz`
  ADD CONSTRAINT `FK_coremagz_user` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`);

--
-- Constraints for table `penspost`
--
ALTER TABLE `penspost`
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`);

--
-- Constraints for table `penstoon`
--
ALTER TABLE `penstoon`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`);

--
-- Constraints for table `penstv`
--
ALTER TABLE `penstv`
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`),
  ADD CONSTRAINT `penstv_ibfk_1` FOREIGN KEY (`KAT_ID`) REFERENCES `kategori` (`KAT_ID`);

--
-- Constraints for table `perpage_core`
--
ALTER TABLE `perpage_core`
  ADD CONSTRAINT `perpage_core_ibfk_1` FOREIGN KEY (`CORE_ID_PAGE`) REFERENCES `coremagz` (`CORE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
