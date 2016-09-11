-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-09-05 16:36:47
-- 服务器版本： 5.7.11
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
(1, 'Hoveryourwings1', '111111'),
(2, 'Hoveryourwings2', '222222'),
(3, 'Hoveryourwings3', '333333'),
(4, 'Hoveryourwings4', '444444'),
(5, 'Hoveryourwings5', '555555');

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
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL DEFAULT '-1',
  `content` varchar(255) NOT NULL DEFAULT 'NULL',
  `rate` int(1) NOT NULL DEFAULT '0',
  `time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `comment_image`
--

CREATE TABLE `comment_image` (
  `ID` int(11) NOT NULL,
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
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
  `rate` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `goods_image`
--

CREATE TABLE `goods_image` (
  `ID` int(11) NOT NULL,
  `goods_ID` int(11) NOT NULL DEFAULT '-1',
  `url` varchar(128) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `rate` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'aaa', '123456'),
(2, 'bbb', '123456'),
(3, 'ccc', '654321'),
(4, 'ddd', '654321'),
(5, 'eee', '');

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
  `birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_infor`
--

INSERT INTO `user_infor` (`ID`, `name`, `sex`, `native`, `tel`, `email`, `birth`) VALUES
(1, 'zhuge', 1, '湖南', '18810931418', '2659682040@qq.com', '1995-07-28'),
(2, '朱舸', 1, 'hunan', '10086', '999999', '2016-09-01');

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
  ADD PRIMARY KEY (`user_ID`,`goods_ID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comment_image`
--
ALTER TABLE `comment_image`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`follow_ER`,`follow_EE`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `shop_ID` (`shop_ID`);

--
-- Indexes for table `goods_image`
--
ALTER TABLE `goods_image`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `goods_tag`
--
ALTER TABLE `goods_tag`
  ADD PRIMARY KEY (`goods_ID`,`tag_ID`);

--
-- Indexes for table `praise`
--
ALTER TABLE `praise`
  ADD PRIMARY KEY (`comment_ID`,`user_ID`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `comment_image`
--
ALTER TABLE `comment_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `goods_image`
--
ALTER TABLE `goods_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `record`
--
ALTER TABLE `record`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `school`
--
ALTER TABLE `school`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `tag`
--
ALTER TABLE `tag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `user_infor`
--
ALTER TABLE `user_infor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`shop_ID`) REFERENCES `shop` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
