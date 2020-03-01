/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2020-03-01 23:15:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(50) NOT NULL,
  `producetime` datetime DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  UNIQUE KEY `productname` (`productname`),
  KEY `providerid` (`providerid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `provider` (`providerid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '华为nova5', '2019-12-28 05:05:05', '1');
INSERT INTO `product` VALUES ('2', 'oppo r15', '2019-12-28 05:05:05', '2');

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `providerid` int(11) NOT NULL AUTO_INCREMENT,
  `providername` varchar(50) NOT NULL,
  PRIMARY KEY (`providerid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of provider
-- ----------------------------
INSERT INTO `provider` VALUES ('1', '华为');
INSERT INTO `provider` VALUES ('2', 'oppo');
