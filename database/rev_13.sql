-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2014 at 12:55 AM
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

DROP TABLE IF EXISTS `acl`;
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

DROP TABLE IF EXISTS `activation_ip`;
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

DROP TABLE IF EXISTS `activation_log`;
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

DROP TABLE IF EXISTS `adv_apperance`;
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

DROP TABLE IF EXISTS `adv_status`;
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

DROP TABLE IF EXISTS `adv_type`;
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

DROP TABLE IF EXISTS `application`;
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
  `merchant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `name`, `app_code`, `slug`, `image`, `short_description`, `adv_type`, `platform_id`, `appearance_id`, `area`, `from`, `to`, `status_id`, `content`, `policy`, `link`, `file_url`, `price`, `size`, `registered_date`, `merchant_id`) VALUES
(3, 'Uc Browser', 'ucweb', 'uc-browser', 'http://smartad.vn/uploads/ucbrowser/logo.png', '<p>Phần mềm tr&igrave;nh duyệt web cho điện thoại di động, hỗ trợ java tiếng việt, download miễn ph&iacute; về điện thoại</p>', 1, 1, 2, 'Vietnam', '2014-10-29 00:00:00', '2014-11-29 00:00:00', 3, '<p>UC Browser đem lại cho bạn trải nghiệm lướt web nhanh v&agrave; mượt. UC Browser đưa ra c&aacute;c cấu h&igrave;nh truy cập kh&aacute;c nhau dựa tr&ecirc;n kết nối mạng gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng điều chỉnh việc duyệt web theo sở th&iacute;ch c&aacute; nh&acirc;n, giảm chi ph&iacute; dữ liệu v&agrave; tăng tốc độ tải trang web với sức n&eacute;n mạnh.</p>\r\n<p><span><strong>C&aacute;c t&iacute;nh năng:</strong><br />1. AutoPager<br />Đem lại cho bại trải nghiệm đọc xuy&ecirc;n suốt bằng c&aacute;ch tự động tải trang tiếp theo khi bạn duyệt đến cuối trang web hiện tại. Hiệu quả tr&ecirc;n phi&ecirc;n bản nhẹ của c&aacute;c trang nổi tiếng như Google, Twitter, Facebook v&agrave; hơn thế nữa.<br />2. Chế Độ Tăng Tốc II<br />Phi&ecirc;n bản n&acirc;ng cấp của chế độ Tăng Tốc sẽ chọn v&agrave; tr&igrave;nh b&agrave;y phi&ecirc;n bản ph&ugrave; hợp nhất của website t&ugrave;y theo kết nối mạng.<br />3. Tăng Tốc Download<br />Cải thiện trạng th&aacute;i kết nối mạng để tăng gấp bội tốc độ tải<br />4. Tải Ảnh Từ Facebook<br />Bạn c&oacute; thể tải những h&igrave;nh ảnh ưa th&iacute;ch từ Facebook về điện thoại<br />5. Tr&igrave;nh Duyệt H&agrave;ng Đầu, Giờ Đ&acirc;y C&ograve;n Tốt Hơn<br />Cải tiến hầu hết c&aacute;c chức năng v&agrave; tối ưu h&oacute;a để đem lại cho bạn một tốc độ nhanh hơn với độ ổn định cao hơn.<br />6. Trung T&acirc;m Ứng Dụng Web<br />Dễ d&agrave;ng t&igrave;m những ứng dụng web tốt nhất để việc trải nghiệm cuộc sống số tr&ecirc;n điện thoại kh&ocirc;ng c&ograve;n bị ảnh hưởng từ việc thường xuy&ecirc;n phải download, c&agrave;i đặt v&agrave; n&acirc;ng cấp.<br />7. Image Viewer<br />Mọi h&igrave;nh ảnh từ trang web đang duyệt được đặt c&ugrave;ng một nơi, như một quyển album.<br />8. UC Desktop Widget <br />Sử dụng tiện &iacute;ch n&agrave;y để tạo một widget tr&ecirc;n m&agrave;n h&igrave;nh của bạn để truy cập dễ d&agrave;ng c&aacute;c tiện &iacute;ch phong ph&uacute; của UC.<br />9. Th&ecirc;m Nhiều Ng&ocirc;n Ngữ v&agrave; Ph&ocirc;ng Chữ<br />Hỗ trợ nhiều ng&ocirc;n ngũ v&agrave; ph&ocirc;ng chữ bao gồm Tamil, Telugu, Malayalam v&agrave; hơn thế nữa.<br />10. Cải Thiện Tổng Quan<br />Những cải tiến tr&ecirc;n c&aacute;c chức năng ch&iacute;nh như đ&aacute;nh văn bản, di chuyển về trước &amp; sau, điều chỉnh ph&ocirc;ng chữ, v.v...</span><strong>giải thưởng:</strong><span>*****Tr&igrave;nh duyệt tốt nhất cho di động 2011 theo About.com*****<br />*****Tr&igrave;nh duyệt tốt nhất cho Android 2012 theo About.com***** <br />- UC Browser tự h&agrave;o l&agrave; tr&igrave;nh duyệt phổ biến nhất tr&ecirc;n thế giới với hơn 400 triệu người d&ugrave;ng.</span><span><br />"T&oacute;m lại, UC Browser l&agrave; sản phẩm kết hợp t&iacute;nh năng vượt trội, thiết kế đơn giản, duyệt nhanh với danh mục v&agrave; bố tr&iacute; đẹp. Đ&oacute; l&agrave; những g&igrave; một tr&igrave;nh duyệt di động phải c&oacute;." - Androidzoom.com</span><span><br /> &ldquo;Tr&igrave;nh duyệt tốt nhất t&ocirc;i đ&atilde; từng sử dụng. T&ocirc;i đ&atilde; từng d&ugrave;ng Dolphin, Chrome, Firefox, Boat Browser v&agrave; Opera nhưng chỉ c&oacute; UC Browser mới l&agrave;m t&ocirc;i h&agrave;i l&ograve;ng với tốc độ tuyệt đỉnh.&rdquo; - Fuad - Th&aacute;ng 10, 2012 - Version 8.4.1</span></p>', '<p><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Bạn cần đọc kỹ &nbsp;"</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Ch&iacute;nh s&aacute;ch của sản phẩm</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">" trước khi triển khai để tiếp thị sản phẩm một c&aacute;ch hiệu quả cũng như tr&aacute;nh vi phạm những quy định về tiếp thị.&nbsp; &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />1.&nbsp;Loại h&igrave;nh sản phẩm</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Sản phẩm Ứng dụng&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">"UCBrowser"</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;thuộc loại sản phẩm&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">CPI.</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">ĐỊNH NGHĨA:&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">CPI (Cost per Install) -</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;Thanh to&aacute;n theo lượt c&agrave;i đặt: Người tiếp thị sẽ nhận được hoa hồng khi c&oacute; kh&aacute;ch h&agrave;ng thực hiện h&agrave;nh động tải v&agrave; c&agrave;i đặt ứng dụng, tải phần mềm, hoặc c&aacute;c loại nội dung số kh&aacute;c&nbsp;&nbsp;&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Đối với sản phẩm "UCBrowser",&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">một CPI được t&iacute;nh l&agrave; hợp lệ</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;khi người d&ugrave;ng điện thoại thực hiện th&agrave;nh c&ocirc;ng 03 bước sau:&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" /></strong></p>\r\n<ul style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">\r\n<li style="margin: 0px; padding: 0px; list-style: none;"><strong style="margin: 0px; padding: 0px;">Bước 1: Tải th&agrave;nh c&ocirc;ng ứng dụng&nbsp;</strong>UCBrowser<strong style="margin: 0px; padding: 0px;">&nbsp;từ link ph&acirc;n phối của Người tiếp thị</strong>&nbsp;</li>\r\n<li style="margin: 0px; padding: 0px; list-style: none;"><strong style="margin: 0px; padding: 0px;">Bước 2: C&agrave;i đặt th&agrave;nh c&ocirc;ng ứng dụng&nbsp;</strong>UCBrowser<strong style="margin: 0px; padding: 0px;">&nbsp;tr&ecirc;n điện thoại</strong>&nbsp;</li>\r\n<li style="margin: 0px; padding: 0px; list-style: none;"><strong style="margin: 0px; padding: 0px;">Bước 3:&nbsp;</strong><strong style="margin: 0px; padding: 0px;">Mở ứng dụng&nbsp;UCBrowser&nbsp;l&ecirc;n</strong>&nbsp;.&nbsp;</li>\r\n</ul>\r\n<p><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" />Lưu &yacute;:&nbsp;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Qu&aacute; tr&igrave;nh 03 bước tr&ecirc;n ho&agrave;n to&agrave;n&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">miễn ph&iacute;&nbsp;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">với người d&ugrave;ng.Thống k&ecirc; sẽ được update 30 ph&uacute;t/lần&nbsp; &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />2. Ch&iacute;nh s&aacute;ch tiếp thị chung</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Bạn cần đọc kĩ ch&iacute;nh s&aacute;ch tiếp thị của SmartAd tại:&nbsp;</span><a style="margin: 0px; padding: 0px; text-decoration: none; color: #006bd7; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" href="http://smartad.vn/dieu_khoan_dang_ky.html" rel="nofollow" target="_blank">http://smartad.vn/dieu_khoan_dang_ky.html</a><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;để tr&aacute;nh mắc phải những quy định cấm khi tiếp thị sản phẩm, tr&aacute;nh t&igrave;nh trạng kh&ocirc;ng nhận được hoa hồng do vi phạm quy định.&nbsp;&nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />3. Ch&iacute;nh s&aacute;ch tiếp thị của Nh&agrave; cung cấp</strong><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">- Nh&agrave; cung cấp chỉ ghi nhận một lượt c&agrave;i đặt tr&ecirc;n mỗi điện thoại Android, tức l&agrave; nếu một kh&aacute;ch h&agrave;ng tải,&nbsp;mở ứng dụng nhiều lần th&igrave; Người tiếp thị chỉ được t&iacute;nh doanh thu cho một c&agrave;i đặt.&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">- Người tiếp thị kh&ocirc;ng được t&iacute;nh doanh thu nếu Người d&ugrave;ng thực hiện qu&aacute; tr&igrave;nh&nbsp;tải, c&agrave;i đặt&nbsp;UCBrowser&nbsp;từ bất k&igrave; k&ecirc;nh n&agrave;o kh&aacute;c trước đ&oacute;. &nbsp; &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />4. Ch&iacute;nh s&aacute;ch về số lượng c&agrave;i đặt ứng dụng</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">- Nh&agrave; cung cấp sẽ mua một số lượng c&agrave;i đặt nhất định ứng dụng "UCBrowser". Khi đ&atilde; đủ số lượng c&agrave;i đặt th&agrave;nh c&ocirc;ng, sản phẩm sẽ chuyển sang trạng th&aacute;i "Tạm dừng", người d&ugrave;ng sẽ kh&ocirc;ng tải v&agrave; c&agrave;i đặt được ứng dụng từ link/ m&atilde; nh&uacute;ng của Người tiếp thị đ&atilde; triển khai tr&ecirc;n c&aacute;c k&ecirc;nh tiếp thị. SmartAd sẽ th&ocirc;ng b&aacute;o ngay cho Người tiếp thị để gỡ link/ m&atilde; nh&uacute;ng sản phẩm khỏi k&ecirc;nh tiếp thị của bạn &nbsp;&nbsp;</span><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" /><br style="margin: 0px; padding: 0px;" />5. Thống k&ecirc;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">Người tiếp thị c&oacute; thể theo d&otilde;i về số lượng Action v&agrave; doanh thu tr&ecirc;n phần "Thống k&ecirc;" trong t&agrave;i khoản.&nbsp; &nbsp;&nbsp;</span><br style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;" /><strong style="margin: 0px; padding: 0px; font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;"><br style="margin: 0px; padding: 0px;" />Số lượng Action th&agrave;nh c&ocirc;ng&nbsp;</strong><span style="font-family: ''Segoe UI'', Arial, Tahoma; font-size: 12px; line-height: 20px;">trả về được thống k&ecirc; sau khi người d&ugrave;ng ho&agrave;n th&agrave;nh 3 bước như n&ecirc;u tr&ecirc;n</span></p>', 'market://details?id=com.UCMobile.intl&referrer=utm_source%3Dchenky%2540smartadvngp%2523&hash_code={hashCode}', '', 4500, '3.5 M', '0000-00-00 00:00:00', 0),
(4, 'MoboMarket', 'mobomarket', 'mobomarket', 'http://smartad.vn/uploads/mobogenie/logo.png', 'MoboMarket chính là kho ứng dụng Android của chính bạn, giúp bạn tìm thấy những Games & Apps ngay tại quốc gia của mình,là sự lựa chọn hoàn hảo cho bạn!', 1, 1, 2, 'Việt Nam', '2014-11-01 00:00:00', '2014-11-30 00:00:00', 3, '<p><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Mobo Market Lite&nbsp;ch&iacute;nh l&agrave; thị trường Android của ch&iacute;nh bạn,&nbsp;gi&uacute;p bạn t&igrave;m thấy những Games &amp; Apps ngay tại quốc gia của m&igrave;nh,l&agrave; sự lựa chọn ho&agrave;n hảo cho bạn!&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">C&aacute;c t&iacute;nh năng<br />-Geotargeting: Nội dung Định vị dựa tr&ecirc;n hệ thống đẩy, gi&uacute;p bạn kh&aacute;m ph&aacute; phổ biến Games &amp; Apps xung quanh bạn;<br />-Dựa tr&ecirc;n sở th&iacute;ch: Ch&uacute;ng t&ocirc;i&nbsp;dự đo&aacute;n những ứng dụng bạn th&iacute;ch, gợi &yacute; cho bạn v&agrave; đưa đến cho bạn những Game &amp; Apps ph&ugrave; hợp với bạn nhất;<br />-Cập nhật h&agrave;ng ng&agrave;y: Gi&uacute;p bạn cập nhật với c&aacute;c xu hướng ứng dụng tr&ecirc;n thị trường;<br />-Tập trung v&agrave;o c&aacute;c ứng dụng h&agrave;ng đầu: Sẽ c&oacute; biểu đồ c&aacute;c App &amp; Game tốt nhất v&agrave; biết c&aacute;c App những người kh&aacute;c thường sử dụng;<br />-Bộ sưu tập App: Chọn c&aacute;c ứng dụng v&agrave; tr&ograve; chơi theo theo loại h&igrave;nh v&agrave; nội dung, như bộ sưu tập tr&ograve; chơi Gi&aacute;ng sinh;<br />-Quản l&yacute; App: Kiểm so&aacute;t ho&agrave;n to&agrave;n tr&ecirc;n tải, cập nhật, v&agrave; c&agrave;i đặt / gỡ bỏ c&aacute;c ứng dụng.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;Mục đ&iacute;ch của Moborobo Inc l&agrave; cung cấp c&aacute;c sản phẩm th&acirc;n thiện v&agrave; tiện &iacute;ch nhất cho người d&ugrave;ng.&nbsp;Mobo Market Lite&nbsp;&nbsp;l&agrave; bước tiếp theo trong việc cung cấp c&aacute;c ứng dụng c&oacute; t&iacute;nh tương t&aacute;c tốt hơn giữa c&aacute;c thiết&nbsp;bị Android v&agrave; m&aacute;y t&iacute;nh của người d&ugrave;ng. N&oacute; nhằm mục đ&iacute;ch thiết lập một loạt c&aacute;c phần mềm v&agrave; c&aacute;c ứng dụng thực sự hữu &iacute;ch v&agrave; t&ugrave;y biến theo nhu cầu của người d&ugrave;ng. Mobo Market Lite&nbsp;ch&iacute;nh l&agrave; thị trường Android của ch&iacute;nh bạn!</span></p>', '<p><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Bạn cần đọc kỹ &nbsp;"<strong>Ch&iacute;nh s&aacute;ch của sản phẩm</strong>" trước khi triển khai để tiếp thị sản phẩm một c&aacute;ch hiệu quả cũng như tr&aacute;nh vi phạm những quy định về tiếp thị.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Ch&uacute; &yacute;:&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Chấp nhận Action đến từ c&aacute;c nước sau: Việt Nam, Nga, Philippines, Israel, Jordan, Saudi Arabia, Brazil</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />1.&nbsp;Loại h&igrave;nh sản phẩm</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Sản phẩm Ứng dụng&nbsp;<strong>"</strong><strong>MoboMarket "</strong>&nbsp;thuộc loại sản phẩm&nbsp;<strong>CPI.</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />ĐỊNH NGHĨA:&nbsp;<strong>CPI (Cost per Install) -</strong>&nbsp;Thanh to&aacute;n theo lượt c&agrave;i đặt: Người tiếp thị sẽ nhận được hoa hồng khi c&oacute; kh&aacute;ch h&agrave;ng thực hiện h&agrave;nh động tải v&agrave; c&agrave;i đặt ứng dụng, tải phần mềm, hoặc c&aacute;c loại nội dung số kh&aacute;c</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Đối với sản phẩm "<strong>MoboMarket&nbsp;</strong>",&nbsp;<strong>một CPI được t&iacute;nh l&agrave; hợp lệ</strong>&nbsp;khi người d&ugrave;ng điện thoại thực hiện th&agrave;nh c&ocirc;ng 03 bước sau:</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Bước 1: Tải th&agrave;nh c&ocirc;ng ứng dụngMoboMarket&nbsp; từ link ph&acirc;n phối của Người tiếp thị</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bước 2: C&agrave;i đặt th&agrave;nh c&ocirc;ng ứng dụng MoboMarket&nbsp; tr&ecirc;n điện thoại</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br />Bước 3:&nbsp;</strong><strong>Mở ứng dụng MoboMarket&nbsp; l&ecirc;n</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br /><br />Lưu &yacute;:&nbsp;</strong>Qu&aacute; tr&igrave;nh 03 bước tr&ecirc;n ho&agrave;n to&agrave;n&nbsp;<strong>miễn ph&iacute;&nbsp;</strong>với người d&ugrave;ng.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Chấp nhận Action ở c&aacute;c nước:&nbsp;</strong><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Việt Nam, Nga, Philippines, Brazil,&nbsp;</strong><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Israel, Jordan,&nbsp;</strong><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Saudi Arabia<br /><br />2. Ch&iacute;nh s&aacute;ch tiếp thị chung</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bạn cần đọc kĩ ch&iacute;nh s&aacute;ch tiếp thị của SmartAd tại:&nbsp;<a href="http://smartad.vn/dieu_khoan_dang_ky.html" rel="nofollow" target="_blank">http://smartad.vn/dieu_khoan_dang_ky.html</a>&nbsp;để tr&aacute;nh mắc phải những quy định cấm khi tiếp thị sản phẩm, tr&aacute;nh t&igrave;nh trạng kh&ocirc;ng nhận được hoa hồng do vi phạm quy định.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />3. Ch&iacute;nh s&aacute;ch tiếp thị của Nh&agrave; cung cấp</strong><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp chỉ ghi nhận một lượt c&agrave;i đặt tr&ecirc;n mỗi điện thoại Android, tức l&agrave; nếu một kh&aacute;ch h&agrave;ng tải,&nbsp;mở ứng dụng nhiều lần th&igrave; Người tiếp thị chỉ được t&iacute;nh doanh thu cho một c&agrave;i đặt.&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Người tiếp thị kh&ocirc;ng được t&iacute;nh doanh thu nếu Người d&ugrave;ng thực hiện qu&aacute; tr&igrave;nh&nbsp;tải, c&agrave;i đặt&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">MoboMarket&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;từ bất k&igrave; k&ecirc;nh n&agrave;o kh&aacute;c trước đ&oacute;. &nbsp; &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />4. Ch&iacute;nh s&aacute;ch về số lượng c&agrave;i đặt ứng dụng</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp sẽ mua một số lượng c&agrave;i đặt nhất định ứng dụng "</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">MoboMarket&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">". Khi đ&atilde; đủ số lượng c&agrave;i đặt th&agrave;nh c&ocirc;ng, sản phẩm sẽ chuyển sang trạng th&aacute;i "Tạm dừng", người d&ugrave;ng sẽ kh&ocirc;ng tải v&agrave; c&agrave;i đặt được ứng dụng từ link/ m&atilde; nh&uacute;ng của Người tiếp thị đ&atilde; triển khai tr&ecirc;n c&aacute;c k&ecirc;nh tiếp thị. SmartAd sẽ th&ocirc;ng b&aacute;o ngay cho Người tiếp thị để gỡ link/ m&atilde; nh&uacute;ng sản phẩm khỏi k&ecirc;nh tiếp thị của bạn &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />5. Thống k&ecirc;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Người tiếp thị c&oacute; thể theo d&otilde;i về số lượng Action v&agrave; doanh thu tr&ecirc;n phần "Thống k&ecirc;" trong t&agrave;i khoản.&nbsp; &nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Hệ thống SmartAd cập nhật thống k&ecirc; về lượt c&agrave;i đặt&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">MoboMarket&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;(số lượng action) theo thời gian thực tức l&agrave; bất cứ action hợp lệ n&agrave;o đều xuất hiện l&ecirc;n thống k&ecirc; trong 5 ph&uacute;t sau đ&oacute;. &nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br /><br />Số lượng Action th&agrave;nh c&ocirc;ng&nbsp;</strong>trả về được thống k&ecirc; sau khi người d&ugrave;ng ho&agrave;n th&agrave;nh</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />Do đ&oacute;, thống k&ecirc; action ch&iacute;nh thức (ở trạng th&aacute;i "Đ&atilde; duyệt") thường&nbsp;<strong>bằng hoặc thấp hơn</strong>&nbsp;thống k&ecirc; Action ở trạng th&aacute;i "Chờ duyệt" trước đ&oacute;. Tỉ lệ ch&ecirc;nh lệch&nbsp;t&ugrave;y thuộc v&agrave;o k&ecirc;nh v&agrave; c&aacute;ch thức Người tiếp thị triển khai.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /></p>', 'http://mtafftracking.com/tracking/?offer_id=5480&sub_pub=295480009501&hash_code={hashCode}', '', 3500, '4.5 MB', '2014-11-01 10:10:11', NULL);
INSERT INTO `application` (`id`, `name`, `app_code`, `slug`, `image`, `short_description`, `adv_type`, `platform_id`, `appearance_id`, `area`, `from`, `to`, `status_id`, `content`, `policy`, `link`, `file_url`, `price`, `size`, `registered_date`, `merchant_id`) VALUES
(5, '360 Security', '360security', '360-security', 'https://lh4.ggpht.com/bg4GfP6AbnvraDVwMCRdR-aS-W3JAiSbAX0WIoWRTtXnGQM2NZXu_YCo4zQRHIlzi3E=w300', '360 security là phần mềm diệt virus hiện đại nhất cho đến thời điểm này trên nền tảng Mobile - Android', 1, 1, 2, 'Việt Nam', '2014-11-02 00:00:00', '2014-11-30 00:00:00', 3, '<p><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" src="https://lh4.ggpht.com/BU3fB3UKiSzd4PMItDhHIdkhZ-WjvSiBM1i2P6roaOTJ_AmjaVnPIvozp7lk0jNI0Jc=h310" alt="" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;</span><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" title="Image: https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h310" src="https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h310" alt="" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;</span><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" title="Image: https://lh6.ggpht.com/RPFQAX3YmMo3DvfVSuz5u0KYTDF5GpRjbLc3w-A943a0p1vg-N0dWrYzAgJtimemnKo=h310" src="https://lh6.ggpht.com/RPFQAX3YmMo3DvfVSuz5u0KYTDF5GpRjbLc3w-A943a0p1vg-N0dWrYzAgJtimemnKo=h310" alt="" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;</span><img style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" title="Image: https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h900" src="https://lh4.ggpht.com/winP7H3Cl_8kRqq7G5ERnTn7SOhOsgRH-uqOz-hN3q3cmbHB8E4UTyNB671o7kc87Rk=h900" alt="" width="175" height="308" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Bảo vệ thiết bị di động của bạn với 360 Mobile Security, một ứng dụng bảo mật di động h&agrave;ng đầu được thiết kế để bảo vệ điện thoại Android khỏi những virus, phần mềm độc hại, lỗ hổng bảo mật mới nhất v&agrave; những nguy cơ lộ th&ocirc;ng tin c&aacute; nh&acirc;n. N&oacute; cũng c&oacute; t&iacute;nh năng dọn dẹp ứng ứng dụng chạy nền kh&ocirc;ng sử dụng v&agrave; tăng tốc điện thoại Android của bạn.</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Tải ứng dụng chống virus MIỄN PH&Iacute; v&agrave; t&igrave;m hiểu những g&igrave; m&agrave; 275 triệu người d&ugrave;ng đ&atilde; kh&aacute;m ph&aacute;.&nbsp;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong>B&Aacute;O GIỚI N&Oacute;I G&Igrave;?</strong><br />★ &ldquo;It''s serenity-inducing design is bold but not overpowering&hellip; making it a serious contender as a mobile guardian service.&rdquo; -- Cnet<br />★ &ldquo;&hellip;found it to be quite stunning not only in terms of functionality, but also in its design and usability.&rdquo; -- Addictive Tips<br />★ &ldquo;OneOf The Best-Looking Free Security Tools Around&rdquo; &ndash; Makeuseof.com</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">360 Mobile Security rất nhẹ, nhanh v&agrave; kh&ocirc;ng c&oacute; quảng c&aacute;o. Chỉ cần một lần chạm bạn sẽ c&oacute; được hầu hết c&aacute;c t&iacute;nh năng bảo mật ti&ecirc;n tiến m&agrave; nhiều h&atilde;ng kh&aacute;c buộc bạn phải mua mới c&oacute; được.<br />------------------------------------------</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />T&Iacute;NH NĂNG V&Agrave; LỢI &Iacute;CH CH&Iacute;NH:</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Qu&eacute;t v&agrave; loại bỏ virus<br />Sử dụng động cơ chống virus 2 lớp để giữ hệ thống khỏi những mối nguy hiểm mới nhất với 360 QVS + c&ocirc;ng nghệ đ&aacute;m m&acirc;y</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Bảo vệ thời gian thực<br />Qu&eacute;t c&aacute;c ứng dụng đ&atilde; c&agrave;i v&agrave; tập tin apk tr&ecirc;n m&aacute;y trong thời gian thực khi gi&aacute;m s&aacute;t tiến tr&igrave;nh c&agrave;i đặt.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Privacy advisor (Cố vấn bảo mật)<br />Như một hướng dẫn vi&ecirc;n gi&uacute;p bạn c&oacute; đủ th&ocirc;ng tin cần thiết về ứng dụng đang truy cập dữ liệu của bạn.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Khắc phục lỗ hổng bảo mật<br />Ph&aacute;t hiện v&agrave; khắc phục c&aacute;c lỗ hổng bảo mật nằm trong thiết bị di động với những bản v&aacute; lỗi đ&atilde; được x&aacute;c nhận.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Dọn dẹp hệ thống<br />Qu&eacute;t v&agrave; đ&oacute;ng những ứng dụng kh&ocirc;ng cần thiết đang chạy dưới nền cũng như lược sử ri&ecirc;ng tư với một lần chạm duy nhất.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Cửa sổ nổi<br />Thay đổi thiết lập hệ thống v&agrave; tối ưu ho&aacute; thiết bị với một lần chạm, tất cả với t&iacute;nh năng ''cửa sổ n&ocirc;i'' mới của ch&uacute;ng t&ocirc;i.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">►Th&ocirc;ng b&aacute;o đa chức năng<br />Thanh th&ocirc;ng b&aacute;o trạng th&aacute;i của bạn giờ đ&acirc;y c&oacute; nhiều t&iacute;nh năng hơn. Đặt b&aacute;o thức, bật đ&egrave;n flash, đến m&agrave;n h&igrave;nh sử dụng gần nhất v&agrave; tăng tốc thiết bị ngay từ thanh th&ocirc;ng b&aacute;o. (D&agrave;nh cho Android 4.0 v&agrave; mới hơn)<br />------------------------------------------<br />360 Mobile Security - Antivirus đ&atilde; được chứng nhận bởi c&aacute;c tổ chức kiểm định b&ecirc;n thứ ba, bao gồm West Coast Labs, AV-Comparatives, AV-TEST, PC Security Labs, v&agrave; SKD Labs.<br />360 Mobile Security - Antivirus c&oacute; sẵn với những ng&ocirc;n ngữ sau: Tiếng Anh, Bồ Đ&agrave;o Nha (Brazil), Bồ Đ&agrave;o Nha, T&acirc;y Ban Nha, T&acirc;y Ban Nha (Mỹ Latin), Nga, Trung Hoa (Giản thể), Trung Hoa (Phồn thể), Thổ Nhĩ Kỳ, Tiếng Việt.<br /><strong>Ch&uacute;ng t&ocirc;i mong muốn được lắng nghe từ bạn:</strong><br />Th&iacute;ch ch&uacute;ng t&ocirc;i tr&ecirc;n&nbsp;<strong>Facebook</strong>:<br /><a href="https://www.google.com/url?q=https://www.facebook.com/360safecenter&amp;sa=D&amp;usg=AFQjCNGuLIWgCpCgTg_vEnFVpyyp69-X5Q" rel="nofollow" target="_blank">https://www.facebook.com/360safecenter</a><br />Theo ch&uacute;ng t&ocirc;i tr&ecirc;n&nbsp;<strong>Twitter</strong>:<br /><a href="https://www.google.com/url?q=https://twitter.com/360safecenter&amp;sa=D&amp;usg=AFQjCNGcLgYyFvvwN0Iq3whRiXOjvU4YQQ" rel="nofollow" target="_blank">https://twitter.com/360safecenter</a><br />Lời khuy&ecirc;n: Ứng dụng n&agrave;y c&oacute; thể kh&ocirc;ng tương th&iacute;ch với những ứng dụng sau: Lookout, NQ Mobile, AVG, ESET, Panda, Antivirus Free, Avast, Trend Micro, McAfee, Norton, Kaspersky, F-secure.</span></p>', '<p><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;">Bạn cần đọc kỹ &nbsp;"<strong>Ch&iacute;nh s&aacute;ch của sản phẩm</strong>" trước khi triển khai để tiếp thị sản phẩm một c&aacute;ch hiệu quả cũng như tr&aacute;nh vi phạm những quy định về tiếp thị.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />1.&nbsp;Loại h&igrave;nh sản phẩm</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Sản phẩm Ứng dụng&nbsp;<strong>"</strong>360 Mobile Security<strong>"</strong>&nbsp;thuộc loại sản phẩm&nbsp;<strong>CPI.</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />ĐỊNH NGHĨA:&nbsp;<strong>CPI (Cost per Install) -</strong>&nbsp;Thanh to&aacute;n theo lượt c&agrave;i đặt: Người tiếp thị sẽ nhận được hoa hồng khi c&oacute; kh&aacute;ch h&agrave;ng thực hiện h&agrave;nh động tải v&agrave; c&agrave;i đặt ứng dụng, tải phần mềm, hoặc c&aacute;c loại nội dung số kh&aacute;c</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Đối với sản phẩm "360 Mobile Security",&nbsp;<strong>một CPI được t&iacute;nh l&agrave; hợp lệ</strong>&nbsp;khi người d&ugrave;ng điện thoại thực hiện th&agrave;nh c&ocirc;ng 03 bước sau:</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bước 1: Tải th&agrave;nh c&ocirc;ng ứng dụng 360 Mobile Security từ link ph&acirc;n phối của Người tiếp thị</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bước 2: C&agrave;i đặt th&agrave;nh c&ocirc;ng ứng dụng 360 Mobile Security tr&ecirc;n điện thoại</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br />Bước 3:&nbsp;</strong><strong>Mở ứng dụng 360 Mobile Security l&ecirc;n</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br /><br />Lưu &yacute;:&nbsp;</strong>Qu&aacute; tr&igrave;nh 03 bước tr&ecirc;n ho&agrave;n to&agrave;n&nbsp;<strong>miễn ph&iacute;&nbsp;</strong>với người d&ugrave;ng.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp; &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />2. Ch&iacute;nh s&aacute;ch tiếp thị chung</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Bạn cần đọc kĩ ch&iacute;nh s&aacute;ch tiếp thị của SmartAd tại:&nbsp;<a href="http://smartad.vn/dieu_khoan_dang_ky.html" rel="nofollow" target="_blank">http://smartad.vn/dieu_khoan_dang_ky.html</a>&nbsp;để tr&aacute;nh mắc phải những quy định cấm khi tiếp thị sản phẩm, tr&aacute;nh t&igrave;nh trạng kh&ocirc;ng nhận được hoa hồng do vi phạm quy định.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />3. Ch&iacute;nh s&aacute;ch tiếp thị của Nh&agrave; cung cấp</strong><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp chỉ ghi nhận một lượt c&agrave;i đặt tr&ecirc;n mỗi điện thoại Android, tức l&agrave; nếu một kh&aacute;ch h&agrave;ng tải,&nbsp;mở ứng dụng nhiều lần th&igrave; Người tiếp thị chỉ được t&iacute;nh doanh thu cho một c&agrave;i đặt.&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Người tiếp thị kh&ocirc;ng được t&iacute;nh doanh thu nếu Người d&ugrave;ng thực hiện qu&aacute; tr&igrave;nh&nbsp;tải, c&agrave;i đặt 360 Mobile Security từ bất k&igrave; k&ecirc;nh n&agrave;o kh&aacute;c trước đ&oacute;. &nbsp; &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />4. Ch&iacute;nh s&aacute;ch về số lượng c&agrave;i đặt ứng dụng</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">- Nh&agrave; cung cấp sẽ mua một số lượng c&agrave;i đặt nhất định ứng dụng "360 Mobile Security". Khi đ&atilde; đủ số lượng c&agrave;i đặt th&agrave;nh c&ocirc;ng, sản phẩm sẽ chuyển sang trạng th&aacute;i "Tạm dừng", người d&ugrave;ng sẽ kh&ocirc;ng tải v&agrave; c&agrave;i đặt được ứng dụng từ link/ m&atilde; nh&uacute;ng của Người tiếp thị đ&atilde; triển khai tr&ecirc;n c&aacute;c k&ecirc;nh tiếp thị. SmartAd sẽ th&ocirc;ng b&aacute;o ngay cho Người tiếp thị để gỡ link/ m&atilde; nh&uacute;ng sản phẩm khỏi k&ecirc;nh tiếp thị của bạn &nbsp;&nbsp;</span><strong style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br /><br />5. Thống k&ecirc;</strong><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Người tiếp thị c&oacute; thể theo d&otilde;i về số lượng Action v&agrave; doanh thu tr&ecirc;n phần "Thống k&ecirc;" trong t&agrave;i khoản.&nbsp; &nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">Hệ thống SmartAd cập nhật thống k&ecirc; về lượt c&agrave;i đặt 360 Mobile Security (số lượng action) theo thời gian thực tức l&agrave; bất cứ action hợp lệ n&agrave;o đều xuất hiện l&ecirc;n thống k&ecirc; trong 5 ph&uacute;t sau đ&oacute;. &nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><strong><br />Số lượng Action th&agrave;nh c&ocirc;ng&nbsp;</strong>trả về được thống k&ecirc; sau khi người d&ugrave;ng ho&agrave;n th&agrave;nh&nbsp;<strong>Bước 3: Mở ứng dụng 360 Mobile Security l&ecirc;n</strong></span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;"><br />Do đ&oacute;, thống k&ecirc; action ch&iacute;nh thức (ở trạng th&aacute;i "Đ&atilde; duyệt") thường&nbsp;<strong>bằng hoặc thấp hơn</strong>&nbsp;thống k&ecirc; Action ở trạng th&aacute;i "Chờ duyệt" trước đ&oacute;. Tỉ lệ ch&ecirc;nh lệch&nbsp;t&ugrave;y thuộc v&agrave;o k&ecirc;nh v&agrave; c&aacute;ch thức Người tiếp thị triển khai.</span><span style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px; background-color: #f4f5f7;">&nbsp;&nbsp;&nbsp;</span><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /><br style="color: #555555; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 13px; line-height: 18.571430206298828px;" /></p>', 'market://details?id=com.qihoo.security&referrer=qihoo_id%3D104685%26qihoo_subid%3D141035009501%26click_id%3D{pubid}-{timetick}', '', 4000, '3.5 M', '2014-11-02 09:17:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
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

DROP TABLE IF EXISTS `interaction`;
CREATE TABLE IF NOT EXISTS `interaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day_click` int(11) DEFAULT '0',
  `success` int(11) DEFAULT '0',
  `revenue` double DEFAULT '0',
  `date` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

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
(8, 3, 1, 5, 4, 18000, 141029),
(9, 5, 1, 1, 0, 0, 141104),
(10, 3, 1, 1, 0, 0, 141104);

-- --------------------------------------------------------

--
-- Table structure for table `interaction_info`
--

DROP TABLE IF EXISTS `interaction_info`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

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
(19, 8, 1, NULL, NULL, '2014-10-29 09:46:19', NULL, '127.0.0.1', NULL, NULL, 'fbw0x1u093'),
(20, 9, 0, NULL, NULL, '2014-11-03 20:08:02', NULL, '127.0.0.1', NULL, NULL, 'ujapbekg3n'),
(21, 10, 0, NULL, NULL, '2014-11-03 20:08:16', NULL, '127.0.0.1', NULL, NULL, 'umgc2pmyl5');

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
CREATE TABLE IF NOT EXISTS `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
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

