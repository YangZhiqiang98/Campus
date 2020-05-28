/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : c2c

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 27/05/2020 10:07:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `money` decimal(10, 2) DEFAULT NULL COMMENT '金额',
  `create_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recipient` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deaddress` tinyint(1) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '山西省太原理工大学', '杨志强', '18234232034', 1, 12);
INSERT INTO `address` VALUES (2, '山西省晋中市太原理工大学', '杨志强', '18234232034', 0, 12);
INSERT INTO `address` VALUES (3, '湖南省衡阳市不知道街道', '王湘凯', '15555555555', 1, 13);
INSERT INTO `address` VALUES (4, '湖南省衡阳市不知道街道6号', '王湘凯', '15555555555', 0, 13);
INSERT INTO `address` VALUES (5, '海南万宁市不知道街道8号', '朱厚宇', '18255555555', 1, 16);
INSERT INTO `address` VALUES (6, '山西省晋中市宁波宿舍', '朱厚宇', '18255555555', 0, 16);

-- ----------------------------
-- Table structure for admininformation
-- ----------------------------
DROP TABLE IF EXISTS `admininformation`;
CREATE TABLE `admininformation`  (
  `id` int(11) NOT NULL,
  `ano` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for adminoperation
-- ----------------------------
DROP TABLE IF EXISTS `adminoperation`;
CREATE TABLE `adminoperation`  (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `modified` datetime(0) DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for allkinds
-- ----------------------------
DROP TABLE IF EXISTS `allkinds`;
CREATE TABLE `allkinds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allkinds
-- ----------------------------
INSERT INTO `allkinds` VALUES (1, '经济金融', '2020-04-14 13:28:20');
INSERT INTO `allkinds` VALUES (2, '教育考试', '2020-04-14 13:28:23');
INSERT INTO `allkinds` VALUES (3, '文化历史', '2020-04-14 13:28:26');
INSERT INTO `allkinds` VALUES (4, '计算机IT', '2020-04-14 13:28:28');
INSERT INTO `allkinds` VALUES (5, '其他', '2020-04-14 13:28:31');
INSERT INTO `allkinds` VALUES (6, '政治军事', '2020-04-14 13:28:41');

-- ----------------------------
-- Table structure for boughtshop
-- ----------------------------
DROP TABLE IF EXISTS `boughtshop`;
CREATE TABLE `boughtshop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime(0) DEFAULT NULL,
  `aid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES (1, '经济学', NULL, 1);
INSERT INTO `classification` VALUES (2, '会计', NULL, 1);
INSERT INTO `classification` VALUES (3, '工具书', NULL, 1);
INSERT INTO `classification` VALUES (4, '教学理论', NULL, 2);
INSERT INTO `classification` VALUES (5, '考试书籍', NULL, 2);
INSERT INTO `classification` VALUES (6, '中国史', NULL, 3);
INSERT INTO `classification` VALUES (7, '世界史', NULL, 3);
INSERT INTO `classification` VALUES (8, '文物考古', NULL, 3);
INSERT INTO `classification` VALUES (9, '地域文化', NULL, 3);
INSERT INTO `classification` VALUES (10, '史学理论', NULL, 3);
INSERT INTO `classification` VALUES (11, '国学古籍', NULL, 3);
INSERT INTO `classification` VALUES (12, '专业书籍', NULL, 4);
INSERT INTO `classification` VALUES (13, '专业习题', NULL, 4);
INSERT INTO `classification` VALUES (14, '彩绘文具', NULL, 5);
INSERT INTO `classification` VALUES (15, '纸本', NULL, 5);
INSERT INTO `classification` VALUES (16, '文具', NULL, 5);
INSERT INTO `classification` VALUES (17, '其他', NULL, 5);
INSERT INTO `classification` VALUES (18, '思想', NULL, 6);
INSERT INTO `classification` VALUES (19, '军事', NULL, 6);
INSERT INTO `classification` VALUES (20, '其他', NULL, 6);

-- ----------------------------
-- Table structure for goodscar
-- ----------------------------
DROP TABLE IF EXISTS `goodscar`;
CREATE TABLE `goodscar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodscar
-- ----------------------------
INSERT INTO `goodscar` VALUES (1, '2020-05-12 03:41:05', 1111, 12, 1, 0);
INSERT INTO `goodscar` VALUES (2, '2020-05-12 03:41:05', 1112, 12, 1, 0);
INSERT INTO `goodscar` VALUES (3, '2020-05-12 09:37:44', 1111, 12, 1, 0);
INSERT INTO `goodscar` VALUES (10, '2020-05-14 01:54:44', 1107, 12, 1, 0);
INSERT INTO `goodscar` VALUES (11, '2020-05-18 01:21:41', 1111, 12, 1, 0);
INSERT INTO `goodscar` VALUES (12, '2020-05-18 01:21:43', 1108, 12, 1, 0);
INSERT INTO `goodscar` VALUES (13, '2020-05-18 01:21:43', 1111, 12, 1, 0);
INSERT INTO `goodscar` VALUES (14, '2020-05-18 01:46:46', 1112, 12, 1, 0);
INSERT INTO `goodscar` VALUES (15, '2020-05-18 01:47:18', 1112, 12, 2, 0);
INSERT INTO `goodscar` VALUES (16, '2020-05-18 01:47:21', 1111, 12, 3, 0);
INSERT INTO `goodscar` VALUES (17, '2020-05-18 02:37:40', 1112, 12, 2, 0);
INSERT INTO `goodscar` VALUES (18, '2020-05-26 06:23:54', 1111, 12, 1, 1);

-- ----------------------------
-- Table structure for goodsoforderform
-- ----------------------------
DROP TABLE IF EXISTS `goodsoforderform`;
CREATE TABLE `goodsoforderform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ofid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `modified` datetime(0) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodsoforderform
-- ----------------------------
INSERT INTO `goodsoforderform` VALUES (1, 29, 1112, '2020-05-12 03:41:05', 1, 1);
INSERT INTO `goodsoforderform` VALUES (2, 29, 1111, '2020-05-12 03:41:05', 1, 1);

