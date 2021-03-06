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

 Date: 11/11/2018 20:42:27
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
  `no_agd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of disposisi
-- ----------------------------
INSERT INTO `disposisi` VALUES (5, 17, 'Terima Dari', 'No Surat', NULL, 'nama kategori', 'Perihal', 'KABIDPAMSISFO', '21 November, 2018', 'Kapus', 'Penyelesaian', '2018-11-11 17:26:28', NULL, 0, 'No AGD');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of diteruskan_kepada
-- ----------------------------
INSERT INTO `diteruskan_kepada` VALUES (1, 'KABIDINFOMIN', '0000-00-00', '0000-00-00', 0);
INSERT INTO `diteruskan_kepada` VALUES (2, 'KABIDINFOOPS', '0000-00-00', '0000-00-00', 0);
INSERT INTO `diteruskan_kepada` VALUES (3, 'KABIDDUKTI', '0000-00-00', '0000-00-00', 0);
INSERT INTO `diteruskan_kepada` VALUES (4, 'KABIDPAMSISFO', '0000-00-00', '0000-00-00', 0);

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
  `id_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenissurat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_dokumen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_dokumen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uniqid_doc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dokumen
-- ----------------------------
INSERT INTO `dokumen` VALUES (2, 2, 23, 'NNNNN', 'NNNNNNNNNN', 'image/jpeg', 'aruba.JPG', NULL, NULL, '2018-11-09', '2018-11-09', 1, '1', 'Surat Keluar', 'rwerew', NULL, NULL);
INSERT INTO `dokumen` VALUES (14, 3, 23, 'qwewqe', 'wqeqw', NULL, '', NULL, NULL, '2018-11-09', '2018-11-09', 1, '1', 'Surat Masuk', '4ewqe', '2 November, 2018', NULL);
INSERT INTO `dokumen` VALUES (15, 4, 23, '34324234', 'ertretert', 'text/plain', 'quiz1.txt', NULL, NULL, '2018-11-10', '2018-11-10', 0, '1', 'Surat Keluar', '24234', '15 November, 2018', '20181110_5be625e281b8f');
INSERT INTO `dokumen` VALUES (16, 4, 23, '34324234', 'ertretert', 'text/plain', 'quiz2.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-10', '2018-11-10', 0, '1', 'Surat Keluar', '24234', '15 November, 2018', '20181110_5be628fee6cc5');
INSERT INTO `dokumen` VALUES (17, 4, 23, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', '2018-11-11', 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (18, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', '2018-11-11', 0, '1', 'Surat Masuk', 't562/2019/33/xxx', NULL, '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (19, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', '2018-11-11', 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (20, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', '2018-11-11', 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (21, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (22, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (23, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (24, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (25, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (26, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (27, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (28, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (29, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (30, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (31, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (32, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (33, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (34, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (35, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (36, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (37, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (38, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (39, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (40, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (41, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (42, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (43, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (44, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (45, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (46, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (47, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (48, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (49, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (50, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (51, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (52, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (53, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (54, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (55, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (56, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (57, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (58, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');
INSERT INTO `dokumen` VALUES (59, 4, 1, 'Nama Dokumen Surat Masuk', 'Nama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk\r\nNama Dokumen Surat Masuk', 'text/plain', 'new_36.txt', 'C:/xampp/htdocs/eoffice/images/', 'Menunggu Persetujuan', '2018-11-11', NULL, 0, '1', 'Surat Masuk', 't562/2019/33/xxx', '11 November, 2018', '20181111_5be77f0e31bd3');

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
  `uniqid_doc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for jenissurat
-- ----------------------------
DROP TABLE IF EXISTS `jenissurat`;
CREATE TABLE `jenissurat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flag_del` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jenissurat
-- ----------------------------
INSERT INTO `jenissurat` VALUES (1, 'Surat Masuk', '0');
INSERT INTO `jenissurat` VALUES (2, 'Surat Keluar', '0');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'nama kategori', 'deskripsi kategori', NULL, NULL, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personel
-- ----------------------------
INSERT INTO `personel` VALUES (1, 1, NULL, 'test', 'Pria', NULL, 'Prada', 'test', 'test', 'test', 'TNI AD', '2018-11-07 15:28:34', NULL, 0);
INSERT INTO `personel` VALUES (3, 23, NULL, 'testpersonil', 'Wanita', NULL, 'Pratu', 'test', 'asfsdfsdfds', 'tersfafsdf', 'TNI AU', '2018-11-07 15:29:13', NULL, 0);

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
INSERT INTO `user_type_access` VALUES (0, 'kategori', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'personil', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'users', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'workflow', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'workflowsurat', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'front', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'suratkeluar', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'suratmasuk', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'uploadfile', '*', 1);

-- ----------------------------
-- Table structure for user_types
-- ----------------------------
DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types`  (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 1, '2016-04-11 19:04:28', NULL, NULL, NULL);
INSERT INTO `users` VALUES (23, 'deka', '57ef16a773d505292b52918bcd6d8d29', 1, 1, '2018-11-04 13:06:32', NULL, NULL, 0);
INSERT INTO `users` VALUES (24, 'admindeka', '99f9b2cd7dfc324b219ac2e5ce29e5d5', 0, 1, '2018-11-04 13:07:50', NULL, NULL, 0);
INSERT INTO `users` VALUES (25, 'love', 'b5c0b187fe309af0f4d35982fd961d7e', 1, 1, '2018-11-04 13:24:48', '2018-11-04 01:24:48', NULL, 0);
INSERT INTO `users` VALUES (26, 'lola', 'fceeb9b9d469401fe558062c4bd25954', 1, 1, '2018-11-04 13:26:50', '2018-11-04 13:26:50', '2018-11-04 13:29:25', 1);
INSERT INTO `users` VALUES (27, 'to', '01b6e20344b68835c5ed1ddedf20d531', 0, 1, '2018-11-07 05:58:48', '2018-11-07 05:58:48', NULL, 0);

-- ----------------------------
-- Table structure for workflow
-- ----------------------------
DROP TABLE IF EXISTS `workflow`;
CREATE TABLE `workflow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_workflow` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `flag_del` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of workflow
-- ----------------------------
INSERT INTO `workflow` VALUES (1, 'Test', NULL, '2018-11-07 08:33:44', '2018-11-07 08:33:44', 1);
INSERT INTO `workflow` VALUES (2, 'test', NULL, '2018-11-07 12:52:40', '2018-11-07 12:52:40', 0);
INSERT INTO `workflow` VALUES (3, 'test1', NULL, '2018-11-07 12:52:50', '2018-11-07 12:52:50', 0);
INSERT INTO `workflow` VALUES (4, 'test2', NULL, '2018-11-07 12:53:00', '2018-11-07 12:53:00', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of workflow_personel
-- ----------------------------
INSERT INTO `workflow_personel` VALUES (8, 4, 3, 1, '2018-11-08 05:11:13', NULL, 0);
INSERT INTO `workflow_personel` VALUES (9, 4, 1, 2, '2018-11-08 05:11:13', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
