/*
 Navicat Premium Data Transfer

 Source Server         : 150.95.104.235_docker_mysql
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : 150.95.104.235:3307
 Source Schema         : smart

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 21/10/2025 16:36:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_banners
-- ----------------------------
DROP TABLE IF EXISTS `app_banners`;
CREATE TABLE `app_banners`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKs9ldgop12h7k8fnkf82eoxora`(`app_id`) USING BTREE,
  CONSTRAINT `FKs9ldgop12h7k8fnkf82eoxora` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_banners
-- ----------------------------
INSERT INTO `app_banners` VALUES (2, 'Banner 1', '1760630660701-banner-1.png', '1', 1, b'1', '2025-10-13 13:55:26.000000', 'admin@gmail.com', '2025-10-16 16:04:22.575980', 'admin@gmail.com', 11, 1);
INSERT INTO `app_banners` VALUES (3, 'Banner 2', '1760630675731-banner-2.png', '2', 1, b'1', '2025-10-13 13:56:02.000000', 'admin@gmail.com', '2025-10-16 16:04:36.786266', 'admin@gmail.com', 11, 2);
INSERT INTO `app_banners` VALUES (4, 'Banner 3', '1760630700174-banner-3.png', '3', 1, b'1', '2025-10-16 16:05:01.513397', 'admin@gmail.com', NULL, NULL, 11, 3);
INSERT INTO `app_banners` VALUES (5, 'Banner 4', '1760630727844-banner-4.png', '4', 1, b'1', '2025-10-16 16:05:28.904220', 'admin@gmail.com', NULL, NULL, 11, 4);
INSERT INTO `app_banners` VALUES (6, 'Banner 5', '1760630746826-banner-5.png', '5', 5, b'1', '2025-10-16 16:05:48.147714', 'admin@gmail.com', NULL, NULL, 11, 5);

-- ----------------------------
-- Table structure for app_categories
-- ----------------------------
DROP TABLE IF EXISTS `app_categories`;
CREATE TABLE `app_categories`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKtiqq77mxhb7tx8i5ey6acuxv3`(`app_id`) USING BTREE,
  CONSTRAINT `FKtiqq77mxhb7tx8i5ey6acuxv3` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_categories
-- ----------------------------
INSERT INTO `app_categories` VALUES (2, 'Chính trị', '2', b'1', 2, NULL, NULL, NULL, NULL, 11, 1, '1');
INSERT INTO `app_categories` VALUES (3, 'Kinh tế', '1', b'1', 1, NULL, NULL, NULL, NULL, 11, 1, '1');
INSERT INTO `app_categories` VALUES (4, 'Kinh tế', '1760364460683-1716687768336-apple.jpg', b'1', 2, '2025-10-13 14:07:44.000000', 'admin@gmail.com', NULL, NULL, 14, 2, 'ss');

-- ----------------------------
-- Table structure for app_configs
-- ----------------------------
DROP TABLE IF EXISTS `app_configs`;
CREATE TABLE `app_configs`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgfupwwwvj5elm4upy5pkbsyj9`(`app_id`) USING BTREE,
  CONSTRAINT `FKgfupwwwvj5elm4upy5pkbsyj9` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_configs
-- ----------------------------
INSERT INTO `app_configs` VALUES (2, 'Tin tức', '1761037236596-newspaper.png', '/news', 1, b'1', 1, '2025-10-13 13:34:13.000000', 'admin@gmail.com', '2025-10-21 09:00:54.536475', 'admin@gmail.com', 11, '<p>Tin tức</p>');
INSERT INTO `app_configs` VALUES (3, 'Tra cứu thủ tục hành chính', '1760362520591-marketing.png', 'https://thutuc.dichvucong.gov.vn/p/home/dvc-tthc-trang-chu.html', 1, b'1', 4, '2025-10-13 13:36:35.000000', 'admin@gmail.com', '2025-10-21 09:08:20.715448', 'admin@gmail.com', 11, '<p>Tra cứu thủ tục hành chính</p>');
INSERT INTO `app_configs` VALUES (5, 'Tra cứu hồ sơ', '1761037485248-tracuu_hs.png', 'https://dichvucong.gov.vn/p/home/dvc-tra-cuu-ho-so.html', 1, b'1', 3, '2025-10-13 13:41:05.000000', 'admin_portal_bn@gmail.com', '2025-10-21 09:07:30.620992', 'admin@gmail.com', 11, '<p>Tra cứu hồ sơ</p>');
INSERT INTO `app_configs` VALUES (6, 'Phản ánh hiện trường', '1761037335025-paht_bg.png', 'https://paht.bacninh.gov.vn', 1, b'1', 2, '2025-10-21 09:02:21.101469', 'admin@gmail.com', NULL, NULL, 11, '<p>Phản ánh hiện trường</p>');
INSERT INTO `app_configs` VALUES (7, 'Truyền hình Bắc Ninh', '1761037778228-truyenhinh_bnh.png', 'https://bacninhtv.vn/', 1, b'1', 5, '2025-10-21 09:09:56.729836', 'admin@gmail.com', NULL, NULL, 11, '<p>Truyền hình Bắc Ninh</p>');
INSERT INTO `app_configs` VALUES (8, 'Hỏi đáp', '1761039092852-hoidap.png', '/qas', 1, b'1', 6, '2025-10-21 09:31:44.067172', 'admin@gmail.com', NULL, NULL, 11, '<p>Hỏi đáp</p>');
INSERT INTO `app_configs` VALUES (9, 'Thông tin trợ giúp', '1761039223463-thongtintrogiup.png', '/infor', 1, b'1', 7, '2025-10-21 09:33:48.012709', 'admin@gmail.com', NULL, NULL, 11, '<p>Thông tin trợ giúp</p>');
INSERT INTO `app_configs` VALUES (10, 'Du lịch', '1761039272358-dulich.png', 'https://bacninh.gov.vn/du-khach', 1, b'1', 8, '2025-10-21 09:35:07.309951', 'admin@gmail.com', NULL, NULL, 11, '<p>Du lịch</p>');

-- ----------------------------
-- Table structure for app_hotlines
-- ----------------------------
DROP TABLE IF EXISTS `app_hotlines`;
CREATE TABLE `app_hotlines`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgfupwwwvj5elm4upy5pkbsyj9`(`app_id`) USING BTREE,
  CONSTRAINT `app_hotlines_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_hotlines
-- ----------------------------
INSERT INTO `app_hotlines` VALUES (2, 'Công an phường Bắc Giang', '1760364081992-real-estate.png', '22553369', 3, b'1', 3, '2025-10-13 14:01:26.000000', 'admin@gmail.com', NULL, NULL, 11, '<p>Công an phường Bắc Giang</p>');
INSERT INTO `app_hotlines` VALUES (3, 'Tổng đài Vinaphone', '1760364124465-vnpt.jpg', '18001166', 3, b'1', 3, '2025-10-13 14:02:07.000000', 'admin@gmail.com', NULL, NULL, 11, '<p>Tổng đài Vinaphone</p>');

-- ----------------------------
-- Table structure for app_infors
-- ----------------------------
DROP TABLE IF EXISTS `app_infors`;
CREATE TABLE `app_infors`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgfupwwwvj5elm4upy5pkbsyj9`(`app_id`) USING BTREE,
  CONSTRAINT `app_infors_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_infors
-- ----------------------------
INSERT INTO `app_infors` VALUES (3, 'Đoàn BN', '1760363281974-MyWebsite.png', 'https', 3, b'1', 1, '2025-10-13 13:49:57.000000', 'admin@gmail.com', NULL, NULL, 11, '<p>Đoàn BN</p>');
INSERT INTO `app_infors` VALUES (4, 'Sở Công Thương', '1760363453216-quochuy.jpg', 'url', 3, b'1', 3, '2025-10-13 13:51:00.000000', 'admin@gmail.com', NULL, NULL, 11, '<p>Sở Công Thương</p>');
INSERT INTO `app_infors` VALUES (5, 'Liên đoàn lao động', '1760363488191-congdoan.png', 'https', 3, b'1', 3, '2025-10-13 13:51:42.000000', 'admin@gmail.com', NULL, NULL, 13, '<p>Liên đoàn lao động</p>');

-- ----------------------------
-- Table structure for app_news
-- ----------------------------
DROP TABLE IF EXISTS `app_news`;
CREATE TABLE `app_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `public_at` datetime(6) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcsq7q1mgiwossj2pvtnsoh2lu`(`app_id`) USING BTREE,
  INDEX `FKak3mf7sijdogl6qpvbrd0nceb`(`category_id`) USING BTREE,
  CONSTRAINT `FKak3mf7sijdogl6qpvbrd0nceb` FOREIGN KEY (`category_id`) REFERENCES `app_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKcsq7q1mgiwossj2pvtnsoh2lu` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_news
-- ----------------------------
INSERT INTO `app_news` VALUES (1, '2024-05-26 01:39:52.645763', 'admin@gmail.com', '<p>Mô tả<p>', 'vnpt.jpg', 'VNPT Bắc Giang', '2024-05-26 01:41:28.948462', 'admin@gmail.com', NULL, NULL, b'1', 14, 4, NULL);
INSERT INTO `app_news` VALUES (2, '2024-05-26 01:43:02.185332', 'admin@gmail.com', '<p>Mô tả<p>', 'vnpt.jpg', 'VNPT Bắc Ninh', NULL, NULL, NULL, NULL, b'1', 11, 2, NULL);
INSERT INTO `app_news` VALUES (3, '2024-05-26 01:45:34.796801', 'admin@gmail.com', '<p>Mô tả<p>', 'sgd_bn.jpg', 'Sở Giáo dục và Đào tạo Bắc Ninh', NULL, NULL, NULL, NULL, b'1', 14, 4, NULL);
INSERT INTO `app_news` VALUES (4, '2024-05-26 01:47:16.437206', 'admin@gmail.com', '<p>Mô tả<p>', 'congdoan.png', 'Liên đoàn Lao động tỉnh Bắc Ninh', NULL, NULL, NULL, NULL, b'1', 11, 2, NULL);
INSERT INTO `app_news` VALUES (5, '2024-05-26 01:48:09.658566', 'admin@gmail.com', '<p>Mô tả<p>', 'doan.jpg', 'Đoàn TN Bắc Ninh', NULL, NULL, NULL, NULL, b'1', 11, 2, NULL);
INSERT INTO `app_news` VALUES (6, '2024-05-26 01:50:07.802950', 'admin@gmail.com', '<p>Mô tả<p>', 'doan.jpg', 'Đoàn TN Bắc Giang', NULL, NULL, NULL, NULL, b'1', 11, 3, NULL);
INSERT INTO `app_news` VALUES (7, '2024-05-26 01:51:09.602727', 'admin@gmail.com', '<p>Mô tả<p>', 'quochuy.jpg', 'Tỉnh uỷ Bắc Ninh', NULL, NULL, NULL, NULL, b'1', 11, 2, NULL);
INSERT INTO `app_news` VALUES (8, '2024-05-26 01:51:50.000000', 'admin@gmail.com', '<p>Mô tả ss</p>', '1751596379034-quochuy.jpg', 'Tỉnh uỷ Bắc Giang', '2025-10-13 15:16:12.000000', 'admin_portal_bn@gmail.com', '<p>Mô tả ss</p>', '2025-10-13 15:16:00.000000', b'1', 11, 3, NULL);
INSERT INTO `app_news` VALUES (9, '2024-05-26 01:52:36.293253', 'admin@gmail.com', '<p>Mô tả<p>', 'bacninh.jpg', 'UBND tỉnh Bắc Ninh', NULL, NULL, NULL, NULL, b'1', 11, 2, NULL);
INSERT INTO `app_news` VALUES (11, '2025-10-11 16:07:45.000000', 'admin@gmail.com', 'Sáng 25/4/2023, Thường trực Huyện ủy Lục Nam chỉ đạo tổ chức Hội nghị giao ban Ban Chỉ đạo (BCĐ) xây dựng, thực hiện Quy chế dân chủ (QCDC) ở cơ sở, Ban Chỉ đạo hoạt động Tổ Dân vận cộng đồng huyện Quí I/2023, triển khai nhiệm vụ Quí II/2023 và trong thời gian tới.', 'https://bacgiang.gov.vn/image/journal/article?img_id=16767004', 'Huyện ủy AA tăng cường chỉ đạo thực hiện quy chế dân chủ ở cơ sở, xây dựng chính quyền thân thiện và hoạt động của Tổ Dân vận cộng đồng ở thôn, tổ dân phố trên địa bàn huyện', '2025-10-11 16:08:59.000000', 'admin@gmail.com', 'Sáng 25/4/2023, Thường trực Huyện ủy Lục Nam chỉ đạo tổ chức Hội nghị giao ban Ban Chỉ đạo (BCĐ) xây dựng, thực hiện Quy chế dân chủ (QCDC) ở cơ sở, Ban Chỉ đạo hoạt động Tổ Dân vận cộng đồng huyện Quí I/2023, triển khai nhiệm vụ Quí II/2023 và trong thời gian tới', '2023-07-20 14:56:33.000000', b'1', 11, 2, 'huyen-uy-luc-nam-tang-cuong-chi-ao-thuc-hien-quy-che-dan-chu-o-co-so-xay-dung-chinh-quyen-than-thien-va-hoat-ong-cua-to-dan-van-cong-ong-o-thon-to-dan');
INSERT INTO `app_news` VALUES (12, '2025-10-13 15:38:39.000000', 'admin@gmail.com', 'a', '1760369904572-1751596379034-quochuy.jpg', 'a', NULL, NULL, '<p>a</p>', '2025-10-13 15:38:19.000000', b'1', 11, NULL, NULL);
INSERT INTO `app_news` VALUES (13, '2025-10-13 15:38:59.000000', 'admin_portal_bn@gmail.com', 'r', '1760369938145-bacninh.jpg', 'r', NULL, NULL, '<p>rr</p>', '2025-10-13 15:38:50.000000', b'1', 11, NULL, NULL);
INSERT INTO `app_news` VALUES (14, '2025-10-13 15:41:01.000000', 'admin@gmail.com', 'Sáng 25/4/2023, Thường trực Huyện ủy Lục Nam chỉ đạo tổ chức Hội nghị giao ban Ban Chỉ đạo (BCĐ) xây dựng, thực hiện Quy chế dân chủ (QCDC) ở cơ sở, Ban Chỉ đạo hoạt động Tổ Dân vận cộng đồng huyện Quí I/2023, triển khai nhiệm vụ Quí II/2023 và trong thời gian tới.', 'https://bacgiang.gov.vn/image/journal/article?img_id=16767004', 'Huyện ủy ba tăng cường chỉ đạo thực hiện quy chế dân chủ ở cơ sở, xây dựng chính quyền thân thiện và hoạt động của Tổ Dân vận cộng đồng ở thôn, tổ dân phố trên địa bàn huyện', NULL, NULL, 'Sáng 25/4/2023, Thường trực Huyện ủy Lục Nam chỉ đạo tổ chức Hội nghị giao ban Ban Chỉ đạo (BCĐ) xây dựng, thực hiện Quy chế dân chủ (QCDC) ở cơ sở, Ban Chỉ đạo hoạt động Tổ Dân vận cộng đồng huyện Quí I/2023, triển khai nhiệm vụ Quí II/2023 và trong thời gian tới', '2023-07-20 14:56:33.000000', b'1', 11, 2, 'huyen-uy-luc-nam-tang-cuong-chi-ao-thuc-hien-quy-che-dan-chu-o-co-so-xay-dung-chinh-quyen-than-thien-va-hoat-ong-cua-to-dan-van-cong-ong-o-thon-to-dan');
INSERT INTO `app_news` VALUES (15, '2025-10-13 15:42:12.000000', 'admin_portal_bn@gmail.com', 'hh', '1760370126982-1716687538974-amzon.jpg', 'hh', NULL, NULL, '<p>hhhh</p>', '2025-10-13 15:41:56.000000', b'1', 11, NULL, NULL);
INSERT INTO `app_news` VALUES (16, '2025-10-13 15:46:30.000000', 'admin_portal_bn@gmail.com', 'f', '1760370388407-1716688017004-lazada.png', 'f', NULL, NULL, '<p>fff</p>', '2025-10-13 15:46:17.000000', b'1', 11, NULL, NULL);
INSERT INTO `app_news` VALUES (17, '2025-10-13 15:50:51.000000', 'admin_portal_bn@gmail.com', 's', '1760370650091-doan.jpg', 's', NULL, NULL, '<p>s</p>', '2025-10-12 15:50:42.000000', b'1', 11, 2, NULL);
INSERT INTO `app_news` VALUES (18, '2025-10-13 16:29:53.000000', 'admin_portal_bn@gmail.com', 'e', '1760372984128-congdoan.png', 'e', NULL, NULL, '<p>ssss</p>', '2025-10-13 16:30:47.000000', b'1', 11, 2, NULL);

-- ----------------------------
-- Table structure for app_qas
-- ----------------------------
DROP TABLE IF EXISTS `app_qas`;
CREATE TABLE `app_qas`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_q` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `email_q` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `phone_q` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `content_q` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `time_q` datetime(6) NULL DEFAULT NULL,
  `name_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `time_a` datetime(6) NULL DEFAULT NULL,
  `content_a` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKc7fv393hmacwpxpgl1d1ivnl6`(`app_id`) USING BTREE,
  CONSTRAINT `FKc7fv393hmacwpxpgl1d1ivnl6` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_qas
-- ----------------------------
INSERT INTO `app_qas` VALUES (2, 'VV', 'ducaanv@gmail.com', '84889659863', 'Gia đình tôi có trang trại khoảng 3 mẫu. Năm 2024 cơ bão yagi có đi qua . Gia đình tôi có bị thiệt hại ao cá. Bị mất trắng . Cũng có người ở Xã xuống hỏi về tình hình thiệt hại nhưng không được hỗ trợ gì của . Năm 2025 cơn Bão số 10 vừa đi qua thì nước Lũ ở sông lên làm gia đinh tôi cũng thiệt hại mất gần hết ao các. Gia đình tôi dựa vào nguồn thu nhập chính từ trang trại . Hai năm thiệt hại do bão lũ làm cho kinh tế bị ảnh hưởng rất nhiều khó phục hồi . Tôi mới biết đến nghị định 9/2025/NĐ-CP của  chính phủ nay .Tôi hỏi để được hướng dẫn và giải đáp . Mong sớm trả lời', '2023-07-20 14:56:33.000000', 'BBT Cổng Thông tin điện tử tỉnh', '2023-10-20 14:56:33.000000', 'Để giúp người dân sớm vượt qua khó khăn, ổn định cuộc sống sau cơn bão số 10, ngày 02/10/2025, Chủ tịch UBND tỉnh đã ban hành Công văn số 3136/UBND-KTN về khẩn trương thống kê thiệt hại và triển khai công tác khắc phục hậu quả bão số 10 và mưa lũ sau bão.', '2025-10-11 15:29:30.000000', 'admin@gmail.com', '2025-10-11 15:57:01.000000', 'admin@gmail.com', b'1', 11);
INSERT INTO `app_qas` VALUES (3, 'Hải Ngô', 'haingo@gmail.com', '8463522441', 'Gia đình tôi có trang trại khoảng 3 mẫu. Năm 2024 cơ bão yagi có đi qua . Gia đình tôi có bị thiệt hại ao cá. Bị mất trắng . Cũng có người ở Xã xuống hỏi về tình hình thiệt hại nhưng không được hỗ trợ gì của . Năm 2025 cơn Bão số 10 vừa đi qua thì nước Lũ ở sông lên làm gia đinh tôi cũng thiệt hại mất gần hết ao các. Gia đình tôi dựa vào nguồn thu nhập chính từ trang trại . Hai năm thiệt hại do bão lũ làm cho kinh tế bị ảnh hưởng rất nhiều khó phục hồi . Tôi mới biết đến nghị định 9/2025/NĐ-CP của  chính phủ nay .Tôi hỏi để được hướng dẫn và giải đáp . Mong sớm trả lời', '2023-07-20 14:56:33.000000', 'BBT Cổng Thông tin điện tử tỉnh', '2023-10-20 14:56:33.000000', 'Để giúp người dân sớm vượt qua khó khăn, ổn định cuộc sống sau cơn bão số 10, ngày 02/10/2025, Chủ tịch UBND tỉnh đã ban hành Công văn số 3136/UBND-KTN về khẩn trương thống kê thiệt hại và triển khai công tác khắc phục hậu quả bão số 10 và mưa lũ sau bão.', '2025-10-11 15:55:49.000000', 'anonymousUser', NULL, NULL, b'1', 11);
INSERT INTO `app_qas` VALUES (4, 'g', 'g', 'g88', '<p>g</p>', '2025-10-06 16:22:48.000000', 'g', '2025-10-14 16:22:51.000000', '<p>g</p>', '2025-10-13 16:22:58.000000', 'admin@gmail.com', '2025-10-13 16:23:13.000000', 'admin@gmail.com', b'1', 11);
INSERT INTO `app_qas` VALUES (5, 'd', 'd', 'd', '<p>4d</p>', '2025-10-13 16:23:24.000000', 'd', '2025-10-13 16:23:26.000000', '<p>4d</p>', '2025-10-13 16:23:30.000000', 'admin_portal_bn@gmail.com', NULL, NULL, b'1', 11);
INSERT INTO `app_qas` VALUES (6, 'a', 's', 's', '<p>s</p>', '2025-10-13 23:59:56.000000', 's', '2025-10-13 16:27:12.000000', '<p>s</p>', '2025-10-13 16:27:17.000000', 'admin@gmail.com', NULL, NULL, b'1', 11);
INSERT INTO `app_qas` VALUES (7, '4', '4', '4', '<p>d</p>', '2025-10-13 15:28:14.000000', '5', '2025-10-13 16:29:08.000000', '<p>5555</p>', '2025-10-13 16:28:31.000000', 'admin@gmail.com', NULL, NULL, b'1', 11);

-- ----------------------------
-- Table structure for app_zmaus
-- ----------------------------
DROP TABLE IF EXISTS `app_zmaus`;
CREATE TABLE `app_zmaus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `zid` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgfupwwwvj5elm4upy5pkbsyj9`(`app_id`) USING BTREE,
  CONSTRAINT `app_zmaus_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_zmaus
-- ----------------------------
INSERT INTO `app_zmaus` VALUES (3, 'Nguyễn Ngọc Ân', 'https://s120-ava-talk.zadn.vn/0/8/8/3/6/120/d2e902699fb81933455b79e2177d2207.jpg', '84916198226', '3076280601503362188', '2025-10-11 15:13:21.000000', 'admin@gmail.com', NULL, NULL, 11);
INSERT INTO `app_zmaus` VALUES (5, 'Thangle', 'https://s120-ava-talk.zadn.vn/5/3/e/2/42/120/08dd96eac1689a049524764a947ec47d.jpg', '84889659863', '7973735402852594069', '2025-10-11 15:58:50.000000', 'anonymousUser', NULL, NULL, 11);

-- ----------------------------
-- Table structure for apps
-- ----------------------------
DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps
-- ----------------------------
INSERT INTO `apps` VALUES (11, 1, '2025-10-10 15:18:06.000000', 'admin@gmail.com', '<p>Cổng TTĐT Bắc Ninh</p>', '1760425031833-bacninh.jpg', 'Cổng TTĐT Bắc Ninh', '2025-10-14 06:57:13.000000', 'admin@gmail.com', b'1', 1);
INSERT INTO `apps` VALUES (13, 2, '2025-10-12 15:52:34.000000', 'admin@gmail.com', '<p>VNPT Bắc Ninh</p>', '1760284342947-vnpt.jpg', 'VNPT Bắc Ninh', '2025-10-12 16:10:04.000000', 'admin@gmail.com', b'1', 2);
INSERT INTO `apps` VALUES (14, 1, '2025-10-12 16:17:45.000000', 'admin@gmail.com', '<p>Quy chế dân chủ</p>', '1760285847100-qcdc.png', 'Quy chế dân chủ', NULL, NULL, b'1', 3);

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES (1, '34 Nguyễn Thị Lưu, Phường Bắc Giang, Tỉnh Bắc Ninh', '2024-05-26 01:39:52.645763', 'admin@gmail.com', '<p>Mô tả<p>', 'vnpt.jpg', 'VNPT Bắc Giang', '2024-05-26 01:41:28.948462', 'admin@gmail.com');
INSERT INTO `companies` VALUES (2, 'Lý Thái Tổ, Tỉnh Bắc Ninh', '2024-05-26 01:43:02.185332', 'admin@gmail.com', '<p>Mô tả<p>', 'vnpt.jpg', 'VNPT Bắc Ninh', NULL, NULL);
INSERT INTO `companies` VALUES (3, 'Lô Q10, Đ, Lý Tự Trọng, Xương Giang, Bắc Giang', '2024-05-26 01:45:34.796801', 'admin@gmail.com', '<p>Mô tả<p>', 'sgd_bn.jpg', 'Sở Giáo dục và Đào tạo Bắc Ninh', NULL, NULL);
INSERT INTO `companies` VALUES (4, 'Thôn Đọ, xã Tân Tiến, TP. Bắc Giang, Tỉnh Bắc Giang', '2024-05-26 01:47:16.437206', 'admin@gmail.com', '<p>Mô tả<p>', 'congdoan.png', 'Liên đoàn Lao động tỉnh Bắc Ninh', NULL, NULL);
INSERT INTO `companies` VALUES (5, 'Lý Thái Tổ, Tỉnh Bắc Ninh', '2024-05-26 01:48:09.658566', 'admin@gmail.com', '<p>Mô tả<p>', 'doan.jpg', 'Đoàn TN Bắc Ninh', NULL, NULL);
INSERT INTO `companies` VALUES (6, '34 Nguyễn Thị Lưu, Phường Bắc Giang, Tỉnh Bắc Ninh', '2024-05-26 01:50:07.802950', 'admin@gmail.com', '<p>Mô tả<p>', 'doan.jpg', 'Đoàn TN Bắc Giang', NULL, NULL);
INSERT INTO `companies` VALUES (7, 'Tỉnh uỷ Bắc Ninh', '2024-05-26 01:51:09.602727', 'admin@gmail.com', '<p>Mô tả<p>', 'quochuy.jpg', 'Tỉnh uỷ Bắc Ninh', NULL, NULL);
INSERT INTO `companies` VALUES (8, 'Tỉnh uỷ Bắc Giang', '2024-05-26 01:51:50.000000', 'admin@gmail.com', '<p>Mô tả</p>', '1751596379034-quochuy.jpg', 'Tỉnh uỷ Bắc Giang', '2025-07-04 02:33:00.000000', 'admin@gmail.com');
INSERT INTO `companies` VALUES (9, 'UBND tỉnh Bắc Ninh', '2024-05-26 01:52:36.293253', 'admin@gmail.com', '<p>Mô tả<p>', 'bacninh.jpg', 'UBND tỉnh Bắc Ninh', NULL, NULL);
INSERT INTO `companies` VALUES (10, 'Công đoàn Bắc Ninh ', '2024-05-26 01:53:13.000000', 'admin@gmail.com', '<p>Công đoàn Bắc Ninh&nbsp;</p>', 'congdoan.png', 'Công đoàn Bắc Ninh', '2025-07-01 14:44:24.000000', 'admin@gmail.com');

-- ----------------------------
-- Table structure for exam_answers
-- ----------------------------
DROP TABLE IF EXISTS `exam_answers`;
CREATE TABLE `exam_answers`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `correct_answer` bit(1) NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `question_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcgxivsvqp4ns0wtdsd5r1ymma`(`question_id`) USING BTREE,
  CONSTRAINT `FKcgxivsvqp4ns0wtdsd5r1ymma` FOREIGN KEY (`question_id`) REFERENCES `exam_questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_answers
-- ----------------------------

-- ----------------------------
-- Table structure for exam_questions
-- ----------------------------
DROP TABLE IF EXISTS `exam_questions`;
CREATE TABLE `exam_questions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `exam_id` bigint(20) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `total_answers` int(11) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK5cd6sjmccb11rrwpyabyc81c0`(`exam_id`) USING BTREE,
  CONSTRAINT `FK5cd6sjmccb11rrwpyabyc81c0` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_questions
-- ----------------------------

-- ----------------------------
-- Table structure for exam_submissions
-- ----------------------------
DROP TABLE IF EXISTS `exam_submissions`;
CREATE TABLE `exam_submissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `exam_id` bigint(20) NULL DEFAULT NULL,
  `question_id` bigint(20) NULL DEFAULT NULL,
  `answers_id` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK8uff6g6nes0c0ndr1s8lpop5f`(`user_id`) USING BTREE,
  INDEX `FKyctpi64le9232677xud6dem7`(`answers_id`) USING BTREE,
  INDEX `FK3vnq59u82d1f5advlfpw14q2b`(`exam_id`) USING BTREE,
  INDEX `FK4byrhxwh39m5jju4bf04i0eag`(`question_id`) USING BTREE,
  INDEX `FK2k1x6lqs8f0g0tkmf5q234kkd`(`company_id`) USING BTREE,
  CONSTRAINT `FK2k1x6lqs8f0g0tkmf5q234kkd` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK3vnq59u82d1f5advlfpw14q2b` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK4byrhxwh39m5jju4bf04i0eag` FOREIGN KEY (`question_id`) REFERENCES `exam_questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8uff6g6nes0c0ndr1s8lpop5f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKyctpi64le9232677xud6dem7` FOREIGN KEY (`answers_id`) REFERENCES `exam_answers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_submissions
-- ----------------------------

-- ----------------------------
-- Table structure for exams
-- ----------------------------
DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `time_minutes` int(11) NULL DEFAULT NULL,
  `total_score` int(11) NULL DEFAULT NULL,
  `total_question` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6x7a6534i1r1qf08gkteo5nk9`(`company_id`) USING BTREE,
  CONSTRAINT `FK6x7a6534i1r1qf08gkteo5nk9` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES (16, 2, '2025-07-01 09:43:06.000000', 'admin@gmail.com', '<p>Văn hoá VNPT</p>', '1751380684368-VHVNPT.png', 'Văn hoá VNPT', '2025-07-01 15:59:57.000000', 'admin@gmail.com', 8, b'1', 10, 10, 10);
INSERT INTO `exams` VALUES (17, 4, '2025-07-01 10:04:38.000000', 'admin@gmail.com', '<p>Thi CSDL SQL cập nhật</p>', '1751380715251-sql.png', 'Thi CSDL SQL', '2025-07-04 02:27:15.000000', 'admin@gmail.com', 2, b'1', 60, 60, 6);
INSERT INTO `exams` VALUES (18, 2, '2025-07-01 13:35:22.000000', 'admin@gmail.com', '<p>Thi An toàn thông tin</p>', '1751380705157-attt.jpg', 'Thi An toàn thông tin', '2025-07-01 15:59:46.000000', 'admin@gmail.com', 5, b'1', 10, 10, 10);
INSERT INTO `exams` VALUES (20, 2, '2025-07-01 14:00:07.000000', 'admin@gmail.com', '<p>Quizz test fresher</p>', '1751380727959-atbm.jpg', 'Quizz test fresher', '2025-07-01 15:41:25.000000', 'admin@gmail.com', 1, b'1', 10, 10, 10);
INSERT INTO `exams` VALUES (22, 2, '2025-07-01 14:25:39.000000', 'admin@gmail.com', '<p>Kiểm tra Kỹ năng</p>', '1751380782371-giaotiep.jpg', 'Kiểm tra Kỹ năng', '2025-07-01 15:43:17.000000', 'admin@gmail.com', 7, b'1', 10, 10, 10);
INSERT INTO `exams` VALUES (23, 2, '2025-07-01 14:43:36.000000', 'admin@gmail.com', '<p>Chuyển đổi số 4.0</p>', '1751597795048-marketing.jpg', 'Chuyển đổi số', '2025-07-04 02:56:37.000000', 'admin@gmail.com', 4, b'1', 30, 50, 5);
INSERT INTO `exams` VALUES (24, 4, '2025-07-01 14:55:28.000000', 'admin@gmail.com', '<p>VNPT HIS ab</p>', '1751381709363-yte.png', 'VNPT HIS', '2025-07-01 15:59:22.000000', 'admin@gmail.com', 2, b'1', 10, 10, 10);
INSERT INTO `exams` VALUES (25, 3, '2025-07-04 01:56:38.000000', 'admin@gmail.com', '<p>VNPT IGate</p>', '1751594178791-quiz2.jpg', 'VNPT IGate', NULL, NULL, 2, b'1', 60, 100, 10);
INSERT INTO `exams` VALUES (26, 1, '2025-07-04 03:08:49.000000', 'admin@gmail.com', '<p>Thi Công đoàn VV</p>', '1751598523773-hopdong.jpg', 'Thi Công đoàn BN', '2025-07-04 03:09:30.000000', 'admin@gmail.com', 5, b'1', 20, 90, 10);
INSERT INTO `exams` VALUES (27, 2, '2025-07-04 03:17:41.000000', 'admin_vnpt_bn@gmail.com', '<p>Thi Java</p>', '1751599057103-quiz1.jpg', 'Thi Java', NULL, NULL, 2, b'1', 20, 30, 3);

-- ----------------------------
-- Table structure for job_skill
-- ----------------------------
DROP TABLE IF EXISTS `job_skill`;
CREATE TABLE `job_skill`  (
  `job_id` bigint(20) NOT NULL,
  `skill_id` bigint(20) NOT NULL,
  INDEX `FKdh76859joo68p6dbj9erh4pbs`(`skill_id`) USING BTREE,
  INDEX `FKje4q8ajxb3v5bel11dhbxrb8d`(`job_id`) USING BTREE,
  CONSTRAINT `FKdh76859joo68p6dbj9erh4pbs` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKje4q8ajxb3v5bel11dhbxrb8d` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_skill
-- ----------------------------
INSERT INTO `job_skill` VALUES (2, 3);
INSERT INTO `job_skill` VALUES (2, 5);
INSERT INTO `job_skill` VALUES (2, 8);
INSERT INTO `job_skill` VALUES (1, 1);
INSERT INTO `job_skill` VALUES (1, 7);
INSERT INTO `job_skill` VALUES (3, 7);
INSERT INTO `job_skill` VALUES (3, 10);
INSERT INTO `job_skill` VALUES (3, 11);
INSERT INTO `job_skill` VALUES (4, 4);
INSERT INTO `job_skill` VALUES (4, 5);
INSERT INTO `job_skill` VALUES (4, 6);
INSERT INTO `job_skill` VALUES (4, 9);
INSERT INTO `job_skill` VALUES (4, 10);
INSERT INTO `job_skill` VALUES (5, 7);
INSERT INTO `job_skill` VALUES (5, 9);
INSERT INTO `job_skill` VALUES (5, 11);
INSERT INTO `job_skill` VALUES (6, 1);
INSERT INTO `job_skill` VALUES (6, 5);
INSERT INTO `job_skill` VALUES (6, 7);
INSERT INTO `job_skill` VALUES (6, 8);
INSERT INTO `job_skill` VALUES (6, 10);
INSERT INTO `job_skill` VALUES (7, 2);
INSERT INTO `job_skill` VALUES (7, 8);
INSERT INTO `job_skill` VALUES (8, 3);
INSERT INTO `job_skill` VALUES (8, 7);
INSERT INTO `job_skill` VALUES (9, 1);
INSERT INTO `job_skill` VALUES (9, 2);
INSERT INTO `job_skill` VALUES (9, 6);
INSERT INTO `job_skill` VALUES (10, 3);
INSERT INTO `job_skill` VALUES (10, 4);

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `end_date` datetime(6) NULL DEFAULT NULL,
  `level` enum('INTERN','FRESHER','JUNIOR','MIDDLE','SENIOR') CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `salary` double NOT NULL,
  `start_date` datetime(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKrtmqcrktb6s7xq8djbs2a2war`(`company_id`) USING BTREE,
  CONSTRAINT `FKrtmqcrktb6s7xq8djbs2a2war` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES (1, b'1', '2024-05-26 02:08:10.422522', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Mức lương cạnh tranh, hấp dẫn</li><li>Môi trường làm việc chuyên nghiệp, thân thiện</li><li>Được làm việc với các hệ thống hiện đại, tiên tiến</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><ul><li>&nbsp;Tiếp nhận các yêu cầu kiểm thử các sản phẩm, dịch vụ CNTT</li><li>Thực hiện tìm hiểu, phân tích và làm rõ yêu cầu. Xây dựng chiến lược kiểm thử cho yêu cầu sản phẩm, dịch vụ CNTT</li><li>Xây dựng kế hoạch kiểm thử, viết kịch bản, tạo báo cáo kiểm thử, báo cáo lỗi kiểm thử. Xây dựng tài liệu cho các yêu cầu sau khi đã thực hiện</li><li>Điều phối công việc trong nhóm từ 4-10 nhân sự</li><li>Thực hiện kiểm thử, đánh giá chất lượng sản phẩm&nbsp;</li><li>Phân tích /đánh giá nguyên nhân lỗi sau golive</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><ul><li>Tốt nghiệp hệ chính quy các Trường Đại học trong nước hoặc nước ngoài</li><li>Chuyên ngành đào tạo: Công nghệ thông tin, Toán tin, Điện tử Viễn thông, Kế Toán, Tài chính Ngân hàng...</li><li>Có trên 3&nbsp;năm kinh nghiệm trong công tác kiểm thử trong ngân hàng, Tổ chức Tài chính, Công ty về CNTT</li><li>Có kinh nghiệm làm việc với Agile/Scrum</li><li>Có kiến thức tổng quan về ngân hàng và am hiểu nghiệp vụ ngân hàng</li><li>Có hiểu biết sâu, rộng về hoạt động kiểm thử phần mềm</li><li>Có kinh nghiệm kiểm thử phần mềm với Android và IOS</li><li>Có chứng chỉ&nbsp;đào tạo về kiểm thử là 1 lợi thế</li><li>Có kinh nghiệm trong công tác kiểm thử tự động là 1 lợi thế</li><li>Có kinh nghiệm quản lý nhóm</li><li>Kỹ năng phân tích tài liệu, yêu cầu, báo cáo, viết tài liệu tốt</li><li>Kỹ năng tư duy/logic tốt, giao tiếp, thuyết trình, thuyết phục</li><li>Tiếng Anh tốt, có thể làm việc trực tiếp với các đối tác nước ngoài là một lợi thế</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><ul><li>Mức lương cạnh tranh, hấp dẫn (Thưởng xếp loại thực hiện công việc 6 tháng/lần, thưởng sinh nhật ngân hàng, thưởng các ngày lễ tết trong năm…).</li><li>Chế độ phúc lợi cạnh tranh: Du lịch hàng năm, Khám sức khỏe định kì hàng năm; Gói bảo hiểm sức khỏe; Các hoạt động tri ân, chăm lo đời sống tinh thần CBNV và Thân nhân...</li><li>Môi trường làm việc chuyên nghiệp, thân thiện, cởi mở.</li><li>Được làm việc với các hệ thống hiện đại, tiên tiến nhất thị trường, áp dụng các công nghệ hàng đầu về an ninh bảo mật để đảm bảo an toàn cho người sử dụng.</li><li>Cơ hội học hỏi nghiệp vụ ngân hàng.</li></ul>', '2024-05-31 02:08:03.854000', 'INTERN', 'HANOI', 'Manual Tester - Khối CNTT', 10, 15000000, '2024-05-05 02:08:00.872000', '2024-05-26 02:24:39.013180', 'admin@gmail.com', 4);
INSERT INTO `jobs` VALUES (2, b'1', '2024-05-26 02:16:52.331334', 'admin@gmail.com', '<h2>Mô Tả Công Việc</h2><p><br></p><p><strong>About Digital Outlook</strong></p><ul><li>Digital Outlook is a strategy, user experience and development agency with a focus on creating engaging brand experiences that convert.</li><li>We work as partners with local and global brands based in Australia spanning services such as eCommerce, B2B, retail and consumer industries to deliver products, services, platforms and solutions that people love to use across multi channels.</li><li>With our head office based in Melbourne (Australia), our Hanoi office is a critical part of the business, with a highly experienced and dedicated team responsible for the technical scoping, delivery and maintenance of all of our projects.</li><li>Digital Outlook is set-up as a registered office in Vietnam, with all staff paid via payroll and local taxes, insurances allocated each quarter and a summer holiday for all employees.</li></ul><p><br></p><p><strong>The Position</strong></p><ul><li>A unique opportunity for an experienced Magento Project Manager/Tester to join the Digital Outlook team and work directly with a large Australian customer, as a dedicated member of their team.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li><li>Based in our Hanoi office, you will act as a remote resource and report directly to the Melbourne Head Office of the retailer, while being supported by the development team at the Hanoi Digital Outlook office.</li><li>The role will assist in the successful delivery of all eCommerce projects both B2B and B2C, as well as any ongoing website maintenance across at least three Adobe Commerce websites. You will be the first point of contact for the retail group and facilitate and manage the various website requirements through the Digital Outlook team.</li><li>The position requires a clear understanding of the Adobe Commerce platform and eCommerce operations. The role will assist in general problem solving, raising Jira tickets and be an overall systems expert when it comes to the Adobe Commerce platform.</li><li>You will have strong written communication and organisational skills and will be responsible for maintaining, closing and the escalation of Jira tickets to the Digital Outlook development team.</li><li>The position requires a clear understanding of our clients businesses, goals and problems and of the technologies that their websites are built on.</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><p><br></p><p><strong>Project Management/Testing Requirements</strong></p><ul><li>You’ll be the main point of contact between the retailer and the development team at Digital Outlook, taking briefs and managing all development work on the Adobe Commerce platforms</li><li>Day-to-day management of the websites, assisting the retailer with common tasks such as product and content updates, setting up campaigns and promotions and general configurations</li><li>Ensure projects are carried out in accordance with our development methodology</li><li>Ensure the appropriate people are resourced on your projects</li><li>As the primary tester, effectively troubleshoot issues, determining the cause and managing the resolution process with the client and internal team (if required)&nbsp;</li><li>Writing training documentation and facilitating client training sessions</li><li>Accounting for your time and accurately completing your timesheets</li><li>Demonstrate an interest in current technology and future trends</li></ul><p><br></p><p><strong>Your Skills</strong></p><ul><li>A minimum of three years of experience with Magento 2/Adobe Commerce in a Project Management and Testing capacity</li><li>Ability to juggle multiple projects and clients</li><li>Ability to accurately estimate, manage and measure projects</li><li>Ability to work well under pressure, solve problems, manage workflows and meet deadlines</li><li>Demonstrated high level written and verbal communication skills in English</li><li>A positive and honest attitude</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><p><strong>Why You\'ll Love Working Here</strong></p><ul><li>Extremely Attractive Salary</li><li>No overtime</li><li>Join a young, passionate, energetic team with friendly colleagues</li><li>Opportunities to improve English within an international team</li><li>High health insurance package&nbsp;</li><li>Offer training &amp; English courses</li><li>Vacation, team building events, bonus</li></ul><p><br></p>', '2025-06-30 02:16:38.629000', 'MIDDLE', 'HOCHIMINH', 'eCommerce Project Manager/Tester (Magento)', 3, 25000000, '2024-05-31 02:16:36.859000', NULL, NULL, 9);
INSERT INTO `jobs` VALUES (3, b'1', '2024-05-26 02:26:22.506327', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Global Exposure</li><li>Fast Track Career</li><li>Diversified Jobs &amp; Technologies</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><ul><li>Work closely with stakeholders, architect for product development features and manage SDLC</li><li>Follow standard agile scrum practices for software development</li><li>Co-ordinate customer interactions and team interactions</li><li>To focus on Sprint Planning, Capacity Planning and translate to metrics of squad deliverables</li><li>Work with product owners to handle backlogs and new requests</li><li>Develop product roadmap and prioritize user stories along with Product Owner</li><li>Provide mentorship to team members in Agile frameworks</li><li>Manage each project’s scope and timeline</li><li>Coordinate sprints, retrospective meetings and daily stand-ups</li><li>Facilitate internal communication and effective collaboration</li><li>Be the point of contact for external communications (e.g. from customers or stakeholders)</li><li>Resolve conflicts and remove obstacles that occur</li><li>Help teams implement changes effectively</li><li>Ensure deliverables are up to quality standards at the end of each sprint</li><li>Guide development teams to higher scrum maturity</li><li>Help build a productive environment where team members ‘own’ the product and enjoy working on it</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><ul><li>8+ years of experience Scrum Master or Managing the squad of software development team and .Net Framework developing experience is mandatory.</li><li>Familiarity with software development</li><li>Excellent knowledge of Scrum techniques and artifacts (such as definition of done, user stories, automated testing, backlog refinement)</li><li>Good knowledge of other Agile frameworks</li><li>Problem-solving and conflict-resolution ability</li><li>Experience in leading team of Engineers, full stack developers, allocate tasks and mentor the</li><li>team members to perform to their full potential</li><li>Experience in working with distributed agile development teams and product owner to design and implement product features</li><li>Excellent communication, servant leadership skills and teamwork skills</li><li>Scrum Master or SAFe Certified agilest certification would be huge plus</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><ul><li>Competitive salary. Performance based award.</li><li>Young and dynamic working environment.</li><li>Continuous development of hard and soft skills through work and professional trainings.</li><li>Opportunity to approach newest technology trends</li><li>Exciting leisure: sport and art events (football club, family day…)</li><li>Company’s labor policy completely pursuant to Vietnamese labor legislation plus other benefits offered by the company (Company trip, Holiday, etc.)</li></ul><p><br></p>', '2024-06-29 02:26:17.576000', 'SENIOR', 'DANANG', 'Technical Project Manager - Salary Up to $2500', 2, 50000000, '2024-05-28 02:26:15.932000', NULL, NULL, 1);
INSERT INTO `jobs` VALUES (4, b'1', '2024-05-26 02:29:43.855621', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Môi trường phát triển tiềm năng;</li><li>Có cơ hội trở thành \\\"Key Member\\\" của công ty.</li><li>Hưởng đầy đủ các chế độ đãi ngộ theo quy định</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><ul><li>Là cầu nối giữa khách hàng Nhật Bản và đội dự án Offshore ở Việt Nam;</li><li>Làm việc trực tiếp với khách hàng Nhật Bản: Giao tiếp, thương lượng, nhận, phân tích các yêu cầu của dự án phần mềm, và truyền đạt cho đội dự án phần mềm ở Việt Nam;</li><li>Quản lý tình hình triển khai dự án và phối hợp với khách hàng trong việc quản lý dự án.</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><p><strong>Must have:</strong></p><ul><li>Có tiếng Nhật từ N2 trở lên, và đã từng làm việc tại môi trường Nhật Bản;</li><li>Có từ 3 năm kinh nghiệm làm việc trong lĩnh vực Phát triển phần mềm và tối thiểu 2 năm trong vai trò PM.</li><li>Có kinh nghiệm lập trình, database;</li><li>Có kỹ năng làm việc nhóm tốt, phối hợp, gắn kết, lắng nghe và chia sẻ với cả thành viên trong dự án và đối tác; Đồng thời có khả năng làm việc độc lập</li><li>Có khả năng quản lý team, quản lý dự án;&nbsp;</li><li>Có khả năng lập kế hoạch và quản lý rủi ro; Chủ động, linh hoạt trong công việc</li></ul><p><br></p><p><strong>Nice to have:</strong></p><ul><li>Có thể sẵn sàng làm việc tại Nhật Bản trong tương lai</li><li>Nắm được ngôn ngữ lập trình phần mềm và kỹ năng phân tích kinh doanh là một lợi thế.&nbsp;</li><li>Có kiến thức về triển khai các app lên cloud như Azure;</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><ul><li>Văn phòng mới, cơ sở vật chất hiện đại, được cấp máy tính riêng cấu hình cao&nbsp;&nbsp;</li><li>Mức lương khởi điểm hấp dẫn, xét tăng lương hàng năm<strong>&nbsp;(Mức lương upto 2000 USD);</strong></li><li>Có cơ hội trở thành&nbsp;<strong>“Key member”</strong>&nbsp;của công ty;</li><li>Thu nhập: Được hưởng tháng lương thứ 13/năm + Thưởng Tết và các dịp lễ khác,...</li><li>Nghỉ thứ 7, chủ nhật + nghỉ phép theo quy định của Pháp luật hiện hành;</li><li>Được tham gia vào bảo hiểm xã hội, bảo hiểm y tế theo quy định của Pháp luật hiện hành và quy định của Công ty.</li><li>Khám sức khỏe định kỳ 1 năm/ lần tại bệnh viện Quốc Tế Thu Cúc.&nbsp;</li><li>Được tham gia các hoạt động tập thể sôi nổi của công ty: Happy time mỗi thứ 6, Du lịch hàng năm, Teambuilding hàng quý, Gala cuối năm.&nbsp;</li><li>Làm việc 5 ngày / tuần&nbsp;&nbsp;(thứ 2- thứ 6, 8h30-17h30 không phải OT)</li></ul><p><br></p>', '2024-05-31 02:29:39.288000', 'MIDDLE', 'HANOI', 'BrSE - Bridge Engineer (Project Manager) ~ $2000', 3, 41500000, '2024-05-27 02:29:37.290000', NULL, NULL, 3);
INSERT INTO `jobs` VALUES (5, b'1', '2024-05-26 02:32:11.192568', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Hybrid working</li><li>Great Benefit</li><li>Friendly Colleague</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><ul><li>Gathering specific system domain knowledge and convey to the project working team in Vietnam;</li><li>Study requirements together with the development team and finalize requirements, design with clients.</li><li>Support PM or acting as PM to plan and monitor projects.</li><li>Become another quality gate for each deliverable.</li><li>Bridging in communication with Japanese customers on all project-related matters&nbsp;</li><li>Connecting business chances between Japan site and Vietnam site.</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><ul><li>From 1- 3 years experience working as BrSE, N2 Japanese level.&nbsp;</li><li>Firm knowledge of software engineering disciplines, especially, requirement gathering &amp; analyzing, basic design, detail design.&nbsp;</li><li>Hand-on experiences &amp; knowledge in Web, Mobile, AI.&nbsp;</li><li>Excellent communication &amp; interpersonal skills with Japanese style business manner.&nbsp;</li><li>Highly responsible, loyal &amp; long-term commitment, High quality &amp; customer oriented mindset.&nbsp;</li><li>Strong analytical skills, problem-solving skills and the ability to pay careful attention to detail.</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><ul><li>Attractive salary and bonus based on performance.</li><li>Salary review 2 times/year</li><li><strong>Hybrid working (2/5 days in office), flexible time</strong></li><li>Full benefits according to the Vietnam Labor Laws: social and health insurance</li><li>An international, professional, young but innovative and dynamic environment working closely with international experts and joining conferences and workshops on exciting new technologies.</li><li>Holidays based on Vietnamese labor law + paid vacations, Company trips, Team Building</li><li>Opportunity to be onsite in the Japan</li></ul><p><br></p>', '2024-06-29 02:32:06.784000', 'MIDDLE', 'DANANG', '[Hybrid-HN] Bridge Software Engineer (BrSE)-Up to $3000', 2, 60000000, '2024-05-31 02:32:05.632000', NULL, NULL, 5);
INSERT INTO `jobs` VALUES (6, b'1', '2024-05-26 02:34:14.057032', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Enjoyable Team Environment</li><li>Engaging and Innovative Work</li><li>13th month Salary and Bonus</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><ul><li>Understand the functional requirements and progress of the project, and follow up and coordinate with the Japanese manager, global team (China) and our Vietnamese team to see if there are any differences in perception between them, while providing interpretation.</li><li>Support communication between the global office team and the Vietnam office staff</li><li>プロジェクトの機能要件及び進捗状況を把握し、日本人マネージャーとグローバルチーム(主に中国)、ベトナム人チームとの間で相互の認識違いが出ていないかフォローアップし調整する.</li><li>グローバルオフィスチームとのベトナムオフィススタッフとのコミュニケーションをサポートする。</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><ul><li>Excellent Japanese speaking, writing and reading skills (N2 level or higher with good communication skills)</li><li>Ability to understand system specifications and business written in Japanese and communicate them to the development team.</li><li>Experienced in the task of coordinating communication between Japanese customers and Japanese staff and Vietnamese staff in a software company.</li><li>A general understanding of the software development process.</li><li>Experience in testing Japanese language products and systems is appreciated.</li><li>Read and write English well (Some degree of communication with global teams required).</li><li>Chinese language ability is a big plus.</li><li>日本語のスピーキング、ライティング、リーディングに優れていること(N2レベル以上でコミュニケーション能力が高いこと)</li><li>日本語で書かれたシステム仕様書や業務を理解し、それを開発チームに伝える能力があること</li><li>ソフトウェア企業での日本人顧客及び日本人スタッフとベトナム人スタッフ間とのコミュニケーションを取り持つタスクに従事した経験を持つ方</li><li>ソフトウェア開発プロセスの大まかな理解&nbsp;</li><li>日本語のプロダクトやシステムをテストした経験があれば評価する</li><li>読み書き出来る程度の英語力 (グローバルチームとのコミュニケーションである程度必要)</li><li>中国語が出来れば尚良い</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><p>WHY GRAPECITY? - TOP 10<strong> REASONS&nbsp;</strong></p><p><br></p><p>&nbsp;</p><ol><li>GrapeCity is a global, privately held corporation of 1,200 employees who share a single culture based on strong ethical principles. We have a 30 year history of consistent growth, success, and profitability.</li><li>Only the “A” team. You get only A-level players assigned to your project because we hire only the best. Our clients tell us that we communicate exceptionally well, and that our teams are talented, fast, and can be counted on to meet or exceed their expectations.</li><li>Focused on your needs. We are focused on serving the needs of the software product development market. We establish lasting relationships based on helping our clients succeed with their products and services.</li><li>Proven product development skills. Because of our experience developing our own industry-leading products and development tools, we understand what it takes to help others create successful, innovative software solutions and to bring them to market on schedule and within budget. With our experienced resources, we can also help you increase your available bandwidth.</li><li>Proven global delivery model. We were among the first to implement this model and have a deep understanding of how to apply it successfully. We have both American and Asian footprints and are only a phone call away.</li><li>Local success stories. We have referencible customers in every region of the world where our offices are and therefore you will always have someone local who you can connect with to find out how we helped them successfully achieve their business objectives.</li><li>Trusted by global brands. Our customer base also includes such well-known global corporations as Microsoft, Sony, Procter &amp; Gamble, Intel, Mitsubishi, AT&amp;T, Thomson, Syngenta, and Infosys.</li><li>Broad industry recognition. The successful, industry-leading solutions we have developed for our customers and ourselves have received many awards from Microsoft and others.</li><li>Maximum leverage of Microsoft technology. We are a Microsoft Gold Certified Partner and one of the few companies invited to sit on the Microsoft Office Advisory Board. We’ve been part of the Microsoft Early Adopter Partnership since the early 1980s. Our close relationship with Microsoft gives us the insight and experience to fully leverage the Microsoft .NET and Office frameworks in creating optimal solutions for our customers.</li><li>Our results speak for themselves. We can help you get the job done with outstanding results - and often in less time, at a lower cost, and with less risk than if you had to build your own “A” team and do it yourself.</li></ol><p><br></p><p>WHY GRAPECITY? – WE OF<strong>ER:</strong></p><p><br></p><ul><li>Flexible work hours in the morning between 8:00 AM - 9:00 AM</li><li>13th month salary before Tet holiday</li><li>Performance bonus on July based on the company profit result and staff performance results</li><li>Annual Health check-up by famous hospitals</li><li>Monthly lunch allowance: 850,000 VND</li><li>Annual summer vacation</li><li>Monthly team building budget</li><li>Comfortable and relaxing office setting with West Lake view</li><li>Free tea &amp; coffee corner</li><li>A variety of corporate events: sports competitions, monthly birthday parties, team building parties, Family Day party, Year End party.</li><li>12 paid annual leave days</li><li>Christmas Holiday on December 25</li><li>Occasional English classes with native instructors or GrapeSEED English trainner</li></ul>', '2024-06-27 02:34:08.163000', 'FRESHER', 'OTHER', 'IT communicator/ BridgeSE (English/Japanese N2/Chinese)', 5, 15000000, '2024-05-31 02:34:05.764000', NULL, NULL, 10);
INSERT INTO `jobs` VALUES (7, b'1', '2024-05-26 02:35:19.534695', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Exciting and Diverse Projects</li><li>Collaborative and Supportive Team Environment</li><li>Personal and Professional Growth</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><p>At Avalon Innovations, we are the creative minds behind cutting-edge web applications and digital products that serve a diverse range of industries, including e-commerce, insurance, travel, education, and healthcare. Based in Australia, we have a global reach, with our team members working remotely across various continents.</p><p>We are now on the lookout for seasoned Front-End Developers who are excited about the prospect of leveraging their skills on a diverse portfolio of global projects.</p><p><br></p><p>● Collaborate in the development, planning, and evaluation of technical tasks.</p><p>● Engage closely with our dynamic team and global clients.</p><p>● Develop and maintain client projects employing technologies such as React, Next.js, Shopify, TypeScript, and Node.js.</p><p>● Design and implement components aligning with the best industry practices and accessibility principles.</p><p>● Serve as a mentor and support for junior and intermediate developers.</p><p>● Contribute to our rigorous code review processes, helping to maintain high standards of code quality.</p><p><br></p><h2>Yêu Cầu Công Việc</h2><p><strong>What We Need from You:</strong></p><p>● Proficiency in spoken and written English (B2+).</p><p>● A minimum of 3 years of experience in front-end development, including a senior role.</p><p>● An ability to write clean, maintainable code comprehensible to other developers.</p><p>● In-depth understanding of TypeScript, React (Redux), and Next.js.</p><p>● Experience working with REST and GraphQL API protocols.</p><p>● Proficiency with Git and practical experience with CI / CD setups.</p><p>● Familiarity with Agile methodologies, with proficiency in Jira.</p><p>● Proven expertise in creating pixel-perfect layouts using SCSS and CSS-in-JS (emotion or styled-components).</p><p>● Experience in testing React components using Jest and Cypress.</p><p>● Knowledge of and experience implementing accessibility standards in development.</p><p>● Experience in developing services with Node.js, Express.js / Nest.js.</p><p>● Comfortability working with Linux systems and experience with Docker containers.</p><p><br></p><p><strong>Nice-to-have:</strong></p><p>● Experience with AWS services (S3, Lambda, ECS...).</p><p>● Proficiency with design systems and tools such as Figma / Adobe XD / Sketch.</p><p>● Experience with Shopify or similar e-commerce systems.</p><p>● Familiarity with Contentful / Sanity or similar headless content-management systems.</p><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><p><strong>Why Choose Avalon Innovations?</strong></p><p><br></p><p>● Work remotely in a distributed team - join us from anywhere in the world.</p><p>● Enjoy flexible scheduling for an optimal work-life balance.</p><p>● Practice and improve your English language skills in an international team.</p><p>● Benefit from paid professional training in modern front-end technologies.</p><p>● Enjoy 20 paid vacation days per year.</p><p>● Gain experience working with renowned international companies such as Toyota, Atlassian, Flight Centre, and Accenture.</p><p>● Get paid twice a month in USD, with salary reviews every 6 months.</p>', '2024-06-05 02:35:15.386000', 'FRESHER', 'HOCHIMINH', 'Remote Sr Front-End Dev (TypeScript, ReactJS, English)', 5, 30000000, '2024-05-30 02:35:14.058000', NULL, NULL, 9);
INSERT INTO `jobs` VALUES (8, b'1', '2024-05-26 02:36:27.587258', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Có nhiều cơ hội làm việc onsite ở Nhật Bản.</li><li>Được xét tăng lương 2 lần/năm</li><li>Lương tháng 13, thưởng lễ tết, thưởng dự án</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><ul><li>Tham gia phân tích yêu cầu hệ thống&nbsp;</li><li>Thiết kế, phát triển và kiểm thử web application&nbsp;</li><li>Phối hợp với Project Manager và Bridge SE để giải quyết các vấn đề.&nbsp;</li><li>Mô tả tài liệu kỹ thuật&nbsp;</li><li>Đảm nhận code chính và review code cho thành viên khác&nbsp;</li><li>Hỗ trợ thành viên khác giải quyết vấn đề kỹ thuật&nbsp;</li><li>Hướng dẫn, định hướng cho freshers</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><ul><li>Hơn 3 năm kinh nghiệm phát triển frontend, sử dụng React.js (React DOM, React Native).&nbsp;</li><li>Hơn 1 năm kinh nghiệm phát triển frontend, sử dụng TypeScript.&nbsp;</li><li>Có kinh nghiệm phát triển responsive websites, sử dụng thư viện UI (Ant Design, Material UI, Chakra UI) và CSS Preprocessor (SCSS, LESS)&nbsp;</li><li>Có kinh nghiệm viết unit tests và integration tests, sở hữu tư duy kiểm thử + kỹ thuật kiểm thử tốt (Jest, testing-library, Cypress, Detox).&nbsp;</li><li>Có kiến thức cứng về RESTful/GraphQL APIs.&nbsp;</li><li>Thành thạo các thư viện về quản lý chất lượng code (ESLint, Prettier).&nbsp;</li><li>Chú trọng vào tiểu tiết khi bố cục thành phần trên web.&nbsp;</li><li>Có khả năng chuyển hóa thiết kế wireframes (Figma) thành semantic HTML.&nbsp;</li><li>Có kinh nghiệm sử dụng Agile/Scrum, hiểu rõ nguyên lý về Agile.&nbsp;</li><li>Nhiệt tình, thân thiện, cộng tác với các team khác như BA/BE/QC.&nbsp;</li><li>Có khả năng đa nhiệm, làm việc độc lập, hỗ trợ thành viên khác thực hiện code reviews.&nbsp;</li></ul><p><br></p><p><strong>Khuyến khích có:&nbsp;</strong></p><ul><li>Có kinh nghiệm với các framework React: Next.js, Expo (native apps).&nbsp;</li><li>Có kinh nghiệm phát triển Backend (Firebase, Amplify, Java)&nbsp;</li><li>Có kinh nghiệm sử dụng CI/CD pipeline (Jenkins, Docker)&nbsp;</li><li>Có kiến thức vềdịch vụcloud (GCP, AWS)</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><ul><li>Thời gian làm việc: Từ 08:00 đến 17:30 (Thứ 2 đến Thứ 6)&nbsp;</li><li>Thưởng các dịp lễ lớn của quốc gia, thưởng thành tích làm việc xuất sắc,..&nbsp;</li><li>Chính sách bảo hiểm xã hội, bảo hiểm y tế theo quy định của Nhà nước.&nbsp;</li><li>Môi trường làm việc trẻ trung, năng động, thân thiện.&nbsp;</li><li>Các hoạt động teambuilding quý, các sự kiện chung của công ty.&nbsp;</li><li>Cơ hội làm việc onsite tại Nhật Bản.&nbsp;</li><li>Thường xuyên tổ chức các seminar do chính nhân viên công ty thực hiện, tạo điều kiện nghiên cứu, trao đổi, phát triển.&nbsp;</li><li>Được hướng dẫn tận tình, tạo nhiều cơ hội phát triển, thăng tiến trong công việc.</li><li>Hỗ trợ tiền nhà ở trong bán kính 2km.&nbsp;</li><li>Hỗ trợ chi phí gửi xe và các tiện ích khác.</li></ul><p><br></p>', '2024-06-19 02:36:23.538000', 'JUNIOR', 'DANANG', 'Mid/Sr Frontend Developer (ReactJS, TypeScript)', 3, 20000000, '2024-05-30 02:36:22.123000', NULL, NULL, 7);
INSERT INTO `jobs` VALUES (9, b'1', '2024-05-26 02:37:24.303071', 'admin@gmail.com', '<h2>3 Lý Do Để Gia Nhập Công Ty</h2><ul><li>Great opportunity for career development</li><li>Young and international work environment</li><li>Flexible working hours</li></ul><p><br></p><h2>Mô Tả Công Việc</h2><p><strong>As a Front-end coder, you will:</strong></p><p>·&nbsp;Cooperate directly with the Head of Product Development</p><p>·&nbsp;Develop and maintain our web applications using ReactJS, JavaScript and TypeScript</p><p>·&nbsp;Collaborate with the design team to implement user-friendly interfaces</p><p>·&nbsp;Write clean, efficient, and well-documented code</p><p>·&nbsp;Participate in code reviews and maintain coding standards</p><p>·&nbsp;Optimize applications for maximum speed and scalability</p><p>·&nbsp;Stay up-to-date with emerging trends and technologies in frontend development</p><p>·&nbsp;Startup mind-set and strong responsibility, proactive.</p><p><br></p><h2>Yêu Cầu Công Việc</h2><p>·Bachelor\'s degree in Computer Science, Engineering or equivalent</p><p>·&nbsp;At least 2 years of experience in frontend development Proficient in ReactJS, JavaScript, and TypeScript</p><p>·&nbsp;Experience with responsive web design and cross-browser compatibility</p><p>·&nbsp;Familiarity with CSS frameworks such as Ant Design, Bootstrap or Material UI</p><p>·&nbsp;Experience in React Native or NodeJS is a plus.</p><p>·&nbsp;Knowledge of RESTful APIs and asynchronous programming</p><p>·&nbsp;Strong problem-solving skills and attention to detail</p><p>&nbsp;Excellent communication and teamwork skills&nbsp;</p><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><p>• You will be working in a professional and dynamic environment&nbsp;</p><p>• You will receive an attractive salary evaluated on skills and experience&nbsp;</p><p>• You will get great opportunities for career development&nbsp;</p><p>• You will work in a beautiful office in the heart of the city, in a great social environment&nbsp;</p><p>• You will get more annual leave and holidays than required by law&nbsp;</p><p>• Monthly happy lunch and daily afternoon tea with the company&nbsp;</p><p>• Annual team building company trip&nbsp;</p><p>• Flexible working hours and fair payment&nbsp;</p><p>• Being part of one of the most revolutionary and innovative projects for tomorrow’s world</p>', '2024-06-08 02:37:21.386000', 'INTERN', 'HANOI', 'Front-end coder', 5, 10000000, '2024-06-01 02:37:19.604000', NULL, NULL, 4);
INSERT INTO `jobs` VALUES (10, b'1', '2024-05-26 02:38:23.083390', 'admin@gmail.com', '<h2>Mô Tả Công Việc</h2><p><strong>Xây dựng phân hệ front-end (giao diện người dùng) các tính năng được yêu cầu từ team phát triển sản phẩm cũng như từ người dùng, cụ thể:</strong></p><ul><li>Tham gia vào việc phát triển sản phẩm của công ty, lập trình front-end, chuyển các file thiết kế (PSD, Figma, Sketch, Invision,..) sang HTML, CSS, iOS, Android.</li><li>Bảo trì, nâng cấp cho front-end sản phẩm của công ty.</li><li>Nghiên cứu và áp dụng các công nghệ mới để tối đa hóa hiệu quả phát triển sản phẩm.</li><li>&nbsp;Phối hợp và hỗ trợ với team back-end một cách chủ động và chặt chẽ để nâng cao trải nghiệm người dùng trên từng điểm tiếp xúc.</li></ul><p><br></p><h2>Yêu Cầu Công Việc</h2><ul><li>Kinh nghiệm làm việc: tối thiểu 1 năm kinh nghiệm</li><li>Tốt nghiệp các trường Đại học, chuyên ngành CNTT, Điện tử, Viễn thông,...</li><li>Có hiểu biết về lập trình hướng đối tượng.</li><li>Hiểu biết về HTML / CSS / Javascript.</li><li>Thành thạo ReactJS</li><li>Có khả năng đọc hiểu tài liệu tiếng Anh.</li><li>Có khả năng làm việc độc lập và theo nhóm.</li><li>Cẩn thận, kiên nhẫn và ham học hỏi.</li><li>Sử dụng laptop cá nhân</li></ul><p><br></p><h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2><ul><li>Chế độ lương - thưởng: Mức lương cạnh tranh &amp; hấp dẫn, Lương tháng 13.</li><li>Đánh giá năng lực, xem xét điều chỉnh lương 1 lần 1 năm.</li><li>Thời gian làm việc: Từ thứ Hai đến thứ Sáu: 09h00 - 18h00.</li><li>Company trip, Team Building, Year end party, Party team hàng tháng đi ăn nhậu với nhau (được công ty hỗ trợ.)</li><li>Mỗi tháng có meeting tổng kết kinh doanh, ăn uống, giao lưu với nhân viên mới.</li><li>Tham gia các nhóm thể thao của công ty: Đá banh, cầu lông.</li><li>Môi trường làm việc mở, sẵn sàng đón nhận ý kiến từ tất cả nhân viên, thân thiện, năng động, đa dạng và thăng tiến.</li></ul><p><br></p>', '2024-07-31 02:38:19.538000', 'FRESHER', 'DANANG', 'Junior Frontend ReactJS Dev (JavaScript, HTML, CSS)', 10, 20000000, '2024-06-08 02:38:18.435000', NULL, NULL, 5);

-- ----------------------------
-- Table structure for meetings
-- ----------------------------
DROP TABLE IF EXISTS `meetings`;
CREATE TABLE `meetings`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `longitude` float(11, 0) NULL DEFAULT NULL,
  `latitude` float(11, 0) NULL DEFAULT NULL,
  `total_user` int(11) NULL DEFAULT NULL,
  `time_start` datetime(6) NULL DEFAULT NULL,
  `time_end` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6x7a6534i1r1qf08gkteo5nk9`(`company_id`) USING BTREE,
  CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meetings
-- ----------------------------
INSERT INTO `meetings` VALUES (16, 2, '2025-07-01 09:43:06.000000', 'admin@gmail.com', '<p>Đại hội Đảng bộ tỉnh Bắc Ninh 2025</p>', '1751380684368-VHVNPT.png', 'Đại hội Đảng bộ tỉnh Bắc Ninh 2025', '2025-07-01 15:59:57.000000', 'admin@gmail.com', 8, b'1', 10, 10, 10, NULL, NULL);
INSERT INTO `meetings` VALUES (17, 4, '2025-07-01 10:04:38.000000', 'admin@gmail.com', '<p>Đại hội UBND phường Bắc Giang 2025</p>', '1751380715251-sql.png', 'Đại hội UBND phường Bắc Giang 2025', '2025-07-04 02:27:15.000000', 'admin@gmail.com', 2, b'1', 60, 60, 6, NULL, NULL);
INSERT INTO `meetings` VALUES (18, 2, '2025-07-01 13:35:22.000000', 'admin@gmail.com', '<p>Đại hội Đảng bộ VNPT Bắc Ninh 2025</p>', '1751380705157-attt.jpg', 'Đại hội Đảng bộ VNPT Bắc Ninh 2025', '2025-07-01 15:59:46.000000', 'admin@gmail.com', 5, b'1', 10, 10, 10, NULL, NULL);
INSERT INTO `meetings` VALUES (20, 2, '2025-07-01 14:00:07.000000', 'admin@gmail.com', '<p>Hội nghị người lao động VNPT Bắc Ninh 2025</p>', '1751380727959-atbm.jpg', 'Hội nghị người lao động VNPT Bắc Ninh 2025', '2025-07-01 15:41:25.000000', 'admin@gmail.com', 1, b'1', 10, 10, 10, NULL, NULL);
INSERT INTO `meetings` VALUES (22, 2, '2025-07-01 14:25:39.000000', 'admin@gmail.com', '<p>HĐND tỉnh Bắc Ninh 2025</p>', '1751380782371-giaotiep.jpg', 'HĐND tỉnh Bắc Ninh 2025', '2025-07-01 15:43:17.000000', 'admin@gmail.com', 7, b'1', 10, 10, 10, NULL, NULL);

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  INDEX `FK6mg4g9rc8u87l0yavf8kjut05`(`permission_id`) USING BTREE,
  INDEX `FK3vhflqw0lwbwn49xqoivrtugt`(`role_id`) USING BTREE,
  CONSTRAINT `FK3vhflqw0lwbwn49xqoivrtugt` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK6mg4g9rc8u87l0yavf8kjut05` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (3, 38);
INSERT INTO `permission_role` VALUES (3, 39);
INSERT INTO `permission_role` VALUES (3, 40);
INSERT INTO `permission_role` VALUES (3, 41);
INSERT INTO `permission_role` VALUES (3, 42);
INSERT INTO `permission_role` VALUES (3, 26);
INSERT INTO `permission_role` VALUES (3, 27);
INSERT INTO `permission_role` VALUES (3, 28);
INSERT INTO `permission_role` VALUES (3, 29);
INSERT INTO `permission_role` VALUES (3, 30);
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (1, 2);
INSERT INTO `permission_role` VALUES (1, 3);
INSERT INTO `permission_role` VALUES (1, 4);
INSERT INTO `permission_role` VALUES (1, 5);
INSERT INTO `permission_role` VALUES (1, 6);
INSERT INTO `permission_role` VALUES (1, 7);
INSERT INTO `permission_role` VALUES (1, 8);
INSERT INTO `permission_role` VALUES (1, 9);
INSERT INTO `permission_role` VALUES (1, 10);
INSERT INTO `permission_role` VALUES (1, 11);
INSERT INTO `permission_role` VALUES (1, 12);
INSERT INTO `permission_role` VALUES (1, 13);
INSERT INTO `permission_role` VALUES (1, 14);
INSERT INTO `permission_role` VALUES (1, 15);
INSERT INTO `permission_role` VALUES (1, 16);
INSERT INTO `permission_role` VALUES (1, 17);
INSERT INTO `permission_role` VALUES (1, 18);
INSERT INTO `permission_role` VALUES (1, 19);
INSERT INTO `permission_role` VALUES (1, 20);
INSERT INTO `permission_role` VALUES (1, 21);
INSERT INTO `permission_role` VALUES (1, 22);
INSERT INTO `permission_role` VALUES (1, 23);
INSERT INTO `permission_role` VALUES (1, 24);
INSERT INTO `permission_role` VALUES (1, 25);
INSERT INTO `permission_role` VALUES (1, 26);
INSERT INTO `permission_role` VALUES (1, 27);
INSERT INTO `permission_role` VALUES (1, 28);
INSERT INTO `permission_role` VALUES (1, 29);
INSERT INTO `permission_role` VALUES (1, 30);
INSERT INTO `permission_role` VALUES (1, 31);
INSERT INTO `permission_role` VALUES (1, 32);
INSERT INTO `permission_role` VALUES (1, 33);
INSERT INTO `permission_role` VALUES (1, 34);
INSERT INTO `permission_role` VALUES (1, 35);
INSERT INTO `permission_role` VALUES (1, 36);
INSERT INTO `permission_role` VALUES (1, 37);
INSERT INTO `permission_role` VALUES (1, 38);
INSERT INTO `permission_role` VALUES (1, 39);
INSERT INTO `permission_role` VALUES (1, 40);
INSERT INTO `permission_role` VALUES (1, 41);
INSERT INTO `permission_role` VALUES (1, 42);
INSERT INTO `permission_role` VALUES (1, 43);
INSERT INTO `permission_role` VALUES (1, 44);
INSERT INTO `permission_role` VALUES (1, 45);
INSERT INTO `permission_role` VALUES (1, 46);
INSERT INTO `permission_role` VALUES (1, 48);
INSERT INTO `permission_role` VALUES (1, 49);
INSERT INTO `permission_role` VALUES (1, 50);
INSERT INTO `permission_role` VALUES (1, 51);
INSERT INTO `permission_role` VALUES (1, 52);
INSERT INTO `permission_role` VALUES (1, 53);
INSERT INTO `permission_role` VALUES (1, 54);
INSERT INTO `permission_role` VALUES (1, 55);
INSERT INTO `permission_role` VALUES (1, 57);
INSERT INTO `permission_role` VALUES (1, 58);
INSERT INTO `permission_role` VALUES (1, 59);
INSERT INTO `permission_role` VALUES (1, 61);
INSERT INTO `permission_role` VALUES (1, 62);
INSERT INTO `permission_role` VALUES (1, 63);
INSERT INTO `permission_role` VALUES (1, 64);
INSERT INTO `permission_role` VALUES (1, 65);
INSERT INTO `permission_role` VALUES (1, 66);
INSERT INTO `permission_role` VALUES (1, 67);
INSERT INTO `permission_role` VALUES (1, 68);
INSERT INTO `permission_role` VALUES (1, 69);
INSERT INTO `permission_role` VALUES (1, 70);
INSERT INTO `permission_role` VALUES (1, 71);
INSERT INTO `permission_role` VALUES (1, 72);
INSERT INTO `permission_role` VALUES (1, 73);
INSERT INTO `permission_role` VALUES (1, 74);
INSERT INTO `permission_role` VALUES (1, 75);
INSERT INTO `permission_role` VALUES (1, 76);
INSERT INTO `permission_role` VALUES (1, 77);
INSERT INTO `permission_role` VALUES (1, 78);
INSERT INTO `permission_role` VALUES (1, 79);
INSERT INTO `permission_role` VALUES (1, 80);
INSERT INTO `permission_role` VALUES (1, 81);
INSERT INTO `permission_role` VALUES (1, 82);
INSERT INTO `permission_role` VALUES (1, 83);
INSERT INTO `permission_role` VALUES (1, 84);
INSERT INTO `permission_role` VALUES (1, 85);
INSERT INTO `permission_role` VALUES (1, 86);
INSERT INTO `permission_role` VALUES (1, 87);
INSERT INTO `permission_role` VALUES (1, 88);
INSERT INTO `permission_role` VALUES (1, 89);
INSERT INTO `permission_role` VALUES (1, 90);
INSERT INTO `permission_role` VALUES (1, 91);
INSERT INTO `permission_role` VALUES (1, 92);
INSERT INTO `permission_role` VALUES (1, 93);
INSERT INTO `permission_role` VALUES (1, 94);
INSERT INTO `permission_role` VALUES (1, 95);
INSERT INTO `permission_role` VALUES (1, 96);
INSERT INTO `permission_role` VALUES (1, 97);
INSERT INTO `permission_role` VALUES (1, 98);
INSERT INTO `permission_role` VALUES (1, 99);
INSERT INTO `permission_role` VALUES (1, 100);
INSERT INTO `permission_role` VALUES (4, 61);
INSERT INTO `permission_role` VALUES (4, 62);
INSERT INTO `permission_role` VALUES (4, 63);
INSERT INTO `permission_role` VALUES (4, 64);
INSERT INTO `permission_role` VALUES (4, 65);
INSERT INTO `permission_role` VALUES (4, 66);
INSERT INTO `permission_role` VALUES (4, 67);
INSERT INTO `permission_role` VALUES (4, 68);
INSERT INTO `permission_role` VALUES (4, 69);
INSERT INTO `permission_role` VALUES (4, 70);
INSERT INTO `permission_role` VALUES (4, 71);
INSERT INTO `permission_role` VALUES (4, 72);
INSERT INTO `permission_role` VALUES (4, 73);
INSERT INTO `permission_role` VALUES (4, 74);
INSERT INTO `permission_role` VALUES (4, 75);
INSERT INTO `permission_role` VALUES (4, 76);
INSERT INTO `permission_role` VALUES (4, 77);
INSERT INTO `permission_role` VALUES (4, 78);
INSERT INTO `permission_role` VALUES (4, 79);
INSERT INTO `permission_role` VALUES (4, 80);
INSERT INTO `permission_role` VALUES (4, 81);
INSERT INTO `permission_role` VALUES (4, 82);
INSERT INTO `permission_role` VALUES (4, 83);
INSERT INTO `permission_role` VALUES (4, 84);
INSERT INTO `permission_role` VALUES (4, 85);
INSERT INTO `permission_role` VALUES (4, 86);
INSERT INTO `permission_role` VALUES (4, 87);
INSERT INTO `permission_role` VALUES (4, 88);
INSERT INTO `permission_role` VALUES (4, 89);
INSERT INTO `permission_role` VALUES (4, 90);
INSERT INTO `permission_role` VALUES (4, 91);
INSERT INTO `permission_role` VALUES (4, 92);
INSERT INTO `permission_role` VALUES (4, 93);
INSERT INTO `permission_role` VALUES (4, 94);
INSERT INTO `permission_role` VALUES (4, 95);
INSERT INTO `permission_role` VALUES (4, 96);
INSERT INTO `permission_role` VALUES (4, 97);
INSERT INTO `permission_role` VALUES (4, 98);
INSERT INTO `permission_role` VALUES (4, 99);
INSERT INTO `permission_role` VALUES (4, 100);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, '/api/v1/companies', '2024-06-29 09:52:13.000000', '', 'POST', 'COMPANIES', 'Create a company', NULL, NULL);
INSERT INTO `permissions` VALUES (2, '/api/v1/companies', '2024-06-29 09:52:13.000000', '', 'PUT', 'COMPANIES', 'Update a company', NULL, NULL);
INSERT INTO `permissions` VALUES (3, '/api/v1/companies/{id}', '2024-06-29 09:52:13.000000', '', 'DELETE', 'COMPANIES', 'Delete a company', NULL, NULL);
INSERT INTO `permissions` VALUES (4, '/api/v1/companies/{id}', '2024-06-29 09:52:13.000000', '', 'GET', 'COMPANIES', 'Get a company by id', NULL, NULL);
INSERT INTO `permissions` VALUES (5, '/api/v1/companies', '2024-06-29 09:52:13.000000', '', 'GET', 'COMPANIES', 'Get companies with pagination', NULL, NULL);
INSERT INTO `permissions` VALUES (6, '/api/v1/jobs', '2024-06-29 09:52:13.000000', '', 'POST', 'JOBS', 'Create a job', NULL, NULL);
INSERT INTO `permissions` VALUES (7, '/api/v1/jobs', '2024-06-29 09:52:13.000000', '', 'PUT', 'JOBS', 'Update a job', NULL, NULL);
INSERT INTO `permissions` VALUES (8, '/api/v1/jobs/{id}', '2024-06-29 09:52:13.000000', '', 'DELETE', 'JOBS', 'Delete a job', NULL, NULL);
INSERT INTO `permissions` VALUES (9, '/api/v1/jobs/{id}', '2024-06-29 09:52:13.000000', '', 'GET', 'JOBS', 'Get a job by id', NULL, NULL);
INSERT INTO `permissions` VALUES (10, '/api/v1/jobs', '2024-06-29 09:52:13.000000', '', 'GET', 'JOBS', 'Get jobs with pagination', NULL, NULL);
INSERT INTO `permissions` VALUES (11, '/api/v1/permissions', '2024-06-29 09:52:13.000000', '', 'POST', 'PERMISSIONS', 'Create a permission', NULL, NULL);
INSERT INTO `permissions` VALUES (12, '/api/v1/permissions', '2024-06-29 09:52:13.000000', '', 'PUT', 'PERMISSIONS', 'Update a permission', NULL, NULL);
INSERT INTO `permissions` VALUES (13, '/api/v1/permissions/{id}', '2024-06-29 09:52:13.000000', '', 'DELETE', 'PERMISSIONS', 'Delete a permission', NULL, NULL);
INSERT INTO `permissions` VALUES (14, '/api/v1/permissions/{id}', '2024-06-29 09:52:13.000000', '', 'GET', 'PERMISSIONS', 'Get a permission by id', NULL, NULL);
INSERT INTO `permissions` VALUES (15, '/api/v1/permissions', '2024-06-29 09:52:13.000000', '', 'GET', 'PERMISSIONS', 'Get permissions with pagination', NULL, NULL);
INSERT INTO `permissions` VALUES (16, '/api/v1/resumes', '2024-06-29 09:52:13.000000', '', 'POST', 'RESUMES', 'Create a resume', NULL, NULL);
INSERT INTO `permissions` VALUES (17, '/api/v1/resumes', '2024-06-29 09:52:13.000000', '', 'PUT', 'RESUMES', 'Update a resume', NULL, NULL);
INSERT INTO `permissions` VALUES (18, '/api/v1/resumes/{id}', '2024-06-29 09:52:13.000000', '', 'DELETE', 'RESUMES', 'Delete a resume', NULL, NULL);
INSERT INTO `permissions` VALUES (19, '/api/v1/resumes/{id}', '2024-06-29 09:52:13.000000', '', 'GET', 'RESUMES', 'Get a resume by id', NULL, NULL);
INSERT INTO `permissions` VALUES (20, '/api/v1/resumes', '2024-06-29 09:52:13.000000', '', 'GET', 'RESUMES', 'Get resumes with pagination', NULL, NULL);
INSERT INTO `permissions` VALUES (21, '/api/v1/roles', '2024-06-29 09:52:13.000000', '', 'POST', 'ROLES', 'Create a role', NULL, NULL);
INSERT INTO `permissions` VALUES (22, '/api/v1/roles', '2024-06-29 09:52:13.000000', '', 'PUT', 'ROLES', 'Update a role', NULL, NULL);
INSERT INTO `permissions` VALUES (23, '/api/v1/roles/{id}', '2024-06-29 09:52:13.000000', '', 'DELETE', 'ROLES', 'Delete a role', NULL, NULL);
INSERT INTO `permissions` VALUES (24, '/api/v1/roles/{id}', '2024-06-29 09:52:13.000000', '', 'GET', 'ROLES', 'Get a role by id', NULL, NULL);
INSERT INTO `permissions` VALUES (25, '/api/v1/roles', '2024-06-29 09:52:13.000000', '', 'GET', 'ROLES', 'Get roles with pagination', NULL, NULL);
INSERT INTO `permissions` VALUES (26, '/api/v1/users', '2024-06-29 09:52:13.000000', '', 'POST', 'USERS', 'Create a user', NULL, NULL);
INSERT INTO `permissions` VALUES (27, '/api/v1/users', '2024-06-29 09:52:13.000000', '', 'PUT', 'USERS', 'Update a user', NULL, NULL);
INSERT INTO `permissions` VALUES (28, '/api/v1/users/{id}', '2024-06-29 09:52:13.000000', '', 'DELETE', 'USERS', 'Delete a user', NULL, NULL);
INSERT INTO `permissions` VALUES (29, '/api/v1/users/{id}', '2024-06-29 09:52:13.000000', '', 'GET', 'USERS', 'Get a user by id', NULL, NULL);
INSERT INTO `permissions` VALUES (30, '/api/v1/users', '2024-06-29 09:52:13.000000', '', 'GET', 'USERS', 'Get users with pagination', NULL, NULL);
INSERT INTO `permissions` VALUES (31, '/api/v1/subscribers', '2024-06-29 09:52:13.000000', '', 'POST', 'SUBSCRIBERS', 'Create a subscriber', NULL, NULL);
INSERT INTO `permissions` VALUES (32, '/api/v1/subscribers', '2024-06-29 09:52:13.000000', '', 'PUT', 'SUBSCRIBERS', 'Update a subscriber', NULL, NULL);
INSERT INTO `permissions` VALUES (33, '/api/v1/subscribers/{id}', '2024-06-29 09:52:13.000000', '', 'DELETE', 'SUBSCRIBERS', 'Delete a subscriber', NULL, NULL);
INSERT INTO `permissions` VALUES (34, '/api/v1/subscribers/{id}', '2024-06-29 09:52:13.000000', '', 'GET', 'SUBSCRIBERS', 'Get a subscriber by id', NULL, NULL);
INSERT INTO `permissions` VALUES (35, '/api/v1/subscribers', '2024-06-29 09:52:13.000000', '', 'GET', 'SUBSCRIBERS', 'Get subscribers with pagination', NULL, NULL);
INSERT INTO `permissions` VALUES (36, '/api/v1/files', '2024-06-29 09:52:13.000000', '', 'POST', 'FILES', 'Download a file', NULL, NULL);
INSERT INTO `permissions` VALUES (37, '/api/v1/files', '2024-06-29 09:52:13.000000', '', 'GET', 'FILES', 'Upload a file', NULL, NULL);
INSERT INTO `permissions` VALUES (38, '/api/v1/exams', '2025-06-26 02:48:51.000000', 'admin@gmail.com', 'GET', 'EXAMS', 'Fetch all exam', NULL, NULL);
INSERT INTO `permissions` VALUES (39, '/api/v1/exams/{id}', '2025-06-26 03:32:54.000000', 'admin@gmail.com', 'GET', 'EXAMS', 'Get a exam by id', NULL, NULL);
INSERT INTO `permissions` VALUES (40, '/api/v1/exams', '2025-06-26 03:35:58.000000', 'admin@gmail.com', 'POST', 'EXAMS', 'Create a exam', NULL, NULL);
INSERT INTO `permissions` VALUES (41, '/api/v1/exams', '2025-06-26 03:36:32.000000', 'admin@gmail.com', 'PUT', 'EXAMS', 'Update a exam', NULL, NULL);
INSERT INTO `permissions` VALUES (42, '/api/v1/exams/{id}', '2025-06-26 03:37:28.000000', 'admin@gmail.com', 'DELETE', 'EXAMS', 'Delete a exam', NULL, NULL);
INSERT INTO `permissions` VALUES (43, '/api/v1/questions', '2025-06-26 15:02:37.000000', 'admin@gmail.com', 'GET', 'QUESTIONS', 'Fetch all question', NULL, NULL);
INSERT INTO `permissions` VALUES (44, '/api/v1/questions/{id}', '2025-06-26 15:04:22.000000', 'admin@gmail.com', 'GET', 'QUESTIONS', 'Get a question by id', NULL, NULL);
INSERT INTO `permissions` VALUES (45, '/api/v1/questions', '2025-06-26 15:05:23.000000', 'admin@gmail.com', 'POST', 'QUESTIONS', 'Create a question', NULL, NULL);
INSERT INTO `permissions` VALUES (46, '/api/v1/questions', '2025-06-26 15:06:31.000000', 'admin@gmail.com', 'PUT', 'QUESTIONS', 'Update a question', NULL, NULL);
INSERT INTO `permissions` VALUES (48, '/api/v1/questions/{id}', '2025-06-26 15:14:35.000000', 'admin@gmail.com', 'DELETE', 'QUESTIONS', 'Delete a question', NULL, NULL);
INSERT INTO `permissions` VALUES (49, '/api/v1/answers', '2025-06-27 01:16:37.000000', 'admin@gmail.com', 'GET', 'ANSWERS', 'Fetch all answer', NULL, NULL);
INSERT INTO `permissions` VALUES (50, '/api/v1/answers/{id}', '2025-06-27 01:17:16.000000', 'admin@gmail.com', 'GET', 'ANSWERS', 'Get a answer by id', NULL, NULL);
INSERT INTO `permissions` VALUES (51, '/api/v1/answers', '2025-06-27 01:18:01.000000', 'admin@gmail.com', 'POST', 'ANSWERS', 'Create a answer', NULL, NULL);
INSERT INTO `permissions` VALUES (52, '/api/v1/answers', '2025-06-27 01:18:18.000000', 'admin@gmail.com', 'PUT', 'ANSWERS', 'Update a answer', NULL, NULL);
INSERT INTO `permissions` VALUES (53, '/api/v1/answers/{id}', '2025-06-27 01:18:44.000000', 'admin@gmail.com', 'DELETE', 'ANSWERS', 'Delete a answer', NULL, NULL);
INSERT INTO `permissions` VALUES (54, '/api/v1/apps', '2025-10-09 08:57:13.000000', 'admin@gmail.com', 'POST', 'APPS', 'Create a app', NULL, NULL);
INSERT INTO `permissions` VALUES (55, '/api/v1/apps', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'APPS', 'Update a app', NULL, NULL);
INSERT INTO `permissions` VALUES (57, '/api/v1/apps/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'APPS', 'Delete a app', NULL, NULL);
INSERT INTO `permissions` VALUES (58, '/api/v1/apps/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'APPS', 'Get a app by id', NULL, NULL);
INSERT INTO `permissions` VALUES (59, '/api/v1/apps', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'APPS', 'Fetch all app', NULL, NULL);
INSERT INTO `permissions` VALUES (61, '/api/v1/configs', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'CONFIGS', 'Fetch all config', NULL, NULL);
INSERT INTO `permissions` VALUES (62, '/api/v1/configs/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'CONFIGS', 'Get a config by id', NULL, NULL);
INSERT INTO `permissions` VALUES (63, '/api/v1/configs', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'CONFIGS', 'Create a config', NULL, NULL);
INSERT INTO `permissions` VALUES (64, '/api/v1/configs', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'CONFIGS', 'Update a config', NULL, NULL);
INSERT INTO `permissions` VALUES (65, '/api/v1/configs/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'CONFIGS', 'Delete a config', NULL, NULL);
INSERT INTO `permissions` VALUES (66, '/api/v1/banners', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'BANNERS', 'Fetch all banner', NULL, NULL);
INSERT INTO `permissions` VALUES (67, '/api/v1/banners/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'BANNERS', 'Get a banner by id', NULL, NULL);
INSERT INTO `permissions` VALUES (68, '/api/v1/banners', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'BANNERS', 'Create a banner', NULL, NULL);
INSERT INTO `permissions` VALUES (69, '/api/v1/banners', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'BANNERS', 'Update a banner', NULL, NULL);
INSERT INTO `permissions` VALUES (70, '/api/v1/banners/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'BANNERS', 'Delete a banner', NULL, NULL);
INSERT INTO `permissions` VALUES (71, '/api/v1/news', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'NEWS', 'Fetch all new', NULL, NULL);
INSERT INTO `permissions` VALUES (72, '/api/v1/news/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'NEWS', 'Get a new by id', NULL, NULL);
INSERT INTO `permissions` VALUES (73, '/api/v1/news', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'NEWS', 'Create a new', NULL, NULL);
INSERT INTO `permissions` VALUES (74, '/api/v1/news', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'NEWS', 'Update a new', NULL, NULL);
INSERT INTO `permissions` VALUES (75, '/api/v1/news/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'NEWS', 'Delete a new', NULL, NULL);
INSERT INTO `permissions` VALUES (76, '/api/v1/categories', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'CATEGORIES', 'Fetch all category', NULL, NULL);
INSERT INTO `permissions` VALUES (77, '/api/v1/categories/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'CATEGORIES', 'Get a category by id', NULL, NULL);
INSERT INTO `permissions` VALUES (78, '/api/v1/categories', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'CATEGORIES', 'Create a category', NULL, NULL);
INSERT INTO `permissions` VALUES (79, '/api/v1/categories', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'CATEGORIES', 'Update a category', NULL, NULL);
INSERT INTO `permissions` VALUES (80, '/api/v1/categories/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'CATEGORIES', 'Delete a category', NULL, NULL);
INSERT INTO `permissions` VALUES (81, '/api/v1/qas', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'QAS', 'Fetch all qa', NULL, NULL);
INSERT INTO `permissions` VALUES (82, '/api/v1/qas/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'QAS', 'Get a qa by id', NULL, NULL);
INSERT INTO `permissions` VALUES (83, '/api/v1/qas', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'QAS', 'Create a qa', NULL, NULL);
INSERT INTO `permissions` VALUES (84, '/api/v1/qas', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'QAS', 'Update a qa', NULL, NULL);
INSERT INTO `permissions` VALUES (85, '/api/v1/qas/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'QAS', 'Delete a qa', NULL, NULL);
INSERT INTO `permissions` VALUES (86, '/api/v1/infors', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'INFORS', 'Fetch all infor', NULL, NULL);
INSERT INTO `permissions` VALUES (87, '/api/v1/infors/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'INFORS', 'Get a infor by id', NULL, NULL);
INSERT INTO `permissions` VALUES (88, '/api/v1/infors', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'INFORS', 'Create a infor', NULL, NULL);
INSERT INTO `permissions` VALUES (89, '/api/v1/infors', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'INFORS', 'Update a infor', NULL, NULL);
INSERT INTO `permissions` VALUES (90, '/api/v1/infors/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'INFORS', 'Delete a infor', NULL, NULL);
INSERT INTO `permissions` VALUES (91, '/api/v1/hotlines', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'HOTLINES', 'Fetch all hotline', NULL, NULL);
INSERT INTO `permissions` VALUES (92, '/api/v1/hotlines/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'HOTLINES', 'Get a hotline by id', NULL, NULL);
INSERT INTO `permissions` VALUES (93, '/api/v1/hotlines', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'HOTLINES', 'Create a hotline', NULL, NULL);
INSERT INTO `permissions` VALUES (94, '/api/v1/hotlines', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'HOTLINES', 'Update a hotline', NULL, NULL);
INSERT INTO `permissions` VALUES (95, '/api/v1/hotlines/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'HOTLINES', 'Delete a hotline', NULL, NULL);
INSERT INTO `permissions` VALUES (96, '/api/v1/zmaus', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'ZMAUS', 'Fetch all zmau', NULL, NULL);
INSERT INTO `permissions` VALUES (97, '/api/v1/zmaus/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'GET', 'ZMAUS', 'Get a zmau by id', NULL, NULL);
INSERT INTO `permissions` VALUES (98, '/api/v1/zmaus', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'POST', 'ZMAUS', 'Create a zmau', NULL, NULL);
INSERT INTO `permissions` VALUES (99, '/api/v1/zmaus', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'PUT', 'ZMAUS', 'Update a zmau', NULL, NULL);
INSERT INTO `permissions` VALUES (100, '/api/v1/zmaus/{id}', '2025-10-09 08:58:55.000000', 'admin@gmail.com', 'DELETE', 'ZMAUS', 'Delete a zmau', NULL, NULL);

-- ----------------------------
-- Table structure for resumes
-- ----------------------------
DROP TABLE IF EXISTS `resumes`;
CREATE TABLE `resumes`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `status` enum('PENDING','REVIEWING','APPROVED','REJECTED') CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `job_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjdec9qbp2blbpag6obwf0fmbd`(`job_id`) USING BTREE,
  INDEX `FK340nuaivxiy99hslr3sdydfvv`(`user_id`) USING BTREE,
  CONSTRAINT `FK340nuaivxiy99hslr3sdydfvv` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjdec9qbp2blbpag6obwf0fmbd` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resumes
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, b'1', '2024-06-29 09:52:14.000000', '', 'Admin thì full permissions', 'SUPER_ADMIN', '2025-10-10 16:25:10.000000', 'admin@gmail.com', NULL);
INSERT INTO `roles` VALUES (3, b'1', '2025-06-26 15:43:51.000000', 'admin@gmail.com', 'Quản trị EXAM', 'EXAM_MANAGEMENT', '2025-06-26 15:45:20.000000', 'admin@gmail.com', NULL);
INSERT INTO `roles` VALUES (4, b'1', '2025-10-13 08:07:16.000000', 'admin@gmail.com', 'Quản trị Cổng TTĐT tỉnh Bắc Ninh', 'ADMIN_PORTAL_BACNINH', '2025-10-14 06:38:15.000000', 'admin@gmail.com', NULL);

-- ----------------------------
-- Table structure for skills
-- ----------------------------
DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skills
-- ----------------------------
INSERT INTO `skills` VALUES (1, '2024-05-26 01:55:22.311996', 'admin@gmail.com', 'REACT.JS', NULL, NULL);
INSERT INTO `skills` VALUES (2, '2024-05-26 01:55:30.793279', 'admin@gmail.com', 'REACT NATIVE', NULL, NULL);
INSERT INTO `skills` VALUES (3, '2024-05-26 01:55:42.807009', 'admin@gmail.com', 'VUE.JS', NULL, NULL);
INSERT INTO `skills` VALUES (4, '2024-05-26 01:55:52.793264', 'admin@gmail.com', 'ANGULAR', NULL, NULL);
INSERT INTO `skills` VALUES (5, '2024-05-26 01:56:03.752343', 'admin@gmail.com', 'NEST.JS', NULL, NULL);
INSERT INTO `skills` VALUES (6, '2024-05-26 01:56:22.749917', 'admin@gmail.com', 'TYPESCRIPT', NULL, NULL);
INSERT INTO `skills` VALUES (7, '2024-05-26 01:56:30.229669', 'admin@gmail.com', 'JAVA', NULL, NULL);
INSERT INTO `skills` VALUES (8, '2024-05-26 01:56:39.869728', 'admin@gmail.com', 'FRONTEND', NULL, NULL);
INSERT INTO `skills` VALUES (9, '2024-05-26 01:56:47.205188', 'admin@gmail.com', 'BACKEND', NULL, NULL);
INSERT INTO `skills` VALUES (10, '2024-05-26 01:56:55.463303', 'admin@gmail.com', 'FULLSTACK', NULL, NULL);
INSERT INTO `skills` VALUES (11, '2024-05-26 01:57:06.691679', 'admin@gmail.com', 'JAVA SPRING', NULL, NULL);

-- ----------------------------
-- Table structure for subscriber_skill
-- ----------------------------
DROP TABLE IF EXISTS `subscriber_skill`;
CREATE TABLE `subscriber_skill`  (
  `subscriber_id` bigint(20) NOT NULL,
  `skill_id` bigint(20) NOT NULL,
  INDEX `FKly8pe7rx11g3v97b1oq0vjs2r`(`skill_id`) USING BTREE,
  INDEX `FKjflpvmqmxox8edvsldr12hqjc`(`subscriber_id`) USING BTREE,
  CONSTRAINT `FKjflpvmqmxox8edvsldr12hqjc` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKly8pe7rx11g3v97b1oq0vjs2r` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscriber_skill
-- ----------------------------

-- ----------------------------
-- Table structure for subscribers
-- ----------------------------
DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE `subscribers`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscribers
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `age` int(11) NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `gender` enum('FEMALE','MALE','OTHER') CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `refresh_token` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `is_admin` bit(1) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKin8gn4o1hpiwe6qe4ey7ykwq7`(`company_id`) USING BTREE,
  INDEX `FKp56c1712k691lhsyewcssf40f`(`role_id`) USING BTREE,
  INDEX `FKo38sepgtwex7a8g44tt5utnts`(`app_id`) USING BTREE,
  CONSTRAINT `FKin8gn4o1hpiwe6qe4ey7ykwq7` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKo38sepgtwex7a8g44tt5utnts` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'HN', 20, NULL, NULL, 'admin@gmail.com', 'MALE', 'admin', '$2a$10$HwwoJJ/M.J4YUAOGgF.98.jVk4ZCTHdkaL7bUBrztZ5mZdItp8vg2', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbkBnbWFpbC5jb20iLCJleHAiOjE3NjkyNzEwNDIsImlhdCI6MTc2MDYzMTA0MiwidXNlciI6eyJpZCI6MSwiZW1haWwiOiJhZG1pbkBnbWFpbC5jb20iLCJuYW1lIjoiYWRtaW4iLCJwaG9uZSI6IjA5NjE5NjI2MjgiLCJhZGRyZXNzIjoiSE4iLCJhZ2UiOjIwLCJnZW5kZXIiOiJNQUxFIiwicm9sZSI6eyJpZCI6MSwibmFtZSI6IlNVUEVSX0FETUlOIn0sImNvbXBhbnkiOm51bGwsImFwcCI6bnVsbCwiaXNfYWRtaW4iOnRydWV9fQ.vdtbDlGxyWIzmyMsaQp7geeBEUZuNqjF5MS4f_4n84SA3ps3AbIr0P7jicYcQ-kxRMn4Kq3TqMDDRwbv3Cwq4A', '2025-10-16 16:10:42.000000', 'admin@gmail.com', NULL, 1, b'1', '0961962628', NULL);
INSERT INTO `users` VALUES (2, 'BN', 20, '2025-07-03 07:23:45.000000', 'admin@gmail.com', 'admin_vnpt_bn@gmail.com', 'MALE', 'Quản trị VNPT Bắc Ninh', '$2a$10$HwwoJJ/M.J4YUAOGgF.98.jVk4ZCTHdkaL7bUBrztZ5mZdItp8vg2', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbl92bnB0X2JuQGdtYWlsLmNvbSIsImV4cCI6MTc2OTA2NDE0NCwiaWF0IjoxNzYwNDI0MTQ0LCJ1c2VyIjp7ImlkIjoyLCJlbWFpbCI6ImFkbWluX3ZucHRfYm5AZ21haWwuY29tIiwibmFtZSI6IlF14bqjbiB0cuG7iyBWTlBUIELhuq9jIE5pbmgiLCJwaG9uZSI6IjA4MzgzODUyODgiLCJhZGRyZXNzIjoiQk4iLCJhZ2UiOjIwLCJnZW5kZXIiOiJNQUxFIiwicm9sZSI6eyJpZCI6MywibmFtZSI6IkVYQU1fTUFOQUdFTUVOVCJ9LCJjb21wYW55Ijp7ImlkIjoyLCJuYW1lIjoiVk5QVCBC4bqvYyBOaW5oIiwibG9nbyI6InZucHQuanBnIn0sImFwcCI6eyJpZCI6MTEsIm5hbWUiOiJD4buVbmcgVFTEkFQgQuG6r2MgTmluaCIsImxvZ28iOiJiYWNuaW5oLmpwZyJ9LCJpc19hZG1pbiI6dHJ1ZX19.7jXD9eGT1BMVP_1L_IzzagK92SmdmOVqrgYuvLnspZLDA811UDoTtfWaDjm1h0fi5IqC7vNVYoHMO2VfFTtdig', '2025-10-14 06:42:24.000000', 'admin_vnpt_bn@gmail.com', 2, 3, b'1', '0838385288', 11);
INSERT INTO `users` VALUES (3, 'BN', 20, '2025-07-03 07:40:18.000000', 'anonymousUser', 'sontx13@gmail.com', 'MALE', 'Trần Xuân Sơn', '$2a$10$9Pnaz1OwpPUcCpnJMnBSVuwu2ofiz.s1C.wNB7Je87LtSQHUbRCpC', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzb250eDEzQGdtYWlsLmNvbSIsImV4cCI6MTc2MDE3MTI4NywiaWF0IjoxNzUxNTMxMjg3LCJ1c2VyIjp7ImlkIjozLCJlbWFpbCI6InNvbnR4MTNAZ21haWwuY29tIiwibmFtZSI6IlRy4bqnbiBYdcOibiBTxqFuIn19.YX6ySGHK3O5uUViZbjrhx329Z2kutAdrGH2RDWeHjSGtjH6nXxQkRH7zy6k29RseOSUUqimbF4xbBOjeSjFMVQ', '2025-07-03 08:28:07.000000', 'sontx13@gmail.com', 2, NULL, b'0', '0888938828', 11);
INSERT INTO `users` VALUES (13, 'BNH', 30, '2025-10-14 06:44:32.000000', 'admin@gmail.com', 'admin_portal_bn@gmail.com', 'MALE', 'admin portal Bắc Ninh', '$2a$10$iSPYPGXLlLP.0UvjA8CcFe4KivHl3WwVgI/c1AaMp4xI12HTyQuKS', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbl9wb3J0YWxfYm5AZ21haWwuY29tIiwiZXhwIjoxNzY5MDY0MjgzLCJpYXQiOjE3NjA0MjQyODMsInVzZXIiOnsiaWQiOjEzLCJlbWFpbCI6ImFkbWluX3BvcnRhbF9ibkBnbWFpbC5jb20iLCJuYW1lIjoiYWRtaW4gcG9ydGFsIELhuq9jIE5pbmgiLCJwaG9uZSI6IjA4ODg5OTk5OTkiLCJhZGRyZXNzIjoiQk5IIiwiYWdlIjozMCwiZ2VuZGVyIjoiTUFMRSIsInJvbGUiOnsiaWQiOjQsIm5hbWUiOiJBRE1JTl9QT1JUQUxfQkFDTklOSCJ9LCJjb21wYW55Ijp7ImlkIjo5LCJuYW1lIjoiVUJORCB04buJbmggQuG6r2MgTmluaCIsImxvZ28iOiJiYWNuaW5oLmpwZyJ9LCJhcHAiOnsiaWQiOjExLCJuYW1lIjoiQ-G7lW5nIFRUxJBUIELhuq9jIE5pbmgiLCJsb2dvIjoiYmFjbmluaC5qcGcifSwiaXNfYWRtaW4iOnRydWV9fQ.Fu5aTtqzEaheSdgWoQhz0zPj4gp79dHNzEhC8S25RARuRiGcKALuXe01dp7B_mwfg7TPI2Us_mFdk_WmFAOl-g', '2025-10-14 06:44:43.000000', 'admin_portal_bn@gmail.com', 9, 4, b'1', '0888999999', 11);

SET FOREIGN_KEY_CHECKS = 1;
