# Host: localhost  (Version: 5.6.28)
# Date: 2016-09-04 23:02:02
# Generator: MySQL-Front 5.3  (Build 4.263)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) NOT NULL DEFAULT 'NULL',
  `apassword` varchar(32) NOT NULL DEFAULT '000000',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#


#
# Structure for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `content` varchar(255) NOT NULL DEFAULT 'NULL',
  `time` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "comment"
#


#
# Structure for table "comment_image"
#

DROP TABLE IF EXISTS `comment_image`;
CREATE TABLE `comment_image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `url` varchar(128) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "comment_image"
#


#
# Structure for table "goods_image"
#

DROP TABLE IF EXISTS `goods_image`;
CREATE TABLE `goods_image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `url` varchar(128) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "goods_image"
#


#
# Structure for table "school"
#

DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "school"
#


#
# Structure for table "shop"
#

DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `address` varchar(32) NOT NULL DEFAULT 'NULL',
  `image` varchar(128) NOT NULL DEFAULT 'NULL',
  `school_ID` int(11) NOT NULL DEFAULT '-1',
  `rate` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "shop"
#


#
# Structure for table "goods"
#

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `price` double(10,2) NOT NULL DEFAULT '-1.00',
  `shop_ID` int(11) NOT NULL DEFAULT '-1',
  `rate` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `shop_ID` (`shop_ID`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`shop_ID`) REFERENCES `shop` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "goods"
#


#
# Structure for table "token"
#

DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `token` varchar(128) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "token"
#


#
# Structure for table "uinfor"
#

DROP TABLE IF EXISTS `uinfor`;
CREATE TABLE `uinfor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `sex` int(1) NOT NULL DEFAULT '2' COMMENT '0为女性，1为男性，2为未标注',
  `birth` date NOT NULL DEFAULT '0000-00-00',
  `native` varchar(20) NOT NULL DEFAULT 'NULL',
  `tel` varchar(11) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "uinfor"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL DEFAULT 'NULL',
  `upassword` varchar(32) NOT NULL DEFAULT '000000',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#


#
# Structure for table "user_infor"
#

DROP TABLE IF EXISTS `user_infor`;
CREATE TABLE `user_infor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `sex` int(1) NOT NULL DEFAULT '2' COMMENT '0为女性，1为男性，2为未标注',
  `birth` date NOT NULL DEFAULT '0000-00-00',
  `native` varchar(20) NOT NULL DEFAULT 'NULL',
  `tel` varchar(11) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user_infor"
#

