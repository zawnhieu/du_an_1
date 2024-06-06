-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2024 lúc 09:37 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan_01`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`id`, `username`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(31, 'admin', 'đang trải nghiệm', 2, 61, '2023-12-09'),
(32, 'admin', 'chat qua a', 2, 73, '2023-12-11'),
(33, 'admin', 'đẹp quá', 2, 55, '2023-12-13'),
(34, 'admin', 'đang trải nghiệm', 2, 55, '2023-12-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `name`, `img`) VALUES
(24, 'Phụ kiện', '114.34.03-650x650.webp'),
(25, 'Watch', 'apple-watch-se-2023-vien-nhom-day-silicone-trang-tb-650x650.webp'),
(26, 'Mac', 'mac-pro-13-m2-bac-650x650.webp'),
(27, 'Iphone', 'iphone-15-pro-black-thumbtz-1-2-650x650.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_nho`
--

CREATE TABLE `danh_muc_nho` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iddm_nho` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_nho`
--

INSERT INTO `danh_muc_nho` (`id`, `name`, `iddm_nho`) VALUES
(4, 'Iphone 15', 27),
(5, 'Iphone 14', 27),
(6, 'MacBook Pro', 26),
(7, 'MacBook Ari', 26),
(8, 'Apple Watch Ultra 2', 25),
(9, 'Apple Watch Ultra', 25),
(10, 'Phụ kiện Iphone', 24),
(11, 'Phụ kiện Mac', 24),
(15, 'Iphone 13', 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nguoi_nhan` varchar(50) NOT NULL,
  `phone_number` text NOT NULL,
  `idsp` int(10) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `so_luong` int(10) NOT NULL,
  `tong_tien` double NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `phuong_thuc_thanh_toan` varchar(50) NOT NULL,
  `ngay_mua` datetime NOT NULL,
  `trang_thai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `username`, `nguoi_nhan`, `phone_number`, `idsp`, `tensp`, `color`, `so_luong`, `tong_tien`, `dia_chi`, `phuong_thuc_thanh_toan`, `ngay_mua`, `trang_thai`) VALUES
(36, 'admin', 'thanh nguyen', '705668825', 55, 'iPhone 13', 'white', 2, 38.98, '26 sơn la, Thành phố Hà Nội', 'Chuyển khoản ngân hàng', '2023-12-09 12:46:45', 'Đã giao'),
(38, 'admin', 'hieu', '705668825', 73, 'Phụ kiện bàn phím', 'Đen', 1, 1.27, 'minh khai, Thành phố Hà Nội', 'Chuyển khoản ngân hàng', '2023-12-09 13:28:25', 'Đã giao'),
(39, 'admin', 'hieu', '705668825', 73, 'Phụ kiện bàn phím', 'Đen', 1, 1.27, 'Thôn Nà Nhất, Xã Đồng Ý, Huyện Bắc Sơn, Thành phố Hà Nội', 'Chuyển khoản ngân hàng', '2023-12-09 15:13:22', 'dang xu li'),
(74, 'admin', 'hh', '0', 55, 'iPhone 13', 'Đen', 1, 19, '55, Tỉnh Bắc Giang', 'Chuyển khoản ngân hàng', '2023-12-09 17:32:29', 'Đang giao hàng'),
(79, 'admin', 'hieu', '705668825', 47, 'MacBook Pro 14', 'Đen', 2, 116, 'minh khai, Thành phố Hà Nội', 'Chuyển khoản ngân hàng', '2023-12-12 22:16:42', 'Đã giao'),
(80, 'admin', 'hi', '0765433415', 79, 'IPHONE 14 XANH', 'Đen', 1, 2100000, 'hh, Thành phố Hà Nội', 'Chuyển khoản ngân hàng', '2023-12-12 22:28:31', 'Đang xử lý'),
(81, 'admin', 'thanh nguyen', '0705668825', 47, 'MacBook Pro 14', 'Đen', 1, 58, ' mù cang chải, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 01:20:42', 'Đã giao'),
(82, 'admin', 'thanh nguyen', '113', 54, 'IPHONE 14 PRO MAX', 'Đen', 1, 27, ' mù cang chải, Thành phố Hà Nội', 'Chuyển khoản ngân hàng', '2023-12-13 01:26:28', 'Đã giao'),
(83, 'admin', 'Dương Hải Nam', '0765433415', 56, 'IPHONE 15 PLUS', 'Đen', 1, 26, 'minh khai, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 01:50:13', 'dang xu li'),
(84, 'admin', 'hieu', '0705668825', 47, 'MacBook Pro 14', 'Đen', 1, 58, 'hh, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 01:52:03', 'dang xu li'),
(85, 'admin', 'khách', '0705668825', 79, 'Iphone 15', 'Đen', 1, 2100000, 'minh khai, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 01:58:44', 'Đã giao'),
(86, 'admin01', 'Đức Thanh', '0123456789', 48, 'Apple Watch Ultra 2', 'Trắng', 1, 22, 'Ninh Bình, Thành phố Hà Nội', 'Chuyển khoản ngân hàng', '2023-12-13 09:32:06', 'Đã giao'),
(87, 'admin', 'nam', '012345', 47, 'MacBook Pro 14', 'Đen', 1, 58, 'lạng sơn, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 09:38:36', 'dang xu li'),
(88, 'admin', 'thanh nguyen', '0879944123', 47, 'MacBook Pro 14', 'Đen', 3, 174, 'Thôn Nà Nhất, Xã Đồng Ý, Huyện Bắc Sơn, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 09:40:56', 'dang xu li'),
(89, 'admin', 'thanh nguyen', '0879944123', 56, 'IPHONE 15 PLUS', 'Đen', 5, 130, 'Thôn Nà Nhất, Xã Đồng Ý, Huyện Bắc Sơn, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 09:40:56', 'dang xu li'),
(90, 'admin', 'thanh nguyen', '0879944123', 59, 'MacBook Air ', 'Đen', 4, 124, 'Thôn Nà Nhất, Xã Đồng Ý, Huyện Bắc Sơn, Thành phố Hà Nội', 'Tiền mặt', '2023-12-13 09:40:56', 'Đang giao hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `mota2` varchar(255) NOT NULL,
  `view` int(10) NOT NULL,
  `iddm_nho` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `name`, `price`, `img`, `mota`, `mota2`, `view`, `iddm_nho`) VALUES
