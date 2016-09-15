-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-09-15 05:03:34
-- 服务器版本： 5.6.28
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolfood`
--

DELIMITER $$
--
-- 存储过程
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `t1` (IN `maxprice` DOUBLE, OUT `lprice` DOUBLE)  BEGIN
	SELECT name,price
FROM goods
WHERE goods.price < maxprice ;
SET lprice=(SELECT MAX(price) FROM goods
         WHERE goods.price<maxprice);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `password` varchar(32) NOT NULL DEFAULT '000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`ID`, `name`, `password`) VALUES
(6, 'admin', '21232F297A57A5A743894A0E4A801FC3'),
(7, 'zhangsan', '01D7F40760960E7BD9443513F22AB9AF');

-- --------------------------------------------------------

--
-- 表的结构 `collection`
--

CREATE TABLE `collection` (
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `user_ID` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `comment_image`
--

CREATE TABLE `comment_image` (
  `ID` int(11) NOT NULL,
  `comment_ID` int(11) NOT NULL DEFAULT '-1',
  `url` varchar(128) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `friend`
--

CREATE TABLE `friend` (
  `follow_ER` int(11) NOT NULL DEFAULT '-1',
  `follow_EE` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `price` double(10,2) NOT NULL DEFAULT '-1.00',
  `shop_ID` int(11) NOT NULL DEFAULT '-1',
  `school_ID` int(11) NOT NULL,
  `rate` float(2,1) NOT NULL DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`ID`, `name`, `price`, `shop_ID`, `school_ID`, `rate`) VALUES
(1, 'qweqwr', 12.00, 25, 8, 0.0),
(2, '馒头', 1.00, 26, 11, 3.0),
(3, '窝头', 1.00, 26, 11, 0.0),
(4, '土豆丝', 5.00, 26, 11, 4.5),
(5, '麻婆豆腐', 10.00, 27, 8, 0.0),
(6, '美味鸡腿', 5.00, 27, 8, 0.0),
(7, '酱牛肉', 20.00, 27, 8, 0.0),
(8, '大虾', 20.00, 27, 8, 0.0);

-- --------------------------------------------------------

--
-- 表的结构 `goods_image`
--

CREATE TABLE `goods_image` (
  `ID` int(11) NOT NULL,
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `url` varchar(128) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_image`
--

INSERT INTO `goods_image` (`ID`, `goods_ID`, `url`) VALUES
(1, 1, 'http://ocsyd0pft.bkt.clouddn.com/FukTaeWt-eo8EttJgAmvXMk9qBJT'),
(2, 1, 'http://ocsyd0pft.bkt.clouddn.com/FgOqDOZjFLWj4ULLG0WBBuZ7e9V0'),
(3, 2, 'http://ocsyd0pft.bkt.clouddn.com/Fs_SXVmfWkrpJT_dk4wruwvDf-IL'),
(4, 3, 'http://ocsyd0pft.bkt.clouddn.com/FsKrXJWpj7TjBEOK9SFPMCYgFn3a'),
(5, 4, 'http://ocsyd0pft.bkt.clouddn.com/Frqa5MpNXVPTSL1Fpqv3_VDrENJH'),
(6, 5, 'http://ocsyd0pft.bkt.clouddn.com/FnQYNDkK__IebkxRovTwpHCvG5rK'),
(7, 6, 'http://ocsyd0pft.bkt.clouddn.com/FtzI-vn_C7JuOEW889T-a-cqzeMc'),
(8, 7, 'http://ocsyd0pft.bkt.clouddn.com/FnJiu5dJ9z8G295XZNeudTH0OObN'),
(9, 8, 'http://ocsyd0pft.bkt.clouddn.com/FihOMxL98ZCQPnAuoGbmewJIGGJj');

-- --------------------------------------------------------

--
-- 表的结构 `goods_tag`
--

