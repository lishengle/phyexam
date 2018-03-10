/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : phyexam

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-07-08 17:00:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `num` varchar(11) CHARACTER SET utf8 NOT NULL,
  `name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `balance` float DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('001', '周敬松', '183285', '1234', '1000');
INSERT INTO `account` VALUES ('002', '超', '177', '1234', '9000');
INSERT INTO `account` VALUES ('003', '你们', '9999', '1234', null);
INSERT INTO `account` VALUES ('11111', '小虫虫', '119', '1111', null);

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `num` varchar(11) NOT NULL,
  `name` varchar(11) DEFAULT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('001', 'doctor1', '111');

-- ----------------------------
-- Table structure for `phyexamer`
-- ----------------------------
DROP TABLE IF EXISTS `phyexamer`;
CREATE TABLE `phyexamer` (
  `number` varchar(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `height` float(20,0) DEFAULT NULL,
  `weight` float(20,0) DEFAULT NULL,
  `bmi` float(20,0) DEFAULT NULL,
  `bp` varchar(255) DEFAULT NULL,
  `p` float(20,0) DEFAULT NULL,
  `eye_appearance` varchar(255) DEFAULT NULL,
  `lefteye` float(20,0) DEFAULT NULL,
  `eye_ground` varchar(255) DEFAULT NULL,
  `righteye` float(20,0) DEFAULT NULL,
  `external_acoustic_meatus` varchar(255) DEFAULT NULL,
  `eardrum` varchar(255) DEFAULT NULL,
  `nasal_cavity` varchar(255) DEFAULT NULL,
  `nasal_septum` varchar(255) DEFAULT NULL,
  `tonsil` varchar(255) DEFAULT NULL,
  `pharyngeal` varchar(255) DEFAULT NULL,
  `liver` varchar(255) DEFAULT NULL,
  `bellows` varchar(255) DEFAULT NULL,
  `abdomen` varchar(255) DEFAULT NULL,
  `superficial_lymph_nodes` varchar(255) DEFAULT NULL,
  `thyroid` varchar(255) DEFAULT NULL,
  `spine` varchar(255) DEFAULT NULL,
  `limb` varchar(255) DEFAULT NULL,
  `skin` varchar(255) DEFAULT NULL,
  `white_corpuscles` float(20,0) DEFAULT NULL,
  `hemoglobin` float(20,0) DEFAULT NULL,
  `platelet` float(20,0) DEFAULT NULL,
  `alt` float(20,0) DEFAULT NULL,
  `ast` float(20,0) DEFAULT NULL,
  `total_bilirubin` float(20,0) DEFAULT NULL,
  `bun` float(20,0) DEFAULT NULL,
  `ggt` float(20,0) DEFAULT NULL,
  `akp` float(20,0) DEFAULT NULL,
  `tc` float(20,0) DEFAULT NULL,
  `tg` float(20,0) DEFAULT NULL,
  `hdl` float(20,0) DEFAULT NULL,
  `ldl` float(20,0) DEFAULT NULL,
  `blood_sugar` float(20,0) DEFAULT NULL,
  `cr` float(20,0) DEFAULT NULL,
  `uric_acid` float(20,0) DEFAULT NULL,
  `afp` float(20,0) DEFAULT NULL,
  `cea` float(20,0) DEFAULT NULL,
  `result` varchar(2000) DEFAULT NULL,
  `advice` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phyexamer
-- ----------------------------
INSERT INTO `phyexamer` VALUES ('1', 'office', '001', '2017-05-30', '周敬松', '男', '21', '183285', '2', '1001', '4', '', '56', '4', '2', '1', '3', '5', '', '', '', '', '', '2', '', '', '异常', '异常', '正常', '正常', '正常', '6', '7', '6', '7', '6', '76', '7', '55', '60', '6', '7', '8', '11', '180', '88', '166', '17', '5', '正常', '无');
INSERT INTO `phyexamer` VALUES ('2', 'father', '002', '2017-05-30', '张三', '男', '50', '110', '158', '50', '20', '130/80', '90', '正常', '5', '正常', '5', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '7', '129', '188', '30', '33', '19', '4', '35', '58', '4', '2', '1', '3', '6', '86', '180', '20', '3', '正常', '继续保持');
INSERT INTO `phyexamer` VALUES ('3', 'mather', '003', '2017-05-19', '宋超', '男', '22', '119', '101', '101', '0', '101', '101', '正常', '3', '正常', '5', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '正常', '未见异常', '异常', '正常', '异常', '异常', '正常', '4', '132', '177', '32', '34', '23', '8', '37', '43', '9', '7', '8', '4', '210', '79', '190', '22', '3', '异常', '无');
INSERT INTO `phyexamer` VALUES ('4', 'office', '001', '2017-05-03', '周敬松', null, null, '183285', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `phyexamer` VALUES ('5', 'mother', '001', null, '周敬松', null, null, '183285', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `phyexamer` VALUES ('6', 'father', '002', null, '超', null, null, '177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `phyexamer` VALUES ('7', 'mother', '002', null, '超', null, null, '177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `phyexamer` VALUES ('8', 'father', '002', null, '超', null, null, '177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
