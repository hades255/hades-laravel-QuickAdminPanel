/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : offertool

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 05/08/2023 02:59:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `VAT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `multiplier` float NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, NULL, 'Fresh System', 'Via Primo Maggio 10/12', '+39 02 49712802', '26858', 'xxxxxx', '2023-04-24 11:25:03', NULL, NULL, 1);
INSERT INTO `company` VALUES (2, NULL, 'TEST COM', 'Via Primo Maggio 10/12', '	+39 02 49712802', '	26858', 'xxxxxx', '2023-04-24 12:08:27', NULL, NULL, 1);
INSERT INTO `company` VALUES (3, NULL, 'asdfasdf', '234324', '23423432432', 'asdfasd', 'fasdfassadfasdfdf', '2023-05-11 10:23:07', '2023-05-11 11:10:13', '2023-05-11 11:10:13', 1);
INSERT INTO `company` VALUES (4, NULL, 'sdfasdfasdf', 'asdfasdf', 'asdfasdfa', 'sdfasdfasd', 'fasdfasdf', '2023-05-11 10:43:35', '2023-05-11 11:10:21', '2023-05-11 11:10:21', 1);
INSERT INTO `company` VALUES (5, NULL, 'bcvxbxcvbx', 'asdfsadfsdv', '45345345435345', 'dsafasdfasdf', 'dfsgsdfgsdfg', '2023-05-11 10:44:16', '2023-05-11 11:10:17', '2023-05-11 11:10:17', 1);
INSERT INTO `company` VALUES (6, NULL, 'air system', 'Batu 6, Jalan Pantai, 71700 Seremban, Negeri Sembilan.', '06-763 2737', '06-763 2737', 'VAT stands for Value Added Tax.', '2023-05-16 08:42:38', '2023-05-16 08:45:05', NULL, 1);
INSERT INTO `company` VALUES (7, 14, 'demo', 'demo', 'demo', 'demo', 'demo', '2023-05-19 12:21:53', '2023-06-06 17:49:38', NULL, 2);
INSERT INTO `company` VALUES (8, 1, 'ventilation', 'se', '23', '234', 'sde', '2023-05-23 16:19:47', '2023-05-23 16:19:47', NULL, 1);
INSERT INTO `company` VALUES (9, 15, 'asd', 'asd', 'asd', 'asd', 'asd', '2023-05-30 15:36:31', '2023-05-30 15:36:31', NULL, 1);
INSERT INTO `company` VALUES (10, 1, 'EAC', 'ssd', '+39333676634', '1234', 'customer', '2023-05-30 15:39:33', '2023-05-30 15:39:33', NULL, 1);
INSERT INTO `company` VALUES (11, 1, 'q', 'sw1', 'qdqc', 'qcq', 'c', '2023-06-16 13:20:04', '2023-06-16 13:20:04', NULL, 1);
INSERT INTO `company` VALUES (12, 28, 'aaa', 'aaa', '+1464238', '4989262', 'aaa', '2023-07-13 06:36:01', '2023-07-13 06:36:01', NULL, 1);

-- ----------------------------
-- Table structure for contact_people
-- ----------------------------
DROP TABLE IF EXISTS `contact_people`;
CREATE TABLE `contact_people`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` int NULL DEFAULT NULL,
  `company_id` int NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of contact_people
-- ----------------------------
INSERT INTO `contact_people` VALUES (1, NULL, 1, 'FirstName', 'SecondName', '+39 02 49712802', '+39 02 49712802', 'k.anderson@avensys-srl.com', 'xxxxxx', '2023-04-24 12:14:31', NULL);
INSERT INTO `contact_people` VALUES (2, 1, 6, 'John', 'Poh', '+6015-334 6370', '+6015-334 6370', 'spider.man@proton.me', 'Owner/Partner', '2023-05-16 08:47:30', '2023-06-23 10:21:15');
INSERT INTO `contact_people` VALUES (6, 1, 2, 'sandro', 'nutini', '+393336766440', '+393336766440', 'info@avensys-srl.com', 'business developper', '2023-05-18 19:02:47', '2023-05-18 19:02:47');
INSERT INTO `contact_people` VALUES (7, 1, 8, 'baubau', 'nerd', '+393336344', '+393336344', 'info@nerd.com', 'estimated engineer', '2023-05-23 16:20:51', '2023-05-23 16:20:51');
INSERT INTO `contact_people` VALUES (8, 1, 8, 'serty', 'sd', '+393336766440', '+393336766440', 'info@abau', 'owner', '2023-05-23 17:02:43', '2023-05-23 17:02:43');
INSERT INTO `contact_people` VALUES (9, 14, 7, 'demo', 'demo', '+39 000 000 000 00', '+39 000 000 000 00', 'demo@avensys-srl.com', 'owner', '2023-05-23 18:06:06', '2023-05-23 18:06:06');
INSERT INTO `contact_people` VALUES (10, 15, 9, 'asd', 'asd', 'asd', 'asd', 'asd', 'Owner/Partner', '2023-05-30 15:36:43', '2023-05-30 15:36:43');
INSERT INTO `contact_people` VALUES (11, 1, 10, 'sche', 'sche', '+393336344', '+39333676', 'info@scer.com', 'Owner/Partner', '2023-05-30 15:40:35', '2023-05-30 15:40:35');
INSERT INTO `contact_people` VALUES (12, 1, 11, 'qxxq', 'sa', 'xq', 'qxx', 'xq', 'Sales Manager', '2023-06-16 13:20:25', '2023-06-16 13:20:25');
INSERT INTO `contact_people` VALUES (13, 28, 12, 'a', 'a', 'a', 'a', 'top1.devstar+100@gmail.com', 'Business Developer', '2023-07-13 06:36:31', '2023-07-13 06:36:31');

-- ----------------------------
-- Table structure for delivery_addresses
-- ----------------------------
DROP TABLE IF EXISTS `delivery_addresses`;
CREATE TABLE `delivery_addresses`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int UNSIGNED NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of delivery_addresses
-- ----------------------------
INSERT INTO `delivery_addresses` VALUES (1, 28, 'RRRR', '2023-07-06 12:43:29', '2023-07-06 12:43:29', NULL);

-- ----------------------------
-- Table structure for delivery_conditions
-- ----------------------------
DROP TABLE IF EXISTS `delivery_conditions`;
CREATE TABLE `delivery_conditions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int UNSIGNED NOT NULL,
  `cond` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of delivery_conditions
-- ----------------------------
INSERT INTO `delivery_conditions` VALUES (1, 28, 'EEEE', '2023-07-06 12:43:32', '2023-07-06 12:43:32', NULL);

-- ----------------------------
-- Table structure for job_position
-- ----------------------------
DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of job_position
-- ----------------------------
INSERT INTO `job_position` VALUES (1, 'Business Developer', '2023-05-19 14:48:01', '2023-05-23 18:10:45', NULL);
INSERT INTO `job_position` VALUES (2, 'Owner/Partner', '2023-05-19 14:48:09', '2023-05-23 18:11:07', NULL);
INSERT INTO `job_position` VALUES (3, 'Sales Manager', '2023-05-19 14:48:18', '2023-05-23 18:11:15', NULL);
INSERT INTO `job_position` VALUES (4, 'Agent', '2023-05-23 18:11:25', '2023-05-23 18:11:34', NULL);
INSERT INTO `job_position` VALUES (5, 'Product Manager', '2023-05-23 18:11:44', '2023-05-23 18:11:44', NULL);
INSERT INTO `job_position` VALUES (6, 'Employee', '2023-05-23 18:12:23', '2023-05-23 18:12:23', NULL);

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_default` int NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES (1, 'English', 'EN', 1, '2023-01-16 05:12:15', '2023-05-31 09:50:31', '2023-05-31 09:50:31');
INSERT INTO `languages` VALUES (7, 'Deutsch', 'DE', 0, '2023-01-16 05:18:07', '2023-04-14 18:44:00', NULL);
INSERT INTO `languages` VALUES (8, 'Nethelands', 'du', 0, '2023-01-16 05:23:20', '2023-01-16 06:02:35', '2023-01-16 06:02:35');
INSERT INTO `languages` VALUES (11, 'Chinese', 'cn', 0, '2023-01-16 09:33:16', '2023-01-17 17:38:42', '2023-01-17 17:38:42');
INSERT INTO `languages` VALUES (12, 'Dutch', 'nl', 0, '2023-01-16 09:49:37', '2023-01-17 17:38:30', '2023-01-17 17:38:30');
INSERT INTO `languages` VALUES (13, 'French', 'fr', 0, '2023-01-16 09:51:03', '2023-01-17 16:49:12', '2023-01-17 16:49:12');
INSERT INTO `languages` VALUES (14, 'Katar', 'kt', 0, '2023-01-17 16:15:40', '2023-01-17 16:43:37', '2023-01-17 16:43:37');
INSERT INTO `languages` VALUES (16, 'dsfd', 'ss', 0, '2023-01-17 16:43:08', '2023-01-17 16:43:30', '2023-01-17 16:43:30');
INSERT INTO `languages` VALUES (17, 'Qatar', 'qa', 0, '2023-01-17 16:51:05', '2023-01-17 17:30:59', '2023-01-17 17:30:59');
INSERT INTO `languages` VALUES (18, 'Qatar', 'qa', 0, '2023-01-17 17:31:19', '2023-01-17 17:37:24', '2023-01-17 17:37:24');
INSERT INTO `languages` VALUES (19, 'Qatar', 'qa', 0, '2023-01-17 17:37:37', '2023-03-10 07:58:51', '2023-03-10 07:58:51');
INSERT INTO `languages` VALUES (20, 'Chinese', 'cn', 0, '2023-01-17 19:33:04', '2023-03-10 07:58:47', '2023-03-10 07:58:47');
INSERT INTO `languages` VALUES (21, 'Français', 'FR', 0, '2023-01-17 19:33:40', '2023-04-14 18:44:32', NULL);
INSERT INTO `languages` VALUES (22, 'Nederlandse', 'NL', 0, '2023-04-14 18:39:01', '2023-05-23 18:48:06', NULL);
INSERT INTO `languages` VALUES (23, 'Dansk', 'DK', 0, '2023-04-14 18:43:10', '2023-05-19 16:31:40', '2023-05-19 16:31:40');
INSERT INTO `languages` VALUES (24, 'Dansk', 'DK', 0, '2023-05-19 16:32:48', '2023-05-23 18:48:37', NULL);
INSERT INTO `languages` VALUES (25, 'Svenska', 'S', 0, '2023-05-19 16:34:01', '2023-05-19 16:34:01', NULL);
INSERT INTO `languages` VALUES (26, 'Norska', 'N', 0, '2023-05-19 16:34:49', '2023-05-19 16:34:49', NULL);
INSERT INTO `languages` VALUES (27, 'Polski', 'PL', 0, '2023-05-19 16:35:29', '2023-05-19 16:35:29', NULL);
INSERT INTO `languages` VALUES (28, 'prova', 'pv', 0, '2023-05-23 18:45:47', '2023-05-23 18:46:20', '2023-05-23 18:46:20');
INSERT INTO `languages` VALUES (29, 'English', 'EN', 1, '2023-05-31 09:50:50', '2023-05-31 09:50:50', NULL);

-- ----------------------------
-- Table structure for loghistories
-- ----------------------------
DROP TABLE IF EXISTS `loghistories`;
CREATE TABLE `loghistories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `table_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2392 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loghistories
-- ----------------------------
INSERT INTO `loghistories` VALUES (1, 1, 'pricetypes', 'Price Type List View', '2023-03-10 08:15:47', '2023-03-10 08:15:47', NULL);
INSERT INTO `loghistories` VALUES (2, 1, 'prices', 'Price List View', '2023-03-10 08:15:49', '2023-03-10 08:15:49', NULL);
INSERT INTO `loghistories` VALUES (3, 1, 'pricings', 'Pricing Class View', '2023-03-10 08:15:53', '2023-03-10 08:15:53', NULL);
INSERT INTO `loghistories` VALUES (4, 1, 'pricemanages', 'Price management View', '2023-03-10 08:15:54', '2023-03-10 08:15:54', NULL);
INSERT INTO `loghistories` VALUES (5, 1, 'pricecompares', 'Price List by type (1) View', '2023-03-10 08:16:13', '2023-03-10 08:16:13', NULL);
INSERT INTO `loghistories` VALUES (6, 1, 'pricecompares', 'Price List by type (3) View', '2023-03-10 08:16:19', '2023-03-10 08:16:19', NULL);
INSERT INTO `loghistories` VALUES (7, 1, 'prices', 'Price List by type (1) View', '2023-03-10 08:16:30', '2023-03-10 08:16:30', NULL);
INSERT INTO `loghistories` VALUES (8, 1, 'prices', 'Price List by type (3) View', '2023-03-10 08:16:34', '2023-03-10 08:16:34', NULL);
INSERT INTO `loghistories` VALUES (9, 1, 'prices', 'Price List by type (1) View', '2023-03-10 08:16:36', '2023-03-10 08:16:36', NULL);
INSERT INTO `loghistories` VALUES (10, 1, 'prices', 'Excel Import Showing Page', '2023-03-10 08:16:38', '2023-03-10 08:16:38', NULL);
INSERT INTO `loghistories` VALUES (11, 1, 'prices', 'Excel Import Showing Page', '2023-03-10 08:16:49', '2023-03-10 08:16:49', NULL);
INSERT INTO `loghistories` VALUES (12, 1, 'prices', 'Price List by type (1) View', '2023-03-10 08:16:53', '2023-03-10 08:16:53', NULL);
INSERT INTO `loghistories` VALUES (13, 1, 'prices', 'Price List View', '2023-03-10 08:16:57', '2023-03-10 08:16:57', NULL);
INSERT INTO `loghistories` VALUES (14, 1, 'prices', 'Excel Import Showing Page', '2023-03-10 08:17:02', '2023-03-10 08:17:02', NULL);
INSERT INTO `loghistories` VALUES (15, 1, 'prices', 'Excel Import Showing Page', '2023-03-10 08:17:12', '2023-03-10 08:17:12', NULL);
INSERT INTO `loghistories` VALUES (16, 1, 'pricecompares', 'Price List by type (4) View', '2023-03-10 08:17:17', '2023-03-10 08:17:17', NULL);
INSERT INTO `loghistories` VALUES (17, 1, 'prices', 'Price List by type (1) View', '2023-03-10 08:18:44', '2023-03-10 08:18:44', NULL);
INSERT INTO `loghistories` VALUES (18, 1, 'pricetypes', 'Price Type List View', '2023-03-10 08:18:47', '2023-03-10 08:18:47', NULL);
INSERT INTO `loghistories` VALUES (19, 1, 'prices', 'Price List View', '2023-03-10 08:18:57', '2023-03-10 08:18:57', NULL);
INSERT INTO `loghistories` VALUES (20, 1, 'pricings', 'Pricing Class View', '2023-03-10 08:19:01', '2023-03-10 08:19:01', NULL);
INSERT INTO `loghistories` VALUES (21, 1, 'pricemanages', 'Price management View', '2023-03-10 08:19:07', '2023-03-10 08:19:07', NULL);
INSERT INTO `loghistories` VALUES (22, 1, 'pricemanages', 'New Item Create Page', '2023-03-10 08:19:11', '2023-03-10 08:19:11', NULL);
INSERT INTO `loghistories` VALUES (23, 1, 'pricings', 'Pricing Class View', '2023-03-10 08:19:17', '2023-03-10 08:19:17', NULL);
INSERT INTO `loghistories` VALUES (24, 1, 'prices', 'Price List View', '2023-03-10 08:19:19', '2023-03-10 08:19:19', NULL);
INSERT INTO `loghistories` VALUES (25, 1, 'pricetypes', 'Price Type List View', '2023-03-10 08:19:23', '2023-03-10 08:19:23', NULL);
INSERT INTO `loghistories` VALUES (26, 1, 'prices', 'Price List View', '2023-03-10 08:19:25', '2023-03-10 08:19:25', NULL);
INSERT INTO `loghistories` VALUES (27, 1, 'prices', 'Excel Import Showing Page', '2023-03-10 08:21:55', '2023-03-10 08:21:55', NULL);
INSERT INTO `loghistories` VALUES (28, 1, 'prices', 'Excel Import Showing Page', '2023-03-10 08:22:09', '2023-03-10 08:22:09', NULL);
INSERT INTO `loghistories` VALUES (29, 1, 'prices', 'Price List by type (4) View', '2023-03-10 08:22:14', '2023-03-10 08:22:14', NULL);
INSERT INTO `loghistories` VALUES (30, 1, 'prices', 'Price List View', '2023-03-10 08:23:45', '2023-03-10 08:23:45', NULL);
INSERT INTO `loghistories` VALUES (31, 1, 'pricetypes', 'Price Type List View', '2023-03-10 08:23:49', '2023-03-10 08:23:49', NULL);
INSERT INTO `loghistories` VALUES (32, 1, 'pricings', 'Pricing Class View', '2023-03-10 08:23:52', '2023-03-10 08:23:52', NULL);
INSERT INTO `loghistories` VALUES (33, 1, 'pricemanages', 'Price management View', '2023-03-10 08:23:54', '2023-03-10 08:23:54', NULL);
INSERT INTO `loghistories` VALUES (34, 1, 'pricemanages', 'New Item Create Page', '2023-03-10 08:23:55', '2023-03-10 08:23:55', NULL);
INSERT INTO `loghistories` VALUES (35, 1, 'prices', 'Price List by type (3) View', '2023-03-10 08:24:16', '2023-03-10 08:24:16', NULL);
INSERT INTO `loghistories` VALUES (36, 1, 'prices', 'Price List by type (4) View', '2023-03-10 08:24:18', '2023-03-10 08:24:18', NULL);
INSERT INTO `loghistories` VALUES (37, 8, 'prices', 'Price List by type (3) View', '2023-03-10 08:33:49', '2023-03-10 08:33:49', NULL);
INSERT INTO `loghistories` VALUES (38, 8, 'prices', 'Price List by type (4) View', '2023-03-10 08:33:53', '2023-03-10 08:33:53', NULL);
INSERT INTO `loghistories` VALUES (39, 8, 'prices', 'Price List View', '2023-03-10 08:34:23', '2023-03-10 08:34:23', NULL);
INSERT INTO `loghistories` VALUES (40, 8, 'pricecompares', 'Price List by type (1) View', '2023-03-10 08:34:57', '2023-03-10 08:34:57', NULL);
INSERT INTO `loghistories` VALUES (41, 8, 'prices', 'Price List View', '2023-03-10 08:35:11', '2023-03-10 08:35:11', NULL);
INSERT INTO `loghistories` VALUES (42, 8, 'prices', 'Price List by type (1) View', '2023-03-10 08:35:20', '2023-03-10 08:35:20', NULL);
INSERT INTO `loghistories` VALUES (43, 8, 'prices', 'Price List by type (3) View', '2023-03-10 08:35:25', '2023-03-10 08:35:25', NULL);
INSERT INTO `loghistories` VALUES (44, 1, 'prices', 'Price List by type (1) View', '2023-03-10 08:36:29', '2023-03-10 08:36:29', NULL);
INSERT INTO `loghistories` VALUES (45, 1, 'prices', 'Price List by type (3) View', '2023-03-10 08:36:32', '2023-03-10 08:36:32', NULL);
INSERT INTO `loghistories` VALUES (46, 1, 'prices', 'Price List by type (4) View', '2023-03-10 08:36:34', '2023-03-10 08:36:34', NULL);
INSERT INTO `loghistories` VALUES (47, 1, 'prices', 'Price List View', '2023-03-10 08:37:03', '2023-03-10 08:37:03', NULL);
INSERT INTO `loghistories` VALUES (48, 1, 'pricetypes', 'Price Type List View', '2023-03-10 08:37:07', '2023-03-10 08:37:07', NULL);
INSERT INTO `loghistories` VALUES (49, 1, 'prices', 'Price List View', '2023-03-10 08:37:10', '2023-03-10 08:37:10', NULL);
INSERT INTO `loghistories` VALUES (50, 1, 'pricetypes', 'Price Type List View', '2023-03-10 08:39:12', '2023-03-10 08:39:12', NULL);
INSERT INTO `loghistories` VALUES (51, 1, 'prices', 'Price List View', '2023-03-10 08:39:13', '2023-03-10 08:39:13', NULL);
INSERT INTO `loghistories` VALUES (52, 1, 'prices', 'Price List by type (1) View', '2023-03-10 09:43:10', '2023-03-10 09:43:10', NULL);
INSERT INTO `loghistories` VALUES (53, 1, 'prices', 'Price List View', '2023-03-18 09:37:44', '2023-03-18 09:37:44', NULL);
INSERT INTO `loghistories` VALUES (54, 1, 'pricemanages', 'Price management View', '2023-03-18 09:37:52', '2023-03-18 09:37:52', NULL);
INSERT INTO `loghistories` VALUES (55, 1, 'prices', 'Price List View', '2023-03-18 09:37:54', '2023-03-18 09:37:54', NULL);
INSERT INTO `loghistories` VALUES (56, 1, 'prices', 'Price List by type (1) View', '2023-03-18 09:38:06', '2023-03-18 09:38:06', NULL);
INSERT INTO `loghistories` VALUES (57, 1, 'prices', 'Price List by type (6) View', '2023-03-18 09:38:16', '2023-03-18 09:38:16', NULL);
INSERT INTO `loghistories` VALUES (58, 1, 'prices', 'Price List by type (4) View', '2023-03-18 09:38:24', '2023-03-18 09:38:24', NULL);
INSERT INTO `loghistories` VALUES (59, 1, 'prices', 'Price List by type (6) View', '2023-03-18 09:39:05', '2023-03-18 09:39:05', NULL);
INSERT INTO `loghistories` VALUES (60, 1, 'prices', 'Price List by type (8) View', '2023-03-18 09:39:08', '2023-03-18 09:39:08', NULL);
INSERT INTO `loghistories` VALUES (61, 1, 'prices', 'Price List by type (14) View', '2023-03-18 09:39:20', '2023-03-18 09:39:20', NULL);
INSERT INTO `loghistories` VALUES (62, 1, 'pricetypes', 'Price Type List View', '2023-03-18 09:39:26', '2023-03-18 09:39:26', NULL);
INSERT INTO `loghistories` VALUES (63, 1, 'prices', 'Price List View', '2023-03-18 09:40:13', '2023-03-18 09:40:13', NULL);
INSERT INTO `loghistories` VALUES (64, 1, 'languages', 'Language List View', '2023-03-18 09:44:28', '2023-03-18 09:44:28', NULL);
INSERT INTO `loghistories` VALUES (65, 1, 'languages', 'Existing Item Edit Page', '2023-03-18 09:44:46', '2023-03-18 09:44:46', NULL);
INSERT INTO `loghistories` VALUES (66, 1, 'languages', 'Existing Item Updated', '2023-03-18 09:44:54', '2023-03-18 09:44:54', NULL);
INSERT INTO `loghistories` VALUES (67, 1, 'languages', 'Existing Item Edit Page', '2023-03-18 09:45:01', '2023-03-18 09:45:01', NULL);
INSERT INTO `loghistories` VALUES (68, 1, 'languages', 'Existing Item Updated', '2023-03-18 09:45:04', '2023-03-18 09:45:04', NULL);
INSERT INTO `loghistories` VALUES (69, 1, 'languages', 'Language List View', '2023-03-18 09:45:09', '2023-03-18 09:45:09', NULL);
INSERT INTO `loghistories` VALUES (70, 1, 'languages', 'Existing Item Edit Page', '2023-03-18 09:45:33', '2023-03-18 09:45:33', NULL);
INSERT INTO `loghistories` VALUES (71, 1, 'languages', 'Existing Item Updated', '2023-03-18 09:45:54', '2023-03-18 09:45:54', NULL);
INSERT INTO `loghistories` VALUES (72, 1, 'languages', 'Language List View', '2023-03-18 09:47:23', '2023-03-18 09:47:23', NULL);
INSERT INTO `loghistories` VALUES (73, 1, 'languages', 'Existing Item Edit Page', '2023-03-18 09:47:59', '2023-03-18 09:47:59', NULL);
INSERT INTO `loghistories` VALUES (74, 1, 'languages', 'Existing Item Updated', '2023-03-18 09:48:08', '2023-03-18 09:48:08', NULL);
INSERT INTO `loghistories` VALUES (75, 1, 'languages', 'Language List View', '2023-03-18 09:48:40', '2023-03-18 09:48:40', NULL);
INSERT INTO `loghistories` VALUES (76, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-03-18 09:52:13', '2023-03-18 09:52:13', NULL);
INSERT INTO `loghistories` VALUES (77, 1, 'prices', 'Price List by type (12) View', '2023-03-21 07:37:02', '2023-03-21 07:37:02', NULL);
INSERT INTO `loghistories` VALUES (78, 1, 'pricecompares', 'Price List by type (1) View', '2023-03-21 07:37:08', '2023-03-21 07:37:08', NULL);
INSERT INTO `loghistories` VALUES (79, 1, 'languages', 'Language List View', '2023-03-21 07:37:17', '2023-03-21 07:37:17', NULL);
INSERT INTO `loghistories` VALUES (80, 1, 'pricetypes', 'Price Type List View', '2023-03-21 07:37:49', '2023-03-21 07:37:49', NULL);
INSERT INTO `loghistories` VALUES (81, 1, 'pricetypes', 'Price Type List View', '2023-03-21 16:07:52', '2023-03-21 16:07:52', NULL);
INSERT INTO `loghistories` VALUES (82, 1, 'pricetypes', 'Price Type List View', '2023-03-21 16:07:55', '2023-03-21 16:07:55', NULL);
INSERT INTO `loghistories` VALUES (83, 1, 'prices', 'Price List View', '2023-03-21 16:08:10', '2023-03-21 16:08:10', NULL);
INSERT INTO `loghistories` VALUES (84, 1, 'users', 'Added Pricetype by user', '2023-03-21 16:12:51', '2023-03-21 16:12:51', NULL);
INSERT INTO `loghistories` VALUES (85, 1, 'users', 'Added Pricetype by user', '2023-03-21 16:13:36', '2023-03-21 16:13:36', NULL);
INSERT INTO `loghistories` VALUES (86, 1, 'users', 'Added Pricetype by user', '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `loghistories` VALUES (87, 1, 'languages', 'Language List View', '2023-03-21 16:14:43', '2023-03-21 16:14:43', NULL);
INSERT INTO `loghistories` VALUES (88, 1, 'languages', 'Language List View', '2023-03-21 16:14:46', '2023-03-21 16:14:46', NULL);
INSERT INTO `loghistories` VALUES (89, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-03-21 16:14:54', '2023-03-21 16:14:54', NULL);
INSERT INTO `loghistories` VALUES (90, 1, 'languages', 'Language List View', '2023-03-21 16:14:54', '2023-03-21 16:14:54', NULL);
INSERT INTO `loghistories` VALUES (91, 1, 'languages', 'Changed WebSite Language as Français', '2023-03-21 16:14:56', '2023-03-21 16:14:56', NULL);
INSERT INTO `loghistories` VALUES (92, 1, 'languages', 'Language List View', '2023-03-21 16:14:57', '2023-03-21 16:14:57', NULL);
INSERT INTO `loghistories` VALUES (93, 1, 'languages', 'Changed WebSite Language as English', '2023-03-21 16:15:00', '2023-03-21 16:15:00', NULL);
INSERT INTO `loghistories` VALUES (94, 1, 'languages', 'Language List View', '2023-03-21 16:15:00', '2023-03-21 16:15:00', NULL);
INSERT INTO `loghistories` VALUES (95, 1, 'languages', 'Language Detail View Page', '2023-03-21 16:15:02', '2023-03-21 16:15:02', NULL);
INSERT INTO `loghistories` VALUES (96, 1, 'languages', 'Language List View', '2023-03-21 16:15:22', '2023-03-21 16:15:22', NULL);
INSERT INTO `loghistories` VALUES (97, 1, 'languages', 'Existing Item Edit Page', '2023-03-21 16:16:42', '2023-03-21 16:16:42', NULL);
INSERT INTO `loghistories` VALUES (98, 1, 'languages', 'Language List View', '2023-03-21 16:16:47', '2023-03-21 16:16:47', NULL);
INSERT INTO `loghistories` VALUES (99, 1, 'languages', 'Language Detail View Page', '2023-03-21 16:16:50', '2023-03-21 16:16:50', NULL);
INSERT INTO `loghistories` VALUES (100, 1, 'prices', 'Price List by type (14) View', '2023-04-14 08:39:41', '2023-04-14 08:39:41', NULL);
INSERT INTO `loghistories` VALUES (101, 1, 'prices', 'Price List by type (4) View', '2023-04-14 08:39:46', '2023-04-14 08:39:46', NULL);
INSERT INTO `loghistories` VALUES (102, 8, 'pricecompares', 'Price List by type (1) View', '2023-04-14 12:10:00', '2023-04-14 12:10:00', NULL);
INSERT INTO `loghistories` VALUES (103, 8, 'pricemanages', 'Price management View', '2023-04-14 12:10:14', '2023-04-14 12:10:14', NULL);
INSERT INTO `loghistories` VALUES (104, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-14 18:00:26', '2023-04-14 18:00:26', NULL);
INSERT INTO `loghistories` VALUES (105, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-04-14 18:00:30', '2023-04-14 18:00:30', NULL);
INSERT INTO `loghistories` VALUES (106, 1, 'pricecompetitors', 'Price Type List View', '2023-04-14 18:00:37', '2023-04-14 18:00:37', NULL);
INSERT INTO `loghistories` VALUES (107, 1, 'prices', 'Price List by type (1) View', '2023-04-14 18:02:44', '2023-04-14 18:02:44', NULL);
INSERT INTO `loghistories` VALUES (108, 1, 'prices', 'Price List by type (3) View', '2023-04-14 18:02:56', '2023-04-14 18:02:56', NULL);
INSERT INTO `loghistories` VALUES (109, 1, 'prices', 'Price List by type (4) View', '2023-04-14 18:02:59', '2023-04-14 18:02:59', NULL);
INSERT INTO `loghistories` VALUES (110, 1, 'prices', 'Price List by type (6) View', '2023-04-14 18:03:27', '2023-04-14 18:03:27', NULL);
INSERT INTO `loghistories` VALUES (111, 1, 'prices', 'Price List by type (8) View', '2023-04-14 18:03:32', '2023-04-14 18:03:32', NULL);
INSERT INTO `loghistories` VALUES (112, 1, 'prices', 'Excel Import Showing Page', '2023-04-14 18:03:36', '2023-04-14 18:03:36', NULL);
INSERT INTO `loghistories` VALUES (113, 1, 'prices', 'Price List by type (8) View', '2023-04-14 18:03:49', '2023-04-14 18:03:49', NULL);
INSERT INTO `loghistories` VALUES (114, 1, 'prices', 'Price List by type (4) View', '2023-04-14 18:03:53', '2023-04-14 18:03:53', NULL);
INSERT INTO `loghistories` VALUES (115, 1, 'pricetypes', 'Price Type List View', '2023-04-14 18:05:51', '2023-04-14 18:05:51', NULL);
INSERT INTO `loghistories` VALUES (116, 1, 'prices', 'Price List View', '2023-04-14 18:06:00', '2023-04-14 18:06:00', NULL);
INSERT INTO `loghistories` VALUES (117, 1, 'pricings', 'Pricing Class View', '2023-04-14 18:06:06', '2023-04-14 18:06:06', NULL);
INSERT INTO `loghistories` VALUES (118, 1, 'pricemanages', 'Price management View', '2023-04-14 18:06:28', '2023-04-14 18:06:28', NULL);
INSERT INTO `loghistories` VALUES (119, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-14 18:06:41', '2023-04-14 18:06:41', NULL);
INSERT INTO `loghistories` VALUES (120, 1, 'pricecompares', 'Price List by type (3) View', '2023-04-14 18:06:46', '2023-04-14 18:06:46', NULL);
INSERT INTO `loghistories` VALUES (121, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-14 18:06:49', '2023-04-14 18:06:49', NULL);
INSERT INTO `loghistories` VALUES (122, 1, 'pricetypes', 'Price Type List View', '2023-04-14 18:12:55', '2023-04-14 18:12:55', NULL);
INSERT INTO `loghistories` VALUES (123, 1, 'pricetypes', 'Existing Item View', '2023-04-14 18:15:34', '2023-04-14 18:15:34', NULL);
INSERT INTO `loghistories` VALUES (124, 1, 'pricetypes', 'Price Type List View', '2023-04-14 18:15:39', '2023-04-14 18:15:39', NULL);
INSERT INTO `loghistories` VALUES (125, 1, 'pricetypes', 'Existing Item View', '2023-04-14 18:16:22', '2023-04-14 18:16:22', NULL);
INSERT INTO `loghistories` VALUES (126, 1, 'pricetypes', 'Price Type List View', '2023-04-14 18:16:30', '2023-04-14 18:16:30', NULL);
INSERT INTO `loghistories` VALUES (127, 1, 'prices', 'Price List View', '2023-04-14 18:18:51', '2023-04-14 18:18:51', NULL);
INSERT INTO `loghistories` VALUES (128, 1, 'pricemanages', 'Price management View', '2023-04-14 18:18:59', '2023-04-14 18:18:59', NULL);
INSERT INTO `loghistories` VALUES (129, 1, 'pricemanages', 'New Item Create Page', '2023-04-14 18:19:43', '2023-04-14 18:19:43', NULL);
INSERT INTO `loghistories` VALUES (130, 1, 'pricemanages', 'New Item Create Page', '2023-04-14 18:20:19', '2023-04-14 18:20:19', NULL);
INSERT INTO `loghistories` VALUES (131, 1, 'pricemanages', 'New Item Saved', '2023-04-14 18:20:27', '2023-04-14 18:20:27', NULL);
INSERT INTO `loghistories` VALUES (132, 1, 'pricecompetitors', 'Price Type List View', '2023-04-14 18:33:52', '2023-04-14 18:33:52', NULL);
INSERT INTO `loghistories` VALUES (133, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-04-14 18:34:01', '2023-04-14 18:34:01', NULL);
INSERT INTO `loghistories` VALUES (134, 1, 'pricecompetitors', 'Existing Item Updated', '2023-04-14 18:34:17', '2023-04-14 18:34:17', NULL);
INSERT INTO `loghistories` VALUES (135, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-04-14 18:34:21', '2023-04-14 18:34:21', NULL);
INSERT INTO `loghistories` VALUES (136, 1, 'pricecompetitors', 'Existing Item Updated', '2023-04-14 18:34:25', '2023-04-14 18:34:25', NULL);
INSERT INTO `loghistories` VALUES (137, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-04-14 18:34:28', '2023-04-14 18:34:28', NULL);
INSERT INTO `loghistories` VALUES (138, 1, 'pricecompetitors', 'Price Type List View', '2023-04-14 18:34:35', '2023-04-14 18:34:35', NULL);
INSERT INTO `loghistories` VALUES (139, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-04-14 18:34:41', '2023-04-14 18:34:41', NULL);
INSERT INTO `loghistories` VALUES (140, 1, 'pricecompetitors', 'Price Type List View', '2023-04-14 18:36:18', '2023-04-14 18:36:18', NULL);
INSERT INTO `loghistories` VALUES (141, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-04-14 18:36:24', '2023-04-14 18:36:24', NULL);
INSERT INTO `loghistories` VALUES (142, 1, 'languages', 'Language List View', '2023-04-14 18:36:57', '2023-04-14 18:36:57', NULL);
INSERT INTO `loghistories` VALUES (143, 1, 'languages', 'New Language Create Page', '2023-04-14 18:37:16', '2023-04-14 18:37:16', NULL);
INSERT INTO `loghistories` VALUES (144, 1, 'languages', 'New Item Saved', '2023-04-14 18:39:01', '2023-04-14 18:39:01', NULL);
INSERT INTO `loghistories` VALUES (145, 1, 'languages', 'New Language Create Page', '2023-04-14 18:39:06', '2023-04-14 18:39:06', NULL);
INSERT INTO `loghistories` VALUES (146, 1, 'languages', 'Language List View', '2023-04-14 18:39:14', '2023-04-14 18:39:14', NULL);
INSERT INTO `loghistories` VALUES (147, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:39:25', '2023-04-14 18:39:25', NULL);
INSERT INTO `loghistories` VALUES (148, 1, 'languages', 'Existing Item Updated', '2023-04-14 18:39:32', '2023-04-14 18:39:32', NULL);
INSERT INTO `loghistories` VALUES (149, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:39:35', '2023-04-14 18:39:35', NULL);
INSERT INTO `loghistories` VALUES (150, 1, 'languages', 'Language List View', '2023-04-14 18:42:28', '2023-04-14 18:42:28', NULL);
INSERT INTO `loghistories` VALUES (151, 1, 'languages', 'New Language Create Page', '2023-04-14 18:42:55', '2023-04-14 18:42:55', NULL);
INSERT INTO `loghistories` VALUES (152, 1, 'languages', 'New Item Saved', '2023-04-14 18:43:11', '2023-04-14 18:43:11', NULL);
INSERT INTO `loghistories` VALUES (153, 1, 'languages', 'Language List View', '2023-04-14 18:43:17', '2023-04-14 18:43:17', NULL);
INSERT INTO `loghistories` VALUES (154, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:43:24', '2023-04-14 18:43:24', NULL);
INSERT INTO `loghistories` VALUES (155, 1, 'languages', 'Existing Item Updated', '2023-04-14 18:43:31', '2023-04-14 18:43:31', NULL);
INSERT INTO `loghistories` VALUES (156, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:43:38', '2023-04-14 18:43:38', NULL);
INSERT INTO `loghistories` VALUES (157, 1, 'languages', 'Language List View', '2023-04-14 18:43:41', '2023-04-14 18:43:41', NULL);
INSERT INTO `loghistories` VALUES (158, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-04-14 18:43:45', '2023-04-14 18:43:45', NULL);
INSERT INTO `loghistories` VALUES (159, 1, 'languages', 'Language List View', '2023-04-14 18:43:45', '2023-04-14 18:43:45', NULL);
INSERT INTO `loghistories` VALUES (160, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:43:54', '2023-04-14 18:43:54', NULL);
INSERT INTO `loghistories` VALUES (161, 1, 'languages', 'Existing Item Updated', '2023-04-14 18:44:00', '2023-04-14 18:44:00', NULL);
INSERT INTO `loghistories` VALUES (162, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:44:03', '2023-04-14 18:44:03', NULL);
INSERT INTO `loghistories` VALUES (163, 1, 'languages', 'Language List View', '2023-04-14 18:44:04', '2023-04-14 18:44:04', NULL);
INSERT INTO `loghistories` VALUES (164, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:44:12', '2023-04-14 18:44:12', NULL);
INSERT INTO `loghistories` VALUES (165, 1, 'languages', 'Existing Item Updated', '2023-04-14 18:44:18', '2023-04-14 18:44:18', NULL);
INSERT INTO `loghistories` VALUES (166, 1, 'languages', 'Language List View', '2023-04-14 18:44:22', '2023-04-14 18:44:22', NULL);
INSERT INTO `loghistories` VALUES (167, 1, 'languages', 'Existing Item Edit Page', '2023-04-14 18:44:26', '2023-04-14 18:44:26', NULL);
INSERT INTO `loghistories` VALUES (168, 1, 'languages', 'Existing Item Updated', '2023-04-14 18:44:32', '2023-04-14 18:44:32', NULL);
INSERT INTO `loghistories` VALUES (169, 1, 'languages', 'Language List View', '2023-04-14 18:44:36', '2023-04-14 18:44:36', NULL);
INSERT INTO `loghistories` VALUES (170, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-04-14 18:45:00', '2023-04-14 18:45:00', NULL);
INSERT INTO `loghistories` VALUES (171, 1, 'languages', 'Language List View', '2023-04-14 18:45:01', '2023-04-14 18:45:01', NULL);
INSERT INTO `loghistories` VALUES (172, 1, 'languages', 'Language Detail View Page', '2023-04-14 18:45:08', '2023-04-14 18:45:08', NULL);
INSERT INTO `loghistories` VALUES (173, 1, 'prices', 'Price List by type (6) View', '2023-04-14 18:46:00', '2023-04-14 18:46:00', NULL);
INSERT INTO `loghistories` VALUES (174, 1, 'prices', 'Price List by type (4) View', '2023-04-14 18:46:14', '2023-04-14 18:46:14', NULL);
INSERT INTO `loghistories` VALUES (175, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-14 18:49:34', '2023-04-14 18:49:34', NULL);
INSERT INTO `loghistories` VALUES (176, 1, 'pricecompares', 'Existing Price List Competitor Item Showing Page', '2023-04-14 18:50:39', '2023-04-14 18:50:39', NULL);
INSERT INTO `loghistories` VALUES (177, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-14 18:50:46', '2023-04-14 18:50:46', NULL);
INSERT INTO `loghistories` VALUES (178, 1, 'languages', 'Changed WebSite Language as English', '2023-04-14 19:22:13', '2023-04-14 19:22:13', NULL);
INSERT INTO `loghistories` VALUES (179, 1, 'prices', 'Price List by type (3) View', '2023-04-14 19:22:25', '2023-04-14 19:22:25', NULL);
INSERT INTO `loghistories` VALUES (180, 1, 'prices', 'Price List by type (4) View', '2023-04-14 19:22:44', '2023-04-14 19:22:44', NULL);
INSERT INTO `loghistories` VALUES (181, 1, 'pricetypes', 'Price Type List View', '2023-04-14 19:30:10', '2023-04-14 19:30:10', NULL);
INSERT INTO `loghistories` VALUES (182, 1, 'languages', 'Language List View', '2023-04-14 19:30:53', '2023-04-14 19:30:53', NULL);
INSERT INTO `loghistories` VALUES (183, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-14 19:31:49', '2023-04-14 19:31:49', NULL);
INSERT INTO `loghistories` VALUES (184, 1, 'pricecompares', 'Existing Price List Competitor Item Showing Page', '2023-04-14 19:31:59', '2023-04-14 19:31:59', NULL);
INSERT INTO `loghistories` VALUES (185, 1, 'pricecompetitors', 'Price Type List View', '2023-04-14 19:32:06', '2023-04-14 19:32:06', NULL);
INSERT INTO `loghistories` VALUES (186, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-14 19:32:14', '2023-04-14 19:32:14', NULL);
INSERT INTO `loghistories` VALUES (187, 1, 'pricecompares', 'Existing Price List Competitor Item Showing Page', '2023-04-14 19:32:21', '2023-04-14 19:32:21', NULL);
INSERT INTO `loghistories` VALUES (188, 1, 'pricecompetitors', 'Price Type List View', '2023-04-14 19:32:34', '2023-04-14 19:32:34', NULL);
INSERT INTO `loghistories` VALUES (189, 1, 'prices', 'Price List View', '2023-04-15 13:09:40', '2023-04-15 13:09:40', NULL);
INSERT INTO `loghistories` VALUES (190, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-15 13:09:45', '2023-04-15 13:09:45', NULL);
INSERT INTO `loghistories` VALUES (191, 1, 'pricecompetitors', 'Price Type List View', '2023-04-15 13:09:51', '2023-04-15 13:09:51', NULL);
INSERT INTO `loghistories` VALUES (192, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-15 13:09:57', '2023-04-15 13:09:57', NULL);
INSERT INTO `loghistories` VALUES (193, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-04-15 13:10:04', '2023-04-15 13:10:04', NULL);
INSERT INTO `loghistories` VALUES (194, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-15 13:48:27', '2023-04-15 13:48:27', NULL);
INSERT INTO `loghistories` VALUES (195, 1, 'pricecompares', 'Price List by type (3) View', '2023-04-15 13:48:30', '2023-04-15 13:48:30', NULL);
INSERT INTO `loghistories` VALUES (196, 1, 'languages', 'Language List View', '2023-04-15 13:48:39', '2023-04-15 13:48:39', NULL);
INSERT INTO `loghistories` VALUES (197, 1, 'pricetypes', 'Price Type List View', '2023-04-15 13:58:12', '2023-04-15 13:58:12', NULL);
INSERT INTO `loghistories` VALUES (198, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-15 13:58:23', '2023-04-15 13:58:23', NULL);
INSERT INTO `loghistories` VALUES (199, 1, 'prices', 'Price List by type (1) View', '2023-04-17 18:40:33', '2023-04-17 18:40:33', NULL);
INSERT INTO `loghistories` VALUES (200, 1, 'pricetypes', 'Price Type List View', '2023-04-17 18:40:39', '2023-04-17 18:40:39', NULL);
INSERT INTO `loghistories` VALUES (201, 1, 'prices', 'Price List View', '2023-04-17 18:40:45', '2023-04-17 18:40:45', NULL);
INSERT INTO `loghistories` VALUES (202, 1, 'prices', 'Price List View', '2023-04-17 18:40:51', '2023-04-17 18:40:51', NULL);
INSERT INTO `loghistories` VALUES (203, 1, 'pricings', 'Pricing Class View', '2023-04-17 18:41:04', '2023-04-17 18:41:04', NULL);
INSERT INTO `loghistories` VALUES (204, 1, 'pricemanages', 'Price management View', '2023-04-17 18:41:14', '2023-04-17 18:41:14', NULL);
INSERT INTO `loghistories` VALUES (205, 1, 'pricemanages', 'Price management View', '2023-04-17 18:42:02', '2023-04-17 18:42:02', NULL);
INSERT INTO `loghistories` VALUES (206, 1, 'pricecompetitors', 'Price Type List View', '2023-04-17 18:53:03', '2023-04-17 18:53:03', NULL);
INSERT INTO `loghistories` VALUES (207, 1, 'pricecompares', 'Price List by type (4) View', '2023-04-17 18:55:01', '2023-04-17 18:55:01', NULL);
INSERT INTO `loghistories` VALUES (208, 1, 'languages', 'Language List View', '2023-04-17 19:01:13', '2023-04-17 19:01:13', NULL);
INSERT INTO `loghistories` VALUES (209, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:01:25', '2023-04-17 19:01:25', NULL);
INSERT INTO `loghistories` VALUES (210, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:04:05', '2023-04-17 19:04:05', NULL);
INSERT INTO `loghistories` VALUES (211, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:04:05', '2023-04-17 19:04:05', NULL);
INSERT INTO `loghistories` VALUES (212, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-04-17 19:04:18', '2023-04-17 19:04:18', NULL);
INSERT INTO `loghistories` VALUES (213, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:04:18', '2023-04-17 19:04:18', NULL);
INSERT INTO `loghistories` VALUES (214, 1, 'languages', 'Language List View', '2023-04-17 19:04:26', '2023-04-17 19:04:26', NULL);
INSERT INTO `loghistories` VALUES (215, 1, 'languages', 'Language List View', '2023-04-17 19:05:19', '2023-04-17 19:05:19', NULL);
INSERT INTO `loghistories` VALUES (216, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:05:26', '2023-04-17 19:05:26', NULL);
INSERT INTO `loghistories` VALUES (217, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:06:11', '2023-04-17 19:06:11', NULL);
INSERT INTO `loghistories` VALUES (218, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:06:11', '2023-04-17 19:06:11', NULL);
INSERT INTO `loghistories` VALUES (219, 1, 'languages', 'Language List View', '2023-04-17 19:20:52', '2023-04-17 19:20:52', NULL);
INSERT INTO `loghistories` VALUES (220, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:21:05', '2023-04-17 19:21:05', NULL);
INSERT INTO `loghistories` VALUES (221, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:41:45', '2023-04-17 19:41:45', NULL);
INSERT INTO `loghistories` VALUES (222, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:41:45', '2023-04-17 19:41:45', NULL);
INSERT INTO `loghistories` VALUES (223, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:42:36', '2023-04-17 19:42:36', NULL);
INSERT INTO `loghistories` VALUES (224, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:42:36', '2023-04-17 19:42:36', NULL);
INSERT INTO `loghistories` VALUES (225, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:44:35', '2023-04-17 19:44:35', NULL);
INSERT INTO `loghistories` VALUES (226, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:44:36', '2023-04-17 19:44:36', NULL);
INSERT INTO `loghistories` VALUES (227, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:45:16', '2023-04-17 19:45:16', NULL);
INSERT INTO `loghistories` VALUES (228, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:45:17', '2023-04-17 19:45:17', NULL);
INSERT INTO `loghistories` VALUES (229, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:45:45', '2023-04-17 19:45:45', NULL);
INSERT INTO `loghistories` VALUES (230, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:45:45', '2023-04-17 19:45:45', NULL);
INSERT INTO `loghistories` VALUES (231, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:46:18', '2023-04-17 19:46:18', NULL);
INSERT INTO `loghistories` VALUES (232, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:46:19', '2023-04-17 19:46:19', NULL);
INSERT INTO `loghistories` VALUES (233, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:46:59', '2023-04-17 19:46:59', NULL);
INSERT INTO `loghistories` VALUES (234, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:46:59', '2023-04-17 19:46:59', NULL);
INSERT INTO `loghistories` VALUES (235, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:47:40', '2023-04-17 19:47:40', NULL);
INSERT INTO `loghistories` VALUES (236, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:47:40', '2023-04-17 19:47:40', NULL);
INSERT INTO `loghistories` VALUES (237, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:48:15', '2023-04-17 19:48:15', NULL);
INSERT INTO `loghistories` VALUES (238, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:48:15', '2023-04-17 19:48:15', NULL);
INSERT INTO `loghistories` VALUES (239, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-04-17 19:48:21', '2023-04-17 19:48:21', NULL);
INSERT INTO `loghistories` VALUES (240, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:48:21', '2023-04-17 19:48:21', NULL);
INSERT INTO `loghistories` VALUES (241, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:49:28', '2023-04-17 19:49:28', NULL);
INSERT INTO `loghistories` VALUES (242, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:49:28', '2023-04-17 19:49:28', NULL);
INSERT INTO `loghistories` VALUES (243, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:49:54', '2023-04-17 19:49:54', NULL);
INSERT INTO `loghistories` VALUES (244, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:49:54', '2023-04-17 19:49:54', NULL);
INSERT INTO `loghistories` VALUES (245, 1, 'languages', 'Changed WebSite Language as English', '2023-04-17 19:52:40', '2023-04-17 19:52:40', NULL);
INSERT INTO `loghistories` VALUES (246, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:52:40', '2023-04-17 19:52:40', NULL);
INSERT INTO `loghistories` VALUES (247, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-04-17 19:52:44', '2023-04-17 19:52:44', NULL);
INSERT INTO `loghistories` VALUES (248, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:52:44', '2023-04-17 19:52:44', NULL);
INSERT INTO `loghistories` VALUES (249, 1, 'pricemanages', 'Price management View', '2023-04-17 19:54:22', '2023-04-17 19:54:22', NULL);
INSERT INTO `loghistories` VALUES (250, 1, 'prices', 'Price List View', '2023-04-17 19:55:05', '2023-04-17 19:55:05', NULL);
INSERT INTO `loghistories` VALUES (251, 1, 'pricetypes', 'Price Type List View', '2023-04-17 19:55:13', '2023-04-17 19:55:13', NULL);
INSERT INTO `loghistories` VALUES (252, 1, 'pricemanages', 'Price management View', '2023-04-17 19:55:23', '2023-04-17 19:55:23', NULL);
INSERT INTO `loghistories` VALUES (253, 1, 'pricings', 'Pricing Class View', '2023-04-17 19:55:37', '2023-04-17 19:55:37', NULL);
INSERT INTO `loghistories` VALUES (254, 1, 'pricemanages', 'Price management View', '2023-04-17 19:55:40', '2023-04-17 19:55:40', NULL);
INSERT INTO `loghistories` VALUES (255, 1, 'pricings', 'Pricing Class View', '2023-04-17 19:56:01', '2023-04-17 19:56:01', NULL);
INSERT INTO `loghistories` VALUES (256, 1, 'pricemanages', 'Price management View', '2023-04-17 19:56:16', '2023-04-17 19:56:16', NULL);
INSERT INTO `loghistories` VALUES (257, 1, 'languages', 'Language List View', '2023-04-17 19:56:30', '2023-04-17 19:56:30', NULL);
INSERT INTO `loghistories` VALUES (258, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:56:33', '2023-04-17 19:56:33', NULL);
INSERT INTO `loghistories` VALUES (259, 1, 'languages', 'New Language Key Updated', '2023-04-17 19:57:54', '2023-04-17 19:57:54', NULL);
INSERT INTO `loghistories` VALUES (260, 1, 'languages', 'Language Detail View Page', '2023-04-17 19:57:54', '2023-04-17 19:57:54', NULL);
INSERT INTO `loghistories` VALUES (261, 1, 'languages', 'New Language Key Deleted', '2023-04-17 20:00:01', '2023-04-17 20:00:01', NULL);
INSERT INTO `loghistories` VALUES (262, 1, 'languages', 'Language Detail View Page', '2023-04-17 20:00:01', '2023-04-17 20:00:01', NULL);
INSERT INTO `loghistories` VALUES (263, 1, 'pricemanages', 'Price management View', '2023-04-17 20:00:08', '2023-04-17 20:00:08', NULL);
INSERT INTO `loghistories` VALUES (264, 1, 'languages', 'Language List View', '2023-04-17 20:03:17', '2023-04-17 20:03:17', NULL);
INSERT INTO `loghistories` VALUES (265, 1, 'languages', 'Language Detail View Page', '2023-04-17 20:03:25', '2023-04-17 20:03:25', NULL);
INSERT INTO `loghistories` VALUES (266, 1, 'languages', 'Language List View', '2023-04-20 17:32:25', '2023-04-20 17:32:25', NULL);
INSERT INTO `loghistories` VALUES (267, 1, 'languages', 'Language List View', '2023-04-20 17:32:33', '2023-04-20 17:32:33', NULL);
INSERT INTO `loghistories` VALUES (268, 1, 'languages', 'Language List View', '2023-04-20 17:32:55', '2023-04-20 17:32:55', NULL);
INSERT INTO `loghistories` VALUES (269, 1, 'prices', 'Price List by type (4) View', '2023-04-24 19:33:09', '2023-04-24 19:33:09', NULL);
INSERT INTO `loghistories` VALUES (270, 1, 'pricings', 'Pricing Class View', '2023-04-26 10:28:01', '2023-04-26 10:28:01', NULL);
INSERT INTO `loghistories` VALUES (271, 1, 'pricemanages', 'Price management View', '2023-04-26 10:28:05', '2023-04-26 10:28:05', NULL);
INSERT INTO `loghistories` VALUES (272, 1, 'pricetypes', 'Price Type List View', '2023-04-26 10:28:10', '2023-04-26 10:28:10', NULL);
INSERT INTO `loghistories` VALUES (273, 1, 'prices', 'Price List View', '2023-04-26 10:28:16', '2023-04-26 10:28:16', NULL);
INSERT INTO `loghistories` VALUES (274, 1, 'prices', 'Existing Item Editing Page', '2023-04-26 10:28:22', '2023-04-26 10:28:22', NULL);
INSERT INTO `loghistories` VALUES (275, 1, 'pricetypes', 'Price Type List View', '2023-04-26 10:28:28', '2023-04-26 10:28:28', NULL);
INSERT INTO `loghistories` VALUES (276, 1, 'prices', 'Price List View', '2023-04-26 10:28:30', '2023-04-26 10:28:30', NULL);
INSERT INTO `loghistories` VALUES (277, 1, 'pricemanages', 'Price management View', '2023-04-26 10:56:06', '2023-04-26 10:56:06', NULL);
INSERT INTO `loghistories` VALUES (278, 1, 'pricemanages', 'New Item Create Page', '2023-04-26 10:56:09', '2023-04-26 10:56:09', NULL);
INSERT INTO `loghistories` VALUES (279, 1, 'pricings', 'Pricing Class View', '2023-04-26 10:56:14', '2023-04-26 10:56:14', NULL);
INSERT INTO `loghistories` VALUES (280, 1, 'prices', 'Price List View', '2023-04-26 10:56:19', '2023-04-26 10:56:19', NULL);
INSERT INTO `loghistories` VALUES (281, 1, 'pricetypes', 'Price Type List View', '2023-04-26 10:56:37', '2023-04-26 10:56:37', NULL);
INSERT INTO `loghistories` VALUES (282, 1, 'languages', 'Language List View', '2023-04-26 10:56:49', '2023-04-26 10:56:49', NULL);
INSERT INTO `loghistories` VALUES (283, 8, 'prices', 'Price List View', '2023-04-26 10:58:11', '2023-04-26 10:58:11', NULL);
INSERT INTO `loghistories` VALUES (284, 8, 'pricemanages', 'Price management View', '2023-04-26 10:58:22', '2023-04-26 10:58:22', NULL);
INSERT INTO `loghistories` VALUES (285, 8, 'prices', 'Price List View', '2023-04-26 11:44:00', '2023-04-26 11:44:00', NULL);
INSERT INTO `loghistories` VALUES (286, 8, 'pricemanages', 'Price management View', '2023-04-26 11:44:05', '2023-04-26 11:44:05', NULL);
INSERT INTO `loghistories` VALUES (287, 8, 'pricemanages', 'Existing Item View', '2023-04-26 11:44:09', '2023-04-26 11:44:09', NULL);
INSERT INTO `loghistories` VALUES (288, 8, 'pricemanages', 'Price management View', '2023-04-26 11:44:17', '2023-04-26 11:44:17', NULL);
INSERT INTO `loghistories` VALUES (289, 1, 'pricetypes', 'Price Type List View', '2023-04-26 11:54:00', '2023-04-26 11:54:00', NULL);
INSERT INTO `loghistories` VALUES (290, 1, 'prices', 'Price List View', '2023-04-26 11:54:02', '2023-04-26 11:54:02', NULL);
INSERT INTO `loghistories` VALUES (291, 1, 'pricemanages', 'Price management View', '2023-04-26 11:55:14', '2023-04-26 11:55:14', NULL);
INSERT INTO `loghistories` VALUES (292, 1, 'pricetypes', 'Price Type List View', '2023-04-26 11:57:24', '2023-04-26 11:57:24', NULL);
INSERT INTO `loghistories` VALUES (293, 1, 'pricings', 'Pricing Class View', '2023-04-26 11:57:25', '2023-04-26 11:57:25', NULL);
INSERT INTO `loghistories` VALUES (294, 1, 'prices', 'Price List View', '2023-04-26 11:57:26', '2023-04-26 11:57:26', NULL);
INSERT INTO `loghistories` VALUES (295, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 12:02:04', '2023-04-26 12:02:04', NULL);
INSERT INTO `loghistories` VALUES (296, 1, 'pricecompares', 'Price List by type (13) View', '2023-04-26 12:02:23', '2023-04-26 12:02:23', NULL);
INSERT INTO `loghistories` VALUES (297, 1, 'prices', 'Price List by type (8) View', '2023-04-26 12:25:02', '2023-04-26 12:25:02', NULL);
INSERT INTO `loghistories` VALUES (298, 1, 'prices', 'Price List by type (13) View', '2023-04-26 12:25:09', '2023-04-26 12:25:09', NULL);
INSERT INTO `loghistories` VALUES (299, 1, 'prices', 'Price List by type (1) View', '2023-04-26 15:37:27', '2023-04-26 15:37:27', NULL);
INSERT INTO `loghistories` VALUES (300, 1, 'prices', 'Price List by type (1) View', '2023-04-26 15:42:27', '2023-04-26 15:42:27', NULL);
INSERT INTO `loghistories` VALUES (301, 1, 'prices', 'Price List by type (1) View', '2023-04-26 15:43:35', '2023-04-26 15:43:35', NULL);
INSERT INTO `loghistories` VALUES (302, 1, 'prices', 'Price List by type (1) View', '2023-04-26 15:43:36', '2023-04-26 15:43:36', NULL);
INSERT INTO `loghistories` VALUES (303, 1, 'prices', 'Price List View', '2023-04-26 15:43:45', '2023-04-26 15:43:45', NULL);
INSERT INTO `loghistories` VALUES (304, 1, 'prices', 'Price List by type (1) View', '2023-04-26 15:43:52', '2023-04-26 15:43:52', NULL);
INSERT INTO `loghistories` VALUES (305, 1, 'pricetypes', 'Price Type List View', '2023-04-26 15:43:58', '2023-04-26 15:43:58', NULL);
INSERT INTO `loghistories` VALUES (306, 1, 'prices', 'Price List by type (1) View', '2023-04-26 15:44:04', '2023-04-26 15:44:04', NULL);
INSERT INTO `loghistories` VALUES (307, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 16:20:31', '2023-04-26 16:20:31', NULL);
INSERT INTO `loghistories` VALUES (308, 1, 'prices', 'Price List by type (1) View', '2023-04-26 16:21:06', '2023-04-26 16:21:06', NULL);
INSERT INTO `loghistories` VALUES (309, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 16:21:11', '2023-04-26 16:21:11', NULL);
INSERT INTO `loghistories` VALUES (310, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 16:21:25', '2023-04-26 16:21:25', NULL);
INSERT INTO `loghistories` VALUES (311, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 16:23:27', '2023-04-26 16:23:27', NULL);
INSERT INTO `loghistories` VALUES (312, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 16:23:55', '2023-04-26 16:23:55', NULL);
INSERT INTO `loghistories` VALUES (313, 1, 'prices', 'Price List View', '2023-04-26 16:24:04', '2023-04-26 16:24:04', NULL);
INSERT INTO `loghistories` VALUES (314, 1, 'pricemanages', 'Price management View', '2023-04-26 16:24:12', '2023-04-26 16:24:12', NULL);
INSERT INTO `loghistories` VALUES (315, 1, 'prices', 'Price List View', '2023-04-26 16:24:14', '2023-04-26 16:24:14', NULL);
INSERT INTO `loghistories` VALUES (316, 1, 'pricetypes', 'Price Type List View', '2023-04-26 16:24:26', '2023-04-26 16:24:26', NULL);
INSERT INTO `loghistories` VALUES (317, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 16:24:33', '2023-04-26 16:24:33', NULL);
INSERT INTO `loghistories` VALUES (318, 1, 'pricetypes', 'Price Type List View', '2023-04-26 16:24:43', '2023-04-26 16:24:43', NULL);
INSERT INTO `loghistories` VALUES (319, 1, 'pricetypes', 'Existing Item View', '2023-04-26 16:24:50', '2023-04-26 16:24:50', NULL);
INSERT INTO `loghistories` VALUES (320, 1, 'prices', 'Price List by type (1) View', '2023-04-26 16:24:58', '2023-04-26 16:24:58', NULL);
INSERT INTO `loghistories` VALUES (321, 1, 'prices', 'Price List by type (4) View', '2023-04-26 16:25:02', '2023-04-26 16:25:02', NULL);
INSERT INTO `loghistories` VALUES (322, 1, 'prices', 'Price List by type (1) View', '2023-04-26 16:25:06', '2023-04-26 16:25:06', NULL);
INSERT INTO `loghistories` VALUES (323, 1, 'prices', 'Price List View', '2023-04-26 16:25:11', '2023-04-26 16:25:11', NULL);
INSERT INTO `loghistories` VALUES (324, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 17:03:01', '2023-04-26 17:03:01', NULL);
INSERT INTO `loghistories` VALUES (325, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:03:46', '2023-04-26 17:03:46', NULL);
INSERT INTO `loghistories` VALUES (326, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:04:03', '2023-04-26 17:04:03', NULL);
INSERT INTO `loghistories` VALUES (327, 1, 'prices', 'Price List by type (1) View', '2023-04-26 17:04:07', '2023-04-26 17:04:07', NULL);
INSERT INTO `loghistories` VALUES (328, 1, 'prices', 'Price List by type (4) View', '2023-04-26 17:04:15', '2023-04-26 17:04:15', NULL);
INSERT INTO `loghistories` VALUES (329, 1, 'prices', 'Price List by type (1) View', '2023-04-26 17:06:28', '2023-04-26 17:06:28', NULL);
INSERT INTO `loghistories` VALUES (330, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:06:31', '2023-04-26 17:06:31', NULL);
INSERT INTO `loghistories` VALUES (331, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:06:44', '2023-04-26 17:06:44', NULL);
INSERT INTO `loghistories` VALUES (332, 1, 'prices', 'Price List by type (1) View', '2023-04-26 17:06:50', '2023-04-26 17:06:50', NULL);
INSERT INTO `loghistories` VALUES (333, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:06:57', '2023-04-26 17:06:57', NULL);
INSERT INTO `loghistories` VALUES (334, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:07:08', '2023-04-26 17:07:08', NULL);
INSERT INTO `loghistories` VALUES (335, 1, 'prices', 'Price List by type (4) View', '2023-04-26 17:07:14', '2023-04-26 17:07:14', NULL);
INSERT INTO `loghistories` VALUES (336, 1, 'prices', 'Price List by type (1) View', '2023-04-26 17:07:16', '2023-04-26 17:07:16', NULL);
INSERT INTO `loghistories` VALUES (337, 1, 'prices', 'Price List View', '2023-04-26 17:09:58', '2023-04-26 17:09:58', NULL);
INSERT INTO `loghistories` VALUES (338, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:10:00', '2023-04-26 17:10:00', NULL);
INSERT INTO `loghistories` VALUES (339, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:10:13', '2023-04-26 17:10:13', NULL);
INSERT INTO `loghistories` VALUES (340, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 17:10:17', '2023-04-26 17:10:17', NULL);
INSERT INTO `loghistories` VALUES (341, 1, 'pricecompares', 'Price List by type (3) View', '2023-04-26 17:10:22', '2023-04-26 17:10:22', NULL);
INSERT INTO `loghistories` VALUES (342, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 17:10:25', '2023-04-26 17:10:25', NULL);
INSERT INTO `loghistories` VALUES (343, 1, 'prices', 'Price List View', '2023-04-26 17:11:41', '2023-04-26 17:11:41', NULL);
INSERT INTO `loghistories` VALUES (344, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:11:42', '2023-04-26 17:11:42', NULL);
INSERT INTO `loghistories` VALUES (345, 1, 'prices', 'Excel Import Showing Page', '2023-04-26 17:11:49', '2023-04-26 17:11:49', NULL);
INSERT INTO `loghistories` VALUES (346, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 17:11:52', '2023-04-26 17:11:52', NULL);
INSERT INTO `loghistories` VALUES (347, 1, 'prices', 'Price List by type (1) View', '2023-04-26 17:12:11', '2023-04-26 17:12:11', NULL);
INSERT INTO `loghistories` VALUES (348, 1, 'pricetypes', 'Price Type List View', '2023-04-26 17:12:38', '2023-04-26 17:12:38', NULL);
INSERT INTO `loghistories` VALUES (349, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-04-26 17:12:45', '2023-04-26 17:12:45', NULL);
INSERT INTO `loghistories` VALUES (350, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 17:12:51', '2023-04-26 17:12:51', NULL);
INSERT INTO `loghistories` VALUES (351, 1, 'pricecompares', 'Price List by type (3) View', '2023-04-26 17:12:54', '2023-04-26 17:12:54', NULL);
INSERT INTO `loghistories` VALUES (352, 1, 'pricecompetitors', 'Price Type List View', '2023-04-26 17:12:58', '2023-04-26 17:12:58', NULL);
INSERT INTO `loghistories` VALUES (353, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 17:13:03', '2023-04-26 17:13:03', NULL);
INSERT INTO `loghistories` VALUES (354, 1, 'prices', 'Price List by type (1) View', '2023-04-26 17:13:13', '2023-04-26 17:13:13', NULL);
INSERT INTO `loghistories` VALUES (355, 1, 'prices', 'New Item Creating Page', '2023-04-26 17:13:39', '2023-04-26 17:13:39', NULL);
INSERT INTO `loghistories` VALUES (356, 1, 'prices', 'Price List View', '2023-04-26 17:13:44', '2023-04-26 17:13:44', NULL);
INSERT INTO `loghistories` VALUES (357, 1, 'pricings', 'Pricing Class View', '2023-04-26 17:13:46', '2023-04-26 17:13:46', NULL);
INSERT INTO `loghistories` VALUES (358, 1, 'pricemanages', 'Price management View', '2023-04-26 17:13:58', '2023-04-26 17:13:58', NULL);
INSERT INTO `loghistories` VALUES (359, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-26 17:14:05', '2023-04-26 17:14:05', NULL);
INSERT INTO `loghistories` VALUES (360, 1, 'pricecompares', 'Existing Price List Competitor Item Showing Page', '2023-04-26 17:14:11', '2023-04-26 17:14:11', NULL);
INSERT INTO `loghistories` VALUES (361, 1, 'prices', 'Price List by type (1) View', '2023-04-26 17:14:17', '2023-04-26 17:14:17', NULL);
INSERT INTO `loghistories` VALUES (362, 1, 'prices', 'Price List by type (1) View', '2023-04-27 15:21:40', '2023-04-27 15:21:40', NULL);
INSERT INTO `loghistories` VALUES (363, 1, 'prices', 'Price List by type (12) View', '2023-04-27 15:21:48', '2023-04-27 15:21:48', NULL);
INSERT INTO `loghistories` VALUES (364, 1, 'prices', 'Price List by type (11) View', '2023-04-27 15:21:50', '2023-04-27 15:21:50', NULL);
INSERT INTO `loghistories` VALUES (365, 1, 'prices', 'Price List by type (10) View', '2023-04-27 15:21:52', '2023-04-27 15:21:52', NULL);
INSERT INTO `loghistories` VALUES (366, 1, 'prices', 'Price List by type (8) View', '2023-04-27 15:21:53', '2023-04-27 15:21:53', NULL);
INSERT INTO `loghistories` VALUES (367, 1, 'prices', 'Price List by type (6) View', '2023-04-27 15:21:55', '2023-04-27 15:21:55', NULL);
INSERT INTO `loghistories` VALUES (368, 1, 'prices', 'Price List by type (4) View', '2023-04-27 15:21:57', '2023-04-27 15:21:57', NULL);
INSERT INTO `loghistories` VALUES (369, 1, 'prices', 'Price List by type (1) View', '2023-04-27 15:22:15', '2023-04-27 15:22:15', NULL);
INSERT INTO `loghistories` VALUES (370, 1, 'prices', 'Price List by type (10) View', '2023-04-27 15:22:36', '2023-04-27 15:22:36', NULL);
INSERT INTO `loghistories` VALUES (371, 1, 'prices', 'Price List by type (1) View', '2023-04-27 15:22:44', '2023-04-27 15:22:44', NULL);
INSERT INTO `loghistories` VALUES (372, 11, 'prices', 'Price List View', '2023-04-27 15:38:06', '2023-04-27 15:38:06', NULL);
INSERT INTO `loghistories` VALUES (373, 11, 'pricemanages', 'Price management View', '2023-04-27 15:38:13', '2023-04-27 15:38:13', NULL);
INSERT INTO `loghistories` VALUES (374, 11, 'prices', 'Price List View', '2023-04-27 15:38:16', '2023-04-27 15:38:16', NULL);
INSERT INTO `loghistories` VALUES (375, 11, 'pricemanages', 'Price management View', '2023-04-27 15:38:26', '2023-04-27 15:38:26', NULL);
INSERT INTO `loghistories` VALUES (376, 11, 'pricecompetitors', 'Price Type List View', '2023-04-27 15:38:35', '2023-04-27 15:38:35', NULL);
INSERT INTO `loghistories` VALUES (377, 11, 'pricecompares', 'Price All Competitors by VENTZONE View', '2023-04-27 15:38:38', '2023-04-27 15:38:38', NULL);
INSERT INTO `loghistories` VALUES (378, 1, 'pricetypes', 'Price Type List View', '2023-04-27 15:41:10', '2023-04-27 15:41:10', NULL);
INSERT INTO `loghistories` VALUES (379, 1, 'prices', 'Price List View', '2023-04-27 15:41:16', '2023-04-27 15:41:16', NULL);
INSERT INTO `loghistories` VALUES (380, 1, 'pricings', 'Pricing Class View', '2023-04-27 15:41:19', '2023-04-27 15:41:19', NULL);
INSERT INTO `loghistories` VALUES (381, 1, 'prices', 'Price List by type (6) View', '2023-04-27 15:41:24', '2023-04-27 15:41:24', NULL);
INSERT INTO `loghistories` VALUES (382, 1, 'prices', 'Price List by type (4) View', '2023-04-27 15:41:26', '2023-04-27 15:41:26', NULL);
INSERT INTO `loghistories` VALUES (383, 1, 'prices', 'Price List by type (3) View', '2023-04-27 15:41:28', '2023-04-27 15:41:28', NULL);
INSERT INTO `loghistories` VALUES (384, 1, 'prices', 'Price List by type (1) View', '2023-04-27 15:41:31', '2023-04-27 15:41:31', NULL);
INSERT INTO `loghistories` VALUES (385, 1, 'prices', 'Price List View', '2023-04-27 15:41:39', '2023-04-27 15:41:39', NULL);
INSERT INTO `loghistories` VALUES (386, 1, 'pricetypes', 'Price Type List View', '2023-04-27 15:41:42', '2023-04-27 15:41:42', NULL);
INSERT INTO `loghistories` VALUES (387, 1, 'prices', 'Price List by type (1) View', '2023-04-27 15:42:13', '2023-04-27 15:42:13', NULL);
INSERT INTO `loghistories` VALUES (388, 1, 'prices', 'Price List by type (1) View', '2023-04-27 15:45:04', '2023-04-27 15:45:04', NULL);
INSERT INTO `loghistories` VALUES (389, 1, 'pricetypes', 'Price Type List View', '2023-04-27 15:45:13', '2023-04-27 15:45:13', NULL);
INSERT INTO `loghistories` VALUES (390, 1, 'prices', 'Price List View', '2023-04-27 15:45:18', '2023-04-27 15:45:18', NULL);
INSERT INTO `loghistories` VALUES (391, 1, 'prices', 'Price List by type (1) View', '2023-04-27 15:57:17', '2023-04-27 15:57:17', NULL);
INSERT INTO `loghistories` VALUES (392, 1, 'prices', 'Price List by type (1) View', '2023-04-27 17:45:34', '2023-04-27 17:45:34', NULL);
INSERT INTO `loghistories` VALUES (393, 1, 'pricetypes', 'Price Type List View', '2023-04-27 17:46:11', '2023-04-27 17:46:11', NULL);
INSERT INTO `loghistories` VALUES (394, 1, 'prices', 'Price List View', '2023-04-27 17:46:36', '2023-04-27 17:46:36', NULL);
INSERT INTO `loghistories` VALUES (395, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-27 17:46:43', '2023-04-27 17:46:43', NULL);
INSERT INTO `loghistories` VALUES (396, 1, 'prices', 'Price List by type (1) View', '2023-04-27 17:47:05', '2023-04-27 17:47:05', NULL);
INSERT INTO `loghistories` VALUES (397, 1, 'prices', 'Price List by type (1) View', '2023-04-27 17:48:09', '2023-04-27 17:48:09', NULL);
INSERT INTO `loghistories` VALUES (398, 1, 'prices', 'Price List by type (1) View', '2023-04-27 19:12:00', '2023-04-27 19:12:00', NULL);
INSERT INTO `loghistories` VALUES (399, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-27 19:12:15', '2023-04-27 19:12:15', NULL);
INSERT INTO `loghistories` VALUES (400, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:12:25', '2023-04-27 19:12:25', NULL);
INSERT INTO `loghistories` VALUES (401, 1, 'pricecompetitors', 'Existing Item deleted', '2023-04-27 19:12:35', '2023-04-27 19:12:35', NULL);
INSERT INTO `loghistories` VALUES (402, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:12:36', '2023-04-27 19:12:36', NULL);
INSERT INTO `loghistories` VALUES (403, 1, 'pricecompetitors', 'Existing Item deleted', '2023-04-27 19:12:39', '2023-04-27 19:12:39', NULL);
INSERT INTO `loghistories` VALUES (404, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:12:40', '2023-04-27 19:12:40', NULL);
INSERT INTO `loghistories` VALUES (405, 1, 'pricecompetitors', 'Existing Item deleted', '2023-04-27 19:12:43', '2023-04-27 19:12:43', NULL);
INSERT INTO `loghistories` VALUES (406, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:12:43', '2023-04-27 19:12:43', NULL);
INSERT INTO `loghistories` VALUES (407, 1, 'pricecompetitors', 'Existing Item deleted', '2023-04-27 19:12:46', '2023-04-27 19:12:46', NULL);
INSERT INTO `loghistories` VALUES (408, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:12:46', '2023-04-27 19:12:46', NULL);
INSERT INTO `loghistories` VALUES (409, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-04-27 19:13:07', '2023-04-27 19:13:07', NULL);
INSERT INTO `loghistories` VALUES (410, 1, 'languages', 'Language List View', '2023-04-27 19:14:43', '2023-04-27 19:14:43', NULL);
INSERT INTO `loghistories` VALUES (411, 1, 'languages', 'Language List View', '2023-04-27 19:15:38', '2023-04-27 19:15:38', NULL);
INSERT INTO `loghistories` VALUES (412, 1, 'prices', 'Price List by type (1) View', '2023-04-27 19:17:44', '2023-04-27 19:17:44', NULL);
INSERT INTO `loghistories` VALUES (413, 1, 'languages', 'Language List View', '2023-04-27 19:18:31', '2023-04-27 19:18:31', NULL);
INSERT INTO `loghistories` VALUES (414, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:18:47', '2023-04-27 19:18:47', NULL);
INSERT INTO `loghistories` VALUES (415, 1, 'languages', 'Language List View', '2023-04-27 19:18:52', '2023-04-27 19:18:52', NULL);
INSERT INTO `loghistories` VALUES (416, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:18:55', '2023-04-27 19:18:55', NULL);
INSERT INTO `loghistories` VALUES (417, 1, 'languages', 'Language List View', '2023-04-27 19:18:58', '2023-04-27 19:18:58', NULL);
INSERT INTO `loghistories` VALUES (418, 1, 'languages', 'Language List View', '2023-04-27 19:19:07', '2023-04-27 19:19:07', NULL);
INSERT INTO `loghistories` VALUES (419, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:19:08', '2023-04-27 19:19:08', NULL);
INSERT INTO `loghistories` VALUES (420, 1, 'languages', 'Existing Item Updated', '2023-04-27 19:19:12', '2023-04-27 19:19:12', NULL);
INSERT INTO `loghistories` VALUES (421, 1, 'languages', 'Language List View', '2023-04-27 19:19:17', '2023-04-27 19:19:17', NULL);
INSERT INTO `loghistories` VALUES (422, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:19:21', '2023-04-27 19:19:21', NULL);
INSERT INTO `loghistories` VALUES (423, 1, 'languages', 'Language List View', '2023-04-27 19:19:39', '2023-04-27 19:19:39', NULL);
INSERT INTO `loghistories` VALUES (424, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:19:51', '2023-04-27 19:19:51', NULL);
INSERT INTO `loghistories` VALUES (425, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:20:18', '2023-04-27 19:20:18', NULL);
INSERT INTO `loghistories` VALUES (426, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-04-27 19:20:18', '2023-04-27 19:20:18', NULL);
INSERT INTO `loghistories` VALUES (427, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:20:19', '2023-04-27 19:20:19', NULL);
INSERT INTO `loghistories` VALUES (428, 1, 'languages', 'Language List View', '2023-04-27 19:20:31', '2023-04-27 19:20:31', NULL);
INSERT INTO `loghistories` VALUES (429, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-04-27 19:20:34', '2023-04-27 19:20:34', NULL);
INSERT INTO `loghistories` VALUES (430, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:20:35', '2023-04-27 19:20:35', NULL);
INSERT INTO `loghistories` VALUES (431, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:20:36', '2023-04-27 19:20:36', NULL);
INSERT INTO `loghistories` VALUES (432, 1, 'languages', 'Language List View', '2023-04-27 19:20:40', '2023-04-27 19:20:40', NULL);
INSERT INTO `loghistories` VALUES (433, 1, 'languages', 'Existing Item View', '2023-04-27 19:20:42', '2023-04-27 19:20:42', NULL);
INSERT INTO `loghistories` VALUES (434, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:20:46', '2023-04-27 19:20:46', NULL);
INSERT INTO `loghistories` VALUES (435, 1, 'languages', 'Language List View', '2023-04-27 19:20:51', '2023-04-27 19:20:51', NULL);
INSERT INTO `loghistories` VALUES (436, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:21:06', '2023-04-27 19:21:06', NULL);
INSERT INTO `loghistories` VALUES (437, 1, 'languages', 'Language List View', '2023-04-27 19:21:09', '2023-04-27 19:21:09', NULL);
INSERT INTO `loghistories` VALUES (438, 1, 'languages', 'Language List View', '2023-04-27 19:24:46', '2023-04-27 19:24:46', NULL);
INSERT INTO `loghistories` VALUES (439, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:25:13', '2023-04-27 19:25:13', NULL);
INSERT INTO `loghistories` VALUES (440, 1, 'pricecompares', 'Price List by type (14) View', '2023-04-27 19:25:21', '2023-04-27 19:25:21', NULL);
INSERT INTO `loghistories` VALUES (441, 1, 'pricecompares', 'Price List by type (13) View', '2023-04-27 19:25:24', '2023-04-27 19:25:24', NULL);
INSERT INTO `loghistories` VALUES (442, 1, 'pricecompares', 'Price List by type (1) View', '2023-04-27 19:25:28', '2023-04-27 19:25:28', NULL);
INSERT INTO `loghistories` VALUES (443, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:25:32', '2023-04-27 19:25:32', NULL);
INSERT INTO `loghistories` VALUES (444, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-04-27 19:25:38', '2023-04-27 19:25:38', NULL);
INSERT INTO `loghistories` VALUES (445, 1, 'pricecompares', 'Generated Price List Competitors as PDF by Admin', '2023-04-27 19:25:49', '2023-04-27 19:25:49', NULL);
INSERT INTO `loghistories` VALUES (446, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:26:12', '2023-04-27 19:26:12', NULL);
INSERT INTO `loghistories` VALUES (447, 1, 'pricecompetitors', 'New Item Create Page', '2023-04-27 19:26:16', '2023-04-27 19:26:16', NULL);
INSERT INTO `loghistories` VALUES (448, 1, 'pricetypes', 'Price Type List View', '2023-04-27 19:26:16', '2023-04-27 19:26:16', NULL);
INSERT INTO `loghistories` VALUES (449, 1, 'prices', 'Price List by type (14) View', '2023-04-27 19:26:24', '2023-04-27 19:26:24', NULL);
INSERT INTO `loghistories` VALUES (450, 1, 'prices', 'Price List by type (13) View', '2023-04-27 19:26:26', '2023-04-27 19:26:26', NULL);
INSERT INTO `loghistories` VALUES (451, 1, 'prices', 'Price List by type (12) View', '2023-04-27 19:26:28', '2023-04-27 19:26:28', NULL);
INSERT INTO `loghistories` VALUES (452, 1, 'prices', 'Price List by type (11) View', '2023-04-27 19:26:29', '2023-04-27 19:26:29', NULL);
INSERT INTO `loghistories` VALUES (453, 1, 'prices', 'Price List by type (10) View', '2023-04-27 19:26:31', '2023-04-27 19:26:31', NULL);
INSERT INTO `loghistories` VALUES (454, 1, 'prices', 'Price List by type (8) View', '2023-04-27 19:26:32', '2023-04-27 19:26:32', NULL);
INSERT INTO `loghistories` VALUES (455, 1, 'prices', 'Price List by type (6) View', '2023-04-27 19:26:34', '2023-04-27 19:26:34', NULL);
INSERT INTO `loghistories` VALUES (456, 1, 'prices', 'Price List by type (4) View', '2023-04-27 19:26:35', '2023-04-27 19:26:35', NULL);
INSERT INTO `loghistories` VALUES (457, 1, 'prices', 'Price List by type (3) View', '2023-04-27 19:26:38', '2023-04-27 19:26:38', NULL);
INSERT INTO `loghistories` VALUES (458, 1, 'prices', 'Price List by type (1) View', '2023-04-27 19:26:40', '2023-04-27 19:26:40', NULL);
INSERT INTO `loghistories` VALUES (459, 1, 'prices', 'Existing Item Editing Page', '2023-04-27 19:26:49', '2023-04-27 19:26:49', NULL);
INSERT INTO `loghistories` VALUES (460, 1, 'prices', 'Price List View', '2023-04-27 19:26:58', '2023-04-27 19:26:58', NULL);
INSERT INTO `loghistories` VALUES (461, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:27:45', '2023-04-27 19:27:45', NULL);
INSERT INTO `loghistories` VALUES (462, 1, 'prices', 'Price List View', '2023-04-27 19:27:47', '2023-04-27 19:27:47', NULL);
INSERT INTO `loghistories` VALUES (463, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:27:55', '2023-04-27 19:27:55', NULL);
INSERT INTO `loghistories` VALUES (464, 1, 'pricecompetitors', 'New Item Create Page', '2023-04-27 19:27:59', '2023-04-27 19:27:59', NULL);
INSERT INTO `loghistories` VALUES (465, 1, 'pricetypes', 'Price Type List View', '2023-04-27 19:28:16', '2023-04-27 19:28:16', NULL);
INSERT INTO `loghistories` VALUES (466, 1, 'prices', 'Price List View', '2023-04-27 19:28:18', '2023-04-27 19:28:18', NULL);
INSERT INTO `loghistories` VALUES (467, 1, 'pricecompetitors', 'Price Type List View', '2023-04-27 19:28:28', '2023-04-27 19:28:28', NULL);
INSERT INTO `loghistories` VALUES (468, 1, 'pricecompetitors', 'New Item Create Page', '2023-04-27 19:28:51', '2023-04-27 19:28:51', NULL);
INSERT INTO `loghistories` VALUES (469, 1, 'pricemanages', 'Price management View', '2023-04-27 19:30:16', '2023-04-27 19:30:16', NULL);
INSERT INTO `loghistories` VALUES (470, 1, 'pricemanages', 'Price management View', '2023-04-27 19:30:39', '2023-04-27 19:30:39', NULL);
INSERT INTO `loghistories` VALUES (471, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:31:11', '2023-04-27 19:31:11', NULL);
INSERT INTO `loghistories` VALUES (472, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:31:17', '2023-04-27 19:31:17', NULL);
INSERT INTO `loghistories` VALUES (473, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:31:30', '2023-04-27 19:31:30', NULL);
INSERT INTO `loghistories` VALUES (474, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:31:46', '2023-04-27 19:31:46', NULL);
INSERT INTO `loghistories` VALUES (475, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:31:52', '2023-04-27 19:31:52', NULL);
INSERT INTO `loghistories` VALUES (476, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:31:57', '2023-04-27 19:31:57', NULL);
INSERT INTO `loghistories` VALUES (477, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:32:03', '2023-04-27 19:32:03', NULL);
INSERT INTO `loghistories` VALUES (478, 1, 'pricemanages', 'Price management View', '2023-04-27 19:32:12', '2023-04-27 19:32:12', NULL);
INSERT INTO `loghistories` VALUES (479, 1, 'prices', 'Price List View', '2023-04-27 19:32:18', '2023-04-27 19:32:18', NULL);
INSERT INTO `loghistories` VALUES (480, 1, 'pricetypes', 'Price Type List View', '2023-04-27 19:32:23', '2023-04-27 19:32:23', NULL);
INSERT INTO `loghistories` VALUES (481, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:32:38', '2023-04-27 19:32:38', NULL);
INSERT INTO `loghistories` VALUES (482, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:32:43', '2023-04-27 19:32:43', NULL);
INSERT INTO `loghistories` VALUES (483, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:32:48', '2023-04-27 19:32:48', NULL);
INSERT INTO `loghistories` VALUES (484, 1, 'pricings', 'New Item Creating Page', '2023-04-27 19:32:50', '2023-04-27 19:32:50', NULL);
INSERT INTO `loghistories` VALUES (485, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:32:58', '2023-04-27 19:32:58', NULL);
INSERT INTO `loghistories` VALUES (486, 1, 'pricings', 'Existing Item Showing Page', '2023-04-27 19:33:07', '2023-04-27 19:33:07', NULL);
INSERT INTO `loghistories` VALUES (487, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:33:10', '2023-04-27 19:33:10', NULL);
INSERT INTO `loghistories` VALUES (488, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:33:11', '2023-04-27 19:33:11', NULL);
INSERT INTO `loghistories` VALUES (489, 1, 'pricings', 'Existing Item Showing Page', '2023-04-27 19:33:18', '2023-04-27 19:33:18', NULL);
INSERT INTO `loghistories` VALUES (490, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:33:26', '2023-04-27 19:33:26', NULL);
INSERT INTO `loghistories` VALUES (491, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:33:29', '2023-04-27 19:33:29', NULL);
INSERT INTO `loghistories` VALUES (492, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:33:29', '2023-04-27 19:33:29', NULL);
INSERT INTO `loghistories` VALUES (493, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:33:35', '2023-04-27 19:33:35', NULL);
INSERT INTO `loghistories` VALUES (494, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:33:37', '2023-04-27 19:33:37', NULL);
INSERT INTO `loghistories` VALUES (495, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:33:40', '2023-04-27 19:33:40', NULL);
INSERT INTO `loghistories` VALUES (496, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:33:42', '2023-04-27 19:33:42', NULL);
INSERT INTO `loghistories` VALUES (497, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:33:46', '2023-04-27 19:33:46', NULL);
INSERT INTO `loghistories` VALUES (498, 1, 'pricings', 'Existing Item Showing Page', '2023-04-27 19:33:49', '2023-04-27 19:33:49', NULL);
INSERT INTO `loghistories` VALUES (499, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:33:51', '2023-04-27 19:33:51', NULL);
INSERT INTO `loghistories` VALUES (500, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:34:21', '2023-04-27 19:34:21', NULL);
INSERT INTO `loghistories` VALUES (501, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:34:24', '2023-04-27 19:34:24', NULL);
INSERT INTO `loghistories` VALUES (502, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:34:25', '2023-04-27 19:34:25', NULL);
INSERT INTO `loghistories` VALUES (503, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:34:30', '2023-04-27 19:34:30', NULL);
INSERT INTO `loghistories` VALUES (504, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:34:55', '2023-04-27 19:34:55', NULL);
INSERT INTO `loghistories` VALUES (505, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:35:01', '2023-04-27 19:35:01', NULL);
INSERT INTO `loghistories` VALUES (506, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:35:04', '2023-04-27 19:35:04', NULL);
INSERT INTO `loghistories` VALUES (507, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:35:07', '2023-04-27 19:35:07', NULL);
INSERT INTO `loghistories` VALUES (508, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:35:10', '2023-04-27 19:35:10', NULL);
INSERT INTO `loghistories` VALUES (509, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:35:15', '2023-04-27 19:35:15', NULL);
INSERT INTO `loghistories` VALUES (510, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:35:18', '2023-04-27 19:35:18', NULL);
INSERT INTO `loghistories` VALUES (511, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:35:20', '2023-04-27 19:35:20', NULL);
INSERT INTO `loghistories` VALUES (512, 1, 'pricings', 'Existing Item Editing Page', '2023-04-27 19:35:22', '2023-04-27 19:35:22', NULL);
INSERT INTO `loghistories` VALUES (513, 1, 'pricings', 'Existing Item Updated', '2023-04-27 19:35:25', '2023-04-27 19:35:25', NULL);
INSERT INTO `loghistories` VALUES (514, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:35:27', '2023-04-27 19:35:27', NULL);
INSERT INTO `loghistories` VALUES (515, 1, 'pricetypes', 'Price Type List View', '2023-04-27 19:40:23', '2023-04-27 19:40:23', NULL);
INSERT INTO `loghistories` VALUES (516, 1, 'languages', 'Language List View', '2023-04-27 19:40:26', '2023-04-27 19:40:26', NULL);
INSERT INTO `loghistories` VALUES (517, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:40:54', '2023-04-27 19:40:54', NULL);
INSERT INTO `loghistories` VALUES (518, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:41:02', '2023-04-27 19:41:02', NULL);
INSERT INTO `loghistories` VALUES (519, 1, 'languages', 'Language List View', '2023-04-27 19:41:11', '2023-04-27 19:41:11', NULL);
INSERT INTO `loghistories` VALUES (520, 1, 'languages', 'Existing Item View', '2023-04-27 19:41:16', '2023-04-27 19:41:16', NULL);
INSERT INTO `loghistories` VALUES (521, 1, 'languages', 'Language List View', '2023-04-27 19:41:20', '2023-04-27 19:41:20', NULL);
INSERT INTO `loghistories` VALUES (522, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:41:23', '2023-04-27 19:41:23', NULL);
INSERT INTO `loghistories` VALUES (523, 1, 'languages', 'Language List View', '2023-04-27 19:41:28', '2023-04-27 19:41:28', NULL);
INSERT INTO `loghistories` VALUES (524, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:41:37', '2023-04-27 19:41:37', NULL);
INSERT INTO `loghistories` VALUES (525, 1, 'languages', 'Existing Item View', '2023-04-27 19:41:44', '2023-04-27 19:41:44', NULL);
INSERT INTO `loghistories` VALUES (526, 1, 'languages', 'Language List View', '2023-04-27 19:41:48', '2023-04-27 19:41:48', NULL);
INSERT INTO `loghistories` VALUES (527, 1, 'languages', 'Existing Item View', '2023-04-27 19:41:50', '2023-04-27 19:41:50', NULL);
INSERT INTO `loghistories` VALUES (528, 1, 'languages', 'Language List View', '2023-04-27 19:41:53', '2023-04-27 19:41:53', NULL);
INSERT INTO `loghistories` VALUES (529, 1, 'languages', 'Existing Item View', '2023-04-27 19:41:55', '2023-04-27 19:41:55', NULL);
INSERT INTO `loghistories` VALUES (530, 1, 'languages', 'Language List View', '2023-04-27 19:41:57', '2023-04-27 19:41:57', NULL);
INSERT INTO `loghistories` VALUES (531, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:42:00', '2023-04-27 19:42:00', NULL);
INSERT INTO `loghistories` VALUES (532, 1, 'languages', 'Language List View', '2023-04-27 19:42:08', '2023-04-27 19:42:08', NULL);
INSERT INTO `loghistories` VALUES (533, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:42:10', '2023-04-27 19:42:10', NULL);
INSERT INTO `loghistories` VALUES (534, 1, 'languages', 'Language List View', '2023-04-27 19:42:12', '2023-04-27 19:42:12', NULL);
INSERT INTO `loghistories` VALUES (535, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:42:14', '2023-04-27 19:42:14', NULL);
INSERT INTO `loghistories` VALUES (536, 1, 'languages', 'Language List View', '2023-04-27 19:42:17', '2023-04-27 19:42:17', NULL);
INSERT INTO `loghistories` VALUES (537, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:42:37', '2023-04-27 19:42:37', NULL);
INSERT INTO `loghistories` VALUES (538, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:42:41', '2023-04-27 19:42:41', NULL);
INSERT INTO `loghistories` VALUES (539, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:42:45', '2023-04-27 19:42:45', NULL);
INSERT INTO `loghistories` VALUES (540, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:42:49', '2023-04-27 19:42:49', NULL);
INSERT INTO `loghistories` VALUES (541, 1, 'languages', 'Language List View', '2023-04-27 19:45:04', '2023-04-27 19:45:04', NULL);
INSERT INTO `loghistories` VALUES (542, 1, 'languages', 'Language List View', '2023-04-27 19:51:08', '2023-04-27 19:51:08', NULL);
INSERT INTO `loghistories` VALUES (543, 1, 'prices', 'Price List by type (3) View', '2023-04-27 19:51:18', '2023-04-27 19:51:18', NULL);
INSERT INTO `loghistories` VALUES (544, 1, 'prices', 'Price List by type (4) View', '2023-04-27 19:51:22', '2023-04-27 19:51:22', NULL);
INSERT INTO `loghistories` VALUES (545, 1, 'prices', 'Price List by type (1) View', '2023-04-27 19:51:25', '2023-04-27 19:51:25', NULL);
INSERT INTO `loghistories` VALUES (546, 1, 'prices', 'Price List View', '2023-04-27 19:51:52', '2023-04-27 19:51:52', NULL);
INSERT INTO `loghistories` VALUES (547, 1, 'prices', 'Price List by type (1) View', '2023-04-27 19:52:13', '2023-04-27 19:52:13', NULL);
INSERT INTO `loghistories` VALUES (548, 1, 'prices', 'Price List by type (1) View', '2023-04-27 19:52:16', '2023-04-27 19:52:16', NULL);
INSERT INTO `loghistories` VALUES (549, 1, 'pricetypes', 'Price Type List View', '2023-04-27 19:53:00', '2023-04-27 19:53:00', NULL);
INSERT INTO `loghistories` VALUES (550, 1, 'prices', 'Price List View', '2023-04-27 19:53:05', '2023-04-27 19:53:05', NULL);
INSERT INTO `loghistories` VALUES (551, 1, 'prices', 'Price List by type (1) View', '2023-04-27 19:53:13', '2023-04-27 19:53:13', NULL);
INSERT INTO `loghistories` VALUES (552, 1, 'pricetypes', 'Price Type List View', '2023-04-27 19:53:24', '2023-04-27 19:53:24', NULL);
INSERT INTO `loghistories` VALUES (553, 1, 'pricemanages', 'Price management View', '2023-04-27 19:53:47', '2023-04-27 19:53:47', NULL);
INSERT INTO `loghistories` VALUES (554, 1, 'pricings', 'Pricing Class View', '2023-04-27 19:54:08', '2023-04-27 19:54:08', NULL);
INSERT INTO `loghistories` VALUES (555, 1, 'languages', 'Language List View', '2023-04-27 19:54:42', '2023-04-27 19:54:42', NULL);
INSERT INTO `loghistories` VALUES (556, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:55:27', '2023-04-27 19:55:27', NULL);
INSERT INTO `loghistories` VALUES (557, 1, 'languages', 'New Language Create Page', '2023-04-27 19:55:43', '2023-04-27 19:55:43', NULL);
INSERT INTO `loghistories` VALUES (558, 1, 'languages', 'Language List View', '2023-04-27 19:56:26', '2023-04-27 19:56:26', NULL);
INSERT INTO `loghistories` VALUES (559, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:56:31', '2023-04-27 19:56:31', NULL);
INSERT INTO `loghistories` VALUES (560, 1, 'languages', 'Language List View', '2023-04-27 19:56:35', '2023-04-27 19:56:35', NULL);
INSERT INTO `loghistories` VALUES (561, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:56:40', '2023-04-27 19:56:40', NULL);
INSERT INTO `loghistories` VALUES (562, 1, 'languages', 'Language List View', '2023-04-27 19:56:43', '2023-04-27 19:56:43', NULL);
INSERT INTO `loghistories` VALUES (563, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:56:45', '2023-04-27 19:56:45', NULL);
INSERT INTO `loghistories` VALUES (564, 1, 'languages', 'Language List View', '2023-04-27 19:56:53', '2023-04-27 19:56:53', NULL);
INSERT INTO `loghistories` VALUES (565, 1, 'languages', 'Existing Item View', '2023-04-27 19:57:01', '2023-04-27 19:57:01', NULL);
INSERT INTO `loghistories` VALUES (566, 1, 'languages', 'Existing Item View', '2023-04-27 19:57:03', '2023-04-27 19:57:03', NULL);
INSERT INTO `loghistories` VALUES (567, 1, 'languages', 'Language List View', '2023-04-27 19:57:04', '2023-04-27 19:57:04', NULL);
INSERT INTO `loghistories` VALUES (568, 1, 'languages', 'Language List View', '2023-04-27 19:57:08', '2023-04-27 19:57:08', NULL);
INSERT INTO `loghistories` VALUES (569, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:57:09', '2023-04-27 19:57:09', NULL);
INSERT INTO `loghistories` VALUES (570, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:57:14', '2023-04-27 19:57:14', NULL);
INSERT INTO `loghistories` VALUES (571, 1, 'languages', 'Language List View', '2023-04-27 19:57:36', '2023-04-27 19:57:36', NULL);
INSERT INTO `loghistories` VALUES (572, 1, 'languages', 'New Language Create Page', '2023-04-27 19:57:39', '2023-04-27 19:57:39', NULL);
INSERT INTO `loghistories` VALUES (573, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:57:51', '2023-04-27 19:57:51', NULL);
INSERT INTO `loghistories` VALUES (574, 1, 'languages', 'Existing Item Edit Page', '2023-04-27 19:57:57', '2023-04-27 19:57:57', NULL);
INSERT INTO `loghistories` VALUES (575, 1, 'languages', 'Changed WebSite Language as Français', '2023-04-27 19:58:02', '2023-04-27 19:58:02', NULL);
INSERT INTO `loghistories` VALUES (576, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:58:02', '2023-04-27 19:58:02', NULL);
INSERT INTO `loghistories` VALUES (577, 1, 'languages', 'Language List View', '2023-04-27 19:58:18', '2023-04-27 19:58:18', NULL);
INSERT INTO `loghistories` VALUES (578, 1, 'languages', 'Language List View', '2023-04-27 19:59:02', '2023-04-27 19:59:02', NULL);
INSERT INTO `loghistories` VALUES (579, 1, 'languages', 'Language List View', '2023-04-27 19:59:02', '2023-04-27 19:59:02', NULL);
INSERT INTO `loghistories` VALUES (580, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:59:05', '2023-04-27 19:59:05', NULL);
INSERT INTO `loghistories` VALUES (581, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:59:06', '2023-04-27 19:59:06', NULL);
INSERT INTO `loghistories` VALUES (582, 1, 'languages', 'Language List View', '2023-04-27 19:59:31', '2023-04-27 19:59:31', NULL);
INSERT INTO `loghistories` VALUES (583, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:59:40', '2023-04-27 19:59:40', NULL);
INSERT INTO `loghistories` VALUES (584, 1, 'languages', 'Language List View', '2023-04-27 19:59:48', '2023-04-27 19:59:48', NULL);
INSERT INTO `loghistories` VALUES (585, 1, 'languages', 'Language Detail View Page', '2023-04-27 19:59:58', '2023-04-27 19:59:58', NULL);
INSERT INTO `loghistories` VALUES (586, 1, 'languages', 'Language Detail View Page', '2023-04-27 20:00:06', '2023-04-27 20:00:06', NULL);
INSERT INTO `loghistories` VALUES (587, 1, 'languages', 'Language List View', '2023-04-27 20:00:24', '2023-04-27 20:00:24', NULL);
INSERT INTO `loghistories` VALUES (588, 1, 'languages', 'New Language Key Updated', '2023-04-27 20:00:26', '2023-04-27 20:00:26', NULL);
INSERT INTO `loghistories` VALUES (589, 1, 'languages', 'Language Detail View Page', '2023-04-27 20:00:26', '2023-04-27 20:00:26', NULL);
INSERT INTO `loghistories` VALUES (590, 1, 'languages', 'Language Detail View Page', '2023-04-27 20:00:27', '2023-04-27 20:00:27', NULL);
INSERT INTO `loghistories` VALUES (591, 1, 'languages', 'New Language Key Updated', '2023-04-27 20:00:44', '2023-04-27 20:00:44', NULL);
INSERT INTO `loghistories` VALUES (592, 1, 'languages', 'Language Detail View Page', '2023-04-27 20:00:44', '2023-04-27 20:00:44', NULL);
INSERT INTO `loghistories` VALUES (593, 1, 'languages', 'New Language Key Updated', '2023-04-27 20:00:55', '2023-04-27 20:00:55', NULL);
INSERT INTO `loghistories` VALUES (594, 1, 'languages', 'Language Detail View Page', '2023-04-27 20:00:55', '2023-04-27 20:00:55', NULL);
INSERT INTO `loghistories` VALUES (595, 1, 'languages', 'Language List View', '2023-04-27 20:05:36', '2023-04-27 20:05:36', NULL);
INSERT INTO `loghistories` VALUES (596, 1, 'languages', 'Changed WebSite Language as English', '2023-04-27 20:51:06', '2023-04-27 20:51:06', NULL);
INSERT INTO `loghistories` VALUES (597, 1, 'prices', 'Price List by type (1) View', '2023-04-28 14:35:53', '2023-04-28 14:35:53', NULL);
INSERT INTO `loghistories` VALUES (598, 1, 'languages', 'Language List View', '2023-04-28 15:30:49', '2023-04-28 15:30:49', NULL);
INSERT INTO `loghistories` VALUES (599, 1, 'languages', 'Language List View', '2023-04-28 16:49:02', '2023-04-28 16:49:02', NULL);
INSERT INTO `loghistories` VALUES (600, 1, 'prices', 'Price List by type (1) View', '2023-05-05 13:30:11', '2023-05-05 13:30:11', NULL);
INSERT INTO `loghistories` VALUES (601, 1, 'pricecompares', 'Price List by type (1) View', '2023-05-05 13:30:26', '2023-05-05 13:30:26', NULL);
INSERT INTO `loghistories` VALUES (602, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-05-05 13:30:32', '2023-05-05 13:30:32', NULL);
INSERT INTO `loghistories` VALUES (603, 1, 'pricecompetitors', 'Price Type List View', '2023-05-05 13:30:37', '2023-05-05 13:30:37', NULL);
INSERT INTO `loghistories` VALUES (604, 1, 'languages', 'Language List View', '2023-05-05 13:31:45', '2023-05-05 13:31:45', NULL);
INSERT INTO `loghistories` VALUES (605, 1, 'pricecompetitors', 'Price Type List View', '2023-05-05 13:32:01', '2023-05-05 13:32:01', NULL);
INSERT INTO `loghistories` VALUES (606, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-05-05 13:36:47', '2023-05-05 13:36:47', NULL);
INSERT INTO `loghistories` VALUES (607, 1, 'pricecompetitors', 'Price Type List View', '2023-05-05 13:36:59', '2023-05-05 13:36:59', NULL);
INSERT INTO `loghistories` VALUES (608, 1, 'pricings', 'Pricing Class View', '2023-05-05 13:37:40', '2023-05-05 13:37:40', NULL);
INSERT INTO `loghistories` VALUES (609, 1, 'pricings', 'Pricing Class View', '2023-05-05 13:39:44', '2023-05-05 13:39:44', NULL);
INSERT INTO `loghistories` VALUES (610, 1, 'pricings', 'Existing Item Editing Page', '2023-05-05 13:39:58', '2023-05-05 13:39:58', NULL);
INSERT INTO `loghistories` VALUES (611, 1, 'pricings', 'Existing Item Editing Page', '2023-05-05 13:40:54', '2023-05-05 13:40:54', NULL);
INSERT INTO `loghistories` VALUES (612, 1, 'pricings', 'Existing Item Editing Page', '2023-05-05 13:41:02', '2023-05-05 13:41:02', NULL);
INSERT INTO `loghistories` VALUES (613, 1, 'pricings', 'Existing Item Updated', '2023-05-05 13:41:08', '2023-05-05 13:41:08', NULL);
INSERT INTO `loghistories` VALUES (614, 1, 'pricings', 'Pricing Class View', '2023-05-05 13:41:15', '2023-05-05 13:41:15', NULL);
INSERT INTO `loghistories` VALUES (615, 1, 'pricings', 'New Item Creating Page', '2023-05-05 13:44:02', '2023-05-05 13:44:02', NULL);
INSERT INTO `loghistories` VALUES (616, 1, 'pricings', 'New Item Saved', '2023-05-05 13:44:37', '2023-05-05 13:44:37', NULL);
INSERT INTO `loghistories` VALUES (617, 1, 'prices', 'Price List View', '2023-05-05 16:08:07', '2023-05-05 16:08:07', NULL);
INSERT INTO `loghistories` VALUES (618, 1, 'prices', 'Price List by type (1) View', '2023-05-05 16:08:56', '2023-05-05 16:08:56', NULL);
INSERT INTO `loghistories` VALUES (619, 1, 'prices', 'Price List View', '2023-05-05 20:48:46', '2023-05-05 20:48:46', NULL);
INSERT INTO `loghistories` VALUES (620, 1, 'pricetypes', 'Price Type List View', '2023-05-05 20:48:59', '2023-05-05 20:48:59', NULL);
INSERT INTO `loghistories` VALUES (621, 1, 'pricetypes', 'Existing Item View', '2023-05-05 20:49:05', '2023-05-05 20:49:05', NULL);
INSERT INTO `loghistories` VALUES (622, 1, 'pricemanages', 'Price management View', '2023-05-05 20:49:17', '2023-05-05 20:49:17', NULL);
INSERT INTO `loghistories` VALUES (623, 1, 'languages', 'Language List View', '2023-05-05 20:53:33', '2023-05-05 20:53:33', NULL);
INSERT INTO `loghistories` VALUES (624, 1, 'pricecompares', 'Price List by type (1) View', '2023-05-05 20:56:45', '2023-05-05 20:56:45', NULL);
INSERT INTO `loghistories` VALUES (625, 1, 'pricecompares', 'Price List by type (1) View', '2023-05-06 10:48:07', '2023-05-06 10:48:07', NULL);
INSERT INTO `loghistories` VALUES (626, 1, 'pricecompares', 'Price List by type (4) View', '2023-05-06 10:48:15', '2023-05-06 10:48:15', NULL);
INSERT INTO `loghistories` VALUES (627, 1, 'prices', 'Price List by type (1) View', '2023-05-06 10:48:29', '2023-05-06 10:48:29', NULL);
INSERT INTO `loghistories` VALUES (628, 1, 'prices', 'Existing Item Editing Page', '2023-05-06 10:48:38', '2023-05-06 10:48:38', NULL);
INSERT INTO `loghistories` VALUES (629, 1, 'prices', 'Price List by type (1) View', '2023-05-06 11:07:27', '2023-05-06 11:07:27', NULL);
INSERT INTO `loghistories` VALUES (630, 1, 'prices', 'Price List by type (1) View', '2023-05-06 11:11:24', '2023-05-06 11:11:24', NULL);
INSERT INTO `loghistories` VALUES (631, 1, 'prices', 'Price List by type (3) View', '2023-05-06 11:12:27', '2023-05-06 11:12:27', NULL);
INSERT INTO `loghistories` VALUES (632, 1, 'prices', 'Price List by type (1) View', '2023-05-06 11:12:30', '2023-05-06 11:12:30', NULL);
INSERT INTO `loghistories` VALUES (633, 1, 'prices', 'Price List by type (1) View', '2023-05-06 11:13:29', '2023-05-06 11:13:29', NULL);
INSERT INTO `loghistories` VALUES (634, 1, 'prices', 'Existing Item Editing Page', '2023-05-06 11:16:06', '2023-05-06 11:16:06', NULL);
INSERT INTO `loghistories` VALUES (635, 1, 'prices', 'Price List View', '2023-05-06 11:17:29', '2023-05-06 11:17:29', NULL);
INSERT INTO `loghistories` VALUES (636, 1, 'prices', 'Price List by type (1) View', '2023-05-06 11:17:41', '2023-05-06 11:17:41', NULL);
INSERT INTO `loghistories` VALUES (637, 1, 'prices', 'Price List by type (4) View', '2023-05-06 11:17:49', '2023-05-06 11:17:49', NULL);
INSERT INTO `loghistories` VALUES (638, 1, 'prices', 'Price List by type (1) View', '2023-05-06 11:17:52', '2023-05-06 11:17:52', NULL);
INSERT INTO `loghistories` VALUES (639, 1, 'pricings', 'Pricing Class View', '2023-05-06 11:17:52', '2023-05-06 11:17:52', NULL);
INSERT INTO `loghistories` VALUES (640, 1, 'prices', 'Price List View', '2023-05-06 11:17:55', '2023-05-06 11:17:55', NULL);
INSERT INTO `loghistories` VALUES (641, 1, 'pricings', 'Pricing Class View', '2023-05-06 11:18:00', '2023-05-06 11:18:00', NULL);
INSERT INTO `loghistories` VALUES (642, 1, 'pricetypes', 'Price Type List View', '2023-05-06 11:18:02', '2023-05-06 11:18:02', NULL);
INSERT INTO `loghistories` VALUES (643, 1, 'pricetypes', 'Existing Item View', '2023-05-06 11:18:10', '2023-05-06 11:18:10', NULL);
INSERT INTO `loghistories` VALUES (644, 1, 'prices', 'Price List View', '2023-05-06 11:18:15', '2023-05-06 11:18:15', NULL);
INSERT INTO `loghistories` VALUES (645, 1, 'pricemanages', 'Price management View', '2023-05-06 11:18:26', '2023-05-06 11:18:26', NULL);
INSERT INTO `loghistories` VALUES (646, 1, 'pricings', 'Pricing Class View', '2023-05-06 11:18:28', '2023-05-06 11:18:28', NULL);
INSERT INTO `loghistories` VALUES (647, 1, 'pricetypes', 'Price Type List View', '2023-05-06 11:18:32', '2023-05-06 11:18:32', NULL);
INSERT INTO `loghistories` VALUES (648, 1, 'prices', 'Existing Item Editing Page', '2023-05-06 11:18:55', '2023-05-06 11:18:55', NULL);
INSERT INTO `loghistories` VALUES (649, 1, 'pricecompares', 'Price List by type (1) View', '2023-05-09 10:18:28', '2023-05-09 10:18:28', NULL);
INSERT INTO `loghistories` VALUES (650, 1, 'prices', 'Price List by type (1) View', '2023-05-09 10:47:51', '2023-05-09 10:47:51', NULL);
INSERT INTO `loghistories` VALUES (651, 1, 'prices', 'Existing Item Editing Page', '2023-05-09 10:47:55', '2023-05-09 10:47:55', NULL);
INSERT INTO `loghistories` VALUES (652, 1, 'prices', 'Price List View', '2023-05-09 10:48:15', '2023-05-09 10:48:15', NULL);
INSERT INTO `loghistories` VALUES (653, 1, 'pricetypes', 'Price Type List View', '2023-05-09 10:53:25', '2023-05-09 10:53:25', NULL);
INSERT INTO `loghistories` VALUES (654, 1, 'pricemanages', 'Price management View', '2023-05-09 10:53:28', '2023-05-09 10:53:28', NULL);
INSERT INTO `loghistories` VALUES (655, 1, 'pricecompetitors', 'Price Type List View', '2023-05-09 10:53:33', '2023-05-09 10:53:33', NULL);
INSERT INTO `loghistories` VALUES (656, 1, 'pricings', 'Pricing Class View', '2023-05-09 10:53:41', '2023-05-09 10:53:41', NULL);
INSERT INTO `loghistories` VALUES (657, 1, 'prices', 'Price List View', '2023-05-09 10:58:09', '2023-05-09 10:58:09', NULL);
INSERT INTO `loghistories` VALUES (658, 1, 'prices', 'Price List View', '2023-05-09 10:58:12', '2023-05-09 10:58:12', NULL);
INSERT INTO `loghistories` VALUES (659, 1, 'prices', 'Price List View', '2023-05-09 10:58:20', '2023-05-09 10:58:20', NULL);
INSERT INTO `loghistories` VALUES (660, 1, 'pricecompares', 'Price List by type (1) View', '2023-05-09 10:58:31', '2023-05-09 10:58:31', NULL);
INSERT INTO `loghistories` VALUES (661, 1, 'prices', 'Price List by type (1) View', '2023-05-09 10:58:40', '2023-05-09 10:58:40', NULL);
INSERT INTO `loghistories` VALUES (662, 1, 'pricetypes', 'Price Type List View', '2023-05-09 10:59:39', '2023-05-09 10:59:39', NULL);
INSERT INTO `loghistories` VALUES (663, 1, 'prices', 'Price List View', '2023-05-09 10:59:42', '2023-05-09 10:59:42', NULL);
INSERT INTO `loghistories` VALUES (664, 1, 'pricecompares', 'Price List by type (1) View', '2023-05-09 10:59:46', '2023-05-09 10:59:46', NULL);
INSERT INTO `loghistories` VALUES (665, 1, 'prices', 'Price List by type (1) View', '2023-05-09 10:59:53', '2023-05-09 10:59:53', NULL);
INSERT INTO `loghistories` VALUES (666, 1, 'pricecompares', 'Price List by type (1) View', '2023-05-09 10:59:58', '2023-05-09 10:59:58', NULL);
INSERT INTO `loghistories` VALUES (667, 1, 'pricecompetitors', 'Price Type List View', '2023-05-09 11:00:04', '2023-05-09 11:00:04', NULL);
INSERT INTO `loghistories` VALUES (668, 1, 'pricecompares', 'Price All Competitors by Admin View', '2023-05-09 11:00:07', '2023-05-09 11:00:07', NULL);
INSERT INTO `loghistories` VALUES (669, 1, 'prices', 'Price List View', '2023-05-13 11:04:17', '2023-05-13 11:04:17', NULL);
INSERT INTO `loghistories` VALUES (670, 1, 'prices', 'Price List by type (1) View', '2023-05-13 11:04:20', '2023-05-13 11:04:20', NULL);
INSERT INTO `loghistories` VALUES (671, 1, 'prices', 'Price List by type (3) View', '2023-05-13 11:04:23', '2023-05-13 11:04:23', NULL);
INSERT INTO `loghistories` VALUES (672, 1, 'languages', 'Language List View', '2023-05-13 11:05:07', '2023-05-13 11:05:07', NULL);
INSERT INTO `loghistories` VALUES (673, 1, 'languages', 'Language List View', '2023-05-13 11:16:47', '2023-05-13 11:16:47', NULL);
INSERT INTO `loghistories` VALUES (674, 1, 'prices', 'Price List by type (1) View', '2023-05-13 12:53:16', '2023-05-13 12:53:16', NULL);
INSERT INTO `loghistories` VALUES (675, 1, 'prices', 'Price List by type (3) View', '2023-05-13 12:54:56', '2023-05-13 12:54:56', NULL);
INSERT INTO `loghistories` VALUES (676, 1, 'prices', 'Price List by type (1) View', '2023-05-13 12:54:58', '2023-05-13 12:54:58', NULL);
INSERT INTO `loghistories` VALUES (677, 1, 'prices', 'Price List by type (3) View', '2023-05-13 12:55:10', '2023-05-13 12:55:10', NULL);
INSERT INTO `loghistories` VALUES (678, 1, 'prices', 'Price List by type (1) View', '2023-05-13 12:55:11', '2023-05-13 12:55:11', NULL);
INSERT INTO `loghistories` VALUES (679, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:05:22', '2023-05-13 13:05:22', NULL);
INSERT INTO `loghistories` VALUES (680, 1, 'pricetypes', 'Price Type List View', '2023-05-13 13:06:32', '2023-05-13 13:06:32', NULL);
INSERT INTO `loghistories` VALUES (681, 1, 'pricetypes', 'Price Type List View', '2023-05-13 13:07:10', '2023-05-13 13:07:10', NULL);
INSERT INTO `loghistories` VALUES (682, 1, 'prices', 'Price List View', '2023-05-13 13:07:13', '2023-05-13 13:07:13', NULL);
INSERT INTO `loghistories` VALUES (683, 1, 'pricings', 'Pricing Class View', '2023-05-13 13:07:16', '2023-05-13 13:07:16', NULL);
INSERT INTO `loghistories` VALUES (684, 1, 'pricemanages', 'Price management View', '2023-05-13 13:07:19', '2023-05-13 13:07:19', NULL);
INSERT INTO `loghistories` VALUES (685, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:07:29', '2023-05-13 13:07:29', NULL);
INSERT INTO `loghistories` VALUES (686, 1, 'languages', 'Language List View', '2023-05-13 13:20:26', '2023-05-13 13:20:26', NULL);
INSERT INTO `loghistories` VALUES (687, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:35:28', '2023-05-13 13:35:28', NULL);
INSERT INTO `loghistories` VALUES (688, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:35:38', '2023-05-13 13:35:38', NULL);
INSERT INTO `loghistories` VALUES (689, 1, 'prices', 'Price List by type (3) View', '2023-05-13 13:35:44', '2023-05-13 13:35:44', NULL);
INSERT INTO `loghistories` VALUES (690, 1, 'prices', 'Price List by type (4) View', '2023-05-13 13:35:48', '2023-05-13 13:35:48', NULL);
INSERT INTO `loghistories` VALUES (691, 1, 'prices', 'Price List by type (3) View', '2023-05-13 13:35:56', '2023-05-13 13:35:56', NULL);
INSERT INTO `loghistories` VALUES (692, 1, 'prices', 'Price List by type (6) View', '2023-05-13 13:36:01', '2023-05-13 13:36:01', NULL);
INSERT INTO `loghistories` VALUES (693, 1, 'prices', 'Price List by type (8) View', '2023-05-13 13:36:03', '2023-05-13 13:36:03', NULL);
INSERT INTO `loghistories` VALUES (694, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:36:35', '2023-05-13 13:36:35', NULL);
INSERT INTO `loghistories` VALUES (695, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:36:42', '2023-05-13 13:36:42', NULL);
INSERT INTO `loghistories` VALUES (696, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:36:44', '2023-05-13 13:36:44', NULL);
INSERT INTO `loghistories` VALUES (697, 1, 'prices', 'Price List by type (1) View', '2023-05-13 13:37:30', '2023-05-13 13:37:30', NULL);
INSERT INTO `loghistories` VALUES (698, 1, 'prices', 'Price List by type (3) View', '2023-05-13 13:37:51', '2023-05-13 13:37:51', NULL);
INSERT INTO `loghistories` VALUES (699, 1, 'prices', 'Price List by type (4) View', '2023-05-13 13:37:53', '2023-05-13 13:37:53', NULL);
INSERT INTO `loghistories` VALUES (700, 1, 'prices', 'Price List by type (6) View', '2023-05-13 13:37:58', '2023-05-13 13:37:58', NULL);
INSERT INTO `loghistories` VALUES (701, 1, 'prices', 'Price List by type (8) View', '2023-05-13 13:38:00', '2023-05-13 13:38:00', NULL);
INSERT INTO `loghistories` VALUES (702, 1, 'prices', 'Price List by type (10) View', '2023-05-13 13:38:01', '2023-05-13 13:38:01', NULL);
INSERT INTO `loghistories` VALUES (703, 1, 'prices', 'Price List by type (11) View', '2023-05-13 13:38:03', '2023-05-13 13:38:03', NULL);
INSERT INTO `loghistories` VALUES (704, 1, 'prices', 'Price List by type (12) View', '2023-05-13 13:38:05', '2023-05-13 13:38:05', NULL);
INSERT INTO `loghistories` VALUES (705, 1, 'prices', 'Price List by type (13) View', '2023-05-13 13:38:07', '2023-05-13 13:38:07', NULL);
INSERT INTO `loghistories` VALUES (706, 1, 'prices', 'Price List by type (14) View', '2023-05-13 13:38:09', '2023-05-13 13:38:09', NULL);
INSERT INTO `loghistories` VALUES (707, 1, 'pricecompetitors', 'Price Type List View', '2023-05-13 13:44:05', '2023-05-13 13:44:05', NULL);
INSERT INTO `loghistories` VALUES (708, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-05-13 13:44:07', '2023-05-13 13:44:07', NULL);
INSERT INTO `loghistories` VALUES (709, 1, 'pricings', 'Pricing Class View', '2023-05-13 13:44:41', '2023-05-13 13:44:41', NULL);
INSERT INTO `loghistories` VALUES (710, 1, 'pricings', 'Pricing Class View', '2023-05-13 13:44:44', '2023-05-13 13:44:44', NULL);
INSERT INTO `loghistories` VALUES (711, 1, 'prices', 'Price List View', '2023-05-13 13:45:32', '2023-05-13 13:45:32', NULL);
INSERT INTO `loghistories` VALUES (712, 1, 'pricecompetitors', 'Price Type List View', '2023-05-13 13:45:39', '2023-05-13 13:45:39', NULL);
INSERT INTO `loghistories` VALUES (713, 1, 'pricecompetitors', 'New Item Create Page', '2023-05-13 13:45:43', '2023-05-13 13:45:43', NULL);
INSERT INTO `loghistories` VALUES (714, 1, 'pricecompetitors', 'New Item Saved', '2023-05-13 13:46:44', '2023-05-13 13:46:44', NULL);
INSERT INTO `loghistories` VALUES (715, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-05-13 13:46:54', '2023-05-13 13:46:54', NULL);
INSERT INTO `loghistories` VALUES (716, 1, 'pricecompetitors', 'Price Type List View', '2023-05-13 13:47:37', '2023-05-13 13:47:37', NULL);
INSERT INTO `loghistories` VALUES (717, 1, 'pricings', 'Pricing Class View', '2023-05-13 13:47:53', '2023-05-13 13:47:53', NULL);
INSERT INTO `loghistories` VALUES (718, 1, 'languages', 'Language List View', '2023-05-13 13:50:37', '2023-05-13 13:50:37', NULL);
INSERT INTO `loghistories` VALUES (719, 1, 'languages', 'Language List View', '2023-05-13 13:51:16', '2023-05-13 13:51:16', NULL);
INSERT INTO `loghistories` VALUES (720, 1, 'languages', 'Language Detail View Page', '2023-05-13 13:51:30', '2023-05-13 13:51:30', NULL);
INSERT INTO `loghistories` VALUES (721, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-05-14 18:00:18', '2023-05-14 18:00:18', NULL);
INSERT INTO `loghistories` VALUES (722, 1, 'pricecompetitors', 'Price Type List View', '2023-05-14 18:00:51', '2023-05-14 18:00:51', NULL);
INSERT INTO `loghistories` VALUES (723, 1, 'prices', 'Price List by type (12) View', '2023-05-14 20:00:55', '2023-05-14 20:00:55', NULL);
INSERT INTO `loghistories` VALUES (724, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:06:54', '2023-05-14 20:06:54', NULL);
INSERT INTO `loghistories` VALUES (725, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:07:11', '2023-05-14 20:07:11', NULL);
INSERT INTO `loghistories` VALUES (726, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:07:24', '2023-05-14 20:07:24', NULL);
INSERT INTO `loghistories` VALUES (727, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:07:33', '2023-05-14 20:07:33', NULL);
INSERT INTO `loghistories` VALUES (728, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:08:29', '2023-05-14 20:08:29', NULL);
INSERT INTO `loghistories` VALUES (729, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:08:46', '2023-05-14 20:08:46', NULL);
INSERT INTO `loghistories` VALUES (730, 1, 'prices', 'Price List by type (12) View', '2023-05-14 20:08:51', '2023-05-14 20:08:51', NULL);
INSERT INTO `loghistories` VALUES (731, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:08:54', '2023-05-14 20:08:54', NULL);
INSERT INTO `loghistories` VALUES (732, 1, 'prices', 'Price List by type (1) View', '2023-05-14 20:09:58', '2023-05-14 20:09:58', NULL);
INSERT INTO `loghistories` VALUES (733, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:11:50', '2023-05-14 20:11:50', NULL);
INSERT INTO `loghistories` VALUES (734, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:11:51', '2023-05-14 20:11:51', NULL);
INSERT INTO `loghistories` VALUES (735, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:12:03', '2023-05-14 20:12:03', NULL);
INSERT INTO `loghistories` VALUES (736, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:12:07', '2023-05-14 20:12:07', NULL);
INSERT INTO `loghistories` VALUES (737, 1, 'prices', 'Price List by type (1) View', '2023-05-14 20:12:36', '2023-05-14 20:12:36', NULL);
INSERT INTO `loghistories` VALUES (738, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:14:34', '2023-05-14 20:14:34', NULL);
INSERT INTO `loghistories` VALUES (739, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:14:38', '2023-05-14 20:14:38', NULL);
INSERT INTO `loghistories` VALUES (740, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:14:50', '2023-05-14 20:14:50', NULL);
INSERT INTO `loghistories` VALUES (741, 1, 'prices', 'Price List View', '2023-05-14 20:15:09', '2023-05-14 20:15:09', NULL);
INSERT INTO `loghistories` VALUES (742, 1, 'prices', 'Price List View', '2023-05-14 20:15:17', '2023-05-14 20:15:17', NULL);
INSERT INTO `loghistories` VALUES (743, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:15:27', '2023-05-14 20:15:27', NULL);
INSERT INTO `loghistories` VALUES (744, 1, 'prices', 'Price List by type (1) View', '2023-05-14 20:15:29', '2023-05-14 20:15:29', NULL);
INSERT INTO `loghistories` VALUES (745, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:19:48', '2023-05-14 20:19:48', NULL);
INSERT INTO `loghistories` VALUES (746, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:19:52', '2023-05-14 20:19:52', NULL);
INSERT INTO `loghistories` VALUES (747, 1, 'prices', 'Excel Import Showing Page', '2023-05-14 20:20:14', '2023-05-14 20:20:14', NULL);
INSERT INTO `loghistories` VALUES (748, 1, 'prices', 'Price List by type (12) View', '2023-05-14 20:20:20', '2023-05-14 20:20:20', NULL);
INSERT INTO `loghistories` VALUES (749, 1, 'prices', 'Price List by type (10) View', '2023-05-14 20:20:22', '2023-05-14 20:20:22', NULL);
INSERT INTO `loghistories` VALUES (750, 1, 'prices', 'New Item Creating Page', '2023-05-14 20:20:28', '2023-05-14 20:20:28', NULL);
INSERT INTO `loghistories` VALUES (751, 1, 'prices', 'New Item Creating Page', '2023-05-14 20:21:17', '2023-05-14 20:21:17', NULL);
INSERT INTO `loghistories` VALUES (752, 1, 'pricecompetitors', 'Price Type List View', '2023-05-14 20:36:51', '2023-05-14 20:36:51', NULL);
INSERT INTO `loghistories` VALUES (753, 14, 'prices', 'Price List by type (1) View', '2023-05-15 13:37:42', '2023-05-15 13:37:42', NULL);
INSERT INTO `loghistories` VALUES (754, 14, 'prices', 'Price List by type (1) View', '2023-05-15 15:37:05', '2023-05-15 15:37:05', NULL);
INSERT INTO `loghistories` VALUES (755, 14, 'pricetypes', 'Price Type List View', '2023-05-15 15:47:36', '2023-05-15 15:47:36', NULL);
INSERT INTO `loghistories` VALUES (756, 14, 'prices', 'Price List View', '2023-05-15 15:47:39', '2023-05-15 15:47:39', NULL);
INSERT INTO `loghistories` VALUES (757, 14, 'prices', 'Price List by type (1) View', '2023-05-15 15:47:42', '2023-05-15 15:47:42', NULL);
INSERT INTO `loghistories` VALUES (758, 14, 'prices', 'Price List by type (1) View', '2023-05-15 15:47:44', '2023-05-15 15:47:44', NULL);
INSERT INTO `loghistories` VALUES (759, 14, 'prices', 'Price List by type (1) View', '2023-05-15 15:47:48', '2023-05-15 15:47:48', NULL);
INSERT INTO `loghistories` VALUES (760, 14, 'languages', 'Language List View', '2023-05-15 15:52:05', '2023-05-15 15:52:05', NULL);
INSERT INTO `loghistories` VALUES (761, 14, 'pricecompares', 'Price All Competitors by tech View', '2023-05-15 15:59:54', '2023-05-15 15:59:54', NULL);
INSERT INTO `loghistories` VALUES (762, 14, 'pricecompetitors', 'Price Type List View', '2023-05-15 15:59:57', '2023-05-15 15:59:57', NULL);
INSERT INTO `loghistories` VALUES (763, 14, 'pricetypes', 'Price Type List View', '2023-05-15 16:00:05', '2023-05-15 16:00:05', NULL);
INSERT INTO `loghistories` VALUES (764, 14, 'prices', 'Price List View', '2023-05-15 16:00:08', '2023-05-15 16:00:08', NULL);
INSERT INTO `loghistories` VALUES (765, 14, 'pricings', 'Pricing Class View', '2023-05-15 16:00:10', '2023-05-15 16:00:10', NULL);
INSERT INTO `loghistories` VALUES (766, 14, 'pricemanages', 'Price management View', '2023-05-15 16:00:14', '2023-05-15 16:00:14', NULL);
INSERT INTO `loghistories` VALUES (767, 14, 'prices', 'Price List by type (1) View', '2023-05-15 16:00:19', '2023-05-15 16:00:19', NULL);
INSERT INTO `loghistories` VALUES (768, 14, 'prices', 'Price List by type (3) View', '2023-05-15 16:00:21', '2023-05-15 16:00:21', NULL);
INSERT INTO `loghistories` VALUES (769, 14, 'prices', 'Price List by type (4) View', '2023-05-15 16:00:23', '2023-05-15 16:00:23', NULL);
INSERT INTO `loghistories` VALUES (770, 14, 'prices', 'Price List by type (6) View', '2023-05-15 16:00:27', '2023-05-15 16:00:27', NULL);
INSERT INTO `loghistories` VALUES (771, 14, 'prices', 'Price List by type (13) View', '2023-05-15 16:00:35', '2023-05-15 16:00:35', NULL);
INSERT INTO `loghistories` VALUES (772, 14, 'prices', 'Price List by type (14) View', '2023-05-15 16:00:38', '2023-05-15 16:00:38', NULL);
INSERT INTO `loghistories` VALUES (773, 14, 'prices', 'Price List by type (11) View', '2023-05-15 16:00:40', '2023-05-15 16:00:40', NULL);
INSERT INTO `loghistories` VALUES (774, 14, 'prices', 'Price List by type (12) View', '2023-05-15 16:00:41', '2023-05-15 16:00:41', NULL);
INSERT INTO `loghistories` VALUES (775, 14, 'prices', 'Price List by type (1) View', '2023-05-15 16:00:44', '2023-05-15 16:00:44', NULL);
INSERT INTO `loghistories` VALUES (776, 1, 'pricecompetitors', 'Price Type List View', '2023-05-15 16:01:49', '2023-05-15 16:01:49', NULL);
INSERT INTO `loghistories` VALUES (777, 1, 'prices', 'Price List by type (1) View', '2023-05-17 12:46:50', '2023-05-17 12:46:50', NULL);
INSERT INTO `loghistories` VALUES (778, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:33:06', '2023-05-17 17:33:06', NULL);
INSERT INTO `loghistories` VALUES (779, 1, 'prices', 'Price List by type (3) View', '2023-05-17 17:33:13', '2023-05-17 17:33:13', NULL);
INSERT INTO `loghistories` VALUES (780, 1, 'prices', 'Excel Import Showing Page', '2023-05-17 17:33:18', '2023-05-17 17:33:18', NULL);
INSERT INTO `loghistories` VALUES (781, 1, 'prices', 'Price List View', '2023-05-17 17:34:37', '2023-05-17 17:34:37', NULL);
INSERT INTO `loghistories` VALUES (782, 1, 'prices', 'Price List by type (10) View', '2023-05-17 17:34:59', '2023-05-17 17:34:59', NULL);
INSERT INTO `loghistories` VALUES (783, 14, 'pricetypes', 'Price Type List View', '2023-05-17 17:35:51', '2023-05-17 17:35:51', NULL);
INSERT INTO `loghistories` VALUES (784, 14, 'pricetypes', 'Price Type List View', '2023-05-17 17:35:54', '2023-05-17 17:35:54', NULL);
INSERT INTO `loghistories` VALUES (785, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:35:56', '2023-05-17 17:35:56', NULL);
INSERT INTO `loghistories` VALUES (786, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:36:01', '2023-05-17 17:36:01', NULL);
INSERT INTO `loghistories` VALUES (787, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:36:06', '2023-05-17 17:36:06', NULL);
INSERT INTO `loghistories` VALUES (788, 14, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:36:16', '2023-05-17 17:36:16', NULL);
INSERT INTO `loghistories` VALUES (789, 14, 'pricetypes', 'Price Type List View', '2023-05-17 17:36:26', '2023-05-17 17:36:26', NULL);
INSERT INTO `loghistories` VALUES (790, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:36:26', '2023-05-17 17:36:26', NULL);
INSERT INTO `loghistories` VALUES (791, 14, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:36:31', '2023-05-17 17:36:31', NULL);
INSERT INTO `loghistories` VALUES (792, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:36:33', '2023-05-17 17:36:33', NULL);
INSERT INTO `loghistories` VALUES (793, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:36:44', '2023-05-17 17:36:44', NULL);
INSERT INTO `loghistories` VALUES (794, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:36:49', '2023-05-17 17:36:49', NULL);
INSERT INTO `loghistories` VALUES (795, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:36:53', '2023-05-17 17:36:53', NULL);
INSERT INTO `loghistories` VALUES (796, 14, 'pricetypes', 'Price Type List View', '2023-05-17 17:36:56', '2023-05-17 17:36:56', NULL);
INSERT INTO `loghistories` VALUES (797, 1, 'prices', 'Price List View', '2023-05-17 17:37:16', '2023-05-17 17:37:16', NULL);
INSERT INTO `loghistories` VALUES (798, 14, 'prices', 'Price List View', '2023-05-17 17:37:20', '2023-05-17 17:37:20', NULL);
INSERT INTO `loghistories` VALUES (799, 14, 'pricings', 'Pricing Class View', '2023-05-17 17:37:40', '2023-05-17 17:37:40', NULL);
INSERT INTO `loghistories` VALUES (800, 14, 'prices', 'Price List by type (1) View', '2023-05-17 17:37:49', '2023-05-17 17:37:49', NULL);
INSERT INTO `loghistories` VALUES (801, 1, 'prices', 'Price List by type (3) View', '2023-05-17 17:37:55', '2023-05-17 17:37:55', NULL);
INSERT INTO `loghistories` VALUES (802, 14, 'prices', 'Price List View', '2023-05-17 17:38:00', '2023-05-17 17:38:00', NULL);
INSERT INTO `loghistories` VALUES (803, 1, 'prices', 'Price List by type (4) View', '2023-05-17 17:38:15', '2023-05-17 17:38:15', NULL);
INSERT INTO `loghistories` VALUES (804, 1, 'prices', 'Price List by type (4) View', '2023-05-17 17:38:26', '2023-05-17 17:38:26', NULL);
INSERT INTO `loghistories` VALUES (805, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:38:48', '2023-05-17 17:38:48', NULL);
INSERT INTO `loghistories` VALUES (806, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:38:54', '2023-05-17 17:38:54', NULL);
INSERT INTO `loghistories` VALUES (807, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:38:59', '2023-05-17 17:38:59', NULL);
INSERT INTO `loghistories` VALUES (808, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:40:54', '2023-05-17 17:40:54', NULL);
INSERT INTO `loghistories` VALUES (809, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:40:57', '2023-05-17 17:40:57', NULL);
INSERT INTO `loghistories` VALUES (810, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:42:57', '2023-05-17 17:42:57', NULL);
INSERT INTO `loghistories` VALUES (811, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:47:45', '2023-05-17 17:47:45', NULL);
INSERT INTO `loghistories` VALUES (812, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:47:49', '2023-05-17 17:47:49', NULL);
INSERT INTO `loghistories` VALUES (813, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:47:54', '2023-05-17 17:47:54', NULL);
INSERT INTO `loghistories` VALUES (814, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:47:56', '2023-05-17 17:47:56', NULL);
INSERT INTO `loghistories` VALUES (815, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:48:01', '2023-05-17 17:48:01', NULL);
INSERT INTO `loghistories` VALUES (816, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:50:36', '2023-05-17 17:50:36', NULL);
INSERT INTO `loghistories` VALUES (817, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:50:38', '2023-05-17 17:50:38', NULL);
INSERT INTO `loghistories` VALUES (818, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-17 17:50:44', '2023-05-17 17:50:44', NULL);
INSERT INTO `loghistories` VALUES (819, 1, 'pricetypes', 'Existing Item Updated', '2023-05-17 17:50:51', '2023-05-17 17:50:51', NULL);
INSERT INTO `loghistories` VALUES (820, 1, 'pricetypes', 'Price Type List View', '2023-05-17 17:50:54', '2023-05-17 17:50:54', NULL);
INSERT INTO `loghistories` VALUES (821, 1, 'prices', 'Price List by type (1) View', '2023-05-17 20:14:02', '2023-05-17 20:14:02', NULL);
INSERT INTO `loghistories` VALUES (822, 1, 'prices', 'Price List by type (3) View', '2023-05-17 20:14:12', '2023-05-17 20:14:12', NULL);
INSERT INTO `loghistories` VALUES (823, 1, 'prices', 'Price List by type (4) View', '2023-05-17 20:14:15', '2023-05-17 20:14:15', NULL);
INSERT INTO `loghistories` VALUES (824, 1, 'prices', 'Price List by type (6) View', '2023-05-17 20:14:22', '2023-05-17 20:14:22', NULL);
INSERT INTO `loghistories` VALUES (825, 1, 'prices', 'Price List by type (8) View', '2023-05-17 20:14:24', '2023-05-17 20:14:24', NULL);
INSERT INTO `loghistories` VALUES (826, 1, 'prices', 'Price List by type (13) View', '2023-05-17 20:14:27', '2023-05-17 20:14:27', NULL);
INSERT INTO `loghistories` VALUES (827, 1, 'prices', 'Price List by type (12) View', '2023-05-17 20:14:30', '2023-05-17 20:14:30', NULL);
INSERT INTO `loghistories` VALUES (828, 1, 'prices', 'Price List by type (13) View', '2023-05-17 20:14:36', '2023-05-17 20:14:36', NULL);
INSERT INTO `loghistories` VALUES (829, 1, 'prices', 'Price List View', '2023-05-17 20:14:46', '2023-05-17 20:14:46', NULL);
INSERT INTO `loghistories` VALUES (830, 14, 'languages', 'Language List View', '2023-05-18 11:49:10', '2023-05-18 11:49:10', NULL);
INSERT INTO `loghistories` VALUES (831, 15, 'pricemanages', 'Price management View', '2023-05-18 11:51:18', '2023-05-18 11:51:18', NULL);
INSERT INTO `loghistories` VALUES (832, 15, 'prices', 'Price List by type (1) View', '2023-05-18 11:51:22', '2023-05-18 11:51:22', NULL);
INSERT INTO `loghistories` VALUES (833, 15, 'prices', 'Price List by type (3) View', '2023-05-18 11:51:27', '2023-05-18 11:51:27', NULL);
INSERT INTO `loghistories` VALUES (834, 15, 'prices', 'Price List by type (1) View', '2023-05-18 11:51:29', '2023-05-18 11:51:29', NULL);
INSERT INTO `loghistories` VALUES (835, 15, 'pricemanages', 'Price management View', '2023-05-18 11:51:32', '2023-05-18 11:51:32', NULL);
INSERT INTO `loghistories` VALUES (836, 15, 'prices', 'Price List View', '2023-05-18 11:51:36', '2023-05-18 11:51:36', NULL);
INSERT INTO `loghistories` VALUES (837, 15, 'pricecompetitors', 'Price Type List View', '2023-05-18 11:51:41', '2023-05-18 11:51:41', NULL);
INSERT INTO `loghistories` VALUES (838, 15, 'pricecompares', 'Price All Competitors by Test user View', '2023-05-18 11:51:48', '2023-05-18 11:51:48', NULL);
INSERT INTO `loghistories` VALUES (839, 14, 'pricemanages', 'Price management View', '2023-05-18 12:09:04', '2023-05-18 12:09:04', NULL);
INSERT INTO `loghistories` VALUES (840, 1, 'prices', 'Price List by type (1) View', '2023-05-18 15:53:35', '2023-05-18 15:53:35', NULL);
INSERT INTO `loghistories` VALUES (841, 1, 'prices', 'Price List by type (3) View', '2023-05-18 15:53:46', '2023-05-18 15:53:46', NULL);
INSERT INTO `loghistories` VALUES (842, 1, 'prices', 'Price List by type (10) View', '2023-05-18 15:53:55', '2023-05-18 15:53:55', NULL);
INSERT INTO `loghistories` VALUES (843, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:53:56', '2023-05-18 15:53:56', NULL);
INSERT INTO `loghistories` VALUES (844, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:54:17', '2023-05-18 15:54:17', NULL);
INSERT INTO `loghistories` VALUES (845, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:54:18', '2023-05-18 15:54:18', NULL);
INSERT INTO `loghistories` VALUES (846, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:54:21', '2023-05-18 15:54:21', NULL);
INSERT INTO `loghistories` VALUES (847, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:54:23', '2023-05-18 15:54:23', NULL);
INSERT INTO `loghistories` VALUES (848, 1, 'prices', 'Price List by type (10) View', '2023-05-18 15:54:28', '2023-05-18 15:54:28', NULL);
INSERT INTO `loghistories` VALUES (849, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:54:35', '2023-05-18 15:54:35', NULL);
INSERT INTO `loghistories` VALUES (850, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:55:19', '2023-05-18 15:55:19', NULL);
INSERT INTO `loghistories` VALUES (851, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 15:55:20', '2023-05-18 15:55:20', NULL);
INSERT INTO `loghistories` VALUES (852, 1, 'prices', 'Price List by type (10) View', '2023-05-18 15:55:25', '2023-05-18 15:55:25', NULL);
INSERT INTO `loghistories` VALUES (853, 14, 'languages', 'Language List View', '2023-05-18 18:48:41', '2023-05-18 18:48:41', NULL);
INSERT INTO `loghistories` VALUES (854, 1, 'pricetypes', 'Price Type List View', '2023-05-18 18:56:29', '2023-05-18 18:56:29', NULL);
INSERT INTO `loghistories` VALUES (855, 1, 'prices', 'Price List by type (10) View', '2023-05-18 19:24:22', '2023-05-18 19:24:22', NULL);
INSERT INTO `loghistories` VALUES (856, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:24:25', '2023-05-18 19:24:25', NULL);
INSERT INTO `loghistories` VALUES (857, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:24:36', '2023-05-18 19:24:36', NULL);
INSERT INTO `loghistories` VALUES (858, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:25:01', '2023-05-18 19:25:01', NULL);
INSERT INTO `loghistories` VALUES (859, 1, 'prices', 'Price List by type (10) View', '2023-05-18 19:25:18', '2023-05-18 19:25:18', NULL);
INSERT INTO `loghistories` VALUES (860, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:25:22', '2023-05-18 19:25:22', NULL);
INSERT INTO `loghistories` VALUES (861, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:26:03', '2023-05-18 19:26:03', NULL);
INSERT INTO `loghistories` VALUES (862, 1, 'prices', 'Price List by type (10) View', '2023-05-18 19:26:09', '2023-05-18 19:26:09', NULL);
INSERT INTO `loghistories` VALUES (863, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:26:26', '2023-05-18 19:26:26', NULL);
INSERT INTO `loghistories` VALUES (864, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:26:35', '2023-05-18 19:26:35', NULL);
INSERT INTO `loghistories` VALUES (865, 1, 'prices', 'Price List by type (10) View', '2023-05-18 19:26:40', '2023-05-18 19:26:40', NULL);
INSERT INTO `loghistories` VALUES (866, 1, 'prices', 'Excel Import Showing Page', '2023-05-18 19:28:39', '2023-05-18 19:28:39', NULL);
INSERT INTO `loghistories` VALUES (867, 15, 'prices', 'Price List by type (1) View', '2023-05-18 19:29:54', '2023-05-18 19:29:54', NULL);
INSERT INTO `loghistories` VALUES (868, 15, 'prices', 'Price List by type (1) View', '2023-05-18 19:54:27', '2023-05-18 19:54:27', NULL);
INSERT INTO `loghistories` VALUES (869, 14, 'prices', 'Price List by type (1) View', '2023-05-18 19:55:29', '2023-05-18 19:55:29', NULL);
INSERT INTO `loghistories` VALUES (870, 14, 'pricetypes', 'Price Type List View', '2023-05-18 19:55:42', '2023-05-18 19:55:42', NULL);
INSERT INTO `loghistories` VALUES (871, 14, 'prices', 'Price List by type (1) View', '2023-05-19 12:16:50', '2023-05-19 12:16:50', NULL);
INSERT INTO `loghistories` VALUES (872, 14, 'prices', 'Excel Import Showing Page', '2023-05-19 12:16:59', '2023-05-19 12:16:59', NULL);
INSERT INTO `loghistories` VALUES (873, 15, 'prices', 'Price List by type (1) View', '2023-05-19 12:26:27', '2023-05-19 12:26:27', NULL);
INSERT INTO `loghistories` VALUES (874, 15, 'prices', 'Price List by type (3) View', '2023-05-19 12:26:34', '2023-05-19 12:26:34', NULL);
INSERT INTO `loghistories` VALUES (875, 15, 'prices', 'Price List by type (4) View', '2023-05-19 12:26:36', '2023-05-19 12:26:36', NULL);
INSERT INTO `loghistories` VALUES (876, 15, 'prices', 'Price List by type (6) View', '2023-05-19 12:26:39', '2023-05-19 12:26:39', NULL);
INSERT INTO `loghistories` VALUES (877, 15, 'prices', 'Price List by type (4) View', '2023-05-19 12:26:41', '2023-05-19 12:26:41', NULL);
INSERT INTO `loghistories` VALUES (878, 15, 'prices', 'Price List by type (6) View', '2023-05-19 12:27:16', '2023-05-19 12:27:16', NULL);
INSERT INTO `loghistories` VALUES (879, 14, 'pricecompetitors', 'Price Type List View', '2023-05-19 12:27:37', '2023-05-19 12:27:37', NULL);
INSERT INTO `loghistories` VALUES (880, 14, 'pricings', 'Pricing Class View', '2023-05-19 12:27:45', '2023-05-19 12:27:45', NULL);
INSERT INTO `loghistories` VALUES (881, 14, 'pricings', 'Pricing Class View', '2023-05-19 12:29:57', '2023-05-19 12:29:57', NULL);
INSERT INTO `loghistories` VALUES (882, 14, 'pricings', 'Pricing Class View', '2023-05-19 12:30:09', '2023-05-19 12:30:09', NULL);
INSERT INTO `loghistories` VALUES (883, 14, 'prices', 'Price List by type (1) View', '2023-05-19 12:39:09', '2023-05-19 12:39:09', NULL);
INSERT INTO `loghistories` VALUES (884, 14, 'prices', 'Price List by type (10) View', '2023-05-19 14:53:32', '2023-05-19 14:53:32', NULL);
INSERT INTO `loghistories` VALUES (885, 14, 'prices', 'Price List by type (10) View', '2023-05-19 14:54:41', '2023-05-19 14:54:41', NULL);
INSERT INTO `loghistories` VALUES (886, 14, 'prices', 'Excel Import Showing Page', '2023-05-19 14:54:44', '2023-05-19 14:54:44', NULL);
INSERT INTO `loghistories` VALUES (887, 14, 'prices', 'Excel Import Showing Page', '2023-05-19 14:55:06', '2023-05-19 14:55:06', NULL);
INSERT INTO `loghistories` VALUES (888, 14, 'prices', 'Price List by type (10) View', '2023-05-19 14:55:14', '2023-05-19 14:55:14', NULL);
INSERT INTO `loghistories` VALUES (889, 14, 'prices', 'Existing Item Editing Page', '2023-05-19 14:57:27', '2023-05-19 14:57:27', NULL);
INSERT INTO `loghistories` VALUES (890, 14, 'prices', 'Price List View', '2023-05-19 15:04:22', '2023-05-19 15:04:22', NULL);
INSERT INTO `loghistories` VALUES (891, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:04:27', '2023-05-19 15:04:27', NULL);
INSERT INTO `loghistories` VALUES (892, 14, 'prices', 'Price List View', '2023-05-19 15:04:38', '2023-05-19 15:04:38', NULL);
INSERT INTO `loghistories` VALUES (893, 14, 'pricings', 'Pricing Class View', '2023-05-19 15:04:52', '2023-05-19 15:04:52', NULL);
INSERT INTO `loghistories` VALUES (894, 14, 'prices', 'Price List View', '2023-05-19 15:04:56', '2023-05-19 15:04:56', NULL);
INSERT INTO `loghistories` VALUES (895, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:05:08', '2023-05-19 15:05:08', NULL);
INSERT INTO `loghistories` VALUES (896, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:05:21', '2023-05-19 15:05:21', NULL);
INSERT INTO `loghistories` VALUES (897, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:05:22', '2023-05-19 15:05:22', NULL);
INSERT INTO `loghistories` VALUES (898, 14, 'prices', 'Price List View', '2023-05-19 15:05:30', '2023-05-19 15:05:30', NULL);
INSERT INTO `loghistories` VALUES (899, 14, 'pricetypes', 'Price Type List View', '2023-05-19 15:05:54', '2023-05-19 15:05:54', NULL);
INSERT INTO `loghistories` VALUES (900, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:05:58', '2023-05-19 15:05:58', NULL);
INSERT INTO `loghistories` VALUES (901, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:06:04', '2023-05-19 15:06:04', NULL);
INSERT INTO `loghistories` VALUES (902, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:06:05', '2023-05-19 15:06:05', NULL);
INSERT INTO `loghistories` VALUES (903, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:06:14', '2023-05-19 15:06:14', NULL);
INSERT INTO `loghistories` VALUES (904, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:06:15', '2023-05-19 15:06:15', NULL);
INSERT INTO `loghistories` VALUES (905, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:06:31', '2023-05-19 15:06:31', NULL);
INSERT INTO `loghistories` VALUES (906, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:06:36', '2023-05-19 15:06:36', NULL);
INSERT INTO `loghistories` VALUES (907, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:06:37', '2023-05-19 15:06:37', NULL);
INSERT INTO `loghistories` VALUES (908, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:06:41', '2023-05-19 15:06:41', NULL);
INSERT INTO `loghistories` VALUES (909, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:06:42', '2023-05-19 15:06:42', NULL);
INSERT INTO `loghistories` VALUES (910, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:06:51', '2023-05-19 15:06:51', NULL);
INSERT INTO `loghistories` VALUES (911, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:06:52', '2023-05-19 15:06:52', NULL);
INSERT INTO `loghistories` VALUES (912, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:06:58', '2023-05-19 15:06:58', NULL);
INSERT INTO `loghistories` VALUES (913, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:07:00', '2023-05-19 15:07:00', NULL);
INSERT INTO `loghistories` VALUES (914, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:07:05', '2023-05-19 15:07:05', NULL);
INSERT INTO `loghistories` VALUES (915, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:07:06', '2023-05-19 15:07:06', NULL);
INSERT INTO `loghistories` VALUES (916, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:07:09', '2023-05-19 15:07:09', NULL);
INSERT INTO `loghistories` VALUES (917, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:07:10', '2023-05-19 15:07:10', NULL);
INSERT INTO `loghistories` VALUES (918, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:07:14', '2023-05-19 15:07:14', NULL);
INSERT INTO `loghistories` VALUES (919, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:07:15', '2023-05-19 15:07:15', NULL);
INSERT INTO `loghistories` VALUES (920, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:07:18', '2023-05-19 15:07:18', NULL);
INSERT INTO `loghistories` VALUES (921, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:07:19', '2023-05-19 15:07:19', NULL);
INSERT INTO `loghistories` VALUES (922, 14, 'prices', 'Existing Item Deleted', '2023-05-19 15:07:22', '2023-05-19 15:07:22', NULL);
INSERT INTO `loghistories` VALUES (923, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:07:23', '2023-05-19 15:07:23', NULL);
INSERT INTO `loghistories` VALUES (924, 14, 'prices', 'Excel Import Showing Page', '2023-05-19 15:07:29', '2023-05-19 15:07:29', NULL);
INSERT INTO `loghistories` VALUES (925, 14, 'prices', 'Excel Import Showing Page', '2023-05-19 15:07:53', '2023-05-19 15:07:53', NULL);
INSERT INTO `loghistories` VALUES (926, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:07:57', '2023-05-19 15:07:57', NULL);
INSERT INTO `loghistories` VALUES (927, 14, 'prices', 'Price List by type (1) View', '2023-05-19 15:09:52', '2023-05-19 15:09:52', NULL);
INSERT INTO `loghistories` VALUES (928, 14, 'prices', 'Price List by type (10) View', '2023-05-19 15:09:57', '2023-05-19 15:09:57', NULL);
INSERT INTO `loghistories` VALUES (929, 14, 'prices', 'Price List by type (11) View', '2023-05-19 16:18:39', '2023-05-19 16:18:39', NULL);
INSERT INTO `loghistories` VALUES (930, 14, 'prices', 'Price List by type (11) View', '2023-05-19 16:18:44', '2023-05-19 16:18:44', NULL);
INSERT INTO `loghistories` VALUES (931, 14, 'prices', 'Price List by type (3) View', '2023-05-19 16:18:47', '2023-05-19 16:18:47', NULL);
INSERT INTO `loghistories` VALUES (932, 15, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-19 16:19:39', '2023-05-19 16:19:39', NULL);
INSERT INTO `loghistories` VALUES (933, 15, 'prices', 'Price List by type (1) View', '2023-05-19 16:25:42', '2023-05-19 16:25:42', NULL);
INSERT INTO `loghistories` VALUES (934, 15, 'prices', 'Price List by type (3) View', '2023-05-19 16:25:50', '2023-05-19 16:25:50', NULL);
INSERT INTO `loghistories` VALUES (935, 15, 'prices', 'Price List by type (4) View', '2023-05-19 16:25:55', '2023-05-19 16:25:55', NULL);
INSERT INTO `loghistories` VALUES (936, 15, 'prices', 'Price List by type (6) View', '2023-05-19 16:25:59', '2023-05-19 16:25:59', NULL);
INSERT INTO `loghistories` VALUES (937, 15, 'prices', 'Price List by type (8) View', '2023-05-19 16:26:03', '2023-05-19 16:26:03', NULL);
INSERT INTO `loghistories` VALUES (938, 15, 'prices', 'Price List by type (10) View', '2023-05-19 16:26:06', '2023-05-19 16:26:06', NULL);
INSERT INTO `loghistories` VALUES (939, 15, 'prices', 'Price List by type (11) View', '2023-05-19 16:26:12', '2023-05-19 16:26:12', NULL);
INSERT INTO `loghistories` VALUES (940, 15, 'prices', 'Price List by type (12) View', '2023-05-19 16:26:15', '2023-05-19 16:26:15', NULL);
INSERT INTO `loghistories` VALUES (941, 15, 'prices', 'Price List by type (13) View', '2023-05-19 16:26:18', '2023-05-19 16:26:18', NULL);
INSERT INTO `loghistories` VALUES (942, 1, 'languages', 'Language List View', '2023-05-19 16:28:49', '2023-05-19 16:28:49', NULL);
INSERT INTO `loghistories` VALUES (943, 1, 'languages', 'Language List View', '2023-05-19 16:28:53', '2023-05-19 16:28:53', NULL);
INSERT INTO `loghistories` VALUES (944, 1, 'languages', 'Language List View', '2023-05-19 16:28:58', '2023-05-19 16:28:58', NULL);
INSERT INTO `loghistories` VALUES (945, 1, 'languages', 'Language List View', '2023-05-19 16:29:14', '2023-05-19 16:29:14', NULL);
INSERT INTO `loghistories` VALUES (946, 1, 'pricecompetitors', 'Price Type List View', '2023-05-19 16:29:20', '2023-05-19 16:29:20', NULL);
INSERT INTO `loghistories` VALUES (947, 1, 'languages', 'Language List View', '2023-05-19 16:29:32', '2023-05-19 16:29:32', NULL);
INSERT INTO `loghistories` VALUES (948, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:29:48', '2023-05-19 16:29:48', NULL);
INSERT INTO `loghistories` VALUES (949, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:30:09', '2023-05-19 16:30:09', NULL);
INSERT INTO `loghistories` VALUES (950, 1, 'languages', 'New Language Key Updated', '2023-05-19 16:31:02', '2023-05-19 16:31:02', NULL);
INSERT INTO `loghistories` VALUES (951, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:31:04', '2023-05-19 16:31:04', NULL);
INSERT INTO `loghistories` VALUES (952, 1, 'languages', 'Language List View', '2023-05-19 16:31:24', '2023-05-19 16:31:24', NULL);
INSERT INTO `loghistories` VALUES (953, 1, 'languages', 'Language List View', '2023-05-19 16:31:26', '2023-05-19 16:31:26', NULL);
INSERT INTO `loghistories` VALUES (954, 1, 'languages', 'Existing Item deleted', '2023-05-19 16:31:40', '2023-05-19 16:31:40', NULL);
INSERT INTO `loghistories` VALUES (955, 1, 'languages', 'Language List View', '2023-05-19 16:31:42', '2023-05-19 16:31:42', NULL);
INSERT INTO `loghistories` VALUES (956, 1, 'languages', 'New Language Create Page', '2023-05-19 16:31:46', '2023-05-19 16:31:46', NULL);
INSERT INTO `loghistories` VALUES (957, 14, 'prices', 'Price List by type (10) View', '2023-05-19 16:31:46', '2023-05-19 16:31:46', NULL);
INSERT INTO `loghistories` VALUES (958, 14, 'prices', 'Price List by type (1) View', '2023-05-19 16:32:10', '2023-05-19 16:32:10', NULL);
INSERT INTO `loghistories` VALUES (959, 14, 'prices', 'Price List by type (1) View', '2023-05-19 16:32:10', '2023-05-19 16:32:10', NULL);
INSERT INTO `loghistories` VALUES (960, 14, 'pricetypes', 'Price Type List View', '2023-05-19 16:32:24', '2023-05-19 16:32:24', NULL);
INSERT INTO `loghistories` VALUES (961, 1, 'languages', 'New Language Create Page', '2023-05-19 16:32:28', '2023-05-19 16:32:28', NULL);
INSERT INTO `loghistories` VALUES (962, 14, 'prices', 'Price List View', '2023-05-19 16:32:30', '2023-05-19 16:32:30', NULL);
INSERT INTO `loghistories` VALUES (963, 14, 'pricemanages', 'Price management View', '2023-05-19 16:32:46', '2023-05-19 16:32:46', NULL);
INSERT INTO `loghistories` VALUES (964, 1, 'languages', 'New Item Saved', '2023-05-19 16:32:48', '2023-05-19 16:32:48', NULL);
INSERT INTO `loghistories` VALUES (965, 1, 'languages', 'Language List View', '2023-05-19 16:33:06', '2023-05-19 16:33:06', NULL);
INSERT INTO `loghistories` VALUES (966, 1, 'languages', 'New Language Create Page', '2023-05-19 16:33:20', '2023-05-19 16:33:20', NULL);
INSERT INTO `loghistories` VALUES (967, 1, 'languages', 'New Item Saved', '2023-05-19 16:34:01', '2023-05-19 16:34:01', NULL);
INSERT INTO `loghistories` VALUES (968, 1, 'languages', 'Language List View', '2023-05-19 16:34:09', '2023-05-19 16:34:09', NULL);
INSERT INTO `loghistories` VALUES (969, 1, 'languages', 'New Language Create Page', '2023-05-19 16:34:37', '2023-05-19 16:34:37', NULL);
INSERT INTO `loghistories` VALUES (970, 1, 'languages', 'New Item Saved', '2023-05-19 16:34:49', '2023-05-19 16:34:49', NULL);
INSERT INTO `loghistories` VALUES (971, 1, 'languages', 'Language List View', '2023-05-19 16:34:54', '2023-05-19 16:34:54', NULL);
INSERT INTO `loghistories` VALUES (972, 1, 'languages', 'New Language Create Page', '2023-05-19 16:35:20', '2023-05-19 16:35:20', NULL);
INSERT INTO `loghistories` VALUES (973, 1, 'languages', 'New Item Saved', '2023-05-19 16:35:29', '2023-05-19 16:35:29', NULL);
INSERT INTO `loghistories` VALUES (974, 1, 'languages', 'Language List View', '2023-05-19 16:35:39', '2023-05-19 16:35:39', NULL);
INSERT INTO `loghistories` VALUES (975, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:35:59', '2023-05-19 16:35:59', NULL);
INSERT INTO `loghistories` VALUES (976, 1, 'languages', 'New Language Key Updated', '2023-05-19 16:36:39', '2023-05-19 16:36:39', NULL);
INSERT INTO `loghistories` VALUES (977, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:36:41', '2023-05-19 16:36:41', NULL);
INSERT INTO `loghistories` VALUES (978, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:37:32', '2023-05-19 16:37:32', NULL);
INSERT INTO `loghistories` VALUES (979, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:37:38', '2023-05-19 16:37:38', NULL);
INSERT INTO `loghistories` VALUES (980, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:37:55', '2023-05-19 16:37:55', NULL);
INSERT INTO `loghistories` VALUES (981, 1, 'languages', 'New Language Key Updated', '2023-05-19 16:38:08', '2023-05-19 16:38:08', NULL);
INSERT INTO `loghistories` VALUES (982, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:38:09', '2023-05-19 16:38:09', NULL);
INSERT INTO `loghistories` VALUES (983, 1, 'languages', 'New Language Key Updated', '2023-05-19 16:38:43', '2023-05-19 16:38:43', NULL);
INSERT INTO `loghistories` VALUES (984, 1, 'languages', 'Language Detail View Page', '2023-05-19 16:38:43', '2023-05-19 16:38:43', NULL);
INSERT INTO `loghistories` VALUES (985, 1, 'prices', 'Price List by type (1) View', '2023-05-19 16:41:32', '2023-05-19 16:41:32', NULL);
INSERT INTO `loghistories` VALUES (986, 1, 'prices', 'Price List by type (1) View', '2023-05-19 16:41:33', '2023-05-19 16:41:33', NULL);
INSERT INTO `loghistories` VALUES (987, 14, 'languages', 'Language List View', '2023-05-19 16:48:54', '2023-05-19 16:48:54', NULL);
INSERT INTO `loghistories` VALUES (988, 14, 'languages', 'Language List View', '2023-05-19 16:48:54', '2023-05-19 16:48:54', NULL);
INSERT INTO `loghistories` VALUES (989, 14, 'languages', 'Existing Item Edit Page', '2023-05-19 16:49:25', '2023-05-19 16:49:25', NULL);
INSERT INTO `loghistories` VALUES (990, 14, 'languages', 'Language List View', '2023-05-19 16:49:31', '2023-05-19 16:49:31', NULL);
INSERT INTO `loghistories` VALUES (991, 14, 'languages', 'Language Detail View Page', '2023-05-19 16:49:42', '2023-05-19 16:49:42', NULL);
INSERT INTO `loghistories` VALUES (992, 14, 'languages', 'Language List View', '2023-05-19 16:49:46', '2023-05-19 16:49:46', NULL);
INSERT INTO `loghistories` VALUES (993, 14, 'languages', 'Language Detail View Page', '2023-05-19 16:49:51', '2023-05-19 16:49:51', NULL);
INSERT INTO `loghistories` VALUES (994, 14, 'languages', 'Language Detail View Page', '2023-05-19 16:52:31', '2023-05-19 16:52:31', NULL);
INSERT INTO `loghistories` VALUES (995, 1, 'prices', 'Price List by type (1) View', '2023-05-19 16:54:55', '2023-05-19 16:54:55', NULL);
INSERT INTO `loghistories` VALUES (996, 1, 'prices', 'Price List by type (1) View', '2023-05-19 16:54:56', '2023-05-19 16:54:56', NULL);
INSERT INTO `loghistories` VALUES (997, 1, 'prices', 'Price List by type (4) View', '2023-05-19 16:57:48', '2023-05-19 16:57:48', NULL);
INSERT INTO `loghistories` VALUES (998, 1, 'prices', 'Price List by type (3) View', '2023-05-19 16:57:50', '2023-05-19 16:57:50', NULL);
INSERT INTO `loghistories` VALUES (999, 1, 'prices', 'Price List by type (4) View', '2023-05-19 16:58:25', '2023-05-19 16:58:25', NULL);
INSERT INTO `loghistories` VALUES (1000, 1, 'prices', 'Price List by type (1) View', '2023-05-19 17:02:49', '2023-05-19 17:02:49', NULL);
INSERT INTO `loghistories` VALUES (1001, 1, 'prices', 'Price List View', '2023-05-19 17:02:49', '2023-05-19 17:02:49', NULL);
INSERT INTO `loghistories` VALUES (1002, 1, 'prices', 'Price List View', '2023-05-19 17:03:12', '2023-05-19 17:03:12', NULL);
INSERT INTO `loghistories` VALUES (1003, 1, 'pricetypes', 'Price Type List View', '2023-05-19 17:04:13', '2023-05-19 17:04:13', NULL);
INSERT INTO `loghistories` VALUES (1004, 1, 'prices', 'Price List View', '2023-05-19 17:04:48', '2023-05-19 17:04:48', NULL);
INSERT INTO `loghistories` VALUES (1005, 1, 'prices', 'New Item Creating Page', '2023-05-19 17:05:23', '2023-05-19 17:05:23', NULL);
INSERT INTO `loghistories` VALUES (1006, 1, 'prices', 'Excel Import Showing Page', '2023-05-19 17:11:02', '2023-05-19 17:11:02', NULL);
INSERT INTO `loghistories` VALUES (1007, 14, 'prices', 'Price List by type (10) View', '2023-05-19 17:13:45', '2023-05-19 17:13:45', NULL);
INSERT INTO `loghistories` VALUES (1008, 14, 'prices', 'Price List View', '2023-05-19 17:17:02', '2023-05-19 17:17:02', NULL);
INSERT INTO `loghistories` VALUES (1009, 14, 'prices', 'Price List by type (1) View', '2023-05-19 17:17:21', '2023-05-19 17:17:21', NULL);
INSERT INTO `loghistories` VALUES (1010, 14, 'pricetypes', 'Price Type List View', '2023-05-19 17:17:41', '2023-05-19 17:17:41', NULL);
INSERT INTO `loghistories` VALUES (1011, 14, 'prices', 'Price List View', '2023-05-19 17:17:47', '2023-05-19 17:17:47', NULL);
INSERT INTO `loghistories` VALUES (1012, 1, 'pricetypes', 'Price Type List View', '2023-05-19 18:40:26', '2023-05-19 18:40:26', NULL);
INSERT INTO `loghistories` VALUES (1013, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-19 18:40:58', '2023-05-19 18:40:58', NULL);
INSERT INTO `loghistories` VALUES (1014, 1, 'pricetypes', 'Existing Item Updated', '2023-05-19 18:41:11', '2023-05-19 18:41:11', NULL);
INSERT INTO `loghistories` VALUES (1015, 1, 'pricetypes', 'Price Type List View', '2023-05-19 18:41:11', '2023-05-19 18:41:11', NULL);
INSERT INTO `loghistories` VALUES (1016, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-19 18:41:19', '2023-05-19 18:41:19', NULL);
INSERT INTO `loghistories` VALUES (1017, 1, 'pricetypes', 'Existing Item Updated', '2023-05-19 18:41:25', '2023-05-19 18:41:25', NULL);
INSERT INTO `loghistories` VALUES (1018, 1, 'pricetypes', 'Price Type List View', '2023-05-19 18:41:26', '2023-05-19 18:41:26', NULL);
INSERT INTO `loghistories` VALUES (1019, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-19 18:41:39', '2023-05-19 18:41:39', NULL);
INSERT INTO `loghistories` VALUES (1020, 1, 'pricetypes', 'Existing Item Updated', '2023-05-19 18:41:48', '2023-05-19 18:41:48', NULL);
INSERT INTO `loghistories` VALUES (1021, 1, 'pricetypes', 'Price Type List View', '2023-05-19 18:41:48', '2023-05-19 18:41:48', NULL);
INSERT INTO `loghistories` VALUES (1022, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-19 18:41:57', '2023-05-19 18:41:57', NULL);
INSERT INTO `loghistories` VALUES (1023, 1, 'pricetypes', 'Existing Item Updated', '2023-05-19 18:42:03', '2023-05-19 18:42:03', NULL);
INSERT INTO `loghistories` VALUES (1024, 1, 'pricetypes', 'Price Type List View', '2023-05-19 18:42:03', '2023-05-19 18:42:03', NULL);
INSERT INTO `loghistories` VALUES (1025, 1, 'pricetypes', 'Existing Item Edit Page', '2023-05-19 18:42:09', '2023-05-19 18:42:09', NULL);
INSERT INTO `loghistories` VALUES (1026, 1, 'pricetypes', 'Existing Item Updated', '2023-05-19 18:42:17', '2023-05-19 18:42:17', NULL);
INSERT INTO `loghistories` VALUES (1027, 1, 'pricetypes', 'Price Type List View', '2023-05-19 18:42:17', '2023-05-19 18:42:17', NULL);
INSERT INTO `loghistories` VALUES (1028, 1, 'prices', 'Price List View', '2023-05-19 18:42:31', '2023-05-19 18:42:31', NULL);
INSERT INTO `loghistories` VALUES (1029, 1, 'pricings', 'Pricing Class View', '2023-05-19 18:42:38', '2023-05-19 18:42:38', NULL);
INSERT INTO `loghistories` VALUES (1030, 1, 'pricemanages', 'Price management View', '2023-05-19 18:42:42', '2023-05-19 18:42:42', NULL);
INSERT INTO `loghistories` VALUES (1031, 1, 'prices', 'Price List View', '2023-05-19 18:43:34', '2023-05-19 18:43:34', NULL);
INSERT INTO `loghistories` VALUES (1032, 1, 'prices', 'Price List by type (1) View', '2023-05-19 18:43:48', '2023-05-19 18:43:48', NULL);
INSERT INTO `loghistories` VALUES (1033, 14, 'prices', 'Price List by type (1) View', '2023-05-19 19:00:57', '2023-05-19 19:00:57', NULL);
INSERT INTO `loghistories` VALUES (1034, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:01:01', '2023-05-19 19:01:01', NULL);
INSERT INTO `loghistories` VALUES (1035, 14, 'prices', 'Price List by type (11) View', '2023-05-19 19:04:42', '2023-05-19 19:04:42', NULL);
INSERT INTO `loghistories` VALUES (1036, 14, 'prices', 'Price List by type (10) View', '2023-05-19 19:04:44', '2023-05-19 19:04:44', NULL);
INSERT INTO `loghistories` VALUES (1037, 14, 'prices', 'Price List by type (12) View', '2023-05-19 19:04:47', '2023-05-19 19:04:47', NULL);
INSERT INTO `loghistories` VALUES (1038, 14, 'prices', 'Price List by type (10) View', '2023-05-19 19:04:54', '2023-05-19 19:04:54', NULL);
INSERT INTO `loghistories` VALUES (1039, 14, 'prices', 'Price List by type (12) View', '2023-05-19 19:05:10', '2023-05-19 19:05:10', NULL);
INSERT INTO `loghistories` VALUES (1040, 14, 'prices', 'Price List by type (10) View', '2023-05-19 19:05:12', '2023-05-19 19:05:12', NULL);
INSERT INTO `loghistories` VALUES (1041, 14, 'prices', 'Price List by type (12) View', '2023-05-19 19:09:46', '2023-05-19 19:09:46', NULL);
INSERT INTO `loghistories` VALUES (1042, 14, 'prices', 'Price List by type (10) View', '2023-05-19 19:09:53', '2023-05-19 19:09:53', NULL);
INSERT INTO `loghistories` VALUES (1043, 14, 'prices', 'Price List by type (12) View', '2023-05-19 19:09:57', '2023-05-19 19:09:57', NULL);
INSERT INTO `loghistories` VALUES (1044, 14, 'languages', 'Language List View', '2023-05-19 19:12:29', '2023-05-19 19:12:29', NULL);
INSERT INTO `loghistories` VALUES (1045, 14, 'languages', 'Language Detail View Page', '2023-05-19 19:12:35', '2023-05-19 19:12:35', NULL);
INSERT INTO `loghistories` VALUES (1046, 14, 'languages', 'Language List View', '2023-05-19 19:12:42', '2023-05-19 19:12:42', NULL);
INSERT INTO `loghistories` VALUES (1047, 14, 'languages', 'Language Detail View Page', '2023-05-19 19:12:53', '2023-05-19 19:12:53', NULL);
INSERT INTO `loghistories` VALUES (1048, 14, 'prices', 'Price List by type (10) View', '2023-05-19 19:16:24', '2023-05-19 19:16:24', NULL);
INSERT INTO `loghistories` VALUES (1049, 14, 'prices', 'Price List by type (12) View', '2023-05-19 19:16:26', '2023-05-19 19:16:26', NULL);
INSERT INTO `loghistories` VALUES (1050, 14, 'prices', 'Price List by type (1) View', '2023-05-19 19:16:31', '2023-05-19 19:16:31', NULL);
INSERT INTO `loghistories` VALUES (1051, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:16:44', '2023-05-19 19:16:44', NULL);
INSERT INTO `loghistories` VALUES (1052, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:29:57', '2023-05-19 19:29:57', NULL);
INSERT INTO `loghistories` VALUES (1053, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:30:01', '2023-05-19 19:30:01', NULL);
INSERT INTO `loghistories` VALUES (1054, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:30:10', '2023-05-19 19:30:10', NULL);
INSERT INTO `loghistories` VALUES (1055, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:30:29', '2023-05-19 19:30:29', NULL);
INSERT INTO `loghistories` VALUES (1056, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:30:30', '2023-05-19 19:30:30', NULL);
INSERT INTO `loghistories` VALUES (1057, 14, 'prices', 'Price List by type (6) View', '2023-05-19 19:30:32', '2023-05-19 19:30:32', NULL);
INSERT INTO `loghistories` VALUES (1058, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:30:33', '2023-05-19 19:30:33', NULL);
INSERT INTO `loghistories` VALUES (1059, 14, 'prices', 'Existing Item Editing Page', '2023-05-19 19:30:51', '2023-05-19 19:30:51', NULL);
INSERT INTO `loghistories` VALUES (1060, 14, 'prices', 'Existing Item Updated', '2023-05-19 19:31:02', '2023-05-19 19:31:02', NULL);
INSERT INTO `loghistories` VALUES (1061, 14, 'prices', 'Price List View', '2023-05-19 19:31:07', '2023-05-19 19:31:07', NULL);
INSERT INTO `loghistories` VALUES (1062, 14, 'prices', 'Price List View', '2023-05-19 19:31:31', '2023-05-19 19:31:31', NULL);
INSERT INTO `loghistories` VALUES (1063, 14, 'prices', 'Price List View', '2023-05-19 19:32:30', '2023-05-19 19:32:30', NULL);
INSERT INTO `loghistories` VALUES (1064, 14, 'prices', 'Price List by type (4) View', '2023-05-19 19:32:46', '2023-05-19 19:32:46', NULL);
INSERT INTO `loghistories` VALUES (1065, 14, 'prices', 'Price List by type (12) View', '2023-05-19 19:32:49', '2023-05-19 19:32:49', NULL);
INSERT INTO `loghistories` VALUES (1066, 1, 'prices', 'Price List by type (3) View', '2023-05-20 16:15:16', '2023-05-20 16:15:16', NULL);
INSERT INTO `loghistories` VALUES (1067, 14, 'prices', 'Price List by type (1) View', '2023-05-23 09:56:35', '2023-05-23 09:56:35', NULL);
INSERT INTO `loghistories` VALUES (1068, 14, 'prices', 'Price List by type (3) View', '2023-05-23 09:56:39', '2023-05-23 09:56:39', NULL);
INSERT INTO `loghistories` VALUES (1069, 14, 'prices', 'Price List by type (4) View', '2023-05-23 09:56:40', '2023-05-23 09:56:40', NULL);
INSERT INTO `loghistories` VALUES (1070, 14, 'pricemanages', 'Price management View', '2023-05-23 09:56:48', '2023-05-23 09:56:48', NULL);
INSERT INTO `loghistories` VALUES (1071, 14, 'pricetypes', 'Price Type List View', '2023-05-23 10:01:35', '2023-05-23 10:01:35', NULL);
INSERT INTO `loghistories` VALUES (1072, 14, 'prices', 'Price List by type (1) View', '2023-05-23 10:01:47', '2023-05-23 10:01:47', NULL);
INSERT INTO `loghistories` VALUES (1073, 14, 'languages', 'Language List View', '2023-05-23 10:02:00', '2023-05-23 10:02:00', NULL);
INSERT INTO `loghistories` VALUES (1074, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:02:07', '2023-05-23 10:02:07', NULL);
INSERT INTO `loghistories` VALUES (1075, 14, 'languages', 'Language List View', '2023-05-23 10:02:14', '2023-05-23 10:02:14', NULL);
INSERT INTO `loghistories` VALUES (1076, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:02:19', '2023-05-23 10:02:19', NULL);
INSERT INTO `loghistories` VALUES (1077, 14, 'languages', 'Language List View', '2023-05-23 10:02:30', '2023-05-23 10:02:30', NULL);
INSERT INTO `loghistories` VALUES (1078, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:02:48', '2023-05-23 10:02:48', NULL);
INSERT INTO `loghistories` VALUES (1079, 14, 'languages', 'Language List View', '2023-05-23 10:02:56', '2023-05-23 10:02:56', NULL);
INSERT INTO `loghistories` VALUES (1080, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:02:59', '2023-05-23 10:02:59', NULL);
INSERT INTO `loghistories` VALUES (1081, 14, 'languages', 'Language List View', '2023-05-23 10:03:00', '2023-05-23 10:03:00', NULL);
INSERT INTO `loghistories` VALUES (1082, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:03:03', '2023-05-23 10:03:03', NULL);
INSERT INTO `loghistories` VALUES (1083, 14, 'languages', 'Language List View', '2023-05-23 10:03:05', '2023-05-23 10:03:05', NULL);
INSERT INTO `loghistories` VALUES (1084, 14, 'pricecompares', 'Price All Competitors by tech View', '2023-05-23 10:05:12', '2023-05-23 10:05:12', NULL);
INSERT INTO `loghistories` VALUES (1085, 14, 'prices', 'Price List by type (4) View', '2023-05-23 10:05:17', '2023-05-23 10:05:17', NULL);
INSERT INTO `loghistories` VALUES (1086, 14, 'prices', 'Price List by type (6) View', '2023-05-23 10:05:50', '2023-05-23 10:05:50', NULL);
INSERT INTO `loghistories` VALUES (1087, 14, 'prices', 'Price List by type (8) View', '2023-05-23 10:05:53', '2023-05-23 10:05:53', NULL);
INSERT INTO `loghistories` VALUES (1088, 14, 'languages', 'Language List View', '2023-05-23 10:15:43', '2023-05-23 10:15:43', NULL);
INSERT INTO `loghistories` VALUES (1089, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:15:46', '2023-05-23 10:15:46', NULL);
INSERT INTO `loghistories` VALUES (1090, 14, 'languages', 'Language List View', '2023-05-23 10:15:52', '2023-05-23 10:15:52', NULL);
INSERT INTO `loghistories` VALUES (1091, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:15:56', '2023-05-23 10:15:56', NULL);
INSERT INTO `loghistories` VALUES (1092, 14, 'languages', 'Language List View', '2023-05-23 10:15:58', '2023-05-23 10:15:58', NULL);
INSERT INTO `loghistories` VALUES (1093, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 10:16:06', '2023-05-23 10:16:06', NULL);
INSERT INTO `loghistories` VALUES (1094, 14, 'languages', 'Existing Item Updated', '2023-05-23 10:16:09', '2023-05-23 10:16:09', NULL);
INSERT INTO `loghistories` VALUES (1095, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 10:16:12', '2023-05-23 10:16:12', NULL);
INSERT INTO `loghistories` VALUES (1096, 14, 'languages', 'Language List View', '2023-05-23 10:16:17', '2023-05-23 10:16:17', NULL);
INSERT INTO `loghistories` VALUES (1097, 14, 'languages', 'Language Detail View Page', '2023-05-23 10:16:43', '2023-05-23 10:16:43', NULL);
INSERT INTO `loghistories` VALUES (1098, 14, 'languages', 'Language List View', '2023-05-23 10:17:21', '2023-05-23 10:17:21', NULL);
INSERT INTO `loghistories` VALUES (1099, 14, 'prices', 'Price List by type (1) View', '2023-05-23 14:51:39', '2023-05-23 14:51:39', NULL);
INSERT INTO `loghistories` VALUES (1100, 14, 'prices', 'Price List by type (4) View', '2023-05-23 14:51:40', '2023-05-23 14:51:40', NULL);
INSERT INTO `loghistories` VALUES (1101, 1, 'pricetypes', 'Price Type List View', '2023-05-23 16:16:53', '2023-05-23 16:16:53', NULL);
INSERT INTO `loghistories` VALUES (1102, 1, 'pricings', 'Pricing Class View', '2023-05-23 16:16:58', '2023-05-23 16:16:58', NULL);
INSERT INTO `loghistories` VALUES (1103, 15, 'prices', 'Price List by type (3) View', '2023-05-23 17:57:48', '2023-05-23 17:57:48', NULL);
INSERT INTO `loghistories` VALUES (1104, 15, 'prices', 'Price List by type (4) View', '2023-05-23 17:57:51', '2023-05-23 17:57:51', NULL);
INSERT INTO `loghistories` VALUES (1105, 15, 'prices', 'Price List by type (1) View', '2023-05-23 17:58:03', '2023-05-23 17:58:03', NULL);
INSERT INTO `loghistories` VALUES (1106, 14, 'pricecompetitors', 'Price Type List View', '2023-05-23 17:58:35', '2023-05-23 17:58:35', NULL);
INSERT INTO `loghistories` VALUES (1107, 14, 'pricecompares', 'Price All Competitors by tech View', '2023-05-23 17:58:42', '2023-05-23 17:58:42', NULL);
INSERT INTO `loghistories` VALUES (1108, 14, 'pricetypes', 'Price Type List View', '2023-05-23 17:58:46', '2023-05-23 17:58:46', NULL);
INSERT INTO `loghistories` VALUES (1109, 14, 'prices', 'Price List View', '2023-05-23 17:58:49', '2023-05-23 17:58:49', NULL);
INSERT INTO `loghistories` VALUES (1110, 14, 'pricetypes', 'Price Type List View', '2023-05-23 17:58:51', '2023-05-23 17:58:51', NULL);
INSERT INTO `loghistories` VALUES (1111, 14, 'prices', 'Price List by type (1) View', '2023-05-23 17:58:55', '2023-05-23 17:58:55', NULL);
INSERT INTO `loghistories` VALUES (1112, 14, 'prices', 'Price List by type (3) View', '2023-05-23 17:58:57', '2023-05-23 17:58:57', NULL);
INSERT INTO `loghistories` VALUES (1113, 14, 'prices', 'Price List by type (4) View', '2023-05-23 17:58:59', '2023-05-23 17:58:59', NULL);
INSERT INTO `loghistories` VALUES (1114, 14, 'prices', 'Price List by type (6) View', '2023-05-23 17:59:04', '2023-05-23 17:59:04', NULL);
INSERT INTO `loghistories` VALUES (1115, 14, 'prices', 'Price List by type (8) View', '2023-05-23 17:59:05', '2023-05-23 17:59:05', NULL);
INSERT INTO `loghistories` VALUES (1116, 14, 'prices', 'Price List by type (10) View', '2023-05-23 17:59:08', '2023-05-23 17:59:08', NULL);
INSERT INTO `loghistories` VALUES (1117, 14, 'prices', 'Price List by type (12) View', '2023-05-23 17:59:11', '2023-05-23 17:59:11', NULL);
INSERT INTO `loghistories` VALUES (1118, 14, 'prices', 'Price List by type (11) View', '2023-05-23 18:00:19', '2023-05-23 18:00:19', NULL);
INSERT INTO `loghistories` VALUES (1119, 14, 'prices', 'Price List by type (12) View', '2023-05-23 18:00:21', '2023-05-23 18:00:21', NULL);
INSERT INTO `loghistories` VALUES (1120, 14, 'pricetypes', 'Price Type List View', '2023-05-23 18:01:58', '2023-05-23 18:01:58', NULL);
INSERT INTO `loghistories` VALUES (1121, 14, 'prices', 'Price List View', '2023-05-23 18:02:03', '2023-05-23 18:02:03', NULL);
INSERT INTO `loghistories` VALUES (1122, 14, 'languages', 'Language List View', '2023-05-23 18:02:06', '2023-05-23 18:02:06', NULL);
INSERT INTO `loghistories` VALUES (1123, 14, 'languages', 'Language List View', '2023-05-23 18:09:33', '2023-05-23 18:09:33', NULL);
INSERT INTO `loghistories` VALUES (1124, 14, 'languages', 'Language List View', '2023-05-23 18:09:33', '2023-05-23 18:09:33', NULL);
INSERT INTO `loghistories` VALUES (1125, 14, 'pricecompetitors', 'Price Type List View', '2023-05-23 18:25:36', '2023-05-23 18:25:36', NULL);
INSERT INTO `loghistories` VALUES (1126, 14, 'pricecompares', 'Price All Competitors by tech View', '2023-05-23 18:25:39', '2023-05-23 18:25:39', NULL);
INSERT INTO `loghistories` VALUES (1127, 14, 'pricetypes', 'Price Type List View', '2023-05-23 18:25:46', '2023-05-23 18:25:46', NULL);
INSERT INTO `loghistories` VALUES (1128, 14, 'prices', 'Price List View', '2023-05-23 18:25:49', '2023-05-23 18:25:49', NULL);
INSERT INTO `loghistories` VALUES (1129, 14, 'pricings', 'Pricing Class View', '2023-05-23 18:25:53', '2023-05-23 18:25:53', NULL);
INSERT INTO `loghistories` VALUES (1130, 14, 'pricemanages', 'Price management View', '2023-05-23 18:26:00', '2023-05-23 18:26:00', NULL);
INSERT INTO `loghistories` VALUES (1131, 14, 'languages', 'Language List View', '2023-05-23 18:43:05', '2023-05-23 18:43:05', NULL);
INSERT INTO `loghistories` VALUES (1132, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:43:18', '2023-05-23 18:43:18', NULL);
INSERT INTO `loghistories` VALUES (1133, 14, 'languages', 'Language List View', '2023-05-23 18:45:32', '2023-05-23 18:45:32', NULL);
INSERT INTO `loghistories` VALUES (1134, 14, 'languages', 'New Language Create Page', '2023-05-23 18:45:35', '2023-05-23 18:45:35', NULL);
INSERT INTO `loghistories` VALUES (1135, 14, 'languages', 'New Item Saved', '2023-05-23 18:45:47', '2023-05-23 18:45:47', NULL);
INSERT INTO `loghistories` VALUES (1136, 14, 'languages', 'Language List View', '2023-05-23 18:45:52', '2023-05-23 18:45:52', NULL);
INSERT INTO `loghistories` VALUES (1137, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:45:57', '2023-05-23 18:45:57', NULL);
INSERT INTO `loghistories` VALUES (1138, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:46:07', '2023-05-23 18:46:07', NULL);
INSERT INTO `loghistories` VALUES (1139, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:46:08', '2023-05-23 18:46:08', NULL);
INSERT INTO `loghistories` VALUES (1140, 14, 'languages', 'Language List View', '2023-05-23 18:46:14', '2023-05-23 18:46:14', NULL);
INSERT INTO `loghistories` VALUES (1141, 14, 'languages', 'Existing Item deleted', '2023-05-23 18:46:20', '2023-05-23 18:46:20', NULL);
INSERT INTO `loghistories` VALUES (1142, 14, 'languages', 'Language List View', '2023-05-23 18:46:20', '2023-05-23 18:46:20', NULL);
INSERT INTO `loghistories` VALUES (1143, 14, 'languages', 'Language List View', '2023-05-23 18:46:47', '2023-05-23 18:46:47', NULL);
INSERT INTO `loghistories` VALUES (1144, 14, 'languages', 'Existing Item View', '2023-05-23 18:47:53', '2023-05-23 18:47:53', NULL);
INSERT INTO `loghistories` VALUES (1145, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 18:47:56', '2023-05-23 18:47:56', NULL);
INSERT INTO `loghistories` VALUES (1146, 14, 'languages', 'Existing Item Updated', '2023-05-23 18:48:00', '2023-05-23 18:48:00', NULL);
INSERT INTO `loghistories` VALUES (1147, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 18:48:02', '2023-05-23 18:48:02', NULL);
INSERT INTO `loghistories` VALUES (1148, 14, 'languages', 'Existing Item Updated', '2023-05-23 18:48:06', '2023-05-23 18:48:06', NULL);
INSERT INTO `loghistories` VALUES (1149, 14, 'languages', 'Language List View', '2023-05-23 18:48:08', '2023-05-23 18:48:08', NULL);
INSERT INTO `loghistories` VALUES (1150, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:48:12', '2023-05-23 18:48:12', NULL);
INSERT INTO `loghistories` VALUES (1151, 14, 'languages', 'Language List View', '2023-05-23 18:48:19', '2023-05-23 18:48:19', NULL);
INSERT INTO `loghistories` VALUES (1152, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 18:48:25', '2023-05-23 18:48:25', NULL);
INSERT INTO `loghistories` VALUES (1153, 14, 'languages', 'Existing Item Updated', '2023-05-23 18:48:29', '2023-05-23 18:48:29', NULL);
INSERT INTO `loghistories` VALUES (1154, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 18:48:33', '2023-05-23 18:48:33', NULL);
INSERT INTO `loghistories` VALUES (1155, 14, 'languages', 'Existing Item Updated', '2023-05-23 18:48:37', '2023-05-23 18:48:37', NULL);
INSERT INTO `loghistories` VALUES (1156, 14, 'languages', 'Language List View', '2023-05-23 18:48:38', '2023-05-23 18:48:38', NULL);
INSERT INTO `loghistories` VALUES (1157, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:50:13', '2023-05-23 18:50:13', NULL);
INSERT INTO `loghistories` VALUES (1158, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:50:27', '2023-05-23 18:50:27', NULL);
INSERT INTO `loghistories` VALUES (1159, 14, 'languages', 'Language List View', '2023-05-23 18:52:20', '2023-05-23 18:52:20', NULL);
INSERT INTO `loghistories` VALUES (1160, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:52:23', '2023-05-23 18:52:23', NULL);
INSERT INTO `loghistories` VALUES (1161, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:53:30', '2023-05-23 18:53:30', NULL);
INSERT INTO `loghistories` VALUES (1162, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:53:30', '2023-05-23 18:53:30', NULL);
INSERT INTO `loghistories` VALUES (1163, 14, 'languages', 'Language List View', '2023-05-23 18:53:35', '2023-05-23 18:53:35', NULL);
INSERT INTO `loghistories` VALUES (1164, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:53:43', '2023-05-23 18:53:43', NULL);
INSERT INTO `loghistories` VALUES (1165, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:54:16', '2023-05-23 18:54:16', NULL);
INSERT INTO `loghistories` VALUES (1166, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:54:16', '2023-05-23 18:54:16', NULL);
INSERT INTO `loghistories` VALUES (1167, 14, 'languages', 'Language List View', '2023-05-23 18:54:20', '2023-05-23 18:54:20', NULL);
INSERT INTO `loghistories` VALUES (1168, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 18:54:24', '2023-05-23 18:54:24', NULL);
INSERT INTO `loghistories` VALUES (1169, 14, 'languages', 'Language List View', '2023-05-23 18:54:26', '2023-05-23 18:54:26', NULL);
INSERT INTO `loghistories` VALUES (1170, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:54:28', '2023-05-23 18:54:28', NULL);
INSERT INTO `loghistories` VALUES (1171, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:54:50', '2023-05-23 18:54:50', NULL);
INSERT INTO `loghistories` VALUES (1172, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:54:50', '2023-05-23 18:54:50', NULL);
INSERT INTO `loghistories` VALUES (1173, 14, 'languages', 'Language List View', '2023-05-23 18:54:53', '2023-05-23 18:54:53', NULL);
INSERT INTO `loghistories` VALUES (1174, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:55:00', '2023-05-23 18:55:00', NULL);
INSERT INTO `loghistories` VALUES (1175, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:55:22', '2023-05-23 18:55:22', NULL);
INSERT INTO `loghistories` VALUES (1176, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:55:22', '2023-05-23 18:55:22', NULL);
INSERT INTO `loghistories` VALUES (1177, 14, 'languages', 'Language List View', '2023-05-23 18:55:28', '2023-05-23 18:55:28', NULL);
INSERT INTO `loghistories` VALUES (1178, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:55:32', '2023-05-23 18:55:32', NULL);
INSERT INTO `loghistories` VALUES (1179, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:55:54', '2023-05-23 18:55:54', NULL);
INSERT INTO `loghistories` VALUES (1180, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:55:54', '2023-05-23 18:55:54', NULL);
INSERT INTO `loghistories` VALUES (1181, 14, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-23 18:56:03', '2023-05-23 18:56:03', NULL);
INSERT INTO `loghistories` VALUES (1182, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-23 18:56:06', '2023-05-23 18:56:06', NULL);
INSERT INTO `loghistories` VALUES (1183, 14, 'languages', 'Changed WebSite Language as Nederlandse', '2023-05-23 18:56:12', '2023-05-23 18:56:12', NULL);
INSERT INTO `loghistories` VALUES (1184, 14, 'languages', 'Changed WebSite Language as Dansk', '2023-05-23 18:56:16', '2023-05-23 18:56:16', NULL);
INSERT INTO `loghistories` VALUES (1185, 14, 'languages', 'Changed WebSite Language as Svenska', '2023-05-23 18:56:19', '2023-05-23 18:56:19', NULL);
INSERT INTO `loghistories` VALUES (1186, 14, 'languages', 'Changed WebSite Language as Norska', '2023-05-23 18:56:23', '2023-05-23 18:56:23', NULL);
INSERT INTO `loghistories` VALUES (1187, 14, 'languages', 'Changed WebSite Language as Polski', '2023-05-23 18:56:27', '2023-05-23 18:56:27', NULL);
INSERT INTO `loghistories` VALUES (1188, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-23 18:56:31', '2023-05-23 18:56:31', NULL);
INSERT INTO `loghistories` VALUES (1189, 14, 'languages', 'Language List View', '2023-05-23 18:56:57', '2023-05-23 18:56:57', NULL);
INSERT INTO `loghistories` VALUES (1190, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:57:00', '2023-05-23 18:57:00', NULL);
INSERT INTO `loghistories` VALUES (1191, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:57:33', '2023-05-23 18:57:33', NULL);
INSERT INTO `loghistories` VALUES (1192, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:57:33', '2023-05-23 18:57:33', NULL);
INSERT INTO `loghistories` VALUES (1193, 14, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-23 18:57:44', '2023-05-23 18:57:44', NULL);
INSERT INTO `loghistories` VALUES (1194, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:57:44', '2023-05-23 18:57:44', NULL);
INSERT INTO `loghistories` VALUES (1195, 14, 'languages', 'Language List View', '2023-05-23 18:57:55', '2023-05-23 18:57:55', NULL);
INSERT INTO `loghistories` VALUES (1196, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:57:58', '2023-05-23 18:57:58', NULL);
INSERT INTO `loghistories` VALUES (1197, 14, 'languages', 'New Language Key Saved', '2023-05-23 18:59:05', '2023-05-23 18:59:05', NULL);
INSERT INTO `loghistories` VALUES (1198, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:59:05', '2023-05-23 18:59:05', NULL);
INSERT INTO `loghistories` VALUES (1199, 14, 'languages', 'Changed WebSite Language as English', '2023-05-23 18:59:34', '2023-05-23 18:59:34', NULL);
INSERT INTO `loghistories` VALUES (1200, 14, 'languages', 'Language Detail View Page', '2023-05-23 18:59:35', '2023-05-23 18:59:35', NULL);
INSERT INTO `loghistories` VALUES (1201, 14, 'languages', 'Language List View', '2023-05-23 19:00:01', '2023-05-23 19:00:01', NULL);
INSERT INTO `loghistories` VALUES (1202, 14, 'languages', 'Existing Item Edit Page', '2023-05-23 19:02:52', '2023-05-23 19:02:52', NULL);
INSERT INTO `loghistories` VALUES (1203, 14, 'languages', 'Language List View', '2023-05-23 19:02:57', '2023-05-23 19:02:57', NULL);
INSERT INTO `loghistories` VALUES (1204, 14, 'languages', 'Language Detail View Page', '2023-05-23 19:03:01', '2023-05-23 19:03:01', NULL);
INSERT INTO `loghistories` VALUES (1205, 14, 'languages', 'New Language Key Updated', '2023-05-23 19:03:20', '2023-05-23 19:03:20', NULL);
INSERT INTO `loghistories` VALUES (1206, 14, 'languages', 'Language Detail View Page', '2023-05-23 19:03:20', '2023-05-23 19:03:20', NULL);
INSERT INTO `loghistories` VALUES (1207, 14, 'languages', 'Language List View', '2023-05-23 19:03:31', '2023-05-23 19:03:31', NULL);
INSERT INTO `loghistories` VALUES (1208, 14, 'languages', 'Language List View', '2023-05-23 19:46:02', '2023-05-23 19:46:02', NULL);
INSERT INTO `loghistories` VALUES (1209, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-23 20:00:48', '2023-05-23 20:00:48', NULL);
INSERT INTO `loghistories` VALUES (1210, 14, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-23 20:01:00', '2023-05-23 20:01:00', NULL);
INSERT INTO `loghistories` VALUES (1211, 1, 'pricecompetitors', 'Price Type List View', '2023-05-23 20:01:40', '2023-05-23 20:01:40', NULL);
INSERT INTO `loghistories` VALUES (1212, 1, 'languages', 'Language List View', '2023-05-23 20:01:50', '2023-05-23 20:01:50', NULL);
INSERT INTO `loghistories` VALUES (1213, 1, 'prices', 'Price List by type (1) View', '2023-05-23 20:01:58', '2023-05-23 20:01:58', NULL);
INSERT INTO `loghistories` VALUES (1214, 1, 'prices', 'Price List View', '2023-05-23 20:02:29', '2023-05-23 20:02:29', NULL);
INSERT INTO `loghistories` VALUES (1215, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-05-24 09:59:15', '2023-05-24 09:59:15', NULL);
INSERT INTO `loghistories` VALUES (1216, 1, 'languages', 'Changed WebSite Language as English', '2023-05-24 10:01:51', '2023-05-24 10:01:51', NULL);
INSERT INTO `loghistories` VALUES (1217, 1, 'prices', 'Price List by type (1) View', '2023-05-24 10:02:00', '2023-05-24 10:02:00', NULL);
INSERT INTO `loghistories` VALUES (1218, 1, 'prices', 'Price List by type (1) View', '2023-05-24 11:34:23', '2023-05-24 11:34:23', NULL);
INSERT INTO `loghistories` VALUES (1219, 1, 'prices', 'Price List by type (3) View', '2023-05-24 11:34:26', '2023-05-24 11:34:26', NULL);
INSERT INTO `loghistories` VALUES (1220, 1, 'prices', 'Price List by type (4) View', '2023-05-24 11:34:28', '2023-05-24 11:34:28', NULL);
INSERT INTO `loghistories` VALUES (1221, 1, 'prices', 'Price List by type (6) View', '2023-05-24 11:34:42', '2023-05-24 11:34:42', NULL);
INSERT INTO `loghistories` VALUES (1222, 1, 'prices', 'Price List by type (1) View', '2023-05-24 11:41:38', '2023-05-24 11:41:38', NULL);
INSERT INTO `loghistories` VALUES (1223, 1, 'prices', 'Excel Import Showing Page', '2023-05-24 11:41:47', '2023-05-24 11:41:47', NULL);
INSERT INTO `loghistories` VALUES (1224, 1, 'pricetypes', 'Price Type List View', '2023-05-24 11:44:16', '2023-05-24 11:44:16', NULL);
INSERT INTO `loghistories` VALUES (1225, 1, 'prices', 'Price List View', '2023-05-24 11:44:26', '2023-05-24 11:44:26', NULL);
INSERT INTO `loghistories` VALUES (1226, 1, 'pricetypes', 'Price Type List View', '2023-05-24 11:44:28', '2023-05-24 11:44:28', NULL);
INSERT INTO `loghistories` VALUES (1227, 1, 'pricings', 'Pricing Class View', '2023-05-24 11:44:34', '2023-05-24 11:44:34', NULL);
INSERT INTO `loghistories` VALUES (1228, 1, 'pricemanages', 'Price management View', '2023-05-24 11:45:02', '2023-05-24 11:45:02', NULL);
INSERT INTO `loghistories` VALUES (1229, 1, 'pricings', 'Pricing Class View', '2023-05-24 11:45:12', '2023-05-24 11:45:12', NULL);
INSERT INTO `loghistories` VALUES (1230, 1, 'pricemanages', 'Price management View', '2023-05-24 11:45:15', '2023-05-24 11:45:15', NULL);
INSERT INTO `loghistories` VALUES (1231, 1, 'pricecompetitors', 'Price Type List View', '2023-05-24 11:45:39', '2023-05-24 11:45:39', NULL);
INSERT INTO `loghistories` VALUES (1232, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-05-24 11:46:21', '2023-05-24 11:46:21', NULL);
INSERT INTO `loghistories` VALUES (1233, 1, 'pricecompetitors', 'Price Type List View', '2023-05-24 11:46:28', '2023-05-24 11:46:28', NULL);
INSERT INTO `loghistories` VALUES (1234, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-05-24 11:46:46', '2023-05-24 11:46:46', NULL);
INSERT INTO `loghistories` VALUES (1235, 1, 'prices', 'Price List by type (1) View', '2023-05-24 11:48:55', '2023-05-24 11:48:55', NULL);
INSERT INTO `loghistories` VALUES (1236, 1, 'prices', 'Excel Import Showing Page', '2023-05-24 11:49:11', '2023-05-24 11:49:11', NULL);
INSERT INTO `loghistories` VALUES (1237, 1, 'prices', 'Price List by type (1) View', '2023-05-24 11:49:57', '2023-05-24 11:49:57', NULL);
INSERT INTO `loghistories` VALUES (1238, 1, 'prices', 'Price List by type (4) View', '2023-05-24 11:50:02', '2023-05-24 11:50:02', NULL);
INSERT INTO `loghistories` VALUES (1239, 1, 'prices', 'Price List by type (1) View', '2023-05-24 11:50:15', '2023-05-24 11:50:15', NULL);
INSERT INTO `loghistories` VALUES (1240, 1, 'prices', 'Excel Import Showing Page', '2023-05-24 11:52:18', '2023-05-24 11:52:18', NULL);
INSERT INTO `loghistories` VALUES (1241, 14, 'prices', 'Price List by type (1) View', '2023-05-25 10:22:38', '2023-05-25 10:22:38', NULL);
INSERT INTO `loghistories` VALUES (1242, 14, 'prices', 'Price List by type (4) View', '2023-05-25 10:22:41', '2023-05-25 10:22:41', NULL);
INSERT INTO `loghistories` VALUES (1243, 14, 'prices', 'Price List by type (6) View', '2023-05-25 10:22:43', '2023-05-25 10:22:43', NULL);
INSERT INTO `loghistories` VALUES (1244, 14, 'prices', 'Price List by type (13) View', '2023-05-25 10:22:46', '2023-05-25 10:22:46', NULL);
INSERT INTO `loghistories` VALUES (1245, 14, 'prices', 'Price List by type (8) View', '2023-05-25 10:22:48', '2023-05-25 10:22:48', NULL);
INSERT INTO `loghistories` VALUES (1246, 14, 'prices', 'Price List by type (6) View', '2023-05-25 10:22:51', '2023-05-25 10:22:51', NULL);
INSERT INTO `loghistories` VALUES (1247, 14, 'pricetypes', 'Price Type List View', '2023-05-25 10:22:55', '2023-05-25 10:22:55', NULL);
INSERT INTO `loghistories` VALUES (1248, 14, 'prices', 'Price List View', '2023-05-25 10:22:59', '2023-05-25 10:22:59', NULL);
INSERT INTO `loghistories` VALUES (1249, 14, 'pricings', 'Pricing Class View', '2023-05-25 10:23:02', '2023-05-25 10:23:02', NULL);
INSERT INTO `loghistories` VALUES (1250, 14, 'pricemanages', 'Price management View', '2023-05-25 10:23:06', '2023-05-25 10:23:06', NULL);
INSERT INTO `loghistories` VALUES (1251, 14, 'pricecompetitors', 'Price Type List View', '2023-05-25 10:23:10', '2023-05-25 10:23:10', NULL);
INSERT INTO `loghistories` VALUES (1252, 14, 'pricecompares', 'Price All Competitors by tech View', '2023-05-25 10:23:19', '2023-05-25 10:23:19', NULL);
INSERT INTO `loghistories` VALUES (1253, 14, 'languages', 'Language List View', '2023-05-25 10:23:28', '2023-05-25 10:23:28', NULL);
INSERT INTO `loghistories` VALUES (1254, 14, 'prices', 'Price List by type (1) View', '2023-05-25 10:23:59', '2023-05-25 10:23:59', NULL);
INSERT INTO `loghistories` VALUES (1255, 14, 'prices', 'Price List by type (3) View', '2023-05-25 10:24:01', '2023-05-25 10:24:01', NULL);
INSERT INTO `loghistories` VALUES (1256, 14, 'prices', 'Price List by type (4) View', '2023-05-25 10:24:02', '2023-05-25 10:24:02', NULL);
INSERT INTO `loghistories` VALUES (1257, 14, 'prices', 'Price List by type (12) View', '2023-05-25 10:24:05', '2023-05-25 10:24:05', NULL);
INSERT INTO `loghistories` VALUES (1258, 14, 'languages', 'Language List View', '2023-05-25 10:24:42', '2023-05-25 10:24:42', NULL);
INSERT INTO `loghistories` VALUES (1259, 14, 'prices', 'Price List by type (12) View', '2023-05-25 10:25:39', '2023-05-25 10:25:39', NULL);
INSERT INTO `loghistories` VALUES (1260, 14, 'prices', 'Price List by type (4) View', '2023-05-25 10:25:44', '2023-05-25 10:25:44', NULL);
INSERT INTO `loghistories` VALUES (1261, 14, 'prices', 'Price List by type (1) View', '2023-05-25 10:25:46', '2023-05-25 10:25:46', NULL);
INSERT INTO `loghistories` VALUES (1262, 14, 'prices', 'Price List by type (3) View', '2023-05-25 10:25:48', '2023-05-25 10:25:48', NULL);
INSERT INTO `loghistories` VALUES (1263, 14, 'prices', 'Price List by type (13) View', '2023-05-25 10:25:52', '2023-05-25 10:25:52', NULL);
INSERT INTO `loghistories` VALUES (1264, 14, 'prices', 'Price List by type (12) View', '2023-05-25 10:25:57', '2023-05-25 10:25:57', NULL);
INSERT INTO `loghistories` VALUES (1265, 14, 'pricetypes', 'Price Type List View', '2023-05-25 10:26:03', '2023-05-25 10:26:03', NULL);
INSERT INTO `loghistories` VALUES (1266, 14, 'prices', 'Price List by type (1) View', '2023-05-25 10:46:40', '2023-05-25 10:46:40', NULL);
INSERT INTO `loghistories` VALUES (1267, 14, 'prices', 'Price List by type (6) View', '2023-05-25 10:52:19', '2023-05-25 10:52:19', NULL);
INSERT INTO `loghistories` VALUES (1268, 14, 'prices', 'Price List by type (14) View', '2023-05-25 10:52:40', '2023-05-25 10:52:40', NULL);
INSERT INTO `loghistories` VALUES (1269, 14, 'prices', 'Price List by type (1) View', '2023-05-25 10:53:57', '2023-05-25 10:53:57', NULL);
INSERT INTO `loghistories` VALUES (1270, 14, 'prices', 'Price List by type (4) View', '2023-05-25 10:59:05', '2023-05-25 10:59:05', NULL);
INSERT INTO `loghistories` VALUES (1271, 14, 'prices', 'Price List by type (6) View', '2023-05-25 11:06:56', '2023-05-25 11:06:56', NULL);
INSERT INTO `loghistories` VALUES (1272, 14, 'prices', 'Price List by type (4) View', '2023-05-25 11:06:58', '2023-05-25 11:06:58', NULL);
INSERT INTO `loghistories` VALUES (1273, 14, 'prices', 'Price List by type (8) View', '2023-05-25 11:10:35', '2023-05-25 11:10:35', NULL);
INSERT INTO `loghistories` VALUES (1274, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 11:10:40', '2023-05-25 11:10:40', NULL);
INSERT INTO `loghistories` VALUES (1275, 14, 'prices', 'Price List View', '2023-05-25 11:10:59', '2023-05-25 11:10:59', NULL);
INSERT INTO `loghistories` VALUES (1276, 14, 'prices', 'Price List by type (8) View', '2023-05-25 11:11:04', '2023-05-25 11:11:04', NULL);
INSERT INTO `loghistories` VALUES (1277, 14, 'prices', 'Price List by type (10) View', '2023-05-25 11:11:15', '2023-05-25 11:11:15', NULL);
INSERT INTO `loghistories` VALUES (1278, 14, 'prices', 'Price List by type (11) View', '2023-05-25 11:11:45', '2023-05-25 11:11:45', NULL);
INSERT INTO `loghistories` VALUES (1279, 14, 'prices', 'Price List by type (12) View', '2023-05-25 11:11:57', '2023-05-25 11:11:57', NULL);
INSERT INTO `loghistories` VALUES (1280, 14, 'prices', 'Price List by type (11) View', '2023-05-25 11:12:00', '2023-05-25 11:12:00', NULL);
INSERT INTO `loghistories` VALUES (1281, 14, 'prices', 'Price List by type (12) View', '2023-05-25 11:13:15', '2023-05-25 11:13:15', NULL);
INSERT INTO `loghistories` VALUES (1282, 14, 'prices', 'Price List by type (1) View', '2023-05-25 11:57:12', '2023-05-25 11:57:12', NULL);
INSERT INTO `loghistories` VALUES (1283, 14, 'prices', 'Price List by type (12) View', '2023-05-25 11:57:14', '2023-05-25 11:57:14', NULL);
INSERT INTO `loghistories` VALUES (1284, 14, 'prices', 'Price List by type (1) View', '2023-05-25 11:57:16', '2023-05-25 11:57:16', NULL);
INSERT INTO `loghistories` VALUES (1285, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 11:57:17', '2023-05-25 11:57:17', NULL);
INSERT INTO `loghistories` VALUES (1286, 14, 'prices', 'Price List View', '2023-05-25 11:57:26', '2023-05-25 11:57:26', NULL);
INSERT INTO `loghistories` VALUES (1287, 14, 'prices', 'Price List by type (1) View', '2023-05-25 11:57:32', '2023-05-25 11:57:32', NULL);
INSERT INTO `loghistories` VALUES (1288, 14, 'prices', 'Price List by type (1) View', '2023-05-25 11:58:25', '2023-05-25 11:58:25', NULL);
INSERT INTO `loghistories` VALUES (1289, 14, 'prices', 'Price List by type (8) View', '2023-05-25 11:58:31', '2023-05-25 11:58:31', NULL);
INSERT INTO `loghistories` VALUES (1290, 14, 'prices', 'Price List by type (11) View', '2023-05-25 11:58:37', '2023-05-25 11:58:37', NULL);
INSERT INTO `loghistories` VALUES (1291, 14, 'prices', 'Price List by type (12) View', '2023-05-25 11:58:38', '2023-05-25 11:58:38', NULL);
INSERT INTO `loghistories` VALUES (1292, 14, 'prices', 'Price List by type (4) View', '2023-05-25 11:58:42', '2023-05-25 11:58:42', NULL);
INSERT INTO `loghistories` VALUES (1293, 14, 'prices', 'Price List by type (1) View', '2023-05-25 11:58:51', '2023-05-25 11:58:51', NULL);
INSERT INTO `loghistories` VALUES (1294, 14, 'prices', 'Price List by type (1) View', '2023-05-25 11:59:23', '2023-05-25 11:59:23', NULL);
INSERT INTO `loghistories` VALUES (1295, 14, 'languages', 'Language List View', '2023-05-25 12:00:02', '2023-05-25 12:00:02', NULL);
INSERT INTO `loghistories` VALUES (1296, 14, 'languages', 'Changed WebSite Language as Dansk', '2023-05-25 12:00:09', '2023-05-25 12:00:09', NULL);
INSERT INTO `loghistories` VALUES (1297, 14, 'languages', 'Language List View', '2023-05-25 12:00:09', '2023-05-25 12:00:09', NULL);
INSERT INTO `loghistories` VALUES (1298, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-25 12:00:26', '2023-05-25 12:00:26', NULL);
INSERT INTO `loghistories` VALUES (1299, 14, 'languages', 'Language List View', '2023-05-25 12:00:27', '2023-05-25 12:00:27', NULL);
INSERT INTO `loghistories` VALUES (1300, 14, 'languages', 'Language Detail View Page', '2023-05-25 12:00:37', '2023-05-25 12:00:37', NULL);
INSERT INTO `loghistories` VALUES (1301, 14, 'languages', 'Language List View', '2023-05-25 12:00:43', '2023-05-25 12:00:43', NULL);
INSERT INTO `loghistories` VALUES (1302, 14, 'languages', 'Language Detail View Page', '2023-05-25 12:00:45', '2023-05-25 12:00:45', NULL);
INSERT INTO `loghistories` VALUES (1303, 14, 'languages', 'Changed WebSite Language as English', '2023-05-25 12:01:09', '2023-05-25 12:01:09', NULL);
INSERT INTO `loghistories` VALUES (1304, 14, 'languages', 'Language Detail View Page', '2023-05-25 12:01:10', '2023-05-25 12:01:10', NULL);
INSERT INTO `loghistories` VALUES (1305, 14, 'prices', 'Price List by type (1) View', '2023-05-25 12:12:32', '2023-05-25 12:12:32', NULL);
INSERT INTO `loghistories` VALUES (1306, 14, 'prices', 'Price List by type (3) View', '2023-05-25 12:14:04', '2023-05-25 12:14:04', NULL);
INSERT INTO `loghistories` VALUES (1307, 14, 'prices', 'Price List by type (6) View', '2023-05-25 12:14:06', '2023-05-25 12:14:06', NULL);
INSERT INTO `loghistories` VALUES (1308, 14, 'prices', 'Price List by type (10) View', '2023-05-25 12:14:08', '2023-05-25 12:14:08', NULL);
INSERT INTO `loghistories` VALUES (1309, 14, 'prices', 'Price List by type (11) View', '2023-05-25 12:14:11', '2023-05-25 12:14:11', NULL);
INSERT INTO `loghistories` VALUES (1310, 14, 'prices', 'Price List by type (1) View', '2023-05-25 12:14:13', '2023-05-25 12:14:13', NULL);
INSERT INTO `loghistories` VALUES (1311, 1, 'prices', 'Price List by type (1) View', '2023-05-25 12:14:29', '2023-05-25 12:14:29', NULL);
INSERT INTO `loghistories` VALUES (1312, 1, 'prices', 'Price List by type (6) View', '2023-05-25 12:14:40', '2023-05-25 12:14:40', NULL);
INSERT INTO `loghistories` VALUES (1313, 1, 'prices', 'Price List by type (1) View', '2023-05-25 12:14:43', '2023-05-25 12:14:43', NULL);
INSERT INTO `loghistories` VALUES (1314, 14, 'languages', 'Language List View', '2023-05-25 12:34:20', '2023-05-25 12:34:20', NULL);
INSERT INTO `loghistories` VALUES (1315, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-25 12:38:18', '2023-05-25 12:38:18', NULL);
INSERT INTO `loghistories` VALUES (1316, 1, 'languages', 'Changed WebSite Language as English', '2023-05-25 12:38:26', '2023-05-25 12:38:26', NULL);
INSERT INTO `loghistories` VALUES (1317, 14, 'prices', 'Price List by type (1) View', '2023-05-25 12:47:13', '2023-05-25 12:47:13', NULL);
INSERT INTO `loghistories` VALUES (1318, 14, 'prices', 'Price List by type (4) View', '2023-05-25 12:47:20', '2023-05-25 12:47:20', NULL);
INSERT INTO `loghistories` VALUES (1319, 14, 'prices', 'Price List by type (1) View', '2023-05-25 12:47:23', '2023-05-25 12:47:23', NULL);
INSERT INTO `loghistories` VALUES (1320, 14, 'prices', 'Price List by type (1) View', '2023-05-25 12:50:50', '2023-05-25 12:50:50', NULL);
INSERT INTO `loghistories` VALUES (1321, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 12:52:26', '2023-05-25 12:52:26', NULL);
INSERT INTO `loghistories` VALUES (1322, 14, 'prices', 'Price List View', '2023-05-25 12:52:35', '2023-05-25 12:52:35', NULL);
INSERT INTO `loghistories` VALUES (1323, 14, 'prices', 'Price List by type (1) View', '2023-05-25 12:52:39', '2023-05-25 12:52:39', NULL);
INSERT INTO `loghistories` VALUES (1324, 14, 'prices', 'Price List by type (1) View', '2023-05-25 13:00:42', '2023-05-25 13:00:42', NULL);
INSERT INTO `loghistories` VALUES (1325, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 13:00:49', '2023-05-25 13:00:49', NULL);
INSERT INTO `loghistories` VALUES (1326, 14, 'prices', 'Price List View', '2023-05-25 13:01:06', '2023-05-25 13:01:06', NULL);
INSERT INTO `loghistories` VALUES (1327, 14, 'prices', 'Price List by type (1) View', '2023-05-25 13:01:08', '2023-05-25 13:01:08', NULL);
INSERT INTO `loghistories` VALUES (1328, 1, 'prices', 'Price List by type (1) View', '2023-05-25 13:01:54', '2023-05-25 13:01:54', NULL);
INSERT INTO `loghistories` VALUES (1329, 1, 'prices', 'Price List by type (4) View', '2023-05-25 13:01:59', '2023-05-25 13:01:59', NULL);
INSERT INTO `loghistories` VALUES (1330, 1, 'prices', 'Price List by type (6) View', '2023-05-25 13:02:02', '2023-05-25 13:02:02', NULL);
INSERT INTO `loghistories` VALUES (1331, 1, 'prices', 'Price List by type (8) View', '2023-05-25 13:02:05', '2023-05-25 13:02:05', NULL);
INSERT INTO `loghistories` VALUES (1332, 1, 'prices', 'Price List by type (10) View', '2023-05-25 13:02:13', '2023-05-25 13:02:13', NULL);
INSERT INTO `loghistories` VALUES (1333, 1, 'pricetypes', 'Price Type List View', '2023-05-25 13:02:30', '2023-05-25 13:02:30', NULL);
INSERT INTO `loghistories` VALUES (1334, 14, 'prices', 'Price List by type (3) View', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `loghistories` VALUES (1335, 14, 'prices', 'Price List by type (1) View', '2023-05-25 13:22:36', '2023-05-25 13:22:36', NULL);
INSERT INTO `loghistories` VALUES (1336, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 13:22:38', '2023-05-25 13:22:38', NULL);
INSERT INTO `loghistories` VALUES (1337, 14, 'prices', 'Price List View', '2023-05-25 13:22:45', '2023-05-25 13:22:45', NULL);
INSERT INTO `loghistories` VALUES (1338, 14, 'prices', 'Price List by type (1) View', '2023-05-25 13:22:49', '2023-05-25 13:22:49', NULL);
INSERT INTO `loghistories` VALUES (1339, 14, 'prices', 'Price List by type (12) View', '2023-05-25 13:23:07', '2023-05-25 13:23:07', NULL);
INSERT INTO `loghistories` VALUES (1340, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 13:25:44', '2023-05-25 13:25:44', NULL);
INSERT INTO `loghistories` VALUES (1341, 14, 'prices', 'Price List View', '2023-05-25 13:25:52', '2023-05-25 13:25:52', NULL);
INSERT INTO `loghistories` VALUES (1342, 14, 'prices', 'Price List by type (12) View', '2023-05-25 13:25:55', '2023-05-25 13:25:55', NULL);
INSERT INTO `loghistories` VALUES (1343, 14, 'prices', 'Price List by type (8) View', '2023-05-25 13:31:52', '2023-05-25 13:31:52', NULL);
INSERT INTO `loghistories` VALUES (1344, 14, 'prices', 'Price List by type (8) View', '2023-05-25 13:33:48', '2023-05-25 13:33:48', NULL);
INSERT INTO `loghistories` VALUES (1345, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 13:33:51', '2023-05-25 13:33:51', NULL);
INSERT INTO `loghistories` VALUES (1346, 14, 'prices', 'Price List View', '2023-05-25 13:33:58', '2023-05-25 13:33:58', NULL);
INSERT INTO `loghistories` VALUES (1347, 14, 'prices', 'Price List View', '2023-05-25 13:34:03', '2023-05-25 13:34:03', NULL);
INSERT INTO `loghistories` VALUES (1348, 14, 'pricetypes', 'Price Type List View', '2023-05-25 13:34:06', '2023-05-25 13:34:06', NULL);
INSERT INTO `loghistories` VALUES (1349, 14, 'prices', 'Price List View', '2023-05-25 13:34:07', '2023-05-25 13:34:07', NULL);
INSERT INTO `loghistories` VALUES (1350, 14, 'prices', 'Price List by type (8) View', '2023-05-25 13:34:12', '2023-05-25 13:34:12', NULL);
INSERT INTO `loghistories` VALUES (1351, 14, 'prices', 'Price List by type (10) View', '2023-05-25 13:34:33', '2023-05-25 13:34:33', NULL);
INSERT INTO `loghistories` VALUES (1352, 14, 'prices', 'Price List by type (11) View', '2023-05-25 13:34:35', '2023-05-25 13:34:35', NULL);
INSERT INTO `loghistories` VALUES (1353, 14, 'prices', 'Price List by type (12) View', '2023-05-25 13:34:37', '2023-05-25 13:34:37', NULL);
INSERT INTO `loghistories` VALUES (1354, 14, 'prices', 'Price List by type (3) View', '2023-05-25 13:34:40', '2023-05-25 13:34:40', NULL);
INSERT INTO `loghistories` VALUES (1355, 14, 'prices', 'Price List by type (3) View', '2023-05-25 14:58:11', '2023-05-25 14:58:11', NULL);
INSERT INTO `loghistories` VALUES (1356, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 14:58:12', '2023-05-25 14:58:12', NULL);
INSERT INTO `loghistories` VALUES (1357, 14, 'prices', 'Price List View', '2023-05-25 14:58:20', '2023-05-25 14:58:20', NULL);
INSERT INTO `loghistories` VALUES (1358, 14, 'prices', 'Price List by type (3) View', '2023-05-25 14:58:25', '2023-05-25 14:58:25', NULL);
INSERT INTO `loghistories` VALUES (1359, 14, 'prices', 'Price List by type (3) View', '2023-05-25 15:01:52', '2023-05-25 15:01:52', NULL);
INSERT INTO `loghistories` VALUES (1360, 14, 'prices', 'Price List by type (4) View', '2023-05-25 15:01:57', '2023-05-25 15:01:57', NULL);
INSERT INTO `loghistories` VALUES (1361, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:03:04', '2023-05-25 15:03:04', NULL);
INSERT INTO `loghistories` VALUES (1362, 14, 'prices', 'Price List by type (8) View', '2023-05-25 15:03:07', '2023-05-25 15:03:07', NULL);
INSERT INTO `loghistories` VALUES (1363, 14, 'prices', 'Price List by type (10) View', '2023-05-25 15:03:09', '2023-05-25 15:03:09', NULL);
INSERT INTO `loghistories` VALUES (1364, 14, 'prices', 'Price List by type (11) View', '2023-05-25 15:03:10', '2023-05-25 15:03:10', NULL);
INSERT INTO `loghistories` VALUES (1365, 14, 'prices', 'Price List by type (12) View', '2023-05-25 15:03:11', '2023-05-25 15:03:11', NULL);
INSERT INTO `loghistories` VALUES (1366, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:03:17', '2023-05-25 15:03:17', NULL);
INSERT INTO `loghistories` VALUES (1367, 14, 'prices', 'Price List by type (3) View', '2023-05-25 15:04:17', '2023-05-25 15:04:17', NULL);
INSERT INTO `loghistories` VALUES (1368, 14, 'prices', 'Price List by type (13) View', '2023-05-25 15:04:36', '2023-05-25 15:04:36', NULL);
INSERT INTO `loghistories` VALUES (1369, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:04:41', '2023-05-25 15:04:41', NULL);
INSERT INTO `loghistories` VALUES (1370, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 15:18:02', '2023-05-25 15:18:02', NULL);
INSERT INTO `loghistories` VALUES (1371, 14, 'prices', 'Price List View', '2023-05-25 15:18:54', '2023-05-25 15:18:54', NULL);
INSERT INTO `loghistories` VALUES (1372, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:18:58', '2023-05-25 15:18:58', NULL);
INSERT INTO `loghistories` VALUES (1373, 14, 'prices', 'Price List by type (13) View', '2023-05-25 15:19:15', '2023-05-25 15:19:15', NULL);
INSERT INTO `loghistories` VALUES (1374, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 15:27:50', '2023-05-25 15:27:50', NULL);
INSERT INTO `loghistories` VALUES (1375, 14, 'prices', 'Price List View', '2023-05-25 15:27:57', '2023-05-25 15:27:57', NULL);
INSERT INTO `loghistories` VALUES (1376, 14, 'prices', 'Price List by type (13) View', '2023-05-25 15:28:01', '2023-05-25 15:28:01', NULL);
INSERT INTO `loghistories` VALUES (1377, 14, 'prices', 'Price List by type (12) View', '2023-05-25 15:28:08', '2023-05-25 15:28:08', NULL);
INSERT INTO `loghistories` VALUES (1378, 14, 'prices', 'Price List by type (11) View', '2023-05-25 15:28:11', '2023-05-25 15:28:11', NULL);
INSERT INTO `loghistories` VALUES (1379, 14, 'prices', 'Price List by type (10) View', '2023-05-25 15:28:15', '2023-05-25 15:28:15', NULL);
INSERT INTO `loghistories` VALUES (1380, 14, 'prices', 'Price List by type (8) View', '2023-05-25 15:28:16', '2023-05-25 15:28:16', NULL);
INSERT INTO `loghistories` VALUES (1381, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:28:18', '2023-05-25 15:28:18', NULL);
INSERT INTO `loghistories` VALUES (1382, 14, 'prices', 'Price List by type (4) View', '2023-05-25 15:28:21', '2023-05-25 15:28:21', NULL);
INSERT INTO `loghistories` VALUES (1383, 14, 'prices', 'Price List by type (3) View', '2023-05-25 15:28:30', '2023-05-25 15:28:30', NULL);
INSERT INTO `loghistories` VALUES (1384, 14, 'prices', 'Price List by type (1) View', '2023-05-25 15:28:32', '2023-05-25 15:28:32', NULL);
INSERT INTO `loghistories` VALUES (1385, 14, 'prices', 'Price List by type (4) View', '2023-05-25 15:28:34', '2023-05-25 15:28:34', NULL);
INSERT INTO `loghistories` VALUES (1386, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 15:38:51', '2023-05-25 15:38:51', NULL);
INSERT INTO `loghistories` VALUES (1387, 14, 'prices', 'Price List View', '2023-05-25 15:39:00', '2023-05-25 15:39:00', NULL);
INSERT INTO `loghistories` VALUES (1388, 14, 'prices', 'Price List by type (3) View', '2023-05-25 15:39:04', '2023-05-25 15:39:04', NULL);
INSERT INTO `loghistories` VALUES (1389, 14, 'prices', 'Price List by type (4) View', '2023-05-25 15:39:06', '2023-05-25 15:39:06', NULL);
INSERT INTO `loghistories` VALUES (1390, 14, 'prices', 'Price List by type (3) View', '2023-05-25 15:39:54', '2023-05-25 15:39:54', NULL);
INSERT INTO `loghistories` VALUES (1391, 14, 'prices', 'Price List by type (1) View', '2023-05-25 15:39:56', '2023-05-25 15:39:56', NULL);
INSERT INTO `loghistories` VALUES (1392, 14, 'prices', 'Price List by type (13) View', '2023-05-25 15:40:02', '2023-05-25 15:40:02', NULL);
INSERT INTO `loghistories` VALUES (1393, 14, 'prices', 'Price List by type (12) View', '2023-05-25 15:40:07', '2023-05-25 15:40:07', NULL);
INSERT INTO `loghistories` VALUES (1394, 14, 'prices', 'Price List by type (11) View', '2023-05-25 15:40:10', '2023-05-25 15:40:10', NULL);
INSERT INTO `loghistories` VALUES (1395, 14, 'prices', 'Price List by type (10) View', '2023-05-25 15:40:12', '2023-05-25 15:40:12', NULL);
INSERT INTO `loghistories` VALUES (1396, 14, 'prices', 'Price List by type (11) View', '2023-05-25 15:40:14', '2023-05-25 15:40:14', NULL);
INSERT INTO `loghistories` VALUES (1397, 1, 'prices', 'Price List by type (1) View', '2023-05-25 15:40:28', '2023-05-25 15:40:28', NULL);
INSERT INTO `loghistories` VALUES (1398, 14, 'prices', 'Price List by type (10) View', '2023-05-25 15:40:34', '2023-05-25 15:40:34', NULL);
INSERT INTO `loghistories` VALUES (1399, 14, 'prices', 'Price List by type (11) View', '2023-05-25 15:40:35', '2023-05-25 15:40:35', NULL);
INSERT INTO `loghistories` VALUES (1400, 14, 'prices', 'Price List by type (11) View', '2023-05-25 15:40:53', '2023-05-25 15:40:53', NULL);
INSERT INTO `loghistories` VALUES (1401, 14, 'prices', 'Price List by type (12) View', '2023-05-25 15:40:55', '2023-05-25 15:40:55', NULL);
INSERT INTO `loghistories` VALUES (1402, 14, 'prices', 'Price List by type (13) View', '2023-05-25 15:41:06', '2023-05-25 15:41:06', NULL);
INSERT INTO `loghistories` VALUES (1403, 14, 'prices', 'Price List by type (10) View', '2023-05-25 15:41:38', '2023-05-25 15:41:38', NULL);
INSERT INTO `loghistories` VALUES (1404, 14, 'prices', 'Price List by type (8) View', '2023-05-25 15:42:59', '2023-05-25 15:42:59', NULL);
INSERT INTO `loghistories` VALUES (1405, 14, 'prices', 'Existing Item Showing Page', '2023-05-25 15:43:21', '2023-05-25 15:43:21', NULL);
INSERT INTO `loghistories` VALUES (1406, 14, 'prices', 'Price List View', '2023-05-25 15:43:27', '2023-05-25 15:43:27', NULL);
INSERT INTO `loghistories` VALUES (1407, 14, 'prices', 'Existing Item Showing Page', '2023-05-25 15:43:30', '2023-05-25 15:43:30', NULL);
INSERT INTO `loghistories` VALUES (1408, 14, 'prices', 'Price List View', '2023-05-25 15:43:45', '2023-05-25 15:43:45', NULL);
INSERT INTO `loghistories` VALUES (1409, 15, 'prices', 'Price List by type (1) View', '2023-05-25 15:46:59', '2023-05-25 15:46:59', NULL);
INSERT INTO `loghistories` VALUES (1410, 15, 'prices', 'Price List by type (3) View', '2023-05-25 15:47:19', '2023-05-25 15:47:19', NULL);
INSERT INTO `loghistories` VALUES (1411, 15, 'prices', 'Price List by type (4) View', '2023-05-25 15:47:21', '2023-05-25 15:47:21', NULL);
INSERT INTO `loghistories` VALUES (1412, 15, 'prices', 'Price List by type (6) View', '2023-05-25 15:47:23', '2023-05-25 15:47:23', NULL);
INSERT INTO `loghistories` VALUES (1413, 15, 'prices', 'Price List by type (8) View', '2023-05-25 15:47:26', '2023-05-25 15:47:26', NULL);
INSERT INTO `loghistories` VALUES (1414, 15, 'prices', 'Price List by type (10) View', '2023-05-25 15:47:42', '2023-05-25 15:47:42', NULL);
INSERT INTO `loghistories` VALUES (1415, 15, 'prices', 'Price List by type (11) View', '2023-05-25 15:47:44', '2023-05-25 15:47:44', NULL);
INSERT INTO `loghistories` VALUES (1416, 15, 'prices', 'Price List by type (12) View', '2023-05-25 15:47:45', '2023-05-25 15:47:45', NULL);
INSERT INTO `loghistories` VALUES (1417, 15, 'prices', 'Price List by type (13) View', '2023-05-25 15:47:58', '2023-05-25 15:47:58', NULL);
INSERT INTO `loghistories` VALUES (1418, 15, 'prices', 'Price List by type (14) View', '2023-05-25 15:48:06', '2023-05-25 15:48:06', NULL);
INSERT INTO `loghistories` VALUES (1419, 15, 'prices', 'Price List by type (13) View', '2023-05-25 15:48:08', '2023-05-25 15:48:08', NULL);
INSERT INTO `loghistories` VALUES (1420, 15, 'prices', 'Price List by type (12) View', '2023-05-25 15:52:43', '2023-05-25 15:52:43', NULL);
INSERT INTO `loghistories` VALUES (1421, 1, 'languages', 'Language List View', '2023-05-25 15:53:33', '2023-05-25 15:53:33', NULL);
INSERT INTO `loghistories` VALUES (1422, 15, 'prices', 'Price List by type (6) View', '2023-05-25 15:57:30', '2023-05-25 15:57:30', NULL);
INSERT INTO `loghistories` VALUES (1423, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:57:50', '2023-05-25 15:57:50', NULL);
INSERT INTO `loghistories` VALUES (1424, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 15:59:15', '2023-05-25 15:59:15', NULL);
INSERT INTO `loghistories` VALUES (1425, 14, 'prices', 'Price List View', '2023-05-25 15:59:29', '2023-05-25 15:59:29', NULL);
INSERT INTO `loghistories` VALUES (1426, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:59:32', '2023-05-25 15:59:32', NULL);
INSERT INTO `loghistories` VALUES (1427, 14, 'prices', 'Excel Import Showing Page', '2023-05-25 15:59:43', '2023-05-25 15:59:43', NULL);
INSERT INTO `loghistories` VALUES (1428, 14, 'prices', 'Price List View', '2023-05-25 15:59:51', '2023-05-25 15:59:51', NULL);
INSERT INTO `loghistories` VALUES (1429, 14, 'prices', 'Price List by type (6) View', '2023-05-25 15:59:55', '2023-05-25 15:59:55', NULL);
INSERT INTO `loghistories` VALUES (1430, 14, 'prices', 'Price List by type (8) View', '2023-05-25 16:00:54', '2023-05-25 16:00:54', NULL);
INSERT INTO `loghistories` VALUES (1431, 14, 'prices', 'Price List by type (6) View', '2023-05-25 16:01:01', '2023-05-25 16:01:01', NULL);
INSERT INTO `loghistories` VALUES (1432, 14, 'prices', 'Price List by type (4) View', '2023-05-25 16:01:04', '2023-05-25 16:01:04', NULL);
INSERT INTO `loghistories` VALUES (1433, 14, 'prices', 'Price List by type (3) View', '2023-05-25 16:01:07', '2023-05-25 16:01:07', NULL);
INSERT INTO `loghistories` VALUES (1434, 14, 'prices', 'Price List by type (1) View', '2023-05-25 16:01:09', '2023-05-25 16:01:09', NULL);
INSERT INTO `loghistories` VALUES (1435, 14, 'prices', 'Price List by type (12) View', '2023-05-25 16:01:12', '2023-05-25 16:01:12', NULL);
INSERT INTO `loghistories` VALUES (1436, 14, 'prices', 'Price List by type (1) View', '2023-05-25 17:14:53', '2023-05-25 17:14:53', NULL);
INSERT INTO `loghistories` VALUES (1437, 14, 'prices', 'Price List by type (3) View', '2023-05-25 17:14:57', '2023-05-25 17:14:57', NULL);
INSERT INTO `loghistories` VALUES (1438, 14, 'prices', 'Price List by type (4) View', '2023-05-25 17:15:02', '2023-05-25 17:15:02', NULL);
INSERT INTO `loghistories` VALUES (1439, 14, 'prices', 'Price List by type (6) View', '2023-05-25 17:15:06', '2023-05-25 17:15:06', NULL);
INSERT INTO `loghistories` VALUES (1440, 14, 'prices', 'Price List by type (8) View', '2023-05-25 17:15:08', '2023-05-25 17:15:08', NULL);
INSERT INTO `loghistories` VALUES (1441, 14, 'prices', 'Price List by type (10) View', '2023-05-25 17:15:13', '2023-05-25 17:15:13', NULL);
INSERT INTO `loghistories` VALUES (1442, 14, 'prices', 'Price List by type (11) View', '2023-05-25 17:15:18', '2023-05-25 17:15:18', NULL);
INSERT INTO `loghistories` VALUES (1443, 14, 'prices', 'Price List by type (12) View', '2023-05-25 17:15:27', '2023-05-25 17:15:27', NULL);
INSERT INTO `loghistories` VALUES (1444, 14, 'prices', 'Price List by type (13) View', '2023-05-25 17:15:34', '2023-05-25 17:15:34', NULL);
INSERT INTO `loghistories` VALUES (1445, 14, 'prices', 'Price List by type (14) View', '2023-05-25 17:15:36', '2023-05-25 17:15:36', NULL);
INSERT INTO `loghistories` VALUES (1446, 14, 'prices', 'Price List by type (1) View', '2023-05-25 17:15:38', '2023-05-25 17:15:38', NULL);
INSERT INTO `loghistories` VALUES (1447, 14, 'prices', 'Price List by type (1) View', '2023-05-25 17:45:09', '2023-05-25 17:45:09', NULL);
INSERT INTO `loghistories` VALUES (1448, 14, 'prices', 'Price List by type (3) View', '2023-05-25 17:45:14', '2023-05-25 17:45:14', NULL);
INSERT INTO `loghistories` VALUES (1449, 14, 'prices', 'Price List by type (4) View', '2023-05-25 17:45:16', '2023-05-25 17:45:16', NULL);
INSERT INTO `loghistories` VALUES (1450, 14, 'prices', 'Price List by type (6) View', '2023-05-25 17:45:18', '2023-05-25 17:45:18', NULL);
INSERT INTO `loghistories` VALUES (1451, 14, 'prices', 'Price List by type (8) View', '2023-05-25 17:45:19', '2023-05-25 17:45:19', NULL);
INSERT INTO `loghistories` VALUES (1452, 14, 'prices', 'Price List by type (10) View', '2023-05-25 17:45:22', '2023-05-25 17:45:22', NULL);
INSERT INTO `loghistories` VALUES (1453, 14, 'prices', 'Price List by type (11) View', '2023-05-25 17:45:24', '2023-05-25 17:45:24', NULL);
INSERT INTO `loghistories` VALUES (1454, 14, 'prices', 'Price List by type (12) View', '2023-05-25 17:45:25', '2023-05-25 17:45:25', NULL);
INSERT INTO `loghistories` VALUES (1455, 14, 'prices', 'Price List by type (13) View', '2023-05-25 17:45:27', '2023-05-25 17:45:27', NULL);
INSERT INTO `loghistories` VALUES (1456, 14, 'prices', 'Price List by type (12) View', '2023-05-25 17:45:29', '2023-05-25 17:45:29', NULL);
INSERT INTO `loghistories` VALUES (1457, 14, 'prices', 'Price List by type (14) View', '2023-05-25 17:45:31', '2023-05-25 17:45:31', NULL);
INSERT INTO `loghistories` VALUES (1458, 14, 'prices', 'Price List by type (1) View', '2023-05-25 17:45:34', '2023-05-25 17:45:34', NULL);
INSERT INTO `loghistories` VALUES (1459, 14, 'languages', 'Language List View', '2023-05-26 10:39:33', '2023-05-26 10:39:33', NULL);
INSERT INTO `loghistories` VALUES (1460, 14, 'languages', 'Language List View', '2023-05-26 10:39:52', '2023-05-26 10:39:52', NULL);
INSERT INTO `loghistories` VALUES (1461, 14, 'languages', 'Language List View', '2023-05-26 10:45:41', '2023-05-26 10:45:41', NULL);
INSERT INTO `loghistories` VALUES (1462, 14, 'languages', 'Language List View', '2023-05-26 10:47:16', '2023-05-26 10:47:16', NULL);
INSERT INTO `loghistories` VALUES (1463, 14, 'languages', 'Language List View', '2023-05-26 11:27:10', '2023-05-26 11:27:10', NULL);
INSERT INTO `loghistories` VALUES (1464, 14, 'prices', 'Price List by type (12) View', '2023-05-26 11:29:52', '2023-05-26 11:29:52', NULL);
INSERT INTO `loghistories` VALUES (1465, 14, 'prices', 'Existing Item Editing Page', '2023-05-26 11:30:20', '2023-05-26 11:30:20', NULL);
INSERT INTO `loghistories` VALUES (1466, 14, 'prices', 'Existing Item Updated', '2023-05-26 11:31:03', '2023-05-26 11:31:03', NULL);
INSERT INTO `loghistories` VALUES (1467, 14, 'prices', 'Price List View', '2023-05-26 11:31:09', '2023-05-26 11:31:09', NULL);
INSERT INTO `loghistories` VALUES (1468, 14, 'prices', 'Price List by type (12) View', '2023-05-26 11:31:14', '2023-05-26 11:31:14', NULL);
INSERT INTO `loghistories` VALUES (1469, 14, 'prices', 'Existing Item Editing Page', '2023-05-26 11:31:19', '2023-05-26 11:31:19', NULL);
INSERT INTO `loghistories` VALUES (1470, 14, 'prices', 'Existing Item Updated', '2023-05-26 11:31:33', '2023-05-26 11:31:33', NULL);
INSERT INTO `loghistories` VALUES (1471, 14, 'prices', 'Price List View', '2023-05-26 11:31:53', '2023-05-26 11:31:53', NULL);
INSERT INTO `loghistories` VALUES (1472, 14, 'prices', 'Price List by type (1) View', '2023-05-26 12:22:13', '2023-05-26 12:22:13', NULL);
INSERT INTO `loghistories` VALUES (1473, 14, 'prices', 'Price List by type (1) View', '2023-05-26 12:25:16', '2023-05-26 12:25:16', NULL);
INSERT INTO `loghistories` VALUES (1474, 14, 'prices', 'Price List by type (1) View', '2023-05-26 12:27:51', '2023-05-26 12:27:51', NULL);
INSERT INTO `loghistories` VALUES (1475, 14, 'prices', 'Price List by type (1) View', '2023-05-26 12:28:24', '2023-05-26 12:28:24', NULL);
INSERT INTO `loghistories` VALUES (1476, 14, 'prices', 'Price List by type (3) View', '2023-05-26 12:29:06', '2023-05-26 12:29:06', NULL);
INSERT INTO `loghistories` VALUES (1477, 14, 'prices', 'Price List by type (12) View', '2023-05-26 12:31:39', '2023-05-26 12:31:39', NULL);
INSERT INTO `loghistories` VALUES (1478, 14, 'prices', 'Price List by type (12) View', '2023-05-26 12:34:03', '2023-05-26 12:34:03', NULL);
INSERT INTO `loghistories` VALUES (1479, 14, 'prices', 'Price List by type (12) View', '2023-05-26 12:34:17', '2023-05-26 12:34:17', NULL);
INSERT INTO `loghistories` VALUES (1480, 14, 'languages', 'Language List View', '2023-05-26 15:29:43', '2023-05-26 15:29:43', NULL);
INSERT INTO `loghistories` VALUES (1481, 14, 'prices', 'Price List by type (1) View', '2023-05-26 15:33:24', '2023-05-26 15:33:24', NULL);
INSERT INTO `loghistories` VALUES (1482, 14, 'pricecompetitors', 'Price Type List View', '2023-05-26 15:34:35', '2023-05-26 15:34:35', NULL);
INSERT INTO `loghistories` VALUES (1483, 14, 'prices', 'Price List by type (1) View', '2023-05-26 19:51:00', '2023-05-26 19:51:00', NULL);
INSERT INTO `loghistories` VALUES (1484, 14, 'pricecompetitors', 'Price Type List View', '2023-05-26 19:52:56', '2023-05-26 19:52:56', NULL);
INSERT INTO `loghistories` VALUES (1485, 14, 'languages', 'Language List View', '2023-05-26 19:52:58', '2023-05-26 19:52:58', NULL);
INSERT INTO `loghistories` VALUES (1486, 14, 'prices', 'Price List by type (1) View', '2023-05-26 19:53:42', '2023-05-26 19:53:42', NULL);
INSERT INTO `loghistories` VALUES (1487, 14, 'languages', 'Language List View', '2023-05-27 09:57:32', '2023-05-27 09:57:32', NULL);
INSERT INTO `loghistories` VALUES (1488, 14, 'prices', 'Price List by type (1) View', '2023-05-27 09:58:12', '2023-05-27 09:58:12', NULL);
INSERT INTO `loghistories` VALUES (1489, 14, 'prices', 'Price List by type (3) View', '2023-05-27 10:01:04', '2023-05-27 10:01:04', NULL);
INSERT INTO `loghistories` VALUES (1490, 1, 'languages', 'Language List View', '2023-05-27 19:21:17', '2023-05-27 19:21:17', NULL);
INSERT INTO `loghistories` VALUES (1491, 14, 'languages', 'Language List View', '2023-05-29 13:01:46', '2023-05-29 13:01:46', NULL);
INSERT INTO `loghistories` VALUES (1492, 14, 'prices', 'Price List by type (1) View', '2023-05-29 13:04:23', '2023-05-29 13:04:23', NULL);
INSERT INTO `loghistories` VALUES (1493, 14, 'prices', 'Price List by type (8) View', '2023-05-29 13:04:26', '2023-05-29 13:04:26', NULL);
INSERT INTO `loghistories` VALUES (1494, 1, 'prices', 'Price List by type (1) View', '2023-05-29 15:32:04', '2023-05-29 15:32:04', NULL);
INSERT INTO `loghistories` VALUES (1495, 1, 'prices', 'Price List by type (3) View', '2023-05-29 15:32:09', '2023-05-29 15:32:09', NULL);
INSERT INTO `loghistories` VALUES (1496, 1, 'prices', 'Price List by type (4) View', '2023-05-29 15:32:12', '2023-05-29 15:32:12', NULL);
INSERT INTO `loghistories` VALUES (1497, 1, 'prices', 'Price List by type (6) View', '2023-05-29 15:32:15', '2023-05-29 15:32:15', NULL);
INSERT INTO `loghistories` VALUES (1498, 1, 'prices', 'Price List by type (8) View', '2023-05-29 15:32:30', '2023-05-29 15:32:30', NULL);
INSERT INTO `loghistories` VALUES (1499, 1, 'prices', 'Price List by type (10) View', '2023-05-29 15:32:35', '2023-05-29 15:32:35', NULL);
INSERT INTO `loghistories` VALUES (1500, 1, 'prices', 'Price List by type (11) View', '2023-05-29 15:32:38', '2023-05-29 15:32:38', NULL);
INSERT INTO `loghistories` VALUES (1501, 1, 'prices', 'Price List by type (12) View', '2023-05-29 15:32:42', '2023-05-29 15:32:42', NULL);
INSERT INTO `loghistories` VALUES (1502, 1, 'languages', 'Language List View', '2023-05-29 15:34:04', '2023-05-29 15:34:04', NULL);
INSERT INTO `loghistories` VALUES (1503, 1, 'prices', 'Price List by type (1) View', '2023-05-29 20:28:07', '2023-05-29 20:28:07', NULL);
INSERT INTO `loghistories` VALUES (1504, 1, 'languages', 'Changed WebSite Language as Français', '2023-05-29 20:28:19', '2023-05-29 20:28:19', NULL);
INSERT INTO `loghistories` VALUES (1505, 1, 'prices', 'Price List by type (1) View', '2023-05-29 20:28:19', '2023-05-29 20:28:19', NULL);
INSERT INTO `loghistories` VALUES (1506, 1, 'pricecompetitors', 'Price Type List View', '2023-05-29 20:28:38', '2023-05-29 20:28:38', NULL);
INSERT INTO `loghistories` VALUES (1507, 1, 'languages', 'Language List View', '2023-05-29 20:28:47', '2023-05-29 20:28:47', NULL);
INSERT INTO `loghistories` VALUES (1508, 1, 'languages', 'Existing Item View', '2023-05-29 20:28:57', '2023-05-29 20:28:57', NULL);
INSERT INTO `loghistories` VALUES (1509, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:29:05', '2023-05-29 20:29:05', NULL);
INSERT INTO `loghistories` VALUES (1510, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-05-29 20:29:15', '2023-05-29 20:29:15', NULL);
INSERT INTO `loghistories` VALUES (1511, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:29:15', '2023-05-29 20:29:15', NULL);
INSERT INTO `loghistories` VALUES (1512, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-05-29 20:29:24', '2023-05-29 20:29:24', NULL);
INSERT INTO `loghistories` VALUES (1513, 1, 'languages', 'Existing Item View', '2023-05-29 20:29:25', '2023-05-29 20:29:25', NULL);
INSERT INTO `loghistories` VALUES (1514, 1, 'languages', 'Existing Item View', '2023-05-29 20:29:32', '2023-05-29 20:29:32', NULL);
INSERT INTO `loghistories` VALUES (1515, 1, 'languages', 'Existing Item View', '2023-05-29 20:29:37', '2023-05-29 20:29:37', NULL);
INSERT INTO `loghistories` VALUES (1516, 1, 'languages', 'Language List View', '2023-05-29 20:29:41', '2023-05-29 20:29:41', NULL);
INSERT INTO `loghistories` VALUES (1517, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:29:49', '2023-05-29 20:29:49', NULL);
INSERT INTO `loghistories` VALUES (1518, 1, 'languages', 'Existing Item Updated', '2023-05-29 20:29:56', '2023-05-29 20:29:56', NULL);
INSERT INTO `loghistories` VALUES (1519, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:30:02', '2023-05-29 20:30:02', NULL);
INSERT INTO `loghistories` VALUES (1520, 1, 'languages', 'Language List View', '2023-05-29 20:30:05', '2023-05-29 20:30:05', NULL);
INSERT INTO `loghistories` VALUES (1521, 1, 'languages', 'Existing Item View', '2023-05-29 20:30:12', '2023-05-29 20:30:12', NULL);
INSERT INTO `loghistories` VALUES (1522, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:30:22', '2023-05-29 20:30:22', NULL);
INSERT INTO `loghistories` VALUES (1523, 1, 'languages', 'Changed WebSite Language as Français', '2023-05-29 20:30:34', '2023-05-29 20:30:34', NULL);
INSERT INTO `loghistories` VALUES (1524, 1, 'languages', 'Existing Item View', '2023-05-29 20:30:34', '2023-05-29 20:30:34', NULL);
INSERT INTO `loghistories` VALUES (1525, 1, 'languages', 'Language List View', '2023-05-29 20:37:46', '2023-05-29 20:37:46', NULL);
INSERT INTO `loghistories` VALUES (1526, 1, 'languages', 'Language List View', '2023-05-29 20:37:49', '2023-05-29 20:37:49', NULL);
INSERT INTO `loghistories` VALUES (1527, 1, 'languages', 'Language List View', '2023-05-29 20:39:56', '2023-05-29 20:39:56', NULL);
INSERT INTO `loghistories` VALUES (1528, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:40:02', '2023-05-29 20:40:02', NULL);
INSERT INTO `loghistories` VALUES (1529, 1, 'languages', 'New Language Create Page', '2023-05-29 20:40:09', '2023-05-29 20:40:09', NULL);
INSERT INTO `loghistories` VALUES (1530, 1, 'languages', 'Existing Item View', '2023-05-29 20:40:37', '2023-05-29 20:40:37', NULL);
INSERT INTO `loghistories` VALUES (1531, 1, 'languages', 'Language List View', '2023-05-29 20:41:04', '2023-05-29 20:41:04', NULL);
INSERT INTO `loghistories` VALUES (1532, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:42:18', '2023-05-29 20:42:18', NULL);
INSERT INTO `loghistories` VALUES (1533, 1, 'languages', 'Existing Item Updated', '2023-05-29 20:42:27', '2023-05-29 20:42:27', NULL);
INSERT INTO `loghistories` VALUES (1534, 1, 'languages', 'Existing Item Edit Page', '2023-05-29 20:42:31', '2023-05-29 20:42:31', NULL);
INSERT INTO `loghistories` VALUES (1535, 1, 'languages', 'Existing Item Updated', '2023-05-29 20:48:09', '2023-05-29 20:48:09', NULL);
INSERT INTO `loghistories` VALUES (1536, 1, 'languages', 'Language List View', '2023-05-29 20:48:18', '2023-05-29 20:48:18', NULL);
INSERT INTO `loghistories` VALUES (1537, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-29 20:48:31', '2023-05-29 20:48:31', NULL);
INSERT INTO `loghistories` VALUES (1538, 1, 'languages', 'Language List View', '2023-05-29 20:48:31', '2023-05-29 20:48:31', NULL);
INSERT INTO `loghistories` VALUES (1539, 1, 'languages', 'Changed WebSite Language as Svenska', '2023-05-29 20:48:42', '2023-05-29 20:48:42', NULL);
INSERT INTO `loghistories` VALUES (1540, 1, 'languages', 'Language List View', '2023-05-29 20:48:42', '2023-05-29 20:48:42', NULL);
INSERT INTO `loghistories` VALUES (1541, 1, 'languages', 'Changed WebSite Language as Français', '2023-05-29 20:48:49', '2023-05-29 20:48:49', NULL);
INSERT INTO `loghistories` VALUES (1542, 1, 'languages', 'Language List View', '2023-05-29 20:48:49', '2023-05-29 20:48:49', NULL);
INSERT INTO `loghistories` VALUES (1543, 1, 'languages', 'Language List View', '2023-05-29 20:50:15', '2023-05-29 20:50:15', NULL);
INSERT INTO `loghistories` VALUES (1544, 14, 'prices', 'Price List by type (1) View', '2023-05-30 10:00:29', '2023-05-30 10:00:29', NULL);
INSERT INTO `loghistories` VALUES (1545, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 10:00:34', '2023-05-30 10:00:34', NULL);
INSERT INTO `loghistories` VALUES (1546, 14, 'prices', 'Price List View', '2023-05-30 10:00:38', '2023-05-30 10:00:38', NULL);
INSERT INTO `loghistories` VALUES (1547, 14, 'languages', 'Language List View', '2023-05-30 10:02:16', '2023-05-30 10:02:16', NULL);
INSERT INTO `loghistories` VALUES (1548, 14, 'languages', 'Language Detail View Page', '2023-05-30 10:02:23', '2023-05-30 10:02:23', NULL);
INSERT INTO `loghistories` VALUES (1549, 14, 'prices', 'Price List by type (1) View', '2023-05-30 10:02:48', '2023-05-30 10:02:48', NULL);
INSERT INTO `loghistories` VALUES (1550, 14, 'prices', 'Price List by type (12) View', '2023-05-30 10:03:37', '2023-05-30 10:03:37', NULL);
INSERT INTO `loghistories` VALUES (1551, 14, 'pricetypes', 'Price Type List View', '2023-05-30 10:03:41', '2023-05-30 10:03:41', NULL);
INSERT INTO `loghistories` VALUES (1552, 14, 'prices', 'Price List View', '2023-05-30 10:03:45', '2023-05-30 10:03:45', NULL);
INSERT INTO `loghistories` VALUES (1553, 14, 'prices', 'Price List by type (1) View', '2023-05-30 10:03:58', '2023-05-30 10:03:58', NULL);
INSERT INTO `loghistories` VALUES (1554, 14, 'prices', 'Price List by type (12) View', '2023-05-30 10:04:01', '2023-05-30 10:04:01', NULL);
INSERT INTO `loghistories` VALUES (1555, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 10:04:18', '2023-05-30 10:04:18', NULL);
INSERT INTO `loghistories` VALUES (1556, 14, 'prices', 'Price List View', '2023-05-30 10:04:32', '2023-05-30 10:04:32', NULL);
INSERT INTO `loghistories` VALUES (1557, 14, 'prices', 'Price List by type (12) View', '2023-05-30 10:08:24', '2023-05-30 10:08:24', NULL);
INSERT INTO `loghistories` VALUES (1558, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 10:08:46', '2023-05-30 10:08:46', NULL);
INSERT INTO `loghistories` VALUES (1559, 14, 'prices', 'Price List View', '2023-05-30 10:09:09', '2023-05-30 10:09:09', NULL);
INSERT INTO `loghistories` VALUES (1560, 14, 'prices', 'Price List by type (12) View', '2023-05-30 10:09:14', '2023-05-30 10:09:14', NULL);
INSERT INTO `loghistories` VALUES (1561, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 10:09:17', '2023-05-30 10:09:17', NULL);
INSERT INTO `loghistories` VALUES (1562, 1, 'languages', 'Language List View', '2023-05-30 10:14:02', '2023-05-30 10:14:02', NULL);
INSERT INTO `loghistories` VALUES (1563, 14, 'languages', 'Language List View', '2023-05-30 10:19:36', '2023-05-30 10:19:36', NULL);
INSERT INTO `loghistories` VALUES (1564, 14, 'languages', 'Language List View', '2023-05-30 10:19:38', '2023-05-30 10:19:38', NULL);
INSERT INTO `loghistories` VALUES (1565, 14, 'languages', 'Language Detail View Page', '2023-05-30 10:19:41', '2023-05-30 10:19:41', NULL);
INSERT INTO `loghistories` VALUES (1566, 14, 'languages', 'Language List View', '2023-05-30 10:25:23', '2023-05-30 10:25:23', NULL);
INSERT INTO `loghistories` VALUES (1567, 14, 'languages', 'Language Detail View Page', '2023-05-30 10:25:25', '2023-05-30 10:25:25', NULL);
INSERT INTO `loghistories` VALUES (1568, 14, 'languages', 'Language List View', '2023-05-30 10:34:05', '2023-05-30 10:34:05', NULL);
INSERT INTO `loghistories` VALUES (1569, 14, 'languages', 'Language Detail View Page', '2023-05-30 10:34:08', '2023-05-30 10:34:08', NULL);
INSERT INTO `loghistories` VALUES (1570, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-30 10:34:16', '2023-05-30 10:34:16', NULL);
INSERT INTO `loghistories` VALUES (1571, 14, 'languages', 'Language List View', '2023-05-30 10:34:17', '2023-05-30 10:34:17', NULL);
INSERT INTO `loghistories` VALUES (1572, 14, 'languages', 'Changed WebSite Language as English', '2023-05-30 10:34:22', '2023-05-30 10:34:22', NULL);
INSERT INTO `loghistories` VALUES (1573, 14, 'languages', 'Language List View', '2023-05-30 10:34:23', '2023-05-30 10:34:23', NULL);
INSERT INTO `loghistories` VALUES (1574, 14, 'languages', 'Language Detail View Page', '2023-05-30 10:34:29', '2023-05-30 10:34:29', NULL);
INSERT INTO `loghistories` VALUES (1575, 14, 'languages', 'New Language Key Updated', '2023-05-30 10:34:45', '2023-05-30 10:34:45', NULL);
INSERT INTO `loghistories` VALUES (1576, 14, 'languages', 'Language Detail View Page', '2023-05-30 10:34:46', '2023-05-30 10:34:46', NULL);
INSERT INTO `loghistories` VALUES (1577, 14, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-30 10:34:55', '2023-05-30 10:34:55', NULL);
INSERT INTO `loghistories` VALUES (1578, 14, 'languages', 'Changed WebSite Language as English', '2023-05-30 10:34:57', '2023-05-30 10:34:57', NULL);
INSERT INTO `loghistories` VALUES (1579, 14, 'languages', 'Language List View', '2023-05-30 10:36:20', '2023-05-30 10:36:20', NULL);
INSERT INTO `loghistories` VALUES (1580, 14, 'languages', 'Existing Item View', '2023-05-30 10:36:24', '2023-05-30 10:36:24', NULL);
INSERT INTO `loghistories` VALUES (1581, 14, 'languages', 'Existing Item Edit Page', '2023-05-30 10:36:27', '2023-05-30 10:36:27', NULL);
INSERT INTO `loghistories` VALUES (1582, 14, 'languages', 'Existing Item Updated', '2023-05-30 10:36:30', '2023-05-30 10:36:30', NULL);
INSERT INTO `loghistories` VALUES (1583, 14, 'languages', 'Language List View', '2023-05-30 10:36:34', '2023-05-30 10:36:34', NULL);
INSERT INTO `loghistories` VALUES (1584, 14, 'languages', 'Language Detail View Page', '2023-05-30 10:36:50', '2023-05-30 10:36:50', NULL);
INSERT INTO `loghistories` VALUES (1585, 14, 'prices', 'Price List by type (1) View', '2023-05-30 10:37:37', '2023-05-30 10:37:37', NULL);
INSERT INTO `loghistories` VALUES (1586, 14, 'prices', 'Price List by type (3) View', '2023-05-30 10:48:24', '2023-05-30 10:48:24', NULL);
INSERT INTO `loghistories` VALUES (1587, 14, 'prices', 'Price List by type (1) View', '2023-05-30 10:48:25', '2023-05-30 10:48:25', NULL);
INSERT INTO `loghistories` VALUES (1588, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 10:48:27', '2023-05-30 10:48:27', NULL);
INSERT INTO `loghistories` VALUES (1589, 14, 'prices', 'Price List View', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL);
INSERT INTO `loghistories` VALUES (1590, 14, 'prices', 'Price List by type (1) View', '2023-05-30 10:48:47', '2023-05-30 10:48:47', NULL);
INSERT INTO `loghistories` VALUES (1591, 14, 'prices', 'Price List by type (3) View', '2023-05-30 11:36:54', '2023-05-30 11:36:54', NULL);
INSERT INTO `loghistories` VALUES (1592, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 11:38:08', '2023-05-30 11:38:08', NULL);
INSERT INTO `loghistories` VALUES (1593, 14, 'prices', 'Price List View', '2023-05-30 11:38:19', '2023-05-30 11:38:19', NULL);
INSERT INTO `loghistories` VALUES (1594, 14, 'prices', 'Price List by type (3) View', '2023-05-30 11:38:22', '2023-05-30 11:38:22', NULL);
INSERT INTO `loghistories` VALUES (1595, 14, 'prices', 'Price List by type (4) View', '2023-05-30 11:40:51', '2023-05-30 11:40:51', NULL);
INSERT INTO `loghistories` VALUES (1596, 14, 'prices', 'Price List by type (6) View', '2023-05-30 11:40:56', '2023-05-30 11:40:56', NULL);
INSERT INTO `loghistories` VALUES (1597, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 11:44:01', '2023-05-30 11:44:01', NULL);
INSERT INTO `loghistories` VALUES (1598, 14, 'prices', 'Price List View', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL);
INSERT INTO `loghistories` VALUES (1599, 14, 'prices', 'Price List by type (6) View', '2023-05-30 11:44:21', '2023-05-30 11:44:21', NULL);
INSERT INTO `loghistories` VALUES (1600, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 11:44:22', '2023-05-30 11:44:22', NULL);
INSERT INTO `loghistories` VALUES (1601, 14, 'prices', 'Price List by type (8) View', '2023-05-30 11:44:27', '2023-05-30 11:44:27', NULL);
INSERT INTO `loghistories` VALUES (1602, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 11:44:31', '2023-05-30 11:44:31', NULL);
INSERT INTO `loghistories` VALUES (1603, 14, 'prices', 'Price List View', '2023-05-30 11:44:35', '2023-05-30 11:44:35', NULL);
INSERT INTO `loghistories` VALUES (1604, 14, 'prices', 'Price List by type (8) View', '2023-05-30 11:44:37', '2023-05-30 11:44:37', NULL);
INSERT INTO `loghistories` VALUES (1605, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 11:46:00', '2023-05-30 11:46:00', NULL);
INSERT INTO `loghistories` VALUES (1606, 14, 'prices', 'Price List View', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL);
INSERT INTO `loghistories` VALUES (1607, 14, 'prices', 'Price List by type (8) View', '2023-05-30 11:46:11', '2023-05-30 11:46:11', NULL);
INSERT INTO `loghistories` VALUES (1608, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 11:46:13', '2023-05-30 11:46:13', NULL);
INSERT INTO `loghistories` VALUES (1609, 14, 'prices', 'Price List by type (1) View', '2023-05-30 11:46:21', '2023-05-30 11:46:21', NULL);
INSERT INTO `loghistories` VALUES (1610, 14, 'prices', 'Price List by type (3) View', '2023-05-30 11:46:23', '2023-05-30 11:46:23', NULL);
INSERT INTO `loghistories` VALUES (1611, 14, 'prices', 'Price List by type (6) View', '2023-05-30 11:46:28', '2023-05-30 11:46:28', NULL);
INSERT INTO `loghistories` VALUES (1612, 14, 'prices', 'Price List by type (8) View', '2023-05-30 11:46:32', '2023-05-30 11:46:32', NULL);
INSERT INTO `loghistories` VALUES (1613, 14, 'prices', 'Price List by type (10) View', '2023-05-30 11:46:36', '2023-05-30 11:46:36', NULL);
INSERT INTO `loghistories` VALUES (1614, 14, 'prices', 'Price List by type (11) View', '2023-05-30 11:46:39', '2023-05-30 11:46:39', NULL);
INSERT INTO `loghistories` VALUES (1615, 14, 'prices', 'Price List by type (12) View', '2023-05-30 11:46:41', '2023-05-30 11:46:41', NULL);
INSERT INTO `loghistories` VALUES (1616, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 11:46:43', '2023-05-30 11:46:43', NULL);
INSERT INTO `loghistories` VALUES (1617, 14, 'prices', 'Price List by type (13) View', '2023-05-30 11:46:53', '2023-05-30 11:46:53', NULL);
INSERT INTO `loghistories` VALUES (1618, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 11:49:20', '2023-05-30 11:49:20', NULL);
INSERT INTO `loghistories` VALUES (1619, 14, 'prices', 'Price List View', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL);
INSERT INTO `loghistories` VALUES (1620, 14, 'prices', 'Price List by type (13) View', '2023-05-30 11:49:41', '2023-05-30 11:49:41', NULL);
INSERT INTO `loghistories` VALUES (1621, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 11:49:51', '2023-05-30 11:49:51', NULL);
INSERT INTO `loghistories` VALUES (1622, 14, 'prices', 'Price List View', '2023-05-30 11:49:54', '2023-05-30 11:49:54', NULL);
INSERT INTO `loghistories` VALUES (1623, 14, 'prices', 'Price List by type (4) View', '2023-05-30 11:51:11', '2023-05-30 11:51:11', NULL);
INSERT INTO `loghistories` VALUES (1624, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 11:52:04', '2023-05-30 11:52:04', NULL);
INSERT INTO `loghistories` VALUES (1625, 14, 'prices', 'Price List View', '2023-05-30 11:52:13', '2023-05-30 11:52:13', NULL);
INSERT INTO `loghistories` VALUES (1626, 14, 'prices', 'Price List by type (4) View', '2023-05-30 11:52:17', '2023-05-30 11:52:17', NULL);
INSERT INTO `loghistories` VALUES (1627, 14, 'prices', 'Existing Item Editing Page', '2023-05-30 11:52:18', '2023-05-30 11:52:18', NULL);
INSERT INTO `loghistories` VALUES (1628, 14, 'prices', 'Price List View', '2023-05-30 11:52:22', '2023-05-30 11:52:22', NULL);
INSERT INTO `loghistories` VALUES (1629, 14, 'prices', 'Price List by type (12) View', '2023-05-30 13:17:34', '2023-05-30 13:17:34', NULL);
INSERT INTO `loghistories` VALUES (1630, 14, 'prices', 'Price List by type (8) View', '2023-05-30 13:36:13', '2023-05-30 13:36:13', NULL);
INSERT INTO `loghistories` VALUES (1631, 14, 'prices', 'Price List by type (8) View', '2023-05-30 13:36:17', '2023-05-30 13:36:17', NULL);
INSERT INTO `loghistories` VALUES (1632, 14, 'prices', 'Price List by type (11) View', '2023-05-30 13:41:55', '2023-05-30 13:41:55', NULL);
INSERT INTO `loghistories` VALUES (1633, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 13:41:57', '2023-05-30 13:41:57', NULL);
INSERT INTO `loghistories` VALUES (1634, 14, 'prices', 'Price List View', '2023-05-30 13:42:07', '2023-05-30 13:42:07', NULL);
INSERT INTO `loghistories` VALUES (1635, 14, 'prices', 'Price List by type (11) View', '2023-05-30 13:42:11', '2023-05-30 13:42:11', NULL);
INSERT INTO `loghistories` VALUES (1636, 14, 'prices', 'Price List by type (10) View', '2023-05-30 13:42:20', '2023-05-30 13:42:20', NULL);
INSERT INTO `loghistories` VALUES (1637, 14, 'prices', 'Price List by type (10) View', '2023-05-30 13:49:29', '2023-05-30 13:49:29', NULL);
INSERT INTO `loghistories` VALUES (1638, 14, 'prices', 'Excel Import Showing Page', '2023-05-30 13:49:31', '2023-05-30 13:49:31', NULL);
INSERT INTO `loghistories` VALUES (1639, 14, 'prices', 'Price List View', '2023-05-30 13:49:48', '2023-05-30 13:49:48', NULL);
INSERT INTO `loghistories` VALUES (1640, 14, 'prices', 'Price List by type (10) View', '2023-05-30 13:49:56', '2023-05-30 13:49:56', NULL);
INSERT INTO `loghistories` VALUES (1641, 14, 'prices', 'Existing Item Deleted', '2023-05-30 13:50:40', '2023-05-30 13:50:40', NULL);
INSERT INTO `loghistories` VALUES (1642, 14, 'prices', 'Price List by type (10) View', '2023-05-30 13:50:41', '2023-05-30 13:50:41', NULL);
INSERT INTO `loghistories` VALUES (1643, 14, 'prices', 'Existing Item Deleted', '2023-05-30 13:50:47', '2023-05-30 13:50:47', NULL);
INSERT INTO `loghistories` VALUES (1644, 14, 'prices', 'Price List by type (10) View', '2023-05-30 13:50:47', '2023-05-30 13:50:47', NULL);
INSERT INTO `loghistories` VALUES (1645, 14, 'prices', 'Existing Item Deleted', '2023-05-30 13:50:52', '2023-05-30 13:50:52', NULL);
INSERT INTO `loghistories` VALUES (1646, 14, 'prices', 'Price List by type (10) View', '2023-05-30 13:50:52', '2023-05-30 13:50:52', NULL);
INSERT INTO `loghistories` VALUES (1647, 14, 'prices', 'Existing Item Deleted', '2023-05-30 13:50:54', '2023-05-30 13:50:54', NULL);
INSERT INTO `loghistories` VALUES (1648, 14, 'prices', 'Price List by type (10) View', '2023-05-30 13:50:55', '2023-05-30 13:50:55', NULL);
INSERT INTO `loghistories` VALUES (1649, 14, 'languages', 'Changed WebSite Language as Polski', '2023-05-30 14:44:07', '2023-05-30 14:44:07', NULL);
INSERT INTO `loghistories` VALUES (1650, 14, 'languages', 'Changed WebSite Language as English', '2023-05-30 14:45:07', '2023-05-30 14:45:07', NULL);
INSERT INTO `loghistories` VALUES (1651, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-05-30 15:05:03', '2023-05-30 15:05:03', NULL);
INSERT INTO `loghistories` VALUES (1652, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-05-30 15:05:15', '2023-05-30 15:05:15', NULL);
INSERT INTO `loghistories` VALUES (1653, 14, 'languages', 'Changed WebSite Language as Dansk', '2023-05-30 15:06:01', '2023-05-30 15:06:01', NULL);
INSERT INTO `loghistories` VALUES (1654, 14, 'languages', 'Changed WebSite Language as English', '2023-05-30 15:06:14', '2023-05-30 15:06:14', NULL);
INSERT INTO `loghistories` VALUES (1655, 1, 'languages', 'Language List View', '2023-05-30 15:06:28', '2023-05-30 15:06:28', NULL);
INSERT INTO `loghistories` VALUES (1656, 1, 'languages', 'Changed WebSite Language as English', '2023-05-30 15:25:28', '2023-05-30 15:25:28', NULL);
INSERT INTO `loghistories` VALUES (1657, 1, 'pricemanages', 'Price management View', '2023-05-30 15:37:51', '2023-05-30 15:37:51', NULL);
INSERT INTO `loghistories` VALUES (1658, 1, 'pricings', 'Pricing Class View', '2023-05-30 15:37:57', '2023-05-30 15:37:57', NULL);
INSERT INTO `loghistories` VALUES (1659, 1, 'prices', 'Price List View', '2023-05-30 15:38:00', '2023-05-30 15:38:00', NULL);
INSERT INTO `loghistories` VALUES (1660, 1, 'pricetypes', 'Price Type List View', '2023-05-30 15:38:03', '2023-05-30 15:38:03', NULL);
INSERT INTO `loghistories` VALUES (1661, 14, 'languages', 'Language List View', '2023-05-30 15:49:02', '2023-05-30 15:49:02', NULL);
INSERT INTO `loghistories` VALUES (1662, 14, 'pricings', 'Pricing Class View', '2023-05-30 15:55:19', '2023-05-30 15:55:19', NULL);
INSERT INTO `loghistories` VALUES (1663, 14, 'pricecompetitors', 'Price Type List View', '2023-05-30 15:55:55', '2023-05-30 15:55:55', NULL);
INSERT INTO `loghistories` VALUES (1664, 14, 'pricecompares', 'Price All Competitors by tech View', '2023-05-30 15:56:01', '2023-05-30 15:56:01', NULL);
INSERT INTO `loghistories` VALUES (1665, 14, 'pricecompetitors', 'Price Type List View', '2023-05-30 15:56:12', '2023-05-30 15:56:12', NULL);
INSERT INTO `loghistories` VALUES (1666, 14, 'languages', 'Language List View', '2023-05-31 09:46:36', '2023-05-31 09:46:36', NULL);
INSERT INTO `loghistories` VALUES (1667, 14, 'languages', 'Language Detail View Page', '2023-05-31 09:46:51', '2023-05-31 09:46:51', NULL);
INSERT INTO `loghistories` VALUES (1668, 14, 'languages', 'New Language Key Saved', '2023-05-31 09:47:33', '2023-05-31 09:47:33', NULL);
INSERT INTO `loghistories` VALUES (1669, 14, 'languages', 'Language Detail View Page', '2023-05-31 09:47:33', '2023-05-31 09:47:33', NULL);
INSERT INTO `loghistories` VALUES (1670, 14, 'languages', 'Language List View', '2023-05-31 09:50:20', '2023-05-31 09:50:20', NULL);
INSERT INTO `loghistories` VALUES (1671, 14, 'languages', 'Existing Item deleted', '2023-05-31 09:50:31', '2023-05-31 09:50:31', NULL);
INSERT INTO `loghistories` VALUES (1672, 14, 'languages', 'Language List View', '2023-05-31 09:50:31', '2023-05-31 09:50:31', NULL);
INSERT INTO `loghistories` VALUES (1673, 14, 'languages', 'New Language Create Page', '2023-05-31 09:50:38', '2023-05-31 09:50:38', NULL);
INSERT INTO `loghistories` VALUES (1674, 14, 'languages', 'New Item Saved', '2023-05-31 09:50:50', '2023-05-31 09:50:50', NULL);
INSERT INTO `loghistories` VALUES (1675, 14, 'languages', 'Language List View', '2023-05-31 09:50:57', '2023-05-31 09:50:57', NULL);
INSERT INTO `loghistories` VALUES (1676, 14, 'languages', 'Existing Item Edit Page', '2023-05-31 09:51:14', '2023-05-31 09:51:14', NULL);
INSERT INTO `loghistories` VALUES (1677, 14, 'languages', 'Language Detail View Page', '2023-05-31 09:51:20', '2023-05-31 09:51:20', NULL);
INSERT INTO `loghistories` VALUES (1678, 14, 'languages', 'Language Detail View Page', '2023-05-31 09:51:42', '2023-05-31 09:51:42', NULL);
INSERT INTO `loghistories` VALUES (1679, 14, 'languages', 'Language List View', '2023-05-31 09:59:43', '2023-05-31 09:59:43', NULL);
INSERT INTO `loghistories` VALUES (1680, 14, 'languages', 'Language Detail View Page', '2023-05-31 09:59:50', '2023-05-31 09:59:50', NULL);
INSERT INTO `loghistories` VALUES (1681, 14, 'languages', 'New Language Key Saved', '2023-05-31 09:59:56', '2023-05-31 09:59:56', NULL);
INSERT INTO `loghistories` VALUES (1682, 14, 'languages', 'Language Detail View Page', '2023-05-31 09:59:57', '2023-05-31 09:59:57', NULL);
INSERT INTO `loghistories` VALUES (1683, 14, 'languages', 'Language List View', '2023-05-31 10:00:44', '2023-05-31 10:00:44', NULL);
INSERT INTO `loghistories` VALUES (1684, 14, 'languages', 'Language Detail View Page', '2023-05-31 10:00:49', '2023-05-31 10:00:49', NULL);
INSERT INTO `loghistories` VALUES (1685, 14, 'languages', 'New Language Key Saved', '2023-05-31 10:03:23', '2023-05-31 10:03:23', NULL);
INSERT INTO `loghistories` VALUES (1686, 14, 'languages', 'Language Detail View Page', '2023-05-31 10:03:23', '2023-05-31 10:03:23', NULL);
INSERT INTO `loghistories` VALUES (1687, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-31 10:03:34', '2023-05-31 10:03:34', NULL);
INSERT INTO `loghistories` VALUES (1688, 14, 'languages', 'Language Detail View Page', '2023-05-31 10:03:35', '2023-05-31 10:03:35', NULL);
INSERT INTO `loghistories` VALUES (1689, 14, 'languages', 'Changed WebSite Language as English', '2023-05-31 10:06:46', '2023-05-31 10:06:46', NULL);
INSERT INTO `loghistories` VALUES (1690, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-31 10:07:02', '2023-05-31 10:07:02', NULL);
INSERT INTO `loghistories` VALUES (1691, 14, 'languages', 'Changed WebSite Language as English', '2023-05-31 10:07:20', '2023-05-31 10:07:20', NULL);
INSERT INTO `loghistories` VALUES (1692, 14, 'languages', 'Language List View', '2023-05-31 10:13:09', '2023-05-31 10:13:09', NULL);
INSERT INTO `loghistories` VALUES (1693, 14, 'languages', 'Language Detail View Page', '2023-05-31 10:13:16', '2023-05-31 10:13:16', NULL);
INSERT INTO `loghistories` VALUES (1694, 14, 'languages', 'Language List View', '2023-05-31 10:13:24', '2023-05-31 10:13:24', NULL);
INSERT INTO `loghistories` VALUES (1695, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-31 10:13:28', '2023-05-31 10:13:28', NULL);
INSERT INTO `loghistories` VALUES (1696, 14, 'languages', 'Language List View', '2023-05-31 10:13:28', '2023-05-31 10:13:28', NULL);
INSERT INTO `loghistories` VALUES (1697, 14, 'languages', 'Language Detail View Page', '2023-05-31 10:13:34', '2023-05-31 10:13:34', NULL);
INSERT INTO `loghistories` VALUES (1698, 14, 'languages', 'Changed WebSite Language as English', '2023-05-31 10:13:50', '2023-05-31 10:13:50', NULL);
INSERT INTO `loghistories` VALUES (1699, 14, 'languages', 'Changed WebSite Language as Français', '2023-05-31 10:13:56', '2023-05-31 10:13:56', NULL);
INSERT INTO `loghistories` VALUES (1700, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-05-31 12:30:00', '2023-05-31 12:30:00', NULL);
INSERT INTO `loghistories` VALUES (1701, 1, 'languages', 'Changed WebSite Language as English', '2023-05-31 12:30:17', '2023-05-31 12:30:17', NULL);
INSERT INTO `loghistories` VALUES (1702, 1, 'prices', 'Price List by type (1) View', '2023-05-31 12:31:59', '2023-05-31 12:31:59', NULL);
INSERT INTO `loghistories` VALUES (1703, 1, 'prices', 'Price List by type (4) View', '2023-05-31 12:32:09', '2023-05-31 12:32:09', NULL);
INSERT INTO `loghistories` VALUES (1704, 1, 'pricecompetitors', 'Price Type List View', '2023-05-31 12:41:45', '2023-05-31 12:41:45', NULL);
INSERT INTO `loghistories` VALUES (1705, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-05-31 12:41:52', '2023-05-31 12:41:52', NULL);
INSERT INTO `loghistories` VALUES (1706, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-05-31 12:42:59', '2023-05-31 12:42:59', NULL);
INSERT INTO `loghistories` VALUES (1707, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-05-31 12:42:59', '2023-05-31 12:42:59', NULL);
INSERT INTO `loghistories` VALUES (1708, 14, 'prices', 'Price List by type (12) View', '2023-06-01 16:04:11', '2023-06-01 16:04:11', NULL);
INSERT INTO `loghistories` VALUES (1709, 14, 'prices', 'Existing Item Editing Page', '2023-06-01 16:06:57', '2023-06-01 16:06:57', NULL);
INSERT INTO `loghistories` VALUES (1710, 14, 'prices', 'Price List View', '2023-06-01 16:07:12', '2023-06-01 16:07:12', NULL);
INSERT INTO `loghistories` VALUES (1711, 14, 'prices', 'New Item Creating Page', '2023-06-01 16:07:58', '2023-06-01 16:07:58', NULL);
INSERT INTO `loghistories` VALUES (1712, 14, 'prices', 'New Item Saved', '2023-06-01 16:08:39', '2023-06-01 16:08:39', NULL);
INSERT INTO `loghistories` VALUES (1713, 14, 'prices', 'Price List by type (12) View', '2023-06-01 16:08:44', '2023-06-01 16:08:44', NULL);
INSERT INTO `loghistories` VALUES (1714, 14, 'prices', 'Existing Item Editing Page', '2023-06-01 16:08:52', '2023-06-01 16:08:52', NULL);
INSERT INTO `loghistories` VALUES (1715, 14, 'prices', 'Existing Item Updated', '2023-06-01 16:09:03', '2023-06-01 16:09:03', NULL);
INSERT INTO `loghistories` VALUES (1716, 14, 'prices', 'Price List View', '2023-06-01 16:09:05', '2023-06-01 16:09:05', NULL);
INSERT INTO `loghistories` VALUES (1717, 14, 'prices', 'Price List by type (12) View', '2023-06-01 16:09:13', '2023-06-01 16:09:13', NULL);
INSERT INTO `loghistories` VALUES (1718, 14, 'prices', 'Existing Item Editing Page', '2023-06-01 16:09:20', '2023-06-01 16:09:20', NULL);
INSERT INTO `loghistories` VALUES (1719, 14, 'prices', 'Existing Item Editing Page', '2023-06-01 16:09:37', '2023-06-01 16:09:37', NULL);
INSERT INTO `loghistories` VALUES (1720, 14, 'prices', 'Existing Item Editing Page', '2023-06-01 16:09:49', '2023-06-01 16:09:49', NULL);
INSERT INTO `loghistories` VALUES (1721, 14, 'prices', 'Price List by type (12) View', '2023-06-01 16:10:01', '2023-06-01 16:10:01', NULL);
INSERT INTO `loghistories` VALUES (1722, 14, 'prices', 'Existing Item Editing Page', '2023-06-01 16:10:04', '2023-06-01 16:10:04', NULL);
INSERT INTO `loghistories` VALUES (1723, 14, 'prices', 'Price List by type (12) View', '2023-06-01 16:11:37', '2023-06-01 16:11:37', NULL);
INSERT INTO `loghistories` VALUES (1724, 14, 'prices', 'Excel Import Showing Page', '2023-06-01 16:11:44', '2023-06-01 16:11:44', NULL);
INSERT INTO `loghistories` VALUES (1725, 14, 'prices', 'Price List View', '2023-06-01 16:12:04', '2023-06-01 16:12:04', NULL);
INSERT INTO `loghistories` VALUES (1726, 14, 'prices', 'Price List by type (12) View', '2023-06-01 16:12:07', '2023-06-01 16:12:07', NULL);
INSERT INTO `loghistories` VALUES (1727, 14, 'prices', 'Excel Import Showing Page', '2023-06-01 16:13:12', '2023-06-01 16:13:12', NULL);
INSERT INTO `loghistories` VALUES (1728, 14, 'prices', 'Price List View', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL);
INSERT INTO `loghistories` VALUES (1729, 14, 'prices', 'Price List by type (12) View', '2023-06-01 16:13:25', '2023-06-01 16:13:25', NULL);
INSERT INTO `loghistories` VALUES (1730, 1, 'languages', 'Changed WebSite Language as Français', '2023-06-02 12:57:57', '2023-06-02 12:57:57', NULL);
INSERT INTO `loghistories` VALUES (1731, 1, 'pricetypes', 'Price Type List View', '2023-06-02 12:59:53', '2023-06-02 12:59:53', NULL);
INSERT INTO `loghistories` VALUES (1732, 1, 'prices', 'Price List View', '2023-06-02 13:00:00', '2023-06-02 13:00:00', NULL);
INSERT INTO `loghistories` VALUES (1733, 1, 'pricemanages', 'Price management View', '2023-06-02 13:00:10', '2023-06-02 13:00:10', NULL);
INSERT INTO `loghistories` VALUES (1734, 1, 'pricecompetitors', 'Price Type List View', '2023-06-02 13:00:22', '2023-06-02 13:00:22', NULL);
INSERT INTO `loghistories` VALUES (1735, 1, 'languages', 'Changed WebSite Language as English', '2023-06-02 13:02:27', '2023-06-02 13:02:27', NULL);
INSERT INTO `loghistories` VALUES (1736, 1, 'pricecompetitors', 'Price Type List View', '2023-06-02 13:03:55', '2023-06-02 13:03:55', NULL);
INSERT INTO `loghistories` VALUES (1737, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-06-06 10:50:38', '2023-06-06 10:50:38', NULL);
INSERT INTO `loghistories` VALUES (1738, 14, 'languages', 'Language List View', '2023-06-06 15:19:46', '2023-06-06 15:19:46', NULL);
INSERT INTO `loghistories` VALUES (1739, 14, 'languages', 'Changed WebSite Language as Français', '2023-06-06 15:21:24', '2023-06-06 15:21:24', NULL);
INSERT INTO `loghistories` VALUES (1740, 14, 'pricecompetitors', 'Price Type List View', '2023-06-06 15:27:14', '2023-06-06 15:27:14', NULL);
INSERT INTO `loghistories` VALUES (1741, 14, 'pricecompares', 'Price All Competitors by tech View', '2023-06-06 15:27:17', '2023-06-06 15:27:17', NULL);
INSERT INTO `loghistories` VALUES (1742, 14, 'languages', 'Language List View', '2023-06-06 15:27:31', '2023-06-06 15:27:31', NULL);
INSERT INTO `loghistories` VALUES (1743, 14, 'languages', 'Changed WebSite Language as English', '2023-06-06 15:34:53', '2023-06-06 15:34:53', NULL);
INSERT INTO `loghistories` VALUES (1744, 14, 'pricetypes', 'Price Type List View', '2023-06-06 17:48:19', '2023-06-06 17:48:19', NULL);
INSERT INTO `loghistories` VALUES (1745, 14, 'prices', 'Price List by type (1) View', '2023-06-06 17:59:47', '2023-06-06 17:59:47', NULL);
INSERT INTO `loghistories` VALUES (1746, 14, 'languages', 'Language List View', '2023-06-06 18:00:11', '2023-06-06 18:00:11', NULL);
INSERT INTO `loghistories` VALUES (1747, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:00:15', '2023-06-06 18:00:15', NULL);
INSERT INTO `loghistories` VALUES (1748, 14, 'languages', 'Language List View', '2023-06-06 18:00:49', '2023-06-06 18:00:49', NULL);
INSERT INTO `loghistories` VALUES (1749, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:00:52', '2023-06-06 18:00:52', NULL);
INSERT INTO `loghistories` VALUES (1750, 14, 'languages', 'New Language Key Saved', '2023-06-06 18:01:45', '2023-06-06 18:01:45', NULL);
INSERT INTO `loghistories` VALUES (1751, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:01:45', '2023-06-06 18:01:45', NULL);
INSERT INTO `loghistories` VALUES (1752, 14, 'languages', 'Language List View', '2023-06-06 18:01:56', '2023-06-06 18:01:56', NULL);
INSERT INTO `loghistories` VALUES (1753, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:02:02', '2023-06-06 18:02:02', NULL);
INSERT INTO `loghistories` VALUES (1754, 14, 'languages', 'New Language Key Saved', '2023-06-06 18:02:32', '2023-06-06 18:02:32', NULL);
INSERT INTO `loghistories` VALUES (1755, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:02:32', '2023-06-06 18:02:32', NULL);
INSERT INTO `loghistories` VALUES (1756, 14, 'languages', 'Language List View', '2023-06-06 18:02:36', '2023-06-06 18:02:36', NULL);
INSERT INTO `loghistories` VALUES (1757, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:02:43', '2023-06-06 18:02:43', NULL);
INSERT INTO `loghistories` VALUES (1758, 14, 'languages', 'New Language Key Saved', '2023-06-06 18:03:13', '2023-06-06 18:03:13', NULL);
INSERT INTO `loghistories` VALUES (1759, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:03:13', '2023-06-06 18:03:13', NULL);
INSERT INTO `loghistories` VALUES (1760, 14, 'languages', 'Language List View', '2023-06-06 18:03:17', '2023-06-06 18:03:17', NULL);
INSERT INTO `loghistories` VALUES (1761, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:03:40', '2023-06-06 18:03:40', NULL);
INSERT INTO `loghistories` VALUES (1762, 14, 'languages', 'New Language Key Saved', '2023-06-06 18:04:08', '2023-06-06 18:04:08', NULL);
INSERT INTO `loghistories` VALUES (1763, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:04:08', '2023-06-06 18:04:08', NULL);
INSERT INTO `loghistories` VALUES (1764, 14, 'languages', 'Language List View', '2023-06-06 18:04:12', '2023-06-06 18:04:12', NULL);
INSERT INTO `loghistories` VALUES (1765, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:04:15', '2023-06-06 18:04:15', NULL);
INSERT INTO `loghistories` VALUES (1766, 14, 'languages', 'New Language Key Saved', '2023-06-06 18:04:51', '2023-06-06 18:04:51', NULL);
INSERT INTO `loghistories` VALUES (1767, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:04:51', '2023-06-06 18:04:51', NULL);
INSERT INTO `loghistories` VALUES (1768, 14, 'languages', 'Language List View', '2023-06-06 18:04:54', '2023-06-06 18:04:54', NULL);
INSERT INTO `loghistories` VALUES (1769, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:04:57', '2023-06-06 18:04:57', NULL);
INSERT INTO `loghistories` VALUES (1770, 14, 'languages', 'New Language Key Saved', '2023-06-06 18:05:24', '2023-06-06 18:05:24', NULL);
INSERT INTO `loghistories` VALUES (1771, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:05:25', '2023-06-06 18:05:25', NULL);
INSERT INTO `loghistories` VALUES (1772, 14, 'languages', 'Language List View', '2023-06-06 18:05:37', '2023-06-06 18:05:37', NULL);
INSERT INTO `loghistories` VALUES (1773, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:05:41', '2023-06-06 18:05:41', NULL);
INSERT INTO `loghistories` VALUES (1774, 14, 'languages', 'New Language Key Saved', '2023-06-06 18:06:03', '2023-06-06 18:06:03', NULL);
INSERT INTO `loghistories` VALUES (1775, 14, 'languages', 'Language Detail View Page', '2023-06-06 18:06:04', '2023-06-06 18:06:04', NULL);
INSERT INTO `loghistories` VALUES (1776, 14, 'languages', 'Changed WebSite Language as Norska', '2023-06-06 18:06:35', '2023-06-06 18:06:35', NULL);
INSERT INTO `loghistories` VALUES (1777, 14, 'languages', 'Changed WebSite Language as Dansk', '2023-06-06 18:06:40', '2023-06-06 18:06:40', NULL);
INSERT INTO `loghistories` VALUES (1778, 14, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-06 18:06:43', '2023-06-06 18:06:43', NULL);
INSERT INTO `loghistories` VALUES (1779, 14, 'languages', 'Language List View', '2023-06-06 18:06:45', '2023-06-06 18:06:45', NULL);
INSERT INTO `loghistories` VALUES (1780, 14, 'languages', 'Changed WebSite Language as English', '2023-06-06 18:24:12', '2023-06-06 18:24:12', NULL);
INSERT INTO `loghistories` VALUES (1781, 14, 'languages', 'Language List View', '2023-06-07 11:27:21', '2023-06-07 11:27:21', NULL);
INSERT INTO `loghistories` VALUES (1782, 14, 'languages', 'Language Detail View Page', '2023-06-07 11:27:27', '2023-06-07 11:27:27', NULL);
INSERT INTO `loghistories` VALUES (1783, 14, 'languages', 'Language List View', '2023-06-07 11:27:38', '2023-06-07 11:27:38', NULL);
INSERT INTO `loghistories` VALUES (1784, 14, 'languages', 'Language Detail View Page', '2023-06-07 11:27:40', '2023-06-07 11:27:40', NULL);
INSERT INTO `loghistories` VALUES (1785, 14, 'languages', 'Language List View', '2023-06-07 11:27:52', '2023-06-07 11:27:52', NULL);
INSERT INTO `loghistories` VALUES (1786, 14, 'languages', 'Language Detail View Page', '2023-06-07 11:27:58', '2023-06-07 11:27:58', NULL);
INSERT INTO `loghistories` VALUES (1787, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-07 23:58:45', '2023-06-07 23:58:45', NULL);
INSERT INTO `loghistories` VALUES (1788, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-06-07 23:59:33', '2023-06-07 23:59:33', NULL);
INSERT INTO `loghistories` VALUES (1789, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-07 23:59:58', '2023-06-07 23:59:58', NULL);
INSERT INTO `loghistories` VALUES (1790, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-08 00:03:01', '2023-06-08 00:03:01', NULL);
INSERT INTO `loghistories` VALUES (1791, 1, 'languages', 'Changed WebSite Language as English', '2023-06-08 00:03:28', '2023-06-08 00:03:28', NULL);
INSERT INTO `loghistories` VALUES (1792, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-08 14:55:56', '2023-06-08 14:55:56', NULL);
INSERT INTO `loghistories` VALUES (1793, 1, 'languages', 'Changed WebSite Language as English', '2023-06-08 14:56:33', '2023-06-08 14:56:33', NULL);
INSERT INTO `loghistories` VALUES (1794, 1, 'prices', 'Price List by type (1) View', '2023-06-08 14:56:55', '2023-06-08 14:56:55', NULL);
INSERT INTO `loghistories` VALUES (1795, 1, 'pricings', 'Pricing Class View', '2023-06-08 14:57:18', '2023-06-08 14:57:18', NULL);
INSERT INTO `loghistories` VALUES (1796, 1, 'pricemanages', 'Price management View', '2023-06-08 14:58:01', '2023-06-08 14:58:01', NULL);
INSERT INTO `loghistories` VALUES (1797, 1, 'pricetypes', 'Price Type List View', '2023-06-08 14:58:26', '2023-06-08 14:58:26', NULL);
INSERT INTO `loghistories` VALUES (1798, 1, 'prices', 'Price List View', '2023-06-08 14:58:29', '2023-06-08 14:58:29', NULL);
INSERT INTO `loghistories` VALUES (1799, 1, 'pricecompetitors', 'Price Type List View', '2023-06-08 14:58:40', '2023-06-08 14:58:40', NULL);
INSERT INTO `loghistories` VALUES (1800, 1, 'prices', 'Price List by type (1) View', '2023-06-09 15:30:38', '2023-06-09 15:30:38', NULL);
INSERT INTO `loghistories` VALUES (1801, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-06-09 18:08:58', '2023-06-09 18:08:58', NULL);
INSERT INTO `loghistories` VALUES (1802, 1, 'languages', 'Changed WebSite Language as Français', '2023-06-09 18:50:19', '2023-06-09 18:50:19', NULL);
INSERT INTO `loghistories` VALUES (1803, 1, 'pricecompetitors', 'Price Type List View', '2023-06-12 21:14:27', '2023-06-12 21:14:27', NULL);
INSERT INTO `loghistories` VALUES (1804, 1, 'pricecompetitors', 'New Item Create Page', '2023-06-12 21:14:31', '2023-06-12 21:14:31', NULL);
INSERT INTO `loghistories` VALUES (1805, 1, 'pricecompetitors', 'New Item Saved', '2023-06-12 21:16:22', '2023-06-12 21:16:22', NULL);
INSERT INTO `loghistories` VALUES (1806, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-12 21:16:27', '2023-06-12 21:16:27', NULL);
INSERT INTO `loghistories` VALUES (1807, 1, 'pricecompetitors', 'Price Type List View', '2023-06-12 21:16:45', '2023-06-12 21:16:45', NULL);
INSERT INTO `loghistories` VALUES (1808, 14, 'prices', 'Price List by type (1) View', '2023-06-13 10:05:29', '2023-06-13 10:05:29', NULL);
INSERT INTO `loghistories` VALUES (1809, 14, 'languages', 'Changed WebSite Language as Français', '2023-06-13 10:06:48', '2023-06-13 10:06:48', NULL);
INSERT INTO `loghistories` VALUES (1810, 1, 'languages', 'Changed WebSite Language as Français', '2023-06-13 10:07:54', '2023-06-13 10:07:54', NULL);
INSERT INTO `loghistories` VALUES (1811, 1, 'prices', 'Price List by type (1) View', '2023-06-13 10:20:26', '2023-06-13 10:20:26', NULL);
INSERT INTO `loghistories` VALUES (1812, 1, 'prices', 'Price List by type (3) View', '2023-06-13 10:21:01', '2023-06-13 10:21:01', NULL);
INSERT INTO `loghistories` VALUES (1813, 1, 'prices', 'Price List by type (4) View', '2023-06-13 10:21:05', '2023-06-13 10:21:05', NULL);
INSERT INTO `loghistories` VALUES (1814, 1, 'pricetypes', 'Price Type List View', '2023-06-13 10:21:13', '2023-06-13 10:21:13', NULL);
INSERT INTO `loghistories` VALUES (1815, 1, 'pricings', 'Pricing Class View', '2023-06-13 10:21:21', '2023-06-13 10:21:21', NULL);
INSERT INTO `loghistories` VALUES (1816, 1, 'pricemanages', 'Price management View', '2023-06-13 10:23:00', '2023-06-13 10:23:00', NULL);
INSERT INTO `loghistories` VALUES (1817, 1, 'pricecompetitors', 'Price Type List View', '2023-06-13 10:24:06', '2023-06-13 10:24:06', NULL);
INSERT INTO `loghistories` VALUES (1818, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-13 10:24:15', '2023-06-13 10:24:15', NULL);
INSERT INTO `loghistories` VALUES (1819, 1, 'languages', 'Changed WebSite Language as English', '2023-06-13 10:30:29', '2023-06-13 10:30:29', NULL);
INSERT INTO `loghistories` VALUES (1820, 1, 'prices', 'Price List by type (1) View', '2023-06-13 10:43:57', '2023-06-13 10:43:57', NULL);
INSERT INTO `loghistories` VALUES (1821, 1, 'languages', 'Changed WebSite Language as Français', '2023-06-13 12:15:27', '2023-06-13 12:15:27', NULL);
INSERT INTO `loghistories` VALUES (1822, 1, 'languages', 'Changed WebSite Language as English', '2023-06-13 12:38:35', '2023-06-13 12:38:35', NULL);
INSERT INTO `loghistories` VALUES (1823, 1, 'prices', 'Price List by type (4) View', '2023-06-13 12:55:51', '2023-06-13 12:55:51', NULL);
INSERT INTO `loghistories` VALUES (1824, 1, 'prices', 'Price List by type (6) View', '2023-06-13 12:55:55', '2023-06-13 12:55:55', NULL);
INSERT INTO `loghistories` VALUES (1825, 14, 'prices', 'Price List by type (4) View', '2023-06-14 10:46:19', '2023-06-14 10:46:19', NULL);
INSERT INTO `loghistories` VALUES (1826, 1, 'prices', 'Price List by type (4) View', '2023-06-14 10:55:04', '2023-06-14 10:55:04', NULL);
INSERT INTO `loghistories` VALUES (1827, 1, 'prices', 'Excel Import Showing Page', '2023-06-14 12:34:38', '2023-06-14 12:34:38', NULL);
INSERT INTO `loghistories` VALUES (1828, 1, 'prices', 'Price List by type (4) View', '2023-06-14 12:36:37', '2023-06-14 12:36:37', NULL);
INSERT INTO `loghistories` VALUES (1829, 1, 'prices', 'Excel Import Showing Page', '2023-06-14 12:37:21', '2023-06-14 12:37:21', NULL);
INSERT INTO `loghistories` VALUES (1830, 14, 'prices', 'Price List by type (4) View', '2023-06-14 13:19:06', '2023-06-14 13:19:06', NULL);
INSERT INTO `loghistories` VALUES (1831, 14, 'prices', 'Excel Import Showing Page', '2023-06-14 13:19:10', '2023-06-14 13:19:10', NULL);
INSERT INTO `loghistories` VALUES (1832, 14, 'prices', 'Price List by type (4) View', '2023-06-14 13:20:52', '2023-06-14 13:20:52', NULL);
INSERT INTO `loghistories` VALUES (1833, 14, 'prices', 'Excel Import Showing Page', '2023-06-14 13:21:00', '2023-06-14 13:21:00', NULL);
INSERT INTO `loghistories` VALUES (1834, 14, 'prices', 'Price List by type (3) View', '2023-06-14 13:22:36', '2023-06-14 13:22:36', NULL);
INSERT INTO `loghistories` VALUES (1835, 14, 'prices', 'Price List by type (4) View', '2023-06-14 13:22:42', '2023-06-14 13:22:42', NULL);
INSERT INTO `loghistories` VALUES (1836, 14, 'prices', 'Price List View', '2023-06-14 13:22:59', '2023-06-14 13:22:59', NULL);
INSERT INTO `loghistories` VALUES (1837, 14, 'prices', 'Excel Import Showing Page', '2023-06-14 13:23:02', '2023-06-14 13:23:02', NULL);
INSERT INTO `loghistories` VALUES (1838, 14, 'prices', 'Price List by type (4) View', '2023-06-14 13:27:14', '2023-06-14 13:27:14', NULL);
INSERT INTO `loghistories` VALUES (1839, 14, 'prices', 'Excel Import Showing Page', '2023-06-14 13:27:15', '2023-06-14 13:27:15', NULL);
INSERT INTO `loghistories` VALUES (1840, 14, 'prices', 'Price List by type (4) View', '2023-06-14 13:30:47', '2023-06-14 13:30:47', NULL);
INSERT INTO `loghistories` VALUES (1841, 14, 'prices', 'Excel Import Showing Page', '2023-06-14 13:30:52', '2023-06-14 13:30:52', NULL);
INSERT INTO `loghistories` VALUES (1842, 14, 'prices', 'Price List by type (4) View', '2023-06-14 15:09:52', '2023-06-14 15:09:52', NULL);
INSERT INTO `loghistories` VALUES (1843, 14, 'prices', 'Excel Import Showing Page', '2023-06-14 15:17:08', '2023-06-14 15:17:08', NULL);
INSERT INTO `loghistories` VALUES (1844, 1, 'prices', 'Price List by type (10) View', '2023-06-15 11:37:49', '2023-06-15 11:37:49', NULL);
INSERT INTO `loghistories` VALUES (1845, 14, 'prices', 'Price List by type (10) View', '2023-06-15 11:37:54', '2023-06-15 11:37:54', NULL);
INSERT INTO `loghistories` VALUES (1846, 1, 'pricetypes', 'Price Type List View', '2023-06-15 11:40:59', '2023-06-15 11:40:59', NULL);
INSERT INTO `loghistories` VALUES (1847, 1, 'pricecompetitors', 'Price Type List View', '2023-06-15 11:41:07', '2023-06-15 11:41:07', NULL);
INSERT INTO `loghistories` VALUES (1848, 1, 'pricecompetitors', 'Price Type List View', '2023-06-15 11:41:15', '2023-06-15 11:41:15', NULL);
INSERT INTO `loghistories` VALUES (1849, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-15 11:41:17', '2023-06-15 11:41:17', NULL);
INSERT INTO `loghistories` VALUES (1850, 1, 'pricings', 'Pricing Class View', '2023-06-15 11:41:30', '2023-06-15 11:41:30', NULL);
INSERT INTO `loghistories` VALUES (1851, 1, 'pricetypes', 'Price Type List View', '2023-06-15 11:41:49', '2023-06-15 11:41:49', NULL);
INSERT INTO `loghistories` VALUES (1852, 1, 'prices', 'Price List View', '2023-06-15 11:41:52', '2023-06-15 11:41:52', NULL);
INSERT INTO `loghistories` VALUES (1853, 1, 'pricings', 'Pricing Class View', '2023-06-15 11:43:09', '2023-06-15 11:43:09', NULL);
INSERT INTO `loghistories` VALUES (1854, 1, 'pricings', 'Existing Item Editing Page', '2023-06-15 11:43:26', '2023-06-15 11:43:26', NULL);
INSERT INTO `loghistories` VALUES (1855, 1, 'pricings', 'Existing Item Updated', '2023-06-15 11:43:32', '2023-06-15 11:43:32', NULL);
INSERT INTO `loghistories` VALUES (1856, 1, 'pricemanages', 'Price management View', '2023-06-15 11:43:33', '2023-06-15 11:43:33', NULL);
INSERT INTO `loghistories` VALUES (1857, 1, 'pricemanages', 'New Item Create Page', '2023-06-15 11:43:40', '2023-06-15 11:43:40', NULL);
INSERT INTO `loghistories` VALUES (1858, 1, 'pricemanages', 'New Item Saved', '2023-06-15 11:44:06', '2023-06-15 11:44:06', NULL);
INSERT INTO `loghistories` VALUES (1859, 1, 'pricings', 'Pricing Class View', '2023-06-15 11:44:28', '2023-06-15 11:44:28', NULL);
INSERT INTO `loghistories` VALUES (1860, 1, 'pricings', 'Existing Item Editing Page', '2023-06-15 11:44:33', '2023-06-15 11:44:33', NULL);
INSERT INTO `loghistories` VALUES (1861, 1, 'pricings', 'Existing Item Updated', '2023-06-15 11:48:13', '2023-06-15 11:48:13', NULL);
INSERT INTO `loghistories` VALUES (1862, 1, 'prices', 'Price List View', '2023-06-15 11:48:24', '2023-06-15 11:48:24', NULL);
INSERT INTO `loghistories` VALUES (1863, 14, 'prices', 'Price List by type (10) View', '2023-06-15 12:47:18', '2023-06-15 12:47:18', NULL);
INSERT INTO `loghistories` VALUES (1864, 1, 'prices', 'Price List View', '2023-06-15 13:08:31', '2023-06-15 13:08:31', NULL);
INSERT INTO `loghistories` VALUES (1865, 1, 'prices', 'Price List View', '2023-06-15 13:08:50', '2023-06-15 13:08:50', NULL);
INSERT INTO `loghistories` VALUES (1866, 1, 'pricings', 'Pricing Class View', '2023-06-15 13:09:37', '2023-06-15 13:09:37', NULL);
INSERT INTO `loghistories` VALUES (1867, 1, 'prices', 'Price List View', '2023-06-15 13:09:45', '2023-06-15 13:09:45', NULL);
INSERT INTO `loghistories` VALUES (1868, 1, 'pricetypes', 'Price Type List View', '2023-06-15 13:09:50', '2023-06-15 13:09:50', NULL);
INSERT INTO `loghistories` VALUES (1869, 1, 'pricemanages', 'Price management View', '2023-06-15 13:09:56', '2023-06-15 13:09:56', NULL);
INSERT INTO `loghistories` VALUES (1870, 1, 'pricemanages', 'New Item Create Page', '2023-06-15 13:10:17', '2023-06-15 13:10:17', NULL);
INSERT INTO `loghistories` VALUES (1871, 1, 'prices', 'Price List by type (10) View', '2023-06-15 13:10:52', '2023-06-15 13:10:52', NULL);
INSERT INTO `loghistories` VALUES (1872, 1, 'prices', 'Price List View', '2023-06-15 13:11:25', '2023-06-15 13:11:25', NULL);
INSERT INTO `loghistories` VALUES (1873, 1, 'pricemanages', 'Price management View', '2023-06-15 13:11:40', '2023-06-15 13:11:40', NULL);
INSERT INTO `loghistories` VALUES (1874, 14, 'languages', 'Changed WebSite Language as Français', '2023-06-15 19:55:01', '2023-06-15 19:55:01', NULL);
INSERT INTO `loghistories` VALUES (1875, 14, 'languages', 'Changed WebSite Language as Deutsch', '2023-06-15 19:55:03', '2023-06-15 19:55:03', NULL);
INSERT INTO `loghistories` VALUES (1876, 14, 'languages', 'Changed WebSite Language as English', '2023-06-15 19:55:08', '2023-06-15 19:55:08', NULL);
INSERT INTO `loghistories` VALUES (1877, 14, 'prices', 'Price List by type (4) View', '2023-06-15 19:55:29', '2023-06-15 19:55:29', NULL);
INSERT INTO `loghistories` VALUES (1878, 14, 'prices', 'Excel Import Showing Page', '2023-06-15 19:55:30', '2023-06-15 19:55:30', NULL);
INSERT INTO `loghistories` VALUES (1879, 14, 'prices', 'Price List by type (1) View', '2023-06-15 19:56:36', '2023-06-15 19:56:36', NULL);
INSERT INTO `loghistories` VALUES (1880, 14, 'prices', 'Price List by type (3) View', '2023-06-15 19:56:43', '2023-06-15 19:56:43', NULL);
INSERT INTO `loghistories` VALUES (1881, 14, 'prices', 'Price List by type (3) View', '2023-06-15 19:58:38', '2023-06-15 19:58:38', NULL);
INSERT INTO `loghistories` VALUES (1882, 14, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-15 20:00:24', '2023-06-15 20:00:24', NULL);
INSERT INTO `loghistories` VALUES (1883, 14, 'languages', 'Changed WebSite Language as Français', '2023-06-15 20:00:27', '2023-06-15 20:00:27', NULL);
INSERT INTO `loghistories` VALUES (1884, 14, 'languages', 'Changed WebSite Language as English', '2023-06-15 20:00:31', '2023-06-15 20:00:31', NULL);
INSERT INTO `loghistories` VALUES (1885, 14, 'languages', 'Changed WebSite Language as Norska', '2023-06-15 20:00:44', '2023-06-15 20:00:44', NULL);
INSERT INTO `loghistories` VALUES (1886, 14, 'languages', 'Changed WebSite Language as Dansk', '2023-06-15 20:00:51', '2023-06-15 20:00:51', NULL);
INSERT INTO `loghistories` VALUES (1887, 14, 'languages', 'Changed WebSite Language as English', '2023-06-15 20:00:57', '2023-06-15 20:00:57', NULL);
INSERT INTO `loghistories` VALUES (1888, 14, 'languages', 'Language List View', '2023-06-15 20:01:08', '2023-06-15 20:01:08', NULL);
INSERT INTO `loghistories` VALUES (1889, 14, 'languages', 'Language Detail View Page', '2023-06-15 20:01:17', '2023-06-15 20:01:17', NULL);
INSERT INTO `loghistories` VALUES (1890, 14, 'languages', 'Changed WebSite Language as Français', '2023-06-15 20:02:13', '2023-06-15 20:02:13', NULL);
INSERT INTO `loghistories` VALUES (1891, 14, 'languages', 'Language List View', '2023-06-15 20:02:13', '2023-06-15 20:02:13', NULL);
INSERT INTO `loghistories` VALUES (1892, 14, 'languages', 'Changed WebSite Language as Dansk', '2023-06-15 20:02:19', '2023-06-15 20:02:19', NULL);
INSERT INTO `loghistories` VALUES (1893, 14, 'languages', 'Changed WebSite Language as Polski', '2023-06-15 20:02:21', '2023-06-15 20:02:21', NULL);
INSERT INTO `loghistories` VALUES (1894, 14, 'languages', 'Changed WebSite Language as English', '2023-06-15 20:02:24', '2023-06-15 20:02:24', NULL);
INSERT INTO `loghistories` VALUES (1895, 14, 'prices', 'Price List by type (4) View', '2023-06-16 11:11:51', '2023-06-16 11:11:51', NULL);
INSERT INTO `loghistories` VALUES (1896, 14, 'prices', 'Excel Import Showing Page', '2023-06-16 11:11:54', '2023-06-16 11:11:54', NULL);
INSERT INTO `loghistories` VALUES (1897, 14, 'prices', 'Price List View', '2023-06-16 11:12:15', '2023-06-16 11:12:15', NULL);
INSERT INTO `loghistories` VALUES (1898, 14, 'prices', 'Price List by type (4) View', '2023-06-16 11:12:20', '2023-06-16 11:12:20', NULL);
INSERT INTO `loghistories` VALUES (1899, 14, 'prices', 'Price List by type (3) View', '2023-06-16 11:12:36', '2023-06-16 11:12:36', NULL);
INSERT INTO `loghistories` VALUES (1900, 14, 'prices', 'Price List by type (4) View', '2023-06-16 11:12:40', '2023-06-16 11:12:40', NULL);
INSERT INTO `loghistories` VALUES (1901, 14, 'prices', 'Price List by type (4) View', '2023-06-16 11:13:12', '2023-06-16 11:13:12', NULL);
INSERT INTO `loghistories` VALUES (1902, 14, 'prices', 'Excel Import Showing Page', '2023-06-16 11:14:09', '2023-06-16 11:14:09', NULL);
INSERT INTO `loghistories` VALUES (1903, 14, 'prices', 'Price List View', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL);
INSERT INTO `loghistories` VALUES (1904, 14, 'prices', 'Price List by type (4) View', '2023-06-16 11:14:20', '2023-06-16 11:14:20', NULL);
INSERT INTO `loghistories` VALUES (1905, 15, 'languages', 'Language List View', '2023-06-16 18:09:14', '2023-06-16 18:09:14', NULL);
INSERT INTO `loghistories` VALUES (1906, 15, 'languages', 'Language List View', '2023-06-16 18:10:26', '2023-06-16 18:10:26', NULL);
INSERT INTO `loghistories` VALUES (1907, 1, 'pricecompetitors', 'Price Type List View', '2023-06-16 18:11:25', '2023-06-16 18:11:25', NULL);
INSERT INTO `loghistories` VALUES (1908, 1, 'languages', 'Changed WebSite Language as Français', '2023-06-16 18:12:40', '2023-06-16 18:12:40', NULL);
INSERT INTO `loghistories` VALUES (1909, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-06-16 18:12:56', '2023-06-16 18:12:56', NULL);
INSERT INTO `loghistories` VALUES (1910, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-06-16 18:13:55', '2023-06-16 18:13:55', NULL);
INSERT INTO `loghistories` VALUES (1911, 1, 'languages', 'Changed WebSite Language as English', '2023-06-16 18:14:16', '2023-06-16 18:14:16', NULL);
INSERT INTO `loghistories` VALUES (1912, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-16 18:14:25', '2023-06-16 18:14:25', NULL);
INSERT INTO `loghistories` VALUES (1913, 1, 'languages', 'Changed WebSite Language as English', '2023-06-16 18:14:59', '2023-06-16 18:14:59', NULL);
INSERT INTO `loghistories` VALUES (1914, 1, 'languages', 'Changed WebSite Language as Nederlandse', '2023-06-16 18:15:08', '2023-06-16 18:15:08', NULL);
INSERT INTO `loghistories` VALUES (1915, 1, 'languages', 'Changed WebSite Language as Polski', '2023-06-16 18:15:37', '2023-06-16 18:15:37', NULL);
INSERT INTO `loghistories` VALUES (1916, 1, 'languages', 'Changed WebSite Language as Deutsch', '2023-06-16 18:15:52', '2023-06-16 18:15:52', NULL);
INSERT INTO `loghistories` VALUES (1917, 1, 'languages', 'Changed WebSite Language as English', '2023-06-16 18:15:57', '2023-06-16 18:15:57', NULL);
INSERT INTO `loghistories` VALUES (1918, 15, 'languages', 'Changed WebSite Language as Deutsch', '2023-06-16 18:20:27', '2023-06-16 18:20:27', NULL);
INSERT INTO `loghistories` VALUES (1919, 1, 'languages', 'Changed WebSite Language as Norska', '2023-06-16 18:20:36', '2023-06-16 18:20:36', NULL);
INSERT INTO `loghistories` VALUES (1920, 15, 'languages', 'Changed WebSite Language as Français', '2023-06-16 18:20:38', '2023-06-16 18:20:38', NULL);
INSERT INTO `loghistories` VALUES (1921, 15, 'languages', 'Changed WebSite Language as Norska', '2023-06-16 18:20:41', '2023-06-16 18:20:41', NULL);
INSERT INTO `loghistories` VALUES (1922, 15, 'languages', 'Changed WebSite Language as Dansk', '2023-06-16 18:20:45', '2023-06-16 18:20:45', NULL);
INSERT INTO `loghistories` VALUES (1923, 15, 'languages', 'Changed WebSite Language as Norska', '2023-06-16 18:20:58', '2023-06-16 18:20:58', NULL);
INSERT INTO `loghistories` VALUES (1924, 15, 'languages', 'Changed WebSite Language as Dansk', '2023-06-16 18:21:05', '2023-06-16 18:21:05', NULL);
INSERT INTO `loghistories` VALUES (1925, 15, 'languages', 'Changed WebSite Language as English', '2023-06-16 18:21:23', '2023-06-16 18:21:23', NULL);
INSERT INTO `loghistories` VALUES (1926, 1, 'languages', 'Changed WebSite Language as English', '2023-06-16 18:21:36', '2023-06-16 18:21:36', NULL);
INSERT INTO `loghistories` VALUES (1927, 15, 'languages', 'Changed WebSite Language as Svenska', '2023-06-16 18:21:53', '2023-06-16 18:21:53', NULL);
INSERT INTO `loghistories` VALUES (1928, 15, 'languages', 'Changed WebSite Language as English', '2023-06-16 18:22:05', '2023-06-16 18:22:05', NULL);
INSERT INTO `loghistories` VALUES (1929, 1, 'languages', 'Language List View', '2023-06-16 18:31:25', '2023-06-16 18:31:25', NULL);
INSERT INTO `loghistories` VALUES (1930, 1, 'pricetypes', 'Price Type List View', '2023-06-16 18:31:30', '2023-06-16 18:31:30', NULL);
INSERT INTO `loghistories` VALUES (1931, 1, 'prices', 'Price List View', '2023-06-16 18:31:40', '2023-06-16 18:31:40', NULL);
INSERT INTO `loghistories` VALUES (1932, 1, 'prices', 'Price List View', '2023-06-16 18:32:06', '2023-06-16 18:32:06', NULL);
INSERT INTO `loghistories` VALUES (1933, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-16 18:32:12', '2023-06-16 18:32:12', NULL);
INSERT INTO `loghistories` VALUES (1934, 1, 'pricecompetitors', 'Price Type List View', '2023-06-16 18:32:22', '2023-06-16 18:32:22', NULL);
INSERT INTO `loghistories` VALUES (1935, 1, 'pricecompetitors', 'New Item Create Page', '2023-06-17 09:50:36', '2023-06-17 09:50:36', NULL);
INSERT INTO `loghistories` VALUES (1936, 1, 'pricecompetitors', 'New Item Saved', '2023-06-17 09:51:14', '2023-06-17 09:51:14', NULL);
INSERT INTO `loghistories` VALUES (1937, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-17 09:51:20', '2023-06-17 09:51:20', NULL);
INSERT INTO `loghistories` VALUES (1938, 15, 'languages', 'Language List View', '2023-06-17 09:52:51', '2023-06-17 09:52:51', NULL);
INSERT INTO `loghistories` VALUES (1939, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-17 09:55:58', '2023-06-17 09:55:58', NULL);
INSERT INTO `loghistories` VALUES (1940, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-17 09:56:17', '2023-06-17 09:56:17', NULL);
INSERT INTO `loghistories` VALUES (1941, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-17 09:56:59', '2023-06-17 09:56:59', NULL);
INSERT INTO `loghistories` VALUES (1942, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-17 09:56:59', '2023-06-17 09:56:59', NULL);
INSERT INTO `loghistories` VALUES (1943, 1, 'pricecompetitors', 'Price Type List View', '2023-06-17 09:57:06', '2023-06-17 09:57:06', NULL);
INSERT INTO `loghistories` VALUES (1944, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-06-17 09:57:58', '2023-06-17 09:57:58', NULL);
INSERT INTO `loghistories` VALUES (1945, 1, 'pricecompetitors', 'Existing Item Updated', '2023-06-17 09:58:07', '2023-06-17 09:58:07', NULL);
INSERT INTO `loghistories` VALUES (1946, 1, 'pricecompetitors', 'Price Type List View', '2023-06-17 09:58:28', '2023-06-17 09:58:28', NULL);
INSERT INTO `loghistories` VALUES (1947, 1, 'prices', 'Price List by type (1) View', '2023-06-17 10:08:06', '2023-06-17 10:08:06', NULL);
INSERT INTO `loghistories` VALUES (1948, 1, 'prices', 'Price List by type (3) View', '2023-06-17 10:08:10', '2023-06-17 10:08:10', NULL);
INSERT INTO `loghistories` VALUES (1949, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-17 10:10:07', '2023-06-17 10:10:07', NULL);
INSERT INTO `loghistories` VALUES (1950, 1, 'pricecompetitors', 'Price Type List View', '2023-06-17 10:10:08', '2023-06-17 10:10:08', NULL);
INSERT INTO `loghistories` VALUES (1951, 1, 'pricecompetitors', 'Price Type List View', '2023-06-17 10:10:12', '2023-06-17 10:10:12', NULL);
INSERT INTO `loghistories` VALUES (1952, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-17 10:10:13', '2023-06-17 10:10:13', NULL);
INSERT INTO `loghistories` VALUES (1953, 1, 'pricecompetitors', 'Price Type List View', '2023-06-17 10:10:21', '2023-06-17 10:10:21', NULL);
INSERT INTO `loghistories` VALUES (1954, 1, 'languages', 'Language List View', '2023-06-17 10:10:39', '2023-06-17 10:10:39', NULL);
INSERT INTO `loghistories` VALUES (1955, 1, 'pricecompetitors', 'Price Type List View', '2023-06-17 10:12:36', '2023-06-17 10:12:36', NULL);
INSERT INTO `loghistories` VALUES (1956, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-17 10:12:38', '2023-06-17 10:12:38', NULL);
INSERT INTO `loghistories` VALUES (1957, 1, 'languages', 'Language List View', '2023-06-17 10:12:44', '2023-06-17 10:12:44', NULL);
INSERT INTO `loghistories` VALUES (1958, 1, 'languages', 'Language List View', '2023-06-20 15:21:14', '2023-06-20 15:21:14', NULL);
INSERT INTO `loghistories` VALUES (1959, 1, 'pricecompetitors', 'Price Type List View', '2023-06-20 15:21:18', '2023-06-20 15:21:18', NULL);
INSERT INTO `loghistories` VALUES (1960, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-20 15:21:21', '2023-06-20 15:21:21', NULL);
INSERT INTO `loghistories` VALUES (1961, 1, 'languages', 'Language List View', '2023-06-20 17:16:31', '2023-06-20 17:16:31', NULL);
INSERT INTO `loghistories` VALUES (1962, 1, 'pricecompetitors', 'Price Type List View', '2023-06-20 17:27:59', '2023-06-20 17:27:59', NULL);
INSERT INTO `loghistories` VALUES (1963, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-20 17:31:42', '2023-06-20 17:31:42', NULL);
INSERT INTO `loghistories` VALUES (1964, 1, 'pricecompetitors', 'Price Type List View', '2023-06-20 17:31:46', '2023-06-20 17:31:46', NULL);
INSERT INTO `loghistories` VALUES (1965, 1, 'pricetypes', 'Price Type List View', '2023-06-20 17:55:17', '2023-06-20 17:55:17', NULL);
INSERT INTO `loghistories` VALUES (1966, 1, 'prices', 'Price List by type (1) View', '2023-06-20 17:55:21', '2023-06-20 17:55:21', NULL);
INSERT INTO `loghistories` VALUES (1967, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-06-20 19:08:50', '2023-06-20 19:08:50', NULL);
INSERT INTO `loghistories` VALUES (1968, 1, 'languages', 'Changed WebSite Language as Français', '2023-06-20 19:17:49', '2023-06-20 19:17:49', NULL);
INSERT INTO `loghistories` VALUES (1969, 1, 'prices', 'Price List by type (10) View', '2023-06-20 20:36:16', '2023-06-20 20:36:16', NULL);
INSERT INTO `loghistories` VALUES (1970, 15, 'languages', 'Language List View', '2023-06-22 15:17:47', '2023-06-22 15:17:47', NULL);
INSERT INTO `loghistories` VALUES (1971, 15, 'languages', 'Language Detail View Page', '2023-06-22 15:18:33', '2023-06-22 15:18:33', NULL);
INSERT INTO `loghistories` VALUES (1972, 15, 'languages', 'Language List View', '2023-06-22 15:18:36', '2023-06-22 15:18:36', NULL);
INSERT INTO `loghistories` VALUES (1973, 15, 'languages', 'Language List View', '2023-06-22 15:21:17', '2023-06-22 15:21:17', NULL);
INSERT INTO `loghistories` VALUES (1974, 15, 'languages', 'Language List View', '2023-06-22 15:22:08', '2023-06-22 15:22:08', NULL);
INSERT INTO `loghistories` VALUES (1975, 15, 'languages', 'Language List View', '2023-06-23 10:03:33', '2023-06-23 10:03:33', NULL);
INSERT INTO `loghistories` VALUES (1976, 1, 'pricecompetitors', 'Price Type List View', '2023-06-23 11:42:58', '2023-06-23 11:42:58', NULL);
INSERT INTO `loghistories` VALUES (1977, 1, 'pricecompetitors', 'New Item Create Page', '2023-06-23 11:43:02', '2023-06-23 11:43:02', NULL);
INSERT INTO `loghistories` VALUES (1978, 1, 'pricecompetitors', 'New Item Saved', '2023-06-23 11:43:28', '2023-06-23 11:43:28', NULL);
INSERT INTO `loghistories` VALUES (1979, 1, 'pricecompetitors', 'Price Type List View', '2023-06-23 11:43:33', '2023-06-23 11:43:33', NULL);
INSERT INTO `loghistories` VALUES (1980, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-06-23 11:43:42', '2023-06-23 11:43:42', NULL);
INSERT INTO `loghistories` VALUES (1981, 1, 'pricecompetitors', 'Existing Item Updated', '2023-06-23 11:44:00', '2023-06-23 11:44:00', NULL);
INSERT INTO `loghistories` VALUES (1982, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-06-23 11:44:07', '2023-06-23 11:44:07', NULL);
INSERT INTO `loghistories` VALUES (1983, 1, 'pricecompetitors', 'Existing Item Updated', '2023-06-23 11:44:22', '2023-06-23 11:44:22', NULL);
INSERT INTO `loghistories` VALUES (1984, 1, 'pricecompetitors', 'Price Type List View', '2023-06-23 11:44:28', '2023-06-23 11:44:28', NULL);
INSERT INTO `loghistories` VALUES (1985, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-23 11:44:34', '2023-06-23 11:44:34', NULL);
INSERT INTO `loghistories` VALUES (1986, 1, 'pricecompetitors', 'Price Type List View', '2023-06-23 11:45:48', '2023-06-23 11:45:48', NULL);
INSERT INTO `loghistories` VALUES (1987, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-06-23 12:04:59', '2023-06-23 12:04:59', NULL);
INSERT INTO `loghistories` VALUES (1988, 1, 'pricecompetitors', 'Existing Item Updated', '2023-06-23 12:05:05', '2023-06-23 12:05:05', NULL);
INSERT INTO `loghistories` VALUES (1989, 1, 'pricecompetitors', 'Price Type List View', '2023-06-23 12:05:08', '2023-06-23 12:05:08', NULL);
INSERT INTO `loghistories` VALUES (1990, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-23 12:06:55', '2023-06-23 12:06:55', NULL);
INSERT INTO `loghistories` VALUES (1991, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-23 12:07:35', '2023-06-23 12:07:35', NULL);
INSERT INTO `loghistories` VALUES (1992, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-23 12:08:14', '2023-06-23 12:08:14', NULL);
INSERT INTO `loghistories` VALUES (1993, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-23 12:08:14', '2023-06-23 12:08:14', NULL);
INSERT INTO `loghistories` VALUES (1994, 1, 'pricecompetitors', 'Price Type List View', '2023-06-23 12:09:06', '2023-06-23 12:09:06', NULL);
INSERT INTO `loghistories` VALUES (1995, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-23 12:09:08', '2023-06-23 12:09:08', NULL);
INSERT INTO `loghistories` VALUES (1996, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-23 12:22:32', '2023-06-23 12:22:32', NULL);
INSERT INTO `loghistories` VALUES (1997, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-23 12:22:33', '2023-06-23 12:22:33', NULL);
INSERT INTO `loghistories` VALUES (1998, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-23 13:25:02', '2023-06-23 13:25:02', NULL);
INSERT INTO `loghistories` VALUES (1999, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-06-23 13:30:17', '2023-06-23 13:30:17', NULL);
INSERT INTO `loghistories` VALUES (2000, 1, 'languages', 'Changed WebSite Language as English', '2023-06-23 13:30:29', '2023-06-23 13:30:29', NULL);
INSERT INTO `loghistories` VALUES (2001, 1, 'pricetypes', 'Price Type List View', '2023-06-24 11:26:06', '2023-06-24 11:26:06', NULL);
INSERT INTO `loghistories` VALUES (2002, 1, 'prices', 'Price List View', '2023-06-24 11:26:09', '2023-06-24 11:26:09', NULL);
INSERT INTO `loghistories` VALUES (2003, 1, 'pricetypes', 'Price Type List View', '2023-06-24 11:27:01', '2023-06-24 11:27:01', NULL);
INSERT INTO `loghistories` VALUES (2004, 1, 'pricetypes', 'Price Type List View', '2023-06-24 11:27:03', '2023-06-24 11:27:03', NULL);
INSERT INTO `loghistories` VALUES (2005, 1, 'prices', 'Price List View', '2023-06-24 11:27:05', '2023-06-24 11:27:05', NULL);
INSERT INTO `loghistories` VALUES (2006, 1, 'pricetypes', 'Price Type List View', '2023-06-24 11:27:28', '2023-06-24 11:27:28', NULL);
INSERT INTO `loghistories` VALUES (2007, 1, 'prices', 'Price List View', '2023-06-24 11:27:34', '2023-06-24 11:27:34', NULL);
INSERT INTO `loghistories` VALUES (2008, 1, 'prices', 'Price List View', '2023-06-24 11:27:41', '2023-06-24 11:27:41', NULL);
INSERT INTO `loghistories` VALUES (2009, 1, 'pricetypes', 'Price Type List View', '2023-06-24 11:27:48', '2023-06-24 11:27:48', NULL);
INSERT INTO `loghistories` VALUES (2010, 1, 'prices', 'Price List by type (10) View', '2023-06-24 11:28:09', '2023-06-24 11:28:09', NULL);
INSERT INTO `loghistories` VALUES (2011, 1, 'prices', 'Price List View', '2023-06-24 19:45:10', '2023-06-24 19:45:10', NULL);
INSERT INTO `loghistories` VALUES (2012, 1, 'pricetypes', 'Price Type List View', '2023-06-24 19:45:14', '2023-06-24 19:45:14', NULL);
INSERT INTO `loghistories` VALUES (2013, 1, 'pricetypes', 'Price Type List View', '2023-06-24 19:53:13', '2023-06-24 19:53:13', NULL);
INSERT INTO `loghistories` VALUES (2014, 1, 'languages', 'Changed WebSite Language as Dansk', '2023-06-26 20:00:35', '2023-06-26 20:00:35', NULL);
INSERT INTO `loghistories` VALUES (2015, 1, 'languages', 'Changed WebSite Language as English', '2023-06-26 20:00:54', '2023-06-26 20:00:54', NULL);
INSERT INTO `loghistories` VALUES (2016, 1, 'prices', 'Price List by type (4) View', '2023-06-27 12:20:05', '2023-06-27 12:20:05', NULL);
INSERT INTO `loghistories` VALUES (2017, 14, 'prices', 'Price List by type (1) View', '2023-06-27 14:55:58', '2023-06-27 14:55:58', NULL);
INSERT INTO `loghistories` VALUES (2018, 14, 'prices', 'Price List by type (12) View', '2023-06-27 14:56:03', '2023-06-27 14:56:03', NULL);
INSERT INTO `loghistories` VALUES (2019, 14, 'pricetypes', 'Price Type List View', '2023-06-27 14:56:11', '2023-06-27 14:56:11', NULL);
INSERT INTO `loghistories` VALUES (2020, 14, 'pricetypes', 'New Item Create Page', '2023-06-27 14:56:23', '2023-06-27 14:56:23', NULL);
INSERT INTO `loghistories` VALUES (2021, 14, 'pricetypes', 'New Item Saved', '2023-06-27 14:56:31', '2023-06-27 14:56:31', NULL);
INSERT INTO `loghistories` VALUES (2022, 14, 'pricetypes', 'Price Type List View', '2023-06-27 14:56:31', '2023-06-27 14:56:31', NULL);
INSERT INTO `loghistories` VALUES (2023, 14, 'pricetypes', 'Existing Item Edit Page', '2023-06-27 14:56:43', '2023-06-27 14:56:43', NULL);
INSERT INTO `loghistories` VALUES (2024, 14, 'pricetypes', 'Existing Item Updated', '2023-06-27 14:56:44', '2023-06-27 14:56:44', NULL);
INSERT INTO `loghistories` VALUES (2025, 14, 'pricetypes', 'Price Type List View', '2023-06-27 14:56:45', '2023-06-27 14:56:45', NULL);
INSERT INTO `loghistories` VALUES (2026, 14, 'prices', 'Price List View', '2023-06-27 14:56:46', '2023-06-27 14:56:46', NULL);
INSERT INTO `loghistories` VALUES (2027, 14, 'pricings', 'Pricing Class View', '2023-06-27 14:56:49', '2023-06-27 14:56:49', NULL);
INSERT INTO `loghistories` VALUES (2028, 14, 'pricemanages', 'Price management View', '2023-06-27 14:56:52', '2023-06-27 14:56:52', NULL);
INSERT INTO `loghistories` VALUES (2029, 14, 'prices', 'Price List View', '2023-06-27 14:56:56', '2023-06-27 14:56:56', NULL);
INSERT INTO `loghistories` VALUES (2030, 14, 'prices', 'Price List View', '2023-06-27 14:57:04', '2023-06-27 14:57:04', NULL);
INSERT INTO `loghistories` VALUES (2031, 14, 'prices', 'Price List by type (15) View', '2023-06-27 14:58:00', '2023-06-27 14:58:00', NULL);
INSERT INTO `loghistories` VALUES (2032, 14, 'prices', 'Excel Import Showing Page', '2023-06-27 15:02:29', '2023-06-27 15:02:29', NULL);
INSERT INTO `loghistories` VALUES (2033, 14, 'prices', 'Price List View', '2023-06-27 15:02:44', '2023-06-27 15:02:44', NULL);
INSERT INTO `loghistories` VALUES (2034, 14, 'prices', 'Price List by type (15) View', '2023-06-27 15:02:49', '2023-06-27 15:02:49', NULL);
INSERT INTO `loghistories` VALUES (2035, 14, 'prices', 'Price List by type (1) View', '2023-06-27 15:03:06', '2023-06-27 15:03:06', NULL);
INSERT INTO `loghistories` VALUES (2036, 14, 'prices', 'Existing Item Editing Page', '2023-06-27 15:03:17', '2023-06-27 15:03:17', NULL);
INSERT INTO `loghistories` VALUES (2037, 14, 'prices', 'Price List View', '2023-06-27 15:03:25', '2023-06-27 15:03:25', NULL);
INSERT INTO `loghistories` VALUES (2038, 14, 'prices', 'Price List by type (15) View', '2023-06-27 15:03:52', '2023-06-27 15:03:52', NULL);
INSERT INTO `loghistories` VALUES (2039, 14, 'prices', 'Excel Import Showing Page', '2023-06-27 15:04:18', '2023-06-27 15:04:18', NULL);
INSERT INTO `loghistories` VALUES (2040, 14, 'prices', 'Price List View', '2023-06-27 15:04:33', '2023-06-27 15:04:33', NULL);
INSERT INTO `loghistories` VALUES (2041, 14, 'prices', 'Price List by type (15) View', '2023-06-27 15:04:36', '2023-06-27 15:04:36', NULL);
INSERT INTO `loghistories` VALUES (2042, 18, 'languages', 'Language List View', '2023-06-27 18:15:53', '2023-06-27 18:15:53', NULL);
INSERT INTO `loghistories` VALUES (2043, 1, 'prices', 'Price List by type (1) View', '2023-06-28 16:13:02', '2023-06-28 16:13:02', NULL);
INSERT INTO `loghistories` VALUES (2044, 14, 'prices', 'Price List by type (10) View', '2023-06-28 16:14:03', '2023-06-28 16:14:03', NULL);
INSERT INTO `loghistories` VALUES (2045, 14, 'prices', 'Excel Import Showing Page', '2023-06-28 16:14:15', '2023-06-28 16:14:15', NULL);
INSERT INTO `loghistories` VALUES (2046, 14, 'prices', 'Price List View', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL);
INSERT INTO `loghistories` VALUES (2047, 14, 'prices', 'Price List by type (10) View', '2023-06-28 16:15:22', '2023-06-28 16:15:22', NULL);
INSERT INTO `loghistories` VALUES (2048, 14, 'prices', 'Price List by type (10) View', '2023-06-28 16:16:09', '2023-06-28 16:16:09', NULL);
INSERT INTO `loghistories` VALUES (2049, 14, 'prices', 'Price List by type (10) View', '2023-06-28 16:16:59', '2023-06-28 16:16:59', NULL);
INSERT INTO `loghistories` VALUES (2050, 14, 'prices', 'Price List by type (1) View', '2023-06-28 16:17:03', '2023-06-28 16:17:03', NULL);
INSERT INTO `loghistories` VALUES (2051, 14, 'pricetypes', 'Price Type List View', '2023-06-28 16:25:42', '2023-06-28 16:25:42', NULL);
INSERT INTO `loghistories` VALUES (2052, 14, 'pricetypes', 'New Item Create Page', '2023-06-28 16:25:46', '2023-06-28 16:25:46', NULL);
INSERT INTO `loghistories` VALUES (2053, 14, 'pricetypes', 'New Item Saved', '2023-06-28 16:26:33', '2023-06-28 16:26:33', NULL);
INSERT INTO `loghistories` VALUES (2054, 14, 'pricetypes', 'Price Type List View', '2023-06-28 16:26:33', '2023-06-28 16:26:33', NULL);
INSERT INTO `loghistories` VALUES (2055, 14, 'prices', 'Price List by type (16) View', '2023-06-28 16:27:15', '2023-06-28 16:27:15', NULL);
INSERT INTO `loghistories` VALUES (2056, 14, 'prices', 'Excel Import Showing Page', '2023-06-28 16:27:17', '2023-06-28 16:27:17', NULL);
INSERT INTO `loghistories` VALUES (2057, 14, 'prices', 'Price List View', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL);
INSERT INTO `loghistories` VALUES (2058, 14, 'prices', 'Price List by type (16) View', '2023-06-28 16:27:38', '2023-06-28 16:27:38', NULL);
INSERT INTO `loghistories` VALUES (2059, 1, 'prices', 'Price List by type (15) View', '2023-06-28 16:30:12', '2023-06-28 16:30:12', NULL);
INSERT INTO `loghistories` VALUES (2060, 1, 'prices', 'Price List by type (15) View', '2023-06-28 16:35:25', '2023-06-28 16:35:25', NULL);
INSERT INTO `loghistories` VALUES (2061, 1, 'prices', 'Price List by type (15) View', '2023-06-28 16:36:26', '2023-06-28 16:36:26', NULL);
INSERT INTO `loghistories` VALUES (2062, 1, 'prices', 'Price List View', '2023-06-28 16:36:32', '2023-06-28 16:36:32', NULL);
INSERT INTO `loghistories` VALUES (2063, 1, 'prices', 'Price List by type (15) View', '2023-06-28 16:36:46', '2023-06-28 16:36:46', NULL);
INSERT INTO `loghistories` VALUES (2064, 1, 'prices', 'Price List View', '2023-06-28 16:36:55', '2023-06-28 16:36:55', NULL);
INSERT INTO `loghistories` VALUES (2065, 1, 'prices', 'Existing Item Editing Page', '2023-06-28 16:37:14', '2023-06-28 16:37:14', NULL);
INSERT INTO `loghistories` VALUES (2066, 1, 'prices', 'Existing Item Updated', '2023-06-28 16:37:37', '2023-06-28 16:37:37', NULL);
INSERT INTO `loghistories` VALUES (2067, 1, 'pricings', 'Pricing Class View', '2023-06-28 16:37:41', '2023-06-28 16:37:41', NULL);
INSERT INTO `loghistories` VALUES (2068, 1, 'pricemanages', 'Price management View', '2023-06-28 16:37:59', '2023-06-28 16:37:59', NULL);
INSERT INTO `loghistories` VALUES (2069, 1, 'prices', 'Price List View', '2023-06-28 16:38:51', '2023-06-28 16:38:51', NULL);
INSERT INTO `loghistories` VALUES (2070, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:07:09', '2023-06-28 17:07:09', NULL);
INSERT INTO `loghistories` VALUES (2071, 1, 'prices', 'Existing Item Editing Page', '2023-06-28 17:07:15', '2023-06-28 17:07:15', NULL);
INSERT INTO `loghistories` VALUES (2072, 1, 'prices', 'Existing Item Updated', '2023-06-28 17:07:23', '2023-06-28 17:07:23', NULL);
INSERT INTO `loghistories` VALUES (2073, 1, 'prices', 'Price List View', '2023-06-28 17:07:27', '2023-06-28 17:07:27', NULL);
INSERT INTO `loghistories` VALUES (2074, 1, 'prices', 'Price List View', '2023-06-28 17:07:31', '2023-06-28 17:07:31', NULL);
INSERT INTO `loghistories` VALUES (2075, 1, 'pricings', 'Pricing Class View', '2023-06-28 17:07:43', '2023-06-28 17:07:43', NULL);
INSERT INTO `loghistories` VALUES (2076, 1, 'pricetypes', 'Price Type List View', '2023-06-28 17:08:04', '2023-06-28 17:08:04', NULL);
INSERT INTO `loghistories` VALUES (2077, 1, 'prices', 'Price List View', '2023-06-28 17:08:06', '2023-06-28 17:08:06', NULL);
INSERT INTO `loghistories` VALUES (2078, 1, 'pricings', 'Pricing Class View', '2023-06-28 17:08:09', '2023-06-28 17:08:09', NULL);
INSERT INTO `loghistories` VALUES (2079, 1, 'pricemanages', 'Price management View', '2023-06-28 17:08:11', '2023-06-28 17:08:11', NULL);
INSERT INTO `loghistories` VALUES (2080, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:09:19', '2023-06-28 17:09:19', NULL);
INSERT INTO `loghistories` VALUES (2081, 1, 'prices', 'Existing Item Editing Page', '2023-06-28 17:10:20', '2023-06-28 17:10:20', NULL);
INSERT INTO `loghistories` VALUES (2082, 1, 'prices', 'Existing Item Updated', '2023-06-28 17:10:25', '2023-06-28 17:10:25', NULL);
INSERT INTO `loghistories` VALUES (2083, 1, 'prices', 'Price List View', '2023-06-28 17:10:28', '2023-06-28 17:10:28', NULL);
INSERT INTO `loghistories` VALUES (2084, 1, 'pricemanages', 'Price management View', '2023-06-28 17:10:36', '2023-06-28 17:10:36', NULL);
INSERT INTO `loghistories` VALUES (2085, 1, 'pricetypes', 'Price Type List View', '2023-06-28 17:10:51', '2023-06-28 17:10:51', NULL);
INSERT INTO `loghistories` VALUES (2086, 1, 'prices', 'Price List View', '2023-06-28 17:11:02', '2023-06-28 17:11:02', NULL);
INSERT INTO `loghistories` VALUES (2087, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:11:10', '2023-06-28 17:11:10', NULL);
INSERT INTO `loghistories` VALUES (2088, 1, 'prices', 'Existing Item Editing Page', '2023-06-28 17:11:13', '2023-06-28 17:11:13', NULL);
INSERT INTO `loghistories` VALUES (2089, 1, 'prices', 'Existing Item Updated', '2023-06-28 17:11:18', '2023-06-28 17:11:18', NULL);
INSERT INTO `loghistories` VALUES (2090, 1, 'prices', 'Price List View', '2023-06-28 17:11:21', '2023-06-28 17:11:21', NULL);
INSERT INTO `loghistories` VALUES (2091, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:11:28', '2023-06-28 17:11:28', NULL);
INSERT INTO `loghistories` VALUES (2092, 1, 'prices', 'Existing Item Editing Page', '2023-06-28 17:11:31', '2023-06-28 17:11:31', NULL);
INSERT INTO `loghistories` VALUES (2093, 1, 'prices', 'Existing Item Updated', '2023-06-28 17:11:35', '2023-06-28 17:11:35', NULL);
INSERT INTO `loghistories` VALUES (2094, 1, 'prices', 'Price List View', '2023-06-28 17:11:38', '2023-06-28 17:11:38', NULL);
INSERT INTO `loghistories` VALUES (2095, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:33:00', '2023-06-28 17:33:00', NULL);
INSERT INTO `loghistories` VALUES (2096, 1, 'prices', 'Existing Item Editing Page', '2023-06-28 17:33:04', '2023-06-28 17:33:04', NULL);
INSERT INTO `loghistories` VALUES (2097, 1, 'prices', 'Existing Item Updated', '2023-06-28 17:33:19', '2023-06-28 17:33:19', NULL);
INSERT INTO `loghistories` VALUES (2098, 1, 'prices', 'Price List View', '2023-06-28 17:33:24', '2023-06-28 17:33:24', NULL);
INSERT INTO `loghistories` VALUES (2099, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:33:42', '2023-06-28 17:33:42', NULL);
INSERT INTO `loghistories` VALUES (2100, 14, 'prices', 'Price List View', '2023-06-28 17:34:24', '2023-06-28 17:34:24', NULL);
INSERT INTO `loghistories` VALUES (2101, 14, 'prices', 'Price List View', '2023-06-28 17:34:30', '2023-06-28 17:34:30', NULL);
INSERT INTO `loghistories` VALUES (2102, 14, 'pricetypes', 'Price Type List View', '2023-06-28 17:34:32', '2023-06-28 17:34:32', NULL);
INSERT INTO `loghistories` VALUES (2103, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:38:44', '2023-06-28 17:38:44', NULL);
INSERT INTO `loghistories` VALUES (2104, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:41:42', '2023-06-28 17:41:42', NULL);
INSERT INTO `loghistories` VALUES (2105, 1, 'pricecompetitors', 'Price Type List View', '2023-06-28 17:44:28', '2023-06-28 17:44:28', NULL);
INSERT INTO `loghistories` VALUES (2106, 1, 'pricecompetitors', 'New Item Create Page', '2023-06-28 17:44:32', '2023-06-28 17:44:32', NULL);
INSERT INTO `loghistories` VALUES (2107, 1, 'pricecompetitors', 'New Item Saved', '2023-06-28 17:44:54', '2023-06-28 17:44:54', NULL);
INSERT INTO `loghistories` VALUES (2108, 1, 'pricecompetitors', 'Price Type List View', '2023-06-28 17:44:58', '2023-06-28 17:44:58', NULL);
INSERT INTO `loghistories` VALUES (2109, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-06-28 17:45:06', '2023-06-28 17:45:06', NULL);
INSERT INTO `loghistories` VALUES (2110, 1, 'pricecompetitors', 'Existing Item Updated', '2023-06-28 17:48:08', '2023-06-28 17:48:08', NULL);
INSERT INTO `loghistories` VALUES (2111, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:48:26', '2023-06-28 17:48:26', NULL);
INSERT INTO `loghistories` VALUES (2112, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:48:46', '2023-06-28 17:48:46', NULL);
INSERT INTO `loghistories` VALUES (2113, 1, 'pricecompetitors', 'Price Type List View', '2023-06-28 17:49:09', '2023-06-28 17:49:09', NULL);
INSERT INTO `loghistories` VALUES (2114, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:49:11', '2023-06-28 17:49:11', NULL);
INSERT INTO `loghistories` VALUES (2115, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-28 17:50:11', '2023-06-28 17:50:11', NULL);
INSERT INTO `loghistories` VALUES (2116, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:50:11', '2023-06-28 17:50:11', NULL);
INSERT INTO `loghistories` VALUES (2117, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-28 17:53:30', '2023-06-28 17:53:30', NULL);
INSERT INTO `loghistories` VALUES (2118, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:53:31', '2023-06-28 17:53:31', NULL);
INSERT INTO `loghistories` VALUES (2119, 1, 'pricecompetitors', 'Price Type List View', '2023-06-28 17:53:44', '2023-06-28 17:53:44', NULL);
INSERT INTO `loghistories` VALUES (2120, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-06-28 17:53:48', '2023-06-28 17:53:48', NULL);
INSERT INTO `loghistories` VALUES (2121, 1, 'pricecompetitors', 'Existing Item Updated', '2023-06-28 17:53:54', '2023-06-28 17:53:54', NULL);
INSERT INTO `loghistories` VALUES (2122, 1, 'pricecompetitors', 'Price Type List View', '2023-06-28 17:54:07', '2023-06-28 17:54:07', NULL);
INSERT INTO `loghistories` VALUES (2123, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:54:10', '2023-06-28 17:54:10', NULL);
INSERT INTO `loghistories` VALUES (2124, 1, 'prices', 'Price List View', '2023-06-28 17:54:33', '2023-06-28 17:54:33', NULL);
INSERT INTO `loghistories` VALUES (2125, 1, 'pricemanages', 'Price management View', '2023-06-28 17:54:50', '2023-06-28 17:54:50', NULL);
INSERT INTO `loghistories` VALUES (2126, 1, 'prices', 'Price List View', '2023-06-28 17:55:10', '2023-06-28 17:55:10', NULL);
INSERT INTO `loghistories` VALUES (2127, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:55:16', '2023-06-28 17:55:16', NULL);
INSERT INTO `loghistories` VALUES (2128, 1, 'prices', 'Price List View', '2023-06-28 17:55:43', '2023-06-28 17:55:43', NULL);
INSERT INTO `loghistories` VALUES (2129, 1, 'pricecompetitors', 'Price Type List View', '2023-06-28 17:55:52', '2023-06-28 17:55:52', NULL);
INSERT INTO `loghistories` VALUES (2130, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:55:55', '2023-06-28 17:55:55', NULL);
INSERT INTO `loghistories` VALUES (2131, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-28 17:56:51', '2023-06-28 17:56:51', NULL);
INSERT INTO `loghistories` VALUES (2132, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:56:52', '2023-06-28 17:56:52', NULL);
INSERT INTO `loghistories` VALUES (2133, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-28 17:58:27', '2023-06-28 17:58:27', NULL);
INSERT INTO `loghistories` VALUES (2134, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:58:27', '2023-06-28 17:58:27', NULL);
INSERT INTO `loghistories` VALUES (2135, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-06-28 17:59:04', '2023-06-28 17:59:04', NULL);
INSERT INTO `loghistories` VALUES (2136, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 17:59:05', '2023-06-28 17:59:05', NULL);
INSERT INTO `loghistories` VALUES (2137, 1, 'prices', 'Price List by type (15) View', '2023-06-28 17:59:30', '2023-06-28 17:59:30', NULL);
INSERT INTO `loghistories` VALUES (2138, 1, 'pricecompetitors', 'Price Type List View', '2023-06-28 18:00:34', '2023-06-28 18:00:34', NULL);
INSERT INTO `loghistories` VALUES (2139, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 18:00:37', '2023-06-28 18:00:37', NULL);
INSERT INTO `loghistories` VALUES (2140, 1, 'prices', 'Price List by type (15) View', '2023-06-28 18:03:08', '2023-06-28 18:03:08', NULL);
INSERT INTO `loghistories` VALUES (2141, 1, 'prices', 'Price List by type (15) View', '2023-06-28 18:08:08', '2023-06-28 18:08:08', NULL);
INSERT INTO `loghistories` VALUES (2142, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-06-28 19:40:14', '2023-06-28 19:40:14', NULL);
INSERT INTO `loghistories` VALUES (2143, 1, 'prices', 'Price List by type (15) View', '2023-06-28 19:45:19', '2023-06-28 19:45:19', NULL);
INSERT INTO `loghistories` VALUES (2144, 1, 'prices', 'Price List View', '2023-06-28 19:53:29', '2023-06-28 19:53:29', NULL);
INSERT INTO `loghistories` VALUES (2145, 1, 'prices', 'Price List by type (15) View', '2023-06-29 09:54:02', '2023-06-29 09:54:02', NULL);
INSERT INTO `loghistories` VALUES (2146, 1, 'prices', 'Price List by type (15) View', '2023-06-29 10:04:33', '2023-06-29 10:04:33', NULL);
INSERT INTO `loghistories` VALUES (2147, 1, 'prices', 'Price List by type (15) View', '2023-06-29 10:05:20', '2023-06-29 10:05:20', NULL);
INSERT INTO `loghistories` VALUES (2148, 1, 'prices', 'Price List by type (15) View', '2023-06-29 10:14:21', '2023-06-29 10:14:21', NULL);
INSERT INTO `loghistories` VALUES (2149, 1, 'pricecompetitors', 'Price Type List View', '2023-06-29 11:36:43', '2023-06-29 11:36:43', NULL);
INSERT INTO `loghistories` VALUES (2150, 1, 'prices', 'Price List View', '2023-06-29 11:36:49', '2023-06-29 11:36:49', NULL);
INSERT INTO `loghistories` VALUES (2151, 1, 'prices', 'Price List by type (15) View', '2023-06-29 11:36:58', '2023-06-29 11:36:58', NULL);
INSERT INTO `loghistories` VALUES (2152, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 11:37:09', '2023-06-29 11:37:09', NULL);
INSERT INTO `loghistories` VALUES (2153, 1, 'prices', 'Existing Item Updated', '2023-06-29 11:37:24', '2023-06-29 11:37:24', NULL);
INSERT INTO `loghistories` VALUES (2154, 1, 'prices', 'Price List View', '2023-06-29 11:37:31', '2023-06-29 11:37:31', NULL);
INSERT INTO `loghistories` VALUES (2155, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 11:37:54', '2023-06-29 11:37:54', NULL);
INSERT INTO `loghistories` VALUES (2156, 1, 'prices', 'Existing Item Updated', '2023-06-29 11:38:08', '2023-06-29 11:38:08', NULL);
INSERT INTO `loghistories` VALUES (2157, 1, 'prices', 'Price List View', '2023-06-29 11:40:18', '2023-06-29 11:40:18', NULL);
INSERT INTO `loghistories` VALUES (2158, 1, 'prices', 'Price List by type (15) View', '2023-06-29 11:52:57', '2023-06-29 11:52:57', NULL);
INSERT INTO `loghistories` VALUES (2159, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 11:53:21', '2023-06-29 11:53:21', NULL);
INSERT INTO `loghistories` VALUES (2160, 1, 'prices', 'Existing Item Updated', '2023-06-29 11:53:28', '2023-06-29 11:53:28', NULL);
INSERT INTO `loghistories` VALUES (2161, 1, 'prices', 'Price List View', '2023-06-29 11:53:31', '2023-06-29 11:53:31', NULL);
INSERT INTO `loghistories` VALUES (2162, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 11:53:39', '2023-06-29 11:53:39', NULL);
INSERT INTO `loghistories` VALUES (2163, 1, 'prices', 'Existing Item Updated', '2023-06-29 11:53:45', '2023-06-29 11:53:45', NULL);
INSERT INTO `loghistories` VALUES (2164, 1, 'prices', 'Price List View', '2023-06-29 11:53:52', '2023-06-29 11:53:52', NULL);
INSERT INTO `loghistories` VALUES (2165, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 11:54:02', '2023-06-29 11:54:02', NULL);
INSERT INTO `loghistories` VALUES (2166, 1, 'prices', 'Existing Item Updated', '2023-06-29 11:54:08', '2023-06-29 11:54:08', NULL);
INSERT INTO `loghistories` VALUES (2167, 1, 'prices', 'Price List View', '2023-06-29 11:54:13', '2023-06-29 11:54:13', NULL);
INSERT INTO `loghistories` VALUES (2168, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 11:54:21', '2023-06-29 11:54:21', NULL);
INSERT INTO `loghistories` VALUES (2169, 1, 'prices', 'Existing Item Updated', '2023-06-29 11:54:26', '2023-06-29 11:54:26', NULL);
INSERT INTO `loghistories` VALUES (2170, 1, 'prices', 'Price List View', '2023-06-29 11:54:30', '2023-06-29 11:54:30', NULL);
INSERT INTO `loghistories` VALUES (2171, 1, 'prices', 'Price List View', '2023-06-29 11:54:55', '2023-06-29 11:54:55', NULL);
INSERT INTO `loghistories` VALUES (2172, 1, 'prices', 'Price List by type (15) View', '2023-06-29 16:38:18', '2023-06-29 16:38:18', NULL);
INSERT INTO `loghistories` VALUES (2173, 1, 'prices', 'Price List by type (15) View', '2023-06-29 16:45:37', '2023-06-29 16:45:37', NULL);
INSERT INTO `loghistories` VALUES (2174, 1, 'prices', 'Price List by type (15) View', '2023-06-29 17:51:29', '2023-06-29 17:51:29', NULL);
INSERT INTO `loghistories` VALUES (2175, 1, 'prices', 'Price List by type (15) View', '2023-06-29 17:58:47', '2023-06-29 17:58:47', NULL);
INSERT INTO `loghistories` VALUES (2176, 1, 'prices', 'Price List by type (15) View', '2023-06-29 18:07:30', '2023-06-29 18:07:30', NULL);
INSERT INTO `loghistories` VALUES (2177, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 18:09:09', '2023-06-29 18:09:09', NULL);
INSERT INTO `loghistories` VALUES (2178, 1, 'prices', 'Existing Item Updated', '2023-06-29 18:09:27', '2023-06-29 18:09:27', NULL);
INSERT INTO `loghistories` VALUES (2179, 1, 'prices', 'Price List View', '2023-06-29 18:09:30', '2023-06-29 18:09:30', NULL);
INSERT INTO `loghistories` VALUES (2180, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 18:09:55', '2023-06-29 18:09:55', NULL);
INSERT INTO `loghistories` VALUES (2181, 1, 'prices', 'Existing Item Updated', '2023-06-29 18:10:02', '2023-06-29 18:10:02', NULL);
INSERT INTO `loghistories` VALUES (2182, 1, 'prices', 'Price List View', '2023-06-29 18:10:09', '2023-06-29 18:10:09', NULL);
INSERT INTO `loghistories` VALUES (2183, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 18:10:17', '2023-06-29 18:10:17', NULL);
INSERT INTO `loghistories` VALUES (2184, 1, 'prices', 'Existing Item Updated', '2023-06-29 18:10:27', '2023-06-29 18:10:27', NULL);
INSERT INTO `loghistories` VALUES (2185, 1, 'prices', 'Price List View', '2023-06-29 18:10:47', '2023-06-29 18:10:47', NULL);
INSERT INTO `loghistories` VALUES (2186, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 18:11:00', '2023-06-29 18:11:00', NULL);
INSERT INTO `loghistories` VALUES (2187, 1, 'prices', 'Existing Item Updated', '2023-06-29 18:11:06', '2023-06-29 18:11:06', NULL);
INSERT INTO `loghistories` VALUES (2188, 1, 'prices', 'Price List View', '2023-06-29 18:11:09', '2023-06-29 18:11:09', NULL);
INSERT INTO `loghistories` VALUES (2189, 1, 'prices', 'Existing Item Editing Page', '2023-06-29 18:11:17', '2023-06-29 18:11:17', NULL);
INSERT INTO `loghistories` VALUES (2190, 1, 'prices', 'Existing Item Updated', '2023-06-29 18:11:26', '2023-06-29 18:11:26', NULL);
INSERT INTO `loghistories` VALUES (2191, 1, 'prices', 'Price List by type (15) View', '2023-06-29 18:11:43', '2023-06-29 18:11:43', NULL);
INSERT INTO `loghistories` VALUES (2192, 14, 'prices', 'Price List by type (4) View', '2023-06-30 12:09:49', '2023-06-30 12:09:49', NULL);
INSERT INTO `loghistories` VALUES (2193, 1, 'prices', 'Price List by type (15) View', '2023-06-30 12:42:06', '2023-06-30 12:42:06', NULL);
INSERT INTO `loghistories` VALUES (2194, 1, 'prices', 'Price List by type (1) View', '2023-06-30 18:08:34', '2023-06-30 18:08:34', NULL);
INSERT INTO `loghistories` VALUES (2195, 1, 'prices', 'Price List by type (1) View', '2023-06-30 18:08:49', '2023-06-30 18:08:49', NULL);
INSERT INTO `loghistories` VALUES (2196, 28, 'pricetypes', 'Price Type List View', '2023-07-03 09:13:14', '2023-07-03 09:13:14', NULL);
INSERT INTO `loghistories` VALUES (2197, 28, 'languages', 'Language List View', '2023-07-03 09:13:16', '2023-07-03 09:13:16', NULL);
INSERT INTO `loghistories` VALUES (2198, 28, 'languages', 'Language List View', '2023-07-03 09:48:49', '2023-07-03 09:48:49', NULL);
INSERT INTO `loghistories` VALUES (2199, 1, 'prices', 'Price List by type (1) View', '2023-07-04 15:29:38', '2023-07-04 15:29:38', NULL);
INSERT INTO `loghistories` VALUES (2200, 1, 'prices', 'Price List by type (1) View', '2023-07-05 11:08:29', '2023-07-05 11:08:29', NULL);
INSERT INTO `loghistories` VALUES (2201, 1, 'pricecompetitors', 'Price Type List View', '2023-07-05 20:22:41', '2023-07-05 20:22:41', NULL);
INSERT INTO `loghistories` VALUES (2202, 1, 'pricecompetitors', 'New Item Create Page', '2023-07-05 20:22:46', '2023-07-05 20:22:46', NULL);
INSERT INTO `loghistories` VALUES (2203, 1, 'pricecompetitors', 'New Item Saved', '2023-07-05 20:26:22', '2023-07-05 20:26:22', NULL);
INSERT INTO `loghistories` VALUES (2204, 1, 'pricecompetitors', 'Price Type List View', '2023-07-05 20:26:36', '2023-07-05 20:26:36', NULL);
INSERT INTO `loghistories` VALUES (2205, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-07-05 20:27:02', '2023-07-05 20:27:02', NULL);
INSERT INTO `loghistories` VALUES (2206, 1, 'pricecompetitors', 'Price Type List View', '2023-07-05 20:27:25', '2023-07-05 20:27:25', NULL);
INSERT INTO `loghistories` VALUES (2207, 1, 'pricecompetitors', 'Price Type List View', '2023-07-05 20:27:38', '2023-07-05 20:27:38', NULL);
INSERT INTO `loghistories` VALUES (2208, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-07-05 20:27:40', '2023-07-05 20:27:40', NULL);
INSERT INTO `loghistories` VALUES (2209, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-07-05 20:30:57', '2023-07-05 20:30:57', NULL);
INSERT INTO `loghistories` VALUES (2210, 1, 'pricecompares', 'New Price Competitor Item Saved', '2023-07-05 20:32:17', '2023-07-05 20:32:17', NULL);
INSERT INTO `loghistories` VALUES (2211, 1, 'pricecompares', 'Price All Competitors by Sandro View', '2023-07-05 20:32:17', '2023-07-05 20:32:17', NULL);
INSERT INTO `loghistories` VALUES (2212, 1, 'pricecompetitors', 'Price Type List View', '2023-07-05 20:35:01', '2023-07-05 20:35:01', NULL);
INSERT INTO `loghistories` VALUES (2213, 1, 'pricecompetitors', 'Existing Item Edit Page', '2023-07-05 20:35:04', '2023-07-05 20:35:04', NULL);
INSERT INTO `loghistories` VALUES (2214, 1, 'pricecompetitors', 'Existing Item Updated', '2023-07-05 20:35:15', '2023-07-05 20:35:15', NULL);
INSERT INTO `loghistories` VALUES (2215, 1, 'pricetypes', 'Price Type List View', '2023-07-05 20:36:11', '2023-07-05 20:36:11', NULL);
INSERT INTO `loghistories` VALUES (2216, 1, 'prices', 'Price List View', '2023-07-05 20:36:16', '2023-07-05 20:36:16', NULL);
INSERT INTO `loghistories` VALUES (2217, 1, 'pricemanages', 'Price management View', '2023-07-05 20:40:09', '2023-07-05 20:40:09', NULL);
INSERT INTO `loghistories` VALUES (2218, 28, 'pricemanages', 'Price management View', '2023-07-06 08:20:52', '2023-07-06 08:20:52', NULL);
INSERT INTO `loghistories` VALUES (2219, 1, 'prices', 'Price List View', '2023-07-06 10:04:01', '2023-07-06 10:04:01', NULL);
INSERT INTO `loghistories` VALUES (2220, 1, 'prices', 'Price List by type (1) View', '2023-07-06 12:13:49', '2023-07-06 12:13:49', NULL);
INSERT INTO `loghistories` VALUES (2221, 1, 'prices', 'Price List View', '2023-07-06 12:36:59', '2023-07-06 12:36:59', NULL);
INSERT INTO `loghistories` VALUES (2222, 28, 'prices', 'Price List by type (10) View', '2023-07-06 12:43:54', '2023-07-06 12:43:54', NULL);
INSERT INTO `loghistories` VALUES (2223, 28, 'prices', 'Price List by type (1) View', '2023-07-06 12:44:05', '2023-07-06 12:44:05', NULL);
INSERT INTO `loghistories` VALUES (2224, 28, 'prices', 'Price List by type (4) View', '2023-07-06 13:13:51', '2023-07-06 13:13:51', NULL);
INSERT INTO `loghistories` VALUES (2225, 28, 'prices', 'Price List by type (6) View', '2023-07-06 13:14:10', '2023-07-06 13:14:10', NULL);
INSERT INTO `loghistories` VALUES (2226, 28, 'prices', 'Price List by type (8) View', '2023-07-06 13:14:21', '2023-07-06 13:14:21', NULL);
INSERT INTO `loghistories` VALUES (2227, 28, 'prices', 'Price List by type (10) View', '2023-07-06 13:14:33', '2023-07-06 13:14:33', NULL);
INSERT INTO `loghistories` VALUES (2228, 28, 'prices', 'Price List by type (11) View', '2023-07-06 13:14:45', '2023-07-06 13:14:45', NULL);
INSERT INTO `loghistories` VALUES (2229, 28, 'prices', 'Price List by type (12) View', '2023-07-06 13:14:50', '2023-07-06 13:14:50', NULL);
INSERT INTO `loghistories` VALUES (2230, 28, 'prices', 'Price List by type (13) View', '2023-07-06 13:15:00', '2023-07-06 13:15:00', NULL);
INSERT INTO `loghistories` VALUES (2231, 28, 'prices', 'Price List by type (14) View', '2023-07-06 13:15:08', '2023-07-06 13:15:08', NULL);
INSERT INTO `loghistories` VALUES (2232, 28, 'prices', 'Price List by type (15) View', '2023-07-06 13:15:12', '2023-07-06 13:15:12', NULL);
INSERT INTO `loghistories` VALUES (2233, 28, 'prices', 'Price List by type (16) View', '2023-07-06 13:15:16', '2023-07-06 13:15:16', NULL);
INSERT INTO `loghistories` VALUES (2234, 1, 'prices', 'Price List by type (1) View', '2023-07-06 18:57:24', '2023-07-06 18:57:24', NULL);
INSERT INTO `loghistories` VALUES (2235, 1, 'prices', 'Price List by type (3) View', '2023-07-06 18:57:32', '2023-07-06 18:57:32', NULL);
INSERT INTO `loghistories` VALUES (2236, 1, 'prices', 'Price List by type (1) View', '2023-07-06 18:57:34', '2023-07-06 18:57:34', NULL);
INSERT INTO `loghistories` VALUES (2237, 28, 'prices', 'Price List by type (1) View', '2023-07-07 16:15:07', '2023-07-07 16:15:07', NULL);
INSERT INTO `loghistories` VALUES (2238, 28, 'prices', 'Price List by type (3) View', '2023-07-07 16:16:30', '2023-07-07 16:16:30', NULL);
INSERT INTO `loghistories` VALUES (2239, 28, 'prices', 'Price List by type (16) View', '2023-07-07 16:17:12', '2023-07-07 16:17:12', NULL);
INSERT INTO `loghistories` VALUES (2240, 28, 'prices', 'Price List by type (1) View', '2023-07-07 16:17:49', '2023-07-07 16:17:49', NULL);
INSERT INTO `loghistories` VALUES (2241, 28, 'prices', 'Price List by type (14) View', '2023-07-07 17:34:22', '2023-07-07 17:34:22', NULL);
INSERT INTO `loghistories` VALUES (2242, 28, 'prices', 'Price List by type (8) View', '2023-07-07 17:34:27', '2023-07-07 17:34:27', NULL);
INSERT INTO `loghistories` VALUES (2243, 28, 'prices', 'Price List by type (10) View', '2023-07-07 17:57:15', '2023-07-07 17:57:15', NULL);
INSERT INTO `loghistories` VALUES (2244, 1, 'prices', 'Price List by type (1) View', '2023-07-07 19:00:27', '2023-07-07 19:00:27', NULL);
INSERT INTO `loghistories` VALUES (2245, 14, 'prices', 'Price List by type (1) View', '2023-07-07 19:00:37', '2023-07-07 19:00:37', NULL);
INSERT INTO `loghistories` VALUES (2246, 1, 'pricetypes', 'Price Type List View', '2023-07-07 20:33:46', '2023-07-07 20:33:46', NULL);
INSERT INTO `loghistories` VALUES (2247, 1, 'pricetypes', 'Existing Item Edit Page', '2023-07-07 20:33:54', '2023-07-07 20:33:54', NULL);
INSERT INTO `loghistories` VALUES (2248, 1, 'pricetypes', 'Existing Item Updated', '2023-07-07 20:33:58', '2023-07-07 20:33:58', NULL);
INSERT INTO `loghistories` VALUES (2249, 1, 'pricetypes', 'Price Type List View', '2023-07-07 20:33:59', '2023-07-07 20:33:59', NULL);
INSERT INTO `loghistories` VALUES (2250, 1, 'prices', 'Price List View', '2023-07-07 20:34:03', '2023-07-07 20:34:03', NULL);
INSERT INTO `loghistories` VALUES (2251, 1, 'prices', 'Price List View', '2023-07-07 20:34:11', '2023-07-07 20:34:11', NULL);
INSERT INTO `loghistories` VALUES (2252, 1, 'prices', 'Price List View', '2023-07-07 20:34:34', '2023-07-07 20:34:34', NULL);
INSERT INTO `loghistories` VALUES (2253, 1, 'prices', 'Price List View', '2023-07-07 20:35:02', '2023-07-07 20:35:02', NULL);
INSERT INTO `loghistories` VALUES (2254, 1, 'prices', 'Price List View', '2023-07-07 20:35:54', '2023-07-07 20:35:54', NULL);
INSERT INTO `loghistories` VALUES (2255, 1, 'prices', 'Price List View', '2023-07-07 20:37:47', '2023-07-07 20:37:47', NULL);
INSERT INTO `loghistories` VALUES (2256, 1, 'prices', 'Price List View', '2023-07-07 20:38:45', '2023-07-07 20:38:45', NULL);
INSERT INTO `loghistories` VALUES (2257, 28, 'prices', 'Price List View', '2023-07-07 20:45:32', '2023-07-07 20:45:32', NULL);
INSERT INTO `loghistories` VALUES (2258, 28, 'prices', 'Price List by type (1) View', '2023-07-07 21:45:04', '2023-07-07 21:45:04', NULL);
INSERT INTO `loghistories` VALUES (2259, 28, 'prices', 'Price List View', '2023-07-07 21:45:17', '2023-07-07 21:45:17', NULL);
INSERT INTO `loghistories` VALUES (2260, 28, 'prices', 'Price List by type (3) View', '2023-07-07 21:46:10', '2023-07-07 21:46:10', NULL);
INSERT INTO `loghistories` VALUES (2261, 28, 'prices', 'Price List by type (1) View', '2023-07-07 21:46:17', '2023-07-07 21:46:17', NULL);
INSERT INTO `loghistories` VALUES (2262, 28, 'prices', 'Price List View', '2023-07-07 21:46:33', '2023-07-07 21:46:33', NULL);
INSERT INTO `loghistories` VALUES (2263, 28, 'prices', 'Price List View', '2023-07-07 21:46:43', '2023-07-07 21:46:43', NULL);
INSERT INTO `loghistories` VALUES (2264, 28, 'prices', 'Price List by type (1) View', '2023-07-07 21:46:53', '2023-07-07 21:46:53', NULL);
INSERT INTO `loghistories` VALUES (2265, 28, 'prices', 'Price List by type (1) View', '2023-07-07 21:49:24', '2023-07-07 21:49:24', NULL);
INSERT INTO `loghistories` VALUES (2266, 28, 'prices', 'Price List by type (1) View', '2023-07-07 21:50:54', '2023-07-07 21:50:54', NULL);
INSERT INTO `loghistories` VALUES (2267, 28, 'prices', 'Price List by type (3) View', '2023-07-07 21:51:11', '2023-07-07 21:51:11', NULL);
INSERT INTO `loghistories` VALUES (2268, 28, 'prices', 'Price List View', '2023-07-07 21:52:51', '2023-07-07 21:52:51', NULL);
INSERT INTO `loghistories` VALUES (2269, 28, 'prices', 'Existing Item Editing Page', '2023-07-07 21:52:57', '2023-07-07 21:52:57', NULL);
INSERT INTO `loghistories` VALUES (2270, 28, 'prices', 'Price List View', '2023-07-07 21:53:07', '2023-07-07 21:53:07', NULL);
INSERT INTO `loghistories` VALUES (2271, 28, 'prices', 'Existing Item Showing Page', '2023-07-07 21:53:15', '2023-07-07 21:53:15', NULL);
INSERT INTO `loghistories` VALUES (2272, 28, 'prices', 'Price List by type (1) View', '2023-07-07 22:02:21', '2023-07-07 22:02:21', NULL);
INSERT INTO `loghistories` VALUES (2273, 28, 'prices', 'Price List View', '2023-07-07 22:51:10', '2023-07-07 22:51:10', NULL);
INSERT INTO `loghistories` VALUES (2274, 28, 'prices', 'Price List by type (1) View', '2023-07-07 22:51:22', '2023-07-07 22:51:22', NULL);
INSERT INTO `loghistories` VALUES (2275, 28, 'prices', 'Price List by type (3) View', '2023-07-07 22:51:34', '2023-07-07 22:51:34', NULL);
INSERT INTO `loghistories` VALUES (2276, 28, 'prices', 'Price List View', '2023-07-07 22:52:07', '2023-07-07 22:52:07', NULL);
INSERT INTO `loghistories` VALUES (2277, 28, 'prices', 'Price List by type (3) View', '2023-07-07 22:52:33', '2023-07-07 22:52:33', NULL);
INSERT INTO `loghistories` VALUES (2278, 1, 'prices', 'Price List View', '2023-07-08 09:56:31', '2023-07-08 09:56:31', NULL);
INSERT INTO `loghistories` VALUES (2279, 1, 'prices', 'Price List by type (1) View', '2023-07-08 10:03:03', '2023-07-08 10:03:03', NULL);
INSERT INTO `loghistories` VALUES (2280, 1, 'prices', 'Price List by type (1) View', '2023-07-08 10:05:33', '2023-07-08 10:05:33', NULL);
INSERT INTO `loghistories` VALUES (2281, 1, 'prices', 'Price List View', '2023-07-08 10:05:59', '2023-07-08 10:05:59', NULL);
INSERT INTO `loghistories` VALUES (2282, 1, 'pricings', 'Pricing Class View', '2023-07-08 10:06:07', '2023-07-08 10:06:07', NULL);
INSERT INTO `loghistories` VALUES (2283, 1, 'pricings', 'Pricing Class View', '2023-07-08 15:31:50', '2023-07-08 15:31:50', NULL);
INSERT INTO `loghistories` VALUES (2284, 1, 'prices', 'Price List View', '2023-07-08 15:31:57', '2023-07-08 15:31:57', NULL);
INSERT INTO `loghistories` VALUES (2285, 1, 'pricemanages', 'Price management View', '2023-07-08 15:44:31', '2023-07-08 15:44:31', NULL);
INSERT INTO `loghistories` VALUES (2286, 1, 'pricings', 'Pricing Class View', '2023-07-08 15:44:34', '2023-07-08 15:44:34', NULL);
INSERT INTO `loghistories` VALUES (2287, 1, 'pricemanages', 'Price management View', '2023-07-08 15:44:46', '2023-07-08 15:44:46', NULL);
INSERT INTO `loghistories` VALUES (2288, 1, 'prices', 'Price List View', '2023-07-08 15:45:02', '2023-07-08 15:45:02', NULL);
INSERT INTO `loghistories` VALUES (2289, 1, 'prices', 'Price List by type (1) View', '2023-07-08 15:49:07', '2023-07-08 15:49:07', NULL);
INSERT INTO `loghistories` VALUES (2290, 1, 'pricemanages', 'Price management View', '2023-07-08 15:51:00', '2023-07-08 15:51:00', NULL);
INSERT INTO `loghistories` VALUES (2291, 1, 'prices', 'Price List View', '2023-07-08 15:51:05', '2023-07-08 15:51:05', NULL);
INSERT INTO `loghistories` VALUES (2292, 1, 'pricemanages', 'Price management View', '2023-07-08 15:51:29', '2023-07-08 15:51:29', NULL);
INSERT INTO `loghistories` VALUES (2293, 1, 'pricemanages', 'Price management View', '2023-07-08 15:51:32', '2023-07-08 15:51:32', NULL);
INSERT INTO `loghistories` VALUES (2294, 1, 'pricecompetitors', 'Price Type List View', '2023-07-08 15:51:48', '2023-07-08 15:51:48', NULL);
INSERT INTO `loghistories` VALUES (2295, 1, 'pricemanages', 'Price management View', '2023-07-08 15:51:57', '2023-07-08 15:51:57', NULL);
INSERT INTO `loghistories` VALUES (2296, 1, 'prices', 'Price List View', '2023-07-08 15:52:04', '2023-07-08 15:52:04', NULL);
INSERT INTO `loghistories` VALUES (2297, 1, 'pricetypes', 'Price Type List View', '2023-07-08 15:52:07', '2023-07-08 15:52:07', NULL);
INSERT INTO `loghistories` VALUES (2298, 1, 'pricings', 'Pricing Class View', '2023-07-08 15:59:15', '2023-07-08 15:59:15', NULL);
INSERT INTO `loghistories` VALUES (2299, 28, 'pricings', 'Pricing Class View', '2023-07-08 16:01:48', '2023-07-08 16:01:48', NULL);
INSERT INTO `loghistories` VALUES (2300, 28, 'pricings', 'Existing Item Editing Page', '2023-07-08 16:04:57', '2023-07-08 16:04:57', NULL);
INSERT INTO `loghistories` VALUES (2301, 28, 'pricings', 'Pricing Class View', '2023-07-08 16:05:00', '2023-07-08 16:05:00', NULL);
INSERT INTO `loghistories` VALUES (2302, 1, 'prices', 'Price List View', '2023-07-08 16:16:14', '2023-07-08 16:16:14', NULL);
INSERT INTO `loghistories` VALUES (2303, 1, 'pricings', 'Pricing Class View', '2023-07-08 16:31:04', '2023-07-08 16:31:04', NULL);
INSERT INTO `loghistories` VALUES (2304, 28, 'pricings', 'Pricing Class View', '2023-07-08 20:01:46', '2023-07-08 20:01:46', NULL);
INSERT INTO `loghistories` VALUES (2305, 28, 'pricings', 'Pricing Class View', '2023-07-08 20:02:18', '2023-07-08 20:02:18', NULL);
INSERT INTO `loghistories` VALUES (2306, 28, 'pricings', 'Pricing Class View', '2023-07-08 20:06:39', '2023-07-08 20:06:39', NULL);
INSERT INTO `loghistories` VALUES (2307, 28, 'prices', 'Price List by type (3) View', '2023-07-08 20:08:21', '2023-07-08 20:08:21', NULL);
INSERT INTO `loghistories` VALUES (2308, 28, 'prices', 'Price List by type (3) View', '2023-07-08 20:09:04', '2023-07-08 20:09:04', NULL);
INSERT INTO `loghistories` VALUES (2309, 28, 'prices', 'Price List by type (3) View', '2023-07-08 20:11:08', '2023-07-08 20:11:08', NULL);
INSERT INTO `loghistories` VALUES (2310, 28, 'prices', 'Price List by type (3) View', '2023-07-08 20:12:43', '2023-07-08 20:12:43', NULL);
INSERT INTO `loghistories` VALUES (2311, 28, 'prices', 'Price List by type (4) View', '2023-07-08 20:12:47', '2023-07-08 20:12:47', NULL);
INSERT INTO `loghistories` VALUES (2312, 28, 'prices', 'Price List View', '2023-07-08 20:12:51', '2023-07-08 20:12:51', NULL);
INSERT INTO `loghistories` VALUES (2313, 28, 'prices', 'Price List View', '2023-07-08 20:13:02', '2023-07-08 20:13:02', NULL);
INSERT INTO `loghistories` VALUES (2314, 28, 'prices', 'Price List View', '2023-07-08 20:13:19', '2023-07-08 20:13:19', NULL);
INSERT INTO `loghistories` VALUES (2315, 28, 'prices', 'Price List View', '2023-07-08 20:14:08', '2023-07-08 20:14:08', NULL);
INSERT INTO `loghistories` VALUES (2316, 1, 'prices', 'Price List by type (1) View', '2023-07-10 17:39:15', '2023-07-10 17:39:15', NULL);
INSERT INTO `loghistories` VALUES (2317, 1, 'prices', 'Price List by type (4) View', '2023-07-10 18:17:45', '2023-07-10 18:17:45', NULL);
INSERT INTO `loghistories` VALUES (2318, 1, 'prices', 'Price List by type (1) View', '2023-07-10 19:45:48', '2023-07-10 19:45:48', NULL);
INSERT INTO `loghistories` VALUES (2319, 1, 'prices', 'Price List View', '2023-07-10 19:45:59', '2023-07-10 19:45:59', NULL);
INSERT INTO `loghistories` VALUES (2320, 1, 'prices', 'Price List View', '2023-07-10 19:46:02', '2023-07-10 19:46:02', NULL);
INSERT INTO `loghistories` VALUES (2321, 1, 'pricings', 'Pricing Class View', '2023-07-10 19:46:05', '2023-07-10 19:46:05', NULL);
INSERT INTO `loghistories` VALUES (2322, 1, 'pricetypes', 'Price Type List View', '2023-07-10 19:46:11', '2023-07-10 19:46:11', NULL);
INSERT INTO `loghistories` VALUES (2323, 1, 'prices', 'Price List View', '2023-07-10 19:46:14', '2023-07-10 19:46:14', NULL);
INSERT INTO `loghistories` VALUES (2324, 25, 'prices', 'Price List by type (1) View', '2023-07-10 20:06:14', '2023-07-10 20:06:14', NULL);
INSERT INTO `loghistories` VALUES (2325, 25, 'prices', 'Price List by type (1) View', '2023-07-11 17:00:54', '2023-07-11 17:00:54', NULL);
INSERT INTO `loghistories` VALUES (2326, 1, 'prices', 'Price List View', '2023-07-11 17:02:00', '2023-07-11 17:02:00', NULL);
INSERT INTO `loghistories` VALUES (2327, 1, 'pricecompetitors', 'Price Type List View', '2023-07-11 17:02:14', '2023-07-11 17:02:14', NULL);
INSERT INTO `loghistories` VALUES (2328, 1, 'prices', 'Price List by type (1) View', '2023-07-11 17:07:43', '2023-07-11 17:07:43', NULL);
INSERT INTO `loghistories` VALUES (2329, 1, 'prices', 'Price List by type (3) View', '2023-07-11 19:16:36', '2023-07-11 19:16:36', NULL);
INSERT INTO `loghistories` VALUES (2330, 1, 'prices', 'Price List by type (4) View', '2023-07-11 19:16:53', '2023-07-11 19:16:53', NULL);
INSERT INTO `loghistories` VALUES (2331, 1, 'prices', 'Price List by type (6) View', '2023-07-11 19:16:58', '2023-07-11 19:16:58', NULL);
INSERT INTO `loghistories` VALUES (2332, 25, 'prices', 'Price List by type (1) View', '2023-07-11 19:21:25', '2023-07-11 19:21:25', NULL);
INSERT INTO `loghistories` VALUES (2333, 25, 'prices', 'Price List View', '2023-07-11 19:21:31', '2023-07-11 19:21:31', NULL);
INSERT INTO `loghistories` VALUES (2334, 25, 'prices', 'Existing Item Showing Page', '2023-07-11 19:21:37', '2023-07-11 19:21:37', NULL);
INSERT INTO `loghistories` VALUES (2335, 25, 'pricemanages', 'Price management View', '2023-07-11 19:21:45', '2023-07-11 19:21:45', NULL);
INSERT INTO `loghistories` VALUES (2336, 25, 'prices', 'Price List by type (1) View', '2023-07-11 19:25:39', '2023-07-11 19:25:39', NULL);
INSERT INTO `loghistories` VALUES (2337, 25, 'prices', 'Price List View', '2023-07-11 19:26:06', '2023-07-11 19:26:06', NULL);
INSERT INTO `loghistories` VALUES (2338, 25, 'pricemanages', 'Price management View', '2023-07-11 19:26:15', '2023-07-11 19:26:15', NULL);
INSERT INTO `loghistories` VALUES (2339, 25, 'pricecompetitors', 'Price Type List View', '2023-07-11 19:26:49', '2023-07-11 19:26:49', NULL);
INSERT INTO `loghistories` VALUES (2340, 25, 'pricecompares', 'Price All Competitors by DETANDT View', '2023-07-11 19:26:52', '2023-07-11 19:26:52', NULL);
INSERT INTO `loghistories` VALUES (2341, 25, 'languages', 'Language List View', '2023-07-11 19:27:47', '2023-07-11 19:27:47', NULL);
INSERT INTO `loghistories` VALUES (2342, 25, 'languages', 'Language List View', '2023-07-11 19:30:29', '2023-07-11 19:30:29', NULL);
INSERT INTO `loghistories` VALUES (2343, 1, 'languages', 'Changed WebSite Language as Français', '2023-07-11 20:09:00', '2023-07-11 20:09:00', NULL);
INSERT INTO `loghistories` VALUES (2344, 1, 'pricetypes', 'Price Type List View', '2023-07-12 10:07:17', '2023-07-12 10:07:17', NULL);
INSERT INTO `loghistories` VALUES (2345, 1, 'prices', 'Price List View', '2023-07-12 10:07:21', '2023-07-12 10:07:21', NULL);
INSERT INTO `loghistories` VALUES (2346, 1, 'pricings', 'Pricing Class View', '2023-07-12 10:07:25', '2023-07-12 10:07:25', NULL);
INSERT INTO `loghistories` VALUES (2347, 1, 'pricemanages', 'Price management View', '2023-07-12 10:07:29', '2023-07-12 10:07:29', NULL);
INSERT INTO `loghistories` VALUES (2348, 1, 'pricecompetitors', 'Price Type List View', '2023-07-12 10:07:51', '2023-07-12 10:07:51', NULL);
INSERT INTO `loghistories` VALUES (2349, 1, 'pricecompetitors', 'Price Type List View', '2023-07-12 10:07:51', '2023-07-12 10:07:51', NULL);
INSERT INTO `loghistories` VALUES (2350, 28, 'prices', 'Price List by type (8) View', '2023-07-12 11:11:58', '2023-07-12 11:11:58', NULL);
INSERT INTO `loghistories` VALUES (2351, 28, 'languages', 'Changed WebSite Language as Deutsch', '2023-07-13 06:32:57', '2023-07-13 06:32:57', NULL);
INSERT INTO `loghistories` VALUES (2352, 28, 'languages', 'Changed WebSite Language as Polski', '2023-07-13 06:33:14', '2023-07-13 06:33:14', NULL);
INSERT INTO `loghistories` VALUES (2353, 28, 'languages', 'Changed WebSite Language as English', '2023-07-13 06:33:24', '2023-07-13 06:33:24', NULL);
INSERT INTO `loghistories` VALUES (2354, 1, 'languages', 'Changed WebSite Language as Français', '2023-07-13 10:30:59', '2023-07-13 10:30:59', NULL);
INSERT INTO `loghistories` VALUES (2355, 1, 'languages', 'Changed WebSite Language as English', '2023-07-13 10:46:19', '2023-07-13 10:46:19', NULL);
INSERT INTO `loghistories` VALUES (2356, 1, 'prices', 'Price List by type (8) View', '2023-07-13 10:50:29', '2023-07-13 10:50:29', NULL);
INSERT INTO `loghistories` VALUES (2357, 1, 'prices', 'Price List by type (4) View', '2023-07-13 10:51:19', '2023-07-13 10:51:19', NULL);
INSERT INTO `loghistories` VALUES (2358, 1, 'pricecompetitors', 'Price Type List View', '2023-07-13 10:51:33', '2023-07-13 10:51:33', NULL);
INSERT INTO `loghistories` VALUES (2359, 1, 'pricecompares', 'Price All Competitors by sandro nutini View', '2023-07-13 10:51:46', '2023-07-13 10:51:46', NULL);
INSERT INTO `loghistories` VALUES (2360, 28, 'prices', 'Price List by type (1) View', '2023-07-13 11:56:21', '2023-07-13 11:56:21', NULL);
INSERT INTO `loghistories` VALUES (2361, 28, 'prices', 'Existing Item Editing Page', '2023-07-13 11:56:33', '2023-07-13 11:56:33', NULL);
INSERT INTO `loghistories` VALUES (2362, 28, 'prices', 'Price List View', '2023-07-13 11:56:41', '2023-07-13 11:56:41', NULL);
INSERT INTO `loghistories` VALUES (2363, 28, 'prices', 'Existing Item Editing Page', '2023-07-13 11:56:48', '2023-07-13 11:56:48', NULL);
INSERT INTO `loghistories` VALUES (2364, 28, 'prices', 'Price List View', '2023-07-13 11:57:01', '2023-07-13 11:57:01', NULL);
INSERT INTO `loghistories` VALUES (2365, 28, 'prices', 'Existing Item Editing Page', '2023-07-13 12:06:26', '2023-07-13 12:06:26', NULL);
INSERT INTO `loghistories` VALUES (2366, 28, 'prices', 'Price List View', '2023-07-13 12:06:31', '2023-07-13 12:06:31', NULL);
INSERT INTO `loghistories` VALUES (2367, 28, 'pricings', 'Pricing Class View', '2023-07-13 12:06:36', '2023-07-13 12:06:36', NULL);
INSERT INTO `loghistories` VALUES (2368, 28, 'pricings', 'Existing Item Showing Page', '2023-07-13 12:12:28', '2023-07-13 12:12:28', NULL);
INSERT INTO `loghistories` VALUES (2369, 28, 'pricings', 'Pricing Class View', '2023-07-13 12:12:31', '2023-07-13 12:12:31', NULL);
INSERT INTO `loghistories` VALUES (2370, 1, 'pricetypes', 'Price Type List View', '2023-07-15 20:42:07', '2023-07-15 20:42:07', NULL);
INSERT INTO `loghistories` VALUES (2371, 1, 'prices', 'Price List View', '2023-07-15 20:43:29', '2023-07-15 20:43:29', NULL);
INSERT INTO `loghistories` VALUES (2372, 1, 'prices', 'Price List View', '2023-07-15 20:43:49', '2023-07-15 20:43:49', NULL);
INSERT INTO `loghistories` VALUES (2373, 1, 'pricemanages', 'Price management View', '2023-07-17 21:00:14', '2023-07-17 21:00:14', NULL);
INSERT INTO `loghistories` VALUES (2374, 1, 'pricemanages', 'Price management View', '2023-07-17 21:00:17', '2023-07-17 21:00:17', NULL);
INSERT INTO `loghistories` VALUES (2375, 1, 'pricetypes', 'Price Type List View', '2023-07-17 21:00:21', '2023-07-17 21:00:21', NULL);
INSERT INTO `loghistories` VALUES (2376, 1, 'prices', 'Price List View', '2023-07-17 21:00:26', '2023-07-17 21:00:26', NULL);
INSERT INTO `loghistories` VALUES (2377, 1, 'pricings', 'Pricing Class View', '2023-07-17 21:00:32', '2023-07-17 21:00:32', NULL);
INSERT INTO `loghistories` VALUES (2378, 1, 'pricemanages', 'Price management View', '2023-07-17 21:00:42', '2023-07-17 21:00:42', NULL);
INSERT INTO `loghistories` VALUES (2379, 28, 'prices', 'Price List by type (1) View', '2023-07-17 21:13:05', '2023-07-17 21:13:05', NULL);
INSERT INTO `loghistories` VALUES (2380, 28, 'prices', 'Price List View', '2023-07-17 21:13:32', '2023-07-17 21:13:32', NULL);
INSERT INTO `loghistories` VALUES (2381, 28, 'prices', 'New Item Creating Page', '2023-07-17 21:14:26', '2023-07-17 21:14:26', NULL);
INSERT INTO `loghistories` VALUES (2382, 28, 'pricetypes', 'Price Type List View', '2023-07-17 21:14:33', '2023-07-17 21:14:33', NULL);
INSERT INTO `loghistories` VALUES (2383, 1, 'prices', 'Price List by type (10) View', '2023-07-18 11:27:46', '2023-07-18 11:27:46', NULL);
INSERT INTO `loghistories` VALUES (2384, 1, 'prices', 'Price List by type (12) View', '2023-07-18 11:27:52', '2023-07-18 11:27:52', NULL);
INSERT INTO `loghistories` VALUES (2385, 1, 'pricemanages', 'Price management View', '2023-07-19 09:26:18', '2023-07-19 09:26:18', NULL);
INSERT INTO `loghistories` VALUES (2386, 1, 'pricings', 'Pricing Class View', '2023-07-19 09:26:21', '2023-07-19 09:26:21', NULL);
INSERT INTO `loghistories` VALUES (2387, 1, 'prices', 'Price List by type (3) View', '2023-07-19 10:41:39', '2023-07-19 10:41:39', NULL);
INSERT INTO `loghistories` VALUES (2388, 28, 'prices', 'Price List by type (1) View', '2023-07-19 18:50:22', '2023-07-19 18:50:22', NULL);
INSERT INTO `loghistories` VALUES (2389, 28, 'prices', 'Price List by type (1) View', '2023-07-19 18:58:33', '2023-07-19 18:58:33', NULL);
INSERT INTO `loghistories` VALUES (2390, 1, 'pricetypes', 'Price Type List View', '2023-07-20 10:23:59', '2023-07-20 10:23:59', NULL);
INSERT INTO `loghistories` VALUES (2391, 1, 'prices', 'Price List View', '2023-07-20 19:08:37', '2023-07-20 19:08:37', NULL);

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `media_model_type_model_id_index`(`model_type` ASC, `model_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_08_09_000001_create_media_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_08_09_000002_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_08_09_000003_create_roles_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_08_09_000004_create_users_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_08_09_000007_create_permission_role_pivot_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_08_09_000008_create_role_user_pivot_table', 1);
INSERT INTO `migrations` VALUES (13, '2022_05_25_062647_create_scooters_table', 1);
INSERT INTO `migrations` VALUES (14, '2022_05_25_074638_create_scooter_statuses_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pcinfos
-- ----------------------------
DROP TABLE IF EXISTS `pcinfos`;
CREATE TABLE `pcinfos`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int UNSIGNED NOT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_verified` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pcinfos
-- ----------------------------
INSERT INTO `pcinfos` VALUES (3, 1, 'ca9ebb0f7014a8c83a6a65aaa66f8f4eb720b2b8d578b69a10dacb7533ebcd71', 1, '2023-06-25 05:16:19', '2023-06-25 05:16:19', NULL);
INSERT INTO `pcinfos` VALUES (4, 19, '0a62943d417b0c1f82d8dbd642ed3103b381dce33d6c7cb98b0ea505e8381907', 0, '2023-06-25 11:53:38', '2023-06-25 11:53:38', NULL);
INSERT INTO `pcinfos` VALUES (5, 1, '09db80cf3c35e5b63f6444a1bd2e9de47cae238c41212357b73d08391deb0f7f', 1, '2023-06-25 12:04:27', '2023-06-26 15:33:36', NULL);
INSERT INTO `pcinfos` VALUES (6, 1, 'ee14eee98de73eb980b287c032f6921ae747eccad8da85da4a82d13f504f81e6', 1, '2023-06-26 11:58:15', '2023-06-27 12:19:52', NULL);
INSERT INTO `pcinfos` VALUES (8, 1, '8b208b95b6b49317c9cb1bee9e4c50b9e6774c6266762c32235caffa1816c44f', 0, '2023-06-26 14:40:24', '2023-06-26 14:40:24', NULL);
INSERT INTO `pcinfos` VALUES (9, 20, 'ee14eee98de73eb980b287c032f6921ae747eccad8da85da4a82d13f504f81e6', 0, '2023-06-26 14:43:38', '2023-06-26 14:43:38', NULL);
INSERT INTO `pcinfos` VALUES (10, 15, 'ee14eee98de73eb980b287c032f6921ae747eccad8da85da4a82d13f504f81e6', 0, '2023-06-26 15:22:39', '2023-06-26 15:22:39', NULL);
INSERT INTO `pcinfos` VALUES (11, 14, 'ee14eee98de73eb980b287c032f6921ae747eccad8da85da4a82d13f504f81e6', 1, '2023-06-26 15:23:19', '2023-06-26 15:23:43', NULL);
INSERT INTO `pcinfos` VALUES (12, 21, 'ee14eee98de73eb980b287c032f6921ae747eccad8da85da4a82d13f504f81e6', 1, '2023-06-26 15:25:09', '2023-06-26 15:25:21', NULL);
INSERT INTO `pcinfos` VALUES (13, 22, '09db80cf3c35e5b63f6444a1bd2e9de47cae238c41212357b73d08391deb0f7f', 0, '2023-06-26 19:55:17', '2023-06-26 19:55:17', NULL);
INSERT INTO `pcinfos` VALUES (15, 18, '605739805801f89e0fbefad3c3002ca76f7d18a8cf0c6a4802a9ae7c80f45883', 1, '2023-06-28 10:47:58', '2023-06-28 10:51:03', NULL);
INSERT INTO `pcinfos` VALUES (16, 18, '2040a37366aa571d758da2db540596467cb06a84322279653c000563e3232b6a', 1, '2023-06-28 11:01:54', '2023-06-28 11:06:48', NULL);
INSERT INTO `pcinfos` VALUES (17, 26, '262a13b0a36a9f83559033b40f0877699efce9c6dd017e013df78d695950cc89', 0, '2023-07-02 01:07:34', '2023-07-02 01:07:34', NULL);
INSERT INTO `pcinfos` VALUES (18, 27, '262a13b0a36a9f83559033b40f0877699efce9c6dd017e013df78d695950cc89', 0, '2023-07-02 01:15:42', '2023-07-02 01:15:42', NULL);
INSERT INTO `pcinfos` VALUES (19, 1, '262a13b0a36a9f83559033b40f0877699efce9c6dd017e013df78d695950cc89', 0, '2023-07-02 16:58:55', '2023-07-02 16:58:55', NULL);
INSERT INTO `pcinfos` VALUES (20, 28, '262a13b0a36a9f83559033b40f0877699efce9c6dd017e013df78d695950cc89', 0, '2023-07-03 09:07:15', '2023-07-03 09:07:15', NULL);
INSERT INTO `pcinfos` VALUES (21, 14, '262a13b0a36a9f83559033b40f0877699efce9c6dd017e013df78d695950cc89', 0, '2023-07-03 09:37:54', '2023-07-03 10:22:38', NULL);
INSERT INTO `pcinfos` VALUES (32, 42, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 0, '2023-08-04 13:33:14', '2023-08-04 13:33:14', NULL);
INSERT INTO `pcinfos` VALUES (33, 43, '12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0', 0, '2023-08-04 13:38:03', '2023-08-04 13:38:03', NULL);

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `role_id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
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
INSERT INTO `permission_role` VALUES (2, 17);
INSERT INTO `permission_role` VALUES (2, 23);
INSERT INTO `permission_role` VALUES (1, 29);
INSERT INTO `permission_role` VALUES (1, 30);
INSERT INTO `permission_role` VALUES (1, 31);
INSERT INTO `permission_role` VALUES (1, 32);
INSERT INTO `permission_role` VALUES (1, 33);
INSERT INTO `permission_role` VALUES (2, 29);
INSERT INTO `permission_role` VALUES (2, 32);
INSERT INTO `permission_role` VALUES (1, 35);
INSERT INTO `permission_role` VALUES (1, 36);
INSERT INTO `permission_role` VALUES (1, 36);
INSERT INTO `permission_role` VALUES (1, 37);
INSERT INTO `permission_role` VALUES (1, 34);
INSERT INTO `permission_role` VALUES (2, 37);
INSERT INTO `permission_role` VALUES (1, 38);
INSERT INTO `permission_role` VALUES (1, 39);
INSERT INTO `permission_role` VALUES (3, 1);
INSERT INTO `permission_role` VALUES (1, 40);
INSERT INTO `permission_role` VALUES (1, 41);
INSERT INTO `permission_role` VALUES (1, 42);
INSERT INTO `permission_role` VALUES (1, 43);
INSERT INTO `permission_role` VALUES (1, 44);
INSERT INTO `permission_role` VALUES (4, 1);
INSERT INTO `permission_role` VALUES (4, 4);
INSERT INTO `permission_role` VALUES (4, 17);
INSERT INTO `permission_role` VALUES (4, 21);
INSERT INTO `permission_role` VALUES (4, 23);
INSERT INTO `permission_role` VALUES (4, 29);
INSERT INTO `permission_role` VALUES (4, 32);
INSERT INTO `permission_role` VALUES (4, 35);
INSERT INTO `permission_role` VALUES (4, 36);
INSERT INTO `permission_role` VALUES (1, 45);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `display` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'user_management_access', 'user_management_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (2, 'permission_create', 'permission_create', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (3, 'permission_edit', 'permission_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (4, 'permission_show', 'permission_show', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (5, 'permission_delete', 'permission_delete', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (6, 'permission_access', 'permission_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (7, 'role_create', 'role_create', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (8, 'role_edit', 'role_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (9, 'role_show', 'role_show', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (10, 'role_delete', 'role_delete', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (11, 'role_access', 'role_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (12, 'user_create', 'user_create', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (13, 'user_edit', 'user_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (14, 'user_show', 'user_show', NULL, '2023-05-18 03:34:10', NULL);
INSERT INTO `permissions` VALUES (15, 'user_delete', 'user_delete', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (16, 'user_access', 'user_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (17, 'profile_password_edit', 'profile_password_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (18, 'scooter_management_access', 'price_management_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (19, 'scooter_create', 'price_create', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (20, 'scooter_edit', 'price_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (21, 'scooter_show', 'price_show', NULL, '2023-05-18 03:59:24', NULL);
INSERT INTO `permissions` VALUES (22, 'scooter_delete', 'price_delete', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (23, 'scooter_access', 'price_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (24, 'scooter_status_create', 'price_status_create', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (25, 'scooter_status_edit', 'price_status_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (26, 'scooter_status_show', 'price_status_show', NULL, '2023-05-18 04:16:23', NULL);
INSERT INTO `permissions` VALUES (27, 'scooter_status_delete', 'price_status_delete', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (28, 'scooter_status_access', 'price_status_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (29, 'scooter_list_access', 'price_list_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (30, 'scooter_list_create', 'price_list_create', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (31, 'scooter_list_edit', 'price_list_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (32, 'scooter_list_show', 'price_list_show', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (33, 'scooter_list_delete', 'price_list_delete', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (34, 'history_access', 'history_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (35, 'language_access', 'language_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (36, 'projects_access', 'projects_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (37, 'settings_access', 'settings_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (38, 'settings_version_edit', 'settings_version_edit', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (39, 'project_job_position', 'project_job_position', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (40, 'price_add', 'price_add', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (41, 'price_import', 'price_import', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (42, 'price_export', 'price_export', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (43, 'price_delete', 'price_delete', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (44, 'customer_access', 'customer_access', NULL, NULL, NULL);
INSERT INTO `permissions` VALUES (45, 'customer_verify_access', 'customer_verify_access', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pricecompares
-- ----------------------------
DROP TABLE IF EXISTS `pricecompares`;
CREATE TABLE `pricecompares`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `price_id` int NULL DEFAULT NULL,
  `competitor_id` int NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pricecompares
-- ----------------------------
INSERT INTO `pricecompares` VALUES (5, 1, 14, 1, 'It is fish type price competitor', 213, '2023-01-10 23:56:47', '2023-01-10 23:56:47', NULL);
INSERT INTO `pricecompares` VALUES (55, 1, 14, 8, 'Testing', 1423.23, '2023-01-12 20:37:32', '2023-01-12 20:37:32', NULL);
INSERT INTO `pricecompares` VALUES (56, 1, 362, 2, 'testing1', 1329, '2023-01-12 20:37:52', '2023-01-12 20:37:52', NULL);
INSERT INTO `pricecompares` VALUES (57, 1, 367, 5, 'Private end user', 150, '2023-01-12 20:38:05', '2023-01-12 20:38:05', NULL);
INSERT INTO `pricecompares` VALUES (58, 1, 367, 1, 'CLRC QUANTUM 35 SSC MODBUS-RFM DPC', 111, '2023-01-12 20:38:13', '2023-01-12 20:38:13', NULL);
INSERT INTO `pricecompares` VALUES (59, 1, 394, 4, 'Installer', 32, '2023-01-12 20:39:04', '2023-01-12 20:39:04', NULL);
INSERT INTO `pricecompares` VALUES (60, 1, 362, 5, 'Private end user', 150, '2023-01-12 21:27:54', '2023-01-12 21:27:54', NULL);
INSERT INTO `pricecompares` VALUES (61, 1, 361, 8, 'Test', 1231, '2023-01-12 22:29:44', '2023-01-12 22:29:44', NULL);
INSERT INTO `pricecompares` VALUES (62, 1, 364, 2, 'test1', 1000, '2023-01-13 00:42:49', '2023-01-13 00:42:49', NULL);
INSERT INTO `pricecompares` VALUES (63, 1, 13, 5, 'Testing 5', 1232, '2023-01-13 09:38:14', '2023-01-13 09:38:14', NULL);
INSERT INTO `pricecompares` VALUES (64, 1, 365, 2, 'Test', 1000, '2023-01-13 09:39:39', '2023-01-13 09:39:39', NULL);
INSERT INTO `pricecompares` VALUES (65, 1, 13, 4, 'Installer', 1000, '2023-01-13 10:31:52', '2023-01-13 10:31:52', NULL);
INSERT INTO `pricecompares` VALUES (66, 1, 14, 5, 'Installer', 1122, '2023-01-16 03:58:25', '2023-01-16 03:58:25', NULL);
INSERT INTO `pricecompares` VALUES (67, 9, 361, 4, 'Installer', 111, '2023-01-16 09:45:17', '2023-01-16 09:45:17', NULL);
INSERT INTO `pricecompares` VALUES (68, 1, 1346, 13, 'model cairox', 3450, '2023-05-31 12:42:59', '2023-05-31 12:42:59', NULL);
INSERT INTO `pricecompares` VALUES (69, 1, 2359, 15, 'HRC300', 1272.05, '2023-06-17 09:56:59', '2023-06-17 09:56:59', NULL);
INSERT INTO `pricecompares` VALUES (70, 1, 1381, 16, 'DFE 400', 9428, '2023-06-23 12:08:14', '2023-06-23 12:08:14', NULL);
INSERT INTO `pricecompares` VALUES (71, 1, 1388, 16, 'DFE 600', 10955, '2023-06-23 12:22:32', '2023-06-23 12:22:32', NULL);
INSERT INTO `pricecompares` VALUES (72, 1, 2412, 17, 'NEOTIME', 1890, '2023-06-28 17:50:11', '2023-06-28 17:50:11', NULL);
INSERT INTO `pricecompares` VALUES (73, 1, 2413, 17, 'NEOTIME 900 FIRST', 2430, '2023-06-28 17:53:30', '2023-06-28 17:53:30', NULL);
INSERT INTO `pricecompares` VALUES (74, 1, 2414, 17, 'NEOTIME 1300 FIRST', 2940, '2023-06-28 17:56:51', '2023-06-28 17:56:51', NULL);
INSERT INTO `pricecompares` VALUES (75, 1, 2415, 17, 'NEOTIME 1800 FIRST', 3400, '2023-06-28 17:58:27', '2023-06-28 17:58:27', NULL);
INSERT INTO `pricecompares` VALUES (76, 1, 2416, 17, 'NEOTIME 2500 FIRST', 3950, '2023-06-28 17:59:04', '2023-06-28 17:59:04', NULL);
INSERT INTO `pricecompares` VALUES (77, 1, 2359, 18, 'duco box 325', 1016.9, '2023-07-05 20:32:17', '2023-07-05 20:32:17', NULL);

-- ----------------------------
-- Table structure for pricecompetitors
-- ----------------------------
DROP TABLE IF EXISTS `pricecompetitors`;
CREATE TABLE `pricecompetitors`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pricelink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pricelist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `datasheet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of pricecompetitors
-- ----------------------------
INSERT INTO `pricecompetitors` VALUES (13, 'cairox', '1', 'https://www.cairox.be/NL/?cf=701280822a755dd797e546', NULL, '100643', 'guusteske', '2023-05-13 13:46:44', '2023-05-13 13:46:44', NULL, NULL);
INSERT INTO `pricecompetitors` VALUES (14, 'vasco', NULL, 'https://vasco.eu/files/downloads/ventilatie-prijslijst/Prijslijst-Vasco-ventilatie-NL-BE-042023.pdf', 'Prijslijst-Vasco-ventilatie-NL-BE-042023.pdf', '-', '-', '2023-06-12 21:16:22', '2023-06-12 21:16:22', NULL, NULL);
INSERT INTO `pricecompetitors` VALUES (15, 'orcon', '1', 'https://www.ventilatieland.nl/categorie/13002/orcon-hrc-500.html', 'technische-specificaties-Orcon-HRC-300-400-wtw-ecomax-healthline_18820011313697.pdf', NULL, NULL, '2023-06-17 09:51:14', '2023-06-17 09:58:07', NULL, NULL);
INSERT INTO `pricecompetitors` VALUES (16, 'aldes  DFE COMPACT', '2', 'https://www.aldes.fr/pro/produits/centrales-de-traitement-d-air/cta-compactes/dfe-compact-micro-watt#product-documents', NULL, NULL, NULL, '2023-06-23 11:43:28', '2023-06-23 12:05:05', NULL, NULL);
INSERT INTO `pricecompetitors` VALUES (17, 'CALADAIR', '1', 'https://caladair.com/', NULL, NULL, NULL, '2023-06-28 17:44:54', '2023-06-28 17:53:54', NULL, 'CALADAIR_NEOTIME_EN.pdf');
INSERT INTO `pricecompetitors` VALUES (18, 'DUCO Box Energy 325 1ZS', '1', 'https://www.ventilatieland.nl/artikel/40630/duco-wtw-ducobox-energy-325-1zs-1-zone-sturing-rechts-325m-h.html', 'DUCOBOX.pdf', NULL, NULL, '2023-07-05 20:26:22', '2023-07-05 20:35:15', NULL, 'technische-fiche-ducobox-energy-premium-325_11270012589029.pdf');

-- ----------------------------
-- Table structure for pricemanages
-- ----------------------------
DROP TABLE IF EXISTS `pricemanages`;
CREATE TABLE `pricemanages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `price_id` int NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pricemanages
-- ----------------------------
INSERT INTO `pricemanages` VALUES (12, 13, '2023-01-05 10:22:35', '2023-03-10 07:50:20', '2023-03-10 07:50:20');
INSERT INTO `pricemanages` VALUES (13, 14, '2023-01-05 10:23:38', '2023-01-06 00:10:34', '2023-01-06 00:10:34');
INSERT INTO `pricemanages` VALUES (14, 162, '2023-01-06 00:09:46', '2023-01-06 00:52:55', '2023-01-06 00:52:55');
INSERT INTO `pricemanages` VALUES (15, 14, '2023-01-06 03:12:06', '2023-03-10 07:50:23', '2023-03-10 07:50:23');
INSERT INTO `pricemanages` VALUES (16, 13, '2023-01-06 03:12:16', '2023-03-10 07:50:26', '2023-03-10 07:50:26');
INSERT INTO `pricemanages` VALUES (17, 395, '2023-04-14 18:20:27', '2023-04-14 18:20:27', NULL);
INSERT INTO `pricemanages` VALUES (18, 1624, '2023-06-15 11:44:06', '2023-06-15 11:44:06', NULL);

-- ----------------------------
-- Table structure for priceroles
-- ----------------------------
DROP TABLE IF EXISTS `priceroles`;
CREATE TABLE `priceroles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `pricetype_id` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of priceroles
-- ----------------------------
INSERT INTO `priceroles` VALUES (111, 8, 1, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (112, 8, 3, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (113, 8, 4, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (114, 8, 6, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (115, 8, 8, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (116, 8, 10, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (117, 8, 11, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (118, 8, 12, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (119, 8, 13, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (120, 8, 14, '2023-03-21 16:12:51', '2023-03-21 16:13:36', '2023-03-21 16:13:36');
INSERT INTO `priceroles` VALUES (121, 8, 1, '2023-03-21 16:13:36', '2023-03-21 16:13:36', NULL);
INSERT INTO `priceroles` VALUES (122, 8, 3, '2023-03-21 16:13:36', '2023-03-21 16:13:36', NULL);
INSERT INTO `priceroles` VALUES (123, 8, 4, '2023-03-21 16:13:36', '2023-03-21 16:13:36', NULL);
INSERT INTO `priceroles` VALUES (124, 8, 6, '2023-03-21 16:13:36', '2023-03-21 16:13:36', NULL);
INSERT INTO `priceroles` VALUES (125, 8, 8, '2023-03-21 16:13:36', '2023-03-21 16:13:36', NULL);
INSERT INTO `priceroles` VALUES (126, 1, 1, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (127, 1, 3, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (128, 1, 4, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (129, 1, 6, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (130, 1, 8, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (131, 1, 10, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (132, 1, 11, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (133, 1, 12, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (134, 1, 13, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);
INSERT INTO `priceroles` VALUES (135, 1, 14, '2023-03-21 16:14:22', '2023-03-21 16:14:22', NULL);

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pricetype_id` int NULL DEFAULT NULL,
  `itemcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `id_model` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2481 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of prices
-- ----------------------------
INSERT INTO `prices` VALUES (395, 4, 'F025QXXXXX1', 'Quark 25 ', NULL, 605, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (396, 4, 'F025QXXXPX1', 'Quark 25 PCK ', NULL, 608.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (397, 4, 'F025QXXXKX1', 'Quark 25 KHK', NULL, 612, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (398, 4, 'F025QXXXAX1', 'Quark 25 PCK KHK ', NULL, 615.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (399, 4, 'F025QXXFXX1', 'Quark 25 FKI ', NULL, 660, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (400, 4, 'F025QXXFPX1', 'Quark 25 FKI PCK ', NULL, 663.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (401, 4, 'F025QXXFKX1', 'Quark 25 FKI KHK ', NULL, 667, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (402, 4, 'F025QXXFAX1', 'Quark 25 FKI PCK KHK ', NULL, 670.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (403, 4, 'F025QXTXXX1', 'Quark 25 KTP ', NULL, 618, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (404, 4, 'F025QXTXPX1', 'Quark 25 KTP PCK ', NULL, 621.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (405, 4, 'F025QXTXKX1', 'Quark 25 KTP KHK ', NULL, 625, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (406, 4, 'F025QXTXAX1', 'Quark 25 KTP PCK KHK ', NULL, 628.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (407, 4, 'F025QXTFXX1', 'Quark 25 KTP FKI ', NULL, 673, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (408, 4, 'F025QXTFPX1', 'Quark 25 KTP FKI PCK ', NULL, 676.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (409, 4, 'F025QXTFKX1', 'Quark 25 KTP FKI KHK ', NULL, 680, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (410, 4, 'F025QXTFAX1', 'Quark 25 KTP FKI PCK KHK ', NULL, 683.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (411, 4, 'F025QWXXXX1', 'Quark 25 WBM ', NULL, 628, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (412, 4, 'F025QWXXPX1', 'Quark 25 WBM PCK ', NULL, 631.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (413, 4, 'F025QWXXKX1', 'Quark 25 WBM KHK ', NULL, 635, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (414, 4, 'F025QWXXAX1', 'Quark 25 WBM PCK KHK ', NULL, 638.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (415, 4, 'F025QWXFXX1', 'Quark 25 WBM FKI ', NULL, 683, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (416, 4, 'F025QWXFPX1', 'Quark 25 WBM FKI PCK ', NULL, 686.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (417, 4, 'F025QWXFKX1', 'Quark 25 WBM FKI KHK ', NULL, 690, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (418, 4, 'F025QWXFAX1', 'Quark 25 WBM FKI PCK KHK ', NULL, 693.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (419, 4, 'F025QWTXXX1', 'Quark 25 WBM KTP ', NULL, 641, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (420, 4, 'F025QWTXPX1', 'Quark 25 WBM KTP PCK ', NULL, 644.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (421, 4, 'F025QWTXKX1', 'Quark 25 WBM KTP KHK ', NULL, 648, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (422, 4, 'F025QWTXAX1', 'Quark 25 WBM KTP PCK KHK ', NULL, 651.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (423, 4, 'F025QWTFXX1', 'Quark 25 WBM KTP FKI ', NULL, 683, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (424, 4, 'F025QWTFPX1', 'Quark 25 WBM KTP FKI PCK ', NULL, 686.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (425, 4, 'F025QWTFKX1', 'Quark 25 WBM KTP FKI KHK ', NULL, 690, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (426, 4, 'F025QWTFAX1', 'Quark 25 WBM KTP FKI PCK KHK ', NULL, 693.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (427, 4, 'F025QBXXXX1', 'Quark 25 WBB ', NULL, 630, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (428, 4, 'F025QBXXPX1', 'Quark 25 WBB PCK ', NULL, 633.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (429, 4, 'F025QBXXKX1', 'Quark 25 WBB KHK ', NULL, 637, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (430, 4, 'F025QBXXAX1', 'Quark 25 WBB PCK KHK ', NULL, 640.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (431, 4, 'F025QBXFXX1', 'Quark 25 WBB FKI ', NULL, 685, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (432, 4, 'F025QBXFPX1', 'Quark 25 WBB FKI PCK ', NULL, 688.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (433, 4, 'F025QBXFKX1', 'Quark 25 WBB FKI KHK ', NULL, 692, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (434, 4, 'F025QBXFAX1', 'Quark 25 WBB FKI PCK KHK ', NULL, 695.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (435, 4, 'F025QBTXXX1', 'Quark 25 WBB KTP ', NULL, 643, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (436, 4, 'F025QBTXPX1', 'Quark 25 WBB KTP PCK ', NULL, 646.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (437, 4, 'F025QBTXKX1', 'Quark 25 WBB KTP KHK ', NULL, 650, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (438, 4, 'F025QBTXAX1', 'Quark 25 WBB KTP PCK KHK ', NULL, 653.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (439, 4, 'F025QBTFXX1', 'Quark 25 WBB KTP FKI ', NULL, 698, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (440, 4, 'F025QBTFPX1', 'Quark 25 WBB KTP FKI PCK ', NULL, 701.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (441, 4, 'F025QBTFKX1', 'Quark 25 WBB KTP FKI KHK ', NULL, 705, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (442, 4, 'F025QBTFAX1', 'Quark 25 WBB KTP FKI PCK KHK ', NULL, 708.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (443, 4, 'SPRSR5Q0001', 'Fire alarm kit (FKI)', NULL, 70.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (444, 4, 'SPRSR5Q0002', 'Kitchen hood kit (KHK)', NULL, 17.7, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (445, 4, 'SPRSR5Q0003', 'Power cable kit 1.5m (PCK)', NULL, 13.9, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (446, 4, 'SPRSR5Q0004', 'Capacitive touch control panel (KTP)', NULL, 24.3, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (447, 4, 'SPRSR5Q0005', 'WiFi and Bluetooth module (WBM)', NULL, 35.3, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (448, 4, 'SPRSR5Q0006', 'WiFi and Bluetooth booster antenna (WBB)', NULL, 37.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (449, 4, 'SPRSR5Q0007', 'RJ45 port multiplier (HUB)', NULL, 16.6, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (450, 4, 'SPRSR5Q0008', 'Fan Q025', NULL, 56.8, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (451, 4, 'SPRSR5Q0009', 'Heat Exchanger Q025', NULL, 110.1, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (452, 4, 'SPRSR5Q0010', 'G4 Filter', NULL, 20.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (453, 4, 'SPRSR5Q0011', 'F7 Filter', NULL, 30.5, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (454, 4, 'SPRSR5Q0012', 'Electronic Mainboard Q025', NULL, 86.05, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (455, 4, 'SPRSR5Q0013', 'Bypass motor', NULL, 22.3, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (456, 4, 'SPRSR5Q0014', 'Temperature sensor Kit', NULL, 17.4, NULL, '2023-03-10 08:22:08', '2023-05-25 15:38:47', '2023-05-25 15:38:47', NULL);
INSERT INTO `prices` VALUES (604, 12, 'FCLRC6OSC086', 'CLRC 086 OSC', NULL, 2939.99, '1.jpg', '2023-05-19 14:55:00', '2023-05-19 15:05:21', '2023-05-19 15:05:21', NULL);
INSERT INTO `prices` VALUES (605, 12, 'FCLRC6SSC086', 'CLRC 086 SSC', NULL, 2939.99, '2.jpg', '2023-05-19 14:55:02', '2023-05-19 15:06:04', '2023-05-19 15:06:04', NULL);
INSERT INTO `prices` VALUES (606, 12, 'FCLRC6OSC146', 'CLRC 146 OSC', NULL, 3353.01, '1.jpg', '2023-05-19 14:55:02', '2023-05-19 15:06:14', '2023-05-19 15:06:14', NULL);
INSERT INTO `prices` VALUES (607, 12, 'FCLRC6SSC146', 'CLRC 146 SSC', NULL, 3353.01, '2.jpg', '2023-05-19 14:55:02', '2023-05-19 15:06:36', '2023-05-19 15:06:36', NULL);
INSERT INTO `prices` VALUES (608, 12, 'FCLRC6OSC176', 'CLRC 176 OSC', NULL, 3632.47, '1.jpg', '2023-05-19 14:55:02', '2023-05-19 15:06:41', '2023-05-19 15:06:41', NULL);
INSERT INTO `prices` VALUES (609, 12, 'FCLRC6SSC176', 'CLRC 176 SSC', NULL, 3632.47, '1.jpg', '2023-05-19 14:55:02', '2023-05-19 15:06:51', '2023-05-19 15:06:51', NULL);
INSERT INTO `prices` VALUES (610, 12, 'FCLRC6OSC256', 'CLRC 256 OSC', NULL, 3872.24, '1.jpg', '2023-05-19 14:55:02', '2023-05-19 15:06:58', '2023-05-19 15:06:58', NULL);
INSERT INTO `prices` VALUES (611, 12, 'FCLRC6SSC256', 'CLRC 256 SSC', NULL, 4672, '2.jpg', '2023-05-19 14:55:02', '2023-05-19 15:07:05', '2023-05-19 15:07:05', NULL);
INSERT INTO `prices` VALUES (612, 12, 'FCLRC6OSC556', 'CLRC 556 OSC', NULL, 8786.3, '2.jpg', '2023-05-19 14:55:02', '2023-05-19 15:07:09', '2023-05-19 15:07:09', NULL);
INSERT INTO `prices` VALUES (613, 12, 'FCLRC6SSC556', 'CLRC 556 SSC', NULL, 9473.5, '3.jpg', '2023-05-19 14:55:02', '2023-05-19 15:07:14', '2023-05-19 15:07:14', NULL);
INSERT INTO `prices` VALUES (614, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', NULL, 11557.3, '3.jpg', '2023-05-19 14:55:02', '2023-05-19 15:07:18', '2023-05-19 15:07:18', NULL);
INSERT INTO `prices` VALUES (615, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', NULL, 14168.6, '4.jpg', '2023-05-19 14:55:02', '2023-05-19 15:07:22', '2023-05-19 15:07:22', NULL);
INSERT INTO `prices` VALUES (616, 12, 'FCLRC6OSC086', 'CLRC 086 OSC', NULL, 2939.99, '32_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:51', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (617, 12, 'FCLRC6SSC086', 'CLRC 086 SSC', NULL, 2939.99, '33_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (618, 12, 'FCLRC6OSC146', 'CLRC 146 OSC', NULL, 3353.01, '32_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (619, 12, 'FCLRC6SSC146', 'CLRC 146 SSC', NULL, 3353.01, '33_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (620, 12, 'FCLRC6OSC176', 'CLRC 176 OSC', NULL, 3632.47, '32_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (621, 12, 'FCLRC6SSC176', 'CLRC 176 SSC', NULL, 3632.47, '33_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (622, 12, 'FCLRC6OSC256', 'CLRC 256 OSC', NULL, 3872.24, '32_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (623, 12, 'FCLRC6SSC256', 'CLRC 256 SSC', NULL, 4672, '33_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (624, 12, 'FCLRC6OSC556', 'CLRC 556 OSC', NULL, 8786.3, '32_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (625, 12, 'FCLRC6SSC556', 'CLRC 556 SSC', NULL, 9473.5, '33_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (626, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', NULL, 11557.3, '32_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (627, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', NULL, 14168.6, '33_OUTL_C_CLRC6_V.png', '2023-05-19 15:07:52', '2023-05-25 13:25:41', '2023-05-25 13:25:41', NULL);
INSERT INTO `prices` VALUES (628, 8, 'FCLRC40HV16', 'Heat recovery unit CLRC 164 Horizontal', NULL, 8667.05, '38_OUTL_C_164_H.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (629, 8, 'FCLRC40HV41', 'Heat recovery unit CLRC 164 Vertical', NULL, 8667.05, '39_OUTL_C_164_V.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (630, 8, 'FCLRC40HV55', 'Heat recovery unit CLRC 224 Horizontal', NULL, 9867.66, '38_OUTL_C_164_H.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (631, 8, 'FCLRC40HV54', 'Heat recovery unit CLRC 224 Vertical', NULL, 9867.66, '39_OUTL_C_164_V.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (632, 8, 'FCLRC40HV30', 'Heat recovery unit CLRC 324 Horizontal', NULL, 10535.3, '38_OUTL_C_164_H.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (633, 8, 'FCLRC40HV42', 'Heat recovery unit CLRC 324 Vertical', NULL, 10535.3, '39_OUTL_C_164_V.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (634, 8, 'FCLRC40HV40', 'Heat recovery unit CLRC 474 Horizontal', NULL, 11675.4, '38_OUTL_C_164_H.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (635, 8, 'FCLRC40HV43', 'Heat recovery unit CLRC 474 Vertical', NULL, 11675.4, '39_OUTL_C_164_V.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (636, 8, 'FCLRC40HV50', 'Heat recovery unit CLRC 674 Vertical', NULL, 13041.6, '38_OUTL_C_164_H.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (637, 8, 'FCLRC40HV51', 'Heat recovery unit CLRC 674 Horizontal', NULL, 13041.6, '39_OUTL_C_164_V.png', '2023-05-25 11:10:59', '2023-05-25 13:33:47', '2023-05-25 13:33:47', NULL);
INSERT INTO `prices` VALUES (638, 1, 'FCLRCROSC012', 'CLRC 013 OSC B3', NULL, 1453.64, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (639, 1, 'FCLRCROSC013', 'CLRC 013 OSC B4', NULL, 1453.64, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (640, 1, 'FCLRCROSC014', 'CLRC 013 OSC B5', NULL, 1453.64, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (641, 1, 'FCLRCROSC015', 'CLRC 013 OSC B6', NULL, 1453.64, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (642, 1, 'FCLRCROSC016', 'CLRC 013 OSC A4', NULL, 1453.64, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (643, 1, 'FCLRCROSC020', 'CLRC 023 OSC B1', NULL, 1499.4, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (644, 1, 'FCLRCROSC021', 'CLRC 023 OSC B2', NULL, 1499.4, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (645, 1, 'FCLRCROSC022', 'CLRC 023 OSC B3', NULL, 1499.4, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (646, 1, 'FCLRCROSC023', 'CLRC 023 OSC B4', NULL, 1499.4, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (647, 1, 'FCLRCROSC024', 'CLRC 023 OSC B5', NULL, 1499.4, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (648, 1, 'FCLRCROSC025', 'CLRC 023 OSC B6', NULL, 1499.4, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (649, 1, 'FCLRCROSC026', 'CLRC 023 OSC A4', NULL, 1499.4, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (650, 1, 'FCLRCROSC030', 'CLRC 033 OSC B1', NULL, 1556.77, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (651, 1, 'FCLRCROSC031', 'CLRC 033 OSC B2', NULL, 1556.77, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (652, 1, 'FCLRCROSC032', 'CLRC 033 OSC B3', NULL, 1556.77, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (653, 1, 'FCLRCROSC033', 'CLRC 033 OSC B4', NULL, 1556.77, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (654, 1, 'FCLRCROSC034', 'CLRC 033 OSC B5', NULL, 1556.77, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (655, 1, 'FCLRCROSC035', 'CLRC 033 OSC B6', NULL, 1556.77, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (656, 1, 'FCLRCROSC036', 'CLRC 033 OSC A4', NULL, 1556.77, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (657, 1, 'FCLRCROSC040', 'CLRC 043 OSC B1', NULL, 1811.02, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (658, 1, 'FCLRCROSC041', 'CLRC 043 OSC B2', NULL, 1811.02, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (659, 1, 'FCLRCROSC043', 'CLRC 043 OSC B4', NULL, 1811.02, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (660, 1, 'FCLRCROSC044', 'CLRC 043 OSC B5', NULL, 1811.02, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (661, 1, 'FCLRCROSC045', 'CLRC 043 OSC B6', NULL, 1811.02, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (662, 1, 'FCLRCROSC046', 'CLRC 043 OSC A4', NULL, 1811.02, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (663, 1, 'FCLRCROSC051', 'CLRC 053 OSC B2', NULL, 1919.67, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (664, 1, 'FCLRCROSC052', 'CLRC 053 OSC B3', NULL, 1919.67, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (665, 1, 'FCLRCROSC053', 'CLRC 053 OSC B4', NULL, 1919.67, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (666, 1, 'FCLRCROSC054', 'CLRC 053 OSC B5', NULL, 1919.67, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (667, 1, 'FCLRCROSC055', 'CLRC 053 OSC B6', NULL, 1919.67, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (668, 1, 'FCLRCROSC056', 'CLRC 053 OSC A3', NULL, 1919.67, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (669, 1, 'FCLRCROSC057', 'CLRC 053 OSC A4', NULL, 1919.67, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (670, 1, 'FCLRCROSC070', 'CLRC 073 OSC A3', NULL, 2331.73, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (671, 1, 'FCLRCROSC071', 'CLRC 073 OSC A4', NULL, 2331.73, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (672, 1, 'FCLRCROSC072', 'CLRC 073 OSC B1', NULL, 2331.73, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (673, 1, 'FCLRCROSC074', 'CLRC 073 OSC B3', NULL, 2331.73, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (674, 1, 'FCLRCROSC075', 'CLRC 073 OSC B4', NULL, 2331.73, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (675, 1, 'FCLRCROSC076', 'CLRC 073 OSC B5', NULL, 2331.73, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (676, 1, 'FCLRCROSC077', 'CLRC 073 OSC B6', NULL, 2331.73, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (677, 1, 'FCLRC3OSC090', 'CLRC 093 OSC A3', NULL, 2453.03, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (678, 1, 'FCLRC3OSC091', 'CLRC 093 OSC A4', NULL, 2453.03, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (679, 1, 'FCLRC3OSC092', 'CLRC 093 OSC B1', NULL, 2453.03, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (680, 1, 'FCLRC3OSC093', 'CLRC 093 OSC B3', NULL, 2453.03, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (681, 1, 'FCLRC3OSC094', 'CLRC 093 OSC B4', NULL, 2453.03, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (682, 1, 'FCLRC3OSC095', 'CLRC 093 OSC B5', NULL, 2453.03, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (683, 1, 'FCLRC3OSC096', 'CLRC 093 OSC B6', NULL, 2453.03, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (684, 1, 'FCLRC3OSC105', 'CLRC 093 OSC B2', NULL, 2453.03, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (685, 1, 'FCLRC3OSC119', 'CLRC 123 OSC B2', NULL, 2921.24, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (686, 1, 'FCLRC3OSC120', 'CLRC 123 OSC A3', NULL, 2921.24, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (687, 1, 'FCLRC3OSC121', 'CLRC 123 OSC A4', NULL, 2921.24, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (688, 1, 'FCLRC3OSC122', 'CLRC 123 OSC B1', NULL, 2921.24, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (689, 1, 'FCLRC3OSC123', 'CLRC 123 OSC B3', NULL, 2921.24, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (690, 1, 'FCLRC3OSC124', 'CLRC 123 OSC B4', NULL, 2921.24, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (691, 1, 'FCLRC3OSC125', 'CLRC 123 OSC B5', NULL, 2921.24, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (692, 1, 'FCLRC3OSC126', 'CLRC 123 OSC B6', NULL, 2921.24, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (693, 1, 'FCLRC3OSC160', 'CLRC 163 OSC A3', NULL, 3035.82, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (694, 1, 'FCLRC3OSC161', 'CLRC 163 OSC A4', NULL, 3035.82, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (695, 1, 'FCLRC3OSC162', 'CLRC 163 OSC B1', NULL, 3035.82, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (696, 1, 'FCLRC3OSC163', 'CLRC 163 OSC B3', NULL, 3035.82, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (697, 1, 'FCLRC3OSC164', 'CLRC 163 OSC B4', NULL, 3035.82, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (698, 1, 'FCLRC3OSC165', 'CLRC 163 OSC B5', NULL, 3035.82, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (699, 1, 'FCLRC3OSC166', 'CLRC 163 OSC B6', NULL, 3035.82, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (700, 1, 'FCLRC3OSC175', 'CLRC 163 OSC B2', NULL, 3035.82, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (701, 1, 'FCLRC3OSC220', 'CLRC 223 OSC A3', NULL, 3848.75, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (702, 1, 'FCLRC3OSC221', 'CLRC 223 OSC A4', NULL, 3848.75, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (703, 1, 'FCLRC3OSC222', 'CLRC 223 OSC B1', NULL, 3848.75, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (704, 1, 'FCLRC3OSC223', 'CLRC 223 OSC B3', NULL, 3848.75, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (705, 1, 'FCLRC3OSC224', 'CLRC 223 OSC B4', NULL, 3848.75, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (706, 1, 'FCLRC3OSC225', 'CLRC 223 OSC B5', NULL, 3848.75, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (707, 1, 'FCLRC3OSC226', 'CLRC 223 OSC B6', NULL, 3848.75, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (708, 1, 'FCLRC3OSC235', 'CLRC 223 OSC B2', NULL, 3848.75, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (709, 1, 'FCLRC3OSC320', 'CLRC 323 OSC A3', NULL, 4490.1, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (710, 1, 'FCLRC3OSC321', 'CLRC 323 OSC A4', NULL, 4490.1, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (711, 1, 'FCLRC3OSC322', 'CLRC 323 OSC B1', NULL, 4490.1, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (712, 1, 'FCLRC3OSC323', 'CLRC 323 OSC B3', NULL, 4490.1, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (713, 1, 'FCLRC3OSC324', 'CLRC 323 OSC B4', NULL, 4490.1, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (714, 1, 'FCLRC3OSC325', 'CLRC 323 OSC B5', NULL, 4490.1, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (715, 1, 'FCLRC3OSC326', 'CLRC 323 OSC B6', NULL, 4490.1, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (716, 1, 'FCLRC3OSC420', 'CLRC 423 OSC A3', NULL, 5120.34, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (717, 1, 'FCLRC3OSC421', 'CLRC 423 OSC A4', NULL, 5120.34, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (718, 1, 'FCLRC3OSC422', 'CLRC 423 OSC B1', NULL, 5120.34, '49_OUTL_C_43oscbA1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (719, 1, 'FCLRC3OSC423', 'CLRC 423 OSC B3', NULL, 5120.34, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (720, 1, 'FCLRC3OSC424', 'CLRC 423 OSC B4', NULL, 5120.34, '44_OUTL_C_43oscA2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (721, 1, 'FCLRC3OSC425', 'CLRC 423 OSC B5', NULL, 5120.34, '48_OUTL_C_43oscb5.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (722, 1, 'FCLRC3OSC426', 'CLRC 423 OSC B6', NULL, 5120.34, '46_OUTL_C_43oscb6.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (723, 1, 'FCLRC3OSC740', 'CLRC 753 OSC B6', NULL, 9324.13, '299_3D_3_OSC_GRANDE.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (724, 1, 'FCLRC3OSC1053', 'CLRC 1053 OSC B6', NULL, 10970.1, '299_3D_3_OSC_GRANDE.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (725, 1, 'FCLRCRSSC022', 'CLRC 023 SSC A1', NULL, 1489.32, '47_OUTL_C_23_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (726, 1, 'FCLRCRSSC023', 'CLRC 023 SSC A2', NULL, 1503.61, '43_OUTL_C_23_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (727, 1, 'FCLRCRSSC024', 'CLRC 023 SSC A3', NULL, 1503.61, '43_OUTL_C_23_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (728, 1, 'FCLRCRSSC025', 'CLRC 023 SSC B1', NULL, 1503.61, '47_OUTL_C_23_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (729, 1, 'FCLRCRSSC026', 'CLRC 023 SSC B2', NULL, 1503.61, '43_OUTL_C_23_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (730, 1, 'FCLRCRSSC027', 'CLRC 023 SSC B3', NULL, 1503.61, '43_OUTL_C_23_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (731, 1, 'FCLRCRSSC042', 'CLRC 043 SSC A1', NULL, 2066.21, '47_OUTL_C_23_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (732, 1, 'FCLRCRSSC052', 'CLRC 053 SSC A1', NULL, 2188.23, '47_OUTL_C_23_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (733, 1, 'FCLRCRSSC053', 'CLRC 053 SSC A2', NULL, 2188.23, '43_OUTL_C_23_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (734, 1, 'FCLRCRSSC054', 'CLRC 053 SSC A3', NULL, 2188.23, '43_OUTL_C_23_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (735, 1, 'FCLRCRSSC055', 'CLRC 053 SSC B1', NULL, 2188.23, '47_OUTL_C_23_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (736, 1, 'FCLRCRSSC056', 'CLRC 053 SSC B2', NULL, 2188.23, '43_OUTL_C_23_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (737, 1, 'FCLRCRSSC057', 'CLRC 053 SSC B3', NULL, 2188.23, '43_OUTL_C_23_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (738, 1, 'FCLRC3SSC072', 'CLRC 073 SSC A1', NULL, 2591.76, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (739, 1, 'FCLRC3SSC073', 'CLRC 073 SSC A2', NULL, 2591.76, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (740, 1, 'FCLRC3SSC074', 'CLRC 073 SSC A3', NULL, 2591.76, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (741, 1, 'FCLRC3SSC075', 'CLRC 073 SSC B1', NULL, 2591.76, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (742, 1, 'FCLRC3SSC076', 'CLRC 073 SSC B2', NULL, 2591.76, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (743, 1, 'FCLRC3SSC077', 'CLRC 073 SSC B3', NULL, 2591.76, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (744, 1, 'FCLRC3SSC092', 'CLRC 093 SSC A1', NULL, 2620.36, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (745, 1, 'FCLRC3SSC093', 'CLRC 093 SSC A2', NULL, 2620.36, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (746, 1, 'FCLRC3SSC094', 'CLRC 093 SSC A3', NULL, 2620.36, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (747, 1, 'FCLRC3SSC095', 'CLRC 093 SSC B1', NULL, 2620.36, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (748, 1, 'FCLRC3SSC096', 'CLRC 093 SSC B2', NULL, 2620.36, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (749, 1, 'FCLRC3SSC097', 'CLRC 093 SSC B3', NULL, 2620.36, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (750, 1, 'FCLRC3SSC122', 'CLRC 123 SSC A1', NULL, 2962.98, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (751, 1, 'FCLRC3SSC123', 'CLRC 123 SSC A2', NULL, 2962.98, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (752, 1, 'FCLRC3SSC124', 'CLRC 123 SSC A3', NULL, 2962.98, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (753, 1, 'FCLRC3SSC125', 'CLRC 123 SSC B1', NULL, 2962.98, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (754, 1, 'FCLRC3SSC126', 'CLRC 123 SSC B2', NULL, 2962.98, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (755, 1, 'FCLRC3SSC127', 'CLRC 123 SSC B3', NULL, 2962.98, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (756, 1, 'FCLRC3SSC162', 'CLRC 163 SSC A1', NULL, 3321.94, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (757, 1, 'FCLRC3SSC163', 'CLRC 163 SSC A2', NULL, 3321.94, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (758, 1, 'FCLRC3SSC164', 'CLRC 163 SSC A3', NULL, 3321.94, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (759, 1, 'FCLRC3SSC165', 'CLRC 163 SSC B1', NULL, 3321.94, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (760, 1, 'FCLRC3SSC166', 'CLRC 163 SSC B2', NULL, 3321.94, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (761, 1, 'FCLRC3SSC167', 'CLRC 163 SSC B3', NULL, 3321.94, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (762, 1, 'FCLRC3SSC222', 'CLRC 223 SSC A1', NULL, 3781.21, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (763, 1, 'FCLRC3SSC223', 'CLRC 223 SSC A2', NULL, 3781.21, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (764, 1, 'FCLRC3SSC224', 'CLRC 223 SSC A3', NULL, 3781.21, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (765, 1, 'FCLRC3SSC225', 'CLRC 223 SSC B1', NULL, 3781.21, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (766, 1, 'FCLRC3SSC226', 'CLRC 223 SSC B2', NULL, 3781.21, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (767, 1, 'FCLRC3SSC227', 'CLRC 223 SSC B3', NULL, 3781.21, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (768, 1, 'FCLRC3SSC332', 'CLRC 323 SSC A1', NULL, 4804.87, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (769, 1, 'FCLRC3SSC333', 'CLRC 323 SSC A2', NULL, 4804.87, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (770, 1, 'FCLRC3SSC334', 'CLRC 323 SSC A3', NULL, 4804.87, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (771, 1, 'FCLRC3SSC335', 'CLRC 323 SSC B1', NULL, 4804.87, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (772, 1, 'FCLRC3SSC336', 'CLRC 323 SSC B2', NULL, 4804.87, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (773, 1, 'FCLRC3SSC337', 'CLRC 323 SSC B3', NULL, 4804.87, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (774, 1, 'FCLRC3SSC422', 'CLRC 423 SSC A1', NULL, 5810.61, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (775, 1, 'FCLRC3SSC423', 'CLRC 423 SSC A2', NULL, 5810.61, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (776, 1, 'FCLRC3SSC424', 'CLRC 423 SSC A3', NULL, 5810.61, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (777, 1, 'FCLRC3SSC425', 'CLRC 423 SSC B1', NULL, 5810.61, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (778, 1, 'FCLRC3SSC426', 'CLRC 423 SSC B2', NULL, 5810.61, '50_OUTL_C_93_SSC_a2_b2.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (779, 1, 'FCLRC3SSC427', 'CLRC 423 SSC B3', NULL, 5810.61, '50_OUTL_C_93_SSC_a3_b3.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (780, 1, 'FCLRC3SSC540', 'CLRC 543 SSC A1', NULL, 6256.64, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (781, 1, 'FCLRC3SSC541', 'CLRC 543 SSC B1', NULL, 6256.64, '42_OUTL_C_93_SSC_a1_b1.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (782, 1, 'FCLRC3SSC750', 'CLRC 753 SSC A1', NULL, 10.36, '300_3D_3_SSC_GRANDE.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (783, 1, 'FCLRC3SSC1053', 'CLRC 1053 SSC B1', NULL, 11906, '300_3D_3_SSC_GRANDE.png', '2023-05-25 11:57:26', '2023-05-25 12:52:23', '2023-05-25 12:52:23', NULL);
INSERT INTO `prices` VALUES (784, 1, 'FCLRCROSC012', 'CLRC 013 OSC B3', NULL, 1453.64, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (785, 1, 'FCLRCROSC013', 'CLRC 013 OSC B4', NULL, 1453.64, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (786, 1, 'FCLRCROSC014', 'CLRC 013 OSC B5', NULL, 1453.64, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (787, 1, 'FCLRCROSC015', 'CLRC 013 OSC B6', NULL, 1453.64, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (788, 1, 'FCLRCROSC016', 'CLRC 013 OSC A4', NULL, 1453.64, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (789, 1, 'FCLRCROSC020', 'CLRC 023 OSC B1', NULL, 1499.4, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (790, 1, 'FCLRCROSC021', 'CLRC 023 OSC B2', NULL, 1499.4, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (791, 1, 'FCLRCROSC022', 'CLRC 023 OSC B3', NULL, 1499.4, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (792, 1, 'FCLRCROSC023', 'CLRC 023 OSC B4', NULL, 1499.4, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (793, 1, 'FCLRCROSC024', 'CLRC 023 OSC B5', NULL, 1499.4, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (794, 1, 'FCLRCROSC025', 'CLRC 023 OSC B6', NULL, 1499.4, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (795, 1, 'FCLRCROSC026', 'CLRC 023 OSC A4', NULL, 1499.4, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (796, 1, 'FCLRCROSC030', 'CLRC 033 OSC B1', NULL, 1556.77, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (797, 1, 'FCLRCROSC031', 'CLRC 033 OSC B2', NULL, 1556.77, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (798, 1, 'FCLRCROSC032', 'CLRC 033 OSC B3', NULL, 1556.77, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (799, 1, 'FCLRCROSC033', 'CLRC 033 OSC B4', NULL, 1556.77, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (800, 1, 'FCLRCROSC034', 'CLRC 033 OSC B5', NULL, 1556.77, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (801, 1, 'FCLRCROSC035', 'CLRC 033 OSC B6', NULL, 1556.77, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (802, 1, 'FCLRCROSC036', 'CLRC 033 OSC A4', NULL, 1556.77, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (803, 1, 'FCLRCROSC040', 'CLRC 043 OSC B1', NULL, 1811.02, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (804, 1, 'FCLRCROSC041', 'CLRC 043 OSC B2', NULL, 1811.02, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (805, 1, 'FCLRCROSC043', 'CLRC 043 OSC B4', NULL, 1811.02, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (806, 1, 'FCLRCROSC044', 'CLRC 043 OSC B5', NULL, 1811.02, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (807, 1, 'FCLRCROSC045', 'CLRC 043 OSC B6', NULL, 1811.02, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (808, 1, 'FCLRCROSC046', 'CLRC 043 OSC A4', NULL, 1811.02, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (809, 1, 'FCLRCROSC051', 'CLRC 053 OSC B2', NULL, 1919.67, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (810, 1, 'FCLRCROSC052', 'CLRC 053 OSC B3', NULL, 1919.67, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (811, 1, 'FCLRCROSC053', 'CLRC 053 OSC B4', NULL, 1919.67, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (812, 1, 'FCLRCROSC054', 'CLRC 053 OSC B5', NULL, 1919.67, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (813, 1, 'FCLRCROSC055', 'CLRC 053 OSC B6', NULL, 1919.67, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (814, 1, 'FCLRCROSC056', 'CLRC 053 OSC A3', NULL, 1919.67, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (815, 1, 'FCLRCROSC057', 'CLRC 053 OSC A4', NULL, 1919.67, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (816, 1, 'FCLRCROSC070', 'CLRC 073 OSC A3', NULL, 2331.73, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (817, 1, 'FCLRCROSC071', 'CLRC 073 OSC A4', NULL, 2331.73, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (818, 1, 'FCLRCROSC072', 'CLRC 073 OSC B1', NULL, 2331.73, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (819, 1, 'FCLRCROSC074', 'CLRC 073 OSC B3', NULL, 2331.73, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (820, 1, 'FCLRCROSC075', 'CLRC 073 OSC B4', NULL, 2331.73, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (821, 1, 'FCLRCROSC076', 'CLRC 073 OSC B5', NULL, 2331.73, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (822, 1, 'FCLRCROSC077', 'CLRC 073 OSC B6', NULL, 2331.73, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (823, 1, 'FCLRC3OSC090', 'CLRC 093 OSC A3', NULL, 2453.03, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (824, 1, 'FCLRC3OSC091', 'CLRC 093 OSC A4', NULL, 2453.03, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (825, 1, 'FCLRC3OSC092', 'CLRC 093 OSC B1', NULL, 2453.03, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (826, 1, 'FCLRC3OSC093', 'CLRC 093 OSC B3', NULL, 2453.03, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (827, 1, 'FCLRC3OSC094', 'CLRC 093 OSC B4', NULL, 2453.03, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (828, 1, 'FCLRC3OSC095', 'CLRC 093 OSC B5', NULL, 2453.03, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (829, 1, 'FCLRC3OSC096', 'CLRC 093 OSC B6', NULL, 2453.03, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (830, 1, 'FCLRC3OSC105', 'CLRC 093 OSC B2', NULL, 2453.03, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (831, 1, 'FCLRC3OSC119', 'CLRC 123 OSC B2', NULL, 2921.24, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (832, 1, 'FCLRC3OSC120', 'CLRC 123 OSC A3', NULL, 2921.24, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (833, 1, 'FCLRC3OSC121', 'CLRC 123 OSC A4', NULL, 2921.24, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (834, 1, 'FCLRC3OSC122', 'CLRC 123 OSC B1', NULL, 2921.24, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (835, 1, 'FCLRC3OSC123', 'CLRC 123 OSC B3', NULL, 2921.24, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (836, 1, 'FCLRC3OSC124', 'CLRC 123 OSC B4', NULL, 2921.24, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (837, 1, 'FCLRC3OSC125', 'CLRC 123 OSC B5', NULL, 2921.24, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (838, 1, 'FCLRC3OSC126', 'CLRC 123 OSC B6', NULL, 2921.24, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (839, 1, 'FCLRC3OSC160', 'CLRC 163 OSC A3', NULL, 3035.82, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (840, 1, 'FCLRC3OSC161', 'CLRC 163 OSC A4', NULL, 3035.82, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (841, 1, 'FCLRC3OSC162', 'CLRC 163 OSC B1', NULL, 3035.82, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (842, 1, 'FCLRC3OSC163', 'CLRC 163 OSC B3', NULL, 3035.82, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (843, 1, 'FCLRC3OSC164', 'CLRC 163 OSC B4', NULL, 3035.82, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (844, 1, 'FCLRC3OSC165', 'CLRC 163 OSC B5', NULL, 3035.82, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (845, 1, 'FCLRC3OSC166', 'CLRC 163 OSC B6', NULL, 3035.82, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (846, 1, 'FCLRC3OSC175', 'CLRC 163 OSC B2', NULL, 3035.82, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (847, 1, 'FCLRC3OSC220', 'CLRC 223 OSC A3', NULL, 3848.75, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (848, 1, 'FCLRC3OSC221', 'CLRC 223 OSC A4', NULL, 3848.75, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (849, 1, 'FCLRC3OSC222', 'CLRC 223 OSC B1', NULL, 3848.75, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (850, 1, 'FCLRC3OSC223', 'CLRC 223 OSC B3', NULL, 3848.75, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (851, 1, 'FCLRC3OSC224', 'CLRC 223 OSC B4', NULL, 3848.75, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (852, 1, 'FCLRC3OSC225', 'CLRC 223 OSC B5', NULL, 3848.75, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (853, 1, 'FCLRC3OSC226', 'CLRC 223 OSC B6', NULL, 3848.75, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (854, 1, 'FCLRC3OSC235', 'CLRC 223 OSC B2', NULL, 3848.75, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (855, 1, 'FCLRC3OSC320', 'CLRC 323 OSC A3', NULL, 4490.1, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (856, 1, 'FCLRC3OSC321', 'CLRC 323 OSC A4', NULL, 4490.1, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (857, 1, 'FCLRC3OSC322', 'CLRC 323 OSC B1', NULL, 4490.1, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (858, 1, 'FCLRC3OSC323', 'CLRC 323 OSC B3', NULL, 4490.1, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (859, 1, 'FCLRC3OSC324', 'CLRC 323 OSC B4', NULL, 4490.1, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (860, 1, 'FCLRC3OSC325', 'CLRC 323 OSC B5', NULL, 4490.1, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (861, 1, 'FCLRC3OSC326', 'CLRC 323 OSC B6', NULL, 4490.1, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (862, 1, 'FCLRC3OSC420', 'CLRC 423 OSC A3', NULL, 5120.34, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (863, 1, 'FCLRC3OSC421', 'CLRC 423 OSC A4', NULL, 5120.34, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (864, 1, 'FCLRC3OSC422', 'CLRC 423 OSC B1', NULL, 5120.34, '49_OUTL_C_43oscbA1.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (865, 1, 'FCLRC3OSC423', 'CLRC 423 OSC B3', NULL, 5120.34, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (866, 1, 'FCLRC3OSC424', 'CLRC 423 OSC B4', NULL, 5120.34, '44_OUTL_C_43oscA2.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (867, 1, 'FCLRC3OSC425', 'CLRC 423 OSC B5', NULL, 5120.34, '48_OUTL_C_43oscb5.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (868, 1, 'FCLRC3OSC426', 'CLRC 423 OSC B6', NULL, 5120.34, '46_OUTL_C_43oscb6.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (869, 1, 'FCLRC3OSC740', 'CLRC 753 OSC B6', NULL, 9324.13, '299_3D_3_OSC_GRANDE.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (870, 1, 'FCLRC3OSC1053', 'CLRC 1053 OSC B6', NULL, 10970.1, '299_3D_3_OSC_GRANDE.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (871, 1, 'FCLRCRSSC022', 'CLRC 023 SSC A1', NULL, 1489.32, '200_SSC3_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (872, 1, 'FCLRCRSSC023', 'CLRC 023 SSC A2', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (873, 1, 'FCLRCRSSC024', 'CLRC 023 SSC A3', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (874, 1, 'FCLRCRSSC025', 'CLRC 023 SSC B1', NULL, 1503.61, '200_SSC3_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (875, 1, 'FCLRCRSSC026', 'CLRC 023 SSC B2', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (876, 1, 'FCLRCRSSC027', 'CLRC 023 SSC B3', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (877, 1, 'FCLRCRSSC042', 'CLRC 043 SSC A1', NULL, 2066.21, '200_SSC3_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (878, 1, 'FCLRCRSSC052', 'CLRC 053 SSC A1', NULL, 2188.23, '200_SSC3_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (879, 1, 'FCLRCRSSC053', 'CLRC 053 SSC A2', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (880, 1, 'FCLRCRSSC054', 'CLRC 053 SSC A3', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (881, 1, 'FCLRCRSSC055', 'CLRC 053 SSC B1', NULL, 2188.23, '200_SSC3_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (882, 1, 'FCLRCRSSC056', 'CLRC 053 SSC B2', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (883, 1, 'FCLRCRSSC057', 'CLRC 053 SSC B3', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (884, 1, 'FCLRC3SSC072', 'CLRC 073 SSC A1', NULL, 2591.76, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (885, 1, 'FCLRC3SSC073', 'CLRC 073 SSC A2', NULL, 2591.76, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (886, 1, 'FCLRC3SSC074', 'CLRC 073 SSC A3', NULL, 2591.76, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (887, 1, 'FCLRC3SSC075', 'CLRC 073 SSC B1', NULL, 2591.76, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (888, 1, 'FCLRC3SSC076', 'CLRC 073 SSC B2', NULL, 2591.76, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (889, 1, 'FCLRC3SSC077', 'CLRC 073 SSC B3', NULL, 2591.76, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (890, 1, 'FCLRC3SSC092', 'CLRC 093 SSC A1', NULL, 2620.36, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (891, 1, 'FCLRC3SSC093', 'CLRC 093 SSC A2', NULL, 2620.36, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (892, 1, 'FCLRC3SSC094', 'CLRC 093 SSC A3', NULL, 2620.36, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (893, 1, 'FCLRC3SSC095', 'CLRC 093 SSC B1', NULL, 2620.36, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (894, 1, 'FCLRC3SSC096', 'CLRC 093 SSC B2', NULL, 2620.36, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (895, 1, 'FCLRC3SSC097', 'CLRC 093 SSC B3', NULL, 2620.36, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (896, 1, 'FCLRC3SSC122', 'CLRC 123 SSC A1', NULL, 2962.98, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (897, 1, 'FCLRC3SSC123', 'CLRC 123 SSC A2', NULL, 2962.98, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (898, 1, 'FCLRC3SSC124', 'CLRC 123 SSC A3', NULL, 2962.98, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (899, 1, 'FCLRC3SSC125', 'CLRC 123 SSC B1', NULL, 2962.98, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (900, 1, 'FCLRC3SSC126', 'CLRC 123 SSC B2', NULL, 2962.98, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (901, 1, 'FCLRC3SSC127', 'CLRC 123 SSC B3', NULL, 2962.98, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (902, 1, 'FCLRC3SSC162', 'CLRC 163 SSC A1', NULL, 3321.94, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (903, 1, 'FCLRC3SSC163', 'CLRC 163 SSC A2', NULL, 3321.94, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (904, 1, 'FCLRC3SSC164', 'CLRC 163 SSC A3', NULL, 3321.94, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (905, 1, 'FCLRC3SSC165', 'CLRC 163 SSC B1', NULL, 3321.94, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (906, 1, 'FCLRC3SSC166', 'CLRC 163 SSC B2', NULL, 3321.94, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (907, 1, 'FCLRC3SSC167', 'CLRC 163 SSC B3', NULL, 3321.94, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (908, 1, 'FCLRC3SSC222', 'CLRC 223 SSC A1', NULL, 3781.21, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (909, 1, 'FCLRC3SSC223', 'CLRC 223 SSC A2', NULL, 3781.21, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (910, 1, 'FCLRC3SSC224', 'CLRC 223 SSC A3', NULL, 3781.21, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (911, 1, 'FCLRC3SSC225', 'CLRC 223 SSC B1', NULL, 3781.21, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (912, 1, 'FCLRC3SSC226', 'CLRC 223 SSC B2', NULL, 3781.21, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (913, 1, 'FCLRC3SSC227', 'CLRC 223 SSC B3', NULL, 3781.21, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (914, 1, 'FCLRC3SSC332', 'CLRC 323 SSC A1', NULL, 4804.87, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (915, 1, 'FCLRC3SSC333', 'CLRC 323 SSC A2', NULL, 4804.87, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (916, 1, 'FCLRC3SSC334', 'CLRC 323 SSC A3', NULL, 4804.87, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (917, 1, 'FCLRC3SSC335', 'CLRC 323 SSC B1', NULL, 4804.87, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (918, 1, 'FCLRC3SSC336', 'CLRC 323 SSC B2', NULL, 4804.87, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (919, 1, 'FCLRC3SSC337', 'CLRC 323 SSC B3', NULL, 4804.87, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (920, 1, 'FCLRC3SSC422', 'CLRC 423 SSC A1', NULL, 5810.61, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (921, 1, 'FCLRC3SSC423', 'CLRC 423 SSC A2', NULL, 5810.61, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (922, 1, 'FCLRC3SSC424', 'CLRC 423 SSC A3', NULL, 5810.61, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (923, 1, 'FCLRC3SSC425', 'CLRC 423 SSC B1', NULL, 5810.61, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (924, 1, 'FCLRC3SSC426', 'CLRC 423 SSC B2', NULL, 5810.61, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (925, 1, 'FCLRC3SSC427', 'CLRC 423 SSC B3', NULL, 5810.61, '203_SSC3_H.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (926, 1, 'FCLRC3SSC540', 'CLRC 543 SSC A1', NULL, 6256.64, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (927, 1, 'FCLRC3SSC541', 'CLRC 543 SSC B1', NULL, 6256.64, '218_SSC_223_V.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (928, 1, 'FCLRC3SSC750', 'CLRC 753 SSC A1', NULL, 10360.2, '300_3D_3_SSC_GRANDE.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (929, 1, 'FCLRC3SSC1053', 'CLRC 1053 SSC B1', NULL, 11906, '300_3D_3_SSC_GRANDE.png', '2023-05-25 12:52:34', '2023-05-25 13:00:47', '2023-05-25 13:00:47', NULL);
INSERT INTO `prices` VALUES (930, 1, 'FCLRCROSC012', 'CLRC 013 OSC B3', NULL, 1453.64, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (931, 1, 'FCLRCROSC013', 'CLRC 013 OSC B4', NULL, 1453.64, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (932, 1, 'FCLRCROSC014', 'CLRC 013 OSC B5', NULL, 1453.64, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (933, 1, 'FCLRCROSC015', 'CLRC 013 OSC B6', NULL, 1453.64, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (934, 1, 'FCLRCROSC016', 'CLRC 013 OSC A4', NULL, 1453.64, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (935, 1, 'FCLRCROSC020', 'CLRC 023 OSC B1', NULL, 1499.4, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (936, 1, 'FCLRCROSC021', 'CLRC 023 OSC B2', NULL, 1499.4, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (937, 1, 'FCLRCROSC022', 'CLRC 023 OSC B3', NULL, 1499.4, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (938, 1, 'FCLRCROSC023', 'CLRC 023 OSC B4', NULL, 1499.4, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (939, 1, 'FCLRCROSC024', 'CLRC 023 OSC B5', NULL, 1499.4, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (940, 1, 'FCLRCROSC025', 'CLRC 023 OSC B6', NULL, 1499.4, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (941, 1, 'FCLRCROSC026', 'CLRC 023 OSC A4', NULL, 1499.4, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (942, 1, 'FCLRCROSC030', 'CLRC 033 OSC B1', NULL, 1556.77, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (943, 1, 'FCLRCROSC031', 'CLRC 033 OSC B2', NULL, 1556.77, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (944, 1, 'FCLRCROSC032', 'CLRC 033 OSC B3', NULL, 1556.77, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (945, 1, 'FCLRCROSC033', 'CLRC 033 OSC B4', NULL, 1556.77, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (946, 1, 'FCLRCROSC034', 'CLRC 033 OSC B5', NULL, 1556.77, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (947, 1, 'FCLRCROSC035', 'CLRC 033 OSC B6', NULL, 1556.77, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (948, 1, 'FCLRCROSC036', 'CLRC 033 OSC A4', NULL, 1556.77, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (949, 1, 'FCLRCROSC040', 'CLRC 043 OSC B1', NULL, 1811.02, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (950, 1, 'FCLRCROSC041', 'CLRC 043 OSC B2', NULL, 1811.02, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (951, 1, 'FCLRCROSC043', 'CLRC 043 OSC B4', NULL, 1811.02, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (952, 1, 'FCLRCROSC044', 'CLRC 043 OSC B5', NULL, 1811.02, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (953, 1, 'FCLRCROSC045', 'CLRC 043 OSC B6', NULL, 1811.02, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (954, 1, 'FCLRCROSC046', 'CLRC 043 OSC A4', NULL, 1811.02, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (955, 1, 'FCLRCROSC051', 'CLRC 053 OSC B2', NULL, 1919.67, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (956, 1, 'FCLRCROSC052', 'CLRC 053 OSC B3', NULL, 1919.67, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (957, 1, 'FCLRCROSC053', 'CLRC 053 OSC B4', NULL, 1919.67, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (958, 1, 'FCLRCROSC054', 'CLRC 053 OSC B5', NULL, 1919.67, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (959, 1, 'FCLRCROSC055', 'CLRC 053 OSC B6', NULL, 1919.67, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (960, 1, 'FCLRCROSC056', 'CLRC 053 OSC A3', NULL, 1919.67, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (961, 1, 'FCLRCROSC057', 'CLRC 053 OSC A4', NULL, 1919.67, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (962, 1, 'FCLRCROSC070', 'CLRC 073 OSC A3', NULL, 2331.73, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (963, 1, 'FCLRCROSC071', 'CLRC 073 OSC A4', NULL, 2331.73, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (964, 1, 'FCLRCROSC072', 'CLRC 073 OSC B1', NULL, 2331.73, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (965, 1, 'FCLRCROSC074', 'CLRC 073 OSC B3', NULL, 2331.73, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (966, 1, 'FCLRCROSC075', 'CLRC 073 OSC B4', NULL, 2331.73, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (967, 1, 'FCLRCROSC076', 'CLRC 073 OSC B5', NULL, 2331.73, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (968, 1, 'FCLRCROSC077', 'CLRC 073 OSC B6', NULL, 2331.73, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (969, 1, 'FCLRC3OSC090', 'CLRC 093 OSC A3', NULL, 2453.03, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (970, 1, 'FCLRC3OSC091', 'CLRC 093 OSC A4', NULL, 2453.03, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (971, 1, 'FCLRC3OSC092', 'CLRC 093 OSC B1', NULL, 2453.03, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (972, 1, 'FCLRC3OSC093', 'CLRC 093 OSC B3', NULL, 2453.03, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (973, 1, 'FCLRC3OSC094', 'CLRC 093 OSC B4', NULL, 2453.03, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (974, 1, 'FCLRC3OSC095', 'CLRC 093 OSC B5', NULL, 2453.03, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (975, 1, 'FCLRC3OSC096', 'CLRC 093 OSC B6', NULL, 2453.03, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (976, 1, 'FCLRC3OSC105', 'CLRC 093 OSC B2', NULL, 2453.03, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (977, 1, 'FCLRC3OSC119', 'CLRC 123 OSC B2', NULL, 2921.24, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (978, 1, 'FCLRC3OSC120', 'CLRC 123 OSC A3', NULL, 2921.24, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (979, 1, 'FCLRC3OSC121', 'CLRC 123 OSC A4', NULL, 2921.24, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (980, 1, 'FCLRC3OSC122', 'CLRC 123 OSC B1', NULL, 2921.24, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (981, 1, 'FCLRC3OSC123', 'CLRC 123 OSC B3', NULL, 2921.24, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (982, 1, 'FCLRC3OSC124', 'CLRC 123 OSC B4', NULL, 2921.24, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (983, 1, 'FCLRC3OSC125', 'CLRC 123 OSC B5', NULL, 2921.24, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (984, 1, 'FCLRC3OSC126', 'CLRC 123 OSC B6', NULL, 2921.24, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (985, 1, 'FCLRC3OSC160', 'CLRC 163 OSC A3', NULL, 3035.82, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (986, 1, 'FCLRC3OSC161', 'CLRC 163 OSC A4', NULL, 3035.82, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (987, 1, 'FCLRC3OSC162', 'CLRC 163 OSC B1', NULL, 3035.82, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (988, 1, 'FCLRC3OSC163', 'CLRC 163 OSC B3', NULL, 3035.82, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (989, 1, 'FCLRC3OSC164', 'CLRC 163 OSC B4', NULL, 3035.82, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (990, 1, 'FCLRC3OSC165', 'CLRC 163 OSC B5', NULL, 3035.82, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (991, 1, 'FCLRC3OSC166', 'CLRC 163 OSC B6', NULL, 3035.82, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (992, 1, 'FCLRC3OSC175', 'CLRC 163 OSC B2', NULL, 3035.82, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (993, 1, 'FCLRC3OSC220', 'CLRC 223 OSC A3', NULL, 3848.75, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (994, 1, 'FCLRC3OSC221', 'CLRC 223 OSC A4', NULL, 3848.75, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (995, 1, 'FCLRC3OSC222', 'CLRC 223 OSC B1', NULL, 3848.75, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (996, 1, 'FCLRC3OSC223', 'CLRC 223 OSC B3', NULL, 3848.75, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (997, 1, 'FCLRC3OSC224', 'CLRC 223 OSC B4', NULL, 3848.75, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (998, 1, 'FCLRC3OSC225', 'CLRC 223 OSC B5', NULL, 3848.75, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (999, 1, 'FCLRC3OSC226', 'CLRC 223 OSC B6', NULL, 3848.75, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1000, 1, 'FCLRC3OSC235', 'CLRC 223 OSC B2', NULL, 3848.75, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1001, 1, 'FCLRC3OSC320', 'CLRC 323 OSC A3', NULL, 4490.1, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1002, 1, 'FCLRC3OSC321', 'CLRC 323 OSC A4', NULL, 4490.1, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1003, 1, 'FCLRC3OSC322', 'CLRC 323 OSC B1', NULL, 4490.1, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1004, 1, 'FCLRC3OSC323', 'CLRC 323 OSC B3', NULL, 4490.1, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1005, 1, 'FCLRC3OSC324', 'CLRC 323 OSC B4', NULL, 4490.1, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1006, 1, 'FCLRC3OSC325', 'CLRC 323 OSC B5', NULL, 4490.1, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1007, 1, 'FCLRC3OSC326', 'CLRC 323 OSC B6', NULL, 4490.1, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1008, 1, 'FCLRC3OSC420', 'CLRC 423 OSC A3', NULL, 5120.34, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1009, 1, 'FCLRC3OSC421', 'CLRC 423 OSC A4', NULL, 5120.34, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1010, 1, 'FCLRC3OSC422', 'CLRC 423 OSC B1', NULL, 5120.34, '49_OUTL_C_43oscbA1.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1011, 1, 'FCLRC3OSC423', 'CLRC 423 OSC B3', NULL, 5120.34, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1012, 1, 'FCLRC3OSC424', 'CLRC 423 OSC B4', NULL, 5120.34, '44_OUTL_C_43oscA2.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1013, 1, 'FCLRC3OSC425', 'CLRC 423 OSC B5', NULL, 5120.34, '48_OUTL_C_43oscb5.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1014, 1, 'FCLRC3OSC426', 'CLRC 423 OSC B6', NULL, 5120.34, '46_OUTL_C_43oscb6.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1015, 1, 'FCLRC3OSC740', 'CLRC 753 OSC B6', NULL, 9324.13, '299_3D_3_OSC_GRANDE.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1016, 1, 'FCLRC3OSC1053', 'CLRC 1053 OSC B6', NULL, 10970.1, '299_3D_3_OSC_GRANDE.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1017, 1, 'FCLRCRSSC022', 'CLRC 023 SSC A1', NULL, 1489.32, '200_SSC3_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1018, 1, 'FCLRCRSSC023', 'CLRC 023 SSC A2', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1019, 1, 'FCLRCRSSC024', 'CLRC 023 SSC A3', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1020, 1, 'FCLRCRSSC025', 'CLRC 023 SSC B1', NULL, 1503.61, '200_SSC3_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1021, 1, 'FCLRCRSSC026', 'CLRC 023 SSC B2', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1022, 1, 'FCLRCRSSC027', 'CLRC 023 SSC B3', NULL, 1503.61, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1023, 1, 'FCLRCRSSC042', 'CLRC 043 SSC A1', NULL, 2066.21, '200_SSC3_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1024, 1, 'FCLRCRSSC052', 'CLRC 053 SSC A1', NULL, 2188.23, '200_SSC3_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1025, 1, 'FCLRCRSSC053', 'CLRC 053 SSC A2', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1026, 1, 'FCLRCRSSC054', 'CLRC 053 SSC A3', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1027, 1, 'FCLRCRSSC055', 'CLRC 053 SSC B1', NULL, 2188.23, '200_SSC3_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1028, 1, 'FCLRCRSSC056', 'CLRC 053 SSC B2', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1029, 1, 'FCLRCRSSC057', 'CLRC 053 SSC B3', NULL, 2188.23, '199_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1030, 1, 'FCLRC3SSC072', 'CLRC 073 SSC A1', NULL, 2591.76, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1031, 1, 'FCLRC3SSC073', 'CLRC 073 SSC A2', NULL, 2591.76, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1032, 1, 'FCLRC3SSC074', 'CLRC 073 SSC A3', NULL, 2591.76, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1033, 1, 'FCLRC3SSC075', 'CLRC 073 SSC B1', NULL, 2591.76, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1034, 1, 'FCLRC3SSC076', 'CLRC 073 SSC B2', NULL, 2591.76, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1035, 1, 'FCLRC3SSC077', 'CLRC 073 SSC B3', NULL, 2591.76, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1036, 1, 'FCLRC3SSC092', 'CLRC 093 SSC A1', NULL, 2620.36, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1037, 1, 'FCLRC3SSC093', 'CLRC 093 SSC A2', NULL, 2620.36, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1038, 1, 'FCLRC3SSC094', 'CLRC 093 SSC A3', NULL, 2620.36, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1039, 1, 'FCLRC3SSC095', 'CLRC 093 SSC B1', NULL, 2620.36, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1040, 1, 'FCLRC3SSC096', 'CLRC 093 SSC B2', NULL, 2620.36, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1041, 1, 'FCLRC3SSC097', 'CLRC 093 SSC B3', NULL, 2620.36, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1042, 1, 'FCLRC3SSC122', 'CLRC 123 SSC A1', NULL, 2962.98, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1043, 1, 'FCLRC3SSC123', 'CLRC 123 SSC A2', NULL, 2962.98, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1044, 1, 'FCLRC3SSC124', 'CLRC 123 SSC A3', NULL, 2962.98, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1045, 1, 'FCLRC3SSC125', 'CLRC 123 SSC B1', NULL, 2962.98, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1046, 1, 'FCLRC3SSC126', 'CLRC 123 SSC B2', NULL, 2962.98, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1047, 1, 'FCLRC3SSC127', 'CLRC 123 SSC B3', NULL, 2962.98, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1048, 1, 'FCLRC3SSC162', 'CLRC 163 SSC A1', NULL, 3321.94, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1049, 1, 'FCLRC3SSC163', 'CLRC 163 SSC A2', NULL, 3321.94, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1050, 1, 'FCLRC3SSC164', 'CLRC 163 SSC A3', NULL, 3321.94, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1051, 1, 'FCLRC3SSC165', 'CLRC 163 SSC B1', NULL, 3321.94, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1052, 1, 'FCLRC3SSC166', 'CLRC 163 SSC B2', NULL, 3321.94, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1053, 1, 'FCLRC3SSC167', 'CLRC 163 SSC B3', NULL, 3321.94, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1054, 1, 'FCLRC3SSC222', 'CLRC 223 SSC A1', NULL, 3781.21, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1055, 1, 'FCLRC3SSC223', 'CLRC 223 SSC A2', NULL, 3781.21, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1056, 1, 'FCLRC3SSC224', 'CLRC 223 SSC A3', NULL, 3781.21, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1057, 1, 'FCLRC3SSC225', 'CLRC 223 SSC B1', NULL, 3781.21, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1058, 1, 'FCLRC3SSC226', 'CLRC 223 SSC B2', NULL, 3781.21, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1059, 1, 'FCLRC3SSC227', 'CLRC 223 SSC B3', NULL, 3781.21, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1060, 1, 'FCLRC3SSC332', 'CLRC 323 SSC A1', NULL, 4804.87, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1061, 1, 'FCLRC3SSC333', 'CLRC 323 SSC A2', NULL, 4804.87, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1062, 1, 'FCLRC3SSC334', 'CLRC 323 SSC A3', NULL, 4804.87, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1063, 1, 'FCLRC3SSC335', 'CLRC 323 SSC B1', NULL, 4804.87, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1064, 1, 'FCLRC3SSC336', 'CLRC 323 SSC B2', NULL, 4804.87, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1065, 1, 'FCLRC3SSC337', 'CLRC 323 SSC B3', NULL, 4804.87, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1066, 1, 'FCLRC3SSC422', 'CLRC 423 SSC A1', NULL, 5810.61, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1067, 1, 'FCLRC3SSC423', 'CLRC 423 SSC A2', NULL, 5810.61, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1068, 1, 'FCLRC3SSC424', 'CLRC 423 SSC A3', NULL, 5810.61, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1069, 1, 'FCLRC3SSC425', 'CLRC 423 SSC B1', NULL, 5810.61, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1070, 1, 'FCLRC3SSC426', 'CLRC 423 SSC B2', NULL, 5810.61, '203_SSC3_H.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1071, 1, 'FCLRC3SSC427', 'CLRC 423 SSC B3', NULL, 5810.61, '203_SSC3_H_floor.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1072, 1, 'FCLRC3SSC540', 'CLRC 543 SSC A1', NULL, 6256.64, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1073, 1, 'FCLRC3SSC541', 'CLRC 543 SSC B1', NULL, 6256.64, '218_SSC_223_V.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1074, 1, 'FCLRC3SSC750', 'CLRC 753 SSC A1', NULL, 10360.2, '300_3D_3_SSC_GRANDE.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1075, 1, 'FCLRC3SSC1053', 'CLRC 1053 SSC B1', NULL, 11906, '300_3D_3_SSC_GRANDE.png', '2023-05-25 13:01:05', '2023-05-25 13:22:33', '2023-05-25 13:22:33', NULL);
INSERT INTO `prices` VALUES (1076, 1, 'FCLRCROSC012', 'CLRC 013 OSC B3', 'North-South', 1453.64, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1077, 1, 'FCLRCROSC013', 'CLRC 013 OSC B4', 'North-South', 1453.64, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1078, 1, 'FCLRCROSC014', 'CLRC 013 OSC B5', 'Floor', 1453.64, '196_OSC3_H_2_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1079, 1, 'FCLRCROSC015', 'CLRC 013 OSC B6', 'Ceiling', 1453.64, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1080, 1, 'FCLRCROSC016', 'CLRC 013 OSC A4', 'Ceiling', 1453.64, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1081, 1, 'FCLRCROSC020', 'CLRC 023 OSC B1', 'East-West', 1499.4, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1082, 1, 'FCLRCROSC021', 'CLRC 023 OSC B2', 'East-West', 1499.4, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1083, 1, 'FCLRCROSC022', 'CLRC 023 OSC B3', 'North-South', 1499.4, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1084, 1, 'FCLRCROSC023', 'CLRC 023 OSC B4', 'North-South', 1499.4, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1085, 1, 'FCLRCROSC024', 'CLRC 023 OSC B5', 'Floor', 1499.4, '196_OSC3_H_2_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1086, 1, 'FCLRCROSC025', 'CLRC 023 OSC B6', 'Ceiling', 1499.4, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1087, 1, 'FCLRCROSC026', 'CLRC 023 OSC A4', 'Ceiling', 1499.4, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1088, 1, 'FCLRCROSC030', 'CLRC 033 OSC B1', 'East-West', 1556.77, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1089, 1, 'FCLRCROSC031', 'CLRC 033 OSC B2', 'East-West', 1556.77, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1090, 1, 'FCLRCROSC032', 'CLRC 033 OSC B3', 'North-South', 1556.77, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1091, 1, 'FCLRCROSC033', 'CLRC 033 OSC B4', 'North-South', 1556.77, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1092, 1, 'FCLRCROSC034', 'CLRC 033 OSC B5', 'Floor', 1556.77, '196_OSC3_H_2_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1093, 1, 'FCLRCROSC035', 'CLRC 033 OSC B6', 'Ceiling', 1556.77, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1094, 1, 'FCLRCROSC036', 'CLRC 033 OSC A4', 'Ceiling', 1556.77, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1095, 1, 'FCLRCROSC040', 'CLRC 043 OSC B1', 'East-West', 1811.02, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1096, 1, 'FCLRCROSC041', 'CLRC 043 OSC B2', 'East-West', 1811.02, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1097, 1, 'FCLRCROSC043', 'CLRC 043 OSC B4', 'North-South', 1811.02, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1098, 1, 'FCLRCROSC044', 'CLRC 043 OSC B5', 'Floor', 1811.02, '196_OSC3_H_2_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1099, 1, 'FCLRCROSC045', 'CLRC 043 OSC B6', 'Ceiling', 1811.02, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1100, 1, 'FCLRCROSC046', 'CLRC 043 OSC A4', 'Ceiling', 1811.02, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1101, 1, 'FCLRCROSC051', 'CLRC 053 OSC B2', 'East-West', 1919.67, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1102, 1, 'FCLRCROSC052', 'CLRC 053 OSC B3', 'North-South', 1919.67, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1103, 1, 'FCLRCROSC053', 'CLRC 053 OSC B4', 'North-South', 1919.67, '198_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1104, 1, 'FCLRCROSC054', 'CLRC 053 OSC B5', 'Floor', 1919.67, '196_OSC3_H_2_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1105, 1, 'FCLRCROSC055', 'CLRC 053 OSC B6', 'Ceiling', 1919.67, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1106, 1, 'FCLRCROSC056', 'CLRC 053 OSC A3', 'Floor', 1919.67, '196_OSC3_H_2_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1107, 1, 'FCLRCROSC057', 'CLRC 053 OSC A4', 'Ceiling', 1919.67, '196_OSC3_H_2.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1108, 1, 'FCLRCROSC070', 'CLRC 073 OSC A3', 'Floor', 2331.73, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1109, 1, 'FCLRCROSC071', 'CLRC 073 OSC A4', 'Ceiling', 2331.73, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1110, 1, 'FCLRCROSC072', 'CLRC 073 OSC B1', 'East-West', 2331.73, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1111, 1, 'FCLRCROSC074', 'CLRC 073 OSC B3', 'North-South', 2331.73, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1112, 1, 'FCLRCROSC075', 'CLRC 073 OSC B4', 'North-South', 2331.73, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1113, 1, 'FCLRCROSC076', 'CLRC 073 OSC B5', 'Floor', 2331.73, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1114, 1, 'FCLRCROSC077', 'CLRC 073 OSC B6', 'Ceiling', 2331.73, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1115, 1, 'FCLRC3OSC090', 'CLRC 093 OSC A3', 'Floor', 2453.03, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1116, 1, 'FCLRC3OSC091', 'CLRC 093 OSC A4', 'Ceiling', 2453.03, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1117, 1, 'FCLRC3OSC092', 'CLRC 093 OSC B1', 'East-West', 2453.03, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1118, 1, 'FCLRC3OSC093', 'CLRC 093 OSC B3', 'North-South', 2453.03, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1119, 1, 'FCLRC3OSC094', 'CLRC 093 OSC B4', 'North-South', 2453.03, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1120, 1, 'FCLRC3OSC095', 'CLRC 093 OSC B5', 'Floor', 2453.03, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1121, 1, 'FCLRC3OSC096', 'CLRC 093 OSC B6', 'Ceiling', 2453.03, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1122, 1, 'FCLRC3OSC105', 'CLRC 093 OSC B2', 'East-West', 2453.03, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1123, 1, 'FCLRC3OSC119', 'CLRC 123 OSC B2', 'East-West', 2921.24, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1124, 1, 'FCLRC3OSC120', 'CLRC 123 OSC A3', 'Floor', 2921.24, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1125, 1, 'FCLRC3OSC121', 'CLRC 123 OSC A4', 'Ceiling', 2921.24, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1126, 1, 'FCLRC3OSC122', 'CLRC 123 OSC B1', 'East-West', 2921.24, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1127, 1, 'FCLRC3OSC123', 'CLRC 123 OSC B3', 'North-South', 2921.24, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1128, 1, 'FCLRC3OSC124', 'CLRC 123 OSC B4', 'North-South', 2921.24, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1129, 1, 'FCLRC3OSC125', 'CLRC 123 OSC B5', 'Floor', 2921.24, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1130, 1, 'FCLRC3OSC126', 'CLRC 123 OSC B6', 'Ceiling', 2921.24, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1131, 1, 'FCLRC3OSC160', 'CLRC 163 OSC A3', 'Floor', 3035.82, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1132, 1, 'FCLRC3OSC161', 'CLRC 163 OSC A4', 'Ceiling', 3035.82, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1133, 1, 'FCLRC3OSC162', 'CLRC 163 OSC B1', 'East-West', 3035.82, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1134, 1, 'FCLRC3OSC163', 'CLRC 163 OSC B3', 'North-South', 3035.82, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1135, 1, 'FCLRC3OSC164', 'CLRC 163 OSC B4', 'North-South', 3035.82, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1136, 1, 'FCLRC3OSC165', 'CLRC 163 OSC B5', 'Floor', 3035.82, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1137, 1, 'FCLRC3OSC166', 'CLRC 163 OSC B6', 'Ceiling', 3035.82, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1138, 1, 'FCLRC3OSC175', 'CLRC 163 OSC B2', 'East-West', 3035.82, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1139, 1, 'FCLRC3OSC220', 'CLRC 223 OSC A3', 'Floor', 3848.75, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1140, 1, 'FCLRC3OSC221', 'CLRC 223 OSC A4', 'Ceiling', 3848.75, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1141, 1, 'FCLRC3OSC222', 'CLRC 223 OSC B1', 'East-West', 3848.75, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1142, 1, 'FCLRC3OSC223', 'CLRC 223 OSC B3', 'North-South', 3848.75, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1143, 1, 'FCLRC3OSC224', 'CLRC 223 OSC B4', 'North-South', 3848.75, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1144, 1, 'FCLRC3OSC225', 'CLRC 223 OSC B5', 'Floor', 3848.75, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1145, 1, 'FCLRC3OSC226', 'CLRC 223 OSC B6', 'Ceiling', 3848.75, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1146, 1, 'FCLRC3OSC235', 'CLRC 223 OSC B2', 'East-West', 3848.75, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1147, 1, 'FCLRC3OSC320', 'CLRC 323 OSC A3', 'Floor', 4490.1, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1148, 1, 'FCLRC3OSC321', 'CLRC 323 OSC A4', 'Ceiling', 4490.1, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1149, 1, 'FCLRC3OSC322', 'CLRC 323 OSC B1', 'East-West', 4490.1, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1150, 1, 'FCLRC3OSC323', 'CLRC 323 OSC B3', 'North-South', 4490.1, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1151, 1, 'FCLRC3OSC324', 'CLRC 323 OSC B4', 'North-South', 4490.1, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1152, 1, 'FCLRC3OSC325', 'CLRC 323 OSC B5', 'Floor', 4490.1, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1153, 1, 'FCLRC3OSC326', 'CLRC 323 OSC B6', 'Ceiling', 4490.1, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1154, 1, 'FCLRC3OSC420', 'CLRC 423 OSC A3', 'Floor', 5120.34, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1155, 1, 'FCLRC3OSC421', 'CLRC 423 OSC A4', 'Ceiling', 5120.34, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1156, 1, 'FCLRC3OSC422', 'CLRC 423 OSC B1', 'East-West', 5120.34, '201_OSC3_H_4.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1157, 1, 'FCLRC3OSC423', 'CLRC 423 OSC B3', 'North-South', 5120.34, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1158, 1, 'FCLRC3OSC424', 'CLRC 423 OSC B4', 'North-South', 5120.34, '204_OSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1159, 1, 'FCLRC3OSC425', 'CLRC 423 OSC B5', 'Floor', 5120.34, '202_OSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1160, 1, 'FCLRC3OSC426', 'CLRC 423 OSC B6', 'Ceiling', 5120.34, '202_OSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1161, 1, 'FCLRC3OSC740', 'CLRC 753 OSC B6', 'Ceiling', 9324.13, '299_3D_3_OSC_GRANDE.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1162, 1, 'FCLRC3OSC1053', 'CLRC 1053 OSC B6', 'Ceiling', 10970.1, '299_3D_3_OSC_GRANDE.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1163, 1, 'FCLRCRSSC022', 'CLRC 023 SSC A1', 'Floor', 1489.32, '200_SSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1164, 1, 'FCLRCRSSC023', 'CLRC 023 SSC A2', 'Ceiling', 1503.61, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1165, 1, 'FCLRCRSSC024', 'CLRC 023 SSC A3', 'Floor', 1503.61, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1166, 1, 'FCLRCRSSC025', 'CLRC 023 SSC B1', 'Floor', 1503.61, '200_SSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1167, 1, 'FCLRCRSSC026', 'CLRC 023 SSC B2', 'Ceiling', 1503.61, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1168, 1, 'FCLRCRSSC027', 'CLRC 023 SSC B3', 'Floor', 1503.61, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1169, 1, 'FCLRCRSSC042', 'CLRC 043 SSC A1', 'Floor', 2066.21, '200_SSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1170, 1, 'FCLRCRSSC052', 'CLRC 053 SSC A1', 'Floor', 2188.23, '200_SSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1171, 1, 'FCLRCRSSC053', 'CLRC 053 SSC A2', 'Ceiling', 2188.23, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1172, 1, 'FCLRCRSSC054', 'CLRC 053 SSC A3', 'Floor', 2188.23, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1173, 1, 'FCLRCRSSC055', 'CLRC 053 SSC B1', 'Floor', 2188.23, '200_SSC3_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1174, 1, 'FCLRCRSSC056', 'CLRC 053 SSC B2', 'Ceiling', 2188.23, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1175, 1, 'FCLRCRSSC057', 'CLRC 053 SSC B3', 'Floor', 2188.23, '199_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1176, 1, 'FCLRC3SSC072', 'CLRC 073 SSC A1', 'Floor', 2591.76, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1177, 1, 'FCLRC3SSC073', 'CLRC 073 SSC A2', 'Ceiling', 2591.76, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1178, 1, 'FCLRC3SSC074', 'CLRC 073 SSC A3', 'Floor', 2591.76, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1179, 1, 'FCLRC3SSC075', 'CLRC 073 SSC B1', 'Floor', 2591.76, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1180, 1, 'FCLRC3SSC076', 'CLRC 073 SSC B2', 'Ceiling', 2591.76, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1181, 1, 'FCLRC3SSC077', 'CLRC 073 SSC B3', 'Floor', 2591.76, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1182, 1, 'FCLRC3SSC092', 'CLRC 093 SSC A1', 'Floor', 2620.36, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1183, 1, 'FCLRC3SSC093', 'CLRC 093 SSC A2', 'Ceiling', 2620.36, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1184, 1, 'FCLRC3SSC094', 'CLRC 093 SSC A3', 'Floor', 2620.36, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1185, 1, 'FCLRC3SSC095', 'CLRC 093 SSC B1', 'Floor', 2620.36, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1186, 1, 'FCLRC3SSC096', 'CLRC 093 SSC B2', 'Ceiling', 2620.36, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1187, 1, 'FCLRC3SSC097', 'CLRC 093 SSC B3', 'Floor', 2620.36, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1188, 1, 'FCLRC3SSC122', 'CLRC 123 SSC A1', 'Floor', 2962.98, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1189, 1, 'FCLRC3SSC123', 'CLRC 123 SSC A2', 'Ceiling', 2962.98, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1190, 1, 'FCLRC3SSC124', 'CLRC 123 SSC A3', 'Floor', 2962.98, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1191, 1, 'FCLRC3SSC125', 'CLRC 123 SSC B1', 'Floor', 2962.98, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1192, 1, 'FCLRC3SSC126', 'CLRC 123 SSC B2', 'Ceiling', 2962.98, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1193, 1, 'FCLRC3SSC127', 'CLRC 123 SSC B3', 'Floor', 2962.98, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1194, 1, 'FCLRC3SSC162', 'CLRC 163 SSC A1', 'Floor', 3321.94, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1195, 1, 'FCLRC3SSC163', 'CLRC 163 SSC A2', 'Ceiling', 3321.94, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1196, 1, 'FCLRC3SSC164', 'CLRC 163 SSC A3', 'Floor', 3321.94, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1197, 1, 'FCLRC3SSC165', 'CLRC 163 SSC B1', 'Floor', 3321.94, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1198, 1, 'FCLRC3SSC166', 'CLRC 163 SSC B2', 'Ceiling', 3321.94, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1199, 1, 'FCLRC3SSC167', 'CLRC 163 SSC B3', 'Floor', 3321.94, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1200, 1, 'FCLRC3SSC222', 'CLRC 223 SSC A1', 'Floor', 3781.21, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1201, 1, 'FCLRC3SSC223', 'CLRC 223 SSC A2', 'Ceiling', 3781.21, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1202, 1, 'FCLRC3SSC224', 'CLRC 223 SSC A3', 'Floor', 3781.21, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1203, 1, 'FCLRC3SSC225', 'CLRC 223 SSC B1', 'Floor', 3781.21, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1204, 1, 'FCLRC3SSC226', 'CLRC 223 SSC B2', 'Ceiling', 3781.21, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1205, 1, 'FCLRC3SSC227', 'CLRC 223 SSC B3', 'Floor', 3781.21, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1206, 1, 'FCLRC3SSC332', 'CLRC 323 SSC A1', 'Floor', 4804.87, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1207, 1, 'FCLRC3SSC333', 'CLRC 323 SSC A2', 'Ceiling', 4804.87, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1208, 1, 'FCLRC3SSC334', 'CLRC 323 SSC A3', 'Floor', 4804.87, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1209, 1, 'FCLRC3SSC335', 'CLRC 323 SSC B1', 'Floor', 4804.87, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1210, 1, 'FCLRC3SSC336', 'CLRC 323 SSC B2', 'Ceiling', 4804.87, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1211, 1, 'FCLRC3SSC337', 'CLRC 323 SSC B3', 'Floor', 4804.87, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1212, 1, 'FCLRC3SSC422', 'CLRC 423 SSC A1', 'Floor', 5810.61, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1213, 1, 'FCLRC3SSC423', 'CLRC 423 SSC A2', 'Ceiling', 5810.61, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1214, 1, 'FCLRC3SSC424', 'CLRC 423 SSC A3', 'Floor', 5810.61, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1215, 1, 'FCLRC3SSC425', 'CLRC 423 SSC B1', 'Floor', 5810.61, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1216, 1, 'FCLRC3SSC426', 'CLRC 423 SSC B2', 'Ceiling', 5810.61, '203_SSC3_H.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1217, 1, 'FCLRC3SSC427', 'CLRC 423 SSC B3', 'Floor', 5810.61, '203_SSC3_H_floor.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1218, 1, 'FCLRC3SSC540', 'CLRC 543 SSC A1', 'Floor', 6256.64, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1219, 1, 'FCLRC3SSC541', 'CLRC 543 SSC B1', 'Floor', 6256.64, '218_SSC_223_V.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1220, 1, 'FCLRC3SSC750', 'CLRC 753 SSC A1', 'Floor', 10360.2, '300_3D_3_SSC_GRANDE.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1221, 1, 'FCLRC3SSC1053', 'CLRC 1053 SSC B1', 'Floor', 11906, '300_3D_3_SSC_GRANDE.png', '2023-05-25 13:22:45', '2023-05-30 10:48:22', '2023-05-30 10:48:22', NULL);
INSERT INTO `prices` VALUES (1222, 12, 'FCLRC6OSC086', 'CLRC 086 OSC', '', 2939.99, '211_OSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1223, 12, 'FCLRC6SSC086', 'CLRC 086 SSC', '', 2939.99, '216_SSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1224, 12, 'FCLRC6OSC146', 'CLRC 146 OSC', '', 3353.01, '211_OSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1225, 12, 'FCLRC6SSC146', 'CLRC 146 SSC', '', 3353.01, '216_SSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1226, 12, 'FCLRC6OSC176', 'CLRC 176 OSC', '', 3632.47, '211_OSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1227, 12, 'FCLRC6SSC176', 'CLRC 176 SSC', '', 3632.47, '216_SSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1228, 12, 'FCLRC6OSC256', 'CLRC 256 OSC', '', 3872.24, '211_OSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1229, 12, 'FCLRC6SSC256', 'CLRC 256 SSC', '', 4672, '216_SSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1230, 12, 'FCLRC6OSC556', 'CLRC 556 OSC', '', 8786.3, '211_OSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1231, 12, 'FCLRC6SSC556', 'CLRC 556 SSC', '', 9473.5, '216_SSC_6.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1232, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', NULL, 11557.3, '1685089863.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1233, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', NULL, 14168.6, '1685089893.png', '2023-05-25 13:25:51', '2023-05-30 10:08:44', '2023-05-30 10:08:44', NULL);
INSERT INTO `prices` VALUES (1234, 8, 'FCLRC40HV16', 'Heat recovery unit CLRC 164 Horizontal', '', 8667.05, '207_324_H.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1235, 8, 'FCLRC40HV41', 'Heat recovery unit CLRC 164 Vertical', '', 8667.05, '230_324_V.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1236, 8, 'FCLRC40HV55', 'Heat recovery unit CLRC 224 Horizontal', '', 9867.66, '207_324_H.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1237, 8, 'FCLRC40HV54', 'Heat recovery unit CLRC 224 Vertical', '', 9867.66, '230_324_V.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1238, 8, 'FCLRC40HV30', 'Heat recovery unit CLRC 324 Horizontal', '', 10535.3, '207_324_H.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1239, 8, 'FCLRC40HV42', 'Heat recovery unit CLRC 324 Vertical', '', 10535.3, '230_324_V.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1240, 8, 'FCLRC40HV40', 'Heat recovery unit CLRC 474 Horizontal', '', 11675.4, '207_324_H.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1241, 8, 'FCLRC40HV43', 'Heat recovery unit CLRC 474 Vertical', '', 11675.4, '230_324_V.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1242, 8, 'FCLRC40HV50', 'Heat recovery unit CLRC 674 Vertical', '', 13041.6, '207_324_H.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1243, 8, 'FCLRC40HV51', 'Heat recovery unit CLRC 674 Horizontal', '', 13041.6, '230_324_V.png', '2023-05-25 13:33:57', '2023-05-30 11:45:59', '2023-05-30 11:45:59', NULL);
INSERT INTO `prices` VALUES (1244, 3, 'FSSC35XXX02', 'CLRC QUANTUM 35 SSC LT', NULL, 1156.46, 'quantum.png', '2023-05-25 14:58:20', '2023-05-30 11:38:05', '2023-05-30 11:38:05', NULL);
INSERT INTO `prices` VALUES (1245, 3, 'FSSC45XXX02', 'CLRC QUANTUM 45 SSC LT', NULL, 1265.99, 'quantum.png', '2023-05-25 14:58:20', '2023-05-30 11:38:05', '2023-05-30 11:38:05', NULL);
INSERT INTO `prices` VALUES (1246, 3, 'FSSC55XXX02', 'CLRC QUANTUM 55 SSC LT', NULL, 1334.49, 'quantum.png', '2023-05-25 14:58:20', '2023-05-30 11:38:05', '2023-05-30 11:38:05', NULL);
INSERT INTO `prices` VALUES (1247, 3, 'FSSC65XXX02', 'CLRC QUANTUM 65 SSC LT', NULL, 1459.09, 'quantum.png', '2023-05-25 14:58:20', '2023-05-30 11:38:05', '2023-05-30 11:38:05', NULL);
INSERT INTO `prices` VALUES (1248, 6, 'F04SCXXX02', 'SG 047 FS IDPC MF', NULL, 4197.66, '206_REND_C_SG_PICT.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1249, 6, 'F07SCXXX02', 'SG 077 FS IDPC MF', NULL, 4317.83, '206_REND_C_SG_PICT.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1250, 6, 'F12SCXXX02', 'SG 127 FS IDPC MF', NULL, 4545.48, '206_REND_C_SG_PICT.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1251, 6, 'F04TCXXX02', 'SG 047 ST IDPC MF', NULL, 4197.66, '306_RENDER_ST_1.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1252, 6, 'F07TCXXX02', 'SG 077 ST IDPC MF', NULL, 4317.83, '306_RENDER_ST_1.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1253, 6, 'F12TCXXX02', 'SG 127 ST IDPC MF', NULL, 4545.48, '306_RENDER_ST_1.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1254, 6, 'F04CCXXX02', 'SG 047 HCI IDPC MF', NULL, 2095.63, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1255, 6, 'F07CCXXX02', 'SG 077 HCI IDPC MF', NULL, 2405.52, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1256, 6, 'F12CCXXX02', 'SG 127 HCI IDPC MF', NULL, 3436.76, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:18:53', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1257, 13, 'F04FCXXX02', 'SG 047 CFD IDPC MF', NULL, 2095.63, '26_RENDER_C_SG127_CFD.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1258, 13, 'F07FCXXX02', 'SG 077 CFD IDPC MF', NULL, 2405.52, '26_RENDER_C_SG127_CFD.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1259, 13, 'F12FCXXX02', 'SG 127 CFD IDPC MF', NULL, 3436.76, '26_RENDER_C_SG127_CFD.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1260, 13, 'F04RCXXX02', 'SG 047 CDR IDPC MF', NULL, 2095.63, '25_RENDER_C_SG_123_CDR.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1261, 13, 'F07RCXXX02', 'SG 077 CDR IDPC MF', NULL, 2405.52, '25_RENDER_C_SG_123_CDR.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1262, 13, 'F12RCXXX02', 'SG 127 CDR IDPC MF', NULL, 3436.76, '25_RENDER_C_SG_123_CDR.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1263, 13, 'F04ICXXX02', 'SG 047 CFI IDPC MF', NULL, 2095.63, '26_RENDER_C_SG127_CFD.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1264, 13, 'F07ICXXX02', 'SG 077 CFI IDPC MF', NULL, 2405.52, '26_RENDER_C_SG127_CFD.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1265, 13, 'F12ICXXX02', 'SG 127 CFI IDPC MF', NULL, 3436.76, '26_RENDER_C_SG127_CFD.png', '2023-05-25 15:27:57', '2023-05-30 11:49:04', '2023-05-30 11:49:04', NULL);
INSERT INTO `prices` VALUES (1266, 4, 'F025QXXXXX1', 'Quark 25', '', 605, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1267, 4, 'F025QXXXPX1', 'Quark 25 PCK', '', 608.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1268, 4, 'F025QXXXKX1', 'Quark 25 KHK', '', 612, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1269, 4, 'F025QXXXAX1', 'Quark 25 PCK KHK', '', 615.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1270, 4, 'F025QXXFXX1', 'Quark 25 FKI', '', 660, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1271, 4, 'F025QXXFPX1', 'Quark 25 FKI PCK', '', 663.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1272, 4, 'F025QXXFKX1', 'Quark 25 FKI KHK', '', 667, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1273, 4, 'F025QXXFAX1', 'Quark 25 FKI PCK KHK', '', 670.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1274, 4, 'F025QXTXXX1', 'Quark 25 KTP', '', 618, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1275, 4, 'F025QXTXPX1', 'Quark 25 KTP PCK', '', 621.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1276, 4, 'F025QXTXKX1', 'Quark 25 KTP KHK', '', 625, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1277, 4, 'F025QXTXAX1', 'Quark 25 KTP PCK KHK', '', 628.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1278, 4, 'F025QXTFXX1', 'Quark 25 KTP FKI', '', 673, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1279, 4, 'F025QXTFPX1', 'Quark 25 KTP FKI PCK', '', 676.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1280, 4, 'F025QXTFKX1', 'Quark 25 KTP FKI KHK', '', 680, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1281, 4, 'F025QXTFAX1', 'Quark 25 KTP FKI PCK KHK', '', 683.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1282, 4, 'F025QWXXXX1', 'Quark 25 WBM', '', 628, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1283, 4, 'F025QWXXPX1', 'Quark 25 WBM PCK', '', 631.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1284, 4, 'F025QWXXKX1', 'Quark 25 WBM KHK', '', 635, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1285, 4, 'F025QWXXAX1', 'Quark 25 WBM PCK KHK', '', 638.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1286, 4, 'F025QWXFXX1', 'Quark 25 WBM FKI', '', 683, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1287, 4, 'F025QWXFPX1', 'Quark 25 WBM FKI PCK', '', 686.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1288, 4, 'F025QWXFKX1', 'Quark 25 WBM FKI KHK', '', 690, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1289, 4, 'F025QWXFAX1', 'Quark 25 WBM FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1290, 4, 'F025QWTXXX1', 'Quark 25 WBM KTP', '', 641, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1291, 4, 'F025QWTXPX1', 'Quark 25 WBM KTP PCK', '', 644.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1292, 4, 'F025QWTXKX1', 'Quark 25 WBM KTP KHK', '', 648, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1293, 4, 'F025QWTXAX1', 'Quark 25 WBM KTP PCK KHK', '', 651.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1294, 4, 'F025QWTFXX1', 'Quark 25 WBM KTP FKI', '', 683, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1295, 4, 'F025QWTFPX1', 'Quark 25 WBM KTP FKI PCK', '', 686.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1296, 4, 'F025QWTFKX1', 'Quark 25 WBM KTP FKI KHK', '', 690, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1297, 4, 'F025QWTFAX1', 'Quark 25 WBM KTP FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1298, 4, 'F025QBXXXX1', 'Quark 25 WBB', '', 630, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1299, 4, 'F025QBXXPX1', 'Quark 25 WBB PCK', '', 633.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1300, 4, 'F025QBXXKX1', 'Quark 25 WBB KHK', '', 637, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1301, 4, 'F025QBXXAX1', 'Quark 25 WBB PCK KHK', '', 640.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1302, 4, 'F025QBXFXX1', 'Quark 25 WBB FKI', '', 685, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1303, 4, 'F025QBXFPX1', 'Quark 25 WBB FKI PCK', '', 688.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1304, 4, 'F025QBXFKX1', 'Quark 25 WBB FKI KHK', '', 692, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1305, 4, 'F025QBXFAX1', 'Quark 25 WBB FKI PCK KHK', '', 695.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1306, 4, 'F025QBTXXX1', 'Quark 25 WBB KTP', '', 643, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1307, 4, 'F025QBTXPX1', 'Quark 25 WBB KTP PCK', '', 646.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1308, 4, 'F025QBTXKX1', 'Quark 25 WBB KTP KHK', '', 650, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1309, 4, 'F025QBTXAX1', 'Quark 25 WBB KTP PCK KHK', '', 653.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1310, 4, 'F025QBTFXX1', 'Quark 25 WBB KTP FKI', '', 698, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1311, 4, 'F025QBTFPX1', 'Quark 25 WBB KTP FKI PCK', '', 701.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1312, 4, 'F025QBTFKX1', 'Quark 25 WBB KTP FKI KHK', '', 705, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1313, 4, 'F025QBTFAX1', 'Quark 25 WBB KTP FKI PCK KHK', '', 708.5, 'quark_ssc.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1314, 4, 'SPRSR5Q0001', 'Fire alarm kit (FKI)', '', 70.5, '361_IC_FKI.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1315, 4, 'SPRSR5Q0002', 'Kitchen hood kit (KHK)', '', 17.7, '76_OUTL_C_SPP_RJcable.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1316, 4, 'SPRSR5Q0003', 'Power cable kit 1.5m (PCK)', '', 13.9, '54_OUTL_C_powercable.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1317, 4, 'SPRSR5Q0004', 'Capacitive touch control panel (KTP)', '', 24.3, '251_OUTL_C_kts2.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1318, 4, 'SPRSR5Q0005', 'WiFi and Bluetooth module (WBM)', '', 35.3, '360_IC_WBM.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1319, 4, 'SPRSR5Q0006', 'WiFi and Bluetooth booster antenna (WBB)', '', 37.5, '360_IC_WBM.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1320, 4, 'SPRSR5Q0007', 'RJ45 port multiplier (HUB)', '', 16.6, 'default_price.jpg', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1321, 4, 'SPRSR5Q0008', 'Fan Q025', '', 56.8, '70_OUTL_C_SPP_fan_quantum.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1322, 4, 'SPRSR5Q0009', 'Heat Exchanger Q025', '', 110.1, '72_OUTL_C_SPP_Heat_exch_alu.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1323, 4, 'SPRSR5Q0010', 'G4 Filter', '', 20.5, '98_OUTL_C_FILTER.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1324, 4, 'SPRSR5Q0011', 'F7 Filter', '', 30.5, '98_OUTL_C_FILTER.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1325, 4, 'SPRSR5Q0012', 'Electronic Mainboard Q025', '', 86.05, '73_OUTL_C_SPP_Mainboard.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1326, 4, 'SPRSR5Q0013', 'Bypass motor', '', 22.3, '91_OUTL_C_bypass.png', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1327, 4, 'SPRSR5Q0014', 'Temperature sensor Kit', '', 17.4, 'default_price.jpg', '2023-05-25 15:38:59', '2023-05-30 11:52:02', '2023-05-30 11:52:02', NULL);
INSERT INTO `prices` VALUES (1328, 6, 'F04SCXXX02', 'SG 047 FS IDPC MF', '', 4422.94, '206_REND_C_SG_PICT.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1329, 6, 'F07SCXXX02', 'SG 077 FS IDPC MF', '', 4740.81, '206_REND_C_SG_PICT.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1330, 6, 'F12SCXXX02', 'SG 127 FS IDPC MF', '', 4991.34, '206_REND_C_SG_PICT.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1331, 6, 'F04TCXXX02', 'SG 047 ST IDPC MF', '', 4213.43, '306_RENDER_ST_1.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1332, 6, 'F07TCXXX02', 'SG 077 ST IDPC MF', '', 4548.67, '306_RENDER_ST_1.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1333, 6, 'F12TCXXX02', 'SG 127 ST IDPC MF', '', 4883.4, '306_RENDER_ST_1.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1334, 6, 'F04CCXXX02', 'SG 047 HCI IDPC MF', '', 3974.27, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1335, 6, 'F07CCXXX02', 'SG 077 HCI IDPC MF', '', 4172.29, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1336, 6, 'F12CCXXX02', 'SG 127 HCI IDPC MF', '', 4453.64, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:59:28', '2023-05-25 15:59:42', '2023-05-25 15:59:42', NULL);
INSERT INTO `prices` VALUES (1337, 6, 'F04SCXXX02', 'SG 047 FS IDPC MF', '', 4422.94, '206_REND_C_SG_PICT.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1338, 6, 'F07SCXXX02', 'SG 077 FS IDPC MF', '', 4740.81, '206_REND_C_SG_PICT.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1339, 6, 'F12SCXXX02', 'SG 127 FS IDPC MF', '', 4991.34, '206_REND_C_SG_PICT.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1340, 6, 'F04TCXXX02', 'SG 047 ST IDPC MF', '', 4213.43, '306_RENDER_ST_1.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1341, 6, 'F07TCXXX02', 'SG 077 ST IDPC MF', '', 4548.67, '306_RENDER_ST_1.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1342, 6, 'F12TCXXX02', 'SG 127 ST IDPC MF', '', 4883.4, '306_RENDER_ST_1.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1343, 6, 'F04CCXXX02', 'SG 047 HCI IDPC MF', '', 3974.27, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1344, 6, 'F07CCXXX02', 'SG 077 HCI IDPC MF', '', 4172.29, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1345, 6, 'F12CCXXX02', 'SG 127 HCI IDPC MF', '', 4453.64, '113_RENDER_C_SG_127_HCI.png', '2023-05-25 15:59:51', '2023-05-30 11:43:59', '2023-05-30 11:43:59', NULL);
INSERT INTO `prices` VALUES (1346, 12, 'FCLRC6OSC086', 'CLRC 086 OSC', '', 2939.99, '211_OSC_6.png', '2023-05-30 10:09:08', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 126);
INSERT INTO `prices` VALUES (1347, 12, 'FCLRC6SSC086', 'CLRC 086 SSC', '', 2939.99, '216_SSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 129);
INSERT INTO `prices` VALUES (1348, 12, 'FCLRC6OSC146', 'CLRC 146 OSC', '', 3353.01, '211_OSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 127);
INSERT INTO `prices` VALUES (1349, 12, 'FCLRC6SSC146', 'CLRC 146 SSC', '', 3353.01, '216_SSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 130);
INSERT INTO `prices` VALUES (1350, 12, 'FCLRC6OSC176', 'CLRC 176 OSC', '', 3632.47, '211_OSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 128);
INSERT INTO `prices` VALUES (1351, 12, 'FCLRC6SSC176', 'CLRC 176 SSC', '', 3632.47, '216_SSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 131);
INSERT INTO `prices` VALUES (1352, 12, 'FCLRC6OSC256', 'CLRC 256 OSC', '', 3872.24, '211_OSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 179);
INSERT INTO `prices` VALUES (1353, 12, 'FCLRC6SSC256', 'CLRC 256 SSC', '', 4672, '216_SSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 199);
INSERT INTO `prices` VALUES (1354, 12, 'FCLRC6OSC556', 'CLRC 556 OSC', '', 8786.3, '211_OSC_6.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 194);
INSERT INTO `prices` VALUES (1355, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', '', 11557.3, '1685089863.png', '2023-05-30 10:09:09', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 195);
INSERT INTO `prices` VALUES (1356, 1, 'FCLRCROSC012', 'CLRC 013 OSC B3', 'North-South', 1453.64, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 62);
INSERT INTO `prices` VALUES (1357, 1, 'FCLRCROSC013', 'CLRC 013 OSC B4', 'North-South', 1453.64, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 62);
INSERT INTO `prices` VALUES (1358, 1, 'FCLRCROSC014', 'CLRC 013 OSC B5', 'Floor', 1453.64, '196_OSC3_H_2_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 62);
INSERT INTO `prices` VALUES (1359, 1, 'FCLRCROSC015', 'CLRC 013 OSC B6', 'Ceiling', 1453.64, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 62);
INSERT INTO `prices` VALUES (1360, 1, 'FCLRCROSC016', 'CLRC 013 OSC A4', 'Ceiling', 1453.64, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 62);
INSERT INTO `prices` VALUES (1361, 1, 'FCLRCROSC020', 'CLRC 023 OSC B1', 'East-West', 1499.4, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 64);
INSERT INTO `prices` VALUES (1362, 1, 'FCLRCROSC021', 'CLRC 023 OSC B2', 'East-West', 1499.4, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 64);
INSERT INTO `prices` VALUES (1363, 1, 'FCLRCROSC022', 'CLRC 023 OSC B3', 'North-South', 1499.4, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 64);
INSERT INTO `prices` VALUES (1364, 1, 'FCLRCROSC023', 'CLRC 023 OSC B4', 'North-South', 1499.4, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 64);
INSERT INTO `prices` VALUES (1365, 1, 'FCLRCROSC024', 'CLRC 023 OSC B5', 'Floor', 1499.4, '196_OSC3_H_2_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 64);
INSERT INTO `prices` VALUES (1366, 1, 'FCLRCROSC025', 'CLRC 023 OSC B6', 'Ceiling', 1499.4, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 64);
INSERT INTO `prices` VALUES (1367, 1, 'FCLRCROSC026', 'CLRC 023 OSC A4', 'Ceiling', 1499.4, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 64);
INSERT INTO `prices` VALUES (1368, 1, 'FCLRCROSC030', 'CLRC 033 OSC B1', 'East-West', 1556.77, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 66);
INSERT INTO `prices` VALUES (1369, 1, 'FCLRCROSC031', 'CLRC 033 OSC B2', 'East-West', 1556.77, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 66);
INSERT INTO `prices` VALUES (1370, 1, 'FCLRCROSC032', 'CLRC 033 OSC B3', 'North-South', 1556.77, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 66);
INSERT INTO `prices` VALUES (1371, 1, 'FCLRCROSC033', 'CLRC 033 OSC B4', 'North-South', 1556.77, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 66);
INSERT INTO `prices` VALUES (1372, 1, 'FCLRCROSC034', 'CLRC 033 OSC B5', 'Floor', 1556.77, '196_OSC3_H_2_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 66);
INSERT INTO `prices` VALUES (1373, 1, 'FCLRCROSC035', 'CLRC 033 OSC B6', 'Ceiling', 1556.77, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 66);
INSERT INTO `prices` VALUES (1374, 1, 'FCLRCROSC036', 'CLRC 033 OSC A4', 'Ceiling', 1556.77, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 66);
INSERT INTO `prices` VALUES (1375, 1, 'FCLRCROSC040', 'CLRC 043 OSC B1', 'East-West', 1811.02, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 68);
INSERT INTO `prices` VALUES (1376, 1, 'FCLRCROSC041', 'CLRC 043 OSC B2', 'East-West', 1811.02, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 68);
INSERT INTO `prices` VALUES (1377, 1, 'FCLRCROSC043', 'CLRC 043 OSC B4', 'North-South', 1811.02, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 68);
INSERT INTO `prices` VALUES (1378, 1, 'FCLRCROSC044', 'CLRC 043 OSC B5', 'Floor', 1811.02, '196_OSC3_H_2_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 68);
INSERT INTO `prices` VALUES (1379, 1, 'FCLRCROSC045', 'CLRC 043 OSC B6', 'Ceiling', 1811.02, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 68);
INSERT INTO `prices` VALUES (1380, 1, 'FCLRCROSC046', 'CLRC 043 OSC A4', 'Ceiling', 1811.02, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 68);
INSERT INTO `prices` VALUES (1381, 1, 'FCLRCROSC051', 'CLRC 053 OSC B2', 'East-West', 1919.67, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 70);
INSERT INTO `prices` VALUES (1382, 1, 'FCLRCROSC052', 'CLRC 053 OSC B3', 'North-South', 1919.67, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 70);
INSERT INTO `prices` VALUES (1383, 1, 'FCLRCROSC053', 'CLRC 053 OSC B4', 'North-South', 1919.67, '198_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 70);
INSERT INTO `prices` VALUES (1384, 1, 'FCLRCROSC054', 'CLRC 053 OSC B5', 'Floor', 1919.67, '196_OSC3_H_2_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 70);
INSERT INTO `prices` VALUES (1385, 1, 'FCLRCROSC055', 'CLRC 053 OSC B6', 'Ceiling', 1919.67, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 70);
INSERT INTO `prices` VALUES (1386, 1, 'FCLRCROSC056', 'CLRC 053 OSC A3', 'Floor', 1919.67, '196_OSC3_H_2_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 70);
INSERT INTO `prices` VALUES (1387, 1, 'FCLRCROSC057', 'CLRC 053 OSC A4', 'Ceiling', 1919.67, '196_OSC3_H_2.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 70);
INSERT INTO `prices` VALUES (1388, 1, 'FCLRCROSC070', 'CLRC 073 OSC A3', 'Floor', 2331.73, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 72);
INSERT INTO `prices` VALUES (1389, 1, 'FCLRCROSC071', 'CLRC 073 OSC A4', 'Ceiling', 2331.73, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 72);
INSERT INTO `prices` VALUES (1390, 1, 'FCLRCROSC072', 'CLRC 073 OSC B1', 'East-West', 2331.73, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 72);
INSERT INTO `prices` VALUES (1391, 1, 'FCLRCROSC074', 'CLRC 073 OSC B3', 'North-South', 2331.73, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 72);
INSERT INTO `prices` VALUES (1392, 1, 'FCLRCROSC075', 'CLRC 073 OSC B4', 'North-South', 2331.73, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 72);
INSERT INTO `prices` VALUES (1393, 1, 'FCLRCROSC076', 'CLRC 073 OSC B5', 'Floor', 2331.73, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 72);
INSERT INTO `prices` VALUES (1394, 1, 'FCLRCROSC077', 'CLRC 073 OSC B6', 'Ceiling', 2331.73, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 72);
INSERT INTO `prices` VALUES (1395, 1, 'FCLRC3OSC090', 'CLRC 093 OSC A3', 'Floor', 2453.03, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1396, 1, 'FCLRC3OSC091', 'CLRC 093 OSC A4', 'Ceiling', 2453.03, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1397, 1, 'FCLRC3OSC092', 'CLRC 093 OSC B1', 'East-West', 2453.03, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1398, 1, 'FCLRC3OSC093', 'CLRC 093 OSC B3', 'North-South', 2453.03, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1399, 1, 'FCLRC3OSC094', 'CLRC 093 OSC B4', 'North-South', 2453.03, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1400, 1, 'FCLRC3OSC095', 'CLRC 093 OSC B5', 'Floor', 2453.03, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1401, 1, 'FCLRC3OSC096', 'CLRC 093 OSC B6', 'Ceiling', 2453.03, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1402, 1, 'FCLRC3OSC105', 'CLRC 093 OSC B2', 'East-West', 2453.03, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 74);
INSERT INTO `prices` VALUES (1403, 1, 'FCLRC3OSC119', 'CLRC 123 OSC B2', 'East-West', 2921.24, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1404, 1, 'FCLRC3OSC120', 'CLRC 123 OSC A3', 'Floor', 2921.24, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1405, 1, 'FCLRC3OSC121', 'CLRC 123 OSC A4', 'Ceiling', 2921.24, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1406, 1, 'FCLRC3OSC122', 'CLRC 123 OSC B1', 'East-West', 2921.24, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1407, 1, 'FCLRC3OSC123', 'CLRC 123 OSC B3', 'North-South', 2921.24, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1408, 1, 'FCLRC3OSC124', 'CLRC 123 OSC B4', 'North-South', 2921.24, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1409, 1, 'FCLRC3OSC125', 'CLRC 123 OSC B5', 'Floor', 2921.24, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1410, 1, 'FCLRC3OSC126', 'CLRC 123 OSC B6', 'Ceiling', 2921.24, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 76);
INSERT INTO `prices` VALUES (1411, 1, 'FCLRC3OSC160', 'CLRC 163 OSC A3', 'Floor', 3035.82, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1412, 1, 'FCLRC3OSC161', 'CLRC 163 OSC A4', 'Ceiling', 3035.82, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1413, 1, 'FCLRC3OSC162', 'CLRC 163 OSC B1', 'East-West', 3035.82, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1414, 1, 'FCLRC3OSC163', 'CLRC 163 OSC B3', 'North-South', 3035.82, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1415, 1, 'FCLRC3OSC164', 'CLRC 163 OSC B4', 'North-South', 3035.82, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1416, 1, 'FCLRC3OSC165', 'CLRC 163 OSC B5', 'Floor', 3035.82, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1417, 1, 'FCLRC3OSC166', 'CLRC 163 OSC B6', 'Ceiling', 3035.82, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1418, 1, 'FCLRC3OSC175', 'CLRC 163 OSC B2', 'East-West', 3035.82, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 78);
INSERT INTO `prices` VALUES (1419, 1, 'FCLRC3OSC220', 'CLRC 223 OSC A3', 'Floor', 3848.75, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1420, 1, 'FCLRC3OSC221', 'CLRC 223 OSC A4', 'Ceiling', 3848.75, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1421, 1, 'FCLRC3OSC222', 'CLRC 223 OSC B1', 'East-West', 3848.75, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1422, 1, 'FCLRC3OSC223', 'CLRC 223 OSC B3', 'North-South', 3848.75, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1423, 1, 'FCLRC3OSC224', 'CLRC 223 OSC B4', 'North-South', 3848.75, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1424, 1, 'FCLRC3OSC225', 'CLRC 223 OSC B5', 'Floor', 3848.75, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1425, 1, 'FCLRC3OSC226', 'CLRC 223 OSC B6', 'Ceiling', 3848.75, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1426, 1, 'FCLRC3OSC235', 'CLRC 223 OSC B2', 'East-West', 3848.75, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 80);
INSERT INTO `prices` VALUES (1427, 1, 'FCLRC3OSC320', 'CLRC 323 OSC A3', 'Floor', 4490.1, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 82);
INSERT INTO `prices` VALUES (1428, 1, 'FCLRC3OSC321', 'CLRC 323 OSC A4', 'Ceiling', 4490.1, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 82);
INSERT INTO `prices` VALUES (1429, 1, 'FCLRC3OSC322', 'CLRC 323 OSC B1', 'East-West', 4490.1, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 82);
INSERT INTO `prices` VALUES (1430, 1, 'FCLRC3OSC323', 'CLRC 323 OSC B3', 'North-South', 4490.1, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 82);
INSERT INTO `prices` VALUES (1431, 1, 'FCLRC3OSC324', 'CLRC 323 OSC B4', 'North-South', 4490.1, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 82);
INSERT INTO `prices` VALUES (1432, 1, 'FCLRC3OSC325', 'CLRC 323 OSC B5', 'Floor', 4490.1, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 82);
INSERT INTO `prices` VALUES (1433, 1, 'FCLRC3OSC326', 'CLRC 323 OSC B6', 'Ceiling', 4490.1, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 82);
INSERT INTO `prices` VALUES (1434, 1, 'FCLRC3OSC420', 'CLRC 423 OSC A3', 'Floor', 5120.34, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 84);
INSERT INTO `prices` VALUES (1435, 1, 'FCLRC3OSC421', 'CLRC 423 OSC A4', 'Ceiling', 5120.34, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 84);
INSERT INTO `prices` VALUES (1436, 1, 'FCLRC3OSC422', 'CLRC 423 OSC B1', 'East-West', 5120.34, '201_OSC3_H_4.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 84);
INSERT INTO `prices` VALUES (1437, 1, 'FCLRC3OSC423', 'CLRC 423 OSC B3', 'North-South', 5120.34, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 84);
INSERT INTO `prices` VALUES (1438, 1, 'FCLRC3OSC424', 'CLRC 423 OSC B4', 'North-South', 5120.34, '204_OSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 84);
INSERT INTO `prices` VALUES (1439, 1, 'FCLRC3OSC425', 'CLRC 423 OSC B5', 'Floor', 5120.34, '202_OSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 84);
INSERT INTO `prices` VALUES (1440, 1, 'FCLRC3OSC426', 'CLRC 423 OSC B6', 'Ceiling', 5120.34, '202_OSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 84);
INSERT INTO `prices` VALUES (1441, 1, 'FCLRC3OSC740', 'CLRC 753 OSC B6', 'Ceiling', 9324.13, '299_3D_3_OSC_GRANDE.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 188);
INSERT INTO `prices` VALUES (1442, 1, 'FCLRC3OSC1053', 'CLRC 1053 OSC B6', 'Ceiling', 10970.1, '299_3D_3_OSC_GRANDE.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 192);
INSERT INTO `prices` VALUES (1443, 1, 'FCLRCRSSC022', 'CLRC 023 SSC A1', 'Floor', 1489.32, '200_SSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 63);
INSERT INTO `prices` VALUES (1444, 1, 'FCLRCRSSC023', 'CLRC 023 SSC A2', 'Ceiling', 1503.61, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 63);
INSERT INTO `prices` VALUES (1445, 1, 'FCLRCRSSC024', 'CLRC 023 SSC A3', 'Floor', 1503.61, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 63);
INSERT INTO `prices` VALUES (1446, 1, 'FCLRCRSSC025', 'CLRC 023 SSC B1', 'Floor', 1503.61, '200_SSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 63);
INSERT INTO `prices` VALUES (1447, 1, 'FCLRCRSSC026', 'CLRC 023 SSC B2', 'Ceiling', 1503.61, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 63);
INSERT INTO `prices` VALUES (1448, 1, 'FCLRCRSSC027', 'CLRC 023 SSC B3', 'Floor', 1503.61, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 63);
INSERT INTO `prices` VALUES (1449, 1, 'FCLRCRSSC042', 'CLRC 043 SSC A1', 'Floor', 2066.21, '200_SSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 67);
INSERT INTO `prices` VALUES (1450, 1, 'FCLRCRSSC052', 'CLRC 053 SSC A1', 'Floor', 2188.23, '200_SSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 69);
INSERT INTO `prices` VALUES (1451, 1, 'FCLRCRSSC053', 'CLRC 053 SSC A2', 'Ceiling', 2188.23, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 69);
INSERT INTO `prices` VALUES (1452, 1, 'FCLRCRSSC054', 'CLRC 053 SSC A3', 'Floor', 2188.23, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 69);
INSERT INTO `prices` VALUES (1453, 1, 'FCLRCRSSC055', 'CLRC 053 SSC B1', 'Floor', 2188.23, '200_SSC3_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 69);
INSERT INTO `prices` VALUES (1454, 1, 'FCLRCRSSC056', 'CLRC 053 SSC B2', 'Ceiling', 2188.23, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 69);
INSERT INTO `prices` VALUES (1455, 1, 'FCLRCRSSC057', 'CLRC 053 SSC B3', 'Floor', 2188.23, '199_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 69);
INSERT INTO `prices` VALUES (1456, 1, 'FCLRC3SSC072', 'CLRC 073 SSC A1', 'Floor', 2591.76, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 71);
INSERT INTO `prices` VALUES (1457, 1, 'FCLRC3SSC073', 'CLRC 073 SSC A2', 'Ceiling', 2591.76, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 71);
INSERT INTO `prices` VALUES (1458, 1, 'FCLRC3SSC074', 'CLRC 073 SSC A3', 'Floor', 2591.76, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 71);
INSERT INTO `prices` VALUES (1459, 1, 'FCLRC3SSC075', 'CLRC 073 SSC B1', 'Floor', 2591.76, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 71);
INSERT INTO `prices` VALUES (1460, 1, 'FCLRC3SSC076', 'CLRC 073 SSC B2', 'Ceiling', 2591.76, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 71);
INSERT INTO `prices` VALUES (1461, 1, 'FCLRC3SSC077', 'CLRC 073 SSC B3', 'Floor', 2591.76, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 71);
INSERT INTO `prices` VALUES (1462, 1, 'FCLRC3SSC092', 'CLRC 093 SSC A1', 'Floor', 2620.36, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 73);
INSERT INTO `prices` VALUES (1463, 1, 'FCLRC3SSC093', 'CLRC 093 SSC A2', 'Ceiling', 2620.36, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 73);
INSERT INTO `prices` VALUES (1464, 1, 'FCLRC3SSC094', 'CLRC 093 SSC A3', 'Floor', 2620.36, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 73);
INSERT INTO `prices` VALUES (1465, 1, 'FCLRC3SSC095', 'CLRC 093 SSC B1', 'Floor', 2620.36, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 73);
INSERT INTO `prices` VALUES (1466, 1, 'FCLRC3SSC096', 'CLRC 093 SSC B2', 'Ceiling', 2620.36, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 73);
INSERT INTO `prices` VALUES (1467, 1, 'FCLRC3SSC097', 'CLRC 093 SSC B3', 'Floor', 2620.36, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 73);
INSERT INTO `prices` VALUES (1468, 1, 'FCLRC3SSC122', 'CLRC 123 SSC A1', 'Floor', 2962.98, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 75);
INSERT INTO `prices` VALUES (1469, 1, 'FCLRC3SSC123', 'CLRC 123 SSC A2', 'Ceiling', 2962.98, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 75);
INSERT INTO `prices` VALUES (1470, 1, 'FCLRC3SSC124', 'CLRC 123 SSC A3', 'Floor', 2962.98, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 75);
INSERT INTO `prices` VALUES (1471, 1, 'FCLRC3SSC125', 'CLRC 123 SSC B1', 'Floor', 2962.98, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 75);
INSERT INTO `prices` VALUES (1472, 1, 'FCLRC3SSC126', 'CLRC 123 SSC B2', 'Ceiling', 2962.98, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 75);
INSERT INTO `prices` VALUES (1473, 1, 'FCLRC3SSC127', 'CLRC 123 SSC B3', 'Floor', 2962.98, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 75);
INSERT INTO `prices` VALUES (1474, 1, 'FCLRC3SSC162', 'CLRC 163 SSC A1', 'Floor', 3321.94, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 77);
INSERT INTO `prices` VALUES (1475, 1, 'FCLRC3SSC163', 'CLRC 163 SSC A2', 'Ceiling', 3321.94, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 77);
INSERT INTO `prices` VALUES (1476, 1, 'FCLRC3SSC164', 'CLRC 163 SSC A3', 'Floor', 3321.94, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 77);
INSERT INTO `prices` VALUES (1477, 1, 'FCLRC3SSC165', 'CLRC 163 SSC B1', 'Floor', 3321.94, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 77);
INSERT INTO `prices` VALUES (1478, 1, 'FCLRC3SSC166', 'CLRC 163 SSC B2', 'Ceiling', 3321.94, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 77);
INSERT INTO `prices` VALUES (1479, 1, 'FCLRC3SSC167', 'CLRC 163 SSC B3', 'Floor', 3321.94, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 77);
INSERT INTO `prices` VALUES (1480, 1, 'FCLRC3SSC222', 'CLRC 223 SSC A1', 'Floor', 3781.21, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 79);
INSERT INTO `prices` VALUES (1481, 1, 'FCLRC3SSC223', 'CLRC 223 SSC A2', 'Ceiling', 3781.21, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 79);
INSERT INTO `prices` VALUES (1482, 1, 'FCLRC3SSC224', 'CLRC 223 SSC A3', 'Floor', 3781.21, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 79);
INSERT INTO `prices` VALUES (1483, 1, 'FCLRC3SSC225', 'CLRC 223 SSC B1', 'Floor', 3781.21, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 79);
INSERT INTO `prices` VALUES (1484, 1, 'FCLRC3SSC226', 'CLRC 223 SSC B2', 'Ceiling', 3781.21, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 79);
INSERT INTO `prices` VALUES (1485, 1, 'FCLRC3SSC227', 'CLRC 223 SSC B3', 'Floor', 3781.21, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 79);
INSERT INTO `prices` VALUES (1486, 1, 'FCLRC3SSC332', 'CLRC 323 SSC A1', 'Floor', 4804.87, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 81);
INSERT INTO `prices` VALUES (1487, 1, 'FCLRC3SSC333', 'CLRC 323 SSC A2', 'Ceiling', 4804.87, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 81);
INSERT INTO `prices` VALUES (1488, 1, 'FCLRC3SSC334', 'CLRC 323 SSC A3', 'Floor', 4804.87, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 81);
INSERT INTO `prices` VALUES (1489, 1, 'FCLRC3SSC335', 'CLRC 323 SSC B1', 'Floor', 4804.87, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 81);
INSERT INTO `prices` VALUES (1490, 1, 'FCLRC3SSC336', 'CLRC 323 SSC B2', 'Ceiling', 4804.87, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 81);
INSERT INTO `prices` VALUES (1491, 1, 'FCLRC3SSC337', 'CLRC 323 SSC B3', 'Floor', 4804.87, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 81);
INSERT INTO `prices` VALUES (1492, 1, 'FCLRC3SSC422', 'CLRC 423 SSC A1', 'Floor', 5810.61, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 83);
INSERT INTO `prices` VALUES (1493, 1, 'FCLRC3SSC423', 'CLRC 423 SSC A2', 'Ceiling', 5810.61, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 83);
INSERT INTO `prices` VALUES (1494, 1, 'FCLRC3SSC424', 'CLRC 423 SSC A3', 'Floor', 5810.61, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 83);
INSERT INTO `prices` VALUES (1495, 1, 'FCLRC3SSC425', 'CLRC 423 SSC B1', 'Floor', 5810.61, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 83);
INSERT INTO `prices` VALUES (1496, 1, 'FCLRC3SSC426', 'CLRC 423 SSC B2', 'Ceiling', 5810.61, '203_SSC3_H.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 83);
INSERT INTO `prices` VALUES (1497, 1, 'FCLRC3SSC427', 'CLRC 423 SSC B3', 'Floor', 5810.61, '203_SSC3_H_floor.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 83);
INSERT INTO `prices` VALUES (1498, 1, 'FCLRC3SSC540', 'CLRC 543 SSC A1', 'Floor', 6256.64, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 85);
INSERT INTO `prices` VALUES (1499, 1, 'FCLRC3SSC541', 'CLRC 543 SSC B1', 'Floor', 6256.64, '218_SSC_223_V.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 85);
INSERT INTO `prices` VALUES (1500, 1, 'FCLRC3SSC750', 'CLRC 753 SSC A1', 'Floor', 10360.2, '300_3D_3_SSC_GRANDE.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 190);
INSERT INTO `prices` VALUES (1501, 1, 'FCLRC3SSC1053', 'CLRC 1053 SSC B1', 'Floor', 11906, '300_3D_3_SSC_GRANDE.png', '2023-05-30 10:48:43', '2023-05-30 10:48:43', NULL, 191);
INSERT INTO `prices` VALUES (1502, 3, 'FSSC35XXX02', 'CLRC QUANTUM 35 SSC LT', '', 1156.46, 'quantum.png', '2023-05-30 11:38:18', '2023-05-30 11:38:18', NULL, 143);
INSERT INTO `prices` VALUES (1503, 3, 'FSSC45XXX02', 'CLRC QUANTUM 45 SSC LT', '', 1265.99, 'quantum.png', '2023-05-30 11:38:18', '2023-05-30 11:38:18', NULL, 142);
INSERT INTO `prices` VALUES (1504, 3, 'FSSC55XXX02', 'CLRC QUANTUM 55 SSC LT', '', 1334.49, 'quantum.png', '2023-05-30 11:38:18', '2023-05-30 11:38:18', NULL, 141);
INSERT INTO `prices` VALUES (1505, 3, 'FSSC65XXX02', 'CLRC QUANTUM 65 SSC LT', '', 1459.09, 'quantum.png', '2023-05-30 11:38:18', '2023-05-30 11:38:18', NULL, 140);
INSERT INTO `prices` VALUES (1506, 6, 'F04SCXXX02', 'SG 047 FS IDPC MF', '', 4422.94, '206_REND_C_SG_PICT.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 176);
INSERT INTO `prices` VALUES (1507, 6, 'F07SCXXX02', 'SG 077 FS IDPC MF', '', 4740.81, '206_REND_C_SG_PICT.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 175);
INSERT INTO `prices` VALUES (1508, 6, 'F12SCXXX02', 'SG 127 FS IDPC MF', '', 4991.34, '206_REND_C_SG_PICT.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 138);
INSERT INTO `prices` VALUES (1509, 6, 'F04TCXXX02', 'SG 047 ST IDPC MF', '', 4213.43, '306_RENDER_ST_1.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 187);
INSERT INTO `prices` VALUES (1510, 6, 'F07TCXXX02', 'SG 077 ST IDPC MF', '', 4548.67, '306_RENDER_ST_1.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 186);
INSERT INTO `prices` VALUES (1511, 6, 'F12TCXXX02', 'SG 127 ST IDPC MF', '', 4883.4, '306_RENDER_ST_1.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 185);
INSERT INTO `prices` VALUES (1512, 6, 'F04CCXXX02', 'SG 047 HCI IDPC MF', '', 3974.27, '113_RENDER_C_SG_127_HCI.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 113);
INSERT INTO `prices` VALUES (1513, 6, 'F07CCXXX02', 'SG 077 HCI IDPC MF', '', 4172.29, '113_RENDER_C_SG_127_HCI.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 110);
INSERT INTO `prices` VALUES (1514, 6, 'F12CCXXX02', 'SG 127 HCI IDPC MF', '', 4453.64, '113_RENDER_C_SG_127_HCI.png', '2023-05-30 11:44:18', '2023-05-30 11:44:18', NULL, 118);
INSERT INTO `prices` VALUES (1515, 8, 'FCLRC40HV16', 'Heat recovery unit CLRC 164 Horizontal', '', 8667.05, '207_324_H.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 96);
INSERT INTO `prices` VALUES (1516, 8, 'FCLRC40HV41', 'Heat recovery unit CLRC 164 Vertical', '', 8667.05, '230_324_V.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 96);
INSERT INTO `prices` VALUES (1517, 8, 'FCLRC40HV55', 'Heat recovery unit CLRC 224 Horizontal', '', 9867.66, '207_324_H.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 123);
INSERT INTO `prices` VALUES (1518, 8, 'FCLRC40HV54', 'Heat recovery unit CLRC 224 Vertical', '', 9867.66, '230_324_V.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 123);
INSERT INTO `prices` VALUES (1519, 8, 'FCLRC40HV30', 'Heat recovery unit CLRC 324 Horizontal', '', 10535.3, '207_324_H.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 92);
INSERT INTO `prices` VALUES (1520, 8, 'FCLRC40HV42', 'Heat recovery unit CLRC 324 Vertical', '', 10535.3, '230_324_V.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 92);
INSERT INTO `prices` VALUES (1521, 8, 'FCLRC40HV40', 'Heat recovery unit CLRC 474 Horizontal', '', 11675.4, '207_324_H.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 124);
INSERT INTO `prices` VALUES (1522, 8, 'FCLRC40HV43', 'Heat recovery unit CLRC 474 Vertical', '', 11675.4, '230_324_V.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 124);
INSERT INTO `prices` VALUES (1523, 8, 'FCLRC40HV50', 'Heat recovery unit CLRC 674 Vertical', '', 13041.6, '207_324_H.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 125);
INSERT INTO `prices` VALUES (1524, 8, 'FCLRC40HV51', 'Heat recovery unit CLRC 674 Horizontal', '', 13041.6, '230_324_V.png', '2023-05-30 11:46:08', '2023-05-30 11:46:08', NULL, 125);
INSERT INTO `prices` VALUES (1525, 13, 'F04FCXXX02', 'SG 047 CFD IDPC MF', '', 2095.63, '26_RENDER_C_SG127_CFD.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 112);
INSERT INTO `prices` VALUES (1526, 13, 'F07FCXXX02', 'SG 077 CFD IDPC MF', '', 2405.52, '26_RENDER_C_SG127_CFD.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 115);
INSERT INTO `prices` VALUES (1527, 13, 'F12FCXXX02', 'SG 127 CFD IDPC MF', '', 3436.76, '26_RENDER_C_SG127_CFD.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 117);
INSERT INTO `prices` VALUES (1528, 13, 'F04RCXXX02', 'SG 047 CDR IDPC MF', '', 2095.63, '25_RENDER_C_SG_123_CDR.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 111);
INSERT INTO `prices` VALUES (1529, 13, 'F07RCXXX02', 'SG 077 CDR IDPC MF', '', 2405.52, '25_RENDER_C_SG_123_CDR.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 109);
INSERT INTO `prices` VALUES (1530, 13, 'F12RCXXX02', 'SG 127 CDR IDPC MF', '', 3436.76, '25_RENDER_C_SG_123_CDR.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 107);
INSERT INTO `prices` VALUES (1531, 13, 'F04ICXXX02', 'SG 047 CFI IDPC MF', '', 2095.63, '26_RENDER_C_SG127_CFD.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 114);
INSERT INTO `prices` VALUES (1532, 13, 'F07ICXXX02', 'SG 077 CFI IDPC MF', '', 2405.52, '26_RENDER_C_SG127_CFD.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 116);
INSERT INTO `prices` VALUES (1533, 13, 'F12ICXXX02', 'SG 127 CFI IDPC MF', '', 3436.76, '26_RENDER_C_SG127_CFD.png', '2023-05-30 11:49:35', '2023-05-30 11:49:35', NULL, 119);
INSERT INTO `prices` VALUES (1534, 4, 'F025QXXXXX1', 'Quark 25', '', 605, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1535, 4, 'F025QXXXPX1', 'Quark 25 PCK', '', 608.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1536, 4, 'F025QXXXKX1', 'Quark 25 KHK', '', 612, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1537, 4, 'F025QXXXAX1', 'Quark 25 PCK KHK', '', 615.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1538, 4, 'F025QXXFXX1', 'Quark 25 FKI', '', 660, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1539, 4, 'F025QXXFPX1', 'Quark 25 FKI PCK', '', 663.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1540, 4, 'F025QXXFKX1', 'Quark 25 FKI KHK', '', 667, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1541, 4, 'F025QXXFAX1', 'Quark 25 FKI PCK KHK', '', 670.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1542, 4, 'F025QXTXXX1', 'Quark 25 KTP', '', 618, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1543, 4, 'F025QXTXPX1', 'Quark 25 KTP PCK', '', 621.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1544, 4, 'F025QXTXKX1', 'Quark 25 KTP KHK', '', 625, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1545, 4, 'F025QXTXAX1', 'Quark 25 KTP PCK KHK', '', 628.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1546, 4, 'F025QXTFXX1', 'Quark 25 KTP FKI', '', 673, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1547, 4, 'F025QXTFPX1', 'Quark 25 KTP FKI PCK', '', 676.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1548, 4, 'F025QXTFKX1', 'Quark 25 KTP FKI KHK', '', 680, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1549, 4, 'F025QXTFAX1', 'Quark 25 KTP FKI PCK KHK', '', 683.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1550, 4, 'F025QWXXXX1', 'Quark 25 WBM', '', 628, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1551, 4, 'F025QWXXPX1', 'Quark 25 WBM PCK', '', 631.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1552, 4, 'F025QWXXKX1', 'Quark 25 WBM KHK', '', 635, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1553, 4, 'F025QWXXAX1', 'Quark 25 WBM PCK KHK', '', 638.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1554, 4, 'F025QWXFXX1', 'Quark 25 WBM FKI', '', 683, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1555, 4, 'F025QWXFPX1', 'Quark 25 WBM FKI PCK', '', 686.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1556, 4, 'F025QWXFKX1', 'Quark 25 WBM FKI KHK', '', 690, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1557, 4, 'F025QWXFAX1', 'Quark 25 WBM FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1558, 4, 'F025QWTXXX1', 'Quark 25 WBM KTP', '', 641, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1559, 4, 'F025QWTXPX1', 'Quark 25 WBM KTP PCK', '', 644.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1560, 4, 'F025QWTXKX1', 'Quark 25 WBM KTP KHK', '', 648, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1561, 4, 'F025QWTXAX1', 'Quark 25 WBM KTP PCK KHK', '', 651.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1562, 4, 'F025QWTFXX1', 'Quark 25 WBM KTP FKI', '', 683, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1563, 4, 'F025QWTFPX1', 'Quark 25 WBM KTP FKI PCK', '', 686.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1564, 4, 'F025QWTFKX1', 'Quark 25 WBM KTP FKI KHK', '', 690, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1565, 4, 'F025QWTFAX1', 'Quark 25 WBM KTP FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1566, 4, 'F025QBXXXX1', 'Quark 25 WBB', '', 630, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1567, 4, 'F025QBXXPX1', 'Quark 25 WBB PCK', '', 633.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1568, 4, 'F025QBXXKX1', 'Quark 25 WBB KHK', '', 637, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1569, 4, 'F025QBXXAX1', 'Quark 25 WBB PCK KHK', '', 640.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1570, 4, 'F025QBXFXX1', 'Quark 25 WBB FKI', '', 685, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1571, 4, 'F025QBXFPX1', 'Quark 25 WBB FKI PCK', '', 688.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1572, 4, 'F025QBXFKX1', 'Quark 25 WBB FKI KHK', '', 692, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1573, 4, 'F025QBXFAX1', 'Quark 25 WBB FKI PCK KHK', '', 695.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1574, 4, 'F025QBTXXX1', 'Quark 25 WBB KTP', '', 643, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1575, 4, 'F025QBTXPX1', 'Quark 25 WBB KTP PCK', '', 646.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1576, 4, 'F025QBTXKX1', 'Quark 25 WBB KTP KHK', '', 650, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1577, 4, 'F025QBTXAX1', 'Quark 25 WBB KTP PCK KHK', '', 653.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1578, 4, 'F025QBTFXX1', 'Quark 25 WBB KTP FKI', '', 698, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1579, 4, 'F025QBTFPX1', 'Quark 25 WBB KTP FKI PCK', '', 701.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1580, 4, 'F025QBTFKX1', 'Quark 25 WBB KTP FKI KHK', '', 705, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1581, 4, 'F025QBTFAX1', 'Quark 25 WBB KTP FKI PCK KHK', '', 708.5, 'quark_ssc.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', 196);
INSERT INTO `prices` VALUES (1582, 4, 'SPRSR5Q0001', 'Fire alarm kit (FKI)', '', 70.5, '361_IC_FKI.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1583, 4, 'SPRSR5Q0002', 'Kitchen hood kit (KHK)', '', 17.7, '76_OUTL_C_SPP_RJcable.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1584, 4, 'SPRSR5Q0003', 'Power cable kit 1.5m (PCK)', '', 13.9, '54_OUTL_C_powercable.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1585, 4, 'SPRSR5Q0004', 'Capacitive touch control panel (KTP)', '', 24.3, '251_OUTL_C_kts2.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1586, 4, 'SPRSR5Q0005', 'WiFi and Bluetooth module (WBM)', '', 35.3, '360_IC_WBM.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1587, 4, 'SPRSR5Q0006', 'WiFi and Bluetooth booster antenna (WBB)', '', 37.5, '360_IC_WBM.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1588, 4, 'SPRSR5Q0007', 'RJ45 port multiplier (HUB)', '', 16.6, 'default_price.jpg', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1589, 4, 'SPRSR5Q0008', 'Fan Q025', '', 56.8, '70_OUTL_C_SPP_fan_quantum.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1590, 4, 'SPRSR5Q0009', 'Heat Exchanger Q025', '', 110.1, '72_OUTL_C_SPP_Heat_exch_alu.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1591, 4, 'SPRSR5Q0010', 'G4 Filter', '', 20.5, '98_OUTL_C_FILTER.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1592, 4, 'SPRSR5Q0011', 'F7 Filter', '', 30.5, '98_OUTL_C_FILTER.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1593, 4, 'SPRSR5Q0012', 'Electronic Mainboard Q025', '', 86.05, '73_OUTL_C_SPP_Mainboard.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1594, 4, 'SPRSR5Q0013', 'Bypass motor', '', 22.3, '91_OUTL_C_bypass.png', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1595, 4, 'SPRSR5Q0014', 'Temperature sensor Kit', '', 17.4, 'default_price.jpg', '2023-05-30 11:52:13', '2023-06-14 12:34:35', '2023-06-14 12:34:35', NULL);
INSERT INTO `prices` VALUES (1596, 11, 'FCLRC90HV01', 'Heat recovery unit CLRC 169 Horizontal', '', 7109.1, '207_324_H.png', '2023-05-30 13:42:07', '2023-05-30 13:42:07', NULL, 134);
INSERT INTO `prices` VALUES (1597, 11, 'FCLRC90HV02', 'Heat recovery unit CLRC 169 Vertical', '', 7109.1, '230_324_V.png', '2023-05-30 13:42:07', '2023-05-30 13:42:07', NULL, 134);
INSERT INTO `prices` VALUES (1598, 11, 'FCLRC90HV03', 'Heat recovery unit CLRC 329 Horizontal', '', 8416.3, '207_324_H.png', '2023-05-30 13:42:07', '2023-05-30 13:42:07', NULL, 133);
INSERT INTO `prices` VALUES (1599, 11, 'FCLRC90HV04', 'Heat recovery unit CLRC 329 Vertical', '', 8416.3, '230_324_V.png', '2023-05-30 13:42:07', '2023-05-30 13:42:07', NULL, 133);
INSERT INTO `prices` VALUES (1600, 10, 'EOSC38FXX03', '38 OSC A4 Unit Caf Cap ctrl', NULL, 1626.72, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 97);
INSERT INTO `prices` VALUES (1601, 10, 'EOSC38FPX03', '38 OSC A4 Unit Caf Cap ctrl PEHD', NULL, 1485.49, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 97);
INSERT INTO `prices` VALUES (1602, 10, 'EOSC38FXE03', '38 OSC A4 Unit Caf Cap ctrl  EHD', NULL, 1445.92, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 97);
INSERT INTO `prices` VALUES (1603, 10, 'EOSC38FPE03', '38 OSC A4 Unit Caf Cap ctrl PEHD EHD', NULL, 1346.36, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 97);
INSERT INTO `prices` VALUES (1604, 10, 'EOSC48FXX03', '48 OSC A4 Unit Caf Cap ctrl', NULL, 1675.24, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 98);
INSERT INTO `prices` VALUES (1605, 10, 'EOSC48FPX03', '48 OSC A4 Unit Caf Cap ctrl PEHD', NULL, 1578.38, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 98);
INSERT INTO `prices` VALUES (1606, 10, 'EOSC48FXE03', '48 OSC A4 Unit Caf Cap ctrl  EHD', NULL, 1541.43, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 98);
INSERT INTO `prices` VALUES (1607, 10, 'EOSC48FPE03', '48 OSC A4 Unit Caf Cap ctrl PEHD EHD', NULL, 1441.85, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 98);
INSERT INTO `prices` VALUES (1608, 10, 'EOSC68XXX01', '68 OSC A4 Unit', NULL, 1345.86, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1609, 10, 'EOSC68FXX01', '68 OSC A4 Unit Caf Cap ctrl', NULL, 1376.98, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1610, 10, 'EOSC68XPX01', '68 OSC A4 Unit PEHD', NULL, 1249.79, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1611, 10, 'EOSC68FPX01', '68 OSC A4 Unit Caf Cap ctrl PEHD', NULL, 1277.41, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1612, 10, 'EOSC68XXE01', '68 OSC A4 Unit EHD', NULL, 1349.38, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1613, 10, 'EOSC68FXE01', '68 OSC A4 Unit Caf Cap ctrl  EHD', NULL, 1196.18, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1614, 10, 'EOSC68XPE01', '68 OSC A4 Unit PEHD EHD', NULL, 1069.02, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1615, 10, 'EOSC68FPE01', '68 OSC A4 Unit Caf Cap ctrl PEHD EHD', NULL, 1096.62, '212_OSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 99);
INSERT INTO `prices` VALUES (1616, 10, 'ESSC38FPX02', '38 SSC B1 Unit Caf Cap ctrl PEHD', NULL, 1168.56, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 100);
INSERT INTO `prices` VALUES (1617, 10, 'ESSC38FXX02', '38 SSC B1 Unit Caf Cap ctrl', NULL, 1618.59, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 100);
INSERT INTO `prices` VALUES (1618, 10, 'ESSC38FXE02', '38 SSC B1 Unit Caf Cap ctrl  EHD', NULL, 1442.73, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 100);
INSERT INTO `prices` VALUES (1619, 10, 'ESSC38FPE02', '38 SSC B1 Unit Caf Cap ctrl PEHD EHD', NULL, 1521.73, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 100);
INSERT INTO `prices` VALUES (1620, 10, 'ESSC48FXX02', '48 SSC B1 Unit Caf Cap ctrl', NULL, 1711.48, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 101);
INSERT INTO `prices` VALUES (1621, 10, 'ESSC48FPX02', '48 SSC B1 Unit Caf Cap ctrl PEHD', NULL, 1614.63, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 101);
INSERT INTO `prices` VALUES (1622, 10, 'ESSC48FXE02', '48 SSC B1 Unit Caf Cap ctrl  EHD', NULL, 1535.61, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 101);
INSERT INTO `prices` VALUES (1623, 10, 'ESSC48FPE02', '48 SSC B1 Unit Caf Cap ctrl PEHD EHD', NULL, 1438.76, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 101);
INSERT INTO `prices` VALUES (1624, 10, 'ESSC68XXX02', '68 SSC B1 Unit', NULL, 1382.09, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1625, 10, 'ESSC68FPX02', '68 SSC B1 Unit Caf Cap ctrl PEHD', NULL, 1303.48, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1626, 10, 'ESSC68XPX02', '68 SSC B1 Unit  PEHD', NULL, 1282.52, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1627, 10, 'ESSC68FXX02', '68 SSC B1 Unit Caf Cap ctrl', NULL, 1403.05, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1628, 10, 'ESSC68FXE02', '68 SSC B1 Unit Caf Cap ctrl  EHD', NULL, 1222.24, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1629, 10, 'ESSC68XXE02', '68 SSC B1 Unit   EHD', NULL, 1201.31, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1630, 10, 'ESSC68FPE02', '68 SSC B1 Unit Caf Cap ctrl PEHD EHD', NULL, 1122.68, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1631, 10, 'ESSC68XPE02', '68 SSC B1 Unit  PEHD EHD', NULL, 1101.73, '217_SSC_8.png', '2023-05-30 13:49:47', '2023-06-28 16:14:10', '2023-06-28 16:14:10', 102);
INSERT INTO `prices` VALUES (1632, 10, NULL, NULL, NULL, 0, NULL, '2023-05-30 13:49:47', '2023-05-30 13:50:40', '2023-05-30 13:50:40', NULL);
INSERT INTO `prices` VALUES (1633, 10, NULL, NULL, NULL, 0, NULL, '2023-05-30 13:49:47', '2023-05-30 13:50:47', '2023-05-30 13:50:47', NULL);
INSERT INTO `prices` VALUES (1634, 10, NULL, NULL, NULL, 0, NULL, '2023-05-30 13:49:47', '2023-05-30 13:50:52', '2023-05-30 13:50:52', NULL);
INSERT INTO `prices` VALUES (1635, 10, NULL, NULL, NULL, 0, NULL, '2023-05-30 13:49:47', '2023-05-30 13:50:54', '2023-05-30 13:50:54', NULL);
INSERT INTO `prices` VALUES (1636, 12, 'FCLRC6OSC726', 'CLRC 726 OSC', NULL, 9664.9, NULL, '2023-06-01 16:08:39', '2023-06-01 16:11:42', '2023-06-01 16:11:42', 200);
INSERT INTO `prices` VALUES (1637, 12, 'FCLRC6OSC086', 'CLRC 086 OSC', '', 2939.99, '211_OSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 126);
INSERT INTO `prices` VALUES (1638, 12, 'FCLRC6SSC086', 'CLRC 086 SSC', '', 2939.99, '216_SSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 129);
INSERT INTO `prices` VALUES (1639, 12, 'FCLRC6OSC146', 'CLRC 146 OSC', '', 3353.01, '211_OSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 127);
INSERT INTO `prices` VALUES (1640, 12, 'FCLRC6SSC146', 'CLRC 146 SSC', '', 3353.01, '216_SSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 130);
INSERT INTO `prices` VALUES (1641, 12, 'FCLRC6OSC176', 'CLRC 176 OSC', '', 3632.47, '211_OSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 128);
INSERT INTO `prices` VALUES (1642, 12, 'FCLRC6SSC176', 'CLRC 176 SSC', '', 3632.47, '216_SSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 131);
INSERT INTO `prices` VALUES (1643, 12, 'FCLRC6OSC256', 'CLRC 256 OSC', '', 3872.24, '211_OSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 179);
INSERT INTO `prices` VALUES (1644, 12, 'FCLRC6SSC256', 'CLRC 256 SSC', '', 4672, '216_SSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 199);
INSERT INTO `prices` VALUES (1645, 12, 'FCLRC6OSC556', 'CLRC 556 OSC', '', 8786.3, '211_OSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 194);
INSERT INTO `prices` VALUES (1646, 12, 'FCLRC6OSC726', 'CLRC 726 OSC', '', 9664.9, '211_OSC_6.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 200);
INSERT INTO `prices` VALUES (1647, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', '', 11557.3, '1685089863.png', '2023-06-01 16:12:04', '2023-06-01 16:13:05', '2023-06-01 16:13:05', 195);
INSERT INTO `prices` VALUES (1648, 12, 'FCLRC6OSC086', 'CLRC 086 OSC', '', 2939.99, '211_OSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 126);
INSERT INTO `prices` VALUES (1649, 12, 'FCLRC6SSC086', 'CLRC 086 SSC', '', 2939.99, '216_SSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 129);
INSERT INTO `prices` VALUES (1650, 12, 'FCLRC6OSC146', 'CLRC 146 OSC', '', 3353.01, '211_OSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 127);
INSERT INTO `prices` VALUES (1651, 12, 'FCLRC6SSC146', 'CLRC 146 SSC', '', 3353.01, '216_SSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 130);
INSERT INTO `prices` VALUES (1652, 12, 'FCLRC6OSC176', 'CLRC 176 OSC', '', 3632.47, '211_OSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 128);
INSERT INTO `prices` VALUES (1653, 12, 'FCLRC6SSC176', 'CLRC 176 SSC', '', 3632.47, '216_SSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 131);
INSERT INTO `prices` VALUES (1654, 12, 'FCLRC6OSC256', 'CLRC 256 OSC', '', 3872.24, '211_OSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 179);
INSERT INTO `prices` VALUES (1655, 12, 'FCLRC6SSC256', 'CLRC 256 SSC', '', 4672, '216_SSC_6.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 199);
INSERT INTO `prices` VALUES (1656, 12, 'FCLRC6OSC556', 'CLRC 556 OSC', '', 8786.3, '1685089863.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 194);
INSERT INTO `prices` VALUES (1657, 12, 'FCLRC6OSC726', 'CLRC 726 OSC', '', 9664.9, '1685089863.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 200);
INSERT INTO `prices` VALUES (1658, 12, 'FCLRC6OSC1056', 'CLRC 1056 OSC', '', 11557.3, '1685089863.png', '2023-06-01 16:13:20', '2023-06-01 16:13:20', NULL, 195);
INSERT INTO `prices` VALUES (2187, 4, 'F025QXXXXX1 ', 'Quark 25', '', 605, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2188, 4, 'F025QXXXPX1 ', 'Quark 25 PCK', '', 608.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2189, 4, 'F025QXXXKX1 ', 'Quark 25 KHK', '', 612, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2190, 4, 'F025QXXXAX1 ', 'Quark 25 PCK KHK', '', 615.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2191, 4, 'F025QXXFXX1 ', 'Quark 25 FKI', '', 660, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2192, 4, 'F025QXXFPX1 ', 'Quark 25 FKI PCK', '', 663.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2193, 4, 'F025QXXFKX1 ', 'Quark 25 FKI KHK', '', 667, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2194, 4, 'F025QXXFAX1 ', 'Quark 25 FKI PCK KHK', '', 670.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2195, 4, 'F025QXTXXX1 ', 'Quark 25 KTP', '', 618, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2196, 4, 'F025QXTXPX1 ', 'Quark 25 KTP PCK', '', 621.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2197, 4, 'F025QXTXKX1 ', 'Quark 25 KTP KHK', '', 625, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2198, 4, 'F025QXTXAX1 ', 'Quark 25 KTP PCK KHK', '', 628.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2199, 4, 'F025QXTFXX1 ', 'Quark 25 KTP FKI', '', 673, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2200, 4, 'F025QXTFPX1 ', 'Quark 25 KTP FKI PCK', '', 676.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2201, 4, 'F025QXTFKX1 ', 'Quark 25 KTP FKI KHK', '', 680, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2202, 4, 'F025QXTFAX1 ', 'Quark 25 KTP FKI PCK KHK', '', 683.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2203, 4, 'F025QWXXXX1 ', 'Quark 25 WBM', '', 628, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2204, 4, 'F025QWXXPX1 ', 'Quark 25 WBM PCK', '', 631.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2205, 4, 'F025QWXXKX1 ', 'Quark 25 WBM KHK', '', 635, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2206, 4, 'F025QWXXAX1 ', 'Quark 25 WBM PCK KHK', '', 638.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2207, 4, 'F025QWXFXX1 ', 'Quark 25 WBM FKI', '', 683, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2208, 4, 'F025QWXFPX1 ', 'Quark 25 WBM FKI PCK', '', 686.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2209, 4, 'F025QWXFKX1 ', 'Quark 25 WBM FKI KHK', '', 690, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2210, 4, 'F025QWXFAX1 ', 'Quark 25 WBM FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2211, 4, 'F025QWTXXX1 ', 'Quark 25 WBM KTP', '', 641, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2212, 4, 'F025QWTXPX1 ', 'Quark 25 WBM KTP PCK', '', 644.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2213, 4, 'F025QWTXKX1 ', 'Quark 25 WBM KTP KHK', '', 648, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2214, 4, 'F025QWTXAX1 ', 'Quark 25 WBM KTP PCK KHK', '', 651.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2215, 4, 'F025QWTFXX1 ', 'Quark 25 WBM KTP FKI', '', 683, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2216, 4, 'F025QWTFPX1 ', 'Quark 25 WBM KTP FKI PCK', '', 686.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2217, 4, 'F025QWTFKX1 ', 'Quark 25 WBM KTP FKI KHK', '', 690, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2218, 4, 'F025QWTFAX1 ', 'Quark 25 WBM KTP FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2219, 4, 'F025QBXXXX1 ', 'Quark 25 WBB', '', 630, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2220, 4, 'F025QBXXPX1 ', 'Quark 25 WBB PCK', '', 633.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2221, 4, 'F025QBXXKX1 ', 'Quark 25 WBB KHK', '', 637, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2222, 4, 'F025QBXXAX1 ', 'Quark 25 WBB PCK KHK', '', 640.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2223, 4, 'F025QBXFXX1 ', 'Quark 25 WBB FKI', '', 685, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2224, 4, 'F025QBXFPX1 ', 'Quark 25 WBB FKI PCK', '', 688.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2225, 4, 'F025QBXFKX1 ', 'Quark 25 WBB FKI KHK', '', 692, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2226, 4, 'F025QBXFAX1 ', 'Quark 25 WBB FKI PCK KHK', '', 695.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2227, 4, 'F025QBTXXX1 ', 'Quark 25 WBB KTP', '', 643, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2228, 4, 'F025QBTXPX1 ', 'Quark 25 WBB KTP PCK', '', 646.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2229, 4, 'F025QBTXKX1 ', 'Quark 25 WBB KTP KHK', '', 650, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2230, 4, 'F025QBTXAX1 ', 'Quark 25 WBB KTP PCK KHK', '', 653.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2231, 4, 'F025QBTFXX1 ', 'Quark 25 WBB KTP FKI', '', 698, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2232, 4, 'F025QBTFPX1 ', 'Quark 25 WBB KTP FKI PCK', '', 701.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2233, 4, 'F025QBTFKX1 ', 'Quark 25 WBB KTP FKI KHK', '', 705, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2234, 4, 'F025QBTFAX1 ', 'Quark 25 WBB KTP FKI PCK KHK', '', 708.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2235, 4, 'SPRSR5Q0001 ', 'Fire alarm kit (FKI)', '', 70.5, '361_IC_FKI.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2236, 4, 'SPRSR5Q0002 ', 'Kitchen hood kit (KHK)', '', 17.7, '76_OUTL_C_SPP_RJcable.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2237, 4, 'SPRSR5Q0003 ', 'Power cable kit 1.5m (PCK)', '', 13.9, '54_OUTL_C_powercable.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2238, 4, 'SPRSR5Q0004 ', 'Capacitive touch control panel (KTP)', '', 24.3, '251_OUTL_C_kts2.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2239, 4, 'SPRSR5Q0005 ', 'WiFi and Bluetooth module (WBM)', '', 35.3, '360_IC_WBM.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2240, 4, 'SPRSR5Q0006 ', 'WiFi and Bluetooth booster antenna (WBB)', '', 37.5, '360_IC_WBM.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2241, 4, 'SPRSR5Q0007 ', 'RJ45 port multiplier (HUB)', '', 16.6, 'default_price.jpg', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2242, 4, 'SPRSR5Q0008 ', 'Fan Q025', '', 56.8, '70_OUTL_C_SPP_fan_quantum.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2243, 4, 'SPRSR5Q0009 ', 'Heat Exchanger Q025', '', 110.1, '72_OUTL_C_SPP_Heat_exch_alu.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2244, 4, 'SPRSR5Q0010 ', 'G4 Filter', '', 20.5, '98_OUTL_C_FILTER.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2245, 4, 'SPRSR5Q0011 ', 'F7 Filter', '', 30.5, '98_OUTL_C_FILTER.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2246, 4, 'SPRSR5Q0012 ', 'Electronic Mainboard Q025', '', 86.05, '73_OUTL_C_SPP_Mainboard.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2247, 4, 'SPRSR5Q0013 ', 'Bypass motor', '', 22.3, '91_OUTL_C_bypass.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2248, 4, 'SPRSR5Q0014 ', 'Temperature sensor Kit', '', 17.4, 'default_price.jpg', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', NULL);
INSERT INTO `prices` VALUES (2249, 4, 'F035QXXXXX1', 'Quark 35', NULL, 612, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2250, 4, 'F035QXXXPX1', 'Quark 35 PCK', NULL, 615.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2251, 4, 'F035QXXXKX1', 'Quark 35 KHK', NULL, 619, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2252, 4, 'F035QXXXAX1', 'Quark 35 PCK KHK', NULL, 622.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2253, 4, 'F035QXXFXX1', 'Quark 35 FKI', NULL, 667, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2254, 4, 'F035QXXFPX1', 'Quark 35 FKI PCK', NULL, 670.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2255, 4, 'F035QXXFKX1', 'Quark 35 FKI KHK', NULL, 674, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2256, 4, 'F035QXXFAX1', 'Quark 35 FKI PCK KHK', NULL, 677.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2257, 4, 'F035QXTXXX1', 'Quark 35 KTP', NULL, 619, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2258, 4, 'F035QXTXPX1', 'Quark 35 KTP PCK', NULL, 622.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2259, 4, 'F035QXTXKX1', 'Quark 35 KTP KHK', NULL, 626, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2260, 4, 'F035QXTXAX1', 'Quark 35 KTP PCK KHK', NULL, 629.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2261, 4, 'F035QXTFXX1', 'Quark 35 KTP FKI', NULL, 674, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2262, 4, 'F035QXTFPX1', 'Quark 35 KTP FKI PCK', NULL, 677.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2263, 4, 'F035QXTFKX1', 'Quark 35 KTP FKI KHK', NULL, 681, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2264, 4, 'F035QXTFAX1', 'Quark 35 KTP FKI PCK KHK', NULL, 684.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2265, 4, 'F035QWXXXX1', 'Quark 35 WBM', NULL, 638, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2266, 4, 'F035QWXXPX1', 'Quark 35 WBM PCK', NULL, 641.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2267, 4, 'F035QWXXKX1', 'Quark 35 WBM KHK', NULL, 645, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2268, 4, 'F035QWXXAX1', 'Quark 35 WBM PCK KHK', NULL, 648.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2269, 4, 'F035QWXFXX1', 'Quark 35 WBM FKI', NULL, 693, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2270, 4, 'F035QWXFPX1', 'Quark 35 WBM FKI PCK', NULL, 696.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2271, 4, 'F035QWXFKX1', 'Quark 35 WBM FKI KHK', NULL, 700, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2272, 4, 'F035QWXFAX1', 'Quark 35 WBM FKI PCK KHK', NULL, 703.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2273, 4, 'F035QWTXXX1', 'Quark 35 WBM KTP', NULL, 645, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2274, 4, 'F035QWTXPX1', 'Quark 35 WBM KTP PCK', NULL, 648.5, 'quark_ssc.png', '2023-06-16 11:12:14', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2275, 4, 'F035QWTXKX1', 'Quark 35 WBM KTP KHK', NULL, 652, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2276, 4, 'F035QWTXAX1', 'Quark 35 WBM KTP PCK KHK', NULL, 655.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2277, 4, 'F035QWTFXX1', 'Quark 35 WBM KTP FKI', NULL, 700, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2278, 4, 'F035QWTFPX1', 'Quark 35 WBM KTP FKI PCK', NULL, 703.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2279, 4, 'F035QWTFKX1', 'Quark 35 WBM KTP FKI KHK', NULL, 707, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2280, 4, 'F035QWTFAX1', 'Quark 35 WBM KTP FKI PCK KHK', NULL, 710.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2281, 4, 'F035QBXXXX1', 'Quark 35 WBB', NULL, 640, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2282, 4, 'F035QBXXPX1', 'Quark 35 WBB PCK', NULL, 643.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2283, 4, 'F035QBXXKX1', 'Quark 35 WBB KHK', NULL, 647, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2284, 4, 'F035QBXXAX1', 'Quark 35 WBB PCK KHK', NULL, 650.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2285, 4, 'F035QBXFXX1', 'Quark 35 WBB FKI', NULL, 695, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2286, 4, 'F035QBXFPX1', 'Quark 35 WBB FKI PCK', NULL, 698.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2287, 4, 'F035QBXFKX1', 'Quark 35 WBB FKI KHK', NULL, 702, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2288, 4, 'F035QBXFAX1', 'Quark 35 WBB FKI PCK KHK', NULL, 705.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2289, 4, 'F035QBTXXX1', 'Quark 35 WBB KTP', NULL, 650, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2290, 4, 'F035QBTXPX1', 'Quark 35 WBB KTP PCK', NULL, 653.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2291, 4, 'F035QBTXKX1', 'Quark 35 WBB KTP KHK', NULL, 657, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2292, 4, 'F035QBTXAX1', 'Quark 35 WBB KTP PCK KHK', NULL, 660.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2293, 4, 'F035QBTFXX1', 'Quark 35 WBB KTP FKI', NULL, 705, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2294, 4, 'F035QBTFPX1', 'Quark 35 WBB KTP FKI PCK', NULL, 708.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2295, 4, 'F035QBTFKX1', 'Quark 35 WBB KTP FKI KHK', NULL, 712, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2296, 4, 'F035QBTFAX1', 'Quark 35 WBB KTP FKI PCK KHK', NULL, 715.5, 'quark_ssc.png', '2023-06-16 11:12:15', '2023-06-16 11:14:07', '2023-06-16 11:14:07', 196);
INSERT INTO `prices` VALUES (2297, 4, 'F025QXXXXX1 ', 'Quark 25', '', 605, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2298, 4, 'F025QXXXPX1 ', 'Quark 25 PCK', '', 608.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2299, 4, 'F025QXXXKX1 ', 'Quark 25 KHK', '', 612, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2300, 4, 'F025QXXXAX1 ', 'Quark 25 PCK KHK', '', 615.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2301, 4, 'F025QXXFXX1 ', 'Quark 25 FKI', '', 660, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2302, 4, 'F025QXXFPX1 ', 'Quark 25 FKI PCK', '', 663.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2303, 4, 'F025QXXFKX1 ', 'Quark 25 FKI KHK', '', 667, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2304, 4, 'F025QXXFAX1 ', 'Quark 25 FKI PCK KHK', '', 670.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2305, 4, 'F025QXTXXX1 ', 'Quark 25 KTP', '', 618, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2306, 4, 'F025QXTXPX1 ', 'Quark 25 KTP PCK', '', 621.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2307, 4, 'F025QXTXKX1 ', 'Quark 25 KTP KHK', '', 625, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2308, 4, 'F025QXTXAX1 ', 'Quark 25 KTP PCK KHK', '', 628.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2309, 4, 'F025QXTFXX1 ', 'Quark 25 KTP FKI', '', 673, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2310, 4, 'F025QXTFPX1 ', 'Quark 25 KTP FKI PCK', '', 676.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2311, 4, 'F025QXTFKX1 ', 'Quark 25 KTP FKI KHK', '', 680, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2312, 4, 'F025QXTFAX1 ', 'Quark 25 KTP FKI PCK KHK', '', 683.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2313, 4, 'F025QWXXXX1 ', 'Quark 25 WBM', '', 628, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2314, 4, 'F025QWXXPX1 ', 'Quark 25 WBM PCK', '', 631.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2315, 4, 'F025QWXXKX1 ', 'Quark 25 WBM KHK', '', 635, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2316, 4, 'F025QWXXAX1 ', 'Quark 25 WBM PCK KHK', '', 638.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2317, 4, 'F025QWXFXX1 ', 'Quark 25 WBM FKI', '', 683, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2318, 4, 'F025QWXFPX1 ', 'Quark 25 WBM FKI PCK', '', 686.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2319, 4, 'F025QWXFKX1 ', 'Quark 25 WBM FKI KHK', '', 690, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2320, 4, 'F025QWXFAX1 ', 'Quark 25 WBM FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2321, 4, 'F025QWTXXX1 ', 'Quark 25 WBM KTP', '', 641, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2322, 4, 'F025QWTXPX1 ', 'Quark 25 WBM KTP PCK', '', 644.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2323, 4, 'F025QWTXKX1 ', 'Quark 25 WBM KTP KHK', '', 648, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2324, 4, 'F025QWTXAX1 ', 'Quark 25 WBM KTP PCK KHK', '', 651.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2325, 4, 'F025QWTFXX1 ', 'Quark 25 WBM KTP FKI', '', 683, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2326, 4, 'F025QWTFPX1 ', 'Quark 25 WBM KTP FKI PCK', '', 686.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2327, 4, 'F025QWTFKX1 ', 'Quark 25 WBM KTP FKI KHK', '', 690, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2328, 4, 'F025QWTFAX1 ', 'Quark 25 WBM KTP FKI PCK KHK', '', 693.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2329, 4, 'F025QBXXXX1 ', 'Quark 25 WBB', '', 630, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2330, 4, 'F025QBXXPX1 ', 'Quark 25 WBB PCK', '', 633.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2331, 4, 'F025QBXXKX1 ', 'Quark 25 WBB KHK', '', 637, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2332, 4, 'F025QBXXAX1 ', 'Quark 25 WBB PCK KHK', '', 640.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2333, 4, 'F025QBXFXX1 ', 'Quark 25 WBB FKI', '', 685, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2334, 4, 'F025QBXFPX1 ', 'Quark 25 WBB FKI PCK', '', 688.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2335, 4, 'F025QBXFKX1 ', 'Quark 25 WBB FKI KHK', '', 692, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2336, 4, 'F025QBXFAX1 ', 'Quark 25 WBB FKI PCK KHK', '', 695.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2337, 4, 'F025QBTXXX1 ', 'Quark 25 WBB KTP', '', 643, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2338, 4, 'F025QBTXPX1 ', 'Quark 25 WBB KTP PCK', '', 646.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2339, 4, 'F025QBTXKX1 ', 'Quark 25 WBB KTP KHK', '', 650, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2340, 4, 'F025QBTXAX1 ', 'Quark 25 WBB KTP PCK KHK', '', 653.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2341, 4, 'F025QBTFXX1 ', 'Quark 25 WBB KTP FKI', '', 698, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2342, 4, 'F025QBTFPX1 ', 'Quark 25 WBB KTP FKI PCK', '', 701.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2343, 4, 'F025QBTFKX1 ', 'Quark 25 WBB KTP FKI KHK', '', 705, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2344, 4, 'F025QBTFAX1 ', 'Quark 25 WBB KTP FKI PCK KHK', '', 708.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 196);
INSERT INTO `prices` VALUES (2345, 4, 'SPRSR5Q0001 ', 'Fire alarm kit (FKI)', '', 70.5, '361_IC_FKI.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2346, 4, 'SPRSR5Q0002 ', 'Kitchen hood kit (KHK)', '', 17.7, '76_OUTL_C_SPP_RJcable.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2347, 4, 'SPRSR5Q0003 ', 'Power cable kit 1.5m (PCK)', '', 13.9, '54_OUTL_C_powercable.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2348, 4, 'SPRSR5Q0004 ', 'Capacitive touch control panel (KTP)', '', 24.3, '251_OUTL_C_kts2.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2349, 4, 'SPRSR5Q0005 ', 'WiFi and Bluetooth module (WBM)', '', 35.3, '360_IC_WBM.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2350, 4, 'SPRSR5Q0006 ', 'WiFi and Bluetooth booster antenna (WBB)', '', 37.5, '360_IC_WBM.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2351, 4, 'SPRSR5Q0007 ', 'RJ45 port multiplier (HUB)', '', 16.6, 'default_price.jpg', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2352, 4, 'SPRSR5Q0008 ', 'Fan Q025', '', 56.8, '70_OUTL_C_SPP_fan_quantum.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2353, 4, 'SPRSR5Q0009 ', 'Heat Exchanger Q025', '', 110.1, '72_OUTL_C_SPP_Heat_exch_alu.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2354, 4, 'SPRSR5Q0010 ', 'G4 Filter', '', 20.5, '98_OUTL_C_FILTER.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2355, 4, 'SPRSR5Q0011 ', 'F7 Filter', '', 30.5, '98_OUTL_C_FILTER.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2356, 4, 'SPRSR5Q0012 ', 'Electronic Mainboard Q025', '', 86.05, '73_OUTL_C_SPP_Mainboard.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2357, 4, 'SPRSR5Q0013 ', 'Bypass motor', '', 22.3, '91_OUTL_C_bypass.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2358, 4, 'SPRSR5Q0014 ', 'Temperature sensor Kit', '', 17.4, 'default_price.jpg', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, NULL);
INSERT INTO `prices` VALUES (2359, 4, 'F035QXXXXX1 ', 'Quark 35', '', 612, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2360, 4, 'F035QXXXPX1 ', 'Quark 35 PCK', '', 615.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2361, 4, 'F035QXXXKX1 ', 'Quark 35 KHK', '', 619, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2362, 4, 'F035QXXXAX1 ', 'Quark 35 PCK KHK', '', 622.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2363, 4, 'F035QXXFXX1 ', 'Quark 35 FKI', '', 667, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2364, 4, 'F035QXXFPX1 ', 'Quark 35 FKI PCK', '', 670.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2365, 4, 'F035QXXFKX1 ', 'Quark 35 FKI KHK', '', 674, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2366, 4, 'F035QXXFAX1 ', 'Quark 35 FKI PCK KHK', '', 677.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2367, 4, 'F035QXTXXX1 ', 'Quark 35 KTP', '', 619, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2368, 4, 'F035QXTXPX1 ', 'Quark 35 KTP PCK', '', 622.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2369, 4, 'F035QXTXKX1 ', 'Quark 35 KTP KHK', '', 626, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2370, 4, 'F035QXTXAX1 ', 'Quark 35 KTP PCK KHK', '', 629.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2371, 4, 'F035QXTFXX1 ', 'Quark 35 KTP FKI', '', 674, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2372, 4, 'F035QXTFPX1 ', 'Quark 35 KTP FKI PCK', '', 677.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2373, 4, 'F035QXTFKX1 ', 'Quark 35 KTP FKI KHK', '', 681, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2374, 4, 'F035QXTFAX1 ', 'Quark 35 KTP FKI PCK KHK', '', 684.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2375, 4, 'F035QWXXXX1 ', 'Quark 35 WBM', '', 638, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2376, 4, 'F035QWXXPX1 ', 'Quark 35 WBM PCK', '', 641.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2377, 4, 'F035QWXXKX1 ', 'Quark 35 WBM KHK', '', 645, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2378, 4, 'F035QWXXAX1 ', 'Quark 35 WBM PCK KHK', '', 648.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2379, 4, 'F035QWXFXX1 ', 'Quark 35 WBM FKI', '', 693, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2380, 4, 'F035QWXFPX1 ', 'Quark 35 WBM FKI PCK', '', 696.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2381, 4, 'F035QWXFKX1 ', 'Quark 35 WBM FKI KHK', '', 700, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2382, 4, 'F035QWXFAX1 ', 'Quark 35 WBM FKI PCK KHK', '', 703.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2383, 4, 'F035QWTXXX1 ', 'Quark 35 WBM KTP', '', 645, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2384, 4, 'F035QWTXPX1 ', 'Quark 35 WBM KTP PCK', '', 648.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2385, 4, 'F035QWTXKX1 ', 'Quark 35 WBM KTP KHK', '', 652, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2386, 4, 'F035QWTXAX1 ', 'Quark 35 WBM KTP PCK KHK', '', 655.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2387, 4, 'F035QWTFXX1 ', 'Quark 35 WBM KTP FKI', '', 700, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2388, 4, 'F035QWTFPX1 ', 'Quark 35 WBM KTP FKI PCK', '', 703.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2389, 4, 'F035QWTFKX1 ', 'Quark 35 WBM KTP FKI KHK', '', 707, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2390, 4, 'F035QWTFAX1 ', 'Quark 35 WBM KTP FKI PCK KHK', '', 710.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2391, 4, 'F035QBXXXX1 ', 'Quark 35 WBB', '', 640, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2392, 4, 'F035QBXXPX1 ', 'Quark 35 WBB PCK', '', 643.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2393, 4, 'F035QBXXKX1 ', 'Quark 35 WBB KHK', '', 647, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2394, 4, 'F035QBXXAX1 ', 'Quark 35 WBB PCK KHK', '', 650.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2395, 4, 'F035QBXFXX1 ', 'Quark 35 WBB FKI', '', 695, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2396, 4, 'F035QBXFPX1 ', 'Quark 35 WBB FKI PCK', '', 698.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2397, 4, 'F035QBXFKX1 ', 'Quark 35 WBB FKI KHK', '', 702, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2398, 4, 'F035QBXFAX1 ', 'Quark 35 WBB FKI PCK KHK', '', 705.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2399, 4, 'F035QBTXXX1 ', 'Quark 35 WBB KTP', '', 650, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2400, 4, 'F035QBTXPX1 ', 'Quark 35 WBB KTP PCK', '', 653.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2401, 4, 'F035QBTXKX1 ', 'Quark 35 WBB KTP KHK', '', 657, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2402, 4, 'F035QBTXAX1 ', 'Quark 35 WBB KTP PCK KHK', '', 660.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2403, 4, 'F035QBTFXX1 ', 'Quark 35 WBB KTP FKI', '', 705, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2404, 4, 'F035QBTFPX1 ', 'Quark 35 WBB KTP FKI PCK', '', 708.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2405, 4, 'F035QBTFKX1 ', 'Quark 35 WBB KTP FKI KHK', '', 712, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2406, 4, 'F035QBTFAX1 ', 'Quark 35 WBB KTP FKI PCK KHK', '', 715.5, 'quark_ssc.png', '2023-06-16 11:14:17', '2023-06-16 11:14:17', NULL, 197);
INSERT INTO `prices` VALUES (2407, 15, 'FCLRCAOSC061 ', 'CLRC 06A OSC', '', 1422.4, NULL, '2023-06-27 15:02:44', '2023-06-27 15:04:15', '2023-06-27 15:04:15', NULL);
INSERT INTO `prices` VALUES (2408, 15, 'FCLRCAOSC091', 'CLRC 09A OSC', '', 1774.7, NULL, '2023-06-27 15:02:44', '2023-06-27 15:04:15', '2023-06-27 15:04:15', NULL);
INSERT INTO `prices` VALUES (2409, 15, 'FCLRCAOSC131', 'CLRC 13A OSC', '', 2214.3, NULL, '2023-06-27 15:02:44', '2023-06-27 15:04:15', '2023-06-27 15:04:15', NULL);
INSERT INTO `prices` VALUES (2410, 15, 'FCLRCAOSC181', 'CLRC 18A OSC', '', 2386.6, NULL, '2023-06-27 15:02:44', '2023-06-27 15:04:15', '2023-06-27 15:04:15', NULL);
INSERT INTO `prices` VALUES (2411, 15, 'FCLRCAOSC251', 'CLRC 25A OSC', '', 3124.7, NULL, '2023-06-27 15:02:44', '2023-06-27 15:04:15', '2023-06-27 15:04:15', NULL);
INSERT INTO `prices` VALUES (2412, 15, 'FCLRCAOSC061', 'CLRC 06A OSC', 'SLIMtech', 1422.4, '196_OSC3_H_2.png', '2023-06-27 15:04:32', '2023-06-29 18:09:27', NULL, NULL);
INSERT INTO `prices` VALUES (2413, 15, 'FCLRCAOSC091', 'CLRC 09A OSC', 'SLIMtech', 1774.7, '196_OSC3_H_2.png', '2023-06-27 15:04:32', '2023-06-29 18:10:02', NULL, NULL);
INSERT INTO `prices` VALUES (2414, 15, 'FCLRCAOSC131', 'CLRC 13A OSC', 'SLIMtech', 2214.3, '196_OSC3_H_2.png', '2023-06-27 15:04:32', '2023-06-29 18:10:27', NULL, NULL);
INSERT INTO `prices` VALUES (2415, 15, 'FCLRCAOSC181', 'CLRC 18A OSC', 'SLIMtech', 2386.6, '196_OSC3_H_2.png', '2023-06-27 15:04:32', '2023-06-29 18:11:06', NULL, NULL);
INSERT INTO `prices` VALUES (2416, 15, 'FCLRCAOSC251', 'CLRC 25A OSC', 'SLIMtech', 3124.7, '196_OSC3_H_2.png', '2023-06-27 15:04:32', '2023-06-29 18:11:26', NULL, NULL);
INSERT INTO `prices` VALUES (2417, 10, 'EOSC38FXX03 ', '38 OSC A4 Unit Caf Cap ctrl', '', 1226.23, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 97);
INSERT INTO `prices` VALUES (2418, 10, 'EOSC38FPX03 ', '38 OSC A4 Unit Caf Cap ctrl PEHD', '', 1250.83, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 97);
INSERT INTO `prices` VALUES (2419, 10, 'EOSC38FXE03 ', '38 OSC A4 Unit Caf Cap ctrl  EHD', '', 1359.82, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 97);
INSERT INTO `prices` VALUES (2420, 10, 'EOSC38FPE03 ', '38 OSC A4 Unit Caf Cap ctrl PEHD EHD', '', 1384.42, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 97);
INSERT INTO `prices` VALUES (2421, 10, 'EOSC48FXX03 ', '48 OSC A4 Unit Caf Cap ctrl', '', 1299.8, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 98);
INSERT INTO `prices` VALUES (2422, 10, 'EOSC48FPX03 ', '48 OSC A4 Unit Caf Cap ctrl PEHD', '', 1325.88, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 98);
INSERT INTO `prices` VALUES (2423, 10, 'EOSC48FXE03 ', '48 OSC A4 Unit Caf Cap ctrl  EHD', '', 1441.41, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 98);
INSERT INTO `prices` VALUES (2424, 10, 'EOSC48FPE03 ', '48 OSC A4 Unit Caf Cap ctrl PEHD EHD', '', 1467.49, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 98);
INSERT INTO `prices` VALUES (2425, 10, 'EOSC68XXX01 ', '68 OSC A4 Unit', '', 1258.83, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2426, 10, 'EOSC68FXX01 ', '68 OSC A4 Unit Caf Cap ctrl', '', 1352.5, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2427, 10, 'EOSC68XPX01 ', '68 OSC A4 Unit PEHD', '', 1283.43, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2428, 10, 'EOSC68FPX01 ', '68 OSC A4 Unit Caf Cap ctrl PEHD', '', 1377.1, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2429, 10, 'EOSC68XXE01 ', '68 OSC A4 Unit EHD', '', 1396.73, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2430, 10, 'EOSC68FXE01 ', '68 OSC A4 Unit Caf Cap ctrl  EHD', '', 1490.4, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2431, 10, 'EOSC68XPE01 ', '68 OSC A4 Unit PEHD EHD', '', 1421.32, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2432, 10, 'EOSC68FPE01 ', '68 OSC A4 Unit Caf Cap ctrl PEHD EHD', '', 1514.97, '212_OSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 99);
INSERT INTO `prices` VALUES (2433, 10, 'ESSC38FPX02 ', '38 SSC B1 Unit Caf Cap ctrl PEHD', '', 1297.49, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 100);
INSERT INTO `prices` VALUES (2434, 10, 'ESSC38FXX02 ', '38 SSC B1 Unit Caf Cap ctrl', '', 1272.89, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 100);
INSERT INTO `prices` VALUES (2435, 10, 'ESSC38FXE02 ', '38 SSC B1 Unit Caf Cap ctrl  EHD', '', 1406.48, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 100);
INSERT INTO `prices` VALUES (2436, 10, 'ESSC38FPE02 ', '38 SSC B1 Unit Caf Cap ctrl PEHD EHD', '', 1431.08, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 100);
INSERT INTO `prices` VALUES (2437, 10, 'ESSC48FXX02 ', '48 SSC B1 Unit Caf Cap ctrl', '', 1362.58, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 101);
INSERT INTO `prices` VALUES (2438, 10, 'ESSC48FPX02 ', '48 SSC B1 Unit Caf Cap ctrl PEHD', '', 1388.42, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 101);
INSERT INTO `prices` VALUES (2439, 10, 'ESSC48FXE02 ', '48 SSC B1 Unit Caf Cap ctrl  EHD', '', 1502.85, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 101);
INSERT INTO `prices` VALUES (2440, 10, 'ESSC48FPE02 ', '48 SSC B1 Unit Caf Cap ctrl PEHD EHD', '', 1528.68, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 101);
INSERT INTO `prices` VALUES (2441, 10, 'ESSC68XXX02 ', '68 SSC B1 Unit', '', 1311.77, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2442, 10, 'ESSC68FPX02 ', '68 SSC B1 Unit Caf Cap ctrl PEHD', '', 1430.04, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2443, 10, 'ESSC68XPX02 ', '68 SSC B1 Unit  PEHD', '', 1336.37, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2444, 10, 'ESSC68FXX02 ', '68 SSC B1 Unit Caf Cap ctrl', '', 1405.44, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2445, 10, 'ESSC68FXE02 ', '68 SSC B1 Unit Caf Cap ctrl  EHD', '', 1543.34, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2446, 10, 'ESSC68XXE02 ', '68 SSC B1 Unit   EHD', '', 1449.67, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2447, 10, 'ESSC68FPE02 ', '68 SSC B1 Unit Caf Cap ctrl PEHD EHD', '', 1567.93, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2448, 10, 'ESSC68XPE02 ', '68 SSC B1 Unit  PEHD EHD', '', 1474.26, '217_SSC_8.png', '2023-06-28 16:15:16', '2023-06-28 16:15:16', NULL, 102);
INSERT INTO `prices` VALUES (2449, 16, 'EOSC38FPE03', '38 OSC A4 Unit Caf Cap ctrl PEHD EHD', NULL, 1382.09, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 97);
INSERT INTO `prices` VALUES (2450, 16, 'EOSC38FPX03', '38 OSC A4 Unit Caf Cap ctrl PEHD', NULL, 1201.31, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 97);
INSERT INTO `prices` VALUES (2451, 16, 'EOSC38FXE03', '38 OSC A4 Unit Caf Cap ctrl  EHD', NULL, 1282.52, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 97);
INSERT INTO `prices` VALUES (2452, 16, 'EOSC38FXX03', '38 OSC A4 Unit Caf Cap ctrl', NULL, 1101.73, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 97);
INSERT INTO `prices` VALUES (2453, 16, 'EOSC48FPE03', '48 OSC A4 Unit Caf Cap ctrl PEHD EHD', NULL, 1403.05, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 98);
INSERT INTO `prices` VALUES (2454, 16, 'EOSC48FPX03', '48 OSC A4 Unit Caf Cap ctrl PEHD', NULL, 1222.24, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 98);
INSERT INTO `prices` VALUES (2455, 16, 'EOSC48FXE03', '48 OSC A4 Unit Caf Cap ctrl  EHD', NULL, 1303.48, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 98);
INSERT INTO `prices` VALUES (2456, 16, 'EOSC48FXX03', '48 OSC A4 Unit Caf Cap ctrl', NULL, 1122.68, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 98);
INSERT INTO `prices` VALUES (2457, 16, 'EOSC68FPE01', '68 OSC A4 Unit Caf Cap ctrl PEHD EHD', NULL, 1711.48, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2458, 16, 'EOSC68FPX01', '68 OSC A4 Unit Caf Cap ctrl PEHD', NULL, 1535.61, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2459, 16, 'EOSC68FXE01', '68 OSC A4 Unit Caf Cap ctrl  EHD', NULL, 1614.63, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2460, 16, 'EOSC68FXX01', '68 OSC A4 Unit Caf Cap ctrl', NULL, 1438.76, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2461, 16, 'EOSC68XPE01', '68 OSC A4 Unit PEHD EHD', NULL, 1618.59, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2462, 16, 'EOSC68XPX01', '68 OSC A4 Unit PEHD', NULL, 1442.73, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2463, 16, 'EOSC68XXE01', '68 OSC A4 Unit EHD', NULL, 1521.73, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2464, 16, 'EOSC68XXX01', '68 OSC A4 Unit', NULL, 1345.86, '212_OSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 99);
INSERT INTO `prices` VALUES (2465, 16, 'ESSC38FPE02', '38 SSC B1 Unit Caf Cap ctrl PEHD EHD', NULL, 1349.38, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 100);
INSERT INTO `prices` VALUES (2466, 16, 'ESSC38FPX02', '38 SSC B1 Unit Caf Cap ctrl PEHD', NULL, 1168.58, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 100);
INSERT INTO `prices` VALUES (2467, 16, 'ESSC38FXE02', '38 SSC B1 Unit Caf Cap ctrl  EHD', NULL, 1249.79, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 100);
INSERT INTO `prices` VALUES (2468, 16, 'ESSC38FXX02', '38 SSC B1 Unit Caf Cap ctrl', NULL, 1069.02, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 100);
INSERT INTO `prices` VALUES (2469, 16, 'ESSC48FPE02', '48 SSC B1 Unit Caf Cap ctrl PEHD EHD', NULL, 1376.98, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 101);
INSERT INTO `prices` VALUES (2470, 16, 'ESSC48FPX02', '48 SSC B1 Unit Caf Cap ctrl PEHD', NULL, 1196.18, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 101);
INSERT INTO `prices` VALUES (2471, 16, 'ESSC48FXE02', '48 SSC B1 Unit Caf Cap ctrl  EHD', NULL, 1277.41, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 101);
INSERT INTO `prices` VALUES (2472, 16, 'ESSC48FXX02', '48 SSC B1 Unit Caf Cap ctrl', NULL, 1096.62, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 101);
INSERT INTO `prices` VALUES (2473, 16, 'ESSC68FPE02', '68 SSC B1 Unit Caf Cap ctrl PEHD EHD', NULL, 1675.24, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);
INSERT INTO `prices` VALUES (2474, 16, 'ESSC68FPX02', '68 SSC B1 Unit Caf Cap ctrl PEHD', NULL, 1541.43, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);
INSERT INTO `prices` VALUES (2475, 16, 'ESSC68FXE02', '68 SSC B1 Unit Caf Cap ctrl  EHD', NULL, 1578.38, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);
INSERT INTO `prices` VALUES (2476, 16, 'ESSC68FXX02', '68 SSC B1 Unit Caf Cap ctrl', NULL, 1485.49, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);
INSERT INTO `prices` VALUES (2477, 16, 'ESSC68XPE02', '68 SSC B1 Unit  PEHD EHD', NULL, 1626.72, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);
INSERT INTO `prices` VALUES (2478, 16, 'ESSC68XPX02', '68 SSC B1 Unit  PEHD', NULL, 1445.92, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);
INSERT INTO `prices` VALUES (2479, 16, 'ESSC68XXE02', '68 SSC B1 Unit   EHD', NULL, 1485.49, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);
INSERT INTO `prices` VALUES (2480, 16, 'ESSC68XXX02', '68 SSC B1 Unit', NULL, 1346.36, '217_SSC_8.png', '2023-06-28 16:27:32', '2023-06-28 16:27:32', NULL, 102);

-- ----------------------------
-- Table structure for pricetypes
-- ----------------------------
DROP TABLE IF EXISTS `pricetypes`;
CREATE TABLE `pricetypes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pricetypes
-- ----------------------------
INSERT INTO `pricetypes` VALUES (1, 'Flexi 3', '2023-01-06 01:12:05', '2023-05-17 17:36:06', NULL);
INSERT INTO `pricetypes` VALUES (2, 'Cake', '2023-01-06 01:18:11', '2023-01-06 01:18:36', '2023-01-06 01:18:36');
INSERT INTO `pricetypes` VALUES (3, 'Quantum 5', '2023-01-06 01:18:42', '2023-05-17 17:36:44', NULL);
INSERT INTO `pricetypes` VALUES (4, 'Quark 5', '2023-01-06 02:07:06', '2023-05-17 17:38:59', NULL);
INSERT INTO `pricetypes` VALUES (5, 'sss', '2023-01-06 02:07:52', '2023-01-06 02:08:11', '2023-01-06 02:08:11');
INSERT INTO `pricetypes` VALUES (6, 'Simply Genius 7', '2023-01-06 04:28:19', '2023-05-17 17:47:54', NULL);
INSERT INTO `pricetypes` VALUES (7, 'Tree', '2023-01-10 04:57:43', '2023-01-10 04:58:53', '2023-01-10 04:58:53');
INSERT INTO `pricetypes` VALUES (8, 'ROOF P  4', '2023-01-10 04:59:21', '2023-05-19 18:42:03', NULL);
INSERT INTO `pricetypes` VALUES (9, 'fds', '2023-01-10 05:03:06', '2023-01-10 22:30:59', '2023-01-10 22:30:59');
INSERT INTO `pricetypes` VALUES (10, 'ECOP 8', '2023-03-10 08:10:56', '2023-05-19 18:41:48', NULL);
INSERT INTO `pricetypes` VALUES (11, 'ROOF R 9', '2023-03-10 08:11:09', '2023-05-19 18:42:17', NULL);
INSERT INTO `pricetypes` VALUES (12, 'ECOR  6', '2023-03-10 08:11:21', '2023-05-19 18:41:25', NULL);
INSERT INTO `pricetypes` VALUES (13, 'Simply Genius Duct', '2023-03-10 08:11:37', '2023-03-10 08:11:37', NULL);
INSERT INTO `pricetypes` VALUES (14, 'Coco', '2023-03-10 08:12:05', '2023-03-10 08:12:05', NULL);
INSERT INTO `pricetypes` VALUES (15, 'Family A', '2023-06-27 14:56:31', '2023-06-27 14:56:31', NULL);
INSERT INTO `pricetypes` VALUES (16, 'Listino_FA', '2023-06-28 16:26:33', '2023-06-28 16:26:33', NULL);

-- ----------------------------
-- Table structure for pricetypes_user
-- ----------------------------
DROP TABLE IF EXISTS `pricetypes_user`;
CREATE TABLE `pricetypes_user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `pricetypes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of pricetypes_user
-- ----------------------------
INSERT INTO `pricetypes_user` VALUES (15, 11, '3_1.3', '2023-07-07 20:38:39', '2023-07-08 15:51:47');
INSERT INTO `pricetypes_user` VALUES (16, 28, '1_1.3,3_1.3,4_1.3,6_1.3,8_1.3', '2023-07-07 21:44:52', '2023-07-08 20:11:49');
INSERT INTO `pricetypes_user` VALUES (17, 1, '3_1,4_1,6_1,8_1,10_1,11_1,12_1,13_1,14_1,15_1,16_1,1_1.4', '2023-07-08 10:02:53', '2023-07-10 19:58:03');
INSERT INTO `pricetypes_user` VALUES (18, 25, '1_1', '2023-07-10 20:04:30', '2023-07-10 20:04:30');
INSERT INTO `pricetypes_user` VALUES (19, 29, '1_1.3', '2023-07-31 15:12:46', '2023-07-31 15:12:46');

-- ----------------------------
-- Table structure for pricings
-- ----------------------------
DROP TABLE IF EXISTS `pricings`;
CREATE TABLE `pricings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `multiplier` float NULL DEFAULT 1,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pricings
-- ----------------------------
INSERT INTO `pricings` VALUES (9, 'Manufacturer direct sale', 0.8, '2023-01-05 10:21:34', '2023-06-15 11:48:13', NULL);
INSERT INTO `pricings` VALUES (10, 'Installer', 1.5, '2023-01-05 10:21:54', '2023-04-27 19:35:15', NULL);
INSERT INTO `pricings` VALUES (11, 'Small wholesaler', 1.3, '2023-01-05 10:22:20', '2023-01-05 10:22:20', NULL);
INSERT INTO `pricings` VALUES (12, 'Large wholesaler', 1, '2023-01-05 10:23:01', '2023-01-05 10:23:01', NULL);
INSERT INTO `pricings` VALUES (13, 'Direct industrial application company', 0.8, '2023-01-05 10:23:22', '2023-01-05 10:23:22', NULL);
INSERT INTO `pricings` VALUES (14, '5 years warranty small wholesaler', 1.6, '2023-01-06 00:39:16', '2023-01-06 00:39:16', NULL);
INSERT INTO `pricings` VALUES (15, 'Engineering company', 1.9, '2023-01-06 00:39:25', '2023-01-06 00:39:25', NULL);
INSERT INTO `pricings` VALUES (16, 'END USER (catalog price)', 2, '2023-05-05 13:44:37', '2023-05-05 13:44:37', NULL);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` int NULL DEFAULT NULL,
  `company` int NULL DEFAULT NULL,
  `contact` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `indoor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ex1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ex2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `airflow` int NULL DEFAULT NULL,
  `pressure` int NULL DEFAULT NULL,
  `Tfin` int NULL DEFAULT NULL,
  `Trin` int NULL DEFAULT NULL,
  `Hfin` int NULL DEFAULT NULL,
  `Hrin` int NULL DEFAULT NULL,
  `modelId` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `priceId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, 1, 1, 1, 'AAA', 'BBB', '47651', 'REPORT_1683772358938.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 40, 64, 2, '2023-05-10 10:19:27', '2023-05-18 19:00:59', '2023-05-18 19:00:59', NULL);
INSERT INTO `project` VALUES (2, 1, 1, 1, 'Fresh System', 'air system', '47725', 'REPORT_1683772358938.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 40, 64, 1, '2023-05-10 10:19:51', '2023-05-11 05:49:55', '2023-05-11 05:49:55', NULL);
INSERT INTO `project` VALUES (3, 1, 1, 1, 'Fresh System', 'BBB', '47651', 'REPORT_1687422993588.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 40, 64, 1, '2023-05-11 06:10:13', '2023-06-28 21:28:05', '2023-06-28 21:28:05', 1361);
INSERT INTO `project` VALUES (4, 14, 7, 9, 'AAA', 'air system', '47651', 'REPORT_1684854407084.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 40, 64, 0, '2023-05-11 06:11:13', '2023-05-23 19:04:25', '2023-05-23 19:04:25', NULL);
INSERT INTO `project` VALUES (5, 14, 1, 1, 'AAA', 'BBB', '47651', 'REPORT_1683765645963.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 40, 64, 1, '2023-05-11 06:11:58', '2023-05-23 19:04:21', '2023-05-23 19:04:21', NULL);
INSERT INTO `project` VALUES (6, 14, 1, 1, 'AAA', 'BBB', '47651', 'REPORT_1683775076.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 40, 64, 0, '2023-05-11 06:17:56', '2023-05-23 19:04:24', '2023-05-23 19:04:24', NULL);
INSERT INTO `project` VALUES (7, 15, 1, 1, 'TEST NAME', 'TEST DESC', '12345', 'REPORT_1686928234087.pdf', 'C', 'I', 'LT', 'CF', 4000, 20, -10, 20, 40, 80, 84, 1, '2023-05-11 12:26:10', '2023-06-16 18:10:42', NULL, 1434);
INSERT INTO `project` VALUES (8, 15, 1, 1, 'TEST NAME', 'TEST DESC', '123456', 'REPORT_1683797395919.pdf', 'C', 'I', 'LT', 'CF', 200, 55, -10, 20, 40, 80, 64, 0, '2023-05-11 12:29:57', '2023-05-11 12:29:57', NULL, NULL);
INSERT INTO `project` VALUES (9, 15, 6, 2, 'DEMO', 'demo project', '123456', 'REPORT_1686985933568.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 0, '2023-05-16 08:49:01', '2023-06-17 10:12:22', NULL, 1361);
INSERT INTO `project` VALUES (10, 15, 6, 2, 'demo', 'demo project', '123456', 'REPORT_1684227850669.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 114, 0, '2023-05-16 12:04:13', '2023-05-16 12:04:13', NULL, NULL);
INSERT INTO `project` VALUES (11, 15, 6, 2, 'TEST', 'Demo Project', '123456', 'REPORT_1684228180037.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 0, '2023-05-16 12:09:43', '2023-05-16 12:09:43', NULL, NULL);
INSERT INTO `project` VALUES (13, 1, 2, 6, 'guantanamo bay', NULL, NULL, 'REPORT_1685525806979.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 0, '2023-05-18 19:09:42', '2023-06-09 18:36:38', '2023-06-09 18:36:38', NULL);
INSERT INTO `project` VALUES (14, 1, 11, 12, 'guantanamo bay', NULL, NULL, 'REPORT_1686910842576.pdf', 'C', 'I', 'LT', 'CF', 4500, 456, -10, 20, 80, 60, 190, 0, '2023-05-23 17:13:08', '2023-06-28 21:27:57', '2023-06-28 21:27:57', 1500);
INSERT INTO `project` VALUES (15, 14, 7, 9, NULL, NULL, NULL, 'REPORT_1684855375017.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 196, 0, '2023-05-23 18:23:02', '2023-05-23 19:04:26', '2023-05-23 19:04:26', NULL);
INSERT INTO `project` VALUES (16, 14, 7, 9, '123', '123', '123', 'REPORT_1686126516028.pdf', 'C', 'I', 'LT', 'RT', 3885, 250, -10, 20, 80, 60, 194, 0, '2023-05-26 10:40:43', '2023-06-07 11:34:28', '2023-06-07 11:34:28', 1656);
INSERT INTO `project` VALUES (17, 14, 7, 9, '123', '123', '123', 'REPORT_1685089625964.pdf', 'C', 'I', 'LT', 'RT', 8651, 250, -10, 20, 80, 60, 195, 0, '2023-05-26 11:27:08', '2023-06-07 11:34:31', '2023-06-07 11:34:31', NULL);
INSERT INTO `project` VALUES (18, 14, 7, 9, NULL, NULL, NULL, 'REPORT_1685437637263.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 196, 0, '2023-05-30 12:07:26', '2023-06-07 11:34:33', '2023-06-07 11:34:33', NULL);
INSERT INTO `project` VALUES (19, 14, 7, 9, NULL, NULL, NULL, 'REPORT_1685437774063.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 114, 0, '2023-05-30 12:08:46', '2023-06-07 11:34:35', '2023-06-07 11:34:35', NULL);
INSERT INTO `project` VALUES (20, 14, 7, 9, NULL, NULL, NULL, 'REPORT_1685449921719.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 0, '2023-05-30 15:32:10', '2023-06-07 11:34:37', '2023-06-07 11:34:37', NULL);
INSERT INTO `project` VALUES (21, 14, 7, 9, NULL, NULL, NULL, 'REPORT_1686065058372.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 196, 0, '2023-06-06 17:49:00', '2023-06-07 11:34:39', '2023-06-07 11:34:39', 1536);
INSERT INTO `project` VALUES (22, 14, 7, 9, '123', '123', '123', 'REPORT_1686126709848.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 0, '2023-06-07 11:31:54', '2023-06-07 11:34:42', '2023-06-07 11:34:42', 1363);
INSERT INTO `project` VALUES (23, 1, 10, 11, 'aazz', 'zszsz', NULL, 'REPORT_1686225788564.pdf', 'C', 'I', 'LT', 'CF', 2000, 200, -10, 20, 80, 60, 81, 0, '2023-06-08 15:03:12', '2023-06-09 18:36:24', '2023-06-09 18:36:24', 1486);
INSERT INTO `project` VALUES (24, 1, 10, 11, NULL, NULL, NULL, 'REPORT_1686321402446.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 196, 0, '2023-06-09 17:36:50', '2023-06-09 18:36:29', '2023-06-09 18:36:29', 1534);
INSERT INTO `project` VALUES (25, 1, 10, 11, NULL, NULL, NULL, 'REPORT_1686323672225.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 0, '2023-06-09 18:14:40', '2023-06-29 13:00:40', '2023-06-29 13:00:40', 1443);
INSERT INTO `project` VALUES (26, 14, 7, 9, NULL, NULL, NULL, 'REPORT_1686848213194.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 196, 0, '2023-06-13 10:06:19', '2023-06-15 19:57:02', NULL, NULL);
INSERT INTO `project` VALUES (27, 14, 7, 9, '325100', '325100', '325100', 'REPORT_1686753872290.pdf', 'C', 'I', 'LT', 'CF', 325, 100, -10, 20, 80, 60, 197, 0, '2023-06-14 17:44:43', '2023-06-14 17:44:43', NULL, NULL);
INSERT INTO `project` VALUES (28, 14, 7, 9, '123', '123', '123', 'REPORT_1686848275041.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 196, 0, '2023-06-15 19:58:03', '2023-06-15 19:58:03', NULL, NULL);
INSERT INTO `project` VALUES (29, 14, 7, 9, '123', '123', '123', 'REPORT_1686848586720.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 114, 0, '2023-06-15 20:03:15', '2023-06-15 20:03:15', NULL, 1531);
INSERT INTO `project` VALUES (30, 15, 9, 10, '123', '123', '123', 'REPORT_1686928318376.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 0, '2023-06-16 18:12:04', '2023-06-16 18:12:04', NULL, 1443);
INSERT INTO `project` VALUES (31, 15, 9, 10, '123', '123', '123', 'REPORT_1686928355966.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 114, 0, '2023-06-16 18:12:42', '2023-06-16 18:12:42', NULL, 1531);
INSERT INTO `project` VALUES (32, 15, 9, 10, 'zxc', 'zxc', '123', 'REPORT_1686985972496.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 0, '2023-06-16 18:16:19', '2023-06-17 10:13:01', NULL, 1361);
INSERT INTO `project` VALUES (33, 1, 6, 2, 'ada', '<<', 'az', 'REPORT_1687423867767.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 0, '2023-06-20 19:10:08', '2023-07-03 17:21:37', '2023-07-03 17:21:37', 1443);
INSERT INTO `project` VALUES (34, 1, 6, 2, 'ada', 'wsw', 'ws', 'REPORT_1687277859447.pdf', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 0, '2023-06-20 19:17:46', '2023-07-03 17:21:42', '2023-07-03 17:21:42', 1443);
INSERT INTO `project` VALUES (35, 15, 6, 2, 'adad', 'adad', 'adad', 'REPORT_1687436569449.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-22 15:22:53', '2023-06-22 15:22:53', NULL, NULL);
INSERT INTO `project` VALUES (36, 15, 6, 2, 'asd', 'asd', 'asd', 'REPORT_1687436626361.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-22 15:23:48', '2023-06-22 15:23:48', NULL, NULL);
INSERT INTO `project` VALUES (37, 1, 6, 2, 'guantanamo bay', 'wwww', 'wwww', 'REPORT_1687787856105.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-26 16:57:42', '2023-07-03 17:21:33', '2023-07-03 17:21:33', NULL);
INSERT INTO `project` VALUES (38, 1, 6, 2, 'petite', 'lungo il muro', '23xrt', 'REPORT_1687975401700.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-28 21:03:27', '2023-07-03 17:16:43', '2023-07-03 17:16:43', NULL);
INSERT INTO `project` VALUES (39, 1, 6, 2, 'tender 23', 'alta badia', 'werter', 'REPORT_1687976544786.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-28 21:22:30', '2023-07-03 17:15:57', '2023-07-03 17:15:57', NULL);
INSERT INTO `project` VALUES (40, 1, 6, 2, 'tender 2334', 'alta badia', 'lot 15', 'REPORT_1689234512284.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-28 21:30:16', '2023-07-13 10:48:36', NULL, NULL);
INSERT INTO `project` VALUES (41, 1, 6, 2, 'Espace pierre Folles', 'dert', 'wdsaa', 'REPORT_1687977259741.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-28 21:34:25', '2023-07-03 17:16:03', '2023-07-03 17:16:03', NULL);
INSERT INTO `project` VALUES (42, 1, 6, 2, 'tender 21212', 'wqw', 'qs', 'REPORT_1688032986449.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-29 13:03:10', '2023-06-29 13:03:10', NULL, NULL);
INSERT INTO `project` VALUES (43, 1, 6, 2, 'aruba', 'uba uba', 'lot 15', 'REPORT_1688033237658.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-29 13:07:21', '2023-07-11 18:44:10', '2023-07-11 18:44:10', NULL);
INSERT INTO `project` VALUES (44, 1, 10, 11, 'Espace pierre Folles', 'qwe', 'weq', 'REPORT_1689944429358.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-29 13:09:59', '2023-07-21 16:00:29', NULL, NULL);
INSERT INTO `project` VALUES (45, 1, 7, 9, 'tender 23wer', 'd', 'ad', 'REPORT_1688393581887.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-03 17:13:14', '2023-07-03 17:15:48', '2023-07-03 17:15:48', NULL);
INSERT INTO `project` VALUES (46, 1, 6, 2, 'tender 232234', 'w', 'wddf', 'REPORT_1688394289897.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-03 17:24:58', '2023-07-03 17:24:58', NULL, NULL);
INSERT INTO `project` VALUES (47, 1, 6, 2, 'tender 23wer', 'wwf', 'dgftr', 'REPORT_1688451211757.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-04 09:13:32', '2023-07-04 09:13:32', NULL, NULL);
INSERT INTO `project` VALUES (48, 1, 6, 2, 'sx<xx', 'xXx', 'X', 'REPORT_1688489001677.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-04 19:43:22', '2023-07-04 19:43:22', NULL, NULL);
INSERT INTO `project` VALUES (49, 28, 2, 6, 'KKK', 'LLL', '76254', 'REPORT_1689218285175.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-06 08:30:27', '2023-07-13 13:21:51', NULL, NULL);
INSERT INTO `project` VALUES (50, 28, 1, 1, 'aaa', 'bbb', '75869', 'REPORT_1689237892372.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-13 09:20:57', '2023-07-13 11:49:42', NULL, NULL);
INSERT INTO `project` VALUES (51, 28, 1, 1, 'asdf', 'qweq', '19815135', 'REPORT_1689236537012.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-13 11:26:46', '2023-07-13 11:26:46', NULL, NULL);
INSERT INTO `project` VALUES (52, 28, 1, 1, 'QQQQ', 'QQQ', '19815135', 'REPORT_1689237007286.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-13 11:34:46', '2023-07-13 11:34:46', NULL, NULL);
INSERT INTO `project` VALUES (53, 1, 12, 13, 'cgjukmfgfk', 'dtukjdkj', 'dtukc', 'REPORT_1689243770249.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-13 13:22:53', '2023-07-13 13:22:53', NULL, NULL);

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  INDEX `user_id_fk_1947081`(`user_id` ASC) USING BTREE,
  INDEX `role_id_fk_1947081`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_id_fk_1947081` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_id_fk_1947081` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 1);
INSERT INTO `role_user` VALUES (8, 2);
INSERT INTO `role_user` VALUES (9, 2);
INSERT INTO `role_user` VALUES (11, 2);
INSERT INTO `role_user` VALUES (12, 2);
INSERT INTO `role_user` VALUES (13, 2);
INSERT INTO `role_user` VALUES (14, 1);
INSERT INTO `role_user` VALUES (15, 1);
INSERT INTO `role_user` VALUES (23, 2);
INSERT INTO `role_user` VALUES (28, 1);
INSERT INTO `role_user` VALUES (25, 4);
INSERT INTO `role_user` VALUES (29, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', NULL, NULL, NULL);
INSERT INTO `roles` VALUES (2, 'User0', NULL, '2023-06-09 18:56:00', NULL);
INSERT INTO `roles` VALUES (3, 'User1', '2023-05-19 12:24:29', '2023-05-19 12:25:19', '2023-05-19 12:25:19');
INSERT INTO `roles` VALUES (4, 'user1', '2023-07-11 19:19:48', '2023-07-11 19:19:48', NULL);

-- ----------------------------
-- Table structure for scooter_statuses
-- ----------------------------
DROP TABLE IF EXISTS `scooter_statuses`;
CREATE TABLE `scooter_statuses`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scooter_statuses
-- ----------------------------

-- ----------------------------
-- Table structure for scooters
-- ----------------------------
DROP TABLE IF EXISTS `scooters`;
CREATE TABLE `scooters`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `termen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `signature_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `signature_file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `problem` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `solved` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status_id` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `scooters_barcode_unique`(`barcode` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scooters
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comtel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comfax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `conname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `conmobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `conemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 15, '15logo.png', 'Avensys srl', 'via  Primo Maggio 10/12 Sordio (LO) Italy', '+39 02 497 12802', NULL, 'Sales Department', '+39 02 497 12802', '+39 02 497 12802', 'info@avensys-srl.com', '2023-05-18 15:29:53', '2023-06-22 15:21:49', NULL);
INSERT INTO `settings` VALUES (3, 14, '14_logo.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-18 18:51:21', '2023-05-18 18:51:21', NULL);
INSERT INTO `settings` VALUES (4, 15, NULL, 'Avensys', 'Via I Maggio 10/12 Sordio (LO) Italy', '+39 02 49.71.28.02', NULL, 'Nicola Morganti', '+39 02 49.71.28.02', '+39 02 49.71.28.02', 'tech@avensys-srl.com', '2023-05-18 19:20:57', '2023-05-18 19:20:57', NULL);

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `indoor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ex1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ex2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `airflow` int NULL DEFAULT NULL,
  `pressure` int NULL DEFAULT NULL,
  `Tfin` int NULL DEFAULT NULL,
  `Trin` int NULL DEFAULT NULL,
  `Hfin` int NULL DEFAULT NULL,
  `Hrin` int NULL DEFAULT NULL,
  `modelId` int NULL DEFAULT NULL,
  `priceId` int NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `delivery_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of units
-- ----------------------------
INSERT INTO `units` VALUES (1, 37, '', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 80, 1419, 3848.75, '2023-06-26 16:57:43', '2023-06-26 16:57:43', NULL, '1_1');
INSERT INTO `units` VALUES (2, 38, 'AHU 3', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 80, 1421, 4156.65, '2023-06-28 21:03:27', '2023-06-28 21:03:27', NULL, '1_1');
INSERT INTO `units` VALUES (3, 38, 'wert', 'C', 'O', 'LT', 'CF', 4567, 50, -10, 20, 80, 60, 124, 1521, 12609.4, '2023-06-28 21:03:27', '2023-06-28 21:03:27', NULL, '1_1');
INSERT INTO `units` VALUES (4, 39, '1', 'C', 'I', 'LT', 'CF', 2500, 50, -10, 20, 80, 60, 82, 1428, 4849.31, '2023-06-28 21:22:30', '2023-06-28 21:22:30', NULL, '1_1');
INSERT INTO `units` VALUES (5, 39, 'AHU 3', 'C', 'O', 'LT', 'CF', 3456, 50, -10, 20, 80, 60, 92, 1519, 11378.1, '2023-06-28 21:22:30', '2023-06-28 21:22:30', NULL, '1_1');
INSERT INTO `units` VALUES (6, 40, 'AHU 3', 'C', 'I', 'LT', 'CF', 2022, 50, -10, 20, 80, 60, 80, 1419, 4156.65, '2023-06-28 21:30:16', '2023-07-12 11:15:00', '2023-07-12 11:15:00', '1_1');
INSERT INTO `units` VALUES (7, 40, '2345', 'C', 'O', 'LT', 'CF', 6890, 50, -10, 20, 80, 60, 125, 1523, 14084.9, '2023-06-28 21:30:16', '2023-07-12 11:15:00', '2023-07-12 11:15:00', '1_1');
INSERT INTO `units` VALUES (8, 41, '12356ytr', 'C', 'I', 'LT', 'CF', 3456, 50, -10, 20, 80, 60, 84, 1434, 5529.97, '2023-06-28 21:34:25', '2023-06-28 21:34:25', NULL, '1_1');
INSERT INTO `units` VALUES (9, 41, 'AHU 2 ', 'C', 'O', 'LT', 'CF', 6790, 50, -10, 20, 80, 60, 125, 1523, 14084.9, '2023-06-28 21:34:25', '2023-06-28 21:34:25', NULL, '1_1');
INSERT INTO `units` VALUES (10, 42, '1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 1443, 1534, '2023-06-29 13:03:10', '2023-06-29 13:03:10', NULL, '1_1');
INSERT INTO `units` VALUES (11, 42, '2', 'C', 'O', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 123, 1517, 10163.7, '2023-06-29 13:03:10', '2023-06-29 13:03:10', NULL, '1_1');
INSERT INTO `units` VALUES (12, 43, '1', 'C', 'I', 'LT', 'CF', 345, 50, -10, 20, 80, 60, 97, 2417, 1263.02, '2023-06-29 13:07:21', '2023-06-29 13:07:21', NULL, '1_1');
INSERT INTO `units` VALUES (13, 43, 'AHU 3', 'C', 'O', 'LT', 'CF', 4567, 145, -10, 20, 80, 60, 124, 1521, 12025.7, '2023-06-29 13:07:21', '2023-06-29 13:07:21', NULL, '1_1');
INSERT INTO `units` VALUES (14, 44, 'AHU 3', 'C', 'I', 'EN', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3894.65, '2023-06-29 13:09:59', '2023-07-21 16:00:29', '2023-07-21 16:00:29', '1_1');
INSERT INTO `units` VALUES (15, 44, '121', 'C', 'I', 'LT', 'RT', 8900, 200, -10, 20, 80, 60, 195, 1658, 11904, '2023-06-29 13:09:59', '2023-07-21 16:00:29', '2023-07-21 16:00:29', '1_1');
INSERT INTO `units` VALUES (16, 44, 'dfg', 'C', 'I', 'EN', 'CF', 2346, 200, -10, 20, 80, 60, 81, 1486, 4949.02, '2023-06-29 13:09:59', '2023-07-21 16:00:29', '2023-07-21 16:00:29', '1_1');
INSERT INTO `units` VALUES (17, 45, '1', 'C', 'I', 'LT', 'CF', 2500, 50, -10, 20, 80, 60, 82, 1427, 8980.2, '2023-07-03 17:13:14', '2023-07-03 17:13:14', NULL, '1_1');
INSERT INTO `units` VALUES (18, 45, '2', 'C', 'I', 'LT', 'CF', 3456, 240, -10, 20, 80, 60, 83, 1492, 11621.2, '2023-07-03 17:13:14', '2023-07-03 17:13:14', NULL, '1_1');
INSERT INTO `units` VALUES (19, 45, '5', 'C', 'I', 'LT', 'CF', 6700, 240, -10, 20, 80, 60, 191, 1501, 23812, '2023-07-03 17:13:14', '2023-07-03 17:13:14', NULL, '1_1');
INSERT INTO `units` VALUES (20, 45, '45', 'C', 'I', 'LT', 'CF', 5434, 240, -10, 20, 80, 60, 188, 1441, 18648.3, '2023-07-03 17:13:14', '2023-07-03 17:13:14', NULL, '1_1');
INSERT INTO `units` VALUES (21, 46, 'asdrubal', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 82, 1427, 4490.1, '2023-07-03 17:24:58', '2023-07-03 17:24:58', NULL, '1_1');
INSERT INTO `units` VALUES (22, 46, '12356ytr', 'C', 'I', 'LT', 'CF', 547, 50, -10, 20, 80, 60, 99, 2425, 1258.83, '2023-07-03 17:24:58', '2023-07-03 17:24:58', NULL, '1_1');
INSERT INTO `units` VALUES (23, 46, 'aswe', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-03 17:24:58', '2023-07-03 17:24:58', NULL, '1_1');
INSERT INTO `units` VALUES (24, 46, 'asder', 'C', 'I', 'LT', 'CF', 2341, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-03 17:24:58', '2023-07-03 17:24:58', NULL, '1_1');
INSERT INTO `units` VALUES (25, 46, '234', 'C', 'I', 'LT', 'CF', 2546, 50, -10, 20, 80, 60, 82, 1427, 4490.1, '2023-07-03 17:24:58', '2023-07-03 17:24:58', NULL, '1_1');
INSERT INTO `units` VALUES (26, 47, '1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 1443, 1489.32, '2023-07-04 09:13:32', '2023-07-04 09:13:32', NULL, '1_1');
INSERT INTO `units` VALUES (27, 47, 'e', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 80, 1419, 3848.75, '2023-07-04 09:13:32', '2023-07-04 09:13:32', NULL, '1_1');
INSERT INTO `units` VALUES (28, 48, 'a', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 1443, 1489.32, '2023-07-04 19:43:22', '2023-07-04 19:43:22', NULL, '1_1');
INSERT INTO `units` VALUES (29, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-06 08:30:27', '2023-07-06 19:34:02', '2023-07-06 19:34:02', '1_1');
INSERT INTO `units` VALUES (30, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-06 19:34:02', '2023-07-07 21:57:34', '2023-07-07 21:57:34', '1_1');
INSERT INTO `units` VALUES (31, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-06 19:34:02', '2023-07-07 21:57:34', '2023-07-07 21:57:34', '1_1');
INSERT INTO `units` VALUES (32, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-06 19:34:02', '2023-07-07 21:57:34', '2023-07-07 21:57:34', '1_1');
INSERT INTO `units` VALUES (33, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-07 21:57:34', '2023-07-10 19:22:15', '2023-07-10 19:22:15', '1_1');
INSERT INTO `units` VALUES (34, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-07 21:57:34', '2023-07-10 19:22:15', '2023-07-10 19:22:15', '1_1');
INSERT INTO `units` VALUES (35, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-07 21:57:34', '2023-07-10 19:22:15', '2023-07-10 19:22:15', '1_1');
INSERT INTO `units` VALUES (36, 49, 'AHU5', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 4915.57, '2023-07-07 21:57:34', '2023-07-10 19:22:15', '2023-07-10 19:22:15', '1_1');
INSERT INTO `units` VALUES (37, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-10 19:22:15', '2023-07-10 19:27:08', '2023-07-10 19:27:08', '1_1');
INSERT INTO `units` VALUES (38, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3781.21, '2023-07-10 19:22:15', '2023-07-10 19:27:08', '2023-07-10 19:27:08', '1_1');
INSERT INTO `units` VALUES (39, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 79, 1480, 4915.57, '2023-07-10 19:22:15', '2023-07-10 19:27:08', '2023-07-10 19:27:08', '150_1');
INSERT INTO `units` VALUES (40, 49, 'AHU5', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 79, 1480, 4915.57, '2023-07-10 19:22:15', '2023-07-10 19:27:08', '2023-07-10 19:27:08', '3_2');
INSERT INTO `units` VALUES (41, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 79, 1480, 4915.57, '2023-07-10 19:27:08', '2023-07-10 19:29:42', '2023-07-10 19:29:42', '150_1');
INSERT INTO `units` VALUES (42, 49, 'AHU5', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 79, 1480, 4915.57, '2023-07-10 19:27:08', '2023-07-10 19:29:42', '2023-07-10 19:29:42', '3_2');
INSERT INTO `units` VALUES (43, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 80, 1420, 5003.38, '2023-07-10 19:27:08', '2023-07-10 19:29:42', '2023-07-10 19:29:42', '1_1');
INSERT INTO `units` VALUES (44, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-10 19:27:08', '2023-07-10 19:29:42', '2023-07-10 19:29:42', '1_1');
INSERT INTO `units` VALUES (45, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 79, 1480, 4915.57, '2023-07-10 19:29:42', '2023-07-10 19:33:33', '2023-07-10 19:33:33', '150_1');
INSERT INTO `units` VALUES (46, 49, 'AHU5', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 79, 1480, 4915.57, '2023-07-10 19:29:42', '2023-07-10 19:33:33', '2023-07-10 19:33:33', '3_2');
INSERT INTO `units` VALUES (47, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2000, 50, -10, 20, 20, 60, 80, 1420, 5003.38, '2023-07-10 19:29:42', '2023-07-10 19:33:33', '2023-07-10 19:33:33', '1_1');
INSERT INTO `units` VALUES (48, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-10 19:29:42', '2023-07-10 19:33:33', '2023-07-10 19:33:33', '1_1');
INSERT INTO `units` VALUES (49, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 1444, 1954.69, '2023-07-10 19:29:42', '2023-07-10 19:33:33', '2023-07-10 19:33:33', '1_1');
INSERT INTO `units` VALUES (50, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-10 19:33:33', '2023-07-10 19:35:35', '2023-07-10 19:35:35', '1_1');
INSERT INTO `units` VALUES (51, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-10 19:35:35', '2023-07-11 22:25:13', '2023-07-11 22:25:13', '1_1');
INSERT INTO `units` VALUES (52, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 1361, 1949.22, '2023-07-10 19:35:35', '2023-07-11 22:25:13', '2023-07-11 22:25:13', '7_2');
INSERT INTO `units` VALUES (53, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-11 22:25:13', '2023-07-11 22:50:02', '2023-07-11 22:50:02', '1_1');
INSERT INTO `units` VALUES (54, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-11 22:50:02', '2023-07-12 11:21:49', '2023-07-12 11:21:49', '3_2');
INSERT INTO `units` VALUES (55, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 79, 1481, 4915.57, '2023-07-11 22:50:02', '2023-07-12 11:21:49', '2023-07-12 11:21:49', '9_1');
INSERT INTO `units` VALUES (56, 40, 'AHU 3', 'C', 'I', 'LT', 'CF', 2022, 50, -10, 20, 80, 60, 80, 1419, 4156.65, '2023-07-12 11:15:00', '2023-07-13 10:48:36', '2023-07-13 10:48:36', '1_1');
INSERT INTO `units` VALUES (57, 40, '2345', 'C', 'O', 'LT', 'CF', 6890, 50, -10, 20, 80, 60, 125, 1523, 14084.9, '2023-07-12 11:15:00', '2023-07-13 10:48:36', '2023-07-13 10:48:36', '1_1');
INSERT INTO `units` VALUES (58, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-12 11:21:49', '2023-07-12 11:29:12', '2023-07-12 11:29:12', '5_1');
INSERT INTO `units` VALUES (59, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 79, 1481, 4915.57, '2023-07-12 11:21:49', '2023-07-12 11:29:12', '2023-07-12 11:29:12', '2_1');
INSERT INTO `units` VALUES (60, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-12 11:29:12', '2023-07-12 11:37:02', '2023-07-12 11:37:02', '3_2');
INSERT INTO `units` VALUES (61, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 79, 1481, 4915.57, '2023-07-12 11:29:12', '2023-07-12 11:37:02', '2023-07-12 11:37:02', '20_1');
INSERT INTO `units` VALUES (62, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 3000, 50, -10, 20, 80, 60, 82, 1429, 5837.13, '2023-07-12 11:29:12', '2023-07-12 11:37:02', '2023-07-12 11:37:02', '7_1');
INSERT INTO `units` VALUES (63, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-12 11:37:02', '2023-07-12 11:40:17', '2023-07-12 11:40:17', '11_1');
INSERT INTO `units` VALUES (64, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 79, 1481, 4915.57, '2023-07-12 11:37:02', '2023-07-12 11:40:17', '2023-07-12 11:40:17', '7_1');
INSERT INTO `units` VALUES (65, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 3000, 50, -10, 20, 80, 60, 82, 1429, 5837.13, '2023-07-12 11:37:02', '2023-07-12 11:40:17', '2023-07-12 11:40:17', '1_2');
INSERT INTO `units` VALUES (66, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-12 11:40:17', '2023-07-13 06:23:26', '2023-07-13 06:23:26', '4_1');
INSERT INTO `units` VALUES (67, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 79, 1481, 4915.57, '2023-07-12 11:40:17', '2023-07-13 06:23:26', '2023-07-13 06:23:26', '3_1');
INSERT INTO `units` VALUES (68, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 3000, 50, -10, 20, 80, 60, 82, 1429, 5837.13, '2023-07-12 11:40:17', '2023-07-13 06:23:26', '2023-07-13 06:23:26', '1_1');
INSERT INTO `units` VALUES (69, 49, 'AHU3', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 64, 1361, 1949.22, '2023-07-13 06:23:26', '2023-07-13 06:23:26', NULL, '7_1');
INSERT INTO `units` VALUES (70, 49, 'AHU1', 'C', 'I', 'LT', 'CF', 2345, 50, -10, 20, 80, 60, 79, 1481, 4915.57, '2023-07-13 06:23:26', '2023-07-13 06:23:26', NULL, '3_1');
INSERT INTO `units` VALUES (71, 49, 'AHU2', 'C', 'I', 'LT', 'CF', 3000, 50, -10, 20, 80, 60, 82, 1429, 5837.13, '2023-07-13 06:23:26', '2023-07-13 06:23:26', NULL, '8_1');
INSERT INTO `units` VALUES (72, 50, 'AHU1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 1362, 1949.22, '2023-07-13 09:20:57', '2023-07-13 11:49:42', '2023-07-13 11:49:42', '4_1');
INSERT INTO `units` VALUES (73, 50, 'AHU2', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 1445, 1954.69, '2023-07-13 09:20:57', '2023-07-13 11:49:42', '2023-07-13 11:49:42', '2_2');
INSERT INTO `units` VALUES (74, 40, 'AHU 3', 'C', 'I', 'LT', 'CF', 2022, 50, -10, 20, 80, 60, 80, 1419, 4156.65, '2023-07-13 10:48:36', '2023-07-13 10:48:36', NULL, '1_1');
INSERT INTO `units` VALUES (75, 40, '2345', 'C', 'O', 'LT', 'CF', 6890, 50, -10, 20, 80, 60, 125, 1523, 14084.9, '2023-07-13 10:48:36', '2023-07-13 10:48:36', NULL, '1_2');
INSERT INTO `units` VALUES (76, 51, 'AHU1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 196, 2297, 786.5, '2023-07-13 11:26:46', '2023-07-13 11:26:46', NULL, '4_1');
INSERT INTO `units` VALUES (77, 51, 'AHU2', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 114, 0, 0, '2023-07-13 11:26:46', '2023-07-13 11:26:46', NULL, '2_2');
INSERT INTO `units` VALUES (78, 52, 'AHU1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 20, 60, 63, 1446, 1954.69, '2023-07-13 11:34:46', '2023-07-13 11:34:46', NULL, '3_2');
INSERT INTO `units` VALUES (79, 52, 'AHU2', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 1363, 1949.22, '2023-07-13 11:34:46', '2023-07-13 11:34:46', NULL, '5_1');
INSERT INTO `units` VALUES (80, 52, 'AHU4', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 1443, 1936.12, '2023-07-13 11:34:46', '2023-07-13 11:34:46', NULL, '4_2');
INSERT INTO `units` VALUES (81, 50, 'AHU1', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 64, 1362, 1949.22, '2023-07-13 11:49:42', '2023-07-13 11:49:42', NULL, '1_1');
INSERT INTO `units` VALUES (82, 50, 'AHU2', 'C', 'I', 'LT', 'CF', 200, 50, -10, 20, 80, 60, 63, 1445, 1954.69, '2023-07-13 11:49:42', '2023-07-13 11:49:42', NULL, '1_1');
INSERT INTO `units` VALUES (83, 53, 'wrwr', 'C', 'I', 'LT', 'CF', 2567, 500, -10, 20, 80, 60, 85, 1499, 11387.1, '2023-07-13 13:22:53', '2023-07-13 13:22:53', NULL, '3_1');
INSERT INTO `units` VALUES (84, 44, 'AHU 3', 'C', 'I', 'EN', 'CF', 2000, 50, -10, 20, 80, 60, 79, 1480, 3894.65, '2023-07-21 16:00:29', '2023-07-21 16:00:29', NULL, '1_1');
INSERT INTO `units` VALUES (85, 44, '121', 'C', 'I', 'LT', 'RT', 8900, 200, -10, 20, 80, 60, 195, 1658, 11904, '2023-07-21 16:00:29', '2023-07-21 16:00:29', NULL, '1_1');
INSERT INTO `units` VALUES (86, 44, 'dfg', 'C', 'I', 'EN', 'CF', 2346, 200, -10, 20, 80, 60, 81, 1486, 4949.02, '2023-07-21 16:00:29', '2023-07-21 16:00:29', NULL, '1_2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sms_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_web_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_vat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `delivery_address` int UNSIGNED NULL DEFAULT NULL,
  `delivery_condition` int UNSIGNED NULL DEFAULT NULL,
  `multiplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `delivery_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'sandro nutini', 'info@avensys-srl.com', NULL, '$2y$10$ptA9riUZbXQWp97iMRKjNuNNP4ssaWZ55aCmlTFp/b0TdtG6L16Ue', '+33756496077', NULL, '8c26YU4GiaWlbYlJDNvRwKWbXq9NgZz8He6qonvAxcmMKbvVFtbVFXgRobZ1', NULL, '2023-07-10 20:00:28', NULL, 'Avensys srl', 'via I maggio 10/12', '26858', 'Sordio', '+393336766440', '+393336766440', 'www-avensys-srl-com', 'Italiy', 'Country', '0123456789', 0, 0, '11_1.3', NULL, NULL);
INSERT INTO `users` VALUES (8, 'test', 'test@gmail.com', NULL, '$2y$10$v8ISWvtnm/f3p.oQRbVICeyXU6pNOVBpRbEY9dLHnDVsrvNQsqIk.', '+33756496077', NULL, 'fHnDyRB2RdiYg32f0r9LhpHWDC5Uxw77rRTTwX7mdsn91tNQmbX0GO9otq2c', '2023-01-05 01:18:50', '2023-04-26 15:22:21', '2023-04-26 15:22:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (9, 'Secret', 'secret@gmail.com', NULL, '$2y$10$1Wa1jXYGLeoGaYgMkVjKyOxAkrr7rN6SweLSH6sLFsVQIWMHiwaa6', '+33756496077', NULL, NULL, '2023-01-10 01:29:07', '2023-04-26 15:22:25', '2023-04-26 15:22:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (11, 'VENT', 'chris@vent.co.uk', NULL, '$2y$10$74Kq00s2vF3I.7GckShMKOpOTDqEPx5hNDLPRoYs/zEtvoUQC4mpW', '+33756496077', NULL, '6aFpwk5U6MXYgFp2dMFxuu9UlqDL0y2R2ZHZDiEso7zXiOtoWUwpucjAxsg9', '2023-04-26 15:24:02', '2023-07-07 20:38:38', NULL, 'ventair', 'ventzone road', '2554788', 'landullnno', '+44423587', '+44423587', 'www.vennz', 'licashire', 'GB', '049388282', 0, 0, NULL, NULL, NULL);
INSERT INTO `users` VALUES (12, 'ERT', 'w@ert.com', NULL, '$2y$10$WqdgyDyEIhBP/Thco/F3BuUmUhZEIUGifyISAPTnqKFBb4qvtiUq6', '+33756496077', NULL, NULL, '2023-04-27 17:38:56', '2023-06-28 17:14:51', '2023-06-28 17:14:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (13, 'EAC', 'w@wwe.com', NULL, '$2y$10$he26U6UU985BXm9G4iBPf.bomXAN.pgsCJPPaRsCpnVC.S7MeTwda', '+33756496077', NULL, NULL, '2023-04-27 17:46:18', '2023-06-28 17:14:37', '2023-06-28 17:14:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (14, 'tech', 'tech@avensys-srl.com', NULL, '$2y$10$Su9hdL0wr9XP3SZifyhEbuvIWi1.ka4zjJK1L4cV2aHXM..7PDpvK', '+33756496077', NULL, 'MalSGxa3R1fiV7m7CqrYrBGa2ivxeW35icqKVT3bKHCBmoBP9YoOymbcC07i', '2023-05-13 13:36:12', '2023-06-28 16:26:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (15, 'Test user', 'test@test.com', NULL, '$2y$10$8njY5zTcUnWLsuf.qRapHuUIx3r64AfijEFXqoQXnSzc1OOgCPQPa', '+33756496077', NULL, 'NTlnLrPh2gt55w6ieqjA39iG7saognDEbfFnLjUio1uh2HMaehnFySFOArp0', '2023-05-18 11:50:26', '2023-06-16 13:18:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (16, 'Suren Darbinyan', 'darbinyan.dev@gmail.com', NULL, '$2y$10$EKFLZgIxBMqQGc8QZPFcMOKo.RhEjmnnlRaIzP.A9nKoVg3jv.XX.', '+33756496077', NULL, NULL, '2023-06-08 10:35:09', '2023-06-08 10:35:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (17, 'Test1', 'test1@gmail.com', NULL, '$2y$10$cnwccsbi4jtskMHiCFB0C.xVTGT2X.XU/qTuhsA/cfm12MVoje2D6', '+33756496077', NULL, NULL, '2023-06-23 09:10:13', '2023-06-23 09:10:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (19, 'devant', 'devwolfs1113@gmail.com', NULL, '$2y$10$VP5o73aXKVtH.1jMeKO7zeB6MzGw6vpimSiksFwjIoxIjQHzjHKzq', '+33756496077', NULL, NULL, '2023-06-25 11:53:28', '2023-06-25 11:53:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (21, 'webserver.avensys@gmail.com', 'webserver.avensys@gmail.com', NULL, '$2y$10$9ddYjFKBD3vURbeAXZAY/uOmklm2efgcCz3St/XfCW/r46mBxS95a', '+33756496077', NULL, NULL, '2023-06-26 15:24:57', '2023-06-26 15:24:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (22, 'samapi', 'samapian@gmail.com', NULL, '$2y$10$ABxundLMF7gC5OkByTMnYeU9tkX.N7E7c3RHkSLqH.J2i4UITdZBa', '+33756496077', NULL, NULL, '2023-06-26 19:54:40', '2023-06-28 17:14:46', '2023-06-28 17:14:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (23, 'CRDC SLIMtech', 'crdc@crdc.com', NULL, '$2y$10$1pTYVPjCxWZ3SSS47j.UXuhvnoshSEt4DBrQXNjxl9Z2whJRRxgiW', '+33756496077', NULL, NULL, '2023-06-28 16:34:02', '2023-06-29 18:50:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (25, 'DETANDT', 'dtdt@dtdt.com', NULL, '$2y$10$7dhGBajhtjPvgnyan3lGwOAmZ2UhPw44ePyEY5VJrNXKaNPS/fLca', '+33756496077', NULL, NULL, '2023-06-28 19:34:43', '2023-07-11 19:20:25', NULL, 'detandt', 'be', 'be', 'BE', 'be', 'be', 'be', 'be', 'be', 'be', 0, 0, '11_1.3', NULL, NULL);
INSERT INTO `users` VALUES (26, 'asdf', 'dsteven0817@protonmail.com', NULL, '$2y$10$LucoZ3uWPbMn44yTSHE2OOZMUj.C3nrliJ7cXQ8c8eB4lknoR0YAm', '+33756496077', NULL, NULL, '2023-07-02 01:06:14', '2023-07-06 12:41:17', '2023-07-06 12:41:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (27, 'asdf', 'top1.devstar+100@gmail.com', NULL, '$2y$10$NJkPfW8CXq99Owl772qAGeaE4QCpLjDfB2XY0nTXuyEQBrXYjVGmm', '+33756496077', NULL, NULL, '2023-07-02 01:11:26', '2023-07-05 20:44:37', '2023-07-05 20:44:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (28, 'Leoaprd', 'leopard011817@gmail.com', NULL, '$2y$10$wNL3n0GdUB8yndwEEDXddOahZ6x2sR74UphHIclrYCGWlWiCa3hcm', '+33756496077', NULL, 'aTp6py3MAiMLnIw6u60QQWq5dJoaF7UJnowfJvtO5IhyGY2NzhiBOiPmJOjH', '2023-07-03 09:07:01', '2023-07-11 22:33:53', NULL, 'KKKK', 'LLLL', '123456', 'MMMM', '+12345678910', '+98765432198', 'www.avensys-srl.com', 'UUUU', 'YYYY', 'TTTT', 1, 1, '12_1', '4_2', NULL);
INSERT INTO `users` VALUES (29, 'freelancer@gmail.com', 'freelancer@gmail.com', NULL, '$2y$10$kBOcRtkj1zJOS5kIcj87k.Zn6pMWahOidQtfcpbD3KOa4T7N.tWfu', '+33756496077', NULL, NULL, '2023-07-31 15:07:17', '2023-07-31 15:12:46', NULL, 'asd', 'asd', '12345', 'asd', '12345', '12345', 'www.prova.com', '123', '123', '123', 0, 0, '12_1', '1_1', NULL);
INSERT INTO `users` VALUES (42, 'hades255', 'montgasam@gmail.com1', NULL, '$2y$10$hmS3CWrs4ykEGZDVpPAFY.bOn8y0H.mJZtrWN69j88YkEKlQWFacu', '+3584573987249', '511654', NULL, '2023-08-04 13:33:14', '2023-08-04 13:33:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-04 13:38:14');
INSERT INTO `users` VALUES (43, 'asdasd1', 'montgasam@gmail.com12', NULL, '$2y$10$Jb51hw9PwFipgxH5Y0nNluB.d2DnnXQf648vsyzAFNTQUQXb.NoXK', '+46726416763', '571450', NULL, '2023-08-04 13:38:03', '2023-08-04 13:40:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-04 13:45:27');

SET FOREIGN_KEY_CHECKS = 1;
