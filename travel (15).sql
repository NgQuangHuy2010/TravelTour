-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 28, 2024 lúc 06:47 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `travel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `fullname`, `phone`, `address`, `email`, `password`, `role`, `status`, `remember_token`) VALUES
(1, 'Nguyễn Quang Huy', '0374874492', 'Bình Dương', 'nqht123456789@gmail.com', '$2y$12$AmIJV/sI4mymikfgOiu2aOWB7DPg3aVDy3IJuV9fgJAtuVR2Jl5D2', 1, 1, NULL),
(9, 'chuong', '0374874492', 'Binh Duong', '123456@gmail.com', '$2y$12$YlfZYFVCSRmbx9em7M9lQurRfcHUd00U7PQLPWAaixvESRki1z.Fe', 0, 1, NULL),
(10, 'Nguyen Quang Huy', '22222', 'ddđffffff', 'duyanh@gmail.com', '$2y$12$cq9R9FWa0T7UV4hnl9oyAurFPZemlOaP1QdSyDw12xoXcEwVZzXVa', 0, 1, NULL),
(11, 'duyanh', '123456789', 'dddddđ', 'duyanh2871999@gmail.com', '$2y$12$2bUoC6u1tGmh52K017D2Nu5m302lMYI90FuThjWo5wpvZVJlqMgF6', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Cẩm nang du lịch Quảng Bình mới nhất', '1708613618.jpg', '<p><span style=\"font-size:14px\">Quảng B&igrave;nh, mảnh đất miền Trung đầy nắng gi&oacute; lu&ocirc;n g&acirc;y ấn tượng với vẻ đẹp y&ecirc;n b&igrave;nh, với cảnh quan độc đ&aacute;o, v&agrave; người d&acirc;n địa phương hiền ho&agrave; dung dị. Nếu muốn t&igrave;m về với b&igrave;nh y&ecirc;n, về với một nơi kh&ocirc;ng qu&aacute; x&ocirc; bồ th&igrave; Quảng B&igrave;nh c&oacute; lẽ l&agrave; địa điểm du lịch miền Trung bạn đ&aacute;ng trải nghiệm. Cẩm nang du lịch Quảng B&igrave;nh sẽ mang đến cho bạn những th&ocirc;ng tin hữu &iacute;ch nhất cho h&agrave;nh tr&igrave;nh của bạn.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Quảng B&igrave;nh nằm ở Bắc Trung Bộ, ph&iacute;a Bắc gi&aacute;p H&agrave; Tĩnh, ph&iacute;a Nam gi&aacute;p Quảng Trị, ph&iacute;a T&acirc;y gi&aacute;p L&agrave;o v&agrave; ph&iacute;a đ&ocirc;ng l&agrave; Biển Đ&ocirc;ng. Thủ phủ của Quảng B&igrave;nh l&agrave; th&agrave;nh phố Đồng Hới, ngo&agrave;i ra c&ograve;n c&oacute; thị x&atilde; Ba Đồn v&agrave; c&aacute;c huyện.&nbsp;<strong><a href=\"https://travel.com.vn/tim-tour/0/1/2024-02-19/0/41/ket-qua.aspx?concho=1&amp;block=0\">Du lịch Quảng B&igrave;nh</a></strong>&nbsp;chắc hẳn sẽ mang đến cho bạn những gi&acirc;y ph&uacute;t thư gi&atilde;n đ&uacute;ng nghĩa.</span></p>\r\n\r\n<p><img alt=\"\" src=\"https://media.vietravel.com/images/Content/cam-nang-du-lich-quang-binh-01.jpg\" style=\"height:600px; width:900px\" /></p>\r\n\r\n<p><span style=\"font-size:14px\">Quảng B&igrave;nh nằm ở v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, c&oacute; hai m&ugrave;a r&otilde; rệt: m&ugrave;a mưa từ th&aacute;ng 9 đến th&aacute;ng 3 năm sau, m&ugrave;a kh&ocirc; từ th&aacute;ng 4 đến th&aacute;ng 8. Thời điểm đẹp nhất để c&oacute; thể du lịch Quảng B&igrave;nh l&agrave; khoảng cuối th&aacute;ng 3 đến đầu th&aacute;ng 9.</span></p>\r\n\r\n<h2><span style=\"font-size:22px\"><strong>Cẩm nang di chuyển khi du lịch Quảng B&igrave;nh</strong></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>M&aacute;y bay:</strong>&nbsp;hiện nay, từ Th&agrave;nh phố H&agrave; Nội v&agrave; Th&agrave;nh phố Hồ Ch&iacute; Minh đều c&oacute; c&aacute;c chuyến bay thẳng đến Đồng Hới. Thời gian di chuyển từ H&agrave; Nội đến Quảng B&igrave;nh khoảng 1 tiếng v&agrave; từ TP Hồ Ch&iacute; Minh đến Quảng B&igrave;nh khoảng 2 tiếng.&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>T&agrave;u hoả:</strong>&nbsp;ga Đồng Hới l&agrave; điểm dừng của mọi chuyến t&agrave;u Thống Nhất, t&agrave;u SE hoặc t&agrave;u QB. Đ&acirc;y cũng l&agrave; phương tiện phổ biến được nhiều du kh&aacute;ch lựa chọn, v&igrave; chi ph&iacute; kh&aacute; phải chăng v&agrave; đặc biệt l&agrave; c&oacute; nhiều điều kiện để ngắm c&aacute;c cảnh đẹp tr&ecirc;n đường.</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Xe kh&aacute;ch:</strong>&nbsp;Đ&acirc;y cũng l&agrave; phương tiện di chuyển phổ biến khi du lịch Quảng B&igrave;nh. Từ HCM - Quảng B&igrave;nh mất khoảng 20 tiếng đi xe, v&agrave; H&agrave; Nội - Quảng B&igrave;nh khoảng 8 đến 9 tiếng đi xe.</span></li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://media.vietravel.com/images/Content/cam-trai-quang-binh.jpg\" style=\"height:540px; width:900px\" /></p>\r\n\r\n<p><span style=\"font-size:14px\">Dịch vụ lưu tr&uacute; ở Quảng B&igrave;nh ph&aacute;t triển v&agrave; nhiều lựa chọn từ kh&aacute;ch sạn, nh&agrave; nghỉ cho đến homestay, farmstay hoặc cắm trại.&nbsp;<br />\r\nTheo kinh nghiệm du lịch Quảng B&igrave;nh, tại Đồng Hới, bạn c&oacute; thể thu&ecirc; ph&ograve;ng ở khu vực trung t&acirc;m th&agrave;nh phố, kh&aacute; thuận tiện, v&agrave; dễ d&agrave;ng. Tại một số con đường như L&yacute; Thường Kiệt, Trần Hưng Đạo, hoặc đường Trương Ph&aacute;p&hellip; sẽ c&oacute; nhiều lựa chọn cho bạn chọn lựa. Đối với những kh&aacute;ch sạn 4-5 sao c&oacute; dịch vụ nghỉ dưỡng cao cấp như: &nbsp;Meli&aacute; Vinpearl Quảng B&igrave;nh, Mường Thanh Holiday, Mường Thanh Luxury Nhật Lệ, Sun Spa Resort, Celina Peninsula Resort, Gold Coast, S&agrave;i G&ograve;n Quảng B&igrave;nh&hellip;<br />\r\nTại c&aacute;c huyện Lệ Thuỷ, Quảng Trạch, Bố Trạch, cũng c&oacute; những cơ sở lưu tr&uacute; chất lượng với đa dạng mức gi&aacute; cho bạn lựa chọn.</span><br />\r\n<br />\r\n<span style=\"font-size:14px\">Đặc biệt, tại khu vực Vườn Quốc Gia Phong Nha - Kẻ B&agrave;ng (huyện Bố Trạch), du kh&aacute;ch sẽ c&agrave;ng c&oacute; nhiều lựa chọn cơ sở lưu tr&uacute; h&ograve;a m&igrave;nh c&ugrave;ng với thi&ecirc;n nhi&ecirc;n như: Ch&agrave;y Lập Farmstay, Nguyen Shack - Phong Nha Eco, Phong Nha Coco Riverside, Phong Nha Lake House, Lucky Home&hellip; với nhiều mức gi&aacute; v&agrave; đa dạng dịch vụ.<br />\r\n<br />\r\nVới những ai ưa th&iacute;ch cảm gi&aacute;c th&aacute;m hiểm, th&igrave; tại khu vực hang Sơn Đo&ograve;ng, c&oacute; c&aacute;c khu cắm trại với đầy đủ dịch vụ. Tới đ&acirc;y, bạn sẽ h&ograve;a m&igrave;nh gần như tuyệt đối với thi&ecirc;n nhi&ecirc;n c&ugrave;ng những trải nghiệm tuyệt vời.<br />\r\n<br />\r\nTại huyện Minh Ho&aacute;, m&ocirc; h&igrave;nh du lịch &ldquo;th&iacute;ch ứng với thời tiết&rdquo; cũng c&oacute; nhiều lựa chọn lưu tr&uacute; d&agrave;nh cho bạn kể cả m&ugrave;a kh&ocirc; v&agrave; m&ugrave;a mưa, gi&uacute;p cho bạn c&oacute; những trải nghiệm tuyệt vời nhất khi du lịch ở Quảng B&igrave;nh.</span></p>', '2024-02-22 07:53:38', '2024-02-22 08:18:14'),
(3, 'Du lịch Tây Nguyên tháng 3 - Khám phá mùa hoa cà phê, hoa pơ lang ở Buôn Ma Thuột', '1709038834.jpg', '<p>update</p>', '2024-02-27 06:00:34', '2024-02-27 06:00:34'),
(5, 'Trải nghiệm du lịch Hội An, đón Tết cổ truyền theo cách “truyền thống” nhất', '1709039672_B2--1-.jpg', '<p><span style=\"font-size:14px\">L&agrave; nơi lưu giữ trọn vẹn hơi thở của nhịp sống v&agrave; những mảng m&agrave;u văn ho&aacute; tuyệt đẹp, Hội An vẫn lu&ocirc;n chiếm trọn tr&aacute;i tim nhiều du kh&aacute;ch mỗi dịp đầu năm. Du xu&acirc;n phố cổ, sống trọn kh&ocirc;ng kh&iacute; Tết nguy&ecirc;n bản giữa mảnh đất di sản miền Trung&hellip; l&agrave; lựa chọn du lịch hấp dẫn với nhiều gia đ&igrave;nh.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Phố Cổ Hội An đ&atilde; từ l&acirc;u lu&ocirc;n l&agrave; địa điểm du lịch miền Trung thu h&uacute;t, đặc biệt v&agrave;o dịp Tết Nguy&ecirc;n đ&aacute;n, c&oacute; rất nhiều người du xu&acirc;n thưởng ngoạn. Thong dong dạo bước phố cổ những ng&agrave;y đầu năm, du kh&aacute;ch sẽ c&oacute; cơ hội thư thả dạo bước giữa những ng&ocirc;i nh&agrave; san s&aacute;t, v&aacute;ch tường v&agrave;ng tươi rực rỡ c&ugrave;ng với đ&oacute; l&agrave; những n&eacute;t đẹp r&ecirc;u phong cổ k&iacute;nh, b&ecirc;n cạnh những chiếc đ&egrave;n lồng rực rỡ m&agrave;u sắc. Trước m&aacute;i hi&ecirc;n, chậu mai v&agrave;ng v&agrave; c&acirc;u đối đỏ ch&uacute;c Tết đu đưa trong gi&oacute; xu&acirc;n m&aacute;t l&agrave;nh, gi&uacute;p du kh&aacute;ch cảm nhận r&otilde; hơn n&eacute;t văn h&oacute;a đặc sắc của Tết Việt truyền thống.<br />\r\n<br />\r\nDừng bước tại Ch&ugrave;a Cầu, du kh&aacute;ch sẽ h&ograve;a m&igrave;nh v&agrave;o d&ograve;ng người d&acirc;ng lễ đầu năm mong ước về một năm mới nhiều may mắn, sung t&uacute;c. Dạo bước v&agrave; chụp cho m&igrave;nh những bức h&igrave;nh check in thật ấn tượng b&ecirc;n người th&acirc;n v&agrave; gia đ&igrave;nh.<br />\r\n<br />\r\nĐặc biệt, đến Hội An những ng&agrave;y đầu xu&acirc;n, du kh&aacute;ch nhất định phải xu&ocirc;i chuyến thuyền tr&ecirc;n d&ograve;ng s&ocirc;ng Ho&agrave;i thơ mộng &ecirc;m đềm giữa l&ograve;ng phố cổ, tự tay thả những chiếc đ&egrave;n hoa đăng nhỏ xinh, đầy m&agrave;u sắc, mang theo ước niệm về t&agrave;i lộc, sức khỏe, b&igrave;nh an cho bản th&acirc;n v&agrave; gia đ&igrave;nh trong năm mới.</span></p>\r\n\r\n<h2><strong>Ngao du kh&aacute;m ph&aacute; Tết ba miền tại VinWonders Nam Hội An</strong></h2>\r\n\r\n<p><strong><img alt=\"\" src=\"https://media.vietravel.com/images/Content/060457-river-safari-vinwonder-nam-hoi-an--1----copy.jpg\" style=\"height:600px; width:900px\" /></strong></p>\r\n\r\n<p><span style=\"font-size:14px\">L&agrave; t&acirc;m điểm của con đường di sản miền Trung, quần thể du lịch Vinpearl Nam Hội An lu&ocirc;n l&agrave; điểm đến ấn tượng, mang đến những trải nghiệm t&ocirc;n vinh văn ho&aacute;, thi&ecirc;n nhi&ecirc;n độc đ&aacute;o.&nbsp;<br />\r\nL&agrave; địa điểm ngao du, tận hưởng v&agrave; hội h&egrave; đặc sắc mỗi dịp đầu năm. Lễ hội chủ đề &ldquo;Tết Rồng Xứ Việt&rdquo; tại đ&acirc;y l&agrave; h&agrave;nh tr&igrave;nh du xu&acirc;n ba miền với những c&acirc;u chuyện văn ho&aacute; được khắc họa sinh động bằng &ldquo;ng&ocirc;n ngữ trải nghiệm&rdquo; ch&acirc;n thực. Du kh&aacute;ch như được xuy&ecirc;n kh&ocirc;ng v&agrave; vượt thời gian để tận hưởng niềm vui t&acirc;n ni&ecirc;n vừa nguy&ecirc;n bản, vừa hứng khởi với mu&ocirc;n v&agrave;n trải nghiệm đặc sắc, hấp dẫn.<br />\r\n<br />\r\nĐặc biệt, tại đ&acirc;y c&oacute; hai show diễn đặc sắc l&agrave; &ldquo;Rồng thi&ecirc;ng đất Việt&rdquo; v&agrave; &ldquo;H&agrave;o kh&iacute; Việt Nam&rdquo; l&agrave; những c&acirc;u chuyện v&agrave; chất liệu văn ho&aacute; về Tết cổ truyền.<br />\r\nTại VinWonders Nam Hội An, tham gia hai show diễn du kh&aacute;ch sẽ c&oacute; cơ hội trở về qu&aacute; khứ, chi&ecirc;m ngưỡng những trang văn h&oacute;a rực rỡ của d&acirc;n tộc v&agrave; niềm tự h&agrave;o về cội nguồn cha &ocirc;ng.<br />\r\n<br />\r\nKh&ocirc;ng chỉ vậy, VinWonders Nam Hội An c&ograve;n đưa du kh&aacute;ch tận hưởng kh&ocirc;ng kh&iacute; vui xu&acirc;n rộn r&agrave;ng n&eacute;t đẹp văn ho&aacute; ba miền hội tụ: miền Bắc với những c&acirc;u h&aacute;t Quan họ giao duy&ecirc;n mượt m&agrave;, xin chữ &ocirc;ng đồ, tham gia những tr&ograve; chơi d&acirc;n gian như n&eacute;m c&ograve;n, nhảy sạp, đi c&agrave; kheo, chơi &ocirc; ăn quan&hellip; Tết miền Trung đậm đ&agrave; bản sắc với m&agrave;n diễu h&agrave;nh Sắc B&ugrave;a Ch&uacute;c Ph&uacute;c hay phong tục l&agrave;m hoa giấy Thanh Thi&ecirc;n - một n&eacute;t đẹp văn h&oacute;a t&iacute;n ngưỡng của người d&acirc;n xứ Huế. Trong khi đ&oacute;, phong tục du xu&acirc;n miền Nam được t&aacute;i hiện đầy đặc sắc qua những m&agrave;n biểu diễn l&acirc;n sư rồng, đờn ca t&agrave;i tử hay h&aacute;t l&ocirc; t&ocirc;.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"https://media.vietravel.com/images/Content/rung-dua-bay-mau-thumb_1627641941.jpg\" style=\"height:675px; width:900px\" /></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Đến với v&ugrave;ng đất di sản, du kh&aacute;ch c&ograve;n được kh&aacute;m ph&aacute; kh&ocirc;ng gian y&ecirc;n b&igrave;nh v&agrave; đầy sức sống ng&agrave;y xu&acirc;n của rừng dừa Bảy Mẫu v&agrave; vẻ đẹp tĩnh lặng, hoang sơ của An B&agrave;ng - một trong những b&atilde;i biển đẹp nhất ch&acirc;u &Aacute;.<br />\r\n<br />\r\nMột năm mới nhiều hứng khởi hơn khi được ngồi tr&ecirc;n chiếc thuyền th&uacute;ng mộc mạc, len lỏi trong rặng dừa bạt ng&agrave;n, xa xa vang vọng lai giai điệu bay bổng của điệu h&ograve; xứ Quảng. H&agrave;nh tr&igrave;nh du xu&acirc;n c&agrave;ng th&ecirc;m đặc sắc khi du kh&aacute;ch được chi&ecirc;m ngưỡng m&agrave;n biểu diễn m&uacute;a th&uacute;ng v&ocirc; c&ugrave;ng điệu nghệ v&agrave; s&ocirc;i động.<br />\r\n<br />\r\nHội An lu&ocirc;n để lại trong tr&aacute;i tim du kh&aacute;ch những ấn tượng tuyệt vời, đặc biệt Tết Nguy&ecirc;n đ&aacute;n nơi đ&acirc;y cũng hứa hẹn mang đến những trải nghiệm th&uacute; vị. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; nh&eacute;.</span></p>', '2024-02-27 06:13:12', '2024-02-27 06:18:54'),
(9, 'Khám phá Dốc Thẩm Mã - Cung đường đèo đầy ấn tượng trên đất Hà Giang', '1711467178.jpg', '<p>Nằm ngay tr&ecirc;n Quốc lộ 4C, Dốc Thẩm M&atilde; l&agrave; một con đường đ&egrave;o ngoằn ngo&egrave;o nguy hiểm nhất ở miền Bắc nối giữa th&agrave;nh phố H&agrave; Giang v&agrave; huyện M&egrave;o Vạc. Đ&acirc;y l&agrave; con dốc nối con đường từ thị trấn Y&ecirc;n Minh l&ecirc;n tới tận Phố C&aacute;o. Mặc d&ugrave; nguy hiểm l&agrave; thế, nhưng nơi đ&acirc;y lại sở hữu phong cảnh n&uacute;i non tr&ugrave;ng điệp c&ugrave;ng những kh&uacute;c cua uốn lượn đẹp mắt. Đ&acirc;y l&agrave; yếu tố quan trọng khiến nơi đ&acirc;y trở th&agrave;nh điểm dừng ch&acirc;n được rất nhiều bạn trẻ lựa chọn.&nbsp;</p>\r\n\r\n<p>Cho d&ugrave; l&agrave; những &ldquo;phượt thủ&rdquo; l&acirc;u năm, th&igrave; đ&acirc;y cũng l&agrave; một th&aacute;ch thức lớn đối với họ. Tuy nhi&ecirc;n, b&ugrave; lại bạn sẽ c&oacute; cơ hội kh&aacute;m ph&aacute; n&eacute;t đẹp độc đ&aacute;o đậm chất T&acirc;y Bắc của&nbsp;<a href=\"https://mia.vn/cam-nang-du-lich/den-ha-giang-kham-pha-cong-vien-dia-chat-toan-cau-cao-nguyen-da-dong-van-3446\" target=\"_blank\">C&ocirc;ng vi&ecirc;n địa chất to&agrave;n cầu Cao nguy&ecirc;n đ&aacute; Đồng Văn</a>&nbsp;khi vượt qua hết con dốc đấy.&nbsp;</p>', '2024-03-26 15:32:58', '2024-03-26 15:32:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` int(20) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id_momo` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `departurelocation` varchar(255) NOT NULL,
  `arrivallocation` varchar(255) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `tour_code` varchar(255) NOT NULL,
  `person1` int(20) NOT NULL,
  `person2` int(20) NOT NULL,
  `person3` int(20) NOT NULL,
  `price1` varchar(255) NOT NULL,
  `price2` varchar(255) NOT NULL,
  `price3` varchar(255) NOT NULL,
  `price0` varchar(255) NOT NULL,
  `note` varchar(1500) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `number_random` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `keyword`, `desc`, `status`) VALUES
(1, 'Hà Nội', '1703654986_topsongho-1412822386.jpg', 'HN', '1', '1'),
(2, 'Hà Giang', '1703675601_rsz_ha-giang-2.jpg', 'HG', '2', '1'),
(3, 'Quảng Bình', '1703682069_quang binh.jpg', 'QB', '1', '1'),
(4, 'Đà Nẵng', '1703682077_cau-rong-da-nang.jpg', 'ĐN', '1', '1'),
(5, 'Đà Lạt', '1703679779_quang-truong-da-lat-1.jpg', 'ĐL', '1', '1'),
(6, 'Nha Trang', '1703681685_nha-trang-o-dau-1.jpg', 'NT', '1', '1'),
(7, 'Phú Quốc', '1703681725_phuquoc.jpg', 'PQ', '1', '1'),
(9, 'Huế', '1706551066_hue.jpg', 'H', 'update', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(24, 'tan tran', 'trannhattan805@gmail.com', '0704913975', 'cdcd', '2024-01-30 17:00:00', '2024-01-31 00:53:11'),
(25, 'tan tran', 'trannhattan805@gmail.com', '0704913975', 'cdcdcdcdccdcdcddcd', '2024-01-31 01:02:06', '2024-01-31 01:02:06'),
(26, 'tan tran', 'trannhattan805@gmail.com', '0704913975', 'dddddddddddddddddd', '2024-01-31 01:03:02', '2024-01-31 01:03:02'),
(27, 'Student1468178', 'nqht123456789@gmail.com', '0374874492', 'abc', '2024-01-31 14:05:34', '2024-01-31 14:05:34'),
(28, 'tan', '123456@gmail.com', '0374874492', 'xxxxxxxxxxxxxxxxxx', '2024-02-02 23:22:41', '2024-02-02 23:22:41'),
(29, 'katakuri', '123456@gmail.com', '0000000000000000', 'fffffffff', '2024-02-03 01:32:15', '2024-02-03 01:32:15'),
(30, 'tantran', '123456@gmail.com', '0374874492', 'dsadasdas', '2024-02-03 02:16:31', '2024-02-03 02:16:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forget_password`
--

