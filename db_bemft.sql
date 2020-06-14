-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2020 pada 05.35
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bemft`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(4, 'Rapat Bersama Himaprodi Fakultas Teknik', '2019-05-12 06:50:17', 'BEM FT mengadakan Rapat besar bersama himaprodi dengan mengundang wakil dekan Moh Jasri,M,kom', '2019-05-12', '2019-05-12', 'Aula Fakultas Teknik', '13.00 - 15.00 WIB', 'Rapat Mingguan BEM FT', 'Mohamad Hafid Masruri'),
(5, 'Seminar Startup Bersama Ngoder ID', '2019-08-05 07:43:23', 'Seminar Startup Bersama Ngoder ID', '2019-08-10', '2019-08-10', 'Aula Unuja', '10.00 - Selesai', 'Tidak Ada', 'Sukron Makmun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'Rapat Proker', '2019-05-11 07:54:30', 2, 'Mohamad Hafid Masruri', 2, '57e37a2349480d62b0f0418d67b2f5f1.png'),
(6, 'Kongres', '2019-05-15 02:16:13', 2, 'Mohamad Hafid Masruri', 1, 'cd22ace92927fc8bdee8523ebbeddd25.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(13, 'Tupoksi BEM FT', 'Tugas Pokok Dan Fungsi BEM FT', '2019-05-16 19:55:49', 'Sukron Makmun, M.Hack', 0, '6553cdb7a1abb8078eec5b83fb9f896d.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
(7, 'Belajar dengan native speaker', '2017-01-24 01:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi'),
(8, 'Diskusi dengan native speaker', '2017-01-24 01:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi'),
(9, 'Foto bareng native speaker', '2017-01-24 01:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi'),
(10, 'Foto bareng native speaker', '2017-01-24 01:28:40', 'd70cedba6391b7b3c74b914efd82953f.jpg', 1, 1, 'M Fikri Setiadi'),
(11, 'Foto bareng native speaker', '2017-01-24 01:28:54', '10de99f425b9961ce1e87c5e5575f8f4.jpg', 1, 1, 'M Fikri Setiadi'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi'),
(19, 'Rapat Proker BEM FT', '2019-05-11 07:55:13', '358a121c4de062226687c3ff7e81983a.png', 5, 2, 'Mohamad Hafid Masruri'),
(20, 'Rapat Proker BEM FT', '2019-05-11 08:11:04', '7ae140b98db927a07c6d542546b385f3.png', 5, 2, 'Mohamad Hafid Masruri'),
(21, 'Kongres BEM FT Jatim', '2019-05-15 02:16:47', '7c4acceb831f0d30ec896949cbf03f54.png', 6, 2, 'Mohamad Hafid Masruri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(7, '16010217', 'Syukron Makmun', 'L', 'Probolinggo', '13 Desember 1997', 'Gubernur BEM FT', '010dbb128116fb22958e43c112a97fd3.jpg', '2019-05-13 06:30:37'),
(8, '16010038', 'Miftahul Hasanah', 'P', 'Situbondo', '10 Februari 1999', 'Wakil Gubernur BEM FT', '7e170159b3bf76d7f6a7af73c65369ff.jpg', '2019-05-13 06:31:28'),
(9, '17010001', 'Ari Amal Firdaus', 'L', 'Lumajang', '27 Juli 1998', 'Sekretaris', '32a00ec0c0cbf695cf7a41d9d1591049.jpg', '2019-05-13 06:34:46'),
(10, '17010151', 'Irfan Rosadi', 'L', 'Buleleng', '26 Desember 1998', 'Wakil Sekretaris', 'd6718d630c0866ae4e2b793fe5dc2c58.jpg', '2019-05-13 06:36:29'),
(11, '17010001', 'Fajrullah', 'L', 'Lumajang', '27 Juli 1998', 'C.O Departemen Aparatur', '79ed24299a63591d369af68545b59e8e.jpg', '2019-05-13 06:38:40'),
(12, '17010226', 'Shodiq Taufiq', 'L', 'Probolinggo', '10 Februari 2000', 'Departemen Aparatur', 'fdfbe85df36956c0a181ad23c75d7b0c.jpg', '2019-05-13 06:39:27'),
(13, '16010097', 'Wiwin Ariyanti', 'P', 'Lumajang', '8 Desember 1997', 'C.O Departemen Keuangan', '5e3656667e58b759e752e99e480c4bf7.jpg', '2019-05-13 06:40:46'),
(15, '17010057', 'Reska Isfianita Paputungan', 'P', 'Lumajang', '28 Desember 1997', 'Departemen Keuangan', '542f7d4fd753554ad365b617b112623e.jpg', '2019-05-13 06:45:09'),
(16, '0', 'Siti Qomariah', 'P', 'Lumajang', '27 Juli 1998', 'Departemen Keuangan', '934cc4dd29211ae6ad269d182ca24bb0.jpg', '2019-05-13 06:45:57'),
(17, '16010229', 'Ahmad Badri Firman Firdausih', 'L', 'Wamena', '26 Mei 1998', 'C.O Departemen Dalam Kampus', '8a16068d2bb157a78185d49f5025b2bd.jpg', '2019-05-13 06:50:45'),
(20, '17010197', 'Mohamad Hafid Masruri', 'L', 'Lumajang', '27 Juli 1998', 'Departemen Dalam Kampus', '1a8f31ffdd30ade3c38647188e609a54.jpg', '2019-05-13 06:56:05'),
(21, '17010049', 'Nur Ajizah Yanuar Ridwan', 'P', 'Jember', '10 Januari 1999', 'Departemen Dalam Kampus', '57fc0b1ebd79903d7339715a97cbd044.jpg', '2019-05-13 06:56:39'),
(22, '16010150', 'Mohammad Nuris', 'L', 'Bondowoso', '09 Mei 1998', 'C.O Departemen Sosial Agama', '32a2e997cd3bb61c5e1fc5fc5f761ae8.jpg', '2019-05-13 06:58:31'),
(23, '16010108', 'Silvi Oktavia Hasanah', 'P', 'Probolinggo', '12 Oktober 1997', 'Departemen Sosial Agama', '21e90398856a6aac3e672849b895425f.jpg', '2019-05-13 07:01:08'),
(24, '17010001', 'Abidatus Siddiqoh', 'P', 'Sumenep', '21 September 1998', 'Departemen Sosial Agama', '3bf4e57eb5b1bf8c11b8b97ba6f6abc3.jpg', '2019-05-13 07:02:00'),
(25, '16010177', 'Ahmad Sholahuddin', 'L', 'Probolinggo', '22 Juni 1998', 'C.O Departemen Luar Kampus', 'eb57654bb6d78c72121b7723c3e48421.jpg', '2019-05-13 07:03:42'),
(26, '17010096', 'Abdul Razaq', 'L', 'Sumenep', '15 Maret 1999', 'Departemen Luar Kampus', 'a7da1651f66d35cbecbb7144e8af444b.jpg', '2019-05-13 07:05:20'),
(27, '16010010', 'Novia Indriati', 'P', 'Palangkaraya', '04 November 1997', 'Departemen Luar Kampus', '1013cfb7024ab8bc164554ed1a4a842c.jpg', '2019-05-13 07:06:24'),
(28, '16010176', 'Ahmad Failani', 'L', 'Probolinggo', '24 Juni 1997', 'C.O Departemen Riset Teknologi', '5c42b581d92dd13fd6b3e3702fd0c04e.jpg', '2019-05-13 07:08:03'),
(29, '17010069', 'Muhammad Nurul Asfiyach', 'L', 'Probolinggo', '7 Desember 1997', 'Departemen Riset Teknologi', '8ab27d4b1d18d23b6e7f29a167158218.jpg', '2019-05-13 07:08:57'),
(30, '17010069', 'Siti Masruroh', 'P', 'Probolinggo', '4 Februari 1999', 'Departemen Riset Teknologi', '7b0401d655d5afa70343bee578295b20.jpg', '2019-05-13 07:11:43'),
(31, '16030033', 'Salman Alfarisi Arifin', 'L', 'Sampang', '7 Maret 1998', 'Departemen Sumber Daya Mahasiswa', '10efea9dd0cda9343d60e1d553d96f8a.jpg', '2019-05-13 07:15:56'),
(32, '16010034', 'Alfi Lailatul Fitriah', 'P', 'Probolinggo', '15 November 1998', 'Departemen Sumber Daya Mahasiswa', '92387c363cbea1c8a4154f95107634c5.jpg', '2019-05-13 07:16:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Biografi', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(14, 'Lomba', '2019-05-07 23:09:03'),
(15, 'Sidang BEM FT', '2019-05-15 02:26:52'),
(16, 'Hari Besar', '2019-05-15 02:30:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(5, 'Mohamad Hafid Masruri', 'hafidzsidqiya17@gmail.com', ' Alhamdulillah.... ', '2019-05-07 23:05:00', '1', 26, 0),
(6, 'Uchiha Madara', 'do.crazy192@gmail.com', 'mantapppzz.. ', '2019-05-09 04:45:29', '1', 26, 0),
(8, 'Urashiki Outsusuki', 'commit@gmail.com', ' hacked wkkw', '2019-08-28 13:25:27', '1', 31, 0),
(9, 'Mohammad Nuris', 'commit@gmail.com', ' hai', '2019-08-28 14:59:18', '1', 30, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Sukron Makmun', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'I am a mountainner. to me mountainerring is a life', 'sukma@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', 'dea7a9fc4dfff6b5f953d7dfb5a4a8ca.jpg'),
(3, 'Mohamad Hafid Masruri', NULL, 'L', 'hafid', '03ccd0c384b26142685776e5baec7a92', NULL, 'do.crazy192@gmail.com', '081331289350', NULL, NULL, NULL, NULL, 1, '1', '2019-09-15 01:34:44', '4ae9a06135095d5eecb7398f28b8f376.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(6, 'Libur Ramadhan 2019', 'Libur Ramadhan jatuh pada tanggal 22 maret 2019', '2019-05-18 03:54:44', 'Mohamad Hafid Masruri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2019-05-05 13:00:36', '::1', 'Chrome'),
(932, '2019-05-06 16:29:10', '::1', 'Chrome'),
(933, '2019-05-07 20:54:30', '::1', 'Chrome'),
(934, '2019-05-08 23:11:57', '::1', 'Chrome'),
(935, '2019-05-09 07:05:23', '::1', 'Chrome'),
(936, '2019-05-11 05:17:25', '::1', 'Chrome'),
(937, '2019-05-11 07:03:25', '::1', 'Chrome'),
(938, '2019-05-12 07:00:16', '::1', 'Chrome'),
(939, '2019-05-13 07:01:20', '::1', 'Chrome'),
(940, '2019-05-15 01:36:14', '::1', 'Chrome'),
(941, '2019-05-16 19:33:06', '::1', 'Chrome'),
(942, '2019-05-18 03:42:23', '::1', 'Chrome'),
(943, '2019-05-19 17:40:47', '::1', 'Chrome'),
(944, '2019-05-27 06:42:35', '::1', 'Chrome'),
(945, '2019-05-29 23:58:28', '::1', 'Chrome'),
(946, '2019-05-30 12:22:20', '::1', 'Chrome'),
(947, '2019-06-23 03:17:52', '::1', 'Chrome'),
(948, '2019-07-06 16:46:13', '::1', 'Chrome'),
(949, '2019-07-08 04:32:30', '::1', 'Chrome'),
(950, '2019-07-08 07:17:11', '::1', 'Chrome'),
(951, '2019-07-09 10:56:51', '::1', 'Chrome'),
(952, '2019-07-14 00:19:42', '::1', 'Chrome'),
(953, '2019-07-14 04:52:50', '127.0.0.1', 'Internet Explorer'),
(954, '2019-07-15 08:27:55', '::1', 'Chrome'),
(955, '2019-07-19 14:07:48', '::1', 'Chrome'),
(956, '2019-07-20 07:01:21', '::1', 'Chrome'),
(957, '2019-07-21 13:36:15', '::1', 'Chrome'),
(958, '2019-07-30 19:09:48', '::1', 'Chrome'),
(959, '2019-08-01 19:10:24', '::1', 'Chrome'),
(960, '2019-08-03 03:19:30', '::1', 'Chrome'),
(961, '2019-08-05 04:41:51', '::1', 'Chrome'),
(962, '2019-08-05 07:00:09', '::1', 'Chrome'),
(963, '2019-08-16 22:08:09', '::1', 'Chrome'),
(964, '2019-08-26 15:50:01', '::1', 'Chrome'),
(965, '2019-08-27 16:24:59', '::1', 'Chrome'),
(966, '2019-08-27 16:24:59', '::1', 'Chrome'),
(967, '2019-08-28 13:05:00', '::1', 'Chrome'),
(968, '2019-08-30 05:17:09', '::1', 'Chrome'),
(969, '2019-08-30 07:02:11', '::1', 'Chrome'),
(970, '2019-09-01 07:46:49', '::1', 'Chrome'),
(971, '2019-09-06 00:44:58', '::1', 'Chrome'),
(972, '2019-09-08 20:18:49', '::1', 'Chrome'),
(973, '2019-09-15 00:56:35', '::1', 'Chrome'),
(974, '2019-09-16 00:49:00', '::1', 'Chrome'),
(975, '2019-09-17 02:24:32', '::1', 'Chrome'),
(976, '2019-09-17 14:40:49', '::1', 'Chrome'),
(977, '2019-09-21 16:47:25', '::1', 'Chrome'),
(978, '2019-09-28 17:57:45', '::1', 'Chrome'),
(979, '2019-09-30 21:19:29', '::1', 'Chrome'),
(980, '2019-10-01 18:29:59', '::1', 'Chrome'),
(981, '2019-10-03 02:02:08', '::1', 'Chrome'),
(982, '2019-10-03 14:31:25', '::1', 'Chrome'),
(983, '2019-10-07 23:01:34', '::1', 'Chrome'),
(984, '2019-10-15 09:18:13', '::1', 'Chrome'),
(985, '2019-10-18 00:16:12', '::1', 'Chrome'),
(986, '2019-10-22 04:15:58', '::1', 'Chrome'),
(987, '2019-10-23 04:49:02', '::1', 'Chrome'),
(988, '2019-10-28 00:12:47', '::1', 'Chrome'),
(989, '2019-10-30 04:23:41', '::1', 'Chrome'),
(990, '2019-11-07 17:25:48', '::1', 'Chrome'),
(991, '2019-11-09 07:08:28', '::1', 'Chrome'),
(992, '2019-11-09 21:27:35', '::1', 'Chrome'),
(993, '2019-11-12 12:49:15', '::1', 'Chrome'),
(994, '2019-11-14 00:13:30', '::1', 'Chrome'),
(995, '2019-11-28 06:03:17', '::1', 'Chrome'),
(996, '2019-12-09 06:08:52', '::1', 'Chrome'),
(997, '2020-01-08 21:24:37', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(26, 'Selamat Datang Bapak Panglima TNI dan Kapolri', '<p>UNUJA.AC.ID-&nbsp;Universitas Nurul Jadid kembali kedatangan tamu kehormatan yang menjadi tokoh sentral dalam menjaga keamanan Negara Kesatuan Republik Indonesia. Kedua tamu itu adalah Panglima Tentara Nasional Republik Indonesia, Bapak Marsekal Hadi Tjahjanto, S.IP. dan Kepala Kepolisian Republik Indonesia, Jendral Polisi Prof. H. Muhammad Tito Karnavian. Ph.D. Keduanya hadir dan disambut oleh Pengasuh dan Rektor Nurul Jadid dengan prosesi pengalungan sorban dan pemberian kopiah khas UNUJA.</p>\r\n\r\n<p>Acara &quot;Ngaji Kebangsaan&quot; ini dilaksanakan pada Selasa (2/4) di Auditorium Universitas Nurul Jadid dan dihadiri pula oleh Wakil Bupati Probolinggo, Bapak Drs. HA. Timbul Prihanjoko, beberapa pejabat Kepolisian dan TNI di Kabupaten Probolinggo, dosen, guru, mahasiswa, serta siswa dan siswi di seluruh lembaga pendidikan Pondok Pesantren Nurul Jadid.</p>\r\n\r\n<p>Panglima TNI dan Kapolri kali ini mengisi kegiatan Ngaji Kebangsaan dengan tema &ldquo;Mempererat Persatuan Menjaga Kesatuan Membangun Indonesia Berkeadaban&rdquo; dengan harapan bahwa Indonesia akan selalu menjadi negara yang aman dan tenteram di tengah harmoni dan keberagaman agama, suku, dan bahasa dengan memegang erat nilai-nilai Bhineka Tunggal Ika.&nbsp;Humas</p>\r\n', '2019-05-07 23:00:10', 3, 'Biografi', 224, '2f3b7c5c3eb2227b85baf9d8055cfe00.JPG', 1, 'Sukron Makmun', 0, 'selamat-datang-bapak-panglima-tni-dan-kapolri'),
(27, 'Sepekan Bersama Teknik 2019', '<p>BEM FT UNUJA mengadakan&nbsp;Sepekan Bersama Teknik 2019</p>\r\n', '2019-05-07 23:14:45', 14, 'Lomba', 10, '1c7bc329775333b65a9ea9fbb7f4b80b.png', 1, 'Sukron Makmun', 0, 'sepekan-bersama-teknik-2019'),
(28, 'Sidang Paripurna Bersama DPM', '<p>Sidang Paripurna Pengesahan Program Kerja Badan Eksekutif Mahasiswa Fakultas Teknik (BEM FT) oleh Dewan Perwakilan Mahasiswa Fakultas Teknik (DPM FT), Kamis 4 April 2019. Jaya terus Organisasi Mahasiswa Universitas Nurul Jadid.</p>\r\n', '2019-05-15 02:27:54', 15, 'Sidang BEM FT', 1, '90edaefe0b296225c74d8f6ef97bf0b5.png', 2, 'Mohamad Hafid Masruri', 0, 'sidang-paripurna-bersama-dpm'),
(29, 'Memperingati Hari Kartini 21 April 2019', '<p>Dream never come true if you just keep silent and still feel comfort with discrimination. Happy Kartini&#39;s Day.<br />\r\n.</p>\r\n', '2019-05-15 02:31:43', 16, 'Hari Besar', 181, '1245a7cd1e405f3ae30e48e8a8bfe6e5.png', 2, 'Mohamad Hafid Masruri', 0, 'memperingati-hari-kartini-21-april-2019'),
(30, 'Kongres BEM FT Jatim', '<p>Bem Fakultas Teknik Universitas Nurul Jadid Paiton Probolinggo mengikuti Kongres VI FBEMT JATIM di Universitas Muhammadiyah Ponorogo yang di hadiri oleh 22 Universitas jurusan Teknik Sejawatimur</p>\r\n', '2019-05-15 02:32:38', 1, 'Pendidikan', 185, 'dae59b4051dbe304f82f1d42c2ac7cfd.png', 2, 'Mohamad Hafid Masruri', 0, 'kongres-bem-ft-jatim'),
(31, 'FT-UNUJA Siapkan Mahasiswa Ikuti KBMI 2019', '<p><strong>ft.unuja.ac.id</strong>&nbsp;- Merespon program Kementrian Risert Teknologi dan Pendidikan Tinggi (RISTEKDIKTI) yaitu Kompetisi Bisnis Mahasiswa Indonesia (KBMI), Fakultas Teknik, Universitas Nurul Jadid (FT-UNUJA), adakan sosialisasi yang diikuti oleh mahasiswa di ruang dosen, Sabtu, (04/05/2019).<br />\r\n<br />\r\nKegiatan itu menghadirkan pemateri dari Lembaga Pengembangan Profesionalitas dan Kewirausahaan (LPPK) UNUJA, Anis Yusrotun Nadhiroh, S. Kom, M.MT, dan Wakil Dekan FT-UNUJA, Moh. Jasri, M. Kom.<br />\r\n<br />\r\nDalam paparannya, Moh. Jasri, mengatakan, tujuan dari kegiatan ini selain sosialisasi juga pendampingan kepada mahasiswa dalam pegajuan KBMI.&nbsp;<br />\r\n<br />\r\n&ldquo;Format pegajuan KBMI yang sekarang beda dengan tahun lalu. Dulu menggunakan proposal, kalau sekarang via online. Sehingga kita mengadakan pendampingan kepada peserta yang mengikuti KBMI mulai dari semester 2 sampai 6,&rdquo; ungkapnya saat di temui seusai acara.<br />\r\n<br />\r\nJasri, sapaan akrabnya, berharap agar mahasiswa bisa mempunyai pengalaman dalam mengikuti Program KBMI. Menang atau tidaknya, bukan menjadi target utama.&nbsp;<br />\r\n<br />\r\n&ldquo;Menang atau tidaknya itu nomer dua, yang penting ini adalah sebuah pengalaman bagi mahasiswa. Sehingga ketika sudah mempunyai pengalaman nanti kedepannya bisa mengajukan ulang siapa tau kedepannya bisa lulus,&rdquo; harapnya.<br />\r\n<br />\r\nTurut hadir dalam acara tersebut yakni, BEM-FT, DPM-FT, Himaprodi FT, dan Beberapa UKM UNUJA.<br />\r\n<br />\r\n<strong>Penulis : Badrus Sholeh (SJ)</strong><br />\r\n<strong>Editor : Febri Delfitri Fauzi</strong></p>\r\n', '2019-05-15 02:34:59', 1, 'Pendidikan', 101, 'cdc9bc321299e833d2ecc70e88895806.png', 2, 'Mohamad Hafid Masruri', 0, 'ft-unuja-siapkan-mahasiswa-ikuti-kbmi-2019');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
