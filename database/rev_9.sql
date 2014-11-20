-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2014 at 06:15 PM
-- Server version: 5.5.37-0ubuntu0.13.10.1
-- PHP Version: 5.5.3-1ubuntu2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `registered_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `name`, `app_code`, `slug`, `image`, `short_description`, `adv_type`, `platform_id`, `appearance_id`, `area`, `from`, `to`, `status_id`, `content`, `link`, `price`, `size`, `registered_date`) VALUES
(3, 'Uc Browser', 'ucweb', 'uc-browser', 'http://smartad.vn/uploads/ucbrowser/logo.png', '<p>Phần mềm tr&igrave;nh duyệt web cho điện thoại di động, hỗ trợ java tiếng việt, download miễn ph&iacute; về điện thoại</p>', 1, 1, 2, 'Vietnam', '2014-10-29 00:00:00', '2014-11-29 00:00:00', 3, '<p>UC Browser đem lại cho bạn trải nghiệm lướt web nhanh v&agrave; mượt. UC Browser đưa ra c&aacute;c cấu h&igrave;nh truy cập kh&aacute;c nhau dựa tr&ecirc;n kết nối mạng gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng điều chỉnh việc duyệt web theo sở th&iacute;ch c&aacute; nh&acirc;n, giảm chi ph&iacute; dữ liệu v&agrave; tăng tốc độ tải trang web với sức n&eacute;n mạnh.</p>\r\n<p><span><strong>C&aacute;c t&iacute;nh năng:</strong><br />1. AutoPager<br />Đem lại cho bại trải nghiệm đọc xuy&ecirc;n suốt bằng c&aacute;ch tự động tải trang tiếp theo khi bạn duyệt đến cuối trang web hiện tại. Hiệu quả tr&ecirc;n phi&ecirc;n bản nhẹ của c&aacute;c trang nổi tiếng như Google, Twitter, Facebook v&agrave; hơn thế nữa.<br />2. Chế Độ Tăng Tốc II<br />Phi&ecirc;n bản n&acirc;ng cấp của chế độ Tăng Tốc sẽ chọn v&agrave; tr&igrave;nh b&agrave;y phi&ecirc;n bản ph&ugrave; hợp nhất của website t&ugrave;y theo kết nối mạng.<br />3. Tăng Tốc Download<br />Cải thiện trạng th&aacute;i kết nối mạng để tăng gấp bội tốc độ tải<br />4. Tải Ảnh Từ Facebook<br />Bạn c&oacute; thể tải những h&igrave;nh ảnh ưa th&iacute;ch từ Facebook về điện thoại<br />5. Tr&igrave;nh Duyệt H&agrave;ng Đầu, Giờ Đ&acirc;y C&ograve;n Tốt Hơn<br />Cải tiến hầu hết c&aacute;c chức năng v&agrave; tối ưu h&oacute;a để đem lại cho bạn một tốc độ nhanh hơn với độ ổn định cao hơn.<br />6. Trung T&acirc;m Ứng Dụng Web<br />Dễ d&agrave;ng t&igrave;m những ứng dụng web tốt nhất để việc trải nghiệm cuộc sống số tr&ecirc;n điện thoại kh&ocirc;ng c&ograve;n bị ảnh hưởng từ việc thường xuy&ecirc;n phải download, c&agrave;i đặt v&agrave; n&acirc;ng cấp.<br />7. Image Viewer<br />Mọi h&igrave;nh ảnh từ trang web đang duyệt được đặt c&ugrave;ng một nơi, như một quyển album.<br />8. UC Desktop Widget <br />Sử dụng tiện &iacute;ch n&agrave;y để tạo một widget tr&ecirc;n m&agrave;n h&igrave;nh của bạn để truy cập dễ d&agrave;ng c&aacute;c tiện &iacute;ch phong ph&uacute; của UC.<br />9. Th&ecirc;m Nhiều Ng&ocirc;n Ngữ v&agrave; Ph&ocirc;ng Chữ<br />Hỗ trợ nhiều ng&ocirc;n ngũ v&agrave; ph&ocirc;ng chữ bao gồm Tamil, Telugu, Malayalam v&agrave; hơn thế nữa.<br />10. Cải Thiện Tổng Quan<br />Những cải tiến tr&ecirc;n c&aacute;c chức năng ch&iacute;nh như đ&aacute;nh văn bản, di chuyển về trước &amp; sau, điều chỉnh ph&ocirc;ng chữ, v.v...</span><strong>giải thưởng:</strong><span>*****Tr&igrave;nh duyệt tốt nhất cho di động 2011 theo About.com*****<br />*****Tr&igrave;nh duyệt tốt nhất cho Android 2012 theo About.com***** <br />- UC Browser tự h&agrave;o l&agrave; tr&igrave;nh duyệt phổ biến nhất tr&ecirc;n thế giới với hơn 400 triệu người d&ugrave;ng.</span><span><br />"T&oacute;m lại, UC Browser l&agrave; sản phẩm kết hợp t&iacute;nh năng vượt trội, thiết kế đơn giản, duyệt nhanh với danh mục v&agrave; bố tr&iacute; đẹp. Đ&oacute; l&agrave; những g&igrave; một tr&igrave;nh duyệt di động phải c&oacute;." - Androidzoom.com</span><span><br /> &ldquo;Tr&igrave;nh duyệt tốt nhất t&ocirc;i đ&atilde; từng sử dụng. T&ocirc;i đ&atilde; từng d&ugrave;ng Dolphin, Chrome, Firefox, Boat Browser v&agrave; Opera nhưng chỉ c&oacute; UC Browser mới l&agrave;m t&ocirc;i h&agrave;i l&ograve;ng với tốc độ tuyệt đỉnh.&rdquo; - Fuad - Th&aacute;ng 10, 2012 - Version 8.4.1</span></p>', 'market://details?id=com.UCMobile.intl&referrer=utm_source%3Dchenky%2540smartadvngp%2523&hash_code={hashCode}', 4500, '3.5 M', '0000-00-00 00:00:00');

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

DROP TABLE IF EXISTS `merchant`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`id`, `user_id`, `identity_card`, `type`, `number`, `owner`, `branch`, `update_code`, `as_default`) VALUES
(6, 10, NULL, '', '', '', '', NULL, 0);

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
(1, 'Thông báo: Thanh toán doanh thu SmartAd 9/2014', 'thanh-toan-doanh-thu-smartad-9-2014', 'Thông báo: Thanh toán doanh thu SmartAd 9/2014 ', '<p><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">Thời gian thanh to&aacute;n l&agrave;: ng&agrave;y 15 v&agrave; 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua bưu điện nhận tiền tại bưu cục đăng k&yacute; từ ng&agrave;y 17/08/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c bạn nhận tiền qua ng&acirc;n h&agrave;ng, nếu hết ngay 16/10/2014 chưa nhận được tiền th&igrave; vui l&ograve;ng pm lại BQT&nbsp;để được giải đ&aacute;p.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&aacute;c th&agrave;nh vi&ecirc;n nhận thanh to&aacute;n bằng thẻ điện thoại. Nhận m&atilde; thẻ trong mail tại smartAd ng&agrave;y 16/10/2014.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">C&ograve;n bạn th&agrave;nh vi&ecirc;n n&agrave;o chưa cập nhật th&ocirc;ng tin thanh to&aacute;n, hoặc muốn thay đổi th&ocirc;ng tin thanh to&aacute;n th&igrave; vui l&ograve;ng cập nhật chậm nhất l&agrave; ng&agrave;y 12/10/2014 nh&eacute;.</span><br style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;" /><span style="box-sizing: border-box; color: #222222; font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12.727272033691406px; background-color: #f9f9f9;">Ch&uacute;c c&aacute;c bạn kinh doanh hiệu quả ^^</span></p>', '2014-10-11 12:18:17', 1, 1, 'page', 0, 1),
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