CREATE TABLE `forget_password` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `forget_password`
--

INSERT INTO `forget_password` (`email`, `token`) VALUES
('duyanh@gmail.com', 'gW0gXDB3gMnBuSFI1gxtxNcpHaKFn4tdZXxfK2f00YV44OfOqNJFebywTuQGDxW6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_momo`
--

CREATE TABLE `order_momo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `partner_code` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `order_info` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `vehicle` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `price1` varchar(255) NOT NULL,
  `price2` varchar(255) NOT NULL,
  `price3` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `idcat` bigint(20) NOT NULL,
  `departurelocation` varchar(255) DEFAULT NULL,
  `arrivallocation` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `keyword`, `vehicle`, `desc`, `content`, `price`, `price1`, `price2`, `price3`, `image`, `images`, `idcat`, `departurelocation`, `arrivallocation`, `status`) VALUES
(25, 'Tour Khám phá Phong Nha Kẻ Bàng', '3 Ngày 2 Đêm', 'Máy bay', 'Tour Phong Nha Kẻ Bàng 2 ngày 1 đêm phù hợp cho du khách có ít thời gian tại Quảng Bình.Một chương trình Tour khám phá Vườn Quốc gia phong Nha – Kẻ Bàng cho du khách đến tham quan Du lịch Quảng Bình. Trong chương trình Tour khám phá Phong Nha Kẻ Bàng 2 ngày 1 đêm quý khách sẽ được tham quan Động Phong Nha, Động Thiên Đường, được đu dây zipline tắm trên sông Chày và trải nghiệm Tour mạo hiểm thu nhỏ khám phá Hang tối. Quý vị sẽ được ngủ lại ở Vườn Thực Vật hoặc khách sạn tại trung tâm Du lịch Phong Nha. Hành trình thăm quan các địa điểm nối tiếng tại Phong Nha Kẻ Bàng. Đây cũng là những điểm du lịch cơ bản dành cho nhiều đối tượng khách tại Phong Nha.Tour du lịch khám phá Phong Nha Kẻ Bàng sẽ là trãi nghiệm lý thú cho du khách. Các địa danh du lịch hấp dẫn cũng như các dịch vụ đẳng cấp mà chúng tôi mang lại cho du khách. Chắc chắn sẽ làm hài lòng du khách khi đến Quảng Bình trải nghiệm. Mỗi điểm đến là một trải nghiệm khác biệt và không lặp lại. Đây cũng là những điểm du lịch cơ bản dành cho nhiều đối tượng khách tại Phong Nha.Tour du lịch khám phá Phong Nha Kẻ Bàng sẽ là trãi nghiệm lý thú cho du khách. Các địa danh du lịch hấp dẫn cũng như các dịch vụ đẳng cấp mà chúng tôi mang lại cho du khách. Chắc chắn sẽ làm hài lòng du khách khi đến Quảng Bình trải nghiệm. Mỗi điểm đến là một trải nghiệm khác biệt và không lặp lại.Mỗi điểm đến là một trải nghiệm khác biệt và không lặp lại. Đây cũng là những điểm du lịch cơ bản dành cho nhiều đối tượng khách tại Phong Nha.Tour du lịch khám phá Phong Nha Kẻ Bàng sẽ là trãi nghiệm lý thú cho du khách. Các địa danh du lịch hấp dẫn cũng như các dịch vụ đẳng cấp mà chúng tôi mang lại cho du khách. Chắc chắn sẽ làm hài lòng du khách khi đến Quảng Bình trải nghiệm. Mỗi điểm đến là một trải nghiệm khác biệt và không lặp lại.', '<p><span style=\"font-size:16px\"><strong>Ng&agrave;y 01: Đồng Hới - Vườn quốc gia Phong Nha &ndash; Kẻ B&agrave;ng &ndash;&nbsp; Động Thi&ecirc;n Đường &ndash;&nbsp;Kayak S&ocirc;ng Ch&agrave;y &ndash;ZIPLINE tắm s&ocirc;ng &ndash; Kh&aacute;m ph&aacute; Hang Tối&nbsp;</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">8h00: Hướng dẫn vi&ecirc;n Netin Travel dẫn đo&agrave;n xuất ph&aacute;t đi du lịch thăm quan Vườn quốc gia<strong><u>&nbsp;</u>Phong Nha Kẻ B&agrave;ng</strong>&nbsp;- Di sản Thi&ecirc;n nhi&ecirc;n Thế giới. Đ&acirc;y l&agrave; vườn Quốc gia lớn nhất tại Việt Nam. Bắt đầu h&agrave;nh tr&igrave;nh Tour Phong Nha Kẻ B&agrave;ng 2 ng&agrave;y 1 đ&ecirc;m</span></li>\r\n	<li><span style=\"font-size:14px\">10h00: Tham quan&nbsp;<strong>Động Thi&ecirc;n Đường</strong>&nbsp;- Hang động kh&ocirc; d&agrave;i nhất Đ&ocirc;ng Nam &Aacute; với chiều d&agrave;i đ&atilde; được khảo s&aacute;t 31,4km. Với hệ thống thạch nhũ tr&aacute;ng lệ, Du kh&aacute;ch sẽ được chi&ecirc;m ngưỡng một Thi&ecirc;n đường chốn trần gian. Lịch tr&igrave;nh tham quan của du kh&aacute;ch l&agrave; 1km trong hang động. Du kh&aacute;ch sẽ đến đi xe điện sau đ&oacute; đi bộ leo n&uacute;i dưới t&aacute;n rừng Phong Nha Kẻ B&agrave;ng.</span></li>\r\n	<li><span style=\"font-size:14px\">12h30: Đo&agrave;n về ăn trưa tại nh&agrave; h&agrave;ng&nbsp;<strong>Dark Cave</strong></span></li>\r\n	<li><span style=\"font-size:14px\">13h30: Sau bữa s&aacute;ng với những m&oacute;n ăn d&acirc;n d&atilde; của địa phương l&agrave;ng qu&ecirc; Ch&agrave;y Lập, Du kh&aacute;ch sẽ đi v&agrave;o tham quan điểm du lịch v&ocirc; c&ugrave;ng hấp dẫn với nhiều hoạt động như&nbsp;<strong>Đu d&acirc;y Zipline</strong>,&nbsp;<strong>Tắm b&ugrave;n</strong>,&nbsp;<strong>đi bộ, Kayak</strong>, kh&aacute;m ph&aacute; hang động&hellip;tại điểm du lịch&nbsp;<strong>S&ocirc;ng Ch&agrave;y Hang Tối</strong>. Du kh&aacute;ch được đu Zipline để đến tham quan hang Tối.</span></li>\r\n	<li><span style=\"font-size:14px\">Hang Tối được khai th&aacute;c với loại h&igrave;nh du lịch th&aacute;m hiểm. Với đ&egrave;n pin đội đầu, c&aacute;c thiết bị bơi lội du kh&aacute;ch sẽ c&oacute; trải nghiệm v&ocirc; c&ugrave;ng th&uacute; vị khi vừa đi bộ, vừa bơi qua hồ Thủy Ti&ecirc;n m&aacute;t lạnh, thư giản với hoạt động tắm b&ugrave;n.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\">Nếu du kh&aacute;ch kh&ocirc;ng th&iacute;ch những tr&ograve; mạo hiểm th&igrave; suối nước Moọc sẽ l&agrave; lựa chọn thay thế. Suối Nước moọc nằm ngay cạnh hang tối với những tr&ograve; chơi nhẹ nh&agrave;ng v&agrave; tắm suối.</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Ng&agrave;y&nbsp;02: Động Phong Nha &ndash; Đồng Hới</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">8h00: Đo&agrave;n ăn s&aacute;ng tại kh&aacute;ch sạn Phong Nha. Sau bữa s&aacute;ng du kh&aacute;ch tiếp tục h&agrave;nh tr&igrave;nh đi tới khu du lịch tham quan hang&nbsp;<strong>động Phong Nha</strong>&nbsp;- hang động được đ&aacute;nh gi&aacute; đầy đủ với 7 ti&ecirc;u ch&iacute; bởi Hiệp Hội Th&aacute;m Hiểm Hang Động Ho&agrave;ng Gia Anh. Sau h&agrave;nh tr&igrave;nh gần 30 ph&uacute;t tr&ecirc;n thuyền du kh&aacute;ch sẽ đến Động Phong Nha với những thạch nhũ ấn tượng, l&agrave; điểm đến được du kh&aacute;ch đ&aacute;nh gi&aacute; cao.</span></li>\r\n	<li><span style=\"font-size:14px\">Du kh&aacute;ch cũng c&oacute; thể đăng k&yacute; th&ecirc;m trải nghiệm Động Ti&ecirc;n Sơn, đi bộ 600 bậc cầu thang, check in cầu k&iacute;nh ngắm to&agrave;n cảnh Phong Nha Kẻ B&agrave;ng.</span></li>\r\n	<li><span style=\"font-size:14px\">13h00 : Ăn trưa tại nh&agrave; h&agrave;ng</span></li>\r\n	<li><span style=\"font-size:14px\">11h45 : Trở về Đồng Hới. Kết th&uacute;c chương tr&igrave;nh&nbsp;<strong>tour du lịch Phong Nha Kẻ B&agrave;ng</strong>. Hẹn gặp lại Qu&yacute; kh&aacute;ch chuyến Du lịch Quảng B&igrave;nh lần sau.</span></li>\r\n	<li><span style=\"font-size:14px\">Hoạt động trong tour: Đi bộ, bơi lội, tham quan hang động, ch&egrave;o thuyền Kayak tr&ecirc;n s&ocirc;ng, đu Zipline, Du thuyền.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><strong>&nbsp; &nbsp;</strong></span></p>', '4.190.000 VNĐ', '1.900.000 VNĐ', '1.590.000 VNĐ', '190.000 VNĐ', '1705634043_quang binh.jpeg', '[\"1706559096_at_he-thong-hang-dong-phong-nha-ke-bang.jpg\",\"1706559096_at_phong nha ke bang.jpg\",\"1706559096_at_dong-phong-nha-o-quang-binh-2.jpg\",\"1706559096_at_dong-phong-nha-ke-bang-6.jpg\",\"1706559096_at_Dong-Phong-Nha-Ke-Bang-dep-den-choang-ngop.jpg\",\"1706559096_at_du-lich-quang-binh-1-ngay-4_1632669083.jpg\",\"1706559096_at_quang binh.jpeg\"]', 3, 'Hà Nội', 'Quảng Bình', 1),
(30, 'Hà Nội - Bái Đính - Khu Du Lịch Tràng An - Bái Đính - Hạ Long - Yên Tử', '4 Ngày 3 Đêm', 'Xe khách', 'Xứ Bắc – vùng đất khai cơ của các Vương triều Việt, nơi định đô của hầu hết các triều đại phong kiến Việt Nam chính vì vậy nơi đây được xem như là đất kinh đô ngàn năm văn hiến với một bề dày văn hóa, lịch sử sâu sắc và đa dạng. Tuy nhiên, khi đến đây, Du khách không chỉ được tham quan những công trình văn hóa – lịch sử cổ kính như : Văn Miếu, Hoàng thành Thăng Long, Cố đô Hoa Lư, Chùa Bái Đính, trải nghiệm những nét văn hóa đặc sắc của đất kinh đô như : ngoạn cảnh 36 phố phường, thưởng thức ẩm thực, xem múa rối nước; mà còn có thể thăm thú các thắng cảnh nổi tiếng nơi đây như : Di sản thế giới Danh thắng Tràng An và Vịnh Hạ Long.Nhắc đến xứ Bắc, không thể bỏ lỡ…  –  Văn Miếu Quốc Tử Giám: ngôi trường đại học đầu tiên của Việt Nam, không chỉ là di tích lịch sử nổi tiếng của thủ đô Hà Nội mà còn là nơi chứa đựng những giá trị tinh hoa văn hóa của những giai đoạn lịch sử phong kiến trước kia và lưu giữ những giá trị truyền thống của đất Việt.  – Chùa Bái Đính: một quần thể chùa được coi là đẹp và lớn nhất ở Việt Nam hiện nay, sở hữu nhiều kỷ lục nhất của Việt Nam.  – Danh thắng Tràng An: có giá trị về văn hoá thiên nhiên hùng vĩ chứa đựng nhiều giá trị nổi bật với cảnh quan thiên nhiên đặc sắc, được tạo nên 1 cách hài hoà bởi hình núi, thế sông, các hang động ngập nước quanh năm với thảm thực vật còn hoang sơ nguyên vẹn.  – Vịnh Hạ Long: Theo CNN, là điểm du lịch đẹp nhất tại Việt Nam, đồng thời là một trong những điểm tham quan tự nhiên nổi tiếng của Đông Nam Á. Với 1.969 đảo đá vôi cùng những ngôi làng nổi trên làn nước xanh thẳm, vẻ đẹp của Hạ Long như khiến thời gian lắng đọng.Nhắc đến xứ Bắc, không thể bỏ lỡ…  –  Văn Miếu Quốc Tử Giám: ngôi trường đại học đầu tiên của Việt Nam, không chỉ là di tích lịch sử nổi tiếng của thủ đô Hà Nội mà còn là nơi chứa đựng những giá trị tinh hoa văn hóa của những giai đoạn lịch sử phong kiến trước kia và lưu giữ những giá trị truyền thống của đất Việt.  – Chùa Bái Đính: một quần thể chùa được coi là đẹp và lớn nhất ở Việt Nam hiện nay, sở hữu nhiều kỷ lục nhất của Việt Nam.  – Danh thắng Tràng An: có giá trị về văn hoá thiên nhiên hùng vĩ chứa đựng nhiều giá trị nổi bật với cảnh quan thiên nhiên đặc sắc, được tạo nên 1 cách hài hoà bởi hình núi, thế sông, các hang động ngập nước quanh năm với thảm thực vật còn hoang sơ nguyên vẹn.  – Vịnh Hạ Long: Theo CNN, là điểm du lịch đẹp nhất tại Việt Nam, đồng thời là một trong những điểm tham quan tự nhiên nổi tiếng của Đông Nam Á. Với 1.969 đảo đá vôi cùng những ngôi làng nổi trên làn nước xanh thẳm, vẻ đẹp của Hạ Long như khiến thời gian lắng đọng.', '<p><strong><span style=\"font-size:16px\">Ng&agrave;y&nbsp;1&nbsp;-&nbsp;Đ&agrave; Nẵng - Nội B&agrave;i (H&agrave; Nội) &ndash; Ch&ugrave;a B&aacute;i Đ&iacute;nh &ndash; Tr&agrave;ng An (Ăn trưa, tối)</span></strong></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch tập trung tại S&acirc;n bay Đ&agrave; Nẵng, ga đi Trong Nước. Hướng dẫn vi&ecirc;n l&agrave;m thủ tục cho Qu&yacute; kh&aacute;ch đ&aacute;p chuyến bay đi H&agrave; Nội . Đến s&acirc;n bay Nội B&agrave;i, Xe đ&oacute;n Qu&yacute; kh&aacute;ch khởi h&agrave;nh đi&nbsp;<strong>Ninh B&igrave;n</strong>h - v&ugrave;ng đất mệnh danh l&agrave; &ldquo;Nơi mơ đến, chốn mong về&rdquo; với nhiều di t&iacute;ch văn h&oacute;a, thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng đặc sắc. Đến nơi, Qu&yacute; kh&aacute;ch tham quan:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>Ch&ugrave;a B&aacute;i Đ&iacute;nh</strong>&nbsp;-&nbsp;một quần thể ch&ugrave;a với nhiều kỷ lục Việt Nam như pho tượng phật Di Lặc bằng đồng nặng 80 tấn, h&agrave;nh lang với 500 tượng vị La H&aacute;n, t&ograve;a Bảo Th&aacute;p cao 99m&hellip;</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Khu Du lịch Tr&agrave;ng An</strong>&nbsp;- Qu&yacute; kh&aacute;ch l&ecirc;n thuyền truyền thống đi tham quan thắng cảnh hệ thống n&uacute;i đ&aacute; v&ocirc;i h&ugrave;ng vĩ v&agrave; c&aacute;c thung lũng ngập nước, th&ocirc;ng với nhau bởi c&aacute;c d&ograve;ng suối tạo n&ecirc;n c&aacute;c hang động ngập nước quanh năm. Điểm xuyến trong kh&ocirc;ng gian hoang sơ, tĩnh lặng l&agrave; h&igrave;nh ảnh r&ecirc;u phong, cổ k&iacute;nh của c&aacute;c m&aacute;i đ&igrave;nh, đền, phủ nằm n&eacute;p m&igrave;nh dưới ch&acirc;n c&aacute;c d&atilde;y n&uacute;i cao.&nbsp;</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch d&ugrave;ng cơm tối v&agrave; nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute;&nbsp;<strong>Phố cổ Hoa Lư</strong>, một kh&ocirc;ng gian check-in cổ, đẹp, trầm mặc đẹp trở n&ecirc;n lung linh, huyền ảo hơn với sắc m&agrave;u của những chiếc đ&egrave;n lồng v&agrave; Bảo Th&aacute;p tr&ecirc;n Hồ Kỳ L&acirc;n;&nbsp;<em>trải nghiệm nhiều hoạt động tr&ograve; chơi d&acirc;n gian v&agrave; nhiều loại h&igrave;nh văn h&oacute;a nghệ thuật từ d&acirc;n tộc như m&uacute;a rối nước, nhảy m&uacute;a Tắc X&igrave;nh, h&aacute;t xẩm, ... đến những buổi tr&igrave;nh diễn acoustic sẽ được diễn ra v&agrave;o c&aacute;c buổi tối ng&agrave;y cuối tuần.</em></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Ng&agrave;y&nbsp;2&nbsp;-&nbsp;Ninh B&igrave;nh &ndash; Hạ Long (Ăn ba bữa)</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch ăn s&aacute;ng v&agrave; trả ph&ograve;ng kh&aacute;ch sạn. Xe khởi h&agrave;nh đưa Qu&yacute; kh&aacute;ch đến th&agrave;nh phố biển Hạ Long tham quan:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>Xuống thuyền đi du ngoạn Vịnh Hạ Long</strong>&nbsp;- Thắng cảnh thi&ecirc;n nhi&ecirc;n tuyệt đẹp v&agrave; v&ocirc; c&ugrave;ng sống động, được UNESCO c&ocirc;ng nhận l&agrave; di sản thi&ecirc;n nhi&ecirc;n Thế giới năm 1994.</span></li>\r\n	<li><span style=\"font-size:14px\">Từ tr&ecirc;n t&agrave;u ngắm nh&igrave;n c&aacute;c h&ograve;n đảo lớn nhỏ trong Vịnh Hạ Long:&nbsp;<strong>H&ograve;n G&agrave; Chọi, H&ograve;n Lư Hương.</strong></span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Động Thi&ecirc;n Cung</strong>&nbsp;l&agrave; một trong những động đẹp nhất ở Hạ Long. Vẻ đẹp nguy nga v&agrave; lộng lẫy bởi những lớp thạch nhũ v&agrave; những luồng &aacute;nh s&aacute;ng lung linh.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\">Xe đ&oacute;n Qu&yacute; kh&aacute;ch tại bến t&agrave;u v&agrave; khởi h&agrave;nh đi tham quan chụp h&igrave;nh b&ecirc;n ngo&agrave;i&nbsp;<strong>Bảo t&agrave;ng Quảng Ninh, Cung C&aacute; Heo&nbsp;</strong>- Cung Quy Hoạch, Hội Chợ, Triển L&atilde;m V&agrave; Văn H&oacute;a Quảng Ninh, tham quan mua sắm&nbsp;<em>đặc sản tại Hải Sản Hương Đ&agrave; Hạ Long với nhiều mặt h&agrave;ng hải sản tươi, kh&ocirc;, chả mực,..&nbsp;</em></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch d&ugrave;ng cơm chiều v&agrave; nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, Qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute; nhiều hoạt động dịch vụ giải tr&iacute; s&ocirc;i nổi tại &ldquo;phố cổ&rdquo; B&atilde;i Ch&aacute;y - nằm cạnh c&ocirc;ng vi&ecirc;n Sun World Hạ Long từ những ẩm thực đường phố đến c&aacute;c qu&aacute;n c&agrave; ph&ecirc; si&ecirc;u dễ thương như H&ograve;n Gai Coffee &amp; Lounge hay thoải m&aacute;i bung x&otilde;a tại The Mini Bar, Brothers Pub,&hellip;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Ng&agrave;y&nbsp;3&nbsp;-&nbsp;Hạ Long - Y&ecirc;n Tử - H&agrave; Nội (Ăn 3 bữa)</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch ăn s&aacute;ng v&agrave; trả ph&ograve;ng kh&aacute;ch sạn. Xe đưa Qu&yacute; kh&aacute;ch đi H&agrave; Nội, tr&ecirc;n đường dừng tham quan:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>V&ugrave;ng đất thi&ecirc;ng Y&ecirc;n Tử</strong><em>:&nbsp;</em>Qu&yacute; kh&aacute;ch&nbsp;<strong>l&ecirc;n c&aacute;p treo du ngoạn thắng cảnh thi&ecirc;n nhi&ecirc;n Đ&ocirc;ng Y&ecirc;n Tử&nbsp;</strong>(chi ph&iacute; c&aacute;p treo tự t&uacute;c), nơi c&ograve;n lưu giữ nhiều di t&iacute;ch lịch sử mệnh danh &ldquo;Đất tổ Phật gi&aacute;o Việt Nam&rdquo;, chi&ecirc;m b&aacute;i&nbsp;<strong>ch&ugrave;a Một M&aacute;i</strong>,&nbsp;<strong>ch&ugrave;a Hoa Y&ecirc;n&nbsp;</strong>&ndash; nơi tu h&agrave;nh của phật ho&agrave;ng Trần Nh&acirc;n T&ocirc;ng khai sinh ra d&ograve;ng mới Thiền Ph&aacute;i Tr&uacute;c L&acirc;m, nằm tr&ecirc;n lưng chừng n&uacute;i ở độ cao 516m. Theo dấu ch&acirc;n Phật Ho&agrave;ng viếng&nbsp;<strong>Ch&ugrave;a Đồng</strong>&nbsp;<strong>c&oacute; t&ecirc;n Thi&ecirc;n Tr&uacute;c Tự&nbsp;</strong>(ch&ugrave;a C&otilde;i Phật), tọa lạc ở đỉnh cao nhất d&atilde;y Y&ecirc;n Tử (1.068m) &ndash; ng&ocirc;i ch&ugrave;a bằng đồng lớn nhất Việt Nam.</span></li>\r\n	<li><span style=\"font-size:14px\">Dừng tại trạm dừng ch&acirc;n Hải Dương mua đặc sản: b&aacute;nh đậu xanh, b&aacute;nh khảo.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\">Đến nơi, xe đưa Qu&yacute; kh&aacute;ch đi một v&ograve;ng&nbsp;<strong>Hồ Ho&agrave;n Kiếm ngắm</strong>&nbsp;b&ecirc;n ngo&agrave;i Th&aacute;p R&ugrave;a, Đền Ngọc Sơn, Cầu Th&ecirc; H&uacute;c. Qu&yacute; kh&aacute;ch d&ugrave;ng cơm chiều v&agrave; nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, Qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute; 36 phố phường H&agrave; Nội.&nbsp;</span></p>', '5.190.000 VNĐ', '2.900.000 VNĐ', '790.000 VNĐ', '390.000 VNĐ', '1706585386_van-mieu-quoc-tu-giam-54b86ff23aed0.jpg', '[\"1706585386_at_ho-hoan-kiem867787096576.jpg\",\"1706585386_at_bai-dinh1.jpg\",\"1706585386_at_bai-dinh.jpg\",\"1706585386_at_t\\u1ea3i xu\\u1ed1ng (2).jpg\",\"1706585386_at_t\\u1ea3i xu\\u1ed1ng (1).jpg\",\"1706585386_at_ua_vinh_nghiem_6_1650079203.jpg\",\"1706585386_at_van-mieu-quoc-tu-giam-54b86ff23aed0.jpg\"]', 1, 'Hà Nội', 'Ninh Bình', 1),
(31, 'Đông Bắc: Ba Bể - Cao Bằng - Thác Bản Giốc - Mèo Vạc - Hà Giang - Lũng Cú - Đồng Văn - Mã Pí Lèng', '4 Ngày 3 Đêm', 'Xe khách', 'Thác Bản Giốc - một trong những thác nước đẹp nhất của Việt Nam có đường ranh giới tự nhiên với Trung Quốc. Thác nước đẹp và hùng vỹ với dòng nước cuồn cuộn chảy quanh năm bắt nguồn từ dòng sông Quây Sơn nước xanh ngắt một màu ngọc Bích. Đẹp nhất vào mùa lúa chín (tháng 9) khung cảnh đường vào thác sáng rực một màu vàng óng và dòng nước trắng xóa mềm mại như tóc tiên càng làm khung cảnh thêm nên thơ, hùng vỹ. Chùa Phật Tích Trúc Lâm Bản Giốc: được xây dựng theo lối kiến trúc thuần Việt trên diện tích 3ha, đây là ngôi chùa đầu tiên được xây dựng tại nơi biên cương phía Bắc của tổ quốc. Quý khách dùng cơm trưa và tiếp tục tham quan:  Động Ngườm Ngao - một động lớn được hình thành từ sự phong hoá lâu đời của đá vôi; bước vào động, du khách như bước vào một thế giới kỳ ảo, choáng ngợp trước những dải thạch nhũ muôn màu, những tượng đá quyến rũ với nhiều kiểu dáng khác nhau mang dáng dấp hình người, cây rừng, súc vật..., các nhũ đá thả từ trên xuống hay mọc từ dưới đất lên vô cùng sống động Làng Đá Khuổi Ky: với một ý niệm đá là khởi nguồn của sự sống và trung tâm của vũ trụ mà người Tày ở Trùng Khánh luôn gìn giữ ngôi nhà sàn, nơi sinh hoạt xung quanh mình là đá, điều đó đã tạo nên điểm nhấn cho ngôi làng nhìn từ xa như một bức tranh vững chãi giữa mây trời núi non hùng vỹ. Đến đây vào homestay và thưởng thức tách café giữa khung cảnh núi rừng sẽ cho quý khách cảm giác bình yên đến lạ.Thác Bản Giốc - một trong những thác nước đẹp nhất của Việt Nam có đường ranh giới tự nhiên với Trung Quốc. Thác nước đẹp và hùng vỹ với dòng nước cuồn cuộn chảy quanh năm bắt nguồn từ dòng sông Quây Sơn nước xanh ngắt một màu ngọc Bích. Đẹp nhất vào mùa lúa chín (tháng 9) khung cảnh đường vào thác sáng rực một màu vàng óng và dòng nước trắng xóa mềm mại như tóc tiên càng làm khung cảnh thêm nên thơ, hùng vỹ. Chùa Phật Tích Trúc Lâm Bản Giốc: được xây dựng theo lối kiến trúc thuần Việt trên diện tích 3ha, đây là ngôi chùa đầu tiên được xây dựng tại nơi biên cương phía Bắc của tổ quốc. Quý khách dùng cơm trưa và tiếp tục tham quan:  Động Ngườm Ngao - một động lớn được hình thành từ sự phong hoá lâu đời của đá vôi; bước vào động, du khách như bước vào một thế giới kỳ ảo, choáng ngợp trước những dải thạch nhũ muôn màu, những tượng đá quyến rũ với nhiều kiểu dáng khác nhau mang dáng dấp hình người, cây rừng, súc vật..., các nhũ đá thả từ trên xuống hay mọc từ dưới đất lên vô cùng sống động Làng Đá Khuổi Ky: với một ý niệm đá là khởi nguồn của sự sống và trung tâm của vũ trụ mà người Tày ở Trùng Khánh luôn gìn giữ ngôi nhà sàn, nơi sinh hoạt xung quanh mình là đá, điều đó đã tạo nên điểm nhấn cho ngôi làng nhìn từ xa như một bức tranh vững chãi giữa mây trời núi non hùng vỹ. Đến đây vào homestay và thưởng thức tách café giữa khung cảnh núi rừng sẽ cho quý khách cảm giác bình yên đến lạ.', '<p><span style=\"font-size:16px\"><strong>Ng&agrave;y&nbsp;1&nbsp;-&nbsp;S&Acirc;N BAY NỘI B&Agrave;I &ndash; BẮC KẠN 02 bữa ăn: (Trưa, Chiều)</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch tập trung tại s&acirc;n bay T&acirc;n Sơn Nhất (Ga nội địa), hướng dẫn vi&ecirc;n hỗ trợ kh&aacute;ch l&agrave;m thủ tục đ&aacute;p chuyến bay đi H&agrave; Nội. Đến s&acirc;n bay Nội B&agrave;i, xe v&agrave; HDV Vietravel đ&oacute;n Qu&yacute; kh&aacute;ch đi Bắc Kạn, đến nơi Qu&yacute; kh&aacute;ch xuống thuyền tham quan:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>Hồ Ba Bể (2 tiếng)</strong>&nbsp;&ndash; Kh&aacute;m ph&aacute; bức tranh sơn thủy hữu t&igrave;nh v&ocirc; c&ugrave;ng sống động, mặt nước hồ trong xanh như gương l&agrave;m quyến rũ biết bao du kh&aacute;ch l&agrave;m quyến rũ biết bao du kh&aacute;ch, thi&ecirc;n nhi&ecirc;n v&agrave; con người như h&ograve;a quyện v&agrave;o nhau, ngắm Ao Ti&ecirc;n, Đền An M&atilde;, h&ograve;n B&agrave; G&oacute;a. Thuyền dừng tr&ecirc;n mặt hồ, Qu&yacute; kh&aacute;ch giao lưu h&aacute;t then v&agrave; đ&agrave;n t&iacute;nh của người T&agrave;y, hoặc tham gia ch&egrave;o thuyền kayak xung quanh đảo B&agrave; G&oacute;a (chi ph&iacute; tự t&uacute;c).</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Ng&agrave;y&nbsp;2&nbsp;-&nbsp;BA BỂ - P&Aacute;C B&Oacute; - CAO BẰNG 03 bữa ăn: (S&aacute;ng, Trưa, Chiều)</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch ăn s&aacute;ng v&agrave; trả ph&ograve;ng kh&aacute;ch sạn. Xe khởi h&agrave;nh đi Cao Bằng, tham quan:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><strong>Khu di t&iacute;ch P&aacute;c P&oacute;&nbsp;</strong>- nơi chủ tịch Hồ Ch&iacute; Minh từng sống v&agrave; l&agrave;m việc với khung cảnh n&ecirc;n thơ, hữu t&igrave;nh. D&ograve;ng suối trong xanh, thơ mộng trước cửa hang được B&aacute;c đặt t&ecirc;n l&agrave; Suối L&ecirc; Nin, ngọn n&uacute;i h&ugrave;ng vĩ cạnh b&ecirc;n l&agrave; N&uacute;i C&aacute;c M&aacute;c</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Khu di t&iacute;ch Kim Đồng</strong>&nbsp;- Nơi ghi nhớ anh h&ugrave;ng liệt sỹ c&oacute; c&ocirc;ng bảo vệ c&aacute;n bộ c&aacute;ch mạng trong thời kỳ kh&aacute;ng chiến.</span></li>\r\n</ul>\r\n\r\n<p><strong><span style=\"font-size:16px\">Ng&agrave;y&nbsp;3&nbsp;-&nbsp;CAO BẰNG - TH&Aacute;C BẢN GIỐC 03 bữa ăn: (S&aacute;ng, Trưa, Chiều)</span></strong></p>\r\n\r\n<p><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch ăn s&aacute;ng. Xe khởi h&agrave;nh đưa Qu&yacute; kh&aacute;ch đi tham quan:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Th&aacute;c Bản Giốc&nbsp;- một trong những th&aacute;c nước đẹp nhất của Việt Nam c&oacute; đường ranh giới tự nhi&ecirc;n với Trung Quốc. Th&aacute;c nước đẹp v&agrave; h&ugrave;ng vỹ với d&ograve;ng nước cuồn cuộn chảy quanh năm bắt nguồn từ d&ograve;ng s&ocirc;ng Qu&acirc;y Sơn nước xanh ngắt một m&agrave;u ngọc B&iacute;ch. Đẹp nhất v&agrave;o m&ugrave;a l&uacute;a ch&iacute;n (th&aacute;ng 9) khung cảnh đường v&agrave;o th&aacute;c s&aacute;ng rực một m&agrave;u v&agrave;ng &oacute;ng v&agrave; d&ograve;ng nước trắng x&oacute;a mềm mại như t&oacute;c ti&ecirc;n c&agrave;ng l&agrave;m khung cảnh th&ecirc;m n&ecirc;n thơ, h&ugrave;ng vỹ.</span></li>\r\n	<li><span style=\"font-size:14px\">Ch&ugrave;a Phật T&iacute;ch Tr&uacute;c L&acirc;m Bản Giốc:&nbsp;được x&acirc;y dựng theo lối kiến tr&uacute;c thuần Việt tr&ecirc;n diện t&iacute;ch 3ha, đ&acirc;y l&agrave; ng&ocirc;i ch&ugrave;a đầu ti&ecirc;n được x&acirc;y dựng tại nơi bi&ecirc;n cương ph&iacute;a Bắc của tổ quốc.</span></li>\r\n	<li><span style=\"font-size:14px\">Qu&yacute; kh&aacute;ch d&ugrave;ng cơm trưa v&agrave; tiếp tục tham quan:&nbsp;</span></li>\r\n	<li><span style=\"font-size:14px\">Động Ngườm Ngao&nbsp;- một động lớn được h&igrave;nh th&agrave;nh từ sự phong ho&aacute; l&acirc;u đời của đ&aacute; v&ocirc;i; bước v&agrave;o động, du kh&aacute;ch như bước v&agrave;o một thế giới kỳ ảo, cho&aacute;ng ngợp trước những dải thạch nhũ mu&ocirc;n m&agrave;u, những tượng đ&aacute; quyến rũ với nhiều kiểu d&aacute;ng kh&aacute;c nhau mang d&aacute;ng dấp h&igrave;nh người, c&acirc;y rừng, s&uacute;c vật..., c&aacute;c nhũ đ&aacute; thả từ tr&ecirc;n xuống hay mọc từ dưới đất l&ecirc;n v&ocirc; c&ugrave;ng sống động</span></li>\r\n	<li><span style=\"font-size:14px\">L&agrave;ng Đ&aacute; Khuổi Ky:&nbsp;với một &yacute; niệm đ&aacute; l&agrave; khởi nguồn của sự sống v&agrave; trung t&acirc;m của vũ trụ m&agrave; người T&agrave;y ở Tr&ugrave;ng Kh&aacute;nh lu&ocirc;n g&igrave;n giữ ng&ocirc;i nh&agrave; s&agrave;n, nơi sinh hoạt xung quanh m&igrave;nh l&agrave; đ&aacute;, điều đ&oacute; đ&atilde; tạo n&ecirc;n điểm nhấn cho ng&ocirc;i l&agrave;ng nh&igrave;n từ xa như một bức tranh vững ch&atilde;i giữa m&acirc;y trời n&uacute;i non h&ugrave;ng vỹ. Đến đ&acirc;y v&agrave;o homestay v&agrave; thưởng thức t&aacute;ch caf&eacute; giữa khung cảnh n&uacute;i rừng sẽ cho qu&yacute; kh&aacute;ch cảm gi&aacute;c b&igrave;nh y&ecirc;n đến lạ.</span></li>\r\n</ul>', '10.590.000 VNĐ', '2.900.000 VNĐ', '990.000 VNĐ', '590.000 VNĐ', '1706587215_tour_ha_giang_sapa_5_ngay_4_dem_ha_giang_1650078994.jpg', '[\"1706587215_at_1520ha-giang.jpg\",\"1706587215_at_du-lich-ha-giang-6.jpg\",\"1706587215_at_doc-tham-ma-2.jpg\",\"1706587215_at_Do\\u0302\\u0301c-Tha\\u0302\\u0309m-Ma\\u0303.jpg\",\"1706587215_at_tour-du-lich-ha-giang-03-ngay-02-dem-khoi-hanh-thu-6-hang-tuan.png\",\"1706587215_at_Tour H\\u00e0 Giang Kh\\u1edfi H\\u00e0nh T\\u1eeb H\\u00e0 N\\u1ed9i V\\u1edbi H\\u01b0\\u1edbng D\\u1eabn Vi\\u00ean.jpg\",\"1706587215_at_tour-ha-giang-2-ngay-3-dem-4.jpg\"]', 2, 'Hà Nội', 'Cao Bằng', 1),
(32, 'TOUR ĐÀ NẴNG', '3 Ngày 2 Đêm', 'Máy bay', 'update', '<p>update</p>', '8.590.000 VNĐ', '1.500.000 VNĐ', '590.000 VNĐ', '190.000 VNĐ', '1706588211_tour-da-nang-3-ngay-2-dem21331.jpg', NULL, 4, 'TP. Hồ Chí Minh', 'Đà Nẵng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` double(3,2) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `tour_code` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `schedule`
--

INSERT INTO `schedule` (`id`, `tour_id`, `date_start`, `date_end`, `tour_code`, `status`) VALUES
(22, 25, '2024-04-26 12:30:00', '2024-04-29 12:30:00', 'QB2602902', 1),
(24, 30, '2024-03-28 23:37:00', '2024-03-30 23:37:00', 'HN2803', 1),
(25, 31, '2024-05-02 23:37:00', '2024-05-05 23:37:00', 'ĐB02050505', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_momo`
--
ALTER TABLE `order_momo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcat` (`idcat`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `order_momo`
--
ALTER TABLE `order_momo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`order_id`) REFERENCES `order_momo` (`id`);

--
-- Các ràng buộc cho bảng `order_momo`
--
ALTER TABLE `order_momo`
  ADD CONSTRAINT `order_momo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idcat`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
