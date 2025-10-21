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

 Date: 16/10/2025 23:06:52
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

SET FOREIGN_KEY_CHECKS = 1;
