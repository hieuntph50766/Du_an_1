-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2024 at 12:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wed_techlap`
--

-- --------------------------------------------------------

--
-- Table structure for table `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_dang` date NOT NULL,
  `trang_thai` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `san_pham_id`, `tai_khoan_id`, `noi_dung`, `ngay_dang`, `trang_thai`) VALUES
(17, 4, 7, 'aa', '2024-12-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` int NOT NULL,
  `don_hang_id` int DEFAULT NULL,
  `san_pham_id` int NOT NULL,
  `don_gia` decimal(10,2) NOT NULL,
  `so_luong` int NOT NULL,
  `thanh_tien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chi_tiet_don_hangs`
--

INSERT INTO `chi_tiet_don_hangs` (`id`, `don_hang_id`, `san_pham_id`, `don_gia`, `so_luong`, `thanh_tien`) VALUES
(3, NULL, 8, '17000000.00', 1, '17000000'),
(4, NULL, 8, '17000000.00', 1, '17000000'),
(5, NULL, 8, '17000000.00', 1, '17000000'),
(6, NULL, 3, '32000000.00', 1, '32000000'),
(7, NULL, 8, '17000000.00', 1, '17000000'),
(8, NULL, 3, '32000000.00', 1, '32000000'),
(9, NULL, 8, '17000000.00', 1, '17000000'),
(10, NULL, 3, '32000000.00', 1, '32000000'),
(11, NULL, 8, '17000000.00', 1, '17000000'),
(12, NULL, 6, '36000000.00', 1, '36000000'),
(13, NULL, 4, '27000000.00', 1, '27000000'),
(14, NULL, 6, '36000000.00', 1, '36000000'),
(15, 1, 4, '27000000.00', 1, '27000000'),
(16, 1, 6, '36000000.00', 1, '36000000'),
(17, 2, 6, '36000000.00', 1, '36000000'),
(18, NULL, 6, '36000000.00', 8, '288000000'),
(19, NULL, 6, '36000000.00', 8, '288000000'),
(20, 3, 3, '32000000.00', 1, '32000000');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_gio_hangs`
--

CREATE TABLE `chi_tiet_gio_hangs` (
  `id` int NOT NULL,
  `gio_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `so_luong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chi_tiet_gio_hangs`
--

