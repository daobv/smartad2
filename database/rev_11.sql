-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2014 at 02:42 AM
-- Server version: 5.5.37
-- PHP Version: 5.3.10-1ubuntu3.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smart_ad`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE IF NOT EXISTS `acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role_id` int(11) DEFAULT NULL,
  `control` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `activation_ip`
--

CREATE TABLE IF NOT EXISTS `activation_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `server_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `activation_ip`
--

INSERT INTO `activation_ip` (`id`, `ip`, `server_name`, `status`) VALUES
(1, '127.0.0.1', 'Localhost', 1);

-- --------------------------------------------------------

--
-- Table structure for table `activation_log`
--

CREATE TABLE IF NOT EXISTS `activation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `activation_log`
--

INSERT INTO `activation_log` (`id`, `ip`, `hash_code`, `date`) VALUES
(1, '127.0.0.1', 'ulqtpn1z6z', '2014-10-23 17:38:21'),
(2, '127.0.0.1', 'fbw0x1u093', '2014-10-29 10:17:16'),
(3, '127.0.0.1', 'fbw0x1u093', '2014-10-29 10:17:40'),
(4, '127.0.0.1', 'fbw0x1u093', '2014-10-29 10:17:56'),
(5, '127.0.0.1', 'fbw0x1u093', '2014-10-29 10:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `adv_apperance`
--

CREATE TABLE IF NOT EXISTS `adv_apperance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `adv_apperance`
--

INSERT INTO `adv_apperance` (`id`, `name`, `image`) VALUES
(1, 'APK', 'fa fa-android'),
(2, 'Google Play', 'fa fa-android'),
(3, 'Apple Store', 'fa fa-apple'),
(4, 'IPA', 'fa fa-apple');

-- --------------------------------------------------------

--
-- Table structure for table `adv_status`
--

CREATE TABLE IF NOT EXISTS `adv_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `adv_status`
--

INSERT INTO `adv_status` (`id`, `code`, `name`) VALUES
(1, 'testing', 'Đang Test'),
(2, 'hold', 'Tạm Ngưng'),
(3, 'runing', 'Đang Chạy'),
(4, 'timeout', 'Hết Hạn');

-- --------------------------------------------------------

--
-- Table structure for table `adv_type`
--

CREATE TABLE IF NOT EXISTS `adv_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `adv_type`
--

INSERT INTO `adv_type` (`id`, `name`) VALUES
(1, 'CPI'),
(2, 'CPL'),
(3, 'CPS');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `adv_type` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `appearance_id` int(11) NOT NULL,
  `area` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `policy` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `registered_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `name`, `app_code`, `slug`, `image`, `short_description`, `adv_type`, `platform_id`, `appearance_id`, `area`, `from`, `to`, `status_id`, `content`, `policy`, `link`, `file_url`, `price`, `size`, `registered_date`) VALUES
