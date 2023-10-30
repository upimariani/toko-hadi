-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2023 pada 12.22
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko-hadi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `nama_barang` varchar(125) NOT NULL,
  `deskripsi` text NOT NULL,
  `keterangan` text NOT NULL,
  `harga` varchar(15) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `deskripsi`, `keterangan`, `harga`, `stok`) VALUES
(1, 1, 'Beras', 'Beras Cianjur', 'kg', '11000', 995),
(2, 1, 'Gula Pasir Putih', 'Gula Pasir Putih', 'kg', '10000', 1000),
(3, 1, 'Minyak', 'Minyak Curah', 'liter', '15000', 1000),
(4, 1, 'Terigu Segitia', 'Terigu Protein Sedang', 'kg', '14000', 120000),
(5, 1, 'Telor', 'Telor Ayam Neger', 'kg', '25000', 120000),
(6, 1, 'Susu', 'Susu Kental Manis', 'pcs', '11500', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengajuan`
--

CREATE TABLE `detail_pengajuan` (
  `id_detail` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pengajuan`
--

INSERT INTO `detail_pengajuan` (`id_detail`, `id_pengajuan`, `id_barang`, `qty`) VALUES
(1, 1, 6, 40),
(2, 2, 5, 13),
(3, 3, 2, 44),
(4, 4, 5, 39),
(5, 5, 4, 52),
(6, 6, 4, 33),
(7, 7, 2, 24),
(8, 8, 1, 12),
(9, 9, 1, 39),
(10, 10, 2, 36),
(11, 11, 2, 33),
(12, 12, 4, 29),
(13, 13, 6, 26),
(14, 14, 4, 30),
(15, 15, 6, 43),
(16, 16, 4, 48),
(17, 17, 4, 29),
(18, 18, 6, 25),
(19, 19, 6, 10),
(20, 20, 3, 26),
(21, 21, 1, 51),
(22, 22, 6, 21),
(23, 23, 2, 28),
(24, 24, 1, 54),
(25, 25, 3, 34),
(26, 26, 6, 23),
(27, 27, 3, 42),
(28, 28, 3, 14),
(29, 29, 3, 23),
(30, 30, 3, 22),
(31, 31, 5, 39),
(32, 32, 3, 49),
(33, 33, 3, 31),
(34, 34, 3, 47),
(35, 35, 4, 10),
(36, 36, 6, 54),
(37, 37, 6, 29),
(38, 38, 6, 10),
(39, 39, 1, 51),
(40, 40, 3, 28),
(41, 41, 3, 27),
(42, 42, 1, 59),
(43, 43, 5, 16),
(44, 44, 2, 42),
(45, 45, 3, 52),
(46, 46, 4, 47),
(47, 47, 4, 53),
(48, 48, 2, 40),
(49, 49, 2, 43),
(50, 50, 6, 46),
(51, 51, 2, 19),
(52, 52, 4, 30),
(53, 53, 6, 48),
(54, 54, 5, 54),
(55, 55, 6, 30),
(56, 56, 4, 21),
(57, 57, 5, 22),
(58, 58, 3, 44),
(59, 59, 5, 17),
(60, 60, 1, 16),
(61, 61, 2, 45),
(62, 62, 2, 38),
(63, 63, 4, 52),
(64, 64, 1, 48),
(65, 65, 6, 35),
(66, 66, 1, 23),
(67, 67, 3, 40),
(68, 68, 6, 33),
(69, 69, 5, 57),
(70, 70, 1, 18),
(71, 71, 2, 17),
(72, 72, 5, 17),
(73, 73, 4, 28),
(74, 74, 1, 50),
(75, 75, 5, 28),
(76, 76, 2, 57),
(77, 77, 4, 50),
(78, 78, 6, 33),
(79, 79, 6, 28),
(80, 80, 3, 16),
(81, 81, 2, 21),
(82, 82, 2, 37),
(83, 83, 1, 51),
(84, 84, 6, 40),
(85, 85, 4, 17),
(86, 86, 5, 16),
(87, 87, 4, 45),
(88, 88, 6, 59),
(89, 89, 2, 15),
(90, 90, 6, 49),
(91, 91, 3, 16),
(92, 92, 5, 40),
(93, 93, 2, 24),
(94, 94, 5, 37),
(95, 95, 1, 22),
(96, 96, 3, 43),
(97, 97, 1, 58),
(98, 98, 3, 39),
(99, 99, 5, 49),
(100, 100, 2, 40),
(101, 101, 1, 49),
(102, 102, 5, 44),
(103, 103, 1, 29),
(104, 104, 6, 16),
(105, 105, 4, 35),
(106, 106, 6, 30),
(107, 107, 5, 11),
(108, 108, 3, 54),
(109, 109, 2, 19),
(110, 110, 6, 30),
(111, 111, 5, 23),
(112, 112, 2, 51),
(113, 113, 2, 29),
(114, 114, 4, 44),
(115, 115, 4, 40),
(116, 116, 2, 24),
(117, 117, 2, 34),
(118, 118, 2, 46),
(119, 119, 3, 24),
(120, 120, 3, 56),
(121, 121, 5, 59),
(122, 122, 5, 39),
(123, 123, 2, 11),
(124, 124, 1, 39),
(125, 125, 6, 43),
(126, 126, 5, 24),
(127, 127, 3, 20),
(128, 128, 5, 26),
(129, 129, 6, 38),
(130, 130, 6, 30),
(131, 131, 1, 12),
(132, 132, 2, 50),
(133, 133, 6, 21),
(134, 134, 6, 15),
(135, 135, 1, 46),
(136, 136, 4, 48),
(137, 137, 3, 53),
(138, 138, 6, 16),
(139, 139, 4, 23),
(140, 140, 6, 16),
(141, 141, 3, 48),
(142, 142, 5, 47),
(143, 143, 5, 57),
(144, 144, 6, 55),
(145, 145, 4, 32),
(146, 146, 6, 10),
(147, 147, 1, 39),
(148, 148, 4, 60),
(149, 149, 5, 16),
(150, 150, 4, 37),
(151, 151, 6, 43),
(152, 152, 4, 40),
(153, 153, 5, 25),
(154, 154, 5, 41),
(155, 155, 1, 16),
(156, 156, 4, 60),
(157, 157, 6, 59),
(158, 158, 6, 26),
(159, 159, 2, 59),
(160, 160, 3, 21),
(161, 161, 1, 10),
(162, 162, 3, 23),
(163, 163, 6, 24),
(164, 164, 4, 34),
(165, 165, 6, 36),
(166, 166, 6, 50),
(167, 167, 2, 57),
(168, 168, 1, 20),
(169, 169, 6, 47),
(170, 170, 2, 57),
(171, 171, 3, 24),
(172, 172, 4, 12),
(173, 173, 2, 45),
(174, 174, 5, 48),
(175, 175, 5, 23),
(176, 176, 5, 46),
(177, 177, 1, 38),
(178, 178, 1, 24),
(179, 179, 5, 51),
(180, 180, 4, 29),
(181, 181, 5, 53),
(182, 182, 5, 13),
(183, 183, 2, 21),
(184, 184, 5, 15),
(185, 185, 4, 51),
(186, 186, 5, 60),
(187, 187, 5, 13),
(188, 188, 5, 10),
(189, 189, 3, 30),
(190, 190, 5, 37),
(191, 191, 4, 53),
(192, 192, 5, 52),
(193, 193, 3, 45),
(194, 194, 4, 22),
(195, 195, 6, 38),
(196, 196, 3, 13),
(197, 197, 2, 11),
(198, 198, 4, 16),
(199, 199, 4, 24),
(200, 200, 2, 21),
(201, 201, 3, 42),
(202, 202, 2, 28),
(203, 203, 2, 17),
(204, 204, 2, 58),
(205, 205, 2, 12),
(206, 206, 6, 31),
(207, 207, 2, 11),
(208, 208, 6, 34),
(209, 209, 5, 22),
(210, 210, 2, 42),
(211, 211, 1, 33),
(212, 212, 4, 25),
(213, 213, 4, 21),
(214, 214, 3, 42),
(215, 215, 3, 35),
(216, 216, 3, 42),
(217, 217, 2, 53),
(218, 218, 4, 39),
(219, 219, 6, 39),
(220, 220, 5, 26),
(221, 221, 4, 24),
(222, 222, 5, 33),
(223, 223, 6, 57),
(224, 224, 4, 54),
(225, 225, 5, 28),
(226, 226, 6, 18),
(227, 227, 5, 16),
(228, 228, 1, 15),
(229, 229, 3, 33),
(230, 230, 3, 13),
(231, 231, 1, 12),
(232, 232, 5, 21),
(233, 233, 6, 36),
(234, 234, 2, 57),
(235, 235, 3, 51),
(236, 236, 3, 57),
(237, 237, 2, 23),
(238, 238, 1, 28),
(239, 239, 3, 17),
(240, 240, 6, 27),
(241, 241, 1, 36),
(242, 242, 1, 48),
(243, 243, 6, 36),
(244, 244, 3, 25),
(245, 245, 3, 24),
(246, 246, 3, 35),
(247, 247, 2, 13),
(248, 248, 6, 26),
(249, 249, 1, 51),
(250, 250, 2, 29),
(251, 251, 4, 44),
(252, 252, 3, 55),
(253, 253, 6, 42),
(254, 254, 3, 11),
(255, 255, 1, 53),
(256, 256, 6, 23),
(257, 257, 5, 28),
(258, 258, 1, 58),
(259, 259, 6, 34),
(260, 260, 6, 51),
(261, 261, 1, 22),
(262, 262, 6, 28),
(263, 263, 3, 16),
(264, 264, 5, 58),
(265, 265, 5, 47),
(266, 266, 2, 23),
(267, 267, 4, 24),
(268, 268, 1, 12),
(269, 269, 5, 51),
(270, 270, 5, 32),
(271, 271, 6, 60),
(272, 272, 6, 24),
(273, 273, 4, 14),
(274, 274, 3, 14),
(275, 275, 1, 39),
(276, 276, 5, 45),
(277, 277, 6, 14),
(278, 278, 4, 41),
(279, 279, 4, 28),
(280, 280, 4, 13),
(281, 281, 2, 14),
(282, 282, 5, 32),
(283, 283, 2, 40),
(284, 284, 1, 32),
(285, 285, 1, 17),
(286, 286, 3, 51),
(287, 287, 5, 29),
(288, 288, 5, 58),
(289, 289, 6, 55),
(290, 290, 2, 22),
(291, 291, 3, 38),
(292, 292, 1, 30),
(293, 293, 1, 58),
(294, 294, 4, 42),
(295, 295, 6, 56),
(296, 296, 4, 19),
(297, 297, 6, 12),
(298, 298, 1, 26),
(299, 299, 2, 52),
(300, 300, 4, 10),
(301, 301, 3, 55),
(302, 302, 2, 53),
(303, 303, 4, 51);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tgl_pengajuan` varchar(15) NOT NULL,
  `stat_pengajuan` int(11) NOT NULL,
  `stat_pembayaran` int(11) NOT NULL,
  `bukti_payment` text NOT NULL,
  `total_pengajuan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `id_user`, `id_supplier`, `tgl_pengajuan`, `stat_pengajuan`, `stat_pembayaran`, `bukti_payment`, `total_pengajuan`) VALUES
