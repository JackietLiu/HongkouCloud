/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-09-11 14:00:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for headimages
-- ----------------------------
DROP TABLE IF EXISTS `headimages`;
CREATE TABLE `headimages` (
  `id` varchar(64) NOT NULL,
  `uid` varchar(64) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `near` varchar(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of headimages
-- ----------------------------

-- ----------------------------
-- Table structure for netease_user
-- ----------------------------
DROP TABLE IF EXISTS `netease_user`;
CREATE TABLE `netease_user` (
  `fID` varchar(50) NOT NULL COMMENT 'ID',
  `fType` varchar(50) DEFAULT NULL COMMENT 'QQ;weibo;weixin;sim',
  `fName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `passwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `fPhoneNumber` varchar(20) DEFAULT NULL COMMENT '电话',
  `fAddress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of netease_user
-- ----------------------------

-- ----------------------------
-- Table structure for pai_pictures
-- ----------------------------
DROP TABLE IF EXISTS `pai_pictures`;
CREATE TABLE `pai_pictures` (
  `fID` varchar(64) NOT NULL,
  `fFileName` varchar(200) DEFAULT NULL,
  `fPreviewPath` varchar(200) DEFAULT NULL COMMENT '预览地址',
  `fDownloadPath` varchar(200) DEFAULT NULL COMMENT '下载地址',
  `fCreateTime` varchar(50) DEFAULT NULL COMMENT '建立时间',
  `fDescription` varchar(50) DEFAULT NULL COMMENT '描述',
  `fAddress` varchar(200) DEFAULT NULL COMMENT '地理位置',
  `fPositioning` varchar(100) DEFAULT NULL COMMENT '定位',
  `fUser` varchar(255) DEFAULT NULL,
  `fFileSize` varchar(10) DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='随手拍';

-- ----------------------------
-- Records of pai_pictures
-- ----------------------------
INSERT INTO `pai_pictures` VALUES ('1', '20000000A35FF74A2D5894FC0ED366F63C5A3E26.dat', '/baas/justep/attachment/simpleFileStore?storeFileName=C7A34EB61D500001A618D6591C0A2600&ownerID=undefined&realFileName=20000000A35FF74A2D5894FC0ED366F63C5A3E26.dat&operateType=preview', '[{\"storeFileName\":\"C7A34EB61D500001A618D6591C0A2600\",\"realFileName\":\"20000000A35FF74A2D5894FC0ED366F63C5A3E26.dat\"}]', '2017-08-10 21:03:08', '', null, null, null, null);
INSERT INTO `pai_pictures` VALUES ('763b7357-d4bf-4053-80b2-9f04b94c7a4e', 'LocalRegist', '/baas/justep/attachment/simpleFileStore?storeFileName=C7A3A323ACD0000120423916162C16F0LocalRegist&ownerID=4200&realFileName=LocalRegist&operateType=preview', '[{\"storeFileName\":\"C7A3A323ACD0000120423916162C16F0LocalRegist\",\"realFileName\":\"LocalRegist\",\"ownerID\":\"4200\"}]', '2017-08-11 21:38:36', '', null, null, '4200', null);
INSERT INTO `pai_pictures` VALUES ('f58656178c4c4cee84af6e3f5dcc6e61', '20000000CABA1AFBF5E182035A6465FEB2C3653B.dat', '/baas/justep/attachment/simpleFileStore?storeFileName=C7A3A340295000014C24109062C04A80.dat&ownerID=4200&realFileName=20000000CABA1AFBF5E182035A6465FEB2C3653B.dat&operateType=preview', '[{\"storeFileName\":\"C7A3A340295000014C24109062C04A80.dat\",\"realFileName\":\"20000000CABA1AFBF5E182035A6465FEB2C3653B.dat\",\"ownerID\":\"4200\"}]', '2017-08-11 21:40:55', '', null, null, '4200', null);

-- ----------------------------
-- Table structure for takeout_food
-- ----------------------------
DROP TABLE IF EXISTS `takeout_food`;
CREATE TABLE `takeout_food` (
  `fID` varchar(50) NOT NULL COMMENT '主键',
  `fName` varchar(50) DEFAULT NULL COMMENT '套餐',
  `fPrice` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `fDescription` varchar(100) DEFAULT NULL,
  `fImage` varchar(100) DEFAULT NULL,
  `fStatus` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of takeout_food
-- ----------------------------
INSERT INTO `takeout_food` VALUES ('001', '老北京炸酱面', '20.00', '苏格兰打卤面，大杯可乐', '[{\"storeFileName\":\"C6F709CE3F7000012AB490B41F107230\",\"realFileName\":\"1.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('002', '宫爆鸡丁', '25.00', '宫爆鸡丁一份，两碗米饭，蛋花汤', '[{\"storeFileName\":\"C6F709D0DE800001249B93D01387174F\",\"realFileName\":\"2.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('003', '剁椒鱼头套餐', '36.00', '剁椒鱼头，白菜豆腐汤，四碗面条，可口凉菜', '[{\"storeFileName\":\"C6F709D364D00001C5C5788A1DF01E99\",\"realFileName\":\"3.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('004', '老北京烤鸭套餐', '45.00', '北京烤鸭，四碗米饭，大杯可乐四桶，鸡蛋汤', '[{\"storeFileName\":\"C6F709D54A9000017472151118A01670\",\"realFileName\":\"4.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('005', '土豆炖牛肉套餐', '35.00', '土豆炖牛肉一份，米饭四碗，可口可乐，凉菜', '[{\"storeFileName\":\"C6F709D6CDD00001CA4310A0D92EB600\",\"realFileName\":\"5.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('006', '鱼香肉丝盖饭', '15.00', '现炒鱼香肉丝', '[{\"storeFileName\":\"C6F709D846500001EF341E2016A05F60\",\"realFileName\":\"6.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('007', '尖椒肉丝盖饭', '15.00', '绿色尖椒', '[{\"storeFileName\":\"C6F709D99D100001D81811A013601490\",\"realFileName\":\"7.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('008', '家常肉饼', '10.00', '肉饼三个', '[{\"storeFileName\":\"C6F709DB04700001D255163D4E901B7A\",\"realFileName\":\"8.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('009', '过油肉套餐', '25.00', '过油肉一份，两碗米饭', '[{\"storeFileName\":\"C6F709DC701000017CF92A7011099EB0\",\"realFileName\":\"9.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('010', '铁板牛柳套餐', '30.00', '铁板牛柳一份，两碗米饭', '[{\"storeFileName\":\"C6F709DE40C00001C11E133A1D003270\",\"realFileName\":\"10.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('011', '苦瓜炒蛋套餐', '20.00', '苦瓜炒蛋一份，两碗米饭', '[{\"storeFileName\":\"C6F709E12D20000122921CB13DC52810\",\"realFileName\":\"11.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('012', '兰州牛肉拉面', '18.00', '兰州牛肉拉面大碗', '[{\"storeFileName\":\"C6F709E527800001CEA711A419F21406\",\"realFileName\":\"12.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('013', '沙县木桶饭', '18.00', '沙县红烧肉木桶饭', '[{\"storeFileName\":\"C6F709E7CC10000162121EC7182C7840\",\"realFileName\":\"13.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('014', '三明治咖啡套餐', '30.00', '三明治两个，咖啡一杯', '[{\"storeFileName\":\"C6F709EA2E000001247991722530ECD0\",\"realFileName\":\"14.jpg\"}]', '0');
INSERT INTO `takeout_food` VALUES ('015', '意式香肠披萨', '56.00', '7寸意式香肠披萨一个', '[{\"storeFileName\":\"C6F709EC6C500001EB5916E0D7B017F1\",\"realFileName\":\"15.jpg\"}]', '0');

-- ----------------------------
-- Table structure for takeout_order
-- ----------------------------
DROP TABLE IF EXISTS `takeout_order`;
CREATE TABLE `takeout_order` (
  `fID` varchar(50) NOT NULL,
  `fCreateTime` datetime DEFAULT NULL COMMENT '下单时间',
  `fContent` varchar(200) DEFAULT NULL COMMENT '订单内容',
  `fSum` decimal(10,2) DEFAULT NULL COMMENT '合计金额',
  `fUserID` varchar(50) DEFAULT NULL COMMENT '下单人',
  `fUserName` varchar(50) DEFAULT NULL,
  `fPhoneNumber` varchar(20) DEFAULT NULL,
  `fAddress` varchar(200) DEFAULT NULL COMMENT '订单地址',
  `fPayState` int(10) DEFAULT '0' COMMENT '付款状态',
  `fDispatchingState` int(11) DEFAULT NULL COMMENT '配送状态',
  PRIMARY KEY (`fID`),
  KEY `order_user_idx` (`fUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of takeout_order
-- ----------------------------
INSERT INTO `takeout_order` VALUES ('C684C9F61EC00001DCAA8B661AA01508', '2015-03-04 16:40:45', '宫爆鸡丁(1) 老北京炸酱面(1) ', '45.00', 'ms.zhang', '张女士', '010-59798677', '北京十里河地铁站A/B口，东150米，高和蓝峰大厦1802', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684C9F85E400001C4211EB544F61283', '2015-03-04 16:40:55', '老北京烤鸭套餐(1) 剁椒鱼头套餐(2) ', '117.00', 'ms.zhang', '张女士', '010-59798677', '北京十里河地铁站A/B口，东150米，高和蓝峰大厦1802', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684C9FC08400001353CBDD011D0BA60', '2015-03-04 16:41:10', '鱼香肉丝盖饭(1) 尖椒肉丝盖饭(2) ', '45.00', 'ms.zhang', '张女士', '010-59798677', '北京十里河地铁站A/B口，东150米，高和蓝峰大厦1802', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA2C30400001DB66D89079AC1203', '2015-03-04 16:44:27', '鱼香肉丝盖饭(1) 土豆炖牛肉套餐(1) 老北京烤鸭套餐(1) ', '95.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA2DCD400001665940D048801D35', '2015-03-04 16:44:33', '老北京烤鸭套餐(1) 土豆炖牛肉套餐(1) ', '80.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA2EB53000014B1165101D801787', '2015-03-04 16:44:37', '土豆炖牛肉套餐(1) 老北京烤鸭套餐(1) ', '80.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA2F9EC00001681812EC23204EA0', '2015-03-04 16:44:41', '家常肉饼(1) 剁椒鱼头套餐(1) ', '46.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3104B00001F4B0186016101DC4', '2015-03-04 16:44:47', '老北京炸酱面(1) 老北京烤鸭套餐(1) 土豆炖牛肉套餐(1) ', '100.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA32137000017BD075EF91B09380', '2015-03-04 16:44:51', '土豆炖牛肉套餐(1) 老北京烤鸭套餐(1) 剁椒鱼头套餐(1) ', '116.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA333FB000018D8F13C018F01524', '2015-03-04 16:44:56', '剁椒鱼头套餐(1) 宫爆鸡丁(1) 老北京炸酱面(1) ', '81.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3466B000016BFE9210196812BA', '2015-03-04 16:45:00', '土豆炖牛肉套餐(1) 老北京烤鸭套餐(1) ', '80.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA35CF30000128F9A6D0C07D11D4', '2015-03-04 16:45:06', '鱼香肉丝盖饭(1) 老北京烤鸭套餐(1) ', '60.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA371CC00001E357CDC643D4EAB0', '2015-03-04 16:45:12', '尖椒肉丝盖饭(1) 老北京炸酱面(1) ', '35.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3871700001BA376A1019A4157D', '2015-03-04 16:45:17', '老北京炸酱面(1) 宫爆鸡丁(1) 剁椒鱼头套餐(1) ', '81.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA396CC0000110CE6A20E5001F80', '2015-03-04 16:45:21', '鱼香肉丝盖饭(1) 尖椒肉丝盖饭(1) ', '30.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3AD1300001EDB4B7E558375F70', '2015-03-04 16:45:27', '鱼香肉丝盖饭(1) 尖椒肉丝盖饭(1) 家常肉饼(1) ', '40.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3BD5300001533A1CE516727ED0', '2015-03-04 16:45:31', '剁椒鱼头套餐(1) 宫爆鸡丁(1) ', '61.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3D0450000171A81AF811D03740', '2015-03-04 16:45:36', '剁椒鱼头套餐(1) 老北京烤鸭套餐(1) ', '81.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3E02D000015D7712B31C5AD360', '2015-03-04 16:45:40', '老北京烤鸭套餐(1) 土豆炖牛肉套餐(1) ', '80.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA3EF930000156201E203200CD80', '2015-03-04 16:45:44', '剁椒鱼头套餐(1) 宫爆鸡丁(1) ', '61.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');
INSERT INTO `takeout_order` VALUES ('C684CA403A4000017A8FBAB093D01B65', '2015-03-04 16:45:49', '土豆炖牛肉套餐(1) 老北京烤鸭套餐(1) ', '80.00', 'user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室', '0', '1');

-- ----------------------------
-- Table structure for takeout_user
-- ----------------------------
DROP TABLE IF EXISTS `takeout_user`;
CREATE TABLE `takeout_user` (
  `fID` varchar(50) NOT NULL COMMENT '机器码',
  `fName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `fPhoneNumber` varchar(20) DEFAULT NULL COMMENT '电话',
  `fAddress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of takeout_user
-- ----------------------------
INSERT INTO `takeout_user` VALUES ('ms.zhang', '张女士', '010-59798677', '北京十里河地铁站A/B口，东150米，高和蓝峰大厦1802');
INSERT INTO `takeout_user` VALUES ('user', '马先生', '400-017-8677', '北京朝阳区东三环南路98号高和蓝峰大厦18层1802室');
