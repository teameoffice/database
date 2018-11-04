/*
 Navicat Premium Data Transfer

 Source Server         : koneksi_ke_sql_local
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost:3306
 Source Schema         : eoffice

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : 65001

 Date: 04/11/2018 13:57:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for departemen
-- ----------------------------
DROP TABLE IF EXISTS `departemen`;
CREATE TABLE `departemen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_update` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for disposisi
-- ----------------------------
DROP TABLE IF EXISTS `disposisi`;
CREATE TABLE `disposisi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NULL DEFAULT NULL,
  `terima_dari` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `klasifikasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `perihal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_diteruskan_kepada` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_terusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `disposisi_kapus` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_penyelesaian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for diteruskan_kepada
-- ----------------------------
DROP TABLE IF EXISTS `diteruskan_kepada`;
CREATE TABLE `diteruskan_kepada`  (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` date NOT NULL,
  `flag_del` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dokumen
-- ----------------------------
DROP TABLE IF EXISTS `dokumen`;
CREATE TABLE `dokumen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_workflow` int(11) NULL DEFAULT NULL,
  `id_user` int(11) NULL DEFAULT NULL,
  `nama_dokumen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `modifikasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` date NULL DEFAULT NULL,
  `date_updated` date NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dokumen_approval
-- ----------------------------
DROP TABLE IF EXISTS `dokumen_approval`;
CREATE TABLE `dokumen_approval`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `id_dokumen` int(11) NULL DEFAULT NULL,
  `approved_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` date NULL DEFAULT NULL,
  `date_updated` date NULL DEFAULT NULL,
  `flag_del` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for personel
-- ----------------------------
DROP TABLE IF EXISTS `personel`;
CREATE TABLE `personel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `id_departemen` int(11) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `pangkat` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `korps` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kesatuan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `matra` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_type_access
-- ----------------------------
DROP TABLE IF EXISTS `user_type_access`;
CREATE TABLE `user_type_access`  (
  `user_type_id` int(11) NOT NULL,
  `class` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `method` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `access` int(11) NOT NULL,
  UNIQUE INDEX `user_type_id`(`user_type_id`, `class`, `method`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_type_access
-- ----------------------------
INSERT INTO `user_type_access` VALUES (0, 'admin', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'departemen', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'personil', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'suratkeluar', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'suratmasuk', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'users', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'workflow', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'workflowsurat', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'front', '*', 1);

-- ----------------------------
-- Table structure for user_types
-- ----------------------------
DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types`  (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_types
-- ----------------------------
INSERT INTO `user_types` VALUES (0, 'Admin');
INSERT INTO `user_types` VALUES (1, 'Front');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_status` int(11) NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 1, '2016-04-11 19:04:28', NULL, NULL, NULL);
INSERT INTO `users` VALUES (23, 'deka', '57ef16a773d505292b52918bcd6d8d29', 1, 1, '2018-11-04 13:06:32', NULL, NULL, 0);
INSERT INTO `users` VALUES (24, 'admindeka', '99f9b2cd7dfc324b219ac2e5ce29e5d5', 0, 1, '2018-11-04 13:07:50', NULL, NULL, 0);
INSERT INTO `users` VALUES (25, 'love', 'b5c0b187fe309af0f4d35982fd961d7e', 1, 1, '2018-11-04 13:24:48', '2018-11-04 01:24:48', NULL, 0);
INSERT INTO `users` VALUES (26, 'lola', 'fceeb9b9d469401fe558062c4bd25954', 1, 1, '2018-11-04 13:26:50', '2018-11-04 13:26:50', '2018-11-04 13:29:25', 1);

-- ----------------------------
-- Table structure for workflow
-- ----------------------------
DROP TABLE IF EXISTS `workflow`;
CREATE TABLE `workflow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_workflow` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for workflow_personel
-- ----------------------------
DROP TABLE IF EXISTS `workflow_personel`;
CREATE TABLE `workflow_personel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_workflow` int(11) NULL DEFAULT NULL,
  `id_personel` int(11) NULL DEFAULT NULL,
  `urutan` int(30) NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
