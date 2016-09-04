# Host: localhost  (Version: 5.6.28)
# Date: 2016-09-04 11:06:09
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

