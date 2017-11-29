/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : cook

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-11-29 11:56:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `business_inf`
-- ----------------------------
DROP TABLE IF EXISTS `business_inf`;
CREATE TABLE `business_inf` (
  `businessid` int(11) NOT NULL,
  `businessname` char(20) DEFAULT NULL,
  `chargeman` char(5) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  `adress` char(50) DEFAULT NULL,
  `describe` char(50) DEFAULT NULL,
  PRIMARY KEY (`businessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business_inf
-- ----------------------------

-- ----------------------------
-- Table structure for `menu_inf`
-- ----------------------------
DROP TABLE IF EXISTS `menu_inf`;
CREATE TABLE `menu_inf` (
  `menuid` int(11) NOT NULL,
  `businessid` int(11) NOT NULL,
  `name` char(10) DEFAULT NULL,
  `flavor` char(5) DEFAULT NULL,
  `describe` char(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`menuid`),
  KEY `businessid` (`businessid`),
  CONSTRAINT `menu_inf_ibfk_1` FOREIGN KEY (`businessid`) REFERENCES `business_inf` (`businessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_inf
-- ----------------------------

-- ----------------------------
-- Table structure for `plan_inf`
-- ----------------------------
DROP TABLE IF EXISTS `plan_inf`;
CREATE TABLE `plan_inf` (
  `planid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `weight` double(11,2) DEFAULT NULL,
  `length` double(11,2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `decribe` char(100) DEFAULT NULL,
  `BMI` double(11,2) DEFAULT NULL,
  `plandetail` text,
  PRIMARY KEY (`planid`),
  KEY `id` (`id`),
  CONSTRAINT `plan_inf_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_inf` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_inf
-- ----------------------------

-- ----------------------------
-- Table structure for `sharing_inf`
-- ----------------------------
DROP TABLE IF EXISTS `sharing_inf`;
CREATE TABLE `sharing_inf` (
  `sharingid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `place` char(30) DEFAULT NULL,
  `label` char(10) DEFAULT NULL,
  `enclosure` varchar(200) DEFAULT NULL,
  `words` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sharingid`),
  KEY `id` (`id`),
  CONSTRAINT `sharing_inf_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_inf` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sharing_inf
-- ----------------------------

-- ----------------------------
-- Table structure for `user_inf`
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `id` int(11) NOT NULL,
  `password` char(6) DEFAULT NULL,
  `nickname` char(20) DEFAULT NULL,
  `occupation` char(10) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
