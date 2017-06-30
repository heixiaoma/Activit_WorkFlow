/*
Navicat MySQL Data Transfer

Source Server         : 3306
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : activiti2

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-06-27 10:18:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_leave
-- ----------------------------
DROP TABLE IF EXISTS `tb_leave`;
CREATE TABLE `tb_leave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `opinion` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `processInstanceId` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_leave
-- ----------------------------
INSERT INTO `tb_leave` VALUES ('25', '张三', '1', '看孩子', '2017-06-26 11:37:05', '开恩', '345017', '2');
INSERT INTO `tb_leave` VALUES ('26', '张三', '22', '睡觉', '2017-06-26 17:10:38', '&lt;input&gt;---haha注入', null, '0');
INSERT INTO `tb_leave` VALUES ('27', '张三', '12', 'fea', '2017-06-26 17:13:51', '<input>', null, '0');

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
