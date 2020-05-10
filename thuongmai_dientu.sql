-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2020 lúc 11:49 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuongmai_dientu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hedieuhanh`
--

CREATE TABLE `hedieuhanh` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hedieuhanh`
--

INSERT INTO `hedieuhanh` (`id`, `ten`, `created_at`, `updated_at`) VALUES
(1, 'IOS', '2019-10-10 09:30:21', '2019-10-10 09:30:21'),
(2, 'ANDROID', '2019-10-10 09:30:34', '2019-10-10 09:30:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `ngaymua` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `ngaymua`, `tongtien`, `trangthai`, `ten`, `sdt`, `dia_chi`, `ghi_chu`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '20-05-08', '4,840,000.00', '1', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaaa', 3, '2020-05-08 06:04:40', '2020-05-08 08:02:43'),
(2, '20-05-08', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaaa', 3, '2020-05-08 06:05:48', '2020-05-08 06:05:48'),
(3, '20-05-08', '24,200,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', '6111111111111111', 3, '2020-05-08 07:44:08', '2020-05-08 07:44:08'),
(4, '20-05-08', '24,200,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', '6111111111111111', 3, '2020-05-08 07:44:19', '2020-05-08 07:44:19'),
(5, '20-05-08', '24,200,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', '22', 3, '2020-05-08 07:46:01', '2020-05-08 07:46:01'),
(6, '20-05-08', '24,200,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', '22', 3, '2020-05-08 07:46:29', '2020-05-08 07:46:29'),
(7, '20-05-08', '30,250,000.00', '0', 'Trinh Linh', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-08 08:01:59', '2020-05-08 08:01:59'),
(8, '20-05-08', '4,840,000.00', '0', 'Trinh Linh', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-08 08:55:57', '2020-05-08 08:55:57'),
(9, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:09:52', '2020-05-08 21:09:52'),
(10, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:10:09', '2020-05-08 21:10:09'),
(11, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:10:28', '2020-05-08 21:10:28'),
(12, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:10:59', '2020-05-08 21:10:59'),
(13, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:11:26', '2020-05-08 21:11:26'),
(14, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:11:44', '2020-05-08 21:11:44'),
(15, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:11:53', '2020-05-08 21:11:53'),
(16, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:12:04', '2020-05-08 21:12:04'),
(17, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:12:34', '2020-05-08 21:12:34'),
(18, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:13:04', '2020-05-08 21:13:04'),
(19, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:13:21', '2020-05-08 21:13:21'),
(20, '20-05-09', '4,840,000.00', '0', '111111', '0973800994', '11111', '11111111', 3, '2020-05-08 21:13:31', '2020-05-08 21:13:31'),
(21, '20-05-09', '30,250,000.00', '0', '111111', '0973800994', '11111', 'aaaaa', 3, '2020-05-08 21:32:28', '2020-05-08 21:32:28'),
(22, '20-05-09', '30,250,000.00', '0', '111111', '0973800994', '11111', 'aaaaa', 3, '2020-05-08 21:33:24', '2020-05-08 21:33:24'),
(23, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaaa', 3, '2020-05-09 05:13:06', '2020-05-09 05:13:06'),
(24, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-09 05:15:01', '2020-05-09 05:15:01'),
(25, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaaaaaaa', 3, '2020-05-09 07:59:31', '2020-05-09 07:59:31'),
(26, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaaa', 3, '2020-05-09 08:00:00', '2020-05-09 08:00:00'),
(27, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'eywue', 3, '2020-05-09 08:06:52', '2020-05-09 08:06:52'),
(28, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'eywue', 3, '2020-05-09 08:07:59', '2020-05-09 08:07:59'),
(29, '20-05-09', '19,360,000.00', '0', 'Lê Văn Tự', '123456', 'hai phòng', 'dddd', 3, '2020-05-09 08:09:22', '2020-05-09 08:09:22'),
(30, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-09 08:10:57', '2020-05-09 08:10:57'),
(31, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-09 08:21:04', '2020-05-09 08:21:04'),
(32, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-09 08:21:16', '2020-05-09 08:21:16'),
(33, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-09 08:22:02', '2020-05-09 08:22:02'),
(34, '20-05-09', '4,840,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaa', 3, '2020-05-09 08:33:34', '2020-05-09 08:33:34'),
(35, '20-05-09', '9,680,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aa', 3, '2020-05-09 08:52:10', '2020-05-09 08:52:10'),
(36, '20-05-09', '9,680,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aa', 3, '2020-05-09 08:53:43', '2020-05-09 08:53:43'),
(37, '20-05-09', '9,680,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'ddd', 3, '2020-05-09 09:09:21', '2020-05-09 09:09:21'),
(38, '20-05-10', '29,040,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-09 21:23:38', '2020-05-09 21:23:38'),
(39, '20-05-10', '29,040,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaa', 3, '2020-05-09 21:24:22', '2020-05-09 21:24:22'),
(40, '20-05-10', '16,940,000.00', '0', 'Lê Văn Tự', 'a', '1', 'aaaaa', 3, '2020-05-09 21:30:53', '2020-05-09 21:30:53'),
(41, '20-05-10', '19,360,000.00', '1', 'Lê Văn Tự', '09745555', 'hải phòng', 'a', 3, '2020-05-09 22:05:40', '2020-05-10 00:17:32'),
(42, '20-05-10', '24,200,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaaaaaa', 3, '2020-05-09 22:12:01', '2020-05-09 22:12:01'),
(43, '20-05-10', '19,360,000.00', '0', 'Lê Văn Tự', '09745555', 'hải phòng', 'aaaaa', 3, '2020-05-10 00:16:05', '2020-05-10 00:16:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonchitiet`
--

CREATE TABLE `hoadonchitiet` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `soluongmua` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonchitiet`
--

INSERT INTO `hoadonchitiet` (`id`, `id_hoadon`, `id_sanpham`, `created_at`, `updated_at`, `soluongmua`) VALUES
(1, 6, 6, '2020-05-08 07:46:29', '2020-05-08 07:46:29', 5),
(2, 7, 5, '2020-05-08 08:01:59', '2020-05-08 08:01:59', 1),
(3, 8, 4, '2020-05-08 08:55:57', '2020-05-08 08:55:57', 1),
(4, 20, 6, '2020-05-08 21:13:31', '2020-05-08 21:13:31', 1),
(5, 22, 5, '2020-05-08 21:33:24', '2020-05-08 21:33:24', 1),
(6, 23, 4, '2020-05-09 05:13:06', '2020-05-09 05:13:06', 1),
(7, 24, 8, '2020-05-09 05:15:01', '2020-05-09 05:15:01', 1),
(8, 28, 6, '2020-05-09 08:07:59', '2020-05-09 08:07:59', 1),
(9, 29, 4, '2020-05-09 08:09:22', '2020-05-09 08:09:22', 4),
(10, 30, 4, '2020-05-09 08:10:57', '2020-05-09 08:10:57', 1),
(11, 34, 4, '2020-05-09 08:33:34', '2020-05-09 08:33:34', 1),
(12, 39, 7, '2020-05-09 21:24:23', '2020-05-09 21:24:23', 4),
(13, 39, 6, '2020-05-09 21:24:23', '2020-05-09 21:24:23', 2),
(14, 40, 3, '2020-05-09 21:30:53', '2020-05-09 21:30:53', 4),
(15, 41, 4, '2020-05-09 22:05:40', '2020-05-09 22:05:40', 4),
(16, 42, 4, '2020-05-09 22:12:01', '2020-05-09 22:12:01', 5),
(17, 43, 9, '2020-05-10 00:16:05', '2020-05-10 00:16:05', 2),
(18, 43, 13, '2020-05-10 00:16:05', '2020-05-10 00:16:05', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausacsanpham`
--

CREATE TABLE `mausacsanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mausacsanpham`
--

INSERT INTO `mausacsanpham` (`id`, `ten`, `created_at`, `updated_at`) VALUES
(1, 'Trắng', '2019-10-10 09:37:15', '2019-10-10 09:37:15'),
(2, 'Đen', '2019-10-10 09:37:19', '2019-10-10 09:37:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ram`
--

CREATE TABLE `ram` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ram`
--

INSERT INTO `ram` (`id`, `ten`, `created_at`, `updated_at`) VALUES
(1, '1GB', '2019-10-07 09:03:27', '2019-10-07 09:03:27'),
(2, '2GB', '2019-10-07 09:03:31', '2019-10-07 09:03:31'),
(3, '4GB', '2019-10-07 09:03:34', '2019-10-07 09:03:34'),
(4, '8GB', '2019-10-07 09:03:37', '2019-10-07 09:03:37'),
(5, '16GB', '2019-10-07 09:03:41', '2019-10-07 09:03:41'),
(6, '32GB', '2019-10-07 09:06:56', '2019-10-07 09:06:56'),
(7, '64GB', '2019-10-07 09:07:01', '2019-10-07 09:07:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `id_mausacsanpham` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `manhinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LED-backlit IPS LCD, 4.7", Retina HD',
  `camera_truoc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '7 MP',
  `camera_sau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '12 MP',
  `cpu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Apple A10 Fusion 4 nhân 64-bit',
  `dungluongpin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trongluong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '138',
  `dophangiai_manhinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'HD (750 x 1334 Pixels)',
  `kichthuoc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm',
  `gps` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A-GPS, GLONASS',
  `bluetooth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A2DP, LE, v4.2',
  `id_theloai` int(10) UNSIGNED NOT NULL,
  `id_hedieuhanh` int(10) UNSIGNED NOT NULL,
  `id_ram` int(10) UNSIGNED NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1,
  `gia` double NOT NULL,
  `gia_sale` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `hinhanh`, `soluong`, `id_mausacsanpham`, `manhinh`, `camera_truoc`, `camera_sau`, `cpu`, `dungluongpin`, `trongluong`, `dophangiai_manhinh`, `kichthuoc`, `gps`, `bluetooth`, `id_theloai`, `id_hedieuhanh`, `id_ram`, `trangthai`, `gia`, `gia_sale`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 7 Plus', 'Iphone7Plus.jpg', 10, 2, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12MP', 'Apple A10 Fusion 4 nhân 64-bit', '1960', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 1, 1, 5000000, 4000000, '2019-10-22 02:29:49', '2019-10-22 02:00:34'),
(2, 'Iphone 8 Plus', 'Iphone8Plus.jpg', 10, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '2658', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 3, 1, 7000000, 4000000, '2019-10-22 02:57:29', NULL),
(3, 'Iphone 11', 'Iphone11.jpg', 6, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '1988', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 3, 1, 3500000, 0, '2019-10-22 02:58:12', '2020-05-09 21:30:53'),
(4, 'Iphone 11 Pro', 'Iphone11Pro.jpg', 85, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '3922', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 2, 1, 8200000, 4000000, '2019-10-22 03:09:26', '2020-05-09 22:12:01'),
(5, 'Iphone 11 Pro Max', 'VSLJ_Iphone7Plus.jpg', 9, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '4212', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 3, 1, 25000000, NULL, '2019-10-22 03:09:26', '2020-05-10 00:58:42'),
(6, 'Iphone X', 'IphoneX.jpg', 6, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '3658', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 2, 1, 10300000, 4000000, '2019-10-22 03:09:26', '2020-05-09 21:24:23'),
(7, 'Iphone Xr', 'IphoneXr.jpg', 6, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '3782', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 3, 1, 7400000, 4000000, '2019-10-22 03:09:26', '2020-05-09 21:24:23'),
(8, 'Iphone XS', 'IphoneXS.jpg', 9, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '3622', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 3, 1, 18200000, 4000000, '2019-10-22 03:09:26', '2020-05-09 05:15:01'),
(9, 'Iphone XS Max', 'IphoneXSMax.jpg', 8, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '4588', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 1, 1, 3, 1, 29500000, 4000000, '2019-10-22 03:09:26', '2020-05-10 00:16:05'),
(10, 'SamSung Galaxy A30s', 'SamSungA30s.jpg', 10, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '4000', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 2, 2, 2, 1, 6200000, 4000000, '2019-10-22 03:09:26', NULL),
(11, 'SamSung Galaxy A50s', 'SamSungA50s.jpg', 10, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '4300', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 2, 2, 3, 1, 9000000, 4000000, '2019-10-22 03:09:26', NULL),
(12, 'SamSung Galaxy A70', 'SamSungA70.jpg', 10, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '3920', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 2, 2, 2, 1, 8200000, 4000000, '2019-10-22 03:09:26', NULL),
(13, 'SamSung Galaxy Note 9', 'SamSungNote9.jpg', 8, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '4600', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 2, 2, 3, 1, 16200000, 4000000, '2019-10-22 03:09:26', '2020-05-10 00:16:05'),
(14, 'SamSung Galaxy Note 10', 'SamSungNote10.jpg', 10, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '5000', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 2, 2, 2, 1, 28500000, 4000000, '2019-10-22 03:09:26', NULL),
(15, 'SamSung Galaxy S10+', 'SamSungS10.jpg', 10, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '5200', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 2, 2, 3, 1, 30000000, 4000000, '2019-10-22 03:09:26', NULL),
(16, 'SamSung Galaxy A7', 'SamSungA7.jpg', 10, 1, 'LED-backlit IPS LCD, 4.7\", Retina HD', '7 MP', '12 MP', 'Apple A10 Fusion 4 nhân 64-bit', '3500', '138', 'HD (750 x 1334 Pixels)', 'Dài 138.3 mm - Ngang 67.1 mm - Dày 7.1 mm', 'A-GPS, GLONASS', 'A2DP, LE, v4.2', 2, 2, 2, 1, 2200000, 4000000, '2019-10-22 03:09:26', NULL),
(17, 'Iphone', 'Yne3_Iphone11.jpg', 15, 1, 'a5', '5MP', '15MP', 'icore5', '1000mhA', '0.5kg', '10MP', '2inch', 'co', 'co', 1, 1, 1, 1, 50000000, NULL, '2020-05-10 00:43:37', '2020-05-10 01:32:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `ten`, `tenkhongdau`, `hinhanh`, `ghichu`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'iphone', 'gGiO_IphoneX.jpg', 'Táo cắn dở', 1, '2019-10-07 08:39:54', '2020-05-09 05:52:37'),
(2, 'SamSung', 'samsung', 'SamSungS10.jpg', 'Sam Sung', 1, '2019-10-07 08:41:59', '2020-05-09 05:34:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `phone` varchar(11) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `fullname`, `sex`, `email`, `role`, `phone`, `diachi`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'trưởng nguyễn văn', 'pn8h_1564476279.jpg', 'truong nguyen van', 1, 'admin@gmail.com', 1, '0382788384', 'Bắc Ninh', NULL, '$2y$14$fqZRWk8m/bvBobkqZUVYgeBHL2doZwW7I9IfS6EmM0LEXAQUR3RWy\r\n', NULL, '2019-10-07 08:26:53', '2019-10-07 08:33:37'),
(2, 'Đinh Văn Tuấn', 'rpCI_1564476140.jpg', 'dinh van tuan', 1, 'tuan@gmail.com', 1, '1234567890', 'Bắc Giang', NULL, '$2y$10$0JtkrV9.TIvjYF3/XcX1..FII51w40N3JcftZNLNpfHDfSJ/pF5nG', NULL, '2019-10-07 08:27:40', '2019-10-07 08:34:04'),
(3, 'Lê Văn Tự', 'pn8h_1564476279.jpg', 'levantu', 1, 'tu@gmail.com', 1, '12345667', 'Hải Phòng', NULL, '$2y$14$fqZRWk8m/bvBobkqZUVYgeBHL2doZwW7I9IfS6EmM0LEXAQUR3RWy', NULL, '2020-04-25 17:36:02', NULL),
(4, 'Trinh Thi Linh', 'pn8h_1564476279.jpg', 'trinhthilinh', 1, 'linh@gmail.com', 1, '12345667', 'Ninh Binh', NULL, '$2y$14$fqZRWk8m/bvBobkqZUVYgeBHL2doZwW7I9IfS6EmM0LEXAQUR3RWy', NULL, '2020-04-25 18:27:21', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id_user_foreign` (`id_user`),
  ADD KEY `comment_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoadon_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoadonchitiet_id_hoadon_foreign` (`id_hoadon`),
  ADD KEY `hoadonchitiet_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `mausacsanpham`
--
ALTER TABLE `mausacsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_id_hedieuhanh_foreign` (`id_hedieuhanh`),
  ADD KEY `sanpham_id_ram_foreign` (`id_ram`),
  ADD KEY `id_theloai` (`id_theloai`),
  ADD KEY `id_mausacsanpham` (`id_mausacsanpham`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `mausacsanpham`
--
ALTER TABLE `mausacsanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `comment_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD CONSTRAINT `hoadonchitiet_id_hoadon_foreign` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`),
  ADD CONSTRAINT `hoadonchitiet_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_theloai`) REFERENCES `theloai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_id_hedieuhanh_foreign` FOREIGN KEY (`id_hedieuhanh`) REFERENCES `hedieuhanh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_id_ram_foreign` FOREIGN KEY (`id_ram`) REFERENCES `ram` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
