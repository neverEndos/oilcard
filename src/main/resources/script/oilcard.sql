SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE IF EXISTS `oilcard`;
CREATE DATABASE `oilcard` DEFAULT CHARACTER SET utf8;
USE `oilcard`;

DROP TABLE IF EXISTS `oilcard_order`;
CREATE TABLE `oilcard_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '油卡订单id',
  `id_card` varchar(18) NOT NULL COMMENT '身份证号码',
  `actual_name` varchar(15) NOT NULL COMMENT '真实姓名',
  `shipping_address` varchar(32) NOT NULL COMMENT '收货地址',
  `phone` int(16) NOT NULL COMMENT '手机号码',
  `order_status` int(3) NOT NULL DEFAULT '0' COMMENT '订单状态',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `oilcard_user`;
CREATE TABLE `oilcard_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码，MD5加密',
  `phone` varchar(20) DEFAULT NULL,
  `reg_time` datetime NOT NULL COMMENT '注册时间',
  `role` int(4) NOT NULL COMMENT '角色0-管理员,1-普通用户',
  `sex` varchar(2) NOT NULL COMMENT '性别',
  `license_plate` varchar(10) COMMENT '车牌号',
  `car_models` varchar(24) COMMENT '车牌号',
  `last_login_time` datetime COMMENT '最后登录时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `shipping_address`;
CREATE TABLE `shipping_address` (
  `sa_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收货地址id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `is_default` int(2) NOT NULL DEFAULT '0' COMMENT '默认地址',
  `province` varchar(12) NOT NULL COMMENT '省',
  `city` varchar(12) NOT NULL COMMENT '市',
  `township` varchar(12) NOT NULL COMMENT '区',
  `address` varchar(36) NOT NULL COMMENT '详细地址',
  PRIMARY KEY (`said`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;