(47, 'MacBook Pro 14', 58, 'mac-pro-14-m2-xam-650x650.webp', ' Hoàn 200,000đ cho chủ thẻ tín dụng HOME CREDIT khi thanh toán đơn hàng từ 5,000,000đ\r\n\r\n Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO', 'MacBook Pro 16 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1 chiếc máy tính xá', 0, 6),
(48, 'Apple Watch Ultra 2', 22, 'apple-watch-se-lte-2023-vien-nhom-day-silicone-xanh-den-tb-650x650.webp', 'Thu cũ đổi mới trợ giá thêm 300.000đ (Không kèm thanh toán qua cổng online, mua kèm) \r\n\r\n Hoàn 200,000đ cho chủ thẻ tín dụng HOME CREDIT khi thanh toán đơn hàng từ 5,000,000đ', 'Apple Watch Series 9 giúp bạn luôn kết nối, năng động, khỏe mạnh và an toàn. Với thao tác chạm hai lần, cách kỳ diệu để tương tác với Apple Watch,1 màn hình nay còn sáng hơn, và tính năng Tìm Chính Xác cho iPhone.2\r\n\r\nKết nối bằng dữ liệu di động - Gửi ti', 50, 8),
(54, 'IPHONE 14 PRO MAX', 27, 'iphone-14-pro-max-purple-thumbtz-650x650.webp', ' Thu cũ Đổi mới: Giảm đến 2 triệu (Tuỳ model máy cũ, Không kèm thanh toán qua cổng online, mua kèm)\r\n\r\n Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày; chỉ áp dụng tại siêu thị)\r\n\r\n Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO', 'Apple Watch Series 9 giúp bạn luôn kết nối, năng động, khỏe mạnh và an toàn. Với thao tác chạm hai lần, cách kỳ diệu để tương tác với Apple Watch,1 màn hình nay còn sáng hơn, và tính năng Tìm Chính Xác cho iPhone.2\r\n\r\nKết nối bằng dữ liệu di động - Gửi ti', 0, 5),
(55, 'iPhone 13', 19, 'iphone-13-white-thumbtz-650x650.webp', 'Thu cũ Đổi mới: Giảm đến 2 triệu (Tuỳ model máy cũ, Không kèm thanh toán qua cổng online, mua kèm)\r\n\r\n Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày; chỉ áp dụng tại siêu thị)\r\n\r\n Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO', 'iPhone 14. Với hệ thống camera kép tiên tiến nhất từng có trên iPhone. Chụp những bức ảnh tuyệt đẹp trong điều kiện từ thiếu sáng đến dư sáng. Phát hiện Va Chạm,1 một tính năng an toàn mới, thay bạn gọi trợ giúp khi cần kíp.', 0, 15),
(56, 'IPHONE 15 PLUS', 26, 'iphone-15-plus-blue-thumbtz-1-650x650.webp', 'Thu cũ Đổi mới: Giảm đến 2 triệu (Tuỳ model máy cũ, Không kèm thanh toán qua cổng online, mua kèm) \r\n\r\n Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày; chỉ áp dụng tại siêu thị)\r\n\r\n Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO ', 'iPhone 15. Với hệ thống camera kép tiên tiến nhất từng có trên iPhone. Chụp những bức ảnh tuyệt đẹp trong điều kiện từ thiếu sáng đến dư sáng. Phát hiện Va Chạm,1 một tính năng an toàn mới, thay bạn gọi trợ giúp khi cần kíp.', 0, 4),
(57, 'MacBook Air 15 inch', 36, 'mac-air-15-m2-starlight-650x650.webp', ' Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày, chỉ áp dụng tại siêu thị) \r\n\r\n Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO ', 'MacBook Pro 16 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1 chiếc máy tính xá', 0, 7),
(58, 'MacBook Pro 16 inch', 57, 'mac-pro-16-m2-bac-650x650.webp', 'Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày, chỉ áp dụng tại siêu thị)\r\n\r\n Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO', 'MacBook Pro 16 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1 chiếc máy tính xá', 0, 6),
(59, 'MacBook Air ', 31, 'mac-air-15-m2-xam-650x650.webp', 'Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày, chỉ áp dụng tại siêu thị)\r\n\r\n Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO ', 'MacBook Pro 16 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1 chiếc máy tính xá', 0, 7),
(60, 'Apple Watch Ultra', 20, 'apple-watch-s8-ultra-cao-su-vang-thumbtz-1-1-650x650.webp', 'Thu cũ đổi mới trợ giá thêm 300.000đ (Không kèm thanh toán qua cổng online, mua kèm)', 'Apple Watch Series 9 giúp bạn luôn kết nối, năng động, khỏe mạnh và an toàn. Với thao tác chạm hai lần, cách kỳ diệu để tương tác với Apple Watch,1 màn hình nay còn sáng hơn, và tính năng Tìm Chính Xác cho iPhone.2\r\n\r\nKết nối bằng dữ liệu di động - Gửi ti', 0, 9),
(61, 'Apple Watch Ultra 2', 22, 'apple-watch-ultra-lte-49mm-vien-titanium-day-trail-size-s-m-3-1-2-650x650.webp', 'Thu cũ đổi mới trợ giá thêm 300.000đ (Không kèm thanh toán qua cổng online, mua kèm) .', 'Apple Watch Series 9 giúp bạn luôn kết nối, năng động, khỏe mạnh và an toàn. Với thao tác chạm hai lần, cách kỳ diệu để tương tác với Apple Watch,1 màn hình nay còn sáng hơn, và tính năng Tìm Chính Xác cho iPhone.2\r\n\r\nKết nối bằng dữ liệu di động - Gửi ti', 0, 8),
(62, 'Apple Watch Ultra', 20, 'apple-watch-s8-ultra-size-m-cam-thumbtz-1-650x650.webp', 'Thu cũ đổi mới trợ giá thêm 300.000đ (Không kèm thanh toán qua cổng online, mua kèm).', 'Apple Watch Series 9 giúp bạn luôn kết nối, năng động, khỏe mạnh và an toàn. Với thao tác chạm hai lần, cách kỳ diệu để tương tác với Apple Watch,1 màn hình nay còn sáng hơn, và tính năng Tìm Chính Xác cho iPhone.2\r\n\r\nKết nối bằng dữ liệu di động - Gửi ti', 0, 9),
(71, 'Phụ kiện chuột ', 1, '1-650x650.webp', ' Magic Mouse có thể kết nối không dây và sạc lại được, với phần đế được thiết kế tối ưu giúp di chuyển dễ dàng trên mặt bàn. Bề mặt Multi-Touch cho phép bạn thực hiện các thao tác đơn giản như vuốt giữa các trang web và cuộn qua lại giữa các tài liệu.\r\n\r\n', '  Magic Mouse có thể kết nối không dây và sạc lại được, với phần đế được thiết kế tối ưu giúp di chuyển dễ dàng trên mặt bàn. Bề mặt Multi-Touch cho phép bạn thực hiện các thao tác đơn giản như vuốt giữa các trang web và cuộn qua lại giữa các tài liệu.\r\n\r', 0, 11),
(72, 'Phụ kiện sạc', 1, '114.34.03-650x650.webp', 'Bộ Sạc Apple USB-C 20W giúp sạc nhanh và hiệu quả tại nhà, trong văn phòng hoặc khi đang di chuyển. Mặc dù bộ sạc này tương thích với mọi thiết bị có cổng sạc USB‑C, Apple khuyên bạn nên sử dụng phụ kiện này với iPad Pro và iPad Air để đạt hiệu quả sạc tố', 'Bộ Sạc Apple USB-C 20W giúp sạc nhanh và hiệu quả tại nhà, trong văn phòng hoặc khi đang di chuyển. Mặc dù bộ sạc này tương thích với mọi thiết bị có cổng sạc USB‑C, Apple khuyên bạn nên sử dụng phụ kiện này với iPad Pro và iPad Air để đạt hiệu quả sạc tố', 0, 10),
(73, 'Phụ kiện bàn phím', 1, 'magic-keyboard-thumb-650x650.webp', 'Magic Keyboard đem lại trải nghiệm gõ phím thoải mái và chính xác ấn tượng. Bàn phím còn có thể kết nối không dây và sạc lại được, với thời lượng pin dài và bàn phím hoạt động trong một tháng hoặc lâu hơn sau mỗi lần sạc.1 Bàn phím tự động kết nối với Mac', 'Magic Keyboard đem lại trải nghiệm gõ phím thoải mái và chính xác ấn tượng. Bàn phím còn có thể kết nối không dây và sạc lại được, với thời lượng pin dài và bàn phím hoạt động trong một tháng hoặc lâu hơn sau mỗi lần sạc.1 Bàn phím tự động kết nối với Mac', 0, 11),
(74, 'Phụ kiện ôp lưng', 1, 'op-lung-magsafe-iphone-14-pro-max-nhua-trong-apple-mpu73-thumb-650x650.webp', 'Là sản phẩm bổ trợ được chính nhà Apple sản xuất riêng cho dòng iPhone 14 Pro Max với chất liệu được pha trộn giữa polycarbonate trong suốt quang học và các vật liệu chuyên dụng khác, tăng độ dẻo dai và tính đàn hồi, bảo vệ trọn vẹn chiếc iPhone của bạn. ', 'Là sản phẩm bổ trợ được chính nhà Apple sản xuất riêng cho dòng iPhone 14 Pro Max với chất liệu được pha trộn giữa polycarbonate trong suốt quang học và các vật liệu chuyên dụng khác, tăng độ dẻo dai và tính đàn hồi, bảo vệ trọn vẹn chiếc iPhone của bạn. ', 0, 10),
(79, 'Iphone 15', 2100000, 'iphone-15-pro-max-blue-thumbtz-650x650.webp', '   Là sản phẩm bổ trợ được chính nhà Apple sản xuất riêng cho dòng iPhone 14 Pro Max với chất liệu được pha trộn giữa polycarbonate trong suốt quang học và các vật liệu chuyên dụng khác, tăng độ dẻo dai và tính đàn hồi, bảo vệ trọn vẹn chiếc iPhone của bạ', '      Thu cũ Đổi mới: Giảm đến 2 triệu (Tuỳ model máy cũ, Không kèm thanh toán qua cổng online, mua kèm) Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày; chỉ áp dụng tại siêu thị) Nhập mã MMSALE100 giảm ngay 1% tối đa 100.000đ khi thanh toán qua MOMO', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `username`, `password`, `email`, `address`, `role`, `tel`) VALUES
(2, 'admin', '123456A@', 'admin@gmail.com', 'no', 1, NULL),
(45, 'damhieu04.fpt@gmail.com', '123456H$', 'damhieu04.fpt@gmail.com', NULL, 0, '0705668825'),
(46, 'admin01', 'Admin123@', 'admin01@gmail.com', NULL, 0, '0123456789');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_ibfk_1` (`idpro`),
  ADD KEY `binhluan_ibfk_2` (`iduser`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_muc_nho`
--
ALTER TABLE `danh_muc_nho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_12` (`iddm_nho`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_16` (`iddm_nho`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `danh_muc_nho`
--
ALTER TABLE `danh_muc_nho`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idpro`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `tai_khoan` (`id`);

--
-- Các ràng buộc cho bảng `danh_muc_nho`
--
ALTER TABLE `danh_muc_nho`
  ADD CONSTRAINT `lk_12` FOREIGN KEY (`iddm_nho`) REFERENCES `danh_muc` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `lk_16` FOREIGN KEY (`iddm_nho`) REFERENCES `danh_muc_nho` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