(3, 'Uc Browser', 'ucweb', 'uc-browser', 'http://smartad.vn/uploads/ucbrowser/logo.png', '<p>Phần mềm tr&igrave;nh duyệt web cho điện thoại di động, hỗ trợ java tiếng việt, download miễn ph&iacute; về điện thoại</p>', 1, 1, 2, 'Vietnam', '2014-10-29 00:00:00', '2014-11-29 00:00:00', 3, '<p>UC Browser đem lại cho bạn trải nghiệm lướt web nhanh v&agrave; mượt. UC Browser đưa ra c&aacute;c cấu h&igrave;nh truy cập kh&aacute;c nhau dựa tr&ecirc;n kết nối mạng gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng điều chỉnh việc duyệt web theo sở th&iacute;ch c&aacute; nh&acirc;n, giảm chi ph&iacute; dữ liệu v&agrave; tăng tốc độ tải trang web với sức n&eacute;n mạnh.</p>\r\n<p><span><strong>C&aacute;c t&iacute;nh năng:</strong><br />1. AutoPager<br />Đem lại cho bại trải nghiệm đọc xuy&ecirc;n suốt bằng c&aacute;ch tự động tải trang tiếp theo khi bạn duyệt đến cuối trang web hiện tại. Hiệu quả tr&ecirc;n phi&ecirc;n bản nhẹ của c&aacute;c trang nổi tiếng như Google, Twitter, Facebook v&agrave; hơn thế nữa.<br />2. Chế Độ Tăng Tốc II<br />Phi&ecirc;n bản n&acirc;ng cấp của chế độ Tăng Tốc sẽ chọn v&agrave; tr&igrave;nh b&agrave;y phi&ecirc;n bản ph&ugrave; hợp nhất của website t&ugrave;y theo kết nối mạng.<br />3. Tăng Tốc Download<br />Cải thiện trạng th&aacute;i kết nối mạng để tăng gấp bội tốc độ tải<br />4. Tải Ảnh Từ Facebook<br />Bạn c&oacute; thể tải những h&igrave;nh ảnh ưa th&iacute;ch từ Facebook về điện thoại<br />5. Tr&igrave;nh Duyệt H&agrave;ng Đầu, Giờ Đ&acirc;y C&ograve;n Tốt Hơn<br />Cải tiến hầu hết c&aacute;c chức năng v&agrave; tối ưu h&oacute;a để đem lại cho bạn một tốc độ nhanh hơn với độ ổn định cao hơn.<br />6. Trung T&acirc;m Ứng Dụng Web<br />Dễ d&agrave;ng t&igrave;m những ứng dụng web tốt nhất để việc trải nghiệm cuộc sống số tr&ecirc;n điện thoại kh&ocirc;ng c&ograve;n bị ảnh hưởng từ việc thường xuy&ecirc;n phải download, c&agrave;i đặt v&agrave; n&acirc;ng cấp.<br />7. Image Viewer<br />Mọi h&igrave;nh ảnh từ trang web đang duyệt được đặt c&ugrave;ng một nơi, như một quyển album.<br />8. UC Desktop Widget <br />Sử dụng tiện &iacute;ch n&agrave;y để tạo một widget tr&ecirc;n m&agrave;n h&igrave;nh của bạn để truy cập dễ d&agrave;ng c&aacute;c tiện &iacute;ch phong ph&uacute; của UC.<br />9. Th&ecirc;m Nhiều Ng&ocirc;n Ngữ v&agrave; Ph&ocirc;ng Chữ<br />Hỗ trợ nhiều ng&ocirc;n ngũ v&agrave; ph&ocirc;ng chữ bao gồm Tamil, Telugu, Malayalam v&agrave; hơn thế nữa.<br />10. Cải Thiện Tổng Quan<br />Những cải tiến tr&ecirc;n c&aacute;c chức năng ch&iacute;nh như đ&aacute;nh văn bản, di chuyển về trước &amp; sau, điều chỉnh ph&ocirc;ng chữ, v.v...</span><strong>giải thưởng:</strong><span>*****Tr&igrave;nh duyệt tốt nhất cho di động 2011 theo About.com*****<br />*****Tr&igrave;nh duyệt tốt nhất cho Android 2012 theo About.com***** <br />- UC Browser tự h&agrave;o l&agrave; tr&igrave;nh duyệt phổ biến nhất tr&ecirc;n thế giới với hơn 400 triệu người d&ugrave;ng.</span><span><br />"T&oacute;m lại, UC Browser l&agrave; sản phẩm kết hợp t&iacute;nh năng vượt trội, thiết kế đơn giản, duyệt nhanh với danh mục v&agrave; bố tr&iacute; đẹp. Đ&oacute; l&agrave; những g&igrave; một tr&igrave;nh duyệt di động phải c&oacute;." - Androidzoom.com</span><span><br /> &ldquo;Tr&igrave;nh duyệt tốt nhất t&ocirc;i đ&atilde; từng sử dụng. T&ocirc;i đ&atilde; từng d&ugrave;ng Dolphin, Chrome, Firefox, Boat Browser v&agrave; Opera nhưng chỉ c&oacute; UC Browser mới l&agrave;m t&ocirc;i h&agrave;i l&ograve;ng với tốc độ tuyệt đỉnh.&rdquo; - Fuad - Th&aacute;ng 10, 2012 - Version 8.4.1</span></p>', '<p><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Bạn cần đọc kỹ &nbsp;"</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Ch&iacute;nh s&aacute;ch của sản phẩm</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">" trước khi triển khai để tiếp thị sản phẩm một c&aacute;ch hiệu quả cũng như tr&aacute;nh vi phạm những quy định về tiếp thị.&nbsp; &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />1.&nbsp;Loại h&igrave;nh sản phẩm</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Sản phẩm Ứng dụng&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">"UCBrowser"</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;thuộc loại sản phẩm&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">CPI.</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">ĐỊNH NGHĨA:&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">CPI (Cost per Install) -</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;Thanh to&aacute;n theo lượt c&agrave;i đặt: Người tiếp thị sẽ nhận được hoa hồng khi c&oacute; kh&aacute;ch h&agrave;ng thực hiện h&agrave;nh động tải v&agrave; c&agrave;i đặt ứng dụng, tải phần mềm, hoặc c&aacute;c loại nội dung số kh&aacute;c&nbsp;&nbsp;&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Đối với sản phẩm "UCBrowser",&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">một CPI được t&iacute;nh l&agrave; hợp lệ</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;khi người d&ugrave;ng điện thoại thực hiện th&agrave;nh c&ocirc;ng 03 bước sau:&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" /></strong></p>\r\n<ul style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">\r\n<li style="margin: 0px; padding: 0px; list-style: none;"><strong style="margin: 0px; padding: 0px;">Bước 1: Tải th&agrave;nh c&ocirc;ng ứng dụng&nbsp;</strong>UCBrowser<strong style="margin: 0px; padding: 0px;">&nbsp;từ link ph&acirc;n phối của Người tiếp thị</strong>&nbsp;</li>\r\n<li style="margin: 0px; padding: 0px; list-style: none;"><strong style="margin: 0px; padding: 0px;">Bước 2: C&agrave;i đặt th&agrave;nh c&ocirc;ng ứng dụng&nbsp;</strong>UCBrowser<strong style="margin: 0px; padding: 0px;">&nbsp;tr&ecirc;n điện thoại</strong>&nbsp;</li>\r\n<li style="margin: 0px; padding: 0px; list-style: none;"><strong style="margin: 0px; padding: 0px;">Bước 3:&nbsp;</strong><strong style="margin: 0px; padding: 0px;">Mở ứng dụng&nbsp;UCBrowser&nbsp;l&ecirc;n</strong>&nbsp;.&nbsp;</li>\r\n</ul>\r\n<p><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" />Lưu &yacute;:&nbsp;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Qu&aacute; tr&igrave;nh 03 bước tr&ecirc;n ho&agrave;n to&agrave;n&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">miễn ph&iacute;&nbsp;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">với người d&ugrave;ng.Thống k&ecirc; sẽ được update 30 ph&uacute;t/lần&nbsp; &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />2. Ch&iacute;nh s&aacute;ch tiếp thị chung</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Bạn cần đọc kĩ ch&iacute;nh s&aacute;ch tiếp thị của SmartAd tại:&nbsp;</span><a style="margin: 0px; padding: 0px; text-decoration: none; color: #006bd7; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" href="http://smartad.vn/dieu_khoan_dang_ky.html" rel="nofollow" target="_blank">http://smartad.vn/dieu_khoan_dang_ky.html</a><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;để tr&aacute;nh mắc phải những quy định cấm khi tiếp thị sản phẩm, tr&aacute;nh t&igrave;nh trạng kh&ocirc;ng nhận được hoa hồng do vi phạm quy định.&nbsp;&nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />3. Ch&iacute;nh s&aacute;ch tiếp thị của Nh&agrave; cung cấp</strong><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">- Nh&agrave; cung cấp chỉ ghi nhận một lượt c&agrave;i đặt tr&ecirc;n mỗi điện thoại Android, tức l&agrave; nếu một kh&aacute;ch h&agrave;ng tải,&nbsp;mở ứng dụng nhiều lần th&igrave; Người tiếp thị chỉ được t&iacute;nh doanh thu cho một c&agrave;i đặt.&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">- Người tiếp thị kh&ocirc;ng được t&iacute;nh doanh thu nếu Người d&ugrave;ng thực hiện qu&aacute; tr&igrave;nh&nbsp;tải, c&agrave;i đặt&nbsp;UCBrowser&nbsp;từ bất k&igrave; k&ecirc;nh n&agrave;o kh&aacute;c trước đ&oacute;. &nbsp; &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />4. Ch&iacute;nh s&aacute;ch về số lượng c&agrave;i đặt ứng dụng</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">- Nh&agrave; cung cấp sẽ mua một số lượng c&agrave;i đặt nhất định ứng dụng "UCBrowser". Khi đ&atilde; đủ số lượng c&agrave;i đặt th&agrave;nh c&ocirc;ng, sản phẩm sẽ chuyển sang trạng th&aacute;i "Tạm dừng", người d&ugrave;ng sẽ kh&ocirc;ng tải v&agrave; c&agrave;i đặt được ứng dụng từ link/ m&atilde; nh&uacute;ng của Người tiếp thị đ&atilde; triển khai tr&ecirc;n c&aacute;c k&ecirc;nh tiếp thị. SmartAd sẽ th&ocirc;ng b&aacute;o ngay cho Người tiếp thị để gỡ link/ m&atilde; nh&uacute;ng sản phẩm khỏi k&ecirc;nh tiếp thị của bạn &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />5. Thống k&ecirc;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Người tiếp thị c&oacute; thể theo d&otilde;i về số lượng Action v&agrave; doanh thu tr&ecirc;n phần "Thống k&ecirc;" trong t&agrave;i khoản.&nbsp; &nbsp;&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" />Số lượng Action th&agrave;nh c&ocirc;ng&nbsp;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">trả về được thống k&ecirc; sau khi người d&ugrave;ng ho&agrave;n th&agrave;nh 3 bước như n&ecirc;u tr&ecirc;n</span></p>', 'market://details?id=com.UCMobile.intl&referrer=utm_source%3Dchenky%2540smartadvngp%2523&hash_code={hashCode}', '', 4500, '3.5 M', '0000-00-00 00:00:00'),
(4, 'MoboMarket', 'mobomarket', 'mobomarket', 'http://smartad.vn/uploads/mobogenie/logo.png', 'MoboMarket chính là kho ứng dụng Android của chính bạn, giúp bạn tìm thấy những Games & Apps ngay tại quốc gia của mình,là sự lựa chọn hoàn hảo cho bạn!', 1, 1, 2, 'Việt Nam', '2014-11-01 00:00:00', '2014-11-30 00:00:00', 3, '<p><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Mobo Market Lite&nbsp;ch&iacute;nh l&agrave; thị trường Android của ch&iacute;nh bạn,&nbsp;gi&uacute;p bạn t&igrave;m thấy những Games &amp; Apps ngay tại quốc gia của m&igrave;nh,l&agrave; sự lựa chọn ho&agrave;n hảo cho bạn!&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">C&aacute;c t&iacute;nh năng<br />-Geotargeting: Nội dung Định vị dựa tr&ecirc;n hệ thống đẩy, gi&uacute;p bạn kh&aacute;m ph&aacute; phổ biến Games &amp; Apps xung quanh bạn;<br />-Dựa tr&ecirc;n sở th&iacute;ch: Ch&uacute;ng t&ocirc;i&nbsp;dự đo&aacute;n những ứng dụng bạn th&iacute;ch, gợi &yacute; cho bạn v&agrave; đưa đến cho bạn những Game &amp; Apps ph&ugrave; hợp với bạn nhất;<br />-Cập nhật h&agrave;ng ng&agrave;y: Gi&uacute;p bạn cập nhật với c&aacute;c xu hướng ứng dụng tr&ecirc;n thị trường;<br />-Tập trung v&agrave;o c&aacute;c ứng dụng h&agrave;ng đầu: Sẽ c&oacute; biểu đồ c&aacute;c App &amp; Game tốt nhất v&agrave; biết c&aacute;c App những người kh&aacute;c thường sử dụng;<br />-Bộ sưu tập App: Chọn c&aacute;c ứng dụng v&agrave; tr&ograve; chơi theo theo loại h&igrave;nh v&agrave; nội dung, như bộ sưu tập tr&ograve; chơi Gi&aacute;ng sinh;<br />-Quản l&yacute; App: Kiểm so&aacute;t ho&agrave;n to&agrave;n tr&ecirc;n tải, cập nhật, v&agrave; c&agrave;i đặt / gỡ bỏ c&aacute;c ứng dụng.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;Mục đ&iacute;ch của Moborobo Inc l&agrave; cung cấp c&aacute;c sản phẩm th&acirc;n thiện v&agrave; tiện &iacute;ch nhất cho người d&ugrave;ng.&nbsp;Mobo Market Lite&nbsp;&nbsp;l&agrave; bước tiếp theo trong việc cung cấp c&aacute;c ứng dụng c&oacute; t&iacute;nh tương t&aacute;c tốt hơn giữa c&aacute;c thiết&nbsp;bị Android v&agrave; m&aacute;y t&iacute;nh của người d&ugrave;ng. N&oacute; nhằm mục đ&iacute;ch thiết lập một loạt c&aacute;c phần mềm v&agrave; c&aacute;c ứng dụng thực sự hữu &iacute;ch v&agrave; t&ugrave;y biến theo nhu cầu của người d&ugrave;ng. Mobo Market Lite&nbsp;ch&iacute;nh l&agrave; thị trường Android của ch&iacute;nh bạn!</span></p>', '<p><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Bạn cần đọc kỹ &nbsp;"<strong>Ch&iacute;nh s&aacute;ch của sản phẩm</strong>" trước khi triển khai để tiếp thị sản phẩm một c&aacute;ch hiệu quả cũng như tr&aacute;nh vi phạm những quy định về tiếp thị.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Ch&uacute; &yacute;:&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Chấp nhận Action đến từ c&aacute;c nước sau: Việt Nam, Nga, Philippines, Israel, Jordan, Saudi Arabia, Brazil</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />1.&nbsp;Loại h&igrave;nh sản phẩm</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Sản phẩm Ứng dụng&nbsp;<strong>"</strong><strong>MoboMarket "</strong>&nbsp;thuộc loại sản phẩm&nbsp;<strong>CPI.</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />ĐỊNH NGHĨA:&nbsp;<strong>CPI (Cost per Install) -</strong>&nbsp;Thanh to&aacute;n theo lượt c&agrave;i đặt: Người tiếp thị sẽ nhận được hoa hồng khi c&oacute; kh&aacute;ch h&agrave;ng thực hiện h&agrave;nh động tải v&agrave; c&agrave;i đặt ứng dụng, tải phần mềm, hoặc c&aacute;c loại nội dung số kh&aacute;c</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Đối với sản phẩm "<strong>MoboMarket&nbsp;</strong>",&nbsp;<strong>một CPI được t&iacute;nh l&agrave; hợp lệ</strong>&nbsp;khi người d&ugrave;ng điện thoại thực hiện th&agrave;nh c&ocirc;ng 03 bước sau:</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Bước 1: Tải th&agrave;nh c&ocirc;ng ứng dụngMoboMarket&nbsp; từ link ph&acirc;n phối của Người tiếp thị</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bước 2: C&agrave;i đặt th&agrave;nh c&ocirc;ng ứng dụng MoboMarket&nbsp; tr&ecirc;n điện thoại</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br />Bước 3:&nbsp;</strong><strong>Mở ứng dụng MoboMarket&nbsp; l&ecirc;n</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br /><br />Lưu &yacute;:&nbsp;</strong>Qu&aacute; tr&igrave;nh 03 bước tr&ecirc;n ho&agrave;n to&agrave;n&nbsp;<strong>miễn ph&iacute;&nbsp;</strong>với người d&ugrave;ng.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Chấp nhận Action ở c&aacute;c nước:&nbsp;</strong><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Việt Nam, Nga, Philippines, Brazil,&nbsp;</strong><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Israel, Jordan,&nbsp;</strong><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Saudi Arabia<br /><br />2. Ch&iacute;nh s&aacute;ch tiếp thị chung</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bạn cần đọc kĩ ch&iacute;nh s&aacute;ch tiếp thị của SmartAd tại:&nbsp;<a href="http://smartad.vn/dieu_khoan_dang_ky.html" rel="nofollow" target="_blank">http://smartad.vn/dieu_khoan_dang_ky.html</a>&nbsp;để tr&aacute;nh mắc phải những quy định cấm khi tiếp thị sản phẩm, tr&aacute;nh t&igrave;nh trạng kh&ocirc;ng nhận được hoa hồng do vi phạm quy định.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />3. Ch&iacute;nh s&aacute;ch tiếp thị của Nh&agrave; cung cấp</strong><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp chỉ ghi nhận một lượt c&agrave;i đặt tr&ecirc;n mỗi điện thoại Android, tức l&agrave; nếu một kh&aacute;ch h&agrave;ng tải,&nbsp;mở ứng dụng nhiều lần th&igrave; Người tiếp thị chỉ được t&iacute;nh doanh thu cho một c&agrave;i đặt.&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Người tiếp thị kh&ocirc;ng được t&iacute;nh doanh thu nếu Người d&ugrave;ng thực hiện qu&aacute; tr&igrave;nh&nbsp;tải, c&agrave;i đặt&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">MoboMarket&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;từ bất k&igrave; k&ecirc;nh n&agrave;o kh&aacute;c trước đ&oacute;. &nbsp; &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />4. Ch&iacute;nh s&aacute;ch về số lượng c&agrave;i đặt ứng dụng</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp sẽ mua một số lượng c&agrave;i đặt nhất định ứng dụng "</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">MoboMarket&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">". Khi đ&atilde; đủ số lượng c&agrave;i đặt th&agrave;nh c&ocirc;ng, sản phẩm sẽ chuyển sang trạng th&aacute;i "Tạm dừng", người d&ugrave;ng sẽ kh&ocirc;ng tải v&agrave; c&agrave;i đặt được ứng dụng từ link/ m&atilde; nh&uacute;ng của Người tiếp thị đ&atilde; triển khai tr&ecirc;n c&aacute;c k&ecirc;nh tiếp thị. SmartAd sẽ th&ocirc;ng b&aacute;o ngay cho Người tiếp thị để gỡ link/ m&atilde; nh&uacute;ng sản phẩm khỏi k&ecirc;nh tiếp thị của bạn &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />5. Thống k&ecirc;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Người tiếp thị c&oacute; thể theo d&otilde;i về số lượng Action v&agrave; doanh thu tr&ecirc;n phần "Thống k&ecirc;" trong t&agrave;i khoản.&nbsp; &nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Hệ thống SmartAd cập nhật thống k&ecirc; về lượt c&agrave;i đặt&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">MoboMarket&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;(số lượng action) theo thời gian thực tức l&agrave; bất cứ action hợp lệ n&agrave;o đều xuất hiện l&ecirc;n thống k&ecirc; trong 5 ph&uacute;t sau đ&oacute;. &nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br /><br />Số lượng Action th&agrave;nh c&ocirc;ng&nbsp;</strong>trả về được thống k&ecirc; sau khi người d&ugrave;ng ho&agrave;n th&agrave;nh</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Do đ&oacute;, thống k&ecirc; action ch&iacute;nh thức (ở trạng th&aacute;i "Đ&atilde; duyệt") thường&nbsp;<strong>bằng hoặc thấp hơn</strong>&nbsp;thống k&ecirc; Action ở trạng th&aacute;i "Chờ duyệt" trước đ&oacute;. Tỉ lệ ch&ecirc;nh lệch&nbsp;t&ugrave;y thuộc v&agrave;o k&ecirc;nh v&agrave; c&aacute;ch thức Người tiếp thị triển khai.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /></p>', 'http://mtafftracking.com/tracking/?offer_id=5480&sub_pub=295480009501&hash_code={hashCode}', '', 3500, '4.5 MB', '2014-11-01 10:10:11');
INSERT INTO `application` (`id`, `name`, `app_code`, `slug`, `image`, `short_description`, `adv_type`, `platform_id`, `appearance_id`, `area`, `from`, `to`, `status_id`, `content`, `policy`, `link`, `file_url`, `price`, `size`, `registered_date`) VALUES
(5, '360 Security', '360security', '360-security', 'https://lh4.ggpht.com/bg4GfP6AbnvraDVwMCRdR-aS-W3JAiSbAX0WIoWRTtXnGQM2NZXu_YCo4zQRHIlzi3E=w300', '360 security là phần mềm diệt virus hiện đại nhất cho đến thời điểm này trên nền tảng Mobile - Android', 1, 1, 2, 'Việt Nam', '2014-11-02 00:00:00', '2014-11-30 00:00:00', 3, '<p><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" src="https://lh4.ggpht.com/BU3fB3UKiSzd4PMItDhHIdkhZ-WjvSiBM1i2P6roaOTJ_AmjaVnPIvozp7lk0jNI0Jc=h310" alt="" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;</span><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" title="Image: https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h310" src="https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h310" alt="" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;</span><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" title="Image: https://lh6.ggpht.com/RPFQAX3YmMo3DvfVSuz5u0KYTDF5GpRjbLc3w-A943a0p1vg-N0dWrYzAgJtimemnKo=h310" src="https://lh6.ggpht.com/RPFQAX3YmMo3DvfVSuz5u0KYTDF5GpRjbLc3w-A943a0p1vg-N0dWrYzAgJtimemnKo=h310" alt="" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;</span><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" title="Image: https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h900" src="https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h900" alt="" width="175" height="308" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Bảo vệ thiết bị di động của bạn với 360 Mobile Security, một ứng dụng bảo mật di động h&agrave;ng đầu được thiết kế để bảo vệ điện thoại Android khỏi những virus, phần mềm độc hại, lỗ hổng bảo mật mới nhất v&agrave; những nguy cơ lộ th&ocirc;ng tin c&aacute; nh&acirc;n. N&oacute; cũng c&oacute; t&iacute;nh năng dọn dẹp ứng ứng dụng chạy nền kh&ocirc;ng sử dụng v&agrave; tăng tốc điện thoại Android của bạn.</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Tải ứng dụng chống virus MIỄN PH&Iacute; v&agrave; t&igrave;m hiểu những g&igrave; m&agrave; 275 triệu người d&ugrave;ng đ&atilde; kh&aacute;m ph&aacute;.&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong>B&Aacute;O GIỚI N&Oacute;I G&Igrave;?</strong><br />★ &ldquo;It''s serenity-inducing design is bold but not overpowering&hellip; making it a serious contender as a mobile guardian service.&rdquo; -- Cnet<br />★ &ldquo;&hellip;found it to be quite stunning not only in terms of functionality, but also in its design and usability.&rdquo; -- Addictive Tips<br />★ &ldquo;OneOf The Best-Looking Free Security Tools Around&rdquo; &ndash; Makeuseof.com</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">360 Mobile Security rất nhẹ, nhanh v&agrave; kh&ocirc;ng c&oacute; quảng c&aacute;o. Chỉ cần một lần chạm bạn sẽ c&oacute; được hầu hết c&aacute;c t&iacute;nh năng bảo mật ti&ecirc;n tiến m&agrave; nhiều h&atilde;ng kh&aacute;c buộc bạn phải mua mới c&oacute; được.<br />------------------------------------------</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />T&Iacute;NH NĂNG V&Agrave; LỢI &Iacute;CH CH&Iacute;NH:</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Qu&eacute;t v&agrave; loại bỏ virus<br />Sử dụng động cơ chống virus 2 lớp để giữ hệ thống khỏi những mối nguy hiểm mới nhất với 360 QVS + c&ocirc;ng nghệ đ&aacute;m m&acirc;y</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Bảo vệ thời gian thực<br />Qu&eacute;t c&aacute;c ứng dụng đ&atilde; c&agrave;i v&agrave; tập tin apk tr&ecirc;n m&aacute;y trong thời gian thực khi gi&aacute;m s&aacute;t tiến tr&igrave;nh c&agrave;i đặt.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Privacy advisor (Cố vấn bảo mật)<br />Như một hướng dẫn vi&ecirc;n gi&uacute;p bạn c&oacute; đủ th&ocirc;ng tin cần thiết về ứng dụng đang truy cập dữ liệu của bạn.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Khắc phục lỗ hổng bảo mật<br />Ph&aacute;t hiện v&agrave; khắc phục c&aacute;c lỗ hổng bảo mật nằm trong thiết bị di động với những bản v&aacute; lỗi đ&atilde; được x&aacute;c nhận.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Dọn dẹp hệ thống<br />Qu&eacute;t v&agrave; đ&oacute;ng những ứng dụng kh&ocirc;ng cần thiết đang chạy dưới nền cũng như lược sử ri&ecirc;ng tư với một lần chạm duy nhất.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Cửa sổ nổi<br />Thay đổi thiết lập hệ thống v&agrave; tối ưu ho&aacute; thiết bị với một lần chạm, tất cả với t&iacute;nh năng ''cửa sổ n&ocirc;i'' mới của ch&uacute;ng t&ocirc;i.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Th&ocirc;ng b&aacute;o đa chức năng<br />Thanh th&ocirc;ng b&aacute;o trạng th&aacute;i của bạn giờ đ&acirc;y c&oacute; nhiều t&iacute;nh năng hơn. Đặt b&aacute;o thức, bật đ&egrave;n flash, đến m&agrave;n h&igrave;nh sử dụng gần nhất v&agrave; tăng tốc thiết bị ngay từ thanh th&ocirc;ng b&aacute;o. (D&agrave;nh cho Android 4.0 v&agrave; mới hơn)<br />------------------------------------------<br />360 Mobile Security - Antivirus đ&atilde; được chứng nhận bởi c&aacute;c tổ chức kiểm định b&ecirc;n thứ ba, bao gồm West Coast Labs, AV-Comparatives, AV-TEST, PC Security Labs, v&agrave; SKD Labs.<br />360 Mobile Security - Antivirus c&oacute; sẵn với những ng&ocirc;n ngữ sau: Tiếng Anh, Bồ Đ&agrave;o Nha (Brazil), Bồ Đ&agrave;o Nha, T&acirc;y Ban Nha, T&acirc;y Ban Nha (Mỹ Latin), Nga, Trung Hoa (Giản thể), Trung Hoa (Phồn thể), Thổ Nhĩ Kỳ, Tiếng Việt.<br /><strong>Ch&uacute;ng t&ocirc;i mong muốn được lắng nghe từ bạn:</strong><br />Th&iacute;ch ch&uacute;ng t&ocirc;i tr&ecirc;n&nbsp;<strong>Facebook</strong>:<br /><a href="https://www.google.com/url?q=https://www.facebook.com/360safecenter&amp;sa=D&amp;usg=AFQjCNGuLIWgCpCgTg_vEnFVpyyp69-X5Q" rel="nofollow" target="_blank">https://www.facebook.com/360safecenter</a><br />Theo ch&uacute;ng t&ocirc;i tr&ecirc;n&nbsp;<strong>Twitter</strong>:<br /><a href="https://www.google.com/url?q=https://twitter.com/360safecenter&amp;sa=D&amp;usg=AFQjCNGcLgYyFvvwN0Iq3whRiXOjvU4YQQ" rel="nofollow" target="_blank">https://twitter.com/360safecenter</a><br />Lời khuy&ecirc;n: Ứng dụng n&agrave;y c&oacute; thể kh&ocirc;ng tương th&iacute;ch với những ứng dụng sau: Lookout, NQ Mobile, AVG, ESET, Panda, Antivirus Free, Avast, Trend Micro, McAfee, Norton, Kaspersky, F-secure.</span></p>', '<p><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Bạn cần đọc kỹ &nbsp;"<strong>Ch&iacute;nh s&aacute;ch của sản phẩm</strong>" trước khi triển khai để tiếp thị sản phẩm một c&aacute;ch hiệu quả cũng như tr&aacute;nh vi phạm những quy định về tiếp thị.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />1.&nbsp;Loại h&igrave;nh sản phẩm</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Sản phẩm Ứng dụng&nbsp;<strong>"</strong>360 Mobile Security<strong>"</strong>&nbsp;thuộc loại sản phẩm&nbsp;<strong>CPI.</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />ĐỊNH NGHĨA:&nbsp;<strong>CPI (Cost per Install) -</strong>&nbsp;Thanh to&aacute;n theo lượt c&agrave;i đặt: Người tiếp thị sẽ nhận được hoa hồng khi c&oacute; kh&aacute;ch h&agrave;ng thực hiện h&agrave;nh động tải v&agrave; c&agrave;i đặt ứng dụng, tải phần mềm, hoặc c&aacute;c loại nội dung số kh&aacute;c</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Đối với sản phẩm "360 Mobile Security",&nbsp;<strong>một CPI được t&iacute;nh l&agrave; hợp lệ</strong>&nbsp;khi người d&ugrave;ng điện thoại thực hiện th&agrave;nh c&ocirc;ng 03 bước sau:</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bước 1: Tải th&agrave;nh c&ocirc;ng ứng dụng 360 Mobile Security từ link ph&acirc;n phối của Người tiếp thị</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bước 2: C&agrave;i đặt th&agrave;nh c&ocirc;ng ứng dụng 360 Mobile Security tr&ecirc;n điện thoại</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br />Bước 3:&nbsp;</strong><strong>Mở ứng dụng 360 Mobile Security l&ecirc;n</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br /><br />Lưu &yacute;:&nbsp;</strong>Qu&aacute; tr&igrave;nh 03 bước tr&ecirc;n ho&agrave;n to&agrave;n&nbsp;<strong>miễn ph&iacute;&nbsp;</strong>với người d&ugrave;ng.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp; &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />2. Ch&iacute;nh s&aacute;ch tiếp thị chung</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bạn cần đọc kĩ ch&iacute;nh s&aacute;ch tiếp thị của SmartAd tại:&nbsp;<a href="http://smartad.vn/dieu_khoan_dang_ky.html" rel="nofollow" target="_blank">http://smartad.vn/dieu_khoan_dang_ky.html</a>&nbsp;để tr&aacute;nh mắc phải những quy định cấm khi tiếp thị sản phẩm, tr&aacute;nh t&igrave;nh trạng kh&ocirc;ng nhận được hoa hồng do vi phạm quy định.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />3. Ch&iacute;nh s&aacute;ch tiếp thị của Nh&agrave; cung cấp</strong><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp chỉ ghi nhận một lượt c&agrave;i đặt tr&ecirc;n mỗi điện thoại Android, tức l&agrave; nếu một kh&aacute;ch h&agrave;ng tải,&nbsp;mở ứng dụng nhiều lần th&igrave; Người tiếp thị chỉ được t&iacute;nh doanh thu cho một c&agrave;i đặt.&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Người tiếp thị kh&ocirc;ng được t&iacute;nh doanh thu nếu Người d&ugrave;ng thực hiện qu&aacute; tr&igrave;nh&nbsp;tải, c&agrave;i đặt 360 Mobile Security từ bất k&igrave; k&ecirc;nh n&agrave;o kh&aacute;c trước đ&oacute;. &nbsp; &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />4. Ch&iacute;nh s&aacute;ch về số lượng c&agrave;i đặt ứng dụng</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp sẽ mua một số lượng c&agrave;i đặt nhất định ứng dụng "360 Mobile Security". Khi đ&atilde; đủ số lượng c&agrave;i đặt th&agrave;nh c&ocirc;ng, sản phẩm sẽ chuyển sang trạng th&aacute;i "Tạm dừng", người d&ugrave;ng sẽ kh&ocirc;ng tải v&agrave; c&agrave;i đặt được ứng dụng từ link/ m&atilde; nh&uacute;ng của Người tiếp thị đ&atilde; triển khai tr&ecirc;n c&aacute;c k&ecirc;nh tiếp thị. SmartAd sẽ th&ocirc;ng b&aacute;o ngay cho Người tiếp thị để gỡ link/ m&atilde; nh&uacute;ng sản phẩm khỏi k&ecirc;nh tiếp thị của bạn &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />5. Thống k&ecirc;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Người tiếp thị c&oacute; thể theo d&otilde;i về số lượng Action v&agrave; doanh thu tr&ecirc;n phần "Thống k&ecirc;" trong t&agrave;i khoản.&nbsp; &nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Hệ thống SmartAd cập nhật thống k&ecirc; về lượt c&agrave;i đặt 360 Mobile Security (số lượng action) theo thời gian thực tức l&agrave; bất cứ action hợp lệ n&agrave;o đều xuất hiện l&ecirc;n thống k&ecirc; trong 5 ph&uacute;t sau đ&oacute;. &nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br />Số lượng Action th&agrave;nh c&ocirc;ng&nbsp;</strong>trả về được thống k&ecirc; sau khi người d&ugrave;ng ho&agrave;n th&agrave;nh&nbsp;<strong>Bước 3: Mở ứng dụng 360 Mobile Security l&ecirc;n</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Do đ&oacute;, thống k&ecirc; action ch&iacute;nh thức (ở trạng th&aacute;i "Đ&atilde; duyệt") thường&nbsp;<strong>bằng hoặc thấp hơn</strong>&nbsp;thống k&ecirc; Action ở trạng th&aacute;i "Chờ duyệt" trước đ&oacute;. Tỉ lệ ch&ecirc;nh lệch&nbsp;t&ugrave;y thuộc v&agrave;o k&ecirc;nh v&agrave; c&aacute;ch thức Người tiếp thị triển khai.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /></p>', 'market://details?id=com.qihoo.security&referrer=qihoo_id%3D104685%26qihoo_subid%3D141035009501%26click_id%3D{pubid}-{timetick}', '', 4000, '3.5 M', '2014-11-02 09:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `slug`, `order`, `active`) VALUES
(1, 0, 'Dịch Vụ', '#', 0, 1),
(2, 0, 'Hình Thức', '#', 0, 1),
(3, 1, 'CPI', 'cpi', 0, 1),
(4, 1, 'CPS', 'cps', 0, 1),
(5, 1, 'CPL', 'cpl', 0, 1),
(6, 0, 'Giới Thiệu', '/static-page/gioi-thieu', 0, 1),
(7, 0, 'Liên Hệ', '/static-page/lien-he', 0, 1),
(8, 2, 'Social', 'social', 0, 1),
(9, 2, 'Search', 'search', 0, 1),
(10, 2, 'Display', 'display', 0, 1),
(11, 2, 'Mobile App', 'mobile-app', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interaction`
--

CREATE TABLE IF NOT EXISTS `interaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day_click` int(11) DEFAULT '0',
  `success` int(11) DEFAULT '0',
  `revenue` double DEFAULT '0',
  `date` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `interaction`
--

INSERT INTO `interaction` (`id`, `app_id`, `user_id`, `day_click`, `success`, `revenue`, `date`) VALUES
(1, 1, 1, 2, 1, 5000, 141015),
(2, 2, 1, 3, 1, 5000, 141022),
(3, 1, 1, 1, 1, 5000, 141022),
(4, 2, 1, 1, 1, 5000, 141021),
(5, 2, 1, 6, 1, 5000, 141024),
(6, 2, 10, 2, 0, 0, 141029),
(7, 2, 10, 1, 0, 0, 141028),
(8, 3, 1, 5, 4, 18000, 141029);

-- --------------------------------------------------------

--
-- Table structure for table `interaction_info`
--

CREATE TABLE IF NOT EXISTS `interaction_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interaction_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `ref_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `interaction_info`
--

INSERT INTO `interaction_info` (`id`, `interaction_id`, `status`, `ref_code`, `imei`, `time`, `os`, `ip`, `phone_number`, `telco`, `hash_code`) VALUES
(1, 2, 1, NULL, NULL, '2014-10-21 18:20:30', NULL, '127.0.0.1', NULL, NULL, 'sid7q8w7t7'),
(2, 3, 0, NULL, NULL, '2014-10-21 18:29:14', NULL, '127.0.0.1', NULL, NULL, 'g8wpm26ja2'),
(3, 2, 0, NULL, NULL, '2014-10-22 16:20:53', NULL, '127.0.0.1', NULL, NULL, 'q1yuborpg4'),
(4, 2, 0, NULL, NULL, '2014-10-22 16:30:35', NULL, '127.0.0.1', NULL, NULL, '99v1sonyod'),
(5, 2, 0, NULL, NULL, '2014-10-22 16:32:19', NULL, '127.0.0.1', NULL, NULL, 'u2hppvmp0h'),
(6, 5, 0, NULL, NULL, '2014-10-23 17:07:07', NULL, '127.0.0.1', NULL, NULL, 'm0rz14i2xa'),
(7, 5, 1, NULL, NULL, '2014-10-23 17:37:32', NULL, '127.0.0.1', NULL, NULL, 'ulqtpn1z6z'),
(8, 5, 0, NULL, NULL, '2014-10-23 17:52:29', NULL, '127.0.0.1', NULL, NULL, 'qaojbdokhr'),
(9, 5, 0, NULL, NULL, '2014-10-23 17:54:08', NULL, '127.0.0.1', NULL, NULL, 'kxulr6awb3'),
(10, 5, 0, NULL, NULL, '2014-10-23 17:57:30', NULL, '127.0.0.1', NULL, NULL, 'u72qd2cwfv'),
(11, 5, 0, NULL, NULL, '2014-10-23 17:57:40', NULL, '127.0.0.1', NULL, NULL, 'iwwl2z3vao'),
(12, 6, 0, NULL, NULL, '2014-10-28 17:11:02', NULL, '127.0.0.1', NULL, NULL, 'nyavt3aacn'),
(13, 6, 0, NULL, NULL, '2014-10-28 17:11:37', NULL, '127.0.0.1', NULL, NULL, '7nz7wx40bs'),
(14, 7, 0, NULL, NULL, '2014-10-28 21:40:29', NULL, '42.112.68.250', NULL, NULL, 'b7vmqgulq1'),
(15, 8, 0, NULL, NULL, '2014-10-29 09:22:58', NULL, '118.70.67.134', NULL, NULL, 'qwxrhhdq4v'),
(16, 8, 0, NULL, NULL, '2014-10-29 09:32:30', NULL, '127.0.0.1', NULL, NULL, 'x7ltrfdf1h'),
(17, 8, 0, NULL, NULL, '2014-10-29 09:43:11', NULL, '127.0.0.1', NULL, NULL, 'xtaonqrxai'),
(18, 8, 0, NULL, NULL, '2014-10-29 09:44:40', NULL, '127.0.0.1', NULL, NULL, 'b0l2t0ktjq'),
(19, 8, 1, NULL, NULL, '2014-10-29 09:46:19', NULL, '127.0.0.1', NULL, NULL, 'fbw0x1u093');

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE IF NOT EXISTS `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `action` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  `cr` double DEFAULT '0',
  `payment` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_statistic`
--

CREATE TABLE IF NOT EXISTS `merchant_statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL,
  `keys` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE IF NOT EXISTS `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `identity_card` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `as_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`id`, `user_id`, `identity_card`, `type`, `number`, `owner`, `branch`, `update_code`, `as_default`) VALUES
(6, 10, NULL, '', '', '', '', NULL, 0),
(7, 1, NULL, '', '', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'textField, textArea, checkBox, radioButton, dropDown',
  `key` text NOT NULL COMMENT 'json_encode',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `category`, `name`, `title`, `value`, `type`, `key`) VALUES
(1, 'Site', 'title', 'Tiêu đề trang web', 'Hệ Thống Quản Lý CPI SmartAd', 'textField', ''),
(2, 'Site', 'meta_description', 'Thẻ Meta description', 'Hệ Thống Quản Lý CPI SmartAd', 'textArea', ''),
(3, 'Site', 'meta_keywords', 'Thẻ Meta keywords', '', 'textArea', ''),
(4, 'Site', 'logo', 'Logo', 'http://demo.smartad.vn/themes/backend/images/logo.png', 'textField', ''),
(5, 'Site', 'site_dir', 'Đường dẫn tới website (Không có / ở cuối)', '/var/www/smartad', 'textField', ''),
(6, 'Site', 'site_url', 'Liên kết tới website (Không có / ở cuối)', 'http://demo.smartad.vn/', 'textField', ''),
(9, 'Support', 'support_email', 'Email hỗ trợ', 'contact@smartad.vn', 'textField', ''),
(10, 'Support', 'support_yahoo', 'Yahoo hỗ trợ', 'smartad.yahoo', 'textField', ''),
(11, 'Support', 'support_skype', 'Skype hỗ trợ', 'smartad.skype', 'textField', ''),
(12, 'Support', 'support_phone', 'Điện thoại hỗ trợ', '0123456789', 'textField', ''),
(13, 'Company', 'company_name', 'Tên đơn vị chủ quản', 'Công Ty Truyền Thông SmartAd', 'textField', ''),
(14, 'Company', 'company_address', 'Địa chỉ đơn vị chủ quản', '', 'textField', ''),
(15, 'Company', 'company_phone', 'Số điện thoại đơn vị chủ quản', '08.1234567', 'textField', ''),
(16, 'Company', 'company_email', 'Email đơn vị chủ quản', 'contact@smartad.vn', 'textField', ''),
(21, 'System', 'cronjob_auth', 'Chuỗi mã hóa cho các thao tác tự động', 'f6ecbaf6b02b1443619ad4a0bc6d318fda8fe00e', 'textField', ''),
(25, 'Credit', 'user_register', 'Thưởng đăng ký thành viên', '0', 'textField', ''),
(26, 'Credit', 'user_upload_normal', 'Thưởng tải tài liệu lên', '0', 'textField', ''),
(27, 'Credit', 'user_upload_special', 'Thưởng tải tài liệu vào danh mục đặc biệt', '0', 'textField', ''),
(28, 'Credit', 'user_facebook_connect', 'Thưởng kết nối facebook', '0', 'textField', ''),
(29, 'Credit', 'ongoing_event', 'Thưởng cho sự kiện đang diễn ra', '0', 'textField', ''),
(30, 'Email', 'email_type', 'Kiểu gửi email', 'smtp', 'radioButton', '{"smtp":"SMTP","mail":"mail()","sendmail":"sendmail"}'),
(31, 'Email', 'email_host', 'Máy chủ Email', 'smtp.googlemail.com', 'textField', ''),
(32, 'Email', 'email_port', 'Cổng máy chủ gửi email', '465', 'textField', ''),
(33, 'Email', 'email_secure', 'Bảo mật', 'ssl', 'radioButton', '{"none":"none","tsl":"TSL","ssl":"SSL"}'),
(34, 'Email', 'email_account', 'Tài khoản email', 'dao.hunter@gmail.com', 'textField', ''),
(35, 'Email', 'email_password', 'Mật khẩu email', 'S40l41th3', 'passwordField', ''),
(38, 'Credit', 'view_payment', 'Thưởng cho mỗi lượt xem tài liệu ', '8', 'textField', ''),
(39, 'Credit', 'share_payment', 'Thưởng cho mỗi lượt share tài liệu', '8', 'textField', ''),
(40, 'Credit', 'share_payment', 'Thưởng cho mỗi lượt download \r\n(tài liệu miễn phí)', '0', 'textField', ''),
(41, 'Site', 'favicon', 'Favicon', 'http://demo.smartad.vn//themes/backend/images/fav.png', 'textField', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT '#',
  `is_show` tinyint(1) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `name`, `image_url`, `redirect_url`, `is_show`, `created_date`) VALUES
(16, 'Hệ Thống Quảng Cáo Thông Minh', 'http://smartad.local/uploads/slider/he-thong-quang-cao-thong-minh-1413077593.jpg', '#', 1, '2014-10-12 01:33:13'),
(17, 'Hệ Thống Tiếp Thị Liên Kết', 'http://smartad.local/uploads/slider/he-thong-tiep-thi-lien-ket-1413077620.jpg', '#', 1, '2014-10-12 01:33:40'),
(18, 'Lựa Chọn Tối Ưu', 'http://smartad.local/uploads/slider/lua-chon-toi-uu-1413077639.jpg', '#', 1, '2014-10-12 01:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `static_page`
--

CREATE TABLE IF NOT EXISTS `static_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `static_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'page',
  `static_category` int(11) DEFAULT '0',
  `boolean` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `static_page`
--

INSERT INTO `static_page` (`id`, `title`, `slug`, `description`, `content`, `date`, `author`, `type`, `static_type`, `static_category`, `boolean`) VALUES
(1, 'Thông báo: Thanh toán doanh thu SmartAd 9/2014', 'thanh-toan-doanh-thu-smartad-9-2014', 'Thông báo: Thanh toán doanh thu SmartAd 9/2014 ', '<p><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">Thời gian thanh to&aacute;n l&agrave;: ng&agrave;y 15 v&agrave; 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua bưu điện nhận tiền tại bưu cục đăng k&yacute; từ ng&agrave;y 17/08/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua ng&acirc;n h&agrave;ng, nếu hết ngay 16/10/2014 chưa nhận được tiền th&igrave; vui l&ograve;ng pm lại BQT&nbsp;để được giải đ&aacute;p.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c th&agrave;nh vi&ecirc;n nhận thanh to&aacute;n bằng thẻ điện thoại. Nhận m&atilde; thẻ trong mail tại smartAd ng&agrave;y 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&ograve;n bạn th&agrave;nh vi&ecirc;n n&agrave;o chưa cập nhật th&ocirc;ng tin thanh to&aacute;n, hoặc muốn thay đổi th&ocirc;ng tin thanh to&aacute;n th&igrave; vui l&ograve;ng cập nhật chậm nhất l&agrave; ng&agrave;y 12/10/2014 nh&eacute;.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">Ch&uacute;c c&aacute;c bạn kinh doanh hiệu quả ^^</span></p>', '2014-10-11 12:18:17', 1, 1, 'page', 0, 1),
(2, 'Giới Thiệu', 'gioi-thieu', 'Giới thiệu SmartAd', '<div class="col-xs-6" style="margin: 0px; padding: 0px 15px; box-sizing: border-box; position: relative; min-height: 1px; float: left; width: 600px; color: #2c3e50; font-family: Roboto; font-size: 15px; line-height: 30px; text-align: justify;">\r\n<h3 style="margin: 21px 0px 10.5px; padding: 0px; box-sizing: border-box; font-family: Lato, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; color: inherit; font-size: 26px;">Giới thiệu SmartAd</h3>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">SmartAds l&agrave; hệ thống tiếp thị li&ecirc;n kết được x&acirc;y dựng bởi Ho&agrave;ng Kim Media, ch&uacute;ng t&ocirc;i mang lại giải ph&aacute;p marketing online tốt nhất cho nh&agrave; quảng c&aacute;o với chi ph&iacute; tối thiểu, doanh thu cao nhất cho người tiếp thị c&ugrave;ng với hệ thống thống k&ecirc; tin cậy đảm bảo lợi &iacute;ch cho nh&agrave; quảng c&aacute;o v&agrave; người tiếp thị.</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; box-sizing: border-box;">M&ocirc; h&igrave;nh hoạt động</strong></p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Nh&agrave; quảng c&aacute;o đưa sản phẩm l&ecirc;n kho sản phẩm của SmartAd</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Người tiếp thị gia nhập hệ thống, lấy link sản phẩm tr&ecirc;n kho sản phẩm đi ph&acirc;n phối</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Kh&aacute;ch h&agrave;ng tương t&aacute;c sản phẩm từ link ph&acirc;n phối của người tiếp thị n&agrave;o th&igrave; t&iacute;nh doanh thu cho người tiếp thị đ&oacute; (Tương t&aacute;c gồm: c&agrave;i đặt, đăng k&yacute;, mua h&agrave;ng &hellip;)</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Nh&agrave; cung cấp v&agrave; SmartAd đối so&aacute;t để chốt doanh thu cho người tiếp thị</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- SmartAd thanh to&aacute;n doanh thu cho Người tiếp thị.</p>\r\n</div>\r\n<div class="col-xs-6" style="margin: 0px; padding: 0px 15px; box-sizing: border-box; position: relative; min-height: 1px; float: left; width: 600px; color: #2c3e50; font-family: Roboto; font-size: 15px; line-height: 30px; text-align: justify;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; vertical-align: middle;" src="http://smartad.vn/asset/images/about.png" alt="" /></div>', '2014-10-12 01:43:10', 1, 6, 'page', 0, 1),
(3, 'Liên Hệ', 'lien-he', 'Advertising network', '<h2 style="margin: 21px 0px 10.5px; padding: 0px; box-sizing: border-box; font-family: Lato, ''Helvetica Neue'', Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 32px; font-weight: 400; line-height: 1.1; color: #2c3e50;">SMARTAD</h2>\r\n<address style="margin: 0px 0px 21px; padding: 0px; box-sizing: border-box; font-style: normal; line-height: 21.428571701049805px; color: #2c3e50; font-family: Roboto; font-size: 15px;"><strong style="margin: 0px; padding: 0px; box-sizing: border-box;">Advertising network</strong><br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Tầng 24.3 tầng 24 CT2 Vimeco<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Nguyễn Ch&aacute;nh<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Cầu Giấy<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />H&agrave; Nội<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Việt Nam<br style="margin: 0px; padding: 0px; box-sizing: border-box;" /><abbr style="margin: 0px; padding: 0px; box-sizing: border-box; border-bottom-style: dotted; border-bottom-color: #b4bcc2;" title="Hotline">Hotline:&nbsp;</abbr>0976.297.541<br style="margin: 0px; padding: 0px; box-sizing: border-box;" /><abbr style="margin: 0px; padding: 0px; box-sizing: border-box; border-bottom-style: dotted; border-bottom-color: #b4bcc2;" title="Phone">Phone:&nbsp;</abbr>04.62840636</address>', '2014-10-12 01:49:31', 1, 2, 'page', 0, 1),
(6, 'Giới Thiệu Dịch Vụ CPI', 'gioi-thieu-dich-vu-cpi', 'Giới Thiệu Dịch Vụ CPI', '<p>Giới Thiệu Dịch Vụ CPI</p>', '2014-10-16 22:02:27', 1, 0, 'post', 3, 1),
(7, 'Giới Thiệu Dịch Vụ CPS', 'gioi-thieu-dich-vu-cps', 'Giới Thiệu Dịch Vụ CPS', '<p>Giới Thiệu Dịch Vụ CPS</p>', '2014-10-16 22:11:24', 1, 0, 'post', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` int(11) DEFAULT '0',
  `user_group` int(11) DEFAULT NULL,
  `registered_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `active_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `user_role`, `user_group`, `registered_date`, `active_code`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dao.hunter@gmail.com', 1, 0, NULL, NULL),
(2, 'longpg', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'longpg@smartosc.com', 2, NULL, NULL, NULL),
(10, 'Test_2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'test1@gmail.com', 6, 3, '2014-10-28 15:54:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manager` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `group_name`, `manager`) VALUES
(2, 'Affiliate Group 1', 2),
(3, 'Merchant 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `store_channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `full_name`, `job`, `company`, `address`, `city`, `country`, `phone_number`, `user_type`, `store_channel`, `reference`) VALUES
(1, 1, 'Bùi Văn Đạo', 'Dev', 'SM', 'Cầu Giấy', 'Hà Nội', 'Vietnam', '05895453', 1, '', ''),
(2, 2, 'Phạm Gia Long', 'Dev', 'SM', 'Cầu Giấy', 'Hà Nội', 'Vietnam', '09895453', 1, '', ''),
(3, 10, 'Phạm Văn Huy', 'CEO', 'SmartAd', 'Quan Hoa Cầu Giấy', 'Hà Nội', 'Vietnam', '05895453', 1, 'appquote.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_ip`
--

CREATE TABLE IF NOT EXISTS `user_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Affiliate Manager'),
(3, 'Merchant Manager'),
(4, 'Accountant'),
(5, 'Affiliate'),
(6, 'Non Active Affiliate');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