DROP TABLE IF EXISTS `merchant_statistic`;
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

DROP TABLE IF EXISTS `payment_info`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=302 ;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`id`, `user_id`, `identity_card`, `type`, `number`, `owner`, `branch`, `update_code`, `as_default`) VALUES
(6, 10, NULL, '', '', '', '', NULL, 0),
(7, 1, NULL, '', '', '', '', NULL, 0),
(8, 11, NULL, 'Vietcombank', '0491001650615', 'Nguyễn Quốc Hoàn', 'Thăng Long', NULL, 1),
(9, 12, NULL, 'Á Châu ACB', '167968429', 'Trần Tấn Phát', 'Minh Khai, Hai Bà Trưng, Hà Nội', NULL, 1),
(10, 13, NULL, 'Ngân hàng BIDV', '0000031410001290050', 'Cao Cự Quốc Cường', 'Đông Sài Gòn', NULL, 1),
(11, 14, NULL, 'vietcombank', '0711000230130', 'Hồ Văn Khánh', 'Thanh Xuân', NULL, 1),
(12, 15, NULL, '', '', '', '', NULL, 1),
(13, 16, NULL, 'vietcombank', '0541000197034', 'TRẦN QUANG HUY', 'Chương Dương', NULL, 1),
(14, 17, NULL, '', '', '', '', NULL, 1),
(15, 18, NULL, 'Vietcombank', '0491000002550', 'dinh van linh', 'Thăng Long', NULL, 1),
(16, 19, NULL, 'Vietcombank', '0451000248034', 'Nguyen Ngoc Thanh', 'Thanh Cong Ha Noi', NULL, 1),
(17, 20, NULL, '', '', '', '', NULL, 1),
(18, 21, NULL, '', '', '', '', NULL, 1),
(19, 22, NULL, 'VietComBank ', '0611001905290', 'Nguyen Huy Binh', 'Chi nhánh Ba Đình - HN', NULL, 1),
(20, 23, NULL, 'Teckcombank', '', 'Nguyễn Văn Mẫu', 'Hoàng Quốc Việt', NULL, 1),
(21, 24, NULL, 'BIDV', '012539850380', 'nguyễn thúy luật', 'cầu giấy', NULL, 1),
(22, 25, NULL, '', '', '', '', NULL, 1),
(23, 26, NULL, 'vietcombank', '0711000230130', 'Hồ Văn Khánh', 'Thanh Xuân', NULL, 1),
(24, 27, NULL, '', '', '', '', NULL, 1),
(25, 28, NULL, '', '', '', '', NULL, 1),
(26, 29, NULL, '', '', '', '', NULL, 1),
(27, 30, NULL, 'vietcombank', '861000017249', 'le thanh hung', 'chi nhánh trung đô', NULL, 1),
(28, 31, NULL, 'Vietcombank', '0491001650615', 'Nguyễn Quốc Hoàn', 'Thăng Long', NULL, 1),
(29, 32, NULL, '', '', '', '', NULL, 1),
(30, 33, NULL, '', '', '', '', NULL, 1),
(31, 34, NULL, 'Vietcombank', '0491001650615', 'Nguyễn Quốc Hoàn', 'Thăng Long', NULL, 1),
(32, 35, NULL, '', '', '', '', NULL, 1),
(33, 36, NULL, 'Vietcombank', '0691000297495', 'LUONG HOANG MANH', 'Thành Công', NULL, 1),
(34, 37, NULL, '', '', '', '', NULL, 1),
(35, 38, NULL, '', '', '', '', NULL, 1),
(36, 39, NULL, 'VietComBank', '0071000744889', 'Hoàng Ngọc Quỳnh', 'Bến Thành', NULL, 1),
(37, 40, NULL, 'Ngân hàng Kỹ Thương Việt Nam (Techcombank)', '19020222188018', 'Nguyễn Văn Đồng', 'Sở Giao Dịch Hà Nội ', NULL, 1),
(38, 41, NULL, 'Vietinbank', '711A16416464', 'Trần Văn Thọ', 'Hưng Yên', NULL, 1),
(39, 42, NULL, '', '', '', '', NULL, 1),
(40, 43, NULL, 'Agribank ', '1507205586282', 'Hoang Anh Nhat', 'Nam Thăng Long', NULL, 1),
(41, 44, NULL, 'Vietcombank', '', 'Nguyễn Thị Phương Anh', 'Hà Tây', NULL, 1),
(42, 45, NULL, '', '', '', '', NULL, 1),
(43, 46, NULL, '', '', '', '', NULL, 1),
(44, 47, NULL, '', '', '', '', NULL, 1),
(45, 48, NULL, 'Agribank', '2714205060722', 'Dương Mạnh Kiên', 'Tam Nông - Phú Thọ', NULL, 1),
(46, 49, NULL, '', '', '', '', NULL, 1),
(47, 50, NULL, '', '', '', '', NULL, 1),
(48, 51, NULL, '', '', '', '', NULL, 1),
(49, 52, NULL, 'VIETCOMBANK: Ngân hàng thương mại cổ phần Ngoại thương Việt Nam', '0011003759076', 'LUU THI THU HUYEN', 'Hội sở Hà Nội', NULL, 1),
(50, 53, NULL, '', '', '', '', NULL, 1),
(51, 54, NULL, '', '', '', '', NULL, 1),
(52, 55, NULL, '', '', '', '', NULL, 1),
(53, 56, NULL, '', '', '', '', NULL, 1),
(54, 57, NULL, '', '', '', '', NULL, 1),
(55, 58, NULL, '', '', '', '', NULL, 1),
(56, 59, NULL, 'vietcombank', '0491000034831', 'Vũ Văn Chung', 'Vietcombank - Kim Liên', NULL, 1),
(57, 60, NULL, '', '', '', '', NULL, 1),
(58, 61, NULL, '', '', '', '', NULL, 1),
(59, 62, NULL, 'ArgriBank', '1902206272810', 'Mai Đăng Khoa', 'NGÂN HÀNG AGRIBANK(CHI NHÁNH 4 - HỒ CHÍ MINH)', NULL, 1),
(60, 63, NULL, '', '', '', '', NULL, 1),
(61, 64, NULL, 'Vietcombank', '0591000225924', 'Lê Văn Tuấn', 'Hưng Yên', NULL, 1),
(62, 65, NULL, 'VietCombank', '0491000413128', 'Nguyễn Hùng Mạnh', 'Vietcombank Thăng Long        ', NULL, 1),
(63, 66, NULL, '', '', '', '', NULL, 1),
(64, 67, NULL, '', '', '', '', NULL, 1),
(65, 68, NULL, 'vietcombank', '0181001148235', 'Hoang Bao Kiem', 'Nam Sai Gon', NULL, 1),
(66, 69, NULL, '', '', '', '', NULL, 1),
(67, 70, NULL, 'VietinBank', '711AA7416775', 'LE BAC NAM', 'Ninh Bình', NULL, 1),
(68, 71, NULL, 'TECHCOMBANK', '10722240452018', 'Trần Minh Đức', 'Ngân Hàng TECHCOMBANK Đà Nẵng', NULL, 1),
(69, 72, NULL, 'Vietcombank', '0361000234929', 'HỒ VIỄN THÔNG', 'Chi nhánh Vĩnh Phúc', NULL, 1),
(70, 73, NULL, 'Vietcombank', '0351000728458', 'Nguyễn Thị Nga', 'Vietcombank Bắc Ninh', NULL, 1),
(71, 74, NULL, '', '', '', '', NULL, 1),
(72, 75, NULL, '', '', '', '', NULL, 1),
(73, 76, NULL, 'Vietcombank', '0341001661108', 'Vũ Văn Tỉnh', 'Hải Dương', NULL, 1),
(74, 77, NULL, '', '', '', '', NULL, 1),
(75, 78, NULL, '', '', '', '', NULL, 1),
(76, 79, NULL, '', '', '', '', NULL, 1),
(77, 80, NULL, '', '', '', '', NULL, 1),
(78, 81, NULL, '', '', '', '', NULL, 1),
(79, 82, NULL, '', '', '', '', NULL, 1),
(80, 83, NULL, 'Vietcombank', '', '', '', NULL, 1),
(81, 84, NULL, 'Đông Á Bank', '0105984475', 'Nghiêm Xuân Cường', 'Chi Nhánh Thanh Xuân', NULL, 1),
(82, 85, NULL, 'Đông Á', '0104172929', 'Võ Tấn Giàu', 'Long Xuyên - An Giang', NULL, 1),
(83, 86, NULL, '', '', '', '', NULL, 1),
(84, 87, NULL, 'doanhmanhtu', 'doanhmanhtu', 'doanhmanhtu', 'doanhmanhtu', NULL, 1),
(85, 88, NULL, '', '', '', '', NULL, 1),
(86, 89, NULL, 'Vietcombank', '0361000223830', 'HOANG DAI HAI', 'Vĩnh Phúc', NULL, 1),
(87, 90, NULL, '', '', '', '', NULL, 1),
(88, 91, NULL, '', '', '', '', NULL, 1),
(89, 92, NULL, '', '', '', '', NULL, 1),
(90, 93, NULL, '', '', '', '', NULL, 1),
(91, 94, NULL, 'vietcombank', '0491000002883', 'Trần Văn Quang', 'Thăng Long', NULL, 1),
(92, 95, NULL, 'vietinbank', '711A30934655', 'NGUYEN VAN QUYET', 'Nghệ An', NULL, 1),
(93, 96, NULL, '', '', '', '', NULL, 1),
(94, 97, NULL, '', '', '', '', NULL, 1),
(95, 98, NULL, 'Maritime Bank', '11001019620533', 'Nguyễn Tiến Đạt', 'Minh Khai - Hà Nội', NULL, 1),
(96, 99, NULL, 'Đông Á', '0104417803', 'Mai Phương Anh', 'Quảng Ngãi', NULL, 1),
(97, 100, NULL, '', '', '', '', NULL, 1),
(98, 101, NULL, '', '', '', '', NULL, 1),
(99, 102, NULL, '', '', '', '', NULL, 1),
(100, 103, NULL, '', '', '', '', NULL, 1),
(101, 104, NULL, '', '', '', '', NULL, 1),
(102, 105, NULL, '', '', '', '', NULL, 1),
(103, 106, NULL, 'vietcombank', '0771000802987', 'Le The Anh', 'Đông Hà- Quảng Trị', NULL, 1),
(104, 107, NULL, 'Chua co', 'Chua co', 'Chua co', 'Chua co', NULL, 1),
(105, 108, NULL, 'Viettinbank', '', '', '', NULL, 1),
(106, 109, NULL, '', '', '', '', NULL, 1),
(107, 110, NULL, 'Vietcombank', '0451001582212', 'Nguyễn Trọng Khoa', 'Thành Công', NULL, 1),
(108, 111, NULL, '', '', '', '', NULL, 1),
(109, 112, NULL, '', '', '', '', NULL, 1),
(110, 113, NULL, 'Agribank', '3910220014286', 'Lê Xuân Quý', 'Triệu Phong Quảng Trị', NULL, 1),
(111, 114, NULL, '', '', '', '', NULL, 1),
(112, 115, NULL, 'Vietcombank', '0031000647366', 'Trần Xuân Thủy', 'Hải Phòng', NULL, 1),
(113, 116, NULL, '', '', '', '', NULL, 1),
(114, 117, NULL, 'Vietcombank', '0341006811599', 'Pham Trung Dung', 'Vietcombank Chi Nhánh Hải Dương', NULL, 1),
(115, 118, NULL, '', '', '', '', NULL, 1),
(116, 119, NULL, '', '', '', '', NULL, 1),
(117, 120, NULL, '', '', '', '', NULL, 1),
(118, 121, NULL, '', '', '', '', NULL, 1),
(119, 122, NULL, '', '', '', '', NULL, 1),
(120, 123, NULL, '', '', '', '', NULL, 1),
(121, 124, NULL, '', '', '', '', NULL, 1),
(122, 125, NULL, '', '', '', '', NULL, 1),
(123, 126, NULL, '', '', '', '', NULL, 1),
(124, 127, NULL, 'Ngân Hàng Nông Nghiệp và phát triển nông thôn Việt Nam', '8105205033844', 'Chúc Tạ Quang', 'huyện Na Hang - tỉnh Tuyên Quang', NULL, 1),
(125, 128, NULL, 'Vietcombank', '0141000730539', 'TRẦN VĂN HIỂU', 'Vietcombank', NULL, 1),
(126, 129, NULL, '', '', '', '', NULL, 1),
(127, 130, NULL, 'Vietcombank', '0491001650615', 'Nguyễn Quốc Hoàn', 'Thăng Long', NULL, 1),
(128, 131, NULL, '', '', '', '', NULL, 1),
(129, 132, NULL, '', '', '', '', NULL, 1),
(130, 133, NULL, '', '', '', '', NULL, 1),
(131, 134, NULL, 'Vietcombank', '0011003796113', 'Nguyễn Duy Thanh', '285 Đội Cấn - Ba Đình - Hà Nội', NULL, 1),
(132, 135, NULL, '', '', '', '', NULL, 1),
(133, 136, NULL, 'agriabank ', '3900205215399', 'nguyễn văn thành', 'quảng trị  ', NULL, 1),
(134, 137, NULL, 'Agribank', '3100220025025', 'Vũ Văn Toàn', 'Từ Liêm, Hà Nội', NULL, 1),
(135, 138, NULL, 'aribank', '3900205215399', 'nguyễn văn thành ', 'quảng trị  ', NULL, 1),
(136, 139, NULL, '', '', '', '', NULL, 1),
(137, 140, NULL, 'Vietcombank', '', '', '', NULL, 1),
(138, 141, NULL, 'VietinBank', '711A60494573', 'TONG VAN CHUYEN', 'VietinBank Thăng Long', NULL, 1),
(139, 142, NULL, 'viettinbank ', '711a66982306', 'từ ngọc hoa', 'hue ', NULL, 1),
(140, 143, NULL, 'VietinBank', '711A04589199', 'Tran Trong Nghia', 'VietinBank Thai Nguyen', NULL, 1),
(141, 144, NULL, '', '', '', '', NULL, 1),
(142, 145, NULL, '', '', '', '', NULL, 1),
(143, 146, NULL, 'VietinBank', '711AA2527386', 'DAM VAM NINH', 'VietinBank Thăng Long', NULL, 1),
(144, 147, NULL, '', '', '', '', NULL, 1),
(145, 148, NULL, '', '', '', '', NULL, 1),
(146, 149, NULL, '', '', '', '', NULL, 1),
(147, 150, NULL, 'Vietcombank', '0361000204550', 'Hồ Xuân Nam', 'Phúc Yên - Vĩnh Phúc', NULL, 1),
(148, 151, NULL, 'Maritime Bank', '02001018903321', 'HOÀNG NHẬT MINH', 'Maritime Bank Hải Phòng', NULL, 1),
(149, 152, NULL, 'Agribank', '5603215021942', 'Nguyen Van Thanh', 'Bình Long, tỉnh Bình Phước', NULL, 1),
(150, 153, NULL, '', '', '', '', NULL, 1),
(151, 154, NULL, '', '', '', '', NULL, 1),
(152, 155, NULL, '', '', '', '', NULL, 1),
(153, 156, NULL, '', '', '', '', NULL, 1),
(154, 157, NULL, '', '', '', '', NULL, 1),
(155, 158, NULL, '', '', '', '', NULL, 1),
(156, 159, NULL, '', '', '', '', NULL, 1),
(157, 160, NULL, '', '', '', '', NULL, 1),
(158, 161, NULL, '', '', '', '', NULL, 1),
(159, 162, NULL, '', '', '', '', NULL, 1),
(160, 163, NULL, '', '', '', '', NULL, 1),
(161, 164, NULL, 'Vietcombank', '0341005919451', 'Doan Van Cuong', 'Tu Liem-Ha Noi', NULL, 1),
(162, 165, NULL, '', '', '', '', NULL, 1),
(163, 166, NULL, '', '', '', '', NULL, 1),
(164, 167, NULL, '', '', '', '', NULL, 1),
(165, 168, NULL, '', '', '', '', NULL, 1),
(166, 169, NULL, '', '', '', '', NULL, 1),
(167, 170, NULL, '', '', '', '', NULL, 1),
(168, 171, NULL, '', '', '', '', NULL, 1),
(169, 172, NULL, '', '', '', '', NULL, 1),
(170, 173, NULL, '', '', '', '', NULL, 1),
(171, 174, NULL, 'Ngân Hàng VPBank', '56295078', 'DO XUAN HOA', 'Ngân hàng VPBank (Chi nhánh VPB Trung Hòa Nhân Chính)', NULL, 1),
(172, 175, NULL, '', '', '', '', NULL, 1),
(173, 176, NULL, 'Vietcombank', '0441000657610', 'Nguyễn Thắng Mạnh', 'Ngân hàng VietComBank (Chi nhánh Tân Sơn Nhì - Thành phố Hồ Chí Minh)', NULL, 1),
(174, 177, NULL, '', '', '', '', NULL, 1),
(175, 178, NULL, '', '', '', '', NULL, 1),
(176, 179, NULL, '', '', '', '', NULL, 1),
(177, 180, NULL, '', '', '', '', NULL, 1),
(178, 181, NULL, 'AChauBank', '160238519', 'Vũ Anh Tuấn', 'Ngân hàng AChauBank ( Chi nhánh Trần Đại Nghĩa - Hai Bà Trưng - Hà Nội )', NULL, 1),
(179, 182, NULL, '', '', '', '', NULL, 1),
(180, 183, NULL, '', '', '', '', NULL, 1),
(181, 184, NULL, '', '', '', '', NULL, 1),
(182, 185, NULL, 'Vietinbank', '711AA2540252', 'Nguyễn Thành Đạt', 'Vietinbank Đống Đa', NULL, 1),
(183, 186, NULL, 'Vietinbank', '711AA2540252', 'Nguyễn Thành Đạt', 'Vietinbank Đống Đa', NULL, 1),
(184, 187, NULL, 'seabank', '01000000252238', 'Nguyễn Khắc Dũng', '11 Trần Đại Nghĩa - Hai Bà Trưng- Hà Nội', NULL, 1),
(185, 188, NULL, 'Ngân Lượng', '', '', '', NULL, 1),
(186, 189, NULL, 'Agribank', '5105205016639', 'Tạ Trấn', 'Huyện Sa Thầy', NULL, 1),
(187, 190, NULL, '', '', '', '', NULL, 1),
(188, 191, NULL, '', '', '', '', NULL, 1),
(189, 192, NULL, 'ngân hàng công thương việt nam', '101010006750159', 'nguyen phat tai', 'vinh long', NULL, 1),
(190, 193, NULL, '', '', '', '', NULL, 1),
(191, 194, NULL, '', '', '', '', NULL, 1),
(192, 195, NULL, '', '', '', '', NULL, 1),
(193, 196, NULL, '', '', '', '', NULL, 1),
(194, 197, NULL, '', '', '', '', NULL, 1),
(195, 198, NULL, '', '', '', '', NULL, 1),
(196, 199, NULL, 'Techcombank', '19027232684018', 'Nguyễn Kim Quảng', 'Cầu Giấy', NULL, 1),
(197, 200, NULL, 'Vietcombank', '0771000802987', 'Lê Thế Anh', 'TP Đông Hà - Tỉnh Quảng Trị', NULL, 1),
(198, 201, NULL, '', '', '', '', NULL, 1),
(199, 202, NULL, 'ACB', '4214945601180268', 'Đình Quang Khải', '', NULL, 1),
(200, 203, NULL, 'Techcombank', '19026561179018', 'Nguyễn Trọng Huân', 'Từ Liêm', NULL, 1),
(201, 204, NULL, 'BIDV', '39010000554801', 'HOANG VAN  LINH', 'BIDV Thai nguyen', NULL, 1),
(202, 205, NULL, '', '', '', '', NULL, 1),
(203, 206, NULL, 'VietComBank', '0451000273239', 'Nguyễn Chí Tiến', 'Thành Công', NULL, 1),
(204, 207, NULL, 'vietinbank', '711AA0706274', 'liễu gia lương', 'lạng sơn', NULL, 1),
(205, 208, NULL, '', '', '', '', NULL, 1),
(206, 209, NULL, 'Đông Á', '0108475897', 'Lê Minh Quân', 'Thanh Khê', NULL, 1),
(207, 210, NULL, 'Vietinbank', '711A30244181', 'Do Quoc Minh', 'Ha Noi', NULL, 1),
(208, 211, NULL, '', '', '', '', NULL, 1),
(209, 212, NULL, 'Agribank - Ngân hàng nông nghiệp và phát triển nông thôn', '2890205169402', 'Hoàng Công Tuyến', 'Phúc Yên', NULL, 1),
(210, 213, NULL, 'Sacombank', '026666668889', 'Phạm Quang Anh', 'Đống Đa - Hà Nội', NULL, 1),
(211, 214, NULL, '', '', '', '', NULL, 1),
(212, 215, NULL, 'ACB', '', 'Nguyen Thanh Ha Nam', '', NULL, 1),
(213, 216, NULL, '', '', '', '', NULL, 1),
(214, 217, NULL, 'BIDV', '12210000730299', 'Lê Minh Trường', 'Hà Thành', NULL, 1),
(215, 218, NULL, 'BIDV', '12210000730305', 'Đoàn Văn Tú', 'Hà Thành', NULL, 1),
(216, 219, NULL, '', '', '', '', NULL, 1),
(217, 220, NULL, 'VCB', '0101001083336', 'DANG DUY HUNG', 'Vinh - Nghệ an', NULL, 1),
(218, 221, NULL, '', '', '', '', NULL, 1),
(219, 222, NULL, 'Vietcombank', '', 'NGUYEN MINH NHAT', 'PHÚ THỌ', NULL, 1),
(220, 223, NULL, '', '', '', '', NULL, 1),
(221, 224, NULL, 'Agribank - ngân hàng nông nghiệp và phát triển nông thôn', '2890205169402', 'Hoàng Công Tuyến', 'Phúc Yên', NULL, 1),
(222, 225, NULL, '', '', '', '', NULL, 1),
(223, 226, NULL, '', '', '', '', NULL, 1),
(224, 227, NULL, '', '', '', '', NULL, 1),
(225, 228, NULL, '', '', '', '', NULL, 1),
(226, 229, NULL, '', '', '', '', NULL, 1),
(227, 230, NULL, 'Dongabank', '0109322620', 'Lương Văn Tùng', 'PGD Cầu Giấy', NULL, 1),
(228, 231, NULL, 'dongabank', '0109155475', 'Phạm Quốc Đại', 'huyen mỹ hào tinh Hưng Yên', NULL, 1),
(229, 232, NULL, '', '', '', '', NULL, 1),
(230, 233, NULL, 'Ngân hàng công thương (Vietinbank)', '711A24951291', 'Phạm Tuấn Thành', 'Sóc Sơn', NULL, 1),
(231, 234, NULL, '', '', '', '', NULL, 1),
(232, 235, NULL, '', '', '', '', NULL, 1),
(233, 236, NULL, 'agribank', '2409205070006', 'tạ Việt chinh', 'ân thi hưng yên ', NULL, 1),
(234, 237, NULL, '', '', '', '', NULL, 1),
(235, 238, NULL, '', '', '', '', NULL, 1),
(236, 239, NULL, '', '', '', '', NULL, 1),
(237, 240, NULL, 'Vietinbank', '711A40413288', 'Nông Văn Sáng', 'Số 62 Hoàng Văn Thụ - Thái Nguyên - Thái Nguyên', NULL, 1),
(238, 241, NULL, 'Vietcon', '9272727283', 'Shhss', 'Hdgshd', NULL, 1),
(239, 242, NULL, '', '', '', '', NULL, 1),
(240, 243, NULL, '', '', '', '', NULL, 1),
(241, 244, NULL, 'sacombank', '050040373362', 'triệu', 'phan thiet', NULL, 1),
(242, 245, NULL, 'Agribank', '1940205105926', 'Đỗ Thanh Trúc', 'Hiệp Phước', NULL, 1),
(243, 246, NULL, 'Agribank', '1940205105926', 'Đỗ Thanh Trúc', 'Hiệp Phước', NULL, 1),
(244, 247, NULL, '', '', '', '', NULL, 1),
(245, 248, NULL, '', '', '', '', NULL, 1),
(246, 249, NULL, 'OCEANBANK', '06006055133700018', 'PHÙNG VĂN PHÚC', 'Công ty TNHH During Việt Nam- Hải dương', NULL, 1),
(247, 250, NULL, '', '', '', '', NULL, 1),
(248, 251, NULL, '', '', '', '', NULL, 1),
(249, 252, NULL, '', '', '', '', NULL, 1),
(250, 253, NULL, 'Ngân hàng Đông Á', '0108464692', 'Phạm Trọng Mẫn', '', NULL, 1),
(251, 254, NULL, '', '', '', '', NULL, 1),
(252, 255, NULL, '', '', '', '', NULL, 1),
(253, 256, NULL, 'Agribank', '2802205040456', 'Võ Ngọc Minh', 'Mê Linh', NULL, 1),
(254, 257, NULL, '', '', '', '', NULL, 1),
(255, 258, NULL, 'agribank', '5200220105086', ' ĐINH VĂN HIIỆP', 'chi nhánh ngân hàng phát triển nông thôn agribank đại học tây nguyên', NULL, 1),
(256, 259, NULL, 'MB bank ( Ngân Hàng Quân Đội )', '7010107633007', 'Bùi Quang Thuấn', 'Chợ Lớn', NULL, 1),
(257, 260, NULL, 'Agribank', '3180205199259', 'Đinh văn Duy', 'Thanh Trì _ Hà Nội', NULL, 1),
(258, 261, NULL, '', '', '', '', NULL, 1),
(259, 262, NULL, '', '', '', '', NULL, 1),
(260, 263, NULL, 'Vietinbank', '711AA5613664', 'Nguyen Trung Hieu', 'Thanh Xuan', NULL, 1),
(261, 264, NULL, 'Vietinbank (Ngân hàng Công Thương)', '711A24951291', 'Phạm Tuấn Thành', 'Sóc Sơn', NULL, 1),
(262, 265, NULL, 'Agribank', '3202205016665', 'Phạm Anh Tuấn', 'Thành Nam', NULL, 1),
(263, 266, NULL, '', '', '', '', NULL, 1),
(264, 267, NULL, '', '', '', '', NULL, 1),
(265, 268, NULL, 'Vietcombank', '0341006813280', 'Phạm Văn Hải', 'Hải Dương', NULL, 1),
(266, 269, NULL, '', '', '', '', NULL, 1),
(267, 270, NULL, '', '', '', '', NULL, 1),
(268, 271, NULL, 'seabank', '01000000252238', 'Nguyễn Khắc Dũng', '11 trần đại nghĩa,hà bà trưng ,hà nội', NULL, 1),
(269, 272, NULL, 'Vietcombank', '0421000439969', 'Trần Thái Tân', 'Chi Nhánh Phú Thọ, Hồ Chí Minh', NULL, 1),
(270, 273, NULL, '', '', '', '', NULL, 1),
(271, 274, NULL, 'Vietinbank', '711AA5613664', 'Nguyễn Trung Hiếu', '108 Trần Hưng Đạo', NULL, 1),
(272, 275, NULL, 'MB bank', '7010107633007', 'Bùi Quang Thuấn', 'Chợ Lớn', NULL, 1),
(273, 276, NULL, '', '', '', '', NULL, 1),
(274, 277, NULL, '', '', '', '', NULL, 1),
(275, 278, NULL, '', '', '', '', NULL, 1),
(276, 279, NULL, '', '', '', '', NULL, 1),
(277, 280, NULL, 'ViettinBank', '711A74687613', 'Vũ Mạnh Hoàng', 'Ngân hàng Viettinbank ( Chi nhánh Đống Đa - Hà Nội )', NULL, 1),
(278, 281, NULL, '', '', '', '', NULL, 1),
(279, 282, NULL, '', '', '', '', NULL, 1),
(280, 283, NULL, 'Viettinbank', '9704155213572953', 'Lê Văn Kiên', 'Ngân hàng Viettinbank Thanh Khương', NULL, 1),
(281, 284, NULL, 'BIDV', '41110000216404', 'Trương Quốc Khánh', 'Mai Sơn - Sơn La', NULL, 1),
(282, 285, NULL, '', '', '', '', NULL, 1),
(283, 286, NULL, '', '', '', '', NULL, 1),
(284, 287, NULL, '', '', '', '', NULL, 1),
(285, 288, NULL, '', '', '', '', NULL, 1),
(286, 289, NULL, 'Ngân hàng công thương vietinbank', '711A13400653', 'Nguyễn Bá Huy', 'Bắc Nghệ An', NULL, 1),
(287, 290, NULL, 'vietcombank', '', '', '', NULL, 1),
(288, 291, NULL, '', '', '', '', NULL, 1),
(289, 292, NULL, 'Vietcombank', '0361000220318', 'Nguyễn Quang Chung', 'Vĩnh Phúc', NULL, 1),
(290, 293, NULL, 'Vietinbank', '711AA2540252', 'Nguyễn Thành Đạt', 'Vietinbank Đống Đa', NULL, 1),
(291, 294, NULL, '', '', '', '', NULL, 1),
(292, 295, NULL, '', '', '', '', NULL, 1),
(293, 296, NULL, 'Vietinbank', '711A58121535', 'Lê Thành Nho', 'Bến Tre', NULL, 1),
(294, 297, NULL, 'Agribank', '3518205071067', 'Cao Xuan Luan', 'Hoằng Trung-Hoằng Hóa-Thanh Hóa', NULL, 1),
(295, 298, NULL, '', '', '', '', NULL, 1),
(296, 299, NULL, 'Vietcombank', '0441000618118', 'Phan Lâm Tuấn', 'Tân Bình', NULL, 1),
(297, 300, NULL, 'Vietcombank', '0421004000514', 'Tran Lam Thong', 'HCM', NULL, 1),
(298, 301, NULL, 'Ngân Hàng ACB', '4214945800370215', 'Nguyễn Hoàng Triều', 'Ngân Hàng ACB chi Nhánh THanh Khê - Đà Nẵng', NULL, 1),
(299, 302, NULL, 'ViettinBank', '711A74687613', 'Vũ Mạnh Hoàng', 'Ngân hàng Viettinbank ( Chi nhánh Đống Đa - Hà Nội )', NULL, 1),
(300, 303, NULL, '', '', '', '', NULL, 1),
(301, 304, NULL, '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
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

DROP TABLE IF EXISTS `slider`;
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

DROP TABLE IF EXISTS `static_page`;
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
(1, 'Thông báo: Thanh toán doanh thu SmartAd 9/2014', 'thanh-toan-doanh-thu-smartad-9-2014', 'Thông báo: Thanh toán doanh thu SmartAd 9/2014 ', '<p><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: medium; background-color: #f9f9f9;">Thời gian thanh to&aacute;n l&agrave;: ng&agrave;y 15 v&agrave; 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: medium; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua bưu điện nhận tiền tại bưu cục đăng k&yacute; từ ng&agrave;y 17/08/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: medium; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua ng&acirc;n h&agrave;ng, nếu hết ngay 16/10/2014 chưa nhận được tiền th&igrave; vui l&ograve;ng pm lại BQT&nbsp;để được giải đ&aacute;p.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: medium; background-color: #f9f9f9;">C&aacute;c th&agrave;nh vi&ecirc;n nhận thanh to&aacute;n bằng thẻ điện thoại. Nhận m&atilde; thẻ trong mail tại smartAd ng&agrave;y 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: medium; background-color: #f9f9f9;">C&ograve;n bạn th&agrave;nh vi&ecirc;n n&agrave;o chưa cập nhật th&ocirc;ng tin thanh to&aacute;n, hoặc muốn thay đổi th&ocirc;ng tin thanh to&aacute;n th&igrave; vui l&ograve;ng cập nhật chậm nhất l&agrave; ng&agrave;y 12/10/2014 nh&eacute;.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: medium; background-color: #f9f9f9;">Ch&uacute;c c&aacute;c bạn kinh doanh hiệu quả ^^</span></p>', '2014-10-11 12:18:17', 1, 1, 'page', 0, 1),
(2, 'Giới Thiệu', 'gioi-thieu', 'Giới thiệu SmartAd', '<div class="col-xs-6" style="margin: 0px; padding: 0px 15px; box-sizing: border-box; position: relative; min-height: 1px; float: left; width: 600px; color: #2c3e50; font-family: Roboto; font-size: 15px; line-height: 30px; text-align: justify;">\r\n<h3 style="margin: 21px 0px 10.5px; padding: 0px; box-sizing: border-box; font-family: Lato, ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-weight: 400; line-height: 1.1; color: inherit; font-size: 26px;">Giới thiệu SmartAd</h3>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">SmartAds l&agrave; hệ thống tiếp thị li&ecirc;n kết được x&acirc;y dựng bởi Ho&agrave;ng Kim Media, ch&uacute;ng t&ocirc;i mang lại giải ph&aacute;p marketing online tốt nhất cho nh&agrave; quảng c&aacute;o với chi ph&iacute; tối thiểu, doanh thu cao nhất cho người tiếp thị c&ugrave;ng với hệ thống thống k&ecirc; tin cậy đảm bảo lợi &iacute;ch cho nh&agrave; quảng c&aacute;o v&agrave; người tiếp thị.</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; box-sizing: border-box;">M&ocirc; h&igrave;nh hoạt động</strong></p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Nh&agrave; quảng c&aacute;o đưa sản phẩm l&ecirc;n kho sản phẩm của SmartAd</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Người tiếp thị gia nhập hệ thống, lấy link sản phẩm tr&ecirc;n kho sản phẩm đi ph&acirc;n phối</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Kh&aacute;ch h&agrave;ng tương t&aacute;c sản phẩm từ link ph&acirc;n phối của người tiếp thị n&agrave;o th&igrave; t&iacute;nh doanh thu cho người tiếp thị đ&oacute; (Tương t&aacute;c gồm: c&agrave;i đặt, đăng k&yacute;, mua h&agrave;ng &hellip;)</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- Nh&agrave; cung cấp v&agrave; SmartAd đối so&aacute;t để chốt doanh thu cho người tiếp thị</p>\r\n<p style="margin: 0px 0px 10.5px; padding: 0px; box-sizing: border-box;">- SmartAd thanh to&aacute;n doanh thu cho Người tiếp thị.</p>\r\n</div>\r\n<div class="col-xs-6" style="margin: 0px; padding: 0px 15px; box-sizing: border-box; position: relative; min-height: 1px; float: left; width: 600px; color: #2c3e50; font-family: Roboto; font-size: 15px; line-height: 30px; text-align: justify;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; vertical-align: middle;" src="http://smartad.vn/asset/images/about.png" alt="" /></div>', '2014-10-12 01:43:10', 1, 6, 'page', 0, 1),
(3, 'Liên Hệ', 'lien-he', 'Advertising network', '<h2 style="margin: 21px 0px 10.5px; padding: 0px; box-sizing: border-box; font-family: Lato, ''Helvetica Neue'', Helvetica, Arial, sans-serif; text-transform: uppercase; font-size: 32px; font-weight: 400; line-height: 1.1; color: #2c3e50;">SMARTAD</h2>\r\n<address style="margin: 0px 0px 21px; padding: 0px; box-sizing: border-box; font-style: normal; line-height: 21.428571701049805px; color: #2c3e50; font-family: Roboto; font-size: 15px;"><strong style="margin: 0px; padding: 0px; box-sizing: border-box;">Advertising network</strong><br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Tầng 24.3 tầng 24 CT2 Vimeco<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Nguyễn Ch&aacute;nh<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Cầu Giấy<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />H&agrave; Nội<br style="margin: 0px; padding: 0px; box-sizing: border-box;" />Việt Nam<br style="margin: 0px; padding: 0px; box-sizing: border-box;" /><abbr style="margin: 0px; padding: 0px; box-sizing: border-box; border-bottom-style: dotted; border-bottom-color: #b4bcc2;" title="Hotline">Hotline:&nbsp;</abbr>0976.297.541<br style="margin: 0px; padding: 0px; box-sizing: border-box;" /><abbr style="margin: 0px; padding: 0px; box-sizing: border-box; border-bottom-style: dotted; border-bottom-color: #b4bcc2;" title="Phone">Phone:&nbsp;</abbr>04.62840636</address>', '2014-10-12 01:49:31', 1, 2, 'page', 0, 1),
(6, 'Giới Thiệu Dịch Vụ CPI', 'gioi-thieu-dich-vu-cpi', 'Giới Thiệu Dịch Vụ CPI', '<p>Giới Thiệu Dịch Vụ CPI</p>', '2014-10-16 22:02:27', 1, 0, 'post', 3, 1),
(7, 'Giới Thiệu Dịch Vụ CPS', 'gioi-thieu-dich-vu-cps', 'Giới Thiệu Dịch Vụ CPS', '<p>Giới Thiệu Dịch Vụ CPS</p>', '2014-10-16 22:11:24', 1, 0, 'post', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=305 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `user_role`, `user_group`, `registered_date`, `active_code`) VALUES
(1, 'admin', '14e1b600b1fd579f47433b88e8d85291', 'dao.hunter@gmail.com', 1, 0, NULL, NULL),
(2, 'longpg', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'longpg@smartosc.com', 2, NULL, NULL, NULL),
(10, 'Test_2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'test1@gmail.com', 6, 3, '2014-10-28 15:54:25', NULL),
(11, 'mmo365', '14e1b600b1fd579f47433b88e8d85291', 'boyhnhn94@gmail.com', 5, 2, '2014-11-03 16:51:14', 'a01bad3a2a4512f7d009726419b919a9'),
(12, 'trantanphat', '4293aacba7eeff7681f9bd319996030f', 'trantanphat1357@gmail.com', 5, 2, '2014-11-03 16:51:14', '249a6899a4c44e168f89f6e6988039cd'),
(13, 'thghnh', '35af3a49bbf4db1ddc4ea7d4626ab3db', 'thghnh0@gmail.com', 5, 2, '2014-11-03 16:51:14', '5aa51e98fed6025102022d1939dbdf51'),
(14, 'android', 'e31b8d3d71b2b1ce5f0168dc30fa6687', 'hvkhanh90@gmail.com', 5, 2, '2014-11-03 16:51:15', 'bc07e9049e323e4af53c2ea79f5462d0'),
(15, 'mobithink', '14e1b600b1fd579f47433b88e8d85291', '', 5, 2, '2014-11-03 16:51:15', ''),
(16, 'Gamemoi', 'f895ed4d2910e24c8304e64783503793', 'quang.huy.hd2@gmail.com', 5, 2, '2014-11-03 16:51:15', '1927f1fc20ba733871788ff7301bf1b0'),
(17, 'heartbreaker', '875b68332cac0a2f44bcac9d692b5649', 'huypv@moore.vn', 5, 2, '2014-11-03 16:51:15', 'c2f960279b3e3443264b570249638512'),
(18, 'vlgame', '4f19c7829252b6cdde1c9d4236272b17', 'hotro.vlgame@gmail.com', 5, 2, '2014-11-03 16:51:15', 'c125d56ef56a621f681a7c1ddd91955a'),
(19, 'thanhceovn', '16b116fa7ba8aa1080b7c75f74794ea9', 'thanhceovn@gmail.com', 5, 2, '2014-11-03 16:51:16', 'ef7e295d267357acda864265041f63c6'),
(20, 'thanhlarry', '16b116fa7ba8aa1080b7c75f74794ea9', 'thanhlarry@gmail.com', 5, 2, '2014-11-03 16:51:16', 'fbaf60a85dfd197b3363bf42c17c0f5e'),
(21, 'thanhlarryfb', '16b116fa7ba8aa1080b7c75f74794ea9', 'thanhlarryfb@gmail.com', 5, 2, '2014-11-03 16:51:16', 'ff8db7ed574176b77fd17e9fe96de88a'),
(22, 'BinhNH', '9db06bcff9248837f86d1a6bcf41c9e7', 'binhnh947@gmail.com', 5, 2, '2014-11-03 16:51:16', '64b0c5c3af62944becb8ab375018a2b2'),
(23, 'mankichi', '63a3fc42cf56073419fddff633920895', 'manager.hoangkimmedia@gmail.com', 5, 2, '2014-11-03 16:51:16', '735903a692b0fdfb27ad9129393c03df'),
(24, 'luatninh', 'ff3661aeb5582a4fa91ecbea4cbf9f64', 'luatninh@yahoo.com.vn', 5, 2, '2014-11-03 16:51:17', '6766e7f5ead9a8046fec530ac010e006'),
(25, 'taigamehot', '875b68332cac0a2f44bcac9d692b5649', 'huypv115@yahoo.com', 5, 2, '2014-11-03 16:51:17', 'ee46bf33bbf6e19dfe6f2fcbaa24e22c'),
(26, 'khanhhv', 'e31b8d3d71b2b1ce5f0168dc30fa6687', 'khanhhv90@yahoo.com', 5, 2, '2014-11-03 16:51:17', 'faa293a432d9ce2b42c7a24d1d12a1b5'),
(27, 'leductan95', '758a6eb7d184274211622e3cdab8af1d', 'leductan95@gmail.com', 5, 2, '2014-11-03 16:51:17', 'ec5f3ba1fe20c5666aa62a339bc6e2b6'),
(28, 'nonametouse', '840460084197465bd7f467ed4d742627', 'toanle87@gmail.com', 5, 2, '2014-11-03 16:51:17', '557c34a11c19f85bd8872b873eb15041'),
(29, 'hoangvantu', 'c7e59635266a64c4c907c3679f58ac2c', 'hoangvantundvn@gmail.com', 5, 2, '2014-11-03 16:51:17', '958eb721dfe78106982a8766e9dd4bfb'),
(30, 'hung335', '63ee451939ed580ef3c4b6f0109d1fd0', 'hg4game@gmail.com', 5, 2, '2014-11-03 16:51:18', '94cb07198aca690433793433b25abb01'),
(31, 'mmo3651', '14e1b600b1fd579f47433b88e8d85291', 'boyhnhn943@gmail.com', 5, 2, '2014-11-03 16:51:18', '4a87094158552989456d0e74088d48c9'),
(32, 'phamanhtuan', '58c7b1b0a701e46e1e73a8c319e7f042', 'phamanhtuantt1@gmail.com', 5, 2, '2014-11-03 16:51:18', 'd647ddcc83d8ab3ff28493f990fea98a'),
(33, 'tester', 'dfb7f215338c01d7a53dd9c023e4f0a3', '', 5, 2, '2014-11-03 16:51:18', ''),
(34, 'mmo3652', '14e1b600b1fd579f47433b88e8d85291', 'boyhnhn946@gmail.com', 5, 2, '2014-11-03 16:51:18', '67f773f588779378c2638fdc7d70f3cb'),
(35, 'taigamemobile24h', 'd3f1b70025472f5b245e4a1048d996de', 'baocit@gmail.com', 5, 2, '2014-11-03 16:51:19', '2905cee3eb524f4e4e4795de512de492'),
(36, 'appleteam', 'add574c573cf387b290221d91bf26ebc', 'hoangmanh89@gmail.com', 5, 2, '2014-11-03 16:51:19', 'ad5580bd1f2ef6157e64757a7e8dd009'),
(37, 'phuongha222', 'f7b759b9938757dbedc886c8b3e00119', 'canphuongha222@gmail.com', 5, 2, '2014-11-03 16:51:19', '60ac8ede9d036865bb7d732af7181ef6'),
(38, 'maluckiem', '70873e8580c9900986939611618d7b1e', '', 5, 2, '2014-11-03 16:51:19', ''),
(39, 'waz', '5f7e2f7a217a79ee120195ee39138e2f', 'tinh_ban360@yahoo.com', 5, 2, '2014-11-03 16:51:19', '44c0da83acce55fb2729d559ed6106d7'),
(40, 'bbit', '8c31422ddec2ffcc529d14831cd4b029', 'bbitcorporation@gmail.com', 5, 2, '2014-11-03 16:51:19', '3c6d5b6d3bf62ccd74f1d045c50560fa'),
(41, 'vipxinh', 'a2840e095d0c23703c7d25b607b52f9b', 'trantho1990@gmail.com', 5, 2, '2014-11-03 16:51:20', '8390e7eedb37c046b19015d2042e3c92'),
(42, 'pemiu01', 'e0024b56aa9127c2adf0332a298d1f39', 'phamgiavang@gmail.com', 5, 2, '2014-11-03 16:51:20', 'ba9e8605f2290b95191e415733765253'),
(43, 'anhnhat', '44efa0e376d50075c11e5a5adf0c26e4', 'loveyous2linh@gmail.com', 5, 2, '2014-11-03 16:51:20', 'f9a214e6ac5233fb8ef75c049d5c0982'),
(44, 'vitti', 'd7cf6a4484d8f798a74f0dd535ce6676', 'levietanh12@gmail.com', 5, 2, '2014-11-03 16:51:20', 'e9346c047c9535d106f01f490b4da51c'),
(45, 'phuoctien', '700030437cdc0e4e08a25d1bdbe7b599', 'newstyleclan@gmail.com', 5, 2, '2014-11-03 16:51:20', '7dbb079f865120b1b068400d17e143de'),
(46, 'BooPrincess', '7dcd6dc49784e97aee5baa8e622f7721', 'tronghung02091989@gmail.com', 5, 2, '2014-11-03 16:51:21', 'ca4990bfd74d75999ff7cf7d80a7231e'),
(47, 'chgame', '7011d1bff9a6e17ed7d28663e460f7c6', 'firewindmouse@yahoo.com.vn', 5, 2, '2014-11-03 16:51:21', '7a5aef0707d19abbeac16185f8445161'),
(48, 'ptbstar', '09fb1016b4df9564967cba8b7b182790', 'phuthobay.hotro@gmail.com', 5, 2, '2014-11-03 16:51:21', '8e7dcfe874217904c42719d010e160c0'),
(49, 'vinagame', 'a6283a559747a373bd1eab913bbe53af', 'yeucauratnhieu1997@gmail.com', 5, 2, '2014-11-03 16:51:21', '75dcdf47f5f79b64a3be189d26f0cd5f'),
(50, 'ucbrowser', 'e718263541fc9e2ed0fabac05da3b88d', '', 5, 2, '2014-11-03 16:51:21', ''),
(51, 'ductruong', '14e1b600b1fd579f47433b88e8d85291', 'truongnd@ditech.vn', 5, 2, '2014-11-03 16:51:22', '7c5cc59563095be404ab1fbf447b3acd'),
(52, 'dopdanhda', 'add574c573cf387b290221d91bf26ebc', 'istore.vn8888@gmail.com', 5, 2, '2014-11-03 16:51:22', 'de42b5714796282dc5a21529e9a63f59'),
(53, 'dangky', '3073339f3efa186e9ef0d984f2fc9dc2', 'bocuahoangde@gmail.com', 5, 2, '2014-11-03 16:51:22', 'e27238c36fd3bdf5ee21a29b62f3cc49'),
(54, 'hongha77', '14e1b600b1fd579f47433b88e8d85291', 'hongha77@gmail.com', 5, 2, '2014-11-03 16:51:22', '7d5b8348d5817bdad1089c7cf4b37fa6'),
(55, 'anhdqv', '9056749f0dde456780a336ea05640d0a', 'anhdqv@gmail.com', 5, 2, '2014-11-03 16:51:22', 'ec8c6b6547a6f2b2ee188e7f14109f3d'),
(56, 'anhnn', 'ab4c688729f609774b1076f04088c4f8', 'anhnn143@gmail.com', 5, 2, '2014-11-03 16:51:23', 'f2098d291883fd7274b65a1b741ea470'),
(57, 'Hangnb', '7d0a1bed9e654d3f9190e0c12cf14f6d', 'nhimhanka@gmail.com', 5, 2, '2014-11-03 16:51:23', 'cbe9a21541b25fb44bf83c8f10281416'),
(58, 'root', '1bd578c853dc0ffc9da0d282bea54718', 'trungkientn@gmail.com', 5, 2, '2014-11-03 16:51:23', '715d630e774957ce23e3bc613bd3b967'),
(59, 'kieuduclinh', '3648726366012f8699abca9d08ae9214', 'duclinh.kdl@gmail.com', 5, 2, '2014-11-03 16:51:23', '031c37beb9916f7ceaf142090d404129'),
(60, 'zinzu2611', '363e78e966acdd3842ee427c47e4766c', 'trungnt261186@gmail.com', 5, 2, '2014-11-03 16:51:23', '5dfe73f69a858bd4b691db1ef0ba6b1f'),
(61, 'trithucviet', '5d6772d61cfc0eb846482e991c616ed4', '', 5, 2, '2014-11-03 16:51:24', ''),
(62, 'khoamd', '187fa25f7913c4a7b10cb9c4bbb59f87', 'khoamd1@gmail.com', 5, 2, '2014-11-03 16:51:24', '69789731b9759f63ee5b1622ac9bd13a'),
(63, 'toranpk', '4d945cdb8d18a240b1019a3e05889c76', 'toranpk@gmail.com', 5, 2, '2014-11-03 16:51:24', '8fc292d255516b24fb6a3e380e426d0a'),
(64, 'giaitrivip', '322751d62b9d9621de54fb61f437f546', 'giaitrivip.pro@gmail.com', 5, 2, '2014-11-03 16:51:24', '75c78a082dd5045b5fb1b116aefa8458'),
(65, 'manhpro', 'ce64c6393f13ef7b13d043891176b7bd', 'adviet9x@gmail.com', 5, 2, '2014-11-03 16:51:24', '2e2e704137aa1e9710284f8b55590b6f'),
(66, 'vodanhdx', '757ab9344527473cc2fca8d0d357aca4', 'luonyeuchimotnguoi@gmail.com', 5, 2, '2014-11-03 16:51:25', 'ce1d393561691492661358a1c31a03a7'),
(67, 'manhle', 'cdaff8bf314761c2b398238ac226b141', 'manhle.tn@gmail.com', 5, 2, '2014-11-03 16:51:25', '3986c43475581580f24ae0d37ce27372'),
(68, 'kiemhoang', 'ca2596cfae52a9d4961187709c0b7b60', 'kiemhoang2008@gmail.com', 5, 2, '2014-11-03 16:51:25', '2286bf9b84e40179fd983e82b2bf8ce0'),
(69, 'Vinagame', '', '', 5, 2, '2014-11-03 16:51:25', ''),
(70, 'namxelam', 'dcb1fd2b2135f7c139abeff035a0e687', 'namxelam@gmail.com', 5, 2, '2014-11-03 16:51:26', 'fd075d9f410e974a8f1e07c62b201438'),
(71, 'tinhco', 'f6e0b1495a122a70e7fdc63bda0448cb', 'tmducqt@gmail.com', 5, 2, '2014-11-03 16:51:26', '1dd1b08236dc0a75cc7c1748f84eb980'),
(72, 'dauchankiemkhach', 'f148f71410c29d30911a097fb28b01f2', 'hovien.thong@gmail.com', 5, 2, '2014-11-03 16:51:26', '11bd94e27617764cb9accd0dc1bfbd88'),
(73, 'songnga', 'f4a6570e91ae9c22d213b74d3a9bc97a', 'songngas2@gmail.com', 5, 2, '2014-11-03 16:51:26', '093174d2a6cf158c6af38ac9c9b776b2'),
(74, 's2bac95', '3df8049d6770745ee2ec95c7b88e1f97', 's2bac95@gmail.com', 5, 2, '2014-11-03 16:51:26', 'e87b8917ea8271f7fc087ae2d773a159'),
(75, 'htmzxc', 'd19bc5de241d390220b17db7f79e0a8a', 'hatuanminh222@gmail.com', 5, 2, '2014-11-03 16:51:27', 'fc571da63f250693f5a657e3c893eac2'),
(76, 'tinhwrl', '7f7b43f7c0293b5d23f424fbce10877c', 'tinhwrl@gmail.com', 5, 2, '2014-11-03 16:51:27', '2221a78b468c4641f089c45d29f4b130'),
(77, 'thienhaanhhung', 'f148f71410c29d30911a097fb28b01f2', 'dauchankiemkhach@zing.vn', 5, 2, '2014-11-03 16:51:27', '841e8d30e9bfb79e528c21e967640d38'),
(78, 'm4vn', 'e184af1130161d480242494e24f72c0b', 'Hoanle549@gmail.com', 5, 2, '2014-11-03 16:51:27', 'c8d2717dfb2f36b6536939c9846e5d87'),
(79, 'jqkpro', '16b384c247cbc8001753fd81abe60f46', '', 5, 2, '2014-11-03 16:51:28', ''),
(80, 'jessievu', '0e9c40acc63e180e9536516d42ff1b40', 'diepvm1299@gmail.com', 5, 2, '2014-11-03 16:51:28', '1ab72ec2076ca0c20a3f32b5d8e5f464'),
(81, 'wapm4u', 'ca898a51505cb9f9588edfd4df9b32b3', 'wapm4u@gmail.com', 5, 2, '2014-11-03 16:51:28', '653f7456e9a1dff6a2c6bfdefc15fb8b'),
(82, 'flipsvn', '74d4c80dea5bd86b0459c969693dd1a5', 'flipsvn@gmail.com', 5, 2, '2014-11-03 16:51:28', 'a91717b810007de5a150fb41644553ae'),
(83, 'truyenhay', 'd52c365a2ecb4ca4d3eb0d5f3bdbdd1a', 'seoprovnn9x@gmail.com', 5, 2, '2014-11-03 16:51:28', '46522c0c144e4898ed3af15ad6412073'),
(84, 'cuong1699', '410b931220aab231d2c30a6834cd9678', 'xuancuong1609@gmail.com', 5, 2, '2014-11-03 16:51:29', '92fb1afcc963889fb4fca1fe1b915924'),
(85, 'vtgiau', '0b37d7a5df28dd4f23074278dfe0a99f', 'vtgiau@gmail.com', 5, 2, '2014-11-03 16:51:29', 'd31d2543c6ca34ceef79d01528e25b1f'),
(86, 'vanhoang0712', 'b9b81ef591aa83d20ba995d408123f76', 'mr.vanhoang.0712@gmail.com', 5, 2, '2014-11-03 16:51:29', '25f82c38c04d20d49d65fc5348115002'),
(87, 'doanhmanhtu', '5153a5bbc967133445e474545d6e37eb', 'doanhmanhtu@sdadssa.co', 5, 2, '2014-11-03 16:51:29', '22a729349c1e80a8cc9d3cd40299c265'),
(88, 'sunflower1607', '442cf596a10f4fed8905e369bb2ca3a1', 'skyvietgroup@gmail.com', 5, 2, '2014-11-03 16:51:29', '4373c0f18554487f3b04e79042df4fa8'),
(89, 'hoangdaihaibxvp', '08ff2fdd6a7aadf84fc3b2455f8e8a52', 'hoangdaihaivp23@gmail.com', 5, 2, '2014-11-03 16:51:29', 'cf68173d367cb7dcc41fc4df95b6522a'),
(90, 'hkgh2501', '49e313e42489b4782608211ae5cf347a', 'hkgh2501@gmail.com', 5, 2, '2014-11-03 16:51:30', '270e0c2d1b4e83e32089b8e825350199'),
(91, 'minhthuantctd', '2a8393cdd89f9b1e714fa22baf57702d', 'minhthuantctd@yahoo.com.vn', 5, 2, '2014-11-03 16:51:30', '831bf1e60ff530ed755e8b6ccebe24af'),
(92, 'gamejavaviet', '9291568fef1b2e6d5936ac21d7b7741a', 'gamejavaviet@gmail.com', 5, 2, '2014-11-03 16:51:30', 'b209f941a7f99f1dde73951b0f01dc13'),
(93, 'index', '4916e67825f5b8b43b08c025bc511206', 'giangho10ac25@gmail.com', 5, 2, '2014-11-03 16:51:30', 'ddcfb00e0b1d0bb9e439550bcaa51e70'),
(94, 'trangtaigame', 'ebac6cfaee10eff2f060edaf242a7f35', 'admin@thecaosieure.com', 5, 2, '2014-11-03 16:51:30', '0f870a08ac3895bbbbf69e7624e72aa0'),
(95, 'nguyenvanquyet00', 'e19d98fd5f7589367f2425be1eda560d', 'nhipdapyeuthuong@gmail.com', 5, 2, '2014-11-03 16:51:30', 'd26ecaa70b661c94c32ba5e7475c124f'),
(96, 'admaster', '14e1b600b1fd579f47433b88e8d85291', 'colevn88@yahoo.com', 5, 2, '2014-11-03 16:51:31', '911b609be1fcaa9739bbd3679cc2c2e0'),
(97, 'javagamehot', '5c83f140117f2476994b2830e72ec39a', 'lephi.hotro1@gmail.com', 5, 2, '2014-11-03 16:51:31', 'fe370bedc880e4b1d5a5b90b77d5e2bd'),
(98, 'makai', 'ead5d8d0a2083f1286b6d35258dc841b', 'makai.nt@gmail.com', 5, 2, '2014-11-03 16:51:31', '2e34d193c4938764a768e5fc5d4eba1b'),
(99, 'phuonganhmai', '24aaf96d4f4a4634d2e8dd5e59d8f041', 'maiphuonganh.s2@gmail.com', 5, 2, '2014-11-03 16:51:31', '1369b723093c17108f25313099d7dfbe'),
(100, 'thaopro1', '51dfffc14289efb4c3143df202691060', 'maixuanthao.ftu@gmail.com', 5, 2, '2014-11-03 16:51:31', 'ab198ad39341b2f1a34548a329c83525'),
(101, 'Babeboy', '51dfffc14289efb4c3143df202691060', 'haiyenls1009@gmail.com', 5, 2, '2014-11-03 16:51:31', '4635807ff1edcde202c2de0d3868db2e'),
(102, 'hackviet9b', '45a0898c2d50f9183c38aa010f2d341b', 'vietnet.hotro@gmail.com', 5, 2, '2014-11-03 16:51:32', '844fd3689b4814136ad608f8af4656d8'),
(103, 'postman', 'ec890b7f32d0accea4e983467c995368', 'ngocdang8311@gmail.com', 5, 2, '2014-11-03 16:51:32', '7474437b50160cf164ec8c16adf05049'),
(104, 'anhquynh', 'cad0ccaa95252e0f8ca77713504bf96a', 'info@gloadmarket.com', 5, 2, '2014-11-03 16:51:32', '6b1516ddc239f451bd5f56fdc50a7c6a'),
(105, 'ssgame', 'a6aa8f5765eaa57e8afda9682773f550', 'kinglady98@gmail.com', 5, 2, '2014-11-03 16:51:32', 'f5378430d0085298e9a73be6672afc7c'),
(106, 'anhlt15', '5bba656080b5297aa8b2e4fa67dae4c0', 'levanvu199x@gmail.com', 5, 2, '2014-11-03 16:51:32', 'c6915bad53aae6a34013449b9980affa'),
(107, 'TrongTin', '5703eb70fe7872b3bf0db7f5e9238bbb', 'Hotb0ylatao@yahoo.com', 5, 2, '2014-11-03 16:51:33', '74b377840098c280279f55b03a8e4295'),
(108, 'ltthtrunghau', '702f8e335672f27bfea20bc827cc9faa', 'nhocksock_batchaptatcamoiladaiik@yahoo.com.vn', 5, 2, '2014-11-03 16:51:33', '3e3025c752971d992234d06cb7721c04'),
(109, 'mplay', 'df2aa670c471e07a131f5fe84a098a33', 'lit.ch1989@gmail.com', 5, 2, '2014-11-03 16:51:33', 'a52be320926b3f1b1564283614e2ca65'),
(110, 'hdhay.com', 'e1c2f10d45700741d818eaa077be2b1a', 'hdhay.com@gmail.com', 5, 2, '2014-11-03 16:51:34', 'a2af9ffe12f60970624888b70f006efa'),
(111, 'vimini', 'b334934c831e6eb418ac6e1d6f7a6cb3', 'vinachat2010@yahoo.com', 5, 2, '2014-11-03 16:51:34', '57a2269f4671d0c7d2fbcb39308fd5ed'),
(112, 'trungfx', '621caf7d5bfc4b2c847660abd5703ae3', 'trungfx@gmail.com', 5, 2, '2014-11-03 16:51:34', '5fd74e78c6e73c23fb50c48643ad7f90'),
(113, 'hantinh169', 'e8b0940418af3eff1916fb426ce713c2', 'foever.love1989@gmail.com', 5, 2, '2014-11-03 16:51:34', 'ed3ec8d55ca0b7d49fc381dfab51e320'),
(114, 'khanhgadotcom', 'e01a86014288e89ee7940219bb828651', 'khanhgadotcom@gmail.com', 5, 2, '2014-11-03 16:51:34', '6424d29a6adec426f9ca2b9ba563cedf'),
(115, 'ttf', 'd4b4d12d5381cd7498cc1ed909408d5d', 'thuytranfi@gmail.com', 5, 2, '2014-11-03 16:51:34', 'af36364a72e185ee6827c0b51733ae46'),
(116, 'mukimvuong', '92d593666c1c3d05eb2ef3ccf75b1e38', '', 5, 2, '2014-11-03 16:51:34', ''),
(117, 'hd00842', 'ffb7347500fa2052e5cbe3260c3fc2d3', 'ceo@tdhweb.com', 5, 2, '2014-11-03 16:51:35', 'ca3ce01ce5623a18939bfa0fbdbaa631'),
(118, 'khoctham', 'e15f054da572a9e4b177ca6c163bf3a8', 'nhokpunvisao@gmail.com', 5, 2, '2014-11-03 16:51:35', '05edb392c546be9048c8a86a1cd71b88'),
(119, 'k3ndyhai', 'e15f054da572a9e4b177ca6c163bf3a8', 'nhokpunvisao01@gmail.com', 5, 2, '2014-11-03 16:51:35', '837f4f40cb9428afa79c8cff7e8bdd5e'),
(120, '159', '1baad532f34b2bb05e60d839c105d178', 'nguyennghia74@gmail.com', 5, 2, '2014-11-03 16:51:36', 'e0b33d2926d914966c1d94c96f25754b'),
(121, 'wapteen', 'a224ef5174e002de3f1b721725918b94', 'huantpvn@gmail.com', 5, 2, '2014-11-03 16:51:36', 'f8fbc1a3795fbad3a86ce24546e6e84d'),
(122, 'hocchoithoima', '9714fd3868f895155b06d297eec427d7', 'phamhongtan90@gmail.com', 5, 2, '2014-11-03 16:51:36', 'e183b24cc7c6bf34087c4e4eef4b04f5'),
(123, 'chungnv', '1c8293b5d4639e0ff87954de176c3fe5', 'v.chung.tmdt@gmail.com', 5, 2, '2014-11-03 16:51:36', '2f2b851ec3d92aaa3e8edad31d899de1'),
(124, 'qri', 'ffd37342792884a7561b272fd986f67a', 'nguyenvant138@gmail.com', 5, 2, '2014-11-03 16:51:37', '74dfb751b7cec1606d5f568904f14ba1'),
(125, 'giangvn', '0b2fd4f59d3e6ae8f335e1ddf2d30713', 'giangvn4u@gmail.com', 5, 2, '2014-11-03 16:51:37', '5b1f9fca0628fb76697d0126de3042aa'),
(126, 'huantpvn', '9eb131adc6198f644419fc666dbea36b', 'it2casteprono1@gmail.com', 5, 2, '2014-11-03 16:51:37', '45b1bd0ea266a7eb5cccd3420613268d'),
(127, 'gthang', '09c60d6778ff925345b937744f0be864', 'chucthanhnghia.97@gmail.com', 5, 2, '2014-11-03 16:51:37', 'fb5d9eb83292968ac3044623ea1a1e18'),
(128, 'wap247', 'd52c365a2ecb4ca4d3eb0d5f3bdbdd1a', 'wap247.org@gmail.com', 5, 2, '2014-11-03 16:51:37', 'f0cccbc8391b162797b1ee8c51055a7f'),
(129, 'ladypro', '14e1b600b1fd579f47433b88e8d85291', 'thaobeo2@gmail.com', 5, 2, '2014-11-03 16:51:37', '29af07c5d497d537f3c2cefc66830150'),
(130, 'mmo3653', '14e1b600b1fd579f47433b88e8d85291', 'boyhnhn948@gmail.com', 5, 2, '2014-11-03 16:51:38', '4c57e3e68cc184bcbdb0eca9b5101b73'),
(131, 'Mekinhdoanh', 'f9e0697971426e5c99ea9d0ffc69f034', 'mekinhdoanh078@gmail.com', 5, 2, '2014-11-03 16:51:38', 'a44627ee667d6352b90fce273bf14733'),
(132, 'ducphanquyen', '5748cbe38adde1cda62431696c9d0d36', 'ducphanquyen@gmail.com', 5, 2, '2014-11-03 16:51:38', 'db4b7f0bd62e02c4cf1a2caf2adb56a9'),
(133, 'tungtino', 'e9fe062a184a577a22cbbd9db0245078', 'nguyendangtung.vcu@gmail.com', 5, 2, '2014-11-03 16:51:38', 'df9f683fdc6ac72a78047ca4d3df0b29'),
(134, 'meocon', 'd7469a7f5dcfb8ae7a955987c8373f22', 'thanh.az24@gmail.com', 5, 2, '2014-11-03 16:51:39', 'd4e2da23650cb2ade65cdf4ac2325857'),
(135, 'mobi24h', 'f433312631191e5b0a0f817ce29cd5d9', 'ninhphamquang@gmail.com', 5, 2, '2014-11-03 16:51:39', 'b183e1c80e634b905ece152684a48d13'),
(136, 'qti', 'ffd37342792884a7561b272fd986f67a', 'thanhquangtri.comk5@gmail.com', 5, 2, '2014-11-03 16:51:39', 'a1032a2f8f178c7d910222aa360e8f6d'),
(137, 'NSC', 'aeefcef326e4ee6df915e865667b49cc', 'info.zobi@gmail.com', 5, 2, '2014-11-03 16:51:39', 'af753e6bd14e7451b6f472199c0d470f'),
(138, 'qtr', 'ffd37342792884a7561b272fd986f67a', 'minhtinhtieuquy_2004@yahoo.com', 5, 2, '2014-11-03 16:51:39', 'd5825134d3ac8195030d324fb6f56e9a'),
(139, 'chuyendungktnd', 'a7a01fd749b45df0603e8f56f7ebb180', 'mrdamtieu@gmail.com', 5, 2, '2014-11-03 16:51:40', 'da573ac27440c39af3d0362d121120e9'),
(140, 'tjjt2012', '96dde55fdef3344a5279ce914520b93b', 'handt84@gmail.com', 5, 2, '2014-11-03 16:51:40', 'd80a91458cb7e1f2d03013a2c6b76b82'),
(141, 'tongchuyen1991', '677ef5f769602147f7270cda3967ab97', 'tongchuyen1991@gmail.com', 5, 2, '2014-11-03 16:51:40', 'f42251d78a70539e1ec03282982d17a2'),
(142, 'tnv', 'eb123296192fae2000a7fffced84f533', 'qtr071089@gmail.com', 5, 2, '2014-11-03 16:51:40', '6a385eb74549cc21e28cf6fe8fbdc548'),
(143, 'nghiatt86', '14e1b600b1fd579f47433b88e8d85291', 'nghia.mr@gmail.com', 5, 2, '2014-11-03 16:51:40', '1ab8b0496e0dd4bffe7c143489c659b1'),
(144, 'mcprolinh', 'a1a60b099e3a2e9281c350a860423d27', 'mcprolinh@gmail.com', 5, 2, '2014-11-03 16:51:41', 'a3761c4c11ed034fb7a71da5dd3a96e5'),
(145, 'buomxinh', 'c9754c517b53be982f650319938a81a6', 'vietpromaster@gmail.com', 5, 2, '2014-11-03 16:51:41', 'cb307dd69b17ffc641dc9be36bb49cdc'),
(146, 'damvanninh1995', '16696d2404907eebadaa56e49927ea2a', 'damvanninh1995@gmail.com', 5, 2, '2014-11-03 16:51:41', '07014b062964722e9f14b30532327ca5'),
(147, 'wapmobi', 'b8136bf9955038a7e3ee54dd71970192', 'wapmobi.vn@gmail.com', 5, 2, '2014-11-03 16:51:41', 'd204dd08d75e93499c347dd55a29d2e1'),
(148, 'phamvankhanh95', '4acac25695a403f9e4eff192ae112d86', 'khanh55c3@gmail.com', 5, 2, '2014-11-03 16:51:41', '65d99ad58086f8c6d63093131e2df7ab'),
(149, 'returnsale', '70f293cca9efd6b1fc865a2805d7d6a2', 'carryhaven@gmail.com', 5, 2, '2014-11-03 16:51:42', '0b5d32fd43575f8bb2704d4d6c961c6a'),
(150, 'hophudat', '414cc19271a26b93e75fdbca4d4e3363', 'hophudat@gmail.com', 5, 2, '2014-11-03 16:51:42', 'f598733522a528fea9352e2bbe119c85'),
(151, 'deathook', 'fd3a28088f0268788162c0d2f49414f0', 'hoangnhatminh@gmail.com', 5, 2, '2014-11-03 16:51:42', '7eb2c26ee2412d54e6d5bf5250ed57b8'),
(152, 'kenhphimtruyen', 'd3dc9593542cbec50bda4ab6be88cc64', 'kenhphimtruyen.com@gmail.com', 5, 2, '2014-11-03 16:51:42', '8c6b74ce8ceaf78430b8841578bc427d'),
(153, 'leehieu30', '5b2d25befff3842006a1f56ef78e6ddf', 'kengoaidao.thuaff@gmail.com', 5, 2, '2014-11-03 16:51:42', 'ba3c7d17cb9e6e27168e9a40b1335b1b'),
(154, 'Hoàng Hữu Thư', 'a3f62aa298cecf9e97e33cacd07544d9', 'Hoanghuuthu@gmail.com', 5, 2, '2014-11-03 16:51:43', '589de885ba989f7bab49e1a0a3b84e68'),
(155, 'vietnampay', '0ed22ec5c73e402c76133aa88406505a', 'vietnampay@hotmail.com', 5, 2, '2014-11-03 16:51:43', '49ea0d687b258093e5894d9a9b8d3980'),
(156, 'parkupload', '0ed22ec5c73e402c76133aa88406505a', 'support@parkupload.com', 5, 2, '2014-11-03 16:51:43', 'e1cf0a7aed1e235ed74e83acda5efe4c'),
(157, 'dauquangtu', '74d1ff7fb4857774dcf87c285b41e283', 'admin@360newcar.info', 5, 2, '2014-11-03 16:51:43', '2f149f1a408a20db8cdd9e7f095fd377'),
(158, 'ngocphuong12cat', 'b2dd5983186ab9a99b2dadf22ce26a16', 'adminc0909iv@gmail.com', 5, 2, '2014-11-03 16:51:43', '57f704cbd5baf7673032e108149a4e60'),
(159, 'taimobogenie', '7471866a2f287d32cfddf0de3f975ed2', 'congtb999@yahoo.com', 5, 2, '2014-11-03 16:51:44', 'b1d985233b5fe52db0c333024159c2ac'),
(160, 'bimdoan', 'b0171dd039def76460b79c9abe182bb4', 'bimdoan@gmail.com', 5, 2, '2014-11-03 16:51:44', '52246185c433b0dc25147e390fef1da9'),
(161, 'avatargame', '016d937c523b1ec6a88b9955ef86f55a', 'maiyeucau97@gmail.com', 5, 2, '2014-11-03 16:51:44', 'e1a0e129d62d09e2248f4f2352c34648'),
(162, 'taivemay', '64eaefac5d30b28df38d5a659c97d701', 'vxhung.hn@gmail.com', 5, 2, '2014-11-03 16:51:44', 'cc0194402a82afa46e35a9631267f055'),
(163, 'thuyduongnsx', '47aff2047d2f76f3f2ab31797a88f465', 'thuyduong@cafesangtao.com', 5, 2, '2014-11-03 16:51:44', '10f6dc5818a4fc5b99e5f8764489d54f'),
(164, 'tonycuong', '861d0133a50b9f91ff5133c9ab609d73', 'doancuong.6192@gmail.com', 5, 2, '2014-11-03 16:51:45', 'bd6ca029a1930b517137e2042bddb260'),
(165, 'Badboy', '51dfffc14289efb4c3143df202691060', 'toasoantinmoi@gmail.com', 5, 2, '2014-11-03 16:51:45', '797517572db24bb15ac29404633f38bf'),
(166, 'tuongdaiza', 'fe956c12aaf526cf384a5f48fa6ab1cb', 'tuongs2it@gmail.com', 5, 2, '2014-11-03 16:51:45', '9618d75fc52b13b71c5cfbab318e8962'),
(167, 'phatdatpq', 'e4295615909454e41508b68979ed5580', 'phatdatpq@gmail.com', 5, 2, '2014-11-03 16:51:45', 'adc0a329cb6fedfbda1b00e430b63f7d'),
(168, 'TrungPQ', '28954a4f55d18c6da32a942f717516f4', 'trungpq2012@gmail.com', 5, 2, '2014-11-03 16:51:45', 'adcab3ca19f5230bee2057826bfabfa2'),
(169, 'nhuvuvn', '8259c40695c72669a6732858d13c9131', 'clipxemnhieu@gmail.com', 5, 2, '2014-11-03 16:51:46', '6e082927bac379bbce34bae2e9b1d27a'),
(170, 'kietlata', 'fc23ccff8e3169f707983f7c36aec4fb', 'kietpapai@gmail.com', 5, 2, '2014-11-03 16:51:46', '12df49fe41d7787707bbe1e248660868'),
(171, 'hiphim', '4960066fa3cc45dee07f60e556bae93e', 'dotuan211@gmail.com', 5, 2, '2014-11-03 16:51:46', '4c694e32b459a66bb9fc90f641b20717'),
(172, 'dinhchi27', '1e3b39f77a31205ef1ab8bff594d6871', 'vudinhchi27@gmail.com', 5, 2, '2014-11-03 16:51:47', '726cbe1c1696899e2b86606cca19e027'),
(173, 'mrrainnt', '22eb992f04f555f7691e4d46b9d067b8', 'mrrainnt1@gmail.com', 5, 2, '2014-11-03 16:51:47', '5e186007756baa2b34098390d45ead06'),
(174, 'xuanhoa923', 'a327d8f73c83cc932ffd2054c4800065', 'xuanhoabkap@gmail.com', 5, 2, '2014-11-03 16:51:47', 'cb326d9c1fb53cc2a1ed9950f80022cf'),
(175, 'hoaiphong', 'f6b8e16400b3b28793656d33e8b85f66', 'contact@windmediainc.com', 5, 2, '2014-11-03 16:51:47', '6ac20a3441e67a09c611a2c9aab1aa74'),
(176, 'johnmanh91', '379aeaeef987b7ff8ac1f7327985d37e', 'mathnguyen91@gmail.com', 5, 2, '2014-11-03 16:51:47', 'bbfe9491caf6ce6098254f9d51b84459'),
(177, 'kelvin', '7419a81120e8ca8d862fce671f8f5207', 'kelvin6891@gmail.com', 5, 2, '2014-11-03 16:51:48', '7e9f301ef8998c0cff3740413162b1eb'),
(178, 'ktonline1712', '04407bdeec78cbbe4f36d588635372e7', 'ktonline1712@yahoo.com.vn', 5, 2, '2014-11-03 16:51:48', '5d7d046bb4b0015f07657491a39d6447'),
(179, 'minhbaobk', '131726d777a74ef2567775279e5d67fa', 'phamminhbao.bk@gmail.com', 5, 2, '2014-11-03 16:51:48', '7dd9336c08ac855f923c9561a6df203a'),
(180, 'thecaosieure', '14e1b600b1fd579f47433b88e8d85291', 'quangfnc@gmail.com', 5, 2, '2014-11-03 16:51:48', 'e295f795f884fb048fd4606336008cff'),
(181, 'mrriot', '9d8726cf09cfaa5afbf8d7d776981491', 'tuanva.bkd3@gmail.com', 5, 2, '2014-11-03 16:51:48', '346cf5f6951c02ca7b951686c71f74a3'),
(182, 'vuimobi', '4302cabf679254e36d325f1d9185b6c7', 'thebleach77@gmail.com', 5, 2, '2014-11-03 16:51:49', '76b1676ba4b63715a63741ac3a1cbd7e'),
(183, 'quantuhaocau', '4f7850b4a3f9b24ffcf7b1f4f3cca1bf', 'hotro.traitimls@gmail.com', 5, 2, '2014-11-03 16:51:49', 'caffd66bb64c594c240833a670d56fda'),
(184, 'dizmeus', '03ba8e7c833b1c6997ebad74c1de5327', 'hoangfeni@gmail.com', 5, 2, '2014-11-03 16:51:49', '57e024aa8c664b03beeb9ff82d041d60'),
(185, 'dat09', '9023cf8c0ab419082d585633398d3531', 'chitkon@gmail.com', 5, 2, '2014-11-03 16:51:49', '7b5177f377a5e15f5948ef7d2a529134'),
(186, 'dat009', '9023cf8c0ab419082d585633398d3531', '22datnt@gmail.com', 5, 2, '2014-11-03 16:51:49', 'c9bafab6ed159f77017675b443652b45'),
(187, 'nkd', '0f02aabb9455ff33e548660504a5f2d9', 'dungpico@gmail.com', 5, 2, '2014-11-03 16:51:49', 'c99ed5eb9e348a807bb11a34b714ac45'),
(188, 'ngocdiep178', '6a67de24130842d739bfeb04f2f69853', 'shirosaki178@gmail.com', 5, 2, '2014-11-03 16:51:50', '7bb6fc7162e137f9e98dc18580175756'),
(189, 'tatran', '8eb8998c8c08b7f7040ddb92264e3ec1', 'leetaetran1703@gmail.com', 5, 2, '2014-11-03 16:51:50', '2343e0a9d9b6e302463cea5024ef832e'),
(190, 'baodaik', 'd438603772dfc96a967023de90e81c34', 'mrbaodaik@gmail.com', 5, 2, '2014-11-03 16:51:50', '97e951e007287b57217698b63639da11'),
(191, 'roothn', '368e8101b57e3bb5925fab4e2f53e3a7', 'sonvu989@gmail.com', 5, 2, '2014-11-03 16:51:50', 'e312375d87cb242b9f680c0f0b701174'),
(192, 'sutarotai', 'b529c8854825803383e7fbdf121600d5', 'sutarotai@gmail.com', 5, 2, '2014-11-03 16:51:50', '302713df1a3ed5a2aa8598d7038978da'),
(193, 'gmp', 'd8635a1163572b5affcfd547b670141d', 'giaitri69@yahoo.com.vn', 5, 2, '2014-11-03 16:51:51', 'f19964764ad1304478d77edcf3397eed'),
(194, 'nkoclove', '5605c5ac110425a72f7b9e46943d42df', 'quocnam9x@gmail.com', 5, 2, '2014-11-03 16:51:51', 'eac450528b73a441728c3054150f1994'),
(195, 'odaucom', 'b87b95278d5fb83c542fefe00dafe066', 'ha.qc@odau.com', 5, 2, '2014-11-03 16:51:51', '2a69cedbfa252773f6a9875a51856147'),
(196, 'khanhhaohoa', 'd9422247f12b66bcd147fc5d272e3ba8', 'gogogo19x5@gmail.com', 5, 2, '2014-11-03 16:51:51', '03b5adbb4294e53eaed7cb17b63d085e'),
(197, 'whatcry', 'bccba45a441386550b304ee8b4a3bbc4', 'luckyboy1349@gmail.com', 5, 2, '2014-11-03 16:51:51', '420ec6ddbcf8e3b1f0f90004dfe04817'),
(198, 'qcoderz', '81c6b757e5afab6f9b415a3493ff47ef', 'qcoderz@gmail.com', 5, 2, '2014-11-03 16:51:52', '5e63826035d79f72e88f6fd09c04017a'),
(199, 'shifta6', '616899456dfa8f73a8cb1b90244a645b', 'kimquang91@gmail.com', 5, 2, '2014-11-03 16:51:52', 'c1b18a36771867eb889a3c2b4b2c214b'),
(200, 'lta', '5bba656080b5297aa8b2e4fa67dae4c0', 'anhlt15@fpt.com.vn', 5, 2, '2014-11-03 16:51:52', 'af5d3e55af3558a2d4d4219e81a96555'),
(201, 'idphamvanphong', 'bc11da2748c55b99807ef428372d6cb4', 'idphamvanphong@gmail.com', 5, 2, '2014-11-03 16:51:52', 'a10ede6d01462bc465f45b251769fcfe'),
(202, 'darkl0rd', '766791bfeb04c063124dc52e862ad679', 'khaidinh65@gmail.com', 5, 2, '2014-11-03 16:51:53', 'b46d138c701746eafd79f4acd29a37ca'),
(203, 'nali102', 'b923331846800d2a8d043b8cad7a1f61', 'bindeptrai92@gmail.com', 5, 2, '2014-11-03 16:51:53', '3afbcbd43796c2be48232e890dd806ff'),
(204, 'linhbbk1995', '925b98a0199be3b3cbafca0a4aeb00ee', 'linhbbk@gmail.com', 5, 2, '2014-11-03 16:51:53', 'f81fc4251638db2421263456447e911b'),
(205, 'hong_suong_long', '18fda795dc6d25b27755a18877a7d60d', 'datpro.vn91@gmail.com', 5, 2, '2014-11-03 16:51:53', 'fe6f273ae1a92e2092f1fbd49b7cf1fb'),
(206, 'chitien', '5ae0755830eb7b0414ad427fa8cb3fce', 'chitien.love@gmail.com', 5, 2, '2014-11-03 16:51:54', 'eeab665675a67a54e135566029b10da5'),
(207, 'kidzls', 'a6520198f21a00bf4882d6305c8a349e', 'kiemtien214@gmail.com', 5, 2, '2014-11-03 16:51:54', 'd0fa381c44780f0c51801bfcd00539b5'),
(208, 'tamkyvip', '655f234c6a06568f99f42501b366ae8e', 'trinhcongphap@gmail.com', 5, 2, '2014-11-03 16:51:54', '3e612c00feea82efd26c2aae30e31658'),
(209, 'lmq', '277d9b65c4bd5ce03cd59535e98dbf62', 'lequan.qh@gmail.com', 5, 2, '2014-11-03 16:51:54', '4026555319037490af31a4b7bc9f4c4d'),
(210, 'duongmanhhung', '31485f835c93505f95beb64fc72b2dd7', 'changkhothuychung1k9@gmail.com', 5, 2, '2014-11-03 16:51:54', 'e61a6eea86ff74e2cd25e7869e7c319d'),
(211, 'makemoney91', 'e5dedd90da1b509567ee4727a71ebb68', 'tiendoanit@gmail.com', 5, 2, '2014-11-03 16:51:54', 'ed162ac63b6f86a54bfbe546689bdf26'),
(212, 'frt_tuyenhc', 'a3872cf312e2834fef42a54a58e20ab1', 'tuyenhc@fpt.com.vn', 5, 2, '2014-11-03 16:51:55', 'b626ed0e49a59deee3c21a0ee8b7752e'),
(213, 'phamquanganh', 'be5a7c005f24026b75b1c5861c308454', 'phamquanganh.vp@gmail.com', 5, 2, '2014-11-03 16:51:55', '3959638b54aa48bc509cf6b2b9376904'),
(214, 'lehieu.wp', '8e3c3d36186914dff2391a5769ba7751', 'lehieu.wp@gmail.com', 5, 2, '2014-11-03 16:51:55', 'ffa834d3e6bf902535e34b697b0e3d45'),
(215, 'nguyennamitvn', '061c70a60f7d40e87a8dbdc7e4f51c5e', 'nguyennam.itvn@gmail.com', 5, 2, '2014-11-03 16:51:55', '19e2b9b523898728398762ffaa60d90b'),
(216, 'syn192', '50f6c35a798e5d2c193529d2c94f763f', 'therock20132014@gmail.com', 5, 2, '2014-11-03 16:51:56', '9fe1c1f45b7947293c7afe97ea00a3ea'),
(217, 'leminhtruong', 'f1b5a6386a65a3f0de7e29181a4f37af', 'leminhtruong8@gmail.com', 5, 2, '2014-11-03 16:51:56', '1a6ffa7c7a550ef54a45a0d02491ecdd'),
(218, 'vantu9x91', 'f151c13507f955cd6dd0c32785575ea5', 'vantu9x91@gmail.com', 5, 2, '2014-11-03 16:51:56', '60984ff9029ac8d351615331d3130ed9'),
(219, 'snowmouse', '425c7b47c29f2ab59e15c99cb06e5462', 'nguyenhuusonvka@gmail.com', 5, 2, '2014-11-03 16:51:56', '6e18af98ef8b5db8e981d51f0bcf493d'),
(220, 'free', '8210dffc9e3a83bef80c631563f48b92', 'duyhungft@gmail.com', 5, 2, '2014-11-03 16:51:56', '9cee22836bd6d37d90886aff7e942aae'),
(221, 'nhm2011', '7e2105977d1e8456e7fb1404d5cb8444', 'nguyenhanmi2011@gmail.com', 5, 2, '2014-11-03 16:51:57', 'fd840bd2c84fe3227b67aba5e11d8bae'),
(222, 'totdinhvinhquang2405', '66acd1a9c735d360e6e003a3e24547a8', 'totdinhvinhquang240587@gmail.cim', 5, 2, '2014-11-03 16:51:57', 'f5773085c3a6c2370d730f8d980f2cea'),
(223, 'lehoai', '74be16979710d4c4e7c6647856088456', 'tet695@yahoo.com', 5, 2, '2014-11-03 16:51:57', 'f7a9ad6b0ba8fa75aef26d3d98e62a48'),
(224, 'thcpy', '13f1d3aec0992b70e584309e9cbef926', 'remy.root@gmail.com', 5, 2, '2014-11-03 16:51:57', '28d192ec609c0b47819f3c8a80417bd0'),
(225, 'admin2', 'fe3a0eada6dae0fbcf04f4968076b3e1', '', 5, 2, '2014-11-03 16:51:58', ''),
(226, 'kenh16', '2eadf68915f61cacd8a16dda05d634b1', 'gamehay69@gmail.com', 5, 2, '2014-11-03 16:51:58', '4b8b97a17a5196761b6ec89f1886d70e'),
(227, 'nthone', 'b95a2db0d8c8cc1bd963bda56fd967ea', 'nth141195@gmail.com', 5, 2, '2014-11-03 16:51:58', 'c07a4e323da1bc4a60d8c78afc0e6482'),
(228, 'phanhuutoan', '786c2f3425eab7b3e63d57e22807caa1', 'phanhuutoan04111988@gmail.Com', 5, 2, '2014-11-03 16:51:58', 'aae1c1470c4f2cdceffe5e19dad07eed'),
(229, 'sieuthidtdd', 'e2528f0a219dcc5e1c8d1966d6fa4708', 'tonnydang.file@gmail.com', 5, 2, '2014-11-03 16:51:58', '0775989572a9e5aaa0210b77d0f2fefe'),
(230, 'tungtq', '8ec6c02e5ebedfd7a6ac910d3e109a64', 'vantungluaviet@gmail.com', 5, 2, '2014-11-03 16:51:59', 'c799de95b707910d404cee137b845878'),
(231, 'daipham89', 'c3ef285843458fdf3f78afe35e9b0de9', 'traininhbinh1@gmail.com', 5, 2, '2014-11-03 16:51:59', '148feb3ca414d42141a804ec2e4a0d31'),
(232, 'onquangbaovan', '5c53a4149b9449155591936e712e6ba2', 'onquangbao@gmail.com', 5, 2, '2014-11-03 16:51:59', 'f29d9be2804d207a8d625e95d35a7b9f'),
(233, 'ptt', '62e27b73236b32dcc3e64b233344a4c2', 'thanhpt.1412@gmail.com', 5, 2, '2014-11-03 16:51:59', '03c2cb29ae494fd5626900a5d8ed3564'),
(234, 'littleboy223', '48974b9843a20c1a7a26f684a10b9169', 'littleboy223@gmail.com', 5, 2, '2014-11-03 16:51:59', '09b8d5dbf71cff30e4f6fa37f2667db4'),
(235, 'connhangheo', '954f4523191303c41b45b98dab04bbee', 'tiepthimiennam@gmail.com', 5, 2, '2014-11-03 16:52:00', '0335616119ac4d1fb5e6cc3f083a63ad'),
(236, 'duydien', '1b89de93687943842a817a8436459950', 'duy180189@gmail.com', 5, 2, '2014-11-03 16:52:00', 'bcaa921fcb9245b6cfe010411e711771'),
(237, 'gamemini', 'eec7c01c423c2fceda26c4a27e2c5fa6', 'dinhduyhuan2008@yahoo.com', 5, 2, '2014-11-03 16:52:00', '39404985c786a838d38df1998d035e08'),
(238, 'yourlove8888', 'f381349747948fbd23f311eaafb7019b', 'yourlove8888@yahoo.com', 5, 2, '2014-11-03 16:52:00', 'd444d92b1ef25f9487f0a1136b579990'),
(239, 'thanh123', '362da840f9cab0960e01364158dad70e', 'phamvanthank@gmail.com', 5, 2, '2014-11-03 16:52:00', 'ab72cd324b766410148e39b06f6a7a69'),
(240, 'saotim9x', 'eb08b1e28f18add62759aad03e1816d9', 'saotim9x@gmail.com', 5, 2, '2014-11-03 16:52:01', 'dab8091b794cd9f9fac26d5cb40eaaf0'),
(241, 'Kinglazy', '74be16979710d4c4e7c6647856088456', 'Kinglazy2911@gmail.com', 5, 2, '2014-11-03 16:52:01', 'e5f43ac352dca346b977bf8b351acd0e'),
(242, '2playgame', 'e5a8961f2fe1d082ffe0816dc1b11ad3', '2playgame.net@gmail.com', 5, 2, '2014-11-03 16:52:01', '8e3a9c344add1c1b3ea2107caf03ba66'),
(243, 'marlboro.1104', '4034e071e00914b9c8da125dfdf0ef4f', 'gxthuchinh@gmail.com', 5, 2, '2014-11-03 16:52:01', '4005c1cdcdb429bad74c204bca9c430e'),
(244, 'luyen1900123', '46952adfa8ce5363049fbe22922b6242', 'haidang588@yahoo.com', 5, 2, '2014-11-03 16:52:01', '77cc0e1476cdd0d567782297a0f0101d'),
(245, '14giay', '0eea58019fed10ddeb0030ac633bbb41', 'wapmaster.truc@gmail.com', 5, 2, '2014-11-03 16:52:01', 'cb7ded57c03ce629da0373c422968fbc'),
(246, 'khutienich', '48b80e3e4c1055faae85fd7dacc8bb8f', 'thanhtrucvip@gmail.com', 5, 2, '2014-11-03 16:52:02', '86826fa0aab9bff4cbe26171d05c428e'),
(247, 'ntkienboy', '2f9fc95e565182dbf15e2964a58fcf04', 'banphim100@gmail.com', 5, 2, '2014-11-03 16:52:02', 'bc3f3d428f77fbae32ebce1537d29a40'),
(248, 'gamethudidong', '2ded4804171591ae13509ead3e4c649b', 'kichofandroid@gmail.com', 5, 2, '2014-11-03 16:52:02', 'eda5896601f785c38b77a51c2deab945'),
(249, 'hoangphuc881989', 'fff9a9bc8546c4179e35baf69662a4cb', 'hoangphuc881989@gmail.com', 5, 2, '2014-11-03 16:52:02', '072ce5efc6a878d807e41d4311d1b338'),
(250, 'satan123', 'cc6c1f278b5968d0d109e75dc3e001ae', 'taigamecrack@gmail.com', 5, 2, '2014-11-03 16:52:03', 'caf0b6c7ea4592cc4c1b067c7c2ae93e'),
(251, 'kei', '6e7b780b7086e23c97525eed5d717b92', 'chanthanh1991@gmail.com', 5, 2, '2014-11-03 16:52:03', '63fb476d297256c77eb7ad0a5439f74b'),
(252, 'annguyen96', 'aac2894a9bb1163c436bb812798d153f', 'khacan96@gmail.com', 5, 2, '2014-11-03 16:52:03', '1c88cb82adc628f5948c17c4b91c82e7'),
(253, 'ptm249', '82d854581b4ec3abcbfa46cac4d36006', 'ngabavinh@gmail.com', 5, 2, '2014-11-03 16:52:03', 'feee4b63a6b246a474434495bf52ed07'),
(254, 'kiemyien', '98b3c4c158543b785233ec8955d279c3', 'Tran_minh_1991@vnn.vn', 5, 2, '2014-11-03 16:52:03', '620652ff3bf3030f12b251e192e25e1b'),
(255, 'laiquangtuan', 'b9411971270b304a84fe9b5e9ffa067c', 'kodclagquen@gmail.com', 5, 2, '2014-11-03 16:52:03', 'f2145beee2f8056c96490ec66b5dc09a'),
(256, 'Minhvoplus', '44aa89a12a78f7c669d3a41443ac2f27', 'minhvoplus@gmail.com', 5, 2, '2014-11-03 16:52:04', 'b15cec63c9eb7ca9fdc1b8c1597edbdc'),
(257, 'vip4ever', '0d6844dcfcd0547c5879e596aba7908b', '01fptnet@gmail.com', 5, 2, '2014-11-03 16:52:04', 'ceb06d4748e42b856ffbc4e67bf01cab'),
(258, 'kaungokvokam', 'f84c3f5834fb8f7d099b0baf3e470adf', 'kaungokvokam@gmail.com', 5, 2, '2014-11-03 16:52:04', '8d97fc98e9e667416de20187fe01923e'),
(259, 'quangthuanit', '790d6d46ee092008d649efe3ebbf5b8e', 'quangthuan1803@gmail.com', 5, 2, '2014-11-03 16:52:04', '8316422279651179e1a39f9aa8ee3b6f'),
(260, 'dhpro', '26cd33a8eb8d54b80516433452cfc9b9', 'duycoi1586@gmail.com', 5, 2, '2014-11-03 16:52:04', '031ae8418b7051042875eefc3c700003'),
(261, 'haluong122', '5a4dadf49e82504cc69197a3e250fcdb', 'haluong12295@gmail.com', 5, 2, '2014-11-03 16:52:04', '45d52880be8be1d0af4ceb1b48968e7a'),
(262, 'appmob', '02498f1fa9f0dfeeef5a6f8ff2d1e3f5', 'binhnh257@gmail.com', 5, 2, '2014-11-03 16:52:05', '75c921cf285389f99ead2872e419ed6b'),
(263, 'hieunguyen', 'a5bd84535db87001f6a1e4a859689a48', 'hieute9x@gmail.com', 5, 2, '2014-11-03 16:52:05', 'a02f9b5c21a25432370bf00ac4e84976'),
(264, 'pttt', '62e27b73236b32dcc3e64b233344a4c2', 'ptthanh.1412@gmail.com', 5, 2, '2014-11-03 16:52:05', '8b8c830e14bf1302d29252ddeae73905'),
(265, 'PATITCo', '45eb5b54e0ce41013ea93a9e8bc9d6f1', 'patitangel0810@gmail.com', 5, 2, '2014-11-03 16:52:05', '6dc19cffdbd5f6410c690aef28902141'),
(266, 'androids', '2108e4ee5c4ea62f02ce04f16e78a363', 'chplauvn.com@gmail.com', 5, 2, '2014-11-03 16:52:05', '1cb0e42ca21e701194bfb785b4ed6e25'),
(267, 'android234', '2108e4ee5c4ea62f02ce04f16e78a363', 'chplayvn.com@gmail.com', 5, 2, '2014-11-03 16:52:06', 'b258e55b17c086cf5feb3d50cbe06a15'),
(268, 'tuoitre', '620281408060bbc8e19bdfb056168093', 'dangcapwapviet@gmail.com', 5, 2, '2014-11-03 16:52:06', 'fff83b353f7e6c5095c8d78fc646c622'),
(269, 'hanghenh', 'c994c96ec9a5c5acdf48e7f2a6c6821c', 'hanghenh@gmail.com', 5, 2, '2014-11-03 16:52:06', 'abf7104c0320e75884094846a3a7ba8d'),
(270, 'mobiad', 'dd8d21fc12732358a706702a896135ff', 'giaitrimobile365@gmail.com', 5, 2, '2014-11-03 16:52:07', 'c3e5dc1b2fc0b52cb3dae51fb454c0bf'),
(271, 'pico', '539e81790ebf074cb26fff65e801a039', 'khacdung612@gmail.com', 5, 2, '2014-11-03 16:52:07', '6cf18696d4a2607961b90cdc64d2f1ba'),
(272, 'tantan92', '65c16b4832d2445bb0a3f8841509c887', 'tantan992@gmail.com', 5, 2, '2014-11-03 16:52:07', 'f91b80ede559a6f5bc4184b4f3f5f49e'),
(273, 'clown', 'ecd5920be184c237411936cc16d9a546', 'realsyaoran800@gmail.com', 5, 2, '2014-11-03 16:52:07', '03a9a3e207a0839a2397d217497d446f'),
(274, 'hieute8888', 'a5bd84535db87001f6a1e4a859689a48', 'hieunguyen.adflex@gmail.com', 5, 2, '2014-11-03 16:52:07', '464b789d758be7a76ec3f0adc0995f4e'),
(275, 'thuanquangit', '790d6d46ee092008d649efe3ebbf5b8e', 'thuanquang1803@gmail.com', 5, 2, '2014-11-03 16:52:08', 'a83fa349a6746afa793fd9e4cc10dd92'),
(276, 'gametop', 'c709c61e59081aa2fed88804a2fd8d28', 'gamehotnewnvd@gmail.com', 5, 2, '2014-11-03 16:52:08', '07aedd3005f7399b00f7e69a93934043'),
(277, 'sibuoi', 'd1cc9b74917d8408bc15879d5b1b8c5f', 'sipomelo104spt@gmail.com', 5, 2, '2014-11-03 16:52:09', 'a3b6b3221a98fdff5a89afd2a638d98f'),
(278, 'soicoi', 'f4b1b327af0f8542f974be19ee3c8c6e', 'ghostwolf129@gmail.com', 5, 2, '2014-11-03 16:52:09', '1b758f3cf22b7a4b5702a2b7d29a729a'),
(279, 'soicoi129', 'f4b1b327af0f8542f974be19ee3c8c6e', 'edogawaconan129@gmail.com', 5, 2, '2014-11-03 16:52:10', '43a3f74cab402f319d45881a8a2dc8a5'),
(280, 'ha8ltv', 'c5cb7365b6e294f63a7e55c3ea259f14', 'vumanhhoang90@gmail.com', 5, 2, '2014-11-03 16:52:10', '449d4ff8ece6548d499f530c0f08c35c'),
(281, 'duongconverse', 'f4c263ebda635a4c2d2f1d8f9c174e45', 'duongconverse1@gmail.com', 5, 2, '2014-11-03 16:52:10', 'b3491fa4073e028d1dbcbbb719d3456e'),
(282, 'darkpro13543', 'b0f341759684348e335cf761cb2c9f95', 'thienlocphat79@gmail.com', 5, 2, '2014-11-03 16:52:10', '540d611905944c9abdd33068c74f1e40'),
(283, 'kenqtm', '9191da540b5d8736afdd800efd5664de', 'kienbk123@gmail.com', 5, 2, '2014-11-03 16:52:10', '61cf723be85b145896cfe423264ee074'),
(284, 'samdevilly', '3511f4a11ef72e7dce21249dfec6a269', 'samdevilly020994@gmail.com', 5, 2, '2014-11-03 16:52:10', '8e34515e09c900018c6bb08d8e9a1f85'),
(285, 'tieuthantien', 'f119809a55cfda76275f3ef4514baae9', 'builongan123@gmail.com', 5, 2, '2014-11-03 16:52:11', 'e79cd9d1d2f5442ff93ef710177525e9'),
(286, 'phongsimon119', 'b65675b4322d8a5600589285e6e338de', 'empty20061992@gmail.com', 5, 2, '2014-11-03 16:52:11', '9bf79de63d428adf29e2eaf69134514c'),
(287, 'phongsimon1992', 'b65675b4322d8a5600589285e6e338de', '4.lun1992@gmail.com', 5, 2, '2014-11-03 16:52:11', '46694678278469d17abcf8c2df0f6ae9'),
(288, 'tuyen96st', 'b538095a140c5a68acbcf21db026f390', 'tuyen96st@yahoo.com', 5, 2, '2014-11-03 16:52:11', 'b8ab748d2ea0436f5adddbcff7b8750d'),
(289, 'yentato', '406cc07fbfad58f3a04f9880e7ec04ae', 'yentato2014@gmail.com', 5, 2, '2014-11-03 16:52:11', '1cd9dc418b5e10ac11f6c48ce77964d7'),
(290, 'khogamevui', '34657eda5c9dd2534d027573267b1b6e', 'vutuyen888@gmail.com', 5, 2, '2014-11-03 16:52:11', '204ad6f5aaa614b7fbee4c61ebef99a3'),
(291, 'kunka', '3f0eed2a79b9fd6b466dd5d0ae1d907f', 'debbynailsg@gmail.com', 5, 2, '2014-11-03 16:52:12', 'c29fdb4d582bd22a764cf673b47a93f5'),
(292, 'mrxoso', '9e783dbc8cc688b913fbdd3a7123acc0', 'mrxoso@gmail.com', 5, 2, '2014-11-03 16:52:12', '91441045a0a20a20868191124ba469ae'),
(293, 'chitkon', '9023cf8c0ab419082d585633398d3531', 'datnguyen9x@gmail.com', 5, 2, '2014-11-03 16:52:12', '5da2db96a01b1939968f95da4f3cb4c0'),
(294, 'haepuedu', '60597feb34b37aca802e76e4c4c51657', 'haepuedu@gmail.com', 5, 2, '2014-11-03 16:52:12', '4d0ec5c5c4dfdf8f481e5f5ef8591ca8'),
(295, 'appmad', '60597feb34b37aca802e76e4c4c51657', 'hungduongmanh34@gmail.com', 5, 2, '2014-11-03 16:52:12', 'ccb9c13c80a53573df3a04e351613069'),
(296, 'boy9x003', '0fcd31921553ce6e5e4b42792cf74b54', 'lethanhnho2@gmail.com', 5, 2, '2014-11-03 16:52:13', '2ac6486c8c7bf9d1fa1aaad107118480'),
(297, 'luannidhogg', '5680032e51e43726a6b8998b1b9a92c7', 'caoluanth94@gmail.com', 5, 2, '2014-11-03 16:52:13', 'ac3c4e0f18865dc904c3d00af2dc09fa'),
(298, 'kingmgt', '2733647b9864eb40f4af7d55f9019270', 'admin@mgiaitri.biz', 5, 2, '2014-11-03 16:52:13', 'c2f631cae83de8053add12bbea98e8e9'),
(299, 'plamtuan', 'bb99bb4c8519d038c6104abbcb9c03da', 'tuan.cafef1@gmail.com', 5, 2, '2014-11-03 16:52:13', '003377c2afd1cf5d71f81e8d58ff8519'),
(300, 'pinetrees', 'e95e47cdb1e5985bada5295f48140e81', 'lamthong@mobileworld.vn', 5, 2, '2014-11-03 16:52:13', 'db7e7856adc680301b0029b585d5a572'),
(301, 'elrinno95', '0826faaa2dfeefb488cfa969069685a6', 'elrinno95@gmail.com', 5, 2, '2014-11-03 16:52:14', 'd5d8520de03af78b34ea40f4ff8a9906'),
(302, 'ha8ltv1', 'c5cb7365b6e294f63a7e55c3ea259f14', 'xicalo199x@gmail.com', 5, 2, '2014-11-03 16:52:14', '8c95b06e9ade98ad3522a3eb2ddd0260'),
(303, 'sugiagame00', 'aeead2291065b715bdc9fdcaa05fd5d4', 'lenguyengiabao.904@gmail.com', 5, 2, '2014-11-03 16:52:14', 'a9c8d09a083e625f24925f15f208b092'),
(304, 'tung83le', '0f7d92152b71d00624addeec22e8f407', 'tung83le@gmail.com', 5, 2, '2014-11-03 16:52:14', 'b7aa75677f7af8bd58e6c8ddf43a69a5');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
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

DROP TABLE IF EXISTS `user_info`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=298 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `full_name`, `job`, `company`, `address`, `city`, `country`, `phone_number`, `user_type`, `store_channel`, `reference`) VALUES
(1, 1, 'Bùi Văn Đạo', 'Dev', 'SM', 'Cầu Giấy', 'Hà Nội', 'Vietnam', '05895453', 1, '', ''),
(2, 2, 'Phạm Gia Long', 'Dev', 'SM', 'Cầu Giấy', 'Hà Nội', 'Vietnam', '09895453', 1, '', ''),
(3, 10, 'Phạm Văn Huy', 'CEO', 'SmartAd', 'Quan Hoa Cầu Giấy', 'Hà Nội', 'Vietnam', '05895453', 1, 'appquote.com', 'admin'),
(4, 11, 'MMO', 'mmo', '', 'Hà Nội', 'Hà Nội', '', '0915240065', 2, 'google.com', ''),
(5, 12, 'Phát Tấn Trần', 'Test', 'Test', 'Tiến Thịnh, Mê Linh, Hà Nội', 'Hà Nội', '', '0976297541', 2, 'facebook', 'bạn'),
(6, 13, 'Cao Cự Quốc Cường', 'SV', 'FPT', '84 Pháo Đài Láng', 'Hà Nội', '', '0968223737', 2, 'Gamemobile247.net, Wapstorevn.com', 'Huy Pham'),
(7, 14, 'hồ văn khánh', 'Sinh viên', '', 'Hà Nội', 'Hà nội', '', '0973964783', 2, 'hovankhanh.me', 'thằng Huy'),
(8, 15, 'mobithink', '', '', '', '', '', '', 2, '', ''),
(9, 16, 'Trần Quang Huy', 'Marketer', 'Anh Ngữ LESH', '31 Giải Phóng', 'Hà Nội', '', '0945588891', 2, 'lesh.vn', 'bạn bè'),
(10, 17, 'Phạm Văn Huy', 'Marketing', '', 'Số 1, Hoàng Đạo Thúy', 'Hà Nội', '', '0977143737', 2, 'sieuhot.mobi', 'Bạn giới thiệu'),
(11, 18, 'Đinh Văn Linh', 'Seor', 'Hà Nội', 'Hoa Bằng - Cầu Giấy - Hà Nội', 'Hà Nội', '', '0977448785', 2, 'gameprivatevn.com', 'Google'),
(12, 19, 'Thanh Nguyen', 'Developers', 'Cver Media', '1/94 Tân Mai Hoàng Mai Hà Nội', 'Hanoi', '', '84986325703', 2, 'cvermedia.com, Facebook.com', 'Bạn bè'),
(13, 20, 'Larry Thanh', '', '', 'Số 1/94 Tân Mai', 'Hanoi', '', '0986325703', 2, 'Cvermedia.com', ''),
(14, 21, 'Thanh', '', '', 'Số 1/94 Tân Mai', 'Hanoi', '', '0986325703', 2, 'Facebook', ''),
(15, 22, 'Nguyễn Huy Binh', 'Freelancer', 'Ha Noi', 'Ha Noi', 'Ha noi', '', '0975944947', 2, 'google.com', 'Google'),
(16, 23, 'Nguyễn Văn Mẫu', 'Kinh Doanh', 'Hà Nội', 'Số nhà 68, Ngõ 10, Tổ 25 Văn Công Mai Dịch', 'Hà Nội', '', '0916298234', 2, 'Facebook, website, wapsite', 'Bạn bè'),
(17, 24, 'Nguyễn Thúy Luật', 'sinh viên', 'đại học thương mại', 'hồ tùng mậu', 'TP. Hà Nội', '', '841669713819', 2, 'facebook', 'hoàng kim media'),
(18, 25, 'Huyền', '', '', 'Hoàng QUốc Việt', 'Hà Nội', '', '0977143737', 2, 'sieuhot.mobi', ''),
(19, 26, 'hồ văn khánh', 'Sinh viên', '', 'Hà Nội', 'Hà nội', '', '0973964783', 2, 'hovankhanh.me', 'thằng Huy'),
(20, 27, 'lê đức tân', 'sinh viên', 'công ty lapoo', '183 phan thanh', 'đà nẵng', '', '0979071110', 2, 'nguongame.com', ''),
(21, 28, 'Lê Văn Toàn', 'Culi chém gió', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '0904592740', 2, 'http://smartad.vn', 'Phát TT, HuyPv, VietNh'),
(22, 29, 'Hoàng Văn Tú', '', '', '14/22b ngõ 198 xã đàn', 'Việt nam', '', '0973341574', 2, 'facebook', ''),
(23, 30, 'le thanh hùng', '', '', 'vinh - nghe an', 'vinh', '', '0977266335', 2, 'taigame247.org', 'bạn bè'),
(24, 31, 'boyhnhn943', '', '', 'Hà Nội', 'Hà Nội', '', '0915240065', 2, 'Facebook', ''),
(25, 32, 'Phạm Anh Tuấn', '', '', '16/86/177 Định Công Hoàng Mai Hà Nội', 'Hà Nội', '', '0968899350', 2, 'cocos2d-x.vn', ''),
(26, 33, 'Tester', '', '', '', '', '', '', 2, '', ''),
(27, 34, 'Lan Anh', '', '', 'Hà Nội', 'Hà Nội', '', '0915240065', 2, 'google', ''),
(28, 35, 'Trịnh Hoài Bảo', 'IT', '', '17 Phạm Như Xương', 'đà nẵng', '', '0906584959', 2, 'http://Taigamemobile24h.net', 'bạn bè'),
(29, 36, 'Lương Hoàng Mạnh', 'Kỹ thuật mobile', '', 'Số 56 phố Đội Cấn, quận Ba Đình', 'Hà Nội', '', '0906018389', 2, 'smartad.vn', 'google'),
(30, 37, 'Cấn Thị Phương Hà', 'Nhân Viên Kinh doanh', 'Hoàng Kim Media', '102 K63 ngo 48 Tạ Quang Bửu', 'Hà Nội', '', '0978140927', 2, 'facebook, google, wapsite, website', ''),
(31, 38, 'Tiên Ma Lục', '', '', '', '', '', '', 2, '', ''),
(32, 39, 'Hoàng Ngọc Quỳnh', 'IT', 'TPHCM', '134/7 Lý Chính Thắng', 'TPHCM', '', '01682457547', 2, 'truyennganplus.com', 'bạn bè'),
(33, 40, 'Phạm Quang Bảo', '', '', 'Hồng Hà', 'Hà Nội', '', '0984121878', 2, 'bbit.vn', ''),
(34, 41, 'trần thọ', '', '', 'mỹ đình', 'mỹ đình', '', '0905766966', 2, 'gamemobi4u.com', ''),
(35, 42, 'Phạm Gia Vang', '', '', 'Gia Lộc - Hải Dương', 'Hải Dương', '', '01663808316', 2, 'http://yeumobile.info', 'Google'),
(36, 43, 'Nhat Anh Hoang', 'học sinh', 'hà nội', 'hà nội', 'Ha Noi', '', '01672733586', 2, 'kenhapk.com', 'no'),
(37, 44, 'le viet anh', 'admin', 'abcxz', 'hà nội', 'hanoi', '', '0944108690', 2, 'w4vn.net', 'google.com'),
(38, 45, 'Võ Phước Tiến', 'Programmer', 'Biên Hòa', 'Long Bình - Biên Hòa - Đồng Nai', 'Biên Hòa', '', '01692111000', 2, 'http://www.tyvn.biz', 'TYVN.Biz'),
(39, 46, 'Nguyễn Trọng Hưng', 'Kinh Doanh', 'Lemonmedia', 'Nguyễn Chí Thanh', 'Hà nội', '', '0916618929', 2, 'http://gameapp.vn', ''),
(40, 47, 'Nguyễn Trọng Nghĩa', '', '', '65/14 Trần Hưng Đạo - Ninh Kiều - Cần Thơ', 'Cần Thơ', '', '01282884906', 2, 'http://chgame.net/', ''),
(41, 48, 'Dương Mạnh Kiên', 'Sinh Viên ĐH FPT', 'Hà Nội', 'Phú Thọ', 'Hà Nội', '', '0985195478', 2, 'PhuThoBay.Pro', 'Bạn Bè'),
(42, 49, 'Dương Việt Anh', '', '', 'thái nguyên', 'thái nguyên', '', '01665334312', 2, 'game', ''),
(43, 50, 'UCBrowser', '', '', '', '', '', '', 2, '', ''),
(44, 51, 'Nguyễn Đức Trường', '', '', 'Hà Nội', 'Hà Nội', '', '0974910908', 2, 'none', ''),
(45, 52, 'Lưu Thị Thu Huyền', 'Bán hàng', 'Nhật Cường', 'Nghĩa Tân', 'Hà Nội', '', '01638291936', 2, 'smartad.vn', 'Bạn bè'),
(46, 53, 'Nguyen Huy Quan', '', '', 'Dong Da', 'Ha Noi', '', '0912447614', 2, 'Facebook', ''),
(47, 54, 'Nguyen Hong ha', '', '', 'aa', 'hanoi', '', '072772727', 2, 'hoangha.com', ''),
(48, 55, 'Đỗ Việt Anh', '', '', 'Tôn Thất Tùng', 'Hà Nội', '', '0936346245', 2, 'Webiste, Facebook', ''),
(49, 56, 'Ngọc Anh', '', '', '13 Trần Hưng Đạo', 'Hà Nội', '', '34637373', 2, 'Facebook', ''),
(50, 57, 'Ngô Thị Bích Hằng', '', '', 'Tổ 49, Phương Liên, Đống Đa', 'Hà Nội', '', '01649542531', 2, 'smartad.vn', ''),
(51, 58, 'Le Trung Kien', '', '', 'P12A14, CT3, DN2, Khu Đô Thị Văn Khê, Hà Đông', 'Hà Nội', '', '0944000676', 2, 'smartad.vn', 'smartad'),
(52, 59, 'Kiều Đức Linh', '', 'abc', 'Hà Nội', 'Hà Nội', '', '84987466909', 2, 'dantri.com', ''),
(53, 60, 'Nguyễn Thành Trung', 'Nhân Viên', '', 'Thanh Nhàn - Hai Bà Trưng', 'Hà Nội', '', '0929659486', 2, 'facebook.com, google', ''),
(54, 61, 'Tri thức việt', '', '', '', '', '', '', 2, '', ''),
(55, 62, 'Mai Đăng Khoa', 'Kỹ Thuật', 'Bà Rịa', '324 Cách Mạng Tháng 8,P.Phước Trung', 'Bà Rịa', '', '01286888827', 2, 'mạng xã hội', ''),
(56, 63, 'Lý Tấn Trân', 'Sinh Viên', '', 'Vườn Lài An Phú Đông Quận 12', 'HCM', '', '01695057958', 2, 'sangame.net, mwork.vn', ''),
(57, 64, 'Lê Văn Tuấn', 'Sinh Viên', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '0984577247', 2, 'smartad', 'Mạng'),
(58, 65, 'Nguyễn Hùng Mạnh', 'Sinh Viên', 'Hà Nội', 'Cầu giấy, Hà Nội', 'Ha Noi', '', '01695337041', 2, 'wap9x.vn', 'ko biết'),
(59, 66, 'Hà Bình Minh', 'Wapmaster', '', 'tân lập - phú nghĩa', 'TP Hồ Chí Minh', '', '0926108107', 2, 'gamevz.com', 'tìm hiểu trên mạng'),
(60, 67, 'Lê Tiến Mạnh', '', '', 'Quang Sơn - Đồng Hỷ - Thái Nguyên', 'Thái Nguyên', '', '0962803995', 2, 'wapsite, facebook', ''),
(61, 68, 'Kiem Bao Hoang', '', 'luonggiaviet.com', '10 Tôn Thất Thuyết Q4, tphcm', 'Ho chi Minh', '', '01686977378', 2, 'luonggiaviet.com', 'smartad gọi điện'),
(62, 69, 'Vinagame', '', '', '', '', '', '', 2, '', ''),
(63, 70, 'Lê Nam', 'Sinh Viên', 'Hà nội', 'Yên Mô', 'Ninh Bình', '', '01673381093', 2, 'http://wap.8cc.biz', 'Google.Com'),
(64, 71, 'Trần Minh Đức', '', '', '54 Điện Biên Phủ - Đà Nẵng', 'Đà Nẵng', '', '0905028997', 2, 'gamechonloc.com,appchon.com', 'Bạn bè'),
(65, 72, 'hồ viễn thông', 'kỹ sư', 'hà nội', 'Tiến Thịnh, Mê Linh, Hà Nội', 'Hà Nội', '', '0987076529', 2, 'facebook, wap', 'admin'),
(66, 73, 'Nguyễn Thị Nga', 'Sinh Viên', 'Đại Học Thương Mại', 'Số 10, Ngõ 103, Lạc Long Quân, Hà Nội', 'Hà Nội', '', '0966915332', 2, 'Facebook ads. Adwords', 'Bạn bè giới thiệu'),
(67, 74, 'Vũ Xuân Bắc', 'Sinh Viên', 'Hà Nội', 'Hoàng Mai - Hà Nội', 'Hà Nội', '', '01693213436', 2, 'backuncntt.tk', 'mạng xã hội'),
(68, 75, 'Hà Tuấn Minh', '', '', 'Hà Giang', 'Hà Giang', '', '01674869952', 2, 'zapk.net', ''),
(69, 76, 'tinh vu van', '', '', 'tho xuyen - lam son - thanh mien - hai duong', 'hai duong', '', '0973030367', 2, 'itaigamemobile.com', 'facebook'),
(70, 77, 'ssss', 'ddd', 'aaa', 'sss', 'ha noi', '', '84987076521', 2, 'google+', 'gt'),
(71, 78, 'Le Hoan', '', '', 'Phu tho', 'Phu tho', '', '01678427612', 2, 'ukute.wap.sh', ''),
(72, 79, 'JQK Pro', '', '', '', '', '', '', 2, '', ''),
(73, 80, 'Vũ Minh Điệp', 'Affiliate Consultant', 'SmartAd', 'Cầu Giấy , Hà Nội ', 'Hà Nội', '', '841672534655', 2, 'bakingschool.vn', 'Internet '),
(74, 81, 'Nguyen Manh Cuong', 'Sinh Vien', '', 'Binh Khe - Dong Trieu -Quang Ninh', 'Quang Ninh', '', '0979098666', 2, 'http://quangninhwap.com', ''),
(75, 82, 'Flips Mark', '', '', 'Cầu Giấy', 'Hà Nội', '', '01638997787', 2, 'viet-yo.com', ''),
(76, 83, 'Trần Văn Hiểu', 'Sinh viên', '', 'Nam Định', 'Nam Định', '', '0987987108', 2, 'wap247.org', 'google'),
(77, 84, 'Nghiêm Xuân Cường', 'CTO', 'VCCorp', '89/12 - Bồ Đề - Long Biên - Hà Nội', 'Hà Nội', '', '01649709499', 2, 'quantruyen.com, facebook', 'email'),
(78, 85, 'Võ Tấn Giauq', 'Sinh Viên', 'An Giang', 'Long Xuyên', 'Long Xuyên', '', '0949678233', 2, 'chotot.vn', 'Internet'),
(79, 86, 'Hoàng Văn Lộc', 'Sinh viên', '', 'Khối Độc Lập, Vạn Phúc, Hà Đông', 'Hà Nội', '', '0946646351', 2, 'hangtot.com', 'internet'),
(80, 87, 'doanhmanhtu', 'doanhmanhtu', 'doanhmanhtu', 'doanhmanhtu', 'doanhmanhtu', '', '45544334', 2, 'htt://doanhmanhtu.com', 'sdfsdfds'),
(81, 88, 'Cao Minh Anh', 'IT', '', '56/5 duong 339, P. Tang Nhon Phu B, Q.9', 'Ho Chi Minh', '', '0909346977', 2, 'truongkienthuc.vn', ''),
(82, 89, 'Hoàng Đại Hải', 'Webmaster', 'SatKiem', 'Vinh Phuc', 'Vinh Yen', '', '0982274932', 2, 'satkiem.org,huyetdiet.com', 'Google'),
(83, 90, 'Phạm Minh Trung', 'Nhân viên marketing', 'Hoàng Kim Media', 'Thái bình', 'Thái bình', '', '0978840828', 2, 'Facebook,,..', ''),
(84, 91, 'Le Minh Thuan ', 'sinh vien', 'Tai nha', 'Tan An Luong, Vung liem, Vinh Long', 'Vinh Long', '', '01688993879', 2, 'facebook.com', ''),
(85, 92, 'Nguyễn Trọng Bảo', 'Học Sinh', 'Trường THPT', 'Đức Thắng-Hiệp Hòa-Bắc Giang', 'Bắc Giang', '', '01698655334', 2, 'http://gamejavaviet.com/', 'internet'),
(86, 93, 'Trinh Minh Man', '', '', 'Hoan Kiem', 'Ha Noi', '', '0912366966', 2, 'facebook, website', 'google search'),
(87, 94, 'Trần Văn Quang', 'Sinh Viên', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '0979943129', 2, 'trangtaigame.vn', ''),
(88, 95, 'NGUYỄN VĂN QUYẾT', 'Sinh viên', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '01639768710', 2, 'chotot.vn, chophien.com', 'sinhvienit.net'),
(89, 96, 'Ad Master', 'Marketing', 'Freelancer', 'Nghĩa Tân, Cầu Giấy', 'Hà Nội', '', '0988214569', 2, 'facebook.com', ''),
(90, 97, 'Lee Phi', 'Sinh Vien', 'Lee Phi', 'Quang tri', 'vinh linh', '', '841689919772', 2, 'adflex.vn, smartad.vn', ''),
(91, 98, 'Nguyễn Tiến Đạt', '', '', 'Minh Khai - Ha Noi - Viet Nam', 'HaNoi', '', '0972853304', 2, 'wapgameaz.com, downloaducbrowser.org', 'wapmaster khác'),
(92, 99, 'Mai Phương Anh', 'Sinh Viên ', 'Đại Học Sài Gòn', 'TDP 2 thị trấn Châu Ổ, Huyện Bình Sơn', 'Quảng Ngãi', '', '01653777015', 2, 'kenhtintuc.bl.ee', 'forum'),
(93, 100, 'Hiếu', 'Sinh viên', '', '128 C đại la', 'Hà Nội', '', '01646728848', 2, 'kỹ thuật', 'Tự biết'),
(94, 101, 'Hải yến', '', '', 'Kim mã', 'Hà nội', '', '01646728848', 2, 'kỹ thuật', ''),
(95, 102, 'triệu văn việt', 'sinh viên', 'hà nội', 'hải dương', 'Hai duong', '', '01636537083', 2, 'hackviet9b.mobi', 'bạn bè'),
(96, 103, 'nguyen ngoc dang', '', '', 'dd', 'saigon', '', '01203753845', 2, 'gamecuchot.net', ''),
(97, 104, 'Quynh', 'N/A', 'n/a', 'Soc son', 'Ha noi', '', '0985174034', 2, 'http://gloadmarket.com', 'n/a'),
(98, 105, 'Đào Ngọc Thiện', 'Học Sinh', 'Hưng Yên', 'Kim Động - Hưng Yên', 'HY', '', '01655418268', 2, 'mkenhgame.net', ''),
(99, 106, 'Lê Thế Anh', 'quảng bá kiếm tiền', 'trên mạng mmo', 'ĐOng hà- quảng trị', 'dong ha', '', '01222220780', 2, 'smartad.vn', 'gối thiệu'),
(100, 107, 'Nguyen trong tin', 'Hoc Sinh', 'Nhà', 'Dak Nông', 'Dak Nông', '', '01683938045', 2, 'SieuTaiGame.Net', 'Mwork'),
(101, 108, 'Lê Trang Trung Hậu', 'Sinh Viên', 'Đại Học Lạc Hồng', 'Vĩnh Cửu', 'Đồng Nai', '', '0963646433', 2, 'tranggamemobile.tk', ''),
(102, 109, 'Văn Công Hùng', '', '', '6/15/35 ngự bình', 'huế', '', '0972550220', 2, 'wap, web', ''),
(103, 110, 'Nguyễn Trọng Khoa', 'Trưởng nhóm lập trình', '', 'Số 4  - Trung Thịnh  - Thanh Thủy - Phú Thọ', 'Việt Trì', '', '0964558333', 2, 'http://m.hdhay.com/', 'internet'),
(104, 111, 'Trần Hảo', '', '', 'bình định', 'quy nhơn', '', '01655934370', 2, 'xemmienphi.net', ''),
(105, 112, 'Trần Quang Trung ', 'Kỹ sư công nghệ thông tin ', 'Viện dầu khí ', 'Thái Hà ', 'Hà Nội', '', '0986344000', 2, 'suachuadienthoai24h.com', 'Bạn bè '),
(106, 113, 'Lê Xuân Quý', 'kỷ thuật viên', 'FPTShop', 'Quảng Trị', 'Đông Hà', '', '01287720958', 2, 'tigon67.cuchot.mobi', 'mail'),
(107, 114, 'Nguyễn Ngọc Khánh', '', '', 'Phú Thượng', 'Hà Nội', '', '01686869869', 2, 'khanhga.com', ''),
(108, 115, 'Trần Xuân Thủy', '', '', 'Cầu Giấy', 'Hà Nội', '', '0906031000', 2, 'play.google.com', ''),
(109, 116, 'Mu Kim Vương', '', '', '', '', '', '', 2, '', ''),
(110, 117, 'Trung Dũng', 'wapmaster', '', 'Vietnam', 'Ha Noi', '', '01656228919', 2, 'androidvina.mobi', ''),
(111, 118, 'Lê minh Hải', 'sinh viên', '', 'hà nội', 'hà nội', '', '01658523665', 2, 'khoctham.mobi', ''),
(112, 119, 'Lê MInh Hải', 'Sinh Viên', '', 'Ba Vì Hà Nội', 'Hà Nội', '', '01658523665', 2, 'khoctham.mobi', 'khoctham'),
(113, 120, 'nguyen', 'nguyen', '', '15 le loi ', 'hồ chí minh', '', '01698340224', 2, 'smartad.vn', 'web'),
(114, 121, 'Huan Nguyen Trong', '', '', 'Hung Yen', 'Ha Noi', '', '0979516625', 2, 'huantp.com', ''),
(115, 122, 'Phạm Hồng Tân', 'IT', 'HCM', '  quận Tân Bình', 'Hồ Chí Minh', '', '0976885779', 2, 'facebook.com', 'internet'),
(116, 123, 'Van Chung Nguyen', '', '', 'Ha Noi', 'Ha Noi', '', '0934986699', 2, 'google.com', ''),
(117, 124, 'nguyen van thanh ', 'kĩ thuật', 'FPT', 'Da nang', 'dav nang', '', '0935927000', 2, 'mang', 'mang'),
(118, 125, 'Ngô Đặng Trường Giang', '', '', '32 Cao Bá Quát - Ba Đình - Hà Nội', 'Hà Nội', '', '01688941392', 2, 'giangvn.pro', 'Google'),
(119, 126, 'Nguyễn Trọng Huân', '', '', 'Văn Giang - Hưng Yên', 'Hưng Yên', '', '0979516625', 2, 'http://game.vuinhat.net/', ''),
(120, 127, 'Chúc Thanh Nghĩa', 'Học Sinh', 'Tuyên Quang', 'Na Hang', 'Tuyên Quang', '', '0968050540', 2, 'wapsite,facebook,diễn đàn', 'google'),
(121, 128, 'Trần Văn Hiểu', 'Sinh Viên', '', 'Nam Định', 'Nam Định', '', '0987987108', 2, 'google', 'google'),
(122, 129, 'Huyền', '', '', 'Hà Nội', 'Hà Nội', '', '01684456233', 2, 'Không có', ''),
(123, 130, 'MMO', '', '', 'Hà Nội', 'Hà Nội', '', '0915240065', 2, 'ad network', ''),
(124, 131, 'Chot Nguyen Van', '', '', 'Kiên Lương - Kiên Giang', 'Kien Giang', '', '841632470959', 2, 'Mekinhdoanh.com.SmartAd.vn', 'internet'),
(125, 132, 'Lại Đức Tùng', '', '', '34 Hòa Lạc', 'Móng Cái', '', '0903425178', 2, 'likeso1.tk', 'www.google.com.vn'),
(126, 133, 'Nguyễn Đăng Tùng', 'marketing', 'Bệnh Viện Thu Cúc', '286 Thụy Khuê - Tây Hồ ', 'Hà Nội', '', '01673152710', 2, 'smartad.vn', 'facebook'),
(127, 134, 'Nguyễn Duy Thanh', 'IT', 'Hà Nội', '92 Nguyễn Khánh Toàn', 'Hà Nội', '', '01649728236', 2, 'giatot24.vn', 'Bạn bè'),
(128, 135, 'Ninh Pham', '', '', 'Ha Dong', 'Ha Noi', '', '0945501988', 2, 'mwork.vn, smartad.vn', 'giới thiệu'),
(129, 136, 'nguyễn văn thành ', 'kĩ thuật', 'FPT', 'quảng trị ', 'đông hà ', '', '0935927000', 2, 'http://smartad.vn/', 'mang'),
(130, 137, 'Toàn Vũ', 'Sinh viên', 'HHT', 'Từ Liêm', 'Hà Nội', '', '0982865651', 2, 'http://zobile.blogspot.com', ''),
(131, 138, 'nguyen thanh', 'ki thuat', 'fpt', 'Đông hà- quảng trị', 'đông hà ', '', '0935927000', 2, 'smartad.vn', 'giới  thiệu'),
(132, 139, 'Tran Minh Hung', '', '', '87 Kim Tan Phuong hoa Hieu Nghia Dan Nghe An', 'Vinh', '', '0942046999', 2, 'example', ''),
(133, 140, 'HN', '', '', 'Hà Nội', 'Hà Nội', '', '0936043579', 2, 'letsgame.cuchot.mobi', 'internet'),
(134, 141, 'Tống Văn Chuyền', 'Sinh Viên', 'Hà Nội', 'số 8, Phùng Khoang, Từ Liêm', 'Hà Nội', '', '0969468475', 2, 'facebook.com, email marketing, youtube.com, twitter.com', 'Người giới thiệu : namxelam@gmail.com'),
(135, 142, 'tran thanh', 'hoc sinh', 'hoc sinh', 'quang tri ', 'quang tri ', '', '0934008444', 2, 'http://smartad.vn/', 'mang'),
(136, 143, 'Tran Trong Nghia', '', '', 'sn 38 to 6 phuong tan thinh', 'Thai Nguyen', '', '0987761916', 2, 'facebook, email marketing, google ads, youtube', 'Ref : namxelam@gmail.com'),
(137, 144, 'linh', '', '', 'van yen', 'yenbai', '', '0981625318', 2, 'game4.hayday.mobi', 'mang xa hoi'),
(138, 145, 'Nguyễn Thị Hạnh', '', '', 'Phố Nối - Mỹ Hào', 'Hưng Yên', '', '0677073333', 2, 'vietpro.in', ''),
(139, 146, 'Đàm Văn Ninh', 'Sinh Viên', 'Hà Nội', 'số 8, Phùng Khoang', 'Hà Nội', '', '01657180763', 2, 'facebook, email marketing, youtube.com, vibe.com', 'Người giới thiệu : namxelam@gmail.com'),
(140, 147, 'Vũ Trương Đạt', '', '', 'Thanh Miện, Hải Dương', 'Hải Dương', '', '01682326577', 2, 'Wapsite', ''),
(141, 148, 'Phạm Văn Khánh', 'Sinh Viên', 'Hà Nội', 'số 8, Phùng Khoang', 'Hà Nội', '', '0974607321', 2, 'facebook, email marketing, youtube.com, vibe.com', 'Người giới thiệu : namxelam@gmail.com'),
(142, 149, 'nguyen van truong', '', '', 'Hoài đức - hà nội', 'hà nội', '', '0983934713', 2, 'waptruyenhay.biz', ''),
(143, 150, 'Hồ Xuân Nam', 'SEOer', 'Hà Nội', 'Xã Tiến Thịnh - Mê Linh', 'Hà Nội', '', '84903434896', 2, 'socnhi.mobi', 'ddth.com'),
(144, 151, 'Hoàng Nhật Minh', 'Kỹ sư CNTT', 'VNPT', '1/503 Ngô Gia Tự, Đằng Lâm, Hải An', 'Hải Phòng', '', '0912303579', 2, 'mevn.net', 'ddth.com'),
(145, 152, 'Nguyen Van Thanh', '', '', '219 TranHung Dao', 'Binh Phuoc', '', '1234570234', 2, 'kenhphimtruyen.com', ''),
(146, 153, 'Le Trung Hieu', '', '', 'D3/15 Ấp 4 Qui Đức', 'HCM', '', '0908203601', 2, 'www.taianhdep.org', ''),
(147, 154, 'Hoàng Hữu Thư', '', '', 'Cổ Loa - Đông Anh', 'Hà Nội', '', '841634991111', 2, 'http://coloawap.net', ''),
(148, 155, 'Lê Nam', 'Sinh Viên', 'Hà Nội', 'Nguyễn Trãi', 'Hà Nội', '', '+841673381093', 2, 'email marketing, google adwords, seach internet, blogspot, parkupload.com', 'Google.Com'),
(149, 156, 'Lê Bắc Nam', 'Sinh Viên', 'Hà Nội', 'Nguyễn Trãi', 'Hà Nội', '', '+841673381093', 2, 'www.tien.pm, parkupload.com', 'Google.com'),
(150, 157, 'dau viet tu', 'hoc sinh', '', '45 quoc lo 4', 'ho chi minh', '', '84903520784', 2, 'facebook.com', 'qua mot nguoi ban'),
(151, 158, 'Ngoc', '', '', 'Cau Giay', 'Ha Noi', '', '01646815058', 2, 'viet69.net', ''),
(152, 159, 'Phạm Đình Công', '', '', 'Định Công - Hoàng Mai - Hà Nội', 'Hà Nội', '', '0963956988', 2, 'http://taimobogenie.com/', 'nhân viên tư vấn'),
(153, 160, 'đoàn việt cường', 'sinh viên', '', 'k289/14 trường chinh', 'Đà Nẵng', '', '01223185584', 2, 'facebook', 'email'),
(154, 161, 'Nguyễn Thế Duyệt', '', '', 'Ân thi, Hưng Yên', 'Hưng Yên', '', '0964356439', 2, 'boy6495.motgame.net , avatargame.hayday.mobi, trochoi12h.wap.sh', ''),
(155, 162, 'Vũ Xuân Hùng', '', '', 'Từ Liêm - Hà Nội', 'Ha Noi', '', '841238082749', 2, 'ios.taigamevip.com', 'dien dan'),
(156, 163, 'Nguyễn Thùy Dương', '', '', 'Cầu Giấy', 'Hà Nội', '', '0904138585', 2, 'vietnamm.vn', 'DDTH'),
(157, 164, 'Doan Cuong', 'Sinh Vien', 'DHCN HN', 'từ liêm-hà nội', 'Ha Noi', '', '01682134390', 2, 'phim56.net', 'internet'),
(158, 165, 'Hiếu ', '', '', 'Kim mã', 'Hà Nội', '', '01646728841', 2, 'kỹ thuật', ''),
(159, 166, 'Nguyễn Tất Tường', '', '', 'Đô Lương', 'Nghệ An', '', '01688646020', 2, 'www.msechia.net', ''),
(160, 167, 'Đoàn Phát Đạt', 'Sinh Viên', 'Hồ CHí Minh', 'Ho Chi Minh', 'Ho Chi Minh', '', '0976994963', 2, 'http://wapti.mobi', 'http://sinhvienhost.com'),
(161, 168, 'Phạm Quang Trung', 'Kỹ Sư', 'Hà Nội', 'Đội Cấn, Ba Đình', 'Hà Nội', '', '0979831219', 2, 'nothing', 'internet'),
(162, 169, 'Vũ', 'IT', '', 'Đội Cấn', 'Hà Nội', '', '01228392168', 2, 'clipxemnhieu.com', ''),
(163, 170, 'Vũ Tuấn Kiệt', '', '', 'Hà Đông', 'Hà nội', '', '0917744755', 2, 'batdongsanhanoi.net, otohanoi.net,', 'google'),
(164, 171, 'Do Tuan', '', '', 'Long Biên', 'Hà Nội', '', '0987692950', 2, 'truyenteen.vn', ''),
(165, 172, 'Vu Dinh Chi', '', 'Chia se ban quyen', 'Gia Binh', 'bac ninh', '', '0977746705', 2, 'http://chiasebanquyen.com', ''),
(166, 173, 'Nguyen Tho Nhat Minh', '', '', 'Hong Bang', 'NT', '', '0926267890', 2, 'gameprivate.vn', 'DDTH'),
(167, 174, 'Đỗ Xuân Hoà', 'Nhiên Viên IT', 'ocewa', 'Tầng 2, Tòa nhà 25T2, Khu đô thị Đông Nam Trần Duy Hưng, P.Trung Hòa, Q.Cầu Giấy, TP. Hà Nội', 'Ha Noi', '', '0963868023', 2, 'http://android360tvn.blogspot.com/', ''),
(168, 175, 'Pham Van Tich', '', '', 'Long Biên', 'Hà Nội', '', '0979571134', 2, 'kienthucgioitinh.or, suckhoe24h.edu.vn', ''),
(169, 176, 'Nguyễn Thắng Mạnh', 'Kỹ Thuật Phần Mềm', 'Thành Phố Hồ Chí Minh', '6/25 Phạm Quý Thích', 'Hồ Chí Minh', '', '0933634142', 2, 'smartad.vn', 'Qua Email của Admin'),
(170, 177, 'Ngô Văn Tú', '', '', 'Hà Nội', 'Hà Nội', '', '0988807699', 2, 'gamhaynhat.vn', 'nhân viên của công ty smartad.vn'),
(171, 178, 'LANG THIEN PHUC', '', '', 'E14', 'SADEC', '', '0938131734', 2, 'http://smartad.vn', ''),
(172, 179, 'Phạm Minh Bảo', 'Sinh Viên', 'Nhà', 'Hà Nội', 'Hà Nội', '', '0972218931', 2, 'dongcam.mobi, xosovui.com', ''),
(173, 180, 'Trần Văn Quang', '', '', 'Hà Nội', 'Hà Nội', '', '84979943129', 2, 'trangtaigame.vn', ''),
(174, 181, 'Vũ Anh Tuấn', '', '', '6/53, ngõ 68 cầu giấy', 'Hà Nội', '', '01695312176', 2, 'facebook.com, yeumobie.info. youtube.com, email makerting', 'Google search'),
(175, 182, 'bui bao', '', '', 'thanh hóa', 'thanh hóa', '', '0967826278', 2, 'wap', ''),
(176, 183, 'vi long giang', '', '', 'dong thanh', 'viet tri', '', '01658943059', 2, 'wapsite', ''),
(177, 184, 'hoang peni', '', '', '242A Thai Thi Boi', 'Da Nang', '', '0905722768', 2, 'http://phimss.net/', ''),
(178, 185, 'Đạt NT', '', '', '886 Đường Láng', 'Hà Nội', '', '0966936292', 2, 'wap', 'internet'),
(179, 186, 'Đạt NT', '', '', '886 Đường Láng', 'Hà Nội', '', '0966936292', 2, 'wapsite', 'internet'),
(180, 187, 'Nguyễn Khắc Dũng', 'IT', 'PICO PLAZA', '173 XUÂN THỦY', 'HÀ NỘI', '', '0936143232', 2, 'http://pp.ibet88.ú/vindiesel', 'Bạn bè giới thiệu'),
(181, 188, 'Phan Thị Ngọc Điệp', 'Nội trợ', 'ko có', 'Phạm Văn Chiêu Gò Vấp Phường 14', 'Hồ Chí Minh', '', '0906153870', 2, 'ko có', ''),
(182, 189, 'Tạ Trấn', 'sinh vien', '', '294 Trần Hưng Đạo,thị trấn Sa Thầy,huyện Sa Thầy', 'Kon Tum', '', '0988547919', 2, 'smartad.vn', 'ban be'),
(183, 190, 'Đinh Tấn Bảo', '', '', 'Bình Định', 'Quy Nhơn', '', '0979435520', 2, 'trangwap.mobi, www,taizalomobile.net', ''),
(184, 191, 'VU NGOC SON', '', '', '212 Nguyễn Xiển', 'Thanh Xuan', '', '+84966408078', 2, 'http://khexanh.net', ''),
(185, 192, 'nguyen phat tai', '', '', 'vinh long', 'vinh long', '', '0967173254', 2, 'smartad.vn', 'google'),
(186, 193, 'gmp', '', '', 'thái bình', 'thái bình', '', '0963888113', 2, 'gamemienphi.pro', ''),
(187, 194, 'Quốc Nam', '', '', 'Can Lộc', 'Hà Tĩnh', '', '01672106731', 2, '2game.pro', 'daivietpda.vn'),
(188, 195, 'Nguyễn Bình Nam', '', '', 'Quận 5', 'TPHCM', '', '0902208207', 2, 'www.truyenviet.com', 'diễn đàn'),
(189, 196, 'khanh dao duy', '', '', 'phu thai', 'hai duong', '', '84972871854', 2, 'vgaz.pro', ''),
(190, 197, 'Trần Văn Đông', 'Học Sinh', 'Gia Lai', 'Gia Lai', 'Gia Lai', '', '01658556808', 2, 'thegioiapps.tk', 'google'),
(191, 198, 'NGUYEN NGOC QUY', '', '', 'XOM 8, NGHIA THUAN', 'THAI HOA, NGHE AN', '', '841645758258', 2, 'smartad.vn', ''),
(192, 199, 'Nguyễn Kim Quảng', 'Kĩ thuật phần mềm', 'Yourphone.vn', '216 Xã Đàn', 'Hà Nội', '', '01655999129', 2, 'yourphone.vn', 'google.vn'),
(193, 200, 'Lê Thế Anh', 'Kĩ thuật', 'FPT shop', 'quang trị', 'quang trị', '', '01222220780', 2, 'http://smartad.vn', 'quảng cáo'),
(194, 201, 'Phạm Văn Phong', 'Học sinh', '', 'Tổ 2 Cụm 1', 'Thị Trấn A Lưới, TT Huế', '', '01635053433', 2, 'facebook.com', ''),
(195, 202, 'Đình Quang Khải', '', '', 'Đông Anh', 'Hà Nội', '', '01635180395', 2, 'smartad.vn', ''),
(196, 203, 'Nguyễn Trung Tần', 'sinh viên', 'viện đại học hà nội', '301 nguyễn trãi', 'Hà nội', '', '01262077201', 2, 'smartad.vn', ''),
(197, 204, 'hoang van linh', 'sinh vien', 'thai nguyen', 'babe', 'bac kan', '', '01658014844', 2, 'tat ca', 'internet'),
(198, 205, 'Nguyen Quang Dat', 'Java and Android Development', '', 'Ninh Sơn Chúc Sơn - Chướng mỹ - Hà Nội ', 'Hà Nôi', '', '01696929813', 2, 'facebook.com/fcninhson', 'Google'),
(199, 206, 'Nguyễn Chí Tiến', 'kinh doanh', 'Hà Nội', 'An Thượng - Hoài Đức', 'Hà Nội', '', '0988031989', 2, 'nhacdj.vn', 'Việt'),
(200, 207, 'liễu gia lương', 'sinh viên', 'thái nguyên', 'thái nguyên', 'thái nguyên', '', '01699561007', 2, 'kidzls.blogspot.com', 'inernet'),
(201, 208, 'Trình Công Pháp', '', '', 'Quảng Nam', 'Quảng Nam', '', '0986314698', 2, 'game', 'daivietpda'),
(202, 209, 'Lê Minh Quân', 'kĩ thuật viên', 'Đà Nẵng', 'H17/7 K06 Phạm Nhữ Tăng', 'Đà Nẵng', '', '01215642102', 2, 'Mobile, Facebook', 'google'),
(203, 210, 'duong manh hung', 'nhan vien kinh doanh', 'ADM', '201 xuan dinh', 'Ha Noi', '', '01668629104', 2, 'cua hang di dong', 'internet'),
(204, 211, 'Doan Tien Nguyen', '', '', 'Ha noi', 'Ha noi', '', '0979756828', 2, 'fanpage, forum...', ''),
(205, 212, 'Hoàng Công Tuyến', 'Technical Support', 'Phúc Yên - Vĩnh Phúc', 'Phúc Yên', 'Vĩnh Phúc', '', '0974719769', 2, 'forum', 'mail mời tham dự'),
(206, 213, 'phạm quang anh', 'kỹ thuật viên', 'Phúc Yên', 'Thị xã Phúc Yên', 'Vĩnh Phúc', '', '01248678989', 2, 'quảng cáo,cài đặt điện thoại', 'mail'),
(207, 214, 'Le Hieu', 'Freelancer', '', 'Ha Noi', 'Ha Noi', '', '0932210292', 2, 'facebook', 'google'),
(208, 215, 'Nguyễn Thanh Hà Nam', 'Sinh viên', '', 'Tam Phu, Tam Ky', 'Quang Nam', '', '0974151540', 2, 'tingamevn.com', 'Bạn bè'),
(209, 216, 'Vũ Đức Thanh Sơn', '', '', '48a Ben cat', 'Hồ Chí Minh', '', '01269342590', 2, 'smartad.vn', 'google search'),
(210, 217, 'Lê Minh Trường', 'hỗ trợ kỹ thuật', 'fptshop', 'Đông Anh', 'Hà Nội', '', '01666558693', 2, 'smartad.vn', 'internet'),
(211, 218, 'Đoàn Văn Tú', 'Kỹ thuật viên', 'Sóc Sơn - Hà Nội', 'Sóc Sơn', 'Hà Nội', '', '01666558624', 2, 'smart.vn', 'internet'),
(212, 219, 'Nguyen Huu Son', 'Giao Vien', 'Me Linh - Ha Noi', 'Thach Da - Me Linh - Ha Noi', 'Ha Noi', '', '0986868464', 2, 'smartad.vn', ''),
(213, 220, 'Đặng Duy Hưng', 'Công nghệ thông tin', 'Chưa', 'Nghệ An', 'Vinh', '', '0978264257', 2, 'duy3s.com', 'tự tìm tòi trên mạng'),
(214, 221, 'Nguyen Minh Tan', 'điện thoại', 'hcm', 'Bình Thạnh', 'hcm', '', '0934910789', 2, 'web, của hàng...', 'mail'),
(215, 222, 'NGUYỄN MINH NHẬT', 'KỸ SƯ', 'TPHCM', '107 NGUYỄN BỈNH KHIÊM', 'HỒ CHÍ MINH', '', '0938935846', 2, 'http://vanphongphamrenhat.com/', 'QUẢNG CÁO'),
(216, 223, 'hoai', '', '', 'ha noi', 'hà nội', '', '0969440221', 2, 'game', 'tu do'),
(217, 224, 'Hoàng Công Tuyến', 'kỹ thuật viên', 'Vĩnh Phúc', 'Thị xã Phúc Yên', 'Vĩnh Phúc', '', '0974719769', 2, 'all', 'mail'),
(218, 225, 'Administrator 2 Guest', '', '', '', '', '', '', 2, '', ''),
(219, 226, 'nguyễn bảo ngọc', '', '', '131 sông nhuệ', 'hà nội', '', '0972262687', 2, 'kenh16.org', ''),
(220, 227, 'Nguyễn Thanh Hải', 'Sinh Viên', 'Thái Nguyên', ' Thái Nguyên', ' Thái Nguyên', '', '01636141195', 2, 'facebook.com. Email, Google Ads', 'Email'),
(221, 228, 'phan hữu toán', '', '', 'rạch chèo-phú tân-cà mau', 'cà mau', '', '0916622317', 2, 'facebook', 'thu moi email'),
(222, 229, 'Đặng Phước Tân', '', '', 'Thôn trung 1, Xã Diên Điền, Huyện Diên Khánh, Tỉnh Khánh Hòa', 'Nha Trang ', '', '0932569300', 2, 'taiungdungiphone.com', 'Google'),
(223, 230, 'Tung Luong', 'Nông Dân', 'Sohacorp', '1034 Duong Lang', 'Ha Noi', '', '841683789119', 2, 'so1.asia', 'sohacorp.vn'),
(224, 231, 'daipham89', 'cong nhan', 'ninh binh', 'xom5 xa dinh hoa huyen kim son tinh ninh binh', 'ninh binh', '', '01678001362', 2, 'dien tu', 'khanhhv@smartad.vn'),
(225, 232, 'on quang bao', 'CÔNG nhân', 'hồ chí minh', 'tân bình', 'hồ chí minh', '', '0916498729', 2, 'onquangbao@gmail.com', 'mạng'),
(226, 233, 'Phạm Tuấn Thành', 'wapmaster, technicial mobile', '', 'Hà Nội', 'Hà Nội', '', '0978981412', 2, 'smartad.vn', 'Bạn bè'),
(227, 234, 'Phan Lam Phương', '', '', 'Hải Lăng', 'Quảng Trị', '', '01269071800', 2, 'facebook.com,youtube.com', ''),
(228, 235, 'BÙI VĂN KIÊN', 'tự doanh', 'HCM', '151/67/26 kp5 - đường liên khu 4-5', 'Hồ chí minh', '', '01673179999', 2, 'sologame.com.vn', 'Google'),
(229, 236, 'hoang duc duy', 'tự do ', 'móng cái', 'mong cái ', 'Quảng ninh', '', '0975166671', 2, 'ứng dụng,game ', 'thư mời'),
(230, 237, 'Dinh Duy Huan', 'Marketing', 'tự do', 'Ha Dong', 'Ha Noi', '', '0904665759', 2, 'truyentranhtuan.net', 'bạn bè'),
(231, 238, 'Nguyễn Hải Nam', '', '', 'Cầu Giấy', 'Hà Nội', '', '0987878512', 2, 'facebook.com', ''),
(232, 239, 'phạm văn thanh', '', '', 'hà nội việt ', 'thanh123', '', '0966668058', 2, 'gamemobi.pro', 'SVCDBVFDG  DFFV'),
(233, 240, 'Nông Văn Sáng', 'Kinh Doanh', 'thái nguyên', 'xã nghinh tường, huyện võ nhai, tỉnh thái nguyên', 'thái nguyên', '', '01692957671', 2, 'smartad.vn', 'Google.com'),
(234, 241, 'Tran duc', 'Admi ', 'Thai binh', 'Don&apos;t hung', 'Thai binh', '', '01636822693', 2, 'Forum', 'No'),
(235, 242, 'Huỳnh Quách Phi', '', '', 'TPHCM', 'TPHCM', '', '0966535221', 2, '2playgame.net', ''),
(236, 243, 'Đào Đức Chính', 'Sinh viên', '', 'Ba Đình', 'Hà Nội', '', '01273985271', 2, 'Facebook ads', 'Internet'),
(237, 244, 'dinh trieu', 'sinh vien', 'phan thiet', 'khu 3', 'phan thiet', '', '01628397112', 2, '', ''),
(238, 245, 'Đỗ Thanh Trúc', 'Sinh Viên', 'Hồ Chí Minh', 'Phú Yên', 'Phú Yên', '', '01698236264', 2, 'http;//14giay.com', ''),
(239, 246, 'đỗ thanh trúc', 'Sinh Viên', 'Hồ Chí Minh', 'Phú Yên', 'Phú Yên', '', '01698236264', 2, 'http;//14giay.com', ''),
(240, 247, 'nguyen trung kien', '', '', 'thuong tin', 'ha noi', '', '01233518212', 2, 'cpi', ''),
(241, 248, 'Tuấn Anh', 'Sinh Viên', '', 'An Bình ', 'Cần Thơ', '', '01267365784', 2, 'Đang tìm hiểu', 'Google'),
(242, 249, 'PHÙNG VĂN PHÚC', 'NHÂN VIÊN', 'CÔNG TY TNHH DURING VIỆT NAM', 'VẠN PHÚC-NINH GIANG-HẢI DƯƠNG', 'HẢI DƯƠNG', '', '01667558559', 2, 'facebook.com, xtgem...', 'smartad'),
(243, 250, 'Dương Ngọc Lâm', 'Seo', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '0966702153', 2, 'taigamehaynhat2014.com', ''),
(244, 251, 'tran chan thanh', 'nhan vien', '', '73 nguyen thi p13 q5', 'hcm', '', '0908927497', 2, 'truc tiep', 'google'),
(245, 252, 'Ân Nguyễn', '', '', '1/27', 'hồ chí minh', '', '01646847473', 2, 'facebook.com', ''),
(246, 253, 'Phạm Trọng Mẫn', 'Marketing Online', '120/35 Phạm Văn Bạch, Phường 15, Tân Bình', '120/35 Phạm Văn Bạch, Phường 15, Tân Bình', 'Ho Chi Minh', '', '+84969075331', 2, 'thebestgptonline.us', 'Goolge'),
(247, 254, 'Thanh Minh', '', '', 'P. Tây Mỗ - Q. Nam Từ Liêm', 'Hà Nội', '', '0979551891', 2, 'None', ''),
(248, 255, 'Lại Quang Tuấn', 'sinh viên', 'hà nội', 'vân trì nguyên xá nam từ liêm hà nội', 'Ha Noi', '', '01668062147', 2, 'smartad.com', 'google'),
(249, 256, 'Võ Ngọc Minh', 'Sinh Viên', 'Hà Nội', 'Tráng Việt, Mê Linh, Hà Nội', 'Hà Nội', '', '01698107387', 2, 'http://choang321.pro', 'Giới Thiệu'),
(250, 257, 'Nguyễn Hữu Tiên', '', '', '132 OCD', 'Hà Nội', '', '0943943336', 2, 'mho.vn', ''),
(251, 258, 'Đinh văn hiệp', 'sinh vien', 'dai hoc tay nguyen', '12/11 nguyen an ninh', 'buon me thuot', '', '01666889636', 2, 'www.facebook.com/nhok.khokhao.10', ''),
(252, 259, 'Bùi Quang Thuấn', 'IT', 'Tân Bình', 'Mai Bão Bạng Phường 13 Quận Tân Bình', 'Hồ Chí Minh', '', '0932681777', 2, 'online và offline', 'khanhhv90'),
(253, 260, 'duy dinh van', '', '', 'hà nội', 'seoer', '', '0977359556', 2, 'app', 'Nhân viên khánh giới thiệu'),
(254, 261, 'havanluong', 'sinh vien', 'dh TayNguyen', '64 ywang', 'BMT', '', '01672556742', 2, 'facebook.com', 'google'),
(255, 262, 'Nguyen Huy Binh', 'Sinh viên', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '0974246888', 2, '1app.mobi', ''),
(256, 263, 'Nguyen Trung Hieu', 'Ky thuat vien thong', 'Pico ', '324 Tay Son', 'Ha Noi', '', '0933052221', 2, 'wed', 'Ban be'),
(257, 264, 'Phạm Tuấn Thành', 'Technicial, wapmaster', '', 'HN', 'HN', '', '0978981412', 2, 'wap', 'Bạn bè'),
(258, 265, 'Phạm Anh Tuấn', 'IT', 'PATITCo Company', 'Nam Định', 'Nam Định', '', '01238468603', 2, 'http://game-online-cho-dien-thoai.blogspot.com/', 'Bạn bè'),
(259, 266, 'hr mi', 'sinh vien', 'sangame', 'ho he', 'ho co', '', '0965164978', 2, 'istore', 'wapsite'),
(260, 267, 'hr mi', 'sinh vien', 'sangame', 'ho he', 'ho co', '', '0965164978', 2, 'istore', 'wapsite'),
(261, 268, 'Phạm Văn Hải', 'Sinh Viên', 'Hải Dương', 'Tứ Kỳ', 'Hải Dương', '', '0966220268', 2, 'waptaigameandroid.net', 'Google'),
(262, 269, 'Bùi Đình', 'Làm Nông', 'Nghệ An', 'Nam đàn', 'Vinh', '', '01666322919', 2, 'waphay4u.Com', 'google'),
(263, 270, 'Nguyen Tien Dat', '', '', 'My Dinh', 'ha Noi', '', '01678832509', 2, 'tinvip14h.unni.me', '4rum'),
(264, 271, 'Nguyễn Khắc Dũng', '', '', 'só 4 ngách 25/43 vũ ngọc phan', 'hà nội', '', '0936143232', 2, 'aaa.vuinhe.net', ''),
(265, 272, 'Trần Thái Tân', 'kỹ thuật viên', 'TNHH Di Động Việt', '76/17F Xuân Diệu, Quận Tân Bình', 'Hồ Chính Minh', '', '01692419982', 2, 'smartad.vn', 'người quen giới thiệu'),
(266, 273, 'trần hải linh', '', '', 'hà nội', 'hà nội', '', '01699679829', 2, 'example.com', ''),
(267, 274, 'Nguyễn Trung Hiếu', 'Kỹ thuật viễn thông', 'Pico ', '76 Nguyễn Trãi', 'Hà Nội', '', '0933052221', 2, 'h2h.vuinhe.net', 'mạng internet'),
(268, 275, 'Bùi Quang Thuấn', 'IT', 'Hồ Chí Minh', '23 Mai Lão Bạng Phường 13 Tân Bình', 'Hồ Chí Minh', '', '0933990733', 2, 'online. offline', 'khanh'),
(269, 276, 'Nguyễn Văn Dũng', '', '', 'Ấp 2', 'Cà Mau', '', '01699188119', 2, 'gamehotnew.com', 'Facebook'),
(270, 277, 'phạm sĩ', '', '', 'ho chi minh', 'ho chi minh', '', '0909111052', 2, 'adflex.vn', 'facebook'),
(271, 278, 'Nguyễn Minh Đức', 'Designer', 'Hà Nội', 'Nguyễn Thị Định - Trung Hòa - Cầu Giấy ', 'Hà Nội', '', '01299051991', 2, 'play.frog.vn', 'Facebook'),
(272, 279, 'Nguyễn Minh Đức', 'Designer', 'Hà Nội', 'Nguyễn Thị Định - Trung Hòa - Cầu Giấy ', 'Hà Nội', '', '01299051991', 2, 'play.frog.vn', 'Facebook'),
(273, 280, 'Vũ Mạnh Hoàng', '', '', 'số nhà 31 ngách 25/43 phố Vũ Ngọc Phan, Láng Hạ', 'Hà Nội', '', '0986563065', 2, 'ccc.so1.be', ''),
(274, 281, 'Ngô Tùng Dương', 'Sinh viên ', 'Sinh viên', 'Bắc Ninh Đáp Cầu', 'Bắc Ninh', '', '0968624196', 2, 'sinhvienit.net', 'sinhvienit.net'),
(275, 282, 'nguyen thi bich', 'bán hàng', 'gò vấp', 'ấp mới 1 tân xuân', 'hồ chí minh', '', '0943223837', 2, 'cửa hàng', 'web'),
(276, 283, 'Lê văn Kiên', 'Sinh viên', 'Hà Nội', 'Hà Nội', 'Hà Nội', '', '0986132694', 2, 'www.facebook.com', 'http://sinhvienit.net/forum/kiem-tien-online-cuc-de-voi-smartad-vn.319331.html'),
(277, 284, 'Trương Quốc Khánh', 'Sinh Viên', 'Viện đại học mở Hà Nội', 'số 52 - tiểu khu 13 - Hát Lót - Mai Sơn', 'Sơn La', '', '01626210559', 2, 'enbac.com', 'sinhvienit.net'),
(278, 285, 'bui long an', 'khong co ', ' o nha', ' ha noi', 'ha noi', '', '01677639650', 2, 'facebook.com', 'sinhvienit'),
(279, 286, 'Nguyễn Thanh Phong', 'Giáo Viên', '', 'Chợ Lầu - Bắc Bình - Bình Thuận', 'Phan Thiết', '', '01646855321', 2, 'smartad', ''),
(280, 287, 'Nguyễn Thanh Phong', '', '', 'Phan Thiết - Bình Thuận', 'Phan Thiết', '', '01646855321', 2, 'smartad', ''),
(281, 288, 'trần quang tuyên', '', '', 'xóm 3, sơn thành, yên thành', 'nghệ an', '', '01699045933', 2, 'obit.wap.sh', ''),
(282, 289, 'Nguyễn Bá Huy', 'wapmaster', '', 'xóm 15, quỳnh lâm, quỳnh lưu, nghệ an', 'vinh-nghệ an', '', '0989144067', 2, 'http://giaitri.pro', ''),
(283, 290, 'hoàng đức tuấn', '', '', 'hải dương', 'hải dương', '', '0969544223', 2, 'smartad.vn', ''),
(284, 291, 'Nguyễn Văn Nam', '', '', '266/77 Phạm Văn Hai', 'Hồ Chí Minh', '', '01689914232', 2, 'facebook.com', 'Internet'),
(285, 292, 'Nguyễn Quang Chung', '', '', 'Vân Xuân - Vĩnh Tường - Vĩnh Phúc', 'Vĩnh Phúc', '', '0904524567', 2, 'http://langnghe.info', ''),
(286, 293, 'Đạt NT', '', '', '886 Đường Láng', 'Hà Nội', '', '0966936292', 2, 'wap', ''),
(287, 294, 'Trần Văn Hà', '', '', 'Hà Nội', 'Hà Nội', '', '01668629104', 2, 'TGDD', ''),
(288, 295, 'Dương Mạnh Hùng', '', '', 'Xuân Đỉnh', 'Hà Nội', '', '01692082572', 2, 'đâsfgfdafsa', ''),
(289, 296, 'Lê Thành Nho', 'Sinh Viên', 'Can Tho University', '12B, ấp Phước Thạnh 2, xã Thành Triệu, huyện Châu Thành, tỉnh Bến Tre', 'Bến Tre', '', '0978691636', 2, 'Facebook', 'Forum'),
(290, 297, 'Cao Xuan Luan', 'SinhViên', 'Hải Phòng', 'Hải Phòng', 'Hải Phòng', '', '0966370324', 2, 'appandroid.com.vn', ''),
(291, 298, 'Võ Thanh Trung', 'Sinh viên', 'Tại nhà', 'Xuân Thới Thượng - Hóc Môn', 'Hồ Chí Minh', '', '01656882405', 2, 'ya4r.net', 'Facebook'),
(292, 299, 'Phan Lâm Tuấn', '', '', '52 Nguyễn Trung Trực F2 Tân An', 'Long An', '', '0907514488', 2, 'apkviet.com', 'facebook'),
(293, 300, 'Trần Lâm Thông', 'Admin sys', '', '38/6 Trung Lân Bà Điểm Hóc môn', 'HCM', '', '0906347270', 2, 'taiapp.net', 'Facebook https://www.facebook.com/profile.php?id=100007241895379'),
(294, 301, 'Nguyễn Hoàng Triều', '', '', '95 đường Nguyễn Như Hạnh', 'Đà Nẵng', '', '0938745637', 2, 'cungchoigame.biz', ''),
(295, 302, 'Vũ Mạnh Hoàng', '', '', 'số nhà 31 ngách 25/43 phố Vũ Ngọc Phan, Láng Hạ', 'Hà Nội', '', '0932312690', 2, 'ccc.so1.be', ''),
(296, 303, 'Le Bao', 'Hoc Sinh', 'Nha`', 'hoi lam gi', 'HCM', '', '01219362030', 2, 'smarda', 'CPI'),
(297, 304, 'lê thanh tùng', '', '', '14/3b, tổ 18, p.bửu long, biên hòa', 'đồng nai', '', '0916562592', 2, 'tung', 'internet');

-- --------------------------------------------------------

--
-- Table structure for table `user_ip`
--

DROP TABLE IF EXISTS `user_ip`;
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

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Affiliate Manager'),
(3, 'Merchant Manager'),
(4, 'Accountant'),
(5, 'Affiliate'),
(6, 'Non Active Affiliate'),
(7, 'Merchant');

-- --------------------------------------------------------

--
-- Table structure for table `warning`
--

DROP TABLE IF EXISTS `warning`;
CREATE TABLE IF NOT EXISTS `warning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_at` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `warning`
--

INSERT INTO `warning` (`id`, `message`, `create_at`, `expire_at`, `author`, `note`, `status`) VALUES
(3, 'Ch&agrave;o Mừng Hệ Thống Mới', '2014-11-03 18:03:09', '2014-11-07 00:00:00', 1, 'Test', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