CREATE TABLE `goods_tag` (
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `tag_ID` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pinglun`
--

CREATE TABLE `pinglun` (
  `ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `goods_ID` int(11) NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT 'NULL',
  `rate` float(2,1) NOT NULL DEFAULT '0.0',
  `time` datetime NOT NULL,
  `like_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pinglun`
--

INSERT INTO `pinglun` (`ID`, `user_ID`, `goods_ID`, `content`, `rate`, `time`, `like_num`) VALUES
(19, 16, 4, '999', 4.5, '2016-09-14 11:00:00', 11),
(22, 16, 2, '999', 3.0, '2016-09-14 07:00:00', 8);

--
-- 触发器 `pinglun`
--
DELIMITER $$
CREATE TRIGGER `tri_rate` AFTER INSERT ON `pinglun` FOR EACH ROW UPDATE goods SET goods.rate=(SELECT AVG(rate) FROM pinglun WHERE goods_ID=goods.ID)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `praise`
--

CREATE TABLE `praise` (
  `comment_ID` int(11) NOT NULL DEFAULT '-1',
  `user_ID` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `record`
--

CREATE TABLE `record` (
  `ID` int(11) NOT NULL,
  `keyword` varchar(128) NOT NULL DEFAULT '',
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `type` int(1) NOT NULL DEFAULT '2' COMMENT '0为商铺，1为商品，2为未定义',
  `time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `school`
--

CREATE TABLE `school` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `school`
--

INSERT INTO `school` (`ID`, `name`) VALUES
(8, '北京理工大学（中关村）'),
(9, '北京理工大学(良乡)'),
(10, '北京外国语大学'),
(11, '复旦大学');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE `shop` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `address` varchar(32) NOT NULL DEFAULT 'NULL',
  `image` varchar(128) NOT NULL DEFAULT 'NULL',
  `school_ID` int(11) NOT NULL DEFAULT '-1',
  `rate` float(2,1) NOT NULL DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`ID`, `name`, `address`, `image`, `school_ID`, `rate`) VALUES
(25, '第二食堂', '食堂路上', 'http://ocsyd0pft.bkt.clouddn.com/FtOuyRtntvgCMBWRvzfK5qDHd1WM', 8, 0.0),
(26, '旦苑', '相辉堂对面', 'http://ocsyd0pft.bkt.clouddn.com/FosngSp774IaFjgf8jfFPltnJZ8H', 11, 0.0),
(27, '第三食堂', '食堂路上', 'http://ocsyd0pft.bkt.clouddn.com/FuEs0WsyodAzDOQqNmPOkXmkPDCW', 8, 0.0),
(28, '第七食堂', '金榜缘上头', 'http://ocsyd0pft.bkt.clouddn.com/FkT7LaDEh2-0Nm0tm0lB3xNtlSSt', 8, 0.0),
(29, '清真餐厅', '食堂路上', 'http://ocsyd0pft.bkt.clouddn.com/FuBhtvbN2GFyuEqPytV0PoONequM', 8, 0.0),
(30, '教工食堂', '食堂路上', 'http://ocsyd0pft.bkt.clouddn.com/FopcjHaHi6W66L17IoF5La_hWP88', 8, 0.0);

-- --------------------------------------------------------

--
-- 表的结构 `tag`
--

CREATE TABLE `tag` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `token`
--

CREATE TABLE `token` (
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `token` varchar(128) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `password` varchar(32) NOT NULL DEFAULT '000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`ID`, `name`, `password`) VALUES
(16, 'zhuge', '555555');

-- --------------------------------------------------------

--
-- 表的结构 `user_infor`
--

CREATE TABLE `user_infor` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'NULL',
  `sex` int(1) NOT NULL DEFAULT '2' COMMENT '0为女性，1为男性，2为未标注',
  `native` varchar(20) NOT NULL DEFAULT 'NULL',
  `tel` varchar(11) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT 'NULL',
  `birth` date NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`user_ID`,`goods_ID`),
  ADD KEY `goods_ID` (`goods_ID`);

--
-- Indexes for table `comment_image`
--
ALTER TABLE `comment_image`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `goods_ID` (`comment_ID`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`follow_ER`,`follow_EE`),
  ADD KEY `follow_EE` (`follow_EE`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `shop_ID` (`shop_ID`),
  ADD KEY `school_ID` (`school_ID`);

--
-- Indexes for table `goods_image`
--
ALTER TABLE `goods_image`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `goods_ID` (`goods_ID`);

--
-- Indexes for table `goods_tag`
--
ALTER TABLE `goods_tag`
  ADD PRIMARY KEY (`goods_ID`,`tag_ID`),
  ADD KEY `tag_ID` (`tag_ID`);

--
-- Indexes for table `pinglun`
--
ALTER TABLE `pinglun`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `goods_ID` (`goods_ID`);

--
-- Indexes for table `praise`
--
ALTER TABLE `praise`
  ADD PRIMARY KEY (`comment_ID`,`user_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `school_ID` (`school_ID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`user_ID`,`token`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_infor`
--
ALTER TABLE `user_infor`
  ADD PRIMARY KEY (`ID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `comment_image`
--
ALTER TABLE `comment_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `goods_image`
--
ALTER TABLE `goods_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `pinglun`
--
ALTER TABLE `pinglun`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `record`
--
ALTER TABLE `record`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `school`
--
ALTER TABLE `school`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `tag`
--
ALTER TABLE `tag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 限制导出的表
--

--
-- 限制表 `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `comment_image`
--
ALTER TABLE `comment_image`
  ADD CONSTRAINT `comment_image_ibfk_1` FOREIGN KEY (`comment_ID`) REFERENCES `pinglun` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`follow_ER`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`follow_EE`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`shop_ID`) REFERENCES `shop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`shop_ID`) REFERENCES `shop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `goods_ibfk_3` FOREIGN KEY (`school_ID`) REFERENCES `school` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `goods_image`
--
ALTER TABLE `goods_image`
  ADD CONSTRAINT `goods_image_ibfk_1` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `goods_tag`
--
ALTER TABLE `goods_tag`
  ADD CONSTRAINT `goods_tag_ibfk_1` FOREIGN KEY (`tag_ID`) REFERENCES `tag` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `goods_tag_ibfk_2` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `pinglun`
--
ALTER TABLE `pinglun`
  ADD CONSTRAINT `pinglun_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinglun_ibfk_2` FOREIGN KEY (`goods_ID`) REFERENCES `goods` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `praise`
--
ALTER TABLE `praise`
  ADD CONSTRAINT `praise_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `praise_ibfk_2` FOREIGN KEY (`comment_ID`) REFERENCES `pinglun` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`school_ID`) REFERENCES `school` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `user_infor`
--
ALTER TABLE `user_infor`
  ADD CONSTRAINT `user_infor_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
