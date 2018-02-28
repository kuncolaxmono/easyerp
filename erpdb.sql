/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100129
Source Host           : localhost:3306
Source Database       : erpdb

Target Server Type    : MYSQL
Target Server Version : 100129
File Encoding         : 65001

Date: 2018-02-23 14:20:07
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
