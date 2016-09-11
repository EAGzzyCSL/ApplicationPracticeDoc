-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2016 at 06:22 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolfood`
--
CREATE DATABASE IF NOT EXISTS `schoolfood` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `schoolfood`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `password` varchar(32) NOT NULL DEFAULT '000000',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `name`, `password`) VALUES
(1, 'Hoveryourwings1', '111111'),
(2, 'Hoveryourwings2', '222222'),
(3, 'Hoveryourwings3', '333333'),
(4, 'Hoveryourwings4', '444444'),
(5, 'Hoveryourwings5', '555555');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE IF NOT EXISTS `collection` (
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`user_ID`,`goods_ID`),
  KEY `goods_ID` (`goods_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`goods_ID`, `user_ID`) VALUES
(1, 11),
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `goods_ID` int(11) NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT 'NULL',
  `rate` float(2,1) NOT NULL DEFAULT '0.0',
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_ID` (`user_ID`),
  KEY `goods_ID` (`goods_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`ID`, `user_ID`, `goods_ID`, `content`, `rate`, `time`) VALUES
(2, 11, 1, '卡刷卡的金卡', 4.3, '2016-09-06 00:24:19.127000'),
(3, 11, 3, '精神可嘉', 4.3, '2016-09-06 11:34:22.000000'),
(4, 11, 6, '你好搞笑', 4.3, '2016-09-06 11:37:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `comment_image`
--

CREATE TABLE IF NOT EXISTS `comment_image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `url` varchar(128) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`),
  KEY `goods_ID` (`goods_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comment_image`
--

INSERT INTO `comment_image` (`ID`, `goods_ID`, `url`) VALUES
(1, 1, 'NULL'),
(2, 1, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE IF NOT EXISTS `friend` (
  `follow_ER` int(11) NOT NULL DEFAULT '-1',
  `follow_EE` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`follow_ER`,`follow_EE`),
  KEY `follow_EE` (`follow_EE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`follow_ER`, `follow_EE`) VALUES
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `price` double(10,2) NOT NULL DEFAULT '-1.00',
  `shop_ID` int(11) NOT NULL DEFAULT '-1',
  `school_ID` int(11) NOT NULL,
  `rate` float(2,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`ID`),
  KEY `shop_ID` (`shop_ID`),
  KEY `school_ID` (`school_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`ID`, `name`, `price`, `shop_ID`, `school_ID`, `rate`) VALUES
(1, '魔的菜1', 123.30, 3, 3, 4.3),
(2, '魔的菜2', 4.70, 3, 3, 3.5),
(3, '魔的菜3', 200.30, 3, 3, 2.3),
(4, '魔的菜4', 2.30, 3, 3, 4.3),
(5, '魔的菜5', 22.30, 3, 3, 3.4),
(6, '魔的菜6', 4.80, 3, 3, 3.3),
(7, '魔的菜7', 5.30, 3, 3, 4.9),
(8, '魔的菜8', 7.30, 3, 3, 3.9),
(9, '魔的菜9', 5.66, 3, 3, 3.9),
(10, '魔的菜10', 4.80, 3, 3, 4.3),
(11, '魔的菜11', 7.43, 3, 3, 1.9),
(12, '魔的菜12', 88.20, 3, 3, 2.9),
(13, '魔的菜13', 38.20, 3, 3, 3.8),
(14, '魔的菜14', 56.30, 3, 3, 3.4),
(15, '魔的菜15', 7.90, 3, 3, 2.6),
(16, '魔的菜16', 38.80, 3, 3, 2.7),
(17, '魔的菜17', 2.40, 3, 3, 4.2),
(18, '魔的菜18', 7.90, 3, 3, 3.3),
(19, '魔的菜19', 67.30, 3, 3, 3.2),
(20, '魔的菜20', 8.20, 3, 3, 4.9),
(21, '神的菜1', 78.30, 4, 3, 4.9),
(22, '神的菜2', 78.40, 4, 3, 3.9),
(23, '校长的菜1', 100000.23, 3, 3, 0.9),
(24, '校长的菜2', 120003.99, 3, 3, 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `goods_image`
--

CREATE TABLE IF NOT EXISTS `goods_image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `url` varchar(128) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`),
  KEY `goods_ID` (`goods_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `goods_image`
--

INSERT INTO `goods_image` (`ID`, `goods_ID`, `url`) VALUES
(1, 3, 'NULL'),
(2, 5, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `goods_tag`
--

CREATE TABLE IF NOT EXISTS `goods_tag` (
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `tag_ID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`goods_ID`,`tag_ID`),
  KEY `tag_ID` (`tag_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goods_tag`
--

INSERT INTO `goods_tag` (`goods_ID`, `tag_ID`) VALUES
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `praise`
--

CREATE TABLE IF NOT EXISTS `praise` (
  `comment_ID` int(11) NOT NULL DEFAULT '-1',
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`comment_ID`,`user_ID`),
  KEY `user_ID` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `praise`
--

INSERT INTO `praise` (`comment_ID`, `user_ID`) VALUES
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(128) NOT NULL DEFAULT '',
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `type` int(1) NOT NULL DEFAULT '2' COMMENT '0为商铺，1为商品，2为未定义',
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_ID` (`user_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`ID`, `keyword`, `user_ID`, `type`, `time`) VALUES
(1, '魔的', 11, 1, '2016-09-06 09:36:47.000000'),
(2, '魔的', 11, 1, '2016-09-06 09:39:07.000000'),
(3, '魔的', 11, 1, '2016-09-06 09:40:18.000000'),
(4, '魔神', 11, 0, '2016-09-06 09:56:02.000000');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`ID`, `name`) VALUES
(1, '上机房空间'),
(2, '时刻'),
(3, '收款方'),
(4, '皆可为'),
(5, '加壳'),
(6, '地球理工大学'),
(7, '中国太空战研究所');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `address` varchar(32) NOT NULL DEFAULT 'NULL',
  `image` varchar(128) NOT NULL DEFAULT 'NULL',
  `school_ID` int(11) NOT NULL DEFAULT '-1',
  `rate` float(2,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`ID`),
  KEY `school_ID` (`school_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`ID`, `name`, `address`, `image`, `school_ID`, `rate`) VALUES
(3, '大魔神1号店', 'NULL', 'NULL', 1, 3.9),
(4, '大魔神2号店', 'NULL', 'NULL', 1, 4.8),
(5, '大魔神3号店', 'NULL', 'NULL', 1, 3.8),
(6, '大魔神4号店', 'NULL', 'NULL', 1, 2.1),
(7, '大魔神5号店', 'NULL', 'NULL', 1, 5.0),
(8, '大魔神6号店', 'NULL', 'NULL', 1, 4.8),
(9, '大魔神7号店', 'NULL', 'NULL', 1, 4.1),
(10, '大魔神8号店', 'NULL', 'NULL', 1, 3.2),
(11, '大魔神9号店', 'NULL', 'NULL', 1, 0.9),
(12, '大魔神10号店', 'NULL', 'NULL', 1, 1.9),
(13, '大魔神11号店', 'NULL', 'NULL', 1, 2.8),
(14, '大魔神12号店', 'NULL', 'NULL', 1, 3.6),
(15, '大魔神13号店', 'NULL', 'NULL', 1, 4.9),
(16, '大魔神14号店', 'NULL', 'NULL', 1, 3.7),
(17, '大魔神15号店', 'NULL', 'NULL', 1, 4.1),
(18, '大魔神16号店', 'NULL', 'NULL', 1, 3.4),
(19, '大魔神17号店', 'NULL', 'NULL', 1, 2.8),
(20, '大魔神18号店', 'NULL', 'NULL', 1, 3.0),
(21, '大魔神19号店', 'NULL', 'NULL', 1, 3.9),
(22, '大魔神20号店', 'NULL', 'NULL', 1, 4.2),
(23, '大魔神21号店', 'NULL', 'NULL', 1, 2.9),
(24, '大魔神22号店', 'NULL', 'NULL', 3, 3.6);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`ID`, `name`) VALUES
(1, '粤菜'),
(2, '川菜');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `token` varchar(128) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`user_ID`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_ID`, `token`) VALUES
(11, 'd652579899517c237d5af14b9596afb862e40717');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `password` varchar(32) NOT NULL DEFAULT '000000',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `name`, `password`) VALUES
(1, 'aaa', '123456'),
(2, 'bbb', '123456'),
(3, 'ccc', '654321'),
(4, 'ddd', '654321'),
(6, 'zhuge', '123456'),
(7, '朱舸', '000000'),
(11, '天下', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `user_infor`
--

CREATE TABLE IF NOT EXISTS `user_infor` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `sex` int(1) NOT NULL DEFAULT '2' COMMENT '0为女性，1为男性，2为未标注',
  `native` varchar(20) NOT NULL DEFAULT 'NULL',
  `tel` varchar(11) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT 'NULL',
  `birth` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_infor`
--

INSERT INTO `user_infor` (`ID`, `name`, `sex`, `native`, `tel`, `email`, `birth`) VALUES
(6, 'zhuge', 1, '湖南', '120', '111', '1995-07-28'),
(7, '朱舸', 1, 'hunan', '10086', '999999', '2016-09-01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`),
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `comment_image`
--
ALTER TABLE `comment_image`
  ADD CONSTRAINT `comment_image_ibfk_1` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`);

--
-- Constraints for table `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`follow_EE`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`follow_ER`) REFERENCES `user` (`ID`);

--
-- Constraints for table `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_3` FOREIGN KEY (`school_ID`) REFERENCES `school` (`ID`),
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`shop_ID`) REFERENCES `shop` (`ID`),
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`shop_ID`) REFERENCES `shop` (`ID`);

--
-- Constraints for table `goods_image`
--
ALTER TABLE `goods_image`
  ADD CONSTRAINT `goods_image_ibfk_1` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`);

--
-- Constraints for table `goods_tag`
--
ALTER TABLE `goods_tag`
  ADD CONSTRAINT `goods_tag_ibfk_2` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`),
  ADD CONSTRAINT `goods_tag_ibfk_1` FOREIGN KEY (`tag_ID`) REFERENCES `tag` (`ID`);

--
-- Constraints for table `praise`
--
ALTER TABLE `praise`
  ADD CONSTRAINT `praise_ibfk_2` FOREIGN KEY (`comment_ID`) REFERENCES `comment` (`ID`),
  ADD CONSTRAINT `praise_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`school_ID`) REFERENCES `school` (`ID`);

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `user_infor`
--
ALTER TABLE `user_infor`
  ADD CONSTRAINT `user_infor_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
