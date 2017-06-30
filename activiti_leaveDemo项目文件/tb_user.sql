/*
Navicat MySQL Data Transfer

Source Server         : 3306
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : activiti2

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-06-27 10:18:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `duty` varchar(20) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '张三', '123456', '员工', '2');
INSERT INTO `tb_user` VALUES ('2', '李四', '123456', '部门经理', '3');
INSERT INTO `tb_user` VALUES ('3', '王五', '123456', '总经理', null);
