SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE IF EXISTS `oilcard`;
CREATE DATABASE `oilcard` DEFAULT CHARACTER SET utf8;
USE `oilcard`;

DROP TABLE IF EXISTS `oilcard_user`;
CREATE TABLE `oilcard_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码，MD5加密',
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL COMMENT '用户头像地址',
  `oilcard_number` int(4) NOT NULL COMMENT '用户拥有的油卡数',
  `role` int(4) NOT NULL COMMENT '角色0-管理员,1-普通用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `oilcard_info`;
CREATE TABLE `oilcard_info` (
  `oilcard_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '油卡ID',
  `user_id` int(11) NOT NULL COMMENT '用户表id',
  `oilcard_brand` varchar(50) NOT NULL COMMENT '油卡品牌',
  `oilcard_password` varchar(50) NOT NULL COMMENT '油卡密码',
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `identification_number` varchar(20) NOT NULL COMMENT '身份证号码',
  `oilcard_balance` decimal(20,2) NOT NULL COMMENT '油卡余额',
  `oilcard_shipping_address` varchar(100) NOT NULL COMMENT '邮寄地址'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;