/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100129
Source Host           : localhost:3306
Source Database       : erpdb

Target Server Type    : MYSQL
Target Server Version : 100129
File Encoding         : 65001

Date: 2018-03-01 18:23:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ms_user
-- ----------------------------
DROP TABLE IF EXISTS `ms_user`;
CREATE TABLE `ms_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT '',
  `user_pass` varchar(100) DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ms_user
-- ----------------------------
INSERT INTO `ms_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- ----------------------------
-- Table structure for tm_alamat
-- ----------------------------
DROP TABLE IF EXISTS `tm_alamat`;
CREATE TABLE `tm_alamat` (
  `fs_kd_alamatid` varchar(100) NOT NULL DEFAULT '',
  `fs_kd_filterid` varchar(100) NOT NULL DEFAULT '',
  `fs_kd_sumberid` varchar(100) NOT NULL DEFAULT '',
  `fs_seqno` int(3) NOT NULL DEFAULT '0',
  `fs_alamat` text NOT NULL,
  `fs_notlp1` varchar(30) NOT NULL DEFAULT '',
  `fs_notlp2` varchar(30) NOT NULL DEFAULT '',
  `fs_email1` varchar(255) NOT NULL DEFAULT '',
  `fs_email2` varchar(255) NOT NULL DEFAULT '',
  `fs_kontak1` varchar(255) NOT NULL DEFAULT '',
  `fs_kontak2` varchar(255) NOT NULL DEFAULT '',
  `fb_aktif` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`fs_kd_alamatid`),
  KEY `index1` (`fs_kd_alamatid`),
  KEY `index2` (`fs_kd_alamatid`,`fs_kd_filterid`,`fs_kd_sumberid`,`fs_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_alamat
-- ----------------------------

-- ----------------------------
-- Table structure for tm_app
-- ----------------------------
DROP TABLE IF EXISTS `tm_app`;
CREATE TABLE `tm_app` (
  `fs_kd_bahasa` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_app
-- ----------------------------
INSERT INTO `tm_app` VALUES ('ID');

-- ----------------------------
-- Table structure for tm_bahasa
-- ----------------------------
DROP TABLE IF EXISTS `tm_bahasa`;
CREATE TABLE `tm_bahasa` (
  `fs_kd_bahasa` varchar(10) NOT NULL DEFAULT '' COMMENT 'Kode bahasa',
  `fs_nm_bahasa` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fs_kd_bahasa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_bahasa
-- ----------------------------
INSERT INTO `tm_bahasa` VALUES ('EN', 'ENGGLISH');
INSERT INTO `tm_bahasa` VALUES ('ID', 'BAHASA INDONESIA');

-- ----------------------------
-- Table structure for tm_company
-- ----------------------------
DROP TABLE IF EXISTS `tm_company`;
CREATE TABLE `tm_company` (
  `fs_kd_compid` varchar(100) NOT NULL,
  `fs_kd_comp` varchar(20) NOT NULL DEFAULT '',
  `fs_nm_comp` varchar(255) DEFAULT '',
  `fs_kd_compidp` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_company
-- ----------------------------
INSERT INTO `tm_company` VALUES ('2018021501', 'comp1', 'PT ENTAH BERANTAH', '');
INSERT INTO `tm_company` VALUES ('2018021502', 'comp11', 'BRANCH PALEMBANG', '2018021501');
INSERT INTO `tm_company` VALUES ('2018021503', 'comp12', 'BRANCH LAMPUNG', '2018021501');
INSERT INTO `tm_company` VALUES ('2018021504', 'comp13', 'BRANCH JOGJA', '2018021501');
INSERT INTO `tm_company` VALUES ('2018021505', 'comp121', 'SUB BRANCH BRANTI', '2018021503');

-- ----------------------------
-- Table structure for tm_hakases
-- ----------------------------
DROP TABLE IF EXISTS `tm_hakases`;
CREATE TABLE `tm_hakases` (
  `fs_kd_groupid` varchar(100) NOT NULL DEFAULT '',
  `fs_kd_user` varchar(100) NOT NULL DEFAULT '',
  `fs_kd_parent` varchar(100) NOT NULL DEFAULT '',
  `fs_kd_child` varchar(100) NOT NULL DEFAULT '',
  `fb_simpan` int(2) NOT NULL DEFAULT '0',
  `fb_edit` int(2) NOT NULL DEFAULT '0',
  `fb_hapus` int(2) NOT NULL DEFAULT '0',
  `fb_cetak` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fs_kd_user`,`fs_kd_parent`,`fs_kd_child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_hakases
-- ----------------------------
INSERT INTO `tm_hakases` VALUES ('admin1', 'aaa', '1111', '11111', '0', '0', '0', '0');
INSERT INTO `tm_hakases` VALUES ('admin1', 'aaa', '1111', '11112', '0', '0', '0', '0');
INSERT INTO `tm_hakases` VALUES ('admin1', 'aaa', '1112111', '11121111', '0', '0', '0', '0');
INSERT INTO `tm_hakases` VALUES ('admin1', 'aaa', '1211', '12111', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for tm_infohelp
-- ----------------------------
DROP TABLE IF EXISTS `tm_infohelp`;
CREATE TABLE `tm_infohelp` (
  `fs_kd_companyid` varchar(20) NOT NULL DEFAULT '',
  `fs_kd_flag` smallint(255) NOT NULL DEFAULT '0' COMMENT '0: Info perusahaan\r\n1: Help',
  `fs_kd_parent` varchar(20) NOT NULL DEFAULT '',
  `fs_kd_child` varchar(20) NOT NULL DEFAULT '',
  `fs_nm_menu` varchar(500) NOT NULL DEFAULT '',
  `fs_form` varchar(255) NOT NULL DEFAULT '',
  `fn_urut` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fs_kd_companyid`,`fs_kd_flag`,`fs_kd_parent`,`fs_kd_child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_infohelp
-- ----------------------------
INSERT INTO `tm_infohelp` VALUES ('2018021501', '0', '0', '1', 'MENU', '', '0');
INSERT INTO `tm_infohelp` VALUES ('2018021501', '0', '1', '11', 'APLIKASI', '', '0');
INSERT INTO `tm_infohelp` VALUES ('2018021501', '0', '1', '12', 'INFO', '', '0');

-- ----------------------------
-- Table structure for tm_legend
-- ----------------------------
DROP TABLE IF EXISTS `tm_legend`;
CREATE TABLE `tm_legend` (
  `fs_kd_bahasa` varchar(10) NOT NULL DEFAULT '' COMMENT 'kode bahasa di table bahasa',
  `fs_kd_legend` varchar(255) NOT NULL DEFAULT '',
  `fs_nm_legend` varchar(500) NOT NULL,
  PRIMARY KEY (`fs_kd_bahasa`,`fs_kd_legend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_legend
-- ----------------------------
INSERT INTO `tm_legend` VALUES ('EN', 'alamat', 'Address');
INSERT INTO `tm_legend` VALUES ('EN', 'batal', 'Cancel');
INSERT INTO `tm_legend` VALUES ('EN', 'cetak', 'Print');
INSERT INTO `tm_legend` VALUES ('EN', 'hapus', 'Void');
INSERT INTO `tm_legend` VALUES ('EN', 'kodeuser', 'User Code');
INSERT INTO `tm_legend` VALUES ('EN', 'login', 'Login');
INSERT INTO `tm_legend` VALUES ('EN', 'menusatu', 'Info');
INSERT INTO `tm_legend` VALUES ('EN', 'nama', 'Name');
INSERT INTO `tm_legend` VALUES ('EN', 'namaasli', 'Real Name');
INSERT INTO `tm_legend` VALUES ('EN', 'password', 'Password');
INSERT INTO `tm_legend` VALUES ('EN', 'password1', 'Retype Password');
INSERT INTO `tm_legend` VALUES ('EN', 'simpan', 'Save');
INSERT INTO `tm_legend` VALUES ('ID', 'alamat', 'Alamat');
INSERT INTO `tm_legend` VALUES ('ID', 'batal', 'Batal');
INSERT INTO `tm_legend` VALUES ('ID', 'cetak', 'Cetak');
INSERT INTO `tm_legend` VALUES ('ID', 'entry', 'Catat');
INSERT INTO `tm_legend` VALUES ('ID', 'hapus', 'Hapus');
INSERT INTO `tm_legend` VALUES ('ID', 'kodeuser', 'Kode Login');
INSERT INTO `tm_legend` VALUES ('ID', 'listdata', 'Daftar');
INSERT INTO `tm_legend` VALUES ('ID', 'login', 'Masuk');
INSERT INTO `tm_legend` VALUES ('ID', 'menusatu', 'Info');
INSERT INTO `tm_legend` VALUES ('ID', 'nama', 'Nama');
INSERT INTO `tm_legend` VALUES ('ID', 'namaasli', 'Nama Asli');
INSERT INTO `tm_legend` VALUES ('ID', 'password', 'Password');
INSERT INTO `tm_legend` VALUES ('ID', 'password1', 'Ketik Ulang');
INSERT INTO `tm_legend` VALUES ('ID', 'simpan', 'Simpan');
INSERT INTO `tm_legend` VALUES ('ID', 'tampil', 'Tampil');

-- ----------------------------
-- Table structure for tm_menu
-- ----------------------------
DROP TABLE IF EXISTS `tm_menu`;
CREATE TABLE `tm_menu` (
  `fs_kd_compid` varchar(100) NOT NULL DEFAULT '',
  `fs_kd_parent` int(11) NOT NULL DEFAULT '0',
  `fs_kd_child` int(11) NOT NULL DEFAULT '0',
  `fs_nm_menu` varchar(255) NOT NULL DEFAULT '',
  `fs_form` varchar(255) NOT NULL DEFAULT '',
  `fn_urut` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fs_kd_compid`,`fs_kd_parent`,`fs_kd_child`),
  KEY `index1` (`fs_kd_parent`,`fs_kd_child`),
  KEY `index2` (`fs_kd_parent`,`fs_kd_child`,`fn_urut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tm_menu
-- ----------------------------
INSERT INTO `tm_menu` VALUES ('2018021501', '0', '1', 'MENU', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '1', '11', 'APLIKASI', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '1', '12', 'INFO', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '11', '111', 'Setup Aplikasi', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '12', '121', 'INFO 1', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '111', '1111', 'Pengaturan Menu', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '111', '1112', 'Pengaturan Level 1', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '121', '1211', 'INFO 2', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '1111', '11111', 'Entah 1', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '1111', '11112', 'Entah 2', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '1112', '11121', 'Pengaturan Level 2', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '1211', '12111', 'INFO 3', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '11121', '111211', 'Pengaturan Level 3', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '111211', '1112111', 'Pengaturan Level 4', '', '0');
INSERT INTO `tm_menu` VALUES ('2018021501', '1112111', '11121111', 'User', 'cmuser', '0');

-- ----------------------------
-- View structure for vm_bahasa
-- ----------------------------
DROP VIEW IF EXISTS `vm_bahasa`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `vm_bahasa` AS SELECT a.fs_kd_bahasa,a.fs_nm_bahasa,b.fs_kd_legend,b.fs_nm_legend
FROM tm_bahasa a, tm_legend b
WHERE a.fs_kd_bahasa=b.fs_kd_bahasa ;