-- ----------------------------
-- Table structure for orderform
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `display` int(11) NOT NULL DEFAULT 1 COMMENT '支付金额',
  `uid` int(11) NOT NULL COMMENT '买家id ',
  `seller_id` int(11) NOT NULL COMMENT '卖家id',
  `shop_id` int(11) NOT NULL COMMENT '商品id',
  `quantity` int(5) DEFAULT NULL COMMENT '数量',
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recipient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '收件人',
  `rephone` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL,
  `readdress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '收货地址',
  `status` int(1) NOT NULL COMMENT '配送状态 1为未配送 2：已配送 3已完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderform
-- ----------------------------
INSERT INTO `orderform` VALUES (1, '2020-05-13 02:37:57', 50, 12, 12, 1112, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `orderform` VALUES (2, '2020-05-13 02:38:08', 20, 12, 12, 1111, 1, NULL, NULL, NULL, '山西大同阳高', 2);
INSERT INTO `orderform` VALUES (3, '2020-05-13 03:02:35', 50, 12, 13, 1102, 1, NULL, NULL, NULL, '山西大同阳高', 1);
INSERT INTO `orderform` VALUES (4, '2020-05-13 03:02:35', 412, 12, 70, 1049, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `orderform` VALUES (5, '2020-05-14 01:10:04', 50, 12, 12, 1112, 1, NULL, NULL, NULL, NULL, 3);
INSERT INTO `orderform` VALUES (6, '2020-05-14 01:10:04', 50, 12, 12, 1117, 1, NULL, NULL, NULL, '太原理工大学明向校区东区', 3);

-- ----------------------------
-- Table structure for recommended
-- ----------------------------
DROP TABLE IF EXISTS `recommended`;
CREATE TABLE `recommended`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com` double(255, 0) UNSIGNED DEFAULT 0 COMMENT '相似度',
  `cnt` int(8) UNSIGNED ZEROFILL DEFAULT 00000000 COMMENT '购买该商品用户数量',
  `shopid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopcontext
-- ----------------------------
DROP TABLE IF EXISTS `shopcontext`;
CREATE TABLE `shopcontext`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcontext
-- ----------------------------
INSERT INTO `shopcontext` VALUES (1, '2020-04-11 16:09:35', 92, '今天是个哈日子', 1, 1);
INSERT INTO `shopcontext` VALUES (2, '2020-04-21 16:38:44', 92, 'test', 1, 1);
INSERT INTO `shopcontext` VALUES (3, '2020-04-21 19:29:25', 92, '好的东西就要积累', 1, 7);
INSERT INTO `shopcontext` VALUES (4, '2020-04-21 19:30:12', 92, '好的东西就要积累', 1, 7);
INSERT INTO `shopcontext` VALUES (5, '2020-04-21 19:33:48', 92, '好的东西', 1, 7);
INSERT INTO `shopcontext` VALUES (6, '2020-04-21 19:47:02', 5, '111111', 1, 7);
INSERT INTO `shopcontext` VALUES (7, '2020-04-21 19:47:50', 5, '1111', 1, 7);
INSERT INTO `shopcontext` VALUES (8, '2020-04-21 19:48:49', 5, '就看见看看', 1, 7);
INSERT INTO `shopcontext` VALUES (9, '2020-04-21 19:50:41', 92, '嘻嘻', 1, 7);
INSERT INTO `shopcontext` VALUES (10, '2020-04-22 22:07:14', 88, '1111', 1, 7);
INSERT INTO `shopcontext` VALUES (11, '2020-04-23 22:19:19', 69, '11111', 1, 7);
INSERT INTO `shopcontext` VALUES (12, '2020-04-26 13:54:13', 1096, '11111', 1, 7);
INSERT INTO `shopcontext` VALUES (13, '2019-09-09 15:52:52', 1095, 'test', 1, 9);
INSERT INTO `shopcontext` VALUES (14, '2019-09-09 15:54:07', 1095, 'test44', 1, 9);
INSERT INTO `shopcontext` VALUES (15, '2020-04-28 01:07:00', 1106, '还可以', 1, 12);
INSERT INTO `shopcontext` VALUES (16, '2020-05-26 11:19:33', 1111, '真的很不错', 1, 12);
INSERT INTO `shopcontext` VALUES (17, '2020-05-26 11:19:34', 1111, '真的很不错', 1, 12);

-- ----------------------------
-- Table structure for shopinformation
-- ----------------------------
DROP TABLE IF EXISTS `shopinformation`;
CREATE TABLE `shopinformation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `sort` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL,
  `transaction` int(11) NOT NULL DEFAULT 1,
  `sales` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `thumbnails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_uid`(`uid`) USING BTREE,
  INDEX `index_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopinformation
-- ----------------------------
INSERT INTO `shopinformation` VALUES (1, NULL, 'c', 4, 'sdf', 12.00, 33, 0, 3, 0, 1, 1, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (2, '2020-04-12 16:45:36', '算法导论', 9, '很好的一本书', 70.00, 86, 1, 1, 1, 2, 1, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (3, '2020-04-14 15:31:26', '爱我的人', 3, '来自yzq的爱', 12.00, 3, 0, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (4, '2020-04-14 15:33:27', '729乒乓球拍', 5, '来自yzq的爱,QQtest', 77.56, 67, 0, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (5, '2020-04-14 15:34:33', '苹果6S', 5, '来自yzq的爱,QQtest', 5000.00, 1, 0, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (6, '2020-04-14 15:35:19', '三星5A', 5, '来自yzq的爱,QQtest', 4000.12, 2, 0, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (7, '2020-04-14 15:36:09', '小米6', 7, '来自yzq的爱,QQtest', 3000.56, 3, 1, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (8, '2020-04-14 15:36:38', '华为8', 7, '来自yzq的爱,QQtest', 3000.57, 4, 1, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (9, '2020-04-14 15:37:08', '中兴8', 7, '来自yzq的爱,QQtest', 3000.57, 5, 1, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (10, '2020-04-14 15:37:31', '联系9', 7, '来自yzq的爱,QQtest', 4654.00, 6, 1, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (11, '2020-04-14 15:37:51', '魅族7S', 7, '来自yzq的爱,QQtest', 4434.00, 7, 1, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (12, '2020-04-14 15:38:19', '索爱8', 7, '来自yzq的爱,QQtest', 4434.33, 8, 1, 3, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (13, '2020-04-14 15:38:42', '苹果耳机', 7, '来自yzq的爱,QQtest', 100.00, 9, 1, 34, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (14, '2020-04-14 15:39:06', '普通相机10', 7, '来自yzq的爱,QQtest', 5100.00, 10, 1, 34, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (15, '2020-04-14 15:39:30', '贾尼单反', 5, '来自yzq的爱,QQtest', 5100.00, 11, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (16, '2020-04-14 15:39:49', '其他东东', 5, '来自yzq的爱,QQtest', 5100.00, 12, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (17, '2020-04-14 15:40:10', '笔记本宏碁13', 8, '来自yzq的爱,QQtest', 5100.00, 13, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (18, '2020-04-14 15:40:37', '苹果平板5', 8, '来自yzq的爱,QQtest', 5100.00, 14, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (19, '2020-04-14 15:41:02', 'HP台式电脑', 8, '来自yzq的爱,QQtest', 4100.00, 15, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (20, '2020-04-14 15:41:26', '戴尔显示器', 8, '来自yzq的爱,QQtest', 1100.00, 16, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (21, '2020-04-14 15:49:33', '雷蛇鼠标', 8, '来自yzq的爱,QQtest', 1100.00, 17, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (22, '2020-04-14 15:49:47', '雷神键盘', 8, '来自yzq的爱,QQtest', 1100.00, 18, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (23, '2020-04-14 15:50:33', 'U盘金士顿64G', 8, '来自yzq的爱,QQtest', 200.00, 19, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (24, '2020-04-14 15:51:02', '爱国者移动硬盘1T', 8, '来自yzq的爱,QQtest', 500.90, 20, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (25, '2020-04-14 15:51:22', '爱？', 8, '来自yzq的爱,QQtest', 500.90, 21, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (26, '2020-04-14 15:52:02', '小天鹅洗衣机', 8, '来自yzq的爱,QQtest', 700.00, 22, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (27, '2020-04-14 15:52:17', '饮水机', 8, '来自yzq的爱,QQtest', 700.00, 23, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (28, '2020-04-14 15:52:34', '吹风机', 8, '来自yzq的爱,QQtest', 40.00, 24, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (29, '2020-04-14 15:52:44', '剃须刀', 8, '来自yzq的爱,QQtest', 40.00, 25, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (34, '2020-04-14 15:54:02', '超级耳机', 8, '来自yzq的爱,QQtest', 100.00, 30, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (35, '2020-04-14 15:54:27', '很好的音响', 8, '来自yzq的爱,QQtest', 120.58, 31, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (36, '2020-04-14 15:55:01', '功放？', 8, '来自yzq的爱,QQtest', 120.58, 32, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (37, '2020-04-14 15:55:15', '低音炮', 8, '来自yzq的爱,QQtest', 120.58, 33, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (38, '2020-04-14 15:55:25', '麦克风', 8, '来自yzq的爱,QQtest', 120.58, 34, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (39, '2020-04-14 15:56:12', '超好看的上衣', 8, '来自yzq的爱,QQtest', 120.58, 35, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (40, '2020-04-14 15:56:28', '炫酷短裤', 8, '来自yzq的爱,QQtest', 120.58, 36, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (41, '2020-04-14 15:56:46', '百褶裙', 8, '来自yzq的爱,QQtest', 55.00, 37, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (42, '2020-04-14 15:57:06', '短上衣', 8, '来自yzq的爱,QQtest', 55.00, 38, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (43, '2020-04-14 15:57:20', '长裤', 8, '来自yzq的爱,QQtest', 55.00, 39, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (44, '2020-04-14 15:57:49', '运动鞋耐克', 8, '来自yzq的爱,QQtest', 1200.00, 40, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (45, '2020-04-14 15:58:06', '皮鞋安踏', 8, '来自yzq的爱,QQtest', 200.00, 41, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (46, '2020-04-14 15:58:43', '帆布鞋', 8, '来自yzq的爱,QQtest', 200.00, 45, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (47, '2020-04-14 15:59:26', '球鞋', 8, '来自yzq的爱,QQtest', 200.00, 46, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (48, '2020-04-14 15:59:35', '板鞋', 8, '来自yzq的爱,QQtest', 200.00, 47, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (49, '2020-04-14 15:59:50', '男生运动鞋', 8, '来自yzq的爱,QQtest', 200.00, 49, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (50, '2020-04-14 16:00:07', '男生皮鞋', 8, '来自yzq的爱,QQtest', 500.00, 50, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (51, '2020-04-14 16:00:20', '男生帆布鞋', 8, '来自yzq的爱,QQtest', 10.00, 51, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (52, '2020-04-14 16:00:36', '男生球鞋', 8, '来自yzq的爱,QQtest', 1000.00, 52, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (53, '2020-04-14 16:00:58', '背包VL', 8, '来自yzq的爱,QQtest', 1000.00, 55, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (54, '2020-04-14 16:01:13', '超级旅行包', 8, '来自yzq的爱,QQtest', 200.00, 56, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (55, '2020-04-14 16:01:40', '呆板机械表', 8, '来自yzq的爱,QQtest', 400.00, 58, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (56, '2020-04-14 16:01:58', '好看的石英表', 8, '来自yzq的爱,QQtest', 400.00, 59, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (57, '2020-04-14 16:02:10', '一般电子版', 8, '来自yzq的爱,QQtest', 100.00, 60, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (58, '2020-04-14 16:03:08', '足球', 8, '来自yzq的爱,QQtest', 100.00, 62, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (59, '2020-04-14 16:03:19', '羽毛球拍', 8, '来自yzq的爱,QQtest', 100.00, 63, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (60, '2020-04-14 16:03:29', '网球拍', 8, '来自yzq的爱,QQtest', 100.00, 64, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (61, '2020-04-14 16:03:37', '篮球', 8, '来自yzq的爱,QQtest', 100.00, 65, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (62, '2020-04-14 16:03:46', '滑轮', 8, '来自yzq的爱,QQtest', 100.00, 66, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (63, '2020-04-14 16:04:01', '乒乓球拍', 8, '来自yzq的爱,QQtest', 100.00, 67, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (64, '2020-04-14 16:04:15', '滑板', 8, '来自yzq的爱,QQtest', 100.00, 68, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (65, '2020-04-14 16:04:28', '自行车', 8, '来自yzq的爱,QQtest', 300.00, 70, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (66, '2020-04-14 16:04:45', '电动车', 8, '来自yzq的爱,QQtest', 800.85, 71, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (67, '2020-04-14 16:04:02', '傲慢与偏见', 8, '来自yzq的爱,QQtest', 20.00, 73, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (68, '2020-04-14 16:04:22', '海贼王漫画', 8, '来自yzq的爱,QQtest', 20.00, 74, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (69, '2020-04-14 16:04:49', '爱尔兰的野马', 8, '来自yzq的爱,QQtest', 20.00, 75, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (70, '2020-04-14 16:06:10', '生命的起源', 8, '来自yzq的爱,QQtest', 25.00, 77, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (71, '2020-04-14 16:06:35', '神奇的化学变化', 8, '来自yzq的爱,QQtest', 25.00, 78, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (72, '2020-04-14 16:06:59', '黑洞与白洞', 8, '来自yzq的爱,QQtest', 51.00, 79, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (73, '2020-04-14 16:07:17', '诗经全集', 8, '来自yzq的爱,QQtest', 51.00, 80, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (74, '2020-04-14 16:07:40', '小语种-莫拉语', 8, '来自yzq的爱,QQtest', 51.00, 81, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (75, '2020-04-14 16:08:20', '真：五元十次方程详细解法', 8, '来自yzq的爱,QQtest', 51.00, 82, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (76, '2020-04-14 16:08:35', '国家的安定', 8, '来自yzq的爱,QQtest', 51.00, 83, 1, 4, 1, 0, 4, 'image/eW5NE6CM121494763475193.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (77, '2020-04-14 16:09:22', '曼陀罗消亡史', 8, '来自yzq的爱,QQtest', 51.00, 84, 1, 4, 1, 0, 4, 'image/978P2M7w0ExYqmzci0aX20200104.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (78, '2020-04-14 16:09:38', '神奇的广东', 8, '来自yzq的爱,QQtest', 51.00, 85, 1, 4, 1, 0, 4, 'image/978P2M7w0ExYqmzci0aX20200104.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (79, '2020-04-14 16:10:11', 'Spring实战', 8, '来自yzq的爱,QQtest', 51.00, 86, 1, 4, 1, 0, 4, 'image/1.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (80, '2020-04-14 16:10:29', 'ACD画图', 8, '来自yzq的爱,QQtest', 51.00, 87, 1, 4, 1, 0, 4, 'image/aug1NiTT40tXd3Zy1ZWL20161215.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (81, '2020-04-14 16:10:51', '怎么建房子容易倒塌', 8, '来自yzq的爱,QQtest', 51.00, 88, 1, 4, 1, 0, 4, 'image/bvmE7d8698C3VdjSMjHm20161225.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (82, '2020-04-14 16:11:07', '算法的艺术', 8, '来自yzq的爱,QQtest', 51.00, 89, 1, 4, 1, 0, 4, 'image/rzNz7r8XkK8Q97Ki42FB20161214.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (91, '2020-04-20 15:53:11', '月球下的人', 7, 'yzq1103', 34.00, 73, 1, 1, 1, 0, 7, 'image/yourname.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (92, '2020-04-20 19:06:57', '傲慢与偏见', 9, '来自yzq的爱', 24.00, 73, 1, 1, 1, 0, 7, 'imagePorRmD0JDZ1495278394532.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (93, '2020-04-25 16:04:48', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 203.45, 1, 1, 9, 1, 0, 19, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (94, '2020-04-25 16:06:27', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 124.70, 1, 1, 8, 1, 0, 87, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (95, '2020-04-25 16:08:34', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 80.46, 1, 1, 8, 1, 0, 61, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (96, '2020-04-25 16:08:40', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 504.64, 2, 1, 7, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (97, '2020-04-25 16:08:40', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 121.53, 3, 1, 8, 1, 0, 18, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (98, '2020-04-25 16:08:40', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 657.34, 4, 1, 10, 1, 0, 29, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (99, '2020-04-25 16:08:40', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 958.19, 5, 1, 9, 1, 0, 38, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (100, '2020-04-25 16:08:40', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 364.47, 6, 1, 7, 1, 0, 44, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (101, '2020-04-25 16:08:40', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 973.03, 7, 1, 5, 1, 0, 14, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (102, '2020-04-25 16:08:40', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 997.94, 8, 1, 1, 1, 0, 52, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (103, '2020-04-25 16:08:40', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 104.93, 9, 1, 2, 1, 0, 37, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (104, '2020-04-25 16:08:40', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 565.97, 10, 1, 4, 1, 0, 43, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (188, '2020-04-25 16:08:41', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 933.94, 94, 1, 2, 1, 0, 4, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (189, '2020-04-25 16:14:12', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 330.94, 1, 1, 6, 1, 0, 36, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (190, '2020-04-25 16:14:12', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 32.48, 2, 1, 4, 1, 0, 18, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (191, '2020-04-25 16:14:12', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 964.70, 3, 1, 8, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (192, '2020-04-25 16:14:12', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 952.51, 4, 1, 2, 1, 0, 78, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (193, '2020-04-25 16:14:12', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 299.50, 5, 1, 2, 1, 0, 8, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (194, '2020-04-25 16:14:12', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 941.67, 6, 1, 10, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (195, '2020-04-25 16:14:12', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 573.57, 7, 1, 6, 1, 0, 9, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (196, '2020-04-25 16:14:12', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 601.29, 8, 1, 8, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (197, '2020-04-25 16:14:12', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 64.00, 9, 1, 2, 1, 0, 3, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (198, '2020-04-25 16:14:12', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 324.60, 10, 1, 4, 1, 0, 75, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (199, '2020-04-25 16:14:12', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 204.27, 11, 1, 5, 1, 0, 75, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (200, '2020-04-25 16:14:12', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 353.98, 12, 1, 1, 1, 0, 39, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (201, '2020-04-25 16:14:12', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 88.22, 13, 1, 10, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (202, '2020-04-25 16:14:12', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 434.91, 14, 1, 2, 1, 0, 51, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (203, '2020-04-25 16:14:12', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 520.51, 15, 1, 7, 1, 0, 30, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (204, '2020-04-25 16:14:12', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 292.36, 16, 1, 6, 1, 0, 34, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (312, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 357.62, 30, 1, 7, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (313, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 760.78, 31, 1, 3, 1, 0, 41, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (314, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 995.63, 32, 1, 10, 1, 0, 79, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (315, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 282.02, 33, 1, 4, 1, 0, 68, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (316, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 613.44, 34, 1, 9, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (317, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 659.28, 35, 1, 9, 1, 0, 55, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (318, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 494.19, 36, 1, 6, 1, 0, 82, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (319, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 652.87, 37, 1, 9, 1, 0, 73, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (320, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 606.84, 38, 1, 8, 1, 0, 86, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (321, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 19.72, 39, 1, 9, 1, 0, 43, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (322, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 866.71, 40, 1, 1, 1, 0, 59, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (323, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 872.28, 41, 1, 2, 1, 0, 89, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (324, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 660.61, 42, 1, 5, 1, 0, 73, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (325, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 233.87, 43, 1, 7, 1, 0, 9, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (326, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 469.98, 44, 1, 1, 1, 0, 55, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (327, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 507.17, 45, 1, 10, 1, 0, 17, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (328, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 615.70, 46, 1, 10, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (329, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 102.29, 47, 1, 5, 1, 0, 17, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (330, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 815.60, 48, 1, 4, 1, 0, 34, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (331, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 803.98, 49, 1, 5, 1, 0, 40, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (332, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 267.41, 50, 1, 3, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (333, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 73.48, 51, 1, 9, 1, 0, 83, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (334, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 985.66, 52, 1, 7, 1, 0, 42, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (335, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 245.25, 53, 1, 6, 1, 0, 61, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (336, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 790.60, 54, 1, 1, 1, 0, 6, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (337, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 3.61, 55, 1, 10, 1, 0, 88, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (338, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 590.63, 56, 1, 8, 1, 0, 3, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (339, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 5.85, 57, 1, 7, 1, 0, 81, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (340, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 858.12, 58, 1, 6, 1, 0, 65, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (341, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 599.58, 59, 1, 6, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (342, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 673.54, 60, 1, 3, 1, 0, 10, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (343, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 190.82, 61, 1, 4, 1, 0, 98, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (344, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 626.76, 62, 1, 2, 1, 0, 31, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (345, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 529.27, 63, 1, 3, 1, 0, 41, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (346, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 699.77, 64, 1, 3, 1, 0, 77, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (347, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 448.54, 65, 1, 5, 1, 0, 54, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (348, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 15.62, 66, 1, 8, 1, 0, 8, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (349, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 35.42, 67, 1, 1, 1, 0, 63, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (350, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 788.65, 68, 1, 10, 1, 0, 97, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (351, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 796.19, 69, 1, 4, 1, 0, 22, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (352, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 734.31, 70, 1, 5, 1, 0, 8, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (353, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 773.48, 71, 1, 10, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (354, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 640.67, 72, 1, 8, 1, 0, 90, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (355, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 268.84, 73, 1, 6, 1, 0, 100, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (356, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 331.73, 74, 1, 9, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (357, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 508.51, 75, 1, 9, 1, 0, 84, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (358, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 193.23, 76, 1, 7, 1, 0, 95, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (359, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 309.22, 77, 1, 7, 1, 0, 40, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (360, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 130.98, 78, 1, 3, 1, 0, 63, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (361, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 253.01, 79, 1, 8, 1, 0, 48, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (362, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 898.43, 80, 1, 4, 1, 0, 69, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (363, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 652.13, 81, 1, 2, 1, 0, 92, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (364, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 291.77, 82, 1, 10, 1, 0, 35, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (365, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 404.50, 83, 1, 10, 1, 0, 97, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (366, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 657.68, 84, 1, 4, 1, 0, 23, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (367, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 825.49, 85, 1, 9, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (368, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 399.21, 86, 1, 9, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (369, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 450.90, 87, 1, 9, 1, 0, 48, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (370, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 871.04, 88, 1, 2, 1, 0, 85, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (371, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 289.68, 89, 1, 5, 1, 0, 51, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (372, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 916.01, 90, 1, 8, 1, 0, 45, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (373, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 851.65, 91, 1, 10, 1, 0, 51, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (374, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 763.14, 92, 1, 2, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (375, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 667.25, 93, 1, 8, 1, 0, 19, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (376, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 555.12, 94, 1, 5, 1, 0, 62, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (377, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 773.74, 1, 1, 7, 1, 0, 67, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (378, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 132.88, 2, 1, 3, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (379, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 477.11, 3, 1, 1, 1, 0, 63, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (380, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 130.67, 4, 1, 6, 1, 0, 100, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (381, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 464.50, 5, 1, 10, 1, 0, 2, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (382, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 940.86, 6, 1, 6, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (383, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 280.51, 7, 1, 8, 1, 0, 18, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (384, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 727.22, 8, 1, 6, 1, 0, 24, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (385, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 176.59, 9, 1, 1, 1, 0, 100, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (386, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 696.21, 10, 1, 7, 1, 0, 93, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (387, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 170.40, 11, 1, 7, 1, 0, 71, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (388, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 91.17, 12, 1, 3, 1, 0, 100, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (389, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 725.91, 13, 1, 4, 1, 0, 33, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (390, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 433.49, 14, 1, 5, 1, 0, 69, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (391, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 91.61, 15, 1, 7, 1, 0, 5, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (392, '2020-04-29 07:40:05', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 992.32, 16, 0, 9, 1, 0, 12, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (393, '2020-04-16 01:27:35', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 959.24, 17, 0, 8, 1, 0, 13, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (394, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 181.07, 18, 1, 6, 1, 0, 51, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (395, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 565.93, 19, 1, 5, 1, 0, 90, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (396, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 930.20, 20, 1, 9, 1, 0, 67, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (397, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 636.10, 21, 1, 1, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (398, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 213.48, 22, 1, 1, 1, 0, 51, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (399, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 14.75, 23, 1, 9, 1, 0, 17, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (400, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 966.43, 24, 1, 8, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (401, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 487.91, 25, 1, 1, 1, 0, 67, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (430, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 492.76, 54, 1, 9, 1, 0, 16, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (431, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 507.81, 55, 1, 7, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (432, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 619.14, 56, 1, 7, 1, 0, 88, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (433, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 573.45, 57, 1, 9, 1, 0, 84, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (434, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 906.65, 58, 1, 4, 1, 0, 53, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (435, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 560.67, 59, 1, 8, 1, 0, 26, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (436, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 563.26, 60, 1, 2, 1, 0, 37, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (437, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 326.23, 61, 1, 1, 1, 0, 92, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (438, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 602.52, 62, 1, 2, 1, 0, 86, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (439, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 21.67, 63, 1, 4, 1, 0, 10, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (440, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 743.58, 64, 1, 3, 1, 0, 6, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (441, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 581.54, 65, 1, 9, 1, 0, 27, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (442, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 747.78, 66, 1, 5, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (443, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 561.70, 67, 1, 7, 1, 0, 47, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (444, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 879.10, 68, 1, 1, 1, 0, 87, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (445, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 775.40, 69, 1, 10, 1, 0, 73, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (446, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 542.71, 70, 1, 6, 1, 0, 22, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (447, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 553.30, 71, 1, 6, 1, 0, 62, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (448, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 918.47, 72, 1, 1, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (449, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 419.96, 73, 1, 4, 1, 0, 100, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (450, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 360.44, 74, 1, 7, 1, 0, 81, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (451, '2020-04-25 16:14:13', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 808.86, 75, 1, 10, 1, 0, 15, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (452, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 794.03, 76, 1, 8, 1, 0, 44, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (453, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 545.29, 77, 1, 5, 1, 0, 37, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (454, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 387.77, 78, 1, 8, 1, 0, 2, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (455, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 17.42, 79, 1, 6, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (456, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 502.26, 80, 1, 4, 1, 0, 5, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (457, '2020-04-25 16:14:13', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 676.50, 81, 1, 7, 1, 0, 8, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (458, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 683.56, 82, 1, 8, 1, 0, 18, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (459, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 94.72, 83, 1, 1, 1, 0, 29, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (460, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 150.41, 84, 1, 10, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (461, '2020-04-25 16:14:13', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 741.04, 85, 1, 1, 1, 0, 92, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (462, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 463.14, 86, 1, 8, 1, 0, 36, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (463, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 779.54, 87, 1, 2, 1, 0, 88, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (464, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 516.43, 88, 1, 1, 1, 0, 83, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (465, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 60.24, 89, 1, 7, 1, 0, 64, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (466, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 589.89, 90, 1, 2, 1, 0, 43, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (467, '2020-04-25 16:14:13', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 458.90, 91, 1, 4, 1, 0, 31, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (468, '2020-04-25 16:14:13', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 357.93, 92, 1, 9, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (469, '2020-04-25 16:14:13', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 368.69, 93, 1, 5, 1, 0, 60, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (470, '2020-04-25 16:14:13', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 709.45, 94, 1, 9, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (471, '2020-04-25 16:14:13', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 385.19, 1, 1, 10, 1, 0, 9, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (472, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 175.45, 2, 1, 1, 1, 0, 98, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (473, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 627.07, 3, 1, 3, 1, 0, 28, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (474, '2020-04-25 16:14:13', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 197.07, 4, 1, 6, 1, 0, 20, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (475, '2020-04-25 16:14:13', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 160.20, 5, 1, 1, 1, 0, 5, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (476, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 386.38, 6, 1, 9, 1, 0, 55, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (477, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 245.56, 7, 1, 4, 1, 0, 45, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (478, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 104.51, 8, 1, 7, 1, 0, 5, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (479, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 604.28, 9, 1, 7, 1, 0, 49, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (480, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 898.14, 10, 1, 7, 1, 0, 75, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (481, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 219.84, 11, 1, 5, 1, 0, 81, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (482, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 598.66, 12, 1, 6, 1, 0, 39, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (483, '2020-04-25 16:14:14', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 903.32, 13, 1, 5, 1, 0, 75, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (484, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 882.57, 14, 1, 3, 1, 0, 97, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (485, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 595.92, 15, 1, 1, 1, 0, 24, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (486, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 934.96, 16, 1, 7, 1, 0, 71, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (487, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 231.70, 17, 1, 4, 1, 0, 51, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (488, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 148.32, 18, 1, 3, 1, 0, 65, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (489, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 626.68, 19, 1, 4, 1, 0, 81, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (490, '2020-04-25 16:14:14', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 925.36, 20, 1, 7, 1, 0, 7, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (491, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 886.44, 21, 1, 3, 1, 0, 10, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (492, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 884.04, 22, 1, 4, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (493, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 960.59, 23, 1, 2, 1, 0, 46, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (494, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 931.97, 24, 1, 4, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (495, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 335.93, 25, 1, 2, 1, 0, 62, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (500, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 852.08, 30, 1, 10, 1, 0, 34, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (501, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 299.48, 31, 1, 7, 1, 0, 64, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (502, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 591.07, 32, 1, 2, 1, 0, 86, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (503, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 896.66, 33, 1, 1, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (504, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 190.18, 34, 1, 4, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (551, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 401.63, 81, 1, 5, 1, 0, 98, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (552, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 130.51, 82, 1, 3, 1, 0, 15, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (553, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 936.12, 83, 1, 7, 1, 0, 80, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (554, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 151.09, 84, 1, 1, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (555, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 922.30, 85, 1, 3, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (556, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 655.27, 86, 1, 5, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (557, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 198.98, 87, 1, 9, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (558, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 814.95, 88, 1, 5, 1, 0, 99, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (559, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 737.99, 89, 1, 4, 1, 0, 6, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (560, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 403.65, 90, 1, 6, 1, 0, 51, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (561, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 963.57, 91, 1, 5, 1, 0, 9, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (562, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 930.48, 92, 1, 7, 1, 0, 47, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (563, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 55.21, 93, 1, 1, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (564, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 763.90, 94, 1, 2, 1, 0, 68, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (565, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 30.28, 1, 1, 9, 1, 0, 53, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (566, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 365.44, 2, 1, 7, 1, 0, 54, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (567, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 737.91, 3, 1, 2, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (568, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 353.61, 4, 1, 10, 1, 0, 82, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (569, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 190.08, 5, 1, 3, 1, 0, 60, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (570, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 875.01, 6, 1, 10, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (571, '2020-04-25 16:14:14', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 121.49, 7, 1, 8, 1, 0, 4, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (572, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 424.87, 8, 1, 8, 1, 0, 25, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (573, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 660.24, 9, 1, 1, 1, 0, 69, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (574, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 349.74, 10, 1, 7, 1, 0, 3, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (575, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 247.75, 11, 1, 5, 1, 0, 30, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (576, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 311.93, 12, 1, 9, 1, 0, 98, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (577, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 854.94, 13, 1, 4, 1, 0, 55, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (578, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 797.73, 14, 1, 4, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (579, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 374.52, 15, 1, 2, 1, 0, 87, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (580, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 621.90, 16, 1, 8, 1, 0, 39, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (581, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 243.42, 17, 1, 2, 1, 0, 72, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (582, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 399.14, 18, 1, 6, 1, 0, 79, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (583, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 668.94, 19, 1, 10, 1, 0, 48, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (584, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 213.65, 20, 1, 10, 1, 0, 25, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (585, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 744.27, 21, 1, 9, 1, 0, 97, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (586, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 580.70, 22, 1, 1, 1, 0, 38, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (587, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 580.79, 23, 1, 2, 1, 0, 48, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (588, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 136.00, 24, 1, 3, 1, 0, 90, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (589, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 832.31, 25, 1, 7, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (594, '2020-04-25 16:14:14', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 102.20, 30, 1, 3, 1, 0, 23, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (595, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 31.65, 31, 1, 1, 1, 0, 36, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (596, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 778.50, 32, 1, 4, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (597, '2020-04-25 16:14:14', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 349.73, 33, 1, 6, 1, 0, 5, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (598, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 765.26, 34, 1, 9, 1, 0, 63, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (599, '2020-04-25 16:14:14', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 124.32, 35, 1, 1, 1, 0, 52, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (600, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 590.13, 36, 1, 3, 1, 0, 5, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (601, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 709.99, 37, 1, 3, 1, 0, 67, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (602, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 486.29, 38, 1, 2, 1, 0, 87, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (603, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 555.54, 39, 1, 9, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (604, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 87.97, 40, 1, 8, 1, 0, 54, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (672, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 896.69, 14, 1, 7, 1, 0, 93, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (673, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 734.79, 15, 1, 6, 1, 0, 95, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (674, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 831.51, 16, 1, 9, 1, 0, 98, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (675, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 380.26, 17, 1, 10, 1, 0, 60, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (676, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 419.18, 18, 1, 4, 1, 0, 36, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (677, '2020-04-25 16:14:14', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 139.53, 19, 1, 6, 1, 0, 77, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (678, '2020-04-25 16:14:14', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 889.04, 20, 1, 10, 1, 0, 24, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (679, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 57.97, 21, 1, 9, 1, 0, 69, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (680, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 913.62, 22, 1, 2, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (681, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 600.04, 23, 1, 9, 1, 0, 86, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (682, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 278.49, 24, 1, 6, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (683, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 597.02, 25, 1, 9, 1, 0, 78, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (688, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 152.01, 30, 1, 3, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (689, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 234.14, 31, 1, 7, 1, 0, 84, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (690, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 887.92, 32, 1, 9, 1, 0, 26, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (691, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 925.33, 33, 1, 10, 1, 0, 85, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (692, '2020-04-25 16:14:14', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 282.93, 34, 1, 6, 1, 0, 99, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (693, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 154.27, 35, 1, 3, 1, 0, 48, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (694, '2020-04-25 16:14:14', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 51.97, 36, 1, 5, 1, 0, 55, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (695, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 921.98, 37, 1, 6, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (696, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 310.44, 38, 1, 9, 1, 0, 98, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (697, '2020-04-25 16:14:14', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 593.90, 39, 1, 8, 1, 0, 59, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (698, '2020-04-25 16:14:14', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 386.88, 40, 1, 2, 1, 0, 46, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (699, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 440.34, 41, 1, 6, 1, 0, 99, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (700, '2020-04-25 16:14:14', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 676.70, 42, 1, 5, 1, 0, 75, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (701, '2020-04-25 16:14:14', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 491.00, 43, 1, 1, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (702, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 197.32, 44, 1, 5, 1, 0, 52, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (703, '2020-04-25 16:14:14', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 404.93, 45, 1, 5, 1, 0, 40, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (704, '2020-04-25 16:14:14', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 837.71, 46, 1, 1, 1, 0, 3, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (793, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 333.27, 41, 1, 8, 1, 0, 3, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (794, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 348.23, 42, 1, 5, 1, 0, 6, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (795, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 996.52, 43, 1, 1, 1, 0, 61, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (796, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 260.42, 44, 1, 10, 1, 0, 23, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (797, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 855.58, 45, 1, 7, 1, 0, 62, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (798, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 265.96, 46, 1, 9, 1, 0, 92, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (799, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 626.01, 47, 1, 5, 1, 0, 89, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (800, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 733.66, 48, 1, 1, 1, 0, 71, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (801, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 35.66, 49, 1, 4, 1, 0, 82, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (802, '2020-04-25 16:14:15', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 872.42, 50, 1, 8, 1, 0, 84, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (803, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 183.38, 51, 1, 5, 1, 0, 88, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (804, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 810.31, 52, 1, 4, 1, 0, 15, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (914, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 828.67, 68, 1, 3, 1, 0, 11, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (915, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 162.64, 69, 1, 4, 1, 0, 11, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (916, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 378.83, 70, 1, 1, 1, 0, 9, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (917, '2020-04-25 16:14:15', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 338.31, 71, 1, 3, 1, 0, 3, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (918, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 656.07, 72, 1, 3, 1, 0, 12, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (919, '2020-04-25 16:14:15', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 80.73, 73, 1, 9, 1, 0, 39, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (920, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 289.79, 74, 1, 7, 1, 0, 48, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (921, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 957.27, 75, 1, 10, 1, 0, 33, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (922, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 508.50, 76, 1, 1, 1, 0, 99, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (923, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 461.21, 77, 1, 9, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (924, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 272.09, 78, 1, 3, 1, 0, 45, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (925, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 617.82, 79, 1, 2, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (926, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 442.68, 80, 1, 1, 1, 0, 2, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (927, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 285.16, 81, 1, 10, 1, 0, 62, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (928, '2020-04-25 16:14:15', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 461.65, 82, 1, 2, 1, 0, 78, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (929, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 371.62, 83, 1, 7, 1, 0, 4, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (930, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 258.50, 84, 1, 9, 1, 0, 47, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (931, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 411.68, 85, 1, 8, 1, 0, 16, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (932, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 990.70, 86, 1, 2, 1, 0, 39, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (933, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 922.43, 87, 1, 9, 1, 0, 20, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (934, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 531.71, 88, 1, 7, 1, 0, 43, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (935, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 263.02, 89, 1, 4, 1, 0, 10, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (936, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 231.46, 90, 1, 3, 1, 0, 91, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (937, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 532.15, 91, 1, 6, 1, 0, 99, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (938, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 479.89, 92, 1, 10, 1, 0, 91, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (939, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 454.17, 93, 1, 5, 1, 0, 36, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (940, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 636.51, 94, 1, 8, 1, 0, 65, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (941, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 446.79, 1, 1, 6, 1, 0, 16, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (942, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 337.44, 2, 1, 2, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (943, '2020-04-25 16:14:15', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 754.35, 3, 1, 10, 1, 0, 85, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (944, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 465.41, 4, 1, 7, 1, 0, 59, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (945, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 925.83, 5, 1, 5, 1, 0, 78, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (946, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 837.89, 6, 1, 6, 1, 0, 4, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (947, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 167.81, 7, 1, 5, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (948, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 125.24, 8, 1, 6, 1, 0, 96, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (949, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 498.64, 9, 1, 10, 1, 0, 94, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (950, '2020-04-25 16:14:15', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 606.11, 10, 1, 10, 1, 0, 86, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (951, '2020-04-25 16:14:15', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 851.47, 11, 1, 2, 1, 0, 36, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (952, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 72.67, 12, 1, 6, 1, 0, 9, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (953, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 642.61, 13, 1, 8, 1, 0, 97, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (954, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 748.30, 14, 1, 1, 1, 0, 75, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (955, '2020-04-25 16:14:15', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 49.38, 15, 1, 3, 1, 0, 85, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (956, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 226.01, 16, 1, 5, 1, 0, 49, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (957, '2020-04-25 16:14:15', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 680.61, 17, 1, 7, 1, 0, 37, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (958, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 694.11, 18, 1, 6, 1, 0, 76, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (959, '2020-04-25 16:14:15', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 216.75, 19, 1, 5, 1, 0, 24, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (960, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 618.12, 20, 1, 9, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (961, '2020-04-25 16:14:15', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 328.86, 21, 1, 9, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (962, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 393.47, 22, 1, 6, 1, 0, 41, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (963, '2020-04-25 16:14:15', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 30.75, 23, 1, 1, 1, 0, 28, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (964, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 584.20, 24, 1, 3, 1, 0, 21, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (965, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 991.37, 25, 1, 5, 1, 0, 83, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (970, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 177.77, 30, 1, 10, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (971, '2020-04-25 16:14:15', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 301.58, 31, 1, 9, 1, 0, 72, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (972, '2020-04-25 16:14:15', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 200.51, 32, 1, 3, 1, 0, 14, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (973, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 475.27, 33, 1, 8, 1, 0, 56, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (974, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 680.43, 34, 1, 4, 1, 0, 91, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (975, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 435.95, 35, 1, 3, 1, 0, 7, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (976, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 655.47, 36, 1, 1, 1, 0, 66, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (977, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 621.23, 37, 1, 1, 1, 0, 53, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (978, '2020-04-25 16:14:15', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 782.71, 38, 1, 4, 1, 0, 63, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (979, '2020-04-25 16:14:15', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 253.66, 39, 1, 4, 1, 0, 45, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (980, '2020-04-25 16:14:15', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 88.81, 40, 1, 5, 1, 0, 76, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (981, '2020-04-25 16:14:15', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 299.24, 41, 1, 8, 1, 0, 89, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (982, '2020-04-25 16:14:15', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 650.84, 42, 1, 6, 1, 0, 23, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (983, '2020-04-25 16:14:15', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 195.36, 43, 1, 5, 1, 0, 9, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (984, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 545.80, 44, 1, 6, 1, 0, 50, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (985, '2020-04-25 16:14:15', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 994.82, 45, 1, 9, 1, 0, 41, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (986, '2020-04-25 16:14:15', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 231.92, 46, 1, 1, 1, 0, 32, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (987, '2020-04-25 16:14:16', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 613.28, 47, 1, 1, 1, 0, 69, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (988, '2020-04-25 16:14:16', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 85.33, 48, 1, 6, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (989, '2020-04-25 16:14:16', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 385.94, 49, 1, 1, 1, 0, 59, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (990, '2020-04-25 16:14:16', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 879.70, 50, 1, 3, 1, 0, 76, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (991, '2020-04-25 16:14:16', '百年孤独', 6, '看上的请联系我，QQ：test，微信：test', 127.77, 51, 1, 2, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (992, '2020-04-25 16:14:16', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 345.30, 52, 1, 7, 1, 0, 48, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (993, '2020-04-25 16:14:16', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 983.88, 53, 1, 9, 1, 0, 93, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (994, '2020-04-25 16:14:16', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 626.11, 54, 1, 8, 1, 0, 11, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (995, '2020-04-25 16:14:16', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 78.10, 55, 1, 7, 1, 0, 10, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (996, '2020-04-25 16:14:16', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 32.04, 56, 1, 9, 1, 0, 7, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (997, '2020-04-25 16:14:16', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 982.03, 57, 1, 6, 1, 0, 28, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (998, '2020-04-25 16:14:16', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 287.94, 58, 1, 5, 1, 0, 56, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (999, '2020-04-25 16:14:16', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 390.69, 59, 1, 9, 1, 0, 16, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1000, '2020-04-25 16:14:16', '百年孤独', 5, '看上的请联系我，QQ：test，微信：test', 855.29, 60, 1, 7, 1, 0, 67, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1001, '2020-04-25 16:14:16', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 800.28, 61, 1, 10, 1, 0, 45, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1002, '2020-04-25 16:14:16', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 458.11, 62, 1, 1, 1, 0, 100, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1003, '2020-04-25 16:14:16', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 24.85, 63, 1, 2, 1, 0, 28, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1004, '2020-04-25 16:14:16', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 806.67, 64, 1, 8, 1, 0, 6, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1035, '2020-04-25 16:14:16', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 734.92, 1, 1, 8, 1, 0, 33, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1036, '2020-04-25 16:14:16', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 770.54, 2, 1, 2, 1, 0, 79, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1037, '2020-04-25 16:14:16', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 678.56, 3, 1, 5, 1, 0, 25, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1038, '2020-04-25 16:14:16', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 271.07, 4, 1, 6, 1, 0, 81, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1039, '2020-04-25 16:14:16', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 704.46, 5, 1, 9, 1, 0, 46, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1040, '2020-04-25 16:14:16', '百年孤独', 4, '看上的请联系我，QQ：test，微信：test', 781.84, 6, 1, 1, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1041, '2020-04-25 16:14:16', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 324.79, 7, 1, 7, 1, 0, 1, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1042, '2020-04-25 16:14:16', '百年孤独', 7, '看上的请联系我，QQ：test，微信：test', 517.56, 8, 1, 5, 1, 0, 61, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1043, '2020-04-25 16:14:16', '百年孤独', 9, '看上的请联系我，QQ：test，微信：test', 422.21, 9, 1, 8, 1, 0, 76, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1044, '2020-04-25 16:14:16', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 655.29, 10, 1, 1, 1, 0, 61, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1045, '2020-04-25 16:14:16', '百年孤独', 2, '看上的请联系我，QQ：test，微信：test', 958.18, 11, 1, 2, 1, 0, 95, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1046, '2020-04-25 16:14:16', '百年孤独', 8, '看上的请联系我，QQ：test，微信：test', 420.83, 12, 1, 8, 1, 0, 58, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1047, '2020-04-25 16:14:16', '百年孤独', 3, '看上的请联系我，QQ：test，微信：test', 681.08, 13, 1, 2, 1, 0, 26, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1048, '2020-04-25 16:14:16', '百年孤独', 1, '看上的请联系我，QQ：test，微信：test', 12.83, 14, 1, 3, 1, 0, 3, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1049, '2020-04-25 16:14:16', '百年孤独', 10, '看上的请联系我，QQ：test，微信：test', 412.25, 15, 1, 1, 1, 0, 70, '/image/QyBHYiMfYQ4XZFCqxEv0.jpg', '/images/thumbnails/IrFMeAQeua1496368854318.jpg');
INSERT INTO `shopinformation` VALUES (1098, '2020-04-15 09:06:31', 'C++程序设计', 7, '2391', 50.00, 1, 0, 1, 1, 0, 12, 'image\\o6nSRV28cK1586937484674.jpg', '\\images\\thumbnails\\wCEPRCSq9o1586937484675.jpg');
INSERT INTO `shopinformation` VALUES (1099, '2020-04-15 09:06:28', 'll', 7, '2391', 50.00, 1, 0, 1, 1, 0, 12, 'image\\QLvHGencEw1586939910808.jpg', '\\images\\thumbnails\\ajueqCoEsL1586939910809.jpg');
INSERT INTO `shopinformation` VALUES (1100, '2020-04-15 09:06:25', 'llllll', 7, '258', 50.00, 1, 0, 1, 1, 0, 12, 'image\\w4rrtSkUuf1586940633936.jpg', '\\images\\thumbnails\\4bY2PeKIuD1586940633937.jpg');
INSERT INTO `shopinformation` VALUES (1101, '2020-04-15 09:05:19', 'uuuuuuu', 7, '231', 50.00, 1, 1, 1, 1, 0, 12, 'image\\us3mbHVa7P1586941519099.jpg', '\\images\\thumbnails\\XGr5fx3cNJ1586941519099.jpg');
INSERT INTO `shopinformation` VALUES (1102, '2020-04-16 01:27:11', '琼达', 7, '2391', 50.00, 1, 1, 0, 1, 0, 13, 'image\\NTCFDOv7Hd1587000431251.jpg', '\\images\\thumbnails\\srvV6cPYnp1587000431251.jpg');
INSERT INTO `shopinformation` VALUES (1103, '2020-04-16 01:28:07', '户', 7, '11', 50.00, 1, 1, 1, 1, 0, 13, 'image\\tyFG5dzpzK1587000487344.jpg', '\\images\\thumbnails\\ff5IiZYZ6w1587000487345.jpg');
INSERT INTO `shopinformation` VALUES (1104, '2020-04-16 01:28:26', '发发发', 7, '11', 50.00, 1, 1, 1, 1, 0, 13, 'image\\EO8tv9SkBZ1587000505699.jpg', '\\images\\thumbnails\\LuzOZlJO0l1587000505700.jpg');
INSERT INTO `shopinformation` VALUES (1105, '2020-04-16 01:28:37', '阿斯顿发生', 7, '111', 50.00, 1, 1, 1, 1, 0, 13, 'image\\ut1HMp93kp1587000516604.jpg', '\\images\\thumbnails\\qKmkgOn1kf1587000516610.jpg');
INSERT INTO `shopinformation` VALUES (1106, '2020-04-16 01:29:09', '打单发', 7, '111', 50.00, 1, 1, 1, 1, 0, 13, 'image\\OhDvtadCJt1587000548979.jpg', '\\images\\thumbnails\\Ig68wrgs671587000548979.jpg');
INSERT INTO `shopinformation` VALUES (1107, '2020-04-16 01:29:31', '打发大水发', 7, '111', 50.00, 1, 0, 1, 1, 0, 13, 'image\\6y2zQgWuVU1587000570719.jpg', '\\images\\thumbnails\\1WxIrSdO5k1587000570720.jpg');
INSERT INTO `shopinformation` VALUES (1108, '2020-04-16 01:29:49', '大师法第三方是', 7, '111', 50.00, 1, 1, 1, 1, 0, 13, 'image\\HfU8Is2Xi91587000586856.jpg', '\\images\\thumbnails\\myJeR9Nlni1587000586856.jpg');
INSERT INTO `shopinformation` VALUES (1109, '2020-04-17 12:51:54', '少年**', 7, '23910', 50.00, 1, 0, 1, 1, 0, 12, 'image\\2bLNCHr2ht1587127835524.jpg', '\\images\\thumbnails\\sG24tKKnpw1587127835524.jpg');
INSERT INTO `shopinformation` VALUES (1110, '2020-04-29 07:40:01', '1212', 7, '32323', 50.00, 1, 0, 1, 1, 0, 12, 'image\\kYt6axDgne1587131450423.jpg', '\\images\\thumbnails\\2ayAWqPW8K1587131450423.jpg');
INSERT INTO `shopinformation` VALUES (1111, '2020-04-28 14:17:46', '计算机网络书籍', 7, '2391906522', 20.00, 62, 1, 18, 1, 0, 12, 'image\\0Ob7s7Et9R1588083464129.jpg', '\\images\\thumbnails\\1CCj3HFE171588083464130.jpg');
INSERT INTO `shopinformation` VALUES (1112, '2020-04-29 07:15:40', 'aaaa', 7, '2391', 50.00, 1, 0, 2, 1, 0, 12, 'image\\kRPdqRfmSl1588144536000.jpg', '\\images\\thumbnails\\LQGblrpzti1588144536001.jpg');
INSERT INTO `shopinformation` VALUES (1113, '2020-04-29 07:33:02', '阿萨达大大方方的', 7, '239190', 50.00, 2, 0, 1, 1, 0, 12, 'image\\vyq824ezsj1588144996203.jpg', '\\images\\thumbnails\\dUGp434vAw1588144996204.jpg');
INSERT INTO `shopinformation` VALUES (1114, '2020-04-29 07:39:55', '少年**', 7, 'qqq', 50.00, 1, 0, 1, 1, 0, 12, 'image\\Sz56qN5X1S1588145915794.jpg', '\\images\\thumbnails\\R45rfo2iYN1588145915795.jpg');
INSERT INTO `shopinformation` VALUES (1115, '2020-04-29 07:42:17', '少年**', 7, '222', 50.00, 11, 0, 1, 1, 0, 12, 'image\\WoOYTvHGIN1588146107823.jpg', '\\images\\thumbnails\\GMS9giP24u1588146107824.jpg');
INSERT INTO `shopinformation` VALUES (1116, '2020-04-29 07:42:13', 'asdd', 7, '11', 20.00, 1, 0, 1, 1, 0, 12, 'image\\joZUCEFG8o1588146125343.jpg', '\\images\\thumbnails\\uCcKdtvc5N1588146125343.jpg');
INSERT INTO `shopinformation` VALUES (1117, '2020-05-26 05:53:51', '少年**', 7, '1', 50.00, 1, 0, 0, 1, 0, 12, 'image\\szWdyTMF1B1588146251997.jpg', '\\images\\thumbnails\\ZI1gf87aAM1588146251998.jpg');
INSERT INTO `shopinformation` VALUES (1118, '2020-05-26 11:48:47', 'C++程序设计', 5, '2391916555', 50.00, 63, 1, 3, 1, 0, 12, 'image\\b1lNyzC0EH1590493723715.jpg', '\\images\\thumbnails\\kSDfLUdqHu1590493723715.jpg');
INSERT INTO `shopinformation` VALUES (1119, '2020-05-26 12:02:15', 'Java语言', 7, '236111', 50.00, 63, 1, 3, 1, 0, 12, 'image\\Ggy9KBDPJG1590494533485.jpg', '\\images\\thumbnails\\HcdZw7Quh51590494533486.jpg');

-- ----------------------------
-- Table structure for shoppicture
-- ----------------------------
DROP TABLE IF EXISTS `shoppicture`;
CREATE TABLE `shoppicture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for specifickinds
-- ----------------------------
DROP TABLE IF EXISTS `specifickinds`;
CREATE TABLE `specifickinds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modified` datetime(0) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specifickinds
-- ----------------------------
INSERT INTO `specifickinds` VALUES (1, '经济学理论', NULL, 1);
INSERT INTO `specifickinds` VALUES (2, '投资理财', NULL, 1);
INSERT INTO `specifickinds` VALUES (3, '财经税收', NULL, 1);
INSERT INTO `specifickinds` VALUES (4, '银行与货币', NULL, 1);
INSERT INTO `specifickinds` VALUES (5, '证券股票', NULL, 1);
INSERT INTO `specifickinds` VALUES (6, '保险', NULL, 1);
INSERT INTO `specifickinds` VALUES (7, '国际金融', NULL, 1);
INSERT INTO `specifickinds` VALUES (8, '国际金融', NULL, 1);
INSERT INTO `specifickinds` VALUES (9, '其他', NULL, 1);
INSERT INTO `specifickinds` VALUES (10, '会计审计统计', NULL, 2);
INSERT INTO `specifickinds` VALUES (11, '会计课本', NULL, 2);
INSERT INTO `specifickinds` VALUES (12, '其他', NULL, 2);
INSERT INTO `specifickinds` VALUES (13, '国际经济与贸易', NULL, 3);
INSERT INTO `specifickinds` VALUES (14, '投资学', NULL, 3);
INSERT INTO `specifickinds` VALUES (15, '财政学', NULL, 3);
INSERT INTO `specifickinds` VALUES (16, '金融学', NULL, 3);
INSERT INTO `specifickinds` VALUES (17, '国民经济管理', NULL, 3);
INSERT INTO `specifickinds` VALUES (18, '体育经济', NULL, 3);
INSERT INTO `specifickinds` VALUES (19, '保险', NULL, 3);
INSERT INTO `specifickinds` VALUES (20, '金融工程', NULL, 3);
INSERT INTO `specifickinds` VALUES (21, '其他', NULL, 3);
INSERT INTO `specifickinds` VALUES (22, '教辅材料', NULL, 4);
INSERT INTO `specifickinds` VALUES (23, '家庭教育', NULL, 4);
INSERT INTO `specifickinds` VALUES (24, '教师课程', NULL, 4);
INSERT INTO `specifickinds` VALUES (25, '法律', NULL, 4);
INSERT INTO `specifickinds` VALUES (30, '其他', NULL, 4);
INSERT INTO `specifickinds` VALUES (31, '研究生考试', NULL, 5);
INSERT INTO `specifickinds` VALUES (32, '资格职称考试', NULL, 5);
INSERT INTO `specifickinds` VALUES (33, '公务员考试', NULL, 5);
INSERT INTO `specifickinds` VALUES (34, '教师资格考试', NULL, 5);
INSERT INTO `specifickinds` VALUES (35, '其他', NULL, 5);
INSERT INTO `specifickinds` VALUES (36, '中国近代史', NULL, 6);
INSERT INTO `specifickinds` VALUES (37, '中国现代史', NULL, 6);
INSERT INTO `specifickinds` VALUES (38, '中国古代史', NULL, 6);
INSERT INTO `specifickinds` VALUES (39, '其他', NULL, 6);
INSERT INTO `specifickinds` VALUES (40, '欧洲美洲史', NULL, 7);
INSERT INTO `specifickinds` VALUES (41, '非洲亚洲史', NULL, 7);
INSERT INTO `specifickinds` VALUES (42, '其他', NULL, 7);
INSERT INTO `specifickinds` VALUES (43, '美术考古学', NULL, 8);
INSERT INTO `specifickinds` VALUES (44, '宗教考古学', NULL, 8);
INSERT INTO `specifickinds` VALUES (45, '古钱学', NULL, 8);
INSERT INTO `specifickinds` VALUES (46, '古文字学', NULL, 8);
INSERT INTO `specifickinds` VALUES (47, '铭刻学', NULL, 8);
INSERT INTO `specifickinds` VALUES (48, '其他', NULL, 8);
INSERT INTO `specifickinds` VALUES (49, '雪域文化', NULL, 9);
INSERT INTO `specifickinds` VALUES (50, '草原文化', '2020-04-10 21:53:20', 9);
INSERT INTO `specifickinds` VALUES (51, '东北文化', '2020-04-10 21:53:23', 9);
INSERT INTO `specifickinds` VALUES (52, '中原文化', '2020-04-10 21:53:26', 9);
INSERT INTO `specifickinds` VALUES (53, '江南水乡文化', '2020-04-10 21:53:28', 9);
INSERT INTO `specifickinds` VALUES (54, '其他', '2020-04-10 21:53:30', 9);
INSERT INTO `specifickinds` VALUES (55, '史料学', NULL, 10);
INSERT INTO `specifickinds` VALUES (56, '年代学', NULL, 10);
INSERT INTO `specifickinds` VALUES (57, '其他', NULL, 10);
INSERT INTO `specifickinds` VALUES (58, '子', NULL, 11);
INSERT INTO `specifickinds` VALUES (59, '经', NULL, 11);
INSERT INTO `specifickinds` VALUES (60, '史', NULL, 11);
INSERT INTO `specifickinds` VALUES (61, '集', NULL, 11);
INSERT INTO `specifickinds` VALUES (62, '计算机网络', NULL, 12);
INSERT INTO `specifickinds` VALUES (63, '编程语言', NULL, 12);
INSERT INTO `specifickinds` VALUES (64, '数据结构', NULL, 12);
INSERT INTO `specifickinds` VALUES (65, '操作系统', NULL, 12);
INSERT INTO `specifickinds` VALUES (66, '嵌入式', NULL, 12);
INSERT INTO `specifickinds` VALUES (67, '单片机', NULL, 12);
INSERT INTO `specifickinds` VALUES (68, 'linux', NULL, 12);
INSERT INTO `specifickinds` VALUES (69, '其他', NULL, 12);
INSERT INTO `specifickinds` VALUES (70, '计算机考研', NULL, 13);
INSERT INTO `specifickinds` VALUES (71, '计算机等级考试', NULL, 13);
INSERT INTO `specifickinds` VALUES (72, '其他', NULL, 13);
INSERT INTO `specifickinds` VALUES (73, '颜料', NULL, 14);
INSERT INTO `specifickinds` VALUES (74, '笔', NULL, 14);
INSERT INTO `specifickinds` VALUES (75, '刷子', NULL, 14);
INSERT INTO `specifickinds` VALUES (76, '其他', NULL, 14);
INSERT INTO `specifickinds` VALUES (77, '信纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (78, '稿纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (79, '笔记本', NULL, 15);
INSERT INTO `specifickinds` VALUES (80, '宣纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (81, '打印纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (82, '新闻纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (83, '书皮纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (84, '凸版印刷纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (85, '绘图用纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (86, '绘画用纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (87, '纸板', NULL, 15);
INSERT INTO `specifickinds` VALUES (88, '加工纸', NULL, 15);
INSERT INTO `specifickinds` VALUES (89, '艺术纸张', NULL, 15);
INSERT INTO `specifickinds` VALUES (90, '其他', NULL, 15);
INSERT INTO `specifickinds` VALUES (91, '笔', NULL, 16);
INSERT INTO `specifickinds` VALUES (92, '尺子', NULL, 16);
INSERT INTO `specifickinds` VALUES (93, '其他', NULL, 16);
INSERT INTO `specifickinds` VALUES (94, '其他', NULL, 17);
INSERT INTO `specifickinds` VALUES (95, '毛泽东思想', NULL, 18);
INSERT INTO `specifickinds` VALUES (96, '邓小平思想', NULL, 18);
INSERT INTO `specifickinds` VALUES (97, '领导人思想', NULL, 18);
INSERT INTO `specifickinds` VALUES (98, '贺龙作战思想', NULL, 19);
INSERT INTO `specifickinds` VALUES (99, '其他', NULL, 18);
INSERT INTO `specifickinds` VALUES (100, '其他', NULL, 19);
INSERT INTO `specifickinds` VALUES (101, '其他', NULL, 20);

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userinformation
-- ----------------------------
DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE `userinformation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `clazz` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sno` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dormitory` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` datetime(0) DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `campus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `manager` tinyint(1) UNSIGNED ZEROFILL DEFAULT 0,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_id`(`id`) USING BTREE,
  INDEX `selectByPhone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinformation
-- ----------------------------
INSERT INTO `userinformation` VALUES (12, '2020-04-14 03:27:07', 'yzq', '18234232034', '杨志强', '物联网1603', '2016002159', '1-110', '男', '2020-04-14 03:27:07', NULL, '太原理工大学', '明向校区', 1, '2391906522');
INSERT INTO `userinformation` VALUES (13, '2020-04-14 06:44:21', '王湘凯', '18406599512', '王湘凯', '物联网', '2016002145', '1-110', '男', '2020-04-14 06:44:21', NULL, '太原理', '明向校区', 1, NULL);
INSERT INTO `userinformation` VALUES (15, '2020-04-17 13:37:24', 'xxx', '15525116616', 'xxx', '物联网1603', '20160021', NULL, NULL, '2020-04-17 13:37:24', NULL, '太原', NULL, 0, NULL);
INSERT INTO `userinformation` VALUES (16, '2020-04-20 08:15:05', 'zhy', '15525110861', 'zhy', '物联网', '2016002145', NULL, NULL, '2020-04-20 08:15:05', NULL, '太原理工', NULL, 0, NULL);
INSERT INTO `userinformation` VALUES (20, '2020-04-29 07:45:22', 'uuu', '17836041941', 'yzq', '', '', NULL, NULL, '2020-04-29 07:45:22', NULL, '', NULL, 0, NULL);

-- ----------------------------
-- Table structure for userpassword
-- ----------------------------
DROP TABLE IF EXISTS `userpassword`;
CREATE TABLE `userpassword`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `password` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `forgin_key`(`uid`) USING BTREE,
  CONSTRAINT `forgin_key` FOREIGN KEY (`uid`) REFERENCES `userinformation` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userpassword
-- ----------------------------
INSERT INTO `userpassword` VALUES (12, '2020-04-14 03:27:07', 'dmfEaCijQLPfI3w3BQ6PKQ==', 12);
INSERT INTO `userpassword` VALUES (13, '2020-04-14 06:44:21', 'HTN1sXeyi7+V2rUTsB2XtA==', 13);
INSERT INTO `userpassword` VALUES (15, '2020-04-17 13:37:24', '9WGq9u8L8U1CCLtGpMyzrQ==', 15);
INSERT INTO `userpassword` VALUES (16, '2020-04-20 08:15:06', 'P6+GFA3qXt1aBstnFe6XqQ==', 16);
INSERT INTO `userpassword` VALUES (20, '2020-04-29 07:45:22', 'xw/UJgyeuQvAup0EfAaOuA==', 20);

-- ----------------------------
-- Table structure for userrelease
-- ----------------------------
DROP TABLE IF EXISTS `userrelease`;
CREATE TABLE `userrelease`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1025 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userrelease
-- ----------------------------
INSERT INTO `userrelease` VALUES (1, '2020-04-20 15:55:37', 1, 7, 91);
INSERT INTO `userrelease` VALUES (2, '2020-04-20 19:07:34', 1, 7, 92);
INSERT INTO `userrelease` VALUES (3, '2020-04-25 16:08:37', 1, 61, 95);
INSERT INTO `userrelease` VALUES (4, '2020-04-25 16:08:40', 1, 50, 96);
INSERT INTO `userrelease` VALUES (5, '2020-04-25 16:08:40', 1, 18, 97);
INSERT INTO `userrelease` VALUES (6, '2020-04-25 16:08:40', 1, 29, 98);
INSERT INTO `userrelease` VALUES (7, '2020-04-25 16:08:40', 1, 38, 99);
INSERT INTO `userrelease` VALUES (8, '2020-04-25 16:08:40', 1, 44, 100);
INSERT INTO `userrelease` VALUES (9, '2020-04-25 16:08:40', 1, 14, 101);
INSERT INTO `userrelease` VALUES (10, '2020-04-25 16:08:40', 1, 52, 102);
INSERT INTO `userrelease` VALUES (11, '2020-04-25 16:08:40', 1, 37, 103);
INSERT INTO `userrelease` VALUES (12, '2020-04-25 16:08:40', 1, 43, 104);
INSERT INTO `userrelease` VALUES (13, '2020-04-25 16:08:40', 1, 52, 104);
INSERT INTO `userrelease` VALUES (14, '2020-04-25 16:08:40', 1, 61, 106);
INSERT INTO `userrelease` VALUES (15, '2020-04-25 16:08:40', 1, 31, 107);
INSERT INTO `userrelease` VALUES (16, '2020-04-25 16:08:40', 1, 51, 108);
INSERT INTO `userrelease` VALUES (17, '2020-04-25 16:08:40', 1, 63, 109);
INSERT INTO `userrelease` VALUES (18, '2020-04-25 16:08:41', 1, 29, 110);
INSERT INTO `userrelease` VALUES (19, '2020-04-25 16:08:41', 1, 37, 111);
INSERT INTO `userrelease` VALUES (20, '2020-04-25 16:08:41', 1, 16, 112);
INSERT INTO `userrelease` VALUES (21, '2020-04-25 16:08:41', 1, 38, 113);
INSERT INTO `userrelease` VALUES (22, '2020-04-25 16:08:41', 1, 65, 114);
INSERT INTO `userrelease` VALUES (23, '2020-04-25 16:08:41', 1, 15, 115);
INSERT INTO `userrelease` VALUES (24, '2020-04-25 16:08:41', 1, 61, 116);
INSERT INTO `userrelease` VALUES (25, '2020-04-25 16:08:41', 1, 54, 117);
INSERT INTO `userrelease` VALUES (26, '2020-04-25 16:08:41', 1, 73, 118);
INSERT INTO `userrelease` VALUES (27, '2020-04-25 16:08:41', 1, 74, 119);
INSERT INTO `userrelease` VALUES (28, '2020-04-25 16:08:41', 1, 46, 120);
INSERT INTO `userrelease` VALUES (29, '2020-04-25 16:08:41', 1, 98, 121);
INSERT INTO `userrelease` VALUES (30, '2020-04-25 16:08:41', 1, 50, 122);
INSERT INTO `userrelease` VALUES (31, '2020-04-25 16:08:41', 1, 92, 123);
INSERT INTO `userrelease` VALUES (32, '2020-04-25 16:08:41', 1, 60, 124);
INSERT INTO `userrelease` VALUES (33, '2020-04-25 16:08:41', 1, 21, 125);
INSERT INTO `userrelease` VALUES (34, '2020-04-25 16:08:41', 1, 79, 126);
INSERT INTO `userrelease` VALUES (35, '2020-04-25 16:08:41', 1, 71, 127);
INSERT INTO `userrelease` VALUES (36, '2020-04-25 16:08:41', 1, 90, 128);
INSERT INTO `userrelease` VALUES (37, '2020-04-25 16:08:41', 1, 64, 129);
INSERT INTO `userrelease` VALUES (38, '2020-04-25 16:08:41', 1, 89, 130);
INSERT INTO `userrelease` VALUES (39, '2020-04-25 16:08:41', 1, 55, 131);
INSERT INTO `userrelease` VALUES (40, '2020-04-25 16:08:41', 1, 29, 132);
INSERT INTO `userrelease` VALUES (41, '2020-04-25 16:08:41', 1, 34, 133);
INSERT INTO `userrelease` VALUES (42, '2020-04-25 16:08:41', 1, 92, 134);
INSERT INTO `userrelease` VALUES (43, '2020-04-25 16:08:41', 1, 32, 135);
INSERT INTO `userrelease` VALUES (44, '2020-04-25 16:08:41', 1, 89, 136);
INSERT INTO `userrelease` VALUES (45, '2020-04-25 16:08:41', 1, 65, 137);
INSERT INTO `userrelease` VALUES (46, '2020-04-25 16:08:41', 1, 91, 138);
INSERT INTO `userrelease` VALUES (47, '2020-04-25 16:08:41', 1, 40, 139);
INSERT INTO `userrelease` VALUES (48, '2020-04-25 16:08:41', 1, 55, 140);
INSERT INTO `userrelease` VALUES (49, '2020-04-25 16:08:41', 1, 6, 141);
INSERT INTO `userrelease` VALUES (50, '2020-04-25 16:08:41', 1, 88, 142);
INSERT INTO `userrelease` VALUES (51, '2020-04-25 16:08:41', 1, 45, 143);
INSERT INTO `userrelease` VALUES (52, '2020-04-25 16:08:41', 1, 11, 144);
INSERT INTO `userrelease` VALUES (53, '2020-04-25 16:08:41', 1, 32, 145);
INSERT INTO `userrelease` VALUES (54, '2020-04-25 16:08:41', 1, 61, 146);
INSERT INTO `userrelease` VALUES (55, '2020-04-25 16:08:41', 1, 44, 147);
INSERT INTO `userrelease` VALUES (56, '2020-04-25 16:08:41', 1, 86, 148);
INSERT INTO `userrelease` VALUES (57, '2020-04-25 16:08:41', 1, 30, 149);
INSERT INTO `userrelease` VALUES (58, '2020-04-25 16:08:41', 1, 84, 150);
INSERT INTO `userrelease` VALUES (59, '2020-04-25 16:08:41', 1, 90, 151);
INSERT INTO `userrelease` VALUES (60, '2020-04-25 16:08:41', 1, 73, 152);
INSERT INTO `userrelease` VALUES (61, '2020-04-25 16:08:41', 1, 16, 153);
INSERT INTO `userrelease` VALUES (62, '2020-04-25 16:08:41', 1, 61, 154);
INSERT INTO `userrelease` VALUES (63, '2020-04-25 16:08:41', 1, 21, 155);
INSERT INTO `userrelease` VALUES (64, '2020-04-25 16:08:41', 1, 92, 156);
INSERT INTO `userrelease` VALUES (65, '2020-04-25 16:08:41', 1, 44, 157);
INSERT INTO `userrelease` VALUES (66, '2020-04-25 16:08:41', 1, 11, 158);
INSERT INTO `userrelease` VALUES (67, '2020-04-25 16:08:41', 1, 76, 159);
INSERT INTO `userrelease` VALUES (68, '2020-04-25 16:08:41', 1, 31, 160);
INSERT INTO `userrelease` VALUES (69, '2020-04-25 16:08:41', 1, 18, 161);
INSERT INTO `userrelease` VALUES (70, '2020-04-25 16:08:41', 1, 9, 162);
INSERT INTO `userrelease` VALUES (71, '2020-04-25 16:08:41', 1, 42, 163);
INSERT INTO `userrelease` VALUES (72, '2020-04-25 16:08:41', 1, 92, 164);
INSERT INTO `userrelease` VALUES (73, '2020-04-25 16:08:41', 1, 5, 165);
INSERT INTO `userrelease` VALUES (74, '2020-04-25 16:08:41', 1, 57, 166);
INSERT INTO `userrelease` VALUES (75, '2020-04-25 16:08:41', 1, 81, 167);
INSERT INTO `userrelease` VALUES (76, '2020-04-25 16:08:41', 1, 39, 168);
INSERT INTO `userrelease` VALUES (77, '2020-04-25 16:08:41', 1, 57, 169);
INSERT INTO `userrelease` VALUES (78, '2020-04-25 16:08:41', 1, 16, 170);
INSERT INTO `userrelease` VALUES (79, '2020-04-25 16:08:41', 1, 95, 171);
INSERT INTO `userrelease` VALUES (80, '2020-04-25 16:08:41', 1, 95, 172);
INSERT INTO `userrelease` VALUES (81, '2020-04-25 16:08:41', 1, 68, 173);
INSERT INTO `userrelease` VALUES (82, '2020-04-25 16:08:41', 1, 56, 174);
INSERT INTO `userrelease` VALUES (83, '2020-04-25 16:08:41', 1, 82, 175);
INSERT INTO `userrelease` VALUES (84, '2020-04-25 16:08:41', 1, 44, 176);
INSERT INTO `userrelease` VALUES (85, '2020-04-25 16:08:41', 1, 81, 177);
INSERT INTO `userrelease` VALUES (86, '2020-04-25 16:08:41', 1, 32, 178);
INSERT INTO `userrelease` VALUES (87, '2020-04-25 16:08:41', 1, 90, 179);
INSERT INTO `userrelease` VALUES (88, '2020-04-25 16:08:41', 1, 22, 180);
INSERT INTO `userrelease` VALUES (89, '2020-04-25 16:08:41', 1, 84, 181);
INSERT INTO `userrelease` VALUES (90, '2020-04-25 16:08:41', 1, 71, 182);
INSERT INTO `userrelease` VALUES (91, '2020-04-25 16:08:41', 1, 36, 183);
INSERT INTO `userrelease` VALUES (92, '2020-04-25 16:08:41', 1, 80, 184);
INSERT INTO `userrelease` VALUES (93, '2020-04-25 16:08:41', 1, 86, 185);
INSERT INTO `userrelease` VALUES (94, '2020-04-25 16:08:41', 1, 35, 186);
INSERT INTO `userrelease` VALUES (95, '2020-04-25 16:08:41', 1, 13, 187);
INSERT INTO `userrelease` VALUES (96, '2020-04-25 16:08:41', 1, 4, 188);
INSERT INTO `userrelease` VALUES (97, '2020-04-25 16:08:41', 1, 68, 189);
INSERT INTO `userrelease` VALUES (98, '2020-04-25 16:08:41', 1, 30, 190);
INSERT INTO `userrelease` VALUES (99, '2020-04-25 16:08:41', 1, 80, 191);
INSERT INTO `userrelease` VALUES (100, '2020-04-25 16:08:41', 1, 16, 192);
INSERT INTO `userrelease` VALUES (101, '2020-04-25 16:08:41', 1, 52, 193);
INSERT INTO `userrelease` VALUES (102, '2020-04-25 16:08:41', 1, 53, 194);
INSERT INTO `userrelease` VALUES (103, '2020-04-25 16:08:41', 1, 61, 195);
INSERT INTO `userrelease` VALUES (104, '2020-04-25 16:08:41', 1, 85, 196);
INSERT INTO `userrelease` VALUES (164, '2020-04-25 16:08:42', 1, 79, 256);
INSERT INTO `userrelease` VALUES (165, '2020-04-25 16:08:42', 1, 93, 257);
INSERT INTO `userrelease` VALUES (166, '2020-04-25 16:08:42', 1, 15, 258);
INSERT INTO `userrelease` VALUES (167, '2020-04-25 16:08:42', 1, 3, 259);
INSERT INTO `userrelease` VALUES (168, '2020-04-25 16:08:42', 1, 94, 260);
INSERT INTO `userrelease` VALUES (169, '2020-04-25 16:08:42', 1, 62, 261);
INSERT INTO `userrelease` VALUES (170, '2020-04-25 16:08:42', 1, 96, 262);
INSERT INTO `userrelease` VALUES (171, '2020-04-25 16:08:42', 1, 16, 263);
INSERT INTO `userrelease` VALUES (172, '2020-04-25 16:08:42', 1, 20, 264);
INSERT INTO `userrelease` VALUES (173, '2020-04-25 16:08:42', 1, 78, 265);
INSERT INTO `userrelease` VALUES (174, '2020-04-25 16:08:42', 1, 22, 266);
INSERT INTO `userrelease` VALUES (175, '2020-04-25 16:08:42', 1, 59, 267);
INSERT INTO `userrelease` VALUES (176, '2020-04-25 16:08:42', 1, 87, 268);
INSERT INTO `userrelease` VALUES (177, '2020-04-25 16:08:42', 1, 49, 269);
INSERT INTO `userrelease` VALUES (178, '2020-04-25 16:08:42', 1, 12, 270);
INSERT INTO `userrelease` VALUES (179, '2020-04-25 16:08:42', 1, 18, 271);
INSERT INTO `userrelease` VALUES (180, '2020-04-25 16:08:42', 1, 55, 272);
INSERT INTO `userrelease` VALUES (181, '2020-04-25 16:08:42', 1, 24, 273);
INSERT INTO `userrelease` VALUES (182, '2020-04-25 16:08:42', 1, 42, 274);
INSERT INTO `userrelease` VALUES (183, '2020-04-25 16:08:42', 1, 76, 275);
INSERT INTO `userrelease` VALUES (184, '2020-04-25 16:08:42', 1, 48, 276);
INSERT INTO `userrelease` VALUES (185, '2020-04-25 16:08:42', 1, 23, 277);
INSERT INTO `userrelease` VALUES (186, '2020-04-25 16:08:42', 1, 42, 278);
INSERT INTO `userrelease` VALUES (187, '2020-04-25 16:08:42', 1, 1, 279);
INSERT INTO `userrelease` VALUES (188, '2020-04-25 16:08:42', 1, 29, 280);
INSERT INTO `userrelease` VALUES (189, '2020-04-25 16:08:42', 1, 60, 281);
INSERT INTO `userrelease` VALUES (190, '2020-04-25 16:08:42', 1, 2, 282);
INSERT INTO `userrelease` VALUES (191, '2020-04-25 16:08:42', 1, 53, 283);
INSERT INTO `userrelease` VALUES (192, '2020-04-25 16:08:42', 1, 85, 284);
INSERT INTO `userrelease` VALUES (193, '2020-04-25 16:08:42', 1, 83, 285);
INSERT INTO `userrelease` VALUES (194, '2020-04-25 16:08:42', 1, 10, 286);
INSERT INTO `userrelease` VALUES (195, '2020-04-25 16:08:42', 1, 86, 287);
INSERT INTO `userrelease` VALUES (196, '2020-04-25 16:08:42', 1, 98, 288);
INSERT INTO `userrelease` VALUES (197, '2020-04-25 16:08:42', 1, 36, 289);
INSERT INTO `userrelease` VALUES (198, '2020-04-25 16:08:42', 1, 32, 290);
INSERT INTO `userrelease` VALUES (199, '2020-04-25 16:08:42', 1, 54, 291);
INSERT INTO `userrelease` VALUES (200, '2020-04-25 16:08:42', 1, 9, 292);
INSERT INTO `userrelease` VALUES (201, '2020-04-25 16:08:42', 1, 64, 293);
INSERT INTO `userrelease` VALUES (202, '2020-04-25 16:08:42', 1, 49, 294);
INSERT INTO `userrelease` VALUES (203, '2020-04-25 16:08:42', 1, 6, 295);
INSERT INTO `userrelease` VALUES (204, '2020-04-25 16:08:42', 1, 76, 296);
INSERT INTO `userrelease` VALUES (359, '2020-04-25 16:08:43', 1, 71, 451);
INSERT INTO `userrelease` VALUES (360, '2020-04-25 16:08:43', 1, 88, 452);
INSERT INTO `userrelease` VALUES (361, '2020-04-25 16:08:43', 1, 13, 453);
INSERT INTO `userrelease` VALUES (362, '2020-04-25 16:08:43', 1, 26, 454);
INSERT INTO `userrelease` VALUES (363, '2020-04-25 16:08:43', 1, 85, 455);
INSERT INTO `userrelease` VALUES (364, '2020-04-25 16:08:43', 1, 47, 456);
INSERT INTO `userrelease` VALUES (365, '2020-04-25 16:08:43', 1, 27, 457);
INSERT INTO `userrelease` VALUES (366, '2020-04-25 16:08:43', 1, 4, 458);
INSERT INTO `userrelease` VALUES (367, '2020-04-25 16:08:43', 1, 22, 459);
INSERT INTO `userrelease` VALUES (368, '2020-04-25 16:08:43', 1, 62, 460);
INSERT INTO `userrelease` VALUES (369, '2020-04-25 16:08:43', 1, 87, 461);
INSERT INTO `userrelease` VALUES (370, '2020-04-25 16:08:43', 1, 5, 462);
INSERT INTO `userrelease` VALUES (371, '2020-04-25 16:08:43', 1, 1, 463);
INSERT INTO `userrelease` VALUES (372, '2020-04-25 16:08:43', 1, 73, 464);
INSERT INTO `userrelease` VALUES (373, '2020-04-25 16:08:43', 1, 11, 465);
INSERT INTO `userrelease` VALUES (374, '2020-04-25 16:08:43', 1, 63, 466);
INSERT INTO `userrelease` VALUES (375, '2020-04-25 16:08:43', 1, 81, 467);
INSERT INTO `userrelease` VALUES (376, '2020-04-25 16:08:43', 1, 38, 468);
INSERT INTO `userrelease` VALUES (377, '2020-04-25 16:08:43', 1, 18, 469);
INSERT INTO `userrelease` VALUES (378, '2020-04-25 16:08:43', 1, 66, 470);
INSERT INTO `userrelease` VALUES (379, '2020-04-25 16:08:43', 1, 39, 471);
INSERT INTO `userrelease` VALUES (380, '2020-04-25 16:08:43', 1, 87, 472);
INSERT INTO `userrelease` VALUES (381, '2020-04-25 16:08:43', 1, 4, 473);
INSERT INTO `userrelease` VALUES (382, '2020-04-25 16:08:43', 1, 62, 474);
INSERT INTO `userrelease` VALUES (383, '2020-04-25 16:08:43', 1, 11, 475);
INSERT INTO `userrelease` VALUES (384, '2020-04-25 16:08:43', 1, 20, 476);
INSERT INTO `userrelease` VALUES (385, '2020-04-25 16:08:43', 1, 30, 477);
INSERT INTO `userrelease` VALUES (386, '2020-04-25 16:08:43', 1, 98, 478);
INSERT INTO `userrelease` VALUES (387, '2020-04-25 16:08:43', 1, 70, 479);
INSERT INTO `userrelease` VALUES (388, '2020-04-25 16:08:43', 1, 9, 480);
INSERT INTO `userrelease` VALUES (389, '2020-04-25 16:08:43', 1, 82, 481);
INSERT INTO `userrelease` VALUES (390, '2020-04-25 16:08:43', 1, 61, 482);
INSERT INTO `userrelease` VALUES (391, '2020-04-25 16:08:43', 1, 87, 483);
INSERT INTO `userrelease` VALUES (392, '2020-04-25 16:08:43', 1, 43, 484);
INSERT INTO `userrelease` VALUES (393, '2020-04-25 16:08:43', 1, 57, 485);
INSERT INTO `userrelease` VALUES (394, '2020-04-25 16:08:43', 1, 58, 486);
INSERT INTO `userrelease` VALUES (395, '2020-04-25 16:08:43', 1, 55, 487);
INSERT INTO `userrelease` VALUES (396, '2020-04-25 16:08:43', 1, 84, 488);
INSERT INTO `userrelease` VALUES (397, '2020-04-25 16:08:43', 1, 67, 489);
INSERT INTO `userrelease` VALUES (398, '2020-04-25 16:08:43', 1, 22, 490);
INSERT INTO `userrelease` VALUES (399, '2020-04-25 16:08:43', 1, 64, 491);
INSERT INTO `userrelease` VALUES (400, '2020-04-25 16:08:43', 1, 85, 492);
INSERT INTO `userrelease` VALUES (401, '2020-04-25 16:08:43', 1, 11, 493);
INSERT INTO `userrelease` VALUES (402, '2020-04-25 16:08:43', 1, 57, 494);
INSERT INTO `userrelease` VALUES (403, '2020-04-25 16:08:44', 1, 60, 495);
INSERT INTO `userrelease` VALUES (404, '2020-04-25 16:08:44', 1, 100, 496);
INSERT INTO `userrelease` VALUES (554, '2020-04-25 16:08:45', 1, 77, 646);
INSERT INTO `userrelease` VALUES (555, '2020-04-25 16:08:45', 1, 69, 647);
INSERT INTO `userrelease` VALUES (556, '2020-04-25 16:08:45', 1, 65, 648);
INSERT INTO `userrelease` VALUES (557, '2020-04-25 16:08:45', 1, 50, 649);
INSERT INTO `userrelease` VALUES (558, '2020-04-25 16:08:45', 1, 96, 650);
INSERT INTO `userrelease` VALUES (559, '2020-04-25 16:08:45', 1, 78, 651);
INSERT INTO `userrelease` VALUES (560, '2020-04-25 16:08:45', 1, 19, 652);
INSERT INTO `userrelease` VALUES (561, '2020-04-25 16:08:45', 1, 33, 653);
INSERT INTO `userrelease` VALUES (562, '2020-04-25 16:08:45', 1, 34, 654);
INSERT INTO `userrelease` VALUES (563, '2020-04-25 16:08:45', 1, 10, 655);
INSERT INTO `userrelease` VALUES (564, '2020-04-25 16:08:45', 1, 87, 656);
INSERT INTO `userrelease` VALUES (565, '2020-04-25 16:08:45', 1, 8, 657);
INSERT INTO `userrelease` VALUES (566, '2020-04-25 16:08:45', 1, 50, 658);
INSERT INTO `userrelease` VALUES (567, '2020-04-25 16:08:45', 1, 27, 659);
INSERT INTO `userrelease` VALUES (568, '2020-04-25 16:08:45', 1, 32, 660);
INSERT INTO `userrelease` VALUES (569, '2020-04-25 16:08:45', 1, 77, 661);
INSERT INTO `userrelease` VALUES (570, '2020-04-25 16:08:45', 1, 27, 662);
INSERT INTO `userrelease` VALUES (571, '2020-04-25 16:08:45', 1, 15, 663);
INSERT INTO `userrelease` VALUES (572, '2020-04-25 16:08:45', 1, 25, 664);
INSERT INTO `userrelease` VALUES (573, '2020-04-25 16:08:45', 1, 74, 665);
INSERT INTO `userrelease` VALUES (574, '2020-04-25 16:08:45', 1, 29, 666);
INSERT INTO `userrelease` VALUES (575, '2020-04-25 16:08:45', 1, 94, 667);
INSERT INTO `userrelease` VALUES (576, '2020-04-25 16:08:45', 1, 81, 668);
INSERT INTO `userrelease` VALUES (577, '2020-04-25 16:08:45', 1, 24, 669);
INSERT INTO `userrelease` VALUES (578, '2020-04-25 16:08:45', 1, 67, 670);
INSERT INTO `userrelease` VALUES (579, '2020-04-25 16:08:45', 1, 8, 671);
INSERT INTO `userrelease` VALUES (580, '2020-04-25 16:08:45', 1, 47, 672);
INSERT INTO `userrelease` VALUES (581, '2020-04-25 16:08:45', 1, 95, 673);
INSERT INTO `userrelease` VALUES (582, '2020-04-25 16:08:45', 1, 60, 674);
INSERT INTO `userrelease` VALUES (583, '2020-04-25 16:08:45', 1, 49, 675);
INSERT INTO `userrelease` VALUES (584, '2020-04-25 16:08:45', 1, 87, 676);
INSERT INTO `userrelease` VALUES (585, '2020-04-25 16:08:45', 1, 86, 677);
INSERT INTO `userrelease` VALUES (586, '2020-04-25 16:08:45', 1, 70, 678);
INSERT INTO `userrelease` VALUES (587, '2020-04-25 16:08:45', 1, 97, 679);
INSERT INTO `userrelease` VALUES (588, '2020-04-25 16:08:45', 1, 27, 680);
INSERT INTO `userrelease` VALUES (589, '2020-04-25 16:08:45', 1, 61, 681);
INSERT INTO `userrelease` VALUES (590, '2020-04-25 16:08:45', 1, 26, 682);
INSERT INTO `userrelease` VALUES (591, '2020-04-25 16:08:45', 1, 71, 683);
INSERT INTO `userrelease` VALUES (592, '2020-04-25 16:08:45', 1, 72, 684);
INSERT INTO `userrelease` VALUES (593, '2020-04-25 16:08:45', 1, 85, 685);
INSERT INTO `userrelease` VALUES (594, '2020-04-25 16:08:45', 1, 2, 686);
INSERT INTO `userrelease` VALUES (595, '2020-04-25 16:08:45', 1, 14, 687);
INSERT INTO `userrelease` VALUES (596, '2020-04-25 16:08:45', 1, 96, 688);
INSERT INTO `userrelease` VALUES (597, '2020-04-25 16:08:45', 1, 3, 689);
INSERT INTO `userrelease` VALUES (598, '2020-04-25 16:08:45', 1, 13, 690);
INSERT INTO `userrelease` VALUES (599, '2020-04-25 16:08:45', 1, 20, 691);
INSERT INTO `userrelease` VALUES (600, '2020-04-25 16:08:45', 1, 33, 692);
INSERT INTO `userrelease` VALUES (601, '2020-04-25 16:08:45', 1, 14, 693);
INSERT INTO `userrelease` VALUES (602, '2020-04-25 16:08:45', 1, 30, 694);
INSERT INTO `userrelease` VALUES (603, '2020-04-25 16:08:45', 1, 7, 695);
INSERT INTO `userrelease` VALUES (604, '2020-04-25 16:08:45', 1, 13, 696);
INSERT INTO `userrelease` VALUES (749, '2020-04-25 16:08:46', 1, 83, 841);
INSERT INTO `userrelease` VALUES (750, '2020-04-25 16:08:46', 1, 82, 842);
INSERT INTO `userrelease` VALUES (751, '2020-04-25 16:08:46', 1, 50, 843);
INSERT INTO `userrelease` VALUES (752, '2020-04-25 16:08:46', 1, 21, 844);
INSERT INTO `userrelease` VALUES (753, '2020-04-25 16:08:46', 1, 38, 845);
INSERT INTO `userrelease` VALUES (754, '2020-04-25 16:08:46', 1, 39, 846);
INSERT INTO `userrelease` VALUES (755, '2020-04-25 16:08:46', 1, 18, 847);
INSERT INTO `userrelease` VALUES (756, '2020-04-25 16:08:46', 1, 55, 848);
INSERT INTO `userrelease` VALUES (757, '2020-04-25 16:08:46', 1, 19, 849);
INSERT INTO `userrelease` VALUES (758, '2020-04-25 16:08:46', 1, 8, 850);
INSERT INTO `userrelease` VALUES (759, '2020-04-25 16:08:46', 1, 34, 851);
INSERT INTO `userrelease` VALUES (760, '2020-04-25 16:08:46', 1, 87, 852);
INSERT INTO `userrelease` VALUES (761, '2020-04-25 16:08:46', 1, 92, 853);
INSERT INTO `userrelease` VALUES (762, '2020-04-25 16:08:46', 1, 55, 854);
INSERT INTO `userrelease` VALUES (763, '2020-04-25 16:08:46', 1, 6, 855);
INSERT INTO `userrelease` VALUES (764, '2020-04-25 16:08:46', 1, 53, 856);
INSERT INTO `userrelease` VALUES (765, '2020-04-25 16:08:46', 1, 49, 857);
INSERT INTO `userrelease` VALUES (766, '2020-04-25 16:08:46', 1, 30, 858);
INSERT INTO `userrelease` VALUES (767, '2020-04-25 16:08:46', 1, 69, 859);
INSERT INTO `userrelease` VALUES (768, '2020-04-25 16:08:46', 1, 83, 860);
INSERT INTO `userrelease` VALUES (769, '2020-04-25 16:08:46', 1, 50, 861);
INSERT INTO `userrelease` VALUES (770, '2020-04-25 16:08:46', 1, 7, 862);
INSERT INTO `userrelease` VALUES (771, '2020-04-25 16:08:46', 1, 81, 863);
INSERT INTO `userrelease` VALUES (772, '2020-04-25 16:08:46', 1, 40, 864);
INSERT INTO `userrelease` VALUES (773, '2020-04-25 16:08:46', 1, 49, 865);
INSERT INTO `userrelease` VALUES (774, '2020-04-25 16:08:46', 1, 97, 866);
INSERT INTO `userrelease` VALUES (775, '2020-04-25 16:08:46', 1, 24, 867);
INSERT INTO `userrelease` VALUES (776, '2020-04-25 16:08:46', 1, 47, 868);
INSERT INTO `userrelease` VALUES (777, '2020-04-25 16:08:46', 1, 26, 869);
INSERT INTO `userrelease` VALUES (778, '2020-04-25 16:08:46', 1, 31, 870);
INSERT INTO `userrelease` VALUES (779, '2020-04-25 16:08:46', 1, 67, 871);
INSERT INTO `userrelease` VALUES (780, '2020-04-25 16:08:46', 1, 93, 872);
INSERT INTO `userrelease` VALUES (781, '2020-04-25 16:08:46', 1, 84, 873);
INSERT INTO `userrelease` VALUES (782, '2020-04-25 16:08:46', 1, 84, 874);
INSERT INTO `userrelease` VALUES (783, '2020-04-25 16:08:46', 1, 51, 875);
INSERT INTO `userrelease` VALUES (784, '2020-04-25 16:08:46', 1, 24, 876);
INSERT INTO `userrelease` VALUES (785, '2020-04-25 16:08:46', 1, 98, 877);
INSERT INTO `userrelease` VALUES (786, '2020-04-25 16:08:46', 1, 28, 878);
INSERT INTO `userrelease` VALUES (787, '2020-04-25 16:08:46', 1, 66, 879);
INSERT INTO `userrelease` VALUES (788, '2020-04-25 16:08:46', 1, 100, 880);
INSERT INTO `userrelease` VALUES (789, '2020-04-25 16:08:46', 1, 63, 881);
INSERT INTO `userrelease` VALUES (790, '2020-04-25 16:08:46', 1, 36, 882);
INSERT INTO `userrelease` VALUES (791, '2020-04-25 16:08:46', 1, 84, 883);
INSERT INTO `userrelease` VALUES (792, '2020-04-25 16:08:46', 1, 69, 884);
INSERT INTO `userrelease` VALUES (793, '2020-04-25 16:08:46', 1, 6, 885);
INSERT INTO `userrelease` VALUES (794, '2020-04-25 16:08:46', 1, 29, 886);
INSERT INTO `userrelease` VALUES (795, '2020-04-25 16:08:46', 1, 84, 887);
INSERT INTO `userrelease` VALUES (796, '2020-04-25 16:08:46', 1, 23, 888);
INSERT INTO `userrelease` VALUES (797, '2020-04-25 16:08:46', 1, 53, 889);
INSERT INTO `userrelease` VALUES (798, '2020-04-25 16:08:46', 1, 52, 890);
INSERT INTO `userrelease` VALUES (799, '2020-04-25 16:08:46', 1, 91, 891);
INSERT INTO `userrelease` VALUES (800, '2020-04-25 16:08:46', 1, 17, 892);
INSERT INTO `userrelease` VALUES (801, '2020-04-25 16:08:46', 1, 37, 893);
INSERT INTO `userrelease` VALUES (802, '2020-04-25 16:08:46', 1, 3, 894);
INSERT INTO `userrelease` VALUES (803, '2020-04-25 16:08:46', 1, 64, 895);
INSERT INTO `userrelease` VALUES (804, '2020-04-25 16:08:46', 1, 93, 896);
INSERT INTO `userrelease` VALUES (944, '2020-04-25 16:08:48', 1, 3, 1036);
INSERT INTO `userrelease` VALUES (945, '2020-04-25 16:08:48', 1, 79, 1037);
INSERT INTO `userrelease` VALUES (946, '2020-04-25 16:08:48', 1, 37, 1038);
INSERT INTO `userrelease` VALUES (947, '2020-04-25 16:08:48', 1, 76, 1039);
INSERT INTO `userrelease` VALUES (948, '2020-04-25 16:08:48', 1, 11, 1040);
INSERT INTO `userrelease` VALUES (949, '2020-04-25 16:08:48', 1, 47, 1041);
INSERT INTO `userrelease` VALUES (950, '2020-04-25 16:08:48', 1, 95, 1042);
INSERT INTO `userrelease` VALUES (951, '2020-04-25 16:08:48', 1, 29, 1043);
INSERT INTO `userrelease` VALUES (952, '2020-04-25 16:08:48', 1, 24, 1044);
INSERT INTO `userrelease` VALUES (953, '2020-04-25 16:08:48', 1, 26, 1045);
INSERT INTO `userrelease` VALUES (954, '2020-04-25 16:08:48', 1, 16, 1046);
INSERT INTO `userrelease` VALUES (955, '2020-04-25 16:08:48', 1, 36, 1047);
INSERT INTO `userrelease` VALUES (956, '2020-04-25 16:08:48', 1, 89, 1048);
INSERT INTO `userrelease` VALUES (957, '2020-04-25 16:08:48', 1, 10, 1049);
INSERT INTO `userrelease` VALUES (958, '2020-04-25 16:08:48', 1, 26, 1040);
INSERT INTO `userrelease` VALUES (959, '2020-04-25 16:08:48', 1, 41, 1041);
INSERT INTO `userrelease` VALUES (960, '2020-04-25 16:08:48', 1, 82, 1042);
INSERT INTO `userrelease` VALUES (961, '2020-04-25 16:08:48', 1, 56, 1043);
INSERT INTO `userrelease` VALUES (962, '2020-04-25 16:08:48', 1, 84, 1044);
INSERT INTO `userrelease` VALUES (963, '2020-04-25 16:08:48', 1, 81, 1045);
INSERT INTO `userrelease` VALUES (964, '2020-04-25 16:08:48', 1, 24, 1046);
INSERT INTO `userrelease` VALUES (965, '2020-04-25 16:08:48', 1, 81, 1047);
INSERT INTO `userrelease` VALUES (966, '2020-04-25 16:08:48', 1, 88, 1048);
INSERT INTO `userrelease` VALUES (967, '2020-04-25 16:08:48', 1, 39, 1049);
INSERT INTO `userrelease` VALUES (968, '2020-04-25 16:08:48', 1, 21, 1060);
INSERT INTO `userrelease` VALUES (969, '2020-04-25 16:08:48', 1, 87, 1061);
INSERT INTO `userrelease` VALUES (970, '2020-04-25 16:08:48', 1, 29, 1062);
INSERT INTO `userrelease` VALUES (971, '2020-04-25 16:08:48', 1, 15, 1063);
INSERT INTO `userrelease` VALUES (972, '2020-04-25 16:08:48', 1, 22, 1064);
INSERT INTO `userrelease` VALUES (973, '2020-04-25 16:08:48', 1, 22, 1065);
INSERT INTO `userrelease` VALUES (974, '2020-04-25 16:08:48', 1, 80, 1066);
INSERT INTO `userrelease` VALUES (975, '2020-04-25 16:08:48', 1, 24, 1067);
INSERT INTO `userrelease` VALUES (976, '2020-04-25 16:08:48', 1, 61, 1068);
INSERT INTO `userrelease` VALUES (977, '2020-04-25 16:08:48', 1, 15, 1069);
INSERT INTO `userrelease` VALUES (978, '2020-04-25 16:08:48', 1, 42, 1070);
INSERT INTO `userrelease` VALUES (979, '2020-04-25 16:08:48', 1, 89, 1071);
INSERT INTO `userrelease` VALUES (980, '2020-04-25 16:08:48', 1, 71, 1072);
INSERT INTO `userrelease` VALUES (981, '2020-04-25 16:08:48', 1, 76, 1073);
INSERT INTO `userrelease` VALUES (982, '2020-04-25 16:08:48', 1, 14, 1074);
INSERT INTO `userrelease` VALUES (983, '2020-04-25 16:08:48', 1, 4, 1075);
INSERT INTO `userrelease` VALUES (984, '2020-04-25 16:08:48', 1, 22, 1076);
INSERT INTO `userrelease` VALUES (985, '2020-04-25 16:08:48', 1, 70, 1077);
INSERT INTO `userrelease` VALUES (986, '2020-04-25 16:08:48', 1, 53, 1078);
INSERT INTO `userrelease` VALUES (987, '2020-04-25 16:08:48', 1, 45, 1079);
INSERT INTO `userrelease` VALUES (988, '2020-04-25 16:08:48', 1, 20, 1080);
INSERT INTO `userrelease` VALUES (989, '2020-04-25 16:08:48', 1, 20, 1081);
INSERT INTO `userrelease` VALUES (990, '2020-04-25 16:08:48', 1, 95, 1082);
INSERT INTO `userrelease` VALUES (991, '2020-04-25 16:08:48', 1, 51, 1083);
INSERT INTO `userrelease` VALUES (992, '2020-04-25 16:08:48', 1, 42, 1084);
INSERT INTO `userrelease` VALUES (993, '2020-04-25 16:08:48', 1, 30, 1085);
INSERT INTO `userrelease` VALUES (994, '2020-04-25 16:08:48', 1, 85, 1086);
INSERT INTO `userrelease` VALUES (995, '2020-04-25 16:08:48', 1, 37, 1087);
INSERT INTO `userrelease` VALUES (996, '2020-04-25 16:08:48', 1, 80, 1088);
INSERT INTO `userrelease` VALUES (997, '2020-04-25 16:08:48', 1, 59, 1089);
INSERT INTO `userrelease` VALUES (998, '2020-04-25 16:08:48', 1, 17, 1090);
INSERT INTO `userrelease` VALUES (999, '2020-04-25 16:08:48', 1, 75, 1091);
INSERT INTO `userrelease` VALUES (1000, '2020-04-25 16:08:48', 1, 75, 1092);
INSERT INTO `userrelease` VALUES (1001, '2020-04-25 16:08:48', 1, 68, 1093);
INSERT INTO `userrelease` VALUES (1002, '2020-04-25 16:17:15', 1, 7, 1094);
INSERT INTO `userrelease` VALUES (1003, '2020-04-25 16:18:14', 1, 7, 1095);
INSERT INTO `userrelease` VALUES (1004, '2020-04-25 16:24:46', 1, 7, 1096);
INSERT INTO `userrelease` VALUES (1006, '2020-04-15 07:58:06', 1, 12, 1098);
INSERT INTO `userrelease` VALUES (1007, '2020-04-15 08:38:31', 1, 12, 1099);
INSERT INTO `userrelease` VALUES (1008, '2020-04-15 08:50:34', 1, 12, 1100);
INSERT INTO `userrelease` VALUES (1009, '2020-04-15 09:05:19', 1, 12, 1101);
INSERT INTO `userrelease` VALUES (1010, '2020-04-16 01:27:12', 1, 13, 1102);
INSERT INTO `userrelease` VALUES (1011, '2020-04-16 01:28:08', 1, 13, 1103);
INSERT INTO `userrelease` VALUES (1012, '2020-04-16 01:28:26', 1, 13, 1104);
INSERT INTO `userrelease` VALUES (1013, '2020-04-16 01:28:37', 1, 13, 1105);
INSERT INTO `userrelease` VALUES (1014, '2020-04-16 01:29:09', 1, 13, 1106);
INSERT INTO `userrelease` VALUES (1015, '2020-04-16 01:29:31', 1, 13, 1107);
INSERT INTO `userrelease` VALUES (1016, '2020-04-16 01:29:50', 1, 13, 1108);
INSERT INTO `userrelease` VALUES (1018, '2020-04-17 13:50:52', 1, 12, 1110);
INSERT INTO `userrelease` VALUES (1019, '2020-04-28 14:17:46', 1, 12, 1111);
INSERT INTO `userrelease` VALUES (1020, '2020-04-29 07:15:40', 1, 12, 1112);
INSERT INTO `userrelease` VALUES (1021, '2020-04-29 07:23:20', 1, 12, 1113);
INSERT INTO `userrelease` VALUES (1022, '2020-04-29 07:38:38', 1, 12, 1114);
INSERT INTO `userrelease` VALUES (1023, '2020-04-29 07:41:50', 1, 12, 1115);
INSERT INTO `userrelease` VALUES (1024, '2020-04-29 07:42:07', 1, 12, 1116);
INSERT INTO `userrelease` VALUES (1025, '2020-04-29 07:44:14', 1, 12, 1117);
INSERT INTO `userrelease` VALUES (1026, '2020-05-26 11:48:47', 1, 12, 1118);
INSERT INTO `userrelease` VALUES (1027, '2020-05-26 12:02:15', 1, 12, 1119);

-- ----------------------------
-- Table structure for userstate
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit` int(11) NOT NULL DEFAULT 80,
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `modified` datetime(0) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userwant
-- ----------------------------
DROP TABLE IF EXISTS `userwant`;
CREATE TABLE `userwant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userwant
-- ----------------------------
INSERT INTO `userwant` VALUES (1, '2020-04-21 21:03:38', 1, '龙年限定', 1, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 7);
INSERT INTO `userwant` VALUES (2, '2020-04-21 21:03:38', 1, '龙年限定d', 2, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 7);
INSERT INTO `userwant` VALUES (3, '2020-04-21 21:03:38', 1, '龙年限定c', 5, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 2);
INSERT INTO `userwant` VALUES (4, '2020-04-21 21:03:38', 1, '龙年限定c', 79, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 3);
INSERT INTO `userwant` VALUES (5, '2020-04-21 21:03:38', 1, '龙年限定c', 1, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 1);
INSERT INTO `userwant` VALUES (6, '2020-04-21 21:03:38', 1, '龙年限定x', 50, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 7);
INSERT INTO `userwant` VALUES (7, '2020-04-21 21:03:38', 1, '龙年限定c', 1, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 7);
INSERT INTO `userwant` VALUES (8, '2020-04-21 21:03:38', 1, '龙年限定g', 44, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 4);
INSERT INTO `userwant` VALUES (9, '2020-04-21 21:03:38', 1, '龙年限定 d', 33, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 7);
INSERT INTO `userwant` VALUES (10, '2020-04-21 21:03:38', 1, '龙年限定b', 78, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 5);
INSERT INTO `userwant` VALUES (11, '2020-04-21 21:03:38', 1, '龙年限定g', 36, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 6);
INSERT INTO `userwant` VALUES (12, '2020-04-21 21:03:38', 1, '龙年限定j', 66, 1, 1.00, '好东西哟，一般来说，好的东西都是需要很多很多人来抢着买的，一万年太久，只争朝夕', 7);
INSERT INTO `userwant` VALUES (13, '2020-05-15 02:11:04', 1, 'niha', 1, 1, 20.00, '222', 12);
INSERT INTO `userwant` VALUES (14, '2020-05-26 12:08:21', 1, 'linux', 68, 1, 20.00, '2222', 12);

-- ----------------------------
-- Table structure for wantcontext
-- ----------------------------
DROP TABLE IF EXISTS `wantcontext`;
CREATE TABLE `wantcontext`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime(0) DEFAULT NULL,
  `uwid` int(11) NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