(1, 1, 1, '2023-01-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '460000'),
(2, 1, 1, '2023-01-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '325000'),
(3, 1, 1, '2023-01-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '440000'),
(4, 1, 1, '2023-01-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '975000'),
(5, 1, 1, '2023-01-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '728000'),
(6, 1, 1, '2023-01-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '462000'),
(7, 1, 1, '2023-01-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '240000'),
(8, 1, 1, '2023-01-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '132000'),
(9, 1, 1, '2023-01-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '429000'),
(10, 1, 1, '2023-01-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '360000'),
(11, 1, 1, '2023-01-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '330000'),
(12, 1, 1, '2023-01-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '406000'),
(13, 1, 1, '2023-01-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '299000'),
(14, 1, 1, '2023-01-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '420000'),
(15, 1, 1, '2023-01-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '494500'),
(16, 1, 1, '2023-01-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '672000'),
(17, 1, 1, '2023-01-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '406000'),
(18, 1, 1, '2023-01-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '287500'),
(19, 1, 1, '2023-01-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '115000'),
(20, 1, 1, '2023-01-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '390000'),
(21, 1, 1, '2023-01-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '561000'),
(22, 1, 1, '2023-01-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '241500'),
(23, 1, 1, '2023-01-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '280000'),
(24, 1, 1, '2023-01-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '594000'),
(25, 1, 1, '2023-01-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '510000'),
(26, 1, 1, '2023-01-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '264500'),
(27, 1, 1, '2023-01-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '630000'),
(28, 1, 1, '2023-01-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '210000'),
(29, 1, 1, '2023-01-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '345000'),
(30, 1, 1, '2023-01-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '330000'),
(31, 1, 1, '2023-01-31', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '975000'),
(32, 1, 1, '2023-02-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '735000'),
(33, 1, 1, '2023-02-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '465000'),
(34, 1, 1, '2023-02-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '705000'),
(35, 1, 1, '2023-02-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '140000'),
(36, 1, 1, '2023-02-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '621000'),
(37, 1, 1, '2023-02-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '333500'),
(38, 1, 1, '2023-02-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '115000'),
(39, 1, 1, '2023-02-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '561000'),
(40, 1, 1, '2023-02-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '420000'),
(41, 1, 1, '2023-02-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '405000'),
(42, 1, 1, '2023-02-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '649000'),
(43, 1, 1, '2023-02-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '400000'),
(44, 1, 1, '2023-02-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '420000'),
(45, 1, 1, '2023-02-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '780000'),
(46, 1, 1, '2023-02-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '658000'),
(47, 1, 1, '2023-02-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '742000'),
(48, 1, 1, '2023-02-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '400000'),
(49, 1, 1, '2023-02-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '430000'),
(50, 1, 1, '2023-02-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '529000'),
(51, 1, 1, '2023-02-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '190000'),
(52, 1, 1, '2023-02-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '420000'),
(53, 1, 1, '2023-02-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '552000'),
(54, 1, 1, '2023-02-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1350000'),
(55, 1, 1, '2023-02-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '345000'),
(56, 1, 1, '2023-02-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '294000'),
(57, 1, 1, '2023-02-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '550000'),
(58, 1, 1, '2023-02-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '660000'),
(59, 1, 1, '2023-02-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '425000'),
(60, 1, 1, '2023-03-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '176000'),
(61, 1, 1, '2023-03-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '450000'),
(62, 1, 1, '2023-03-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '380000'),
(63, 1, 1, '2023-03-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '728000'),
(64, 1, 1, '2023-03-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '528000'),
(65, 1, 1, '2023-03-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '402500'),
(66, 1, 1, '2023-03-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '253000'),
(67, 1, 1, '2023-03-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '600000'),
(68, 1, 1, '2023-03-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '379500'),
(69, 1, 1, '2023-03-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1425000'),
(70, 1, 1, '2023-03-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '198000'),
(71, 1, 1, '2023-03-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '170000'),
(72, 1, 1, '2023-03-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '425000'),
(73, 1, 1, '2023-03-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '392000'),
(74, 1, 1, '2023-03-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '550000'),
(75, 1, 1, '2023-03-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '700000'),
(76, 1, 1, '2023-03-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '570000'),
(77, 1, 1, '2023-03-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '700000'),
(78, 1, 1, '2023-03-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '379500'),
(79, 1, 1, '2023-03-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '322000'),
(80, 1, 1, '2023-03-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '240000'),
(81, 1, 1, '2023-03-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '210000'),
(82, 1, 1, '2023-03-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '370000'),
(83, 1, 1, '2023-03-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '561000'),
(84, 1, 1, '2023-03-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '460000'),
(85, 1, 1, '2023-03-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '238000'),
(86, 1, 1, '2023-03-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '400000'),
(87, 1, 1, '2023-03-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '630000'),
(88, 1, 1, '2023-03-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '678500'),
(89, 1, 1, '2023-03-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '150000'),
(90, 1, 1, '2023-03-31', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '563500'),
(91, 1, 1, '2023-04-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '240000'),
(92, 1, 1, '2023-04-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1000000'),
(93, 1, 1, '2023-04-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '240000'),
(94, 1, 1, '2023-04-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '925000'),
(95, 1, 1, '2023-04-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '242000'),
(96, 1, 1, '2023-04-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '645000'),
(97, 1, 1, '2023-04-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '638000'),
(98, 1, 1, '2023-04-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '585000'),
(99, 1, 1, '2023-04-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1225000'),
(100, 1, 1, '2023-04-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '400000'),
(101, 1, 1, '2023-04-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '539000'),
(102, 1, 1, '2023-04-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1100000'),
(103, 1, 1, '2023-04-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '319000'),
(104, 1, 1, '2023-04-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '184000'),
(105, 1, 1, '2023-04-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '490000'),
(106, 1, 1, '2023-04-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '345000'),
(107, 1, 1, '2023-04-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '275000'),
(108, 1, 1, '2023-04-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '810000'),
(109, 1, 1, '2023-04-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '190000'),
(110, 1, 1, '2023-04-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '345000'),
(111, 1, 1, '2023-04-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '575000'),
(112, 1, 1, '2023-04-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '510000'),
(113, 1, 1, '2023-04-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '290000'),
(114, 1, 1, '2023-04-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '616000'),
(115, 1, 1, '2023-04-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '560000'),
(116, 1, 1, '2023-04-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '240000'),
(117, 1, 1, '2023-04-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '340000'),
(118, 1, 1, '2023-04-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '460000'),
(119, 1, 1, '2023-04-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '360000'),
(120, 1, 1, '2023-04-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '840000'),
(121, 1, 1, '2023-05-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1475000'),
(122, 1, 1, '2023-05-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '975000'),
(123, 1, 1, '2023-05-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '110000'),
(124, 1, 1, '2023-05-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '429000'),
(125, 1, 1, '2023-05-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '494500'),
(126, 1, 1, '2023-05-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '600000'),
(127, 1, 1, '2023-05-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '300000'),
(128, 1, 1, '2023-05-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '650000'),
(129, 1, 1, '2023-05-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '437000'),
(130, 1, 1, '2023-05-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '345000'),
(131, 1, 1, '2023-05-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '132000'),
(132, 1, 1, '2023-05-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '500000'),
(133, 1, 1, '2023-05-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '241500'),
(134, 1, 1, '2023-05-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '172500'),
(135, 1, 1, '2023-05-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '506000'),
(136, 1, 1, '2023-05-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '672000'),
(137, 1, 1, '2023-05-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '795000'),
(138, 1, 1, '2023-05-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '184000'),
(139, 1, 1, '2023-05-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '322000'),
(140, 1, 1, '2023-05-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '184000'),
(141, 1, 1, '2023-05-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '720000'),
(142, 1, 1, '2023-05-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1175000'),
(143, 1, 1, '2023-05-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1425000'),
(144, 1, 1, '2023-05-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '632500'),
(145, 1, 1, '2023-05-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '448000'),
(146, 1, 1, '2023-05-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '115000'),
(147, 1, 1, '2023-05-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '429000'),
(148, 1, 1, '2023-05-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '840000'),
(149, 1, 1, '2023-05-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '400000'),
(150, 1, 1, '2023-05-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '518000'),
(151, 1, 1, '2023-05-31', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '494500'),
(152, 1, 1, '2023-06-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '560000'),
(153, 1, 1, '2023-06-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '625000'),
(154, 1, 1, '2023-06-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1025000'),
(155, 1, 1, '2023-06-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '176000'),
(156, 1, 1, '2023-06-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '840000'),
(157, 1, 1, '2023-06-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '678500'),
(158, 1, 1, '2023-06-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '299000'),
(159, 1, 1, '2023-06-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '590000'),
(160, 1, 1, '2023-06-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '315000'),
(161, 1, 1, '2023-06-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '110000'),
(162, 1, 1, '2023-06-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '345000'),
(163, 1, 1, '2023-06-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '276000'),
(164, 1, 1, '2023-06-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '476000'),
(165, 1, 1, '2023-06-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '414000'),
(166, 1, 1, '2023-06-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '575000'),
(167, 1, 1, '2023-06-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '570000'),
(168, 1, 1, '2023-06-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '220000'),
(169, 1, 1, '2023-06-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '540500'),
(170, 1, 1, '2023-06-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '570000'),
(171, 1, 1, '2023-06-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '360000'),
(172, 1, 1, '2023-06-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '168000'),
(173, 1, 1, '2023-06-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '450000'),
(174, 1, 1, '2023-06-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1200000'),
(175, 1, 1, '2023-06-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '575000'),
(176, 1, 1, '2023-06-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1150000'),
(177, 1, 1, '2023-06-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '418000'),
(178, 1, 1, '2023-06-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '264000'),
(179, 1, 1, '2023-06-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1275000'),
(180, 1, 1, '2023-06-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '406000'),
(181, 1, 1, '2023-06-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1325000'),
(182, 1, 1, '2023-07-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '325000'),
(183, 1, 1, '2023-07-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '210000'),
(184, 1, 1, '2023-07-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '375000'),
(185, 1, 1, '2023-07-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '714000'),
(186, 1, 1, '2023-07-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1500000'),
(187, 1, 1, '2023-07-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '325000'),
(188, 1, 1, '2023-07-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '250000'),
(189, 1, 1, '2023-07-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '450000'),
(190, 1, 1, '2023-07-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '925000'),
(191, 1, 1, '2023-07-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '742000'),
(192, 1, 1, '2023-07-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1300000'),
(193, 1, 1, '2023-07-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '675000'),
(194, 1, 1, '2023-07-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '308000'),
(195, 1, 1, '2023-07-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '437000'),
(196, 1, 1, '2023-07-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '195000'),
(197, 1, 1, '2023-07-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '110000'),
(198, 1, 1, '2023-07-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '224000'),
(199, 1, 1, '2023-07-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '336000'),
(200, 1, 1, '2023-07-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '210000'),
(201, 1, 1, '2023-07-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '630000'),
(202, 1, 1, '2023-07-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '280000'),
(203, 1, 1, '2023-07-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '170000'),
(204, 1, 1, '2023-07-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '580000'),
(205, 1, 1, '2023-07-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '120000'),
(206, 1, 1, '2023-07-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '356500'),
(207, 1, 1, '2023-07-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '110000'),
(208, 1, 1, '2023-07-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '391000'),
(209, 1, 1, '2023-07-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '550000'),
(210, 1, 1, '2023-07-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '420000'),
(211, 1, 1, '2023-07-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '363000'),
(212, 1, 1, '2023-07-31', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '350000'),
(213, 1, 1, '2023-08-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '294000'),
(214, 1, 1, '2023-08-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '630000'),
(215, 1, 1, '2023-08-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '525000'),
(216, 1, 1, '2023-08-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '630000'),
(217, 1, 1, '2023-08-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '530000'),
(218, 1, 1, '2023-08-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '546000'),
(219, 1, 1, '2023-08-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '448500'),
(220, 1, 1, '2023-08-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '650000'),
(221, 1, 1, '2023-08-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '336000'),
(222, 1, 1, '2023-08-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '825000'),
(223, 1, 1, '2023-08-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '655500'),
(224, 1, 1, '2023-08-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '756000'),
(225, 1, 1, '2023-08-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '700000'),
(226, 1, 1, '2023-08-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '207000'),
(227, 1, 1, '2023-08-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '400000'),
(228, 1, 1, '2023-08-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '165000'),
(229, 1, 1, '2023-08-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '495000'),
(230, 1, 1, '2023-08-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '195000'),
(231, 1, 1, '2023-08-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '132000'),
(232, 1, 1, '2023-08-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '525000'),
(233, 1, 1, '2023-08-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '414000'),
(234, 1, 1, '2023-08-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '570000'),
(235, 1, 1, '2023-08-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '765000'),
(236, 1, 1, '2023-08-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '855000'),
(237, 1, 1, '2023-08-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '230000'),
(238, 1, 1, '2023-08-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '308000'),
(239, 1, 1, '2023-08-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '255000'),
(240, 1, 1, '2023-08-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '310500'),
(241, 1, 1, '2023-08-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '396000'),
(242, 1, 1, '2023-08-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '528000'),
(243, 1, 1, '2023-08-31', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '414000'),
(244, 1, 1, '2023-09-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '375000'),
(245, 1, 1, '2023-09-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '360000'),
(246, 1, 1, '2023-09-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '525000'),
(247, 1, 1, '2023-09-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '130000'),
(248, 1, 1, '2023-09-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '299000'),
(249, 1, 1, '2023-09-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '561000'),
(250, 1, 1, '2023-09-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '290000'),
(251, 1, 1, '2023-09-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '616000'),
(252, 1, 1, '2023-09-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '825000'),
(253, 1, 1, '2023-09-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '483000'),
(254, 1, 1, '2023-09-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '165000'),
(255, 1, 1, '2023-09-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '583000'),
(256, 1, 1, '2023-09-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '264500'),
(257, 1, 1, '2023-09-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '700000'),
(258, 1, 1, '2023-09-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '638000'),
(259, 1, 1, '2023-09-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '391000'),
(260, 1, 1, '2023-09-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '586500'),
(261, 1, 1, '2023-09-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '242000'),
(262, 1, 1, '2023-09-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '322000'),
(263, 1, 1, '2023-09-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '240000'),
(264, 1, 1, '2023-09-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1450000'),
(265, 1, 1, '2023-09-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1175000'),
(266, 1, 1, '2023-09-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '230000'),
(267, 1, 1, '2023-09-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '336000'),
(268, 1, 1, '2023-09-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '132000'),
(269, 1, 1, '2023-09-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1275000'),
(270, 1, 1, '2023-09-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '800000'),
(271, 1, 1, '2023-09-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '690000'),
(272, 1, 1, '2023-09-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '276000'),
(273, 1, 1, '2023-09-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '196000'),
(274, 1, 1, '2023-10-01', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '210000'),
(275, 1, 1, '2023-10-02', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '429000'),
(276, 1, 1, '2023-10-03', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1125000'),
(277, 1, 1, '2023-10-04', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '161000'),
(278, 1, 1, '2023-10-05', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '574000'),
(279, 1, 1, '2023-10-06', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '392000'),
(280, 1, 1, '2023-10-07', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '182000'),
(281, 1, 1, '2023-10-08', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '140000'),
(282, 1, 1, '2023-10-09', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '800000'),
(283, 1, 1, '2023-10-10', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '400000'),
(284, 1, 1, '2023-10-11', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '352000'),
(285, 1, 1, '2023-10-12', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '187000'),
(286, 1, 1, '2023-10-13', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '765000'),
(287, 1, 1, '2023-10-14', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '725000'),
(288, 1, 1, '2023-10-15', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '1450000'),
(289, 1, 1, '2023-10-16', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '632500'),
(290, 1, 1, '2023-10-17', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '220000'),
(291, 1, 1, '2023-10-18', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '570000'),
(292, 1, 1, '2023-10-19', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '330000'),
(293, 1, 1, '2023-10-20', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '638000'),
(294, 1, 1, '2023-10-21', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '588000'),
(295, 1, 1, '2023-10-22', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '644000'),
(296, 1, 1, '2023-10-23', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '266000'),
(297, 1, 1, '2023-10-24', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '138000'),
(298, 1, 1, '2023-10-25', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '286000'),
(299, 1, 1, '2023-10-26', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '520000'),
(300, 1, 1, '2023-10-27', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '140000'),
(301, 1, 1, '2023-10-28', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '825000'),
(302, 1, 1, '2023-10-29', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '530000'),
(303, 1, 1, '2023-10-30', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg', '714000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peramalan`
--

CREATE TABLE `peramalan` (
  `id_peramalan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_peramalan` varchar(20) NOT NULL,
  `bulan_periode` int(11) NOT NULL,
  `dt_aktual` int(11) NOT NULL,
  `dt_peramalan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peramalan`
--

INSERT INTO `peramalan` (`id_peramalan`, `id_barang`, `tgl_peramalan`, `bulan_periode`, `dt_aktual`, `dt_peramalan`) VALUES
(1, 1, '2023-10-30', 1, 156, 156),
(2, 1, '2023-10-30', 2, 110, 156),
(3, 1, '2023-10-30', 3, 206, 151),
(4, 1, '2023-10-30', 4, 158, 157),
(5, 2, '2023-10-30', 1, 165, 165),
(6, 2, '2023-10-30', 2, 144, 165),
(7, 2, '2023-10-30', 3, 0, 163),
(8, 1, '2023-10-30', 5, 0, 157),
(9, 3, '2023-10-30', 1, 161, 161),
(10, 3, '2023-10-30', 2, 278, 161),
(11, 3, '2023-10-30', 3, 56, 173),
(12, 3, '2023-10-30', 4, 232, 161),
(13, 3, '2023-10-30', 5, 0, 168),
(14, 6, '2023-10-30', 1, 188, 188),
(15, 6, '2023-10-30', 2, 0, 188),
(16, 5, '2023-10-30', 1, 91, 91),
(17, 5, '2023-10-30', 2, 0, 91),
(18, 4, '2023-10-30', 1, 221, 221),
(19, 4, '2023-10-30', 2, 0, 221);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supp` varchar(125) NOT NULL,
  `alamat_supp` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supp`, `alamat_supp`, `no_hp`, `username`, `password`) VALUES
(1, 'Supplier 1', 'Kuningan, Jawa Barat', '08512232123', 'supplier1', 'supplier1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `alamat`, `no_hp`, `username`, `password`, `level_user`) VALUES
(1, 'Admin', 'Kuningan, Jawa Barat', '08991232123', 'admin', 'admin', 1),
(2, 'Owner', 'Kuningan, Jawa Barat', '089912321232', 'owner', 'owner', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_pengajuan`
--
ALTER TABLE `detail_pengajuan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indeks untuk tabel `peramalan`
--
ALTER TABLE `peramalan`
  ADD PRIMARY KEY (`id_peramalan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `detail_pengajuan`
--
ALTER TABLE `detail_pengajuan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT untuk tabel `peramalan`
--
ALTER TABLE `peramalan`
  MODIFY `id_peramalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
