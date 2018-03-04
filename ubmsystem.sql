/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : ubmsystem

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2018-02-01 09:42:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` char(10) NOT NULL,
  `RemainCoinNum` int(11) DEFAULT '50',
  `OccupiedVolume` int(11) DEFAULT '0',
  `DonationNumber` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('0001', '50', '0', '0');
INSERT INTO `device` VALUES ('0002', '50', '0', '0');
INSERT INTO `device` VALUES ('0003', '48', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `idnum` char(18) DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `privilege` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `dates`  date NULL,
  `content` varchar(500) NOT NULL,
  `picUrl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `userName` varchar(50) NULL,
  `dates` date NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

insert into `comment` values(1,'NEW01','Jack','2017-10-21','台北一男子身份证号123456789，多次被怀疑是假证');
insert into `comment` values(2,'NEW02','Mike','2017-10-21','上海一男子投河自杀，嫌河脏又爬上来');
insert into `comment` values(3,'NEW03','Nicki','2017-02-18','北京一饭店为尽早打烊，冬天开冷风轰客');
insert into `comment` values(4,'NEW04','Beyonce','2017-01-02','海南一老板白天发工资民工，晚上派人去抢');
insert into `comment` values(5,'NEW05','Rihanna','2018-02-02','郑州一男子高级皮带解不开，两天不敢吃东西');
insert into `comment` values(6,'NEW06','Maroon','2018-03-02','墨西哥一电视剧连续35年播出，现在已到12500集');


insert into `info` values('台北一男子身份证号123456789，多次被怀疑是假证','2017-10-21','台北一男子身份证号123456789，多次被怀疑是假证','images/info1.jpg');
insert into `info` values(2,'上海一男子投河自杀，嫌河脏又爬上来','2015-10-21','上海一男子投河自杀，嫌河脏又爬上来','images/info2.jpg');
insert into `info` values(3,'北京一饭店为尽早打烊，冬天开冷风轰客','2017-02-18','北京一饭店为尽早打烊，冬天开冷风轰客','images/info3.jpg');
insert into `info` values(4,'海南一老板白天发工资民工，晚上派人去抢','2017-01-02','海南一老板白天发工资民工，晚上派人去抢','images/info4.jpg');
insert into `info` values(5,'郑州一男子高级皮带解不开，两天不敢吃东西','2018-02-02','郑州一男子高级皮带解不开，两天不敢吃东西','images/info5.jpg');
insert into `info` values(6,'墨西哥一电视剧连续35年播出，现在已到12500集','2018-03-02','墨西哥一电视剧连续35年播出，现在已到12500集','images/info1.jpg');

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('17', 'qsm', 'bedc84f81fd19e21e09d9c4203a55564', '男', '1240443627@163.com', '13970409912', '362524198927265678', '0', '1');
INSERT INTO `user` VALUES ('18', 'lxc', '3f0a069a532ce248c5a74e96c42018d6', '男', 'liuxinchen1997@163.com', '18755664455', '340702199708563333', '0', '1');
INSERT INTO `user` VALUES ('19', 'aaa', '7bc8996a7ff3d0c853c7ef1e02c7e27a', '男', 'aaaaa@163.com', '18766662222', '340702467878333232', '0', '1');

-- ----------------------------
-- View structure for admin
-- ----------------------------
DROP VIEW IF EXISTS `admin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin` AS select `user`.`id` AS `id`,`user`.`username` AS `username`,`user`.`password` AS `password`,`user`.`privilege` AS `privilege` from `user` where (`user`.`privilege` > 1) ;