INSERT INTO `chi_tiet_gio_hangs` (`id`, `gio_hang_id`, `san_pham_id`, `so_luong`) VALUES
(20, 1, 8, 1),
(21, 1, 3, 1),
(24, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vus`
--

CREATE TABLE `chuc_vus` (
  `id` int NOT NULL,
  `ten_chuc_vu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chuc_vus`
--

INSERT INTO `chuc_vus` (`id`, `ten_chuc_vu`) VALUES
(1, 'admin\r\n'),
(2, 'khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `danh_mucs`
--

CREATE TABLE `danh_mucs` (
  `id` int NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL,
  `mo_ta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `danh_mucs`
--

INSERT INTO `danh_mucs` (`id`, `ten_danh_muc`, `mo_ta`) VALUES
(1, 'asus', 'oke'),
(14, 'Macbook', 'Đẹp và nhanh');

-- --------------------------------------------------------

--
-- Table structure for table `don_hangs`
--

CREATE TABLE `don_hangs` (
  `id` int NOT NULL,
  `ma_don_hang` varchar(225) NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `ten_nguoi_nhan` varchar(255) NOT NULL,
  `email_nguoi_nhan` varchar(225) NOT NULL,
  `sdt_nguoi_nhan` varchar(15) NOT NULL,
  `dia_chi_nguoi_nhan` text NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_tien` decimal(10,2) NOT NULL,
  `ghi_chu` int NOT NULL,
  `phuong_thuc_thanh_toan_id` int NOT NULL DEFAULT '1',
  `trang_thai_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `don_hangs`
--

INSERT INTO `don_hangs` (`id`, `ma_don_hang`, `tai_khoan_id`, `ten_nguoi_nhan`, `email_nguoi_nhan`, `sdt_nguoi_nhan`, `dia_chi_nguoi_nhan`, `ngay_dat`, `tong_tien`, `ghi_chu`, `phuong_thuc_thanh_toan_id`, `trang_thai_id`) VALUES
(1, 'DH2711', 7, 'Hùng', 'abc@gmai.com', '981321309', 'Hải dương', '2024-12-03', '63030000.00', 1, 1, 2),
(2, 'DH8194', 7, 'Hùng', 'abc@gmai.com', '981321309', 'Hải dương', '2024-12-03', '36030000.00', 1, 1, 2),
(3, 'DH3695', 7, 'Hùng', 'abc@gmai.com', '981321309', 'Hải dương', '2024-12-03', '32030000.00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hangs`
--

CREATE TABLE `gio_hangs` (
  `id` int NOT NULL,
  `tai_khoan_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gio_hangs`
--

INSERT INTO `gio_hangs` (`id`, `tai_khoan_id`) VALUES
(1, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_san_phams`
--

CREATE TABLE `hinh_anh_san_phams` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `link_hinh_anh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hinh_anh_san_phams`
--

INSERT INTO `hinh_anh_san_phams` (`id`, `san_pham_id`, `link_hinh_anh`) VALUES
(1, 3, 'images/sp1.jpg'),
(2, 4, 'images/sp2.pjg'),
(3, 5, 'images/sp3.jpg'),
(4, 6, 'images/sp4.jpg'),
(6, 7, 'images/sp5.jpg'),
(7, 8, 'images/sp6.jpg'),
(8, 9, 'images/sp7.jpg'),
(9, 10, 'images/sp8.jpg'),
(10, 11, 'images/sp9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phuong_thuc_thanh_toans`
--

CREATE TABLE `phuong_thuc_thanh_toans` (
  `id` int NOT NULL,
  `ten_phuong_thuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `phuong_thuc_thanh_toans`
--

INSERT INTO `phuong_thuc_thanh_toans` (`id`, `ten_phuong_thuc`) VALUES
(1, 'COD (thanh toán khi nhận hàng)'),
(2, 'Thanh toán qua Banking');

-- --------------------------------------------------------

--
-- Table structure for table `san_phams`
--

CREATE TABLE `san_phams` (
  `id` int NOT NULL,
  `ten_san_pham` varchar(225) NOT NULL,
  `gia_san_pham` decimal(10,2) NOT NULL,
  `gia_khuyen_mai` decimal(10,2) DEFAULT NULL,
  `hinh_anh` varchar(225) DEFAULT NULL,
  `so_luong` int NOT NULL,
  `luot_xem` int DEFAULT NULL,
  `ngay_nhap` date NOT NULL,
  `mo_ta` text,
  `danh_muc_id` int NOT NULL,
  `trang_thai` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `san_phams`
--

INSERT INTO `san_phams` (`id`, `ten_san_pham`, `gia_san_pham`, `gia_khuyen_mai`, `hinh_anh`, `so_luong`, `luot_xem`, `ngay_nhap`, `mo_ta`, `danh_muc_id`, `trang_thai`) VALUES
(3, 'Dell XPS 13', '35000000.00', '32000000.00', 'images/sp1.jpg', 150, 1, '2024-12-02', 'Laptop cao cấp, màn hình 13.4-inch FHD+, chip Intel Core i7 thế hệ 12', 1, 1),
(4, 'MacBook Air M2', '28000000.00', '27000000.00', 'images/sp2.jpg', 200, 1, '2024-12-02', 'MacBook mỏng nhẹ, màn hình Retina, chip Apple M2 mạnh mẽ', 1, 1),
(5, 'ASUS ROG Zephyrus G14', '40000000.00', '38000000.00', 'images/sp3.jpg', 250, 1, '2024-12-02', 'Laptop gaming hiệu năng cao, AMD Ryzen 9, GPU NVIDIA RTX 4060', 1, 1),
(6, 'HP Spectre x360', '37000000.00', '36000000.00', 'images/sp4.jpg', 180, 1, '2024-12-02', 'Laptop xoay gập 360 độ, màn hình cảm ứng OLED, Core i7 Gen 12', 1, 1),
(7, 'Lenovo ThinkPad X1 Carbon Gen 10', '42000000.00', '40000000.00', 'images/sp5.jpg', 190, 1, '2024-12-02', 'Laptop doanh nhân cao cấp, nhẹ, bền bỉ, Intel Core i7 Gen 12', 1, 1),
(8, 'Dell Inspiron 15', '18000000.00', '17000000.00', 'images/sp6.jpg', 120, 1, '2024-12-02', 'Laptop phổ thông, Intel Core i5, màn hình 15.6-inch FHD', 1, 1),
(9, 'MacBook Pro 14 M2', '52000000.00', '50000000.00', 'images/sp7.jpg', 300, 1, '2024-12-02', 'MacBook cao cấp, màn hình 14-inch Retina XDR, chip Apple M2 Pro', 1, 1),
(10, 'Acer Aspire 7', '19000000.00', '18500000.00', 'images/sp8.jpg', 80, 1, '2024-12-02', 'Laptop gaming cơ bản, Intel Core i5, GTX 1650', 1, 1),
(11, 'ASUS TUF Gaming F15', '25000000.00', '24000000.00', 'images/sp9.jpg', 150, 1, '2024-12-02', 'Laptop gaming bền bỉ, Intel Core i7, RTX 3050', 1, 1),
(12, 'Lenovo Ideapad 5 Pro', '20000000.00', '19500000.00', 'images/sp10.jpg', 100, 1, '2024-12-02', 'Laptop mỏng nhẹ, AMD Ryzen 7, màn hình 14-inch 2.2K', 1, 1),
(13, 'HP Envy 13', '22000000.00', '21000000.00', 'images/sp11.jpg', 90, 1, '2024-12-02', 'Laptop mỏng nhẹ, màn hình cảm ứng, Intel Core i5', 1, 1),
(14, 'MSI Katana GF66', '28000000.00', '27000000.00', 'images/sp12.jpg', 140, 1, '2024-12-02', 'Laptop gaming hiệu năng cao, Intel Core i7, RTX 3060', 1, 1),
(15, 'Razer Blade 15', '70000000.00', '68000000.00', 'images/sp13.jpg', 220, 1, '2024-12-02', 'Laptop gaming cao cấp, màn hình 4K OLED, RTX 4080', 1, 1),
(16, 'Microsoft Surface Laptop 5', '33000000.00', '32000000.00', 'images/sp14.jpg', 150, 1, '2024-12-02', 'Laptop mỏng nhẹ, cảm ứng PixelSense, Intel Core i7', 1, 1),
(17, 'LG Gram 17', '35000000.00', '34000000.00', 'images/sp15.jpg', 110, 1, '2024-12-02', 'Laptop siêu nhẹ, màn hình lớn 17-inch, pin dài, Intel Core i5', 1, 1),
(18, 'Alienware m15 R7', '58000000.00', '56000000.00', 'images/sp16.jpg', 180, 1, '2024-12-02', 'Laptop gaming cao cấp, Intel Core i9, RTX 3070 Ti', 1, 1),
(19, 'Dell G15', '24000000.00', '23000000.00', 'images/sp17.jpg', 130, 1, '2024-12-02', 'Laptop gaming phổ thông, AMD Ryzen 5, GTX 1650', 1, 1),
(20, 'ASUS Vivobook 15 OLED', '19000000.00', '18500000.00', 'images/sp18.jpg', 100, 1, '2024-12-02', 'Laptop màn hình OLED, Intel Core i5, mỏng nhẹ', 1, 1),
(21, 'Acer Nitro 5', '22000000.00', '21500000.00', 'images/sp19.jpg', 160, 1, '2024-12-02', 'Laptop gaming giá tốt, Intel Core i5, GTX 1650 Ti', 1, 1),
(22, 'MacBook Pro 16 M2 Max', '85000000.00', '83000000.00', 'images/sp20.jpg', 250, 1, '2024-12-02', 'MacBook chuyên nghiệp, màn hình 16-inch Retina XDR, chip M2 Max', 1, 1),
(23, 'Gigabyte Aero 15', '52000000.00', '51000000.00', 'images/sp21.jpg', 200, 1, '2024-12-02', 'Laptop cho sáng tạo nội dung, màn hình AMOLED 4K, RTX 3070', 1, 1),
(24, 'HP Pavilion x360', '18000000.00', '17500000.00', 'images/sp22.jpg', 70, 1, '2024-12-02', 'Laptop xoay gập 360 độ, màn hình cảm ứng, Intel Core i3', 1, 1),
(25, 'Lenovo Yoga Slim 7i', '25000000.00', '24500000.00', 'images/sp23.jpg', 120, 1, '2024-12-02', 'Laptop mỏng nhẹ, Intel Core i7, pin lâu', 1, 1),
(26, 'ASUS ZenBook 14X', '30000000.00', '29000000.00', 'images/sp24.jpg', 160, 1, '2024-12-02', 'Laptop mỏng nhẹ, màn hình OLED 4K, Intel Core i7', 1, 1),
(27, 'Dell Latitude 5420', '32000000.00', '31000000.00', 'images/sp25.jpg', 130, 1, '2024-12-02', 'Laptop doanh nhân bền bỉ, Intel Core i5, pin trâu', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoans`
--

CREATE TABLE `tai_khoans` (
  `id` int NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `anh_dai_dien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `so_dien_thoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gioi_tinh` tinyint(1) DEFAULT NULL,
  `dia_chi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `mat_khau` varchar(255) NOT NULL,
  `chuc_vu_id` int DEFAULT NULL,
  `trang_thai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tai_khoans`
--

INSERT INTO `tai_khoans` (`id`, `ho_ten`, `anh_dai_dien`, `ngay_sinh`, `email`, `so_dien_thoai`, `gioi_tinh`, `dia_chi`, `mat_khau`, `chuc_vu_id`, `trang_thai`) VALUES
(1, 'Nguyễn Văn Hùng', '', '2024-12-03', 'hung@gmail.com', '0981321330', 1, 'Hải Dương', '1111', 1, 1),
(3, 'Văn Hùng', NULL, '2024-07-01', 'maai@gmail.com', '0335323863', 1, '13 Trịnh Văn Bô', '1\r\n', 1, 1),
(4, 'AAA', NULL, '2024-07-23', 'thanh@gmail.com', '0942413406', 2, '206 Phương Canh', '$2y$10$cEgR/GLYzli6Q1FX4vP5NOnSSuiOZExHvFWICBRvlPI96dcTHKZt.', 1, 1),
(5, 'Hữu Lâm', NULL, NULL, 'thuymt2005@gmail.com', '0942413406', 1, NULL, '$2y$10$q689I2nlLXYhmalS0sQUi.YOHYfXCNnQGJGrwbTfr3AcJ5nZfmE9e', 1, 2),
(6, 'Hùng', NULL, '2024-12-28', 'hung1@gmail.com', '0981321330', 1, 'Hải dương', '1', 2, 1),
(7, 'Hùng', NULL, '2005-08-09', 'abc@gmai.com', '981321309', 1, 'Hải dương', '11', 2, 1),
(8, 'Hùng', NULL, '2005-08-09', 'abc@gmai.com', '981321309', 1, 'Hải dương', '11', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trang_thai_don_hangs`
--

CREATE TABLE `trang_thai_don_hangs` (
  `id` int NOT NULL,
  `ten_trang_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trang_thai_don_hangs`
--

INSERT INTO `trang_thai_don_hangs` (`id`, `ten_trang_thai`) VALUES
(1, 'Chưa xác nhận'),
(2, 'Đã xác nhận'),
(3, 'Chưa thanh toán'),
(4, 'Đã thanh toán'),
(5, 'Đang chuẩn bị hàng'),
(6, 'Đang giao'),
(7, 'Đã giao'),
(8, 'Đã nhận'),
(9, 'Thành công'),
(10, 'Hoàn hàng'),
(11, 'Hủy đơn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_pham_id` (`san_pham_id`,`tai_khoan_id`),
  ADD KEY `tai_khoan_id` (`tai_khoan_id`);

--
-- Indexes for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `don_hang_id` (`don_hang_id`,`san_pham_id`),
  ADD KEY `san_pham_id` (`san_pham_id`);

--
-- Indexes for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gio_hang_id` (`gio_hang_id`,`san_pham_id`),
  ADD KEY `san_pham_id` (`san_pham_id`);

--
-- Indexes for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tai_khoan_id` (`tai_khoan_id`),
  ADD KEY `phuong_thuc_thanh_toan_id` (`phuong_thuc_thanh_toan_id`),
  ADD KEY `trang_thai_id` (`trang_thai_id`);

--
-- Indexes for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tai_khoan_id` (`tai_khoan_id`);

--
-- Indexes for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_muc_id` (`danh_muc_id`);

--
-- Indexes for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chuc_vu_id` (`chuc_vu_id`);

--
-- Indexes for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `don_hangs`
--
ALTER TABLE `don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD CONSTRAINT `binh_luans_ibfk_1` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`),
  ADD CONSTRAINT `binh_luans_ibfk_2` FOREIGN KEY (`tai_khoan_id`) REFERENCES `tai_khoans` (`id`);

--
-- Constraints for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD CONSTRAINT `chi_tiet_don_hangs_ibfk_1` FOREIGN KEY (`don_hang_id`) REFERENCES `don_hangs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `chi_tiet_don_hangs_ibfk_2` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD CONSTRAINT `chi_tiet_gio_hangs_ibfk_1` FOREIGN KEY (`gio_hang_id`) REFERENCES `gio_hangs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `chi_tiet_gio_hangs_ibfk_2` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD CONSTRAINT `don_hangs_ibfk_1` FOREIGN KEY (`tai_khoan_id`) REFERENCES `tai_khoans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `don_hangs_ibfk_2` FOREIGN KEY (`phuong_thuc_thanh_toan_id`) REFERENCES `phuong_thuc_thanh_toans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `don_hangs_ibfk_3` FOREIGN KEY (`trang_thai_id`) REFERENCES `trang_thai_don_hangs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD CONSTRAINT `gio_hangs_ibfk_1` FOREIGN KEY (`tai_khoan_id`) REFERENCES `tai_khoans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD CONSTRAINT `san_phams_ibfk_1` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_mucs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD CONSTRAINT `tai_khoans_ibfk_1` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
