-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 21. Maret 2019 jam 07:28
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisa_alternatif`
--

CREATE TABLE IF NOT EXISTS `analisa_alternatif` (
  `alternatif_pertama` varchar(4) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  PRIMARY KEY (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`),
  KEY `alternatif_kedua` (`alternatif_kedua`),
  KEY `id_kriteria` (`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A001', 1, 0.27027027027027, 'A001', 'C1'),
('A001', 1, 0.32432432432433, 'A001', 'C2'),
('A001', 1, 0.28571428571429, 'A001', 'C3'),
('A001', 1, 0.37037037037037, 'A001', 'C4'),
('A001', 2, 0.44444444444444, 'A002', 'C1'),
('A001', 3, 0.52173913043478, 'A002', 'C2'),
('A001', 2, 0.375, 'A002', 'C3'),
('A001', 3, 0.57233704292528, 'A002', 'C4'),
('A001', 2, 0.23529411764706, 'A004', 'C1'),
('A001', 3, 0.25, 'A004', 'C2'),
('A001', 3, 0.39130434782609, 'A004', 'C3'),
('A001', 4, 0.33333333333333, 'A004', 'C4'),
('A001', 2, 0.17391304347826, 'A007', 'C1'),
('A001', 4, 0.38095238095238, 'A007', 'C2'),
('A001', 3, 0.3302752293578, 'A007', 'C3'),
('A001', 5, 0.43478260869565, 'A007', 'C4'),
('A001', 2, 0.15789473684211, 'A009', 'C1'),
('A001', 3, 0.25714285714286, 'A009', 'C2'),
('A001', 2, 0.1726618705036, 'A009', 'C3'),
('A001', 6, 0.375, 'A009', 'C4'),
('A001', 2, 0.1304347826087, 'A011', 'C1'),
('A001', 3, 0.19672131147541, 'A011', 'C2'),
('A001', 2, 0.14117647058824, 'A011', 'C3'),
('A001', 2, 0.12903225806452, 'A011', 'C4'),
('A001', 5, 0.27777777777778, 'A012', 'C1'),
('A001', 2, 0.125, 'A012', 'C2'),
('A001', 3, 0.13636363636364, 'A012', 'C3'),
('A001', 4, 0.19047619047619, 'A012', 'C4'),
('A002', 0.5, 0.13513513513514, 'A001', 'C1'),
('A002', 0.33333333333333, 0.10810810810811, 'A001', 'C2'),
('A002', 0.5, 0.14285714285714, 'A001', 'C3'),
('A002', 0.33333333333333, 0.12345679012346, 'A001', 'C4'),
('A002', 1, 0.22222222222222, 'A002', 'C1'),
('A002', 1, 0.17391304347826, 'A002', 'C2'),
('A002', 1, 0.1875, 'A002', 'C3'),
('A002', 1, 0.19077901430843, 'A002', 'C4'),
('A002', 4, 0.47058823529412, 'A004', 'C1'),
('A002', 6, 0.5, 'A004', 'C2'),
('A002', 2, 0.26086956521739, 'A004', 'C3'),
('A002', 5, 0.41666666666667, 'A004', 'C4'),
('A002', 4, 0.34782608695652, 'A007', 'C1'),
('A002', 2, 0.19047619047619, 'A007', 'C2'),
('A002', 2, 0.22018348623853, 'A007', 'C3'),
('A002', 2, 0.17391304347826, 'A007', 'C4'),
('A002', 4, 0.31578947368421, 'A009', 'C1'),
('A002', 3, 0.25714285714286, 'A009', 'C2'),
('A002', 2, 0.1726618705036, 'A009', 'C3'),
('A002', 4, 0.25, 'A009', 'C4'),
('A002', 4, 0.26086956521739, 'A011', 'C1'),
('A002', 4, 0.26229508196721, 'A011', 'C2'),
('A002', 3, 0.21176470588235, 'A011', 'C3'),
('A002', 6, 0.38709677419355, 'A011', 'C4'),
('A002', 2, 0.11111111111111, 'A012', 'C1'),
('A002', 2, 0.125, 'A012', 'C2'),
('A002', 2, 0.090909090909091, 'A012', 'C3'),
('A002', 8, 0.38095238095238, 'A012', 'C4'),
('A003', 1, 1, 'A003', 'C1'),
('A004', 0.5, 0.13513513513514, 'A001', 'C1'),
('A004', 0.33333333333333, 0.10810810810811, 'A001', 'C2'),
('A004', 0.33333333333333, 0.095238095238095, 'A001', 'C3'),
('A004', 0.25, 0.092592592592593, 'A001', 'C4'),
('A004', 0.25, 0.055555555555556, 'A002', 'C1'),
('A004', 0.16666666666667, 0.028985507246377, 'A002', 'C2'),
('A004', 0.5, 0.09375, 'A002', 'C3'),
('A004', 0.2, 0.038155802861685, 'A002', 'C4'),
('A004', 1, 0.11764705882353, 'A004', 'C1'),
('A004', 1, 0.083333333333333, 'A004', 'C2'),
('A004', 1, 0.1304347826087, 'A004', 'C3'),
('A004', 1, 0.083333333333333, 'A004', 'C4'),
('A004', 3, 0.26086956521739, 'A007', 'C1'),
('A004', 2, 0.19047619047619, 'A007', 'C2'),
('A004', 2, 0.22018348623853, 'A007', 'C3'),
('A004', 2, 0.17391304347826, 'A007', 'C4'),
('A004', 3, 0.23684210526316, 'A009', 'C1'),
('A004', 2, 0.17142857142857, 'A009', 'C2'),
('A004', 3, 0.2589928057554, 'A009', 'C3'),
('A004', 2, 0.125, 'A009', 'C4'),
('A004', 3, 0.19565217391304, 'A011', 'C1'),
('A004', 2, 0.13114754098361, 'A011', 'C2'),
('A004', 3, 0.21176470588235, 'A011', 'C3'),
('A004', 2, 0.12903225806452, 'A011', 'C4'),
('A004', 2, 0.11111111111111, 'A012', 'C1'),
('A004', 2, 0.125, 'A012', 'C2'),
('A004', 2, 0.090909090909091, 'A012', 'C3'),
('A004', 2, 0.095238095238095, 'A012', 'C4'),
('A005', 1, 1, 'A005', 'C1'),
('A006', 1, 1, 'A006', 'C1'),
('A007', 0.5, 0.13513513513514, 'A001', 'C1'),
('A007', 0.25, 0.081081081081081, 'A001', 'C2'),
('A007', 0.33333333333333, 0.095238095238095, 'A001', 'C3'),
('A007', 0.2, 0.074074074074074, 'A001', 'C4'),
('A007', 0.25, 0.055555555555556, 'A002', 'C1'),
('A007', 0.5, 0.08695652173913, 'A002', 'C2'),
('A007', 0.5, 0.09375, 'A002', 'C3'),
('A007', 0.5, 0.095389507154213, 'A002', 'C4'),
('A007', 0.33333333333333, 0.039215686274509, 'A004', 'C1'),
('A007', 0.5, 0.041666666666667, 'A004', 'C2'),
('A007', 0.5, 0.065217391304348, 'A004', 'C3'),
('A007', 0.5, 0.041666666666667, 'A004', 'C4'),
('A007', 1, 0.08695652173913, 'A007', 'C1'),
('A007', 1, 0.095238095238095, 'A007', 'C2'),
('A007', 1, 0.11009174311927, 'A007', 'C3'),
('A007', 1, 0.08695652173913, 'A007', 'C4'),
('A007', 2, 0.15789473684211, 'A009', 'C1'),
('A007', 2, 0.17142857142857, 'A009', 'C2'),
('A007', 3, 0.2589928057554, 'A009', 'C3'),
('A007', 2, 0.125, 'A009', 'C4'),
('A007', 2, 0.1304347826087, 'A011', 'C1'),
('A007', 2, 0.13114754098361, 'A011', 'C2'),
('A007', 2, 0.14117647058824, 'A011', 'C3'),
('A007', 2, 0.12903225806452, 'A011', 'C4'),
('A007', 2, 0.11111111111111, 'A012', 'C1'),
('A007', 2, 0.125, 'A012', 'C2'),
('A007', 4, 0.18181818181818, 'A012', 'C3'),
('A007', 2, 0.095238095238095, 'A012', 'C4'),
('A008', 1, 1, 'A008', 'C1'),
('A009', 0.5, 0.13513513513514, 'A001', 'C1'),
('A009', 0.33333333333333, 0.10810810810811, 'A001', 'C2'),
('A009', 0.5, 0.14285714285714, 'A001', 'C3'),
('A009', 0.16666666666667, 0.06172839506173, 'A001', 'C4'),
('A009', 0.25, 0.055555555555556, 'A002', 'C1'),
('A009', 0.33333333333333, 0.057971014492753, 'A002', 'C2'),
('A009', 0.5, 0.09375, 'A002', 'C3'),
('A009', 0.25, 0.047694753577106, 'A002', 'C4'),
('A009', 0.33333333333333, 0.039215686274509, 'A004', 'C1'),
('A009', 0.5, 0.041666666666667, 'A004', 'C2'),
('A009', 0.33333333333333, 0.043478260869565, 'A004', 'C3'),
('A009', 0.5, 0.041666666666667, 'A004', 'C4'),
('A009', 0.5, 0.043478260869565, 'A007', 'C1'),
('A009', 0.5, 0.047619047619048, 'A007', 'C2'),
('A009', 0.33333333333333, 0.036697247706422, 'A007', 'C3'),
('A009', 0.5, 0.043478260869565, 'A007', 'C4'),
('A009', 1, 0.078947368421053, 'A009', 'C1'),
('A009', 1, 0.085714285714286, 'A009', 'C2'),
('A009', 1, 0.086330935251799, 'A009', 'C3'),
('A009', 1, 0.0625, 'A009', 'C4'),
('A009', 3, 0.19565217391304, 'A011', 'C1'),
('A009', 3, 0.19672131147541, 'A011', 'C2'),
('A009', 3, 0.21176470588235, 'A011', 'C3'),
('A009', 2, 0.12903225806452, 'A011', 'C4'),
('A009', 3, 0.16666666666667, 'A012', 'C1'),
('A009', 3, 0.1875, 'A012', 'C2'),
('A009', 4, 0.18181818181818, 'A012', 'C3'),
('A009', 2, 0.095238095238095, 'A012', 'C4'),
('A010', 1, 1, 'A010', 'C1'),
('A011', 0.5, 0.13513513513514, 'A001', 'C1'),
('A011', 0.33333333333333, 0.10810810810811, 'A001', 'C2'),
('A011', 0.5, 0.14285714285714, 'A001', 'C3'),
('A011', 0.5, 0.18518518518519, 'A001', 'C4'),
('A011', 0.25, 0.055555555555556, 'A002', 'C1'),
('A011', 0.25, 0.043478260869565, 'A002', 'C2'),
('A011', 0.33333333333333, 0.062499999999999, 'A002', 'C3'),
('A011', 0.16666666666667, 0.031796502384738, 'A002', 'C4'),
('A011', 0.33333333333333, 0.039215686274509, 'A004', 'C1'),
('A011', 0.5, 0.041666666666667, 'A004', 'C2'),
('A011', 0.33333333333333, 0.043478260869565, 'A004', 'C3'),
('A011', 0.5, 0.041666666666667, 'A004', 'C4'),
('A011', 0.5, 0.043478260869565, 'A007', 'C1'),
('A011', 0.5, 0.047619047619048, 'A007', 'C2'),
('A011', 0.5, 0.055045871559633, 'A007', 'C3'),
('A011', 0.5, 0.043478260869565, 'A007', 'C4'),
('A011', 0.33333333333333, 0.026315789473684, 'A009', 'C1'),
('A011', 0.33333333333333, 0.028571428571428, 'A009', 'C2'),
('A011', 0.33333333333333, 0.028776978417266, 'A009', 'C3'),
('A011', 0.5, 0.03125, 'A009', 'C4'),
('A011', 1, 0.065217391304348, 'A011', 'C1'),
('A011', 1, 0.065573770491803, 'A011', 'C2'),
('A011', 1, 0.070588235294118, 'A011', 'C3'),
('A011', 1, 0.064516129032258, 'A011', 'C4'),
('A011', 3, 0.16666666666667, 'A012', 'C1'),
('A011', 4, 0.25, 'A012', 'C2'),
('A011', 6, 0.27272727272727, 'A012', 'C3'),
('A011', 2, 0.095238095238095, 'A012', 'C4'),
('A012', 0.2, 0.054054054054054, 'A001', 'C1'),
('A012', 0.5, 0.16216216216216, 'A001', 'C2'),
('A012', 0.33333333333333, 0.095238095238095, 'A001', 'C3'),
('A012', 0.25, 0.092592592592593, 'A001', 'C4'),
('A012', 0.5, 0.11111111111111, 'A002', 'C1'),
('A012', 0.5, 0.08695652173913, 'A002', 'C2'),
('A012', 0.5, 0.09375, 'A002', 'C3'),
('A012', 0.125, 0.023847376788553, 'A002', 'C4'),
('A012', 0.5, 0.058823529411765, 'A004', 'C1'),
('A012', 0.5, 0.041666666666667, 'A004', 'C2'),
('A012', 0.5, 0.065217391304348, 'A004', 'C3'),
('A012', 0.5, 0.041666666666667, 'A004', 'C4'),
('A012', 0.5, 0.043478260869565, 'A007', 'C1'),
('A012', 0.5, 0.047619047619048, 'A007', 'C2'),
('A012', 0.25, 0.027522935779817, 'A007', 'C3'),
('A012', 0.5, 0.043478260869565, 'A007', 'C4'),
('A012', 0.33333333333333, 0.026315789473684, 'A009', 'C1'),
('A012', 0.33333333333333, 0.028571428571428, 'A009', 'C2'),
('A012', 0.25, 0.02158273381295, 'A009', 'C3'),
('A012', 0.5, 0.03125, 'A009', 'C4'),
('A012', 0.33333333333333, 0.021739130434782, 'A011', 'C1'),
('A012', 0.25, 0.016393442622951, 'A011', 'C2'),
('A012', 0.16666666666667, 0.011764705882353, 'A011', 'C3'),
('A012', 0.5, 0.032258064516129, 'A011', 'C4'),
('A012', 1, 0.055555555555556, 'A012', 'C1'),
('A012', 1, 0.0625, 'A012', 'C2'),
('A012', 1, 0.045454545454545, 'A012', 'C3'),
('A012', 1, 0.047619047619048, 'A012', 'C4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisa_kriteria`
--

CREATE TABLE IF NOT EXISTS `analisa_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL,
  PRIMARY KEY (`kriteria_pertama`,`kriteria_kedua`),
  KEY `kriteria_kedua` (`kriteria_kedua`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `analisa_kriteria`
--

INSERT INTO `analisa_kriteria` (`kriteria_pertama`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kriteria_kedua`) VALUES
('C1', 1, 0.37037037037037, 'C1'),
('C1', 2, 0.46153846153846, 'C2'),
('C1', 2, 0.34285714285714, 'C3'),
('C1', 2, 0.21052631578947, 'C4'),
('C2', 0.5, 0.18518518518519, 'C1'),
('C2', 1, 0.23076923076923, 'C2'),
('C2', 2, 0.34285714285714, 'C3'),
('C2', 3, 0.31578947368421, 'C4'),
('C3', 0.5, 0.18518518518519, 'C1'),
('C3', 0.5, 0.11538461538462, 'C2'),
('C3', 1, 0.17142857142857, 'C3'),
('C3', 3, 0.31578947368421, 'C4'),
('C4', 0.5, 0.18518518518519, 'C1'),
('C4', 0.33333333333333, 0.076923076923076, 'C2'),
('C4', 0.33333333333333, 0.057142857142857, 'C3'),
('C4', 1, 0.10526315789474, 'C4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alternatif`
--

CREATE TABLE IF NOT EXISTS `data_alternatif` (
  `id_alternatif` varchar(4) NOT NULL,
  `nomor_wisata` char(18) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `hasil_akhir` double DEFAULT NULL,
  PRIMARY KEY (`id_alternatif`),
  KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `nomor_wisata`, `nama`, `id_kategori`, `tanggal_masuk`, `hasil_akhir`) VALUES
('A001', '130000000005610101', 'Tamansari', 3, '2019-02-15', 0.261244832305573),
('A002', '130000000005610102', 'Gembira Loka', 3, '2019-02-15', 0.24834621016581),
('A003', '130000000005610103', 'Kids Fun', 3, '2019-02-15', 0.36039179144442),
('A004', '130000000005610104', 'Balong Waterpark', 3, '2019-02-15', 0.147254794309832),
('A005', '130000000005610105', 'Monumen Segoroyoso', 3, '2019-02-15', 0.36039179144442),
('A006', '130000000005610106', 'Bendung Tegal', 3, '2019-02-15', 0.36039179144442),
('A007', '130000000005610107', 'Pemandian Parangwedang', 3, '2019-02-15', 0.10621689993532901),
('A008', '130000000005610108', 'Grand Puri Waterpark', 3, '2019-02-15', 0.36039179144442),
('A009', '130000000005610109', 'Pinus Pengger', 2, '2019-02-15', 0.1020753290249626),
('A010', '130000000005610110', 'Puncak Becici', 2, '2019-02-15', 0.36039179144442),
('A011', '130000000005610111', 'Parangtritis', 2, '2019-02-15', 0.0796589763000298),
('A012', '130000000005610112', 'Gumuk Pasir', 2, '2019-02-15', 0.055202957958472104),
('A013', '130000000005610113', 'Curug Pulosari', 2, '2019-02-15', 0.05520295795847211),
('A014', '130000000005610114', 'Kebun Buah Mangunan', 2, '2019-02-15', 0.1552029579584721),
('A015', '130000000005610115', 'Candi Gampingan', 1, '2019-03-20', 0.055202957958472104),
('A016', '130000000005610116', 'Seribu Batu Songgo Langit', 2, '2019-03-20', 0.0552029579584721),
('A017', '130000000005610117', 'Pantai Samas', 2, '2019-03-20', 0.0552029579584727),
('A018', '130000000005610118', 'Goa Selarong', 2, '2019-03-20', 0.0552029579584729),
('A019', '130000000005610119', 'Museum Wayang Kekayon', 1, '2019-03-21', 0.055202957958473),
('A020', '130000000005610120', 'Museum Batik', 1, '2019-03-21', 0.055202957958479),
('A021', '130000000005610121', 'Padepokan Seni Bagong Kusudiharjo', 1, '2019-03-21', 0.05520295795848),
('A022', '130000000005610122', 'Sumur Bandung', 1, '2019-03-21', 0.0552029579585),
('A023', '130000000005610123', 'Sendang Manikmoyo', 1, '2019-03-21', 0.05520295795856),
('A024', '130000000005610124', 'Makam Raja - Raja Mataram', 1, '2019-03-21', 0.05520295795857),
('A025', '130000000005610125', 'Monumen Panglima Besar Jendral Sudirman', 1, '2019-03-21', 0.05520295795858);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kriteria`
--

CREATE TABLE IF NOT EXISTS `data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_kriteria`
--

INSERT INTO `data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Harga', 2.7, 0.360391791444422),
('C2', 'Fasilitas', 4.33333333333333, 0.24825353983248802),
('C3', 'Keindahan', 5.83333333333333, 0.190890902469852),
('C4', 'Waktu', 9.5, 0.11823618876250659);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jum_alt_kri`
--

CREATE TABLE IF NOT EXISTS `jum_alt_kri` (
  `id_alternatif` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL,
  PRIMARY KEY (`id_alternatif`,`id_kriteria`),
  KEY `id_kriteria` (`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jum_alt_kri`
--

INSERT INTO `jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A001', 'C1', 3.7, 0.24143273900980283, 0.087010377325076),
('A001', 'C2', 3.0833333333333197, 0.26756494124274144, 0.066423943798582),
('A001', 'C3', 3.49999999999999, 0.26563833417866856, 0.050707941341954),
('A001', 'C4', 2.7, 0.2851334579149064, 0.033713093352533),
('A002', 'C1', 4.5, 0.26622026137438715, 0.095943596915518),
('A002', 'C2', 5.75, 0.24860550791380995, 0.061717197361457),
('A002', 'C3', 5.33333333333333, 0.22701061773340198, 0.043334261689368),
('A002', 'C4', 5.24166666666667, 0.2389317015044353, 0.028250373760425),
('A003', 'C1', 1, 1, 0.36039179144442),
('A004', 'C1', 8.499999999999991, 0.15897324357413228, 0.057292652043412),
('A004', 'C2', 12, 0.13937799689965114, 0.0346010811051),
('A004', 'C3', 7.666666666666661, 0.14536023443939436, 0.027747946335365),
('A004', 'C4', 12, 0.1353510731712774, 0.016003395036687),
('A005', 'C1', 1, 1, 0.36039179144442),
('A006', 'C1', 1, 1, 0.36039179144442),
('A007', 'C1', 11.5, 0.102329075609465, 0.036878558875747),
('A007', 'C2', 10.5, 0.10348728617167201, 0.025691085119775),
('A007', 'C3', 9.08333333333333, 0.11405269972509241, 0.021771622779646),
('A007', 'C4', 11.5, 0.10865942204155855, 0.012847475935331),
('A008', 'C1', 1, 1, 0.36039179144442),
('A009', 'C1', 12.66666666666666, 0.10209297811936184, 0.036793471278333),
('A009', 'C2', 11.66666666666666, 0.10285366292227194, 0.025533785905192),
('A009', 'C3', 11.58333333333333, 0.10650703596653631, 0.020331224215041),
('A009', 'C4', 16, 0.09707093517053378, 0.011477297414176),
('A010', 'C1', 1, 1, 0.36039179144442),
('A011', 'C1', 15.33333333333333, 0.07594064075421028, 0.027368383564847),
('A011', 'C2', 15.25, 0.07975726911472093, 0.019800024385102),
('A011', 'C3', 14.16666666666667, 0.08536073949195638, 0.016294588597113),
('A011', 'C4', 15.5, 0.0816323703109856, 0.0096519003452205),
('A012', 'C1', 18, 0.05301106155864515, 0.019104751441491),
('A012', 'C2', 16, 0.058353335735135715, 0.014486422157281),
('A012', 'C3', 22, 0.056070338464952754, 0.010703317511365),
('A012', 'C4', 21, 0.05322103988630582, 0.0062926529181341);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Budaya'),
(2, 'Wisata Alam'),
(3, 'Wisata Buatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
(2, 0.5, 'Mutlak sangat penting dari'),
(3, 0.8, 'Mendekati mutlak dari'),
(8, 0.76, 'Sangat penting dari'),
(9, 0.69, 'Mendekati sangat penting dari'),
(10, 0.52, 'Lebih penting dari'),
(11, 0.49, 'Mendekati lebih penting dari'),
(12, 0.31, 'Sedikit lebih penting dari'),
(13, 0.26, 'Mendekati sedikit lebih penting dari'),
(14, 0.9, 'Sama penting dengan'),
(15, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(16, 0.333, '1 bagi sedikit lebih penting dari'),
(17, 0.25, '1 bagi mendekati lebih penting dari'),
(18, 0.2, '1 bagi lebih penting dari'),
(19, 0.167, '1 bagi mendekati sangat penting dari'),
(20, 0.143, '1 bagi sangat penting dari'),
(21, 0.125, '1 bagi mendekati mutlak dari'),
(22, 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_awal`
--

CREATE TABLE IF NOT EXISTS `nilai_awal` (
  `id_nilai_awal` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternatif` varchar(4) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  `keterangan` enum('B','C','K') NOT NULL,
  `periode` varchar(4) NOT NULL,
  PRIMARY KEY (`id_nilai_awal`,`id_alternatif`),
  KEY `alternatif` (`id_alternatif`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `nilai_awal`
--

INSERT INTO `nilai_awal` (`id_nilai_awal`, `id_alternatif`, `nilai`, `keterangan`, `periode`) VALUES
(1, 'A001', '80', 'B', '2019'),
(2, 'A002', '85', 'B', '2019'),
(3, 'A003', '70', 'C', '2019'),
(4, 'A004', '90', 'B', '2019'),
(5, 'A005', '67', 'K', '2019'),
(6, 'A006', '79', 'C', '2019'),
(7, 'A007', '95', 'B', '2019'),
(8, 'A008', '88', 'C', '2019'),
(9, 'A009', '70', 'B', '2019'),
(10, 'A010', '99', 'B', '2019'),
(11, 'A011', '89', 'B', '2019'),
(12, 'A012', '55', 'K', '2019'),
(13, 'A013', '90', 'B', '2019'),
(14, 'A014', '80', 'B', '2019'),
(15, 'A015', '70', 'C', '2019'),
(16, 'A016', '80', 'B', '2019'),
(17, 'A017', '70', 'C', '2019'),
(18, 'A018', '77', 'C', '2019'),
(19, 'A019', '70', 'C', '2019'),
(20, 'A020', '68', 'C', '2019'),
(21, 'A021', '79', 'C', '2019'),
(22, 'A022', '59', 'K', '2019'),
(23, 'A023', '66', 'C', '2019'),
(24, 'A024', '98', 'B', '2019'),
(25, 'A025', '90', 'B', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_awal_detail`
--

CREATE TABLE IF NOT EXISTS `nilai_awal_detail` (
  `id_nilai_awal_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_nilai_awal` int(11) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `nilai` int(2) NOT NULL,
  PRIMARY KEY (`id_nilai_awal_detail`,`id_nilai_awal`),
  KEY `alternatif` (`id_nilai_awal`),
  KEY `id_kriteria` (`id_kriteria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data untuk tabel `nilai_awal_detail`
--

INSERT INTO `nilai_awal_detail` (`id_nilai_awal_detail`, `id_nilai_awal`, `id_kriteria`, `nilai`) VALUES
(1, 1, 'C1', 90),
(2, 1, 'C2', 80),
(3, 1, 'C3', 90),
(4, 1, 'C4', 90),
(6, 2, 'C1', 90),
(7, 2, 'C2', 80),
(8, 2, 'C3', 90),
(9, 2, 'C4', 80),
(11, 3, 'C1', 70),
(12, 3, 'C2', 60),
(13, 3, 'C3', 75),
(14, 3, 'C4', 60),
(16, 4, 'C1', 90),
(17, 4, 'C2', 80),
(18, 4, 'C3', 90),
(19, 4, 'C4', 70),
(21, 5, 'C1', 70),
(22, 5, 'C2', 80),
(23, 5, 'C3', 75),
(24, 5, 'C4', 30),
(26, 6, 'C1', 80),
(27, 6, 'C2', 50),
(28, 6, 'C3', 70),
(29, 6, 'C4', 80),
(31, 7, 'C1', 90),
(32, 7, 'C2', 80),
(33, 7, 'C3', 90),
(34, 7, 'C4', 80),
(36, 8, 'C1', 70),
(37, 8, 'C2', 80),
(38, 8, 'C3', 60),
(39, 8, 'C4', 70),
(41, 9, 'C1', 90),
(42, 9, 'C2', 80),
(43, 9, 'C3', 90),
(44, 9, 'C4', 90),
(46, 10, 'C1', 70),
(47, 10, 'C2', 60),
(48, 10, 'C3', 70),
(49, 10, 'C4', 60),
(51, 11, 'C1', 90),
(52, 11, 'C2', 80),
(53, 11, 'C3', 90),
(54, 11, 'C4', 80),
(56, 12, 'C1', 90),
(57, 12, 'C2', 80),
(58, 12, 'C3', 90),
(59, 12, 'C4', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE IF NOT EXISTS `ranking` (
  `kriteria` varchar(2) NOT NULL,
  `skor_bobot` double NOT NULL,
  `alternatif` varchar(4) NOT NULL,
  PRIMARY KEY (`kriteria`,`alternatif`),
  KEY `alternatif` (`alternatif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  ADD CONSTRAINT `analisa_alternatif_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_alternatif_ibfk_2` FOREIGN KEY (`alternatif_pertama`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_alternatif_ibfk_3` FOREIGN KEY (`alternatif_kedua`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD CONSTRAINT `analisa_kriteria_ibfk_1` FOREIGN KEY (`kriteria_pertama`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_kriteria_ibfk_2` FOREIGN KEY (`kriteria_kedua`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD CONSTRAINT `data_alternatif_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `jum_alt_kri`
--
ALTER TABLE `jum_alt_kri`
  ADD CONSTRAINT `jum_alt_kri_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jum_alt_kri_ibfk_2` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_awal`
--
ALTER TABLE `nilai_awal`
  ADD CONSTRAINT `nilai_awal_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_awal_detail`
--
ALTER TABLE `nilai_awal_detail`
  ADD CONSTRAINT `nilai_awal_detail_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_awal_detail_ibfk_2` FOREIGN KEY (`id_nilai_awal`) REFERENCES `nilai_awal` (`id_nilai_awal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ranking_ibfk_2` FOREIGN KEY (`alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
