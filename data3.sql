

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `title`, `image`, `active`) VALUES
(34, '', '636778948808659826_H1x2.png', 0),
(36, '', '636779288388257732_Banner-H1-iphone-Xs---normal-sale-(1).png', 0),
(37, '', '636779838966110110_H1-2.png', 0),
(38, '', '636778948808659826_H1x2.png', 0),
(39, '', '636779288388257732_Banner-H1-iphone-Xs---normal-sale-(1).png', 0),
(43, '', 'ipx.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `content` varchar(500) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `content`) VALUES
(19, 'Iphone', '<p>a</p>\r\n'),
(20, 'Sam Sung', '<p>a</p>\r\n'),
(21, 'Oppo', '<p>s</p>\r\n'),
(22, 'Sony', '<p>?????????</p>\r\n'),
(23, 'Nokia', '<p>?</p>\r\n'),
(24, 'Khuyáº¿n mÃ£i', '<p>aaa</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `idproduct` int(11) NOT NULL,
  `namemember` varchar(50) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `idproduct`, `namemember`, `noidung`) VALUES
(27, 47, 'a', 'a'),
(44, 47, 'khai', 'good'),
(45, 47, 'khai', 'good');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder`
--

CREATE TABLE `tbl_oder` (
  `id` int(11) NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idproduct` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` float NOT NULL,
  `tenkhachhang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder`
--

INSERT INTO `tbl_oder` (`id`, `diachi`, `idproduct`, `soluong`, `tongtien`, `tenkhachhang`, `email`, `phone`, `note`, `hinhthuc`) VALUES
(41, 'tp/hcm', 47, 1, 0, 'quangkhai', 'thuuye100917@gmail.c', '0123456789', 'cáº£m Æ¡n ', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(42, '24727', 47, 1, 0, 'quangkhai', 'quangkhai@gmail.com', '0974560838', '578', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(43, '12345', 47, 1, 0, 'demo', 'quangkhai897@gmail.c', '125648798', 'dhasjkd', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(44, 'trÆ°á»ng trinh', 47, 1, 0, 'demo', 'admin@gmail.com', '0132456789', 'demo', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(45, 'sai gÃ²n', 48, 1, 78980000, 'quangkhai', 'admin@gmail.com', '0974560838', 'demo', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(46, 'trÆ°á»ng trinh', 53, 1, 0, 'quangkhai', 'quangkhai897@gmail.c', '0974560838', '', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(47, 'tp/hcm', 48, 1, 0, 'quangkhai', 'admin@gmail.com', '0132456789', '', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(48, 'sai gÃ²n', 48, 1, 0, 'quangkhai', 'quangkhai897@gmail.c', '0974560838', '', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(49, 'sai gÃ²n', 57, 1, 0, 'ahihi', 'ahihi@gmail.com', '0123456789', '', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(50, 'trÆ°á»ng trinh', 55, 1, 44980000, 'ahhahaa', 'ahhaha@gmail.com', '097845645', '', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(51, '123456', 48, 1, 0, 'quangkhai', 'quangkhai897@gmail.c', '1324', '', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng'),
(52, '24727', 48, 1, 0, 'quangkhai', 'admin@gmail.com', '213', '', 'Thanh toÃ¡n táº¡i cá»­a hÃ ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `image`) VALUES
(10, '1 á»¨ng dá»¥ng máº¡ng xÃ£ há»™i Tumblr bá»‹ gá»¡ khá»i App Store', '<h1>á»¨ng dá»¥ng máº¡ng x&atilde; há»™i Tumblr bá»‹ gá»¡ khá»i App Store</h1>\r\n\r\n<ul>\r\n	<li>11:11 19/11/2018</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><iframe frameborder=\"0\" height=\"0px\" scrolling=\"no\" src=\"https://sp.zalo.me/plugins/share?dev=null&amp;color=null&amp;oaid=4564080408575020426&amp;href=https%3A%2F%2Fnews.zing.vn%2Fzingnews-post893387.html%3Futm_source%3Dzalo%26utm_medium%3Dzalomsg%26utm_campaign%3Dzingdesktop&amp;layout=icon-text&amp;customize=true&amp;callback=null&amp;id=7498ba54-f583-4f3c-af16-d6cabcfa71ad&amp;domain=news.zing.vn&amp;android=false&amp;ios=false\" width=\"0px\"></iframe></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Má»™t sá»‘ th&ocirc;ng tin cho ráº±ng á»©ng dá»¥ng Tumblr tr&ecirc;n ná»n táº£ng iOS bá»‹ gá»¡ bá» do vi pháº¡m nguy&ecirc;n táº¯c ná»™i dung cá»§a kho á»©ng dá»¥ng n&agrave;y.</p>\r\n\r\n<p>Theo&nbsp;<em>9to5mac</em>, á»©ng dá»¥ng máº¡ng x&atilde; há»™i Tumblr tr&ecirc;n ná»n táº£ng há»‡ Ä‘iá»u h&agrave;nh iOS Ä‘&atilde; báº¥t ngá» biáº¿n máº¥t khá»i kho á»©ng dá»¥ng cá»§a Apple. Hiá»‡n chÆ°a r&otilde; á»©ng dá»¥ng bá»‹ Apple gá»¡ bá» hay Tumblr tá»± Ä‘Æ°a xuá»‘ng.</p>\r\n\r\n<p>Trang&nbsp;<em>PiunikaWeb&nbsp;</em>cho biáº¿t má»™t sá»‘ ngÆ°á»i d&ugrave;ng Ä‘&atilde; thá»­ x&oacute;a á»©ng dá»¥ng Ä‘á»ƒ táº£i láº¡i do gáº·p pháº£i má»™t sá»‘ lá»—i. Tuy nhi&ecirc;n sau Ä‘&oacute;, nhá»¯ng ngÆ°á»i n&agrave;y kh&ocirc;ng thá»ƒ t&igrave;m tháº¥y á»©ng dá»¥ng tr&ecirc;n App Store.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Ung dung mang xa hoi Tumblr bi go khoi App Store hinh anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/fsmyy/2018_11_19/Capture.JPG\" style=\"height:612px; width:923px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Má»™t sá»‘ th&ocirc;ng tin cho ráº±ng á»©ng dá»¥ng Tumblr bá»‹ gá»¡ khá»i App Store do vi pháº¡m nguy&ecirc;n táº¯c ná»™i dung cá»§a kho á»©ng dá»¥ng n&agrave;y. áº¢nh:&nbsp;<em>The Verge.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Trong má»™t tuy&ecirc;n bá»‘ má»›i nháº¥t, Tumblr cho biáº¿t máº¡ng x&atilde; há»™i n&agrave;y Ä‘ang cá»‘ gáº¯ng giáº£i quyáº¿t sá»± cá»‘ vá»›i á»©ng dá»¥ng tr&ecirc;n ná»n táº£ng iOS v&agrave; sáº½ th&ocirc;ng b&aacute;o vá»›i ngÆ°á»i d&ugrave;ng khi má»i thá»© Ä‘&atilde; Ä‘Æ°á»£c kháº¯c phá»¥c.</p>\r\n\r\n<p>Hiá»‡n táº¡i, má»™t sá»‘ ngÆ°á»i d&ugrave;ng cho biáº¿t há» váº«n c&oacute; thá»ƒ táº£i xuá»‘ng á»©ng dá»¥ng Tumblr báº±ng c&aacute;ch truy cáº­p v&agrave;o má»¥c nhá»¯ng á»©ng dá»¥ng Ä‘&atilde; c&agrave;i Ä‘áº·t trÆ°á»›c Ä‘&acirc;y. Tuy nhi&ecirc;n, c&aacute;ch tr&ecirc;n sáº½ kh&ocirc;ng thá»ƒ &aacute;p dá»¥ng vá»›i nhá»¯ng ngÆ°á»i chÆ°a tá»«ng sá»­ dá»¥ng Tumblr.</p>\r\n\r\n<p>Má»™t sá»‘ th&ocirc;ng tin cho ráº±ng nguy&ecirc;n nh&acirc;n c&oacute; thá»ƒ xuáº¥t ph&aacute;t tá»« viá»‡c c&aacute;c ná»™i dung tr&ecirc;n Tumblr kh&ocirc;ng ph&ugrave; há»£p vá»›i nguy&ecirc;n táº¯c cá»§a kho á»©ng dá»¥ng. Hiá»‡n táº¡i, cáº£ Apple v&agrave; Tumblr chÆ°a Ä‘Æ°a ra báº¥t cá»© th&ocirc;ng b&aacute;o n&agrave;o vá» sá»± viá»‡c tr&ecirc;n.</p>\r\n\r\n<p>TrÆ°á»›c Ä‘&oacute;, á»©ng dá»¥ng Telegram cÅ©ng tá»«ng bá»‹ Apple gá»¡ khá»i App Store vá»›i l&yacute; do tÆ°Æ¡ng tá»±. Trong Ä‘a sá»‘ trÆ°á»ng há»£p, Apple thÆ°á»ng l&agrave;m viá»‡c vá»›i c&aacute;c nh&agrave; ph&aacute;t triá»ƒn Ä‘á»ƒ cáº­p nháº­t á»©ng dá»¥ng cá»§a há», x&oacute;a bá» Ä‘i nhá»¯ng pháº§n ná»™i dung kh&ocirc;ng ph&ugrave; há»£p thay v&igrave; gá»¡ á»©ng dá»¥ng.</p>\r\n\r\n<p>Tumblr l&agrave; má»™t tiá»ƒu blog v&agrave; máº¡ng x&atilde; há»™i Ä‘Æ°á»£c s&aacute;ng láº­p bá»Ÿi David Karp v&agrave;o nÄƒm 2007, thuá»™c sá»Ÿ há»¯u cá»§a Yahoo! tá»« nÄƒm 2013.&nbsp;Trang web cho ph&eacute;p ngÆ°á»i d&ugrave;ng Ä‘Äƒng táº£i c&aacute;c ná»™i dung Ä‘a phÆ°Æ¡ng tiá»‡n l&ecirc;n má»™t trang blog, Ä‘á»“ng thá»i theo d&otilde;i blog cá»§a nhá»¯ng ngÆ°á»i d&ugrave;ng kh&aacute;c.&nbsp;Háº§u háº¿t t&iacute;nh nÄƒng cá»§a trang web Ä‘Æ°á»£c thá»±c hiá»‡n th&ocirc;ng qua giao diá»‡n &quot;dashboard&quot;.</p>\r\n\r\n<p>Äáº¿n th&aacute;ng 3/2017, Tumblr Ä‘&atilde; c&oacute; hÆ¡n 339.4 triá»‡u blog.</p>\r\n', 'Capture.JPG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `chitiet` text COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `masp`, `price`, `image`, `category`, `chitiet`, `soluong`) VALUES
(48, 'Iphone Xs 256GB', 'IP02', 34990000, 'xs.png', '19', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">iPhone Xs 256GB&nbsp;m&agrave;n h&igrave;nh OLED HDR chuáº©n Super Retina si&ecirc;u sáº¯c n&eacute;t</strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">M&agrave;n h&igrave;nh iPhone Xs c&oacute; k&iacute;ch thÆ°á»›c 5,8 inch, Ä‘Æ°á»£c l&agrave;m tá»« táº¥m ná»n OLED c&ocirc;ng nghá»‡ ti&ecirc;n tiáº¿n nháº¥t hiá»‡n nay, há»— trá»£ hiá»ƒn thá»‹ HDR. HDR mang Ä‘áº¿n m&agrave;u sáº¯c ch&iacute;nh x&aacute;c, m&agrave;u Ä‘en c&oacute; chiá»u s&acirc;u, Ä‘á»™ s&aacute;ng v&agrave; Ä‘á»™ tÆ°Æ¡ng pháº£i tuyá»‡t vá»i. iPhone Xs ch&iacute;nh l&agrave; sáº£n pháº©m Apple c&oacute; máº­t Ä‘á»™ Ä‘iá»ƒm áº£nh cao nháº¥t, Ä‘á»“ng nghÄ©a vá»›i viá»‡c sá»Ÿ há»¯u m&agrave;n h&igrave;nh sáº¯c n&eacute;t nháº¥t.</p>', 10),
(50, 'Iphone X 64GB', 'IP04', 26990000, 'x.jpg', '19', '<p><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">iPhone X 64GB</strong><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;l&agrave; chiáº¿c smartphone Ä‘áº§u ti&ecirc;n Ä‘Æ°á»£c Apple Æ°u &aacute;i cho táº¥m ná»n m&agrave;n h&igrave;nh OLED, k&iacute;ch thÆ°á»›c 5.8 inch v&agrave; Ä‘á»™ ph&acirc;n giáº£i Ä‘áº¡t chuáº©n Super Retina HD, Äiá»u n&agrave;y gi&uacute;p cho m&agrave;n h&igrave;nh c&oacute; m&agrave;u sáº¯c sá»‘ng Ä‘á»™ng, g&oacute;c nh&igrave;n rá»™ng hÆ¡n, cáº£i thiá»‡n Ä‘á»™ s&aacute;ng v&agrave; tá»‘n &iacute;t Ä‘iá»‡n nÄƒng hÆ¡n. B&ecirc;n cáº¡nh Ä‘&oacute;, c&ocirc;ng nghá»‡ True Tone c&ograve;n gi&uacute;p m&agrave;u sáº¯c trá»Ÿ n&ecirc;n cá»±c k&igrave; trung thá»±c</span></p>', 13),
(51, 'Iphone 8 64GB', 'IP05', 20990000, '636748771945393060_iPhone-Xs-Max-gold.png', '19', '<p><strong>iPhone 8 Plus 64Gb</strong><span style=\"color:#333333; font-family:Arial,Helvetica,sans-serif; font-size:16px\">&nbsp;Ä‘&atilde; thay Ä‘á»•i vá» máº·t thiáº¿t káº¿ so vá»›i nhá»¯ng Ä‘á»i iPhone cÅ©: máº·t sau Ä‘&atilde; chuyá»ƒn sang cháº¥t liá»‡u k&iacute;nh bo cong 2.5D Ä‘áº¹p máº¯t hÆ¡n, loáº¡i bá» viá»n Äƒng-ten, bá»™ khung kim loáº¡i cá»©ng c&aacute;p hÆ¡n c&ugrave;ng vá»›i 7 lá»›p xá»­ l&yacute; m&agrave;u tÄƒng máº¡nh kháº£ nÄƒng chá»‘ng tráº§y xÆ°á»›c. Nh&igrave;n tá»•ng thá»ƒ th&igrave; kh&ocirc;ng c&oacute; nhiá»u thay Ä‘á»•i so vá»›i iPhone 7 Plus nhÆ°ng</span><strong>&nbsp;iPhone 8 Plus 64Gb</strong><span style=\"color:#333333; font-family:Arial,Helvetica,sans-serif; font-size:16px\">&nbsp;láº¡i mang Ä‘áº¿n cáº£m gi&aacute;c tinh táº¿ sang trá»ng hÆ¡n ráº¥t nhiá»u.</span></p>\r\n', 13),
(53, 'Iphone 6 Plus 32GB', 'IP07', 123456, '636748771945393060_iPhone-Xs-Max-gold.png', '19', '<p><strong><span style=\"font-family:arial,helvetica,sans-serif\"><a href=\"https://fptshop.com.vn/dien-thoai/iphone-7-Plus\" rel=\"noopener\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: #18487a;\" target=\"_blank\">iPhone 7 Plus</a>&nbsp;dÆ°á»ng nhÆ° l&agrave; sáº£n pháº©m Ä‘Æ°á»£c Apple chÄƒm ch&uacute;t Ä‘á»ƒ vÆ°á»£t xa iPhone 7, trá»Ÿ th&agrave;nh sáº£n pháº©m ráº¥t Ä‘&aacute;ng Ä‘á»ƒ n&acirc;ng cáº¥p so vá»›i iPhone 6s Plus khi Ä‘Æ°á»£c n&acirc;ng cáº¥p th&ecirc;m camera k&eacute;p c&ugrave;ng chá»©c nÄƒng chá»¥p ch&acirc;n dung xo&aacute; ph&ocirc;ng cá»±c &quot;hot&quot;. Kh&ocirc;ng chá»‰ váº­y, n&acirc;ng cáº¥p Ä‘&aacute;ng gi&aacute; kh&aacute;c nhÆ° tá»‘c Ä‘á»™ xá»­ l&yacute; nhanh hÆ¡n, chá»‘ng nÆ°á»›c, bá»¥i, loa ngo&agrave;i sá»‘ng Ä‘á»™ng... Táº¥t cáº£ Ä‘&atilde; táº¡o n&ecirc;n má»™t sáº£n pháº©m h&agrave;ng Ä‘áº§u tuyá»‡t vá»i.</span></strong></p>\r\n', 1234),
(55, 'Iphone 6 32GB (2017)', 'IP09', 9990000, '636748771945393060_iPhone-Xs-Max-gold.png', '19', '<p><strong>Apple iPhone 6s Plus&nbsp;</strong><span style=\"color:#333333; font-family:arial,helvetica,sans-serif; font-size:16px\">l&agrave; chiáº¿c iPhone m&agrave;n h&igrave;nh lá»›n nháº¥t, cho ph&eacute;p ngÆ°á»i d&ugrave;ng l&agrave;m Ä‘Æ°á»£c nhiá»u viá»‡c hÆ¡n tr&ecirc;n kh&ocirc;ng gian rá»™ng lá»›n. Ngo&agrave;i ra, nhá»¯ng t&iacute;nh nÄƒng má»›i nhÆ° há»‡ Ä‘iá»u h&agrave;nh iOS 10, 3D Touch, Live Photos hay camera 12MP xuáº¥t sáº¯c sáº½ mang Ä‘áº¿n sá»± h&agrave;i l&ograve;ng nháº¥t cho báº¡n khi sá»­ dá»¥ng má»™t chiáº¿c smartphone thá»±c sá»± cao cáº¥p.</span></p>\r\n', 11),
(56, 'Iphone 7 32GB', 'IP10', 12990000, '636748771945393060_iPhone-Xs-Max-gold.png', '19', '<p><strong>Apple iPhone 7&nbsp;</strong><span style=\"color:#333333; font-family:arial,helvetica,sans-serif; font-size:16px\">l&agrave; chiáº¿c iPhone m&agrave;n h&igrave;nh lá»›n nháº¥t, cho ph&eacute;p ngÆ°á»i d&ugrave;ng l&agrave;m Ä‘Æ°á»£c nhiá»u viá»‡c hÆ¡n tr&ecirc;n kh&ocirc;ng gian rá»™ng lá»›n. Ngo&agrave;i ra, nhá»¯ng t&iacute;nh nÄƒng má»›i nhÆ° há»‡ Ä‘iá»u h&agrave;nh iOS 10, 3D Touch, Live Photos hay camera 12MP xuáº¥t sáº¯c sáº½ mang Ä‘áº¿n sá»± h&agrave;i l&ograve;ng nháº¥t cho báº¡n khi sá»­ dá»¥ng má»™t chiáº¿c smartphone thá»±c sá»± cao cáº¥p.</span></p>\r\n', 12),
(57, 'Oppo F7', 'OP01', 6990000, '636748771945393060_iPhone-Xs-Max-gold.png', '19', '<p><strong>OPPO F7</strong><span style=\"color:#333333; font-family:arial,helvetica,sans-serif; font-size:16px\">&nbsp;c&oacute; máº·t sau báº¯t máº¯t nhá» máº·t lÆ°ng k&iacute;nh táº¡o n&ecirc;n sá»± biáº¿n Ä‘á»•i &aacute;nh s&aacute;ng tá»« nhá»¯ng g&oacute;c nh&igrave;n kh&aacute;c nhau. Máº·t lÆ°ng cá»§a&nbsp;</span><strong>OPPO F7</strong><span style=\"color:#333333; font-family:arial,helvetica,sans-serif; font-size:16px\">&nbsp;vá»›i c&aacute;c g&oacute;c cáº¡nh Ä‘Æ°á»£c bo cong cÅ©ng sáº½ gi&uacute;p cho m&aacute;y &ocirc;m tay khi sá»­ dá»¥ng. Äá»“ng thá»i, pháº§n khung kim loáº¡i Ä‘Æ°á»£c gia c&ocirc;ng v&agrave; ho&agrave;n thiá»‡n tá»‰ má»‰, to&aacute;t l&ecirc;n má»™t váº» Ä‘áº¹p ráº¥t sang trá»ng.&nbsp;</span></p>\r\n', 0),
(58, 'Oppo A7 6GB', 'OP02', 5990000, '636748771945393060_iPhone-Xs-Max-gold.png', '19', '<p>M&agrave;n h&igrave;nh giá»t nÆ°á»›c</p>\r\n\r\n<p>Láº¥y cáº£m há»©ng tá»« thi&ecirc;n nhi&ecirc;n</p>\r\n\r\n<p>OPPO A7 sá»Ÿ há»¯u thiáº¿t káº¿ m&agrave;n h&igrave;nh giá»t nÆ°á»›c áº¥n tÆ°á»£ng, láº¥y cáº£m há»©ng tá»« h&igrave;nh áº£nh giá»t nÆ°á»›c Ä‘ang rÆ¡i trong tá»± nhi&ecirc;n. K&iacute;nh Corning glass vá»›i tá»· lá»‡ m&agrave;n h&igrave;nh 88,4% chá»‘ng tráº§y xÆ°á»›c v&agrave; mang láº¡i tráº£i nghiá»‡m h&igrave;nh áº£nh sá»‘ng Ä‘á»™ng hÆ¡n.</p>\r\n', 12),
(59, 'Oppo Find X', 'OP03', 20990000, '636674370943140636_oppofindX-1o.png', '21', '<p><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\"><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: #18487a;\" href=\"https://fptshop.com.vn/dien-thoai/oppo-find-x\" target=\"_blank\" rel=\"noopener\">OPPO Find X</a>&nbsp;l&agrave; chiáº¿c Ä‘iá»‡n thoáº¡i Ä‘áº§u ti&ecirc;n má»Ÿ ra kh&aacute;i niá»‡m m&agrave;n h&igrave;nh tr&agrave;n si&ecirc;u cá»±c á»Ÿ má»i g&oacute;c cáº¡nh. Sá»± Ä‘Æ¡n giáº£n Ä‘&atilde; l&ecirc;n ng&ocirc;i khi vá»›i m&agrave;n h&igrave;nh chiáº¿m to&agrave;n bá»™ máº·t trÆ°á»›c, báº¡n Ä‘&atilde; c&oacute; má»™t chiáº¿c Ä‘iá»‡n thoáº¡i ngá»¡ nhÆ° chá»‰ c&oacute; trong tÆ°Æ¡ng lai.</strong></p>', 0),
(60, 'Oppo A3s', 'OP04', 4690000, '636688079452561923_oppoA3s-1o-32gb.png', '21', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">M&agrave;n h&igrave;nh si&ecirc;u lá»›n 6,2 inch tr&agrave;n viá»n</strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Hiá»‡n táº¡i Ä‘ang l&agrave; ká»· nguy&ecirc;n cá»§a nhá»¯ng chiáº¿c Ä‘iá»‡n thoáº¡i m&agrave;n h&igrave;nh lá»›n. OPPO A3s sá»Ÿ há»¯u m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thÆ°á»›c lá»›n tá»›i 6,2 inch Ä‘Æ°á»£c thiáº¿t káº¿ theo dáº¡ng tr&agrave;n viá»n thá»i thÆ°á»£ng, cho báº¡n nhá»¯ng tráº£i nghiá»‡m tuyá»‡t vá»i. Tá»‰ lá»‡ m&agrave;n h&igrave;nh má»›i 19:9 mang Ä‘áº¿n nhiá»u ná»™i dung hÆ¡n khi lÆ°á»›t web, Ä‘á»c b&aacute;o v&agrave; kh&ocirc;ng gian rá»™ng lá»›n hÆ¡n khi xem phim hay chÆ¡i game.</p>', 0),
(61, 'Oppo F9 6GB', 'OP05', 16900000, '636719280799870088_oppof9-1o.png', '21', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">M&agrave;n h&igrave;nh &ldquo;giá»t nÆ°á»›c&rdquo; áº¥n tÆ°á»£ng</strong></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">OPPO Ä‘&atilde; mang Ä‘áº¿n má»™t kiá»ƒu m&agrave;n h&igrave;nh má»›i tr&ecirc;n OPPO F9, Ä‘&oacute; l&agrave; m&agrave;n h&igrave;nh &ldquo;giá»t nÆ°á»›c&rdquo;. Giá» Ä‘&acirc;y pháº§n khuyáº¿t tr&ecirc;n Ä‘á»‰nh m&agrave;n h&igrave;nh Ä‘&atilde; ráº¥t b&eacute;, Ä‘áº¹p hÆ¡n v&agrave; nhiá»u diá»‡n t&iacute;ch d&agrave;nh cho m&agrave;n h&igrave;nh hÆ¡n so vá»›i m&agrave;n h&igrave;nh &ldquo;tai thá»&rdquo; Ä‘ang phá»• biáº¿n hiá»‡n nay. K&iacute;ch thÆ°á»›c m&agrave;n h&igrave;nh OPPO F9 váº«n ráº¥t lá»›n vá»›i 6,3 inch, Ä‘á»™ ph&acirc;n giáº£i Full HD+ v&agrave; tá»‰ lá»‡ rá»™ng 19,5:9, thoáº£i m&aacute;i kh&ocirc;ng gian cho ngÆ°á»i d&ugrave;ng tráº£i nghiá»‡m. M&agrave;n h&igrave;nh &ldquo;giá»t nÆ°á»›c&rdquo; gi&uacute;p cho hiá»‡u á»©ng tr&agrave;n viá»n r&otilde; n&eacute;t hÆ¡n, tráº£i nghiá»‡m xem tuyá»‡t vá»i hÆ¡n. OPPO tá»± tin cho biáº¿t tá»‰ lá»‡ m&agrave;n h&igrave;nh tr&ecirc;n máº·t trÆ°á»›c cá»§a OPPO F9 l&ecirc;n tá»›i 90,8%.</p>', 0),
(62, 'Oppo F5 6GB', 'OP06', 5990000, '636477374020634172_1o.png', '21', '<p><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">OPPO F5 6 GB</strong><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;khá»Ÿi Ä‘áº§u xu hÆ°á»›ng m&agrave;n h&igrave;nh tr&agrave;n viá»n tr&ecirc;n d&ograve;ng Ä‘iá»‡n thoáº¡i OPPO vá»›i c&aacute;c cáº¡nh m&aacute;y á»Ÿ máº·t trÆ°á»›c Ä‘Æ°á»£c l&agrave;m má»ng, gá»n cho tráº£i nghiá»‡m sá»­ dá»¥ng ho&agrave;n to&agrave;n má»›i v&agrave; kh&aacute;c biá»‡t so vá»›i phong c&aacute;ch truyá»n thá»‘ng. Váº«n l&agrave; sá»± sang trá»ng v&agrave; Ä‘áº§y t&iacute;nh thá»i trang trong thiáº¿t káº¿ cá»§a OPPO,&nbsp;kho&aacute;c l&ecirc;n m&igrave;nh c&aacute;c Ä‘Æ°á»ng n&eacute;t Ä‘áº§y tinh táº¿ v&agrave; quyáº¿n rÅ©. Äá»“ng thá»i cÅ©ng ráº¥t má»ng v&agrave; vá» nhá»±a nháº¹ nh&agrave;ng. Máº·t trÆ°á»›c phá»§ k&iacute;nh cÆ°á»ng lá»±c vá»›i phong c&aacute;ch vuá»‘t cong 2.5D thá»i thÆ°á»£ng. C&aacute;c g&oacute;c cáº¡nh Ä‘Æ°á»£c bo cong cáº§m náº¯m dá»… d&agrave;ng.</span></p>', 0),
(63, 'Oppo F7 Youth', 'OP07', 5490000, '636632055677716817_1o.png', '21', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">C&ocirc;ng nghá»‡ AI Beauty 2.0, chuy&ecirc;n gia trang Ä‘iá»ƒm d&agrave;nh ri&ecirc;ng cho báº¡n</strong></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">OPPO F7 Youth sá»Ÿ há»¯u camera trÆ°á»›c Ä‘á»™ ph&acirc;n giáº£i 8MP vá»›i c&ocirc;ng nghá»‡ l&agrave;m Ä‘áº¹p khu&ocirc;n máº·t ti&ecirc;n tiáº¿n nháº¥t hiá»‡n nay l&agrave; AI Beauty 2.0. Tr&iacute; th&ocirc;ng minh nh&acirc;n táº¡o sáº½ nhÆ° chuy&ecirc;n gia l&agrave;m Ä‘áº¹p d&agrave;nh ri&ecirc;ng cho báº¡n khi nháº­n diá»‡n 296 Ä‘iá»ƒm Ä‘áº·c trÆ°ng tr&ecirc;n khu&ocirc;n máº·t v&agrave; l&agrave;m Ä‘áº¹p má»™t c&aacute;ch tá»‰ má»‰, Ä‘á»ƒ báº¡n xuáº¥t hiá»‡n vá»›i váº» Ä‘áº¹p tá»± nhi&ecirc;n nháº¥t.</p>', 0),
(64, 'Sony Xperia XA1', 'SN01', 3990000, 'XA1.png', '22', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\">Giáº£i tr&iacute; báº¥t táº­n vá»›i m&agrave;n h&igrave;nh kh&ocirc;ng viá»n v&agrave; &acirc;m thanh cháº¥t lÆ°á»£ng cao</span></span></strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Báº¡n sáº½ ngay láº­p tá»©c áº¥n tÆ°á»£ng vá»›i m&agrave;n h&igrave;nh kh&ocirc;ng viá»n cáº¡nh cá»§a Sony XA1 Plus. Hai cáº¡nh b&ecirc;n m&aacute;y gáº§n nhÆ° kh&ocirc;ng c&oacute; viá»n, káº¿t há»£p vá»›i k&iacute;ch thÆ°á»›c lá»›n 5,5 inch Ä‘á»™ ph&acirc;n giáº£i Full HD si&ecirc;u n&eacute;t, sáº½ cho báº¡n tráº£i nghiá»‡m m&agrave;n h&igrave;nh tuyá»‡t vá»i. Kh&ocirc;ng c&oacute; chiáº¿c smartphone táº§m trung n&agrave;o hiá»‡n nay c&oacute; m&agrave;n h&igrave;nh kh&ocirc;ng viá»n áº¥n tÆ°á»£ng nhÆ° XA1 Plus, v&agrave; Ä‘&acirc;y cÅ©ng l&agrave; Ä‘iá»ƒm thu h&uacute;t nháº¥t cá»§a sáº£n pháº©m n&agrave;y.&nbsp;</p>', 0),
(65, 'Sony Xperia L2', 'SN02', 2990000, 'L2.png', '22', '<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Sony Xperia L2 Ä‘Æ°á»£c t&iacute;ch há»£p vi&ecirc;n pin kh&aacute; lá»›n 3.300 mAh mang láº¡i thá»i gian sá»­ dá»¥ng pin l&acirc;u hÆ¡n. Äáº·c biá»‡t c&aacute;c c&ocirc;ng nghá»‡ sáº¡c th&ocirc;ng minh gi&uacute;p pin lu&ocirc;n Ä‘áº¡t hiá»‡u suáº¥t tá»‘t v&agrave; c&oacute; tuá»•i thá» d&agrave;i hÆ¡n. T&iacute;nh nÄƒng chÄƒm s&oacute;c pin sáº½ sáº¡c Ä‘iá»‡n thoáº¡i Ä‘áº¿n 90%, chá», sau Ä‘&oacute; sáº¡c tiáº¿p Ä‘áº¿n 100% ngay trÆ°á»›c giá» báº¡n thá»©c dáº­y. Nhá» Ä‘&oacute;, pin sáº½ lu&ocirc;n Ä‘áº¡t má»©c dung lÆ°á»£ng tá»‘i Ä‘a d&ugrave; tráº£i qua nhiá»u láº§n sáº¡c hÆ¡n.</span></p>', 0),
(66, 'SamSung Galaxy A6', 'SS01', 7490000, 'A6+.png', '20', '<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Samsung A6 Plus Ä‘Æ°á»£c ho&agrave;n thiá»‡n báº±ng bá»™ khung kim loáº¡i nguy&ecirc;n khá»‘i giá»‘ng nhÆ° ngÆ°á»i anh em Galaxy A6 cá»§a m&igrave;nh nhÆ°ng vá»›i k&iacute;ch thÆ°á»›c lá»›n hÆ¡n v&agrave; Ä‘Æ°á»£c bo cong Ä‘á»u á»Ÿ c&aacute;c g&oacute;c cáº¡nh gi&uacute;p mang láº¡i váº» tinh táº¿ cho sáº£n pháº©m cÅ©ng nhÆ° mang Ä‘áº¿n nhá»¯ng tráº£i nghiá»‡m cáº§m náº¯m thoáº£i m&aacute;i nháº¥t. Nhá» c&oacute; viá»n bezels Ä‘Æ°á»£c l&agrave;m má»ng Ä‘i Ä‘&aacute;ng ká»ƒ n&ecirc;n h&agrave;ng ph&iacute;m Ä‘iá»u hÆ°á»›ng Ä‘&atilde; Ä‘Æ°á»£c di chuyá»ƒn v&agrave;o ph&iacute;a b&ecirc;n trong m&agrave;n h&igrave;nh nhá» Ä‘&oacute; m&agrave; m&aacute;y sáº½ c&oacute; má»™t diá»‡n máº¡o ph&ugrave; há»£p vá»›i xu hÆ°á»›ng hÆ¡n.</span></p>', 0),
(67, 'SamSung Galaxy A7', 'SS02', 7690000, 'A7.jpg', '20', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Báº¡n l&agrave;m Ä‘Æ°á»£c g&igrave; vá»›i 3 camera?</strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Samsung Galaxy A7 2018 Ä‘Æ°á»£c trang bá»‹ tá»›i 3 cáº£m biáº¿n camera sau vá»›i 3 vai tr&ograve; kh&aacute;c nhau. Camera 24MP sáº½ c&oacute; Ä‘&oacute;ng vai tr&ograve; chá»¥p áº£nh ch&iacute;nh, camera phá»¥ 5MP Ä‘o Ä‘á»™ s&acirc;u trÆ°á»ng áº£nh há»— trá»£ chá»¥p áº£nh ch&acirc;n dung x&oacute;a ph&ocirc;ng v&agrave; camera g&oacute;c si&ecirc;u rá»™ng 8MP. Sá»± káº¿t há»£p tá»« 3 camera n&agrave;y mang Ä‘áº¿n cho báº¡n ráº¥t nhiá»u á»©ng dá»¥ng Ä‘a dáº¡ng trong c&aacute;c bá»‘i cáº£nh chá»¥p kh&aacute;c nhau. Äáº·c biá»‡t, camera g&oacute;c si&ecirc;u rá»™ng thu Ä‘Æ°á»£c cáº£nh rá»™ng gáº¥p Ä‘&ocirc;i so vá»›i th&ocirc;ng thÆ°á»ng, Ä‘á»ƒ báº¡n chá»¥p nhá»¯ng bá»©c áº£nh phong cáº£nh má»™t c&aacute;ch tháº­t dá»… d&agrave;ng.</p>', 0),
(68, 'SamSung Galaxy A8', 'SS03', 10990000, 'A8.jpg', '20', '<p><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Bá»™ Ä‘&ocirc;i&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: #18487a;\" href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-a8-2018\" target=\"_blank\" rel=\"noopener\">Samsung A8 2018</a>&nbsp;v&agrave;&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: #18487a;\" href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-a8-plus-2018\" target=\"_blank\" rel=\"noopener\">Galaxy A8+ 2018</a>&nbsp;ch&iacute;nh thá»©c tr&igrave;nh l&agrave;ng vá»›i kháº£ nÄƒng selfie k&eacute;p, c&ugrave;ng m&agrave;n h&igrave;nh tá»· lá»‡ 18.5: 9 cho tráº£i nghiá»‡m xem rá»™ng hÆ¡n. Vá»›i thiáº¿t káº¿ hiá»‡n Ä‘áº¡i, há»©a háº¹n bá»™ Ä‘&ocirc;i sáº£n pháº©m n&agrave;y sáº½ tiáº¿p bÆ°á»›c sá»± th&agrave;nh c&ocirc;ng cá»§a Samsung táº¡i thá»‹ trÆ°á»ng Viá»‡t Nam.</strong></p>', 0),
(69, 'SamSung Galaxy J8', 'SS04', 6290000, 'j8.png', '20', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Camera k&eacute;p chinh phá»¥c b&oacute;ng tá»‘i, x&oacute;a ph&ocirc;ng nghá»‡ thuáº­t</strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Galaxy J8 cháº¯c cháº¯n l&agrave; chiáº¿c Ä‘iá»‡n thoáº¡i c&oacute; camera Ä‘&aacute;ng gá»m nháº¥t trong ph&acirc;n kh&uacute;c, Ä‘áº·c biá»‡t l&agrave; kháº£ nÄƒng chá»¥p Ä‘&ecirc;m khi mang tr&ecirc;n m&igrave;nh cá»¥m camera k&eacute;p th&ocirc;ng sá»‘ v&ocirc; c&ugrave;ng cháº¥t lÆ°á»£ng. Hai cáº£m biáº¿n camera sau 16MP f/1.7 + 5MP f/1.9 Ä‘á»u c&oacute; kháº©u Ä‘á»™ cá»±c lá»›n, thu s&aacute;ng tá»‘t trong cáº£ nhá»¯ng Ä‘iá»u kiá»‡n kháº¯c nghiá»‡t, mang Ä‘áº¿n cho báº¡n nhá»¯ng bá»©c áº£nh chá»¥p Ä‘&ecirc;m tuyá»‡t vá»i.</p>', 0),
(70, 'SamSung Galaxy Note 8', 'SS05', 19990000, 'note 8.png', '20', '<p><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Náº¿u Ä‘&atilde; tá»«ng sá»­ dá»¥ng series Galaxy Note cá»§a Samsung, báº¡n cháº¯c cháº¯n sáº½ kh&ocirc;ng thá»ƒ bá» qua si&ecirc;u pháº©m láº§n n&agrave;y. So vá»›i trÆ°á»›c kia,&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: #18487a;\" href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-note-8\" target=\"_blank\" rel=\"noopener\">Note 8</a>&nbsp;sá»Ÿ há»¯u c&aacute;c Ä‘áº·c t&iacute;nh chÆ°a tá»«ng xuáº¥t hiá»‡n, cháº³ng háº¡n camera k&eacute;p, b&uacute;t S-Pen há»— trá»£ h&agrave;ng loáº¡t thao t&aacute;c nhanh, dock DeX cho c&ocirc;ng viá»‡c cÅ©ng nhÆ° Ä‘Æ°á»£c kiá»ƒm Ä‘á»‹nh cá»±c gáº¯t gao nháº±m Ä‘áº£m báº£o tá»‘i Ä‘a sá»± an to&agrave;n cho kh&aacute;ch h&agrave;ng.</strong></p>', 0),
(71, 'SamSung Galaxy Note 9 512GB', 'SS06', 28490000, 'note 9 512.png', '20', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Trá»£ l&yacute; Ä‘áº¯c lá»±c S Pen</strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">S Pen tr&ecirc;n Galaxy Note 9 512GB kh&ocirc;ng chá»‰ mang láº¡i cáº£m gi&aacute;c ghi ch&uacute;, viáº¿t váº½ nhÆ° tháº­t m&agrave; n&oacute; c&ograve;n c&oacute; ráº¥t nhiá»u t&iacute;nh nÄƒng há»¯u &iacute;ch. Láº§n Ä‘áº§u ti&ecirc;n S Pen Ä‘Æ°á»£c káº¿t ná»‘i Bluetooth vá»›i Note 9. Nhá» tháº¿ báº¡n c&oacute; thá»ƒ Ä‘iá»u khiá»ƒn nháº¡c, chá»¥p áº£nh tá»« xa, Ä‘iá»u khiá»ƒn b&agrave;i thuyáº¿t tr&igrave;nh v&agrave; nhiá»u t&aacute;c vá»¥ th&ocirc;ng minh kh&aacute;c báº±ng S Pen. S Pen sáº½ l&agrave; ngÆ°á»i trá»£ l&yacute; Ä‘áº¯c lá»±c cho báº¡n Ä‘á»ƒ thá»±c hiá»‡n nhá»¯ng thao t&aacute;c nhanh v&agrave; tiá»‡n lá»£i chá»‰ c&oacute; á»Ÿ Note9.</p>', 0),
(72, 'SamSung Galaxy Note PE', 'SS07', 12990000, 'note Pe.jpg', '20', '<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">M&agrave;n h&igrave;nh Super AMOLED 5.7 inch Ä‘á»™ ph&acirc;n giáº£i 2K, vi xá»­ l&yacute; t&aacute;m l&otilde;i Exynos 8890, GPU Mali-T880MP12, RAM 4GB c&ugrave;ng bá»™ nhá»› trong 64GB. Camera ch&iacute;nh 12MP f/1.7 OIS DualPixel; camera trÆ°á»›c 5MP f/1.7, ngo&agrave;i&nbsp; ra, m&aacute;y Ä‘Æ°á»£c c&agrave;i sáºµn Android 7.0. Galaxy Note FE kh&ocirc;ng há» k&eacute;m cáº¡nh c&aacute;c flagship nÄƒm nay vá» má»i máº·t &ndash; ká»ƒ cáº£ khi so vá»›i ch&iacute;nh bá»™ Ä‘&ocirc;i Galaxy S8/S8 Plus.</span></p>', 0),
(73, 'SamSung Galaxy S8 Plus', 'SS08', 17990000, 's8 plus.png', '20', '<p><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: none; text-decoration-line: none; color: #18487a; font-family: Arial, Helvetica, sans-serif; text-align: justify;\" href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s8-plus\" target=\"_blank\" rel=\"noopener\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; color: #0000ff;\">Samsung S8 Plus</span></a><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;ra máº¯t Ä‘&atilde; l&agrave;m h&agrave;i l&ograve;ng giá»›i c&ocirc;ng nghá»‡ láº«n ngÆ°á»i ti&ecirc;u d&ugrave;ng h&acirc;m má»™ h&atilde;ng Ä‘iá»‡n thoáº¡i danh tiáº¿ng Ä‘áº¿n tá»« H&agrave;n Quá»‘c &ndash; Samsung. Thiáº¿t káº¿ c&oacute; thá»ƒ chÆ°a Ä‘Æ°á»£c xem l&agrave; Ä‘á»™t ph&aacute; ho&agrave;n to&agrave;n nhÆ°ng ngay tá»« c&aacute;i nh&igrave;n Ä‘áº§u ti&ecirc;n Ä‘&atilde; mang láº¡i cáº£m x&uacute;c th&aacute;n phá»¥c bá»Ÿi sá»± sáº¯c sáº£o, tinh táº¿ Ä‘áº¿n tá»« chi tiáº¿t v&agrave; má»™t m&agrave;n h&igrave;nh cong tr&agrave;n cáº¡nh &ldquo;kh&ocirc;ng viá»n&rdquo; Ä‘&aacute;ng ngáº¡c nhi&ecirc;n. K&egrave;m theo l&agrave; nhiá»u t&iacute;nh nÄƒng Ä‘áº·c biá»‡t th&uacute; vá»‹ nháº±m n&acirc;ng cao tráº£i nghiá»‡m cho ngÆ°á»i d&ugrave;ng. S8 Plus há»©a háº¹n sáº½ mang láº¡i sá»± th&agrave;nh c&ocirc;ng má»›i cho Samsung trong nÄƒm nay.</span></p>', 0),
(74, 'SamSung Galaxy S8', 'SS09', 15990000, 's8.png', '20', '<p><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Galaxy S8 Ä‘Æ°á»£c dá»± Ä‘o&aacute;n l&agrave; má»™t si&ecirc;u pháº©m m&agrave; Samsung sáº½ giá»›i thiá»‡u Ä‘áº¿n ngÆ°á»i d&ugrave;ng trong thá»i gian gáº§n nháº¥t. Theo nhÆ° h&igrave;nh áº£nh cá»§a sáº£n pháº©m má»›i Ä‘Æ°á»£c h&eacute; lá»™,&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: #18487a;\" href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s8\" target=\"_blank\" rel=\"noopener\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; color: #0000cd;\">Samsung S8</span></a>&nbsp;sáº½ sá»Ÿ há»¯u má»™t thiáº¿t káº¿ áº¥n tÆ°á»£ng, hiá»‡u nÄƒng cá»±c ká»³ máº¡nh máº½ v&agrave; tiáº¿t kiá»‡m nÄƒng lÆ°á»£ng, camera sáº¯c n&eacute;t c&ugrave;ng m&agrave;n h&igrave;nh Infinity Display, há»©a háº¹n sáº½ trá»Ÿ th&agrave;nh má»™t Ä‘á»‘i thá»§ Ä‘&aacute;ng gá»m tr&ecirc;n thá»‹ trÆ°á»ng smartphone nÄƒm 2017.</strong></p>', 0),
(75, 'SamSung Galaxy S9 128GB', 'SS10', 24490000, 'S9 128.png', '20', '<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">M&agrave;n h&igrave;nh 6.2 inch tr&ecirc;n&nbsp;</span><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Samsung&nbsp;Galaxy S9+ 128 GB</strong><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;c&oacute; Ä‘á»™ ph&acirc;n giáº£i 2K+, sá»­ dá»¥ng táº¥m ná»n Super AMOLED há»— trá»£ HDR. Má»i chi tiáº¿t tr&ecirc;n h&igrave;nh áº£nh hay video Ä‘á»u Ä‘Æ°á»£c t&aacute;i táº¡o sáº¯c n&eacute;t vá»›i m&agrave;u sáº¯c trung thá»±c, sá»‘ng Ä‘á»™ng nhÆ° Ä‘ang nh&igrave;n tháº¥y ngay trÆ°á»›c máº¯t. Ngo&agrave;i ra&nbsp;</span><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Galaxy S9+ 128 GB</strong><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;t&iacute;ch há»£p chuáº©n kh&aacute;ng bá»¥i &ndash; kh&aacute;ng nÆ°á»›c IP68, gi&uacute;p báº¡n thoáº£i m&aacute;i nghe nháº¡c b&ecirc;n há»“ bÆ¡i, nháº­n cuá»™c gá»i giá»¯a trá»i mÆ°a v&agrave; y&ecirc;n t&acirc;m khi cháº³ng may l&agrave;m rÆ¡i m&aacute;y xuá»‘ng nÆ°á»›c.</span></p>', 0),
(76, 'SamSung Galaxy S9+', 'SS11', 24490000, 's9 128+.png', '20', '<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">M&agrave;n h&igrave;nh 6.2 inch tr&ecirc;n&nbsp;</span><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Samsung&nbsp;Galaxy S9+ 128 GB</strong><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;c&oacute; Ä‘á»™ ph&acirc;n giáº£i 2K+, sá»­ dá»¥ng táº¥m ná»n Super AMOLED há»— trá»£ HDR. Má»i chi tiáº¿t tr&ecirc;n h&igrave;nh áº£nh hay video Ä‘á»u Ä‘Æ°á»£c t&aacute;i táº¡o sáº¯c n&eacute;t vá»›i m&agrave;u sáº¯c trung thá»±c, sá»‘ng Ä‘á»™ng nhÆ° Ä‘ang nh&igrave;n tháº¥y ngay trÆ°á»›c máº¯t. Ngo&agrave;i ra&nbsp;</span><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Galaxy S9+ 128 GB</strong><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;t&iacute;ch há»£p chuáº©n kh&aacute;ng bá»¥i &ndash; kh&aacute;ng nÆ°á»›c IP68, gi&uacute;p báº¡n thoáº£i m&aacute;i nghe nháº¡c b&ecirc;n há»“ bÆ¡i, nháº­n cuá»™c gá»i giá»¯a trá»i mÆ°a v&agrave; y&ecirc;n t&acirc;m khi cháº³ng may l&agrave;m rÆ¡i m&aacute;y xuá»‘ng nÆ°á»›c.</span></p>', 0),
(77, 'Nokia 7 Plus', 'NO01', 8240000, '7 plus.png', '23', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Thiáº¿t káº¿ Nokia 7 Plus h&ograve;a theo xu tháº¿ cá»§a thá»i Ä‘áº¡i vá»›i m&agrave;n h&igrave;nh tá»· lá»‡ 18:9 tr&agrave;n viá»n gi&uacute;p th&acirc;n m&aacute;y kh&ocirc;ng qu&aacute; to cho cáº£m gi&aacute;c cáº§m náº¯m dá»… chá»‹u, c&ograve;n pháº§n khung Ä‘Æ°á»£c l&agrave;m tá»« nh&ocirc;m tÄƒng th&ecirc;m t&iacute;nh sang trá»ng. Äáº·c biá»‡t, khi táº¯t m&aacute;y, pháº§n viá»n v&agrave; m&agrave;n h&igrave;nh nhÆ° h&ograve;a v&agrave;o c&ugrave;ng nhau, táº¡o n&ecirc;n má»™t khá»‘i liá»n máº¡ch á»Ÿ máº·t trÆ°á»›c, mang láº¡i má»™t váº» Ä‘áº¹p quyáº¿n rÅ©.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p>', 0),
(78, 'Nokia 6', 'NO02', 2990000, '6.png', '19', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: #18487a;\" href=\"https://fptshop.com.vn/dien-thoai/nokia-6\" target=\"_blank\" rel=\"noopener\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; color: #0000cd;\">Nokia 6</span></a>&nbsp;l&agrave; má»™t trong nhá»¯ng sáº£n pháº©m má»›i Ä‘Æ°á»£c HMD Global giá»›i thiá»‡u Ä‘áº¿n ngÆ°á»i d&ugrave;ng trong nÄƒm 2017 n&agrave;y. M&aacute;y sá»Ÿ há»¯u thiáº¿t káº¿ áº¥n tÆ°á»£ng, cháº¥t lÆ°á»£ng hiá»ƒn thá»‹ tá»‘t vá»›i m&agrave;n h&igrave;nh cáº£m á»©ng 5.5 inch, cáº¥u h&igrave;nh táº§m trung á»•n Ä‘á»‹nh, há»‡ thá»‘ng camera sáº¯c n&eacute;t v&agrave; nhiá»u t&iacute;nh nÄƒng vÆ°á»£t trá»™i kh&aacute;c, há»©a háº¹n sáº½ Ä‘em Ä‘áº¿n cho ngÆ°á»i d&ugrave;ng nhá»¯ng tráº£i nghiá»‡m tuyá»‡t vá»›i nháº¥t vá»›i Nokia 6.</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p>', 0),
(80, 'Nokia 6 32GB', 'NO04', 4890000, '6 32.png', '23', '<h3 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Sá»©c máº¡nh pháº§n cá»©ng áº¥n tÆ°á»£ng</strong></h3>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Nokia 6 má»›i Ä‘Æ°á»£c trang bá»‹ bá»™ vi xá»­ l&yacute; Snapdragon 630 má»›i cá»±c máº¡nh v&agrave; tiáº¿t kiá»‡m nÄƒng lÆ°á»£ng. Con chip n&agrave;y gi&uacute;p m&aacute;y xá»­ l&yacute; mÆ°á»£t m&agrave; v&agrave; chÆ¡i tá»‘t táº¥t cáº£ nhá»¯ng game náº·ng hiá»‡n nay. Äi c&ugrave;ng vá»›i Ä‘&oacute; l&agrave; 3GB RAM v&agrave; 32GB bá»™ nhá»› trong, Ä‘á»§ Ä‘á»ƒ báº¡n cháº¡y Ä‘a nhiá»‡m cÅ©ng nhÆ° lÆ°u trá»¯ má»i dá»¯ liá»‡u cáº§n thiáº¿t. Hiá»‡u nÄƒng Nokia 6 2018 máº¡nh hÆ¡n tá»›i 60% so vá»›i chiáº¿c Nokia 6 cÅ©.</p>', 0),
(81, 'Nokia 5.1 Plus', 'NO05', 4790000, '5.1 plus.png', '23', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Cáº£m nháº­n má»i thá»© ch&acirc;n thá»±c hÆ¡n</strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Báº¥t cá»© khi n&agrave;o xem phim, chÆ¡i game hay nháº¯n tin vá»›i báº¡n b&egrave;, m&agrave;n h&igrave;nh lá»›n 5,8 inch Ä‘á»™ ph&acirc;n giáº£i HD+ tr&ecirc;n Nokia 5.1 Plus Ä‘á»u mang Ä‘áº¿n cáº£m gi&aacute;c th&iacute;ch th&uacute;. M&agrave;n h&igrave;nh thiáº¿t káº¿ tr&agrave;n cáº¡nh, tá»‰ lá»‡ chuáº©n Ä‘iá»‡n áº£nh 19:9 cho tráº£i nghiá»‡m h&igrave;nh áº£nh Ä‘áº§y kh&aacute;c biá»‡t. Nhá»¯ng bá»™ phim hay c&aacute;c tá»±a game h&agrave;nh Ä‘á»™ng sáº½ trá»Ÿ n&ecirc;n háº¥p dáº«n hÆ¡n bao giá» háº¿t.</p>', 0),
(82, 'Nokia 3', 'NO06', 1990000, '3.png', '23', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Thiáº¿t káº¿ thá»i trang</strong></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Äiá»‡n thoáº¡i Nokia 3 Ä‘Æ°á»£c cháº¿ táº¡o tá»« nhá»±a polycarbonate káº¿t há»£p vá»›i khung nh&ocirc;m 6000 series cá»©ng c&aacute;p táº¡o n&ecirc;n sá»± Ä‘á»™c Ä‘&aacute;o trong thiáº¿t káº¿ v&agrave; cho ngÆ°á»i d&ugrave;ng cáº£m gi&aacute;c th&acirc;n thiá»‡n hÆ¡n. Äá»“ng thá»i, m&aacute;y cÅ©ng c&oacute; cháº¥t lÆ°á»£ng ho&agrave;n thiá»‡n ráº¥t tá»‘t, cho cáº£m gi&aacute;c cáº§m cháº¯c cháº¯n. Máº·t trÆ°á»›c Ä‘Æ°á»£c thiáº¿t káº¿ c&acirc;n Ä‘á»‘i, nhá»¯ng chi tiáº¿t nhÆ° logo Nokia hay 3 ph&iacute;m Ä‘iá»u hÆ°á»›ng Ä‘á»u Ä‘Æ°á»£c thiáº¿t káº¿ Ä‘áº¹p v&agrave; tinh táº¿.</p>', 0),
(83, 'Nokia 3.1 Plus', 'NO07', 2890000, '3.1 plus.png', '23', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Kiá»ƒu d&aacute;ng thanh lá»‹ch v&agrave; tinh táº¿</strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Xuáº¥t hiá»‡n vá»›i thiáº¿t káº¿ dáº¡ng thanh quen thuá»™c, nhÆ°ng Nokia 3.1 láº¡i ráº¥t thu h&uacute;t nhá» c&aacute;c Ä‘Æ°á»ng cong tinh táº¿, khung viá»n kim loáº¡i cháº¯c cháº¯n v&agrave; c&aacute;c Ä‘Æ°á»ng cáº¯t kim cÆ°Æ¡ng sáº¯c sáº£o. Pháº§n náº¯p lÆ°ng m&aacute;y Ä‘Æ°á»£c l&agrave;m tá»« nhá»±a Polycarbonate cao cáº¥p cá»±c bá»n v&agrave; cho cáº£m gi&aacute;c cáº§m náº¯m cháº¯c cháº¯n. Trong khi Ä‘&oacute; pháº§n m&agrave;n h&igrave;nh máº·t trÆ°á»›c cÅ©ng Ä‘Æ°á»£c v&aacute;t cong v&agrave; báº£o vá»‡ báº±ng k&iacute;nh cÆ°á»ng lá»±c Gorilla Glass 3 Ä‘á»ƒ táº¡o ra sá»± liá»n khá»‘i vá»¯ng cháº¯c, Ä‘áº§y tinh táº¿.</p>', 0);
INSERT INTO `tbl_product` (`id`, `name`, `masp`, `price`, `image`, `category`, `chitiet`, `soluong`) VALUES
(84, 'Nokia 2', 'NO08', 1790000, '2.png', '23', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Tá»±a nhÆ° nhá»¯ng ngÆ°á»i Ä‘&agrave;n anh Ä‘i trÆ°á»›c, Ä‘iá»‡n thoáº¡i Nokia 2 cÅ©ng sá»Ÿ há»¯u thiáº¿t káº¿ sang trá»ng vá»›i pháº§n khung nh&ocirc;m 6000 series Ä‘em láº¡i cáº£m gi&aacute;c ráº¥t cá»©ng c&aacute;p. Máº·t lÆ°ng nhá»±a c&oacute; thá»ƒ th&aacute;o rá»i Ä‘Æ°á»£c, máº·t trÆ°á»›c Nokia 2 Ä‘Æ°á»£c báº£o vá»‡ bá»Ÿi k&iacute;nh cÆ°á»ng lá»±c Corning Gorilla 3 gi&uacute;p ngÆ°á»i d&ugrave;ng cáº£m tháº¥y y&ecirc;n t&acirc;m hÆ¡n trong qu&aacute; tr&igrave;nh sá»­ dá»¥ng.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Äiá»u tuyá»‡t vá»i hÆ¡n l&agrave; Nokia 2 c&ograve;n t&iacute;ch há»£p th&ecirc;m kháº£ nÄƒng kh&aacute;ng nÆ°á»›c ti&ecirc;u chuáº©n IP52 gi&uacute;p ngÆ°á»i d&ugrave;ng c&agrave;ng th&ecirc;m y&ecirc;n t&acirc;m sá»­ dá»¥ng báº¥t cháº¥p thá»i tiáº¿t.</p>', 0),
(85, 'Nokia 2.1', 'NO09', 2590000, '2.1.png', '23', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">M&agrave;n h&igrave;nh lá»›n, tráº£i nghiá»‡m nhiá»u hÆ¡n</strong></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #333333; font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Nokia 2.1 má»›i mang Ä‘áº¿n cho báº¡n tráº£i nghiá»‡m xem nhiá»u hÆ¡n vá»›i m&agrave;n h&igrave;nh lá»›n 5,5 inch chuáº©n HD. Má»i ná»™i dung m&agrave; báº¡n y&ecirc;u th&iacute;ch Ä‘á»u Ä‘Æ°á»£c hiá»ƒn thá»‹ sá»‘ng Ä‘á»™ng, r&otilde; n&eacute;t v&agrave; trá»±c quan nhá» m&agrave;n h&igrave;nh ráº¥t lá»›n. D&ugrave; l&agrave; c&ocirc;ng viá»‡c hay giáº£i tr&iacute; th&igrave; kh&ocirc;ng gian rá»™ng lá»›n cÅ©ng gi&uacute;p báº¡n l&agrave;m má»i thá»© dá»… d&agrave;ng hÆ¡n.</p>', 0),
(90, 'Iphone Xr 256GB', '12', 16990000, 'xr.png', '19', '<p>aaaaaaaaaaa</p>\r\n', 0),
(91, 'Iphone Xr 256GB', '12', 12346800, 'xr.png', '19', '<p>ccccccccccc</p>\r\n', 0),
(93, 'Quang', '1', 12346800, '636614732659385631_iphone--8-red-1.png', '20', '<p>ccc</p>\r\n', 111),
(94, 'Nokia 3.1 Plus', '123', 2390000, '2.1.png', '24', '<p>11111111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&acirc;</p>\r\n', 12),
(95, 'SamSung Galaxy A6', '124', 1290000, 'A6+.png', '24', '<p>&acirc;cfaaaaaaaaaaaaaaa</p>\r\n', 20),
(96, 'SamSung Galaxy A8', '125', 7990000, 'A8.jpg', '24', '<p>gfggggggggggggggggg</p>\r\n', 20),
(98, 'iphoneX 512GB', 'IP20', 35000000, 'ipx.jpg', '19', '<h2><strong>Mua Ä‘iá»‡n thoáº¡i&nbsp;Apple iPhone Xs Max - 64GB (1 SIM) - LL/A ch&iacute;nh h&atilde;ng, gi&aacute; ráº» táº¡i Ho&agrave;ng H&agrave; Mobile</strong></h2>\r\n\r\n<p><strong>Sau nhiá»u ng&agrave;y chá» Ä‘á»£i th&igrave; cuá»‘i c&ugrave;ng&nbsp;<a href=\"https://hoanghamobile.com/apple-iphone-xs-max-64gb-1-sim-lla-p13448.html\">Ä‘iá»‡n thoáº¡i Apple iPhone Sx Max &ndash; 64GB (1SIM) &ndash; LL/A</a>&nbsp;cÅ©ng Ä‘&atilde; c&oacute; máº·t ch&iacute;nh thá»©c táº¡i thá»‹ trÆ°á»ng Viá»‡t Nam. Äáº·c biá»‡t, phi&ecirc;n báº£n chá»‰ c&oacute; má»©c gi&aacute; khoáº£ng 27 triá»‡u Ä‘á»“ng táº¡i Ho&agrave;ng H&agrave; Mobile &ndash; qu&aacute; &ldquo;thÆ¡m&rdquo; d&agrave;nh cho nhá»¯ng ngÆ°á»i d&ugrave;ng Ä‘ang muá»‘n sá»Ÿ há»¯u iPhone Xs Max.</strong></p>\r\n', 10),
(99, 'iphoneX 512GB', 'IP20', 35000000, 'ipx.jpg', '19', '<h3><strong>1. Thiáº¿t káº¿ kh&ocirc;ng láº«n v&agrave;o Ä‘&acirc;u cá»§a iPhone Xs Max</strong></h3>\r\n\r\n<p>Apple kh&ocirc;ng pháº£i l&agrave; nh&agrave; sáº£n xuáº¥t c&oacute; nhiá»u sá»± s&aacute;ng táº¡o trong thiáº¿t káº¿ qua c&aacute;c Ä‘á»i smartphone. Tuy nhi&ecirc;n nhá»¯ng chiáº¿c iPhone m&agrave; h&atilde;ng n&agrave;y táº¡o ra váº«n lu&ocirc;n c&oacute; má»™t n&eacute;t ri&ecirc;ng trong thiáº¿t káº¿ m&agrave; chá»‰ cáº§n nh&igrave;n sÆ¡ qua l&agrave; ch&uacute;ng ta Ä‘&atilde; biáº¿t Ä‘&oacute; l&agrave; iPhone.</p>\r\n\r\n<p><img alt=\"mua iPhone Xs Max 1 SIM\" src=\"https://hoanghamobile.com/Uploads/Originals/2018/11/15/201811151646433064_iPhone-Xs-Max-1-sim.png\" /></p>\r\n\r\n<p>Váº» ngo&agrave;i sang trá»ng cá»§a iPhone Xs Max</p>\r\n\r\n<p>ÄÆ°á»£c thá»«a hÆ°á»Ÿng tá»« thiáº¿t káº¿ cá»§a&nbsp;<a href=\"https://hoanghamobile.com/iphone-x-c2282.html\"><strong>iPhone X</strong></a>, iPhone Xs Max váº«n giá»¯ máº·t sau l&agrave; k&iacute;nh cÆ°á»ng lá»±c sang trá»ng, hiá»‡n Ä‘áº¡i c&ugrave;ng logo quáº£ t&aacute;o ná»•i báº­t.</p>\r\n\r\n<p>Äiá»ƒm kh&aacute;c biá»‡t lá»›n nháº¥t l&agrave; k&iacute;ch thÆ°á»›c m&aacute;y. D&ugrave; sá»Ÿ há»¯u m&agrave;n h&igrave;nh l&ecirc;n tá»›i 6.5 inch nhÆ°ng tá»•ng thá»ƒ m&aacute;y láº¡i chá»‰ ngang báº±ng vá»›i k&iacute;ch thÆ°á»›c cá»§a d&ograve;ng Plus m&agrave; th&ocirc;i.</p>\r\n\r\n<h3><strong>2. M&agrave;n h&igrave;nh OLED vá»›i cháº¥t lÆ°á»£ng hiá»ƒn thá»‹ tuyá»‡t vá»i</strong></h3>\r\n\r\n<p>iPhone Xs Max &ndash; 64GB (1SIM)-LL/A Ä‘Æ°á»£c Apple trang bá»‹ m&agrave;n h&igrave;nh lá»›n vá»›i táº¥m ná»n OLED káº¿t há»£p c&ugrave;ng c&ocirc;ng nghá»‡ Super Retina mang láº¡i cháº¥t lÆ°á»£ng hiá»ƒn thá»‹ cá»±c ká»³ sá»‘ng Ä‘á»™ng v&agrave; r&otilde; n&eacute;t.</p>\r\n\r\n<p>B&ecirc;n cáº¡nh Ä‘&oacute;, m&aacute;y cÅ©ng Ä‘Æ°á»£c t&iacute;ch há»£p th&ecirc;m c&ocirc;ng nghá»‡ HDR10 c&ugrave;ng táº§n sá»‘ qu&eacute;t 120 Hz gi&uacute;p cháº¥t lÆ°á»£ng h&igrave;nh áº£nh mÆ°á»£t m&agrave;, Ä‘á»¡ bá»‹ noise.</p>\r\n', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_sale`
--

CREATE TABLE `tbl_product_sale` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `masp` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `chitiet` text NOT NULL,
  `giamgia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_sale`
--

INSERT INTO `tbl_product_sale` (`id`, `name`, `masp`, `price`, `image`, `category`, `chitiet`, `giamgia`) VALUES
(1, 'iphoneX 512GB', 'IP21', 30000000, 'ipx.jpg', '19', '', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `name`, `email`, `phone`, `address`, `password`) VALUES
('admin', 'admin', 'admin@gmail.com', '0969018211', 'tphcm', 'admin'),
('quangkhai', 'Đặng Viết Quang Khải', 'quangkhai897@gmail.com', '0974560838', 'thành phố hồ chí minh', '170997');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product_sale`
--
ALTER TABLE `tbl_product_sale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `tbl_product_sale`
--
ALTER TABLE `tbl_product_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
