/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : wardrobe

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2020-03-24 16:28:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员表id',
  `name` varchar(255) DEFAULT NULL COMMENT '管理员姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  `type_id` int(11) DEFAULT NULL COMMENT '管理员类型id',
  PRIMARY KEY (`id`),
  KEY `type_fk` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'superadmin', '111111', '1');
INSERT INTO `admin` VALUES ('16', 'useradmin', '000000', '2');
INSERT INTO `admin` VALUES ('17', 'admin2', '000000', '2');
INSERT INTO `admin` VALUES ('18', 'admin3', '000000', '2');
INSERT INTO `admin` VALUES ('19', 'admin4', '000000', '2');
INSERT INTO `admin` VALUES ('23', 'admin6', '000000', '2');
INSERT INTO `admin` VALUES ('24', 'admin7', '000000', '2');
INSERT INTO `admin` VALUES ('25', 'admin8', '000000', '2');

-- ----------------------------
-- Table structure for `admin_type`
-- ----------------------------
DROP TABLE IF EXISTS `admin_type`;
CREATE TABLE `admin_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '管理员类型名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_type
-- ----------------------------
INSERT INTO `admin_type` VALUES ('1', '超级管理员');
INSERT INTO `admin_type` VALUES ('2', '用户管理员');

-- ----------------------------
-- Table structure for `clothes`
-- ----------------------------
DROP TABLE IF EXISTS `clothes`;
CREATE TABLE `clothes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服装单品表id',
  `uid` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT '服装类型id',
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服装名称',
  `season_id` int(20) DEFAULT NULL COMMENT '季节id',
  `src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片地址',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服装描述',
  `count` int(11) DEFAULT '0' COMMENT '单品服装热度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of clothes
-- ----------------------------
INSERT INTO `clothes` VALUES ('1', '1', '3', '鞋子1', '1', 'upload/1/clothes/20200315101136.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('2', '1', '3', '鞋子2', '1', 'upload/1/clothes/20200315101212.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('3', '1', '3', '鞋子3', '1', 'upload/1/clothes/20200315101239.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('4', '1', '1', '上衣1', '1', 'upload/1/clothes/20200315101503.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('5', '1', '1', '上衣2', '1', 'upload/1/clothes/20200315101521.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('6', '1', '1', '上衣3', '1', 'upload/1/clothes/20200315101540.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('7', '1', '1', '上衣4', '1', 'upload/1/clothes/20200315101600.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('8', '1', '1', '上衣5', '1', 'upload/1/clothes/20200315101644.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('9', '1', '1', '上衣6', '1', 'upload/1/clothes/20200315101659.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('10', '1', '1', '上衣7', '1', 'upload/1/clothes/20200315101717.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('11', '1', '2', '裤子1', '1', 'upload/1/clothes/20200315101758.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('12', '1', '2', '裤子2', '1', 'upload/1/clothes/20200315101823.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('13', '1', '3', '裤子3', '1', 'upload/1/clothes/20200315101838.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('14', '1', '2', '裤子4', '1', 'upload/1/clothes/20200315101859.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('15', '1', '2', '裤子5', '1', 'upload/1/clothes/20200315101923.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');
INSERT INTO `clothes` VALUES ('16', '1', '3', '鞋子4', '1', 'upload/1/clothes/20200315102220.png', '领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！领部细节：经典的圆领设计，简单大方，时尚百搭。\r\n后领部细节：后领部采用披肩领设计，个性独特，时尚大方。\r\n领口细节：大方的圆领，双层线包边不一样的感觉哦。\r\n穿着更舒适，车缝线工整让。\r\n口袋细节：两侧大口袋方便使用，位置靠下，插口袋的姿势更有气场！', '0');

-- ----------------------------
-- Table structure for `clothes_type`
-- ----------------------------
DROP TABLE IF EXISTS `clothes_type`;
CREATE TABLE `clothes_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(255) DEFAULT NULL COMMENT '衣服类型名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clothes_type
-- ----------------------------
INSERT INTO `clothes_type` VALUES ('1', '上衣');
INSERT INTO `clothes_type` VALUES ('2', '下衣');
INSERT INTO `clothes_type` VALUES ('3', '鞋子');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论表id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `sid` int(11) DEFAULT NULL COMMENT '套装id',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `count` int(11) DEFAULT NULL COMMENT '评论热度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `season`
-- ----------------------------
DROP TABLE IF EXISTS `season`;
CREATE TABLE `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '季节表id',
  `name` varchar(255) DEFAULT NULL COMMENT '季节名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of season
-- ----------------------------
INSERT INTO `season` VALUES ('1', '春季');
INSERT INTO `season` VALUES ('2', '夏季');
INSERT INTO `season` VALUES ('3', '秋季');
INSERT INTO `season` VALUES ('4', '冬季');

-- ----------------------------
-- Table structure for `suit`
-- ----------------------------
DROP TABLE IF EXISTS `suit`;
CREATE TABLE `suit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套装表id',
  `coat_id` int(11) DEFAULT NULL COMMENT '上衣id',
  `pants_id` int(11) DEFAULT NULL COMMENT '裤子id',
  `shoes_id` int(11) DEFAULT NULL COMMENT '鞋子id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '套装名称',
  `season_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '季节id',
  `count` int(11) DEFAULT '0' COMMENT '套装热度',
  `src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '套装描述',
  `share` int(11) DEFAULT '0' COMMENT '是否分享',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of suit
-- ----------------------------
INSERT INTO `suit` VALUES ('1', '8', '11', '2', '1', '套装1', '1', '10', 'upload/1/suit/20200315104037.png', '套装1', '1');
INSERT INTO `suit` VALUES ('2', '4', '11', '2', '1', '套装2', '1', '8', 'upload/1/suit/20200315104202.png', '套装2', '1');
INSERT INTO `suit` VALUES ('3', '8', '12', '2', '2', '套装3', '1', '2', 'upload/1/suit/20200315104234.png', '套装3', '1');
INSERT INTO `suit` VALUES ('4', '4', '12', '2', '2', '套装4', '1', '0', 'upload/1/suit/20200315104315.png', '套装4', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'user1', '000000', '1');
INSERT INTO `user` VALUES ('2', 'user2', 'user2', '1');
INSERT INTO `user` VALUES ('3', 'user3', 'user3', '1');
INSERT INTO `user` VALUES ('4', 'user4', 'user4', '1');
INSERT INTO `user` VALUES ('5', 'user5', 'user5', '1');
INSERT INTO `user` VALUES ('6', 'user6', 'user6', '1');
INSERT INTO `user` VALUES ('7', 'user', '000000', '1');
